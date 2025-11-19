@interface PendingBirthdayModel
- (void)accountWasModified:(id)a3;
@end

@implementation PendingBirthdayModel

- (void)accountWasModified:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1C55209B0(a3);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);
}

@end