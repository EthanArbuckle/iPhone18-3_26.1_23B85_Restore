@interface ASTLockScreenSuggestionsGlobalController
- (ASTLockScreenSuggestionsGlobalController)initWithOnChangeCallback:(id)callback;
- (id)isLockScreenSuggestionEnabled:(id)enabled;
- (id)specifier;
- (void)setLockScreenSuggestionsEnabled:(id)enabled forSpecifier:(id)specifier;
@end

@implementation ASTLockScreenSuggestionsGlobalController

- (ASTLockScreenSuggestionsGlobalController)initWithOnChangeCallback:(id)callback
{
  callbackCopy = callback;
  v9.receiver = self;
  v9.super_class = ASTLockScreenSuggestionsGlobalController;
  v5 = [(ASTLockScreenSuggestionsGlobalController *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(callbackCopy);
    onChangeCallback = v5->_onChangeCallback;
    v5->_onChangeCallback = v6;
  }

  return v5;
}

- (id)specifier
{
  specifier = self->_specifier;
  if (!specifier)
  {
    v4 = MEMORY[0x277D3FAD8];
    v5 = +[AssistantController bundle];
    v6 = [v5 localizedStringForKey:@"SUGGESTIONS_ALLOW_NOTIFICATIONS" value:&stru_285317CF0 table:@"AssistantSettings"];
    v7 = [v4 preferenceSpecifierNamed:v6 target:self set:sel_setLockScreenSuggestionsEnabled_forSpecifier_ get:sel_isLockScreenSuggestionEnabled_ detail:0 cell:6 edit:0];
    v8 = self->_specifier;
    self->_specifier = v7;

    v9 = MEMORY[0x277CBEC38];
    [(PSSpecifier *)self->_specifier setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];
    [(PSSpecifier *)self->_specifier setProperty:v9 forKey:*MEMORY[0x277D3FD80]];
    specifier = self->_specifier;
  }

  v10 = specifier;

  return v10;
}

- (id)isLockScreenSuggestionEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  v4 = CFPreferencesCopyAppValue(@"LockScreenSuggestionsDisabled", @"com.apple.lockscreen.shared");
  v5 = v4;
  if (v4)
  {
    v6 = [v4 BOOLValue] ^ 1;
  }

  else
  {
    v6 = 1;
  }

  return [v3 numberWithBool:v6];
}

- (void)setLockScreenSuggestionsEnabled:(id)enabled forSpecifier:(id)specifier
{
  enabledCopy = enabled;
  v5 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.lockscreen.shared"];
  [v5 setBool:objc_msgSend(enabledCopy forKey:{"BOOLValue") ^ 1, @"LockScreenSuggestionsDisabled"}];

  onChangeCallback = self->_onChangeCallback;
  if (onChangeCallback)
  {
    onChangeCallback[2](onChangeCallback, [enabledCopy BOOLValue]);
  }

  +[AssistantMetrics didToggle:on:](AssistantMetrics, "didToggle:on:", @"Lockscreen", [enabledCopy BOOLValue]);
  notify_post("com.apple.duetexpertd.prefschanged");
}

@end