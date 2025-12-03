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
  v4 = MEMORY[0x277CCA8D8];
  keyCopy = key;
  v6 = [v4 bundleForClass:self];
  localizationTableName = [self localizationTableName];
  v8 = [v6 localizedStringForKey:keyCopy value:&stru_284EEA450 table:localizationTableName];

  return v8;
}

+ (id)optionMenuItems
{
  if (optionMenuItems_onceToken[0] != -1)
  {
    +[IntelligentCallScreeningMenuCellOption optionMenuItems];
  }

  v3 = optionMenuItems_optionMenuItems;

  return v3;
}

void __57__IntelligentCallScreeningMenuCellOption_optionMenuItems__block_invoke()
{
  v12[3] = *MEMORY[0x277D85DE8];
  v0 = [IntelligentCallScreeningMenuCellOption alloc];
  v1 = [&unk_284EEBF78 stringValue];
  v2 = [(IntelligentCallScreeningMenuCellOption *)v0 initWithTitleKey:@"INTELLIGENT_CALL_SCREENING_OPTION_NEVER_TITLE" explanationKey:@"INTELLIGENT_CALL_SCREENING_OPTION_NEVER_EXPLANATION" optionID:v1];
  v3 = [IntelligentCallScreeningMenuCellOption alloc];
  v4 = [&unk_284EEBF90 stringValue];
  v5 = [(IntelligentCallScreeningMenuCellOption *)v3 initWithTitleKey:@"INTELLIGENT_CALL_SCREENING_OPTION_ASK_TITLE" explanationKey:@"INTELLIGENT_CALL_SCREENING_OPTION_ASK_EXPLANATION" optionID:v4];
  v12[1] = v5;
  v6 = [IntelligentCallScreeningMenuCellOption alloc];
  v7 = [&unk_284EEBFA8 stringValue];
  v8 = [(IntelligentCallScreeningMenuCellOption *)v6 initWithTitleKey:@"INTELLIGENT_CALL_SCREENING_OPTION_SILENCE_TITLE" explanationKey:@"INTELLIGENT_CALL_SCREENING_OPTION_SILENCE_EXPLANATION" optionID:v7];
  v12[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
  v10 = optionMenuItems_optionMenuItems;
  optionMenuItems_optionMenuItems = v9;

  v11 = *MEMORY[0x277D85DE8];
}

@end