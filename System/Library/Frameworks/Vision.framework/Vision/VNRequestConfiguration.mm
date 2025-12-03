@interface VNRequestConfiguration
- (NSDictionary)computeStageDeviceAssignments;
- (NSDictionary)resolvedComputeStageDeviceAssignments;
- (VNRequestConfiguration)initWithRequestClass:(Class)class;
- (id)computeDeviceForComputeStage:(id)stage;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)setComputeDevice:(id)device forComputeStage:(id)stage;
- (void)setComputeStageDeviceAssignments:(id)assignments;
- (void)setProcessingDevice:(id)device;
@end

@implementation VNRequestConfiguration

- (NSDictionary)resolvedComputeStageDeviceAssignments
{
  v8[2] = *MEMORY[0x1E69E9840];
  computeStageDeviceAssignments = self->_computeStageDeviceAssignments;
  if (computeStageDeviceAssignments)
  {
    v4 = [(NSMutableDictionary *)computeStageDeviceAssignments copy];
  }

  else if (self->_processingDevice)
  {
    v5 = [[VNProcessingDeviceComputeDeviceBridge alloc] initWithProcessingDevice:self->_processingDevice];
    v7[0] = @"VNComputeStageMain";
    v7[1] = @"VNComputeStagePostProcessing";
    v8[0] = v5;
    v8[1] = v5;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithRequestClass:", self->_requestClass}];
  v5 = v4;
  if (v4)
  {
    [v4 setResolvedRevision:self->_resolvedRevision];
    [v5 setDetectionLevel:self->_detectionLevel];
    [v5 setMetalContextPriority:self->_metalContextPriority];
    [v5 setModelExecutionPriority:self->_modelExecutionPriority];
    [v5 setPreferBackgroundProcessing:self->_preferBackgroundProcessing];
    [v5 setModelFileBackingStore:self->_modelFileBackingStore];
    [v5 setMaximumProcessingDimensionOnTheLongSide:self->_maximumProcessingDimensionOnTheLongSide];
    [v5 setMemoryPoolId:self->_memoryPoolId];
    objc_storeStrong(v5 + 6, self->_processingDevice);
    v6 = [(NSMutableDictionary *)self->_computeStageDeviceAssignments mutableCopy];
    v7 = v5[1];
    v5[1] = v6;
  }

  return v5;
}

- (id)description
{
  v24 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    for (i = objc_opt_class(); i && i != objc_opt_class(); i = [i superclass])
    {
      outCount = 0;
      v5 = class_copyPropertyList(i, &outCount);
      if (outCount)
      {
        for (j = 0; j < outCount; ++j)
        {
          v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:property_getName(v5[j])];
          [v3 addObject:v7];
        }
      }

      free(v5);
    }
  }

  else
  {
    v3 = 0;
  }

  [v3 sortUsingSelector:sel_compare_];
  v8 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:{32 * objc_msgSend(v3, "count")}];
  v21.receiver = self;
  v21.super_class = VNRequestConfiguration;
  v9 = [(VNRequestConfiguration *)&v21 description];
  [v8 appendString:v9];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = v3;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v11)
  {
    v12 = *v18;
    do
    {
      for (k = 0; k != v11; ++k)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v17 + 1) + 8 * k);
        v15 = [(VNRequestConfiguration *)self valueForKey:v14];
        [v8 appendFormat:@"\n    %@=%@", v14, v15, v17];
      }

      v11 = [v10 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v11);
  }

  return v8;
}

- (void)setComputeStageDeviceAssignments:(id)assignments
{
  assignmentsCopy = assignments;
  processingDevice = self->_processingDevice;
  self->_processingDevice = 0;

  v5 = [assignmentsCopy mutableCopy];
  computeStageDeviceAssignments = self->_computeStageDeviceAssignments;
  self->_computeStageDeviceAssignments = v5;
}

- (NSDictionary)computeStageDeviceAssignments
{
  v2 = [(NSMutableDictionary *)self->_computeStageDeviceAssignments copy];

  return v2;
}

- (void)setComputeDevice:(id)device forComputeStage:(id)stage
{
  deviceCopy = device;
  stageCopy = stage;
  processingDevice = self->_processingDevice;
  self->_processingDevice = 0;

  computeStageDeviceAssignments = self->_computeStageDeviceAssignments;
  if (deviceCopy)
  {
    if (!computeStageDeviceAssignments)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v10 = self->_computeStageDeviceAssignments;
      self->_computeStageDeviceAssignments = v9;

      computeStageDeviceAssignments = self->_computeStageDeviceAssignments;
    }

    [(NSMutableDictionary *)computeStageDeviceAssignments setObject:deviceCopy forKey:stageCopy];
  }

  else
  {
    [(NSMutableDictionary *)computeStageDeviceAssignments removeObjectForKey:stageCopy];
  }
}

- (id)computeDeviceForComputeStage:(id)stage
{
  v3 = [(NSMutableDictionary *)self->_computeStageDeviceAssignments objectForKey:stage];

  return v3;
}

- (void)setProcessingDevice:(id)device
{
  deviceCopy = device;
  computeStageDeviceAssignments = self->_computeStageDeviceAssignments;
  self->_computeStageDeviceAssignments = 0;

  processingDevice = self->_processingDevice;
  self->_processingDevice = deviceCopy;
}

- (VNRequestConfiguration)initWithRequestClass:(Class)class
{
  v8.receiver = self;
  v8.super_class = VNRequestConfiguration;
  v4 = [(VNRequestConfiguration *)&v8 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_requestClass, class);
    v5->_resolvedRevision = [(objc_class *)class defaultRevision];
    v5->_detectionLevel = 0;
    v5->_metalContextPriority = 1;
    v5->_preferBackgroundProcessing = 0;
    *&v5->_modelExecutionPriority = 0u;
    *&v5->_maximumProcessingDimensionOnTheLongSide = 0u;
    v6 = v5;
  }

  return v5;
}

@end