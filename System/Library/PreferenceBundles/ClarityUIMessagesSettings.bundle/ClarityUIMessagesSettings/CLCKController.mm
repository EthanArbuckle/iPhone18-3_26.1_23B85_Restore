@interface CLCKController
- (id)actionTypes;
- (id)areConversationDetailsEnabled:(id)enabled;
- (id)bundleIdentifiers;
- (id)contactPickerPrompt;
- (id)favoritesFooterText;
- (id)incomingHeaderText;
- (id)isEmojiKeyboardEnabled:(id)enabled;
- (id)isPhotoKeyboardEnabled:(id)enabled;
- (id)isSoftwareKeyboardEnabled:(id)enabled;
- (id)isTapToSpeakEnabled:(id)enabled;
- (id)isVideoRecordingEnabled:(id)enabled;
- (id)outgoingHeaderText;
- (id)specifiers;
- (void)setConversationDetailsEnabled:(id)enabled specifier:(id)specifier;
- (void)setEmojiKeyboardEnabled:(id)enabled specifier:(id)specifier;
- (void)setPhotoKeyboardEnabled:(id)enabled specifier:(id)specifier;
- (void)setSoftwareKeyboardEnabled:(id)enabled specifier:(id)specifier;
- (void)setTapToSpeakEnabled:(id)enabled specifier:(id)specifier;
- (void)setVideoRecordingEnabled:(id)enabled specifier:(id)specifier;
- (void)viewDidLoad;
@end

@implementation CLCKController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CLCKController;
  [(CLCKController *)&v5 viewDidLoad];
  v3 = AXAppNameForBundleId();
  navigationItem = [(CLCKController *)self navigationItem];
  [navigationItem setTitle:v3];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXCLFCommunicationLimitController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    communicationLimitSpecifiers = [(CLCKController *)self communicationLimitSpecifiers];
    v6 = [communicationLimitSpecifiers mutableCopy];

    v7 = [(CLCKController *)self loadSpecifiersFromPlistName:@"CLCKController" target:self];
    [v6 addObjectsFromArray:v7];

    v8 = *&self->AXCLFCommunicationLimitController_opaque[v3];
    *&self->AXCLFCommunicationLimitController_opaque[v3] = v6;

    v4 = *&self->AXCLFCommunicationLimitController_opaque[v3];
  }

  return v4;
}

- (id)outgoingHeaderText
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"OUTGOING_MESSAGES" value:&stru_40E8 table:@"CLCKController"];

  return v3;
}

- (id)incomingHeaderText
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INCOMING_MESSAGES" value:&stru_40E8 table:@"CLCKController"];

  return v3;
}

- (id)favoritesFooterText
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"FAVORITES_FOOTER" value:&stru_40E8 table:@"CLCKController"];

  return v3;
}

- (id)contactPickerPrompt
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"CONTACT_PICKER_PROMPT" value:&stru_40E8 table:@"CLCKController"];

  return v3;
}

- (id)actionTypes
{
  v4 = CNActionTypeMessage;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (id)bundleIdentifiers
{
  v4 = AX_MobileSMSBundleName;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (void)setConversationDetailsEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[CLFMessagesSettings sharedInstance];
  [v5 setConversationDetailsEnabled:bOOLValue];
}

- (id)areConversationDetailsEnabled:(id)enabled
{
  v3 = +[CLFMessagesSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 conversationDetailsEnabled]);

  return v4;
}

- (void)setTapToSpeakEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[CLFMessagesSettings sharedInstance];
  [v5 setTapToSpeakEnabled:bOOLValue];
}

- (id)isTapToSpeakEnabled:(id)enabled
{
  v3 = +[CLFMessagesSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 tapToSpeakEnabled]);

  return v4;
}

- (void)setSoftwareKeyboardEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[CLFMessagesSettings sharedInstance];
  [v5 setSoftwareKeyboardEnabled:bOOLValue];
}

- (id)isSoftwareKeyboardEnabled:(id)enabled
{
  v3 = +[CLFMessagesSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 softwareKeyboardEnabled]);

  return v4;
}

- (void)setVideoRecordingEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[CLFMessagesSettings sharedInstance];
  [v5 setVideoRecordingEnabled:bOOLValue];
}

- (id)isVideoRecordingEnabled:(id)enabled
{
  v3 = +[CLFMessagesSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 videoRecordingEnabled]);

  return v4;
}

- (void)setEmojiKeyboardEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[CLFMessagesSettings sharedInstance];
  [v5 setEmojiKeyboardEnabled:bOOLValue];
}

- (id)isEmojiKeyboardEnabled:(id)enabled
{
  v3 = +[CLFMessagesSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 emojiKeyboardEnabled]);

  return v4;
}

- (void)setPhotoKeyboardEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[CLFMessagesSettings sharedInstance];
  [v5 setPhotoKeyboardEnabled:bOOLValue];
}

- (id)isPhotoKeyboardEnabled:(id)enabled
{
  v3 = +[CLFMessagesSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 photoKeyboardEnabled]);

  return v4;
}

@end