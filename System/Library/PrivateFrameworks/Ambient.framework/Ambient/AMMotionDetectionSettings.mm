@interface AMMotionDetectionSettings
+ (id)_keyPathForTriggerTypeName:(id)name;
+ (id)settingsControllerModule;
+ (void)_enumerateTriggerTypes:(id)types;
- (unint64_t)enabledTriggers;
- (void)setDefaultValues;
- (void)setEnabledTriggers:(unint64_t)triggers;
@end

@implementation AMMotionDetectionSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = AMMotionDetectionSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(AMMotionDetectionSettings *)self setEnabledTriggers:128];
}

+ (id)settingsControllerModule
{
  v25[1] = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v4 = objc_opt_class();
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __53__AMMotionDetectionSettings_settingsControllerModule__block_invoke;
  v21 = &unk_278C73638;
  v22 = array;
  selfCopy = self;
  v5 = array;
  [v4 _enumerateTriggerTypes:&v18];
  v6 = [MEMORY[0x277D43218] sectionWithRows:v5 title:{@"Enabled Triggers", v18, v19, v20, v21}];
  v7 = MEMORY[0x277D431A8];
  v8 = [MEMORY[0x277D43238] actionWithSettingsKeyPath:0];
  v9 = [v7 rowWithTitle:@"Restore Defaults" action:v8];

  v10 = MEMORY[0x277D43218];
  v25[0] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  v12 = [v10 sectionWithRows:v11];

  v13 = MEMORY[0x277D43218];
  v24[0] = v6;
  v24[1] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v15 = [v13 moduleWithTitle:@"Motion Detection" contents:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void __53__AMMotionDetectionSettings_settingsControllerModule__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D432A0];
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 _keyPathForTriggerTypeName:v5];
  v7 = [v3 rowWithTitle:v5 valueKeyPath:v6];

  [*(a1 + 32) addObject:v7];
}

+ (id)_keyPathForTriggerTypeName:(id)name
{
  v3 = MEMORY[0x277CCA900];
  nameCopy = name;
  whitespaceCharacterSet = [v3 whitespaceCharacterSet];
  v6 = [nameCopy componentsSeparatedByCharactersInSet:whitespaceCharacterSet];

  v7 = [v6 componentsJoinedByString:&stru_285176190];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"triggerType%@", v7];

  return v8;
}

- (unint64_t)enabledTriggers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = objc_opt_class();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__AMMotionDetectionSettings_enabledTriggers__block_invoke;
  v6[3] = &unk_278C73660;
  v6[4] = self;
  v6[5] = &v7;
  [v3 _enumerateTriggerTypes:v6];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __44__AMMotionDetectionSettings_enabledTriggers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [objc_opt_class() _keyPathForTriggerTypeName:v6];

  v8 = [v5 valueForKey:v7];
  LODWORD(v5) = [v8 BOOLValue];

  if (v5)
  {
    *(*(*(a1 + 40) + 8) + 24) |= [v9 unsignedIntegerValue];
  }
}

- (void)setEnabledTriggers:(unint64_t)triggers
{
  v5 = objc_opt_class();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__AMMotionDetectionSettings_setEnabledTriggers___block_invoke;
  v6[3] = &unk_278C73638;
  v6[4] = self;
  v6[5] = triggers;
  [v5 _enumerateTriggerTypes:v6];
}

void __48__AMMotionDetectionSettings_setEnabledTriggers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = ([a3 unsignedIntegerValue] & v5) != 0;
  v8 = *(a1 + 32);
  v11 = [MEMORY[0x277CCABB0] numberWithBool:v7];
  v9 = *(a1 + 32);
  v10 = [objc_opt_class() _keyPathForTriggerTypeName:v6];

  [v8 setValue:v11 forKey:v10];
}

+ (void)_enumerateTriggerTypes:(id)types
{
  v17 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [&unk_285177BB0 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(&unk_285177BB0);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:@"name"];
        v10 = [v8 objectForKeyedSubscript:@"value"];
        typesCopy[2](typesCopy, v9, v10);
      }

      v5 = [&unk_285177BB0 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end