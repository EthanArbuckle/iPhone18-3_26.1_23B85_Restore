@interface PHInCallAudioButtonsViewController
- (PHAudioButtonsViewControllerProtocolDelegate)delegate;
- (PHInCallAudioButtonsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (TUCall)prioritizedCall;
- (void)setDelegate:(id)a3;
- (void)setPrioritizedCall:(id)a3;
@end

@implementation PHInCallAudioButtonsViewController

- (PHAudioButtonsViewControllerProtocolDelegate)delegate
{
  v2 = sub_1001F8D24();

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1001F8D94();
}

- (TUCall)prioritizedCall
{
  v2 = sub_1001F8E10();

  return v2;
}

- (void)setPrioritizedCall:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1001F8E9C(a3);
}

- (PHInCallAudioButtonsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  sub_1001F9578();
}

@end