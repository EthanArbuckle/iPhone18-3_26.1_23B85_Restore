@interface MPMediaPersistentIDsPredicate
+ (id)predicateWithPersistentIDs:(const int64_t *)a3 count:(unint64_t)a4 shouldContain:(BOOL)a5;
- (BOOL)isEqual:(id)a3;
- (MPMediaPersistentIDsPredicate)initWithCoder:(id)a3;
- (MPMediaPersistentIDsPredicate)initWithProtobufferDecodableObject:(id)a3 library:(id)a4;
- (NSString)description;
- (id)ML3PredicateForContainer;
- (id)ML3PredicateForTrack;
- (id)_ML3PredicateForEntityClass:(Class)a3;
- (id)protobufferEncodableObjectFromLibrary:(id)a3;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
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

- (id)_ML3PredicateForEntityClass:(Class)a3
{
  v4 = MEMORY[0x1E69B3500];
  v5 = [(MPMediaPersistentIDsPredicate *)self persistentIDs];
  v6 = [(MPMediaPersistentIDsPredicate *)self count];
  v7 = [(MPMediaPersistentIDsPredicate *)self shouldContain];

  return [v4 predicateWithPersistentIDs:v5 count:v6 shouldContain:v7];
}

- (id)protobufferEncodableObjectFromLibrary:(id)a3
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

- (MPMediaPersistentIDsPredicate)initWithProtobufferDecodableObject:(id)a3 library:(id)a4
{
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"MPMediaQuery.m" lineNumber:1838 description:{@"Cannot decode object of type %@", objc_opt_class()}];
  }

  v13.receiver = self;
  v13.super_class = MPMediaPersistentIDsPredicate;
  v7 = [(MPMediaPersistentIDsPredicate *)&v13 init];
  if (v7)
  {
    v8 = [v6 persistentIDsPredicate];
    v7->_shouldContain = [v8 shouldContain];
    v9 = [v8 persistentIDsCount];
    v7->_count = v9;
    v10 = malloc_type_malloc(8 * v9, 0x100004000313F17uLL);
    v7->_persistentIDs = v10;
    memcpy(v10, [v8 persistentIDs], 8 * v7->_count);
  }

  return v7;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = MPMediaPersistentIDsPredicate;
  return self->_count ^ [(MPMediaPersistentIDsPredicate *)&v3 hash]^ self->_shouldContain;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MPMediaPersistentIDsPredicate;
  v6 = [(MPMediaPersistentIDsPredicate *)&v8 isEqual:v4]&& (count = self->_count, count == *(v4 + 3)) && self->_shouldContain == v4[16] && memcmp(self->_persistentIDs, *(v4 + 1), 8 * count) == 0;

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

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  [v7 encodeBool:self->_shouldContain forKey:@"shouldContain"];
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

    [v7 encodeObject:v4 forKey:@"persistentIDs"];
  }
}

- (MPMediaPersistentIDsPredicate)initWithCoder:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = MPMediaPersistentIDsPredicate;
  v5 = [(MPMediaPersistentIDsPredicate *)&v19 init];
  if (v5)
  {
    v5->_shouldContain = [v4 decodeBoolForKey:@"shouldContain"];
    v6 = [v4 decodePropertyListForKey:@"persistentIDs"];
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

+ (id)predicateWithPersistentIDs:(const int64_t *)a3 count:(unint64_t)a4 shouldContain:(BOOL)a5
{
  v8 = objc_alloc_init(MPMediaPersistentIDsPredicate);
  v8->_shouldContain = a5;
  if (a4)
  {
    v9 = malloc_type_malloc(8 * a4, 0x6B62C079uLL);
    v8->_persistentIDs = v9;
    memcpy(v9, a3, 8 * a4);
    v8->_count = a4;
  }

  return v8;
}

@end