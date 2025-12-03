@interface _TUIFeedCaptureImageResourceInstance
- (CGSize)naturalSize;
- (_TUIFeedCaptureImageResourceInstance)initWithDictionary:(id)dictionary;
- (id)imageContentWithOptions:(unint64_t)options;
@end

@implementation _TUIFeedCaptureImageResourceInstance

- (_TUIFeedCaptureImageResourceInstance)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v49.receiver = self;
  v49.super_class = _TUIFeedCaptureImageResourceInstance;
  v5 = [(_TUIFeedCaptureImageResourceInstance *)&v49 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"intrinsicSize"];
    v7 = objc_opt_class();
    v8 = TUIDynamicCast(v7, v6);
    v9 = objc_opt_class();
    v10 = [v8 objectForKeyedSubscript:@"width"];
    v11 = TUIDynamicCast(v9, v10);
    [v11 doubleValue];
    v13 = v12;

    v14 = objc_opt_class();
    v15 = [v8 objectForKeyedSubscript:@"height"];
    v16 = TUIDynamicCast(v14, v15);
    [v16 doubleValue];
    v18 = v17;

    v5->_intrinsicSize.width = v13;
    v5->_intrinsicSize.height = v18;

    v19 = [dictionaryCopy objectForKeyedSubscript:@"insets"];
    v20 = objc_opt_class();
    v21 = TUIDynamicCast(v20, v19);
    v22 = objc_opt_class();
    v23 = [v21 objectForKeyedSubscript:@"top"];
    v24 = TUIDynamicCast(v22, v23);
    [v24 doubleValue];
    v26 = v25;

    v27 = objc_opt_class();
    v28 = [v21 objectForKeyedSubscript:@"left"];
    v29 = TUIDynamicCast(v27, v28);
    [v29 doubleValue];
    v31 = v30;

    v32 = objc_opt_class();
    v33 = [v21 objectForKeyedSubscript:@"bottom"];
    v34 = TUIDynamicCast(v32, v33);
    [v34 doubleValue];
    v36 = v35;

    v37 = objc_opt_class();
    v38 = [v21 objectForKeyedSubscript:@"right"];
    v39 = TUIDynamicCast(v37, v38);
    [v39 doubleValue];
    v41 = v40;

    v5->_insets.top = v26;
    v5->_insets.left = v31;
    v5->_insets.bottom = v36;
    v5->_insets.right = v41;

    v42 = +[NSUUID UUID];
    uUIDString = [v42 UUIDString];

    v44 = [[TUIImageResourceCacheKey alloc] initWithID:uUIDString];
    unsizedKey = v5->_unsizedKey;
    v5->_unsizedKey = v44;

    v46 = [(TUIImageResourceCacheKey *)v5->_unsizedKey cacheKeyWithSize:v5->_intrinsicSize.width, v5->_intrinsicSize.height];
    sizedKey = v5->_sizedKey;
    v5->_sizedKey = v46;
  }

  return v5;
}

- (id)imageContentWithOptions:(unint64_t)options
{
  if ((options & 2) != 0)
  {
    v4 = [[TUIImageContent alloc] initWithIntrinsicSize:0 flags:self->_intrinsicSize.width, self->_intrinsicSize.height];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CGSize)naturalSize
{
  width = self->_intrinsicSize.width;
  height = self->_intrinsicSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end