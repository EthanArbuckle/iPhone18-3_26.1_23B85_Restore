@interface NSPersistentStoreRequest
- (NSArray)affectedStores;
- (NSPersistentStoreRequestType)requestType;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)setAffectedStores:(NSArray *)affectedStores;
@end

@implementation NSPersistentStoreRequest

- (NSArray)affectedStores
{
  v20 = *MEMORY[0x1E69E9840];
  result = self->_affectedStores;
  if (byte_1ED4BEEC4 == 1)
  {
    result = [(NSArray *)result count];
    if (result)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      affectedStores = self->_affectedStores;
      v6 = [(NSArray *)affectedStores countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v16;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v16 != v8)
            {
              objc_enumerationMutation(affectedStores);
            }

            v10 = *(*(&v15 + 1) + 8 * i);
            if (v10)
            {
              WeakRetained = objc_loadWeakRetained((v10 + 8));
              if (WeakRetained)
              {
                v12 = WeakRetained;
                [v4 addObject:WeakRetained];
              }
            }
          }

          v7 = [(NSArray *)affectedStores countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v7);
      }

      v13 = [v4 copy];

      if ([(NSArray *)v13 count])
      {
        result = v13;
      }

      else
      {
        result = 0;
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  self->_affectedStores = 0;
  v3.receiver = self;
  v3.super_class = NSPersistentStoreRequest;
  [(NSPersistentStoreRequest *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    v4[1] = [(NSArray *)self->_affectedStores copy];
  }

  return v4;
}

- (NSPersistentStoreRequestType)requestType
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)setAffectedStores:(NSArray *)affectedStores
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = self->_affectedStores;
  if (byte_1ED4BEEC4 == 1)
  {
    if (v5 != affectedStores)
    {

      if (![(NSArray *)affectedStores count])
      {
        self->_affectedStores = 0;
        goto LABEL_39;
      }

      v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:affectedStores];
      v7 = [v6 count];
      v8 = v7;
      if (v7 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v7;
      }

      if (v7 >= 0x201)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9;
      }

      v11 = v23 - ((8 * v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v7 >= 0x201)
      {
        v11 = NSAllocateScannedUncollectable();
        [v6 getObjects:v11];
      }

      else
      {
        bzero(v23 - ((8 * v10 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v9);
        [v6 getObjects:v11];
        if (!v8)
        {
          self->_affectedStores = 0;

          goto LABEL_39;
        }
      }

      v18 = 0;
      v19 = 0;
      do
      {
        v20 = [_PFWeakReference weakReferenceWithObject:?];
        if (v20)
        {
          *&v11[8 * v18++] = v20;
        }

        ++v19;
      }

      while (v8 != v19);
      if (v18)
      {
        v21 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v11 count:v18];
      }

      else
      {
        v21 = 0;
      }

      self->_affectedStores = v21;

      if (v8 >= 0x201)
      {
        NSZoneFree(0, v11);
      }
    }
  }

  else if (v5 != affectedStores)
  {

    if ([(NSArray *)affectedStores count]< 2)
    {
      self->_affectedStores = [(NSArray *)affectedStores copy];
    }

    else
    {
      v12 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:affectedStores];
      v13 = [v12 count];
      v14 = v13;
      if (v13 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v13;
      }

      if (v13 >= 0x201)
      {
        v16 = 1;
      }

      else
      {
        v16 = v15;
      }

      v17 = v23 - ((8 * v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v13 > 0x200)
      {
        v17 = NSAllocateScannedUncollectable();
      }

      else
      {
        bzero(v23 - ((8 * v16 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v15);
      }

      [v12 getObjects:v17];
      self->_affectedStores = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v17 count:v14];

      if (v14 >= 0x201)
      {
        NSZoneFree(0, v17);
      }
    }
  }

LABEL_39:
  v22 = *MEMORY[0x1E69E9840];
}

@end