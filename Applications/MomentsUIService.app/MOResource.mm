@interface MOResource
- (BOOL)mediaIsFirstParty;
@end

@implementation MOResource

- (BOOL)mediaIsFirstParty
{
  selfCopy = self;
  v3 = MOResource.mediaIsFirstParty.getter();

  return v3 & 1;
}

@end