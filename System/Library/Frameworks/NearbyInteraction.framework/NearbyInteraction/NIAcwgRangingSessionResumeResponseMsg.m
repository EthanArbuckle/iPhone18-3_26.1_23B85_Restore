@interface NIAcwgRangingSessionResumeResponseMsg
+ (id)fromStruct:(AcwgRangingSessionResumeResponseMsgStruct)a3;
- (NIAcwgRangingSessionResumeResponseMsg)initWithCoder:(id)a3;
- (NIAcwgRangingSessionResumeResponseMsg)initWithStsIndex0:(unsigned int)a3 uwbTime0:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NIAcwgRangingSessionResumeResponseMsg

- (NIAcwgRangingSessionResumeResponseMsg)initWithStsIndex0:(unsigned int)a3 uwbTime0:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = NIAcwgRangingSessionResumeResponseMsg;
  result = [(NIAcwgRangingSessionResumeResponseMsg *)&v7 init];
  if (result)
  {
    result->_stsIndex0 = a3;
    result->_uwbTime0 = a4;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:\n", v5];

  [v6 appendFormat:@"stsIndex0:%u\n", self->_stsIndex0];
  [v6 appendFormat:@"uwbTime0:%llu>", self->_uwbTime0];

  return v6;
}

+ (id)fromStruct:(AcwgRangingSessionResumeResponseMsgStruct)a3
{
  v3 = [[a1 alloc] initWithStsIndex0:*&a3.var0 uwbTime0:a3.var1];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  stsIndex0 = self->_stsIndex0;
  uwbTime0 = self->_uwbTime0;

  return [v4 initWithStsIndex0:stsIndex0 uwbTime0:uwbTime0];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:self->_stsIndex0 forKey:@"stsIndex0"];
  [v4 encodeInt64:self->_uwbTime0 forKey:@"uwbTime0"];
}

- (NIAcwgRangingSessionResumeResponseMsg)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self)
  {
    self->_stsIndex0 = [v4 decodeInt64ForKey:@"stsIndex0"];
    self->_uwbTime0 = [v5 decodeInt64ForKey:@"uwbTime0"];
  }

  return self;
}

@end