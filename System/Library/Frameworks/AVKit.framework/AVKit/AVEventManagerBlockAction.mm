@interface AVEventManagerBlockAction
- (AVEventManagerBlockAction)initWithBlock:(id)block event:(id)event;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation AVEventManagerBlockAction

- (unint64_t)hash
{
  v3 = [self->_block hash];
  v5.receiver = self;
  v5.super_class = AVEventManagerBlockAction;
  return [(AVEventManagerBlockAction *)&v5 hash]& v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v8.receiver = self;
      v8.super_class = AVEventManagerBlockAction;
      if ([(AVEventManagerAction *)&v8 isEqual:v5])
      {
        v6 = self->_block == v5[2];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (AVEventManagerBlockAction)initWithBlock:(id)block event:(id)event
{
  blockCopy = block;
  v11.receiver = self;
  v11.super_class = AVEventManagerBlockAction;
  v7 = [(AVEventManagerAction *)&v11 initWithEvent:event];
  if (v7)
  {
    v8 = _Block_copy(blockCopy);
    block = v7->_block;
    v7->_block = v8;
  }

  return v7;
}

@end