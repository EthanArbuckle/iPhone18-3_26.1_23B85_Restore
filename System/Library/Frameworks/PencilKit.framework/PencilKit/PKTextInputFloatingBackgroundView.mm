@interface PKTextInputFloatingBackgroundView
- (PKTextInputFloatingBackgroundView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation PKTextInputFloatingBackgroundView

- (PKTextInputFloatingBackgroundView)initWithFrame:(CGRect)frame
{
  v32.receiver = self;
  v32.super_class = PKTextInputFloatingBackgroundView;
  v3 = [(PKTextInputFloatingBackgroundView *)&v32 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = MEMORY[0x1E69DCAB8];
    v5 = MEMORY[0x1E69DD1B8];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v8 = v7;

    v9 = [v5 traitCollectionWithDisplayScale:{fmin(v8, 2.0)}];
    v10 = [v4 _kitImageNamed:@"UITexturedPaperTile" withTrait:v9];

    v11 = [MEMORY[0x1E69DC888] colorWithPatternImage:v10];
    v12 = objc_alloc_init(MEMORY[0x1E69DD250]);
    textureView = v3->__textureView;
    v3->__textureView = v12;

    layer = [(UIView *)v3->__textureView layer];
    [layer setCornerRadius:12.0];

    [(UIView *)v3->__textureView setBackgroundColor:v11];
    [(UIView *)v3->__textureView setAlpha:0.85];
    v15 = [MEMORY[0x1E69DC730] _effectWithBlurRadius:4.0 scale:2.0];
    v16 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v15];
    blurView = v3->__blurView;
    v3->__blurView = v16;

    [(UIVisualEffectView *)v3->__blurView _setCornerRadius:12.0];
    [(UIVisualEffectView *)v3->__blurView setClipsToBounds:1];
    contentView = [(UIVisualEffectView *)v3->__blurView contentView];
    [contentView addSubview:v3->__textureView];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(PKTextInputFloatingBackgroundView *)v3 setBackgroundColor:clearColor];

    [(PKTextInputFloatingBackgroundView *)v3 _setCornerRadius:12.0];
    [(PKTextInputFloatingBackgroundView *)v3 setUserInteractionEnabled:0];
    v20 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.1];
    cGColor = [v20 CGColor];
    layer2 = [(PKTextInputFloatingBackgroundView *)v3 layer];
    [layer2 setBorderColor:cGColor];

    layer3 = [(PKTextInputFloatingBackgroundView *)v3 layer];
    [layer3 setBorderWidth:0.5];

    layer4 = [(PKTextInputFloatingBackgroundView *)v3 layer];
    [layer4 setShadowOffset:{0.0, 3.0}];

    blackColor = [MEMORY[0x1E69DC888] blackColor];
    cGColor2 = [blackColor CGColor];
    layer5 = [(PKTextInputFloatingBackgroundView *)v3 layer];
    [layer5 setShadowColor:cGColor2];

    layer6 = [(PKTextInputFloatingBackgroundView *)v3 layer];
    LODWORD(v29) = 1036831949;
    [layer6 setShadowOpacity:v29];

    layer7 = [(PKTextInputFloatingBackgroundView *)v3 layer];
    [layer7 setShadowRadius:7.0];

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
  _blurView = [(PKTextInputFloatingBackgroundView *)self _blurView];
  [_blurView setFrame:{v4, v6, v8, v10}];

  _blurView2 = [(PKTextInputFloatingBackgroundView *)self _blurView];
  contentView = [_blurView2 contentView];
  [contentView bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  _textureView = [(PKTextInputFloatingBackgroundView *)self _textureView];
  [_textureView setFrame:{v15, v17, v19, v21}];
}

@end