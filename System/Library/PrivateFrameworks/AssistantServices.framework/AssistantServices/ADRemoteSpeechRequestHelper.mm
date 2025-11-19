@interface ADRemoteSpeechRequestHelper
- (id)setSpeechRequestOptions:(id)a3 withCompletion:(id)a4;
- (void)reset;
@end

@implementation ADRemoteSpeechRequestHelper

- (void)reset
{
  currentToken = self->_currentToken;
  self->_currentToken = 0;

  speechRequestOptions = self->_speechRequestOptions;
  self->_speechRequestOptions = 0;

  completion = self->_completion;
  self->_completion = 0;
}

- (id)setSpeechRequestOptions:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(NSUUID);
  v9 = [v8 copy];
  currentToken = self->_currentToken;
  self->_currentToken = v9;

  v11 = [v7 copy];
  speechRequestOptions = self->_speechRequestOptions;
  self->_speechRequestOptions = v11;

  v13 = objc_retainBlock(v6);
  completion = self->_completion;
  self->_completion = v13;

  return v8;
}

@end