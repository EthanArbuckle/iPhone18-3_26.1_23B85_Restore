@interface ModelMonitoringDataTrialIdentifier
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ModelMonitoringDataTrialIdentifier

- (id)description
{
  v7.receiver = self;
  v7.super_class = ModelMonitoringDataTrialIdentifier;
  v3 = [(ModelMonitoringDataTrialIdentifier *)&v7 description];
  dictionaryRepresentation = [(ModelMonitoringDataTrialIdentifier *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  task = self->_task;
  if (task)
  {
    [v3 setObject:task forKey:@"task"];
  }

  treatment = self->_treatment;
  if (treatment)
  {
    [v4 setObject:treatment forKey:@"treatment"];
  }

  deployment = self->_deployment;
  if (deployment)
  {
    [v4 setObject:deployment forKey:@"deployment"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_task)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_treatment)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_deployment)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_task)
  {
    [toCopy setTask:?];
    toCopy = v5;
  }

  if (self->_treatment)
  {
    [v5 setTreatment:?];
    toCopy = v5;
  }

  if (self->_deployment)
  {
    [v5 setDeployment:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_task copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_treatment copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_deployment copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((task = self->_task, !(task | equalCopy[2])) || -[NSString isEqual:](task, "isEqual:")) && ((treatment = self->_treatment, !(treatment | equalCopy[3])) || -[NSString isEqual:](treatment, "isEqual:")))
  {
    deployment = self->_deployment;
    if (deployment | equalCopy[1])
    {
      v8 = [(NSString *)deployment isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_task hash];
  v4 = [(NSString *)self->_treatment hash]^ v3;
  return v4 ^ [(NSString *)self->_deployment hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(ModelMonitoringDataTrialIdentifier *)self setTask:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(ModelMonitoringDataTrialIdentifier *)self setTreatment:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(ModelMonitoringDataTrialIdentifier *)self setDeployment:?];
    fromCopy = v5;
  }
}

@end