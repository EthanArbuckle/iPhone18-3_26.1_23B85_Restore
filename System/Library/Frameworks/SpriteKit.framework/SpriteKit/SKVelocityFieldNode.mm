@interface SKVelocityFieldNode
- (SKVelocityFieldNode)init;
- (SKVelocityFieldNode)initWithCoder:(id)a3;
- (void)_initialize;
- (void)encodeWithCoder:(id)a3;
- (void)setVelocityTexture:(id)a3;
@end

@implementation SKVelocityFieldNode

- (void)_initialize
{
  if (!self->super._field)
  {
    v3 = [MEMORY[0x277D3D128] fieldWithGrid:0];
    field = self->super._field;
    self->super._field = v3;

    v5 = self->super._field;

    [(SKFieldNode *)self setPhysicsField:v5];
  }
}

- (SKVelocityFieldNode)init
{
  v5.receiver = self;
  v5.super_class = SKVelocityFieldNode;
  v2 = [(SKFieldNode *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SKVelocityFieldNode *)v2 _initialize];
  }

  return v3;
}

- (SKVelocityFieldNode)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D3D128] fieldWithGrid:0];
  v11.receiver = self;
  v11.super_class = SKVelocityFieldNode;
  v6 = [(SKFieldNode *)&v11 initWithCoder:v4 field:v5];

  if (v6)
  {
    [(SKVelocityFieldNode *)v6 _initialize];
    if ([v4 containsValueForKey:@"_velocity"])
    {
      [v4 decodeCGPointForKey:@"_velocity"];
      *&v8 = v7;
      *&v9 = v9;
      [(SKFieldNode *)v6 setDirection:COERCE_DOUBLE(__PAIR64__(LODWORD(v9), v8))];
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SKVelocityFieldNode;
  [(SKFieldNode *)&v3 encodeWithCoder:a3];
}

- (void)setVelocityTexture:(id)a3
{
  v4 = a3;
  LODWORD(v5) = 1.0;
  v9 = v4;
  v6 = [SKPhysicsGrid vectorGridFromTexture:v5 accuracy:?];
  v7 = [MEMORY[0x277D3D128] fieldWithGrid:v6];
  field = self->super._field;
  self->super._field = v7;

  [(SKFieldNode *)self setPhysicsField:self->super._field];
}

@end