@interface MTRCertificateInfo
- (BOOL)isEqual:(id)equal;
- (MTRCertificateInfo)initWithTLVBytes:(MTRCertificateTLVBytes)bytes;
- (MTRDistinguishedNameInfo)issuer;
- (MTRDistinguishedNameInfo)subject;
- (NSData)publicKeyData;
- (NSDate)notAfter;
@end

@implementation MTRCertificateInfo

- (MTRCertificateInfo)initWithTLVBytes:(MTRCertificateTLVBytes)bytes
{
  v4 = bytes;
  v10.receiver = self;
  v10.super_class = MTRCertificateInfo;
  v5 = [(MTRCertificateInfo *)&v10 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [(NSData *)v4 copy];
  v7 = v5->_bytes;
  v5->_bytes = v6;

  if (v6)
  {
    v8 = v5->_bytes;
    sub_238DB6950(v11, [(NSData *)v8 bytes], [(NSData *)v8 length]);

    if (sub_2394A2BA8(v11[0], v11[1], &v5->_data, 0))
    {
      v6 = 0;
      goto LABEL_6;
    }

LABEL_5:
    v6 = v5;
  }

LABEL_6:

  return v6;
}

- (MTRDistinguishedNameInfo)issuer
{
  v2 = [[MTRDistinguishedNameInfo alloc] initWithDN:&self->_data.mIssuerDN];

  return v2;
}

- (MTRDistinguishedNameInfo)subject
{
  v2 = [[MTRDistinguishedNameInfo alloc] initWithDN:&self->_data.mSubjectDN];

  return v2;
}

- (NSData)publicKeyData
{
  v5 = &unk_2395D6B90;
  v2 = self->_bytes;
  sub_238DB6950(&v6, [(NSData *)v2 bytes], [(NSData *)v2 length]);

  if (sub_2394A0354(&v6, &v5))
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CBEA90] dataWithBytes:v5 length:65];
  }

  return v3;
}

- (NSDate)notAfter
{
  mNotAfterTime = self->_data.mNotAfterTime;
  if (mNotAfterTime)
  {
    [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:(mNotAfterTime + 946684800)];
  }

  else
  {
    [MEMORY[0x277CBEAA8] distantFuture];
  }
  v3 = ;

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v6 = [(NSData *)self->_bytes isEqual:equalCopy->_bytes];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end