@interface VoiceOverTypingFeedbackController
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)feedbackTypeForString:(id)string;
- (int64_t)rowForTypingFeedbackOption:(int64_t)option section:(int64_t)section;
- (void)_updateSelectedRows;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation VoiceOverTypingFeedbackController

- (id)specifiers
{
  selfCopy = self;
  v3 = OBJC_IVAR___PSListController__specifiers;
  if (!*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers])
  {
    v4 = [(VoiceOverTypingFeedbackController *)self loadSpecifiersFromPlistName:@"VoiceOverTypingFeedback" target:self];
    v5 = +[AXSettings sharedInstance];
    voiceOverBrailleGesturesEnabled = [v5 voiceOverBrailleGesturesEnabled];

    if (voiceOverBrailleGesturesEnabled)
    {
      objc_storeStrong(&selfCopy->AXUISettingsBaseListController_opaque[v3], v4);
    }

    else
    {
      v20 = v3;
      v21 = selfCopy;
      v22 = objc_alloc_init(NSMutableArray);
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v19 = v4;
      obj = v4;
      v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v25;
        v10 = PSIDKey;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v25 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v24 + 1) + 8 * i);
            v13 = [v12 propertyForKey:@"layout_type"];
            if ([v13 isEqualToString:@"braille_gestures"])
            {
            }

            else
            {
              v14 = [v12 propertyForKey:v10];
              v15 = [v14 isEqualToString:@"BrailleGesturesGroup"];

              if ((v15 & 1) == 0)
              {
                [v22 addObject:v12];
              }
            }
          }

          v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v8);
      }

      selfCopy = v21;
      [(VoiceOverTypingFeedbackController *)v21 setAllSpecifiersUnsearchable:v22];
      v3 = v20;
      v16 = *&v21->AXUISettingsBaseListController_opaque[v20];
      *&v21->AXUISettingsBaseListController_opaque[v20] = v22;

      v4 = v19;
    }
  }

  [(VoiceOverTypingFeedbackController *)selfCopy _updateSelectedRows];
  v17 = *&selfCopy->AXUISettingsBaseListController_opaque[v3];

  return v17;
}

- (int64_t)feedbackTypeForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"off"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"characters"])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:@"words"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"wordsAndCharacters"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)rowForTypingFeedbackOption:(int64_t)option section:(int64_t)section
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  selfCopy = self;
  v5 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v21;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v21 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v20 + 1) + 8 * v10);
      v12 = [v11 propertyForKey:{@"layout_type", selfCopy}];
      v13 = v12;
      if (section == 2)
      {
        if ([v12 isEqualToString:@"braille_gestures"])
        {
LABEL_14:
          v15 = [v11 propertyForKey:@"option"];
          v16 = [(VoiceOverTypingFeedbackController *)selfCopy feedbackTypeForString:v15];

          if (v16 == option)
          {

            goto LABEL_20;
          }

          ++v8;
        }
      }

      else
      {
        if (section == 1)
        {
          v14 = @"hardware";
        }

        else
        {
          if (section)
          {
            goto LABEL_16;
          }

          v14 = @"software";
        }

        if ([v12 isEqualToString:v14])
        {
          goto LABEL_14;
        }
      }

LABEL_16:

      if (v7 == ++v10)
      {
        v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v8 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_20:

  return v8;
}

- (void)_updateSelectedRows
{
  v3 = +[AXSettings sharedInstance];
  self->_swSelectedRow = -[VoiceOverTypingFeedbackController rowForTypingFeedbackOption:section:](self, "rowForTypingFeedbackOption:section:", [v3 voiceOverSoftwareTypingFeedback], 0);
  self->_hwSelectedRow = -[VoiceOverTypingFeedbackController rowForTypingFeedbackOption:section:](self, "rowForTypingFeedbackOption:section:", [v3 voiceOverHardwareTypingFeedback], 1);
  if ([v3 voiceOverBrailleGesturesEnabled])
  {
    self->_brailleGesturesSelectedRow = -[VoiceOverTypingFeedbackController rowForTypingFeedbackOption:section:](self, "rowForTypingFeedbackOption:section:", [v3 voiceOverBrailleGesturesTypingFeedback], 2);
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = VoiceOverTypingFeedbackController;
  v7 = [(VoiceOverTypingFeedbackController *)&v14 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [NSIndexPath indexPathForRow:self->_swSelectedRow inSection:0];
  if ([v8 isEqual:pathCopy])
  {
    goto LABEL_4;
  }

  v9 = [NSIndexPath indexPathForRow:self->_hwSelectedRow inSection:1];
  if ([v9 isEqual:pathCopy])
  {

LABEL_4:
LABEL_5:
    [v7 setChecked:1];
    goto LABEL_6;
  }

  v11 = +[AXSettings sharedInstance];
  if ([v11 voiceOverBrailleGesturesEnabled])
  {
    v12 = [NSIndexPath indexPathForRow:self->_brailleGesturesSelectedRow inSection:2];
    v13 = [v12 isEqual:pathCopy];

    if (v13)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

LABEL_6:

  return v7;
}

- (void)viewWillAppear:(BOOL)appear
{
  v15.receiver = self;
  v15.super_class = VoiceOverTypingFeedbackController;
  [(VoiceOverTypingFeedbackController *)&v15 viewWillAppear:1];
  [(VoiceOverTypingFeedbackController *)self _updateSelectedRows];
  v4 = OBJC_IVAR___PSListController__table;
  v5 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__table];
  v6 = [NSIndexPath indexPathForRow:self->_swSelectedRow inSection:0];
  v7 = [v5 cellForRowAtIndexPath:v6];

  [v7 setChecked:1];
  v8 = *&self->AXUISettingsBaseListController_opaque[v4];
  v9 = [NSIndexPath indexPathForRow:self->_hwSelectedRow inSection:1];
  v10 = [v8 cellForRowAtIndexPath:v9];

  [v10 setChecked:1];
  v11 = +[AXSettings sharedInstance];
  LODWORD(v7) = [v11 voiceOverBrailleGesturesEnabled];

  if (v7)
  {
    v12 = *&self->AXUISettingsBaseListController_opaque[v4];
    v13 = [NSIndexPath indexPathForRow:self->_brailleGesturesSelectedRow inSection:2];
    v14 = [v12 cellForRowAtIndexPath:v13];

    [v14 setChecked:1];
    v10 = v14;
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v18.receiver = self;
  v18.super_class = VoiceOverTypingFeedbackController;
  [(VoiceOverTypingFeedbackController *)&v18 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(VoiceOverTypingFeedbackController *)self specifierForIndexPath:pathCopy];
    v10 = [v9 propertyForKey:@"layout_type"];
    v11 = [v9 propertyForKey:@"option"];
    v12 = [(VoiceOverTypingFeedbackController *)self feedbackTypeForString:v11];

    if ([v10 isEqualToString:@"software"])
    {
      swSelectedRow = self->_swSelectedRow;
      v14 = +[AXSettings sharedInstance];
      [v14 setVoiceOverSoftwareTypingFeedback:v12];
      v15 = 0;
    }

    else if ([v10 isEqualToString:@"hardware"])
    {
      swSelectedRow = self->_hwSelectedRow;
      v14 = +[AXSettings sharedInstance];
      [v14 setVoiceOverHardwareTypingFeedback:v12];
      v15 = 1;
    }

    else
    {
      swSelectedRow = self->_brailleGesturesSelectedRow;
      v14 = +[AXSettings sharedInstance];
      [v14 setVoiceOverBrailleGesturesTypingFeedback:v12];
      v15 = 2;
    }

    v16 = [NSIndexPath indexPathForRow:swSelectedRow inSection:v15];
    v17 = [viewCopy cellForRowAtIndexPath:v16];

    [v17 setChecked:0];
    [v8 setChecked:1];
    [(VoiceOverTypingFeedbackController *)self _updateSelectedRows];
  }
}

@end