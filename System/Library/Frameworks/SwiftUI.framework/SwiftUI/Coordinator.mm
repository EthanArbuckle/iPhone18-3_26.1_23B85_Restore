@interface Coordinator
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (CGPoint)collectionView:(id)view targetContentOffsetForProposedContentOffset:(CGPoint)offset;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (_TtC7SwiftUIP33_59ABB005D29F0E32A3A965407533FE0D11Coordinator)init;
- (_TtC7SwiftUIP33_87E15EBB5C00F49DEF8C638A73559D9211Coordinator)init;
- (_TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator)init;
- (_TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator)init;
- (_TtC7SwiftUIP33_F1E9485F33A623EEFA647AA5EC4AE09411Coordinator)init;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)editingEnded:(id)ended;
- (void)pageDidChange:(id)change;
- (void)scrollViewDidScroll:(id)scroll;
- (void)textDidChange:(id)change;
- (void)textFieldDidChangeSelection:(id)selection;
- (void)valueChanged:(id)changed;
@end

@implementation Coordinator

- (void)valueChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  Coordinator.valueChanged(_:)(changedCopy);
}

- (_TtC7SwiftUIP33_F1E9485F33A623EEFA647AA5EC4AE09411Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)editingEnded:(id)ended
{
  *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator_isUpdating) = 0;
  selfCopy = self;
  static Update.dispatchImmediately<A>(reason:_:)();
}

- (_TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = MEMORY[0x18D00C850](0xD00000000000001CLL, 0x800000018CD44A20);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v14 = [viewCopy dequeueReusableCellWithReuseIdentifier:v12 forIndexPath:isa];

  Coordinator.configureCell(_:at:)(v14);
  (*(v7 + 8))(v9, v6);

  return v14;
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v7, v4);
  return 0;
}

- (CGPoint)collectionView:(id)view targetContentOffsetForProposedContentOffset:(CGPoint)offset
{
  viewCopy = view;
  selfCopy = self;
  specialized Coordinator.collectionView(_:targetContentOffsetForProposedContentOffset:)(viewCopy);
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  [view bounds];
  v11 = v10;
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  Coordinator.scrollViewDidScroll(_:)(scrollCopy);
}

- (_TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)pageDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  [changeCopy interactionState];
  static Update.dispatchImmediately<A>(reason:_:)();
}

- (_TtC7SwiftUIP33_59ABB005D29F0E32A3A965407533FE0D11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)textDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  Coordinator.textDidChange(_:)(changeCopy);
}

- (_TtC7SwiftUIP33_87E15EBB5C00F49DEF8C638A73559D9211Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)textFieldDidChangeSelection:(id)selection
{
  selectionCopy = selection;
  selfCopy = self;
  Coordinator.textFieldDidChangeSelection(_:)();
}

@end