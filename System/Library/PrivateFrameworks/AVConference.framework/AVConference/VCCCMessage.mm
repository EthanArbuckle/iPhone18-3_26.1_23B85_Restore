@interface VCCCMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedLongLong:", self->_transactionID), @"transactionID"}];
  topic = self->_topic;
  if (topic)
  {
    [dictionary setObject:topic forKey:@"topic"];
  }

  payload = self->_payload;
  if (payload)
  {
    [dictionary setObject:payload forKey:@"payload"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  PBDataWriterWriteUint64Field();
  PBDataWriterWriteStringField();
  if (self->_payload)
  {

    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  *(to + 1) = self->_transactionID;
  [to setTopic:self->_topic];
  if (self->_payload)
  {

    [to setPayload:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 8) = self->_transactionID;

  *(v5 + 24) = [(NSString *)self->_topic copyWithZone:zone];
  *(v5 + 16) = [(NSData *)self->_payload copyWithZone:zone];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (self->_transactionID == *(equal + 1))
    {
      topic = self->_topic;
      if (!(topic | *(equal + 3)) || (v5 = [(NSString *)topic isEqual:?]) != 0)
      {
        payload = self->_payload;
        if (payload | *(equal + 2))
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

- (void)mergeFrom:(id)from
{
  self->_transactionID = *(from + 1);
  if (*(from + 3))
  {
    [(VCCCMessage *)self setTopic:?];
  }

  if (*(from + 2))
  {

    [(VCCCMessage *)self setPayload:?];
  }
}

@end