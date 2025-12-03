@interface IMOrientationConfigurationPredicate
+ (id)landscapePredicate;
+ (id)portraitPredicate;
- (BOOL)evaluateWithContext:(id)context;
- (IMOrientationConfigurationPredicate)initWithType:(unint64_t)type;
@end

@implementation IMOrientationConfigurationPredicate

+ (id)portraitPredicate
{
  v2 = [[self alloc] initWithType:0];

  return v2;
}

+ (id)landscapePredicate
{
  v2 = [[self alloc] initWithType:1];

  return v2;
}

- (IMOrientationConfigurationPredicate)initWithType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = IMOrientationConfigurationPredicate;
  result = [(IMConfigurationPredicate *)&v5 init];
  if (result)
  {
    result->_type = type;
  }

  return result;
}

- (BOOL)evaluateWithContext:(id)context
{
  [context im_frameEnvironmentBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  type = [(IMOrientationConfigurationPredicate *)self type];
  if (type == 1)
  {
    v18.origin.x = v5;
    v18.origin.y = v7;
    v18.size.width = v9;
    v18.size.height = v11;
    Width = CGRectGetWidth(v18);
    v19.origin.x = v5;
    v19.origin.y = v7;
    v19.size.width = v9;
    v19.size.height = v11;
    Height = CGRectGetHeight(v19);
    return Width > Height;
  }

  if (!type)
  {
    v16.origin.x = v5;
    v16.origin.y = v7;
    v16.size.width = v9;
    v16.size.height = v11;
    Width = CGRectGetHeight(v16);
    v17.origin.x = v5;
    v17.origin.y = v7;
    v17.size.width = v9;
    v17.size.height = v11;
    Height = CGRectGetWidth(v17);
    return Width > Height;
  }

  return 0;
}

@end