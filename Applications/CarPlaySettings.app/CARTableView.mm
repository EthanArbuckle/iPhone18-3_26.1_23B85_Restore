@interface CARTableView
- (id)preferredFocusEnvironments;
@end

@implementation CARTableView

- (id)preferredFocusEnvironments
{
  objc_opt_class();
  dataSource = [(CARTableView *)self dataSource];
  if (dataSource && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = dataSource;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 preferredFocusEnvironmentsForTableView:self];
  v6 = v5;
  if (v5)
  {
    preferredFocusEnvironments = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CARTableView;
    preferredFocusEnvironments = [(CARTableView *)&v10 preferredFocusEnvironments];
  }

  v8 = preferredFocusEnvironments;

  return v8;
}

@end