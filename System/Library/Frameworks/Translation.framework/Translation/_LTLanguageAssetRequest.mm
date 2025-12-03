@interface _LTLanguageAssetRequest
- (_LTLanguageAssetRequest)assetRequestWithService:(id)service done:(id)done;
- (_LTLanguageAssetRequest)initWithCoder:(id)coder;
- (_LTLanguageAssetRequest)initWithLanguageAssets:(id)assets options:(unint64_t)options progress:(id)progress completion:(id)completion;
- (_LTSpeechTranslationDelegate)delegate;
- (void)assetResponseWithProgress:(id)progress finished:(BOOL)finished error:(id)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LTLanguageAssetRequest

- (_LTLanguageAssetRequest)initWithLanguageAssets:(id)assets options:(unint64_t)options progress:(id)progress completion:(id)completion
{
  assetsCopy = assets;
  progressCopy = progress;
  completionCopy = completion;
  v23.receiver = self;
  v23.super_class = _LTLanguageAssetRequest;
  v14 = [(_LTLanguageAssetRequest *)&v23 init];
  if (v14)
  {
    v15 = dispatch_queue_create("com.apple.translationd.AssetXPC", 0);
    queue = v14->_queue;
    v14->_queue = v15;

    objc_storeStrong(&v14->_assets, assets);
    v14->_options = options;
    v17 = [progressCopy copy];
    progress = v14->_progress;
    v14->_progress = v17;

    v19 = [completionCopy copy];
    completion = v14->_completion;
    v14->_completion = v19;

    v21 = v14;
  }

  return v14;
}

- (_LTLanguageAssetRequest)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = _LTLanguageAssetRequest;
  v5 = [(_LTLanguageAssetRequest *)&v13 init];
  if (v5)
  {
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v7 = [MEMORY[0x277CBEB98] setWithArray:v6];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"assets"];
    assets = v5->_assets;
    v5->_assets = v8;

    v5->_options = [coderCopy decodeIntegerForKey:@"options"];
    v10 = v5;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  assets = self->_assets;
  coderCopy = coder;
  [coderCopy encodeObject:assets forKey:@"assets"];
  [coderCopy encodeInteger:self->_options forKey:@"options"];
}

- (_LTLanguageAssetRequest)assetRequestWithService:(id)service done:(id)done
{
  serviceCopy = service;
  doneCopy = done;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56___LTLanguageAssetRequest_assetRequestWithService_done___block_invoke;
  v12[3] = &unk_278B6CCE0;
  objc_copyWeak(&v15, &location);
  v13 = serviceCopy;
  v14 = doneCopy;
  v9 = serviceCopy;
  v10 = doneCopy;
  dispatch_async(queue, v12);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
  return result;
}

- (void)assetResponseWithProgress:(id)progress finished:(BOOL)finished error:(id)error
{
  progressCopy = progress;
  errorCopy = error;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68___LTLanguageAssetRequest_assetResponseWithProgress_finished_error___block_invoke;
  block[3] = &unk_278B6CD58;
  objc_copyWeak(&v16, &location);
  finishedCopy = finished;
  v14 = progressCopy;
  v15 = errorCopy;
  v11 = errorCopy;
  v12 = progressCopy;
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