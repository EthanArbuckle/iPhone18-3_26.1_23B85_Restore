@interface EDAMUserAttributes
+ (id)structFields;
@end

@implementation EDAMUserAttributes

+ (id)structFields
{
  v45[36] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_35;
  if (!structFields_structFields_35)
  {
    v44 = [FATField fieldWithIndex:1 type:11 optional:1 name:@"defaultLocationName"];
    v45[0] = v44;
    v43 = [FATField fieldWithIndex:2 type:4 optional:1 name:@"defaultLatitude"];
    v45[1] = v43;
    v42 = [FATField fieldWithIndex:3 type:4 optional:1 name:@"defaultLongitude"];
    v45[2] = v42;
    v41 = [FATField fieldWithIndex:4 type:2 optional:1 name:@"preactivation"];
    v45[3] = v41;
    v40 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
    v39 = [FATField fieldWithIndex:5 type:15 optional:1 name:@"viewedPromotions" valueField:v40];
    v45[4] = v39;
    v38 = [FATField fieldWithIndex:6 type:11 optional:1 name:@"incomingEmailAddress"];
    v45[5] = v38;
    v37 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
    v36 = [FATField fieldWithIndex:7 type:15 optional:1 name:@"recentMailedAddresses" valueField:v37];
    v45[6] = v36;
    v35 = [FATField fieldWithIndex:9 type:11 optional:1 name:@"comments"];
    v45[7] = v35;
    v34 = [FATField fieldWithIndex:11 type:10 optional:1 name:@"dateAgreedToTermsOfService"];
    v45[8] = v34;
    v33 = [FATField fieldWithIndex:12 type:8 optional:1 name:@"maxReferrals"];
    v45[9] = v33;
    v32 = [FATField fieldWithIndex:13 type:8 optional:1 name:@"referralCount"];
    v45[10] = v32;
    v31 = [FATField fieldWithIndex:14 type:11 optional:1 name:@"refererCode"];
    v45[11] = v31;
    v30 = [FATField fieldWithIndex:15 type:10 optional:1 name:@"sentEmailDate"];
    v45[12] = v30;
    v29 = [FATField fieldWithIndex:16 type:8 optional:1 name:@"sentEmailCount"];
    v45[13] = v29;
    v28 = [FATField fieldWithIndex:17 type:8 optional:1 name:@"dailyEmailLimit"];
    v45[14] = v28;
    v27 = [FATField fieldWithIndex:18 type:10 optional:1 name:@"emailOptOutDate"];
    v45[15] = v27;
    v26 = [FATField fieldWithIndex:19 type:10 optional:1 name:@"partnerEmailOptInDate"];
    v45[16] = v26;
    v25 = [FATField fieldWithIndex:20 type:11 optional:1 name:@"preferredLanguage"];
    v45[17] = v25;
    v24 = [FATField fieldWithIndex:21 type:11 optional:1 name:@"preferredCountry"];
    v45[18] = v24;
    v23 = [FATField fieldWithIndex:22 type:2 optional:1 name:@"clipFullPage"];
    v45[19] = v23;
    v22 = [FATField fieldWithIndex:23 type:11 optional:1 name:@"twitterUserName"];
    v45[20] = v22;
    v21 = [FATField fieldWithIndex:24 type:11 optional:1 name:@"twitterId"];
    v45[21] = v21;
    v20 = [FATField fieldWithIndex:25 type:11 optional:1 name:@"groupName"];
    v45[22] = v20;
    v19 = [FATField fieldWithIndex:26 type:11 optional:1 name:@"recognitionLanguage"];
    v45[23] = v19;
    v18 = [FATField fieldWithIndex:28 type:11 optional:1 name:@"referralProof"];
    v45[24] = v18;
    v17 = [FATField fieldWithIndex:29 type:2 optional:1 name:@"educationalDiscount"];
    v45[25] = v17;
    v3 = [FATField fieldWithIndex:30 type:11 optional:1 name:@"businessAddress"];
    v45[26] = v3;
    v4 = [FATField fieldWithIndex:31 type:2 optional:1 name:@"hideSponsorBilling"];
    v45[27] = v4;
    v5 = [FATField fieldWithIndex:32 type:2 optional:1 name:@"taxExempt"];
    v45[28] = v5;
    v6 = [FATField fieldWithIndex:33 type:2 optional:1 name:@"useEmailAutoFiling"];
    v45[29] = v6;
    v7 = [FATField fieldWithIndex:34 type:8 optional:1 name:@"reminderEmailConfig"];
    v45[30] = v7;
    v8 = [FATField fieldWithIndex:35 type:10 optional:1 name:@"emailAddressLastConfirmed"];
    v45[31] = v8;
    v9 = [FATField fieldWithIndex:36 type:10 optional:1 name:@"passwordUpdated"];
    v45[32] = v9;
    v10 = [FATField fieldWithIndex:37 type:2 optional:1 name:@"salesforcePushEnabled"];
    v45[33] = v10;
    v11 = [FATField fieldWithIndex:38 type:2 optional:1 name:@"shouldLogClientEvent"];
    v45[34] = v11;
    v12 = [FATField fieldWithIndex:39 type:2 optional:1 name:@"optOutMachineLearning"];
    v45[35] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:36];
    v14 = structFields_structFields_35;
    structFields_structFields_35 = v13;

    v2 = structFields_structFields_35;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v2;
}

@end