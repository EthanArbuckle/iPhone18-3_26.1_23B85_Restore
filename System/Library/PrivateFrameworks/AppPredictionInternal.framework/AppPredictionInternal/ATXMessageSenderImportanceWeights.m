@interface ATXMessageSenderImportanceWeights
- (ATXMessageSenderImportanceWeights)init;
- (double)contactHasBeencontactedToday;
- (double)isAudioMessage;
- (double)isContactChatPinnedInMessage;
- (double)isEmergencyContact;
- (double)isFavoriteContact;
- (double)isFrequentlyContacted;
- (double)isMentionedInGroupMessage;
- (double)isVIP;
- (double)isiCloudFamilyMember;
- (double)speedOfResponseToMessageContact;
@end

@implementation ATXMessageSenderImportanceWeights

- (ATXMessageSenderImportanceWeights)init
{
  v6.receiver = self;
  v6.super_class = ATXMessageSenderImportanceWeights;
  v2 = [(ATXMessageSenderImportanceWeights *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CEB3C0] dictionaryForResource:@"ATXMessageSenderImportance" ofType:@"plist" specifiedABGroup:0];
    messageSenderImportanceWeights = v2->_messageSenderImportanceWeights;
    v2->_messageSenderImportanceWeights = v3;
  }

  return v2;
}

- (double)isiCloudFamilyMember
{
  v2 = [(NSDictionary *)self->_messageSenderImportanceWeights objectForKeyedSubscript:@"isiCloudFamilyMember"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.5;
  }

  return v5;
}

- (double)isEmergencyContact
{
  v2 = [(NSDictionary *)self->_messageSenderImportanceWeights objectForKeyedSubscript:@"isEmergencyContact"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.5;
  }

  return v5;
}

- (double)isFavoriteContact
{
  v2 = [(NSDictionary *)self->_messageSenderImportanceWeights objectForKeyedSubscript:@"isFavoriteContact"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.5;
  }

  return v5;
}

- (double)isVIP
{
  v2 = [(NSDictionary *)self->_messageSenderImportanceWeights objectForKeyedSubscript:@"isVIP"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.5;
  }

  return v5;
}

- (double)isAudioMessage
{
  v2 = [(NSDictionary *)self->_messageSenderImportanceWeights objectForKeyedSubscript:@"isAudioMessage"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.5;
  }

  return v5;
}

- (double)isContactChatPinnedInMessage
{
  v2 = [(NSDictionary *)self->_messageSenderImportanceWeights objectForKeyedSubscript:@"isContactChatPinnedInMessage"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.5;
  }

  return v5;
}

- (double)isMentionedInGroupMessage
{
  v2 = [(NSDictionary *)self->_messageSenderImportanceWeights objectForKeyedSubscript:@"isMentionedInGroupMessage"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.5;
  }

  return v5;
}

- (double)isFrequentlyContacted
{
  v2 = [(NSDictionary *)self->_messageSenderImportanceWeights objectForKeyedSubscript:@"isFrequentlyContacted"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 0.25;
  }

  return v4;
}

- (double)contactHasBeencontactedToday
{
  v2 = [(NSDictionary *)self->_messageSenderImportanceWeights objectForKeyedSubscript:@"contactedToday"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.25;
  }

  return v5;
}

- (double)speedOfResponseToMessageContact
{
  v2 = [(NSDictionary *)self->_messageSenderImportanceWeights objectForKeyedSubscript:@"speedOfResponse"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.5;
  }

  return v5;
}

@end