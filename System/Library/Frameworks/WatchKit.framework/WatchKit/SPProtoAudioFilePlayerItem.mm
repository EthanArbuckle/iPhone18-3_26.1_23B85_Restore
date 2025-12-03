@interface SPProtoAudioFilePlayerItem
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SPProtoAudioFilePlayerItem

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SPProtoAudioFilePlayerItem;
  v4 = [(SPProtoAudioFilePlayerItem *)&v8 description];
  dictionaryRepresentation = [(SPProtoAudioFilePlayerItem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  upsertWithAsset = self->_upsertWithAsset;
  if (upsertWithAsset)
  {
    dictionaryRepresentation = [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)upsertWithAsset dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"upsertWithAsset"];
  }

  destroy = self->_destroy;
  if (destroy)
  {
    dictionaryRepresentation2 = [(SPProtoObjectMessage *)destroy dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"destroy"];
  }

  setStatus = self->_setStatus;
  if (setStatus)
  {
    dictionaryRepresentation3 = [(SPProtoAudioFilePlayerStatus *)setStatus dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"setStatus"];
  }

  getCurrentTime = self->_getCurrentTime;
  if (getCurrentTime)
  {
    dictionaryRepresentation4 = [(SPProtoObjectMessage *)getCurrentTime dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"getCurrentTime"];
  }

  notifyTimeJumped = self->_notifyTimeJumped;
  if (notifyTimeJumped)
  {
    dictionaryRepresentation5 = [(SPProtoObjectMessage *)notifyTimeJumped dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"notifyTimeJumped"];
  }

  notifyDidPlayToEndTime = self->_notifyDidPlayToEndTime;
  if (notifyDidPlayToEndTime)
  {
    dictionaryRepresentation6 = [(SPProtoObjectMessage *)notifyDidPlayToEndTime dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation6 forKey:@"notifyDidPlayToEndTime"];
  }

  notifyFailedToPlayToEndTime = self->_notifyFailedToPlayToEndTime;
  if (notifyFailedToPlayToEndTime)
  {
    dictionaryRepresentation7 = [(SPProtoObjectMessage *)notifyFailedToPlayToEndTime dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation7 forKey:@"notifyFailedToPlayToEndTime"];
  }

  setItemCurrentTime = self->_setItemCurrentTime;
  if (setItemCurrentTime)
  {
    dictionaryRepresentation8 = [(SPProtoAudioFilePlayerItemSetCurrentTime *)setItemCurrentTime dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation8 forKey:@"setItemCurrentTime"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_upsertWithAsset)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_destroy)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_setStatus)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_getCurrentTime)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_notifyTimeJumped)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_notifyDidPlayToEndTime)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_notifyFailedToPlayToEndTime)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_setItemCurrentTime)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_upsertWithAsset)
  {
    [toCopy setUpsertWithAsset:?];
    toCopy = v5;
  }

  if (self->_destroy)
  {
    [v5 setDestroy:?];
    toCopy = v5;
  }

  if (self->_setStatus)
  {
    [v5 setSetStatus:?];
    toCopy = v5;
  }

  if (self->_getCurrentTime)
  {
    [v5 setGetCurrentTime:?];
    toCopy = v5;
  }

  if (self->_notifyTimeJumped)
  {
    [v5 setNotifyTimeJumped:?];
    toCopy = v5;
  }

  if (self->_notifyDidPlayToEndTime)
  {
    [v5 setNotifyDidPlayToEndTime:?];
    toCopy = v5;
  }

  if (self->_notifyFailedToPlayToEndTime)
  {
    [v5 setNotifyFailedToPlayToEndTime:?];
    toCopy = v5;
  }

  if (self->_setItemCurrentTime)
  {
    [v5 setSetItemCurrentTime:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)self->_upsertWithAsset copyWithZone:zone];
  v7 = v5[8];
  v5[8] = v6;

  v8 = [(SPProtoObjectMessage *)self->_destroy copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(SPProtoAudioFilePlayerStatus *)self->_setStatus copyWithZone:zone];
  v11 = v5[7];
  v5[7] = v10;

  v12 = [(SPProtoObjectMessage *)self->_getCurrentTime copyWithZone:zone];
  v13 = v5[2];
  v5[2] = v12;

  v14 = [(SPProtoObjectMessage *)self->_notifyTimeJumped copyWithZone:zone];
  v15 = v5[5];
  v5[5] = v14;

  v16 = [(SPProtoObjectMessage *)self->_notifyDidPlayToEndTime copyWithZone:zone];
  v17 = v5[3];
  v5[3] = v16;

  v18 = [(SPProtoObjectMessage *)self->_notifyFailedToPlayToEndTime copyWithZone:zone];
  v19 = v5[4];
  v5[4] = v18;

  v20 = [(SPProtoAudioFilePlayerItemSetCurrentTime *)self->_setItemCurrentTime copyWithZone:zone];
  v21 = v5[6];
  v5[6] = v20;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((upsertWithAsset = self->_upsertWithAsset, !(upsertWithAsset | equalCopy[8])) || -[SPProtoAudioFilePlayerUpdateContainedIdentifier isEqual:](upsertWithAsset, "isEqual:")) && ((destroy = self->_destroy, !(destroy | equalCopy[1])) || -[SPProtoObjectMessage isEqual:](destroy, "isEqual:")) && ((setStatus = self->_setStatus, !(setStatus | equalCopy[7])) || -[SPProtoAudioFilePlayerStatus isEqual:](setStatus, "isEqual:")) && ((getCurrentTime = self->_getCurrentTime, !(getCurrentTime | equalCopy[2])) || -[SPProtoObjectMessage isEqual:](getCurrentTime, "isEqual:")) && ((notifyTimeJumped = self->_notifyTimeJumped, !(notifyTimeJumped | equalCopy[5])) || -[SPProtoObjectMessage isEqual:](notifyTimeJumped, "isEqual:")) && ((notifyDidPlayToEndTime = self->_notifyDidPlayToEndTime, !(notifyDidPlayToEndTime | equalCopy[3])) || -[SPProtoObjectMessage isEqual:](notifyDidPlayToEndTime, "isEqual:")) && ((notifyFailedToPlayToEndTime = self->_notifyFailedToPlayToEndTime, !(notifyFailedToPlayToEndTime | equalCopy[4])) || -[SPProtoObjectMessage isEqual:](notifyFailedToPlayToEndTime, "isEqual:")))
  {
    setItemCurrentTime = self->_setItemCurrentTime;
    if (setItemCurrentTime | equalCopy[6])
    {
      v13 = [(SPProtoAudioFilePlayerItemSetCurrentTime *)setItemCurrentTime isEqual:?];
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)self->_upsertWithAsset hash];
  v4 = [(SPProtoObjectMessage *)self->_destroy hash]^ v3;
  v5 = [(SPProtoAudioFilePlayerStatus *)self->_setStatus hash];
  v6 = v4 ^ v5 ^ [(SPProtoObjectMessage *)self->_getCurrentTime hash];
  v7 = [(SPProtoObjectMessage *)self->_notifyTimeJumped hash];
  v8 = v7 ^ [(SPProtoObjectMessage *)self->_notifyDidPlayToEndTime hash];
  v9 = v6 ^ v8 ^ [(SPProtoObjectMessage *)self->_notifyFailedToPlayToEndTime hash];
  return v9 ^ [(SPProtoAudioFilePlayerItemSetCurrentTime *)self->_setItemCurrentTime hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  upsertWithAsset = self->_upsertWithAsset;
  v21 = fromCopy;
  v6 = fromCopy[8];
  if (upsertWithAsset)
  {
    if (v6)
    {
      [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)upsertWithAsset mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SPProtoAudioFilePlayerItem *)self setUpsertWithAsset:?];
  }

  destroy = self->_destroy;
  v8 = v21[1];
  if (destroy)
  {
    if (v8)
    {
      [(SPProtoObjectMessage *)destroy mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SPProtoAudioFilePlayerItem *)self setDestroy:?];
  }

  setStatus = self->_setStatus;
  v10 = v21[7];
  if (setStatus)
  {
    if (v10)
    {
      [(SPProtoAudioFilePlayerStatus *)setStatus mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(SPProtoAudioFilePlayerItem *)self setSetStatus:?];
  }

  getCurrentTime = self->_getCurrentTime;
  v12 = v21[2];
  if (getCurrentTime)
  {
    if (v12)
    {
      [(SPProtoObjectMessage *)getCurrentTime mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(SPProtoAudioFilePlayerItem *)self setGetCurrentTime:?];
  }

  notifyTimeJumped = self->_notifyTimeJumped;
  v14 = v21[5];
  if (notifyTimeJumped)
  {
    if (v14)
    {
      [(SPProtoObjectMessage *)notifyTimeJumped mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(SPProtoAudioFilePlayerItem *)self setNotifyTimeJumped:?];
  }

  notifyDidPlayToEndTime = self->_notifyDidPlayToEndTime;
  v16 = v21[3];
  if (notifyDidPlayToEndTime)
  {
    if (v16)
    {
      [(SPProtoObjectMessage *)notifyDidPlayToEndTime mergeFrom:?];
    }
  }

  else if (v16)
  {
    [(SPProtoAudioFilePlayerItem *)self setNotifyDidPlayToEndTime:?];
  }

  notifyFailedToPlayToEndTime = self->_notifyFailedToPlayToEndTime;
  v18 = v21[4];
  if (notifyFailedToPlayToEndTime)
  {
    if (v18)
    {
      [(SPProtoObjectMessage *)notifyFailedToPlayToEndTime mergeFrom:?];
    }
  }

  else if (v18)
  {
    [(SPProtoAudioFilePlayerItem *)self setNotifyFailedToPlayToEndTime:?];
  }

  setItemCurrentTime = self->_setItemCurrentTime;
  v20 = v21[6];
  if (setItemCurrentTime)
  {
    if (v20)
    {
      [(SPProtoAudioFilePlayerItemSetCurrentTime *)setItemCurrentTime mergeFrom:?];
    }
  }

  else if (v20)
  {
    [(SPProtoAudioFilePlayerItem *)self setSetItemCurrentTime:?];
  }
}

@end