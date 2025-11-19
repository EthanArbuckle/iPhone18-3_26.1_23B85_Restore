@interface MPModelRadioStation
- (NSString)musicTypeIdentifier;
- (id)pickableObjectFor:(unint64_t)a3;
@end

@implementation MPModelRadioStation

- (id)pickableObjectFor:(unint64_t)a3
{
  v5 = 0;
  if (a3 <= 4 && ((1 << a3) & 0x13) != 0)
  {
    v5 = a1;
  }

  return v5;
}

- (NSString)musicTypeIdentifier
{
  v2 = sub_AB9260();

  return v2;
}

@end