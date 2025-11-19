@interface UpdatingRectValue
- (CGRect)CGRectValue;
- (UpdatingRectValue)initWithUpdateBlock:(id)a3;
@end

@implementation UpdatingRectValue

- (UpdatingRectValue)initWithUpdateBlock:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = UpdatingRectValue;
  v5 = [(UpdatingRectValue *)&v10 init];
  if (v5)
  {
    v6 = MEMORY[0x245CF4600](v4);
    updateBlock = v5->_updateBlock;
    v5->_updateBlock = v6;

    v8 = v5;
  }

  return v5;
}

- (CGRect)CGRectValue
{
  (*(self->_updateBlock + 2))();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end