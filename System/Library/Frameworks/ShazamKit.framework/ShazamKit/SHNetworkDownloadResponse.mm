@interface SHNetworkDownloadResponse
- (SHNetworkDownloadResponse)initWithDownloadedFileLocation:(id)a3 urlResponse:(id)a4 error:(id)a5;
@end

@implementation SHNetworkDownloadResponse

- (SHNetworkDownloadResponse)initWithDownloadedFileLocation:(id)a3 urlResponse:(id)a4 error:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SHNetworkDownloadResponse;
  v12 = [(SHNetworkDownloadResponse *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_downloadedFileLocation, a3);
    objc_storeStrong(&v13->_urlResponse, a4);
    objc_storeStrong(&v13->_error, a5);
  }

  return v13;
}

@end