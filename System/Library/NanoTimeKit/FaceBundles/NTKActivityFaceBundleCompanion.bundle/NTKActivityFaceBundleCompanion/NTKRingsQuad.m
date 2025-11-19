@interface NTKRingsQuad
- (BOOL)prepareForTime:(double)a3;
- (NTKRingsQuad)initWithRingGroups:(id)a3 renderer:(id)a4;
- (NTKRingsQuadDelegate)delegate;
- (id)_allRings;
- (void)renderWithCommandBuffer:(id)a3 passDescriptor:(id)a4;
- (void)ringGroupHasUpdated:(id)a3;
@end

@implementation NTKRingsQuad

- (NTKRingsQuad)initWithRingGroups:(id)a3 renderer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v23.receiver = self;
  v23.super_class = NTKRingsQuad;
  v9 = [(NTKRingsQuad *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_ringGroups, a3);
    objc_storeStrong(&v10->_renderer, a4);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = v10->_ringGroups;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        v15 = 0;
        do
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v19 + 1) + 8 * v15) setDelegate:{v10, v19}];
          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v13);
    }

    v16 = +[CLKUIMetalResourceManager sharedDevice];
    device = v10->_device;
    v10->_device = v16;
  }

  return v10;
}

- (BOOL)prepareForTime:(double)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_quadView);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained drawableSize];
    self->_size.width = v6;
    self->_size.height = v7;
    v8 = [[ARUIRenderContext alloc] initWithDrawableSize:COERCE_DOUBLE(vcvt_f32_f64(self->_size))];
    context = self->_context;
    self->_context = v8;
  }

  return v5 != 0;
}

- (id)_allRings
{
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_ringGroups;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) rings];
        [v3 addObjectsFromArray:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)renderWithCommandBuffer:(id)a3 passDescriptor:(id)a4
{
  renderer = self->_renderer;
  v7 = a4;
  v8 = a3;
  v9 = [(NTKRingsQuad *)self _allRings];
  [(ARUIRenderer *)renderer _renderRings:v9 passDescriptor:v7 commandBuffer:v8 withContext:self->_context];
}

- (void)ringGroupHasUpdated:(id)a3
{
  v4 = a3;
  if (!self->_animating)
  {
    self->_animating = 1;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained ntkRingsQuadDelegate_willStartAnimating];
  }

  objc_initWeak(&location, self);
  [(NSTimer *)self->_animationTimer invalidate];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_15E0;
  v8[3] = &unk_20710;
  objc_copyWeak(&v9, &location);
  v6 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v8 block:0.0666666667];
  animationTimer = self->_animationTimer;
  self->_animationTimer = v6;

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (NTKRingsQuadDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end