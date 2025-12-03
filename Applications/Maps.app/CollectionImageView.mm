@interface CollectionImageView
- (CollectionImageView)initWithFrame:(CGRect)frame makeCornersRounded:(BOOL)rounded;
- (CollectionImageViewDelegate)delegate;
- (void)_addVibrancyIfNeeded;
- (void)_createViews;
- (void)_enableShadow:(BOOL)shadow imageView:(id)view;
- (void)_updateGlyph;
- (void)_updateImages;
- (void)didMoveToWindow;
- (void)imageAction:(id)action;
- (void)layoutSubviews;
- (void)setCollectionInfo:(id)info;
- (void)setEditing:(BOOL)editing;
@end

@implementation CollectionImageView

- (CollectionImageViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = CollectionImageView;
  [(CollectionImageView *)&v13 layoutSubviews];
  [(CollectionImageView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIButton *)self->_editButton setFrame:?];
  [(UIImageView *)self->_mainImageView setFrame:v4, v6, v8, v10];
  [(UIVisualEffectView *)self->_visualEffectView setFrame:v4, v6, v8, v10];
  v14.origin.x = v4;
  v14.origin.y = v6;
  v14.size.width = v8;
  v14.size.height = v10;
  v11 = CGRectGetWidth(v14) * 0.361111111;
  [(UIImageView *)self->_glyphImageView setFrame:v4, v6, v8, v10];
  v12 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:2 scale:v11];
  [(UIImageView *)self->_glyphImageView setPreferredSymbolConfiguration:v12];
}

- (void)_createViews
{
  [(CollectionImageView *)self setAccessibilityIdentifier:@"CollectionImageView"];
  v3 = [UIImageView alloc];
  [(CollectionImageView *)self bounds];
  obj = [v3 initWithFrame:?];
  [obj setClipsToBounds:1];
  [obj setContentMode:2];
  objc_storeStrong(&self->_mainImageView, obj);
  [(UIImageView *)self->_mainImageView setAccessibilityIdentifier:@"CollectionImageViewMainImage"];
  if (sub_10000FA08(self) == 5)
  {
    [(CollectionImageView *)self addSubview:self->_mainImageView];
  }

  if (self->_makeCornersRoundedForMainView)
  {
    [(UIImageView *)self->_mainImageView _setContinuousCornerRadius:8.0];
  }

  v4 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(UIImageView *)v4 setAccessibilityIdentifier:@"CollectionImageViewGlyphImage"];
  [(CollectionImageView *)self addSubview:v4];
  glyphImageView = self->_glyphImageView;
  self->_glyphImageView = v4;
  v6 = v4;

  v7 = [UIButton buttonWithType:0];
  [(UIButton *)v7 setAccessibilityIdentifier:@"CollectionImageViewButton"];
  [(CollectionImageView *)self addSubview:v7];
  [(UIButton *)v7 addTarget:self action:"imageAction:" forControlEvents:64];
  editButton = self->_editButton;
  self->_editButton = v7;
  v9 = v7;

  [(UIButton *)self->_editButton setEnabled:0];
}

- (void)didMoveToWindow
{
  window = [(CollectionImageView *)self window];

  if (window)
  {
    superview = [(CollectionImageView *)self superview];
    if (superview)
    {
      while (1)
      {
        v7 = superview;
        if ([superview conformsToProtocol:&OBJC_PROTOCOL___MKVibrantGroup])
        {
          break;
        }

        superview2 = [v7 superview];

        superview = superview2;
        if (!superview2)
        {
          return;
        }
      }

      vibrancyGroupName = [v7 vibrancyGroupName];
      [(UIVisualEffectView *)self->_visualEffectView _setGroupName:vibrancyGroupName];
    }
  }
}

- (void)_addVibrancyIfNeeded
{
  if (sub_10000FA08(self) != 5)
  {
    if ([(CollectionHandlerInfo *)self->_collectionInfo hasDefaultImage])
    {
      if (!self->_visualEffectView)
      {
        v3 = [UIBlurEffect effectWithStyle:1100];
        v4 = [UIVibrancyEffect effectForBlurEffect:v3 style:6];
        v5 = [[UIVisualEffectView alloc] initWithEffect:v4];
        visualEffectView = self->_visualEffectView;
        self->_visualEffectView = v5;

        [(CollectionImageView *)self addSubview:self->_visualEffectView];
        [(CollectionImageView *)self sendSubviewToBack:self->_visualEffectView];
      }

      v7 = +[UIColor whiteColor];
      [(UIImageView *)self->_mainImageView setTintColor:v7];

      contentView = [(UIVisualEffectView *)self->_visualEffectView contentView];
      [(UIVisualEffectView *)contentView addSubview:self->_mainImageView];
      v8 = contentView;
    }

    else
    {
      [(CollectionImageView *)self addSubview:self->_mainImageView];
      [(CollectionImageView *)self sendSubviewToBack:self->_mainImageView];
      v8 = self->_visualEffectView;
      self->_visualEffectView = 0;
    }
  }
}

- (void)_updateGlyph
{
  [(UIImageView *)self->_glyphImageView setTintColor:0];
  [(UIImageView *)self->_glyphImageView setBackgroundColor:0];
  [(UIImageView *)self->_glyphImageView _setContinuousCornerRadius:0.0];
  [(UIImageView *)self->_glyphImageView setHidden:0];
  if ([(CollectionHandlerInfo *)self->_collectionInfo handlerType]== 1)
  {
    [(CollectionImageView *)self _enableShadow:0 imageView:self->_glyphImageView];
    theme = [(CollectionImageView *)self theme];
    keyColor = [theme keyColor];
    [(UIImageView *)self->_glyphImageView setTintColor:keyColor];

LABEL_5:
    glyphImage = [(CollectionHandlerInfo *)self->_collectionInfo glyphImage];
LABEL_6:
    v6 = glyphImage;
    [(UIImageView *)self->_glyphImageView setImage:glyphImage];

    goto LABEL_7;
  }

  if ([(CollectionHandlerInfo *)self->_collectionInfo handlerType]== 2)
  {
    [(CollectionImageView *)self _enableShadow:0 imageView:self->_glyphImageView];
    theme = +[UIColor systemGrayColor];
    [(UIImageView *)self->_glyphImageView setTintColor:theme];
    goto LABEL_5;
  }

  if ([(CollectionHandlerInfo *)self->_collectionInfo isFavoriteCollection])
  {
    [(CollectionImageView *)self _enableShadow:0 imageView:self->_glyphImageView];
    theme2 = [(CollectionImageView *)self theme];
    favoriteCollectionIconBackgroundColor = [theme2 favoriteCollectionIconBackgroundColor];
    [(UIImageView *)self->_glyphImageView setBackgroundColor:favoriteCollectionIconBackgroundColor];

    theme3 = [(CollectionImageView *)self theme];
    favoriteCollectionIconColor = [theme3 favoriteCollectionIconColor];
    [(UIImageView *)self->_glyphImageView setTintColor:favoriteCollectionIconColor];

    glyphImage2 = [(CollectionHandlerInfo *)self->_collectionInfo glyphImage];
    [(UIImageView *)self->_glyphImageView setImage:glyphImage2];

    [(UIImageView *)self->_glyphImageView _setContinuousCornerRadius:8.0];
  }

  else
  {
    if (self->_editing)
    {
      image = [(UIImageView *)self->_mainImageView image];
      v17 = image != 0;

      [(CollectionImageView *)self _enableShadow:v17 imageView:self->_glyphImageView];
      glyphImage = [UIImage systemImageNamed:@"camera.fill"];
      goto LABEL_6;
    }

    [(UIImageView *)self->_glyphImageView setImage:0];
    [(UIImageView *)self->_glyphImageView setHidden:1];
  }

LABEL_7:
  image2 = [(UIImageView *)self->_glyphImageView image];
  isSymbolImage = [image2 isSymbolImage];

  glyphImageView = self->_glyphImageView;
  if (isSymbolImage)
  {
    v10 = 4;
  }

  else
  {
    v10 = 1;
  }

  [(UIImageView *)glyphImageView setContentMode:v10];
}

- (void)_updateImages
{
  if ([(CollectionHandlerInfo *)self->_collectionInfo isFavoriteCollection])
  {
    [(UIImageView *)self->_mainImageView setImage:0];
  }

  else
  {
    image = [(CollectionHandlerInfo *)self->_collectionInfo image];
    [(UIImageView *)self->_mainImageView setImage:image];

    theme = [(CollectionImageView *)self theme];
    imageBackgroundColor = [theme imageBackgroundColor];
    [(UIImageView *)self->_mainImageView setTintColor:imageBackgroundColor];

    [(CollectionImageView *)self _addVibrancyIfNeeded];
  }

  [(CollectionImageView *)self _updateGlyph];
}

- (void)_enableShadow:(BOOL)shadow imageView:(id)view
{
  shadowCopy = shadow;
  viewCopy = view;
  if (shadowCopy)
  {
    v6 = +[UIColor whiteColor];
    [viewCopy setTintColor:v6];

    layer = [viewCopy layer];
    [layer setShadowOffset:{0.0, 0.0}];

    v8 = [UIColor colorWithWhite:0.2 alpha:1.0];
    cGColor = [v8 CGColor];
    layer2 = [viewCopy layer];
    [layer2 setShadowColor:cGColor];

    layer3 = [viewCopy layer];
    LODWORD(v12) = 1050253722;
    [layer3 setShadowOpacity:v12];

    layer4 = [viewCopy layer];

    [layer4 setShadowRadius:3.0];
  }

  else
  {
    v13 = [UIColor colorWithWhite:0.620000005 alpha:1.0];
    [viewCopy setTintColor:v13];

    layer4 = [viewCopy layer];

    [layer4 setShadowOpacity:0.0];
  }
}

- (void)setCollectionInfo:(id)info
{
  infoCopy = info;
  collectionInfo = self->_collectionInfo;
  if (collectionInfo != infoCopy)
  {
    v7 = infoCopy;
    [(CollectionHandlerInfo *)collectionInfo removeObserver:self];
    objc_storeStrong(&self->_collectionInfo, info);
    [(CollectionHandlerInfo *)self->_collectionInfo addObserver:self];
    [(CollectionImageView *)self _updateImages];
    infoCopy = v7;
  }
}

- (void)setEditing:(BOOL)editing
{
  if (self->_editing != editing)
  {
    self->_editing = editing;
    if ([(CollectionHandlerInfo *)self->_collectionInfo canEditImage])
    {
      editing = self->_editing;
    }

    else
    {
      editing = 0;
    }

    [(UIButton *)self->_editButton setEnabled:editing];

    [(CollectionImageView *)self _updateGlyph];
  }
}

- (void)imageAction:(id)action
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained collectionImageViewButtonSelected:self];
}

- (CollectionImageView)initWithFrame:(CGRect)frame makeCornersRounded:(BOOL)rounded
{
  v8.receiver = self;
  v8.super_class = CollectionImageView;
  v5 = [(CollectionImageView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    [(CollectionImageView *)v5 setAccessibilityIgnoresInvertColors:1];
    v6->_makeCornersRoundedForMainView = rounded;
    [(CollectionImageView *)v6 _createViews];
  }

  return v6;
}

@end