@interface ATXPBPredictionContext
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ATXPBPredictionContext

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXPBPredictionContext;
  v4 = [(ATXPBPredictionContext *)&v8 description];
  dictionaryRepresentation = [(ATXPBPredictionContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_isOverridden];
    [dictionary setObject:v4 forKey:@"isOverridden"];
  }

  deviceStateContext = self->_deviceStateContext;
  if (deviceStateContext)
  {
    dictionaryRepresentation = [(ATXPBPredictionDeviceStateContext *)deviceStateContext dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"deviceStateContext"];
  }

  timeContext = self->_timeContext;
  if (timeContext)
  {
    dictionaryRepresentation2 = [(ATXPBPredictionTimeContext *)timeContext dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"timeContext"];
  }

  locationMotionContext = self->_locationMotionContext;
  if (locationMotionContext)
  {
    dictionaryRepresentation3 = [(ATXPBPredictionLocationMotionContext *)locationMotionContext dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"locationMotionContext"];
  }

  ambientLightContext = self->_ambientLightContext;
  if (ambientLightContext)
  {
    dictionaryRepresentation4 = [(ATXPBPredictionAmbientLightContext *)ambientLightContext dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"ambientLightContext"];
  }

  userContext = self->_userContext;
  if (userContext)
  {
    dictionaryRepresentation5 = [(ATXPBPredictionUserContext *)userContext dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"userContext"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    isOverridden = self->_isOverridden;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

  if (self->_deviceStateContext)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_timeContext)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_locationMotionContext)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_ambientLightContext)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_userContext)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[48] = self->_isOverridden;
    toCopy[52] |= 1u;
  }

  v5 = toCopy;
  if (self->_deviceStateContext)
  {
    [toCopy setDeviceStateContext:?];
    toCopy = v5;
  }

  if (self->_timeContext)
  {
    [v5 setTimeContext:?];
    toCopy = v5;
  }

  if (self->_locationMotionContext)
  {
    [v5 setLocationMotionContext:?];
    toCopy = v5;
  }

  if (self->_ambientLightContext)
  {
    [v5 setAmbientLightContext:?];
    toCopy = v5;
  }

  if (self->_userContext)
  {
    [v5 setUserContext:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 48) = self->_isOverridden;
    *(v5 + 52) |= 1u;
  }

  v7 = [(ATXPBPredictionDeviceStateContext *)self->_deviceStateContext copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(ATXPBPredictionTimeContext *)self->_timeContext copyWithZone:zone];
  v10 = v6[4];
  v6[4] = v9;

  v11 = [(ATXPBPredictionLocationMotionContext *)self->_locationMotionContext copyWithZone:zone];
  v12 = v6[3];
  v6[3] = v11;

  v13 = [(ATXPBPredictionAmbientLightContext *)self->_ambientLightContext copyWithZone:zone];
  v14 = v6[1];
  v6[1] = v13;

  v15 = [(ATXPBPredictionUserContext *)self->_userContext copyWithZone:zone];
  v16 = v6[5];
  v6[5] = v15;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = *(equalCopy + 52);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  if ((*(equalCopy + 52) & 1) == 0)
  {
    goto LABEL_15;
  }

  v5 = *(equalCopy + 48);
  if (!self->_isOverridden)
  {
LABEL_3:
    if ((v5 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_15:
    v11 = 0;
    goto LABEL_16;
  }

  if ((*(equalCopy + 48) & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_4:
  deviceStateContext = self->_deviceStateContext;
  if (deviceStateContext | *(equalCopy + 2) && ![(ATXPBPredictionDeviceStateContext *)deviceStateContext isEqual:?])
  {
    goto LABEL_15;
  }

  timeContext = self->_timeContext;
  if (timeContext | *(equalCopy + 4))
  {
    if (![(ATXPBPredictionTimeContext *)timeContext isEqual:?])
    {
      goto LABEL_15;
    }
  }

  locationMotionContext = self->_locationMotionContext;
  if (locationMotionContext | *(equalCopy + 3))
  {
    if (![(ATXPBPredictionLocationMotionContext *)locationMotionContext isEqual:?])
    {
      goto LABEL_15;
    }
  }

  ambientLightContext = self->_ambientLightContext;
  if (ambientLightContext | *(equalCopy + 1))
  {
    if (![(ATXPBPredictionAmbientLightContext *)ambientLightContext isEqual:?])
    {
      goto LABEL_15;
    }
  }

  userContext = self->_userContext;
  if (userContext | *(equalCopy + 5))
  {
    v11 = [(ATXPBPredictionUserContext *)userContext isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_16:

  return v11;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_isOverridden;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(ATXPBPredictionDeviceStateContext *)self->_deviceStateContext hash]^ v3;
  v5 = [(ATXPBPredictionTimeContext *)self->_timeContext hash];
  v6 = v4 ^ v5 ^ [(ATXPBPredictionLocationMotionContext *)self->_locationMotionContext hash];
  v7 = [(ATXPBPredictionAmbientLightContext *)self->_ambientLightContext hash];
  return v6 ^ v7 ^ [(ATXPBPredictionUserContext *)self->_userContext hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 52))
  {
    self->_isOverridden = *(fromCopy + 48);
    *&self->_has |= 1u;
  }

  deviceStateContext = self->_deviceStateContext;
  v7 = v5[2];
  v16 = v5;
  if (deviceStateContext)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(ATXPBPredictionDeviceStateContext *)deviceStateContext mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(ATXPBPredictionContext *)self setDeviceStateContext:?];
  }

  v5 = v16;
LABEL_9:
  timeContext = self->_timeContext;
  v9 = v5[4];
  if (timeContext)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(ATXPBPredictionTimeContext *)timeContext mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(ATXPBPredictionContext *)self setTimeContext:?];
  }

  v5 = v16;
LABEL_15:
  locationMotionContext = self->_locationMotionContext;
  v11 = v5[3];
  if (locationMotionContext)
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    [(ATXPBPredictionLocationMotionContext *)locationMotionContext mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    [(ATXPBPredictionContext *)self setLocationMotionContext:?];
  }

  v5 = v16;
LABEL_21:
  ambientLightContext = self->_ambientLightContext;
  v13 = v5[1];
  if (ambientLightContext)
  {
    if (!v13)
    {
      goto LABEL_27;
    }

    [(ATXPBPredictionAmbientLightContext *)ambientLightContext mergeFrom:?];
  }

  else
  {
    if (!v13)
    {
      goto LABEL_27;
    }

    [(ATXPBPredictionContext *)self setAmbientLightContext:?];
  }

  v5 = v16;
LABEL_27:
  userContext = self->_userContext;
  v15 = v5[5];
  if (userContext)
  {
    if (!v15)
    {
      goto LABEL_33;
    }

    userContext = [(ATXPBPredictionUserContext *)userContext mergeFrom:?];
  }

  else
  {
    if (!v15)
    {
      goto LABEL_33;
    }

    userContext = [(ATXPBPredictionContext *)self setUserContext:?];
  }

  v5 = v16;
LABEL_33:

  MEMORY[0x2821F96F8](userContext, v5);
}

@end