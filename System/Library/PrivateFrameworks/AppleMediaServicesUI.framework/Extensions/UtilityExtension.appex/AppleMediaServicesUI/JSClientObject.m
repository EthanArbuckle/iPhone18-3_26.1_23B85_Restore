@interface JSClientObject
- (NSDictionary)metricsOverlay;
- (NSString)mediaIdentifier;
@end

@implementation JSClientObject

- (NSString)mediaIdentifier
{
  sub_10001353C();
  v2 = sub_10004491C();

  return v2;
}

- (NSDictionary)metricsOverlay
{
  if (sub_1000135EC())
  {
    v2.super.isa = sub_1000448DC().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  return v2.super.isa;
}

@end