@interface AppStoreReviewAMSRequirementsProvider
- (void)checkPromptAllowed:(id)a3;
- (void)didAttemptPrompt;
- (void)didForeground;
@end

@implementation AppStoreReviewAMSRequirementsProvider

- (void)didForeground
{
  _objc_retain(self);
  sub_100271164();
  _objc_release(self);
}

- (void)checkPromptAllowed:(id)a3
{
  v4 = _Block_copy(a3);
  _objc_retain(self);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  sub_100271218(sub_10027269C, v5);

  _objc_release(self);
}

- (void)didAttemptPrompt
{
  _objc_retain(self);
  sub_1002726A8();
  _objc_release(self);
}

@end