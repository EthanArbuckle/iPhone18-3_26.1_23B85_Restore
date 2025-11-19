@interface WatchControlFocusRingColorController
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation WatchControlFocusRingColorController

- (id)specifiers
{
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v20 = *MEMORY[0x277D3FC48];
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [v5 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
    v19 = v5;
    [v4 addObject:v5];
    v6 = [MEMORY[0x277D7A910] sharedInstance];
    v7 = [v6 focusRingColor];

    v8 = 0;
    v9 = 0;
    v10 = *MEMORY[0x277D401A8];
    do
    {
      v11 = MEMORY[0x277D3FAD8];
      v12 = WCNameForCursorColor();
      v13 = [v11 preferenceSpecifierNamed:v12 target:0 set:0 get:0 detail:0 cell:3 edit:0];

      v14 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
      [v13 setProperty:v14 forKey:v10];

      [v4 addObject:v13];
      if (v7 == v9)
      {
        v15 = v13;

        v8 = v15;
      }

      ++v9;
    }

    while (v9 != 8);
    [v19 setProperty:v8 forKey:*MEMORY[0x277D40090]];
    v16 = *(&self->super.super.super.super.super.super.isa + v20);
    *(&self->super.super.super.super.super.super.isa + v20) = v4;
    v17 = v4;

    v3 = *(&self->super.super.super.super.super.super.isa + v20);
  }

  return v3;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v16.receiver = self;
  v16.super_class = WatchControlFocusRingColorController;
  v6 = a4;
  [(WatchControlFocusRingColorController *)&v16 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(WatchControlFocusRingColorController *)self indexForIndexPath:v6, v16.receiver, v16.super_class];
  v8 = [(WatchControlFocusRingColorController *)self specifiers];
  v9 = [v8 objectAtIndex:v7];

  v10 = [v6 section];
  v11 = [(WatchControlFocusRingColorController *)self specifierAtIndex:[(WatchControlFocusRingColorController *)self indexOfGroup:v10]];
  v12 = [v11 propertyForKey:*MEMORY[0x277D3FFE8]];
  v13 = [v12 BOOLValue];

  if (v13)
  {
    v14 = [v9 propertyForKey:*MEMORY[0x277D401A8]];
    if (v14)
    {
      v15 = [MEMORY[0x277D7A910] sharedInstance];
      [v15 setFocusRingColor:{objc_msgSend(v14, "unsignedIntegerValue")}];

      [(WatchControlFocusRingColorController *)self reloadSpecifiers];
    }
  }
}

@end