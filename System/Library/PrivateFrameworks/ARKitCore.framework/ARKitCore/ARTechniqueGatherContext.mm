@interface ARTechniqueGatherContext
- (ARTechniqueGatherContext)initWithCoder:(id)coder;
- (ARTechniqueGatherContext)initWithParentContext:(id)context;
- (BOOL)gatheredDataWasAlreadyCaptured;
- (NSString)description;
- (id)anchorsToAdd;
- (id)anchorsToRemove;
- (id)captureGatheredData;
- (id)imageData;
- (id)resultDataOfClass:(Class)class;
- (int64_t)cameraPosition;
@end

@implementation ARTechniqueGatherContext

- (ARTechniqueGatherContext)initWithParentContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = ARTechniqueGatherContext;
  v6 = [(ARTechniqueGatherContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_parentContext, context);
    v7->_stateLock._os_unfair_lock_opaque = 0;
    v7->_resultsCaptured = 0;
  }

  return v7;
}

- (id)captureGatheredData
{
  v3 = objc_opt_new();
  gatheredData = [(ARTechniqueGatherContext *)self gatheredData];
  [v3 addObjectsFromArray:gatheredData];

  os_unfair_lock_lock(&self->_stateLock);
  self->_resultsCaptured = 1;
  os_unfair_lock_unlock(&self->_stateLock);

  return v3;
}

- (id)imageData
{
  parentContext = [(ARTechniqueGatherContext *)self parentContext];
  imageData = [parentContext imageData];

  return imageData;
}

- (int64_t)cameraPosition
{
  parentContext = [(ARTechniqueGatherContext *)self parentContext];
  cameraPosition = [parentContext cameraPosition];

  return cameraPosition;
}

- (id)resultDataOfClass:(Class)class
{
  v5 = [self->_parentContext resultDataOfClass:?];
  gatheredData = [(ARTechniqueGatherContext *)self gatheredData];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__ARTechniqueGatherContext_resultDataOfClass___block_invoke;
  v12[3] = &__block_descriptor_40_e41_B24__0___ARResultData__8__NSDictionary_16lu32l8;
  v12[4] = class;
  v7 = [MEMORY[0x1E696AE18] predicateWithBlock:v12];
  v8 = [gatheredData filteredArrayUsingPredicate:v7];

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
  parentContext = [(ARTechniqueGatherContext *)self parentContext];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    parentContext2 = [(ARTechniqueGatherContext *)self parentContext];
    anchorsToAdd = [parentContext2 anchorsToAdd];
  }

  else
  {
    anchorsToAdd = 0;
  }

  return anchorsToAdd;
}

- (id)anchorsToRemove
{
  parentContext = [(ARTechniqueGatherContext *)self parentContext];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    parentContext2 = [(ARTechniqueGatherContext *)self parentContext];
    anchorsToRemove = [parentContext2 anchorsToRemove];
  }

  else
  {
    anchorsToRemove = 0;
  }

  return anchorsToRemove;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v10.receiver = self;
  v10.super_class = ARTechniqueGatherContext;
  v4 = [(ARTechniqueGatherContext *)&v10 description];
  v5 = [v3 stringWithFormat:@"%@\n", v4];

  gatheredData = [(ARTechniqueGatherContext *)self gatheredData];
  [v5 appendFormat:@"gatheredData: %@\n", gatheredData];

  imageData = [(ARTechniqueGatherContext *)self imageData];
  [v5 appendFormat:@"imageData: %@\n", imageData];

  parentContext = [(ARTechniqueGatherContext *)self parentContext];
  [v5 appendFormat:@"parentContext: %@\n", parentContext];

  return v5;
}

- (ARTechniqueGatherContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ARTechniqueGatherContext;
  v5 = [(ARTechniqueGatherContext *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"parentContext"];
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