@interface TUIFilterRegistry
- (TUIFilterRegistry)init;
- (id)imageFilterWithIdentifier:(id)identifier;
- (id)imageSetFilterWithIdentifier:(id)identifier;
- (void)registerImageFilters:(id)filters;
- (void)registerImageSetFilters:(id)filters;
@end

@implementation TUIFilterRegistry

- (TUIFilterRegistry)init
{
  v8.receiver = self;
  v8.super_class = TUIFilterRegistry;
  v2 = [(TUIFilterRegistry *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    imageFilters = v2->_imageFilters;
    v2->_imageFilters = v3;

    v5 = objc_opt_new();
    imageSetFilters = v2->_imageSetFilters;
    v2->_imageSetFilters = v5;
  }

  return v2;
}

- (void)registerImageFilters:(id)filters
{
  filtersCopy = filters;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [filtersCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(filtersCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        identifier = [v9 identifier];
        if ([identifier length])
        {
          [(NSMutableDictionary *)self->_imageFilters setObject:v9 forKeyedSubscript:identifier];
        }
      }

      v6 = [filtersCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)registerImageSetFilters:(id)filters
{
  filtersCopy = filters;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [filtersCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(filtersCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        identifier = [v9 identifier];
        if ([identifier length])
        {
          [(NSMutableDictionary *)self->_imageSetFilters setObject:v9 forKeyedSubscript:identifier];
        }
      }

      v6 = [filtersCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (id)imageFilterWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v5 = [(NSMutableDictionary *)self->_imageFilters objectForKeyedSubscript:identifierCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)imageSetFilterWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v5 = [(NSMutableDictionary *)self->_imageSetFilters objectForKeyedSubscript:identifierCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end