@interface SCNBillboardConstraint
+ (SCNBillboardConstraint)billboardConstraint;
- (SCNBillboardConstraint)init;
- (SCNBillboardConstraint)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setFreeAxes:(SCNBillboardAxis)freeAxes;
- (void)setPreserveScale:(BOOL)a3;
@end

@implementation SCNBillboardConstraint

- (SCNBillboardConstraint)init
{
  v4.receiver = self;
  v4.super_class = SCNBillboardConstraint;
  v2 = [(SCNConstraint *)&v4 init];
  if (v2)
  {
    *(v2 + 1) = C3DConstraintCreateBillboard();
    [v2 setFreeAxes:7];
    *(v2 + 64) = C3DConstraintBillboardGetPreserveScale(*(v2 + 1));
  }

  return v2;
}

+ (SCNBillboardConstraint)billboardConstraint
{
  v2 = objc_alloc_init(SCNBillboardConstraint);

  return v2;
}

- (void)setFreeAxes:(SCNBillboardAxis)freeAxes
{
  self->_freeAxes = freeAxes;
  v5 = [(SCNConstraint *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__SCNBillboardConstraint_setFreeAxes___block_invoke;
  v6[3] = &unk_2782FB7D0;
  v6[4] = self;
  v6[5] = freeAxes;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
}

- (void)setPreserveScale:(BOOL)a3
{
  self->_preserveScale = a3;
  v5 = [(SCNConstraint *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__SCNBillboardConstraint_setPreserveScale___block_invoke;
  v6[3] = &unk_2782FB7F8;
  v6[4] = self;
  v7 = a3;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [(SCNConstraint *)self copyTo:v4];
  [v4 setFreeAxes:{-[SCNBillboardConstraint freeAxes](self, "freeAxes")}];
  [v4 setPreserveScale:{-[SCNBillboardConstraint preserveScale](self, "preserveScale")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SCNBillboardConstraint;
  [(SCNConstraint *)&v5 encodeWithCoder:?];
  [a3 encodeInteger:self->_freeAxes forKey:@"freeAxes"];
  [a3 encodeBool:self->_preserveScale forKey:@"preserveScale"];
}

- (SCNBillboardConstraint)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = SCNBillboardConstraint;
  v4 = [(SCNConstraint *)&v7 initWithCoder:?];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    v4->super._constraintRef = C3DConstraintCreateBillboard();
    -[SCNBillboardConstraint setFreeAxes:](v4, "setFreeAxes:", [a3 decodeIntegerForKey:@"freeAxes"]);
    -[SCNBillboardConstraint setPreserveScale:](v4, "setPreserveScale:", [a3 decodeBoolForKey:@"preserveScale"]);
    [(SCNConstraint *)v4 finalizeDecodeConstraint:a3];
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

@end