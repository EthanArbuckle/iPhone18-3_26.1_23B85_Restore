@interface TUIVisibilityOptions
+ (id)defaultOptions;
+ (id)modalAnchorOptions;
- (TUIVisibilityOptions)init;
- (TUIVisibilityOptions)initWithOther:(id)a3;
@end

@implementation TUIVisibilityOptions

+ (id)defaultOptions
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (id)modalAnchorOptions
{
  v2 = objc_alloc_init(a1);
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

- (TUIVisibilityOptions)initWithOther:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TUIVisibilityOptions;
  v5 = [(TUIVisibilityOptions *)&v9 init];
  if (v5)
  {
    [v4 fraction];
    v5->_fraction = v6;
    [v4 duration];
    v5->_duration = v7;
    v5->_flags = [v4 flags];
  }

  return v5;
}

@end