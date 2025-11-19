@interface HMAccessoryInfoProtoMediaStateEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasRepeatState:(BOOL)a3;
- (void)setHasShuffleState:(BOOL)a3;
- (void)setHasVolume:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMAccessoryInfoProtoMediaStateEvent

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 48);
  if (v5)
  {
    self->_playbackState = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 48);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(v4 + 48) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_shuffleState = *(v4 + 3);
  *&self->_has |= 4u;
  v5 = *(v4 + 48);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  self->_repeatState = *(v4 + 2);
  *&self->_has |= 2u;
  if ((*(v4 + 48) & 8) != 0)
  {
LABEL_5:
    self->_volume = *(v4 + 4);
    *&self->_has |= 8u;
  }

LABEL_6:
  if (*(v4 + 5))
  {
    v6 = v4;
    [(HMAccessoryInfoProtoMediaStateEvent *)self setMediaIdentifier:?];
    v4 = v6;
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_playbackState;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v9 = 2654435761 * self->_shuffleState;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      v10 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_12:
      v14 = 0;
      return v9 ^ v8 ^ v10 ^ v14 ^ [(NSString *)self->_mediaIdentifier hash:v3];
    }
  }

  else
  {
    v8 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  v10 = 2654435761 * self->_repeatState;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  volume = self->_volume;
  if (volume < 0.0)
  {
    volume = -volume;
  }

  *v6.i64 = floor(volume + 0.5);
  v12 = (volume - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v13.f64[0] = NAN;
  v13.f64[1] = NAN;
  v14 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v7, v6).i64;
  if (v12 >= 0.0)
  {
    if (v12 > 0.0)
    {
      v14 += v12;
    }
  }

  else
  {
    v14 -= fabs(v12);
  }

  return v9 ^ v8 ^ v10 ^ v14 ^ [(NSString *)self->_mediaIdentifier hash:v3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  v5 = *(v4 + 48);
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_playbackState != *(v4 + 1))
    {
      goto LABEL_24;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_24:
    v7 = 0;
    goto LABEL_25;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 48) & 4) == 0 || self->_shuffleState != *(v4 + 3))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 48) & 4) != 0)
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_repeatState != *(v4 + 2))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 48) & 8) == 0 || self->_volume != *(v4 + 4))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 48) & 8) != 0)
  {
    goto LABEL_24;
  }

  mediaIdentifier = self->_mediaIdentifier;
  if (mediaIdentifier | *(v4 + 5))
  {
    v7 = [(NSString *)mediaIdentifier isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_25:

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_playbackState;
    *(v5 + 48) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v5 + 16) = self->_repeatState;
      *(v5 + 48) |= 2u;
      if ((*&self->_has & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 24) = self->_shuffleState;
  *(v5 + 48) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((has & 8) != 0)
  {
LABEL_5:
    *(v5 + 32) = self->_volume;
    *(v5 + 48) |= 8u;
  }

LABEL_6:
  v8 = [(NSString *)self->_mediaIdentifier copyWithZone:a3];
  v9 = v6[5];
  v6[5] = v8;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_playbackState;
    *(v4 + 48) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v4[3] = self->_shuffleState;
  *(v4 + 48) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  v4[2] = self->_repeatState;
  *(v4 + 48) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v4[4] = *&self->_volume;
    *(v4 + 48) |= 8u;
  }

LABEL_6:
  if (self->_mediaIdentifier)
  {
    v6 = v4;
    [v4 setMediaIdentifier:?];
    v4 = v6;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v10 = v4;
  if (has)
  {
    playbackState = self->_playbackState;
    PBDataWriterWriteInt64Field();
    v4 = v10;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  shuffleState = self->_shuffleState;
  PBDataWriterWriteInt64Field();
  v4 = v10;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  repeatState = self->_repeatState;
  PBDataWriterWriteInt64Field();
  v4 = v10;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    volume = self->_volume;
    PBDataWriterWriteDoubleField();
    v4 = v10;
  }

LABEL_6:
  if (self->_mediaIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_playbackState];
    [v3 setObject:v8 forKey:@"playbackState"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_shuffleState];
  [v3 setObject:v9 forKey:@"shuffleState"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_repeatState];
  [v3 setObject:v10 forKey:@"repeatState"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_volume];
    [v3 setObject:v5 forKey:@"volume"];
  }

LABEL_6:
  mediaIdentifier = self->_mediaIdentifier;
  if (mediaIdentifier)
  {
    [v3 setObject:mediaIdentifier forKey:@"mediaIdentifier"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMAccessoryInfoProtoMediaStateEvent;
  v4 = [(HMAccessoryInfoProtoMediaStateEvent *)&v8 description];
  v5 = [(HMAccessoryInfoProtoMediaStateEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasVolume:(BOOL)a3
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

- (void)setHasRepeatState:(BOOL)a3
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

- (void)setHasShuffleState:(BOOL)a3
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

@end