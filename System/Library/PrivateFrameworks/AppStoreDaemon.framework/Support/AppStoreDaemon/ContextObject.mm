@interface ContextObject
- (ContextObject)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation ContextObject

- (ContextObject)init
{
  v6.receiver = self;
  v6.super_class = ContextObject;
  v2 = [(ContextObject *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    dictionary = v2->_dictionary;
    v2->_dictionary = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  os_unfair_lock_lock(&self->_lock);
  v6 = [(NSMutableDictionary *)self->_dictionary mutableCopyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (id)description
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_dictionary description];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

@end