@interface _SFPageFormatMenuBadgeView
- (_SFPageFormatMenuBadgeView)initWithText:(id)text;
- (void)layoutSubviews;
@end

@implementation _SFPageFormatMenuBadgeView

- (_SFPageFormatMenuBadgeView)initWithText:(id)text
{
  v35[5] = *MEMORY[0x1E69E9840];
  textCopy = text;
  v34.receiver = self;
  v34.super_class = _SFPageFormatMenuBadgeView;
  v5 = [(_SFPageFormatMenuBadgeView *)&v34 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v5)
  {
    v6 = [MEMORY[0x1E69DC888] sf_colorNamed:@"settingsAlertDividerBackground"];
    [(_SFPageFormatMenuBadgeView *)v5 setBackgroundColor:v6];

    [(_SFPageFormatMenuBadgeView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v7;

    [(UILabel *)v5->_titleLabel setText:textCopy];
    v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    [(UILabel *)v5->_titleLabel setFont:v9];

    [(UILabel *)v5->_titleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v5->_titleLabel setTextAlignment:1];
    [(UILabel *)v5->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v10) = 1144766464;
    [(UILabel *)v5->_titleLabel setContentHuggingPriority:0 forAxis:v10];
    LODWORD(v11) = 1144766464;
    [(UILabel *)v5->_titleLabel setContentCompressionResistancePriority:1 forAxis:v11];
    [(_SFPageFormatMenuBadgeView *)v5 addSubview:v5->_titleLabel];
    topAnchor = [(UILabel *)v5->_titleLabel topAnchor];
    [(_SFPageFormatMenuBadgeView *)v5 topAnchor];
    v13 = v33 = textCopy;
    v14 = [topAnchor constraintEqualToAnchor:v13 constant:6.0];

    v29 = v14;
    LODWORD(v15) = 1144766464;
    [v14 setPriority:v15];
    v27 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UILabel *)v5->_titleLabel leadingAnchor];
    leadingAnchor2 = [(_SFPageFormatMenuBadgeView *)v5 leadingAnchor];
    v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:6.0];
    v35[0] = v30;
    trailingAnchor = [(_SFPageFormatMenuBadgeView *)v5 trailingAnchor];
    trailingAnchor2 = [(UILabel *)v5->_titleLabel trailingAnchor];
    v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:6.0];
    v35[1] = v17;
    v35[2] = v14;
    centerYAnchor = [(UILabel *)v5->_titleLabel centerYAnchor];
    centerYAnchor2 = [(_SFPageFormatMenuBadgeView *)v5 centerYAnchor];
    v20 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v35[3] = v20;
    widthAnchor = [(_SFPageFormatMenuBadgeView *)v5 widthAnchor];
    heightAnchor = [(_SFPageFormatMenuBadgeView *)v5 heightAnchor];
    v23 = [widthAnchor constraintGreaterThanOrEqualToAnchor:heightAnchor];
    v35[4] = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:5];
    [v27 activateConstraints:v24];

    textCopy = v33;
    v25 = v5;
  }

  return v5;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = _SFPageFormatMenuBadgeView;
  [(_SFPageFormatMenuBadgeView *)&v6 layoutSubviews];
  [(_SFPageFormatMenuBadgeView *)self bounds];
  Width = CGRectGetWidth(v7);
  [(_SFPageFormatMenuBadgeView *)self bounds];
  v4 = fmin(Width, CGRectGetHeight(v8)) * 0.5;
  layer = [(_SFPageFormatMenuBadgeView *)self layer];
  [layer setCornerRadius:v4];
}

@end