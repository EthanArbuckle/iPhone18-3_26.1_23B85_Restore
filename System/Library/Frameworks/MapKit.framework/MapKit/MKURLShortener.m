@interface MKURLShortener
- (MKURLShortener)init;
- (void)lengthenURL:(id)a3 timeout:(double)a4 queue:(id)a5 completion:(id)a6;
- (void)shortenURL:(id)a3 timeout:(double)a4 queue:(id)a5 completion:(id)a6;
- (void)shortenURLForShareSheet:(id)a3 queue:(id)a4 completion:(id)a5;
@end

@implementation MKURLShortener

- (void)lengthenURL:(id)a3 timeout:(double)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a5;
  v11 = a6;
  serviceProvider = self->_serviceProvider;
  v13 = a3;
  [(GEOMapsURLShortener *)serviceProvider setRequestTimeout:a4];
  [(GEOMapsURLShortener *)self->_serviceProvider setOptions:[(MKURLShortener *)self options]& 3];
  v14 = self->_serviceProvider;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __55__MKURLShortener_lengthenURL_timeout_queue_completion___block_invoke;
  v17[3] = &unk_1E76CA820;
  v18 = v10;
  v19 = v11;
  v15 = v11;
  v16 = v10;
  [(GEOMapsURLShortener *)v14 fullURLForShortenedURL:v13 completion:v17];
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

- (void)shortenURLForShareSheet:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  GEOConfigGetDouble();
  [(MKURLShortener *)self shortenURL:v10 timeout:v9 queue:v8 completion:?];
}

- (void)shortenURL:(id)a3 timeout:(double)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (MapsFeature_IsEnabled_Maps66())
  {
    [(GEOMapsURLShortener *)self->_serviceProvider setRequestTimeout:a4];
    [(GEOMapsURLShortener *)self->_serviceProvider setOptions:[(MKURLShortener *)self options]& 3];
    serviceProvider = self->_serviceProvider;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __54__MKURLShortener_shortenURL_timeout_queue_completion___block_invoke;
    v19[3] = &unk_1E76CA820;
    v14 = &v20;
    v20 = v11;
    v15 = &v21;
    v21 = v12;
    [(GEOMapsURLShortener *)serviceProvider shortenedURLForFullURL:v10 completion:v19];
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __54__MKURLShortener_shortenURL_timeout_queue_completion___block_invoke_3;
    v16[3] = &unk_1E76CDA20;
    v14 = &v18;
    v18 = v12;
    v15 = &v17;
    v17 = v10;
    if (v11)
    {
      dispatch_async(v11, v16);
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