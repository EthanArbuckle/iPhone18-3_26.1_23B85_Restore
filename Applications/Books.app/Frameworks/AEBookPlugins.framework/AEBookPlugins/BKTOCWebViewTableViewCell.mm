@interface BKTOCWebViewTableViewCell
- (BKTOCImageCache2)imageCache;
- (NSString)selectedCacheKey;
- (UIImageView)webViewCachedImageView;
- (void)_setSelectedAppearance:(BOOL)appearance;
- (void)prepareForReuse;
- (void)setCacheKey:(id)key;
@end

@implementation BKTOCWebViewTableViewCell

- (void)setCacheKey:(id)key
{
  keyCopy = key;
  if ([keyCopy length])
  {
    v5 = [keyCopy copy];
    v6.receiver = self;
    v6.super_class = BKTOCWebViewTableViewCell;
    [(BKTOCTableViewCell *)&v6 setCacheKey:v5];

    [(BKTOCWebViewTableViewCell *)self _setSelectedAppearance:[(BKTOCWebViewTableViewCell *)self isSelected]];
  }
}

- (NSString)selectedCacheKey
{
  cacheKey = [(BKTOCTableViewCell *)self cacheKey];
  v3 = [cacheKey stringByAppendingString:@"-selected"];

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

    contentView = [(BKTOCWebViewTableViewCell *)self contentView];
    [contentView addSubview:self->_webViewCachedImageView];

    contentView2 = [(BKTOCWebViewTableViewCell *)self contentView];
    pageLabel = [(BKTOCTableViewCell *)self pageLabel];
    [contentView2 bringSubviewToFront:pageLabel];

    superview = [(UIImageView *)self->_webViewCachedImageView superview];
    topAnchor = [(UIImageView *)self->_webViewCachedImageView topAnchor];
    topAnchor2 = [superview topAnchor];
    v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v25[0] = v22;
    bottomAnchor = [(UIImageView *)self->_webViewCachedImageView bottomAnchor];
    bottomAnchor2 = [superview bottomAnchor];
    v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v25[1] = v19;
    leadingAnchor = [(UIImageView *)self->_webViewCachedImageView leadingAnchor];
    leadingAnchor2 = [superview leadingAnchor];
    v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v25[2] = v13;
    trailingAnchor = [(UIImageView *)self->_webViewCachedImageView trailingAnchor];
    trailingAnchor2 = [superview trailingAnchor];
    v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v25[3] = v16;
    v17 = [NSArray arrayWithObjects:v25 count:4];
    [superview addConstraints:v17];

    webViewCachedImageView = self->_webViewCachedImageView;
  }

  return webViewCachedImageView;
}

- (void)_setSelectedAppearance:(BOOL)appearance
{
  appearanceCopy = appearance;
  cacheKey = [(BKTOCTableViewCell *)self cacheKey];
  if (appearanceCopy)
  {
    selectedCacheKey = [(BKTOCWebViewTableViewCell *)self selectedCacheKey];

    cacheKey = selectedCacheKey;
  }

  imageCache = [(BKTOCWebViewTableViewCell *)self imageCache];
  v7 = [imageCache objectForKey:cacheKey];

  webViewCachedImageView = [(BKTOCWebViewTableViewCell *)self webViewCachedImageView];
  [webViewCachedImageView setImage:v7];
}

- (BKTOCImageCache2)imageCache
{
  WeakRetained = objc_loadWeakRetained(&self->_imageCache);

  return WeakRetained;
}

@end