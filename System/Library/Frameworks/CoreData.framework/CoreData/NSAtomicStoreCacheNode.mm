@interface NSAtomicStoreCacheNode
- (BOOL)isEqual:(id)equal;
- (NSAtomicStoreCacheNode)initWithObjectID:(NSManagedObjectID *)moid;
- (id)valueForKey:(NSString *)key;
- (void)dealloc;
- (void)setPropertyCache:(NSMutableDictionary *)propertyCache;
- (void)setValue:(id)value forKey:(NSString *)key;
@end

@implementation NSAtomicStoreCacheNode

- (NSAtomicStoreCacheNode)initWithObjectID:(NSManagedObjectID *)moid
{
  if (!moid)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSAtomicStoreCacheNodes must be created with an objectID" userInfo:0]);
  }

  v6.receiver = self;
  v6.super_class = NSAtomicStoreCacheNode;
  v4 = [(NSAtomicStoreCacheNode *)&v6 init];
  if (v4)
  {
    v4->_objectID = moid;
    v4->__versionNumber = 1;
    v4->_propertyCache = 0;
  }

  return v4;
}

- (void)dealloc
{
  self->_objectID = 0;

  self->_propertyCache = 0;
  v3.receiver = self;
  v3.super_class = NSAtomicStoreCacheNode;
  [(NSAtomicStoreCacheNode *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    return 0;
  }

  objectID = self->_objectID;
  v8 = *(equal + 1);

  return [(NSManagedObjectID *)objectID isEqual:v8];
}

- (void)setPropertyCache:(NSMutableDictionary *)propertyCache
{
  v4 = self->_propertyCache;
  if (v4 != propertyCache)
  {
    v5 = v4;
    self->_propertyCache = propertyCache;
  }
}

- (id)valueForKey:(NSString *)key
{
  entity = [(NSManagedObjectID *)self->_objectID entity];
  if (entity)
  {
    entity = entity->_propertyMapping;
  }

  if ([(NSEntityDescription *)entity indexForKey:key]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return [(NSAtomicStoreCacheNode *)&v10 valueForKey:key, v9.receiver, v9.super_class, self, NSAtomicStoreCacheNode];
  }

  entity2 = [(NSManagedObjectID *)self->_objectID entity];
  if (entity2)
  {
    entity2 = [(NSDictionary *)[(NSEntityDescription *)entity2 propertiesByName] objectForKey:key];
  }

  if ([(NSEntityDescription *)entity2 isTransient])
  {
    return [(NSAtomicStoreCacheNode *)&v9 valueForKey:key, self, NSAtomicStoreCacheNode, v10.receiver, v10.super_class];
  }

  propertyCache = self->_propertyCache;

  return [(NSMutableDictionary *)propertyCache valueForKey:key];
}

- (void)setValue:(id)value forKey:(NSString *)key
{
  entity = [(NSManagedObjectID *)self->_objectID entity];
  if (entity)
  {
    entity = entity->_propertyMapping;
  }

  if ([(NSEntityDescription *)entity indexForKey:key]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v9.receiver = self;
    v9.super_class = NSAtomicStoreCacheNode;
    [(NSAtomicStoreCacheNode *)&v9 setValue:value forKey:key];
  }

  propertyCache = self->_propertyCache;
  if (propertyCache)
  {
    if (value)
    {
LABEL_7:
      [(NSMutableDictionary *)propertyCache setValue:value forKey:key];
      return;
    }
  }

  else
  {
    propertyCache = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_propertyCache = propertyCache;
    if (value)
    {
      goto LABEL_7;
    }
  }

  [(NSMutableDictionary *)propertyCache removeObjectForKey:key];
}

@end