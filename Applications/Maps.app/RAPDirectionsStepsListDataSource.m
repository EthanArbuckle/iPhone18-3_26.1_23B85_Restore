@interface RAPDirectionsStepsListDataSource
- (RAPDirectionsStepsListDataSource)init;
- (RAPDirectionsStepsListDelegate)rapDelegate;
- (double)_trailingViewWidth;
- (id)_rapDisclosureViewForCell:(id)a3 routeStep:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)trailingViewForInstructionIncorrectView:(id)a3;
- (unint64_t)routeStepIndexForRowIndex:(unint64_t)a3;
- (void)_attachDisclosureViewToCell:(id)a3 routeStep:(id)a4;
- (void)setOptions:(unint64_t)a3;
@end

@implementation RAPDirectionsStepsListDataSource

- (RAPDirectionsStepsListDelegate)rapDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_rapDelegate);

  return WeakRetained;
}

- (double)_trailingViewWidth
{
  result = self->_dummyTrailingViewWidth;
  if (result == 1.79769313e308)
  {
    v4 = [(RAPDirectionsStepsListDataSource *)self _rapDisclosureViewForCell:0 routeStep:0];
    v5 = [(RAPDirectionsStepsListDataSource *)self trailingViewForInstructionIncorrectView:v4];
    [v5 _mapkit_fittingSize];
    self->_dummyTrailingViewWidth = v6;

    return self->_dummyTrailingViewWidth;
  }

  return result;
}

- (id)_rapDisclosureViewForCell:(id)a3 routeStep:(id)a4
{
  v5 = a4;
  v6 = [[RAPInstructionIncorrectView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(RAPInstructionIncorrectView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v7) = 1148846080;
  [(RAPInstructionIncorrectView *)v6 setContentCompressionResistancePriority:0 forAxis:v7];
  v8 = [(RAPDirectionsStepsListDataSource *)self rapDelegate];
  LODWORD(self) = [v8 RAPDirectionsStepsList:self shouldShowFlagForStep:v5 listItem:0];

  v9 = [(RAPInstructionIncorrectView *)v6 flagView];
  [v9 setHidden:self ^ 1];

  [(RAPInstructionIncorrectView *)v6 setDisplayMode:0];

  return v6;
}

- (id)trailingViewForInstructionIncorrectView:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 addSubview:v3];
    v5 = [v3 leadingAnchor];
    v6 = [v4 leadingAnchor];
    v7 = [v5 constraintEqualToAnchor:v6];
    v13[0] = v7;
    v8 = [v3 trailingAnchor];

    v9 = [v4 trailingAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    v13[1] = v10;
    v11 = [NSArray arrayWithObjects:v13 count:2];
    [NSLayoutConstraint activateConstraints:v11];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_attachDisclosureViewToCell:(id)a3 routeStep:(id)a4
{
  v13 = a3;
  v6 = [(RAPDirectionsStepsListDataSource *)self _rapDisclosureViewForCell:v13 routeStep:a4];
  v7 = [(RAPDirectionsStepsListDataSource *)self trailingViewForInstructionIncorrectView:v6];
  [v13 setTrailingView:v7];
  v8 = [v13 trailingView];

  if (v8)
  {
    v9 = [v13 trailingView];
    v10 = [v6 centerYAnchor];
    v11 = [v9 centerYAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    [v12 setActive:1];
  }
}

- (unint64_t)routeStepIndexForRowIndex:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = RAPDirectionsStepsListDataSource;
  v4 = [(DirectionsStepsListDataSource *)&v6 routeStepIndexForRowIndex:a3];
  return v4 - [(DirectionsStepsListDataSource *)self indexOfFirstDisplayedStep];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = RAPDirectionsStepsListDataSource;
  v7 = [(DirectionsStepsListDataSource *)&v14 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = +[UIColor secondarySystemGroupedBackgroundColor];
  v9 = [v7 contentView];
  [v9 setBackgroundColor:v8];

  v10 = +[UIColor secondarySystemGroupedBackgroundColor];
  [v7 setBackgroundColor:v10];

  objc_opt_class();
  LOBYTE(v10) = objc_opt_isKindOfClass();
  v11 = v7;
  if (v10)
  {
    v12 = [(DirectionsStepsListDataSource *)self routeStepForIndexPath:v6];
    [(RAPDirectionsStepsListDataSource *)self _attachDisclosureViewToCell:v11 routeStep:v12];
  }

  return v11;
}

- (void)setOptions:(unint64_t)a3
{
  v3.receiver = self;
  v3.super_class = RAPDirectionsStepsListDataSource;
  [(DirectionsStepsListDataSource *)&v3 setOptions:a3 & 3];
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [NSBundle mainBundle:a3];
  v5 = [v4 localizedStringForKey:@"[RAP] Nav step list - Route Steps" value:@"localized string not found" table:0];

  return v5;
}

- (RAPDirectionsStepsListDataSource)init
{
  v3.receiver = self;
  v3.super_class = RAPDirectionsStepsListDataSource;
  result = [(DirectionsStepsListDataSource *)&v3 init];
  if (result)
  {
    result->_dummyTrailingViewWidth = 1.79769313e308;
  }

  return result;
}

@end