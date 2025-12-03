@interface ASMPeripheralConfig
- (ASMPeripheralConfig)initWithCoder:(id)coder;
- (id)description;
@end

@implementation ASMPeripheralConfig

- (ASMPeripheralConfig)initWithCoder:(id)coder
{
  v3 = [(ASMPeripheralConfig *)self init];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (id)description
{
  v4 = [objc_opt_class() description];
  NSAppendPrintF();
  v2 = 0;

  return 0;
}

@end