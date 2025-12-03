@interface VNClustererQueryOptions
- (VNClustererQueryOptions)initWithType:(id)type cachePath:(id)path state:(id)state threshold:(float)threshold;
- (VNClustererQueryOptions)initWithType:(id)type cachePath:(id)path state:(id)state threshold:(float)threshold requestRevision:(unint64_t)revision;
- (VNClustererQueryOptions)initWithType:(id)type cachePath:(id)path state:(id)state threshold:(float)threshold torsoThreshold:(float)torsoThreshold;
- (VNClustererQueryOptions)initWithType:(id)type cachePath:(id)path state:(id)state threshold:(float)threshold torsoThreshold:(float)torsoThreshold requestRevision:(unint64_t)revision;
- (VNClustererQueryOptions)initWithType:(id)type cachePath:(id)path state:(id)state threshold:(float)threshold torsoThreshold:(float)torsoThreshold requestRevision:(unint64_t)revision torsoprintRequestRevision:(unint64_t)requestRevision;
@end

@implementation VNClustererQueryOptions

- (VNClustererQueryOptions)initWithType:(id)type cachePath:(id)path state:(id)state threshold:(float)threshold torsoThreshold:(float)torsoThreshold requestRevision:(unint64_t)revision torsoprintRequestRevision:(unint64_t)requestRevision
{
  typeCopy = type;
  pathCopy = path;
  stateCopy = state;
  if (stateCopy)
  {
    v23.receiver = self;
    v23.super_class = VNClustererQueryOptions;
    *&v19 = threshold;
    *&v20 = torsoThreshold;
    self = [(VNClustererOptions *)&v23 initWithType:typeCopy cachePath:pathCopy state:stateCopy threshold:revision torsoThreshold:requestRevision requestRevision:v19 torsoprintRequestRevision:v20];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (VNClustererQueryOptions)initWithType:(id)type cachePath:(id)path state:(id)state threshold:(float)threshold requestRevision:(unint64_t)revision
{
  typeCopy = type;
  pathCopy = path;
  stateCopy = state;
  if (stateCopy)
  {
    v18.receiver = self;
    v18.super_class = VNClustererQueryOptions;
    *&v15 = threshold;
    self = [(VNClustererOptions *)&v18 initWithType:typeCopy cachePath:pathCopy state:stateCopy threshold:revision requestRevision:v15];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (VNClustererQueryOptions)initWithType:(id)type cachePath:(id)path state:(id)state threshold:(float)threshold torsoThreshold:(float)torsoThreshold requestRevision:(unint64_t)revision
{
  typeCopy = type;
  pathCopy = path;
  stateCopy = state;
  if (stateCopy)
  {
    *&v17 = threshold;
    *&v18 = torsoThreshold;
    self = [(VNClustererQueryOptions *)self initWithType:typeCopy cachePath:pathCopy state:stateCopy threshold:revision torsoThreshold:1 requestRevision:v17 torsoprintRequestRevision:v18];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (VNClustererQueryOptions)initWithType:(id)type cachePath:(id)path state:(id)state threshold:(float)threshold torsoThreshold:(float)torsoThreshold
{
  typeCopy = type;
  pathCopy = path;
  stateCopy = state;
  if (stateCopy)
  {
    *&v15 = threshold;
    *&v16 = torsoThreshold;
    self = [(VNClustererQueryOptions *)self initWithType:typeCopy cachePath:pathCopy state:stateCopy threshold:1 torsoThreshold:1 requestRevision:v15 torsoprintRequestRevision:v16];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (VNClustererQueryOptions)initWithType:(id)type cachePath:(id)path state:(id)state threshold:(float)threshold
{
  typeCopy = type;
  pathCopy = path;
  stateCopy = state;
  if (stateCopy)
  {
    *&v13 = threshold;
    self = [(VNClustererQueryOptions *)self initWithType:typeCopy cachePath:pathCopy state:stateCopy threshold:1 torsoThreshold:1 requestRevision:v13 torsoprintRequestRevision:0.0];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end