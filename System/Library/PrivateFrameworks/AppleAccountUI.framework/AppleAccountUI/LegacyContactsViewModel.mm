@interface LegacyContactsViewModel
- (void)fetchAllTrustedContacts;
- (void)finishingRepair;
- (void)startingRepair;
@end

@implementation LegacyContactsViewModel

- (void)fetchAllTrustedContacts
{
  MEMORY[0x1E69E5928](self);
  sub_1C54F5904();
  MEMORY[0x1E69E5920](self);
}

- (void)startingRepair
{
  MEMORY[0x1E69E5928](self);
  sub_1C54F6628();
  MEMORY[0x1E69E5920](self);
}

- (void)finishingRepair
{
  MEMORY[0x1E69E5928](self);
  sub_1C54F6848();
  MEMORY[0x1E69E5920](self);
}

@end