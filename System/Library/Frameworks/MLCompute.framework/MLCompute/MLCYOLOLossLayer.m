@interface MLCYOLOLossLayer
+ (MLCYOLOLossLayer)layerWithDescriptor:(MLCYOLOLossDescriptor *)lossDescriptor;
- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5;
- (MLCYOLOLossLayer)initWithLossDescriptor:(id)a3;
- (id)description;
- (id)summarizedDOTDescription;
- (unint64_t)resultSizeFromSourceSize:(unint64_t)a3 dimension:(unint64_t)a4;
@end

@implementation MLCYOLOLossLayer

+ (MLCYOLOLossLayer)layerWithDescriptor:(MLCYOLOLossDescriptor *)lossDescriptor
{
  v4 = lossDescriptor;
  v5 = [[a1 alloc] initWithLossDescriptor:v4];

  return v5;
}

- (MLCYOLOLossLayer)initWithLossDescriptor:(id)a3
{
  v5 = a3;
  v6 = [v5 spatialPositionLossDescriptor];
  v9.receiver = self;
  v9.super_class = MLCYOLOLossLayer;
  v7 = [(MLCLossLayer *)&v9 initWithDescriptor:v6 weights:0];

  if (v7)
  {
    objc_storeStrong(&v7->_yoloLossDescriptor, a3);
  }

  return v7;
}

- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v10 objectAtIndexedSubscript:0];
  v13 = [v12 descriptor];
  v14 = [v13 dataType];

  if (![(MLCLayer *)MLCYOLOLossLayer supportsDataType:v14 onDevice:v9])
  {
    v35 = +[MLCLog framework];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v38 = NSStringFromSelector(a2);
      *buf = 138412802;
      v41 = v38;
      v42 = 1024;
      v43 = v14;
      v44 = 2112;
      v45 = v9;
      _os_log_error_impl(&dword_238C1D000, v35, OS_LOG_TYPE_ERROR, "%@: YOLOLoss layer with data type = %d is not supported on a device = %@", buf, 0x1Cu);
    }

    v29 = 0;
    goto LABEL_11;
  }

  v15 = [v10 objectAtIndexedSubscript:0];
  v16 = [v15 descriptor];
  v17 = [v16 shape];
  v18 = [v17 objectAtIndexedSubscript:0];
  v19 = [v18 unsignedIntegerValue];

  v20 = 1.0 / v19;
  v21 = [(MLCYOLOLossLayer *)self yoloLossDescriptor];
  [v21 scaleNoObjectConfidenceLoss];
  *&v23 = v20 * v22;
  [v21 setScaleNoObjectConfidenceLoss:v23];

  v24 = [(MLCYOLOLossLayer *)self yoloLossDescriptor];
  [v24 scaleObjectConfidenceLoss];
  *&v26 = v20 * v25;
  [v24 setScaleObjectConfidenceLoss:v26];

  v27 = [v9 computeEngine];
  v28 = [(MLCYOLOLossLayer *)self yoloLossDescriptor];
  v29 = [v27 lossYOLOLayerWithDescriptor:v28];

  if (!v29 || ![v29 count])
  {
    v35 = +[MLCLog framework];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [MLCPoolingLayer compileForDevice:a2 sourceTensors:v29 resultTensor:v35];
    }

LABEL_11:
    v31 = 0;
    goto LABEL_12;
  }

  v30 = [v9 computeEngine];
  v31 = [v30 compileLayerDeviceOps:v29 sourceTensors:v10 resultTensor:v11];

  v39.receiver = self;
  v39.super_class = MLCYOLOLossLayer;
  [(MLCLayer *)&v39 bindDevice:v9 deviceOps:v29];
  v32 = [v9 engine];
  v33 = [v32 deviceList];
  v34 = [v33 count];

  if (v34 >= 2)
  {
    v35 = [(MLCYOLOLossLayer *)self yoloLossDescriptor];
    [v11 setMultiDeviceReductionType:{-[NSObject reductionType](v35, "reductionType")}];
LABEL_12:
  }

  v36 = *MEMORY[0x277D85DE8];
  return v31;
}

- (unint64_t)resultSizeFromSourceSize:(unint64_t)a3 dimension:(unint64_t)a4
{
  v10.receiver = self;
  v10.super_class = MLCYOLOLossLayer;
  result = [(MLCLossLayer *)&v10 resultSizeFromSourceSize:a3 dimension:?];
  v7 = result;
  if (a4 == 1)
  {
    v8 = [(MLCLossLayer *)self descriptor];
    v9 = [v8 reductionType];

    if (v9)
    {
      return 1;
    }

    else
    {
      return v7;
    }
  }

  else if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    return 1;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCYOLOLossLayer *)self yoloLossDescriptor];
  v7 = [(MLCLayer *)self resultTensors];
  v8 = [v3 stringWithFormat:@"%@: { lossDescriptor=%@ : resultTensor=%@ }", v5, v6, v7];

  return v8;
}

- (id)summarizedDOTDescription
{
  v31 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v30 = [(MLCLayer *)self layerID];
  v32 = [(MLCYOLOLossLayer *)self yoloLossDescriptor];
  v29 = [v32 anchorBoxCount];
  v5 = [(MLCYOLOLossLayer *)self yoloLossDescriptor];
  v6 = [v5 shouldRescore];
  v7 = [(MLCYOLOLossLayer *)self yoloLossDescriptor];
  [v7 scaleSpatialPositionLoss];
  v9 = v8;
  v10 = [(MLCYOLOLossLayer *)self yoloLossDescriptor];
  [v10 scaleSpatialSizeLoss];
  v12 = v11;
  v13 = [(MLCYOLOLossLayer *)self yoloLossDescriptor];
  [v13 scaleNoObjectConfidenceLoss];
  v15 = v14;
  v16 = [(MLCYOLOLossLayer *)self yoloLossDescriptor];
  [v16 scaleObjectConfidenceLoss];
  v18 = v17;
  v19 = [(MLCYOLOLossLayer *)self yoloLossDescriptor];
  [v19 scaleClassLoss];
  v21 = v20;
  v22 = [(MLCYOLOLossLayer *)self yoloLossDescriptor];
  [v22 minimumIOUForObjectPresence];
  v24 = v23;
  v25 = [(MLCYOLOLossLayer *)self yoloLossDescriptor];
  [v25 maximumIOUForObjectAbsence];
  v27 = [v31 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Anchor Box Count: %lu    Should Rescore: %hhd<BR />Scale Spatial Position Loss: %.03f    Scale Spatial Size Loss: %.03f<BR />Scale No Object Confidence Loss: %.03f    Scale Object Confidence Loss: %.03f<BR />Scale Class Loss: %.03f    Minimum IOU For Object Presence: %.03f<BR />Maximum IOU For Object Absence: %.03f</FONT>>", v4, v30, v29, v6, *&v9, *&v12, *&v15, *&v18, *&v21, *&v24, v26];

  return v27;
}

@end