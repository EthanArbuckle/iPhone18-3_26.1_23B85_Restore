@interface AssistantVoiceFeedbackController
- (id)specifiers;
- (void)_updateSpecifiersFromPreferences;
- (void)preferencesDidChange:(id)change;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation AssistantVoiceFeedbackController

- (void)preferencesDidChange:(id)change
{
  v4 = +[AFPreferences sharedPreferences];
  nanoUseDeviceSpeakerForTTS = [v4 nanoUseDeviceSpeakerForTTS];

  if (nanoUseDeviceSpeakerForTTS != self->_voiceFeedbackPref)
  {
    self->_voiceFeedbackPref = nanoUseDeviceSpeakerForTTS;

    [(AssistantVoiceFeedbackController *)self reloadSpecifiers];
  }
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(AssistantVoiceFeedbackController *)self loadSpecifiersFromPlistName:@"AssistantVoiceFeedback" target:self];
    v6 = [v5 copy];
    v7 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v6;

    [(AssistantVoiceFeedbackController *)self _updateSpecifiersFromPreferences];
    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)_updateSpecifiersFromPreferences
{
  v3 = +[AFPreferences sharedPreferences];
  self->_voiceFeedbackPref = [v3 nanoUseDeviceSpeakerForTTS];

  voiceFeedbackPref = self->_voiceFeedbackPref;
  v5 = @"VOICE_FEEDBACK_HEADPHONES_ONLY_ID";
  if (voiceFeedbackPref == 1)
  {
    v5 = @"VOICE_FEEDBACK_CONTROL_WITH_SILENT_MODE_ID";
  }

  if (voiceFeedbackPref == 2)
  {
    v6 = @"VOICE_FEEDBACK_ALWAYS_ON_ID";
  }

  else
  {
    v6 = v5;
  }

  v8 = [(AssistantVoiceFeedbackController *)self specifierForID:v6];
  v7 = [(AssistantVoiceFeedbackController *)self specifierForID:@"VOICE_FEEDBACK_GROUP_ID"];
  [v7 setProperty:v8 forKey:PSRadioGroupCheckedSpecifierKey];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v12.receiver = self;
  v12.super_class = AssistantVoiceFeedbackController;
  pathCopy = path;
  [(AssistantVoiceFeedbackController *)&v12 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(AssistantVoiceFeedbackController *)self indexForIndexPath:pathCopy, v12.receiver, v12.super_class];

  v8 = [(AssistantVoiceFeedbackController *)self specifierAtIndex:v7];
  identifier = [v8 identifier];

  if ([identifier isEqualToString:@"VOICE_FEEDBACK_ALWAYS_ON_ID"])
  {
    v10 = 2;
  }

  else if ([identifier isEqualToString:@"VOICE_FEEDBACK_CONTROL_WITH_SILENT_MODE_ID"])
  {
    v10 = 1;
  }

  else
  {
    v10 = 3;
  }

  self->_voiceFeedbackPref = v10;
  v11 = +[AFPreferences sharedPreferences];
  [v11 setNanoUseDeviceSpeakerForTTS:self->_voiceFeedbackPref];
}

@end