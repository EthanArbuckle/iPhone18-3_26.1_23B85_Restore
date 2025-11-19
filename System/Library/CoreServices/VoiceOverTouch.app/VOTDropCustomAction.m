@interface VOTDropCustomAction
- (BOOL)isEqual:(id)a3;
- (BOOL)performWithContext:(id)a3;
- (VOTDropCustomAction)initWithName:(id)a3 wireDictionary:(id)a4;
- (unint64_t)hash;
@end

@implementation VOTDropCustomAction

- (VOTDropCustomAction)initWithName:(id)a3 wireDictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = VOTDropCustomAction;
  v8 = [(VOTDropCustomAction *)&v19 init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [v7 objectForKeyedSubscript:AXInteractionLocationDescriptorPointValueKey];

    if (AXValueGetType(v11) != kAXValueTypeCGPoint)
    {
      AXValueGetType(v11);
      _AXAssert();
    }

    AXValueGetValue(v11, kAXValueTypeCGPoint, &v8->_point);
    v12 = [v7 objectForKeyedSubscript:AXInteractionLocationDescriptorViewPointerNumberKey];
    v13 = [v12 copy];
    viewPointerNumber = v8->_viewPointerNumber;
    v8->_viewPointerNumber = v13;

    v15 = [v7 objectForKeyedSubscript:AXInteractionLocationDescriptorContextSpacePointKey];

    if (AXValueGetType(v15) != kAXValueTypeCGPoint)
    {
      AXValueGetType(v15);
      _AXAssert();
    }

    AXValueGetValue(v15, kAXValueTypeCGPoint, &v8->_contextSpacePoint);
    v16 = [v7 objectForKeyedSubscript:AXInteractionLocationDescriptorContextIDKey];
    v8->_contextID = [v16 unsignedIntValue];

    v17 = [v7 objectForKeyedSubscript:AXInteractionLocationDescriptorFixedScreenSpacePointKey];

    if (AXValueGetType(v17) != kAXValueTypeCGPoint)
    {
      AXValueGetType(v17);
      _AXAssert();
    }

    AXValueGetValue(v17, kAXValueTypeCGPoint, &v8->_fixedSpaceScreenPoint);
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7 = [v4 isMemberOfClass:objc_opt_class()] && -[NSString isEqual:](self->_name, "isEqual:", *(v4 + 13)) && (self->_point.x == *(v4 + 14) ? (v5 = self->_point.y == *(v4 + 15)) : (v5 = 0), v5 && -[NSNumber isEqual:](self->_viewPointerNumber, "isEqual:", *(v4 + 16)) && (self->_contextSpacePoint.x == *(v4 + 17) ? (v6 = self->_contextSpacePoint.y == *(v4 + 18)) : (v6 = 0), v6)) && self->_contextID == *(v4 + 38);

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash]^ self->_point.x;
  y = self->_point.y;
  return v3 ^ y ^ [(NSNumber *)self->_viewPointerNumber hash];
}

- (BOOL)performWithContext:(id)a3
{
  v3 = a3;
  v4 = [v3 dragSessionActive];
  if (v4)
  {
    [v3 dropDrag];
  }

  return v4;
}

@end