@interface SCNReplicatorConstraint
+ (SCNReplicatorConstraint)replicatorConstraintWithTarget:(SCNNode *)target;
+ (id)replicatorConstraint;
- (SCNQuaternion)orientationOffset;
- (SCNReplicatorConstraint)init;
- (SCNReplicatorConstraint)initWithCoder:(id)coder;
- (SCNVector3)positionOffset;
- (SCNVector3)scaleOffset;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_customDecodingOfSCNReplicatorConstraint:(id)constraint;
- (void)_customEncodingOfSCNReplicatorConstraint:(id)constraint;
- (void)encodeWithCoder:(id)coder;
- (void)setOrientationOffset:(SCNQuaternion)orientationOffset;
- (void)setPositionOffset:(SCNVector3)positionOffset;
- (void)setReplicatesOrientation:(BOOL)replicatesOrientation;
- (void)setReplicatesPosition:(BOOL)replicatesPosition;
- (void)setReplicatesScale:(BOOL)replicatesScale;
- (void)setScaleOffset:(SCNVector3)scaleOffset;
- (void)setTarget:(SCNNode *)target;
@end

@implementation SCNReplicatorConstraint

- (SCNReplicatorConstraint)init
{
  v10.receiver = self;
  v10.super_class = SCNReplicatorConstraint;
  v2 = [(SCNConstraint *)&v10 init];
  if (v2)
  {
    Replicator = C3DConstraintCreateReplicator();
    v2[64] = 1;
    v2[65] = 1;
    *(v2 + 1) = Replicator;
    v2[66] = 1;
    *(v2 + 68) = xmmword_21C27F610;
    *(v2 + 84) = 0;
    *(v2 + 23) = 0;
    __asm { FMOV            V0.2S, #1.0 }

    *(v2 + 12) = _D0;
    *(v2 + 26) = 1065353216;
  }

  return v2;
}

+ (id)replicatorConstraint
{
  v2 = objc_alloc_init(SCNReplicatorConstraint);

  return v2;
}

+ (SCNReplicatorConstraint)replicatorConstraintWithTarget:(SCNNode *)target
{
  replicatorConstraint = [self replicatorConstraint];
  [(SCNReplicatorConstraint *)replicatorConstraint setTarget:target];
  return replicatorConstraint;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setTarget:{-[SCNReplicatorConstraint target](self, "target")}];
  [v4 setReplicatesOrientation:{-[SCNReplicatorConstraint replicatesOrientation](self, "replicatesOrientation")}];
  [v4 setReplicatesPosition:{-[SCNReplicatorConstraint replicatesPosition](self, "replicatesPosition")}];
  [v4 setReplicatesScale:{-[SCNReplicatorConstraint replicatesScale](self, "replicatesScale")}];
  [(SCNReplicatorConstraint *)self orientationOffset];
  [v4 setOrientationOffset:?];
  [(SCNReplicatorConstraint *)self positionOffset];
  [v4 setPositionOffset:?];
  [(SCNReplicatorConstraint *)self scaleOffset];
  [v4 setScaleOffset:?];
  [(SCNConstraint *)self copyTo:v4];
  return v4;
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
  v8[2] = __37__SCNReplicatorConstraint_setTarget___block_invoke;
  v8[3] = &unk_2782FB7D0;
  v8[4] = self;
  v8[5] = nodeRef;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v8];
}

- (void)setReplicatesOrientation:(BOOL)replicatesOrientation
{
  self->_replicateOrientation = replicatesOrientation;
  sceneRef = [(SCNConstraint *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__SCNReplicatorConstraint_setReplicatesOrientation___block_invoke;
  v6[3] = &unk_2782FB7F8;
  v6[4] = self;
  v7 = replicatesOrientation;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
}

- (void)setReplicatesPosition:(BOOL)replicatesPosition
{
  self->_replicatePosition = replicatesPosition;
  sceneRef = [(SCNConstraint *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__SCNReplicatorConstraint_setReplicatesPosition___block_invoke;
  v6[3] = &unk_2782FB7F8;
  v6[4] = self;
  v7 = replicatesPosition;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
}

- (void)setReplicatesScale:(BOOL)replicatesScale
{
  self->_replicateScale = replicatesScale;
  sceneRef = [(SCNConstraint *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__SCNReplicatorConstraint_setReplicatesScale___block_invoke;
  v6[3] = &unk_2782FB7F8;
  v6[4] = self;
  v7 = replicatesScale;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
}

- (void)setOrientationOffset:(SCNQuaternion)orientationOffset
{
  w = orientationOffset.w;
  z = orientationOffset.z;
  y = orientationOffset.y;
  x = orientationOffset.x;
  self->_orientationOffset = orientationOffset;
  sceneRef = [(SCNConstraint *)self sceneRef];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__SCNReplicatorConstraint_setOrientationOffset___block_invoke;
  v9[3] = &unk_2782FE238;
  v9[4] = self;
  v10 = x;
  v11 = y;
  v12 = z;
  v13 = w;
  [SCNTransaction postCommandWithContext:sceneRef object:self key:@"orientationOffset" applyBlock:v9];
}

- (SCNQuaternion)orientationOffset
{
  x = self->_orientationOffset.x;
  y = self->_orientationOffset.y;
  z = self->_orientationOffset.z;
  w = self->_orientationOffset.w;
  result.w = w;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setPositionOffset:(SCNVector3)positionOffset
{
  z = positionOffset.z;
  y = positionOffset.y;
  x = positionOffset.x;
  self->_positionOffset = positionOffset;
  sceneRef = [(SCNConstraint *)self sceneRef];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__SCNReplicatorConstraint_setPositionOffset___block_invoke;
  v8[3] = &unk_2782FB848;
  v8[4] = self;
  v9 = x;
  v10 = y;
  v11 = z;
  [SCNTransaction postCommandWithContext:sceneRef object:self key:@"positionOffset" applyBlock:v8];
}

void __45__SCNReplicatorConstraint_setPositionOffset___block_invoke(uint64_t a1, __n128 a2)
{
  a2.n128_u64[0] = *(a1 + 40);
  a2.n128_u32[2] = *(a1 + 48);
  C3DConstraintReplicatorSetPositionOffset(*(*(a1 + 32) + 8), a2);
}

- (SCNVector3)positionOffset
{
  x = self->_positionOffset.x;
  y = self->_positionOffset.y;
  z = self->_positionOffset.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setScaleOffset:(SCNVector3)scaleOffset
{
  z = scaleOffset.z;
  y = scaleOffset.y;
  x = scaleOffset.x;
  self->_scaleOffset = scaleOffset;
  sceneRef = [(SCNConstraint *)self sceneRef];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__SCNReplicatorConstraint_setScaleOffset___block_invoke;
  v8[3] = &unk_2782FB848;
  v8[4] = self;
  v9 = x;
  v10 = y;
  v11 = z;
  [SCNTransaction postCommandWithContext:sceneRef object:self key:@"scaleOffset" applyBlock:v8];
}

void __42__SCNReplicatorConstraint_setScaleOffset___block_invoke(uint64_t a1, __n128 a2)
{
  a2.n128_u64[0] = *(a1 + 40);
  a2.n128_u32[2] = *(a1 + 48);
  C3DConstraintDistanceSetTargetDirection(*(*(a1 + 32) + 8), a2);
}

- (SCNVector3)scaleOffset
{
  x = self->_scaleOffset.x;
  y = self->_scaleOffset.y;
  z = self->_scaleOffset.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (void)_customEncodingOfSCNReplicatorConstraint:(id)constraint
{
  target = self->_target;
  if (target)
  {
    [constraint encodeObject:target forKey:@"target"];
  }
}

- (void)_customDecodingOfSCNReplicatorConstraint:(id)constraint
{
  self->super._constraintRef = C3DConstraintCreateReplicator();
  -[SCNReplicatorConstraint setTarget:](self, "setTarget:", [constraint decodeObjectOfClass:objc_opt_class() forKey:@"target"]);

  [(SCNConstraint *)self finalizeDecodeConstraint:constraint];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SCNReplicatorConstraint;
  [(SCNConstraint *)&v5 encodeWithCoder:?];
  [(SCNReplicatorConstraint *)self _customEncodingOfSCNReplicatorConstraint:coder];
  [coder encodeBool:self->_replicateOrientation forKey:@"replicatesOrientation"];
  [coder encodeBool:self->_replicateScale forKey:@"replicatesScale"];
  [coder encodeBool:self->_replicatePosition forKey:@"replicatesPosition"];
  SCNEncodeVector4(coder, @"orientationOffset", self->_orientationOffset.x, self->_orientationOffset.y, self->_orientationOffset.z, self->_orientationOffset.w);
  SCNEncodeVector3(coder, @"positionOffset", self->_positionOffset.x, self->_positionOffset.y, self->_positionOffset.z);
  SCNEncodeVector3(coder, @"scaleOffset", self->_scaleOffset.x, self->_scaleOffset.y, self->_scaleOffset.z);
}

- (SCNReplicatorConstraint)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = SCNReplicatorConstraint;
  v4 = [(SCNConstraint *)&v10 initWithCoder:?];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    [(SCNReplicatorConstraint *)v4 _customDecodingOfSCNReplicatorConstraint:coder];
    -[SCNReplicatorConstraint setReplicatesOrientation:](v4, "setReplicatesOrientation:", [coder decodeBoolForKey:@"replicatesOrientation"]);
    -[SCNReplicatorConstraint setReplicatesScale:](v4, "setReplicatesScale:", [coder decodeBoolForKey:@"replicatesScale"]);
    -[SCNReplicatorConstraint setReplicatesPosition:](v4, "setReplicatesPosition:", [coder decodeBoolForKey:@"replicatesPosition"]);
    *&v6 = SCNDecodeVector4(coder, @"orientationOffset");
    [(SCNReplicatorConstraint *)v4 setOrientationOffset:v6];
    *&v7 = SCNDecodeVector3(coder, @"positionOffset");
    [(SCNReplicatorConstraint *)v4 setPositionOffset:v7];
    *&v8 = SCNDecodeVector3(coder, @"scaleOffset");
    [(SCNReplicatorConstraint *)v4 setScaleOffset:v8];
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

@end