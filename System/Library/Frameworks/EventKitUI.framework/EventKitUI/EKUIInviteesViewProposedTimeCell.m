@interface EKUIInviteesViewProposedTimeCell
- (id)participantsTextColor;
@end

@implementation EKUIInviteesViewProposedTimeCell

- (id)participantsTextColor
{
  if ([(EKUIInviteesViewProposedTimeCell *)self conflicts])
  {
    [MEMORY[0x1E69DC888] systemRedColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemGrayColor];
  }
  v2 = ;

  return v2;
}

@end