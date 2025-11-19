@interface ATXPBUIEvent
- (BOOL)hasConsumerSubType;
- (BOOL)hasEvent;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)consumerSubType;
- (uint64_t)event;
- (void)copyTo:(uint64_t)a1;
- (void)mergeFrom:(uint64_t)a1;
- (void)setConsumerSubType:(uint64_t)a1;
- (void)setEvent:(uint64_t)a1;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBUIEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBUIEvent;
  v4 = [(ATXPBUIEvent *)&v8 description];
  v5 = [(ATXPBUIEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  consumerSubType = self->_consumerSubType;
  if (consumerSubType)
  {
    [v3 setObject:consumerSubType forKey:@"consumerSubType"];
  }

  event = self->_event;
  if (event)
  {
    [v4 setObject:event forKey:@"event"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_consumerSubType)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_event)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_consumerSubType copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_event copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((consumerSubType = self->_consumerSubType, !(consumerSubType | v4[1])) || -[NSString isEqual:](consumerSubType, "isEqual:")))
  {
    event = self->_event;
    if (event | v4[2])
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

- (void)copyTo:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      v6 = v3;
      [(ATXPBUIEvent *)v3 setConsumerSubType:v4];
      v3 = v6;
    }

    v5 = *(a1 + 16);
    if (v5)
    {
      v7 = v3;
      [(ATXPBUIEvent *)v3 setEvent:v5];
      v3 = v7;
    }
  }
}

- (void)setConsumerSubType:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_2(a1, a2, 8);
  }
}

- (void)setEvent:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_2(a1, a2, 16);
  }
}

- (void)mergeFrom:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = v3[1];
    v6 = v3;
    if (v4)
    {
      objc_storeStrong((a1 + 8), v4);
      v3 = v6;
    }

    v5 = v3[2];
    if (v5)
    {
      objc_storeStrong((a1 + 16), v5);
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