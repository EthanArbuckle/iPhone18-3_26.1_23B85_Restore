@interface EKUIInviteesViewAddInviteesCell
- (EKUIInviteesViewAddInviteesCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation EKUIInviteesViewAddInviteesCell

- (EKUIInviteesViewAddInviteesCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v19.receiver = self;
  v19.super_class = EKUIInviteesViewAddInviteesCell;
  v4 = [(EKUIInviteesViewAddInviteesCell *)&v19 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(EKUIInviteesViewAddInviteesCell *)v4 defaultContentConfiguration];
    v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus.circle"];
    [v6 setImage:v7];

    v8 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v9 = [v6 imageProperties];
    [v9 setTintColor:v8];

    v10 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
    v11 = [v6 imageProperties];
    [v11 setPreferredSymbolConfiguration:v10];

    [v6 setImageToTextPadding:8.0];
    v12 = EventKitUIBundle();
    v13 = [v12 localizedStringForKey:@"Cell title - Add Invitees" value:@"Add Invitees" table:0];
    [v6 setText:v13];

    v14 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v15 = [v6 textProperties];
    [v15 setColor:v14];

    v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD00]];
    v17 = [v6 textProperties];
    [v17 setFont:v16];

    [(EKUIInviteesViewAddInviteesCell *)v5 setContentConfiguration:v6];
  }

  return v5;
}

@end