@interface SPProtoAudioFileQueuePlayerSetItems
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)sockPuppetMessage;
- (void)addPlayerItemIdentifiers:(id)identifiers;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SPProtoAudioFileQueuePlayerSetItems

- (void)addPlayerItemIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  playerItemIdentifiers = self->_playerItemIdentifiers;
  v8 = identifiersCopy;
  if (!playerItemIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_playerItemIdentifiers;
    self->_playerItemIdentifiers = v6;

    identifiersCopy = v8;
    playerItemIdentifiers = self->_playerItemIdentifiers;
  }

  [(NSMutableArray *)playerItemIdentifiers addObject:identifiersCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SPProtoAudioFileQueuePlayerSetItems;
  v4 = [(SPProtoAudioFileQueuePlayerSetItems *)&v8 description];
  dictionaryRepresentation = [(SPProtoAudioFileQueuePlayerSetItems *)self dictionaryRepresentation];
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

  playerItemIdentifiers = self->_playerItemIdentifiers;
  if (playerItemIdentifiers)
  {
    [v4 setObject:playerItemIdentifiers forKey:@"playerItemIdentifiers"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x277D85DE8];
  toCopy = to;
  identifier = self->_identifier;
  PBDataWriterWriteStringField();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_playerItemIdentifiers;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteStringField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setIdentifier:self->_identifier];
  if ([(SPProtoAudioFileQueuePlayerSetItems *)self playerItemIdentifiersCount])
  {
    [toCopy clearPlayerItemIdentifiers];
    playerItemIdentifiersCount = [(SPProtoAudioFileQueuePlayerSetItems *)self playerItemIdentifiersCount];
    if (playerItemIdentifiersCount)
    {
      v5 = playerItemIdentifiersCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SPProtoAudioFileQueuePlayerSetItems *)self playerItemIdentifiersAtIndex:i];
        [toCopy addPlayerItemIdentifiers:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_playerItemIdentifiers;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * v12) copyWithZone:{zone, v16}];
        [v5 addPlayerItemIdentifiers:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((identifier = self->_identifier, !(identifier | equalCopy[1])) || -[NSString isEqual:](identifier, "isEqual:")))
  {
    playerItemIdentifiers = self->_playerItemIdentifiers;
    if (playerItemIdentifiers | equalCopy[2])
    {
      v7 = [(NSMutableArray *)playerItemIdentifiers isEqual:?];
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
  v16 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    [(SPProtoAudioFileQueuePlayerSetItems *)self setIdentifier:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(fromCopy + 2);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(SPProtoAudioFileQueuePlayerSetItems *)self addPlayerItemIdentifiers:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)sockPuppetMessage
{
  v3 = objc_alloc_init(SPProtoAudioFileQueuePlayer);
  [(SPProtoAudioFileQueuePlayer *)v3 setUpsertWithItems:self];
  sockPuppetMessage = [(SPProtoAudioFileQueuePlayer *)v3 sockPuppetMessage];

  return sockPuppetMessage;
}

@end