@interface CHRecentCall
+ (id)predicateForRecentCallsMatchingCallStatus:(unsigned int)status;
+ (id)predicateForRecentCallsMatchingRead:(BOOL)read;
- (BOOL)ph_canAssociateWithMessage:(id)message;
- (BOOL)ph_supportsLocalParticipantBadge;
- (NSSet)ph_uniqueIDs;
- (TUHandle)handle;
- (id)familyName;
- (id)fullName;
- (id)givenName;
- (id)parsedNamesStrippingEmoji;
@end

@implementation CHRecentCall

+ (id)predicateForRecentCallsMatchingCallStatus:(unsigned int)status
{
  v3 = [NSNumber numberWithUnsignedInt:*&status];
  v4 = [NSPredicate predicateWithFormat:@"(callStatus == %@)", v3];

  return v4;
}

+ (id)predicateForRecentCallsMatchingRead:(BOOL)read
{
  v3 = [NSNumber numberWithBool:read];
  v4 = [NSPredicate predicateWithFormat:@"(read == %@)", v3];

  return v4;
}

- (TUHandle)handle
{
  callerId = [(CHRecentCall *)self callerId];
  if (![callerId length])
  {
    v5 = 0;
    goto LABEL_16;
  }

  handleType = [(CHRecentCall *)self handleType];
  v5 = 0;
  if (handleType > 1)
  {
    if (handleType == 2)
    {
      v6 = [TUHandle alloc];
      v7 = 2;
    }

    else
    {
      if (handleType != 3)
      {
        goto LABEL_16;
      }

      v6 = [TUHandle alloc];
      v7 = 3;
    }
  }

  else
  {
    if (!handleType)
    {
      v8 = PHDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10007ACB4(v8);
      }

      v9 = [TUHandle handleWithDestinationID:callerId];
      goto LABEL_15;
    }

    if (handleType != 1)
    {
      goto LABEL_16;
    }

    v6 = [TUHandle alloc];
    v7 = 1;
  }

  v9 = [v6 initWithType:v7 value:callerId];
LABEL_15:
  v5 = v9;
LABEL_16:

  return v5;
}

- (BOOL)ph_supportsLocalParticipantBadge
{
  localParticipantUUID = [(CHRecentCall *)self localParticipantUUID];
  outgoingLocalParticipantUUID = [(CHRecentCall *)self outgoingLocalParticipantUUID];
  v5 = outgoingLocalParticipantUUID;
  v6 = 0;
  if (localParticipantUUID && outgoingLocalParticipantUUID)
  {
    v6 = [localParticipantUUID isEqual:outgoingLocalParticipantUUID];
  }

  return v6;
}

- (NSSet)ph_uniqueIDs
{
  v3 = +[NSMutableSet set];
  uniqueId = [(CHRecentCall *)self uniqueId];
  [v3 addObject:uniqueId];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  callOccurrences = [(CHRecentCall *)self callOccurrences];
  v6 = [callOccurrences countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    v9 = kCHCallOccurrenceUniqueIdKey;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(callOccurrences);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) objectForKeyedSubscript:v9];
        if (v11)
        {
          [v3 addObject:v11];
        }
      }

      v7 = [callOccurrences countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v3 copy];

  return v12;
}

- (BOOL)ph_canAssociateWithMessage:(id)message
{
  remoteParticipantHandles = [(CHRecentCall *)self remoteParticipantHandles];
  [remoteParticipantHandles count];

  return 0;
}

- (id)fullName
{
  name = [(CHRecentCall *)self name];
  identityExtension = [(CHRecentCall *)self identityExtension];

  if (identityExtension)
  {
    name2 = [(CHRecentCall *)self name];
    identityExtension2 = [(CHRecentCall *)self identityExtension];
    v7 = [NSString stringWithFormat:@"%@: ", identityExtension2];
    v8 = [name2 stringByReplacingOccurrencesOfString:v7 withString:&stru_1000B4840];

    name = v8;
  }

  return name;
}

- (id)givenName
{
  fullName = [(CHRecentCall *)self fullName];
  v3 = [fullName componentsSeparatedByString:@" "];

  if (v3 && [v3 count])
  {
    firstObject = [v3 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)familyName
{
  fullName = [(CHRecentCall *)self fullName];
  v3 = [fullName componentsSeparatedByString:@" "];

  if (v3 && [v3 count] >= 2)
  {
    lastObject = [v3 lastObject];
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

- (id)parsedNamesStrippingEmoji
{
  fullName = [(CHRecentCall *)self fullName];

  if (fullName)
  {
    [(CHRecentCall *)self fullName];
    v4 = CEMCreateStringByStrippingEmojiCharacters();
    v5 = +[NSCharacterSet whitespaceCharacterSet];
    v6 = [v4 stringByTrimmingCharactersInSet:v5];

    v7 = [v6 componentsSeparatedByString:@" "];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end