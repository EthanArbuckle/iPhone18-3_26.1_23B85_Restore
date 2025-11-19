@interface IMSizeConfigurationPredicate
+ (id)predicateForDisplayClassSize:(CGSize)a3;
+ (id)predicateForExactSize:(CGSize)a3;
+ (id)predicateForHeight:(double)a3;
+ (id)predicateForLargerThan:(CGSize)a3;
+ (id)predicateForSize:(CGSize)a3;
+ (id)predicateForWidth:(double)a3;
- (BOOL)evaluateWithFrameEnvironmentContext:(id)a3;
- (CGSize)size;
- (IMSizeConfigurationPredicate)init;
- (IMSizeConfigurationPredicate)initWithSize:(CGSize)a3 hasWidth:(BOOL)a4 hasHeight:(BOOL)a5 exactSize:(BOOL)a6;
@end

@implementation IMSizeConfigurationPredicate

+ (id)predicateForSize:(CGSize)a3
{
  v3 = [[a1 alloc] initWithSize:1 hasWidth:1 hasHeight:0 exactSize:{a3.width, a3.height}];

  return v3;
}

+ (id)predicateForExactSize:(CGSize)a3
{
  v3 = [[a1 alloc] initWithSize:1 hasWidth:1 hasHeight:1 exactSize:{a3.width, a3.height}];

  return v3;
}

+ (id)predicateForWidth:(double)a3
{
  v3 = [[a1 alloc] initWithSize:1 hasWidth:0 hasHeight:0 exactSize:{a3, 0.0}];

  return v3;
}

+ (id)predicateForHeight:(double)a3
{
  v3 = [[a1 alloc] initWithSize:0 hasWidth:1 hasHeight:0 exactSize:{0.0, a3}];

  return v3;
}

+ (id)predicateForDisplayClassSize:(CGSize)a3
{
  v3 = [[a1 alloc] initWithSize:1 hasWidth:1 hasHeight:0 exactSize:{a3.width, a3.height}];
  [v3 setIsDisplayClassSize:1];

  return v3;
}

+ (id)predicateForLargerThan:(CGSize)a3
{
  v3 = [[a1 alloc] initWithSize:1 hasWidth:1 hasHeight:0 exactSize:{a3.width, a3.height}];
  [v3 setLargerThan:1];

  return v3;
}

- (IMSizeConfigurationPredicate)initWithSize:(CGSize)a3 hasWidth:(BOOL)a4 hasHeight:(BOOL)a5 exactSize:(BOOL)a6
{
  height = a3.height;
  width = a3.width;
  v15.receiver = self;
  v15.super_class = IMSizeConfigurationPredicate;
  v11 = [(IMConfigurationPredicate *)&v15 init];
  v12 = v11;
  if (v11)
  {
    v11->_size.width = width;
    v11->_size.height = height;
    v11->_hasWidth = a4;
    v11->_hasHeight = a5;
    v11->_exactSize = a6;
    if (a6)
    {
      v13 = 1000000000;
LABEL_7:
      [(IMConfigurationPredicate *)v11 setScore:v13];
      return v12;
    }

    if (width > 0.0 && height > 0.0)
    {
      v13 = (1000000000.0 - width * height);
      goto LABEL_7;
    }
  }

  return v12;
}

- (IMSizeConfigurationPredicate)init
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromSelector("initWithSize:hasWidth:hasHeight:exactSize:");
  [NSException raise:NSInvalidArgumentException format:@"Please use the designated initializer [%@ %@]", v4, v5];

  return 0;
}

- (BOOL)evaluateWithFrameEnvironmentContext:(id)a3
{
  [a3 im_frameEnvironmentBounds];
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  v8 = CGRectGetWidth(v22);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v9 = CGRectGetHeight(v23);
  if (![(IMSizeConfigurationPredicate *)self exactSize])
  {
    if ([(IMSizeConfigurationPredicate *)self largerThan])
    {
      [(IMSizeConfigurationPredicate *)self size];
      if (v8 > v13)
      {
        [(IMSizeConfigurationPredicate *)self size];
        return v9 > v14;
      }

      return 0;
    }

    if ([(IMSizeConfigurationPredicate *)self isDisplayClassSize])
    {
      [(IMSizeConfigurationPredicate *)self size];
      if (v8 > v9)
      {
        if (v8 <= v16)
        {
          return 1;
        }

        [(IMSizeConfigurationPredicate *)self size];
        v18 = v9 > v17;
        return !v18;
      }

      if (v8 <= v15)
      {
        return 1;
      }
    }

    else if ([(IMSizeConfigurationPredicate *)self hasHeight]&& [(IMSizeConfigurationPredicate *)self hasWidth])
    {
      [(IMSizeConfigurationPredicate *)self size];
      if (v8 > v19)
      {
        return 0;
      }
    }

    else if (![(IMSizeConfigurationPredicate *)self hasHeight])
    {
      if (![(IMSizeConfigurationPredicate *)self hasWidth])
      {
        return 1;
      }

      [(IMSizeConfigurationPredicate *)self size];
      v18 = v8 > v20;
      return !v18;
    }

    [(IMSizeConfigurationPredicate *)self size];
    v18 = v9 > v21;
    return !v18;
  }

  [(IMSizeConfigurationPredicate *)self size];
  if (v8 != v10 && vabdd_f64(v8, v10) >= fabs(v10 * 0.000000999999997))
  {
    return 0;
  }

  [(IMSizeConfigurationPredicate *)self size];
  if (v9 == v11)
  {
    return 1;
  }

  return vabdd_f64(v9, v11) < fabs(v11 * 0.000000999999997);
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end