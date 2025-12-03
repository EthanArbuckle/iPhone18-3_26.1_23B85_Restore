@interface TypingFeedbackController
- (double)maximumValueForSpecifier:(id)specifier;
- (double)minimumValueForSpecifier:(id)specifier;
- (double)valueForSpecifier:(id)specifier;
- (id)_characterFeedbackSpecifiers;
- (id)_delayPickerSpecifiers:(id)specifiers;
- (id)letterFeedbackEnabled:(id)enabled;
- (id)phoneticFeedbackEnabled:(id)enabled;
- (id)quickTypePredictionFeedbackEnabled:(id)enabled;
- (id)speakCorrectionsEnabled:(id)enabled;
- (id)specifiers;
- (id)stringValueForSpecifier:(id)specifier;
- (id)wordFeedbackEnabled:(id)enabled;
- (void)_updateDelayPickerSpecifiers:(id)specifiers afterSpecifierWithIdentifier:(id)identifier enabled:(BOOL)enabled;
- (void)setLetterFeedbackEnabled:(id)enabled specifier:(id)specifier;
- (void)setPhoneticFeedbackEnabled:(id)enabled specifier:(id)specifier;
- (void)setQuickTypePredictionFeedbackEnabled:(id)enabled specifier:(id)specifier;
- (void)setSpeakCorrectionsEnabled:(id)enabled specifier:(id)specifier;
- (void)setWordFeedbackEnabled:(id)enabled specifier:(id)specifier;
- (void)specifier:(id)specifier setValue:(double)value;
- (void)viewDidLoad;
@end

@implementation TypingFeedbackController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = TypingFeedbackController;
  [(TypingFeedbackController *)&v6 viewDidLoad];
  table = [(TypingFeedbackController *)self table];
  v4 = objc_opt_class();
  v5 = +[AXUISettingsEditableTableCellWithStepper cellReuseIdentifier];
  [table registerClass:v4 forCellReuseIdentifier:v5];
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
      phoneticFeedbackEnabled = 1;
    }

    else
    {
      v10 = +[AXSettings sharedInstance];
      phoneticFeedbackEnabled = [v10 phoneticFeedbackEnabled];
    }

    _characterFeedbackSpecifiers = [(TypingFeedbackController *)self _characterFeedbackSpecifiers];
    v12 = [_characterFeedbackSpecifiers count];

    if (v12 && phoneticFeedbackEnabled)
    {
      v13 = [(TypingFeedbackController *)self specifierForKey:@"PhoneticFeedback"];
      v14 = [v7 indexOfObject:v13];
      _characterFeedbackSpecifiers2 = [(TypingFeedbackController *)self _characterFeedbackSpecifiers];
      v16 = [_characterFeedbackSpecifiers2 count];

      v17 = [[NSIndexSet alloc] initWithIndexesInRange:{v14 + 1, v16}];
      _characterFeedbackSpecifiers3 = [(TypingFeedbackController *)self _characterFeedbackSpecifiers];
      [v7 insertObjects:_characterFeedbackSpecifiers3 atIndexes:v17];
    }

    v19 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v7;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (double)minimumValueForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  feedbackDelayPickerSpecifier = [(TypingFeedbackController *)self feedbackDelayPickerSpecifier];

  if (feedbackDelayPickerSpecifier == specifierCopy)
  {
    v6 = kAXSCharacterFeedbackDelayDurationMin;
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (double)maximumValueForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  feedbackDelayPickerSpecifier = [(TypingFeedbackController *)self feedbackDelayPickerSpecifier];

  if (feedbackDelayPickerSpecifier == specifierCopy)
  {
    v6 = kAXSCharacterFeedbackDelayDurationMax;
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (double)valueForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  feedbackDelayPickerSpecifier = [(TypingFeedbackController *)self feedbackDelayPickerSpecifier];

  v6 = 0.0;
  if (feedbackDelayPickerSpecifier == specifierCopy)
  {
    v7 = +[AXSettings sharedInstance];
    [v7 characterFeedbackDelayDuration];
    v6 = v8;
  }

  return v6;
}

- (void)specifier:(id)specifier setValue:(double)value
{
  specifierCopy = specifier;
  feedbackDelayPickerSpecifier = [(TypingFeedbackController *)self feedbackDelayPickerSpecifier];

  if (feedbackDelayPickerSpecifier == specifierCopy)
  {
    v8 = +[AXSettings sharedInstance];
    [v8 setCharacterFeedbackDelayDuration:value];
  }
}

- (id)stringValueForSpecifier:(id)specifier
{
  [(TypingFeedbackController *)self valueForSpecifier:specifier];
  v3 = [NSNumber numberWithDouble:?];
  v4 = AXFormatNumberWithOptions();

  return v4;
}

- (void)setLetterFeedbackEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  v6 = +[AXSettings sharedInstance];
  [v6 setLetterFeedbackEnabled:{objc_msgSend(enabledCopy, "BOOLValue")}];

  _characterFeedbackSpecifiers = [(TypingFeedbackController *)self _characterFeedbackSpecifiers];
  LODWORD(v6) = [enabledCopy BOOLValue];

  if (v6)
  {
    [(TypingFeedbackController *)self _updateDelayPickerSpecifiers:_characterFeedbackSpecifiers afterSpecifierWithIdentifier:@"PhoneticFeedback" enabled:1];
  }

  else
  {
    v7 = +[AXSettings sharedInstance];
    -[TypingFeedbackController _updateDelayPickerSpecifiers:afterSpecifierWithIdentifier:enabled:](self, "_updateDelayPickerSpecifiers:afterSpecifierWithIdentifier:enabled:", _characterFeedbackSpecifiers, @"PhoneticFeedback", [v7 phoneticFeedbackEnabled]);
  }
}

- (id)letterFeedbackEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 letterFeedbackEnabled]);

  return v4;
}

- (void)setPhoneticFeedbackEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  v6 = +[AXSettings sharedInstance];
  [v6 setPhoneticFeedbackEnabled:{objc_msgSend(enabledCopy, "BOOLValue")}];

  _characterFeedbackSpecifiers = [(TypingFeedbackController *)self _characterFeedbackSpecifiers];
  LODWORD(v6) = [enabledCopy BOOLValue];

  if (v6)
  {
    [(TypingFeedbackController *)self _updateDelayPickerSpecifiers:_characterFeedbackSpecifiers afterSpecifierWithIdentifier:@"PhoneticFeedback" enabled:1];
  }

  else
  {
    v7 = +[AXSettings sharedInstance];
    -[TypingFeedbackController _updateDelayPickerSpecifiers:afterSpecifierWithIdentifier:enabled:](self, "_updateDelayPickerSpecifiers:afterSpecifierWithIdentifier:enabled:", _characterFeedbackSpecifiers, @"PhoneticFeedback", [v7 letterFeedbackEnabled]);
  }
}

- (id)phoneticFeedbackEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 phoneticFeedbackEnabled]);

  return v4;
}

- (id)_characterFeedbackSpecifiers
{
  feedbackDelayPickerSpecifier = [(TypingFeedbackController *)self feedbackDelayPickerSpecifier];

  if (!feedbackDelayPickerSpecifier)
  {
    v4 = [PSSpecifier ax_stepperSpecifierWithDelegate:self];
    [(TypingFeedbackController *)self setFeedbackDelayPickerSpecifier:v4];
  }

  feedbackDelayPickerSpecifier2 = [(TypingFeedbackController *)self feedbackDelayPickerSpecifier];
  v6 = [(TypingFeedbackController *)self _delayPickerSpecifiers:feedbackDelayPickerSpecifier2];

  return v6;
}

- (id)wordFeedbackEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 wordFeedbackEnabled]);

  return v4;
}

- (void)setWordFeedbackEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  v6 = +[AXSettings sharedInstance];
  bOOLValue = [enabledCopy BOOLValue];

  [v6 setWordFeedbackEnabled:bOOLValue];
}

- (id)quickTypePredictionFeedbackEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 quickTypePredictionFeedbackEnabled]);

  return v4;
}

- (void)setQuickTypePredictionFeedbackEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  v6 = +[AXSettings sharedInstance];
  bOOLValue = [enabledCopy BOOLValue];

  [v6 setQuickTypePredictionFeedbackEnabled:bOOLValue];
}

- (id)speakCorrectionsEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 speakCorrectionsEnabled]);

  return v4;
}

- (void)setSpeakCorrectionsEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  v6 = +[AXSettings sharedInstance];
  bOOLValue = [enabledCopy BOOLValue];

  [v6 setSpeakCorrectionsEnabled:bOOLValue];
}

- (void)_updateDelayPickerSpecifiers:(id)specifiers afterSpecifierWithIdentifier:(id)identifier enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  specifiersCopy = specifiers;
  identifierCopy = identifier;
  specifiers = [(TypingFeedbackController *)self specifiers];
  firstObject = [specifiersCopy firstObject];
  v11 = [specifiers containsObject:firstObject];

  if (enabledCopy)
  {
    if ((v11 & 1) == 0)
    {
      [(TypingFeedbackController *)self insertContiguousSpecifiers:specifiersCopy afterSpecifierID:identifierCopy animated:1];
    }
  }

  else if (v11)
  {
    feedbackDelayPickerSpecifier = [(TypingFeedbackController *)self feedbackDelayPickerSpecifier];
    v13 = [(TypingFeedbackController *)self indexPathForSpecifier:feedbackDelayPickerSpecifier];

    table = [(TypingFeedbackController *)self table];
    v15 = [table cellForRowAtIndexPath:v13];

    nameTextField = [v15 nameTextField];
    [nameTextField resignFirstResponder];

    [(TypingFeedbackController *)self removeContiguousSpecifiers:specifiersCopy animated:1];
  }
}

- (id)_delayPickerSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v5 = +[NSMutableArray array];
  groupSpecifier = [(TypingFeedbackController *)self groupSpecifier];

  if (!groupSpecifier)
  {
    v7 = settingsLocString(@"CHARACTER_FEEDBACK_DELAY", @"Accessibility");
    v8 = [PSSpecifier groupSpecifierWithName:v7];
    [(TypingFeedbackController *)self setGroupSpecifier:v8];

    groupSpecifier2 = [(TypingFeedbackController *)self groupSpecifier];
    v10 = settingsLocString(@"CHARACTER_FEEDBACK_DELAY_FOOTER", @"Accessibility");
    [groupSpecifier2 setProperty:v10 forKey:PSFooterTextGroupKey];
  }

  groupSpecifier3 = [(TypingFeedbackController *)self groupSpecifier];

  if (groupSpecifier3)
  {
    groupSpecifier4 = [(TypingFeedbackController *)self groupSpecifier];
    [v5 addObject:groupSpecifier4];
  }

  if (specifiersCopy)
  {
    [v5 addObject:specifiersCopy];
  }

  return v5;
}

@end