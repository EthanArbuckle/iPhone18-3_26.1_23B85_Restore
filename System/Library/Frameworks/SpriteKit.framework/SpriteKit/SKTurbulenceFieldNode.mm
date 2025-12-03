@interface SKTurbulenceFieldNode
- (SKTurbulenceFieldNode)init;
- (SKTurbulenceFieldNode)initWithCoder:(id)coder;
- (void)_initialize;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKTurbulenceFieldNode

- (void)_initialize
{
  if (!self->super.super._field)
  {
    field = [MEMORY[0x277D3D120] field];
    field = self->super.super._field;
    self->super.super._field = field;

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

- (SKTurbulenceFieldNode)initWithCoder:(id)coder
{
  coderCopy = coder;
  field = [MEMORY[0x277D3D120] field];
  v8.receiver = self;
  v8.super_class = SKTurbulenceFieldNode;
  v6 = [(SKFieldNode *)&v8 initWithCoder:coderCopy field:field];

  if (v6)
  {
    [(SKTurbulenceFieldNode *)v6 _initialize];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SKTurbulenceFieldNode;
  [(SKNoiseFieldNode *)&v3 encodeWithCoder:coder];
}

@end