@interface SCNPhysicsCustomField
- (void)dealloc;
- (void)setBlock:(id)a3;
@end

@implementation SCNPhysicsCustomField

- (void)dealloc
{
  block = self->_block;
  if (block)
  {
    _Block_release(block);
    self->_block = 0;
  }

  v4.receiver = self;
  v4.super_class = SCNPhysicsCustomField;
  [(SCNPhysicsField *)&v4 dealloc];
}

- (void)setBlock:(id)a3
{
  block = self->_block;
  if (block)
  {
    _Block_release(block);
  }

  self->_block = 0;
  if (a3)
  {
    v6 = _Block_copy(a3);
    self->_block = v6;
  }

  else
  {
    v6 = 0;
  }

  field = self->super._field;
  if (field)
  {
    *&field[7].var5 = v6;
  }
}

@end