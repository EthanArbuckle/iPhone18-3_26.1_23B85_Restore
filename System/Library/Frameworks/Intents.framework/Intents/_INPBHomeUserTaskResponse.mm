@interface _INPBHomeUserTaskResponse
- (BOOL)isEqual:(id)equal;
- (_INPBHomeUserTaskResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsTaskOutcome:(id)outcome;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setTaskOutcome:(int)outcome;
- (void)writeTo:(id)to;
@end

@implementation _INPBHomeUserTaskResponse

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBHomeUserTaskResponse *)self hasTaskOutcome])
  {
    taskOutcome = [(_INPBHomeUserTaskResponse *)self taskOutcome];
    if ((taskOutcome - 1) >= 0x17)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", taskOutcome];
    }

    else
    {
      v5 = off_1E72869F0[(taskOutcome - 1)];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"taskOutcome"];
  }

  userTask = [(_INPBHomeUserTaskResponse *)self userTask];
  dictionaryRepresentation = [userTask dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"userTask"];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    hasTaskOutcome = [(_INPBHomeUserTaskResponse *)self hasTaskOutcome];
    if (hasTaskOutcome == [equalCopy hasTaskOutcome])
    {
      if (!-[_INPBHomeUserTaskResponse hasTaskOutcome](self, "hasTaskOutcome") || ![equalCopy hasTaskOutcome] || (taskOutcome = self->_taskOutcome, taskOutcome == objc_msgSend(equalCopy, "taskOutcome")))
      {
        userTask = [(_INPBHomeUserTaskResponse *)self userTask];
        userTask2 = [equalCopy userTask];
        v9 = userTask2;
        if ((userTask != 0) != (userTask2 == 0))
        {
          userTask3 = [(_INPBHomeUserTaskResponse *)self userTask];
          if (!userTask3)
          {

LABEL_14:
            v15 = 1;
            goto LABEL_12;
          }

          v11 = userTask3;
          userTask4 = [(_INPBHomeUserTaskResponse *)self userTask];
          userTask5 = [equalCopy userTask];
          v14 = [userTask4 isEqual:userTask5];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBHomeUserTaskResponse allocWithZone:](_INPBHomeUserTaskResponse init];
  if ([(_INPBHomeUserTaskResponse *)self hasTaskOutcome])
  {
    [(_INPBHomeUserTaskResponse *)v5 setTaskOutcome:[(_INPBHomeUserTaskResponse *)self taskOutcome]];
  }

  v6 = [(_INPBHomeUserTask *)self->_userTask copyWithZone:zone];
  [(_INPBHomeUserTaskResponse *)v5 setUserTask:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBHomeUserTaskResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBHomeUserTaskResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBHomeUserTaskResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBHomeUserTaskResponse *)self hasTaskOutcome])
  {
    taskOutcome = self->_taskOutcome;
    PBDataWriterWriteInt32Field();
  }

  userTask = [(_INPBHomeUserTaskResponse *)self userTask];

  v6 = toCopy;
  if (userTask)
  {
    userTask2 = [(_INPBHomeUserTaskResponse *)self userTask];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (int)StringAsTaskOutcome:(id)outcome
{
  outcomeCopy = outcome;
  if ([outcomeCopy isEqualToString:@"SUCCESS"])
  {
    v4 = 1;
  }

  else if ([outcomeCopy isEqualToString:@"UNSUPPORTED_ATTRIBUTE"])
  {
    v4 = 2;
  }

  else if ([outcomeCopy isEqualToString:@"READ_ONLY"])
  {
    v4 = 3;
  }

  else if ([outcomeCopy isEqualToString:@"ALREADY_AT_MAX_VALUE"])
  {
    v4 = 4;
  }

  else if ([outcomeCopy isEqualToString:@"ALREADY_AT_MIN_VALUE"])
  {
    v4 = 5;
  }

  else if ([outcomeCopy isEqualToString:@"UNREACHABLE"])
  {
    v4 = 6;
  }

  else if ([outcomeCopy isEqualToString:@"FAILURE"])
  {
    v4 = 7;
  }

  else if ([outcomeCopy isEqualToString:@"SET_TO_MAX_VALUE"])
  {
    v4 = 8;
  }

  else if ([outcomeCopy isEqualToString:@"SET_TO_MIN_VALUE"])
  {
    v4 = 9;
  }

  else if ([outcomeCopy isEqualToString:@"LARGER_THAN_MAX_VALUE"])
  {
    v4 = 10;
  }

  else if ([outcomeCopy isEqualToString:@"SMALLER_THAN_MIN_VALUE"])
  {
    v4 = 11;
  }

  else if ([outcomeCopy isEqualToString:@"NO_REMOTE_ACCESS"])
  {
    v4 = 12;
  }

  else if ([outcomeCopy isEqualToString:@"NO_MATCHING_ATTRIBUTE"])
  {
    v4 = 13;
  }

  else if ([outcomeCopy isEqualToString:@"BLUETOOTH_IS_OFF"])
  {
    v4 = 14;
  }

  else if ([outcomeCopy isEqualToString:@"WIFI_IS_OFF"])
  {
    v4 = 15;
  }

  else if ([outcomeCopy isEqualToString:@"BRIDGED_ACCESSORY_UNREACHABLE"])
  {
    v4 = 16;
  }

  else if ([outcomeCopy isEqualToString:@"IN_PROGRESS"])
  {
    v4 = 17;
  }

  else if ([outcomeCopy isEqualToString:@"SCENE_NOT_SET_UP"])
  {
    v4 = 18;
  }

  else if ([outcomeCopy isEqualToString:@"SECURING_FAILURE"])
  {
    v4 = 19;
  }

  else if ([outcomeCopy isEqualToString:@"BLUETOOTH_WAKEUP"])
  {
    v4 = 20;
  }

  else if ([outcomeCopy isEqualToString:@"UNLOCK_REQUIRED"])
  {
    v4 = 21;
  }

  else if ([outcomeCopy isEqualToString:@"SECURED_ACCESS_DENIED"])
  {
    v4 = 22;
  }

  else if ([outcomeCopy isEqualToString:@"CALIBRATION_IN_PROGRESS"])
  {
    v4 = 23;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setTaskOutcome:(int)outcome
{
  has = self->_has;
  if (outcome == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_taskOutcome = outcome;
  }
}

@end