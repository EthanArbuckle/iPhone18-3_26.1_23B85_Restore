@interface PHObjectPLAdapter
- (PHObjectPLAdapter)initWithPLManagedObject:(id)object photoLibrary:(id)library;
- (id)mutableAccessingCopy;
- (id)objectForKey:(id)key;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
@end

@implementation PHObjectPLAdapter

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  if (object)
  {
    [(PHObjectPLAdapter *)self setObject:object forKey:subscript];
  }

  else
  {
    [(PHObjectPLAdapter *)self removeObjectForKey:subscript];
  }
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  modifiedKeyValues = self->_modifiedKeyValues;
  if (!modifiedKeyValues)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = self->_modifiedKeyValues;
    self->_modifiedKeyValues = v8;

    modifiedKeyValues = self->_modifiedKeyValues;
  }

  [(NSMutableDictionary *)modifiedKeyValues setObject:objectCopy forKey:keyCopy];
  [(NSMutableOrderedSet *)self->_ignoredKeys removeObject:keyCopy];
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  ignoredKeys = self->_ignoredKeys;
  v8 = keyCopy;
  if (!ignoredKeys)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v7 = self->_ignoredKeys;
    self->_ignoredKeys = v6;

    keyCopy = v8;
    ignoredKeys = self->_ignoredKeys;
  }

  [(NSMutableOrderedSet *)ignoredKeys addObject:keyCopy];
  [(NSMutableDictionary *)self->_modifiedKeyValues removeObjectForKey:v8];
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  if (([(NSMutableOrderedSet *)self->_ignoredKeys containsObject:keyCopy]& 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableDictionary *)self->_modifiedKeyValues objectForKey:keyCopy];
    if (!v5)
    {
      v5 = [(PLManagedObject *)self->_backingManagedObject valueForKeyPath:keyCopy];
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

- (PHObjectPLAdapter)initWithPLManagedObject:(id)object photoLibrary:(id)library
{
  objectCopy = object;
  libraryCopy = library;
  v22.receiver = self;
  v22.super_class = PHObjectPLAdapter;
  v10 = [(PHObjectPLAdapter *)&v22 init];
  if (v10)
  {
    photoLibrary = [objectCopy photoLibrary];
    if (photoLibrary)
    {
      v12 = photoLibrary;
      [objectCopy photoLibrary];
      v13 = v21 = a2;
      pathManager = [v13 pathManager];
      libraryURL = [pathManager libraryURL];
      [libraryCopy photoLibraryURL];
      v17 = v16 = libraryCopy;
      v20 = [libraryURL isEqual:v17];

      libraryCopy = v16;
      if ((v20 & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:v21 object:v10 file:@"PHObjectPLAdapter.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"managedObject.photoLibrary == nil || [managedObject.photoLibrary.pathManager.libraryURL isEqual:photoLibrary.photoLibraryURL]"}];
      }
    }

    objc_storeStrong(&v10->_backingManagedObject, object);
    objc_storeStrong(&v10->_photoLibrary, library);
  }

  return v10;
}

@end