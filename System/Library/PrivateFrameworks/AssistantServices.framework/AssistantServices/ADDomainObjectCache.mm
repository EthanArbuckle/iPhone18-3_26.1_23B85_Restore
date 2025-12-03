@interface ADDomainObjectCache
- (ADDomainObjectCache)init;
- (id)domainObjectForKey:(id)key;
- (id)oldIdForKey:(id)key;
- (void)setDomainObject:(id)object withOldId:(id)id forKey:(id)key;
@end

@implementation ADDomainObjectCache

- (id)oldIdForKey:(id)key
{
  v3 = [(NSMutableDictionary *)self->_cacheEntriesByAceKey objectForKeyedSubscript:key];
  oldId = [v3 oldId];

  return oldId;
}

- (void)setDomainObject:(id)object withOldId:(id)id forKey:(id)key
{
  objectCopy = object;
  idCopy = id;
  keyCopy = key;
  v10 = [(NSMutableDictionary *)self->_cacheEntriesByAceKey objectForKeyedSubscript:keyCopy];
  if (objectCopy)
  {
    if (!v10)
    {
      v10 = objc_alloc_init(_ADDomainObjectCacheEntry);
      [(NSMutableDictionary *)self->_cacheEntriesByAceKey setObject:v10 forKeyedSubscript:keyCopy];
    }

    [(_ADDomainObjectCacheEntry *)v10 setAceDictionary:objectCopy];
    if (idCopy)
    {
      [(_ADDomainObjectCacheEntry *)v10 setOldId:idCopy];
    }
  }

  else if (v10)
  {
    [(NSMutableDictionary *)self->_cacheEntriesByAceKey removeObjectForKey:keyCopy];
  }
}

- (id)domainObjectForKey:(id)key
{
  v3 = [(NSMutableDictionary *)self->_cacheEntriesByAceKey objectForKeyedSubscript:key];
  aceDictionary = [v3 aceDictionary];

  return aceDictionary;
}

- (ADDomainObjectCache)init
{
  v6.receiver = self;
  v6.super_class = ADDomainObjectCache;
  v2 = [(ADDomainObjectCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    cacheEntriesByAceKey = v2->_cacheEntriesByAceKey;
    v2->_cacheEntriesByAceKey = v3;
  }

  return v2;
}

@end