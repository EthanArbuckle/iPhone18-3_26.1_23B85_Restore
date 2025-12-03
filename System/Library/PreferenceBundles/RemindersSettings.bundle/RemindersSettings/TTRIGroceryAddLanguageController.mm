@interface TTRIGroceryAddLanguageController
- (_TtC17RemindersSettings32TTRIGroceryAddLanguageController)initWithCoder:(id)coder;
- (_TtC17RemindersSettings32TTRIGroceryAddLanguageController)initWithNibName:(id)name bundle:(id)bundle;
- (id)automaticSecondaryGroceryLocale;
- (id)secondaryGroceryLanguageDisplayName;
- (id)specifiers;
- (void)setAutomaticSecondaryGroceryLocale:(id)locale;
- (void)viewDidLoad;
@end

@implementation TTRIGroceryAddLanguageController

- (_TtC17RemindersSettings32TTRIGroceryAddLanguageController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_23C90();
  }

  return sub_1EF7C();
}

- (_TtC17RemindersSettings32TTRIGroceryAddLanguageController)initWithCoder:(id)coder
{
  *&self->PSListController_opaque[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_languageListSpecifier] = 0;
  *&self->PSListController_opaque[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_fixLanguageSpecifier] = 0;
  v3 = &self->PSListController_opaque[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_groceryLanguageTemporaryDisplayName];
  *v3 = 0;
  *(v3 + 1) = 0;
  self->PSListController_opaque[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_hasSecondaryGroceryLocaleCache] = 0;
  *&self->PSListController_opaque[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_cachedSecondaryGroceryLocale] = 0;
  result = sub_23FF0();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BCFC();
}

- (id)specifiers
{
  selfCopy = self;
  v3 = sub_1C498();

  if (v3)
  {
    v4.super.isa = sub_23D00().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (id)secondaryGroceryLanguageDisplayName
{
  selfCopy = self;
  sub_1D2A4();

  v3 = sub_23C80();

  return v3;
}

- (id)automaticSecondaryGroceryLocale
{
  selfCopy = self;
  isAutomatic = &dword_0 + 1;
  v4 = sub_1F268(1);
  if (v4)
  {
    isAutomatic = [v4 isAutomatic];
  }

  v5 = [objc_allocWithZone(NSNumber) initWithBool:isAutomatic];

  return v5;
}

- (void)setAutomaticSecondaryGroceryLocale:(id)locale
{
  localeCopy = locale;
  selfCopy = self;
  sub_1D614(localeCopy);
}

@end