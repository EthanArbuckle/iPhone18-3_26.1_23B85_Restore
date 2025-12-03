@interface SPProtoAudioFilePlayerMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SPProtoAudioFilePlayerMessage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SPProtoAudioFilePlayerMessage;
  v4 = [(SPProtoAudioFilePlayerMessage *)&v8 description];
  dictionaryRepresentation = [(SPProtoAudioFilePlayerMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  asset = self->_asset;
  if (asset)
  {
    dictionaryRepresentation = [(SPProtoAudioFilePlayerAsset *)asset dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"asset"];
  }

  playerItem = self->_playerItem;
  if (playerItem)
  {
    dictionaryRepresentation2 = [(SPProtoAudioFilePlayerItem *)playerItem dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"playerItem"];
  }

  queuePlayer = self->_queuePlayer;
  if (queuePlayer)
  {
    dictionaryRepresentation3 = [(SPProtoAudioFileQueuePlayer *)queuePlayer dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"queuePlayer"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_asset)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_playerItem)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_queuePlayer)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_asset)
  {
    [toCopy setAsset:?];
    toCopy = v5;
  }

  if (self->_playerItem)
  {
    [v5 setPlayerItem:?];
    toCopy = v5;
  }

  if (self->_queuePlayer)
  {
    [v5 setQueuePlayer:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SPProtoAudioFilePlayerAsset *)self->_asset copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(SPProtoAudioFilePlayerItem *)self->_playerItem copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(SPProtoAudioFileQueuePlayer *)self->_queuePlayer copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((asset = self->_asset, !(asset | equalCopy[1])) || -[SPProtoAudioFilePlayerAsset isEqual:](asset, "isEqual:")) && ((playerItem = self->_playerItem, !(playerItem | equalCopy[2])) || -[SPProtoAudioFilePlayerItem isEqual:](playerItem, "isEqual:")))
  {
    queuePlayer = self->_queuePlayer;
    if (queuePlayer | equalCopy[3])
    {
      v8 = [(SPProtoAudioFileQueuePlayer *)queuePlayer isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(SPProtoAudioFilePlayerAsset *)self->_asset hash];
  v4 = [(SPProtoAudioFilePlayerItem *)self->_playerItem hash]^ v3;
  return v4 ^ [(SPProtoAudioFileQueuePlayer *)self->_queuePlayer hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  asset = self->_asset;
  v6 = fromCopy[1];
  v11 = fromCopy;
  if (asset)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SPProtoAudioFilePlayerAsset *)asset mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SPProtoAudioFilePlayerMessage *)self setAsset:?];
  }

  fromCopy = v11;
LABEL_7:
  playerItem = self->_playerItem;
  v8 = fromCopy[2];
  if (playerItem)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(SPProtoAudioFilePlayerItem *)playerItem mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(SPProtoAudioFilePlayerMessage *)self setPlayerItem:?];
  }

  fromCopy = v11;
LABEL_13:
  queuePlayer = self->_queuePlayer;
  v10 = fromCopy[3];
  if (queuePlayer)
  {
    if (v10)
    {
      [(SPProtoAudioFileQueuePlayer *)queuePlayer mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(SPProtoAudioFilePlayerMessage *)self setQueuePlayer:?];
  }

  MEMORY[0x2821F96F8]();
}

@end