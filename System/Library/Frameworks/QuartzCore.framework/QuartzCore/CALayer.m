@interface CALayer
+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3;
+ (CALayer)allocWithZone:(_NSZone *)a3;
+ (CALayer)layer;
+ (CALayer)layerWithRenderLayer:(void *)a3 options:(id)a4;
+ (CGFloat)cornerCurveExpansionFactor:(CALayerCornerCurve)curve;
+ (id)defaultValueForKey:(NSString *)key;
+ (void)CAMLParserEndElement:(id)a3;
+ (void)CAMLParserStartElement:(id)a3;
+ (void)initialize;
- (BOOL)CAMLTypeSupportedForKey:(id)a3;
- (BOOL)CA_validateValue:(id)a3 forKey:(id)a4;
- (BOOL)autoreverses;
- (BOOL)containsPoint:(CGPoint)p;
- (BOOL)getRendererInfo:(_CARenderRendererInfo *)a3 size:(unint64_t)a4;
- (BOOL)ignoresHitTesting;
- (BOOL)isDescendantOf:(id)a3;
- (BOOL)layoutIsActive;
- (BOOL)needsDisplay;
- (BOOL)remapAnimation:(id)a3 forKey:(id)a4;
- (BOOL)shouldArchiveValueForKey:(NSString *)key;
- (CAAnimation)animationForKey:(NSString *)key;
- (CACornerRadii)cornerRadii;
- (CALayer)hitTest:(CGPoint)p;
- (CALayer)init;
- (CALayer)initWithCoder:(id)a3;
- (CALayer)initWithLayer:(id)layer;
- (CALayer)modelLayer;
- (CALayer)presentationLayer;
- (CALayer)superlayer;
- (CALayerContentsFilter)magnificationFilter;
- (CALayerContentsFilter)minificationFilter;
- (CALayerContentsFormat)contentsFormat;
- (CALayerContentsGravity)contentsGravity;
- (CALayerDelegate)unsafeUnretainedDelegate;
- (CAMeshTransform)meshTransform;
- (CATransform3D)sublayerTransform;
- (CATransform3D)transform;
- (CFTimeInterval)convertTime:(CFTimeInterval)t fromLayer:(CALayer *)l;
- (CFTimeInterval)convertTime:(CFTimeInterval)t toLayer:(CALayer *)l;
- (CGAffineTransform)affineTransform;
- (CGAffineTransform)contentsTransform;
- (CGColor)contentsMultiplyColor;
- (CGColor)rimColor;
- (CGColorRef)backgroundColor;
- (CGColorRef)borderColor;
- (CGColorRef)shadowColor;
- (CGColorSpace)_retainColorSpace;
- (CGFloat)anchorPointZ;
- (CGFloat)borderWidth;
- (CGFloat)contentsScale;
- (CGFloat)cornerRadius;
- (CGFloat)rasterizationScale;
- (CGFloat)shadowRadius;
- (CGFloat)zPosition;
- (CGPathRef)shadowPath;
- (CGPoint)anchorPoint;
- (CGPoint)convertPoint:(CGPoint)p fromLayer:(CALayer *)l;
- (CGPoint)convertPoint:(CGPoint)p toLayer:(CALayer *)l;
- (CGPoint)position;
- (CGRect)_visibleRectOfLayer:(id)a3;
- (CGRect)bounds;
- (CGRect)contentsCenter;
- (CGRect)contentsDirtyRect;
- (CGRect)contentsRect;
- (CGRect)convertRect:(CGRect)r fromLayer:(CALayer *)l;
- (CGRect)convertRect:(CGRect)r toLayer:(CALayer *)l;
- (CGRect)cornerContentsCenter;
- (CGRect)frame;
- (CGRect)visibleRect;
- (CGSize)backgroundColorPhase;
- (CGSize)preferredFrameSize;
- (CGSize)shadowOffset;
- (CGSize)size;
- (CGSize)sizeRequisition;
- (NSArray)animationKeys;
- (NSArray)backgroundFilters;
- (NSArray)filters;
- (NSArray)presentationModifiers;
- (NSDictionary)actions;
- (NSDictionary)style;
- (NSString)contentsScaling;
- (NSString)contentsSwizzle;
- (NSString)fillMode;
- (NSString)name;
- (NSString)preferredDynamicRange;
- (NSString)securityMode;
- (NSString)toneMapMode;
- (double)beginTime;
- (double)borderOffset;
- (double)contentsCDRStrength;
- (double)contentsEDRStrength;
- (double)contentsHeadroom;
- (double)contentsMaximumDesiredEDR;
- (double)displayMaximumDesiredEDR;
- (double)duration;
- (double)repeatDuration;
- (double)rimWidth;
- (double)timeOffset;
- (float)gain;
- (float)minificationFilterBias;
- (float)opacity;
- (float)repeatCount;
- (float)rimOpacity;
- (float)shadowOpacity;
- (float)speed;
- (id)CAMLTypeForKey:(id)a3;
- (id)CA_archivingValueForKey:(id)a3;
- (id)_initWithReference:(id)a3;
- (id)_layoutHash;
- (id)actionForKey:(NSString *)event;
- (id)ancestorSharedWithLayer:(id)a3;
- (id)compositingFilter;
- (id)context;
- (id)cornerContents;
- (id)debugDescription;
- (id)delegate;
- (id)dependentStatesOfState:(id)a3;
- (id)implicitAnimationForKeyPath:(id)a3;
- (id)layerAtTime:(double)a3;
- (id)layerBeingDrawn;
- (id)optimizationOpportunities:(BOOL)a3;
- (id)recursiveDescription;
- (id)stateTransitionFrom:(id)a3 to:(id)a4;
- (id)stateWithName:(id)a3;
- (id)valueForKey:(id)a3;
- (id)valueForUndefinedKey:(id)a3;
- (unint64_t)retainCount;
- (unsigned)_renderImageCopyFlags;
- (unsigned)_renderLayerPropertyAnimationFlags:(unsigned int)a3;
- (unsigned)_thread_flags;
- (void)CAMLParser:(id)a3 setValue:(id)a4 forKey:(id)a5;
- (void)_colorSpaceDidChange;
- (void)_contentsFormatDidChange:(id)a3;
- (void)_copyRenderLayer:(void *)a3 layerFlags:(unsigned int)a4 commitFlags:(unsigned int *)a5;
- (void)_display;
- (void)_performPreLayoutUpdate;
- (void)_renderBackgroundInContext:(CGContext *)a3;
- (void)_renderBorderInContext:(CGContext *)a3;
- (void)_renderForegroundInContext:(CGContext *)a3;
- (void)_renderSublayersInContext:(CGContext *)a3;
- (void)_saveCurrentLayoutHash;
- (void)_scrollPoint:(CGPoint)a3 fromLayer:(id)a4;
- (void)_scrollRect:(CGRect)a3 fromLayer:(id)a4;
- (void)_validateLayoutHashHasChangedWithLayoutTime:(double)a3;
- (void)addAnimation:(CAAnimation *)anim forKey:(NSString *)key;
- (void)addIdentifier:(id)a3;
- (void)addPresentationModifier:(id)a3;
- (void)addSublayer:(CALayer *)layer;
- (void)dealloc;
- (void)display;
- (void)displayIfNeeded;
- (void)drawInContext:(CGContextRef)ctx;
- (void)encodeWithCAMLWriter:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)insertState:(id)a3 atIndex:(unsigned int)a4;
- (void)insertSublayer:(CALayer *)layer above:(CALayer *)sibling;
- (void)insertSublayer:(CALayer *)layer atIndex:(unsigned int)idx;
- (void)insertSublayer:(CALayer *)layer below:(CALayer *)sibling;
- (void)invalidateContents;
- (void)layoutBelowIfNeeded;
- (void)layoutIfNeeded;
- (void)layoutSublayers;
- (void)prepareContents;
- (void)regionBeingDrawn;
- (void)reloadValueForKeyPath:(id)a3;
- (void)removeAllAnimations;
- (void)removeAnimationForKey:(NSString *)key;
- (void)removeIdentifier:(id)a3;
- (void)removePresentationModifier:(id)a3;
- (void)removeState:(id)a3;
- (void)renderInContext:(CGContextRef)ctx;
- (void)replaceSublayer:(CALayer *)oldLayer with:(CALayer *)newLayer;
- (void)setActions:(NSDictionary *)actions;
- (void)setAffineTransform:(CGAffineTransform *)m;
- (void)setAnchorPoint:(CGPoint)anchorPoint;
- (void)setAnchorPointZ:(CGFloat)anchorPointZ;
- (void)setAutoreverses:(BOOL)a3;
- (void)setBackgroundColor:(CGColorRef)backgroundColor;
- (void)setBackgroundColorPhase:(CGSize)a3;
- (void)setBackgroundFilters:(NSArray *)backgroundFilters;
- (void)setBeginTime:(double)a3;
- (void)setBorderColor:(CGColorRef)borderColor;
- (void)setBorderOffset:(double)a3;
- (void)setBorderWidth:(CGFloat)borderWidth;
- (void)setBounds:(CGRect)bounds;
- (void)setCompositingFilter:(id)compositingFilter;
- (void)setContents:(id)contents;
- (void)setContentsCDRStrength:(double)a3;
- (void)setContentsCenter:(CGRect)contentsCenter;
- (void)setContentsChanged;
- (void)setContentsDirtyRect:(CGRect)a3;
- (void)setContentsEDRStrength:(double)a3;
- (void)setContentsFormat:(CALayerContentsFormat)contentsFormat;
- (void)setContentsGravity:(CALayerContentsGravity)contentsGravity;
- (void)setContentsHeadroom:(double)a3;
- (void)setContentsMaximumDesiredEDR:(double)a3;
- (void)setContentsMultiplyColor:(CGColor *)a3;
- (void)setContentsRect:(CGRect)contentsRect;
- (void)setContentsScale:(CGFloat)contentsScale;
- (void)setContentsScaling:(id)a3;
- (void)setContentsSwizzle:(id)a3;
- (void)setContinuousCorners:(BOOL)a3;
- (void)setCornerContents:(id)a3;
- (void)setCornerContentsCenter:(CGRect)a3;
- (void)setCornerCurve:(CALayerCornerCurve)cornerCurve;
- (void)setCornerRadii:(CACornerRadii *)a3;
- (void)setCornerRadius:(CGFloat)cornerRadius;
- (void)setDisplayMaximumDesiredEDR:(double)a3;
- (void)setDuration:(double)a3;
- (void)setFillMode:(id)a3;
- (void)setFilters:(NSArray *)filters;
- (void)setFrame:(CGRect)frame;
- (void)setGain:(float)a3;
- (void)setMagnificationFilter:(CALayerContentsFilter)magnificationFilter;
- (void)setMeshTransform:(id)a3;
- (void)setMinificationFilter:(CALayerContentsFilter)minificationFilter;
- (void)setMinificationFilterBias:(float)minificationFilterBias;
- (void)setName:(NSString *)name;
- (void)setNeedsDisplayInRect:(CGRect)r;
- (void)setNeedsLayout;
- (void)setNeedsPreLayoutUpdate;
- (void)setOpacity:(float)opacity;
- (void)setPosition:(CGPoint)position;
- (void)setPreferredDynamicRange:(id)a3;
- (void)setPresentationModifiers:(id)a3;
- (void)setRasterizationScale:(CGFloat)rasterizationScale;
- (void)setRepeatCount:(float)a3;
- (void)setRepeatDuration:(double)a3;
- (void)setRimColor:(CGColor *)a3;
- (void)setRimOpacity:(float)a3;
- (void)setRimWidth:(double)a3;
- (void)setSecurityMode:(id)a3;
- (void)setShadowColor:(CGColorRef)shadowColor;
- (void)setShadowOffset:(CGSize)shadowOffset;
- (void)setShadowOpacity:(float)shadowOpacity;
- (void)setShadowPath:(CGPathRef)shadowPath;
- (void)setShadowRadius:(CGFloat)shadowRadius;
- (void)setSizeRequisition:(CGSize)a3;
- (void)setSpeed:(float)a3;
- (void)setStyle:(NSDictionary *)style;
- (void)setTimeOffset:(double)a3;
- (void)setToneMapMode:(id)a3;
- (void)setTransform:(CATransform3D *)transform;
- (void)setValue:(id)a3 forKey:(id)a4;
- (void)setValue:(id)a3 forKeyPath:(id)a4;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
- (void)setZPosition:(CGFloat)zPosition;
@end

@implementation CALayer

- (void)layoutBelowIfNeeded
{
  CA::Transaction::ensure_compat(self);
  layer = self->_attr.layer;

  CA::Layer::update_if_needed_(layer);
}

- (CGRect)bounds
{
  layer = self->_attr.layer;
  v3 = layer[12];
  v4 = layer[13];
  v5 = layer[14];
  v6 = layer[15];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

+ (CALayer)layer
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (CALayer)init
{
  v14 = *MEMORY[0x1E69E9840];
  self->_attr.magic = 1279351122;
  v13.receiver = self;
  v13.super_class = CALayer;
  v2 = [(CALayer *)&v13 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v5 = CA::Layer::class_state(v3, v4);
    v6 = v5;
    v7 = *v5;
    v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
    if (!v8)
    {
      v8 = CA::Transaction::create(v5);
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v9 = malloc_type_zone_malloc(malloc_zone, 0x128uLL, 0x165299FDuLL);
    if (v9)
    {
      v10 = v9;
      *v9 = 0;
      v9[1] = 0;
      if (v7)
      {
        v11 = 33554434;
      }

      else
      {
        v11 = 0x2000000;
      }

      v9[3] = 0;
      v9[4] = 0;
      v9[2] = v2;
      CA::Layer::State::State((v9 + 5), v6, v8);
      v10[19] = 0;
      v10[20] = 0;
      *(v10 + 44) = 0;
      v10[21] = 0;
      *(v10 + 23) = 0u;
      *(v10 + 25) = 0u;
      *(v10 + 27) = 0u;
      *(v10 + 29) = 0u;
      *(v10 + 248) = 0;
      v10[32] = 0;
      v10[33] = 0;
      v10[35] = 0;
      v10[36] = 0;
      *v10 = 1;
      *(v10 + 1) = v11;
      v10[34] = 0;
      v2->_attr.layer = v10;
    }
  }

  return v2;
}

- (void)setNeedsLayout
{
  CA::Layer::set_needs_update_(self->_attr.layer, 32);
  if (BYTE8(xmmword_1ED4E982C) & 1) != 0 || (BYTE9(xmmword_1ED4E982C))
  {

    [(CALayer *)self _saveCurrentLayoutHash];
  }
}

- (CALayerDelegate)unsafeUnretainedDelegate
{
  layer = self->_attr.layer;
  if (*(layer + 136) == 1)
  {
    return objc_loadWeak(layer + 16);
  }

  else
  {
    return layer[16];
  }
}

- (CALayer)modelLayer
{
  layer = self->_attr.layer;
  v3 = CA::Transaction::ensure_compat(self);
  result = CA::Layer::model_layer(layer, v3);
  if (result)
  {
    return result->_attr.layer;
  }

  return result;
}

- (CALayer)superlayer
{
  layer = self->_attr.layer;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v3)
  {
    v3 = CA::Transaction::create(self);
  }

  return CA::Layer::superlayer(layer, v3);
}

- (CGFloat)contentsScale
{
  v6[1] = *MEMORY[0x1E69E9840];
  layer = self->_attr.layer;
  v3 = (*(layer + 11) >> 26) & 3;
  v6[0] = 0.0;
  if (v3)
  {
    return v3;
  }

  if ((*(layer + 57) & 2) != 0)
  {
    v4 = *(layer + 9);
    if (!v4 || (CA::AttrList::get(v4, 151, 0x12, v6) & 1) == 0)
    {
      CA::Layer::default_value(layer, 0x97u, 0x12, v6);
    }
  }

  else
  {
    v6[0] = 1.0;
  }

  return v6[0];
}

- (CGRect)frame
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = CA::Transaction::ensure_compat(self);
  v4 = *(v3 + 29);
  *(v3 + 29) = v4 + 1;
  if (!v4)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  layer = self->_attr.layer;
  v6 = *(layer + 14);
  if ((v6 & 0x1000) != 0)
  {
    [(CALayer *)self anchorPoint];
    v6 = *(layer + 14);
  }

  else
  {
    v7 = 0.5;
    v8 = 0.5;
  }

  v9 = *(layer + 6);
  v20 = v9;
  v10 = *(layer + 14);
  v11 = *(layer + 15);
  v21 = v10;
  v22 = v11;
  if ((v6 & 0x20) != 0)
  {
    memset(v19, 0, sizeof(v19));
    CA::Layer::get_frame_transform(layer, v19, 1, 0, 0, v8, *v9.i64);
    CA::Mat4Impl::mat4_apply_to_rect(v19, &v20, v14);
    v13 = *&v20.i64[1];
    v12 = *v20.i64;
    v10 = v21;
    v11 = v22;
  }

  else
  {
    v12 = *(layer + 10) - v10 * v7;
    v13 = *(layer + 11) - v11 * v8;
  }

  CA::Transaction::unlock(v3);
  v15 = v12;
  v16 = v13;
  v17 = v10;
  v18 = v11;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGPoint)position
{
  layer = self->_attr.layer;
  v3 = layer[10];
  v4 = layer[11];
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)setNeedsPreLayoutUpdate
{
  layer = self->_attr.layer;
  if (CADeviceSupportsPreLayout::once != -1)
  {
    dispatch_once(&CADeviceSupportsPreLayout::once, &__block_literal_global_454);
  }

  if (CADeviceSupportsPreLayout::enabled == 1)
  {

    CA::Layer::set_needs_update_(layer, 0x10000000);
  }
}

- (CATransform3D)transform
{
  result = self->_attr.layer;
  if ((LOBYTE(result->m24) & 0x20) != 0)
  {
    *&retstr->m41 = 0u;
    *&retstr->m43 = 0u;
    *&retstr->m31 = 0u;
    *&retstr->m33 = 0u;
    *&retstr->m21 = 0u;
    *&retstr->m23 = 0u;
    *&retstr->m11 = 0u;
    *&retstr->m13 = 0u;
    CA::Layer::getter(result, 0x2CCu, 0x16, retstr);
  }

  else
  {
    *retstr = CATransform3DIdentity;
  }

  return result;
}

- (NSString)name
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->_attr.layer, 0x20Fu, 3, v3);
  return v3[0];
}

- (CGColorRef)backgroundColor
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->_attr.layer, 0x3Eu, 2, v3);
  return v3[0];
}

- (CALayer)presentationLayer
{
  layer = self->_attr.layer;
  v3 = CA::Transaction::ensure_compat(self);

  return CA::Layer::presentation_layer(layer, v3);
}

- (float)opacity
{
  v5 = *MEMORY[0x1E69E9840];
  layer = self->_attr.layer;
  result = 1.0;
  if ((*(layer + 56) & 0x10) != 0)
  {
    v4 = 0.0;
    CA::Layer::getter(layer, 0x21Bu, 0x11, &v4);
    return v4;
  }

  return result;
}

- (CGRect)contentsCenter
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  *v7 = 0u;
  CA::Layer::getter(self->_attr.layer, 0x86u, 0x15, &v6);
  v3 = *(&v6 + 1);
  v2 = *&v6;
  v5 = v7[1];
  v4 = v7[0];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGAffineTransform)affineTransform
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(*&self->c + 56) & 0x20) != 0 && (v14 = 0u, v15 = 0u, v12 = 0u, v13 = 0u, v10 = 0u, v11 = 0u, memset(v9, 0, sizeof(v9)), [(CGAffineTransform *)self transform], self = CA::Mat4Impl::mat4_is_affine(v9, v4), self))
  {
    v5 = v10;
    *&retstr->a = v9[0];
    *&retstr->c = v5;
    v6 = v14;
  }

  else
  {
    v7 = MEMORY[0x1E695EFD0];
    v8 = *(MEMORY[0x1E695EFD0] + 16);
    *&retstr->a = *MEMORY[0x1E695EFD0];
    *&retstr->c = v8;
    v6 = *(v7 + 32);
  }

  *&retstr->tx = v6;
  return self;
}

- (void)removeAllAnimations
{
  v3 = CA::Transaction::ensure_compat(self);
  v4 = [(CALayer *)self modelLayer];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = *(v4->_attr.layer + 35);
  if (!v6)
  {
    return;
  }

  v7 = *(v3 + 29);
  *(v3 + 29) = v7 + 1;
  if (v7)
  {
    v11 = v6;
    goto LABEL_7;
  }

  os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  layer = v5->_attr.layer;
  v6 = layer[35];
  v11 = v6;
  if (v6)
  {
LABEL_7:
    v9 = &v11;
    do
    {
      if (v6[57] & 1) != 0 || (v6[62])
      {
        v6[58] = 1;
        v9 = v6;
      }

      else
      {
        *v9 = *v6;
        schedule_stop_callback(v6, &animation_state);
        free_non_deferred_animation(v6, 1);
      }

      v6 = *v9;
    }

    while (*v9);
    layer = v5->_attr.layer;
    v10 = v11;
    goto LABEL_14;
  }

  v10 = 0;
LABEL_14:
  CA::Layer::set_animations(layer, v10);
  CA::Layer::mark_animations(v5->_attr.layer, v3, 0);

  CA::Transaction::unlock(v3);
}

- (id)context
{
  result = CA::Layer::retain_context(self->_attr.layer);
  if (result)
  {
    v3 = result;
    if (*(result + 88) == 1)
    {
      Weak = objc_loadWeak(result + 10);
    }

    else
    {
      Weak = *(result + 10);
    }

    v5 = Weak;
    CA::Context::unref(v3, 0);
    return v5;
  }

  return result;
}

- (NSArray)filters
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->_attr.layer, 0x100u, 3, v3);
  return v3[0];
}

- (CGPoint)anchorPoint
{
  v8 = *MEMORY[0x1E69E9840];
  layer = self->_attr.layer;
  *v7 = 0uLL;
  v3 = *(layer + 14);
  if ((v3 & 0x1000) != 0)
  {
    if ((v3 & 0x2000) != 0)
    {
      *v7 = *MEMORY[0x1E695EFF8];
    }

    else
    {
      v4 = *(layer + 9);
      if (v4)
      {
        CA::AttrList::get(v4, 33, 0x13, v7);
      }
    }
  }

  else
  {
    CA::Layer::default_value(layer, 0x21u, 0x13, v7);
  }

  v6 = v7[1];
  v5 = v7[0];
  result.y = v6;
  result.x = v5;
  return result;
}

- (void)setContentsChanged
{
  v3 = CA::Transaction::ensure_compat(self);
  v4 = *(v3 + 29);
  *(v3 + 29) = v4 + 1;
  if (!v4)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  CA::Layer::property_did_change(self->_attr.layer, v3, 131);

  CA::Transaction::unlock(v3);
}

- (void)_performPreLayoutUpdate
{
  if ((*(self->_attr.layer + 59) & 8) != 0)
  {
    v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
    if (!v3)
    {
      v3 = CA::Transaction::create(self);
    }

    v4 = *(v3 + 29);
    *(v3 + 29) = v4 + 1;
    if (!v4)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    layer = self->_attr.layer;
    if ((*(layer + 59) & 8) != 0 && sel__performPreLayoutUpdateOfLayer_)
    {
      if (*(layer + 136) == 1)
      {
        Weak = objc_loadWeak(layer + 16);
      }

      else
      {
        Weak = layer[16];
      }

      CA::Transaction::unlock(v3);

      [Weak _performPreLayoutUpdateOfLayer_];
    }

    else
    {

      CA::Transaction::unlock(v3);
    }
  }
}

- (void)layoutSublayers
{
  if ((*(self->_attr.layer + 59) & 6) != 0)
  {
    v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
    if (!v3)
    {
      v3 = CA::Transaction::create(self);
    }

    v4 = *(v3 + 29);
    *(v3 + 29) = v4 + 1;
    if (!v4)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    layer = self->_attr.layer;
    v6 = *(layer + 14);
    if ((v6 & 0x2000000) != 0)
    {
      v7 = &selRef_layoutSublayersOfLayer_;
    }

    else
    {
      if ((v6 & 0x4000000) == 0)
      {
LABEL_13:
        CA::Transaction::unlock(v3);
        goto LABEL_14;
      }

      v7 = &selRef__layoutSublayersOfLayer_;
    }

    v8 = *v7;
    if (*v7)
    {
      if (*(layer + 136) == 1)
      {
        Weak = objc_loadWeak(layer + 16);
      }

      else
      {
        Weak = *(layer + 16);
      }

      CA::Transaction::unlock(v3);

      [Weak v8];
      return;
    }

    goto LABEL_13;
  }

LABEL_14:
  v10 = CA::Transaction::ensure_compat(self) + 104;
  while (1)
  {
    v10 = *v10;
    if (!v10)
    {
      break;
    }

    if (v10[28])
    {
      if (v10[24])
      {
        return;
      }

      break;
    }
  }

  v11 = [(CALayer *)self actionForKey:@"onLayout"];
  if (v11)
  {

    [v11 runActionForKey:@"onLayout" object:self arguments:0];
  }
}

- (id)delegate
{
  layer = self->_attr.layer;
  if (*(layer + 136) == 1)
  {
    return objc_loadWeak(layer + 16);
  }

  else
  {
    return layer[16];
  }
}

- (NSArray)animationKeys
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = CA::Transaction::ensure_compat(self);
  v4 = [(CALayer *)self modelLayer];
  v5 = v4;
  if (v4)
  {
    v6 = *(v3 + 29);
    *(v3 + 29) = v6 + 1;
    if (!v6)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    isa = v5[2].super.isa;
    v8 = *(isa + 35);
    if (v8)
    {
      v5 = 0;
      v9 = *(isa + 35);
      do
      {
        if (v9[2] && (*(v9 + 58) & 1) == 0)
        {
          v5 = (v5 + (*(v9 + 61) ^ 1));
        }

        v9 = *v9;
      }

      while (v9);
      if (!v5)
      {
        goto LABEL_23;
      }

      v10 = 8 * v5;
      if ((8 * v5) <= 0x1000)
      {
        MEMORY[0x1EEE9AC00](v4);
        v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v11, 8 * v5);
        goto LABEL_14;
      }

      v11 = malloc_type_malloc(8 * v5, 0x80040B8603338uLL);
      if (v11)
      {
LABEL_14:
        v12 = 0;
        do
        {
          v13 = v8[2];
          if (v13 && (*(v8 + 58) & 1) == 0 && (*(v8 + 61) & 1) == 0)
          {
            *&v11[8 * v12++] = v13;
          }

          v8 = *v8;
        }

        while (v8);
        v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:v5];
        if (v10 > 0x1000)
        {
          free(v11);
        }

        goto LABEL_23;
      }
    }

    v5 = 0;
LABEL_23:
    CA::Transaction::unlock(v3);
  }

  return v5;
}

- (NSArray)presentationModifiers
{
  layer = self->_attr.layer;
  v3 = CA::Transaction::ensure_compat(self);
  v4 = *(v3 + 29);
  *(v3 + 29) = v4 + 1;
  if (!v4)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v5 = [layer[36] copy];
  CA::Transaction::unlock(v3);

  return v5;
}

- (CGFloat)cornerRadius
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->_attr.layer, 0xA4u, 0x12, v3);
  return *v3;
}

- (CAMeshTransform)meshTransform
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->_attr.layer, 0x203u, 3, v3);
  return v3[0];
}

- (NSString)contentsScaling
{
  if (*(self->_attr.layer + 54))
  {
    return @"repeat";
  }

  else
  {
    return @"stretch";
  }
}

- (CALayerContentsFilter)minificationFilter
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->_attr.layer, 0x206u, 3, v3);
  return v3[0];
}

- (CGFloat)rasterizationScale
{
  v6[1] = *MEMORY[0x1E69E9840];
  layer = self->_attr.layer;
  v3 = (*(layer + 11) >> 28) & 3;
  v6[0] = 0.0;
  if (v3)
  {
    return v3;
  }

  v4 = *(layer + 9);
  if (!v4 || (CA::AttrList::get(v4, 592, 0x12, v6) & 1) == 0)
  {
    CA::Layer::default_value(layer, 0x250u, 0x12, v6);
  }

  return v6[0];
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  CAMediaTimingInvalidate(self);
  layer = self->_attr.layer;
  if (layer)
  {
    while (1)
    {
      v4 = *layer;
      if (!*layer)
      {
        break;
      }

      v5 = *layer;
      atomic_compare_exchange_strong(layer, &v5, v4 - 1);
      if (v5 == v4)
      {
        if (v4 == 1)
        {
          CA::Layer::destroy(layer);
          CA::Layer::~Layer(layer);
          if (x_malloc_get_zone::once != -1)
          {
            dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
          }

          malloc_zone_free(malloc_zone, layer);
        }

        break;
      }
    }
  }

  self->_attr.magic = 1279351128;
  v6.receiver = self;
  v6.super_class = CALayer;
  [(CALayer *)&v6 dealloc];
}

- (void)display
{
  layer = self->_attr.layer;
  if ((*(layer + 1) & 0x60000) == 0)
  {
    if ((*(layer + 58) & 0x40) != 0)
    {
      v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
      if (!v4)
      {
        v4 = CA::Transaction::create(self);
      }

      v5 = *(v4 + 29);
      *(v4 + 29) = v5 + 1;
      if (!v5)
      {
        os_unfair_lock_lock(&CA::Transaction::transaction_lock);
      }

      if ((*(layer + 58) & 0x40) != 0)
      {
        if (*(layer + 136) == 1)
        {
          Weak = objc_loadWeak(layer + 16);
        }

        else
        {
          Weak = layer[16];
        }
      }

      else
      {
        Weak = 0;
      }

      CA::Transaction::unlock(v4);
      v7 = layer[2];

      [Weak displayLayer:v7];
    }

    else
    {
      v3 = layer[2];

      [v3 _display];
    }
  }
}

- (void)_display
{
  v86 = *MEMORY[0x1E69E9840];
  layer = self->_attr.layer;
  if ((*(layer + 1) & 0x60000) != 0)
  {
    return;
  }

  v5 = *(layer + 2);
  if (*(layer + 14) == 0.0 || *(layer + 15) == 0.0)
  {
    goto LABEL_5;
  }

  v6 = *(layer + 14);
  if ((v6 & 0x1000000) != 0)
  {
    v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
    if (!v7)
    {
      v7 = CA::Transaction::create(self);
    }

    v8 = *(v7 + 29);
    *(v7 + 29) = v8 + 1;
    if (!v8)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    if (layer[59])
    {
      if (layer[136] == 1)
      {
        Weak = objc_loadWeak(layer + 16);
      }

      else
      {
        Weak = *(layer + 16);
      }
    }

    else
    {
      Weak = 0;
    }

    CA::Transaction::unlock(v7);
    [Weak layerWillDraw:v5];
    v6 = *(layer + 14);
  }

  v9 = 1.0;
  if ((v6 & 0x200) != 0)
  {
    [v5 contentsScale];
    v9 = v10;
  }

  v11 = *(layer + 14);
  if (v11 < 0.0 || ((v12 = *(layer + 15), v12 >= 0.0) ? (v13 = v9 * v9 * v11 * v12 <= 268435456.0) : (v13 = 0), !v13))
  {
    if (x_log_get_api::once[0] != -1)
    {
      dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
    }

    v14 = x_log_get_api::log;
    if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
    {
      v21 = *(layer + 2);
      v22 = *(layer + 14);
      v23 = *(layer + 15);
      *buf = 138413570;
      *&buf[4] = v21;
      *&buf[12] = 2048;
      *&buf[14] = v22;
      *&buf[22] = 2048;
      *&buf[24] = v23;
      *&buf[32] = 2048;
      *&buf[34] = v9;
      *&buf[42] = 2048;
      *&buf[44] = v22 * v9;
      *&buf[52] = 2048;
      *&buf[54] = v23 * v9;
      _os_log_error_impl(&dword_183AA6000, v14, OS_LOG_TYPE_ERROR, "[%@ display]: Ignoring bogus layer size (%f, %f), contentsScale %f, backing store size (%f, %f)", buf, 0x3Eu);
    }

    [v5 setContents:0];
    return;
  }

  LODWORD(v3) = vcvtmd_s64_f64(v11 * v9 + 0.5);
  LODWORD(Weak) = vcvtmd_s64_f64(v12 * v9 + 0.5);
  if (v3 < 1 || Weak <= 0)
  {
LABEL_5:

    [v5 setContents:0];
    return;
  }

  v16 = *(layer + 15);
  v17 = image_format_for_contents_format(*(layer + 11) & 7, [v5 isOpaque]);
  v18 = [v5 _overrideImageFormat];
  if (v18 == -1)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v20 = [v5 minificationFilter];
  v80 = v20 != @"linear" && CAInternAtom(v20, 0) == 466;
  v24 = [v5 wantsExtendedDynamicRangeContent];
  if ([v5 preferredDynamicRange] == @"standard")
  {
    v25 = v24;
  }

  else
  {
    v25 = 1;
  }

  v79 = v25;
  v26 = CA::Render::format_rowbytes(v19, v3);
  if (is_mul_ok(v26, Weak))
  {
    v27 = v26 * Weak;
  }

  else
  {
    v27 = 0;
  }

  if (v27 < *MEMORY[0x1E69E9AC8])
  {
    v28 = v26;
    v82.isa = 0;
    LODWORD(v29) = v19;
    if ((v16 & 1) == 0)
    {
      LODWORD(v29) = default_contents_image_format(layer);
    }

    v30 = [*(layer + 2) _retainColorSpace];
    color = 0;
    space = v30;
    if (v29 == 36)
    {
      v84 = 0u;
      v85 = 0u;
      memset(buf, 0, sizeof(buf));
      CACGContextEvaluator::CACGContextEvaluator(buf, v3, Weak, v30);
      backing_callback(*&buf[56], layer);
      v31 = CACGContextEvaluator::suggested_format(buf, [v5 isOpaque], &color, v79);
      if (v31 == -1)
      {
        [v5 setContents:0];
        CGColorSpaceRelease(space);
        CACGContextEvaluator::~CACGContextEvaluator(buf);
        return;
      }

      LODWORD(v29) = v31;
      v32 = CFRetain(*&buf[32]);
      CGContextGetEDRTargetHeadroom();
      if (v33 == 0.0)
      {
        v34 = *(&v85 + 1);
      }

      else
      {
        v34 = v33;
      }

      CACGContextEvaluator::~CACGContextEvaluator(buf);
    }

    else
    {
      v32 = 0;
      v34 = 0.0;
    }

    if ((0xC99B4EB03uLL >> v29))
    {
      v45 = 13;
    }

    else
    {
      v45 = 17;
    }

    if ((v29 > 0x23) | (0x1FFFFFF2FuLL >> v29) & 1)
    {
      v29 = v29;
    }

    else
    {
      v29 = v45;
    }

    if (v29 != v19)
    {
      v46 = CA::Render::format_rowbytes(v29, v3);
      v28 = v46;
      if (is_mul_ok(v46, Weak))
      {
        v27 = v46 * Weak;
      }

      else
      {
        v27 = 0;
      }
    }

    v47 = CA::Render::aligned_malloc(v27, &v82, 0);
    if (!v47)
    {
      CGColorRelease(color);
      CGColorSpaceRelease(space);
      return;
    }

    v48 = v47;
    if ((v29 - 8) > 0x16)
    {
      v49 = 3;
    }

    else
    {
      v49 = dword_183E227B8[(v29 - 8)];
    }

    v57 = v32;
    v58 = space;
    if (CGColorSpaceGetNumberOfComponents(space) != v49)
    {
      CGColorSpaceRelease(space);
      v59 = CA::Render::format_default_colorspace(v29);
      v58 = CGColorSpaceRetain(v59);
    }

    if ((v79 & 1) != 0 || v34 > 1.0) && v29 <= 0x1C && ((0x17826000u >> v29))
    {
      Extended = CAColorSpaceCreateExtended(v58);
      CGColorSpaceRelease(v58);
      v58 = Extended;
    }

    v61 = CAGetCachedCGBitmapContext_(v48, v3, Weak, v29, v28, v58);
    if (!v61 || (v63 = *(v61 + 2)) == 0)
    {
      CA::Render::aligned_free(v48, v82.isa, v62);
      CGColorRelease(color);
      CGColorSpaceRelease(v58);
      return;
    }

    if (v57)
    {
      CGDisplayListDrawInContext();
    }

    else
    {
      backing_callback(*(v61 + 2), layer);
    }

    CGDisplayListRelease();
    CAReleaseCachedCGContext(v63);
    isa = v82.isa;
    MEMORY[0x1865EC180](*MEMORY[0x1E69E9A60], v48, v82.isa, 1, 1);
    v70 = CGDataProviderCreateWithData(isa, v48, isa, CA::Render::aligned_release);
    if (v29 == 9)
    {
      *buf = xmmword_183E20E00;
      v71 = CGImageMaskCreate(v3, Weak, 8uLL, 8uLL, v28, v70, buf, 1);
    }

    else
    {
      if (v29 > 0x23)
      {
        v73 = 0;
        v72 = 0;
        v74 = 0;
      }

      else
      {
        v72 = dword_183E22728[v29];
        v73 = dword_183E22600[v29];
        v74 = dword_183E22570[v29];
      }

      v71 = CGImageCreate(v3, Weak, v72, v73, v28, v58, v74, v70, 0, 1, kCGRenderingIntentDefault);
    }

    v75 = v71;
    CGDataProviderRelease(v70);
    CGImageSetHeadroom();
    [v5 setContents:{+[CATintedImage tintedImageWithCGImage:tint:copyFlags:](CATintedImage, "tintedImageWithCGImage:tint:copyFlags:", v75, color, v80)}];
    CGImageRelease(v75);
    CGColorRelease(color);
    CGColorSpaceRelease(v58);
    goto LABEL_134;
  }

  v82.isa = 0;
  v35 = CA::Transaction::ensure_compat(v26);
  v36 = *(v35 + 29);
  *(v35 + 29) = v36 + 1;
  if (!v36)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v37 = [v5 contents];
  v38 = v37;
  if (!v37)
  {
    goto LABEL_63;
  }

  v39 = CFGetTypeID(v37);
  if (CABackingStoreGetTypeID::once[0] != -1)
  {
    dispatch_once(CABackingStoreGetTypeID::once, &__block_literal_global_1020);
  }

  if (v39 == CABackingStoreGetTypeID::type)
  {
    v40 = CFRetain(v38);
  }

  else
  {
LABEL_63:
    if ((v16 & 1) == 0)
    {
      LODWORD(v19) = default_contents_image_format(layer);
    }

    v40 = CABackingStoreCreate();
    if (v40)
    {
      v41 = [*(layer + 2) _retainColorSpace];
      CABackingStoreSetColorSpace(v40, v41);
      CGColorSpaceRelease(v41);
      CABackingStoreInvalidate(v40, 0);
    }
  }

  if (([v5 drawsAsynchronously] & 1) != 0 || (v42 = objc_msgSend(v5, "acceleratesDrawing"), v42))
  {
    v42 = 256;
  }

  v43 = CABackingStoreSetDefaultAccelFlags(v42);
  if (v43 >= 0x100)
  {
    v44 = (8 * *(layer + 13)) >> 31;
    CA::Layer::mark(layer, v35, 2, 4);
  }

  else
  {
    v44 = 0;
  }

  CA::Transaction::unlock(v35);
  if (v40)
  {
    if ([v5 isOpaque])
    {
      v43 |= 1u;
    }

    else if ([v5 clearsContext])
    {
      v43 |= 2u;
    }

    if (v80)
    {
      if ([v5 drawsMipmapLevels])
      {
        v50 = 4;
      }

      else
      {
        v50 = 12;
      }

      v43 |= v50;
    }

    v51 = v43 | 0x400;
    v52 = *(layer + 1);
    if (v9 <= 1.9)
    {
      v51 = v43;
    }

    v53 = *(v35 + 5);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZN2CA5Layer8display_Ev_block_invoke;
    *&buf[24] = &__block_descriptor_85_e5_v8__0l;
    v54 = ~(v52 >> 15) & 0x80 | v51;
    v55 = v53 + 232;
    if (!v53)
    {
      v55 = 0;
    }

    *&buf[32] = layer;
    *&buf[40] = v40;
    *&v84 = __PAIR64__(Weak, v3);
    *(&v84 + 1) = __PAIR64__(v54, v19);
    LODWORD(v85) = v44;
    *&buf[48] = 0;
    *&buf[56] = v55;
    BYTE4(v85) = v79;
    x_blame_allocations((layer + 40), buf);
    if (v40 == v38)
    {
      v64 = *(v35 + 29);
      *(v35 + 29) = v64 + 1;
      if (!v64)
      {
        os_unfair_lock_lock(&CA::Transaction::transaction_lock);
      }

      CA::Layer::begin_change(layer, v35, @"contents", &v82, v56);
      v65 = *(v35 + 28);
      if ((v65 & 0x80000000) != 0 || (v66 = &layer[4 * v65], (v67 = *(v66 + 68)) == 0))
      {
        v68 = CA::Layer::thread_flags_(layer, v35);
        v67 = *v68;
      }

      else
      {
        v68 = (v66 + 272);
      }

      *v68 = v67 & 0xFFFFFEFF;
      CA::Layer::end_change(layer, v35, 131, @"contents", v82.isa);
      CA::Transaction::unlock(v35);
    }

    else
    {
      [v5 setContents:v40];
    }

    CFRelease(v40);
LABEL_134:
    v76 = *(layer + 14) | 2;
    if (v80)
    {
      v77 = 0x20000000;
    }

    else
    {
      v77 = 0;
    }

    *(layer + 13) = *(layer + 13) & 0x5FFFFFFF | v77;
    *(layer + 14) = v76;
  }
}

- (NSString)preferredDynamicRange
{
  v2 = ((*(self->_attr.layer + 12) >> 5) & 3) - 1;
  if (v2 > 2)
  {
    v3 = CADynamicRangeStandard;
  }

  else
  {
    v3 = off_1E6DECF00[v2];
  }

  return *v3;
}

- (CGColorSpace)_retainColorSpace
{
  v2 = CA::Layer::retain_context(self->_attr.layer);
  if (v2)
  {
    v3 = v2;
    v4 = CGColorSpaceRetain(*(v2 + 14));
    CA::Context::unref(v3, 0);
    return v4;
  }

  else
  {
    v6 = CAGetColorSpace(36);

    return CGColorSpaceRetain(v6);
  }
}

- (unsigned)_renderImageCopyFlags
{
  v3 = [(CALayer *)self minificationFilter];
  if (v3 == @"linear")
  {
    v5 = 0;
  }

  else
  {
    v4 = v3;
    v5 = CAInternAtom(v3, 0) == 466;
    if (((CAInternAtom(v4, 0) - 466) & 0xFFFFFEFF) == 0)
    {
      goto LABEL_7;
    }
  }

  v6 = [(CALayer *)self contentsScaling];
  if (v6 == @"stretch" || v6 != @"repeat" && ![(__CFString *)v6 isEqualToString:@"repeat"])
  {
    v5 |= 0x100u;
  }

LABEL_7:
  v7 = [(CALayer *)self contentsSwizzle];
  if (v7 != @"RGBA" && (v7 == @"AAAA" || [(__CFString *)v7 isEqualToString:@"AAAA"]))
  {
    v5 |= 8u;
  }

  return v5;
}

- (NSString)contentsSwizzle
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->_attr.layer, 0x99u, 3, v3);
  return v3[0];
}

- (CGSize)backgroundColorPhase
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 0.0;
  v5 = 0.0;
  CA::Layer::getter(self->_attr.layer, 0x3Fu, 0x14, &v4);
  v2 = v4;
  v3 = v5;
  result.height = v3;
  result.width = v2;
  return result;
}

- (float)minificationFilterBias
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CA::Layer::getter(self->_attr.layer, 0x207u, 0x11, &v3);
  return v3;
}

- (CALayerContentsFilter)magnificationFilter
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->_attr.layer, 0x1F4u, 3, v3);
  return v3[0];
}

- (double)borderOffset
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->_attr.layer, 0x4Bu, 0x12, v3);
  return *v3;
}

- (double)contentsEDRStrength
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->_attr.layer, 0x8Au, 0x12, v3);
  return *v3;
}

- (double)contentsCDRStrength
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->_attr.layer, 0x85u, 0x12, v3);
  return *v3;
}

- (double)contentsHeadroom
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->_attr.layer, 0x91u, 0x12, v3);
  return *v3;
}

- (double)contentsMaximumDesiredEDR
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->_attr.layer, 0x92u, 0x12, v3);
  return *v3;
}

- (double)displayMaximumDesiredEDR
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->_attr.layer, 0xCBu, 0x12, v3);
  return *v3;
}

- (CGFloat)borderWidth
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->_attr.layer, 0x4Du, 0x12, v3);
  return *v3;
}

- (CGColorRef)borderColor
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->_attr.layer, 0x4Au, 2, v3);
  return v3[0];
}

- (CGColor)contentsMultiplyColor
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->_attr.layer, 0x93u, 2, v3);
  return v3[0];
}

- (float)gain
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CA::Layer::getter(self->_attr.layer, 0x117u, 0x11, &v3);
  return v3;
}

- (float)shadowOpacity
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CA::Layer::getter(self->_attr.layer, 0x284u, 0x11, &v3);
  return v3;
}

- (CGColorRef)shadowColor
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->_attr.layer, 0x27Eu, 2, v3);
  return v3[0];
}

- (CGSize)shadowOffset
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 0.0;
  v5 = 0.0;
  CA::Layer::getter(self->_attr.layer, 0x283u, 0x14, &v4);
  v2 = v4;
  v3 = v5;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGFloat)shadowRadius
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->_attr.layer, 0x287u, 0x12, v3);
  return *v3;
}

- (CGPathRef)shadowPath
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->_attr.layer, 0x285u, 2, v3);
  return v3[0];
}

- (id)cornerContents
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->_attr.layer, 0x9Fu, 2, v3);
  return v3[0];
}

- (float)rimOpacity
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CA::Layer::getter(self->_attr.layer, 0x265u, 0x11, &v3);
  return v3;
}

- (CGColor)rimColor
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->_attr.layer, 0x264u, 2, v3);
  return v3[0];
}

- (double)rimWidth
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->_attr.layer, 0x267u, 0x12, v3);
  return *v3;
}

- (CGAffineTransform)contentsTransform
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  CA::Layer::getter(self->_attr.layer, 0x9Au, 0x17, retstr);
  return result;
}

- (id)compositingFilter
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->_attr.layer, 0x7Cu, 2, v3);
  return v3[0];
}

- (double)beginTime
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->_attr.layer, 0x41u, 0x12, v3);
  return *v3;
}

- (double)timeOffset
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->_attr.layer, 0x2C1u, 0x12, v3);
  return *v3;
}

- (double)duration
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->_attr.layer, 0xD3u, 0x12, v3);
  return *v3;
}

- (float)speed
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CA::Layer::getter(self->_attr.layer, 0x29Fu, 0x11, &v3);
  return v3;
}

- (float)repeatCount
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CA::Layer::getter(self->_attr.layer, 0x25Cu, 0x11, &v3);
  return v3;
}

- (double)repeatDuration
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->_attr.layer, 0x25Du, 0x12, v3);
  return *v3;
}

- (BOOL)autoreverses
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->_attr.layer, 0x38u, 7, &v3);
  return v3 != 0;
}

- (NSString)fillMode
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->_attr.layer, 0xFAu, 3, v3);
  return v3[0];
}

- (CGRect)contentsRect
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  *v7 = 0u;
  CA::Layer::getter(self->_attr.layer, 0x96u, 0x15, &v6);
  v3 = *(&v6 + 1);
  v2 = *&v6;
  v5 = v7[1];
  v4 = v7[0];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    kContentsStringHash = [@"contents" hash];
    kCATransitionClass = objc_opt_class();
    kCAPropertyAnimationClass = objc_opt_class();
    LINKED_DEFAULT_CONTINUOUS_CORNERS = dyld_program_sdk_at_least();
    if (CAIsAppSuspended::once != -1)
    {
      dispatch_once_f(&CAIsAppSuspended::once, 0, init_suspended);
    }

    atomic_load(is_suspended);
  }
}

- (NSArray)backgroundFilters
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->_attr.layer, 0x40u, 3, v3);
  return v3[0];
}

- (CACornerRadii)cornerRadii
{
  retstr->maxXMinY = 0u;
  retstr->minXMinY = 0u;
  retstr->minXMaxY = 0u;
  retstr->maxXMaxY = 0u;
  CA::Layer::getter(self->_attr.layer, 0xA3u, 0x19, retstr);
  return result;
}

- (void)layoutIfNeeded
{
  if ((*(self->_attr.layer + 1) & 0x60000) == 0)
  {
    v3 = CA::Transaction::ensure_compat(self);
    v4 = v3[29];
    v3[29] = v4 + 1;
    if (!v4)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    layer = self->_attr.layer;
    while (1)
    {
      v6 = *layer;
      if (!*layer)
      {
        break;
      }

      v7 = *layer;
      atomic_compare_exchange_strong(layer, &v7, v6 + 1);
      if (v7 == v6)
      {
        goto LABEL_10;
      }
    }

    layer = 0;
LABEL_10:
    v21 = layer;
    while (1)
    {
      v8 = CA::Layer::retain_parent(layer, v3);
      if (!v8)
      {
        break;
      }

      v9 = v8;
      v10 = v3[28];
      if ((v10 & 0x80000000) != 0 || (v11 = *(v8 + v10 + 68)) == 0)
      {
        v11 = *CA::Layer::thread_flags_(v8, v3);
      }

      if ((v11 & 0x40) == 0)
      {
        while (1)
        {
          v15 = *v9;
          if (!*v9)
          {
            goto LABEL_31;
          }

          v14 = *v9;
          atomic_compare_exchange_strong(v9, &v14, v15 - 1);
          if (v14 == v15)
          {
            if (v15 == 1)
            {
              CA::Layer::destroy(v9);
              CA::Layer::~Layer(v9);
              if (x_malloc_get_zone::once != -1)
              {
                dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
              }

              malloc_zone_free(malloc_zone, v9);
            }

            goto LABEL_31;
          }
        }
      }

      v21 = v9;
      if (layer)
      {
        while (1)
        {
          v12 = *layer;
          if (!*layer)
          {
            break;
          }

          v13 = *layer;
          atomic_compare_exchange_strong(layer, &v13, v12 - 1);
          if (v13 == v12)
          {
            if (v12 == 1)
            {
              CA::Layer::destroy(layer);
              CA::Layer::~Layer(layer);
              if (x_malloc_get_zone::once != -1)
              {
                dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
              }

              malloc_zone_free(malloc_zone, layer);
            }

            break;
          }
        }
      }

      layer = v9;
    }

LABEL_31:
    v16 = *(v21 + 16);
    if (v16)
    {
      v17 = CALayerRetain(v16);
    }

    else
    {
      v17 = 0;
    }

    CA::Transaction::unlock(v3);
    if (v17)
    {
      CA::Layer::update_if_needed_(v21);
      v18 = *(v21 + 16);
      if (v18)
      {
        CALayerRelease(v18);
      }
    }

    while (1)
    {
      v19 = *v21;
      if (!*v21)
      {
        break;
      }

      v20 = *v21;
      atomic_compare_exchange_strong(v21, &v20, v19 - 1);
      if (v20 == v19)
      {
        if (v19 == 1)
        {
          CA::Layer::destroy(v21);
          CA::Layer::~Layer(v21);
          if (x_malloc_get_zone::once != -1)
          {
            dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
          }

          malloc_zone_free(malloc_zone, v21);
        }

        return;
      }
    }
  }
}

- (void)displayIfNeeded
{
  if ([(CALayer *)self needsDisplay])
  {

    [(CALayer *)self display];
  }
}

- (BOOL)needsDisplay
{
  layer = self->_attr.layer;
  v3 = CA::Transaction::ensure_compat(self);
  v4 = v3[28];
  if ((v4 & 0x80000000) != 0 || (v5 = *(layer + v4 + 68)) == 0)
  {
    v5 = *CA::Layer::thread_flags_(layer, v3);
  }

  return (v5 >> 8) & 1;
}

- (CGFloat)zPosition
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->_attr.layer, 0x2FCu, 0x12, v3);
  return *v3;
}

- (NSString)toneMapMode
{
  v2 = (*(self->_attr.layer + 12) >> 3) & 3;
  v3 = @"automatic";
  if (v2 == 1)
  {
    v3 = @"never";
  }

  if (v2 == 2)
  {
    return @"ifSupported";
  }

  else
  {
    return &v3->isa;
  }
}

- (NSDictionary)actions
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->_attr.layer, 2u, 3, v3);
  return v3[0];
}

- (CGSize)size
{
  layer = self->_attr.layer;
  v3 = layer[14];
  v4 = layer[15];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CATransform3D)sublayerTransform
{
  *&retstr->m41 = 0u;
  *&retstr->m43 = 0u;
  *&retstr->m31 = 0u;
  *&retstr->m33 = 0u;
  *&retstr->m21 = 0u;
  *&retstr->m23 = 0u;
  *&retstr->m11 = 0u;
  *&retstr->m13 = 0u;
  CA::Layer::getter(self->_attr.layer, 0x2B5u, 0x16, retstr);
  return result;
}

- (BOOL)layoutIsActive
{
  v3 = CA::Transaction::ensure_compat(self);
  v4 = *(v3 + 29);
  *(v3 + 29) = v4 + 1;
  if (!v4)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  is_active = CA::Layer::layout_is_active(self->_attr.layer, v3, 0);
  CA::Transaction::unlock(v3);
  return is_active;
}

- (id)stateTransitionFrom:(id)a3 to:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = &stru_1EF20BE80;
  }

  v14 = 0u;
  v15 = 0u;
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = &stru_1EF20BE80;
  }

  v16 = 0uLL;
  v17 = 0uLL;
  v6 = [(CALayer *)self stateTransitions];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = *v15;
LABEL_9:
  v10 = 0;
  while (1)
  {
    if (*v15 != v9)
    {
      objc_enumerationMutation(v6);
    }

    v11 = *(*(&v14 + 1) + 8 * v10);
    if ([objc_msgSend(v11 "fromState")])
    {
      if ([objc_msgSend(v11 "toState")])
      {
        return v11;
      }
    }

    if (v8 == ++v10)
    {
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v13 count:16];
      if (v8)
      {
        goto LABEL_9;
      }

      return 0;
    }
  }
}

- (id)dependentStatesOfState:(id)a3
{
  Mutable = CFSetCreateMutable(0, 0, 0);
  addDependentStates(a3, Mutable, [(CALayer *)self states]);

  return Mutable;
}

- (id)stateWithName:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(CALayer *)self states];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v13;
LABEL_4:
  v8 = 0;
  while (1)
  {
    if (*v13 != v7)
    {
      objc_enumerationMutation(v4);
    }

    v9 = *(*(&v12 + 1) + 8 * v8);
    if ([objc_msgSend(v9 "name")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v11 count:16];
      v9 = 0;
      if (v6)
      {
        goto LABEL_4;
      }

      return v9;
    }
  }
}

- (void)removeState:(id)a3
{
  v5 = [(CALayer *)self states];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 indexOfObjectIdenticalTo:a3];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = v7;
      v9 = [v6 mutableCopy];
      [v9 removeObjectAtIndex:v8];
      [(CALayer *)self setStates:v9];
    }
  }
}

- (void)insertState:(id)a3 atIndex:(unsigned int)a4
{
  v7 = [-[CALayer states](self "states")];
  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v9 = v7;
  if ([v7 count] >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = [v9 count];
  }

  [v9 insertObject:a3 atIndex:v8];
  [(CALayer *)self setStates:v9];
}

- (CGRect)visibleRect
{
  [(CALayer *)self _visibleRectOfLayer:self];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)_visibleRectOfLayer:(id)a3
{
  v4 = [(CALayer *)self superlayer];
  if (v4)
  {
    [(CALayer *)v4 _visibleRectOfLayer:a3];
  }

  else
  {
    [a3 bounds];
  }

  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (void)_scrollRect:(CGRect)a3 fromLayer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [(CALayer *)self superlayer];

  [(CALayer *)v9 _scrollRect:a4 fromLayer:x, y, width, height];
}

- (void)_scrollPoint:(CGPoint)a3 fromLayer:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = [(CALayer *)self superlayer];

  [(CALayer *)v7 _scrollPoint:a4 fromLayer:x, y];
}

+ (CGFloat)cornerCurveExpansionFactor:(CALayerCornerCurve)curve
{
  v3 = [(NSString *)curve isEqualToString:@"continuous"];
  result = 1.528665;
  if (!v3)
  {
    return 1.0;
  }

  return result;
}

- (void)setPreferredDynamicRange:(id)a3
{
  if (a3 == @"standard")
  {
    v8 = 0;
    v9 = 0;
    v7 = 1;
  }

  else
  {
    v4 = CAInternAtom(a3, 0);
    v5 = v4 != 129;
    if (v4 == 299)
    {
      v5 = 0;
      v6 = 2;
    }

    else
    {
      v6 = v4 == 129;
    }

    v7 = v4 != 54 && v5;
    v8 = v4 != 54 && v4 == 299;
    if (v4 == 54)
    {
      v9 = 3;
    }

    else
    {
      v9 = v6;
    }
  }

  layer = self->_attr.layer;
  v11 = (*(layer + 12) >> 5) & 3;
  CA::Layer::set_bit_int(layer, 0x23Cu, 0x25u, 0x8Eu, 3, v9);
  if (v9 != v11)
  {
    v12 = 0.0;
    v13 = 0.0;
    if (v7 & 1) != 0 || ((v9 & 1) == 0 ? (v12 = 1.0) : (v12 = 0.0), (v9 & 1) == 0 ? (v13 = 0.0) : (v13 = 1.0), ((v9 | v8)))
    {
      [(CALayer *)self setContentsEDRStrength:v12];

      [(CALayer *)self setContentsCDRStrength:v13];
    }
  }
}

- (void)setShadowPath:(CGPathRef)shadowPath
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = dyld_program_sdk_at_least();
  NumberOfElements = CGPathGetNumberOfElements();
  NumberOfPoints = CGPathGetNumberOfPoints();
  if (NumberOfElements >> 24 || NumberOfPoints >> 24)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = CGPathGetNumberOfElements();
    [v10 raise:@"CALayerInvalidCGPath" format:{@"CGPathRef with unreasonable count: [Elements: %ld, Points: %ld]", v11, CGPathGetNumberOfPoints()}];
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_9:
    *&v13[0] = shadowPath;
    CA::Layer::setter(self->_attr.layer, 0x285, 2, v13);
    return;
  }

  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (shadowPath)
  {
    v8 = CFGetTypeID(shadowPath);
    if (v8 == CGPathGetTypeID())
    {
      v9 = shadowPath;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v12 = MEMORY[0x1865E8EB0](v9);
  *&v13[0] = v12;
  CA::Layer::setter(self->_attr.layer, 0x285, 2, v13);

  CGPathRelease(v12);
}

- (void)setShadowRadius:(CGFloat)shadowRadius
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = shadowRadius;
  CA::Layer::setter(self->_attr.layer, 0x287, 0x12, v3);
}

- (void)setShadowOffset:(CGSize)shadowOffset
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = shadowOffset;
  CA::Layer::setter(self->_attr.layer, 0x283, 0x14, &v3.width);
}

- (void)setShadowColor:(CGColorRef)shadowColor
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = shadowColor;
  CA::Layer::setter(self->_attr.layer, 0x27E, 2, v3);
}

- (void)setShadowOpacity:(float)shadowOpacity
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = shadowOpacity;
  CA::Layer::setter(self->_attr.layer, 0x284, 0x11, &v3);
}

- (void)setRimWidth:(double)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = a3;
  CA::Layer::setter(self->_attr.layer, 0x267, 0x12, v3);
}

- (void)setRimOpacity:(float)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CA::Layer::setter(self->_attr.layer, 0x265, 0x11, &v3);
}

- (void)setRimColor:(CGColor *)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = a3;
  CA::Layer::setter(self->_attr.layer, 0x264, 2, v3);
}

- (void)setContentsSwizzle:(id)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = a3;
  CA::Layer::setter(self->_attr.layer, 0x99, 3, v3);
}

- (void)setContentsMultiplyColor:(CGColor *)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = a3;
  CA::Layer::setter(self->_attr.layer, 0x93, 2, v3);
}

- (void)setCornerRadii:(CACornerRadii *)a3
{
  v6 = *MEMORY[0x1E69E9840];
  maxXMaxY = a3->maxXMaxY;
  v5[0] = a3->minXMaxY;
  v5[1] = maxXMaxY;
  minXMinY = a3->minXMinY;
  v5[2] = a3->maxXMinY;
  v5[3] = minXMinY;
  CA::Layer::setter(self->_attr.layer, 0xA3, 0x19, v5);
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = cornerRadius;
  CA::Layer::setter(self->_attr.layer, 0xA4, 0x12, v3);
}

- (void)setBorderWidth:(CGFloat)borderWidth
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = borderWidth;
  CA::Layer::setter(self->_attr.layer, 0x4D, 0x12, v3);
}

- (void)setBorderOffset:(double)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = a3;
  CA::Layer::setter(self->_attr.layer, 0x4B, 0x12, v3);
}

- (void)setBorderColor:(CGColorRef)borderColor
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = borderColor;
  CA::Layer::setter(self->_attr.layer, 0x4A, 2, v3);
}

- (void)setActions:(NSDictionary *)actions
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = actions;
  CA::Layer::setter(self->_attr.layer, 2, 3, v3);
}

- (void)setStyle:(NSDictionary *)style
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = style;
  CA::Layer::setter(self->_attr.layer, 0x2B4, 3, v3);
}

- (NSDictionary)style
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->_attr.layer, 0x2B4u, 3, v3);
  return v3[0];
}

- (void)setName:(NSString *)name
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = name;
  CA::Layer::setter(self->_attr.layer, 0x20F, 3, v3);
}

- (void)setCompositingFilter:(id)compositingFilter
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = compositingFilter;
  CA::Layer::setter(self->_attr.layer, 0x7C, 2, v3);
}

- (void)setBackgroundFilters:(NSArray *)backgroundFilters
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = backgroundFilters;
  CA::Layer::setter(self->_attr.layer, 0x40, 3, v3);
}

- (void)setFilters:(NSArray *)filters
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = filters;
  CA::Layer::setter(self->_attr.layer, 0x100, 3, v3);
}

- (void)setBackgroundColor:(CGColorRef)backgroundColor
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = backgroundColor;
  CA::Layer::setter(self->_attr.layer, 0x3E, 2, v3);
}

- (void)setDisplayMaximumDesiredEDR:(double)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = a3;
  CA::Layer::setter(self->_attr.layer, 0xCB, 0x12, v3);
}

- (void)setContentsMaximumDesiredEDR:(double)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = a3;
  CA::Layer::setter(self->_attr.layer, 0x92, 0x12, v3);
}

- (void)setContentsHeadroom:(double)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = a3;
  CA::Layer::setter(self->_attr.layer, 0x91, 0x12, v3);
}

- (void)setContentsEDRStrength:(double)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = a3;
  CA::Layer::setter(self->_attr.layer, 0x8A, 0x12, v3);
}

- (void)setContentsCDRStrength:(double)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = a3;
  CA::Layer::setter(self->_attr.layer, 0x85, 0x12, v3);
}

- (void)setGain:(float)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CA::Layer::setter(self->_attr.layer, 0x117, 0x11, &v3);
}

- (void)setMinificationFilterBias:(float)minificationFilterBias
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = minificationFilterBias;
  CA::Layer::setter(self->_attr.layer, 0x207, 0x11, &v3);
}

- (void)setMinificationFilter:(CALayerContentsFilter)minificationFilter
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = minificationFilter;
  CA::Layer::setter(self->_attr.layer, 0x206, 3, v3);
}

- (void)setMagnificationFilter:(CALayerContentsFilter)magnificationFilter
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = magnificationFilter;
  CA::Layer::setter(self->_attr.layer, 0x1F4, 3, v3);
}

- (void)setContentsDirtyRect:(CGRect)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CA::Layer::setter(self->_attr.layer, 0x88, 0x15, &v3.origin.x);
}

- (CGRect)contentsDirtyRect
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  *v7 = 0u;
  CA::Layer::getter(self->_attr.layer, 0x88u, 0x15, &v6);
  v3 = *(&v6 + 1);
  v2 = *&v6;
  v5 = v7[1];
  v4 = v7[0];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setCornerContentsCenter:(CGRect)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CA::Layer::setter(self->_attr.layer, 0xA0, 0x15, &v3.origin.x);
}

- (CGRect)cornerContentsCenter
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  *v7 = 0u;
  CA::Layer::getter(self->_attr.layer, 0xA0u, 0x15, &v6);
  v3 = *(&v6 + 1);
  v2 = *&v6;
  v5 = v7[1];
  v4 = v7[0];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setContentsCenter:(CGRect)contentsCenter
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = contentsCenter;
  CA::Layer::setter(self->_attr.layer, 0x86, 0x15, &v3.origin.x);
}

- (void)setContentsRect:(CGRect)contentsRect
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = contentsRect;
  CA::Layer::setter(self->_attr.layer, 0x96, 0x15, &v3.origin.x);
}

- (void)setCornerContents:(id)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = a3;
  CA::Layer::setter(self->_attr.layer, 0x9F, 2, v3);
}

- (void)setAnchorPointZ:(CGFloat)anchorPointZ
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = anchorPointZ;
  CA::Layer::setter(self->_attr.layer, 0x22, 0x12, v3);
}

- (CGFloat)anchorPointZ
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->_attr.layer, 0x22u, 0x12, v3);
  return *v3;
}

- (void)setFillMode:(id)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = a3;
  CA::Layer::setter(self->_attr.layer, 0xFA, 3, v3);
}

- (void)setAutoreverses:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CA::Layer::setter(self->_attr.layer, 0x38, 7, &v3);
}

- (void)setRepeatDuration:(double)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = a3;
  CA::Layer::setter(self->_attr.layer, 0x25D, 0x12, v3);
}

- (void)setRepeatCount:(float)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CA::Layer::setter(self->_attr.layer, 0x25C, 0x11, &v3);
}

- (void)setSpeed:(float)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CA::Layer::setter(self->_attr.layer, 0x29F, 0x11, &v3);
}

- (void)setDuration:(double)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = a3;
  CA::Layer::setter(self->_attr.layer, 0xD3, 0x12, v3);
}

- (void)setTimeOffset:(double)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = a3;
  CA::Layer::setter(self->_attr.layer, 0x2C1, 0x12, v3);
}

- (void)setBeginTime:(double)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = a3;
  CA::Layer::setter(self->_attr.layer, 0x41, 0x12, v3);
}

- (unsigned)_thread_flags
{
  v3 = CA::Transaction::ensure_compat(self);
  layer = self->_attr.layer;
  v5 = v3[28];
  if ((v5 & 0x80000000) != 0)
  {
    return *CA::Layer::thread_flags_(layer, v3);
  }

  v6 = *(layer + v5 + 68);
  if (!v6)
  {
    return *CA::Layer::thread_flags_(layer, v3);
  }

  return v6;
}

- (void)setContinuousCorners:(BOOL)a3
{
  if (a3)
  {
    v3 = @"continuous";
  }

  else
  {
    v3 = @"circular";
  }

  [(CALayer *)self setCornerCurve:v3];
}

- (void)setCornerCurve:(CALayerCornerCurve)cornerCurve
{
  if (cornerCurve == @"continuous")
  {
    goto LABEL_5;
  }

  if (cornerCurve == @"id0")
  {
    goto LABEL_8;
  }

  if (cornerCurve == @"id1")
  {
    v5 = 3;
    goto LABEL_9;
  }

  if ([(NSString *)cornerCurve isEqualToString:@"continuous"])
  {
LABEL_5:
    v5 = 1;
    goto LABEL_9;
  }

  if ([(NSString *)cornerCurve isEqualToString:@"id0"])
  {
LABEL_8:
    v5 = 2;
  }

  else if ([(NSString *)cornerCurve isEqualToString:@"id1"])
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

LABEL_9:
  layer = self->_attr.layer;

  CA::Layer::set_bit_int(layer, 0xA2u, 0x21u, 0xBBu, 3, v5);
}

- (CGSize)preferredFrameSize
{
  v12 = *MEMORY[0x1E69E9840];
  [(CALayer *)self sizeRequisition];
  v9 = v4;
  v10 = v3;
  if (v4 == 0.0 && v3 == 0.0)
  {
    [(CALayer *)self _preferredSize];
    v9 = v5;
    v10 = v6;
    [(CALayer *)self setSizeRequisition:?];
  }

  memset(&v11, 0, sizeof(v11));
  CA::Layer::get_frame_transform(self->_attr.layer, &v11, 1);
  v7 = vrndpq_f64(vmlaq_n_f64(vmulq_n_f64(*&v11.a, v9), *&v11.c, v10));
  v8 = v7.f64[1];
  result.width = v7.f64[0];
  result.height = v8;
  return result;
}

- (void)_validateLayoutHashHasChangedWithLayoutTime:(double)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = [(CALayer *)self _previousLayoutHash];
  if (v5)
  {
    if ([v5 isEqualToNumber:{-[CALayer _layoutHash](self, "_layoutHash")}])
    {
      kdebug_trace();
      if (BYTE9(xmmword_1ED4E982C) == 1)
      {
        v6 = [(CAPropertyAnimation *)CABasicAnimation animationWithKeyPath:@"backgroundColor"];
        Alpha = CGColorGetAlpha([(CALayer *)self backgroundColor]);
        SRGB = CGColorCreateSRGB(1.0, 0.0, 0.0, fmax(Alpha, 0.05));
        [(CABasicAnimation *)v6 setToValue:SRGB];
        [(CAAnimation *)v6 setAutoreverses:1];
        [(CAAnimation *)v6 setDuration:0.5];
        [(CALayer *)self addAnimation:v6 forKey:@"CADebug_RedundantLayoutFlash"];
        CGColorRelease(SRGB);
      }

      if (BYTE8(xmmword_1ED4E982C) == 1)
      {
        if (x_log_get_api::once[0] != -1)
        {
          dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
        }

        v9 = x_log_get_api::log;
        if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136315394;
          v11 = [-[CALayer debugDescription](self "debugDescription")];
          v12 = 2048;
          v13 = a3;
          _os_log_impl(&dword_183AA6000, v9, OS_LOG_TYPE_DEFAULT, "Redundant layout on %s which took %f ms", &v10, 0x16u);
        }
      }
    }

    [(CALayer *)self _setPreviousLayoutHash:0];
  }

  else
  {

    [(CALayer *)self _setPreviousLayoutHash:&unk_1EF22F8D0];
  }
}

- (void)_saveCurrentLayoutHash
{
  v3 = CA::Transaction::ensure_compat(self);
  v4 = *(v3 + 29);
  *(v3 + 29) = v4 + 1;
  if (!v4)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  if ([(CALayer *)self _previousLayoutHash])
  {
    [(CALayer *)self _setPreviousLayoutHash:[(CALayer *)self _layoutHash]];
  }

  CA::Transaction::unlock(v3);
}

- (id)_layoutHash
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3812000000;
  v11 = __Block_byref_object_copy__373;
  v12 = __Block_byref_object_dispose__374;
  v13 = "";
  v14 = 190295070;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3052000000;
  v7[3] = __Block_byref_object_copy__376;
  v7[4] = __Block_byref_object_dispose__377;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __22__CALayer__layoutHash__block_invoke;
  v6[3] = &unk_1E6DF7478;
  v6[4] = &v8;
  v6[5] = v7;
  v7[5] = v6;
  __22__CALayer__layoutHash__block_invoke(v6, self, 1);
  v2 = *(v9 + 13) ^ *(v9 + 12);
  v3 = -1028477387 * ((-2048144789 * (v2 ^ HIWORD(v2))) ^ ((-2048144789 * (v2 ^ HIWORD(v2))) >> 13));
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3 ^ HIWORD(v3)];
  _Block_object_dispose(v7, 8);
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __22__CALayer__layoutHash__block_invoke(uint64_t a1, void *a2, char a3)
{
  v37 = *MEMORY[0x1E69E9840];
  [a2 frame];
  v10 = [objc_msgSend(a2 sublayers];
  v11 = *(*(a1 + 32) + 8);
  v13 = *(v11 + 48);
  v12 = *(v11 + 52);
  for (i = 16; i != 32; i += 4)
  {
    HIDWORD(v15) = (461845907 * ((380141568 * *(v32 + i + 16)) | ((-862048943 * *(v32 + i + 16)) >> 17))) ^ v13;
    LODWORD(v15) = HIDWORD(v15);
    v13 = 5 * (v15 >> 19) - 430675100;
  }

  *(v11 + 48) = v13;
  *(v11 + 52) = v12 + 16;
  v16 = *(*(a1 + 32) + 8);
  HIDWORD(v17) = *(v16 + 48) ^ (461845907 * ((380141568 * v10) | ((-862048943 * v10) >> 17)));
  LODWORD(v17) = HIDWORD(v17);
  v18 = *(v16 + 52) + 4;
  *(v16 + 48) = 5 * (v17 >> 19) - 430675100;
  *(v16 + 52) = v18;
  if ((a3 & 1) == 0)
  {
    v19 = 0;
    v20 = *(*(a1 + 32) + 8);
    v22 = *(v20 + 48);
    v21 = *(v20 + 52);
    do
    {
      HIDWORD(v23) = (461845907 * ((380141568 * *(v32 + v19 + 16)) | ((-862048943 * *(v32 + v19 + 16)) >> 17))) ^ v22;
      LODWORD(v23) = HIDWORD(v23);
      v22 = 5 * (v23 >> 19) - 430675100;
      v19 += 4;
    }

    while (v19 != 16);
    *(v20 + 48) = v22;
    *(v20 + 52) = v21 + 16;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v24 = [a2 sublayers];
  v25 = [v24 countByEnumeratingWithState:&v33 objects:v32 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v34;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v34 != v27)
        {
          objc_enumerationMutation(v24);
        }

        (*(*(*(*(a1 + 40) + 8) + 40) + 16))();
      }

      v26 = [v24 countByEnumeratingWithState:&v33 objects:v32 count:16];
    }

    while (v26);
  }

  v29 = -2048144789 * (*(*(*(a1 + 32) + 8) + 52) ^ *(*(*(a1 + 32) + 8) + 48) ^ ((*(*(*(a1 + 32) + 8) + 52) ^ *(*(*(a1 + 32) + 8) + 48)) >> 16));
  return (-1028477387 * (v29 ^ (v29 >> 13))) ^ ((-1028477387 * (v29 ^ (v29 >> 13))) >> 16);
}

- (void)drawInContext:(CGContextRef)ctx
{
  if ((*(self->_attr.layer + 58) & 0x80) != 0)
  {
    v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
    if (!v8)
    {
      v8 = CA::Transaction::create(self);
    }

    v9 = *(v8 + 29);
    *(v8 + 29) = v9 + 1;
    if (!v9)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    layer = self->_attr.layer;
    if ((*(layer + 58) & 0x80) != 0)
    {
      if (*(layer + 136) == 1)
      {
        Weak = objc_loadWeak(layer + 16);
      }

      else
      {
        Weak = layer[16];
      }
    }

    else
    {
      Weak = 0;
    }

    CA::Transaction::unlock(v8);

    [Weak drawLayer:self inContext:ctx];
  }

  else
  {
    v5 = CA::Transaction::ensure_compat(self) + 104;
    while (1)
    {
      v5 = *v5;
      if (!v5)
      {
        break;
      }

      if (v5[28])
      {
        if (v5[24])
        {
          return;
        }

        break;
      }
    }

    v6 = [(CALayer *)self actionForKey:@"onDraw"];
    if (v6)
    {
      v7 = v6;
      v12 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{ctx, @"context", 0}];
      [v7 runActionForKey:@"onDraw" object:self arguments:v12];
    }
  }
}

- (void)_contentsFormatDidChange:(id)a3
{
  layer = self->_attr.layer;
  v4 = [a3 integerValue];
  v5 = v4;
  v6 = CA::Transaction::ensure_compat(v4);
  v7 = layer[2];
  v8 = *(v6 + 29);
  *(v6 + 29) = v8 + 1;
  if (!v8)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  if ([v7 contents] && (layer[7] & 2) != 0 && (*(layer + 60) & 1) == 0)
  {
    *(layer + 11) = *(layer + 11) & 0xFFFFFFF8 | v5 & 7;
    [v7 setNeedsDisplay];
    CA::Layer::set_commit_needed(layer, v6, 1);
  }

  CA::Transaction::unlock(v6);
}

- (void)_colorSpaceDidChange
{
  layer = self->_attr.layer;
  v3 = CA::Transaction::ensure_compat(self);
  v4 = layer[2];
  v5 = *(v3 + 29);
  *(v3 + 29) = v5 + 1;
  if (!v5)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v6 = [v4 contents];
  v7 = v6;
  if (v6)
  {
    v8 = CFGetTypeID(v6);
    if (CABackingStoreGetTypeID::once[0] != -1)
    {
      dispatch_once(CABackingStoreGetTypeID::once, &__block_literal_global_1020);
    }

    if (v8 == CABackingStoreGetTypeID::type)
    {
      v9 = [layer[2] _retainColorSpace];
      if (CABackingStoreSetColorSpace(v7, v9))
      {
        [v4 setNeedsDisplay];
      }

      CGColorSpaceRelease(v9);
      LODWORD(v7) = 0;
    }

    else
    {
      LODWORD(v7) = 1;
    }
  }

  if ([v4 backgroundColor] || objc_msgSend(v4, "borderColor") || objc_msgSend(v4, "contentsMultiplyColor"))
  {
    LODWORD(v7) = v7 | 0x8000;
  }

  if ([v4 shadowColor])
  {
    v10 = v7 | 0x2000;
  }

  else
  {
    v10 = v7;
  }

  if (v10)
  {
    CA::Layer::set_commit_needed(layer, v3, v10);
  }

  CA::Transaction::unlock(v3);
}

- (void)_renderBorderInContext:(CGContext *)a3
{
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v5)
  {
    v5 = CA::Transaction::create(self);
  }

  v6 = *(v5 + 29);
  *(v5 + 29) = v6 + 1;
  if (!v6)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  [(CALayer *)self borderWidth];
  v8 = v7;
  v9 = [(CALayer *)self borderColor];
  if (v8 > 0.0)
  {
    v10 = v9;
    if (v9)
    {
      if (CGColorGetAlpha(v9) > 0.0)
      {
        CGContextSaveGState(a3);
        if (![(CALayer *)self edgeAntialiasingMask])
        {
          CGContextSetShouldAntialias(a3, 0);
        }

        CGContextSetStrokeColorWithColor(a3, v10);
        CGContextSetLineWidth(a3, v8);
        [(CALayer *)self bounds];
        v11 = v8 * 0.5;
        v25 = CGRectInset(v24, v8 * 0.5, v8 * 0.5);
        x = v25.origin.x;
        y = v25.origin.y;
        width = v25.size.width;
        height = v25.size.height;
        [(CALayer *)self cornerRadius];
        v17 = v16;
        [(CALayer *)self borderOffset];
        v19 = v18;
        v20 = v17 - v11;
        if (v18 != 0.0)
        {
          v21 = -v18;
          v26.origin.x = x;
          v26.origin.y = y;
          v26.size.width = width;
          v26.size.height = height;
          v27 = CGRectInset(v26, v21, -v19);
          x = v27.origin.x;
          y = v27.origin.y;
          width = v27.size.width;
          height = v27.size.height;
          if (v19 + v20 >= 0.0)
          {
            v20 = v19 + v20;
          }

          else
          {
            v20 = 0.0;
          }
        }

        CA_CGContextAddRoundRect(a3, [(CALayer *)self _continuousCorners], x, y, width, height, v20);
        CA::Transaction::unlock(v5);
        CGContextStrokePath(a3);
        v22 = *(v5 + 29);
        *(v5 + 29) = v22 + 1;
        if (!v22)
        {
          os_unfair_lock_lock(&CA::Transaction::transaction_lock);
        }

        CGContextRestoreGState(a3);
      }
    }
  }

  CA::Transaction::unlock(v5);
}

- (void)_renderSublayersInContext:(CGContext *)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v5)
  {
    v5 = CA::Transaction::create(self);
  }

  v6 = *(v5 + 29);
  *(v5 + 29) = v6 + 1;
  if (!v6)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v7 = [(NSArray *)[(CALayer *)self sublayers] copy];
  CA::Transaction::unlock(v5);
  v8 = [v7 count];
  if (v8)
  {
    v9 = v8;
    for (i = 0; i != v9; ++i)
    {
      v11 = [v7 objectAtIndex:i];
      memset(&v16, 0, sizeof(v16));
      CA::Layer::get_frame_transform(v11[2], &v16, 0);
      if (CA_CGAffineTransformIsValid())
      {
        CGContextSaveGState(a3);
        memset(&v15, 0, sizeof(v15));
        CGContextGetBaseCTM();
        transform = v16;
        CGContextConcatCTM(a3, &transform);
        t1 = v16;
        v12 = v15;
        CGAffineTransformConcat(&transform, &t1, &v12);
        CGContextSetBaseCTM();
        [v11 renderInContext:a3];
        transform = v15;
        CGContextSetBaseCTM();
        CGContextRestoreGState(a3);
      }
    }
  }
}

- (void)_renderForegroundInContext:(CGContext *)a3
{
  v113 = *MEMORY[0x1E69E9840];
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v5)
  {
    v5 = CA::Transaction::create(self);
  }

  v6 = *(v5 + 29);
  *(v5 + 29) = v6 + 1;
  if (!v6)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  tinted_contents = [(CALayer *)self contents];
  if (tinted_contents)
  {
    [(CALayer *)self bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = CFGetTypeID(tinted_contents);
    if (v16 == CGImageGetTypeID())
    {
LABEL_7:
      v17 = 0;
      goto LABEL_47;
    }

    if (CABackingStoreGetTypeID::once[0] != -1)
    {
      dispatch_once(CABackingStoreGetTypeID::once, &__block_literal_global_1020);
    }

    if (v16 == CABackingStoreGetTypeID::type)
    {
      v18 = CABackingStoreCopyCGImage(tinted_contents);
      v19 = CABackingStoreCopyTintColor(tinted_contents);
      if (v19)
      {
        v20 = v19;
        tinted_contents = create_tinted_contents(v18, v19, 0);
        CGImageRelease(v18);
        CGColorRelease(v20);
LABEL_17:
        v17 = 1;
        goto LABEL_47;
      }

      v17 = 1;
LABEL_35:
      tinted_contents = v18;
      goto LABEL_47;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [(mach_port_t *)tinted_contents image];
      if (v18)
      {
        v21 = [(mach_port_t *)tinted_contents tint];
        if (v21)
        {
          tinted_contents = create_tinted_contents(v18, v21, 0);
          goto LABEL_17;
        }

        v17 = 0;
        goto LABEL_35;
      }

LABEL_33:
      v17 = 0;
      tinted_contents = 0;
      goto LABEL_47;
    }

    if (CAMachPortGetTypeID::once[0] != -1)
    {
      dispatch_once(CAMachPortGetTypeID::once, &__block_literal_global_6212);
    }

    if (v16 == CAMachPortGetTypeID::type)
    {
      v22 = IOSurfaceLookupFromMachPort(tinted_contents[4]);
      tinted_contents = v22;
      if (!v22)
      {
        goto LABEL_7;
      }

      PixelFormat = IOSurfaceGetPixelFormat(v22);
      v24 = CA::Render::fourcc_to_format(PixelFormat);
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v25 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x178uLL, 0xDEEC3011uLL);
      v26 = v25;
      if (v25)
      {
        CA::Render::Surface::Surface(v25, tinted_contents, v24, 2, 0, 0, 0);
      }

      v27 = *(v26 + 16);
      v28 = (*(*v26 + 104))(v26);
      if (v28 > 0x23)
      {
        LOBYTE(v29) = 0;
      }

      else
      {
        v29 = dword_183E22570[v28];
      }

      tinted_contents = CACreateIOSurfaceBackedCGImage(v27, v29, *(v26 + 7));
      v17 = 1;
      if (atomic_fetch_add(v26 + 2, 0xFFFFFFFF) != 1)
      {
LABEL_47:
        CGContextSaveGState(a3);
        if (!tinted_contents)
        {
          CA::Transaction::unlock(v5);
          [(CALayer *)self _prepareContext:a3];
          v117.origin.x = v9;
          v117.origin.y = v11;
          v117.size.width = v13;
          v117.size.height = v15;
          CGContextClipToRect(a3, v117);
          CGContextBeginTransparencyLayer(a3, 0);
          [CA::Layer::layer_being_drawn(self->_attr.layer v5];
          CGContextEndTransparencyLayer(a3);
          v54 = *(v5 + 29);
          *(v5 + 29) = v54 + 1;
          if (!v54)
          {
            os_unfair_lock_lock(&CA::Transaction::transaction_lock);
          }

          goto LABEL_145;
        }

        layer = self->_attr.layer;
        Width = CGImageGetWidth(tinted_contents);
        Height = CGImageGetHeight(tinted_contents);
        v39 = layer[14];
        if ((v39 & 0x200) != 0)
        {
          [(CALayer *)self contentsScale];
          Width = Width / v40;
          v39 = layer[14];
          Height = Height / v40;
        }

        v98 = 0.0;
        v99 = Width;
        v100 = Height;
        v97 = 0.0;
        if ((v39 & 0x100) != 0)
        {
          [(CALayer *)self contentsRect];
          if ((*(self->_attr.layer + 1) & 0x400000) == 0)
          {
            v42 = 1.0 - (v42 + v44);
          }

          Width = v43 * Width;
          Height = v44 * Height;
          v97 = -(v100 * v42);
          v98 = -(v99 * v41);
        }

        v105 = 0uLL;
        v103 = 0.0;
        v104 = 0.0;
        v45 = (layer[11] >> 3) & 0xF;
        transform.a = v9;
        transform.b = v11;
        transform.c = v13;
        transform.d = v15;
        if (v13 < 0.0)
        {
          transform.a = v13 + v9;
          transform.c = -v13;
        }

        if (v15 < 0.0)
        {
          transform.b = v15 + v11;
          transform.d = -v15;
        }

        t1.a = Width;
        t1.b = Height;
        CA::Render::compute_gravity_transform(v45, &transform.a, &t1, &v105, &v103);
        t1.a = v103;
        t1.b = 0.0;
        t1.c = 0.0;
        t1.d = v104;
        *&t1.tx = v105;
        [(CALayer *)self contentsTransform];
        CGAffineTransformConcat(&transform, &t1, &t2);
        CGContextConcatCTM(a3, &transform);
        if ((*(self->_attr.layer + 1) & 0x400000) == 0)
        {
          transform.b = 0.0;
          transform.c = 0.0;
          transform.a = 1.0;
          *&transform.d = xmmword_183E20F00;
          transform.ty = Height;
          CGContextConcatCTM(a3, &transform);
        }

        if (![(CALayer *)self edgeAntialiasingMask])
        {
          CGContextSetShouldAntialias(a3, 0);
        }

        v114.origin.x = 0.0;
        v114.origin.y = 0.0;
        v114.size.width = Width;
        v114.size.height = Height;
        CGContextClipToRect(a3, v114);
        if ((v17 & 1) == 0)
        {
          CGImageRetain(tinted_contents);
        }

        v46 = layer[13];
        v47 = [(CALayer *)self contentsMultiplyColor];
        v48 = [(CALayer *)self contentsSwizzle];
        if (v48 == @"RGBA" || ![(__CFString *)v48 isEqualToString:@"AAAA"])
        {
          v51 = 0;
          if (!v47 || v47 == white)
          {
LABEL_74:
            if (!(layer[14] & 0x80 | v46 & 0x10000) || (v53 = v103, v52 = v104, v103 == 1.0) && v104 == 1.0)
            {
              CA::Transaction::unlock(v5);
              if (CGImageIsMask(tinted_contents))
              {
                v115.origin.y = v97;
                v115.origin.x = v98;
                v115.size.width = v99;
                v115.size.height = v100;
                CGContextClipToMask(a3, v115, tinted_contents);
                CGContextSetFillColorWithColor(a3, v47);
                v116.origin.y = v97;
                v116.origin.x = v98;
                v116.size.width = v99;
                v116.size.height = v100;
                CGContextFillRect(a3, v116);
              }

              else
              {
                if (v51)
                {
                  v55 = v51;
                }

                else
                {
                  v55 = tinted_contents;
                }

                v118.origin.y = v97;
                v118.origin.x = v98;
                v118.size.width = v99;
                v118.size.height = v100;
                CGContextDrawImage(a3, v118, v55);
              }

              v56 = *(v5 + 29);
              *(v5 + 29) = v56 + 1;
              if (v56)
              {
                goto LABEL_86;
              }
            }

            else
            {
              if (v51)
              {
                v57 = v51;
              }

              else
              {
                v57 = tinted_contents;
              }

              [(CALayer *)self contentsCenter];
              v59 = v58;
              v61 = v60;
              v63 = v62;
              v65 = v64;
              CGContextBeginTransparencyLayer(a3, 0);
              CGContextSetBlendMode(a3, kCGBlendModeCopy);
              if ((*(self->_attr.layer + 1) & 0x400000) == 0)
              {
                v61 = 1.0 - (v61 + v65);
              }

              v66 = [(CALayer *)self literalContentsCenter];
              if (v63 == 0.0)
              {
                if (v66)
                {
                  v63 = 0.01;
                }

                else
                {
                  v63 = 1.0 / Width;
                }

                v59 = v59 + v63 * -0.5;
              }

              if (v65 == 0.0)
              {
                if (v66)
                {
                  v65 = 0.01;
                }

                else
                {
                  v65 = 1.0 / Height;
                }

                v61 = v61 + v65 * -0.5;
              }

              transform.a = 0.0;
              transform.b = v59 * Width;
              transform.c = (v59 + v63) * Width;
              transform.d = Width;
              t2.a = 0.0;
              v67 = Width + (transform.c - Width) / v53;
              if (Width >= v59 * Width / v53)
              {
                v68 = v59 * Width / v53;
              }

              else
              {
                v68 = Width;
              }

              v69 = 0.0;
              if (v68 < 0.0)
              {
                v68 = 0.0;
              }

              if (Width < v67)
              {
                v67 = Width;
              }

              if (v67 < 0.0)
              {
                v67 = 0.0;
              }

              t2.b = v68;
              t2.c = v67;
              t2.d = Width;
              if (v68 > v67)
              {
                t2.b = (v67 + v68) * 0.5;
                t2.c = t2.b;
              }

              t1.a = 0.0;
              t1.b = v61 * Height;
              t1.c = (v61 + v65) * Height;
              t1.d = Height;
              v109 = 0;
              v70 = v61 * Height / v52;
              v71 = Height + (t1.c - Height) / v52;
              if (Height < v70)
              {
                v70 = Height;
              }

              if (v70 < 0.0)
              {
                v70 = 0.0;
              }

              if (Height < v71)
              {
                v71 = Height;
              }

              if (v71 >= 0.0)
              {
                v69 = v71;
              }

              v110 = v70;
              v111 = v69;
              v112 = Height;
              if (v70 > v69)
              {
                v110 = (v69 + v70) * 0.5;
                v111 = v110;
              }

              CGContextSetShouldAntialias(a3, 0);
              CA::Transaction::unlock(v5);
              v72 = 0;
              v73 = 0.0;
              v74 = 0.0;
              do
              {
                ++v72;
                v90 = *(&t1.a + v72);
                v93 = v73;
                v88 = *(&v109 + v72);
                v92 = v88 - v73;
                if (v88 - v73 > 0.0)
                {
                  v75 = 0;
                  ty = -v74;
                  rect = v90 - v74;
                  v89 = -(v90 - v74);
                  v76 = 0.0;
                  v95 = 0.0;
                  sy = v92 / (v90 - v74);
                  do
                  {
                    v77 = v95;
                    ++v75;
                    v94 = *(&t2.a + v75);
                    v95 = *(&transform.a + v75);
                    v78 = v94 - v76;
                    if (v94 - v76 > 0.0)
                    {
                      v79 = v95 - v77;
                      if ((v46 & 0x10000) != 0)
                      {
                        v80 = v103 * v76;
                        v81 = v104 * v93;
                        v82 = v103 * v78;
                        v83 = v104 * v92;
                        v96 = rect;
                        v84 = v104 * v93;
                        if ((*(self->_attr.layer + 1) & 0x400000) == 0)
                        {
                          v119.origin.x = v80;
                          v119.origin.y = v104 * v93;
                          v119.size.width = v82;
                          v119.size.height = v104 * v92;
                          v84 = CGRectGetMaxY(v119) - rect;
                          v96 = v89;
                        }

                        v85 = -v77;
                        i = v80;
                        while (1)
                        {
                          v120.origin.x = v80;
                          v120.origin.y = v81;
                          v120.size.width = v82;
                          v120.size.height = v83;
                          if (v84 >= CGRectGetMaxY(v120))
                          {
                            break;
                          }

                          v121.origin.x = i;
                          v121.origin.y = v84;
                          v121.size.width = v79;
                          v121.size.height = rect;
                          if (CGRectGetMaxY(v121) <= v81)
                          {
                            break;
                          }

                          for (i = v80; ; i = i + v79)
                          {
                            v122.origin.x = v80;
                            v122.origin.y = v81;
                            v122.size.width = v82;
                            v122.size.height = v83;
                            if (i >= CGRectGetMaxX(v122))
                            {
                              break;
                            }

                            CGContextSaveGState(a3);
                            CGContextScaleCTM(a3, 1.0 / v103, 1.0 / v104);
                            v123.origin.x = i;
                            v123.origin.y = v84;
                            v123.size.width = v79;
                            v123.size.height = rect;
                            CGContextClipToRect(a3, v123);
                            CGContextTranslateCTM(a3, i, v84);
                            CGContextTranslateCTM(a3, v85, ty);
                            v124.origin.y = v97;
                            v124.origin.x = v98;
                            v124.size.width = v99;
                            v124.size.height = v100;
                            CGContextDrawImage(a3, v124, v57);
                            CGContextRestoreGState(a3);
                          }

                          v84 = v84 + v96;
                        }
                      }

                      else
                      {
                        CGContextSaveGState(a3);
                        v125.origin.x = v76;
                        v125.size.height = v92;
                        v125.origin.y = v93;
                        v125.size.width = v94 - v76;
                        CGContextClipToRect(a3, v125);
                        CGContextTranslateCTM(a3, v76, v93);
                        CGContextScaleCTM(a3, v78 / v79, sy);
                        CGContextTranslateCTM(a3, -v77, ty);
                        v126.origin.y = v97;
                        v126.origin.x = v98;
                        v126.size.width = v99;
                        v126.size.height = v100;
                        CGContextDrawImage(a3, v126, v57);
                        CGContextRestoreGState(a3);
                      }
                    }

                    v76 = v94;
                  }

                  while (v75 != 3);
                }

                v73 = v88;
                v74 = v90;
              }

              while (v72 != 3);
              CGContextEndTransparencyLayer(a3);
              v87 = *(v5 + 29);
              *(v5 + 29) = v87 + 1;
              if (v87)
              {
LABEL_86:
                if (!v51)
                {
                  goto LABEL_144;
                }

                goto LABEL_143;
              }
            }

            os_unfair_lock_lock(&CA::Transaction::transaction_lock);
            if (!v51)
            {
LABEL_144:
              CGImageRelease(tinted_contents);
LABEL_145:
              CGContextRestoreGState(a3);
              goto LABEL_146;
            }

LABEL_143:
            CGImageRelease(v51);
            goto LABEL_144;
          }

          v50 = create_tinted_contents(tinted_contents, v47, 0);
        }

        else
        {
          if (v47)
          {
            v49 = v47;
          }

          else
          {
            v49 = white;
          }

          v50 = create_tinted_contents(tinted_contents, v49, 1);
        }

        v51 = v50;
        goto LABEL_74;
      }

LABEL_46:
      (*(*v26 + 16))(v26);
      goto LABEL_47;
    }

    v30 = [(mach_port_t *)tinted_contents CA_copyRenderValue];
    v26 = v30;
    if (!v30)
    {
      goto LABEL_33;
    }

    v31 = *(v30 + 12);
    if (v31 == 57)
    {
      v33 = *(v30 + 16);
      v34 = (*(*v30 + 104))(v30);
      if (v34 > 0x23)
      {
        LOBYTE(v35) = 0;
      }

      else
      {
        v35 = dword_183E22570[v34];
      }

      v32 = CACreateIOSurfaceBackedCGImage(v33, v35, *(v26 + 7));
    }

    else
    {
      if (v31 != 23)
      {
        v17 = 0;
        tinted_contents = 0;
        goto LABEL_45;
      }

      v32 = CA::Render::Image::copy_cgimage(v30);
    }

    tinted_contents = v32;
    v17 = 1;
LABEL_45:
    if (atomic_fetch_add(v26 + 2, 0xFFFFFFFF) != 1)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_146:
  CA::Transaction::unlock(v5);
}

- (void)_renderBackgroundInContext:(CGContext *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v5)
  {
    v5 = CA::Transaction::create(self);
  }

  v6 = *(v5 + 29);
  *(v5 + 29) = v6 + 1;
  if (!v6)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v7 = [(CALayer *)self backgroundColor];
  v8 = v7;
  if (v7 && CGColorGetAlpha(v7) > 0.0)
  {
    [(CALayer *)self bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [(CALayer *)self cornerRadius];
    v18 = v17;
    memset(&v27, 0, sizeof(v27));
    memset(&v26, 0, sizeof(v26));
    Pattern = CGColorGetPattern(v8);
    if (Pattern)
    {
      CGContextGetBaseCTM();
      v27 = v22;
      CGContextGetCTM(&v22, a3);
      v26 = v22;
      if ((*(self->_attr.layer + 1) & 0x400000) == 0)
      {
        v22.c = 0.0;
        *&v22.a = 0x3FF0000000000000uLL;
        *&v22.d = xmmword_183E20F00;
        v22.ty = v16;
        t2 = v26;
        CGAffineTransformConcat(&v26, &v22, &t2);
        CGPatternGetStep();
        v29.height = fmod(v16, v20);
        v29.width = 0.0;
        CGContextSetPatternPhase(a3, v29);
      }

      if (CGPatternGetShading())
      {
        CGAffineTransformMakeScale(&t2, v14, v16);
        v24 = v26;
        CGAffineTransformConcat(&v22, &t2, &v24);
        v26 = v22;
      }

      v22 = v26;
      CGContextSetBaseCTM();
    }

    CGContextSaveGState(a3);
    if (![(CALayer *)self edgeAntialiasingMask])
    {
      CGContextSetShouldAntialias(a3, 0);
    }

    CGContextSetFillColorWithColor(a3, v8);
    if ([(CALayer *)self _usesCornerRadii])
    {
      v23 = 0u;
      memset(&v22, 0, sizeof(v22));
      if (self)
      {
        [(CALayer *)self cornerRadii:*&v22.a];
      }

      CA_CGContextAddUnevenRoundRect(a3, &v22, v10, v12, v14, v16);
    }

    else
    {
      CA_CGContextAddRoundRect(a3, [(CALayer *)self _continuousCorners], v10, v12, v14, v16, v18);
    }

    CA::Transaction::unlock(v5);
    CGContextFillPath(a3);
    v21 = *(v5 + 29);
    *(v5 + 29) = v21 + 1;
    if (!v21)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    CGContextRestoreGState(a3);
    if (Pattern)
    {
      v22 = v27;
      CGContextSetBaseCTM();
    }
  }

  CA::Transaction::unlock(v5);
}

- (void)renderInContext:(CGContextRef)ctx
{
  v51 = *MEMORY[0x1E69E9840];
  if ([(CALayer *)self isHidden])
  {
    return;
  }

  v5 = [(CALayer *)self opacity];
  if (v6 <= 0.0)
  {
    return;
  }

  v7 = v6;
  if ((*(self->_attr.layer + 1) & 0x60000) == 0)
  {
    [(CALayer *)self layoutIfNeeded];
    v5 = [(CALayer *)self displayIfNeeded];
  }

  v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v8)
  {
    v8 = CA::Transaction::create(v5);
  }

  [(CALayer *)self shadowOpacity];
  v10 = v9;
  v11 = [(CALayer *)self masksToBounds];
  v12 = *(v8 + 29);
  *(v8 + 29) = v12 + 1;
  if (!v12)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v13 = [(CALayer *)self mask];
  CA::Transaction::unlock(v8);
  if (v11)
  {
    [(CALayer *)self bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    CGContextSaveGState(ctx);
    if ([(CALayer *)self _usesCornerRadii])
    {
      v50 = 0u;
      memset(&v49, 0, sizeof(v49));
      [(CALayer *)self cornerRadii];
      CA_CGContextAddUnevenRoundRect(ctx, &v49, v15, v17, v19, v21);
      CGContextClip(ctx);
    }

    else
    {
      [(CALayer *)self cornerRadius];
      if (v22 <= 0.0)
      {
        v53.origin.x = v15;
        v53.origin.y = v17;
        v53.size.width = v19;
        v53.size.height = v21;
        CGContextClipToRect(ctx, v53);
      }

      else
      {
        CA_CGContextAddRoundRect(ctx, [(CALayer *)self _continuousCorners], v15, v17, v19, v21, v22);
        CGContextClip(ctx);
      }
    }
  }

  if (v13)
  {
    CGContextBeginTransparencyLayer(ctx, 0);
  }

  CGContextSaveGState(ctx);
  v23 = v7 < 1.0;
  if (v7 < 1.0)
  {
    CGContextSetAlpha(ctx, v7);
  }

  v24 = [(CALayer *)self compositingFilter];
  if (v24)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = CAInternAtom(v24, 0);
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_61;
      }

      v25 = CAInternAtom([(__CFString *)v24 type], 0);
    }

    if (v25 <= 292)
    {
      if (v25 <= 184)
      {
        if (v25 <= 106)
        {
          if (v25 == 99)
          {
            v26 = kCGBlendModeClear;
            goto LABEL_79;
          }

          if (v25 == 105)
          {
            v26 = kCGBlendModeColorBurn;
            goto LABEL_79;
          }
        }

        else
        {
          switch(v25)
          {
            case 107:
              v26 = kCGBlendModeColorDodge;
              goto LABEL_79;
            case 158:
              v26 = kCGBlendModeCopy;
              goto LABEL_79;
            case 179:
              v26 = kCGBlendModeDarken;
              goto LABEL_79;
          }
        }
      }

      else if (v25 > 189)
      {
        switch(v25)
        {
          case 190:
            v26 = kCGBlendModeDestinationOver;
            goto LABEL_79;
          case 191:
            v26 = kCGBlendModeDifference;
            goto LABEL_79;
          case 240:
            v26 = kCGBlendModeExclusion;
            goto LABEL_79;
        }
      }

      else
      {
        switch(v25)
        {
          case 185:
            v26 = kCGBlendModeDestinationAtop;
            goto LABEL_79;
          case 186:
            v26 = kCGBlendModeDestinationIn;
            goto LABEL_79;
          case 188:
            v26 = kCGBlendModeDestinationOut;
            goto LABEL_79;
        }
      }
    }

    else if (v25 > 624)
    {
      if (v25 > 663)
      {
        switch(v25)
        {
          case 664:
            v26 = kCGBlendModeSourceIn;
            goto LABEL_79;
          case 668:
            v26 = kCGBlendModeSourceOut;
            goto LABEL_79;
          case 758:
            v26 = kCGBlendModeXOR;
            goto LABEL_79;
        }
      }

      else
      {
        switch(v25)
        {
          case 625:
            v26 = kCGBlendModeScreen;
            goto LABEL_79;
          case 659:
            v26 = kCGBlendModeSoftLight;
            goto LABEL_79;
          case 662:
            v26 = kCGBlendModeSourceAtop;
            goto LABEL_79;
        }
      }
    }

    else if (v25 > 548)
    {
      switch(v25)
      {
        case 549:
          v26 = kCGBlendModeOverlay;
          goto LABEL_79;
        case 562:
          v26 = kCGBlendModePlusDarker;
          goto LABEL_79;
        case 564:
          v26 = kCGBlendModePlusLighter;
          goto LABEL_79;
      }
    }

    else
    {
      switch(v25)
      {
        case 293:
          v26 = kCGBlendModeHardLight;
          goto LABEL_79;
        case 475:
          v26 = kCGBlendModeLighten;
          goto LABEL_79;
        case 525:
          v26 = kCGBlendModeMultiply;
LABEL_79:
          CGContextSetBlendMode(ctx, v26);
          if (v10 <= 0.0)
          {
            goto LABEL_97;
          }

          v23 = 1;
          goto LABEL_81;
      }
    }
  }

LABEL_61:
  if (v10 <= 0.0)
  {
    if (v7 >= 1.0)
    {
      goto LABEL_89;
    }

LABEL_97:
    CGContextBeginTransparencyLayer(ctx, 0);
    v40 = 1;
    goto LABEL_98;
  }

LABEL_81:
  v27 = *(v8 + 29);
  *(v8 + 29) = v27 + 1;
  if (!v27)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  [(CALayer *)self shadowOffset];
  v29 = v28;
  v31 = v30;
  [(CALayer *)self shadowRadius];
  v33 = v32;
  v34 = [(CALayer *)self shadowColor];
  v35 = v34;
  if (v34 && CGColorGetAlpha(v34) > 0.0)
  {
    if (v10 == 1.0)
    {
      v41 = v35;
    }

    else
    {
      NumberOfComponents = CGColorGetNumberOfComponents(v35);
      v37 = NumberOfComponents;
      v38 = 8 * NumberOfComponents;
      if (v38 > 0x1000)
      {
        v39 = malloc_type_malloc(8 * NumberOfComponents, 0x100004000313F17uLL);
      }

      else
      {
        MEMORY[0x1EEE9AC00](NumberOfComponents);
        v39 = &v46 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v39, v38);
      }

      Components = CGColorGetComponents(v35);
      memcpy(v39, Components, v38);
      *&v39[((v37 << 32) - 0x100000000) >> 29] = *&v39[((v37 << 32) - 0x100000000) >> 29] * v10;
      ColorSpace = CGColorGetColorSpace(v35);
      v41 = CGColorCreate(ColorSpace, v39);
      if (v38 > 0x1000)
      {
        free(v39);
      }
    }

    v44 = v33 + v33;
    v45 = v44;
    v52.width = v29;
    v52.height = v31;
    CGContextSetShadowWithColor(ctx, v52, v45, v41);
    if (v41 != v35)
    {
      CGColorRelease(v41);
    }

    CA::Transaction::unlock(v8);
    goto LABEL_97;
  }

  CA::Transaction::unlock(v8);
  if (v23)
  {
    goto LABEL_97;
  }

LABEL_89:
  v40 = 0;
LABEL_98:
  [(CALayer *)self _renderBackgroundInContext:ctx];
  [(CALayer *)self _renderForegroundInContext:ctx];
  if (![(CALayer *)self allowedContentsHideSublayers])
  {
    [(CALayer *)self _renderSublayersInContext:ctx];
  }

  [(CALayer *)self _renderBorderInContext:ctx];
  if (v40)
  {
    CGContextEndTransparencyLayer(ctx);
  }

  CGContextRestoreGState(ctx);
  if (v13)
  {
    memset(&v49, 0, sizeof(v49));
    CA::Layer::get_frame_transform(v13->_attr.layer, &v49, 0);
    if (CA_CGAffineTransformIsValid())
    {
      CGContextSaveGState(ctx);
      memset(&v48[1], 0, sizeof(CGAffineTransform));
      CGContextGetBaseCTM();
      v48[0] = v49;
      CGContextConcatCTM(ctx, v48);
      v47 = v49;
      v46 = v48[1];
      CGAffineTransformConcat(v48, &v47, &v46);
      CGContextSetBaseCTM();
      CGContextSetBlendMode(ctx, kCGBlendModeDestinationIn);
      CGContextBeginTransparencyLayer(ctx, 0);
      [(CALayer *)v13 renderInContext:ctx];
      CGContextEndTransparencyLayer(ctx);
      v48[0] = v48[1];
      CGContextSetBaseCTM();
      CGContextRestoreGState(ctx);
    }

    CGContextEndTransparencyLayer(ctx);
  }

  if (v11)
  {
    CGContextRestoreGState(ctx);
  }
}

- (void)setNeedsDisplayInRect:(CGRect)r
{
  v23 = *MEMORY[0x1E69E9840];
  layer = self->_attr.layer;
  if ((*(layer + 1) & 0x60000) == 0)
  {
    height = r.size.height;
    width = r.size.width;
    y = r.origin.y;
    x = r.origin.x;
    v6 = CA::Transaction::ensure_compat(self);
    v7 = *(v6 + 29);
    *(v6 + 29) = v7 + 1;
    if (!v7)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    if (BYTE12(xmmword_1ED4E980C) == 1)
    {
      v15 = CA::Layer::signpost_name(layer);
      CA::Transaction::ktrace_value_from_string(v6, 835322352, v15, 256);
      kdebug_trace();
      if (BYTE13(xmmword_1ED4E980C) == 1)
      {
        getppid();
      }
    }

    if (width != 0.0 && height != 0.0)
    {
      v8 = *(layer + 2);
      v9 = [v8 contents];
      v10 = v9;
      if (v9)
      {
        v11 = CFGetTypeID(v9);
        if (CABackingStoreGetTypeID::once[0] != -1)
        {
          v16 = v11;
          dispatch_once(CABackingStoreGetTypeID::once, &__block_literal_global_1020);
          v11 = v16;
        }

        if (v11 == CABackingStoreGetTypeID::type)
        {
          v12.f64[0] = x;
          v12.f64[1] = y;
          v19 = vsubq_f64(v12, *(layer + 6));
          v20 = v19;
          v21 = width;
          v22 = height;
          if ((*(layer + 57) & 2) != 0)
          {
            [v8 contentsScale];
            v20 = vmulq_n_f64(v19, v13);
            width = width * v13;
            height = height * v13;
            v21 = width;
            v22 = height;
          }

          if (fmax(width, height) <= 1.00000002e30)
          {
            v14 = &v20;
          }

          else
          {
            v14 = 0;
          }

          CABackingStoreInvalidate(v10, v14);
        }
      }
    }

    CA::Layer::mark(layer, v6, 256, 512);
    if (BYTE12(xmmword_1ED4E980C) == 1)
    {
      kdebug_trace();
    }

    CA::Transaction::unlock(v6);
  }
}

- (CAAnimation)animationForKey:(NSString *)key
{
  v5 = CA::Transaction::ensure_compat(self);
  v6 = [(CALayer *)self modelLayer];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (!*(v6->_attr.layer + 35) || ![(NSString *)key length])
  {
    return 0;
  }

  v8 = *(v5 + 29);
  *(v5 + 29) = v8 + 1;
  if (!v8)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v9 = *(v7->_attr.layer + 35);
  if (v9)
  {
    v10 = [(NSString *)key hash];
    while ((*(v9 + 58) & 1) != 0 || (*(v9 + 61) & 1) != 0 || v9[3] != v10 || ![v9[2] isEqualToString:key])
    {
      v9 = *v9;
      if (!v9)
      {
        goto LABEL_13;
      }
    }

    v11 = v9[1];
  }

  else
  {
LABEL_13:
    v11 = 0;
  }

  CA::Transaction::unlock(v5);
  return v11;
}

- (void)removeAnimationForKey:(NSString *)key
{
  v5 = CA::Transaction::ensure_compat(self);
  v6 = [(CALayer *)self modelLayer];
  if (v6)
  {
    v7 = v6;
    if (*(v6->_attr.layer + 35))
    {
      if ([(NSString *)key length])
      {
        v8 = [(NSString *)key hash];
        v9 = *(v5 + 29);
        *(v5 + 29) = v9 + 1;
        if (!v9)
        {
          os_unfair_lock_lock(&CA::Transaction::transaction_lock);
        }

        layer = v7->_attr.layer;
        v11 = layer[35];
        v14 = v11;
        if (v11)
        {
          v12 = &v14;
          while (1)
          {
            if ((*(v11 + 58) & 1) == 0 && *(v11 + 24) == v8 && [*(v11 + 16) isEqualToString:key])
            {
              if ((*(v11 + 57) & 1) == 0 && (*(v11 + 62) & 1) == 0)
              {
                *v12 = *v11;
                schedule_stop_callback(v11, &animation_state);
                free_non_deferred_animation(v11, 1);
                goto LABEL_15;
              }

              *(v11 + 58) = 1;
            }

            v12 = v11;
LABEL_15:
            v11 = *v12;
            if (!*v12)
            {
              layer = v7->_attr.layer;
              v13 = v14;
              goto LABEL_20;
            }
          }
        }

        v13 = 0;
LABEL_20:
        CA::Layer::set_animations(layer, v13);
        CA::Layer::mark_animations(v7->_attr.layer, v5, 0);

        CA::Transaction::unlock(v5);
      }
    }
  }
}

- (BOOL)remapAnimation:(id)a3 forKey:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || CAInternAtom([a3 keyPath], 0) != 572)
  {
    return 0;
  }

  v6 = [a3 mutableCopy];
  v7 = [a3 mutableCopy];
  [v6 setKeyPath:@"contentsCDRStrength"];
  v8 = CA::Transaction::ensure_compat([v7 setKeyPath:@"contentsEDRStrength"]);
  v15 = 0;
  if (!CA::Transaction::get_value(*(v8 + 13), 37, 7, &v15) || (v15 & 1) == 0)
  {
    v9 = [(CALayer *)self presentationLayer];
    if (v9)
    {
      v10 = v9;
      [v6 setFromValue:{CAObject_valueForAtom(v9, 0x85u)}];
      [v7 setFromValue:{CAObject_valueForAtom(v10, 0x8Au)}];
    }
  }

  if ([objc_msgSend(a3 "toValue")])
  {
    v11 = &unk_1EF22B8E0;
  }

  else if ([objc_msgSend(a3 "toValue")] & 1) != 0 || (objc_msgSend(objc_msgSend(a3, "toValue"), "isEqual:", @"automatic"))
  {
    v11 = &unk_1EF22B8E0;
  }

  else
  {
    if (![objc_msgSend(a3 "toValue")])
    {
      goto LABEL_14;
    }

    v11 = &unk_1EF22B8F0;
  }

  [v6 setToValue:?];
  [v7 setToValue:v11];
LABEL_14:
  [(CALayer *)self addAnimation:v6 forKey:@"contentsCDRStrength"];
  [(CALayer *)self addAnimation:v7 forKey:@"contentsEDRStrength"];
  v13 = v6;
  v14 = v7;
  return 1;
}

- (void)addAnimation:(CAAnimation *)anim forKey:(NSString *)key
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (objc_opt_isKindOfClass())
  {
    key = @"transition";
  }

  else if (![(NSString *)key length])
  {
    key = 0;
  }

  v7 = [(CAAnimation *)anim copy];
  if (v7)
  {
    v15 = v7;
    v8 = CA::Transaction::ensure_compat(v7);
    v9 = [(CALayer *)self modelLayer];
    if (v9)
    {
      v10 = v9;
      v18[0] = 0;
      v16 = 0;
      v17 = [(CAAnimation *)v15 delegate];
      if (!v17 && CA::Transaction::get_value(v8[13], 38, 2, &v17) && v17)
      {
        [(CAAnimation *)v15 setDelegate:?];
      }

      if (CA::Transaction::get_value(v8[13], 39, 0x12, &v16))
      {
        v11 = *&v16;
      }

      else
      {
        v16 = 0x3FD0000000000000;
        v11 = 0.25;
      }

      [(CAAnimation *)v15 setDefaultDuration:v11];
      [(CAAnimation *)v15 duration];
      if (v12 <= 0.000001)
      {
        v14 = lookup_delegate_methods(v8, v17);
        if ((v14 & 0x40) != 0)
        {
          [(objc_object *)v17 animationDidStart:v15];
        }

        if (v14 < 0)
        {
          [(objc_object *)v17 animationDidStop:v15 finished:1];
        }

        if (key)
        {
          [v10 removeAnimationForKey:key];
        }
      }

      else
      {
        if (CA::Transaction::get_value(v8[13], 40, 2, v18) && v18[0])
        {
          [(CAAnimation *)v15 setTimingFunction:?];
        }

        if (objc_opt_isKindOfClass())
        {
          v13 = [(CAAnimation *)v15 keyPath];
          if (key)
          {
            if (!v13)
            {
              [(CAAnimation *)v15 setKeyPath:key];
            }
          }
        }

        if (![v10 remapAnimation:v15 forKey:key])
        {
          CA::Layer::add_animation(v10[2], v15, key);
        }
      }
    }

    else
    {
    }
  }
}

- (id)actionForKey:(NSString *)event
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = CA::Transaction::ensure_compat(self);
  v6 = *(v5 + 29);
  *(v5 + 29) = v6 + 1;
  if (!v6)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v15 = 0;
  v16[0] = 0;
  layer = self->_attr.layer;
  if ((*(layer + 58) & 0x20) != 0)
  {
    if (*(layer + 136) == 1)
    {
      Weak = objc_loadWeak(layer + 16);
      if (!Weak)
      {
        goto LABEL_9;
      }
    }

    else
    {
      Weak = *(layer + 16);
      if (!Weak)
      {
        goto LABEL_9;
      }
    }

    v9 = [Weak actionForLayer:self forKey:event];
    if (v9)
    {
LABEL_12:
      CA::Transaction::unlock(v5);
      goto LABEL_24;
    }
  }

LABEL_9:
  v10 = *(layer + 9);
  if (v10)
  {
    if (CA::AttrList::get(v10, 2, 1, v16))
    {
      v9 = [v16[0] objectForKey:event];
      if (v9)
      {
        goto LABEL_12;
      }
    }
  }

  if ((*(layer + 58) & 2) != 0)
  {
    v11 = *(layer + 9);
    if (!v11 || (CA::AttrList::get(v11, 692, 1, &v15) & 1) == 0)
    {
      v12 = objc_opt_class();
      CAObject_defaultValueForAtom(v12, 692, 1, &v15);
    }

    for (i = v15; i; v15 = i)
    {
      v16[0] = [i objectForKey:@"actions"];
      v9 = [v16[0] objectForKey:event];
      if (v9)
      {
        goto LABEL_12;
      }

      i = [v15 objectForKey:@"style"];
    }
  }

  v9 = [(objc_class *)object_getClass(self) defaultActionForKey:event];
  CA::Transaction::unlock(v5);
  if (!v9)
  {
    if ((*(self->_attr.layer + 1) & 0x4000) != 0)
    {
      v9 = [CATransaction _implicitAnimationForLayer:self keyPath:event];
    }

    else
    {
      v9 = 0;
    }
  }

LABEL_24:
  if (v9 == *MEMORY[0x1E695E738])
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

- (void)replaceSublayer:(CALayer *)oldLayer with:(CALayer *)newLayer
{
  v34 = *MEMORY[0x1E69E9840];
  if (oldLayer == newLayer)
  {
    return;
  }

  v6 = self;
  layer = self->_attr.layer;
  if ((*(layer + 1) & 0x60000) != 0)
  {
    self = [MEMORY[0x1E695DF30] raise:@"CALayerInvalidTree" format:{@"expecting model layer not copy: %@", layer[2]}];
  }

  v8 = oldLayer->_attr.layer;
  if ((*(v8 + 1) & 0x60000) != 0)
  {
    self = [MEMORY[0x1E695DF30] raise:@"CALayerInvalidTree" format:{@"expecting model layer not copy: %@", v8[2]}];
  }

  v9 = CA::Transaction::ensure_compat(self);
  v12 = CA::Layer::retain_parent(oldLayer->_attr.layer, v9);
  v13 = v6->_attr.layer;
  if (v12 != v13)
  {
    [MEMORY[0x1E695DF30] raise:@"CALayerInvalid" format:{@"replaced layer %@ is not a sublayer of %@", oldLayer, v6}];
    v13 = v6->_attr.layer;
  }

  v14 = v9[29];
  v9[29] = v14 + 1;
  if (v14)
  {
    if (newLayer)
    {
      goto LABEL_10;
    }

LABEL_21:
    CA::Layer::remove_sublayer(v13, v9, oldLayer, v10, v11);
    CA::Transaction::release_object(v9, oldLayer);
    goto LABEL_45;
  }

  os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  if (!newLayer)
  {
    goto LABEL_21;
  }

LABEL_10:
  v15 = newLayer->_attr.layer;
  if ((*(v15 + 1) & 0x60000) != 0)
  {
    [MEMORY[0x1E695DF30] raise:@"CALayerInvalidTree" format:{@"expecting model layer not copy: %@", v15[2]}];
    v15 = newLayer->_attr.layer;
  }

  v16 = CA::Layer::retain_parent(v15, v9);
  if (v16)
  {
    v19 = v16;
    CA::Layer::remove_sublayer(v16, v9, newLayer, v17, v18);
    while (1)
    {
      v21 = *v19;
      if (!*v19)
      {
        break;
      }

      v22 = *v19;
      atomic_compare_exchange_strong(v19, &v22, v21 - 1);
      if (v22 == v21)
      {
        if (v21 == 1)
        {
          CA::Layer::destroy(v19);
          CA::Layer::~Layer(v19);
          if (x_malloc_get_zone::once != -1)
          {
            dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
          }

          malloc_zone_free(malloc_zone, v19);
        }

        break;
      }
    }
  }

  else
  {
    CFRetain(newLayer);
    CA::Layer::remove_from_context(newLayer->_attr.layer);
  }

  if (*(v13 + 4) == oldLayer)
  {
    CA::Layer::set_mask(v13, newLayer);
    CA::Transaction::release_object(v9, newLayer);
    goto LABEL_45;
  }

  v33.isa = 0;
  CA::Layer::begin_change(v13, v9, @"sublayers", &v33, v20);
  v23 = CA::Layer::ancestor_context_id(v13, v9);
  CA::Layer::update_removed_sublayer(oldLayer->_attr.layer, v9, v23);
  CA::Transaction::release_object(v9, oldLayer);
  v24 = (*(v13 + 3) + 8);
  v25 = *(*(v13 + 3) + 16);
  if (v25 == 1)
  {
    v26 = *(v13 + 3) + 8;
    if (!*(*(v13 + 3) + 24))
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (v25)
  {
LABEL_29:
    v26 = *v24;
LABEL_30:
    v27 = 0;
    while (*(v26 + 8 * v27) != oldLayer)
    {
      if (v25 == ++v27)
      {
        v27 = -1;
        break;
      }
    }

    if ((*(*(v13 + 3) + 40) & 1) == 0)
    {
      if (v25 == 1 && !*(*(v13 + 3) + 24))
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }

LABEL_53:
    abort();
  }

  if (*(*(v13 + 3) + 40) == 1)
  {
    goto LABEL_53;
  }

  v27 = -1;
LABEL_40:
  v24 = *v24;
LABEL_41:
  v24[v27] = newLayer;
  CA::Layer::update_added_sublayer(newLayer->_attr.layer, v9, v13, v23);
  v28 = newLayer->_attr.layer;
  v29 = v9[28];
  if ((v29 & 0x80000000) != 0 || (v30 = *(v28 + v29 + 68)) == 0)
  {
    v30 = *CA::Layer::thread_flags_(v28, v9);
  }

  CA::Layer::update_for_changed_sublayers(v13, v9, v30);
  CA::Layer::end_change(v13, v9, 694, @"sublayers", v33.isa);
LABEL_45:
  CA::Transaction::unlock(v9);
  if (v12)
  {
    while (1)
    {
      v31 = *v12;
      if (!*v12)
      {
        break;
      }

      v32 = *v12;
      atomic_compare_exchange_strong(v12, &v32, v31 - 1);
      if (v32 == v31)
      {
        if (v31 == 1)
        {
          CA::Layer::destroy(v12);
          CA::Layer::~Layer(v12);
          if (x_malloc_get_zone::once != -1)
          {
            dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
          }

          malloc_zone_free(malloc_zone, v12);
        }

        return;
      }
    }
  }
}

- (void)insertSublayer:(CALayer *)layer above:(CALayer *)sibling
{
  if (!layer)
  {
    return;
  }

  v6 = self;
  v7 = self->_attr.layer;
  if ((*(v7 + 1) & 0x60000) != 0)
  {
    self = [MEMORY[0x1E695DF30] raise:@"CALayerInvalidTree" format:{@"expecting model layer not copy: %@", v7[2]}];
  }

  v8 = layer->_attr.layer;
  if ((*(v8 + 1) & 0x60000) != 0)
  {
    self = [MEMORY[0x1E695DF30] raise:@"CALayerInvalidTree" format:{@"expecting model layer not copy: %@", v8[2]}];
  }

  v9 = CA::Transaction::ensure_compat(self);
  v10 = *(v9 + 29);
  *(v9 + 29) = v10 + 1;
  if (!v10)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v11 = v6->_attr.layer;
  if (sibling)
  {
    v12 = CA::Layer::sublayers(v11);
    if (v12)
    {
      v13 = (v12 + 8);
      v14 = *(v12 + 2);
      if (v14 == 1)
      {
        if (!*(v12 + 3))
        {
LABEL_18:
          v15 = 0;
          while (v13[v15] != sibling)
          {
            if (v14 == ++v15)
            {
              goto LABEL_24;
            }
          }

          if (v15 != -1)
          {
            v14 = v15 + 1;
          }

          goto LABEL_24;
        }

LABEL_17:
        v13 = *v13;
        goto LABEL_18;
      }

      if (v14)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v14 = 0;
    }

LABEL_24:
    CA::Layer::insert_sublayer(v6->_attr.layer, v9, layer, v14);
    goto LABEL_25;
  }

  CA::Layer::insert_sublayer(v11, v9, layer, 0xFFFFFFFFFFFFFFFFLL);
LABEL_25:

  CA::Transaction::unlock(v9);
}

- (void)insertSublayer:(CALayer *)layer below:(CALayer *)sibling
{
  if (!layer)
  {
    return;
  }

  v6 = self;
  v7 = self->_attr.layer;
  if ((*(v7 + 1) & 0x60000) != 0)
  {
    self = [MEMORY[0x1E695DF30] raise:@"CALayerInvalidTree" format:{@"expecting model layer not copy: %@", v7[2]}];
  }

  v8 = layer->_attr.layer;
  if ((*(v8 + 1) & 0x60000) != 0)
  {
    self = [MEMORY[0x1E695DF30] raise:@"CALayerInvalidTree" format:{@"expecting model layer not copy: %@", v8[2]}];
  }

  v9 = CA::Transaction::ensure_compat(self);
  v10 = *(v9 + 29);
  *(v9 + 29) = v10 + 1;
  if (!v10)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v11 = v6->_attr.layer;
  if (sibling)
  {
    v12 = CA::Layer::sublayers(v11);
    if (v12)
    {
      v13 = (v12 + 8);
      v14 = *(v12 + 2);
      if (v14 == 1)
      {
        if (!*(v12 + 3))
        {
LABEL_18:
          v15 = 0;
          while (v13[v15] != sibling)
          {
            if (v14 == ++v15)
            {
              goto LABEL_24;
            }
          }

          if (v15 != -1)
          {
            v14 = v15;
          }

          goto LABEL_24;
        }

LABEL_17:
        v13 = *v13;
        goto LABEL_18;
      }

      if (v14)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v14 = 0;
    }

LABEL_24:
    CA::Layer::insert_sublayer(v6->_attr.layer, v9, layer, v14);
    goto LABEL_25;
  }

  CA::Layer::insert_sublayer(v11, v9, layer, 0);
LABEL_25:

  CA::Transaction::unlock(v9);
}

- (void)addSublayer:(CALayer *)layer
{
  if (layer)
  {
    v4 = self;
    v5 = self->_attr.layer;
    if ((*(v5 + 1) & 0x60000) != 0)
    {
      self = [MEMORY[0x1E695DF30] raise:@"CALayerInvalidTree" format:{@"expecting model layer not copy: %@", v5[2]}];
    }

    v6 = layer->_attr.layer;
    if ((*(v6 + 1) & 0x60000) != 0)
    {
      self = [MEMORY[0x1E695DF30] raise:@"CALayerInvalidTree" format:{@"expecting model layer not copy: %@", v6[2]}];
    }

    v7 = CA::Transaction::ensure_compat(self);
    v8 = *(v7 + 29);
    *(v7 + 29) = v8 + 1;
    if (!v8)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    CA::Layer::insert_sublayer(v4->_attr.layer, v7, layer, 0xFFFFFFFFFFFFFFFFLL);

    CA::Transaction::unlock(v7);
  }
}

- (void)insertSublayer:(CALayer *)layer atIndex:(unsigned int)idx
{
  if (layer)
  {
    v6 = self;
    v7 = self->_attr.layer;
    if ((*(v7 + 1) & 0x60000) != 0)
    {
      self = [MEMORY[0x1E695DF30] raise:@"CALayerInvalidTree" format:{@"expecting model layer not copy: %@", v7[2]}];
    }

    v8 = layer->_attr.layer;
    if ((*(v8 + 1) & 0x60000) != 0)
    {
      self = [MEMORY[0x1E695DF30] raise:@"CALayerInvalidTree" format:{@"expecting model layer not copy: %@", v8[2]}];
    }

    v9 = CA::Transaction::ensure_compat(self);
    v10 = *(v9 + 29);
    *(v9 + 29) = v10 + 1;
    if (!v10)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    CA::Layer::insert_sublayer(v6->_attr.layer, v9, layer, idx);

    CA::Transaction::unlock(v9);
  }
}

- (void)setOpacity:(float)opacity
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = opacity;
  CA::Layer::setter(self->_attr.layer, 0x21B, 0x11, &v3);
}

- (void)setContentsScaling:(id)a3
{
  v4 = [a3 isEqualToString:@"repeat"];
  layer = self->_attr.layer;

  CA::Layer::set_bit(layer, 0x98u, 80, 175, v4, 0, 0);
}

- (void)setToneMapMode:(id)a3
{
  if (a3 == @"automatic")
  {
    v5 = 0;
  }

  else
  {
    v4 = CAInternAtom(a3, 0);
    if (v4 == 311)
    {
      v5 = 2;
    }

    else
    {
      v5 = v4 == 531;
    }
  }

  layer = self->_attr.layer;

  CA::Layer::set_bit_int(layer, 0x2C5u, 0x23u, 0x8Du, 3, v5);
}

- (void)setContentsGravity:(CALayerContentsGravity)contentsGravity
{
  v4 = CA::Render::Layer::gravity_from_string(contentsGravity, a2);
  layer = self->_attr.layer;

  CA::Layer::set_bit_int(layer, 0x90u, 3u, 0x81u, 15, v4);
}

- (CALayerContentsGravity)contentsGravity
{
  v2 = (*(self->_attr.layer + 11) >> 3) & 0xF;
  if (v2 > 0xB)
  {
    return 0;
  }

  else
  {
    return CAAtomGetString(CA::Render::gravity_atoms[v2]);
  }
}

- (void)setContentsFormat:(CALayerContentsFormat)contentsFormat
{
  v4 = CA::Render::Layer::contents_format_from_string(contentsFormat, a2);
  layer = self->_attr.layer;

  CA::Layer::set_bit_int(layer, 0x8Bu, 0, 0x80u, 7, v4);
}

- (CALayerContentsFormat)contentsFormat
{
  v2 = (*(self->_attr.layer + 44) & 7) - 1;
  if (v2 > 4)
  {
    v3 = &kCAContentsFormatRGBA8Uint;
  }

  else
  {
    v3 = off_1E6DECED8[v2];
  }

  return *v3;
}

- (void)setSecurityMode:(id)a3
{
  if ([a3 isEqualToString:@"unrestricted"])
  {
    v5 = 2;
  }

  else
  {
    v5 = [a3 isEqualToString:@"insecure"];
  }

  layer = self->_attr.layer;

  CA::Layer::set_bit_int(layer, 0x274u, 0x1Eu, 0xBAu, 3, v5);
}

- (NSString)securityMode
{
  v2 = *(self->_attr.layer + 11) >> 30;
  v3 = @"secure";
  if (v2 == 2)
  {
    v3 = @"unrestricted";
  }

  if (v2 == 1)
  {
    return @"insecure";
  }

  else
  {
    return &v3->isa;
  }
}

- (void)setRasterizationScale:(CGFloat)rasterizationScale
{
  v17[1] = *MEMORY[0x1E69E9840];
  *v17 = rasterizationScale;
  v6 = CA::Transaction::ensure_compat(self);
  v7 = *(v6 + 29);
  *(v6 + 29) = v7 + 1;
  if (!v7)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  layer = self->_attr.layer;
  v9 = (*(layer + 11) >> 28) & 3;
  v16 = 0.0;
  if (v9)
  {
    v16 = v9;
  }

  else
  {
    v10 = *(layer + 9);
    if (!v10 || (CA::AttrList::get(v10, 592, 0x12, &v16) & 1) == 0)
    {
      CA::Layer::default_value(layer, 0x250u, 0x12, &v16);
    }
  }

  if (v16 != rasterizationScale)
  {
    v15 = 0;
    CA::Layer::begin_change(layer, v6, @"rasterizationScale", &v15, v5);
    v11 = CA::Layer::writable_state(layer, v6);
    v12 = v11;
    if (rasterizationScale == 3.0 || rasterizationScale == 1.0 || rasterizationScale == 2.0)
    {
      *(v11 + 1) = *(v11 + 1) & 0xCFFFFFFF | ((rasterizationScale & 3) << 28);
      v14 = *(v11 + 4);
      if (v14)
      {
        v14 = CA::AttrList::remove(v14, 0x250);
      }
    }

    else
    {
      *(v11 + 1) &= 0xCFFFFFFF;
      v13 = *(v11 + 4);
      if (!v13)
      {
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        v13 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x10uLL, 0x1020040EDED9539uLL);
      }

      v14 = CA::AttrList::set(v13, 0x250, 18, v17);
    }

    *(v12 + 4) = v14;
    CA::Layer::end_change(layer, v6, 592, @"rasterizationScale", v15);
  }

  CA::Transaction::unlock(v6);
}

- (void)setContentsScale:(CGFloat)contentsScale
{
  v17[1] = *MEMORY[0x1E69E9840];
  *v17 = contentsScale;
  v6 = CA::Transaction::ensure_compat(self);
  v7 = *(v6 + 29);
  *(v6 + 29) = v7 + 1;
  if (!v7)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  layer = self->_attr.layer;
  v9 = (*(layer + 11) >> 26) & 3;
  v16 = 0.0;
  if (v9)
  {
    v16 = v9;
  }

  else
  {
    v10 = *(layer + 9);
    if (!v10 || (CA::AttrList::get(v10, 151, 0x12, &v16) & 1) == 0)
    {
      CA::Layer::default_value(layer, 0x97u, 0x12, &v16);
    }
  }

  if (v16 != contentsScale)
  {
    v15 = 0;
    CA::Layer::begin_change(layer, v6, @"contentsScale", &v15, v5);
    v11 = CA::Layer::writable_state(layer, v6);
    v12 = v11;
    *(v11 + 4) = *(v11 + 4) & 0xFFFFFDFF | ((contentsScale != 1.0) << 9);
    if (contentsScale == 3.0 || contentsScale == 1.0 || contentsScale == 2.0)
    {
      *(v11 + 1) = *(v11 + 1) & 0xF3FFFFFF | ((contentsScale & 3) << 26);
      v14 = *(v11 + 4);
      if (v14)
      {
        v14 = CA::AttrList::remove(v14, 0x97);
      }
    }

    else
    {
      *(v11 + 1) &= 0xF3FFFFFF;
      v13 = *(v11 + 4);
      if (!v13)
      {
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        v13 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x10uLL, 0x1020040EDED9539uLL);
      }

      v14 = CA::AttrList::set(v13, 0x97, 18, v17);
    }

    *(v12 + 4) = v14;
    CA::Layer::end_change(layer, v6, 151, @"contentsScale", v15);
  }

  CA::Transaction::unlock(v6);
}

- (void)setContents:(id)contents
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = CA::Transaction::ensure_compat(self);
  v7 = v6[29];
  v6[29] = v7 + 1;
  if (!v7)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  layer = self->_attr.layer;
  if (*(layer + 18) == contents)
  {
    v9 = layer + 40;
  }

  else
  {
    v16[0] = 0;
    CA::Layer::begin_change(layer, v6, @"contents", v16, v5);
    v9 = CA::Layer::writable_state(layer, v6);
    v10 = *(v9 + 13);
    if (v10)
    {
      CA::Transaction::release_object(v6, v10);
    }

    *(v9 + 13) = contents;
    if (contents)
    {
      CFRetain(contents);
      if ((*(layer + 1) & 0x60000) == 0)
      {
        v11 = CFGetTypeID(contents);
        if (CABackingStoreGetTypeID::once[0] != -1)
        {
          dispatch_once(CABackingStoreGetTypeID::once, &__block_literal_global_1020);
        }

        if (v11 != CABackingStoreGetTypeID::type)
        {
          CA::Layer::mark(layer, v6, 2, 4);
        }
      }
    }

    *(v9 + 4) &= ~2u;
    CA::Layer::end_change(layer, v6, 131, @"contents", v16[0]);
  }

  if ((*(v9 + 4) & 0x80000000) == 0)
  {
    v9 = CA::Layer::writable_state(layer, v6);
    *(v9 + 4) |= 0x80000000;
  }

  if ((*(layer + 1) & 0x60000) == 0)
  {
    v12 = v6[28];
    if ((v12 & 0x80000000) != 0 || (v13 = &layer[4 * v12], (v14 = *(v13 + 68)) == 0))
    {
      v15 = CA::Layer::thread_flags_(layer, v6);
      v14 = *v15;
    }

    else
    {
      v15 = (v13 + 272);
    }

    *v15 = v14 & 0xFFFFFEFF;
    *(v9 + 3) &= ~0x80000000;
  }

  CA::Transaction::unlock(v6);
}

- (BOOL)containsPoint:(CGPoint)p
{
  y = p.y;
  x = p.x;
  [(CALayer *)self bounds];
  v9 = x;
  v10 = y;

  return CGRectContainsPoint(*&v5, *&v9);
}

- (CALayer)hitTest:(CGPoint)p
{
  y = p.y;
  x = p.x;
  v39 = *MEMORY[0x1E69E9840];
  if ((*(self->_attr.layer + 1) & 0x10000) != 0)
  {
    if (x_log_get_api::once[0] != -1)
    {
      dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
    }

    v6 = x_log_get_api::log;
    if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_error_impl(&dword_183AA6000, v6, OS_LOG_TYPE_ERROR, "%@ - calling -hitTest: on transform-only layer", buf, 0xCu);
    }
  }

  if ((*(self->_attr.layer + 1) & 0x40000) != 0)
  {
    [MEMORY[0x1E695DF30] raise:@"CALayerInvalid" format:@"may only -hitTest: a layer or its presentation layer"];
  }

  if ([(CALayer *)self ignoresHitTesting])
  {
    return 0;
  }

  v7 = [(CALayer *)self allowsHitTesting];
  if (!v7)
  {
    return 0;
  }

  v8 = CA::Transaction::ensure_compat(v7);
  v11 = *(v8 + 29);
  *(v8 + 29) = v11 + 1;
  if (!v11)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  *buf = 0u;
  v32 = 0u;
  CA::Layer::get_frame_transform(self->_attr.layer, buf, 0, 0, 0, v9, v10);
  for (i = CA::Layer::superlayer(self->_attr.layer, v8); i; i = CA::Layer::superlayer(i->_attr.layer, v8))
  {
    layer = i->_attr.layer;
    if ((*(layer + 4) & 0x10000) == 0)
    {
      break;
    }

    memset(&v30, 0, 128);
    CA::Layer::get_frame_transform(layer, &v30, 0, 0, 0, v14, v15);
    CA::Mat4Impl::mat4_concat(buf, buf, v30.f64, v17);
  }

  if (CA::Mat4Impl::mat4_invert(buf, buf, v12) && (*&v36 >= 0.0 || [(CALayer *)self isDoubleSided]) && ((v30.f64[0] = x, v30.f64[1] = y, ![(CALayer *)self masksToBounds:CA::Mat4Impl::mat4_unapply_inverse_to_point2(buf]) || [(CALayer *)self containsPoint:*&v30]) && ((v20 = [(CALayer *)self mask]) == 0 || [(CALayer *)v20 hitTest:*&v30]))
  {
    v21 = hitTestSublayers(0, v30.f64, [(CALayer *)self sublayers]);
    v22 = v21;
    if (v21)
    {
      if (*(v21 + 8) && [(CALayer *)self sortsSublayers])
      {
        v18 = 0;
        v26 = -INFINITY;
        v27 = v22;
        do
        {
          v23 = computeZ(self, *v27, v8, &v30, v23, v24, v25);
          v24 = v26 + 0.00001;
          if (v23 > v26 + 0.00001)
          {
            v18 = *v27;
            v26 = v23;
          }

          v27 = v27[1];
        }

        while (v27);
      }

      else
      {
        v18 = *v22;
      }

      do
      {
        v29 = v22[1];
        free(v22);
        v22 = v29;
      }

      while (v29);
    }

    else if ([(CALayer *)self containsPoint:*&v30])
    {
      v18 = self;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  CA::Transaction::unlock(v8);
  return v18;
}

- (CFTimeInterval)convertTime:(CFTimeInterval)t toLayer:(CALayer *)l
{
  v10[1] = *MEMORY[0x1E69E9840];
  *v10 = t;
  v6 = CA::Transaction::ensure_compat(self);
  v8 = CA::Layer::convert_time(v6, v10, self, l, v7);
  result = *v10;
  if (!v8)
  {
    return 0.0;
  }

  return result;
}

- (CFTimeInterval)convertTime:(CFTimeInterval)t fromLayer:(CALayer *)l
{
  v10[1] = *MEMORY[0x1E69E9840];
  *v10 = t;
  v6 = CA::Transaction::ensure_compat(self);
  v8 = CA::Layer::convert_time(v6, v10, l, self, v7);
  result = *v10;
  if (!v8)
  {
    return 0.0;
  }

  return result;
}

- (CGRect)convertRect:(CGRect)r toLayer:(CALayer *)l
{
  height = r.size.height;
  width = r.size.width;
  y = r.origin.y;
  x = r.origin.x;
  v18 = *MEMORY[0x1E69E9840];
  if (!CGRectIsNull(r))
  {
    v14 = x;
    v15 = y;
    v16 = width;
    v17 = height;
    if (width < 0.0)
    {
      v14 = width + x;
      v16 = -width;
    }

    if (height < 0.0)
    {
      v15 = height + y;
      v17 = -height;
    }

    CA::Layer::map_geometry(self, l, applyRect, unapplyRect, &v14);
    x = v14;
    y = v15;
    width = v16;
    height = v17;
  }

  v10 = x;
  v11 = y;
  v12 = width;
  v13 = height;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGRect)convertRect:(CGRect)r fromLayer:(CALayer *)l
{
  height = r.size.height;
  width = r.size.width;
  y = r.origin.y;
  x = r.origin.x;
  v18 = *MEMORY[0x1E69E9840];
  if (!CGRectIsNull(r))
  {
    v14 = x;
    v15 = y;
    v16 = width;
    v17 = height;
    if (width < 0.0)
    {
      v14 = width + x;
      v16 = -width;
    }

    if (height < 0.0)
    {
      v15 = height + y;
      v17 = -height;
    }

    CA::Layer::map_geometry(l, self, applyRect, unapplyRect, &v14);
    x = v14;
    y = v15;
    width = v16;
    height = v17;
  }

  v10 = x;
  v11 = y;
  v12 = width;
  v13 = height;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)p toLayer:(CALayer *)l
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = p;
  CA::Layer::map_geometry(self, l, applyVec2r, unapplyVec2r, &v6);
  y = v6.y;
  x = v6.x;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)p fromLayer:(CALayer *)l
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = p;
  CA::Layer::map_geometry(l, self, applyVec2r, unapplyVec2r, &v6);
  y = v6.y;
  x = v6.x;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v28 = *MEMORY[0x1E69E9840];
  if (frame.size.width < 0.0 || frame.size.height < 0.0)
  {
    v29 = CGRectStandardize(frame);
    x = v29.origin.x;
    y = v29.origin.y;
    width = v29.size.width;
    height = v29.size.height;
  }

  layer = self->_attr.layer;
  v9 = layer[14];
  if ((v9 & 0x1000) != 0)
  {
    [(CALayer *)self anchorPoint];
    v11 = v12;
    v10 = v13;
    v9 = layer[14];
  }

  else
  {
    v10 = 0.5;
    v11 = 0.5;
  }

  if (v9 & 0x28) != 0 || (layer[13])
  {
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    [(CALayer *)self affineTransform];
    v14 = 0;
    v15 = 0;
    if ((layer[14] & 8) != 0)
    {
      [(CALayer *)self bounds:0.0];
    }

    v20 = v15;
    v22 = v14;
    if (layer[13])
    {
      v25 = vnegq_f64(v25);
    }

    v16 = x + v11 * width - 0.0;
    v17 = y + v10 * height - 0.0;
    *&v23.a = v25;
    *&v23.c = v26;
    *&v23.tx = v27;
    CGAffineTransformInvert(&v24, &v23);
    v25 = *&v24.a;
    v26 = *&v24.c;
    v18 = v24.b * width + v24.d * height;
    width = fabs(v24.a * width + v24.c * height);
    height = fabs(v18);
    [(CALayer *)self setPosition:v16, v17, v20, v22];
  }

  else
  {
    [(CALayer *)self setPosition:x + v11 * width, y + v10 * height, 0, 0];
  }

  [(CALayer *)self setBounds:v19, v21, width, height];
}

- (void)setAffineTransform:(CGAffineTransform *)m
{
  v15 = *MEMORY[0x1E69E9840];
  *&v3 = m->a;
  if ((*(self->_attr.layer + 56) & 0x20) != 0 || *&v3 != 1.0 || m->b != 0.0 || m->c != 0.0 || m->d != 1.0 || m->tx != 0.0 || m->ty != 0.0)
  {
    *(&v3 + 1) = *&m->b;
    v6 = v3;
    v4 = *&m->c;
    v5 = *&m->tx;
    v7 = 0;
    v8 = 0;
    v9 = v4;
    v10 = 0u;
    v11 = 0u;
    v12 = xmmword_183E20E00;
    v13 = v5;
    v14 = xmmword_183E20E60;
    [(CALayer *)self setTransform:&v6];
  }
}

- (void)setTransform:(CATransform3D *)transform
{
  layer = self->_attr.layer;
  if ((*(layer + 56) & 0x20) == 0 && transform->m11 == 1.0)
  {
    v4 = 1;
    while (v4 != 16)
    {
      v5 = v4;
      v6 = *(&transform->m11 + v4);
      v7 = *(&CATransform3DIdentity.m11 + v4++);
      if (v6 != v7)
      {
        if ((v5 - 1) <= 0xE)
        {
          goto LABEL_3;
        }

        return;
      }
    }
  }

  else
  {
LABEL_3:
    CA::Layer::setter(layer, 0x2CC, 0x16, &transform->m11);
  }
}

- (void)setZPosition:(CGFloat)zPosition
{
  v3 = zPosition;
  v7[1] = *MEMORY[0x1E69E9840];
  if (zPosition > 3.40282347e38 || zPosition < -3.40282347e38)
  {
    if (x_log_get_api::once[0] != -1)
    {
      dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
    }

    v5 = x_log_get_api::log;
    if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7[0]) = 0;
      _os_log_error_impl(&dword_183AA6000, v5, OS_LOG_TYPE_ERROR, "zPosition should be within (-FLT_MAX, FLT_MAX) range.", v7, 2u);
    }

    v6 = -3.40282347e38;
    if (v3 >= -3.40282347e38)
    {
      v6 = v3;
    }

    v3 = fmin(v6, 3.40282347e38);
  }

  v7[0] = v3;
  CA::Layer::setter(self->_attr.layer, 0x2FC, 0x12, v7);
}

- (void)setPosition:(CGPoint)position
{
  v5 = *MEMORY[0x1E69E9840];
  layer = self->_attr.layer;
  v4 = position;
  CA::Layer::set_position(layer, &v4);
}

- (void)setAnchorPoint:(CGPoint)anchorPoint
{
  y = anchorPoint.y;
  x = anchorPoint.x;
  v23 = *MEMORY[0x1E69E9840];
  v22 = anchorPoint;
  v7 = CA::Transaction::ensure_compat(self);
  v8 = *(v7 + 29);
  *(v7 + 29) = v8 + 1;
  if (!v8)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  layer = self->_attr.layer;
  if (x == 0.0 && y == 0.0)
  {
    if ((*(layer + 57) & 0x20) == 0)
    {
      *&v20.isa = 0.0;
      CA::Layer::begin_change(layer, v7, @"anchorPoint", &v20, v6);
      v10 = CA::Layer::writable_state(layer, v7);
      *(v10 + 4) |= 0x3000u;
      v11 = *(v10 + 4);
      if (v11)
      {
        v11 = CA::AttrList::remove(v11, 0x21);
      }

      *(v10 + 4) = v11;
      CA::Layer::end_change(layer, v7, 33, @"anchorPoint", v20.isa);
    }
  }

  else
  {
    *&v20.isa = 0.0;
    v21 = 0.0;
    if ((*(layer + 57) & 0x20) != 0 || (v12 = layer[9]) == 0 || !CA::AttrList::get(v12, 33, 0x13, &v20) || (*&v20.isa == x ? (v13 = v21 == y) : (v13 = 0), !v13))
    {
      v19 = 0;
      CA::Layer::begin_change(layer, v7, @"anchorPoint", &v19, v6);
      v14 = CA::Layer::writable_state(layer, v7);
      v15 = v14;
      if (y == 0.5 && x == 0.5)
      {
        v17 = 0;
      }

      else
      {
        v17 = 4096;
      }

      *(v14 + 4) = *(v14 + 4) & 0xFFFFCFFF | v17;
      v18 = *(v14 + 4);
      if (!v18)
      {
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        v18 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x10uLL, 0x1020040EDED9539uLL);
      }

      *(v15 + 4) = CA::AttrList::set(v18, 0x21, 19, &v22);
      CA::Layer::end_change(layer, v7, 33, @"anchorPoint", v19);
    }
  }

  CA::Transaction::unlock(v7);
}

- (void)setBounds:(CGRect)bounds
{
  v6 = *MEMORY[0x1E69E9840];
  if (bounds.size.width < 0.0 || bounds.size.height < 0.0)
  {
    bounds = CGRectStandardize(bounds);
  }

  layer = self->_attr.layer;
  v5 = bounds;
  if (bounds.size.width < 0.0)
  {
    v5.origin.x = bounds.size.width + bounds.origin.x;
    v5.size.width = -bounds.size.width;
  }

  if (bounds.size.height < 0.0)
  {
    v5.origin.y = bounds.size.height + bounds.origin.y;
    v5.size.height = -bounds.size.height;
  }

  CA::Layer::set_bounds(layer, &v5);
}

- (BOOL)shouldArchiveValueForKey:(NSString *)key
{
  v5 = CAInternAtom(key, 1);
  v6 = v5;
  v7 = 0;
  layer = self->_attr.layer;
  do
  {
    if (v5 == [CALayer shouldArchiveValueForKey:]::always_archived[v7])
    {
      goto LABEL_70;
    }

    ++v7;
  }

  while (v7 != 4);
  v9 = CAAtomIndexInArray(22, [CALayer shouldArchiveValueForKey:]::atoms, v5);
  if (v9 == -1)
  {
    goto LABEL_44;
  }

  if (v6 <= 198)
  {
    if (v6 <= 150)
    {
      if (v6 <= 130)
      {
        if (v6 != 33)
        {
          if (v6 == 82)
          {
            return (*(layer + 59) >> 5) & 1;
          }

          goto LABEL_44;
        }

        v14 = *(layer + 57);
        return (v14 >> 4) & 1;
      }

      if (v6 == 131)
      {
        if ((layer[14] & 0x80000000) == 0)
        {
          goto LABEL_59;
        }

        if ((CAEncodeBackingStores & 1) == 0)
        {
          v21 = *(layer + 18);
          if (v21)
          {
            v22 = CFGetTypeID(v21);
            if (CABackingStoreGetTypeID::once[0] != -1)
            {
              dispatch_once(CABackingStoreGetTypeID::once, &__block_literal_global_1020);
            }

            if (v22 == CABackingStoreGetTypeID::type)
            {
              goto LABEL_59;
            }
          }
        }

        goto LABEL_70;
      }

      if (v6 != 144)
      {
        goto LABEL_44;
      }

      v13 = *(layer + 60);
      return (v13 >> 1) & 1;
    }

    if (v6 > 162)
    {
      if (v6 == 163)
      {
        v20 = *(layer + 60);
        return (v20 >> 2) & 1;
      }

      if (v6 == 182)
      {
        return (*(layer + 59) >> 6) & 1;
      }
    }

    else
    {
      if (v6 != 151)
      {
        if (v6 == 152)
        {
          return *(layer + 65) >> 7;
        }

        goto LABEL_44;
      }

      if ((*(layer + 47) & 0xC) != 0)
      {
        goto LABEL_70;
      }
    }
  }

  else
  {
    if (v6 > 568)
    {
      if (v6 > 627)
      {
        if (v6 != 628)
        {
          if (v6 != 655)
          {
            if (v6 == 694)
            {
              v10 = CA::Layer::sublayers(layer);
LABEL_41:
              LOBYTE(v11) = v10 != 0;
              return v11;
            }

            goto LABEL_44;
          }

LABEL_59:
          LOBYTE(v11) = 0;
          return v11;
        }

        v20 = *(layer + 67);
        return (v20 >> 2) & 1;
      }

      if (v6 != 569)
      {
        if (v6 != 592 || (*(layer + 47) & 0x30) == 0)
        {
          goto LABEL_44;
        }

LABEL_70:
        LOBYTE(v11) = 1;
        return v11;
      }

      v14 = *(layer + 59);
      return (v14 >> 4) & 1;
    }

    if (v6 <= 502)
    {
      if (v6 != 199)
      {
        if (v6 == 214)
        {
          return (*(layer + 60) >> 3) & 1;
        }

        goto LABEL_44;
      }

      v13 = *(layer + 67);
      return (v13 >> 1) & 1;
    }

    if (v6 == 503)
    {
      v10 = CA::Layer::mask(layer);
      goto LABEL_41;
    }

    if (v6 == 505)
    {
      LOBYTE(v12) = *(layer + 67);
LABEL_54:
      LOBYTE(v11) = v12 & 1;
      return v11;
    }
  }

LABEL_44:
  v15 = &BOOL_bits;
  v16 = 52;
  do
  {
    if (v6 == v15[4])
    {
      v12 = layer[(v15[1] >> 5) + 11] >> v15[1];
      goto LABEL_54;
    }

    v15 += 8;
    --v16;
  }

  while (v16);
  v17 = CA::Transaction::ensure_compat(v9);
  v18 = *(v17 + 29);
  *(v17 + 29) = v18 + 1;
  if (!v18)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v19 = *(layer + 9);
  if (v19)
  {
    while (1)
    {
      v19 = *v19;
      if (!v19)
      {
        break;
      }

      if ((v19[1] & 0xFFFFFF) == v6)
      {
        LOBYTE(v11) = 1;
        goto LABEL_57;
      }
    }
  }

  if ((~layer[1] & 0x68000) != 0 || (v24 = [(CALayer *)self modelLayer], v24 == self))
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    v11 = [-[CALayer valueForKey:](v24 valueForKey:{key), "isEqual:", -[CALayer valueForKey:](self, "valueForKey:", key)}] ^ 1;
  }

LABEL_57:
  CA::Transaction::unlock(v17);
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  CAObject_encodeWithCoder(self, a3);
  if (*(self->_attr.layer + 35))
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = CA::Transaction::ensure_compat(v9);
    v7 = *(v6 + 29);
    *(v6 + 29) = v7 + 1;
    if (!v7)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    for (i = *(self->_attr.layer + 35); i; i = *i)
    {
      if (i[2] && (*(i + 58) & 1) == 0 && (*(i + 61) & 1) == 0 && ((CALayerEncodeAllAnimations & 1) != 0 || ([i[1] isRemovedOnCompletion] & 1) == 0))
      {
        [v5 addObject:i[1]];
        [(CA::Transaction *)v9 addObject:i[2]];
      }
    }

    CA::Transaction::unlock(v6);
    [a3 encodeObject:v5 forKey:@"CALayerAnimations"];
    [a3 encodeObject:v9 forKey:@"CALayerAnimationKeys"];
  }
}

- (CALayer)initWithCoder:(id)a3
{
  v4 = CAObject_initWithCoder(self, a3);
  if (v4)
  {
    if (CALayerDecodeAnimations(CALayer *,NSCoder *)::once[0] != -1)
    {
      dispatch_once(CALayerDecodeAnimations(CALayer *,NSCoder *)::once, &__block_literal_global_13828);
    }

    v5 = [a3 decodeObjectOfClasses:objc_msgSend(MEMORY[0x1E696AB10] forKey:{"CA_supportedClasses"), @"CALayerAnimations"}];
    v6 = [a3 decodeObjectOfClasses:CALayerDecodeAnimations(CALayer * forKey:{NSCoder *)::keys_classes, @"CALayerAnimationKeys"}];
    if (v5)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v8 = v6;
      v9 = [v5 count];
      v10 = [v8 count];
      if (v9)
      {
        if (v10 == v9)
        {
          for (i = 0; i != v9; ++i)
          {
            v12 = [v5 objectAtIndex:i];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [v8 objectAtIndex:i];
              v14 = CFGetTypeID(v13);
              if (v14 == CFStringGetTypeID())
              {
                CA::Layer::add_animation(v4[2], v12, v13);
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

- (BOOL)CA_validateValue:(id)a3 forKey:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    goto LABEL_11;
  }

  v7 = CAInternAtom(a4, 0);
  if (v7 <= 578)
  {
    if (v7 == 131)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        return 1;
      }

      v11 = CFGetTypeID(a3);
      if (v11 == CGImageGetTypeID())
      {
        return 1;
      }

      if (CABackingStoreGetTypeID::once[0] != -1)
      {
        dispatch_once(CABackingStoreGetTypeID::once, &__block_literal_global_1020);
      }

      if (v11 == CABackingStoreGetTypeID::type || v11 == IOSurfaceGetTypeID())
      {
        return 1;
      }

      if (CAMachPortGetTypeID::once[0] != -1)
      {
        dispatch_once(CAMachPortGetTypeID::once, &__block_literal_global_6212);
      }

      if (v11 == CAMachPortGetTypeID::type || v11 == CVPixelBufferGetTypeID())
      {
        return 1;
      }

      if (CAIOSurfaceGetTypeID::once != -1)
      {
        dispatch_once(&CAIOSurfaceGetTypeID::once, &__block_literal_global_2576);
      }

      if (v11 == CAIOSurfaceGetTypeID::type)
      {
        return 1;
      }

      if (CAImageQueueGetTypeID::once[0] != -1)
      {
        dispatch_once(CAImageQueueGetTypeID::once, &__block_literal_global_44_15357);
      }

      if (v11 == CAImageQueueGetTypeID::type)
      {
        return 1;
      }

      if (CAImageProviderGetTypeID::once[0] != -1)
      {
        dispatch_once(CAImageProviderGetTypeID::once, &__block_literal_global_5_9450);
      }

      if (v11 == CAImageProviderGetTypeID::type)
      {
        return 1;
      }

      if (CARenderObjectGetTypeID::once[0] != -1)
      {
        dispatch_once(CARenderObjectGetTypeID::once, &__block_literal_global_6);
      }

      return v11 == CARenderObjectGetTypeID::type;
    }

    if (v7 == 159)
    {
      v8 = CFGetTypeID(a3);
      return v8 == CGImageGetTypeID();
    }

LABEL_11:
    v12.receiver = self;
    v12.super_class = CALayer;
    return [&v12 CA_validateValue:a3 forKey:a4];
  }

  if (v7 != 579 && v7 != 694)
  {
    goto LABEL_11;
  }

  objc_opt_class();

  return CAObject_validateArrayOfClass(a3);
}

- (void)setValue:(id)a3 forKeyPath:(id)a4
{
  v7 = [a4 rangeOfString:@"."];
  if (!v8)
  {

    [(CALayer *)self setValue:a3 forKey:a4];
    return;
  }

  v9 = v7;
  v10 = [a4 substringToIndex:v7];
  v11 = CAInternAtom(v10, 0);
  v12 = v11;
  v13 = *(self->_attr.layer + 1) & 0x60000;
  if (v13 == 0x40000)
  {
    v14 = [(CALayer *)self _renderLayerDefinesProperty:v11];
    if (v14)
    {
      return;
    }

    v15 = CA::Transaction::ensure_compat(v14);
    goto LABEL_9;
  }

  v16 = CA::Transaction::ensure_compat(v11);
  v15 = v16;
  if (v13)
  {
LABEL_9:
    v17 = 0;
    v18 = 0;
    goto LABEL_10;
  }

  v18 = 0;
  v17 = 1;
  if (v12 != 503 && v12 != 694)
  {
    v22 = v16 + 104;
    do
    {
      v22 = *v22;
      if (!v22)
      {
        goto LABEL_26;
      }
    }

    while ((v22[28] & 1) == 0);
    if ((v22[24] & 1) == 0)
    {
LABEL_26:
      v18 = [(CALayer *)self actionForKey:a4];
      goto LABEL_48;
    }

    v18 = 0;
LABEL_48:
    v17 = 1;
  }

LABEL_10:
  v19 = [a4 substringFromIndex:v9 + 1];
  if (v12 <= 135)
  {
    switch(v12)
    {
      case 64:
        v20 = 1024;
        break;
      case 124:
        v20 = 2048;
        break;
      case 131:
        goto LABEL_19;
      default:
LABEL_28:
        CAObject_setValueForKeyPath_(self, a3, v10, v19, 0);
        if (v18)
        {
          v23 = v17;
        }

        else
        {
          v23 = 0;
        }

        if ((v23 & 1) == 0)
        {
          return;
        }

LABEL_43:

        [v18 runActionForKey:a4 object:self arguments:0];
        return;
    }

LABEL_34:
    v21 = 1;
    goto LABEL_36;
  }

  if (v12 != 136)
  {
    if (v12 == 159)
    {
      v21 = 0;
      v20 = 0x80000;
      goto LABEL_36;
    }

    if (v12 != 256)
    {
      goto LABEL_28;
    }

    v20 = 512;
    goto LABEL_34;
  }

LABEL_19:
  v21 = 0;
  v20 = 1;
LABEL_36:
  CAObject_setValueForKeyPath_(self, a3, v10, v19, v21);
  if (v17)
  {
    v24 = *(v15 + 29);
    *(v15 + 29) = v24 + 1;
    if (!v24)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    layer = self->_attr.layer;
    v26 = (v20 & 1) != 0 ? 1032 : 8;
    *(layer + 10) |= v20 & 0x80E00;
    CA::Layer::mark(layer, v15, v26, 16);
    CA::Transaction::unlock(v15);
    if (v18)
    {
      goto LABEL_43;
    }
  }
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = a3;
  v7 = CA::Transaction::ensure_compat(self);
  v8 = CAInternAtom(a4, 1);
  v9 = *(v7 + 29);
  *(v7 + 29) = v9 + 1;
  if (!v9)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  layer = self->_attr.layer;
  v17 = 0;
  v11 = *(layer + 9);
  if (!v11 || !CA::AttrList::get(v11, v8, 1, &v17) || ([v17 isEqual:a3] & 1) == 0)
  {
    v16 = 0;
    String = CAAtomGetString(v8);
    CA::Layer::begin_change(layer, v7, String, &v16, v13);
    v14 = CA::Layer::writable_state(layer, v7);
    v15 = *(v14 + 4);
    if (!v15)
    {
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v15 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x10uLL, 0x1020040EDED9539uLL);
    }

    *(v14 + 4) = CA::AttrList::set(v15, v8, 2, v18);
    CA::Layer::end_change(layer, v7, v8, String, v16);
  }

  CA::Transaction::unlock(v7);
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  if ((*(self->_attr.layer + 1) & 0x60000) != 0x40000 || ![(CALayer *)self _renderLayerDefinesProperty:CAInternAtom(a4, 0)])
  {
    v7 = +[CALayer superclass];

    CAObject_setValueForKey(self, v7, a3, a4);
  }
}

- (id)valueForUndefinedKey:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = CA::Transaction::ensure_compat(self);
  v6 = CAInternAtom(a3, 1);
  v7 = *(v5 + 29);
  *(v5 + 29) = v7 + 1;
  if (!v7)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  layer = self->_attr.layer;
  v12[0] = 0;
  v9 = *(layer + 9);
  if ((!v9 || (CA::AttrList::get(v9, v6, 1, v12) & 1) == 0) && (CA::Layer::style_value(layer, v6, v12) & 1) == 0)
  {
    v12[0] = 0;
  }

  v10 = v12[0];
  CA::Transaction::unlock(v5);
  return v10;
}

- (id)CA_archivingValueForKey:(id)a3
{
  v4 = self;
  if ((~*(self->_attr.layer + 1) & 0x68000) == 0)
  {
    v4 = [(CALayer *)self modelLayer];
  }

  v5 = +[CALayer superclass];

  return CAObject_valueForKey(v4, v5, a3);
}

- (id)valueForKey:(id)a3
{
  v5 = +[CALayer superclass];

  return CAObject_valueForKey(self, v5, a3);
}

- (id)debugDescription
{
  v3 = CA::Transaction::ensure_compat(self);
  layer = self->_attr.layer;
  v5 = [MEMORY[0x1E696AD60] string];
  v6 = objc_opt_class();
  [(__CFString *)v5 appendFormat:@"<%@:%p; ", NSStringFromClass(v6), self];
  v7 = [(CALayer *)self name];
  if (v7)
  {
    [(__CFString *)v5 appendFormat:@"name = %@; ", v7];
  }

  [(__CFString *)v5 appendFormat:@"position = CGPoint (%g %g); ", *(layer + 10), *(layer + 11)];
  [(__CFString *)v5 appendFormat:@"bounds = CGRect (%g %g; %g %g); ", *(layer + 12), *(layer + 13), *(layer + 14), *(layer + 15)];
  if (layer[136] != 1)
  {
    Weak = *(layer + 16);
    if (!Weak)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  Weak = objc_loadWeak(layer + 16);
  if (Weak)
  {
LABEL_7:
    [(__CFString *)v5 appendFormat:@"delegate = %@; ", Weak];
  }

LABEL_8:
  if (*(layer + 18))
  {
    [(__CFString *)v5 appendFormat:@"contents = %@; ", *(layer + 18)];
  }

  if (CA::Layer::sublayers(layer))
  {
    -[__CFString appendFormat:](v5, "appendFormat:", @"sublayers = (");
    v9 = *(CA::Layer::sublayers(layer) + 2);
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        if (i)
        {
          v11 = ", ";
        }

        else
        {
          v11 = "";
        }

        v12 = CA::Layer::sublayers(layer);
        v13 = (v12 + 8);
        if (*(v12 + 2) != 1 || *(v12 + 3))
        {
          v13 = *v13;
        }

        [(__CFString *)v5 appendFormat:@"%s%@", v11, v13[i]];
      }
    }

    [(__CFString *)v5 appendFormat:@"; "]);
  }

  if (CA::Layer::mask(layer))
  {
    [(__CFString *)v5 appendFormat:@"mask = %@; ", CA::Layer::mask(layer)];
  }

  v14 = (layer + 44);
  v15 = &BOOL_bits;
  v16 = 52;
  do
  {
    if (*(v15 + 24) != ((v14[*v15 >> 5] >> *v15) & 1))
    {
      if (*(v15 + 24))
      {
        v17 = "NO";
      }

      else
      {
        v17 = "YES";
      }

      [(__CFString *)v5 appendFormat:@"%s = %s; ", *(v15 + 1), v17];
    }

    v15 += 8;
    --v16;
  }

  while (v16);
  v18 = *(v3 + 29);
  *(v3 + 29) = v18 + 1;
  if (!v18)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  if ((layer[57] & 0x20) != 0)
  {
    [(__CFString *)v5 appendString:@"anchorPoint = CGPoint (0 0); "];
  }

  v19 = *v14;
  if (((*v14 >> 26) & 3) != 0)
  {
    [(__CFString *)v5 appendFormat:@"contentsScale = %u; ", (v19 >> 26) & 3];
    v19 = *v14;
  }

  v20 = (v19 >> 28) & 3;
  if (v20)
  {
    [(__CFString *)v5 appendFormat:@"rasterizationScale = %u; ", v20];
  }

  v21 = *(layer + 9);
  if (v21)
  {
    CA::AttrList::append_description(*v21, v5);
  }

  if (*(layer + 35))
  {
    [(__CFString *)v5 appendString:@"; animations = ["];
    v22 = *(layer + 35);
    if (v22)
    {
      v23 = 1;
      do
      {
        if ((*(v22 + 61) & 1) == 0 && (*(v22 + 58) & 1) == 0)
        {
          if ((v23 & 1) == 0)
          {
            [(__CFString *)v5 appendString:@" "];
          }

          if (v22[2])
          {
            [(__CFString *)v5 appendFormat:@"%@=%@", v22[2], v22[1]];
          }

          else
          {
            [(__CFString *)v5 appendFormat:@"%@", v22[1], v25];
          }

          v23 = 0;
        }

        v22 = *v22;
      }

      while (v22);
    }

    [(__CFString *)v5 appendString:@"]"];
  }

  CA::Transaction::unlock(v3);
  [(__CFString *)v5 appendString:@">"];
  return v5;
}

- (id)_initWithReference:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[CALayer _initWithReference:]", "CALayer.mm", 2108, "[layer isKindOfClass:[self class]]");
  }

  self->_attr.magic = 1279351122;
  v16.receiver = self;
  v16.super_class = CALayer;
  v5 = [(CALayer *)&v16 init];
  v6 = v5;
  if (v5)
  {
    v7 = *(a3 + 2);
    v10 = *(v7 + 40);
    v8 = v7 + 40;
    v9 = v10;
    v11 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
    if (!v11)
    {
      v11 = CA::Transaction::create(v5);
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v12 = malloc_type_zone_malloc(malloc_zone, 0x128uLL, 0x165299FDuLL);
    if (v12)
    {
      layer = v12;
      *v12 = 0;
      v12[1] = 0;
      if (v9)
      {
        v14 = 33980418;
      }

      else
      {
        v14 = 33980416;
      }

      v12[3] = 0;
      v12[4] = 0;
      v12[2] = v6;
      CA::Layer::State::State((v12 + 5), v8, v11);
      layer[19] = 0;
      layer[20] = 0;
      *(layer + 44) = 0;
      layer[21] = 0;
      *(layer + 23) = 0u;
      *(layer + 25) = 0u;
      *(layer + 27) = 0u;
      *(layer + 29) = 0u;
      *(layer + 248) = 0;
      layer[32] = 0;
      layer[33] = 0;
      layer[35] = 0;
      layer[36] = 0;
      *layer = 1;
      *(layer + 1) = v14;
      layer[34] = 0;
      v6->_attr.layer = layer;
    }

    else
    {
      layer = v6->_attr.layer;
    }

    CA::Layer::set_model_layer(layer, v11, *(a3 + 2));
  }

  return v6;
}

- (CALayer)initWithLayer:(id)layer
{
  v16 = *MEMORY[0x1E69E9840];
  self->_attr.magic = 1279351122;
  v15.receiver = self;
  v15.super_class = CALayer;
  v3 = [(CALayer *)&v15 init];
  v4 = v3;
  if (v3 && !v3->_attr.layer)
  {
    v5 = objc_opt_class();
    v7 = CA::Layer::class_state(v5, v6);
    v8 = v7;
    v9 = *v7;
    v10 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
    if (!v10)
    {
      v10 = CA::Transaction::create(v7);
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v11 = malloc_type_zone_malloc(malloc_zone, 0x128uLL, 0x165299FDuLL);
    if (v11)
    {
      v12 = v11;
      *v11 = 0;
      v11[1] = 0;
      if (v9)
      {
        v13 = 33554434;
      }

      else
      {
        v13 = 0x2000000;
      }

      v11[3] = 0;
      v11[4] = 0;
      v11[2] = v4;
      CA::Layer::State::State((v11 + 5), v8, v10);
      v12[19] = 0;
      v12[20] = 0;
      *(v12 + 44) = 0;
      v12[21] = 0;
      *(v12 + 23) = 0u;
      *(v12 + 25) = 0u;
      *(v12 + 27) = 0u;
      *(v12 + 29) = 0u;
      *(v12 + 248) = 0;
      v12[32] = 0;
      v12[33] = 0;
      v12[35] = 0;
      v12[36] = 0;
      *v12 = 1;
      *(v12 + 1) = v13;
      v12[34] = 0;
      v4->_attr.layer = v12;
    }
  }

  return v4;
}

- (unint64_t)retainCount
{
  refcount = self->_attr.refcount;
  if (refcount <= 1)
  {
    return 1;
  }

  else
  {
    return refcount;
  }
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3
{
  v4 = objc_opt_class();

  return CAObject_automaticallyNotifiesObserversForKey(v4, a3);
}

+ (CALayer)allocWithZone:(_NSZone *)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___CALayer;
  result = objc_msgSendSuper2(&v4, sel_allocWithZone_, a3);
  if (result)
  {
    result->_attr.refcount = 1;
  }

  return result;
}

+ (id)defaultValueForKey:(NSString *)key
{
  v3 = CAInternAtom(key, 0);
  v4 = v3;
  if (v3 <= 202)
  {
    if (v3 > 62)
    {
      v5 = @"RGBA8";
      switch(v3)
      {
        case 133:
        case 145:
        case 146:
          goto LABEL_32;
        case 134:
        case 150:
          v5 = +[CALayer defaultValueForKey:]::unitRect;
          if (!+[CALayer defaultValueForKey:]::unitRect)
          {
            v5 = [MEMORY[0x1E696B098] valueWithRect:{0.0, 0.0, 1.0, 1.0}];
            +[CALayer defaultValueForKey:]::unitRect = v5;
          }

          return v5;
        case 135:
        case 137:
        case 140:
        case 141:
        case 142:
        case 143:
        case 148:
        case 149:
        case 154:
        case 155:
        case 156:
        case 157:
        case 158:
        case 159:
        case 161:
          goto LABEL_65;
        case 136:
          v5 = +[CALayer defaultValueForKey:]::nullRect;
          if (!+[CALayer defaultValueForKey:]::nullRect)
          {
            v5 = [MEMORY[0x1E696B098] valueWithRect:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
            +[CALayer defaultValueForKey:]::nullRect = v5;
          }

          return v5;
        case 138:
        case 151:
          goto LABEL_37;
        case 139:
          return v5;
        case 144:
          return @"resize";
        case 147:
          v5 = white;
          if (!white)
          {
            v17 = CAGetColorSpace(36);
            v5 = CGColorCreate(v17, +[CALayer defaultValueForKey:]::values);
            white = v5;
          }

          return v5;
        case 152:
          return @"stretch";
        case 153:
          return @"RGBA";
        case 160:
          v5 = +[CALayer defaultValueForKey:]::fullRect;
          if (!+[CALayer defaultValueForKey:]::fullRect)
          {
            v5 = [MEMORY[0x1E696B098] valueWithRect:{0.5, 0.5, 0.0, 0.0}];
            +[CALayer defaultValueForKey:]::fullRect = v5;
          }

          return v5;
        case 162:
          if (LINKED_DEFAULT_CONTINUOUS_CORNERS)
          {
            return @"continuous";
          }

          else
          {
            return @"circular";
          }

        default:
          if (v3 == 63)
          {
            v5 = +[CALayer defaultValueForKey:]::defPhase;
            if (!+[CALayer defaultValueForKey:]::defPhase)
            {
              v5 = [MEMORY[0x1E696B098] valueWithSize:{0.0, 0.0}];
              +[CALayer defaultValueForKey:]::defPhase = v5;
            }

            return v5;
          }

          if (v3 != 74)
          {
            goto LABEL_65;
          }

          break;
      }

      goto LABEL_51;
    }

    switch(v3)
    {
      case 16:
        v7 = "CALAYER_ALLOWS_EDGE_ANTIALIASING";
        v8 = @"CALayerAllowsEdgeAntialiasing";
        v9 = @"UIViewEdgeAntialiasing";
        break;
      case 20:
        v7 = "CALAYER_ALLOWS_GROUP_OPACITY";
        v8 = @"CALayerAllowsGroupOpacity";
        v9 = @"UIViewGroupOpacity";
        break;
      case 33:
        v5 = +[CALayer defaultValueForKey:]::defAnchor;
        if (!+[CALayer defaultValueForKey:]::defAnchor)
        {
          v5 = [MEMORY[0x1E696B098] valueWithPoint:{0.5, 0.5}];
          +[CALayer defaultValueForKey:]::defAnchor = v5;
        }

        return v5;
      default:
        goto LABEL_65;
    }

    v10 = getenv(v7);
    if (v10)
    {
      v11 = atoi(v10);
      v12 = MEMORY[0x1E695E4D0];
      if (!v11)
      {
        v12 = MEMORY[0x1E695E4C0];
      }

      return *v12;
    }

    v13 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
    v14 = [v13 objectForKey:v8];
    if (v14 || (v14 = [v13 objectForKey:v9]) != 0)
    {
      v5 = v14;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        return v5;
      }
    }

    if (v4 == 20 && dyld_program_sdk_at_least())
    {
      v12 = MEMORY[0x1E695E4D0];
      return *v12;
    }

LABEL_65:
    v15 = &BOOL_bits;
    v16 = 52;
    while (v15[4] != v4)
    {
      v5 = 0;
      v15 += 8;
      if (!--v16)
      {
        return v5;
      }
    }

    if (*(v15 + 24))
    {
      v12 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v12 = MEMORY[0x1E695E4C0];
    }

    return *v12;
  }

  if (v3 > 538)
  {
    if (v3 <= 637)
    {
      if (v3 <= 591)
      {
        if (v3 != 539)
        {
          if (v3 == 572)
          {
            return @"standard";
          }

          goto LABEL_65;
        }

LABEL_37:
        v5 = +[CALayer defaultValueForKey:]::one;
        if (!+[CALayer defaultValueForKey:]::one)
        {
          v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:1];
          +[CALayer defaultValueForKey:]::one = v5;
        }

        return v5;
      }

      if (v3 == 592)
      {
        goto LABEL_37;
      }

      if (v3 != 612)
      {
        goto LABEL_65;
      }
    }

    else
    {
      if (v3 > 646)
      {
        if (v3 != 647)
        {
          if (v3 != 671)
          {
            if (v3 == 709)
            {
              return @"automatic";
            }

            goto LABEL_65;
          }

          goto LABEL_37;
        }

        v5 = +[CALayer defaultValueForKey:]::three;
        if (!+[CALayer defaultValueForKey:]::three)
        {
          v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:3];
          +[CALayer defaultValueForKey:]::three = v5;
        }

        return v5;
      }

      if (v3 != 638)
      {
        if (v3 != 643)
        {
          goto LABEL_65;
        }

        v5 = +[CALayer defaultValueForKey:]::defOffset;
        if (!+[CALayer defaultValueForKey:]::defOffset)
        {
          v5 = [MEMORY[0x1E696B098] valueWithSize:{0.0, -3.0}];
          +[CALayer defaultValueForKey:]::defOffset = v5;
        }

        return v5;
      }
    }

LABEL_51:
    v5 = black;
    if (!black)
    {
      v6 = CAGetColorSpace(36);
      v5 = CGColorCreate(v6, &xmmword_183E31A48);
      black = v5;
    }

    return v5;
  }

  if (v3 > 278)
  {
    if (v3 > 504)
    {
      if (v3 == 505)
      {
        v5 = +[CALayer defaultValueForKey:]::corners;
        if (!+[CALayer defaultValueForKey:]::corners)
        {
          v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:15];
          +[CALayer defaultValueForKey:]::corners = v5;
        }

        return v5;
      }

      if (v3 != 518)
      {
        goto LABEL_65;
      }
    }

    else
    {
      if (v3 == 279)
      {
        goto LABEL_37;
      }

      if (v3 != 500)
      {
        goto LABEL_65;
      }
    }

    return @"linear";
  }

  if (v3 > 213)
  {
    if (v3 != 214)
    {
      if (v3 == 250)
      {
        return @"removed";
      }

      goto LABEL_65;
    }

    v5 = +[CALayer defaultValueForKey:]::defEdges;
    if (!+[CALayer defaultValueForKey:]::defEdges)
    {
      v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:15];
      +[CALayer defaultValueForKey:]::defEdges = v5;
    }
  }

  else
  {
    if (v3 == 203)
    {
LABEL_32:
      v5 = +[CALayer defaultValueForKey:]::zero;
      if (!+[CALayer defaultValueForKey:]::zero)
      {
        v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:0];
        +[CALayer defaultValueForKey:]::zero = v5;
      }

      return v5;
    }

    if (v3 != 211)
    {
      goto LABEL_65;
    }

    v5 = +[CALayer defaultValueForKey:]::inf;
    if (!+[CALayer defaultValueForKey:]::inf)
    {
      v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:INFINITY];
      +[CALayer defaultValueForKey:]::inf = v5;
    }
  }

  return v5;
}

- (void)setBackgroundColorPhase:(CGSize)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CA::Layer::setter(self->_attr.layer, 0x3F, 0x14, &v3.width);
}

- (void)setSizeRequisition:(CGSize)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CA::Layer::setter(self->_attr.layer, 0x28F, 0x14, &v3.width);
}

- (CGSize)sizeRequisition
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 0.0;
  v5 = 0.0;
  CA::Layer::getter(self->_attr.layer, 0x28Fu, 0x14, &v4);
  v2 = v4;
  v3 = v5;
  result.height = v3;
  result.width = v2;
  return result;
}

- (BOOL)CAMLTypeSupportedForKey:(id)a3
{
  os_unfair_lock_lock(&[CALayer(CALayerPrivate) CAMLTypeSupportedForKey:]::lock);
  v5 = [CALayer(CALayerPrivate) CAMLTypeSupportedForKey:]::keys;
  if (![CALayer(CALayerPrivate) CAMLTypeSupportedForKey:]::keys)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{@"animations", 0}];
    [CALayer(CALayerPrivate) CAMLTypeSupportedForKey:]::keys = v5;
  }

  if (([v5 containsObject:a3] & 1) == 0)
  {
    if (!CAObject_CAMLTypeSupportedForKey(self, a3))
    {
      v6 = 0;
      goto LABEL_8;
    }

    [-[CALayer(CALayerPrivate) CAMLTypeSupportedForKey:]::keys addObject:a3];
  }

  v6 = 1;
LABEL_8:
  os_unfair_lock_unlock(&[CALayer(CALayerPrivate) CAMLTypeSupportedForKey:]::lock);
  return v6;
}

- (id)CAMLTypeForKey:(id)a3
{
  if ([a3 isEqualToString:@"animations"])
  {
    return @"NSDictionary";
  }

  return CAObject_CAMLTypeForKey(self, a3);
}

- (void)encodeWithCAMLWriter:(id)a3
{
  v5 = CAObject_encodeWithCAMLWriter(self, a3);
  if (*(self->_attr.layer + 35))
  {
    v6 = CA::Transaction::ensure_compat(v5);
    v7 = *(v6 + 29);
    *(v6 + 29) = v7 + 1;
    if (!v7)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    [a3 beginPropertyElement:@"animations"];
    [a3 beginElement:1];
    for (i = *(self->_attr.layer + 35); i; i = *i)
    {
      if (i[2] && (*(i + 58) & 1) == 0 && (*(i + 61) & 1) == 0 && (![i[1] isRemovedOnCompletion] || (objc_msgSend(a3, "encodingForReverseSerializationTest") & 1) != 0))
      {
        [a3 beginPropertyElement:i[2]];
        [a3 encodeObject:i[1]];
        [a3 endElement];
      }
    }

    [a3 endElement];
    [a3 endElement];

    CA::Transaction::unlock(v6);
  }
}

- (void)CAMLParser:(id)a3 setValue:(id)a4 forKey:(id)a5
{
  if ([a5 isEqualToString:@"animations"])
  {

    CFDictionaryApplyFunction(a4, add_animation, self);
  }

  else
  {

    [(CALayer *)self setValue:a4 forKey:a5];
  }
}

- (id)recursiveDescription
{
  v3 = [MEMORY[0x1E696AD60] string];
  appendLayerDescription(self, v3, 0);
  return v3;
}

- (void)removeIdentifier:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  layer = self->_attr.layer;
  v6 = CA::Transaction::ensure_compat(self);
  v7 = *(v6 + 29);
  *(v6 + 29) = v7 + 1;
  if (!v7)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v9.isa = 0;
  CA::Layer::begin_change(layer, v6, @"identifiers", &v9, v5);
  theSet = 0;
  CA::Layer::getter(layer, 0x135u, 2, &theSet);
  if (theSet)
  {
    CFSetRemoveValue(theSet, a3);
  }

  CA::Layer::end_change(layer, v6, 309, @"identifiers", v9.isa);
  CA::Transaction::unlock(v6);
}

- (void)addIdentifier:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  layer = self->_attr.layer;
  v6 = CA::Transaction::ensure_compat(self);
  v7 = *(v6 + 29);
  *(v6 + 29) = v7 + 1;
  if (!v7)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v10.isa = 0;
  CA::Layer::begin_change(layer, v6, @"identifiers", &v10, v5);
  allocator = 0;
  CA::Layer::getter(layer, 0x135u, 2, &allocator);
  v8 = allocator;
  if (!allocator)
  {
    allocator = CFSetCreateMutable(0, 2, MEMORY[0x1E695E9F8]);
    CA::Layer::setter(layer, 0x135, 2, &allocator);
    CFRelease(allocator);
    v8 = allocator;
  }

  CFSetAddValue(v8, a3);
  CA::Layer::end_change(layer, v6, 309, @"identifiers", v10.isa);
  CA::Transaction::unlock(v6);
}

- (void)setPresentationModifiers:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  layer = self->_attr.layer;
  v6 = CA::Transaction::ensure_compat(self);
  v7 = *(v6 + 29);
  *(v6 + 29) = v7 + 1;
  if (!v7)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v8 = *(layer + 36);
  v9[0] = 0;
  CA::Layer::begin_change(layer, v6, @"presentationModifiers", v9, v5);
  *(layer + 36) = [a3 mutableCopy];
  CA::Layer::end_change(layer, v6, 579, @"presentationModifiers", v9[0]);
  if (v8)
  {
    CA::Transaction::release_object(v6, v8);
  }

  CA::Transaction::unlock(v6);
}

- (void)removePresentationModifier:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  layer = self->_attr.layer;
  v6 = CA::Transaction::ensure_compat(self);
  v7 = *(v6 + 29);
  *(v6 + 29) = v7 + 1;
  if (!v7)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v8[0] = 0;
  CA::Layer::begin_change(layer, v6, @"presentationModifiers", v8, v5);
  [layer[36] removeObject:a3];
  CA::Layer::end_change(layer, v6, 579, @"presentationModifiers", v8[0]);

  CA::Transaction::unlock(v6);
}

- (void)addPresentationModifier:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  layer = self->_attr.layer;
  v6 = CA::Transaction::ensure_compat(self);
  v7 = *(v6 + 29);
  *(v6 + 29) = v7 + 1;
  if (!v7)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v9[0] = 0;
  CA::Layer::begin_change(layer, v6, @"presentationModifiers", v9, v5);
  v8 = *(layer + 36);
  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(layer + 36) = v8;
  }

  [v8 addObject:a3];
  CA::Layer::end_change(layer, v6, 579, @"presentationModifiers", v9[0]);

  CA::Transaction::unlock(v6);
}

- (unsigned)_renderLayerPropertyAnimationFlags:(unsigned int)a3
{
  v4 = CAAtomIndexInArray(53, &[CALayer(CALayerPrivate) _renderLayerPropertyAnimationFlags:]::geom_atoms, a3);
  v5 = 0;
  do
  {
    v6 = [CALayer(CALayerPrivate) _renderLayerPropertyAnimationFlags:]::non_image_atoms[v5];
  }

  while (v6 != a3 && v5++ != 7);
  v8 = 0;
  do
  {
    v9 = [CALayer(CALayerPrivate) _renderLayerPropertyAnimationFlags:]::velocity_atoms[v8];
  }

  while (v9 != a3 && v8++ != 7);
  v11 = 0;
  do
  {
    v12 = [CALayer(CALayerPrivate) _renderLayerPropertyAnimationFlags:]::color_atoms[v11];
  }

  while (v12 != a3 && v11++ != 7);
  v14 = 0;
  do
  {
    v15 = [CALayer(CALayerPrivate) _renderLayerPropertyAnimationFlags:]::edr_atoms[v14];
  }

  while (v15 != a3 && v14++ != 3);
  if (v6 == a3)
  {
    v17 = 16 * (v4 != -1);
  }

  else
  {
    v17 = (16 * (v4 != -1)) | 0x20;
  }

  if (a3 == 539 || a3 == 296)
  {
    v17 |= 0x100u;
  }

  if (a3 == 515)
  {
    v17 |= 0x40u;
  }

  if (v9 == a3)
  {
    v17 |= 0x800u;
  }

  if (v12 != a3)
  {
    v17 |= 0x1000u;
  }

  if (v15 == a3)
  {
    return v17 | 0x10000;
  }

  else
  {
    return v17;
  }
}

- (void)_copyRenderLayer:(void *)a3 layerFlags:(unsigned int)a4 commitFlags:(unsigned int *)a5
{
  v6 = a4;
  v341 = *MEMORY[0x1E69E9840];
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v9 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xA0uLL, 0xDEEC3011uLL);
  v11 = v9;
  if (v9)
  {
    *(v9 + 2) = 1;
    ++dword_1ED4EAAB0;
    *v9 = &unk_1EF1F53C8;
    *(v9 + 2) = 0;
    *(v9 + 3) = 0;
    *(v9 + 8) = 0;
    *(v9 + 9) = 16843007;
    *(v9 + 5) = *(v9 + 5) & 0x80000000 | 0x13000000F9F11;
    *(v9 + 12) = (v9[51] << 24) | 0x901818;
    *(v9 + 56) = 0u;
    *(v9 + 72) = 0u;
    *(v9 + 88) = 0u;
    *(v9 + 13) = 0;
    *(v9 + 120) = 0u;
    *(v9 + 136) = 0u;
    *(v9 + 19) = 0;
    v12 = 542;
  }

  else
  {
    v12 = MEMORY[0xC] | 0x200;
  }

  *(v9 + 3) = v12;
  layer = self->_attr.layer;
  v324 = v6;
  if ((v6 & 8) == 0)
  {
    v14 = 0;
    goto LABEL_436;
  }

  if ((layer[5] & 2) != 0)
  {
    v15 = CA::Layer::sublayers(layer);
    if (v15)
    {
      v16 = v15;
      v17 = *(v15 + 2);
      v18 = CA::Render::Array::new_array(v17, 0, 0, 1);
      if (v18)
      {
        v19 = v18;
        v20 = (v16 + 8);
        v321 = a5;
        if (v20[1] != 1 || v20[2])
        {
          v20 = *v20;
        }

        if (v17)
        {
          v21 = 0;
          v22 = CA::Render::Encoder::initialize_render_id_slide(void)::once == -1;
          do
          {
            v23 = *(v20[v21] + 16);
            if (!v22)
            {
              dispatch_once(&CA::Render::Encoder::initialize_render_id_slide(void)::once, &__block_literal_global_14306);
            }

            v24 = CA::Render::_render_id_slide + v23;
            if (!v23)
            {
              v24 = 0;
            }

            *&v19[2 * v21 + 6] = v24;
            v21 = (v21 + 1);
            v22 = 1;
          }

          while (v17 != v21);
        }

        CA::Render::Layer::set_sublayers(v11, v19);
        a5 = v321;
        if (atomic_fetch_add(v19 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v19 + 16))(v19);
        }
      }
    }
  }

  if ((layer[5] & 4) != 0)
  {
    v25 = CA::Layer::mask(self->_attr.layer);
    if (v25)
    {
      v26 = v25->_attr.layer;
      if (CA::Render::Encoder::initialize_render_id_slide(void)::once != -1)
      {
        dispatch_once(&CA::Render::Encoder::initialize_render_id_slide(void)::once, &__block_literal_global_14306);
      }

      if (v26)
      {
        v27 = &v26[CA::Render::_render_id_slide];
      }

      else
      {
        v27 = 0;
      }

      CA::Render::Layer::set_mask(v11, v27);
    }

    *(v11 + 40) = *(v11 + 40) & 0xFFFFFDFFFFFFFFFFLL | ((((layer[6] & 0x400000) >> 22) & 1) << 41);
  }

  v28 = CA::Context::current_colorspace(a3, v10);
  v322 = CAGetColorSpace(36);
  v29 = [(CALayer *)self contents];
  if (v324 & 0x400 | layer[5] & 1)
  {
    v31 = v29;
    if (v29)
    {
      v32 = CFGetTypeID(v29);
      if (v32 == CGImageGetTypeID())
      {
        v33 = [(CALayer *)self _renderImageCopyFlags];
        *(layer + 13) = (*(layer + 13) & 0x9FFFFFFF | ((v33 & 1) << 29) & 0xBFFFFFFF | (((v33 >> 8) & 1) << 30)) ^ 0x40000000;
        v34 = CA::Render::copy_image(v31, v28, v33, 0.0, 1.0);
      }

      else
      {
        v34 = [(CA::Render *)v31 CA_copyRenderValue];
      }

      v35 = v34;
      if (v34)
      {
        if ((*(layer + 58) & 4) != 0)
        {
          [(CALayer *)self contentsDirtyRect];
          v314 = v36;
          v315 = v37;
          v316 = v38;
          v317 = v39;
          if (!CGRectIsNull(*&v36))
          {
            v42 = *(v35 + 12);
            if (v42 <= 0x39 && ((1 << v42) & 0x200000000800200) != 0)
            {
              v43.i64[0] = v314;
              v43.i64[1] = v316;
              v41.f64[0] = 0.0;
              v44.i64[0] = *&v315.f64[0];
              v44.i64[1] = v317;
              v45 = vdupq_lane_s64(vcgtq_f64(v41, v315).i64[0], 0);
              v46.i64[1] = v316;
              *v46.i64 = v315.f64[0] + *&v314;
              v47 = vbslq_s8(v45, v46, v43);
              v46.i64[1] = v317;
              *v46.i64 = -v315.f64[0];
              v48 = vbslq_s8(v45, v46, v44);
              if (*&v317 < 0.0)
              {
                v47.f64[1] = *&v317 + *&v316;
                v48.f64[1] = -*&v317;
              }

              v49 = vceqzq_f64(v48);
              if ((vorrq_s8(vdupq_laneq_s64(v49, 1), v49).u64[0] & 0x8000000000000000) != 0 || (v50 = vceqq_f64(v48, v48), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v50), 1), v50).u64[0] & 0x8000000000000000) != 0))
              {
                memset(buf, 0, sizeof(buf));
              }

              else
              {
                v51 = vmaxnmq_f64(v47, vdupq_n_s64(0xC1BFFFFFFF000000));
                v52 = vminnmq_f64(vaddq_f64(v47, v48), vdupq_n_s64(0x41C0000000000000uLL));
                v53 = vcvtmq_s64_f64(v51);
                *buf = vuzp1q_s32(v53, vsubq_s64(vcvtpq_s64_f64(v52), v53));
              }

              v54 = CA::Shape::new_shape(buf, v40);
              CA::Render::Texture::set_dirty_shape(v35, v54);
              CA::Shape::unref(v54);
            }
          }

          *(layer + 14) &= ~0x40000u;
          v55 = layer[9];
          if (v55)
          {
            v55 = CA::AttrList::remove(v55, 0x88);
          }

          layer[9] = v55;
        }

        CA::Render::Layer::set_contents(v11, v35);
        if (atomic_fetch_add(v35 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v35 + 16))(v35);
        }
      }
    }
  }

  if ((*(layer + 42) & 8) != 0)
  {
    if ((*(layer + 57) & 8) != 0)
    {
      [(CALayer *)self cornerContentsCenter];
      *v60.i64 = v59;
      v60.i64[1] = v57;
      v61.f64[0] = 0.0;
      v63.i64[0] = *&v62.f64[0];
      v63.i64[1] = v58;
      v64 = vdupq_lane_s64(vcgtq_f64(v61, v62).i64[0], 0);
      v65.i64[1] = v57;
      *v65.i64 = v62.f64[0] + v59;
      v66 = vbslq_s8(v64, v65, v60);
      v60.i64[1] = v58;
      *v60.i64 = -v62.f64[0];
      v67 = vbslq_s8(v64, v60, v63);
      if (*&v58 < 0.0)
      {
        v66.f64[1] = *&v58 + *&v57;
        v67.f64[1] = -*&v58;
      }

      *buf = v66;
      v334 = vaddq_f64(v67, v66);
      v68 = CA::Render::Vector::new_vector(4, buf, v56);
      CA::Render::Layer::set_corner_contents_center(v11, v68);
      if (v68 && atomic_fetch_add(v68 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v68 + 16))(v68);
      }
    }

    v69 = [(CALayer *)self cornerContents:v314];
    v70 = v69;
    if (v69)
    {
      v71 = CFGetTypeID(v69);
      if (v71 == CGImageGetTypeID())
      {
        v72 = CA::Render::copy_image(v70, 0, 2, 0.0, 1.0);
        CA::Render::Layer::set_corner_contents(v11, v72);
        if (atomic_fetch_add(v72 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v72 + 16))(v72);
        }
      }

      else
      {
        if (x_log_get_api::once[0] != -1)
        {
          dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
        }

        v73 = x_log_get_api::log;
        if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_183AA6000, v73, OS_LOG_TYPE_DEFAULT, "cornerContents must be a CGImageRef for now!\n", buf, 2u);
        }
      }
    }
  }

  if ((*(layer + 41) & 0x40) != 0)
  {
    v74 = *(self->_attr.layer + 36);
    if (v74)
    {
      v75 = CA::Render::copy_render_array(v74, 44);
      CA::Render::Layer::set_modifiers(v11, v75);
      if (v75)
      {
        if (atomic_fetch_add(v75 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v75 + 16))(v75);
        }
      }
    }
  }

  if ((layer[5] & 8) != 0)
  {
    *(v11 + 40) = *(v11 + 40) & 0xFFFFFBFFFFFFFFFFLL | ((((*(layer + 12) & 0x80) >> 7) & 1) << 42);
    *(v11 + 56) = *(layer + 5);
    v76 = *(layer + 14);
    if ((v76 & 0x10) != 0)
    {
      [(CALayer *)self opacity];
      if (v77 > 1.0)
      {
        v77 = 1.0;
      }

      if (v77 < 0.0)
      {
        v77 = 0.0;
      }

      *(v11 + 36) = ((v77 * 255.0) + 0.5);
      v76 = *(layer + 14);
    }

    if ((v76 & 0x8000) != 0)
    {
      [(CALayer *)self zPosition];
      if (v78 != 0.0)
      {
        *(CA::Render::Layer::ensure_ext(v11) + 24) = v78;
      }
    }
  }

  if ((layer[5] & 0x10) != 0)
  {
    v79 = *(v11 + 40) & 0xFFFFFEFFFFFFFFFFLL | ((((layer[6] & 0x800) >> 11) & 1) << 40);
    *(v11 + 40) = v79;
    v80 = v79 & 0xFFFFF7FFFFFFFFFFLL | ((((layer[6] & 0x2000) >> 13) & 1) << 43);
    *(v11 + 40) = v80;
    v81 = v80 & 0xFFFFDFFFFFFFFFFFLL | ((((layer[6] & 0x40000000) >> 30) & 1) << 45);
    *(v11 + 40) = v81;
    v82 = v81 & 0xFFFFBFFFFFFFFFFFLL | ((((layer[6] & 0x80000000) >> 31) & 1) << 46);
    *(v11 + 40) = v82;
    v83 = v82 & 0xFFF7FFFFFFFFFFFFLL | ((((*(layer + 13) & 0x40000) >> 18) & 1) << 51);
    *(v11 + 40) = v83;
    *(v11 + 40) = v83 & 0xFFFF7FFFFFFFFFFFLL | ((*(layer + 13) & 1) << 47);
    *(v11 + 72) = *(layer + 6);
    *(v11 + 88) = *(layer + 7);
    v84 = *(layer + 14);
    if ((v84 & 0x1000) != 0)
    {
      [(CALayer *)self anchorPoint];
      *buf = v85;
      *&buf[8] = v86;
      CA::Render::Layer::set_anchor_point(v11, buf);
      v84 = *(layer + 14);
    }

    if ((v84 & 0x4000) != 0)
    {
      [(CALayer *)self anchorPointZ];
      if (v87 != 0.0 || *(v11 + 136))
      {
        *(CA::Render::Layer::ensure_ext(v11) + 23) = v87;
      }

      v84 = *(layer + 14);
    }

    if ((v84 & 0x200) != 0)
    {
      [(CALayer *)self contentsScale];
      v89 = v88;
      if (v89 != 1.0)
      {
        CA::Render::Layer::set_contents_scale(v11, v89);
      }
    }
  }

  if ((layer[5] & 0x20) != 0 && (layer[7] & 0x20) != 0)
  {
    if (self)
    {
      [(CALayer *)self transform];
      v91 = v325;
      v90 = v326;
      v93 = v327;
      v92 = v328;
      v95 = v329;
      v94 = v330;
      v97 = v331;
      v96 = v332;
    }

    else
    {
      v96 = 0uLL;
      v331 = 0u;
      v332 = 0u;
      v97 = 0uLL;
      v329 = 0u;
      v330 = 0u;
      v327 = 0u;
      v328 = 0u;
      v94 = 0uLL;
      v95 = 0uLL;
      v92 = 0uLL;
      v93 = 0uLL;
      v90 = 0uLL;
      v91 = 0uLL;
      v325 = 0u;
      v326 = 0u;
    }

    *buf = v91;
    v334 = v90;
    v335 = v93;
    v336 = v92;
    v337 = v95;
    v338 = v94;
    v339 = v97;
    v340 = v96;
    v98 = CA::Render::Vector::new_vector(0x10, buf, v30);
    CA::Render::Layer::set_transform(v11, v98);
    if (v98)
    {
      if (atomic_fetch_add(v98 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v98 + 16))(v98);
      }
    }
  }

  if ((layer[5] & 0x40) != 0 && (layer[7] & 0x40) != 0)
  {
    if (self)
    {
      [(CALayer *)self sublayerTransform];
      v100 = v325;
      v99 = v326;
      v102 = v327;
      v101 = v328;
      v104 = v329;
      v103 = v330;
      v106 = v331;
      v105 = v332;
    }

    else
    {
      v105 = 0uLL;
      v331 = 0u;
      v332 = 0u;
      v106 = 0uLL;
      v329 = 0u;
      v330 = 0u;
      v327 = 0u;
      v328 = 0u;
      v103 = 0uLL;
      v104 = 0uLL;
      v101 = 0uLL;
      v102 = 0uLL;
      v99 = 0uLL;
      v100 = 0uLL;
      v325 = 0u;
      v326 = 0u;
    }

    *buf = v100;
    v334 = v99;
    v335 = v102;
    v336 = v101;
    v337 = v104;
    v338 = v103;
    v339 = v106;
    v340 = v105;
    v107 = CA::Render::Vector::new_vector(0x10, buf, v30);
    CA::Render::Layer::set_sublayer_transform(v11, v107);
    if (v107)
    {
      if (atomic_fetch_add(v107 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v107 + 16))(v107);
      }
    }
  }

  if ((layer[5] & 0x80) != 0 && (*(layer + 57) & 4) != 0)
  {
    if (self)
    {
      [(CALayer *)self contentsTransform];
      v109 = v325;
      v108 = v326;
      v110 = v327;
    }

    else
    {
      v110 = 0uLL;
      v326 = 0u;
      v327 = 0u;
      v325 = 0u;
      v108 = 0uLL;
      v109 = 0uLL;
    }

    *buf = v109;
    v334 = v108;
    v335 = v110;
    v111 = CA::Render::Vector::new_vector(6, buf, v30);
    CA::Render::Layer::set_contents_transform(v11, v111);
    if (v111)
    {
      if (atomic_fetch_add(v111 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v111 + 16))(v111);
      }
    }
  }

  if (*(layer + 41) & 1) != 0 && (*(layer + 57))
  {
    [(CALayer *)self contentsRect];
    *v116.i64 = v115;
    v116.i64[1] = v113;
    v117.f64[0] = 0.0;
    v119.i64[0] = *&v118.f64[0];
    v119.i64[1] = v114;
    v120 = vdupq_lane_s64(vcgtq_f64(v117, v118).i64[0], 0);
    v121.i64[1] = v113;
    *v121.i64 = v118.f64[0] + v115;
    v122 = vbslq_s8(v120, v121, v116);
    v116.i64[1] = v114;
    *v116.i64 = -v118.f64[0];
    v123 = vbslq_s8(v120, v116, v119);
    if (*&v114 < 0.0)
    {
      v122.f64[1] = *&v114 + *&v113;
      v123.f64[1] = -*&v114;
    }

    *buf = v122;
    v334 = vaddq_f64(v123, v122);
    v124 = CA::Render::Vector::new_vector(4, buf, v112);
    CA::Render::Layer::set_contents_rect(v11, v124);
    if (v124 && atomic_fetch_add(v124 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v124 + 16))(v124);
    }
  }

  if ((*(layer + 42) & 2) != 0 && (layer[7] & 0x80) != 0)
  {
    [(CALayer *)self contentsCenter];
    *v129.i64 = v128;
    v129.i64[1] = v126;
    v130.f64[0] = 0.0;
    v132.i64[0] = *&v131.f64[0];
    v132.i64[1] = v127;
    v133 = vdupq_lane_s64(vcgtq_f64(v130, v131).i64[0], 0);
    v134.i64[1] = v126;
    *v134.i64 = v131.f64[0] + v128;
    v135 = vbslq_s8(v133, v134, v129);
    v129.i64[1] = v127;
    *v129.i64 = -v131.f64[0];
    v136 = vbslq_s8(v133, v129, v132);
    if (*&v127 < 0.0)
    {
      v135.f64[1] = *&v127 + *&v126;
      v136.f64[1] = -*&v127;
    }

    *buf = v135;
    v334 = vaddq_f64(v136, v135);
    v137 = CA::Render::Vector::new_vector(4, buf, v125);
    CA::Render::Layer::set_contents_center(v11, v137);
    if (v137 && atomic_fetch_add(v137 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v137 + 16))(v137);
    }
  }

  v138 = *(layer + 10);
  if ((v138 & 0x1000) != 0)
  {
    *buf = 0;
    CA::Layer::render_timing(buf, self->_attr.layer, a3);
    v139 = *buf;
    CA::Render::Layer::set_timing(v11, *buf);
    if (v139 && atomic_fetch_add(v139 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v139 + 16))(v139);
    }

    v138 = *(layer + 10);
  }

  if ((v138 & 0x200) != 0)
  {
    v140 = [(CALayer *)self filters];
    if (v140)
    {
      v141 = CA::Render::copy_render_array(v140, 17);
      CA::Render::Layer::set_filters(v11, v141);
      if (v141)
      {
        if (atomic_fetch_add(v141 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v141 + 16))(v141);
        }
      }
    }
  }

  if ((*(layer + 41) & 4) != 0)
  {
    v142 = [(CALayer *)self backgroundFilters];
    if (v142)
    {
      v143 = CA::Render::copy_render_array(v142, 17);
      CA::Render::Layer::set_background_filters(v11, v143);
      if (v143)
      {
        if (atomic_fetch_add(v143 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v143 + 16))(v143);
        }
      }
    }
  }

  if ((*(layer + 41) & 8) != 0)
  {
    v144 = [(CALayer *)self compositingFilter];
    if (v144)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v145 = CAInternAtom(v144, 0);
        v146 = CA::Render::Filter::shared_filter(v145);
        if (!v146)
        {
          goto LABEL_159;
        }

        v147 = v146;
        if (!atomic_fetch_add(v146 + 2, 1u))
        {
          atomic_fetch_add(v146 + 2, 0xFFFFFFFF);
          goto LABEL_159;
        }
      }

      else
      {
        v147 = [(__CFString *)v144 CA_copyRenderValue];
        if (!v147)
        {
          goto LABEL_159;
        }
      }

      if (*(v147 + 12) == 17)
      {
        CA::Render::Layer::set_compositing_filter(v11, v147);
      }

      if (atomic_fetch_add((v147 + 8), 0xFFFFFFFF) == 1)
      {
        (*(*v147 + 16))(v147);
      }
    }
  }

LABEL_159:
  if ((*(layer + 42) & 4) != 0)
  {
    v148 = [(CALayer *)self meshTransform];
    if (v148)
    {
      v149 = [(CAMeshTransform *)v148 CA_copyRenderValue];
      v150 = v149;
      if (v149)
      {
        if (*(v149 + 12) == 35)
        {
          CA::Render::Layer::set_mesh_transform(v11, v149);
        }

        if (atomic_fetch_add(v150 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v150 + 16))(v150);
        }
      }
    }
  }

  if ((*(layer + 42) & 0x10) != 0)
  {
    v151 = CA::Layer::identifiers(self->_attr.layer);
    if (v151)
    {
      v152 = CA::Render::copy_render_array([v151 allObjects], 54);
      CA::Render::Layer::set_identifiers(v11, v152);
      if (v152)
      {
        if (atomic_fetch_add(v152 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v152 + 16))(v152);
        }
      }
    }
  }

  v153 = *(layer + 10);
  if ((v153 & 0x8000) != 0)
  {
    [(CALayer *)self backgroundColorPhase];
    v156 = v155;
    v157 = v154;
    if (v155 != *MEMORY[0x1E695F060] || v154 != *(MEMORY[0x1E695F060] + 8))
    {
      v158 = CA::Render::Layer::ensure_ext(v11);
      v158[19] = v156;
      v158[20] = v157;
    }

    v159 = *(v11 + 40) & 0xFFFEFFFFFFFFFFFFLL | ((((*(layer + 13) & 0x20000) >> 17) & 1) << 48);
    *(v11 + 40) = v159;
    v160 = v159 & 0xFFFBFFFFFFFFFFFFLL | ((((*(layer + 13) & 0x4000) >> 14) & 1) << 50);
    *(v11 + 40) = v160;
    v161 = v160 & 0xFFFFFFFFFFFF0FFFLL | (((*(layer + 11) >> 3) & 0xF) << 12);
    *(v11 + 40) = v161;
    v162 = v161 & 0xFFFDFFFFFFFFFFFFLL | ((((*(layer + 13) & 0x10000) >> 16) & 1) << 49);
    *(v11 + 40) = v162;
    v163 = v162 & 0xFFFFFFCFFFFFFFFFLL | (((*(layer + 12) >> 3) & 3) << 36);
    *(v11 + 40) = v163;
    *(v11 + 40) = v163 & 0xFFFFFF3FFFFFFFFFLL | (((*(layer + 12) >> 5) & 3) << 38);
    *(v11 + 48) = *(v11 + 48) & 0xFFFFFFFE | (*(layer + 15) >> 14) & 1;
    *(v11 + 40) = *(v11 + 40) & 0xFFFFFFFFFFFFFF0FLL | (16 * CA::Render::Layer::image_filter_from_string([(CALayer *)self magnificationFilter:v314], 0));
    *(v11 + 40) = *(v11 + 40) & 0xFFFFFFFFFFFFFFF0 | CA::Render::Layer::image_filter_from_string([(CALayer *)self minificationFilter], 1);
    [(CALayer *)self minificationFilterBias];
    if (v164 != 0.0)
    {
      *(CA::Render::Layer::ensure_ext(v11) + 78) = v164;
    }

    v165 = [(CALayer *)self name];
    if (v165)
    {
      v167 = CA::Render::String::new_string(v165, v166);
      v168 = *(v11 + 128);
      if (v168 != v167)
      {
        if (v168 && atomic_fetch_add(v168 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v168 + 16))(v168);
        }

        if (v167)
        {
          v169 = v167;
          if (!atomic_fetch_add(v167 + 2, 1u))
          {
            v169 = 0;
            atomic_fetch_add(v167 + 2, 0xFFFFFFFF);
          }
        }

        else
        {
          v169 = 0;
        }

        *(v11 + 128) = v169;
      }

      if (v167 && atomic_fetch_add(v167 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v167 + 16))(v167);
      }
    }

    v170 = [(CALayer *)self backgroundColor];
    if (!v170)
    {
      goto LABEL_210;
    }

    memset(buf, 0, sizeof(buf));
    LODWORD(v334.f64[0]) = 0;
    *&v325 = 0;
    CA::Render::convert_cgcolor(v170, v28, buf, &v325, v171);
    v172 = *buf;
    v173 = *&buf[8];
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vcgtq_f32(vdupq_n_s32(0x3A800000u), vabsq_f32(*buf))))) & 1) == 0)
    {
LABEL_200:
      v177 = v325;
      if (v325)
      {
        v178 = CA::Render::Layer::ensure_ext(v11);
        v179 = v178[10];
        if (v179 != v177)
        {
          if (v179 && atomic_fetch_add(v179 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v179 + 16))(v179);
          }

          v180 = v177 + 2;
          if (!atomic_fetch_add(v177 + 2, 1u))
          {
            v177 = 0;
            atomic_fetch_add(v180, 0xFFFFFFFF);
          }

          v178[10] = v177;
        }

        v181 = v325;
        if (atomic_fetch_add((v325 + 8), 0xFFFFFFFF) == 1)
        {
          (*(*v181 + 16))(v181);
        }
      }

LABEL_210:
      v182 = *(layer + 11);
      if (((*(layer + 11) >> 7) & 0xF) != 0xF)
      {
        *(v11 + 40) = *(v11 + 40) & 0xFFFFFFFFFFFFF0FFLL | (((v182 >> 7) & 0xF) << 8);
        LODWORD(v182) = *(layer + 11);
      }

      v183 = (v182 >> 11) & 0xF;
      if (v183 != 15)
      {
        *(v11 + 40) = *(v11 + 40) & 0xFFFFFFFFFFF0FFFFLL | (v183 << 16);
        LODWORD(v182) = *(layer + 11);
      }

      v184 = (v182 >> 15) & 0x7FF;
      if (v184)
      {
        *(v11 + 40) = *(v11 + 40) & 0xFFFFFFFF800FFFFFLL | (v184 << 20);
        LODWORD(v182) = *(layer + 11);
      }

      v185 = v182 >> 30;
      if (v185)
      {
        *(v11 + 40) = *(v11 + 40) & 0xFFFFFFF3FFFFFFFFLL | ((v185 & 3) << 34);
      }

      [(CALayer *)self cornerRadius];
      if (v187 != 0.0)
      {
        v188 = v187;
        v189 = v188 >= 0.0 ? v188 : 0.0;
        if (v189 != 0.0 || *(v11 + 136))
        {
          *(CA::Render::Layer::ensure_ext(v11) + 58) = v189;
        }
      }

      if ((*(layer + 60) & 4) != 0)
      {
        v190 = 0uLL;
        v335 = 0u;
        v336 = 0u;
        *buf = 0u;
        v334 = 0u;
        v191 = 0uLL;
        v192 = 0uLL;
        v193 = 0uLL;
        if (self)
        {
          [(CALayer *)self cornerRadii];
          v190 = *buf;
          v191 = v334;
          v192 = v335;
          v193 = v336;
        }

        v325 = v190;
        v326 = v191;
        v327 = v192;
        v328 = v193;
        v194 = CA::Render::Vector::new_vector(8, &v325, v186);
        CA::Render::Layer::set_corner_radii(v11, v194);
        if (v194 && atomic_fetch_add(v194 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v194 + 16))(v194);
        }
      }

      *(v11 + 40) = *(v11 + 40) & 0xFFFFFFFCFFFFFFFFLL | (((*(layer + 12) >> 1) & 3) << 32);
      v195 = (v11 + 48);
      if ([(CALayer *)self cornerContentsMasksEdges])
      {
        v196 = 0x10000;
      }

      else
      {
        v196 = 0;
      }

      *v195 = *(v11 + 48) & 0xFFFEFFFF | v196;
      if ([(CALayer *)self contentsContainsSubtitles])
      {
        v197 = 0x40000;
      }

      else
      {
        v197 = 0;
      }

      *v195 = *v195 & 0xFFFBFFFF | v197;
      if ([(CALayer *)self allowedContentsHideSublayers])
      {
        v198 = 0x80000;
      }

      else
      {
        v198 = 0;
      }

      *v195 = *v195 & 0xFFF7FFFF | v198;
      [(CALayer *)self gain];
      if (v199 != 1.0 || *(v11 + 136))
      {
        *(CA::Render::Layer::ensure_ext(v11) + 79) = v199;
      }

      v200 = [(CALayer *)self allowsLimitedHeadroom];
      v201 = 0x4000000000000000;
      if (!v200)
      {
        v201 = 0;
      }

      *(v11 + 40) = *(v11 + 40) & 0xBFFFFFFFFFFFFFFFLL | v201;
      [(CALayer *)self contentsEDRStrength];
      v203 = v202;
      if (v203 != 1.0 || *(v11 + 136))
      {
        *(CA::Render::Layer::ensure_ext(v11) + 67) = v203;
      }

      [(CALayer *)self contentsCDRStrength];
      v205 = v204;
      if (v205 != 0.0 || *(v11 + 136))
      {
        *(CA::Render::Layer::ensure_ext(v11) + 66) = v205;
      }

      [(CALayer *)self contentsHeadroom];
      v207 = v206;
      if (v207 != 0.0 || *(v11 + 136))
      {
        *(CA::Render::Layer::ensure_ext(v11) + 68) = v207;
      }

      [(CALayer *)self contentsMaximumDesiredEDR];
      v209 = v208;
      if (v209 != 0.0 || *(v11 + 136))
      {
        *(CA::Render::Layer::ensure_ext(v11) + 69) = v209;
      }

      [(CALayer *)self displayMaximumDesiredEDR];
      v211 = v210;
      if (v211 != 0.0 || *(v11 + 136))
      {
        *(CA::Render::Layer::ensure_ext(v11) + 70) = v211;
      }

      [(CALayer *)self borderWidth];
      if (v212 > 0.0)
      {
        v213 = v212;
        if (v213 > 0.0 || *(v11 + 136))
        {
          *(CA::Render::Layer::ensure_ext(v11) + 60) = v213;
        }
      }

      [(CALayer *)self borderOffset];
      if (v214 != 0.0)
      {
        v215 = v214;
        if (v215 != 0.0 || *(v11 + 136))
        {
          *(CA::Render::Layer::ensure_ext(v11) + 59) = v215;
        }
      }

      v216 = [(CALayer *)self borderColor];
      if (v216 && (v216 != black || v28 != v322))
      {
        memset(buf, 0, sizeof(buf));
        LODWORD(v334.f64[0]) = 0;
        *&v325 = 0;
        CA::Render::convert_cgcolor(v216, v28, buf, &v325, v217);
        if ((fabsf(*buf) >= 0.00097656 || fabsf(*&buf[4]) >= 0.00097656 || fabsf(*&buf[8]) >= 0.00097656 || fabsf(*&buf[12] + -1.0) >= 0.00097656) && (*(v11 + 136) || (vaddvq_s32(vbicq_s8(xmmword_183E21260, vceqq_f32(*buf, xmmword_183E20E40))) & 0xF) != 0))
        {
          v218 = LODWORD(v334.f64[0]);
          v318 = *buf;
          v219 = CA::Render::Layer::ensure_ext(v11);
          *(v219 + 244) = v318;
          *(v219 + 65) = v218;
        }

        v220 = v325;
        if (v325)
        {
          v221 = CA::Render::Layer::ensure_ext(v11);
          v222 = v221[16];
          if (v222 != v220)
          {
            if (v222 && atomic_fetch_add(v222 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v222 + 16))(v222);
            }

            v223 = v220 + 2;
            if (!atomic_fetch_add(v220 + 2, 1u))
            {
              v220 = 0;
              atomic_fetch_add(v223, 0xFFFFFFFF);
            }

            v221[16] = v220;
          }

          v224 = v325;
          if (atomic_fetch_add((v325 + 8), 0xFFFFFFFF) == 1)
          {
            (*(*v224 + 16))(v224);
          }
        }
      }

      v225 = [(CALayer *)self contentsMultiplyColor];
      if (v225 && (v225 != white || v28 != v322))
      {
        memset(buf, 0, sizeof(buf));
        LODWORD(v334.f64[0]) = 0;
        CA::Render::convert_cgcolor(v225, v28, buf, 0, v226);
        if (fabsf(*buf + -1.0) >= 0.00097656)
        {
          goto LABEL_449;
        }

        __asm { FMOV            V1.2S, #-1.0 }

        v232 = vcgt_f32(vdup_n_s32(0x3A800000u), vabs_f32(vadd_f32(*&buf[4], _D1)));
        if ((v232.i8[0] & 1) == 0 || (v232.i8[4] & 1) == 0 || fabsf(*&buf[12] + -1.0) >= 0.00097656)
        {
LABEL_449:
          if (*(v11 + 136))
          {
            goto LABEL_297;
          }

          __asm { FMOV            V0.4S, #1.0 }

          if ((vaddvq_s32(vbicq_s8(xmmword_183E21260, vceqq_f32(*buf, _Q0))) & 0xF) != 0)
          {
LABEL_297:
            v234 = LODWORD(v334.f64[0]);
            v319 = *buf;
            v235 = CA::Render::Layer::ensure_ext(v11);
            *(v235 + 284) = v319;
            *(v235 + 75) = v234;
          }
        }
      }

      v236 = [(CALayer *)self contentsSwizzle];
      if (v236 != @"RGBA")
      {
        v237 = [(__CFString *)v236 isEqualToString:@"AAAA"];
        if (((*(v11 + 136) == 0) & ~v237) == 0)
        {
          v238 = CA::Render::Layer::ensure_ext(v11);
          *(v238 + 348) = *(v238 + 348) & 0xFE | v237;
        }
      }

      v239 = [(CALayer *)self isDoubleSided];
      v240 = (v11 + 40);
      v241 = 0x100000000000;
      if (!v239)
      {
        v241 = 0;
      }

      *v240 = *(v11 + 40) & 0xFFFFEFFFFFFFFFFFLL | v241;
      v242 = [(CALayer *)self shouldRasterize];
      v243 = 0x10000000000000;
      if (!v242)
      {
        v243 = 0;
      }

      *v240 = *v240 & 0xFFEFFFFFFFFFFFFFLL | v243;
      v244 = [(CALayer *)self shouldFlatten];
      v245 = 0x20000000000000;
      if (!v244)
      {
        v245 = 0;
      }

      *v240 = *v240 & 0xFFDFFFFFFFFFFFFFLL | v245;
      v246 = [(CALayer *)self shouldReflatten];
      v247 = 0x40000000000000;
      if (!v246)
      {
        v247 = 0;
      }

      *v240 = *v240 & 0xFFBFFFFFFFFFFFFFLL | v247;
      v248 = [(CALayer *)self rasterizeInParentSpace];
      v249 = 0x80000000000000;
      if (!v248)
      {
        v249 = 0;
      }

      *v240 = *v240 & 0xFF7FFFFFFFFFFFFFLL | v249;
      v250 = [(CALayer *)self rasterizationPrefersDisplayCompositing];
      v251 = 0x100000000000000;
      if (!v250)
      {
        v251 = 0;
      }

      *v240 = *v240 & 0xFEFFFFFFFFFFFFFFLL | v251;
      v252 = [(CALayer *)self rasterizationPrefersWindowServerAwareBackdrops];
      v253 = 0x200000000000000;
      if (!v252)
      {
        v253 = 0;
      }

      *v240 = *v240 & 0xFDFFFFFFFFFFFFFFLL | v253;
      v254 = [(CALayer *)self preloadsCache];
      v255 = 0x400000000000000;
      if (!v254)
      {
        v255 = 0;
      }

      *v240 = *v240 & 0xFBFFFFFFFFFFFFFFLL | v255;
      [(CALayer *)self rasterizationScale];
      if (v256 != 1.0)
      {
        v257 = v256;
        CA::Render::Layer::set_rasterization_scale(v11, v257);
      }

      v258 = [(CALayer *)self createsCompositingGroup];
      v259 = (v11 + 40);
      v260 = 0x800000000000000;
      if (!v258)
      {
        v260 = 0;
      }

      *v259 = *(v11 + 40) & 0xF7FFFFFFFFFFFFFFLL | v260;
      v261 = [(CALayer *)self allowsEdgeAntialiasing];
      v262 = 0x2000000000000000;
      if (!v261)
      {
        v262 = 0;
      }

      *v259 = *v259 & 0xDFFFFFFFFFFFFFFFLL | v262;
      v263 = (v11 + 48);
      if ([(CALayer *)self allowsGroupOpacity])
      {
        v264 = 4;
      }

      else
      {
        v264 = 0;
      }

      *v263 = *(v11 + 48) & 0xFFFFFFFB | v264;
      v265 = [(CALayer *)self allowsDisplayCompositing];
      v266 = 0x1000000000000000;
      if (!v265)
      {
        v266 = 0;
      }

      *v259 = *v259 & 0xEFFFFFFFFFFFFFFFLL | v266;
      v267 = [(CALayer *)self wantsExtendedDynamicRangeContent];
      v268 = 0x8000000000000000;
      if (!v267)
      {
        v268 = 0;
      }

      *v259 = v268 & 0x8000000000000000 | *v259 & 0x7FFFFFFFFFFFFFFFLL;
      if ([(CALayer *)self toneMapToStandardDynamicRange])
      {
        v269 = 2;
      }

      else
      {
        v269 = 0;
      }

      *v263 = *v263 & 0xFFFFFFFD | v269;
      if ([(CALayer *)self allowsGroupBlending])
      {
        v270 = 8;
      }

      else
      {
        v270 = 0;
      }

      *v263 = *v263 & 0xFFFFFFF7 | v270;
      if ([(CALayer *)self allowsHitTesting])
      {
        v271 = 16;
      }

      else
      {
        v271 = 0;
      }

      *v263 = *v263 & 0xFFFFFFEF | v271;
      if ([(CALayer *)self skipHitTesting])
      {
        v272 = 32;
      }

      else
      {
        v272 = 0;
      }

      *v263 = *v263 & 0xFFFFFFDF | v272;
      if ([(CALayer *)self hitTestsContentsAlphaChannel])
      {
        v273 = 64;
      }

      else
      {
        v273 = 0;
      }

      *v263 = *v263 & 0xFFFFFFBF | v273;
      if ([(CALayer *)self hitTestsAsOpaque])
      {
        v274 = 0x4000;
      }

      else
      {
        v274 = 0;
      }

      *v263 = *v263 & 0xFFFFBFFF | v274;
      if ([(CALayer *)self literalContentsCenter])
      {
        v275 = 0x8000;
      }

      else
      {
        v275 = 0;
      }

      *v263 = *v263 & 0xFFFF7FFF | v275;
      if ([(CALayer *)self inheritsTiming])
      {
        v276 = 0x100000;
      }

      else
      {
        v276 = 0;
      }

      *v263 = *v263 & 0xFFEFFFFF | v276;
      if ([(CALayer *)self definesDisplayRegionOfInterest])
      {
        v277 = 0x200000;
      }

      else
      {
        v277 = 0;
      }

      *v263 = *v263 & 0xFFDFFFFF | v277;
      if ([(CALayer *)self allowsColorMatching])
      {
        v278 = 0x800000;
      }

      else
      {
        v278 = 0;
      }

      *v263 = *v263 & 0xFF7FFFFF | v278;
      v153 = *(layer + 10);
      goto LABEL_361;
    }

    v174 = LODWORD(v334.f64[0]);
    *(v11 + 16) = *buf;
    *(v11 + 24) = v173;
    *(v11 + 32) = v174;
    if (*&v172 == 0.0 && *(&v172 + 1) == 0.0 && *&v173 == 0.0)
    {
      v175 = *(v11 + 48);
      if (*(&v173 + 1) == 0.0)
      {
        v176 = 0;
LABEL_199:
        *(v11 + 48) = v176 | v175 & 0xFFFDFFFF;
        goto LABEL_200;
      }
    }

    else
    {
      v175 = *(v11 + 48);
    }

    v176 = 0x20000;
    goto LABEL_199;
  }

LABEL_361:
  if ((v153 & 0x2000) != 0)
  {
    [(CALayer *)self shadowOpacity];
    if (v279 > 1.0)
    {
      v279 = 1.0;
    }

    if (v279 < 0.0)
    {
      v279 = 0.0;
    }

    *(v11 + 37) = ((v279 * 255.0) + 0.5);
    v280 = [(CALayer *)self shadowColor:v314];
    if (v280 && (v280 != black || v28 != v322))
    {
      memset(buf, 0, sizeof(buf));
      LODWORD(v334.f64[0]) = 0;
      CA::Render::convert_cgcolor(v280, v28, buf, 0, v281);
      if ((fabsf(*buf) >= 0.00097656 || fabsf(*&buf[4]) >= 0.00097656 || fabsf(*&buf[8]) >= 0.00097656 || fabsf(*&buf[12] + -1.0) >= 0.00097656) && (*(v11 + 136) || (vaddvq_s32(vbicq_s8(xmmword_183E21260, vceqq_f32(*buf, xmmword_183E20E40))) & 0xF) != 0))
      {
        v282 = LODWORD(v334.f64[0]);
        v320 = *buf;
        v283 = CA::Render::Layer::ensure_ext(v11);
        *(v283 + 25) = v320;
        *(v283 + 54) = v282;
      }
    }

    [(CALayer *)self shadowOffset];
    if (v284 != 0.0 || v285 != -3.0)
    {
      v286 = v284;
      v287 = v285;
      if (v286 != 0.0 || v287 != -3.0 || *(v11 + 136))
      {
        v288 = CA::Render::Layer::ensure_ext(v11);
        v288[55] = v286;
        v288[56] = v287;
      }
    }

    [(CALayer *)self shadowRadius];
    v290 = v289;
    if (v290 != 3.0)
    {
      *(CA::Render::Layer::ensure_ext(v11) + 57) = v290;
    }

    v291 = [(CALayer *)self shadowPath];
    if (v291)
    {
      v293 = CA::Render::Path::new_path(v291, v292);
      if (v293)
      {
        v294 = v293;
        CA::Render::Layer::set_shadow_path(v11, v293);
        if (atomic_fetch_add(v294 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v294 + 16))(v294);
        }
      }
    }

    if ([(CALayer *)self invertsShadow])
    {
      v295 = 128;
    }

    else
    {
      v295 = 0;
    }

    *(v11 + 48) = *(v11 + 48) & 0xFFFFFF7F | v295;
    if ([(CALayer *)self cornerContents])
    {
      *(v11 + 48) &= ~0x100u;
      if (![(CALayer *)self allowsCornerContentsEdgeEffects])
      {
LABEL_399:
        if ([(CALayer *)self punchoutShadow])
        {
          v298 = 1024;
        }

        else
        {
          v298 = 0;
        }

        *(v11 + 48) = *(v11 + 48) & 0xFFFFFBFF | v298;
        [(CALayer *)self rimOpacity];
        if (v299 > 1.0)
        {
          v299 = 1.0;
        }

        if (v299 >= 0.0)
        {
          v300 = v299;
        }

        else
        {
          v300 = 0.0;
        }

        if (v300 > 0.0 || *(v11 + 136))
        {
          *(CA::Render::Layer::ensure_ext(v11) + 86) = v300;
        }

        v301 = [(CALayer *)self rimColor];
        if (v301 && (v301 != black || v28 != v322))
        {
          memset(buf, 0, sizeof(buf));
          LODWORD(v334.f64[0]) = 0;
          CA::Render::convert_cgcolor(v301, v28, buf, 0, v302);
          if ((fabsf(*buf) >= 0.00097656 || fabsf(*&buf[4]) >= 0.00097656 || fabsf(*&buf[8]) >= 0.00097656 || fabsf(*&buf[12] + -1.0) >= 0.00097656) && (*(v11 + 136) || (vaddvq_s32(vbicq_s8(xmmword_183E21260, vceqq_f32(*buf, xmmword_183E20E40))) & 0xF) != 0))
          {
            v303 = LODWORD(v334.f64[0]);
            v323 = *buf;
            v304 = CA::Render::Layer::ensure_ext(v11);
            *(v304 + 324) = v323;
            *(v304 + 85) = v303;
          }
        }

        if ([(CALayer *)self rimPathIsBounds])
        {
          v305 = 2048;
        }

        else
        {
          v305 = 0;
        }

        *(v11 + 48) = *(v11 + 48) & 0xFFFFF7FF | v305;
        [(CALayer *)self rimWidth];
        v307 = v306;
        if (v307 != 0.0 && (v307 > 0.0 || *(v11 + 136)))
        {
          *(CA::Render::Layer::ensure_ext(v11) + 80) = v307;
        }

        v308 = (v11 + 48);
        if ([(CALayer *)self borderPathIsBounds])
        {
          v309 = 4096;
        }

        else
        {
          v309 = 0;
        }

        *v308 = *(v11 + 48) & 0xFFFFEFFF | v309;
        if ([(CALayer *)self softRim])
        {
          v310 = 0x2000;
        }

        else
        {
          v310 = 0;
        }

        *v308 = *v308 & 0xFFFFDFFF | v310;
        v153 = *(layer + 10);
        goto LABEL_434;
      }

      v296 = *(v11 + 48) | 0x200;
    }

    else
    {
      if ([(CALayer *)self shadowPathIsBounds])
      {
        v297 = 256;
      }

      else
      {
        v297 = 0;
      }

      v296 = *(v11 + 48) & 0xFFFFFEFF | v297;
    }

    *(v11 + 48) = v296;
    goto LABEL_399;
  }

LABEL_434:
  v311 = v153 & 0x1FFFFF;
  *a5 = v311;
  if ((v324 & 0x400) == 0)
  {
    goto LABEL_437;
  }

  v14 = v311 | 1;
LABEL_436:
  *a5 = v14;
LABEL_437:
  if ((*(self->_attr.layer + 1) & 0x10000) != 0)
  {
    *(v11 + 12) |= 0x100u;
  }

  v312 = *(layer + 13);
  if ((v312 & 4) == 0)
  {
    if ((v312 & 0x10000000) == 0)
    {
      goto LABEL_441;
    }

LABEL_445:
    *a5 |= 0x200000u;
    if ((v324 & 0x10) == 0)
    {
      return v11;
    }

    goto LABEL_442;
  }

  *a5 |= 0x400000u;
  if ((*(layer + 13) & 0x10000000) != 0)
  {
    goto LABEL_445;
  }

LABEL_441:
  if ((v324 & 0x10) != 0)
  {
LABEL_442:
    *a5 |= 0x20000000u;
  }

  return v11;
}

- (id)layerAtTime:(double)a3
{
  v5 = CA::Transaction::ensure_compat(self);
  layer = self->_attr.layer;

  return CA::Layer::layer_at_time(layer, v5, a3, 0, 0);
}

- (id)layerBeingDrawn
{
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v3)
  {
    v3 = CA::Transaction::create(self);
  }

  layer = self->_attr.layer;

  return CA::Layer::layer_being_drawn(layer, v3, 0x800000);
}

- (id)ancestorSharedWithLayer:(id)a3
{
  p_isa = &self->super.isa;
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v5)
  {
    v5 = CA::Transaction::create(self);
  }

  if (a3 == p_isa)
  {
    return p_isa;
  }

  if (!a3)
  {
    return 0;
  }

  if (p_isa)
  {
    v6 = CA::Layer::superlayer(p_isa[2], v5);
  }

  else
  {
    v6 = 0;
  }

  if (v6 == a3)
  {
    return a3;
  }

  v8 = CA::Layer::superlayer(*(a3 + 2), v5);
  v9 = v8 == p_isa;
  if (v8 == p_isa)
  {
    result = p_isa;
  }

  else
  {
    result = 0;
  }

  if (!v9 && p_isa)
  {
LABEL_15:
    v10 = a3;
    while (p_isa != v10)
    {
      v10 = CA::Layer::superlayer(v10[2], v5);
      if (!v10)
      {
        p_isa = CA::Layer::superlayer(p_isa[2], v5);
        result = 0;
        if (p_isa)
        {
          goto LABEL_15;
        }

        return result;
      }
    }

    return p_isa;
  }

  return result;
}

- (BOOL)isDescendantOf:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v6) = 1;
    return v6;
  }

  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (v5)
  {
    if (self)
    {
      goto LABEL_4;
    }

LABEL_10:
    LOBYTE(v6) = 0;
    return v6;
  }

  v5 = CA::Transaction::create(self);
  if (!self)
  {
    goto LABEL_10;
  }

LABEL_4:
  v6 = CA::Layer::superlayer(self->_attr.layer, v5);
  if (v6)
  {

    LOBYTE(v6) = [(CALayer *)v6 isDescendantOf:a3];
  }

  return v6;
}

- (BOOL)ignoresHitTesting
{
  if ([(CALayer *)self isHidden])
  {
    return 1;
  }

  [(CALayer *)self opacity];
  return v4 <= 0.0;
}

- (void)regionBeingDrawn
{
  result = [(CALayer *)self contents];
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (CABackingStoreGetTypeID::once[0] != -1)
    {
      dispatch_once(CABackingStoreGetTypeID::once, &__block_literal_global_1020);
    }

    if (v4 == CABackingStoreGetTypeID::type)
    {
      return *(v3 + 56);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)prepareContents
{
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v4)
  {
    v4 = CA::Transaction::create(self);
  }

  CA::Layer::prepare_contents(self, v4, v2);
}

- (void)invalidateContents
{
  layer = self->_attr.layer;
  if ((*(layer + 1) & 0x60000) == 0)
  {
    v3 = CA::Transaction::ensure_compat(self);
    v4 = v3[29];
    v3[29] = v4 + 1;
    if (!v4)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    v5 = [layer[2] contents];
    v6 = v5;
    if (!v5)
    {
      goto LABEL_9;
    }

    v7 = CFGetTypeID(v5);
    if (CABackingStoreGetTypeID::once[0] != -1)
    {
      v12 = v7;
      dispatch_once(CABackingStoreGetTypeID::once, &__block_literal_global_1020);
      v7 = v12;
    }

    if (v7 == CABackingStoreGetTypeID::type)
    {
      CABackingStoreSetVolatile(v6, 1);
      CA::Layer::mark(layer, v3, 1032, 16);
    }

    else
    {
LABEL_9:
      [layer[2] setContents:0];
    }

    *(layer + 13) &= ~0x80000000;
    v8 = v3[28];
    if ((v8 & 0x80000000) != 0 || (v9 = layer + 4 * v8, (v10 = *(v9 + 68)) == 0))
    {
      v11 = CA::Layer::thread_flags_(layer, v3);
      v10 = *v11;
    }

    else
    {
      v11 = (v9 + 272);
    }

    *v11 = v10 & 0xFFFFFEFF;

    CA::Transaction::unlock(v3);
  }
}

- (void)setMeshTransform:(id)a3
{
  v4[1] = *MEMORY[0x1E69E9840];
  *&v4[0] = [a3 meshTransformForLayer:self];
  CA::Layer::setter(self->_attr.layer, 0x203, 3, v4);
}

- (id)implicitAnimationForKeyPath:(id)a3
{
  v5 = [a3 rangeOfString:@"."];
  if (v6)
  {
    v7 = CAInternAtom([a3 substringToIndex:v5], 0);
    v8 = 0;
    while (v7 != [CALayer(CALayerPrivate) implicitAnimationForKeyPath:]::atoms[v8])
    {
      if (++v8 == 5)
      {
        return 0;
      }
    }

    v11 = self;
    v12 = a3;
    v13 = 0;
    goto LABEL_14;
  }

  v10 = CAInternAtom(a3, 0);
  if (v10 == 131)
  {
    if ((*(self->_attr.layer + 13) & 0x80000000) != 0)
    {
      return 0;
    }

    else
    {
      if (default_anim_once[0] != -1)
      {
        dispatch_once_f(default_anim_once, 0, default_anim_init);
      }

      return basicAnim;
    }
  }

  else
  {
    v14 = v10;
    if (CAAtomIndexInArray(25, [CALayer(CALayerPrivate) implicitAnimationForKeyPath:]::basic_atoms, v10) != -1)
    {
      v11 = self;
      v12 = a3;
      v13 = v14;
LABEL_14:

      return CALayerCreateImplicitAnimation(v11, v12, v13);
    }

    for (i = 0; i != 9; ++i)
    {
      if (v14 == [CALayer(CALayerPrivate) implicitAnimationForKeyPath:]::trans_atoms[i])
      {
        if (default_anim_once[0] != -1)
        {
          dispatch_once_f(default_anim_once, 0, default_anim_init);
        }

        return transition;
      }
    }

    if (v14 == 138)
    {
      v16 = [[CASpringAnimation alloc] initWithPerceptualDuration:2.0 bounce:0.0];
      v17 = v16;
      v18 = @"contentsEDRStrength";
    }

    else
    {
      if (v14 != 133)
      {
        return 0;
      }

      v16 = [[CASpringAnimation alloc] initWithPerceptualDuration:2.0 bounce:0.0];
      v17 = v16;
      v18 = @"contentsCDRStrength";
    }

    [(CAPropertyAnimation *)v16 setKeyPath:v18];

    return v17;
  }
}

- (void)reloadValueForKeyPath:(id)a3
{
  AtomInKeyPath = CAInternFirstAtomInKeyPath(a3);
  v5 = AtomInKeyPath;
  v6 = CA::Transaction::ensure_compat(AtomInKeyPath);
  v7 = *(v6 + 29);
  *(v6 + 29) = v7 + 1;
  if (!v7)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  CA::Layer::property_did_change(self->_attr.layer, v6, v5);

  CA::Transaction::unlock(v6);
}

- (BOOL)getRendererInfo:(_CARenderRendererInfo *)a3 size:(unint64_t)a4
{
  v28 = *MEMORY[0x1E69E9840];
  layer = self->_attr.layer;
  v7 = CA::Layer::retain_context(layer);
  if (v7)
  {
    v8 = v7;
    if (CA::Render::Encoder::initialize_render_id_slide(void)::once != -1)
    {
      dispatch_once(&CA::Render::Encoder::initialize_render_id_slide(void)::once, &__block_literal_global_14306);
    }

    if (layer)
    {
      v9 = (layer + CA::Render::_render_id_slide);
    }

    else
    {
      v9 = 0;
    }

    if (a4 < 0xC)
    {
      goto LABEL_8;
    }

    v11 = *(layer + 66);
    *v24 = 0;
    v23 = 0;
    v12 = *(v8 + 13);
    if (v12)
    {
      pthread_mutex_lock((v12 + 72));
      layer_renderer_info = CA::Render::Context::get_layer_renderer_info(v12, v9, v11, &v24[1], v24, &v23);
      pthread_mutex_unlock((v12 + 72));
      if (!layer_renderer_info)
      {
        goto LABEL_14;
      }

      v14 = v24[0];
      v13 = v24[1];
      v15 = v23;
LABEL_13:
      a3->var0 = v13;
      a3->var1 = v14;
      LOBYTE(layer_renderer_info) = 1;
      a3->var2 = v15;
      goto LABEL_14;
    }

    if ((*(v8 + 257) & 2) != 0)
    {
LABEL_8:
      LOBYTE(layer_renderer_info) = 0;
LABEL_14:
      CA::Context::unref(v8, 0);
      return layer_renderer_info;
    }

    v17 = v8[40];
    memset(&msg_4[16], 0, 32);
    *msg_4 = 0u;
    *&msg_4[20] = *MEMORY[0x1E69E99E0];
    *&msg_4[28] = v9;
    v27 = 0;
    *&msg_4[36] = v11;
    reply_port = mig_get_reply_port();
    *&msg_4[4] = v17;
    *&msg_4[8] = reply_port;
    msg = 5395;
    *&msg_4[12] = 0x9D5100000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(&msg);
      v19 = *&msg_4[8];
    }

    else
    {
      v19 = reply_port;
    }

    v20 = mach_msg(&msg, 3, 0x2Cu, 0x38u, v19, 0, 0);
    v21 = v20;
    if ((v20 - 268435458) <= 0xE && ((1 << (v20 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(*&msg_4[8]);
      goto LABEL_41;
    }

    if (v20)
    {
      mig_dealloc_reply_port(*&msg_4[8]);
LABEL_43:
      v15 = 0;
      v14 = 0;
      v13 = 0;
      goto LABEL_44;
    }

    if (*&msg_4[16] == 71)
    {
      v21 = 4294966988;
    }

    else if (*&msg_4[16] == 40373)
    {
      if ((msg & 0x80000000) == 0)
      {
        if (*msg_4 == 48)
        {
          if (!*&msg_4[4])
          {
            v21 = *&msg_4[28];
            if (!*&msg_4[28])
            {
              v13 = *&msg_4[32];
              v14 = *&msg_4[36];
              v15 = *&msg_4[40];
LABEL_44:
              CAVerifyServerReturn(v21);
              if (!v21)
              {
                goto LABEL_13;
              }

              goto LABEL_8;
            }

            goto LABEL_40;
          }
        }

        else if (*msg_4 == 36)
        {
          if (*&msg_4[4])
          {
            v22 = 1;
          }

          else
          {
            v22 = *&msg_4[28] == 0;
          }

          if (v22)
          {
            v21 = 4294966996;
          }

          else
          {
            v21 = *&msg_4[28];
          }

          goto LABEL_40;
        }
      }

      v21 = 4294966996;
    }

    else
    {
      v21 = 4294966995;
    }

LABEL_40:
    mach_msg_destroy(&msg);
LABEL_41:
    if (v21 == 268435459)
    {
      LOBYTE(layer_renderer_info) = 0;
      *(v8 + 257) |= 2u;
      goto LABEL_14;
    }

    goto LABEL_43;
  }

  LOBYTE(layer_renderer_info) = 0;
  return layer_renderer_info;
}

+ (CALayer)layerWithRenderLayer:(void *)a3 options:(id)a4
{
  v8 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  v5 = [a4 objectForKeyedSubscript:{@"contextColorspace", 0, v8}];
  if (v5)
  {
    v7 = v5;
  }

  return calayer_from_render_layer(&v7, a3);
}

+ (void)CAMLParserEndElement:(id)a3
{
  v3 = [a3 elementValue];
  if ([v3 needsDisplayOnBoundsChange])
  {
    v4 = [v3 contents];
    if (v4)
    {

      [v3 setContents:v4];
    }

    else
    {

      [v3 setNeedsDisplay];
    }
  }
}

+ (void)CAMLParserStartElement:(id)a3
{
  v4 = objc_alloc_init(a1);
  [v4 CA_initialize_for_decoding];
  [a3 setElementValue:v4];
}

- (id)optimizationOpportunities:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = &unk_1EF200988;
  v7 = 64;
  do
  {
    v8 = *v6;
    if ((*(v6 - 1))(self))
    {
      [v5 addObject:v8];
    }

    v6 += 2;
    v7 -= 16;
  }

  while (v7);
  if (v3)
  {
    v9 = &unk_1EF2009C8;
    v10 = 64;
    do
    {
      v11 = *v9;
      if ((*(v9 - 1))(self))
      {
        [v5 addObject:v11];
      }

      v9 += 2;
      v10 -= 16;
    }

    while (v10);
  }

  return v5;
}

@end