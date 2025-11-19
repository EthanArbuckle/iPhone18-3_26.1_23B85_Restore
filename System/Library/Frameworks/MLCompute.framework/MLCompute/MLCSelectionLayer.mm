@interface MLCSelectionLayer
+ (MLCSelectionLayer)layer;
- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5;
- (MLCSelectionLayer)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)resultTensorFromSources:(id)a3;
- (id)summarizedDOTDescription;
@end

@implementation MLCSelectionLayer

+ (MLCSelectionLayer)layer
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (MLCSelectionLayer)init
{
  v3.receiver = self;
  v3.super_class = MLCSelectionLayer;
  return [(MLCLayer *)&v3 initWithLabel:@"Selection"];
}

- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v10)
  {
    v18 = +[MLCLog framework];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [MLCSelectionLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_18;
  }

  if ([v10 count] != 3)
  {
    v18 = +[MLCLog framework];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [MLCSelectionLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_18;
  }

  v12 = [v10 objectAtIndexedSubscript:0];
  v13 = [v12 descriptor];
  v14 = [v13 dataType];

  if (v14 != 4)
  {
    v18 = +[MLCLog framework];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [MLCSelectionLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_18;
  }

  v15 = [v9 computeEngine];
  v16 = objc_opt_respondsToSelector();

  if ((v16 & 1) == 0)
  {
    v18 = 0;
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

  v17 = [v9 computeEngine];
  v18 = [v17 selectLayer];

  if (!v18 || ![v18 count])
  {
    goto LABEL_15;
  }

  v19 = [v9 computeEngine];
  v20 = [v19 compileLayerDeviceOps:v18 sourceTensors:v10 resultTensor:v11];

  v23.receiver = self;
  v23.super_class = MLCSelectionLayer;
  [(MLCLayer *)&v23 bindDevice:v9 deviceOps:v18];
LABEL_19:

  return v20;
}

- (id)resultTensorFromSources:(id)a3
{
  v25[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  context = objc_autoreleasePoolPush();
  v5 = [v4 objectAtIndexedSubscript:1];
  v6 = [v5 descriptor];
  v7 = [v6 dataType];

  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v9 = [v4 objectAtIndexedSubscript:0];
  v25[0] = v9;
  v10 = [v4 objectAtIndexedSubscript:1];
  v25[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v23.receiver = self;
  v23.super_class = MLCSelectionLayer;
  v12 = [(MLCLayer *)&v23 resultTensorsFromBroadcastableSources:v11 resultTensorDataType:v7];
  [v8 setObject:v12 atIndexedSubscript:0];

  v13 = [v4 objectAtIndexedSubscript:1];
  v24[0] = v13;
  v14 = [v4 objectAtIndexedSubscript:2];
  v24[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v22.receiver = self;
  v22.super_class = MLCSelectionLayer;
  v16 = [(MLCLayer *)&v22 resultTensorsFromBroadcastableSources:v15 resultTensorDataType:v7];
  [v8 setObject:v16 atIndexedSubscript:1];

  v21.receiver = self;
  v21.super_class = MLCSelectionLayer;
  v17 = [(MLCLayer *)&v21 resultTensorsFromBroadcastableSources:v8 resultTensorDataType:v7];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_opt_class() allocWithZone:a3];

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