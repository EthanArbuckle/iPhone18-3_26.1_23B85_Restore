@interface TagCreateOrRenameAlertController
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (_TtC11MobileNotes32TagCreateOrRenameAlertController)init;
- (_TtC11MobileNotes32TagCreateOrRenameAlertController)initWithTagObjectID:(id)d presentingViewController:(id)controller eventReporter:(id)reporter renameMethod:(int64_t)method;
- (id)makeAlertController;
- (void)setAlertTextField:(id)field;
- (void)textChanged:(id)changed;
@end

@implementation TagCreateOrRenameAlertController

- (void)setAlertTextField:(id)field
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_alertTextField);
  *(&self->super.isa + OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_alertTextField) = field;
  fieldCopy = field;
}

- (_TtC11MobileNotes32TagCreateOrRenameAlertController)initWithTagObjectID:(id)d presentingViewController:(id)controller eventReporter:(id)reporter renameMethod:(int64_t)method
{
  dCopy = d;
  controllerCopy = controller;
  reporterCopy = reporter;
  v13 = sub_1003A87D4(d, controller, reporter, method);

  return v13;
}

- (id)makeAlertController
{
  selfCopy = self;
  v3 = sub_1003A5870(0, 0, 0, 0);

  return v3;
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  fieldCopy = field;
  selfCopy = self;
  LOBYTE(v7) = sub_1003A8998(v7, v9);

  return v7 & 1;
}

- (void)textChanged:(id)changed
{
  if (changed)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_1003A6234();

  sub_1000073B4(v6, &qword_1006BE7A0);
}

- (_TtC11MobileNotes32TagCreateOrRenameAlertController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end