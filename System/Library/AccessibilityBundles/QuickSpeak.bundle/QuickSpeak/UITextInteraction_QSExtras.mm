@interface UITextInteraction_QSExtras
- (id)_updatedAccessibilityTextMenuWithMenuElements:(id)elements;
- (id)_updatedAccessibilityTextSpeechMenuWithMenu:(id)menu;
@end

@implementation UITextInteraction_QSExtras

- (id)_updatedAccessibilityTextSpeechMenuWithMenu:(id)menu
{
  v40[1] = *MEMORY[0x29EDCA608];
  menuCopy = menu;
  identifier = [menuCopy identifier];
  v6 = [identifier isEqualToString:*MEMORY[0x29EDC81F0]];

  if (v6)
  {
    v7 = AXLogSpeakSelection();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_29C1E5000, v7, OS_LOG_TYPE_INFO, "Will update AX speech items for UIMenu", buf, 2u);
    }

    array = [MEMORY[0x29EDB8DE8] array];
    if ([(UITextInteraction_QSExtras *)self _accessibilityQScanPerformAction:sel__accessibilitySpeak_ withSender:0])
    {
      v9 = MEMORY[0x29EDC7A08];
      v10 = accessibilityQuickSpeakLocalizedString(@"quickspeak.speak");
      v11 = [MEMORY[0x29EDC7AC8] systemImageNamed:@"play"];
      v12 = [v9 commandWithTitle:v10 image:v11 action:sel__accessibilitySpeak_ propertyList:0];

      [array addObject:v12];
    }

    else if ([(UITextInteraction_QSExtras *)self _accessibilityQScanPerformAction:sel__accessibilityPauseSpeaking_ withSender:0])
    {
      v14 = MEMORY[0x29EDC7A08];
      v15 = accessibilityQuickSpeakLocalizedString(@"quickspeak.pause");
      v16 = [MEMORY[0x29EDC7AC8] systemImageNamed:@"pause"];
      v17 = [v14 commandWithTitle:v15 image:v16 action:sel__accessibilityPauseSpeaking_ propertyList:0];

      [array addObject:v17];
    }

    else if ([(UITextInteraction_QSExtras *)self _accessibilityShouldShowSpeakLanguageBubble]&& [(UITextInteraction_QSExtras *)self _accessibilitySystemShouldShowSpeakLanguageBubble])
    {
      objc_initWeak(buf, self);
      v18 = MEMORY[0x29EDC7A50];
      v36[0] = MEMORY[0x29EDCA5F8];
      v36[1] = 3221225472;
      v36[2] = __74__UITextInteraction_QSExtras__updatedAccessibilityTextSpeechMenuWithMenu___block_invoke;
      v36[3] = &unk_29F2F02C0;
      objc_copyWeak(&v37, buf);
      v19 = [v18 elementWithProvider:v36];
      v20 = MEMORY[0x29EDC7B60];
      v21 = accessibilityQuickSpeakLocalizedString(@"quickspeak.speak.languages");
      v22 = [MEMORY[0x29EDC7AC8] systemImageNamed:@"play"];
      v40[0] = v19;
      v23 = [MEMORY[0x29EDB8D80] arrayWithObjects:v40 count:1];
      v24 = [v20 menuWithTitle:v21 image:v22 identifier:0 options:0 children:v23];

      [array addObject:v24];
      objc_destroyWeak(&v37);
      objc_destroyWeak(buf);
    }

    if ([(UITextInteraction_QSExtras *)self _accessibilityQScanPerformAction:sel__accessibilitySpeakSentence_ withSender:0])
    {
      v25 = MEMORY[0x29EDC7A08];
      v26 = accessibilityQuickSpeakLocalizedString(@"quickspeak.sentence");
      v27 = [MEMORY[0x29EDC7AC8] systemImageNamed:@"play"];
      v28 = [v25 commandWithTitle:v26 image:v27 action:sel__accessibilitySpeakSentence_ propertyList:0];

      [array addObject:v28];
    }

    if ([(UITextInteraction_QSExtras *)self _accessibilityQScanPerformAction:sel__accessibilitySpeakSpellOut_ withSender:0])
    {
      v29 = MEMORY[0x29EDC7A08];
      v30 = accessibilityQuickSpeakLocalizedString(@"quickspeak.spell.out");
      v31 = [MEMORY[0x29EDC7AC8] systemImageNamed:@"play"];
      v32 = [v29 commandWithTitle:v30 image:v31 action:sel__accessibilitySpeakSpellOut_ propertyList:0];

      [array addObject:v32];
    }

    v33 = AXLogSpeakSelection();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v39 = array;
      _os_log_impl(&dword_29C1E5000, v33, OS_LOG_TYPE_INFO, "Did update AX speech items for UIMenu: %@", buf, 0xCu);
    }

    v13 = [menuCopy menuByReplacingChildren:array];
  }

  else
  {
    v13 = 0;
  }

  v34 = *MEMORY[0x29EDCA608];

  return v13;
}

- (id)_updatedAccessibilityTextMenuWithMenuElements:(id)elements
{
  elementsCopy = elements;
  v21.receiver = self;
  v21.super_class = UITextInteraction_QSExtras;
  v5 = [(UITextInteraction_QSExtras *)&v21 _updatedAccessibilityTextMenuWithMenuElements:elementsCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else if (_AXSQuickSpeakEnabled() && (+[AXQuickSpeak sharedInstance](AXQuickSpeak, "sharedInstance"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isSpeaking], v8, (v9 & 1) == 0))
  {
    v7 = [elementsCopy mutableCopy];
    if ([v7 count])
    {
      v10 = 0;
      v11 = *MEMORY[0x29EDC81F0];
      do
      {
        objc_opt_class();
        v12 = [v7 objectAtIndex:v10];
        v13 = __UIAccessibilityCastAsClass();

        identifier = [v13 identifier];
        v15 = [identifier isEqualToString:v11];

        if (v15)
        {
          v16 = [(UITextInteraction_QSExtras *)self _updatedAccessibilityTextSpeechMenuWithMenu:v13];
          if (v16)
          {
            [v7 setObject:v16 atIndexedSubscript:v10];
          }

          else
          {
            children = [v13 children];
            v18 = [(UITextInteraction_QSExtras *)self _updatedAccessibilityTextMenuWithMenuElements:children];

            if ([v18 count])
            {
              v19 = [v13 menuByReplacingChildren:v18];
              [v7 setObject:v19 atIndexedSubscript:v10];
            }
          }
        }

        ++v10;
      }

      while (v10 < [v7 count]);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end