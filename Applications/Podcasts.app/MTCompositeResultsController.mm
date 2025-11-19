@interface MTCompositeResultsController
+ (id)controllerWithControllers:(id)a3;
- (BOOL)hasObjects;
- (MTCompositeResultsController)initWithControllers:(id)a3;
- (id)allObjects;
- (id)controllerAtIndex:(unint64_t)a3;
- (id)delegate;
- (id)indexPathForObject:(id)a3;
- (id)indexPathsForObject:(id)a3;
- (id)objectAtIndexPath:(id)a3;
- (unint64_t)indexOfController:(id)a3;
- (unint64_t)numberOfObjectsInSection:(unint64_t)a3;
- (void)_setControllers:(id)a3;
- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7;
- (void)controllerDidChangeContent:(id)a3;
- (void)controllerWillChangeContent:(id)a3;
- (void)reloadData;
@end

@implementation MTCompositeResultsController

+ (id)controllerWithControllers:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithControllers:v3];

  return v4;
}

- (MTCompositeResultsController)initWithControllers:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MTCompositeResultsController;
  v5 = [(MTCompositeResultsController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MTCompositeResultsController *)v5 _setControllers:v4];
  }

  return v6;
}

- (void)_setControllers:(id)a3
{
  v5 = a3;
  controllers = self->_controllers;
  if (controllers != v5)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = controllers;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        v11 = 0;
        do
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v21 + 1) + 8 * v11) setDelegate:0];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v9);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = v5;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v18;
      do
      {
        v16 = 0;
        do
        {
          if (*v18 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v17 + 1) + 8 * v16) setDelegate:{self, v17}];
          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v14);
    }

    objc_storeStrong(&self->_controllers, a3);
  }
}

- (void)reloadData
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(MTCompositeResultsController *)self controllers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) reloadData];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)indexPathForObject:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100008920;
  v16 = sub_10003B474;
  v17 = 0;
  v5 = [(MTCompositeResultsController *)self controllers];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007575C;
  v9[3] = &unk_1004D94F0;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)objectAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = -[MTCompositeResultsController controllerAtIndex:](self, "controllerAtIndex:", [v4 section]);
    if (v6)
    {
      v7 = [v6 objectAtIndex:{objc_msgSend(v5, "row")}];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)numberOfObjectsInSection:(unint64_t)a3
{
  v3 = [(MTCompositeResultsController *)self controllerAtIndex:a3];
  v4 = [v3 numberOfObjects];

  return v4;
}

- (id)indexPathsForObject:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = [(MTCompositeResultsController *)self controllers];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1000759CC;
  v14 = &unk_1004D9518;
  v7 = v4;
  v15 = v7;
  v8 = v5;
  v16 = v8;
  [v6 enumerateObjectsUsingBlock:&v11];

  if ([v8 count])
  {
    v9 = [NSArray arrayWithArray:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)controllerAtIndex:(unint64_t)a3
{
  v5 = [(MTCompositeResultsController *)self controllers];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    v8 = 0;
  }

  else
  {
    v7 = [(MTCompositeResultsController *)self controllers];
    v8 = [v7 objectAtIndexedSubscript:a3];
  }

  return v8;
}

- (unint64_t)indexOfController:(id)a3
{
  v4 = a3;
  v5 = [(MTCompositeResultsController *)self controllers];
  v6 = [v5 indexOfObject:v4];

  return v6;
}

- (void)controllerWillChangeContent:(id)a3
{
  v4 = a3;
  v5 = [(MTCompositeResultsController *)self delegate];
  [v5 controllerWillChangeContent:v4];
}

- (void)controllerDidChangeContent:(id)a3
{
  v4 = a3;
  v5 = [(MTCompositeResultsController *)self delegate];
  [v5 controllerDidChangeContent:v4];
}

- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7
{
  v21 = a5;
  v12 = a7;
  v13 = a4;
  v14 = a3;
  v15 = [(MTCompositeResultsController *)self indexOfController:v14];
  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = +[IMLogger sharedLogger];
    [v16 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Library/FRC/MTCompositeResultsController.m" lineNumber:142 format:{@"Observed change for object %@ in section %@ but can't find the section index", v13, v14}];
  }

  else
  {
    v17 = v15;
    v18 = v21;
    if (v21)
    {
      v19 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v21 row], v17);

      v18 = v19;
    }

    v21 = v18;
    if (v12)
    {
      v20 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v12 row], v17);

      v12 = v20;
    }

    v16 = [(MTCompositeResultsController *)self delegate];
    [v16 controller:v14 didChangeObject:v13 atIndexPath:v21 forChangeType:a6 newIndexPath:v12];
  }
}

- (id)allObjects
{
  v3 = objc_alloc_init(NSMutableArray);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(MTCompositeResultsController *)self controllers];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) allObjects];
        if (v9)
        {
          [v3 addObjectsFromArray:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (BOOL)hasObjects
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(MTCompositeResultsController *)self controllers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) hasObjects])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end