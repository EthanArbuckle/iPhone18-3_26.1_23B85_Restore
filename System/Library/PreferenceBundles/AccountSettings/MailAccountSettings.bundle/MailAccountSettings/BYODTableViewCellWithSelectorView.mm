@interface BYODTableViewCellWithSelectorView
- (BYODTableViewCellWithSelectorView)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)awakeFromNib;
@end

@implementation BYODTableViewCellWithSelectorView

- (BYODTableViewCellWithSelectorView)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v39.receiver = self;
  v39.super_class = BYODTableViewCellWithSelectorView;
  v4 = [(BYODTableViewCellWithSelectorView *)&v39 initWithStyle:a3 reuseIdentifier:a4];
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
    v16 = [(BYODTableViewCellWithSelectorView *)v4 contentView];
    [v16 addSubview:v4->_titleLabel];

    v17 = [(BYODTableViewCellWithSelectorView *)v4 contentView];
    [v17 addSubview:v4->_selectButton];

    v18 = [(UILabel *)v4->_titleLabel leadingAnchor];
    v19 = [(BYODTableViewCellWithSelectorView *)v4 contentView];
    v20 = [v19 leadingAnchor];
    v21 = [v18 constraintEqualToAnchor:v20 constant:20.0];
    [v21 setActive:1];

    v22 = [(UILabel *)v4->_titleLabel topAnchor];
    v23 = [(BYODTableViewCellWithSelectorView *)v4 contentView];
    v24 = [v23 topAnchor];
    v25 = [v22 constraintEqualToAnchor:v24 constant:0.0];
    [v25 setActive:1];

    v26 = [(UILabel *)v4->_titleLabel bottomAnchor];
    v27 = [(BYODTableViewCellWithSelectorView *)v4 contentView];
    v28 = [v27 bottomAnchor];
    v29 = [v26 constraintEqualToAnchor:v28 constant:0.0];
    [v29 setActive:1];

    v30 = [(UIButton *)v4->_selectButton trailingAnchor];
    v31 = [(BYODTableViewCellWithSelectorView *)v4 contentView];
    v32 = [v31 trailingAnchor];
    v33 = [v30 constraintEqualToAnchor:v32 constant:-10.0];
    [v33 setActive:1];

    v34 = [(UIButton *)v4->_selectButton centerYAnchor];
    v35 = [(BYODTableViewCellWithSelectorView *)v4 contentView];
    v36 = [v35 centerYAnchor];
    v37 = [v34 constraintEqualToAnchor:v36 constant:0.0];
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