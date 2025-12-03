@interface SPProtoAudioFileQueuePlayer
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SPProtoAudioFileQueuePlayer

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SPProtoAudioFileQueuePlayer;
  v4 = [(SPProtoAudioFileQueuePlayer *)&v8 description];
  dictionaryRepresentation = [(SPProtoAudioFileQueuePlayer *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  upsertWithItems = self->_upsertWithItems;
  if (upsertWithItems)
  {
    dictionaryRepresentation = [(SPProtoAudioFileQueuePlayerSetItems *)upsertWithItems dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"upsertWithItems"];
  }

  destroy = self->_destroy;
  if (destroy)
  {
    dictionaryRepresentation2 = [(SPProtoObjectMessage *)destroy dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"destroy"];
  }

  setRate = self->_setRate;
  if (setRate)
  {
    dictionaryRepresentation3 = [(SPProtoAudioFileQueuePlayerSetRate *)setRate dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"setRate"];
  }

  replaceCurrentItem = self->_replaceCurrentItem;
  if (replaceCurrentItem)
  {
    dictionaryRepresentation4 = [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)replaceCurrentItem dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"replaceCurrentItem"];
  }

  setStatus = self->_setStatus;
  if (setStatus)
  {
    dictionaryRepresentation5 = [(SPProtoAudioFilePlayerStatus *)setStatus dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"setStatus"];
  }

  advanceToNextItem = self->_advanceToNextItem;
  if (advanceToNextItem)
  {
    dictionaryRepresentation6 = [(SPProtoObjectMessage *)advanceToNextItem dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation6 forKey:@"advanceToNextItem"];
  }

  appendItem = self->_appendItem;
  if (appendItem)
  {
    dictionaryRepresentation7 = [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)appendItem dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation7 forKey:@"appendItem"];
  }

  removeItem = self->_removeItem;
  if (removeItem)
  {
    dictionaryRepresentation8 = [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)removeItem dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation8 forKey:@"removeItem"];
  }

  removeAllItems = self->_removeAllItems;
  if (removeAllItems)
  {
    dictionaryRepresentation9 = [(SPProtoObjectMessage *)removeAllItems dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation9 forKey:@"removeAllItems"];
  }

  setCurrentItem = self->_setCurrentItem;
  if (setCurrentItem)
  {
    dictionaryRepresentation10 = [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)setCurrentItem dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation10 forKey:@"setCurrentItem"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_upsertWithItems)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_destroy)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_setRate)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_replaceCurrentItem)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_setStatus)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_advanceToNextItem)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_appendItem)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_removeItem)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_removeAllItems)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_setCurrentItem)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_upsertWithItems)
  {
    [toCopy setUpsertWithItems:?];
    toCopy = v5;
  }

  if (self->_destroy)
  {
    [v5 setDestroy:?];
    toCopy = v5;
  }

  if (self->_setRate)
  {
    [v5 setSetRate:?];
    toCopy = v5;
  }

  if (self->_replaceCurrentItem)
  {
    [v5 setReplaceCurrentItem:?];
    toCopy = v5;
  }

  if (self->_setStatus)
  {
    [v5 setSetStatus:?];
    toCopy = v5;
  }

  if (self->_advanceToNextItem)
  {
    [v5 setAdvanceToNextItem:?];
    toCopy = v5;
  }

  if (self->_appendItem)
  {
    [v5 setAppendItem:?];
    toCopy = v5;
  }

  if (self->_removeItem)
  {
    [v5 setRemoveItem:?];
    toCopy = v5;
  }

  if (self->_removeAllItems)
  {
    [v5 setRemoveAllItems:?];
    toCopy = v5;
  }

  if (self->_setCurrentItem)
  {
    [v5 setSetCurrentItem:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SPProtoAudioFileQueuePlayerSetItems *)self->_upsertWithItems copyWithZone:zone];
  v7 = v5[10];
  v5[10] = v6;

  v8 = [(SPProtoObjectMessage *)self->_destroy copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(SPProtoAudioFileQueuePlayerSetRate *)self->_setRate copyWithZone:zone];
  v11 = v5[8];
  v5[8] = v10;

  v12 = [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)self->_replaceCurrentItem copyWithZone:zone];
  v13 = v5[6];
  v5[6] = v12;

  v14 = [(SPProtoAudioFilePlayerStatus *)self->_setStatus copyWithZone:zone];
  v15 = v5[9];
  v5[9] = v14;

  v16 = [(SPProtoObjectMessage *)self->_advanceToNextItem copyWithZone:zone];
  v17 = v5[1];
  v5[1] = v16;

  v18 = [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)self->_appendItem copyWithZone:zone];
  v19 = v5[2];
  v5[2] = v18;

  v20 = [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)self->_removeItem copyWithZone:zone];
  v21 = v5[5];
  v5[5] = v20;

  v22 = [(SPProtoObjectMessage *)self->_removeAllItems copyWithZone:zone];
  v23 = v5[4];
  v5[4] = v22;

  v24 = [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)self->_setCurrentItem copyWithZone:zone];
  v25 = v5[7];
  v5[7] = v24;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  upsertWithItems = self->_upsertWithItems;
  if (upsertWithItems | equalCopy[10])
  {
    if (![(SPProtoAudioFileQueuePlayerSetItems *)upsertWithItems isEqual:?])
    {
      goto LABEL_22;
    }
  }

  destroy = self->_destroy;
  if (destroy | equalCopy[3] && ![(SPProtoObjectMessage *)destroy isEqual:?])
  {
    goto LABEL_22;
  }

  if (((setRate = self->_setRate, !(setRate | equalCopy[8])) || [(SPProtoAudioFileQueuePlayerSetRate *)setRate isEqual:?]) && ((replaceCurrentItem = self->_replaceCurrentItem, !(replaceCurrentItem | equalCopy[6])) || [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)replaceCurrentItem isEqual:?]) && ((setStatus = self->_setStatus, !(setStatus | equalCopy[9])) || [(SPProtoAudioFilePlayerStatus *)setStatus isEqual:?]) && ((advanceToNextItem = self->_advanceToNextItem, !(advanceToNextItem | equalCopy[1])) || [(SPProtoObjectMessage *)advanceToNextItem isEqual:?]) && ((appendItem = self->_appendItem, !(appendItem | equalCopy[2])) || [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)appendItem isEqual:?]) && ((removeItem = self->_removeItem, !(removeItem | equalCopy[5])) || [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)removeItem isEqual:?]) && ((removeAllItems = self->_removeAllItems, !(removeAllItems | equalCopy[4])) || [(SPProtoObjectMessage *)removeAllItems isEqual:?]))
  {
    setCurrentItem = self->_setCurrentItem;
    if (setCurrentItem | equalCopy[7])
    {
      v15 = [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)setCurrentItem isEqual:?];
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
LABEL_22:
    v15 = 0;
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [(SPProtoAudioFileQueuePlayerSetItems *)self->_upsertWithItems hash];
  v4 = [(SPProtoObjectMessage *)self->_destroy hash]^ v3;
  v5 = [(SPProtoAudioFileQueuePlayerSetRate *)self->_setRate hash];
  v6 = v4 ^ v5 ^ [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)self->_replaceCurrentItem hash];
  v7 = [(SPProtoAudioFilePlayerStatus *)self->_setStatus hash];
  v8 = v7 ^ [(SPProtoObjectMessage *)self->_advanceToNextItem hash];
  v9 = v6 ^ v8 ^ [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)self->_appendItem hash];
  v10 = [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)self->_removeItem hash];
  v11 = v10 ^ [(SPProtoObjectMessage *)self->_removeAllItems hash];
  return v9 ^ v11 ^ [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)self->_setCurrentItem hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  upsertWithItems = self->_upsertWithItems;
  v25 = fromCopy;
  v6 = fromCopy[10];
  if (upsertWithItems)
  {
    if (v6)
    {
      [(SPProtoAudioFileQueuePlayerSetItems *)upsertWithItems mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SPProtoAudioFileQueuePlayer *)self setUpsertWithItems:?];
  }

  destroy = self->_destroy;
  v8 = v25[3];
  if (destroy)
  {
    if (v8)
    {
      [(SPProtoObjectMessage *)destroy mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SPProtoAudioFileQueuePlayer *)self setDestroy:?];
  }

  setRate = self->_setRate;
  v10 = v25[8];
  if (setRate)
  {
    if (v10)
    {
      [(SPProtoAudioFileQueuePlayerSetRate *)setRate mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(SPProtoAudioFileQueuePlayer *)self setSetRate:?];
  }

  replaceCurrentItem = self->_replaceCurrentItem;
  v12 = v25[6];
  if (replaceCurrentItem)
  {
    if (v12)
    {
      [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)replaceCurrentItem mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(SPProtoAudioFileQueuePlayer *)self setReplaceCurrentItem:?];
  }

  setStatus = self->_setStatus;
  v14 = v25[9];
  if (setStatus)
  {
    if (v14)
    {
      [(SPProtoAudioFilePlayerStatus *)setStatus mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(SPProtoAudioFileQueuePlayer *)self setSetStatus:?];
  }

  advanceToNextItem = self->_advanceToNextItem;
  v16 = v25[1];
  if (advanceToNextItem)
  {
    if (v16)
    {
      [(SPProtoObjectMessage *)advanceToNextItem mergeFrom:?];
    }
  }

  else if (v16)
  {
    [(SPProtoAudioFileQueuePlayer *)self setAdvanceToNextItem:?];
  }

  appendItem = self->_appendItem;
  v18 = v25[2];
  if (appendItem)
  {
    if (v18)
    {
      [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)appendItem mergeFrom:?];
    }
  }

  else if (v18)
  {
    [(SPProtoAudioFileQueuePlayer *)self setAppendItem:?];
  }

  removeItem = self->_removeItem;
  v20 = v25[5];
  if (removeItem)
  {
    if (v20)
    {
      [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)removeItem mergeFrom:?];
    }
  }

  else if (v20)
  {
    [(SPProtoAudioFileQueuePlayer *)self setRemoveItem:?];
  }

  removeAllItems = self->_removeAllItems;
  v22 = v25[4];
  if (removeAllItems)
  {
    if (v22)
    {
      [(SPProtoObjectMessage *)removeAllItems mergeFrom:?];
    }
  }

  else if (v22)
  {
    [(SPProtoAudioFileQueuePlayer *)self setRemoveAllItems:?];
  }

  setCurrentItem = self->_setCurrentItem;
  v24 = v25[7];
  if (setCurrentItem)
  {
    if (v24)
    {
      [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)setCurrentItem mergeFrom:?];
    }
  }

  else if (v24)
  {
    [(SPProtoAudioFileQueuePlayer *)self setSetCurrentItem:?];
  }
}

@end