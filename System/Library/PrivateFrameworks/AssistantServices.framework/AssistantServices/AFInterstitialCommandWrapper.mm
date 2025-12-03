@interface AFInterstitialCommandWrapper
- (AFInterstitialCommandWrapper)initWithCommand:(id)command defaultReply:(id)reply completion:(id)completion;
- (void)dealloc;
- (void)dispatchCompletionWithReply:(id)reply error:(id)error;
@end

@implementation AFInterstitialCommandWrapper

- (void)dispatchCompletionWithReply:(id)reply error:(id)error
{
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, reply, error);
    v6 = self->_completion;
    self->_completion = 0;
  }
}

- (AFInterstitialCommandWrapper)initWithCommand:(id)command defaultReply:(id)reply completion:(id)completion
{
  commandCopy = command;
  replyCopy = reply;
  completionCopy = completion;
  v19.receiver = self;
  v19.super_class = AFInterstitialCommandWrapper;
  v11 = [(AFInterstitialCommandWrapper *)&v19 init];
  if (v11)
  {
    v12 = [commandCopy copy];
    command = v11->_command;
    v11->_command = v12;

    v14 = [replyCopy copy];
    defaultReply = v11->_defaultReply;
    v11->_defaultReply = v14;

    v16 = MEMORY[0x193AFB7B0](completionCopy);
    completion = v11->_completion;
    v11->_completion = v16;
  }

  return v11;
}

- (void)dealloc
{
  [(AFInterstitialCommandWrapper *)self dispatchCompletionWithReply:self->_defaultReply error:0];
  v3.receiver = self;
  v3.super_class = AFInterstitialCommandWrapper;
  [(AFInterstitialCommandWrapper *)&v3 dealloc];
}

@end