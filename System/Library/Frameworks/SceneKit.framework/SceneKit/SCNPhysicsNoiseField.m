@interface SCNPhysicsNoiseField
- (SCNPhysicsNoiseField)init;
- (SCNPhysicsNoiseField)initWithCoder:(id)a3;
- (id)valueForUndefinedKey:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAnimationSpeed:(double)a3;
- (void)setSmoothness:(double)a3;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
@end

@implementation SCNPhysicsNoiseField

- (SCNPhysicsNoiseField)init
{
  v3.receiver = self;
  v3.super_class = SCNPhysicsNoiseField;
  result = [(SCNPhysicsField *)&v3 init];
  if (result)
  {
    result->_smoothness = 0.0;
    result->_animationSpeed = 1.0;
  }

  return result;
}

- (void)setSmoothness:(double)a3
{
  self->_smoothness = a3;
  v5 = [-[SCNNode scene](self->super._node "scene")];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__SCNPhysicsNoiseField_setSmoothness___block_invoke;
  v6[3] = &unk_2782FB7D0;
  v6[4] = self;
  *&v6[5] = a3;
  [v5 _postCommandWithBlock:v6];
}

float __38__SCNPhysicsNoiseField_setSmoothness___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 120);
  if (v1)
  {
    result = *(a1 + 40);
    *(v1 + 240) = result;
  }

  return result;
}

- (void)setAnimationSpeed:(double)a3
{
  self->_animationSpeed = a3;
  v5 = [-[SCNNode scene](self->super._node "scene")];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__SCNPhysicsNoiseField_setAnimationSpeed___block_invoke;
  v6[3] = &unk_2782FB7D0;
  v6[4] = self;
  *&v6[5] = a3;
  [v5 _postCommandWithBlock:v6];
}

float __42__SCNPhysicsNoiseField_setAnimationSpeed___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 120);
  if (v1)
  {
    result = *(a1 + 40);
    *(v1 + 244) = result;
  }

  return result;
}

- (id)valueForUndefinedKey:(id)a3
{
  if ([a3 isEqualToString:@"smoothness"])
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = 128;
  }

  else
  {
    if (![a3 isEqualToString:@"animationSpeed"])
    {
      v9.receiver = self;
      v9.super_class = SCNPhysicsNoiseField;
      return [(SCNPhysicsNoiseField *)&v9 valueForUndefinedKey:a3];
    }

    v5 = MEMORY[0x277CCABB0];
    v6 = 136;
  }

  v7 = *(&self->super.super.isa + v6);

  return [v5 numberWithDouble:v7];
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  if ([a4 isEqualToString:@"smoothness"])
  {
    [a3 doubleValue];

    [(SCNPhysicsNoiseField *)self setSmoothness:?];
  }

  else if ([a4 isEqualToString:@"animationSpeed"])
  {
    [a3 doubleValue];

    [(SCNPhysicsNoiseField *)self setAnimationSpeed:?];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SCNPhysicsNoiseField;
    [(SCNPhysicsNoiseField *)&v7 setValue:a3 forUndefinedKey:a4];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SCNPhysicsNoiseField;
  [(SCNPhysicsField *)&v5 encodeWithCoder:?];
  [a3 encodeDouble:@"smoothness" forKey:self->_smoothness];
  [a3 encodeDouble:@"animationSpeed" forKey:self->_animationSpeed];
}

- (SCNPhysicsNoiseField)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = SCNPhysicsNoiseField;
  v4 = [(SCNPhysicsField *)&v7 initWithCoder:?];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    [a3 decodeDoubleForKey:@"smoothness"];
    [(SCNPhysicsNoiseField *)v4 setSmoothness:?];
    [a3 decodeDoubleForKey:@"animationSpeed"];
    [(SCNPhysicsNoiseField *)v4 setAnimationSpeed:?];
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

@end