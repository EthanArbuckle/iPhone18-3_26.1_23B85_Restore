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
  if (qword_10066F938 != -1)
  {
    sub_1004537A8();
  }

  v3 = qword_10066F930;

  return v3;
}

+ (OS_dispatch_queue)loadingQueue
{
  if (qword_10066F948[0] != -1)
  {
    sub_1004537BC();
  }

  v3 = qword_10066F940;

  return v3;
}

- (void)loadRepresentationForArtworkCatalog:(id)catalog completionHandler:(id)handler
{
  catalogCopy = catalog;
  handlerCopy = handler;
  loadingQueue = [objc_opt_class() loadingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004531E4;
  block[3] = &unk_1005FDCA0;
  v12 = catalogCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = catalogCopy;
  dispatch_async(loadingQueue, block);
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