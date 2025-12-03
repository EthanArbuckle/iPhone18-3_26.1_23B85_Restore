@interface HKIntegerSet
- (BOOL)containsInteger:(int64_t)integer;
- (BOOL)isEqual:(id)equal;
- (HKIntegerSet)initWithArray:(id)array;
- (HKIntegerSet)initWithCapacity:(unint64_t)capacity;
- (HKIntegerSet)initWithCoder:(id)coder;
- (HKIntegerSet)initWithIndex:(int64_t)index;
- (HKIntegerSet)initWithSet:(id)set;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)count;
- (unint64_t)hash;
- (void)count;
- (void)dealloc;
- (void)description;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateIntegersUsingBlock:(id)block;
@end

@implementation HKIntegerSet

- (HKIntegerSet)initWithCapacity:(unint64_t)capacity
{
  v9.receiver = self;
  v9.super_class = HKIntegerSet;
  v4 = [(HKIntegerSet *)&v9 init];
  if (v4 && (memset(&v8, 0, sizeof(v8)), v5 = CFSetCreateMutable(*MEMORY[0x1E695E480], capacity, &v8), (v4->_set = v5) == 0))
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

- (void)dealloc
{
  set = self->_set;
  if (set)
  {
    CFRelease(set);
  }

  v4.receiver = self;
  v4.super_class = HKIntegerSet;
  [(HKIntegerSet *)&v4 dealloc];
}

- (HKIntegerSet)initWithIndex:(int64_t)index
{
  v4 = [(HKIntegerSet *)self initWithCapacity:1];
  v5 = v4;
  if (v4)
  {
    CFSetAddValue(v4->_set, index);
  }

  return v5;
}

- (HKIntegerSet)initWithSet:(id)set
{
  v18 = *MEMORY[0x1E69E9840];
  setCopy = set;
  v5 = -[HKIntegerSet initWithCapacity:](self, "initWithCapacity:", [setCopy count]);
  if (v5)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = setCopy;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          CFSetAddValue(v5->_set, [*(*(&v13 + 1) + 8 * v10++) integerValue]);
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

- (HKIntegerSet)initWithArray:(id)array
{
  v18 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v5 = -[HKIntegerSet initWithCapacity:](self, "initWithCapacity:", [arrayCopy count]);
  if (v5)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = arrayCopy;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          CFSetAddValue(v5->_set, [*(*(&v13 + 1) + 8 * v10++) integerValue]);
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)description
{
  if (!self->_set)
  {
    [HKIntegerSet description];
  }

  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[HKIntegerSet count](self, "count")}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __27__HKIntegerSet_description__block_invoke;
  v11[3] = &unk_1E7380460;
  v12 = v3;
  v4 = v3;
  [(HKIntegerSet *)self enumerateIntegersUsingBlock:v11];
  v10.receiver = self;
  v10.super_class = HKIntegerSet;
  v5 = [(HKIntegerSet *)&v10 description];
  v6 = [(HKIntegerSet *)self count];
  v7 = [v4 componentsJoinedByString:{@", "}];
  v8 = [v5 stringByAppendingFormat:@" count %d: [%@]", v6, v7];

  return v8;
}

void __27__HKIntegerSet_description__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", a2];
  [v2 addObject:v3];
}

- (void)enumerateIntegersUsingBlock:(id)block
{
  blockCopy = block;
  set = self->_set;
  v6 = blockCopy;
  if (!set)
  {
    [HKIntegerSet enumerateIntegersUsingBlock:];
    blockCopy = v6;
    set = v7;
  }

  CFSetApplyFunction(set, HKIntegerSetEnumerateEntry, blockCopy);
}

- (BOOL)containsInteger:(int64_t)integer
{
  set = self->_set;
  if (!set)
  {
    [HKIntegerSet containsInteger:];
    set = v6;
  }

  return CFSetContainsValue(set, integer) != 0;
}

- (unint64_t)count
{
  set = self->_set;
  if (set)
  {
  }

  else
  {
    [HKIntegerSet count];
    set = theSet;
  }

  return CFSetGetCount(set);
}

- (unint64_t)hash
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __20__HKIntegerSet_hash__block_invoke;
  v4[3] = &unk_1E7379CB0;
  v4[4] = &v5;
  [(HKIntegerSet *)self enumerateIntegersUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = [v5 count];
    if (v6 == [(HKIntegerSet *)self count])
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 1;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __24__HKIntegerSet_isEqual___block_invoke;
      v9[3] = &unk_1E7383D78;
      v10 = v5;
      v11 = &v12;
      [(HKIntegerSet *)self enumerateIntegersUsingBlock:v9];
      v7 = *(v13 + 24);

      _Block_object_dispose(&v12, 8);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t __24__HKIntegerSet_isEqual___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) containsInteger:a2];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  set = self->_set;
  if (!set)
  {
    [HKIntegerSet copyWithZone:];
    set = v7;
  }

  v5 = [[HKIntegerSet alloc] initWithCapacity:CFSetGetCount(set)];
  if (v5)
  {
    CopySet(self, v5);
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  set = self->_set;
  if (!set)
  {
    [HKIntegerSet mutableCopyWithZone:];
    set = v7;
  }

  v5 = [[HKMutableIntegerSet alloc] initWithCapacity:CFSetGetCount(set)];
  if (v5)
  {
    CopySet(self, v5);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (!self->_set)
  {
    [HKIntegerSet encodeWithCoder:];
  }

  v5 = [(HKIntegerSet *)self count];
  v6 = malloc_type_calloc(v5, 8uLL, 0x100004000313F17uLL);
  if (v6)
  {
    v7 = v6;
    v8 = coderCopy;
    if (!v5)
    {
      goto LABEL_8;
    }

    CFSetGetValues(self->_set, v7);
    [coderCopy encodeArrayOfObjCType:"q" count:v5 at:v7];
    free(v7);
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKIntegerSet.m" lineNumber:195 description:{@"%@ falled to allocate space to encode %d items", v10, v5}];

    v5 = 0;
  }

  [coderCopy encodeInteger:v5 forKey:@"count"];
  v8 = coderCopy;
LABEL_8:
}

- (HKIntegerSet)initWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [coderCopy decodeIntegerForKey:@"count"];
  v7 = [(HKIntegerSet *)self initWithCapacity:v6];
  if (!v7)
  {
    goto LABEL_9;
  }

  if (v6)
  {
    v8 = malloc_type_calloc(v6, 8uLL, 0x100004000313F17uLL);
    if (v8)
    {
      v9 = v8;
      [coderCopy decodeArrayOfObjCType:"q" count:v6 at:v8];
      for (i = 0; i != v6; ++i)
      {
        CFSetAddValue(v7->_set, v9[i]);
      }

      free(v9);
      goto LABEL_7;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:v7 file:@"HKIntegerSet.m" lineNumber:228 description:{@"%@ falled to allocate space to decode %d items", v13, v6}];

LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

LABEL_7:
  v11 = v7;
LABEL_10:

  return v11;
}

- (void)description
{
  OUTLINED_FUNCTION_0_0();
  [MEMORY[0x1E696AAA8] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_6_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8();
  [OUTLINED_FUNCTION_2_10(v2 v3];
}

- (void)enumerateIntegersUsingBlock:.cold.1()
{
  OUTLINED_FUNCTION_0_28();
  [MEMORY[0x1E696AAA8] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_5_0();
  NSStringFromSelector(v2);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4_4();
  [OUTLINED_FUNCTION_1_14() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  OUTLINED_FUNCTION_3_6();
}

- (void)containsInteger:.cold.1()
{
  OUTLINED_FUNCTION_0_28();
  [MEMORY[0x1E696AAA8] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_5_0();
  NSStringFromSelector(v2);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4_4();
  [OUTLINED_FUNCTION_1_14() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  OUTLINED_FUNCTION_3_6();
}

- (void)count
{
  OUTLINED_FUNCTION_0_28();
  [MEMORY[0x1E696AAA8] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_5_0();
  NSStringFromSelector(v2);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4_4();
  [OUTLINED_FUNCTION_1_14() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  OUTLINED_FUNCTION_3_6();
}

- (void)copyWithZone:.cold.1()
{
  OUTLINED_FUNCTION_0_28();
  [MEMORY[0x1E696AAA8] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_5_0();
  NSStringFromSelector(v2);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4_4();
  [OUTLINED_FUNCTION_1_14() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  OUTLINED_FUNCTION_3_6();
}

- (void)mutableCopyWithZone:.cold.1()
{
  OUTLINED_FUNCTION_0_28();
  [MEMORY[0x1E696AAA8] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_5_0();
  NSStringFromSelector(v2);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4_4();
  [OUTLINED_FUNCTION_1_14() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  OUTLINED_FUNCTION_3_6();
}

- (void)encodeWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  [MEMORY[0x1E696AAA8] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_6_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8();
  [OUTLINED_FUNCTION_2_10(v2 v3];
}

@end