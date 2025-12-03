@interface MTSwitchCell
- (BOOL)_loadArtworkFromMemoryCache;
- (BOOL)isPlaceholder;
- (id)imageProvider;
- (void)_asyncFetchArtworkDidLoadImage:(id)image forArtworkKey:(id)key;
- (void)_clearAndHideArtworkView;
- (void)_fetchArtwork;
- (void)_fetchArtworkInBackground;
- (void)_layoutContentViewSubviews;
- (void)_updateSeparatorInsets;
- (void)layoutSubviews;
- (void)setArtworkKey:(id)key;
- (void)setCellEmphasis:(int64_t)emphasis;
- (void)setEnabled:(BOOL)enabled;
- (void)setMaximumNumberOfTextLines:(unint64_t)lines;
- (void)setupCell;
- (void)toggleChanged:(id)changed;
- (void)toggleOn:(BOOL)on animated:(BOOL)animated;
@end

@implementation MTSwitchCell

- (void)toggleOn:(BOOL)on animated:(BOOL)animated
{
  animatedCopy = animated;
  onCopy = on;
  toggle = [(MTSwitchCell *)self toggle];
  [toggle setOn:onCopy animated:animatedCopy];
}

- (void)setArtworkKey:(id)key
{
  keyCopy = key;
  if (([(NSString *)self->_artworkKey isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_artworkKey, key);
    if ([(NSString *)self->_artworkKey length])
    {
      [(MTSwitchCell *)self _fetchArtwork];
    }

    else
    {
      [(MTSwitchCell *)self _clearAndHideArtworkView];
    }
  }
}

- (void)setMaximumNumberOfTextLines:(unint64_t)lines
{
  if (lines <= 1)
  {
    linesCopy = 1;
  }

  else
  {
    linesCopy = lines;
  }

  if (self->_maximumNumberOfTextLines != linesCopy)
  {
    self->_maximumNumberOfTextLines = linesCopy;
    textLabel = [(MTSwitchCell *)self textLabel];
    [textLabel setNumberOfLines:self->_maximumNumberOfTextLines];

    [(MTSwitchCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  [(MTSwitchCell *)self _updateSeparatorInsets];
  v3.receiver = self;
  v3.super_class = MTSwitchCell;
  [(MTTableViewCell *)&v3 layoutSubviews];
  [(MTSwitchCell *)self _layoutContentViewSubviews];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6.receiver = self;
  v6.super_class = MTSwitchCell;
  [(MTTableViewCell *)&v6 setEnabled:?];
  toggle = [(MTSwitchCell *)self toggle];
  [toggle setEnabled:enabledCopy];
}

- (void)setupCell
{
  v8.receiver = self;
  v8.super_class = MTSwitchCell;
  [(MTTableViewCell *)&v8 setupCell];
  v3 = objc_opt_new();
  [(MTSwitchCell *)self setToggle:v3];
  [v3 addTarget:self action:"toggleChanged:" forControlEvents:4096];
  [(MTSwitchCell *)self setAccessoryView:v3];
  textLabel = [(MTSwitchCell *)self textLabel];
  v5 = +[UIColor cellTextColor];
  [textLabel setTextColor:v5];

  textLabel2 = [(MTSwitchCell *)self textLabel];
  titleFont = [objc_opt_class() titleFont];
  [textLabel2 setFont:titleFont];
}

- (void)setCellEmphasis:(int64_t)emphasis
{
  if ([(MTTableViewCell *)self cellEmphasis]!= emphasis)
  {
    v6.receiver = self;
    v6.super_class = MTSwitchCell;
    [(MTTableViewCell *)&v6 setCellEmphasis:emphasis];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10007A954;
    v5[3] = &unk_1004D9720;
    v5[4] = self;
    v5[5] = emphasis;
    [UIView performWithoutAnimation:v5];
  }
}

- (void)_updateSeparatorInsets
{
  if ([(MTSwitchCell *)self customiseLabelAndSeparatorInsets])
  {
    mt_isRTL = [(MTSwitchCell *)self mt_isRTL];
    contentView = [(MTSwitchCell *)self contentView];
    [contentView layoutMargins];
    v6 = v5;
    v8 = v7;

    if (mt_isRTL)
    {
      v6 = v8;
    }

    _showsArtwork = [(MTSwitchCell *)self _showsArtwork];
    v10 = 64.0;
    if (!_showsArtwork)
    {
      v10 = 0.0;
    }

    [(MTSwitchCell *)self setSeparatorInset:0.0, v6 + v10, 0.0, 0.0];
  }
}

- (void)_layoutContentViewSubviews
{
  effectiveUserInterfaceLayoutDirection = [(MTSwitchCell *)self effectiveUserInterfaceLayoutDirection];
  contentView = [(MTSwitchCell *)self contentView];
  [contentView bounds];
  [contentView layoutMargins];
  [contentView layoutMargins];
  UIRectInset();
  UIRectInset();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  artworkKey = [(MTSwitchCell *)self artworkKey];
  v13 = [artworkKey length];

  if (v13)
  {
    v34.origin.x = v5;
    v34.origin.y = v7;
    v34.size.width = v9;
    v34.size.height = v11;
    Height = CGRectGetHeight(v34);
    v15 = sub_100146EDC(effectiveUserInterfaceLayoutDirection == 1, 1, 1, 0.0, (Height + -48.0) * 0.5, 48.0, 48.0, v5, v7, v9, v11);
    v17 = v16;
    v19 = v18;
    v21 = v20;
    imageView = [(MTSwitchCell *)self imageView];
    [imageView setFrame:{v15, v17, v19, v21}];

    imageView2 = [(MTSwitchCell *)self imageView];
    superview = [imageView2 superview];

    if (!superview)
    {
      imageView3 = [(MTSwitchCell *)self imageView];
      [contentView addSubview:imageView3];

      imageView4 = [(MTSwitchCell *)self imageView];
      [imageView4 setClipsToBounds:1];
    }

    UIRectInset();
    v5 = v27;
    v7 = v28;
    v9 = v29;
    v11 = v30;
  }

  if ([(MTSwitchCell *)self customiseLabelAndSeparatorInsets])
  {
    textLabel = [(MTSwitchCell *)self textLabel];
    [textLabel setFrame:{v5, v7, v9, v11}];
  }
}

- (void)_clearAndHideArtworkView
{
  _artworkView = [(MTSwitchCell *)self _artworkView];
  [_artworkView setImage:0];
  [_artworkView setHidden:1];
}

- (void)_fetchArtwork
{
  artworkKey = [(MTSwitchCell *)self artworkKey];
  v4 = [artworkKey length];

  if (v4)
  {
    _artworkView = [(MTSwitchCell *)self _artworkView];
    [_artworkView mt_configureForDisplayingArtworkWithRadius:3.0];
    [_artworkView setHidden:0];
    if (![(MTSwitchCell *)self _loadArtworkFromMemoryCache])
    {
      [_artworkView setImage:0];
      [(MTSwitchCell *)self _fetchArtworkInBackground];
    }
  }
}

- (void)_fetchArtworkInBackground
{
  artworkKey = [(MTSwitchCell *)self artworkKey];
  objc_initWeak(&location, self);
  v4 = +[UIImage defaultPodcastArtwork];
  [(MTSwitchCell *)self _asyncFetchArtworkDidLoadImage:v4 forArtworkKey:artworkKey];

  if ([(MTSwitchCell *)self isPlaceholder])
  {
    imageProvider = [(MTSwitchCell *)self imageProvider];
    v6 = v8;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10007B0F4;
    v8[3] = &unk_1004D9748;
    v7 = &v9;
    objc_copyWeak(&v9, &location);
    v8[4] = artworkKey;
    [imageProvider placeholderWithSize:v8 completionHandler:{48.0, 48.0}];
  }

  else
  {
    imageProvider = [(MTSwitchCell *)self imageProvider];
    v6 = v10;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10007B050;
    v10[3] = &unk_1004D9748;
    v7 = &v12;
    objc_copyWeak(&v12, &location);
    v11 = artworkKey;
    [imageProvider artworkForShow:v11 size:v10 completionHandler:{48.0, 48.0}];
  }

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

- (void)_asyncFetchArtworkDidLoadImage:(id)image forArtworkKey:(id)key
{
  imageCopy = image;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007B264;
  v9[3] = &unk_1004D94C8;
  v9[4] = self;
  keyCopy = key;
  v11 = imageCopy;
  v7 = imageCopy;
  v8 = keyCopy;
  [NSThread mainThread:v9];
}

- (BOOL)_loadArtworkFromMemoryCache
{
  artworkKey = [(MTSwitchCell *)self artworkKey];
  if (artworkKey && !-[MTSwitchCell isPlaceholder](self, "isPlaceholder") && (-[MTSwitchCell imageProvider](self, "imageProvider"), v4 = objc_claimAutoreleasedReturnValue(), [v4 legacyUICachedArtworkForPodcastUuid:artworkKey withSize:{48.0, 48.0}], v5 = objc_claimAutoreleasedReturnValue(), v4, v5))
  {
    imageView = [(MTSwitchCell *)self imageView];
    [imageView setImage:v5];

    [(MTSwitchCell *)self setNeedsLayout];
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isPlaceholder
{
  artworkKey = [(MTSwitchCell *)self artworkKey];
  v3 = [artworkKey isEqualToString:kMTLibraryDefaultImageKey];

  return v3;
}

- (void)toggleChanged:(id)changed
{
  toggleChanged = self->_toggleChanged;
  if (toggleChanged)
  {
    isOn = [changed isOn];
    v5 = toggleChanged[2];

    v5(toggleChanged, isOn);
  }
}

- (id)imageProvider
{
  imageProvider = self->_imageProvider;
  if (!imageProvider)
  {
    v4 = +[PUIObjCArtworkProvider uiShared];
    v5 = self->_imageProvider;
    self->_imageProvider = v4;

    imageProvider = self->_imageProvider;
  }

  v6 = imageProvider;

  return v6;
}

@end