@interface _TUIlHostingRenderModel
- (BOOL)isEqualToRenderModel:(id)model;
- (CGPoint)anchorPoint;
- (CGSize)requestedSize;
- (UIEdgeInsets)insets;
- (_TUIlHostingRenderModel)initWithIdentifier:(id)identifier size:(CGSize)size requestedSize:(CGSize)requestedSize usingGeometry:(BOOL)geometry insets:(UIEdgeInsets)insets hostingIdentifier:(id)hostingIdentifier hostingProperties:(id)properties anchorPoint:(CGPoint)self0;
@end

@implementation _TUIlHostingRenderModel

- (_TUIlHostingRenderModel)initWithIdentifier:(id)identifier size:(CGSize)size requestedSize:(CGSize)requestedSize usingGeometry:(BOOL)geometry insets:(UIEdgeInsets)insets hostingIdentifier:(id)hostingIdentifier hostingProperties:(id)properties anchorPoint:(CGPoint)self0
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  height = requestedSize.height;
  width = requestedSize.width;
  v18 = size.height;
  v19 = size.width;
  hostingIdentifierCopy = hostingIdentifier;
  v26.receiver = self;
  v26.super_class = _TUIlHostingRenderModel;
  v23 = [(TUIRenderModelView *)&v26 initWithReuseIdentifier:@"TUIReuseIdentifierHostingView" identifier:identifier submodel:0];
  v24 = v23;
  if (v23)
  {
    v23->_requestedSize.width = width;
    v23->_requestedSize.height = height;
    v23->_usingGeometry = geometry;
    objc_storeStrong(&v23->_hostingIdentifier, hostingIdentifier);
    v24->_anchorPoint.x = v27;
    v24->_anchorPoint.y = v28;
    v24->_insets.top = top;
    v24->_insets.left = left;
    v24->_insets.bottom = bottom;
    v24->_insets.right = right;
    [(TUIRenderModelView *)v24 setSize:v19, v18];
  }

  return v24;
}

- (BOOL)isEqualToRenderModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    if (v5 == v6)
    {
      v7 = modelCopy;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    if (v5 == v6 && (v14.receiver = self, v14.super_class = _TUIlHostingRenderModel, [(TUIRenderModelView *)&v14 isEqualToRenderModel:modelCopy]) && (self->_requestedSize.width == *(modelCopy + 11) ? (v9 = self->_requestedSize.height == *(modelCopy + 12)) : (v9 = 0), v9 && self->_usingGeometry == modelCopy[64] && (self->_anchorPoint.x == *(modelCopy + 13) ? (v10 = self->_anchorPoint.y == *(modelCopy + 14)) : (v10 = 0), v10 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_insets.top, *(modelCopy + 120)), vceqq_f64(*&self->_insets.bottom, *(modelCopy + 136))))) & 1) != 0)))
    {
      hostingIdentifier = self->_hostingIdentifier;
      if (hostingIdentifier == *(modelCopy + 9))
      {
        v11 = 1;
      }

      else
      {
        v11 = [(TUIHostingIdentifier *)hostingIdentifier isEqual:?];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CGSize)requestedSize
{
  width = self->_requestedSize.width;
  height = self->_requestedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)insets
{
  top = self->_insets.top;
  left = self->_insets.left;
  bottom = self->_insets.bottom;
  right = self->_insets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGPoint)anchorPoint
{
  x = self->_anchorPoint.x;
  y = self->_anchorPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end