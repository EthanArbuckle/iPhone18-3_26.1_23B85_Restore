@interface MFComposeActionCardTitleView
+ (double)heightForTraitCollection:(id)a3;
- (MFComposeActionCardTitleView)initWithFrame:(CGRect)a3;
- (void)_updateHeightForCurrentTraits;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation MFComposeActionCardTitleView

- (MFComposeActionCardTitleView)initWithFrame:(CGRect)a3
{
  v29[4] = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = MFComposeActionCardTitleView;
  v3 = [(_UINavigationBarTitleView *)&v28 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MFComposeActionCardTitleView *)v3 setAutoresizingMask:2];
    [(_UINavigationBarTitleView *)v4 setHideStandardTitle:1];
    v5 = objc_alloc(MEMORY[0x1E69DCC10]);
    v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v6;

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDDC8] variant:1024];
    [(UILabel *)v4->_titleLabel setFont:v8];

    [(UILabel *)v4->_titleLabel setAdjustsFontForContentSizeCategory:1];
    v9 = [MEMORY[0x1E69DC738] buttonWithType:7];
    closeButton = v4->_closeButton;
    v4->_closeButton = v9;

    [(UIButton *)v4->_closeButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MFComposeActionCardTitleView *)v4 addSubview:v4->_titleLabel];
    [(MFComposeActionCardTitleView *)v4 addSubview:v4->_closeButton];
    v11 = MEMORY[0x1E696ACD8];
    v27 = [(UILabel *)v4->_titleLabel leadingAnchor];
    v25 = [(MFComposeActionCardTitleView *)v4 layoutMarginsGuide];
    v24 = [v25 leadingAnchor];
    v23 = [v27 constraintEqualToAnchor:8.0 constant:?];
    v29[0] = v23;
    v26 = [(UILabel *)v4->_titleLabel centerYAnchor];
    v22 = [(MFComposeActionCardTitleView *)v4 centerYAnchor];
    v21 = [v26 constraintEqualToAnchor:?];
    v29[1] = v21;
    v12 = [(MFComposeActionCardTitleView *)v4 layoutMarginsGuide];
    v13 = [v12 trailingAnchor];
    v14 = [(UIButton *)v4->_closeButton trailingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14 constant:8.0];
    v29[2] = v15;
    v16 = [(UIButton *)v4->_closeButton centerYAnchor];
    v17 = [(MFComposeActionCardTitleView *)v4 centerYAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v29[3] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
    [v11 activateConstraints:v19];

    [(MFComposeActionCardTitleView *)v4 _updateHeightForCurrentTraits];
  }

  return v4;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = MFComposeActionCardTitleView;
  [(MFComposeActionCardTitleView *)&v5 traitCollectionDidChange:v4];
  [(MFComposeActionCardTitleView *)self _updateHeightForCurrentTraits];
}

- (void)_updateHeightForCurrentTraits
{
  v3 = objc_opt_class();
  v4 = [(MFComposeActionCardTitleView *)self traitCollection];
  [v3 heightForTraitCollection:?];
  [(_UINavigationBarTitleView *)self setHeight:?];
}

+ (double)heightForTraitCollection:(id)a3
{
  v3 = a3;
  if ([v3 verticalSizeClass] == 1 && objc_msgSend(v3, "horizontalSizeClass") == 1)
  {
    v4 = 0x4047000000000000;
  }

  else
  {
    v4 = 0x404D000000000000;
  }

  v5 = *&v4;

  return v5;
}

@end