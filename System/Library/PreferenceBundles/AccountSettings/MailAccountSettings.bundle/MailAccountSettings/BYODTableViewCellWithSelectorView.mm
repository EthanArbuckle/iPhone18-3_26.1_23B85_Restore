@interface BYODTableViewCellWithSelectorView
- (BYODTableViewCellWithSelectorView)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)awakeFromNib;
@end

@implementation BYODTableViewCellWithSelectorView

- (BYODTableViewCellWithSelectorView)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v39.receiver = self;
  v39.super_class = BYODTableViewCellWithSelectorView;
  v4 = [(BYODTableViewCellWithSelectorView *)&v39 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [UIImageSymbolConfiguration configurationWithPointSize:23.0];
    v6 = objc_alloc_init(UILabel);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v6;

    v8 = v4->_titleLabel;
    v9 = +[UIColor blackColor];
    [(UILabel *)v8 setTextColor:v9];

    v10 = [UIImage systemImageNamed:@"circle" withConfiguration:v5];
    checkmarkImage = v4->_checkmarkImage;
    v4->_checkmarkImage = v10;

    v12 = objc_alloc_init(UIButton);
    selectButton = v4->_selectButton;
    v4->_selectButton = v12;

    [(UIButton *)v4->_selectButton setBackgroundImage:v4->_checkmarkImage forState:0];
    v14 = v4->_selectButton;
    v15 = +[UIColor lightGrayColor];
    [(UIButton *)v14 setTintColor:v15];

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v4->_selectButton setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(BYODTableViewCellWithSelectorView *)v4 contentView];
    [contentView addSubview:v4->_titleLabel];

    contentView2 = [(BYODTableViewCellWithSelectorView *)v4 contentView];
    [contentView2 addSubview:v4->_selectButton];

    leadingAnchor = [(UILabel *)v4->_titleLabel leadingAnchor];
    contentView3 = [(BYODTableViewCellWithSelectorView *)v4 contentView];
    leadingAnchor2 = [contentView3 leadingAnchor];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
    [v21 setActive:1];

    topAnchor = [(UILabel *)v4->_titleLabel topAnchor];
    contentView4 = [(BYODTableViewCellWithSelectorView *)v4 contentView];
    topAnchor2 = [contentView4 topAnchor];
    v25 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
    [v25 setActive:1];

    bottomAnchor = [(UILabel *)v4->_titleLabel bottomAnchor];
    contentView5 = [(BYODTableViewCellWithSelectorView *)v4 contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
    [v29 setActive:1];

    trailingAnchor = [(UIButton *)v4->_selectButton trailingAnchor];
    contentView6 = [(BYODTableViewCellWithSelectorView *)v4 contentView];
    trailingAnchor2 = [contentView6 trailingAnchor];
    v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-10.0];
    [v33 setActive:1];

    centerYAnchor = [(UIButton *)v4->_selectButton centerYAnchor];
    contentView7 = [(BYODTableViewCellWithSelectorView *)v4 contentView];
    centerYAnchor2 = [contentView7 centerYAnchor];
    v37 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:0.0];
    [v37 setActive:1];
  }

  return v4;
}

- (void)awakeFromNib
{
  v2.receiver = self;
  v2.super_class = BYODTableViewCellWithSelectorView;
  [(BYODTableViewCellWithSelectorView *)&v2 awakeFromNib];
}

@end