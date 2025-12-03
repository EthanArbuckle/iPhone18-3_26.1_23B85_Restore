@interface SBSceneDataStore
- (id)_initWithIdentifier:(id)identifier data:(id)data changeHandler:(id)handler;
- (id)objectForKey:(id)key;
- (id)safeObjectForKey:(id)key ofType:(Class)type;
- (id)unarchivedObjectOfClass:(Class)class forKey:(id)key;
- (void)_invalidate;
- (void)_invokeChangeHandler;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)setArchivedObject:(id)object forKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation SBSceneDataStore

- (id)_initWithIdentifier:(id)identifier data:(id)data changeHandler:(id)handler
{
  identifierCopy = identifier;
  dataCopy = data;
  handlerCopy = handler;
  if (identifierCopy)
  {
    if (dataCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_FA7C();
    if (handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  sub_FA08();
  if (!dataCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (handlerCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  sub_FAF0();
LABEL_4:
  v19.receiver = self;
  v19.super_class = SBSceneDataStore;
  v12 = [(SBSceneDataStore *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeStrong(&v13->_data, data);
    v14 = objc_retainBlock(handlerCopy);
    handler = v13->_handler;
    v13->_handler = v14;

    v13->_invalidated = 0;
    v16 = objc_alloc_init(NSMutableDictionary);
    archivedObjectCache = v13->_archivedObjectCache;
    v13->_archivedObjectCache = v16;
  }

  return v13;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  BSDispatchQueueAssertMain();
  v5 = [(NSMutableDictionary *)self->_data objectForKey:keyCopy];

  return v5;
}

- (id)safeObjectForKey:(id)key ofType:(Class)type
{
  keyCopy = key;
  BSDispatchQueueAssertMain();
  v7 = [(NSMutableDictionary *)self->_data bs_safeObjectForKey:keyCopy ofType:type];

  return v7;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  BSDispatchQueueAssertMain();
  v7 = [(NSMutableDictionary *)self->_data objectForKey:keyCopy];
  v8 = v7;
  if (!v7 || ([v7 isEqual:objectCopy] & 1) == 0)
  {
    [(NSMutableDictionary *)self->_data setObject:objectCopy forKey:keyCopy];
    [(SBSceneDataStore *)self _invokeChangeHandler];
  }
}

- (void)setArchivedObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  BSDispatchQueueAssertMain();
  v8 = [(NSMutableDictionary *)self->_archivedObjectCache objectForKey:keyCopy];
  v9 = v8;
  if (!v8 || ([v8 isEqual:objectCopy] & 1) == 0)
  {
    if (objectCopy)
    {
      v12 = 0;
      v10 = [NSKeyedArchiver archivedDataWithRootObject:objectCopy requiringSecureCoding:1 error:&v12];
      v11 = v12;
      if (!v10)
      {
        sub_FB64();
      }

      [(NSMutableDictionary *)self->_archivedObjectCache setObject:objectCopy forKey:keyCopy];
    }

    else
    {
      v10 = 0;
    }

    [(SBSceneDataStore *)self setObject:v10 forKey:keyCopy];
  }
}

- (id)unarchivedObjectOfClass:(Class)class forKey:(id)key
{
  keyCopy = key;
  BSDispatchQueueAssertMain();
  v7 = [(NSMutableDictionary *)self->_archivedObjectCache objectForKey:keyCopy];
  if (!v7)
  {
    v8 = [(NSMutableDictionary *)self->_data objectForKey:keyCopy];
    if (v8)
    {
      v11 = 0;
      v7 = [NSKeyedUnarchiver unarchivedObjectOfClass:class fromData:v8 error:&v11];
      v9 = v11;
      if (!v7)
      {
        sub_FBD8();
      }

      [(NSMutableDictionary *)self->_archivedObjectCache setObject:v7 forKey:keyCopy];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  BSDispatchQueueAssertMain();
  v4 = [(NSMutableDictionary *)self->_data objectForKey:keyCopy];

  if (v4)
  {
    [(NSMutableDictionary *)self->_data removeObjectForKey:keyCopy];
    [(SBSceneDataStore *)self _invokeChangeHandler];
  }
}

- (void)removeAllObjects
{
  BSDispatchQueueAssertMain();
  if ([(NSMutableDictionary *)self->_data count])
  {
    [(NSMutableDictionary *)self->_data removeAllObjects];

    [(SBSceneDataStore *)self _invokeChangeHandler];
  }
}

- (void)_invalidate
{
  self->_invalidated = 1;
  handler = self->_handler;
  self->_handler = 0;
  _objc_release_x1();
}

- (void)_invokeChangeHandler
{
  BSDispatchQueueAssertMain();
  if (self->_invalidated)
  {
    sub_FC4C();
  }

  handler = self->_handler;
  if (handler)
  {
    v4 = *(handler + 2);

    v4();
  }
}

@end