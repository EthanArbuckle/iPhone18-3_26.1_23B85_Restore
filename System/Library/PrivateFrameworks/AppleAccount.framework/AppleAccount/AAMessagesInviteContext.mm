@interface AAMessagesInviteContext
- (id)description;
@end

@implementation AAMessagesInviteContext

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(AAMessagesInviteContext *)self title];
  v6 = [(AAMessagesInviteContext *)self subtitle];
  v7 = [(AAMessagesInviteContext *)self action];
  v8 = [(AAMessagesInviteContext *)self inviteURL];
  v9 = [v8 absoluteString];
  v10 = [(AAMessagesInviteContext *)self recipients];
  v11 = [(AAMessagesInviteContext *)self messageURL];
  v12 = [v11 absoluteString];
  v13 = [v3 stringWithFormat:@"%@ - title: %@ subtitle: %@ action: %@ inviteURL: %@ recipients: %@ messageURL %@", v4, v5, v6, v7, v9, v10, v12];

  return v13;
}

@end