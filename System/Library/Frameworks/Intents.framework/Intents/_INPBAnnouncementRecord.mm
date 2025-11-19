@interface _INPBAnnouncementRecord
- (BOOL)isEqual:(id)a3;
- (_INPBAnnouncementRecord)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBAnnouncementRecord

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBAnnouncementRecord *)self hasDuration])
  {
    v4 = MEMORY[0x1E696AD98];
    [(_INPBAnnouncementRecord *)self duration];
    v5 = [v4 numberWithDouble:?];
    [v3 setObject:v5 forKeyedSubscript:@"duration"];
  }

  if (self->_identifier)
  {
    v6 = [(_INPBAnnouncementRecord *)self identifier];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"identifier"];
  }

  v8 = [(_INPBAnnouncementRecord *)self originator];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"originator"];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = [(_INPBAnnouncementRecord *)self hasDuration];
  if (v5 != [v4 hasDuration])
  {
    goto LABEL_16;
  }

  if ([(_INPBAnnouncementRecord *)self hasDuration])
  {
    if ([v4 hasDuration])
    {
      duration = self->_duration;
      [v4 duration];
      if (duration != v7)
      {
        goto LABEL_16;
      }
    }
  }

  v8 = [(_INPBAnnouncementRecord *)self identifier];
  v9 = [v4 identifier];
  if ((v8 != 0) == (v9 == 0))
  {
    goto LABEL_15;
  }

  v10 = [(_INPBAnnouncementRecord *)self identifier];
  if (v10)
  {
    v11 = v10;
    v12 = [(_INPBAnnouncementRecord *)self identifier];
    v13 = [v4 identifier];
    v14 = [v12 isEqual:v13];

    if (!v14)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v8 = [(_INPBAnnouncementRecord *)self originator];
  v9 = [v4 originator];
  if ((v8 != 0) != (v9 == 0))
  {
    v15 = [(_INPBAnnouncementRecord *)self originator];
    if (!v15)
    {

LABEL_19:
      v20 = 1;
      goto LABEL_17;
    }

    v16 = v15;
    v17 = [(_INPBAnnouncementRecord *)self originator];
    v18 = [v4 originator];
    v19 = [v17 isEqual:v18];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBAnnouncementRecord allocWithZone:](_INPBAnnouncementRecord init];
  if ([(_INPBAnnouncementRecord *)self hasDuration])
  {
    [(_INPBAnnouncementRecord *)self duration];
    [(_INPBAnnouncementRecord *)v5 setDuration:?];
  }

  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  [(_INPBAnnouncementRecord *)v5 setIdentifier:v6];

  v7 = [(_INPBHomeFilter *)self->_originator copyWithZone:a3];
  [(_INPBAnnouncementRecord *)v5 setOriginator:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBAnnouncementRecord *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBAnnouncementRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBAnnouncementRecord *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  if ([(_INPBAnnouncementRecord *)self hasDuration])
  {
    duration = self->_duration;
    PBDataWriterWriteDoubleField();
  }

  v5 = [(_INPBAnnouncementRecord *)self identifier];

  if (v5)
  {
    identifier = self->_identifier;
    PBDataWriterWriteStringField();
  }

  v7 = [(_INPBAnnouncementRecord *)self originator];

  v8 = v10;
  if (v7)
  {
    v9 = [(_INPBAnnouncementRecord *)self originator];
    PBDataWriterWriteSubmessage();

    v8 = v10;
  }
}

- (void)setIdentifier:(id)a3
{
  v4 = [a3 copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8](v4, identifier);
}

@end