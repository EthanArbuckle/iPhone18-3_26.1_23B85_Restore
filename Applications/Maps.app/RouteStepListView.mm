@interface RouteStepListView
+ (double)heightForItem:(id)a3 width:(double)a4 maximumHeight:(double)a5;
- (BOOL)shouldUseTextToBottomConstraint;
- (RouteStepListView)initWithFrame:(CGRect)a3;
- (void)_updateHairline;
- (void)setItem:(id)a3;
- (void)setShouldUseTextToBottomConstraint:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation RouteStepListView

- (void)traitCollectionDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = RouteStepListView;
  v4 = a3;
  [(RouteStepListView *)&v10 traitCollectionDidChange:v4];
  v5 = [(RouteStepListView *)self traitCollection:v10.receiver];
  [v5 displayScale];
  v7 = v6;
  [v4 displayScale];
  v9 = v8;

  if (v7 != v9)
  {
    [(RouteStepListView *)self _updateHairline];
  }
}

- (void)_updateHairline
{
  v3 = [(UIView *)self->_hairlineView traitCollection];
  [v3 displayScale];
  v5 = v4;

  v6 = 1.0;
  if (v5 > 0.0)
  {
    v6 = 1.0 / v5;
  }

  hairlineHeightConstraint = self->_hairlineHeightConstraint;

  [(NSLayoutConstraint *)hairlineHeightConstraint setConstant:v6];
}

- (void)setItem:(id)a3
{
  v5 = a3;
  if (self->_item != v5)
  {
    v10 = v5;
    objc_storeStrong(&self->_item, a3);
    if (v10)
    {
      v6 = [(RouteStepItem *)v10 showsHairline]^ 1;
    }

    else
    {
      v6 = 1;
    }

    [(UIView *)self->_hairlineView setHidden:v6];
    v7 = [(RouteStepItem *)v10 metrics];
    v8 = [v7 hairlineColor];
    [(UIView *)self->_hairlineView setBackgroundColor:v8];

    [(RouteStepItem *)v10 hairlineLeadingInset];
    [(NSLayoutConstraint *)self->_hairlineLeadingConstraint setConstant:?];
    [(RouteStepItem *)v10 hairlineTrailingInset];
    [(NSLayoutConstraint *)self->_hairlineTrailingConstraint setConstant:-v9];
    v5 = v10;
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

- (void)setShouldUseTextToBottomConstraint:(BOOL)a3
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

- (RouteStepListView)initWithFrame:(CGRect)a3
{
  v22.receiver = self;
  v22.super_class = RouteStepListView;
  v3 = [(RouteStepListView *)&v22 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    hairlineView = v3->_hairlineView;
    v3->_hairlineView = v4;

    [(UIView *)v3->_hairlineView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(RouteStepListView *)v3 addSubview:v3->_hairlineView];
    v6 = [(UIView *)v3->_hairlineView leadingAnchor];
    v7 = [(RouteStepListView *)v3 leadingAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];
    hairlineLeadingConstraint = v3->_hairlineLeadingConstraint;
    v3->_hairlineLeadingConstraint = v8;

    v10 = [(UIView *)v3->_hairlineView trailingAnchor];
    v11 = [(RouteStepListView *)v3 trailingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    hairlineTrailingConstraint = v3->_hairlineTrailingConstraint;
    v3->_hairlineTrailingConstraint = v12;

    v14 = [(UIView *)v3->_hairlineView heightAnchor];
    v15 = [v14 constraintEqualToConstant:1.0];
    hairlineHeightConstraint = v3->_hairlineHeightConstraint;
    v3->_hairlineHeightConstraint = v15;

    v23[0] = v3->_hairlineLeadingConstraint;
    v23[1] = v3->_hairlineTrailingConstraint;
    v23[2] = v3->_hairlineHeightConstraint;
    v17 = [(UIView *)v3->_hairlineView bottomAnchor];
    v18 = [(RouteStepListView *)v3 bottomAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    v23[3] = v19;
    v20 = [NSArray arrayWithObjects:v23 count:4];
    [NSLayoutConstraint activateConstraints:v20];

    [(RouteStepListView *)v3 _updateHairline];
  }

  return v3;
}

+ (double)heightForItem:(id)a3 width:(double)a4 maximumHeight:(double)a5
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