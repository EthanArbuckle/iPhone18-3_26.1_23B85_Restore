@interface MKURLShortener
- (MKURLShortener)init;
- (void)lengthenURL:(id)l timeout:(double)timeout queue:(id)queue completion:(id)completion;
- (void)shortenURL:(id)l timeout:(double)timeout queue:(id)queue completion:(id)completion;
- (void)shortenURLForShareSheet:(id)sheet queue:(id)queue completion:(id)completion;
@end

@implementation MKURLShortener

- (void)lengthenURL:(id)l timeout:(double)timeout queue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  serviceProvider = self->_serviceProvider;
  lCopy = l;
  [(GEOMapsURLShortener *)serviceProvider setRequestTimeout:timeout];
  [(GEOMapsURLShortener *)self->_serviceProvider setOptions:[(MKURLShortener *)self options]& 3];
  v14 = self->_serviceProvider;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __55__MKURLShortener_lengthenURL_timeout_queue_completion___block_invoke;
  v17[3] = &unk_1E76CA820;
  v18 = queueCopy;
  v19 = completionCopy;
  v15 = completionCopy;
  v16 = queueCopy;
  [(GEOMapsURLShortener *)v14 fullURLForShortenedURL:lCopy completion:v17];
}

void __55__MKURLShortener_lengthenURL_timeout_queue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__MKURLShortener_lengthenURL_timeout_queue_completion___block_invoke_2;
  block[3] = &unk_1E76CAA70;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  if (v7)
  {
    dispatch_async(v7, block);
  }

  else
  {
    __55__MKURLShortener_lengthenURL_timeout_queue_completion___block_invoke_2(block);
  }
}

- (void)shortenURLForShareSheet:(id)sheet queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  sheetCopy = sheet;
  GEOConfigGetDouble();
  [(MKURLShortener *)self shortenURL:sheetCopy timeout:queueCopy queue:completionCopy completion:?];
}

- (void)shortenURL:(id)l timeout:(double)timeout queue:(id)queue completion:(id)completion
{
  lCopy = l;
  queueCopy = queue;
  completionCopy = completion;
  if (MapsFeature_IsEnabled_Maps66())
  {
    [(GEOMapsURLShortener *)self->_serviceProvider setRequestTimeout:timeout];
    [(GEOMapsURLShortener *)self->_serviceProvider setOptions:[(MKURLShortener *)self options]& 3];
    serviceProvider = self->_serviceProvider;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __54__MKURLShortener_shortenURL_timeout_queue_completion___block_invoke;
    v19[3] = &unk_1E76CA820;
    v14 = &v20;
    v20 = queueCopy;
    v15 = &v21;
    v21 = completionCopy;
    [(GEOMapsURLShortener *)serviceProvider shortenedURLForFullURL:lCopy completion:v19];
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __54__MKURLShortener_shortenURL_timeout_queue_completion___block_invoke_3;
    v16[3] = &unk_1E76CDA20;
    v14 = &v18;
    v18 = completionCopy;
    v15 = &v17;
    v17 = lCopy;
    if (queueCopy)
    {
      dispatch_async(queueCopy, v16);
    }

    else
    {
      __54__MKURLShortener_shortenURL_timeout_queue_completion___block_invoke_3(v16);
    }
  }
}

void __54__MKURLShortener_shortenURL_timeout_queue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__MKURLShortener_shortenURL_timeout_queue_completion___block_invoke_2;
  block[3] = &unk_1E76CAA70;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  if (v7)
  {
    dispatch_async(v7, block);
  }

  else
  {
    __54__MKURLShortener_shortenURL_timeout_queue_completion___block_invoke_2(block);
  }
}

- (MKURLShortener)init
{
  v7.receiver = self;
  v7.super_class = MKURLShortener;
  v2 = [(MKURLShortener *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69A2230]);
    serviceProvider = v2->_serviceProvider;
    v2->_serviceProvider = v3;

    v5 = v2;
  }

  return v2;
}

@end