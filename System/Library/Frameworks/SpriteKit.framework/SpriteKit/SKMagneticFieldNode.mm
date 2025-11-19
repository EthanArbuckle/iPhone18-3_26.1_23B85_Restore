@interface SKMagneticFieldNode
- (SKMagneticFieldNode)init;
- (SKMagneticFieldNode)initWithCoder:(id)a3;
- (void)_initialize;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKMagneticFieldNode

- (void)_initialize
{
  if (!self->super._field)
  {
    v3 = [MEMORY[0x277D3D100] field];
    field = self->super._field;
    self->super._field = v3;

    v5 = self->super._field;

    [(SKFieldNode *)self setPhysicsField:v5];
  }
}

- (SKMagneticFieldNode)init
{
  v5.receiver = self;
  v5.super_class = SKMagneticFieldNode;
  v2 = [(SKFieldNode *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SKMagneticFieldNode *)v2 _initialize];
  }

  return v3;
}

- (SKMagneticFieldNode)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D3D100] field];
  v8.receiver = self;
  v8.super_class = SKMagneticFieldNode;
  v6 = [(SKFieldNode *)&v8 initWithCoder:v4 field:v5];

  if (v6)
  {
    [(SKMagneticFieldNode *)v6 _initialize];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SKMagneticFieldNode;
  [(SKFieldNode *)&v3 encodeWithCoder:a3];
}

@end