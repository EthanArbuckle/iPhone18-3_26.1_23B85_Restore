@interface AERoundedCornerButton
+ (id)roundedCornerButtonWithStyle:(int64_t)style buttonType:(int64_t)type;
- (double)_interpolatedGlyphHorizontalInset;
- (double)_interpolatedGlyphTopInset;
- (void)_commonAERoundedCornerButtonInitializationWithStyle:(int64_t)style buttonType:(int64_t)type;
- (void)layoutSubviews;
@end

@implementation AERoundedCornerButton

- (double)_interpolatedGlyphTopInset
{
  [(AERoundedCornerButton *)self bounds];
  v4 = v3;
  _imageView = [(AERoundedCornerButton *)self _imageView];
  image = [_imageView image];
  [image size];
  v8 = v7;

  _label = [(AERoundedCornerButton *)self _label];
  [_label bounds];
  v11 = v10;

  return (v4 - (v8 + v11)) * 0.5;
}

- (double)_interpolatedGlyphHorizontalInset
{
  [(AERoundedCornerButton *)self bounds];
  _layoutStyle = [(AERoundedCornerButton *)self _layoutStyle];
  if ((_layoutStyle - 1) < 2)
  {
    return 34.0;
  }

  if (_layoutStyle == 3 || (result = 0.0, !_layoutStyle))
  {

    UIRoundToViewScale();
  }

  return result;
}

- (void)layoutSubviews
{
  v31.receiver = self;
  v31.super_class = AERoundedCornerButton;
  [(AERoundedCornerButton *)&v31 layoutSubviews];
  [(AERoundedCornerButton *)self bounds];
  v4 = v3;
  v6 = v5;
  _imageView = [(AERoundedCornerButton *)self _imageView];
  _label = [(AERoundedCornerButton *)self _label];
  image = [_imageView image];
  [image size];
  v11 = v10;
  v13 = v12;

  text = [_label text];
  v15 = [text rangeOfString:@" "];

  _layoutStyle = [(AERoundedCornerButton *)self _layoutStyle];
  v17 = _layoutStyle;
  if (v4 <= v6)
  {
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = 1.79769313e308;
    }

    else
    {
      v21 = 0.0;
      if (_layoutStyle == 3)
      {
        v21 = v4;
      }

      v20 = 1.79769313e308;
      if (_layoutStyle >= 3)
      {
        v4 = v21;
      }

      else
      {
        v4 = v4 + -25.0;
      }
    }
  }

  else
  {
    font = [_label font];
    [font pointSize];
    v20 = v19;
  }

  [_label sizeThatFits:{v4, v20}];
  v23 = v22;
  v24 = 0.0;
  [_label setBounds:{0.0, 0.0, v25, v22}];
  [(AERoundedCornerButton *)self _interpolatedGlyphHorizontalInset];
  v27 = v26;
  [(AERoundedCornerButton *)self _interpolatedGlyphTopInset];
  v28 = v11 * 0.5 + v27;
  v30 = v13 * 0.5 + v29;
  [_imageView setBounds:{0.0, 0.0, v11, v13}];
  [_imageView setCenter:{v28, v30}];
  if (v17 <= 3)
  {
    v24 = dbl_2412000B0[v17];
  }

  [_label setCenter:{v28, v23 * 0.5 + v13 * 0.5 + v30 + v24}];
}

- (void)_commonAERoundedCornerButtonInitializationWithStyle:(int64_t)style buttonType:(int64_t)type
{
  [(AERoundedCornerButton *)self _setLayoutStyle:?];
  self->__buttonType = type;
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [(AERoundedCornerButton *)self setBackgroundColor:whiteColor];

  v8 = objc_alloc(MEMORY[0x277D755E8]);
  [(AERoundedCornerButton *)self bounds];
  v25 = [v8 initWithFrame:?];
  [v25 setContentMode:1];
  [(AERoundedCornerButton *)self _setImageView:v25];
  [(AERoundedCornerButton *)self addSubview:v25];
  v9 = objc_alloc_init(MEMORY[0x277D756B8]);
  if (style <= 3)
  {
    v10 = dbl_241200070[style];
    v11 = dbl_241200090[style];
    layer = [(AERoundedCornerButton *)self layer];
    [layer setCornerRadius:v10];

    v13 = [MEMORY[0x277D74300] systemFontOfSize:v11];
    [v9 setFont:v13];
  }

  blackColor = [MEMORY[0x277D75348] blackColor];
  [v9 setTextColor:blackColor];

  [v9 setTextAlignment:1];
  [v9 setNumberOfLines:0];
  [(AERoundedCornerButton *)self _setLabel:v9];
  [(AERoundedCornerButton *)self addSubview:v9];
  if (type)
  {
    v15 = 0;
    v16 = 0;
    if (type != 1)
    {
      goto LABEL_8;
    }

    v17 = @"OPEN_PHOTO_LIBRARY_BUTTON_LABEL";
    v18 = @"albums";
  }

  else
  {
    v17 = @"OPEN_CAMERA_BUTTON_LABEL";
    v18 = @"camera";
  }

  v19 = MEMORY[0x277D755B8];
  v20 = AssetExplorerBundle();
  v15 = [v19 imageNamed:v18 inBundle:v20];

  v21 = v17;
  v22 = AssetExplorerBundle();
  v16 = [v22 localizedStringForKey:v21 value:&stru_2852F4758 table:@"AssetExplorer"];

LABEL_8:
  [v25 setImage:v15];
  v23 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v16];
  v24 = objc_alloc_init(MEMORY[0x277D74240]);
  [v24 setParagraphSpacingBefore:0.0];
  [v24 setAlignment:1];
  [v24 setLineBreakMode:0];
  [v23 addAttribute:*MEMORY[0x277D74118] value:v24 range:{0, objc_msgSend(v16, "length")}];
  [v9 setAttributedText:v23];
}

+ (id)roundedCornerButtonWithStyle:(int64_t)style buttonType:(int64_t)type
{
  v6 = objc_alloc_init(AERoundedCornerButton);
  [(AERoundedCornerButton *)v6 _commonAERoundedCornerButtonInitializationWithStyle:style buttonType:type];

  return v6;
}

@end