@interface MLCYOLOLossLayer
+ (MLCYOLOLossLayer)layerWithDescriptor:(MLCYOLOLossDescriptor *)lossDescriptor;
- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor;
- (MLCYOLOLossLayer)initWithLossDescriptor:(id)descriptor;
- (id)description;
- (id)summarizedDOTDescription;
- (unint64_t)resultSizeFromSourceSize:(unint64_t)size dimension:(unint64_t)dimension;
@end

@implementation MLCYOLOLossLayer

+ (MLCYOLOLossLayer)layerWithDescriptor:(MLCYOLOLossDescriptor *)lossDescriptor
{
  v4 = lossDescriptor;
  v5 = [[self alloc] initWithLossDescriptor:v4];

  return v5;
}

- (MLCYOLOLossLayer)initWithLossDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  spatialPositionLossDescriptor = [descriptorCopy spatialPositionLossDescriptor];
  v9.receiver = self;
  v9.super_class = MLCYOLOLossLayer;
  v7 = [(MLCLossLayer *)&v9 initWithDescriptor:spatialPositionLossDescriptor weights:0];

  if (v7)
  {
    objc_storeStrong(&v7->_yoloLossDescriptor, descriptor);
  }

  return v7;
}

- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor
{
  v46 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  v12 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor = [v12 descriptor];
  dataType = [descriptor dataType];

  if (![(MLCLayer *)MLCYOLOLossLayer supportsDataType:dataType onDevice:deviceCopy])
  {
    yoloLossDescriptor4 = +[MLCLog framework];
    if (os_log_type_enabled(yoloLossDescriptor4, OS_LOG_TYPE_ERROR))
    {
      v38 = NSStringFromSelector(a2);
      *buf = 138412802;
      v41 = v38;
      v42 = 1024;
      v43 = dataType;
      v44 = 2112;
      v45 = deviceCopy;
      _os_log_error_impl(&dword_238C1D000, yoloLossDescriptor4, OS_LOG_TYPE_ERROR, "%@: YOLOLoss layer with data type = %d is not supported on a device = %@", buf, 0x1Cu);
    }

    v29 = 0;
    goto LABEL_11;
  }

  v15 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor2 = [v15 descriptor];
  shape = [descriptor2 shape];
  v18 = [shape objectAtIndexedSubscript:0];
  unsignedIntegerValue = [v18 unsignedIntegerValue];

  v20 = 1.0 / unsignedIntegerValue;
  yoloLossDescriptor = [(MLCYOLOLossLayer *)self yoloLossDescriptor];
  [yoloLossDescriptor scaleNoObjectConfidenceLoss];
  *&v23 = v20 * v22;
  [yoloLossDescriptor setScaleNoObjectConfidenceLoss:v23];

  yoloLossDescriptor2 = [(MLCYOLOLossLayer *)self yoloLossDescriptor];
  [yoloLossDescriptor2 scaleObjectConfidenceLoss];
  *&v26 = v20 * v25;
  [yoloLossDescriptor2 setScaleObjectConfidenceLoss:v26];

  computeEngine = [deviceCopy computeEngine];
  yoloLossDescriptor3 = [(MLCYOLOLossLayer *)self yoloLossDescriptor];
  v29 = [computeEngine lossYOLOLayerWithDescriptor:yoloLossDescriptor3];

  if (!v29 || ![v29 count])
  {
    yoloLossDescriptor4 = +[MLCLog framework];
    if (os_log_type_enabled(yoloLossDescriptor4, OS_LOG_TYPE_ERROR))
    {
      [MLCPoolingLayer compileForDevice:a2 sourceTensors:v29 resultTensor:yoloLossDescriptor4];
    }

LABEL_11:
    v31 = 0;
    goto LABEL_12;
  }

  computeEngine2 = [deviceCopy computeEngine];
  v31 = [computeEngine2 compileLayerDeviceOps:v29 sourceTensors:tensorsCopy resultTensor:tensorCopy];

  v39.receiver = self;
  v39.super_class = MLCYOLOLossLayer;
  [(MLCLayer *)&v39 bindDevice:deviceCopy deviceOps:v29];
  engine = [deviceCopy engine];
  deviceList = [engine deviceList];
  v34 = [deviceList count];

  if (v34 >= 2)
  {
    yoloLossDescriptor4 = [(MLCYOLOLossLayer *)self yoloLossDescriptor];
    [tensorCopy setMultiDeviceReductionType:{-[NSObject reductionType](yoloLossDescriptor4, "reductionType")}];
LABEL_12:
  }

  v36 = *MEMORY[0x277D85DE8];
  return v31;
}

- (unint64_t)resultSizeFromSourceSize:(unint64_t)size dimension:(unint64_t)dimension
{
  v10.receiver = self;
  v10.super_class = MLCYOLOLossLayer;
  result = [(MLCLossLayer *)&v10 resultSizeFromSourceSize:size dimension:?];
  v7 = result;
  if (dimension == 1)
  {
    descriptor = [(MLCLossLayer *)self descriptor];
    reductionType = [descriptor reductionType];

    if (reductionType)
    {
      return 1;
    }

    else
    {
      return v7;
    }
  }

  else if ((dimension & 0xFFFFFFFFFFFFFFFELL) == 2)
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
  yoloLossDescriptor = [(MLCYOLOLossLayer *)self yoloLossDescriptor];
  resultTensors = [(MLCLayer *)self resultTensors];
  v8 = [v3 stringWithFormat:@"%@: { lossDescriptor=%@ : resultTensor=%@ }", v5, yoloLossDescriptor, resultTensors];

  return v8;
}

- (id)summarizedDOTDescription
{
  v31 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  layerID = [(MLCLayer *)self layerID];
  yoloLossDescriptor = [(MLCYOLOLossLayer *)self yoloLossDescriptor];
  anchorBoxCount = [yoloLossDescriptor anchorBoxCount];
  yoloLossDescriptor2 = [(MLCYOLOLossLayer *)self yoloLossDescriptor];
  shouldRescore = [yoloLossDescriptor2 shouldRescore];
  yoloLossDescriptor3 = [(MLCYOLOLossLayer *)self yoloLossDescriptor];
  [yoloLossDescriptor3 scaleSpatialPositionLoss];
  v9 = v8;
  yoloLossDescriptor4 = [(MLCYOLOLossLayer *)self yoloLossDescriptor];
  [yoloLossDescriptor4 scaleSpatialSizeLoss];
  v12 = v11;
  yoloLossDescriptor5 = [(MLCYOLOLossLayer *)self yoloLossDescriptor];
  [yoloLossDescriptor5 scaleNoObjectConfidenceLoss];
  v15 = v14;
  yoloLossDescriptor6 = [(MLCYOLOLossLayer *)self yoloLossDescriptor];
  [yoloLossDescriptor6 scaleObjectConfidenceLoss];
  v18 = v17;
  yoloLossDescriptor7 = [(MLCYOLOLossLayer *)self yoloLossDescriptor];
  [yoloLossDescriptor7 scaleClassLoss];
  v21 = v20;
  yoloLossDescriptor8 = [(MLCYOLOLossLayer *)self yoloLossDescriptor];
  [yoloLossDescriptor8 minimumIOUForObjectPresence];
  v24 = v23;
  yoloLossDescriptor9 = [(MLCYOLOLossLayer *)self yoloLossDescriptor];
  [yoloLossDescriptor9 maximumIOUForObjectAbsence];
  v27 = [v31 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Anchor Box Count: %lu    Should Rescore: %hhd<BR />Scale Spatial Position Loss: %.03f    Scale Spatial Size Loss: %.03f<BR />Scale No Object Confidence Loss: %.03f    Scale Object Confidence Loss: %.03f<BR />Scale Class Loss: %.03f    Minimum IOU For Object Presence: %.03f<BR />Maximum IOU For Object Absence: %.03f</FONT>>", v4, layerID, anchorBoxCount, shouldRescore, *&v9, *&v12, *&v15, *&v18, *&v21, *&v24, v26];

  return v27;
}

@end