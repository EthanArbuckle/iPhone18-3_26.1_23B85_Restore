@interface ModelMonitoringDataTrialIdentifier
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ModelMonitoringDataTrialIdentifier

- (id)description
{
  v7.receiver = self;
  v7.super_class = ModelMonitoringDataTrialIdentifier;
  v3 = [(ModelMonitoringDataTrialIdentifier *)&v7 description];
  v4 = [(ModelMonitoringDataTrialIdentifier *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_task)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_treatment)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_deployment)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_task)
  {
    [v4 setTask:?];
    v4 = v5;
  }

  if (self->_treatment)
  {
    [v5 setTreatment:?];
    v4 = v5;
  }

  if (self->_deployment)
  {
    [v5 setDeployment:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_task copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_treatment copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_deployment copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((task = self->_task, !(task | v4[2])) || -[NSString isEqual:](task, "isEqual:")) && ((treatment = self->_treatment, !(treatment | v4[3])) || -[NSString isEqual:](treatment, "isEqual:")))
  {
    deployment = self->_deployment;
    if (deployment | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(ModelMonitoringDataTrialIdentifier *)self setTask:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(ModelMonitoringDataTrialIdentifier *)self setTreatment:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(ModelMonitoringDataTrialIdentifier *)self setDeployment:?];
    v4 = v5;
  }
}

@end