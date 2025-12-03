@interface CRLRealTimeSyncDecorator
+ (BOOL)shouldShowForICC:(id)c;
+ (CGPoint)calculateFrameOriginForICC:(id)c frameWidth:(double)width;
- (CRLRealTimeSyncDecorator)initWithInteractiveCanvasController:(id)controller;
- (NSArray)decoratorOverlayRenderables;
- (id)p_imageForStyle:(int64_t)style;
- (int64_t)p_styleForEditingCoordinator:(id)coordinator;
- (void)p_updateLayerContentIfNeeded;
- (void)p_updateLayerFrame;
- (void)p_updateRenderable;
@end

@implementation CRLRealTimeSyncDecorator

+ (BOOL)shouldShowForICC:(id)c
{
  editingCoordinator = [c editingCoordinator];
  if ([editingCoordinator isInRealTimeSyncSession])
  {
    realTimeSessionNeedsAccountUpgrade = 1;
  }

  else
  {
    realTimeSessionNeedsAccountUpgrade = [editingCoordinator realTimeSessionNeedsAccountUpgrade];
  }

  return realTimeSessionNeedsAccountUpgrade;
}

+ (CGPoint)calculateFrameOriginForICC:(id)c frameWidth:(double)width
{
  [c visibleBoundsRect];
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  MaxX = CGRectGetMaxX(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  MinY = CGRectGetMinY(v16);

  v11 = sub_10011F31C(MaxX, MinY, width + 5.0);
  result.y = v12;
  result.x = v11;
  return result;
}

- (CRLRealTimeSyncDecorator)initWithInteractiveCanvasController:(id)controller
{
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = CRLRealTimeSyncDecorator;
  v5 = [(CRLRealTimeSyncDecorator *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_icc, controllerCopy);
    v7 = +[CRLNoDefaultImplicitActionRenderable renderable];
    renderable = v6->_renderable;
    v6->_renderable = v7;

    WeakRetained = objc_loadWeakRetained(&v6->_icc);
    editingCoordinator = [WeakRetained editingCoordinator];
    v6->_style = [(CRLRealTimeSyncDecorator *)v6 p_styleForEditingCoordinator:editingCoordinator];

    v6->_shouldDisplayContent = 0;
    [(CRLRealTimeSyncDecorator *)v6 p_updateRenderable];
  }

  return v6;
}

- (int64_t)p_styleForEditingCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  if ([coordinatorCopy realTimeSessionUsesEncryption])
  {
    v4 = 1;
  }

  else if ([coordinatorCopy realTimeSessionNeedsAccountUpgrade])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)p_imageForStyle:(int64_t)style
{
  switch(style)
  {
    case 2:
      v3 = @"exclamationmark.icloud";
      goto LABEL_7;
    case 1:
      v3 = @"lock.icloud";
LABEL_7:
      self = [CRLImage imageWithSystemImageNamed:v3 pointSize:12.0];
      break;
    case 0:
      self = [CRLImage imageNamed:@"AppIcon"];
      break;
  }

  return self;
}

- (void)p_updateLayerContentIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  editingCoordinator = [WeakRetained editingCoordinator];
  v5 = [(CRLRealTimeSyncDecorator *)self p_styleForEditingCoordinator:editingCoordinator];

  if (self->_style != v5)
  {
    self->_style = v5;

    [(CRLRealTimeSyncDecorator *)self p_updateRenderable];
  }
}

- (void)p_updateRenderable
{
  v3 = [(CRLRealTimeSyncDecorator *)self p_imageForStyle:self->_style];
  [v3 size];
  [(CRLCanvasRenderable *)self->_renderable setFrame:sub_10011ECB4()];
  -[CRLCanvasRenderable setContents:](self->_renderable, "setContents:", [v3 CGImage]);
}

- (NSArray)decoratorOverlayRenderables
{
  if (self->_shouldDisplayContent)
  {
    [(CRLRealTimeSyncDecorator *)self p_updateLayerContentIfNeeded];
    [(CRLRealTimeSyncDecorator *)self p_updateLayerFrame];
    renderable = self->_renderable;
    v3 = [NSArray arrayWithObjects:&renderable count:1];
  }

  else
  {
    v3 = &__NSArray0__struct;
  }

  return v3;
}

- (void)p_updateLayerFrame
{
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  [(CRLCanvasRenderable *)self->_renderable frame];
  [CRLRealTimeSyncDecorator calculateFrameOriginForICC:WeakRetained frameWidth:v3];
  frame = [(CRLCanvasRenderable *)self->_renderable frame];
  v8 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(frame, v5);
  [(CRLCanvasRenderable *)self->_renderable setFrame:v8.recordType._object];
}

@end