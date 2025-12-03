@interface PHASESphericalPositionMetadata
- (BOOL)isEqual:(id)equal;
- (PHASESphericalPositionMetadata)init;
- (PHASESphericalPositionMetadata)initWithAzimuth:(float)azimuth elevation:(float)elevation;
- (PHASESphericalPositionMetadata)initWithAzimuth:(float)azimuth elevation:(float)elevation distance:(float)distance;
- (float)distance;
- (unint64_t)hash;
- (void)setDistance:(float)distance;
@end

@implementation PHASESphericalPositionMetadata

- (PHASESphericalPositionMetadata)init
{
  +[PHASEAngularPositionMetadata defaultAzimuth];
  v4 = v3;
  +[PHASEAngularPositionMetadata defaultElevation];
  v6 = v5;
  +[PHASESphericalPositionMetadata defaultDistance];
  LODWORD(v8) = v7;
  LODWORD(v9) = v4;
  LODWORD(v10) = v6;
  return [(PHASESphericalPositionMetadata *)self initWithAzimuth:v9 elevation:v10 distance:v8];
}

- (PHASESphericalPositionMetadata)initWithAzimuth:(float)azimuth elevation:(float)elevation
{
  [(PHASESphericalPositionMetadata *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASESphericalPositionMetadata)initWithAzimuth:(float)azimuth elevation:(float)elevation distance:(float)distance
{
  v11.receiver = self;
  v11.super_class = PHASESphericalPositionMetadata;
  v6 = [PHASEAngularPositionMetadata initWithAzimuth:sel_initWithAzimuth_elevation_ elevation:?];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277D82BB8]);
    internalDistanceLock = v6->_internalDistanceLock;
    v6->_internalDistanceLock = v7;

    *&v9 = distance;
    [(PHASESphericalPositionMetadata *)v6 setDistance:v9];
  }

  return v6;
}

- (void)setDistance:(float)distance
{
  +[PHASESphericalPositionMetadata minimumDistance];
  if (v5 <= distance && (+[PHASESphericalPositionMetadata maximumDistance], v6 >= distance))
  {
    obj = self->_internalDistanceLock;
    objc_sync_enter(obj);
    self->_internalDistance = distance;
    objc_sync_exit(obj);
  }

  else
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE660];
    +[PHASESphericalPositionMetadata minimumDistance];
    v10 = v9;
    +[PHASESphericalPositionMetadata maximumDistance];
    [v7 raise:v8 format:{@"The distance: %f is out of range [%f, %f].", distance, *&v10, v11}];
  }
}

- (float)distance
{
  v3 = self->_internalDistanceLock;
  objc_sync_enter(v3);
  internalDistance = self->_internalDistance;
  objc_sync_exit(v3);

  return internalDistance;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v16.receiver = self;
      v16.super_class = PHASESphericalPositionMetadata;
      if ([(PHASEAngularPositionMetadata *)&v16 isEqual:v5])
      {
        [(PHASESphericalPositionMetadata *)self distance];
        v7 = v6;
        [(PHASESphericalPositionMetadata *)v5 distance];
        v9 = v8;
        +[PHASEAngularPositionMetadata epsilon];
        LODWORD(v11) = v10;
        LODWORD(v12) = v7;
        LODWORD(v13) = v9;
        v14 = [(PHASESphericalPositionMetadata *)self floatsAreEqual:v12 b:v13 eps:v11];
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = PHASESphericalPositionMetadata;
  v3 = [(PHASEAngularPositionMetadata *)&v8 hash];
  v4 = MEMORY[0x277CCABB0];
  [(PHASESphericalPositionMetadata *)self distance];
  v5 = [v4 numberWithFloat:?];
  v6 = [v5 hash];

  return v6 ^ v3;
}

@end