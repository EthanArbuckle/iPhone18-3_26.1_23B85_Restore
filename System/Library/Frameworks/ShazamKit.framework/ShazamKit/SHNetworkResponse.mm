@interface SHNetworkResponse
- (SHNetworkResponse)initWithData:(id)a3 urlResponse:(id)a4 error:(id)a5;
@end

@implementation SHNetworkResponse

- (SHNetworkResponse)initWithData:(id)a3 urlResponse:(id)a4 error:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SHNetworkResponse;
  v12 = [(SHNetworkResponse *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_data, a3);
    objc_storeStrong(&v13->_urlResponse, a4);
    objc_storeStrong(&v13->_error, a5);
  }

  return v13;
}

@end