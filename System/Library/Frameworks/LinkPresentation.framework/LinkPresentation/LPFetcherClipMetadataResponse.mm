@interface LPFetcherClipMetadataResponse
- (LPFetcherClipMetadataResponse)initWithClipMetadata:(id)a3 iconURL:(id)a4 fetcher:(id)a5;
@end

@implementation LPFetcherClipMetadataResponse

- (LPFetcherClipMetadataResponse)initWithClipMetadata:(id)a3 iconURL:(id)a4 fetcher:(id)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = LPFetcherClipMetadataResponse;
  v11 = [(LPFetcherResponse *)&v15 initWithState:2 fetcher:a5];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_metadata, a3);
    objc_storeStrong(&v12->_iconURL, a4);
    v13 = v12;
  }

  return v12;
}

@end