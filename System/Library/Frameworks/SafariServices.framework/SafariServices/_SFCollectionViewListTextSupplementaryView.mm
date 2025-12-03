@interface _SFCollectionViewListTextSupplementaryView
- (_SFCollectionViewListTextSupplementaryView)initWithFrame:(CGRect)frame;
@end

@implementation _SFCollectionViewListTextSupplementaryView

- (_SFCollectionViewListTextSupplementaryView)initWithFrame:(CGRect)frame
{
  v26[4] = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = _SFCollectionViewListTextSupplementaryView;
  v3 = [(_SFCollectionViewListTextSupplementaryView *)&v25 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    label = v3->_label;
    v3->_label = v4;

    [(UILabel *)v3->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v3->_label setTextColor:secondaryLabelColor];

    v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    [(UILabel *)v3->_label setFont:v7];

    [(UILabel *)v3->_label setNumberOfLines:0];
    [(_SFCollectionViewListTextSupplementaryView *)v3 addSubview:v3->_label];
    [(_SFCollectionViewListTextSupplementaryView *)v3 setLayoutMargins:8.0, 20.0, 8.0, 20.0];
    layoutMarginsGuide = [(_SFCollectionViewListTextSupplementaryView *)v3 layoutMarginsGuide];
    v19 = MEMORY[0x1E696ACD8];
    topAnchor = [(UILabel *)v3->_label topAnchor];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v26[0] = v22;
    leadingAnchor = [(UILabel *)v3->_label leadingAnchor];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v26[1] = v9;
    trailingAnchor = [(UILabel *)v3->_label trailingAnchor];
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v26[2] = v12;
    bottomAnchor = [(UILabel *)v3->_label bottomAnchor];
    bottomAnchor2 = [layoutMarginsGuide bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v26[3] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
    [v19 activateConstraints:v16];

    v17 = v3;
  }

  return v3;
}

@end