@interface MPAssistantSetOutputSource
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantSetOutputSource

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  _validate = [(MPAssistantSetOutputSource *)self _validate];
  if (!_validate)
  {
    _validate = [(MPAssistantSetOutputSource *)self _perform];
  }

  v7 = _validate;
  dictionary = [_validate dictionary];
  completionCopy[2](completionCopy, dictionary);
}

@end