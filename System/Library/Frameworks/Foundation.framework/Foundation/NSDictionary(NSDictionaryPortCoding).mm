@interface NSDictionary(NSDictionaryPortCoding)
- (id)replacementObjectForPortCoder:()NSDictionaryPortCoding;
@end

@implementation NSDictionary(NSDictionaryPortCoding)

- (id)replacementObjectForPortCoder:()NSDictionaryPortCoding
{
  v7 = *MEMORY[0x1E69E9840];
  if ([a3 isByref])
  {
    v6.receiver = a1;
    v6.super_class = NSDictionary_0;
    return objc_msgSendSuper2(&v6, sel_replacementObjectForPortCoder_, a3);
  }

  return a1;
}

@end