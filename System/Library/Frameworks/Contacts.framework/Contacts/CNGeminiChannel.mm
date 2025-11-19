@interface CNGeminiChannel
+ (id)os_log;
- (CNGeminiChannel)initWithCoder:(id)a3;
- (id)initWithChannelIdentifier:(void *)a3 localizedLabel:(void *)a4 localizedBadgeLabel:(void *)a5 handle:(void *)a6 senderIdentity:(char)a7 available:;
- (id)initWithDanglingPlanItem:(id *)a1;
- (id)initWithDisabledCellularPlanItem:(id *)a1;
- (id)initWithSenderIdentity:(id *)a1;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNGeminiChannel

+ (id)os_log
{
  if (os_log_cn_once_token_2_0 != -1)
  {
    +[CNGeminiChannel os_log];
  }

  v3 = os_log_cn_once_object_2_0;

  return v3;
}

uint64_t __25__CNGeminiChannel_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "gemini");
  v1 = os_log_cn_once_object_2_0;
  os_log_cn_once_object_2_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)encodeWithCoder:(id)a3
{
  channelIdentifier = self->_channelIdentifier;
  v5 = a3;
  [v5 encodeObject:channelIdentifier forKey:@"_channelIdentifier"];
  [v5 encodeObject:self->_localizedLabel forKey:@"_localizedLabel"];
  [v5 encodeObject:self->_localizedBadgeLabel forKey:@"_localizedBadgeLabel"];
  [v5 encodeObject:self->_handle forKey:@"_handle"];
  [v5 encodeObject:self->_senderIdentity forKey:@"_senderIdentity"];
  [v5 encodeBool:self->_available forKey:@"_available"];
}

- (id)initWithSenderIdentity:(id *)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = [v3 accountUUID];
    v5 = [v4 UUIDString];
    v6 = [v3 localizedName];
    v7 = [v3 localizedShortName];
    v8 = [v3 handle];
    v9 = [v8 value];
    v10 = [(CNGeminiChannel *)v2 initWithChannelIdentifier:v5 localizedLabel:v6 localizedBadgeLabel:v7 handle:v9 senderIdentity:v3 available:1];

    v2 = v10;
  }

  return v2;
}

- (id)initWithChannelIdentifier:(void *)a3 localizedLabel:(void *)a4 localizedBadgeLabel:(void *)a5 handle:(void *)a6 senderIdentity:(char)a7 available:
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  if (a1)
  {
    v27.receiver = a1;
    v27.super_class = CNGeminiChannel;
    a1 = objc_msgSendSuper2(&v27, sel_init);
    if (a1)
    {
      v18 = [v13 copy];
      v19 = a1[2];
      a1[2] = v18;

      v20 = [v14 copy];
      v21 = a1[3];
      a1[3] = v20;

      v22 = [v15 copy];
      v23 = a1[4];
      a1[4] = v22;

      v24 = [v16 copy];
      v25 = a1[5];
      a1[5] = v24;

      objc_storeStrong(a1 + 6, a6);
      *(a1 + 8) = a7;
    }
  }

  return a1;
}

- (id)initWithDanglingPlanItem:(id *)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = [v3 simLabelID];
    v5 = [v3 userLabel];
    v6 = [v5 label];
    v7 = [v3 phoneNumber];

    v2 = [(CNGeminiChannel *)v2 initWithChannelIdentifier:v4 localizedLabel:v6 localizedBadgeLabel:0 handle:v7 senderIdentity:0 available:0];
  }

  return v2;
}

- (id)initWithDisabledCellularPlanItem:(id *)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = [v3 userLabel];
    v5 = [v4 labelId];
    v6 = [v3 userLabel];
    v7 = [v6 label];
    v8 = [v3 phoneNumber];

    v2 = [(CNGeminiChannel *)v2 initWithChannelIdentifier:v5 localizedLabel:v7 localizedBadgeLabel:0 handle:v8 senderIdentity:0 available:0];
  }

  return v2;
}

- (CNGeminiChannel)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_channelIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_localizedLabel"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_localizedBadgeLabel"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_handle"];
  v9 = [v4 decodeObjectOfClass:_MergedGlobals[0]() forKey:@"_senderIdentity"];
  v10 = [v4 decodeBoolForKey:@"_available"];

  v11 = [(CNGeminiChannel *)&self->super.isa initWithChannelIdentifier:v5 localizedLabel:v6 localizedBadgeLabel:v7 handle:v8 senderIdentity:v9 available:v10];
  return v11;
}

@end