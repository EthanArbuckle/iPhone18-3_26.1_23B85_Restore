@interface CNGeminiChannel
+ (id)os_log;
- (CNGeminiChannel)initWithCoder:(id)coder;
- (id)initWithChannelIdentifier:(void *)identifier localizedLabel:(void *)label localizedBadgeLabel:(void *)badgeLabel handle:(void *)handle senderIdentity:(char)identity available:;
- (id)initWithDanglingPlanItem:(id *)item;
- (id)initWithDisabledCellularPlanItem:(id *)item;
- (id)initWithSenderIdentity:(id *)identity;
- (void)encodeWithCoder:(id)coder;
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

- (void)encodeWithCoder:(id)coder
{
  channelIdentifier = self->_channelIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:channelIdentifier forKey:@"_channelIdentifier"];
  [coderCopy encodeObject:self->_localizedLabel forKey:@"_localizedLabel"];
  [coderCopy encodeObject:self->_localizedBadgeLabel forKey:@"_localizedBadgeLabel"];
  [coderCopy encodeObject:self->_handle forKey:@"_handle"];
  [coderCopy encodeObject:self->_senderIdentity forKey:@"_senderIdentity"];
  [coderCopy encodeBool:self->_available forKey:@"_available"];
}

- (id)initWithSenderIdentity:(id *)identity
{
  identityCopy = identity;
  if (identity)
  {
    v3 = a2;
    accountUUID = [v3 accountUUID];
    uUIDString = [accountUUID UUIDString];
    localizedName = [v3 localizedName];
    localizedShortName = [v3 localizedShortName];
    handle = [v3 handle];
    value = [handle value];
    v10 = [(CNGeminiChannel *)identityCopy initWithChannelIdentifier:uUIDString localizedLabel:localizedName localizedBadgeLabel:localizedShortName handle:value senderIdentity:v3 available:1];

    identityCopy = v10;
  }

  return identityCopy;
}

- (id)initWithChannelIdentifier:(void *)identifier localizedLabel:(void *)label localizedBadgeLabel:(void *)badgeLabel handle:(void *)handle senderIdentity:(char)identity available:
{
  v13 = a2;
  identifierCopy = identifier;
  labelCopy = label;
  badgeLabelCopy = badgeLabel;
  handleCopy = handle;
  if (self)
  {
    v27.receiver = self;
    v27.super_class = CNGeminiChannel;
    self = objc_msgSendSuper2(&v27, sel_init);
    if (self)
    {
      v18 = [v13 copy];
      v19 = self[2];
      self[2] = v18;

      v20 = [identifierCopy copy];
      v21 = self[3];
      self[3] = v20;

      v22 = [labelCopy copy];
      v23 = self[4];
      self[4] = v22;

      v24 = [badgeLabelCopy copy];
      v25 = self[5];
      self[5] = v24;

      objc_storeStrong(self + 6, handle);
      *(self + 8) = identity;
    }
  }

  return self;
}

- (id)initWithDanglingPlanItem:(id *)item
{
  itemCopy = item;
  if (item)
  {
    v3 = a2;
    simLabelID = [v3 simLabelID];
    userLabel = [v3 userLabel];
    label = [userLabel label];
    phoneNumber = [v3 phoneNumber];

    itemCopy = [(CNGeminiChannel *)itemCopy initWithChannelIdentifier:simLabelID localizedLabel:label localizedBadgeLabel:0 handle:phoneNumber senderIdentity:0 available:0];
  }

  return itemCopy;
}

- (id)initWithDisabledCellularPlanItem:(id *)item
{
  itemCopy = item;
  if (item)
  {
    v3 = a2;
    userLabel = [v3 userLabel];
    labelId = [userLabel labelId];
    userLabel2 = [v3 userLabel];
    label = [userLabel2 label];
    phoneNumber = [v3 phoneNumber];

    itemCopy = [(CNGeminiChannel *)itemCopy initWithChannelIdentifier:labelId localizedLabel:label localizedBadgeLabel:0 handle:phoneNumber senderIdentity:0 available:0];
  }

  return itemCopy;
}

- (CNGeminiChannel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_channelIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_localizedLabel"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_localizedBadgeLabel"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_handle"];
  v9 = [coderCopy decodeObjectOfClass:_MergedGlobals[0]() forKey:@"_senderIdentity"];
  v10 = [coderCopy decodeBoolForKey:@"_available"];

  v11 = [(CNGeminiChannel *)&self->super.isa initWithChannelIdentifier:v5 localizedLabel:v6 localizedBadgeLabel:v7 handle:v8 senderIdentity:v9 available:v10];
  return v11;
}

@end