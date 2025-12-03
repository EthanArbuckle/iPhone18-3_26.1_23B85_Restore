@interface BSUIDynamicArrayProvider
- (BSUIDynamicArrayProvider)initWithArray:(id)array options:(id)options dynamicArray:(id)dynamicArray;
- (TUIMutableDynamicArray)dynamicArray;
- (id)currentGeneration;
- (id)objectAtIndex:(int64_t)index generation:(id)generation;
- (int64_t)countForGeneration:(id)generation;
- (void)_checkForDuplicates:(id)duplicates;
- (void)_moveUpdateForDynamicArray:(id)array newArray:(id)newArray updater:(id)updater;
- (void)_q_registerNewGenerationWithArray:(id)array;
- (void)_replaceUpdateForDynamicArray:(id)array newArray:(id)newArray updater:(id)updater;
- (void)fetchDataForIndexes:(id)indexes generation:(id)generation block:(id)block;
- (void)fetchDataForRange:(_NSRange)range generation:(id)generation block:(id)block;
- (void)updateArray:(id)array batchUpdatesBlock:(id)block;
@end

@implementation BSUIDynamicArrayProvider

- (BSUIDynamicArrayProvider)initWithArray:(id)array options:(id)options dynamicArray:(id)dynamicArray
{
  arrayCopy = array;
  optionsCopy = options;
  dynamicArrayCopy = dynamicArray;
  v23.receiver = self;
  v23.super_class = BSUIDynamicArrayProvider;
  v11 = [(BSUIDynamicArrayProvider *)&v23 init];
  if (v11)
  {
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("BSUIDynamicArrayProvider.queue", v12);
    queue = v11->_queue;
    v11->_queue = v13;

    v15 = [optionsCopy objectForKeyedSubscript:@"updateType"];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = @"replace";
    }

    objc_storeStrong(&v11->_updateType, v17);

    v18 = [optionsCopy objectForKeyedSubscript:@"uniqueId"];
    uniqueId = v11->_uniqueId;
    v11->_uniqueId = v18;

    objc_opt_class();
    v20 = [optionsCopy objectForKeyedSubscript:@"loadsContent"];
    v21 = BUDynamicCast();
    v11->_loadsContent = [v21 BOOLValue];

    [(BSUIDynamicArrayProvider *)v11 _checkForDuplicates:arrayCopy];
    [(BSUIDynamicArrayProvider *)v11 _q_registerNewGenerationWithArray:arrayCopy];
    objc_storeWeak(&v11->_dynamicArray, dynamicArrayCopy);
  }

  return v11;
}

- (id)currentGeneration
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_210D4;
  v10 = sub_210E4;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_210EC;
  v5[3] = &unk_3870C8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)objectAtIndex:(int64_t)index generation:(id)generation
{
  data = [generation data];
  v6 = data;
  if (index < 0 || [data count] <= index)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v6 objectAtIndexedSubscript:index];
  }

  return v7;
}

- (int64_t)countForGeneration:(id)generation
{
  data = [generation data];
  v4 = [data count];

  return v4;
}

- (void)_checkForDuplicates:(id)duplicates
{
  duplicatesCopy = duplicates;
  uniqueId = [(BSUIDynamicArrayProvider *)self uniqueId];

  if (uniqueId)
  {
    uniqueId2 = [(BSUIDynamicArrayProvider *)self uniqueId];
    v7 = [duplicatesCopy valueForKey:uniqueId2];

    v8 = [NSCountedSet setWithArray:v7];
    v9 = +[NSMutableArray array];
    v10 = [v8 count];
    if (v10 != [v7 count])
    {
      v19 = v7;
      v20 = duplicatesCopy;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v18 = v8;
      v11 = v8;
      v12 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v22;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v22 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v21 + 1) + 8 * i);
            if ([v11 countForObject:v16] >= 2)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                uniqueId3 = [(BSUIDynamicArrayProvider *)self uniqueId];
                *buf = 138412546;
                v26 = uniqueId3;
                v27 = 2112;
                v28 = v16;
                _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "BSUIDynamicArrayProvider: entries with duplicate uniqueID (%@): %@", buf, 0x16u);
              }

              [v9 addObject:v16];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
        }

        while (v13);
      }

      v7 = v19;
      duplicatesCopy = v20;
      v8 = v18;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_2BD6A8(v9);
      }
    }
  }
}

- (void)updateArray:(id)array batchUpdatesBlock:(id)block
{
  arrayCopy = array;
  blockCopy = block;
  [(BSUIDynamicArrayProvider *)self _checkForDuplicates:arrayCopy];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_214F8;
  block[3] = &unk_3878F0;
  block[4] = self;
  v12 = arrayCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = arrayCopy;
  dispatch_sync(queue, block);
}

- (void)_q_registerNewGenerationWithArray:(id)array
{
  arrayCopy = array;
  v5 = [[_BSUIDynamicArrayGeneration alloc] initWithData:arrayCopy];

  q_currentGeneration = self->q_currentGeneration;
  self->q_currentGeneration = v5;
}

- (void)fetchDataForIndexes:(id)indexes generation:(id)generation block:(id)block
{
  generationCopy = generation;
  blockCopy = block;
  indexesCopy = indexes;
  v10 = objc_opt_new();
  data = [generationCopy data];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_21838;
  v14[3] = &unk_387918;
  v17 = [data count];
  v15 = data;
  v12 = v10;
  v16 = v12;
  v13 = data;
  [indexesCopy enumerateIndexesUsingBlock:v14];

  if (blockCopy)
  {
    blockCopy[2](blockCopy, v12);
  }
}

- (void)fetchDataForRange:(_NSRange)range generation:(id)generation block:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  data = [generation data];
  if (location + length <= [data count])
  {
    v9 = [data subarrayWithRange:{location, length}];
  }

  else
  {
    v9 = 0;
  }

  if (blockCopy)
  {
    blockCopy[2](blockCopy, v9);
  }
}

- (void)_moveUpdateForDynamicArray:(id)array newArray:(id)newArray updater:(id)updater
{
  arrayCopy = array;
  newArrayCopy = newArray;
  updaterCopy = updater;
  v9 = objc_alloc_init(NSMutableDictionary);
  v10 = objc_alloc_init(NSMutableDictionary);
  v57 = [arrayCopy mutableCopy];
  v11 = objc_alloc_init(NSMutableSet);
  if ([arrayCopy count])
  {
    v12 = 0;
    do
    {
      v13 = [arrayCopy objectAtIndexedSubscript:{v12, updaterCopy}];
      uniqueId = [(BSUIDynamicArrayProvider *)self uniqueId];
      v15 = [v13 objectForKeyedSubscript:uniqueId];
      [v11 addObject:v15];

      v16 = [arrayCopy objectAtIndexedSubscript:v12];
      uniqueId2 = [(BSUIDynamicArrayProvider *)self uniqueId];
      v18 = [v16 objectForKeyedSubscript:uniqueId2];
      [v9 setObject:0 forKeyedSubscript:v18];

      ++v12;
    }

    while (v12 < [arrayCopy count]);
  }

  v56 = v11;
  if ([newArrayCopy count])
  {
    v19 = 0;
    do
    {
      v20 = [newArrayCopy objectAtIndexedSubscript:v19];
      uniqueId3 = [(BSUIDynamicArrayProvider *)self uniqueId];
      v22 = [v20 objectForKeyedSubscript:uniqueId3];
      v23 = [v11 containsObject:v22];

      v24 = [NSNumber numberWithUnsignedInteger:v19];
      v25 = [newArrayCopy objectAtIndexedSubscript:v19];
      uniqueId4 = [(BSUIDynamicArrayProvider *)self uniqueId];
      v27 = [v25 objectForKeyedSubscript:uniqueId4];
      if (v23)
      {
        v28 = v9;
      }

      else
      {
        v28 = v10;
      }

      [v28 setObject:v24 forKeyedSubscript:v27];

      v11 = v56;
      ++v19;
    }

    while (v19 < [newArrayCopy count]);
  }

  v29 = [arrayCopy count];
  v30 = arrayCopy;
  if (v29)
  {
    v31 = v29 - 1;
    do
    {
      v32 = [v30 objectAtIndexedSubscript:v31];
      uniqueId5 = [(BSUIDynamicArrayProvider *)self uniqueId];
      v34 = [v32 objectForKeyedSubscript:uniqueId5];
      v35 = [v9 objectForKeyedSubscript:v34];

      if (!v35)
      {
        [v55 deleteItemAtIndex:v31];
        [v57 removeObjectAtIndex:v31];
      }

      --v31;
      v30 = arrayCopy;
    }

    while (v31 != -1);
  }

  if ([newArrayCopy count])
  {
    v36 = 0;
    do
    {
      v37 = [newArrayCopy objectAtIndexedSubscript:v36];
      uniqueId6 = [(BSUIDynamicArrayProvider *)self uniqueId];
      v39 = [v37 objectForKeyedSubscript:uniqueId6];
      v40 = [v10 objectForKeyedSubscript:v39];

      if (v40)
      {
        [v55 insertItemAtIndex:v36];
        v41 = [newArrayCopy objectAtIndexedSubscript:v36];
        [v57 insertObject:v41 atIndex:v36];
      }

      ++v36;
    }

    while (v36 < [newArrayCopy count]);
  }

  if ([arrayCopy count])
  {
    v42 = 0;
    do
    {
      v43 = [arrayCopy objectAtIndexedSubscript:v42];
      uniqueId7 = [(BSUIDynamicArrayProvider *)self uniqueId];
      v45 = [v43 objectForKeyedSubscript:uniqueId7];
      v46 = [v9 objectForKeyedSubscript:v45];

      v47 = arrayCopy;
      if (v46)
      {
        v48 = [arrayCopy objectAtIndexedSubscript:v42];
        v49 = [v48 objectForKeyedSubscript:self->_uniqueId];
        v50 = [v9 objectForKeyedSubscript:v49];
        unsignedIntegerValue = [v50 unsignedIntegerValue];

        if (v42 == unsignedIntegerValue || ([v57 objectAtIndexedSubscript:unsignedIntegerValue], v52 = objc_claimAutoreleasedReturnValue(), objc_msgSend(newArrayCopy, "objectAtIndexedSubscript:", unsignedIntegerValue), v53 = objc_claimAutoreleasedReturnValue(), v53, v52, v52 == v53))
        {
          [v55 updateItemAtIndex:v42];
        }

        else
        {
          [v55 moveItemFromIndex:v42 toIndex:unsignedIntegerValue];
        }

        v47 = arrayCopy;
      }

      ++v42;
    }

    while (v42 < [v47 count]);
  }
}

- (void)_replaceUpdateForDynamicArray:(id)array newArray:(id)newArray updater:(id)updater
{
  newArrayCopy = newArray;
  updaterCopy = updater;
  v8 = [array count];
  if (v8)
  {
    v9 = v8 - 1;
    do
    {
      [updaterCopy deleteItemAtIndex:v9--];
    }

    while (v9 != -1);
  }

  if ([newArrayCopy count])
  {
    v10 = 0;
    do
    {
      [updaterCopy insertItemAtIndex:v10++];
    }

    while (v10 < [newArrayCopy count]);
  }
}

- (TUIMutableDynamicArray)dynamicArray
{
  WeakRetained = objc_loadWeakRetained(&self->_dynamicArray);

  return WeakRetained;
}

@end