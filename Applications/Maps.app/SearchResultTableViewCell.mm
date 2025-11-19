@interface SearchResultTableViewCell
+ (CGSize)photoSize;
- (CGSize)_imageSize;
- (SearchResultTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (double)horizontalSpacing;
- (double)leadingMargin;
- (double)trailingMargin;
- (int64_t)containerAlignment;
- (void)_updateSpacings;
- (void)cancelLoadingPhoto;
- (void)didUpdateMapItem;
- (void)didUpdatePublisherResult;
- (void)didUpdateRelatedSection;
- (void)getDefaultImage:(id)a3;
- (void)loadPhoto;
- (void)prepareForActionMenuPresentation;
- (void)prepareForReuse;
- (void)setDefaultImage;
- (void)setDisplaysAsChainResult:(BOOL)a3;
- (void)setMapsImage:(id)a3;
- (void)updateImageViewAlignmentAndSpacingIfNeeded;
- (void)updateTheme;
@end

@implementation SearchResultTableViewCell

- (void)prepareForActionMenuPresentation
{
  v4.receiver = self;
  v4.super_class = SearchResultTableViewCell;
  [(_SearchResultTableViewCell *)&v4 prepareForActionMenuPresentation];
  [(UIImageView *)self->_imageView _setContinuousCornerRadius:8.0];
  v3 = [(UIImageView *)self->_imageView layer];
  [v3 setMasksToBounds:1];
}

- (CGSize)_imageSize
{
  v3 = sub_10000FA08(self);
  v4 = 24.0;
  if (v3 != 5)
  {
    v5 = [(_SearchResultTableViewCell *)self displaysAsChainResult];
    v4 = 64.0;
    if (v5)
    {
      v4 = 50.0;
    }
  }

  v6 = v4;
  result.height = v6;
  result.width = v4;
  return result;
}

- (void)cancelLoadingPhoto
{
  if (self->_currentLoadingURL)
  {
    v3 = +[MKAppImageManager sharedImageManager];
    [v3 cancelLoadAppImageAtURL:self->_currentLoadingURL];

    currentLoadingURL = self->_currentLoadingURL;
    self->_currentLoadingURL = 0;

    imageView = self->_imageView;

    [(UIImageView *)imageView setImage:0];
  }
}

- (void)getDefaultImage:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(_SearchResultTableViewCell *)self searchCategory];
    if (v5 && (v6 = v5, +[BrowseManager sharedManager](BrowseManager, "sharedManager"), v7 = objc_claimAutoreleasedReturnValue(), -[_SearchResultTableViewCell searchCategory](self, "searchCategory"), v8 = objc_claimAutoreleasedReturnValue(), [v7 cellImageForCategory:v8], v9 = objc_claimAutoreleasedReturnValue(), v8, v7, v6, v9))
    {
      v4[2](v4, v9);
    }

    else
    {
      imageState = self->_imageState;
      v9 = objc_opt_new();
      [v9 setSize:4];
      [v9 setTransparent:1];
      v11 = [(_SearchResultTableViewCell *)self mapItem];
      v12 = [v11 _styleAttributes];
      [v9 setStyle:v12];

      objc_initWeak(&location, self);
      v13 = +[MapsUIImageCache sharedCache];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100BBB680;
      v14[3] = &unk_10164C858;
      objc_copyWeak(&v16, &location);
      v17 = imageState;
      v15 = v4;
      [v13 getImageForSpec:v9 completion:v14];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }
  }
}

- (void)setDefaultImage
{
  [(UIImageView *)self->_imageView setContentMode:1];
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100BBB7FC;
  v3[3] = &unk_101650EA8;
  objc_copyWeak(&v4, &location);
  [(SearchResultTableViewCell *)self getDefaultImage:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)setMapsImage:(id)a3
{
  imageView = self->_imageView;
  v5 = a3;
  [(UIImageView *)imageView setContentMode:2];
  [(UIImageView *)self->_imageView setImage:v5];
}

- (void)loadPhoto
{
  [(UIImageView *)self->_imageView setHidden:0];
  imageState = self->_imageState;
  if (sub_10000FA08(self) == 5)
  {
    objc_initWeak(&location, self);
    v4 = +[MapsUIImageCache sharedCache];
    v5 = [(_SearchResultTableViewCell *)self mapItem];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100BBBB60;
    v18[3] = &unk_10164C808;
    objc_copyWeak(&v19, &location);
    v20 = imageState;
    [v4 getImageForMapItem:v5 completion:v18];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
    v6 = [(_SearchResultTableViewCell *)self mapItem];
    v7 = [v6 _geoMapItem];
    v8 = [v7 _photos];
    [objc_opt_class() photoSize];
    v9 = [v8 _geo_firstPhotoOfAtLeastSize:?];

    v10 = [v9 url];
    v11 = [v10 copy];
    currentLoadingURL = self->_currentLoadingURL;
    self->_currentLoadingURL = v11;

    if (v9)
    {
      objc_initWeak(&location, self);
      v13 = +[MKAppImageManager sharedImageManager];
      v14 = [v9 url];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100BBBBEC;
      v15[3] = &unk_10164C830;
      objc_copyWeak(&v16, &location);
      v17 = imageState;
      [v13 loadAppImageAtURL:v14 completionHandler:v15];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }

    else
    {
      [(SearchResultTableViewCell *)self setDefaultImage];
    }
  }
}

- (void)didUpdateRelatedSection
{
  v5.receiver = self;
  v5.super_class = SearchResultTableViewCell;
  [(_SearchResultTableViewCell *)&v5 didUpdateRelatedSection];
  v3 = [(_SearchResultTableViewCell *)self relatedSection];

  if (v3)
  {
    v4 = [UIImage imageNamed:@"Fallback-Guide"];
    [(SearchResultTableViewCell *)self setMapsImage:v4];
  }
}

- (void)didUpdatePublisherResult
{
  v3.receiver = self;
  v3.super_class = SearchResultTableViewCell;
  [(_SearchResultTableViewCell *)&v3 didUpdatePublisherResult];
  [(SearchResultTableViewCell *)self loadPhoto];
}

- (void)didUpdateMapItem
{
  v3.receiver = self;
  v3.super_class = SearchResultTableViewCell;
  [(_SearchResultTableViewCell *)&v3 didUpdateMapItem];
  [(SearchResultTableViewCell *)self cancelLoadingPhoto];
  ++self->_imageState;
  [(UIImageView *)self->_imageView setImage:0];
  [(SearchResultTableViewCell *)self loadPhoto];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = SearchResultTableViewCell;
  [(_SearchResultTableViewCell *)&v3 prepareForReuse];
  [(_SearchResultTableViewCell *)self setDebugString:0];
}

- (void)updateTheme
{
  v9.receiver = self;
  v9.super_class = SearchResultTableViewCell;
  [(_SearchResultTableViewCell *)&v9 updateTheme];
  if (sub_10000FA08(self) != 5)
  {
    v3 = [(SearchResultTableViewCell *)self theme];
    v4 = [v3 imageBackgroundColor];
    [(UIImageView *)self->_imageView setBackgroundColor:v4];

    v5 = [(SearchResultTableViewCell *)self theme];
    v6 = [v5 imageBorderColor];
    v7 = [v6 CGColor];
    v8 = [(UIImageView *)self->_imageView layer];
    [v8 setBorderColor:v7];
  }
}

- (double)horizontalSpacing
{
  v3 = sub_10000FA08(self);
  result = 8.0;
  if (v3 != 5)
  {
    result = 5.0;
    if (self->super._accessibilityEnabled)
    {
      v5.receiver = self;
      v5.super_class = SearchResultTableViewCell;
      [(_SearchResultTableViewCell *)&v5 horizontalSpacing];
    }
  }

  return result;
}

- (double)trailingMargin
{
  result = 16.0;
  if (self->super._accessibilityEnabled)
  {
    v6 = v2;
    v7 = v3;
    v5.receiver = self;
    v5.super_class = SearchResultTableViewCell;
    [(_SearchResultTableViewCell *)&v5 trailingMargin];
  }

  return result;
}

- (double)leadingMargin
{
  v2 = sub_10000FA08(self);
  result = 16.0;
  if (v2 == 5)
  {
    return 0.0;
  }

  return result;
}

- (void)setDisplaysAsChainResult:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = SearchResultTableViewCell;
  [(_SearchResultTableViewCell *)&v8 setDisplaysAsChainResult:a3];
  [(SearchResultTableViewCell *)self _imageSize];
  v5 = v4;
  v7 = v6;
  [(UIImageView *)self->_imageView setMinimumLayoutSize:?];
  [(UIImageView *)self->_imageView setMaximumLayoutSize:v5, v7];
}

- (void)updateImageViewAlignmentAndSpacingIfNeeded
{
  if (sub_10000FA08(self) == 5)
  {
    if ([(_SearchResultTableViewCell *)self numberOfLines]== 1)
    {
      top = UIEdgeInsetsZero.top;
      left = UIEdgeInsetsZero.left;
      imageView = self->_imageView;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
    }

    else
    {
      imageView = self->_imageView;
      top = -3.0;
      left = 0.0;
      bottom = 0.0;
      right = 0.0;
    }

    [(UIImageView *)imageView setCustomAlignmentRectInsets:top, left, bottom, right];
  }
}

- (int64_t)containerAlignment
{
  if (sub_10000FA08(self) == 5 && [(_SearchResultTableViewCell *)self numberOfLines]== 1)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

- (void)_updateSpacings
{
  v7.receiver = self;
  v7.super_class = SearchResultTableViewCell;
  [(_SearchResultTableViewCell *)&v7 _updateSpacings];
  if (sub_10000FA08(self) != 5)
  {
    v3 = [(NUIContainerStackView *)self->super._labelStackView arrangedSubviews];
    if ([v3 containsObject:self->super._secondLabelStackView])
    {
      v4 = [v3 indexOfObject:self->super._secondLabelStackView];
      if (v4 < [v3 count] - 1)
      {
        labelStackView = self->super._labelStackView;
        [(NUIContainerStackView *)labelStackView spacing];
        [(NUIContainerStackView *)labelStackView setCustomSpacing:self->super._secondLabelStackView afterView:v6 + 1.0];
      }
    }
  }
}

- (SearchResultTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v21.receiver = self;
  v21.super_class = SearchResultTableViewCell;
  v4 = [(_SearchResultTableViewCell *)&v21 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(SearchResultTableViewCell *)v4 window];
    v7 = [v6 screen];
    v8 = v7;
    if (v7)
    {
      [v7 nativeScale];
      v10 = v9;
    }

    else
    {
      v11 = +[UIScreen mainScreen];
      [v11 nativeScale];
      v10 = v12;
    }

    v13 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    imageView = v5->_imageView;
    v5->_imageView = v13;

    [(UIImageView *)v5->_imageView setClipsToBounds:1];
    [(SearchResultTableViewCell *)v5 _imageSize];
    [(UIImageView *)v5->_imageView setMinimumLayoutSize:?];
    [(SearchResultTableViewCell *)v5 _imageSize];
    [(UIImageView *)v5->_imageView setMaximumLayoutSize:?];
    [(UIImageView *)v5->_imageView setAccessibilityIdentifier:@"ImageView"];
    if (sub_10000FA08(v5) == 5)
    {
      [(UIImageView *)v5->_imageView setCustomAlignmentRectInsets:-3.0, 0.0, 0.0, 0.0];
      [(NUIContainerStackView *)v5->super._containerStackView insertArrangedSubview:v5->_imageView atIndex:0];
    }

    else if (!v5->super._accessibilityEnabled)
    {
      [(UIImageView *)v5->_imageView _setContinuousCornerRadius:8.0];
      v15 = [(UIImageView *)v5->_imageView layer];
      [v15 setBorderWidth:1.0 / v10];

      v16 = +[UIColor tertiaryLabelColor];
      [(UIImageView *)v5->_imageView setTintColor:v16];

      [(UIImageView *)v5->_imageView setCustomAlignmentRectInsets:-1.0, 0.0, 0.0, 0.0];
      [(NUIContainerStackView *)v5->super._containerStackView addArrangedSubview:v5->_imageView];
      [(SearchResultTableViewCell *)v5 leadingMargin];
      v18 = v17;
      [(SearchResultTableViewCell *)v5 trailingMargin];
      [(NUIContainerStackView *)v5->super._containerStackView setLayoutMargins:15.0, v18, 0.0, v19];
    }
  }

  return v5;
}

+ (CGSize)photoSize
{
  if (qword_10195E990 != -1)
  {
    dispatch_once(&qword_10195E990, &stru_10164C878);
  }

  v2 = *&qword_10195E980;
  v3 = *&qword_10195E988;
  result.height = v3;
  result.width = v2;
  return result;
}

@end