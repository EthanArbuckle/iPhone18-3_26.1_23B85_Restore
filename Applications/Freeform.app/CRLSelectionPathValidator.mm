@interface CRLSelectionPathValidator
- (_TtC8Freeform25CRLSelectionPathValidator)init;
- (_TtC8Freeform25CRLSelectionPathValidator)initWithBoard:(id)a3 translator:(id)a4;
- (_TtC8Freeform8CRLBoard)board;
- (id)selectionPathFromPersistableSelectionPath:(id)a3;
- (id)selectionPathFromPersistableSelectionPath:(id)a3 isForCollaboratorCursorUpdate:(BOOL)a4;
- (id)selectionPathFromPersistableSelectionPath:(id)a3 selectableBoardItemsFromParentMapAndSiblings:(id)a4;
- (void)setSelectionModelTranslator:(id)a3;
@end

@implementation CRLSelectionPathValidator

- (_TtC8Freeform8CRLBoard)board
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setSelectionModelTranslator:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform25CRLSelectionPathValidator_selectionModelTranslator);
  *(self + OBJC_IVAR____TtC8Freeform25CRLSelectionPathValidator_selectionModelTranslator) = a3;
  v3 = a3;
}

- (_TtC8Freeform25CRLSelectionPathValidator)initWithBoard:(id)a3 translator:(id)a4
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *(self + OBJC_IVAR____TtC8Freeform25CRLSelectionPathValidator_selectionModelTranslator) = a4;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CRLSelectionPathValidator();
  v6 = a4;
  return [(CRLSelectionPathValidator *)&v8 init];
}

- (id)selectionPathFromPersistableSelectionPath:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1006D2420(v4, 0);

  return v6;
}

- (id)selectionPathFromPersistableSelectionPath:(id)a3 isForCollaboratorCursorUpdate:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_1006D2420(v6, a4);

  return v8;
}

- (id)selectionPathFromPersistableSelectionPath:(id)a3 selectableBoardItemsFromParentMapAndSiblings:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  v9 = sub_1006D48AC(v7, v8, v6);
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