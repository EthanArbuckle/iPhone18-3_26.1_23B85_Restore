@interface AVEventManagerBlockAction
- (AVEventManagerBlockAction)initWithBlock:(id)a3 event:(id)a4;
- (BOOL)isEqual:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (AVEventManagerBlockAction)initWithBlock:(id)a3 event:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = AVEventManagerBlockAction;
  v7 = [(AVEventManagerAction *)&v11 initWithEvent:a4];
  if (v7)
  {
    v8 = _Block_copy(v6);
    block = v7->_block;
    v7->_block = v8;
  }

  return v7;
}

@end