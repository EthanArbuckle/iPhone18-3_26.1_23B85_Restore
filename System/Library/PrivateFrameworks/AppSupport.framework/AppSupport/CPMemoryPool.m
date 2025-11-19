@interface CPMemoryPool
- (CPMemoryPool)initWithLabel:(const char *)a3 slotLength:(unint64_t)a4;
- (id)nextSlotWithBytes:(const void *)a3 length:(unint64_t)a4;
- (void)dealloc;
@end

@implementation CPMemoryPool

- (CPMemoryPool)initWithLabel:(const char *)a3 slotLength:(unint64_t)a4
{
  v10.receiver = self;
  v10.super_class = CPMemoryPool;
  v6 = [(CPMemoryPool *)&v10 init];
  v7 = v6;
  if (v6)
  {
    pthread_mutex_init(&v6->_lock, 0);
    v7->_files = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = "memorypool";
    }

    v7->_label = strdup(v8);
    v7->_slotLength = a4;
  }

  return v7;
}

- (id)nextSlotWithBytes:(const void *)a3 length:(unint64_t)a4
{
  v22 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_lock);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  files = self->_files;
  v8 = [(NSMutableArray *)files countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(files);
        }

        v12 = [*(*(&v17 + 1) + 8 * i) nextSlotWithBytes:a3 length:a4];
        if (v12)
        {
          v14 = v12;
          goto LABEL_14;
        }
      }

      v9 = [(NSMutableArray *)files countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = [[CPMemoryPoolFile alloc] initWithLabel:self->_label slotCount:128 slotLength:self->_slotLength];
  if (v13)
  {
    [(NSMutableArray *)self->_files addObject:v13];
    v14 = [(CPMemoryPoolFile *)v13 nextSlotWithBytes:a3 length:a4];
  }

  else
  {
    v14 = 0;
  }

LABEL_14:
  pthread_mutex_unlock(&self->_lock);
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_lock);

  free(self->_label);
  v3.receiver = self;
  v3.super_class = CPMemoryPool;
  [(CPMemoryPool *)&v3 dealloc];
}

@end