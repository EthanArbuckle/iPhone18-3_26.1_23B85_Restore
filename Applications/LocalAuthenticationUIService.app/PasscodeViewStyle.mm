@interface PasscodeViewStyle
+ (id)darkStyleWithBackgroundStyle:(int64_t)style;
+ (id)lightStyleWithBackgroundStyle:(int64_t)style;
- (BOOL)isEqual:(id)equal;
- (PasscodeViewStyle)initWithRawValue:(int64_t)value backgroundStyle:(int64_t)style;
@end

@implementation PasscodeViewStyle

- (PasscodeViewStyle)initWithRawValue:(int64_t)value backgroundStyle:(int64_t)style
{
  v7.receiver = self;
  v7.super_class = PasscodeViewStyle;
  result = [(PasscodeViewStyle *)&v7 init];
  if (result)
  {
    result->_rawValue = value;
    result->_backgroundStyle = style;
  }

  return result;
}

+ (id)darkStyleWithBackgroundStyle:(int64_t)style
{
  v3 = [[PasscodeViewStyle alloc] initWithRawValue:0 backgroundStyle:style];

  return v3;
}

+ (id)lightStyleWithBackgroundStyle:(int64_t)style
{
  v3 = [[PasscodeViewStyle alloc] initWithRawValue:1 backgroundStyle:style];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    rawValue = [(PasscodeViewStyle *)self rawValue];
    if (rawValue == [v5 rawValue])
    {
      backgroundStyle = [(PasscodeViewStyle *)self backgroundStyle];
      v8 = backgroundStyle == [v5 backgroundStyle];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end