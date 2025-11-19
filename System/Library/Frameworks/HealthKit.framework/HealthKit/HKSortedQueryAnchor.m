@interface HKSortedQueryAnchor
+ (id)sortConstraintsWithSortDescriptors:(id)a3 sample:(id)a4;
+ (id)sortedQueryAnchorRelaxingConstraintsWithAnchor:(id)a3 error:(id *)a4;
+ (id)sortedQueryAnchorWithSortDescriptors:(id)a3;
+ (id)sortedQueryAnchorWithSortDescriptors:(id)a3 followingSample:(id)a4 objectID:(int64_t)a5;
+ (id)sortedQueryAnchorWithSortDescriptors:(id)a3 includingSample:(id)a4 objectID:(int64_t)a5;
+ (id)sortedQueryAnchorWithSortDescriptors:(id)a3 objectID:(int64_t)a4;
- (BOOL)canRelax;
- (BOOL)isCompatibleWithSortDescriptors:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HKSortedQueryAnchor)init;
- (HKSortedQueryAnchor)initWithCoder:(id)a3;
- (HKSortedQueryAnchor)initWithSortConstraints:(id)a3 objectID:(id)a4;
- (id)predicate;
- (id)querySortDescriptors;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSortedQueryAnchor

+ (id)sortedQueryAnchorWithSortDescriptors:(id)a3 objectID:(int64_t)a4
{
  v7 = a3;
  if (!v7)
  {
    [HKSortedQueryAnchor sortedQueryAnchorWithSortDescriptors:a2 objectID:a1];
  }

  v8 = [v7 hk_map:&__block_literal_global_112];
  v9 = [a1 alloc];
  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:a4];
  v11 = [v9 initWithSortConstraints:v8 objectID:v10];

  return v11;
}

+ (id)sortedQueryAnchorWithSortDescriptors:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(HKSortedQueryAnchor *)a2 sortedQueryAnchorWithSortDescriptors:a1];
  }

  v6 = [v5 hk_map:&__block_literal_global_17_0];
  v7 = [[a1 alloc] initWithSortConstraints:v6 objectID:0];

  return v7;
}

- (HKSortedQueryAnchor)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKSortedQueryAnchor)initWithSortConstraints:(id)a3 objectID:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [HKSortedQueryAnchor initWithSortConstraints:a2 objectID:self];
  }

  v15.receiver = self;
  v15.super_class = HKSortedQueryAnchor;
  v9 = [(HKSortedQueryAnchor *)&v15 init];
  if (v9)
  {
    v10 = [v7 copy];
    sortConstraints = v9->_sortConstraints;
    v9->_sortConstraints = v10;

    v12 = [v8 copy];
    objectID = v9->_objectID;
    v9->_objectID = v12;
  }

  return v9;
}

+ (id)sortConstraintsWithSortDescriptors:(id)a3 sample:(id)a4
{
  v5 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__HKSortedQueryAnchor_sortConstraintsWithSortDescriptors_sample___block_invoke;
  v9[3] = &unk_1E7383940;
  v10 = v5;
  v6 = v5;
  v7 = [a3 hk_map:v9];

  return v7;
}

id __65__HKSortedQueryAnchor_sortConstraintsWithSortDescriptors_sample___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AB18];
  v4 = a2;
  v5 = [v4 key];
  v6 = *(a1 + 32);
  v7 = [v4 key];
  v8 = [v6 valueForKey:v7];
  v9 = [v3 hk_equalityPredicateWithKey:v5 value:v8];

  v10 = [HKQuerySortConstraint sortConstraintWithSortDescriptor:v4 predicate:v9];

  return v10;
}

+ (id)sortedQueryAnchorWithSortDescriptors:(id)a3 includingSample:(id)a4 objectID:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [objc_opt_class() sortConstraintsWithSortDescriptors:v9 sample:v8];

  v11 = [a1 alloc];
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  v13 = [MEMORY[0x1E696AD98] numberWithLongLong:a5 - 1];
  v14 = [v11 initWithSortConstraints:v12 objectID:v13];

  return v14;
}

+ (id)sortedQueryAnchorWithSortDescriptors:(id)a3 followingSample:(id)a4 objectID:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [objc_opt_class() sortConstraintsWithSortDescriptors:v9 sample:v8];

  v11 = [a1 alloc];
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  v13 = [MEMORY[0x1E696AD98] numberWithLongLong:a5];
  v14 = [v11 initWithSortConstraints:v12 objectID:v13];

  return v14;
}

+ (id)sortedQueryAnchorRelaxingConstraintsWithAnchor:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 sortConstraints];
  v8 = [v7 hk_reversed];

  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 1;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__HKSortedQueryAnchor_sortedQueryAnchorRelaxingConstraintsWithAnchor_error___block_invoke;
  v15[3] = &unk_1E7383968;
  v15[4] = v16;
  v9 = [v8 hk_map:v15 error:a4];
  v10 = [v9 hk_reversed];

  if (v10)
  {
    v11 = [v10 hk_filter:&__block_literal_global_29_1];
    v12 = [v11 count];

    if (v12 > 0)
    {
      v13 = [[a1 alloc] initWithSortConstraints:v10 objectID:0];
      goto LABEL_6;
    }

    [MEMORY[0x1E696ABC0] hk_assignError:a4 code:3 format:@"Unable to relax query anchor"];
  }

  v13 = 0;
LABEL_6:

  _Block_object_dispose(v16, 8);

  return v13;
}

id __76__HKSortedQueryAnchor_sortedQueryAnchorRelaxingConstraintsWithAnchor_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (*(*(*(a1 + 32) + 8) + 24) & 1) != 0 && ([v5 canRelax])
  {
    v7 = [HKQuerySortConstraint sortConstraintByRelaxingSortConstraint:v6 error:a3];
    v8 = v7;
    if (v7)
    {
      if ([v7 canRelax])
      {
        *(*(*(a1 + 32) + 8) + 24) = 0;
      }

      v9 = v8;
    }
  }

  else
  {
    v8 = [v6 copy];
  }

  return v8;
}

BOOL __76__HKSortedQueryAnchor_sortedQueryAnchorRelaxingConstraintsWithAnchor_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 predicate];
  v3 = v2 != 0;

  return v3;
}

- (id)querySortDescriptors
{
  v2 = [(HKSortedQueryAnchor *)self sortConstraints];
  v3 = [v2 hk_map:&__block_literal_global_36];
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"HKObjectSortIdentifierDataID" ascending:1];
  v5 = [v3 arrayByAddingObject:v4];

  return v5;
}

- (id)predicate
{
  v2 = [(HKSortedQueryAnchor *)self sortConstraints];
  v3 = [v2 hk_map:&__block_literal_global_39_0];

  v4 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v3];

  return v4;
}

- (BOOL)isCompatibleWithSortDescriptors:(id)a3
{
  v4 = a3;
  v5 = [(HKSortedQueryAnchor *)self sortConstraints];
  v6 = [v5 hk_map:&__block_literal_global_42_0];
  v7 = [v6 isEqualToArray:v4];

  return v7;
}

- (BOOL)canRelax
{
  v3 = [(HKSortedQueryAnchor *)self sortConstraints];
  v4 = [v3 hk_filter:&__block_literal_global_44_1];
  v5 = [v4 count];

  v6 = [(HKSortedQueryAnchor *)self objectID];

  if (v6)
  {
    v7 = v5 + 1;
  }

  else
  {
    v7 = v5;
  }

  return v7 > 1;
}

- (unint64_t)hash
{
  v3 = [(HKSortedQueryAnchor *)self sortConstraints];
  v4 = [v3 hash];
  v5 = [(HKSortedQueryAnchor *)self objectID];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      sortConstraints = self->_sortConstraints;
      v7 = [(HKSortedQueryAnchor *)v5 sortConstraints];
      v8 = v7;
      if (sortConstraints == v7)
      {
      }

      else
      {
        v9 = [(HKSortedQueryAnchor *)v5 sortConstraints];
        if (!v9)
        {
          goto LABEL_14;
        }

        v10 = v9;
        v11 = self->_sortConstraints;
        v12 = [(HKSortedQueryAnchor *)v5 sortConstraints];
        LODWORD(v11) = [(NSArray *)v11 isEqual:v12];

        if (!v11)
        {
          goto LABEL_15;
        }
      }

      objectID = self->_objectID;
      v15 = [(HKSortedQueryAnchor *)v5 objectID];
      v8 = v15;
      if (objectID == v15)
      {

LABEL_17:
        v13 = 1;
        goto LABEL_18;
      }

      v16 = [(HKSortedQueryAnchor *)v5 objectID];
      if (v16)
      {
        v17 = v16;
        v18 = self->_objectID;
        v19 = [(HKSortedQueryAnchor *)v5 objectID];
        LOBYTE(v18) = [(NSNumber *)v18 isEqual:v19];

        if (v18)
        {
          goto LABEL_17;
        }

LABEL_15:
        v13 = 0;
LABEL_18:

        goto LABEL_19;
      }

LABEL_14:

      goto LABEL_15;
    }

    v13 = 0;
  }

LABEL_19:

  return v13;
}

- (HKSortedQueryAnchor)initWithCoder:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v7 = [v5 setWithArray:v6];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"SortConstraints"];

  if (v8)
  {
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ObjectID"];
    v15.receiver = self;
    v15.super_class = HKSortedQueryAnchor;
    v10 = [(HKSortedQueryAnchor *)&v15 init];
    p_isa = &v10->super.isa;
    if (v10)
    {
      objc_storeStrong(&v10->_sortConstraints, v8);
      objc_storeStrong(p_isa + 1, v9);
    }

    self = p_isa;

    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  sortConstraints = self->_sortConstraints;
  v5 = a3;
  [v5 encodeObject:sortConstraints forKey:@"SortConstraints"];
  [v5 encodeObject:self->_objectID forKey:@"ObjectID"];
}

+ (void)sortedQueryAnchorWithSortDescriptors:(uint64_t)a1 objectID:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKSortedQueryAnchor.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"sortDescriptors"}];
}

+ (void)sortedQueryAnchorWithSortDescriptors:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKSortedQueryAnchor.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"sortDescriptors"}];
}

- (void)initWithSortConstraints:(uint64_t)a1 objectID:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKSortedQueryAnchor.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"sortConstraints"}];
}

@end