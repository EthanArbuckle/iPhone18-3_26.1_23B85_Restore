@interface _TUIFeedCaptureImageResource
- (BOOL)isEqual:(id)equal;
- (CGSize)naturalSize;
- (_TUIFeedCaptureImageResource)initWithResource:(id)resource kind:(id)kind instance:(id)instance options:(id)options;
- (_TUIFeedCaptureImageResource)initWithResource:(id)resource kind:(id)kind naturalSize:(CGSize)size contentsScale:(double)scale instance:(id)instance options:(id)options;
- (unint64_t)hash;
@end

@implementation _TUIFeedCaptureImageResource

- (_TUIFeedCaptureImageResource)initWithResource:(id)resource kind:(id)kind naturalSize:(CGSize)size contentsScale:(double)scale instance:(id)instance options:(id)options
{
  height = size.height;
  width = size.width;
  resourceCopy = resource;
  kindCopy = kind;
  instanceCopy = instance;
  optionsCopy = options;
  v23.receiver = self;
  v23.super_class = _TUIFeedCaptureImageResource;
  v20 = [(_TUIFeedCaptureImageResource *)&v23 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_resource, resource);
    objc_storeStrong(&v21->_kind, kind);
    v21->_naturalSize.width = width;
    v21->_naturalSize.height = height;
    v21->_contentsScale = scale;
    objc_storeStrong(&v21->_instance, instance);
    objc_storeStrong(&v21->_options, options);
    v21->_intrinsic = 0;
  }

  return v21;
}

- (_TUIFeedCaptureImageResource)initWithResource:(id)resource kind:(id)kind instance:(id)instance options:(id)options
{
  resourceCopy = resource;
  kindCopy = kind;
  instanceCopy = instance;
  optionsCopy = options;
  v18.receiver = self;
  v18.super_class = _TUIFeedCaptureImageResource;
  v15 = [(_TUIFeedCaptureImageResource *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_resource, resource);
    objc_storeStrong(&v16->_kind, kind);
    v16->_naturalSize = CGSizeZero;
    v16->_contentsScale = 1.0;
    objc_storeStrong(&v16->_instance, instance);
    objc_storeStrong(&v16->_options, options);
    v16->_intrinsic = 1;
  }

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, equalCopy);

  if (v6 && ((kind = self->_kind, kind == v6[3]) || [(NSString *)kind isEqualToString:?]) && ((instance = self->_instance, instance == v6[5]) || [instance isEqual:?]))
  {
    options = self->_options;
    if (options == v6[6])
    {
      v10 = 1;
    }

    else
    {
      v10 = [options isEqual:?];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_kind hash];
  v4 = [self->_instance hash]^ v3;
  return v4 ^ [self->_options hash];
}

- (CGSize)naturalSize
{
  width = self->_naturalSize.width;
  height = self->_naturalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end