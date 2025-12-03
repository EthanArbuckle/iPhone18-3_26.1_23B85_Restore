@interface FamilyActivityDrawer
- (CGImage)imageWithStyle:(id)style tag:(id)tag forRemote:(BOOL)remote;
- (_TtC19FamilyControlsAgent20FamilyActivityDrawer)init;
- (id)drawingWithStyle:(id)style tag:(id)tag forRemote:(BOOL)remote;
@end

@implementation FamilyActivityDrawer

- (id)drawingWithStyle:(id)style tag:(id)tag forRemote:(BOOL)remote
{
  styleCopy = style;
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v8 = sub_10001212C(styleCopy, v10);

  sub_1000032BC(v10);

  return v8;
}

- (CGImage)imageWithStyle:(id)style tag:(id)tag forRemote:(BOOL)remote
{
  styleCopy = style;
  tagCopy = tag;
  selfCopy = self;
  v10 = sub_1000122F8(tagCopy);

  return v10;
}

- (_TtC19FamilyControlsAgent20FamilyActivityDrawer)init
{
  v3 = self + OBJC_IVAR____TtC19FamilyControlsAgent20FamilyActivityDrawer__displayScale;
  *v3 = swift_getKeyPath();
  v3[8] = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FamilyActivityDrawer();
  return [(FamilyActivityDrawer *)&v5 init];
}

@end