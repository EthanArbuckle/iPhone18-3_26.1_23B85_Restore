@interface VoiceOverSpeakSecondsDetailController
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)_selectedEncoding;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateTableCheckedSelection:(id)a3;
@end

@implementation VoiceOverSpeakSecondsDetailController

- (id)specifiers
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v18 = *MEMORY[0x277D3FC48];
    v19 = self;
    [(VoiceOverSpeakSecondsDetailController *)self loadSpecifiersFromPlistName:@"SpeakSecondsSettings" target:?];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = v24 = 0u;
    v4 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v22;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v22 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v21 + 1) + 8 * i);
          v9 = [v8 identifier];
          v10 = [v9 isEqualToString:@"VOICEOVER_SPEAK_SECONDS_ALWAYS"];

          if (v10)
          {
            [v8 setProperty:&unk_284E7E5D0 forKey:@"SpeakSecondsEncoding"];
          }

          v11 = [v8 identifier];
          v12 = [v11 isEqualToString:@"VOICEOVER_SPEAK_SECONDS_IF_DISPLAYED"];

          if (v12)
          {
            [v8 setProperty:&unk_284E7E5E8 forKey:@"SpeakSecondsEncoding"];
          }

          v13 = [v8 identifier];
          v14 = [v13 isEqualToString:@"VOICEOVER_SPEAK_SECONDS_NEVER"];

          if (v14)
          {
            [v8 setProperty:&unk_284E7E600 forKey:@"SpeakSecondsEncoding"];
          }
        }

        v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v5);
    }

    v15 = *(&v19->super.super.super.super.super.super.isa + v18);
    *(&v19->super.super.super.super.super.super.isa + v18) = obj;

    v3 = *(&v19->super.super.super.super.super.super.isa + v18);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v3;
}

- (int64_t)_selectedEncoding
{
  v2 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v3 = [v2 objectForKey:@"VoiceOverSpeakSecondsEncoding"];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v10.receiver = self;
  v10.super_class = VoiceOverSpeakSecondsDetailController;
  v5 = [(VoiceOverSpeakSecondsDetailController *)&v10 tableView:a3 cellForRowAtIndexPath:a4];
  v6 = [(VoiceOverSpeakSecondsDetailController *)self _selectedEncoding];
  v7 = [v5 specifier];
  v8 = [v7 propertyForKey:@"SpeakSecondsEncoding"];

  if (v8)
  {
    [v5 setChecked:{v6 == objc_msgSend(v8, "intValue")}];
  }

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = VoiceOverSpeakSecondsDetailController;
  [(VoiceOverSpeakSecondsDetailController *)&v13 tableView:v6 didSelectRowAtIndexPath:v7];
  v12.receiver = self;
  v12.super_class = VoiceOverSpeakSecondsDetailController;
  v8 = [(VoiceOverSpeakSecondsDetailController *)&v12 tableView:v6 cellForRowAtIndexPath:v7];
  v9 = [v8 specifier];
  v10 = [v9 propertyForKey:@"SpeakSecondsEncoding"];

  if (v10)
  {
    [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:v10 forKey:@"VoiceOverSpeakSecondsEncoding"];
    [v6 deselectRowAtIndexPath:v7 animated:1];
    [(VoiceOverSpeakSecondsDetailController *)self updateTableCheckedSelection:v7];
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 postNotificationName:@"AXVoiceOverReloadNotification" object:0];
  }
}

- (void)updateTableCheckedSelection:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x277D3FC60];
  v11 = v4;
  v6 = [*(&self->super.super.super.super.super.super.isa + v5) numberOfRowsInSection:{objc_msgSend(v4, "section")}];
  if (v6 >= 1)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      v9 = [MEMORY[0x277CCAA70] indexPathForRow:i inSection:{objc_msgSend(v11, "section")}];
      v10 = [*(&self->super.super.super.super.super.super.isa + v5) cellForRowAtIndexPath:v9];
      [v10 setChecked:{objc_msgSend(v9, "isEqual:", v11)}];
    }
  }
}

@end