@interface _INPBCallRecordFilter
- (BOOL)isEqual:(id)a3;
- (_INPBCallRecordFilter)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsCallCapability:(id)a3;
- (int)StringAsCallTypes:(id)a3;
- (int)StringAsPreferredCallProvider:(id)a3;
- (unint64_t)hash;
- (void)addCallTypes:(int)a3;
- (void)addParticipants:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setCallCapability:(int)a3;
- (void)setHasPreferredCallProvider:(BOOL)a3;
- (void)setParticipants:(id)a3;
- (void)setPreferredCallProvider:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBCallRecordFilter

- (id)dictionaryRepresentation
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBCallRecordFilter *)self hasCallCapability])
  {
    v4 = [(_INPBCallRecordFilter *)self callCapability];
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

    [v3 setObject:v6 forKeyedSubscript:@"callTypes"];
  }

  if ([(NSArray *)self->_participants count])
  {
    v10 = [MEMORY[0x1E695DF70] array];
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

          v16 = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:v16];
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKeyedSubscript:@"participants"];
  }

  if ([(_INPBCallRecordFilter *)self hasPreferredCallProvider])
  {
    v17 = [(_INPBCallRecordFilter *)self preferredCallProvider];
    if ((v17 - 2) >= 3)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v17];
    }

    else
    {
      v18 = off_1E72884C8[(v17 - 2)];
    }

    [v3 setObject:v18 forKeyedSubscript:@"preferredCallProvider"];
  }

  v19 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = [(_INPBCallRecordFilter *)self hasCallCapability];
  if (v5 != [v4 hasCallCapability])
  {
    goto LABEL_14;
  }

  if ([(_INPBCallRecordFilter *)self hasCallCapability])
  {
    if ([v4 hasCallCapability])
    {
      callCapability = self->_callCapability;
      if (callCapability != [v4 callCapability])
      {
        goto LABEL_14;
      }
    }
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_14;
  }

  v7 = [(_INPBCallRecordFilter *)self participants];
  v8 = [v4 participants];
  v9 = v8;
  if ((v7 != 0) != (v8 == 0))
  {
    v10 = [(_INPBCallRecordFilter *)self participants];
    if (v10)
    {
      v11 = v10;
      v12 = [(_INPBCallRecordFilter *)self participants];
      v13 = [v4 participants];
      v14 = [v12 isEqual:v13];

      if (!v14)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }

    v15 = [(_INPBCallRecordFilter *)self hasPreferredCallProvider];
    if (v15 == [v4 hasPreferredCallProvider])
    {
      if (!-[_INPBCallRecordFilter hasPreferredCallProvider](self, "hasPreferredCallProvider") || ![v4 hasPreferredCallProvider] || (preferredCallProvider = self->_preferredCallProvider, preferredCallProvider == objc_msgSend(v4, "preferredCallProvider")))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBCallRecordFilter allocWithZone:](_INPBCallRecordFilter init];
  if ([(_INPBCallRecordFilter *)self hasCallCapability])
  {
    [(_INPBCallRecordFilter *)v5 setCallCapability:[(_INPBCallRecordFilter *)self callCapability]];
  }

  PBRepeatedInt32Copy();
  v6 = [(NSArray *)self->_participants copyWithZone:a3];
  [(_INPBCallRecordFilter *)v5 setParticipants:v6];

  if ([(_INPBCallRecordFilter *)self hasPreferredCallProvider])
  {
    [(_INPBCallRecordFilter *)v5 setPreferredCallProvider:[(_INPBCallRecordFilter *)self preferredCallProvider]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBCallRecordFilter *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBCallRecordFilter)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBCallRecordFilter *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)dealloc
{
  [(_INPBCallRecordFilter *)self clearCallTypes];
  v3.receiver = self;
  v3.super_class = _INPBCallRecordFilter;
  [(_INPBCallRecordFilter *)&v3 dealloc];
}

- (void)writeTo:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setPreferredCallProvider:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
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

- (int)StringAsCallTypes:(id)a3
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

- (void)addCallTypes:(int)a3
{
  if (a3 != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
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