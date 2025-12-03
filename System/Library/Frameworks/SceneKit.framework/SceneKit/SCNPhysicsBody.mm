@interface SCNPhysicsBody
+ (SCNPhysicsBody)bodyWithType:(SCNPhysicsBodyType)type shape:(SCNPhysicsShape *)shape;
+ (SCNPhysicsBody)dynamicBody;
+ (SCNPhysicsBody)kinematicBody;
+ (SCNPhysicsBody)staticBody;
- (BOOL)isResting;
- (SCNPhysicsBody)initWithCoder:(id)coder;
- (SCNPhysicsBody)initWithType:(int64_t)type shape:(id)shape;
- (SCNVector3)angularVelocityFactor;
- (SCNVector3)centerOfMassOffset;
- (SCNVector3)momentOfInertia;
- (SCNVector3)velocity;
- (SCNVector3)velocityFactor;
- (SCNVector4)angularVelocity;
- (btCollisionShape)_shapeHandleWithShape:(id)shape owner:(id)owner;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_activate;
- (void)_createBody;
- (void)_removeOwner;
- (void)_setOwner:(id)owner;
- (void)applyForce:(SCNVector3)direction atPosition:(SCNVector3)position impulse:(BOOL)impulse;
- (void)applyForce:(SCNVector3)direction impulse:(BOOL)impulse;
- (void)applyTorque:(SCNVector4)torque impulse:(BOOL)impulse;
- (void)clearAllForces;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)moveToPosition:(SCNVector3)position;
- (void)moveToTransform:(SCNMatrix4 *)transform;
- (void)resetToTransform:(SCNMatrix4 *)transform;
- (void)resetTransform;
- (void)rotateToAxisAngle:(SCNVector4)angle;
- (void)setAffectedByGravity:(BOOL)affectedByGravity;
- (void)setAllowsResting:(BOOL)allowsResting;
- (void)setAngularDamping:(CGFloat)angularDamping;
- (void)setAngularRestingThreshold:(CGFloat)angularRestingThreshold;
- (void)setAngularVelocity:(SCNVector4)angularVelocity;
- (void)setAngularVelocityFactor:(SCNVector3)angularVelocityFactor;
- (void)setCategoryBitMask:(NSUInteger)categoryBitMask;
- (void)setCenterOfMassOffset:(SCNVector3)centerOfMassOffset;
- (void)setCharge:(CGFloat)charge;
- (void)setCollisionBitMask:(NSUInteger)collisionBitMask;
- (void)setContactTestBitMask:(NSUInteger)contactTestBitMask;
- (void)setContinuousCollisionDetectionThreshold:(CGFloat)continuousCollisionDetectionThreshold;
- (void)setDamping:(CGFloat)damping;
- (void)setFriction:(CGFloat)friction;
- (void)setLinearRestingThreshold:(CGFloat)linearRestingThreshold;
- (void)setMass:(CGFloat)mass;
- (void)setMomentOfInertia:(SCNVector3)momentOfInertia;
- (void)setPhysicsShape:(SCNPhysicsShape *)physicsShape;
- (void)setResting:(BOOL)resting;
- (void)setRestitution:(CGFloat)restitution;
- (void)setRollingFriction:(CGFloat)rollingFriction;
- (void)setType:(SCNPhysicsBodyType)type;
- (void)setUsesDefaultMomentOfInertia:(BOOL)usesDefaultMomentOfInertia;
- (void)setVelocity:(SCNVector3)velocity;
- (void)setVelocityFactor:(SCNVector3)velocityFactor;
- (void)updateGlobalScale:(double)scale;
@end

@implementation SCNPhysicsBody

- (SCNPhysicsBody)initWithType:(int64_t)type shape:(id)shape
{
  v16.receiver = self;
  v16.super_class = SCNPhysicsBody;
  v6 = [(SCNPhysicsBody *)&v16 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = type;
    v6->_physicsShape = shape;
    v8 = 0.0;
    if (type == 1)
    {
      v8 = 1.0;
    }

    v7->_mass = v8;
    *&v7->_charge = xmmword_21C2A1E40;
    *&v7->_restitution = xmmword_21C2A1E50;
    v7->_damping = 0.1;
    v7->_angularDamping = 0.1;
    __asm { FMOV            V0.4S, #1.0 }

    *&v7->_velocityFactor.x = _Q0;
    __asm { FMOV            V0.2S, #1.0 }

    *&v7->_angularVelocityFactor.y = _Q0;
    *&v7->_linearRestingThreshold = vdupq_n_s64(0x3FB999999999999AuLL);
    v7->_allowsResting = 1;
    v7->_ignoreGravity = 0;
    *&_Q0 = vdup_n_s32(type == 0);
    v14.i64[0] = _Q0;
    v14.i64[1] = DWORD1(_Q0);
    *&v7->_categoryBitMask = vbslq_s8(vcltzq_s64(vshlq_n_s64(v14, 0x3FuLL)), xmmword_21C2A1E60, xmmword_21C281170);
    v7->_contactTestBitMask = 0;
    v7->_body = [(SCNPhysicsBody *)v7 _createBody];
    v7->_isDefaultShape = shape == 0;
  }

  return v7;
}

- (void)dealloc
{
  body = self->_body;
  if (body)
  {
    v4 = body[67];
    if (!v4 || ((*(*v4 + 8))(body[67], a2), (body = self->_body) != 0))
    {
      (*(*body + 16))(body, a2);
    }
  }

  v5.receiver = self;
  v5.super_class = SCNPhysicsBody;
  [(SCNPhysicsBody *)&v5 dealloc];
}

+ (SCNPhysicsBody)bodyWithType:(SCNPhysicsBodyType)type shape:(SCNPhysicsShape *)shape
{
  v4 = [objc_alloc(objc_opt_class()) initWithType:type shape:shape];

  return v4;
}

+ (SCNPhysicsBody)staticBody
{
  v2 = objc_opt_class();

  return [v2 bodyWithType:0 shape:0];
}

+ (SCNPhysicsBody)dynamicBody
{
  v2 = objc_opt_class();

  return [v2 bodyWithType:1 shape:0];
}

+ (SCNPhysicsBody)kinematicBody
{
  v2 = objc_opt_class();

  return [v2 bodyWithType:2 shape:0];
}

- (void)setType:(SCNPhysicsBodyType)type
{
  self->_type = type;
  v5 = vmovn_s64(vceqq_s64(vdupq_n_s64(type), xmmword_21C2816A0));
  v11 = v5.i8[0];
  v6 = vdup_lane_s32(v5, 1);
  v7.i64[0] = v6.i32[0];
  v7.i64[1] = v6.i32[1];
  *&self->_categoryBitMask = vbslq_s8(v7, xmmword_21C2A1E60, xmmword_21C281170);
  sceneRef = [(SCNNode *)self->_node sceneRef];
  node = self->_node;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __26__SCNPhysicsBody_setType___block_invoke;
  v12[3] = &unk_2782FB7D0;
  v12[4] = self;
  v12[5] = type;
  [SCNTransaction postCommandWithContext:sceneRef object:node applyBlock:v12];
  v10 = 0.0;
  if (v11)
  {
    v10 = 1.0;
  }

  [(SCNPhysicsBody *)self setMass:v10];
}

btCollisionObject *__26__SCNPhysicsBody_setType___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 232);
  if (result)
  {
    btCollisionObject::forceActivationState(result, 1);
    __modifyCollisionFlagsFromType(*(*(a1 + 32) + 232), *(a1 + 40));
    v3 = *(a1 + 32);
    if (*(v3 + 224))
    {
      v4 = 1;
    }

    else
    {
      v4 = 4;
    }

    btCollisionObject::setActivationState(*(v3 + 232), v4);
    v5 = *(*(a1 + 32) + 232);

    return btCollisionObject::activate(v5, 0);
  }

  return result;
}

- (void)setMass:(CGFloat)mass
{
  v11 = *MEMORY[0x277D85DE8];
  self->_mass = mass;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3020000000;
  *&v5 = *&self->_momentOfInertia.x;
  DWORD2(v5) = LODWORD(self->_momentOfInertia.z);
  v10 = v5;
  sceneRef = [(SCNNode *)self->_node sceneRef];
  node = self->_node;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __26__SCNPhysicsBody_setMass___block_invoke;
  v8[3] = &unk_2782FE1C0;
  *&v8[6] = mass;
  v8[4] = self;
  v8[5] = v9;
  [SCNTransaction postCommandWithContext:sceneRef object:node applyBlock:v8];
  _Block_object_dispose(v9, 8);
}

void __26__SCNPhysicsBody_setMass___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 232);
  if (v3)
  {
    if (*(v2 + 168) == 1)
    {
      v4 = (*(*(a1 + 40) + 8) + 32);
    }

    else
    {
      v4 = 0;
    }

    __updateMassAndLocalInertia(v3, *(v3 + 208), v4, *(a1 + 48));
  }
}

- (void)setMomentOfInertia:(SCNVector3)momentOfInertia
{
  v11 = *MEMORY[0x277D85DE8];
  self->_momentOfInertia = momentOfInertia;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3020000000;
  y = momentOfInertia.y;
  z = momentOfInertia.z;
  v10 = *&momentOfInertia.x;
  sceneRef = [(SCNNode *)self->_node sceneRef];
  node = self->_node;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__SCNPhysicsBody_setMomentOfInertia___block_invoke;
  v8[3] = &unk_2782FE1E8;
  v8[4] = self;
  v8[5] = v9;
  [SCNTransaction postCommandWithContext:sceneRef object:node applyBlock:v8];
  _Block_object_dispose(v9, 8);
}

void __37__SCNPhysicsBody_setMomentOfInertia___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 232);
  if (v3)
  {
    if (*(v2 + 168) == 1)
    {
      v4 = (*(*(a1 + 40) + 8) + 32);
    }

    else
    {
      v4 = 0;
    }

    __updateMassAndLocalInertia(v3, *(v3 + 208), v4, *(v2 + 16));
  }
}

- (SCNVector3)momentOfInertia
{
  x = self->_momentOfInertia.x;
  y = self->_momentOfInertia.y;
  z = self->_momentOfInertia.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setCenterOfMassOffset:(SCNVector3)centerOfMassOffset
{
  self->_centerOfMassOffset = centerOfMassOffset;
  y = centerOfMassOffset.y;
  z = centerOfMassOffset.z;
  v12 = *&centerOfMassOffset.x;
  mass = self->_mass;
  *&centerOfMassOffset.x = *&self->_momentOfInertia.x;
  v7 = self->_momentOfInertia.z;
  v11 = *&centerOfMassOffset.x;
  explicitMomentOfInertia = self->_explicitMomentOfInertia;
  sceneRef = [(SCNNode *)self->_node sceneRef];
  node = self->_node;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __40__SCNPhysicsBody_setCenterOfMassOffset___block_invoke;
  v13[3] = &unk_2782FE210;
  selfCopy = self;
  v17 = mass;
  v18 = explicitMomentOfInertia;
  v14 = v12;
  v15 = v11;
  [SCNTransaction postCommandWithContext:sceneRef object:node applyBlock:v13];
}

void __40__SCNPhysicsBody_setCenterOfMassOffset___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 64) + 232);
  if (v1)
  {
    v3 = *(v1 + 536);
    if (v3)
    {
      v3[3] = *(a1 + 32);
      v4 = *(*(a1 + 64) + 232);
      *(v4 + 536) = v3;
      (*(*v3 + 16))(v3, v4 + 16);
      v7 = *(*(a1 + 64) + 232);
      v8 = *(v7 + 208);
      v9 = *(a1 + 72);
      if (*(a1 + 80))
      {
        v10 = (a1 + 48);
      }

      else
      {
        v10 = 0;
      }

      v11 = *(a1 + 32);
      *&v12 = *(a1 + 32);
      *(&v12 + 1) = DWORD2(v11);
      __setCollisionShape(v7, v8, v10, &v12, v9, *&v11, v5, v6);
    }
  }
}

- (SCNVector3)centerOfMassOffset
{
  x = self->_centerOfMassOffset.x;
  y = self->_centerOfMassOffset.y;
  z = self->_centerOfMassOffset.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setUsesDefaultMomentOfInertia:(BOOL)usesDefaultMomentOfInertia
{
  v10 = *MEMORY[0x277D85DE8];
  self->_explicitMomentOfInertia = !usesDefaultMomentOfInertia;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3020000000;
  *&v3 = *&self->_momentOfInertia.x;
  DWORD2(v3) = LODWORD(self->_momentOfInertia.z);
  v9 = v3;
  sceneRef = [(SCNNode *)self->_node sceneRef];
  node = self->_node;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SCNPhysicsBody_setUsesDefaultMomentOfInertia___block_invoke;
  v7[3] = &unk_2782FE1E8;
  v7[4] = self;
  v7[5] = v8;
  [SCNTransaction postCommandWithContext:sceneRef object:node applyBlock:v7];
  _Block_object_dispose(v8, 8);
}

void __48__SCNPhysicsBody_setUsesDefaultMomentOfInertia___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 232);
  if (v3)
  {
    if (*(v2 + 168) == 1)
    {
      v4 = (*(*(a1 + 40) + 8) + 32);
    }

    else
    {
      v4 = 0;
    }

    __updateMassAndLocalInertia(v3, *(v3 + 208), v4, *(v2 + 16));
  }
}

- (void)setCharge:(CGFloat)charge
{
  self->_charge = charge;
  sceneRef = [(SCNNode *)self->_node sceneRef];
  node = self->_node;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__SCNPhysicsBody_setCharge___block_invoke;
  v7[3] = &unk_2782FB7D0;
  v7[4] = self;
  *&v7[5] = charge;
  [SCNTransaction postCommandWithContext:sceneRef object:node applyBlock:v7];
}

float __28__SCNPhysicsBody_setCharge___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 232);
  if (v1)
  {
    result = *(a1 + 40);
    *(v1 + 532) = result;
  }

  return result;
}

- (BOOL)isResting
{
  body = self->_body;
  if (!body)
  {
    return 0;
  }

  v3 = body[61];
  return v3 == 2 || v3 == 5;
}

- (void)updateGlobalScale:(double)scale
{
  v3 = *(self->_body + 67);
  if (v3)
  {
    scaleCopy = scale;
    *(v3 + 64) = scaleCopy;
  }
}

- (void)setAllowsResting:(BOOL)allowsResting
{
  self->_allowsResting = allowsResting;
  sceneRef = [(SCNNode *)self->_node sceneRef];
  node = self->_node;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__SCNPhysicsBody_setAllowsResting___block_invoke;
  v7[3] = &unk_2782FB7F8;
  v7[4] = self;
  v8 = allowsResting;
  [SCNTransaction postCommandWithContext:sceneRef object:node applyBlock:v7];
}

btCollisionObject *__35__SCNPhysicsBody_setAllowsResting___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 232);
  if (result)
  {
    btCollisionObject::activate(result, 0);
    v3 = *(*(a1 + 32) + 232);
    if (*(a1 + 40))
    {
      v4 = 1;
    }

    else
    {
      v4 = 4;
    }

    return btCollisionObject::setActivationState(v3, v4);
  }

  return result;
}

- (void)setFriction:(CGFloat)friction
{
  self->_friction = friction;
  sceneRef = [(SCNNode *)self->_node sceneRef];
  node = self->_node;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __30__SCNPhysicsBody_setFriction___block_invoke;
  v7[3] = &unk_2782FB7D0;
  v7[4] = self;
  *&v7[5] = friction;
  [SCNTransaction postCommandWithContext:sceneRef object:node applyBlock:v7];
}

float __30__SCNPhysicsBody_setFriction___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 232);
  if (v1)
  {
    result = *(a1 + 40);
    *(v1 + 252) = result;
  }

  return result;
}

- (void)setRestitution:(CGFloat)restitution
{
  self->_restitution = restitution;
  sceneRef = [(SCNNode *)self->_node sceneRef];
  node = self->_node;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__SCNPhysicsBody_setRestitution___block_invoke;
  v7[3] = &unk_2782FB7D0;
  v7[4] = self;
  *&v7[5] = restitution;
  [SCNTransaction postCommandWithContext:sceneRef object:node applyBlock:v7];
}

float __33__SCNPhysicsBody_setRestitution___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 232);
  if (v1)
  {
    result = *(a1 + 40);
    *(v1 + 256) = result;
  }

  return result;
}

- (void)setRollingFriction:(CGFloat)rollingFriction
{
  self->_rollingFriction = rollingFriction;
  sceneRef = [(SCNNode *)self->_node sceneRef];
  node = self->_node;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__SCNPhysicsBody_setRollingFriction___block_invoke;
  v7[3] = &unk_2782FB7D0;
  v7[4] = self;
  *&v7[5] = rollingFriction;
  [SCNTransaction postCommandWithContext:sceneRef object:node applyBlock:v7];
}

float __37__SCNPhysicsBody_setRollingFriction___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 232);
  if (v1)
  {
    result = *(a1 + 40);
    *(v1 + 260) = result;
  }

  return result;
}

- (void)setDamping:(CGFloat)damping
{
  self->_damping = damping;
  sceneRef = [(SCNNode *)self->_node sceneRef];
  node = self->_node;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__SCNPhysicsBody_setDamping___block_invoke;
  v7[3] = &unk_2782FB7D0;
  v7[4] = self;
  *&v7[5] = damping;
  [SCNTransaction postCommandWithContext:sceneRef object:node applyBlock:v7];
}

int8x8_t __29__SCNPhysicsBody_setDamping___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 232);
  if (v2)
  {
    v3 = *(a1 + 40);
    *&v3 = v3;
    return btRigidBody::setDamping(v2, *&v3, *&v3);
  }

  return result;
}

- (void)setAngularDamping:(CGFloat)angularDamping
{
  self->_angularDamping = angularDamping;
  sceneRef = [(SCNNode *)self->_node sceneRef];
  node = self->_node;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__SCNPhysicsBody_setAngularDamping___block_invoke;
  v7[3] = &unk_2782FB7D0;
  v7[4] = self;
  *&v7[5] = angularDamping;
  [SCNTransaction postCommandWithContext:sceneRef object:node applyBlock:v7];
}

int8x8_t __36__SCNPhysicsBody_setAngularDamping___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 232);
  if (v3)
  {
    v4 = *(v2 + 80);
    *&v4 = v4;
    v5 = *(a1 + 40);
    return btRigidBody::setDamping(v3, *&v4, v5);
  }

  return result;
}

- (void)setLinearRestingThreshold:(CGFloat)linearRestingThreshold
{
  self->_linearRestingThreshold = linearRestingThreshold;
  angularRestingThreshold = self->_angularRestingThreshold;
  sceneRef = [(SCNNode *)self->_node sceneRef];
  node = self->_node;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__SCNPhysicsBody_setLinearRestingThreshold___block_invoke;
  v8[3] = &unk_2782FE238;
  v8[4] = self;
  *&v8[5] = linearRestingThreshold;
  *&v8[6] = angularRestingThreshold;
  [SCNTransaction postCommandWithContext:sceneRef object:node applyBlock:v8];
}

float32x2_t __44__SCNPhysicsBody_setLinearRestingThreshold___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 232);
  if (v1)
  {
    result = vcvt_f32_f64(*(a1 + 40));
    *(v1 + 524) = result;
  }

  return result;
}

- (void)setAngularRestingThreshold:(CGFloat)angularRestingThreshold
{
  self->_angularRestingThreshold = angularRestingThreshold;
  linearRestingThreshold = self->_linearRestingThreshold;
  sceneRef = [(SCNNode *)self->_node sceneRef];
  node = self->_node;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__SCNPhysicsBody_setAngularRestingThreshold___block_invoke;
  v8[3] = &unk_2782FE238;
  v8[4] = self;
  *&v8[5] = linearRestingThreshold;
  *&v8[6] = angularRestingThreshold;
  [SCNTransaction postCommandWithContext:sceneRef object:node applyBlock:v8];
}

float32x2_t __45__SCNPhysicsBody_setAngularRestingThreshold___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 232);
  if (v1)
  {
    result = vcvt_f32_f64(*(a1 + 40));
    *(v1 + 524) = result;
  }

  return result;
}

- (btCollisionShape)_shapeHandleWithShape:(id)shape owner:(id)owner
{
  if ([shape referenceObject])
  {

    return [shape _handle];
  }

  else
  {
    [shape setReferenceObject:owner];
    _handle = [shape _handle];
    [shape setReferenceObject:0];
    return _handle;
  }
}

- (void)setPhysicsShape:(SCNPhysicsShape *)physicsShape
{
  v3 = self->_physicsShape;
  if (v3 != physicsShape)
  {
    self->_isDefaultShape = 0;
    self->_physicsShape = physicsShape;
    mass = self->_mass;
    *&v7 = *&self->_momentOfInertia.x;
    DWORD2(v7) = LODWORD(self->_momentOfInertia.z);
    v12 = v7;
    *&v7 = *&self->_centerOfMassOffset.x;
    explicitMomentOfInertia = self->_explicitMomentOfInertia;
    *(&v7 + 1) = LODWORD(self->_centerOfMassOffset.z);
    v11 = v7;
    sceneRef = [(SCNNode *)self->_node sceneRef];
    node = self->_node;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3321888768;
    v13[2] = __34__SCNPhysicsBody_setPhysicsShape___block_invoke;
    v13[3] = &unk_282DC4FF0;
    selfCopy = self;
    v17 = physicsShape;
    v19 = mass;
    v20 = explicitMomentOfInertia;
    v14 = v12;
    v15 = v11;
    v18 = v3;
    [SCNTransaction postCommandWithContext:sceneRef object:node applyBlock:v13];
  }
}

void __34__SCNPhysicsBody_setPhysicsShape___block_invoke(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = *(a1 + 64);
  if (v3[29])
  {
    DefaultShapeForNode = [v3 _shapeHandleWithShape:*(a1 + 72) owner:{objc_msgSend(*(a1 + 64), "_owner")}];
    if (DefaultShapeForNode || (v11 = *(*v2 + 8)) != 0 && (DefaultShapeForNode = C3DPhysicsShapeGetDefaultShapeForNode([v11 nodeRef])) != 0)
    {
      v7 = DefaultShapeForNode;
      v8 = *(*(a1 + 64) + 232);
      v9 = *(a1 + 88);
      if (*(a1 + 96))
      {
        v10 = (a1 + 32);
      }

      else
      {
        v10 = 0;
      }

      v13 = *(a1 + 48);
      __setCollisionShape(v8, v7, v10, &v13, v9, *&v13, v5, v6);
    }

    else
    {
      v12 = scn_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __34__SCNPhysicsBody_setPhysicsShape___block_invoke_cold_1();
      }
    }
  }
}

- (void)setCategoryBitMask:(NSUInteger)categoryBitMask
{
  self->_categoryBitMask = categoryBitMask;
  collisionBitMask = self->_collisionBitMask;
  contactTestBitMask = self->_contactTestBitMask;
  v7 = [-[SCNNode scene](self->_node "scene")];
  if (v7)
  {
    v8 = v7;
    sceneRef = [(SCNNode *)self->_node sceneRef];
    node = self->_node;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __37__SCNPhysicsBody_setCategoryBitMask___block_invoke;
    v11[3] = &unk_2782FE260;
    v11[4] = self;
    v11[5] = v8;
    v11[6] = categoryBitMask;
    v11[7] = collisionBitMask;
    v11[8] = contactTestBitMask;
    [SCNTransaction postCommandWithContext:sceneRef object:node applyBlock:v11];
  }
}

void __37__SCNPhysicsBody_setCategoryBitMask___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 232);
  if (v1)
  {
    v2 = *(v1 + 200);
    if (v2)
    {
      if (*(v2 + 8) != *(a1 + 48))
      {
        v4 = [*(a1 + 40) _handle];
        v5 = *(*(a1 + 32) + 232);
        v7 = *(a1 + 48);
        v6 = *(a1 + 56);
        v8 = *(a1 + 64);

        _recreateProxy(v4, v5, v6, v7, v8);
      }
    }
  }
}

- (void)setCollisionBitMask:(NSUInteger)collisionBitMask
{
  self->_collisionBitMask = collisionBitMask;
  categoryBitMask = self->_categoryBitMask;
  contactTestBitMask = self->_contactTestBitMask;
  v7 = [-[SCNNode scene](self->_node "scene")];
  if (v7)
  {
    v8 = v7;
    sceneRef = [(SCNNode *)self->_node sceneRef];
    node = self->_node;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __38__SCNPhysicsBody_setCollisionBitMask___block_invoke;
    v11[3] = &unk_2782FE260;
    v11[4] = self;
    v11[5] = v8;
    v11[6] = collisionBitMask;
    v11[7] = categoryBitMask;
    v11[8] = contactTestBitMask;
    [SCNTransaction postCommandWithContext:sceneRef object:node applyBlock:v11];
  }
}

void __38__SCNPhysicsBody_setCollisionBitMask___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 232);
  if (v1)
  {
    v2 = *(v1 + 200);
    if (v2)
    {
      if (*(v2 + 16) != *(a1 + 48))
      {
        v4 = [*(a1 + 40) _handle];
        v5 = *(*(a1 + 32) + 232);
        v6 = *(a1 + 48);
        v7 = *(a1 + 56);
        v8 = *(a1 + 64);

        _recreateProxy(v4, v5, v6, v7, v8);
      }
    }
  }
}

- (void)setContactTestBitMask:(NSUInteger)contactTestBitMask
{
  self->_contactTestBitMask = contactTestBitMask;
  categoryBitMask = self->_categoryBitMask;
  collisionBitMask = self->_collisionBitMask;
  v7 = [-[SCNNode scene](self->_node "scene")];
  if (v7)
  {
    v8 = v7;
    sceneRef = [(SCNNode *)self->_node sceneRef];
    node = self->_node;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __40__SCNPhysicsBody_setContactTestBitMask___block_invoke;
    v11[3] = &unk_2782FE260;
    v11[4] = self;
    v11[5] = v8;
    v11[6] = contactTestBitMask;
    v11[7] = collisionBitMask;
    v11[8] = categoryBitMask;
    [SCNTransaction postCommandWithContext:sceneRef object:node applyBlock:v11];
  }
}

void __40__SCNPhysicsBody_setContactTestBitMask___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 232);
  if (v1)
  {
    v2 = *(v1 + 200);
    if (v2)
    {
      if (*(v2 + 24) != *(a1 + 48))
      {
        v4 = [*(a1 + 40) _handle];
        v5 = *(*(a1 + 32) + 232);
        v6 = *(a1 + 56);
        v7 = *(a1 + 64);
        v8 = *(a1 + 48);

        _recreateProxy(v4, v5, v6, v7, v8);
      }
    }
  }
}

- (void)setContinuousCollisionDetectionThreshold:(CGFloat)continuousCollisionDetectionThreshold
{
  self->_continuousCollisionDetectionThreshold = continuousCollisionDetectionThreshold;
  sceneRef = [(SCNNode *)self->_node sceneRef];
  node = self->_node;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__SCNPhysicsBody_setContinuousCollisionDetectionThreshold___block_invoke;
  v7[3] = &unk_2782FB7D0;
  v7[4] = self;
  *&v7[5] = continuousCollisionDetectionThreshold;
  [SCNTransaction postCommandWithContext:sceneRef object:node applyBlock:v7];
}

uint64_t __59__SCNPhysicsBody_setContinuousCollisionDetectionThreshold___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 232);
  if (v1)
  {
    v2 = *(result + 40);
    *(v1 + 288) = v2;
    return __updateCCDRadiusIfNeeded(*(*(result + 32) + 232));
  }

  return result;
}

- (void)setVelocity:(SCNVector3)velocity
{
  z = velocity.z;
  y = velocity.y;
  x = velocity.x;
  self->_velocity = velocity;
  sceneRef = [(SCNNode *)self->_node sceneRef];
  node = self->_node;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __30__SCNPhysicsBody_setVelocity___block_invoke;
  v9[3] = &unk_2782FB848;
  v9[4] = self;
  v10 = x;
  v11 = y;
  v12 = z;
  [SCNTransaction postCommandWithContext:sceneRef object:node applyBlock:v9];
}

float __30__SCNPhysicsBody_setVelocity___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 232);
  if (v2)
  {
    btCollisionObject::activate(v2, 0);
    *&v3 = *(a1 + 40);
    *(&v3 + 1) = *(a1 + 48);
    *(*(*(a1 + 32) + 232) + 352) = v3;
  }

  return *&v3;
}

- (SCNVector3)velocity
{
  if (+[SCNTransaction immediateMode]&& (body = self->_body) != 0)
  {
    p_velocity = (body + 352);
    p_y = (body + 356);
    p_z = (body + 360);
  }

  else
  {
    p_velocity = &self->_velocity;
    p_y = &self->_velocity.y;
    p_z = &self->_velocity.z;
  }

  v7 = *p_z;
  v8 = *p_y;
  x = p_velocity->x;
  result.z = v7;
  result.y = v8;
  result.x = x;
  return result;
}

- (void)setAffectedByGravity:(BOOL)affectedByGravity
{
  self->_ignoreGravity = !affectedByGravity;
  node = self->_node;
  if (node)
  {
    v6 = [-[SCNNode scene](node "scene")];
    node = self->_node;
  }

  else
  {
    v6 = 0;
  }

  sceneRef = [(SCNNode *)node sceneRef];
  v8 = self->_node;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__SCNPhysicsBody_setAffectedByGravity___block_invoke;
  v9[3] = &unk_2782FE288;
  v10 = affectedByGravity;
  v9[4] = self;
  v9[5] = v6;
  [SCNTransaction postCommandWithContext:sceneRef object:v8 applyBlock:v9];
}

double __39__SCNPhysicsBody_setAffectedByGravity___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 232);
  if (v1)
  {
    v3 = *(a1 + 48);
    *(v1 + 576) = v3 ^ 1;
    if (v3 == 1)
    {
      [*(a1 + 40) gravity];
      v12 = v5;
      v13 = v4;
      v14 = v6;
      [*(a1 + 40) scale];
      *&v7 = v7;
      v8 = *(*(a1 + 32) + 232);
      v9 = v13;
      v9.i32[1] = v12;
      v9.i32[2] = v14;
      v10 = vmulq_n_f32(v9, 1.0 / *&v7);
      v10.var0.var0[3] = 0.0;
      v15 = v10;
    }

    else
    {
      v8 = *(*(a1 + 32) + 232);
      v15 = 0;
    }

    *&result = btRigidBody::setGravity(v8, &v15).n128_u64[0];
  }

  return result;
}

- (void)setAngularVelocity:(SCNVector4)angularVelocity
{
  w = angularVelocity.w;
  z = angularVelocity.z;
  y = angularVelocity.y;
  x = angularVelocity.x;
  self->_angularVelocity = angularVelocity;
  sceneRef = [(SCNNode *)self->_node sceneRef];
  node = self->_node;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __37__SCNPhysicsBody_setAngularVelocity___block_invoke;
  v10[3] = &unk_2782FE238;
  v10[4] = self;
  v11 = x;
  v12 = y;
  v13 = z;
  v14 = w;
  [SCNTransaction postCommandWithContext:sceneRef object:node applyBlock:v10];
}

float32x4_t __37__SCNPhysicsBody_setAngularVelocity___block_invoke(uint64_t a1, float32x4_t result)
{
  v2 = *(*(a1 + 32) + 232);
  if (v2)
  {
    result.i64[0] = *(a1 + 40);
    result.i32[2] = *(a1 + 48);
    result = vmulq_n_f32(result, *(a1 + 52));
    result.i32[3] = 0;
    v2[23] = result;
  }

  return result;
}

- (SCNVector4)angularVelocity
{
  if (+[SCNTransaction immediateMode]&& (body = self->_body) != 0)
  {
    v4 = body[23];
    v5 = vmulq_f32(v4, v4);
    w = sqrtf(vadd_f32(vpadd_f32(*v5.i8, *v5.i8), *&vextq_s8(v5, v5, 8uLL)).f32[0]);
    if (w <= 0.0)
    {
      v7.i64[0] = 0;
      z = 0.0;
      w = 0.0;
    }

    else
    {
      v7 = vmulq_n_f32(v4, 1.0 / w);
      z = v7.f32[2];
    }
  }

  else
  {
    v7.i64[0] = *&self->_angularVelocity.x;
    z = self->_angularVelocity.z;
    w = self->_angularVelocity.w;
  }

  v9 = v7.f32[1];
  result.x = v7.f32[0];
  result.w = w;
  result.z = z;
  result.y = v9;
  return result;
}

- (void)setVelocityFactor:(SCNVector3)velocityFactor
{
  z = velocityFactor.z;
  y = velocityFactor.y;
  x = velocityFactor.x;
  self->_velocityFactor = velocityFactor;
  sceneRef = [(SCNNode *)self->_node sceneRef];
  node = self->_node;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __36__SCNPhysicsBody_setVelocityFactor___block_invoke;
  v9[3] = &unk_2782FB848;
  v9[4] = self;
  v10 = x;
  v11 = y;
  v12 = z;
  [SCNTransaction postCommandWithContext:sceneRef object:node applyBlock:v9];
}

__n128 __36__SCNPhysicsBody_setVelocityFactor___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 232);
  if (v1)
  {
    v2.i64[0] = *(a1 + 40);
    v2.i64[1] = *(a1 + 48);
    *(v1 + 400) = v2;
    result = vmulq_n_f32(v2, *(v1 + 384));
    result.n128_u32[3] = 0;
    *(v1 + 640) = result;
  }

  return result;
}

- (SCNVector3)velocityFactor
{
  x = self->_velocityFactor.x;
  y = self->_velocityFactor.y;
  z = self->_velocityFactor.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setAngularVelocityFactor:(SCNVector3)angularVelocityFactor
{
  z = angularVelocityFactor.z;
  y = angularVelocityFactor.y;
  x = angularVelocityFactor.x;
  self->_angularVelocityFactor = angularVelocityFactor;
  sceneRef = [(SCNNode *)self->_node sceneRef];
  node = self->_node;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__SCNPhysicsBody_setAngularVelocityFactor___block_invoke;
  v9[3] = &unk_2782FB848;
  v9[4] = self;
  v10 = x;
  v11 = y;
  v12 = z;
  [SCNTransaction postCommandWithContext:sceneRef object:node applyBlock:v9];
}

float __43__SCNPhysicsBody_setAngularVelocityFactor___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 232);
  if (v1)
  {
    *&v2 = *(a1 + 40);
    *(&v2 + 1) = *(a1 + 48);
    *(v1 + 624) = v2;
  }

  return *&v2;
}

- (SCNVector3)angularVelocityFactor
{
  x = self->_angularVelocityFactor.x;
  y = self->_angularVelocityFactor.y;
  z = self->_angularVelocityFactor.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (void)applyForce:(SCNVector3)direction impulse:(BOOL)impulse
{
  z = direction.z;
  y = direction.y;
  x = direction.x;
  sceneRef = [(SCNNode *)self->_node sceneRef];
  node = self->_node;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __37__SCNPhysicsBody_applyForce_impulse___block_invoke;
  v11[3] = &unk_2782FE2B0;
  v11[4] = self;
  v15 = impulse;
  v12 = x;
  v13 = y;
  v14 = z;
  [SCNTransaction postCommandWithContext:sceneRef object:node applyBlock:v11];
}

float32x4_t __37__SCNPhysicsBody_applyForce_impulse___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 232);
  if (v2)
  {
    btCollisionObject::activate(v2, 0);
    v3.i64[0] = *(a1 + 40);
    v4 = *(*(a1 + 32) + 232);
    v3.i64[1] = *(a1 + 48);
    v5 = vmulq_f32(v3, v4[25]);
    if (*(a1 + 52) == 1)
    {
      v6 = vmulq_n_f32(v5, v4[24].f32[0]);
      v6.i32[3] = 0;
      result = vaddq_f32(v4[22], v6);
      v4[22] = result;
    }

    else
    {
      result = vaddq_f32(v4[29], v5);
      v4[29] = result;
    }
  }

  else
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __37__SCNPhysicsBody_applyForce_impulse___block_invoke_cold_1();
    }
  }

  return result;
}

- (void)applyForce:(SCNVector3)direction atPosition:(SCNVector3)position impulse:(BOOL)impulse
{
  z = position.z;
  y = position.y;
  x = position.x;
  v9 = direction.z;
  v10 = direction.y;
  v11 = direction.x;
  sceneRef = [(SCNNode *)self->_node sceneRef];
  node = self->_node;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__SCNPhysicsBody_applyForce_atPosition_impulse___block_invoke;
  v15[3] = &unk_2782FE2D8;
  v15[4] = self;
  v22 = impulse;
  v16 = v11;
  v17 = v10;
  v18 = v9;
  v19 = x;
  v20 = y;
  v21 = z;
  [SCNTransaction postCommandWithContext:sceneRef object:node applyBlock:v15];
}

float32x4_t __48__SCNPhysicsBody_applyForce_atPosition_impulse___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 232);
  if (v2)
  {
    btCollisionObject::activate(v2, 0);
    v4 = *(*(a1 + 32) + 232);
    if (*(a1 + 64) == 1)
    {
      *v14.var0.var0 = *(a1 + 40);
      *&v14.var0.var0[2] = *(a1 + 48);
      v13.i64[0] = *(a1 + 52);
      v13.i64[1] = *(a1 + 60);
      result.i64[0] = btRigidBody::applyImpulse(v4, &v14, &v13).u64[0];
    }

    else
    {
      v7.i64[0] = *(a1 + 40);
      v7.i64[1] = *(a1 + 48);
      v3.i64[0] = *(a1 + 52);
      v8.i64[0] = v3.i64[0];
      v8.i64[1] = *(a1 + 60);
      v9 = vmulq_f32(v7, *(v4 + 400));
      v10 = vsubq_f32(vmulq_f32(v8, vextq_s8(vextq_s8(v9, v9, 0xCuLL), v9, 8uLL)), vmulq_f32(v9, vextq_s8(vextq_s8(v8, v8, 0xCuLL), v3, 8uLL)));
      v11 = vextq_s8(vextq_s8(v10, v10, 0xCuLL), v10, 8uLL);
      v11.i32[3] = 0;
      result = vaddq_f32(*(v4 + 464), v9);
      v12 = vaddq_f32(*(v4 + 480), vmulq_f32(*(v4 + 624), v11));
      *(v4 + 464) = result;
      *(v4 + 480) = v12;
    }
  }

  else
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __37__SCNPhysicsBody_applyForce_impulse___block_invoke_cold_1();
    }
  }

  return result;
}

- (void)applyTorque:(SCNVector4)torque impulse:(BOOL)impulse
{
  w = torque.w;
  z = torque.z;
  y = torque.y;
  x = torque.x;
  sceneRef = [(SCNNode *)self->_node sceneRef];
  node = self->_node;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __38__SCNPhysicsBody_applyTorque_impulse___block_invoke;
  v12[3] = &unk_2782FE300;
  v12[4] = self;
  v13 = x;
  v14 = y;
  v15 = z;
  v16 = w;
  v17 = impulse;
  [SCNTransaction postCommandWithContext:sceneRef object:node applyBlock:v12];
}

float32x4_t __38__SCNPhysicsBody_applyTorque_impulse___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 232);
  if (v2)
  {
    btCollisionObject::activate(v2, 0);
    v3.i64[0] = *(a1 + 40);
    v3.i32[2] = *(a1 + 48);
    v4 = vmulq_n_f32(v3, *(a1 + 52));
    v4.i32[3] = 0;
    v5 = *(*(a1 + 32) + 232);
    if (*(a1 + 56) == 1)
    {
      v6 = vmulq_f32(v5[19], v4);
      v7 = vmulq_f32(v5[20], v4);
      v8 = vmulq_f32(v5[21], v4);
      v8.i32[3] = 0;
      *v6.f32 = vadd_f32(vpadd_f32(*v6.f32, *v7.i8), vzip1_s32(*&vextq_s8(v6, v6, 8uLL), *&vextq_s8(v7, v7, 8uLL)));
      *&v6.u32[2] = vpadd_f32(vpadd_f32(*v8.i8, *&vextq_s8(v8, v8, 8uLL)), 0);
      result = vaddq_f32(v5[23], vmulq_f32(v6, v5[39]));
      v5[23] = result;
    }

    else
    {
      result = vaddq_f32(v5[30], vmulq_f32(v5[39], v4));
      v5[30] = result;
    }
  }

  else
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __37__SCNPhysicsBody_applyForce_impulse___block_invoke_cold_1();
    }
  }

  return result;
}

- (void)_activate
{
  body = self->_body;
  if (body)
  {
    btCollisionObject::activate(body, 0);
  }
}

- (void)clearAllForces
{
  sceneRef = [(SCNNode *)self->_node sceneRef];
  node = self->_node;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__SCNPhysicsBody_clearAllForces__block_invoke;
  v5[3] = &unk_2782FB820;
  v5[4] = self;
  [SCNTransaction postCommandWithContext:sceneRef object:node applyBlock:v5];
}

void __32__SCNPhysicsBody_clearAllForces__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 232);
  if (v1)
  {
    *(v1 + 464) = 0u;
    *(v1 + 480) = 0u;
    *(*(*(a1 + 32) + 232) + 352) = 0u;
    *(*(*(a1 + 32) + 232) + 368) = 0u;
  }

  else
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __32__SCNPhysicsBody_clearAllForces__block_invoke_cold_1();
    }
  }
}

- (void)setResting:(BOOL)resting
{
  sceneRef = [(SCNNode *)self->_node sceneRef];
  node = self->_node;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__SCNPhysicsBody_setResting___block_invoke;
  v7[3] = &unk_2782FB7F8;
  v7[4] = self;
  v8 = resting;
  [SCNTransaction postCommandWithContext:sceneRef object:node applyBlock:v7];
}

btCollisionObject *__29__SCNPhysicsBody_setResting___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 232);
  if (result)
  {
    if (*(a1 + 40) == 1)
    {
      return btCollisionObject::setActivationState(result, 3);
    }

    else
    {
      return btCollisionObject::activate(result, 0);
    }
  }

  return result;
}

- (void)resetToTransform:(SCNMatrix4 *)transform
{
  sceneRef = [(SCNNode *)self->_node sceneRef];
  node = self->_node;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v7 = *&transform->m21;
  v10 = *&transform->m11;
  v11 = v7;
  v8 = *&transform->m41;
  v12 = *&transform->m31;
  v13 = v8;
  v9[2] = __35__SCNPhysicsBody_resetToTransform___block_invoke;
  v9[3] = &unk_2782FE328;
  v9[4] = self;
  [SCNTransaction postCommandWithContext:sceneRef object:node applyBlock:v9];
}

uint64_t __35__SCNPhysicsBody_resetToTransform___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v5[0] = *(a1 + 40);
  v5[1] = v2;
  v3 = *(a1 + 88);
  v5[2] = *(a1 + 72);
  v5[3] = v3;
  return [v1 moveToTransform:v5];
}

- (void)resetTransform
{
  node = self->_node;
  if (node)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    [(SCNNode *)node worldTransform];
    sceneRef = [(SCNNode *)self->_node sceneRef];
    v5 = self->_node;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v7 = v11;
    v8 = v12;
    v9 = v13;
    v10 = v14;
    v6[2] = __32__SCNPhysicsBody_resetTransform__block_invoke;
    v6[3] = &unk_2782FE328;
    v6[4] = self;
    [SCNTransaction postCommandWithContext:sceneRef object:v5 applyBlock:v6];
  }
}

uint64_t __32__SCNPhysicsBody_resetTransform__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v5[0] = *(a1 + 40);
  v5[1] = v2;
  v3 = *(a1 + 88);
  v5[2] = *(a1 + 72);
  v5[3] = v3;
  return [v1 moveToTransform:v5];
}

- (void)moveToPosition:(SCNVector3)position
{
  z = position.z;
  y = position.y;
  x = position.x;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  presentationNode = [(SCNNode *)self->_node presentationNode];
  if (presentationNode)
  {
    [(SCNNode *)presentationNode worldTransform];
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
  }

  *&v12 = __PAIR64__(LODWORD(y), LODWORD(x));
  *(&v12 + 2) = z;
  v8[0] = v9;
  v8[1] = v10;
  v8[2] = v11;
  v8[3] = v12;
  [(SCNPhysicsBody *)self moveToTransform:v8];
}

- (void)rotateToAxisAngle:(SCNVector4)angle
{
  w = angle.w;
  z = angle.z;
  y = angle.y;
  x = angle.x;
  DWORD2(v14) = 0;
  *&v14 = 0;
  v13.i32[2] = 0;
  v13.i64[0] = 0;
  memset(&v12, 0, sizeof(v12));
  presentationNode = [(SCNNode *)self->_node presentationNode];
  if (presentationNode)
  {
    [(SCNNode *)presentationNode worldTransform];
  }

  else
  {
    memset(&v12, 0, sizeof(v12));
  }

  C3DMatrix4x4FromSCNMatrix4(v15, &v12);
  C3DMatrix4x4GetAffineTransforms(v15, &v14, 0, &v13);
  memset(&a.m22, 0, 40);
  *&a.m12 = 0u;
  LODWORD(a.m11) = v13.i32[0];
  LODWORD(a.m22) = v13.i32[0];
  LODWORD(a.m33) = v13.i32[2];
  a.m44 = 1.0;
  SCNMatrix4MakeRotation(&v9, w, x, y, z);
  SCNMatrix4Mult(&v10, &a, &v9);
  v9.m11 = 1.0;
  *&v9.m14 = 0;
  *&v9.m12 = 0;
  v9.m22 = 1.0;
  *&v9.m23 = 0;
  *&v9.m31 = 0;
  *&v9.m33 = 1065353216;
  *&v9.m41 = vdup_lane_s32(*&v14, 0);
  v9.m43 = *(&v14 + 2);
  v9.m44 = 1.0;
  SCNMatrix4Mult(&a, &v10, &v9);
  v12 = a;
  [(SCNPhysicsBody *)self moveToTransform:&a];
}

- (void)moveToTransform:(SCNMatrix4 *)transform
{
  if (self->_body)
  {
    C3DMatrix4x4FromSCNMatrix4(v13, transform);
    v8.i32[2] = 0;
    v8.i64[0] = 0;
    C3DMatrix4x4GetScale(v13, &v8);
    v9 = v13[0];
    v10 = v13[1];
    v11 = v13[2];
    v12 = v13[3];
    C3DMatrix4x4ClearScale(&v9);
    body = self->_body;
    *v7.var0.var0[0].var0.var0 = __PAIR64__(v10.u32[0], v9.u32[0]);
    *&v7.var0.var0[0].var0.var0[2] = v11.u32[0];
    *v7.var0.var0[1].var0.var0 = __PAIR64__(v10.u32[1], v9.u32[1]);
    *&v7.var0.var0[1].var0.var0[2] = v11.u32[1];
    *v7.var0.var0[2].var0.var0 = __PAIR64__(v10.u32[2], v9.u32[2]);
    *&v7.var0.var0[2].var0.var0[2] = v11.u32[2];
    *v7.var1.var0.var0 = v12.i64[0];
    *&v7.var1.var0.var0[2] = v12.u32[2];
    btRigidBody::proceedToTransform(body, &v7);
    v5 = self->_body;
    v6 = *(v5 + 67);
    if (v6)
    {
      v6[1] = v8;
      v5 = self->_body;
    }

    __updateCCDRadiusIfNeeded(v5);
    btCollisionObject::activate(self->_body, 1);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  +[SCNTransaction begin];
  [SCNTransaction setImmediateMode:1];
  v4 = [objc_alloc(objc_opt_class()) initWithType:-[SCNPhysicsBody type](self shape:{"type"), -[SCNPhysicsBody physicsShape](self, "physicsShape")}];
  [(SCNPhysicsBody *)self mass];
  [v4 setMass:?];
  [(SCNPhysicsBody *)self charge];
  [v4 setCharge:?];
  [(SCNPhysicsBody *)self friction];
  [v4 setFriction:?];
  [(SCNPhysicsBody *)self restitution];
  [v4 setRestitution:?];
  [(SCNPhysicsBody *)self rollingFriction];
  [v4 setRollingFriction:?];
  [(SCNPhysicsBody *)self damping];
  [v4 setDamping:?];
  [(SCNPhysicsBody *)self angularVelocity];
  [v4 setAngularVelocity:?];
  [(SCNPhysicsBody *)self angularDamping];
  [v4 setAngularDamping:?];
  [(SCNPhysicsBody *)self linearRestingThreshold];
  [v4 setLinearRestingThreshold:?];
  [(SCNPhysicsBody *)self angularRestingThreshold];
  [v4 setAngularRestingThreshold:?];
  [(SCNPhysicsBody *)self velocityFactor];
  [v4 setVelocityFactor:?];
  [(SCNPhysicsBody *)self angularVelocityFactor];
  [v4 setAngularVelocityFactor:?];
  [(SCNPhysicsBody *)self velocity];
  [v4 setVelocity:?];
  [v4 setCategoryBitMask:{-[SCNPhysicsBody categoryBitMask](self, "categoryBitMask")}];
  [v4 setCollisionBitMask:{-[SCNPhysicsBody collisionBitMask](self, "collisionBitMask")}];
  [v4 setContactTestBitMask:{-[SCNPhysicsBody contactTestBitMask](self, "contactTestBitMask")}];
  [v4 setAllowsResting:{-[SCNPhysicsBody allowsResting](self, "allowsResting")}];
  [(SCNPhysicsBody *)self angularVelocity];
  [v4 setAngularVelocity:?];
  [v4 setAffectedByGravity:{-[SCNPhysicsBody isAffectedByGravity](self, "isAffectedByGravity")}];
  [v4 setUsesDefaultMomentOfInertia:{-[SCNPhysicsBody usesDefaultMomentOfInertia](self, "usesDefaultMomentOfInertia")}];
  [(SCNPhysicsBody *)self momentOfInertia];
  [v4 setMomentOfInertia:?];
  [(SCNPhysicsBody *)self centerOfMassOffset];
  [v4 setCenterOfMassOffset:?];
  [(SCNPhysicsBody *)self continuousCollisionDetectionThreshold];
  [v4 setContinuousCollisionDetectionThreshold:?];
  +[SCNTransaction commitImmediate];
  return v4;
}

- (void)_createBody
{
  mass = self->_mass;
  v15 = mass;
  v16 = 0;
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v30 = 0;
  v31 = xmmword_21C281160;
  v17 = xmmword_21C27F910;
  v18 = xmmword_21C27F8C0;
  v19 = xmmword_21C27F600;
  v20 = 0;
  damping = self->_damping;
  angularDamping = self->_angularDamping;
  v25 = damping;
  v26 = angularDamping;
  v29 = vcvt_f32_f64(*&self->_linearRestingThreshold);
  friction = self->_friction;
  v27 = friction;
  v28 = vrev64_s32(vcvt_f32_f64(*&self->_restitution));
  v7 = btAlignedAllocInternal(704, 16);
  btRigidBody::btRigidBody(v7, &v15);
  __modifyCollisionFlagsFromType(v7, self->_type);
  v8.i64[0] = *&self->_velocity.x;
  v8.i64[1] = LODWORD(self->_velocity.z);
  *(v7 + 352) = v8;
  v8.i64[0] = *&self->_angularVelocity.x;
  v8.i64[1] = LODWORD(self->_angularVelocity.z);
  *(v7 + 368) = v8;
  v8.i64[0] = *&self->_velocityFactor.x;
  v8.i32[2] = LODWORD(self->_velocityFactor.z);
  v9 = vmulq_n_f32(v8, *(v7 + 384));
  v8.i32[3] = 0;
  *(v7 + 400) = v8;
  v9.i32[3] = 0;
  *(v7 + 640) = v9;
  v8.i64[0] = *&self->_angularVelocityFactor.x;
  v8.i64[1] = LODWORD(self->_angularVelocityFactor.z);
  *(v7 + 624) = v8;
  if (self->_allowsResting)
  {
    v10 = 1;
  }

  else
  {
    v10 = 4;
  }

  btCollisionObject::setActivationState(v7, v10);
  charge = self->_charge;
  *(v7 + 532) = charge;
  continuousCollisionDetectionThreshold = self->_continuousCollisionDetectionThreshold;
  *(v7 + 288) = continuousCollisionDetectionThreshold;
  if (self->_ignoreGravity)
  {
    *(v7 + 576) = 1;
    v14 = 0uLL;
    btRigidBody::setGravity(v7, &v14);
  }

  return v7;
}

- (void)_removeOwner
{
  node = self->_node;
  v4 = [-[SCNNode scene](node "scene")];
  self->_node = 0;
  body = self->_body;
  if (body)
  {
    v6 = v4;
    sceneRef = [(SCNNode *)node sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __30__SCNPhysicsBody__removeOwner__block_invoke;
    v8[3] = &unk_2782FE350;
    v8[4] = node;
    v8[5] = v6;
    v8[6] = self;
    v8[7] = body;
    [SCNTransaction postCommandWithContext:sceneRef object:node applyBlock:v8];
  }
}

uint64_t __30__SCNPhysicsBody__removeOwner__block_invoke(uint64_t a1)
{
  C3DNodeSetHasPhysicsBody([*(a1 + 32) nodeRef], 0);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);

  return [v2 removePhysicsBody:v3 handle:v4];
}

- (void)_setOwner:(id)owner
{
  if (self->_node)
  {
    if (self->_body)
    {
      v5 = scn_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [SCNPhysicsBody _setOwner:v5];
      }
    }
  }

  self->_node = owner;
  nodeRef = [owner nodeRef];
  body = self->_body;
  categoryBitMask = [(SCNPhysicsBody *)self categoryBitMask];
  collisionBitMask = [(SCNPhysicsBody *)self collisionBitMask];
  contactTestBitMask = [(SCNPhysicsBody *)self contactTestBitMask];
  if (self->_node)
  {
    v12 = contactTestBitMask;
    mass = self->_mass;
    isDefaultShape = self->_isDefaultShape;
    *&v11 = *&self->_momentOfInertia.x;
    DWORD2(v11) = LODWORD(self->_momentOfInertia.z);
    v23 = v11;
    *&v14 = *&self->_centerOfMassOffset.x;
    explicitMomentOfInertia = self->_explicitMomentOfInertia;
    *(&v14 + 1) = LODWORD(self->_centerOfMassOffset.z);
    v21 = v14;
    v16 = categoryBitMask;
    physicsShape = self->_physicsShape;
    sceneRef = [(SCNPhysicsBody *)self sceneRef];
    node = self->_node;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3321888768;
    v24[2] = __28__SCNPhysicsBody__setOwner___block_invoke;
    v24[3] = &unk_282DC5028;
    v30 = nodeRef;
    v31 = body;
    v36 = isDefaultShape;
    ownerCopy = owner;
    selfCopy = self;
    v29 = physicsShape;
    v32 = mass;
    v37 = explicitMomentOfInertia;
    v25 = v23;
    v26 = v21;
    v33 = v16;
    v34 = collisionBitMask;
    v35 = v12;
    [SCNTransaction postCommandWithContext:sceneRef object:node applyBlock:v24];
  }

  else
  {
    v20 = scn_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [SCNPhysicsBody _setOwner:];
    }
  }
}

uint64_t __28__SCNPhysicsBody__setOwner___block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 64) "scene")];
  C3DNodeSetHasPhysicsBody(*(a1 + 88), 1);
  v3 = *(a1 + 96);
  if (v3 && !*(v3 + 208))
  {
    if (*(a1 + 136) == 1)
    {
      DefaultShapeForNode = C3DPhysicsShapeGetDefaultShapeForNode(*(a1 + 88));
    }

    else
    {
      DefaultShapeForNode = [*(a1 + 72) _shapeHandleWithShape:*(a1 + 80) owner:*(a1 + 64)];
    }

    v7 = DefaultShapeForNode;
    v8 = *(a1 + 96);
    v9 = *(a1 + 104);
    if (*(a1 + 137))
    {
      v10 = (a1 + 32);
    }

    else
    {
      v10 = 0;
    }

    v17 = *(a1 + 48);
    __setCollisionShape(v8, v7, v10, &v17, v9, *&v17, v5, v6);
  }

  v11 = *(a1 + 72);
  v12 = *(a1 + 88);
  v13 = *(a1 + 112);
  v14 = *(a1 + 120);
  v15 = *(a1 + 128);

  return [v2 addPhysicsBody:v11 nodeRef:v12 colGroup:v13 colMask:v14 colTest:v15];
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeDouble:@"mass" forKey:self->_mass];
  [coder encodeDouble:@"charge" forKey:self->_charge];
  [coder encodeDouble:@"friction" forKey:self->_friction];
  [coder encodeDouble:@"restitution" forKey:self->_restitution];
  [coder encodeDouble:@"rollingFriction" forKey:self->_rollingFriction];
  [coder encodeDouble:@"ccdThreshold" forKey:self->_continuousCollisionDetectionThreshold];
  physicsShape = self->_physicsShape;
  if (physicsShape)
  {
    [coder encodeObject:physicsShape forKey:@"physicsShape"];
  }

  [coder encodeInteger:self->_type forKey:@"type"];
  [coder encodeDouble:@"damping" forKey:self->_damping];
  SCNEncodeVector4(coder, @"angularVelocity", self->_angularVelocity.x, self->_angularVelocity.y, self->_angularVelocity.z, self->_angularVelocity.w);
  [coder encodeDouble:@"angularDamping" forKey:self->_angularDamping];
  [coder encodeDouble:@"linearRestingThreshold" forKey:self->_linearRestingThreshold];
  [coder encodeDouble:@"angularRestingThreshold" forKey:self->_angularRestingThreshold];
  SCNEncodeVector3(coder, @"velocityFactor", self->_velocityFactor.x, self->_velocityFactor.y, self->_velocityFactor.z);
  SCNEncodeVector3(coder, @"angularVelocityFactor", self->_angularVelocityFactor.x, self->_angularVelocityFactor.y, self->_angularVelocityFactor.z);
  SCNEncodeVector3(coder, @"velocity", self->_velocity.x, self->_velocity.y, self->_velocity.z);
  [coder encodeBool:self->_ignoreGravity forKey:@"ignoreGravity"];
  [coder encodeBool:self->_explicitMomentOfInertia forKey:@"explicitMomentOfInertia"];
  SCNEncodeVector3(coder, @"momentOfInertia", self->_momentOfInertia.x, self->_momentOfInertia.y, self->_momentOfInertia.z);
  SCNEncodeVector3(coder, @"centerOfMassOffset", self->_centerOfMassOffset.x, self->_centerOfMassOffset.y, self->_centerOfMassOffset.z);
  [coder encodeInteger:self->_categoryBitMask forKey:@"categoryBitMask"];
  [coder encodeInteger:self->_collisionBitMask forKey:@"collisionBitMask"];
  [coder encodeInteger:self->_contactTestBitMask forKey:@"contactTestBitMask"];
  [coder encodeBool:self->_allowsResting forKey:@"allowsResting"];
  isDefaultShape = self->_isDefaultShape;

  [coder encodeBool:isDefaultShape forKey:@"isDefaultShape"];
}

- (SCNPhysicsBody)initWithCoder:(id)coder
{
  v15.receiver = self;
  v15.super_class = SCNPhysicsBody;
  v4 = [(SCNPhysicsBody *)&v15 init];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    [coder decodeDoubleForKey:@"charge"];
    [(SCNPhysicsBody *)v4 setCharge:?];
    [coder decodeDoubleForKey:@"friction"];
    [(SCNPhysicsBody *)v4 setFriction:?];
    [coder decodeDoubleForKey:@"restitution"];
    [(SCNPhysicsBody *)v4 setRestitution:?];
    [coder decodeDoubleForKey:@"rollingFriction"];
    [(SCNPhysicsBody *)v4 setRollingFriction:?];
    -[SCNPhysicsBody setPhysicsShape:](v4, "setPhysicsShape:", [coder scn_decodeObjectOfClass:objc_opt_class() forKey:@"physicsShape"]);
    if ([coder containsValueForKey:@"ccdThreshold"])
    {
      [coder decodeDoubleForKey:@"ccdThreshold"];
      [(SCNPhysicsBody *)v4 setContinuousCollisionDetectionThreshold:?];
    }

    -[SCNPhysicsBody setType:](v4, "setType:", [coder decodeIntegerForKey:@"type"]);
    [coder decodeDoubleForKey:@"mass"];
    [(SCNPhysicsBody *)v4 setMass:?];
    [coder decodeDoubleForKey:@"damping"];
    [(SCNPhysicsBody *)v4 setDamping:?];
    *&v6 = SCNDecodeVector4(coder, @"angularVelocity");
    [(SCNPhysicsBody *)v4 setAngularVelocity:v6];
    [coder decodeDoubleForKey:@"angularDamping"];
    [(SCNPhysicsBody *)v4 setAngularDamping:?];
    v7 = @"linearRestingThreshold";
    if (([coder containsValueForKey:@"linearRestingThreshold"] & 1) != 0 || (v7 = @"linearSleepingThreshold", objc_msgSend(coder, "containsValueForKey:", @"linearSleepingThreshold")))
    {
      [coder decodeDoubleForKey:v7];
      [(SCNPhysicsBody *)v4 setLinearRestingThreshold:?];
    }

    v8 = @"angularRestingThreshold";
    if (([coder containsValueForKey:@"angularRestingThreshold"] & 1) != 0 || (v8 = @"angularSleepingThreshold", objc_msgSend(coder, "containsValueForKey:", @"angularSleepingThreshold")))
    {
      [coder decodeDoubleForKey:v8];
      [(SCNPhysicsBody *)v4 setAngularRestingThreshold:?];
    }

    *&v9 = SCNDecodeVector3(coder, @"velocityFactor");
    [(SCNPhysicsBody *)v4 setVelocityFactor:v9];
    *&v10 = SCNDecodeVector3(coder, @"angularVelocityFactor");
    [(SCNPhysicsBody *)v4 setAngularVelocityFactor:v10];
    *&v11 = SCNDecodeVector3(coder, @"velocity");
    [(SCNPhysicsBody *)v4 setVelocity:v11];
    -[SCNPhysicsBody setAffectedByGravity:](v4, "setAffectedByGravity:", [coder decodeBoolForKey:@"ignoreGravity"] ^ 1);
    -[SCNPhysicsBody setUsesDefaultMomentOfInertia:](v4, "setUsesDefaultMomentOfInertia:", [coder decodeBoolForKey:@"explicitMomentOfInertia"] ^ 1);
    *&v12 = SCNDecodeVector3(coder, @"momentOfInertia");
    [(SCNPhysicsBody *)v4 setMomentOfInertia:v12];
    *&v13 = SCNDecodeVector3(coder, @"centerOfMassOffset");
    [(SCNPhysicsBody *)v4 setCenterOfMassOffset:v13];
    -[SCNPhysicsBody setCategoryBitMask:](v4, "setCategoryBitMask:", [coder decodeIntegerForKey:@"categoryBitMask"]);
    -[SCNPhysicsBody setCollisionBitMask:](v4, "setCollisionBitMask:", [coder decodeIntegerForKey:@"collisionBitMask"]);
    -[SCNPhysicsBody setContactTestBitMask:](v4, "setContactTestBitMask:", [coder decodeIntegerForKey:@"contactTestBitMask"]);
    -[SCNPhysicsBody setAllowsResting:](v4, "setAllowsResting:", [coder decodeBoolForKey:@"allowsResting"]);
    v4->_isDefaultShape = [coder decodeBoolForKey:@"isDefaultShape"];
    [(SCNPhysicsBody *)v4 _didDecodeSCNPhysicsBody:coder];
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

void __37__SCNPhysicsBody_applyForce_impulse___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __32__SCNPhysicsBody_clearAllForces__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_setOwner:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "!_node || _body == 0";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. SCNPhysicsBody is already attached to a SCNNode", &v1, 0xCu);
}

@end