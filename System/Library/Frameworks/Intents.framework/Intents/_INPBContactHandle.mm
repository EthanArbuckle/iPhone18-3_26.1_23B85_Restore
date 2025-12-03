@interface _INPBContactHandle
- (BOOL)isEqual:(id)equal;
- (_INPBContactHandle)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsEmergencyType:(id)type;
- (int)StringAsFaceTimeType:(id)type;
- (int)StringAsType:(id)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setEmergencyType:(int)type;
- (void)setFaceTimeType:(int)type;
- (void)setHasFaceTimeType:(BOOL)type;
- (void)setHasSuggested:(BOOL)suggested;
- (void)setHasType:(BOOL)type;
- (void)setLabel:(id)label;
- (void)setType:(int)type;
- (void)setValue:(id)value;
- (void)writeTo:(id)to;
@end

@implementation _INPBContactHandle

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBContactHandle *)self hasEmergencyType])
  {
    emergencyType = [(_INPBContactHandle *)self emergencyType];
    if (emergencyType >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", emergencyType];
    }

    else
    {
      v5 = off_1E727F798[emergencyType];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"emergencyType"];
  }

  if ([(_INPBContactHandle *)self hasFaceTimeType])
  {
    faceTimeType = [(_INPBContactHandle *)self faceTimeType];
    if (faceTimeType >= 3)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", faceTimeType];
    }

    else
    {
      v7 = off_1E727F7B0[faceTimeType];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"faceTimeType"];
  }

  if (self->_label)
  {
    label = [(_INPBContactHandle *)self label];
    v9 = [label copy];
    [dictionary setObject:v9 forKeyedSubscript:@"label"];
  }

  if ([(_INPBContactHandle *)self hasSuggested])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBContactHandle suggested](self, "suggested")}];
    [dictionary setObject:v10 forKeyedSubscript:@"suggested"];
  }

  if ([(_INPBContactHandle *)self hasType])
  {
    type = [(_INPBContactHandle *)self type];
    if (type >= 5)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", type];
    }

    else
    {
      v12 = off_1E727F7C8[type];
    }

    [dictionary setObject:v12 forKeyedSubscript:@"type"];
  }

  if (self->_value)
  {
    value = [(_INPBContactHandle *)self value];
    v14 = [value copy];
    [dictionary setObject:v14 forKeyedSubscript:@"value"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBContactHandle *)self hasEmergencyType])
  {
    v3 = 2654435761 * self->_emergencyType;
  }

  else
  {
    v3 = 0;
  }

  if ([(_INPBContactHandle *)self hasFaceTimeType])
  {
    v4 = 2654435761 * self->_faceTimeType;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_label hash];
  if ([(_INPBContactHandle *)self hasSuggested])
  {
    v6 = 2654435761 * self->_suggested;
  }

  else
  {
    v6 = 0;
  }

  if ([(_INPBContactHandle *)self hasType])
  {
    v7 = 2654435761 * self->_type;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v6 ^ v7 ^ v5 ^ [(NSString *)self->_value hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  hasEmergencyType = [(_INPBContactHandle *)self hasEmergencyType];
  if (hasEmergencyType != [equalCopy hasEmergencyType])
  {
    goto LABEL_28;
  }

  if ([(_INPBContactHandle *)self hasEmergencyType])
  {
    if ([equalCopy hasEmergencyType])
    {
      emergencyType = self->_emergencyType;
      if (emergencyType != [equalCopy emergencyType])
      {
        goto LABEL_28;
      }
    }
  }

  hasFaceTimeType = [(_INPBContactHandle *)self hasFaceTimeType];
  if (hasFaceTimeType != [equalCopy hasFaceTimeType])
  {
    goto LABEL_28;
  }

  if ([(_INPBContactHandle *)self hasFaceTimeType])
  {
    if ([equalCopy hasFaceTimeType])
    {
      faceTimeType = self->_faceTimeType;
      if (faceTimeType != [equalCopy faceTimeType])
      {
        goto LABEL_28;
      }
    }
  }

  label = [(_INPBContactHandle *)self label];
  label2 = [equalCopy label];
  if ((label != 0) == (label2 == 0))
  {
    goto LABEL_27;
  }

  label3 = [(_INPBContactHandle *)self label];
  if (label3)
  {
    v12 = label3;
    label4 = [(_INPBContactHandle *)self label];
    label5 = [equalCopy label];
    v15 = [label4 isEqual:label5];

    if (!v15)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  hasSuggested = [(_INPBContactHandle *)self hasSuggested];
  if (hasSuggested != [equalCopy hasSuggested])
  {
    goto LABEL_28;
  }

  if ([(_INPBContactHandle *)self hasSuggested])
  {
    if ([equalCopy hasSuggested])
    {
      suggested = self->_suggested;
      if (suggested != [equalCopy suggested])
      {
        goto LABEL_28;
      }
    }
  }

  hasType = [(_INPBContactHandle *)self hasType];
  if (hasType != [equalCopy hasType])
  {
    goto LABEL_28;
  }

  if ([(_INPBContactHandle *)self hasType])
  {
    if ([equalCopy hasType])
    {
      type = self->_type;
      if (type != [equalCopy type])
      {
        goto LABEL_28;
      }
    }
  }

  label = [(_INPBContactHandle *)self value];
  label2 = [equalCopy value];
  if ((label != 0) != (label2 == 0))
  {
    value = [(_INPBContactHandle *)self value];
    if (!value)
    {

LABEL_31:
      v25 = 1;
      goto LABEL_29;
    }

    v21 = value;
    value2 = [(_INPBContactHandle *)self value];
    value3 = [equalCopy value];
    v24 = [value2 isEqual:value3];

    if (v24)
    {
      goto LABEL_31;
    }
  }

  else
  {
LABEL_27:
  }

LABEL_28:
  v25 = 0;
LABEL_29:

  return v25;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBContactHandle allocWithZone:](_INPBContactHandle init];
  if ([(_INPBContactHandle *)self hasEmergencyType])
  {
    [(_INPBContactHandle *)v5 setEmergencyType:[(_INPBContactHandle *)self emergencyType]];
  }

  if ([(_INPBContactHandle *)self hasFaceTimeType])
  {
    [(_INPBContactHandle *)v5 setFaceTimeType:[(_INPBContactHandle *)self faceTimeType]];
  }

  v6 = [(NSString *)self->_label copyWithZone:zone];
  [(_INPBContactHandle *)v5 setLabel:v6];

  if ([(_INPBContactHandle *)self hasSuggested])
  {
    [(_INPBContactHandle *)v5 setSuggested:[(_INPBContactHandle *)self suggested]];
  }

  if ([(_INPBContactHandle *)self hasType])
  {
    [(_INPBContactHandle *)v5 setType:[(_INPBContactHandle *)self type]];
  }

  v7 = [(NSString *)self->_value copyWithZone:zone];
  [(_INPBContactHandle *)v5 setValue:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBContactHandle *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBContactHandle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBContactHandle *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBContactHandle *)self hasEmergencyType])
  {
    emergencyType = self->_emergencyType;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBContactHandle *)self hasFaceTimeType])
  {
    faceTimeType = self->_faceTimeType;
    PBDataWriterWriteInt32Field();
  }

  label = [(_INPBContactHandle *)self label];

  if (label)
  {
    label = self->_label;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBContactHandle *)self hasSuggested])
  {
    suggested = self->_suggested;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBContactHandle *)self hasType])
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }

  value = [(_INPBContactHandle *)self value];

  v11 = toCopy;
  if (value)
  {
    value = self->_value;
    PBDataWriterWriteStringField();
    v11 = toCopy;
  }
}

- (void)setValue:(id)value
{
  v4 = [value copy];
  value = self->_value;
  self->_value = v4;

  MEMORY[0x1EEE66BB8](v4, value);
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"EmailAddress"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"PhoneNumber"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Website"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"InstantMessage"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xF7;
  }

  else
  {
    *&self->_has = has | 8;
    self->_type = type;
  }
}

- (void)setHasSuggested:(BOOL)suggested
{
  if (suggested)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setLabel:(id)label
{
  v4 = [label copy];
  label = self->_label;
  self->_label = v4;

  MEMORY[0x1EEE66BB8](v4, label);
}

- (int)StringAsFaceTimeType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Undefined"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"FaceTimeHandle"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"NonFaceTimeHandle"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasFaceTimeType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setFaceTimeType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_faceTimeType = type;
  }
}

- (int)StringAsEmergencyType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"LocalEmergency"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"NonLocalEmergency"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setEmergencyType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_emergencyType = type;
  }
}

@end