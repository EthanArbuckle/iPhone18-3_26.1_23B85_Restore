@interface HKSortedQueryAnchor
+ (id)sortConstraintsWithSortDescriptors:(id)descriptors sample:(id)sample;
+ (id)sortedQueryAnchorRelaxingConstraintsWithAnchor:(id)anchor error:(id *)error;
+ (id)sortedQueryAnchorWithSortDescriptors:(id)descriptors;
+ (id)sortedQueryAnchorWithSortDescriptors:(id)descriptors followingSample:(id)sample objectID:(int64_t)d;
+ (id)sortedQueryAnchorWithSortDescriptors:(id)descriptors includingSample:(id)sample objectID:(int64_t)d;
+ (id)sortedQueryAnchorWithSortDescriptors:(id)descriptors objectID:(int64_t)d;
- (BOOL)canRelax;
- (BOOL)isCompatibleWithSortDescriptors:(id)descriptors;
- (BOOL)isEqual:(id)equal;
- (HKSortedQueryAnchor)init;
- (HKSortedQueryAnchor)initWithCoder:(id)coder;
- (HKSortedQueryAnchor)initWithSortConstraints:(id)constraints objectID:(id)d;
- (id)predicate;
- (id)querySortDescriptors;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSortedQueryAnchor

+ (id)sortedQueryAnchorWithSortDescriptors:(id)descriptors objectID:(int64_t)d
{
  descriptorsCopy = descriptors;
  if (!descriptorsCopy)
  {
    [HKSortedQueryAnchor sortedQueryAnchorWithSortDescriptors:a2 objectID:self];
  }

  v8 = [descriptorsCopy hk_map:&__block_literal_global_112];
  v9 = [self alloc];
  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
  v11 = [v9 initWithSortConstraints:v8 objectID:v10];

  return v11;
}

+ (id)sortedQueryAnchorWithSortDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  if (!descriptorsCopy)
  {
    [(HKSortedQueryAnchor *)a2 sortedQueryAnchorWithSortDescriptors:self];
  }

  v6 = [descriptorsCopy hk_map:&__block_literal_global_17_0];
  v7 = [[self alloc] initWithSortConstraints:v6 objectID:0];

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

- (HKSortedQueryAnchor)initWithSortConstraints:(id)constraints objectID:(id)d
{
  constraintsCopy = constraints;
  dCopy = d;
  if (!constraintsCopy)
  {
    [HKSortedQueryAnchor initWithSortConstraints:a2 objectID:self];
  }

  v15.receiver = self;
  v15.super_class = HKSortedQueryAnchor;
  v9 = [(HKSortedQueryAnchor *)&v15 init];
  if (v9)
  {
    v10 = [constraintsCopy copy];
    sortConstraints = v9->_sortConstraints;
    v9->_sortConstraints = v10;

    v12 = [dCopy copy];
    objectID = v9->_objectID;
    v9->_objectID = v12;
  }

  return v9;
}

+ (id)sortConstraintsWithSortDescriptors:(id)descriptors sample:(id)sample
{
  sampleCopy = sample;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__HKSortedQueryAnchor_sortConstraintsWithSortDescriptors_sample___block_invoke;
  v9[3] = &unk_1E7383940;
  v10 = sampleCopy;
  v6 = sampleCopy;
  v7 = [descriptors hk_map:v9];

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

+ (id)sortedQueryAnchorWithSortDescriptors:(id)descriptors includingSample:(id)sample objectID:(int64_t)d
{
  sampleCopy = sample;
  descriptorsCopy = descriptors;
  v10 = [objc_opt_class() sortConstraintsWithSortDescriptors:descriptorsCopy sample:sampleCopy];

  v11 = [self alloc];
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  v13 = [MEMORY[0x1E696AD98] numberWithLongLong:d - 1];
  v14 = [v11 initWithSortConstraints:v12 objectID:v13];

  return v14;
}

+ (id)sortedQueryAnchorWithSortDescriptors:(id)descriptors followingSample:(id)sample objectID:(int64_t)d
{
  sampleCopy = sample;
  descriptorsCopy = descriptors;
  v10 = [objc_opt_class() sortConstraintsWithSortDescriptors:descriptorsCopy sample:sampleCopy];

  v11 = [self alloc];
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  v13 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
  v14 = [v11 initWithSortConstraints:v12 objectID:v13];

  return v14;
}

+ (id)sortedQueryAnchorRelaxingConstraintsWithAnchor:(id)anchor error:(id *)error
{
  anchorCopy = anchor;
  sortConstraints = [anchorCopy sortConstraints];
  hk_reversed = [sortConstraints hk_reversed];

  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 1;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__HKSortedQueryAnchor_sortedQueryAnchorRelaxingConstraintsWithAnchor_error___block_invoke;
  v15[3] = &unk_1E7383968;
  v15[4] = v16;
  v9 = [hk_reversed hk_map:v15 error:error];
  hk_reversed2 = [v9 hk_reversed];

  if (hk_reversed2)
  {
    v11 = [hk_reversed2 hk_filter:&__block_literal_global_29_1];
    v12 = [v11 count];

    if (v12 > 0)
    {
      v13 = [[self alloc] initWithSortConstraints:hk_reversed2 objectID:0];
      goto LABEL_6;
    }

    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:@"Unable to relax query anchor"];
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
  sortConstraints = [(HKSortedQueryAnchor *)self sortConstraints];
  v3 = [sortConstraints hk_map:&__block_literal_global_36];
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"HKObjectSortIdentifierDataID" ascending:1];
  v5 = [v3 arrayByAddingObject:v4];

  return v5;
}

- (id)predicate
{
  sortConstraints = [(HKSortedQueryAnchor *)self sortConstraints];
  v3 = [sortConstraints hk_map:&__block_literal_global_39_0];

  v4 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v3];

  return v4;
}

- (BOOL)isCompatibleWithSortDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  sortConstraints = [(HKSortedQueryAnchor *)self sortConstraints];
  v6 = [sortConstraints hk_map:&__block_literal_global_42_0];
  v7 = [v6 isEqualToArray:descriptorsCopy];

  return v7;
}

- (BOOL)canRelax
{
  sortConstraints = [(HKSortedQueryAnchor *)self sortConstraints];
  v4 = [sortConstraints hk_filter:&__block_literal_global_44_1];
  v5 = [v4 count];

  objectID = [(HKSortedQueryAnchor *)self objectID];

  if (objectID)
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
  sortConstraints = [(HKSortedQueryAnchor *)self sortConstraints];
  v4 = [sortConstraints hash];
  objectID = [(HKSortedQueryAnchor *)self objectID];
  v6 = [objectID hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      sortConstraints = self->_sortConstraints;
      sortConstraints = [(HKSortedQueryAnchor *)v5 sortConstraints];
      v8 = sortConstraints;
      if (sortConstraints == sortConstraints)
      {
      }

      else
      {
        sortConstraints2 = [(HKSortedQueryAnchor *)v5 sortConstraints];
        if (!sortConstraints2)
        {
          goto LABEL_14;
        }

        v10 = sortConstraints2;
        v11 = self->_sortConstraints;
        sortConstraints3 = [(HKSortedQueryAnchor *)v5 sortConstraints];
        LODWORD(v11) = [(NSArray *)v11 isEqual:sortConstraints3];

        if (!v11)
        {
          goto LABEL_15;
        }
      }

      objectID = self->_objectID;
      objectID = [(HKSortedQueryAnchor *)v5 objectID];
      v8 = objectID;
      if (objectID == objectID)
      {

LABEL_17:
        v13 = 1;
        goto LABEL_18;
      }

      objectID2 = [(HKSortedQueryAnchor *)v5 objectID];
      if (objectID2)
      {
        v17 = objectID2;
        v18 = self->_objectID;
        objectID3 = [(HKSortedQueryAnchor *)v5 objectID];
        LOBYTE(v18) = [(NSNumber *)v18 isEqual:objectID3];

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

- (HKSortedQueryAnchor)initWithCoder:(id)coder
{
  v16[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = MEMORY[0x1E695DFD8];
  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v7 = [v5 setWithArray:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"SortConstraints"];

  if (v8)
  {
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ObjectID"];
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

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  sortConstraints = self->_sortConstraints;
  coderCopy = coder;
  [coderCopy encodeObject:sortConstraints forKey:@"SortConstraints"];
  [coderCopy encodeObject:self->_objectID forKey:@"ObjectID"];
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