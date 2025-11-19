@interface EDAMSubscriptionInfo
+ (id)structFields;
@end

@implementation EDAMSubscriptionInfo

+ (id)structFields
{
  v18[10] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_887;
  if (!structFields_structFields_887)
  {
    v17 = [FATField fieldWithIndex:1 type:10 optional:0 name:@"currentTime"];
    v18[0] = v17;
    v16 = [FATField fieldWithIndex:2 type:2 optional:0 name:@"currentlySubscribed"];
    v18[1] = v16;
    v3 = [FATField fieldWithIndex:3 type:2 optional:0 name:@"subscriptionRecurring"];
    v18[2] = v3;
    v4 = [FATField fieldWithIndex:4 type:10 optional:1 name:@"subscriptionExpirationDate"];
    v18[3] = v4;
    v5 = [FATField fieldWithIndex:5 type:2 optional:0 name:@"subscriptionPending"];
    v18[4] = v5;
    v6 = [FATField fieldWithIndex:6 type:2 optional:0 name:@"subscriptionCancellationPending"];
    v18[5] = v6;
    v7 = [FATField fieldWithIndex:0 type:8 optional:1 name:0];
    v8 = [FATField fieldWithIndex:7 type:14 optional:0 name:@"serviceLevelsEligibleForPurchase" valueField:v7];
    v18[6] = v8;
    v9 = [FATField fieldWithIndex:8 type:11 optional:1 name:@"currentSku"];
    v18[7] = v9;
    v10 = [FATField fieldWithIndex:9 type:10 optional:1 name:@"validUntil"];
    v18[8] = v10;
    v11 = [FATField fieldWithIndex:10 type:2 optional:1 name:@"itunesReceiptRequested"];
    v18[9] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:10];
    v13 = structFields_structFields_887;
    structFields_structFields_887 = v12;

    v2 = structFields_structFields_887;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v2;
}

@end