@interface GuidedAccessTimeRestrictionsController
- (id)nameOfTimeRestrictionsAlertToneForSpecifier:(id)specifier;
- (id)shouldSpeakForTimeRestrictionsAlertPreferenceForSpecifier:(id)specifier;
- (id)specifiers;
- (void)setShouldSpeakForTimeRestrictionsAlertPreference:(id)preference specifier:(id)specifier;
@end

@implementation GuidedAccessTimeRestrictionsController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(GuidedAccessTimeRestrictionsController *)self loadSpecifiersFromPlistName:@"GuidedAccessTimeRestrictionsSettings" target:self];
    v6 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v5;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)nameOfTimeRestrictionsAlertToneForSpecifier:(id)specifier
{
  v3 = +[AXSettings sharedInstance];
  guidedAccessToneIdentifierForTimeRestrictionEvents = [v3 guidedAccessToneIdentifierForTimeRestrictionEvents];
  v5 = +[TLToneManager sharedToneManager];
  v6 = [v5 nameForToneIdentifier:guidedAccessToneIdentifierForTimeRestrictionEvents];

  return v6;
}

- (id)shouldSpeakForTimeRestrictionsAlertPreferenceForSpecifier:(id)specifier
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 guidedAccessShouldSpeakForTimeRestrictionEvents]);

  return v4;
}

- (void)setShouldSpeakForTimeRestrictionsAlertPreference:(id)preference specifier:(id)specifier
{
  bOOLValue = [preference BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setGuidedAccessShouldSpeakForTimeRestrictionEvents:bOOLValue];
}

@end