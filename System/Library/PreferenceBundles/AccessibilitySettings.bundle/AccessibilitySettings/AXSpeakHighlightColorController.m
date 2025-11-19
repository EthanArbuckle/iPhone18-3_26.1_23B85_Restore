@interface AXSpeakHighlightColorController
+ (id)nameForColor:(int64_t)a3;
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation AXSpeakHighlightColorController

+ (id)nameForColor:(int64_t)a3
{
  v3 = 0;
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        v4 = @"COLOR_GREEN";
        break;
      case 4:
        v4 = @"COLOR_PURPLE";
        break;
      case 5:
        v4 = @"COLOR_PINK";
        break;
      default:
        goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      v4 = @"COLOR_BLUE";
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_16;
      }

      v4 = @"COLOR_YELLOW";
    }

LABEL_14:
    v5 = @"CaptioningStyle";
    goto LABEL_15;
  }

  v4 = @"DEFAULT";
  v5 = @"SpeechSettings";
LABEL_15:
  v3 = settingsLocString(v4, v5);
LABEL_16:

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
    v23 = v3;
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v7 = [(AXSpeakHighlightColorController *)self specifier];
    v8 = [v7 propertyForKey:@"type"];
    -[AXSpeakHighlightColorController setSentenceStyle:](self, "setSentenceStyle:", [v8 isEqualToString:@"SENTENCE"]);

    v26 = +[NSMutableArray array];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v27 = [&off_27CC38 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v27)
    {
      v24 = PSCellClassKey;
      v25 = *v29;
      do
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v29 != v25)
          {
            objc_enumerationMutation(&off_27CC38);
          }

          v10 = *(*(&v28 + 1) + 8 * i);
          [v10 intValue];
          v11 = AXSpeakHighlightColor();
          Components = CGColorGetComponents(v11);
          v13 = [objc_opt_class() nameForColor:{objc_msgSend(v10, "intValue")}];
          v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:3 edit:0];

          [v14 setProperty:objc_opt_class() forKey:v24];
          v15 = [NSNumber numberWithDouble:*Components];
          v32[0] = v15;
          v16 = [NSNumber numberWithDouble:Components[1]];
          v32[1] = v16;
          v17 = [NSNumber numberWithDouble:Components[2]];
          v32[2] = v17;
          v18 = [NSNumber numberWithDouble:Components[3]];
          v32[3] = v18;
          v19 = [NSArray arrayWithObjects:v32 count:4];
          [v14 setProperty:v19 forKey:@"rgb"];

          [v14 setProperty:v10 forKey:@"type"];
          [v26 addObject:v14];
        }

        v27 = [&off_27CC38 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v27);
    }

    v20 = [v26 copy];
    v21 = *&self->AXUISettingsBaseListController_opaque[v23];
    *&self->AXUISettingsBaseListController_opaque[v23] = v20;

    v4 = *&self->AXUISettingsBaseListController_opaque[v23];
  }

  return v4;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v13 = a4;
  LOBYTE(self) = [(AXSpeakHighlightColorController *)self sentenceStyle];
  v6 = +[AXSettings sharedInstance];
  v7 = v6;
  if (self)
  {
    v8 = [v6 quickSpeakSentenceHighlightColor];
  }

  else
  {
    v8 = [v6 quickSpeakWordHighlightColor];
  }

  v9 = v8;

  v10 = [v13 specifier];
  v11 = [v10 propertyForKey:@"type"];
  v12 = [v11 integerValue] == v9;

  [v13 setChecked:v12];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v12.receiver = self;
  v12.super_class = AXSpeakHighlightColorController;
  v6 = a4;
  [(AXSpeakHighlightColorController *)&v12 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(AXSpeakHighlightColorController *)self specifierForIndexPath:v6, v12.receiver, v12.super_class];

  v8 = [v7 propertyForKey:@"type"];
  v9 = [v8 integerValue];

  LODWORD(v8) = [(AXSpeakHighlightColorController *)self sentenceStyle];
  v10 = +[AXSettings sharedInstance];
  v11 = v10;
  if (v8)
  {
    [v10 setQuickSpeakSentenceHighlightColor:v9];
  }

  else
  {
    [v10 setQuickSpeakWordHighlightColor:v9];
  }

  [(AXSpeakHighlightColorController *)self beginUpdates];
  [(AXSpeakHighlightColorController *)self reloadSpecifiers];
  [(AXSpeakHighlightColorController *)self endUpdates];
}

@end