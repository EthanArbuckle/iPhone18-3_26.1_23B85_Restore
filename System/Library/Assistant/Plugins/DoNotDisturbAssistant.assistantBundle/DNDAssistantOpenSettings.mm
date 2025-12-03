@interface DNDAssistantOpenSettings
- (void)performWithCompletion:(id)completion serviceHelper:(id)helper;
@end

@implementation DNDAssistantOpenSettings

- (void)performWithCompletion:(id)completion serviceHelper:(id)helper
{
  helperCopy = helper;
  completionCopy = completion;
  v9 = [NSURL URLWithString:@"prefs:root=DO_NOT_DISTURB"];
  [helperCopy openSensitiveURL:v9];

  v7 = objc_alloc_init(SACommandSucceeded);
  dictionary = [v7 dictionary];
  completionCopy[2](completionCopy, dictionary);
}

@end