@interface ATXModeEntityAffinityVector
+ (id)centroid:(id)centroid;
+ (id)weightedCentroid:(id)centroid;
- (ATXModeEntityAffinityVector)initWithAffinities:(id)affinities shouldResize:(BOOL)resize;
- (BOOL)isZeroVector;
- (double)magnitude;
- (double)scoreForMode:(unint64_t)mode;
- (id)_initWithAffinityVector:(id)vector;
- (id)description;
- (id)prettyDescription;
- (id)sortedAffinities;
- (void)resizeToUnit;
@end

@implementation ATXModeEntityAffinityVector

- (id)_initWithAffinityVector:(id)vector
{
  vectorCopy = vector;
  v9.receiver = self;
  v9.super_class = ATXModeEntityAffinityVector;
  v6 = [(ATXModeEntityAffinityVector *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_affinityVector, vector);
  }

  return v7;
}

- (ATXModeEntityAffinityVector)initWithAffinities:(id)affinities shouldResize:(BOOL)resize
{
  resizeCopy = resize;
  v28 = *MEMORY[0x277D85DE8];
  affinitiesCopy = affinities;
  v26.receiver = self;
  v26.super_class = ATXModeEntityAffinityVector;
  v7 = [(ATXModeEntityAffinityVector *)&v26 init];
  if (v7)
  {
    v8 = 16;
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:16];
    do
    {
      [(NSArray *)v9 addObject:&unk_283A57410];
      --v8;
    }

    while (v8);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = affinitiesCopy;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        v14 = 0;
        do
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * v14);
          v16 = ATXStringToMode();
          if (v16 <= 0xF)
          {
            v17 = v16;
            v18 = [v10 objectForKeyedSubscript:{v15, v22}];
            [(NSArray *)v9 setObject:v18 atIndexedSubscript:v17];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v12);
    }

    affinityVector = v7->_affinityVector;
    v7->_affinityVector = v9;

    if (resizeCopy)
    {
      [(ATXModeEntityAffinityVector *)v7 resizeToUnit];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)description
{
  v2 = [(NSArray *)self->_affinityVector _pas_mappedArrayWithTransform:&__block_literal_global_207];
  v3 = MEMORY[0x277CCACA8];
  v4 = [v2 componentsJoinedByString:{@", "}];
  v5 = [v3 stringWithFormat:@"<%@>", v4];

  return v5;
}

- (id)prettyDescription
{
  sortedAffinities = [(ATXModeEntityAffinityVector *)self sortedAffinities];
  v3 = [sortedAffinities _pas_mappedArrayWithTransform:&__block_literal_global_15_0];
  v4 = [v3 componentsJoinedByString:{@", "}];

  return v4;
}

id __48__ATXModeEntityAffinityVector_prettyDescription__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v3 second];
  v5 = [v3 first];

  [v5 doubleValue];
  v7 = [v2 stringWithFormat:@"%@: %f", v4, v6];

  return v7;
}

- (id)sortedAffinities
{
  v2 = [(NSArray *)self->_affinityVector _pas_mappedArrayWithIndexedTransform:&__block_literal_global_21_4];
  v3 = [v2 sortedArrayUsingComparator:&__block_literal_global_25_8];

  return v3;
}

id __47__ATXModeEntityAffinityVector_sortedAffinities__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 doubleValue];
  if (v3 >= 0.0001)
  {
    v5 = MEMORY[0x277D42648];
    v6 = ATXModeToString();
    v4 = [v5 tupleWithFirst:v2 second:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __47__ATXModeEntityAffinityVector_sortedAffinities__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 first];
  v6 = [v4 first];

  v7 = [v5 compare:v6];
  return v7;
}

- (double)scoreForMode:(unint64_t)mode
{
  if (mode > 0xF)
  {
    return 0.0;
  }

  v4 = [(NSArray *)self->_affinityVector objectAtIndexedSubscript:?];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (double)magnitude
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_affinityVector;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v11 + 1) + 8 * i) doubleValue];
        v6 = v6 + v8 * v8;
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  result = fabs(sqrt(v6));
  if (v6 == -INFINITY)
  {
    result = INFINITY;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isZeroVector
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_affinityVector;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v11 + 1) + 8 * i) doubleValue];
        if (v7 < 0.0)
        {
          v7 = -v7;
        }

        if (v7 > 0.0001)
        {
          v8 = 0;
          goto LABEL_13;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_13:

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)resizeToUnit
{
  if (![(ATXModeEntityAffinityVector *)self isZeroVector])
  {
    [(ATXModeEntityAffinityVector *)self magnitude];
    affinityVector = self->_affinityVector;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __43__ATXModeEntityAffinityVector_resizeToUnit__block_invoke;
    v7[3] = &__block_descriptor_40_e18__16__0__NSNumber_8l;
    v7[4] = v4;
    v5 = [(NSArray *)affinityVector _pas_mappedArrayWithTransform:v7];
    v6 = self->_affinityVector;
    self->_affinityVector = v5;
  }
}

uint64_t __43__ATXModeEntityAffinityVector_resizeToUnit__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCABB0];
  [a2 doubleValue];
  v5 = v4 / *(a1 + 32);

  return [v3 numberWithDouble:v5];
}

+ (id)centroid:(id)centroid
{
  v4 = [centroid _pas_mappedArrayWithTransform:&__block_literal_global_30];
  v5 = [self weightedCentroid:v4];

  return v5;
}

+ (id)weightedCentroid:(id)centroid
{
  v48 = *MEMORY[0x277D85DE8];
  centroidCopy = centroid;
  if (![centroidCopy count])
  {
    v37 = objc_opt_new();
    goto LABEL_24;
  }

  v5 = [centroidCopy objectAtIndexedSubscript:0];
  first = [v5 first];
  affinityVector = [first affinityVector];
  v8 = [affinityVector count];

  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v8];
  if (v8)
  {
    v10 = v8;
    do
    {
      [v9 addObject:&unk_283A57410];
      --v10;
    }

    while (v10);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v11 = centroidCopy;
  v12 = [v11 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v12)
  {
    v13 = v12;
    selfCopy = self;
    v41 = centroidCopy;
    v14 = *v44;
    v15 = 0.0;
    obj = v11;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v44 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v43 + 1) + 8 * i);
        first2 = [v17 first];
        affinityVector2 = [first2 affinityVector];

        second = [v17 second];
        [second doubleValue];
        v22 = v21;

        if (v8)
        {
          for (j = 0; j != v8; ++j)
          {
            v24 = [affinityVector2 objectAtIndexedSubscript:j];
            [v24 doubleValue];
            v26 = v22 * v25;

            v27 = MEMORY[0x277CCABB0];
            v28 = [v9 objectAtIndexedSubscript:j];
            [v28 doubleValue];
            v30 = [v27 numberWithDouble:v26 + v29];
            [v9 setObject:v30 atIndexedSubscript:j];
          }
        }

        v15 = v15 + v22;
      }

      v13 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v13);

    centroidCopy = v41;
    if (v15 >= 0.0001)
    {
      if (v8)
      {
        for (k = 0; k != v8; ++k)
        {
          v32 = MEMORY[0x277CCABB0];
          v33 = [v9 objectAtIndexedSubscript:k];
          [v33 doubleValue];
          v35 = [v32 numberWithDouble:v34 / v15];
          [v9 setObject:v35 atIndexedSubscript:k];
        }
      }

      v36 = [[selfCopy alloc] _initWithAffinityVector:v9];
      goto LABEL_23;
    }
  }

  else
  {
  }

  v36 = objc_opt_new();
LABEL_23:
  v37 = v36;

LABEL_24:
  v38 = *MEMORY[0x277D85DE8];

  return v37;
}

@end