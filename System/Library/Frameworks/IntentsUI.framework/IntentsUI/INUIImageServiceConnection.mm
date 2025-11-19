@interface INUIImageServiceConnection
+ (id)sharedConnection;
- (void)loadUIImageForINImage:(id)a3 traitCollection:(id)a4 reply:(id)a5;
@end

@implementation INUIImageServiceConnection

- (void)loadUIImageForINImage:(id)a3 traitCollection:(id)a4 reply:(id)a5
{
  v6 = a5;
  v7 = MEMORY[0x277CD3D20];
  v8 = a3;
  v9 = [v7 sharedConnection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__INUIImageServiceConnection_loadUIImageForINImage_traitCollection_reply___block_invoke;
  v11[3] = &unk_27872BA90;
  v12 = v6;
  v10 = v6;
  [v9 loadImageDataAndSizeForImage:v8 reply:v11];
}

void __74__INUIImageServiceConnection_loadUIImageForINImage_traitCollection_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277D755B8];
  v6 = a3;
  v7 = [a2 _imageData];
  v8 = [v5 imageWithData:v7];

  (*(*(a1 + 32) + 16))();
}

+ (id)sharedConnection
{
  if (sharedConnection_onceToken != -1)
  {
    dispatch_once(&sharedConnection_onceToken, &__block_literal_global_251);
  }

  v3 = sharedConnection_sImageServiceConnection;

  return v3;
}

uint64_t __46__INUIImageServiceConnection_sharedConnection__block_invoke()
{
  sharedConnection_sImageServiceConnection = objc_alloc_init(INUIImageServiceConnection);

  return MEMORY[0x2821F96F8]();
}

@end