@interface ADCloudKitShareAcceptanceParameters
- (ADCloudKitShareAcceptanceParameters)initWithURL:(id)a3 token:(id)a4 container:(id)a5 retryCount:(int64_t)a6;
@end

@implementation ADCloudKitShareAcceptanceParameters

- (ADCloudKitShareAcceptanceParameters)initWithURL:(id)a3 token:(id)a4 container:(id)a5 retryCount:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = ADCloudKitShareAcceptanceParameters;
  v14 = [(ADCloudKitShareAcceptanceParameters *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_url, a3);
    objc_storeStrong(&v15->_token, a4);
    objc_storeStrong(&v15->_containerID, a5);
    v15->_retryCount = a6;
  }

  return v15;
}

@end