@interface MacRAPLookAroundBaseViewController
- (void)setupHeaderViewWithLocationInfo:(id)a3 tableView:(id)a4;
@end

@implementation MacRAPLookAroundBaseViewController

- (void)setupHeaderViewWithLocationInfo:(id)a3 tableView:(id)a4
{
  v32 = a4;
  v33 = [TwoLinesContentViewModelComposer cellModelForLocationInfo:a3];
  v5 = objc_alloc_init(TwoLinesContentView);
  [(TwoLinesContentView *)v5 setViewModel:v33];
  [(TwoLinesContentView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = objc_alloc_init(UIView);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 addSubview:v5];
  v31 = [(TwoLinesContentView *)v5 leadingAnchor];
  v30 = [v6 leadingAnchor];
  v29 = [v31 constraintEqualToAnchor:v30 constant:30.0];
  v35[0] = v29;
  v28 = [(TwoLinesContentView *)v5 trailingAnchor];
  v27 = [v6 trailingAnchor];
  v7 = [v28 constraintEqualToAnchor:v27 constant:-30.0];
  v35[1] = v7;
  v8 = [(TwoLinesContentView *)v5 topAnchor];
  v9 = [v6 topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:5.0];
  v35[2] = v10;
  v11 = [(TwoLinesContentView *)v5 bottomAnchor];
  v12 = [v6 bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:-10.0];
  v35[3] = v13;
  v14 = [NSArray arrayWithObjects:v35 count:4];
  [NSLayoutConstraint activateConstraints:v14];

  [v32 setTableHeaderView:v6];
  v15 = [v32 tableHeaderView];
  [v15 setNeedsLayout];

  v16 = [v32 tableHeaderView];
  [v16 layoutIfNeeded];

  [v6 frame];
  v18 = v17;
  v20 = v19;
  [v6 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  [v6 setFrame:{v18, v20, v21, v22}];
  [v32 setTableHeaderView:v6];
  v23 = [v6 widthAnchor];
  v24 = [v32 widthAnchor];

  v25 = [v23 constraintEqualToAnchor:v24];
  v34 = v25;
  v26 = [NSArray arrayWithObjects:&v34 count:1];
  [NSLayoutConstraint activateConstraints:v26];
}

@end