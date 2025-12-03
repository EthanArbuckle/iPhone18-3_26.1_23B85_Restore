@interface MacRAPLookAroundBaseViewController
- (void)setupHeaderViewWithLocationInfo:(id)info tableView:(id)view;
@end

@implementation MacRAPLookAroundBaseViewController

- (void)setupHeaderViewWithLocationInfo:(id)info tableView:(id)view
{
  viewCopy = view;
  v33 = [TwoLinesContentViewModelComposer cellModelForLocationInfo:info];
  v5 = objc_alloc_init(TwoLinesContentView);
  [(TwoLinesContentView *)v5 setViewModel:v33];
  [(TwoLinesContentView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = objc_alloc_init(UIView);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 addSubview:v5];
  leadingAnchor = [(TwoLinesContentView *)v5 leadingAnchor];
  leadingAnchor2 = [v6 leadingAnchor];
  v29 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:30.0];
  v35[0] = v29;
  trailingAnchor = [(TwoLinesContentView *)v5 trailingAnchor];
  trailingAnchor2 = [v6 trailingAnchor];
  v7 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-30.0];
  v35[1] = v7;
  topAnchor = [(TwoLinesContentView *)v5 topAnchor];
  topAnchor2 = [v6 topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:5.0];
  v35[2] = v10;
  bottomAnchor = [(TwoLinesContentView *)v5 bottomAnchor];
  bottomAnchor2 = [v6 bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-10.0];
  v35[3] = v13;
  v14 = [NSArray arrayWithObjects:v35 count:4];
  [NSLayoutConstraint activateConstraints:v14];

  [viewCopy setTableHeaderView:v6];
  tableHeaderView = [viewCopy tableHeaderView];
  [tableHeaderView setNeedsLayout];

  tableHeaderView2 = [viewCopy tableHeaderView];
  [tableHeaderView2 layoutIfNeeded];

  [v6 frame];
  v18 = v17;
  v20 = v19;
  [v6 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  [v6 setFrame:{v18, v20, v21, v22}];
  [viewCopy setTableHeaderView:v6];
  widthAnchor = [v6 widthAnchor];
  widthAnchor2 = [viewCopy widthAnchor];

  v25 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v34 = v25;
  v26 = [NSArray arrayWithObjects:&v34 count:1];
  [NSLayoutConstraint activateConstraints:v26];
}

@end