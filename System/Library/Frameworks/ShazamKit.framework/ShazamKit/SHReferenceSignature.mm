@interface SHReferenceSignature
- (SHReferenceSignature)initWithID:(id)d trackID:(unint64_t)iD signature:(id)signature;
@end

@implementation SHReferenceSignature

- (SHReferenceSignature)initWithID:(id)d trackID:(unint64_t)iD signature:(id)signature
{
  dCopy = d;
  signatureCopy = signature;
  v14.receiver = self;
  v14.super_class = SHReferenceSignature;
  v11 = [(SHReferenceSignature *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_ID, d);
    v12->_trackID = iD;
    objc_storeStrong(&v12->_signature, signature);
  }

  return v12;
}

@end