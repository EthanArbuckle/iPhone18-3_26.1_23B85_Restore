@interface Coordinator
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (CGPoint)collectionView:(id)a3 targetContentOffsetForProposedContentOffset:(CGPoint)a4;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (_TtC7SwiftUIP33_59ABB005D29F0E32A3A965407533FE0D11Coordinator)init;
- (_TtC7SwiftUIP33_87E15EBB5C00F49DEF8C638A73559D9211Coordinator)init;
- (_TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator)init;
- (_TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator)init;
- (_TtC7SwiftUIP33_F1E9485F33A623EEFA647AA5EC4AE09411Coordinator)init;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (void)editingEnded:(id)a3;
- (void)pageDidChange:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)textDidChange:(id)a3;
- (void)textFieldDidChangeSelection:(id)a3;
- (void)valueChanged:(id)a3;
@end

@implementation Coordinator

- (void)valueChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  Coordinator.valueChanged(_:)(v4);
}

- (_TtC7SwiftUIP33_F1E9485F33A623EEFA647AA5EC4AE09411Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)editingEnded:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator_isUpdating) = 0;
  v3 = self;
  static Update.dispatchImmediately<A>(reason:_:)();
}

- (_TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = MEMORY[0x18D00C850](0xD00000000000001CLL, 0x800000018CD44A20);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v14 = [v10 dequeueReusableCellWithReuseIdentifier:v12 forIndexPath:isa];

  Coordinator.configureCell(_:at:)(v14);
  (*(v7 + 8))(v9, v6);

  return v14;
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v7, v4);
  return 0;
}

- (CGPoint)collectionView:(id)a3 targetContentOffsetForProposedContentOffset:(CGPoint)a4
{
  v5 = a3;
  v6 = self;
  specialized Coordinator.collectionView(_:targetContentOffsetForProposedContentOffset:)(v5);
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  [a3 bounds];
  v11 = v10;
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  Coordinator.scrollViewDidScroll(_:)(v4);
}

- (_TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)pageDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  [v4 interactionState];
  static Update.dispatchImmediately<A>(reason:_:)();
}

- (_TtC7SwiftUIP33_59ABB005D29F0E32A3A965407533FE0D11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)textDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  Coordinator.textDidChange(_:)(v4);
}

- (_TtC7SwiftUIP33_87E15EBB5C00F49DEF8C638A73559D9211Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)textFieldDidChangeSelection:(id)a3
{
  v4 = a3;
  v5 = self;
  Coordinator.textFieldDidChangeSelection(_:)();
}

@end