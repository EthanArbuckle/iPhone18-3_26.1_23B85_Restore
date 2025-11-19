@interface SPProtoAudioFileQueuePlayer
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SPProtoAudioFileQueuePlayer

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SPProtoAudioFileQueuePlayer;
  v4 = [(SPProtoAudioFileQueuePlayer *)&v8 description];
  v5 = [(SPProtoAudioFileQueuePlayer *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  upsertWithItems = self->_upsertWithItems;
  if (upsertWithItems)
  {
    v5 = [(SPProtoAudioFileQueuePlayerSetItems *)upsertWithItems dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"upsertWithItems"];
  }

  destroy = self->_destroy;
  if (destroy)
  {
    v7 = [(SPProtoObjectMessage *)destroy dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"destroy"];
  }

  setRate = self->_setRate;
  if (setRate)
  {
    v9 = [(SPProtoAudioFileQueuePlayerSetRate *)setRate dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"setRate"];
  }

  replaceCurrentItem = self->_replaceCurrentItem;
  if (replaceCurrentItem)
  {
    v11 = [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)replaceCurrentItem dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"replaceCurrentItem"];
  }

  setStatus = self->_setStatus;
  if (setStatus)
  {
    v13 = [(SPProtoAudioFilePlayerStatus *)setStatus dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"setStatus"];
  }

  advanceToNextItem = self->_advanceToNextItem;
  if (advanceToNextItem)
  {
    v15 = [(SPProtoObjectMessage *)advanceToNextItem dictionaryRepresentation];
    [v3 setObject:v15 forKey:@"advanceToNextItem"];
  }

  appendItem = self->_appendItem;
  if (appendItem)
  {
    v17 = [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)appendItem dictionaryRepresentation];
    [v3 setObject:v17 forKey:@"appendItem"];
  }

  removeItem = self->_removeItem;
  if (removeItem)
  {
    v19 = [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)removeItem dictionaryRepresentation];
    [v3 setObject:v19 forKey:@"removeItem"];
  }

  removeAllItems = self->_removeAllItems;
  if (removeAllItems)
  {
    v21 = [(SPProtoObjectMessage *)removeAllItems dictionaryRepresentation];
    [v3 setObject:v21 forKey:@"removeAllItems"];
  }

  setCurrentItem = self->_setCurrentItem;
  if (setCurrentItem)
  {
    v23 = [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)setCurrentItem dictionaryRepresentation];
    [v3 setObject:v23 forKey:@"setCurrentItem"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_upsertWithItems)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_destroy)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_setRate)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_replaceCurrentItem)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_setStatus)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_advanceToNextItem)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_appendItem)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_removeItem)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_removeAllItems)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_setCurrentItem)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_upsertWithItems)
  {
    [v4 setUpsertWithItems:?];
    v4 = v5;
  }

  if (self->_destroy)
  {
    [v5 setDestroy:?];
    v4 = v5;
  }

  if (self->_setRate)
  {
    [v5 setSetRate:?];
    v4 = v5;
  }

  if (self->_replaceCurrentItem)
  {
    [v5 setReplaceCurrentItem:?];
    v4 = v5;
  }

  if (self->_setStatus)
  {
    [v5 setSetStatus:?];
    v4 = v5;
  }

  if (self->_advanceToNextItem)
  {
    [v5 setAdvanceToNextItem:?];
    v4 = v5;
  }

  if (self->_appendItem)
  {
    [v5 setAppendItem:?];
    v4 = v5;
  }

  if (self->_removeItem)
  {
    [v5 setRemoveItem:?];
    v4 = v5;
  }

  if (self->_removeAllItems)
  {
    [v5 setRemoveAllItems:?];
    v4 = v5;
  }

  if (self->_setCurrentItem)
  {
    [v5 setSetCurrentItem:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SPProtoAudioFileQueuePlayerSetItems *)self->_upsertWithItems copyWithZone:a3];
  v7 = v5[10];
  v5[10] = v6;

  v8 = [(SPProtoObjectMessage *)self->_destroy copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(SPProtoAudioFileQueuePlayerSetRate *)self->_setRate copyWithZone:a3];
  v11 = v5[8];
  v5[8] = v10;

  v12 = [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)self->_replaceCurrentItem copyWithZone:a3];
  v13 = v5[6];
  v5[6] = v12;

  v14 = [(SPProtoAudioFilePlayerStatus *)self->_setStatus copyWithZone:a3];
  v15 = v5[9];
  v5[9] = v14;

  v16 = [(SPProtoObjectMessage *)self->_advanceToNextItem copyWithZone:a3];
  v17 = v5[1];
  v5[1] = v16;

  v18 = [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)self->_appendItem copyWithZone:a3];
  v19 = v5[2];
  v5[2] = v18;

  v20 = [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)self->_removeItem copyWithZone:a3];
  v21 = v5[5];
  v5[5] = v20;

  v22 = [(SPProtoObjectMessage *)self->_removeAllItems copyWithZone:a3];
  v23 = v5[4];
  v5[4] = v22;

  v24 = [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)self->_setCurrentItem copyWithZone:a3];
  v25 = v5[7];
  v5[7] = v24;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  upsertWithItems = self->_upsertWithItems;
  if (upsertWithItems | v4[10])
  {
    if (![(SPProtoAudioFileQueuePlayerSetItems *)upsertWithItems isEqual:?])
    {
      goto LABEL_22;
    }
  }

  destroy = self->_destroy;
  if (destroy | v4[3] && ![(SPProtoObjectMessage *)destroy isEqual:?])
  {
    goto LABEL_22;
  }

  if (((setRate = self->_setRate, !(setRate | v4[8])) || [(SPProtoAudioFileQueuePlayerSetRate *)setRate isEqual:?]) && ((replaceCurrentItem = self->_replaceCurrentItem, !(replaceCurrentItem | v4[6])) || [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)replaceCurrentItem isEqual:?]) && ((setStatus = self->_setStatus, !(setStatus | v4[9])) || [(SPProtoAudioFilePlayerStatus *)setStatus isEqual:?]) && ((advanceToNextItem = self->_advanceToNextItem, !(advanceToNextItem | v4[1])) || [(SPProtoObjectMessage *)advanceToNextItem isEqual:?]) && ((appendItem = self->_appendItem, !(appendItem | v4[2])) || [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)appendItem isEqual:?]) && ((removeItem = self->_removeItem, !(removeItem | v4[5])) || [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)removeItem isEqual:?]) && ((removeAllItems = self->_removeAllItems, !(removeAllItems | v4[4])) || [(SPProtoObjectMessage *)removeAllItems isEqual:?]))
  {
    setCurrentItem = self->_setCurrentItem;
    if (setCurrentItem | v4[7])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  upsertWithItems = self->_upsertWithItems;
  v25 = v4;
  v6 = v4[10];
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