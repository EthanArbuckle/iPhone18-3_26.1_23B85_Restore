@interface FMFenceMapAnnotation
- ($36C413FA9838AAAFE3D584146D9E00E7)region;
- (BOOL)didReverseGeocode;
- (NSString)displayAddress;
- (_TtC6FindMy20FMFenceMapAnnotation)init;
- (double)defaultRadius;
- (double)defaultRegionDimension;
- (void)coordinateUpdated;
- (void)setCustomRadius:(double)radius;
- (void)setOverlay:(id)overlay;
@end

@implementation FMFenceMapAnnotation

- (void)setOverlay:(id)overlay
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_overlay);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_overlay) = overlay;
  overlayCopy = overlay;
}

- (void)setCustomRadius:(double)radius
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius) = radius;
  selfCopy = self;
  sub_100486AA8();
}

- (NSString)displayAddress
{
  selfCopy = self;
  sub_100486C44();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- ($36C413FA9838AAAFE3D584146D9E00E7)region
{
  selfCopy = self;
  [(FMFenceMapAnnotation *)selfCopy coordinate];
  MKCoordinateRegionMakeWithDistance(v5, *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius) * 3.5, *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius) * 3.5);

  return result;
}

- (double)defaultRegionDimension
{
  selfCopy = self;
  v3 = sub_100486F38();

  return v3;
}

- (double)defaultRadius
{
  selfCopy = self;
  v3 = sub_100487474();

  return v3;
}

- (BOOL)didReverseGeocode
{
  v3 = sub_10007EBC0(&qword_1006B0040);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_fmfPlacemark;
  swift_beginAccess();
  sub_1004311B8(self + v6, v5);
  v7 = type metadata accessor for FMFAddress();
  LOBYTE(self) = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_100278AFC(v5);
  return self;
}

- (void)coordinateUpdated
{
  selfCopy = self;
  sub_100487A68();
}

- (_TtC6FindMy20FMFenceMapAnnotation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end