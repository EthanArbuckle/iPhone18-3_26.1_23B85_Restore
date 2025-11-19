@interface DigitalTimeViewFeatures
+ (BOOL)isGlassEnabled;
- (_TtC20NTKWarlockFaceBundle23DigitalTimeViewFeatures)init;
@end

@implementation DigitalTimeViewFeatures

+ (BOOL)isGlassEnabled
{
  if (qword_58560 != -1)
  {
    swift_once();
  }

  return byte_596B8;
}

- (_TtC20NTKWarlockFaceBundle23DigitalTimeViewFeatures)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DigitalTimeViewFeatures();
  return [(DigitalTimeViewFeatures *)&v3 init];
}

@end