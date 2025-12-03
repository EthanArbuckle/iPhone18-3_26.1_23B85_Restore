@interface NLPModelTrainingDelegate
- (NLPModelTrainingDelegate)initWithLogHandler:(id)handler;
- (void)modelTrainer:(id)trainer logMessage:(id)message;
@end

@implementation NLPModelTrainingDelegate

- (NLPModelTrainingDelegate)initWithLogHandler:(id)handler
{
  handlerCopy = handler;
  v10.receiver = self;
  v10.super_class = NLPModelTrainingDelegate;
  v5 = [(NLPModelTrainingDelegate *)&v10 init];
  v6 = v5;
  if (handlerCopy && v5)
  {
    v7 = MEMORY[0x19EAFC6F0](handlerCopy);
    logHandler = v6->_logHandler;
    v6->_logHandler = v7;
  }

  return v6;
}

- (void)modelTrainer:(id)trainer logMessage:(id)message
{
  v9 = 0;
  logHandler = self->_logHandler;
  v6 = logHandler[2];
  messageCopy = message;
  v6(logHandler, messageCopy, &v9);
  uTF8String = [messageCopy UTF8String];

  puts(uTF8String);
  if (v9)
  {
    self->_stop = v9;
  }
}

@end