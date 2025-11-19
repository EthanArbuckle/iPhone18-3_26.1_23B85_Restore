@interface APSOutgoingMessage
- (BOOL)hasTimedOut;
- (BOOL)isCritical;
- (BOOL)isEager;
- (BOOL)sendRetried;
- (BOOL)wasCancelled;
- (BOOL)wasSent;
- (id)eagernessTimeoutTime;
- (id)rawTimeoutTime;
- (id)sendTimeoutTime;
- (int64_t)priority;
- (unint64_t)ackTimestamp;
- (unint64_t)messageID;
- (unint64_t)payloadFormat;
- (unint64_t)payloadLength;
- (unint64_t)pushType;
- (unint64_t)timeout;
- (unsigned)pushFlags;
- (void)setAckTimestamp:(unint64_t)a3;
- (void)setMessageID:(unint64_t)a3;
- (void)setPayloadFormat:(unint64_t)a3;
- (void)setPayloadLength:(unint64_t)a3;
- (void)setPriority:(int64_t)a3;
- (void)setPushType:(unint64_t)a3;
- (void)setTimeout:(unint64_t)a3;
@end

@implementation APSOutgoingMessage

- (unint64_t)messageID
{
  v2 = [(APSMessage *)self objectForKey:@"APSMessageID"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (BOOL)wasCancelled
{
  v2 = [(APSMessage *)self objectForKey:@"APSCancelled"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)wasSent
{
  v2 = [(APSMessage *)self objectForKey:@"APSSent"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (unint64_t)payloadFormat
{
  v2 = [(APSMessage *)self objectForKey:@"APSPayloadFormat"];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (unint64_t)timeout
{
  v2 = [(APSMessage *)self objectForKey:@"APSTimeout"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (BOOL)isCritical
{
  v3 = [(APSMessage *)self objectForKey:@"APSCritical"];
  if ([v3 BOOLValue])
  {
    v4 = [(APSOutgoingMessage *)self isEager];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isEager
{
  v2 = [(APSOutgoingMessage *)self eagernessTimeoutTime];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF00] date];
    v4 = [v3 compare:v2] == -1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)priority
{
  v2 = [(APSMessage *)self objectForKey:@"APSOutgoingMessagePriority"];
  v3 = [v2 integerValue];

  return v3;
}

- (id)eagernessTimeoutTime
{
  if ([(APSOutgoingMessage *)self priority]== 1)
  {
    v3 = 60.0;
  }

  else
  {
    v3 = 120.0;
  }

  v4 = [(APSOutgoingMessage *)self timestamp];
  v5 = [v4 dateByAddingTimeInterval:v3];

  return v5;
}

- (BOOL)hasTimedOut
{
  v2 = [(APSMessage *)self objectForKey:@"APSTimedOut"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)sendTimeoutTime
{
  v3 = [(APSOutgoingMessage *)self timestamp];
  v4 = [v3 dateByAddingTimeInterval:{-[APSOutgoingMessage timeout](self, "timeout")}];

  return v4;
}

- (unint64_t)payloadLength
{
  v2 = [(APSMessage *)self objectForKey:@"APSOutgoingMessagePayloadLength"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)setMessageID:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(APSMessage *)self setObject:v4 forKey:@"APSMessageID"];
}

- (void)setTimeout:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(APSMessage *)self setObject:v4 forKey:@"APSTimeout"];
}

- (id)rawTimeoutTime
{
  v3 = [(APSOutgoingMessage *)self timestamp];
  v4 = [v3 dateByAddingTimeInterval:{-[APSOutgoingMessage timeout](self, "timeout")}];

  return v4;
}

- (void)setPayloadFormat:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(APSMessage *)self setObject:v4 forKey:@"APSPayloadFormat"];
}

- (void)setPayloadLength:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(APSMessage *)self setObject:v4 forKey:@"APSOutgoingMessagePayloadLength"];
}

- (void)setPriority:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(APSMessage *)self setObject:v4 forKey:@"APSOutgoingMessagePriority"];
}

- (unint64_t)pushType
{
  v2 = [(APSMessage *)self objectForKey:@"APSOutgoingMessagePushType"];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setPushType:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(APSMessage *)self setObject:v4 forKey:@"APSOutgoingMessagePushType"];
}

- (BOOL)sendRetried
{
  v2 = [(APSMessage *)self objectForKey:@"APSSendRetried"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setAckTimestamp:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(APSMessage *)self setObject:v4 forKey:@"APSAckTimestamp"];
}

- (unint64_t)ackTimestamp
{
  v2 = [(APSMessage *)self objectForKey:@"APSAckTimestamp"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (unsigned)pushFlags
{
  v2 = [(APSMessage *)self objectForKey:@"APSOutgoingMessagePushFlags"];
  v3 = [v2 unsignedIntValue];

  return v3;
}

@end