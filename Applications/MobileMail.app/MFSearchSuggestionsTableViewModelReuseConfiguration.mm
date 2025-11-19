@interface MFSearchSuggestionsTableViewModelReuseConfiguration
- (MFSearchSuggestionsTableViewModelReuseConfiguration)initWithReuseIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)validate;
@end

@implementation MFSearchSuggestionsTableViewModelReuseConfiguration

- (MFSearchSuggestionsTableViewModelReuseConfiguration)initWithReuseIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MFSearchSuggestionsTableViewModelReuseConfiguration;
  v5 = [(MFSearchSuggestionsTableViewModelReuseConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    reuseIdentifier = v5->_reuseIdentifier;
    v5->_reuseIdentifier = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(MFSearchSuggestionsTableViewModelReuseConfiguration *)self reuseIdentifier];
  v6 = [v4 initWithReuseIdentifier:v5];

  v7 = [(MFSearchSuggestionsTableViewModelReuseConfiguration *)self cellPopulator];
  [v6 setCellPopulator:v7];

  v8 = [(MFSearchSuggestionsTableViewModelReuseConfiguration *)self rowHeightCalculator];
  [v6 setRowHeightCalculator:v8];

  v9 = [(MFSearchSuggestionsTableViewModelReuseConfiguration *)self rowSelector];
  [v6 setRowSelector:v9];

  return v6;
}

- (void)validate
{
  v3 = [(MFSearchSuggestionsTableViewModelReuseConfiguration *)self reuseIdentifier];
  if (!v3)
  {
    sub_10048C0C0();
  }

  v4 = [(MFSearchSuggestionsTableViewModelReuseConfiguration *)self cellPopulator];
  if (!v4)
  {
    sub_10048C094();
  }

  v5 = [(MFSearchSuggestionsTableViewModelReuseConfiguration *)self rowHeightCalculator];
  if (!v5)
  {
    sub_10048C068();
  }

  v6 = [(MFSearchSuggestionsTableViewModelReuseConfiguration *)self rowSelector];
  if (!v6)
  {
    sub_10048C03C();
  }
}

@end