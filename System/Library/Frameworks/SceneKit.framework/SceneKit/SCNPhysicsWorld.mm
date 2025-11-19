@interface SCNPhysicsWorld
- (BOOL)_isDefault;
- (BOOL)_needsRedraw;
- (BOOL)parseSpecialKey:(id)a3 withPath:(id)a4 intoDestination:(id *)a5;
- (NSArray)allBehaviors;
- (NSArray)contactTestBetweenBody:(SCNPhysicsBody *)bodyA andBody:(SCNPhysicsBody *)bodyB options:(NSDictionary *)options;
- (NSArray)contactTestWithBody:(SCNPhysicsBody *)body options:(NSDictionary *)options;
- (NSArray)convexSweepTestWithShape:(SCNPhysicsShape *)shape fromTransform:(SCNMatrix4 *)from toTransform:(SCNMatrix4 *)to options:(NSDictionary *)options;
- (NSArray)rayTestWithSegmentFromPoint:(SCNVector3)origin toPoint:(SCNVector3)dest options:(NSDictionary *)options;
- (SCNPhysicsWorld)initWithCoder:(id)a3;
- (SCNPhysicsWorld)initWithScene:(id)a3;
- (SCNVector3)gravity;
- (btVehicleRaycaster)_defaultVehicleRayCaster;
- (id)_findFieldAttachedToNode:(id)a3;
- (id)_physicsContact;
- (id)_rayTestWithSegmentFromPoint:(btVector3)a3 toPoint:(btVector3)a4 options:(id)a5;
- (id)removeBehavior_unsafe:(id *)result;
- (id)valueForUndefinedKey:(id)a3;
- (void)_addFieldToWorld:(id)a3;
- (void)_allowGhostObjects;
- (void)_createDynamicWorldIfNeeded;
- (void)_customEncodingOfSCNPhysicsWorld:(id)a3;
- (void)_didDecodeSCNPhysicsWorld:(id)a3;
- (void)_drawDebugInAuthoringEnvironment:(void *)a3;
- (void)_postCommandWithBlock:(id)a3;
- (void)_preTick:(double)a3;
- (void)_removeFieldFromWorld:(id)a3;
- (void)_reset;
- (void)_step:(double)a3;
- (void)_updatePhysicsFieldsTransforms;
- (void)addBehavior:(SCNPhysicsBehavior *)behavior;
- (void)addPhysicsBody:(id)a3 nodeRef:(__C3DNode *)a4 colGroup:(unint64_t)a5 colMask:(unint64_t)a6 colTest:(unint64_t)a7;
- (void)commonInit;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateBodiesUsingBlock:(id)a3;
- (void)removeAllBehaviors;
- (void)removeBehavior:(SCNPhysicsBehavior *)behavior;
- (void)removePhysicsBody:(id)a3 handle:(void *)a4;
- (void)sceneWillDie;
- (void)setContactDelegate:(id)contactDelegate;
- (void)setGravity:(SCNVector3)gravity;
- (void)setScale:(double)a3;
- (void)updateCollisionPairs;
- (void)wakeUpAllBodies;
@end

@implementation SCNPhysicsWorld

- (void)_preTick:(double)a3
{
  self->_elapsedTime = self->_elapsedTime + a3;
  if (self->_hasActiveFields)
  {
    btAlignedObjectArray<btRigidBody *>::btAlignedObjectArray(&v13, self->_world + 320);
    if (SHIDWORD(v13) >= 1)
    {
      v4 = 0;
      v5 = 8 * HIDWORD(v13);
      do
      {
        v6 = *(v14 + v4);
        v7 = *(v6 + 244);
        if (v7 != 2 && v7 != 5)
        {
          v9 = *(v6 + 200);
          if (v9)
          {
            v10 = *(v9 + 8);
          }

          else
          {
            LODWORD(v10) = -1;
          }

          elapsedTime = self->_elapsedTime;
          c3dAether::evalForce(&self->_aether, v10, *(v6 + 64), *(v6 + 352), 1.0 / *(v6 + 384), *(v6 + 532), elapsedTime);
          v12.i32[3] = 0;
          *(v6 + 464) = vaddq_f32(*(v6 + 464), vmulq_f32(v12, *(v6 + 400)));
        }

        v4 += 8;
      }

      while (v5 != v4);
    }

    if (v14)
    {
      if (v15 == 1)
      {
        btAlignedFreeInternal(v14);
      }
    }
  }
}

- (void)_createDynamicWorldIfNeeded
{
  if (!self->_world)
  {
    os_unfair_lock_lock(&self->_lock);
    if (!self->_world)
    {
      v3 = 0;
      v4 = 0;
      v5 = xmmword_21C2A2140;
      operator new();
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (id)_physicsContact
{
  result = self->_contact;
  if (!result)
  {
    result = objc_alloc_init(SCNPhysicsContact);
    self->_contact = result;
  }

  return result;
}

- (void)commonInit
{
  if ([SCNPhysicsWorld commonInit]::onceToken != -1)
  {
    [SCNPhysicsWorld commonInit];
  }

  self->_lock._os_unfair_lock_opaque = 0;
  self->_bodies = objc_alloc_init(MEMORY[0x277CBEB58]);
}

- (SCNPhysicsWorld)initWithScene:(id)a3
{
  v12.receiver = self;
  v12.super_class = SCNPhysicsWorld;
  v4 = [(SCNPhysicsWorld *)&v12 init];
  v5 = v4;
  if (v4)
  {
    [(SCNPhysicsWorld *)v4 commonInit];
    *&v5->_gravity.x = 0xC11CCCCD00000000;
    v5->_gravity.z = 0.0;
    __asm { FMOV            V0.2D, #1.0 }

    *&v5->_speed = _Q0;
    v5->_timeStep = 0.0166666667;
    v5->_scene = a3;
  }

  return v5;
}

- (void)dealloc
{
  v37 = *MEMORY[0x277D85DE8];
  behaviors = self->_behaviors;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __26__SCNPhysicsWorld_dealloc__block_invoke;
  v34[3] = &unk_2782FB9F0;
  v34[4] = self;
  [(NSMutableArray *)behaviors enumerateObjectsUsingBlock:v34];
  v4 = [(NSMutableArray *)self->_fields copy];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v30 + 1) + 8 * i) _willRemoveFromPhysicsWorld];
      }

      v6 = [v4 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v6);
  }

  if (self->_world)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    bodies = self->_bodies;
    v10 = [(NSMutableSet *)bodies countByEnumeratingWithState:&v26 objects:v35 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v27;
      do
      {
        for (j = 0; j != v11; ++j)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(bodies);
          }

          v14 = [*(*(&v26 + 1) + 8 * j) _handle];
          if (v14)
          {
            (*(*self->_world + 184))(self->_world, v14);
          }
        }

        v11 = [(NSMutableSet *)bodies countByEnumeratingWithState:&v26 objects:v35 count:16];
      }

      while (v11);
    }
  }

  vehicleRayCaster = self->_vehicleRayCaster;
  if (vehicleRayCaster)
  {
    (*(vehicleRayCaster->var0 + 1))(vehicleRayCaster);
  }

  debugDrawer = self->_debugDrawer;
  if (debugDrawer)
  {
    (*(debugDrawer->var0 + 1))(debugDrawer);
  }

  world = self->_world;
  if (world)
  {
    v18 = world[5];
    v19 = v18[1311];
    v20 = world[12];
    v21 = (*(*world + 200))(world);
    if (self->_ghostPairCallback)
    {
      v22 = (*(*v20 + 72))(v20);
      (*(*v22 + 120))(v22, 0);
      ghostPairCallback = self->_ghostPairCallback;
      if (ghostPairCallback)
      {
        (*(ghostPairCallback->var0 + 1))(ghostPairCallback);
      }

      self->_ghostPairCallback = 0;
    }

    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    (*(*v18 + 8))(v18);
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v24 = self->_world;
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }
  }

  objc_storeWeak(&self->_contactDelegate, 0);
  v25.receiver = self;
  v25.super_class = SCNPhysicsWorld;
  [(SCNPhysicsWorld *)&v25 dealloc];
}

- (void)sceneWillDie
{
  self->_scene = 0;
  world = self->_world;
  if (world)
  {
    v3 = *(world + 3);
    if (v3)
    {
      if (*(world + 32) == 1)
      {
        btAlignedFreeInternal(v3);
      }
    }

    *(world + 32) = 1;
    *(world + 3) = 0;
    *(world + 3) = 0;
    *(world + 4) = 0;
  }
}

- (BOOL)_isDefault
{
  v5.y = -9.8;
  v5.x = 0.0;
  v5.z = 0.0;
  v3 = SCNVector3EqualToVector3(self->_gravity, v5);
  if (v3)
  {
    LOBYTE(v3) = self->_speed == 1.0 && self->_scale == 1.0 && self->_timeStep == 0.0166666667 && [(NSMutableArray *)self->_behaviors count]== 0;
  }

  return v3;
}

- (void)wakeUpAllBodies
{
  world = self->_world;
  if (world)
  {
    btDiscreteDynamicsWorld::activateAllBodies(world);
  }
}

- (void)setGravity:(SCNVector3)gravity
{
  self->_gravity = gravity;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __30__SCNPhysicsWorld_setGravity___block_invoke;
  v3[3] = &unk_2782FB848;
  v3[4] = self;
  v4 = gravity;
  [(SCNPhysicsWorld *)self _postCommandWithBlock:v3];
}

uint64_t __30__SCNPhysicsWorld_setGravity___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 8);
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = 0;
    (*(*result + 144))(result, &v3);
    return [*(a1 + 32) wakeUpAllBodies];
  }

  return result;
}

- (SCNVector3)gravity
{
  x = self->_gravity.x;
  y = self->_gravity.y;
  z = self->_gravity.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setScale:(double)a3
{
  if (self->_scale != a3)
  {
    self->_scale = a3;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __28__SCNPhysicsWorld_setScale___block_invoke;
    v8[3] = &unk_2782FB7D0;
    v8[4] = self;
    *&v8[5] = a3;
    [(SCNPhysicsWorld *)self _postCommandWithBlock:v8];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __28__SCNPhysicsWorld_setScale___block_invoke_2;
    v7[3] = &__block_descriptor_40_e28_v24__0__SCNPhysicsBody_8_B16l;
    *&v7[4] = a3;
    [(SCNPhysicsWorld *)self enumerateBodiesUsingBlock:v7];
    debugDrawer = self->_debugDrawer;
    if (debugDrawer)
    {
      scale = self->_scale;
      debugDrawer->var2 = 1.0 / scale;
    }
  }
}

float __28__SCNPhysicsWorld_setScale___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  if (v1)
  {
    result = *(a1 + 40);
    *(v1 + 228) = result;
  }

  return result;
}

- (void)setContactDelegate:(id)contactDelegate
{
  if (objc_loadWeak(&self->_contactDelegate) != contactDelegate)
  {
    objc_storeWeak(&self->_contactDelegate, contactDelegate);
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__SCNPhysicsWorld_setContactDelegate___block_invoke;
  v5[3] = &unk_2782FC950;
  v5[4] = self;
  v5[5] = contactDelegate;
  [(SCNPhysicsWorld *)self _postCommandWithBlock:v5];
}

uint64_t __38__SCNPhysicsWorld_setContactDelegate___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  if (v1)
  {
    return btC3DCollisionDispatcher::setDelegate(*(v1 + 40), *(result + 40));
  }

  return result;
}

- (void)addBehavior:(SCNPhysicsBehavior *)behavior
{
  v9 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  behaviors = self->_behaviors;
  if (!behaviors)
  {
    behaviors = objc_alloc_init(MEMORY[0x277CBEB18]);
    self->_behaviors = behaviors;
  }

  [(NSMutableArray *)behaviors addObject:behavior];
  self->_activeBehaviorsValid = 0;
  os_unfair_lock_unlock(&self->_lock);
  [(SCNPhysicsBehavior *)behavior _copyDefinition:__src];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__SCNPhysicsWorld_addBehavior___block_invoke;
  v6[3] = &unk_2782FEB10;
  v6[4] = behavior;
  v6[5] = self;
  memcpy(v7, __src, sizeof(v7));
  [(SCNPhysicsWorld *)self _postCommandWithBlock:v6];
}

uint64_t __31__SCNPhysicsWorld_addBehavior___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  memcpy(v5, (a1 + 48), sizeof(v5));
  [v2 _addToPhysicsWorld:v3 definition:v5];
  [objc_msgSend(*(a1 + 32) "bodyA")];
  return [objc_msgSend(*(a1 + 32) "bodyB")];
}

uint64_t __41__SCNPhysicsWorld_removeBehavior_unsafe___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _willRemoveFromPhysicsWorld:*(a1 + 40)];
  [objc_msgSend(*(a1 + 32) "bodyA")];
  v2 = [*(a1 + 32) bodyB];

  return [v2 _activate];
}

- (void)removeAllBehaviors
{
  v13 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_behaviors copy];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(SCNPhysicsWorld *)&self->super.isa removeBehavior_unsafe:?];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)parseSpecialKey:(id)a3 withPath:(id)a4 intoDestination:(id *)a5
{
  v8 = [a3 rangeOfString:{@"[", a4}];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v9 = v8;
  v10 = v8 + 1;
  if (v8 + 1 >= [a3 length])
  {
    return 0;
  }

  v11 = [a3 substringToIndex:v9];
  v12 = [a3 substringFromIndex:v10];
  v13 = [v12 rangeOfString:@"]"];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v14 = [objc_msgSend(v12 substringToIndex:{v13), "intValue"}];
  v15 = [(SCNPhysicsWorld *)self valueForKey:v11];
  if ([v15 count] <= v14)
  {
    return 0;
  }

  *a5 = [v15 objectAtIndex:v14];
  return 1;
}

- (id)valueForUndefinedKey:(id)a3
{
  v7 = 0;
  if ([(SCNPhysicsWorld *)self parseSpecialKey:a3 withPath:a3 intoDestination:&v7])
  {
    return v7;
  }

  v6.receiver = self;
  v6.super_class = SCNPhysicsWorld;
  return [(SCNPhysicsWorld *)&v6 valueForUndefinedKey:a3];
}

- (NSArray)allBehaviors
{
  if (self->_behaviors)
  {
    return &self->_behaviors->super;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (NSArray)rayTestWithSegmentFromPoint:(SCNVector3)origin toPoint:(SCNVector3)dest options:(NSDictionary *)options
{
  *&v5 = *&origin.x;
  *(&v5 + 1) = LODWORD(origin.z);
  *&v6 = *&dest.x;
  *(&v6 + 1) = LODWORD(dest.z);
  v8 = v6;
  v9 = v5;
  result = [(SCNPhysicsWorld *)self _rayTestWithSegmentFromPoint:&v9 toPoint:&v8 options:options];
  if (!result)
  {
    return MEMORY[0x277CBEBF8];
  }

  return result;
}

- (id)_rayTestWithSegmentFromPoint:(btVector3)a3 toPoint:(btVector3)a4 options:(id)a5
{
  v7 = v6;
  v8 = v5;
  v11 = [-[SCNPhysicsWorld scene](self scene];
  if (!v11 || !self->_world)
  {
    return 0;
  }

  v12 = v11;
  btC3DRayResultCallback::btC3DRayResultCallback(v25, a5, v8);
  v13 = [v7 objectForKey:@"backfaceCulling"];
  if (!v13 || [v13 BOOLValue])
  {
    v26 |= 1u;
  }

  v14 = [v7 objectForKey:@"results"];
  if ([v14 isEqualToString:@"all"])
  {
    v15 = 2;
  }

  else
  {
    v15 = [v14 isEqualToString:@"closest"] ^ 1;
  }

  v27 = v15;
  v16 = [v7 objectForKey:@"collisionBitMask"];
  if (v16)
  {
    v17 = [v16 unsignedIntegerValue];
  }

  else
  {
    v17 = -1;
  }

  v25[4] = v17;
  C3DSceneLock(v12);
  (*(*self->_world + 64))(self->_world, a5, v8, v25);
  C3DSceneUnlock(v12);
  if (v27 == 2)
  {
    v18 = v30;
    v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:v30];
    if (v18 >= 1)
    {
      for (i = 0; i != v18; ++i)
      {
        v21 = _hitTestResult(*(v31 + i), v39 + i, v35 + i);
        if (v21)
        {
          [v19 addObject:v21];
        }
      }
    }
  }

  else
  {
    v22 = _hitTestResult(v25[2], &v29, &v28);
    if (!v22)
    {
      v19 = 0;
      v23 = 0;
      goto LABEL_22;
    }

    v19 = [MEMORY[0x277CBEA60] arrayWithObject:v22];
  }

  v23 = 1;
LABEL_22:
  v25[0] = &unk_282DC57E0;
  if (v43 && v44 == 1)
  {
    btAlignedFreeInternal(v43);
  }

  v44 = 1;
  v43 = 0;
  v41 = 0;
  v42 = 0;
  if (v39 && v40 == 1)
  {
    btAlignedFreeInternal(v39);
  }

  v40 = 1;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  if (v35 && v36 == 1)
  {
    btAlignedFreeInternal(v35);
  }

  v36 = 1;
  v35 = 0;
  v33 = 0;
  v34 = 0;
  if (v31 && v32 == 1)
  {
    btAlignedFreeInternal(v31);
  }

  if ((v23 & 1) == 0)
  {
    return 0;
  }

  return v19;
}

- (NSArray)contactTestBetweenBody:(SCNPhysicsBody *)bodyA andBody:(SCNPhysicsBody *)bodyB options:(NSDictionary *)options
{
  v9 = [-[SCNPhysicsWorld scene](self "scene")];
  if (v9)
  {
    world = self->_world;
    if (world)
    {
      v11 = v9;
      v12 = [(NSDictionary *)options objectForKey:@"collisionBitMask"];
      if (v12)
      {
        v13 = [v12 unsignedIntegerValue];
      }

      else
      {
        v13 = -1;
      }

      v17 = &unk_282DC5810;
      v18 = xmmword_21C281170;
      v19 = xmmword_21C27F640;
      v20 = v13;
      v21 = 0;
      C3DSceneLock(v11);
      v14 = [(SCNPhysicsBody *)bodyA _handle];
      v15 = [(SCNPhysicsBody *)bodyB _handle];
      if (v14 && v15)
      {
        btCollisionWorld::contactPairTest(self->_world, v14, v15, &v17);
      }

      C3DSceneUnlock(v11);
      world = v21;
    }
  }

  else
  {
    world = 0;
  }

  if (world)
  {
    return world;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (NSArray)contactTestWithBody:(SCNPhysicsBody *)body options:(NSDictionary *)options
{
  v7 = [-[SCNPhysicsWorld scene](self "scene")];
  if (v7)
  {
    world = self->_world;
    if (world)
    {
      v9 = v7;
      v10 = [(NSDictionary *)options objectForKey:@"collisionBitMask"];
      if (v10)
      {
        v11 = [v10 unsignedIntegerValue];
      }

      else
      {
        v11 = -1;
      }

      v14 = &unk_282DC5810;
      v15 = xmmword_21C281170;
      v16 = xmmword_21C27F640;
      v17 = v11;
      v18 = 0;
      C3DSceneLock(v9);
      v12 = [(SCNPhysicsBody *)body _handle];
      if (v12)
      {
        btCollisionWorld::contactTest(self->_world, v12, &v14);
      }

      C3DSceneUnlock(v9);
      world = v18;
    }
  }

  else
  {
    world = 0;
  }

  if (world)
  {
    return world;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (NSArray)convexSweepTestWithShape:(SCNPhysicsShape *)shape fromTransform:(SCNMatrix4 *)from toTransform:(SCNMatrix4 *)to options:(NSDictionary *)options
{
  v60 = *MEMORY[0x277D85DE8];
  v11 = [-[SCNPhysicsWorld scene](self "scene")];
  if (!v11)
  {
    return MEMORY[0x277CBEBF8];
  }

  v12 = MEMORY[0x277CBEBF8];
  if (self->_world)
  {
    v13 = v11;
    v14 = [(NSDictionary *)options objectForKey:@"ccdPenetration"];
    if (v14)
    {
      [v14 floatValue];
      v16 = v15;
    }

    else
    {
      v16 = 0.0;
    }

    v17 = [(NSDictionary *)options objectForKey:@"collisionBitMask"];
    if (v17)
    {
      v18 = [v17 unsignedIntegerValue];
    }

    else
    {
      v18 = -1;
    }

    v19 = [(NSDictionary *)options objectForKey:@"results"];
    if ([v19 isEqualToString:@"all"])
    {
      v20 = 2;
    }

    else
    {
      v20 = [v19 isEqualToString:@"closest"] ^ 1;
    }

    C3DSceneLock(v13);
    v21 = [(SCNPhysicsShape *)shape _handle];
    if (v21)
    {
      if (v21->var1 > 19)
      {
        v41 = scn_default_log();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          [SCNPhysicsWorld convexSweepTestWithShape:v41 fromTransform:? toTransform:? options:?];
        }
      }

      else
      {
        m12 = from->m12;
        m13 = from->m13;
        m21 = from->m21;
        m22 = from->m22;
        m23 = from->m23;
        m31 = from->m31;
        m32 = from->m32;
        m33 = from->m33;
        m43 = from->m43;
        v46[0] = LODWORD(from->m11);
        *&v46[1] = m21;
        *&v46[2] = m31;
        v46[3] = 0;
        *&v46[4] = m12;
        *&v46[5] = m22;
        *&v46[6] = m32;
        v46[7] = 0;
        *&v46[8] = m13;
        *&v46[9] = m23;
        *&v46[10] = m33;
        v46[11] = 0;
        *&v47 = *&from->m41;
        *(&v47 + 1) = LODWORD(m43);
        v31 = to->m12;
        v32 = to->m13;
        v33 = to->m21;
        v34 = to->m22;
        v35 = to->m23;
        v36 = to->m31;
        v37 = to->m32;
        v38 = to->m33;
        v39 = to->m43;
        v44[0] = LODWORD(to->m11);
        *&v44[1] = v33;
        *&v44[2] = v36;
        v44[3] = 0;
        *&v44[4] = v31;
        *&v44[5] = v34;
        *&v44[6] = v37;
        v44[7] = 0;
        *&v44[8] = v32;
        *&v44[9] = v35;
        *&v44[10] = v38;
        v44[11] = 0;
        *&v45 = *&to->m41;
        *(&v45 + 1) = LODWORD(v39);
        v49 = 1.0;
        v50 = 1;
        v51 = v18;
        v52 = 0;
        v53 = v47;
        v54 = v45;
        v56 = 0;
        v59 = 0;
        v48 = &unk_282DC5840;
        v55 = v20;
        btCollisionWorld::convexSweepTest(self->_world, v21, v46, v44, &v48, v16);
        if (v49 < 1.0)
        {
          if (v20 == 2)
          {
            v40 = v59;
            goto LABEL_21;
          }

          v43 = __contact(v56, 0, &v58, &v57, 0.0, v49);
          if (v43)
          {
            v40 = [MEMORY[0x277CBEA60] arrayWithObject:v43];
LABEL_21:
            C3DSceneUnlock(v13);
            if (v40)
            {
              return v40;
            }

            return v12;
          }
        }
      }
    }

    v40 = 0;
    goto LABEL_21;
  }

  return v12;
}

- (void)updateCollisionPairs
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __39__SCNPhysicsWorld_updateCollisionPairs__block_invoke;
  v2[3] = &unk_2782FB820;
  v2[4] = self;
  [(SCNPhysicsWorld *)self _postCommandWithBlock:v2];
}

uint64_t __39__SCNPhysicsWorld_updateCollisionPairs__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 8);
  if (result)
  {
    (*(*result + 16))(result);
    v3 = *(**(*(a1 + 32) + 8) + 24);

    return v3();
  }

  return result;
}

- (BOOL)_needsRedraw
{
  if (self->_speed == 0.0)
  {
    LOBYTE(world) = 0;
  }

  else
  {
    world = self->_world;
    if (world)
    {
      LOBYTE(world) = world[448];
    }
  }

  return world & 1;
}

- (void)enumerateBodiesUsingBlock:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v14 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  bodies = self->_bodies;
  v6 = [(NSMutableSet *)bodies countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v11 != v8)
      {
        objc_enumerationMutation(bodies);
      }

      (*(a3 + 2))(a3, *(*(&v10 + 1) + 8 * v9), &v14);
      if (v14)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableSet *)bodies countByEnumeratingWithState:&v10 objects:v15 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_reset
{
  v21 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  bodies = self->_bodies;
  v4 = [(NSMutableSet *)bodies countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(bodies);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        [v8 clearAllForces];
        [v8 resetTransform];
        LODWORD(v9) = 0;
        LODWORD(v10) = 0;
        LODWORD(v11) = 0;
        [v8 setVelocity:{v9, v10, v11}];
        LODWORD(v12) = 0;
        LODWORD(v13) = 0;
        LODWORD(v14) = 0;
        LODWORD(v15) = 0;
        [v8 setAngularVelocity:{v12, v13, v14, v15}];
      }

      v5 = [(NSMutableSet *)bodies countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_findFieldAttachedToNode:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  fields = self->_fields;
  v5 = [(NSMutableArray *)fields countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(fields);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([v9 _owner] == a3)
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)fields countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)_addFieldToWorld:(id)a3
{
  fields = self->_fields;
  if (!fields)
  {
    fields = objc_alloc_init(MEMORY[0x277CBEB18]);
    self->_fields = fields;
  }

  [(NSMutableArray *)fields addObject:a3];
  [a3 _setWorld:self];
  v6 = [a3 _handle];
  if (v6)
  {

    c3dAether::addField(&self->_aether, v6);
  }
}

- (void)_removeFieldFromWorld:(id)a3
{
  [(NSMutableArray *)self->_fields removeObject:?];
  v5 = [a3 _handle];

  c3dAether::removeField(&self->_aether, v5);
}

- (void)_updatePhysicsFieldsTransforms
{
  v25 = *MEMORY[0x277D85DE8];
  self->_hasActiveFields = 0;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  fields = self->_fields;
  v4 = [(NSMutableArray *)fields countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(fields);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        self->_hasActiveFields |= [v8 isActive];
        v9 = [objc_msgSend(v8 "_owner")];
        v10 = [v8 _handle];
        WorldMatrix = C3DNodeGetWorldMatrix(v9);
        C3DMatrix4x4Invert(WorldMatrix, &v19);
        v12 = WorldMatrix[1];
        v13 = WorldMatrix[2];
        v14 = WorldMatrix[3];
        v15 = v19.columns[0];
        v16 = v19.columns[1];
        v17 = v19.columns[2];
        v18 = v19.columns[3];
        v10[1] = *WorldMatrix;
        v10[2] = v12;
        v10[3] = v13;
        v10[4] = v14;
        v10[5] = v15;
        v10[6] = v16;
        v10[7] = v17;
        v10[8] = v18;
        (*(*v10 + 40))(v10);
      }

      v5 = [(NSMutableArray *)fields countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }
}

- (void)_step:(double)a3
{
  v21 = *MEMORY[0x277D85DE8];
  world = self->_world;
  if (world)
  {
    timeStep = self->_timeStep;
    speed = self->_speed;
    a3 = speed * a3;
    *&a3 = a3;
    *&speed = speed * ((1.0 / timeStep) / 15.0);
    v7 = vcvtps_s32_f32(*&speed);
    if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    v9 = world[5];
    if (!self->_firstSimulationDone)
    {
      self->_firstSimulationDone = 1;
      if (timeStep >= *&a3)
      {
        *&a3 = timeStep;
      }
    }

    (*(*world + 104))(world, v8, *&a3);
    if (objc_loadWeak(&self->_contactDelegate))
    {
      btC3DCollisionDispatcher::dispatchContactsToDelegate(v9);
    }

    if (!self->_activeBehaviorsValid)
    {
      os_unfair_lock_lock(&self->_lock);
      self->_activeBehaviorsValid = 1;

      self->_activeBehaviors = [(NSMutableArray *)self->_behaviors copy];
      os_unfair_lock_unlock(&self->_lock);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    activeBehaviors = self->_activeBehaviors;
    v11 = [(NSArray *)activeBehaviors countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(activeBehaviors);
          }

          v15 = *(*(&v16 + 1) + 8 * v14);
          if (objc_opt_respondsToSelector())
          {
            [v15 _update];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [(NSArray *)activeBehaviors countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }
  }
}

- (btVehicleRaycaster)_defaultVehicleRayCaster
{
  result = self->_vehicleRayCaster;
  if (!result)
  {
    [(SCNPhysicsWorld *)self _createDynamicWorldIfNeeded];
    operator new();
  }

  return result;
}

- (void)_allowGhostObjects
{
  if (!self->_ghostPairCallback)
  {
    [(SCNPhysicsWorld *)self _createDynamicWorldIfNeeded:v3];
    operator new();
  }
}

- (void)_postCommandWithBlock:(id)a3
{
  v5 = [(SCNScene *)self->_scene sceneRef];
  scene = self->_scene;

  [SCNTransaction postCommandWithContext:v5 object:scene applyBlock:a3];
}

- (void)_drawDebugInAuthoringEnvironment:(void *)a3
{
  if (self->_world)
  {
    debugDrawer = self->_debugDrawer;
    if (debugDrawer)
    {
      debugDrawer->var3 = a3;
      (*(*self->_world + 32))(self->_world, self->_debugDrawer);
      (*(*self->_world + 48))(self->_world);
      (*(*self->_world + 32))(self->_world, 0);
      self->_debugDrawer->var3 = 0;
    }
  }
}

- (void)addPhysicsBody:(id)a3 nodeRef:(__C3DNode *)a4 colGroup:(unint64_t)a5 colMask:(unint64_t)a6 colTest:(unint64_t)a7
{
  v13 = [(SCNPhysicsWorld *)self _handle];
  if (v13)
  {
    v14 = v13;
    [a3 centerOfMassOffset];
    v16.n128_u32[1] = v15;
    v16.n128_u32[2] = v17;
    C3DPhysicsWorldAddBodyToWorld(v14, [a3 _handle], a4, a5, a6, a7, v16);
  }

  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_bodies addObject:a3];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removePhysicsBody:(id)a3 handle:(void *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  world = self->_world;
  if (world)
  {
    (*(*world + 184))(world, a4);
  }

  os_unfair_lock_lock(&self->_lock);
  v7 = [(NSMutableArray *)self->_behaviors copy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if ([v12 hasReferenceToPhysicsBody:a3])
        {
          [(SCNPhysicsWorld *)&self->super.isa removeBehavior_unsafe:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  [(NSMutableSet *)self->_bodies removeObject:a3];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_customEncodingOfSCNPhysicsWorld:(id)a3
{
  behaviors = self->_behaviors;
  if (behaviors)
  {
    [a3 encodeObject:behaviors forKey:@"behaviors"];
  }
}

- (void)_didDecodeSCNPhysicsWorld:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [a3 scn_decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"behaviors"];
  [SCNTransaction setImmediateMode:0];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(SCNPhysicsWorld *)self addBehavior:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)encodeWithCoder:(id)a3
{
  [(SCNPhysicsWorld *)self _customEncodingOfSCNPhysicsWorld:?];
  scene = self->_scene;
  if (scene)
  {
    [a3 encodeObject:scene forKey:@"scene"];
  }

  SCNEncodeVector3(a3, @"gravity", self->_gravity.x, self->_gravity.y, self->_gravity.z);
  [a3 encodeDouble:@"speed" forKey:self->_speed];
  [a3 encodeDouble:@"scale" forKey:self->_scale];
  timeStep = self->_timeStep;

  [a3 encodeDouble:@"timeStep" forKey:timeStep];
}

- (SCNPhysicsWorld)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = SCNPhysicsWorld;
  v4 = [(SCNPhysicsWorld *)&v8 init];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    [(SCNPhysicsWorld *)v4 _customDecodingOfSCNPhysicsWorld:a3];
    -[SCNPhysicsWorld setScene:](v4, "setScene:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"scene"]);
    *&v6 = SCNDecodeVector3(a3, @"gravity");
    [(SCNPhysicsWorld *)v4 setGravity:v6];
    [a3 decodeDoubleForKey:@"speed"];
    [(SCNPhysicsWorld *)v4 setSpeed:?];
    [a3 decodeDoubleForKey:@"scale"];
    [(SCNPhysicsWorld *)v4 setScale:?];
    [a3 decodeDoubleForKey:@"timeStep"];
    [(SCNPhysicsWorld *)v4 setTimeStep:?];
    [(SCNPhysicsWorld *)v4 _didDecodeSCNPhysicsWorld:a3];
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

- (id)removeBehavior_unsafe:(id *)result
{
  if (result)
  {
    v3 = result;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __41__SCNPhysicsWorld_removeBehavior_unsafe___block_invoke;
    v4[3] = &unk_2782FC950;
    v4[4] = a2;
    v4[5] = result;
    [result _postCommandWithBlock:v4];
    result = [v3[23] removeObject:a2];
    *(v3 + 200) = 0;
  }

  return result;
}

- (void)removeBehavior:(SCNPhysicsBehavior *)behavior
{
  os_unfair_lock_lock(&self->_lock);
  [(SCNPhysicsWorld *)&self->super.isa removeBehavior_unsafe:?];

  os_unfair_lock_unlock(&self->_lock);
}

@end