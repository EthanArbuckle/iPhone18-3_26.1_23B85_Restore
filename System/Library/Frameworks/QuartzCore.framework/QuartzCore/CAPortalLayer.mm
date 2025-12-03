@interface CAPortalLayer
+ (BOOL)CA_automaticallyNotifiesObservers:(Class)observers;
+ (id)defaultValueForKey:(id)key;
- (BOOL)_renderLayerDefinesProperty:(unsigned int)property;
- (BOOL)allowedInContextTransform;
- (BOOL)allowsBackdropGroups;
- (BOOL)crossDisplay;
- (BOOL)hidesSourceLayer;
- (BOOL)hidesSourceLayerInOtherPortals;
- (BOOL)matchesOpacity;
- (BOOL)matchesPosition;
- (BOOL)matchesTransform;
- (CALayer)sourceLayer;
- (NSDictionary)overrides;
- (float)sourceLayerOpacityScale;
- (unint64_t)sourceLayerRenderId;
- (unsigned)sourceContextId;
- (void)_copyRenderLayer:(void *)layer layerFlags:(unsigned int)flags commitFlags:(unsigned int *)commitFlags;
- (void)didChangeValueForKey:(id)key;
- (void)layerDidBecomeVisible:(BOOL)visible;
- (void)setAllowedInContextTransform:(BOOL)transform;
- (void)setAllowsBackdropGroups:(BOOL)groups;
- (void)setCrossDisplay:(BOOL)display;
- (void)setHidesSourceLayer:(BOOL)layer;
- (void)setHidesSourceLayerInOtherPortals:(BOOL)portals;
- (void)setMatchesOpacity:(BOOL)opacity;
- (void)setMatchesPosition:(BOOL)position;
- (void)setMatchesTransform:(BOOL)transform;
- (void)setOverrides:(id)overrides;
- (void)setSourceContextId:(unsigned int)id;
- (void)setSourceLayer:(id)layer;
- (void)setSourceLayerOpacityScale:(float)scale;
- (void)setSourceLayerRenderId:(unint64_t)id;
@end

@implementation CAPortalLayer

- (BOOL)hidesSourceLayer
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0x129u, 6, &v3);
  return v3;
}

- (BOOL)matchesOpacity
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0x1FDu, 6, &v3);
  return v3;
}

- (BOOL)matchesPosition
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0x1FEu, 6, &v3);
  return v3;
}

- (BOOL)matchesTransform
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0x1FFu, 6, &v3);
  return v3;
}

- (BOOL)allowsBackdropGroups
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0xBu, 6, &v3);
  return v3;
}

- (BOOL)crossDisplay
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0xA7u, 6, &v3);
  return v3;
}

- (BOOL)allowedInContextTransform
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0xAu, 6, &v3);
  return v3;
}

- (CALayer)sourceLayer
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x299u, 4, v3);
  return v3[0];
}

- (float)sourceLayerOpacityScale
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CA::Layer::getter(self->super._attr.layer, 0x29Au, 0x11, &v3);
  return v3;
}

- (NSDictionary)overrides
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x226u, 3, v3);
  return v3[0];
}

- (unint64_t)sourceLayerRenderId
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x29Bu, 0x10, v3);
  return v3[0];
}

- (unsigned)sourceContextId
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0x297u, 0xC, &v3);
  return v3;
}

+ (BOOL)CA_automaticallyNotifiesObservers:(Class)observers
{
  v7 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == observers)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CAPortalLayer;
  return objc_msgSendSuper2(&v6, sel_CA_automaticallyNotifiesObservers_, observers);
}

- (void)setAllowedInContextTransform:(BOOL)transform
{
  v4 = *MEMORY[0x1E69E9840];
  transformCopy = transform;
  CA::Layer::setter(self->super._attr.layer, 0xA, 6, &transformCopy);
}

- (void)setOverrides:(id)overrides
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = overrides;
  CA::Layer::setter(self->super._attr.layer, 0x226, 3, v3);
}

- (void)setSourceLayerOpacityScale:(float)scale
{
  v4 = *MEMORY[0x1E69E9840];
  scaleCopy = scale;
  CA::Layer::setter(self->super._attr.layer, 0x29A, 0x11, &scaleCopy);
}

- (void)setCrossDisplay:(BOOL)display
{
  v4 = *MEMORY[0x1E69E9840];
  displayCopy = display;
  CA::Layer::setter(self->super._attr.layer, 0xA7, 6, &displayCopy);
}

- (void)setAllowsBackdropGroups:(BOOL)groups
{
  v4 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  CA::Layer::setter(self->super._attr.layer, 0xB, 6, &groupsCopy);
}

- (void)setMatchesTransform:(BOOL)transform
{
  v4 = *MEMORY[0x1E69E9840];
  transformCopy = transform;
  CA::Layer::setter(self->super._attr.layer, 0x1FF, 6, &transformCopy);
}

- (void)setMatchesPosition:(BOOL)position
{
  v4 = *MEMORY[0x1E69E9840];
  positionCopy = position;
  CA::Layer::setter(self->super._attr.layer, 0x1FE, 6, &positionCopy);
}

- (void)setMatchesOpacity:(BOOL)opacity
{
  v4 = *MEMORY[0x1E69E9840];
  opacityCopy = opacity;
  CA::Layer::setter(self->super._attr.layer, 0x1FD, 6, &opacityCopy);
}

- (void)setHidesSourceLayerInOtherPortals:(BOOL)portals
{
  v4 = *MEMORY[0x1E69E9840];
  portalsCopy = portals;
  CA::Layer::setter(self->super._attr.layer, 0x12A, 6, &portalsCopy);
}

- (BOOL)hidesSourceLayerInOtherPortals
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0x12Au, 6, &v3);
  return v3;
}

- (void)setHidesSourceLayer:(BOOL)layer
{
  v4 = *MEMORY[0x1E69E9840];
  layerCopy = layer;
  CA::Layer::setter(self->super._attr.layer, 0x129, 6, &layerCopy);
}

- (void)setSourceContextId:(unsigned int)id
{
  v4 = *MEMORY[0x1E69E9840];
  idCopy = id;
  CA::Layer::setter(self->super._attr.layer, 0x297, 0xC, &idCopy);
}

- (void)setSourceLayerRenderId:(unint64_t)id
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = id;
  CA::Layer::setter(self->super._attr.layer, 0x29B, 0x10, v3);
}

- (void)setSourceLayer:(id)layer
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = layer;
  CA::Layer::setter(self->super._attr.layer, 0x299, 4, v3);
}

- (BOOL)_renderLayerDefinesProperty:(unsigned int)property
{
  v3 = *&property;
  v7 = *MEMORY[0x1E69E9840];
  if (CAAtomIndexInArray(12, &[CAPortalLayer _renderLayerDefinesProperty:]::atoms, property) != -1)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = CAPortalLayer;
  return [(CALayer *)&v6 _renderLayerDefinesProperty:v3];
}

- (void)_copyRenderLayer:(void *)layer layerFlags:(unsigned int)flags commitFlags:(unsigned int *)commitFlags
{
  v34 = *MEMORY[0x1E69E9840];
  v33.receiver = self;
  v33.super_class = CAPortalLayer;
  v7 = [(CALayer *)&v33 _copyRenderLayer:layer layerFlags:*&flags commitFlags:?];
  if (!v7 || (*(commitFlags + 2) & 1) == 0)
  {
    return v7;
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v8 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x40uLL, 0xDEEC3011uLL);
  v9 = v8;
  if (v8)
  {
    v8[2] = 1;
    v8[3] = 42;
    ++dword_1ED4EAAE0;
    *v8 = &unk_1EF203EE8;
    *(v8 + 3) = 0;
    *(v8 + 4) = 0;
    v8[10] = 0;
    *(v8 + 44) = -1;
    *(v8 + 6) = 0;
    *(v8 + 7) = 0;
  }

  hidesSourceLayer = [(CAPortalLayer *)self hidesSourceLayer];
  matchesOpacity = [(CAPortalLayer *)self matchesOpacity];
  matchesPosition = [(CAPortalLayer *)self matchesPosition];
  matchesTransform = [(CAPortalLayer *)self matchesTransform];
  allowsBackdropGroups = [(CAPortalLayer *)self allowsBackdropGroups];
  crossDisplay = [(CAPortalLayer *)self crossDisplay];
  allowedInContextTransform = [(CAPortalLayer *)self allowedInContextTransform];
  hidesSourceLayerInOtherPortals = [(CAPortalLayer *)self hidesSourceLayerInOtherPortals];
  v18 = hidesSourceLayer | 2;
  if (!matchesOpacity)
  {
    v18 = hidesSourceLayer;
  }

  if (matchesPosition)
  {
    v18 |= 4u;
  }

  if (matchesTransform)
  {
    v18 |= 8u;
  }

  if (allowsBackdropGroups)
  {
    v18 |= 0x10u;
  }

  if (crossDisplay)
  {
    v18 |= 0x20u;
  }

  if (allowedInContextTransform)
  {
    v18 |= 0x80u;
  }

  if (hidesSourceLayerInOtherPortals)
  {
    v18 |= 0x100u;
  }

  if (v18)
  {
    v9[3] |= v18 << 8;
  }

  *(v9 + 3) = CA::Render::Object::render_id(self->super._attr.layer);
  sourceLayer = [(CAPortalLayer *)self sourceLayer];
  v20 = sourceLayer;
  if (sourceLayer)
  {
    *(v9 + 4) = CA::Render::Object::render_id(sourceLayer->_attr.layer);
    sourceContextId = [-[CALayer context](v20 "context")];
LABEL_27:
    v9[10] = sourceContextId;
    goto LABEL_28;
  }

  sourceLayerRenderId = [(CAPortalLayer *)self sourceLayerRenderId];
  if (sourceLayerRenderId)
  {
    *(v9 + 4) = sourceLayerRenderId;
    sourceContextId = [(CAPortalLayer *)self sourceContextId];
    goto LABEL_27;
  }

LABEL_28:
  [(CAPortalLayer *)self sourceLayerOpacityScale];
  if (v23 > 1.0 || ([(CAPortalLayer *)self sourceLayerOpacityScale], v25 = v24, v26 = 0.0, v25 >= 0.0))
  {
    [(CAPortalLayer *)self sourceLayerOpacityScale];
    v28 = v27;
    v26 = 1.0;
    if (v28 <= 1.0)
    {
      [(CAPortalLayer *)self sourceLayerOpacityScale];
    }
  }

  *(v9 + 44) = ((v26 * 255.0) + 0.5);
  cA_copyRenderKeyPathValueArray = [(NSDictionary *)[(CAPortalLayer *)self overrides] CA_copyRenderKeyPathValueArray];
  if (cA_copyRenderKeyPathValueArray)
  {
    v30 = *(v9 + 6);
    if (v30 != cA_copyRenderKeyPathValueArray)
    {
      if (v30 && atomic_fetch_add(v30 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v30 + 16))(v30);
      }

      v31 = cA_copyRenderKeyPathValueArray;
      if (!atomic_fetch_add(cA_copyRenderKeyPathValueArray + 2, 1u))
      {
        v31 = 0;
        atomic_fetch_add(cA_copyRenderKeyPathValueArray + 2, 0xFFFFFFFF);
      }

      *(v9 + 6) = v31;
    }

    if (atomic_fetch_add(cA_copyRenderKeyPathValueArray + 2, 0xFFFFFFFF) == 1)
    {
      (*(*cA_copyRenderKeyPathValueArray + 16))(cA_copyRenderKeyPathValueArray);
    }
  }

  CA::Render::Layer::set_subclass(v7, v9);
  if (atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v9 + 16))(v9);
  }

  return v7;
}

- (void)layerDidBecomeVisible:(BOOL)visible
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = CAPortalLayer;
  v5 = [(CALayer *)&v7 layerDidBecomeVisible:?];
  if (!visible)
  {
    v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
    if (!v6)
    {
      v6 = CA::Transaction::create(v5);
    }

    CA::Layer::set_commit_needed(self->super._attr.layer, v6, 0);
  }
}

- (void)didChangeValueForKey:(id)key
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = CAInternAtom(key, 0);
  v6 = CAAtomIndexInArray(12, &[CAPortalLayer didChangeValueForKey:]::atoms, v5);
  if (v6 != -1)
  {
    v7 = CA::Transaction::ensure_compat(v6);
    CA::Layer::set_commit_needed(self->super._attr.layer, v7, 0x10000);
  }

  v8.receiver = self;
  v8.super_class = CAPortalLayer;
  [(CAPortalLayer *)&v8 didChangeValueForKey:key];
}

+ (id)defaultValueForKey:(id)key
{
  v7 = *MEMORY[0x1E69E9840];
  if ([key isEqualToString:@"sourceLayerOpacityScale"])
  {
    return &unk_1EF22BA30;
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CAPortalLayer;
  return objc_msgSendSuper2(&v6, sel_defaultValueForKey_, key);
}

@end