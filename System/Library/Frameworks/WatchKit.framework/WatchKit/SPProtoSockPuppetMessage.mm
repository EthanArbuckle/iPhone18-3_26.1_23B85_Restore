@interface SPProtoSockPuppetMessage
+ (id)sockPuppetMessageWithSubMessage:(id)message setterSelector:(SEL)selector;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SPProtoSockPuppetMessage

+ (id)sockPuppetMessageWithSubMessage:(id)message setterSelector:(SEL)selector
{
  messageCopy = message;
  v6 = objc_alloc_init(SPProtoAudioFilePlayerMessage);
  ([(SPProtoAudioFilePlayerMessage *)v6 methodForSelector:selector])(v6, selector, messageCopy);

  v7 = objc_alloc_init(SPProtoSockPuppetMessage);
  [(SPProtoSockPuppetMessage *)v7 setAudioFilePlayerMessage:v6];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SPProtoSockPuppetMessage;
  v4 = [(SPProtoSockPuppetMessage *)&v8 description];
  dictionaryRepresentation = [(SPProtoSockPuppetMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  plist = self->_plist;
  if (plist)
  {
    dictionaryRepresentation = [(SPProtoSockPuppetPlist *)plist dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"plist"];
  }

  audioFilePlayerMessage = self->_audioFilePlayerMessage;
  if (audioFilePlayerMessage)
  {
    dictionaryRepresentation2 = [(SPProtoAudioFilePlayerMessage *)audioFilePlayerMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"audioFilePlayerMessage"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_plist)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_audioFilePlayerMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_plist)
  {
    [toCopy setPlist:?];
    toCopy = v5;
  }

  if (self->_audioFilePlayerMessage)
  {
    [v5 setAudioFilePlayerMessage:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SPProtoSockPuppetPlist *)self->_plist copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(SPProtoAudioFilePlayerMessage *)self->_audioFilePlayerMessage copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((plist = self->_plist, !(plist | equalCopy[2])) || -[SPProtoSockPuppetPlist isEqual:](plist, "isEqual:")))
  {
    audioFilePlayerMessage = self->_audioFilePlayerMessage;
    if (audioFilePlayerMessage | equalCopy[1])
    {
      v7 = [(SPProtoAudioFilePlayerMessage *)audioFilePlayerMessage isEqual:?];
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
  plist = self->_plist;
  v6 = fromCopy[2];
  v9 = fromCopy;
  if (plist)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SPProtoSockPuppetPlist *)plist mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SPProtoSockPuppetMessage *)self setPlist:?];
  }

  fromCopy = v9;
LABEL_7:
  audioFilePlayerMessage = self->_audioFilePlayerMessage;
  v8 = fromCopy[1];
  if (audioFilePlayerMessage)
  {
    if (v8)
    {
      [(SPProtoAudioFilePlayerMessage *)audioFilePlayerMessage mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SPProtoSockPuppetMessage *)self setAudioFilePlayerMessage:?];
  }

  MEMORY[0x2821F96F8]();
}

@end