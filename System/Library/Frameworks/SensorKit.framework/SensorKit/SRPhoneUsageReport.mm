@interface SRPhoneUsageReport
+ (SRPhoneUsageReport)usageReportWithInterval:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSInteger)totalUniqueContacts;
- (NSString)description;
- (SRPhoneUsageReport)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5;
- (SRPhoneUsageReport)initWithCoder:(id)a3;
- (id)sr_dictionaryRepresentation;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SRPhoneUsageReport

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [a3 encodeDouble:@"startTime" forKey:self->_startTime];
  [a3 encodeDouble:@"duration" forKey:self->_duration];
  [a3 encodeInteger:self->_totalOutgoingCalls forKey:@"totalOutgoingCall"];
  [a3 encodeInteger:self->_totalIncomingCalls forKey:@"totalIncomingCall"];
  [a3 encodeInteger:-[SRPhoneUsageReport totalUniqueContacts](self forKey:{"totalUniqueContacts"), @"totalUniqueContacts"}];
  totalPhoneCallDuration = self->_totalPhoneCallDuration;

  [a3 encodeDouble:@"totalCallDuration" forKey:totalPhoneCallDuration];
}

- (SRPhoneUsageReport)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v11.receiver = self;
  v11.super_class = SRPhoneUsageReport;
  v6 = [(SRPhoneUsageReport *)&v11 init];
  if (v6)
  {
    [a3 decodeDoubleForKey:@"startTime"];
    v6->_startTime = v7;
    [a3 decodeDoubleForKey:@"duration"];
    v6->_duration = v8;
    v6->_totalOutgoingCalls = [a3 decodeIntegerForKey:@"totalOutgoingCall"];
    v6->_totalIncomingCalls = [a3 decodeIntegerForKey:@"totalIncomingCall"];
    v6->_totalUniqueContacts = [a3 decodeIntegerForKey:@"totalUniqueContacts"];
    [a3 decodeDoubleForKey:@"totalCallDuration"];
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

- (SRPhoneUsageReport)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5
{
  if ([a3 length])
  {
    v11.receiver = self;
    v11.super_class = SRPhoneUsageReport;
    v7 = [(SRPhoneUsageReport *)&v11 init];
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

+ (SRPhoneUsageReport)usageReportWithInterval:(id)a3
{
  v4 = objc_alloc_init(SRPhoneUsageReport);
  [objc_msgSend(a3 "startDate")];
  [(SRPhoneUsageReport *)v4 setStartTime:?];
  [a3 duration];
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

  totalOutgoingCalls = self->_totalOutgoingCalls;
  if (totalOutgoingCalls != [a3 totalOutgoingCalls])
  {
    return 0;
  }

  totalIncomingCalls = self->_totalIncomingCalls;
  if (totalIncomingCalls != [a3 totalIncomingCalls])
  {
    return 0;
  }

  v9 = [(SRPhoneUsageReport *)self totalUniqueContacts];
  if (v9 != [a3 totalUniqueContacts])
  {
    return 0;
  }

  totalPhoneCallDuration = self->_totalPhoneCallDuration;
  [a3 totalPhoneCallDuration];
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