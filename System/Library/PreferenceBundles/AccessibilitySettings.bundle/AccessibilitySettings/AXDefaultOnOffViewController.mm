@interface AXDefaultOnOffViewController
+ (id)stringValueForNumber:(id)number;
- (id)getValueSelectedBlock;
- (id)setValueSelectedBlock;
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation AXDefaultOnOffViewController

+ (id)stringValueForNumber:(id)number
{
  numberCopy = number;
  if ([numberCopy integerValue] == -1)
  {
    v4 = @"DEFAULT";
  }

  else if ([numberCopy integerValue] == &dword_0 + 1)
  {
    v4 = @"ON";
  }

  else
  {
    v4 = @"OFF";
  }

  v5 = settingsLocString(v4, @"Accessibility");

  return v5;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v7 = +[NSMutableArray array];
    v8 = settingsLocString(@"DEFAULT", @"Accessibility");
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v9 setProperty:&off_27B580 forKey:@"value"];
    [v7 addObject:v9];
    v10 = settingsLocString(@"ON", @"Accessibility");
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v11 setProperty:&off_27B598 forKey:@"value"];
    [v7 addObject:v11];
    v12 = settingsLocString(@"OFF", @"Accessibility");
    v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v13 setProperty:&off_27B5B0 forKey:@"value"];
    [v7 addObject:v13];
    v14 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v7;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  getValueSelectedBlock = [(AXDefaultOnOffViewController *)self getValueSelectedBlock];
  v9 = getValueSelectedBlock;
  if (getValueSelectedBlock)
  {
    v10 = (*(getValueSelectedBlock + 16))(getValueSelectedBlock);
    v11 = [(AXDefaultOnOffViewController *)self specifierAtIndexPath:pathCopy];
    v12 = [v11 propertyForKey:@"value"];

    if (v12 | v10)
    {
      v13 = [v12 isEqual:v10];
    }

    else
    {
      v13 = &dword_0 + 1;
    }

    [cellCopy setChecked:v13];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v10.receiver = self;
  v10.super_class = AXDefaultOnOffViewController;
  [(AXDefaultOnOffViewController *)&v10 tableView:view didSelectRowAtIndexPath:pathCopy];
  setValueSelectedBlock = [(AXDefaultOnOffViewController *)self setValueSelectedBlock];
  if (setValueSelectedBlock)
  {
    v8 = [(AXDefaultOnOffViewController *)self specifierAtIndexPath:pathCopy];
    v9 = [v8 propertyForKey:@"value"];
    (setValueSelectedBlock)[2](setValueSelectedBlock, v9);

    [(AXDefaultOnOffViewController *)self updateTableCheckedSelection:pathCopy];
  }
}

- (id)getValueSelectedBlock
{
  specifier = [(AXDefaultOnOffViewController *)self specifier];
  v3 = [specifier propertyForKey:@"getValueSelectedBlock"];

  return v3;
}

- (id)setValueSelectedBlock
{
  specifier = [(AXDefaultOnOffViewController *)self specifier];
  v3 = [specifier propertyForKey:@"setValueSelectedBlock"];

  return v3;
}

@end