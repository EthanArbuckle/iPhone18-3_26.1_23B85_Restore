@interface RAPDirectionsStepsListDataSource
- (RAPDirectionsStepsListDataSource)init;
- (RAPDirectionsStepsListDelegate)rapDelegate;
- (double)_trailingViewWidth;
- (id)_rapDisclosureViewForCell:(id)cell routeStep:(id)step;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)trailingViewForInstructionIncorrectView:(id)view;
- (unint64_t)routeStepIndexForRowIndex:(unint64_t)index;
- (void)_attachDisclosureViewToCell:(id)cell routeStep:(id)step;
- (void)setOptions:(unint64_t)options;
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

- (id)_rapDisclosureViewForCell:(id)cell routeStep:(id)step
{
  stepCopy = step;
  v6 = [[RAPInstructionIncorrectView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(RAPInstructionIncorrectView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v7) = 1148846080;
  [(RAPInstructionIncorrectView *)v6 setContentCompressionResistancePriority:0 forAxis:v7];
  rapDelegate = [(RAPDirectionsStepsListDataSource *)self rapDelegate];
  LODWORD(self) = [rapDelegate RAPDirectionsStepsList:self shouldShowFlagForStep:stepCopy listItem:0];

  flagView = [(RAPInstructionIncorrectView *)v6 flagView];
  [flagView setHidden:self ^ 1];

  [(RAPInstructionIncorrectView *)v6 setDisplayMode:0];

  return v6;
}

- (id)trailingViewForInstructionIncorrectView:(id)view
{
  if (view)
  {
    viewCopy = view;
    v4 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 addSubview:viewCopy];
    leadingAnchor = [viewCopy leadingAnchor];
    leadingAnchor2 = [v4 leadingAnchor];
    v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v13[0] = v7;
    trailingAnchor = [viewCopy trailingAnchor];

    trailingAnchor2 = [v4 trailingAnchor];
    v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
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

- (void)_attachDisclosureViewToCell:(id)cell routeStep:(id)step
{
  cellCopy = cell;
  v6 = [(RAPDirectionsStepsListDataSource *)self _rapDisclosureViewForCell:cellCopy routeStep:step];
  v7 = [(RAPDirectionsStepsListDataSource *)self trailingViewForInstructionIncorrectView:v6];
  [cellCopy setTrailingView:v7];
  trailingView = [cellCopy trailingView];

  if (trailingView)
  {
    trailingView2 = [cellCopy trailingView];
    centerYAnchor = [v6 centerYAnchor];
    centerYAnchor2 = [trailingView2 centerYAnchor];
    v12 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v12 setActive:1];
  }
}

- (unint64_t)routeStepIndexForRowIndex:(unint64_t)index
{
  v6.receiver = self;
  v6.super_class = RAPDirectionsStepsListDataSource;
  v4 = [(DirectionsStepsListDataSource *)&v6 routeStepIndexForRowIndex:index];
  return v4 - [(DirectionsStepsListDataSource *)self indexOfFirstDisplayedStep];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = RAPDirectionsStepsListDataSource;
  v7 = [(DirectionsStepsListDataSource *)&v14 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = +[UIColor secondarySystemGroupedBackgroundColor];
  contentView = [v7 contentView];
  [contentView setBackgroundColor:v8];

  v10 = +[UIColor secondarySystemGroupedBackgroundColor];
  [v7 setBackgroundColor:v10];

  objc_opt_class();
  LOBYTE(v10) = objc_opt_isKindOfClass();
  v11 = v7;
  if (v10)
  {
    v12 = [(DirectionsStepsListDataSource *)self routeStepForIndexPath:pathCopy];
    [(RAPDirectionsStepsListDataSource *)self _attachDisclosureViewToCell:v11 routeStep:v12];
  }

  return v11;
}

- (void)setOptions:(unint64_t)options
{
  v3.receiver = self;
  v3.super_class = RAPDirectionsStepsListDataSource;
  [(DirectionsStepsListDataSource *)&v3 setOptions:options & 3];
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [NSBundle mainBundle:view];
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