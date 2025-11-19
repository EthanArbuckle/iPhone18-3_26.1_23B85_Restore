@interface NSInvocation
- (id)_maps_copy;
@end

@implementation NSInvocation

- (id)_maps_copy
{
  v3 = [(NSInvocation *)self methodSignature];
  v4 = [NSInvocation invocationWithMethodSignature:v3];

  [v4 setSelector:{-[NSInvocation selector](self, "selector")}];
  v5 = [(NSInvocation *)self target];
  [v4 setTarget:v5];

  v6 = [(NSInvocation *)self methodSignature];
  v7 = [v6 numberOfArguments];

  if (v7 >= 3)
  {
    for (i = 2; i != v7; ++i)
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