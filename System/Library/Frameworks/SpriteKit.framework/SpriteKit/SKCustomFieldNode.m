@interface SKCustomFieldNode
- (SKCustomFieldNode)init;
- (SKCustomFieldNode)initWithCoder:(id)a3;
- (void)_initialize;
- (void)encodeWithCoder:(id)a3;
- (void)setBatchBlock:(id)a3;
- (void)setBlock:(id)a3;
@end

@implementation SKCustomFieldNode

- (void)_initialize
{
  if (!self->super._field)
  {
    v3 = [MEMORY[0x277D3D0E0] fieldWithCustomBlock:0];
    field = self->super._field;
    self->super._field = v3;

    v5 = self->super._field;

    [(SKFieldNode *)self setPhysicsField:v5];
  }
}

- (SKCustomFieldNode)init
{
  v5.receiver = self;
  v5.super_class = SKCustomFieldNode;
  v2 = [(SKFieldNode *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SKCustomFieldNode *)v2 _initialize];
  }

  return v3;
}

- (SKCustomFieldNode)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D3D0E0] fieldWithCustomBlock:0];
  v8.receiver = self;
  v8.super_class = SKCustomFieldNode;
  v6 = [(SKFieldNode *)&v8 initWithCoder:v4 field:v5];

  if (v6)
  {
    [(SKCustomFieldNode *)v6 _initialize];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SKCustomFieldNode;
  [(SKFieldNode *)&v3 encodeWithCoder:a3];
}

- (void)setBatchBlock:(id)a3
{
  v6 = MEMORY[0x21CF0AB10](a3, a2);
  v4 = [MEMORY[0x277D3D0E0] fieldWithCustomBatchBlock:?];
  field = self->super._field;
  self->super._field = v4;

  [(SKFieldNode *)self setPhysicsField:self->super._field];
}

- (void)setBlock:(id)a3
{
  v6 = MEMORY[0x21CF0AB10](a3, a2);
  v4 = [MEMORY[0x277D3D0E0] fieldWithCustomBlock:?];
  field = self->super._field;
  self->super._field = v4;

  [(SKFieldNode *)self setPhysicsField:self->super._field];
}

@end