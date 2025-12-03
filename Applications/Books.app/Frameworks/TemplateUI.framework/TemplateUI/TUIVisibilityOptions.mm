@interface TUIVisibilityOptions
+ (id)defaultOptions;
+ (id)modalAnchorOptions;
- (TUIVisibilityOptions)init;
- (TUIVisibilityOptions)initWithOther:(id)other;
@end

@implementation TUIVisibilityOptions

+ (id)defaultOptions
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)modalAnchorOptions
{
  v2 = objc_alloc_init(self);
  *(v2 + 8) = xmmword_24CAC0;
  *(v2 + 3) = 1;

  return v2;
}

- (TUIVisibilityOptions)init
{
  v3.receiver = self;
  v3.super_class = TUIVisibilityOptions;
  result = [(TUIVisibilityOptions *)&v3 init];
  if (result)
  {
    *&result->_fraction = xmmword_24CAD0;
    result->_flags = 0;
  }

  return result;
}

- (TUIVisibilityOptions)initWithOther:(id)other
{
  otherCopy = other;
  v9.receiver = self;
  v9.super_class = TUIVisibilityOptions;
  v5 = [(TUIVisibilityOptions *)&v9 init];
  if (v5)
  {
    [otherCopy fraction];
    v5->_fraction = v6;
    [otherCopy duration];
    v5->_duration = v7;
    v5->_flags = [otherCopy flags];
  }

  return v5;
}

@end