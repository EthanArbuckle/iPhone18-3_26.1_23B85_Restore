@interface SKRadialGravityFieldNode
- (SKRadialGravityFieldNode)init;
- (SKRadialGravityFieldNode)initWithCoder:(id)a3;
- (void)_initialize;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKRadialGravityFieldNode

- (void)_initialize
{
  if (!self->super._field)
  {
    v3 = [MEMORY[0x277D3D110] field];
    field = self->super._field;
    self->super._field = v3;

    v5 = self->super._field;

    [(SKFieldNode *)self setPhysicsField:v5];
  }
}

- (SKRadialGravityFieldNode)init
{
  v5.receiver = self;
  v5.super_class = SKRadialGravityFieldNode;
  v2 = [(SKFieldNode *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SKRadialGravityFieldNode *)v2 _initialize];
  }

  return v3;
}

- (SKRadialGravityFieldNode)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D3D110] field];
  v8.receiver = self;
  v8.super_class = SKRadialGravityFieldNode;
  v6 = [(SKFieldNode *)&v8 initWithCoder:v4 field:v5];

  if (v6)
  {
    [(SKRadialGravityFieldNode *)v6 _initialize];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SKRadialGravityFieldNode;
  [(SKFieldNode *)&v3 encodeWithCoder:a3];
}

@end