@interface VCCCMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCCCMessage

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCCCMessage *)self setTopic:0];
  [(VCCCMessage *)self setPayload:0];
  v3.receiver = self;
  v3.super_class = VCCCMessage;
  [(VCCCMessage *)&v3 dealloc];
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCCCMessage;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[VCCCMessage description](&v3, sel_description), -[VCCCMessage dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedLongLong:", self->_transactionID), @"transactionID"}];
  topic = self->_topic;
  if (topic)
  {
    [v3 setObject:topic forKey:@"topic"];
  }

  payload = self->_payload;
  if (payload)
  {
    [v3 setObject:payload forKey:@"payload"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  PBDataWriterWriteUint64Field();
  PBDataWriterWriteStringField();
  if (self->_payload)
  {

    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)a3
{
  *(a3 + 1) = self->_transactionID;
  [a3 setTopic:self->_topic];
  if (self->_payload)
  {

    [a3 setPayload:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 8) = self->_transactionID;

  *(v5 + 24) = [(NSString *)self->_topic copyWithZone:a3];
  *(v5 + 16) = [(NSData *)self->_payload copyWithZone:a3];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (self->_transactionID == *(a3 + 1))
    {
      topic = self->_topic;
      if (!(topic | *(a3 + 3)) || (v5 = [(NSString *)topic isEqual:?]) != 0)
      {
        payload = self->_payload;
        if (payload | *(a3 + 2))
        {

          LOBYTE(v5) = [(NSData *)payload isEqual:?];
        }

        else
        {
          LOBYTE(v5) = 1;
        }
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = 2654435761u * self->_transactionID;
  v4 = [(NSString *)self->_topic hash];
  return v4 ^ [(NSData *)self->_payload hash]^ v3;
}

- (void)mergeFrom:(id)a3
{
  self->_transactionID = *(a3 + 1);
  if (*(a3 + 3))
  {
    [(VCCCMessage *)self setTopic:?];
  }

  if (*(a3 + 2))
  {

    [(VCCCMessage *)self setPayload:?];
  }
}

@end