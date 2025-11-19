@interface SFDomainLabel
- (SFDomainLabel)initWithCoder:(id)a3;
- (SFDomainLabel)initWithFrame:(CGRect)a3;
- (SFDomainLabel)initWithText:(id)a3 isSecure:(BOOL)a4;
- (id)_makeAttributedString;
- (void)_commonInit;
- (void)setText:(id)a3 isSecure:(BOOL)a4;
@end

@implementation SFDomainLabel

- (SFDomainLabel)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = SFDomainLabel;
  v3 = [(SFDomainLabel *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFDomainLabel *)v3 _commonInit];
    v5 = v4;
  }

  return v4;
}

- (SFDomainLabel)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = SFDomainLabel;
  v3 = [(SFDomainLabel *)&v7 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(SFDomainLabel *)v3 _commonInit];
    v5 = v4;
  }

  return v4;
}

- (SFDomainLabel)initWithText:(id)a3 isSecure:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v7 bounds];
  v8 = [(SFDomainLabel *)self initWithFrame:?];

  if (v8)
  {
    [(SFDomainLabel *)v8 setText:v6 isSecure:v4];
    v9 = v8;
  }

  return v8;
}

- (void)_commonInit
{
  v22[4] = *MEMORY[0x1E69E9840];
  text = self->_text;
  self->_text = &stru_1F4FE9E38;

  v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  label = self->_label;
  self->_label = v4;

  [(UILabel *)self->_label setAdjustsFontForContentSizeCategory:1];
  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  [(UILabel *)self->_label setFont:v6];

  [(UILabel *)self->_label setLineBreakMode:1];
  [(UILabel *)self->_label setNumberOfLines:0];
  [(UILabel *)self->_label setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v7) = 1148846080;
  [(UILabel *)self->_label setContentHuggingPriority:1 forAxis:v7];
  [(SFDomainLabel *)self addSubview:self->_label];
  v18 = MEMORY[0x1E696ACD8];
  v21 = [(UILabel *)self->_label centerXAnchor];
  v20 = [(SFDomainLabel *)self centerXAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v22[0] = v19;
  v8 = [(UILabel *)self->_label leadingAnchor];
  v9 = [(SFDomainLabel *)self leadingAnchor];
  v10 = [v8 constraintEqualToSystemSpacingAfterAnchor:v9 multiplier:1.0];
  v22[1] = v10;
  v11 = [(UILabel *)self->_label topAnchor];
  v12 = [(SFDomainLabel *)self topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v22[2] = v13;
  v14 = [(SFDomainLabel *)self bottomAnchor];
  v15 = [(UILabel *)self->_label bottomAnchor];
  v16 = [v14 constraintEqualToSystemSpacingBelowAnchor:v15 multiplier:1.0];
  v22[3] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
  [v18 activateConstraints:v17];
}

- (void)setText:(id)a3 isSecure:(BOOL)a4
{
  v4 = a4;
  v6 = &stru_1F4FE9E38;
  if (a3)
  {
    v6 = a3;
  }

  v10 = v6;
  if (![(NSString *)self->_text isEqualToString:?]|| self->_secure != v4)
  {
    v7 = [(__CFString *)v10 copy];
    text = self->_text;
    self->_text = v7;

    self->_secure = v4;
    v9 = [(SFDomainLabel *)self _makeAttributedString];
    [(UILabel *)self->_label setAttributedText:v9];
  }
}

- (id)_makeAttributedString
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v4 = [MEMORY[0x1E69DC888] whiteColor];
  v5 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:self->_text];
  [v3 appendAttributedString:v5];

  v8 = *MEMORY[0x1E69DB650];
  v9[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v3 addAttributes:v6 range:{0, objc_msgSend(v3, "length")}];

  return v3;
}

@end