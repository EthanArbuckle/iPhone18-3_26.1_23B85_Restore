@interface AVTimeRangeMarkUIProxy
+ (id)maskedTimeRangeMarkUIProxyWithCornerRadius:(float)radius;
+ (id)timeRangeMarkUIProxyWithBackgroundColor:(id)color cornerRadius:(float)radius;
@end

@implementation AVTimeRangeMarkUIProxy

+ (id)timeRangeMarkUIProxyWithBackgroundColor:(id)color cornerRadius:(float)radius
{
  colorCopy = color;
  v6 = objc_alloc_init(AVTimeRangeMarkUIProxy);
  backgroundColor = v6->_backgroundColor;
  v6->_backgroundColor = colorCopy;

  v6->_cornerRadius = radius;

  return v6;
}

+ (id)maskedTimeRangeMarkUIProxyWithCornerRadius:(float)radius
{
  v4 = objc_alloc_init(AVTimeRangeMarkUIProxy);
  v4->_isMasked = 1;
  v4->_cornerRadius = radius;

  return v4;
}

@end