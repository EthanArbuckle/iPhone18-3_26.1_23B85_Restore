@interface ARTechniqueGatherContext
- (ARTechniqueGatherContext)initWithCoder:(id)a3;
- (ARTechniqueGatherContext)initWithParentContext:(id)a3;
- (BOOL)gatheredDataWasAlreadyCaptured;
- (NSString)description;
- (id)anchorsToAdd;
- (id)anchorsToRemove;
- (id)captureGatheredData;
- (id)imageData;
- (id)resultDataOfClass:(Class)a3;
- (int64_t)cameraPosition;
@end

@implementation ARTechniqueGatherContext

- (ARTechniqueGatherContext)initWithParentContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ARTechniqueGatherContext;
  v6 = [(ARTechniqueGatherContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_parentContext, a3);
    v7->_stateLock._os_unfair_lock_opaque = 0;
    v7->_resultsCaptured = 0;
  }

  return v7;
}

- (id)captureGatheredData
{
  v3 = objc_opt_new();
  v4 = [(ARTechniqueGatherContext *)self gatheredData];
  [v3 addObjectsFromArray:v4];

  os_unfair_lock_lock(&self->_stateLock);
  self->_resultsCaptured = 1;
  os_unfair_lock_unlock(&self->_stateLock);

  return v3;
}

- (id)imageData
{
  v2 = [(ARTechniqueGatherContext *)self parentContext];
  v3 = [v2 imageData];

  return v3;
}

- (int64_t)cameraPosition
{
  v2 = [(ARTechniqueGatherContext *)self parentContext];
  v3 = [v2 cameraPosition];

  return v3;
}

- (id)resultDataOfClass:(Class)a3
{
  v5 = [self->_parentContext resultDataOfClass:?];
  v6 = [(ARTechniqueGatherContext *)self gatheredData];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__ARTechniqueGatherContext_resultDataOfClass___block_invoke;
  v12[3] = &__block_descriptor_40_e41_B24__0___ARResultData__8__NSDictionary_16lu32l8;
  v12[4] = a3;
  v7 = [MEMORY[0x1E696AE18] predicateWithBlock:v12];
  v8 = [v6 filteredArrayUsingPredicate:v7];

  if (v5)
  {
    v9 = [v5 arrayByAddingObjectsFromArray:v8];
  }

  else
  {
    v9 = v8;
  }

  v10 = v9;

  return v10;
}

- (id)anchorsToAdd
{
  v3 = [(ARTechniqueGatherContext *)self parentContext];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(ARTechniqueGatherContext *)self parentContext];
    v6 = [v5 anchorsToAdd];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)anchorsToRemove
{
  v3 = [(ARTechniqueGatherContext *)self parentContext];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(ARTechniqueGatherContext *)self parentContext];
    v6 = [v5 anchorsToRemove];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v10.receiver = self;
  v10.super_class = ARTechniqueGatherContext;
  v4 = [(ARTechniqueGatherContext *)&v10 description];
  v5 = [v3 stringWithFormat:@"%@\n", v4];

  v6 = [(ARTechniqueGatherContext *)self gatheredData];
  [v5 appendFormat:@"gatheredData: %@\n", v6];

  v7 = [(ARTechniqueGatherContext *)self imageData];
  [v5 appendFormat:@"imageData: %@\n", v7];

  v8 = [(ARTechniqueGatherContext *)self parentContext];
  [v5 appendFormat:@"parentContext: %@\n", v8];

  return v5;
}

- (ARTechniqueGatherContext)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ARTechniqueGatherContext;
  v5 = [(ARTechniqueGatherContext *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"parentContext"];
    parentContext = v5->_parentContext;
    v5->_parentContext = v6;
  }

  return v5;
}

- (BOOL)gatheredDataWasAlreadyCaptured
{
  os_unfair_lock_lock(&self->_stateLock);
  resultsCaptured = self->_resultsCaptured;
  os_unfair_lock_unlock(&self->_stateLock);
  return resultsCaptured;
}

@end