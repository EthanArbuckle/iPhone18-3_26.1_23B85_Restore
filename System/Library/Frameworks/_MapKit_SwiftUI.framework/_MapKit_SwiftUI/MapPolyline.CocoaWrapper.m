@interface MapPolyline.CocoaWrapper
- ($764D331F295A58AE6A687D38444EB1E5)boundingMapRect;
- ($F24F406B2B787EFB06265DBA3D28CBD5)points;
- (CLLocationCoordinate2D)coordinate;
- (_TtCV15_MapKit_SwiftUI11MapPolyline12CocoaWrapper)init;
- (id)locationsAtPointIndexes:(id)a3;
@end

@implementation MapPolyline.CocoaWrapper

- (CLLocationCoordinate2D)coordinate
{
  [*(&self->super.super.super.super.isa + OBJC_IVAR____TtCV15_MapKit_SwiftUI11MapPolyline12CocoaWrapper_wrapped) coordinate];
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

- ($764D331F295A58AE6A687D38444EB1E5)boundingMapRect
{
  [*(&self->super.super.super.super.isa + OBJC_IVAR____TtCV15_MapKit_SwiftUI11MapPolyline12CocoaWrapper_wrapped) boundingMapRect];
  result.var1.var1 = v5;
  result.var1.var0 = v4;
  result.var0.var1 = v3;
  result.var0.var0 = v2;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)points
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtCV15_MapKit_SwiftUI11MapPolyline12CocoaWrapper_wrapped);

  return [v2 points];
}

- (id)locationsAtPointIndexes:(id)a3
{
  v4 = sub_213D9036C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213D9035C();
  v9 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtCV15_MapKit_SwiftUI11MapPolyline12CocoaWrapper_wrapped);
  v10 = self;
  v11 = sub_213D9034C();
  v12 = [v9 locationsAtPointIndexes_];

  if (!v12)
  {
    sub_213CE2B34(0, &unk_27C8EB188, 0x277CCABB0);
    sub_213D919FC();
    v12 = sub_213D919EC();
  }

  (*(v5 + 8))(v8, v4);

  return v12;
}

- (_TtCV15_MapKit_SwiftUI11MapPolyline12CocoaWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end