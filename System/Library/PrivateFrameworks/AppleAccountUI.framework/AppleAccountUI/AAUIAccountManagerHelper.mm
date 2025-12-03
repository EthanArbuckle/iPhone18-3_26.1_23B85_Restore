@interface AAUIAccountManagerHelper
- (AIDAAccountManager)accountManager;
- (id)accountsForAccountManager:(id)manager;
- (void)setAccountManager:(id)manager;
@end

@implementation AAUIAccountManagerHelper

- (AIDAAccountManager)accountManager
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1C55718B8();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (void)setAccountManager:(id)manager
{
  MEMORY[0x1E69E5928](manager);
  MEMORY[0x1E69E5928](self);
  sub_1C5571990(manager);
  MEMORY[0x1E69E5920](self);
}

- (id)accountsForAccountManager:(id)manager
{
  MEMORY[0x1E69E5928](manager);
  MEMORY[0x1E69E5928](self);
  sub_1C5572164();
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](manager);
  type metadata accessor for AIDAServiceType();
  sub_1C543D95C();
  sub_1C5572838();
  v7 = sub_1C5596434();

  return v7;
}

@end