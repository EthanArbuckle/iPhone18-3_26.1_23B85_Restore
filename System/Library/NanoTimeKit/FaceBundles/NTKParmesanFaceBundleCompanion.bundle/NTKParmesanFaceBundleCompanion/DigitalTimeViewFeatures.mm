@interface DigitalTimeViewFeatures
+ (BOOL)isGlassEnabled;
- (_TtC30NTKParmesanFaceBundleCompanion23DigitalTimeViewFeatures)init;
@end

@implementation DigitalTimeViewFeatures

+ (BOOL)isGlassEnabled
{
  if (qword_27E1DFE18 != -1)
  {
    swift_once();
  }

  return byte_27E1E1D60;
}

- (_TtC30NTKParmesanFaceBundleCompanion23DigitalTimeViewFeatures)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DigitalTimeViewFeatures();
  return [(DigitalTimeViewFeatures *)&v3 init];
}

@end