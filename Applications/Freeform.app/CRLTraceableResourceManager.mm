@interface CRLTraceableResourceManager
+ (id)sharedManager;
- (CRLTraceableResourceManager)init;
- (id)description;
- (id)knownTraceableResources;
- (id)serializationDescription;
- (void)logSerializationAsError;
- (void)registerTraceableResource:(id)resource;
@end

@implementation CRLTraceableResourceManager

+ (id)sharedManager
{
  if (qword_101A35220 != -1)
  {
    sub_1013848B4();
  }

  v3 = qword_101A35218;

  return v3;
}

- (CRLTraceableResourceManager)init
{
  v9.receiver = self;
  v9.super_class = CRLTraceableResourceManager;
  v2 = [(CRLTraceableResourceManager *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("CRLTraceableResourceManager", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = [[NSHashTable alloc] initWithOptions:517 capacity:0];
    knownTraceableResources = v2->_knownTraceableResources;
    v2->_knownTraceableResources = v6;
  }

  return v2;
}

- (void)registerTraceableResource:(id)resource
{
  objc_initWeak(&location, resource);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004D89E8;
  block[3] = &unk_10184CDB8;
  objc_copyWeak(&v6, &location);
  block[4] = self;
  dispatch_async(queue, block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (id)knownTraceableResources
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1004D727C;
  v10 = sub_1004D728C;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1004D8B38;
  v5[3] = &unk_101839FF8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)logSerializationAsError
{
  knownTraceableResources = [(CRLTraceableResourceManager *)self knownTraceableResources];
  v3 = [knownTraceableResources count];
  if (qword_101AD5A08 != -1)
  {
    sub_1013848C8();
  }

  v4 = off_1019EDA60;
  if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
  {
    sub_1013848DC(v3, v4);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = knownTraceableResources;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * i) logSerializationAsErrorWithPrefix:{@"  ", v11}];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (qword_101AD5A08 != -1)
  {
    sub_101384954();
  }

  v10 = off_1019EDA60;
  if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
  {
    sub_10138497C(v3, v10);
  }
}

- (id)serializationDescription
{
  knownTraceableResources = [(CRLTraceableResourceManager *)self knownTraceableResources];
  v3 = objc_opt_new();
  [v3 appendFormat:@"%tu traceable resource(s)\n", objc_msgSend(knownTraceableResources, "count")];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = knownTraceableResources;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    do
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v7 = v10 + 1;
        [v3 appendFormat:@"\n[%tu] %@\n", v10, *(*(&v12 + 1) + 8 * v9), v12];
        v9 = v9 + 1;
        ++v10;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  serializationDescription = [(CRLTraceableResourceManager *)self serializationDescription];
  v6 = [NSString stringWithFormat:@"<%@: %p>\n%@", v4, self, serializationDescription];

  return v6;
}

@end