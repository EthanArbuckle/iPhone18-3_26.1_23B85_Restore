@interface MRESignature
- (MRESignature)initWithSignatureData:(id)a3 trackID:(unint64_t)a4;
@end

@implementation MRESignature

- (MRESignature)initWithSignatureData:(id)a3 trackID:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MRESignature;
  v8 = [(MRESignature *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_signatureData, a3);
    v9->_trackID = a4;
  }

  return v9;
}

@end