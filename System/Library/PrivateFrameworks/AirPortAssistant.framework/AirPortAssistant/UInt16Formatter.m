@interface UInt16Formatter
+ (id)UInt16Formatter;
@end

@implementation UInt16Formatter

+ (id)UInt16Formatter
{
  v2 = [UInt16Formatter alloc];
  v4 = objc_msgSend_initWithMin_max_(v2, v3, 0, 0xFFFFLL);

  return v4;
}

@end