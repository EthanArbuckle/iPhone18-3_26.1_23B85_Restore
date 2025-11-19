@interface AVCaptureSynchronizedMetadataCollections
- (AVCaptureSynchronizedMetadataCollections)initWithMetadataCollections:(id)a3 expectedMetadataObjectTypes:(id)a4;
- (BOOL)readyToEmit;
- (NSArray)metadataCollections;
- (NSArray)metadataObjects;
- (NSMutableSet)metadataObjectTypes;
- (OS_dispatch_source)emitTimer;
- (void)addCollections:(id)a3;
- (void)dealloc;
- (void)setEmitTimer:(id)a3;
- (void)skipMetadataObjectTypes:(id)a3;
@end

@implementation AVCaptureSynchronizedMetadataCollections

- (AVCaptureSynchronizedMetadataCollections)initWithMetadataCollections:(id)a3 expectedMetadataObjectTypes:(id)a4
{
  v10.receiver = self;
  v10.super_class = AVCaptureSynchronizedMetadataCollections;
  v6 = [(AVCaptureSynchronizedMetadataCollections *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v8 = MEMORY[0x1E6960C70];
    *(v6 + 8) = *MEMORY[0x1E6960C70];
    *(v6 + 3) = *(v8 + 16);
    *(v6 + 5) = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:a4];
    [(AVCaptureSynchronizedMetadataCollections *)v7 addCollections:a3];
  }

  return v7;
}

- (void)dealloc
{
  emitTimer = self->_emitTimer;
  if (emitTimer)
  {
    dispatch_source_cancel(emitTimer);
  }

  v4.receiver = self;
  v4.super_class = AVCaptureSynchronizedMetadataCollections;
  [(AVCaptureSynchronizedMetadataCollections *)&v4 dealloc];
}

- (void)setEmitTimer:(id)a3
{
  emitTimer = self->_emitTimer;
  if (emitTimer)
  {
    dispatch_source_cancel(emitTimer);
  }

  v6 = a3;
  self->_emitTimer = v6;
  if (v6)
  {

    dispatch_activate(v6);
  }
}

- (OS_dispatch_source)emitTimer
{
  v2 = self->_emitTimer;

  return v2;
}

- (void)addCollections:(id)a3
{
  if ([a3 count])
  {
    if ((self->_time.flags & 1) == 0)
    {
      v5 = [a3 objectAtIndexedSubscript:0];
      if (v5)
      {
        [v5 time];
      }

      else
      {
        v16 = 0uLL;
        v17 = 0;
      }

      *&self->_time.value = v16;
      self->_time.epoch = v17;
    }

    collections = self->_collections;
    if (!collections)
    {
      collections = objc_alloc_init(MEMORY[0x1E695DF70]);
      self->_collections = collections;
    }

    [(NSMutableArray *)collections addObjectsFromArray:a3];
    if (!self->_handledMetadataObjectTypes)
    {
      self->_handledMetadataObjectTypes = objc_alloc_init(MEMORY[0x1E695DFA8]);
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [a3 countByEnumeratingWithState:&v12 objects:v11 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(a3);
          }

          -[NSMutableSet unionSet:](self->_handledMetadataObjectTypes, "unionSet:", [*(*(&v12 + 1) + 8 * v10++) handledMetadataObjectTypes]);
        }

        while (v8 != v10);
        v8 = [a3 countByEnumeratingWithState:&v12 objects:v11 count:16];
      }

      while (v8);
    }
  }
}

- (void)skipMetadataObjectTypes:(id)a3
{
  if ([a3 count])
  {
    expectedMetadataObjectTypes = self->_expectedMetadataObjectTypes;

    [(NSMutableSet *)expectedMetadataObjectTypes minusSet:a3];
  }
}

- (BOOL)readyToEmit
{
  v3 = [MEMORY[0x1E695DFA8] setWithSet:self->_expectedMetadataObjectTypes];
  [v3 minusSet:self->_handledMetadataObjectTypes];
  return [v3 count] == 0;
}

- (NSArray)metadataCollections
{
  v2 = [(NSMutableArray *)self->_collections copy];

  return v2;
}

- (NSArray)metadataObjects
{
  v2 = [avcmdo_allMetadataObjectsInCollections(self->_collections) copy];

  return v2;
}

- (NSMutableSet)metadataObjectTypes
{
  v2 = [avcmdo_allMetadataObjectTypesInCollections(self->_collections) copy];

  return v2;
}

@end