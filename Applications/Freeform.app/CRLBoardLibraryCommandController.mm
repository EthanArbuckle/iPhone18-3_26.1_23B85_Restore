@interface CRLBoardLibraryCommandController
- (_TtC8Freeform32CRLBoardLibraryCommandController)init;
- (void)redo;
- (void)undo;
@end

@implementation CRLBoardLibraryCommandController

- (void)undo
{
  selfCopy = self;
  sub_100FAFDC4(&selRef_canUndo, &OBJC_IVAR____TtC8Freeform32CRLBoardLibraryCommandController_undoStack, &unk_1018AB8B8, &unk_1014BDB00);
}

- (void)redo
{
  selfCopy = self;
  sub_100FAFDC4(&selRef_canRedo, &OBJC_IVAR____TtC8Freeform32CRLBoardLibraryCommandController_redoStack, &unk_1018AB890, &unk_1014BDAE8);
}

- (_TtC8Freeform32CRLBoardLibraryCommandController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end