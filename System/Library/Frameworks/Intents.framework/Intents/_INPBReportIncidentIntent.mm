@interface _INPBReportIncidentIntent
- (BOOL)isEqual:(id)equal;
- (_INPBReportIncidentIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setHasStartTime:(BOOL)time;
- (void)writeTo:(id)to;
@end

@implementation _INPBReportIncidentIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  additionalDetails = [(_INPBReportIncidentIntent *)self additionalDetails];
  dictionaryRepresentation = [additionalDetails dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"additionalDetails"];

  incidentType = [(_INPBReportIncidentIntent *)self incidentType];
  dictionaryRepresentation2 = [incidentType dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"incidentType"];

  intentMetadata = [(_INPBReportIncidentIntent *)self intentMetadata];
  dictionaryRepresentation3 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBReportIncidentIntent *)self hasIsClear])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBReportIncidentIntent isClear](self, "isClear")}];
    [dictionary setObject:v10 forKeyedSubscript:@"isClear"];
  }

  if ([(_INPBReportIncidentIntent *)self hasStartTime])
  {
    v11 = MEMORY[0x1E696AD98];
    [(_INPBReportIncidentIntent *)self startTime];
    v12 = [v11 numberWithDouble:?];
    [dictionary setObject:v12 forKeyedSubscript:@"startTime"];
  }

  userLocation = [(_INPBReportIncidentIntent *)self userLocation];
  dictionaryRepresentation4 = [userLocation dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"userLocation"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBString *)self->_additionalDetails hash];
  v4 = [(_INPBSupportedTrafficIncidentType *)self->_incidentType hash];
  v5 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  if ([(_INPBReportIncidentIntent *)self hasIsClear])
  {
    v6 = 2654435761 * self->_isClear;
  }

  else
  {
    v6 = 0;
  }

  if ([(_INPBReportIncidentIntent *)self hasStartTime])
  {
    startTime = self->_startTime;
    if (startTime < 0.0)
    {
      startTime = -startTime;
    }

    *v7.i64 = floor(startTime + 0.5);
    v10 = (startTime - *v7.i64) * 1.84467441e19;
    *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v12 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v8, v7).i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v12 += v10;
      }
    }

    else
    {
      v12 -= fabs(v10);
    }
  }

  else
  {
    v12 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v12 ^ [(_INPBLocation *)self->_userLocation hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  additionalDetails = [(_INPBReportIncidentIntent *)self additionalDetails];
  additionalDetails2 = [equalCopy additionalDetails];
  if ((additionalDetails != 0) == (additionalDetails2 == 0))
  {
    goto LABEL_29;
  }

  additionalDetails3 = [(_INPBReportIncidentIntent *)self additionalDetails];
  if (additionalDetails3)
  {
    v8 = additionalDetails3;
    additionalDetails4 = [(_INPBReportIncidentIntent *)self additionalDetails];
    additionalDetails5 = [equalCopy additionalDetails];
    v11 = [additionalDetails4 isEqual:additionalDetails5];

    if (!v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  additionalDetails = [(_INPBReportIncidentIntent *)self incidentType];
  additionalDetails2 = [equalCopy incidentType];
  if ((additionalDetails != 0) == (additionalDetails2 == 0))
  {
    goto LABEL_29;
  }

  incidentType = [(_INPBReportIncidentIntent *)self incidentType];
  if (incidentType)
  {
    v13 = incidentType;
    incidentType2 = [(_INPBReportIncidentIntent *)self incidentType];
    incidentType3 = [equalCopy incidentType];
    v16 = [incidentType2 isEqual:incidentType3];

    if (!v16)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  additionalDetails = [(_INPBReportIncidentIntent *)self intentMetadata];
  additionalDetails2 = [equalCopy intentMetadata];
  if ((additionalDetails != 0) == (additionalDetails2 == 0))
  {
    goto LABEL_29;
  }

  intentMetadata = [(_INPBReportIncidentIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v18 = intentMetadata;
    intentMetadata2 = [(_INPBReportIncidentIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v21 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v21)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  hasIsClear = [(_INPBReportIncidentIntent *)self hasIsClear];
  if (hasIsClear != [equalCopy hasIsClear])
  {
    goto LABEL_30;
  }

  if ([(_INPBReportIncidentIntent *)self hasIsClear])
  {
    if ([equalCopy hasIsClear])
    {
      isClear = self->_isClear;
      if (isClear != [equalCopy isClear])
      {
        goto LABEL_30;
      }
    }
  }

  hasStartTime = [(_INPBReportIncidentIntent *)self hasStartTime];
  if (hasStartTime != [equalCopy hasStartTime])
  {
    goto LABEL_30;
  }

  if ([(_INPBReportIncidentIntent *)self hasStartTime])
  {
    if ([equalCopy hasStartTime])
    {
      startTime = self->_startTime;
      [equalCopy startTime];
      if (startTime != v26)
      {
        goto LABEL_30;
      }
    }
  }

  additionalDetails = [(_INPBReportIncidentIntent *)self userLocation];
  additionalDetails2 = [equalCopy userLocation];
  if ((additionalDetails != 0) != (additionalDetails2 == 0))
  {
    userLocation = [(_INPBReportIncidentIntent *)self userLocation];
    if (!userLocation)
    {

LABEL_33:
      v32 = 1;
      goto LABEL_31;
    }

    v28 = userLocation;
    userLocation2 = [(_INPBReportIncidentIntent *)self userLocation];
    userLocation3 = [equalCopy userLocation];
    v31 = [userLocation2 isEqual:userLocation3];

    if (v31)
    {
      goto LABEL_33;
    }
  }

  else
  {
LABEL_29:
  }

LABEL_30:
  v32 = 0;
LABEL_31:

  return v32;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBReportIncidentIntent allocWithZone:](_INPBReportIncidentIntent init];
  v6 = [(_INPBString *)self->_additionalDetails copyWithZone:zone];
  [(_INPBReportIncidentIntent *)v5 setAdditionalDetails:v6];

  v7 = [(_INPBSupportedTrafficIncidentType *)self->_incidentType copyWithZone:zone];
  [(_INPBReportIncidentIntent *)v5 setIncidentType:v7];

  v8 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBReportIncidentIntent *)v5 setIntentMetadata:v8];

  if ([(_INPBReportIncidentIntent *)self hasIsClear])
  {
    [(_INPBReportIncidentIntent *)v5 setIsClear:[(_INPBReportIncidentIntent *)self isClear]];
  }

  if ([(_INPBReportIncidentIntent *)self hasStartTime])
  {
    [(_INPBReportIncidentIntent *)self startTime];
    [(_INPBReportIncidentIntent *)v5 setStartTime:?];
  }

  v9 = [(_INPBLocation *)self->_userLocation copyWithZone:zone];
  [(_INPBReportIncidentIntent *)v5 setUserLocation:v9];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBReportIncidentIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBReportIncidentIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBReportIncidentIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  additionalDetails = [(_INPBReportIncidentIntent *)self additionalDetails];

  if (additionalDetails)
  {
    additionalDetails2 = [(_INPBReportIncidentIntent *)self additionalDetails];
    PBDataWriterWriteSubmessage();
  }

  incidentType = [(_INPBReportIncidentIntent *)self incidentType];

  if (incidentType)
  {
    incidentType2 = [(_INPBReportIncidentIntent *)self incidentType];
    PBDataWriterWriteSubmessage();
  }

  intentMetadata = [(_INPBReportIncidentIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBReportIncidentIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBReportIncidentIntent *)self hasIsClear])
  {
    isClear = self->_isClear;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBReportIncidentIntent *)self hasStartTime])
  {
    startTime = self->_startTime;
    PBDataWriterWriteDoubleField();
  }

  userLocation = [(_INPBReportIncidentIntent *)self userLocation];

  v13 = toCopy;
  if (userLocation)
  {
    userLocation2 = [(_INPBReportIncidentIntent *)self userLocation];
    PBDataWriterWriteSubmessage();

    v13 = toCopy;
  }
}

- (void)setHasStartTime:(BOOL)time
{
  if (time)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

@end