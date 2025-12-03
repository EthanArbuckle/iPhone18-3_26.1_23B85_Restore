@interface ATXPBUIEvent
- (BOOL)hasConsumerSubType;
- (BOOL)hasEvent;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)consumerSubType;
- (uint64_t)event;
- (void)copyTo:(uint64_t)to;
- (void)mergeFrom:(uint64_t)from;
- (void)setConsumerSubType:(uint64_t)type;
- (void)setEvent:(uint64_t)event;
- (void)writeTo:(id)to;
@end

@implementation ATXPBUIEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBUIEvent;
  v4 = [(ATXPBUIEvent *)&v8 description];
  dictionaryRepresentation = [(ATXPBUIEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  consumerSubType = self->_consumerSubType;
  if (consumerSubType)
  {
    [dictionary setObject:consumerSubType forKey:@"consumerSubType"];
  }

  event = self->_event;
  if (event)
  {
    [v4 setObject:event forKey:@"event"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_consumerSubType)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_event)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_consumerSubType copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_event copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((consumerSubType = self->_consumerSubType, !(consumerSubType | equalCopy[1])) || -[NSString isEqual:](consumerSubType, "isEqual:")))
  {
    event = self->_event;
    if (event | equalCopy[2])
    {
      v7 = [(NSData *)event isEqual:?];
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

- (BOOL)hasConsumerSubType
{
  if (result)
  {
    return *(result + 8) != 0;
  }

  return result;
}

- (BOOL)hasEvent
{
  if (result)
  {
    return *(result + 16) != 0;
  }

  return result;
}

- (void)copyTo:(uint64_t)to
{
  v3 = a2;
  if (to)
  {
    v4 = *(to + 8);
    if (v4)
    {
      v6 = v3;
      [(ATXPBUIEvent *)v3 setConsumerSubType:v4];
      v3 = v6;
    }

    v5 = *(to + 16);
    if (v5)
    {
      v7 = v3;
      [(ATXPBUIEvent *)v3 setEvent:v5];
      v3 = v7;
    }
  }
}

- (void)setConsumerSubType:(uint64_t)type
{
  if (type)
  {
    OUTLINED_FUNCTION_2(type, a2, 8);
  }
}

- (void)setEvent:(uint64_t)event
{
  if (event)
  {
    OUTLINED_FUNCTION_2(event, a2, 16);
  }
}

- (void)mergeFrom:(uint64_t)from
{
  v3 = a2;
  if (from)
  {
    v4 = v3[1];
    v6 = v3;
    if (v4)
    {
      objc_storeStrong((from + 8), v4);
      v3 = v6;
    }

    v5 = v3[2];
    if (v5)
    {
      objc_storeStrong((from + 16), v5);
      v3 = v6;
    }
  }
}

- (uint64_t)consumerSubType
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (uint64_t)event
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

@end