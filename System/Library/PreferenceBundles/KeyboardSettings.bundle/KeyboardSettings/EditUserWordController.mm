@interface EditUserWordController
+ (BOOL)wantsToDelegate:(id)a3;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldBeginEditing:(id)a3;
- (BOOL)textFieldShouldClear:(id)a3;
- (BOOL)textFieldShouldEndEditing:(id)a3;
- (BOOL)textFieldShouldReturn:(id)a3;
- (EditUserWordController)initWithUserWord:(id)a3;
- (NSString)shortcut;
- (NSString)target;
- (UITextField)shortcutTextField;
- (UITextField)targetTextField;
- (id)originalDelegateForTextField:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)validationErrorStringFromError:(int64_t)a3;
- (void)_dismiss;
- (void)_handleValidationWithError:(int64_t)a3;
- (void)_unpackTextReplacementError:(id)a3;
- (void)dealloc;
- (void)save;
- (void)setShortcut:(id)a3;
- (void)setTarget:(id)a3;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)viewDidLoad;
@end

@implementation EditUserWordController

- (EditUserWordController)initWithUserWord:(id)a3
{
  v7.receiver = self;
  v7.super_class = EditUserWordController;
  v4 = [(EditUserWordController *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(EditUserWordController *)v4 setOldEntry:a3];
    if (!a3)
    {
      a3 = objc_alloc_init(_KSTextReplacementEntry);
    }

    [(EditUserWordController *)v5 setNextEntry:a3];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EditUserWordController;
  [(EditUserWordController *)&v3 dealloc];
}

- (NSString)target
{
  v2 = [(EditUserWordController *)self nextEntry];

  return [(_KSTextReplacementEntry *)v2 phrase];
}

- (void)setTarget:(id)a3
{
  v4 = [(EditUserWordController *)self nextEntry];

  [(_KSTextReplacementEntry *)v4 setPhrase:a3];
}

- (NSString)shortcut
{
  v2 = [(EditUserWordController *)self nextEntry];

  return [(_KSTextReplacementEntry *)v2 shortcut];
}

- (void)setShortcut:(id)a3
{
  v4 = [(EditUserWordController *)self nextEntry];

  [(_KSTextReplacementEntry *)v4 setShortcut:a3];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v7.receiver = self;
  v7.super_class = EditUserWordController;
  v5 = [(EditUserWordController *)&v7 tableView:a3 cellForRowAtIndexPath:a4];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [objc_opt_class() wantsToDelegate:{objc_msgSend(objc_msgSend(v5, "specifier"), "identifier")}] && objc_msgSend(objc_msgSend(v5, "textField"), "delegate") != self)
  {
    objc_setAssociatedObject([v5 textField], "kTextFieldOriginalDelegate", objc_msgSend(objc_msgSend(v5, "textField"), "delegate"), 0);
    [objc_msgSend(v5 "textField")];
  }

  return v5;
}

+ (BOOL)wantsToDelegate:(id)a3
{
  v4 = [a1 propertyTitles];

  return [v4 containsObject:a3];
}

- (id)originalDelegateForTextField:(id)a3
{
  result = objc_getAssociatedObject(a3, "kTextFieldOriginalDelegate");
  if (!result)
  {
    result = [a3 delegate];
  }

  if (result == self)
  {
    return 0;
  }

  return result;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = EditUserWordController;
  [(EditUserWordController *)&v4 viewDidLoad];
  [-[EditUserWordController navigationItem](self "navigationItem")];
  [objc_msgSend(-[EditUserWordController navigationItem](self "navigationItem")];
  [-[EditUserWordController navigationItem](self "navigationItem")];
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
    v5 = +[NSMutableArray array];
    if (![(NSString *)[(EditUserWordController *)self footerTitle] length])
    {
      [(EditUserWordController *)self setFooterTitle:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"USER_WORD_EXPLANATORY_TEXT", &stru_49C80, @"Keyboard"]];
    }

    v6 = +[PSSpecifier emptyGroupSpecifier];
    v7 = [(EditUserWordController *)self footerTitle];
    [v6 setProperty:v7 forKey:PSFooterTextGroupKey];
    [v5 addObject:v6];
    [(EditUserWordController *)self setGroupSpecifier:v6];
    v8 = [PSSpecifier preferenceSpecifierNamed:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"WORD" target:&stru_49C80 set:@"Keyboard"] get:self detail:"setTarget:" cell:"target" edit:0, 8, 0];
    v9 = PSIDKey;
    [v8 setProperty:@"WORD" forKey:PSIDKey];
    [v8 setKeyboardType:0 autoCaps:0 autoCorrection:1];
    [v5 addObject:v8];
    if ([(NSString *)[(EditUserWordController *)self target] isEqualToString:[(EditUserWordController *)self shortcut]])
    {
      [(EditUserWordController *)self setShortcut:&stru_49C80];
    }

    v10 = [PSTextFieldSpecifier preferenceSpecifierNamed:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"SHORTCUT_FIELD_TITLE" target:&stru_49C80 set:@"Keyboard"] get:self detail:"setShortcut:" cell:"shortcut" edit:0, 8, 0];
    if (([(NSString *)[(EditUserWordController *)self target] _containsIdeographicCharacters]& 1) == 0)
    {
      [v10 setPlaceholder:{-[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"OPTIONAL", &stru_49C80, @"Keyboard"}];
    }

    [v10 setProperty:@"SHORTCUT" forKey:v9];
    [v10 setKeyboardType:0 autoCaps:0 autoCorrection:1];
    [v5 addObject:v10];
    result = v5;
    *&self->PSListController_opaque[v3] = result;
  }

  return result;
}

- (UITextField)targetTextField
{
  v2 = [(EditUserWordController *)self cachedCellForSpecifierID:@"WORD"];

  return [v2 editableTextField];
}

- (UITextField)shortcutTextField
{
  v2 = [(EditUserWordController *)self cachedCellForSpecifierID:@"SHORTCUT"];

  return [v2 editableTextField];
}

- (id)validationErrorStringFromError:(int64_t)a3
{
  if ((a3 - 1) > 8)
  {
    return 0;
  }

  v4 = *(&off_495B0 + a3 - 1);
  v5 = [NSBundle bundleForClass:objc_opt_class()];

  return [(NSBundle *)v5 localizedStringForKey:v4 value:&stru_49C80 table:@"Keyboard"];
}

- (void)_dismiss
{
  v2 = [(EditUserWordController *)self navigationController];

  [v2 popViewControllerAnimated:1];
}

- (void)_unpackTextReplacementError:(id)a3
{
  if ([a3 code] == &dword_8 + 3)
  {
    v5 = [a3 userInfo];
    v6 = [objc_msgSend(v5 objectForKeyedSubscript:{_KSTextReplacementUpdateDidFailErrorsKey), "firstObject"}];
    v7 = [a3 userInfo];
    v8 = [objc_msgSend(v7 objectForKeyedSubscript:{_KSTextReplacementDeleteDidFailErrorsKey), "firstObject"}];
    if (v6)
    {
      v8 = v6;
    }

    else if (!v8)
    {
      return;
    }

    goto LABEL_8;
  }

  v9 = [a3 domain];
  if ([v9 isEqual:_KSTextReplacementErrorDomain])
  {
    v8 = a3;
LABEL_8:
    v10 = [v8 code];
    goto LABEL_9;
  }

  v10 = -2;
LABEL_9:

  [(EditUserWordController *)self _handleValidationWithError:v10];
}

- (void)_handleValidationWithError:(int64_t)a3
{
  if (a3)
  {
    v4 = [(EditUserWordController *)self validationErrorStringFromError:?];
    if ([v4 length])
    {
      v5 = [UIAlertController alertControllerWithTitle:0 message:v4 preferredStyle:1];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1D19C;
      v7[3] = &unk_49568;
      v7[4] = v5;
      [(UIAlertController *)v5 addAction:[UIAlertAction actionWithTitle:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"USER_WORD_BUTTON_OK" style:&stru_49C80 handler:@"Keyboard"], 1, v7]];
      [(EditUserWordController *)self setKeyboardAlertController:v5];
      [+[UIViewController _viewControllerForFullScreenPresentationFromView:](UIViewController _viewControllerForFullScreenPresentationFromView:{-[EditUserWordController view](self, "view")), "presentViewController:animated:completion:", -[EditUserWordController keyboardAlertController](self, "keyboardAlertController"), 1, 0}];
    }
  }

  else
  {
    TIStatisticGetKey();
    [(NSString *)[(UITextField *)[(EditUserWordController *)self targetTextField] text] length];
    TIStatisticDistributionPushValue();
    TIStatisticGetKey();
    [(NSString *)[(UITextField *)[(EditUserWordController *)self shortcutTextField] text] length];
    TIStatisticDistributionPushValue();
    v6 = +[NSNotificationCenter defaultCenter];
    v8 = @"shortcut";
    v9 = [(EditUserWordController *)self shortcut];
    [(NSNotificationCenter *)v6 postNotificationName:@"EditUserWordShortcutDidUpdateNotification" object:self userInfo:[NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1]];
    [(EditUserWordController *)self _dismiss];
  }
}

- (void)save
{
  [(EditUserWordController *)self setTarget:[(UITextField *)[(EditUserWordController *)self targetTextField] text]];
  [(EditUserWordController *)self setShortcut:[(UITextField *)[(EditUserWordController *)self shortcutTextField] text]];
  if ([(EditUserWordController *)self oldEntry])
  {
    [(_KSTextReplacementEntry *)[(EditUserWordController *)self nextEntry] setPriorValue:[(EditUserWordController *)self oldEntry]];
  }

  v3 = [(EditUserWordController *)self dictionaryController];
  v8 = [(EditUserWordController *)self nextEntry];
  v4 = [NSArray arrayWithObjects:&v8 count:1];
  if ([(EditUserWordController *)self oldEntry])
  {
    v7 = [(EditUserWordController *)self oldEntry];
    v5 = [NSArray arrayWithObjects:&v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1D318;
  v6[3] = &unk_49590;
  v6[4] = self;
  [(TIUserWordsManager *)v3 addEntries:v4 removeEntries:v5 withCompletionHandler:v6];
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v10 = [(EditUserWordController *)self originalDelegateForTextField:?];
  if ([(EditUserWordController *)self targetTextField]== a3)
  {
    v11 = [objc_msgSend(a3 "text")];
    v12 = [v11 _containsIdeographicCharacters];
    v13 = [-[EditUserWordController specifiers](self "specifiers")];
    if (v12)
    {
      v14 = @" ";
    }

    else
    {
      v14 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"OPTIONAL", &stru_49C80, @"Keyboard"];
    }

    [v13 setPlaceholder:v14];
    v15 = [v11 length];
    v16 = [-[EditUserWordController navigationItem](self "navigationItem")];
    if (v15)
    {
      [v16 setEnabled:1];
      if (!v12 || [(NSString *)[(EditUserWordController *)self shortcut] length])
      {
        goto LABEL_10;
      }

      v16 = [-[EditUserWordController navigationItem](self "navigationItem")];
    }

    [v16 setEnabled:0];
LABEL_10:
    [(EditUserWordController *)self reloadSpecifier:v13];
  }

  if ([(EditUserWordController *)self shortcutTextField]!= a3)
  {
    goto LABEL_17;
  }

  v17 = [objc_msgSend(a3 "text")];
  v18 = [(NSString *)[(EditUserWordController *)self target] length];
  v19 = [-[EditUserWordController navigationItem](self "navigationItem")];
  if (!v18)
  {
    goto LABEL_16;
  }

  [v19 setEnabled:1];
  if (-[NSString _containsIdeographicCharacters](-[EditUserWordController target](self, "target"), "_containsIdeographicCharacters") && ![v17 length])
  {
    v19 = [-[EditUserWordController navigationItem](self "navigationItem")];
LABEL_16:
    [v19 setEnabled:0];
  }

LABEL_17:
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  return [v10 textField:a3 shouldChangeCharactersInRange:location replacementString:{length, a5}];
}

- (BOOL)textFieldShouldBeginEditing:(id)a3
{
  v4 = [(EditUserWordController *)self originalDelegateForTextField:?];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  return [v4 textFieldShouldBeginEditing:a3];
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v4 = [(EditUserWordController *)self originalDelegateForTextField:?];
  if (objc_opt_respondsToSelector())
  {

    [v4 textFieldDidBeginEditing:a3];
  }
}

- (BOOL)textFieldShouldEndEditing:(id)a3
{
  v4 = [(EditUserWordController *)self originalDelegateForTextField:?];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  return [v4 textFieldShouldEndEditing:a3];
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = [(EditUserWordController *)self originalDelegateForTextField:?];
  if (objc_opt_respondsToSelector())
  {

    [v4 textFieldDidEndEditing:a3];
  }
}

- (BOOL)textFieldShouldClear:(id)a3
{
  v4 = [(EditUserWordController *)self originalDelegateForTextField:?];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  return [v4 textFieldShouldClear:a3];
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = [(EditUserWordController *)self originalDelegateForTextField:?];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  return [v4 textFieldShouldReturn:a3];
}

@end