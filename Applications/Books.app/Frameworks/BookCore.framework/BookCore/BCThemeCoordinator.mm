@interface BCThemeCoordinator
+ (BCThemeCoordinator)shared;
- (BCThemeCoordinator)init;
- (NSArray)observers;
- (void)addObserver:(id)a3;
- (void)observer:(id)a3 didChangeFont:(id)a4;
- (void)observer:(id)a3 didChangeLayout:(unint64_t)a4;
- (void)observer:(id)a3 didChangeStyle:(unint64_t)a4;
- (void)observerDidDecreaseFontSize:(id)a3;
- (void)observerDidIncreaseFontSize:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation BCThemeCoordinator

+ (BCThemeCoordinator)shared
{
  if (qword_3421F0 != -1)
  {
    sub_1E6234();
  }

  v3 = qword_3421E8;

  return v3;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(BCThemeCoordinator *)self observersHash];
  [v5 addObject:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(BCThemeCoordinator *)self observersHash];
  [v5 removeObject:v4];
}

- (NSArray)observers
{
  v2 = [(BCThemeCoordinator *)self observersHash];
  v3 = [v2 allObjects];

  return v3;
}

- (void)observer:(id)a3 didChangeFont:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(BCThemeCoordinator *)self observers];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if ((objc_opt_respondsToSelector() & 1) != 0 && v13 != v6)
        {
          [v13 coordinator:self observer:v6 didChangeFont:v7];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)observerDidIncreaseFontSize:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(BCThemeCoordinator *)self observers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if ((objc_opt_respondsToSelector() & 1) != 0 && v10 != v4)
        {
          [v10 coordinator:self observerDidIncreaseFontSize:v4];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)observerDidDecreaseFontSize:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(BCThemeCoordinator *)self observers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if ((objc_opt_respondsToSelector() & 1) != 0 && v10 != v4)
        {
          [v10 coordinator:self observerDidDecreaseFontSize:v4];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)observer:(id)a3 didChangeStyle:(unint64_t)a4
{
  v6 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(BCThemeCoordinator *)self observers];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if ((objc_opt_respondsToSelector() & 1) != 0 && v12 != v6)
        {
          [v12 coordinator:self observer:v6 didChangeStyle:a4];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)observer:(id)a3 didChangeLayout:(unint64_t)a4
{
  v6 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(BCThemeCoordinator *)self observers];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if ((objc_opt_respondsToSelector() & 1) != 0 && v12 != v6)
        {
          [v12 coordinator:self observer:v6 didChangeLayout:a4];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (BCThemeCoordinator)init
{
  v6.receiver = self;
  v6.super_class = BCThemeCoordinator;
  v2 = [(BCThemeCoordinator *)&v6 init];
  if (v2)
  {
    v3 = +[NSHashTable weakObjectsHashTable];
    observersHash = v2->_observersHash;
    v2->_observersHash = v3;
  }

  return v2;
}

@end