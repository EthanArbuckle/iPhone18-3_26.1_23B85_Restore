@interface _TUIVideoPlayButton
+ (CGSize)computeSizeFittingVideoSize:(CGSize)size;
- (_TUIVideoPlayButton)init;
- (void)layoutSubviews;
@end

@implementation _TUIVideoPlayButton

- (_TUIVideoPlayButton)init
{
  v13.receiver = self;
  v13.super_class = _TUIVideoPlayButton;
  v2 = [(_TUIVideoPlayButton *)&v13 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v2)
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = [UIImage tui_imageNamed:@"play_glyph" inBundle:v3];
    v5 = [v4 imageWithRenderingMode:2];

    imageFlippedForRightToLeftLayoutDirection = [v5 imageFlippedForRightToLeftLayoutDirection];
    v7 = objc_alloc_init(UIImageView);
    glyphView = v2->_glyphView;
    v2->_glyphView = v7;

    [(UIImageView *)v2->_glyphView setImage:v5];
    [(UIImageView *)v2->_glyphView setUserInteractionEnabled:0];
    v9 = +[UIColor whiteColor];
    [(UIImageView *)v2->_glyphView setTintColor:v9];

    v10 = objc_alloc_init(AVBackgroundView);
    backgroundView = v2->_backgroundView;
    v2->_backgroundView = v10;

    [(AVBackgroundView *)v2->_backgroundView addSubview:v2->_glyphView applyingMaterialStyle:0 tintEffectStyle:0];
    [(AVBackgroundView *)v2->_backgroundView setUserInteractionEnabled:0];
    [(AVBackgroundView *)v2->_backgroundView setCircular:1];
    [(_TUIVideoPlayButton *)v2 addSubview:v2->_backgroundView];
  }

  return v2;
}

+ (CGSize)computeSizeFittingVideoSize:(CGSize)size
{
  if (size.width >= size.height)
  {
    size.width = size.height;
  }

  v3 = fmin(size.width, 31.0);
  if (v3 < 60.0)
  {
    v3 = 60.0;
  }

  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = _TUIVideoPlayButton;
  [(_TUIVideoPlayButton *)&v13 layoutSubviews];
  backgroundView = self->_backgroundView;
  [(_TUIVideoPlayButton *)self bounds];
  [(AVBackgroundView *)backgroundView setFrame:?];
  glyphView = self->_glyphView;
  [(_TUIVideoPlayButton *)self bounds];
  [(UIImageView *)glyphView sizeThatFits:v5, v6];
  v8 = v7;
  v10 = v9;
  v11 = self->_glyphView;
  [(_TUIVideoPlayButton *)self bounds];
  v12 = CGRectGetMidX(v14) - v8 * 0.5;
  [(_TUIVideoPlayButton *)self bounds];
  [(UIImageView *)v11 setFrame:v12, CGRectGetMidY(v15) - v10 * 0.5, v8, v10];
}

@end