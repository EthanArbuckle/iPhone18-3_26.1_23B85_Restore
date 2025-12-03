@interface ADRemoteSpeechRequestHelper
- (id)setSpeechRequestOptions:(id)options withCompletion:(id)completion;
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

- (id)setSpeechRequestOptions:(id)options withCompletion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  v8 = objc_alloc_init(NSUUID);
  v9 = [v8 copy];
  currentToken = self->_currentToken;
  self->_currentToken = v9;

  v11 = [optionsCopy copy];
  speechRequestOptions = self->_speechRequestOptions;
  self->_speechRequestOptions = v11;

  v13 = objc_retainBlock(completionCopy);
  completion = self->_completion;
  self->_completion = v13;

  return v8;
}

@end