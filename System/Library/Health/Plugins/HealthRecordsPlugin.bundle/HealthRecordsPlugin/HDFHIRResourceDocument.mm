@interface HDFHIRResourceDocument
- (NSArray)resourceObjects;
- (id)_dictionaryRepresentationWithResourceHandler:(id)handler;
- (void)addResourceObjects:(id)objects;
@end

@implementation HDFHIRResourceDocument

- (NSArray)resourceObjects
{
  v2 = [(NSMutableArray *)self->_resourceObjects copy];

  return v2;
}

- (void)addResourceObjects:(id)objects
{
  resourceObjects = self->_resourceObjects;
  if (resourceObjects)
  {

    [(NSMutableArray *)resourceObjects addObjectsFromArray:objects];
  }

  else
  {
    v5 = [objects mutableCopy];
    v6 = self->_resourceObjects;
    self->_resourceObjects = v5;

    _objc_release_x1();
  }
}

- (id)_dictionaryRepresentationWithResourceHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[NSMutableDictionary dictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = self->_resourceObjects;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        identifier = [v11 identifier];
        resourceType = [identifier resourceType];

        if (resourceType)
        {
          v14 = [v5 objectForKeyedSubscript:resourceType];
          if (!v14)
          {
            v14 = +[NSMutableArray array];
            [v5 setObject:v14 forKeyedSubscript:resourceType];
          }

          v15 = handlerCopy[2](handlerCopy, v11);
          [v14 addObject:v15];
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  return v5;
}

@end