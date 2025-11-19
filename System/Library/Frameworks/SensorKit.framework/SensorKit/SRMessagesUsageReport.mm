@interface SRMessagesUsageReport
+ (SRMessagesUsageReport)usageReportWithInterval:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSInteger)totalUniqueContacts;
- (NSString)description;
- (SRMessagesUsageReport)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5;
- (SRMessagesUsageReport)initWithCoder:(id)a3;
- (id)sr_dictionaryRepresentation;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SRMessagesUsageReport

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [a3 encodeDouble:@"startTime" forKey:self->_startTime];
  [a3 encodeInteger:self->_totalOutgoingMessages forKey:@"totalOutgoingMsg"];
  [a3 encodeInteger:self->_totalIncomingMessages forKey:@"totalIncomingMsg"];
  [a3 encodeInteger:-[SRMessagesUsageReport totalUniqueContacts](self forKey:{"totalUniqueContacts"), @"totalUniqueContacts"}];
  duration = self->_duration;

  [a3 encodeDouble:@"duration" forKey:duration];
}

- (SRMessagesUsageReport)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v10.receiver = self;
  v10.super_class = SRMessagesUsageReport;
  v6 = [(SRMessagesUsageReport *)&v10 init];
  if (v6)
  {
    [a3 decodeDoubleForKey:@"startTime"];
    v6->_startTime = v7;
    [a3 decodeDoubleForKey:@"duration"];
    v6->_duration = v8;
    v6->_totalOutgoingMessages = [a3 decodeIntegerForKey:@"totalOutgoingMsg"];
    v6->_totalIncomingMessages = [a3 decodeIntegerForKey:@"totalIncomingMsg"];
    v6->_totalUniqueContacts = [a3 decodeIntegerForKey:@"totalUniqueContacts"];
  }

  return v6;
}

- (void)dealloc
{
  [(SRMessagesUsageReport *)self setUniqueContacts:0];
  v3.receiver = self;
  v3.super_class = SRMessagesUsageReport;
  [(SRMessagesUsageReport *)&v3 dealloc];
}

- (SRMessagesUsageReport)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5
{
  if ([a3 length])
  {
    v11.receiver = self;
    v11.super_class = SRMessagesUsageReport;
    v7 = [(SRMessagesUsageReport *)&v11 init];
    if (v7)
    {
      v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:a3 error:0];
      if (v8)
      {
        v9 = v8;

        return v9;
      }
    }
  }

  else
  {

    return 0;
  }

  return v7;
}

+ (SRMessagesUsageReport)usageReportWithInterval:(id)a3
{
  v4 = objc_alloc_init(SRMessagesUsageReport);
  [objc_msgSend(a3 "startDate")];
  [(SRMessagesUsageReport *)v4 setStartTime:?];
  [a3 duration];
  [(SRMessagesUsageReport *)v4 setDuration:?];
  -[SRMessagesUsageReport setUniqueContacts:](v4, "setUniqueContacts:", [MEMORY[0x1E695DFA8] set]);

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(SRMessagesUsageReport *)self startTime];
  v7 = v6;
  [(SRMessagesUsageReport *)self duration];
  return [v3 stringWithFormat:@"%@ {Start time: %f, duration: %f, totalUniqueContacts: %lu, totalIncomingMessages: %lu, totalOutgoingMessages: %lu}", v5, v7, v8, -[SRMessagesUsageReport totalUniqueContacts](self, "totalUniqueContacts"), -[SRMessagesUsageReport totalIncomingMessages](self, "totalIncomingMessages"), -[SRMessagesUsageReport totalOutgoingMessages](self, "totalOutgoingMessages")];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  duration = self->_duration;
  [a3 duration];
  if (duration != v6)
  {
    return 0;
  }

  totalOutgoingMessages = self->_totalOutgoingMessages;
  if (totalOutgoingMessages != [a3 totalOutgoingMessages])
  {
    return 0;
  }

  totalIncomingMessages = self->_totalIncomingMessages;
  if (totalIncomingMessages != [a3 totalIncomingMessages])
  {
    return 0;
  }

  v9 = [(SRMessagesUsageReport *)self totalUniqueContacts];
  return v9 == [a3 totalUniqueContacts];
}

- (id)sr_dictionaryRepresentation
{
  v6[4] = *MEMORY[0x1E69E9840];
  v5[0] = @"duration";
  v6[0] = [MEMORY[0x1E696AD98] numberWithDouble:self->_duration];
  v5[1] = @"totalOutgoingMsg";
  v6[1] = [MEMORY[0x1E696AD98] numberWithInteger:self->_totalOutgoingMessages];
  v5[2] = @"totalIncomingMsg";
  v6[2] = [MEMORY[0x1E696AD98] numberWithInteger:self->_totalIncomingMessages];
  v5[3] = @"totalUniqueContacts";
  v6[3] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRMessagesUsageReport totalUniqueContacts](self, "totalUniqueContacts")}];
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:4];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSInteger)totalUniqueContacts
{
  uniqueContacts = self->_uniqueContacts;
  if (uniqueContacts)
  {
    return [(NSMutableSet *)uniqueContacts count];
  }

  else
  {
    return self->_totalUniqueContacts;
  }
}

@end