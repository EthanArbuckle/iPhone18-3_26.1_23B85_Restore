@interface NSInvocation
- (id)_maps_copy;
@end

@implementation NSInvocation

- (id)_maps_copy
{
  methodSignature = [(NSInvocation *)self methodSignature];
  v4 = [NSInvocation invocationWithMethodSignature:methodSignature];

  [v4 setSelector:{-[NSInvocation selector](self, "selector")}];
  target = [(NSInvocation *)self target];
  [v4 setTarget:target];

  methodSignature2 = [(NSInvocation *)self methodSignature];
  numberOfArguments = [methodSignature2 numberOfArguments];

  if (numberOfArguments >= 3)
  {
    for (i = 2; i != numberOfArguments; ++i)
    {
      v10 = 0;
      [(NSInvocation *)self getArgument:&v10 atIndex:i];
      [v4 setArgument:&v10 atIndex:i];
    }
  }

  [v4 retainArguments];

  return v4;
}

@end