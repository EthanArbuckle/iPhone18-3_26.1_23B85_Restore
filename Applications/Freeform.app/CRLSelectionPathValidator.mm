@interface CRLSelectionPathValidator
- (_TtC8Freeform25CRLSelectionPathValidator)init;
- (_TtC8Freeform25CRLSelectionPathValidator)initWithBoard:(id)board translator:(id)translator;
- (_TtC8Freeform8CRLBoard)board;
- (id)selectionPathFromPersistableSelectionPath:(id)path;
- (id)selectionPathFromPersistableSelectionPath:(id)path isForCollaboratorCursorUpdate:(BOOL)update;
- (id)selectionPathFromPersistableSelectionPath:(id)path selectableBoardItemsFromParentMapAndSiblings:(id)siblings;
- (void)setSelectionModelTranslator:(id)translator;
@end

@implementation CRLSelectionPathValidator

- (_TtC8Freeform8CRLBoard)board
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setSelectionModelTranslator:(id)translator
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform25CRLSelectionPathValidator_selectionModelTranslator);
  *(self + OBJC_IVAR____TtC8Freeform25CRLSelectionPathValidator_selectionModelTranslator) = translator;
  translatorCopy = translator;
}

- (_TtC8Freeform25CRLSelectionPathValidator)initWithBoard:(id)board translator:(id)translator
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *(self + OBJC_IVAR____TtC8Freeform25CRLSelectionPathValidator_selectionModelTranslator) = translator;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CRLSelectionPathValidator();
  translatorCopy = translator;
  return [(CRLSelectionPathValidator *)&v8 init];
}

- (id)selectionPathFromPersistableSelectionPath:(id)path
{
  pathCopy = path;
  selfCopy = self;
  v6 = sub_1006D2420(pathCopy, 0);

  return v6;
}

- (id)selectionPathFromPersistableSelectionPath:(id)path isForCollaboratorCursorUpdate:(BOOL)update
{
  pathCopy = path;
  selfCopy = self;
  v8 = sub_1006D2420(pathCopy, update);

  return v8;
}

- (id)selectionPathFromPersistableSelectionPath:(id)path selectableBoardItemsFromParentMapAndSiblings:(id)siblings
{
  v6 = _Block_copy(siblings);
  _Block_copy(v6);
  pathCopy = path;
  selfCopy = self;
  v9 = sub_1006D48AC(pathCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);

  return v9;
}

- (_TtC8Freeform25CRLSelectionPathValidator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end