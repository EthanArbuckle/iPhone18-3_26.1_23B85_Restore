@interface _SFOptionsGroupDetailLabel
- (_SFOptionsGroupDetailLabel)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setAttributedText:(id)a3;
@end

@implementation _SFOptionsGroupDetailLabel

- (_SFOptionsGroupDetailLabel)initWithFrame:(CGRect)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = _SFOptionsGroupDetailLabel;
  v3 = [(_SFOptionsGroupDetailLabel *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v9[0] = objc_opt_class();
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    v5 = [(_SFOptionsGroupDetailLabel *)v3 registerForTraitChanges:v4 withTarget:v3 action:sel_setNeedsLayout];

    v6 = v3;
  }

  return v3;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = _SFOptionsGroupDetailLabel;
  [(_SFOptionsGroupDetailLabel *)&v4 layoutSubviews];
  v3 = [(_SFOptionsGroupDetailLabel *)self attributedText];
  [(_SFOptionsGroupDetailLabel *)self setAttributedText:v3];
}

- (void)setAttributedText:(id)a3
{
  v4 = [a3 mutableCopy];
  [v4 removeAttribute:*MEMORY[0x1E69DB650] range:{0, objc_msgSend(v4, "length")}];
  v14 = 0;
  v15 = 0;
  v5 = *MEMORY[0x1E69DB648];
  v6 = [v4 attribute:*MEMORY[0x1E69DB648] atIndex:0 effectiveRange:&v14];
  if (v6)
  {
    v7 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8]];
    [v7 pointSize];
    v9 = v8;

    v10 = [v6 fontWithSize:v9];
    [v4 addAttribute:v5 value:v10 range:{v14, v15}];
  }

  v11 = [(_SFOptionsGroupDetailLabel *)self attributedText];
  v12 = [v11 isEqualToAttributedString:v4];

  if ((v12 & 1) == 0)
  {
    v13.receiver = self;
    v13.super_class = _SFOptionsGroupDetailLabel;
    [(_SFOptionsGroupDetailLabel *)&v13 setAttributedText:v4];
  }
}

@end