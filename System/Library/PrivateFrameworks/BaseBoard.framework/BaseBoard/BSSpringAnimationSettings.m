@interface BSSpringAnimationSettings
+ (id)settingsWithMass:(double)a3 stiffness:(double)a4 damping:(double)a5;
+ (id)settingsWithMass:(double)a3 stiffness:(double)a4 damping:(double)a5 epsilon:(double)a6;
+ (id)settingsWithMass:(double)a3 stiffness:(double)a4 damping:(double)a5 epsilon:(double)a6 delay:(double)a7 timingFunction:(id)a8;
+ (id)settingsWithMass:(double)a3 stiffness:(double)a4 damping:(double)a5 epsilon:(double)a6 initialVelocity:(double)a7;
+ (id)settingsWithMass:(double)a3 stiffness:(double)a4 damping:(double)a5 epsilon:(double)a6 timingFunction:(id)a7;
+ (id)settingsWithMass:(double)a3 stiffness:(double)a4 damping:(double)a5 timingFunction:(id)a6;
@end

@implementation BSSpringAnimationSettings

+ (id)settingsWithMass:(double)a3 stiffness:(double)a4 damping:(double)a5
{
  v8 = [a1 alloc];
  v12 = [(BSAnimationSettings *)v8 _initWithStoredDuration:0 storedDurationIsDirty:0 delay:1 frameInterval:0.0 frameRange:0.0 highFrameRateReason:0.0 timingFunction:0.0 speed:0.0 beginTime:0.0 mass:1.0 stiffness:0.0 damping:v9 epsilon:v10 initialVelocity:v11 isSpring:*&a3, *&a4, *&a5, 0.0, 0];

  return v12;
}

+ (id)settingsWithMass:(double)a3 stiffness:(double)a4 damping:(double)a5 epsilon:(double)a6
{
  v10 = [a1 alloc];
  v14 = [(BSAnimationSettings *)v10 _initWithStoredDuration:0 storedDurationIsDirty:0 delay:1 frameInterval:0.0 frameRange:0.0 highFrameRateReason:0.0 timingFunction:0.0 speed:0.0 beginTime:0.0 mass:1.0 stiffness:0.0 damping:v11 epsilon:v12 initialVelocity:v13 isSpring:*&a3, *&a4, *&a5, a6, 0];

  return v14;
}

+ (id)settingsWithMass:(double)a3 stiffness:(double)a4 damping:(double)a5 epsilon:(double)a6 initialVelocity:(double)a7
{
  v12 = [a1 alloc];
  v16 = [(BSAnimationSettings *)v12 _initWithStoredDuration:0 storedDurationIsDirty:0 delay:1 frameInterval:0.0 frameRange:0.0 highFrameRateReason:0.0 timingFunction:0.0 speed:0.0 beginTime:0.0 mass:1.0 stiffness:0.0 damping:v13 epsilon:v14 initialVelocity:v15 isSpring:*&a3, *&a4, *&a5, a6, *&a7];

  return v16;
}

+ (id)settingsWithMass:(double)a3 stiffness:(double)a4 damping:(double)a5 timingFunction:(id)a6
{
  v10 = a6;
  v11 = [a1 alloc];
  v15 = [(BSAnimationSettings *)v11 _initWithStoredDuration:0 storedDurationIsDirty:v10 delay:1 frameInterval:0.0 frameRange:0.0 highFrameRateReason:0.0 timingFunction:0.0 speed:0.0 beginTime:0.0 mass:1.0 stiffness:0.0 damping:v12 epsilon:v13 initialVelocity:v14 isSpring:*&a3, *&a4, *&a5, 0.0, 0];

  return v15;
}

+ (id)settingsWithMass:(double)a3 stiffness:(double)a4 damping:(double)a5 epsilon:(double)a6 timingFunction:(id)a7
{
  v12 = a7;
  v13 = [a1 alloc];
  v17 = [(BSAnimationSettings *)v13 _initWithStoredDuration:0 storedDurationIsDirty:v12 delay:1 frameInterval:0.0 frameRange:0.0 highFrameRateReason:0.0 timingFunction:0.0 speed:0.0 beginTime:0.0 mass:1.0 stiffness:0.0 damping:v14 epsilon:v15 initialVelocity:v16 isSpring:*&a3, *&a4, *&a5, a6, 0];

  return v17;
}

+ (id)settingsWithMass:(double)a3 stiffness:(double)a4 damping:(double)a5 epsilon:(double)a6 delay:(double)a7 timingFunction:(id)a8
{
  v14 = a8;
  v15 = [a1 alloc];
  v19 = [(BSAnimationSettings *)v15 _initWithStoredDuration:0 storedDurationIsDirty:v14 delay:1 frameInterval:0.0 frameRange:a7 highFrameRateReason:0.0 timingFunction:0.0 speed:0.0 beginTime:0.0 mass:1.0 stiffness:0.0 damping:v16 epsilon:v17 initialVelocity:v18 isSpring:*&a3, *&a4, *&a5, a6, 0];

  return v19;
}

@end