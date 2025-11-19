@interface SPProtoSockPuppetMessage
+ (id)sockPuppetMessageWithSubMessage:(id)a3 setterSelector:(SEL)a4;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SPProtoSockPuppetMessage

+ (id)sockPuppetMessageWithSubMessage:(id)a3 setterSelector:(SEL)a4
{
  v5 = a3;
  v6 = objc_alloc_init(SPProtoAudioFilePlayerMessage);
  ([(SPProtoAudioFilePlayerMessage *)v6 methodForSelector:a4])(v6, a4, v5);

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
  v5 = [(SPProtoSockPuppetMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  plist = self->_plist;
  if (plist)
  {
    v5 = [(SPProtoSockPuppetPlist *)plist dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"plist"];
  }

  audioFilePlayerMessage = self->_audioFilePlayerMessage;
  if (audioFilePlayerMessage)
  {
    v7 = [(SPProtoAudioFilePlayerMessage *)audioFilePlayerMessage dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"audioFilePlayerMessage"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_plist)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_audioFilePlayerMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_plist)
  {
    [v4 setPlist:?];
    v4 = v5;
  }

  if (self->_audioFilePlayerMessage)
  {
    [v5 setAudioFilePlayerMessage:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SPProtoSockPuppetPlist *)self->_plist copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(SPProtoAudioFilePlayerMessage *)self->_audioFilePlayerMessage copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((plist = self->_plist, !(plist | v4[2])) || -[SPProtoSockPuppetPlist isEqual:](plist, "isEqual:")))
  {
    audioFilePlayerMessage = self->_audioFilePlayerMessage;
    if (audioFilePlayerMessage | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  plist = self->_plist;
  v6 = v4[2];
  v9 = v4;
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

  v4 = v9;
LABEL_7:
  audioFilePlayerMessage = self->_audioFilePlayerMessage;
  v8 = v4[1];
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