@interface _LTLanguageAssetRequest
- (_LTLanguageAssetRequest)assetRequestWithService:(id)a3 done:(id)a4;
- (_LTLanguageAssetRequest)initWithCoder:(id)a3;
- (_LTLanguageAssetRequest)initWithLanguageAssets:(id)a3 options:(unint64_t)a4 progress:(id)a5 completion:(id)a6;
- (_LTSpeechTranslationDelegate)delegate;
- (void)assetResponseWithProgress:(id)a3 finished:(BOOL)a4 error:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LTLanguageAssetRequest

- (_LTLanguageAssetRequest)initWithLanguageAssets:(id)a3 options:(unint64_t)a4 progress:(id)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v23.receiver = self;
  v23.super_class = _LTLanguageAssetRequest;
  v14 = [(_LTLanguageAssetRequest *)&v23 init];
  if (v14)
  {
    v15 = dispatch_queue_create("com.apple.translationd.AssetXPC", 0);
    queue = v14->_queue;
    v14->_queue = v15;

    objc_storeStrong(&v14->_assets, a3);
    v14->_options = a4;
    v17 = [v12 copy];
    progress = v14->_progress;
    v14->_progress = v17;

    v19 = [v13 copy];
    completion = v14->_completion;
    v14->_completion = v19;

    v21 = v14;
  }

  return v14;
}

- (_LTLanguageAssetRequest)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _LTLanguageAssetRequest;
  v5 = [(_LTLanguageAssetRequest *)&v13 init];
  if (v5)
  {
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v7 = [MEMORY[0x277CBEB98] setWithArray:v6];
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"assets"];
    assets = v5->_assets;
    v5->_assets = v8;

    v5->_options = [v4 decodeIntegerForKey:@"options"];
    v10 = v5;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  assets = self->_assets;
  v5 = a3;
  [v5 encodeObject:assets forKey:@"assets"];
  [v5 encodeInteger:self->_options forKey:@"options"];
}

- (_LTLanguageAssetRequest)assetRequestWithService:(id)a3 done:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56___LTLanguageAssetRequest_assetRequestWithService_done___block_invoke;
  v12[3] = &unk_278B6CCE0;
  objc_copyWeak(&v15, &location);
  v13 = v6;
  v14 = v7;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, v12);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
  return result;
}

- (void)assetResponseWithProgress:(id)a3 finished:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68___LTLanguageAssetRequest_assetResponseWithProgress_finished_error___block_invoke;
  block[3] = &unk_278B6CD58;
  objc_copyWeak(&v16, &location);
  v17 = a4;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (_LTSpeechTranslationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end