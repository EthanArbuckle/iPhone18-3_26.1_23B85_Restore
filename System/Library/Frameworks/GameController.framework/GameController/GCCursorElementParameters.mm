@interface GCCursorElementParameters
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation GCCursorElementParameters

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = GCCursorElementParameters;
  return [(_GCDevicePhysicalInputElementParameters *)&v4 copyWithZone:zone];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7.receiver = self;
    v7.super_class = GCCursorElementParameters;
    v5 = [(_GCDevicePhysicalInputElementParameters *)&v7 isEqual:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end