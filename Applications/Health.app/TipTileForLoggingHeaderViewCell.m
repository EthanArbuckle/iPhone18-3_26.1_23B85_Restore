@interface TipTileForLoggingHeaderViewCell
- (_TtC6Health31TipTileForLoggingHeaderViewCell)initWithCoder:(id)a3;
- (_TtC6Health31TipTileForLoggingHeaderViewCell)initWithFrame:(CGRect)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
@end

@implementation TipTileForLoggingHeaderViewCell

- (_TtC6Health31TipTileForLoggingHeaderViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC6Health31TipTileForLoggingHeaderViewCell__model) = 0;
  ObservationRegistrar.init()();
  v11.receiver = self;
  v11.super_class = ObjectType;
  v9 = [(TipTileForLoggingHeaderViewCell *)&v11 initWithFrame:x, y, width, height];
  [(TipTileForLoggingHeaderViewCell *)v9 setAutomaticallyUpdatesContentConfiguration:0];
  return v9;
}

- (_TtC6Health31TipTileForLoggingHeaderViewCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC6Health31TipTileForLoggingHeaderViewCell__model) = 0;
  ObservationRegistrar.init()();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  sub_1000216B8();

  (*(v5 + 8))(v8, v4);
}

@end