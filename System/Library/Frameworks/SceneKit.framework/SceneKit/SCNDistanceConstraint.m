@interface SCNDistanceConstraint
+ (SCNDistanceConstraint)distanceConstraintWithTarget:(SCNNode *)target;
+ (id)distanceConstraint;
- (SCNDistanceConstraint)init;
- (SCNDistanceConstraint)initWithCoder:(id)a3;
- (SCNVector3)targetDirection;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_customDecodingOfSCNDistanceConstraint:(id)a3;
- (void)_customEncodingOfSCNDistanceConstraint:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setKeepTargetDirection:(BOOL)a3;
- (void)setMaximumDistance:(CGFloat)maximumDistance;
- (void)setMinimumDistance:(CGFloat)minimumDistance;
- (void)setTarget:(SCNNode *)target;
- (void)setTargetDirection:(SCNVector3)a3;
@end

@implementation SCNDistanceConstraint

- (SCNDistanceConstraint)init
{
  v8.receiver = self;
  v8.super_class = SCNDistanceConstraint;
  v2 = [(SCNConstraint *)&v8 init];
  if (v2)
  {
    Distance = C3DConstraintCreateDistance();
    v2->_maximumDistance = 3.4028e38;
    v2->_minimumDistance = 0.0;
    v2->_maximumDirectionAngle = 360.0;
    v2->super._constraintRef = Distance;
    +[SCNNode localFront];
    v2->_targetDirection.x = v4;
    v2->_targetDirection.y = v5;
    v2->_targetDirection.z = v6;
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNDistanceConstraint;
  [(SCNConstraint *)&v3 dealloc];
}

+ (id)distanceConstraint
{
  v2 = objc_alloc_init(SCNDistanceConstraint);

  return v2;
}

+ (SCNDistanceConstraint)distanceConstraintWithTarget:(SCNNode *)target
{
  v4 = objc_alloc_init(SCNDistanceConstraint);
  [(SCNDistanceConstraint *)v4 setTarget:target];
  return v4;
}

- (void)setTarget:(SCNNode *)target
{
  v5 = target;
  self->_target = v5;
  if (v5)
  {
    v6 = [(SCNNode *)v5 nodeRef];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(SCNConstraint *)self sceneRef];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__SCNDistanceConstraint_setTarget___block_invoke;
  v8[3] = &unk_2782FB7D0;
  v8[4] = self;
  v8[5] = v6;
  [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v8];
}

- (SCNVector3)targetDirection
{
  x = self->_targetDirection.x;
  y = self->_targetDirection.y;
  z = self->_targetDirection.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setTargetDirection:(SCNVector3)a3
{
  z = a3.z;
  y = a3.y;
  x = a3.x;
  self->_targetDirection = a3;
  v7 = [(SCNConstraint *)self sceneRef];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__SCNDistanceConstraint_setTargetDirection___block_invoke;
  v8[3] = &unk_2782FB848;
  v8[4] = self;
  v9 = x;
  v10 = y;
  v11 = z;
  [SCNTransaction postCommandWithContext:v7 object:self key:@"targetDirection" applyBlock:v8];
}

void __44__SCNDistanceConstraint_setTargetDirection___block_invoke(uint64_t a1, __n128 a2)
{
  a2.n128_u64[0] = *(a1 + 40);
  a2.n128_u32[2] = *(a1 + 48);
  C3DConstraintDistanceSetTargetDirection(*(*(a1 + 32) + 8), a2);
}

- (void)setKeepTargetDirection:(BOOL)a3
{
  self->_keepTargetDirection = a3;
  v5 = [(SCNConstraint *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__SCNDistanceConstraint_setKeepTargetDirection___block_invoke;
  v6[3] = &unk_2782FB7F8;
  v6[4] = self;
  v7 = a3;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
}

- (void)setMinimumDistance:(CGFloat)minimumDistance
{
  v5 = minimumDistance;
  self->_minimumDistance = v5;
  v6 = [(SCNConstraint *)self sceneRef];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__SCNDistanceConstraint_setMinimumDistance___block_invoke;
  v7[3] = &unk_2782FB7D0;
  v7[4] = self;
  *&v7[5] = minimumDistance;
  [SCNTransaction postCommandWithContext:v6 object:self key:@"minimumDistance" applyBlock:v7];
}

float __44__SCNDistanceConstraint_setMinimumDistance___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DConstraintDistanceSetMinimumDistance(*(*(a1 + 32) + 8), v1);
  return result;
}

- (void)setMaximumDistance:(CGFloat)maximumDistance
{
  v5 = maximumDistance;
  self->_maximumDistance = v5;
  v6 = [(SCNConstraint *)self sceneRef];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__SCNDistanceConstraint_setMaximumDistance___block_invoke;
  v7[3] = &unk_2782FB7D0;
  v7[4] = self;
  *&v7[5] = maximumDistance;
  [SCNTransaction postCommandWithContext:v6 object:self key:@"maximumDistance" applyBlock:v7];
}

float __44__SCNDistanceConstraint_setMaximumDistance___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DConstraintDistanceSetMaximumDistance(*(*(a1 + 32) + 8), v1);
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setTarget:{-[SCNDistanceConstraint target](self, "target")}];
  [(SCNDistanceConstraint *)self maximumDistance];
  [v4 setMaximumDistance:?];
  [(SCNDistanceConstraint *)self minimumDistance];
  [v4 setMinimumDistance:?];
  [(SCNConstraint *)self copyTo:v4];
  return v4;
}

- (void)_customEncodingOfSCNDistanceConstraint:(id)a3
{
  target = self->_target;
  if (target)
  {
    [a3 encodeObject:target forKey:@"target"];
  }
}

- (void)_customDecodingOfSCNDistanceConstraint:(id)a3
{
  self->super._constraintRef = C3DConstraintCreateDistance();
  -[SCNDistanceConstraint setTarget:](self, "setTarget:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"target"]);

  [(SCNConstraint *)self finalizeDecodeConstraint:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = SCNDistanceConstraint;
  [(SCNConstraint *)&v7 encodeWithCoder:?];
  [(SCNDistanceConstraint *)self _customEncodingOfSCNDistanceConstraint:a3];
  *&v5 = self->_minimumDistance;
  [a3 encodeFloat:@"minimumDistance" forKey:v5];
  *&v6 = self->_maximumDistance;
  [a3 encodeFloat:@"maximumDistance" forKey:v6];
}

- (SCNDistanceConstraint)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = SCNDistanceConstraint;
  v4 = [(SCNConstraint *)&v9 initWithCoder:?];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    [(SCNDistanceConstraint *)v4 _customDecodingOfSCNDistanceConstraint:a3];
    [a3 decodeFloatForKey:@"minimumDistance"];
    [(SCNDistanceConstraint *)v4 setMinimumDistance:v6];
    [a3 decodeFloatForKey:@"maximumDistance"];
    [(SCNDistanceConstraint *)v4 setMaximumDistance:v7];
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

@end