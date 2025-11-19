@interface MKArtworkImageView
- (MKArtworkImageView)initWithFrame:(CGRect)a3;
- (UIImageView)badgeView;
- (void)_updateImageView;
- (void)setImageSource:(id)a3;
- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4;
@end

@implementation MKArtworkImageView

- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4
{
  v5 = [a4 userInterfaceStyle];
  v6 = [(MKArtworkImageView *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (v5 != v7)
  {

    [(MKArtworkImageView *)self _updateImageView];
  }
}

- (UIImageView)badgeView
{
  v3 = [(UIImageView *)self->_cachedBadgeView superview];
  if (v3)
  {
    cachedBadgeView = self->_cachedBadgeView;
  }

  else
  {
    cachedBadgeView = 0;
  }

  v5 = cachedBadgeView;

  return cachedBadgeView;
}

- (void)_updateImageView
{
  v3 = [(MKArtworkImageView *)self window];
  v4 = [v3 screen];
  v5 = v4;
  if (v4)
  {
    [v4 scale];
    v7 = v6;
  }

  else
  {
    v8 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v8 scale];
    v7 = v9;
  }

  v10 = [(UIView *)self _mapkit_isDarkModeEnabled];
  v11 = [(MKArtworkImageSource *)self->_imageSource imageToDisplayWithScreenScale:v10 nightMode:v7];
  v24.receiver = self;
  v24.super_class = MKArtworkImageView;
  [(MKArtworkImageView *)&v24 setImage:v11];
  v12 = [(MKArtworkImageSource *)self->_imageSource badgeImageToDisplayWithScreenScale:v10 nightMode:v7];
  cachedBadgeView = self->_cachedBadgeView;
  if (v12)
  {
    if (!cachedBadgeView)
    {
      v14 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v15 = [v14 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      v16 = self->_cachedBadgeView;
      self->_cachedBadgeView = v15;

      [(UIImageView *)self->_cachedBadgeView setTranslatesAutoresizingMaskIntoConstraints:0];
      cachedBadgeView = self->_cachedBadgeView;
    }

    [(MKArtworkImageView *)self addSubview:cachedBadgeView];
    [(UIImageView *)self->_cachedBadgeView setImage:v12];
    [(MKArtworkImageView *)self setClipsToBounds:0];
    v17 = [MEMORY[0x1E695DF70] array];
    v18 = [(UIImageView *)self->_cachedBadgeView bottomAnchor];
    v19 = [(MKArtworkImageView *)self bottomAnchor];
    v20 = [v18 constraintEqualToAnchor:v19 constant:2.0];
    [v17 addObject:v20];

    v21 = [(UIImageView *)self->_cachedBadgeView trailingAnchor];
    v22 = [(MKArtworkImageView *)self trailingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:6.0];
    [v17 addObject:v23];

    [MEMORY[0x1E696ACD8] activateConstraints:v17];
  }

  else
  {
    [(UIImageView *)self->_cachedBadgeView setImage:0];
    [(UIImageView *)self->_cachedBadgeView removeFromSuperview];
  }
}

- (void)setImageSource:(id)a3
{
  v5 = a3;
  if (self->_imageSource != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_imageSource, a3);
    [(MKArtworkImageView *)self _updateImageView];
    v5 = v6;
  }
}

- (MKArtworkImageView)initWithFrame:(CGRect)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = MKArtworkImageView;
  v3 = [(MKArtworkImageView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] labelColor];
    [(MKArtworkImageView *)v3 setTintColor:v4];

    v9[0] = objc_opt_class();
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    v6 = [(MKArtworkImageView *)v3 registerForTraitChanges:v5 withAction:sel_traitEnvironment_didChangeTraitCollection_];
  }

  return v3;
}

@end