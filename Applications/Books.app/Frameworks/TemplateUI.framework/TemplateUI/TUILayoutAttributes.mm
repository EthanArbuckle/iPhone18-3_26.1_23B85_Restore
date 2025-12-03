@interface TUILayoutAttributes
+ (id)newLayoutAttributesWithIndexPath:(id)path;
- (BOOL)isEqual:(id)equal;
- (CGAffineTransform)transform;
- (CGPoint)center;
- (CGRect)bounds;
- (CGRect)frame;
- (CGSize)size;
- (TUILayoutAttributes)init;
- (TUILayoutAttributes)initWithOther:(id)other;
- (UIEdgeInsets)outsets;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)setBounds:(CGRect)bounds;
- (void)setCenter:(CGPoint)center;
- (void)setSize:(CGSize)size;
- (void)setTransform:(CGAffineTransform *)transform;
@end

@implementation TUILayoutAttributes

+ (id)newLayoutAttributesWithIndexPath:(id)path
{
  pathCopy = path;
  v4 = objc_alloc_init(TUILayoutAttributes);
  [(TUILayoutAttributes *)v4 setIndexPath:pathCopy];

  return v4;
}

- (TUILayoutAttributes)init
{
  v6.receiver = self;
  v6.super_class = TUILayoutAttributes;
  result = [(TUILayoutAttributes *)&v6 init];
  if (result)
  {
    size = CGRectNull.size;
    result->_frame.origin = CGRectNull.origin;
    result->_frame.size = size;
    v4 = CGRectZero.size;
    result->_bounds.origin = CGRectZero.origin;
    result->_bounds.size = v4;
    result->_center = CGPointZero;
    v5 = *&UIEdgeInsetsZero.top;
    *&result->_outsets.bottom = *&UIEdgeInsetsZero.bottom;
    result->_alpha = 1.0;
    result->_zIndex = 0;
    *&result->_outsets.top = v5;
  }

  return result;
}

- (TUILayoutAttributes)initWithOther:(id)other
{
  otherCopy = other;
  v13.receiver = self;
  v13.super_class = TUILayoutAttributes;
  v5 = [(TUILayoutAttributes *)&v13 init];
  v6 = v5;
  if (v5)
  {
    v7 = *(otherCopy + 8);
    *(v5 + 24) = *(otherCopy + 24);
    *(v5 + 8) = v7;
    v8 = *(otherCopy + 120);
    *(v5 + 136) = *(otherCopy + 136);
    *(v5 + 120) = v8;
    *(v5 + 7) = *(otherCopy + 7);
    *(v5 + 6) = *(otherCopy + 6);
    v9 = *(otherCopy + 184);
    v10 = *(otherCopy + 200);
    *(v5 + 216) = *(otherCopy + 216);
    *(v5 + 200) = v10;
    *(v5 + 184) = v9;
    *(v5 + 104) = *(otherCopy + 104);
    v5[40] = otherCopy[40];
    objc_storeStrong(v5 + 8, *(otherCopy + 8));
    objc_storeStrong(v6 + 9, *(otherCopy + 9));
    objc_storeStrong(v6 + 10, *(otherCopy + 10));
    objc_storeStrong(v6 + 11, *(otherCopy + 11));
    objc_storeStrong(v6 + 12, *(otherCopy + 12));
    v11 = *(otherCopy + 152);
    *(v6 + 168) = *(otherCopy + 168);
    *(v6 + 152) = v11;
    v6[41] = otherCopy[41];
  }

  return v6;
}

- (void)setSize:(CGSize)size
{
  if (self->_bounds.size.width != size.width || self->_bounds.size.height != size.height)
  {
    self->_bounds.size = size;
    size = CGRectNull.size;
    self->_frame.origin = CGRectNull.origin;
    self->_frame.size = size;
  }
}

- (CGSize)size
{
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if (!CGRectEqualToRect(self->_bounds, bounds))
  {
    self->_bounds.origin.x = x;
    self->_bounds.origin.y = y;
    self->_bounds.size.width = width;
    self->_bounds.size.height = height;
    size = CGRectNull.size;
    self->_frame.origin = CGRectNull.origin;
    self->_frame.size = size;
  }
}

- (void)setCenter:(CGPoint)center
{
  if (self->_center.x != center.x || self->_center.y != center.y)
  {
    self->_center = center;
    size = CGRectNull.size;
    self->_frame.origin = CGRectNull.origin;
    self->_frame.size = size;
  }
}

- (void)setTransform:(CGAffineTransform *)transform
{
  v5 = *&self->_transform.c;
  *&t1.a = *&self->_transform.a;
  *&t1.c = v5;
  *&t1.tx = *&self->_transform.tx;
  v6 = *&transform->c;
  *&v10.a = *&transform->a;
  *&v10.c = v6;
  *&v10.tx = *&transform->tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v10))
  {
    v7 = *&transform->a;
    v8 = *&transform->c;
    *&self->_transform.tx = *&transform->tx;
    *&self->_transform.c = v8;
    *&self->_transform.a = v7;
    size = CGRectNull.size;
    self->_frame.origin = CGRectNull.origin;
    self->_frame.size = size;
  }
}

- (CGRect)frame
{
  if (CGRectIsNull(self->_frame))
  {
    y = CGPointZero.y;
    width = self->_bounds.size.width;
    height = self->_bounds.size.height;
    memset(&v10, 0, sizeof(v10));
    CGAffineTransformMakeTranslation(&v10, width * -0.5, height * -0.5);
    t1 = v10;
    v6 = *&self->_transform.c;
    *&v7.a = *&self->_transform.a;
    *&v7.c = v6;
    *&v7.tx = *&self->_transform.tx;
    CGAffineTransformConcat(&v9, &t1, &v7);
    v10 = v9;
    CGAffineTransformMakeTranslation(&t1, self->_center.x, self->_center.y);
    v7 = v10;
    CGAffineTransformConcat(&v9, &v7, &t1);
    v10 = v9;
    v11.origin.x = CGPointZero.x;
    v11.origin.y = y;
    v11.size.width = width;
    v11.size.height = height;
    result = CGRectApplyAffineTransform(v11, &v9);
    self->_frame = result;
  }

  else
  {
    return self->_frame;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TUILayoutAttributes allocWithZone:zone];

  return [(TUILayoutAttributes *)v4 initWithOther:self];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (!CGRectEqualToRect(self->_bounds, *(equalCopy + 120)))
  {
    goto LABEL_12;
  }

  v5 = *&self->_transform.c;
  *&t1.a = *&self->_transform.a;
  *&t1.c = v5;
  *&t1.tx = *&self->_transform.tx;
  v6 = *(equalCopy + 200);
  *&v12.a = *(equalCopy + 184);
  *&v12.c = v6;
  *&v12.tx = *(equalCopy + 216);
  if (!CGAffineTransformEqualToTransform(&t1, &v12))
  {
    goto LABEL_12;
  }

  v7 = 0;
  if (self->_center.x == *(equalCopy + 13) && self->_center.y == *(equalCopy + 14))
  {
    if (self->_alpha == *(equalCopy + 6) && self->_zIndex == *(equalCopy + 7) && self->_hidden == equalCopy[40] && self->_forceVisibleOnHover == equalCopy[41])
    {
      if ([(NSIndexPath *)self->_indexPath isEqual:*(equalCopy + 8)])
      {
        if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_outsets.top, *(equalCopy + 152)), vceqq_f64(*&self->_outsets.bottom, *(equalCopy + 168))))))
        {
          renderModel = self->_renderModel;
          if (renderModel == *(equalCopy + 9) || [(TUIRenderModel *)renderModel isEqualToRenderModel:?])
          {
            refId = self->_refId;
            if (refId == *(equalCopy + 11) || [(NSString *)refId isEqualToString:?])
            {
              refInstance = self->_refInstance;
              if (refInstance == *(equalCopy + 12))
              {
                v7 = 1;
              }

              else
              {
                v7 = [(NSString *)refInstance isEqualToString:?];
              }

              goto LABEL_13;
            }
          }
        }
      }
    }

LABEL_12:
    v7 = 0;
  }

LABEL_13:

  return v7;
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableArray);
  [v3 addObject:@"<"];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 addObject:v5];

  v6 = [NSString stringWithFormat:@" %p", self];
  [v3 addObject:v6];

  v42.origin.x = CGRectNull.origin.x;
  v42.origin.y = CGRectNull.origin.y;
  v42.size.width = CGRectNull.size.width;
  v42.size.height = CGRectNull.size.height;
  if (!CGRectEqualToRect(self->_frame, v42))
  {
    v7 = NSStringFromCGRect(self->_frame);
    v8 = [NSString stringWithFormat:@" frame: (%@)", v7];
    [v3 addObject:v8];
  }

  v43.origin.x = CGRectZero.origin.x;
  v43.origin.y = CGRectZero.origin.y;
  v43.size.width = CGRectZero.size.width;
  v43.size.height = CGRectZero.size.height;
  if (!CGRectEqualToRect(self->_bounds, v43))
  {
    v9 = NSStringFromCGRect(self->_bounds);
    v10 = [NSString stringWithFormat:@" bounds: (%@)", v9];
    [v3 addObject:v10];
  }

  if (self->_zIndex)
  {
    v11 = [NSNumber numberWithInteger:?];
    v12 = [NSString stringWithFormat:@" zIndex: (%@)", v11];
    [v3 addObject:v12];
  }

  if (fabs(self->_alpha + -1.0) >= 2.22044605e-16)
  {
    v13 = [NSNumber numberWithDouble:?];
    v14 = [NSString stringWithFormat:@" alpha: (%@)", v13];
    [v3 addObject:v14];
  }

  v15 = *&self->_transform.c;
  *&transform.a = *&self->_transform.a;
  *&transform.c = v15;
  *&transform.tx = *&self->_transform.tx;
  if (!CGAffineTransformIsIdentity(&transform))
  {
    v16 = *&self->_transform.c;
    *&transform.a = *&self->_transform.a;
    *&transform.c = v16;
    *&transform.tx = *&self->_transform.tx;
    v17 = NSStringFromCGAffineTransform(&transform);
    v18 = [NSString stringWithFormat:@" transform: (%@)", v17];
    [v3 addObject:v18];
  }

  x = self->_center.x;
  y = self->_center.y;
  if (x != CGPointZero.x || y != CGPointZero.y)
  {
    v21 = NSStringFromCGPoint(*&x);
    v22 = [NSString stringWithFormat:@" center: (%@)", v21];
    [v3 addObject:v22];
  }

  if (self->_hidden)
  {
    v23 = [NSNumber numberWithBool:1];
    v24 = [NSString stringWithFormat:@" hidden: (%@)", v23];
    [v3 addObject:v24];
  }

  if (self->_forceVisibleOnHover)
  {
    v25 = [NSNumber numberWithBool:1];
    v26 = [NSString stringWithFormat:@" forceVisibleOnHover: (%@)", v25];
    [v3 addObject:v26];
  }

  v27 = [NSString stringWithFormat:@" index path: (%@)", self->_indexPath];
  [v3 addObject:v27];

  v28 = [NSString stringWithFormat:@" render model: (%p)", self->_renderModel];
  [v3 addObject:v28];

  if (self->_generic)
  {
    v29 = [NSString stringWithFormat:@" generic: (%p)", self->_generic];
    [v3 addObject:v29];
  }

  if ([(NSString *)self->_refId length])
  {
    v30 = [NSString stringWithFormat:@" ref id: (%@)", self->_refId];
    [v3 addObject:v30];
  }

  if ([(NSString *)self->_refInstance length])
  {
    v31 = [NSString stringWithFormat:@" ref instance: (%@)", self->_refInstance];
    [v3 addObject:v31];
  }

  v32 = *&self->_outsets.top;
  v33 = *&self->_outsets.bottom;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v32, *&UIEdgeInsetsZero.top), vceqq_f64(v33, *&UIEdgeInsetsZero.bottom)))) & 1) == 0)
  {
    left = self->_outsets.left;
    right = self->_outsets.right;
    v36 = NSStringFromUIEdgeInsets(*v32.f64);
    v37 = [NSString stringWithFormat:@" outsets: (%@)", v36];
    [v3 addObject:v37];
  }

  [v3 addObject:@">"];
  v38 = [v3 componentsJoinedByString:&stru_264550];

  return v38;
}

- (CGPoint)center
{
  x = self->_center.x;
  y = self->_center.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGAffineTransform)transform
{
  v3 = *&self[4].b;
  *&retstr->a = *&self[3].ty;
  *&retstr->c = v3;
  *&retstr->tx = *&self[4].d;
  return self;
}

- (UIEdgeInsets)outsets
{
  top = self->_outsets.top;
  left = self->_outsets.left;
  bottom = self->_outsets.bottom;
  right = self->_outsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end