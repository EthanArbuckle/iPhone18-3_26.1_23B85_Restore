@interface _GCCControllerHIDServiceInfoDescription
- (_GCCControllerHIDServiceInfoDescription)initWithServiceInfo:(id)info;
- (id)materializeWithContext:(id)context;
@end

@implementation _GCCControllerHIDServiceInfoDescription

- (_GCCControllerHIDServiceInfoDescription)initWithServiceInfo:(id)info
{
  identifier = [info identifier];
  v5 = [(_GCImplicitIPCObjectDescription *)self initWithIdentifier:identifier];

  return v5;
}

- (id)materializeWithContext:(id)context
{
  v5.receiver = self;
  v5.super_class = _GCCControllerHIDServiceInfoDescription;
  v3 = [(_GCImplicitIPCObjectDescription *)&v5 materializeWithContext:context];

  return v3;
}

@end