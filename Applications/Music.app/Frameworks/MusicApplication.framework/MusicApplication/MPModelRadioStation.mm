@interface MPModelRadioStation
- (NSString)musicTypeIdentifier;
- (id)pickableObjectFor:(unint64_t)for;
@end

@implementation MPModelRadioStation

- (id)pickableObjectFor:(unint64_t)for
{
  selfCopy = 0;
  if (for <= 4 && ((1 << for) & 0x13) != 0)
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (NSString)musicTypeIdentifier
{
  v2 = sub_AB9260();

  return v2;
}

@end