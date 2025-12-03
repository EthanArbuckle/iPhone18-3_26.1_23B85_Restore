@interface MLCSelectionLayer
+ (MLCSelectionLayer)layer;
- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor;
- (MLCSelectionLayer)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)resultTensorFromSources:(id)sources;
- (id)summarizedDOTDescription;
@end

@implementation MLCSelectionLayer

+ (MLCSelectionLayer)layer
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (MLCSelectionLayer)init
{
  v3.receiver = self;
  v3.super_class = MLCSelectionLayer;
  return [(MLCLayer *)&v3 initWithLabel:@"Selection"];
}

- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor
{
  deviceCopy = device;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  if (!tensorsCopy)
  {
    selectLayer = +[MLCLog framework];
    if (os_log_type_enabled(selectLayer, OS_LOG_TYPE_ERROR))
    {
      [MLCSelectionLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_18;
  }

  if ([tensorsCopy count] != 3)
  {
    selectLayer = +[MLCLog framework];
    if (os_log_type_enabled(selectLayer, OS_LOG_TYPE_ERROR))
    {
      [MLCSelectionLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_18;
  }

  v12 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor = [v12 descriptor];
  dataType = [descriptor dataType];

  if (dataType != 4)
  {
    selectLayer = +[MLCLog framework];
    if (os_log_type_enabled(selectLayer, OS_LOG_TYPE_ERROR))
    {
      [MLCSelectionLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_18;
  }

  computeEngine = [deviceCopy computeEngine];
  v16 = objc_opt_respondsToSelector();

  if ((v16 & 1) == 0)
  {
    selectLayer = 0;
LABEL_15:
    v21 = +[MLCLog framework];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [MLCScatterLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

LABEL_18:
    v20 = 0;
    goto LABEL_19;
  }

  computeEngine2 = [deviceCopy computeEngine];
  selectLayer = [computeEngine2 selectLayer];

  if (!selectLayer || ![selectLayer count])
  {
    goto LABEL_15;
  }

  computeEngine3 = [deviceCopy computeEngine];
  v20 = [computeEngine3 compileLayerDeviceOps:selectLayer sourceTensors:tensorsCopy resultTensor:tensorCopy];

  v23.receiver = self;
  v23.super_class = MLCSelectionLayer;
  [(MLCLayer *)&v23 bindDevice:deviceCopy deviceOps:selectLayer];
LABEL_19:

  return v20;
}

- (id)resultTensorFromSources:(id)sources
{
  v25[2] = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  context = objc_autoreleasePoolPush();
  v5 = [sourcesCopy objectAtIndexedSubscript:1];
  descriptor = [v5 descriptor];
  dataType = [descriptor dataType];

  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v9 = [sourcesCopy objectAtIndexedSubscript:0];
  v25[0] = v9;
  v10 = [sourcesCopy objectAtIndexedSubscript:1];
  v25[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v23.receiver = self;
  v23.super_class = MLCSelectionLayer;
  v12 = [(MLCLayer *)&v23 resultTensorsFromBroadcastableSources:v11 resultTensorDataType:dataType];
  [v8 setObject:v12 atIndexedSubscript:0];

  v13 = [sourcesCopy objectAtIndexedSubscript:1];
  v24[0] = v13;
  v14 = [sourcesCopy objectAtIndexedSubscript:2];
  v24[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v22.receiver = self;
  v22.super_class = MLCSelectionLayer;
  v16 = [(MLCLayer *)&v22 resultTensorsFromBroadcastableSources:v15 resultTensorDataType:dataType];
  [v8 setObject:v16 atIndexedSubscript:1];

  v21.receiver = self;
  v21.super_class = MLCSelectionLayer;
  v17 = [(MLCLayer *)&v21 resultTensorsFromBroadcastableSources:v8 resultTensorDataType:dataType];

  objc_autoreleasePoolPop(context);
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"%@", v4];

  return v5;
}

- (id)summarizedDOTDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10></FONT>>", v5, -[MLCLayer layerID](self, "layerID")];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_opt_class() allocWithZone:zone];

  return [v3 init];
}

- (void)compileForDevice:(const char *)a1 sourceTensors:resultTensor:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:(const char *)a1 sourceTensors:resultTensor:.cold.2(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:(const char *)a1 sourceTensors:resultTensor:.cold.4(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end