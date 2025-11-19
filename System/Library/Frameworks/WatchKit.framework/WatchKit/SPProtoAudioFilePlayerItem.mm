@interface SPProtoAudioFilePlayerItem
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SPProtoAudioFilePlayerItem

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SPProtoAudioFilePlayerItem;
  v4 = [(SPProtoAudioFilePlayerItem *)&v8 description];
  v5 = [(SPProtoAudioFilePlayerItem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  upsertWithAsset = self->_upsertWithAsset;
  if (upsertWithAsset)
  {
    v5 = [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)upsertWithAsset dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"upsertWithAsset"];
  }

  destroy = self->_destroy;
  if (destroy)
  {
    v7 = [(SPProtoObjectMessage *)destroy dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"destroy"];
  }

  setStatus = self->_setStatus;
  if (setStatus)
  {
    v9 = [(SPProtoAudioFilePlayerStatus *)setStatus dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"setStatus"];
  }

  getCurrentTime = self->_getCurrentTime;
  if (getCurrentTime)
  {
    v11 = [(SPProtoObjectMessage *)getCurrentTime dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"getCurrentTime"];
  }

  notifyTimeJumped = self->_notifyTimeJumped;
  if (notifyTimeJumped)
  {
    v13 = [(SPProtoObjectMessage *)notifyTimeJumped dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"notifyTimeJumped"];
  }

  notifyDidPlayToEndTime = self->_notifyDidPlayToEndTime;
  if (notifyDidPlayToEndTime)
  {
    v15 = [(SPProtoObjectMessage *)notifyDidPlayToEndTime dictionaryRepresentation];
    [v3 setObject:v15 forKey:@"notifyDidPlayToEndTime"];
  }

  notifyFailedToPlayToEndTime = self->_notifyFailedToPlayToEndTime;
  if (notifyFailedToPlayToEndTime)
  {
    v17 = [(SPProtoObjectMessage *)notifyFailedToPlayToEndTime dictionaryRepresentation];
    [v3 setObject:v17 forKey:@"notifyFailedToPlayToEndTime"];
  }

  setItemCurrentTime = self->_setItemCurrentTime;
  if (setItemCurrentTime)
  {
    v19 = [(SPProtoAudioFilePlayerItemSetCurrentTime *)setItemCurrentTime dictionaryRepresentation];
    [v3 setObject:v19 forKey:@"setItemCurrentTime"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_upsertWithAsset)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_destroy)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_setStatus)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_getCurrentTime)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_notifyTimeJumped)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_notifyDidPlayToEndTime)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_notifyFailedToPlayToEndTime)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_setItemCurrentTime)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_upsertWithAsset)
  {
    [v4 setUpsertWithAsset:?];
    v4 = v5;
  }

  if (self->_destroy)
  {
    [v5 setDestroy:?];
    v4 = v5;
  }

  if (self->_setStatus)
  {
    [v5 setSetStatus:?];
    v4 = v5;
  }

  if (self->_getCurrentTime)
  {
    [v5 setGetCurrentTime:?];
    v4 = v5;
  }

  if (self->_notifyTimeJumped)
  {
    [v5 setNotifyTimeJumped:?];
    v4 = v5;
  }

  if (self->_notifyDidPlayToEndTime)
  {
    [v5 setNotifyDidPlayToEndTime:?];
    v4 = v5;
  }

  if (self->_notifyFailedToPlayToEndTime)
  {
    [v5 setNotifyFailedToPlayToEndTime:?];
    v4 = v5;
  }

  if (self->_setItemCurrentTime)
  {
    [v5 setSetItemCurrentTime:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)self->_upsertWithAsset copyWithZone:a3];
  v7 = v5[8];
  v5[8] = v6;

  v8 = [(SPProtoObjectMessage *)self->_destroy copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(SPProtoAudioFilePlayerStatus *)self->_setStatus copyWithZone:a3];
  v11 = v5[7];
  v5[7] = v10;

  v12 = [(SPProtoObjectMessage *)self->_getCurrentTime copyWithZone:a3];
  v13 = v5[2];
  v5[2] = v12;

  v14 = [(SPProtoObjectMessage *)self->_notifyTimeJumped copyWithZone:a3];
  v15 = v5[5];
  v5[5] = v14;

  v16 = [(SPProtoObjectMessage *)self->_notifyDidPlayToEndTime copyWithZone:a3];
  v17 = v5[3];
  v5[3] = v16;

  v18 = [(SPProtoObjectMessage *)self->_notifyFailedToPlayToEndTime copyWithZone:a3];
  v19 = v5[4];
  v5[4] = v18;

  v20 = [(SPProtoAudioFilePlayerItemSetCurrentTime *)self->_setItemCurrentTime copyWithZone:a3];
  v21 = v5[6];
  v5[6] = v20;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((upsertWithAsset = self->_upsertWithAsset, !(upsertWithAsset | v4[8])) || -[SPProtoAudioFilePlayerUpdateContainedIdentifier isEqual:](upsertWithAsset, "isEqual:")) && ((destroy = self->_destroy, !(destroy | v4[1])) || -[SPProtoObjectMessage isEqual:](destroy, "isEqual:")) && ((setStatus = self->_setStatus, !(setStatus | v4[7])) || -[SPProtoAudioFilePlayerStatus isEqual:](setStatus, "isEqual:")) && ((getCurrentTime = self->_getCurrentTime, !(getCurrentTime | v4[2])) || -[SPProtoObjectMessage isEqual:](getCurrentTime, "isEqual:")) && ((notifyTimeJumped = self->_notifyTimeJumped, !(notifyTimeJumped | v4[5])) || -[SPProtoObjectMessage isEqual:](notifyTimeJumped, "isEqual:")) && ((notifyDidPlayToEndTime = self->_notifyDidPlayToEndTime, !(notifyDidPlayToEndTime | v4[3])) || -[SPProtoObjectMessage isEqual:](notifyDidPlayToEndTime, "isEqual:")) && ((notifyFailedToPlayToEndTime = self->_notifyFailedToPlayToEndTime, !(notifyFailedToPlayToEndTime | v4[4])) || -[SPProtoObjectMessage isEqual:](notifyFailedToPlayToEndTime, "isEqual:")))
  {
    setItemCurrentTime = self->_setItemCurrentTime;
    if (setItemCurrentTime | v4[6])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  upsertWithAsset = self->_upsertWithAsset;
  v21 = v4;
  v6 = v4[8];
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