@interface NIAcwgRangingSessionResumeResponseMsg
+ (id)fromStruct:(AcwgRangingSessionResumeResponseMsgStruct)struct;
- (NIAcwgRangingSessionResumeResponseMsg)initWithCoder:(id)coder;
- (NIAcwgRangingSessionResumeResponseMsg)initWithStsIndex0:(unsigned int)index0 uwbTime0:(unint64_t)time0;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NIAcwgRangingSessionResumeResponseMsg

- (NIAcwgRangingSessionResumeResponseMsg)initWithStsIndex0:(unsigned int)index0 uwbTime0:(unint64_t)time0
{
  v7.receiver = self;
  v7.super_class = NIAcwgRangingSessionResumeResponseMsg;
  result = [(NIAcwgRangingSessionResumeResponseMsg *)&v7 init];
  if (result)
  {
    result->_stsIndex0 = index0;
    result->_uwbTime0 = time0;
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

+ (id)fromStruct:(AcwgRangingSessionResumeResponseMsgStruct)struct
{
  v3 = [[self alloc] initWithStsIndex0:*&struct.var0 uwbTime0:struct.var1];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  stsIndex0 = self->_stsIndex0;
  uwbTime0 = self->_uwbTime0;

  return [v4 initWithStsIndex0:stsIndex0 uwbTime0:uwbTime0];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:self->_stsIndex0 forKey:@"stsIndex0"];
  [coderCopy encodeInt64:self->_uwbTime0 forKey:@"uwbTime0"];
}

- (NIAcwgRangingSessionResumeResponseMsg)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = coderCopy;
  if (self)
  {
    self->_stsIndex0 = [coderCopy decodeInt64ForKey:@"stsIndex0"];
    self->_uwbTime0 = [v5 decodeInt64ForKey:@"uwbTime0"];
  }

  return self;
}

@end