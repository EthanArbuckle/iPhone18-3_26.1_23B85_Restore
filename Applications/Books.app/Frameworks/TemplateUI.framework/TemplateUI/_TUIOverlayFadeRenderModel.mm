@interface _TUIOverlayFadeRenderModel
- (BOOL)isEqualToRenderModel:(id)a3;
- (CGPoint)contentOrigin;
- (CGPoint)overlayOrigin;
- (CGSize)size;
- (NSArray)debugContainedSubmodels;
- (UIEdgeInsets)contentErasableInsets;
- (_TUIOverlayFadeRenderModel)initWithIdentifier:(id)a3 size:(CGSize)a4 content:(id)a5 contentOrigin:(CGPoint)a6 contentErasableInsets:(UIEdgeInsets)a7 overlay:(id)a8 overlayOrigin:(CGPoint)a9 padding:(double)a10 gradientWidth:(double)a11 layoutDirection:(unint64_t)a12;
- (id)copyForFinalAppearanceWithFlags:(unint64_t)a3;
- (id)copyForInitialAppearanceWithFlags:(unint64_t)a3;
- (void)appendReferencesToCollector:(id)a3 transform:(CGAffineTransform *)a4 query:(id)a5 liveTransformResolver:(id)a6;
- (void)appendResourcesToCollector:(id)a3 transform:(CGAffineTransform *)a4;
- (void)prepare;
- (void)teardown;
@end

@implementation _TUIOverlayFadeRenderModel

- (void)prepare
{
  [(TUIRenderModelSubviews *)self->_content prepare];
  overlay = self->_overlay;

  [(TUIRenderModelSubviews *)overlay prepare];
}

- (void)teardown
{
  [(TUIRenderModelSubviews *)self->_content teardown];
  overlay = self->_overlay;

  [(TUIRenderModelSubviews *)overlay teardown];
}

- (id)copyForInitialAppearanceWithFlags:(unint64_t)a3
{
  v4 = self;
  v5 = [(TUIRenderModelSubviews *)v4->_content copyForInitialAppearanceWithFlags:a3];
  v6 = [(TUIRenderModelSubviews *)v4->_overlay copyForInitialAppearanceWithFlags:a3];
  v7 = v6;
  if (__PAIR128__(v6, v5) != *&v4->_content)
  {
    v8 = [[_TUIOverlayFadeRenderModel alloc] initWithIdentifier:v4->_identifier size:v5 content:v6 contentOrigin:v4->_layoutDirection contentErasableInsets:v4->_size.width overlay:v4->_size.height overlayOrigin:v4->_contentOrigin.x padding:v4->_contentOrigin.y gradientWidth:v4->_contentErasableInsets.top layoutDirection:v4->_contentErasableInsets.left, v4->_contentErasableInsets.bottom, v4->_contentErasableInsets.right, *&v4->_overlayOrigin.x, *&v4->_overlayOrigin.y, *&v4->_padding, *&v4->_gradientWidth];

    v4 = v8;
  }

  return v4;
}

- (id)copyForFinalAppearanceWithFlags:(unint64_t)a3
{
  v4 = self;
  v5 = [(TUIRenderModelSubviews *)v4->_content copyForFinalAppearanceWithFlags:a3];
  v6 = [(TUIRenderModelSubviews *)v4->_overlay copyForFinalAppearanceWithFlags:a3];
  v7 = v6;
  if (__PAIR128__(v6, v5) != *&v4->_content)
  {
    v8 = [[_TUIOverlayFadeRenderModel alloc] initWithIdentifier:v4->_identifier size:v5 content:v4->_overlay contentOrigin:v4->_layoutDirection contentErasableInsets:v4->_size.width overlay:v4->_size.height overlayOrigin:v4->_contentOrigin.x padding:v4->_contentOrigin.y gradientWidth:v4->_contentErasableInsets.top layoutDirection:v4->_contentErasableInsets.left, v4->_contentErasableInsets.bottom, v4->_contentErasableInsets.right, *&v4->_overlayOrigin.x, *&v4->_overlayOrigin.y, *&v4->_padding, *&v4->_gradientWidth];

    v4 = v8;
  }

  return v4;
}

- (BOOL)isEqualToRenderModel:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v9 = 0;
    goto LABEL_9;
  }

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
  if (v5 != v6 || self->_padding != v4[2].f64[1] || self->_gradientWidth != v4[3].f64[0] || self->_layoutDirection != *&v4[3].f64[1])
  {
    goto LABEL_6;
  }

  if (self->_contentOrigin.x != v4[5].f64[0] || self->_contentOrigin.y != v4[5].f64[1])
  {
    goto LABEL_6;
  }

  v9 = 0;
  if (self->_overlayOrigin.x != v4[6].f64[0] || self->_overlayOrigin.y != v4[6].f64[1])
  {
    goto LABEL_7;
  }

  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentErasableInsets.top, v4[7]), vceqq_f64(*&self->_contentErasableInsets.bottom, v4[8])))) & 1) != 0 && ((content = self->_content, content == *&v4[1].f64[1]) || [(TUIRenderModelSubviews *)content isEqualToRenderModel:?]))
  {
    overlay = self->_overlay;
    if (overlay == *&v4[2].f64[0])
    {
      v9 = 1;
    }

    else
    {
      v9 = [(TUIRenderModelSubviews *)overlay isEqualToRenderModel:?];
    }
  }

  else
  {
LABEL_6:
    v9 = 0;
  }

LABEL_7:

LABEL_9:
  return v9;
}

- (_TUIOverlayFadeRenderModel)initWithIdentifier:(id)a3 size:(CGSize)a4 content:(id)a5 contentOrigin:(CGPoint)a6 contentErasableInsets:(UIEdgeInsets)a7 overlay:(id)a8 overlayOrigin:(CGPoint)a9 padding:(double)a10 gradientWidth:(double)a11 layoutDirection:(unint64_t)a12
{
  x = a9.x;
  right = a7.right;
  bottom = a7.bottom;
  left = a7.left;
  top = a7.top;
  y = a6.y;
  v19 = a6.x;
  height = a4.height;
  width = a4.width;
  v25 = a3;
  v26 = a5;
  v27 = a8;
  v31.receiver = self;
  v31.super_class = _TUIOverlayFadeRenderModel;
  v28 = [(_TUIOverlayFadeRenderModel *)&v31 init];
  v29 = v28;
  if (v28)
  {
    objc_storeStrong(&v28->_identifier, a3);
    v29->_size.width = width;
    v29->_size.height = height;
    objc_storeStrong(&v29->_content, a5);
    v29->_contentOrigin.x = v19;
    v29->_contentOrigin.y = y;
    v29->_contentErasableInsets.top = top;
    v29->_contentErasableInsets.left = left;
    v29->_contentErasableInsets.bottom = bottom;
    v29->_contentErasableInsets.right = right;
    objc_storeStrong(&v29->_overlay, a8);
    v29->_overlayOrigin.x = a10;
    v29->_overlayOrigin.y = a11;
    v29->_padding = v32;
    v29->_gradientWidth = v33;
    *&v29->_layoutDirection = x;
  }

  return v29;
}

- (NSArray)debugContainedSubmodels
{
  overlay = self->_overlay;
  v5[0] = self->_content;
  v5[1] = overlay;
  v3 = [NSArray arrayWithObjects:v5 count:2];

  return v3;
}

- (void)appendResourcesToCollector:(id)a3 transform:(CGAffineTransform *)a4
{
  content = self->_content;
  v7 = *&a4->c;
  v11 = *&a4->a;
  v12 = v7;
  v13 = *&a4->tx;
  v8 = a3;
  [(TUIRenderModelSubviews *)content appendResourcesToCollector:v8 transform:&v11];
  overlay = self->_overlay;
  v10 = *&a4->c;
  v11 = *&a4->a;
  v12 = v10;
  v13 = *&a4->tx;
  [(TUIRenderModelSubviews *)overlay appendResourcesToCollector:v8 transform:&v11];
}

- (void)appendReferencesToCollector:(id)a3 transform:(CGAffineTransform *)a4 query:(id)a5 liveTransformResolver:(id)a6
{
  content = self->_content;
  v11 = *&a4->c;
  v17 = *&a4->a;
  v18 = v11;
  v19 = *&a4->tx;
  v12 = a6;
  v13 = a5;
  v14 = a3;
  [(TUIRenderModelSubviews *)content appendReferencesToCollector:v14 transform:&v17 query:v13 liveTransformResolver:v12];
  overlay = self->_overlay;
  v16 = *&a4->c;
  v17 = *&a4->a;
  v18 = v16;
  v19 = *&a4->tx;
  [(TUIRenderModelSubviews *)overlay appendReferencesToCollector:v14 transform:&v17 query:v13 liveTransformResolver:v12];
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)contentOrigin
{
  x = self->_contentOrigin.x;
  y = self->_contentOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIEdgeInsets)contentErasableInsets
{
  top = self->_contentErasableInsets.top;
  left = self->_contentErasableInsets.left;
  bottom = self->_contentErasableInsets.bottom;
  right = self->_contentErasableInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGPoint)overlayOrigin
{
  x = self->_overlayOrigin.x;
  y = self->_overlayOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

@end