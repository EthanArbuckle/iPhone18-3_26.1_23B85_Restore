@interface DisplayDrainOperation
- (DKResponder)responder;
- (DisplayDrainOperation)initWithBrightness:(float)brightness responder:(id)responder;
- (void)cancel;
- (void)main;
@end

@implementation DisplayDrainOperation

- (DisplayDrainOperation)initWithBrightness:(float)brightness responder:(id)responder
{
  responderCopy = responder;
  v11.receiver = self;
  v11.super_class = DisplayDrainOperation;
  v7 = [(DisplayDrainOperation *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_responder, responderCopy);
    v8->_requestedBrightness = brightness;
    BKSDisplayBrightnessGetCurrent();
    v8->_originalScreenBrightness = v9;
  }

  return v8;
}

- (void)main
{
  responder = [(DisplayDrainOperation *)self responder];
  [(DisplayDrainOperation *)self requestedBrightness];
  [responder setScreenToBrightness:0 animate:?];
}

- (void)cancel
{
  responder = [(DisplayDrainOperation *)self responder];
  [(DisplayDrainOperation *)self originalScreenBrightness];
  [responder setScreenToBrightness:0 animate:?];

  v4.receiver = self;
  v4.super_class = DisplayDrainOperation;
  [(DrainOperation *)&v4 cancel];
}

- (DKResponder)responder
{
  WeakRetained = objc_loadWeakRetained(&self->_responder);

  return WeakRetained;
}

@end