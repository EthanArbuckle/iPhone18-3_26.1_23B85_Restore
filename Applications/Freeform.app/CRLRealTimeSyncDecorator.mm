@interface CRLRealTimeSyncDecorator
+ (BOOL)shouldShowForICC:(id)a3;
+ (CGPoint)calculateFrameOriginForICC:(id)a3 frameWidth:(double)a4;
- (CRLRealTimeSyncDecorator)initWithInteractiveCanvasController:(id)a3;
- (NSArray)decoratorOverlayRenderables;
- (id)p_imageForStyle:(int64_t)a3;
- (int64_t)p_styleForEditingCoordinator:(id)a3;
- (void)p_updateLayerContentIfNeeded;
- (void)p_updateLayerFrame;
- (void)p_updateRenderable;
@end

@implementation CRLRealTimeSyncDecorator

+ (BOOL)shouldShowForICC:(id)a3
{
  v3 = [a3 editingCoordinator];
  if ([v3 isInRealTimeSyncSession])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 realTimeSessionNeedsAccountUpgrade];
  }

  return v4;
}

+ (CGPoint)calculateFrameOriginForICC:(id)a3 frameWidth:(double)a4
{
  [a3 visibleBoundsRect];
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

  v11 = sub_10011F31C(MaxX, MinY, a4 + 5.0);
  result.y = v12;
  result.x = v11;
  return result;
}

- (CRLRealTimeSyncDecorator)initWithInteractiveCanvasController:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CRLRealTimeSyncDecorator;
  v5 = [(CRLRealTimeSyncDecorator *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_icc, v4);
    v7 = +[CRLNoDefaultImplicitActionRenderable renderable];
    renderable = v6->_renderable;
    v6->_renderable = v7;

    WeakRetained = objc_loadWeakRetained(&v6->_icc);
    v10 = [WeakRetained editingCoordinator];
    v6->_style = [(CRLRealTimeSyncDecorator *)v6 p_styleForEditingCoordinator:v10];

    v6->_shouldDisplayContent = 0;
    [(CRLRealTimeSyncDecorator *)v6 p_updateRenderable];
  }

  return v6;
}

- (int64_t)p_styleForEditingCoordinator:(id)a3
{
  v3 = a3;
  if ([v3 realTimeSessionUsesEncryption])
  {
    v4 = 1;
  }

  else if ([v3 realTimeSessionNeedsAccountUpgrade])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)p_imageForStyle:(int64_t)a3
{
  switch(a3)
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
  v4 = [WeakRetained editingCoordinator];
  v5 = [(CRLRealTimeSyncDecorator *)self p_styleForEditingCoordinator:v4];

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
  v4 = [(CRLCanvasRenderable *)self->_renderable frame];
  v8 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v4, v5);
  [(CRLCanvasRenderable *)self->_renderable setFrame:v8.recordType._object];
}

@end