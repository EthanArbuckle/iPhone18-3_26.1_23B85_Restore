@interface PHASEPlaneWaveMetadata
- (BOOL)invertPolarity;
- (BOOL)isEqual:(id)equal;
- (NSArray)subbandGains;
- (PHASEAngularPositionMetadata)direction;
- (PHASEPlaneWaveMetadata)init;
- (PHASEPlaneWaveMetadata)initWithSubbandCount:(unint64_t)count;
- (float)delayTime;
- (unint64_t)hash;
- (void)setDelayTime:(float)time;
- (void)setDirection:(id)direction;
- (void)setInvertPolarity:(BOOL)polarity;
- (void)setSubbandGains:(id)gains;
@end

@implementation PHASEPlaneWaveMetadata

- (PHASEPlaneWaveMetadata)init
{
  [(PHASEPlaneWaveMetadata *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEPlaneWaveMetadata)initWithSubbandCount:(unint64_t)count
{
  countCopy = count;
  if (!count)
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

    v5->_subbandCount = countCopy;
    for (i = [MEMORY[0x277CBEB18] arrayWithCapacity:countCopy];
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

- (void)setDelayTime:(float)time
{
  +[PHASEPlaneWaveMetadata minimumDelayTime];
  if (v5 > time || (+[PHASEPlaneWaveMetadata maximumDelayTime], v6 < time))
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE660];
    +[PHASEPlaneWaveMetadata minimumDelayTime];
    v10 = v9;
    +[PHASEPlaneWaveMetadata maximumDelayTime];
    [v7 raise:v8 format:{@"delayTime: %f is out of range [%f, %f].", time, *&v10, v11}];
  }

  obj = self->_internalDelayTimeLock;
  objc_sync_enter(obj);
  self->_internalDelayTime = time;
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

- (void)setDirection:(id)direction
{
  directionCopy = direction;
  if (!directionCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"direction is nil."];
  }

  v5 = self->_internalDirectionLock;
  objc_sync_enter(v5);
  internalDirection = self->_internalDirection;
  self->_internalDirection = directionCopy;
  v7 = directionCopy;

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

- (void)setInvertPolarity:(BOOL)polarity
{
  obj = self->_internalInvertPolarityLock;
  objc_sync_enter(obj);
  self->_internalInvertPolarity = polarity;
  objc_sync_exit(obj);
}

- (BOOL)invertPolarity
{
  selfCopy = self;
  v3 = self->_internalInvertPolarityLock;
  objc_sync_enter(v3);
  LOBYTE(selfCopy) = selfCopy->_internalInvertPolarity;
  objc_sync_exit(v3);

  return selfCopy;
}

- (void)setSubbandGains:(id)gains
{
  gainsCopy = gains;
  if (!gainsCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"subbandGains is nil."];
  }

  if ([gainsCopy count] == self->_subbandCount)
  {
    v5 = 0;
    v6 = *MEMORY[0x277CBE660];
    while (v5 < [gainsCopy count])
    {
      v7 = [gainsCopy objectAtIndexedSubscript:v5];
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
    objc_storeStrong(&self->_internalSubbandGains, gains);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v19 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
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
        direction = [(PHASEPlaneWaveMetadata *)self direction];
        if (!direction)
        {
          direction2 = [(PHASEPlaneWaveMetadata *)v6 direction];
          if (!direction2)
          {
            goto LABEL_12;
          }
        }

        direction3 = [(PHASEPlaneWaveMetadata *)self direction];
        direction4 = [(PHASEPlaneWaveMetadata *)v6 direction];
        v18 = [direction3 isEqual:direction4];

        if (direction)
        {

          if ((v18 & 1) == 0)
          {
            goto LABEL_13;
          }

LABEL_12:
          invertPolarity = [(PHASEPlaneWaveMetadata *)self invertPolarity];
          if (invertPolarity != [(PHASEPlaneWaveMetadata *)v6 invertPolarity])
          {
            goto LABEL_13;
          }

          subbandGains = [(PHASEPlaneWaveMetadata *)self subbandGains];
          if (subbandGains || ([(PHASEPlaneWaveMetadata *)v6 subbandGains], (direction2 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            subbandGains2 = [(PHASEPlaneWaveMetadata *)self subbandGains];
            subbandGains3 = [(PHASEPlaneWaveMetadata *)v6 subbandGains];
            v19 = [subbandGains2 isEqualToArray:subbandGains3];

            if (subbandGains)
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

  direction = [(PHASEPlaneWaveMetadata *)self direction];
  v7 = [direction hash];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[PHASEPlaneWaveMetadata invertPolarity](self, "invertPolarity")}];
  v9 = [v8 hash];

  subbandGains = [(PHASEPlaneWaveMetadata *)self subbandGains];
  v11 = [subbandGains hash];

  return v7 ^ v5 ^ v9 ^ v11;
}

@end