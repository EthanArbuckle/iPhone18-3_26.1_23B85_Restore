@interface CACloningTerminatorLayer
+ (BOOL)CA_automaticallyNotifiesObservers:(Class)a3;
- (void)_copyRenderLayer:(void *)a3 layerFlags:(unsigned int)a4 commitFlags:(unsigned int *)a5;
@end

@implementation CACloningTerminatorLayer

- (void)_copyRenderLayer:(void *)a3 layerFlags:(unsigned int)a4 commitFlags:(unsigned int *)a5
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = CACloningTerminatorLayer;
  v6 = [(CALayer *)&v11 _copyRenderLayer:a3 layerFlags:*&a4 commitFlags:?];
  if (v6 && (*(a5 + 2) & 1) != 0)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v7 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x10uLL, 0xDEEC3011uLL);
    if (v7)
    {
      v8 = v7;
      v7[2] = 1;
      v9 = v7 + 2;
      v7[3] = 8;
      ++dword_1ED4EAA58;
      *v7 = &unk_1EF1FFF78;
      CA::Render::Layer::set_subclass(v6, v7);
      if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
      {
        (*(*v8 + 16))(v8);
      }
    }

    else
    {
      CA::Render::Layer::set_subclass(v6, 0);
    }
  }

  return v6;
}

+ (BOOL)CA_automaticallyNotifiesObservers:(Class)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a3)
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___CACloningTerminatorLayer;
  return objc_msgSendSuper2(&v6, sel_CA_automaticallyNotifiesObservers_, a3);
}

@end