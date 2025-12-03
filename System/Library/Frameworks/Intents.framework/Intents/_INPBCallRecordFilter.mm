@interface _INPBCallRecordFilter
- (BOOL)isEqual:(id)equal;
- (_INPBCallRecordFilter)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsCallCapability:(id)capability;
- (int)StringAsCallTypes:(id)types;
- (int)StringAsPreferredCallProvider:(id)provider;
- (unint64_t)hash;
- (void)addCallTypes:(int)types;
- (void)addParticipants:(id)participants;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setCallCapability:(int)capability;
- (void)setHasPreferredCallProvider:(BOOL)provider;
- (void)setParticipants:(id)participants;
- (void)setPreferredCallProvider:(int)provider;
- (void)writeTo:(id)to;
@end

@implementation _INPBCallRecordFilter

- (id)dictionaryRepresentation
{
  v26 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBCallRecordFilter *)self hasCallCapability])
  {
    callCapability = [(_INPBCallRecordFilter *)self callCapability];
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

  if (self->_callTypes.count)
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[_INPBCallRecordFilter callTypesCount](self, "callTypesCount")}];
    if ([(_INPBCallRecordFilter *)self callTypesCount])
    {
      v7 = 0;
      do
      {
        v8 = self->_callTypes.list[v7] - 2;
        if (v8 < 9 && ((0x1EFu >> v8) & 1) != 0)
        {
          v9 = off_1E7288480[v8];
        }

        else
        {
          v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_callTypes.list[v7]];
        }

        [v6 addObject:v9];

        ++v7;
      }

      while (v7 < [(_INPBCallRecordFilter *)self callTypesCount]);
    }

    [dictionary setObject:v6 forKeyedSubscript:@"callTypes"];
  }

  if ([(NSArray *)self->_participants count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = self->_participants;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    [dictionary setObject:array forKeyedSubscript:@"participants"];
  }

  if ([(_INPBCallRecordFilter *)self hasPreferredCallProvider])
  {
    preferredCallProvider = [(_INPBCallRecordFilter *)self preferredCallProvider];
    if ((preferredCallProvider - 2) >= 3)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", preferredCallProvider];
    }

    else
    {
      v18 = off_1E72884C8[(preferredCallProvider - 2)];
    }

    [dictionary setObject:v18 forKeyedSubscript:@"preferredCallProvider"];
  }

  v19 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBCallRecordFilter *)self hasCallCapability])
  {
    v3 = 2654435761 * self->_callCapability;
  }

  else
  {
    v3 = 0;
  }

  v4 = PBRepeatedInt32Hash();
  v5 = [(NSArray *)self->_participants hash];
  if ([(_INPBCallRecordFilter *)self hasPreferredCallProvider])
  {
    v6 = 2654435761 * self->_preferredCallProvider;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v6 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  hasCallCapability = [(_INPBCallRecordFilter *)self hasCallCapability];
  if (hasCallCapability != [equalCopy hasCallCapability])
  {
    goto LABEL_14;
  }

  if ([(_INPBCallRecordFilter *)self hasCallCapability])
  {
    if ([equalCopy hasCallCapability])
    {
      callCapability = self->_callCapability;
      if (callCapability != [equalCopy callCapability])
      {
        goto LABEL_14;
      }
    }
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_14;
  }

  participants = [(_INPBCallRecordFilter *)self participants];
  participants2 = [equalCopy participants];
  v9 = participants2;
  if ((participants != 0) != (participants2 == 0))
  {
    participants3 = [(_INPBCallRecordFilter *)self participants];
    if (participants3)
    {
      v11 = participants3;
      participants4 = [(_INPBCallRecordFilter *)self participants];
      participants5 = [equalCopy participants];
      v14 = [participants4 isEqual:participants5];

      if (!v14)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }

    hasPreferredCallProvider = [(_INPBCallRecordFilter *)self hasPreferredCallProvider];
    if (hasPreferredCallProvider == [equalCopy hasPreferredCallProvider])
    {
      if (!-[_INPBCallRecordFilter hasPreferredCallProvider](self, "hasPreferredCallProvider") || ![equalCopy hasPreferredCallProvider] || (preferredCallProvider = self->_preferredCallProvider, preferredCallProvider == objc_msgSend(equalCopy, "preferredCallProvider")))
      {
        v16 = 1;
        goto LABEL_15;
      }
    }
  }

  else
  {
  }

LABEL_14:
  v16 = 0;
LABEL_15:

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBCallRecordFilter allocWithZone:](_INPBCallRecordFilter init];
  if ([(_INPBCallRecordFilter *)self hasCallCapability])
  {
    [(_INPBCallRecordFilter *)v5 setCallCapability:[(_INPBCallRecordFilter *)self callCapability]];
  }

  PBRepeatedInt32Copy();
  v6 = [(NSArray *)self->_participants copyWithZone:zone];
  [(_INPBCallRecordFilter *)v5 setParticipants:v6];

  if ([(_INPBCallRecordFilter *)self hasPreferredCallProvider])
  {
    [(_INPBCallRecordFilter *)v5 setPreferredCallProvider:[(_INPBCallRecordFilter *)self preferredCallProvider]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBCallRecordFilter *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBCallRecordFilter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBCallRecordFilter *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)dealloc
{
  [(_INPBCallRecordFilter *)self clearCallTypes];
  v3.receiver = self;
  v3.super_class = _INPBCallRecordFilter;
  [(_INPBCallRecordFilter *)&v3 dealloc];
}

- (void)writeTo:(id)to
{
  v21 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if ([(_INPBCallRecordFilter *)self hasCallCapability])
  {
    callCapability = self->_callCapability;
    PBDataWriterWriteInt32Field();
  }

  if (self->_callTypes.count)
  {
    v6 = 0;
    do
    {
      v7 = self->_callTypes.list[v6];
      PBDataWriterWriteInt32Field();
      ++v6;
    }

    while (v6 < self->_callTypes.count);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_participants;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  if ([(_INPBCallRecordFilter *)self hasPreferredCallProvider])
  {
    preferredCallProvider = self->_preferredCallProvider;
    PBDataWriterWriteInt32Field();
  }

  v15 = *MEMORY[0x1E69E9840];
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
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setPreferredCallProvider:(int)provider
{
  has = self->_has;
  if (provider == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
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

- (int)StringAsCallTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy isEqualToString:@"OUTGOING"])
  {
    v4 = 2;
  }

  else if ([typesCopy isEqualToString:@"MISSED"])
  {
    v4 = 3;
  }

  else if ([typesCopy isEqualToString:@"RECEIVED"])
  {
    v4 = 4;
  }

  else if ([typesCopy isEqualToString:@"LATEST"])
  {
    v4 = 5;
  }

  else if ([typesCopy isEqualToString:@"VOICEMAIL"])
  {
    v4 = 7;
  }

  else if ([typesCopy isEqualToString:@"RINGING"])
  {
    v4 = 8;
  }

  else if ([typesCopy isEqualToString:@"IN_PROGRESS"])
  {
    v4 = 9;
  }

  else if ([typesCopy isEqualToString:@"ON_HOLD"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (void)addCallTypes:(int)types
{
  if (types != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
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