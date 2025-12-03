@interface _INPBFileProperty
- (BOOL)isEqual:(id)equal;
- (_INPBFileProperty)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsName:(id)name;
- (int)StringAsQualifier:(id)qualifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setHasQualifier:(BOOL)qualifier;
- (void)setName:(int)name;
- (void)setQualifier:(int)qualifier;
- (void)writeTo:(id)to;
@end

@implementation _INPBFileProperty

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBFileProperty *)self hasName])
  {
    name = [(_INPBFileProperty *)self name];
    if (name >= 0xC)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", name];
    }

    else
    {
      v5 = off_1E727FEB8[name];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"name"];
  }

  if ([(_INPBFileProperty *)self hasQualifier])
  {
    qualifier = [(_INPBFileProperty *)self qualifier];
    if (qualifier >= 5)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", qualifier];
    }

    else
    {
      v7 = off_1E727FF18[qualifier];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"qualifier"];
  }

  value = [(_INPBFileProperty *)self value];
  dictionaryRepresentation = [value dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"value"];

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBFileProperty *)self hasName])
  {
    v3 = 2654435761 * self->_name;
  }

  else
  {
    v3 = 0;
  }

  if ([(_INPBFileProperty *)self hasQualifier])
  {
    v4 = 2654435761 * self->_qualifier;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(_INPBFilePropertyValue *)self->_value hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    hasName = [(_INPBFileProperty *)self hasName];
    if (hasName == [equalCopy hasName])
    {
      if (!-[_INPBFileProperty hasName](self, "hasName") || ![equalCopy hasName] || (name = self->_name, name == objc_msgSend(equalCopy, "name")))
      {
        hasQualifier = [(_INPBFileProperty *)self hasQualifier];
        if (hasQualifier == [equalCopy hasQualifier])
        {
          if (!-[_INPBFileProperty hasQualifier](self, "hasQualifier") || ![equalCopy hasQualifier] || (qualifier = self->_qualifier, qualifier == objc_msgSend(equalCopy, "qualifier")))
          {
            value = [(_INPBFileProperty *)self value];
            value2 = [equalCopy value];
            v11 = value2;
            if ((value != 0) != (value2 == 0))
            {
              value3 = [(_INPBFileProperty *)self value];
              if (!value3)
              {

LABEL_18:
                v17 = 1;
                goto LABEL_16;
              }

              v13 = value3;
              value4 = [(_INPBFileProperty *)self value];
              value5 = [equalCopy value];
              v16 = [value4 isEqual:value5];

              if (v16)
              {
                goto LABEL_18;
              }
            }

            else
            {
            }
          }
        }
      }
    }
  }

  v17 = 0;
LABEL_16:

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBFileProperty allocWithZone:](_INPBFileProperty init];
  if ([(_INPBFileProperty *)self hasName])
  {
    [(_INPBFileProperty *)v5 setName:[(_INPBFileProperty *)self name]];
  }

  if ([(_INPBFileProperty *)self hasQualifier])
  {
    [(_INPBFileProperty *)v5 setQualifier:[(_INPBFileProperty *)self qualifier]];
  }

  v6 = [(_INPBFilePropertyValue *)self->_value copyWithZone:zone];
  [(_INPBFileProperty *)v5 setValue:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBFileProperty *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBFileProperty)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBFileProperty *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBFileProperty *)self hasName])
  {
    name = self->_name;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBFileProperty *)self hasQualifier])
  {
    qualifier = self->_qualifier;
    PBDataWriterWriteInt32Field();
  }

  value = [(_INPBFileProperty *)self value];

  v7 = toCopy;
  if (value)
  {
    value2 = [(_INPBFileProperty *)self value];
    PBDataWriterWriteSubmessage();

    v7 = toCopy;
  }
}

- (int)StringAsQualifier:(id)qualifier
{
  qualifierCopy = qualifier;
  if ([qualifierCopy isEqualToString:@"EQUAL"])
  {
    v4 = 0;
  }

  else if ([qualifierCopy isEqualToString:@"AT_LEAST"])
  {
    v4 = 1;
  }

  else if ([qualifierCopy isEqualToString:@"AT_MOST"])
  {
    v4 = 2;
  }

  else if ([qualifierCopy isEqualToString:@"MIN"])
  {
    v4 = 3;
  }

  else if ([qualifierCopy isEqualToString:@"MAX"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasQualifier:(BOOL)qualifier
{
  if (qualifier)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setQualifier:(int)qualifier
{
  has = self->_has;
  if (qualifier == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_qualifier = qualifier;
  }
}

- (int)StringAsName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"SIZE"])
  {
    v4 = 0;
  }

  else if ([nameCopy isEqualToString:@"CONTENTS"])
  {
    v4 = 1;
  }

  else if ([nameCopy isEqualToString:@"AUTHOR"])
  {
    v4 = 2;
  }

  else if ([nameCopy isEqualToString:@"CREATION_TIME"])
  {
    v4 = 3;
  }

  else if ([nameCopy isEqualToString:@"ACCESSED_TIME"])
  {
    v4 = 4;
  }

  else if ([nameCopy isEqualToString:@"MODIFIED_TIME"])
  {
    v4 = 5;
  }

  else if ([nameCopy isEqualToString:@"PRINTED_TIME"])
  {
    v4 = 6;
  }

  else if ([nameCopy isEqualToString:@"SENDER"])
  {
    v4 = 7;
  }

  else if ([nameCopy isEqualToString:@"RECIPIENT"])
  {
    v4 = 8;
  }

  else if ([nameCopy isEqualToString:@"PAGE_COUNT"])
  {
    v4 = 9;
  }

  else if ([nameCopy isEqualToString:@"TAG"])
  {
    v4 = 10;
  }

  else if ([nameCopy isEqualToString:@"FILE_TYPE"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setName:(int)name
{
  has = self->_has;
  if (name == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_name = name;
  }
}

@end