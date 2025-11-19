@interface SCNPhysicsCharacter
- (SCNPhysicsCharacter)initWithCharacter:(id)a3;
- (void)_addToPhysicsWorld:(id)a3 definition:(id *)a4;
- (void)_handleCreateIfNeeded:(BOOL)a3;
- (void)_update;
- (void)dealloc;
- (void)jump;
- (void)setJumpSpeed:(double)a3;
- (void)setVelocity:(double)a3;
- (void)setWalkingDirection:(SCNVector3)a3;
@end

@implementation SCNPhysicsCharacter

- (SCNPhysicsCharacter)initWithCharacter:(id)a3
{
  v6.receiver = self;
  v6.super_class = SCNPhysicsCharacter;
  v4 = [(SCNPhysicsCharacter *)&v6 init];
  if (v4)
  {
    v4->_definition.characterBody = a3;
    v4->_definition.velocity = 0.0;
  }

  return v4;
}

- (void)dealloc
{
  characterController = self->_characterController;
  if (characterController)
  {
    (*(characterController->var0 + 1))(characterController);
  }

  ghostObject = self->_ghostObject;
  if (ghostObject)
  {
    (*(*ghostObject + 16))(ghostObject);
  }

  filterCallback = self->_filterCallback;
  if (filterCallback)
  {
    (*(filterCallback->var0 + 1))(filterCallback);
  }

  capsuleShape = self->_capsuleShape;
  if (capsuleShape)
  {
    (*(capsuleShape->var0 + 1))(capsuleShape);
  }

  v7.receiver = self;
  v7.super_class = SCNPhysicsCharacter;
  [(SCNPhysicsCharacter *)&v7 dealloc];
}

- (void)setWalkingDirection:(SCNVector3)a3
{
  self->_definition.direction = a3;
  velocity = self->_definition.velocity;
  y = a3.y;
  *&v5 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*&a3.x), velocity));
  *&v6 = velocity * a3.z;
  *(&v5 + 1) = v6;
  world = self->_world;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3321888768;
  v8[2] = __43__SCNPhysicsCharacter_setWalkingDirection___block_invoke;
  v8[3] = &unk_282DC3938;
  v10 = self;
  v9 = v5;
  [(SCNPhysicsWorld *)world _postCommandWithBlock:v8];
}

uint64_t __43__SCNPhysicsCharacter_setWalkingDirection___block_invoke(uint64_t result)
{
  v1 = *(*(result + 48) + 48);
  if (v1)
  {
    return (*(*v1 + 32))(*(*(result + 48) + 48), result + 32);
  }

  return result;
}

- (void)jump
{
  world = self->_world;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __27__SCNPhysicsCharacter_jump__block_invoke;
  v3[3] = &unk_2782FB820;
  v3[4] = self;
  [(SCNPhysicsWorld *)world _postCommandWithBlock:v3];
}

uint64_t __27__SCNPhysicsCharacter_jump__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 48);
  if (result)
  {
    return (*(*result + 88))();
  }

  return result;
}

- (void)setVelocity:(double)a3
{
  self->_definition.velocity = a3;
  *&v3 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*&self->_definition.direction.x), a3));
  *&v4 = self->_definition.direction.z * a3;
  *(&v3 + 1) = v4;
  world = self->_world;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3321888768;
  v6[2] = __35__SCNPhysicsCharacter_setVelocity___block_invoke;
  v6[3] = &unk_282DC3938;
  v8 = self;
  v7 = v3;
  [(SCNPhysicsWorld *)world _postCommandWithBlock:v6];
}

uint64_t __35__SCNPhysicsCharacter_setVelocity___block_invoke(uint64_t result)
{
  v1 = *(*(result + 48) + 48);
  if (v1)
  {
    return (*(*v1 + 32))(*(*(result + 48) + 48), result + 32);
  }

  return result;
}

- (void)setJumpSpeed:(double)a3
{
  self->_definition.jumpSpeed = a3;
  world = self->_world;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__SCNPhysicsCharacter_setJumpSpeed___block_invoke;
  v4[3] = &unk_2782FB820;
  v4[4] = self;
  [(SCNPhysicsWorld *)world _postCommandWithBlock:v4];
}

- (void)_update
{
  v3 = [(SCNPhysicsBody *)self->_definition.characterBody _owner];
  ghostObject = self->_ghostObject;
  v5 = ghostObject[1];
  v6 = ghostObject[2];
  v7 = ghostObject[3];
  v8 = ghostObject[4];
  v9 = vextq_s8(v7, v7, 8uLL);
  v9.i32[1] = 0;
  v11 = vzip1_s32(*v5.i8, *v6.i8);
  v12 = v7.i32[0];
  v13 = 0;
  v15 = v7.i32[1];
  v14 = vzip2_s32(*v5.i8, *v6.i8);
  v16 = 0;
  v10 = vextq_s8(v5, v9, 8uLL);
  v10.i32[1] = v6.i32[2];
  v17 = v10;
  v18 = v8.i64[0];
  v19 = v8.i32[2];
  v20 = 1065353216;
  [v3 setWorldTransform:&v11];
}

- (void)_addToPhysicsWorld:(id)a3 definition:(id *)a4
{
  world = self->_world;
  if (world)
  {
    v7 = world == a3;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SCNPhysicsHingeJoint _addToPhysicsWorld:v8 definition:?];
    }
  }

  self->_world = a3;
  [(SCNPhysicsCharacter *)self _handleCreateIfNeeded:1];
  v9 = [(SCNPhysicsWorld *)self->_world _handle];
  if (self->_characterController)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = v9;
    (*(*v9 + 264))(v9);
    if (self->_ghostObject)
    {
      [(SCNPhysicsWorld *)self->_world _allowGhostObjects];
      (*(*v11 + 72))(v11, self->_ghostObject, 32, 3, 0);
    }
  }
}

- (void)_handleCreateIfNeeded:(BOOL)a3
{
  if (a3 && !self->_characterController)
  {
    v4 = [(SCNPhysicsBody *)self->_definition.characterBody _handle];
    if (v4)
    {
      v5 = v4;
      btCollisionObject::setActivationState(v4, 4);
      if ((*(v5 + 232) & 2) == 0)
      {
        operator new();
      }

      v13 = *(v5 + 2);
      *buf = *(v5 + 1);
      v14 = *buf;
      v18 = v13;
      v11 = *(v5 + 4);
      v19 = *(v5 + 3);
      v12 = v19;
      v20 = v11;
      v7 = btAlignedAllocInternal(336, 16);
      btPairCachingGhostObject::btPairCachingGhostObject(v7);
      self->_ghostObject = v7;
      *(v7 + 1) = v14;
      *(v7 + 2) = v13;
      *(v7 + 3) = v12;
      *(v7 + 4) = v11;
      v8 = *(v5 + 26);
      if (v8->var1 != 10)
      {
        (*(v8->var0 + 2))(*(v5 + 26), buf, v16, v15);
        v9 = v15[1] - v16[1];
        v10 = v15[0] - v16[0];
        v8 = btAlignedAllocInternal(80, 16);
        btCapsuleShape::btCapsuleShape(v8, v10, v9);
        self->_capsuleShape = v8;
      }

      (*(*self->_ghostObject + 24))(self->_ghostObject, v8);
      *(self->_ghostObject + 58) = 16;
      operator new();
    }

    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21BEF7000, v6, OS_LOG_TYPE_DEFAULT, "Warning: Character should already have a body", buf, 2u);
    }
  }
}

@end