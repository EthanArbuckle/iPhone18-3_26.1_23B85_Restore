@interface ADTransparencyDetails
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ADTransparencyDetails

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ADTransparencyDetails;
  v4 = [(ADTransparencyDetails *)&v8 description];
  v5 = [(ADTransparencyDetails *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  transparencyDetailsUnavailableMessage = self->_transparencyDetailsUnavailableMessage;
  if (transparencyDetailsUnavailableMessage)
  {
    [v3 setObject:transparencyDetailsUnavailableMessage forKey:@"transparencyDetailsUnavailableMessage"];
  }

  transparencyRendererPayload = self->_transparencyRendererPayload;
  if (transparencyRendererPayload)
  {
    [v4 setObject:transparencyRendererPayload forKey:@"transparencyRendererPayload"];
  }

  transparencyRendererURL = self->_transparencyRendererURL;
  if (transparencyRendererURL)
  {
    [v4 setObject:transparencyRendererURL forKey:@"transparencyRendererURL"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_transparencyDetailsUnavailableMessage)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_transparencyRendererPayload)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_transparencyRendererURL)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_transparencyDetailsUnavailableMessage)
  {
    [v4 setTransparencyDetailsUnavailableMessage:?];
    v4 = v5;
  }

  if (self->_transparencyRendererPayload)
  {
    [v5 setTransparencyRendererPayload:?];
    v4 = v5;
  }

  if (self->_transparencyRendererURL)
  {
    [v5 setTransparencyRendererURL:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_transparencyDetailsUnavailableMessage copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_transparencyRendererPayload copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_transparencyRendererURL copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((transparencyDetailsUnavailableMessage = self->_transparencyDetailsUnavailableMessage, !(transparencyDetailsUnavailableMessage | v4[1])) || -[NSString isEqual:](transparencyDetailsUnavailableMessage, "isEqual:")) && ((transparencyRendererPayload = self->_transparencyRendererPayload, !(transparencyRendererPayload | v4[2])) || -[NSString isEqual:](transparencyRendererPayload, "isEqual:")))
  {
    transparencyRendererURL = self->_transparencyRendererURL;
    if (transparencyRendererURL | v4[3])
    {
      v8 = [(NSString *)transparencyRendererURL isEqual:?];
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
  v3 = [(NSString *)self->_transparencyDetailsUnavailableMessage hash];
  v4 = [(NSString *)self->_transparencyRendererPayload hash]^ v3;
  return v4 ^ [(NSString *)self->_transparencyRendererURL hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(ADTransparencyDetails *)self setTransparencyDetailsUnavailableMessage:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(ADTransparencyDetails *)self setTransparencyRendererPayload:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(ADTransparencyDetails *)self setTransparencyRendererURL:?];
    v4 = v5;
  }
}

@end