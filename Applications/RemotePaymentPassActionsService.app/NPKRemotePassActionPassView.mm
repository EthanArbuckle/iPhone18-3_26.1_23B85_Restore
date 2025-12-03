@interface NPKRemotePassActionPassView
+ (CGSize)_passImageSize;
+ (CGSize)contactImageSize;
+ (void)_applyShadowToView:(id)view;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NPKRemotePassActionPassView)initWithPassImage:(id)image frame:(CGRect)frame;
- (void)_setUpContactImageView;
- (void)_setUpPassImageViewForImage:(id)image;
- (void)layoutSubviews;
- (void)setContactImage:(id)image;
- (void)shakeImage;
@end

@implementation NPKRemotePassActionPassView

- (NPKRemotePassActionPassView)initWithPassImage:(id)image frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  imageCopy = image;
  v18.receiver = self;
  v18.super_class = NPKRemotePassActionPassView;
  height = [(NPKRemotePassActionPassView *)&v18 initWithFrame:x, y, width, height];
  if (height)
  {
    v11 = objc_alloc_init(UIImageView);
    passImageView = height->_passImageView;
    height->_passImageView = v11;

    v13 = objc_alloc_init(UIImageView);
    contactImageView = height->_contactImageView;
    height->_contactImageView = v13;

    v15 = objc_alloc_init(UIView);
    contactBackgroundView = height->_contactBackgroundView;
    height->_contactBackgroundView = v15;

    [(NPKRemotePassActionPassView *)height _setUpPassImageViewForImage:imageCopy];
    [(NPKRemotePassActionPassView *)height _setUpContactImageView];
  }

  return height;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = NPKRemotePassActionPassView;
  [(NPKRemotePassActionPassView *)&v13 layoutSubviews];
  [(NPKRemotePassActionPassView *)self bounds];
  v4 = v3;
  [objc_opt_class() _passImageSize];
  [(UIImageView *)self->_passImageView setFrame:v4 * 0.5 - v5 * 0.5, 0.0, v5, v6];
  [objc_opt_class() contactImageSize];
  [(NPKRemotePassActionPassView *)self _shouldReverseLayoutDirection];
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  v10 = v9 + 4.0;
  [(UIView *)self->_contactBackgroundView setFrame:v7 + -2.0, v8 + -2.0, v9 + 4.0, v11 + 4.0];
  layer = [(UIView *)self->_contactBackgroundView layer];
  [layer setCornerRadius:v10 * 0.5];

  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  [(UIImageView *)self->_contactImageView setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [objc_opt_class() _passImageSize];
  v5 = v4;
  [objc_opt_class() contactImageSize];
  v7 = v5 + v6 * 0.5;
  v8 = width;
  result.height = v7;
  result.width = v8;
  return result;
}

- (void)setContactImage:(id)image
{
  [(UIImageView *)self->_contactImageView setImage:?];
  v5 = image == 0;
  [(UIImageView *)self->_contactImageView setHidden:v5];
  contactBackgroundView = self->_contactBackgroundView;

  [(UIView *)contactBackgroundView setHidden:v5];
}

- (void)shakeImage
{
  [(UIImageView *)self->_passImageView pkui_shakeWithCompletion:0];
  [(UIView *)self->_contactBackgroundView pkui_smallShakeWithCompletion:0];
  contactImageView = self->_contactImageView;

  [(UIImageView *)contactImageView pkui_smallShakeWithCompletion:0];
}

+ (CGSize)contactImageSize
{
  v2 = 40.0;
  v3 = 40.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)_passImageSize
{
  v2 = 190.0;
  v3 = 121.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_setUpPassImageViewForImage:(id)image
{
  passImageView = self->_passImageView;
  if (passImageView)
  {
    imageCopy = image;
    layer = [(UIImageView *)passImageView layer];
    [layer setMasksToBounds:1];

    layer2 = [(UIImageView *)self->_passImageView layer];
    [layer2 setCornerCurve:kCACornerCurveContinuous];

    layer3 = [(UIImageView *)self->_passImageView layer];
    [layer3 setCornerRadius:5.5];

    [(UIImageView *)self->_passImageView setImage:imageCopy];
    [objc_opt_class() _applyShadowToView:self->_passImageView];
    [(UIImageView *)self->_passImageView setAccessibilityIgnoresInvertColors:1];
    v9 = self->_passImageView;

    [(NPKRemotePassActionPassView *)self addSubview:v9];
  }
}

- (void)_setUpContactImageView
{
  if (self->_contactBackgroundView && self->_contactImageView)
  {
    v3 = +[UIColor labelColor];
    [(UIView *)self->_contactBackgroundView setBackgroundColor:v3];

    [objc_opt_class() _applyShadowToView:self->_contactBackgroundView];
    [(NPKRemotePassActionPassView *)self addSubview:self->_contactBackgroundView];
    [(UIImageView *)self->_contactImageView setAccessibilityIgnoresInvertColors:1];
    contactImageView = self->_contactImageView;
    contactBackgroundView = self->_contactBackgroundView;

    [(NPKRemotePassActionPassView *)self insertSubview:contactImageView aboveSubview:contactBackgroundView];
  }
}

+ (void)_applyShadowToView:(id)view
{
  viewCopy = view;
  layer = [viewCopy layer];
  [layer setShadowRadius:12.0];

  v5 = [UIColor colorWithWhite:0.0 alpha:0.15];
  cGColor = [v5 CGColor];
  layer2 = [viewCopy layer];
  [layer2 setShadowColor:cGColor];

  layer3 = [viewCopy layer];
  [layer3 setShadowOffset:{0.0, 12.0}];

  layer4 = [viewCopy layer];

  LODWORD(v9) = 1.0;
  [layer4 setShadowOpacity:v9];
}

@end