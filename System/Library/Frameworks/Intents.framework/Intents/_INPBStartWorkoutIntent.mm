@interface _INPBStartWorkoutIntent
- (BOOL)isEqual:(id)a3;
- (_INPBStartWorkoutIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsSequenceLabel:(id)a3;
- (int)StringAsWorkoutGoalUnitType:(id)a3;
- (int)StringAsWorkoutLocationType:(id)a3;
- (unint64_t)hash;
- (void)addAssociatedItems:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAssociatedItems:(id)a3;
- (void)setHasIsOpenEnded:(BOOL)a3;
- (void)setHasIsVoiceOnly:(BOOL)a3;
- (void)setHasSequenceLabel:(BOOL)a3;
- (void)setHasWorkoutGoalUnitType:(BOOL)a3;
- (void)setHasWorkoutLocationType:(BOOL)a3;
- (void)setSequenceLabel:(int)a3;
- (void)setWorkoutGoalUnitType:(int)a3;
- (void)setWorkoutLocationType:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBStartWorkoutIntent

- (id)dictionaryRepresentation
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_associatedItems count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v5 = self->_associatedItems;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v31;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v31 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v30 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"associatedItems"];
  }

  v11 = [(_INPBStartWorkoutIntent *)self customization];
  v12 = [v11 dictionaryRepresentation];
  [v3 setObject:v12 forKeyedSubscript:@"customization"];

  v13 = [(_INPBStartWorkoutIntent *)self goalValue];
  v14 = [v13 dictionaryRepresentation];
  [v3 setObject:v14 forKeyedSubscript:@"goalValue"];

  v15 = [(_INPBStartWorkoutIntent *)self intentMetadata];
  v16 = [v15 dictionaryRepresentation];
  [v3 setObject:v16 forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBStartWorkoutIntent *)self hasIsBuiltInWorkoutType])
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBStartWorkoutIntent isBuiltInWorkoutType](self, "isBuiltInWorkoutType")}];
    [v3 setObject:v17 forKeyedSubscript:@"isBuiltInWorkoutType"];
  }

  if ([(_INPBStartWorkoutIntent *)self hasIsOpenEnded])
  {
    v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBStartWorkoutIntent isOpenEnded](self, "isOpenEnded")}];
    [v3 setObject:v18 forKeyedSubscript:@"isOpenEnded"];
  }

  if ([(_INPBStartWorkoutIntent *)self hasIsVoiceOnly])
  {
    v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBStartWorkoutIntent isVoiceOnly](self, "isVoiceOnly")}];
    [v3 setObject:v19 forKeyedSubscript:@"isVoiceOnly"];
  }

  if ([(_INPBStartWorkoutIntent *)self hasSequenceLabel])
  {
    v20 = [(_INPBStartWorkoutIntent *)self sequenceLabel];
    if (v20)
    {
      if (v20 == 1)
      {
        v21 = @"next";
      }

      else
      {
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v20];
      }
    }

    else
    {
      v21 = @"last";
    }

    [v3 setObject:v21 forKeyedSubscript:@"sequenceLabel"];
  }

  if ([(_INPBStartWorkoutIntent *)self hasWorkoutGoalUnitType])
  {
    v22 = [(_INPBStartWorkoutIntent *)self workoutGoalUnitType];
    if (v22 >= 0xA)
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v22];
    }

    else
    {
      v23 = off_1E7283B80[v22];
    }

    [v3 setObject:v23 forKeyedSubscript:@"workoutGoalUnitType"];
  }

  if ([(_INPBStartWorkoutIntent *)self hasWorkoutLocationType])
  {
    v24 = [(_INPBStartWorkoutIntent *)self workoutLocationType];
    if (v24)
    {
      if (v24 == 1)
      {
        v25 = @"INDOOR";
      }

      else
      {
        v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v24];
      }
    }

    else
    {
      v25 = @"OUTDOOR";
    }

    [v3 setObject:v25 forKeyedSubscript:@"workoutLocationType"];
  }

  v26 = [(_INPBStartWorkoutIntent *)self workoutName];
  v27 = [v26 dictionaryRepresentation];
  [v3 setObject:v27 forKeyedSubscript:@"workoutName"];

  v28 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v13 = [(NSArray *)self->_associatedItems hash];
  v3 = [(_INPBWorkoutCustomization *)self->_customization hash];
  v4 = [(_INPBDouble *)self->_goalValue hash];
  v5 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  if ([(_INPBStartWorkoutIntent *)self hasIsBuiltInWorkoutType])
  {
    v6 = 2654435761 * self->_isBuiltInWorkoutType;
  }

  else
  {
    v6 = 0;
  }

  if ([(_INPBStartWorkoutIntent *)self hasIsOpenEnded])
  {
    v7 = 2654435761 * self->_isOpenEnded;
  }

  else
  {
    v7 = 0;
  }

  if ([(_INPBStartWorkoutIntent *)self hasIsVoiceOnly])
  {
    v8 = 2654435761 * self->_isVoiceOnly;
  }

  else
  {
    v8 = 0;
  }

  if ([(_INPBStartWorkoutIntent *)self hasSequenceLabel])
  {
    v9 = 2654435761 * self->_sequenceLabel;
  }

  else
  {
    v9 = 0;
  }

  if ([(_INPBStartWorkoutIntent *)self hasWorkoutGoalUnitType])
  {
    v10 = 2654435761 * self->_workoutGoalUnitType;
  }

  else
  {
    v10 = 0;
  }

  if ([(_INPBStartWorkoutIntent *)self hasWorkoutLocationType])
  {
    v11 = 2654435761 * self->_workoutLocationType;
  }

  else
  {
    v11 = 0;
  }

  return v3 ^ v13 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(_INPBDataString *)self->_workoutName hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_51;
  }

  v5 = [(_INPBStartWorkoutIntent *)self associatedItems];
  v6 = [v4 associatedItems];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_50;
  }

  v7 = [(_INPBStartWorkoutIntent *)self associatedItems];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBStartWorkoutIntent *)self associatedItems];
    v10 = [v4 associatedItems];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  v5 = [(_INPBStartWorkoutIntent *)self customization];
  v6 = [v4 customization];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_50;
  }

  v12 = [(_INPBStartWorkoutIntent *)self customization];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBStartWorkoutIntent *)self customization];
    v15 = [v4 customization];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  v5 = [(_INPBStartWorkoutIntent *)self goalValue];
  v6 = [v4 goalValue];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_50;
  }

  v17 = [(_INPBStartWorkoutIntent *)self goalValue];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBStartWorkoutIntent *)self goalValue];
    v20 = [v4 goalValue];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  v5 = [(_INPBStartWorkoutIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_50;
  }

  v22 = [(_INPBStartWorkoutIntent *)self intentMetadata];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBStartWorkoutIntent *)self intentMetadata];
    v25 = [v4 intentMetadata];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  v27 = [(_INPBStartWorkoutIntent *)self hasIsBuiltInWorkoutType];
  if (v27 != [v4 hasIsBuiltInWorkoutType])
  {
    goto LABEL_51;
  }

  if ([(_INPBStartWorkoutIntent *)self hasIsBuiltInWorkoutType])
  {
    if ([v4 hasIsBuiltInWorkoutType])
    {
      isBuiltInWorkoutType = self->_isBuiltInWorkoutType;
      if (isBuiltInWorkoutType != [v4 isBuiltInWorkoutType])
      {
        goto LABEL_51;
      }
    }
  }

  v29 = [(_INPBStartWorkoutIntent *)self hasIsOpenEnded];
  if (v29 != [v4 hasIsOpenEnded])
  {
    goto LABEL_51;
  }

  if ([(_INPBStartWorkoutIntent *)self hasIsOpenEnded])
  {
    if ([v4 hasIsOpenEnded])
    {
      isOpenEnded = self->_isOpenEnded;
      if (isOpenEnded != [v4 isOpenEnded])
      {
        goto LABEL_51;
      }
    }
  }

  v31 = [(_INPBStartWorkoutIntent *)self hasIsVoiceOnly];
  if (v31 != [v4 hasIsVoiceOnly])
  {
    goto LABEL_51;
  }

  if ([(_INPBStartWorkoutIntent *)self hasIsVoiceOnly])
  {
    if ([v4 hasIsVoiceOnly])
    {
      isVoiceOnly = self->_isVoiceOnly;
      if (isVoiceOnly != [v4 isVoiceOnly])
      {
        goto LABEL_51;
      }
    }
  }

  v33 = [(_INPBStartWorkoutIntent *)self hasSequenceLabel];
  if (v33 != [v4 hasSequenceLabel])
  {
    goto LABEL_51;
  }

  if ([(_INPBStartWorkoutIntent *)self hasSequenceLabel])
  {
    if ([v4 hasSequenceLabel])
    {
      sequenceLabel = self->_sequenceLabel;
      if (sequenceLabel != [v4 sequenceLabel])
      {
        goto LABEL_51;
      }
    }
  }

  v35 = [(_INPBStartWorkoutIntent *)self hasWorkoutGoalUnitType];
  if (v35 != [v4 hasWorkoutGoalUnitType])
  {
    goto LABEL_51;
  }

  if ([(_INPBStartWorkoutIntent *)self hasWorkoutGoalUnitType])
  {
    if ([v4 hasWorkoutGoalUnitType])
    {
      workoutGoalUnitType = self->_workoutGoalUnitType;
      if (workoutGoalUnitType != [v4 workoutGoalUnitType])
      {
        goto LABEL_51;
      }
    }
  }

  v37 = [(_INPBStartWorkoutIntent *)self hasWorkoutLocationType];
  if (v37 != [v4 hasWorkoutLocationType])
  {
    goto LABEL_51;
  }

  if ([(_INPBStartWorkoutIntent *)self hasWorkoutLocationType])
  {
    if ([v4 hasWorkoutLocationType])
    {
      workoutLocationType = self->_workoutLocationType;
      if (workoutLocationType != [v4 workoutLocationType])
      {
        goto LABEL_51;
      }
    }
  }

  v5 = [(_INPBStartWorkoutIntent *)self workoutName];
  v6 = [v4 workoutName];
  if ((v5 != 0) != (v6 == 0))
  {
    v39 = [(_INPBStartWorkoutIntent *)self workoutName];
    if (!v39)
    {

LABEL_54:
      v44 = 1;
      goto LABEL_52;
    }

    v40 = v39;
    v41 = [(_INPBStartWorkoutIntent *)self workoutName];
    v42 = [v4 workoutName];
    v43 = [v41 isEqual:v42];

    if (v43)
    {
      goto LABEL_54;
    }
  }

  else
  {
LABEL_50:
  }

LABEL_51:
  v44 = 0;
LABEL_52:

  return v44;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBStartWorkoutIntent allocWithZone:](_INPBStartWorkoutIntent init];
  v6 = [(NSArray *)self->_associatedItems copyWithZone:a3];
  [(_INPBStartWorkoutIntent *)v5 setAssociatedItems:v6];

  v7 = [(_INPBWorkoutCustomization *)self->_customization copyWithZone:a3];
  [(_INPBStartWorkoutIntent *)v5 setCustomization:v7];

  v8 = [(_INPBDouble *)self->_goalValue copyWithZone:a3];
  [(_INPBStartWorkoutIntent *)v5 setGoalValue:v8];

  v9 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBStartWorkoutIntent *)v5 setIntentMetadata:v9];

  if ([(_INPBStartWorkoutIntent *)self hasIsBuiltInWorkoutType])
  {
    [(_INPBStartWorkoutIntent *)v5 setIsBuiltInWorkoutType:[(_INPBStartWorkoutIntent *)self isBuiltInWorkoutType]];
  }

  if ([(_INPBStartWorkoutIntent *)self hasIsOpenEnded])
  {
    [(_INPBStartWorkoutIntent *)v5 setIsOpenEnded:[(_INPBStartWorkoutIntent *)self isOpenEnded]];
  }

  if ([(_INPBStartWorkoutIntent *)self hasIsVoiceOnly])
  {
    [(_INPBStartWorkoutIntent *)v5 setIsVoiceOnly:[(_INPBStartWorkoutIntent *)self isVoiceOnly]];
  }

  if ([(_INPBStartWorkoutIntent *)self hasSequenceLabel])
  {
    [(_INPBStartWorkoutIntent *)v5 setSequenceLabel:[(_INPBStartWorkoutIntent *)self sequenceLabel]];
  }

  if ([(_INPBStartWorkoutIntent *)self hasWorkoutGoalUnitType])
  {
    [(_INPBStartWorkoutIntent *)v5 setWorkoutGoalUnitType:[(_INPBStartWorkoutIntent *)self workoutGoalUnitType]];
  }

  if ([(_INPBStartWorkoutIntent *)self hasWorkoutLocationType])
  {
    [(_INPBStartWorkoutIntent *)v5 setWorkoutLocationType:[(_INPBStartWorkoutIntent *)self workoutLocationType]];
  }

  v10 = [(_INPBDataString *)self->_workoutName copyWithZone:a3];
  [(_INPBStartWorkoutIntent *)v5 setWorkoutName:v10];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBStartWorkoutIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBStartWorkoutIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBStartWorkoutIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = self->_associatedItems;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      v9 = 0;
      do
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v26 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v7);
  }

  v11 = [(_INPBStartWorkoutIntent *)self customization];

  if (v11)
  {
    v12 = [(_INPBStartWorkoutIntent *)self customization];
    PBDataWriterWriteSubmessage();
  }

  v13 = [(_INPBStartWorkoutIntent *)self goalValue];

  if (v13)
  {
    v14 = [(_INPBStartWorkoutIntent *)self goalValue];
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_INPBStartWorkoutIntent *)self intentMetadata];

  if (v15)
  {
    v16 = [(_INPBStartWorkoutIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBStartWorkoutIntent *)self hasIsBuiltInWorkoutType])
  {
    isBuiltInWorkoutType = self->_isBuiltInWorkoutType;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBStartWorkoutIntent *)self hasIsOpenEnded])
  {
    isOpenEnded = self->_isOpenEnded;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBStartWorkoutIntent *)self hasIsVoiceOnly])
  {
    isVoiceOnly = self->_isVoiceOnly;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBStartWorkoutIntent *)self hasSequenceLabel])
  {
    sequenceLabel = self->_sequenceLabel;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBStartWorkoutIntent *)self hasWorkoutGoalUnitType])
  {
    workoutGoalUnitType = self->_workoutGoalUnitType;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBStartWorkoutIntent *)self hasWorkoutLocationType])
  {
    workoutLocationType = self->_workoutLocationType;
    PBDataWriterWriteInt32Field();
  }

  v23 = [(_INPBStartWorkoutIntent *)self workoutName];

  if (v23)
  {
    v24 = [(_INPBStartWorkoutIntent *)self workoutName];
    PBDataWriterWriteSubmessage();
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (int)StringAsWorkoutLocationType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"OUTDOOR"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"INDOOR"];
  }

  return v4;
}

- (void)setHasWorkoutLocationType:(BOOL)a3
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

- (void)setWorkoutLocationType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xDF;
  }

  else
  {
    *&self->_has = has | 0x20;
    self->_workoutLocationType = a3;
  }
}

- (int)StringAsWorkoutGoalUnitType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Inch"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Meter"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Foot"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Mile"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Yard"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Second"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"Minute"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"Hour"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"Joule"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"KiloCalorie"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasWorkoutGoalUnitType:(BOOL)a3
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

- (void)setWorkoutGoalUnitType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xEF;
  }

  else
  {
    *&self->_has = has | 0x10;
    self->_workoutGoalUnitType = a3;
  }
}

- (int)StringAsSequenceLabel:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"last"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"next"];
  }

  return v4;
}

- (void)setHasSequenceLabel:(BOOL)a3
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

- (void)setSequenceLabel:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xF7;
  }

  else
  {
    *&self->_has = has | 8;
    self->_sequenceLabel = a3;
  }
}

- (void)setHasIsVoiceOnly:(BOOL)a3
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

- (void)setHasIsOpenEnded:(BOOL)a3
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

- (void)addAssociatedItems:(id)a3
{
  v4 = a3;
  associatedItems = self->_associatedItems;
  v8 = v4;
  if (!associatedItems)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_associatedItems;
    self->_associatedItems = v6;

    v4 = v8;
    associatedItems = self->_associatedItems;
  }

  [(NSArray *)associatedItems addObject:v4];
}

- (void)setAssociatedItems:(id)a3
{
  v4 = [a3 mutableCopy];
  associatedItems = self->_associatedItems;
  self->_associatedItems = v4;

  MEMORY[0x1EEE66BB8](v4, associatedItems);
}

@end