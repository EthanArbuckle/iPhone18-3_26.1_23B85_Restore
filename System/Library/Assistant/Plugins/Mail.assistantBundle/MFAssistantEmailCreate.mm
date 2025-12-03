@interface MFAssistantEmailCreate
- (void)performWithCompletion:(id)completion;
@end

@implementation MFAssistantEmailCreate

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  if (MSCanSendMail())
  {
    v3 = 0;
  }

  else
  {
    v4 = [SACommandFailed alloc];
    v3 = [v4 initWithErrorCode:SAEmailNoAccountErrorCode];
  }

  dictionary = [v3 dictionary];
  completionCopy[2](completionCopy, dictionary);
}

@end