@interface HDFHIRResourceDocument
- (NSArray)resourceObjects;
- (id)_dictionaryRepresentationWithResourceHandler:(id)a3;
- (void)addResourceObjects:(id)a3;
@end

@implementation HDFHIRResourceDocument

- (NSArray)resourceObjects
{
  v2 = [(NSMutableArray *)self->_resourceObjects copy];

  return v2;
}

- (void)addResourceObjects:(id)a3
{
  resourceObjects = self->_resourceObjects;
  if (resourceObjects)
  {

    [(NSMutableArray *)resourceObjects addObjectsFromArray:a3];
  }

  else
  {
    v5 = [a3 mutableCopy];
    v6 = self->_resourceObjects;
    self->_resourceObjects = v5;

    _objc_release_x1();
  }
}

- (id)_dictionaryRepresentationWithResourceHandler:(id)a3
{
  v4 = a3;
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
        v12 = [v11 identifier];
        v13 = [v12 resourceType];

        if (v13)
        {
          v14 = [v5 objectForKeyedSubscript:v13];
          if (!v14)
          {
            v14 = +[NSMutableArray array];
            [v5 setObject:v14 forKeyedSubscript:v13];
          }

          v15 = v4[2](v4, v11);
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