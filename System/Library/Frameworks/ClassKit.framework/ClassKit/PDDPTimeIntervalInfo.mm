@interface PDDPTimeIntervalInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDDPTimeIntervalInfo

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPTimeIntervalInfo;
  v3 = [(PDDPTimeIntervalInfo *)&v7 description];
  dictionaryRepresentation = [(PDDPTimeIntervalInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  startTime = self->_startTime;
  if (startTime)
  {
    dictionaryRepresentation = [(PDDPDate *)startTime dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"start_time"];
  }

  if (*&self->_has)
  {
    v6 = [NSNumber numberWithDouble:self->_duration];
    [v3 setObject:v6 forKey:@"duration"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_startTime)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    duration = self->_duration;
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_startTime)
  {
    v5 = toCopy;
    [toCopy setStartTime:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_duration;
    *(toCopy + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PDDPDate *)self->_startTime copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  if (*&self->_has)
  {
    v5[1] = *&self->_duration;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  startTime = self->_startTime;
  if (startTime | *(equalCopy + 2))
  {
    if (![(PDDPDate *)startTime isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(equalCopy + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) != 0 && self->_duration == *(equalCopy + 1))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  startTime = self->_startTime;
  v6 = *(fromCopy + 2);
  if (startTime)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    startTime = [(PDDPDate *)startTime mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    startTime = [(PDDPTimeIntervalInfo *)self setStartTime:?];
  }

  fromCopy = v7;
LABEL_7:
  if (*(fromCopy + 24))
  {
    self->_duration = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  _objc_release_x1(startTime, fromCopy);
}

@end