@interface FKATypeaheadNamesViewController
- (NSArray)items;
- (void)loadView;
- (void)setItems:(id)a3;
@end

@implementation FKATypeaheadNamesViewController

- (void)loadView
{
  v4 = objc_opt_new();
  v3 = FKALogCommon();
  [v4 setLoggingFacility:v3];

  [(FKATypeaheadNamesViewController *)self setView:v4];
}

- (void)setItems:(id)a3
{
  v4 = a3;
  v5 = [(FKATypeaheadNamesViewController *)self elementNamesView];
  [v5 setItems:v4];
}

- (NSArray)items
{
  v2 = [(FKATypeaheadNamesViewController *)self elementNamesView];
  v3 = [v2 items];

  return v3;
}

@end