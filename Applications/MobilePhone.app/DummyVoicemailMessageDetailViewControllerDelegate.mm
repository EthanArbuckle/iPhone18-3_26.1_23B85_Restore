@interface DummyVoicemailMessageDetailViewControllerDelegate
- (_TtC11MobilePhone49DummyVoicemailMessageDetailViewControllerDelegate)init;
- (void)voicemailMessageDetailViewController:(id)controller destructiveActionPerformedForMessage:(id)message completionBlock:(id)block;
@end

@implementation DummyVoicemailMessageDetailViewControllerDelegate

- (void)voicemailMessageDetailViewController:(id)controller destructiveActionPerformedForMessage:(id)message completionBlock:(id)block
{
  v5 = _Block_copy(block);
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