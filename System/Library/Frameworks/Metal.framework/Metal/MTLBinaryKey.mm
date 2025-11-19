@interface MTLBinaryKey
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToKey:(id)a3;
- (MTLBinaryKey)initWithHash:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
@end

@implementation MTLBinaryKey

- (void)dealloc
{
  id = self->_id;
  if (id)
  {
    MTLHashKey::~MTLHashKey(id);
    MEMORY[0x1865FF210]();
  }

  v4.receiver = self;
  v4.super_class = MTLBinaryKey;
  [(MTLBinaryKey *)&v4 dealloc];
}

- (id)description
{
  v5.receiver = self;
  v5.super_class = MTLBinaryKey;
  v3 = [(MTLBinaryKey *)&v5 description];
  return [v3 stringByAppendingFormat:@" %@", MTLHashKey::description(self->_id)];
}

- (MTLBinaryKey)initWithHash:(const void *)a3
{
  v4.receiver = self;
  v4.super_class = MTLBinaryKey;
  if ([(MTLBinaryKey *)&v4 init])
  {
    operator new();
  }

  return 0;
}

- (BOOL)isEqualToKey:(id)a3
{
  id = self->_id;
  v4 = [a3 getFunctionId];

  return MTLHashKey::operator==(id, v4);
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(MTLBinaryKey *)self isEqualToKey:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MTLBinaryKey alloc];
  id = self->_id;

  return [(MTLBinaryKey *)v4 initWithHash:id];
}

@end