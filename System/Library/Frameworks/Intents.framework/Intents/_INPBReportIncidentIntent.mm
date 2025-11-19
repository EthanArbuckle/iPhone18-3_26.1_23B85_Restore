@interface _INPBReportIncidentIntent
- (BOOL)isEqual:(id)a3;
- (_INPBReportIncidentIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setHasStartTime:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBReportIncidentIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBReportIncidentIntent *)self additionalDetails];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"additionalDetails"];

  v6 = [(_INPBReportIncidentIntent *)self incidentType];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"incidentType"];

  v8 = [(_INPBReportIncidentIntent *)self intentMetadata];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBReportIncidentIntent *)self hasIsClear])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBReportIncidentIntent isClear](self, "isClear")}];
    [v3 setObject:v10 forKeyedSubscript:@"isClear"];
  }

  if ([(_INPBReportIncidentIntent *)self hasStartTime])
  {
    v11 = MEMORY[0x1E696AD98];
    [(_INPBReportIncidentIntent *)self startTime];
    v12 = [v11 numberWithDouble:?];
    [v3 setObject:v12 forKeyedSubscript:@"startTime"];
  }

  v13 = [(_INPBReportIncidentIntent *)self userLocation];
  v14 = [v13 dictionaryRepresentation];
  [v3 setObject:v14 forKeyedSubscript:@"userLocation"];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  v5 = [(_INPBReportIncidentIntent *)self additionalDetails];
  v6 = [v4 additionalDetails];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_29;
  }

  v7 = [(_INPBReportIncidentIntent *)self additionalDetails];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBReportIncidentIntent *)self additionalDetails];
    v10 = [v4 additionalDetails];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  v5 = [(_INPBReportIncidentIntent *)self incidentType];
  v6 = [v4 incidentType];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_29;
  }

  v12 = [(_INPBReportIncidentIntent *)self incidentType];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBReportIncidentIntent *)self incidentType];
    v15 = [v4 incidentType];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  v5 = [(_INPBReportIncidentIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_29;
  }

  v17 = [(_INPBReportIncidentIntent *)self intentMetadata];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBReportIncidentIntent *)self intentMetadata];
    v20 = [v4 intentMetadata];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  v22 = [(_INPBReportIncidentIntent *)self hasIsClear];
  if (v22 != [v4 hasIsClear])
  {
    goto LABEL_30;
  }

  if ([(_INPBReportIncidentIntent *)self hasIsClear])
  {
    if ([v4 hasIsClear])
    {
      isClear = self->_isClear;
      if (isClear != [v4 isClear])
      {
        goto LABEL_30;
      }
    }
  }

  v24 = [(_INPBReportIncidentIntent *)self hasStartTime];
  if (v24 != [v4 hasStartTime])
  {
    goto LABEL_30;
  }

  if ([(_INPBReportIncidentIntent *)self hasStartTime])
  {
    if ([v4 hasStartTime])
    {
      startTime = self->_startTime;
      [v4 startTime];
      if (startTime != v26)
      {
        goto LABEL_30;
      }
    }
  }

  v5 = [(_INPBReportIncidentIntent *)self userLocation];
  v6 = [v4 userLocation];
  if ((v5 != 0) != (v6 == 0))
  {
    v27 = [(_INPBReportIncidentIntent *)self userLocation];
    if (!v27)
    {

LABEL_33:
      v32 = 1;
      goto LABEL_31;
    }

    v28 = v27;
    v29 = [(_INPBReportIncidentIntent *)self userLocation];
    v30 = [v4 userLocation];
    v31 = [v29 isEqual:v30];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBReportIncidentIntent allocWithZone:](_INPBReportIncidentIntent init];
  v6 = [(_INPBString *)self->_additionalDetails copyWithZone:a3];
  [(_INPBReportIncidentIntent *)v5 setAdditionalDetails:v6];

  v7 = [(_INPBSupportedTrafficIncidentType *)self->_incidentType copyWithZone:a3];
  [(_INPBReportIncidentIntent *)v5 setIncidentType:v7];

  v8 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
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

  v9 = [(_INPBLocation *)self->_userLocation copyWithZone:a3];
  [(_INPBReportIncidentIntent *)v5 setUserLocation:v9];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBReportIncidentIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBReportIncidentIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBReportIncidentIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v15 = a3;
  v4 = [(_INPBReportIncidentIntent *)self additionalDetails];

  if (v4)
  {
    v5 = [(_INPBReportIncidentIntent *)self additionalDetails];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBReportIncidentIntent *)self incidentType];

  if (v6)
  {
    v7 = [(_INPBReportIncidentIntent *)self incidentType];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBReportIncidentIntent *)self intentMetadata];

  if (v8)
  {
    v9 = [(_INPBReportIncidentIntent *)self intentMetadata];
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

  v12 = [(_INPBReportIncidentIntent *)self userLocation];

  v13 = v15;
  if (v12)
  {
    v14 = [(_INPBReportIncidentIntent *)self userLocation];
    PBDataWriterWriteSubmessage();

    v13 = v15;
  }
}

- (void)setHasStartTime:(BOOL)a3
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

@end