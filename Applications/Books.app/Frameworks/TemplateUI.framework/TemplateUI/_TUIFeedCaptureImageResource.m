@interface _TUIFeedCaptureImageResource
- (BOOL)isEqual:(id)a3;
- (CGSize)naturalSize;
- (_TUIFeedCaptureImageResource)initWithResource:(id)a3 kind:(id)a4 instance:(id)a5 options:(id)a6;
- (_TUIFeedCaptureImageResource)initWithResource:(id)a3 kind:(id)a4 naturalSize:(CGSize)a5 contentsScale:(double)a6 instance:(id)a7 options:(id)a8;
- (unint64_t)hash;
@end

@implementation _TUIFeedCaptureImageResource

- (_TUIFeedCaptureImageResource)initWithResource:(id)a3 kind:(id)a4 naturalSize:(CGSize)a5 contentsScale:(double)a6 instance:(id)a7 options:(id)a8
{
  height = a5.height;
  width = a5.width;
  v16 = a3;
  v17 = a4;
  v18 = a7;
  v19 = a8;
  v23.receiver = self;
  v23.super_class = _TUIFeedCaptureImageResource;
  v20 = [(_TUIFeedCaptureImageResource *)&v23 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_resource, a3);
    objc_storeStrong(&v21->_kind, a4);
    v21->_naturalSize.width = width;
    v21->_naturalSize.height = height;
    v21->_contentsScale = a6;
    objc_storeStrong(&v21->_instance, a7);
    objc_storeStrong(&v21->_options, a8);
    v21->_intrinsic = 0;
  }

  return v21;
}

- (_TUIFeedCaptureImageResource)initWithResource:(id)a3 kind:(id)a4 instance:(id)a5 options:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = _TUIFeedCaptureImageResource;
  v15 = [(_TUIFeedCaptureImageResource *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_resource, a3);
    objc_storeStrong(&v16->_kind, a4);
    v16->_naturalSize = CGSizeZero;
    v16->_contentsScale = 1.0;
    objc_storeStrong(&v16->_instance, a5);
    objc_storeStrong(&v16->_options, a6);
    v16->_intrinsic = 1;
  }

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, v4);

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