@interface _SFCollectionViewListTextSupplementaryView
- (_SFCollectionViewListTextSupplementaryView)initWithFrame:(CGRect)a3;
@end

@implementation _SFCollectionViewListTextSupplementaryView

- (_SFCollectionViewListTextSupplementaryView)initWithFrame:(CGRect)a3
{
  v26[4] = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = _SFCollectionViewListTextSupplementaryView;
  v3 = [(_SFCollectionViewListTextSupplementaryView *)&v25 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    label = v3->_label;
    v3->_label = v4;

    [(UILabel *)v3->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v3->_label setTextColor:v6];

    v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    [(UILabel *)v3->_label setFont:v7];

    [(UILabel *)v3->_label setNumberOfLines:0];
    [(_SFCollectionViewListTextSupplementaryView *)v3 addSubview:v3->_label];
    [(_SFCollectionViewListTextSupplementaryView *)v3 setLayoutMargins:8.0, 20.0, 8.0, 20.0];
    v8 = [(_SFCollectionViewListTextSupplementaryView *)v3 layoutMarginsGuide];
    v19 = MEMORY[0x1E696ACD8];
    v24 = [(UILabel *)v3->_label topAnchor];
    v23 = [v8 topAnchor];
    v22 = [v24 constraintEqualToAnchor:v23];
    v26[0] = v22;
    v21 = [(UILabel *)v3->_label leadingAnchor];
    v20 = [v8 leadingAnchor];
    v9 = [v21 constraintEqualToAnchor:v20];
    v26[1] = v9;
    v10 = [(UILabel *)v3->_label trailingAnchor];
    v11 = [v8 trailingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v26[2] = v12;
    v13 = [(UILabel *)v3->_label bottomAnchor];
    v14 = [v8 bottomAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v26[3] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
    [v19 activateConstraints:v16];

    v17 = v3;
  }

  return v3;
}

@end