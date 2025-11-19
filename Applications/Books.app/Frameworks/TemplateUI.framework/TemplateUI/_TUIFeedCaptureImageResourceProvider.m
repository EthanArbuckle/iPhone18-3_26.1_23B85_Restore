@interface _TUIFeedCaptureImageResourceProvider
+ (id)imageResourceProviderWithURL:(id)a3;
- (_TUIFeedCaptureImageResourceProvider)initWithKind:(id)a3 instancesMap:(id)a4;
- (id)imageResourceForNaturalSize:(CGSize)a3 contentsScale:(double)a4 instance:(id)a5 options:(id)a6;
- (id)intrinsicImageResourceForInstance:(id)a3 options:(id)a4;
@end

@implementation _TUIFeedCaptureImageResourceProvider

+ (id)imageResourceProviderWithURL:(id)a3
{
  v4 = a3;
  v5 = [v4 pathExtension];
  v6 = [v5 isEqualToString:@"json"];

  if (v6)
  {
    v30 = a1;
    v7 = [v4 URLByDeletingPathExtension];
    v29 = [v7 lastPathComponent];

    v8 = objc_opt_class();
    v31 = v4;
    v9 = [NSData dataWithContentsOfURL:v4];
    v10 = [NSJSONSerialization JSONObjectWithData:v9 options:0 error:0];
    v11 = TUIDynamicCast(v8, v10);

    v12 = objc_opt_class();
    v28 = v11;
    v13 = [v11 objectForKeyedSubscript:@"instances"];
    v14 = TUIDynamicCast(v12, v13);

    v33 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v14, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v14;
    v15 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v35;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v35 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v34 + 1) + 8 * i);
          v20 = objc_opt_class();
          v21 = TUIDynamicCast(v20, v19);
          v22 = [v21 objectForKeyedSubscript:@"instance"];
          v23 = [v21 objectForKeyedSubscript:@"options"];
          if (v22)
          {
            v24 = [[_TUIFeedCaptureInstanceKey alloc] initWithInstance:v22 options:v23];
            v25 = [[_TUIFeedCaptureImageResourceInstance alloc] initWithDictionary:v21];
            [v33 setObject:v25 forKeyedSubscript:v24];
          }
        }

        v16 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v16);
    }

    v26 = [[v30 alloc] initWithKind:v29 instancesMap:v33];
    v4 = v31;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (_TUIFeedCaptureImageResourceProvider)initWithKind:(id)a3 instancesMap:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _TUIFeedCaptureImageResourceProvider;
  v9 = [(_TUIFeedCaptureImageResourceProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_kind, a3);
    objc_storeStrong(&v10->_instancesMap, a4);
  }

  return v10;
}

- (id)imageResourceForNaturalSize:(CGSize)a3 contentsScale:(double)a4 instance:(id)a5 options:(id)a6
{
  v8 = a6;
  v9 = a5;
  v10 = [[_TUIFeedCaptureInstanceKey alloc] initWithInstance:v9 options:v8];

  v11 = [(NSDictionary *)self->_instancesMap objectForKeyedSubscript:v10];

  return v11;
}

- (id)intrinsicImageResourceForInstance:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[_TUIFeedCaptureInstanceKey alloc] initWithInstance:v7 options:v6];

  v9 = [(NSDictionary *)self->_instancesMap objectForKeyedSubscript:v8];

  return v9;
}

@end