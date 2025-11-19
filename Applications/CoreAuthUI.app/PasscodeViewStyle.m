@interface PasscodeViewStyle
+ (id)darkStyleWithBackgroundStyle:(int64_t)a3;
+ (id)lightStyleWithBackgroundStyle:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (PasscodeViewStyle)initWithRawValue:(int64_t)a3 backgroundStyle:(int64_t)a4;
@end

@implementation PasscodeViewStyle

- (PasscodeViewStyle)initWithRawValue:(int64_t)a3 backgroundStyle:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = PasscodeViewStyle;
  result = [(PasscodeViewStyle *)&v7 init];
  if (result)
  {
    result->_rawValue = a3;
    result->_backgroundStyle = a4;
  }

  return result;
}

+ (id)darkStyleWithBackgroundStyle:(int64_t)a3
{
  v3 = [[PasscodeViewStyle alloc] initWithRawValue:0 backgroundStyle:a3];

  return v3;
}

+ (id)lightStyleWithBackgroundStyle:(int64_t)a3
{
  v3 = [[PasscodeViewStyle alloc] initWithRawValue:1 backgroundStyle:a3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(PasscodeViewStyle *)self rawValue];
    if (v6 == [v5 rawValue])
    {
      v7 = [(PasscodeViewStyle *)self backgroundStyle];
      v8 = v7 == [v5 backgroundStyle];
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