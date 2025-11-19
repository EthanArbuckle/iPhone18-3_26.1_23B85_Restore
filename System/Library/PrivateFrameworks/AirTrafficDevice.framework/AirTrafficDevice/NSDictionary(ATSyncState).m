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
  v1 = [a1 valueForKey:@"NewRevisionKey"];
  v2 = [v1 unsignedLongLongValue];

  return v2;
}

- (void)setNewRevision:()ATSyncState
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  [a1 setValue:v2 forKey:@"NewRevisionKey"];
}

- (void)setLastClientRevision:()ATSyncState
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  [a1 setValue:v2 forKey:@"LastClientRevision"];
}

- (uint64_t)lastClientRevision
{
  v1 = [a1 valueForKey:@"LastClientRevision"];
  v2 = [v1 unsignedLongLongValue];

  return v2;
}

- (void)setLastServerRevision:()ATSyncState
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  [a1 setValue:v2 forKey:@"LastServerRevision"];
}

- (uint64_t)lastServerRevision
{
  v1 = [a1 valueForKey:@"LastServerRevision"];
  v2 = [v1 unsignedLongLongValue];

  return v2;
}

@end