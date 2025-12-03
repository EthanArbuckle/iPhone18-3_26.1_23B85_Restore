@interface PHInCallAudioButtonsViewController
- (PHAudioButtonsViewControllerProtocolDelegate)delegate;
- (PHInCallAudioButtonsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (TUCall)prioritizedCall;
- (void)setDelegate:(id)delegate;
- (void)setPrioritizedCall:(id)call;
@end

@implementation PHInCallAudioButtonsViewController

- (PHAudioButtonsViewControllerProtocolDelegate)delegate
{
  v2 = sub_1001F8D24();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1001F8D94();
}

- (TUCall)prioritizedCall
{
  v2 = sub_1001F8E10();

  return v2;
}

- (void)setPrioritizedCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  sub_1001F8E9C(call);
}

- (PHInCallAudioButtonsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  bundleCopy = bundle;
  sub_1001F9578();
}

@end