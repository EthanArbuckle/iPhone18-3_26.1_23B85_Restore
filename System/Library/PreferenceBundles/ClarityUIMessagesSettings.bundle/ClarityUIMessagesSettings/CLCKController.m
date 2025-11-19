@interface CLCKController
- (id)actionTypes;
- (id)areConversationDetailsEnabled:(id)a3;
- (id)bundleIdentifiers;
- (id)contactPickerPrompt;
- (id)favoritesFooterText;
- (id)incomingHeaderText;
- (id)isEmojiKeyboardEnabled:(id)a3;
- (id)isPhotoKeyboardEnabled:(id)a3;
- (id)isSoftwareKeyboardEnabled:(id)a3;
- (id)isTapToSpeakEnabled:(id)a3;
- (id)isVideoRecordingEnabled:(id)a3;
- (id)outgoingHeaderText;
- (id)specifiers;
- (void)setConversationDetailsEnabled:(id)a3 specifier:(id)a4;
- (void)setEmojiKeyboardEnabled:(id)a3 specifier:(id)a4;
- (void)setPhotoKeyboardEnabled:(id)a3 specifier:(id)a4;
- (void)setSoftwareKeyboardEnabled:(id)a3 specifier:(id)a4;
- (void)setTapToSpeakEnabled:(id)a3 specifier:(id)a4;
- (void)setVideoRecordingEnabled:(id)a3 specifier:(id)a4;
- (void)viewDidLoad;
@end

@implementation CLCKController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CLCKController;
  [(CLCKController *)&v5 viewDidLoad];
  v3 = AXAppNameForBundleId();
  v4 = [(CLCKController *)self navigationItem];
  [v4 setTitle:v3];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXCLFCommunicationLimitController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(CLCKController *)self communicationLimitSpecifiers];
    v6 = [v5 mutableCopy];

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

- (void)setConversationDetailsEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[CLFMessagesSettings sharedInstance];
  [v5 setConversationDetailsEnabled:v4];
}

- (id)areConversationDetailsEnabled:(id)a3
{
  v3 = +[CLFMessagesSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 conversationDetailsEnabled]);

  return v4;
}

- (void)setTapToSpeakEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[CLFMessagesSettings sharedInstance];
  [v5 setTapToSpeakEnabled:v4];
}

- (id)isTapToSpeakEnabled:(id)a3
{
  v3 = +[CLFMessagesSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 tapToSpeakEnabled]);

  return v4;
}

- (void)setSoftwareKeyboardEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[CLFMessagesSettings sharedInstance];
  [v5 setSoftwareKeyboardEnabled:v4];
}

- (id)isSoftwareKeyboardEnabled:(id)a3
{
  v3 = +[CLFMessagesSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 softwareKeyboardEnabled]);

  return v4;
}

- (void)setVideoRecordingEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[CLFMessagesSettings sharedInstance];
  [v5 setVideoRecordingEnabled:v4];
}

- (id)isVideoRecordingEnabled:(id)a3
{
  v3 = +[CLFMessagesSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 videoRecordingEnabled]);

  return v4;
}

- (void)setEmojiKeyboardEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[CLFMessagesSettings sharedInstance];
  [v5 setEmojiKeyboardEnabled:v4];
}

- (id)isEmojiKeyboardEnabled:(id)a3
{
  v3 = +[CLFMessagesSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 emojiKeyboardEnabled]);

  return v4;
}

- (void)setPhotoKeyboardEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[CLFMessagesSettings sharedInstance];
  [v5 setPhotoKeyboardEnabled:v4];
}

- (id)isPhotoKeyboardEnabled:(id)a3
{
  v3 = +[CLFMessagesSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 photoKeyboardEnabled]);

  return v4;
}

@end