@interface _SSSScreenshotAnnotationView
- (_SSSScreenshotAnnotationView)initWithFrame:(CGRect)frame;
- (void)_asyncHideCachedOverlayView;
- (void)_hideAndShowViewsForScreenshotEditsSnapshotted:(BOOL)snapshotted;
- (void)_updateOverlayControllerForBeingActiveForScreenshotEditsSnapshotted:(BOOL)snapshotted;
- (void)dealloc;
- (void)endedEditing;
- (void)enterEditing;
- (void)generateSnapshotImageIfNecessary:(BOOL)necessary withCompletion:(id)completion;
- (void)setCornerRadius:(double)radius;
- (void)setOverlayControllerActive:(BOOL)active;
- (void)setScreenshot:(id)screenshot;
- (void)setScreenshotEditsSnapshotted:(BOOL)snapshotted;
- (void)setVellumOpacity:(double)opacity;
@end

@implementation _SSSScreenshotAnnotationView

- (_SSSScreenshotAnnotationView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = _SSSScreenshotAnnotationView;
  v3 = [(_SSSScreenshotAnnotationView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = objc_alloc_init(_SSSScreenshotAnnotationController);
  overlayController = v3->_overlayController;
  v3->_overlayController = &v4->super;

  return v3;
}

- (void)dealloc
{
  [(_SSSScreenshotAnnotationView *)self endedEditing];
  v3.receiver = self;
  v3.super_class = _SSSScreenshotAnnotationView;
  [(_SSSScreenshotAnnotationView *)&v3 dealloc];
}

- (void)setScreenshot:(id)screenshot
{
  objc_storeStrong(&self->_screenshot, screenshot);
  screenshotCopy = screenshot;
  [(_SSSScreenshotContentOverlayController *)self->_overlayController setScreenshot:screenshotCopy];
}

- (void)enterEditing
{
  [(_SSSScreenshotAnnotationView *)self _hideAndShowViewsForScreenshotEditsSnapshotted:[(_SSSScreenshotAnnotationView *)self screenshotEditsSnapshotted]];
  [(_SSSScreenshotAnnotationView *)self _updateOverlayControllerForBeingActiveForScreenshotEditsSnapshotted:[(_SSSScreenshotAnnotationView *)self screenshotEditsSnapshotted]];
  [(_SSSScreenshotContentOverlayController *)self->_overlayController logDidEnterEditingWithOverlay];

  [(_SSSScreenshotAnnotationView *)self setNeedsLayout];
}

- (void)endedEditing
{
  [(_SSSScreenshotContentOverlayController *)self->_overlayController setActive:0];
  overlayController = self->_overlayController;

  [(_SSSScreenshotContentOverlayController *)overlayController logDidEndEditingWithOverlay];
}

- (void)setOverlayControllerActive:(BOOL)active
{
  self->_overlayControllerActive = active;
  if (active)
  {
    [(_SSSScreenshotAnnotationView *)self enterEditing];
  }

  else
  {
    [(_SSSScreenshotAnnotationView *)self endedEditing];
  }
}

- (void)setVellumOpacity:(double)opacity
{
  if (self->_vellumOpacity != opacity)
  {
    self->_vellumOpacity = opacity;
    [(_SSSScreenshotAnnotationView *)self setNeedsLayout];
  }
}

- (void)setCornerRadius:(double)radius
{
  self->_cornerRadius = radius;
  [(_SSSScreenshotAnnotationView *)self setClipsToBounds:radius > 0.0];

  [(_SSSScreenshotAnnotationView *)self _setCornerRadius:radius];
}

- (void)setScreenshotEditsSnapshotted:(BOOL)snapshotted
{
  if (self->_screenshotEditsSnapshotted != snapshotted)
  {
    snapshottedCopy = snapshotted;
    self->_screenshotEditsSnapshotted = snapshotted;
    objc_initWeak(&location, self);
    v5 = _NSConcreteStackBlock;
    v6 = 3221225472;
    v7 = sub_100039F7C;
    v8 = &unk_1000BA2F8;
    objc_copyWeak(&v9, &location);
    [(_SSSScreenshotAnnotationView *)self generateSnapshotImageIfNecessary:snapshottedCopy withCompletion:&v5];
    [(_SSSScreenshotAnnotationView *)self setNeedsLayout:v5];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)_asyncHideCachedOverlayView
{
  objc_initWeak(&location, self);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10003A084;
  v2[3] = &unk_1000BA2F8;
  objc_copyWeak(&v3, &location);
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (void)_updateOverlayControllerForBeingActiveForScreenshotEditsSnapshotted:(BOOL)snapshotted
{
  overlayController = [(_SSSScreenshotAnnotationView *)self overlayController];
  v6 = overlayController;
  v7 = !snapshotted && self->_overlayControllerActive;
  [overlayController setActive:v7];

  [(_SSSScreenshotAnnotationView *)self setNeedsLayout];
}

- (void)_hideAndShowViewsForScreenshotEditsSnapshotted:(BOOL)snapshotted
{
  snapshottedCopy = snapshotted;
  [(_SSSScreenshotAnnotationView *)self _cancelScheduledHideCachedOverlayView];
  annotationOverlayView = [(_SSSScreenshotAnnotationView *)self annotationOverlayView];
  v6 = annotationOverlayView;
  if (snapshottedCopy)
  {
    [annotationOverlayView setHidden:1];

    [(UIView *)self->_vellumView setHidden:1];
    [(_SSSScreenshotAnnotationView *)self setCachedViewsHidden:0];
    if ((_SSIsViewSnapshotDebuggingEnabled() & 1) == 0)
    {
      goto LABEL_7;
    }

    v7 = +[UIColor blueColor];
  }

  else
  {
    [annotationOverlayView setHidden:0];

    [(_SSSScreenshotAnnotationView *)self _scheduleHideCachedOverlayViewWithDelay:0.0833333333];
    if (!_SSIsViewSnapshotDebuggingEnabled())
    {
      goto LABEL_7;
    }

    v7 = +[UIColor redColor];
  }

  v8 = v7;
  layer = [(_SSSScreenshotAnnotationView *)self layer];
  [layer setBorderColor:{objc_msgSend(v8, "CGColor")}];

  layer2 = [(_SSSScreenshotAnnotationView *)self layer];
  [layer2 setBorderWidth:20.0];

LABEL_7:

  [(_SSSScreenshotAnnotationView *)self setNeedsLayout];
}

- (void)generateSnapshotImageIfNecessary:(BOOL)necessary withCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

@end