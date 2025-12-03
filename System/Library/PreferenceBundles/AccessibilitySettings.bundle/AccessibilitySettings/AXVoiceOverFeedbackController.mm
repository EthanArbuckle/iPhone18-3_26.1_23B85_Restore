@interface AXVoiceOverFeedbackController
+ (id)descriptionForOption:(id)option;
- (VOFeedbackExtraOnOffSwitch)extraOnOffSwitchBlock;
- (id)_extraGetter:(id)getter;
- (id)getValueSelectedBlock;
- (id)setValueSelectedBlock;
- (id)specifiers;
- (void)_extraSetter:(id)setter specifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation AXVoiceOverFeedbackController

+ (id)descriptionForOption:(id)option
{
  if (!option)
  {
    v7 = settingsLocString(@"DEFAULT", @"Accessibility");
    goto LABEL_15;
  }

  integerValue = [option integerValue];
  v4 = objc_opt_new();
  if ((integerValue & 2) != 0)
  {
    v11 = settingsLocString(@"FEEDBACK_SPEAK", @"VoiceOverSettings");
    [v4 addObject:v11];

    if ((integerValue & 4) == 0)
    {
LABEL_4:
      if ((integerValue & 8) == 0)
      {
        goto LABEL_5;
      }

LABEL_20:
      v13 = settingsLocString(@"FEEDBACK_CHANGE_PITCH", @"VoiceOverSettings");
      [v4 addObject:v13];

      if ((integerValue & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((integerValue & 4) == 0)
  {
    goto LABEL_4;
  }

  v12 = settingsLocString(@"FEEDBACK_PLAY_TONE", @"VoiceOverSettings");
  [v4 addObject:v12];

  if ((integerValue & 8) != 0)
  {
    goto LABEL_20;
  }

LABEL_5:
  if ((integerValue & 0x10) != 0)
  {
LABEL_6:
    v5 = settingsLocString(@"FEEDBACK_CHANGE_BRAILLE", @"VoiceOverSettings");
    [v4 addObject:v5];
  }

LABEL_7:
  v6 = [NSListFormatter localizedStringByJoiningStrings:v4];
  v7 = v6;
  if (integerValue)
  {
    if ([v6 length])
    {
      v8 = AXLogUI();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [AXVoiceOverFeedbackController descriptionForOption:v8];
      }
    }

    v9 = settingsLocString(@"FEEDBACK_DO_NOTHING", @"VoiceOverSettings");

    v7 = v9;
  }

LABEL_15:

  return v7;
}

- (id)getValueSelectedBlock
{
  specifier = [(AXVoiceOverFeedbackController *)self specifier];
  v3 = [specifier propertyForKey:@"getValueSelectedBlock"];

  return v3;
}

- (VOFeedbackExtraOnOffSwitch)extraOnOffSwitchBlock
{
  specifier = [(AXVoiceOverFeedbackController *)self specifier];
  v3 = [specifier propertyForKey:@"extraOnOffSwitchBlock"];

  return v3;
}

- (id)setValueSelectedBlock
{
  specifier = [(AXVoiceOverFeedbackController *)self specifier];
  v3 = [specifier propertyForKey:@"setValueSelectedBlock"];

  return v3;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v7 = +[NSMutableArray array];
    specifier = [(AXVoiceOverFeedbackController *)self specifier];
    v9 = [specifier propertyForKey:@"showDefaultOption"];
    bOOLValue = [v9 BOOLValue];

    if (bOOLValue)
    {
      v11 = settingsLocString(@"DEFAULT", @"Accessibility");
      v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:3 edit:0];

      [v12 setProperty:&off_279E70 forKey:@"AXSVOFeedbackKey"];
      [v7 addObject:v12];
    }

    v13 = settingsLocString(@"FEEDBACK_SPEAK", @"VoiceOverSettings");
    v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v14 setProperty:&off_279E88 forKey:@"AXSVOFeedbackKey"];
    [v7 addObject:v14];
    specifier2 = [(AXVoiceOverFeedbackController *)self specifier];
    v16 = [specifier2 propertyForKey:@"ignoreSoundOption"];
    bOOLValue2 = [v16 BOOLValue];

    if ((bOOLValue2 & 1) == 0)
    {
      v18 = settingsLocString(@"FEEDBACK_PLAY_TONE", @"VoiceOverSettings");
      v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:0 get:0 detail:0 cell:3 edit:0];

      [v19 setProperty:&off_279EA0 forKey:@"AXSVOFeedbackKey"];
      [v7 addObject:v19];
      v14 = v19;
    }

    specifier3 = [(AXVoiceOverFeedbackController *)self specifier];
    v21 = [specifier3 propertyForKey:@"ignorePitchOption"];
    bOOLValue3 = [v21 BOOLValue];

    if ((bOOLValue3 & 1) == 0)
    {
      v23 = settingsLocString(@"FEEDBACK_CHANGE_PITCH", @"VoiceOverSettings");
      v24 = [PSSpecifier preferenceSpecifierNamed:v23 target:self set:0 get:0 detail:0 cell:3 edit:0];

      [v24 setProperty:&off_279EB8 forKey:@"AXSVOFeedbackKey"];
      [v7 addObject:v24];
      v14 = v24;
    }

    specifier4 = [(AXVoiceOverFeedbackController *)self specifier];
    v26 = [specifier4 propertyForKey:@"ignoreBrailleOption"];
    bOOLValue4 = [v26 BOOLValue];

    if ((bOOLValue4 & 1) == 0)
    {
      v28 = settingsLocString(@"FEEDBACK_CHANGE_BRAILLE", @"VoiceOverSettings");
      v29 = [PSSpecifier preferenceSpecifierNamed:v28 target:self set:0 get:0 detail:0 cell:3 edit:0];

      [v29 setProperty:&off_279ED0 forKey:@"AXSVOFeedbackKey"];
      [v7 addObject:v29];
      v14 = v29;
    }

    v30 = settingsLocString(@"FEEDBACK_DO_NOTHING", @"VoiceOverSettings");
    v31 = [PSSpecifier preferenceSpecifierNamed:v30 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v31 setProperty:&off_279EE8 forKey:@"AXSVOFeedbackKey"];
    [v7 addObject:v31];
    extraOnOffSwitchBlock = [(AXVoiceOverFeedbackController *)self extraOnOffSwitchBlock];
    title = [extraOnOffSwitchBlock title];

    if (title)
    {
      v34 = +[PSSpecifier emptyGroupSpecifier];
      [v7 addObject:v34];

      extraOnOffSwitchBlock2 = [(AXVoiceOverFeedbackController *)self extraOnOffSwitchBlock];
      title2 = [extraOnOffSwitchBlock2 title];
      v37 = title2[2]();
      v38 = [PSSpecifier preferenceSpecifierNamed:v37 target:self set:"_extraSetter:specifier:" get:"_extraGetter:" detail:0 cell:6 edit:0];

      [v7 addObject:v38];
      v31 = v38;
    }

    v39 = [v7 copy];
    v40 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v39;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (void)_extraSetter:(id)setter specifier:(id)specifier
{
  setterCopy = setter;
  extraOnOffSwitchBlock = [(AXVoiceOverFeedbackController *)self extraOnOffSwitchBlock];
  setter = [extraOnOffSwitchBlock setter];

  if (setter)
  {
    extraOnOffSwitchBlock2 = [(AXVoiceOverFeedbackController *)self extraOnOffSwitchBlock];
    setter2 = [extraOnOffSwitchBlock2 setter];
    (setter2)[2](setter2, [setterCopy BOOLValue]);
  }
}

- (id)_extraGetter:(id)getter
{
  extraOnOffSwitchBlock = [(AXVoiceOverFeedbackController *)self extraOnOffSwitchBlock];
  getter = [extraOnOffSwitchBlock getter];

  if (getter)
  {
    extraOnOffSwitchBlock2 = [(AXVoiceOverFeedbackController *)self extraOnOffSwitchBlock];
    getter2 = [extraOnOffSwitchBlock2 getter];
    v8 = [NSNumber numberWithBool:getter2[2]()];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  getValueSelectedBlock = [(AXVoiceOverFeedbackController *)self getValueSelectedBlock];
  v7 = getValueSelectedBlock[2]();

  specifier = [cellCopy specifier];
  v9 = [specifier propertyForKey:@"AXSVOFeedbackKey"];
  integerValue = [v9 integerValue];

  if (((integerValue & v7 & 0x8000000000000000) != 0) ^ v11 | ((integerValue & v7) == 0))
  {
    v12 = (integerValue | v7) == 0;
  }

  else
  {
    v12 = 1;
  }

  [cellCopy setChecked:v12];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v20.receiver = self;
  v20.super_class = AXVoiceOverFeedbackController;
  pathCopy = path;
  [(AXVoiceOverFeedbackController *)&v20 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(AXVoiceOverFeedbackController *)self specifierForIndexPath:pathCopy, v20.receiver, v20.super_class];

  v8 = [v7 propertyForKey:@"AXSVOFeedbackKey"];
  integerValue = [v8 integerValue];

  getValueSelectedBlock = [(AXVoiceOverFeedbackController *)self getValueSelectedBlock];
  v11 = getValueSelectedBlock[2]();

  if (integerValue >= 2)
  {
    if ((integerValue & ~v11) != 0)
    {
      v15 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if (integerValue == 8)
      {
        specifier = [(AXVoiceOverFeedbackController *)self specifier];
        v17 = [specifier propertyForKey:@"supportsPitchWithoutSpeak"];
        bOOLValue = [v17 BOOLValue];

        if (bOOLValue)
        {
          integerValue = 8;
        }

        else
        {
          integerValue = 10;
        }
      }

      integerValue |= v15;
    }

    else if (v11 != integerValue)
    {
      if ((integerValue & 2) != 0)
      {
        specifier2 = [(AXVoiceOverFeedbackController *)self specifier];
        v13 = [specifier2 propertyForKey:@"supportsPitchWithoutSpeak"];
        bOOLValue2 = [v13 BOOLValue];

        if (!bOOLValue2)
        {
          v11 &= ~8uLL;
        }
      }

      if ((v11 & ~integerValue) <= 1)
      {
        integerValue = 1;
      }

      else
      {
        integerValue = v11 & ~integerValue;
      }
    }
  }

  setValueSelectedBlock = [(AXVoiceOverFeedbackController *)self setValueSelectedBlock];
  setValueSelectedBlock[2](setValueSelectedBlock, integerValue);

  [(AXVoiceOverFeedbackController *)self beginUpdates];
  [(AXVoiceOverFeedbackController *)self reloadSpecifiers];
  [(AXVoiceOverFeedbackController *)self endUpdates];
}

@end