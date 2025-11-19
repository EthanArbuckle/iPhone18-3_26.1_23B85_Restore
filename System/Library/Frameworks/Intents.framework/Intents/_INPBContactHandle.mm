@interface _INPBContactHandle
- (BOOL)isEqual:(id)a3;
- (_INPBContactHandle)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsEmergencyType:(id)a3;
- (int)StringAsFaceTimeType:(id)a3;
- (int)StringAsType:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setEmergencyType:(int)a3;
- (void)setFaceTimeType:(int)a3;
- (void)setHasFaceTimeType:(BOOL)a3;
- (void)setHasSuggested:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)setLabel:(id)a3;
- (void)setType:(int)a3;
- (void)setValue:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBContactHandle

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBContactHandle *)self hasEmergencyType])
  {
    v4 = [(_INPBContactHandle *)self emergencyType];
    if (v4 >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = off_1E727F798[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"emergencyType"];
  }

  if ([(_INPBContactHandle *)self hasFaceTimeType])
  {
    v6 = [(_INPBContactHandle *)self faceTimeType];
    if (v6 >= 3)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v7 = off_1E727F7B0[v6];
    }

    [v3 setObject:v7 forKeyedSubscript:@"faceTimeType"];
  }

  if (self->_label)
  {
    v8 = [(_INPBContactHandle *)self label];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"label"];
  }

  if ([(_INPBContactHandle *)self hasSuggested])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBContactHandle suggested](self, "suggested")}];
    [v3 setObject:v10 forKeyedSubscript:@"suggested"];
  }

  if ([(_INPBContactHandle *)self hasType])
  {
    v11 = [(_INPBContactHandle *)self type];
    if (v11 >= 5)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v11];
    }

    else
    {
      v12 = off_1E727F7C8[v11];
    }

    [v3 setObject:v12 forKeyedSubscript:@"type"];
  }

  if (self->_value)
  {
    v13 = [(_INPBContactHandle *)self value];
    v14 = [v13 copy];
    [v3 setObject:v14 forKeyedSubscript:@"value"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  v5 = [(_INPBContactHandle *)self hasEmergencyType];
  if (v5 != [v4 hasEmergencyType])
  {
    goto LABEL_28;
  }

  if ([(_INPBContactHandle *)self hasEmergencyType])
  {
    if ([v4 hasEmergencyType])
    {
      emergencyType = self->_emergencyType;
      if (emergencyType != [v4 emergencyType])
      {
        goto LABEL_28;
      }
    }
  }

  v7 = [(_INPBContactHandle *)self hasFaceTimeType];
  if (v7 != [v4 hasFaceTimeType])
  {
    goto LABEL_28;
  }

  if ([(_INPBContactHandle *)self hasFaceTimeType])
  {
    if ([v4 hasFaceTimeType])
    {
      faceTimeType = self->_faceTimeType;
      if (faceTimeType != [v4 faceTimeType])
      {
        goto LABEL_28;
      }
    }
  }

  v9 = [(_INPBContactHandle *)self label];
  v10 = [v4 label];
  if ((v9 != 0) == (v10 == 0))
  {
    goto LABEL_27;
  }

  v11 = [(_INPBContactHandle *)self label];
  if (v11)
  {
    v12 = v11;
    v13 = [(_INPBContactHandle *)self label];
    v14 = [v4 label];
    v15 = [v13 isEqual:v14];

    if (!v15)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v16 = [(_INPBContactHandle *)self hasSuggested];
  if (v16 != [v4 hasSuggested])
  {
    goto LABEL_28;
  }

  if ([(_INPBContactHandle *)self hasSuggested])
  {
    if ([v4 hasSuggested])
    {
      suggested = self->_suggested;
      if (suggested != [v4 suggested])
      {
        goto LABEL_28;
      }
    }
  }

  v18 = [(_INPBContactHandle *)self hasType];
  if (v18 != [v4 hasType])
  {
    goto LABEL_28;
  }

  if ([(_INPBContactHandle *)self hasType])
  {
    if ([v4 hasType])
    {
      type = self->_type;
      if (type != [v4 type])
      {
        goto LABEL_28;
      }
    }
  }

  v9 = [(_INPBContactHandle *)self value];
  v10 = [v4 value];
  if ((v9 != 0) != (v10 == 0))
  {
    v20 = [(_INPBContactHandle *)self value];
    if (!v20)
    {

LABEL_31:
      v25 = 1;
      goto LABEL_29;
    }

    v21 = v20;
    v22 = [(_INPBContactHandle *)self value];
    v23 = [v4 value];
    v24 = [v22 isEqual:v23];

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

- (id)copyWithZone:(_NSZone *)a3
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

  v6 = [(NSString *)self->_label copyWithZone:a3];
  [(_INPBContactHandle *)v5 setLabel:v6];

  if ([(_INPBContactHandle *)self hasSuggested])
  {
    [(_INPBContactHandle *)v5 setSuggested:[(_INPBContactHandle *)self suggested]];
  }

  if ([(_INPBContactHandle *)self hasType])
  {
    [(_INPBContactHandle *)v5 setType:[(_INPBContactHandle *)self type]];
  }

  v7 = [(NSString *)self->_value copyWithZone:a3];
  [(_INPBContactHandle *)v5 setValue:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBContactHandle *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBContactHandle)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBContactHandle *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v13 = a3;
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

  v6 = [(_INPBContactHandle *)self label];

  if (v6)
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

  v10 = [(_INPBContactHandle *)self value];

  v11 = v13;
  if (v10)
  {
    value = self->_value;
    PBDataWriterWriteStringField();
    v11 = v13;
  }
}

- (void)setValue:(id)a3
{
  v4 = [a3 copy];
  value = self->_value;
  self->_value = v4;

  MEMORY[0x1EEE66BB8](v4, value);
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"EmailAddress"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"PhoneNumber"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Website"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"InstantMessage"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasType:(BOOL)a3
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

- (void)setType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xF7;
  }

  else
  {
    *&self->_has = has | 8;
    self->_type = a3;
  }
}

- (void)setHasSuggested:(BOOL)a3
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

- (void)setLabel:(id)a3
{
  v4 = [a3 copy];
  label = self->_label;
  self->_label = v4;

  MEMORY[0x1EEE66BB8](v4, label);
}

- (int)StringAsFaceTimeType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Undefined"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"FaceTimeHandle"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"NonFaceTimeHandle"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasFaceTimeType:(BOOL)a3
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

- (void)setFaceTimeType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_faceTimeType = a3;
  }
}

- (int)StringAsEmergencyType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"LocalEmergency"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"NonLocalEmergency"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setEmergencyType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_emergencyType = a3;
  }
}

@end