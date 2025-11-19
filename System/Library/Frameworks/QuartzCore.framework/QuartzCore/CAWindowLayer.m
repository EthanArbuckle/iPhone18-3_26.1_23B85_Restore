@interface CAWindowLayer
+ (BOOL)CA_automaticallyNotifiesObservers:(Class)a3;
+ (id)defaultValueForKey:(id)a3;
- (BOOL)_renderLayerDefinesProperty:(unsigned int)a3;
- (BOOL)fullyOccluded;
- (BOOL)ignoreAnimations;
- (CAWindowLayer)init;
- (NSString)flattenMode;
- (double)postCommitDuration;
- (void)_copyRenderLayer:(void *)a3 layerFlags:(unsigned int)a4 commitFlags:(unsigned int *)a5;
- (void)dealloc;
- (void)didChangeValueForKey:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setFlattenMode:(id)a3;
- (void)setFullyOccluded:(BOOL)a3;
- (void)setIgnoreAnimations:(BOOL)a3;
- (void)setPostCommitDuration:(double)a3;
@end

@implementation CAWindowLayer

- (NSString)flattenMode
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x101u, 3, v3);
  return v3[0];
}

- (double)postCommitDuration
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x23Au, 0x12, v3);
  return *v3;
}

- (BOOL)ignoreAnimations
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0x138u, 6, &v3);
  return v3;
}

- (BOOL)fullyOccluded
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0x115u, 6, &v3);
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
  v6.super_class = &OBJC_METACLASS___CAWindowLayer;
  return objc_msgSendSuper2(&v6, sel_CA_automaticallyNotifiesObservers_, a3);
}

- (void)setDelegate:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = CAWindowLayer;
  [(CALayer *)&v5 setDelegate:?];
  if (objc_opt_respondsToSelector())
  {
    [a3 windowLayer:self didChangeFlatten:{-[CAWindowLayer windowFlattened](self, "windowFlattened")}];
  }
}

- (void)setPostCommitDuration:(double)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = a3;
  CA::Layer::setter(self->super._attr.layer, 0x23A, 0x12, v3);
}

- (void)setFullyOccluded:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CA::Layer::setter(self->super._attr.layer, 0x115, 6, &v3);
}

- (void)setIgnoreAnimations:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CA::Layer::setter(self->super._attr.layer, 0x138, 6, &v3);
}

- (void)setFlattenMode:(id)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = a3;
  CA::Layer::setter(self->super._attr.layer, 0x101, 3, v3);
}

- (void)_copyRenderLayer:(void *)a3 layerFlags:(unsigned int)a4 commitFlags:(unsigned int *)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = CAWindowLayer;
  v7 = [(CALayer *)&v17 _copyRenderLayer:a3 layerFlags:*&a4 commitFlags:?];
  if (!v7 || (*(a5 + 2) & 1) == 0)
  {
    return v7;
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v8 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x38uLL, 0xDEEC3011uLL);
  v9 = v8;
  if (v8)
  {
    v8[2] = 1;
    v8[3] = 63;
    ++dword_1ED4EAB34;
    *v8 = &unk_1EF1F5B38;
    *(v8 + 4) = 0x3FF0000000000000;
    v10 = mach_absolute_time();
    *(v9 + 5) = CATimeWithHostTime(v10);
    *(v9 + 48) = 0;
  }

  v11 = [(CAWindowLayer *)self flattenMode];
  if ([(NSString *)v11 isEqualToString:@"default"])
  {
    v12 = 0;
LABEL_13:
    *(v9 + 48) = v12;
    goto LABEL_14;
  }

  if ([(NSString *)v11 isEqualToString:@"always"])
  {
    v12 = 1;
    goto LABEL_13;
  }

  if ([(NSString *)v11 isEqualToString:@"never"])
  {
    v12 = 2;
    goto LABEL_13;
  }

LABEL_14:
  [(CAWindowLayer *)self postCommitDuration];
  *(v9 + 4) = v13;
  v14 = [(CAWindowLayer *)self ignoreAnimations];
  if ([(CAWindowLayer *)self fullyOccluded])
  {
    v14 |= 2u;
  }

  if (CA::Render::Encoder::initialize_render_id_slide(void)::once != -1)
  {
    dispatch_once(&CA::Render::Encoder::initialize_render_id_slide(void)::once, &__block_literal_global_14306);
  }

  v15 = self + CA::Render::_render_id_slide;
  if (!self)
  {
    v15 = 0;
  }

  *(v9 + 2) = v15;
  if (v14)
  {
    v9[3] |= v14 << 8;
  }

  CA::Render::Layer::set_subclass(v7, v9);
  if (atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v9 + 16))(v9);
  }

  return v7;
}

- (BOOL)_renderLayerDefinesProperty:(unsigned int)a3
{
  v3 = 0;
  v6 = *MEMORY[0x1E69E9840];
  while ([CAWindowLayer _renderLayerDefinesProperty:]::atoms[v3] != a3)
  {
    if (++v3 == 4)
    {
      v5.receiver = self;
      v5.super_class = CAWindowLayer;
      return [(CALayer *)&v5 _renderLayerDefinesProperty:?];
    }
  }

  return 1;
}

- (void)didChangeValueForKey:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = CAInternAtom(a3, 0);
  v6 = 0;
  while (v5 != [CAWindowLayer didChangeValueForKey:]::atoms[v6])
  {
    if (++v6 == 4)
    {
      goto LABEL_6;
    }
  }

  v7 = CA::Transaction::ensure_compat(v5);
  CA::Layer::set_commit_needed(self->super._attr.layer, v7, 0x10000);
LABEL_6:
  v8.receiver = self;
  v8.super_class = CAWindowLayer;
  [(CAWindowLayer *)&v8 didChangeValueForKey:a3];
}

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&_all_windowlayer_lock);
  v3 = _all_windowlayer;
  v4 = *(_all_windowlayer + 8);
  if (v4)
  {
    v5 = (_all_windowlayer + 8);
    v6 = *(_all_windowlayer + 8);
    do
    {
      v7 = *(v6 + 32);
      v8 = v7 >= self;
      v9 = v7 < self;
      if (v8)
      {
        v5 = v6;
      }

      v6 = *(v6 + 8 * v9);
    }

    while (v6);
    if (v5 != (_all_windowlayer + 8) && v5[4] <= self)
    {
      v10 = v5[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        v12 = v5;
        do
        {
          v11 = v12[2];
          v13 = *v11 == v12;
          v12 = v11;
        }

        while (!v13);
      }

      if (*_all_windowlayer == v5)
      {
        *_all_windowlayer = v11;
      }

      --*(v3 + 16);
      std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v4, v5);
      operator delete(v5);
    }
  }

  v14.receiver = self;
  v14.super_class = CAWindowLayer;
  [(CALayer *)&v14 dealloc];
  os_unfair_lock_unlock(&_all_windowlayer_lock);
}

- (CAWindowLayer)init
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = CAWindowLayer;
  v2 = [(CALayer *)&v7 init];
  if (v2)
  {
    os_unfair_lock_lock(&_all_windowlayer_lock);
    if (!_all_windowlayer)
    {
      operator new();
    }

    v3 = *(_all_windowlayer + 8);
    if (!v3)
    {
LABEL_11:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v4 = v3;
        v5 = v3[4];
        if (v2 >= v5)
        {
          break;
        }

        v3 = *v4;
        if (!*v4)
        {
          goto LABEL_11;
        }
      }

      if (v5 >= v2)
      {
        break;
      }

      v3 = v4[1];
      if (!v3)
      {
        goto LABEL_11;
      }
    }

    v2->_windowFlattened = 0;
    os_unfair_lock_unlock(&_all_windowlayer_lock);
  }

  return v2;
}

+ (id)defaultValueForKey:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if ([a3 isEqualToString:@"postCommitDuration"])
  {
    return &unk_1EF22B840;
  }

  if ([a3 isEqualToString:@"flattenMode"])
  {
    return @"default";
  }

  if ([a3 isEqualToString:@"ignoreAnimations"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"fullyOccluded") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"windowFlattened"))
  {
    return MEMORY[0x1E695E110];
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___CAWindowLayer;
  return objc_msgSendSuper2(&v6, sel_defaultValueForKey_, a3);
}

@end