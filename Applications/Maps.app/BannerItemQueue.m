@interface BannerItemQueue
- (BannerItemQueue)init;
- (id)popItem;
- (void)addItem:(id)a3;
- (void)removeAllItems;
- (void)removeItemsOfType:(Class)a3;
@end

@implementation BannerItemQueue

- (id)popItem
{
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = self->_queueByClass;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v29;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v29 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v28 + 1) + 8 * v7);
      v9 = [(NSMutableDictionary *)self->_queueByClass objectForKeyedSubscript:v8];
      if ([v9 count])
      {
        if (([(NSMutableOrderedSet *)self->_dequeuedOrder containsObject:v8]& 1) == 0)
        {
          break;
        }
      }

      if (v5 == ++v7)
      {
        v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v28 objects:v35 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v10 = sub_100032C3C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v34 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Dequeuing from new queue: %@", buf, 0xCu);
    }

    if (v9)
    {
      goto LABEL_27;
    }
  }

  else
  {
LABEL_10:
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = [(NSMutableOrderedSet *)self->_dequeuedOrder reverseObjectEnumerator];
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v9 = [(NSMutableDictionary *)self->_queueByClass objectForKeyedSubscript:*(*(&v24 + 1) + 8 * i)];
        if ([v9 count])
        {
          v16 = sub_100032C3C();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v34 = v9;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Dequeuing from oldest queue: %@", buf, 0xCu);
          }

          goto LABEL_26;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_26:

LABEL_27:
  v17 = [v9 firstObject];
  if (v17)
  {
    v18 = objc_opt_class();
    [(NSMutableOrderedSet *)self->_dequeuedOrder removeObject:v18];
    [(NSMutableOrderedSet *)self->_dequeuedOrder insertObject:v18 atIndex:0];
    [v9 removeObjectAtIndex:0];
    v19 = sub_100032C3C();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      goto LABEL_33;
    }

    *buf = 138412290;
    v34 = v17;
    v20 = "Dequeued item: %@";
    v21 = v19;
    v22 = 12;
  }

  else
  {
    v19 = sub_100032C3C();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      goto LABEL_33;
    }

    *buf = 0;
    v20 = "No items to dequeue";
    v21 = v19;
    v22 = 2;
  }

  _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, v20, buf, v22);
LABEL_33:

  return v17;
}

- (void)removeAllItems
{
  v3 = sub_100032C3C();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);

  if (v4)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [(NSMutableDictionary *)self->_queueByClass allValues];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v13;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v8 += [*(*(&v12 + 1) + 8 * i) count];
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }

    v11 = sub_100032C3C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Removing all (%lu) instance(s)", buf, 0xCu);
    }
  }

  [(NSMutableDictionary *)self->_queueByClass removeAllObjects];
}

- (void)removeItemsOfType:(Class)a3
{
  v5 = [(NSMutableDictionary *)self->_queueByClass objectForKeyedSubscript:?];
  v6 = [v5 count];

  if (v6)
  {
    v7 = sub_100032C3C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 134218242;
      v10 = v6;
      v11 = 2112;
      v12 = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Removing %lu instance(s) of %@", &v9, 0x16u);
    }

    v8 = [(NSMutableDictionary *)self->_queueByClass objectForKeyedSubscript:a3];
    [v8 removeAllObjects];
  }
}

- (void)addItem:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_queueByClass objectForKeyedSubscript:objc_opt_class()];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;

  if (![v8 count])
  {
    goto LABEL_10;
  }

  v9 = 0;
  while (1)
  {
    v10 = [v8 objectAtIndexedSubscript:v9];
    v11 = [v10 uniqueId];
    v12 = [v4 uniqueId];
    v13 = [v11 isEqualToString:v12];

    if (v13)
    {
      break;
    }

    if (++v9 >= [v8 count])
    {
      goto LABEL_10;
    }
  }

  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = sub_100032C3C();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v8 objectAtIndexedSubscript:v9];
      v17 = 138412546;
      v18 = v16;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Replacing item %@ with %@", &v17, 0x16u);
    }

    [v8 replaceObjectAtIndex:v9 withObject:v4];
  }

  else
  {
LABEL_10:
    v14 = sub_100032C3C();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v17 = 138412290;
      v18 = v4;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Adding item %@", &v17, 0xCu);
    }

    [v8 addObject:v4];
  }

  [(NSMutableDictionary *)self->_queueByClass setObject:v8 forKeyedSubscript:objc_opt_class()];
}

- (BannerItemQueue)init
{
  v8.receiver = self;
  v8.super_class = BannerItemQueue;
  v2 = [(BannerItemQueue *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    dequeuedOrder = v2->_dequeuedOrder;
    v2->_dequeuedOrder = v3;

    v5 = objc_opt_new();
    queueByClass = v2->_queueByClass;
    v2->_queueByClass = v5;
  }

  return v2;
}

@end