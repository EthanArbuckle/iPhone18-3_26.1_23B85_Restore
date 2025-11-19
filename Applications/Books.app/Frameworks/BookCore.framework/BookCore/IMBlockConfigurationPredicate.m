@interface IMBlockConfigurationPredicate
+ (id)predicateWithBlock:(id)a3;
- (BOOL)evaluateWithContext:(id)a3;
@end

@implementation IMBlockConfigurationPredicate

+ (id)predicateWithBlock:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(IMBlockConfigurationPredicate);
  [(IMBlockConfigurationPredicate *)v4 setBlock:v3];

  return v4;
}

- (BOOL)evaluateWithContext:(id)a3
{
  v4 = a3;
  v5 = [(IMBlockConfigurationPredicate *)self block];

  if (v5)
  {
    v6 = [(IMBlockConfigurationPredicate *)self block];
    v7 = (v6)[2](v6, v4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end