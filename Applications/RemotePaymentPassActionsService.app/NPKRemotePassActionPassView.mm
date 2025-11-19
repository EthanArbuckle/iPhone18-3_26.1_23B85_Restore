@interface NPKRemotePassActionPassView
+ (CGSize)_passImageSize;
+ (CGSize)contactImageSize;
+ (void)_applyShadowToView:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NPKRemotePassActionPassView)initWithPassImage:(id)a3 frame:(CGRect)a4;
- (void)_setUpContactImageView;
- (void)_setUpPassImageViewForImage:(id)a3;
- (void)layoutSubviews;
- (void)setContactImage:(id)a3;
- (void)shakeImage;
@end

@implementation NPKRemotePassActionPassView

- (NPKRemotePassActionPassView)initWithPassImage:(id)a3 frame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v18.receiver = self;
  v18.super_class = NPKRemotePassActionPassView;
  v10 = [(NPKRemotePassActionPassView *)&v18 initWithFrame:x, y, width, height];
  if (v10)
  {
    v11 = objc_alloc_init(UIImageView);
    passImageView = v10->_passImageView;
    v10->_passImageView = v11;

    v13 = objc_alloc_init(UIImageView);
    contactImageView = v10->_contactImageView;
    v10->_contactImageView = v13;

    v15 = objc_alloc_init(UIView);
    contactBackgroundView = v10->_contactBackgroundView;
    v10->_contactBackgroundView = v15;

    [(NPKRemotePassActionPassView *)v10 _setUpPassImageViewForImage:v9];
    [(NPKRemotePassActionPassView *)v10 _setUpContactImageView];
  }

  return v10;
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
  v12 = [(UIView *)self->_contactBackgroundView layer];
  [v12 setCornerRadius:v10 * 0.5];

  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  [(UIImageView *)self->_contactImageView setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [objc_opt_class() _passImageSize];
  v5 = v4;
  [objc_opt_class() contactImageSize];
  v7 = v5 + v6 * 0.5;
  v8 = width;
  result.height = v7;
  result.width = v8;
  return result;
}

- (void)setContactImage:(id)a3
{
  [(UIImageView *)self->_contactImageView setImage:?];
  v5 = a3 == 0;
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

- (void)_setUpPassImageViewForImage:(id)a3
{
  passImageView = self->_passImageView;
  if (passImageView)
  {
    v5 = a3;
    v6 = [(UIImageView *)passImageView layer];
    [v6 setMasksToBounds:1];

    v7 = [(UIImageView *)self->_passImageView layer];
    [v7 setCornerCurve:kCACornerCurveContinuous];

    v8 = [(UIImageView *)self->_passImageView layer];
    [v8 setCornerRadius:5.5];

    [(UIImageView *)self->_passImageView setImage:v5];
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

+ (void)_applyShadowToView:(id)a3
{
  v3 = a3;
  v4 = [v3 layer];
  [v4 setShadowRadius:12.0];

  v5 = [UIColor colorWithWhite:0.0 alpha:0.15];
  v6 = [v5 CGColor];
  v7 = [v3 layer];
  [v7 setShadowColor:v6];

  v8 = [v3 layer];
  [v8 setShadowOffset:{0.0, 12.0}];

  v10 = [v3 layer];

  LODWORD(v9) = 1.0;
  [v10 setShadowOpacity:v9];
}

@end