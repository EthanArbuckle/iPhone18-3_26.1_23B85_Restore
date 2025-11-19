@interface SHReferenceSignature
- (SHReferenceSignature)initWithID:(id)a3 trackID:(unint64_t)a4 signature:(id)a5;
@end

@implementation SHReferenceSignature

- (SHReferenceSignature)initWithID:(id)a3 trackID:(unint64_t)a4 signature:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = SHReferenceSignature;
  v11 = [(SHReferenceSignature *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_ID, a3);
    v12->_trackID = a4;
    objc_storeStrong(&v12->_signature, a5);
  }

  return v12;
}

@end