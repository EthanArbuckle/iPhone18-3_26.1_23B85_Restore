@interface MTSwitchCell
- (BOOL)_loadArtworkFromMemoryCache;
- (BOOL)isPlaceholder;
- (id)imageProvider;
- (void)_asyncFetchArtworkDidLoadImage:(id)a3 forArtworkKey:(id)a4;
- (void)_clearAndHideArtworkView;
- (void)_fetchArtwork;
- (void)_fetchArtworkInBackground;
- (void)_layoutContentViewSubviews;
- (void)_updateSeparatorInsets;
- (void)layoutSubviews;
- (void)setArtworkKey:(id)a3;
- (void)setCellEmphasis:(int64_t)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setMaximumNumberOfTextLines:(unint64_t)a3;
- (void)setupCell;
- (void)toggleChanged:(id)a3;
- (void)toggleOn:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation MTSwitchCell

- (void)toggleOn:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [(MTSwitchCell *)self toggle];
  [v6 setOn:v5 animated:v4];
}

- (void)setArtworkKey:(id)a3
{
  v5 = a3;
  if (([(NSString *)self->_artworkKey isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_artworkKey, a3);
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

- (void)setMaximumNumberOfTextLines:(unint64_t)a3
{
  if (a3 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a3;
  }

  if (self->_maximumNumberOfTextLines != v3)
  {
    self->_maximumNumberOfTextLines = v3;
    v5 = [(MTSwitchCell *)self textLabel];
    [v5 setNumberOfLines:self->_maximumNumberOfTextLines];

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

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = MTSwitchCell;
  [(MTTableViewCell *)&v6 setEnabled:?];
  v5 = [(MTSwitchCell *)self toggle];
  [v5 setEnabled:v3];
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
  v4 = [(MTSwitchCell *)self textLabel];
  v5 = +[UIColor cellTextColor];
  [v4 setTextColor:v5];

  v6 = [(MTSwitchCell *)self textLabel];
  v7 = [objc_opt_class() titleFont];
  [v6 setFont:v7];
}

- (void)setCellEmphasis:(int64_t)a3
{
  if ([(MTTableViewCell *)self cellEmphasis]!= a3)
  {
    v6.receiver = self;
    v6.super_class = MTSwitchCell;
    [(MTTableViewCell *)&v6 setCellEmphasis:a3];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10007A954;
    v5[3] = &unk_1004D9720;
    v5[4] = self;
    v5[5] = a3;
    [UIView performWithoutAnimation:v5];
  }
}

- (void)_updateSeparatorInsets
{
  if ([(MTSwitchCell *)self customiseLabelAndSeparatorInsets])
  {
    v3 = [(MTSwitchCell *)self mt_isRTL];
    v4 = [(MTSwitchCell *)self contentView];
    [v4 layoutMargins];
    v6 = v5;
    v8 = v7;

    if (v3)
    {
      v6 = v8;
    }

    v9 = [(MTSwitchCell *)self _showsArtwork];
    v10 = 64.0;
    if (!v9)
    {
      v10 = 0.0;
    }

    [(MTSwitchCell *)self setSeparatorInset:0.0, v6 + v10, 0.0, 0.0];
  }
}

- (void)_layoutContentViewSubviews
{
  v3 = [(MTSwitchCell *)self effectiveUserInterfaceLayoutDirection];
  v32 = [(MTSwitchCell *)self contentView];
  [v32 bounds];
  [v32 layoutMargins];
  [v32 layoutMargins];
  UIRectInset();
  UIRectInset();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(MTSwitchCell *)self artworkKey];
  v13 = [v12 length];

  if (v13)
  {
    v34.origin.x = v5;
    v34.origin.y = v7;
    v34.size.width = v9;
    v34.size.height = v11;
    Height = CGRectGetHeight(v34);
    v15 = sub_100146EDC(v3 == 1, 1, 1, 0.0, (Height + -48.0) * 0.5, 48.0, 48.0, v5, v7, v9, v11);
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [(MTSwitchCell *)self imageView];
    [v22 setFrame:{v15, v17, v19, v21}];

    v23 = [(MTSwitchCell *)self imageView];
    v24 = [v23 superview];

    if (!v24)
    {
      v25 = [(MTSwitchCell *)self imageView];
      [v32 addSubview:v25];

      v26 = [(MTSwitchCell *)self imageView];
      [v26 setClipsToBounds:1];
    }

    UIRectInset();
    v5 = v27;
    v7 = v28;
    v9 = v29;
    v11 = v30;
  }

  if ([(MTSwitchCell *)self customiseLabelAndSeparatorInsets])
  {
    v31 = [(MTSwitchCell *)self textLabel];
    [v31 setFrame:{v5, v7, v9, v11}];
  }
}

- (void)_clearAndHideArtworkView
{
  v2 = [(MTSwitchCell *)self _artworkView];
  [v2 setImage:0];
  [v2 setHidden:1];
}

- (void)_fetchArtwork
{
  v3 = [(MTSwitchCell *)self artworkKey];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(MTSwitchCell *)self _artworkView];
    [v5 mt_configureForDisplayingArtworkWithRadius:3.0];
    [v5 setHidden:0];
    if (![(MTSwitchCell *)self _loadArtworkFromMemoryCache])
    {
      [v5 setImage:0];
      [(MTSwitchCell *)self _fetchArtworkInBackground];
    }
  }
}

- (void)_fetchArtworkInBackground
{
  v3 = [(MTSwitchCell *)self artworkKey];
  objc_initWeak(&location, self);
  v4 = +[UIImage defaultPodcastArtwork];
  [(MTSwitchCell *)self _asyncFetchArtworkDidLoadImage:v4 forArtworkKey:v3];

  if ([(MTSwitchCell *)self isPlaceholder])
  {
    v5 = [(MTSwitchCell *)self imageProvider];
    v6 = v8;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10007B0F4;
    v8[3] = &unk_1004D9748;
    v7 = &v9;
    objc_copyWeak(&v9, &location);
    v8[4] = v3;
    [v5 placeholderWithSize:v8 completionHandler:{48.0, 48.0}];
  }

  else
  {
    v5 = [(MTSwitchCell *)self imageProvider];
    v6 = v10;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10007B050;
    v10[3] = &unk_1004D9748;
    v7 = &v12;
    objc_copyWeak(&v12, &location);
    v11 = v3;
    [v5 artworkForShow:v11 size:v10 completionHandler:{48.0, 48.0}];
  }

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

- (void)_asyncFetchArtworkDidLoadImage:(id)a3 forArtworkKey:(id)a4
{
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007B264;
  v9[3] = &unk_1004D94C8;
  v9[4] = self;
  v10 = a4;
  v11 = v6;
  v7 = v6;
  v8 = v10;
  [NSThread mainThread:v9];
}

- (BOOL)_loadArtworkFromMemoryCache
{
  v3 = [(MTSwitchCell *)self artworkKey];
  if (v3 && !-[MTSwitchCell isPlaceholder](self, "isPlaceholder") && (-[MTSwitchCell imageProvider](self, "imageProvider"), v4 = objc_claimAutoreleasedReturnValue(), [v4 legacyUICachedArtworkForPodcastUuid:v3 withSize:{48.0, 48.0}], v5 = objc_claimAutoreleasedReturnValue(), v4, v5))
  {
    v6 = [(MTSwitchCell *)self imageView];
    [v6 setImage:v5];

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
  v2 = [(MTSwitchCell *)self artworkKey];
  v3 = [v2 isEqualToString:kMTLibraryDefaultImageKey];

  return v3;
}

- (void)toggleChanged:(id)a3
{
  toggleChanged = self->_toggleChanged;
  if (toggleChanged)
  {
    v4 = [a3 isOn];
    v5 = toggleChanged[2];

    v5(toggleChanged, v4);
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