@interface IntelligentCallScreeningMenuCellOption
+ (id)localizedStringForKey:(id)a3;
+ (id)optionMenuItems;
- (IntelligentCallScreeningMenuCellOption)initWithTitleKey:(id)a3 explanationKey:(id)a4 optionID:(id)a5;
@end

@implementation IntelligentCallScreeningMenuCellOption

- (IntelligentCallScreeningMenuCellOption)initWithTitleKey:(id)a3 explanationKey:(id)a4 optionID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = IntelligentCallScreeningMenuCellOption;
  v12 = [(IntelligentCallScreeningMenuCellOption *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_titleKey, a3);
    objc_storeStrong(&v13->_explanationKey, a4);
    objc_storeStrong(&v13->_optionID, a5);
  }

  return v13;
}

+ (id)localizedStringForKey:(id)a3
{
  v4 = a3;
  v5 = [NSBundle bundleForClass:a1];
  v6 = [a1 localizationTableName];
  v7 = [v5 localizedStringForKey:v4 value:&stru_84F0 table:v6];

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