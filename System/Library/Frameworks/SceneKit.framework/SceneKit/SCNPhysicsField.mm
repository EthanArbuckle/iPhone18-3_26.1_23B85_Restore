@interface SCNPhysicsField
+ (SCNPhysicsField)customFieldWithEvaluationBlock:(SCNFieldForceEvaluator)block;
+ (SCNPhysicsField)noiseFieldWithSmoothness:(CGFloat)smoothness animationSpeed:(CGFloat)speed;
+ (SCNPhysicsField)turbulenceFieldWithSmoothness:(CGFloat)smoothness animationSpeed:(CGFloat)speed;
+ (id)field;
- (SCNPhysicsField)init;
- (SCNPhysicsField)initWithCoder:(id)coder;
- (SCNVector3)direction;
- (SCNVector3)evalAtLocation:(SCNVector3)location;
- (SCNVector3)halfExtent;
- (SCNVector3)offset;
- (c3dPhysicsField)_createField;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_commonInit;
- (void)_removeOwner;
- (void)_setOwner:(id)owner;
- (void)_setupCommonProperties;
- (void)_willRemoveFromPhysicsWorld;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setActive:(BOOL)active;
- (void)setCategoryBitMask:(NSUInteger)categoryBitMask;
- (void)setExclusive:(BOOL)exclusive;
- (void)setFalloffExponent:(CGFloat)falloffExponent;
- (void)setHalfExtent:(SCNVector3)halfExtent;
- (void)setMinimumDistance:(CGFloat)minimumDistance;
- (void)setOffset:(SCNVector3)offset;
- (void)setScope:(SCNPhysicsFieldScope)scope;
- (void)setStrength:(CGFloat)strength;
- (void)setUsesEllipsoidalExtent:(BOOL)usesEllipsoidalExtent;
@end

@implementation SCNPhysicsField

- (void)_commonInit
{
  self->_active = 1;
  self->_minimumDistance = 0.000001;
  *&self->_halfExtent.x = vneg_f32(0x80000000800000);
  self->_halfExtent.z = 3.4028e38;
  self->_strength = 1.0;
  self->_direction.y = -1.0;
  self->_scope = 0;
  self->_categoryBitMask = -1;
}

- (SCNPhysicsField)init
{
  v5.receiver = self;
  v5.super_class = SCNPhysicsField;
  v2 = [(SCNPhysicsField *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SCNPhysicsField *)v2 _commonInit];
  }

  return v3;
}

- (void)dealloc
{
  if (self->_field)
  {
    [(SCNPhysicsField *)self _removeOwner];
  }

  v3.receiver = self;
  v3.super_class = SCNPhysicsField;
  [(SCNPhysicsField *)&v3 dealloc];
}

+ (id)field
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

+ (SCNPhysicsField)customFieldWithEvaluationBlock:(SCNFieldForceEvaluator)block
{
  v4 = +[(SCNPhysicsField *)SCNPhysicsCustomField];
  [(SCNPhysicsField *)v4 setBlock:block];
  return v4;
}

+ (SCNPhysicsField)noiseFieldWithSmoothness:(CGFloat)smoothness animationSpeed:(CGFloat)speed
{
  v6 = +[(SCNPhysicsField *)SCNPhysicsNoiseField];
  [(SCNPhysicsField *)v6 setSmoothness:smoothness];
  [(SCNPhysicsField *)v6 setAnimationSpeed:speed];
  return v6;
}

+ (SCNPhysicsField)turbulenceFieldWithSmoothness:(CGFloat)smoothness animationSpeed:(CGFloat)speed
{
  v6 = +[(SCNPhysicsField *)SCNPhysicsTurbulenceField];
  [(SCNPhysicsField *)v6 setSmoothness:smoothness];
  [(SCNPhysicsField *)v6 setAnimationSpeed:speed];
  return v6;
}

- (c3dPhysicsField)_createField
{
  result = [(SCNPhysicsField *)self doesNotRecognizeSelector:a2];
  __break(1u);
  return result;
}

- (void)_setupCommonProperties
{
  field = self->_field;
  if (field)
  {
    *&v2 = *&self->_halfExtent.x;
    DWORD2(v2) = LODWORD(self->_halfExtent.z);
    *&field[5].var5 = v2;
    v4 = self->_field;
    *&v2 = self->_strength;
    LODWORD(v4[5].var0) = v2;
    LOBYTE(v4[6].var4) = self->_active;
    BYTE2(v4[6].var4) = self->_exclusive;
    BYTE1(v4[6].var4) = self->_scope == 1;
    HIBYTE(v4[6].var4) = self->_usesEllipsoidalExtent;
    *&v2 = self->_minimumDistance;
    HIDWORD(v4[6].var0) = v2;
    *&v2 = *&self->_offset.x;
    DWORD2(v2) = LODWORD(self->_offset.z);
    *&v4[4].var5 = v2;
    LODWORD(self->_field[6].var3) = self->_categoryBitMask;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:0 error:0];
  v4 = [MEMORY[0x277CCAAC8] unarchiveObjectWithData:v3];

  return v4;
}

- (void)setStrength:(CGFloat)strength
{
  self->_strength = strength;
  v5 = [-[SCNNode scene](self->_node "scene")];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__SCNPhysicsField_setStrength___block_invoke;
  v6[3] = &unk_2782FB7D0;
  v6[4] = self;
  *&v6[5] = strength;
  [v5 _postCommandWithBlock:v6];
}

float __31__SCNPhysicsField_setStrength___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 120);
  if (v1)
  {
    result = *(a1 + 40);
    *(v1 + 160) = result;
  }

  return result;
}

- (void)setCategoryBitMask:(NSUInteger)categoryBitMask
{
  self->_categoryBitMask = categoryBitMask;
  v5 = [-[SCNNode scene](self->_node "scene")];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__SCNPhysicsField_setCategoryBitMask___block_invoke;
  v6[3] = &unk_2782FB7D0;
  v6[4] = self;
  v6[5] = categoryBitMask;
  [v5 _postCommandWithBlock:v6];
}

uint64_t __38__SCNPhysicsField_setCategoryBitMask___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 120);
  if (v1)
  {
    *(v1 + 200) = *(result + 40);
  }

  return result;
}

- (void)setFalloffExponent:(CGFloat)falloffExponent
{
  self->_falloffExponent = falloffExponent;
  v5 = [-[SCNNode scene](self->_node "scene")];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__SCNPhysicsField_setFalloffExponent___block_invoke;
  v6[3] = &unk_2782FB7D0;
  v6[4] = self;
  *&v6[5] = falloffExponent;
  [v5 _postCommandWithBlock:v6];
}

float __38__SCNPhysicsField_setFalloffExponent___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 120);
  if (v1)
  {
    result = *(a1 + 40);
    *(v1 + 192) = result;
  }

  return result;
}

- (void)setMinimumDistance:(CGFloat)minimumDistance
{
  self->_minimumDistance = minimumDistance;
  v5 = [-[SCNNode scene](self->_node "scene")];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__SCNPhysicsField_setMinimumDistance___block_invoke;
  v6[3] = &unk_2782FB7D0;
  v6[4] = self;
  *&v6[5] = minimumDistance;
  [v5 _postCommandWithBlock:v6];
}

float __38__SCNPhysicsField_setMinimumDistance___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 120);
  if (v1)
  {
    result = *(a1 + 40);
    *(v1 + 196) = result;
  }

  return result;
}

- (void)setActive:(BOOL)active
{
  self->_active = active;
  v5 = [-[SCNNode scene](self->_node "scene")];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __29__SCNPhysicsField_setActive___block_invoke;
  v6[3] = &unk_2782FB7F8;
  v6[4] = self;
  v7 = active;
  [v5 _postCommandWithBlock:v6];
}

void __29__SCNPhysicsField_setActive___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 120);
  if (v2)
  {
    *(v2 + 204) = *(a1 + 40);
    v1 = *(a1 + 32);
  }

  v3 = [objc_msgSend(objc_msgSend(*(v1 + 112) "scene")];
  if (v3)
  {

    c3dAether::fieldsModeHaveChanged(v3);
  }
}

- (void)setScope:(SCNPhysicsFieldScope)scope
{
  self->_scope = scope;
  v4 = [-[SCNNode scene](self->_node "scene")];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __28__SCNPhysicsField_setScope___block_invoke;
  v5[3] = &unk_2782FB820;
  v5[4] = self;
  [v4 _postCommandWithBlock:v5];
}

uint64_t __28__SCNPhysicsField_setScope___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 120);
  if (v2)
  {
    *(v2 + 205) = *(v1 + 56) == 1;
  }

  return result;
}

- (SCNVector3)halfExtent
{
  x = self->_halfExtent.x;
  y = self->_halfExtent.y;
  z = self->_halfExtent.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setHalfExtent:(SCNVector3)halfExtent
{
  z = halfExtent.z;
  y = halfExtent.y;
  x = halfExtent.x;
  self->_halfExtent = halfExtent;
  v7 = [-[SCNNode scene](self->_node "scene")];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __33__SCNPhysicsField_setHalfExtent___block_invoke;
  v8[3] = &unk_2782FB848;
  v8[4] = self;
  v9 = x;
  v10 = y;
  v11 = z;
  [v7 _postCommandWithBlock:v8];
}

__n128 __33__SCNPhysicsField_setHalfExtent___block_invoke(uint64_t a1, __n128 a2)
{
  v2 = *(*(a1 + 32) + 120);
  if (v2)
  {
    a2.n128_u64[0] = *(a1 + 40);
    a2.n128_u32[2] = *(a1 + 48);
    v2[11] = a2;
  }

  result.n128_u64[0] = a2.n128_u64[0];
  result.n128_u32[2] = a2.n128_u32[2];
  return result;
}

- (void)setUsesEllipsoidalExtent:(BOOL)usesEllipsoidalExtent
{
  self->_usesEllipsoidalExtent = usesEllipsoidalExtent;
  v5 = [-[SCNNode scene](self->_node "scene")];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__SCNPhysicsField_setUsesEllipsoidalExtent___block_invoke;
  v6[3] = &unk_2782FB7F8;
  v6[4] = self;
  v7 = usesEllipsoidalExtent;
  [v5 _postCommandWithBlock:v6];
}

uint64_t __44__SCNPhysicsField_setUsesEllipsoidalExtent___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 120);
  if (v1)
  {
    *(v1 + 207) = *(result + 40);
  }

  return result;
}

- (void)setExclusive:(BOOL)exclusive
{
  self->_exclusive = exclusive;
  v5 = [-[SCNNode scene](self->_node "scene")];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__SCNPhysicsField_setExclusive___block_invoke;
  v6[3] = &unk_2782FB7F8;
  v6[4] = self;
  v7 = exclusive;
  [v5 _postCommandWithBlock:v6];
}

void __32__SCNPhysicsField_setExclusive___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 120);
  if (v2)
  {
    *(v2 + 206) = *(a1 + 40);
    v1 = *(a1 + 32);
  }

  v3 = [objc_msgSend(objc_msgSend(*(v1 + 112) "scene")];
  if (v3)
  {

    c3dAether::fieldsModeHaveChanged(v3);
  }
}

- (SCNVector3)offset
{
  x = self->_offset.x;
  y = self->_offset.y;
  z = self->_offset.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setOffset:(SCNVector3)offset
{
  z = offset.z;
  y = offset.y;
  x = offset.x;
  self->_offset = offset;
  v7 = [-[SCNNode scene](self->_node "scene")];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __29__SCNPhysicsField_setOffset___block_invoke;
  v8[3] = &unk_2782FB848;
  v8[4] = self;
  v9 = x;
  v10 = y;
  v11 = z;
  [v7 _postCommandWithBlock:v8];
}

__n128 __29__SCNPhysicsField_setOffset___block_invoke(uint64_t a1, __n128 a2)
{
  v2 = *(*(a1 + 32) + 120);
  if (v2)
  {
    a2.n128_u64[0] = *(a1 + 40);
    a2.n128_u32[2] = *(a1 + 48);
    v2[9] = a2;
  }

  result.n128_u64[0] = a2.n128_u64[0];
  result.n128_u32[2] = a2.n128_u32[2];
  return result;
}

- (SCNVector3)direction
{
  x = self->_direction.x;
  y = self->_direction.y;
  z = self->_direction.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (void)_removeOwner
{
  node = self->_node;
  if (node)
  {
    C3DNodeSetHasPhysicsField([(SCNNode *)node nodeRef], 0);
    self->_node = 0;
  }

  world = self->_world;
  if (world)
  {
    [(SCNPhysicsWorld *)world _removeFieldFromWorld:self];
    self->_world = 0;
  }

  field = self->_field;
  if (field)
  {
    (*(field->var0 + 1))(field, a2);
    self->_field = 0;
  }
}

- (void)_willRemoveFromPhysicsWorld
{
  world = self->_world;
  if (world)
  {
    [(SCNPhysicsWorld *)world _removeFieldFromWorld:self];
    self->_world = 0;
  }
}

- (void)_setOwner:(id)owner
{
  node = self->_node;
  if (node)
  {
    v6 = node == owner;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNPhysicsField _setOwner:v7];
    }

    node = self->_node;
  }

  if (node)
  {
    if (self->_field)
    {
      v8 = scn_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [SCNPhysicsField _setOwner:v8];
      }
    }
  }

  self->_node = owner;
  if (!self->_field)
  {
    self->_field = [(SCNPhysicsField *)self _createField];
    [(SCNPhysicsField *)self _setupCommonProperties];
  }

  C3DNodeSetHasPhysicsField([owner nodeRef], 1);
  scene = [owner scene];
  if (scene)
  {
    [objc_msgSend(scene "physicsWorld")];
  }
}

- (SCNVector3)evalAtLocation:(SCNVector3)location
{
  y = location.y;
  z = location.z;
  v9 = *&location.x;
  if (c3dPhysicsField::contains(self->_field, &v9))
  {
    v6 = (*(self->_field->var0 + 2))(self->_field, v9, 0, 1.0, 1.0, 0.016667);
    v7 = v6.n128_f32[2];
  }

  else
  {
    v6.n128_u64[0] = 0;
    v7 = 0.0;
  }

  v8 = v6.n128_f32[1];
  result.x = v6.n128_f32[0];
  result.z = v7;
  result.y = v8;
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  SCNEncodeVector3(coder, @"halfExtent", self->_halfExtent.x, self->_halfExtent.y, self->_halfExtent.z);
  [coder encodeDouble:@"strength" forKey:self->_strength];
  [coder encodeDouble:@"falloffExponent" forKey:self->_falloffExponent];
  [coder encodeDouble:@"minimumDistance" forKey:self->_minimumDistance];
  [coder encodeBool:self->_active forKey:@"active"];
  [coder encodeInteger:self->_scope forKey:@"scope"];
  [coder encodeBool:self->_usesEllipsoidalExtent forKey:@"usesEllipsoidalExtent"];
  [coder encodeBool:self->_exclusive forKey:@"exclusive"];
  SCNEncodeVector3(coder, @"offset", self->_offset.x, self->_offset.y, self->_offset.z);
  x = self->_direction.x;
  y = self->_direction.y;
  z = self->_direction.z;

  SCNEncodeVector3(coder, @"direction", x, y, z);
}

- (SCNPhysicsField)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = SCNPhysicsField;
  v4 = [(SCNPhysicsField *)&v10 init];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    [(SCNPhysicsField *)v4 _commonInit];
    *&v6 = SCNDecodeVector3(coder, @"halfExtent");
    [(SCNPhysicsField *)v4 setHalfExtent:v6];
    [coder decodeDoubleForKey:@"strength"];
    [(SCNPhysicsField *)v4 setStrength:?];
    [coder decodeDoubleForKey:@"falloffExponent"];
    [(SCNPhysicsField *)v4 setFalloffExponent:?];
    [coder decodeDoubleForKey:@"minimumDistance"];
    [(SCNPhysicsField *)v4 setMinimumDistance:?];
    -[SCNPhysicsField setActive:](v4, "setActive:", [coder decodeBoolForKey:@"active"]);
    -[SCNPhysicsField setScope:](v4, "setScope:", [coder decodeIntegerForKey:@"scope"]);
    -[SCNPhysicsField setUsesEllipsoidalExtent:](v4, "setUsesEllipsoidalExtent:", [coder decodeBoolForKey:@"usesEllipsoidalExtent"]);
    -[SCNPhysicsField setExclusive:](v4, "setExclusive:", [coder decodeBoolForKey:@"exclusive"]);
    *&v7 = SCNDecodeVector3(coder, @"offset");
    [(SCNPhysicsField *)v4 setOffset:v7];
    if ([coder containsValueForKey:@"direction"])
    {
      *&v8 = SCNDecodeVector3(coder, @"direction");
      [(SCNPhysicsField *)v4 setDirection:v8];
    }

    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

- (void)_setOwner:(os_log_t)log .cold.2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "!_node || _field == 0";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. SCNPhysicsField is already attached to a SCNNode", &v1, 0xCu);
}

@end