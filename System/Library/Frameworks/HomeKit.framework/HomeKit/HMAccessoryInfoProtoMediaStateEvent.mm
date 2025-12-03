@interface HMAccessoryInfoProtoMediaStateEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasRepeatState:(BOOL)state;
- (void)setHasShuffleState:(BOOL)state;
- (void)setHasVolume:(BOOL)volume;
- (void)writeTo:(id)to;
@end

@implementation HMAccessoryInfoProtoMediaStateEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 48);
  if (v5)
  {
    self->_playbackState = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 48);
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

  else if ((*(fromCopy + 48) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_shuffleState = *(fromCopy + 3);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 48);
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
  self->_repeatState = *(fromCopy + 2);
  *&self->_has |= 2u;
  if ((*(fromCopy + 48) & 8) != 0)
  {
LABEL_5:
    self->_volume = *(fromCopy + 4);
    *&self->_has |= 8u;
  }

LABEL_6:
  if (*(fromCopy + 5))
  {
    v6 = fromCopy;
    [(HMAccessoryInfoProtoMediaStateEvent *)self setMediaIdentifier:?];
    fromCopy = v6;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  v5 = *(equalCopy + 48);
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_playbackState != *(equalCopy + 1))
    {
      goto LABEL_24;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_24:
    v7 = 0;
    goto LABEL_25;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 48) & 4) == 0 || self->_shuffleState != *(equalCopy + 3))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 48) & 4) != 0)
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_repeatState != *(equalCopy + 2))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 48) & 8) == 0 || self->_volume != *(equalCopy + 4))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 48) & 8) != 0)
  {
    goto LABEL_24;
  }

  mediaIdentifier = self->_mediaIdentifier;
  if (mediaIdentifier | *(equalCopy + 5))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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
  v8 = [(NSString *)self->_mediaIdentifier copyWithZone:zone];
  v9 = v6[5];
  v6[5] = v8;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_playbackState;
    *(toCopy + 48) |= 1u;
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

  toCopy[3] = self->_shuffleState;
  *(toCopy + 48) |= 4u;
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
  toCopy[2] = self->_repeatState;
  *(toCopy + 48) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    toCopy[4] = *&self->_volume;
    *(toCopy + 48) |= 8u;
  }

LABEL_6:
  if (self->_mediaIdentifier)
  {
    v6 = toCopy;
    [toCopy setMediaIdentifier:?];
    toCopy = v6;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v10 = toCopy;
  if (has)
  {
    playbackState = self->_playbackState;
    PBDataWriterWriteInt64Field();
    toCopy = v10;
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
  toCopy = v10;
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
  toCopy = v10;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    volume = self->_volume;
    PBDataWriterWriteDoubleField();
    toCopy = v10;
  }

LABEL_6:
  if (self->_mediaIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_playbackState];
    [dictionary setObject:v8 forKey:@"playbackState"];

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
  [dictionary setObject:v9 forKey:@"shuffleState"];

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
  [dictionary setObject:v10 forKey:@"repeatState"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_volume];
    [dictionary setObject:v5 forKey:@"volume"];
  }

LABEL_6:
  mediaIdentifier = self->_mediaIdentifier;
  if (mediaIdentifier)
  {
    [dictionary setObject:mediaIdentifier forKey:@"mediaIdentifier"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMAccessoryInfoProtoMediaStateEvent;
  v4 = [(HMAccessoryInfoProtoMediaStateEvent *)&v8 description];
  dictionaryRepresentation = [(HMAccessoryInfoProtoMediaStateEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasVolume:(BOOL)volume
{
  if (volume)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasRepeatState:(BOOL)state
{
  if (state)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasShuffleState:(BOOL)state
{
  if (state)
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