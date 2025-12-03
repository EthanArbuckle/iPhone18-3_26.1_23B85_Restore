@interface VOTDragCustomAction
- (BOOL)isEqual:(id)equal;
- (BOOL)performWithContext:(id)context;
- (VOTDragCustomAction)initWithName:(id)name wireDictionary:(id)dictionary;
- (unint64_t)hash;
- (void)setRemotePoint:(CGPoint)point;
@end

@implementation VOTDragCustomAction

- (VOTDragCustomAction)initWithName:(id)name wireDictionary:(id)dictionary
{
  nameCopy = name;
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = VOTDragCustomAction;
  v8 = [(VOTDragCustomAction *)&v16 init];
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
    remoteElement = v8->_remoteElement;
    v8->_remoteElement = 0;

    v13 = [dictionaryCopy copy];
    wireDictionary = v8->_wireDictionary;
    v8->_wireDictionary = v13;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && -[NSString isEqual:](self->_name, "isEqual:", equalCopy[13]) && (self->_point.x == *(equalCopy + 14) ? (v5 = self->_point.y == *(equalCopy + 15)) : (v5 = 0), v5))
  {
    v6 = [(NSDictionary *)self->_wireDictionary isEqual:equalCopy[17]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash]^ self->_point.x;
  y = self->_point.y;
  return v3 ^ y ^ [(NSDictionary *)self->_wireDictionary hash];
}

- (void)setRemotePoint:(CGPoint)point
{
  pointCopy = point;
  self->_point = point;
  v4 = [(NSDictionary *)self->_wireDictionary mutableCopy];
  v5 = AXValueCreate(kAXValueTypeCGPoint, &pointCopy);
  [(NSDictionary *)v4 setObject:v5 forKeyedSubscript:AXInteractionLocationDescriptorPointValueKey];

  wireDictionary = self->_wireDictionary;
  self->_wireDictionary = v4;
}

- (BOOL)performWithContext:(id)context
{
  contextCopy = context;
  v5 = contextCopy;
  remoteElement = self->_remoteElement;
  if (remoteElement)
  {
    actionElement = remoteElement;
  }

  else
  {
    actionElement = [contextCopy actionElement];
  }

  v8 = actionElement;
  v9 = [(VOTElement *)actionElement pid];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1000FAC00;
  v16 = &unk_1001C99F0;
  v18 = &v19;
  v10 = dispatch_semaphore_create(0);
  v17 = v10;
  [v5 waitForDragStartFromPid:v9 completionHandler:&v13];
  v11 = [(VOTElement *)v8 activateDragWithDescriptorDictionary:self->_wireDictionary, v13, v14, v15, v16];
  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  if (v11)
  {
    LOBYTE(v11) = *(v20 + 24);
  }

  _Block_object_dispose(&v19, 8);
  return v11 & 1;
}

@end