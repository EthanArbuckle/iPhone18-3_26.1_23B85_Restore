@interface TUIFilterRegistry
- (TUIFilterRegistry)init;
- (id)imageFilterWithIdentifier:(id)a3;
- (id)imageSetFilterWithIdentifier:(id)a3;
- (void)registerImageFilters:(id)a3;
- (void)registerImageSetFilters:(id)a3;
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

- (void)registerImageFilters:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [v9 identifier];
        if ([v10 length])
        {
          [(NSMutableDictionary *)self->_imageFilters setObject:v9 forKeyedSubscript:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)registerImageSetFilters:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [v9 identifier];
        if ([v10 length])
        {
          [(NSMutableDictionary *)self->_imageSetFilters setObject:v9 forKeyedSubscript:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (id)imageFilterWithIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(NSMutableDictionary *)self->_imageFilters objectForKeyedSubscript:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)imageSetFilterWithIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(NSMutableDictionary *)self->_imageSetFilters objectForKeyedSubscript:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end