@interface MKArtworkImageView
- (MKArtworkImageView)initWithFrame:(CGRect)frame;
- (UIImageView)badgeView;
- (void)_updateImageView;
- (void)setImageSource:(id)source;
- (void)traitEnvironment:(id)environment didChangeTraitCollection:(id)collection;
@end

@implementation MKArtworkImageView

- (void)traitEnvironment:(id)environment didChangeTraitCollection:(id)collection
{
  userInterfaceStyle = [collection userInterfaceStyle];
  traitCollection = [(MKArtworkImageView *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {

    [(MKArtworkImageView *)self _updateImageView];
  }
}

- (UIImageView)badgeView
{
  superview = [(UIImageView *)self->_cachedBadgeView superview];
  if (superview)
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
  window = [(MKArtworkImageView *)self window];
  screen = [window screen];
  v5 = screen;
  if (screen)
  {
    [screen scale];
    v7 = v6;
  }

  else
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v7 = v9;
  }

  _mapkit_isDarkModeEnabled = [(UIView *)self _mapkit_isDarkModeEnabled];
  v11 = [(MKArtworkImageSource *)self->_imageSource imageToDisplayWithScreenScale:_mapkit_isDarkModeEnabled nightMode:v7];
  v24.receiver = self;
  v24.super_class = MKArtworkImageView;
  [(MKArtworkImageView *)&v24 setImage:v11];
  v12 = [(MKArtworkImageSource *)self->_imageSource badgeImageToDisplayWithScreenScale:_mapkit_isDarkModeEnabled nightMode:v7];
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
    array = [MEMORY[0x1E695DF70] array];
    bottomAnchor = [(UIImageView *)self->_cachedBadgeView bottomAnchor];
    bottomAnchor2 = [(MKArtworkImageView *)self bottomAnchor];
    v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:2.0];
    [array addObject:v20];

    trailingAnchor = [(UIImageView *)self->_cachedBadgeView trailingAnchor];
    trailingAnchor2 = [(MKArtworkImageView *)self trailingAnchor];
    v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:6.0];
    [array addObject:v23];

    [MEMORY[0x1E696ACD8] activateConstraints:array];
  }

  else
  {
    [(UIImageView *)self->_cachedBadgeView setImage:0];
    [(UIImageView *)self->_cachedBadgeView removeFromSuperview];
  }
}

- (void)setImageSource:(id)source
{
  sourceCopy = source;
  if (self->_imageSource != sourceCopy)
  {
    v6 = sourceCopy;
    objc_storeStrong(&self->_imageSource, source);
    [(MKArtworkImageView *)self _updateImageView];
    sourceCopy = v6;
  }
}

- (MKArtworkImageView)initWithFrame:(CGRect)frame
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = MKArtworkImageView;
  v3 = [(MKArtworkImageView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(MKArtworkImageView *)v3 setTintColor:labelColor];

    v9[0] = objc_opt_class();
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    v6 = [(MKArtworkImageView *)v3 registerForTraitChanges:v5 withAction:sel_traitEnvironment_didChangeTraitCollection_];
  }

  return v3;
}

@end