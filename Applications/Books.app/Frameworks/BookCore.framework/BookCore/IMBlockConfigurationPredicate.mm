@interface IMBlockConfigurationPredicate
+ (id)predicateWithBlock:(id)block;
- (BOOL)evaluateWithContext:(id)context;
@end

@implementation IMBlockConfigurationPredicate

+ (id)predicateWithBlock:(id)block
{
  blockCopy = block;
  v4 = objc_alloc_init(IMBlockConfigurationPredicate);
  [(IMBlockConfigurationPredicate *)v4 setBlock:blockCopy];

  return v4;
}

- (BOOL)evaluateWithContext:(id)context
{
  contextCopy = context;
  block = [(IMBlockConfigurationPredicate *)self block];

  if (block)
  {
    block2 = [(IMBlockConfigurationPredicate *)self block];
    v7 = (block2)[2](block2, contextCopy);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end