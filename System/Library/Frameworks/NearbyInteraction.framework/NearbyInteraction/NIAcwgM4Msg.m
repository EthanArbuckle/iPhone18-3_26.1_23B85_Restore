@interface NIAcwgM4Msg
+ (id)fromStruct:(AcwgM4MsgStruct *)a3;
- (AcwgM4MsgStruct)toStruct;
- (NIAcwgM4Msg)initWithCoder:(id)a3;
- (NIAcwgM4Msg)initWithStsIndex0:(unsigned int)a3 uwbTime0:(unint64_t)a4 hopKey:(unsigned int)a5 selectedSyncCodeIndex:(unsigned __int8)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NIAcwgM4Msg

- (NIAcwgM4Msg)initWithStsIndex0:(unsigned int)a3 uwbTime0:(unint64_t)a4 hopKey:(unsigned int)a5 selectedSyncCodeIndex:(unsigned __int8)a6
{
  v11.receiver = self;
  v11.super_class = NIAcwgM4Msg;
  result = [(NIAcwgM4Msg *)&v11 init];
  if (result)
  {
    result->_uwbTime0 = a4;
    result->_stsIndex0 = a3;
    result->_hopKey = a5;
    result->_selectedSyncCodeIndex = a6;
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
  [v6 appendFormat:@"uwbTime0:%llu\n", self->_uwbTime0];
  [v6 appendFormat:@"hopKey:%u\n", self->_hopKey];
  [v6 appendFormat:@"selectedSyncCodeIndex:%u>", self->_selectedSyncCodeIndex];

  return v6;
}

- (AcwgM4MsgStruct)toStruct
{
  v3 = *&self[1].var0;
  var2 = self->var2;
  var1 = self->var1;
  retstr->var0 = HIDWORD(self->var1);
  retstr->var1 = v3;
  retstr->var2 = var2;
  retstr->var3 = var1;
  return self;
}

+ (id)fromStruct:(AcwgM4MsgStruct *)a3
{
  v3 = [[a1 alloc] initWithStsIndex0:a3->var0 uwbTime0:a3->var1 hopKey:a3->var2 selectedSyncCodeIndex:a3->var3];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  uwbTime0 = self->_uwbTime0;
  stsIndex0 = self->_stsIndex0;
  hopKey = self->_hopKey;
  selectedSyncCodeIndex = self->_selectedSyncCodeIndex;

  return [v4 initWithStsIndex0:stsIndex0 uwbTime0:uwbTime0 hopKey:hopKey selectedSyncCodeIndex:selectedSyncCodeIndex];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:self->_stsIndex0 forKey:@"stsIndex0"];
  [v4 encodeInt64:self->_uwbTime0 forKey:@"uwbTime0"];
  [v4 encodeInt64:self->_hopKey forKey:@"hopKey"];
  [v4 encodeInt:self->_selectedSyncCodeIndex forKey:@"selectedSyncCodeIndex"];
}

- (NIAcwgM4Msg)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self)
  {
    self->_stsIndex0 = [v4 decodeInt64ForKey:@"stsIndex0"];
    self->_uwbTime0 = [v5 decodeInt64ForKey:@"uwbTime0"];
    self->_hopKey = [v5 decodeInt64ForKey:@"hopKey"];
    self->_selectedSyncCodeIndex = [v5 decodeIntForKey:@"selectedSyncCodeIndex"];
  }

  return self;
}

@end