@interface _SWPersonIdentityProof
- (_SWPersonIdentityProof)initWithInclusionHashes:(id)hashes;
@end

@implementation _SWPersonIdentityProof

- (_SWPersonIdentityProof)initWithInclusionHashes:(id)hashes
{
  v4.receiver = self;
  v4.super_class = _SWPersonIdentityProof;
  return [(SWPersonIdentityProof *)&v4 initWithInclusionHashes:hashes];
}

@end