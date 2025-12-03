@interface MTRAsyncWorkQueue
- (BOOL)hasDuplicateForTypeID:(unint64_t)d workItemData:(id)data;
- (MTRAsyncWorkQueue)initWithContext:(id)context width:(unint64_t)width;
- (id)description;
- (unint64_t)itemCount;
- (void)enqueueWorkItem:(id)item description:(id)description;
- (void)enqueueWorkItem:(id)item descriptionWithFormat:(id)format;
- (void)invalidate;
@end

@implementation MTRAsyncWorkQueue

- (MTRAsyncWorkQueue)initWithContext:(id)context width:(unint64_t)width
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = MTRAsyncWorkQueue;
  v7 = [(MTRAsyncWorkQueue *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_context, contextCopy);
    array = [MEMORY[0x277CBEB18] array];
    items = v8->_items;
    v8->_items = array;

    v8->_width = width;
  }

  return v8;
}

- (id)description
{
  sub_2393ADE68(&v5, self);
  os_unfair_lock_lock(&self->_lock);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@ context: %@, items count: %lu>", objc_opt_class(), v6, -[NSMutableArray count](self->_items, "count")];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)enqueueWorkItem:(id)item descriptionWithFormat:(id)format
{
  itemCopy = item;
  formatCopy = format;
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:formatCopy arguments:&v9];
  [(MTRAsyncWorkQueue *)self enqueueWorkItem:itemCopy description:v8];
}

- (void)enqueueWorkItem:(id)item description:(id)description
{
  v27 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  descriptionCopy = description;
  sub_2393ADE68(&v17, self);
  os_unfair_lock_lock(&self->_lock);
  if (itemCopy)
  {
    itemCopy[2] = 2;
  }

  [(NSMutableArray *)self->_items addObject:itemCopy];
  v8 = sub_2393D9044(0);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (descriptionCopy)
  {
    if (v9)
    {
      v10 = v18;
      v11 = [(NSMutableArray *)self->_items count];
      uniqueID = [itemCopy uniqueID];
      *buf = 138413058;
      v20 = v10;
      v21 = 2048;
      v22 = v11;
      v23 = 2048;
      v24 = uniqueID;
      v25 = 2112;
      v26 = descriptionCopy;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "MTRAsyncWorkQueue<%@, items count: %lu> enqueued work item [%llu]: %@", buf, 0x2Au);
    }

    if (sub_2393D5398(2u))
    {
LABEL_11:
      [(NSMutableArray *)self->_items count];
      [itemCopy uniqueID];
      sub_2393D5320(0, 2);
    }
  }

  else
  {
    if (v9)
    {
      v13 = v18;
      v14 = [(NSMutableArray *)self->_items count];
      uniqueID2 = [itemCopy uniqueID];
      *buf = 138412802;
      v20 = v13;
      v21 = 2048;
      v22 = v14;
      v23 = 2048;
      v24 = uniqueID2;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "MTRAsyncWorkQueue<%@, items count: %lu> enqueued work item [%llu]", buf, 0x20u);
    }

    if (sub_2393D5398(2u))
    {
      goto LABEL_11;
    }
  }

  sub_2393AD2E4(self, &v17);
  os_unfair_lock_unlock(&self->_lock);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v22 = *MEMORY[0x277D85DE8];
  sub_2393ADE68(&v15, self);
  os_unfair_lock_lock(&self->_lock);
  v3 = sub_2393D9044(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v16;
    v5 = [(NSMutableArray *)self->_items count];
    *buf = 138412546;
    v19 = v4;
    v20 = 2048;
    v21 = v5;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "MTRAsyncWorkQueue<%@> invalidate %lu items", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    [(NSMutableArray *)self->_items count];
    sub_2393D5320(0, 2);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_items;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        sub_23952DE1C(*(*(&v11 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)self->_items removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasDuplicateForTypeID:(unint64_t)d workItemData:(id)data
{
  v22 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  os_unfair_lock_lock(&self->_lock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  reverseObjectEnumerator = [(NSMutableArray *)self->_items reverseObjectEnumerator];
  v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        duplicateCheckHandler = [v11 duplicateCheckHandler];
        if (duplicateCheckHandler)
        {
          if ([v11 duplicateTypeID] == d)
          {
            v16 = 0;
            (duplicateCheckHandler)[2](duplicateCheckHandler, dataCopy, &v16, &v16 + 1);
            if ((v16 & 0x100) != 0)
            {
              v13 = v16;

              goto LABEL_13;
            }
          }
        }
      }

      v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_13:

  os_unfair_lock_unlock(&self->_lock);
  v14 = *MEMORY[0x277D85DE8];
  return v13 & 1;
}

- (unint64_t)itemCount
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_items count];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

@end