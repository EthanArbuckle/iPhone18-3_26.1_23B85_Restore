@interface HomeListCompositionalLayout
- (_TtC4Maps27HomeListCompositionalLayout)initWithCoder:(id)a3;
- (_TtC4Maps27HomeListCompositionalLayout)initWithSection:(id)a3;
- (_TtC4Maps27HomeListCompositionalLayout)initWithSection:(id)a3 configuration:(id)a4;
- (_TtC4Maps27HomeListCompositionalLayout)initWithSectionProvider:(id)a3;
- (_TtC4Maps27HomeListCompositionalLayout)initWithSectionProvider:(id)a3 configuration:(id)a4;
- (id)finalLayoutAttributesForDisappearingDecorationElementOfKind:(id)a3 atIndexPath:(id)a4;
- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)a3;
@end

@implementation HomeListCompositionalLayout

- (_TtC4Maps27HomeListCompositionalLayout)initWithSectionProvider:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  aBlock[4] = sub_10017AF58;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10037D0B0;
  aBlock[3] = &unk_101607118;
  v6 = _Block_copy(aBlock);

  v9.receiver = self;
  v9.super_class = type metadata accessor for HomeListCompositionalLayout();
  v7 = [(HomeListCompositionalLayout *)&v9 initWithSectionProvider:v6];

  _Block_release(v6);
  return v7;
}

- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)a3
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  v9 = sub_10017A800();

  (*(v5 + 8))(v7, v4);

  return v9;
}

- (id)finalLayoutAttributesForDisappearingDecorationElementOfKind:(id)a3 atIndexPath:(id)a4
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  v10 = sub_10017AA34();

  (*(v6 + 8))(v8, v5);

  return v10;
}

- (_TtC4Maps27HomeListCompositionalLayout)initWithSection:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for HomeListCompositionalLayout();
  return [(HomeListCompositionalLayout *)&v5 initWithSection:a3];
}

- (_TtC4Maps27HomeListCompositionalLayout)initWithSection:(id)a3 configuration:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for HomeListCompositionalLayout();
  return [(HomeListCompositionalLayout *)&v7 initWithSection:a3 configuration:a4];
}

- (_TtC4Maps27HomeListCompositionalLayout)initWithSectionProvider:(id)a3 configuration:(id)a4
{
  v6 = _Block_copy(a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  aBlock[4] = sub_10017AF14;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10037D0B0;
  aBlock[3] = &unk_1016070C8;
  v8 = _Block_copy(aBlock);
  v9 = a4;

  v12.receiver = self;
  v12.super_class = type metadata accessor for HomeListCompositionalLayout();
  v10 = [(HomeListCompositionalLayout *)&v12 initWithSectionProvider:v8 configuration:v9];

  _Block_release(v8);
  return v10;
}

- (_TtC4Maps27HomeListCompositionalLayout)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for HomeListCompositionalLayout();
  v4 = a3;
  v5 = [(HomeListCompositionalLayout *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end