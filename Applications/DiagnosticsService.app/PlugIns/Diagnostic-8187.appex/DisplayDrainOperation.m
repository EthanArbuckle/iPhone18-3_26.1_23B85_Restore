@interface DisplayDrainOperation
- (DKResponder)responder;
- (DisplayDrainOperation)initWithBrightness:(float)a3 responder:(id)a4;
- (void)cancel;
- (void)main;
@end

@implementation DisplayDrainOperation

- (DisplayDrainOperation)initWithBrightness:(float)a3 responder:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = DisplayDrainOperation;
  v7 = [(DisplayDrainOperation *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_responder, v6);
    v8->_requestedBrightness = a3;
    BKSDisplayBrightnessGetCurrent();
    v8->_originalScreenBrightness = v9;
  }

  return v8;
}

- (void)main
{
  v3 = [(DisplayDrainOperation *)self responder];
  [(DisplayDrainOperation *)self requestedBrightness];
  [v3 setScreenToBrightness:0 animate:?];
}

- (void)cancel
{
  v3 = [(DisplayDrainOperation *)self responder];
  [(DisplayDrainOperation *)self originalScreenBrightness];
  [v3 setScreenToBrightness:0 animate:?];

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