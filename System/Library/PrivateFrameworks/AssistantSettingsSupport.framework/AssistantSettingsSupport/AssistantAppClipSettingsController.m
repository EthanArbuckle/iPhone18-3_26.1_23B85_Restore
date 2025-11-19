@interface AssistantAppClipSettingsController
+ (id)bundle;
- (AssistantAppClipSettingsController)init;
- (id)learnFromAppClipsEnabled:(id)a3;
- (id)showInSearchEnabled:(id)a3;
- (id)specifiers;
- (id)suggestAppClipsEnabled:(id)a3;
- (void)setLearnFromAppClipsEnabled:(id)a3 specifier:(id)a4;
- (void)setShowInSearchEnabled:(id)a3 specifier:(id)a4;
- (void)setSuggestAppClipsEnabled:(id)a3 specifier:(id)a4;
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
  v3 = [objc_opt_class() bundle];
  v4 = [v3 localizedStringForKey:@"APP_CLIPS" value:&stru_285317CF0 table:@"AssistantSettings"];
  [(AssistantAppClipSettingsController *)self setTitle:v4];
}

- (id)specifiers
{
  v41[5] = *MEMORY[0x277D85DE8];
  if (!self->_appClipsSuggestionsController)
  {
    v3 = [MEMORY[0x277CEF5F8] sharedController];
    appClipsSuggestionsController = self->_appClipsSuggestionsController;
    self->_appClipsSuggestionsController = v3;
  }

  v5 = MEMORY[0x277D3FAD8];
  v6 = [objc_opt_class() bundle];
  v7 = [v6 localizedStringForKey:@"APP_CLIPS_IN_APP_CLIPS_HEADER" value:&stru_285317CF0 table:@"AssistantSettings"];
  v40 = [v5 groupSpecifierWithName:v7];

  v8 = [objc_opt_class() bundle];
  v9 = [v8 localizedStringForKey:@"APP_CLIPS_IN_APP_CLIPS_FOOTER" value:&stru_285317CF0 table:@"AssistantSettings"];
  v10 = *MEMORY[0x277D3FF88];
  [v40 setObject:v9 forKeyedSubscript:*MEMORY[0x277D3FF88]];

  v11 = MEMORY[0x277D3FAD8];
  v12 = [objc_opt_class() bundle];
  v13 = [v12 localizedStringForKey:@"APP_CLIPS_LEARN_FROM_APP_CLIPS" value:&stru_285317CF0 table:@"AssistantSettings"];
  v38 = [v11 preferenceSpecifierNamed:v13 target:self set:sel_setLearnFromAppClipsEnabled_specifier_ get:sel_learnFromAppClipsEnabled_ detail:0 cell:6 edit:0];

  v14 = *MEMORY[0x277D3FD80];
  v15 = MEMORY[0x277CBEC38];
  [v38 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
  v16 = *MEMORY[0x277D3FF38];
  [v38 setProperty:v15 forKey:*MEMORY[0x277D3FF38]];
  v17 = MEMORY[0x277D3FAD8];
  v18 = [objc_opt_class() bundle];
  v19 = [v18 localizedStringForKey:@"SIRIANDSEARCH_PERAPP_ONHOMESCREEN_HEADER" value:&stru_285317CF0 table:@"AssistantSettings"];
  v39 = [v17 groupSpecifierWithName:v19];

  v20 = [objc_opt_class() bundle];
  v21 = [v20 localizedStringForKey:@"APP_CLIPS_IN_SEARCH_FOOTER" value:&stru_285317CF0 table:@"AssistantSettings"];
  [v39 setObject:v21 forKeyedSubscript:v10];

  v22 = MEMORY[0x277D3FAD8];
  v23 = [objc_opt_class() bundle];
  v24 = [v23 localizedStringForKey:@"APP_CLIPS_SHOW_IN_SEARCH" value:&stru_285317CF0 table:@"AssistantSettings"];
  v25 = [v22 preferenceSpecifierNamed:v24 target:self set:sel_setShowInSearchEnabled_specifier_ get:sel_showInSearchEnabled_ detail:0 cell:6 edit:0];

  v26 = MEMORY[0x277CBEC38];
  [v25 setProperty:MEMORY[0x277CBEC38] forKey:v14];
  [v25 setProperty:v26 forKey:v16];
  v27 = MEMORY[0x277D3FAD8];
  v28 = [objc_opt_class() bundle];
  v29 = [v28 localizedStringForKey:@"APP_CLIPS_SUGGEST_APP_CLIPS" value:&stru_285317CF0 table:@"AssistantSettings"];
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

- (void)setLearnFromAppClipsEnabled:(id)a3 specifier:(id)a4
{
  appClipsSuggestionsController = self->_appClipsSuggestionsController;
  v5 = [a3 BOOLValue];

  [(ASFAppClipsSuggestionsController *)appClipsSuggestionsController setLearnFromAppClipsEnabled:v5];
}

- (id)learnFromAppClipsEnabled:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(ASFAppClipsSuggestionsController *)self->_appClipsSuggestionsController learnFromAppClipsEnabled];

  return [v3 numberWithBool:v4];
}

- (void)setShowInSearchEnabled:(id)a3 specifier:(id)a4
{
  appClipsSuggestionsController = self->_appClipsSuggestionsController;
  v5 = [a3 BOOLValue];

  [(ASFAppClipsSuggestionsController *)appClipsSuggestionsController setShowInSearchEnabled:v5];
}

- (id)showInSearchEnabled:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(ASFAppClipsSuggestionsController *)self->_appClipsSuggestionsController showInSearchEnabled];

  return [v3 numberWithBool:v4];
}

- (void)setSuggestAppClipsEnabled:(id)a3 specifier:(id)a4
{
  appClipsSuggestionsController = self->_appClipsSuggestionsController;
  v5 = [a3 BOOLValue];

  [(ASFAppClipsSuggestionsController *)appClipsSuggestionsController setSuggestAppClipsEnabled:v5];
}

- (id)suggestAppClipsEnabled:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(ASFAppClipsSuggestionsController *)self->_appClipsSuggestionsController suggestAppClipsEnabled];

  return [v3 numberWithBool:v4];
}

@end