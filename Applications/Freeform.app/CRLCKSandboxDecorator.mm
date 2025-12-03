@interface CRLCKSandboxDecorator
- (CRLCKSandboxDecorator)initWithInteractiveCanvasController:(id)controller;
- (NSArray)decoratorOverlayRenderables;
- (void)p_updateLayerFrame;
@end

@implementation CRLCKSandboxDecorator

- (CRLCKSandboxDecorator)initWithInteractiveCanvasController:(id)controller
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = CRLCKSandboxDecorator;
  v5 = [(CRLCKSandboxDecorator *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_icc, controllerCopy);
    v7 = +[CRLNoDefaultImplicitActionRenderable renderable];
    renderable = v6->_renderable;
    v6->_renderable = v7;

    v9 = [CRLImage imageWithSystemImageNamed:@"icloud.square" pointSize:14.0];
    [v9 size];
    [(CRLCanvasRenderable *)v6->_renderable setFrame:sub_10011ECB4()];
    -[CRLCanvasRenderable setContents:](v6->_renderable, "setContents:", [v9 CGImage]);
  }

  return v6;
}

- (NSArray)decoratorOverlayRenderables
{
  [(CRLCKSandboxDecorator *)self p_updateLayerFrame];
  renderable = self->_renderable;
  v3 = [NSArray arrayWithObjects:&renderable count:1];

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