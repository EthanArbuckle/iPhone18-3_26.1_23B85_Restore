@interface SPProtoAudioFilePlayerUpdateContainedIdentifier
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)sockPuppetMessageForPlayerItemUpsertWithAsset;
- (id)sockPuppetMessageForQueuePlayerAppendItem;
- (id)sockPuppetMessageForQueuePlayerRemoveItem;
- (id)sockPuppetMessageForQueuePlayerReplaceCurrentItem;
- (id)sockPuppetMessageForQueuePlayerSetCurrentItem;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SPProtoAudioFilePlayerUpdateContainedIdentifier

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SPProtoAudioFilePlayerUpdateContainedIdentifier;
  v4 = [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)&v8 description];
  dictionaryRepresentation = [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  containedIdentifier = self->_containedIdentifier;
  if (containedIdentifier)
  {
    [v4 setObject:containedIdentifier forKey:@"containedIdentifier"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  identifier = self->_identifier;
  v6 = toCopy;
  PBDataWriterWriteStringField();
  if (self->_containedIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setIdentifier:self->_identifier];
  if (self->_containedIdentifier)
  {
    [toCopy setContainedIdentifier:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_containedIdentifier copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((identifier = self->_identifier, !(identifier | equalCopy[2])) || -[NSString isEqual:](identifier, "isEqual:")))
  {
    containedIdentifier = self->_containedIdentifier;
    if (containedIdentifier | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)self setIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(SPProtoAudioFilePlayerUpdateContainedIdentifier *)self setContainedIdentifier:?];
    fromCopy = v5;
  }
}

- (id)sockPuppetMessageForPlayerItemUpsertWithAsset
{
  v3 = objc_alloc_init(SPProtoAudioFilePlayerItem);
  [(SPProtoAudioFilePlayerItem *)v3 setUpsertWithAsset:self];
  sockPuppetMessage = [(SPProtoAudioFilePlayerItem *)v3 sockPuppetMessage];

  return sockPuppetMessage;
}

- (id)sockPuppetMessageForQueuePlayerReplaceCurrentItem
{
  v3 = objc_alloc_init(SPProtoAudioFileQueuePlayer);
  [(SPProtoAudioFileQueuePlayer *)v3 setReplaceCurrentItem:self];
  sockPuppetMessage = [(SPProtoAudioFileQueuePlayer *)v3 sockPuppetMessage];

  return sockPuppetMessage;
}

- (id)sockPuppetMessageForQueuePlayerAppendItem
{
  v3 = objc_alloc_init(SPProtoAudioFileQueuePlayer);
  [(SPProtoAudioFileQueuePlayer *)v3 setAppendItem:self];
  sockPuppetMessage = [(SPProtoAudioFileQueuePlayer *)v3 sockPuppetMessage];

  return sockPuppetMessage;
}

- (id)sockPuppetMessageForQueuePlayerRemoveItem
{
  v3 = objc_alloc_init(SPProtoAudioFileQueuePlayer);
  [(SPProtoAudioFileQueuePlayer *)v3 setRemoveItem:self];
  sockPuppetMessage = [(SPProtoAudioFileQueuePlayer *)v3 sockPuppetMessage];

  return sockPuppetMessage;
}

- (id)sockPuppetMessageForQueuePlayerSetCurrentItem
{
  v3 = objc_alloc_init(SPProtoAudioFileQueuePlayer);
  [(SPProtoAudioFileQueuePlayer *)v3 setSetCurrentItem:self];
  sockPuppetMessage = [(SPProtoAudioFileQueuePlayer *)v3 sockPuppetMessage];

  return sockPuppetMessage;
}

@end