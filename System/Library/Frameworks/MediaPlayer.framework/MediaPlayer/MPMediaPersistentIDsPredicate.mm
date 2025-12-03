@interface MPMediaPersistentIDsPredicate
+ (id)predicateWithPersistentIDs:(const int64_t *)ds count:(unint64_t)count shouldContain:(BOOL)contain;
- (BOOL)isEqual:(id)equal;
- (MPMediaPersistentIDsPredicate)initWithCoder:(id)coder;
- (MPMediaPersistentIDsPredicate)initWithProtobufferDecodableObject:(id)object library:(id)library;
- (NSString)description;
- (id)ML3PredicateForContainer;
- (id)ML3PredicateForTrack;
- (id)_ML3PredicateForEntityClass:(Class)class;
- (id)protobufferEncodableObjectFromLibrary:(id)library;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPMediaPersistentIDsPredicate

- (id)ML3PredicateForContainer
{
  v3 = objc_opt_class();

  return [(MPMediaPersistentIDsPredicate *)self _ML3PredicateForEntityClass:v3];
}

- (id)ML3PredicateForTrack
{
  v3 = objc_opt_class();

  return [(MPMediaPersistentIDsPredicate *)self _ML3PredicateForEntityClass:v3];
}

- (id)_ML3PredicateForEntityClass:(Class)class
{
  v4 = MEMORY[0x1E69B3500];
  persistentIDs = [(MPMediaPersistentIDsPredicate *)self persistentIDs];
  v6 = [(MPMediaPersistentIDsPredicate *)self count];
  shouldContain = [(MPMediaPersistentIDsPredicate *)self shouldContain];

  return [v4 predicateWithPersistentIDs:persistentIDs count:v6 shouldContain:shouldContain];
}

- (id)protobufferEncodableObjectFromLibrary:(id)library
{
  v4 = objc_alloc_init(MPPPersistentIDsPredicate);
  [(MPPPersistentIDsPredicate *)v4 setShouldContain:self->_shouldContain];
  if (self->_count)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      [(MPPPersistentIDsPredicate *)v4 addPersistentIDs:self->_persistentIDs[v5]];
      v5 = v6;
    }

    while (self->_count > v6++);
  }

  v8 = objc_alloc_init(MPPMediaPredicate);
  [(MPPMediaPredicate *)v8 setType:4];
  [(MPPMediaPredicate *)v8 setPersistentIDsPredicate:v4];

  return v8;
}

- (MPMediaPersistentIDsPredicate)initWithProtobufferDecodableObject:(id)object library:(id)library
{
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPMediaQuery.m" lineNumber:1838 description:{@"Cannot decode object of type %@", objc_opt_class()}];
  }

  v13.receiver = self;
  v13.super_class = MPMediaPersistentIDsPredicate;
  v7 = [(MPMediaPersistentIDsPredicate *)&v13 init];
  if (v7)
  {
    persistentIDsPredicate = [objectCopy persistentIDsPredicate];
    v7->_shouldContain = [persistentIDsPredicate shouldContain];
    persistentIDsCount = [persistentIDsPredicate persistentIDsCount];
    v7->_count = persistentIDsCount;
    v10 = malloc_type_malloc(8 * persistentIDsCount, 0x100004000313F17uLL);
    v7->_persistentIDs = v10;
    memcpy(v10, [persistentIDsPredicate persistentIDs], 8 * v7->_count);
  }

  return v7;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = MPMediaPersistentIDsPredicate;
  return self->_count ^ [(MPMediaPersistentIDsPredicate *)&v3 hash]^ self->_shouldContain;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = MPMediaPersistentIDsPredicate;
  v6 = [(MPMediaPersistentIDsPredicate *)&v8 isEqual:equalCopy]&& (count = self->_count, count == *(equalCopy + 3)) && self->_shouldContain == equalCopy[16] && memcmp(self->_persistentIDs, *(equalCopy + 1), 8 * count) == 0;

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  if (self->_shouldContain)
  {
    v5 = &stru_1F149ECA8;
  }

  else
  {
    v5 = @"NOT";
  }

  return [v3 stringWithFormat:@"<%@ %p> should%@ contain %lu persistent IDs", v4, self, v5, self->_count];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:self->_shouldContain forKey:@"shouldContain"];
  if (self->_count)
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:?];
    if (self->_count)
    {
      v5 = 0;
      do
      {
        v6 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_persistentIDs[v5]];
        [v4 addObject:v6];

        ++v5;
      }

      while (v5 < self->_count);
    }

    [coderCopy encodeObject:v4 forKey:@"persistentIDs"];
  }
}

- (MPMediaPersistentIDsPredicate)initWithCoder:(id)coder
{
  v21 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = MPMediaPersistentIDsPredicate;
  v5 = [(MPMediaPersistentIDsPredicate *)&v19 init];
  if (v5)
  {
    v5->_shouldContain = [coderCopy decodeBoolForKey:@"shouldContain"];
    v6 = [coderCopy decodePropertyListForKey:@"persistentIDs"];
    if (_NSIsNSArray() && [v6 count])
    {
      v5->_persistentIDs = malloc_type_malloc(8 * [v6 count], 0x100004000313F17uLL);
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = 0;
        v11 = *v16;
        do
        {
          v12 = 0;
          do
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(v7);
            }

            v13 = *(*(&v15 + 1) + 8 * v12);
            if (_NSIsNSNumber())
            {
              v5->_persistentIDs[v10++] = [v13 longLongValue];
            }

            ++v12;
          }

          while (v9 != v12);
          v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
        }

        while (v9);
      }
    }

    v5->_count = [v6 count];
  }

  return v5;
}

- (void)dealloc
{
  persistentIDs = self->_persistentIDs;
  if (persistentIDs)
  {
    free(persistentIDs);
  }

  v4.receiver = self;
  v4.super_class = MPMediaPersistentIDsPredicate;
  [(MPMediaPersistentIDsPredicate *)&v4 dealloc];
}

+ (id)predicateWithPersistentIDs:(const int64_t *)ds count:(unint64_t)count shouldContain:(BOOL)contain
{
  v8 = objc_alloc_init(MPMediaPersistentIDsPredicate);
  v8->_shouldContain = contain;
  if (count)
  {
    v9 = malloc_type_malloc(8 * count, 0x6B62C079uLL);
    v8->_persistentIDs = v9;
    memcpy(v9, ds, 8 * count);
    v8->_count = count;
  }

  return v8;
}

@end