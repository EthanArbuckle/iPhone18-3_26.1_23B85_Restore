@interface _INPBVoiceCommandStepInfo
- (BOOL)isEqual:(id)equal;
- (_INPBVoiceCommandStepInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsCategory:(id)category;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setApplicationIdentifier:(id)identifier;
- (void)setCategory:(int)category;
- (void)setName:(id)name;
- (void)writeTo:(id)to;
@end

@implementation _INPBVoiceCommandStepInfo

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_applicationIdentifier)
  {
    applicationIdentifier = [(_INPBVoiceCommandStepInfo *)self applicationIdentifier];
    v5 = [applicationIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"applicationIdentifier"];
  }

  if ([(_INPBVoiceCommandStepInfo *)self hasCategory])
  {
    category = [(_INPBVoiceCommandStepInfo *)self category];
    v7 = category - 1;
    if (category - 1) < 0x15 && ((0x1FFDFFu >> v7))
    {
      v8 = off_1E72868E0[v7];
    }

    else
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", category];
    }

    [dictionary setObject:v8 forKeyedSubscript:@"category"];
  }

  if (self->_name)
  {
    name = [(_INPBVoiceCommandStepInfo *)self name];
    v10 = [name copy];
    [dictionary setObject:v10 forKeyedSubscript:@"name"];
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  applicationIdentifier = [(_INPBVoiceCommandStepInfo *)self applicationIdentifier];
  applicationIdentifier2 = [equalCopy applicationIdentifier];
  if ((applicationIdentifier != 0) == (applicationIdentifier2 == 0))
  {
    goto LABEL_15;
  }

  applicationIdentifier3 = [(_INPBVoiceCommandStepInfo *)self applicationIdentifier];
  if (applicationIdentifier3)
  {
    v8 = applicationIdentifier3;
    applicationIdentifier4 = [(_INPBVoiceCommandStepInfo *)self applicationIdentifier];
    applicationIdentifier5 = [equalCopy applicationIdentifier];
    v11 = [applicationIdentifier4 isEqual:applicationIdentifier5];

    if (!v11)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  hasCategory = [(_INPBVoiceCommandStepInfo *)self hasCategory];
  if (hasCategory != [equalCopy hasCategory])
  {
    goto LABEL_16;
  }

  if ([(_INPBVoiceCommandStepInfo *)self hasCategory])
  {
    if ([equalCopy hasCategory])
    {
      category = self->_category;
      if (category != [equalCopy category])
      {
        goto LABEL_16;
      }
    }
  }

  applicationIdentifier = [(_INPBVoiceCommandStepInfo *)self name];
  applicationIdentifier2 = [equalCopy name];
  if ((applicationIdentifier != 0) != (applicationIdentifier2 == 0))
  {
    name = [(_INPBVoiceCommandStepInfo *)self name];
    if (!name)
    {

LABEL_19:
      v19 = 1;
      goto LABEL_17;
    }

    v15 = name;
    name2 = [(_INPBVoiceCommandStepInfo *)self name];
    name3 = [equalCopy name];
    v18 = [name2 isEqual:name3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBVoiceCommandStepInfo allocWithZone:](_INPBVoiceCommandStepInfo init];
  v6 = [(NSString *)self->_applicationIdentifier copyWithZone:zone];
  [(_INPBVoiceCommandStepInfo *)v5 setApplicationIdentifier:v6];

  if ([(_INPBVoiceCommandStepInfo *)self hasCategory])
  {
    [(_INPBVoiceCommandStepInfo *)v5 setCategory:[(_INPBVoiceCommandStepInfo *)self category]];
  }

  v7 = [(NSString *)self->_name copyWithZone:zone];
  [(_INPBVoiceCommandStepInfo *)v5 setName:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBVoiceCommandStepInfo *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBVoiceCommandStepInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBVoiceCommandStepInfo *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  applicationIdentifier = [(_INPBVoiceCommandStepInfo *)self applicationIdentifier];

  if (applicationIdentifier)
  {
    applicationIdentifier = self->_applicationIdentifier;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBVoiceCommandStepInfo *)self hasCategory])
  {
    category = self->_category;
    PBDataWriterWriteInt32Field();
  }

  name = [(_INPBVoiceCommandStepInfo *)self name];

  v8 = toCopy;
  if (name)
  {
    name = self->_name;
    PBDataWriterWriteStringField();
    v8 = toCopy;
  }
}

- (void)setName:(id)name
{
  v4 = [name copy];
  name = self->_name;
  self->_name = v4;

  MEMORY[0x1EEE66BB8](v4, name);
}

- (int)StringAsCategory:(id)category
{
  categoryCopy = category;
  if ([categoryCopy isEqualToString:@"CATEGORY_INFORMATION"])
  {
    v4 = 1;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_PLAY_AUDIO"])
  {
    v4 = 2;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_PLAY_VIDEO"])
  {
    v4 = 3;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_ORDER"])
  {
    v4 = 4;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_NAVIGATION"])
  {
    v4 = 5;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_START"])
  {
    v4 = 6;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_SHARE"])
  {
    v4 = 7;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_CREATE"])
  {
    v4 = 8;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_SEARCH"])
  {
    v4 = 9;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_TOGGLE"])
  {
    v4 = 11;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_DOWNLOAD"])
  {
    v4 = 12;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_LOG"])
  {
    v4 = 13;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_CHECK_IN"])
  {
    v4 = 14;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_WORKFLOW"])
  {
    v4 = 15;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_REQUEST"])
  {
    v4 = 16;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_SET"])
  {
    v4 = 17;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_CALL_AUDIO"])
  {
    v4 = 18;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_CALL_VIDEO"])
  {
    v4 = 19;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_PLAY_SOUND"])
  {
    v4 = 20;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_USER_ACTIVITY"])
  {
    v4 = 21;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setCategory:(int)category
{
  has = self->_has;
  if (category == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_category = category;
  }
}

- (void)setApplicationIdentifier:(id)identifier
{
  v4 = [identifier copy];
  applicationIdentifier = self->_applicationIdentifier;
  self->_applicationIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, applicationIdentifier);
}

@end