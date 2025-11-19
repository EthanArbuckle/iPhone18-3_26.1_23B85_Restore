@interface NLPModelTrainingDelegate
- (NLPModelTrainingDelegate)initWithLogHandler:(id)a3;
- (void)modelTrainer:(id)a3 logMessage:(id)a4;
@end

@implementation NLPModelTrainingDelegate

- (NLPModelTrainingDelegate)initWithLogHandler:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NLPModelTrainingDelegate;
  v5 = [(NLPModelTrainingDelegate *)&v10 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = MEMORY[0x19EAFC6F0](v4);
    logHandler = v6->_logHandler;
    v6->_logHandler = v7;
  }

  return v6;
}

- (void)modelTrainer:(id)a3 logMessage:(id)a4
{
  v9 = 0;
  logHandler = self->_logHandler;
  v6 = logHandler[2];
  v7 = a4;
  v6(logHandler, v7, &v9);
  v8 = [v7 UTF8String];

  puts(v8);
  if (v9)
  {
    self->_stop = v9;
  }
}

@end