@interface HKSortedSampleArray
- (BOOL)insertSamples:(id)samples;
- (BOOL)removeSample:(id)sample;
- (BOOL)removeSampleAtIndex:(int64_t)index;
- (BOOL)removeSamplesWithUUIDs:(id)ds;
- (HKSortedSampleArray)init;
- (id)description;
- (void)_addResultsToUUIDMappingRemovingDuplicates:(id)duplicates;
- (void)removeAllSamples;
@end

@implementation HKSortedSampleArray

- (HKSortedSampleArray)init
{
  v8.receiver = self;
  v8.super_class = HKSortedSampleArray;
  v2 = [(HKSortedSampleArray *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    samples = v2->_samples;
    v2->_samples = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    samplesByUUID = v2->_samplesByUUID;
    v2->_samplesByUUID = v5;
  }

  return v2;
}

- (void)_addResultsToUUIDMappingRemovingDuplicates:(id)duplicates
{
  duplicatesCopy = duplicates;
  if ([duplicatesCopy count])
  {
    v4 = 0;
    do
    {
      v5 = [duplicatesCopy objectAtIndexedSubscript:v4];
      uUID = [v5 UUID];
      v7 = [(NSMutableDictionary *)self->_samplesByUUID objectForKeyedSubscript:uUID];

      if (v7)
      {
        [duplicatesCopy removeObjectAtIndex:v4];
      }

      else
      {
        [(NSMutableDictionary *)self->_samplesByUUID setObject:v5 forKeyedSubscript:uUID];
        ++v4;
      }
    }

    while (v4 < [duplicatesCopy count]);
  }
}

- (BOOL)insertSamples:(id)samples
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = [samples mutableCopy];
  v12[0] = self->_sortDescriptor;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  [v4 sortUsingDescriptors:v5];

  [(HKSortedSampleArray *)self _addResultsToUUIDMappingRemovingDuplicates:v4];
  v6 = [v4 count];
  if ([(NSMutableArray *)self->_samples count])
  {
    v7 = 0;
    do
    {
      if (![v4 count])
      {
        break;
      }

      v8 = [(NSMutableArray *)self->_samples objectAtIndexedSubscript:v7];
      firstObject = [v4 firstObject];
      if ([(NSSortDescriptor *)self->_sortDescriptor compareObject:firstObject toObject:v8]== NSOrderedAscending)
      {
        [(NSMutableArray *)self->_samples insertObject:firstObject atIndex:v7];
        [v4 removeObjectAtIndex:0];
      }

      ++v7;
    }

    while (v7 < [(NSMutableArray *)self->_samples count]);
  }

  if ([v4 count])
  {
    [(NSMutableArray *)self->_samples addObjectsFromArray:v4];
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6 != 0;
}

- (BOOL)removeSample:(id)sample
{
  v4 = [(NSMutableArray *)self->_samples indexOfObject:sample];

  return [(HKSortedSampleArray *)self removeSampleAtIndex:v4];
}

- (BOOL)removeSampleAtIndex:(int64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  if ([(HKSortedSampleArray *)self count]<= index)
  {
    return 0;
  }

  v6 = [(NSMutableArray *)self->_samples objectAtIndexedSubscript:index];
  samplesByUUID = self->_samplesByUUID;
  uUID = [v6 UUID];
  [(NSMutableDictionary *)samplesByUUID removeObjectForKey:uUID];

  [(NSMutableArray *)self->_samples removeObjectAtIndex:index];
  return 1;
}

- (BOOL)removeSamplesWithUUIDs:(id)ds
{
  v18 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [dsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(dsCopy);
        }

        v10 = [(NSMutableDictionary *)self->_samplesByUUID objectForKeyedSubscript:*(*(&v13 + 1) + 8 * i)];
        if (v10)
        {
          v7 |= [(HKSortedSampleArray *)self removeSample:v10];
        }
      }

      v6 = [dsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

- (void)removeAllSamples
{
  [(NSMutableArray *)self->_samples removeAllObjects];
  samplesByUUID = self->_samplesByUUID;

  [(NSMutableDictionary *)samplesByUUID removeAllObjects];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKSortedSampleArray;
  v4 = [(HKSortedSampleArray *)&v8 description];
  v5 = [(NSMutableArray *)self->_samples description];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end