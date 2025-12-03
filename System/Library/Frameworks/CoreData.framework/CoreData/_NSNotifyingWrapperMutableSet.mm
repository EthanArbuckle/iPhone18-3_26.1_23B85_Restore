@interface _NSNotifyingWrapperMutableSet
- (_NSNotifyingWrapperMutableSet)initWithContainer:(id)container key:(id)key mutableSet:(id)set;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionWithLocale:(id)locale;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)addObject:(id)object;
- (void)addObjectsFromArray:(id)array;
- (void)dealloc;
- (void)intersectSet:(id)set;
- (void)minusSet:(id)set;
- (void)removeAllObjects;
- (void)removeObject:(id)object;
- (void)setSet:(id)set;
- (void)unionSet:(id)set;
@end

@implementation _NSNotifyingWrapperMutableSet

- (void)dealloc
{
  self->_container = 0;

  self->_key = 0;
  self->_mutableSet = 0;
  v3.receiver = self;
  v3.super_class = _NSNotifyingWrapperMutableSet;
  [(_NSNotifyingWrapperMutableSet *)&v3 dealloc];
}

- (_NSNotifyingWrapperMutableSet)initWithContainer:(id)container key:(id)key mutableSet:(id)set
{
  v10.receiver = self;
  v10.super_class = _NSNotifyingWrapperMutableSet;
  v8 = [(_NSNotifyingWrapperMutableSet *)&v10 init];
  if (v8)
  {
    v8->_container = container;
    v8->_key = [key copy];
    v8->_mutableSet = set;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(MEMORY[0x1E695DFD8]);
  mutableSet = self->_mutableSet;

  return [v4 initWithSet:mutableSet copyItems:0];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(MEMORY[0x1E695DFA8]);
  mutableSet = self->_mutableSet;

  return [v4 initWithSet:mutableSet copyItems:0];
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(NSMutableSet *)self->_mutableSet description];
  objc_autoreleasePoolPop(v3);

  return v4;
}

- (id)descriptionWithLocale:(id)locale
{
  v5 = objc_autoreleasePoolPush();
  v6 = [(NSMutableSet *)self->_mutableSet descriptionWithLocale:locale];
  objc_autoreleasePoolPop(v5);

  return v6;
}

- (void)addObject:(id)object
{
  objectCopy = object;
  v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:&objectCopy count:1];
  [(NSManagedObject *)self->_container willChangeValueForKey:self->_key withSetMutation:1 usingObjects:v4];
  [(NSMutableSet *)self->_mutableSet addObject:objectCopy];
  [(NSManagedObject *)self->_container didChangeValueForKey:self->_key withSetMutation:1 usingObjects:v4];
}

- (void)addObjectsFromArray:(id)array
{
  v5 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:array];
  [(NSManagedObject *)self->_container willChangeValueForKey:self->_key withSetMutation:1 usingObjects:v5];
  [(NSMutableSet *)self->_mutableSet addObjectsFromArray:array];
  [(NSManagedObject *)self->_container didChangeValueForKey:self->_key withSetMutation:1 usingObjects:v5];
}

- (void)intersectSet:(id)set
{
  [(NSManagedObject *)self->_container willChangeValueForKey:self->_key withSetMutation:3 usingObjects:set];
  [(NSMutableSet *)self->_mutableSet intersectSet:set];
  container = self->_container;
  key = self->_key;

  [(NSManagedObject *)container didChangeValueForKey:key withSetMutation:3 usingObjects:set];
}

- (void)minusSet:(id)set
{
  [(NSManagedObject *)self->_container willChangeValueForKey:self->_key withSetMutation:2 usingObjects:set];
  [(NSMutableSet *)self->_mutableSet minusSet:set];
  container = self->_container;
  key = self->_key;

  [(NSManagedObject *)container didChangeValueForKey:key withSetMutation:2 usingObjects:set];
}

- (void)removeAllObjects
{
  v3 = NSSet_EmptySet;
  [(NSManagedObject *)self->_container willChangeValueForKey:self->_key withSetMutation:3 usingObjects:NSSet_EmptySet];
  [(NSMutableSet *)self->_mutableSet removeAllObjects];
  container = self->_container;
  key = self->_key;

  [(NSManagedObject *)container didChangeValueForKey:key withSetMutation:3 usingObjects:v3];
}

- (void)removeObject:(id)object
{
  objectCopy = object;
  v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:&objectCopy count:1];
  [(NSManagedObject *)self->_container willChangeValueForKey:self->_key withSetMutation:2 usingObjects:v4];
  [(NSMutableSet *)self->_mutableSet removeObject:objectCopy];
  [(NSManagedObject *)self->_container didChangeValueForKey:self->_key withSetMutation:2 usingObjects:v4];
}

- (void)setSet:(id)set
{
  [(NSManagedObject *)self->_container willChangeValueForKey:self->_key withSetMutation:4 usingObjects:set];
  [(NSMutableSet *)self->_mutableSet setSet:set];
  container = self->_container;
  key = self->_key;

  [(NSManagedObject *)container didChangeValueForKey:key withSetMutation:4 usingObjects:set];
}

- (void)unionSet:(id)set
{
  [(NSManagedObject *)self->_container willChangeValueForKey:self->_key withSetMutation:1 usingObjects:set];
  [(NSMutableSet *)self->_mutableSet unionSet:set];
  container = self->_container;
  key = self->_key;

  [(NSManagedObject *)container didChangeValueForKey:key withSetMutation:1 usingObjects:set];
}

@end