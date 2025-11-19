@interface AAUIAccountManagerHelper
- (AIDAAccountManager)accountManager;
- (id)accountsForAccountManager:(id)a3;
- (void)setAccountManager:(id)a3;
@end

@implementation AAUIAccountManagerHelper

- (AIDAAccountManager)accountManager
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1C55718B8();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (void)setAccountManager:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1C5571990(a3);
  MEMORY[0x1E69E5920](self);
}

- (id)accountsForAccountManager:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1C5572164();
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);
  type metadata accessor for AIDAServiceType();
  sub_1C543D95C();
  sub_1C5572838();
  v7 = sub_1C5596434();

  return v7;
}

@end