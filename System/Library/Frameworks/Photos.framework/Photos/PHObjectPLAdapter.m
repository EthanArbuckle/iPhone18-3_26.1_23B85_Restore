@interface PHObjectPLAdapter
- (PHObjectPLAdapter)initWithPLManagedObject:(id)a3 photoLibrary:(id)a4;
- (id)mutableAccessingCopy;
- (id)objectForKey:(id)a3;
- (void)removeObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKeyedSubscript:(id)a4;
@end

@implementation PHObjectPLAdapter

- (void)setObject:(id)a3 forKeyedSubscript:(id)a4
{
  if (a3)
  {
    [(PHObjectPLAdapter *)self setObject:a3 forKey:a4];
  }

  else
  {
    [(PHObjectPLAdapter *)self removeObjectForKey:a4];
  }
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v10 = a3;
  v6 = a4;
  modifiedKeyValues = self->_modifiedKeyValues;
  if (!modifiedKeyValues)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = self->_modifiedKeyValues;
    self->_modifiedKeyValues = v8;

    modifiedKeyValues = self->_modifiedKeyValues;
  }

  [(NSMutableDictionary *)modifiedKeyValues setObject:v10 forKey:v6];
  [(NSMutableOrderedSet *)self->_ignoredKeys removeObject:v6];
}

- (void)removeObjectForKey:(id)a3
{
  v4 = a3;
  ignoredKeys = self->_ignoredKeys;
  v8 = v4;
  if (!ignoredKeys)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v7 = self->_ignoredKeys;
    self->_ignoredKeys = v6;

    v4 = v8;
    ignoredKeys = self->_ignoredKeys;
  }

  [(NSMutableOrderedSet *)ignoredKeys addObject:v4];
  [(NSMutableDictionary *)self->_modifiedKeyValues removeObjectForKey:v8];
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  if (([(NSMutableOrderedSet *)self->_ignoredKeys containsObject:v4]& 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableDictionary *)self->_modifiedKeyValues objectForKey:v4];
    if (!v5)
    {
      v5 = [(PLManagedObject *)self->_backingManagedObject valueForKeyPath:v4];
    }
  }

  return v5;
}

- (id)mutableAccessingCopy
{
  v3 = [objc_alloc(objc_opt_class()) initWithPLManagedObject:self->_backingManagedObject photoLibrary:self->_photoLibrary];
  v4 = [(NSMutableOrderedSet *)self->_ignoredKeys mutableCopy];
  v5 = v3[3];
  v3[3] = v4;

  v6 = [(NSMutableDictionary *)self->_modifiedKeyValues mutableCopy];
  v7 = v3[4];
  v3[4] = v6;

  return v3;
}

- (PHObjectPLAdapter)initWithPLManagedObject:(id)a3 photoLibrary:(id)a4
{
  v8 = a3;
  v9 = a4;
  v22.receiver = self;
  v22.super_class = PHObjectPLAdapter;
  v10 = [(PHObjectPLAdapter *)&v22 init];
  if (v10)
  {
    v11 = [v8 photoLibrary];
    if (v11)
    {
      v12 = v11;
      [v8 photoLibrary];
      v13 = v21 = a2;
      v14 = [v13 pathManager];
      v15 = [v14 libraryURL];
      [v9 photoLibraryURL];
      v17 = v16 = v9;
      v20 = [v15 isEqual:v17];

      v9 = v16;
      if ((v20 & 1) == 0)
      {
        v18 = [MEMORY[0x1E696AAA8] currentHandler];
        [v18 handleFailureInMethod:v21 object:v10 file:@"PHObjectPLAdapter.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"managedObject.photoLibrary == nil || [managedObject.photoLibrary.pathManager.libraryURL isEqual:photoLibrary.photoLibraryURL]"}];
      }
    }

    objc_storeStrong(&v10->_backingManagedObject, a3);
    objc_storeStrong(&v10->_photoLibrary, a4);
  }

  return v10;
}

@end