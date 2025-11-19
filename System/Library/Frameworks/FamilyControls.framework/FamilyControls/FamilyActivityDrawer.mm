@interface FamilyActivityDrawer
- (CGImage)imageWithStyle:(id)a3 tag:(id)a4 forRemote:(BOOL)a5;
- (_TtC19FamilyControlsAgent20FamilyActivityDrawer)init;
- (id)drawingWithStyle:(id)a3 tag:(id)a4 forRemote:(BOOL)a5;
@end

@implementation FamilyActivityDrawer

- (id)drawingWithStyle:(id)a3 tag:(id)a4 forRemote:(BOOL)a5
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v8 = sub_10001212C(v6, v10);

  sub_1000032BC(v10);

  return v8;
}

- (CGImage)imageWithStyle:(id)a3 tag:(id)a4 forRemote:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = sub_1000122F8(v8);

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