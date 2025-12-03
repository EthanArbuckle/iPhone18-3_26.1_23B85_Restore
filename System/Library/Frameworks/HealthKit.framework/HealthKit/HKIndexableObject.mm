@interface HKIndexableObject
+ (id)indexableObjectWithObject:(id)object;
+ (id)indexableObjectWithObject:(id)object compoundIndex:(unint64_t)index;
+ (id)indexableObjectsByApplyingOutermostIndex:(id)index expectedCount:(int64_t)count error:(id *)error;
- (HKIndexableObject)init;
- (HKIndexableObject)initWithObject:(id)object compoundIndex:(unint64_t)index;
- (id)indexableObjectCollectingPushingIndex:(unsigned __int8)index error:(id *)error;
- (id)indexableObjectPoppingIndexWithError:(id *)error;
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

+ (id)indexableObjectWithObject:(id)object
{
  objectCopy = object;
  v5 = [[self alloc] initWithObject:objectCopy compoundIndex:0];

  return v5;
}

+ (id)indexableObjectWithObject:(id)object compoundIndex:(unint64_t)index
{
  objectCopy = object;
  v7 = [[self alloc] initWithObject:objectCopy compoundIndex:index];

  return v7;
}

- (HKIndexableObject)initWithObject:(id)object compoundIndex:(unint64_t)index
{
  objectCopy = object;
  if (!objectCopy)
  {
    [HKIndexableObject initWithObject:a2 compoundIndex:self];
  }

  v12.receiver = self;
  v12.super_class = HKIndexableObject;
  v8 = [(HKIndexableObject *)&v12 init];
  if (v8)
  {
    v9 = [objectCopy copy];
    object = v8->_object;
    v8->_object = v9;

    v8->_compoundIndex = index;
  }

  return v8;
}

- (id)indexableObjectPoppingIndexWithError:(id *)error
{
  if ((self->_compoundIndex & 0x80) != 0)
  {
    v3 = [objc_alloc(objc_opt_class()) initWithObject:self->_object compoundIndex:self->_compoundIndex >> 8];
  }

  else
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:@"Failed to create a new indexable object by popping index; no outermost index"];
    v3 = 0;
  }

  return v3;
}

- (id)indexableObjectCollectingPushingIndex:(unsigned __int8)index error:(id *)error
{
  if ((self->_compoundIndex & 0x8000000000000000) != 0)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:@"Failed to create a new indexable object by pushing index; already full"];
    v4 = 0;
  }

  else
  {
    v4 = [objc_alloc(objc_opt_class()) initWithObject:self->_object compoundIndex:index | 0x80u | (self->_compoundIndex << 8)];
  }

  return v4;
}

+ (id)indexableObjectsByApplyingOutermostIndex:(id)index expectedCount:(int64_t)count error:(id *)error
{
  indexCopy = index;
  if ([indexCopy count] && (objc_msgSend(indexCopy, "lastObject"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "outermostIndex"), v8, v9 >= count))
  {
    v19 = MEMORY[0x1E696ABC0];
    lastObject = [indexCopy lastObject];
    [v19 hk_assignError:error code:3 format:{@"Attempt to partition index with an expected count of %ld and a maximum index of %d", count, objc_msgSend(lastObject, "outermostIndex")}];
    v18 = 0;
  }

  else
  {
    lastObject = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = [indexCopy mutableCopy];
    if (count >= 1)
    {
      v12 = 0;
      while (2)
      {
        v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
        while ([v11 count])
        {
          firstObject = [v11 firstObject];
          outermostIndex = [firstObject outermostIndex];

          if (v12 < outermostIndex)
          {
            break;
          }

          firstObject2 = [v11 firstObject];
          v17 = [firstObject2 indexableObjectPoppingIndexWithError:error];

          if (!v17)
          {

            v18 = 0;
            goto LABEL_13;
          }

          [v13 addObject:v17];
          [v11 removeObjectAtIndex:0];
        }

        [lastObject addObject:v13];

        if (++v12 != count)
        {
          continue;
        }

        break;
      }
    }

    v18 = [lastObject copy];
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