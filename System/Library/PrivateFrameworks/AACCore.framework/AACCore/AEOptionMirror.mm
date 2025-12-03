@interface AEOptionMirror
+ (id)flippedOptionMapWithMap:(uint64_t)map;
+ (uint64_t)clearMaskWithNumbers:(uint64_t)numbers;
+ (uint64_t)destinationOptionsFromSource:(void *)source destinationOptionsBySource:;
- (AEOptionMirror)initWithMirroredOptions:(id)options;
- (int64_t)leftClearMask;
- (int64_t)leftOptionsFromRight:(int64_t)right;
- (int64_t)rightClearMask;
- (int64_t)rightOptionsFromLeft:(int64_t)left;
@end

@implementation AEOptionMirror

- (AEOptionMirror)initWithMirroredOptions:(id)options
{
  optionsCopy = options;
  v11.receiver = self;
  v11.super_class = AEOptionMirror;
  v5 = [(AEOptionMirror *)&v11 init];
  if (v5)
  {
    v6 = [optionsCopy copy];
    rightOptionsByLeft = v5->_rightOptionsByLeft;
    v5->_rightOptionsByLeft = v6;

    v8 = [AEOptionMirror flippedOptionMapWithMap:optionsCopy];
    leftOptionsByRight = v5->_leftOptionsByRight;
    v5->_leftOptionsByRight = v8;
  }

  return v5;
}

+ (id)flippedOptionMapWithMap:(uint64_t)map
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_opt_new();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__AEOptionMirror_flippedOptionMapWithMap___block_invoke;
  v6[3] = &unk_278BB70E0;
  v6[4] = v3;
  [v2 enumerateKeysAndObjectsUsingBlock:v6];

  v4 = [v3 copy];

  return v4;
}

+ (uint64_t)destinationOptionsFromSource:(void *)source destinationOptionsBySource:
{
  sourceCopy = source;
  objc_opt_self();
  if (a2 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 1;
    do
    {
      if ((a2 & v6) != 0)
      {
        v7 = [MEMORY[0x277CCABB0] numberWithInteger:a2 & v6];
        v8 = [sourceCopy objectForKeyedSubscript:v7];
        v5 |= [v8 integerValue];
      }

      a2 &= ~v6;
      v6 *= 2;
    }

    while (a2);
  }

  return v5;
}

+ (uint64_t)clearMaskWithNumbers:(uint64_t)numbers
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_self();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 |= [*(*(&v12 + 1) + 8 * v8++) integerValue];
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
    v9 = ~v6;
  }

  else
  {
    v9 = -1;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (int64_t)leftOptionsFromRight:(int64_t)right
{
  if (self)
  {
    return [AEOptionMirror destinationOptionsFromSource:right destinationOptionsBySource:self->_leftOptionsByRight];
  }

  else
  {
    return OUTLINED_FUNCTION_0_2(AEOptionMirror, right);
  }
}

- (int64_t)rightOptionsFromLeft:(int64_t)left
{
  if (self)
  {
    return [AEOptionMirror destinationOptionsFromSource:left destinationOptionsBySource:self->_rightOptionsByLeft];
  }

  else
  {
    return OUTLINED_FUNCTION_0_2(AEOptionMirror, left);
  }
}

- (int64_t)leftClearMask
{
  if (self)
  {
    self = self->_leftOptionsByRight;
  }

  allValues = [(AEOptionMirror *)self allValues];
  v3 = [AEOptionMirror clearMaskWithNumbers:allValues];

  return v3;
}

- (int64_t)rightClearMask
{
  if (self)
  {
    self = self->_rightOptionsByLeft;
  }

  allValues = [(AEOptionMirror *)self allValues];
  v3 = [AEOptionMirror clearMaskWithNumbers:allValues];

  return v3;
}

@end