@interface IMFileWatcherPathGroup
- (BOOL)addEntry:(id)a3;
- (BOOL)setupSource;
- (IMFileWatcherPathGroup)initWithFilePath:(id)a3 targetQueue:(id)a4;
- (void)dealloc;
- (void)enqueueBlocksForEntries:(id)a3 withChange:(int)a4;
- (void)handleDeleteOrRename;
- (void)handleWrite;
- (void)invalidateEntries;
- (void)removeEntry:(id)a3;
- (void)teardown;
@end

@implementation IMFileWatcherPathGroup

- (IMFileWatcherPathGroup)initWithFilePath:(id)a3 targetQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = IMFileWatcherPathGroup;
  v8 = [(IMFileWatcherPathGroup *)&v14 init];
  if (v8)
  {
    v9 = objc_alloc_init(NSMutableSet);
    entries = v8->_entries;
    v8->_entries = v9;

    v11 = [v6 copy];
    filePath = v8->_filePath;
    v8->_filePath = v11;

    objc_storeStrong(&v8->_queue, a4);
    if (![(IMFileWatcherPathGroup *)v8 setupSource])
    {

      v8 = 0;
    }
  }

  return v8;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = IMFileWatcherPathGroup;
  [(IMFileWatcherPathGroup *)&v2 dealloc];
}

- (BOOL)addEntry:(id)a3
{
  v4 = a3;
  if (self->_source || [(IMFileWatcherPathGroup *)self setupSource])
  {
    v5 = [(IMFileWatcherPathGroup *)self filePath];
    [v4 setFilePath:v5];

    [(NSMutableSet *)self->_entries addObject:v4];
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)removeEntry:(id)a3
{
  entries = self->_entries;
  v5 = a3;
  [(NSMutableSet *)entries removeObject:v5];
  [v5 invalidate];

  if (![(NSMutableSet *)self->_entries count])
  {

    [(IMFileWatcherPathGroup *)self teardown];
  }
}

- (BOOL)setupSource
{
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_E094C;
  v19[3] = &unk_2CD000;
  v19[4] = self;
  v3 = objc_retainBlock(v19);
  v4 = [(IMFileWatcherPathGroup *)self filePath];
  v5 = (v3[2])(v3, v4);

  if (v5)
  {
    self->_watchingDirectory = 0;
LABEL_9:
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_E0A50;
    handler[3] = &unk_2C7BE8;
    v12 = v5;
    v17 = v12;
    v18 = self;
    dispatch_source_set_event_handler(v12, handler);
    dispatch_activate(v12);
    source = self->_source;
    self->_source = v12;
    v14 = v12;

    v11 = 1;
    goto LABEL_10;
  }

  v6 = [(IMFileWatcherPathGroup *)self filePath];
  v7 = [v6 stringByDeletingLastPathComponent];
  v8 = (v3[2])(v3, v7);

  if (v8)
  {
    v9 = [(IMFileWatcherPathGroup *)self filePath];
    v5 = (v3[2])(v3, v9);

    if (v5)
    {
      dispatch_source_cancel(v8);
      v10 = 0;
    }

    else
    {
      v5 = v8;
      v10 = 1;
    }

    self->_watchingDirectory = v10;

    goto LABEL_9;
  }

  v11 = 0;
LABEL_10:

  return v11;
}

- (void)teardown
{
  source = self->_source;
  if (source)
  {
    dispatch_source_cancel(source);
    v4 = self->_source;
    self->_source = 0;
  }
}

- (void)handleDeleteOrRename
{
  watchingDirectory = self->_watchingDirectory;
  [(IMFileWatcherPathGroup *)self teardown];
  if ([(IMFileWatcherPathGroup *)self setupSource])
  {
    if (self->_watchingDirectory)
    {
      if (watchingDirectory)
      {
        return;
      }

      entries = self->_entries;
      v5 = self;
      v6 = 2;
    }

    else
    {
      entries = self->_entries;
      v5 = self;
      if (watchingDirectory)
      {
        v6 = 1;
      }

      else
      {
        v6 = 3;
      }
    }

    [(IMFileWatcherPathGroup *)v5 enqueueBlocksForEntries:entries withChange:v6];
  }

  else
  {

    [(IMFileWatcherPathGroup *)self invalidateEntries];
  }
}

- (void)handleWrite
{
  if (self->_watchingDirectory)
  {
    memset(&v9, 0, sizeof(v9));
    v3 = [(IMFileWatcherPathGroup *)self filePath];
    v4 = lstat([v3 fileSystemRepresentation], &v9);

    if (v4 == -1)
    {
      if (*__error() != 2)
      {
        v6 = [(IMFileWatcherPathGroup *)self filePath];
        v7 = __error();
        v8 = strerror(*v7);
        NSLog(@"Unexpected error with lstat(%@): %s", v6, v8);
      }
    }

    else
    {
      [(IMFileWatcherPathGroup *)self teardown];
      if ([(IMFileWatcherPathGroup *)self setupSource])
      {
        if (!self->_watchingDirectory)
        {
          [(IMFileWatcherPathGroup *)self enqueueBlocksForEntries:self->_entries withChange:1];
        }
      }

      else
      {
        [(IMFileWatcherPathGroup *)self invalidateEntries];
      }
    }
  }

  else
  {
    entries = self->_entries;

    [(IMFileWatcherPathGroup *)self enqueueBlocksForEntries:entries withChange:3];
  }
}

- (void)invalidateEntries
{
  v3 = [(NSMutableSet *)self->_entries copy];
  [(NSMutableSet *)self->_entries removeAllObjects];
  [(IMFileWatcherPathGroup *)self enqueueBlocksForEntries:v3 withChange:4];
  [v3 enumerateObjectsUsingBlock:&stru_2CD040];
}

- (void)enqueueBlocksForEntries:(id)a3 withChange:(int)a4
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = a3;
  v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 block];
        v11 = [v9 queue];
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_E0F00;
        v14[3] = &unk_2CD068;
        v16 = a4;
        v14[4] = v9;
        v15 = v10;
        v12 = v10;
        [v11 addOperationWithBlock:v14];
      }

      v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }
}

@end