@interface SKDragFieldNode
- (SKDragFieldNode)init;
- (SKDragFieldNode)initWithCoder:(id)coder;
- (void)_initialize;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKDragFieldNode

- (void)_initialize
{
  if (!self->super._field)
  {
    field = [MEMORY[0x277D3D0E8] field];
    field = self->super._field;
    self->super._field = field;

    v5 = self->super._field;

    [(SKFieldNode *)self setPhysicsField:v5];
  }
}

- (SKDragFieldNode)init
{
  v5.receiver = self;
  v5.super_class = SKDragFieldNode;
  v2 = [(SKFieldNode *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SKDragFieldNode *)v2 _initialize];
  }

  return v3;
}

- (SKDragFieldNode)initWithCoder:(id)coder
{
  coderCopy = coder;
  field = [MEMORY[0x277D3D0E8] field];
  v8.receiver = self;
  v8.super_class = SKDragFieldNode;
  v6 = [(SKFieldNode *)&v8 initWithCoder:coderCopy field:field];

  if (v6)
  {
    [(SKDragFieldNode *)v6 _initialize];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SKDragFieldNode;
  [(SKFieldNode *)&v3 encodeWithCoder:coder];
}

@end