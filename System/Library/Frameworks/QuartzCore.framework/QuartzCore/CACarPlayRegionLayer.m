@interface CACarPlayRegionLayer
+ (BOOL)CA_automaticallyNotifiesObservers:(Class)a3;
- (NSString)identifier;
- (void)_copyRenderLayer:(void *)a3 layerFlags:(unsigned int)a4 commitFlags:(unsigned int *)a5;
- (void)setIdentifier:(id)a3;
@end

@implementation CACarPlayRegionLayer

- (void)setIdentifier:(id)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = a3;
  CA::Layer::setter(self->super._attr.layer, 0x134, 3, v3);
}

- (NSString)identifier
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x134u, 3, v3);
  return v3[0];
}

- (void)_copyRenderLayer:(void *)a3 layerFlags:(unsigned int)a4 commitFlags:(unsigned int *)a5
{
  v14 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = CACarPlayRegionLayer;
  v7 = [(CALayer *)&v13 _copyRenderLayer:a3 layerFlags:*&a4 commitFlags:?];
  if (v7 && (*(a5 + 2) & 1) != 0)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v8 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x18uLL, 0xDEEC3011uLL);
    v9 = v8;
    if (v8)
    {
      v8[2] = 1;
      v8[3] = 6;
      ++dword_1ED4EAA50;
      *v8 = &unk_1EF1F5858;
      *(v8 + 2) = 0;
    }

    v10 = [(CACarPlayRegionLayer *)self identifier];
    v11 = *(v9 + 2);
    if (v11 != v10)
    {
      if (v11)
      {
        CFRelease(v11);
      }

      *(v9 + 2) = v10;
      if (v10)
      {
        CFRetain(v10);
      }
    }

    CA::Render::Layer::set_subclass(v7, v9);
    if (atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v9 + 16))(v9);
    }
  }

  return v7;
}

+ (BOOL)CA_automaticallyNotifiesObservers:(Class)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a3)
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___CACarPlayRegionLayer;
  return objc_msgSendSuper2(&v6, sel_CA_automaticallyNotifiesObservers_, a3);
}

@end