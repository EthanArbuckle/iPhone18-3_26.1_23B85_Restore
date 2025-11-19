@interface LPFetcherConfiguration
- (LPFetcherConfiguration)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation LPFetcherConfiguration

- (LPFetcherConfiguration)init
{
  v6.receiver = self;
  v6.super_class = LPFetcherConfiguration;
  v2 = [(LPFetcherConfiguration *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_maximumResponseCount = 1;
    v4 = v2;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPFetcherConfiguration allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPFetcherConfiguration *)self webViewForProcessSharing];
    [(LPFetcherConfiguration *)v4 setWebViewForProcessSharing:v5];

    [(LPFetcherConfiguration *)v4 setMaximumResponseCount:[(LPFetcherConfiguration *)self maximumResponseCount]];
    v6 = [(LPFetcherConfiguration *)self rootEvent];
    [(LPFetcherConfiguration *)v4 setRootEvent:v6];

    [(LPFetcherConfiguration *)v4 setLoadingIsNonAppInitiated:[(LPFetcherConfiguration *)self loadingIsNonAppInitiated]];
    [(LPFetcherConfiguration *)v4 setFetchIsNotUserInitiated:[(LPFetcherConfiguration *)self fetchIsNotUserInitiated]];
    v7 = v4;
  }

  return v4;
}

- (void)dealloc
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = __Block_byref_object_copy__7;
  v6[4] = __Block_byref_object_dispose__7;
  v7 = self->_webViewForProcessSharing;
  webViewForProcessSharing = self->_webViewForProcessSharing;
  self->_webViewForProcessSharing = 0;

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__LPFetcherConfiguration_dealloc__block_invoke;
  block[3] = &unk_1E7A35518;
  block[4] = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  _Block_object_dispose(v6, 8);

  v4.receiver = self;
  v4.super_class = LPFetcherConfiguration;
  [(LPFetcherConfiguration *)&v4 dealloc];
}

void __33__LPFetcherConfiguration_dealloc__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

@end