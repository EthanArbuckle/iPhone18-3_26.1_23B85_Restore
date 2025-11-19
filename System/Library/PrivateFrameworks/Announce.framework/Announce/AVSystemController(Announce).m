@interface AVSystemController(Announce)
- (uint64_t)an_isCarPlayConnected;
- (uint64_t)an_isSoftwareVolumeEnabled;
@end

@implementation AVSystemController(Announce)

- (uint64_t)an_isCarPlayConnected
{
  v1 = [a1 attributeForKey:*MEMORY[0x277D26B60]];
  v2 = [v1 BOOLValue];

  return v2;
}

- (uint64_t)an_isSoftwareVolumeEnabled
{
  v1 = [a1 attributeForKey:*MEMORY[0x277D26C70]];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 objectForKey:*MEMORY[0x277D26D38]];
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end