@interface MLCPaddingLayer
+ (BOOL)supportsDataType:(int)type onDevice:(id)device;
+ (MLCPaddingLayer)layerWithConstantPadding:(NSArray *)padding constantValue:(float)constantValue;
+ (MLCPaddingLayer)layerWithReflectionPadding:(NSArray *)padding;
+ (MLCPaddingLayer)layerWithSymmetricPadding:(NSArray *)padding;
+ (MLCPaddingLayer)layerWithZeroPadding:(NSArray *)padding;
- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor;
- (BOOL)isSupportedShapeForTensorSources:(id)sources;
- (MLCPaddingLayer)initWithPaddingType:(int)type paddingSizes:(id)sizes constantValue:(float)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)resultTensorFromSources:(id)sources;
- (id)summarizedDOTDescription;
- (unint64_t)resultSizeFromSourceSize:(unint64_t)size dimension:(unint64_t)dimension;
@end

@implementation MLCPaddingLayer

+ (MLCPaddingLayer)layerWithReflectionPadding:(NSArray *)padding
{
  v4 = padding;
  v5 = [[self alloc] initWithPaddingType:1 paddingSizes:v4 constantValue:0.0];

  return v5;
}

+ (MLCPaddingLayer)layerWithSymmetricPadding:(NSArray *)padding
{
  v4 = padding;
  v5 = [[self alloc] initWithPaddingType:2 paddingSizes:v4 constantValue:0.0];

  return v5;
}

+ (MLCPaddingLayer)layerWithZeroPadding:(NSArray *)padding
{
  v4 = padding;
  v5 = [[self alloc] initWithPaddingType:0 paddingSizes:v4 constantValue:0.0];

  return v5;
}

+ (MLCPaddingLayer)layerWithConstantPadding:(NSArray *)padding constantValue:(float)constantValue
{
  v6 = padding;
  v7 = [self alloc];
  *&v8 = constantValue;
  v9 = [v7 initWithPaddingType:3 paddingSizes:v6 constantValue:v8];

  return v9;
}

- (MLCPaddingLayer)initWithPaddingType:(int)type paddingSizes:(id)sizes constantValue:(float)value
{
  sizesCopy = sizes;
  v19.receiver = self;
  v19.super_class = MLCPaddingLayer;
  v9 = [(MLCLayer *)&v19 initWithLabel:@"Padding"];
  v10 = v9;
  if (v9)
  {
    v9->_paddingType = type;
    if ([sizesCopy count] == 1)
    {
      v11 = [sizesCopy objectAtIndexedSubscript:0];
      unsignedIntegerValue = [v11 unsignedIntegerValue];
      v10->_paddingBottom = unsignedIntegerValue;
      v10->_paddingRight = unsignedIntegerValue;
      v10->_paddingTop = unsignedIntegerValue;
      v13 = &OBJC_IVAR___MLCPaddingLayer__paddingLeft;
    }

    else if ([sizesCopy count] == 2)
    {
      v10->_paddingTop = 0;
      v10->_paddingBottom = 0;
      v14 = [sizesCopy objectAtIndexedSubscript:0];
      v10->_paddingLeft = [v14 unsignedIntegerValue];

      v11 = [sizesCopy objectAtIndexedSubscript:1];
      unsignedIntegerValue = [v11 unsignedIntegerValue];
      v13 = &OBJC_IVAR___MLCPaddingLayer__paddingRight;
    }

    else
    {
      v15 = [sizesCopy objectAtIndexedSubscript:2];
      v10->_paddingLeft = [v15 unsignedIntegerValue];

      v16 = [sizesCopy objectAtIndexedSubscript:3];
      v10->_paddingRight = [v16 unsignedIntegerValue];

      v17 = [sizesCopy objectAtIndexedSubscript:0];
      v10->_paddingTop = [v17 unsignedIntegerValue];

      v11 = [sizesCopy objectAtIndexedSubscript:1];
      unsignedIntegerValue = [v11 unsignedIntegerValue];
      v13 = &OBJC_IVAR___MLCPaddingLayer__paddingBottom;
    }

    *(&v10->super.super.isa + *v13) = unsignedIntegerValue;

    v10->_constantValue = value;
  }

  return v10;
}

+ (BOOL)supportsDataType:(int)type onDevice:(id)device
{
  if ([device type])
  {
    return type == 1;
  }

  else
  {
    return ((type - 1) & 0xFFFFFFFD) == 0;
  }
}

- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor
{
  v63 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  v12 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor = [v12 descriptor];
  dataType = [descriptor dataType];

  [(MLCPaddingLayer *)self constantValue];
  if (![MLCTensor canConvertValue:dataType toDataType:?])
  {
    v21 = +[MLCLog framework];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v32 = NSStringFromSelector(a2);
      [(MLCPaddingLayer *)self constantValue];
      *buf = 138412802;
      v52 = v32;
      v53 = 2048;
      *v54 = v33;
      *&v54[8] = 1024;
      *&v54[10] = dataType;
      v34 = "%@: cannot compile padding layer as specified constant value = %f is too large for data type = %d";
LABEL_12:
      _os_log_error_impl(&dword_238C1D000, v21, OS_LOG_TYPE_ERROR, v34, buf, 0x1Cu);
    }

LABEL_16:
    v36 = 0;
    goto LABEL_17;
  }

  if (![MLCPaddingLayer supportsDataType:dataType onDevice:deviceCopy])
  {
    v21 = +[MLCLog framework];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v32 = NSStringFromSelector(a2);
      *buf = 138412802;
      v52 = v32;
      v53 = 1024;
      *v54 = dataType;
      *&v54[4] = 2112;
      *&v54[6] = deviceCopy;
      v34 = "%@: padding layer with data type = %d is not supported on a device = %@";
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  aSelector = a2;
  v49 = tensorCopy;
  computeEngine = [deviceCopy computeEngine];
  paddingType = [(MLCPaddingLayer *)self paddingType];
  paddingLeft = [(MLCPaddingLayer *)self paddingLeft];
  paddingRight = [(MLCPaddingLayer *)self paddingRight];
  paddingTop = [(MLCPaddingLayer *)self paddingTop];
  paddingBottom = [(MLCPaddingLayer *)self paddingBottom];
  [(MLCPaddingLayer *)self constantValue];
  v21 = [computeEngine paddingLayerWithPaddingType:paddingType paddingLeft:paddingLeft paddingRight:paddingRight paddingTop:paddingTop paddingBottom:paddingBottom constantValue:dataType dataType:?];

  if (!v21 || ![v21 count])
  {
    v35 = +[MLCLog framework];
    tensorCopy = v49;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [MLCPaddingLayer compileForDevice:? sourceTensors:? resultTensor:?];
    }

    goto LABEL_16;
  }

  v22 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor2 = [v22 descriptor];
  shape = [descriptor2 shape];
  v25 = [shape count];

  if (v25 == 3)
  {
    unsignedIntegerValue = 1;
    v31 = 2;
  }

  else
  {
    if (v25 != 4)
    {
      v45 = +[MLCLog framework];
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        [MLCPaddingLayer compileForDevice:tensorsCopy sourceTensors:? resultTensor:?];
      }

      goto LABEL_32;
    }

    v26 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor3 = [v26 descriptor];
    shape2 = [descriptor3 shape];
    v29 = [shape2 objectAtIndexedSubscript:2];
    unsignedIntegerValue = [v29 unsignedIntegerValue];

    v31 = 3;
  }

  v39 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor4 = [v39 descriptor];
  shape3 = [descriptor4 shape];
  v42 = [shape3 objectAtIndexedSubscript:v31];
  unsignedIntegerValue2 = [v42 unsignedIntegerValue];

  if ([(MLCPaddingLayer *)self paddingType]&& [(MLCPaddingLayer *)self paddingType]!= MLCPaddingTypeConstant && (unsignedIntegerValue2 <= [(MLCPaddingLayer *)self paddingLeft]|| unsignedIntegerValue2 <= [(MLCPaddingLayer *)self paddingRight]|| unsignedIntegerValue <= [(MLCPaddingLayer *)self paddingTop]|| unsignedIntegerValue <= [(MLCPaddingLayer *)self paddingBottom]))
  {
    v46 = +[MLCLog framework];
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      aSelectora = NSStringFromSelector(aSelector);
      *buf = 138413826;
      v52 = aSelectora;
      v53 = 2048;
      *v54 = [(MLCPaddingLayer *)self paddingLeft];
      *&v54[8] = 2048;
      *&v54[10] = [(MLCPaddingLayer *)self paddingRight];
      v55 = 2048;
      paddingTop2 = [(MLCPaddingLayer *)self paddingTop];
      v57 = 2048;
      paddingBottom2 = [(MLCPaddingLayer *)self paddingBottom];
      v59 = 2048;
      v60 = unsignedIntegerValue2;
      v61 = 2048;
      v62 = unsignedIntegerValue;
      _os_log_error_impl(&dword_238C1D000, v46, OS_LOG_TYPE_ERROR, "%@: padding size [%lu, %lu, %lu, %lu] must be less than the source tensor dimension size=[%lu, %lu]", buf, 0x48u);
    }

LABEL_32:
    v36 = 0;
    tensorCopy = v49;
    goto LABEL_17;
  }

  computeEngine2 = [deviceCopy computeEngine];
  tensorCopy = v49;
  v36 = [computeEngine2 compileLayerDeviceOps:v21 sourceTensors:tensorsCopy resultTensor:v49];

  v50.receiver = self;
  v50.super_class = MLCPaddingLayer;
  [(MLCLayer *)&v50 bindDevice:deviceCopy deviceOps:v21];
LABEL_17:

  v37 = *MEMORY[0x277D85DE8];
  return v36;
}

- (unint64_t)resultSizeFromSourceSize:(unint64_t)size dimension:(unint64_t)dimension
{
  v10.receiver = self;
  v10.super_class = MLCPaddingLayer;
  v6 = [(MLCLayer *)&v10 resultSizeFromSourceSize:size dimension:?];
  if (dimension == 2)
  {
    paddingTop = [(MLCPaddingLayer *)self paddingTop];
    paddingBottom = [(MLCPaddingLayer *)self paddingBottom];
    goto LABEL_5;
  }

  if (dimension == 3)
  {
    paddingTop = [(MLCPaddingLayer *)self paddingLeft];
    paddingBottom = [(MLCPaddingLayer *)self paddingRight];
LABEL_5:
    v6 += paddingTop + paddingBottom;
  }

  return v6;
}

- (id)resultTensorFromSources:(id)sources
{
  sourcesCopy = sources;
  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  v6 = [sourcesCopy objectAtIndexedSubscript:0];
  descriptor = [v6 descriptor];
  shape = [descriptor shape];
  v9 = [shape objectAtIndexedSubscript:0];
  [v5 setObject:v9 atIndexedSubscript:0];

  v10 = [sourcesCopy objectAtIndexedSubscript:0];
  descriptor2 = [v10 descriptor];
  shape2 = [descriptor2 shape];
  v13 = [shape2 objectAtIndexedSubscript:1];
  [v5 setObject:v13 atIndexedSubscript:1];

  v14 = [sourcesCopy objectAtIndexedSubscript:0];
  descriptor3 = [v14 descriptor];
  shape3 = [descriptor3 shape];
  v17 = [shape3 count];

  if (v17 == 3)
  {
    v26 = 2;
  }

  else
  {
    if (v17 != 4)
    {
      goto LABEL_6;
    }

    v18 = [sourcesCopy objectAtIndexedSubscript:0];
    descriptor4 = [v18 descriptor];
    shape4 = [descriptor4 shape];
    v21 = [shape4 objectAtIndexedSubscript:2];
    unsignedIntegerValue = [v21 unsignedIntegerValue];
    paddingTop = [(MLCPaddingLayer *)self paddingTop];
    v24 = paddingTop + [(MLCPaddingLayer *)self paddingBottom];

    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v24 + unsignedIntegerValue];
    [v5 setObject:v25 atIndexedSubscript:2];

    v26 = 3;
  }

  v27 = [sourcesCopy objectAtIndexedSubscript:0];
  descriptor5 = [v27 descriptor];
  shape5 = [descriptor5 shape];
  v30 = [shape5 objectAtIndexedSubscript:v26];
  unsignedIntegerValue2 = [v30 unsignedIntegerValue];
  paddingLeft = [(MLCPaddingLayer *)self paddingLeft];
  v33 = paddingLeft + [(MLCPaddingLayer *)self paddingRight];

  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v33 + unsignedIntegerValue2];
  [v5 setObject:v34 atIndexedSubscript:v26];

LABEL_6:
  v35 = [v5 copy];
  v36 = [sourcesCopy objectAtIndexedSubscript:0];
  descriptor6 = [v36 descriptor];
  v38 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v35, [descriptor6 dataType]);

  v39 = [MLCTensor tensorWithDescriptor:v38];

  return v39;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  paddingType = [(MLCPaddingLayer *)self paddingType];
  paddingLeft = [(MLCPaddingLayer *)self paddingLeft];
  paddingRight = [(MLCPaddingLayer *)self paddingRight];
  paddingTop = [(MLCPaddingLayer *)self paddingTop];
  paddingBottom = [(MLCPaddingLayer *)self paddingBottom];
  [(MLCPaddingLayer *)self constantValue];
  v12 = v11;
  conditionalTreeNode = [(MLCLayer *)self conditionalTreeNode];
  resultTensors = [(MLCLayer *)self resultTensors];
  v15 = [v3 stringWithFormat:@"%@: { paddingType=%d, paddingLeft=%lu, paddingRight=%lu, paddingTop=%lu, paddingBottom=%lu, constantValue=%f, conditionalTreeNode=%@, resultTensor = %@ }", v5, paddingType, paddingLeft, paddingRight, paddingTop, paddingBottom, *&v12, conditionalTreeNode, resultTensors];

  return v15;
}

- (id)summarizedDOTDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  layerID = [(MLCLayer *)self layerID];
  v7 = MLCPaddingTypeDebugDescription([(MLCPaddingLayer *)self paddingType]);
  [(MLCPaddingLayer *)self constantValue];
  v9 = [v3 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Padding Type: %@     Constant Value: %.03f<BR />Padding Left: %lu    Padding Right: %lu<BR />Padding Top: %lu     Padding Bottom: %lu</FONT>>", v5, layerID, v7, v8, -[MLCPaddingLayer paddingLeft](self, "paddingLeft"), -[MLCPaddingLayer paddingRight](self, "paddingRight"), -[MLCPaddingLayer paddingTop](self, "paddingTop"), -[MLCPaddingLayer paddingBottom](self, "paddingBottom")];

  return v9;
}

- (BOOL)isSupportedShapeForTensorSources:(id)sources
{
  sourcesCopy = sources;
  if ([sourcesCopy count])
  {
    v4 = 0;
    do
    {
      v5 = [sourcesCopy objectAtIndexedSubscript:v4];
      descriptor = [v5 descriptor];
      shape = [descriptor shape];
      v8 = [shape count];

      v9 = v8 > 2;
      if (v8 <= 2)
      {
        break;
      }

      ++v4;
    }

    while (v4 < [sourcesCopy count]);
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14[4] = *MEMORY[0x277D85DE8];
  v4 = [objc_opt_class() allocWithZone:zone];
  paddingType = [(MLCPaddingLayer *)self paddingType];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MLCPaddingLayer paddingLeft](self, "paddingLeft")}];
  v14[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MLCPaddingLayer paddingRight](self, "paddingRight")}];
  v14[1] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MLCPaddingLayer paddingTop](self, "paddingTop")}];
  v14[2] = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MLCPaddingLayer paddingBottom](self, "paddingBottom")}];
  v14[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:4];
  [(MLCPaddingLayer *)self constantValue];
  v11 = [v4 initWithPaddingType:paddingType paddingSizes:v10 constantValue:?];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)compileForDevice:(const char *)a1 sourceTensors:(void *)a2 resultTensor:.cold.1(const char *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(a1);
  v11 = [a2 objectAtIndexedSubscript:0];
  OUTLINED_FUNCTION_0_3(&dword_238C1D000, v4, v5, "%@: Source tensor shape not supported=%@", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:(const char *)a1 sourceTensors:resultTensor:.cold.2(const char *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_0_3(&dword_238C1D000, v2, v3, "%@: failure to create deviceOps=%@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end