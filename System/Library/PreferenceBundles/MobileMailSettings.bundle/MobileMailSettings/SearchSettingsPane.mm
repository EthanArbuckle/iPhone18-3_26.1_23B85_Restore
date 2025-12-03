@interface SearchSettingsPane
- (id)_defaultSettings;
- (id)enableSearchInJunk:(id)junk;
- (id)enableSearchInTrash:(id)trash;
- (id)specifiers;
- (void)setEnableSearchInJunk:(id)junk withSpecifier:(id)specifier;
- (void)setEnableSearchInTrash:(id)trash withSpecifier:(id)specifier;
- (void)viewDidLoad;
@end

@implementation SearchSettingsPane

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SearchSettingsPane;
  [(SearchSettingsPane *)&v5 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"SEARCH_PREFERENCE" value:&stru_3D2B0 table:@"Preferences"];
  [(SearchSettingsPane *)self setTitle:v4];
}

- (void)setEnableSearchInJunk:(id)junk withSpecifier:(id)specifier
{
  junkCopy = junk;
  bOOLValue = [junkCopy BOOLValue];
  sub_1A978(EMUserDefaultIncludeSearchResultsFromJunkKey, bOOLValue);
}

- (id)enableSearchInJunk:(id)junk
{
  v3 = [NSNumber numberWithBool:getMailBoolPreferenceValueWithDefault(EMUserDefaultIncludeSearchResultsFromJunkKey, 0)];

  return v3;
}

- (void)setEnableSearchInTrash:(id)trash withSpecifier:(id)specifier
{
  trashCopy = trash;
  bOOLValue = [trashCopy BOOLValue];
  sub_1A978(EMUserDefaultIncludeSearchResultsFromTrashKey, bOOLValue);
}

- (id)enableSearchInTrash:(id)trash
{
  v3 = [NSNumber numberWithBool:getMailBoolPreferenceValueWithDefault(EMUserDefaultIncludeSearchResultsFromTrashKey, 1)];

  return v3;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    _defaultSettings = [(SearchSettingsPane *)self _defaultSettings];
    v6 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = _defaultSettings;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)_defaultSettings
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"INCLUDE_RESULTS_FROM" value:&stru_3D2B0 table:@"Preferences"];
  v6 = [PSSpecifier groupSpecifierWithName:v5];
  [v3 addObject:v6];

  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"SEARCH_RESULTS_IN_JUNK_MAILBOX" value:&stru_3D2B0 table:@"Preferences"];
  v9 = _ConfigurePSSpecifier(v3, v8, self, "setEnableSearchInJunk:withSpecifier:", "enableSearchInJunk:", 0, 0, 0, 6, 0, 0, 0, 0);

  [v9 setIdentifier:EMUserDefaultIncludeSearchResultsFromJunkKey];
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"SEARCH_RESULTS_IN_TRASH_MAILBOX" value:&stru_3D2B0 table:@"Preferences"];
  v12 = _ConfigurePSSpecifier(v3, v11, self, "setEnableSearchInTrash:withSpecifier:", "enableSearchInTrash:", 0, 0, 0, 6, 0, 0, 0, 0);

  [v12 setIdentifier:EMUserDefaultIncludeSearchResultsFromTrashKey];

  return v3;
}

@end