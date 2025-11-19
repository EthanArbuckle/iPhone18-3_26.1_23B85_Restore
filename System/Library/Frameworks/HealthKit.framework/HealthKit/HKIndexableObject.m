@interface HKIndexableObject
+ (id)indexableObjectWithObject:(id)a3;
+ (id)indexableObjectWithObject:(id)a3 compoundIndex:(unint64_t)a4;
+ (id)indexableObjectsByApplyingOutermostIndex:(id)a3 expectedCount:(int64_t)a4 error:(id *)a5;
- (HKIndexableObject)init;
- (HKIndexableObject)initWithObject:(id)a3 compoundIndex:(unint64_t)a4;
- (id)indexableObjectCollectingPushingIndex:(unsigned __int8)a3 error:(id *)a4;
- (id)indexableObjectPoppingIndexWithError:(id *)a3;
@end

@implementation HKIndexableObject

- (HKIndexableObject)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (id)indexableObjectWithObject:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithObject:v4 compoundIndex:0];

  return v5;
}

+ (id)indexableObjectWithObject:(id)a3 compoundIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithObject:v6 compoundIndex:a4];

  return v7;
}

- (HKIndexableObject)initWithObject:(id)a3 compoundIndex:(unint64_t)a4
{
  v7 = a3;
  if (!v7)
  {
    [HKIndexableObject initWithObject:a2 compoundIndex:self];
  }

  v12.receiver = self;
  v12.super_class = HKIndexableObject;
  v8 = [(HKIndexableObject *)&v12 init];
  if (v8)
  {
    v9 = [v7 copy];
    object = v8->_object;
    v8->_object = v9;

    v8->_compoundIndex = a4;
  }

  return v8;
}

- (id)indexableObjectPoppingIndexWithError:(id *)a3
{
  if ((self->_compoundIndex & 0x80) != 0)
  {
    v3 = [objc_alloc(objc_opt_class()) initWithObject:self->_object compoundIndex:self->_compoundIndex >> 8];
  }

  else
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a3 code:3 format:@"Failed to create a new indexable object by popping index; no outermost index"];
    v3 = 0;
  }

  return v3;
}

- (id)indexableObjectCollectingPushingIndex:(unsigned __int8)a3 error:(id *)a4
{
  if ((self->_compoundIndex & 0x8000000000000000) != 0)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a4 code:3 format:@"Failed to create a new indexable object by pushing index; already full"];
    v4 = 0;
  }

  else
  {
    v4 = [objc_alloc(objc_opt_class()) initWithObject:self->_object compoundIndex:a3 | 0x80u | (self->_compoundIndex << 8)];
  }

  return v4;
}

+ (id)indexableObjectsByApplyingOutermostIndex:(id)a3 expectedCount:(int64_t)a4 error:(id *)a5
{
  v7 = a3;
  if ([v7 count] && (objc_msgSend(v7, "lastObject"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "outermostIndex"), v8, v9 >= a4))
  {
    v19 = MEMORY[0x1E696ABC0];
    v10 = [v7 lastObject];
    [v19 hk_assignError:a5 code:3 format:{@"Attempt to partition index with an expected count of %ld and a maximum index of %d", a4, objc_msgSend(v10, "outermostIndex")}];
    v18 = 0;
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = [v7 mutableCopy];
    if (a4 >= 1)
    {
      v12 = 0;
      while (2)
      {
        v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
        while ([v11 count])
        {
          v14 = [v11 firstObject];
          v15 = [v14 outermostIndex];

          if (v12 < v15)
          {
            break;
          }

          v16 = [v11 firstObject];
          v17 = [v16 indexableObjectPoppingIndexWithError:a5];

          if (!v17)
          {

            v18 = 0;
            goto LABEL_13;
          }

          [v13 addObject:v17];
          [v11 removeObjectAtIndex:0];
        }

        [v10 addObject:v13];

        if (++v12 != a4)
        {
          continue;
        }

        break;
      }
    }

    v18 = [v10 copy];
LABEL_13:
  }

  return v18;
}

- (void)initWithObject:(uint64_t)a1 compoundIndex:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKIndexableObject.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"object"}];
}

@end