@interface _NSNotifyingWrapperMutableSet
- (_NSNotifyingWrapperMutableSet)initWithContainer:(id)a3 key:(id)a4 mutableSet:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionWithLocale:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)addObject:(id)a3;
- (void)addObjectsFromArray:(id)a3;
- (void)dealloc;
- (void)intersectSet:(id)a3;
- (void)minusSet:(id)a3;
- (void)removeAllObjects;
- (void)removeObject:(id)a3;
- (void)setSet:(id)a3;
- (void)unionSet:(id)a3;
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

- (_NSNotifyingWrapperMutableSet)initWithContainer:(id)a3 key:(id)a4 mutableSet:(id)a5
{
  v10.receiver = self;
  v10.super_class = _NSNotifyingWrapperMutableSet;
  v8 = [(_NSNotifyingWrapperMutableSet *)&v10 init];
  if (v8)
  {
    v8->_container = a3;
    v8->_key = [a4 copy];
    v8->_mutableSet = a5;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(MEMORY[0x1E695DFD8]);
  mutableSet = self->_mutableSet;

  return [v4 initWithSet:mutableSet copyItems:0];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
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

- (id)descriptionWithLocale:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = [(NSMutableSet *)self->_mutableSet descriptionWithLocale:a3];
  objc_autoreleasePoolPop(v5);

  return v6;
}

- (void)addObject:(id)a3
{
  v5 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:&v5 count:1];
  [(NSManagedObject *)self->_container willChangeValueForKey:self->_key withSetMutation:1 usingObjects:v4];
  [(NSMutableSet *)self->_mutableSet addObject:v5];
  [(NSManagedObject *)self->_container didChangeValueForKey:self->_key withSetMutation:1 usingObjects:v4];
}

- (void)addObjectsFromArray:(id)a3
{
  v5 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:a3];
  [(NSManagedObject *)self->_container willChangeValueForKey:self->_key withSetMutation:1 usingObjects:v5];
  [(NSMutableSet *)self->_mutableSet addObjectsFromArray:a3];
  [(NSManagedObject *)self->_container didChangeValueForKey:self->_key withSetMutation:1 usingObjects:v5];
}

- (void)intersectSet:(id)a3
{
  [(NSManagedObject *)self->_container willChangeValueForKey:self->_key withSetMutation:3 usingObjects:a3];
  [(NSMutableSet *)self->_mutableSet intersectSet:a3];
  container = self->_container;
  key = self->_key;

  [(NSManagedObject *)container didChangeValueForKey:key withSetMutation:3 usingObjects:a3];
}

- (void)minusSet:(id)a3
{
  [(NSManagedObject *)self->_container willChangeValueForKey:self->_key withSetMutation:2 usingObjects:a3];
  [(NSMutableSet *)self->_mutableSet minusSet:a3];
  container = self->_container;
  key = self->_key;

  [(NSManagedObject *)container didChangeValueForKey:key withSetMutation:2 usingObjects:a3];
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

- (void)removeObject:(id)a3
{
  v5 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:&v5 count:1];
  [(NSManagedObject *)self->_container willChangeValueForKey:self->_key withSetMutation:2 usingObjects:v4];
  [(NSMutableSet *)self->_mutableSet removeObject:v5];
  [(NSManagedObject *)self->_container didChangeValueForKey:self->_key withSetMutation:2 usingObjects:v4];
}

- (void)setSet:(id)a3
{
  [(NSManagedObject *)self->_container willChangeValueForKey:self->_key withSetMutation:4 usingObjects:a3];
  [(NSMutableSet *)self->_mutableSet setSet:a3];
  container = self->_container;
  key = self->_key;

  [(NSManagedObject *)container didChangeValueForKey:key withSetMutation:4 usingObjects:a3];
}

- (void)unionSet:(id)a3
{
  [(NSManagedObject *)self->_container willChangeValueForKey:self->_key withSetMutation:1 usingObjects:a3];
  [(NSMutableSet *)self->_mutableSet unionSet:a3];
  container = self->_container;
  key = self->_key;

  [(NSManagedObject *)container didChangeValueForKey:key withSetMutation:1 usingObjects:a3];
}

@end