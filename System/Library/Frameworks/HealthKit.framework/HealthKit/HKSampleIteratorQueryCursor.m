@interface HKSampleIteratorQueryCursor
- (BOOL)isEqual:(id)a3;
- (HKSampleIteratorQueryCursor)init;
- (HKSampleIteratorQueryCursor)initWithCoder:(id)a3;
- (HKSampleIteratorQueryCursor)initWithQueryDescriptors:(id)a3 sortDescriptors:(id)a4 followingAnchor:(id)a5 upToAndIncludingAnchor:(id)a6 distinctByKeyPaths:(id)a7 state:(id)a8;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSampleIteratorQueryCursor

- (HKSampleIteratorQueryCursor)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKSampleIteratorQueryCursor)initWithQueryDescriptors:(id)a3 sortDescriptors:(id)a4 followingAnchor:(id)a5 upToAndIncludingAnchor:(id)a6 distinctByKeyPaths:(id)a7 state:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  if (!v15)
  {
    [HKSampleIteratorQueryCursor initWithQueryDescriptors:a2 sortDescriptors:self followingAnchor:? upToAndIncludingAnchor:? distinctByKeyPaths:? state:?];
  }

  v35.receiver = self;
  v35.super_class = HKSampleIteratorQueryCursor;
  v21 = [(HKSampleIteratorQueryCursor *)&v35 init];
  if (v21)
  {
    v22 = [v15 copy];
    queryDescriptors = v21->_queryDescriptors;
    v21->_queryDescriptors = v22;

    v24 = [v16 copy];
    sortDescriptors = v21->_sortDescriptors;
    v21->_sortDescriptors = v24;

    v26 = [v17 copy];
    followingAnchor = v21->_followingAnchor;
    v21->_followingAnchor = v26;

    v28 = [v18 copy];
    upToAndIncludingAnchor = v21->_upToAndIncludingAnchor;
    v21->_upToAndIncludingAnchor = v28;

    v30 = [v19 copy];
    distinctByKeyPaths = v21->_distinctByKeyPaths;
    v21->_distinctByKeyPaths = v30;

    v32 = [v20 copy];
    state = v21->_state;
    v21->_state = v32;
  }

  return v21;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_queryDescriptors hash];
  v4 = [(NSArray *)self->_sortDescriptors hash]^ v3;
  v5 = [(HKQueryAnchor *)self->_followingAnchor hash];
  v6 = v4 ^ v5 ^ [(HKQueryAnchor *)self->_upToAndIncludingAnchor hash];
  v7 = [(NSArray *)self->_distinctByKeyPaths hash];
  return v6 ^ v7 ^ [(NSData *)self->_state hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      queryDescriptors = self->_queryDescriptors;
      v7 = v5->_queryDescriptors;
      if (queryDescriptors != v7 && (!v7 || ![(NSArray *)queryDescriptors isEqual:?]))
      {
        goto LABEL_24;
      }

      sortDescriptors = self->_sortDescriptors;
      v9 = v5->_sortDescriptors;
      if (sortDescriptors != v9 && (!v9 || ![(NSArray *)sortDescriptors isEqual:?]))
      {
        goto LABEL_24;
      }

      followingAnchor = self->_followingAnchor;
      v11 = v5->_followingAnchor;
      if (followingAnchor != v11 && (!v11 || ![(HKQueryAnchor *)followingAnchor isEqual:?]))
      {
        goto LABEL_24;
      }

      if (((upToAndIncludingAnchor = self->_upToAndIncludingAnchor, v13 = v5->_upToAndIncludingAnchor, upToAndIncludingAnchor == v13) || v13 && [(HKQueryAnchor *)upToAndIncludingAnchor isEqual:?]) && ((distinctByKeyPaths = self->_distinctByKeyPaths, v15 = v5->_distinctByKeyPaths, distinctByKeyPaths == v15) || v15 && [(NSArray *)distinctByKeyPaths isEqual:?]) && ((state = self->_state, v17 = v5->_state, state == v17) || v17 && [(NSData *)state isEqual:?]))
      {
        v18 = 1;
      }

      else
      {
LABEL_24:
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  queryDescriptors = self->_queryDescriptors;
  v5 = a3;
  [v5 encodeObject:queryDescriptors forKey:@"queryDescriptors"];
  [v5 encodeObject:self->_sortDescriptors forKey:@"SortDescriptors"];
  [v5 encodeObject:self->_followingAnchor forKey:@"FollowingAnchor"];
  [v5 encodeObject:self->_upToAndIncludingAnchor forKey:@"UpToAndIncludingAnchor"];
  [v5 encodeObject:self->_distinctByKeyPaths forKey:@"DistinctByKeyPaths"];
  [v5 encodeObject:self->_state forKey:@"State"];
}

- (HKSampleIteratorQueryCursor)initWithCoder:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
  v5 = [v3 decodeObjectOfClasses:v4 forKey:@"queryDescriptors"];

  v6 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
  v7 = [v3 decodeObjectOfClasses:v6 forKey:@"SortDescriptors"];

  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"FollowingAnchor"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"UpToAndIncludingAnchor"];
  v10 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
  v11 = [v3 decodeObjectOfClasses:v10 forKey:@"DistinctByKeyPaths"];

  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"State"];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      v17 = 0;
      do
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v22 + 1) + 8 * v17++) allowEvaluation];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v15);
  }

  v18 = [(HKSampleIteratorQueryCursor *)self initWithQueryDescriptors:v5 sortDescriptors:v13 followingAnchor:v8 upToAndIncludingAnchor:v9 distinctByKeyPaths:v11 state:v12];
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)initWithQueryDescriptors:(uint64_t)a1 sortDescriptors:(uint64_t)a2 followingAnchor:upToAndIncludingAnchor:distinctByKeyPaths:state:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKSampleIteratorQueryCursor.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"queryDescriptors"}];
}

@end