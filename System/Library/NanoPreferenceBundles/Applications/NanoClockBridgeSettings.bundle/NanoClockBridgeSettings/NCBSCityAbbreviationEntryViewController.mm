@interface NCBSCityAbbreviationEntryViewController
- (id)customAbbreviation:(id)abbreviation;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_resetAbbrevEntryField;
- (void)returnPressedAtEnd;
- (void)setCustomAbbreviation:(id)abbreviation specifier:(id)specifier;
- (void)textFieldDidEndEditing:(id)editing;
- (void)viewDidLoad;
@end

@implementation NCBSCityAbbreviationEntryViewController

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = NCBSCityAbbreviationEntryViewController;
  [(NCBSCityAbbreviationEntryViewController *)&v7 viewDidLoad];
  v3 = +[NCBSWorldCityDisplayListModel sharedInstance];
  userInfo = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v5 = [v3 cityForIndex:{objc_msgSend(userInfo, "unsignedIntegerValue")}];
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v11.receiver = self;
  v11.super_class = NCBSCityAbbreviationEntryViewController;
  v5 = [(NCBSCityAbbreviationEntryViewController *)&v11 tableView:view cellForRowAtIndexPath:path];
  if ([v5 tag] == &dword_8)
  {
    editableTextField = [v5 editableTextField];
    abbrevEntry = self->_abbrevEntry;
    self->_abbrevEntry = editableTextField;

    [(UITextField *)self->_abbrevEntry setAcceptsEmoji:0];
    [(UITextField *)self->_abbrevEntry setAutocorrectionType:1];
    [(UITextField *)self->_abbrevEntry setSpellCheckingType:1];
    [(UITextField *)self->_abbrevEntry becomeFirstResponder];
    editableTextField2 = [v5 editableTextField];
    [editableTextField2 setClearButtonMode:3];

    editableTextField3 = [v5 editableTextField];
    [editableTextField3 setDelegate:self];
  }

  return v5;
}

- (void)returnPressedAtEnd
{
  keyWindow = [UIApp keyWindow];
  firstResponder = [keyWindow firstResponder];
  [firstResponder resignFirstResponder];
}

- (void)textFieldDidEndEditing:(id)editing
{
  text = [(UITextField *)self->_abbrevEntry text];
  v5 = [text length];

  if (v5 >= 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = v5;
  }

  text2 = [(UITextField *)self->_abbrevEntry text];
  v8 = [text2 rangeOfComposedCharacterSequencesForRange:{0, v6}];
  v10 = v9;

  text3 = [(UITextField *)self->_abbrevEntry text];
  v12 = [text3 substringWithRange:{v8, v10}];

  v13 = +[NSLocale currentLocale];
  v15 = [v12 uppercaseStringWithLocale:v13];

  [(UITextField *)self->_abbrevEntry setText:v15];
  text4 = [(UITextField *)self->_abbrevEntry text];
  [(NCBSCityAbbreviationEntryViewController *)self setCustomAbbreviation:text4 specifier:*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier]];
}

- (void)setCustomAbbreviation:(id)abbreviation specifier:(id)specifier
{
  abbreviationCopy = abbreviation;
  if ([abbreviationCopy isValidCityAbbreviation] && self->_worldCity)
  {
    v5 = +[NTKCustomWorldCityAbbreviationsStore sharedInstance];
    alCityId = [(WorldClockCity *)self->_worldCity alCityId];
    stringValue = [alCityId stringValue];
    [v5 setCustomAbbreviation:abbreviationCopy forCityIdentifier:stringValue];
  }
}

- (id)customAbbreviation:(id)abbreviation
{
  v4 = +[NCBSWorldCityDisplayListModel sharedInstance];
  userInfo = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v6 = [v4 cityDisplayAbbreviationForIndex:{objc_msgSend(userInfo, "unsignedIntegerValue")}];

  return v6;
}

- (void)_resetAbbrevEntryField
{
  v3 = [(NCBSCityAbbreviationEntryViewController *)self customAbbreviation:*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier]];
  [(UITextField *)self->_abbrevEntry setText:v3];
}

@end