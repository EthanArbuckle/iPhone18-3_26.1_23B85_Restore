@interface ARUIColorAnimation
+ (id)animationWithDuration:(double)duration startTopColor:(id)color endTopColor:(id)topColor startBottomColor:(id)bottomColor endBottomColor:(id)endBottomColor timingFunction:(id)function applier:(id)applier;
- (ARUIColorAnimation)initWithDuration:(double)duration startTopColor:(id)color endTopColor:(id)topColor startBottomColor:(id)bottomColor endBottomColor:(id)endBottomColor timingFunction:(id)function applier:(id)applier;
- (ARUIRingGroupAnimationDelegate)delegate;
- (BOOL)isAnimating;
- (void)completeAnimation;
- (void)dealloc;
- (void)update:(double)update;
@end

@implementation ARUIColorAnimation

+ (id)animationWithDuration:(double)duration startTopColor:(id)color endTopColor:(id)topColor startBottomColor:(id)bottomColor endBottomColor:(id)endBottomColor timingFunction:(id)function applier:(id)applier
{
  applierCopy = applier;
  functionCopy = function;
  endBottomColorCopy = endBottomColor;
  bottomColorCopy = bottomColor;
  topColorCopy = topColor;
  colorCopy = color;
  v21 = [[ARUIColorAnimation alloc] initWithDuration:colorCopy startTopColor:topColorCopy endTopColor:bottomColorCopy startBottomColor:endBottomColorCopy endBottomColor:functionCopy timingFunction:applierCopy applier:duration];

  return v21;
}

- (ARUIColorAnimation)initWithDuration:(double)duration startTopColor:(id)color endTopColor:(id)topColor startBottomColor:(id)bottomColor endBottomColor:(id)endBottomColor timingFunction:(id)function applier:(id)applier
{
  colorCopy = color;
  topColorCopy = topColor;
  bottomColorCopy = bottomColor;
  endBottomColorCopy = endBottomColor;
  functionCopy = function;
  applierCopy = applier;
  v28.receiver = self;
  v28.super_class = ARUIColorAnimation;
  v21 = [(ARUIColorAnimation *)&v28 init];
  v22 = v21;
  if (v21)
  {
    v21->_completed = 0;
    v21->_duration = duration;
    v21->_percent = 0.0;
    objc_storeStrong(&v21->_startTopColor, color);
    objc_storeStrong(&v22->_currentTopColor, color);
    objc_storeStrong(&v22->_endTopColor, topColor);
    objc_storeStrong(&v22->_startBottomColor, bottomColor);
    objc_storeStrong(&v22->_currentBottomColor, bottomColor);
    objc_storeStrong(&v22->_endBottomColor, endBottomColor);
    objc_storeStrong(&v22->_timingFunction, function);
    v23 = MEMORY[0x1D3875270](applierCopy);
    applier = v22->_applier;
    v22->_applier = v23;
  }

  return v22;
}

- (void)dealloc
{
  if (!self->_completed)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Should call -[ARUIColorAnimation completeAnimation] before deallocating"];
  }

  v3.receiver = self;
  v3.super_class = ARUIColorAnimation;
  [(ARUIColorAnimation *)&v3 dealloc];
}

- (void)update:(double)update
{
  if (self->_completed)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Should not call update on a ARUIColorAnimation that has already completed"];
  }

  v5 = self->_percent + update / self->_duration;
  self->_percent = ARUISaturate(v5);
  [(CAMediaTimingFunction *)self->_timingFunction _solveForInput:?];
  v7 = v6;
  Components = CGColorGetComponents([(UIColor *)self->_startTopColor CGColor]);
  v9 = CGColorGetComponents([(UIColor *)self->_endTopColor CGColor]);
  v10 = objc_alloc(MEMORY[0x1E69DC888]);
  v11 = *Components;
  v12 = *v9;
  v13 = ARUIMix(v11, v12, v7);
  v14 = Components[1];
  v15 = v9[1];
  v16 = ARUIMix(v14, v15, v7);
  v17 = Components[2];
  v18 = v9[2];
  v19 = ARUIMix(v17, v18, v7);
  v20 = Components[3];
  v21 = v9[3];
  v22 = [v10 initWithRed:v13 green:v16 blue:v19 alpha:{ARUIMix(v20, v21, v7)}];
  currentTopColor = self->_currentTopColor;
  self->_currentTopColor = v22;

  v24 = CGColorGetComponents([(UIColor *)self->_startBottomColor CGColor]);
  v25 = CGColorGetComponents([(UIColor *)self->_endBottomColor CGColor]);
  v26 = objc_alloc(MEMORY[0x1E69DC888]);
  v27 = *v24;
  v28 = *v25;
  v29 = ARUIMix(v27, v28, v7);
  v30 = v24[1];
  v31 = v25[1];
  v32 = ARUIMix(v30, v31, v7);
  v33 = v24[2];
  v34 = v25[2];
  v35 = ARUIMix(v33, v34, v7);
  v36 = v24[3];
  v37 = v25[3];
  v38 = [v26 initWithRed:v29 green:v32 blue:v35 alpha:{ARUIMix(v36, v37, v7)}];
  currentBottomColor = self->_currentBottomColor;
  self->_currentBottomColor = v38;

  v40 = *(self->_applier + 2);
  v41.n128_f64[0] = update;

  v40(v41);
}

- (BOOL)isAnimating
{
  if ([(UIColor *)self->_currentTopColor isEqual:self->_endTopColor])
  {
    return [(UIColor *)self->_currentBottomColor isEqual:self->_endBottomColor]^ 1;
  }

  else
  {
    return 1;
  }
}

- (void)completeAnimation
{
  if (self->_completed)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Should not call completeAnimation on a ARUIColorAnimation that has already completed"];
  }

  (*(self->_applier + 2))(0.0);
  self->_completed = 1;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained animationDidComplete:self];
}

- (ARUIRingGroupAnimationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end