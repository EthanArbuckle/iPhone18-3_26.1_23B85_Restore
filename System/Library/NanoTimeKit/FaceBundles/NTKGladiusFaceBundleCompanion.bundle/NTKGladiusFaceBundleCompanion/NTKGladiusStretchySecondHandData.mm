@interface NTKGladiusStretchySecondHandData
- (_TtC29NTKGladiusFaceBundleCompanion32NTKGladiusStretchySecondHandData)init;
- (_TtC29NTKGladiusFaceBundleCompanion32NTKGladiusStretchySecondHandData)initWithDevice:(id)a3;
- (double)sampleAtAngle:(double)a3 includeBaseRadius:(BOOL)a4;
@end

@implementation NTKGladiusStretchySecondHandData

- (_TtC29NTKGladiusFaceBundleCompanion32NTKGladiusStretchySecondHandData)initWithDevice:(id)a3
{
  v3 = a3;
  v4 = sub_11F90(v3);

  return v4;
}

- (double)sampleAtAngle:(double)a3 includeBaseRadius:(BOOL)a4
{
  v6 = self;
  sub_11C08(a4, a3);
  v8 = v7;

  return v8;
}

- (_TtC29NTKGladiusFaceBundleCompanion32NTKGladiusStretchySecondHandData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end