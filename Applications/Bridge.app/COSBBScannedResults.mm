@interface COSBBScannedResults
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasInvalid:(BOOL)invalid;
- (void)setHasLeftWristLeftCrown:(BOOL)crown;
- (void)setHasLeftWristRightCrown:(BOOL)crown;
- (void)setHasNone:(BOOL)none;
- (void)setHasPalm:(BOOL)palm;
- (void)setHasRightWristLeftCrown:(BOOL)crown;
- (void)setHasRightWristRightCrown:(BOOL)crown;
- (void)setHasTime:(BOOL)time;
- (void)writeTo:(id)to;
@end

@implementation COSBBScannedResults

- (void)setHasTime:(BOOL)time
{
  if (time)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasNone:(BOOL)none
{
  if (none)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasInvalid:(BOOL)invalid
{
  if (invalid)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasLeftWristRightCrown:(BOOL)crown
{
  if (crown)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasLeftWristLeftCrown:(BOOL)crown
{
  if (crown)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasRightWristRightCrown:(BOOL)crown
{
  if (crown)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasRightWristLeftCrown:(BOOL)crown
{
  if (crown)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasPalm:(BOOL)palm
{
  if (palm)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = COSBBScannedResults;
  v3 = [(COSBBScannedResults *)&v7 description];
  dictionaryRepresentation = [(COSBBScannedResults *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    v7 = [NSNumber numberWithDouble:self->_time];
    [v3 setObject:v7 forKey:@"time"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v8 = [NSNumber numberWithDouble:self->_none];
  [v3 setObject:v8 forKey:@"none"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v9 = [NSNumber numberWithDouble:self->_invalid];
  [v3 setObject:v9 forKey:@"invalid"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v10 = [NSNumber numberWithDouble:self->_leftWristRightCrown];
  [v3 setObject:v10 forKey:@"leftWristRightCrown"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v11 = [NSNumber numberWithDouble:self->_leftWristLeftCrown];
  [v3 setObject:v11 forKey:@"leftWristLeftCrown"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v12 = [NSNumber numberWithDouble:self->_rightWristRightCrown];
  [v3 setObject:v12 forKey:@"rightWristRightCrown"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v13 = [NSNumber numberWithDouble:self->_rightWristLeftCrown];
  [v3 setObject:v13 forKey:@"rightWristLeftCrown"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  v14 = [NSNumber numberWithDouble:self->_palm];
  [v3 setObject:v14 forKey:@"palm"];

  if (*&self->_has)
  {
LABEL_10:
    v5 = [NSNumber numberWithDouble:self->_dock];
    [v3 setObject:v5 forKey:@"dock"];
  }

LABEL_11:

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  PBDataWriterWriteDoubleField();
  if (*&self->_has)
  {
LABEL_10:
    PBDataWriterWriteDoubleField();
  }

LABEL_11:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    toCopy[9] = *&self->_time;
    *(toCopy + 40) |= 0x100u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  toCopy[5] = *&self->_none;
  *(toCopy + 40) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  toCopy[2] = *&self->_invalid;
  *(toCopy + 40) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  toCopy[4] = *&self->_leftWristRightCrown;
  *(toCopy + 40) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  toCopy[3] = *&self->_leftWristLeftCrown;
  *(toCopy + 40) |= 4u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  toCopy[8] = *&self->_rightWristRightCrown;
  *(toCopy + 40) |= 0x80u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  toCopy[7] = *&self->_rightWristLeftCrown;
  *(toCopy + 40) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  toCopy[6] = *&self->_palm;
  *(toCopy + 40) |= 0x20u;
  if (*&self->_has)
  {
LABEL_10:
    toCopy[1] = *&self->_dock;
    *(toCopy + 40) |= 1u;
  }

LABEL_11:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    *(result + 9) = *&self->_time;
    *(result + 40) |= 0x100u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(result + 5) = *&self->_none;
  *(result + 40) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 2) = *&self->_invalid;
  *(result + 40) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 4) = *&self->_leftWristRightCrown;
  *(result + 40) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 3) = *&self->_leftWristLeftCrown;
  *(result + 40) |= 4u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 8) = *&self->_rightWristRightCrown;
  *(result + 40) |= 0x80u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 7) = *&self->_rightWristLeftCrown;
  *(result + 40) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      return result;
    }

    goto LABEL_10;
  }

LABEL_19:
  *(result + 6) = *&self->_palm;
  *(result + 40) |= 0x20u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_10:
  *(result + 1) = *&self->_dock;
  *(result + 40) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_46;
  }

  has = self->_has;
  v6 = *(equalCopy + 40);
  if ((has & 0x100) != 0)
  {
    if ((*(equalCopy + 40) & 0x100) == 0 || self->_time != *(equalCopy + 9))
    {
      goto LABEL_46;
    }
  }

  else if ((*(equalCopy + 40) & 0x100) != 0)
  {
LABEL_46:
    v7 = 0;
    goto LABEL_47;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_none != *(equalCopy + 5))
    {
      goto LABEL_46;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_46;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_invalid != *(equalCopy + 2))
    {
      goto LABEL_46;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_46;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_leftWristRightCrown != *(equalCopy + 4))
    {
      goto LABEL_46;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_46;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_leftWristLeftCrown != *(equalCopy + 3))
    {
      goto LABEL_46;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_46;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_rightWristRightCrown != *(equalCopy + 8))
    {
      goto LABEL_46;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_46;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_rightWristLeftCrown != *(equalCopy + 7))
    {
      goto LABEL_46;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_46;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_palm != *(equalCopy + 6))
    {
      goto LABEL_46;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_46;
  }

  v7 = (v6 & 1) == 0;
  if (has)
  {
    if ((v6 & 1) == 0 || self->_dock != *(equalCopy + 1))
    {
      goto LABEL_46;
    }

    v7 = 1;
  }

LABEL_47:

  return v7;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    time = self->_time;
    if (time < 0.0)
    {
      time = -time;
    }

    *v2.i64 = floor(time + 0.5);
    v7 = (time - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
    v5 = 2654435761u * *v2.i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((has & 0x10) != 0)
  {
    none = self->_none;
    if (none < 0.0)
    {
      none = -none;
    }

    *v2.i64 = floor(none + 0.5);
    v11 = (none - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v12), v3, v2);
    v9 = 2654435761u * *v2.i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabs(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  if ((has & 2) != 0)
  {
    invalid = self->_invalid;
    if (invalid < 0.0)
    {
      invalid = -invalid;
    }

    *v2.i64 = floor(invalid + 0.5);
    v15 = (invalid - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v16), v3, v2);
    v13 = 2654435761u * *v2.i64;
    if (v15 >= 0.0)
    {
      if (v15 > 0.0)
      {
        v13 += v15;
      }
    }

    else
    {
      v13 -= fabs(v15);
    }
  }

  else
  {
    v13 = 0;
  }

  if ((has & 8) != 0)
  {
    leftWristRightCrown = self->_leftWristRightCrown;
    if (leftWristRightCrown < 0.0)
    {
      leftWristRightCrown = -leftWristRightCrown;
    }

    *v2.i64 = floor(leftWristRightCrown + 0.5);
    v19 = (leftWristRightCrown - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v20.f64[0] = NAN;
    v20.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v20), v3, v2);
    v17 = 2654435761u * *v2.i64;
    if (v19 >= 0.0)
    {
      if (v19 > 0.0)
      {
        v17 += v19;
      }
    }

    else
    {
      v17 -= fabs(v19);
    }
  }

  else
  {
    v17 = 0;
  }

  if ((has & 4) != 0)
  {
    leftWristLeftCrown = self->_leftWristLeftCrown;
    if (leftWristLeftCrown < 0.0)
    {
      leftWristLeftCrown = -leftWristLeftCrown;
    }

    *v2.i64 = floor(leftWristLeftCrown + 0.5);
    v23 = (leftWristLeftCrown - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v24.f64[0] = NAN;
    v24.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v24), v3, v2);
    v21 = 2654435761u * *v2.i64;
    if (v23 >= 0.0)
    {
      if (v23 > 0.0)
      {
        v21 += v23;
      }
    }

    else
    {
      v21 -= fabs(v23);
    }
  }

  else
  {
    v21 = 0;
  }

  if ((has & 0x80) != 0)
  {
    rightWristRightCrown = self->_rightWristRightCrown;
    if (rightWristRightCrown < 0.0)
    {
      rightWristRightCrown = -rightWristRightCrown;
    }

    *v2.i64 = floor(rightWristRightCrown + 0.5);
    v27 = (rightWristRightCrown - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v28.f64[0] = NAN;
    v28.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v28), v3, v2);
    v25 = 2654435761u * *v2.i64;
    if (v27 >= 0.0)
    {
      if (v27 > 0.0)
      {
        v25 += v27;
      }
    }

    else
    {
      v25 -= fabs(v27);
    }
  }

  else
  {
    v25 = 0;
  }

  if ((has & 0x40) != 0)
  {
    rightWristLeftCrown = self->_rightWristLeftCrown;
    if (rightWristLeftCrown < 0.0)
    {
      rightWristLeftCrown = -rightWristLeftCrown;
    }

    *v2.i64 = floor(rightWristLeftCrown + 0.5);
    v31 = (rightWristLeftCrown - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v32.f64[0] = NAN;
    v32.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v32), v3, v2);
    v29 = 2654435761u * *v2.i64;
    if (v31 >= 0.0)
    {
      if (v31 > 0.0)
      {
        v29 += v31;
      }
    }

    else
    {
      v29 -= fabs(v31);
    }
  }

  else
  {
    v29 = 0;
  }

  if ((has & 0x20) != 0)
  {
    palm = self->_palm;
    if (palm < 0.0)
    {
      palm = -palm;
    }

    *v2.i64 = floor(palm + 0.5);
    v35 = (palm - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v36.f64[0] = NAN;
    v36.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v36), v3, v2);
    v33 = 2654435761u * *v2.i64;
    if (v35 >= 0.0)
    {
      if (v35 > 0.0)
      {
        v33 += v35;
      }
    }

    else
    {
      v33 -= fabs(v35);
    }
  }

  else
  {
    v33 = 0;
  }

  if (has)
  {
    dock = self->_dock;
    if (dock < 0.0)
    {
      dock = -dock;
    }

    *v2.i64 = floor(dock + 0.5);
    v39 = (dock - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v40.f64[0] = NAN;
    v40.f64[1] = NAN;
    v37 = 2654435761u * *vbslq_s8(vnegq_f64(v40), v3, v2).i64;
    if (v39 >= 0.0)
    {
      if (v39 > 0.0)
      {
        v37 += v39;
      }
    }

    else
    {
      v37 -= fabs(v39);
    }
  }

  else
  {
    v37 = 0;
  }

  return v9 ^ v5 ^ v13 ^ v17 ^ v21 ^ v25 ^ v29 ^ v33 ^ v37;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 40);
  if ((v5 & 0x100) != 0)
  {
    self->_time = *(fromCopy + 9);
    *&self->_has |= 0x100u;
    v5 = *(fromCopy + 40);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_none = *(fromCopy + 5);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 40);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_invalid = *(fromCopy + 2);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 40);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_leftWristRightCrown = *(fromCopy + 4);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 40);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_leftWristLeftCrown = *(fromCopy + 3);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 40);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_rightWristRightCrown = *(fromCopy + 8);
  *&self->_has |= 0x80u;
  v5 = *(fromCopy + 40);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_rightWristLeftCrown = *(fromCopy + 7);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 40);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  self->_palm = *(fromCopy + 6);
  *&self->_has |= 0x20u;
  if (*(fromCopy + 40))
  {
LABEL_10:
    self->_dock = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

LABEL_11:
}

@end