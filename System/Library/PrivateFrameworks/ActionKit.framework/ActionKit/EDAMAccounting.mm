@interface EDAMAccounting
+ (id)structFields;
@end

@implementation EDAMAccounting

+ (id)structFields
{
  v32[25] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_448;
  if (!structFields_structFields_448)
  {
    v31 = [FATField fieldWithIndex:1 type:10 optional:1 name:@"uploadLimit"];
    v32[0] = v31;
    v30 = [FATField fieldWithIndex:2 type:10 optional:1 name:@"uploadLimitEnd"];
    v32[1] = v30;
    v29 = [FATField fieldWithIndex:3 type:10 optional:1 name:@"uploadLimitNextMonth"];
    v32[2] = v29;
    v28 = [FATField fieldWithIndex:4 type:8 optional:1 name:@"premiumServiceStatus"];
    v32[3] = v28;
    v27 = [FATField fieldWithIndex:5 type:11 optional:1 name:@"premiumOrderNumber"];
    v32[4] = v27;
    v26 = [FATField fieldWithIndex:6 type:11 optional:1 name:@"premiumCommerceService"];
    v32[5] = v26;
    v25 = [FATField fieldWithIndex:7 type:10 optional:1 name:@"premiumServiceStart"];
    v32[6] = v25;
    v24 = [FATField fieldWithIndex:8 type:11 optional:1 name:@"premiumServiceSKU"];
    v32[7] = v24;
    v23 = [FATField fieldWithIndex:9 type:10 optional:1 name:@"lastSuccessfulCharge"];
    v32[8] = v23;
    v22 = [FATField fieldWithIndex:10 type:10 optional:1 name:@"lastFailedCharge"];
    v32[9] = v22;
    v21 = [FATField fieldWithIndex:11 type:11 optional:1 name:@"lastFailedChargeReason"];
    v32[10] = v21;
    v20 = [FATField fieldWithIndex:12 type:10 optional:1 name:@"nextPaymentDue"];
    v32[11] = v20;
    v19 = [FATField fieldWithIndex:13 type:10 optional:1 name:@"premiumLockUntil"];
    v32[12] = v19;
    v18 = [FATField fieldWithIndex:14 type:10 optional:1 name:@"updated"];
    v32[13] = v18;
    v17 = [FATField fieldWithIndex:16 type:11 optional:1 name:@"premiumSubscriptionNumber"];
    v32[14] = v17;
    v3 = [FATField fieldWithIndex:17 type:10 optional:1 name:@"lastRequestedCharge"];
    v32[15] = v3;
    v4 = [FATField fieldWithIndex:18 type:11 optional:1 name:@"currency"];
    v32[16] = v4;
    v5 = [FATField fieldWithIndex:19 type:8 optional:1 name:@"unitPrice"];
    v32[17] = v5;
    v6 = [FATField fieldWithIndex:20 type:8 optional:1 name:@"businessId"];
    v32[18] = v6;
    v7 = [FATField fieldWithIndex:21 type:11 optional:1 name:@"businessName"];
    v32[19] = v7;
    v8 = [FATField fieldWithIndex:22 type:8 optional:1 name:@"businessRole"];
    v32[20] = v8;
    v9 = [FATField fieldWithIndex:23 type:8 optional:1 name:@"unitDiscount"];
    v32[21] = v9;
    v10 = [FATField fieldWithIndex:24 type:10 optional:1 name:@"nextChargeDate"];
    v32[22] = v10;
    v11 = [FATField fieldWithIndex:25 type:8 optional:1 name:@"availablePoints"];
    v32[23] = v11;
    v12 = [FATField fieldWithIndex:26 type:12 optional:1 name:@"backupPaymentInfo" structClass:objc_opt_class()];
    v32[24] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:25];
    v14 = structFields_structFields_448;
    structFields_structFields_448 = v13;

    v2 = structFields_structFields_448;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v2;
}

@end