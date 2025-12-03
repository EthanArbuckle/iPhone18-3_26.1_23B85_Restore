@interface SWSignedPersonIdentityProof
- (SWSignedPersonIdentityProof)initWithPersonIdentityProof:(SWPersonIdentityProof *)personIdentityProof signatureData:(NSData *)data;
@end

@implementation SWSignedPersonIdentityProof

- (SWSignedPersonIdentityProof)initWithPersonIdentityProof:(SWPersonIdentityProof *)personIdentityProof signatureData:(NSData *)data
{
  v7 = data;
  v8 = personIdentityProof;
  inclusionHashes = [(SWPersonIdentityProof *)v8 inclusionHashes];
  publicKey = [(SWPersonIdentityProof *)v8 publicKey];
  publicKeyIndex = [(SWPersonIdentityProof *)v8 publicKeyIndex];

  v12 = [(SWPersonIdentityProof *)self initWithInclusionHashes:inclusionHashes publicKey:publicKey localKeyIndex:publicKeyIndex];
  if (v12)
  {
    objc_storeStrong(&v12->_signatureData, data);
  }

  return v12;
}

@end