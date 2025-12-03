@interface TTRIListSummaryCell
+ (id)specifierWithViewModel:(id)model target:(id)target cell:(int64_t)cell detail:(Class)detail keyName:(id)name defaultValue:(id)value scope:(unint64_t)scope;
- (TTRIListSummaryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
@end

@implementation TTRIListSummaryCell

+ (id)specifierWithViewModel:(id)model target:(id)target cell:(int64_t)cell detail:(Class)detail keyName:(id)name defaultValue:(id)value scope:(unint64_t)scope
{
  modelCopy = model;
  valueCopy = value;
  nameCopy = name;
  targetCopy = target;
  name = [modelCopy name];
  v19 = [REMSettingsUtilities standardPreferenceSpecifierNamed:name target:targetCopy cell:cell detail:detail keyName:nameCopy defaultValue:valueCopy scope:scope];

  [v19 setObject:objc_opt_class() forKeyedSubscript:PSCellClassKey];
  subtitle = [modelCopy subtitle];
  if ([subtitle length])
  {
    subtitle2 = [modelCopy subtitle];
    [v19 setObject:subtitle2 forKeyedSubscript:@"TTRIListSummarySubtitle"];
  }

  return v19;
}

- (TTRIListSummaryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v13.receiver = self;
  v13.super_class = TTRIListSummaryCell;
  v9 = [(TTRIListSummaryCell *)&v13 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  if (v9)
  {
    v10 = [specifierCopy objectForKeyedSubscript:@"TTRIListSummarySubtitle"];
    detailTextLabel = [(TTRIListSummaryCell *)v9 detailTextLabel];
    [detailTextLabel setText:v10];
  }

  return v9;
}

@end