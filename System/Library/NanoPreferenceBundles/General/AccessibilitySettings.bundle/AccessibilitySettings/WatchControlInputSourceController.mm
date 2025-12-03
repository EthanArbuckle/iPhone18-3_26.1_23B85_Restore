@interface WatchControlInputSourceController
- (BOOL)inputSourceTypeEnabled;
- (id)enableInputSourceSpecifiers;
- (id)inputSourceTypeEnabled:(id)enabled;
- (id)specifiers;
- (unint64_t)inputSourceType;
- (void)inputSourceTypeSetEnabled:(id)enabled specifier:(id)specifier;
@end

@implementation WatchControlInputSourceController

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    array = [MEMORY[0x277CBEB18] array];
    enableInputSourceSpecifiers = [(WatchControlInputSourceController *)self enableInputSourceSpecifiers];
    v7 = enableInputSourceSpecifiers;
    v8 = MEMORY[0x277CBEBF8];
    if (enableInputSourceSpecifiers)
    {
      v9 = enableInputSourceSpecifiers;
    }

    else
    {
      v9 = MEMORY[0x277CBEBF8];
    }

    [array addObjectsFromArray:v9];

    inputSourceCustomizationSpecifiers = [(WatchControlInputSourceController *)self inputSourceCustomizationSpecifiers];
    v11 = inputSourceCustomizationSpecifiers;
    if (inputSourceCustomizationSpecifiers)
    {
      v12 = inputSourceCustomizationSpecifiers;
    }

    else
    {
      v12 = v8;
    }

    [array addObjectsFromArray:v12];

    v13 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = array;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (unint64_t)inputSourceType
{
  specifier = [(WatchControlInputSourceController *)self specifier];
  userInfo = [specifier userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"InputSource"];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (BOOL)inputSourceTypeEnabled
{
  mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
  enabledInputSourceTypes = [mEMORY[0x277D7A910] enabledInputSourceTypes];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[WatchControlInputSourceController inputSourceType](self, "inputSourceType")}];
  v6 = [enabledInputSourceTypes objectForKey:v5];
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (id)enableInputSourceSpecifiers
{
  array = [MEMORY[0x277CBEB18] array];
  emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  [(WatchControlInputSourceController *)self customizeEnableInputSourceGroupSpecifier:emptyGroupSpecifier];
  [array addObject:emptyGroupSpecifier];
  v5 = MEMORY[0x277D3FAD8];
  [(WatchControlInputSourceController *)self inputSourceType];
  v6 = WCNameForInputSourceType();
  v7 = [v5 preferenceSpecifierNamed:v6 target:self set:sel_inputSourceTypeSetEnabled_specifier_ get:sel_inputSourceTypeEnabled_ detail:0 cell:6 edit:0];
  [array addObject:v7];

  return array;
}

- (void)inputSourceTypeSetEnabled:(id)enabled specifier:(id)specifier
{
  v5 = [(WatchControlInputSourceController *)self inputSourceTypeEnabled:enabled];
  mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
  inputSourceType = [(WatchControlInputSourceController *)self inputSourceType];
  if (v5)
  {
    [mEMORY[0x277D7A910] disableInputSourceType:inputSourceType];
  }

  else
  {
    [mEMORY[0x277D7A910] enableInputSourceType:inputSourceType];
  }
}

- (id)inputSourceTypeEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  inputSourceTypeEnabled = [(WatchControlInputSourceController *)self inputSourceTypeEnabled];

  return [v3 numberWithBool:inputSourceTypeEnabled];
}

@end