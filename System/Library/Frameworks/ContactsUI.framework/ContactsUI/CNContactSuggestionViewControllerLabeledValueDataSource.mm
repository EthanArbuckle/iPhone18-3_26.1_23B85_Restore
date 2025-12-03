@interface CNContactSuggestionViewControllerLabeledValueDataSource
- (CNContactSuggestionViewControllerLabeledValueDataSource)initWithLabeledValue:(id)value;
- (NSString)appName;
@end

@implementation CNContactSuggestionViewControllerLabeledValueDataSource

- (NSString)appName
{
  labeledValue = [(CNContactSuggestionViewControllerLabeledValueDataSource *)self labeledValue];
  valueOrigin = [labeledValue valueOrigin];
  localizedApplicationName = [valueOrigin localizedApplicationName];

  return localizedApplicationName;
}

- (CNContactSuggestionViewControllerLabeledValueDataSource)initWithLabeledValue:(id)value
{
  valueCopy = value;
  v10.receiver = self;
  v10.super_class = CNContactSuggestionViewControllerLabeledValueDataSource;
  v6 = [(CNContactSuggestionViewControllerLabeledValueDataSource *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_labeledValue, value);
    v8 = v7;
  }

  return v7;
}

@end