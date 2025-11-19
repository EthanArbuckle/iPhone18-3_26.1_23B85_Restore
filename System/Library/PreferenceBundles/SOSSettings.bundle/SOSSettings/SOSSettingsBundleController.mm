@interface SOSSettingsBundleController
- (id)specifiersWithSpecifier:(id)a3;
@end

@implementation SOSSettingsBundleController

- (id)specifiersWithSpecifier:(id)a3
{
  if (!self->_specifiersArray)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"EMERGENCY_SOS" value:&stru_216E8 table:@"SOSSettings"];
    v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:0 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    if (v6)
    {
      [v6 setIdentifier:@"EMERGENCY_SOS"];
      v11 = v6;
      v7 = [NSArray arrayWithObjects:&v11 count:1];
      specifiersArray = self->_specifiersArray;
      self->_specifiersArray = v7;
    }

    else
    {
      specifiersArray = self->_specifiersArray;
      self->_specifiersArray = &__NSArray0__struct;
    }
  }

  v9 = [(SOSSettingsBundleController *)self specifiersArray];

  return v9;
}

@end