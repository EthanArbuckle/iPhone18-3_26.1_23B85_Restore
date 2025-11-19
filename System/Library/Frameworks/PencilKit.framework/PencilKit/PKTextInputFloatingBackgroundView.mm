@interface PKTextInputFloatingBackgroundView
- (PKTextInputFloatingBackgroundView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation PKTextInputFloatingBackgroundView

- (PKTextInputFloatingBackgroundView)initWithFrame:(CGRect)a3
{
  v32.receiver = self;
  v32.super_class = PKTextInputFloatingBackgroundView;
  v3 = [(PKTextInputFloatingBackgroundView *)&v32 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = MEMORY[0x1E69DCAB8];
    v5 = MEMORY[0x1E69DD1B8];
    v6 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v6 scale];
    v8 = v7;

    v9 = [v5 traitCollectionWithDisplayScale:{fmin(v8, 2.0)}];
    v10 = [v4 _kitImageNamed:@"UITexturedPaperTile" withTrait:v9];

    v11 = [MEMORY[0x1E69DC888] colorWithPatternImage:v10];
    v12 = objc_alloc_init(MEMORY[0x1E69DD250]);
    textureView = v3->__textureView;
    v3->__textureView = v12;

    v14 = [(UIView *)v3->__textureView layer];
    [v14 setCornerRadius:12.0];

    [(UIView *)v3->__textureView setBackgroundColor:v11];
    [(UIView *)v3->__textureView setAlpha:0.85];
    v15 = [MEMORY[0x1E69DC730] _effectWithBlurRadius:4.0 scale:2.0];
    v16 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v15];
    blurView = v3->__blurView;
    v3->__blurView = v16;

    [(UIVisualEffectView *)v3->__blurView _setCornerRadius:12.0];
    [(UIVisualEffectView *)v3->__blurView setClipsToBounds:1];
    v18 = [(UIVisualEffectView *)v3->__blurView contentView];
    [v18 addSubview:v3->__textureView];

    v19 = [MEMORY[0x1E69DC888] clearColor];
    [(PKTextInputFloatingBackgroundView *)v3 setBackgroundColor:v19];

    [(PKTextInputFloatingBackgroundView *)v3 _setCornerRadius:12.0];
    [(PKTextInputFloatingBackgroundView *)v3 setUserInteractionEnabled:0];
    v20 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.1];
    v21 = [v20 CGColor];
    v22 = [(PKTextInputFloatingBackgroundView *)v3 layer];
    [v22 setBorderColor:v21];

    v23 = [(PKTextInputFloatingBackgroundView *)v3 layer];
    [v23 setBorderWidth:0.5];

    v24 = [(PKTextInputFloatingBackgroundView *)v3 layer];
    [v24 setShadowOffset:{0.0, 3.0}];

    v25 = [MEMORY[0x1E69DC888] blackColor];
    v26 = [v25 CGColor];
    v27 = [(PKTextInputFloatingBackgroundView *)v3 layer];
    [v27 setShadowColor:v26];

    v28 = [(PKTextInputFloatingBackgroundView *)v3 layer];
    LODWORD(v29) = 1036831949;
    [v28 setShadowOpacity:v29];

    v30 = [(PKTextInputFloatingBackgroundView *)v3 layer];
    [v30 setShadowRadius:7.0];

    [(PKTextInputFloatingBackgroundView *)v3 addSubview:v3->__blurView];
  }

  return v3;
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = PKTextInputFloatingBackgroundView;
  [(PKTextInputFloatingBackgroundView *)&v23 layoutSubviews];
  [(PKTextInputFloatingBackgroundView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(PKTextInputFloatingBackgroundView *)self _blurView];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [(PKTextInputFloatingBackgroundView *)self _blurView];
  v13 = [v12 contentView];
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [(PKTextInputFloatingBackgroundView *)self _textureView];
  [v22 setFrame:{v15, v17, v19, v21}];
}

@end