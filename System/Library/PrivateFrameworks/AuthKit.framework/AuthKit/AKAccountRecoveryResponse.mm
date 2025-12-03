@interface AKAccountRecoveryResponse
- (AKAccountRecoveryResponse)initWithData:(id)data httpResponse:(id)response;
@end

@implementation AKAccountRecoveryResponse

- (AKAccountRecoveryResponse)initWithData:(id)data httpResponse:(id)response
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v10 = 0;
  objc_storeStrong(&v10, response);
  v4 = selfCopy;
  selfCopy = 0;
  v9.receiver = v4;
  v9.super_class = AKAccountRecoveryResponse;
  v8 = [(AKAccountRecoveryResponse *)&v9 init];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    objc_storeStrong(&selfCopy->_httpResponse, v10);
    objc_storeStrong(&selfCopy->_data, location[0]);
  }

  v6 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

@end