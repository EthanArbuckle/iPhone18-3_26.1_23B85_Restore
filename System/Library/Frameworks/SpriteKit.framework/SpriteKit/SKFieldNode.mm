@interface SKFieldNode
+ (SKFieldNode)customFieldWithEvaluationBlock:(SKFieldForceEvaluator)block;
+ (SKFieldNode)dragField;
+ (SKFieldNode)electricField;
+ (SKFieldNode)linearGravityFieldWithVector:(vector_float3)direction;
+ (SKFieldNode)magneticField;
+ (SKFieldNode)noiseFieldWithSmoothness:(CGFloat)smoothness animationSpeed:(CGFloat)speed;
+ (SKFieldNode)radialGravityField;
+ (SKFieldNode)springField;
+ (SKFieldNode)turbulenceFieldWithSmoothness:(CGFloat)smoothness animationSpeed:(CGFloat)speed;
+ (SKFieldNode)velocityFieldWithTexture:(SKTexture *)velocityTexture;
+ (SKFieldNode)velocityFieldWithVector:(vector_float3)direction;
+ (SKFieldNode)vortexField;
- (BOOL)isEnabled;
- (BOOL)isEqualToNode:(id)a3;
- (BOOL)isExclusive;
- (SKFieldNode)init;
- (SKFieldNode)initWithCoder:(id)a3;
- (SKFieldNode)initWithCoder:(id)a3 field:(id)a4;
- (float)animationSpeed;
- (float)falloff;
- (float)minimumRadius;
- (float)smoothness;
- (float)strength;
- (id)copyWithZone:(_NSZone *)a3;
- (vector_float3)direction;
- (void)encodeWithCoder:(id)a3;
- (void)setAnimationSpeed:(float)animationSpeed;
- (void)setEnabled:(BOOL)enabled;
- (void)setExclusive:(BOOL)exclusive;
- (void)setFalloff:(float)falloff;
- (void)setMinimumRadius:(float)minimumRadius;
- (void)setPhysicsField:(id)a3;
- (void)setRegion:(SKRegion *)region;
- (void)setSmoothness:(float)smoothness;
- (void)setStrength:(float)strength;
- (void)setTexture:(SKTexture *)texture;
@end

@implementation SKFieldNode

- (void)setPhysicsField:(id)a3
{
  v5 = a3;
  v6 = [(SKNode *)self scene];
  field = self->_field;
  if (field)
  {
    [(PKPhysicsField *)field setRepresentedObject:0];
    if (v6)
    {
      v8 = [v6 physicsWorld];
      [v8 removeField:self->_field];
    }
  }

  objc_storeStrong(&self->_field, a3);
  if (v5)
  {
    [v5 setRepresentedObject:self];
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    SKCNode::resolveWorldPositionRotationAndScale(self->super._skcNode, &v13, &v12, &v11);
    [(PKPhysicsField *)self->_field setPosition:*&v13];
    LODWORD(v9) = DWORD2(v12);
    [(PKPhysicsField *)self->_field setRotation:v9];
    [(PKPhysicsField *)self->_field setScale:*&v11];
    if (v6)
    {
      v10 = [v6 physicsWorld];
      [v10 addField:v5];
    }
  }
}

- (vector_float3)direction
{
  v2 = [(PKPhysicsField *)self->_field direction];
  result.i64[1] = v3;
  result.i64[0] = v2;
  return result;
}

- (float)smoothness
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return self->_smoothness;
  }

  field = self->_field;

  [(PKPhysicsField *)field smoothness];
  return result;
}

- (void)setSmoothness:(float)smoothness
{
  if (objc_opt_respondsToSelector())
  {
    field = self->_field;
    *&v5 = smoothness;

    [(PKPhysicsField *)field setSmoothness:v5];
  }

  else
  {
    self->_smoothness = smoothness;
  }
}

- (float)animationSpeed
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return self->_animationSpeed;
  }

  field = self->_field;

  [(PKPhysicsField *)field animationSpeed];
  return result;
}

- (void)setAnimationSpeed:(float)animationSpeed
{
  if (objc_opt_respondsToSelector())
  {
    field = self->_field;
    *&v5 = animationSpeed;

    [(PKPhysicsField *)field setAnimationSpeed:v5];
  }

  else
  {
    self->_animationSpeed = animationSpeed;
  }
}

- (void)setTexture:(SKTexture *)texture
{
  v8 = texture;
  if (objc_opt_respondsToSelector())
  {
    v4 = self->_field;
    LODWORD(v5) = 1.0;
    v6 = [SKPhysicsGrid vectorGridFromTexture:v8 accuracy:v5];
    [(PKPhysicsField *)v4 setGrid:v6];
  }

  else
  {
    v7 = v8;
    v4 = self->_texture;
    self->_texture = v7;
  }
}

- (SKFieldNode)init
{
  v6.receiver = self;
  v6.super_class = SKFieldNode;
  v2 = [(SKNode *)&v6 init];
  v4 = v2;
  if (v2)
  {
    LODWORD(v3) = 1.0;
    [(SKFieldNode *)v2 setStrength:v3];
  }

  return v4;
}

- (SKFieldNode)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SKFieldNode;
  v5 = [(SKNode *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_region"];
    [(SKFieldNode *)v5 setRegion:v6];

    [v4 decodeFloatForKey:@"_strength"];
    [(SKFieldNode *)v5 setStrength:?];
    [v4 decodeFloatForKey:@"_falloff"];
    [(SKFieldNode *)v5 setFalloff:?];
    [v4 decodeFloatForKey:@"_minimumRadius"];
    [(SKFieldNode *)v5 setMinimumRadius:?];
    -[SKFieldNode setEnabled:](v5, "setEnabled:", [v4 decodeBoolForKey:@"_active"]);
    -[SKFieldNode setExclusive:](v5, "setExclusive:", [v4 decodeBoolForKey:@"_exclusive"]);
    -[SKFieldNode setCategoryBitMask:](v5, "setCategoryBitMask:", [v4 decodeInt32ForKey:@"_categoryBitMask"]);
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_direction"];
    [(SKFieldNode *)v5 setDirection:createV3fFromData(v7).n128_f64[0]];

    [v4 decodeFloatForKey:@"_smoothness"];
    [(SKFieldNode *)v5 setSmoothness:?];
    [v4 decodeFloatForKey:@"_animationSpeed"];
    [(SKFieldNode *)v5 setAnimationSpeed:?];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_texture"];
    if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v9 = v5->_field;
      LODWORD(v10) = 1.0;
      v11 = [SKPhysicsGrid vectorGridFromTexture:v8 accuracy:v10];
      [(PKPhysicsField *)v9 setGrid:v11];
    }
  }

  return v5;
}

- (SKFieldNode)initWithCoder:(id)a3 field:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = SKFieldNode;
  v8 = [(SKNode *)&v17 initWithCoder:v6];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_field, a4);
    [(SKFieldNode *)v9 setPhysicsField:v9->_field];
    v10 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"_region"];
    [(SKFieldNode *)v9 setRegion:v10];

    [v6 decodeFloatForKey:@"_strength"];
    [(SKFieldNode *)v9 setStrength:?];
    [v6 decodeFloatForKey:@"_falloff"];
    [(SKFieldNode *)v9 setFalloff:?];
    [v6 decodeFloatForKey:@"_minimumRadius"];
    [(SKFieldNode *)v9 setMinimumRadius:?];
    -[SKFieldNode setEnabled:](v9, "setEnabled:", [v6 decodeBoolForKey:@"_active"]);
    -[SKFieldNode setExclusive:](v9, "setExclusive:", [v6 decodeBoolForKey:@"_exclusive"]);
    -[SKFieldNode setCategoryBitMask:](v9, "setCategoryBitMask:", [v6 decodeInt32ForKey:@"_categoryBitMask"]);
    v11 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"_direction"];
    [(SKFieldNode *)v9 setDirection:createV3fFromData(v11).n128_f64[0]];

    [v6 decodeFloatForKey:@"_smoothness"];
    [(SKFieldNode *)v9 setSmoothness:?];
    [v6 decodeFloatForKey:@"_animationSpeed"];
    [(SKFieldNode *)v9 setAnimationSpeed:?];
    v12 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"_texture"];
    if (v12 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v13 = v9->_field;
      LODWORD(v14) = 1.0;
      v15 = [SKPhysicsGrid vectorGridFromTexture:v12 accuracy:v14];
      [(PKPhysicsField *)v13 setGrid:v15];
    }
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SKFieldNode;
  [(SKNode *)&v14 encodeWithCoder:v4];
  v5 = [(SKFieldNode *)self region];

  if (v5)
  {
    v6 = [(SKFieldNode *)self region];
    [v4 encodeObject:v6 forKey:@"_region"];
  }

  [(SKFieldNode *)self strength];
  [v4 encodeFloat:@"_strength" forKey:?];
  [(SKFieldNode *)self falloff];
  [v4 encodeFloat:@"_falloff" forKey:?];
  [(SKFieldNode *)self minimumRadius];
  [v4 encodeFloat:@"_minimumRadius" forKey:?];
  [v4 encodeBool:-[SKFieldNode isEnabled](self forKey:{"isEnabled"), @"_active"}];
  [v4 encodeBool:-[SKFieldNode isExclusive](self forKey:{"isExclusive"), @"_exclusive"}];
  [v4 encodeInt32:-[SKFieldNode categoryBitMask](self forKey:{"categoryBitMask"), @"_categoryBitMask"}];
  [(SKFieldNode *)self direction];
  v12 = v7;
  v8 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:12];
  for (i = 0; i != 3; ++i)
  {
    v13 = v12;
    v15 = bswap32(*(&v13 & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3))));
    [v8 appendBytes:&v15 length:{4, v12, v12}];
  }

  [v4 encodeObject:v8 forKey:@"_direction"];

  [(SKFieldNode *)self smoothness];
  [v4 encodeFloat:@"_smoothness" forKey:?];
  [(SKFieldNode *)self animationSpeed];
  [v4 encodeFloat:@"_animationSpeed" forKey:?];
  v10 = [(SKFieldNode *)self texture];

  if (v10)
  {
    v11 = [(SKFieldNode *)self texture];
    [v4 encodeObject:v11 forKey:@"_texture"];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = SKFieldNode;
  v4 = [(SKNode *)&v7 copyWithZone:a3];
  v5 = [(SKFieldNode *)self region];
  [v4 setRegion:v5];

  [(SKFieldNode *)self strength];
  [v4 setStrength:?];
  [(SKFieldNode *)self falloff];
  [v4 setFalloff:?];
  [(SKFieldNode *)self minimumRadius];
  [v4 setMinimumRadius:?];
  [v4 setEnabled:{-[SKFieldNode isEnabled](self, "isEnabled")}];
  [v4 setExclusive:{-[SKFieldNode isExclusive](self, "isExclusive")}];
  [v4 setCategoryBitMask:{-[SKFieldNode categoryBitMask](self, "categoryBitMask")}];
  [(SKFieldNode *)self direction];
  [v4 setDirection:?];
  [(SKFieldNode *)self smoothness];
  [v4 setSmoothness:?];
  [(SKFieldNode *)self animationSpeed];
  [v4 setAnimationSpeed:?];
  return v4;
}

- (void)setStrength:(float)strength
{
  field = self->_field;
  if (field)
  {
    [(PKPhysicsField *)field setStrength:?];
  }
}

- (float)strength
{
  field = self->_field;
  if (!field)
  {
    return 0.0;
  }

  [(PKPhysicsField *)field strength];
  return result;
}

- (void)setMinimumRadius:(float)minimumRadius
{
  field = self->_field;
  if (field)
  {
    [(PKPhysicsField *)field setMinimumRadius:?];
  }
}

- (float)minimumRadius
{
  field = self->_field;
  if (!field)
  {
    return 0.000030518;
  }

  [(PKPhysicsField *)field minimumRadius];
  return result;
}

- (float)falloff
{
  field = self->_field;
  if (!field)
  {
    return 0.0;
  }

  [(PKPhysicsField *)field falloff];
  return result;
}

- (void)setFalloff:(float)falloff
{
  field = self->_field;
  if (field)
  {
    [(PKPhysicsField *)field setFalloff:?];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  field = self->_field;
  if (field)
  {
    [(PKPhysicsField *)field setEnabled:enabled];
  }
}

- (BOOL)isEnabled
{
  field = self->_field;
  if (field)
  {
    LOBYTE(field) = [(PKPhysicsField *)field isEnabled];
  }

  return field;
}

- (void)setExclusive:(BOOL)exclusive
{
  field = self->_field;
  if (field)
  {
    [(PKPhysicsField *)field setOverride:exclusive];
  }
}

- (BOOL)isExclusive
{
  field = self->_field;
  if (field)
  {
    LOBYTE(field) = [(PKPhysicsField *)field isOverride];
  }

  return field;
}

- (void)setRegion:(SKRegion *)region
{
  objc_storeStrong(&self->_region, region);
  v5 = region;
  [(PKPhysicsField *)self->_field setRegion:?];
}

- (BOOL)isEqualToNode:(id)a3
{
  v8 = a3;
  if (self == v8)
  {
    v17 = 1;
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = 0;
    goto LABEL_11;
  }

  v9 = v8;
  v32.receiver = self;
  v32.super_class = SKFieldNode;
  if ([(SKNode *)&v32 isEqualToNode:v9])
  {
    v10 = objc_opt_class();
    if (v10 == objc_opt_class())
    {
      [(SKFieldNode *)self animationSpeed];
      v12 = v11;
      [(SKFieldNode *)v9 animationSpeed];
      if ((COERCE_UNSIGNED_INT(v12 - v13) & 0x60000000) == 0)
      {
        [(SKFieldNode *)self smoothness];
        v15 = v14;
        [(SKFieldNode *)v9 smoothness];
        if ((COERCE_UNSIGNED_INT(v15 - v16) & 0x60000000) == 0)
        {
          v19 = [(SKFieldNode *)self texture];
          v20 = [v19 imageNameOrPath];
          if (v20 || (-[SKFieldNode texture](v9, "texture"), v29 = objc_claimAutoreleasedReturnValue(), [v29 imageNameOrPath], (v30 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v4 = [(SKFieldNode *)self texture];
            v5 = [v4 imageNameOrPath];
            v6 = [(SKFieldNode *)v9 texture];
            v3 = [v6 imageNameOrPath];
            if (![v5 isEqualToString:v3])
            {
              v17 = 0;
              goto LABEL_22;
            }

            v31 = v19;
            v21 = 1;
          }

          else
          {
            v30 = 0;
            v31 = v19;
            v21 = 0;
          }

          v22 = [(SKFieldNode *)self categoryBitMask];
          if (v22 == [(SKFieldNode *)v9 categoryBitMask]&& (v23 = [(SKFieldNode *)self isEnabled], v23 == [(SKFieldNode *)v9 isEnabled]))
          {
            [(SKFieldNode *)self direction];
            v28 = v24;
            [(SKFieldNode *)v9 direction];
            v26 = vsubq_f32(v28, v25);
            v27 = vmulq_f32(v26, v26);
            v17 = sqrtf(v27.f32[2] + vaddv_f32(*v27.f32)) == 0.0;
            if (v21)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v17 = 0;
            if (v21)
            {
LABEL_21:
              v19 = v31;
LABEL_22:

              if (v20)
              {
LABEL_24:

                goto LABEL_8;
              }

LABEL_23:

              goto LABEL_24;
            }
          }

          v19 = v31;
          if (v20)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }
      }
    }
  }

  v17 = 0;
LABEL_8:

LABEL_11:
  return v17;
}

+ (SKFieldNode)dragField
{
  v2 = objc_opt_new();

  return v2;
}

+ (SKFieldNode)vortexField
{
  v2 = objc_opt_new();

  return v2;
}

+ (SKFieldNode)radialGravityField
{
  v2 = objc_opt_new();

  return v2;
}

+ (SKFieldNode)linearGravityFieldWithVector:(vector_float3)direction
{
  v6 = v3;
  v4 = objc_opt_new();
  [v4 setDirection:v6];

  return v4;
}

+ (SKFieldNode)velocityFieldWithVector:(vector_float3)direction
{
  v6 = v3;
  v4 = objc_opt_new();
  [v4 setDirection:v6];

  return v4;
}

+ (SKFieldNode)velocityFieldWithTexture:(SKTexture *)velocityTexture
{
  v3 = velocityTexture;
  v4 = objc_opt_new();
  [v4 setTexture:v3];

  return v4;
}

+ (SKFieldNode)noiseFieldWithSmoothness:(CGFloat)smoothness animationSpeed:(CGFloat)speed
{
  v6 = objc_opt_new();
  *&v7 = smoothness;
  [v6 setSmoothness:v7];
  *&v8 = speed;
  [v6 setAnimationSpeed:v8];

  return v6;
}

+ (SKFieldNode)turbulenceFieldWithSmoothness:(CGFloat)smoothness animationSpeed:(CGFloat)speed
{
  v6 = objc_opt_new();
  *&v7 = smoothness;
  [v6 setSmoothness:v7];
  *&v8 = speed;
  [v6 setAnimationSpeed:v8];

  return v6;
}

+ (SKFieldNode)springField
{
  v2 = objc_opt_new();

  return v2;
}

+ (SKFieldNode)electricField
{
  v2 = objc_opt_new();

  return v2;
}

+ (SKFieldNode)magneticField
{
  v2 = objc_opt_new();

  return v2;
}

+ (SKFieldNode)customFieldWithEvaluationBlock:(SKFieldForceEvaluator)block
{
  v3 = block;
  v4 = objc_opt_new();
  [v4 setBlock:v3];

  return v4;
}

@end