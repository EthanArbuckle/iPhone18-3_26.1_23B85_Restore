@interface _INPBAnnouncementRecord
- (BOOL)isEqual:(id)equal;
- (_INPBAnnouncementRecord)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _INPBAnnouncementRecord

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBAnnouncementRecord *)self hasDuration])
  {
    v4 = MEMORY[0x1E696AD98];
    [(_INPBAnnouncementRecord *)self duration];
    v5 = [v4 numberWithDouble:?];
    [dictionary setObject:v5 forKeyedSubscript:@"duration"];
  }

  if (self->_identifier)
  {
    identifier = [(_INPBAnnouncementRecord *)self identifier];
    v7 = [identifier copy];
    [dictionary setObject:v7 forKeyedSubscript:@"identifier"];
  }

  originator = [(_INPBAnnouncementRecord *)self originator];
  dictionaryRepresentation = [originator dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"originator"];

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBAnnouncementRecord *)self hasDuration])
  {
    duration = self->_duration;
    if (duration < 0.0)
    {
      duration = -duration;
    }

    *v3.i64 = floor(duration + 0.5);
    v6 = (duration - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v8 = 2654435761u * *vbslq_s8(vnegq_f64(v7), v4, v3).i64;
    if (v6 >= 0.0)
    {
      if (v6 > 0.0)
      {
        v8 += v6;
      }
    }

    else
    {
      v8 -= fabs(v6);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = [(NSString *)self->_identifier hash]^ v8;
  return v9 ^ [(_INPBHomeFilter *)self->_originator hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  hasDuration = [(_INPBAnnouncementRecord *)self hasDuration];
  if (hasDuration != [equalCopy hasDuration])
  {
    goto LABEL_16;
  }

  if ([(_INPBAnnouncementRecord *)self hasDuration])
  {
    if ([equalCopy hasDuration])
    {
      duration = self->_duration;
      [equalCopy duration];
      if (duration != v7)
      {
        goto LABEL_16;
      }
    }
  }

  identifier = [(_INPBAnnouncementRecord *)self identifier];
  identifier2 = [equalCopy identifier];
  if ((identifier != 0) == (identifier2 == 0))
  {
    goto LABEL_15;
  }

  identifier3 = [(_INPBAnnouncementRecord *)self identifier];
  if (identifier3)
  {
    v11 = identifier3;
    identifier4 = [(_INPBAnnouncementRecord *)self identifier];
    identifier5 = [equalCopy identifier];
    v14 = [identifier4 isEqual:identifier5];

    if (!v14)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  identifier = [(_INPBAnnouncementRecord *)self originator];
  identifier2 = [equalCopy originator];
  if ((identifier != 0) != (identifier2 == 0))
  {
    originator = [(_INPBAnnouncementRecord *)self originator];
    if (!originator)
    {

LABEL_19:
      v20 = 1;
      goto LABEL_17;
    }

    v16 = originator;
    originator2 = [(_INPBAnnouncementRecord *)self originator];
    originator3 = [equalCopy originator];
    v19 = [originator2 isEqual:originator3];

    if (v19)
    {
      goto LABEL_19;
    }
  }

  else
  {
LABEL_15:
  }

LABEL_16:
  v20 = 0;
LABEL_17:

  return v20;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBAnnouncementRecord allocWithZone:](_INPBAnnouncementRecord init];
  if ([(_INPBAnnouncementRecord *)self hasDuration])
  {
    [(_INPBAnnouncementRecord *)self duration];
    [(_INPBAnnouncementRecord *)v5 setDuration:?];
  }

  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  [(_INPBAnnouncementRecord *)v5 setIdentifier:v6];

  v7 = [(_INPBHomeFilter *)self->_originator copyWithZone:zone];
  [(_INPBAnnouncementRecord *)v5 setOriginator:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBAnnouncementRecord *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBAnnouncementRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBAnnouncementRecord *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBAnnouncementRecord *)self hasDuration])
  {
    duration = self->_duration;
    PBDataWriterWriteDoubleField();
  }

  identifier = [(_INPBAnnouncementRecord *)self identifier];

  if (identifier)
  {
    identifier = self->_identifier;
    PBDataWriterWriteStringField();
  }

  originator = [(_INPBAnnouncementRecord *)self originator];

  v8 = toCopy;
  if (originator)
  {
    originator2 = [(_INPBAnnouncementRecord *)self originator];
    PBDataWriterWriteSubmessage();

    v8 = toCopy;
  }
}

- (void)setIdentifier:(id)identifier
{
  v4 = [identifier copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8](v4, identifier);
}

@end