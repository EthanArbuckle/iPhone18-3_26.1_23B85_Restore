@interface SCNIKConstraint
+ (SCNIKConstraint)inverseKinematicsConstraintWithChainRootNode:(SCNNode *)chainRootNode;
- (CGFloat)maxAllowedRotationAngleForJoint:(SCNNode *)node;
- (SCNIKConstraint)init;
- (SCNIKConstraint)initWithChainRootNode:(SCNNode *)chainRootNode;
- (SCNIKConstraint)initWithCoder:(id)a3;
- (SCNVector3)targetPosition;
- (id)copyWithZone:(_NSZone *)a3;
- (id)jointForNode:(id)a3;
- (void)_customDecodingOfSCNIKConstraint:(id)a3;
- (void)_customEncodingOfSCNIKConstraint:(id)a3;
- (void)_didDecodeSCNIKConstraint:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setChainRootNode:(id)a3;
- (void)setMaxAllowedRotationAngle:(CGFloat)angle forJoint:(SCNNode *)node;
- (void)setTargetPosition:(SCNVector3)targetPosition;
@end

@implementation SCNIKConstraint

- (SCNIKConstraint)init
{
  v4.receiver = self;
  v4.super_class = SCNIKConstraint;
  v2 = [(SCNConstraint *)&v4 init];
  if (v2)
  {
    v2->super._constraintRef = C3DConstraintCreateIK();
    v2->_jointsPerNode = [MEMORY[0x277CBEB38] dictionary];
  }

  return v2;
}

- (void)dealloc
{
  self->_chainRootNode = 0;

  v3.receiver = self;
  v3.super_class = SCNIKConstraint;
  [(SCNConstraint *)&v3 dealloc];
}

+ (SCNIKConstraint)inverseKinematicsConstraintWithChainRootNode:(SCNNode *)chainRootNode
{
  v3 = [[a1 alloc] initWithChainRootNode:chainRootNode];

  return v3;
}

- (SCNIKConstraint)initWithChainRootNode:(SCNNode *)chainRootNode
{
  v4 = [(SCNIKConstraint *)self init];
  v5 = v4;
  if (v4)
  {
    [(SCNIKConstraint *)v4 setChainRootNode:chainRootNode];
  }

  return v5;
}

- (void)setChainRootNode:(id)a3
{
  if (self->_chainRootNode != a3)
  {
    v8[10] = v3;
    v8[11] = v4;
    self->_chainRootNode = a3;
    v7 = [(SCNConstraint *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __36__SCNIKConstraint_setChainRootNode___block_invoke;
    v8[3] = &unk_2782FC950;
    v8[4] = self;
    v8[5] = a3;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v8];
  }
}

void __36__SCNIKConstraint_setChainRootNode___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = [*(a1 + 40) nodeRef];

  C3DConstraintIKSetChainRoot(v1, v2);
}

- (SCNVector3)targetPosition
{
  x = self->_ikTarget.x;
  y = self->_ikTarget.y;
  z = self->_ikTarget.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setTargetPosition:(SCNVector3)targetPosition
{
  z = targetPosition.z;
  y = targetPosition.y;
  x = targetPosition.x;
  self->_ikTarget = targetPosition;
  v7 = [(SCNConstraint *)self sceneRef];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__SCNIKConstraint_setTargetPosition___block_invoke;
  v8[3] = &unk_2782FB848;
  v8[4] = self;
  v9 = x;
  v10 = y;
  v11 = z;
  [SCNTransaction postCommandWithContext:v7 object:self key:@"targetPosition" applyBlock:v8];
}

void __37__SCNIKConstraint_setTargetPosition___block_invoke(uint64_t a1, __n128 a2)
{
  a2.n128_u64[0] = *(a1 + 40);
  a2.n128_u32[2] = *(a1 + 48);
  C3DConstraintIKSetTarget(*(*(a1 + 32) + 8), a2);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [(SCNIKConstraint *)self targetPosition];
  [v4 setTargetPosition:?];
  [v4 setChainRootNode:{-[SCNIKConstraint chainRootNode](self, "chainRootNode")}];
  [(SCNConstraint *)self copyTo:v4];
  return v4;
}

- (id)jointForNode:(id)a3
{
  v5 = [MEMORY[0x277CCAE60] valueWithPointer:?];
  v6 = [(NSMutableDictionary *)self->_jointsPerNode objectForKey:v5];
  if (!v6)
  {
    v6 = objc_alloc_init(SCNIKJoint);
    [(SCNIKJoint *)v6 setJoint:a3];
    [(SCNIKJoint *)v6 setMaxAllowedRotationAngle:180.0];
    [(NSMutableDictionary *)self->_jointsPerNode setObject:v6 forKey:v5];
  }

  return v6;
}

- (void)setMaxAllowedRotationAngle:(CGFloat)angle forJoint:(SCNNode *)node
{
  [-[SCNIKConstraint jointForNode:](self "jointForNode:{"setMaxAllowedRotationAngle:", angle}")];
  v7 = [(SCNConstraint *)self sceneRef];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__SCNIKConstraint_setMaxAllowedRotationAngle_forJoint___block_invoke;
  v8[3] = &unk_2782FB630;
  *&v8[6] = angle;
  v8[4] = self;
  v8[5] = node;
  [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v8];
}

void __55__SCNIKConstraint_setMaxAllowedRotationAngle_forJoint___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(a1 + 48) / 180.0 * 3.14159265;
  v3 = [*(a1 + 40) nodeRef];

  C3DConstraintIKSetMaxRotationForNode(v1, v3, v2);
}

- (CGFloat)maxAllowedRotationAngleForJoint:(SCNNode *)node
{
  v3 = [(SCNIKConstraint *)self jointForNode:node];
  if (!v3)
  {
    return 180.0;
  }

  [v3 maxAllowedRotationAngle];
  return result;
}

- (void)_didDecodeSCNIKConstraint:(id)a3
{
  v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"node%d", 0)}];
  if (v5)
  {
    v6 = v5;
    do
    {
      [a3 decodeFloatForKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"angle%d", 0)}];
      [(SCNIKConstraint *)self setMaxAllowedRotationAngle:v6 forJoint:v7];
      v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"node%d", 0)}];
    }

    while (v6);
  }
}

- (void)_customEncodingOfSCNIKConstraint:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [(NSMutableDictionary *)self->_jointsPerNode allKeys];
  v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [(NSMutableDictionary *)self->_jointsPerNode objectForKey:*(*(&v17 + 1) + 8 * v9)];
        [v10 maxAllowedRotationAngle];
        v12 = v11;
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"angle%d", v7];
        *&v14 = v12;
        [a3 encodeFloat:v13 forKey:v14];
        v15 = [v10 joint];
        [a3 encodeObject:v15 forKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"node%d", v7)}];
        v7 = (v7 + 1);
        ++v9;
      }

      while (v6 != v9);
      v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  SCNEncodeVector3(a3, @"ikTarget", self->_ikTarget.x, self->_ikTarget.y, self->_ikTarget.z);
}

- (void)_customDecodingOfSCNIKConstraint:(id)a3
{
  self->super._constraintRef = C3DConstraintCreateIK();
  *&v5 = SCNDecodeVector3(a3, @"ikTarget");
  [(SCNIKConstraint *)self setTargetPosition:v5];

  [(SCNConstraint *)self finalizeDecodeConstraint:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = SCNIKConstraint;
  [(SCNConstraint *)&v6 encodeWithCoder:?];
  [(SCNIKConstraint *)self _customEncodingOfSCNIKConstraint:a3];
  chainRootNode = self->_chainRootNode;
  if (chainRootNode)
  {
    [a3 encodeObject:chainRootNode forKey:@"chainRootNode"];
  }
}

- (SCNIKConstraint)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = SCNIKConstraint;
  v4 = [(SCNConstraint *)&v7 initWithCoder:?];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    [(SCNIKConstraint *)v4 _customDecodingOfSCNIKConstraint:a3];
    -[SCNIKConstraint setChainRootNode:](v4, "setChainRootNode:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"chainRootNode"]);
    [(SCNIKConstraint *)v4 _didDecodeSCNIKConstraint:a3];
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

@end