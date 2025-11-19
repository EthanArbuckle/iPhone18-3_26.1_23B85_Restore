@interface _INPBPauseWorkoutIntent
- (BOOL)isEqual:(id)a3;
- (_INPBPauseWorkoutIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBPauseWorkoutIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBPauseWorkoutIntent *)self intentMetadata];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"intentMetadata"];

  v6 = [(_INPBPauseWorkoutIntent *)self workoutName];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"workoutName"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_INPBPauseWorkoutIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_INPBPauseWorkoutIntent *)self intentMetadata];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBPauseWorkoutIntent *)self intentMetadata];
    v10 = [v4 intentMetadata];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_INPBPauseWorkoutIntent *)self workoutName];
  v6 = [v4 workoutName];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_INPBPauseWorkoutIntent *)self workoutName];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_INPBPauseWorkoutIntent *)self workoutName];
    v15 = [v4 workoutName];
    v16 = [v14 isEqual:v15];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBPauseWorkoutIntent allocWithZone:](_INPBPauseWorkoutIntent init];
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBPauseWorkoutIntent *)v5 setIntentMetadata:v6];

  v7 = [(_INPBDataString *)self->_workoutName copyWithZone:a3];
  [(_INPBPauseWorkoutIntent *)v5 setWorkoutName:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBPauseWorkoutIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBPauseWorkoutIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBPauseWorkoutIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(_INPBPauseWorkoutIntent *)self intentMetadata];

  if (v4)
  {
    v5 = [(_INPBPauseWorkoutIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBPauseWorkoutIntent *)self workoutName];

  if (v6)
  {
    v7 = [(_INPBPauseWorkoutIntent *)self workoutName];
    PBDataWriterWriteSubmessage();
  }
}

@end