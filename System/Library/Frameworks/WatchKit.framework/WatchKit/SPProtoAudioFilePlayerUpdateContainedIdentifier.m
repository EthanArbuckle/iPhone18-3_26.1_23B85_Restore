@interface SPProtoAudioFilePlayerUpdateContainedIdentifier
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)sockPuppetMessageForPlayerItemUpsertWithAsset;
- (id)sockPuppetMessageForQueuePlayerAppendItem;
- (id)sockPuppetMessageForQueuePlayerRemoveItem;
- (id)sockPuppetMessageForQueuePlayerReplaceCurrentItem;
- (id)sockPuppetMessageForQueuePlayerSetCurrentItem;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SPProtoAudioFilePlayerUpdateContainedIdentifier

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SPProtoAudioFilePlayerUpdateContainedIdentifier;
  v4 = [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)&v8 description];
  v5 = [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  containedIdentifier = self->_containedIdentifier;
  if (containedIdentifier)
  {
    [v4 setObject:containedIdentifier forKey:@"containedIdentifier"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  identifier = self->_identifier;
  v6 = v4;
  PBDataWriterWriteStringField();
  if (self->_containedIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  [v4 setIdentifier:self->_identifier];
  if (self->_containedIdentifier)
  {
    [v4 setContainedIdentifier:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_containedIdentifier copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((identifier = self->_identifier, !(identifier | v4[2])) || -[NSString isEqual:](identifier, "isEqual:")))
  {
    containedIdentifier = self->_containedIdentifier;
    if (containedIdentifier | v4[1])
    {
      v7 = [(NSString *)containedIdentifier isEqual:?];
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
  v5 = v4;
  if (v4[2])
  {
    [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)self setIdentifier:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)self setContainedIdentifier:?];
    v4 = v5;
  }
}

- (id)sockPuppetMessageForPlayerItemUpsertWithAsset
{
  v3 = objc_alloc_init(SPProtoAudioFilePlayerItem);
  [(SPProtoAudioFilePlayerItem *)v3 setUpsertWithAsset:self];
  v4 = [(SPProtoAudioFilePlayerItem *)v3 sockPuppetMessage];

  return v4;
}

- (id)sockPuppetMessageForQueuePlayerReplaceCurrentItem
{
  v3 = objc_alloc_init(SPProtoAudioFileQueuePlayer);
  [(SPProtoAudioFileQueuePlayer *)v3 setReplaceCurrentItem:self];
  v4 = [(SPProtoAudioFileQueuePlayer *)v3 sockPuppetMessage];

  return v4;
}

- (id)sockPuppetMessageForQueuePlayerAppendItem
{
  v3 = objc_alloc_init(SPProtoAudioFileQueuePlayer);
  [(SPProtoAudioFileQueuePlayer *)v3 setAppendItem:self];
  v4 = [(SPProtoAudioFileQueuePlayer *)v3 sockPuppetMessage];

  return v4;
}

- (id)sockPuppetMessageForQueuePlayerRemoveItem
{
  v3 = objc_alloc_init(SPProtoAudioFileQueuePlayer);
  [(SPProtoAudioFileQueuePlayer *)v3 setRemoveItem:self];
  v4 = [(SPProtoAudioFileQueuePlayer *)v3 sockPuppetMessage];

  return v4;
}

- (id)sockPuppetMessageForQueuePlayerSetCurrentItem
{
  v3 = objc_alloc_init(SPProtoAudioFileQueuePlayer);
  [(SPProtoAudioFileQueuePlayer *)v3 setSetCurrentItem:self];
  v4 = [(SPProtoAudioFileQueuePlayer *)v3 sockPuppetMessage];

  return v4;
}

@end