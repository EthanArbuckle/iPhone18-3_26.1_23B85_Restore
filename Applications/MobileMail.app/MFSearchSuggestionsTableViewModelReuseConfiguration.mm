@interface MFSearchSuggestionsTableViewModelReuseConfiguration
- (MFSearchSuggestionsTableViewModelReuseConfiguration)initWithReuseIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (void)validate;
@end

@implementation MFSearchSuggestionsTableViewModelReuseConfiguration

- (MFSearchSuggestionsTableViewModelReuseConfiguration)initWithReuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = MFSearchSuggestionsTableViewModelReuseConfiguration;
  v5 = [(MFSearchSuggestionsTableViewModelReuseConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    reuseIdentifier = v5->_reuseIdentifier;
    v5->_reuseIdentifier = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  reuseIdentifier = [(MFSearchSuggestionsTableViewModelReuseConfiguration *)self reuseIdentifier];
  v6 = [v4 initWithReuseIdentifier:reuseIdentifier];

  cellPopulator = [(MFSearchSuggestionsTableViewModelReuseConfiguration *)self cellPopulator];
  [v6 setCellPopulator:cellPopulator];

  rowHeightCalculator = [(MFSearchSuggestionsTableViewModelReuseConfiguration *)self rowHeightCalculator];
  [v6 setRowHeightCalculator:rowHeightCalculator];

  rowSelector = [(MFSearchSuggestionsTableViewModelReuseConfiguration *)self rowSelector];
  [v6 setRowSelector:rowSelector];

  return v6;
}

- (void)validate
{
  reuseIdentifier = [(MFSearchSuggestionsTableViewModelReuseConfiguration *)self reuseIdentifier];
  if (!reuseIdentifier)
  {
    sub_10048C0C0();
  }

  cellPopulator = [(MFSearchSuggestionsTableViewModelReuseConfiguration *)self cellPopulator];
  if (!cellPopulator)
  {
    sub_10048C094();
  }

  rowHeightCalculator = [(MFSearchSuggestionsTableViewModelReuseConfiguration *)self rowHeightCalculator];
  if (!rowHeightCalculator)
  {
    sub_10048C068();
  }

  rowSelector = [(MFSearchSuggestionsTableViewModelReuseConfiguration *)self rowSelector];
  if (!rowSelector)
  {
    sub_10048C03C();
  }
}

@end