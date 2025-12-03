@interface SPProtoObjectMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)sockPuppetMessageForAssetDestroy;
- (id)sockPuppetMessageForPlayerItemDestroy;
- (id)sockPuppetMessageForPlayerItemGetCurrentTime;
- (id)sockPuppetMessageForPlayerItemNotifyDidPlayToEndTime;
- (id)sockPuppetMessageForPlayerItemNotifyFailedToPlayToEndTime;
- (id)sockPuppetMessageForPlayerItemNotifyTimeJumped;
- (id)sockPuppetMessageForQueuePlayerAdvanceToNextItem;
- (id)sockPuppetMessageForQueuePlayerDestroy;
- (id)sockPuppetMessageForQueuePlayerRemoveAllItems;
- (void)mergeFrom:(id)from;
@end

@implementation SPProtoObjectMessage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SPProtoObjectMessage;
  v4 = [(SPProtoObjectMessage *)&v8 description];
  dictionaryRepresentation = [(SPProtoObjectMessage *)self dictionaryRepresentation];
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

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    identifier = self->_identifier;
    if (identifier | equalCopy[1])
    {
      v6 = [(NSString *)identifier isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(SPProtoObjectMessage *)self setIdentifier:?];
  }
}

- (id)sockPuppetMessageForAssetDestroy
{
  v3 = objc_alloc_init(SPProtoAudioFilePlayerAsset);
  [(SPProtoAudioFilePlayerAsset *)v3 setDestroy:self];
  sockPuppetMessage = [(SPProtoAudioFilePlayerAsset *)v3 sockPuppetMessage];

  return sockPuppetMessage;
}

- (id)sockPuppetMessageForPlayerItemDestroy
{
  v3 = objc_alloc_init(SPProtoAudioFilePlayerItem);
  [(SPProtoAudioFilePlayerItem *)v3 setDestroy:self];
  sockPuppetMessage = [(SPProtoAudioFilePlayerItem *)v3 sockPuppetMessage];

  return sockPuppetMessage;
}

- (id)sockPuppetMessageForPlayerItemGetCurrentTime
{
  v3 = objc_alloc_init(SPProtoAudioFilePlayerItem);
  [(SPProtoAudioFilePlayerItem *)v3 setGetCurrentTime:self];
  sockPuppetMessage = [(SPProtoAudioFilePlayerItem *)v3 sockPuppetMessage];

  return sockPuppetMessage;
}

- (id)sockPuppetMessageForPlayerItemNotifyTimeJumped
{
  v3 = objc_alloc_init(SPProtoAudioFilePlayerItem);
  [(SPProtoAudioFilePlayerItem *)v3 setNotifyTimeJumped:self];
  sockPuppetMessage = [(SPProtoAudioFilePlayerItem *)v3 sockPuppetMessage];

  return sockPuppetMessage;
}

- (id)sockPuppetMessageForPlayerItemNotifyDidPlayToEndTime
{
  v3 = objc_alloc_init(SPProtoAudioFilePlayerItem);
  [(SPProtoAudioFilePlayerItem *)v3 setNotifyDidPlayToEndTime:self];
  sockPuppetMessage = [(SPProtoAudioFilePlayerItem *)v3 sockPuppetMessage];

  return sockPuppetMessage;
}

- (id)sockPuppetMessageForPlayerItemNotifyFailedToPlayToEndTime
{
  v3 = objc_alloc_init(SPProtoAudioFilePlayerItem);
  [(SPProtoAudioFilePlayerItem *)v3 setNotifyFailedToPlayToEndTime:self];
  sockPuppetMessage = [(SPProtoAudioFilePlayerItem *)v3 sockPuppetMessage];

  return sockPuppetMessage;
}

- (id)sockPuppetMessageForQueuePlayerDestroy
{
  v3 = objc_alloc_init(SPProtoAudioFileQueuePlayer);
  [(SPProtoAudioFileQueuePlayer *)v3 setDestroy:self];
  sockPuppetMessage = [(SPProtoAudioFileQueuePlayer *)v3 sockPuppetMessage];

  return sockPuppetMessage;
}

- (id)sockPuppetMessageForQueuePlayerAdvanceToNextItem
{
  v3 = objc_alloc_init(SPProtoAudioFileQueuePlayer);
  [(SPProtoAudioFileQueuePlayer *)v3 setAdvanceToNextItem:self];
  sockPuppetMessage = [(SPProtoAudioFileQueuePlayer *)v3 sockPuppetMessage];

  return sockPuppetMessage;
}

- (id)sockPuppetMessageForQueuePlayerRemoveAllItems
{
  v3 = objc_alloc_init(SPProtoAudioFileQueuePlayer);
  [(SPProtoAudioFileQueuePlayer *)v3 setRemoveAllItems:self];
  sockPuppetMessage = [(SPProtoAudioFileQueuePlayer *)v3 sockPuppetMessage];

  return sockPuppetMessage;
}

@end