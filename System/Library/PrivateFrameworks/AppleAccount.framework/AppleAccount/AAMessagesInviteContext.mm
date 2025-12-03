@interface AAMessagesInviteContext
- (id)description;
@end

@implementation AAMessagesInviteContext

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  title = [(AAMessagesInviteContext *)self title];
  subtitle = [(AAMessagesInviteContext *)self subtitle];
  action = [(AAMessagesInviteContext *)self action];
  inviteURL = [(AAMessagesInviteContext *)self inviteURL];
  absoluteString = [inviteURL absoluteString];
  recipients = [(AAMessagesInviteContext *)self recipients];
  messageURL = [(AAMessagesInviteContext *)self messageURL];
  absoluteString2 = [messageURL absoluteString];
  v13 = [v3 stringWithFormat:@"%@ - title: %@ subtitle: %@ action: %@ inviteURL: %@ recipients: %@ messageURL %@", v4, title, subtitle, action, absoluteString, recipients, absoluteString2];

  return v13;
}

@end