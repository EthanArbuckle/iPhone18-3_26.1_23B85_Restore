@interface LocationUpdate1HzMode
- (BOOL)isEqual:(id)a3;
- (_TtC24NanoCompassComplications21LocationUpdate1HzMode)init;
- (int64_t)hash;
@end

@implementation LocationUpdate1HzMode

- (_TtC24NanoCompassComplications21LocationUpdate1HzMode)init
{
  v2 = type metadata accessor for LocationUpdate1HzMode();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtC24NanoCompassComplications21LocationUpdate1HzMode_identifier];
  *v4 = 0x6E776F6E6B6E55;
  *(v4 + 1) = 0xE700000000000000;
  v7.receiver = v3;
  v7.super_class = v2;
  v5 = [(LocationUpdate1HzMode *)&v7 init];
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

- (int64_t)hash
{
  v2 = *(self + OBJC_IVAR____TtC24NanoCompassComplications21LocationUpdate1HzMode_identifier);
  v3 = *(self + OBJC_IVAR____TtC24NanoCompassComplications21LocationUpdate1HzMode_identifier + 8);
  v4 = self;
  v5 = MEMORY[0x23EEBB6F0](v2, v3);

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_23BD67D24();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = LocationUpdate1HzMode.isEqual(_:)(v8);

  sub_23BD643D8(v8);
  return v6 & 1;
}

@end