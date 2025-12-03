@interface _INPBStartCallIntent
- (BOOL)isEqual:(id)equal;
- (_INPBStartCallIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsAudioRoute:(id)route;
- (int)StringAsCallCapability:(id)capability;
- (int)StringAsDestinationType:(id)type;
- (int)StringAsPreferredCallProvider:(id)provider;
- (int)StringAsRecordTypeForRedialing:(id)redialing;
- (int)StringAsTTYType:(id)type;
- (unint64_t)hash;
- (void)addCallGroups:(id)groups;
- (void)addContacts:(id)contacts;
- (void)encodeWithCoder:(id)coder;
- (void)setAudioRoute:(int)route;
- (void)setCallCapability:(int)capability;
- (void)setCallGroups:(id)groups;
- (void)setContacts:(id)contacts;
- (void)setDestinationType:(int)type;
- (void)setFaceTimeLink:(id)link;
- (void)setHasCallCapability:(BOOL)capability;
- (void)setHasDestinationType:(BOOL)type;
- (void)setHasIsGroupCall:(BOOL)call;
- (void)setHasPreferredCallProvider:(BOOL)provider;
- (void)setHasRecordTypeForRedialing:(BOOL)redialing;
- (void)setHasTtyType:(BOOL)type;
- (void)setNotificationThreadIdentifier:(id)identifier;
- (void)setPreferredCallProvider:(int)provider;
- (void)setRecordTypeForRedialing:(int)redialing;
- (void)setTtyType:(int)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBStartCallIntent

- (id)dictionaryRepresentation
{
  v56 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBStartCallIntent *)self hasAudioRoute])
  {
    audioRoute = [(_INPBStartCallIntent *)self audioRoute];
    if ((audioRoute - 2) >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", audioRoute];
    }

    else
    {
      v5 = off_1E7286EC8[(audioRoute - 2)];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"audioRoute"];
  }

  if ([(_INPBStartCallIntent *)self hasCallCapability])
  {
    callCapability = [(_INPBStartCallIntent *)self callCapability];
    if (callCapability == 1)
    {
      v7 = @"AUDIO_CALL";
    }

    else if (callCapability == 2)
    {
      v7 = @"VIDEO_CALL";
    }

    else
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", callCapability];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"callCapability"];
  }

  if ([(NSArray *)self->_callGroups count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v50 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v11);
    }

    [dictionary setObject:array forKeyedSubscript:@"callGroups"];
  }

  callRecordFilter = [(_INPBStartCallIntent *)self callRecordFilter];
  dictionaryRepresentation2 = [callRecordFilter dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"callRecordFilter"];

  callRecordToCallBack = [(_INPBStartCallIntent *)self callRecordToCallBack];
  dictionaryRepresentation3 = [callRecordToCallBack dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"callRecordToCallBack"];

  callRequestMetadata = [(_INPBStartCallIntent *)self callRequestMetadata];
  dictionaryRepresentation4 = [callRequestMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"callRequestMetadata"];

  if ([(NSArray *)self->_contacts count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation5 = [*(*(&v46 + 1) + 8 * j) dictionaryRepresentation];
          [array2 addObject:dictionaryRepresentation5];
        }

        v24 = [(NSArray *)v22 countByEnumeratingWithState:&v46 objects:v54 count:16];
      }

      while (v24);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"contacts"];
  }

  if ([(_INPBStartCallIntent *)self hasDestinationType])
  {
    destinationType = [(_INPBStartCallIntent *)self destinationType];
    if ((destinationType - 1) >= 5)
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", destinationType];
    }

    else
    {
      v29 = off_1E7286EE0[(destinationType - 1)];
    }

    [dictionary setObject:v29 forKeyedSubscript:@"destinationType"];
  }

  if (self->_faceTimeLink)
  {
    faceTimeLink = [(_INPBStartCallIntent *)self faceTimeLink];
    v31 = [faceTimeLink copy];
    [dictionary setObject:v31 forKeyedSubscript:@"faceTimeLink"];
  }

  intentMetadata = [(_INPBStartCallIntent *)self intentMetadata];
  dictionaryRepresentation6 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBStartCallIntent *)self hasIsGroupCall])
  {
    v34 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBStartCallIntent isGroupCall](self, "isGroupCall")}];
    [dictionary setObject:v34 forKeyedSubscript:@"isGroupCall"];
  }

  if (self->_notificationThreadIdentifier)
  {
    notificationThreadIdentifier = [(_INPBStartCallIntent *)self notificationThreadIdentifier];
    v36 = [notificationThreadIdentifier copy];
    [dictionary setObject:v36 forKeyedSubscript:@"notificationThreadIdentifier"];
  }

  if ([(_INPBStartCallIntent *)self hasPreferredCallProvider])
  {
    preferredCallProvider = [(_INPBStartCallIntent *)self preferredCallProvider];
    if ((preferredCallProvider - 2) >= 3)
    {
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", preferredCallProvider];
    }

    else
    {
      v38 = off_1E7286F08[(preferredCallProvider - 2)];
    }

    [dictionary setObject:v38 forKeyedSubscript:@"preferredCallProvider"];
  }

  if ([(_INPBStartCallIntent *)self hasRecordTypeForRedialing])
  {
    recordTypeForRedialing = [(_INPBStartCallIntent *)self recordTypeForRedialing];
    v40 = recordTypeForRedialing - 2;
    if (recordTypeForRedialing - 2) < 9 && ((0x1EFu >> v40))
    {
      v41 = off_1E7286F20[v40];
    }

    else
    {
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", recordTypeForRedialing];
    }

    [dictionary setObject:v41 forKeyedSubscript:@"recordTypeForRedialing"];
  }

  if ([(_INPBStartCallIntent *)self hasTtyType])
  {
    ttyType = [(_INPBStartCallIntent *)self ttyType];
    if (ttyType >= 3)
    {
      v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", ttyType];
    }

    else
    {
      v43 = off_1E7286F68[ttyType];
    }

    [dictionary setObject:v43 forKeyedSubscript:@"ttyType"];
  }

  v44 = *MEMORY[0x1E69E9840];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_58;
  }

  hasAudioRoute = [(_INPBStartCallIntent *)self hasAudioRoute];
  if (hasAudioRoute != [equalCopy hasAudioRoute])
  {
    goto LABEL_58;
  }

  if ([(_INPBStartCallIntent *)self hasAudioRoute])
  {
    if ([equalCopy hasAudioRoute])
    {
      audioRoute = self->_audioRoute;
      if (audioRoute != [equalCopy audioRoute])
      {
        goto LABEL_58;
      }
    }
  }

  hasCallCapability = [(_INPBStartCallIntent *)self hasCallCapability];
  if (hasCallCapability != [equalCopy hasCallCapability])
  {
    goto LABEL_58;
  }

  if ([(_INPBStartCallIntent *)self hasCallCapability])
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

  callGroups = [(_INPBStartCallIntent *)self callGroups];
  callGroups2 = [equalCopy callGroups];
  if ((callGroups != 0) == (callGroups2 == 0))
  {
    goto LABEL_57;
  }

  callGroups3 = [(_INPBStartCallIntent *)self callGroups];
  if (callGroups3)
  {
    v12 = callGroups3;
    callGroups4 = [(_INPBStartCallIntent *)self callGroups];
    callGroups5 = [equalCopy callGroups];
    v15 = [callGroups4 isEqual:callGroups5];

    if (!v15)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  callGroups = [(_INPBStartCallIntent *)self callRecordFilter];
  callGroups2 = [equalCopy callRecordFilter];
  if ((callGroups != 0) == (callGroups2 == 0))
  {
    goto LABEL_57;
  }

  callRecordFilter = [(_INPBStartCallIntent *)self callRecordFilter];
  if (callRecordFilter)
  {
    v17 = callRecordFilter;
    callRecordFilter2 = [(_INPBStartCallIntent *)self callRecordFilter];
    callRecordFilter3 = [equalCopy callRecordFilter];
    v20 = [callRecordFilter2 isEqual:callRecordFilter3];

    if (!v20)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  callGroups = [(_INPBStartCallIntent *)self callRecordToCallBack];
  callGroups2 = [equalCopy callRecordToCallBack];
  if ((callGroups != 0) == (callGroups2 == 0))
  {
    goto LABEL_57;
  }

  callRecordToCallBack = [(_INPBStartCallIntent *)self callRecordToCallBack];
  if (callRecordToCallBack)
  {
    v22 = callRecordToCallBack;
    callRecordToCallBack2 = [(_INPBStartCallIntent *)self callRecordToCallBack];
    callRecordToCallBack3 = [equalCopy callRecordToCallBack];
    v25 = [callRecordToCallBack2 isEqual:callRecordToCallBack3];

    if (!v25)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  callGroups = [(_INPBStartCallIntent *)self callRequestMetadata];
  callGroups2 = [equalCopy callRequestMetadata];
  if ((callGroups != 0) == (callGroups2 == 0))
  {
    goto LABEL_57;
  }

  callRequestMetadata = [(_INPBStartCallIntent *)self callRequestMetadata];
  if (callRequestMetadata)
  {
    v27 = callRequestMetadata;
    callRequestMetadata2 = [(_INPBStartCallIntent *)self callRequestMetadata];
    callRequestMetadata3 = [equalCopy callRequestMetadata];
    v30 = [callRequestMetadata2 isEqual:callRequestMetadata3];

    if (!v30)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  callGroups = [(_INPBStartCallIntent *)self contacts];
  callGroups2 = [equalCopy contacts];
  if ((callGroups != 0) == (callGroups2 == 0))
  {
    goto LABEL_57;
  }

  contacts = [(_INPBStartCallIntent *)self contacts];
  if (contacts)
  {
    v32 = contacts;
    contacts2 = [(_INPBStartCallIntent *)self contacts];
    contacts3 = [equalCopy contacts];
    v35 = [contacts2 isEqual:contacts3];

    if (!v35)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  hasDestinationType = [(_INPBStartCallIntent *)self hasDestinationType];
  if (hasDestinationType != [equalCopy hasDestinationType])
  {
    goto LABEL_58;
  }

  if ([(_INPBStartCallIntent *)self hasDestinationType])
  {
    if ([equalCopy hasDestinationType])
    {
      destinationType = self->_destinationType;
      if (destinationType != [equalCopy destinationType])
      {
        goto LABEL_58;
      }
    }
  }

  callGroups = [(_INPBStartCallIntent *)self faceTimeLink];
  callGroups2 = [equalCopy faceTimeLink];
  if ((callGroups != 0) == (callGroups2 == 0))
  {
    goto LABEL_57;
  }

  faceTimeLink = [(_INPBStartCallIntent *)self faceTimeLink];
  if (faceTimeLink)
  {
    v39 = faceTimeLink;
    faceTimeLink2 = [(_INPBStartCallIntent *)self faceTimeLink];
    faceTimeLink3 = [equalCopy faceTimeLink];
    v42 = [faceTimeLink2 isEqual:faceTimeLink3];

    if (!v42)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  callGroups = [(_INPBStartCallIntent *)self intentMetadata];
  callGroups2 = [equalCopy intentMetadata];
  if ((callGroups != 0) == (callGroups2 == 0))
  {
    goto LABEL_57;
  }

  intentMetadata = [(_INPBStartCallIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v44 = intentMetadata;
    intentMetadata2 = [(_INPBStartCallIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v47 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v47)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  hasIsGroupCall = [(_INPBStartCallIntent *)self hasIsGroupCall];
  if (hasIsGroupCall != [equalCopy hasIsGroupCall])
  {
    goto LABEL_58;
  }

  if ([(_INPBStartCallIntent *)self hasIsGroupCall])
  {
    if ([equalCopy hasIsGroupCall])
    {
      isGroupCall = self->_isGroupCall;
      if (isGroupCall != [equalCopy isGroupCall])
      {
        goto LABEL_58;
      }
    }
  }

  callGroups = [(_INPBStartCallIntent *)self notificationThreadIdentifier];
  callGroups2 = [equalCopy notificationThreadIdentifier];
  if ((callGroups != 0) == (callGroups2 == 0))
  {
LABEL_57:

    goto LABEL_58;
  }

  notificationThreadIdentifier = [(_INPBStartCallIntent *)self notificationThreadIdentifier];
  if (notificationThreadIdentifier)
  {
    v51 = notificationThreadIdentifier;
    notificationThreadIdentifier2 = [(_INPBStartCallIntent *)self notificationThreadIdentifier];
    notificationThreadIdentifier3 = [equalCopy notificationThreadIdentifier];
    v54 = [notificationThreadIdentifier2 isEqual:notificationThreadIdentifier3];

    if (!v54)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  hasPreferredCallProvider = [(_INPBStartCallIntent *)self hasPreferredCallProvider];
  if (hasPreferredCallProvider == [equalCopy hasPreferredCallProvider])
  {
    if (!-[_INPBStartCallIntent hasPreferredCallProvider](self, "hasPreferredCallProvider") || ![equalCopy hasPreferredCallProvider] || (preferredCallProvider = self->_preferredCallProvider, preferredCallProvider == objc_msgSend(equalCopy, "preferredCallProvider")))
    {
      hasRecordTypeForRedialing = [(_INPBStartCallIntent *)self hasRecordTypeForRedialing];
      if (hasRecordTypeForRedialing == [equalCopy hasRecordTypeForRedialing])
      {
        if (!-[_INPBStartCallIntent hasRecordTypeForRedialing](self, "hasRecordTypeForRedialing") || ![equalCopy hasRecordTypeForRedialing] || (recordTypeForRedialing = self->_recordTypeForRedialing, recordTypeForRedialing == objc_msgSend(equalCopy, "recordTypeForRedialing")))
        {
          hasTtyType = [(_INPBStartCallIntent *)self hasTtyType];
          if (hasTtyType == [equalCopy hasTtyType])
          {
            if (!-[_INPBStartCallIntent hasTtyType](self, "hasTtyType") || ![equalCopy hasTtyType] || (ttyType = self->_ttyType, ttyType == objc_msgSend(equalCopy, "ttyType")))
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

- (id)copyWithZone:(_NSZone *)zone
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

  v6 = [(NSArray *)self->_callGroups copyWithZone:zone];
  [(_INPBStartCallIntent *)v5 setCallGroups:v6];

  v7 = [(_INPBCallRecordFilter *)self->_callRecordFilter copyWithZone:zone];
  [(_INPBStartCallIntent *)v5 setCallRecordFilter:v7];

  v8 = [(_INPBCallRecordValue *)self->_callRecordToCallBack copyWithZone:zone];
  [(_INPBStartCallIntent *)v5 setCallRecordToCallBack:v8];

  v9 = [(_INPBStartCallRequestMetadata *)self->_callRequestMetadata copyWithZone:zone];
  [(_INPBStartCallIntent *)v5 setCallRequestMetadata:v9];

  v10 = [(NSArray *)self->_contacts copyWithZone:zone];
  [(_INPBStartCallIntent *)v5 setContacts:v10];

  if ([(_INPBStartCallIntent *)self hasDestinationType])
  {
    [(_INPBStartCallIntent *)v5 setDestinationType:[(_INPBStartCallIntent *)self destinationType]];
  }

  v11 = [(NSString *)self->_faceTimeLink copyWithZone:zone];
  [(_INPBStartCallIntent *)v5 setFaceTimeLink:v11];

  v12 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBStartCallIntent *)v5 setIntentMetadata:v12];

  if ([(_INPBStartCallIntent *)self hasIsGroupCall])
  {
    [(_INPBStartCallIntent *)v5 setIsGroupCall:[(_INPBStartCallIntent *)self isGroupCall]];
  }

  v13 = [(NSString *)self->_notificationThreadIdentifier copyWithZone:zone];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBStartCallIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBStartCallIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBStartCallIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v47 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

  callRecordFilter = [(_INPBStartCallIntent *)self callRecordFilter];

  if (callRecordFilter)
  {
    callRecordFilter2 = [(_INPBStartCallIntent *)self callRecordFilter];
    PBDataWriterWriteSubmessage();
  }

  callRecordToCallBack = [(_INPBStartCallIntent *)self callRecordToCallBack];

  if (callRecordToCallBack)
  {
    callRecordToCallBack2 = [(_INPBStartCallIntent *)self callRecordToCallBack];
    PBDataWriterWriteSubmessage();
  }

  callRequestMetadata = [(_INPBStartCallIntent *)self callRequestMetadata];

  if (callRequestMetadata)
  {
    callRequestMetadata2 = [(_INPBStartCallIntent *)self callRequestMetadata];
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

  faceTimeLink = [(_INPBStartCallIntent *)self faceTimeLink];

  if (faceTimeLink)
  {
    faceTimeLink = self->_faceTimeLink;
    PBDataWriterWriteStringField();
  }

  intentMetadata = [(_INPBStartCallIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBStartCallIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBStartCallIntent *)self hasIsGroupCall])
  {
    isGroupCall = self->_isGroupCall;
    PBDataWriterWriteBOOLField();
  }

  notificationThreadIdentifier = [(_INPBStartCallIntent *)self notificationThreadIdentifier];

  if (notificationThreadIdentifier)
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

- (int)StringAsTTYType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Direct"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Relay"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasTtyType:(BOOL)type
{
  if (type)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setTtyType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xBF;
  }

  else
  {
    *&self->_has = has | 0x40;
    self->_ttyType = type;
  }
}

- (int)StringAsRecordTypeForRedialing:(id)redialing
{
  redialingCopy = redialing;
  if ([redialingCopy isEqualToString:@"OUTGOING"])
  {
    v4 = 2;
  }

  else if ([redialingCopy isEqualToString:@"MISSED"])
  {
    v4 = 3;
  }

  else if ([redialingCopy isEqualToString:@"RECEIVED"])
  {
    v4 = 4;
  }

  else if ([redialingCopy isEqualToString:@"LATEST"])
  {
    v4 = 5;
  }

  else if ([redialingCopy isEqualToString:@"VOICEMAIL"])
  {
    v4 = 7;
  }

  else if ([redialingCopy isEqualToString:@"RINGING"])
  {
    v4 = 8;
  }

  else if ([redialingCopy isEqualToString:@"IN_PROGRESS"])
  {
    v4 = 9;
  }

  else if ([redialingCopy isEqualToString:@"ON_HOLD"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (void)setHasRecordTypeForRedialing:(BOOL)redialing
{
  if (redialing)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setRecordTypeForRedialing:(int)redialing
{
  has = self->_has;
  if (redialing == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xDF;
  }

  else
  {
    *&self->_has = has | 0x20;
    self->_recordTypeForRedialing = redialing;
  }
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
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setPreferredCallProvider:(int)provider
{
  has = self->_has;
  if (provider == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xEF;
  }

  else
  {
    *&self->_has = has | 0x10;
    self->_preferredCallProvider = provider;
  }
}

- (void)setNotificationThreadIdentifier:(id)identifier
{
  v4 = [identifier copy];
  notificationThreadIdentifier = self->_notificationThreadIdentifier;
  self->_notificationThreadIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, notificationThreadIdentifier);
}

- (void)setHasIsGroupCall:(BOOL)call
{
  if (call)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setFaceTimeLink:(id)link
{
  v4 = [link copy];
  faceTimeLink = self->_faceTimeLink;
  self->_faceTimeLink = v4;

  MEMORY[0x1EEE66BB8](v4, faceTimeLink);
}

- (int)StringAsDestinationType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"NORMAL_DESTINATION"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"EMERGENCY_DESTINATION"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"VOICEMAIL_DESTINATION"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"REDIAL_DESTINATION"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"CALL_BACK_DESTINATION"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasDestinationType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setDestinationType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFB;
  }

  else
  {
    *&self->_has = has | 4;
    self->_destinationType = type;
  }
}

- (void)addContacts:(id)contacts
{
  contactsCopy = contacts;
  contacts = self->_contacts;
  v8 = contactsCopy;
  if (!contacts)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_contacts;
    self->_contacts = array;

    contactsCopy = v8;
    contacts = self->_contacts;
  }

  [(NSArray *)contacts addObject:contactsCopy];
}

- (void)setContacts:(id)contacts
{
  v4 = [contacts mutableCopy];
  contacts = self->_contacts;
  self->_contacts = v4;

  MEMORY[0x1EEE66BB8](v4, contacts);
}

- (void)addCallGroups:(id)groups
{
  groupsCopy = groups;
  callGroups = self->_callGroups;
  v8 = groupsCopy;
  if (!callGroups)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_callGroups;
    self->_callGroups = array;

    groupsCopy = v8;
    callGroups = self->_callGroups;
  }

  [(NSArray *)callGroups addObject:groupsCopy];
}

- (void)setCallGroups:(id)groups
{
  v4 = [groups mutableCopy];
  callGroups = self->_callGroups;
  self->_callGroups = v4;

  MEMORY[0x1EEE66BB8](v4, callGroups);
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

- (void)setHasCallCapability:(BOOL)capability
{
  if (capability)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setCallCapability:(int)capability
{
  has = self->_has;
  if (capability == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_callCapability = capability;
  }
}

- (int)StringAsAudioRoute:(id)route
{
  routeCopy = route;
  if ([routeCopy isEqualToString:@"SPEAKERPHONE_AUDIO_ROUTE"])
  {
    v4 = 2;
  }

  else if ([routeCopy isEqualToString:@"BLUETOOTH_AUDIO_ROUTE"])
  {
    v4 = 3;
  }

  else if ([routeCopy isEqualToString:@"HEY_SIRI_AUDIO_ROUTE"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (void)setAudioRoute:(int)route
{
  has = self->_has;
  if (route == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_audioRoute = route;
  }
}

@end