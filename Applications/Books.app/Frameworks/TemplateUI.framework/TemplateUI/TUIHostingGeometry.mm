@interface TUIHostingGeometry
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToGeometry:(id)geometry;
- (CGSize)layoutSize;
- (CGSize)requestedSize;
- (TUIHostingGeometry)initWithRequestedSize:(CGSize)size layoutSize:(CGSize)layoutSize erasableInsets:(UIEdgeInsets)insets;
- (UIEdgeInsets)erasableInsets;
- (id)description;
@end

@implementation TUIHostingGeometry

- (TUIHostingGeometry)initWithRequestedSize:(CGSize)size layoutSize:(CGSize)layoutSize erasableInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  height = layoutSize.height;
  width = layoutSize.width;
  v11 = size.height;
  v12 = size.width;
  v14.receiver = self;
  v14.super_class = TUIHostingGeometry;
  result = [(TUIHostingGeometry *)&v14 init];
  if (result)
  {
    result->_requestedSize.width = v12;
    result->_requestedSize.height = v11;
    result->_layoutSize.width = width;
    result->_layoutSize.height = height;
    result->_erasableInsets.top = top;
    result->_erasableInsets.left = left;
    result->_erasableInsets.bottom = bottom;
    result->_erasableInsets.right = right;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 != objc_opt_class() || equalCopy == 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(TUIHostingGeometry *)self isEqualToGeometry:equalCopy];
  }

  return v7;
}

- (BOOL)isEqualToGeometry:(id)geometry
{
  geometryCopy = geometry;
  [geometryCopy requestedSize];
  v7 = self->_requestedSize.width == v6 && self->_requestedSize.height == v5;
  if (v7 && (([geometryCopy layoutSize], self->_layoutSize.width == v9) ? (v10 = self->_layoutSize.height == v8) : (v10 = 0), v10))
  {
    [geometryCopy erasableInsets];
    v13.f64[1] = v12;
    v15.f64[1] = v14;
    v11 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_erasableInsets.top, v13), vceqq_f64(*&self->_erasableInsets.bottom, v15))));
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromCGSize(self->_requestedSize);
  v6 = NSStringFromCGSize(self->_layoutSize);
  v7 = NSStringFromUIEdgeInsets(self->_erasableInsets);
  v8 = [NSString stringWithFormat:@"<%@ %p requestedSize=%@ layoutSize=%@ erasableInsets=%@>", v4, self, v5, v6, v7];

  return v8;
}

- (CGSize)requestedSize
{
  width = self->_requestedSize.width;
  height = self->_requestedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)layoutSize
{
  width = self->_layoutSize.width;
  height = self->_layoutSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)erasableInsets
{
  top = self->_erasableInsets.top;
  left = self->_erasableInsets.left;
  bottom = self->_erasableInsets.bottom;
  right = self->_erasableInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end