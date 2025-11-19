@interface INSearchCallHistoryIntent(APUIKeyPerson)
- (id)apui_keyPeople;
@end

@implementation INSearchCallHistoryIntent(APUIKeyPerson)

- (id)apui_keyPeople
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = [a1 recipient];
  v2 = v1;
  if (v1)
  {
    v6[0] = v1;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end