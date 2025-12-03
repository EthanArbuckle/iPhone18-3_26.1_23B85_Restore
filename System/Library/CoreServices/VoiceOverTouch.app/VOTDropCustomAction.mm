@interface VOTDropCustomAction
- (BOOL)isEqual:(id)equal;
- (BOOL)performWithContext:(id)context;
- (VOTDropCustomAction)initWithName:(id)name wireDictionary:(id)dictionary;
- (unint64_t)hash;
@end

@implementation VOTDropCustomAction

- (VOTDropCustomAction)initWithName:(id)name wireDictionary:(id)dictionary
{
  nameCopy = name;
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = VOTDropCustomAction;
  v8 = [(VOTDropCustomAction *)&v19 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [dictionaryCopy objectForKeyedSubscript:AXInteractionLocationDescriptorPointValueKey];

    if (AXValueGetType(v11) != kAXValueTypeCGPoint)
    {
      AXValueGetType(v11);
      _AXAssert();
    }

    AXValueGetValue(v11, kAXValueTypeCGPoint, &v8->_point);
    v12 = [dictionaryCopy objectForKeyedSubscript:AXInteractionLocationDescriptorViewPointerNumberKey];
    v13 = [v12 copy];
    viewPointerNumber = v8->_viewPointerNumber;
    v8->_viewPointerNumber = v13;

    v15 = [dictionaryCopy objectForKeyedSubscript:AXInteractionLocationDescriptorContextSpacePointKey];

    if (AXValueGetType(v15) != kAXValueTypeCGPoint)
    {
      AXValueGetType(v15);
      _AXAssert();
    }

    AXValueGetValue(v15, kAXValueTypeCGPoint, &v8->_contextSpacePoint);
    v16 = [dictionaryCopy objectForKeyedSubscript:AXInteractionLocationDescriptorContextIDKey];
    v8->_contextID = [v16 unsignedIntValue];

    v17 = [dictionaryCopy objectForKeyedSubscript:AXInteractionLocationDescriptorFixedScreenSpacePointKey];

    if (AXValueGetType(v17) != kAXValueTypeCGPoint)
    {
      AXValueGetType(v17);
      _AXAssert();
    }

    AXValueGetValue(v17, kAXValueTypeCGPoint, &v8->_fixedSpaceScreenPoint);
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = [equalCopy isMemberOfClass:objc_opt_class()] && -[NSString isEqual:](self->_name, "isEqual:", *(equalCopy + 13)) && (self->_point.x == *(equalCopy + 14) ? (v5 = self->_point.y == *(equalCopy + 15)) : (v5 = 0), v5 && -[NSNumber isEqual:](self->_viewPointerNumber, "isEqual:", *(equalCopy + 16)) && (self->_contextSpacePoint.x == *(equalCopy + 17) ? (v6 = self->_contextSpacePoint.y == *(equalCopy + 18)) : (v6 = 0), v6)) && self->_contextID == *(equalCopy + 38);

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash]^ self->_point.x;
  y = self->_point.y;
  return v3 ^ y ^ [(NSNumber *)self->_viewPointerNumber hash];
}

- (BOOL)performWithContext:(id)context
{
  contextCopy = context;
  dragSessionActive = [contextCopy dragSessionActive];
  if (dragSessionActive)
  {
    [contextCopy dropDrag];
  }

  return dragSessionActive;
}

@end