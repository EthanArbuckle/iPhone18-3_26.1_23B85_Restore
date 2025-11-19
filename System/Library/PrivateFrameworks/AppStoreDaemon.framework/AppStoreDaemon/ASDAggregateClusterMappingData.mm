@interface ASDAggregateClusterMappingData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)clusterAppCountAtIndex:(unint64_t)a3;
- (int)clusterIDAtIndex:(unint64_t)a3;
- (int)clusterVersionAtIndex:(unint64_t)a3;
- (int)weightedAppForgroundUsageAtIndex:(unint64_t)a3;
- (int)weightedAppLaunchesAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (int)clusterIDAtIndex:(unint64_t)a3
{
  p_clusterIDs = &self->_clusterIDs;
  count = self->_clusterIDs.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_clusterIDs->list[a3];
}

- (int)clusterVersionAtIndex:(unint64_t)a3
{
  p_clusterVersions = &self->_clusterVersions;
  count = self->_clusterVersions.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_clusterVersions->list[a3];
}

- (int)clusterAppCountAtIndex:(unint64_t)a3
{
  p_clusterAppCounts = &self->_clusterAppCounts;
  count = self->_clusterAppCounts.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_clusterAppCounts->list[a3];
}

- (int)weightedAppLaunchesAtIndex:(unint64_t)a3
{
  p_weightedAppLaunches = &self->_weightedAppLaunches;
  count = self->_weightedAppLaunches.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_weightedAppLaunches->list[a3];
}

- (int)weightedAppForgroundUsageAtIndex:(unint64_t)a3
{
  p_weightedAppForgroundUsages = &self->_weightedAppForgroundUsages;
  count = self->_weightedAppForgroundUsages.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_weightedAppForgroundUsages->list[a3];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ASDAggregateClusterMappingData;
  v4 = [(ASDAggregateClusterMappingData *)&v8 description];
  v5 = [(ASDAggregateClusterMappingData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_encodingVersion];
  [v3 setObject:v4 forKey:@"encodingVersion"];

  v5 = PBRepeatedInt32NSArray();
  [v3 setObject:v5 forKey:@"clusterID"];

  v6 = PBRepeatedInt32NSArray();
  [v3 setObject:v6 forKey:@"clusterVersion"];

  v7 = PBRepeatedInt32NSArray();
  [v3 setObject:v7 forKey:@"clusterAppCount"];

  v8 = PBRepeatedInt32NSArray();
  [v3 setObject:v8 forKey:@"weightedAppLaunches"];

  v9 = PBRepeatedInt32NSArray();
  [v3 setObject:v9 forKey:@"weightedAppForgroundUsage"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
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

- (void)copyTo:(id)a3
{
  v19 = a3;
  v19[32] = self->_encodingVersion;
  if ([(ASDAggregateClusterMappingData *)self clusterIDsCount])
  {
    [v19 clearClusterIDs];
    v4 = [(ASDAggregateClusterMappingData *)self clusterIDsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [v19 addClusterID:{-[ASDAggregateClusterMappingData clusterIDAtIndex:](self, "clusterIDAtIndex:", i)}];
      }
    }
  }

  if ([(ASDAggregateClusterMappingData *)self clusterVersionsCount])
  {
    [v19 clearClusterVersions];
    v7 = [(ASDAggregateClusterMappingData *)self clusterVersionsCount];
    if (v7)
    {
      v8 = v7;
      for (j = 0; j != v8; ++j)
      {
        [v19 addClusterVersion:{-[ASDAggregateClusterMappingData clusterVersionAtIndex:](self, "clusterVersionAtIndex:", j)}];
      }
    }
  }

  if ([(ASDAggregateClusterMappingData *)self clusterAppCountsCount])
  {
    [v19 clearClusterAppCounts];
    v10 = [(ASDAggregateClusterMappingData *)self clusterAppCountsCount];
    if (v10)
    {
      v11 = v10;
      for (k = 0; k != v11; ++k)
      {
        [v19 addClusterAppCount:{-[ASDAggregateClusterMappingData clusterAppCountAtIndex:](self, "clusterAppCountAtIndex:", k)}];
      }
    }
  }

  if ([(ASDAggregateClusterMappingData *)self weightedAppLaunchesCount])
  {
    [v19 clearWeightedAppLaunches];
    v13 = [(ASDAggregateClusterMappingData *)self weightedAppLaunchesCount];
    if (v13)
    {
      v14 = v13;
      for (m = 0; m != v14; ++m)
      {
        [v19 addWeightedAppLaunches:{-[ASDAggregateClusterMappingData weightedAppLaunchesAtIndex:](self, "weightedAppLaunchesAtIndex:", m)}];
      }
    }
  }

  if ([(ASDAggregateClusterMappingData *)self weightedAppForgroundUsagesCount])
  {
    [v19 clearWeightedAppForgroundUsages];
    v16 = [(ASDAggregateClusterMappingData *)self weightedAppForgroundUsagesCount];
    if (v16)
    {
      v17 = v16;
      for (n = 0; n != v17; ++n)
      {
        [v19 addWeightedAppForgroundUsage:{-[ASDAggregateClusterMappingData weightedAppForgroundUsageAtIndex:](self, "weightedAppForgroundUsageAtIndex:", n)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v4[32] = self->_encodingVersion;
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_encodingVersion == v4[32] && PBRepeatedInt32IsEqual() && PBRepeatedInt32IsEqual() && PBRepeatedInt32IsEqual() && PBRepeatedInt32IsEqual())
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_encodingVersion = v4[32];
  v20 = v4;
  v5 = [v4 clusterIDsCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[ASDAggregateClusterMappingData addClusterID:](self, "addClusterID:", [v20 clusterIDAtIndex:i]);
    }
  }

  v8 = [v20 clusterVersionsCount];
  if (v8)
  {
    v9 = v8;
    for (j = 0; j != v9; ++j)
    {
      -[ASDAggregateClusterMappingData addClusterVersion:](self, "addClusterVersion:", [v20 clusterVersionAtIndex:j]);
    }
  }

  v11 = [v20 clusterAppCountsCount];
  if (v11)
  {
    v12 = v11;
    for (k = 0; k != v12; ++k)
    {
      -[ASDAggregateClusterMappingData addClusterAppCount:](self, "addClusterAppCount:", [v20 clusterAppCountAtIndex:k]);
    }
  }

  v14 = [v20 weightedAppLaunchesCount];
  if (v14)
  {
    v15 = v14;
    for (m = 0; m != v15; ++m)
    {
      -[ASDAggregateClusterMappingData addWeightedAppLaunches:](self, "addWeightedAppLaunches:", [v20 weightedAppLaunchesAtIndex:m]);
    }
  }

  v17 = [v20 weightedAppForgroundUsagesCount];
  if (v17)
  {
    v18 = v17;
    for (n = 0; n != v18; ++n)
    {
      -[ASDAggregateClusterMappingData addWeightedAppForgroundUsage:](self, "addWeightedAppForgroundUsage:", [v20 weightedAppForgroundUsageAtIndex:n]);
    }
  }
}

@end