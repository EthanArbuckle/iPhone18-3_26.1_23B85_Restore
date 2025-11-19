@interface AFInterstitialCommandWrapper
- (AFInterstitialCommandWrapper)initWithCommand:(id)a3 defaultReply:(id)a4 completion:(id)a5;
- (void)dealloc;
- (void)dispatchCompletionWithReply:(id)a3 error:(id)a4;
@end

@implementation AFInterstitialCommandWrapper

- (void)dispatchCompletionWithReply:(id)a3 error:(id)a4
{
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, a3, a4);
    v6 = self->_completion;
    self->_completion = 0;
  }
}

- (AFInterstitialCommandWrapper)initWithCommand:(id)a3 defaultReply:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = AFInterstitialCommandWrapper;
  v11 = [(AFInterstitialCommandWrapper *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    command = v11->_command;
    v11->_command = v12;

    v14 = [v9 copy];
    defaultReply = v11->_defaultReply;
    v11->_defaultReply = v14;

    v16 = MEMORY[0x193AFB7B0](v10);
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