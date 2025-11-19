@interface ADSegmentUpdateResponse
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSegmentRefreshIntervalInSeconds:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ADSegmentUpdateResponse

+ (id)options
{
  if (options_once_13 != -1)
  {
    +[ADSegmentUpdateResponse options];
  }

  v3 = options_sOptions_13;

  return v3;
}

void __34__ADSegmentUpdateResponse_options__block_invoke()
{
  v0 = options_sOptions_13;
  options_sOptions_13 = &unk_285104E48;
}

- (void)setHasSegmentRefreshIntervalInSeconds:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ADSegmentUpdateResponse;
  v4 = [(ADSegmentUpdateResponse *)&v8 description];
  v5 = [(ADSegmentUpdateResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  idDebug = self->_idDebug;
  if (idDebug)
  {
    [v3 setObject:idDebug forKey:@"idDebug"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_segmentRefreshIntervalInSeconds];
    [v4 setObject:v7 forKey:@"segmentRefreshIntervalInSeconds"];

    has = self->_has;
  }

  if (has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_maxSegmentUpdateIntervalInSeconds];
    [v4 setObject:v8 forKey:@"maxSegmentUpdateIntervalInSeconds"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_idDebug)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    segmentRefreshIntervalInSeconds = self->_segmentRefreshIntervalInSeconds;
    PBDataWriterWriteDoubleField();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    maxSegmentUpdateIntervalInSeconds = self->_maxSegmentUpdateIntervalInSeconds;
    PBDataWriterWriteDoubleField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_idDebug)
  {
    v6 = v4;
    [v4 setIdDebug:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 2) = *&self->_segmentRefreshIntervalInSeconds;
    *(v4 + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 1) = *&self->_maxSegmentUpdateIntervalInSeconds;
    *(v4 + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_idDebug copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_segmentRefreshIntervalInSeconds;
    *(v5 + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_maxSegmentUpdateIntervalInSeconds;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  idDebug = self->_idDebug;
  if (idDebug | *(v4 + 3))
  {
    if (![(NSString *)idDebug isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_segmentRefreshIntervalInSeconds != *(v4 + 2))
    {
      goto LABEL_13;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  v6 = (*(v4 + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_maxSegmentUpdateIntervalInSeconds != *(v4 + 1))
    {
      goto LABEL_13;
    }

    v6 = 1;
  }

LABEL_14:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_idDebug hash];
  if ((*&self->_has & 2) != 0)
  {
    segmentRefreshIntervalInSeconds = self->_segmentRefreshIntervalInSeconds;
    if (segmentRefreshIntervalInSeconds < 0.0)
    {
      segmentRefreshIntervalInSeconds = -segmentRefreshIntervalInSeconds;
    }

    *v4.i64 = floor(segmentRefreshIntervalInSeconds + 0.5);
    v8 = (segmentRefreshIntervalInSeconds - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v9), v5, v4);
    v6 = 2654435761u * *v4.i64;
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

  if (*&self->_has)
  {
    maxSegmentUpdateIntervalInSeconds = self->_maxSegmentUpdateIntervalInSeconds;
    if (maxSegmentUpdateIntervalInSeconds < 0.0)
    {
      maxSegmentUpdateIntervalInSeconds = -maxSegmentUpdateIntervalInSeconds;
    }

    *v4.i64 = floor(maxSegmentUpdateIntervalInSeconds + 0.5);
    v12 = (maxSegmentUpdateIntervalInSeconds - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v10 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v5, v4).i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  return v6 ^ v3 ^ v10;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 3))
  {
    v6 = v4;
    [(ADSegmentUpdateResponse *)self setIdDebug:?];
    v4 = v6;
  }

  v5 = *(v4 + 32);
  if ((v5 & 2) != 0)
  {
    self->_segmentRefreshIntervalInSeconds = v4[2];
    *&self->_has |= 2u;
    v5 = *(v4 + 32);
  }

  if (v5)
  {
    self->_maxSegmentUpdateIntervalInSeconds = v4[1];
    *&self->_has |= 1u;
  }
}

@end