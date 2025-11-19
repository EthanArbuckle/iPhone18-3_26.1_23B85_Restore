@interface CAPortalLayer
+ (BOOL)CA_automaticallyNotifiesObservers:(Class)a3;
+ (id)defaultValueForKey:(id)a3;
- (BOOL)_renderLayerDefinesProperty:(unsigned int)a3;
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
- (void)_copyRenderLayer:(void *)a3 layerFlags:(unsigned int)a4 commitFlags:(unsigned int *)a5;
- (void)didChangeValueForKey:(id)a3;
- (void)layerDidBecomeVisible:(BOOL)a3;
- (void)setAllowedInContextTransform:(BOOL)a3;
- (void)setAllowsBackdropGroups:(BOOL)a3;
- (void)setCrossDisplay:(BOOL)a3;
- (void)setHidesSourceLayer:(BOOL)a3;
- (void)setHidesSourceLayerInOtherPortals:(BOOL)a3;
- (void)setMatchesOpacity:(BOOL)a3;
- (void)setMatchesPosition:(BOOL)a3;
- (void)setMatchesTransform:(BOOL)a3;
- (void)setOverrides:(id)a3;
- (void)setSourceContextId:(unsigned int)a3;
- (void)setSourceLayer:(id)a3;
- (void)setSourceLayerOpacityScale:(float)a3;
- (void)setSourceLayerRenderId:(unint64_t)a3;
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

+ (BOOL)CA_automaticallyNotifiesObservers:(Class)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a3)
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___CAPortalLayer;
  return objc_msgSendSuper2(&v6, sel_CA_automaticallyNotifiesObservers_, a3);
}

- (void)setAllowedInContextTransform:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CA::Layer::setter(self->super._attr.layer, 0xA, 6, &v3);
}

- (void)setOverrides:(id)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = a3;
  CA::Layer::setter(self->super._attr.layer, 0x226, 3, v3);
}

- (void)setSourceLayerOpacityScale:(float)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CA::Layer::setter(self->super._attr.layer, 0x29A, 0x11, &v3);
}

- (void)setCrossDisplay:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CA::Layer::setter(self->super._attr.layer, 0xA7, 6, &v3);
}

- (void)setAllowsBackdropGroups:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CA::Layer::setter(self->super._attr.layer, 0xB, 6, &v3);
}

- (void)setMatchesTransform:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CA::Layer::setter(self->super._attr.layer, 0x1FF, 6, &v3);
}

- (void)setMatchesPosition:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CA::Layer::setter(self->super._attr.layer, 0x1FE, 6, &v3);
}

- (void)setMatchesOpacity:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CA::Layer::setter(self->super._attr.layer, 0x1FD, 6, &v3);
}

- (void)setHidesSourceLayerInOtherPortals:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CA::Layer::setter(self->super._attr.layer, 0x12A, 6, &v3);
}

- (BOOL)hidesSourceLayerInOtherPortals
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0x12Au, 6, &v3);
  return v3;
}

- (void)setHidesSourceLayer:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CA::Layer::setter(self->super._attr.layer, 0x129, 6, &v3);
}

- (void)setSourceContextId:(unsigned int)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CA::Layer::setter(self->super._attr.layer, 0x297, 0xC, &v3);
}

- (void)setSourceLayerRenderId:(unint64_t)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = a3;
  CA::Layer::setter(self->super._attr.layer, 0x29B, 0x10, v3);
}

- (void)setSourceLayer:(id)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = a3;
  CA::Layer::setter(self->super._attr.layer, 0x299, 4, v3);
}

- (BOOL)_renderLayerDefinesProperty:(unsigned int)a3
{
  v3 = *&a3;
  v7 = *MEMORY[0x1E69E9840];
  if (CAAtomIndexInArray(12, &[CAPortalLayer _renderLayerDefinesProperty:]::atoms, a3) != -1)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = CAPortalLayer;
  return [(CALayer *)&v6 _renderLayerDefinesProperty:v3];
}

- (void)_copyRenderLayer:(void *)a3 layerFlags:(unsigned int)a4 commitFlags:(unsigned int *)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v33.receiver = self;
  v33.super_class = CAPortalLayer;
  v7 = [(CALayer *)&v33 _copyRenderLayer:a3 layerFlags:*&a4 commitFlags:?];
  if (!v7 || (*(a5 + 2) & 1) == 0)
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

  v10 = [(CAPortalLayer *)self hidesSourceLayer];
  v11 = [(CAPortalLayer *)self matchesOpacity];
  v12 = [(CAPortalLayer *)self matchesPosition];
  v13 = [(CAPortalLayer *)self matchesTransform];
  v14 = [(CAPortalLayer *)self allowsBackdropGroups];
  v15 = [(CAPortalLayer *)self crossDisplay];
  v16 = [(CAPortalLayer *)self allowedInContextTransform];
  v17 = [(CAPortalLayer *)self hidesSourceLayerInOtherPortals];
  v18 = v10 | 2;
  if (!v11)
  {
    v18 = v10;
  }

  if (v12)
  {
    v18 |= 4u;
  }

  if (v13)
  {
    v18 |= 8u;
  }

  if (v14)
  {
    v18 |= 0x10u;
  }

  if (v15)
  {
    v18 |= 0x20u;
  }

  if (v16)
  {
    v18 |= 0x80u;
  }

  if (v17)
  {
    v18 |= 0x100u;
  }

  if (v18)
  {
    v9[3] |= v18 << 8;
  }

  *(v9 + 3) = CA::Render::Object::render_id(self->super._attr.layer);
  v19 = [(CAPortalLayer *)self sourceLayer];
  v20 = v19;
  if (v19)
  {
    *(v9 + 4) = CA::Render::Object::render_id(v19->_attr.layer);
    v21 = [-[CALayer context](v20 "context")];
LABEL_27:
    v9[10] = v21;
    goto LABEL_28;
  }

  v22 = [(CAPortalLayer *)self sourceLayerRenderId];
  if (v22)
  {
    *(v9 + 4) = v22;
    v21 = [(CAPortalLayer *)self sourceContextId];
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
  v29 = [(NSDictionary *)[(CAPortalLayer *)self overrides] CA_copyRenderKeyPathValueArray];
  if (v29)
  {
    v30 = *(v9 + 6);
    if (v30 != v29)
    {
      if (v30 && atomic_fetch_add(v30 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v30 + 16))(v30);
      }

      v31 = v29;
      if (!atomic_fetch_add(v29 + 2, 1u))
      {
        v31 = 0;
        atomic_fetch_add(v29 + 2, 0xFFFFFFFF);
      }

      *(v9 + 6) = v31;
    }

    if (atomic_fetch_add(v29 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v29 + 16))(v29);
    }
  }

  CA::Render::Layer::set_subclass(v7, v9);
  if (atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v9 + 16))(v9);
  }

  return v7;
}

- (void)layerDidBecomeVisible:(BOOL)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = CAPortalLayer;
  v5 = [(CALayer *)&v7 layerDidBecomeVisible:?];
  if (!a3)
  {
    v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
    if (!v6)
    {
      v6 = CA::Transaction::create(v5);
    }

    CA::Layer::set_commit_needed(self->super._attr.layer, v6, 0);
  }
}

- (void)didChangeValueForKey:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = CAInternAtom(a3, 0);
  v6 = CAAtomIndexInArray(12, &[CAPortalLayer didChangeValueForKey:]::atoms, v5);
  if (v6 != -1)
  {
    v7 = CA::Transaction::ensure_compat(v6);
    CA::Layer::set_commit_needed(self->super._attr.layer, v7, 0x10000);
  }

  v8.receiver = self;
  v8.super_class = CAPortalLayer;
  [(CAPortalLayer *)&v8 didChangeValueForKey:a3];
}

+ (id)defaultValueForKey:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if ([a3 isEqualToString:@"sourceLayerOpacityScale"])
  {
    return &unk_1EF22BA30;
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___CAPortalLayer;
  return objc_msgSendSuper2(&v6, sel_defaultValueForKey_, a3);
}

@end