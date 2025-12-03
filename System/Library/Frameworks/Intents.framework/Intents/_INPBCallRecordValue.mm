@interface _INPBCallRecordValue
- (BOOL)isEqual:(id)equal;
- (_INPBCallRecordValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsCallCapability:(id)capability;
- (int)StringAsCallType:(id)type;
- (int)StringAsPreferredCallProvider:(id)provider;
- (unint64_t)hash;
- (void)addParticipants:(id)participants;
- (void)encodeWithCoder:(id)coder;
- (void)setCallCapability:(int)capability;
- (void)setCallType:(int)type;
- (void)setHasCallType:(BOOL)type;
- (void)setHasIsCallerIdBlocked:(BOOL)blocked;
- (void)setHasPreferredCallProvider:(BOOL)provider;
- (void)setHasUnseen:(BOOL)unseen;
- (void)setIdentifier:(id)identifier;
- (void)setParticipants:(id)participants;
- (void)setPreferredCallProvider:(int)provider;
- (void)setProviderBundleId:(id)id;
- (void)setProviderId:(id)id;
- (void)writeTo:(id)to;
@end

@implementation _INPBCallRecordValue

- (id)dictionaryRepresentation
{
  v41 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBCallRecordValue *)self hasCallCapability])
  {
    callCapability = [(_INPBCallRecordValue *)self callCapability];
    if (callCapability == 1)
    {
      v5 = @"AUDIO_CALL";
    }

    else if (callCapability == 2)
    {
      v5 = @"VIDEO_CALL";
    }

    else
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", callCapability];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"callCapability"];
  }

  callMetrics = [(_INPBCallRecordValue *)self callMetrics];
  dictionaryRepresentation = [callMetrics dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"callMetrics"];

  if ([(_INPBCallRecordValue *)self hasCallType])
  {
    callType = [(_INPBCallRecordValue *)self callType];
    v9 = callType - 2;
    if (callType - 2) < 9 && ((0x1EFu >> v9))
    {
      v10 = off_1E7284150[v9];
    }

    else
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", callType];
    }

    [dictionary setObject:v10 forKeyedSubscript:@"callType"];
  }

  caller = [(_INPBCallRecordValue *)self caller];
  dictionaryRepresentation2 = [caller dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"caller"];

  dateCreated = [(_INPBCallRecordValue *)self dateCreated];
  dictionaryRepresentation3 = [dateCreated dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"dateCreated"];

  if (self->_identifier)
  {
    identifier = [(_INPBCallRecordValue *)self identifier];
    v16 = [identifier copy];
    [dictionary setObject:v16 forKeyedSubscript:@"identifier"];
  }

  if ([(_INPBCallRecordValue *)self hasIsCallerIdBlocked])
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBCallRecordValue isCallerIdBlocked](self, "isCallerIdBlocked")}];
    [dictionary setObject:v17 forKeyedSubscript:@"isCallerIdBlocked"];
  }

  numberOfCalls = [(_INPBCallRecordValue *)self numberOfCalls];
  dictionaryRepresentation4 = [numberOfCalls dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"numberOfCalls"];

  if ([(NSArray *)self->_participants count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v21 = self->_participants;
    v22 = [(NSArray *)v21 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v37;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v37 != v24)
          {
            objc_enumerationMutation(v21);
          }

          dictionaryRepresentation5 = [*(*(&v36 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation5];
        }

        v23 = [(NSArray *)v21 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v23);
    }

    [dictionary setObject:array forKeyedSubscript:@"participants"];
  }

  if ([(_INPBCallRecordValue *)self hasPreferredCallProvider])
  {
    preferredCallProvider = [(_INPBCallRecordValue *)self preferredCallProvider];
    if ((preferredCallProvider - 2) >= 3)
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", preferredCallProvider];
    }

    else
    {
      v28 = off_1E7284198[(preferredCallProvider - 2)];
    }

    [dictionary setObject:v28 forKeyedSubscript:@"preferredCallProvider"];
  }

  if (self->_providerBundleId)
  {
    providerBundleId = [(_INPBCallRecordValue *)self providerBundleId];
    v30 = [providerBundleId copy];
    [dictionary setObject:v30 forKeyedSubscript:@"providerBundleId"];
  }

  if (self->_providerId)
  {
    providerId = [(_INPBCallRecordValue *)self providerId];
    v32 = [providerId copy];
    [dictionary setObject:v32 forKeyedSubscript:@"providerId"];
  }

  if ([(_INPBCallRecordValue *)self hasUnseen])
  {
    v33 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBCallRecordValue unseen](self, "unseen")}];
    [dictionary setObject:v33 forKeyedSubscript:@"unseen"];
  }

  v34 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBCallRecordValue *)self hasCallCapability])
  {
    v16 = 2654435761 * self->_callCapability;
  }

  else
  {
    v16 = 0;
  }

  v15 = [(_INPBCallMetrics *)self->_callMetrics hash];
  if ([(_INPBCallRecordValue *)self hasCallType])
  {
    v14 = 2654435761 * self->_callType;
  }

  else
  {
    v14 = 0;
  }

  v13 = [(_INPBContactValue *)self->_caller hash];
  v3 = [(_INPBDateTime *)self->_dateCreated hash];
  v4 = [(NSString *)self->_identifier hash];
  if ([(_INPBCallRecordValue *)self hasIsCallerIdBlocked])
  {
    v5 = 2654435761 * self->_isCallerIdBlocked;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(_INPBInteger *)self->_numberOfCalls hash];
  v7 = [(NSArray *)self->_participants hash];
  if ([(_INPBCallRecordValue *)self hasPreferredCallProvider])
  {
    v8 = 2654435761 * self->_preferredCallProvider;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(NSString *)self->_providerBundleId hash];
  v10 = [(NSString *)self->_providerId hash];
  if ([(_INPBCallRecordValue *)self hasUnseen])
  {
    v11 = 2654435761 * self->_unseen;
  }

  else
  {
    v11 = 0;
  }

  return v15 ^ v16 ^ v14 ^ v13 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_58;
  }

  hasCallCapability = [(_INPBCallRecordValue *)self hasCallCapability];
  if (hasCallCapability != [equalCopy hasCallCapability])
  {
    goto LABEL_58;
  }

  if ([(_INPBCallRecordValue *)self hasCallCapability])
  {
    if ([equalCopy hasCallCapability])
    {
      callCapability = self->_callCapability;
      if (callCapability != [equalCopy callCapability])
      {
        goto LABEL_58;
      }
    }
  }

  callMetrics = [(_INPBCallRecordValue *)self callMetrics];
  callMetrics2 = [equalCopy callMetrics];
  if ((callMetrics != 0) == (callMetrics2 == 0))
  {
    goto LABEL_57;
  }

  callMetrics3 = [(_INPBCallRecordValue *)self callMetrics];
  if (callMetrics3)
  {
    v10 = callMetrics3;
    callMetrics4 = [(_INPBCallRecordValue *)self callMetrics];
    callMetrics5 = [equalCopy callMetrics];
    v13 = [callMetrics4 isEqual:callMetrics5];

    if (!v13)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  hasCallType = [(_INPBCallRecordValue *)self hasCallType];
  if (hasCallType != [equalCopy hasCallType])
  {
    goto LABEL_58;
  }

  if ([(_INPBCallRecordValue *)self hasCallType])
  {
    if ([equalCopy hasCallType])
    {
      callType = self->_callType;
      if (callType != [equalCopy callType])
      {
        goto LABEL_58;
      }
    }
  }

  callMetrics = [(_INPBCallRecordValue *)self caller];
  callMetrics2 = [equalCopy caller];
  if ((callMetrics != 0) == (callMetrics2 == 0))
  {
    goto LABEL_57;
  }

  caller = [(_INPBCallRecordValue *)self caller];
  if (caller)
  {
    v17 = caller;
    caller2 = [(_INPBCallRecordValue *)self caller];
    caller3 = [equalCopy caller];
    v20 = [caller2 isEqual:caller3];

    if (!v20)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  callMetrics = [(_INPBCallRecordValue *)self dateCreated];
  callMetrics2 = [equalCopy dateCreated];
  if ((callMetrics != 0) == (callMetrics2 == 0))
  {
    goto LABEL_57;
  }

  dateCreated = [(_INPBCallRecordValue *)self dateCreated];
  if (dateCreated)
  {
    v22 = dateCreated;
    dateCreated2 = [(_INPBCallRecordValue *)self dateCreated];
    dateCreated3 = [equalCopy dateCreated];
    v25 = [dateCreated2 isEqual:dateCreated3];

    if (!v25)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  callMetrics = [(_INPBCallRecordValue *)self identifier];
  callMetrics2 = [equalCopy identifier];
  if ((callMetrics != 0) == (callMetrics2 == 0))
  {
    goto LABEL_57;
  }

  identifier = [(_INPBCallRecordValue *)self identifier];
  if (identifier)
  {
    v27 = identifier;
    identifier2 = [(_INPBCallRecordValue *)self identifier];
    identifier3 = [equalCopy identifier];
    v30 = [identifier2 isEqual:identifier3];

    if (!v30)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  hasIsCallerIdBlocked = [(_INPBCallRecordValue *)self hasIsCallerIdBlocked];
  if (hasIsCallerIdBlocked != [equalCopy hasIsCallerIdBlocked])
  {
    goto LABEL_58;
  }

  if ([(_INPBCallRecordValue *)self hasIsCallerIdBlocked])
  {
    if ([equalCopy hasIsCallerIdBlocked])
    {
      isCallerIdBlocked = self->_isCallerIdBlocked;
      if (isCallerIdBlocked != [equalCopy isCallerIdBlocked])
      {
        goto LABEL_58;
      }
    }
  }

  callMetrics = [(_INPBCallRecordValue *)self numberOfCalls];
  callMetrics2 = [equalCopy numberOfCalls];
  if ((callMetrics != 0) == (callMetrics2 == 0))
  {
    goto LABEL_57;
  }

  numberOfCalls = [(_INPBCallRecordValue *)self numberOfCalls];
  if (numberOfCalls)
  {
    v34 = numberOfCalls;
    numberOfCalls2 = [(_INPBCallRecordValue *)self numberOfCalls];
    numberOfCalls3 = [equalCopy numberOfCalls];
    v37 = [numberOfCalls2 isEqual:numberOfCalls3];

    if (!v37)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  callMetrics = [(_INPBCallRecordValue *)self participants];
  callMetrics2 = [equalCopy participants];
  if ((callMetrics != 0) == (callMetrics2 == 0))
  {
    goto LABEL_57;
  }

  participants = [(_INPBCallRecordValue *)self participants];
  if (participants)
  {
    v39 = participants;
    participants2 = [(_INPBCallRecordValue *)self participants];
    participants3 = [equalCopy participants];
    v42 = [participants2 isEqual:participants3];

    if (!v42)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  hasPreferredCallProvider = [(_INPBCallRecordValue *)self hasPreferredCallProvider];
  if (hasPreferredCallProvider != [equalCopy hasPreferredCallProvider])
  {
    goto LABEL_58;
  }

  if ([(_INPBCallRecordValue *)self hasPreferredCallProvider])
  {
    if ([equalCopy hasPreferredCallProvider])
    {
      preferredCallProvider = self->_preferredCallProvider;
      if (preferredCallProvider != [equalCopy preferredCallProvider])
      {
        goto LABEL_58;
      }
    }
  }

  callMetrics = [(_INPBCallRecordValue *)self providerBundleId];
  callMetrics2 = [equalCopy providerBundleId];
  if ((callMetrics != 0) == (callMetrics2 == 0))
  {
    goto LABEL_57;
  }

  providerBundleId = [(_INPBCallRecordValue *)self providerBundleId];
  if (providerBundleId)
  {
    v46 = providerBundleId;
    providerBundleId2 = [(_INPBCallRecordValue *)self providerBundleId];
    providerBundleId3 = [equalCopy providerBundleId];
    v49 = [providerBundleId2 isEqual:providerBundleId3];

    if (!v49)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  callMetrics = [(_INPBCallRecordValue *)self providerId];
  callMetrics2 = [equalCopy providerId];
  if ((callMetrics != 0) == (callMetrics2 == 0))
  {
LABEL_57:

    goto LABEL_58;
  }

  providerId = [(_INPBCallRecordValue *)self providerId];
  if (providerId)
  {
    v51 = providerId;
    providerId2 = [(_INPBCallRecordValue *)self providerId];
    providerId3 = [equalCopy providerId];
    v54 = [providerId2 isEqual:providerId3];

    if (!v54)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  hasUnseen = [(_INPBCallRecordValue *)self hasUnseen];
  if (hasUnseen == [equalCopy hasUnseen])
  {
    if (!-[_INPBCallRecordValue hasUnseen](self, "hasUnseen") || ![equalCopy hasUnseen] || (unseen = self->_unseen, unseen == objc_msgSend(equalCopy, "unseen")))
    {
      v55 = 1;
      goto LABEL_59;
    }
  }

LABEL_58:
  v55 = 0;
LABEL_59:

  return v55;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBCallRecordValue allocWithZone:](_INPBCallRecordValue init];
  if ([(_INPBCallRecordValue *)self hasCallCapability])
  {
    [(_INPBCallRecordValue *)v5 setCallCapability:[(_INPBCallRecordValue *)self callCapability]];
  }

  v6 = [(_INPBCallMetrics *)self->_callMetrics copyWithZone:zone];
  [(_INPBCallRecordValue *)v5 setCallMetrics:v6];

  if ([(_INPBCallRecordValue *)self hasCallType])
  {
    [(_INPBCallRecordValue *)v5 setCallType:[(_INPBCallRecordValue *)self callType]];
  }

  v7 = [(_INPBContactValue *)self->_caller copyWithZone:zone];
  [(_INPBCallRecordValue *)v5 setCaller:v7];

  v8 = [(_INPBDateTime *)self->_dateCreated copyWithZone:zone];
  [(_INPBCallRecordValue *)v5 setDateCreated:v8];

  v9 = [(NSString *)self->_identifier copyWithZone:zone];
  [(_INPBCallRecordValue *)v5 setIdentifier:v9];

  if ([(_INPBCallRecordValue *)self hasIsCallerIdBlocked])
  {
    [(_INPBCallRecordValue *)v5 setIsCallerIdBlocked:[(_INPBCallRecordValue *)self isCallerIdBlocked]];
  }

  v10 = [(_INPBInteger *)self->_numberOfCalls copyWithZone:zone];
  [(_INPBCallRecordValue *)v5 setNumberOfCalls:v10];

  v11 = [(NSArray *)self->_participants copyWithZone:zone];
  [(_INPBCallRecordValue *)v5 setParticipants:v11];

  if ([(_INPBCallRecordValue *)self hasPreferredCallProvider])
  {
    [(_INPBCallRecordValue *)v5 setPreferredCallProvider:[(_INPBCallRecordValue *)self preferredCallProvider]];
  }

  v12 = [(NSString *)self->_providerBundleId copyWithZone:zone];
  [(_INPBCallRecordValue *)v5 setProviderBundleId:v12];

  v13 = [(NSString *)self->_providerId copyWithZone:zone];
  [(_INPBCallRecordValue *)v5 setProviderId:v13];

  if ([(_INPBCallRecordValue *)self hasUnseen])
  {
    [(_INPBCallRecordValue *)v5 setUnseen:[(_INPBCallRecordValue *)self unseen]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBCallRecordValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBCallRecordValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBCallRecordValue *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v36 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if ([(_INPBCallRecordValue *)self hasCallCapability])
  {
    callCapability = self->_callCapability;
    PBDataWriterWriteInt32Field();
  }

  callMetrics = [(_INPBCallRecordValue *)self callMetrics];

  if (callMetrics)
  {
    callMetrics2 = [(_INPBCallRecordValue *)self callMetrics];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBCallRecordValue *)self hasCallType])
  {
    callType = self->_callType;
    PBDataWriterWriteInt32Field();
  }

  caller = [(_INPBCallRecordValue *)self caller];

  if (caller)
  {
    caller2 = [(_INPBCallRecordValue *)self caller];
    PBDataWriterWriteSubmessage();
  }

  dateCreated = [(_INPBCallRecordValue *)self dateCreated];

  if (dateCreated)
  {
    dateCreated2 = [(_INPBCallRecordValue *)self dateCreated];
    PBDataWriterWriteSubmessage();
  }

  identifier = [(_INPBCallRecordValue *)self identifier];

  if (identifier)
  {
    identifier = self->_identifier;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBCallRecordValue *)self hasIsCallerIdBlocked])
  {
    isCallerIdBlocked = self->_isCallerIdBlocked;
    PBDataWriterWriteBOOLField();
  }

  numberOfCalls = [(_INPBCallRecordValue *)self numberOfCalls];

  if (numberOfCalls)
  {
    numberOfCalls2 = [(_INPBCallRecordValue *)self numberOfCalls];
    PBDataWriterWriteSubmessage();
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v18 = self->_participants;
  v19 = [(NSArray *)v18 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v32;
    do
    {
      v22 = 0;
      do
      {
        if (*v32 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v31 + 1) + 8 * v22);
        PBDataWriterWriteSubmessage();
        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSArray *)v18 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v20);
  }

  if ([(_INPBCallRecordValue *)self hasPreferredCallProvider])
  {
    preferredCallProvider = self->_preferredCallProvider;
    PBDataWriterWriteInt32Field();
  }

  providerBundleId = [(_INPBCallRecordValue *)self providerBundleId];

  if (providerBundleId)
  {
    providerBundleId = self->_providerBundleId;
    PBDataWriterWriteStringField();
  }

  providerId = [(_INPBCallRecordValue *)self providerId];

  if (providerId)
  {
    providerId = self->_providerId;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBCallRecordValue *)self hasUnseen])
  {
    unseen = self->_unseen;
    PBDataWriterWriteBOOLField();
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)setHasUnseen:(BOOL)unseen
{
  if (unseen)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setProviderId:(id)id
{
  v4 = [id copy];
  providerId = self->_providerId;
  self->_providerId = v4;

  MEMORY[0x1EEE66BB8](v4, providerId);
}

- (void)setProviderBundleId:(id)id
{
  v4 = [id copy];
  providerBundleId = self->_providerBundleId;
  self->_providerBundleId = v4;

  MEMORY[0x1EEE66BB8](v4, providerBundleId);
}

- (int)StringAsPreferredCallProvider:(id)provider
{
  providerCopy = provider;
  if ([providerCopy isEqualToString:@"TELEPHONY_PROVIDER"])
  {
    v4 = 2;
  }

  else if ([providerCopy isEqualToString:@"FACETIME_PROVIDER"])
  {
    v4 = 3;
  }

  else if ([providerCopy isEqualToString:@"THIRD_PARTY_PROVIDER"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (void)setHasPreferredCallProvider:(BOOL)provider
{
  if (provider)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setPreferredCallProvider:(int)provider
{
  has = self->_has;
  if (provider == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xF7;
  }

  else
  {
    *&self->_has = has | 8;
    self->_preferredCallProvider = provider;
  }
}

- (void)addParticipants:(id)participants
{
  participantsCopy = participants;
  participants = self->_participants;
  v8 = participantsCopy;
  if (!participants)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_participants;
    self->_participants = array;

    participantsCopy = v8;
    participants = self->_participants;
  }

  [(NSArray *)participants addObject:participantsCopy];
}

- (void)setParticipants:(id)participants
{
  v4 = [participants mutableCopy];
  participants = self->_participants;
  self->_participants = v4;

  MEMORY[0x1EEE66BB8](v4, participants);
}

- (void)setHasIsCallerIdBlocked:(BOOL)blocked
{
  if (blocked)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setIdentifier:(id)identifier
{
  v4 = [identifier copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8](v4, identifier);
}

- (int)StringAsCallType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"OUTGOING"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"MISSED"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"RECEIVED"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"LATEST"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"VOICEMAIL"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"RINGING"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"IN_PROGRESS"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"ON_HOLD"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (void)setHasCallType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setCallType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_callType = type;
  }
}

- (int)StringAsCallCapability:(id)capability
{
  capabilityCopy = capability;
  v4 = 1;
  if (([capabilityCopy isEqualToString:@"AUDIO_CALL"] & 1) == 0)
  {
    if ([capabilityCopy isEqualToString:@"VIDEO_CALL"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)setCallCapability:(int)capability
{
  has = self->_has;
  if (capability == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_callCapability = capability;
  }
}

@end