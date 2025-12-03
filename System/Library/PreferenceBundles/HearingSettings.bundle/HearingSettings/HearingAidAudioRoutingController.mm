@interface HearingAidAudioRoutingController
- (id)accessibilityPreferenceForSpecifier:(id)specifier;
- (id)specifiers;
- (void)accessibilitySetPreference:(id)preference specifier:(id)specifier;
- (void)viewDidLoad;
@end

@implementation HearingAidAudioRoutingController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = HearingAidAudioRoutingController;
  [(HearingAidAudioRoutingController *)&v2 viewDidLoad];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(HearingAidAudioRoutingController *)self loadSpecifiersFromPlistName:@"HearingAidAudioSettings" target:self];
    v6 = [v5 copy];
    v7 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v6;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)accessibilitySetPreference:(id)preference specifier:(id)specifier
{
  preferenceCopy = preference;
  properties = [specifier properties];
  v9 = [properties objectForKey:PSKeyNameKey];

  integerValue = [preferenceCopy integerValue];
  if ([v9 isEqualToString:@"DefaultRouteForCall"])
  {
    v8 = +[HUHearingAidSettings sharedInstance];
    [v8 setCallAudioRoute:integerValue];
  }

  else
  {
    if (![v9 isEqualToString:@"DefaultRouteForMedia"])
    {
      goto LABEL_6;
    }

    v8 = +[HUHearingAidSettings sharedInstance];
    [v8 setMediaAudioRoute:integerValue];
  }

LABEL_6:
}

- (id)accessibilityPreferenceForSpecifier:(id)specifier
{
  properties = [specifier properties];
  v4 = [properties objectForKey:PSKeyNameKey];

  if ([v4 isEqualToString:@"DefaultRouteForCall"])
  {
    v5 = +[HUHearingAidSettings sharedInstance];
    callAudioRoute = [v5 callAudioRoute];
LABEL_5:
    v7 = [NSNumber numberWithInteger:callAudioRoute];

    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"DefaultRouteForMedia"])
  {
    v5 = +[HUHearingAidSettings sharedInstance];
    callAudioRoute = [v5 mediaAudioRoute];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

@end