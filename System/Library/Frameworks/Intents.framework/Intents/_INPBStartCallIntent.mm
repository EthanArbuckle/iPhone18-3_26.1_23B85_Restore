@interface _INPBStartCallIntent
- (BOOL)isEqual:(id)a3;
- (_INPBStartCallIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsAudioRoute:(id)a3;
- (int)StringAsCallCapability:(id)a3;
- (int)StringAsDestinationType:(id)a3;
- (int)StringAsPreferredCallProvider:(id)a3;
- (int)StringAsRecordTypeForRedialing:(id)a3;
- (int)StringAsTTYType:(id)a3;
- (unint64_t)hash;
- (void)addCallGroups:(id)a3;
- (void)addContacts:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAudioRoute:(int)a3;
- (void)setCallCapability:(int)a3;
- (void)setCallGroups:(id)a3;
- (void)setContacts:(id)a3;
- (void)setDestinationType:(int)a3;
- (void)setFaceTimeLink:(id)a3;
- (void)setHasCallCapability:(BOOL)a3;
- (void)setHasDestinationType:(BOOL)a3;
- (void)setHasIsGroupCall:(BOOL)a3;
- (void)setHasPreferredCallProvider:(BOOL)a3;
- (void)setHasRecordTypeForRedialing:(BOOL)a3;
- (void)setHasTtyType:(BOOL)a3;
- (void)setNotificationThreadIdentifier:(id)a3;
- (void)setPreferredCallProvider:(int)a3;
- (void)setRecordTypeForRedialing:(int)a3;
- (void)setTtyType:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBStartCallIntent

- (id)dictionaryRepresentation
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBStartCallIntent *)self hasAudioRoute])
  {
    v4 = [(_INPBStartCallIntent *)self audioRoute];
    if ((v4 - 2) >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = off_1E7286EC8[(v4 - 2)];
    }

    [v3 setObject:v5 forKeyedSubscript:@"audioRoute"];
  }

  if ([(_INPBStartCallIntent *)self hasCallCapability])
  {
    v6 = [(_INPBStartCallIntent *)self callCapability];
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
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    [v3 setObject:v7 forKeyedSubscript:@"callCapability"];
  }

  if ([(NSArray *)self->_callGroups count])
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v9 = self->_callGroups;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v51;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v51 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v50 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKeyedSubscript:@"callGroups"];
  }

  v15 = [(_INPBStartCallIntent *)self callRecordFilter];
  v16 = [v15 dictionaryRepresentation];
  [v3 setObject:v16 forKeyedSubscript:@"callRecordFilter"];

  v17 = [(_INPBStartCallIntent *)self callRecordToCallBack];
  v18 = [v17 dictionaryRepresentation];
  [v3 setObject:v18 forKeyedSubscript:@"callRecordToCallBack"];

  v19 = [(_INPBStartCallIntent *)self callRequestMetadata];
  v20 = [v19 dictionaryRepresentation];
  [v3 setObject:v20 forKeyedSubscript:@"callRequestMetadata"];

  if ([(NSArray *)self->_contacts count])
  {
    v21 = [MEMORY[0x1E695DF70] array];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v22 = self->_contacts;
    v23 = [(NSArray *)v22 countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v47;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v47 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [*(*(&v46 + 1) + 8 * j) dictionaryRepresentation];
          [v21 addObject:v27];
        }

        v24 = [(NSArray *)v22 countByEnumeratingWithState:&v46 objects:v54 count:16];
      }

      while (v24);
    }

    [v3 setObject:v21 forKeyedSubscript:@"contacts"];
  }

  if ([(_INPBStartCallIntent *)self hasDestinationType])
  {
    v28 = [(_INPBStartCallIntent *)self destinationType];
    if ((v28 - 1) >= 5)
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v28];
    }

    else
    {
      v29 = off_1E7286EE0[(v28 - 1)];
    }

    [v3 setObject:v29 forKeyedSubscript:@"destinationType"];
  }

  if (self->_faceTimeLink)
  {
    v30 = [(_INPBStartCallIntent *)self faceTimeLink];
    v31 = [v30 copy];
    [v3 setObject:v31 forKeyedSubscript:@"faceTimeLink"];
  }

  v32 = [(_INPBStartCallIntent *)self intentMetadata];
  v33 = [v32 dictionaryRepresentation];
  [v3 setObject:v33 forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBStartCallIntent *)self hasIsGroupCall])
  {
    v34 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBStartCallIntent isGroupCall](self, "isGroupCall")}];
    [v3 setObject:v34 forKeyedSubscript:@"isGroupCall"];
  }

  if (self->_notificationThreadIdentifier)
  {
    v35 = [(_INPBStartCallIntent *)self notificationThreadIdentifier];
    v36 = [v35 copy];
    [v3 setObject:v36 forKeyedSubscript:@"notificationThreadIdentifier"];
  }

  if ([(_INPBStartCallIntent *)self hasPreferredCallProvider])
  {
    v37 = [(_INPBStartCallIntent *)self preferredCallProvider];
    if ((v37 - 2) >= 3)
    {
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v37];
    }

    else
    {
      v38 = off_1E7286F08[(v37 - 2)];
    }

    [v3 setObject:v38 forKeyedSubscript:@"preferredCallProvider"];
  }

  if ([(_INPBStartCallIntent *)self hasRecordTypeForRedialing])
  {
    v39 = [(_INPBStartCallIntent *)self recordTypeForRedialing];
    v40 = v39 - 2;
    if (v39 - 2) < 9 && ((0x1EFu >> v40))
    {
      v41 = off_1E7286F20[v40];
    }

    else
    {
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v39];
    }

    [v3 setObject:v41 forKeyedSubscript:@"recordTypeForRedialing"];
  }

  if ([(_INPBStartCallIntent *)self hasTtyType])
  {
    v42 = [(_INPBStartCallIntent *)self ttyType];
    if (v42 >= 3)
    {
      v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v42];
    }

    else
    {
      v43 = off_1E7286F68[v42];
    }

    [v3 setObject:v43 forKeyedSubscript:@"ttyType"];
  }

  v44 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBStartCallIntent *)self hasAudioRoute])
  {
    v18 = 2654435761 * self->_audioRoute;
  }

  else
  {
    v18 = 0;
  }

  if ([(_INPBStartCallIntent *)self hasCallCapability])
  {
    v17 = 2654435761 * self->_callCapability;
  }

  else
  {
    v17 = 0;
  }

  v16 = [(NSArray *)self->_callGroups hash];
  v15 = [(_INPBCallRecordFilter *)self->_callRecordFilter hash];
  v14 = [(_INPBCallRecordValue *)self->_callRecordToCallBack hash];
  v13 = [(_INPBStartCallRequestMetadata *)self->_callRequestMetadata hash];
  v3 = [(NSArray *)self->_contacts hash];
  if ([(_INPBStartCallIntent *)self hasDestinationType])
  {
    v4 = 2654435761 * self->_destinationType;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_faceTimeLink hash];
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  if ([(_INPBStartCallIntent *)self hasIsGroupCall])
  {
    v7 = 2654435761 * self->_isGroupCall;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(NSString *)self->_notificationThreadIdentifier hash];
  if ([(_INPBStartCallIntent *)self hasPreferredCallProvider])
  {
    v9 = 2654435761 * self->_preferredCallProvider;
  }

  else
  {
    v9 = 0;
  }

  if ([(_INPBStartCallIntent *)self hasRecordTypeForRedialing])
  {
    v10 = 2654435761 * self->_recordTypeForRedialing;
  }

  else
  {
    v10 = 0;
  }

  if ([(_INPBStartCallIntent *)self hasTtyType])
  {
    v11 = 2654435761 * self->_ttyType;
  }

  else
  {
    v11 = 0;
  }

  return v17 ^ v18 ^ v16 ^ v15 ^ v14 ^ v13 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_58;
  }

  v5 = [(_INPBStartCallIntent *)self hasAudioRoute];
  if (v5 != [v4 hasAudioRoute])
  {
    goto LABEL_58;
  }

  if ([(_INPBStartCallIntent *)self hasAudioRoute])
  {
    if ([v4 hasAudioRoute])
    {
      audioRoute = self->_audioRoute;
      if (audioRoute != [v4 audioRoute])
      {
        goto LABEL_58;
      }
    }
  }

  v7 = [(_INPBStartCallIntent *)self hasCallCapability];
  if (v7 != [v4 hasCallCapability])
  {
    goto LABEL_58;
  }

  if ([(_INPBStartCallIntent *)self hasCallCapability])
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

  v9 = [(_INPBStartCallIntent *)self callGroups];
  v10 = [v4 callGroups];
  if ((v9 != 0) == (v10 == 0))
  {
    goto LABEL_57;
  }

  v11 = [(_INPBStartCallIntent *)self callGroups];
  if (v11)
  {
    v12 = v11;
    v13 = [(_INPBStartCallIntent *)self callGroups];
    v14 = [v4 callGroups];
    v15 = [v13 isEqual:v14];

    if (!v15)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v9 = [(_INPBStartCallIntent *)self callRecordFilter];
  v10 = [v4 callRecordFilter];
  if ((v9 != 0) == (v10 == 0))
  {
    goto LABEL_57;
  }

  v16 = [(_INPBStartCallIntent *)self callRecordFilter];
  if (v16)
  {
    v17 = v16;
    v18 = [(_INPBStartCallIntent *)self callRecordFilter];
    v19 = [v4 callRecordFilter];
    v20 = [v18 isEqual:v19];

    if (!v20)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v9 = [(_INPBStartCallIntent *)self callRecordToCallBack];
  v10 = [v4 callRecordToCallBack];
  if ((v9 != 0) == (v10 == 0))
  {
    goto LABEL_57;
  }

  v21 = [(_INPBStartCallIntent *)self callRecordToCallBack];
  if (v21)
  {
    v22 = v21;
    v23 = [(_INPBStartCallIntent *)self callRecordToCallBack];
    v24 = [v4 callRecordToCallBack];
    v25 = [v23 isEqual:v24];

    if (!v25)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v9 = [(_INPBStartCallIntent *)self callRequestMetadata];
  v10 = [v4 callRequestMetadata];
  if ((v9 != 0) == (v10 == 0))
  {
    goto LABEL_57;
  }

  v26 = [(_INPBStartCallIntent *)self callRequestMetadata];
  if (v26)
  {
    v27 = v26;
    v28 = [(_INPBStartCallIntent *)self callRequestMetadata];
    v29 = [v4 callRequestMetadata];
    v30 = [v28 isEqual:v29];

    if (!v30)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v9 = [(_INPBStartCallIntent *)self contacts];
  v10 = [v4 contacts];
  if ((v9 != 0) == (v10 == 0))
  {
    goto LABEL_57;
  }

  v31 = [(_INPBStartCallIntent *)self contacts];
  if (v31)
  {
    v32 = v31;
    v33 = [(_INPBStartCallIntent *)self contacts];
    v34 = [v4 contacts];
    v35 = [v33 isEqual:v34];

    if (!v35)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v36 = [(_INPBStartCallIntent *)self hasDestinationType];
  if (v36 != [v4 hasDestinationType])
  {
    goto LABEL_58;
  }

  if ([(_INPBStartCallIntent *)self hasDestinationType])
  {
    if ([v4 hasDestinationType])
    {
      destinationType = self->_destinationType;
      if (destinationType != [v4 destinationType])
      {
        goto LABEL_58;
      }
    }
  }

  v9 = [(_INPBStartCallIntent *)self faceTimeLink];
  v10 = [v4 faceTimeLink];
  if ((v9 != 0) == (v10 == 0))
  {
    goto LABEL_57;
  }

  v38 = [(_INPBStartCallIntent *)self faceTimeLink];
  if (v38)
  {
    v39 = v38;
    v40 = [(_INPBStartCallIntent *)self faceTimeLink];
    v41 = [v4 faceTimeLink];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v9 = [(_INPBStartCallIntent *)self intentMetadata];
  v10 = [v4 intentMetadata];
  if ((v9 != 0) == (v10 == 0))
  {
    goto LABEL_57;
  }

  v43 = [(_INPBStartCallIntent *)self intentMetadata];
  if (v43)
  {
    v44 = v43;
    v45 = [(_INPBStartCallIntent *)self intentMetadata];
    v46 = [v4 intentMetadata];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v48 = [(_INPBStartCallIntent *)self hasIsGroupCall];
  if (v48 != [v4 hasIsGroupCall])
  {
    goto LABEL_58;
  }

  if ([(_INPBStartCallIntent *)self hasIsGroupCall])
  {
    if ([v4 hasIsGroupCall])
    {
      isGroupCall = self->_isGroupCall;
      if (isGroupCall != [v4 isGroupCall])
      {
        goto LABEL_58;
      }
    }
  }

  v9 = [(_INPBStartCallIntent *)self notificationThreadIdentifier];
  v10 = [v4 notificationThreadIdentifier];
  if ((v9 != 0) == (v10 == 0))
  {
LABEL_57:

    goto LABEL_58;
  }

  v50 = [(_INPBStartCallIntent *)self notificationThreadIdentifier];
  if (v50)
  {
    v51 = v50;
    v52 = [(_INPBStartCallIntent *)self notificationThreadIdentifier];
    v53 = [v4 notificationThreadIdentifier];
    v54 = [v52 isEqual:v53];

    if (!v54)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v57 = [(_INPBStartCallIntent *)self hasPreferredCallProvider];
  if (v57 == [v4 hasPreferredCallProvider])
  {
    if (!-[_INPBStartCallIntent hasPreferredCallProvider](self, "hasPreferredCallProvider") || ![v4 hasPreferredCallProvider] || (preferredCallProvider = self->_preferredCallProvider, preferredCallProvider == objc_msgSend(v4, "preferredCallProvider")))
    {
      v59 = [(_INPBStartCallIntent *)self hasRecordTypeForRedialing];
      if (v59 == [v4 hasRecordTypeForRedialing])
      {
        if (!-[_INPBStartCallIntent hasRecordTypeForRedialing](self, "hasRecordTypeForRedialing") || ![v4 hasRecordTypeForRedialing] || (recordTypeForRedialing = self->_recordTypeForRedialing, recordTypeForRedialing == objc_msgSend(v4, "recordTypeForRedialing")))
        {
          v61 = [(_INPBStartCallIntent *)self hasTtyType];
          if (v61 == [v4 hasTtyType])
          {
            if (!-[_INPBStartCallIntent hasTtyType](self, "hasTtyType") || ![v4 hasTtyType] || (ttyType = self->_ttyType, ttyType == objc_msgSend(v4, "ttyType")))
            {
              v55 = 1;
              goto LABEL_59;
            }
          }
        }
      }
    }
  }

LABEL_58:
  v55 = 0;
LABEL_59:

  return v55;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBStartCallIntent allocWithZone:](_INPBStartCallIntent init];
  if ([(_INPBStartCallIntent *)self hasAudioRoute])
  {
    [(_INPBStartCallIntent *)v5 setAudioRoute:[(_INPBStartCallIntent *)self audioRoute]];
  }

  if ([(_INPBStartCallIntent *)self hasCallCapability])
  {
    [(_INPBStartCallIntent *)v5 setCallCapability:[(_INPBStartCallIntent *)self callCapability]];
  }

  v6 = [(NSArray *)self->_callGroups copyWithZone:a3];
  [(_INPBStartCallIntent *)v5 setCallGroups:v6];

  v7 = [(_INPBCallRecordFilter *)self->_callRecordFilter copyWithZone:a3];
  [(_INPBStartCallIntent *)v5 setCallRecordFilter:v7];

  v8 = [(_INPBCallRecordValue *)self->_callRecordToCallBack copyWithZone:a3];
  [(_INPBStartCallIntent *)v5 setCallRecordToCallBack:v8];

  v9 = [(_INPBStartCallRequestMetadata *)self->_callRequestMetadata copyWithZone:a3];
  [(_INPBStartCallIntent *)v5 setCallRequestMetadata:v9];

  v10 = [(NSArray *)self->_contacts copyWithZone:a3];
  [(_INPBStartCallIntent *)v5 setContacts:v10];

  if ([(_INPBStartCallIntent *)self hasDestinationType])
  {
    [(_INPBStartCallIntent *)v5 setDestinationType:[(_INPBStartCallIntent *)self destinationType]];
  }

  v11 = [(NSString *)self->_faceTimeLink copyWithZone:a3];
  [(_INPBStartCallIntent *)v5 setFaceTimeLink:v11];

  v12 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBStartCallIntent *)v5 setIntentMetadata:v12];

  if ([(_INPBStartCallIntent *)self hasIsGroupCall])
  {
    [(_INPBStartCallIntent *)v5 setIsGroupCall:[(_INPBStartCallIntent *)self isGroupCall]];
  }

  v13 = [(NSString *)self->_notificationThreadIdentifier copyWithZone:a3];
  [(_INPBStartCallIntent *)v5 setNotificationThreadIdentifier:v13];

  if ([(_INPBStartCallIntent *)self hasPreferredCallProvider])
  {
    [(_INPBStartCallIntent *)v5 setPreferredCallProvider:[(_INPBStartCallIntent *)self preferredCallProvider]];
  }

  if ([(_INPBStartCallIntent *)self hasRecordTypeForRedialing])
  {
    [(_INPBStartCallIntent *)v5 setRecordTypeForRedialing:[(_INPBStartCallIntent *)self recordTypeForRedialing]];
  }

  if ([(_INPBStartCallIntent *)self hasTtyType])
  {
    [(_INPBStartCallIntent *)v5 setTtyType:[(_INPBStartCallIntent *)self ttyType]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBStartCallIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBStartCallIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBStartCallIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_INPBStartCallIntent *)self hasAudioRoute])
  {
    audioRoute = self->_audioRoute;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBStartCallIntent *)self hasCallCapability])
  {
    callCapability = self->_callCapability;
    PBDataWriterWriteInt32Field();
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = self->_callGroups;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v42;
    do
    {
      v11 = 0;
      do
      {
        if (*v42 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v41 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v9);
  }

  v13 = [(_INPBStartCallIntent *)self callRecordFilter];

  if (v13)
  {
    v14 = [(_INPBStartCallIntent *)self callRecordFilter];
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_INPBStartCallIntent *)self callRecordToCallBack];

  if (v15)
  {
    v16 = [(_INPBStartCallIntent *)self callRecordToCallBack];
    PBDataWriterWriteSubmessage();
  }

  v17 = [(_INPBStartCallIntent *)self callRequestMetadata];

  if (v17)
  {
    v18 = [(_INPBStartCallIntent *)self callRequestMetadata];
    PBDataWriterWriteSubmessage();
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v19 = self->_contacts;
  v20 = [(NSArray *)v19 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v38;
    do
    {
      v23 = 0;
      do
      {
        if (*v38 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v37 + 1) + 8 * v23);
        PBDataWriterWriteSubmessage();
        ++v23;
      }

      while (v21 != v23);
      v21 = [(NSArray *)v19 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v21);
  }

  if ([(_INPBStartCallIntent *)self hasDestinationType])
  {
    destinationType = self->_destinationType;
    PBDataWriterWriteInt32Field();
  }

  v26 = [(_INPBStartCallIntent *)self faceTimeLink];

  if (v26)
  {
    faceTimeLink = self->_faceTimeLink;
    PBDataWriterWriteStringField();
  }

  v28 = [(_INPBStartCallIntent *)self intentMetadata];

  if (v28)
  {
    v29 = [(_INPBStartCallIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBStartCallIntent *)self hasIsGroupCall])
  {
    isGroupCall = self->_isGroupCall;
    PBDataWriterWriteBOOLField();
  }

  v31 = [(_INPBStartCallIntent *)self notificationThreadIdentifier];

  if (v31)
  {
    notificationThreadIdentifier = self->_notificationThreadIdentifier;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBStartCallIntent *)self hasPreferredCallProvider])
  {
    preferredCallProvider = self->_preferredCallProvider;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBStartCallIntent *)self hasRecordTypeForRedialing])
  {
    recordTypeForRedialing = self->_recordTypeForRedialing;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBStartCallIntent *)self hasTtyType])
  {
    ttyType = self->_ttyType;
    PBDataWriterWriteInt32Field();
  }

  v36 = *MEMORY[0x1E69E9840];
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
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setTtyType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xBF;
  }

  else
  {
    *&self->_has = has | 0x40;
    self->_ttyType = a3;
  }
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
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setRecordTypeForRedialing:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xDF;
  }

  else
  {
    *&self->_has = has | 0x20;
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
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setPreferredCallProvider:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xEF;
  }

  else
  {
    *&self->_has = has | 0x10;
    self->_preferredCallProvider = a3;
  }
}

- (void)setNotificationThreadIdentifier:(id)a3
{
  v4 = [a3 copy];
  notificationThreadIdentifier = self->_notificationThreadIdentifier;
  self->_notificationThreadIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, notificationThreadIdentifier);
}

- (void)setHasIsGroupCall:(BOOL)a3
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

- (void)setFaceTimeLink:(id)a3
{
  v4 = [a3 copy];
  faceTimeLink = self->_faceTimeLink;
  self->_faceTimeLink = v4;

  MEMORY[0x1EEE66BB8](v4, faceTimeLink);
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
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setDestinationType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFB;
  }

  else
  {
    *&self->_has = has | 4;
    self->_destinationType = a3;
  }
}

- (void)addContacts:(id)a3
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

- (void)addCallGroups:(id)a3
{
  v4 = a3;
  callGroups = self->_callGroups;
  v8 = v4;
  if (!callGroups)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_callGroups;
    self->_callGroups = v6;

    v4 = v8;
    callGroups = self->_callGroups;
  }

  [(NSArray *)callGroups addObject:v4];
}

- (void)setCallGroups:(id)a3
{
  v4 = [a3 mutableCopy];
  callGroups = self->_callGroups;
  self->_callGroups = v4;

  MEMORY[0x1EEE66BB8](v4, callGroups);
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

- (void)setHasCallCapability:(BOOL)a3
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

- (void)setCallCapability:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_callCapability = a3;
  }
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