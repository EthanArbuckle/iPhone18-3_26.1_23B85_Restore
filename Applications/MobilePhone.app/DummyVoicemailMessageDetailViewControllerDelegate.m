@interface DummyVoicemailMessageDetailViewControllerDelegate
- (_TtC11MobilePhone49DummyVoicemailMessageDetailViewControllerDelegate)init;
- (void)voicemailMessageDetailViewController:(id)a3 destructiveActionPerformedForMessage:(id)a4 completionBlock:(id)a5;
@end

@implementation DummyVoicemailMessageDetailViewControllerDelegate

- (void)voicemailMessageDetailViewController:(id)a3 destructiveActionPerformedForMessage:(id)a4 completionBlock:(id)a5
{
  v5 = _Block_copy(a5);
  v5[2]();

  _Block_release(v5);
}

- (_TtC11MobilePhone49DummyVoicemailMessageDetailViewControllerDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DummyVoicemailMessageDetailViewControllerDelegate();
  return [(DummyVoicemailMessageDetailViewControllerDelegate *)&v3 init];
}

@end