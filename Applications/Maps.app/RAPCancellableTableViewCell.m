@interface RAPCancellableTableViewCell
- (RAPCancellableTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 itemKind:(int64_t)a5;
- (RAPCancellableTableViewCellDelegate)delegate;
- (void)onCancel:(id)a3;
@end

@implementation RAPCancellableTableViewCell

- (RAPCancellableTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)onCancel:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained cancelCell:self ofKind:self->_itemKind];
}

- (RAPCancellableTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 itemKind:(int64_t)a5
{
  v29.receiver = self;
  v29.super_class = RAPCancellableTableViewCell;
  v6 = [(RAPCancellableTableViewCell *)&v29 initWithStyle:a3 reuseIdentifier:a4];
  if (v6)
  {
    v7 = [[UIButton alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    cancelButton = v6->_cancelButton;
    v6->_cancelButton = v7;

    [(UIButton *)v6->_cancelButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v6->_cancelButton _setTouchInsets:-3.0, -3.0, -3.0, -3.0];
    v9 = v6->_cancelButton;
    v10 = +[UIColor labelColor];
    v11 = [v10 colorWithAlphaComponent:0.219999999];
    [(UIButton *)v9 setTintColor:v11];

    v12 = v6->_cancelButton;
    v13 = [UIImage systemImageNamed:@"xmark.circle.fill"];
    [(UIButton *)v12 setImage:v13 forState:0];

    v14 = v6->_cancelButton;
    v15 = [UIImageSymbolConfiguration configurationWithPointSize:14.0];
    [(UIButton *)v14 setPreferredSymbolConfiguration:v15 forImageInState:0];

    v6->_itemKind = a5;
    [(UIButton *)v6->_cancelButton addTarget:v6 action:"onCancel:" forControlEvents:64];
    [(RAPCancellableTableViewCell *)v6 setSelectionStyle:0];
    v16 = [(RAPCancellableTableViewCell *)v6 contentView];
    [v16 addSubview:v6->_cancelButton];

    v27 = [(UIButton *)v6->_cancelButton trailingAnchor];
    v28 = [(RAPCancellableTableViewCell *)v6 safeAreaLayoutGuide];
    v17 = [v28 trailingAnchor];
    v18 = [v27 constraintEqualToAnchor:v17 constant:-15.0];
    v30[0] = v18;
    v19 = [(UIButton *)v6->_cancelButton centerYAnchor];
    v20 = [(RAPCancellableTableViewCell *)v6 centerYAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    v30[1] = v21;
    v22 = [(UIButton *)v6->_cancelButton widthAnchor];
    v23 = [(UIButton *)v6->_cancelButton heightAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    v30[2] = v24;
    v25 = [NSArray arrayWithObjects:v30 count:3];
    [NSLayoutConstraint activateConstraints:v25];
  }

  return v6;
}

@end