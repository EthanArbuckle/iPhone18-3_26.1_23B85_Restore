@interface CASDFGradientEffect
- (id)copyWithZone:(_NSZone *)a3;
- (void)configureLayer:(void *)a3 transaction:(void *)a4;
- (void)dealloc;
@end

@implementation CASDFGradientEffect

- (void)configureLayer:(void *)a3 transaction:(void *)a4
{
  v7 = [(CASDFGradientEffect *)self colors];
  v8 = [(CASDFGradientEffect *)self distances];
  v9 = [(CASDFGradientEffect *)self interpolations];
  v10 = [(NSArray *)v7 count];
  v12 = CA::Context::current_colorspace(a4, v11);
  v13 = [(CASDFGradientEffect *)self premultiplied];
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v14 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x38uLL, 0xDEEC3011uLL);
  v15 = v14;
  if (v14)
  {
    if (v8)
    {
      v16 = 34;
    }

    else
    {
      v16 = 32;
    }

    if (v9)
    {
      v16 |= 4u;
    }

    if (v13)
    {
      v17 = v16 | 0x10;
    }

    else
    {
      v17 = v16;
    }

    CA::Render::InterpolatedFunction::InterpolatedFunction(v14, v10, 5, v17);
    *v15 = &unk_1EF1FBF20;
  }

  if (v7)
  {
    CA::Render::Gradient::set_colors(v15, v7, v12);
  }

  if (v8)
  {
    CA::Render::InterpolatedFunction::set_locations(v15, v8);
  }

  if (v9)
  {
    CA::Render::InterpolatedFunction::set_interpolations(v15, v9);
  }

  *(a3 + 136) = 3;
  *(a3 + 3) = v15;
  *(a3 + 2) = 0u;
  *(a3 + 3) = 0u;
  *(a3 + 4) = 0u;
  *(a3 + 5) = 0u;
  *(a3 + 6) = 0u;
  *(a3 + 7) = 0u;
  *(a3 + 16) = 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = CASDFGradientEffect;
  v4 = [(CASDFEffect *)&v6 copyWithZone:a3];
  if (v4)
  {
    v4[2] = [(NSArray *)self->_colors copy];
    v4[3] = [(NSArray *)self->_distances copy];
    v4[4] = [(NSArray *)self->_interpolations copy];
    *(v4 + 8) = self->_premultiplied;
  }

  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = CASDFGradientEffect;
  [(CASDFGradientEffect *)&v3 dealloc];
}

@end