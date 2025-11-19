@interface EKUIInviteesViewOriginalConflictCell
- (id)participantsTextColor;
- (id)timeTextColor;
@end

@implementation EKUIInviteesViewOriginalConflictCell

- (id)participantsTextColor
{
  if ([(EKUIInviteesViewOriginalConflictCell *)self conflict])
  {
    [MEMORY[0x1E69DC888] systemRedColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v2 = ;

  return v2;
}

- (id)timeTextColor
{
  if ([(EKUIInviteesViewOriginalConflictCell *)self conflict])
  {
    [MEMORY[0x1E69DC888] systemRedColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v2 = ;

  return v2;
}

@end