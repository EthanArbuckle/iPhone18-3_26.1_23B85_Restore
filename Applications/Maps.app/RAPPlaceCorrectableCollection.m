@interface RAPPlaceCorrectableCollection
- (BOOL)isEdited;
- (NSArray)values;
- (NSString)localizedTitle;
- (RAPPlaceCorrectableCollection)initWithKind:(int64_t)a3 originalValues:(id)a4 maxCount:(unint64_t)a5;
- (id)addedObjects;
- (id)removedObjects;
- (void)_invokeChangeHandlers;
- (void)addObject:(id)a3;
- (void)addObserver:(id)a3 changeHandler:(id)a4;
- (void)clearAndReplaceObjects:(id)a3;
- (void)removeObject:(id)a3;
- (void)removeObjectAtIndex:(unint64_t)a3;
- (void)revertCorrections;
@end

@implementation RAPPlaceCorrectableCollection

- (BOOL)isEdited
{
  v3 = [[NSSet alloc] initWithArray:self->_originalValues];
  v4 = [NSSet alloc];
  v5 = [(NSMutableArray *)self->_mutableValues copy];
  v6 = [v4 initWithArray:v5];

  LOBYTE(v5) = [v6 isEqualToSet:v3];
  return v5 ^ 1;
}

- (void)revertCorrections
{
  v3 = [NSMutableArray alloc];
  v6 = [(NSArray *)self->_originalValues copy];
  v4 = [v3 initWithArray:v6];
  mutableValues = self->_mutableValues;
  self->_mutableValues = v4;
}

- (NSArray)values
{
  v2 = [(NSMutableArray *)self->_mutableValues copy];

  return v2;
}

- (void)clearAndReplaceObjects:(id)a3
{
  v4 = a3;
  v5 = [[NSMutableArray alloc] initWithArray:v4];

  mutableValues = self->_mutableValues;
  self->_mutableValues = v5;

  [(RAPPlaceCorrectableCollection *)self _invokeChangeHandlers];
}

- (id)removedObjects
{
  v3 = [[NSMutableSet alloc] initWithArray:self->_originalValues];
  v4 = [[NSSet alloc] initWithArray:self->_mutableValues];
  [v3 minusSet:v4];
  v5 = [v3 allObjects];

  return v5;
}

- (id)addedObjects
{
  v3 = [[NSMutableSet alloc] initWithArray:self->_mutableValues];
  v4 = [[NSSet alloc] initWithArray:self->_originalValues];
  [v3 minusSet:v4];
  v5 = [v3 allObjects];

  return v5;
}

- (void)removeObject:(id)a3
{
  v4 = a3;
  if ([(NSMutableArray *)self->_mutableValues containsObject:?])
  {
    [(NSMutableArray *)self->_mutableValues removeObject:v4];
    [(RAPPlaceCorrectableCollection *)self _invokeChangeHandlers];
  }
}

- (void)removeObjectAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_mutableValues count]> a3)
  {
    [(NSMutableArray *)self->_mutableValues removeObjectAtIndex:a3];

    [(RAPPlaceCorrectableCollection *)self _invokeChangeHandlers];
  }
}

- (void)addObject:(id)a3
{
  v4 = a3;
  if (([(NSMutableArray *)self->_mutableValues containsObject:?]& 1) == 0)
  {
    [(NSMutableArray *)self->_mutableValues addObject:v4];
    [(RAPPlaceCorrectableCollection *)self _invokeChangeHandlers];
  }
}

- (RAPPlaceCorrectableCollection)initWithKind:(int64_t)a3 originalValues:(id)a4 maxCount:(unint64_t)a5
{
  v8 = a4;
  v16.receiver = self;
  v16.super_class = RAPPlaceCorrectableCollection;
  v9 = [(RAPPlaceCorrectableCollection *)&v16 init];
  v10 = v9;
  if (!v8)
  {
    v8 = &__NSArray0__struct;
  }

  if (v9)
  {
    v9->_kind = a3;
    v11 = [v8 copy];
    originalValues = v10->_originalValues;
    v10->_originalValues = v11;

    v13 = [[NSMutableArray alloc] initWithArray:v10->_originalValues copyItems:1];
    mutableValues = v10->_mutableValues;
    v10->_mutableValues = v13;

    v10->_maxCount = a5;
  }

  return v10;
}

- (NSString)localizedTitle
{
  localizedTitle = self->_localizedTitle;
  if (!localizedTitle)
  {
    v4 = [(RAPPlaceCorrectableCollection *)self kind];
    if (v4 <= 0x15 && ((0x30FFFFu >> v4) & 1) != 0)
    {
      v5 = off_101624FB0[v4];
      v6 = +[NSBundle mainBundle];
      v7 = [v6 localizedStringForKey:v5 value:@"localized string not found" table:0];
    }

    else
    {
      v7 = 0;
    }

    v8 = self->_localizedTitle;
    self->_localizedTitle = v7;

    localizedTitle = self->_localizedTitle;
  }

  return localizedTitle;
}

- (void)_invokeChangeHandlers
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(NSMapTable *)self->_observers keyEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [(NSMapTable *)self->_observers objectForKey:v8];
        (v9)[2](v9, self, v8);
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)addObserver:(id)a3 changeHandler:(id)a4
{
  v11 = a3;
  v6 = a4;
  observers = self->_observers;
  if (!observers)
  {
    v8 = +[NSMapTable weakToStrongObjectsMapTable];
    v9 = self->_observers;
    self->_observers = v8;

    observers = self->_observers;
  }

  v10 = [v6 copy];
  [(NSMapTable *)observers setObject:v10 forKey:v11];
}

@end