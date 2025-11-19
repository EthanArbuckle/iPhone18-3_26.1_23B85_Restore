@interface SPProtoAudioFilePlayerMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SPProtoAudioFilePlayerMessage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SPProtoAudioFilePlayerMessage;
  v4 = [(SPProtoAudioFilePlayerMessage *)&v8 description];
  v5 = [(SPProtoAudioFilePlayerMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  asset = self->_asset;
  if (asset)
  {
    v5 = [(SPProtoAudioFilePlayerAsset *)asset dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"asset"];
  }

  playerItem = self->_playerItem;
  if (playerItem)
  {
    v7 = [(SPProtoAudioFilePlayerItem *)playerItem dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"playerItem"];
  }

  queuePlayer = self->_queuePlayer;
  if (queuePlayer)
  {
    v9 = [(SPProtoAudioFileQueuePlayer *)queuePlayer dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"queuePlayer"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_asset)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_playerItem)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_queuePlayer)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_asset)
  {
    [v4 setAsset:?];
    v4 = v5;
  }

  if (self->_playerItem)
  {
    [v5 setPlayerItem:?];
    v4 = v5;
  }

  if (self->_queuePlayer)
  {
    [v5 setQueuePlayer:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SPProtoAudioFilePlayerAsset *)self->_asset copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(SPProtoAudioFilePlayerItem *)self->_playerItem copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(SPProtoAudioFileQueuePlayer *)self->_queuePlayer copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((asset = self->_asset, !(asset | v4[1])) || -[SPProtoAudioFilePlayerAsset isEqual:](asset, "isEqual:")) && ((playerItem = self->_playerItem, !(playerItem | v4[2])) || -[SPProtoAudioFilePlayerItem isEqual:](playerItem, "isEqual:")))
  {
    queuePlayer = self->_queuePlayer;
    if (queuePlayer | v4[3])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  asset = self->_asset;
  v6 = v4[1];
  v11 = v4;
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

  v4 = v11;
LABEL_7:
  playerItem = self->_playerItem;
  v8 = v4[2];
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

  v4 = v11;
LABEL_13:
  queuePlayer = self->_queuePlayer;
  v10 = v4[3];
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