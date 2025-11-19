@interface EDAMBackupPaymentInfo
+ (id)structFields;
@end

@implementation EDAMBackupPaymentInfo

+ (id)structFields
{
  v12[5] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_399;
  if (!structFields_structFields_399)
  {
    v3 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"premiumCommerceService"];
    v4 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"premiumServiceSKU", v3];
    v12[1] = v4;
    v5 = [FATField fieldWithIndex:3 type:11 optional:0 name:@"currency"];
    v12[2] = v5;
    v6 = [FATField fieldWithIndex:4 type:8 optional:0 name:@"unitPrice"];
    v12[3] = v6;
    v7 = [FATField fieldWithIndex:5 type:8 optional:0 name:@"paymentMethodId"];
    v12[4] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:5];
    v9 = structFields_structFields_399;
    structFields_structFields_399 = v8;

    v2 = structFields_structFields_399;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v2;
}

@end