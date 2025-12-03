@interface AssistantAppClipSettingsController
+ (id)bundle;
- (AssistantAppClipSettingsController)init;
- (id)learnFromAppClipsEnabled:(id)enabled;
- (id)showInSearchEnabled:(id)enabled;
- (id)specifiers;
- (id)suggestAppClipsEnabled:(id)enabled;
- (void)setLearnFromAppClipsEnabled:(id)enabled specifier:(id)specifier;
- (void)setShowInSearchEnabled:(id)enabled specifier:(id)specifier;
- (void)setSuggestAppClipsEnabled:(id)enabled specifier:(id)specifier;
- (void)viewDidLoad;
@end

@implementation AssistantAppClipSettingsController

+ (id)bundle
{
  v2 = bundle_sAssistantBundle_1;
  if (!bundle_sAssistantBundle_1)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = bundle_sAssistantBundle_1;
    bundle_sAssistantBundle_1 = v3;

    v2 = bundle_sAssistantBundle_1;
  }

  return v2;
}

- (AssistantAppClipSettingsController)init
{
  v3.receiver = self;
  v3.super_class = AssistantAppClipSettingsController;
  return [(AssistantAppClipSettingsController *)&v3 init];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = AssistantAppClipSettingsController;
  [(AssistantAppClipSettingsController *)&v5 viewDidLoad];
  bundle = [objc_opt_class() bundle];
  v4 = [bundle localizedStringForKey:@"APP_CLIPS" value:&stru_285317CF0 table:@"AssistantSettings"];
  [(AssistantAppClipSettingsController *)self setTitle:v4];
}

- (id)specifiers
{
  v41[5] = *MEMORY[0x277D85DE8];
  if (!self->_appClipsSuggestionsController)
  {
    mEMORY[0x277CEF5F8] = [MEMORY[0x277CEF5F8] sharedController];
    appClipsSuggestionsController = self->_appClipsSuggestionsController;
    self->_appClipsSuggestionsController = mEMORY[0x277CEF5F8];
  }

  v5 = MEMORY[0x277D3FAD8];
  bundle = [objc_opt_class() bundle];
  v7 = [bundle localizedStringForKey:@"APP_CLIPS_IN_APP_CLIPS_HEADER" value:&stru_285317CF0 table:@"AssistantSettings"];
  v40 = [v5 groupSpecifierWithName:v7];

  bundle2 = [objc_opt_class() bundle];
  v9 = [bundle2 localizedStringForKey:@"APP_CLIPS_IN_APP_CLIPS_FOOTER" value:&stru_285317CF0 table:@"AssistantSettings"];
  v10 = *MEMORY[0x277D3FF88];
  [v40 setObject:v9 forKeyedSubscript:*MEMORY[0x277D3FF88]];

  v11 = MEMORY[0x277D3FAD8];
  bundle3 = [objc_opt_class() bundle];
  v13 = [bundle3 localizedStringForKey:@"APP_CLIPS_LEARN_FROM_APP_CLIPS" value:&stru_285317CF0 table:@"AssistantSettings"];
  v38 = [v11 preferenceSpecifierNamed:v13 target:self set:sel_setLearnFromAppClipsEnabled_specifier_ get:sel_learnFromAppClipsEnabled_ detail:0 cell:6 edit:0];

  v14 = *MEMORY[0x277D3FD80];
  v15 = MEMORY[0x277CBEC38];
  [v38 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
  v16 = *MEMORY[0x277D3FF38];
  [v38 setProperty:v15 forKey:*MEMORY[0x277D3FF38]];
  v17 = MEMORY[0x277D3FAD8];
  bundle4 = [objc_opt_class() bundle];
  v19 = [bundle4 localizedStringForKey:@"SIRIANDSEARCH_PERAPP_ONHOMESCREEN_HEADER" value:&stru_285317CF0 table:@"AssistantSettings"];
  v39 = [v17 groupSpecifierWithName:v19];

  bundle5 = [objc_opt_class() bundle];
  v21 = [bundle5 localizedStringForKey:@"APP_CLIPS_IN_SEARCH_FOOTER" value:&stru_285317CF0 table:@"AssistantSettings"];
  [v39 setObject:v21 forKeyedSubscript:v10];

  v22 = MEMORY[0x277D3FAD8];
  bundle6 = [objc_opt_class() bundle];
  v24 = [bundle6 localizedStringForKey:@"APP_CLIPS_SHOW_IN_SEARCH" value:&stru_285317CF0 table:@"AssistantSettings"];
  v25 = [v22 preferenceSpecifierNamed:v24 target:self set:sel_setShowInSearchEnabled_specifier_ get:sel_showInSearchEnabled_ detail:0 cell:6 edit:0];

  v26 = MEMORY[0x277CBEC38];
  [v25 setProperty:MEMORY[0x277CBEC38] forKey:v14];
  [v25 setProperty:v26 forKey:v16];
  v27 = MEMORY[0x277D3FAD8];
  bundle7 = [objc_opt_class() bundle];
  v29 = [bundle7 localizedStringForKey:@"APP_CLIPS_SUGGEST_APP_CLIPS" value:&stru_285317CF0 table:@"AssistantSettings"];
  v30 = [v27 preferenceSpecifierNamed:v29 target:self set:sel_setSuggestAppClipsEnabled_specifier_ get:sel_suggestAppClipsEnabled_ detail:0 cell:6 edit:0];

  [v30 setProperty:v26 forKey:v14];
  [v30 setProperty:v26 forKey:v16];
  v41[0] = v40;
  v41[1] = v38;
  v41[2] = v39;
  v41[3] = v25;
  v41[4] = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:5];
  v32 = *MEMORY[0x277D3FC48];
  v33 = *(&self->super.super.super.super.super.isa + v32);
  *(&self->super.super.super.super.super.isa + v32) = v31;

  v34 = *(&self->super.super.super.super.super.isa + v32);
  v35 = v34;

  v36 = *MEMORY[0x277D85DE8];
  return v34;
}

- (void)setLearnFromAppClipsEnabled:(id)enabled specifier:(id)specifier
{
  appClipsSuggestionsController = self->_appClipsSuggestionsController;
  bOOLValue = [enabled BOOLValue];

  [(ASFAppClipsSuggestionsController *)appClipsSuggestionsController setLearnFromAppClipsEnabled:bOOLValue];
}

- (id)learnFromAppClipsEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  learnFromAppClipsEnabled = [(ASFAppClipsSuggestionsController *)self->_appClipsSuggestionsController learnFromAppClipsEnabled];

  return [v3 numberWithBool:learnFromAppClipsEnabled];
}

- (void)setShowInSearchEnabled:(id)enabled specifier:(id)specifier
{
  appClipsSuggestionsController = self->_appClipsSuggestionsController;
  bOOLValue = [enabled BOOLValue];

  [(ASFAppClipsSuggestionsController *)appClipsSuggestionsController setShowInSearchEnabled:bOOLValue];
}

- (id)showInSearchEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  showInSearchEnabled = [(ASFAppClipsSuggestionsController *)self->_appClipsSuggestionsController showInSearchEnabled];

  return [v3 numberWithBool:showInSearchEnabled];
}

- (void)setSuggestAppClipsEnabled:(id)enabled specifier:(id)specifier
{
  appClipsSuggestionsController = self->_appClipsSuggestionsController;
  bOOLValue = [enabled BOOLValue];

  [(ASFAppClipsSuggestionsController *)appClipsSuggestionsController setSuggestAppClipsEnabled:bOOLValue];
}

- (id)suggestAppClipsEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  suggestAppClipsEnabled = [(ASFAppClipsSuggestionsController *)self->_appClipsSuggestionsController suggestAppClipsEnabled];

  return [v3 numberWithBool:suggestAppClipsEnabled];
}

@end