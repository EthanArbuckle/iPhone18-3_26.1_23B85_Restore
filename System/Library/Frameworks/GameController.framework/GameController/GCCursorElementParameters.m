@interface GCCursorElementParameters
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation GCCursorElementParameters

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = GCCursorElementParameters;
  return [(_GCDevicePhysicalInputElementParameters *)&v4 copyWithZone:a3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7.receiver = self;
    v7.super_class = GCCursorElementParameters;
    v5 = [(_GCDevicePhysicalInputElementParameters *)&v7 isEqual:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end