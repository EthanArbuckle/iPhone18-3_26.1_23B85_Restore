@interface TKSmartCardATRInterfaceGroup
- (TKSmartCardATRInterfaceGroup)initWithProtocol:(id)protocol;
- (id)description;
- (id)parseWithY:(char *)y toProtocol:(id *)protocol fromSource:(id)source hasNext:(BOOL *)next;
@end

@implementation TKSmartCardATRInterfaceGroup

- (TKSmartCardATRInterfaceGroup)initWithProtocol:(id)protocol
{
  protocolCopy = protocol;
  v9.receiver = self;
  v9.super_class = TKSmartCardATRInterfaceGroup;
  v6 = [(TKSmartCardATRInterfaceGroup *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_protocol, protocol);
  }

  return v7;
}

- (id)parseWithY:(char *)y toProtocol:(id *)protocol fromSource:(id)source hasNext:(BOOL *)next
{
  sourceCopy = source;
  for (i = 0; i != 3; ++i)
  {
    if (((*y >> i) & 0x10) != 0)
    {
      v12 = sourceCopy[2](sourceCopy);
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

  if ((*y & 0x80000000) == 0)
  {
    v16 = 0;
    *next = 0;
    *y = 0;
LABEL_10:
    *protocol = v16;
    selfCopy = self;
    goto LABEL_12;
  }

  *next = 1;
  v17 = sourceCopy[2](sourceCopy);
  if ((v17 & 0x80000000) == 0)
  {
    *y = v17 & 0xF0;
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:1 << (v17 & 0xF)];
    goto LABEL_10;
  }

LABEL_11:
  selfCopy = 0;
LABEL_12:

  return selfCopy;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
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

    string = v5;
  }

LABEL_7:
  for (i = 8; i != 32; i += 8)
  {
    v7 = *(&self->super.isa + i);
    if (v7)
    {
      [string appendFormat:@"%02x", objc_msgSend(v7, "unsignedCharValue")];
    }

    else
    {
      [string appendString:@"-"];
    }
  }

  return string;
}

@end