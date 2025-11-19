@interface CABackdropLayer
+ (BOOL)CA_automaticallyNotifiesObservers:(Class)a3;
+ (id)defaultValueForKey:(id)a3;
- (BOOL)_renderLayerDefinesProperty:(unsigned int)a3;
- (BOOL)allowsFilteredLuma;
- (BOOL)allowsInPlaceFiltering;
- (BOOL)captureOnly;
- (BOOL)disableFilterCache;
- (BOOL)ignoresScreenClip;
- (BOOL)isEnabled;
- (BOOL)isInverseMeshed;
- (BOOL)preallocatesScreenArea;
- (BOOL)reducesCaptureBitDepth;
- (BOOL)tracksLuma;
- (BOOL)tracksLumaWhileHidden;
- (BOOL)usesGlobalGroupNamespace;
- (CGRect)backdropRect;
- (CGRect)lumaSubrect;
- (NSString)groupName;
- (NSString)groupNamespace;
- (double)lumaUpdateRate;
- (double)marginWidth;
- (double)scale;
- (double)updateRate;
- (double)zoom;
- (unsigned)_renderLayerPropertyAnimationFlags:(unsigned int)a3;
- (void)_copyRenderLayer:(void *)a3 layerFlags:(unsigned int)a4 commitFlags:(unsigned int *)a5;
- (void)didChangeValueForKey:(id)a3;
- (void)layerDidBecomeVisible:(BOOL)a3;
- (void)setAllowsFilteredLuma:(BOOL)a3;
- (void)setAllowsInPlaceFiltering:(BOOL)a3;
- (void)setBackdropRect:(CGRect)a3;
- (void)setCaptureOnly:(BOOL)a3;
- (void)setDisableFilterCache:(BOOL)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setGroupName:(id)a3;
- (void)setGroupNamespace:(id)a3;
- (void)setIgnoresScreenClip:(BOOL)a3;
- (void)setInverseMeshed:(BOOL)a3;
- (void)setLumaSubrect:(CGRect)a3;
- (void)setLumaUpdateRate:(double)a3;
- (void)setMarginWidth:(double)a3;
- (void)setPreallocatesScreenArea:(BOOL)a3;
- (void)setReducesCaptureBitDepth:(BOOL)a3;
- (void)setScale:(double)a3;
- (void)setTracksLuma:(BOOL)a3;
- (void)setTracksLumaWhileHidden:(BOOL)a3;
- (void)setUpdateRate:(double)a3;
- (void)setZoom:(double)a3;
@end

@implementation CABackdropLayer

- (double)scale
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x26Du, 0x12, v3);
  return *v3;
}

- (BOOL)reducesCaptureBitDepth
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0x256u, 6, &v3);
  return v3;
}

- (BOOL)ignoresScreenClip
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0x139u, 6, &v3);
  return v3;
}

- (BOOL)preallocatesScreenArea
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0x23Bu, 6, &v3);
  return v3;
}

- (BOOL)isEnabled
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0xEAu, 6, &v3);
  return v3;
}

- (BOOL)captureOnly
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0x5Au, 6, &v3);
  return v3;
}

- (CGRect)backdropRect
{
  v2 = CALayer_getter_kCAValueRect(self->super._attr.layer, 0x3Du);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (double)zoom
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x2FEu, 0x12, v3);
  return *v3;
}

- (double)lumaUpdateRate
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x1EDu, 0x12, v3);
  return *v3;
}

- (double)marginWidth
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x1F6u, 0x12, v3);
  return *v3;
}

- (NSString)groupNamespace
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x124u, 3, v3);
  return v3[0];
}

- (BOOL)allowsInPlaceFiltering
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0x16u, 6, &v3);
  return v3;
}

- (NSString)groupName
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x123u, 3, v3);
  return v3[0];
}

- (BOOL)tracksLuma
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0x2CAu, 6, &v3);
  return v3;
}

- (BOOL)allowsFilteredLuma
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0x11u, 6, &v3);
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
  v6.super_class = &OBJC_METACLASS___CABackdropLayer;
  return objc_msgSendSuper2(&v6, sel_CA_automaticallyNotifiesObservers_, a3);
}

- (void)setAllowsFilteredLuma:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CA::Layer::setter(self->super._attr.layer, 0x11, 6, &v3);
}

- (void)setLumaSubrect:(CGRect)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CA::Layer::setter(self->super._attr.layer, 0x1EC, 0x15, &v3.origin.x);
}

- (CGRect)lumaSubrect
{
  v2 = CALayer_getter_kCAValueRect(self->super._attr.layer, 0x1ECu);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setLumaUpdateRate:(double)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = a3;
  CA::Layer::setter(self->super._attr.layer, 0x1ED, 0x12, v3);
}

- (void)setTracksLumaWhileHidden:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CA::Layer::setter(self->super._attr.layer, 0x2CB, 6, &v3);
}

- (BOOL)tracksLumaWhileHidden
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0x2CBu, 6, &v3);
  return v3;
}

- (void)setTracksLuma:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CA::Layer::setter(self->super._attr.layer, 0x2CA, 6, &v3);
}

- (void)setInverseMeshed:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CA::Layer::setter(self->super._attr.layer, 0x1BF, 6, &v3);
}

- (BOOL)isInverseMeshed
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0x1BFu, 6, &v3);
  return v3;
}

- (void)setDisableFilterCache:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CA::Layer::setter(self->super._attr.layer, 0xC5, 6, &v3);
}

- (BOOL)disableFilterCache
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0xC5u, 6, &v3);
  return v3;
}

- (void)setPreallocatesScreenArea:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CA::Layer::setter(self->super._attr.layer, 0x23B, 6, &v3);
}

- (void)setIgnoresScreenClip:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CA::Layer::setter(self->super._attr.layer, 0x139, 6, &v3);
}

- (void)setReducesCaptureBitDepth:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CA::Layer::setter(self->super._attr.layer, 0x256, 6, &v3);
}

- (void)setAllowsInPlaceFiltering:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CA::Layer::setter(self->super._attr.layer, 0x16, 6, &v3);
}

- (void)setCaptureOnly:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CA::Layer::setter(self->super._attr.layer, 0x5A, 6, &v3);
}

- (void)setMarginWidth:(double)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = a3;
  CA::Layer::setter(self->super._attr.layer, 0x1F6, 0x12, v3);
}

- (void)setUpdateRate:(double)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = a3;
  CA::Layer::setter(self->super._attr.layer, 0x2D9, 0x12, v3);
}

- (double)updateRate
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x2D9u, 0x12, v3);
  return *v3;
}

- (void)setZoom:(double)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = a3;
  CA::Layer::setter(self->super._attr.layer, 0x2FE, 0x12, v3);
}

- (void)setBackdropRect:(CGRect)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CA::Layer::setter(self->super._attr.layer, 0x3D, 0x15, &v3.origin.x);
}

- (void)setScale:(double)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = a3;
  CA::Layer::setter(self->super._attr.layer, 0x26D, 0x12, v3);
}

- (void)setGroupNamespace:(id)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = a3;
  CA::Layer::setter(self->super._attr.layer, 0x124, 3, v3);
}

- (void)setGroupName:(id)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = a3;
  CA::Layer::setter(self->super._attr.layer, 0x123, 3, v3);
}

- (void)setEnabled:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CA::Layer::setter(self->super._attr.layer, 0xEA, 6, &v3);
}

- (BOOL)usesGlobalGroupNamespace
{
  v2 = [(CABackdropLayer *)self groupNamespace];

  return [(NSString *)v2 isEqualToString:@"global"];
}

- (unsigned)_renderLayerPropertyAnimationFlags:(unsigned int)a3
{
  v3 = 0;
  v6 = *MEMORY[0x1E69E9840];
  while ([CABackdropLayer _renderLayerPropertyAnimationFlags:]::atoms[v3] != a3)
  {
    if (++v3 == 6)
    {
      v5.receiver = self;
      v5.super_class = CABackdropLayer;
      return [(CALayer *)&v5 _renderLayerPropertyAnimationFlags:?];
    }
  }

  return 32;
}

- (BOOL)_renderLayerDefinesProperty:(unsigned int)a3
{
  v3 = *&a3;
  v7 = *MEMORY[0x1E69E9840];
  if (CAAtomIndexInArray(20, &[CABackdropLayer _renderLayerDefinesProperty:]::atoms, a3) != -1)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = CABackdropLayer;
  return [(CALayer *)&v6 _renderLayerDefinesProperty:v3];
}

- (void)_copyRenderLayer:(void *)a3 layerFlags:(unsigned int)a4 commitFlags:(unsigned int *)a5
{
  v59 = *MEMORY[0x1E69E9840];
  v58.receiver = self;
  v58.super_class = CABackdropLayer;
  v7 = [(CALayer *)&v58 _copyRenderLayer:a3 layerFlags:*&a4 commitFlags:?];
  if (!v7 || (*(a5 + 2) & 1) == 0)
  {
    return v7;
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v8 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x90uLL, 0xDEEC3011uLL);
  v9 = v8;
  if (v8)
  {
    *(v8 + 2) = 1;
    *(v8 + 3) = 3;
    ++dword_1ED4EAA44;
    *v8 = &unk_1EF1FA150;
    *(v8 + 2) = 0;
    *(v8 + 3) = 0;
    *(v8 + 4) = 1065353216;
    *(v8 + 10) = 0;
    *(v8 + 6) = 0x3FD0000000000000;
    *(v8 + 17) = 0;
    *(v8 + 56) = 0u;
    *(v8 + 72) = 0u;
    *(v8 + 22) = 0;
    *(v8 + 6) = 0u;
    *(v8 + 7) = 0u;
    v8[128] = 0;
  }

  v10 = [(CABackdropLayer *)self isEnabled];
  v11 = [(CABackdropLayer *)self isInverseMeshed];
  v12 = [(CABackdropLayer *)self captureOnly];
  v13 = [(CABackdropLayer *)self reducesCaptureBitDepth];
  v14 = [(CABackdropLayer *)self ignoresScreenClip];
  v15 = [(CABackdropLayer *)self preallocatesScreenArea];
  v16 = [(CABackdropLayer *)self disableFilterCache];
  v17 = v10 | 0x40;
  if (!v11)
  {
    v17 = v10;
  }

  if (v12)
  {
    v17 |= 0x10u;
  }

  if (v13)
  {
    v17 |= 0x20u;
  }

  if (v14)
  {
    v17 |= 0x100u;
  }

  if (v15)
  {
    v17 |= 0x200u;
  }

  if (v16)
  {
    v18 = v17 | 0x1000;
  }

  else
  {
    v18 = v17;
  }

  if (CA::Render::Encoder::initialize_render_id_slide(void)::once != -1)
  {
    dispatch_once(&CA::Render::Encoder::initialize_render_id_slide(void)::once, &__block_literal_global_14306);
  }

  v19 = self + CA::Render::_render_id_slide;
  if (!self)
  {
    v19 = 0;
  }

  *(v9 + 2) = v19;
  [(CABackdropLayer *)self scale];
  *&v20 = v20;
  *(v9 + 8) = LODWORD(v20);
  [(CABackdropLayer *)self backdropRect];
  *v24.i64 = v23;
  v24.i64[1] = v21;
  v25.f64[0] = 0.0;
  v27.i64[0] = *&v26.f64[0];
  v27.i64[1] = v22;
  v28 = vdupq_lane_s64(vcgtq_f64(v25, v26).i64[0], 0);
  v29.i64[1] = v21;
  *v29.i64 = v26.f64[0] + v23;
  v30 = vbslq_s8(v28, v29, v24);
  v24.i64[1] = v22;
  *v24.i64 = -v26.f64[0];
  v31 = vbslq_s8(v28, v24, v27);
  if (*&v22 < 0.0)
  {
    *&v30.i64[1] = *&v22 + *&v21;
    *&v31.i64[1] = -*&v22;
  }

  *(v9 + 6) = v30;
  *(v9 + 7) = v31;
  [(CABackdropLayer *)self zoom];
  *&v32 = v32;
  *(v9 + 10) = LODWORD(v32);
  [(CABackdropLayer *)self lumaUpdateRate];
  *&v33 = v33;
  *(v9 + 6) = *&v33;
  [(CABackdropLayer *)self lumaSubrect];
  *v37.i64 = v36;
  v37.i64[1] = v34;
  v38.f64[0] = 0.0;
  v40.i64[0] = *&v39.f64[0];
  v40.i64[1] = v35;
  v41 = vdupq_lane_s64(vcgtq_f64(v38, v39).i64[0], 0);
  v42.i64[1] = v34;
  *v42.i64 = v39.f64[0] + v36;
  v43 = vbslq_s8(v41, v42, v37);
  v37.i64[1] = v35;
  *v37.i64 = -v39.f64[0];
  v44 = vbslq_s8(v41, v37, v40);
  if (*&v35 < 0.0)
  {
    *&v43.i64[1] = *&v35 + *&v34;
    *&v44.i64[1] = -*&v35;
  }

  *(v9 + 56) = v43;
  *(v9 + 72) = v44;
  [(CABackdropLayer *)self marginWidth];
  *&v45 = v45;
  *(v9 + 9) = LODWORD(v45);
  [(CABackdropLayer *)self updateRate];
  *&v46 = v46;
  *(v9 + 22) = LODWORD(v46);
  if ([(CABackdropLayer *)self groupNamespace]!= @"owningContext")
  {
    if ([(NSString *)[(CABackdropLayer *)self groupNamespace] isEqualToString:@"global"])
    {
      v57 = 2;
    }

    else
    {
      if (![(NSString *)[(CABackdropLayer *)self groupNamespace] isEqualToString:@"hostingNamespacedContext"])
      {
        goto LABEL_29;
      }

      v57 = 1;
    }

    v9[128] = v57;
  }

LABEL_29:
  if ([(CABackdropLayer *)self allowsInPlaceFiltering])
  {
    v18 |= 2u;
  }

  else
  {
    v47 = [(CABackdropLayer *)self groupName];
    if (v47)
    {
      v49 = CA::Render::String::new_string(v47, v48);
      v50 = *(v9 + 3);
      if (v50 != v49)
      {
        if (v50 && atomic_fetch_add(v50 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v50 + 16))(v50);
        }

        if (v49)
        {
          v51 = v49;
          if (!atomic_fetch_add(v49 + 2, 1u))
          {
            v51 = 0;
            atomic_fetch_add(v49 + 2, 0xFFFFFFFF);
          }
        }

        else
        {
          v51 = 0;
        }

        *(v9 + 3) = v51;
      }

      if (v49 && atomic_fetch_add(v49 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v49 + 16))(v49);
      }
    }
  }

  v52 = [(CABackdropLayer *)self tracksLuma];
  v53 = [(CABackdropLayer *)self tracksLumaWhileHidden];
  v54 = [(CABackdropLayer *)self allowsFilteredLuma];
  v55 = v18 | 4;
  if (!v52)
  {
    v55 = v18;
  }

  if (v53)
  {
    v55 |= 0x800u;
  }

  if (v54)
  {
    v55 |= 0x400u;
  }

  if (v55)
  {
    *(v9 + 3) |= v55 << 8;
  }

  CA::Render::Layer::set_subclass(v7, v9);
  if (atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v9 + 16))(v9);
  }

  return v7;
}

- (void)didChangeValueForKey:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = CAInternAtom(a3, 0);
  v6 = CAAtomIndexInArray(20, &[CABackdropLayer didChangeValueForKey:]::atoms, v5);
  if (v6 != -1)
  {
    v7 = CA::Transaction::ensure_compat(v6);
    CA::Layer::set_commit_needed(self->super._attr.layer, v7, 0x10000);
  }

  v8.receiver = self;
  v8.super_class = CABackdropLayer;
  [(CABackdropLayer *)&v8 didChangeValueForKey:a3];
}

- (void)layerDidBecomeVisible:(BOOL)a3
{
  v3 = a3;
  v21 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = CABackdropLayer;
  [(CALayer *)&v20 layerDidBecomeVisible:?];
  os_unfair_lock_lock(&_all_backdrops_lock);
  v5 = _all_backdrops;
  if (!_all_backdrops)
  {
    operator new();
  }

  v6 = *(_all_backdrops + 8);
  if (v3)
  {
    if (!v6)
    {
LABEL_9:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v7 = v6;
        v8 = v6[4];
        if (v8 <= self)
        {
          break;
        }

        v6 = *v6;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (v8 >= self)
      {
        break;
      }

      v6 = v6[1];
      if (!v6)
      {
        goto LABEL_9;
      }
    }

    os_unfair_lock_unlock(&_all_backdrops_lock);
  }

  else
  {
    if (v6)
    {
      v9 = (_all_backdrops + 8);
      v10 = *(_all_backdrops + 8);
      do
      {
        v11 = *(v10 + 32);
        v12 = v11 >= self;
        v13 = v11 < self;
        if (v12)
        {
          v9 = v10;
        }

        v10 = *(v10 + 8 * v13);
      }

      while (v10);
      if (v9 != (_all_backdrops + 8) && v9[4] <= self)
      {
        v14 = v9[1];
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          v16 = v9;
          do
          {
            v15 = v16[2];
            v17 = *v15 == v16;
            v16 = v15;
          }

          while (!v17);
        }

        if (*_all_backdrops == v9)
        {
          *_all_backdrops = v15;
        }

        --*(v5 + 16);
        std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v6, v9);
        operator delete(v9);
      }
    }

    os_unfair_lock_unlock(&_all_backdrops_lock);
    v19 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
    if (!v19)
    {
      v19 = CA::Transaction::create(v18);
    }

    CA::Layer::set_commit_needed(self->super._attr.layer, v19, 0);
  }
}

+ (id)defaultValueForKey:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = CAInternAtom(a3, 0);
  if (v5 <= 491)
  {
    if (v5 == 61)
    {
LABEL_16:
      v9 = MEMORY[0x1E696B098];
      v10 = *MEMORY[0x1E696AA80];
      v11 = *(MEMORY[0x1E696AA80] + 8);
      v12 = *(MEMORY[0x1E696AA80] + 16);
      v13 = *(MEMORY[0x1E696AA80] + 24);

      return [v9 valueWithRect:{v10, v11, v12, v13}];
    }

    if (v5 != 234)
    {
      if (v5 == 292)
      {
        return @"owningContext";
      }

      goto LABEL_19;
    }

    v15 = MEMORY[0x1E696AD98];

    return [v15 numberWithBool:1];
  }

  else
  {
    if (v5 <= 620)
    {
      if (v5 != 492)
      {
        if (v5 == 493)
        {
          v7 = MEMORY[0x1E696AD98];
          LODWORD(v6) = 0.25;
LABEL_13:

          return [v7 numberWithFloat:v6];
        }

        goto LABEL_19;
      }

      goto LABEL_16;
    }

    if (v5 != 621)
    {
      if (v5 == 729)
      {
        v7 = MEMORY[0x1E696AD98];
        v6 = 0.0;
        goto LABEL_13;
      }

LABEL_19:
      v16.receiver = a1;
      v16.super_class = &OBJC_METACLASS___CABackdropLayer;
      return objc_msgSendSuper2(&v16, sel_defaultValueForKey_, a3);
    }

    v14 = MEMORY[0x1E696AD98];

    return [v14 numberWithInt:1];
  }
}

@end