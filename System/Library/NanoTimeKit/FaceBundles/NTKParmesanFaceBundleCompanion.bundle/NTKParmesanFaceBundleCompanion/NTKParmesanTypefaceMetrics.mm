@interface NTKParmesanTypefaceMetrics
- (NTKParmesanTypefaceMetrics)init;
- (NTKParmesanTypefaceMetrics)initWithDevice:(id)device;
@end

@implementation NTKParmesanTypefaceMetrics

- (NTKParmesanTypefaceMetrics)initWithDevice:(id)device
{
  deviceCopy = device;
  v4 = sub_23BFEA418(deviceCopy);

  return v4;
}

- (NTKParmesanTypefaceMetrics)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end