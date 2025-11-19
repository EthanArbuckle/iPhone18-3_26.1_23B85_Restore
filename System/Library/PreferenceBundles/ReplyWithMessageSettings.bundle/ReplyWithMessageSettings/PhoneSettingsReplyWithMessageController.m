@interface PhoneSettingsReplyWithMessageController
- (TUReplyWithMessageStore)replyWithMessageStore;
- (id)customReply:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int)customReplyIndexOfSpecifier:(id)a3;
- (void)emitNavigationEvent;
- (void)returnPressedAtEnd;
- (void)setCustomReply:(id)a3 specifier:(id)a4;
@end

@implementation PhoneSettingsReplyWithMessageController

- (TUReplyWithMessageStore)replyWithMessageStore
{
  replyWithMessageStore = self->_replyWithMessageStore;
  if (!replyWithMessageStore)
  {
    v4 = objc_alloc_init(TUReplyWithMessageStore);
    v5 = self->_replyWithMessageStore;
    self->_replyWithMessageStore = v4;

    replyWithMessageStore = self->_replyWithMessageStore;
  }

  return replyWithMessageStore;
}

- (void)emitNavigationEvent
{
  v3 = [(PhoneSettingsReplyWithMessageController *)self specifier];
  v4 = [v3 target];
  v5 = [v4 parentListController];
  v6 = [v5 specifierID];

  if ([v6 isEqualToString:@"com.apple.preferences.phone"])
  {
    v20 = [NSString stringWithFormat:@"settings-navigation://com.apple.Settings.Apps/%@/%@", @"com.apple.mobilephone", @"REPLY_WITH_MESSAGES"];
    v7 = [NSURL URLWithString:v20];
    v8 = [_NSLocalizedStringResource alloc];
    v9 = +[NSLocale currentLocale];
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 bundleURL];
    v12 = [v8 initWithKey:@"Respond with Text" table:0 locale:v9 bundleURL:v11];

    v13 = [_NSLocalizedStringResource alloc];
    v14 = +[NSLocale currentLocale];
    v15 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = [v15 bundleURL];
    v17 = [v13 initWithKey:@"Apps" table:0 locale:v14 bundleURL:v16];

    v18 = TUResolvedPhoneResource();
    v21[0] = v17;
    v21[1] = v18;
    v19 = [NSArray arrayWithObjects:v21 count:2];
    [(PhoneSettingsReplyWithMessageController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:@"com.apple.mobilephone" title:v12 localizedNavigationComponents:v19 deepLink:v7];
  }
}

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v23 = OBJC_IVAR___PSListController__specifiers;
    v5 = [(PhoneSettingsReplyWithMessageController *)self loadSpecifiersFromPlistName:@"Reply With Message" target:self];
    v6 = [v5 specifierForID:@"CustomReplyHeader"];
    v22 = v6;
    if (v6)
    {
      v7 = [v5 indexOfObject:v6];
      if (v7 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = v7;
        v9 = [(PhoneSettingsReplyWithMessageController *)self replyWithMessageStore];
        v10 = [v9 count];

        if (v10 >= 1)
        {
          v11 = 0;
          v12 = v10;
          v13 = v8 + 1;
          do
          {
            v14 = [PSTextFieldSpecifier preferenceSpecifierNamed:0 target:self set:"setCustomReply:specifier:" get:"customReply:" detail:0 cell:8 edit:0, v22];
            v15 = [(PhoneSettingsReplyWithMessageController *)self replyWithMessageStore];
            v16 = [v15 defaultReplies];
            v17 = [v16 objectAtIndex:v11];
            [v14 setPlaceholder:v17];

            v18 = [NSNumber numberWithInt:v11];
            [v14 setProperty:v18 forKey:@"ReplyIndex"];

            [v5 insertObject:v14 atIndex:&v13[v11]];
            ++v11;
          }

          while (v12 != v11);
        }
      }
    }

    else
    {
      v19 = +[NSAssertionHandler currentHandler];
      [v19 handleFailureInMethod:a2 object:self file:@"PhoneSettingsReplyWithMessageController.m" lineNumber:96 description:{@"No header, can't insert other items"}];
    }

    v20 = *&self->PSListController_opaque[v23];
    *&self->PSListController_opaque[v23] = v5;

    v3 = *&self->PSListController_opaque[v23];
  }

  return v3;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v7.receiver = self;
  v7.super_class = PhoneSettingsReplyWithMessageController;
  v4 = [(PhoneSettingsReplyWithMessageController *)&v7 tableView:a3 cellForRowAtIndexPath:a4];
  if ([v4 tag] == &dword_8)
  {
    v5 = [v4 editableTextField];
    [v5 setClearButtonMode:3];
  }

  return v4;
}

- (void)returnPressedAtEnd
{
  v3 = [UIApp keyWindow];
  v2 = [v3 firstResponder];
  [v2 resignFirstResponder];
}

- (void)setCustomReply:(id)a3 specifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PhoneSettingsReplyWithMessageController *)self replyWithMessageStore];
  LODWORD(self) = [(PhoneSettingsReplyWithMessageController *)self customReplyIndexOfSpecifier:v6];

  [v8 setCustomReply:v7 atIndex:self];
}

- (id)customReply:(id)a3
{
  v4 = a3;
  v5 = [(PhoneSettingsReplyWithMessageController *)self replyWithMessageStore];
  v6 = [v5 customReplies];
  LODWORD(self) = [(PhoneSettingsReplyWithMessageController *)self customReplyIndexOfSpecifier:v4];

  v7 = [v6 objectAtIndex:self];

  return v7;
}

- (int)customReplyIndexOfSpecifier:(id)a3
{
  v3 = [a3 propertyForKey:@"ReplyIndex"];
  v4 = [v3 intValue];

  return v4;
}

@end