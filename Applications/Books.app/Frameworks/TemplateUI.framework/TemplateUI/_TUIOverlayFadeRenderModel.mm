@interface _TUIOverlayFadeRenderModel
- (BOOL)isEqualToRenderModel:(id)model;
- (CGPoint)contentOrigin;
- (CGPoint)overlayOrigin;
- (CGSize)size;
- (NSArray)debugContainedSubmodels;
- (UIEdgeInsets)contentErasableInsets;
- (_TUIOverlayFadeRenderModel)initWithIdentifier:(id)identifier size:(CGSize)size content:(id)content contentOrigin:(CGPoint)origin contentErasableInsets:(UIEdgeInsets)insets overlay:(id)overlay overlayOrigin:(CGPoint)overlayOrigin padding:(double)self0 gradientWidth:(double)self1 layoutDirection:(unint64_t)self2;
- (id)copyForFinalAppearanceWithFlags:(unint64_t)flags;
- (id)copyForInitialAppearanceWithFlags:(unint64_t)flags;
- (void)appendReferencesToCollector:(id)collector transform:(CGAffineTransform *)transform query:(id)query liveTransformResolver:(id)resolver;
- (void)appendResourcesToCollector:(id)collector transform:(CGAffineTransform *)transform;
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

- (id)copyForInitialAppearanceWithFlags:(unint64_t)flags
{
  selfCopy = self;
  v5 = [(TUIRenderModelSubviews *)selfCopy->_content copyForInitialAppearanceWithFlags:flags];
  v6 = [(TUIRenderModelSubviews *)selfCopy->_overlay copyForInitialAppearanceWithFlags:flags];
  v7 = v6;
  if (__PAIR128__(v6, v5) != *&selfCopy->_content)
  {
    v8 = [[_TUIOverlayFadeRenderModel alloc] initWithIdentifier:selfCopy->_identifier size:v5 content:v6 contentOrigin:selfCopy->_layoutDirection contentErasableInsets:selfCopy->_size.width overlay:selfCopy->_size.height overlayOrigin:selfCopy->_contentOrigin.x padding:selfCopy->_contentOrigin.y gradientWidth:selfCopy->_contentErasableInsets.top layoutDirection:selfCopy->_contentErasableInsets.left, selfCopy->_contentErasableInsets.bottom, selfCopy->_contentErasableInsets.right, *&selfCopy->_overlayOrigin.x, *&selfCopy->_overlayOrigin.y, *&selfCopy->_padding, *&selfCopy->_gradientWidth];

    selfCopy = v8;
  }

  return selfCopy;
}

- (id)copyForFinalAppearanceWithFlags:(unint64_t)flags
{
  selfCopy = self;
  v5 = [(TUIRenderModelSubviews *)selfCopy->_content copyForFinalAppearanceWithFlags:flags];
  v6 = [(TUIRenderModelSubviews *)selfCopy->_overlay copyForFinalAppearanceWithFlags:flags];
  v7 = v6;
  if (__PAIR128__(v6, v5) != *&selfCopy->_content)
  {
    v8 = [[_TUIOverlayFadeRenderModel alloc] initWithIdentifier:selfCopy->_identifier size:v5 content:selfCopy->_overlay contentOrigin:selfCopy->_layoutDirection contentErasableInsets:selfCopy->_size.width overlay:selfCopy->_size.height overlayOrigin:selfCopy->_contentOrigin.x padding:selfCopy->_contentOrigin.y gradientWidth:selfCopy->_contentErasableInsets.top layoutDirection:selfCopy->_contentErasableInsets.left, selfCopy->_contentErasableInsets.bottom, selfCopy->_contentErasableInsets.right, *&selfCopy->_overlayOrigin.x, *&selfCopy->_overlayOrigin.y, *&selfCopy->_padding, *&selfCopy->_gradientWidth];

    selfCopy = v8;
  }

  return selfCopy;
}

- (BOOL)isEqualToRenderModel:(id)model
{
  modelCopy = model;
  if (!modelCopy)
  {
    v9 = 0;
    goto LABEL_9;
  }

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
  if (v5 != v6 || self->_padding != modelCopy[2].f64[1] || self->_gradientWidth != modelCopy[3].f64[0] || self->_layoutDirection != *&modelCopy[3].f64[1])
  {
    goto LABEL_6;
  }

  if (self->_contentOrigin.x != modelCopy[5].f64[0] || self->_contentOrigin.y != modelCopy[5].f64[1])
  {
    goto LABEL_6;
  }

  v9 = 0;
  if (self->_overlayOrigin.x != modelCopy[6].f64[0] || self->_overlayOrigin.y != modelCopy[6].f64[1])
  {
    goto LABEL_7;
  }

  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentErasableInsets.top, modelCopy[7]), vceqq_f64(*&self->_contentErasableInsets.bottom, modelCopy[8])))) & 1) != 0 && ((content = self->_content, content == *&modelCopy[1].f64[1]) || [(TUIRenderModelSubviews *)content isEqualToRenderModel:?]))
  {
    overlay = self->_overlay;
    if (overlay == *&modelCopy[2].f64[0])
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

- (_TUIOverlayFadeRenderModel)initWithIdentifier:(id)identifier size:(CGSize)size content:(id)content contentOrigin:(CGPoint)origin contentErasableInsets:(UIEdgeInsets)insets overlay:(id)overlay overlayOrigin:(CGPoint)overlayOrigin padding:(double)self0 gradientWidth:(double)self1 layoutDirection:(unint64_t)self2
{
  x = overlayOrigin.x;
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  y = origin.y;
  v19 = origin.x;
  height = size.height;
  width = size.width;
  identifierCopy = identifier;
  contentCopy = content;
  overlayCopy = overlay;
  v31.receiver = self;
  v31.super_class = _TUIOverlayFadeRenderModel;
  v28 = [(_TUIOverlayFadeRenderModel *)&v31 init];
  v29 = v28;
  if (v28)
  {
    objc_storeStrong(&v28->_identifier, identifier);
    v29->_size.width = width;
    v29->_size.height = height;
    objc_storeStrong(&v29->_content, content);
    v29->_contentOrigin.x = v19;
    v29->_contentOrigin.y = y;
    v29->_contentErasableInsets.top = top;
    v29->_contentErasableInsets.left = left;
    v29->_contentErasableInsets.bottom = bottom;
    v29->_contentErasableInsets.right = right;
    objc_storeStrong(&v29->_overlay, overlay);
    v29->_overlayOrigin.x = padding;
    v29->_overlayOrigin.y = width;
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

- (void)appendResourcesToCollector:(id)collector transform:(CGAffineTransform *)transform
{
  content = self->_content;
  v7 = *&transform->c;
  v11 = *&transform->a;
  v12 = v7;
  v13 = *&transform->tx;
  collectorCopy = collector;
  [(TUIRenderModelSubviews *)content appendResourcesToCollector:collectorCopy transform:&v11];
  overlay = self->_overlay;
  v10 = *&transform->c;
  v11 = *&transform->a;
  v12 = v10;
  v13 = *&transform->tx;
  [(TUIRenderModelSubviews *)overlay appendResourcesToCollector:collectorCopy transform:&v11];
}

- (void)appendReferencesToCollector:(id)collector transform:(CGAffineTransform *)transform query:(id)query liveTransformResolver:(id)resolver
{
  content = self->_content;
  v11 = *&transform->c;
  v17 = *&transform->a;
  v18 = v11;
  v19 = *&transform->tx;
  resolverCopy = resolver;
  queryCopy = query;
  collectorCopy = collector;
  [(TUIRenderModelSubviews *)content appendReferencesToCollector:collectorCopy transform:&v17 query:queryCopy liveTransformResolver:resolverCopy];
  overlay = self->_overlay;
  v16 = *&transform->c;
  v17 = *&transform->a;
  v18 = v16;
  v19 = *&transform->tx;
  [(TUIRenderModelSubviews *)overlay appendReferencesToCollector:collectorCopy transform:&v17 query:queryCopy liveTransformResolver:resolverCopy];
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