@interface DNDAssistantOpenSettings
- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4;
@end

@implementation DNDAssistantOpenSettings

- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4
{
  v5 = a4;
  v6 = a3;
  v9 = [NSURL URLWithString:@"prefs:root=DO_NOT_DISTURB"];
  [v5 openSensitiveURL:v9];

  v7 = objc_alloc_init(SACommandSucceeded);
  v8 = [v7 dictionary];
  v6[2](v6, v8);
}

@end