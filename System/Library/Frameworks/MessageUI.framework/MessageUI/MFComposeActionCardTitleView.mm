@interface MFComposeActionCardTitleView
+ (double)heightForTraitCollection:(id)collection;
- (MFComposeActionCardTitleView)initWithFrame:(CGRect)frame;
- (void)_updateHeightForCurrentTraits;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MFComposeActionCardTitleView

- (MFComposeActionCardTitleView)initWithFrame:(CGRect)frame
{
  v29[4] = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = MFComposeActionCardTitleView;
  v3 = [(_UINavigationBarTitleView *)&v28 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    leadingAnchor = [(UILabel *)v4->_titleLabel leadingAnchor];
    layoutMarginsGuide = [(MFComposeActionCardTitleView *)v4 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v23 = [leadingAnchor constraintEqualToAnchor:8.0 constant:?];
    v29[0] = v23;
    centerYAnchor = [(UILabel *)v4->_titleLabel centerYAnchor];
    centerYAnchor2 = [(MFComposeActionCardTitleView *)v4 centerYAnchor];
    v21 = [centerYAnchor constraintEqualToAnchor:?];
    v29[1] = v21;
    layoutMarginsGuide2 = [(MFComposeActionCardTitleView *)v4 layoutMarginsGuide];
    trailingAnchor = [layoutMarginsGuide2 trailingAnchor];
    trailingAnchor2 = [(UIButton *)v4->_closeButton trailingAnchor];
    v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:8.0];
    v29[2] = v15;
    centerYAnchor3 = [(UIButton *)v4->_closeButton centerYAnchor];
    centerYAnchor4 = [(MFComposeActionCardTitleView *)v4 centerYAnchor];
    v18 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v29[3] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
    [v11 activateConstraints:v19];

    [(MFComposeActionCardTitleView *)v4 _updateHeightForCurrentTraits];
  }

  return v4;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v5.receiver = self;
  v5.super_class = MFComposeActionCardTitleView;
  [(MFComposeActionCardTitleView *)&v5 traitCollectionDidChange:changeCopy];
  [(MFComposeActionCardTitleView *)self _updateHeightForCurrentTraits];
}

- (void)_updateHeightForCurrentTraits
{
  v3 = objc_opt_class();
  traitCollection = [(MFComposeActionCardTitleView *)self traitCollection];
  [v3 heightForTraitCollection:?];
  [(_UINavigationBarTitleView *)self setHeight:?];
}

+ (double)heightForTraitCollection:(id)collection
{
  collectionCopy = collection;
  if ([collectionCopy verticalSizeClass] == 1 && objc_msgSend(collectionCopy, "horizontalSizeClass") == 1)
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