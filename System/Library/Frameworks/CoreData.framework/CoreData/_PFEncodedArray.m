@interface _PFEncodedArray
- (id)description;
- (id)mutableCopy;
- (void)_replaceObject:(id)a3 atIndex:(unint64_t)a4;
- (void)dealloc;
@end

@implementation _PFEncodedArray

- (void)dealloc
{
  if (self->_count)
  {
    v3 = 0;
    do
    {
    }

    while (v3 < self->_count);
  }
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v6.receiver = self;
  v6.super_class = _PFEncodedArray;
  v4 = [(_PFEncodedArray *)&v6 description];
  objc_autoreleasePoolPop(v3);
  return v4;
}

- (id)mutableCopy
{
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  count = self->_count;

  return [v3 initWithObjects:&self[1] count:count];
}

- (void)_replaceObject:(id)a3 atIndex:(unint64_t)a4
{
  v7 = a3;
  v8 = (&self->super.super.isa + a4);

  v8[3] = a3;
}

@end