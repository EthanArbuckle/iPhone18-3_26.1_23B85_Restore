@interface ServiceURLsDebugController
- (ServiceURLsDebugController)init;
- (id)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)dealloc;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)valueChangedForGEOConfigKey:(id)a3;
@end

@implementation ServiceURLsDebugController

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v22 = a4;
  [a3 deselectRowAtIndexPath:v22 animated:1];
  v6 = -[NSArray objectAtIndexedSubscript:](self->_serviceURLs, "objectAtIndexedSubscript:", [v22 section]);
  if ([v22 row])
  {
    v7 = [v22 row] - 1;
    if (v7 >= [v6 count])
    {
      v15 = [CustomServiceURLDebugController alloc];
      v16 = [(ServiceURLsDebugController *)self tableView];
      v8 = -[CustomServiceURLDebugController initWithStyle:](v15, "initWithStyle:", [v16 style]);

      v17 = [v6 defaultsKey];
      [(CustomServiceURLDebugController *)v8 setDefaultsKey:v17, v18];
      v19 = [v6 defaultCustomURLString];
      [(CustomServiceURLDebugController *)v8 setDefaultURLString:v19];

      v20 = [v6 callback];
      [(CustomServiceURLDebugController *)v8 setCallback:v20];

      v21 = [(ServiceURLsDebugController *)self navigationController];
      [v21 pushViewController:v8 animated:1];
    }

    else
    {
      v8 = [v6 URLAtIndex:{objc_msgSend(v22, "row") - 1}];
      v9 = [v6 infoAtIndex:{objc_msgSend(v22, "row") - 1}];
      [v6 defaultsKey];
      GEOConfigSetString();
      v10 = +[NSNotificationCenter defaultCenter];
      [v10 postNotificationName:GEOCountryConfigurationProvidersDidChangeNotification object:self userInfo:0];

      v11 = [v6 callback];

      if (v11)
      {
        v12 = [v6 callback];
        (v12)[2](v12, v8, v9);
      }
    }
  }

  else
  {
    [v6 defaultsKey];
    _GEOConfigRemoveValue();
    v13 = +[NSNotificationCenter defaultCenter];
    [v13 postNotificationName:GEOCountryConfigurationProvidersDidChangeNotification object:self userInfo:0];

    v14 = [v6 callback];

    if (!v14)
    {
      goto LABEL_10;
    }

    v8 = [v6 callback];
    (*&v8->_defaultsKey.key.identifier)(v8, 0, 0);
  }

LABEL_10:
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"ServiceURLCell"];
  if (!v7)
  {
    v7 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"ServiceURLCell"];
  }

  [v7 setAccessoryView:0];
  v8 = [v7 detailTextLabel];
  [v8 setText:0];

  v9 = -[NSArray objectAtIndexedSubscript:](self->_serviceURLs, "objectAtIndexedSubscript:", [v6 section]);
  [v9 defaultsKey];
  v10 = GEOConfigGetValueWithSourceString();
  if ([v6 row])
  {
    v11 = [v6 row] - 1;
    if (v11 < [v9 count])
    {
      v12 = [v9 nameAtIndex:{objc_msgSend(v6, "row") - 1}];
      v13 = [v7 textLabel];
      [v13 setText:v12];

      v14 = [v9 URLAtIndex:{objc_msgSend(v6, "row") - 1}];
      v15 = [v7 detailTextLabel];
      [v15 setText:v14];

      if (v10)
      {
        if ([v14 isEqualToString:v10])
        {
          v16 = 3;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }

      [v7 setAccessoryType:v16];

      goto LABEL_26;
    }

    v20 = [v7 textLabel];
    [v20 setText:@"Custom"];

    v21 = 0;
    if ([v9 count])
    {
      v22 = 0;
      do
      {
        v23 = [v9 URLAtIndex:v22];
        v24 = v23;
        if (v10)
        {
          v25 = [v23 isEqualToString:v10] ^ 1;
        }

        else
        {
          LOBYTE(v25) = 1;
        }

        v21 &= v25;

        ++v22;
      }

      while (v22 < [v9 count]);
    }

    v26 = [v7 detailTextLabel];
    v27 = v26;
    if (v21)
    {
      v28 = v10;
    }

    else
    {
      v28 = 0;
    }

    if (v21)
    {
      v29 = 3;
    }

    else
    {
      v29 = 0;
    }

    [v26 setText:v28];

    v19 = v7;
    v18 = v29;
  }

  else
  {
    v17 = [v7 textLabel];
    [v17 setText:@"Default"];

    v18 = 3;
    v19 = v7;
  }

  [v19 setAccessoryType:v18];
LABEL_26:

  return v7;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(NSArray *)self->_serviceURLs objectAtIndexedSubscript:a4];
  v5 = [v4 serviceName];

  return v5;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(NSArray *)self->_serviceURLs objectAtIndexedSubscript:a4];
  v5 = [v4 count];

  return v5 + 2;
}

- (void)dealloc
{
  GEOConfigRemoveDelegateListenerForAllKeys();
  v3.receiver = self;
  v3.super_class = ServiceURLsDebugController;
  [(MapsDebugValuesViewController *)&v3 dealloc];
}

- (ServiceURLsDebugController)init
{
  v16.receiver = self;
  v16.super_class = ServiceURLsDebugController;
  v2 = [(AuxiliaryDebugViewController *)&v16 init];
  if (v2)
  {
    v3 = +[ServiceURLList defaultServiceURLLists];
    serviceURLs = v2->_serviceURLs;
    v2->_serviceURLs = v3;

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = v2->_serviceURLs;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v12 + 1) + 8 * v9) defaultsKey];
          _GEOConfigAddDelegateListenerForKey();
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v7);
    }

    v10 = v2;
  }

  return v2;
}

- (void)valueChangedForGEOConfigKey:(id)a3
{
  v3 = [(ServiceURLsDebugController *)self tableView:*&a3.var0];
  [v3 reloadData];
}

@end