@interface BSUIDynamicArrayProvider
- (BSUIDynamicArrayProvider)initWithArray:(id)a3 options:(id)a4 dynamicArray:(id)a5;
- (TUIMutableDynamicArray)dynamicArray;
- (id)currentGeneration;
- (id)objectAtIndex:(int64_t)a3 generation:(id)a4;
- (int64_t)countForGeneration:(id)a3;
- (void)_checkForDuplicates:(id)a3;
- (void)_moveUpdateForDynamicArray:(id)a3 newArray:(id)a4 updater:(id)a5;
- (void)_q_registerNewGenerationWithArray:(id)a3;
- (void)_replaceUpdateForDynamicArray:(id)a3 newArray:(id)a4 updater:(id)a5;
- (void)fetchDataForIndexes:(id)a3 generation:(id)a4 block:(id)a5;
- (void)fetchDataForRange:(_NSRange)a3 generation:(id)a4 block:(id)a5;
- (void)updateArray:(id)a3 batchUpdatesBlock:(id)a4;
@end

@implementation BSUIDynamicArrayProvider

- (BSUIDynamicArrayProvider)initWithArray:(id)a3 options:(id)a4 dynamicArray:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = BSUIDynamicArrayProvider;
  v11 = [(BSUIDynamicArrayProvider *)&v23 init];
  if (v11)
  {
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("BSUIDynamicArrayProvider.queue", v12);
    queue = v11->_queue;
    v11->_queue = v13;

    v15 = [v9 objectForKeyedSubscript:@"updateType"];
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

    v18 = [v9 objectForKeyedSubscript:@"uniqueId"];
    uniqueId = v11->_uniqueId;
    v11->_uniqueId = v18;

    objc_opt_class();
    v20 = [v9 objectForKeyedSubscript:@"loadsContent"];
    v21 = BUDynamicCast();
    v11->_loadsContent = [v21 BOOLValue];

    [(BSUIDynamicArrayProvider *)v11 _checkForDuplicates:v8];
    [(BSUIDynamicArrayProvider *)v11 _q_registerNewGenerationWithArray:v8];
    objc_storeWeak(&v11->_dynamicArray, v10);
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

- (id)objectAtIndex:(int64_t)a3 generation:(id)a4
{
  v5 = [a4 data];
  v6 = v5;
  if (a3 < 0 || [v5 count] <= a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v6 objectAtIndexedSubscript:a3];
  }

  return v7;
}

- (int64_t)countForGeneration:(id)a3
{
  v3 = [a3 data];
  v4 = [v3 count];

  return v4;
}

- (void)_checkForDuplicates:(id)a3
{
  v4 = a3;
  v5 = [(BSUIDynamicArrayProvider *)self uniqueId];

  if (v5)
  {
    v6 = [(BSUIDynamicArrayProvider *)self uniqueId];
    v7 = [v4 valueForKey:v6];

    v8 = [NSCountedSet setWithArray:v7];
    v9 = +[NSMutableArray array];
    v10 = [v8 count];
    if (v10 != [v7 count])
    {
      v19 = v7;
      v20 = v4;
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
                v17 = [(BSUIDynamicArrayProvider *)self uniqueId];
                *buf = 138412546;
                v26 = v17;
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
      v4 = v20;
      v8 = v18;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_2BD6A8(v9);
      }
    }
  }
}

- (void)updateArray:(id)a3 batchUpdatesBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(BSUIDynamicArrayProvider *)self _checkForDuplicates:v6];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_214F8;
  block[3] = &unk_3878F0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, block);
}

- (void)_q_registerNewGenerationWithArray:(id)a3
{
  v4 = a3;
  v5 = [[_BSUIDynamicArrayGeneration alloc] initWithData:v4];

  q_currentGeneration = self->q_currentGeneration;
  self->q_currentGeneration = v5;
}

- (void)fetchDataForIndexes:(id)a3 generation:(id)a4 block:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = objc_opt_new();
  v11 = [v7 data];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_21838;
  v14[3] = &unk_387918;
  v17 = [v11 count];
  v15 = v11;
  v12 = v10;
  v16 = v12;
  v13 = v11;
  [v9 enumerateIndexesUsingBlock:v14];

  if (v8)
  {
    v8[2](v8, v12);
  }
}

- (void)fetchDataForRange:(_NSRange)a3 generation:(id)a4 block:(id)a5
{
  length = a3.length;
  location = a3.location;
  v10 = a5;
  v8 = [a4 data];
  if (location + length <= [v8 count])
  {
    v9 = [v8 subarrayWithRange:{location, length}];
  }

  else
  {
    v9 = 0;
  }

  if (v10)
  {
    v10[2](v10, v9);
  }
}

- (void)_moveUpdateForDynamicArray:(id)a3 newArray:(id)a4 updater:(id)a5
{
  v58 = a3;
  v8 = a4;
  v54 = a5;
  v9 = objc_alloc_init(NSMutableDictionary);
  v10 = objc_alloc_init(NSMutableDictionary);
  v57 = [v58 mutableCopy];
  v11 = objc_alloc_init(NSMutableSet);
  if ([v58 count])
  {
    v12 = 0;
    do
    {
      v13 = [v58 objectAtIndexedSubscript:{v12, v54}];
      v14 = [(BSUIDynamicArrayProvider *)self uniqueId];
      v15 = [v13 objectForKeyedSubscript:v14];
      [v11 addObject:v15];

      v16 = [v58 objectAtIndexedSubscript:v12];
      v17 = [(BSUIDynamicArrayProvider *)self uniqueId];
      v18 = [v16 objectForKeyedSubscript:v17];
      [v9 setObject:0 forKeyedSubscript:v18];

      ++v12;
    }

    while (v12 < [v58 count]);
  }

  v56 = v11;
  if ([v8 count])
  {
    v19 = 0;
    do
    {
      v20 = [v8 objectAtIndexedSubscript:v19];
      v21 = [(BSUIDynamicArrayProvider *)self uniqueId];
      v22 = [v20 objectForKeyedSubscript:v21];
      v23 = [v11 containsObject:v22];

      v24 = [NSNumber numberWithUnsignedInteger:v19];
      v25 = [v8 objectAtIndexedSubscript:v19];
      v26 = [(BSUIDynamicArrayProvider *)self uniqueId];
      v27 = [v25 objectForKeyedSubscript:v26];
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

    while (v19 < [v8 count]);
  }

  v29 = [v58 count];
  v30 = v58;
  if (v29)
  {
    v31 = v29 - 1;
    do
    {
      v32 = [v30 objectAtIndexedSubscript:v31];
      v33 = [(BSUIDynamicArrayProvider *)self uniqueId];
      v34 = [v32 objectForKeyedSubscript:v33];
      v35 = [v9 objectForKeyedSubscript:v34];

      if (!v35)
      {
        [v55 deleteItemAtIndex:v31];
        [v57 removeObjectAtIndex:v31];
      }

      --v31;
      v30 = v58;
    }

    while (v31 != -1);
  }

  if ([v8 count])
  {
    v36 = 0;
    do
    {
      v37 = [v8 objectAtIndexedSubscript:v36];
      v38 = [(BSUIDynamicArrayProvider *)self uniqueId];
      v39 = [v37 objectForKeyedSubscript:v38];
      v40 = [v10 objectForKeyedSubscript:v39];

      if (v40)
      {
        [v55 insertItemAtIndex:v36];
        v41 = [v8 objectAtIndexedSubscript:v36];
        [v57 insertObject:v41 atIndex:v36];
      }

      ++v36;
    }

    while (v36 < [v8 count]);
  }

  if ([v58 count])
  {
    v42 = 0;
    do
    {
      v43 = [v58 objectAtIndexedSubscript:v42];
      v44 = [(BSUIDynamicArrayProvider *)self uniqueId];
      v45 = [v43 objectForKeyedSubscript:v44];
      v46 = [v9 objectForKeyedSubscript:v45];

      v47 = v58;
      if (v46)
      {
        v48 = [v58 objectAtIndexedSubscript:v42];
        v49 = [v48 objectForKeyedSubscript:self->_uniqueId];
        v50 = [v9 objectForKeyedSubscript:v49];
        v51 = [v50 unsignedIntegerValue];

        if (v42 == v51 || ([v57 objectAtIndexedSubscript:v51], v52 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "objectAtIndexedSubscript:", v51), v53 = objc_claimAutoreleasedReturnValue(), v53, v52, v52 == v53))
        {
          [v55 updateItemAtIndex:v42];
        }

        else
        {
          [v55 moveItemFromIndex:v42 toIndex:v51];
        }

        v47 = v58;
      }

      ++v42;
    }

    while (v42 < [v47 count]);
  }
}

- (void)_replaceUpdateForDynamicArray:(id)a3 newArray:(id)a4 updater:(id)a5
{
  v11 = a4;
  v7 = a5;
  v8 = [a3 count];
  if (v8)
  {
    v9 = v8 - 1;
    do
    {
      [v7 deleteItemAtIndex:v9--];
    }

    while (v9 != -1);
  }

  if ([v11 count])
  {
    v10 = 0;
    do
    {
      [v7 insertItemAtIndex:v10++];
    }

    while (v10 < [v11 count]);
  }
}

- (TUIMutableDynamicArray)dynamicArray
{
  WeakRetained = objc_loadWeakRetained(&self->_dynamicArray);

  return WeakRetained;
}

@end