@interface SPProtoAudioFilePlayerAsset
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SPProtoAudioFilePlayerAsset

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SPProtoAudioFilePlayerAsset;
  v4 = [(SPProtoAudioFilePlayerAsset *)&v8 description];
  v5 = [(SPProtoAudioFilePlayerAsset *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  upsertWithMetaData = self->_upsertWithMetaData;
  if (upsertWithMetaData)
  {
    v5 = [(SPProtoAudioFilePlayerAssetUpdateMetaData *)upsertWithMetaData dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"upsertWithMetaData"];
  }

  destroy = self->_destroy;
  if (destroy)
  {
    v7 = [(SPProtoObjectMessage *)destroy dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"destroy"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_upsertWithMetaData)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_destroy)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_upsertWithMetaData)
  {
    [v4 setUpsertWithMetaData:?];
    v4 = v5;
  }

  if (self->_destroy)
  {
    [v5 setDestroy:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SPProtoAudioFilePlayerAssetUpdateMetaData *)self->_upsertWithMetaData copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(SPProtoObjectMessage *)self->_destroy copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((upsertWithMetaData = self->_upsertWithMetaData, !(upsertWithMetaData | v4[2])) || -[SPProtoAudioFilePlayerAssetUpdateMetaData isEqual:](upsertWithMetaData, "isEqual:")))
  {
    destroy = self->_destroy;
    if (destroy | v4[1])
    {
      v7 = [(SPProtoObjectMessage *)destroy isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  upsertWithMetaData = self->_upsertWithMetaData;
  v6 = v4[2];
  v9 = v4;
  if (upsertWithMetaData)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SPProtoAudioFilePlayerAssetUpdateMetaData *)upsertWithMetaData mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SPProtoAudioFilePlayerAsset *)self setUpsertWithMetaData:?];
  }

  v4 = v9;
LABEL_7:
  destroy = self->_destroy;
  v8 = v4[1];
  if (destroy)
  {
    if (v8)
    {
      [(SPProtoObjectMessage *)destroy mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SPProtoAudioFilePlayerAsset *)self setDestroy:?];
  }

  MEMORY[0x2821F96F8]();
}

@end