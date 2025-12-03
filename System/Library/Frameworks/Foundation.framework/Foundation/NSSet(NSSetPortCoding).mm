@interface NSSet(NSSetPortCoding)
- (id)replacementObjectForPortCoder:()NSSetPortCoding;
@end

@implementation NSSet(NSSetPortCoding)

- (id)replacementObjectForPortCoder:()NSSetPortCoding
{
  v7 = *MEMORY[0x1E69E9840];
  if ([a3 isByref])
  {
    v6.receiver = self;
    v6.super_class = NSSet_0;
    return objc_msgSendSuper2(&v6, sel_replacementObjectForPortCoder_, a3);
  }

  return self;
}

@end