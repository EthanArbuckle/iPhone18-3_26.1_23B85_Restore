@interface _INPBUpdateEventIntent
- (BOOL)isEqual:(id)a3;
- (_INPBUpdateEventIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAddParticipants:(id)a3;
- (void)addRemoveParticipants:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAddParticipants:(id)a3;
- (void)setHasUpdateAllOccurrences:(BOOL)a3;
- (void)setRemoveParticipants:(id)a3;
- (void)setSetTitle:(id)a3;
- (void)setTargetEventIdentifier:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBUpdateEventIntent

- (id)dictionaryRepresentation
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_addParticipants count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
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

          v10 = [*(*(&v36 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"addParticipants"];
  }

  v11 = [(_INPBUpdateEventIntent *)self intentMetadata];
  v12 = [v11 dictionaryRepresentation];
  [v3 setObject:v12 forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBUpdateEventIntent *)self hasRemoveLocation])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBUpdateEventIntent removeLocation](self, "removeLocation")}];
    [v3 setObject:v13 forKeyedSubscript:@"removeLocation"];
  }

  if ([(NSArray *)self->_removeParticipants count])
  {
    v14 = [MEMORY[0x1E695DF70] array];
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

          v20 = [*(*(&v32 + 1) + 8 * j) dictionaryRepresentation];
          [v14 addObject:v20];
        }

        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v17);
    }

    [v3 setObject:v14 forKeyedSubscript:@"removeParticipants"];
  }

  v21 = [(_INPBUpdateEventIntent *)self setDateTimeRange];
  v22 = [v21 dictionaryRepresentation];
  [v3 setObject:v22 forKeyedSubscript:@"setDateTimeRange"];

  v23 = [(_INPBUpdateEventIntent *)self setLocation];
  v24 = [v23 dictionaryRepresentation];
  [v3 setObject:v24 forKeyedSubscript:@"setLocation"];

  if (self->_setTitle)
  {
    v25 = [(_INPBUpdateEventIntent *)self setTitle];
    v26 = [v25 copy];
    [v3 setObject:v26 forKeyedSubscript:@"setTitle"];
  }

  if (self->_targetEventIdentifier)
  {
    v27 = [(_INPBUpdateEventIntent *)self targetEventIdentifier];
    v28 = [v27 copy];
    [v3 setObject:v28 forKeyedSubscript:@"targetEventIdentifier"];
  }

  if ([(_INPBUpdateEventIntent *)self hasUpdateAllOccurrences])
  {
    v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBUpdateEventIntent updateAllOccurrences](self, "updateAllOccurrences")}];
    [v3 setObject:v29 forKeyedSubscript:@"updateAllOccurrences"];
  }

  v30 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_41;
  }

  v5 = [(_INPBUpdateEventIntent *)self addParticipants];
  v6 = [v4 addParticipants];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_40;
  }

  v7 = [(_INPBUpdateEventIntent *)self addParticipants];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBUpdateEventIntent *)self addParticipants];
    v10 = [v4 addParticipants];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  v5 = [(_INPBUpdateEventIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_40;
  }

  v12 = [(_INPBUpdateEventIntent *)self intentMetadata];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBUpdateEventIntent *)self intentMetadata];
    v15 = [v4 intentMetadata];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  v17 = [(_INPBUpdateEventIntent *)self hasRemoveLocation];
  if (v17 != [v4 hasRemoveLocation])
  {
    goto LABEL_41;
  }

  if ([(_INPBUpdateEventIntent *)self hasRemoveLocation])
  {
    if ([v4 hasRemoveLocation])
    {
      removeLocation = self->_removeLocation;
      if (removeLocation != [v4 removeLocation])
      {
        goto LABEL_41;
      }
    }
  }

  v5 = [(_INPBUpdateEventIntent *)self removeParticipants];
  v6 = [v4 removeParticipants];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_40;
  }

  v19 = [(_INPBUpdateEventIntent *)self removeParticipants];
  if (v19)
  {
    v20 = v19;
    v21 = [(_INPBUpdateEventIntent *)self removeParticipants];
    v22 = [v4 removeParticipants];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  v5 = [(_INPBUpdateEventIntent *)self setDateTimeRange];
  v6 = [v4 setDateTimeRange];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_40;
  }

  v24 = [(_INPBUpdateEventIntent *)self setDateTimeRange];
  if (v24)
  {
    v25 = v24;
    v26 = [(_INPBUpdateEventIntent *)self setDateTimeRange];
    v27 = [v4 setDateTimeRange];
    v28 = [v26 isEqual:v27];

    if (!v28)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  v5 = [(_INPBUpdateEventIntent *)self setLocation];
  v6 = [v4 setLocation];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_40;
  }

  v29 = [(_INPBUpdateEventIntent *)self setLocation];
  if (v29)
  {
    v30 = v29;
    v31 = [(_INPBUpdateEventIntent *)self setLocation];
    v32 = [v4 setLocation];
    v33 = [v31 isEqual:v32];

    if (!v33)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  v5 = [(_INPBUpdateEventIntent *)self setTitle];
  v6 = [v4 setTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_40;
  }

  v34 = [(_INPBUpdateEventIntent *)self setTitle];
  if (v34)
  {
    v35 = v34;
    v36 = [(_INPBUpdateEventIntent *)self setTitle];
    v37 = [v4 setTitle];
    v38 = [v36 isEqual:v37];

    if (!v38)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  v5 = [(_INPBUpdateEventIntent *)self targetEventIdentifier];
  v6 = [v4 targetEventIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_40:

    goto LABEL_41;
  }

  v39 = [(_INPBUpdateEventIntent *)self targetEventIdentifier];
  if (v39)
  {
    v40 = v39;
    v41 = [(_INPBUpdateEventIntent *)self targetEventIdentifier];
    v42 = [v4 targetEventIdentifier];
    v43 = [v41 isEqual:v42];

    if (!v43)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  v46 = [(_INPBUpdateEventIntent *)self hasUpdateAllOccurrences];
  if (v46 == [v4 hasUpdateAllOccurrences])
  {
    if (!-[_INPBUpdateEventIntent hasUpdateAllOccurrences](self, "hasUpdateAllOccurrences") || ![v4 hasUpdateAllOccurrences] || (updateAllOccurrences = self->_updateAllOccurrences, updateAllOccurrences == objc_msgSend(v4, "updateAllOccurrences")))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBUpdateEventIntent allocWithZone:](_INPBUpdateEventIntent init];
  v6 = [(NSArray *)self->_addParticipants copyWithZone:a3];
  [(_INPBUpdateEventIntent *)v5 setAddParticipants:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBUpdateEventIntent *)v5 setIntentMetadata:v7];

  if ([(_INPBUpdateEventIntent *)self hasRemoveLocation])
  {
    [(_INPBUpdateEventIntent *)v5 setRemoveLocation:[(_INPBUpdateEventIntent *)self removeLocation]];
  }

  v8 = [(NSArray *)self->_removeParticipants copyWithZone:a3];
  [(_INPBUpdateEventIntent *)v5 setRemoveParticipants:v8];

  v9 = [(_INPBDateTimeRangeValue *)self->_setDateTimeRange copyWithZone:a3];
  [(_INPBUpdateEventIntent *)v5 setSetDateTimeRange:v9];

  v10 = [(_INPBLocation *)self->_setLocation copyWithZone:a3];
  [(_INPBUpdateEventIntent *)v5 setSetLocation:v10];

  v11 = [(NSString *)self->_setTitle copyWithZone:a3];
  [(_INPBUpdateEventIntent *)v5 setSetTitle:v11];

  v12 = [(NSString *)self->_targetEventIdentifier copyWithZone:a3];
  [(_INPBUpdateEventIntent *)v5 setTargetEventIdentifier:v12];

  if ([(_INPBUpdateEventIntent *)self hasUpdateAllOccurrences])
  {
    [(_INPBUpdateEventIntent *)v5 setUpdateAllOccurrences:[(_INPBUpdateEventIntent *)self updateAllOccurrences]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBUpdateEventIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBUpdateEventIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBUpdateEventIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v11 = [(_INPBUpdateEventIntent *)self intentMetadata];

  if (v11)
  {
    v12 = [(_INPBUpdateEventIntent *)self intentMetadata];
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

  v20 = [(_INPBUpdateEventIntent *)self setDateTimeRange];

  if (v20)
  {
    v21 = [(_INPBUpdateEventIntent *)self setDateTimeRange];
    PBDataWriterWriteSubmessage();
  }

  v22 = [(_INPBUpdateEventIntent *)self setLocation];

  if (v22)
  {
    v23 = [(_INPBUpdateEventIntent *)self setLocation];
    PBDataWriterWriteSubmessage();
  }

  v24 = [(_INPBUpdateEventIntent *)self setTitle];

  if (v24)
  {
    setTitle = self->_setTitle;
    PBDataWriterWriteStringField();
  }

  v26 = [(_INPBUpdateEventIntent *)self targetEventIdentifier];

  if (v26)
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

- (void)setHasUpdateAllOccurrences:(BOOL)a3
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

- (void)setTargetEventIdentifier:(id)a3
{
  v4 = [a3 copy];
  targetEventIdentifier = self->_targetEventIdentifier;
  self->_targetEventIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, targetEventIdentifier);
}

- (void)setSetTitle:(id)a3
{
  v4 = [a3 copy];
  setTitle = self->_setTitle;
  self->_setTitle = v4;

  MEMORY[0x1EEE66BB8](v4, setTitle);
}

- (void)addRemoveParticipants:(id)a3
{
  v4 = a3;
  removeParticipants = self->_removeParticipants;
  v8 = v4;
  if (!removeParticipants)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_removeParticipants;
    self->_removeParticipants = v6;

    v4 = v8;
    removeParticipants = self->_removeParticipants;
  }

  [(NSArray *)removeParticipants addObject:v4];
}

- (void)setRemoveParticipants:(id)a3
{
  v4 = [a3 mutableCopy];
  removeParticipants = self->_removeParticipants;
  self->_removeParticipants = v4;

  MEMORY[0x1EEE66BB8](v4, removeParticipants);
}

- (void)addAddParticipants:(id)a3
{
  v4 = a3;
  addParticipants = self->_addParticipants;
  v8 = v4;
  if (!addParticipants)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_addParticipants;
    self->_addParticipants = v6;

    v4 = v8;
    addParticipants = self->_addParticipants;
  }

  [(NSArray *)addParticipants addObject:v4];
}

- (void)setAddParticipants:(id)a3
{
  v4 = [a3 mutableCopy];
  addParticipants = self->_addParticipants;
  self->_addParticipants = v4;

  MEMORY[0x1EEE66BB8](v4, addParticipants);
}

@end