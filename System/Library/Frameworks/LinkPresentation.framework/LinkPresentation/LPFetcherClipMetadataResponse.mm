@interface LPFetcherClipMetadataResponse
- (LPFetcherClipMetadataResponse)initWithClipMetadata:(id)metadata iconURL:(id)l fetcher:(id)fetcher;
@end

@implementation LPFetcherClipMetadataResponse

- (LPFetcherClipMetadataResponse)initWithClipMetadata:(id)metadata iconURL:(id)l fetcher:(id)fetcher
{
  metadataCopy = metadata;
  lCopy = l;
  v15.receiver = self;
  v15.super_class = LPFetcherClipMetadataResponse;
  v11 = [(LPFetcherResponse *)&v15 initWithState:2 fetcher:fetcher];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_metadata, metadata);
    objc_storeStrong(&v12->_iconURL, l);
    v13 = v12;
  }

  return v12;
}

@end