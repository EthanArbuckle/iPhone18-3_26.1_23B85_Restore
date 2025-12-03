@interface NFCVASResponse
- (NFCVASResponse)init;
- (NFCVASResponse)initWithStatus:(int64_t)status data:(id)data mobileToken:(id)token;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NFCVASResponse

- (NFCVASResponse)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(NFCVASResponse *)self initWithStatus:0 data:v3 mobileToken:v4];

  return v5;
}

- (NFCVASResponse)initWithStatus:(int64_t)status data:(id)data mobileToken:(id)token
{
  dataCopy = data;
  tokenCopy = token;
  v14.receiver = self;
  v14.super_class = NFCVASResponse;
  v11 = [(NFCVASResponse *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_status = status;
    objc_storeStrong(&v11->_vasData, data);
    objc_storeStrong(&v12->_mobileToken, token);
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  status = self->_status;
  vasData = self->_vasData;
  mobileToken = self->_mobileToken;

  return [v4 initWithStatus:status data:vasData mobileToken:mobileToken];
}

@end