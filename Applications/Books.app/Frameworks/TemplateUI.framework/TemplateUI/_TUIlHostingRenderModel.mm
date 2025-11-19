@interface _TUIlHostingRenderModel
- (BOOL)isEqualToRenderModel:(id)a3;
- (CGPoint)anchorPoint;
- (CGSize)requestedSize;
- (UIEdgeInsets)insets;
- (_TUIlHostingRenderModel)initWithIdentifier:(id)a3 size:(CGSize)a4 requestedSize:(CGSize)a5 usingGeometry:(BOOL)a6 insets:(UIEdgeInsets)a7 hostingIdentifier:(id)a8 hostingProperties:(id)a9 anchorPoint:(CGPoint)a10;
@end

@implementation _TUIlHostingRenderModel

- (_TUIlHostingRenderModel)initWithIdentifier:(id)a3 size:(CGSize)a4 requestedSize:(CGSize)a5 usingGeometry:(BOOL)a6 insets:(UIEdgeInsets)a7 hostingIdentifier:(id)a8 hostingProperties:(id)a9 anchorPoint:(CGPoint)a10
{
  right = a7.right;
  bottom = a7.bottom;
  left = a7.left;
  top = a7.top;
  height = a5.height;
  width = a5.width;
  v18 = a4.height;
  v19 = a4.width;
  v22 = a8;
  v26.receiver = self;
  v26.super_class = _TUIlHostingRenderModel;
  v23 = [(TUIRenderModelView *)&v26 initWithReuseIdentifier:@"TUIReuseIdentifierHostingView" identifier:a3 submodel:0];
  v24 = v23;
  if (v23)
  {
    v23->_requestedSize.width = width;
    v23->_requestedSize.height = height;
    v23->_usingGeometry = a6;
    objc_storeStrong(&v23->_hostingIdentifier, a8);
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

- (BOOL)isEqualToRenderModel:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    if (v5 == v6)
    {
      v7 = v4;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    if (v5 == v6 && (v14.receiver = self, v14.super_class = _TUIlHostingRenderModel, [(TUIRenderModelView *)&v14 isEqualToRenderModel:v4]) && (self->_requestedSize.width == *(v4 + 11) ? (v9 = self->_requestedSize.height == *(v4 + 12)) : (v9 = 0), v9 && self->_usingGeometry == v4[64] && (self->_anchorPoint.x == *(v4 + 13) ? (v10 = self->_anchorPoint.y == *(v4 + 14)) : (v10 = 0), v10 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_insets.top, *(v4 + 120)), vceqq_f64(*&self->_insets.bottom, *(v4 + 136))))) & 1) != 0)))
    {
      hostingIdentifier = self->_hostingIdentifier;
      if (hostingIdentifier == *(v4 + 9))
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