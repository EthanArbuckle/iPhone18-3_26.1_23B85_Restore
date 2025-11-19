@interface TypingFeedbackController
- (double)maximumValueForSpecifier:(id)a3;
- (double)minimumValueForSpecifier:(id)a3;
- (double)valueForSpecifier:(id)a3;
- (id)_characterFeedbackSpecifiers;
- (id)_delayPickerSpecifiers:(id)a3;
- (id)letterFeedbackEnabled:(id)a3;
- (id)phoneticFeedbackEnabled:(id)a3;
- (id)quickTypePredictionFeedbackEnabled:(id)a3;
- (id)speakCorrectionsEnabled:(id)a3;
- (id)specifiers;
- (id)stringValueForSpecifier:(id)a3;
- (id)wordFeedbackEnabled:(id)a3;
- (void)_updateDelayPickerSpecifiers:(id)a3 afterSpecifierWithIdentifier:(id)a4 enabled:(BOOL)a5;
- (void)setLetterFeedbackEnabled:(id)a3 specifier:(id)a4;
- (void)setPhoneticFeedbackEnabled:(id)a3 specifier:(id)a4;
- (void)setQuickTypePredictionFeedbackEnabled:(id)a3 specifier:(id)a4;
- (void)setSpeakCorrectionsEnabled:(id)a3 specifier:(id)a4;
- (void)setWordFeedbackEnabled:(id)a3 specifier:(id)a4;
- (void)specifier:(id)a3 setValue:(double)a4;
- (void)viewDidLoad;
@end

@implementation TypingFeedbackController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = TypingFeedbackController;
  [(TypingFeedbackController *)&v6 viewDidLoad];
  v3 = [(TypingFeedbackController *)self table];
  v4 = objc_opt_class();
  v5 = +[AXUISettingsEditableTableCellWithStepper cellReuseIdentifier];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(TypingFeedbackController *)self loadSpecifiersFromPlistName:@"TypingFeedbackSettings" target:self];
    v6 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v7 = [*&self->AXUISettingsBaseListController_opaque[v3] mutableCopy];
    v8 = +[AXSettings sharedInstance];
    if ([v8 letterFeedbackEnabled])
    {
      v9 = 1;
    }

    else
    {
      v10 = +[AXSettings sharedInstance];
      v9 = [v10 phoneticFeedbackEnabled];
    }

    v11 = [(TypingFeedbackController *)self _characterFeedbackSpecifiers];
    v12 = [v11 count];

    if (v12 && v9)
    {
      v13 = [(TypingFeedbackController *)self specifierForKey:@"PhoneticFeedback"];
      v14 = [v7 indexOfObject:v13];
      v15 = [(TypingFeedbackController *)self _characterFeedbackSpecifiers];
      v16 = [v15 count];

      v17 = [[NSIndexSet alloc] initWithIndexesInRange:{v14 + 1, v16}];
      v18 = [(TypingFeedbackController *)self _characterFeedbackSpecifiers];
      [v7 insertObjects:v18 atIndexes:v17];
    }

    v19 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v7;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (double)minimumValueForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(TypingFeedbackController *)self feedbackDelayPickerSpecifier];

  if (v5 == v4)
  {
    v6 = kAXSCharacterFeedbackDelayDurationMin;
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (double)maximumValueForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(TypingFeedbackController *)self feedbackDelayPickerSpecifier];

  if (v5 == v4)
  {
    v6 = kAXSCharacterFeedbackDelayDurationMax;
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (double)valueForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(TypingFeedbackController *)self feedbackDelayPickerSpecifier];

  v6 = 0.0;
  if (v5 == v4)
  {
    v7 = +[AXSettings sharedInstance];
    [v7 characterFeedbackDelayDuration];
    v6 = v8;
  }

  return v6;
}

- (void)specifier:(id)a3 setValue:(double)a4
{
  v6 = a3;
  v7 = [(TypingFeedbackController *)self feedbackDelayPickerSpecifier];

  if (v7 == v6)
  {
    v8 = +[AXSettings sharedInstance];
    [v8 setCharacterFeedbackDelayDuration:a4];
  }
}

- (id)stringValueForSpecifier:(id)a3
{
  [(TypingFeedbackController *)self valueForSpecifier:a3];
  v3 = [NSNumber numberWithDouble:?];
  v4 = AXFormatNumberWithOptions();

  return v4;
}

- (void)setLetterFeedbackEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = +[AXSettings sharedInstance];
  [v6 setLetterFeedbackEnabled:{objc_msgSend(v5, "BOOLValue")}];

  v8 = [(TypingFeedbackController *)self _characterFeedbackSpecifiers];
  LODWORD(v6) = [v5 BOOLValue];

  if (v6)
  {
    [(TypingFeedbackController *)self _updateDelayPickerSpecifiers:v8 afterSpecifierWithIdentifier:@"PhoneticFeedback" enabled:1];
  }

  else
  {
    v7 = +[AXSettings sharedInstance];
    -[TypingFeedbackController _updateDelayPickerSpecifiers:afterSpecifierWithIdentifier:enabled:](self, "_updateDelayPickerSpecifiers:afterSpecifierWithIdentifier:enabled:", v8, @"PhoneticFeedback", [v7 phoneticFeedbackEnabled]);
  }
}

- (id)letterFeedbackEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 letterFeedbackEnabled]);

  return v4;
}

- (void)setPhoneticFeedbackEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = +[AXSettings sharedInstance];
  [v6 setPhoneticFeedbackEnabled:{objc_msgSend(v5, "BOOLValue")}];

  v8 = [(TypingFeedbackController *)self _characterFeedbackSpecifiers];
  LODWORD(v6) = [v5 BOOLValue];

  if (v6)
  {
    [(TypingFeedbackController *)self _updateDelayPickerSpecifiers:v8 afterSpecifierWithIdentifier:@"PhoneticFeedback" enabled:1];
  }

  else
  {
    v7 = +[AXSettings sharedInstance];
    -[TypingFeedbackController _updateDelayPickerSpecifiers:afterSpecifierWithIdentifier:enabled:](self, "_updateDelayPickerSpecifiers:afterSpecifierWithIdentifier:enabled:", v8, @"PhoneticFeedback", [v7 letterFeedbackEnabled]);
  }
}

- (id)phoneticFeedbackEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 phoneticFeedbackEnabled]);

  return v4;
}

- (id)_characterFeedbackSpecifiers
{
  v3 = [(TypingFeedbackController *)self feedbackDelayPickerSpecifier];

  if (!v3)
  {
    v4 = [PSSpecifier ax_stepperSpecifierWithDelegate:self];
    [(TypingFeedbackController *)self setFeedbackDelayPickerSpecifier:v4];
  }

  v5 = [(TypingFeedbackController *)self feedbackDelayPickerSpecifier];
  v6 = [(TypingFeedbackController *)self _delayPickerSpecifiers:v5];

  return v6;
}

- (id)wordFeedbackEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 wordFeedbackEnabled]);

  return v4;
}

- (void)setWordFeedbackEnabled:(id)a3 specifier:(id)a4
{
  v4 = a3;
  v6 = +[AXSettings sharedInstance];
  v5 = [v4 BOOLValue];

  [v6 setWordFeedbackEnabled:v5];
}

- (id)quickTypePredictionFeedbackEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 quickTypePredictionFeedbackEnabled]);

  return v4;
}

- (void)setQuickTypePredictionFeedbackEnabled:(id)a3 specifier:(id)a4
{
  v4 = a3;
  v6 = +[AXSettings sharedInstance];
  v5 = [v4 BOOLValue];

  [v6 setQuickTypePredictionFeedbackEnabled:v5];
}

- (id)speakCorrectionsEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 speakCorrectionsEnabled]);

  return v4;
}

- (void)setSpeakCorrectionsEnabled:(id)a3 specifier:(id)a4
{
  v4 = a3;
  v6 = +[AXSettings sharedInstance];
  v5 = [v4 BOOLValue];

  [v6 setSpeakCorrectionsEnabled:v5];
}

- (void)_updateDelayPickerSpecifiers:(id)a3 afterSpecifierWithIdentifier:(id)a4 enabled:(BOOL)a5
{
  v5 = a5;
  v17 = a3;
  v8 = a4;
  v9 = [(TypingFeedbackController *)self specifiers];
  v10 = [v17 firstObject];
  v11 = [v9 containsObject:v10];

  if (v5)
  {
    if ((v11 & 1) == 0)
    {
      [(TypingFeedbackController *)self insertContiguousSpecifiers:v17 afterSpecifierID:v8 animated:1];
    }
  }

  else if (v11)
  {
    v12 = [(TypingFeedbackController *)self feedbackDelayPickerSpecifier];
    v13 = [(TypingFeedbackController *)self indexPathForSpecifier:v12];

    v14 = [(TypingFeedbackController *)self table];
    v15 = [v14 cellForRowAtIndexPath:v13];

    v16 = [v15 nameTextField];
    [v16 resignFirstResponder];

    [(TypingFeedbackController *)self removeContiguousSpecifiers:v17 animated:1];
  }
}

- (id)_delayPickerSpecifiers:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = [(TypingFeedbackController *)self groupSpecifier];

  if (!v6)
  {
    v7 = settingsLocString(@"CHARACTER_FEEDBACK_DELAY", @"Accessibility");
    v8 = [PSSpecifier groupSpecifierWithName:v7];
    [(TypingFeedbackController *)self setGroupSpecifier:v8];

    v9 = [(TypingFeedbackController *)self groupSpecifier];
    v10 = settingsLocString(@"CHARACTER_FEEDBACK_DELAY_FOOTER", @"Accessibility");
    [v9 setProperty:v10 forKey:PSFooterTextGroupKey];
  }

  v11 = [(TypingFeedbackController *)self groupSpecifier];

  if (v11)
  {
    v12 = [(TypingFeedbackController *)self groupSpecifier];
    [v5 addObject:v12];
  }

  if (v4)
  {
    [v5 addObject:v4];
  }

  return v5;
}

@end