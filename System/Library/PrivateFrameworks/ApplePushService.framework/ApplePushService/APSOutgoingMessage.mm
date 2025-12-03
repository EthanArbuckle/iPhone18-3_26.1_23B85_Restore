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
- (void)setAckTimestamp:(unint64_t)timestamp;
- (void)setMessageID:(unint64_t)d;
- (void)setPayloadFormat:(unint64_t)format;
- (void)setPayloadLength:(unint64_t)length;
- (void)setPriority:(int64_t)priority;
- (void)setPushType:(unint64_t)type;
- (void)setTimeout:(unint64_t)timeout;
@end

@implementation APSOutgoingMessage

- (unint64_t)messageID
{
  v2 = [(APSMessage *)self objectForKey:@"APSMessageID"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (BOOL)wasCancelled
{
  v2 = [(APSMessage *)self objectForKey:@"APSCancelled"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)wasSent
{
  v2 = [(APSMessage *)self objectForKey:@"APSSent"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (unint64_t)payloadFormat
{
  v2 = [(APSMessage *)self objectForKey:@"APSPayloadFormat"];
  unsignedIntValue = [v2 unsignedIntValue];

  return unsignedIntValue;
}

- (unint64_t)timeout
{
  v2 = [(APSMessage *)self objectForKey:@"APSTimeout"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (BOOL)isCritical
{
  v3 = [(APSMessage *)self objectForKey:@"APSCritical"];
  if ([v3 BOOLValue])
  {
    isEager = [(APSOutgoingMessage *)self isEager];
  }

  else
  {
    isEager = 0;
  }

  return isEager;
}

- (BOOL)isEager
{
  eagernessTimeoutTime = [(APSOutgoingMessage *)self eagernessTimeoutTime];
  if (eagernessTimeoutTime)
  {
    date = [MEMORY[0x1E695DF00] date];
    v4 = [date compare:eagernessTimeoutTime] == -1;
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
  integerValue = [v2 integerValue];

  return integerValue;
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

  timestamp = [(APSOutgoingMessage *)self timestamp];
  v5 = [timestamp dateByAddingTimeInterval:v3];

  return v5;
}

- (BOOL)hasTimedOut
{
  v2 = [(APSMessage *)self objectForKey:@"APSTimedOut"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (id)sendTimeoutTime
{
  timestamp = [(APSOutgoingMessage *)self timestamp];
  v4 = [timestamp dateByAddingTimeInterval:{-[APSOutgoingMessage timeout](self, "timeout")}];

  return v4;
}

- (unint64_t)payloadLength
{
  v2 = [(APSMessage *)self objectForKey:@"APSOutgoingMessagePayloadLength"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setMessageID:(unint64_t)d
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:d];
  [(APSMessage *)self setObject:v4 forKey:@"APSMessageID"];
}

- (void)setTimeout:(unint64_t)timeout
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:timeout];
  [(APSMessage *)self setObject:v4 forKey:@"APSTimeout"];
}

- (id)rawTimeoutTime
{
  timestamp = [(APSOutgoingMessage *)self timestamp];
  v4 = [timestamp dateByAddingTimeInterval:{-[APSOutgoingMessage timeout](self, "timeout")}];

  return v4;
}

- (void)setPayloadFormat:(unint64_t)format
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:format];
  [(APSMessage *)self setObject:v4 forKey:@"APSPayloadFormat"];
}

- (void)setPayloadLength:(unint64_t)length
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:length];
  [(APSMessage *)self setObject:v4 forKey:@"APSOutgoingMessagePayloadLength"];
}

- (void)setPriority:(int64_t)priority
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:priority];
  [(APSMessage *)self setObject:v4 forKey:@"APSOutgoingMessagePriority"];
}

- (unint64_t)pushType
{
  v2 = [(APSMessage *)self objectForKey:@"APSOutgoingMessagePushType"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setPushType:(unint64_t)type
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  [(APSMessage *)self setObject:v4 forKey:@"APSOutgoingMessagePushType"];
}

- (BOOL)sendRetried
{
  v2 = [(APSMessage *)self objectForKey:@"APSSendRetried"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setAckTimestamp:(unint64_t)timestamp
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:timestamp];
  [(APSMessage *)self setObject:v4 forKey:@"APSAckTimestamp"];
}

- (unint64_t)ackTimestamp
{
  v2 = [(APSMessage *)self objectForKey:@"APSAckTimestamp"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unsigned)pushFlags
{
  v2 = [(APSMessage *)self objectForKey:@"APSOutgoingMessagePushFlags"];
  unsignedIntValue = [v2 unsignedIntValue];

  return unsignedIntValue;
}

@end