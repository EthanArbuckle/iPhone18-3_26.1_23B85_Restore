@interface _INPBEndWorkoutIntent
- (BOOL)isEqual:(id)equal;
- (_INPBEndWorkoutIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBEndWorkoutIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  intentMetadata = [(_INPBEndWorkoutIntent *)self intentMetadata];
  dictionaryRepresentation = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentMetadata"];

  workoutName = [(_INPBEndWorkoutIntent *)self workoutName];
  dictionaryRepresentation2 = [workoutName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"workoutName"];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  intentMetadata = [(_INPBEndWorkoutIntent *)self intentMetadata];
  intentMetadata2 = [equalCopy intentMetadata];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_11;
  }

  intentMetadata3 = [(_INPBEndWorkoutIntent *)self intentMetadata];
  if (intentMetadata3)
  {
    v8 = intentMetadata3;
    intentMetadata4 = [(_INPBEndWorkoutIntent *)self intentMetadata];
    intentMetadata5 = [equalCopy intentMetadata];
    v11 = [intentMetadata4 isEqual:intentMetadata5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBEndWorkoutIntent *)self workoutName];
  intentMetadata2 = [equalCopy workoutName];
  if ((intentMetadata != 0) != (intentMetadata2 == 0))
  {
    workoutName = [(_INPBEndWorkoutIntent *)self workoutName];
    if (!workoutName)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = workoutName;
    workoutName2 = [(_INPBEndWorkoutIntent *)self workoutName];
    workoutName3 = [equalCopy workoutName];
    v16 = [workoutName2 isEqual:workoutName3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBEndWorkoutIntent allocWithZone:](_INPBEndWorkoutIntent init];
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBEndWorkoutIntent *)v5 setIntentMetadata:v6];

  v7 = [(_INPBDataString *)self->_workoutName copyWithZone:zone];
  [(_INPBEndWorkoutIntent *)v5 setWorkoutName:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBEndWorkoutIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBEndWorkoutIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBEndWorkoutIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  intentMetadata = [(_INPBEndWorkoutIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBEndWorkoutIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  workoutName = [(_INPBEndWorkoutIntent *)self workoutName];

  if (workoutName)
  {
    workoutName2 = [(_INPBEndWorkoutIntent *)self workoutName];
    PBDataWriterWriteSubmessage();
  }
}

@end