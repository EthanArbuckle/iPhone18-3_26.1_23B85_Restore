@interface _GCCControllerManagerDescription
- (id)materializeWithContext:(id)a3;
@end

@implementation _GCCControllerManagerDescription

- (id)materializeWithContext:(id)a3
{
  v5.receiver = self;
  v5.super_class = _GCCControllerManagerDescription;
  v3 = [(_GCImplicitIPCObjectDescription *)&v5 materializeWithContext:a3];

  return v3;
}

@end