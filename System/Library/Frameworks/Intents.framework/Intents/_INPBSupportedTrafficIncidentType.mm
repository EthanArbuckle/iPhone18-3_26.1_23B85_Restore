@interface _INPBSupportedTrafficIncidentType
- (BOOL)isEqual:(id)equal;
- (_INPBSupportedTrafficIncidentType)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setType:(int)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBSupportedTrafficIncidentType

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  localizedDisplayString = [(_INPBSupportedTrafficIncidentType *)self localizedDisplayString];
  dictionaryRepresentation = [localizedDisplayString dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"localizedDisplayString"];

  if ([(_INPBSupportedTrafficIncidentType *)self hasType])
  {
    type = [(_INPBSupportedTrafficIncidentType *)self type];
    if (type >= 5)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", type];
    }

    else
    {
      v7 = off_1E72887C8[type];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"type"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBString *)self->_localizedDisplayString hash];
  if ([(_INPBSupportedTrafficIncidentType *)self hasType])
  {
    v4 = 2654435761 * self->_type;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  localizedDisplayString = [(_INPBSupportedTrafficIncidentType *)self localizedDisplayString];
  localizedDisplayString2 = [equalCopy localizedDisplayString];
  v7 = localizedDisplayString2;
  if ((localizedDisplayString != 0) != (localizedDisplayString2 == 0))
  {
    localizedDisplayString3 = [(_INPBSupportedTrafficIncidentType *)self localizedDisplayString];
    if (localizedDisplayString3)
    {
      v9 = localizedDisplayString3;
      localizedDisplayString4 = [(_INPBSupportedTrafficIncidentType *)self localizedDisplayString];
      localizedDisplayString5 = [equalCopy localizedDisplayString];
      v12 = [localizedDisplayString4 isEqual:localizedDisplayString5];

      if (!v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    hasType = [(_INPBSupportedTrafficIncidentType *)self hasType];
    if (hasType == [equalCopy hasType])
    {
      if (!-[_INPBSupportedTrafficIncidentType hasType](self, "hasType") || ![equalCopy hasType] || (type = self->_type, type == objc_msgSend(equalCopy, "type")))
      {
        v14 = 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
  }

LABEL_9:
  v14 = 0;
LABEL_10:

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSupportedTrafficIncidentType allocWithZone:](_INPBSupportedTrafficIncidentType init];
  v6 = [(_INPBString *)self->_localizedDisplayString copyWithZone:zone];
  [(_INPBSupportedTrafficIncidentType *)v5 setLocalizedDisplayString:v6];

  if ([(_INPBSupportedTrafficIncidentType *)self hasType])
  {
    [(_INPBSupportedTrafficIncidentType *)v5 setType:[(_INPBSupportedTrafficIncidentType *)self type]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSupportedTrafficIncidentType *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSupportedTrafficIncidentType)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSupportedTrafficIncidentType *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  localizedDisplayString = [(_INPBSupportedTrafficIncidentType *)self localizedDisplayString];

  if (localizedDisplayString)
  {
    localizedDisplayString2 = [(_INPBSupportedTrafficIncidentType *)self localizedDisplayString];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSupportedTrafficIncidentType *)self hasType])
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"ACCIDENT"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"HAZARD"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"SPEEDTRAP"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"CONSTRUCTION"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"ROADWORK"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_type = type;
  }
}

@end