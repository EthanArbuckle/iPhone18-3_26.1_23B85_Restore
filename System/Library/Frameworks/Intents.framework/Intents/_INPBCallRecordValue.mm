@interface _INPBCallRecordValue
- (BOOL)isEqual:(id)a3;
- (_INPBCallRecordValue)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsCallCapability:(id)a3;
- (int)StringAsCallType:(id)a3;
- (int)StringAsPreferredCallProvider:(id)a3;
- (unint64_t)hash;
- (void)addParticipants:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setCallCapability:(int)a3;
- (void)setCallType:(int)a3;
- (void)setHasCallType:(BOOL)a3;
- (void)setHasIsCallerIdBlocked:(BOOL)a3;
- (void)setHasPreferredCallProvider:(BOOL)a3;
- (void)setHasUnseen:(BOOL)a3;
- (void)setIdentifier:(id)a3;
- (void)setParticipants:(id)a3;
- (void)setPreferredCallProvider:(int)a3;
- (void)setProviderBundleId:(id)a3;
- (void)setProviderId:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBCallRecordValue

- (id)dictionaryRepresentation
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBCallRecordValue *)self hasCallCapability])
  {
    v4 = [(_INPBCallRecordValue *)self callCapability];
    if (v4 == 1)
    {
      v5 = @"AUDIO_CALL";
    }

    else if (v4 == 2)
    {
      v5 = @"VIDEO_CALL";
    }

    else
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"callCapability"];
  }

  v6 = [(_INPBCallRecordValue *)self callMetrics];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"callMetrics"];

  if ([(_INPBCallRecordValue *)self hasCallType])
  {
    v8 = [(_INPBCallRecordValue *)self callType];
    v9 = v8 - 2;
    if (v8 - 2) < 9 && ((0x1EFu >> v9))
    {
      v10 = off_1E7284150[v9];
    }

    else
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v8];
    }

    [v3 setObject:v10 forKeyedSubscript:@"callType"];
  }

  v11 = [(_INPBCallRecordValue *)self caller];
  v12 = [v11 dictionaryRepresentation];
  [v3 setObject:v12 forKeyedSubscript:@"caller"];

  v13 = [(_INPBCallRecordValue *)self dateCreated];
  v14 = [v13 dictionaryRepresentation];
  [v3 setObject:v14 forKeyedSubscript:@"dateCreated"];

  if (self->_identifier)
  {
    v15 = [(_INPBCallRecordValue *)self identifier];
    v16 = [v15 copy];
    [v3 setObject:v16 forKeyedSubscript:@"identifier"];
  }

  if ([(_INPBCallRecordValue *)self hasIsCallerIdBlocked])
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBCallRecordValue isCallerIdBlocked](self, "isCallerIdBlocked")}];
    [v3 setObject:v17 forKeyedSubscript:@"isCallerIdBlocked"];
  }

  v18 = [(_INPBCallRecordValue *)self numberOfCalls];
  v19 = [v18 dictionaryRepresentation];
  [v3 setObject:v19 forKeyedSubscript:@"numberOfCalls"];

  if ([(NSArray *)self->_participants count])
  {
    v20 = [MEMORY[0x1E695DF70] array];
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

          v26 = [*(*(&v36 + 1) + 8 * i) dictionaryRepresentation];
          [v20 addObject:v26];
        }

        v23 = [(NSArray *)v21 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v23);
    }

    [v3 setObject:v20 forKeyedSubscript:@"participants"];
  }

  if ([(_INPBCallRecordValue *)self hasPreferredCallProvider])
  {
    v27 = [(_INPBCallRecordValue *)self preferredCallProvider];
    if ((v27 - 2) >= 3)
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v27];
    }

    else
    {
      v28 = off_1E7284198[(v27 - 2)];
    }

    [v3 setObject:v28 forKeyedSubscript:@"preferredCallProvider"];
  }

  if (self->_providerBundleId)
  {
    v29 = [(_INPBCallRecordValue *)self providerBundleId];
    v30 = [v29 copy];
    [v3 setObject:v30 forKeyedSubscript:@"providerBundleId"];
  }

  if (self->_providerId)
  {
    v31 = [(_INPBCallRecordValue *)self providerId];
    v32 = [v31 copy];
    [v3 setObject:v32 forKeyedSubscript:@"providerId"];
  }

  if ([(_INPBCallRecordValue *)self hasUnseen])
  {
    v33 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBCallRecordValue unseen](self, "unseen")}];
    [v3 setObject:v33 forKeyedSubscript:@"unseen"];
  }

  v34 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_58;
  }

  v5 = [(_INPBCallRecordValue *)self hasCallCapability];
  if (v5 != [v4 hasCallCapability])
  {
    goto LABEL_58;
  }

  if ([(_INPBCallRecordValue *)self hasCallCapability])
  {
    if ([v4 hasCallCapability])
    {
      callCapability = self->_callCapability;
      if (callCapability != [v4 callCapability])
      {
        goto LABEL_58;
      }
    }
  }

  v7 = [(_INPBCallRecordValue *)self callMetrics];
  v8 = [v4 callMetrics];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_57;
  }

  v9 = [(_INPBCallRecordValue *)self callMetrics];
  if (v9)
  {
    v10 = v9;
    v11 = [(_INPBCallRecordValue *)self callMetrics];
    v12 = [v4 callMetrics];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v14 = [(_INPBCallRecordValue *)self hasCallType];
  if (v14 != [v4 hasCallType])
  {
    goto LABEL_58;
  }

  if ([(_INPBCallRecordValue *)self hasCallType])
  {
    if ([v4 hasCallType])
    {
      callType = self->_callType;
      if (callType != [v4 callType])
      {
        goto LABEL_58;
      }
    }
  }

  v7 = [(_INPBCallRecordValue *)self caller];
  v8 = [v4 caller];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_57;
  }

  v16 = [(_INPBCallRecordValue *)self caller];
  if (v16)
  {
    v17 = v16;
    v18 = [(_INPBCallRecordValue *)self caller];
    v19 = [v4 caller];
    v20 = [v18 isEqual:v19];

    if (!v20)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v7 = [(_INPBCallRecordValue *)self dateCreated];
  v8 = [v4 dateCreated];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_57;
  }

  v21 = [(_INPBCallRecordValue *)self dateCreated];
  if (v21)
  {
    v22 = v21;
    v23 = [(_INPBCallRecordValue *)self dateCreated];
    v24 = [v4 dateCreated];
    v25 = [v23 isEqual:v24];

    if (!v25)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v7 = [(_INPBCallRecordValue *)self identifier];
  v8 = [v4 identifier];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_57;
  }

  v26 = [(_INPBCallRecordValue *)self identifier];
  if (v26)
  {
    v27 = v26;
    v28 = [(_INPBCallRecordValue *)self identifier];
    v29 = [v4 identifier];
    v30 = [v28 isEqual:v29];

    if (!v30)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v31 = [(_INPBCallRecordValue *)self hasIsCallerIdBlocked];
  if (v31 != [v4 hasIsCallerIdBlocked])
  {
    goto LABEL_58;
  }

  if ([(_INPBCallRecordValue *)self hasIsCallerIdBlocked])
  {
    if ([v4 hasIsCallerIdBlocked])
    {
      isCallerIdBlocked = self->_isCallerIdBlocked;
      if (isCallerIdBlocked != [v4 isCallerIdBlocked])
      {
        goto LABEL_58;
      }
    }
  }

  v7 = [(_INPBCallRecordValue *)self numberOfCalls];
  v8 = [v4 numberOfCalls];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_57;
  }

  v33 = [(_INPBCallRecordValue *)self numberOfCalls];
  if (v33)
  {
    v34 = v33;
    v35 = [(_INPBCallRecordValue *)self numberOfCalls];
    v36 = [v4 numberOfCalls];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v7 = [(_INPBCallRecordValue *)self participants];
  v8 = [v4 participants];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_57;
  }

  v38 = [(_INPBCallRecordValue *)self participants];
  if (v38)
  {
    v39 = v38;
    v40 = [(_INPBCallRecordValue *)self participants];
    v41 = [v4 participants];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v43 = [(_INPBCallRecordValue *)self hasPreferredCallProvider];
  if (v43 != [v4 hasPreferredCallProvider])
  {
    goto LABEL_58;
  }

  if ([(_INPBCallRecordValue *)self hasPreferredCallProvider])
  {
    if ([v4 hasPreferredCallProvider])
    {
      preferredCallProvider = self->_preferredCallProvider;
      if (preferredCallProvider != [v4 preferredCallProvider])
      {
        goto LABEL_58;
      }
    }
  }

  v7 = [(_INPBCallRecordValue *)self providerBundleId];
  v8 = [v4 providerBundleId];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_57;
  }

  v45 = [(_INPBCallRecordValue *)self providerBundleId];
  if (v45)
  {
    v46 = v45;
    v47 = [(_INPBCallRecordValue *)self providerBundleId];
    v48 = [v4 providerBundleId];
    v49 = [v47 isEqual:v48];

    if (!v49)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v7 = [(_INPBCallRecordValue *)self providerId];
  v8 = [v4 providerId];
  if ((v7 != 0) == (v8 == 0))
  {
LABEL_57:

    goto LABEL_58;
  }

  v50 = [(_INPBCallRecordValue *)self providerId];
  if (v50)
  {
    v51 = v50;
    v52 = [(_INPBCallRecordValue *)self providerId];
    v53 = [v4 providerId];
    v54 = [v52 isEqual:v53];

    if (!v54)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v57 = [(_INPBCallRecordValue *)self hasUnseen];
  if (v57 == [v4 hasUnseen])
  {
    if (!-[_INPBCallRecordValue hasUnseen](self, "hasUnseen") || ![v4 hasUnseen] || (unseen = self->_unseen, unseen == objc_msgSend(v4, "unseen")))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBCallRecordValue allocWithZone:](_INPBCallRecordValue init];
  if ([(_INPBCallRecordValue *)self hasCallCapability])
  {
    [(_INPBCallRecordValue *)v5 setCallCapability:[(_INPBCallRecordValue *)self callCapability]];
  }

  v6 = [(_INPBCallMetrics *)self->_callMetrics copyWithZone:a3];
  [(_INPBCallRecordValue *)v5 setCallMetrics:v6];

  if ([(_INPBCallRecordValue *)self hasCallType])
  {
    [(_INPBCallRecordValue *)v5 setCallType:[(_INPBCallRecordValue *)self callType]];
  }

  v7 = [(_INPBContactValue *)self->_caller copyWithZone:a3];
  [(_INPBCallRecordValue *)v5 setCaller:v7];

  v8 = [(_INPBDateTime *)self->_dateCreated copyWithZone:a3];
  [(_INPBCallRecordValue *)v5 setDateCreated:v8];

  v9 = [(NSString *)self->_identifier copyWithZone:a3];
  [(_INPBCallRecordValue *)v5 setIdentifier:v9];

  if ([(_INPBCallRecordValue *)self hasIsCallerIdBlocked])
  {
    [(_INPBCallRecordValue *)v5 setIsCallerIdBlocked:[(_INPBCallRecordValue *)self isCallerIdBlocked]];
  }

  v10 = [(_INPBInteger *)self->_numberOfCalls copyWithZone:a3];
  [(_INPBCallRecordValue *)v5 setNumberOfCalls:v10];

  v11 = [(NSArray *)self->_participants copyWithZone:a3];
  [(_INPBCallRecordValue *)v5 setParticipants:v11];

  if ([(_INPBCallRecordValue *)self hasPreferredCallProvider])
  {
    [(_INPBCallRecordValue *)v5 setPreferredCallProvider:[(_INPBCallRecordValue *)self preferredCallProvider]];
  }

  v12 = [(NSString *)self->_providerBundleId copyWithZone:a3];
  [(_INPBCallRecordValue *)v5 setProviderBundleId:v12];

  v13 = [(NSString *)self->_providerId copyWithZone:a3];
  [(_INPBCallRecordValue *)v5 setProviderId:v13];

  if ([(_INPBCallRecordValue *)self hasUnseen])
  {
    [(_INPBCallRecordValue *)v5 setUnseen:[(_INPBCallRecordValue *)self unseen]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBCallRecordValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBCallRecordValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBCallRecordValue *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_INPBCallRecordValue *)self hasCallCapability])
  {
    callCapability = self->_callCapability;
    PBDataWriterWriteInt32Field();
  }

  v6 = [(_INPBCallRecordValue *)self callMetrics];

  if (v6)
  {
    v7 = [(_INPBCallRecordValue *)self callMetrics];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBCallRecordValue *)self hasCallType])
  {
    callType = self->_callType;
    PBDataWriterWriteInt32Field();
  }

  v9 = [(_INPBCallRecordValue *)self caller];

  if (v9)
  {
    v10 = [(_INPBCallRecordValue *)self caller];
    PBDataWriterWriteSubmessage();
  }

  v11 = [(_INPBCallRecordValue *)self dateCreated];

  if (v11)
  {
    v12 = [(_INPBCallRecordValue *)self dateCreated];
    PBDataWriterWriteSubmessage();
  }

  v13 = [(_INPBCallRecordValue *)self identifier];

  if (v13)
  {
    identifier = self->_identifier;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBCallRecordValue *)self hasIsCallerIdBlocked])
  {
    isCallerIdBlocked = self->_isCallerIdBlocked;
    PBDataWriterWriteBOOLField();
  }

  v16 = [(_INPBCallRecordValue *)self numberOfCalls];

  if (v16)
  {
    v17 = [(_INPBCallRecordValue *)self numberOfCalls];
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

  v25 = [(_INPBCallRecordValue *)self providerBundleId];

  if (v25)
  {
    providerBundleId = self->_providerBundleId;
    PBDataWriterWriteStringField();
  }

  v27 = [(_INPBCallRecordValue *)self providerId];

  if (v27)
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

- (void)setHasUnseen:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setProviderId:(id)a3
{
  v4 = [a3 copy];
  providerId = self->_providerId;
  self->_providerId = v4;

  MEMORY[0x1EEE66BB8](v4, providerId);
}

- (void)setProviderBundleId:(id)a3
{
  v4 = [a3 copy];
  providerBundleId = self->_providerBundleId;
  self->_providerBundleId = v4;

  MEMORY[0x1EEE66BB8](v4, providerBundleId);
}

- (int)StringAsPreferredCallProvider:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"TELEPHONY_PROVIDER"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"FACETIME_PROVIDER"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"THIRD_PARTY_PROVIDER"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (void)setHasPreferredCallProvider:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setPreferredCallProvider:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xF7;
  }

  else
  {
    *&self->_has = has | 8;
    self->_preferredCallProvider = a3;
  }
}

- (void)addParticipants:(id)a3
{
  v4 = a3;
  participants = self->_participants;
  v8 = v4;
  if (!participants)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_participants;
    self->_participants = v6;

    v4 = v8;
    participants = self->_participants;
  }

  [(NSArray *)participants addObject:v4];
}

- (void)setParticipants:(id)a3
{
  v4 = [a3 mutableCopy];
  participants = self->_participants;
  self->_participants = v4;

  MEMORY[0x1EEE66BB8](v4, participants);
}

- (void)setHasIsCallerIdBlocked:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setIdentifier:(id)a3
{
  v4 = [a3 copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8](v4, identifier);
}

- (int)StringAsCallType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"OUTGOING"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"MISSED"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"RECEIVED"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"LATEST"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"VOICEMAIL"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"RINGING"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"IN_PROGRESS"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"ON_HOLD"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (void)setHasCallType:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setCallType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_callType = a3;
  }
}

- (int)StringAsCallCapability:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"AUDIO_CALL"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"VIDEO_CALL"])
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

- (void)setCallCapability:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_callCapability = a3;
  }
}

@end