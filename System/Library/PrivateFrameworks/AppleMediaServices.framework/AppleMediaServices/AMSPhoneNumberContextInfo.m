@interface AMSPhoneNumberContextInfo
- (AMSPhoneNumberContextInfo)initWithPhoneNumber:(id)a3 simLabel:(id)a4 uuid:(id)a5 isVoicePreferred:(BOOL)a6;
- (id)description;
@end

@implementation AMSPhoneNumberContextInfo

- (AMSPhoneNumberContextInfo)initWithPhoneNumber:(id)a3 simLabel:(id)a4 uuid:(id)a5 isVoicePreferred:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = AMSPhoneNumberContextInfo;
  v14 = [(AMSPhoneNumberContextInfo *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_isVoicePreferred = a6;
    objc_storeStrong(&v14->_phoneNumber, a3);
    objc_storeStrong(&v15->_simLabel, a4);
    objc_storeStrong(&v15->_uuid, a5);
  }

  return v15;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSPhoneNumberContextInfo isVoicePreferred](self, "isVoicePreferred")}];
  [v3 ams_setNullableObject:v4 forKey:@"voicePreferred"];

  v5 = [(AMSPhoneNumberContextInfo *)self phoneNumber];
  [v3 ams_setNullableObject:v5 forKey:@"phoneNumber"];

  v6 = [(AMSPhoneNumberContextInfo *)self simLabel];
  [v3 ams_setNullableObject:v6 forKey:@"simLabel"];

  v7 = [(AMSPhoneNumberContextInfo *)self uuid];
  [v3 ams_setNullableObject:v7 forKey:@"uuid"];

  v8 = [v3 copy];
  v9 = [self ams_generateDescriptionWithSubObjects:v8];

  return v9;
}

@end