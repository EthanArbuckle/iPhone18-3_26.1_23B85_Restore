@interface ServiceURLsDebugController
- (ServiceURLsDebugController)init;
- (id)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)dealloc;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)valueChangedForGEOConfigKey:(id)key;
@end

@implementation ServiceURLsDebugController

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  v6 = -[NSArray objectAtIndexedSubscript:](self->_serviceURLs, "objectAtIndexedSubscript:", [pathCopy section]);
  if ([pathCopy row])
  {
    v7 = [pathCopy row] - 1;
    if (v7 >= [v6 count])
    {
      v15 = [CustomServiceURLDebugController alloc];
      tableView = [(ServiceURLsDebugController *)self tableView];
      callback5 = -[CustomServiceURLDebugController initWithStyle:](v15, "initWithStyle:", [tableView style]);

      defaultsKey = [v6 defaultsKey];
      [(CustomServiceURLDebugController *)callback5 setDefaultsKey:defaultsKey, v18];
      defaultCustomURLString = [v6 defaultCustomURLString];
      [(CustomServiceURLDebugController *)callback5 setDefaultURLString:defaultCustomURLString];

      callback = [v6 callback];
      [(CustomServiceURLDebugController *)callback5 setCallback:callback];

      navigationController = [(ServiceURLsDebugController *)self navigationController];
      [navigationController pushViewController:callback5 animated:1];
    }

    else
    {
      callback5 = [v6 URLAtIndex:{objc_msgSend(pathCopy, "row") - 1}];
      v9 = [v6 infoAtIndex:{objc_msgSend(pathCopy, "row") - 1}];
      [v6 defaultsKey];
      GEOConfigSetString();
      v10 = +[NSNotificationCenter defaultCenter];
      [v10 postNotificationName:GEOCountryConfigurationProvidersDidChangeNotification object:self userInfo:0];

      callback2 = [v6 callback];

      if (callback2)
      {
        callback3 = [v6 callback];
        (callback3)[2](callback3, callback5, v9);
      }
    }
  }

  else
  {
    [v6 defaultsKey];
    _GEOConfigRemoveValue();
    v13 = +[NSNotificationCenter defaultCenter];
    [v13 postNotificationName:GEOCountryConfigurationProvidersDidChangeNotification object:self userInfo:0];

    callback4 = [v6 callback];

    if (!callback4)
    {
      goto LABEL_10;
    }

    callback5 = [v6 callback];
    (*&callback5->_defaultsKey.key.identifier)(callback5, 0, 0);
  }

LABEL_10:
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"ServiceURLCell"];
  if (!v7)
  {
    v7 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"ServiceURLCell"];
  }

  [v7 setAccessoryView:0];
  detailTextLabel = [v7 detailTextLabel];
  [detailTextLabel setText:0];

  v9 = -[NSArray objectAtIndexedSubscript:](self->_serviceURLs, "objectAtIndexedSubscript:", [pathCopy section]);
  [v9 defaultsKey];
  v10 = GEOConfigGetValueWithSourceString();
  if ([pathCopy row])
  {
    v11 = [pathCopy row] - 1;
    if (v11 < [v9 count])
    {
      v12 = [v9 nameAtIndex:{objc_msgSend(pathCopy, "row") - 1}];
      textLabel = [v7 textLabel];
      [textLabel setText:v12];

      v14 = [v9 URLAtIndex:{objc_msgSend(pathCopy, "row") - 1}];
      detailTextLabel2 = [v7 detailTextLabel];
      [detailTextLabel2 setText:v14];

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

    textLabel2 = [v7 textLabel];
    [textLabel2 setText:@"Custom"];

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

    detailTextLabel3 = [v7 detailTextLabel];
    v27 = detailTextLabel3;
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

    [detailTextLabel3 setText:v28];

    v19 = v7;
    v18 = v29;
  }

  else
  {
    textLabel3 = [v7 textLabel];
    [textLabel3 setText:@"Default"];

    v18 = 3;
    v19 = v7;
  }

  [v19 setAccessoryType:v18];
LABEL_26:

  return v7;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(NSArray *)self->_serviceURLs objectAtIndexedSubscript:section];
  serviceName = [v4 serviceName];

  return serviceName;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(NSArray *)self->_serviceURLs objectAtIndexedSubscript:section];
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

- (void)valueChangedForGEOConfigKey:(id)key
{
  v3 = [(ServiceURLsDebugController *)self tableView:*&key.var0];
  [v3 reloadData];
}

@end