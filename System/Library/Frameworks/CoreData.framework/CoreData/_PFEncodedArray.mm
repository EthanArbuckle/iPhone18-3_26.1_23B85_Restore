@interface _PFEncodedArray
- (id)description;
- (id)mutableCopy;
- (void)_replaceObject:(id)object atIndex:(unint64_t)index;
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

- (void)_replaceObject:(id)object atIndex:(unint64_t)index
{
  objectCopy = object;
  v8 = (&self->super.super.isa + index);

  v8[3] = object;
}

@end