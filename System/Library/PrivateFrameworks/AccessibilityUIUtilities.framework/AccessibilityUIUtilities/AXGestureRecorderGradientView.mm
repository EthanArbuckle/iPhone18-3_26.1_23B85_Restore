@interface AXGestureRecorderGradientView
- (id)_copyColorsArrayWithTopColor:(id)color bottomColor:(id)bottomColor;
- (id)_copyLocationsArrayWithTopColorLocation:(float)location bottomColorLocation:(float)colorLocation;
- (void)_configureGradientWithTopColor:(id)color bottomColor:(id)bottomColor locations:(id)locations animated:(BOOL)animated duration:(double)duration completion:(id)completion;
- (void)configureGradientAnimatedWithTopColor:(id)color bottomColor:(id)bottomColor topColorLocation:(float)location bottomColorLocation:(float)colorLocation duration:(double)duration completion:(id)completion;
- (void)configureGradientWithTopColor:(id)color bottomColor:(id)bottomColor topColorLocation:(float)location bottomColorLocation:(float)colorLocation;
@end

@implementation AXGestureRecorderGradientView

- (void)_configureGradientWithTopColor:(id)color bottomColor:(id)bottomColor locations:(id)locations animated:(BOOL)animated duration:(double)duration completion:(id)completion
{
  animatedCopy = animated;
  locationsCopy = locations;
  completionCopy = completion;
  bottomColorCopy = bottomColor;
  colorCopy = color;
  gradientLayer = [(AXGestureRecorderGradientView *)self gradientLayer];
  v19 = [(AXGestureRecorderGradientView *)self _copyColorsArrayWithTopColor:colorCopy bottomColor:bottomColorCopy];

  if (duration > 0.0 && animatedCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __115__AXGestureRecorderGradientView__configureGradientWithTopColor_bottomColor_locations_animated_duration_completion___block_invoke;
    aBlock[3] = &unk_1E812DD28;
    v20 = gradientLayer;
    v32 = v20;
    v21 = _Block_copy(aBlock);
    v22 = v21[2](v21, v19, sel_colors);
    v23 = v21[2](v21, locationsCopy, sel_locations);
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

    [v25 setDuration:duration];
    if (completionCopy)
    {
      v28 = objc_opt_new();
      [v28 setCompletionBlock:completionCopy];
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
      [v20 setLocations:locationsCopy];
    }

    goto LABEL_20;
  }

  [gradientLayer setColors:v19];
  [gradientLayer setLocations:locationsCopy];
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

- (void)configureGradientWithTopColor:(id)color bottomColor:(id)bottomColor topColorLocation:(float)location bottomColorLocation:(float)colorLocation
{
  bottomColorCopy = bottomColor;
  colorCopy = color;
  *&v12 = location;
  *&v13 = colorLocation;
  v14 = [(AXGestureRecorderGradientView *)self _copyLocationsArrayWithTopColorLocation:v12 bottomColorLocation:v13];
  [(AXGestureRecorderGradientView *)self _configureGradientWithTopColor:colorCopy bottomColor:bottomColorCopy locations:v14 animated:0 duration:0 completion:0.0];
}

- (void)configureGradientAnimatedWithTopColor:(id)color bottomColor:(id)bottomColor topColorLocation:(float)location bottomColorLocation:(float)colorLocation duration:(double)duration completion:(id)completion
{
  completionCopy = completion;
  bottomColorCopy = bottomColor;
  colorCopy = color;
  *&v17 = location;
  *&v18 = colorLocation;
  v19 = [(AXGestureRecorderGradientView *)self _copyLocationsArrayWithTopColorLocation:v17 bottomColorLocation:v18];
  [(AXGestureRecorderGradientView *)self _configureGradientWithTopColor:colorCopy bottomColor:bottomColorCopy locations:v19 animated:1 duration:completionCopy completion:duration];
}

- (id)_copyColorsArrayWithTopColor:(id)color bottomColor:(id)bottomColor
{
  v5 = MEMORY[0x1E695DEC8];
  bottomColorCopy = bottomColor;
  colorCopy = color;
  v8 = [v5 alloc];
  cGColor = [colorCopy CGColor];

  cGColor2 = [bottomColorCopy CGColor];
  return [v8 initWithObjects:{cGColor, cGColor2, 0}];
}

- (id)_copyLocationsArrayWithTopColorLocation:(float)location bottomColorLocation:(float)colorLocation
{
  v6 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v7 = location;
  v8 = [v6 initWithFloat:v7];
  v9 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v10 = colorLocation;
  v11 = [v9 initWithFloat:v10];
  v12 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v8, v11, 0}];

  return v12;
}

@end