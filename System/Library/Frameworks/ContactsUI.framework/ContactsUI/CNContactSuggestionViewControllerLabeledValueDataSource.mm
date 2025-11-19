@interface CNContactSuggestionViewControllerLabeledValueDataSource
- (CNContactSuggestionViewControllerLabeledValueDataSource)initWithLabeledValue:(id)a3;
- (NSString)appName;
@end

@implementation CNContactSuggestionViewControllerLabeledValueDataSource

- (NSString)appName
{
  v2 = [(CNContactSuggestionViewControllerLabeledValueDataSource *)self labeledValue];
  v3 = [v2 valueOrigin];
  v4 = [v3 localizedApplicationName];

  return v4;
}

- (CNContactSuggestionViewControllerLabeledValueDataSource)initWithLabeledValue:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNContactSuggestionViewControllerLabeledValueDataSource;
  v6 = [(CNContactSuggestionViewControllerLabeledValueDataSource *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_labeledValue, a3);
    v8 = v7;
  }

  return v7;
}

@end