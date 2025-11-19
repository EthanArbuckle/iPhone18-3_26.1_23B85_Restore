@interface _INPBStartAudioCallIntent
- (BOOL)isEqual:(id)a3;
- (_INPBStartAudioCallIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsAudioRoute:(id)a3;
- (int)StringAsDestinationType:(id)a3;
- (int)StringAsPreferredCallProvider:(id)a3;
- (int)StringAsRecordTypeForRedialing:(id)a3;
- (int)StringAsTTYType:(id)a3;
- (unint64_t)hash;
- (void)addContact:(id)a3;
- (void)addTargetContacts:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAudioRoute:(int)a3;
- (void)setContacts:(id)a3;
- (void)setDestinationType:(int)a3;
- (void)setHasDestinationType:(BOOL)a3;
- (void)setHasPreferredCallProvider:(BOOL)a3;
- (void)setHasRecordTypeForRedialing:(BOOL)a3;
- (void)setHasTtyType:(BOOL)a3;
- (void)setPreferredCallProvider:(int)a3;
- (void)setRecordTypeForRedialing:(int)a3;
- (void)setTargetContacts:(id)a3;
- (void)setTtyType:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBStartAudioCallIntent

- (id)dictionaryRepresentation
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBStartAudioCallIntent *)self hasAudioRoute])
  {
    v4 = [(_INPBStartAudioCallIntent *)self audioRoute];
    if ((v4 - 2) >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = off_1E7283470[(v4 - 2)];
    }

    [v3 setObject:v5 forKeyedSubscript:@"audioRoute"];
  }

  v6 = [(_INPBStartAudioCallIntent *)self callRequestMetadata];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"callRequestMetadata"];

  if ([(NSArray *)self->_contacts count])
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v9 = self->_contacts;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v40;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v40 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v39 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKeyedSubscript:@"contact"];
  }

  if ([(_INPBStartAudioCallIntent *)self hasDestinationType])
  {
    v15 = [(_INPBStartAudioCallIntent *)self destinationType];
    if ((v15 - 1) >= 5)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v15];
    }

    else
    {
      v16 = off_1E7283488[(v15 - 1)];
    }

    [v3 setObject:v16 forKeyedSubscript:@"destinationType"];
  }

  v17 = [(_INPBStartAudioCallIntent *)self intentMetadata];
  v18 = [v17 dictionaryRepresentation];
  [v3 setObject:v18 forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBStartAudioCallIntent *)self hasPreferredCallProvider])
  {
    v19 = [(_INPBStartAudioCallIntent *)self preferredCallProvider];
    if ((v19 - 2) >= 3)
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v19];
    }

    else
    {
      v20 = off_1E72834B0[(v19 - 2)];
    }

    [v3 setObject:v20 forKeyedSubscript:@"preferredCallProvider"];
  }

  if ([(_INPBStartAudioCallIntent *)self hasRecordTypeForRedialing])
  {
    v21 = [(_INPBStartAudioCallIntent *)self recordTypeForRedialing];
    v22 = v21 - 2;
    if (v21 - 2) < 9 && ((0x1EFu >> v22))
    {
      v23 = off_1E72834C8[v22];
    }

    else
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v21];
    }

    [v3 setObject:v23 forKeyedSubscript:@"recordTypeForRedialing"];
  }

  if ([(NSArray *)self->_targetContacts count])
  {
    v24 = [MEMORY[0x1E695DF70] array];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v25 = self->_targetContacts;
    v26 = [(NSArray *)v25 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v36;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v36 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = [*(*(&v35 + 1) + 8 * j) dictionaryRepresentation];
          [v24 addObject:v30];
        }

        v27 = [(NSArray *)v25 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v27);
    }

    [v3 setObject:v24 forKeyedSubscript:@"targetContacts"];
  }

  if ([(_INPBStartAudioCallIntent *)self hasTtyType])
  {
    v31 = [(_INPBStartAudioCallIntent *)self ttyType];
    if (v31 >= 3)
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v31];
    }

    else
    {
      v32 = off_1E7283510[v31];
    }

    [v3 setObject:v32 forKeyedSubscript:@"ttyType"];
  }

  v33 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBStartAudioCallIntent *)self hasAudioRoute])
  {
    v3 = 2654435761 * self->_audioRoute;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(_INPBStartCallRequestMetadata *)self->_callRequestMetadata hash];
  v5 = [(NSArray *)self->_contacts hash];
  if ([(_INPBStartAudioCallIntent *)self hasDestinationType])
  {
    v6 = 2654435761 * self->_destinationType;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  if ([(_INPBStartAudioCallIntent *)self hasPreferredCallProvider])
  {
    v8 = 2654435761 * self->_preferredCallProvider;
  }

  else
  {
    v8 = 0;
  }

  if ([(_INPBStartAudioCallIntent *)self hasRecordTypeForRedialing])
  {
    v9 = 2654435761 * self->_recordTypeForRedialing;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(NSArray *)self->_targetContacts hash];
  if ([(_INPBStartAudioCallIntent *)self hasTtyType])
  {
    v11 = 2654435761 * self->_ttyType;
  }

  else
  {
    v11 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_38;
  }

  v5 = [(_INPBStartAudioCallIntent *)self hasAudioRoute];
  if (v5 != [v4 hasAudioRoute])
  {
    goto LABEL_38;
  }

  if ([(_INPBStartAudioCallIntent *)self hasAudioRoute])
  {
    if ([v4 hasAudioRoute])
    {
      audioRoute = self->_audioRoute;
      if (audioRoute != [v4 audioRoute])
      {
        goto LABEL_38;
      }
    }
  }

  v7 = [(_INPBStartAudioCallIntent *)self callRequestMetadata];
  v8 = [v4 callRequestMetadata];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_37;
  }

  v9 = [(_INPBStartAudioCallIntent *)self callRequestMetadata];
  if (v9)
  {
    v10 = v9;
    v11 = [(_INPBStartAudioCallIntent *)self callRequestMetadata];
    v12 = [v4 callRequestMetadata];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v7 = [(_INPBStartAudioCallIntent *)self contacts];
  v8 = [v4 contacts];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_37;
  }

  v14 = [(_INPBStartAudioCallIntent *)self contacts];
  if (v14)
  {
    v15 = v14;
    v16 = [(_INPBStartAudioCallIntent *)self contacts];
    v17 = [v4 contacts];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v19 = [(_INPBStartAudioCallIntent *)self hasDestinationType];
  if (v19 != [v4 hasDestinationType])
  {
    goto LABEL_38;
  }

  if ([(_INPBStartAudioCallIntent *)self hasDestinationType])
  {
    if ([v4 hasDestinationType])
    {
      destinationType = self->_destinationType;
      if (destinationType != [v4 destinationType])
      {
        goto LABEL_38;
      }
    }
  }

  v7 = [(_INPBStartAudioCallIntent *)self intentMetadata];
  v8 = [v4 intentMetadata];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_37;
  }

  v21 = [(_INPBStartAudioCallIntent *)self intentMetadata];
  if (v21)
  {
    v22 = v21;
    v23 = [(_INPBStartAudioCallIntent *)self intentMetadata];
    v24 = [v4 intentMetadata];
    v25 = [v23 isEqual:v24];

    if (!v25)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v26 = [(_INPBStartAudioCallIntent *)self hasPreferredCallProvider];
  if (v26 != [v4 hasPreferredCallProvider])
  {
    goto LABEL_38;
  }

  if ([(_INPBStartAudioCallIntent *)self hasPreferredCallProvider])
  {
    if ([v4 hasPreferredCallProvider])
    {
      preferredCallProvider = self->_preferredCallProvider;
      if (preferredCallProvider != [v4 preferredCallProvider])
      {
        goto LABEL_38;
      }
    }
  }

  v28 = [(_INPBStartAudioCallIntent *)self hasRecordTypeForRedialing];
  if (v28 != [v4 hasRecordTypeForRedialing])
  {
    goto LABEL_38;
  }

  if ([(_INPBStartAudioCallIntent *)self hasRecordTypeForRedialing])
  {
    if ([v4 hasRecordTypeForRedialing])
    {
      recordTypeForRedialing = self->_recordTypeForRedialing;
      if (recordTypeForRedialing != [v4 recordTypeForRedialing])
      {
        goto LABEL_38;
      }
    }
  }

  v7 = [(_INPBStartAudioCallIntent *)self targetContacts];
  v8 = [v4 targetContacts];
  if ((v7 != 0) == (v8 == 0))
  {
LABEL_37:

    goto LABEL_38;
  }

  v30 = [(_INPBStartAudioCallIntent *)self targetContacts];
  if (v30)
  {
    v31 = v30;
    v32 = [(_INPBStartAudioCallIntent *)self targetContacts];
    v33 = [v4 targetContacts];
    v34 = [v32 isEqual:v33];

    if (!v34)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v37 = [(_INPBStartAudioCallIntent *)self hasTtyType];
  if (v37 == [v4 hasTtyType])
  {
    if (!-[_INPBStartAudioCallIntent hasTtyType](self, "hasTtyType") || ![v4 hasTtyType] || (ttyType = self->_ttyType, ttyType == objc_msgSend(v4, "ttyType")))
    {
      v35 = 1;
      goto LABEL_39;
    }
  }

LABEL_38:
  v35 = 0;
LABEL_39:

  return v35;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBStartAudioCallIntent allocWithZone:](_INPBStartAudioCallIntent init];
  if ([(_INPBStartAudioCallIntent *)self hasAudioRoute])
  {
    [(_INPBStartAudioCallIntent *)v5 setAudioRoute:[(_INPBStartAudioCallIntent *)self audioRoute]];
  }

  v6 = [(_INPBStartCallRequestMetadata *)self->_callRequestMetadata copyWithZone:a3];
  [(_INPBStartAudioCallIntent *)v5 setCallRequestMetadata:v6];

  v7 = [(NSArray *)self->_contacts copyWithZone:a3];
  [(_INPBStartAudioCallIntent *)v5 setContacts:v7];

  if ([(_INPBStartAudioCallIntent *)self hasDestinationType])
  {
    [(_INPBStartAudioCallIntent *)v5 setDestinationType:[(_INPBStartAudioCallIntent *)self destinationType]];
  }

  v8 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBStartAudioCallIntent *)v5 setIntentMetadata:v8];

  if ([(_INPBStartAudioCallIntent *)self hasPreferredCallProvider])
  {
    [(_INPBStartAudioCallIntent *)v5 setPreferredCallProvider:[(_INPBStartAudioCallIntent *)self preferredCallProvider]];
  }

  if ([(_INPBStartAudioCallIntent *)self hasRecordTypeForRedialing])
  {
    [(_INPBStartAudioCallIntent *)v5 setRecordTypeForRedialing:[(_INPBStartAudioCallIntent *)self recordTypeForRedialing]];
  }

  v9 = [(NSArray *)self->_targetContacts copyWithZone:a3];
  [(_INPBStartAudioCallIntent *)v5 setTargetContacts:v9];

  if ([(_INPBStartAudioCallIntent *)self hasTtyType])
  {
    [(_INPBStartAudioCallIntent *)v5 setTtyType:[(_INPBStartAudioCallIntent *)self ttyType]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBStartAudioCallIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBStartAudioCallIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBStartAudioCallIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_INPBStartAudioCallIntent *)self hasAudioRoute])
  {
    audioRoute = self->_audioRoute;
    PBDataWriterWriteInt32Field();
  }

  v6 = [(_INPBStartAudioCallIntent *)self callRequestMetadata];

  if (v6)
  {
    v7 = [(_INPBStartAudioCallIntent *)self callRequestMetadata];
    PBDataWriterWriteSubmessage();
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = self->_contacts;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    do
    {
      v12 = 0;
      do
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v31 + 1) + 8 * v12);
        PBDataWriterWriteSubmessage();
        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v10);
  }

  if ([(_INPBStartAudioCallIntent *)self hasDestinationType])
  {
    destinationType = self->_destinationType;
    PBDataWriterWriteInt32Field();
  }

  v15 = [(_INPBStartAudioCallIntent *)self intentMetadata];

  if (v15)
  {
    v16 = [(_INPBStartAudioCallIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBStartAudioCallIntent *)self hasPreferredCallProvider])
  {
    preferredCallProvider = self->_preferredCallProvider;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBStartAudioCallIntent *)self hasRecordTypeForRedialing])
  {
    recordTypeForRedialing = self->_recordTypeForRedialing;
    PBDataWriterWriteInt32Field();
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v19 = self->_targetContacts;
  v20 = [(NSArray *)v19 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v28;
    do
    {
      v23 = 0;
      do
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v27 + 1) + 8 * v23);
        PBDataWriterWriteSubmessage();
        ++v23;
      }

      while (v21 != v23);
      v21 = [(NSArray *)v19 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v21);
  }

  if ([(_INPBStartAudioCallIntent *)self hasTtyType])
  {
    ttyType = self->_ttyType;
    PBDataWriterWriteInt32Field();
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (int)StringAsTTYType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Direct"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Relay"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasTtyType:(BOOL)a3
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

- (void)setTtyType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xEF;
  }

  else
  {
    *&self->_has = has | 0x10;
    self->_ttyType = a3;
  }
}

- (void)addTargetContacts:(id)a3
{
  v4 = a3;
  targetContacts = self->_targetContacts;
  v8 = v4;
  if (!targetContacts)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_targetContacts;
    self->_targetContacts = v6;

    v4 = v8;
    targetContacts = self->_targetContacts;
  }

  [(NSArray *)targetContacts addObject:v4];
}

- (void)setTargetContacts:(id)a3
{
  v4 = [a3 mutableCopy];
  targetContacts = self->_targetContacts;
  self->_targetContacts = v4;

  MEMORY[0x1EEE66BB8](v4, targetContacts);
}

- (int)StringAsRecordTypeForRedialing:(id)a3
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

- (void)setHasRecordTypeForRedialing:(BOOL)a3
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

- (void)setRecordTypeForRedialing:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xF7;
  }

  else
  {
    *&self->_has = has | 8;
    self->_recordTypeForRedialing = a3;
  }
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
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setPreferredCallProvider:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFB;
  }

  else
  {
    *&self->_has = has | 4;
    self->_preferredCallProvider = a3;
  }
}

- (int)StringAsDestinationType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NORMAL_DESTINATION"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"EMERGENCY_DESTINATION"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"VOICEMAIL_DESTINATION"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"REDIAL_DESTINATION"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"CALL_BACK_DESTINATION"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasDestinationType:(BOOL)a3
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

- (void)setDestinationType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_destinationType = a3;
  }
}

- (void)addContact:(id)a3
{
  v4 = a3;
  contacts = self->_contacts;
  v8 = v4;
  if (!contacts)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_contacts;
    self->_contacts = v6;

    v4 = v8;
    contacts = self->_contacts;
  }

  [(NSArray *)contacts addObject:v4];
}

- (void)setContacts:(id)a3
{
  v4 = [a3 mutableCopy];
  contacts = self->_contacts;
  self->_contacts = v4;

  MEMORY[0x1EEE66BB8](v4, contacts);
}

- (int)StringAsAudioRoute:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SPEAKERPHONE_AUDIO_ROUTE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"BLUETOOTH_AUDIO_ROUTE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"HEY_SIRI_AUDIO_ROUTE"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (void)setAudioRoute:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_audioRoute = a3;
  }
}

@end