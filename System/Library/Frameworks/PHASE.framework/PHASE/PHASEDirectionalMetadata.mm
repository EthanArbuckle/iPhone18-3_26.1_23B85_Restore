@interface PHASEDirectionalMetadata
- (BOOL)isEqual:(id)a3;
- (NSArray)planeWaves;
- (PHASEDirectionalMetadata)init;
- (PHASEDirectionalMetadata)initWithSubbandFrequencies:(id)a3;
- (PHASEDirectionalMetadata)initWithSubbandFrequencyLayout:(int64_t)a3;
- (PHASESphericalPositionMetadata)position;
- (int64_t)category;
- (int64_t)synthesisPreference;
- (unint64_t)hash;
- (void)addPlaneWave:(id)a3;
- (void)removePlaneWave:(id)a3;
- (void)replacePlaneWave:(id)a3 withPlaneWave:(id)a4;
- (void)setCategory:(int64_t)a3;
- (void)setPlaneWaves:(id)a3;
- (void)setPosition:(id)a3;
- (void)setSynthesisPreference:(int64_t)a3;
- (void)validateSubbandFrequencies:(id)a3;
@end

@implementation PHASEDirectionalMetadata

- (PHASEDirectionalMetadata)init
{
  [(PHASEDirectionalMetadata *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEDirectionalMetadata)initWithSubbandFrequencies:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"subbandFrequencies is nil."];
  }

  if (![v5 count])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"subbandFrequencies is empty."];
  }

  v17.receiver = self;
  v17.super_class = PHASEDirectionalMetadata;
  v6 = [(PHASEDirectionalMetadata *)&v17 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277D82BB8]);
    internalCategoryLock = v6->_internalCategoryLock;
    v6->_internalCategoryLock = v7;

    v9 = objc_alloc_init(MEMORY[0x277D82BB8]);
    internalSynthesisPreferenceLock = v6->_internalSynthesisPreferenceLock;
    v6->_internalSynthesisPreferenceLock = v9;

    v11 = objc_alloc_init(MEMORY[0x277D82BB8]);
    internalPositionLock = v6->_internalPositionLock;
    v6->_internalPositionLock = v11;

    [(PHASEDirectionalMetadata *)v6 validateSubbandFrequencies:v5];
    objc_storeStrong(&v6->_internalSubbandFrequencies, a3);
    [(PHASEDirectionalMetadata *)v6 setCategory:+[PHASEDirectionalMetadata defaultCategory]];
    [(PHASEDirectionalMetadata *)v6 setSynthesisPreference:+[PHASEDirectionalMetadata defaultSynthesisPreference]];
    v13 = objc_alloc_init(PHASESphericalPositionMetadata);
    [(PHASEDirectionalMetadata *)v6 setPosition:v13];

    v14 = [MEMORY[0x277CBEB18] array];
    internalPlaneWaves = v6->_internalPlaneWaves;
    v6->_internalPlaneWaves = v14;
  }

  return v6;
}

- (PHASEDirectionalMetadata)initWithSubbandFrequencyLayout:(int64_t)a3
{
  switch(a3)
  {
    case 1718366512:
      v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
      for (i = 0; i != 10; ++i)
      {
        LODWORD(v11) = Phase::sOctaveBandFrequencies[i];
        v13 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
        [v4 addObject:v13];
      }

      goto LABEL_12;
    case 1718367025:
      v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:31];
      for (j = 0; j != 31; ++j)
      {
        LODWORD(v8) = Phase::sThirdOctaveBandFrequencies[j];
        v10 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
        [v4 addObject:v10];
      }

      goto LABEL_12;
    case 1718367008:
      v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
      for (k = 0; k != 3; ++k)
      {
        LODWORD(v5) = Phase::sThreeBandFrequencies[k];
        v7 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
        [v4 addObject:v7];
      }

LABEL_12:
      v14 = [v4 copy];

      goto LABEL_14;
  }

  v14 = MEMORY[0x277CBEBF8];
LABEL_14:
  if (![v14 count])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"unhandled subbandFrequencyLayout."];
  }

  v15 = [(PHASEDirectionalMetadata *)self initWithSubbandFrequencies:v14];

  return v15;
}

- (void)addPlaneWave:(id)a3
{
  v12 = a3;
  if (!v12)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"planeWave is nil."];
  }

  v4 = [(PHASEDirectionalMetadata *)self subbandFrequencies];
  v5 = [v4 count];

  v6 = [v12 subbandGains];
  v7 = [v6 count];

  if (v7 != v5)
  {
    v8 = MEMORY[0x277CBEAD8];
    v9 = [v12 subbandGains];
    v10 = [v9 count];
    [v8 raise:*MEMORY[0x277CBE660] format:{@"planeWave subbandGains count: %lu does not match subbandFrequencies count: %lu.", v10, v5}];
  }

  v11 = self->_internalPlaneWaves;
  objc_sync_enter(v11);
  if ([(NSMutableArray *)self->_internalPlaneWaves containsObject:v12])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"planeWave already exists in planeWaves."];
  }

  [(NSMutableArray *)self->_internalPlaneWaves addObject:v12];
  objc_sync_exit(v11);
}

- (void)removePlaneWave:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"planeWave is nil."];
  }

  v4 = self->_internalPlaneWaves;
  objc_sync_enter(v4);
  if (([(NSMutableArray *)self->_internalPlaneWaves containsObject:v5]& 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"planeWave does not exist in planeWaves."];
  }

  [(NSMutableArray *)self->_internalPlaneWaves removeObject:v5];
  objc_sync_exit(v4);
}

- (void)replacePlaneWave:(id)a3 withPlaneWave:(id)a4
{
  v16 = a3;
  v6 = a4;
  if (!v16)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"oldPlaneWave is nil."];
  }

  if (!v6)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"newPlaneWave is nil."];
  }

  v7 = [(PHASEDirectionalMetadata *)self subbandFrequencies];
  v8 = [v7 count];

  v9 = [v6 subbandGains];
  v10 = [v9 count];

  if (v10 != v8)
  {
    v11 = MEMORY[0x277CBEAD8];
    v12 = [v6 subbandGains];
    v13 = [v12 count];
    [v11 raise:*MEMORY[0x277CBE660] format:{@"newPlaneWave subbandGains count: %lu does not match subbandFrequencies count: %lu.", v13, v8}];
  }

  v14 = self->_internalPlaneWaves;
  objc_sync_enter(v14);
  v15 = [(NSMutableArray *)self->_internalPlaneWaves indexOfObject:v16];
  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"oldPlaneWave does not exist in planeWaves."];
  }

  if ([(NSMutableArray *)self->_internalPlaneWaves containsObject:v6])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"newPlaneWave already exists in planeWaves."];
  }

  [(NSMutableArray *)self->_internalPlaneWaves replaceObjectAtIndex:v15 withObject:v6];
  objc_sync_exit(v14);
}

- (void)setCategory:(int64_t)a3
{
  obj = self->_internalCategoryLock;
  objc_sync_enter(obj);
  self->_internalCategory = a3;
  objc_sync_exit(obj);
}

- (int64_t)category
{
  v3 = self->_internalCategoryLock;
  objc_sync_enter(v3);
  internalCategory = self->_internalCategory;
  objc_sync_exit(v3);

  return internalCategory;
}

- (void)setSynthesisPreference:(int64_t)a3
{
  obj = self->_internalSynthesisPreferenceLock;
  objc_sync_enter(obj);
  self->_internalSynthesisPreference = a3;
  objc_sync_exit(obj);
}

- (int64_t)synthesisPreference
{
  v3 = self->_internalCategoryLock;
  objc_sync_enter(v3);
  internalSynthesisPreference = self->_internalSynthesisPreference;
  objc_sync_exit(v3);

  return internalSynthesisPreference;
}

- (void)setPosition:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The position is nil."];
  }

  v5 = self->_internalPositionLock;
  objc_sync_enter(v5);
  internalPosition = self->_internalPosition;
  self->_internalPosition = v4;
  v7 = v4;

  objc_sync_exit(v5);
}

- (PHASESphericalPositionMetadata)position
{
  v3 = self->_internalPositionLock;
  objc_sync_enter(v3);
  v4 = self->_internalPosition;
  objc_sync_exit(v3);

  return v4;
}

- (void)setPlaneWaves:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBE660];
  v18 = v4;
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"planeWaves is nil."];
  }

  v17 = self;
  v6 = [(PHASEDirectionalMetadata *)self subbandFrequencies];
  v7 = [v6 count];

  v8 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v18, "count")}];
  v9 = 0;
  v10 = *v5;
  while (v9 < [v18 count])
  {
    v11 = [v18 objectAtIndexedSubscript:v9];
    if (!v11)
    {
      [MEMORY[0x277CBEAD8] raise:v10 format:{@"planeWaves[%lu] is nil.", v9}];
    }

    v12 = [v11 subbandGains];
    v13 = [v12 count];

    if (v13 != v7)
    {
      v14 = MEMORY[0x277CBEAD8];
      v15 = [v11 subbandGains];
      [v14 raise:v10 format:{@"planeWaves[%lu] subbandGains count: %lu does not match subbandFrequencies count: %lu.", v9, objc_msgSend(v15, "count"), v7}];
    }

    if ([v8 containsObject:v11])
    {
      [MEMORY[0x277CBEAD8] raise:v10 format:{@"planeWaves[%lu] is a duplicate entry based on its values.", v9}];
    }

    [v8 addObject:v11];

    ++v9;
  }

  v16 = v17->_internalPlaneWaves;
  objc_sync_enter(v16);
  [(NSMutableArray *)v17->_internalPlaneWaves setArray:v18];
  objc_sync_exit(v16);
}

- (NSArray)planeWaves
{
  v3 = self->_internalPlaneWaves;
  objc_sync_enter(v3);
  v4 = [(NSMutableArray *)self->_internalPlaneWaves copy];
  objc_sync_exit(v3);

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(PHASEDirectionalMetadata *)self category];
      if (v7 != [(PHASEDirectionalMetadata *)v6 category])
      {
        goto LABEL_22;
      }

      v8 = [(PHASEDirectionalMetadata *)self synthesisPreference];
      if (v8 != [(PHASEDirectionalMetadata *)v6 synthesisPreference])
      {
        goto LABEL_22;
      }

      v9 = [(PHASEDirectionalMetadata *)self position];
      if (v9 || ([(PHASEDirectionalMetadata *)v6 position], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v10 = [(PHASEDirectionalMetadata *)self position];
        v11 = [(PHASEDirectionalMetadata *)v6 position];
        v12 = [v10 isEqual:v11];

        if (v9)
        {

          if ((v12 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        else
        {

          if ((v12 & 1) == 0)
          {
            goto LABEL_22;
          }
        }
      }

      v14 = [(PHASEDirectionalMetadata *)self subbandFrequencies];
      if (!v14)
      {
        v3 = [(PHASEDirectionalMetadata *)v6 subbandFrequencies];
        if (!v3)
        {
LABEL_17:
          v18 = [(PHASEDirectionalMetadata *)self planeWaves];
          if (v18 || ([(PHASEDirectionalMetadata *)v6 planeWaves], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v19 = [(PHASEDirectionalMetadata *)self planeWaves];
            v20 = [(PHASEDirectionalMetadata *)v6 planeWaves];
            v13 = [v19 isEqualToArray:v20];

            if (v18)
            {
LABEL_27:

              goto LABEL_23;
            }
          }

          else
          {
            v13 = 1;
          }

          goto LABEL_27;
        }
      }

      v15 = [(PHASEDirectionalMetadata *)self subbandFrequencies];
      v16 = [(PHASEDirectionalMetadata *)v6 subbandFrequencies];
      v17 = [v15 isEqualToArray:v16];

      if (v14)
      {

        if (v17)
        {
          goto LABEL_17;
        }
      }

      else
      {

        if (v17)
        {
          goto LABEL_17;
        }
      }

LABEL_22:
      v13 = 0;
LABEL_23:

      goto LABEL_24;
    }

    v13 = 0;
  }

LABEL_24:

  return v13;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PHASEDirectionalMetadata category](self, "category")}];
  v4 = [v3 hash];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PHASEDirectionalMetadata synthesisPreference](self, "synthesisPreference")}];
  v6 = [v5 hash];

  v7 = [(PHASEDirectionalMetadata *)self position];
  v8 = [v7 hash];

  v9 = [(PHASEDirectionalMetadata *)self subbandFrequencies];
  v10 = [v9 hash];

  v11 = [(PHASEDirectionalMetadata *)self planeWaves];
  v12 = [v11 hash];

  return v6 ^ v4 ^ v8 ^ v10 ^ v12;
}

- (void)validateSubbandFrequencies:(id)a3
{
  v18 = a3;
  v3 = 0;
  v4 = 0;
  v5 = *MEMORY[0x277CBE660];
  while (v3 < [v18 count])
  {
    v6 = [v18 objectAtIndexedSubscript:v3];
    if (!v6)
    {
      [MEMORY[0x277CBEAD8] raise:v5 format:{@"subbandFrequency[%lu] is nil.", v3}];
    }

    [v6 doubleValue];
    v8 = v7;
    +[PHASEDirectionalMetadata minimumFrequency];
    if (v8 < v9 || (+[PHASEDirectionalMetadata maximumFrequency], v8 > v10))
    {
      v11 = MEMORY[0x277CBEAD8];
      +[PHASEDirectionalMetadata minimumFrequency];
      v13 = v12;
      +[PHASEDirectionalMetadata maximumFrequency];
      [v11 raise:v5 format:{@"subbandFrequency[%lu]: %f is out of range [%f, %f].", v3, *&v8, v13, v14}];
    }

    if (v4)
    {
      [v4 doubleValue];
      if (v8 <= v15)
      {
        v16 = MEMORY[0x277CBEAD8];
        [v4 doubleValue];
        [v16 raise:v5 format:{@"subbandFrequency[%lu]: %f is not in strictly ascending order compared to subbandFrequency[%lu]: %f.", v3, *&v8, v3 - 1, v17}];
      }
    }

    ++v3;
    v4 = v6;
  }
}

@end