@interface IMFileWatcherPathGroup
- (BOOL)addEntry:(id)entry;
- (BOOL)setupSource;
- (IMFileWatcherPathGroup)initWithFilePath:(id)path targetQueue:(id)queue;
- (void)dealloc;
- (void)enqueueBlocksForEntries:(id)entries withChange:(int)change;
- (void)handleDeleteOrRename;
- (void)handleWrite;
- (void)invalidateEntries;
- (void)removeEntry:(id)entry;
- (void)teardown;
@end

@implementation IMFileWatcherPathGroup

- (IMFileWatcherPathGroup)initWithFilePath:(id)path targetQueue:(id)queue
{
  pathCopy = path;
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = IMFileWatcherPathGroup;
  v8 = [(IMFileWatcherPathGroup *)&v14 init];
  if (v8)
  {
    v9 = objc_alloc_init(NSMutableSet);
    entries = v8->_entries;
    v8->_entries = v9;

    v11 = [pathCopy copy];
    filePath = v8->_filePath;
    v8->_filePath = v11;

    objc_storeStrong(&v8->_queue, queue);
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

- (BOOL)addEntry:(id)entry
{
  entryCopy = entry;
  if (self->_source || [(IMFileWatcherPathGroup *)self setupSource])
  {
    filePath = [(IMFileWatcherPathGroup *)self filePath];
    [entryCopy setFilePath:filePath];

    [(NSMutableSet *)self->_entries addObject:entryCopy];
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)removeEntry:(id)entry
{
  entries = self->_entries;
  entryCopy = entry;
  [(NSMutableSet *)entries removeObject:entryCopy];
  [entryCopy invalidate];

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
  filePath = [(IMFileWatcherPathGroup *)self filePath];
  v5 = (v3[2])(v3, filePath);

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
    selfCopy = self;
    dispatch_source_set_event_handler(v12, handler);
    dispatch_activate(v12);
    source = self->_source;
    self->_source = v12;
    v14 = v12;

    v11 = 1;
    goto LABEL_10;
  }

  filePath2 = [(IMFileWatcherPathGroup *)self filePath];
  stringByDeletingLastPathComponent = [filePath2 stringByDeletingLastPathComponent];
  v8 = (v3[2])(v3, stringByDeletingLastPathComponent);

  if (v8)
  {
    filePath3 = [(IMFileWatcherPathGroup *)self filePath];
    v5 = (v3[2])(v3, filePath3);

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
      selfCopy2 = self;
      v6 = 2;
    }

    else
    {
      entries = self->_entries;
      selfCopy2 = self;
      if (watchingDirectory)
      {
        v6 = 1;
      }

      else
      {
        v6 = 3;
      }
    }

    [(IMFileWatcherPathGroup *)selfCopy2 enqueueBlocksForEntries:entries withChange:v6];
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
    filePath = [(IMFileWatcherPathGroup *)self filePath];
    v4 = lstat([filePath fileSystemRepresentation], &v9);

    if (v4 == -1)
    {
      if (*__error() != 2)
      {
        filePath2 = [(IMFileWatcherPathGroup *)self filePath];
        v7 = __error();
        v8 = strerror(*v7);
        NSLog(@"Unexpected error with lstat(%@): %s", filePath2, v8);
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

- (void)enqueueBlocksForEntries:(id)entries withChange:(int)change
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = entries;
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
        block = [v9 block];
        queue = [v9 queue];
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_E0F00;
        v14[3] = &unk_2CD068;
        changeCopy = change;
        v14[4] = v9;
        v15 = block;
        v12 = block;
        [queue addOperationWithBlock:v14];
      }

      v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }
}

@end