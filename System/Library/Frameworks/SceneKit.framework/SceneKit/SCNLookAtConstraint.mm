@interface SCNLookAtConstraint
+ (SCNLookAtConstraint)lookAtConstraintWithTarget:(SCNNode *)target;
- (SCNLookAtConstraint)initWithCoder:(id)coder;
- (SCNLookAtConstraint)initWithTarget:(id)target;
- (SCNVector3)localFront;
- (SCNVector3)targetOffset;
- (SCNVector3)worldUp;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_customDecodingOfSCNLookAtConstraint:(id)constraint;
- (void)_customEncodingOfSCNLookAtConstraint:(id)constraint;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setGimbalLockEnabled:(BOOL)gimbalLockEnabled;
- (void)setLocalFront:(SCNVector3)localFront;
- (void)setTarget:(SCNNode *)target;
- (void)setTargetOffset:(SCNVector3)targetOffset;
- (void)setWorldUp:(SCNVector3)worldUp;
@end

@implementation SCNLookAtConstraint

- (SCNLookAtConstraint)initWithTarget:(id)target
{
  v7.receiver = self;
  v7.super_class = SCNLookAtConstraint;
  v4 = [(SCNConstraint *)&v7 init];
  if (v4)
  {
    targetCopy = target;
    *(v4 + 7) = targetCopy;
    if (targetCopy)
    {
      targetCopy = [targetCopy nodeRef];
    }

    v4[64] = 0;
    *(v4 + 19) = 0;
    *(v4 + 68) = 0;
    *(v4 + 92) = 0;
    *(v4 + 25) = -1082130432;
    *(v4 + 10) = 0x3F80000000000000;
    *(v4 + 22) = 0;
    *(v4 + 1) = C3DConstraintCreateLookAt(targetCopy);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNLookAtConstraint;
  [(SCNConstraint *)&v3 dealloc];
}

+ (SCNLookAtConstraint)lookAtConstraintWithTarget:(SCNNode *)target
{
  v3 = [[SCNLookAtConstraint alloc] initWithTarget:target];

  return v3;
}

- (void)setGimbalLockEnabled:(BOOL)gimbalLockEnabled
{
  self->_gimbalLockEnabled = gimbalLockEnabled;
  sceneRef = [(SCNConstraint *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__SCNLookAtConstraint_setGimbalLockEnabled___block_invoke;
  v6[3] = &unk_2782FB7F8;
  v6[4] = self;
  v7 = gimbalLockEnabled;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
}

- (void)setTarget:(SCNNode *)target
{
  v5 = target;
  self->_target = v5;
  if (v5)
  {
    nodeRef = [(SCNNode *)v5 nodeRef];
  }

  else
  {
    nodeRef = 0;
  }

  sceneRef = [(SCNConstraint *)self sceneRef];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __33__SCNLookAtConstraint_setTarget___block_invoke;
  v8[3] = &unk_2782FB7D0;
  v8[4] = self;
  v8[5] = nodeRef;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v8];
}

- (SCNVector3)targetOffset
{
  x = self->_targetOffset.x;
  y = self->_targetOffset.y;
  z = self->_targetOffset.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setTargetOffset:(SCNVector3)targetOffset
{
  z = targetOffset.z;
  y = targetOffset.y;
  x = targetOffset.x;
  self->_targetOffset = targetOffset;
  sceneRef = [(SCNConstraint *)self sceneRef];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__SCNLookAtConstraint_setTargetOffset___block_invoke;
  v8[3] = &unk_2782FB848;
  v8[4] = self;
  v9 = x;
  v10 = y;
  v11 = z;
  [SCNTransaction postCommandWithContext:sceneRef object:self key:@"targetOffset" applyBlock:v8];
}

double __39__SCNLookAtConstraint_setTargetOffset___block_invoke(uint64_t a1, __n128 a2)
{
  a2.n128_u64[0] = *(a1 + 40);
  a2.n128_u32[2] = *(a1 + 48);
  *&result = C3DConstraintLookAtSetTargetOffset(*(*(a1 + 32) + 8), a2).n128_u64[0];
  return result;
}

- (SCNVector3)worldUp
{
  x = self->_upVector.x;
  y = self->_upVector.y;
  z = self->_upVector.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setWorldUp:(SCNVector3)worldUp
{
  z = worldUp.z;
  y = worldUp.y;
  x = worldUp.x;
  self->_upVector = worldUp;
  sceneRef = [(SCNConstraint *)self sceneRef];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__SCNLookAtConstraint_setWorldUp___block_invoke;
  v8[3] = &unk_2782FB848;
  v8[4] = self;
  v9 = x;
  v10 = y;
  v11 = z;
  [SCNTransaction postCommandWithContext:sceneRef object:self key:@"worldUp" applyBlock:v8];
}

double __34__SCNLookAtConstraint_setWorldUp___block_invoke(uint64_t a1, __n128 a2)
{
  a2.n128_u64[0] = *(a1 + 40);
  a2.n128_u32[2] = *(a1 + 48);
  *&result = C3DConstraintLookAtSetUpVector(*(*(a1 + 32) + 8), a2).n128_u64[0];
  return result;
}

- (SCNVector3)localFront
{
  x = self->_localFront.x;
  y = self->_localFront.y;
  z = self->_localFront.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setLocalFront:(SCNVector3)localFront
{
  z = localFront.z;
  y = localFront.y;
  x = localFront.x;
  self->_localFront = localFront;
  sceneRef = [(SCNConstraint *)self sceneRef];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__SCNLookAtConstraint_setLocalFront___block_invoke;
  v8[3] = &unk_2782FB848;
  v8[4] = self;
  v9 = x;
  v10 = y;
  v11 = z;
  [SCNTransaction postCommandWithContext:sceneRef object:self key:@"localFront" applyBlock:v8];
}

void __37__SCNLookAtConstraint_setLocalFront___block_invoke(uint64_t a1, __n128 a2)
{
  a2.n128_u64[0] = *(a1 + 40);
  a2.n128_u32[2] = *(a1 + 48);
  C3DConstraintLookAtSetLocalFront(*(*(a1 + 32) + 8), a2);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_alloc(objc_opt_class()) initWithTarget:self->_target];
  [v4 setGimbalLockEnabled:{-[SCNLookAtConstraint gimbalLockEnabled](self, "gimbalLockEnabled")}];
  [(SCNLookAtConstraint *)self targetOffset];
  [v4 setTargetOffset:?];
  [(SCNLookAtConstraint *)self upVector];
  [v4 setUpVector:?];
  [(SCNLookAtConstraint *)self localFront];
  [v4 setLocalFront:?];
  [(SCNConstraint *)self copyTo:v4];
  return v4;
}

- (void)_customEncodingOfSCNLookAtConstraint:(id)constraint
{
  target = self->_target;
  if (target)
  {
    [constraint encodeObject:target forKey:@"target"];
  }
}

- (void)_customDecodingOfSCNLookAtConstraint:(id)constraint
{
  v5 = [constraint decodeObjectOfClass:objc_opt_class() forKey:@"target"];
  self->_target = v5;
  self->super._constraintRef = C3DConstraintCreateLookAt([(SCNNode *)v5 nodeRef]);

  [(SCNConstraint *)self finalizeDecodeConstraint:constraint];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SCNLookAtConstraint;
  [(SCNConstraint *)&v5 encodeWithCoder:?];
  [(SCNLookAtConstraint *)self _customEncodingOfSCNLookAtConstraint:coder];
  [coder encodeBool:self->_gimbalLockEnabled forKey:@"gimbalLockEnabled"];
  SCNEncodeVector3(coder, @"targetOffset", self->_targetOffset.x, self->_targetOffset.y, self->_targetOffset.z);
  SCNEncodeVector3(coder, @"upVector", self->_upVector.x, self->_upVector.y, self->_upVector.z);
  SCNEncodeVector3(coder, @"localFront", self->_localFront.x, self->_localFront.y, self->_localFront.z);
}

- (SCNLookAtConstraint)initWithCoder:(id)coder
{
  v15.receiver = self;
  v15.super_class = SCNLookAtConstraint;
  v4 = [(SCNConstraint *)&v15 initWithCoder:?];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    [(SCNLookAtConstraint *)v4 _customDecodingOfSCNLookAtConstraint:coder];
    -[SCNLookAtConstraint setGimbalLockEnabled:](v4, "setGimbalLockEnabled:", [coder decodeBoolForKey:@"gimbalLockEnabled"]);
    if ([coder containsValueForKey:@"targetOffset"])
    {
      *&v6 = SCNDecodeVector3(coder, @"targetOffset");
      [(SCNLookAtConstraint *)v4 setTargetOffset:v6];
    }

    if ([coder containsValueForKey:@"upVector"])
    {
      *&v8 = SCNDecodeVector3(coder, @"upVector");
    }

    else
    {
      v8 = 0.0;
      LODWORD(v7) = 1.0;
      v9 = 0.0;
    }

    [(SCNLookAtConstraint *)v4 setUpVector:v8, v7, v9];
    if ([coder containsValueForKey:@"localFront"])
    {
      *&v11 = SCNDecodeVector3(coder, @"localFront");
      [(SCNLookAtConstraint *)v4 setLocalFront:v11];
    }

    else
    {
      LODWORD(v10) = -1.0;
      [(SCNLookAtConstraint *)v4 setUpVector:0.0, 0.0, v10];
    }

    [(SCNLookAtConstraint *)v4 upVector];
    v18.x = 0.0;
    v18.y = 0.0;
    v18.z = 0.0;
    if (SCNVector3EqualToVector3(v16, v18))
    {
      LODWORD(v12) = 1.0;
      [(SCNLookAtConstraint *)v4 setUpVector:0.0, v12, 0.0];
    }

    [(SCNLookAtConstraint *)v4 localFront];
    v19.x = 0.0;
    v19.y = 0.0;
    v19.z = 0.0;
    if (SCNVector3EqualToVector3(v17, v19))
    {
      LODWORD(v13) = -1.0;
      [(SCNLookAtConstraint *)v4 setLocalFront:0.0, 0.0, v13];
    }

    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

@end