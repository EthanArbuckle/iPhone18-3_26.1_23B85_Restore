@interface RouteStepListView
+ (double)heightForItem:(id)item width:(double)width maximumHeight:(double)height;
- (BOOL)shouldUseTextToBottomConstraint;
- (RouteStepListView)initWithFrame:(CGRect)frame;
- (void)_updateHairline;
- (void)setItem:(id)item;
- (void)setShouldUseTextToBottomConstraint:(BOOL)constraint;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation RouteStepListView

- (void)traitCollectionDidChange:(id)change
{
  v10.receiver = self;
  v10.super_class = RouteStepListView;
  changeCopy = change;
  [(RouteStepListView *)&v10 traitCollectionDidChange:changeCopy];
  v5 = [(RouteStepListView *)self traitCollection:v10.receiver];
  [v5 displayScale];
  v7 = v6;
  [changeCopy displayScale];
  v9 = v8;

  if (v7 != v9)
  {
    [(RouteStepListView *)self _updateHairline];
  }
}

- (void)_updateHairline
{
  traitCollection = [(UIView *)self->_hairlineView traitCollection];
  [traitCollection displayScale];
  v5 = v4;

  v6 = 1.0;
  if (v5 > 0.0)
  {
    v6 = 1.0 / v5;
  }

  hairlineHeightConstraint = self->_hairlineHeightConstraint;

  [(NSLayoutConstraint *)hairlineHeightConstraint setConstant:v6];
}

- (void)setItem:(id)item
{
  itemCopy = item;
  if (self->_item != itemCopy)
  {
    v10 = itemCopy;
    objc_storeStrong(&self->_item, item);
    if (v10)
    {
      v6 = [(RouteStepItem *)v10 showsHairline]^ 1;
    }

    else
    {
      v6 = 1;
    }

    [(UIView *)self->_hairlineView setHidden:v6];
    metrics = [(RouteStepItem *)v10 metrics];
    hairlineColor = [metrics hairlineColor];
    [(UIView *)self->_hairlineView setBackgroundColor:hairlineColor];

    [(RouteStepItem *)v10 hairlineLeadingInset];
    [(NSLayoutConstraint *)self->_hairlineLeadingConstraint setConstant:?];
    [(RouteStepItem *)v10 hairlineTrailingInset];
    [(NSLayoutConstraint *)self->_hairlineTrailingConstraint setConstant:-v9];
    itemCopy = v10;
  }
}

- (BOOL)shouldUseTextToBottomConstraint
{
  v2 = sub_10006D178();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [NSString stringWithFormat:@"Subclass should override"];
    v7 = 136315906;
    v8 = "[RouteStepListView shouldUseTextToBottomConstraint]";
    v9 = 2080;
    v10 = "RouteStepListCell.m";
    v11 = 1024;
    v12 = 60;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly! '%@'", &v7, 0x26u);
  }

  if (sub_100E03634())
  {
    v4 = sub_10006D178();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = +[NSThread callStackSymbols];
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%@", &v7, 0xCu);
    }
  }

  return 0;
}

- (void)setShouldUseTextToBottomConstraint:(BOOL)constraint
{
  v3 = sub_10006D178();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [NSString stringWithFormat:@"Subclass should override"];
    v7 = 136315906;
    v8 = "[RouteStepListView setShouldUseTextToBottomConstraint:]";
    v9 = 2080;
    v10 = "RouteStepListCell.m";
    v11 = 1024;
    v12 = 54;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly! '%@'", &v7, 0x26u);
  }

  if (sub_100E03634())
  {
    v5 = sub_10006D178();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = +[NSThread callStackSymbols];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@", &v7, 0xCu);
    }
  }
}

- (RouteStepListView)initWithFrame:(CGRect)frame
{
  v22.receiver = self;
  v22.super_class = RouteStepListView;
  v3 = [(RouteStepListView *)&v22 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    hairlineView = v3->_hairlineView;
    v3->_hairlineView = v4;

    [(UIView *)v3->_hairlineView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(RouteStepListView *)v3 addSubview:v3->_hairlineView];
    leadingAnchor = [(UIView *)v3->_hairlineView leadingAnchor];
    leadingAnchor2 = [(RouteStepListView *)v3 leadingAnchor];
    v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    hairlineLeadingConstraint = v3->_hairlineLeadingConstraint;
    v3->_hairlineLeadingConstraint = v8;

    trailingAnchor = [(UIView *)v3->_hairlineView trailingAnchor];
    trailingAnchor2 = [(RouteStepListView *)v3 trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    hairlineTrailingConstraint = v3->_hairlineTrailingConstraint;
    v3->_hairlineTrailingConstraint = v12;

    heightAnchor = [(UIView *)v3->_hairlineView heightAnchor];
    v15 = [heightAnchor constraintEqualToConstant:1.0];
    hairlineHeightConstraint = v3->_hairlineHeightConstraint;
    v3->_hairlineHeightConstraint = v15;

    v23[0] = v3->_hairlineLeadingConstraint;
    v23[1] = v3->_hairlineTrailingConstraint;
    v23[2] = v3->_hairlineHeightConstraint;
    bottomAnchor = [(UIView *)v3->_hairlineView bottomAnchor];
    bottomAnchor2 = [(RouteStepListView *)v3 bottomAnchor];
    v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v23[3] = v19;
    v20 = [NSArray arrayWithObjects:v23 count:4];
    [NSLayoutConstraint activateConstraints:v20];

    [(RouteStepListView *)v3 _updateHairline];
  }

  return v3;
}

+ (double)heightForItem:(id)item width:(double)width maximumHeight:(double)height
{
  v5 = sub_10006D178();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [NSString stringWithFormat:@"Subclass should override"];
    v10 = 136315906;
    v11 = "+[RouteStepListView heightForItem:width:maximumHeight:]";
    v12 = 2080;
    v13 = "RouteStepListCell.m";
    v14 = 1024;
    v15 = 66;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly! '%@'", &v10, 0x26u);
  }

  if (sub_100E03634())
  {
    v7 = sub_10006D178();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = +[NSThread callStackSymbols];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", &v10, 0xCu);
    }
  }

  return 0.0;
}

@end