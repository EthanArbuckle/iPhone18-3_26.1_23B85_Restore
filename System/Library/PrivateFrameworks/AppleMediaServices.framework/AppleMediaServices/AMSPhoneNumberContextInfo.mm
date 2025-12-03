@interface AMSPhoneNumberContextInfo
- (AMSPhoneNumberContextInfo)initWithPhoneNumber:(id)number simLabel:(id)label uuid:(id)uuid isVoicePreferred:(BOOL)preferred;
- (id)description;
@end

@implementation AMSPhoneNumberContextInfo

- (AMSPhoneNumberContextInfo)initWithPhoneNumber:(id)number simLabel:(id)label uuid:(id)uuid isVoicePreferred:(BOOL)preferred
{
  numberCopy = number;
  labelCopy = label;
  uuidCopy = uuid;
  v17.receiver = self;
  v17.super_class = AMSPhoneNumberContextInfo;
  v14 = [(AMSPhoneNumberContextInfo *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_isVoicePreferred = preferred;
    objc_storeStrong(&v14->_phoneNumber, number);
    objc_storeStrong(&v15->_simLabel, label);
    objc_storeStrong(&v15->_uuid, uuid);
  }

  return v15;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSPhoneNumberContextInfo isVoicePreferred](self, "isVoicePreferred")}];
  [v3 ams_setNullableObject:v4 forKey:@"voicePreferred"];

  phoneNumber = [(AMSPhoneNumberContextInfo *)self phoneNumber];
  [v3 ams_setNullableObject:phoneNumber forKey:@"phoneNumber"];

  simLabel = [(AMSPhoneNumberContextInfo *)self simLabel];
  [v3 ams_setNullableObject:simLabel forKey:@"simLabel"];

  uuid = [(AMSPhoneNumberContextInfo *)self uuid];
  [v3 ams_setNullableObject:uuid forKey:@"uuid"];

  v8 = [v3 copy];
  v9 = [self ams_generateDescriptionWithSubObjects:v8];

  return v9;
}

@end