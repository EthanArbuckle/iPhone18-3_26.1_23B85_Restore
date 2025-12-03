@interface MTLBinaryKey
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToKey:(id)key;
- (MTLBinaryKey)initWithHash:(const void *)hash;
- (id)copyWithZone:(_NSZone *)zone;
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

- (MTLBinaryKey)initWithHash:(const void *)hash
{
  v4.receiver = self;
  v4.super_class = MTLBinaryKey;
  if ([(MTLBinaryKey *)&v4 init])
  {
    operator new();
  }

  return 0;
}

- (BOOL)isEqualToKey:(id)key
{
  id = self->_id;
  getFunctionId = [key getFunctionId];

  return MTLHashKey::operator==(id, getFunctionId);
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(MTLBinaryKey *)self isEqualToKey:equal];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MTLBinaryKey alloc];
  id = self->_id;

  return [(MTLBinaryKey *)v4 initWithHash:id];
}

@end