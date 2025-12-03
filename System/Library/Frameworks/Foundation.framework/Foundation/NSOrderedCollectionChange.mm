@interface NSOrderedCollectionChange
+ (NSOrderedCollectionChange)changeWithObject:(id)anObject type:(NSCollectionChangeType)type index:(NSUInteger)index;
+ (NSOrderedCollectionChange)changeWithObject:(id)anObject type:(NSCollectionChangeType)type index:(NSUInteger)index associatedIndex:(NSUInteger)associatedIndex;
- (BOOL)isEqual:(id)equal;
- (NSOrderedCollectionChange)initWithObject:(id)anObject type:(NSCollectionChangeType)type index:(NSUInteger)index associatedIndex:(NSUInteger)associatedIndex;
- (id)debugDescription;
- (id)init;
- (void)dealloc;
@end

@implementation NSOrderedCollectionChange

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSOrderedCollectionChange;
  [(NSOrderedCollectionChange *)&v3 dealloc];
}

+ (NSOrderedCollectionChange)changeWithObject:(id)anObject type:(NSCollectionChangeType)type index:(NSUInteger)index
{
  v5 = [[self alloc] initWithObject:anObject type:type index:index];

  return v5;
}

+ (NSOrderedCollectionChange)changeWithObject:(id)anObject type:(NSCollectionChangeType)type index:(NSUInteger)index associatedIndex:(NSUInteger)associatedIndex
{
  v6 = [[self alloc] initWithObject:anObject type:type index:index associatedIndex:associatedIndex];

  return v6;
}

- (id)init
{
  v3 = objc_alloc(MEMORY[0x1E695DF30]);
  v4 = *MEMORY[0x1E695D930];
  Name = sel_getName(a2);
  v6 = [v3 initWithName:v4 reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"Unavailable method %s called on class %@", Name, objc_opt_class()), 0}];
  objc_exception_throw(v6);
}

- (NSOrderedCollectionChange)initWithObject:(id)anObject type:(NSCollectionChangeType)type index:(NSUInteger)index associatedIndex:(NSUInteger)associatedIndex
{
  v17[1] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = NSOrderedCollectionChange;
  v10 = [(NSOrderedCollectionChange *)&v15 init];
  v11 = v10;
  if (v10)
  {
    if (type >= 2)
    {

      v13 = MEMORY[0x1E695DF30];
      v14 = *MEMORY[0x1E695D940];
      v16 = @"type";
      v17[0] = [NSNumber numberWithInteger:type];
      objc_exception_throw([v13 exceptionWithName:v14 reason:@"Invalid type for change" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v17, &v16, 1)}]);
    }

    v10->_object = anObject;
    v11->_changeType = type;
    v11->_index = index;
    v11->_associatedIndex = associatedIndex;
  }

  return v11;
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  changeType = self->_changeType;
  if (self->_object)
  {
    v6 = objc_opt_class();
    v7 = [NSString stringWithFormat:@"of object <%@: %p> ", NSStringFromClass(v6), self->_object];
  }

  else
  {
    v7 = &stru_1EEEFDF90;
  }

  index = self->_index;
  if (self->_associatedIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = &stru_1EEEFDF90;
  }

  else
  {
    v9 = [NSString stringWithFormat:@" associated with index %lu", self->_associatedIndex];
  }

  v10 = @"insertion";
  if (changeType == 1)
  {
    v10 = @"removal";
  }

  return [NSString stringWithFormat:@"<%@: %p>(%@ %@at index %lu%@)", v4, self, v10, v7, index, v9];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  object = self->_object;
  if (object == *(equal + 1) || (v6 = [object isEqual:?]) != 0)
  {
    if (self->_changeType == *(equal + 2) && self->_index == *(equal + 3))
    {
      LOBYTE(v6) = self->_associatedIndex == *(equal + 4);
      return v6;
    }

LABEL_8:
    LOBYTE(v6) = 0;
  }

  return v6;
}

@end