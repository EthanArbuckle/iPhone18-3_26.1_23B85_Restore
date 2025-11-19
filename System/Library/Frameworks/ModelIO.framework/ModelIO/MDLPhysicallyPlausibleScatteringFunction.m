@interface MDLPhysicallyPlausibleScatteringFunction
- (MDLPhysicallyPlausibleScatteringFunction)init;
@end

@implementation MDLPhysicallyPlausibleScatteringFunction

- (MDLPhysicallyPlausibleScatteringFunction)init
{
  v6.receiver = self;
  v6.super_class = MDLPhysicallyPlausibleScatteringFunction;
  v3 = [(MDLScatteringFunction *)&v6 init];
  if (v3 == self)
  {
    name = v3->super._name;
    v3->super._name = @"SimplifiedPhysical";

    operator new();
  }

  return 0;
}

@end