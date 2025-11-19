@interface CollectionImageView
- (CollectionImageView)initWithFrame:(CGRect)a3 makeCornersRounded:(BOOL)a4;
- (CollectionImageViewDelegate)delegate;
- (void)_addVibrancyIfNeeded;
- (void)_createViews;
- (void)_enableShadow:(BOOL)a3 imageView:(id)a4;
- (void)_updateGlyph;
- (void)_updateImages;
- (void)didMoveToWindow;
- (void)imageAction:(id)a3;
- (void)layoutSubviews;
- (void)setCollectionInfo:(id)a3;
- (void)setEditing:(BOOL)a3;
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
  v3 = [(CollectionImageView *)self window];

  if (v3)
  {
    v4 = [(CollectionImageView *)self superview];
    if (v4)
    {
      while (1)
      {
        v7 = v4;
        if ([v4 conformsToProtocol:&OBJC_PROTOCOL___MKVibrantGroup])
        {
          break;
        }

        v5 = [v7 superview];

        v4 = v5;
        if (!v5)
        {
          return;
        }
      }

      v6 = [v7 vibrancyGroupName];
      [(UIVisualEffectView *)self->_visualEffectView _setGroupName:v6];
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

      v9 = [(UIVisualEffectView *)self->_visualEffectView contentView];
      [(UIVisualEffectView *)v9 addSubview:self->_mainImageView];
      v8 = v9;
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
    v3 = [(CollectionImageView *)self theme];
    v4 = [v3 keyColor];
    [(UIImageView *)self->_glyphImageView setTintColor:v4];

LABEL_5:
    v5 = [(CollectionHandlerInfo *)self->_collectionInfo glyphImage];
LABEL_6:
    v6 = v5;
    [(UIImageView *)self->_glyphImageView setImage:v5];

    goto LABEL_7;
  }

  if ([(CollectionHandlerInfo *)self->_collectionInfo handlerType]== 2)
  {
    [(CollectionImageView *)self _enableShadow:0 imageView:self->_glyphImageView];
    v3 = +[UIColor systemGrayColor];
    [(UIImageView *)self->_glyphImageView setTintColor:v3];
    goto LABEL_5;
  }

  if ([(CollectionHandlerInfo *)self->_collectionInfo isFavoriteCollection])
  {
    [(CollectionImageView *)self _enableShadow:0 imageView:self->_glyphImageView];
    v11 = [(CollectionImageView *)self theme];
    v12 = [v11 favoriteCollectionIconBackgroundColor];
    [(UIImageView *)self->_glyphImageView setBackgroundColor:v12];

    v13 = [(CollectionImageView *)self theme];
    v14 = [v13 favoriteCollectionIconColor];
    [(UIImageView *)self->_glyphImageView setTintColor:v14];

    v15 = [(CollectionHandlerInfo *)self->_collectionInfo glyphImage];
    [(UIImageView *)self->_glyphImageView setImage:v15];

    [(UIImageView *)self->_glyphImageView _setContinuousCornerRadius:8.0];
  }

  else
  {
    if (self->_editing)
    {
      v16 = [(UIImageView *)self->_mainImageView image];
      v17 = v16 != 0;

      [(CollectionImageView *)self _enableShadow:v17 imageView:self->_glyphImageView];
      v5 = [UIImage systemImageNamed:@"camera.fill"];
      goto LABEL_6;
    }

    [(UIImageView *)self->_glyphImageView setImage:0];
    [(UIImageView *)self->_glyphImageView setHidden:1];
  }

LABEL_7:
  v7 = [(UIImageView *)self->_glyphImageView image];
  v8 = [v7 isSymbolImage];

  glyphImageView = self->_glyphImageView;
  if (v8)
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
    v3 = [(CollectionHandlerInfo *)self->_collectionInfo image];
    [(UIImageView *)self->_mainImageView setImage:v3];

    v4 = [(CollectionImageView *)self theme];
    v5 = [v4 imageBackgroundColor];
    [(UIImageView *)self->_mainImageView setTintColor:v5];

    [(CollectionImageView *)self _addVibrancyIfNeeded];
  }

  [(CollectionImageView *)self _updateGlyph];
}

- (void)_enableShadow:(BOOL)a3 imageView:(id)a4
{
  v4 = a3;
  v5 = a4;
  if (v4)
  {
    v6 = +[UIColor whiteColor];
    [v5 setTintColor:v6];

    v7 = [v5 layer];
    [v7 setShadowOffset:{0.0, 0.0}];

    v8 = [UIColor colorWithWhite:0.2 alpha:1.0];
    v9 = [v8 CGColor];
    v10 = [v5 layer];
    [v10 setShadowColor:v9];

    v11 = [v5 layer];
    LODWORD(v12) = 1050253722;
    [v11 setShadowOpacity:v12];

    v14 = [v5 layer];

    [v14 setShadowRadius:3.0];
  }

  else
  {
    v13 = [UIColor colorWithWhite:0.620000005 alpha:1.0];
    [v5 setTintColor:v13];

    v14 = [v5 layer];

    [v14 setShadowOpacity:0.0];
  }
}

- (void)setCollectionInfo:(id)a3
{
  v5 = a3;
  collectionInfo = self->_collectionInfo;
  if (collectionInfo != v5)
  {
    v7 = v5;
    [(CollectionHandlerInfo *)collectionInfo removeObserver:self];
    objc_storeStrong(&self->_collectionInfo, a3);
    [(CollectionHandlerInfo *)self->_collectionInfo addObserver:self];
    [(CollectionImageView *)self _updateImages];
    v5 = v7;
  }
}

- (void)setEditing:(BOOL)a3
{
  if (self->_editing != a3)
  {
    self->_editing = a3;
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

- (void)imageAction:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained collectionImageViewButtonSelected:self];
}

- (CollectionImageView)initWithFrame:(CGRect)a3 makeCornersRounded:(BOOL)a4
{
  v8.receiver = self;
  v8.super_class = CollectionImageView;
  v5 = [(CollectionImageView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    [(CollectionImageView *)v5 setAccessibilityIgnoresInvertColors:1];
    v6->_makeCornersRoundedForMainView = a4;
    [(CollectionImageView *)v6 _createViews];
  }

  return v6;
}

@end