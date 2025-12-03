@interface PHASEDirectionalMetadata
- (BOOL)isEqual:(id)equal;
- (NSArray)planeWaves;
- (PHASEDirectionalMetadata)init;
- (PHASEDirectionalMetadata)initWithSubbandFrequencies:(id)frequencies;
- (PHASEDirectionalMetadata)initWithSubbandFrequencyLayout:(int64_t)layout;
- (PHASESphericalPositionMetadata)position;
- (int64_t)category;
- (int64_t)synthesisPreference;
- (unint64_t)hash;
- (void)addPlaneWave:(id)wave;
- (void)removePlaneWave:(id)wave;
- (void)replacePlaneWave:(id)wave withPlaneWave:(id)planeWave;
- (void)setCategory:(int64_t)category;
- (void)setPlaneWaves:(id)waves;
- (void)setPosition:(id)position;
- (void)setSynthesisPreference:(int64_t)preference;
- (void)validateSubbandFrequencies:(id)frequencies;
@end

@implementation PHASEDirectionalMetadata

- (PHASEDirectionalMetadata)init
{
  [(PHASEDirectionalMetadata *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEDirectionalMetadata)initWithSubbandFrequencies:(id)frequencies
{
  frequenciesCopy = frequencies;
  if (!frequenciesCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"subbandFrequencies is nil."];
  }

  if (![frequenciesCopy count])
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

    [(PHASEDirectionalMetadata *)v6 validateSubbandFrequencies:frequenciesCopy];
    objc_storeStrong(&v6->_internalSubbandFrequencies, frequencies);
    [(PHASEDirectionalMetadata *)v6 setCategory:+[PHASEDirectionalMetadata defaultCategory]];
    [(PHASEDirectionalMetadata *)v6 setSynthesisPreference:+[PHASEDirectionalMetadata defaultSynthesisPreference]];
    v13 = objc_alloc_init(PHASESphericalPositionMetadata);
    [(PHASEDirectionalMetadata *)v6 setPosition:v13];

    array = [MEMORY[0x277CBEB18] array];
    internalPlaneWaves = v6->_internalPlaneWaves;
    v6->_internalPlaneWaves = array;
  }

  return v6;
}

- (PHASEDirectionalMetadata)initWithSubbandFrequencyLayout:(int64_t)layout
{
  switch(layout)
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

- (void)addPlaneWave:(id)wave
{
  waveCopy = wave;
  if (!waveCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"planeWave is nil."];
  }

  subbandFrequencies = [(PHASEDirectionalMetadata *)self subbandFrequencies];
  v5 = [subbandFrequencies count];

  subbandGains = [waveCopy subbandGains];
  v7 = [subbandGains count];

  if (v7 != v5)
  {
    v8 = MEMORY[0x277CBEAD8];
    subbandGains2 = [waveCopy subbandGains];
    v10 = [subbandGains2 count];
    [v8 raise:*MEMORY[0x277CBE660] format:{@"planeWave subbandGains count: %lu does not match subbandFrequencies count: %lu.", v10, v5}];
  }

  v11 = self->_internalPlaneWaves;
  objc_sync_enter(v11);
  if ([(NSMutableArray *)self->_internalPlaneWaves containsObject:waveCopy])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"planeWave already exists in planeWaves."];
  }

  [(NSMutableArray *)self->_internalPlaneWaves addObject:waveCopy];
  objc_sync_exit(v11);
}

- (void)removePlaneWave:(id)wave
{
  waveCopy = wave;
  if (!waveCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"planeWave is nil."];
  }

  v4 = self->_internalPlaneWaves;
  objc_sync_enter(v4);
  if (([(NSMutableArray *)self->_internalPlaneWaves containsObject:waveCopy]& 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"planeWave does not exist in planeWaves."];
  }

  [(NSMutableArray *)self->_internalPlaneWaves removeObject:waveCopy];
  objc_sync_exit(v4);
}

- (void)replacePlaneWave:(id)wave withPlaneWave:(id)planeWave
{
  waveCopy = wave;
  planeWaveCopy = planeWave;
  if (!waveCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"oldPlaneWave is nil."];
  }

  if (!planeWaveCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"newPlaneWave is nil."];
  }

  subbandFrequencies = [(PHASEDirectionalMetadata *)self subbandFrequencies];
  v8 = [subbandFrequencies count];

  subbandGains = [planeWaveCopy subbandGains];
  v10 = [subbandGains count];

  if (v10 != v8)
  {
    v11 = MEMORY[0x277CBEAD8];
    subbandGains2 = [planeWaveCopy subbandGains];
    v13 = [subbandGains2 count];
    [v11 raise:*MEMORY[0x277CBE660] format:{@"newPlaneWave subbandGains count: %lu does not match subbandFrequencies count: %lu.", v13, v8}];
  }

  v14 = self->_internalPlaneWaves;
  objc_sync_enter(v14);
  v15 = [(NSMutableArray *)self->_internalPlaneWaves indexOfObject:waveCopy];
  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"oldPlaneWave does not exist in planeWaves."];
  }

  if ([(NSMutableArray *)self->_internalPlaneWaves containsObject:planeWaveCopy])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"newPlaneWave already exists in planeWaves."];
  }

  [(NSMutableArray *)self->_internalPlaneWaves replaceObjectAtIndex:v15 withObject:planeWaveCopy];
  objc_sync_exit(v14);
}

- (void)setCategory:(int64_t)category
{
  obj = self->_internalCategoryLock;
  objc_sync_enter(obj);
  self->_internalCategory = category;
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

- (void)setSynthesisPreference:(int64_t)preference
{
  obj = self->_internalSynthesisPreferenceLock;
  objc_sync_enter(obj);
  self->_internalSynthesisPreference = preference;
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

- (void)setPosition:(id)position
{
  positionCopy = position;
  if (!positionCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The position is nil."];
  }

  v5 = self->_internalPositionLock;
  objc_sync_enter(v5);
  internalPosition = self->_internalPosition;
  self->_internalPosition = positionCopy;
  v7 = positionCopy;

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

- (void)setPlaneWaves:(id)waves
{
  wavesCopy = waves;
  v5 = MEMORY[0x277CBE660];
  v18 = wavesCopy;
  if (!wavesCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"planeWaves is nil."];
  }

  selfCopy = self;
  subbandFrequencies = [(PHASEDirectionalMetadata *)self subbandFrequencies];
  v7 = [subbandFrequencies count];

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

    subbandGains = [v11 subbandGains];
    v13 = [subbandGains count];

    if (v13 != v7)
    {
      v14 = MEMORY[0x277CBEAD8];
      subbandGains2 = [v11 subbandGains];
      [v14 raise:v10 format:{@"planeWaves[%lu] subbandGains count: %lu does not match subbandFrequencies count: %lu.", v9, objc_msgSend(subbandGains2, "count"), v7}];
    }

    if ([v8 containsObject:v11])
    {
      [MEMORY[0x277CBEAD8] raise:v10 format:{@"planeWaves[%lu] is a duplicate entry based on its values.", v9}];
    }

    [v8 addObject:v11];

    ++v9;
  }

  v16 = selfCopy->_internalPlaneWaves;
  objc_sync_enter(v16);
  [(NSMutableArray *)selfCopy->_internalPlaneWaves setArray:v18];
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
      v6 = equalCopy;
      category = [(PHASEDirectionalMetadata *)self category];
      if (category != [(PHASEDirectionalMetadata *)v6 category])
      {
        goto LABEL_22;
      }

      synthesisPreference = [(PHASEDirectionalMetadata *)self synthesisPreference];
      if (synthesisPreference != [(PHASEDirectionalMetadata *)v6 synthesisPreference])
      {
        goto LABEL_22;
      }

      position = [(PHASEDirectionalMetadata *)self position];
      if (position || ([(PHASEDirectionalMetadata *)v6 position], (subbandFrequencies2 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        position2 = [(PHASEDirectionalMetadata *)self position];
        position3 = [(PHASEDirectionalMetadata *)v6 position];
        v12 = [position2 isEqual:position3];

        if (position)
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

      subbandFrequencies = [(PHASEDirectionalMetadata *)self subbandFrequencies];
      if (!subbandFrequencies)
      {
        subbandFrequencies2 = [(PHASEDirectionalMetadata *)v6 subbandFrequencies];
        if (!subbandFrequencies2)
        {
LABEL_17:
          planeWaves = [(PHASEDirectionalMetadata *)self planeWaves];
          if (planeWaves || ([(PHASEDirectionalMetadata *)v6 planeWaves], (subbandFrequencies2 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            planeWaves2 = [(PHASEDirectionalMetadata *)self planeWaves];
            planeWaves3 = [(PHASEDirectionalMetadata *)v6 planeWaves];
            v13 = [planeWaves2 isEqualToArray:planeWaves3];

            if (planeWaves)
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

      subbandFrequencies3 = [(PHASEDirectionalMetadata *)self subbandFrequencies];
      subbandFrequencies4 = [(PHASEDirectionalMetadata *)v6 subbandFrequencies];
      v17 = [subbandFrequencies3 isEqualToArray:subbandFrequencies4];

      if (subbandFrequencies)
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

  position = [(PHASEDirectionalMetadata *)self position];
  v8 = [position hash];

  subbandFrequencies = [(PHASEDirectionalMetadata *)self subbandFrequencies];
  v10 = [subbandFrequencies hash];

  planeWaves = [(PHASEDirectionalMetadata *)self planeWaves];
  v12 = [planeWaves hash];

  return v6 ^ v4 ^ v8 ^ v10 ^ v12;
}

- (void)validateSubbandFrequencies:(id)frequencies
{
  frequenciesCopy = frequencies;
  v3 = 0;
  v4 = 0;
  v5 = *MEMORY[0x277CBE660];
  while (v3 < [frequenciesCopy count])
  {
    v6 = [frequenciesCopy objectAtIndexedSubscript:v3];
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