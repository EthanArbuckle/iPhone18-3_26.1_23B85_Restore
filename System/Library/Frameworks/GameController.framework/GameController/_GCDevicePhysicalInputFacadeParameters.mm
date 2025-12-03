@interface _GCDevicePhysicalInputFacadeParameters
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _GCDevicePhysicalInputFacadeParameters

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = _GCDevicePhysicalInputFacadeParameters;
  return [(_GCDevicePhysicalInputViewParameters *)&v4 copyWithZone:zone];
}

- (BOOL)isEqual:(id)equal
{
  v4.receiver = self;
  v4.super_class = _GCDevicePhysicalInputFacadeParameters;
  return [(_GCDevicePhysicalInputViewParameters *)&v4 isEqual:equal];
}

@end