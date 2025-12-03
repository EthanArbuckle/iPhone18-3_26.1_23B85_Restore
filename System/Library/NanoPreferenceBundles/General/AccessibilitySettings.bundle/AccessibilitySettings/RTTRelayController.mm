@interface RTTRelayController
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
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
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v7 = settingsLocString(@"TTY_RELAY_FOOTER", @"RTTSettings");
    [emptyGroupSpecifier setProperty:v7 forKey:*MEMORY[0x277D3FF88]];

    [v5 addObject:emptyGroupSpecifier];
    v8 = MEMORY[0x277D3FAD8];
    parentController = [(RTTRelayController *)self parentController];
    v10 = [v8 preferenceSpecifierNamed:0 target:parentController set:sel_setRTTRelayNumber_specifier_ get:sel_rttRelayNumber_ detail:0 cell:8 edit:0];

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
  firstResponder = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) firstResponder];
  [firstResponder resignFirstResponder];

  v4.receiver = self;
  v4.super_class = RTTRelayController;
  [(RTTRelayController *)&v4 suspend];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = RTTRelayController;
  v4 = [(RTTRelayController *)&v7 tableView:view cellForRowAtIndexPath:path];
  if ([v4 tag] == 8)
  {
    editableTextField = [v4 editableTextField];
    [editableTextField setAutocapitalizationType:2];
    [editableTextField setAutocorrectionType:1];
    [editableTextField setAdjustsFontSizeToFitWidth:1];
    [editableTextField setReturnKeyType:9];
    [editableTextField setClearButtonMode:3];
  }

  return v4;
}

@end