@interface PHASEPlaneWaveMetadata
- (BOOL)invertPolarity;
- (BOOL)isEqual:(id)a3;
- (NSArray)subbandGains;
- (PHASEAngularPositionMetadata)direction;
- (PHASEPlaneWaveMetadata)init;
- (PHASEPlaneWaveMetadata)initWithSubbandCount:(unint64_t)a3;
- (float)delayTime;
- (unint64_t)hash;
- (void)setDelayTime:(float)a3;
- (void)setDirection:(id)a3;
- (void)setInvertPolarity:(BOOL)a3;
- (void)setSubbandGains:(id)a3;
@end

@implementation PHASEPlaneWaveMetadata

- (PHASEPlaneWaveMetadata)init
{
  [(PHASEPlaneWaveMetadata *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEPlaneWaveMetadata)initWithSubbandCount:(unint64_t)a3
{
  v3 = a3;
  if (!a3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"subbandCount is 0."];
  }

  v17.receiver = self;
  v17.super_class = PHASEPlaneWaveMetadata;
  v5 = [(PHASEPlaneWaveMetadata *)&v17 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277D82BB8]);
    internalDelayTimeLock = v5->_internalDelayTimeLock;
    v5->_internalDelayTimeLock = v6;

    v8 = objc_alloc_init(MEMORY[0x277D82BB8]);
    internalDirectionLock = v5->_internalDirectionLock;
    v5->_internalDirectionLock = v8;

    v10 = objc_alloc_init(MEMORY[0x277D82BB8]);
    internalInvertPolarityLock = v5->_internalInvertPolarityLock;
    v5->_internalInvertPolarityLock = v10;

    v12 = objc_alloc_init(MEMORY[0x277D82BB8]);
    internalSubbandGainsLock = v5->_internalSubbandGainsLock;
    v5->_internalSubbandGainsLock = v12;

    v5->_subbandCount = v3;
    for (i = [MEMORY[0x277CBEB18] arrayWithCapacity:v3];
    {
      [i addObject:&unk_284D4DA08];
    }

    objc_storeStrong(&v5->_internalSubbandGains, i);
    +[PHASEPlaneWaveMetadata defaultDelayTime];
    [(PHASEPlaneWaveMetadata *)v5 setDelayTime:?];
    v15 = objc_alloc_init(PHASEAngularPositionMetadata);
    [(PHASEPlaneWaveMetadata *)v5 setDirection:v15];

    [(PHASEPlaneWaveMetadata *)v5 setInvertPolarity:+[PHASEPlaneWaveMetadata defaultInvertPolarity]];
  }

  return v5;
}

- (void)setDelayTime:(float)a3
{
  +[PHASEPlaneWaveMetadata minimumDelayTime];
  if (v5 > a3 || (+[PHASEPlaneWaveMetadata maximumDelayTime], v6 < a3))
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE660];
    +[PHASEPlaneWaveMetadata minimumDelayTime];
    v10 = v9;
    +[PHASEPlaneWaveMetadata maximumDelayTime];
    [v7 raise:v8 format:{@"delayTime: %f is out of range [%f, %f].", a3, *&v10, v11}];
  }

  obj = self->_internalDelayTimeLock;
  objc_sync_enter(obj);
  self->_internalDelayTime = a3;
  objc_sync_exit(obj);
}

- (float)delayTime
{
  v3 = self->_internalDelayTimeLock;
  objc_sync_enter(v3);
  internalDelayTime = self->_internalDelayTime;
  objc_sync_exit(v3);

  return internalDelayTime;
}

- (void)setDirection:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"direction is nil."];
  }

  v5 = self->_internalDirectionLock;
  objc_sync_enter(v5);
  internalDirection = self->_internalDirection;
  self->_internalDirection = v4;
  v7 = v4;

  objc_sync_exit(v5);
}

- (PHASEAngularPositionMetadata)direction
{
  v3 = self->_internalDirectionLock;
  objc_sync_enter(v3);
  v4 = self->_internalDirection;
  objc_sync_exit(v3);

  return v4;
}

- (void)setInvertPolarity:(BOOL)a3
{
  obj = self->_internalInvertPolarityLock;
  objc_sync_enter(obj);
  self->_internalInvertPolarity = a3;
  objc_sync_exit(obj);
}

- (BOOL)invertPolarity
{
  v2 = self;
  v3 = self->_internalInvertPolarityLock;
  objc_sync_enter(v3);
  LOBYTE(v2) = v2->_internalInvertPolarity;
  objc_sync_exit(v3);

  return v2;
}

- (void)setSubbandGains:(id)a3
{
  v17 = a3;
  if (!v17)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"subbandGains is nil."];
  }

  if ([v17 count] == self->_subbandCount)
  {
    v5 = 0;
    v6 = *MEMORY[0x277CBE660];
    while (v5 < [v17 count])
    {
      v7 = [v17 objectAtIndexedSubscript:v5];
      if (!v7)
      {
        [MEMORY[0x277CBEAD8] raise:v6 format:{@"subbandGain[%lu] is nil.", v5}];
      }

      [v7 doubleValue];
      v9 = v8;
      +[PHASEPlaneWaveMetadata minimumDelayTime];
      if (v9 < v10 || (+[PHASEPlaneWaveMetadata maximumDelayTime], v9 > v11))
      {
        v12 = MEMORY[0x277CBEAD8];
        +[PHASEPlaneWaveMetadata minimumDelayTime];
        v14 = v13;
        +[PHASEPlaneWaveMetadata maximumDelayTime];
        [v12 raise:v6 format:{@"subbandGain: %f is out of range [%f, %f].", *&v9, v14, v15}];
      }

      ++v5;
    }

    v16 = self->_internalSubbandGainsLock;
    objc_sync_enter(v16);
    objc_storeStrong(&self->_internalSubbandGains, a3);
    objc_sync_exit(v16);
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"subbandGains must have exactly %lu elements.", self->_subbandCount}];
  }
}

- (NSArray)subbandGains
{
  v3 = self->_internalSubbandGainsLock;
  objc_sync_enter(v3);
  v4 = self->_internalSubbandGains;
  objc_sync_exit(v3);

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v19 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      [(PHASEPlaneWaveMetadata *)self delayTime];
      v8 = v7;
      [(PHASEPlaneWaveMetadata *)v6 delayTime];
      v10 = v9;
      +[PHASEPlaneWaveMetadata epsilon];
      LODWORD(v12) = v11;
      LODWORD(v13) = v8;
      LODWORD(v14) = v10;
      if ([(PHASEPlaneWaveMetadata *)self floatsAreEqual:v13 b:v14 eps:v12])
      {
        v15 = [(PHASEPlaneWaveMetadata *)self direction];
        if (!v15)
        {
          v3 = [(PHASEPlaneWaveMetadata *)v6 direction];
          if (!v3)
          {
            goto LABEL_12;
          }
        }

        v16 = [(PHASEPlaneWaveMetadata *)self direction];
        v17 = [(PHASEPlaneWaveMetadata *)v6 direction];
        v18 = [v16 isEqual:v17];

        if (v15)
        {

          if ((v18 & 1) == 0)
          {
            goto LABEL_13;
          }

LABEL_12:
          v20 = [(PHASEPlaneWaveMetadata *)self invertPolarity];
          if (v20 != [(PHASEPlaneWaveMetadata *)v6 invertPolarity])
          {
            goto LABEL_13;
          }

          v22 = [(PHASEPlaneWaveMetadata *)self subbandGains];
          if (v22 || ([(PHASEPlaneWaveMetadata *)v6 subbandGains], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v23 = [(PHASEPlaneWaveMetadata *)self subbandGains];
            v24 = [(PHASEPlaneWaveMetadata *)v6 subbandGains];
            v19 = [v23 isEqualToArray:v24];

            if (v22)
            {
LABEL_22:

              goto LABEL_14;
            }
          }

          else
          {
            v19 = 1;
          }

          goto LABEL_22;
        }

        if (v18)
        {
          goto LABEL_12;
        }
      }

LABEL_13:
      v19 = 0;
LABEL_14:

      goto LABEL_15;
    }

    v19 = 0;
  }

LABEL_15:

  return v19;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x277CCABB0];
  [(PHASEPlaneWaveMetadata *)self delayTime];
  v4 = [v3 numberWithFloat:?];
  v5 = [v4 hash];

  v6 = [(PHASEPlaneWaveMetadata *)self direction];
  v7 = [v6 hash];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[PHASEPlaneWaveMetadata invertPolarity](self, "invertPolarity")}];
  v9 = [v8 hash];

  v10 = [(PHASEPlaneWaveMetadata *)self subbandGains];
  v11 = [v10 hash];

  return v7 ^ v5 ^ v9 ^ v11;
}

@end