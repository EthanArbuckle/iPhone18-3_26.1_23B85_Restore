@interface FKATypeaheadNamesViewController
- (NSArray)items;
- (void)loadView;
- (void)setItems:(id)items;
@end

@implementation FKATypeaheadNamesViewController

- (void)loadView
{
  v4 = objc_opt_new();
  v3 = FKALogCommon();
  [v4 setLoggingFacility:v3];

  [(FKATypeaheadNamesViewController *)self setView:v4];
}

- (void)setItems:(id)items
{
  itemsCopy = items;
  elementNamesView = [(FKATypeaheadNamesViewController *)self elementNamesView];
  [elementNamesView setItems:itemsCopy];
}

- (NSArray)items
{
  elementNamesView = [(FKATypeaheadNamesViewController *)self elementNamesView];
  items = [elementNamesView items];

  return items;
}

@end