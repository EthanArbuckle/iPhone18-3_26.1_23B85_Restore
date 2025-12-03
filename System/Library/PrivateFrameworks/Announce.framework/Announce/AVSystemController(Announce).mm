@interface AVSystemController(Announce)
- (uint64_t)an_isCarPlayConnected;
- (uint64_t)an_isSoftwareVolumeEnabled;
@end

@implementation AVSystemController(Announce)

- (uint64_t)an_isCarPlayConnected
{
  v1 = [self attributeForKey:*MEMORY[0x277D26B60]];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (uint64_t)an_isSoftwareVolumeEnabled
{
  v1 = [self attributeForKey:*MEMORY[0x277D26C70]];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 objectForKey:*MEMORY[0x277D26D38]];
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end