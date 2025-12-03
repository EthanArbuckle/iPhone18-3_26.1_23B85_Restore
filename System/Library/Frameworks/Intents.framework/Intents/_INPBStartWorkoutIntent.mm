@interface _INPBStartWorkoutIntent
- (BOOL)isEqual:(id)equal;
- (_INPBStartWorkoutIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsSequenceLabel:(id)label;
- (int)StringAsWorkoutGoalUnitType:(id)type;
- (int)StringAsWorkoutLocationType:(id)type;
- (unint64_t)hash;
- (void)addAssociatedItems:(id)items;
- (void)encodeWithCoder:(id)coder;
- (void)setAssociatedItems:(id)items;
- (void)setHasIsOpenEnded:(BOOL)ended;
- (void)setHasIsVoiceOnly:(BOOL)only;
- (void)setHasSequenceLabel:(BOOL)label;
- (void)setHasWorkoutGoalUnitType:(BOOL)type;
- (void)setHasWorkoutLocationType:(BOOL)type;
- (void)setSequenceLabel:(int)label;
- (void)setWorkoutGoalUnitType:(int)type;
- (void)setWorkoutLocationType:(int)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBStartWorkoutIntent

- (id)dictionaryRepresentation
{
  v35 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_associatedItems count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v30 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"associatedItems"];
  }

  customization = [(_INPBStartWorkoutIntent *)self customization];
  dictionaryRepresentation2 = [customization dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"customization"];

  goalValue = [(_INPBStartWorkoutIntent *)self goalValue];
  dictionaryRepresentation3 = [goalValue dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"goalValue"];

  intentMetadata = [(_INPBStartWorkoutIntent *)self intentMetadata];
  dictionaryRepresentation4 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBStartWorkoutIntent *)self hasIsBuiltInWorkoutType])
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBStartWorkoutIntent isBuiltInWorkoutType](self, "isBuiltInWorkoutType")}];
    [dictionary setObject:v17 forKeyedSubscript:@"isBuiltInWorkoutType"];
  }

  if ([(_INPBStartWorkoutIntent *)self hasIsOpenEnded])
  {
    v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBStartWorkoutIntent isOpenEnded](self, "isOpenEnded")}];
    [dictionary setObject:v18 forKeyedSubscript:@"isOpenEnded"];
  }

  if ([(_INPBStartWorkoutIntent *)self hasIsVoiceOnly])
  {
    v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBStartWorkoutIntent isVoiceOnly](self, "isVoiceOnly")}];
    [dictionary setObject:v19 forKeyedSubscript:@"isVoiceOnly"];
  }

  if ([(_INPBStartWorkoutIntent *)self hasSequenceLabel])
  {
    sequenceLabel = [(_INPBStartWorkoutIntent *)self sequenceLabel];
    if (sequenceLabel)
    {
      if (sequenceLabel == 1)
      {
        v21 = @"next";
      }

      else
      {
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", sequenceLabel];
      }
    }

    else
    {
      v21 = @"last";
    }

    [dictionary setObject:v21 forKeyedSubscript:@"sequenceLabel"];
  }

  if ([(_INPBStartWorkoutIntent *)self hasWorkoutGoalUnitType])
  {
    workoutGoalUnitType = [(_INPBStartWorkoutIntent *)self workoutGoalUnitType];
    if (workoutGoalUnitType >= 0xA)
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", workoutGoalUnitType];
    }

    else
    {
      v23 = off_1E7283B80[workoutGoalUnitType];
    }

    [dictionary setObject:v23 forKeyedSubscript:@"workoutGoalUnitType"];
  }

  if ([(_INPBStartWorkoutIntent *)self hasWorkoutLocationType])
  {
    workoutLocationType = [(_INPBStartWorkoutIntent *)self workoutLocationType];
    if (workoutLocationType)
    {
      if (workoutLocationType == 1)
      {
        v25 = @"INDOOR";
      }

      else
      {
        v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", workoutLocationType];
      }
    }

    else
    {
      v25 = @"OUTDOOR";
    }

    [dictionary setObject:v25 forKeyedSubscript:@"workoutLocationType"];
  }

  workoutName = [(_INPBStartWorkoutIntent *)self workoutName];
  dictionaryRepresentation5 = [workoutName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"workoutName"];

  v28 = *MEMORY[0x1E69E9840];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_51;
  }

  associatedItems = [(_INPBStartWorkoutIntent *)self associatedItems];
  associatedItems2 = [equalCopy associatedItems];
  if ((associatedItems != 0) == (associatedItems2 == 0))
  {
    goto LABEL_50;
  }

  associatedItems3 = [(_INPBStartWorkoutIntent *)self associatedItems];
  if (associatedItems3)
  {
    v8 = associatedItems3;
    associatedItems4 = [(_INPBStartWorkoutIntent *)self associatedItems];
    associatedItems5 = [equalCopy associatedItems];
    v11 = [associatedItems4 isEqual:associatedItems5];

    if (!v11)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  associatedItems = [(_INPBStartWorkoutIntent *)self customization];
  associatedItems2 = [equalCopy customization];
  if ((associatedItems != 0) == (associatedItems2 == 0))
  {
    goto LABEL_50;
  }

  customization = [(_INPBStartWorkoutIntent *)self customization];
  if (customization)
  {
    v13 = customization;
    customization2 = [(_INPBStartWorkoutIntent *)self customization];
    customization3 = [equalCopy customization];
    v16 = [customization2 isEqual:customization3];

    if (!v16)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  associatedItems = [(_INPBStartWorkoutIntent *)self goalValue];
  associatedItems2 = [equalCopy goalValue];
  if ((associatedItems != 0) == (associatedItems2 == 0))
  {
    goto LABEL_50;
  }

  goalValue = [(_INPBStartWorkoutIntent *)self goalValue];
  if (goalValue)
  {
    v18 = goalValue;
    goalValue2 = [(_INPBStartWorkoutIntent *)self goalValue];
    goalValue3 = [equalCopy goalValue];
    v21 = [goalValue2 isEqual:goalValue3];

    if (!v21)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  associatedItems = [(_INPBStartWorkoutIntent *)self intentMetadata];
  associatedItems2 = [equalCopy intentMetadata];
  if ((associatedItems != 0) == (associatedItems2 == 0))
  {
    goto LABEL_50;
  }

  intentMetadata = [(_INPBStartWorkoutIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v23 = intentMetadata;
    intentMetadata2 = [(_INPBStartWorkoutIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v26 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v26)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  hasIsBuiltInWorkoutType = [(_INPBStartWorkoutIntent *)self hasIsBuiltInWorkoutType];
  if (hasIsBuiltInWorkoutType != [equalCopy hasIsBuiltInWorkoutType])
  {
    goto LABEL_51;
  }

  if ([(_INPBStartWorkoutIntent *)self hasIsBuiltInWorkoutType])
  {
    if ([equalCopy hasIsBuiltInWorkoutType])
    {
      isBuiltInWorkoutType = self->_isBuiltInWorkoutType;
      if (isBuiltInWorkoutType != [equalCopy isBuiltInWorkoutType])
      {
        goto LABEL_51;
      }
    }
  }

  hasIsOpenEnded = [(_INPBStartWorkoutIntent *)self hasIsOpenEnded];
  if (hasIsOpenEnded != [equalCopy hasIsOpenEnded])
  {
    goto LABEL_51;
  }

  if ([(_INPBStartWorkoutIntent *)self hasIsOpenEnded])
  {
    if ([equalCopy hasIsOpenEnded])
    {
      isOpenEnded = self->_isOpenEnded;
      if (isOpenEnded != [equalCopy isOpenEnded])
      {
        goto LABEL_51;
      }
    }
  }

  hasIsVoiceOnly = [(_INPBStartWorkoutIntent *)self hasIsVoiceOnly];
  if (hasIsVoiceOnly != [equalCopy hasIsVoiceOnly])
  {
    goto LABEL_51;
  }

  if ([(_INPBStartWorkoutIntent *)self hasIsVoiceOnly])
  {
    if ([equalCopy hasIsVoiceOnly])
    {
      isVoiceOnly = self->_isVoiceOnly;
      if (isVoiceOnly != [equalCopy isVoiceOnly])
      {
        goto LABEL_51;
      }
    }
  }

  hasSequenceLabel = [(_INPBStartWorkoutIntent *)self hasSequenceLabel];
  if (hasSequenceLabel != [equalCopy hasSequenceLabel])
  {
    goto LABEL_51;
  }

  if ([(_INPBStartWorkoutIntent *)self hasSequenceLabel])
  {
    if ([equalCopy hasSequenceLabel])
    {
      sequenceLabel = self->_sequenceLabel;
      if (sequenceLabel != [equalCopy sequenceLabel])
      {
        goto LABEL_51;
      }
    }
  }

  hasWorkoutGoalUnitType = [(_INPBStartWorkoutIntent *)self hasWorkoutGoalUnitType];
  if (hasWorkoutGoalUnitType != [equalCopy hasWorkoutGoalUnitType])
  {
    goto LABEL_51;
  }

  if ([(_INPBStartWorkoutIntent *)self hasWorkoutGoalUnitType])
  {
    if ([equalCopy hasWorkoutGoalUnitType])
    {
      workoutGoalUnitType = self->_workoutGoalUnitType;
      if (workoutGoalUnitType != [equalCopy workoutGoalUnitType])
      {
        goto LABEL_51;
      }
    }
  }

  hasWorkoutLocationType = [(_INPBStartWorkoutIntent *)self hasWorkoutLocationType];
  if (hasWorkoutLocationType != [equalCopy hasWorkoutLocationType])
  {
    goto LABEL_51;
  }

  if ([(_INPBStartWorkoutIntent *)self hasWorkoutLocationType])
  {
    if ([equalCopy hasWorkoutLocationType])
    {
      workoutLocationType = self->_workoutLocationType;
      if (workoutLocationType != [equalCopy workoutLocationType])
      {
        goto LABEL_51;
      }
    }
  }

  associatedItems = [(_INPBStartWorkoutIntent *)self workoutName];
  associatedItems2 = [equalCopy workoutName];
  if ((associatedItems != 0) != (associatedItems2 == 0))
  {
    workoutName = [(_INPBStartWorkoutIntent *)self workoutName];
    if (!workoutName)
    {

LABEL_54:
      v44 = 1;
      goto LABEL_52;
    }

    v40 = workoutName;
    workoutName2 = [(_INPBStartWorkoutIntent *)self workoutName];
    workoutName3 = [equalCopy workoutName];
    v43 = [workoutName2 isEqual:workoutName3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBStartWorkoutIntent allocWithZone:](_INPBStartWorkoutIntent init];
  v6 = [(NSArray *)self->_associatedItems copyWithZone:zone];
  [(_INPBStartWorkoutIntent *)v5 setAssociatedItems:v6];

  v7 = [(_INPBWorkoutCustomization *)self->_customization copyWithZone:zone];
  [(_INPBStartWorkoutIntent *)v5 setCustomization:v7];

  v8 = [(_INPBDouble *)self->_goalValue copyWithZone:zone];
  [(_INPBStartWorkoutIntent *)v5 setGoalValue:v8];

  v9 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
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

  v10 = [(_INPBDataString *)self->_workoutName copyWithZone:zone];
  [(_INPBStartWorkoutIntent *)v5 setWorkoutName:v10];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBStartWorkoutIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBStartWorkoutIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBStartWorkoutIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v31 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

  customization = [(_INPBStartWorkoutIntent *)self customization];

  if (customization)
  {
    customization2 = [(_INPBStartWorkoutIntent *)self customization];
    PBDataWriterWriteSubmessage();
  }

  goalValue = [(_INPBStartWorkoutIntent *)self goalValue];

  if (goalValue)
  {
    goalValue2 = [(_INPBStartWorkoutIntent *)self goalValue];
    PBDataWriterWriteSubmessage();
  }

  intentMetadata = [(_INPBStartWorkoutIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBStartWorkoutIntent *)self intentMetadata];
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

  workoutName = [(_INPBStartWorkoutIntent *)self workoutName];

  if (workoutName)
  {
    workoutName2 = [(_INPBStartWorkoutIntent *)self workoutName];
    PBDataWriterWriteSubmessage();
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (int)StringAsWorkoutLocationType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"OUTDOOR"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [typeCopy isEqualToString:@"INDOOR"];
  }

  return v4;
}

- (void)setHasWorkoutLocationType:(BOOL)type
{
  if (type)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setWorkoutLocationType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xDF;
  }

  else
  {
    *&self->_has = has | 0x20;
    self->_workoutLocationType = type;
  }
}

- (int)StringAsWorkoutGoalUnitType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Inch"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Meter"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Foot"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Mile"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"Yard"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"Second"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"Minute"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"Hour"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"Joule"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"KiloCalorie"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasWorkoutGoalUnitType:(BOOL)type
{
  if (type)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setWorkoutGoalUnitType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xEF;
  }

  else
  {
    *&self->_has = has | 0x10;
    self->_workoutGoalUnitType = type;
  }
}

- (int)StringAsSequenceLabel:(id)label
{
  labelCopy = label;
  if ([labelCopy isEqualToString:@"last"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [labelCopy isEqualToString:@"next"];
  }

  return v4;
}

- (void)setHasSequenceLabel:(BOOL)label
{
  if (label)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setSequenceLabel:(int)label
{
  has = self->_has;
  if (label == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xF7;
  }

  else
  {
    *&self->_has = has | 8;
    self->_sequenceLabel = label;
  }
}

- (void)setHasIsVoiceOnly:(BOOL)only
{
  if (only)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsOpenEnded:(BOOL)ended
{
  if (ended)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addAssociatedItems:(id)items
{
  itemsCopy = items;
  associatedItems = self->_associatedItems;
  v8 = itemsCopy;
  if (!associatedItems)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_associatedItems;
    self->_associatedItems = array;

    itemsCopy = v8;
    associatedItems = self->_associatedItems;
  }

  [(NSArray *)associatedItems addObject:itemsCopy];
}

- (void)setAssociatedItems:(id)items
{
  v4 = [items mutableCopy];
  associatedItems = self->_associatedItems;
  self->_associatedItems = v4;

  MEMORY[0x1EEE66BB8](v4, associatedItems);
}

@end