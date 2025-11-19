@interface RTTRelayController
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)suspend;
@end

@implementation RTTRelayController

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v7 = settingsLocString(@"TTY_RELAY_FOOTER", @"RTTSettings");
    [v6 setProperty:v7 forKey:*MEMORY[0x277D3FF88]];

    [v5 addObject:v6];
    v8 = MEMORY[0x277D3FAD8];
    v9 = [(RTTRelayController *)self parentController];
    v10 = [v8 preferenceSpecifierNamed:0 target:v9 set:sel_setRTTRelayNumber_specifier_ get:sel_rttRelayNumber_ detail:0 cell:8 edit:0];

    [v10 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D40070]];
    *&v10[*MEMORY[0x277D3FCC0]] = 2;
    [v5 addObject:v10];
    v11 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)suspend
{
  v3 = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) firstResponder];
  [v3 resignFirstResponder];

  v4.receiver = self;
  v4.super_class = RTTRelayController;
  [(RTTRelayController *)&v4 suspend];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v7.receiver = self;
  v7.super_class = RTTRelayController;
  v4 = [(RTTRelayController *)&v7 tableView:a3 cellForRowAtIndexPath:a4];
  if ([v4 tag] == 8)
  {
    v5 = [v4 editableTextField];
    [v5 setAutocapitalizationType:2];
    [v5 setAutocorrectionType:1];
    [v5 setAdjustsFontSizeToFitWidth:1];
    [v5 setReturnKeyType:9];
    [v5 setClearButtonMode:3];
  }

  return v4;
}

@end