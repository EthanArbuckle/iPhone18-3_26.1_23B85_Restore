@interface SCNPhysicsVehicle
+ (SCNPhysicsVehicle)vehicleWithChassisBody:(SCNPhysicsBody *)chassisBody wheels:(NSArray *)wheels;
- (NSArray)wheels;
- (SCNPhysicsVehicle)initWithChassisBody:(id)a3 wheels:(id)a4;
- (SCNPhysicsVehicle)initWithCoder:(id)a3;
- (id)valueForKeyPath:(id)a3;
- (id)wheelAtIndex:(unint64_t)a3;
- (void)_addToPhysicsWorld:(id)a3 definition:(id *)a4;
- (void)_createWheel:(id)a3;
- (void)_handleCreateIfNeeded:(BOOL)a3;
- (void)_initializeWheelsArray;
- (void)_update;
- (void)_willRemoveFromPhysicsWorld:(id)a3;
- (void)applyBrakingForce:(CGFloat)value forWheelAtIndex:(NSInteger)index;
- (void)applyEngineForce:(CGFloat)value forWheelAtIndex:(NSInteger)index;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setSteeringAngle:(CGFloat)value forWheelAtIndex:(NSInteger)index;
- (void)setValue:(id)a3 forKeyPath:(id)a4;
@end

@implementation SCNPhysicsVehicle

- (void)_initializeWheelsArray
{
  wheels = self->_wheels;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __43__SCNPhysicsVehicle__initializeWheelsArray__block_invoke;
  v3[3] = &unk_2783019E8;
  v3[4] = self;
  [(NSArray *)wheels enumerateObjectsUsingBlock:v3];
}

uint64_t __43__SCNPhysicsVehicle__initializeWheelsArray__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  [a2 _setVehicle:*(a1 + 32)];

  return [a2 _setWheelIndex:a3];
}

- (SCNPhysicsVehicle)initWithChassisBody:(id)a3 wheels:(id)a4
{
  v8.receiver = self;
  v8.super_class = SCNPhysicsVehicle;
  v6 = [(SCNPhysicsVehicle *)&v8 init];
  if (v6)
  {
    v6->_chassisBody = a3;
    v6->_wheels = [a4 copy];
    [(SCNPhysicsVehicle *)v6 _initializeWheelsArray];
  }

  return v6;
}

+ (SCNPhysicsVehicle)vehicleWithChassisBody:(SCNPhysicsBody *)chassisBody wheels:(NSArray *)wheels
{
  v4 = [[a1 alloc] initWithChassisBody:chassisBody wheels:wheels];

  return v4;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  wheels = self->_wheels;
  v4 = [(NSArray *)wheels countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(wheels);
        }

        [*(*(&v9 + 1) + 8 * i) _setVehicle:0];
      }

      v5 = [(NSArray *)wheels countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = SCNPhysicsVehicle;
  [(SCNPhysicsVehicle *)&v8 dealloc];
}

- (NSArray)wheels
{
  v2 = [(NSArray *)self->_wheels copy];

  return v2;
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
  [(SCNPhysicsVehicle *)self _handleCreateIfNeeded:1];
  v9 = [(SCNPhysicsWorld *)self->_world _handle];
  if (self->_vehicle)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    (*(*v9 + 248))(v9);
  }
}

- (void)_willRemoveFromPhysicsWorld:(id)a3
{
  if (self->_vehicle)
  {
    v4 = [a3 _handle];
    (*(*v4 + 256))(v4, self->_vehicle);
    vehicle = self->_vehicle;
    if (vehicle)
    {
      (*(*vehicle + 8))(vehicle);
    }

    self->_vehicle = 0;
  }
}

- (void)setSteeringAngle:(CGFloat)value forWheelAtIndex:(NSInteger)index
{
  world = self->_world;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__SCNPhysicsVehicle_setSteeringAngle_forWheelAtIndex___block_invoke;
  v5[3] = &unk_2782FE238;
  v5[4] = self;
  *&v5[5] = value;
  v5[6] = index;
  [(SCNPhysicsWorld *)world _postCommandWithBlock:v5];
}

uint64_t __54__SCNPhysicsVehicle_setSteeringAngle_forWheelAtIndex___block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 32))
  {
    v1 = *(result + 40);
    return btRaycastVehicle::setSteeringValue(*(*(result + 32) + 32), v1, *(result + 48));
  }

  return result;
}

- (void)applyEngineForce:(CGFloat)value forWheelAtIndex:(NSInteger)index
{
  world = self->_world;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__SCNPhysicsVehicle_applyEngineForce_forWheelAtIndex___block_invoke;
  v5[3] = &unk_2782FE238;
  v5[4] = self;
  *&v5[5] = value;
  v5[6] = index;
  [(SCNPhysicsWorld *)world _postCommandWithBlock:v5];
}

uint64_t __54__SCNPhysicsVehicle_applyEngineForce_forWheelAtIndex___block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 32))
  {
    v1 = *(result + 40);
    return btRaycastVehicle::applyEngineForce(*(*(result + 32) + 32), v1, *(result + 48));
  }

  return result;
}

- (void)applyBrakingForce:(CGFloat)value forWheelAtIndex:(NSInteger)index
{
  world = self->_world;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__SCNPhysicsVehicle_applyBrakingForce_forWheelAtIndex___block_invoke;
  v5[3] = &unk_2782FE238;
  v5[4] = self;
  *&v5[5] = value;
  v5[6] = index;
  [(SCNPhysicsWorld *)world _postCommandWithBlock:v5];
}

uint64_t __55__SCNPhysicsVehicle_applyBrakingForce_forWheelAtIndex___block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 32))
  {
    v1 = *(result + 40);
    return btRaycastVehicle::setBrake(*(*(result + 32) + 32), v1, *(result + 48));
  }

  return result;
}

- (void)_createWheel:(id)a3
{
  vehicle = self->_vehicle;
  [a3 suspensionStiffness];
  *&v5 = v5;
  LODWORD(v34) = LODWORD(v5);
  [a3 suspensionCompression];
  *&v6 = v6;
  DWORD1(v34) = LODWORD(v6);
  [a3 suspensionDamping];
  *&v7 = v7;
  DWORD2(v34) = LODWORD(v7);
  [a3 frictionSlip];
  *&v8 = v8 * 10.5;
  v35 = LODWORD(v8);
  [a3 maximumSuspensionForce];
  *&v9 = v9;
  v36 = LODWORD(v9);
  [a3 maximumSuspensionTravel];
  *&v10 = v10;
  HIDWORD(v34) = LODWORD(v10);
  [a3 steeringAxis];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [a3 axle];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [a3 connectionPosition];
  [a3 suspensionRestLength];
  v27 = v26;
  [a3 radius];
  v29 = v28;
  v30 = btRaycastVehicle::addWheel(vehicle, &v33, &v32, &v31, &v34, [a3 isFront], v27, v29);
  *(v30 + 288) = [objc_msgSend(a3 "node")];
}

- (void)_handleCreateIfNeeded:(BOOL)a3
{
  v9 = *MEMORY[0x277D85DE8];
  if (a3 && !self->_vehicle)
  {
    if ([(SCNPhysicsBody *)self->_chassisBody sceneRef])
    {
      v4 = [(SCNPhysicsBody *)self->_chassisBody _handle];
      if (v4)
      {
        btCollisionObject::setActivationState(v4, 4);
        [(SCNPhysicsWorld *)self->_world _defaultVehicleRayCaster];
        *buf = xmmword_21C2A3E90;
        v8 = 0x45BB800041280000;
        operator new();
      }

      v6 = scn_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21BEF7000, v6, OS_LOG_TYPE_DEFAULT, "Warning: Chassis should already have a body", buf, 2u);
      }
    }

    else
    {
      v5 = scn_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [SCNPhysicsVehicle _handleCreateIfNeeded:v5];
      }
    }
  }
}

- (void)_update
{
  vehicle = self->_vehicle;
  if (vehicle)
  {
    v4 = *(vehicle + 51);
    if (v4 >= 1)
    {
      for (i = 0; i != v4; ++i)
      {
        btRaycastVehicle::updateWheelTransform(self->_vehicle, i, 1);
        WheelInfo = btRaycastVehicle::getWheelInfo(self->_vehicle, i);
        v7 = *(WheelInfo + 288);
        Parent = C3DNodeGetParent(v7);
        if (Parent)
        {
          WorldMatrix = C3DNodeGetWorldMatrix(Parent);
          C3DMatrix4x4Invert(WorldMatrix, &v21);
          v10 = *(WheelInfo + 112);
          v11 = *(WheelInfo + 128);
          v12 = *(WheelInfo + 144);
          v13 = *(WheelInfo + 160);
          v14 = vtrn1q_s32(v10, v11);
          *&v15 = vextq_s8(v14, v14, 8uLL).u64[0];
          v14.i64[1] = v12.u32[0];
          *v10.i8 = vzip2_s32(*v10.i8, *v11.i8);
          v10.u64[1] = vzip2_s32(*v12.i8, 0);
          *(&v15 + 1) = vextq_s8(v12, v12, 8uLL).u32[0];
          v17[0] = v14;
          v17[1] = v10;
          v17[2] = v15;
          v18 = v13;
          v19 = DWORD2(v13);
          v20 = 1065353216;
          C3DMatrix4x4Mult(v17, &v21, v16);
          C3DNodeSetMatrix(v7, v16);
        }
      }

      vehicle = self->_vehicle;
    }

    self->_speedKmHour = vehicle[42];
  }
}

- (id)wheelAtIndex:(unint64_t)a3
{
  if ([(NSArray *)self->_wheels count]<= a3)
  {
    return 0;
  }

  wheels = self->_wheels;

  return [(NSArray *)wheels objectAtIndex:a3];
}

- (void)setValue:(id)a3 forKeyPath:(id)a4
{
  if ([a4 hasPrefix:@"wheel"])
  {
    v9 = 0;
    v10 = 0;
    SCNKitSplitKVCPath(a4, &v10, &v9);
    if (v9)
    {
      v7 = -[SCNPhysicsVehicle wheelAtIndex:](self, "wheelAtIndex:", [objc_msgSend(v10 substringFromIndex:{objc_msgSend(@"wheel", "length")), "intValue"}]);
      [v7 setValue:a3 forKey:v9];
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SCNPhysicsVehicle;
    [(SCNPhysicsVehicle *)&v8 setValue:a3 forKeyPath:a4];
  }
}

- (id)valueForKeyPath:(id)a3
{
  if ([a3 hasPrefix:@"wheel"])
  {
    v8 = 0;
    v9 = 0;
    SCNKitSplitKVCPath(a3, &v9, &v8);
    if (v8)
    {
      v5 = -[SCNPhysicsVehicle wheelAtIndex:](self, "wheelAtIndex:", [objc_msgSend(v9 substringFromIndex:{objc_msgSend(@"wheel", "length")), "intValue"}]);
      return [v5 valueForKey:v8];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SCNPhysicsVehicle;
    return [(SCNPhysicsVehicle *)&v7 valueForKeyPath:a3];
  }
}

- (void)encodeWithCoder:(id)a3
{
  chassisBody = self->_chassisBody;
  if (chassisBody)
  {
    [a3 encodeObject:chassisBody forKey:@"chassisBody"];
  }

  if (self->_wheels)
  {

    [a3 encodeObject:? forKey:?];
  }
}

- (SCNPhysicsVehicle)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = SCNPhysicsVehicle;
  v4 = [(SCNPhysicsBehavior *)&v7 initWithCoder:?];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    [(SCNPhysicsVehicle *)v4 _customDecodingOfSCNPhysicsVehicle:a3];
    v4->_chassisBody = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"chassisBody"];
    v4->_wheels = [a3 scn_decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"wheels"];
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

@end