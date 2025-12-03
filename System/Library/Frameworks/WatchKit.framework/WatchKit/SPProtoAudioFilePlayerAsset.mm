@interface SPProtoAudioFilePlayerAsset
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SPProtoAudioFilePlayerAsset

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SPProtoAudioFilePlayerAsset;
  v4 = [(SPProtoAudioFilePlayerAsset *)&v8 description];
  dictionaryRepresentation = [(SPProtoAudioFilePlayerAsset *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  upsertWithMetaData = self->_upsertWithMetaData;
  if (upsertWithMetaData)
  {
    dictionaryRepresentation = [(SPProtoAudioFilePlayerAssetUpdateMetaData *)upsertWithMetaData dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"upsertWithMetaData"];
  }

  destroy = self->_destroy;
  if (destroy)
  {
    dictionaryRepresentation2 = [(SPProtoObjectMessage *)destroy dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"destroy"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_upsertWithMetaData)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_destroy)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_upsertWithMetaData)
  {
    [toCopy setUpsertWithMetaData:?];
    toCopy = v5;
  }

  if (self->_destroy)
  {
    [v5 setDestroy:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SPProtoAudioFilePlayerAssetUpdateMetaData *)self->_upsertWithMetaData copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(SPProtoObjectMessage *)self->_destroy copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((upsertWithMetaData = self->_upsertWithMetaData, !(upsertWithMetaData | equalCopy[2])) || -[SPProtoAudioFilePlayerAssetUpdateMetaData isEqual:](upsertWithMetaData, "isEqual:")))
  {
    destroy = self->_destroy;
    if (destroy | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  upsertWithMetaData = self->_upsertWithMetaData;
  v6 = fromCopy[2];
  v9 = fromCopy;
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

  fromCopy = v9;
LABEL_7:
  destroy = self->_destroy;
  v8 = fromCopy[1];
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