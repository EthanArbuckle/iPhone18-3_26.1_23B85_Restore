@interface SCNPhysicsCustomField
- (void)dealloc;
- (void)setBlock:(id)block;
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

- (void)setBlock:(id)block
{
  block = self->_block;
  if (block)
  {
    _Block_release(block);
  }

  self->_block = 0;
  if (block)
  {
    v6 = _Block_copy(block);
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