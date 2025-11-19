@interface _GCDevicePhysicalInputFacadeParameters
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _GCDevicePhysicalInputFacadeParameters

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = _GCDevicePhysicalInputFacadeParameters;
  return [(_GCDevicePhysicalInputViewParameters *)&v4 copyWithZone:a3];
}

- (BOOL)isEqual:(id)a3
{
  v4.receiver = self;
  v4.super_class = _GCDevicePhysicalInputFacadeParameters;
  return [(_GCDevicePhysicalInputViewParameters *)&v4 isEqual:a3];
}

@end