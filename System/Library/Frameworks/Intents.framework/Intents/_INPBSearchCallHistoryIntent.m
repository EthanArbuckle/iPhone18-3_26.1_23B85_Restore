@interface _INPBSearchCallHistoryIntent
- (BOOL)isEqual:(id)a3;
- (_INPBSearchCallHistoryIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsCallCapabilities:(id)a3;
- (int)StringAsCallType:(id)a3;
- (int)StringAsCallTypes:(id)a3;
- (int)StringAsCapabilities:(id)a3;
- (int)StringAsPreferredCallProvider:(id)a3;
- (unint64_t)hash;
- (void)addCallCapabilities:(int)a3;
- (void)addCallTypes:(int)a3;
- (void)addCapabilities:(int)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setCallType:(int)a3;
- (void)setHasPreferredCallProvider:(BOOL)a3;
- (void)setHasUnseen:(BOOL)a3;
- (void)setPreferredCallProvider:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSearchCallHistoryIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_callCapabilities.count)
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[_INPBSearchCallHistoryIntent callCapabilitiesCount](self, "callCapabilitiesCount")}];
    if ([(_INPBSearchCallHistoryIntent *)self callCapabilitiesCount])
    {
      v5 = 0;
      do
      {
        v6 = self->_callCapabilities.list[v5];
        if (v6 == 1)
        {
          v7 = @"AUDIO_CALL";
        }

        else if (v6 == 2)
        {
          v7 = @"VIDEO_CALL";
        }

        else
        {
          v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_callCapabilities.list[v5]];
        }

        [v4 addObject:v7];

        ++v5;
      }

      while (v5 < [(_INPBSearchCallHistoryIntent *)self callCapabilitiesCount]);
    }

    [v3 setObject:v4 forKeyedSubscript:@"callCapabilities"];
  }

  if ([(_INPBSearchCallHistoryIntent *)self hasCallType])
  {
    v8 = [(_INPBSearchCallHistoryIntent *)self callType];
    v9 = v8 - 2;
    if (v8 - 2) < 9 && ((0x1EFu >> v9))
    {
      v10 = off_1E72828F8[v9];
    }

    else
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v8];
    }

    [v3 setObject:v10 forKeyedSubscript:@"callType"];
  }

  if (self->_callTypes.count)
  {
    v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[_INPBSearchCallHistoryIntent callTypesCount](self, "callTypesCount")}];
    if ([(_INPBSearchCallHistoryIntent *)self callTypesCount])
    {
      v12 = 0;
      do
      {
        v13 = self->_callTypes.list[v12] - 2;
        if (v13 < 9 && ((0x1EFu >> v13) & 1) != 0)
        {
          v14 = off_1E72828F8[v13];
        }

        else
        {
          v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_callTypes.list[v12]];
        }

        [v11 addObject:v14];

        ++v12;
      }

      while (v12 < [(_INPBSearchCallHistoryIntent *)self callTypesCount]);
    }

    [v3 setObject:v11 forKeyedSubscript:@"callTypes"];
  }

  if (self->_capabilities.count)
  {
    v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[_INPBSearchCallHistoryIntent capabilitiesCount](self, "capabilitiesCount")}];
    if ([(_INPBSearchCallHistoryIntent *)self capabilitiesCount])
    {
      v16 = 0;
      do
      {
        v17 = self->_capabilities.list[v16];
        if (v17 == 1)
        {
          v18 = @"AUDIO_CALL";
        }

        else if (v17 == 2)
        {
          v18 = @"VIDEO_CALL";
        }

        else
        {
          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_capabilities.list[v16]];
        }

        [v15 addObject:v18];

        ++v16;
      }

      while (v16 < [(_INPBSearchCallHistoryIntent *)self capabilitiesCount]);
    }

    [v3 setObject:v15 forKeyedSubscript:@"capabilities"];
  }

  v19 = [(_INPBSearchCallHistoryIntent *)self dateCreated];
  v20 = [v19 dictionaryRepresentation];
  [v3 setObject:v20 forKeyedSubscript:@"dateCreated"];

  v21 = [(_INPBSearchCallHistoryIntent *)self intentMetadata];
  v22 = [v21 dictionaryRepresentation];
  [v3 setObject:v22 forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBSearchCallHistoryIntent *)self hasPreferredCallProvider])
  {
    v23 = [(_INPBSearchCallHistoryIntent *)self preferredCallProvider];
    if ((v23 - 2) >= 3)
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v23];
    }

    else
    {
      v24 = off_1E7282940[(v23 - 2)];
    }

    [v3 setObject:v24 forKeyedSubscript:@"preferredCallProvider"];
  }

  v25 = [(_INPBSearchCallHistoryIntent *)self recipient];
  v26 = [v25 dictionaryRepresentation];
  [v3 setObject:v26 forKeyedSubscript:@"recipient"];

  v27 = [(_INPBSearchCallHistoryIntent *)self targetContact];
  v28 = [v27 dictionaryRepresentation];
  [v3 setObject:v28 forKeyedSubscript:@"targetContact"];

  if ([(_INPBSearchCallHistoryIntent *)self hasUnseen])
  {
    v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBSearchCallHistoryIntent unseen](self, "unseen")}];
    [v3 setObject:v29 forKeyedSubscript:@"unseen"];
  }

  return v3;
}

- (unint64_t)hash
{
  v13 = PBRepeatedInt32Hash();
  if ([(_INPBSearchCallHistoryIntent *)self hasCallType])
  {
    v3 = 2654435761 * self->_callType;
  }

  else
  {
    v3 = 0;
  }

  v4 = PBRepeatedInt32Hash();
  v5 = PBRepeatedInt32Hash();
  v6 = [(_INPBDateTimeRange *)self->_dateCreated hash];
  v7 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  if ([(_INPBSearchCallHistoryIntent *)self hasPreferredCallProvider])
  {
    v8 = 2654435761 * self->_preferredCallProvider;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(_INPBContact *)self->_recipient hash];
  v10 = [(_INPBContact *)self->_targetContact hash];
  if ([(_INPBSearchCallHistoryIntent *)self hasUnseen])
  {
    v11 = 2654435761 * self->_unseen;
  }

  else
  {
    v11 = 0;
  }

  return v3 ^ v13 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_33;
  }

  v5 = [(_INPBSearchCallHistoryIntent *)self hasCallType];
  if (v5 != [v4 hasCallType])
  {
    goto LABEL_33;
  }

  if ([(_INPBSearchCallHistoryIntent *)self hasCallType])
  {
    if ([v4 hasCallType])
    {
      callType = self->_callType;
      if (callType != [v4 callType])
      {
        goto LABEL_33;
      }
    }
  }

  if (!PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual())
  {
    goto LABEL_33;
  }

  v7 = [(_INPBSearchCallHistoryIntent *)self dateCreated];
  v8 = [v4 dateCreated];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_32;
  }

  v9 = [(_INPBSearchCallHistoryIntent *)self dateCreated];
  if (v9)
  {
    v10 = v9;
    v11 = [(_INPBSearchCallHistoryIntent *)self dateCreated];
    v12 = [v4 dateCreated];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v7 = [(_INPBSearchCallHistoryIntent *)self intentMetadata];
  v8 = [v4 intentMetadata];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_32;
  }

  v14 = [(_INPBSearchCallHistoryIntent *)self intentMetadata];
  if (v14)
  {
    v15 = v14;
    v16 = [(_INPBSearchCallHistoryIntent *)self intentMetadata];
    v17 = [v4 intentMetadata];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v19 = [(_INPBSearchCallHistoryIntent *)self hasPreferredCallProvider];
  if (v19 != [v4 hasPreferredCallProvider])
  {
    goto LABEL_33;
  }

  if ([(_INPBSearchCallHistoryIntent *)self hasPreferredCallProvider])
  {
    if ([v4 hasPreferredCallProvider])
    {
      preferredCallProvider = self->_preferredCallProvider;
      if (preferredCallProvider != [v4 preferredCallProvider])
      {
        goto LABEL_33;
      }
    }
  }

  v7 = [(_INPBSearchCallHistoryIntent *)self recipient];
  v8 = [v4 recipient];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_32;
  }

  v21 = [(_INPBSearchCallHistoryIntent *)self recipient];
  if (v21)
  {
    v22 = v21;
    v23 = [(_INPBSearchCallHistoryIntent *)self recipient];
    v24 = [v4 recipient];
    v25 = [v23 isEqual:v24];

    if (!v25)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v7 = [(_INPBSearchCallHistoryIntent *)self targetContact];
  v8 = [v4 targetContact];
  if ((v7 != 0) == (v8 == 0))
  {
LABEL_32:

    goto LABEL_33;
  }

  v26 = [(_INPBSearchCallHistoryIntent *)self targetContact];
  if (v26)
  {
    v27 = v26;
    v28 = [(_INPBSearchCallHistoryIntent *)self targetContact];
    v29 = [v4 targetContact];
    v30 = [v28 isEqual:v29];

    if (!v30)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v33 = [(_INPBSearchCallHistoryIntent *)self hasUnseen];
  if (v33 == [v4 hasUnseen])
  {
    if (!-[_INPBSearchCallHistoryIntent hasUnseen](self, "hasUnseen") || ![v4 hasUnseen] || (unseen = self->_unseen, unseen == objc_msgSend(v4, "unseen")))
    {
      v31 = 1;
      goto LABEL_34;
    }
  }

LABEL_33:
  v31 = 0;
LABEL_34:

  return v31;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSearchCallHistoryIntent allocWithZone:](_INPBSearchCallHistoryIntent init];
  PBRepeatedInt32Copy();
  if ([(_INPBSearchCallHistoryIntent *)self hasCallType])
  {
    [(_INPBSearchCallHistoryIntent *)v5 setCallType:[(_INPBSearchCallHistoryIntent *)self callType]];
  }

  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  v6 = [(_INPBDateTimeRange *)self->_dateCreated copyWithZone:a3];
  [(_INPBSearchCallHistoryIntent *)v5 setDateCreated:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBSearchCallHistoryIntent *)v5 setIntentMetadata:v7];

  if ([(_INPBSearchCallHistoryIntent *)self hasPreferredCallProvider])
  {
    [(_INPBSearchCallHistoryIntent *)v5 setPreferredCallProvider:[(_INPBSearchCallHistoryIntent *)self preferredCallProvider]];
  }

  v8 = [(_INPBContact *)self->_recipient copyWithZone:a3];
  [(_INPBSearchCallHistoryIntent *)v5 setRecipient:v8];

  v9 = [(_INPBContact *)self->_targetContact copyWithZone:a3];
  [(_INPBSearchCallHistoryIntent *)v5 setTargetContact:v9];

  if ([(_INPBSearchCallHistoryIntent *)self hasUnseen])
  {
    [(_INPBSearchCallHistoryIntent *)v5 setUnseen:[(_INPBSearchCallHistoryIntent *)self unseen]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSearchCallHistoryIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSearchCallHistoryIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSearchCallHistoryIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)dealloc
{
  [(_INPBSearchCallHistoryIntent *)self clearCallCapabilities];
  [(_INPBSearchCallHistoryIntent *)self clearCallTypes];
  [(_INPBSearchCallHistoryIntent *)self clearCapabilities];
  v3.receiver = self;
  v3.super_class = _INPBSearchCallHistoryIntent;
  [(_INPBSearchCallHistoryIntent *)&v3 dealloc];
}

- (void)writeTo:(id)a3
{
  p_callCapabilities = &self->_callCapabilities;
  v22 = a3;
  if (self->_callCapabilities.count)
  {
    v5 = 0;
    do
    {
      v6 = p_callCapabilities->list[v5];
      PBDataWriterWriteInt32Field();
      ++v5;
    }

    while (v5 < self->_callCapabilities.count);
  }

  if ([(_INPBSearchCallHistoryIntent *)self hasCallType])
  {
    callType = self->_callType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_callTypes.count)
  {
    v8 = 0;
    do
    {
      v9 = self->_callTypes.list[v8];
      PBDataWriterWriteInt32Field();
      ++v8;
    }

    while (v8 < self->_callTypes.count);
  }

  if (self->_capabilities.count)
  {
    v10 = 0;
    do
    {
      v11 = self->_capabilities.list[v10];
      PBDataWriterWriteInt32Field();
      ++v10;
    }

    while (v10 < self->_capabilities.count);
  }

  v12 = [(_INPBSearchCallHistoryIntent *)self dateCreated];

  if (v12)
  {
    v13 = [(_INPBSearchCallHistoryIntent *)self dateCreated];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(_INPBSearchCallHistoryIntent *)self intentMetadata];

  if (v14)
  {
    v15 = [(_INPBSearchCallHistoryIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSearchCallHistoryIntent *)self hasPreferredCallProvider])
  {
    preferredCallProvider = self->_preferredCallProvider;
    PBDataWriterWriteInt32Field();
  }

  v17 = [(_INPBSearchCallHistoryIntent *)self recipient];

  if (v17)
  {
    v18 = [(_INPBSearchCallHistoryIntent *)self recipient];
    PBDataWriterWriteSubmessage();
  }

  v19 = [(_INPBSearchCallHistoryIntent *)self targetContact];

  if (v19)
  {
    v20 = [(_INPBSearchCallHistoryIntent *)self targetContact];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSearchCallHistoryIntent *)self hasUnseen])
  {
    unseen = self->_unseen;
    PBDataWriterWriteBOOLField();
  }
}

- (void)setHasUnseen:(BOOL)a3
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

- (int)StringAsCapabilities:(id)a3
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

- (void)addCapabilities:(int)a3
{
  if (a3 != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
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

- (void)setCallType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_callType = a3;
  }
}

- (int)StringAsCallCapabilities:(id)a3
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

- (void)addCallCapabilities:(int)a3
{
  if (a3 != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

@end