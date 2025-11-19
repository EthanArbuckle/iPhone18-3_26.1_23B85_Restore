@interface TKSmartCardATRInterfaceGroup
- (TKSmartCardATRInterfaceGroup)initWithProtocol:(id)a3;
- (id)description;
- (id)parseWithY:(char *)a3 toProtocol:(id *)a4 fromSource:(id)a5 hasNext:(BOOL *)a6;
@end

@implementation TKSmartCardATRInterfaceGroup

- (TKSmartCardATRInterfaceGroup)initWithProtocol:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TKSmartCardATRInterfaceGroup;
  v6 = [(TKSmartCardATRInterfaceGroup *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_protocol, a3);
  }

  return v7;
}

- (id)parseWithY:(char *)a3 toProtocol:(id *)a4 fromSource:(id)a5 hasNext:(BOOL *)a6
{
  v10 = a5;
  for (i = 0; i != 3; ++i)
  {
    if (((*a3 >> i) & 0x10) != 0)
    {
      v12 = v10[2](v10);
      if ((v12 & 0x80000000) != 0)
      {
        goto LABEL_11;
      }

      v13 = [MEMORY[0x1E696AD98] numberWithInt:v12];
      v14 = &self->super.isa + i;
      v15 = v14[1];
      v14[1] = v13;
    }
  }

  if ((*a3 & 0x80000000) == 0)
  {
    v16 = 0;
    *a6 = 0;
    *a3 = 0;
LABEL_10:
    *a4 = v16;
    v18 = self;
    goto LABEL_12;
  }

  *a6 = 1;
  v17 = v10[2](v10);
  if ((v17 & 0x80000000) == 0)
  {
    *a3 = v17 & 0xF0;
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:1 << (v17 & 0xF)];
    goto LABEL_10;
  }

LABEL_11:
  v18 = 0;
LABEL_12:

  return v18;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  if (self->_protocol)
  {
    v4 = 0;
    while (([(NSNumber *)self->_protocol unsignedIntegerValue]& (1 << v4)) == 0)
    {
      v4 = (v4 + 1);
      if (v4 == 16)
      {
        goto LABEL_7;
      }
    }

    v5 = [MEMORY[0x1E696AD60] stringWithFormat:@"T=%d:", v4];

    v3 = v5;
  }

LABEL_7:
  for (i = 8; i != 32; i += 8)
  {
    v7 = *(&self->super.isa + i);
    if (v7)
    {
      [v3 appendFormat:@"%02x", objc_msgSend(v7, "unsignedCharValue")];
    }

    else
    {
      [v3 appendString:@"-"];
    }
  }

  return v3;
}

@end