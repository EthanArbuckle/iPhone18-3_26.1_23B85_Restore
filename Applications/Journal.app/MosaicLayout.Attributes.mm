@interface MosaicLayout.Attributes
- (BOOL)isEqual:(id)equal;
- (NSString)debugDescription;
- (_TtCC7Journal12MosaicLayout10Attributes)init;
- (id)copyWithZone:(void *)zone;
@end

@implementation MosaicLayout.Attributes

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_100068EF0(zone, v7);

  sub_10000CA14(v7, v7[3]);
  v5 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_10000BA7C(v7);
  return v5;
}

- (_TtCC7Journal12MosaicLayout10Attributes)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_sizeType) = 2;
  v2 = (self + OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii);
  *v2 = 0u;
  v2[1] = 0u;
  v2[2] = 0u;
  v2[3] = 0u;
  v4.receiver = self;
  v4.super_class = type metadata accessor for MosaicLayout.Attributes();
  return [(MosaicLayout.Attributes *)&v4 init];
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_100072E1C(v8);

  sub_1000261D4(v8);
  return v6 & 1;
}

- (NSString)debugDescription
{
  selfCopy = self;
  sub_1003C1988();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

@end