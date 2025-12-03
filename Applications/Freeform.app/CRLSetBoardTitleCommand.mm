@interface CRLSetBoardTitleCommand
- (NSString)boardTitle;
- (NSString)previousBoardTitle;
- (_TtC8Freeform23CRLSetBoardTitleCommand)init;
- (void)setPreviousBoardTitle:(id)title;
@end

@implementation CRLSetBoardTitleCommand

- (NSString)boardTitle
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (NSString)previousBoardTitle
{
  if (*(self + OBJC_IVAR____TtC8Freeform23CRLSetBoardTitleCommand_previousBoardTitle + 8))
  {

    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setPreviousBoardTitle:(id)title
{
  if (title)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC8Freeform23CRLSetBoardTitleCommand_previousBoardTitle);
  *v6 = v4;
  v6[1] = v5;
}

- (_TtC8Freeform23CRLSetBoardTitleCommand)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end