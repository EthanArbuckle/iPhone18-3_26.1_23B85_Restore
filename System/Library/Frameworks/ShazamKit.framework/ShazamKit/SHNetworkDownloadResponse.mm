@interface SHNetworkDownloadResponse
- (SHNetworkDownloadResponse)initWithDownloadedFileLocation:(id)location urlResponse:(id)response error:(id)error;
@end

@implementation SHNetworkDownloadResponse

- (SHNetworkDownloadResponse)initWithDownloadedFileLocation:(id)location urlResponse:(id)response error:(id)error
{
  locationCopy = location;
  responseCopy = response;
  errorCopy = error;
  v15.receiver = self;
  v15.super_class = SHNetworkDownloadResponse;
  v12 = [(SHNetworkDownloadResponse *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_downloadedFileLocation, location);
    objc_storeStrong(&v13->_urlResponse, response);
    objc_storeStrong(&v13->_error, error);
  }

  return v13;
}

@end