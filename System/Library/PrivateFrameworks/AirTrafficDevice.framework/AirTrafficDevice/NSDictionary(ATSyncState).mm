@interface NSDictionary(ATSyncState)
- (uint64_t)lastClientRevision;
- (uint64_t)lastServerRevision;
- (uint64_t)newRevision;
- (void)setLastClientRevision:()ATSyncState;
- (void)setLastServerRevision:()ATSyncState;
- (void)setNewRevision:()ATSyncState;
@end

@implementation NSDictionary(ATSyncState)

- (uint64_t)newRevision
{
  v1 = [self valueForKey:@"NewRevisionKey"];
  unsignedLongLongValue = [v1 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (void)setNewRevision:()ATSyncState
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  [self setValue:v2 forKey:@"NewRevisionKey"];
}

- (void)setLastClientRevision:()ATSyncState
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  [self setValue:v2 forKey:@"LastClientRevision"];
}

- (uint64_t)lastClientRevision
{
  v1 = [self valueForKey:@"LastClientRevision"];
  unsignedLongLongValue = [v1 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (void)setLastServerRevision:()ATSyncState
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  [self setValue:v2 forKey:@"LastServerRevision"];
}

- (uint64_t)lastServerRevision
{
  v1 = [self valueForKey:@"LastServerRevision"];
  unsignedLongLongValue = [v1 unsignedLongLongValue];

  return unsignedLongLongValue;
}

@end