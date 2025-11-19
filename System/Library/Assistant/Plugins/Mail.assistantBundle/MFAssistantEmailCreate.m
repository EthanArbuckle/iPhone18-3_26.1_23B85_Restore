@interface MFAssistantEmailCreate
- (void)performWithCompletion:(id)a3;
@end

@implementation MFAssistantEmailCreate

- (void)performWithCompletion:(id)a3
{
  v6 = a3;
  if (MSCanSendMail())
  {
    v3 = 0;
  }

  else
  {
    v4 = [SACommandFailed alloc];
    v3 = [v4 initWithErrorCode:SAEmailNoAccountErrorCode];
  }

  v5 = [v3 dictionary];
  v6[2](v6, v5);
}

@end