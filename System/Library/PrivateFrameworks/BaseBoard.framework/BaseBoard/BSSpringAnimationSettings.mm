@interface BSSpringAnimationSettings
+ (id)settingsWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping;
+ (id)settingsWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping epsilon:(double)epsilon;
+ (id)settingsWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping epsilon:(double)epsilon delay:(double)delay timingFunction:(id)function;
+ (id)settingsWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping epsilon:(double)epsilon initialVelocity:(double)velocity;
+ (id)settingsWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping epsilon:(double)epsilon timingFunction:(id)function;
+ (id)settingsWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping timingFunction:(id)function;
@end

@implementation BSSpringAnimationSettings

+ (id)settingsWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping
{
  v8 = [self alloc];
  v12 = [(BSAnimationSettings *)v8 _initWithStoredDuration:0 storedDurationIsDirty:0 delay:1 frameInterval:0.0 frameRange:0.0 highFrameRateReason:0.0 timingFunction:0.0 speed:0.0 beginTime:0.0 mass:1.0 stiffness:0.0 damping:v9 epsilon:v10 initialVelocity:v11 isSpring:*&mass, *&stiffness, *&damping, 0.0, 0];

  return v12;
}

+ (id)settingsWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping epsilon:(double)epsilon
{
  v10 = [self alloc];
  v14 = [(BSAnimationSettings *)v10 _initWithStoredDuration:0 storedDurationIsDirty:0 delay:1 frameInterval:0.0 frameRange:0.0 highFrameRateReason:0.0 timingFunction:0.0 speed:0.0 beginTime:0.0 mass:1.0 stiffness:0.0 damping:v11 epsilon:v12 initialVelocity:v13 isSpring:*&mass, *&stiffness, *&damping, epsilon, 0];

  return v14;
}

+ (id)settingsWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping epsilon:(double)epsilon initialVelocity:(double)velocity
{
  v12 = [self alloc];
  v16 = [(BSAnimationSettings *)v12 _initWithStoredDuration:0 storedDurationIsDirty:0 delay:1 frameInterval:0.0 frameRange:0.0 highFrameRateReason:0.0 timingFunction:0.0 speed:0.0 beginTime:0.0 mass:1.0 stiffness:0.0 damping:v13 epsilon:v14 initialVelocity:v15 isSpring:*&mass, *&stiffness, *&damping, epsilon, *&velocity];

  return v16;
}

+ (id)settingsWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping timingFunction:(id)function
{
  functionCopy = function;
  v11 = [self alloc];
  v15 = [(BSAnimationSettings *)v11 _initWithStoredDuration:0 storedDurationIsDirty:functionCopy delay:1 frameInterval:0.0 frameRange:0.0 highFrameRateReason:0.0 timingFunction:0.0 speed:0.0 beginTime:0.0 mass:1.0 stiffness:0.0 damping:v12 epsilon:v13 initialVelocity:v14 isSpring:*&mass, *&stiffness, *&damping, 0.0, 0];

  return v15;
}

+ (id)settingsWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping epsilon:(double)epsilon timingFunction:(id)function
{
  functionCopy = function;
  v13 = [self alloc];
  v17 = [(BSAnimationSettings *)v13 _initWithStoredDuration:0 storedDurationIsDirty:functionCopy delay:1 frameInterval:0.0 frameRange:0.0 highFrameRateReason:0.0 timingFunction:0.0 speed:0.0 beginTime:0.0 mass:1.0 stiffness:0.0 damping:v14 epsilon:v15 initialVelocity:v16 isSpring:*&mass, *&stiffness, *&damping, epsilon, 0];

  return v17;
}

+ (id)settingsWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping epsilon:(double)epsilon delay:(double)delay timingFunction:(id)function
{
  functionCopy = function;
  v15 = [self alloc];
  v19 = [(BSAnimationSettings *)v15 _initWithStoredDuration:0 storedDurationIsDirty:functionCopy delay:1 frameInterval:0.0 frameRange:delay highFrameRateReason:0.0 timingFunction:0.0 speed:0.0 beginTime:0.0 mass:1.0 stiffness:0.0 damping:v16 epsilon:v17 initialVelocity:v18 isSpring:*&mass, *&stiffness, *&damping, epsilon, 0];

  return v19;
}

@end