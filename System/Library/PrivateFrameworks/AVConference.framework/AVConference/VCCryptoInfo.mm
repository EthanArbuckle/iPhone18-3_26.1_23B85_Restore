@interface VCCryptoInfo
- (VCCryptoInfo)initWithSRTPInfo:(tagSRTPINFO *)info;
- (void)dealloc;
@end

@implementation VCCryptoInfo

- (VCCryptoInfo)initWithSRTPInfo:(tagSRTPINFO *)info
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCCryptoInfo;
  v4 = [(VCCryptoInfo *)&v7 init];
  v5 = v4;
  if (v4)
  {
    memcpy(&v4->_SRTPInfo, info, sizeof(v4->_SRTPInfo));
  }

  return v5;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  SRTPCleanUp(&self->_SRTPInfo);
  v3.receiver = self;
  v3.super_class = VCCryptoInfo;
  [(VCCryptoInfo *)&v3 dealloc];
}

@end