@interface TVSetupAlertViewController
- (_TtC16TVSetupUIService26TVSetupAlertViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_physicalButtonInteraction:(id)interaction handleAction:(id)action withActiveActions:(id)actions;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)consumeSinglePressUpForButtonKind:(int64_t)kind;
- (void)handleButtonActions:(id)actions;
- (void)presentationControllerTransitionDidEnd:(id)end;
- (void)proxCardFlowDidDismiss;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation TVSetupAlertViewController

- (void)configureWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_100010704;
  }

  else
  {
    v7 = 0;
  }

  contextCopy = context;
  selfCopy = self;
  sub_100007FCC(context, v6, v7);
  sub_1000106BC(v6);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100008758(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100008C70(disappear);
}

- (void)presentationControllerTransitionDidEnd:(id)end
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10000BBF0();

  (*(v5 + 8))(v9, v4);
}

- (void)handleButtonActions:(id)actions
{
  sub_100002E88(0, &qword_1000260A0, SBUIRemoteAlertButtonAction_ptr);
  sub_1000100C4(&qword_1000260A8, &qword_1000260A0, SBUIRemoteAlertButtonAction_ptr);
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10000C23C(v4);
}

- (_TtC16TVSetupUIService26TVSetupAlertViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_10000CA14(v5, v7, bundle);
}

- (void)proxCardFlowDidDismiss
{
  selfCopy = self;
  sub_10000CF28();
}

- (void)consumeSinglePressUpForButtonKind:(int64_t)kind
{
  selfCopy = self;
  sub_10000F860();
}

- (void)_physicalButtonInteraction:(id)interaction handleAction:(id)action withActiveActions:(id)actions
{
  interactionCopy = interaction;
  actionCopy = action;
  selfCopy = self;
  sub_10000FACC(actionCopy);
}

@end