@interface TableGlobalHeader
- (_TtC7SwiftUI17TableGlobalHeader)initWithFrame:(CGRect)frame;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
@end

@implementation TableGlobalHeader

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  TableGlobalHeader.updateConfiguration(using:)(v7);

  (*(v5 + 8))(v7, v4);
}

- (_TtC7SwiftUI17TableGlobalHeader)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = self + OBJC_IVAR____TtC7SwiftUI17TableGlobalHeader_globalHeader;
  *v9 = xmmword_18CD633F0;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 63) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI17TableGlobalHeader_headerLeadingMargin) = 0;
  v10 = OBJC_IVAR____TtC7SwiftUI17TableGlobalHeader_barInteraction;
  *(&self->super.super.super.super.super.isa + v10) = [objc_allocWithZone(MEMORY[0x1E69DD6C8]) initWithStyle_];
  v12.receiver = self;
  v12.super_class = ObjectType;
  return [(TableGlobalHeader *)&v12 initWithFrame:x, y, width, height];
}

@end