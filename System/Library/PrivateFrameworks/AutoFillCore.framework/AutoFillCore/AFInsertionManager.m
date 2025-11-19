@interface AFInsertionManager
+ (id)preferredInsertionOrder;
@end

@implementation AFInsertionManager

+ (id)preferredInsertionOrder
{
  if (preferredInsertionOrder_onceToken != -1)
  {
    +[AFInsertionManager preferredInsertionOrder];
  }

  v3 = preferredInsertionOrder_preferredInsertionOrder;

  return v3;
}

void __45__AFInsertionManager_preferredInsertionOrder__block_invoke()
{
  v3[52] = *MEMORY[0x277D85DE8];
  v3[0] = @"username";
  v3[1] = @"password";
  v3[2] = @"new-password";
  v3[3] = @"email";
  v3[4] = @"name";
  v3[5] = @"given-name";
  v3[6] = @"additional-name";
  v3[7] = @"family-name";
  v3[8] = @"street-address";
  v3[9] = @"address-line1";
  v3[10] = @"address-line2";
  v3[11] = @"address-level2";
  v3[12] = @"address-level1";
  v3[13] = @"address-level1+2";
  v3[14] = @"address-level3";
  v3[15] = @"country-name";
  v3[16] = @"postal-code";
  v3[17] = @"tel";
  v3[18] = @"bday";
  v3[19] = @"bday-day";
  v3[20] = @"bday-month";
  v3[21] = @"bday-year";
  v3[22] = @"cc-name";
  v3[23] = @"cc-given-name";
  v3[24] = @"cc-additional-name";
  v3[25] = @"cc-family-name";
  v3[26] = @"cc-number";
  v3[27] = @"cc-csc";
  v3[28] = @"cc-exp";
  v3[29] = @"cc-exp-month";
  v3[30] = @"cc-exp-year";
  v3[31] = @"cc-type";
  v3[32] = @"signup-username";
  v3[33] = @"login-username";
  v3[34] = @"one-time-code";
  v3[35] = @"honorifix-prefix";
  v3[36] = @"honorifix-suffix";
  v3[37] = @"nickname";
  v3[38] = @"organization-title";
  v3[39] = @"organization";
  v3[40] = @"location";
  v3[41] = @"tel-national";
  v3[42] = @"tel-country-code";
  v3[43] = @"tel-area-code";
  v3[44] = @"tel-local";
  v3[45] = @"tel-extension";
  v3[46] = @"cc-number";
  v3[47] = @"url";
  v3[48] = @"equation";
  v3[49] = @"shipment-tracking-number";
  v3[50] = @"flight-number";
  v3[51] = @"date-time";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:52];
  v1 = preferredInsertionOrder_preferredInsertionOrder;
  preferredInsertionOrder_preferredInsertionOrder = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end