@interface _GCCControllerManagerDescription
- (id)materializeWithContext:(id)context;
@end

@implementation _GCCControllerManagerDescription

- (id)materializeWithContext:(id)context
{
  v5.receiver = self;
  v5.super_class = _GCCControllerManagerDescription;
  v3 = [(_GCImplicitIPCObjectDescription *)&v5 materializeWithContext:context];

  return v3;
}

@end