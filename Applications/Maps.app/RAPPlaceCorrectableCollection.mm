@interface RAPPlaceCorrectableCollection
- (BOOL)isEdited;
- (NSArray)values;
- (NSString)localizedTitle;
- (RAPPlaceCorrectableCollection)initWithKind:(int64_t)kind originalValues:(id)values maxCount:(unint64_t)count;
- (id)addedObjects;
- (id)removedObjects;
- (void)_invokeChangeHandlers;
- (void)addObject:(id)object;
- (void)addObserver:(id)observer changeHandler:(id)handler;
- (void)clearAndReplaceObjects:(id)objects;
- (void)removeObject:(id)object;
- (void)removeObjectAtIndex:(unint64_t)index;
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

- (void)clearAndReplaceObjects:(id)objects
{
  objectsCopy = objects;
  v5 = [[NSMutableArray alloc] initWithArray:objectsCopy];

  mutableValues = self->_mutableValues;
  self->_mutableValues = v5;

  [(RAPPlaceCorrectableCollection *)self _invokeChangeHandlers];
}

- (id)removedObjects
{
  v3 = [[NSMutableSet alloc] initWithArray:self->_originalValues];
  v4 = [[NSSet alloc] initWithArray:self->_mutableValues];
  [v3 minusSet:v4];
  allObjects = [v3 allObjects];

  return allObjects;
}

- (id)addedObjects
{
  v3 = [[NSMutableSet alloc] initWithArray:self->_mutableValues];
  v4 = [[NSSet alloc] initWithArray:self->_originalValues];
  [v3 minusSet:v4];
  allObjects = [v3 allObjects];

  return allObjects;
}

- (void)removeObject:(id)object
{
  objectCopy = object;
  if ([(NSMutableArray *)self->_mutableValues containsObject:?])
  {
    [(NSMutableArray *)self->_mutableValues removeObject:objectCopy];
    [(RAPPlaceCorrectableCollection *)self _invokeChangeHandlers];
  }
}

- (void)removeObjectAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_mutableValues count]> index)
  {
    [(NSMutableArray *)self->_mutableValues removeObjectAtIndex:index];

    [(RAPPlaceCorrectableCollection *)self _invokeChangeHandlers];
  }
}

- (void)addObject:(id)object
{
  objectCopy = object;
  if (([(NSMutableArray *)self->_mutableValues containsObject:?]& 1) == 0)
  {
    [(NSMutableArray *)self->_mutableValues addObject:objectCopy];
    [(RAPPlaceCorrectableCollection *)self _invokeChangeHandlers];
  }
}

- (RAPPlaceCorrectableCollection)initWithKind:(int64_t)kind originalValues:(id)values maxCount:(unint64_t)count
{
  valuesCopy = values;
  v16.receiver = self;
  v16.super_class = RAPPlaceCorrectableCollection;
  v9 = [(RAPPlaceCorrectableCollection *)&v16 init];
  v10 = v9;
  if (!valuesCopy)
  {
    valuesCopy = &__NSArray0__struct;
  }

  if (v9)
  {
    v9->_kind = kind;
    v11 = [valuesCopy copy];
    originalValues = v10->_originalValues;
    v10->_originalValues = v11;

    v13 = [[NSMutableArray alloc] initWithArray:v10->_originalValues copyItems:1];
    mutableValues = v10->_mutableValues;
    v10->_mutableValues = v13;

    v10->_maxCount = count;
  }

  return v10;
}

- (NSString)localizedTitle
{
  localizedTitle = self->_localizedTitle;
  if (!localizedTitle)
  {
    kind = [(RAPPlaceCorrectableCollection *)self kind];
    if (kind <= 0x15 && ((0x30FFFFu >> kind) & 1) != 0)
    {
      v5 = off_101624FB0[kind];
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
  keyEnumerator = [(NSMapTable *)self->_observers keyEnumerator];
  v4 = [keyEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(keyEnumerator);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [(NSMapTable *)self->_observers objectForKey:v8];
        (v9)[2](v9, self, v8);
      }

      v5 = [keyEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)addObserver:(id)observer changeHandler:(id)handler
{
  observerCopy = observer;
  handlerCopy = handler;
  observers = self->_observers;
  if (!observers)
  {
    v8 = +[NSMapTable weakToStrongObjectsMapTable];
    v9 = self->_observers;
    self->_observers = v8;

    observers = self->_observers;
  }

  v10 = [handlerCopy copy];
  [(NSMapTable *)observers setObject:v10 forKey:observerCopy];
}

@end