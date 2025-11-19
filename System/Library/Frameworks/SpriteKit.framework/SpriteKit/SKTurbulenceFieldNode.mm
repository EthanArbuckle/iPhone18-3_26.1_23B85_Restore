@interface SKTurbulenceFieldNode
- (SKTurbulenceFieldNode)init;
- (SKTurbulenceFieldNode)initWithCoder:(id)a3;
- (void)_initialize;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKTurbulenceFieldNode

- (void)_initialize
{
  if (!self->super.super._field)
  {
    v3 = [MEMORY[0x277D3D120] field];
    field = self->super.super._field;
    self->super.super._field = v3;

    v5 = self->super.super._field;

    [(SKFieldNode *)self setPhysicsField:v5];
  }
}

- (SKTurbulenceFieldNode)init
{
  v5.receiver = self;
  v5.super_class = SKTurbulenceFieldNode;
  v2 = [(SKNoiseFieldNode *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SKTurbulenceFieldNode *)v2 _initialize];
  }

  return v3;
}

- (SKTurbulenceFieldNode)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D3D120] field];
  v8.receiver = self;
  v8.super_class = SKTurbulenceFieldNode;
  v6 = [(SKFieldNode *)&v8 initWithCoder:v4 field:v5];

  if (v6)
  {
    [(SKTurbulenceFieldNode *)v6 _initialize];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SKTurbulenceFieldNode;
  [(SKNoiseFieldNode *)&v3 encodeWithCoder:a3];
}

@end