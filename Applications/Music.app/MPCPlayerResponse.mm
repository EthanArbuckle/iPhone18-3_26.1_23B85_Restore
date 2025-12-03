@interface MPCPlayerResponse
- (id)attributionMetadataFor:(id)for;
@end

@implementation MPCPlayerResponse

- (id)attributionMetadataFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  v6 = sub_10077AE00(forCopy);

  return v6;
}

@end