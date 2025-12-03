@interface MRESignature
- (MRESignature)initWithSignatureData:(id)data trackID:(unint64_t)d;
@end

@implementation MRESignature

- (MRESignature)initWithSignatureData:(id)data trackID:(unint64_t)d
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = MRESignature;
  v8 = [(MRESignature *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_signatureData, data);
    v9->_trackID = d;
  }

  return v9;
}

@end