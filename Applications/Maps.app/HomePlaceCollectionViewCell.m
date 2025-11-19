@interface HomePlaceCollectionViewCell
- (_TtC4Maps27HomePlaceCollectionViewCell)initWithCoder:(id)a3;
- (_TtC4Maps27HomePlaceCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
@end

@implementation HomePlaceCollectionViewCell

- (_TtC4Maps27HomePlaceCollectionViewCell)initWithCoder:(id)a3
{
  v3 = self + OBJC_IVAR____TtC4Maps27HomePlaceCollectionViewCell_viewModel;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 5) = 0u;
  *(v3 + 6) = 0u;
  *(v3 + 7) = 0u;
  *(v3 + 8) = 0u;
  *(v3 + 18) = 0;
  *&self->viewModel[OBJC_IVAR____TtC4Maps27HomePlaceCollectionViewCell_delegate] = 0;
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC4Maps27HomePlaceCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = self + OBJC_IVAR____TtC4Maps27HomePlaceCollectionViewCell_viewModel;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 2) = 0u;
  *(v8 + 3) = 0u;
  *(v8 + 4) = 0u;
  *(v8 + 5) = 0u;
  *(v8 + 6) = 0u;
  *(v8 + 7) = 0u;
  *(v8 + 8) = 0u;
  *(v8 + 18) = 0;
  *&self->viewModel[OBJC_IVAR____TtC4Maps27HomePlaceCollectionViewCell_delegate] = 0;
  swift_unknownObjectWeakInit();
  v10.receiver = self;
  v10.super_class = type metadata accessor for HomePlaceCollectionViewCell();
  return [(HomePlaceCollectionViewCell *)&v10 initWithFrame:x, y, width, height];
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_100533760();

  (*(v5 + 8))(v7, v4);
}

@end