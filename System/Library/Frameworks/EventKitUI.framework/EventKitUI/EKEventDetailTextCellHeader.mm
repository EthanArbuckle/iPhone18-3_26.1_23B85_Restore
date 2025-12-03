@interface EKEventDetailTextCellHeader
- (EKEventDetailTextCellHeader)initWithTitle:(id)title;
- (EKEventDetailTextCellHeaderDelegate)delegate;
- (void)_contentCategorySizeChanged:(id)changed;
- (void)_tapped;
- (void)_updateConstraints;
- (void)setShowsShowMoreLabel:(BOOL)label;
@end

@implementation EKEventDetailTextCellHeader

- (EKEventDetailTextCellHeader)initWithTitle:(id)title
{
  titleCopy = title;
  v29.receiver = self;
  v29.super_class = EKEventDetailTextCellHeader;
  v5 = [(EKEventDetailTextCellHeader *)&v29 init];
  if (v5)
  {
    array = [MEMORY[0x1E695DF70] array];
    constraints = v5->_constraints;
    v5->_constraints = array;

    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v8;

    [(UILabel *)v5->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = *MEMORY[0x1E69DDCF8];
    v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)v5->_titleLabel setFont:v11];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v5->_titleLabel setTextColor:labelColor];

    [(UILabel *)v5->_titleLabel setText:titleCopy];
    LODWORD(v13) = 1144766464;
    [(UILabel *)v5->_titleLabel setContentCompressionResistancePriority:0 forAxis:v13];
    [(EKEventDetailTextCellHeader *)v5 addSubview:v5->_titleLabel];
    v14 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    showMoreLabel = v5->_showMoreLabel;
    v5->_showMoreLabel = v14;

    [(UILabel *)v5->_showMoreLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v10];
    [(UILabel *)v5->_showMoreLabel setFont:v16];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v5->_showMoreLabel setTextColor:secondaryLabelColor];

    v18 = EventKitUIBundle();
    v19 = [v18 localizedStringForKey:@"Show more" value:&stru_1F4EF6790 table:0];
    [(UILabel *)v5->_showMoreLabel setText:v19];

    v20 = objc_alloc(MEMORY[0x1E69DCAE0]);
    traitCollection = [(EKEventDetailTextCellHeader *)v5 traitCollection];
    v22 = TableViewDisclosureIndicatorImage(traitCollection);
    v23 = [v20 initWithImage:v22];
    showMoreChevron = v5->_showMoreChevron;
    v5->_showMoreChevron = v23;

    LODWORD(v25) = 1148846080;
    [(UIImageView *)v5->_showMoreChevron setContentCompressionResistancePriority:0 forAxis:v25];
    [(UIImageView *)v5->_showMoreChevron setTranslatesAutoresizingMaskIntoConstraints:0];
    v26 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v5 action:sel__tapped];
    [(EKEventDetailTextCellHeader *)v5 addGestureRecognizer:v26];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__contentCategorySizeChanged_ name:*MEMORY[0x1E69DDC48] object:0];
    [(EKEventDetailTextCellHeader *)v5 _updateConstraints];
  }

  return v5;
}

- (void)_contentCategorySizeChanged:(id)changed
{
  traitCollection = [(EKEventDetailTextCellHeader *)self traitCollection];
  v5 = TableViewDisclosureIndicatorImage(traitCollection);
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
    delegate = [(EKEventDetailTextCellHeader *)self delegate];
    [delegate cellHeaderTapped];
  }
}

- (void)setShowsShowMoreLabel:(BOOL)label
{
  if (self->_showsShowMoreLabel != label)
  {
    self->_showsShowMoreLabel = label;
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
    leadingAnchor = [(UILabel *)self->_titleLabel leadingAnchor];
    leadingAnchor2 = [(EKEventDetailTextCellHeader *)self leadingAnchor];
    v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v40[0] = v27;
    topAnchor = [(UILabel *)self->_titleLabel topAnchor];
    topAnchor2 = [(EKEventDetailTextCellHeader *)self topAnchor];
    v37 = [topAnchor constraintEqualToAnchor:?];
    v40[1] = v37;
    bottomAnchor = [(UILabel *)self->_titleLabel bottomAnchor];
    bottomAnchor2 = [(EKEventDetailTextCellHeader *)self bottomAnchor];
    v36 = bottomAnchor;
    v34 = [bottomAnchor constraintEqualToAnchor:?];
    v40[2] = v34;
    leadingAnchor3 = [(UILabel *)self->_showMoreLabel leadingAnchor];
    trailingAnchor = [(UILabel *)self->_titleLabel trailingAnchor];
    v32 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:6.0 constant:?];
    v40[3] = v32;
    leadingAnchor4 = [(UIImageView *)self->_showMoreChevron leadingAnchor];
    trailingAnchor2 = [(UILabel *)self->_showMoreLabel trailingAnchor];
    font = [(UILabel *)self->_showMoreLabel font];
    [font _scaledValueForValue:8.0];
    v23 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor2 constant:?];
    v40[4] = v23;
    trailingAnchor3 = [(UIImageView *)self->_showMoreChevron trailingAnchor];
    trailingAnchor4 = [(EKEventDetailTextCellHeader *)self trailingAnchor];
    v6 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v40[5] = v6;
    firstBaselineAnchor = [(UILabel *)self->_showMoreLabel firstBaselineAnchor];
    firstBaselineAnchor2 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
    v9 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
    v40[6] = v9;
    firstBaselineAnchor3 = [(UIImageView *)self->_showMoreChevron firstBaselineAnchor];
    firstBaselineAnchor4 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
    v12 = [firstBaselineAnchor3 constraintEqualToAnchor:firstBaselineAnchor4];
    v40[7] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:8];
    [(NSMutableArray *)constraints addObjectsFromArray:v13];

    v14 = v27;
    v3 = 0x1E696A000;

    leadingAnchor6 = leadingAnchor2;
    trailingAnchor5 = leadingAnchor3;

    topAnchor3 = topAnchor;
    leadingAnchor5 = leadingAnchor;
  }

  else
  {
    [(UILabel *)self->_showMoreLabel removeFromSuperview];
    [(UIImageView *)self->_showMoreChevron removeFromSuperview];
    v19 = self->_constraints;
    leadingAnchor5 = [(UILabel *)self->_titleLabel leadingAnchor];
    leadingAnchor6 = [(EKEventDetailTextCellHeader *)self leadingAnchor];
    v14 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v39[0] = v14;
    topAnchor3 = [(UILabel *)self->_titleLabel topAnchor];
    topAnchor2 = [(EKEventDetailTextCellHeader *)self topAnchor];
    v37 = [topAnchor3 constraintEqualToAnchor:?];
    v39[1] = v37;
    bottomAnchor3 = [(UILabel *)self->_titleLabel bottomAnchor];
    bottomAnchor2 = [(EKEventDetailTextCellHeader *)self bottomAnchor];
    v36 = bottomAnchor3;
    v34 = [bottomAnchor3 constraintEqualToAnchor:?];
    v39[2] = v34;
    trailingAnchor5 = [(UILabel *)self->_titleLabel trailingAnchor];
    trailingAnchor = [(EKEventDetailTextCellHeader *)self trailingAnchor];
    v32 = [trailingAnchor5 constraintEqualToAnchor:?];
    v39[3] = v32;
    leadingAnchor4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:4];
    [(NSMutableArray *)v19 addObjectsFromArray:leadingAnchor4];
  }

  [*(v3 + 3288) activateConstraints:self->_constraints];
}

- (EKEventDetailTextCellHeaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end