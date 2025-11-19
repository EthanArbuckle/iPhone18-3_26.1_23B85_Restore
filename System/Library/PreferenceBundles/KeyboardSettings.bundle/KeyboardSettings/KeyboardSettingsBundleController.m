@interface KeyboardSettingsBundleController
- (id)specifiersWithSpecifier:(id)a3;
- (void)dealloc;
@end

@implementation KeyboardSettingsBundleController

- (id)specifiersWithSpecifier:(id)a3
{
  if (!self->_specifier)
  {
    v5 = PSIDKey;
    if ([objc_msgSend(a3 propertyForKey:{PSIDKey), "isEqualToString:", @"General"}])
    {
      v6 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"Keyboard", &stru_49C80, @"Keyboard"];
      specifier = [PSSpecifier preferenceSpecifierNamed:v6 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
      self->_specifier = specifier;
      v8 = @"Keyboard";
    }

    else
    {
      if ([objc_msgSend(a3 propertyForKey:{v5), "isEqualToString:", @"Keyboard"}])
      {
        v9 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"KEYBOARDS", &stru_49C80, @"Keyboard"];
        specifier = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:"keyboardsValue:" detail:objc_opt_class() cell:2 edit:0];
        self->_specifier = specifier;
      }

      else
      {
        v10 = PSAppSettingsBundleIDKey;
        v11 = [a3 propertyForKey:PSAppSettingsBundleIDKey];
        if (![+[TIKeyboardExtensionController keyboardsForBundleID:](TIKeyboardExtensionController keyboardsForBundleID:{v11), "count"}])
        {
          return &__NSArray0__struct;
        }

        v12 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"KEYBOARDS", &stru_49C80, @"Keyboard"];
        v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
        self->_specifier = v13;
        [(PSSpecifier *)v13 setProperty:v11 forKey:v10];
        v14 = [UIImage imageNamed:@"KeyboardSettings" inBundle:[NSBundle bundleForClass:objc_opt_class()]];
        specifier = self->_specifier;
        if (v14)
        {
          [(PSSpecifier *)specifier setProperty:v14 forKey:PSIconImageKey];
          specifier = self->_specifier;
        }
      }

      v8 = @"KEYBOARDS";
    }

    [(PSSpecifier *)specifier setProperty:v8 forKey:v5];
  }

  v15 = self->_specifier;

  return [NSArray arrayWithObject:v15];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = KeyboardSettingsBundleController;
  [(KeyboardSettingsBundleController *)&v3 dealloc];
}

@end