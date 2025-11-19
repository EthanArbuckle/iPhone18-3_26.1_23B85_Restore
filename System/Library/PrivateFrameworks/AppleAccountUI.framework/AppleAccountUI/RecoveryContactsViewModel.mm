@interface RecoveryContactsViewModel
- (void)fetchAllTrustedContacts;
- (void)finishingRepair;
- (void)startingRepair;
@end

@implementation RecoveryContactsViewModel

- (void)fetchAllTrustedContacts
{
  MEMORY[0x1E69E5928](self);
  sub_1C5404FE8();
  MEMORY[0x1E69E5920](self);
}

- (void)startingRepair
{
  MEMORY[0x1E69E5928](self);
  sub_1C54069A8();
  MEMORY[0x1E69E5920](self);
}

- (void)finishingRepair
{
  MEMORY[0x1E69E5928](self);
  sub_1C5406D38();
  MEMORY[0x1E69E5920](self);
}

@end