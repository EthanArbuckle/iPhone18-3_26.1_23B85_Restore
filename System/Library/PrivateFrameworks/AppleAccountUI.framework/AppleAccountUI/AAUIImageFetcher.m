@interface AAUIImageFetcher
+ (id)sharedImageFetcher;
- (id)_urlSession;
- (void)fetchImageAtURL:(id)a3 completionHandler:(id)a4;
@end

@implementation AAUIImageFetcher

+ (id)sharedImageFetcher
{
  if (sharedImageFetcher_onceToken != -1)
  {
    +[AAUIImageFetcher sharedImageFetcher];
  }

  v3 = sharedImageFetcher_s_instance;

  return v3;
}

uint64_t __38__AAUIImageFetcher_sharedImageFetcher__block_invoke()
{
  sharedImageFetcher_s_instance = objc_alloc_init(AAUIImageFetcher);

  return MEMORY[0x1EEE66BB8]();
}

- (void)fetchImageAtURL:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E69DCEB0];
  v8 = a3;
  v9 = [v7 mainScreen];
  [v9 scale];
  v11 = v10;

  v12 = [(AAUIImageFetcher *)self _urlSession];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __54__AAUIImageFetcher_fetchImageAtURL_completionHandler___block_invoke;
  v18 = &unk_1E820CE60;
  v20 = v11;
  v19 = v6;
  v13 = v6;
  v14 = [v12 dataTaskWithURL:v8 completionHandler:&v15];

  [v14 resume];
}

void __54__AAUIImageFetcher_fetchImageAtURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v10 = 0;
  if (v7 && !v9)
  {
    if ([v8 statusCode] == 200)
    {
      v10 = [MEMORY[0x1E69DCAB8] imageWithData:v7 scale:*(a1 + 40)];
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_7:
  if (*(a1 + 32))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__AAUIImageFetcher_fetchImageAtURL_completionHandler___block_invoke_2;
    block[3] = &unk_1E820BBE8;
    v14 = *(a1 + 32);
    v12 = v10;
    v13 = v9;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (id)_urlSession
{
  urlSession = self->_urlSession;
  if (!urlSession)
  {
    v4 = [MEMORY[0x1E696AF80] defaultSessionConfiguration];
    v5 = [objc_alloc(MEMORY[0x1E698DCC8]) initWithIdentifier:@"com.apple.icloud"];
    [v4 set_appleIDContext:v5];

    v6 = MEMORY[0x1E696AF78];
    v7 = [MEMORY[0x1E698B830] sharedPinner];
    v8 = [v6 sessionWithConfiguration:v4 delegate:v7 delegateQueue:0];
    v9 = self->_urlSession;
    self->_urlSession = v8;

    urlSession = self->_urlSession;
  }

  return urlSession;
}

@end