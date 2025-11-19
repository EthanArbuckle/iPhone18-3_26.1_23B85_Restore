@interface LPiTunesCuratorProfileURLFetcher
- (LPiTunesCuratorProfileURLFetcher)initWithCuratorID:(id)a3;
- (void)_completedWithResponse:(id)a3;
- (void)_failedWithError:(id)a3;
- (void)cancel;
- (void)fetchWithConfiguration:(id)a3 completionHandler:(id)a4;
@end

@implementation LPiTunesCuratorProfileURLFetcher

- (LPiTunesCuratorProfileURLFetcher)initWithCuratorID:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = LPiTunesCuratorProfileURLFetcher;
  v6 = [(LPFetcher *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_curatorID, a3);
    v8 = v7;
  }

  return v7;
}

- (void)fetchWithConfiguration:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  objc_storeStrong(&self->_configuration, a3);
  v8 = a4;
  v9 = _Block_copy(v8);

  completionHandler = self->_completionHandler;
  self->_completionHandler = v9;

  if (self->_curatorID)
  {
    v11 = [[LPiTunesMediaLookupTask alloc] initWithIdentifier:self->_curatorID storefrontCountryCode:0];
    lookupTask = self->_lookupTask;
    self->_lookupTask = v11;

    v13 = self->_lookupTask;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __77__LPiTunesCuratorProfileURLFetcher_fetchWithConfiguration_completionHandler___block_invoke;
    v14[3] = &unk_1E7A35F30;
    v14[4] = self;
    [(LPiTunesMediaLookupTask *)v13 start:v14];
  }
}

void __77__LPiTunesCuratorProfileURLFetcher_fetchWithConfiguration_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__LPiTunesCuratorProfileURLFetcher_fetchWithConfiguration_completionHandler___block_invoke_2;
  block[3] = &unk_1E7A36318;
  block[4] = *(a1 + 32);
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __77__LPiTunesCuratorProfileURLFetcher_fetchWithConfiguration_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  *(v2 + 64) = 0;

  v4 = *(a1 + 32);
  if ((v4[72] & 1) == 0)
  {
    if (*(a1 + 40))
    {

      [v4 _failedWithError:?];
    }

    else
    {
      v8 = [*(a1 + 48) objectForKeyedSubscript:@"shortUrl"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [MEMORY[0x1E695DFF8] URLWithString:v8];
        v6 = *(a1 + 32);
        if (v5)
        {
          v7 = [[LPFetcherURLResponse alloc] initWithURL:v5 fetcher:*(a1 + 32)];
          [v6 _completedWithResponse:v7];
        }

        else
        {
          [*(a1 + 32) _failedWithError:0];
        }
      }

      else
      {
        [*(a1 + 32) _failedWithError:0];
      }
    }
  }
}

- (void)cancel
{
  self->_cancelled = 1;
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;
}

- (void)_failedWithError:(id)a3
{
  v5 = a3;
  v4 = [[LPFetcherErrorResponse alloc] initWithError:v5 fetcher:self];
  [(LPiTunesCuratorProfileURLFetcher *)self _completedWithResponse:v4];
}

- (void)_completedWithResponse:(id)a3
{
  v4 = a3;
  completionHandler = self->_completionHandler;
  v7 = v4;
  if (completionHandler)
  {
    completionHandler[2]();
    v6 = self->_completionHandler;
  }

  else
  {
    v6 = 0;
  }

  self->_completionHandler = 0;
}

@end