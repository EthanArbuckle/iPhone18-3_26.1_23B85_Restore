@interface HomeListCompositionalLayout
- (_TtC4Maps27HomeListCompositionalLayout)initWithCoder:(id)coder;
- (_TtC4Maps27HomeListCompositionalLayout)initWithSection:(id)section;
- (_TtC4Maps27HomeListCompositionalLayout)initWithSection:(id)section configuration:(id)configuration;
- (_TtC4Maps27HomeListCompositionalLayout)initWithSectionProvider:(id)provider;
- (_TtC4Maps27HomeListCompositionalLayout)initWithSectionProvider:(id)provider configuration:(id)configuration;
- (id)finalLayoutAttributesForDisappearingDecorationElementOfKind:(id)kind atIndexPath:(id)path;
- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)path;
@end

@implementation HomeListCompositionalLayout

- (_TtC4Maps27HomeListCompositionalLayout)initWithSectionProvider:(id)provider
{
  v4 = _Block_copy(provider);
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

- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)path
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v9 = sub_10017A800();

  (*(v5 + 8))(v7, v4);

  return v9;
}

- (id)finalLayoutAttributesForDisappearingDecorationElementOfKind:(id)kind atIndexPath:(id)path
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v10 = sub_10017AA34();

  (*(v6 + 8))(v8, v5);

  return v10;
}

- (_TtC4Maps27HomeListCompositionalLayout)initWithSection:(id)section
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for HomeListCompositionalLayout();
  return [(HomeListCompositionalLayout *)&v5 initWithSection:section];
}

- (_TtC4Maps27HomeListCompositionalLayout)initWithSection:(id)section configuration:(id)configuration
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for HomeListCompositionalLayout();
  return [(HomeListCompositionalLayout *)&v7 initWithSection:section configuration:configuration];
}

- (_TtC4Maps27HomeListCompositionalLayout)initWithSectionProvider:(id)provider configuration:(id)configuration
{
  v6 = _Block_copy(provider);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  aBlock[4] = sub_10017AF14;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10037D0B0;
  aBlock[3] = &unk_1016070C8;
  v8 = _Block_copy(aBlock);
  configurationCopy = configuration;

  v12.receiver = self;
  v12.super_class = type metadata accessor for HomeListCompositionalLayout();
  v10 = [(HomeListCompositionalLayout *)&v12 initWithSectionProvider:v8 configuration:configurationCopy];

  _Block_release(v8);
  return v10;
}

- (_TtC4Maps27HomeListCompositionalLayout)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for HomeListCompositionalLayout();
  coderCopy = coder;
  v5 = [(HomeListCompositionalLayout *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end