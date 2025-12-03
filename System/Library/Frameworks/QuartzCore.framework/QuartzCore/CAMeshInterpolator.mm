@interface CAMeshInterpolator
- (id)meshTransformForLayer:(id)layer;
- (void)dealloc;
@end

@implementation CAMeshInterpolator

- (id)meshTransformForLayer:(id)layer
{
  v18 = *MEMORY[0x1E69E9840];
  [layer bounds];
  v15.f64[0] = v5;
  v15.f64[1] = v6;
  v16 = v7;
  v17 = v8;
  if (v7 < 0.0)
  {
    v15.f64[0] = v7 + v5;
    v16 = -v7;
  }

  if (v8 < 0.0)
  {
    v15.f64[1] = v8 + v6;
    v17 = -v8;
  }

  v9 = CA::Render::MeshTransform::eval_interpolator(self->_interp, &v15, v4);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  _init = [[CAMeshTransform alloc] _init];
  v12 = *(v10 + 24);
  v13 = *(v10 + 25);
  _init[1] = v10;
  _init[2] = v12;
  _init[3] = v13;
  *(_init + 32) = *(v10 + 108);
  *(_init + 33) = *(v10 + 109);

  return _init;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  interp = self->_interp;
  if (interp && atomic_fetch_add(interp + 2, 0xFFFFFFFF) == 1)
  {
    (*(*interp + 16))(interp, a2);
  }

  v4.receiver = self;
  v4.super_class = CAMeshInterpolator;
  [(CAMeshTransform *)&v4 dealloc];
}

@end