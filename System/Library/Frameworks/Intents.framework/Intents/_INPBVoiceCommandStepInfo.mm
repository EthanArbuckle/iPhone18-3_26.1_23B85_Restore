@interface _INPBVoiceCommandStepInfo
- (BOOL)isEqual:(id)a3;
- (_INPBVoiceCommandStepInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsCategory:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setApplicationIdentifier:(id)a3;
- (void)setCategory:(int)a3;
- (void)setName:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBVoiceCommandStepInfo

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_applicationIdentifier)
  {
    v4 = [(_INPBVoiceCommandStepInfo *)self applicationIdentifier];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"applicationIdentifier"];
  }

  if ([(_INPBVoiceCommandStepInfo *)self hasCategory])
  {
    v6 = [(_INPBVoiceCommandStepInfo *)self category];
    v7 = v6 - 1;
    if (v6 - 1) < 0x15 && ((0x1FFDFFu >> v7))
    {
      v8 = off_1E72868E0[v7];
    }

    else
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    [v3 setObject:v8 forKeyedSubscript:@"category"];
  }

  if (self->_name)
  {
    v9 = [(_INPBVoiceCommandStepInfo *)self name];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"name"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_applicationIdentifier hash];
  if ([(_INPBVoiceCommandStepInfo *)self hasCategory])
  {
    v4 = 2654435761 * self->_category;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(NSString *)self->_name hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = [(_INPBVoiceCommandStepInfo *)self applicationIdentifier];
  v6 = [v4 applicationIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_15;
  }

  v7 = [(_INPBVoiceCommandStepInfo *)self applicationIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBVoiceCommandStepInfo *)self applicationIdentifier];
    v10 = [v4 applicationIdentifier];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v12 = [(_INPBVoiceCommandStepInfo *)self hasCategory];
  if (v12 != [v4 hasCategory])
  {
    goto LABEL_16;
  }

  if ([(_INPBVoiceCommandStepInfo *)self hasCategory])
  {
    if ([v4 hasCategory])
    {
      category = self->_category;
      if (category != [v4 category])
      {
        goto LABEL_16;
      }
    }
  }

  v5 = [(_INPBVoiceCommandStepInfo *)self name];
  v6 = [v4 name];
  if ((v5 != 0) != (v6 == 0))
  {
    v14 = [(_INPBVoiceCommandStepInfo *)self name];
    if (!v14)
    {

LABEL_19:
      v19 = 1;
      goto LABEL_17;
    }

    v15 = v14;
    v16 = [(_INPBVoiceCommandStepInfo *)self name];
    v17 = [v4 name];
    v18 = [v16 isEqual:v17];

    if (v18)
    {
      goto LABEL_19;
    }
  }

  else
  {
LABEL_15:
  }

LABEL_16:
  v19 = 0;
LABEL_17:

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBVoiceCommandStepInfo allocWithZone:](_INPBVoiceCommandStepInfo init];
  v6 = [(NSString *)self->_applicationIdentifier copyWithZone:a3];
  [(_INPBVoiceCommandStepInfo *)v5 setApplicationIdentifier:v6];

  if ([(_INPBVoiceCommandStepInfo *)self hasCategory])
  {
    [(_INPBVoiceCommandStepInfo *)v5 setCategory:[(_INPBVoiceCommandStepInfo *)self category]];
  }

  v7 = [(NSString *)self->_name copyWithZone:a3];
  [(_INPBVoiceCommandStepInfo *)v5 setName:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBVoiceCommandStepInfo *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBVoiceCommandStepInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBVoiceCommandStepInfo *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  v4 = [(_INPBVoiceCommandStepInfo *)self applicationIdentifier];

  if (v4)
  {
    applicationIdentifier = self->_applicationIdentifier;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBVoiceCommandStepInfo *)self hasCategory])
  {
    category = self->_category;
    PBDataWriterWriteInt32Field();
  }

  v7 = [(_INPBVoiceCommandStepInfo *)self name];

  v8 = v10;
  if (v7)
  {
    name = self->_name;
    PBDataWriterWriteStringField();
    v8 = v10;
  }
}

- (void)setName:(id)a3
{
  v4 = [a3 copy];
  name = self->_name;
  self->_name = v4;

  MEMORY[0x1EEE66BB8](v4, name);
}

- (int)StringAsCategory:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"CATEGORY_INFORMATION"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CATEGORY_PLAY_AUDIO"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"CATEGORY_PLAY_VIDEO"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"CATEGORY_ORDER"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"CATEGORY_NAVIGATION"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"CATEGORY_START"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"CATEGORY_SHARE"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"CATEGORY_CREATE"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"CATEGORY_SEARCH"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"CATEGORY_TOGGLE"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"CATEGORY_DOWNLOAD"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"CATEGORY_LOG"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"CATEGORY_CHECK_IN"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"CATEGORY_WORKFLOW"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"CATEGORY_REQUEST"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"CATEGORY_SET"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"CATEGORY_CALL_AUDIO"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"CATEGORY_CALL_VIDEO"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"CATEGORY_PLAY_SOUND"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"CATEGORY_USER_ACTIVITY"])
  {
    v4 = 21;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setCategory:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_category = a3;
  }
}

- (void)setApplicationIdentifier:(id)a3
{
  v4 = [a3 copy];
  applicationIdentifier = self->_applicationIdentifier;
  self->_applicationIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, applicationIdentifier);
}

@end