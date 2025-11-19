@interface MusicMonogramArtworkDataSource
+ (MusicMonogramArtworkDataSource)sharedMonogramArtworkDataSource;
+ (OS_dispatch_queue)loadingQueue;
- (MusicMonogramArtworkDataSource)init;
- (void)_monogramImageForToken:(id)a3 fittingSize:(CGSize)a4 scale:(double)a5 completionHandler:(id)a6;
- (void)cancelLoadingRepresentationForArtworkCatalog:(id)a3;
- (void)loadRepresentationForArtworkCatalog:(id)a3 completionHandler:(id)a4;
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
  if (qword_10072A5B8 != -1)
  {
    sub_1004E7ADC();
  }

  v3 = qword_10072A5B0;

  return v3;
}

+ (OS_dispatch_queue)loadingQueue
{
  if (qword_10072A5C8[0] != -1)
  {
    sub_1004E7AF0();
  }

  v3 = qword_10072A5C0;

  return v3;
}

- (void)loadRepresentationForArtworkCatalog:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() loadingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004E7518;
  block[3] = &unk_1006AFA60;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)cancelLoadingRepresentationForArtworkCatalog:(id)a3
{
  [(CNCancelable *)self->_cancelableRenderer cancel];
  cancelableRenderer = self->_cancelableRenderer;
  self->_cancelableRenderer = 0;
}

- (void)_monogramImageForToken:(id)a3 fittingSize:(CGSize)a4 scale:(double)a5 completionHandler:(id)a6
{
  height = a4.height;
  width = a4.width;
  v11 = a3;
  v12 = a6;
  if (a5 <= 0.0)
  {
    v13 = +[UIScreen mainScreen];
    [v13 scale];
    a5 = v14;
  }

  v15 = [v11 fullName];
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

  v20 = +[CNAvatarImageRenderingScope scopeWithPointSize:scale:rightToLeft:style:](CNAvatarImageRenderingScope, "scopeWithPointSize:scale:rightToLeft:style:", [v11 rightToLeft], 0, height, height, a5);
  v21 = [CNContact contactWithDisplayName:v15 emailOrPhoneNumber:0];
  v22 = self->_renderer;
  v25 = v21;
  v23 = [NSArray arrayWithObjects:&v25 count:1];
  v24 = [(CNAvatarImageRenderer *)v22 avatarImageForContacts:v23 scope:v20];

  v12[2](v12, v24);
}

@end