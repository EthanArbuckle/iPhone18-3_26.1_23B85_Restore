@interface AKAccountRecoveryResponse
- (AKAccountRecoveryResponse)initWithData:(id)a3 httpResponse:(id)a4;
@end

@implementation AKAccountRecoveryResponse

- (AKAccountRecoveryResponse)initWithData:(id)a3 httpResponse:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v4 = v12;
  v12 = 0;
  v9.receiver = v4;
  v9.super_class = AKAccountRecoveryResponse;
  v8 = [(AKAccountRecoveryResponse *)&v9 init];
  v12 = v8;
  objc_storeStrong(&v12, v8);
  if (v8)
  {
    objc_storeStrong(&v12->_httpResponse, v10);
    objc_storeStrong(&v12->_data, location[0]);
  }

  v6 = MEMORY[0x1E69E5928](v12);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v6;
}

@end