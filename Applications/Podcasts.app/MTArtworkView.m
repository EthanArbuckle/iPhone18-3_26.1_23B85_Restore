@interface MTArtworkView
+ (double)cornerRadiusForSize:(CGSize)a3;
- (BOOL)applyCachedImageForPodcast:(id)a3 withSize:(CGSize)a4;
- (BOOL)isPlaceholder;
- (MTArtworkView)initWithFrame:(CGRect)a3;
- (NSString)artworkKey;
- (void)_artworkSizeDidChange;
- (void)_reloadArtwork;
- (void)applyImageForPodcast:(id)a3 withSize:(CGSize)a4;
- (void)applyPlaceholderWithSize:(CGSize)a3;
- (void)dealloc;
- (void)setArtworkKey:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation MTArtworkView

- (MTArtworkView)initWithFrame:(CGRect)a3
{
  v17.receiver = self;
  v17.super_class = MTArtworkView;
  v3 = [(MTArtworkView *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_enabled = 1;
    objc_storeStrong(&v3->_artworkKey, kMTLibraryDefaultImageKey);
    v5 = +[PUIObjCArtworkProvider uiShared];
    imageProvider = v4->_imageProvider;
    v4->_imageProvider = v5;

    [(MTArtworkView *)v4 setContentMode:1];
    v7 = +[UIColor clearColor];
    [(MTArtworkView *)v4 setBackgroundColor:v7];

    v8 = +[UIScreen mainScreen];
    [v8 scale];
    v10 = v9;

    v11 = [(MTArtworkView *)v4 layer];
    [v11 setBorderWidth:1.0 / v10];

    v12 = +[UIColor artworkBorderColor];
    v13 = [v12 CGColor];
    v14 = [(MTArtworkView *)v4 layer];
    [v14 setBorderColor:v13];

    v15 = [(MTArtworkView *)v4 layer];
    [v15 setCornerCurve:kCACornerCurveContinuous];

    [(MTArtworkView *)v4 setClipsToBounds:1];
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MTArtworkView;
  [(MTArtworkView *)&v4 dealloc];
}

+ (double)cornerRadiusForSize:(CGSize)a3
{
  v3 = floor(a3.width);
  result = 0.0;
  if (v3 >= 10.0)
  {
    result = 3.0;
    if (v3 > 39.0)
    {
      if (v3 < 40.0 || (result = 4.0, v3 > 99.0))
      {
        v5 = v3 > 279.0 || v3 < 100.0;
        result = 8.0;
        if (!v5)
        {
          return 6.0;
        }
      }
    }
  }

  return result;
}

- (void)setArtworkKey:(id)a3
{
  v5 = a3;
  artworkKey = self->_artworkKey;
  if (artworkKey != v5)
  {
    v8 = v5;
    v7 = [(NSString *)artworkKey isEqualToString:v5];
    v5 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_artworkKey, a3);
      [(MTArtworkView *)self _reloadArtwork];
      v5 = v8;
    }
  }
}

- (NSString)artworkKey
{
  if (self->_artworkKey)
  {
    return self->_artworkKey;
  }

  else
  {
    return kMTLibraryDefaultImageKey;
  }
}

- (BOOL)isPlaceholder
{
  v2 = [(MTArtworkView *)self artworkKey];
  v3 = [v2 isEqualToString:kMTLibraryDefaultImageKey];

  return v3;
}

- (void)setEnabled:(BOOL)a3
{
  self->_enabled = a3;
  v3 = 0.400000006;
  if (a3)
  {
    v3 = 1.0;
  }

  [(MTArtworkView *)self setAlpha:v3];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(MTArtworkView *)self frame];
  v9 = v8;
  v11 = v10;
  v15.receiver = self;
  v15.super_class = MTArtworkView;
  [(MTArtworkView *)&v15 setFrame:x, y, width, height];
  [(MTArtworkView *)self frame];
  if (v9 != v13 || v11 != v12)
  {
    [(MTArtworkView *)self _artworkSizeDidChange];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(MTArtworkView *)self bounds];
  v9 = v8;
  v11 = v10;
  v15.receiver = self;
  v15.super_class = MTArtworkView;
  [(MTArtworkView *)&v15 setBounds:x, y, width, height];
  [(MTArtworkView *)self bounds];
  if (v9 != v13 || v11 != v12)
  {
    [(MTArtworkView *)self _artworkSizeDidChange];
  }
}

- (void)_artworkSizeDidChange
{
  [(MTArtworkView *)self _reloadArtwork];
  v3 = objc_opt_class();
  [(MTArtworkView *)self bounds];
  [v3 cornerRadiusForSize:{v4, v5}];
  v7 = v6;
  v8 = [(MTArtworkView *)self layer];
  [v8 setCornerRadius:v7];
}

- (void)_reloadArtwork
{
  [(MTArtworkView *)self bounds];
  if (v3 >= 1.0 && v4 >= 1.0)
  {
    v6 = v3;
    v7 = v4;
    if ([(MTArtworkView *)self isPlaceholder])
    {

      [(MTArtworkView *)self applyPlaceholderWithSize:v9, v6, v7];
    }

    else if (self->_artworkKey && ![(MTArtworkView *)self applyCachedImageForPodcast:v6 withSize:v7])
    {
      artworkKey = self->_artworkKey;

      [(MTArtworkView *)self applyImageForPodcast:artworkKey withSize:v6, v7];
    }
  }
}

- (void)applyPlaceholderWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  objc_initWeak(&location, self);
  imageProvider = self->_imageProvider;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000ECBF8;
  v7[3] = &unk_1004D9DE0;
  objc_copyWeak(&v8, &location);
  [(PUIObjCArtworkProvider *)imageProvider placeholderWithSize:v7 completionHandler:width, height];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (BOOL)applyCachedImageForPodcast:(id)a3 withSize:(CGSize)a4
{
  v5 = [(PUIObjCArtworkProvider *)self->_imageProvider legacyUICachedArtworkForPodcastUuid:a3 withSize:a4.width, a4.height];
  if (v5)
  {
    [(MTArtworkView *)self setImage:v5];
  }

  return v5 != 0;
}

- (void)applyImageForPodcast:(id)a3 withSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  objc_initWeak(&location, self);
  imageProvider = self->_imageProvider;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000ECEA0;
  v9[3] = &unk_1004DC048;
  objc_copyWeak(&v10, &location);
  [(PUIObjCArtworkProvider *)imageProvider keyedArtworkForShow:v7 size:v9 completionHandler:width, height];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

@end