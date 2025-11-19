@interface CAMeshInterpolator
- (id)meshTransformForLayer:(id)a3;
- (void)dealloc;
@end

@implementation CAMeshInterpolator

- (id)meshTransformForLayer:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  [a3 bounds];
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
  v11 = [[CAMeshTransform alloc] _init];
  v12 = *(v10 + 24);
  v13 = *(v10 + 25);
  v11[1] = v10;
  v11[2] = v12;
  v11[3] = v13;
  *(v11 + 32) = *(v10 + 108);
  *(v11 + 33) = *(v10 + 109);

  return v11;
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