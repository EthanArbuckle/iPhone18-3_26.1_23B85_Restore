@interface WatchControlInputSourceController
- (BOOL)inputSourceTypeEnabled;
- (id)enableInputSourceSpecifiers;
- (id)inputSourceTypeEnabled:(id)a3;
- (id)specifiers;
- (unint64_t)inputSourceType;
- (void)inputSourceTypeSetEnabled:(id)a3 specifier:(id)a4;
@end

@implementation WatchControlInputSourceController

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = [(WatchControlInputSourceController *)self enableInputSourceSpecifiers];
    v7 = v6;
    v8 = MEMORY[0x277CBEBF8];
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = MEMORY[0x277CBEBF8];
    }

    [v5 addObjectsFromArray:v9];

    v10 = [(WatchControlInputSourceController *)self inputSourceCustomizationSpecifiers];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v8;
    }

    [v5 addObjectsFromArray:v12];

    v13 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (unint64_t)inputSourceType
{
  v2 = [(WatchControlInputSourceController *)self specifier];
  v3 = [v2 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"InputSource"];
  v5 = [v4 unsignedIntegerValue];

  return v5;
}

- (BOOL)inputSourceTypeEnabled
{
  v3 = [MEMORY[0x277D7A910] sharedInstance];
  v4 = [v3 enabledInputSourceTypes];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[WatchControlInputSourceController inputSourceType](self, "inputSourceType")}];
  v6 = [v4 objectForKey:v5];
  v7 = [v6 BOOLValue];

  return v7;
}

- (id)enableInputSourceSpecifiers
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  [(WatchControlInputSourceController *)self customizeEnableInputSourceGroupSpecifier:v4];
  [v3 addObject:v4];
  v5 = MEMORY[0x277D3FAD8];
  [(WatchControlInputSourceController *)self inputSourceType];
  v6 = WCNameForInputSourceType();
  v7 = [v5 preferenceSpecifierNamed:v6 target:self set:sel_inputSourceTypeSetEnabled_specifier_ get:sel_inputSourceTypeEnabled_ detail:0 cell:6 edit:0];
  [v3 addObject:v7];

  return v3;
}

- (void)inputSourceTypeSetEnabled:(id)a3 specifier:(id)a4
{
  v5 = [(WatchControlInputSourceController *)self inputSourceTypeEnabled:a3];
  v7 = [MEMORY[0x277D7A910] sharedInstance];
  v6 = [(WatchControlInputSourceController *)self inputSourceType];
  if (v5)
  {
    [v7 disableInputSourceType:v6];
  }

  else
  {
    [v7 enableInputSourceType:v6];
  }
}

- (id)inputSourceTypeEnabled:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(WatchControlInputSourceController *)self inputSourceTypeEnabled];

  return [v3 numberWithBool:v4];
}

@end