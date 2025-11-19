@interface CHRecentCall
+ (id)predicateForRecentCallsMatchingCallStatus:(unsigned int)a3;
+ (id)predicateForRecentCallsMatchingRead:(BOOL)a3;
- (BOOL)carrierAllowsReportVoiceCall;
- (BOOL)isComingFaceTimeCall;
- (BOOL)isFaceTime;
- (BOOL)isOneToOne;
- (BOOL)isTelephony;
- (BOOL)ph_canAssociateWithMessage:(id)a3;
- (BOOL)ph_supportsLocalParticipantBadge;
- (NSSet)ph_uniqueIDs;
- (TUHandle)handle;
- (id)familyName;
- (id)fullName;
- (id)givenName;
- (id)parsedNamesStrippingEmoji;
@end

@implementation CHRecentCall

+ (id)predicateForRecentCallsMatchingCallStatus:(unsigned int)a3
{
  v3 = [NSNumber numberWithUnsignedInt:*&a3];
  v4 = [NSPredicate predicateWithFormat:@"(callStatus == %@)", v3];

  return v4;
}

+ (id)predicateForRecentCallsMatchingRead:(BOOL)a3
{
  v3 = [NSNumber numberWithBool:a3];
  v4 = [NSPredicate predicateWithFormat:@"(read == %@)", v3];

  return v4;
}

- (TUHandle)handle
{
  v3 = [(CHRecentCall *)self callerId];
  if (![v3 length])
  {
    v5 = 0;
    goto LABEL_16;
  }

  v4 = [(CHRecentCall *)self handleType];
  v5 = 0;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v6 = [TUHandle alloc];
      v7 = 2;
    }

    else
    {
      if (v4 != 3)
      {
        goto LABEL_16;
      }

      v6 = [TUHandle alloc];
      v7 = 3;
    }
  }

  else
  {
    if (!v4)
    {
      v8 = PHDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(CHRecentCall(PhoneKit) *)v8 handle];
      }

      v9 = [TUHandle handleWithDestinationID:v3];
      goto LABEL_15;
    }

    if (v4 != 1)
    {
      goto LABEL_16;
    }

    v6 = [TUHandle alloc];
    v7 = 1;
  }

  v9 = [v6 initWithType:v7 value:v3];
LABEL_15:
  v5 = v9;
LABEL_16:

  return v5;
}

- (BOOL)ph_supportsLocalParticipantBadge
{
  v3 = [(CHRecentCall *)self localParticipantUUID];
  v4 = [(CHRecentCall *)self outgoingLocalParticipantUUID];
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v6 = [v3 isEqual:v4];
  }

  return v6;
}

- (NSSet)ph_uniqueIDs
{
  v3 = +[NSMutableSet set];
  v4 = [(CHRecentCall *)self uniqueId];
  [v3 addObject:v4];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(CHRecentCall *)self callOccurrences];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) objectForKeyedSubscript:v9];
        if (v11)
        {
          [v3 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v3 copy];

  return v12;
}

- (BOOL)ph_canAssociateWithMessage:(id)a3
{
  v4 = a3;
  v5 = [(CHRecentCall *)self remoteParticipantHandles];
  if ([v5 count] == 1)
  {
    v6 = [v5 anyObject];
    v7 = [v6 value];
    v8 = [TUHandle normalizedHandleWithDestinationID:v7];

    v9 = [v4 senderDestinationID];
    v10 = [TUHandle normalizedHandleWithDestinationID:v9];

    v11 = [v10 isEquivalentToHandle:v8];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)fullName
{
  v3 = [(CHRecentCall *)self name];
  v4 = [(CHRecentCall *)self identityExtension];

  if (v4)
  {
    v5 = [(CHRecentCall *)self name];
    v6 = [(CHRecentCall *)self identityExtension];
    v7 = [NSString stringWithFormat:@"%@: ", v6];
    v8 = [v5 stringByReplacingOccurrencesOfString:v7 withString:&stru_10028F310];

    v3 = v8;
  }

  return v3;
}

- (id)givenName
{
  v2 = [(CHRecentCall *)self fullName];
  v3 = [v2 componentsSeparatedByString:@" "];

  if (v3 && [v3 count])
  {
    v4 = [v3 firstObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)familyName
{
  v2 = [(CHRecentCall *)self fullName];
  v3 = [v2 componentsSeparatedByString:@" "];

  if (v3 && [v3 count] >= 2)
  {
    v4 = [v3 lastObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)parsedNamesStrippingEmoji
{
  v3 = [(CHRecentCall *)self fullName];

  if (v3)
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

- (BOOL)isTelephony
{
  v2 = self;
  v3 = CHRecentCall.isTelephony.getter();

  return v3 & 1;
}

- (BOOL)isFaceTime
{
  v2 = self;
  v3 = CHRecentCall.isFaceTime.getter();

  return v3 & 1;
}

- (BOOL)isOneToOne
{
  v2 = self;
  v3 = CHRecentCall.isOneToOne.getter();

  return v3 & 1;
}

- (BOOL)carrierAllowsReportVoiceCall
{
  type metadata accessor for VoiceSpamReportTelephonyManager();
  v3 = self;
  static VoiceSpamReportTelephonyManager.shared.getter();
  type metadata accessor for CarrierVoiceSpamReportHelper();
  swift_allocObject();
  CarrierVoiceSpamReportHelper.init(voiceSpamReportTelephonyManager:)();
  v7[3] = type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHRecentCall);
  v7[4] = &protocol witness table for CHRecentCall;
  v7[0] = v3;
  v4 = v3;
  v5 = dispatch thunk of CarrierVoiceSpamReportHelper.carrierAllowsReportVoiceCall(for:)();

  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5 & 1;
}

- (BOOL)isComingFaceTimeCall
{
  v2 = self;
  if ([(CHRecentCall *)v2 isIncoming])
  {
    v3 = [(CHRecentCall *)v2 isFaceTime];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end