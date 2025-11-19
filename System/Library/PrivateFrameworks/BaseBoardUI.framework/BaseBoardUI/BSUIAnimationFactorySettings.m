@interface BSUIAnimationFactorySettings
+ (id)settingsControllerModule;
- (double)effectiveSlowDownFactor;
- (void)setDefaultValues;
@end

@implementation BSUIAnimationFactorySettings

- (double)effectiveSlowDownFactor
{
  result = 1.0;
  if (self->_slowAnimations)
  {
    return self->_slowDownFactor;
  }

  return result;
}

- (void)setDefaultValues
{
  [(BSUIAnimationFactorySettings *)self setSlowAnimations:0];

  [(BSUIAnimationFactorySettings *)self setSlowDownFactor:4.0];
}

+ (id)settingsControllerModule
{
  v14[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"slowAnimations == YES"];
  v3 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Slow Animations" valueKeyPath:@"slowAnimations"];
  v14[0] = v3;
  v4 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Slow Factor" valueKeyPath:@"slowDownFactor"];
  v5 = [v4 minValue:1.0 maxValue:5.0];
  v6 = [v5 condition:v2];
  v14[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];

  v8 = MEMORY[0x1E69C6638];
  v9 = [MEMORY[0x1E69C6638] sectionWithRows:v7];
  v13 = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  v11 = [v8 moduleWithTitle:@"Slow Animations" contents:v10];

  return v11;
}

@end