@interface TTYRelayEditController
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)suspend;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation TTYRelayEditController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = +[PSSpecifier emptyGroupSpecifier];
    v7 = settingsLocString(@"TTY_RELAY_FOOTER", @"Accessibility");
    [v6 setProperty:v7 forKey:PSFooterTextGroupKey];

    [v5 addObject:v6];
    parentController = [(TTYRelayEditController *)self parentController];
    v9 = [PSSpecifier preferenceSpecifierNamed:0 target:parentController set:"setRelayNumber:specifier:" get:"relayNumber:" detail:0 cell:8 edit:0];

    [v9 setProperty:&__kCFBooleanTrue forKey:PSNumberKeyboardKey];
    *&v9[OBJC_IVAR___PSSpecifier_textFieldType] = 2;
    [v5 addObject:v9];
    v10 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (void)suspend
{
  firstResponder = [*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__table] firstResponder];
  [firstResponder resignFirstResponder];

  v4.receiver = self;
  v4.super_class = TTYRelayEditController;
  [(TTYRelayEditController *)&v4 suspend];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  firstResponder = [*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__table] firstResponder];
  [firstResponder resignFirstResponder];

  v6.receiver = self;
  v6.super_class = TTYRelayEditController;
  [(TTYRelayEditController *)&v6 viewWillDisappear:disappearCopy];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = TTYRelayEditController;
  v4 = [(TTYRelayEditController *)&v7 tableView:view cellForRowAtIndexPath:path];
  if ([v4 tag] == &dword_8)
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