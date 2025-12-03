@interface ATXMailSenderImportanceWeights
- (ATXMailSenderImportanceWeights)init;
- (double)isContactChatPinnedInMessage;
- (double)isEmergencyContact;
- (double)isFavoriteContact;
- (double)isFrequentlyContacted;
- (double)isFromMailingList;
- (double)isVIP;
- (double)isiCloudFamilyMember;
- (double)mailContactHasBeencontactedToday;
- (double)speedOfResponseToMailContact;
@end

@implementation ATXMailSenderImportanceWeights

- (ATXMailSenderImportanceWeights)init
{
  v6.receiver = self;
  v6.super_class = ATXMailSenderImportanceWeights;
  v2 = [(ATXMailSenderImportanceWeights *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CEB3C0] dictionaryForResource:@"ATXMailSenderImportance" ofType:@"plist" specifiedABGroup:0];
    mailSenderImportanceWeights = v2->_mailSenderImportanceWeights;
    v2->_mailSenderImportanceWeights = v3;
  }

  return v2;
}

- (double)isiCloudFamilyMember
{
  v2 = [(NSDictionary *)self->_mailSenderImportanceWeights objectForKeyedSubscript:@"isiCloudFamilyMember"];
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
  v2 = [(NSDictionary *)self->_mailSenderImportanceWeights objectForKeyedSubscript:@"isEmergencyContact"];
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
  v2 = [(NSDictionary *)self->_mailSenderImportanceWeights objectForKeyedSubscript:@"isFavoriteContact"];
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
  v2 = [(NSDictionary *)self->_mailSenderImportanceWeights objectForKeyedSubscript:@"isVIP"];
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
  v2 = [(NSDictionary *)self->_mailSenderImportanceWeights objectForKeyedSubscript:@"isContactChatPinnedInMessage"];
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
  v2 = [(NSDictionary *)self->_mailSenderImportanceWeights objectForKeyedSubscript:@"isFrequentlyContacted"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 0.25;
  }

  return intValue;
}

- (double)mailContactHasBeencontactedToday
{
  v2 = [(NSDictionary *)self->_mailSenderImportanceWeights objectForKeyedSubscript:@"contactedToday"];
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

- (double)speedOfResponseToMailContact
{
  v2 = [(NSDictionary *)self->_mailSenderImportanceWeights objectForKeyedSubscript:@"speedOfResponse"];
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

- (double)isFromMailingList
{
  v2 = [(NSDictionary *)self->_mailSenderImportanceWeights objectForKeyedSubscript:@"isFromMailingList"];
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

@end