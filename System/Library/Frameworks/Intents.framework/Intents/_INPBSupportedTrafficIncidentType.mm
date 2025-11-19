@interface _INPBSupportedTrafficIncidentType
- (BOOL)isEqual:(id)a3;
- (_INPBSupportedTrafficIncidentType)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setType:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSupportedTrafficIncidentType

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBSupportedTrafficIncidentType *)self localizedDisplayString];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"localizedDisplayString"];

  if ([(_INPBSupportedTrafficIncidentType *)self hasType])
  {
    v6 = [(_INPBSupportedTrafficIncidentType *)self type];
    if (v6 >= 5)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v7 = off_1E72887C8[v6];
    }

    [v3 setObject:v7 forKeyedSubscript:@"type"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = [(_INPBSupportedTrafficIncidentType *)self localizedDisplayString];
  v6 = [v4 localizedDisplayString];
  v7 = v6;
  if ((v5 != 0) != (v6 == 0))
  {
    v8 = [(_INPBSupportedTrafficIncidentType *)self localizedDisplayString];
    if (v8)
    {
      v9 = v8;
      v10 = [(_INPBSupportedTrafficIncidentType *)self localizedDisplayString];
      v11 = [v4 localizedDisplayString];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v13 = [(_INPBSupportedTrafficIncidentType *)self hasType];
    if (v13 == [v4 hasType])
    {
      if (!-[_INPBSupportedTrafficIncidentType hasType](self, "hasType") || ![v4 hasType] || (type = self->_type, type == objc_msgSend(v4, "type")))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSupportedTrafficIncidentType allocWithZone:](_INPBSupportedTrafficIncidentType init];
  v6 = [(_INPBString *)self->_localizedDisplayString copyWithZone:a3];
  [(_INPBSupportedTrafficIncidentType *)v5 setLocalizedDisplayString:v6];

  if ([(_INPBSupportedTrafficIncidentType *)self hasType])
  {
    [(_INPBSupportedTrafficIncidentType *)v5 setType:[(_INPBSupportedTrafficIncidentType *)self type]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSupportedTrafficIncidentType *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSupportedTrafficIncidentType)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSupportedTrafficIncidentType *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  v4 = [(_INPBSupportedTrafficIncidentType *)self localizedDisplayString];

  if (v4)
  {
    v5 = [(_INPBSupportedTrafficIncidentType *)self localizedDisplayString];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSupportedTrafficIncidentType *)self hasType])
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ACCIDENT"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"HAZARD"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SPEEDTRAP"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"CONSTRUCTION"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ROADWORK"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_type = a3;
  }
}

@end