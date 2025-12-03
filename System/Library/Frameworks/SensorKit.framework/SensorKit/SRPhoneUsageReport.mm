@interface SRPhoneUsageReport
+ (SRPhoneUsageReport)usageReportWithInterval:(id)interval;
- (BOOL)isEqual:(id)equal;
- (NSInteger)totalUniqueContacts;
- (NSString)description;
- (SRPhoneUsageReport)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp;
- (SRPhoneUsageReport)initWithCoder:(id)coder;
- (id)sr_dictionaryRepresentation;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SRPhoneUsageReport

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [coder encodeDouble:@"startTime" forKey:self->_startTime];
  [coder encodeDouble:@"duration" forKey:self->_duration];
  [coder encodeInteger:self->_totalOutgoingCalls forKey:@"totalOutgoingCall"];
  [coder encodeInteger:self->_totalIncomingCalls forKey:@"totalIncomingCall"];
  [coder encodeInteger:-[SRPhoneUsageReport totalUniqueContacts](self forKey:{"totalUniqueContacts"), @"totalUniqueContacts"}];
  totalPhoneCallDuration = self->_totalPhoneCallDuration;

  [coder encodeDouble:@"totalCallDuration" forKey:totalPhoneCallDuration];
}

- (SRPhoneUsageReport)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v11.receiver = self;
  v11.super_class = SRPhoneUsageReport;
  v6 = [(SRPhoneUsageReport *)&v11 init];
  if (v6)
  {
    [coder decodeDoubleForKey:@"startTime"];
    v6->_startTime = v7;
    [coder decodeDoubleForKey:@"duration"];
    v6->_duration = v8;
    v6->_totalOutgoingCalls = [coder decodeIntegerForKey:@"totalOutgoingCall"];
    v6->_totalIncomingCalls = [coder decodeIntegerForKey:@"totalIncomingCall"];
    v6->_totalUniqueContacts = [coder decodeIntegerForKey:@"totalUniqueContacts"];
    [coder decodeDoubleForKey:@"totalCallDuration"];
    v6->_totalPhoneCallDuration = v9;
  }

  return v6;
}

- (void)dealloc
{
  [(SRPhoneUsageReport *)self setUniqueContacts:0];
  v3.receiver = self;
  v3.super_class = SRPhoneUsageReport;
  [(SRPhoneUsageReport *)&v3 dealloc];
}

- (SRPhoneUsageReport)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp
{
  if ([representation length])
  {
    v11.receiver = self;
    v11.super_class = SRPhoneUsageReport;
    v7 = [(SRPhoneUsageReport *)&v11 init];
    if (v7)
    {
      v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:representation error:0];
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

+ (SRPhoneUsageReport)usageReportWithInterval:(id)interval
{
  v4 = objc_alloc_init(SRPhoneUsageReport);
  [objc_msgSend(interval "startDate")];
  [(SRPhoneUsageReport *)v4 setStartTime:?];
  [interval duration];
  [(SRPhoneUsageReport *)v4 setDuration:?];
  -[SRPhoneUsageReport setUniqueContacts:](v4, "setUniqueContacts:", [MEMORY[0x1E695DFA8] set]);

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(SRPhoneUsageReport *)self startTime];
  v7 = v6;
  [(SRPhoneUsageReport *)self duration];
  v9 = v8;
  [(SRPhoneUsageReport *)self totalPhoneCallDuration];
  return [v3 stringWithFormat:@"%@ {Start time: %f, duration: %f, totalPhoneCallDuration: %f, totalUniqueContacts: %lu, totalIncomingCalls: %lu, totalOutgoingCalls: %lu}", v5, v7, v9, v10, -[SRPhoneUsageReport totalUniqueContacts](self, "totalUniqueContacts"), -[SRPhoneUsageReport totalIncomingCalls](self, "totalIncomingCalls"), -[SRPhoneUsageReport totalOutgoingCalls](self, "totalOutgoingCalls")];
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

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  duration = self->_duration;
  [equal duration];
  if (duration != v6)
  {
    return 0;
  }

  totalOutgoingCalls = self->_totalOutgoingCalls;
  if (totalOutgoingCalls != [equal totalOutgoingCalls])
  {
    return 0;
  }

  totalIncomingCalls = self->_totalIncomingCalls;
  if (totalIncomingCalls != [equal totalIncomingCalls])
  {
    return 0;
  }

  totalUniqueContacts = [(SRPhoneUsageReport *)self totalUniqueContacts];
  if (totalUniqueContacts != [equal totalUniqueContacts])
  {
    return 0;
  }

  totalPhoneCallDuration = self->_totalPhoneCallDuration;
  [equal totalPhoneCallDuration];
  return totalPhoneCallDuration == v11;
}

- (id)sr_dictionaryRepresentation
{
  v6[5] = *MEMORY[0x1E69E9840];
  v5[0] = @"duration";
  v6[0] = [MEMORY[0x1E696AD98] numberWithDouble:self->_duration];
  v5[1] = @"totalOutgoingCall";
  v6[1] = [MEMORY[0x1E696AD98] numberWithInteger:self->_totalOutgoingCalls];
  v5[2] = @"totalIncomingCall";
  v6[2] = [MEMORY[0x1E696AD98] numberWithInteger:self->_totalIncomingCalls];
  v5[3] = @"totalUniqueContacts";
  v6[3] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRPhoneUsageReport totalUniqueContacts](self, "totalUniqueContacts")}];
  v5[4] = @"totalCallDuration";
  v6[4] = [MEMORY[0x1E696AD98] numberWithDouble:self->_totalPhoneCallDuration];
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:5];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

@end