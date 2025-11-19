@interface ATXPBDigestTimeline
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)initFromJSON:(id)a3;
- (id)jsonRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasFirstCollapsedViewTimestamp:(BOOL)a3;
- (void)setHasFirstScheduledViewTimestamp:(BOOL)a3;
- (void)setHasFirstUpcomingViewTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBDigestTimeline

- (void)setHasFirstUpcomingViewTimestamp:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasFirstCollapsedViewTimestamp:(BOOL)a3
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

- (void)setHasFirstScheduledViewTimestamp:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBDigestTimeline;
  v4 = [(ATXPBDigestTimeline *)&v8 description];
  v5 = [(ATXPBDigestTimeline *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstUpcomingViewTimestamp];
    [v3 setObject:v7 forKey:@"firstUpcomingViewTimestamp"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstCollapsedViewTimestamp];
  [v3 setObject:v8 forKey:@"firstCollapsedViewTimestamp"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstScheduledViewTimestamp];
  [v3 setObject:v9 forKey:@"firstScheduledViewTimestamp"];

  if (*&self->_has)
  {
LABEL_5:
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_digestRemovedTimestamp];
    [v3 setObject:v5 forKey:@"digestRemovedTimestamp"];
  }

LABEL_6:

  return v3;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  has = self->_has;
  if ((has & 8) != 0)
  {
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PBDataWriterWriteDoubleField();
  if (*&self->_has)
  {
LABEL_5:
    PBDataWriterWriteDoubleField();
  }

LABEL_6:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 8) != 0)
  {
    v4[4] = *&self->_firstUpcomingViewTimestamp;
    *(v4 + 40) |= 8u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v4[2] = *&self->_firstCollapsedViewTimestamp;
  *(v4 + 40) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v4[3] = *&self->_firstScheduledViewTimestamp;
  *(v4 + 40) |= 4u;
  if (*&self->_has)
  {
LABEL_5:
    v4[1] = *&self->_digestRemovedTimestamp;
    *(v4 + 40) |= 1u;
  }

LABEL_6:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(result + 4) = *&self->_firstUpcomingViewTimestamp;
    *(result + 40) |= 8u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 2) = *&self->_firstCollapsedViewTimestamp;
  *(result + 40) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_9:
  *(result + 3) = *&self->_firstScheduledViewTimestamp;
  *(result + 40) |= 4u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_5:
  *(result + 1) = *&self->_digestRemovedTimestamp;
  *(result + 40) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 40) & 8) == 0 || self->_firstUpcomingViewTimestamp != *(v4 + 4))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 40) & 8) != 0)
  {
LABEL_21:
    v5 = 0;
    goto LABEL_22;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_firstCollapsedViewTimestamp != *(v4 + 2))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 40) & 4) == 0 || self->_firstScheduledViewTimestamp != *(v4 + 3))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 40) & 4) != 0)
  {
    goto LABEL_21;
  }

  v5 = (*(v4 + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_digestRemovedTimestamp != *(v4 + 1))
    {
      goto LABEL_21;
    }

    v5 = 1;
  }

LABEL_22:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    firstUpcomingViewTimestamp = self->_firstUpcomingViewTimestamp;
    if (firstUpcomingViewTimestamp < 0.0)
    {
      firstUpcomingViewTimestamp = -firstUpcomingViewTimestamp;
    }

    *v2.i64 = floor(firstUpcomingViewTimestamp + 0.5);
    v6 = (firstUpcomingViewTimestamp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v7), v3, v2);
    v4 = 2654435761u * *v2.i64;
    if (v6 >= 0.0)
    {
      if (v6 > 0.0)
      {
        v4 += v6;
      }
    }

    else
    {
      v4 -= fabs(v6);
    }
  }

  else
  {
    v4 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    firstCollapsedViewTimestamp = self->_firstCollapsedViewTimestamp;
    if (firstCollapsedViewTimestamp < 0.0)
    {
      firstCollapsedViewTimestamp = -firstCollapsedViewTimestamp;
    }

    *v2.i64 = floor(firstCollapsedViewTimestamp + 0.5);
    v10 = (firstCollapsedViewTimestamp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v11), v3, v2);
    v8 = 2654435761u * *v2.i64;
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

  if ((*&self->_has & 4) != 0)
  {
    firstScheduledViewTimestamp = self->_firstScheduledViewTimestamp;
    if (firstScheduledViewTimestamp < 0.0)
    {
      firstScheduledViewTimestamp = -firstScheduledViewTimestamp;
    }

    *v2.i64 = floor(firstScheduledViewTimestamp + 0.5);
    v14 = (firstScheduledViewTimestamp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v15), v3, v2);
    v12 = 2654435761u * *v2.i64;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v12 += v14;
      }
    }

    else
    {
      v12 -= fabs(v14);
    }
  }

  else
  {
    v12 = 0;
  }

  if (*&self->_has)
  {
    digestRemovedTimestamp = self->_digestRemovedTimestamp;
    if (digestRemovedTimestamp < 0.0)
    {
      digestRemovedTimestamp = -digestRemovedTimestamp;
    }

    *v2.i64 = floor(digestRemovedTimestamp + 0.5);
    v18 = (digestRemovedTimestamp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v19.f64[0] = NAN;
    v19.f64[1] = NAN;
    v16 = 2654435761u * *vbslq_s8(vnegq_f64(v19), v3, v2).i64;
    if (v18 >= 0.0)
    {
      if (v18 > 0.0)
      {
        v16 += v18;
      }
    }

    else
    {
      v16 -= fabs(v18);
    }
  }

  else
  {
    v16 = 0;
  }

  return v8 ^ v4 ^ v12 ^ v16;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 40);
  if ((v5 & 8) != 0)
  {
    self->_firstUpcomingViewTimestamp = *(v4 + 4);
    *&self->_has |= 8u;
    v5 = *(v4 + 40);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(v4 + 40) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_firstCollapsedViewTimestamp = *(v4 + 2);
  *&self->_has |= 2u;
  v5 = *(v4 + 40);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  self->_firstScheduledViewTimestamp = *(v4 + 3);
  *&self->_has |= 4u;
  if (*(v4 + 40))
  {
LABEL_5:
    self->_digestRemovedTimestamp = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_6:
}

- (id)initFromJSON:(id)a3
{
  v4 = a3;
  v5 = [(ATXPBDigestTimeline *)self init];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      v7 = [v6 objectForKeyedSubscript:@"firstUpcomingViewTimestamp"];
      v8 = [ATXJSONHelper unwrapObject:v7];

      if (v8)
      {
        v9 = [v6 objectForKeyedSubscript:@"firstUpcomingViewTimestamp"];
        v10 = [ATXJSONHelper unwrapObject:v9];
        [v10 doubleValue];
        [(ATXPBDigestTimeline *)v5 setFirstUpcomingViewTimestamp:?];
      }

      v11 = [v6 objectForKeyedSubscript:@"firstCollapsedViewTimestamp"];
      v12 = [ATXJSONHelper unwrapObject:v11];

      if (v12)
      {
        v13 = [v6 objectForKeyedSubscript:@"firstCollapsedViewTimestamp"];
        v14 = [ATXJSONHelper unwrapObject:v13];
        [v14 doubleValue];
        [(ATXPBDigestTimeline *)v5 setFirstUpcomingViewTimestamp:?];
      }

      v15 = [v6 objectForKeyedSubscript:@"firstScheduledViewTimestamp"];
      v16 = [ATXJSONHelper unwrapObject:v15];

      if (v16)
      {
        v17 = [v6 objectForKeyedSubscript:@"firstScheduledViewTimestamp"];
        v18 = [ATXJSONHelper unwrapObject:v17];
        [v18 doubleValue];
        [(ATXPBDigestTimeline *)v5 setFirstUpcomingViewTimestamp:?];
      }

      v19 = [v6 objectForKeyedSubscript:@"digestRemovedTimestamp"];
      v20 = [ATXJSONHelper unwrapObject:v19];

      if (v20)
      {
        v21 = [v6 objectForKeyedSubscript:@"digestRemovedTimestamp"];
        v22 = [ATXJSONHelper unwrapObject:v21];
        [v22 doubleValue];
        [(ATXPBDigestTimeline *)v5 setFirstUpcomingViewTimestamp:?];
      }
    }
  }

  return v5;
}

- (id)jsonRepresentation
{
  v23[4] = *MEMORY[0x1E69E9840];
  v22[0] = @"firstUpcomingViewTimestamp";
  v21 = [(ATXPBDigestTimeline *)self hasFirstUpcomingViewTimestamp];
  if (v21)
  {
    v3 = MEMORY[0x1E696AD98];
    [(ATXPBDigestTimeline *)self firstUpcomingViewTimestamp];
    v20 = [v3 numberWithDouble:?];
    v4 = [ATXJSONHelper wrapObject:?];
  }

  else
  {
    v4 = [MEMORY[0x1E695DFB0] null];
    v20 = v4;
  }

  v23[0] = v4;
  v22[1] = @"firstCollapsedViewTimestamp";
  v18 = [(ATXPBDigestTimeline *)self hasFirstCollapsedViewTimestamp];
  if (v18)
  {
    v5 = MEMORY[0x1E696AD98];
    [(ATXPBDigestTimeline *)self firstCollapsedViewTimestamp];
    v19 = [v5 numberWithDouble:?];
    v6 = [ATXJSONHelper wrapObject:?];
  }

  else
  {
    v6 = [MEMORY[0x1E695DFB0] null];
    v19 = v6;
  }

  v23[1] = v6;
  v22[2] = @"firstScheduledViewTimestamp";
  v7 = [(ATXPBDigestTimeline *)self hasFirstScheduledViewTimestamp];
  v8 = off_1E80BF000;
  if (v7)
  {
    v9 = MEMORY[0x1E696AD98];
    [(ATXPBDigestTimeline *)self firstScheduledViewTimestamp];
    v10 = [v9 numberWithDouble:?];
    v11 = [ATXJSONHelper wrapObject:v10];
  }

  else
  {
    v11 = [MEMORY[0x1E695DFB0] null];
    v10 = v11;
  }

  v23[2] = v11;
  v22[3] = @"digestRemovedTimestamp";
  v12 = [(ATXPBDigestTimeline *)self hasDigestRemovedTimestamp];
  if (v12)
  {
    v13 = MEMORY[0x1E696AD98];
    [(ATXPBDigestTimeline *)self digestRemovedTimestamp];
    v8 = [v13 numberWithDouble:?];
    [ATXJSONHelper wrapObject:v8];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v14 = ;
  v23[3] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:4];
  if (v12)
  {

    v14 = v8;
  }

  if (v7)
  {
  }

  if (v18)
  {
  }

  if (v21)
  {
  }

  return v15;
}

@end