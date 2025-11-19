@interface NCBSCityAbbreviationEntryViewController
- (id)customAbbreviation:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_resetAbbrevEntryField;
- (void)returnPressedAtEnd;
- (void)setCustomAbbreviation:(id)a3 specifier:(id)a4;
- (void)textFieldDidEndEditing:(id)a3;
- (void)viewDidLoad;
@end

@implementation NCBSCityAbbreviationEntryViewController

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = NCBSCityAbbreviationEntryViewController;
  [(NCBSCityAbbreviationEntryViewController *)&v7 viewDidLoad];
  v3 = +[NCBSWorldCityDisplayListModel sharedInstance];
  v4 = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v5 = [v3 cityForIndex:{objc_msgSend(v4, "unsignedIntegerValue")}];
  worldCity = self->_worldCity;
  self->_worldCity = v5;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:0 edit:0];
    v6 = [PSTextFieldSpecifier preferenceSpecifierNamed:0 target:self set:"setCustomAbbreviation:specifier:" get:"customAbbreviation:" detail:0 cell:8 edit:0];
    v10[0] = v5;
    v10[1] = v6;
    v7 = [NSArray arrayWithObjects:v10 count:2];
    v8 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v7;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v11.receiver = self;
  v11.super_class = NCBSCityAbbreviationEntryViewController;
  v5 = [(NCBSCityAbbreviationEntryViewController *)&v11 tableView:a3 cellForRowAtIndexPath:a4];
  if ([v5 tag] == &dword_8)
  {
    v6 = [v5 editableTextField];
    abbrevEntry = self->_abbrevEntry;
    self->_abbrevEntry = v6;

    [(UITextField *)self->_abbrevEntry setAcceptsEmoji:0];
    [(UITextField *)self->_abbrevEntry setAutocorrectionType:1];
    [(UITextField *)self->_abbrevEntry setSpellCheckingType:1];
    [(UITextField *)self->_abbrevEntry becomeFirstResponder];
    v8 = [v5 editableTextField];
    [v8 setClearButtonMode:3];

    v9 = [v5 editableTextField];
    [v9 setDelegate:self];
  }

  return v5;
}

- (void)returnPressedAtEnd
{
  v3 = [UIApp keyWindow];
  v2 = [v3 firstResponder];
  [v2 resignFirstResponder];
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = [(UITextField *)self->_abbrevEntry text];
  v5 = [v4 length];

  if (v5 >= 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = v5;
  }

  v7 = [(UITextField *)self->_abbrevEntry text];
  v8 = [v7 rangeOfComposedCharacterSequencesForRange:{0, v6}];
  v10 = v9;

  v11 = [(UITextField *)self->_abbrevEntry text];
  v12 = [v11 substringWithRange:{v8, v10}];

  v13 = +[NSLocale currentLocale];
  v15 = [v12 uppercaseStringWithLocale:v13];

  [(UITextField *)self->_abbrevEntry setText:v15];
  v14 = [(UITextField *)self->_abbrevEntry text];
  [(NCBSCityAbbreviationEntryViewController *)self setCustomAbbreviation:v14 specifier:*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier]];
}

- (void)setCustomAbbreviation:(id)a3 specifier:(id)a4
{
  v8 = a3;
  if ([v8 isValidCityAbbreviation] && self->_worldCity)
  {
    v5 = +[NTKCustomWorldCityAbbreviationsStore sharedInstance];
    v6 = [(WorldClockCity *)self->_worldCity alCityId];
    v7 = [v6 stringValue];
    [v5 setCustomAbbreviation:v8 forCityIdentifier:v7];
  }
}

- (id)customAbbreviation:(id)a3
{
  v4 = +[NCBSWorldCityDisplayListModel sharedInstance];
  v5 = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v6 = [v4 cityDisplayAbbreviationForIndex:{objc_msgSend(v5, "unsignedIntegerValue")}];

  return v6;
}

- (void)_resetAbbrevEntryField
{
  v3 = [(NCBSCityAbbreviationEntryViewController *)self customAbbreviation:*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier]];
  [(UITextField *)self->_abbrevEntry setText:v3];
}

@end