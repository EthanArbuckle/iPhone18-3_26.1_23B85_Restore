@interface PDDPTimeIntervalInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPTimeIntervalInfo

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPTimeIntervalInfo;
  v3 = [(PDDPTimeIntervalInfo *)&v7 description];
  v4 = [(PDDPTimeIntervalInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  startTime = self->_startTime;
  if (startTime)
  {
    v5 = [(PDDPDate *)startTime dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"start_time"];
  }

  if (*&self->_has)
  {
    v6 = [NSNumber numberWithDouble:self->_duration];
    [v3 setObject:v6 forKey:@"duration"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_startTime)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (*&self->_has)
  {
    duration = self->_duration;
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_startTime)
  {
    v5 = v4;
    [v4 setStartTime:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_duration;
    *(v4 + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PDDPDate *)self->_startTime copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  if (*&self->_has)
  {
    v5[1] = *&self->_duration;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  startTime = self->_startTime;
  if (startTime | *(v4 + 2))
  {
    if (![(PDDPDate *)startTime isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(v4 + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) != 0 && self->_duration == *(v4 + 1))
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(PDDPDate *)self->_startTime hash];
  if (*&self->_has)
  {
    duration = self->_duration;
    if (duration < 0.0)
    {
      duration = -duration;
    }

    *v4.i64 = floor(duration + 0.5);
    v8 = (duration - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v6 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 ^ v3;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  startTime = self->_startTime;
  v6 = *(v4 + 2);
  if (startTime)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    startTime = [(PDDPDate *)startTime mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    startTime = [(PDDPTimeIntervalInfo *)self setStartTime:?];
  }

  v4 = v7;
LABEL_7:
  if (*(v4 + 24))
  {
    self->_duration = *(v4 + 1);
    *&self->_has |= 1u;
  }

  _objc_release_x1(startTime, v4);
}

@end