@interface _GCCControllerHIDServiceInfoDescription
- (_GCCControllerHIDServiceInfoDescription)initWithServiceInfo:(id)a3;
- (id)materializeWithContext:(id)a3;
@end

@implementation _GCCControllerHIDServiceInfoDescription

- (_GCCControllerHIDServiceInfoDescription)initWithServiceInfo:(id)a3
{
  v4 = [a3 identifier];
  v5 = [(_GCImplicitIPCObjectDescription *)self initWithIdentifier:v4];

  return v5;
}

- (id)materializeWithContext:(id)a3
{
  v5.receiver = self;
  v5.super_class = _GCCControllerHIDServiceInfoDescription;
  v3 = [(_GCImplicitIPCObjectDescription *)&v5 materializeWithContext:a3];

  return v3;
}

@end