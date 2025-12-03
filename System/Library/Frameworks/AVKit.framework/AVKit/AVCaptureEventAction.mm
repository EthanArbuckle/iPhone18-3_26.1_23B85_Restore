@interface AVCaptureEventAction
- (AVCaptureEventAction)initWithSource:(unint64_t)source eventHandler:(id)handler;
- (void)sendPhaseUpdate:(unint64_t)update physicalButton:(unint64_t)button interaction:(id)interaction;
@end

@implementation AVCaptureEventAction

- (void)sendPhaseUpdate:(unint64_t)update physicalButton:(unint64_t)button interaction:(id)interaction
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = [AVCaptureEvent eventWithSource:self->_source physicalButton:button phase:update interaction:interaction];
  v7 = _AVLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 description];
    v9 = 136315394;
    v10 = "[AVCaptureEventAction sendPhaseUpdate:physicalButton:interaction:]";
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s Sending AVCaptureEvent: %@", &v9, 0x16u);
  }

  (*(self->_handler + 2))();
}

- (AVCaptureEventAction)initWithSource:(unint64_t)source eventHandler:(id)handler
{
  handlerCopy = handler;
  v12.receiver = self;
  v12.super_class = AVCaptureEventAction;
  v7 = [(AVCaptureEventAction *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_source = source;
    v9 = [handlerCopy copy];
    handler = v8->_handler;
    v8->_handler = v9;
  }

  return v8;
}

@end