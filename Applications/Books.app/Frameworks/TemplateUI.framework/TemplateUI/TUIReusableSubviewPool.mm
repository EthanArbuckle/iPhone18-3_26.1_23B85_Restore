@interface TUIReusableSubviewPool
- (TUIReusableSubviewPool)initWithRegistry:(id)a3;
- (id)dequeueReusableSubviewWithReuseIdentifier:(id)a3 host:(id)a4;
- (void)clearPool;
- (void)prepareToReuseHost:(id)a3;
- (void)reuseSubviews:(id)a3 host:(id)a4;
@end

@implementation TUIReusableSubviewPool

- (TUIReusableSubviewPool)initWithRegistry:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = TUIReusableSubviewPool;
  v6 = [(TUIReusableSubviewPool *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_registry, a3);
    v8 = objc_opt_new();
    subviewsAvailableByIdentifier = v7->_subviewsAvailableByIdentifier;
    v7->_subviewsAvailableByIdentifier = v8;
  }

  return v7;
}

- (id)dequeueReusableSubviewWithReuseIdentifier:(id)a3 host:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = [(NSMutableDictionary *)self->_subviewsAvailableByIdentifier objectForKeyedSubscript:v7];
    v10 = [v8 tui_hostingView];
    v11 = v10;
    if (v10)
    {
      v12 = v9 == 0;
    }

    else
    {
      v12 = 1;
    }

    v13 = !v12;
    if (v12 || (v22[0] = _NSConcreteStackBlock, v22[1] = 3221225472, v22[2] = sub_DC5E4, v22[3] = &unk_261750, v4 = &v23, v23 = v10, v14 = [v9 indexOfObjectPassingTest:v22], v14 == 0x7FFFFFFFFFFFFFFFLL))
    {
      if ([v9 count])
      {
        v15 = [v9 lastObject];
        [v9 removeLastObject];
        if (v15)
        {
LABEL_12:
          if ([v8 isDescendantOfView:v15])
          {
            [v8 removeFromSuperview];
          }

          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_DC624;
          v20[3] = &unk_25DE30;
          v16 = v15;
          v21 = v16;
          [UIView performWithoutAnimation:v20];

          if (!v13)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }
      }
    }

    else
    {
      v18 = v14;
      v15 = [v9 objectAtIndexedSubscript:v14];
      [v9 removeObjectAtIndex:v18];
      if (v15)
      {
        goto LABEL_12;
      }
    }

    v16 = [(TUIViewRegistry *)self->_registry newSubviewWithReuseIdentifier:v7];
    if (!v13)
    {
LABEL_23:

      goto LABEL_24;
    }

LABEL_22:

    goto LABEL_23;
  }

  v17 = TUIDefaultLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_19B400(v17);
  }

  if (_TUIDeviceHasInternalInstall())
  {
    objc_exception_throw([[NSException alloc] initWithName:@"Nil reuseIdentifier" reason:@"Requested a view with nil reuseIdentifier" userInfo:0]);
  }

  v16 = 0;
LABEL_24:

  return v16;
}

- (void)prepareToReuseHost:(id)a3
{
  v4 = a3;
  v5 = [v4 tui_hostedSubviewsMap];
  v6 = [v5 allValues];
  v7 = [v6 copy];

  [v4 setTui_hostedSubviewsMap:0];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_DC75C;
  v9[3] = &unk_25DE30;
  v10 = v7;
  v8 = v7;
  [UIView performWithoutAnimation:v9];
  [(TUIReusableSubviewPool *)self reuseSubviews:v8 host:v4];
}

- (void)reuseSubviews:(id)a3 host:(id)a4
{
  v6 = a3;
  v20 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [v12 reuseIdentifier];
        if (v13)
        {
          [v12 setHidden:1];
          v14 = [(NSMutableDictionary *)self->_subviewsAvailableByIdentifier objectForKeyedSubscript:v13];
          if (!v14)
          {
            v14 = objc_opt_new();
            [(NSMutableDictionary *)self->_subviewsAvailableByIdentifier setObject:v14 forKeyedSubscript:v13];
          }

          if ([v14 indexOfObjectIdenticalTo:v12] == 0x7FFFFFFFFFFFFFFFLL)
          {
            [v14 addObject:v12];
          }
        }

        else
        {
          v15 = TUIDefaultLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_19B444(v27, v12, &v28, v15);
          }

          if (_TUIDeviceHasInternalInstall())
          {
            v16 = [NSException alloc];
            v25 = @"view";
            v26 = v12;
            v17 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
            v18 = [v16 initWithName:@"Nil reuseIdentifier" reason:@"A reusable view should have a non-nil reuseIdentifier" userInfo:v17];
            v19 = v18;

            objc_exception_throw(v18);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v9);
  }
}

- (void)clearPool
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [(NSMutableDictionary *)self->_subviewsAvailableByIdentifier allKeys];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * v7);
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v9 = [(NSMutableDictionary *)self->_subviewsAvailableByIdentifier objectForKeyedSubscript:v8, 0];
        v10 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v15;
          do
          {
            v13 = 0;
            do
            {
              if (*v15 != v12)
              {
                objc_enumerationMutation(v9);
              }

              [*(*(&v14 + 1) + 8 * v13) removeFromSuperview];
              v13 = v13 + 1;
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
          }

          while (v11);
        }

        v7 = v7 + 1;
      }

      while (v7 != v5);
      v5 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_subviewsAvailableByIdentifier removeAllObjects];
}

@end