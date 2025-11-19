@interface ASPropertyCompareString
- (ASPropertyCompareString)initWithCoder:(id)a3;
- (ASPropertyCompareString)initWithString:(id)a3 compareOptions:(unint64_t)a4;
- (ASPropertyCompareString)initWithXPCObject:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithLevel:(int)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCObject:(id)a3;
@end

@implementation ASPropertyCompareString

- (ASPropertyCompareString)initWithString:(id)a3 compareOptions:(unint64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = ASPropertyCompareString;
  v8 = [(ASPropertyCompareString *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_string, a3);
    v9->_compareOptions = a4;
    v10 = v9;
  }

  return v9;
}

- (ASPropertyCompareString)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASPropertyCompareString *)self init];
  if (v5)
  {
    v6 = v4;
    if ([v6 containsValueForKey:@"pSco"])
    {
      v5->_compareOptions = [v6 decodeIntegerForKey:@"pSco"];
    }

    v7 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v8 = v5;
  }

  else
  {
    [ASAccessory initWithCoder:v4];
  }

  return v5;
}

- (ASPropertyCompareString)initWithXPCObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(ASPropertyCompareString *)self init];
  if (v7)
  {
    if (MEMORY[0x2383B4C90](v6) == MEMORY[0x277D86468])
    {
      v17 = 0;
      if (CUXPCDecodeUInt64RangedEx() == 6)
      {
        v7->_compareOptions = v17;
      }

      CUXPCDecodeNSString();
      v14 = v7;
    }

    else if (a4)
    {
      ASErrorF(-6756, "XPC non-dict", v8, v9, v10, v11, v12, v13, v16);
      *a4 = v14 = 0;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    [ASAccessory initWithXPCObject:a4 error:&v17];
    v14 = v17;
  }

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  compareOptions = self->_compareOptions;
  v7 = v4;
  if (compareOptions)
  {
    [v4 encodeInteger:compareOptions forKey:@"pSco"];
    v4 = v7;
  }

  string = self->_string;
  if (string)
  {
    [v7 encodeObject:string forKey:@"pSc"];
    v4 = v7;
  }
}

- (void)encodeWithXPCObject:(id)a3
{
  v4 = a3;
  v5 = v4;
  compareOptions = self->_compareOptions;
  if (compareOptions)
  {
    xpc_dictionary_set_uint64(v4, "pSco", compareOptions);
  }

  string = self->_string;
  xdict = v5;
  v8 = [(NSString *)string UTF8String];
  if (v8)
  {
    xpc_dictionary_set_string(xdict, "pSc", v8);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_string copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v5[2] = self->_compareOptions;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    v6 = v4;
    if ([(ASPropertyCompareString *)v6 isMemberOfClass:objc_opt_class()]&& (compareOptions = self->_compareOptions, compareOptions == [(ASPropertyCompareString *)v6 compareOptions]))
    {
      string = self->_string;
      v9 = [(ASPropertyCompareString *)v6 string];
      v10 = string;
      v11 = v9;
      v12 = v11;
      if (v10 == v11)
      {
        v13 = 1;
      }

      else if ((v10 != 0) == (v11 == 0))
      {
        v13 = 0;
      }

      else
      {
        v13 = [(NSString *)v10 isEqual:v11];
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (id)descriptionWithLevel:(int)a3
{
  if ((a3 & 0x8000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    objc_opt_class();
    CUAppendF();
    v4 = 0;
  }

  string = self->_string;
  if (string)
  {
    v11 = string;
    CUAppendF();
    v6 = v4;

    v4 = v6;
  }

  if (self->_compareOptions)
  {
    compareOptions = self->_compareOptions;
    CUAppendF();
    v7 = v4;

    v4 = v7;
  }

  v8 = &stru_28499D698;
  if (v4)
  {
    v8 = v4;
  }

  v9 = v8;

  return v9;
}

- (unint64_t)hash
{
  string = self->_string;
  if (string)
  {
    v4 = [(NSString *)string hash]^ 0x13;
  }

  else
  {
    v4 = 19;
  }

  return self->_compareOptions + v4;
}

@end