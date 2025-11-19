@interface SecCBORValue
- (unint64_t)getNumUintBytes:(unint64_t)a3;
- (void)encodeStartItems:(unint64_t)a3 output:(id)a4;
@end

@implementation SecCBORValue

- (unint64_t)getNumUintBytes:(unint64_t)a3
{
  v3 = 1;
  v4 = 2;
  v5 = 8;
  if (!HIDWORD(a3))
  {
    v5 = 4;
  }

  if (a3 >= 0x10000)
  {
    v4 = v5;
  }

  if (a3 >= 0x100)
  {
    v3 = v4;
  }

  if (a3 >= 0x18)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (void)encodeStartItems:(unint64_t)a3 output:(id)a4
{
  v6 = a4;
  [(SecCBORValue *)self setUint:[(SecCBORValue *)self fieldValue] item2:a3 output:v6];
}

@end