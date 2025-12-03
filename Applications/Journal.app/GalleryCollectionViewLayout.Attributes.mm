@interface GalleryCollectionViewLayout.Attributes
- (BOOL)isEqual:(id)equal;
- (NSString)debugDescription;
- (_TtCC7Journal27GalleryCollectionViewLayout10Attributes)init;
- (id)copyWithZone:(void *)zone;
@end

@implementation GalleryCollectionViewLayout.Attributes

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

  v6 = sub_10020957C(v8);

  sub_100004F84(v8, &qword_100AD13D0);
  return v6 & 1;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_100209890(zone, v7);

  sub_10000CA14(v7, v7[3]);
  v5 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_10000BA7C(v7);
  return v5;
}

- (NSString)debugDescription
{
  selfCopy = self;
  sub_100209A44();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (_TtCC7Journal27GalleryCollectionViewLayout10Attributes)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_normalizedPosition) = 0;
  v3 = (&self->super.super.isa + OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_contentTransform);
  *v3 = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  v4 = (self + OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_layoutMargins);
  v5 = type metadata accessor for GalleryCollectionViewLayout.Attributes();
  *v4 = 0u;
  v4[1] = 0u;
  v7.receiver = self;
  v7.super_class = v5;
  return [(GalleryCollectionViewLayout.Attributes *)&v7 init];
}

@end