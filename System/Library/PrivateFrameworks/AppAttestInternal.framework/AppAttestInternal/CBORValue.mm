@interface CBORValue
- (unint64_t)getNumUintBytes:(unint64_t)bytes;
- (void)encodeStartItems:(unint64_t)items output:(id)output;
@end

@implementation CBORValue

- (void)encodeStartItems:(unint64_t)items output:(id)output
{
  outputCopy = output;
  [(CBORValue *)self setUint:[(CBORValue *)self fieldValue] item2:items output:outputCopy];
}

- (unint64_t)getNumUintBytes:(unint64_t)bytes
{
  v3 = 1;
  v4 = 2;
  v5 = 8;
  if (!HIDWORD(bytes))
  {
    v5 = 4;
  }

  if (bytes >= 0x10000)
  {
    v4 = v5;
  }

  if (bytes >= 0x100)
  {
    v3 = v4;
  }

  if (bytes >= 0x18)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

@end