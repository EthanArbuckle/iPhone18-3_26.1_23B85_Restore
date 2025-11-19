@interface MKAppleLogoLabel
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (id)initForMapType:(unint64_t)a3 forDarkMode:(BOOL)a4;
- (void)drawRect:(CGRect)a3;
- (void)updateForMapType:(unint64_t)a3 darkMode:(BOOL)a4;
@end

@implementation MKAppleLogoLabel

- (void)drawRect:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MKAppleLogoLabel;
  [(MKAppleLogoLabel *)&v6 drawRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(MKAppleLogoLabel *)self bounds];
  v4 = CGRectGetMinY(v7) + 10.0;
  [(MKAppleLogoLabel *)self bounds];
  MinX = CGRectGetMinX(v8);
  [(NSAttributedString *)self->_strokeText drawAtPoint:MinX, v4];
  [(NSAttributedString *)self->_innerText drawAtPoint:MinX, v4];
}

- (CGSize)intrinsicContentSize
{
  [(MKAppleLogoLabel *)self sizeThatFits:1000.0, 1000.0];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(NSAttributedString *)self->_strokeText boundingRectWithSize:0 options:0 context:?];
  v7 = v6;
  v9 = v8;
  [(NSAttributedString *)self->_innerText boundingRectWithSize:0 options:0 context:width, height];
  if (v7 <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v7;
  }

  if (v9 <= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v9;
  }

  v14 = v13 + 20.0;
  result.height = v14;
  result.width = v12;
  return result;
}

- (void)updateForMapType:(unint64_t)a3 darkMode:(BOOL)a4
{
  v42[1] = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E69DB878] systemFontOfSize:16.0 weight:*MEMORY[0x1E69DB970]];
  if (a3 - 1 < 4 || a3 == 107 || a4)
  {
    v8 = [MEMORY[0x1E69DC888] whiteColor];
    v34 = 1;
  }

  else
  {
    v8 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.600000024];
    v34 = 0;
  }

  v9 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  v10 = [MEMORY[0x1E69DCAB8] _mapkit_systemImageNamed:@"applelogo"];
  v11 = MEMORY[0x1E69DCAD8];
  [v7 pointSize];
  v36 = [v11 _mapkit_configurationWithPointSize:1 weight:? scale:?];
  v12 = [v10 _mapkit_imageWithSymbolConfiguration:?];

  v35 = v12;
  v13 = [v12 imageWithTintColor:v8];
  [v9 setImage:v13];

  v14 = objc_opt_new();
  v33 = v9;
  v15 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v9];
  [v14 appendAttributedString:v15];

  v16 = objc_alloc(MEMORY[0x1E696AAB0]);
  v17 = _MKLocalizedStringFromThisBundle(@"[MapKit] Apple Maps Brand Mark");
  v18 = [v16 initWithString:v17];
  [v14 appendAttributedString:v18];

  v19 = [MEMORY[0x1E695DF58] currentLocale];
  v20 = [v19 languageCode];
  v21 = [v20 isEqualToString:@"en"];

  if (v21)
  {
    v41 = *MEMORY[0x1E69DB660];
    v42[0] = &unk_1F1610D40;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    [v14 addAttributes:v22 range:{1, objc_msgSend(v14, "length") - 1}];
  }

  v23 = [v14 mutableCopy];
  v24 = *MEMORY[0x1E69DB648];
  v40[0] = v7;
  v25 = *MEMORY[0x1E69DB650];
  v39[0] = v24;
  v39[1] = v25;
  v26 = [MEMORY[0x1E69DC888] clearColor];
  v40[1] = v26;
  v39[2] = *MEMORY[0x1E69DB6C0];
  v27 = [MEMORY[0x1E69DC888] blackColor];
  v39[3] = *MEMORY[0x1E69DB6C8];
  v40[2] = v27;
  v40[3] = &unk_1F1611560;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:4];
  [v23 addAttributes:v28 range:{0, objc_msgSend(v23, "length")}];

  if (v34)
  {
    v29 = [v23 copy];
  }

  else
  {
    v29 = 0;
  }

  objc_storeStrong(&self->_strokeText, v29);
  if (v34)
  {
  }

  v37[0] = v24;
  v37[1] = v25;
  v38[0] = v7;
  v38[1] = v8;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
  [v14 addAttributes:v30 range:{0, objc_msgSend(v14, "length")}];

  v31 = [v14 copy];
  innerText = self->_innerText;
  self->_innerText = v31;

  [(UIView *)self _mapKit_setNeedsDisplay];
  [(MKAppleLogoLabel *)self sizeToFit];
}

- (id)initForMapType:(unint64_t)a3 forDarkMode:(BOOL)a4
{
  v4 = a4;
  v11.receiver = self;
  v11.super_class = MKAppleLogoLabel;
  v6 = [(MKAppleLogoLabel *)&v11 init];
  v7 = v6;
  if (v6)
  {
    [(MKAppleLogoLabel *)v6 setOpaque:0];
    v8 = [MEMORY[0x1E69DC888] clearColor];
    [(MKAppleLogoLabel *)v7 setBackgroundColor:v8];

    [(MKAppleLogoLabel *)v7 setUserInteractionEnabled:0];
    [(MKAppleLogoLabel *)v7 updateForMapType:a3 darkMode:v4];
    v9 = v7;
  }

  return v7;
}

@end