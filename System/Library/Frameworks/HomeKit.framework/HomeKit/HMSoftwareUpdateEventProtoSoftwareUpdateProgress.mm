@interface HMSoftwareUpdateEventProtoSoftwareUpdateProgress
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasPercentageComplete:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMSoftwareUpdateEventProtoSoftwareUpdateProgress

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 20);
  if ((v5 & 2) != 0)
  {
    self->_percentageComplete = *(v4 + 4);
    *&self->_has |= 2u;
    v5 = *(v4 + 20);
  }

  if (v5)
  {
    self->_estimatedTimeRemaining = *(v4 + 1);
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    percentageComplete = self->_percentageComplete;
    if (percentageComplete < 0.0)
    {
      percentageComplete = -percentageComplete;
    }

    *v2.i32 = floorf(percentageComplete + 0.5);
    v6 = (percentageComplete - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v7.i64[0] = 0x8000000080000000;
    v7.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v7, v3, v2);
    v4 = 2654435761u * *v2.i32;
    if (v6 >= 0.0)
    {
      if (v6 > 0.0)
      {
        v4 += v6;
      }
    }

    else
    {
      v4 -= fabsf(v6);
    }
  }

  else
  {
    v4 = 0;
  }

  if (*&self->_has)
  {
    estimatedTimeRemaining = self->_estimatedTimeRemaining;
    if (estimatedTimeRemaining < 0.0)
    {
      estimatedTimeRemaining = -estimatedTimeRemaining;
    }

    *v2.i64 = floor(estimatedTimeRemaining + 0.5);
    v10 = (estimatedTimeRemaining - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v8 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v3, v2).i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v8 += v10;
      }
    }

    else
    {
      v8 -= fabs(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 20) & 2) == 0 || self->_percentageComplete != *(v4 + 4))
    {
      goto LABEL_11;
    }
  }

  else if ((*(v4 + 20) & 2) != 0)
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = (*(v4 + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_estimatedTimeRemaining != *(v4 + 1))
    {
      goto LABEL_11;
    }

    v5 = 1;
  }

LABEL_12:

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 4) = LODWORD(self->_percentageComplete);
    *(result + 20) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(result + 1) = *&self->_estimatedTimeRemaining;
    *(result + 20) |= 1u;
  }

  return result;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[4] = LODWORD(self->_percentageComplete);
    *(v4 + 20) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 1) = *&self->_estimatedTimeRemaining;
    *(v4 + 20) |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if ((has & 2) != 0)
  {
    percentageComplete = self->_percentageComplete;
    PBDataWriterWriteFloatField();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    estimatedTimeRemaining = self->_estimatedTimeRemaining;
    PBDataWriterWriteDoubleField();
    v4 = v8;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *&v4 = self->_percentageComplete;
    v6 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
    [v3 setObject:v6 forKey:@"percentageComplete"];

    has = self->_has;
  }

  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_estimatedTimeRemaining];
    [v3 setObject:v7 forKey:@"estimatedTimeRemaining"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMSoftwareUpdateEventProtoSoftwareUpdateProgress;
  v4 = [(HMSoftwareUpdateEventProtoSoftwareUpdateProgress *)&v8 description];
  v5 = [(HMSoftwareUpdateEventProtoSoftwareUpdateProgress *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasPercentageComplete:(BOOL)a3
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