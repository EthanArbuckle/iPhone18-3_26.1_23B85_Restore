@interface AFUIRemoteImageRepresentation
+ (NSArray)writableTypeIdentifiersForItemProvider;
- (AFUIRemoteImageRepresentation)initWithImageURL:(id)l;
- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler;
- (void)_commonInit;
@end

@implementation AFUIRemoteImageRepresentation

- (AFUIRemoteImageRepresentation)initWithImageURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = AFUIRemoteImageRepresentation;
  v5 = [(AFUIRemoteImageRepresentation *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    imageURL = v5->_imageURL;
    v5->_imageURL = v6;

    [(AFUIRemoteImageRepresentation *)v5 _commonInit];
  }

  return v5;
}

- (void)_commonInit
{
  self->_queue = dispatch_queue_create("ImageItemProvider Downloader", 0);

  MEMORY[0x2821F96F8]();
}

+ (NSArray)writableTypeIdentifiersForItemProvider
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = *MEMORY[0x277CC20A8];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __93__AFUIRemoteImageRepresentation_loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke;
  v9[3] = &unk_278CD5790;
  v9[4] = self;
  v10 = handlerCopy;
  v7 = handlerCopy;
  dispatch_async(queue, v9);

  return 0;
}

void __93__AFUIRemoteImageRepresentation_loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v12 = 0;
  v3 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v2 options:0 error:&v12];
  v4 = v12;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __93__AFUIRemoteImageRepresentation_loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke_2;
  v8[3] = &unk_278CD5768;
  v5 = *(a1 + 40);
  v10 = v4;
  v11 = v5;
  v9 = v3;
  v6 = v4;
  v7 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

@end