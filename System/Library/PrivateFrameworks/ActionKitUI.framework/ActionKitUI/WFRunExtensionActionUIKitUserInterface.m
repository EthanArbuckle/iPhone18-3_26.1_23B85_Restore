@interface WFRunExtensionActionUIKitUserInterface
- (id)excludedActivityTypes;
@end

@implementation WFRunExtensionActionUIKitUserInterface

- (id)excludedActivityTypes
{
  v12[15] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D54760];
  v12[0] = *MEMORY[0x277D54748];
  v12[1] = v2;
  v3 = *MEMORY[0x277D54738];
  v12[2] = *MEMORY[0x277D54770];
  v12[3] = v3;
  v4 = *MEMORY[0x277D54778];
  v12[4] = *MEMORY[0x277D54728];
  v12[5] = v4;
  v5 = *MEMORY[0x277D54718];
  v12[6] = *MEMORY[0x277D54720];
  v12[7] = v5;
  v6 = *MEMORY[0x277D54708];
  v12[8] = *MEMORY[0x277D54780];
  v12[9] = v6;
  v7 = *MEMORY[0x277D54768];
  v12[10] = *MEMORY[0x277D54750];
  v12[11] = v7;
  v8 = *MEMORY[0x277D54710];
  v12[12] = *MEMORY[0x277D54758];
  v12[13] = v8;
  v12[14] = *MEMORY[0x277CE8978];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:15];
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end