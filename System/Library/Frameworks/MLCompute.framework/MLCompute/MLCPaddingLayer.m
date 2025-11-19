@interface MLCPaddingLayer
+ (BOOL)supportsDataType:(int)a3 onDevice:(id)a4;
+ (MLCPaddingLayer)layerWithConstantPadding:(NSArray *)padding constantValue:(float)constantValue;
+ (MLCPaddingLayer)layerWithReflectionPadding:(NSArray *)padding;
+ (MLCPaddingLayer)layerWithSymmetricPadding:(NSArray *)padding;
+ (MLCPaddingLayer)layerWithZeroPadding:(NSArray *)padding;
- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5;
- (BOOL)isSupportedShapeForTensorSources:(id)a3;
- (MLCPaddingLayer)initWithPaddingType:(int)a3 paddingSizes:(id)a4 constantValue:(float)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)resultTensorFromSources:(id)a3;
- (id)summarizedDOTDescription;
- (unint64_t)resultSizeFromSourceSize:(unint64_t)a3 dimension:(unint64_t)a4;
@end

@implementation MLCPaddingLayer

+ (MLCPaddingLayer)layerWithReflectionPadding:(NSArray *)padding
{
  v4 = padding;
  v5 = [[a1 alloc] initWithPaddingType:1 paddingSizes:v4 constantValue:0.0];

  return v5;
}

+ (MLCPaddingLayer)layerWithSymmetricPadding:(NSArray *)padding
{
  v4 = padding;
  v5 = [[a1 alloc] initWithPaddingType:2 paddingSizes:v4 constantValue:0.0];

  return v5;
}

+ (MLCPaddingLayer)layerWithZeroPadding:(NSArray *)padding
{
  v4 = padding;
  v5 = [[a1 alloc] initWithPaddingType:0 paddingSizes:v4 constantValue:0.0];

  return v5;
}

+ (MLCPaddingLayer)layerWithConstantPadding:(NSArray *)padding constantValue:(float)constantValue
{
  v6 = padding;
  v7 = [a1 alloc];
  *&v8 = constantValue;
  v9 = [v7 initWithPaddingType:3 paddingSizes:v6 constantValue:v8];

  return v9;
}

- (MLCPaddingLayer)initWithPaddingType:(int)a3 paddingSizes:(id)a4 constantValue:(float)a5
{
  v8 = a4;
  v19.receiver = self;
  v19.super_class = MLCPaddingLayer;
  v9 = [(MLCLayer *)&v19 initWithLabel:@"Padding"];
  v10 = v9;
  if (v9)
  {
    v9->_paddingType = a3;
    if ([v8 count] == 1)
    {
      v11 = [v8 objectAtIndexedSubscript:0];
      v12 = [v11 unsignedIntegerValue];
      v10->_paddingBottom = v12;
      v10->_paddingRight = v12;
      v10->_paddingTop = v12;
      v13 = &OBJC_IVAR___MLCPaddingLayer__paddingLeft;
    }

    else if ([v8 count] == 2)
    {
      v10->_paddingTop = 0;
      v10->_paddingBottom = 0;
      v14 = [v8 objectAtIndexedSubscript:0];
      v10->_paddingLeft = [v14 unsignedIntegerValue];

      v11 = [v8 objectAtIndexedSubscript:1];
      v12 = [v11 unsignedIntegerValue];
      v13 = &OBJC_IVAR___MLCPaddingLayer__paddingRight;
    }

    else
    {
      v15 = [v8 objectAtIndexedSubscript:2];
      v10->_paddingLeft = [v15 unsignedIntegerValue];

      v16 = [v8 objectAtIndexedSubscript:3];
      v10->_paddingRight = [v16 unsignedIntegerValue];

      v17 = [v8 objectAtIndexedSubscript:0];
      v10->_paddingTop = [v17 unsignedIntegerValue];

      v11 = [v8 objectAtIndexedSubscript:1];
      v12 = [v11 unsignedIntegerValue];
      v13 = &OBJC_IVAR___MLCPaddingLayer__paddingBottom;
    }

    *(&v10->super.super.isa + *v13) = v12;

    v10->_constantValue = a5;
  }

  return v10;
}

+ (BOOL)supportsDataType:(int)a3 onDevice:(id)a4
{
  if ([a4 type])
  {
    return a3 == 1;
  }

  else
  {
    return ((a3 - 1) & 0xFFFFFFFD) == 0;
  }
}

- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5
{
  v63 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v10 objectAtIndexedSubscript:0];
  v13 = [v12 descriptor];
  v14 = [v13 dataType];

  [(MLCPaddingLayer *)self constantValue];
  if (![MLCTensor canConvertValue:v14 toDataType:?])
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
      *&v54[10] = v14;
      v34 = "%@: cannot compile padding layer as specified constant value = %f is too large for data type = %d";
LABEL_12:
      _os_log_error_impl(&dword_238C1D000, v21, OS_LOG_TYPE_ERROR, v34, buf, 0x1Cu);
    }

LABEL_16:
    v36 = 0;
    goto LABEL_17;
  }

  if (![MLCPaddingLayer supportsDataType:v14 onDevice:v9])
  {
    v21 = +[MLCLog framework];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v32 = NSStringFromSelector(a2);
      *buf = 138412802;
      v52 = v32;
      v53 = 1024;
      *v54 = v14;
      *&v54[4] = 2112;
      *&v54[6] = v9;
      v34 = "%@: padding layer with data type = %d is not supported on a device = %@";
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  aSelector = a2;
  v49 = v11;
  v15 = [v9 computeEngine];
  v16 = [(MLCPaddingLayer *)self paddingType];
  v17 = [(MLCPaddingLayer *)self paddingLeft];
  v18 = [(MLCPaddingLayer *)self paddingRight];
  v19 = [(MLCPaddingLayer *)self paddingTop];
  v20 = [(MLCPaddingLayer *)self paddingBottom];
  [(MLCPaddingLayer *)self constantValue];
  v21 = [v15 paddingLayerWithPaddingType:v16 paddingLeft:v17 paddingRight:v18 paddingTop:v19 paddingBottom:v20 constantValue:v14 dataType:?];

  if (!v21 || ![v21 count])
  {
    v35 = +[MLCLog framework];
    v11 = v49;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [MLCPaddingLayer compileForDevice:? sourceTensors:? resultTensor:?];
    }

    goto LABEL_16;
  }

  v22 = [v10 objectAtIndexedSubscript:0];
  v23 = [v22 descriptor];
  v24 = [v23 shape];
  v25 = [v24 count];

  if (v25 == 3)
  {
    v30 = 1;
    v31 = 2;
  }

  else
  {
    if (v25 != 4)
    {
      v45 = +[MLCLog framework];
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        [MLCPaddingLayer compileForDevice:v10 sourceTensors:? resultTensor:?];
      }

      goto LABEL_32;
    }

    v26 = [v10 objectAtIndexedSubscript:0];
    v27 = [v26 descriptor];
    v28 = [v27 shape];
    v29 = [v28 objectAtIndexedSubscript:2];
    v30 = [v29 unsignedIntegerValue];

    v31 = 3;
  }

  v39 = [v10 objectAtIndexedSubscript:0];
  v40 = [v39 descriptor];
  v41 = [v40 shape];
  v42 = [v41 objectAtIndexedSubscript:v31];
  v43 = [v42 unsignedIntegerValue];

  if ([(MLCPaddingLayer *)self paddingType]&& [(MLCPaddingLayer *)self paddingType]!= MLCPaddingTypeConstant && (v43 <= [(MLCPaddingLayer *)self paddingLeft]|| v43 <= [(MLCPaddingLayer *)self paddingRight]|| v30 <= [(MLCPaddingLayer *)self paddingTop]|| v30 <= [(MLCPaddingLayer *)self paddingBottom]))
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
      v56 = [(MLCPaddingLayer *)self paddingTop];
      v57 = 2048;
      v58 = [(MLCPaddingLayer *)self paddingBottom];
      v59 = 2048;
      v60 = v43;
      v61 = 2048;
      v62 = v30;
      _os_log_error_impl(&dword_238C1D000, v46, OS_LOG_TYPE_ERROR, "%@: padding size [%lu, %lu, %lu, %lu] must be less than the source tensor dimension size=[%lu, %lu]", buf, 0x48u);
    }

LABEL_32:
    v36 = 0;
    v11 = v49;
    goto LABEL_17;
  }

  v44 = [v9 computeEngine];
  v11 = v49;
  v36 = [v44 compileLayerDeviceOps:v21 sourceTensors:v10 resultTensor:v49];

  v50.receiver = self;
  v50.super_class = MLCPaddingLayer;
  [(MLCLayer *)&v50 bindDevice:v9 deviceOps:v21];
LABEL_17:

  v37 = *MEMORY[0x277D85DE8];
  return v36;
}

- (unint64_t)resultSizeFromSourceSize:(unint64_t)a3 dimension:(unint64_t)a4
{
  v10.receiver = self;
  v10.super_class = MLCPaddingLayer;
  v6 = [(MLCLayer *)&v10 resultSizeFromSourceSize:a3 dimension:?];
  if (a4 == 2)
  {
    v7 = [(MLCPaddingLayer *)self paddingTop];
    v8 = [(MLCPaddingLayer *)self paddingBottom];
    goto LABEL_5;
  }

  if (a4 == 3)
  {
    v7 = [(MLCPaddingLayer *)self paddingLeft];
    v8 = [(MLCPaddingLayer *)self paddingRight];
LABEL_5:
    v6 += v7 + v8;
  }

  return v6;
}

- (id)resultTensorFromSources:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  v6 = [v4 objectAtIndexedSubscript:0];
  v7 = [v6 descriptor];
  v8 = [v7 shape];
  v9 = [v8 objectAtIndexedSubscript:0];
  [v5 setObject:v9 atIndexedSubscript:0];

  v10 = [v4 objectAtIndexedSubscript:0];
  v11 = [v10 descriptor];
  v12 = [v11 shape];
  v13 = [v12 objectAtIndexedSubscript:1];
  [v5 setObject:v13 atIndexedSubscript:1];

  v14 = [v4 objectAtIndexedSubscript:0];
  v15 = [v14 descriptor];
  v16 = [v15 shape];
  v17 = [v16 count];

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

    v18 = [v4 objectAtIndexedSubscript:0];
    v19 = [v18 descriptor];
    v20 = [v19 shape];
    v21 = [v20 objectAtIndexedSubscript:2];
    v22 = [v21 unsignedIntegerValue];
    v23 = [(MLCPaddingLayer *)self paddingTop];
    v24 = v23 + [(MLCPaddingLayer *)self paddingBottom];

    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v24 + v22];
    [v5 setObject:v25 atIndexedSubscript:2];

    v26 = 3;
  }

  v27 = [v4 objectAtIndexedSubscript:0];
  v28 = [v27 descriptor];
  v29 = [v28 shape];
  v30 = [v29 objectAtIndexedSubscript:v26];
  v31 = [v30 unsignedIntegerValue];
  v32 = [(MLCPaddingLayer *)self paddingLeft];
  v33 = v32 + [(MLCPaddingLayer *)self paddingRight];

  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v33 + v31];
  [v5 setObject:v34 atIndexedSubscript:v26];

LABEL_6:
  v35 = [v5 copy];
  v36 = [v4 objectAtIndexedSubscript:0];
  v37 = [v36 descriptor];
  v38 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v35, [v37 dataType]);

  v39 = [MLCTensor tensorWithDescriptor:v38];

  return v39;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCPaddingLayer *)self paddingType];
  v7 = [(MLCPaddingLayer *)self paddingLeft];
  v8 = [(MLCPaddingLayer *)self paddingRight];
  v9 = [(MLCPaddingLayer *)self paddingTop];
  v10 = [(MLCPaddingLayer *)self paddingBottom];
  [(MLCPaddingLayer *)self constantValue];
  v12 = v11;
  v13 = [(MLCLayer *)self conditionalTreeNode];
  v14 = [(MLCLayer *)self resultTensors];
  v15 = [v3 stringWithFormat:@"%@: { paddingType=%d, paddingLeft=%lu, paddingRight=%lu, paddingTop=%lu, paddingBottom=%lu, constantValue=%f, conditionalTreeNode=%@, resultTensor = %@ }", v5, v6, v7, v8, v9, v10, *&v12, v13, v14];

  return v15;
}

- (id)summarizedDOTDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCLayer *)self layerID];
  v7 = MLCPaddingTypeDebugDescription([(MLCPaddingLayer *)self paddingType]);
  [(MLCPaddingLayer *)self constantValue];
  v9 = [v3 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Padding Type: %@     Constant Value: %.03f<BR />Padding Left: %lu    Padding Right: %lu<BR />Padding Top: %lu     Padding Bottom: %lu</FONT>>", v5, v6, v7, v8, -[MLCPaddingLayer paddingLeft](self, "paddingLeft"), -[MLCPaddingLayer paddingRight](self, "paddingRight"), -[MLCPaddingLayer paddingTop](self, "paddingTop"), -[MLCPaddingLayer paddingBottom](self, "paddingBottom")];

  return v9;
}

- (BOOL)isSupportedShapeForTensorSources:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = 0;
    do
    {
      v5 = [v3 objectAtIndexedSubscript:v4];
      v6 = [v5 descriptor];
      v7 = [v6 shape];
      v8 = [v7 count];

      v9 = v8 > 2;
      if (v8 <= 2)
      {
        break;
      }

      ++v4;
    }

    while (v4 < [v3 count]);
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14[4] = *MEMORY[0x277D85DE8];
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(MLCPaddingLayer *)self paddingType];
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
  v11 = [v4 initWithPaddingType:v5 paddingSizes:v10 constantValue:?];

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