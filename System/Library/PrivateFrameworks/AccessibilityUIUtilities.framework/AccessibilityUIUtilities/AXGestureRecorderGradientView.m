@interface AXGestureRecorderGradientView
- (id)_copyColorsArrayWithTopColor:(id)a3 bottomColor:(id)a4;
- (id)_copyLocationsArrayWithTopColorLocation:(float)a3 bottomColorLocation:(float)a4;
- (void)_configureGradientWithTopColor:(id)a3 bottomColor:(id)a4 locations:(id)a5 animated:(BOOL)a6 duration:(double)a7 completion:(id)a8;
- (void)configureGradientAnimatedWithTopColor:(id)a3 bottomColor:(id)a4 topColorLocation:(float)a5 bottomColorLocation:(float)a6 duration:(double)a7 completion:(id)a8;
- (void)configureGradientWithTopColor:(id)a3 bottomColor:(id)a4 topColorLocation:(float)a5 bottomColorLocation:(float)a6;
@end

@implementation AXGestureRecorderGradientView

- (void)_configureGradientWithTopColor:(id)a3 bottomColor:(id)a4 locations:(id)a5 animated:(BOOL)a6 duration:(double)a7 completion:(id)a8
{
  v10 = a6;
  v14 = a5;
  v15 = a8;
  v16 = a4;
  v17 = a3;
  v18 = [(AXGestureRecorderGradientView *)self gradientLayer];
  v19 = [(AXGestureRecorderGradientView *)self _copyColorsArrayWithTopColor:v17 bottomColor:v16];

  if (a7 > 0.0 && v10)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __115__AXGestureRecorderGradientView__configureGradientWithTopColor_bottomColor_locations_animated_duration_completion___block_invoke;
    aBlock[3] = &unk_1E812DD28;
    v20 = v18;
    v32 = v20;
    v21 = _Block_copy(aBlock);
    v22 = v21[2](v21, v19, sel_colors);
    v23 = v21[2](v21, v14, sel_locations);
    v24 = v23;
    if (v22 && v23)
    {
      v25 = objc_opt_new();
      v26 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v22, v24, 0}];
      [v25 setAnimations:v26];

      if (!v25)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (!(v22 | v23))
      {
        v25 = 0;
LABEL_20:

        goto LABEL_21;
      }

      if (v22)
      {
        v27 = v22;
      }

      else
      {
        v27 = v23;
      }

      v25 = v27;
    }

    [v25 setDuration:a7];
    if (v15)
    {
      v28 = objc_opt_new();
      [v28 setCompletionBlock:v15];
      [v25 setDelegate:v28];
    }

    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    [v20 addAnimation:v25 forKey:v30];

    if (v22)
    {
      [v20 setColors:v19];
    }

    if (v24)
    {
      [v20 setLocations:v14];
    }

    goto LABEL_20;
  }

  [v18 setColors:v19];
  [v18 setLocations:v14];
LABEL_21:
}

id __115__AXGestureRecorderGradientView__configureGradientWithTopColor_bottomColor_locations_animated_duration_completion___block_invoke(uint64_t a1, void *a2, const char *a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) performSelector:a3];
  v7 = v6;
  if (v6 == v5 || v5 && v6 && ([v5 isEqual:v6] & 1) != 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_opt_new();
    v9 = NSStringFromSelector(a3);
    [v8 setKeyPath:v9];

    [v8 setFromValue:v7];
    [v8 setToValue:v5];
  }

  return v8;
}

- (void)configureGradientWithTopColor:(id)a3 bottomColor:(id)a4 topColorLocation:(float)a5 bottomColorLocation:(float)a6
{
  v10 = a4;
  v11 = a3;
  *&v12 = a5;
  *&v13 = a6;
  v14 = [(AXGestureRecorderGradientView *)self _copyLocationsArrayWithTopColorLocation:v12 bottomColorLocation:v13];
  [(AXGestureRecorderGradientView *)self _configureGradientWithTopColor:v11 bottomColor:v10 locations:v14 animated:0 duration:0 completion:0.0];
}

- (void)configureGradientAnimatedWithTopColor:(id)a3 bottomColor:(id)a4 topColorLocation:(float)a5 bottomColorLocation:(float)a6 duration:(double)a7 completion:(id)a8
{
  v14 = a8;
  v15 = a4;
  v16 = a3;
  *&v17 = a5;
  *&v18 = a6;
  v19 = [(AXGestureRecorderGradientView *)self _copyLocationsArrayWithTopColorLocation:v17 bottomColorLocation:v18];
  [(AXGestureRecorderGradientView *)self _configureGradientWithTopColor:v16 bottomColor:v15 locations:v19 animated:1 duration:v14 completion:a7];
}

- (id)_copyColorsArrayWithTopColor:(id)a3 bottomColor:(id)a4
{
  v5 = MEMORY[0x1E695DEC8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 alloc];
  v9 = [v7 CGColor];

  v10 = [v6 CGColor];
  return [v8 initWithObjects:{v9, v10, 0}];
}

- (id)_copyLocationsArrayWithTopColorLocation:(float)a3 bottomColorLocation:(float)a4
{
  v6 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v7 = a3;
  v8 = [v6 initWithFloat:v7];
  v9 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v10 = a4;
  v11 = [v9 initWithFloat:v10];
  v12 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v8, v11, 0}];

  return v12;
}

@end