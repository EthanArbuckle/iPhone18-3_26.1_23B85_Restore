@interface VoiceOverActivityAudioDuckingController
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
@end

@implementation VoiceOverActivityAudioDuckingController

- (void)viewDidLoad
{
  v3 = [(VoiceOverActivityAudioDuckingController *)self specifier];
  v4 = [v3 propertyForKey:@"activity"];
  [(VoiceOverActivityAudioDuckingController *)self setActivity:v4];

  v21[0] = @"title";
  v13 = settingsLocString(@"AUDIO_DUCKING_OFF", @"VoiceOverSettings");
  v22[0] = v13;
  v22[1] = &off_27A6B0;
  v21[1] = @"value";
  v21[2] = @"isDefault";
  v22[2] = &__kCFBooleanFalse;
  v5 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:3];
  v23[0] = v5;
  v19[0] = @"title";
  v6 = settingsLocString(@"AUDIO_DUCKING_ONLY_SPEAKING", @"VoiceOverSettings");
  v20[0] = v6;
  v20[1] = &off_27A6C8;
  v19[1] = @"value";
  v19[2] = @"isDefault";
  v20[2] = &__kCFBooleanFalse;
  v7 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3];
  v23[1] = v7;
  v17[0] = @"title";
  v8 = settingsLocString(@"AUDIO_DUCKING_ALWAYS", @"VoiceOverSettings");
  v18[0] = v8;
  v18[1] = &off_27A6E0;
  v17[1] = @"value";
  v17[2] = @"isDefault";
  v18[2] = &__kCFBooleanFalse;
  v9 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:3];
  v23[2] = v9;
  v15[0] = @"title";
  v10 = settingsLocString(@"DEFAULT", @"Accessibility");
  v16[0] = v10;
  v16[1] = &off_27A6F8;
  v15[1] = @"value";
  v15[2] = @"isDefault";
  v16[2] = &__kCFBooleanTrue;
  v11 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];
  v23[3] = v11;
  v12 = [NSArray arrayWithObjects:v23 count:4];
  [(VoiceOverActivityAudioDuckingController *)self setAudioDuckingOptions:v12];

  v14.receiver = self;
  v14.super_class = VoiceOverActivityAudioDuckingController;
  [(VoiceOverActivityAudioDuckingController *)&v14 viewDidLoad];
}

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v22 = OBJC_IVAR___PSListController__specifiers;
    v4 = +[NSMutableArray array];
    v5 = +[PSSpecifier emptyGroupSpecifier];
    v6 = settingsLocString(@"AUDIO_DUCKING", @"VoiceOverSettings");
    [v5 setName:v6];

    v21 = v5;
    [v4 addObject:v5];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = self;
    obj = [(VoiceOverActivityAudioDuckingController *)self audioDuckingOptions];
    v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v26;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v25 + 1) + 8 * i);
          v12 = [v11 objectForKeyedSubscript:@"title"];
          v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:0 set:0 get:0 detail:0 cell:3 edit:0];

          v14 = [v11 objectForKeyedSubscript:@"value"];
          v15 = [NSString stringWithFormat:@"AudioDuckingMode_%@", v14];
          [v13 setIdentifier:v15];

          v16 = [v11 objectForKeyedSubscript:@"value"];
          [v13 setProperty:v16 forKey:@"audioDuckingModeValue"];

          v17 = [v11 objectForKeyedSubscript:@"isDefault"];
          [v13 setProperty:v17 forKey:@"isDefault"];

          [v4 addObject:v13];
        }

        v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v8);
    }

    v18 = [v4 copy];
    v19 = *&v23->AXUISettingsBaseListController_opaque[v22];
    *&v23->AXUISettingsBaseListController_opaque[v22] = v18;

    v3 = *&v23->AXUISettingsBaseListController_opaque[v22];
  }

  return v3;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v17 = a4;
  v7 = [(VoiceOverActivityAudioDuckingController *)self specifierForIndexPath:a5];
  v8 = [v7 propertyForKey:@"audioDuckingModeValue"];
  v9 = [v7 propertyForKey:@"isDefault"];
  v10 = [v9 BOOLValue];

  if (v8 || v10)
  {
    v11 = v17;
    v12 = [(VoiceOverActivityAudioDuckingController *)self activity];
    v13 = [v12 audioDucking];

    if (v13)
    {
      v14 = v10;
    }

    else
    {
      v14 = 1;
    }

    if (v13)
    {
      v15 = 0;
    }

    else
    {
      v15 = v10;
    }

    if ((v14 & 1) == 0)
    {
      v16 = [v13 integerValue];
      v15 = v16 == [v8 integerValue];
    }

    [v11 setChecked:v15];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v46.receiver = self;
  v46.super_class = VoiceOverActivityAudioDuckingController;
  [(VoiceOverActivityAudioDuckingController *)&v46 tableView:v6 didSelectRowAtIndexPath:v7];
  v39 = self;
  v8 = [(VoiceOverActivityAudioDuckingController *)self specifierForIndexPath:v7];
  v9 = [v8 propertyForKey:@"audioDuckingModeValue"];
  v10 = [v8 propertyForKey:@"isDefault"];
  v11 = [v10 BOOLValue];

  if (v9 || v11)
  {
    v36 = v8;
    v37 = v7;
    v12 = [(VoiceOverActivityAudioDuckingController *)v39 activity];
    v13 = v12;
    v35 = v9;
    if (v11)
    {
      v14 = 0;
    }

    else
    {
      v14 = v9;
    }

    [v12 setAudioDucking:v14];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v38 = v6;
    obj = [v6 visibleCells];
    v15 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v43;
      v18 = @"audioDuckingModeValue";
      v19 = @"isDefault";
      do
      {
        v20 = 0;
        v40 = v16;
        do
        {
          if (*v43 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v42 + 1) + 8 * v20);
          v22 = [v21 specifier];
          v23 = [v22 propertyForKey:v18];
          v24 = [v22 propertyForKey:v19];
          v25 = [v24 BOOLValue];

          if (v23)
          {
            v26 = 0;
          }

          else
          {
            v26 = v25 == 0;
          }

          if (!v26)
          {
            v27 = v17;
            v28 = v19;
            v29 = v18;
            v30 = [(VoiceOverActivityAudioDuckingController *)v39 activity];
            v31 = [v30 audioDucking];

            if (v31)
            {
              v32 = v25;
            }

            else
            {
              v32 = 1;
            }

            if (v31)
            {
              v33 = 0;
            }

            else
            {
              v33 = v25;
            }

            if ((v32 & 1) == 0)
            {
              v34 = [v31 integerValue];
              v33 = v34 == [v23 integerValue];
            }

            [v21 setChecked:v33];

            v18 = v29;
            v19 = v28;
            v17 = v27;
            v16 = v40;
          }

          v20 = v20 + 1;
        }

        while (v16 != v20);
        v16 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v16);
    }

    v7 = v37;
    v6 = v38;
    v9 = v35;
    v8 = v36;
  }
}

@end