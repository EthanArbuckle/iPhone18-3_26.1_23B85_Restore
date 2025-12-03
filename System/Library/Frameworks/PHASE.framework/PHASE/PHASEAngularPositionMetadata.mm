@interface PHASEAngularPositionMetadata
- (BOOL)isEqual:(id)equal;
- (PHASEAngularPositionMetadata)init;
- (PHASEAngularPositionMetadata)initWithAzimuth:(float)azimuth elevation:(float)elevation;
- (float)azimuth;
- (float)elevation;
- (unint64_t)hash;
- (void)setAzimuth:(float)azimuth;
- (void)setElevation:(float)elevation;
@end

@implementation PHASEAngularPositionMetadata

- (PHASEAngularPositionMetadata)init
{
  +[PHASEAngularPositionMetadata defaultAzimuth];
  v4 = v3;
  +[PHASEAngularPositionMetadata defaultElevation];
  LODWORD(v6) = v5;
  LODWORD(v7) = v4;
  return [(PHASEAngularPositionMetadata *)self initWithAzimuth:v7 elevation:v6];
}

- (PHASEAngularPositionMetadata)initWithAzimuth:(float)azimuth elevation:(float)elevation
{
  v14.receiver = self;
  v14.super_class = PHASEAngularPositionMetadata;
  v6 = [(PHASEAngularPositionMetadata *)&v14 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277D82BB8]);
    internalAzimuthLock = v6->_internalAzimuthLock;
    v6->_internalAzimuthLock = v7;

    v9 = objc_alloc_init(MEMORY[0x277D82BB8]);
    internalElevationLock = v6->_internalElevationLock;
    v6->_internalElevationLock = v9;

    *&v11 = azimuth;
    [(PHASEAngularPositionMetadata *)v6 setAzimuth:v11];
    *&v12 = elevation;
    [(PHASEAngularPositionMetadata *)v6 setElevation:v12];
  }

  return v6;
}

- (void)setAzimuth:(float)azimuth
{
  +[PHASEAngularPositionMetadata minimumAzimuth];
  if (v5 <= azimuth && (+[PHASEAngularPositionMetadata maximumAzimuth], v6 >= azimuth))
  {
    obj = self->_internalAzimuthLock;
    objc_sync_enter(obj);
    self->_internalAzimuth = azimuth;
    objc_sync_exit(obj);
  }

  else
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE660];
    +[PHASEAngularPositionMetadata minimumAzimuth];
    v10 = v9;
    +[PHASEAngularPositionMetadata maximumAzimuth];
    [v7 raise:v8 format:{@"The azimuth: %f is out of range [%f, %f].", azimuth, *&v10, v11}];
  }
}

- (float)azimuth
{
  v3 = self->_internalAzimuthLock;
  objc_sync_enter(v3);
  internalAzimuth = self->_internalAzimuth;
  objc_sync_exit(v3);

  return internalAzimuth;
}

- (void)setElevation:(float)elevation
{
  +[PHASEAngularPositionMetadata minimumElevation];
  if (v5 <= elevation && (+[PHASEAngularPositionMetadata maximumElevation], v6 >= elevation))
  {
    obj = self->_internalElevationLock;
    objc_sync_enter(obj);
    self->_internalElevation = elevation;
    objc_sync_exit(obj);
  }

  else
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE660];
    +[PHASEAngularPositionMetadata minimumElevation];
    v10 = v9;
    +[PHASEAngularPositionMetadata maximumElevation];
    [v7 raise:v8 format:{@"The elevation: %f is out of range [%f, %f].", elevation, *&v10, v11}];
  }
}

- (float)elevation
{
  v3 = self->_internalElevationLock;
  objc_sync_enter(v3);
  internalElevation = self->_internalElevation;
  objc_sync_exit(v3);

  return internalElevation;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v22 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      [(PHASEAngularPositionMetadata *)self azimuth];
      v7 = v6;
      [(PHASEAngularPositionMetadata *)v5 azimuth];
      v9 = v8;
      +[PHASEAngularPositionMetadata epsilon];
      LODWORD(v11) = v10;
      LODWORD(v12) = v7;
      LODWORD(v13) = v9;
      if ([(PHASEAngularPositionMetadata *)self floatsAreEqual:v12 b:v13 eps:v11])
      {
        [(PHASEAngularPositionMetadata *)self elevation];
        v15 = v14;
        [(PHASEAngularPositionMetadata *)v5 elevation];
        v17 = v16;
        +[PHASEAngularPositionMetadata epsilon];
        LODWORD(v19) = v18;
        LODWORD(v20) = v15;
        LODWORD(v21) = v17;
        v22 = [(PHASEAngularPositionMetadata *)self floatsAreEqual:v20 b:v21 eps:v19];
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }
  }

  return v22;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x277CCABB0];
  [(PHASEAngularPositionMetadata *)self azimuth];
  v4 = [v3 numberWithFloat:?];
  v5 = [v4 hash];

  v6 = MEMORY[0x277CCABB0];
  [(PHASEAngularPositionMetadata *)self elevation];
  v7 = [v6 numberWithFloat:?];
  v8 = [v7 hash];

  return v8 ^ v5;
}

@end