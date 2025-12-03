@interface EKUIDividedGridViewTableViewCell
- (CGRect)_separatorFrame;
- (EKUIDividedGridViewTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier gridViewType:(int64_t)type buttonTitles:(id)titles cellBackgroundColor:(id)color;
- (void)layoutSubviews;
@end

@implementation EKUIDividedGridViewTableViewCell

- (EKUIDividedGridViewTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier gridViewType:(int64_t)type buttonTitles:(id)titles cellBackgroundColor:(id)color
{
  v50[2] = *MEMORY[0x1E69E9840];
  titlesCopy = titles;
  colorCopy = color;
  v48.receiver = self;
  v48.super_class = EKUIDividedGridViewTableViewCell;
  v14 = [(EKUIDividedGridViewTableViewCell *)&v48 initWithStyle:style reuseIdentifier:identifier];
  if (v14)
  {
    v15 = [[EKUIDividedGridViewController alloc] initWithType:type buttonTitles:titlesCopy cellBackgroundColor:colorCopy];
    gridViewController = v14->_gridViewController;
    v14->_gridViewController = v15;

    view = [(EKUIDividedGridViewController *)v14->_gridViewController view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(EKUIDividedGridViewTableViewCell *)v14 contentView];
    [contentView addSubview:view];

    contentView2 = [(EKUIDividedGridViewTableViewCell *)v14 contentView];
    v20 = MEMORY[0x1E696ACD8];
    contentView3 = [(EKUIDividedGridViewTableViewCell *)v14 contentView];
    v22 = [v20 constraintWithItem:contentView3 attribute:9 relatedBy:0 toItem:view attribute:9 multiplier:1.0 constant:0.0];
    [contentView2 addConstraint:v22];

    contentView4 = [(EKUIDividedGridViewTableViewCell *)v14 contentView];
    [contentView4 setPreservesSuperviewLayoutMargins:1];

    [(EKUIDividedGridViewTableViewCell *)v14 setPreservesSuperviewLayoutMargins:1];
    leadingAnchor = [view leadingAnchor];
    contentView5 = [(EKUIDividedGridViewTableViewCell *)v14 contentView];
    safeAreaLayoutGuide = [contentView5 safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
    v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

    trailingAnchor = [view trailingAnchor];
    contentView6 = [(EKUIDividedGridViewTableViewCell *)v14 contentView];
    safeAreaLayoutGuide2 = [contentView6 safeAreaLayoutGuide];
    trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
    v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

    v34 = MEMORY[0x1E696ACD8];
    v50[0] = v28;
    v50[1] = v33;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
    [v34 activateConstraints:v35];

    contentView7 = [(EKUIDividedGridViewTableViewCell *)v14 contentView];
    v37 = [MEMORY[0x1E696ACD8] constraintWithItem:view attribute:7 relatedBy:-1 toItem:0 attribute:0 multiplier:1.0 constant:100000.0];
    [contentView7 addConstraint:v37];

    v38 = MEMORY[0x1E696ACD8];
    contentView8 = [(EKUIDividedGridViewTableViewCell *)v14 contentView];
    v40 = [v38 constraintWithItem:contentView8 attribute:8 relatedBy:1 toItem:view attribute:8 multiplier:1.0 constant:0.0];

    LODWORD(v41) = 1148829696;
    [v40 setPriority:v41];
    v42 = MEMORY[0x1E696ACD8];
    contentView9 = [(EKUIDividedGridViewTableViewCell *)v14 contentView];
    v44 = [v42 constraintWithItem:contentView9 attribute:3 relatedBy:0 toItem:view attribute:3 multiplier:1.0 constant:0.0];

    contentView10 = [(EKUIDividedGridViewTableViewCell *)v14 contentView];
    v49[0] = v40;
    v49[1] = v44;
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
    [contentView10 addConstraints:v46];
  }

  return v14;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = EKUIDividedGridViewTableViewCell;
  [(EKUIDividedGridViewTableViewCell *)&v10 layoutSubviews];
  if ([(EKUIDividedGridViewTableViewCell *)self _isWiderThanMaximum])
  {
    gridViewController = [(EKUIDividedGridViewTableViewCell *)self gridViewController];
    [gridViewController setPreferredWidth:100000.0];
  }

  else
  {
    [(EKUIDividedGridViewTableViewCell *)self bounds];
    Width = CGRectGetWidth(v11);
    [(EKUIDividedGridViewTableViewCell *)self safeAreaInsets];
    v6 = v5;
    [(EKUIDividedGridViewTableViewCell *)self safeAreaInsets];
    v8 = v6 + v7;
    gridViewController2 = [(EKUIDividedGridViewTableViewCell *)self gridViewController];
    [gridViewController2 setPreferredWidth:Width];

    gridViewController = [(EKUIDividedGridViewTableViewCell *)self gridViewController];
    [gridViewController setPreferredInset:v8];
  }
}

- (CGRect)_separatorFrame
{
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  v4 = *(MEMORY[0x1E695F058] + 16);
  v5 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end