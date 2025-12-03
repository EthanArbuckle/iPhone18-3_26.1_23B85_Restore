@interface MTCompositeResultsController
+ (id)controllerWithControllers:(id)controllers;
- (BOOL)hasObjects;
- (MTCompositeResultsController)initWithControllers:(id)controllers;
- (id)allObjects;
- (id)controllerAtIndex:(unint64_t)index;
- (id)delegate;
- (id)indexPathForObject:(id)object;
- (id)indexPathsForObject:(id)object;
- (id)objectAtIndexPath:(id)path;
- (unint64_t)indexOfController:(id)controller;
- (unint64_t)numberOfObjectsInSection:(unint64_t)section;
- (void)_setControllers:(id)controllers;
- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath;
- (void)controllerDidChangeContent:(id)content;
- (void)controllerWillChangeContent:(id)content;
- (void)reloadData;
@end

@implementation MTCompositeResultsController

+ (id)controllerWithControllers:(id)controllers
{
  controllersCopy = controllers;
  v4 = [objc_alloc(objc_opt_class()) initWithControllers:controllersCopy];

  return v4;
}

- (MTCompositeResultsController)initWithControllers:(id)controllers
{
  controllersCopy = controllers;
  v8.receiver = self;
  v8.super_class = MTCompositeResultsController;
  v5 = [(MTCompositeResultsController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MTCompositeResultsController *)v5 _setControllers:controllersCopy];
  }

  return v6;
}

- (void)_setControllers:(id)controllers
{
  controllersCopy = controllers;
  controllers = self->_controllers;
  if (controllers != controllersCopy)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    controllersCopy2 = controllers;
    v8 = [(NSArray *)controllersCopy2 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
            objc_enumerationMutation(controllersCopy2);
          }

          [*(*(&v21 + 1) + 8 * v11) setDelegate:0];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [(NSArray *)controllersCopy2 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v9);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = controllersCopy;
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

    objc_storeStrong(&self->_controllers, controllers);
  }
}

- (void)reloadData
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  controllers = [(MTCompositeResultsController *)self controllers];
  v3 = [controllers countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(controllers);
        }

        [*(*(&v7 + 1) + 8 * v6) reloadData];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [controllers countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)indexPathForObject:(id)object
{
  objectCopy = object;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100008920;
  v16 = sub_10003B474;
  v17 = 0;
  controllers = [(MTCompositeResultsController *)self controllers];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007575C;
  v9[3] = &unk_1004D94F0;
  v6 = objectCopy;
  v10 = v6;
  v11 = &v12;
  [controllers enumerateObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)objectAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = pathCopy;
  if (pathCopy)
  {
    v6 = -[MTCompositeResultsController controllerAtIndex:](self, "controllerAtIndex:", [pathCopy section]);
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

- (unint64_t)numberOfObjectsInSection:(unint64_t)section
{
  v3 = [(MTCompositeResultsController *)self controllerAtIndex:section];
  numberOfObjects = [v3 numberOfObjects];

  return numberOfObjects;
}

- (id)indexPathsForObject:(id)object
{
  objectCopy = object;
  v5 = +[NSMutableArray array];
  controllers = [(MTCompositeResultsController *)self controllers];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1000759CC;
  v14 = &unk_1004D9518;
  v7 = objectCopy;
  v15 = v7;
  v8 = v5;
  v16 = v8;
  [controllers enumerateObjectsUsingBlock:&v11];

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

- (id)controllerAtIndex:(unint64_t)index
{
  controllers = [(MTCompositeResultsController *)self controllers];
  v6 = [controllers count];

  if (v6 <= index)
  {
    v8 = 0;
  }

  else
  {
    controllers2 = [(MTCompositeResultsController *)self controllers];
    v8 = [controllers2 objectAtIndexedSubscript:index];
  }

  return v8;
}

- (unint64_t)indexOfController:(id)controller
{
  controllerCopy = controller;
  controllers = [(MTCompositeResultsController *)self controllers];
  v6 = [controllers indexOfObject:controllerCopy];

  return v6;
}

- (void)controllerWillChangeContent:(id)content
{
  contentCopy = content;
  delegate = [(MTCompositeResultsController *)self delegate];
  [delegate controllerWillChangeContent:contentCopy];
}

- (void)controllerDidChangeContent:(id)content
{
  contentCopy = content;
  delegate = [(MTCompositeResultsController *)self delegate];
  [delegate controllerDidChangeContent:contentCopy];
}

- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  objectCopy = object;
  controllerCopy = controller;
  v15 = [(MTCompositeResultsController *)self indexOfController:controllerCopy];
  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    delegate = +[IMLogger sharedLogger];
    [delegate logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Library/FRC/MTCompositeResultsController.m" lineNumber:142 format:{@"Observed change for object %@ in section %@ but can't find the section index", objectCopy, controllerCopy}];
  }

  else
  {
    v17 = v15;
    v18 = pathCopy;
    if (pathCopy)
    {
      v19 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [pathCopy row], v17);

      v18 = v19;
    }

    pathCopy = v18;
    if (indexPathCopy)
    {
      v20 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [indexPathCopy row], v17);

      indexPathCopy = v20;
    }

    delegate = [(MTCompositeResultsController *)self delegate];
    [delegate controller:controllerCopy didChangeObject:objectCopy atIndexPath:pathCopy forChangeType:type newIndexPath:indexPathCopy];
  }
}

- (id)allObjects
{
  v3 = objc_alloc_init(NSMutableArray);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  controllers = [(MTCompositeResultsController *)self controllers];
  v5 = [controllers countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(controllers);
        }

        allObjects = [*(*(&v12 + 1) + 8 * i) allObjects];
        if (allObjects)
        {
          [v3 addObjectsFromArray:allObjects];
        }
      }

      v6 = [controllers countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  controllers = [(MTCompositeResultsController *)self controllers];
  v3 = [controllers countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(controllers);
        }

        if ([*(*(&v7 + 1) + 8 * i) hasObjects])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [controllers countByEnumeratingWithState:&v7 objects:v11 count:16];
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