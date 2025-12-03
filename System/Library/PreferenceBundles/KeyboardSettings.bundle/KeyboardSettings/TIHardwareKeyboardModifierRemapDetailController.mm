@interface TIHardwareKeyboardModifierRemapDetailController
- (id)newSpecifiers;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation TIHardwareKeyboardModifierRemapDetailController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    newSpecifiers = [(TIHardwareKeyboardModifierRemapDetailController *)self newSpecifiers];
    v6 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = newSpecifiers;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)newSpecifiers
{
  v31 = objc_alloc_init(NSMutableArray);
  parentController = [(TIHardwareKeyboardModifierRemapDetailController *)self parentController];
  currentKeyboard = [parentController currentKeyboard];

  selfCopy = self;
  specifier = [(TIHardwareKeyboardModifierRemapDetailController *)self specifier];
  v7 = PSIDKey;
  v8 = [specifier propertyForKey:PSIDKey];

  v9 = [v8 isEqualToString:@"Function"];
  v10 = v9;
  if (v9)
  {
    v11 = sub_E880(currentKeyboard);
  }

  else
  {
    v11 = 0;
  }

  v30 = v8;
  v29 = sub_C49C(v8, currentKeyboard, @" key", 0);
  string = [v29 string];
  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"CHOOSE_KEY_ACTION" value:&stru_49C80 table:@"Keyboard"];

  v28 = string;
  v15 = [v14 stringByReplacingOccurrencesOfString:@"%@" withString:string];

  v27 = v15;
  v16 = [PSSpecifier groupSpecifierWithName:v15];
  [v16 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
  v26 = v16;
  [v31 addObject:v16];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v17 = qword_56970;
  v18 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v33;
    do
    {
      v21 = 0;
      do
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v32 + 1) + 8 * v21);
        v23 = v22;
        if (((v10 & 1) != 0 || ([v22 isEqualToString:@"Function"] & 1) == 0) && (!v11 || (objc_msgSend(v23, "isEqualToString:", @"Globe") & 1) == 0))
        {
          v24 = [PSSpecifier preferenceSpecifierNamed:0 target:selfCopy set:0 get:0 detail:0 cell:3 edit:0];
          [v24 setProperty:v23 forKey:v7];
          [v31 addObject:v24];
        }

        v21 = v21 + 1;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v19);
  }

  return v31;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v50.receiver = self;
  v50.super_class = TIHardwareKeyboardModifierRemapDetailController;
  viewCopy = view;
  v8 = [(TIHardwareKeyboardModifierRemapDetailController *)&v50 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  v9 = [(TIHardwareKeyboardModifierRemapDetailController *)self specifierAtIndexPath:pathCopy];
  v10 = PSIDKey;
  v49 = v9;
  v11 = [v9 propertyForKey:PSIDKey];
  parentController = [(TIHardwareKeyboardModifierRemapDetailController *)self parentController];
  v13 = sub_C49C(v11, [parentController currentKeyboard], 0, 1);

  v14 = +[UIListContentConfiguration cellConfiguration];
  v48 = v13;
  [v14 setAttributedText:v13];
  [v8 setContentConfiguration:v14];
  specifier = [(TIHardwareKeyboardModifierRemapDetailController *)self specifier];
  v16 = [specifier propertyForKey:v10];

  parentController2 = [(TIHardwareKeyboardModifierRemapDetailController *)self parentController];
  v47 = v16;
  v18 = [parentController2 valueForRemappingKey:v16];

  [v8 setChecked:{objc_msgSend(v11, "isEqualToString:", v18)}];
  window = [viewCopy window];
  screen = [window screen];
  [screen scale];
  v22 = v21;

  v23 = fmax(v22, 1.0);
  v24 = +[UIColor clearColor];
  [viewCopy setSeparatorColor:v24];

  v25 = [v8 viewWithTag:10086];
  [v8 bounds];
  v30 = v26;
  v31 = v27;
  v32 = v28;
  v33 = v29;
  if (!v25)
  {
    v25 = [[UIView alloc] initWithFrame:{v26, v27, v28, v29}];
    [v25 setTag:10086];
    [v25 setAutoresizingMask:10];
    v34 = +[UIColor separatorColor];
    [v25 setBackgroundColor:v34];

    [v8 addSubview:v25];
  }

  v35 = 1.0 / v23;
  v36 = [pathCopy row];
  specifiers = [(TIHardwareKeyboardModifierRemapDetailController *)self specifiers];
  v38 = [specifiers count] - 3;

  if (v36 == v38)
  {
    v35 = v35 * 3.0;
    v31 = v33 - v35;
  }

  else
  {
    v39 = [pathCopy row];
    specifiers2 = [(TIHardwareKeyboardModifierRemapDetailController *)self specifiers];
    v41 = [specifiers2 count] - 2;

    if (v39 >= v41)
    {
      [v25 removeFromSuperview];
      v35 = v33;
    }

    else
    {
      [v8 separatorInset];
      v30 = v30 + v42;
      v32 = v32 - (v42 + v43);
      v31 = v33 - (v44 + v45) - v35;
    }
  }

  [v25 setFrame:{v30, v31, v32, v35}];

  return v8;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v13 = [(TIHardwareKeyboardModifierRemapDetailController *)self specifierAtIndexPath:pathCopy];
  specifier = [(TIHardwareKeyboardModifierRemapDetailController *)self specifier];
  v9 = PSIDKey;
  v10 = [specifier propertyForKey:PSIDKey];

  v11 = [v13 propertyForKey:v9];
  parentController = [(TIHardwareKeyboardModifierRemapDetailController *)self parentController];
  [parentController setRemappingFromKey:v10 toValue:v11];

  [(TIHardwareKeyboardModifierRemapDetailController *)self reloadSpecifiers];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

@end