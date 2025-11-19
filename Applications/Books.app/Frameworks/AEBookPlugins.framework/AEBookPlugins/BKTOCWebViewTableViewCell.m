@interface BKTOCWebViewTableViewCell
- (BKTOCImageCache2)imageCache;
- (NSString)selectedCacheKey;
- (UIImageView)webViewCachedImageView;
- (void)_setSelectedAppearance:(BOOL)a3;
- (void)prepareForReuse;
- (void)setCacheKey:(id)a3;
@end

@implementation BKTOCWebViewTableViewCell

- (void)setCacheKey:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [v4 copy];
    v6.receiver = self;
    v6.super_class = BKTOCWebViewTableViewCell;
    [(BKTOCTableViewCell *)&v6 setCacheKey:v5];

    [(BKTOCWebViewTableViewCell *)self _setSelectedAppearance:[(BKTOCWebViewTableViewCell *)self isSelected]];
  }
}

- (NSString)selectedCacheKey
{
  v2 = [(BKTOCTableViewCell *)self cacheKey];
  v3 = [v2 stringByAppendingString:@"-selected"];

  return v3;
}

- (void)prepareForReuse
{
  [(UIImageView *)self->_webViewCachedImageView setImage:0];
  [(BKTOCWebViewTableViewCell *)self setCacheKey:0];
  v3.receiver = self;
  v3.super_class = BKTOCWebViewTableViewCell;
  [(BKTOCTableViewCell *)&v3 prepareForReuse];
}

- (UIImageView)webViewCachedImageView
{
  webViewCachedImageView = self->_webViewCachedImageView;
  if (!webViewCachedImageView)
  {
    v4 = objc_alloc_init(UIImageView);
    v5 = self->_webViewCachedImageView;
    self->_webViewCachedImageView = v4;

    [(UIImageView *)self->_webViewCachedImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)self->_webViewCachedImageView setUserInteractionEnabled:0];
    [(UIImageView *)self->_webViewCachedImageView setContentMode:7];
    [(UIImageView *)self->_webViewCachedImageView setClipsToBounds:1];
    v6 = +[UIColor clearColor];
    [(UIImageView *)self->_webViewCachedImageView setBackgroundColor:v6];

    v7 = [(BKTOCWebViewTableViewCell *)self contentView];
    [v7 addSubview:self->_webViewCachedImageView];

    v8 = [(BKTOCWebViewTableViewCell *)self contentView];
    v9 = [(BKTOCTableViewCell *)self pageLabel];
    [v8 bringSubviewToFront:v9];

    v10 = [(UIImageView *)self->_webViewCachedImageView superview];
    v24 = [(UIImageView *)self->_webViewCachedImageView topAnchor];
    v23 = [v10 topAnchor];
    v22 = [v24 constraintEqualToAnchor:v23];
    v25[0] = v22;
    v21 = [(UIImageView *)self->_webViewCachedImageView bottomAnchor];
    v20 = [v10 bottomAnchor];
    v19 = [v21 constraintEqualToAnchor:v20];
    v25[1] = v19;
    v11 = [(UIImageView *)self->_webViewCachedImageView leadingAnchor];
    v12 = [v10 leadingAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v25[2] = v13;
    v14 = [(UIImageView *)self->_webViewCachedImageView trailingAnchor];
    v15 = [v10 trailingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v25[3] = v16;
    v17 = [NSArray arrayWithObjects:v25 count:4];
    [v10 addConstraints:v17];

    webViewCachedImageView = self->_webViewCachedImageView;
  }

  return webViewCachedImageView;
}

- (void)_setSelectedAppearance:(BOOL)a3
{
  v3 = a3;
  v9 = [(BKTOCTableViewCell *)self cacheKey];
  if (v3)
  {
    v5 = [(BKTOCWebViewTableViewCell *)self selectedCacheKey];

    v9 = v5;
  }

  v6 = [(BKTOCWebViewTableViewCell *)self imageCache];
  v7 = [v6 objectForKey:v9];

  v8 = [(BKTOCWebViewTableViewCell *)self webViewCachedImageView];
  [v8 setImage:v7];
}

- (BKTOCImageCache2)imageCache
{
  WeakRetained = objc_loadWeakRetained(&self->_imageCache);

  return WeakRetained;
}

@end