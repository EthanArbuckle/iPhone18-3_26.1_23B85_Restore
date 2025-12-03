@interface TipTileForLoggingHeaderViewCell
- (_TtC6Health31TipTileForLoggingHeaderViewCell)initWithCoder:(id)coder;
- (_TtC6Health31TipTileForLoggingHeaderViewCell)initWithFrame:(CGRect)frame;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
@end

@implementation TipTileForLoggingHeaderViewCell

- (_TtC6Health31TipTileForLoggingHeaderViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC6Health31TipTileForLoggingHeaderViewCell__model) = 0;
  ObservationRegistrar.init()();
  v11.receiver = self;
  v11.super_class = ObjectType;
  height = [(TipTileForLoggingHeaderViewCell *)&v11 initWithFrame:x, y, width, height];
  [(TipTileForLoggingHeaderViewCell *)height setAutomaticallyUpdatesContentConfiguration:0];
  return height;
}

- (_TtC6Health31TipTileForLoggingHeaderViewCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC6Health31TipTileForLoggingHeaderViewCell__model) = 0;
  ObservationRegistrar.init()();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1000216B8();

  (*(v5 + 8))(v8, v4);
}

@end