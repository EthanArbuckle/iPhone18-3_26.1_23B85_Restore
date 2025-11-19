@interface TagCreateOrRenameAlertController
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (_TtC11MobileNotes32TagCreateOrRenameAlertController)init;
- (_TtC11MobileNotes32TagCreateOrRenameAlertController)initWithTagObjectID:(id)a3 presentingViewController:(id)a4 eventReporter:(id)a5 renameMethod:(int64_t)a6;
- (id)makeAlertController;
- (void)setAlertTextField:(id)a3;
- (void)textChanged:(id)a3;
@end

@implementation TagCreateOrRenameAlertController

- (void)setAlertTextField:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_alertTextField);
  *(&self->super.isa + OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_alertTextField) = a3;
  v3 = a3;
}

- (_TtC11MobileNotes32TagCreateOrRenameAlertController)initWithTagObjectID:(id)a3 presentingViewController:(id)a4 eventReporter:(id)a5 renameMethod:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = sub_1003A87D4(a3, a4, a5, a6);

  return v13;
}

- (id)makeAlertController
{
  v2 = self;
  v3 = sub_1003A5870(0, 0, 0, 0);

  return v3;
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = a3;
  v11 = self;
  LOBYTE(v7) = sub_1003A8998(v7, v9);

  return v7 & 1;
}

- (void)textChanged:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
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