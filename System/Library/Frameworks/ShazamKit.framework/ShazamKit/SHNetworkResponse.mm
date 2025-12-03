@interface SHNetworkResponse
- (SHNetworkResponse)initWithData:(id)data urlResponse:(id)response error:(id)error;
@end

@implementation SHNetworkResponse

- (SHNetworkResponse)initWithData:(id)data urlResponse:(id)response error:(id)error
{
  dataCopy = data;
  responseCopy = response;
  errorCopy = error;
  v15.receiver = self;
  v15.super_class = SHNetworkResponse;
  v12 = [(SHNetworkResponse *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_data, data);
    objc_storeStrong(&v13->_urlResponse, response);
    objc_storeStrong(&v13->_error, error);
  }

  return v13;
}

@end