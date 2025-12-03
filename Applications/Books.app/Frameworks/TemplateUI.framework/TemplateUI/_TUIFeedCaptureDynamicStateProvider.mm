@interface _TUIFeedCaptureDynamicStateProvider
+ (id)imageResourceProviderWithURL:(id)l;
- (_TUIFeedCaptureDynamicStateProvider)initWithKind:(id)kind instancesMap:(id)map;
- (id)dynamicStateForKind:(id)kind instance:(id)instance parameters:(id)parameters;
@end

@implementation _TUIFeedCaptureDynamicStateProvider

+ (id)imageResourceProviderWithURL:(id)l
{
  lCopy = l;
  pathExtension = [lCopy pathExtension];
  v6 = [pathExtension isEqualToString:@"json"];

  if (v6)
  {
    selfCopy = self;
    uRLByDeletingPathExtension = [lCopy URLByDeletingPathExtension];
    lastPathComponent = [uRLByDeletingPathExtension lastPathComponent];

    v8 = objc_opt_class();
    v34 = lCopy;
    v9 = [NSData dataWithContentsOfURL:lCopy];
    v10 = [NSJSONSerialization JSONObjectWithData:v9 options:0 error:0];
    v11 = TUIDynamicCast(v8, v10);

    v12 = objc_opt_class();
    v31 = v11;
    v13 = [v11 objectForKeyedSubscript:@"instances"];
    v14 = TUIDynamicCast(v12, v13);

    v36 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v14, "count")}];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v14;
    v15 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v38;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v38 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v37 + 1) + 8 * i);
          v20 = objc_opt_class();
          v21 = TUIDynamicCast(v20, v19);
          v22 = [v21 objectForKeyedSubscript:@"instance"];
          v23 = [v21 objectForKeyedSubscript:@"parameters"];
          v24 = objc_opt_class();
          v25 = [v21 objectForKeyedSubscript:@"value"];
          v26 = TUIDynamicCast(v24, v25);

          if (v22)
          {
            v27 = [[_TUIFeedCaptureInstanceKey alloc] initWithInstance:v22 options:v23];
            v28 = [[TUIDynamicValue alloc] initWithValue:v26];
            [v36 setObject:v28 forKeyedSubscript:v27];
          }
        }

        v16 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v16);
    }

    v29 = [[selfCopy alloc] initWithKind:lastPathComponent instancesMap:v36];
    lCopy = v34;
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (_TUIFeedCaptureDynamicStateProvider)initWithKind:(id)kind instancesMap:(id)map
{
  kindCopy = kind;
  mapCopy = map;
  v12.receiver = self;
  v12.super_class = _TUIFeedCaptureDynamicStateProvider;
  v9 = [(_TUIFeedCaptureDynamicStateProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_kind, kind);
    objc_storeStrong(&v10->_instanceMap, map);
  }

  return v10;
}

- (id)dynamicStateForKind:(id)kind instance:(id)instance parameters:(id)parameters
{
  instanceCopy = instance;
  parametersCopy = parameters;
  if ([kind isEqualToString:self->_kind])
  {
    instanceMap = self->_instanceMap;
    v11 = [[_TUIFeedCaptureInstanceKey alloc] initWithInstance:instanceCopy options:parametersCopy];
    v12 = [(NSDictionary *)instanceMap objectForKeyedSubscript:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end