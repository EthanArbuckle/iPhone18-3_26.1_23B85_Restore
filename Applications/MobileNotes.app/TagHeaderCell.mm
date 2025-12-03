@interface TagHeaderCell
- (_TtC11MobileNotes13TagHeaderCell)initWithCoder:(id)coder;
- (_TtC11MobileNotes13TagHeaderCell)initWithFrame:(CGRect)frame;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
@end

@implementation TagHeaderCell

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10047E31C(v7);

  (*(v5 + 8))(v7, v4);
}

- (_TtC11MobileNotes13TagHeaderCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes13TagHeaderCell_text);
  *v9 = 0;
  v9[1] = 0;
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(TagHeaderCell *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC11MobileNotes13TagHeaderCell)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  v6 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes13TagHeaderCell_text);
  *v6 = 0;
  v6[1] = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  coderCopy = coder;
  v8 = [(TagHeaderCell *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end