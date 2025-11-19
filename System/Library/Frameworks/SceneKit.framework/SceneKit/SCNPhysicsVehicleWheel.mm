@interface SCNPhysicsVehicleWheel
+ (SCNPhysicsVehicleWheel)wheelWithNode:(SCNNode *)node;
- (SCNPhysicsVehicleWheel)init;
- (SCNPhysicsVehicleWheel)initWithCoder:(id)a3;
- (SCNVector3)axle;
- (SCNVector3)connectionPosition;
- (SCNVector3)steeringAxis;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_setVehicle:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setAxle:(SCNVector3)axle;
- (void)setConnectionPosition:(SCNVector3)connectionPosition;
- (void)setFrictionSlip:(CGFloat)frictionSlip;
- (void)setIsFront:(BOOL)a3;
- (void)setMaximumSuspensionForce:(CGFloat)maximumSuspensionForce;
- (void)setMaximumSuspensionTravel:(CGFloat)maximumSuspensionTravel;
- (void)setNode:(id)a3;
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

- (void)setNode:(id)a3
{
  node = self->_node;
  if (node != a3)
  {

    self->_node = a3;
  }
}

- (void)_setVehicle:(id)a3
{
  if (a3)
  {
    vehicle = self->_vehicle;
    if (vehicle)
    {
      v6 = vehicle == a3;
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

  self->_vehicle = a3;
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
    v6 = [(SCNPhysicsVehicle *)vehicle physicsWorld];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __49__SCNPhysicsVehicleWheel_setSuspensionStiffness___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = suspensionStiffness;
    [v6 _postCommandWithBlock:v7];
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
    v6 = [(SCNPhysicsVehicle *)vehicle physicsWorld];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__SCNPhysicsVehicleWheel_setSuspensionCompression___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = suspensionCompression;
    [v6 _postCommandWithBlock:v7];
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
    v6 = [(SCNPhysicsVehicle *)vehicle physicsWorld];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__SCNPhysicsVehicleWheel_setSuspensionDamping___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = suspensionDamping;
    [v6 _postCommandWithBlock:v7];
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
    v6 = [(SCNPhysicsVehicle *)vehicle physicsWorld];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __53__SCNPhysicsVehicleWheel_setMaximumSuspensionTravel___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = maximumSuspensionTravel;
    [v6 _postCommandWithBlock:v7];
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
    v6 = [(SCNPhysicsVehicle *)vehicle physicsWorld];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __42__SCNPhysicsVehicleWheel_setFrictionSlip___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = frictionSlip;
    [v6 _postCommandWithBlock:v7];
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
    v6 = [(SCNPhysicsVehicle *)vehicle physicsWorld];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __52__SCNPhysicsVehicleWheel_setMaximumSuspensionForce___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = maximumSuspensionForce;
    [v6 _postCommandWithBlock:v7];
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
    v8 = [(SCNPhysicsVehicle *)vehicle physicsWorld];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__SCNPhysicsVehicleWheel_setConnectionPosition___block_invoke;
    v9[3] = &unk_2782FB848;
    v9[4] = self;
    v10 = x;
    v11 = y;
    v12 = z;
    [v8 _postCommandWithBlock:v9];
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
    v8 = [(SCNPhysicsVehicle *)vehicle physicsWorld];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __42__SCNPhysicsVehicleWheel_setSteeringAxis___block_invoke;
    v9[3] = &unk_2782FB848;
    v9[4] = self;
    v10 = x;
    v11 = y;
    v12 = z;
    [v8 _postCommandWithBlock:v9];
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
    v8 = [(SCNPhysicsVehicle *)vehicle physicsWorld];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __34__SCNPhysicsVehicleWheel_setAxle___block_invoke;
    v9[3] = &unk_2782FB848;
    v9[4] = self;
    v10 = x;
    v11 = y;
    v12 = z;
    [v8 _postCommandWithBlock:v9];
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
    v6 = [(SCNPhysicsVehicle *)vehicle physicsWorld];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__SCNPhysicsVehicleWheel_setRadius___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = radius;
    [v6 _postCommandWithBlock:v7];
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
    v6 = [(SCNPhysicsVehicle *)vehicle physicsWorld];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__SCNPhysicsVehicleWheel_setSuspensionRestLength___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = suspensionRestLength;
    [v6 _postCommandWithBlock:v7];
  }
}

float __50__SCNPhysicsVehicleWheel_setSuspensionRestLength___block_invoke(uint64_t a1)
{
  WheelInfo = btRaycastVehicle::getWheelInfo([*(*(a1 + 32) + 16) btVehicle], *(*(a1 + 32) + 24));
  result = *(a1 + 40);
  *(WheelInfo + 224) = result;
  return result;
}

- (void)setIsFront:(BOOL)a3
{
  self->_isFront = a3;
  vehicle = self->_vehicle;
  if (vehicle)
  {
    v6 = [(SCNPhysicsVehicle *)vehicle physicsWorld];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __37__SCNPhysicsVehicleWheel_setIsFront___block_invoke;
    v7[3] = &unk_2782FB7F8;
    v7[4] = self;
    v8 = a3;
    [v6 _postCommandWithBlock:v7];
  }
}

uint64_t __37__SCNPhysicsVehicleWheel_setIsFront___block_invoke(uint64_t a1)
{
  result = btRaycastVehicle::getWheelInfo([*(*(a1 + 32) + 16) btVehicle], *(*(a1 + 32) + 24));
  *(result + 280) = *(a1 + 40);
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (void)encodeWithCoder:(id)a3
{
  node = self->_node;
  if (node)
  {
    [a3 encodeObject:node forKey:@"node"];
  }

  vehicle = self->_vehicle;
  if (vehicle)
  {
    [a3 encodeObject:vehicle forKey:@"vehicle"];
  }

  [a3 encodeInt:self->_wheelIndex forKey:@"wheelIndex"];
  [a3 encodeDouble:@"suspensionStiffness" forKey:self->_suspensionStiffness];
  [a3 encodeDouble:@"suspensionCompression" forKey:self->_suspensionCompression];
  [a3 encodeDouble:@"suspensionDamping" forKey:self->_suspensionDamping];
  [a3 encodeDouble:@"maximumSuspensionTravel" forKey:self->_maximumSuspensionTravel];
  [a3 encodeDouble:@"frictionSlip" forKey:self->_frictionSlip];
  [a3 encodeDouble:@"maximumSuspensionForce" forKey:self->_maximumSuspensionForce];
  SCNEncodeVector3(a3, @"connectionPosition", self->_connectionPosition.x, self->_connectionPosition.y, self->_connectionPosition.z);
  SCNEncodeVector3(a3, @"steeringAxis", self->_steeringAxis.x, self->_steeringAxis.y, self->_steeringAxis.z);
  SCNEncodeVector3(a3, @"axle", self->_axle.x, self->_axle.y, self->_axle.z);
  [a3 encodeDouble:@"radius" forKey:self->_radius];
  [a3 encodeDouble:@"suspensionRestLength" forKey:self->_suspensionRestLength];
  isFront = self->_isFront;

  [a3 encodeBool:isFront forKey:@"isFront"];
}

- (SCNPhysicsVehicleWheel)initWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = SCNPhysicsVehicleWheel;
  v4 = [(SCNPhysicsVehicleWheel *)&v10 init];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    -[SCNPhysicsVehicleWheel setNode:](v4, "setNode:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"node"]);
    v4->_vehicle = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"vehicle"];
    v4->_wheelIndex = [a3 decodeIntForKey:@"wheelIndex"];
    [a3 decodeDoubleForKey:@"suspensionStiffness"];
    [(SCNPhysicsVehicleWheel *)v4 setSuspensionStiffness:?];
    [a3 decodeDoubleForKey:@"suspensionCompression"];
    [(SCNPhysicsVehicleWheel *)v4 setSuspensionCompression:?];
    [a3 decodeDoubleForKey:@"suspensionDamping"];
    [(SCNPhysicsVehicleWheel *)v4 setSuspensionDamping:?];
    [a3 decodeDoubleForKey:@"maximumSuspensionTravel"];
    [(SCNPhysicsVehicleWheel *)v4 setMaximumSuspensionTravel:?];
    [a3 decodeDoubleForKey:@"frictionSlip"];
    [(SCNPhysicsVehicleWheel *)v4 setFrictionSlip:?];
    [a3 decodeDoubleForKey:@"maximumSuspensionForce"];
    [(SCNPhysicsVehicleWheel *)v4 setMaximumSuspensionForce:?];
    *&v6 = SCNDecodeVector3(a3, @"connectionPosition");
    [(SCNPhysicsVehicleWheel *)v4 setConnectionPosition:v6];
    *&v7 = SCNDecodeVector3(a3, @"steeringAxis");
    [(SCNPhysicsVehicleWheel *)v4 setSteeringAxis:v7];
    *&v8 = SCNDecodeVector3(a3, @"axle");
    [(SCNPhysicsVehicleWheel *)v4 setAxle:v8];
    [a3 decodeDoubleForKey:@"radius"];
    [(SCNPhysicsVehicleWheel *)v4 setRadius:?];
    [a3 decodeDoubleForKey:@"suspensionRestLength"];
    [(SCNPhysicsVehicleWheel *)v4 setSuspensionRestLength:?];
    -[SCNPhysicsVehicleWheel setIsFront:](v4, "setIsFront:", [a3 decodeBoolForKey:@"isFront"]);
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

@end