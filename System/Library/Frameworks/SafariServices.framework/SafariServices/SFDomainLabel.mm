@interface SFDomainLabel
- (SFDomainLabel)initWithCoder:(id)coder;
- (SFDomainLabel)initWithFrame:(CGRect)frame;
- (SFDomainLabel)initWithText:(id)text isSecure:(BOOL)secure;
- (id)_makeAttributedString;
- (void)_commonInit;
- (void)setText:(id)text isSecure:(BOOL)secure;
@end

@implementation SFDomainLabel

- (SFDomainLabel)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = SFDomainLabel;
  v3 = [(SFDomainLabel *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFDomainLabel *)v3 _commonInit];
    v5 = v4;
  }

  return v4;
}

- (SFDomainLabel)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = SFDomainLabel;
  v3 = [(SFDomainLabel *)&v7 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(SFDomainLabel *)v3 _commonInit];
    v5 = v4;
  }

  return v4;
}

- (SFDomainLabel)initWithText:(id)text isSecure:(BOOL)secure
{
  secureCopy = secure;
  textCopy = text;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v8 = [(SFDomainLabel *)self initWithFrame:?];

  if (v8)
  {
    [(SFDomainLabel *)v8 setText:textCopy isSecure:secureCopy];
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
  centerXAnchor = [(UILabel *)self->_label centerXAnchor];
  centerXAnchor2 = [(SFDomainLabel *)self centerXAnchor];
  v19 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v22[0] = v19;
  leadingAnchor = [(UILabel *)self->_label leadingAnchor];
  leadingAnchor2 = [(SFDomainLabel *)self leadingAnchor];
  v10 = [leadingAnchor constraintEqualToSystemSpacingAfterAnchor:leadingAnchor2 multiplier:1.0];
  v22[1] = v10;
  topAnchor = [(UILabel *)self->_label topAnchor];
  topAnchor2 = [(SFDomainLabel *)self topAnchor];
  v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v22[2] = v13;
  bottomAnchor = [(SFDomainLabel *)self bottomAnchor];
  bottomAnchor2 = [(UILabel *)self->_label bottomAnchor];
  v16 = [bottomAnchor constraintEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:1.0];
  v22[3] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
  [v18 activateConstraints:v17];
}

- (void)setText:(id)text isSecure:(BOOL)secure
{
  secureCopy = secure;
  textCopy = &stru_1F4FE9E38;
  if (text)
  {
    textCopy = text;
  }

  v10 = textCopy;
  if (![(NSString *)self->_text isEqualToString:?]|| self->_secure != secureCopy)
  {
    v7 = [(__CFString *)v10 copy];
    text = self->_text;
    self->_text = v7;

    self->_secure = secureCopy;
    _makeAttributedString = [(SFDomainLabel *)self _makeAttributedString];
    [(UILabel *)self->_label setAttributedText:_makeAttributedString];
  }
}

- (id)_makeAttributedString
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD40]);
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v5 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:self->_text];
  [v3 appendAttributedString:v5];

  v8 = *MEMORY[0x1E69DB650];
  v9[0] = whiteColor;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v3 addAttributes:v6 range:{0, objc_msgSend(v3, "length")}];

  return v3;
}

@end