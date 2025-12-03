@interface NTKAlaskanChronographStyleController
- (BOOL)wantsStatusBarHidden;
- (NTKAlaskanChronographStyleController)initWithContentView:(id)view crownInputHandler:(id)handler;
- (NTKAlaskanChronographView)view;
- (NTKAnalogFaceView)faceView;
- (void)_handleFaceViewWantsStatusBarHidden:(BOOL)hidden;
- (void)alaskanChronographViewDidEnterChronometerMode:(id)mode completionBlock:(id)block;
- (void)alaskanChronographViewDidExitChronometerMode:(id)mode completionBlock:(id)block animated:(BOOL)animated;
- (void)applyVisibilityWithFraction:(double)fraction;
- (void)cleanupAfterEditing;
- (void)dealloc;
- (void)prepareForEditing;
- (void)setFaceView:(id)view;
- (void)setOverrideDate:(id)date duration:(double)duration;
@end

@implementation NTKAlaskanChronographStyleController

- (NTKAlaskanChronographStyleController)initWithContentView:(id)view crownInputHandler:(id)handler
{
  viewCopy = view;
  handlerCopy = handler;
  v12.receiver = self;
  v12.super_class = NTKAlaskanChronographStyleController;
  v8 = [(NTKAlaskanChronographStyleController *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v10 = objc_storeWeak(&v8->_view, viewCopy);
    [viewCopy setDelegate:v9];

    objc_storeStrong(&v9->_crownInputHandler, handler);
    [(NTKCrownInputHandler *)v9->_crownInputHandler setOffsetPerRevolution:2.4];
    [(NTKCrownInputHandler *)v9->_crownInputHandler setUseWideIdleCheck:0];
  }

  return v9;
}

- (void)dealloc
{
  faceView = [(NTKAlaskanChronographStyleController *)self faceView];
  timeView = [faceView timeView];
  secondHandView = [timeView secondHandView];
  [secondHandView setAlpha:1.0];

  v6.receiver = self;
  v6.super_class = NTKAlaskanChronographStyleController;
  [(NTKAlaskanChronographStyleController *)&v6 dealloc];
}

- (void)setFaceView:(id)view
{
  viewCopy = view;
  v4 = objc_storeWeak(&self->_faceView, viewCopy);
  timeView = [viewCopy timeView];

  secondHandView = [timeView secondHandView];
  [secondHandView setAlpha:0.0];

  WeakRetained = objc_loadWeakRetained(&self->_view);
  v8 = objc_loadWeakRetained(&self->_faceView);
  timeView2 = [v8 timeView];
  [WeakRetained setChronometerHandsParentView:timeView2];
}

- (void)applyVisibilityWithFraction:(double)fraction
{
  view = [(NTKAlaskanChronographStyleController *)self view];
  primaryHandView = [view primaryHandView];
  [primaryHandView setAlpha:fraction];

  WeakRetained = objc_loadWeakRetained(&self->_faceView);
  timeView = [WeakRetained timeView];
  secondHandView = [timeView secondHandView];
  [secondHandView setAlpha:1.0 - fraction];
}

- (void)prepareForEditing
{
  self->_isEditing = 1;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [WeakRetained setIsEditing:1];
}

- (void)cleanupAfterEditing
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [WeakRetained setIsEditing:0];

  self->_isEditing = 0;
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  dateCopy = date;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [WeakRetained setClockOverrideDate:dateCopy];

  v7 = objc_loadWeakRetained(&self->_view);
  [v7 setStopwatchOverrideDate:dateCopy];
}

- (BOOL)wantsStatusBarHidden
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  isChronoMode = [WeakRetained isChronoMode];

  return isChronoMode;
}

- (void)alaskanChronographViewDidEnterChronometerMode:(id)mode completionBlock:(id)block
{
  blockCopy = block;
  faceView = [(NTKAlaskanChronographStyleController *)self faceView];
  [faceView enumerateComplicationDisplayWrappersWithBlock:&stru_38AA8];

  if (![(NTKAlaskanChronographStyleController *)self isEditing])
  {
    [(NTKAlaskanChronographStyleController *)self _handleFaceViewWantsStatusBarHidden:1];
  }

  shouldAnimateTimescaleTransition = [(NTKAlaskanChronographStyleController *)self shouldAnimateTimescaleTransition];
  if (blockCopy && (shouldAnimateTimescaleTransition & 1) == 0)
  {
    shouldAnimateTimescaleTransition = blockCopy[2](blockCopy);
  }

  _objc_release_x1(shouldAnimateTimescaleTransition);
}

- (void)_handleFaceViewWantsStatusBarHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  faceView = [(NTKAlaskanChronographStyleController *)self faceView];
  delegate = [faceView delegate];
  [delegate faceViewWantsStatusBarHidden:hiddenCopy animated:0];
}

- (void)alaskanChronographViewDidExitChronometerMode:(id)mode completionBlock:(id)block animated:(BOOL)animated
{
  v6 = [(NTKAlaskanChronographStyleController *)self faceView:mode];
  [v6 enumerateComplicationDisplayWrappersWithBlock:&stru_38AC8];

  if (![(NTKAlaskanChronographStyleController *)self isEditing])
  {

    [(NTKAlaskanChronographStyleController *)self _handleFaceViewWantsStatusBarHidden:0];
  }
}

- (NTKAnalogFaceView)faceView
{
  WeakRetained = objc_loadWeakRetained(&self->_faceView);

  return WeakRetained;
}

- (NTKAlaskanChronographView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end