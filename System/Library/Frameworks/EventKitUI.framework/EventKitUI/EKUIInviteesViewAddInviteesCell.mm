@interface EKUIInviteesViewAddInviteesCell
- (EKUIInviteesViewAddInviteesCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation EKUIInviteesViewAddInviteesCell

- (EKUIInviteesViewAddInviteesCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v19.receiver = self;
  v19.super_class = EKUIInviteesViewAddInviteesCell;
  v4 = [(EKUIInviteesViewAddInviteesCell *)&v19 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    defaultContentConfiguration = [(EKUIInviteesViewAddInviteesCell *)v4 defaultContentConfiguration];
    v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus.circle"];
    [defaultContentConfiguration setImage:v7];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    imageProperties = [defaultContentConfiguration imageProperties];
    [imageProperties setTintColor:secondaryLabelColor];

    v10 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
    imageProperties2 = [defaultContentConfiguration imageProperties];
    [imageProperties2 setPreferredSymbolConfiguration:v10];

    [defaultContentConfiguration setImageToTextPadding:8.0];
    v12 = EventKitUIBundle();
    v13 = [v12 localizedStringForKey:@"Cell title - Add Invitees" value:@"Add Invitees" table:0];
    [defaultContentConfiguration setText:v13];

    secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    textProperties = [defaultContentConfiguration textProperties];
    [textProperties setColor:secondaryLabelColor2];

    v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD00]];
    textProperties2 = [defaultContentConfiguration textProperties];
    [textProperties2 setFont:v16];

    [(EKUIInviteesViewAddInviteesCell *)v5 setContentConfiguration:defaultContentConfiguration];
  }

  return v5;
}

@end