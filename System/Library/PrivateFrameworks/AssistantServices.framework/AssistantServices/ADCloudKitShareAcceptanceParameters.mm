@interface ADCloudKitShareAcceptanceParameters
- (ADCloudKitShareAcceptanceParameters)initWithURL:(id)l token:(id)token container:(id)container retryCount:(int64_t)count;
@end

@implementation ADCloudKitShareAcceptanceParameters

- (ADCloudKitShareAcceptanceParameters)initWithURL:(id)l token:(id)token container:(id)container retryCount:(int64_t)count
{
  lCopy = l;
  tokenCopy = token;
  containerCopy = container;
  v17.receiver = self;
  v17.super_class = ADCloudKitShareAcceptanceParameters;
  v14 = [(ADCloudKitShareAcceptanceParameters *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_url, l);
    objc_storeStrong(&v15->_token, token);
    objc_storeStrong(&v15->_containerID, container);
    v15->_retryCount = count;
  }

  return v15;
}

@end