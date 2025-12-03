@interface _BCWindowScene
- (BAAnalyticsController)ba_analyticsController;
- (BCSceneControlling)controller;
- (void)attemptRotateToPortraitWithCompletion:(id)completion;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation _BCWindowScene

- (BAAnalyticsController)ba_analyticsController
{
  controller = [(_BCWindowScene *)self controller];
  ba_analyticsController = [controller ba_analyticsController];

  return ba_analyticsController;
}

- (void)attemptRotateToPortraitWithCompletion:(id)completion
{
  completionCopy = completion;
  effectiveGeometry = [(_BCWindowScene *)self effectiveGeometry];
  v6 = [effectiveGeometry interfaceOrientation] - 3;

  if (v6 > 1)
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v7 = objc_retainBlock(completionCopy);
    rotateCompletion = self->_rotateCompletion;
    self->_rotateCompletion = v7;

    [(_BCWindowScene *)self addObserver:self forKeyPath:@"effectiveGeometry" options:1 context:off_33EB20];
    v9 = [[UIWindowSceneGeometryPreferencesIOS alloc] initWithInterfaceOrientations:2];
    objc_initWeak(&location, self);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_11EC6C;
    v14[3] = &unk_2CD710;
    objc_copyWeak(&v15, &location);
    [(_BCWindowScene *)self requestGeometryUpdateWithPreferences:v9 errorHandler:v14];
    [UIApp windowRotationDuration];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_11EE68;
    v13[3] = &unk_2CD738;
    v13[4] = self;
    v11 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v13 block:v10 + 0.3];
    rotateTimeoutTimer = self->_rotateTimeoutTimer;
    self->_rotateTimeoutTimer = v11;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (off_33EB20 == context)
  {
    v7 = [(_BCWindowScene *)self effectiveGeometry:path];
    v8 = [v7 interfaceOrientation] - 1;

    if (v8 <= 1)
    {
      [(NSTimer *)self->_rotateTimeoutTimer invalidate];
      rotateTimeoutTimer = self->_rotateTimeoutTimer;
      self->_rotateTimeoutTimer = 0;

      v11 = objc_retainBlock(self->_rotateCompletion);
      if (v11)
      {
        v11[2](v11, 0);
      }

      rotateCompletion = self->_rotateCompletion;
      self->_rotateCompletion = 0;
    }
  }
}

- (BCSceneControlling)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end