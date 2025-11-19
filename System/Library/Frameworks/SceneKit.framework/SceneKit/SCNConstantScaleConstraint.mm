@interface SCNConstantScaleConstraint
+ (id)constantScaleConstraint;
- (SCNConstantScaleConstraint)init;
- (SCNConstantScaleConstraint)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setScale:(float)a3;
- (void)setScreenSpace:(BOOL)a3;
@end

@implementation SCNConstantScaleConstraint

- (SCNConstantScaleConstraint)init
{
  v5.receiver = self;
  v5.super_class = SCNConstantScaleConstraint;
  v2 = [(SCNConstraint *)&v5 init];
  if (v2)
  {
    ConstantScale = C3DConstraintCreateConstantScale();
    v2->_scale = 1.0;
    v2->super._constraintRef = ConstantScale;
    v2->_screenSpace = 1;
  }

  return v2;
}

+ (id)constantScaleConstraint
{
  v2 = objc_alloc_init(SCNConstantScaleConstraint);

  return v2;
}

- (void)setScale:(float)a3
{
  self->_scale = a3;
  v5 = [(SCNConstraint *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__SCNConstantScaleConstraint_setScale___block_invoke;
  v6[3] = &unk_2782FF898;
  v6[4] = self;
  v7 = a3;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
}

- (void)setScreenSpace:(BOOL)a3
{
  self->_screenSpace = a3;
  v5 = [(SCNConstraint *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__SCNConstantScaleConstraint_setScreenSpace___block_invoke;
  v6[3] = &unk_2782FB7F8;
  v6[4] = self;
  v7 = a3;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [(SCNConstraint *)self copyTo:v4];
  v4[14] = LODWORD(self->_scale);
  *(v4 + 60) = self->_screenSpace;
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = SCNConstantScaleConstraint;
  [(SCNConstraint *)&v6 encodeWithCoder:?];
  [a3 encodeBool:self->_screenSpace forKey:@"screenSpace"];
  *&v5 = self->_scale;
  [a3 encodeFloat:@"scale" forKey:v5];
}

- (SCNConstantScaleConstraint)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = SCNConstantScaleConstraint;
  v4 = [(SCNConstraint *)&v7 initWithCoder:?];
  if (v4)
  {
    v4->super._constraintRef = C3DConstraintCreateConstantScale();
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    -[SCNConstantScaleConstraint setScreenSpace:](v4, "setScreenSpace:", [a3 decodeBoolForKey:@"screenSpace"]);
    [a3 decodeFloatForKey:@"scale"];
    [(SCNConstantScaleConstraint *)v4 setScale:?];
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

@end