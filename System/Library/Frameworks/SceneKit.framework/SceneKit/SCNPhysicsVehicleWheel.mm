@interface SCNPhysicsVehicleWheel
+ (SCNPhysicsVehicleWheel)wheelWithNode:(SCNNode *)node;
- (SCNPhysicsVehicleWheel)init;
- (SCNPhysicsVehicleWheel)initWithCoder:(id)coder;
- (SCNVector3)axle;
- (SCNVector3)connectionPosition;
- (SCNVector3)steeringAxis;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_setVehicle:(id)vehicle;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setAxle:(SCNVector3)axle;
- (void)setConnectionPosition:(SCNVector3)connectionPosition;
- (void)setFrictionSlip:(CGFloat)frictionSlip;
- (void)setIsFront:(BOOL)front;
- (void)setMaximumSuspensionForce:(CGFloat)maximumSuspensionForce;
- (void)setMaximumSuspensionTravel:(CGFloat)maximumSuspensionTravel;
- (void)setNode:(id)node;
- (void)setRadius:(CGFloat)radius;
- (void)setSteeringAxis:(SCNVector3)steeringAxis;
- (void)setSuspensionCompression:(CGFloat)suspensionCompression;
- (void)setSuspensionDamping:(CGFloat)suspensionDamping;
- (void)setSuspensionRestLength:(CGFloat)suspensionRestLength;
- (void)setSuspensionStiffness:(CGFloat)suspensionStiffness;
@end

@implementation SCNPhysicsVehicleWheel

- (SCNPhysicsVehicleWheel)init
{
  v3.receiver = self;
  v3.super_class = SCNPhysicsVehicleWheel;
  result = [(SCNPhysicsVehicleWheel *)&v3 init];
  if (result)
  {
    result->_suspensionRestLength = 1.6;
    *&result->_suspensionStiffness = xmmword_21C2A2730;
    *&result->_suspensionDamping = xmmword_21C2A2740;
    *&result->_frictionSlip = xmmword_21C2A2750;
    result->_axle.y = 0.0;
    result->_axle.z = 0.0;
    *&result->_steeringAxis.x = xmmword_21C2A2760;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNPhysicsVehicleWheel;
  [(SCNPhysicsVehicleWheel *)&v3 dealloc];
}

- (void)setNode:(id)node
{
  node = self->_node;
  if (node != node)
  {

    self->_node = node;
  }
}

- (void)_setVehicle:(id)vehicle
{
  if (vehicle)
  {
    vehicle = self->_vehicle;
    if (vehicle)
    {
      v6 = vehicle == vehicle;
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
        [SCNPhysicsVehicleWheel _setVehicle:v7];
      }
    }
  }

  self->_vehicle = vehicle;
}

+ (SCNPhysicsVehicleWheel)wheelWithNode:(SCNNode *)node
{
  v4 = objc_alloc_init(SCNPhysicsVehicleWheel);
  [(SCNPhysicsVehicleWheel *)v4 setNode:node];
  [(SCNNode *)node position];
  [(SCNPhysicsVehicleWheel *)v4 setConnectionPosition:?];
  [(SCNNode *)node getBoundingBoxMin:&v10 max:&v8];
  v5 = vsub_f32(v8, v10);
  v8 = v5;
  v6 = *&v9 - v11;
  *&v9 = *&v9 - v11;
  if (v5.f32[0] < v5.f32[1])
  {
    v5.f32[0] = v5.f32[1];
  }

  if (v5.f32[0] < v6)
  {
    v5.f32[0] = v6;
  }

  [(SCNPhysicsVehicleWheel *)v4 setRadius:(v5.f32[0] * 0.5), *&v8, v9];
  return v4;
}

- (void)setSuspensionStiffness:(CGFloat)suspensionStiffness
{
  self->_suspensionStiffness = suspensionStiffness;
  vehicle = self->_vehicle;
  if (vehicle)
  {
    physicsWorld = [(SCNPhysicsVehicle *)vehicle physicsWorld];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __49__SCNPhysicsVehicleWheel_setSuspensionStiffness___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = suspensionStiffness;
    [physicsWorld _postCommandWithBlock:v7];
  }
}

float __49__SCNPhysicsVehicleWheel_setSuspensionStiffness___block_invoke(uint64_t a1)
{
  WheelInfo = btRaycastVehicle::getWheelInfo([*(*(a1 + 32) + 16) btVehicle], *(*(a1 + 32) + 24));
  result = *(a1 + 40);
  *(WheelInfo + 236) = result;
  return result;
}

- (void)setSuspensionCompression:(CGFloat)suspensionCompression
{
  self->_suspensionCompression = suspensionCompression;
  vehicle = self->_vehicle;
  if (vehicle)
  {
    physicsWorld = [(SCNPhysicsVehicle *)vehicle physicsWorld];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__SCNPhysicsVehicleWheel_setSuspensionCompression___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = suspensionCompression;
    [physicsWorld _postCommandWithBlock:v7];
  }
}

float __51__SCNPhysicsVehicleWheel_setSuspensionCompression___block_invoke(uint64_t a1)
{
  WheelInfo = btRaycastVehicle::getWheelInfo([*(*(a1 + 32) + 16) btVehicle], *(*(a1 + 32) + 24));
  result = *(a1 + 40);
  *(WheelInfo + 240) = result;
  return result;
}

- (void)setSuspensionDamping:(CGFloat)suspensionDamping
{
  self->_suspensionDamping = suspensionDamping;
  vehicle = self->_vehicle;
  if (vehicle)
  {
    physicsWorld = [(SCNPhysicsVehicle *)vehicle physicsWorld];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__SCNPhysicsVehicleWheel_setSuspensionDamping___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = suspensionDamping;
    [physicsWorld _postCommandWithBlock:v7];
  }
}

float __47__SCNPhysicsVehicleWheel_setSuspensionDamping___block_invoke(uint64_t a1)
{
  WheelInfo = btRaycastVehicle::getWheelInfo([*(*(a1 + 32) + 16) btVehicle], *(*(a1 + 32) + 24));
  result = *(a1 + 40);
  *(WheelInfo + 244) = result;
  return result;
}

- (void)setMaximumSuspensionTravel:(CGFloat)maximumSuspensionTravel
{
  self->_maximumSuspensionTravel = maximumSuspensionTravel;
  vehicle = self->_vehicle;
  if (vehicle)
  {
    physicsWorld = [(SCNPhysicsVehicle *)vehicle physicsWorld];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __53__SCNPhysicsVehicleWheel_setMaximumSuspensionTravel___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = maximumSuspensionTravel;
    [physicsWorld _postCommandWithBlock:v7];
  }
}

float __53__SCNPhysicsVehicleWheel_setMaximumSuspensionTravel___block_invoke(uint64_t a1)
{
  WheelInfo = btRaycastVehicle::getWheelInfo([*(*(a1 + 32) + 16) btVehicle], *(*(a1 + 32) + 24));
  result = *(a1 + 40);
  *(WheelInfo + 228) = result;
  return result;
}

- (void)setFrictionSlip:(CGFloat)frictionSlip
{
  self->_frictionSlip = frictionSlip;
  vehicle = self->_vehicle;
  if (vehicle)
  {
    physicsWorld = [(SCNPhysicsVehicle *)vehicle physicsWorld];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __42__SCNPhysicsVehicleWheel_setFrictionSlip___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = frictionSlip;
    [physicsWorld _postCommandWithBlock:v7];
  }
}

float __42__SCNPhysicsVehicleWheel_setFrictionSlip___block_invoke(uint64_t a1)
{
  WheelInfo = btRaycastVehicle::getWheelInfo([*(*(a1 + 32) + 16) btVehicle], *(*(a1 + 32) + 24));
  result = *(a1 + 40) * 10.5;
  *(WheelInfo + 248) = result;
  return result;
}

- (void)setMaximumSuspensionForce:(CGFloat)maximumSuspensionForce
{
  self->_maximumSuspensionForce = maximumSuspensionForce;
  vehicle = self->_vehicle;
  if (vehicle)
  {
    physicsWorld = [(SCNPhysicsVehicle *)vehicle physicsWorld];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __52__SCNPhysicsVehicleWheel_setMaximumSuspensionForce___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = maximumSuspensionForce;
    [physicsWorld _postCommandWithBlock:v7];
  }
}

float __52__SCNPhysicsVehicleWheel_setMaximumSuspensionForce___block_invoke(uint64_t a1)
{
  WheelInfo = btRaycastVehicle::getWheelInfo([*(*(a1 + 32) + 16) btVehicle], *(*(a1 + 32) + 24));
  result = *(a1 + 40);
  *(WheelInfo + 268) = result;
  return result;
}

- (SCNVector3)connectionPosition
{
  x = self->_connectionPosition.x;
  y = self->_connectionPosition.y;
  z = self->_connectionPosition.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setConnectionPosition:(SCNVector3)connectionPosition
{
  self->_connectionPosition = connectionPosition;
  vehicle = self->_vehicle;
  if (vehicle)
  {
    z = connectionPosition.z;
    y = connectionPosition.y;
    x = connectionPosition.x;
    physicsWorld = [(SCNPhysicsVehicle *)vehicle physicsWorld];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__SCNPhysicsVehicleWheel_setConnectionPosition___block_invoke;
    v9[3] = &unk_2782FB848;
    v9[4] = self;
    v10 = x;
    v11 = y;
    v12 = z;
    [physicsWorld _postCommandWithBlock:v9];
  }
}

float __48__SCNPhysicsVehicleWheel_setConnectionPosition___block_invoke(uint64_t a1)
{
  WheelInfo = btRaycastVehicle::getWheelInfo([*(*(a1 + 32) + 16) btVehicle], *(*(a1 + 32) + 24));
  *&v3 = *(a1 + 40);
  *(&v3 + 1) = *(a1 + 48);
  *(WheelInfo + 176) = v3;
  return *&v3;
}

- (SCNVector3)steeringAxis
{
  x = self->_steeringAxis.x;
  y = self->_steeringAxis.y;
  z = self->_steeringAxis.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setSteeringAxis:(SCNVector3)steeringAxis
{
  self->_steeringAxis = steeringAxis;
  vehicle = self->_vehicle;
  if (vehicle)
  {
    z = steeringAxis.z;
    y = steeringAxis.y;
    x = steeringAxis.x;
    physicsWorld = [(SCNPhysicsVehicle *)vehicle physicsWorld];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __42__SCNPhysicsVehicleWheel_setSteeringAxis___block_invoke;
    v9[3] = &unk_2782FB848;
    v9[4] = self;
    v10 = x;
    v11 = y;
    v12 = z;
    [physicsWorld _postCommandWithBlock:v9];
  }
}

float __42__SCNPhysicsVehicleWheel_setSteeringAxis___block_invoke(uint64_t a1)
{
  WheelInfo = btRaycastVehicle::getWheelInfo([*(*(a1 + 32) + 16) btVehicle], *(*(a1 + 32) + 24));
  *&v3 = *(a1 + 40);
  *(&v3 + 1) = *(a1 + 48);
  *(WheelInfo + 192) = v3;
  return *&v3;
}

- (SCNVector3)axle
{
  x = self->_axle.x;
  y = self->_axle.y;
  z = self->_axle.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setAxle:(SCNVector3)axle
{
  self->_axle = axle;
  vehicle = self->_vehicle;
  if (vehicle)
  {
    z = axle.z;
    y = axle.y;
    x = axle.x;
    physicsWorld = [(SCNPhysicsVehicle *)vehicle physicsWorld];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __34__SCNPhysicsVehicleWheel_setAxle___block_invoke;
    v9[3] = &unk_2782FB848;
    v9[4] = self;
    v10 = x;
    v11 = y;
    v12 = z;
    [physicsWorld _postCommandWithBlock:v9];
  }
}

float __34__SCNPhysicsVehicleWheel_setAxle___block_invoke(uint64_t a1)
{
  WheelInfo = btRaycastVehicle::getWheelInfo([*(*(a1 + 32) + 16) btVehicle], *(*(a1 + 32) + 24));
  *&v3 = *(a1 + 40);
  *(&v3 + 1) = *(a1 + 48);
  *(WheelInfo + 208) = v3;
  return *&v3;
}

- (void)setRadius:(CGFloat)radius
{
  self->_radius = radius;
  vehicle = self->_vehicle;
  if (vehicle)
  {
    physicsWorld = [(SCNPhysicsVehicle *)vehicle physicsWorld];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__SCNPhysicsVehicleWheel_setRadius___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = radius;
    [physicsWorld _postCommandWithBlock:v7];
  }
}

float __36__SCNPhysicsVehicleWheel_setRadius___block_invoke(uint64_t a1)
{
  WheelInfo = btRaycastVehicle::getWheelInfo([*(*(a1 + 32) + 16) btVehicle], *(*(a1 + 32) + 24));
  result = *(a1 + 40);
  *(WheelInfo + 232) = result;
  return result;
}

- (void)setSuspensionRestLength:(CGFloat)suspensionRestLength
{
  self->_suspensionRestLength = suspensionRestLength;
  vehicle = self->_vehicle;
  if (vehicle)
  {
    physicsWorld = [(SCNPhysicsVehicle *)vehicle physicsWorld];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__SCNPhysicsVehicleWheel_setSuspensionRestLength___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = suspensionRestLength;
    [physicsWorld _postCommandWithBlock:v7];
  }
}

float __50__SCNPhysicsVehicleWheel_setSuspensionRestLength___block_invoke(uint64_t a1)
{
  WheelInfo = btRaycastVehicle::getWheelInfo([*(*(a1 + 32) + 16) btVehicle], *(*(a1 + 32) + 24));
  result = *(a1 + 40);
  *(WheelInfo + 224) = result;
  return result;
}

- (void)setIsFront:(BOOL)front
{
  self->_isFront = front;
  vehicle = self->_vehicle;
  if (vehicle)
  {
    physicsWorld = [(SCNPhysicsVehicle *)vehicle physicsWorld];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __37__SCNPhysicsVehicleWheel_setIsFront___block_invoke;
    v7[3] = &unk_2782FB7F8;
    v7[4] = self;
    frontCopy = front;
    [physicsWorld _postCommandWithBlock:v7];
  }
}

uint64_t __37__SCNPhysicsVehicleWheel_setIsFront___block_invoke(uint64_t a1)
{
  result = btRaycastVehicle::getWheelInfo([*(*(a1 + 32) + 16) btVehicle], *(*(a1 + 32) + 24));
  *(result + 280) = *(a1 + 40);
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [SCNPhysicsVehicleWheel wheelWithNode:self->_node];
  [(SCNPhysicsVehicleWheel *)self suspensionStiffness];
  [(SCNPhysicsVehicleWheel *)v5 setSuspensionStiffness:?];
  [(SCNPhysicsVehicleWheel *)self suspensionCompression];
  [(SCNPhysicsVehicleWheel *)v5 setSuspensionCompression:?];
  [(SCNPhysicsVehicleWheel *)self suspensionDamping];
  [(SCNPhysicsVehicleWheel *)v5 setSuspensionDamping:?];
  [(SCNPhysicsVehicleWheel *)self maximumSuspensionTravel];
  [(SCNPhysicsVehicleWheel *)v5 setMaximumSuspensionTravel:?];
  [(SCNPhysicsVehicleWheel *)self frictionSlip];
  [(SCNPhysicsVehicleWheel *)v5 setFrictionSlip:?];
  [(SCNPhysicsVehicleWheel *)self maximumSuspensionForce];
  [(SCNPhysicsVehicleWheel *)v5 setMaximumSuspensionForce:?];
  [(SCNPhysicsVehicleWheel *)self connectionPosition];
  [(SCNPhysicsVehicleWheel *)v5 setConnectionPosition:?];
  [(SCNPhysicsVehicleWheel *)self steeringAxis];
  [(SCNPhysicsVehicleWheel *)v5 setSteeringAxis:?];
  [(SCNPhysicsVehicleWheel *)self axle];
  [(SCNPhysicsVehicleWheel *)v5 setAxle:?];
  [(SCNPhysicsVehicleWheel *)self radius];
  [(SCNPhysicsVehicleWheel *)v5 setRadius:?];
  [(SCNPhysicsVehicleWheel *)self suspensionRestLength];
  [(SCNPhysicsVehicleWheel *)v5 setSuspensionRestLength:?];
  [(SCNPhysicsVehicleWheel *)v5 setIsFront:[(SCNPhysicsVehicleWheel *)self isFront]];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  node = self->_node;
  if (node)
  {
    [coder encodeObject:node forKey:@"node"];
  }

  vehicle = self->_vehicle;
  if (vehicle)
  {
    [coder encodeObject:vehicle forKey:@"vehicle"];
  }

  [coder encodeInt:self->_wheelIndex forKey:@"wheelIndex"];
  [coder encodeDouble:@"suspensionStiffness" forKey:self->_suspensionStiffness];
  [coder encodeDouble:@"suspensionCompression" forKey:self->_suspensionCompression];
  [coder encodeDouble:@"suspensionDamping" forKey:self->_suspensionDamping];
  [coder encodeDouble:@"maximumSuspensionTravel" forKey:self->_maximumSuspensionTravel];
  [coder encodeDouble:@"frictionSlip" forKey:self->_frictionSlip];
  [coder encodeDouble:@"maximumSuspensionForce" forKey:self->_maximumSuspensionForce];
  SCNEncodeVector3(coder, @"connectionPosition", self->_connectionPosition.x, self->_connectionPosition.y, self->_connectionPosition.z);
  SCNEncodeVector3(coder, @"steeringAxis", self->_steeringAxis.x, self->_steeringAxis.y, self->_steeringAxis.z);
  SCNEncodeVector3(coder, @"axle", self->_axle.x, self->_axle.y, self->_axle.z);
  [coder encodeDouble:@"radius" forKey:self->_radius];
  [coder encodeDouble:@"suspensionRestLength" forKey:self->_suspensionRestLength];
  isFront = self->_isFront;

  [coder encodeBool:isFront forKey:@"isFront"];
}

- (SCNPhysicsVehicleWheel)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = SCNPhysicsVehicleWheel;
  v4 = [(SCNPhysicsVehicleWheel *)&v10 init];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    -[SCNPhysicsVehicleWheel setNode:](v4, "setNode:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"node"]);
    v4->_vehicle = [coder decodeObjectOfClass:objc_opt_class() forKey:@"vehicle"];
    v4->_wheelIndex = [coder decodeIntForKey:@"wheelIndex"];
    [coder decodeDoubleForKey:@"suspensionStiffness"];
    [(SCNPhysicsVehicleWheel *)v4 setSuspensionStiffness:?];
    [coder decodeDoubleForKey:@"suspensionCompression"];
    [(SCNPhysicsVehicleWheel *)v4 setSuspensionCompression:?];
    [coder decodeDoubleForKey:@"suspensionDamping"];
    [(SCNPhysicsVehicleWheel *)v4 setSuspensionDamping:?];
    [coder decodeDoubleForKey:@"maximumSuspensionTravel"];
    [(SCNPhysicsVehicleWheel *)v4 setMaximumSuspensionTravel:?];
    [coder decodeDoubleForKey:@"frictionSlip"];
    [(SCNPhysicsVehicleWheel *)v4 setFrictionSlip:?];
    [coder decodeDoubleForKey:@"maximumSuspensionForce"];
    [(SCNPhysicsVehicleWheel *)v4 setMaximumSuspensionForce:?];
    *&v6 = SCNDecodeVector3(coder, @"connectionPosition");
    [(SCNPhysicsVehicleWheel *)v4 setConnectionPosition:v6];
    *&v7 = SCNDecodeVector3(coder, @"steeringAxis");
    [(SCNPhysicsVehicleWheel *)v4 setSteeringAxis:v7];
    *&v8 = SCNDecodeVector3(coder, @"axle");
    [(SCNPhysicsVehicleWheel *)v4 setAxle:v8];
    [coder decodeDoubleForKey:@"radius"];
    [(SCNPhysicsVehicleWheel *)v4 setRadius:?];
    [coder decodeDoubleForKey:@"suspensionRestLength"];
    [(SCNPhysicsVehicleWheel *)v4 setSuspensionRestLength:?];
    -[SCNPhysicsVehicleWheel setIsFront:](v4, "setIsFront:", [coder decodeBoolForKey:@"isFront"]);
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

@end