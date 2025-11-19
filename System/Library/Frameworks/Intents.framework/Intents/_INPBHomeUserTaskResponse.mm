@interface _INPBHomeUserTaskResponse
- (BOOL)isEqual:(id)a3;
- (_INPBHomeUserTaskResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsTaskOutcome:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setTaskOutcome:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBHomeUserTaskResponse

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBHomeUserTaskResponse *)self hasTaskOutcome])
  {
    v4 = [(_INPBHomeUserTaskResponse *)self taskOutcome];
    if ((v4 - 1) >= 0x17)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = off_1E72869F0[(v4 - 1)];
    }

    [v3 setObject:v5 forKeyedSubscript:@"taskOutcome"];
  }

  v6 = [(_INPBHomeUserTaskResponse *)self userTask];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"userTask"];

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBHomeUserTaskResponse *)self hasTaskOutcome])
  {
    v3 = 2654435761 * self->_taskOutcome;
  }

  else
  {
    v3 = 0;
  }

  return [(_INPBHomeUserTask *)self->_userTask hash]^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_INPBHomeUserTaskResponse *)self hasTaskOutcome];
    if (v5 == [v4 hasTaskOutcome])
    {
      if (!-[_INPBHomeUserTaskResponse hasTaskOutcome](self, "hasTaskOutcome") || ![v4 hasTaskOutcome] || (taskOutcome = self->_taskOutcome, taskOutcome == objc_msgSend(v4, "taskOutcome")))
      {
        v7 = [(_INPBHomeUserTaskResponse *)self userTask];
        v8 = [v4 userTask];
        v9 = v8;
        if ((v7 != 0) != (v8 == 0))
        {
          v10 = [(_INPBHomeUserTaskResponse *)self userTask];
          if (!v10)
          {

LABEL_14:
            v15 = 1;
            goto LABEL_12;
          }

          v11 = v10;
          v12 = [(_INPBHomeUserTaskResponse *)self userTask];
          v13 = [v4 userTask];
          v14 = [v12 isEqual:v13];

          if (v14)
          {
            goto LABEL_14;
          }
        }

        else
        {
        }
      }
    }
  }

  v15 = 0;
LABEL_12:

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBHomeUserTaskResponse allocWithZone:](_INPBHomeUserTaskResponse init];
  if ([(_INPBHomeUserTaskResponse *)self hasTaskOutcome])
  {
    [(_INPBHomeUserTaskResponse *)v5 setTaskOutcome:[(_INPBHomeUserTaskResponse *)self taskOutcome]];
  }

  v6 = [(_INPBHomeUserTask *)self->_userTask copyWithZone:a3];
  [(_INPBHomeUserTaskResponse *)v5 setUserTask:v6];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBHomeUserTaskResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBHomeUserTaskResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBHomeUserTaskResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  if ([(_INPBHomeUserTaskResponse *)self hasTaskOutcome])
  {
    taskOutcome = self->_taskOutcome;
    PBDataWriterWriteInt32Field();
  }

  v5 = [(_INPBHomeUserTaskResponse *)self userTask];

  v6 = v8;
  if (v5)
  {
    v7 = [(_INPBHomeUserTaskResponse *)self userTask];
    PBDataWriterWriteSubmessage();

    v6 = v8;
  }
}

- (int)StringAsTaskOutcome:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SUCCESS"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"UNSUPPORTED_ATTRIBUTE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"READ_ONLY"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ALREADY_AT_MAX_VALUE"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"ALREADY_AT_MIN_VALUE"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"UNREACHABLE"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"FAILURE"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"SET_TO_MAX_VALUE"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"SET_TO_MIN_VALUE"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"LARGER_THAN_MAX_VALUE"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"SMALLER_THAN_MIN_VALUE"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"NO_REMOTE_ACCESS"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"NO_MATCHING_ATTRIBUTE"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"BLUETOOTH_IS_OFF"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"WIFI_IS_OFF"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"BRIDGED_ACCESSORY_UNREACHABLE"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"IN_PROGRESS"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"SCENE_NOT_SET_UP"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"SECURING_FAILURE"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"BLUETOOTH_WAKEUP"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"UNLOCK_REQUIRED"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"SECURED_ACCESS_DENIED"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"CALIBRATION_IN_PROGRESS"])
  {
    v4 = 23;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setTaskOutcome:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_taskOutcome = a3;
  }
}

@end