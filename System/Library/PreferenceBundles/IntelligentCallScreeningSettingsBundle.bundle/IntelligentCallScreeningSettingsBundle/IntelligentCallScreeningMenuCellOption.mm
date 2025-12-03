@interface IntelligentCallScreeningMenuCellOption
+ (id)localizedStringForKey:(id)key;
+ (id)optionMenuItems;
- (IntelligentCallScreeningMenuCellOption)initWithTitleKey:(id)key explanationKey:(id)explanationKey optionID:(id)d;
@end

@implementation IntelligentCallScreeningMenuCellOption

- (IntelligentCallScreeningMenuCellOption)initWithTitleKey:(id)key explanationKey:(id)explanationKey optionID:(id)d
{
  keyCopy = key;
  explanationKeyCopy = explanationKey;
  dCopy = d;
  v15.receiver = self;
  v15.super_class = IntelligentCallScreeningMenuCellOption;
  v12 = [(IntelligentCallScreeningMenuCellOption *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_titleKey, key);
    objc_storeStrong(&v13->_explanationKey, explanationKey);
    objc_storeStrong(&v13->_optionID, d);
  }

  return v13;
}

+ (id)localizedStringForKey:(id)key
{
  keyCopy = key;
  v5 = [NSBundle bundleForClass:self];
  localizationTableName = [self localizationTableName];
  v7 = [v5 localizedStringForKey:keyCopy value:&stru_84F0 table:localizationTableName];

  return v7;
}

+ (id)optionMenuItems
{
  if (qword_CA58 != -1)
  {
    sub_2CB0();
  }

  v3 = qword_CA50;

  return v3;
}

@end