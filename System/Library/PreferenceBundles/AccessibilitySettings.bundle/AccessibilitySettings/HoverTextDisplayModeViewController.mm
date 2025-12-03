@interface HoverTextDisplayModeViewController
- (BOOL)_axIsDisplayTypingMode;
- (HoverTextDisplayModeViewController)init;
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation HoverTextDisplayModeViewController

- (HoverTextDisplayModeViewController)init
{
  v5.receiver = self;
  v5.super_class = HoverTextDisplayModeViewController;
  v2 = [(HoverTextDisplayModeViewController *)&v5 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"_handleSpecificHardwareKeyboard:" name:_UIDeviceHardwareKeyboardAvailabilityDidChangeNotification object:0];
  }

  return v2;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = [NSMutableArray arrayWithObjects:&off_27A5D8, 0];
    if (GSEventIsHardwareKeyboardAttached() || ![(HoverTextDisplayModeViewController *)self _axIsDisplayTypingMode])
    {
      [v6 addObject:&off_27A5F0];
    }

    v18 = v3;
    if ([(HoverTextDisplayModeViewController *)self _axIsDisplayTypingMode])
    {
      [v6 addObject:&off_27A608];
      [v6 addObject:&off_27A620];
    }

    else
    {
      [v6 insertObject:&off_27A638 atIndex:0];
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      v10 = PSTitleKey;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          v13 = hoverTextDisplayModeLocString([v12 integerValue]);
          v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:3 edit:0];

          [v14 setProperty:v12 forKey:@"HTDisplayMode"];
          v15 = hoverTextDisplayModeLocString([v12 integerValue]);
          [v14 setProperty:v15 forKey:v10];

          [v14 setCellType:3];
          [v5 addObject:v14];
        }

        v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    v16 = *&self->AXUISettingsBaseListController_opaque[v18];
    *&self->AXUISettingsBaseListController_opaque[v18] = v5;

    v4 = *&self->AXUISettingsBaseListController_opaque[v18];
  }

  return v4;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  _axIsDisplayTypingMode = [(HoverTextDisplayModeViewController *)self _axIsDisplayTypingMode];
  v8 = +[AXSettings sharedInstance];
  v9 = v8;
  if (_axIsDisplayTypingMode)
  {
    hoverTextTypingDisplayMode = [v8 hoverTextTypingDisplayMode];
  }

  else
  {
    hoverTextTypingDisplayMode = [v8 hoverTextDisplayMode];
  }

  v11 = [NSNumber numberWithLong:hoverTextTypingDisplayMode];

  v15 = cellCopy;
  specifier = [v15 specifier];
  v13 = [specifier propertyForKey:@"HTDisplayMode"];
  v14 = [v13 isEqual:v11];

  [v15 setChecked:v14];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = HoverTextDisplayModeViewController;
  [(HoverTextDisplayModeViewController *)&v13 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(HoverTextDisplayModeViewController *)self specifierAtIndex:[(HoverTextDisplayModeViewController *)self indexForIndexPath:pathCopy]];
  v8 = [v7 propertyForKey:@"HTDisplayMode"];
  integerValue = [v8 integerValue];

  _axIsDisplayTypingMode = [(HoverTextDisplayModeViewController *)self _axIsDisplayTypingMode];
  v11 = +[AXSettings sharedInstance];
  v12 = v11;
  if (_axIsDisplayTypingMode)
  {
    [v11 setHoverTextTypingDisplayMode:integerValue];
  }

  else
  {
    [v11 setHoverTextDisplayMode:integerValue];
  }

  [(HoverTextDisplayModeViewController *)self updateTableCheckedSelection:pathCopy];
}

- (BOOL)_axIsDisplayTypingMode
{
  specifier = [(HoverTextDisplayModeViewController *)self specifier];
  v3 = [specifier propertyForKey:PSIDKey];

  LOBYTE(specifier) = [v3 isEqualToString:@"HoverTextTypingDisplayMode"];
  return specifier;
}

@end