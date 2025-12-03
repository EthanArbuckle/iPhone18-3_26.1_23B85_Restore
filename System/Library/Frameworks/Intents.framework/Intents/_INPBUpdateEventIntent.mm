@interface _INPBUpdateEventIntent
- (BOOL)isEqual:(id)equal;
- (_INPBUpdateEventIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAddParticipants:(id)participants;
- (void)addRemoveParticipants:(id)participants;
- (void)encodeWithCoder:(id)coder;
- (void)setAddParticipants:(id)participants;
- (void)setHasUpdateAllOccurrences:(BOOL)occurrences;
- (void)setRemoveParticipants:(id)participants;
- (void)setSetTitle:(id)title;
- (void)setTargetEventIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _INPBUpdateEventIntent

- (id)dictionaryRepresentation
{
  v42 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_addParticipants count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v5 = self->_addParticipants;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v37;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v37 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v36 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"addParticipants"];
  }

  intentMetadata = [(_INPBUpdateEventIntent *)self intentMetadata];
  dictionaryRepresentation2 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBUpdateEventIntent *)self hasRemoveLocation])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBUpdateEventIntent removeLocation](self, "removeLocation")}];
    [dictionary setObject:v13 forKeyedSubscript:@"removeLocation"];
  }

  if ([(NSArray *)self->_removeParticipants count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v15 = self->_removeParticipants;
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v33;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v33 != v18)
          {
            objc_enumerationMutation(v15);
          }

          dictionaryRepresentation3 = [*(*(&v32 + 1) + 8 * j) dictionaryRepresentation];
          [array2 addObject:dictionaryRepresentation3];
        }

        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v17);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"removeParticipants"];
  }

  setDateTimeRange = [(_INPBUpdateEventIntent *)self setDateTimeRange];
  dictionaryRepresentation4 = [setDateTimeRange dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"setDateTimeRange"];

  setLocation = [(_INPBUpdateEventIntent *)self setLocation];
  dictionaryRepresentation5 = [setLocation dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"setLocation"];

  if (self->_setTitle)
  {
    setTitle = [(_INPBUpdateEventIntent *)self setTitle];
    v26 = [setTitle copy];
    [dictionary setObject:v26 forKeyedSubscript:@"setTitle"];
  }

  if (self->_targetEventIdentifier)
  {
    targetEventIdentifier = [(_INPBUpdateEventIntent *)self targetEventIdentifier];
    v28 = [targetEventIdentifier copy];
    [dictionary setObject:v28 forKeyedSubscript:@"targetEventIdentifier"];
  }

  if ([(_INPBUpdateEventIntent *)self hasUpdateAllOccurrences])
  {
    v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBUpdateEventIntent updateAllOccurrences](self, "updateAllOccurrences")}];
    [dictionary setObject:v29 forKeyedSubscript:@"updateAllOccurrences"];
  }

  v30 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_addParticipants hash];
  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  if ([(_INPBUpdateEventIntent *)self hasRemoveLocation])
  {
    v5 = 2654435761 * self->_removeLocation;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSArray *)self->_removeParticipants hash];
  v7 = [(_INPBDateTimeRangeValue *)self->_setDateTimeRange hash];
  v8 = [(_INPBLocation *)self->_setLocation hash];
  v9 = [(NSString *)self->_setTitle hash];
  v10 = [(NSString *)self->_targetEventIdentifier hash];
  if ([(_INPBUpdateEventIntent *)self hasUpdateAllOccurrences])
  {
    v11 = 2654435761 * self->_updateAllOccurrences;
  }

  else
  {
    v11 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_41;
  }

  addParticipants = [(_INPBUpdateEventIntent *)self addParticipants];
  addParticipants2 = [equalCopy addParticipants];
  if ((addParticipants != 0) == (addParticipants2 == 0))
  {
    goto LABEL_40;
  }

  addParticipants3 = [(_INPBUpdateEventIntent *)self addParticipants];
  if (addParticipants3)
  {
    v8 = addParticipants3;
    addParticipants4 = [(_INPBUpdateEventIntent *)self addParticipants];
    addParticipants5 = [equalCopy addParticipants];
    v11 = [addParticipants4 isEqual:addParticipants5];

    if (!v11)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  addParticipants = [(_INPBUpdateEventIntent *)self intentMetadata];
  addParticipants2 = [equalCopy intentMetadata];
  if ((addParticipants != 0) == (addParticipants2 == 0))
  {
    goto LABEL_40;
  }

  intentMetadata = [(_INPBUpdateEventIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v13 = intentMetadata;
    intentMetadata2 = [(_INPBUpdateEventIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v16 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v16)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  hasRemoveLocation = [(_INPBUpdateEventIntent *)self hasRemoveLocation];
  if (hasRemoveLocation != [equalCopy hasRemoveLocation])
  {
    goto LABEL_41;
  }

  if ([(_INPBUpdateEventIntent *)self hasRemoveLocation])
  {
    if ([equalCopy hasRemoveLocation])
    {
      removeLocation = self->_removeLocation;
      if (removeLocation != [equalCopy removeLocation])
      {
        goto LABEL_41;
      }
    }
  }

  addParticipants = [(_INPBUpdateEventIntent *)self removeParticipants];
  addParticipants2 = [equalCopy removeParticipants];
  if ((addParticipants != 0) == (addParticipants2 == 0))
  {
    goto LABEL_40;
  }

  removeParticipants = [(_INPBUpdateEventIntent *)self removeParticipants];
  if (removeParticipants)
  {
    v20 = removeParticipants;
    removeParticipants2 = [(_INPBUpdateEventIntent *)self removeParticipants];
    removeParticipants3 = [equalCopy removeParticipants];
    v23 = [removeParticipants2 isEqual:removeParticipants3];

    if (!v23)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  addParticipants = [(_INPBUpdateEventIntent *)self setDateTimeRange];
  addParticipants2 = [equalCopy setDateTimeRange];
  if ((addParticipants != 0) == (addParticipants2 == 0))
  {
    goto LABEL_40;
  }

  setDateTimeRange = [(_INPBUpdateEventIntent *)self setDateTimeRange];
  if (setDateTimeRange)
  {
    v25 = setDateTimeRange;
    setDateTimeRange2 = [(_INPBUpdateEventIntent *)self setDateTimeRange];
    setDateTimeRange3 = [equalCopy setDateTimeRange];
    v28 = [setDateTimeRange2 isEqual:setDateTimeRange3];

    if (!v28)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  addParticipants = [(_INPBUpdateEventIntent *)self setLocation];
  addParticipants2 = [equalCopy setLocation];
  if ((addParticipants != 0) == (addParticipants2 == 0))
  {
    goto LABEL_40;
  }

  setLocation = [(_INPBUpdateEventIntent *)self setLocation];
  if (setLocation)
  {
    v30 = setLocation;
    setLocation2 = [(_INPBUpdateEventIntent *)self setLocation];
    setLocation3 = [equalCopy setLocation];
    v33 = [setLocation2 isEqual:setLocation3];

    if (!v33)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  addParticipants = [(_INPBUpdateEventIntent *)self setTitle];
  addParticipants2 = [equalCopy setTitle];
  if ((addParticipants != 0) == (addParticipants2 == 0))
  {
    goto LABEL_40;
  }

  setTitle = [(_INPBUpdateEventIntent *)self setTitle];
  if (setTitle)
  {
    v35 = setTitle;
    setTitle2 = [(_INPBUpdateEventIntent *)self setTitle];
    setTitle3 = [equalCopy setTitle];
    v38 = [setTitle2 isEqual:setTitle3];

    if (!v38)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  addParticipants = [(_INPBUpdateEventIntent *)self targetEventIdentifier];
  addParticipants2 = [equalCopy targetEventIdentifier];
  if ((addParticipants != 0) == (addParticipants2 == 0))
  {
LABEL_40:

    goto LABEL_41;
  }

  targetEventIdentifier = [(_INPBUpdateEventIntent *)self targetEventIdentifier];
  if (targetEventIdentifier)
  {
    v40 = targetEventIdentifier;
    targetEventIdentifier2 = [(_INPBUpdateEventIntent *)self targetEventIdentifier];
    targetEventIdentifier3 = [equalCopy targetEventIdentifier];
    v43 = [targetEventIdentifier2 isEqual:targetEventIdentifier3];

    if (!v43)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  hasUpdateAllOccurrences = [(_INPBUpdateEventIntent *)self hasUpdateAllOccurrences];
  if (hasUpdateAllOccurrences == [equalCopy hasUpdateAllOccurrences])
  {
    if (!-[_INPBUpdateEventIntent hasUpdateAllOccurrences](self, "hasUpdateAllOccurrences") || ![equalCopy hasUpdateAllOccurrences] || (updateAllOccurrences = self->_updateAllOccurrences, updateAllOccurrences == objc_msgSend(equalCopy, "updateAllOccurrences")))
    {
      v44 = 1;
      goto LABEL_42;
    }
  }

LABEL_41:
  v44 = 0;
LABEL_42:

  return v44;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBUpdateEventIntent allocWithZone:](_INPBUpdateEventIntent init];
  v6 = [(NSArray *)self->_addParticipants copyWithZone:zone];
  [(_INPBUpdateEventIntent *)v5 setAddParticipants:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBUpdateEventIntent *)v5 setIntentMetadata:v7];

  if ([(_INPBUpdateEventIntent *)self hasRemoveLocation])
  {
    [(_INPBUpdateEventIntent *)v5 setRemoveLocation:[(_INPBUpdateEventIntent *)self removeLocation]];
  }

  v8 = [(NSArray *)self->_removeParticipants copyWithZone:zone];
  [(_INPBUpdateEventIntent *)v5 setRemoveParticipants:v8];

  v9 = [(_INPBDateTimeRangeValue *)self->_setDateTimeRange copyWithZone:zone];
  [(_INPBUpdateEventIntent *)v5 setSetDateTimeRange:v9];

  v10 = [(_INPBLocation *)self->_setLocation copyWithZone:zone];
  [(_INPBUpdateEventIntent *)v5 setSetLocation:v10];

  v11 = [(NSString *)self->_setTitle copyWithZone:zone];
  [(_INPBUpdateEventIntent *)v5 setSetTitle:v11];

  v12 = [(NSString *)self->_targetEventIdentifier copyWithZone:zone];
  [(_INPBUpdateEventIntent *)v5 setTargetEventIdentifier:v12];

  if ([(_INPBUpdateEventIntent *)self hasUpdateAllOccurrences])
  {
    [(_INPBUpdateEventIntent *)v5 setUpdateAllOccurrences:[(_INPBUpdateEventIntent *)self updateAllOccurrences]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBUpdateEventIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBUpdateEventIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBUpdateEventIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v40 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = self->_addParticipants;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v35;
    do
    {
      v9 = 0;
      do
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v34 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v7);
  }

  intentMetadata = [(_INPBUpdateEventIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBUpdateEventIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBUpdateEventIntent *)self hasRemoveLocation])
  {
    removeLocation = self->_removeLocation;
    PBDataWriterWriteBOOLField();
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v14 = self->_removeParticipants;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v31;
    do
    {
      v18 = 0;
      do
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v30 + 1) + 8 * v18);
        PBDataWriterWriteSubmessage();
        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v16);
  }

  setDateTimeRange = [(_INPBUpdateEventIntent *)self setDateTimeRange];

  if (setDateTimeRange)
  {
    setDateTimeRange2 = [(_INPBUpdateEventIntent *)self setDateTimeRange];
    PBDataWriterWriteSubmessage();
  }

  setLocation = [(_INPBUpdateEventIntent *)self setLocation];

  if (setLocation)
  {
    setLocation2 = [(_INPBUpdateEventIntent *)self setLocation];
    PBDataWriterWriteSubmessage();
  }

  setTitle = [(_INPBUpdateEventIntent *)self setTitle];

  if (setTitle)
  {
    setTitle = self->_setTitle;
    PBDataWriterWriteStringField();
  }

  targetEventIdentifier = [(_INPBUpdateEventIntent *)self targetEventIdentifier];

  if (targetEventIdentifier)
  {
    targetEventIdentifier = self->_targetEventIdentifier;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBUpdateEventIntent *)self hasUpdateAllOccurrences])
  {
    updateAllOccurrences = self->_updateAllOccurrences;
    PBDataWriterWriteBOOLField();
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)setHasUpdateAllOccurrences:(BOOL)occurrences
{
  if (occurrences)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setTargetEventIdentifier:(id)identifier
{
  v4 = [identifier copy];
  targetEventIdentifier = self->_targetEventIdentifier;
  self->_targetEventIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, targetEventIdentifier);
}

- (void)setSetTitle:(id)title
{
  v4 = [title copy];
  setTitle = self->_setTitle;
  self->_setTitle = v4;

  MEMORY[0x1EEE66BB8](v4, setTitle);
}

- (void)addRemoveParticipants:(id)participants
{
  participantsCopy = participants;
  removeParticipants = self->_removeParticipants;
  v8 = participantsCopy;
  if (!removeParticipants)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_removeParticipants;
    self->_removeParticipants = array;

    participantsCopy = v8;
    removeParticipants = self->_removeParticipants;
  }

  [(NSArray *)removeParticipants addObject:participantsCopy];
}

- (void)setRemoveParticipants:(id)participants
{
  v4 = [participants mutableCopy];
  removeParticipants = self->_removeParticipants;
  self->_removeParticipants = v4;

  MEMORY[0x1EEE66BB8](v4, removeParticipants);
}

- (void)addAddParticipants:(id)participants
{
  participantsCopy = participants;
  addParticipants = self->_addParticipants;
  v8 = participantsCopy;
  if (!addParticipants)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_addParticipants;
    self->_addParticipants = array;

    participantsCopy = v8;
    addParticipants = self->_addParticipants;
  }

  [(NSArray *)addParticipants addObject:participantsCopy];
}

- (void)setAddParticipants:(id)participants
{
  v4 = [participants mutableCopy];
  addParticipants = self->_addParticipants;
  self->_addParticipants = v4;

  MEMORY[0x1EEE66BB8](v4, addParticipants);
}

@end