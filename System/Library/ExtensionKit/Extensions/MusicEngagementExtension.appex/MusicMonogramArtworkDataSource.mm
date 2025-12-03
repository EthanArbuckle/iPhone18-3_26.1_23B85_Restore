@interface MusicMonogramArtworkDataSource
+ (MusicMonogramArtworkDataSource)sharedMonogramArtworkDataSource;
+ (OS_dispatch_queue)loadingQueue;
- (MusicMonogramArtworkDataSource)init;
- (void)_monogramImageForToken:(id)token fittingSize:(CGSize)size scale:(double)scale completionHandler:(id)handler;
- (void)cancelLoadingRepresentationForArtworkCatalog:(id)catalog;
- (void)loadRepresentationForArtworkCatalog:(id)catalog completionHandler:(id)handler;
@end

@implementation MusicMonogramArtworkDataSource

- (MusicMonogramArtworkDataSource)init
{
  v6.receiver = self;
  v6.super_class = MusicMonogramArtworkDataSource;
  v2 = [(MusicMonogramArtworkDataSource *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSCache);
    cache = v2->_cache;
    v2->_cache = v3;
  }

  return v2;
}

+ (MusicMonogramArtworkDataSource)sharedMonogramArtworkDataSource
{
  if (sharedMonogramArtworkDataSource_sMonogramArtworkDataSourceOnceToken != -1)
  {
    +[MusicMonogramArtworkDataSource sharedMonogramArtworkDataSource];
  }

  v3 = sharedMonogramArtworkDataSource_sSharedMonogramArtworkDataSource;

  return v3;
}

void __65__MusicMonogramArtworkDataSource_sharedMonogramArtworkDataSource__block_invoke(id a1)
{
  v1 = objc_alloc_init(MusicMonogramArtworkDataSource);
  v2 = sharedMonogramArtworkDataSource_sSharedMonogramArtworkDataSource;
  sharedMonogramArtworkDataSource_sSharedMonogramArtworkDataSource = v1;
}

+ (OS_dispatch_queue)loadingQueue
{
  if (loadingQueue_onceToken != -1)
  {
    +[MusicMonogramArtworkDataSource loadingQueue];
  }

  v3 = loadingQueue_loadingQueue;

  return v3;
}

void __46__MusicMonogramArtworkDataSource_loadingQueue__block_invoke(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v1 = dispatch_queue_create("com.apple.Music.MusicMonogramArtworkDataSource.loadingQueue", v3);
  v2 = loadingQueue_loadingQueue;
  loadingQueue_loadingQueue = v1;
}

- (void)loadRepresentationForArtworkCatalog:(id)catalog completionHandler:(id)handler
{
  catalogCopy = catalog;
  handlerCopy = handler;
  loadingQueue = [objc_opt_class() loadingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __88__MusicMonogramArtworkDataSource_loadRepresentationForArtworkCatalog_completionHandler___block_invoke;
  block[3] = &unk_1005D0BC8;
  v12 = catalogCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = catalogCopy;
  dispatch_async(loadingQueue, block);
}

void __88__MusicMonogramArtworkDataSource_loadRepresentationForArtworkCatalog_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) token];
  [*(a1 + 32) fittingSize];
  v4 = v3;
  v6 = v5;
  [*(a1 + 32) destinationScale];
  v8 = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __88__MusicMonogramArtworkDataSource_loadRepresentationForArtworkCatalog_completionHandler___block_invoke_2;
  v10[3] = &unk_1005D0BA0;
  v9 = *(a1 + 40);
  v11 = *(a1 + 32);
  v13 = v4;
  v14 = v6;
  v12 = *(a1 + 48);
  [v9 _monogramImageForToken:v2 fittingSize:v10 scale:v4 completionHandler:{v6, v8}];
}

void __88__MusicMonogramArtworkDataSource_loadRepresentationForArtworkCatalog_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 visualIdenticalityIdentifier];
  v6 = [MPArtworkRepresentation representationForVisualIdentity:v5 withSize:v4 image:*(a1 + 48), *(a1 + 56)];

  (*(*(a1 + 40) + 16))();
}

- (void)cancelLoadingRepresentationForArtworkCatalog:(id)catalog
{
  [(CNCancelable *)self->_cancelableRenderer cancel];
  cancelableRenderer = self->_cancelableRenderer;
  self->_cancelableRenderer = 0;
}

- (void)_monogramImageForToken:(id)token fittingSize:(CGSize)size scale:(double)scale completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  tokenCopy = token;
  handlerCopy = handler;
  if (scale <= 0.0)
  {
    v13 = +[UIScreen mainScreen];
    [v13 scale];
    scale = v14;
  }

  fullName = [tokenCopy fullName];
  if (!self->_renderer)
  {
    v16 = [CNAvatarImageRenderer alloc];
    v17 = +[CNAvatarImageRendererSettings defaultSettings];
    v18 = [v16 initWithSettings:v17];
    renderer = self->_renderer;
    self->_renderer = v18;
  }

  if (width < height)
  {
    height = width;
  }

  v20 = +[CNAvatarImageRenderingScope scopeWithPointSize:scale:rightToLeft:style:](CNAvatarImageRenderingScope, "scopeWithPointSize:scale:rightToLeft:style:", [tokenCopy rightToLeft], 0, height, height, scale);
  v21 = [CNContact contactWithDisplayName:fullName emailOrPhoneNumber:0];
  v22 = self->_renderer;
  v25 = v21;
  v23 = [NSArray arrayWithObjects:&v25 count:1];
  v24 = [(CNAvatarImageRenderer *)v22 avatarImageForContacts:v23 scope:v20];

  handlerCopy[2](handlerCopy, v24);
}

@end