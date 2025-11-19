@interface VOTDragCustomAction
- (BOOL)isEqual:(id)a3;
- (BOOL)performWithContext:(id)a3;
- (VOTDragCustomAction)initWithName:(id)a3 wireDictionary:(id)a4;
- (unint64_t)hash;
- (void)setRemotePoint:(CGPoint)a3;
@end

@implementation VOTDragCustomAction

- (VOTDragCustomAction)initWithName:(id)a3 wireDictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = VOTDragCustomAction;
  v8 = [(VOTDragCustomAction *)&v16 init];
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
    remoteElement = v8->_remoteElement;
    v8->_remoteElement = 0;

    v13 = [v7 copy];
    wireDictionary = v8->_wireDictionary;
    v8->_wireDictionary = v13;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && -[NSString isEqual:](self->_name, "isEqual:", v4[13]) && (self->_point.x == *(v4 + 14) ? (v5 = self->_point.y == *(v4 + 15)) : (v5 = 0), v5))
  {
    v6 = [(NSDictionary *)self->_wireDictionary isEqual:v4[17]];
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

- (void)setRemotePoint:(CGPoint)a3
{
  v7 = a3;
  self->_point = a3;
  v4 = [(NSDictionary *)self->_wireDictionary mutableCopy];
  v5 = AXValueCreate(kAXValueTypeCGPoint, &v7);
  [(NSDictionary *)v4 setObject:v5 forKeyedSubscript:AXInteractionLocationDescriptorPointValueKey];

  wireDictionary = self->_wireDictionary;
  self->_wireDictionary = v4;
}

- (BOOL)performWithContext:(id)a3
{
  v4 = a3;
  v5 = v4;
  remoteElement = self->_remoteElement;
  if (remoteElement)
  {
    v7 = remoteElement;
  }

  else
  {
    v7 = [v4 actionElement];
  }

  v8 = v7;
  v9 = [(VOTElement *)v7 pid];
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