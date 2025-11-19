@interface NFCISO15693CustomCommandConfiguration
- (NFCISO15693CustomCommandConfiguration)initWithManufacturerCode:(NSUInteger)manufacturerCode customCommandCode:(NSUInteger)customCommandCode requestParameters:(NSData *)requestParameters maximumRetries:(NSUInteger)maximumRetries retryInterval:(NSTimeInterval)retryInterval;
- (id)asNSDataWithError:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation NFCISO15693CustomCommandConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = NFCISO15693CustomCommandConfiguration;
  v5 = [(NFCTagCommandConfiguration *)&v9 copyWithZone:?];
  v6 = v5;
  if (v5)
  {
    [v5 setManufacturerCode:self->_manufacturerCode];
    [v6 setCustomCommandCode:self->_customCommandCode];
    v7 = [(NSData *)self->_requestParameters copyWithZone:a3];
    [v6 setRequestParameters:v7];

    [v6 setFlags:self->_flags];
  }

  return v6;
}

- (NFCISO15693CustomCommandConfiguration)initWithManufacturerCode:(NSUInteger)manufacturerCode customCommandCode:(NSUInteger)customCommandCode requestParameters:(NSData *)requestParameters maximumRetries:(NSUInteger)maximumRetries retryInterval:(NSTimeInterval)retryInterval
{
  v12 = requestParameters;
  v20.receiver = self;
  v20.super_class = NFCISO15693CustomCommandConfiguration;
  v13 = [(NFCISO15693CustomCommandConfiguration *)&v20 init];
  v14 = v13;
  if (v13)
  {
    v13->_manufacturerCode = manufacturerCode;
    v13->_customCommandCode = customCommandCode;
    v15 = [(NSData *)v12 copy];
    v16 = v14->_requestParameters;
    v14->_requestParameters = v15;

    v19.receiver = v14;
    v19.super_class = NFCISO15693CustomCommandConfiguration;
    [(NFCTagCommandConfiguration *)&v19 setMaximumRetries:maximumRetries];
    v18.receiver = v14;
    v18.super_class = NFCISO15693CustomCommandConfiguration;
    [(NFCTagCommandConfiguration *)&v18 setRetryInterval:retryInterval];
    v14->_flags = 2;
  }

  return v14;
}

- (id)asNSDataWithError:(id *)a3
{
  if (self->_customCommandCode - 224 > 0xFFFFFFFFFFFFFFBFLL)
  {
    v4 = objc_opt_new();
    flags = self->_flags;
    [v4 appendBytes:&flags length:1];
    flags = self->_customCommandCode;
    [v4 appendBytes:&flags length:1];
    flags = self->_manufacturerCode;
    [v4 appendBytes:&flags length:1];
    [v4 appendData:self->_requestParameters];
  }

  else if (a3)
  {
    [NFCError errorWithCode:300];
    *a3 = v4 = 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end