@interface MTSessionFilter
- (MTSessionFilter)initWithSession:(id)a3;
- (id)filterEvent:(id)a3 forService:(id)a4;
- (void)serviceNotification:(id)a3 added:(BOOL)a4;
- (void)setDispatchQueue:(id)a3;
@end

@implementation MTSessionFilter

- (MTSessionFilter)initWithSession:(id)a3
{
  v8.receiver = self;
  v8.super_class = MTSessionFilter;
  v3 = [(MTSessionFilter *)&v8 init];
  if (v3)
  {
    v4 = objc_opt_new();
    v5 = v4;
    if (v4 && [v4 count])
    {
      [(MTSessionFilter *)v3 setManagers:v5];
      v6 = v3;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)serviceNotification:(id)a3 added:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(MTSessionFilter *)self managers];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if (v4)
        {
          [v12 registerService:v6];
        }

        else
        {
          [v12 unregisterService:v6];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)setDispatchQueue:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(MTSessionFilter *)self managers];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) setQueue:v4];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)filterEvent:(id)a3 forService:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [(MTSessionFilter *)self managers];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
LABEL_3:
    v12 = 0;
    v13 = v6;
    while (1)
    {
      if (*v16 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v6 = [*(*(&v15 + 1) + 8 * v12) filterEvent:v13 fromService:v7];

      if (!v6)
      {
        break;
      }

      v12 = v12 + 1;
      v13 = v6;
      if (v10 == v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v6;
}

@end