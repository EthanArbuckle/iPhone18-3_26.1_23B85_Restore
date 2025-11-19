@interface SCNAvoidOccluderConstraint
+ (SCNAvoidOccluderConstraint)avoidOccluderConstraintWithTarget:(SCNNode *)target;
+ (id)avoidOccluderConstraint;
- (SCNAvoidOccluderConstraint)init;
- (SCNAvoidOccluderConstraint)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_customDecodingOfSCNAvoidOccluderConstraint:(id)a3;
- (void)_customEncodingOfSCNAvoidOccluderConstraint:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setBias:(CGFloat)bias;
- (void)setDelegate:(id)delegate;
- (void)setOccluderCategoryBitMask:(NSUInteger)occluderCategoryBitMask;
- (void)setTarget:(SCNNode *)target;
@end

@implementation SCNAvoidOccluderConstraint

- (SCNAvoidOccluderConstraint)init
{
  v5.receiver = self;
  v5.super_class = SCNAvoidOccluderConstraint;
  v2 = [(SCNConstraint *)&v5 init];
  if (v2)
  {
    AvoidOccluder = C3DConstraintCreateAvoidOccluder();
    v2->_categoryBitMask = 1;
    v2->super._constraintRef = AvoidOccluder;
    v2->_offset = 0.00001;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_delegate)
  {
    v3 = [(SCNNode *)self->_target sceneRef];
    if (v3)
    {
      v4 = v3;
      C3DSceneLock(v3);
      C3DConstraintAvoidOccluderSetDelegate(self->super._constraintRef, 0);
      C3DSceneUnlock(v4);
    }

    else
    {
      C3DConstraintAvoidOccluderSetDelegate(self->super._constraintRef, 0);
    }
  }

  v5.receiver = self;
  v5.super_class = SCNAvoidOccluderConstraint;
  [(SCNConstraint *)&v5 dealloc];
}

+ (id)avoidOccluderConstraint
{
  v2 = objc_alloc_init(SCNAvoidOccluderConstraint);

  return v2;
}

+ (SCNAvoidOccluderConstraint)avoidOccluderConstraintWithTarget:(SCNNode *)target
{
  v4 = objc_alloc_init(SCNAvoidOccluderConstraint);
  [(SCNAvoidOccluderConstraint *)v4 setTarget:target];
  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setTarget:{-[SCNAvoidOccluderConstraint target](self, "target")}];
  [v4 setOccluderCategoryBitMask:{-[SCNAvoidOccluderConstraint occluderCategoryBitMask](self, "occluderCategoryBitMask")}];
  [(SCNAvoidOccluderConstraint *)self bias];
  [v4 setBias:?];
  [(SCNConstraint *)self copyTo:v4];
  return v4;
}

- (void)setDelegate:(id)delegate
{
  if (self->_delegate != delegate)
  {
    self->_delegate = delegate;
    if (delegate)
    {
      if (objc_opt_respondsToSelector())
      {
        v4 = __C3DAvoidOccluderConstraintDelegateShouldAvoidOccluderCallback;
      }

      else
      {
        v4 = 0;
      }

      if (objc_opt_respondsToSelector())
      {
        v5 = __C3DAvoidOccluderConstraintDelegateDidAvoidOccluderCallback;
      }

      else
      {
        v5 = 0;
      }

      v6 = [(SCNConstraint *)self sceneRef];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __42__SCNAvoidOccluderConstraint_setDelegate___block_invoke;
      v10[3] = &unk_2782FE238;
      v10[4] = self;
      v10[5] = v4;
      v10[6] = v5;
      [SCNTransaction postCommandWithContext:v6 object:self applyBlock:v10];
    }

    else
    {
      v7 = [(SCNNode *)self->_target sceneRef];
      if (v7)
      {
        v8 = v7;
        C3DSceneLock(v7);
        C3DConstraintAvoidOccluderSetDelegate(self->super._constraintRef, 0);

        C3DSceneUnlock(v8);
      }

      else
      {
        constraintRef = self->super._constraintRef;

        C3DConstraintAvoidOccluderSetDelegate(constraintRef, 0);
      }
    }
  }
}

void __42__SCNAvoidOccluderConstraint_setDelegate___block_invoke(uint64_t *a1)
{
  v2 = C3DAvoidOccluderConstraintDelegateCreate(a1[4], a1[5], a1[6]);
  C3DConstraintAvoidOccluderSetDelegate(*(a1[4] + 8), v2);

  CFRelease(v2);
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
  v8[2] = __40__SCNAvoidOccluderConstraint_setTarget___block_invoke;
  v8[3] = &unk_2782FB7D0;
  v8[4] = self;
  v8[5] = v6;
  [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v8];
}

- (void)setOccluderCategoryBitMask:(NSUInteger)occluderCategoryBitMask
{
  self->_categoryBitMask = occluderCategoryBitMask;
  v5 = [(SCNConstraint *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__SCNAvoidOccluderConstraint_setOccluderCategoryBitMask___block_invoke;
  v6[3] = &unk_2782FB7D0;
  v6[4] = self;
  v6[5] = occluderCategoryBitMask;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
}

- (void)setBias:(CGFloat)bias
{
  v5 = bias;
  self->_offset = v5;
  v6 = [(SCNConstraint *)self sceneRef];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__SCNAvoidOccluderConstraint_setBias___block_invoke;
  v7[3] = &unk_2782FB7D0;
  v7[4] = self;
  *&v7[5] = bias;
  [SCNTransaction postCommandWithContext:v6 object:self applyBlock:v7];
}

float __38__SCNAvoidOccluderConstraint_setBias___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DConstraintAvoidOccluderSetOffset(*(*(a1 + 32) + 8), v1);
  return result;
}

- (void)_customEncodingOfSCNAvoidOccluderConstraint:(id)a3
{
  target = self->_target;
  if (target)
  {
    [a3 encodeObject:target forKey:@"target"];
  }
}

- (void)_customDecodingOfSCNAvoidOccluderConstraint:(id)a3
{
  self->_target = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"target"];
  AvoidOccluder = C3DConstraintCreateAvoidOccluder();
  self->super._constraintRef = AvoidOccluder;
  C3DConstraintAvoidOccluderSetTarget(AvoidOccluder, [(SCNNode *)self->_target nodeRef]);

  [(SCNConstraint *)self finalizeDecodeConstraint:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = SCNAvoidOccluderConstraint;
  [(SCNConstraint *)&v6 encodeWithCoder:?];
  [(SCNAvoidOccluderConstraint *)self _customEncodingOfSCNAvoidOccluderConstraint:a3];
  [a3 encodeInteger:self->_categoryBitMask forKey:@"categoryBitMask"];
  *&v5 = self->_offset;
  [a3 encodeFloat:@"bias" forKey:v5];
}

- (SCNAvoidOccluderConstraint)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = SCNAvoidOccluderConstraint;
  v4 = [(SCNConstraint *)&v8 initWithCoder:?];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    [(SCNAvoidOccluderConstraint *)v4 _customDecodingOfSCNAvoidOccluderConstraint:a3];
    -[SCNAvoidOccluderConstraint setOccluderCategoryBitMask:](v4, "setOccluderCategoryBitMask:", [a3 decodeIntegerForKey:@"categoryBitMask"]);
    [a3 decodeFloatForKey:@"bias"];
    [(SCNAvoidOccluderConstraint *)v4 setBias:v6];
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

@end