@interface EKEventDetailTextCellHeader
- (EKEventDetailTextCellHeader)initWithTitle:(id)a3;
- (EKEventDetailTextCellHeaderDelegate)delegate;
- (void)_contentCategorySizeChanged:(id)a3;
- (void)_tapped;
- (void)_updateConstraints;
- (void)setShowsShowMoreLabel:(BOOL)a3;
@end

@implementation EKEventDetailTextCellHeader

- (EKEventDetailTextCellHeader)initWithTitle:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = EKEventDetailTextCellHeader;
  v5 = [(EKEventDetailTextCellHeader *)&v29 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    constraints = v5->_constraints;
    v5->_constraints = v6;

    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v8;

    [(UILabel *)v5->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = *MEMORY[0x1E69DDCF8];
    v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)v5->_titleLabel setFont:v11];

    v12 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v5->_titleLabel setTextColor:v12];

    [(UILabel *)v5->_titleLabel setText:v4];
    LODWORD(v13) = 1144766464;
    [(UILabel *)v5->_titleLabel setContentCompressionResistancePriority:0 forAxis:v13];
    [(EKEventDetailTextCellHeader *)v5 addSubview:v5->_titleLabel];
    v14 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    showMoreLabel = v5->_showMoreLabel;
    v5->_showMoreLabel = v14;

    [(UILabel *)v5->_showMoreLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v10];
    [(UILabel *)v5->_showMoreLabel setFont:v16];

    v17 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v5->_showMoreLabel setTextColor:v17];

    v18 = EventKitUIBundle();
    v19 = [v18 localizedStringForKey:@"Show more" value:&stru_1F4EF6790 table:0];
    [(UILabel *)v5->_showMoreLabel setText:v19];

    v20 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v21 = [(EKEventDetailTextCellHeader *)v5 traitCollection];
    v22 = TableViewDisclosureIndicatorImage(v21);
    v23 = [v20 initWithImage:v22];
    showMoreChevron = v5->_showMoreChevron;
    v5->_showMoreChevron = v23;

    LODWORD(v25) = 1148846080;
    [(UIImageView *)v5->_showMoreChevron setContentCompressionResistancePriority:0 forAxis:v25];
    [(UIImageView *)v5->_showMoreChevron setTranslatesAutoresizingMaskIntoConstraints:0];
    v26 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v5 action:sel__tapped];
    [(EKEventDetailTextCellHeader *)v5 addGestureRecognizer:v26];
    v27 = [MEMORY[0x1E696AD88] defaultCenter];
    [v27 addObserver:v5 selector:sel__contentCategorySizeChanged_ name:*MEMORY[0x1E69DDC48] object:0];
    [(EKEventDetailTextCellHeader *)v5 _updateConstraints];
  }

  return v5;
}

- (void)_contentCategorySizeChanged:(id)a3
{
  v4 = [(EKEventDetailTextCellHeader *)self traitCollection];
  v5 = TableViewDisclosureIndicatorImage(v4);
  [(UIImageView *)self->_showMoreChevron setImage:v5];

  v6 = *MEMORY[0x1E69DDCF8];
  v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(UILabel *)self->_titleLabel setFont:v7];

  v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v6];
  [(UILabel *)self->_showMoreLabel setFont:v8];
}

- (void)_tapped
{
  if (self->_showsShowMoreLabel)
  {
    v3 = [(EKEventDetailTextCellHeader *)self delegate];
    [v3 cellHeaderTapped];
  }
}

- (void)setShowsShowMoreLabel:(BOOL)a3
{
  if (self->_showsShowMoreLabel != a3)
  {
    self->_showsShowMoreLabel = a3;
    [(EKEventDetailTextCellHeader *)self _updateConstraints];
  }
}

- (void)_updateConstraints
{
  v40[8] = *MEMORY[0x1E69E9840];
  v3 = 0x1E696A000uLL;
  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_constraints];
  [(NSMutableArray *)self->_constraints removeAllObjects];
  if (self->_showsShowMoreLabel)
  {
    [(EKEventDetailTextCellHeader *)self addSubview:self->_showMoreLabel];
    [(EKEventDetailTextCellHeader *)self addSubview:self->_showMoreChevron];
    constraints = self->_constraints;
    v31 = [(UILabel *)self->_titleLabel leadingAnchor];
    v30 = [(EKEventDetailTextCellHeader *)self leadingAnchor];
    v27 = [v31 constraintEqualToAnchor:v30];
    v40[0] = v27;
    v28 = [(UILabel *)self->_titleLabel topAnchor];
    v38 = [(EKEventDetailTextCellHeader *)self topAnchor];
    v37 = [v28 constraintEqualToAnchor:?];
    v40[1] = v37;
    v4 = [(UILabel *)self->_titleLabel bottomAnchor];
    v35 = [(EKEventDetailTextCellHeader *)self bottomAnchor];
    v36 = v4;
    v34 = [v4 constraintEqualToAnchor:?];
    v40[2] = v34;
    v26 = [(UILabel *)self->_showMoreLabel leadingAnchor];
    v33 = [(UILabel *)self->_titleLabel trailingAnchor];
    v32 = [v26 constraintGreaterThanOrEqualToAnchor:6.0 constant:?];
    v40[3] = v32;
    v5 = [(UIImageView *)self->_showMoreChevron leadingAnchor];
    v24 = [(UILabel *)self->_showMoreLabel trailingAnchor];
    v25 = [(UILabel *)self->_showMoreLabel font];
    [v25 _scaledValueForValue:8.0];
    v23 = [v5 constraintEqualToAnchor:v24 constant:?];
    v40[4] = v23;
    v22 = [(UIImageView *)self->_showMoreChevron trailingAnchor];
    v21 = [(EKEventDetailTextCellHeader *)self trailingAnchor];
    v6 = [v22 constraintEqualToAnchor:v21];
    v40[5] = v6;
    v7 = [(UILabel *)self->_showMoreLabel firstBaselineAnchor];
    v8 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    v40[6] = v9;
    v10 = [(UIImageView *)self->_showMoreChevron firstBaselineAnchor];
    v11 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v40[7] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:8];
    [(NSMutableArray *)constraints addObjectsFromArray:v13];

    v14 = v27;
    v3 = 0x1E696A000;

    v15 = v30;
    v16 = v26;

    v17 = v28;
    v18 = v31;
  }

  else
  {
    [(UILabel *)self->_showMoreLabel removeFromSuperview];
    [(UIImageView *)self->_showMoreChevron removeFromSuperview];
    v19 = self->_constraints;
    v18 = [(UILabel *)self->_titleLabel leadingAnchor];
    v15 = [(EKEventDetailTextCellHeader *)self leadingAnchor];
    v14 = [v18 constraintEqualToAnchor:v15];
    v39[0] = v14;
    v17 = [(UILabel *)self->_titleLabel topAnchor];
    v38 = [(EKEventDetailTextCellHeader *)self topAnchor];
    v37 = [v17 constraintEqualToAnchor:?];
    v39[1] = v37;
    v20 = [(UILabel *)self->_titleLabel bottomAnchor];
    v35 = [(EKEventDetailTextCellHeader *)self bottomAnchor];
    v36 = v20;
    v34 = [v20 constraintEqualToAnchor:?];
    v39[2] = v34;
    v16 = [(UILabel *)self->_titleLabel trailingAnchor];
    v33 = [(EKEventDetailTextCellHeader *)self trailingAnchor];
    v32 = [v16 constraintEqualToAnchor:?];
    v39[3] = v32;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:4];
    [(NSMutableArray *)v19 addObjectsFromArray:v5];
  }

  [*(v3 + 3288) activateConstraints:self->_constraints];
}

- (EKEventDetailTextCellHeaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end