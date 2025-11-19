@interface TIHardwareKeyboardDetailController
- (NSString)inputMode;
- (UIKeyboardInputMode)uiKeyboardinputMode;
- (id)newSpecifiers;
- (id)specifiers;
- (void)dealloc;
- (void)setHardwareLayout:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation TIHardwareKeyboardDetailController

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TIHardwareKeyboardDetailController;
  [(TIHardwareKeyboardDetailController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = TIHardwareKeyboardDetailController;
  [(TIHardwareKeyboardDetailController *)&v4 viewDidLoad];
  v3 = OBJC_IVAR___PSListController__table;
  [*&self->PSListController_opaque[OBJC_IVAR___PSListController__table] setEstimatedSectionHeaderHeight:0.0];
  [*&self->PSListController_opaque[v3] setEstimatedSectionFooterHeight:0.0];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  result = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!result)
  {
    result = [(TIHardwareKeyboardDetailController *)self newSpecifiers];
    *&self->PSListController_opaque[v3] = result;
  }

  return result;
}

- (id)newSpecifiers
{
  v3 = [(TIHardwareKeyboardDetailController *)self inputMode];
  obj = UIKeyboardGetSupportedHardwareKeyboardsForInputMode();
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(obj, "count") + 1}];
  v5 = [PSSpecifier groupSpecifierWithID:0];
  [v5 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
  v24 = v4;
  v22 = v5;
  [v4 addObject:v5];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = +[TIKeyboardListController inputModes];
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v30 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v29 + 1) + 8 * v10);
      if ([(NSString *)v3 isEqualToString:UIKeyboardInputModeGetNormalizedIdentifier()])
      {
        v12 = [UIKeyboardInputModeGetComponentsFromIdentifier() objectForKey:@"hw"];
        if ([v12 length])
        {
          break;
        }
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v12 = 0;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    v16 = PSIDKey;
    v17 = PSRadioGroupCheckedSpecifierKey;
    do
    {
      v18 = 0;
      do
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v25 + 1) + 8 * v18);
        v20 = [PSSpecifier preferenceSpecifierNamed:[TIKeyboardListController displayNameForHardwareLayout:v19 inputMode:[(TIHardwareKeyboardDetailController *)self uiKeyboardinputMode]] target:self set:0 get:0 detail:0 cell:3 edit:0];
        [v20 setProperty:v19 forKey:v16];
        if ([v12 isEqualToString:v19])
        {
          [v22 setProperty:v20 forKey:v17];
        }

        [v24 addObject:v20];
        v18 = v18 + 1;
      }

      while (v14 != v18);
      v14 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v14);
  }

  return v24;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10.receiver = self;
  v10.super_class = TIHardwareKeyboardDetailController;
  [TIHardwareKeyboardDetailController tableView:"tableView:didSelectRowAtIndexPath:" didSelectRowAtIndexPath:?];
  v7 = [a3 cellForRowAtIndexPath:a4];
  if (v7)
  {
    v8 = [v7 specifier];
    v9 = [v8 propertyForKey:PSIDKey];
    if ([v9 length])
    {
      [(TIHardwareKeyboardDetailController *)self setHardwareLayout:v9];
    }
  }
}

- (NSString)inputMode
{
  result = self->_inputMode;
  if (!result)
  {
    v4 = [(TIHardwareKeyboardDetailController *)self specifier];
    result = [objc_msgSend(v4 propertyForKey:{PSIDKey), "copy"}];
    self->_inputMode = result;
  }

  return result;
}

- (UIKeyboardInputMode)uiKeyboardinputMode
{
  result = self->_uiKeyboardinputMode;
  if (!result)
  {
    v4 = [(TIHardwareKeyboardDetailController *)self specifier];
    result = -[UIKeyboardInputMode copy](+[UIKeyboardInputMode keyboardInputModeWithIdentifier:](UIKeyboardInputMode, "keyboardInputModeWithIdentifier:", [v4 propertyForKey:PSIDKey]), "copy");
    self->_uiKeyboardinputMode = result;
  }

  return result;
}

- (void)setHardwareLayout:(id)a3
{
  v5 = [+[TIKeyboardListController inputModes](TIKeyboardListController "inputModes")];
  if ([v5 count])
  {
    v6 = [v5 count];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = 0;
      v13 = v6 - 1;
LABEL_4:
      v10 = v9;
      do
      {
        [v5 objectAtIndex:v10];
        if ([(NSString *)[(TIHardwareKeyboardDetailController *)self inputMode] isEqualToString:UIKeyboardInputModeGetNormalizedIdentifier()])
        {
          v11 = [UIKeyboardInputModeGetComponentsFromIdentifier() mutableCopy];
          v12 = [v11 objectForKey:@"hw"];
          if (!v12 || ![v12 isEqualToString:a3])
          {
            [v11 setObject:a3 forKey:@"hw"];
            [v5 replaceObjectAtIndex:v10 withObject:UIKeyboardInputModeGetIdentifierFromComponents()];
            v9 = v10 + 1;
            v8 = 1;
            if (v13 != v10)
            {
              goto LABEL_4;
            }

            goto LABEL_13;
          }
        }

        ++v10;
      }

      while (v7 != v10);
      if ((v8 & 1) == 0)
      {
        return;
      }

LABEL_13:

      [TIKeyboardListController setInputModes:v5];
    }
  }
}

@end