@interface ASDAggregateClusterMappingData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)clusterAppCountAtIndex:(unint64_t)index;
- (int)clusterIDAtIndex:(unint64_t)index;
- (int)clusterVersionAtIndex:(unint64_t)index;
- (int)weightedAppForgroundUsageAtIndex:(unint64_t)index;
- (int)weightedAppLaunchesAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ASDAggregateClusterMappingData

- (void)dealloc
{
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = ASDAggregateClusterMappingData;
  [(ASDAggregateClusterMappingData *)&v3 dealloc];
}

- (int)clusterIDAtIndex:(unint64_t)index
{
  p_clusterIDs = &self->_clusterIDs;
  count = self->_clusterIDs.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_clusterIDs->list[index];
}

- (int)clusterVersionAtIndex:(unint64_t)index
{
  p_clusterVersions = &self->_clusterVersions;
  count = self->_clusterVersions.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_clusterVersions->list[index];
}

- (int)clusterAppCountAtIndex:(unint64_t)index
{
  p_clusterAppCounts = &self->_clusterAppCounts;
  count = self->_clusterAppCounts.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_clusterAppCounts->list[index];
}

- (int)weightedAppLaunchesAtIndex:(unint64_t)index
{
  p_weightedAppLaunches = &self->_weightedAppLaunches;
  count = self->_weightedAppLaunches.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_weightedAppLaunches->list[index];
}

- (int)weightedAppForgroundUsageAtIndex:(unint64_t)index
{
  p_weightedAppForgroundUsages = &self->_weightedAppForgroundUsages;
  count = self->_weightedAppForgroundUsages.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_weightedAppForgroundUsages->list[index];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ASDAggregateClusterMappingData;
  v4 = [(ASDAggregateClusterMappingData *)&v8 description];
  dictionaryRepresentation = [(ASDAggregateClusterMappingData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_encodingVersion];
  [dictionary setObject:v4 forKey:@"encodingVersion"];

  v5 = PBRepeatedInt32NSArray();
  [dictionary setObject:v5 forKey:@"clusterID"];

  v6 = PBRepeatedInt32NSArray();
  [dictionary setObject:v6 forKey:@"clusterVersion"];

  v7 = PBRepeatedInt32NSArray();
  [dictionary setObject:v7 forKey:@"clusterAppCount"];

  v8 = PBRepeatedInt32NSArray();
  [dictionary setObject:v8 forKey:@"weightedAppLaunches"];

  v9 = PBRepeatedInt32NSArray();
  [dictionary setObject:v9 forKey:@"weightedAppForgroundUsage"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  encodingVersion = self->_encodingVersion;
  PBDataWriterWriteInt32Field();
  if (self->_clusterIDs.count)
  {
    PBDataWriterPlaceMark();
    if (self->_clusterIDs.count)
    {
      v6 = 0;
      do
      {
        v7 = self->_clusterIDs.list[v6];
        PBDataWriterWriteInt32Field();
        ++v6;
      }

      while (v6 < self->_clusterIDs.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_clusterVersions.count)
  {
    PBDataWriterPlaceMark();
    if (self->_clusterVersions.count)
    {
      v8 = 0;
      do
      {
        v9 = self->_clusterVersions.list[v8];
        PBDataWriterWriteInt32Field();
        ++v8;
      }

      while (v8 < self->_clusterVersions.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_clusterAppCounts.count)
  {
    PBDataWriterPlaceMark();
    if (self->_clusterAppCounts.count)
    {
      v10 = 0;
      do
      {
        v11 = self->_clusterAppCounts.list[v10];
        PBDataWriterWriteInt32Field();
        ++v10;
      }

      while (v10 < self->_clusterAppCounts.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_weightedAppLaunches.count)
  {
    PBDataWriterPlaceMark();
    if (self->_weightedAppLaunches.count)
    {
      v12 = 0;
      do
      {
        v13 = self->_weightedAppLaunches.list[v12];
        PBDataWriterWriteInt32Field();
        ++v12;
      }

      while (v12 < self->_weightedAppLaunches.count);
    }

    PBDataWriterRecallMark();
  }

  p_weightedAppForgroundUsages = &self->_weightedAppForgroundUsages;
  if (p_weightedAppForgroundUsages->count)
  {
    PBDataWriterPlaceMark();
    if (p_weightedAppForgroundUsages->count)
    {
      v15 = 0;
      do
      {
        v16 = p_weightedAppForgroundUsages->list[v15];
        PBDataWriterWriteInt32Field();
        ++v15;
      }

      while (v15 < p_weightedAppForgroundUsages->count);
    }

    PBDataWriterRecallMark();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[32] = self->_encodingVersion;
  if ([(ASDAggregateClusterMappingData *)self clusterIDsCount])
  {
    [toCopy clearClusterIDs];
    clusterIDsCount = [(ASDAggregateClusterMappingData *)self clusterIDsCount];
    if (clusterIDsCount)
    {
      v5 = clusterIDsCount;
      for (i = 0; i != v5; ++i)
      {
        [toCopy addClusterID:{-[ASDAggregateClusterMappingData clusterIDAtIndex:](self, "clusterIDAtIndex:", i)}];
      }
    }
  }

  if ([(ASDAggregateClusterMappingData *)self clusterVersionsCount])
  {
    [toCopy clearClusterVersions];
    clusterVersionsCount = [(ASDAggregateClusterMappingData *)self clusterVersionsCount];
    if (clusterVersionsCount)
    {
      v8 = clusterVersionsCount;
      for (j = 0; j != v8; ++j)
      {
        [toCopy addClusterVersion:{-[ASDAggregateClusterMappingData clusterVersionAtIndex:](self, "clusterVersionAtIndex:", j)}];
      }
    }
  }

  if ([(ASDAggregateClusterMappingData *)self clusterAppCountsCount])
  {
    [toCopy clearClusterAppCounts];
    clusterAppCountsCount = [(ASDAggregateClusterMappingData *)self clusterAppCountsCount];
    if (clusterAppCountsCount)
    {
      v11 = clusterAppCountsCount;
      for (k = 0; k != v11; ++k)
      {
        [toCopy addClusterAppCount:{-[ASDAggregateClusterMappingData clusterAppCountAtIndex:](self, "clusterAppCountAtIndex:", k)}];
      }
    }
  }

  if ([(ASDAggregateClusterMappingData *)self weightedAppLaunchesCount])
  {
    [toCopy clearWeightedAppLaunches];
    weightedAppLaunchesCount = [(ASDAggregateClusterMappingData *)self weightedAppLaunchesCount];
    if (weightedAppLaunchesCount)
    {
      v14 = weightedAppLaunchesCount;
      for (m = 0; m != v14; ++m)
      {
        [toCopy addWeightedAppLaunches:{-[ASDAggregateClusterMappingData weightedAppLaunchesAtIndex:](self, "weightedAppLaunchesAtIndex:", m)}];
      }
    }
  }

  if ([(ASDAggregateClusterMappingData *)self weightedAppForgroundUsagesCount])
  {
    [toCopy clearWeightedAppForgroundUsages];
    weightedAppForgroundUsagesCount = [(ASDAggregateClusterMappingData *)self weightedAppForgroundUsagesCount];
    if (weightedAppForgroundUsagesCount)
    {
      v17 = weightedAppForgroundUsagesCount;
      for (n = 0; n != v17; ++n)
      {
        [toCopy addWeightedAppForgroundUsage:{-[ASDAggregateClusterMappingData weightedAppForgroundUsageAtIndex:](self, "weightedAppForgroundUsageAtIndex:", n)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v4[32] = self->_encodingVersion;
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_encodingVersion == equalCopy[32] && PBRepeatedInt32IsEqual() && PBRepeatedInt32IsEqual() && PBRepeatedInt32IsEqual() && PBRepeatedInt32IsEqual())
  {
    IsEqual = PBRepeatedInt32IsEqual();
  }

  else
  {
    IsEqual = 0;
  }

  return IsEqual;
}

- (unint64_t)hash
{
  v2 = 2654435761 * self->_encodingVersion;
  v3 = PBRepeatedInt32Hash();
  v4 = v3 ^ PBRepeatedInt32Hash();
  v5 = v4 ^ PBRepeatedInt32Hash();
  v6 = v5 ^ PBRepeatedInt32Hash();
  return v2 ^ v6 ^ PBRepeatedInt32Hash();
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_encodingVersion = fromCopy[32];
  v20 = fromCopy;
  clusterIDsCount = [fromCopy clusterIDsCount];
  if (clusterIDsCount)
  {
    v6 = clusterIDsCount;
    for (i = 0; i != v6; ++i)
    {
      -[ASDAggregateClusterMappingData addClusterID:](self, "addClusterID:", [v20 clusterIDAtIndex:i]);
    }
  }

  clusterVersionsCount = [v20 clusterVersionsCount];
  if (clusterVersionsCount)
  {
    v9 = clusterVersionsCount;
    for (j = 0; j != v9; ++j)
    {
      -[ASDAggregateClusterMappingData addClusterVersion:](self, "addClusterVersion:", [v20 clusterVersionAtIndex:j]);
    }
  }

  clusterAppCountsCount = [v20 clusterAppCountsCount];
  if (clusterAppCountsCount)
  {
    v12 = clusterAppCountsCount;
    for (k = 0; k != v12; ++k)
    {
      -[ASDAggregateClusterMappingData addClusterAppCount:](self, "addClusterAppCount:", [v20 clusterAppCountAtIndex:k]);
    }
  }

  weightedAppLaunchesCount = [v20 weightedAppLaunchesCount];
  if (weightedAppLaunchesCount)
  {
    v15 = weightedAppLaunchesCount;
    for (m = 0; m != v15; ++m)
    {
      -[ASDAggregateClusterMappingData addWeightedAppLaunches:](self, "addWeightedAppLaunches:", [v20 weightedAppLaunchesAtIndex:m]);
    }
  }

  weightedAppForgroundUsagesCount = [v20 weightedAppForgroundUsagesCount];
  if (weightedAppForgroundUsagesCount)
  {
    v18 = weightedAppForgroundUsagesCount;
    for (n = 0; n != v18; ++n)
    {
      -[ASDAggregateClusterMappingData addWeightedAppForgroundUsage:](self, "addWeightedAppForgroundUsage:", [v20 weightedAppForgroundUsageAtIndex:n]);
    }
  }
}

@end