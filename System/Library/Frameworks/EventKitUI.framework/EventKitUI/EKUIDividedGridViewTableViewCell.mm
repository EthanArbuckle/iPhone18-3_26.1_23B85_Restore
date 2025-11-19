@interface EKUIDividedGridViewTableViewCell
- (CGRect)_separatorFrame;
- (EKUIDividedGridViewTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 gridViewType:(int64_t)a5 buttonTitles:(id)a6 cellBackgroundColor:(id)a7;
- (void)layoutSubviews;
@end

@implementation EKUIDividedGridViewTableViewCell

- (EKUIDividedGridViewTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 gridViewType:(int64_t)a5 buttonTitles:(id)a6 cellBackgroundColor:(id)a7
{
  v50[2] = *MEMORY[0x1E69E9840];
  v12 = a6;
  v13 = a7;
  v48.receiver = self;
  v48.super_class = EKUIDividedGridViewTableViewCell;
  v14 = [(EKUIDividedGridViewTableViewCell *)&v48 initWithStyle:a3 reuseIdentifier:a4];
  if (v14)
  {
    v15 = [[EKUIDividedGridViewController alloc] initWithType:a5 buttonTitles:v12 cellBackgroundColor:v13];
    gridViewController = v14->_gridViewController;
    v14->_gridViewController = v15;

    v17 = [(EKUIDividedGridViewController *)v14->_gridViewController view];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = [(EKUIDividedGridViewTableViewCell *)v14 contentView];
    [v18 addSubview:v17];

    v19 = [(EKUIDividedGridViewTableViewCell *)v14 contentView];
    v20 = MEMORY[0x1E696ACD8];
    v21 = [(EKUIDividedGridViewTableViewCell *)v14 contentView];
    v22 = [v20 constraintWithItem:v21 attribute:9 relatedBy:0 toItem:v17 attribute:9 multiplier:1.0 constant:0.0];
    [v19 addConstraint:v22];

    v23 = [(EKUIDividedGridViewTableViewCell *)v14 contentView];
    [v23 setPreservesSuperviewLayoutMargins:1];

    [(EKUIDividedGridViewTableViewCell *)v14 setPreservesSuperviewLayoutMargins:1];
    v24 = [v17 leadingAnchor];
    v25 = [(EKUIDividedGridViewTableViewCell *)v14 contentView];
    v26 = [v25 safeAreaLayoutGuide];
    v27 = [v26 leadingAnchor];
    v28 = [v24 constraintEqualToAnchor:v27];

    v29 = [v17 trailingAnchor];
    v30 = [(EKUIDividedGridViewTableViewCell *)v14 contentView];
    v31 = [v30 safeAreaLayoutGuide];
    v32 = [v31 trailingAnchor];
    v33 = [v29 constraintEqualToAnchor:v32];

    v34 = MEMORY[0x1E696ACD8];
    v50[0] = v28;
    v50[1] = v33;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
    [v34 activateConstraints:v35];

    v36 = [(EKUIDividedGridViewTableViewCell *)v14 contentView];
    v37 = [MEMORY[0x1E696ACD8] constraintWithItem:v17 attribute:7 relatedBy:-1 toItem:0 attribute:0 multiplier:1.0 constant:100000.0];
    [v36 addConstraint:v37];

    v38 = MEMORY[0x1E696ACD8];
    v39 = [(EKUIDividedGridViewTableViewCell *)v14 contentView];
    v40 = [v38 constraintWithItem:v39 attribute:8 relatedBy:1 toItem:v17 attribute:8 multiplier:1.0 constant:0.0];

    LODWORD(v41) = 1148829696;
    [v40 setPriority:v41];
    v42 = MEMORY[0x1E696ACD8];
    v43 = [(EKUIDividedGridViewTableViewCell *)v14 contentView];
    v44 = [v42 constraintWithItem:v43 attribute:3 relatedBy:0 toItem:v17 attribute:3 multiplier:1.0 constant:0.0];

    v45 = [(EKUIDividedGridViewTableViewCell *)v14 contentView];
    v49[0] = v40;
    v49[1] = v44;
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
    [v45 addConstraints:v46];
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
    v3 = [(EKUIDividedGridViewTableViewCell *)self gridViewController];
    [v3 setPreferredWidth:100000.0];
  }

  else
  {
    [(EKUIDividedGridViewTableViewCell *)self bounds];
    Width = CGRectGetWidth(v11);
    [(EKUIDividedGridViewTableViewCell *)self safeAreaInsets];
    v6 = v5;
    [(EKUIDividedGridViewTableViewCell *)self safeAreaInsets];
    v8 = v6 + v7;
    v9 = [(EKUIDividedGridViewTableViewCell *)self gridViewController];
    [v9 setPreferredWidth:Width];

    v3 = [(EKUIDividedGridViewTableViewCell *)self gridViewController];
    [v3 setPreferredInset:v8];
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