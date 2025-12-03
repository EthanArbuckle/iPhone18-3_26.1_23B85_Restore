@interface MPSGraph
- (MPSGraph)init;
- (MPSGraphExecutable)compileWithDevice:(MPSGraphDevice *)device feeds:(MPSGraphTensorShapedTypeDictionary *)feeds targetTensors:(NSArray *)targetTensors targetOperations:(NSArray *)targetOperations compilationDescriptor:(MPSGraphCompilationDescriptor *)compilationDescriptor;
- (MPSGraphOperation)applyStochasticGradientDescentWithLearningRateTensor:(MPSGraphTensor *)learningRateTensor variable:(MPSGraphVariableOp *)variable gradientTensor:(MPSGraphTensor *)gradientTensor name:(NSString *)name;
- (MPSGraphOperation)assignVariable:(MPSGraphTensor *)variable withValueOfTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)HammingDistanceWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor resultDataType:(MPSDataType)resultDataType name:(NSString *)name;
- (MPSGraphTensor)HermiteanToRealFFTWithTensor:(MPSGraphTensor *)tensor axes:(NSArray *)axes descriptor:(MPSGraphFFTDescriptor *)descriptor name:(NSString *)name;
- (MPSGraphTensor)HermiteanToRealFFTWithTensor:(MPSGraphTensor *)tensor axesTensor:(MPSGraphTensor *)axesTensor descriptor:(MPSGraphFFTDescriptor *)descriptor name:(NSString *)name;
- (MPSGraphTensor)L2NormPooling4DGradientWithGradientTensor:(MPSGraphTensor *)gradient sourceTensor:(MPSGraphTensor *)source descriptor:(MPSGraphPooling4DOpDescriptor *)descriptor name:(NSString *)name;
- (MPSGraphTensor)L2NormPooling4DWithSourceTensor:(MPSGraphTensor *)source descriptor:(MPSGraphPooling4DOpDescriptor *)descriptor name:(NSString *)name;
- (MPSGraphTensor)absoluteSquareWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)absoluteWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)acosWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)acoshWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)additionWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name;
- (MPSGraphTensor)argSortWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis descending:(BOOL)descending name:(NSString *)name;
- (MPSGraphTensor)argSortWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis name:(NSString *)name;
- (MPSGraphTensor)argSortWithTensor:(MPSGraphTensor *)tensor axisTensor:(MPSGraphTensor *)axisTensor descending:(BOOL)descending name:(NSString *)name;
- (MPSGraphTensor)argSortWithTensor:(MPSGraphTensor *)tensor axisTensor:(MPSGraphTensor *)axisTensor name:(NSString *)name;
- (MPSGraphTensor)asinWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)asinhWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)atan2WithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name;
- (MPSGraphTensor)atanWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)atanhWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)avgPooling2DGradientWithGradientTensor:(MPSGraphTensor *)gradient sourceTensor:(MPSGraphTensor *)source descriptor:(MPSGraphPooling2DOpDescriptor *)descriptor name:(NSString *)name;
- (MPSGraphTensor)avgPooling2DWithSourceTensor:(MPSGraphTensor *)source descriptor:(MPSGraphPooling2DOpDescriptor *)descriptor name:(NSString *)name;
- (MPSGraphTensor)avgPooling4DGradientWithGradientTensor:(MPSGraphTensor *)gradient sourceTensor:(MPSGraphTensor *)source descriptor:(MPSGraphPooling4DOpDescriptor *)descriptor name:(NSString *)name;
- (MPSGraphTensor)avgPooling4DWithSourceTensor:(MPSGraphTensor *)source descriptor:(MPSGraphPooling4DOpDescriptor *)descriptor name:(NSString *)name;
- (MPSGraphTensor)bandPartWithTensor:(MPSGraphTensor *)inputTensor numLower:(NSInteger)numLower numUpper:(NSInteger)numUpper name:(NSString *)name;
- (MPSGraphTensor)bandPartWithTensor:(MPSGraphTensor *)inputTensor numLowerTensor:(MPSGraphTensor *)numLowerTensor numUpperTensor:(MPSGraphTensor *)numUpperTensor name:(NSString *)name;
- (MPSGraphTensor)batchToSpaceTensor:(MPSGraphTensor *)tensor spatialAxes:(NSArray *)spatialAxes batchAxis:(NSInteger)batchAxis blockDimensions:(NSArray *)blockDimensions usePixelShuffleOrder:(BOOL)usePixelShuffleOrder name:(NSString *)name;
- (MPSGraphTensor)batchToSpaceTensor:(MPSGraphTensor *)tensor spatialAxesTensor:(MPSGraphTensor *)spatialAxesTensor batchAxisTensor:(MPSGraphTensor *)batchAxisTensor blockDimensionsTensor:(MPSGraphTensor *)blockDimensionsTensor usePixelShuffleOrder:(BOOL)usePixelShuffleOrder name:(NSString *)name;
- (MPSGraphTensor)bitwiseANDWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name;
- (MPSGraphTensor)bitwiseLeftShiftWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name;
- (MPSGraphTensor)bitwiseNOTWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)bitwiseORWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name;
- (MPSGraphTensor)bitwisePopulationCountWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)bitwiseRightShiftWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name;
- (MPSGraphTensor)bitwiseXORWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name;
- (MPSGraphTensor)bottomKWithGradientTensor:(MPSGraphTensor *)gradient source:(MPSGraphTensor *)source axis:(NSInteger)axis k:(NSUInteger)k name:(NSString *)name;
- (MPSGraphTensor)bottomKWithGradientTensor:(MPSGraphTensor *)gradient source:(MPSGraphTensor *)source axisTensor:(MPSGraphTensor *)axisTensor kTensor:(MPSGraphTensor *)kTensor name:(NSString *)name;
- (MPSGraphTensor)broadcastTensor:(MPSGraphTensor *)tensor toShape:(MPSShape *)shape name:(NSString *)name;
- (MPSGraphTensor)broadcastTensor:(MPSGraphTensor *)tensor toShapeTensor:(MPSGraphTensor *)shapeTensor name:(NSString *)name;
- (MPSGraphTensor)castTensor:(MPSGraphTensor *)tensor toType:(MPSDataType)type name:(NSString *)name;
- (MPSGraphTensor)ceilWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)clampWithTensor:(MPSGraphTensor *)tensor minValueTensor:(MPSGraphTensor *)minValueTensor maxValueTensor:(MPSGraphTensor *)maxValueTensor name:(NSString *)name;
- (MPSGraphTensor)colToImWithSourceTensor:(MPSGraphTensor *)source outputShape:(MPSShape *)outputShape descriptor:(MPSGraphImToColOpDescriptor *)descriptor name:(NSString *)name;
- (MPSGraphTensor)complexTensorWithRealTensor:(MPSGraphTensor *)realTensor imaginaryTensor:(MPSGraphTensor *)imaginaryTensor name:(NSString *)name;
- (MPSGraphTensor)concatTensor:(MPSGraphTensor *)tensor withTensor:(MPSGraphTensor *)tensor2 dimension:(NSInteger)dimensionIndex name:(NSString *)name;
- (MPSGraphTensor)concatTensors:(NSArray *)tensors dimension:(NSInteger)dimensionIndex interleave:(BOOL)interleave name:(NSString *)name;
- (MPSGraphTensor)concatTensors:(NSArray *)tensors dimension:(NSInteger)dimensionIndex name:(NSString *)name;
- (MPSGraphTensor)conjugateWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)constantWithData:(NSData *)data shape:(MPSShape *)shape dataType:(MPSDataType)dataType;
- (MPSGraphTensor)constantWithRealPart:(double)realPart imaginaryPart:(double)imaginaryPart shape:(MPSShape *)shape dataType:(MPSDataType)dataType;
- (MPSGraphTensor)constantWithScalar:(double)scalar shape:(MPSShape *)shape dataType:(MPSDataType)dataType;
- (MPSGraphTensor)convolution2DDataGradientWithIncomingGradientTensor:(MPSGraphTensor *)gradient weightsTensor:(MPSGraphTensor *)weights outputShapeTensor:(MPSGraphTensor *)outputShapeTensor forwardConvolutionDescriptor:(MPSGraphConvolution2DOpDescriptor *)forwardConvolutionDescriptor name:(NSString *)name;
- (MPSGraphTensor)convolution2DDataGradientWithIncomingGradientTensor:(MPSGraphTensor *)incomingGradient weightsTensor:(MPSGraphTensor *)weights outputShape:(MPSShape *)outputShape forwardConvolutionDescriptor:(MPSGraphConvolution2DOpDescriptor *)forwardConvolutionDescriptor name:(NSString *)name;
- (MPSGraphTensor)convolution2DWeightsGradientWithIncomingGradientTensor:(MPSGraphTensor *)gradient sourceTensor:(MPSGraphTensor *)source outputShapeTensor:(MPSGraphTensor *)outputShapeTensor forwardConvolutionDescriptor:(MPSGraphConvolution2DOpDescriptor *)forwardConvolutionDescriptor name:(NSString *)name;
- (MPSGraphTensor)convolution2DWeightsGradientWithIncomingGradientTensor:(MPSGraphTensor *)incomingGradient sourceTensor:(MPSGraphTensor *)source outputShape:(MPSShape *)outputShape forwardConvolutionDescriptor:(MPSGraphConvolution2DOpDescriptor *)forwardConvolutionDescriptor name:(NSString *)name;
- (MPSGraphTensor)convolution2DWithSourceTensor:(MPSGraphTensor *)source weightsTensor:(MPSGraphTensor *)weights descriptor:(MPSGraphConvolution2DOpDescriptor *)descriptor name:(NSString *)name;
- (MPSGraphTensor)convolution3DDataGradientWithIncomingGradientTensor:(MPSGraphTensor *)gradient weightsTensor:(MPSGraphTensor *)weights outputShapeTensor:(MPSGraphTensor *)outputShapeTensor forwardConvolutionDescriptor:(MPSGraphConvolution3DOpDescriptor *)forwardConvolutionDescriptor name:(NSString *)name;
- (MPSGraphTensor)convolution3DDataGradientWithIncomingGradientTensor:(MPSGraphTensor *)incomingGradient weightsTensor:(MPSGraphTensor *)weights outputShape:(MPSShape *)outputShape forwardConvolutionDescriptor:(MPSGraphConvolution3DOpDescriptor *)forwardConvolutionDescriptor name:(NSString *)name;
- (MPSGraphTensor)convolution3DWeightsGradientWithIncomingGradientTensor:(MPSGraphTensor *)gradient sourceTensor:(MPSGraphTensor *)source outputShapeTensor:(MPSGraphTensor *)outputShapeTensor forwardConvolutionDescriptor:(MPSGraphConvolution3DOpDescriptor *)forwardConvolutionDescriptor name:(NSString *)name;
- (MPSGraphTensor)convolution3DWeightsGradientWithIncomingGradientTensor:(MPSGraphTensor *)incomingGradient sourceTensor:(MPSGraphTensor *)source outputShape:(MPSShape *)outputShape forwardConvolutionDescriptor:(MPSGraphConvolution3DOpDescriptor *)forwardConvolutionDescriptor name:(NSString *)name;
- (MPSGraphTensor)convolution3DWithSourceTensor:(MPSGraphTensor *)source weightsTensor:(MPSGraphTensor *)weights descriptor:(MPSGraphConvolution3DOpDescriptor *)descriptor name:(NSString *)name;
- (MPSGraphTensor)convolutionTranspose2DDataGradientWithIncomingGradientTensor:(MPSGraphTensor *)incomingGradient weightsTensor:(MPSGraphTensor *)weights outputShape:(MPSShape *)outputShape forwardConvolutionDescriptor:(MPSGraphConvolution2DOpDescriptor *)forwardConvolutionDescriptor name:(NSString *)name;
- (MPSGraphTensor)convolutionTranspose2DDataGradientWithIncomingGradientTensor:(MPSGraphTensor *)incomingGradient weightsTensor:(MPSGraphTensor *)weights outputShapeTensor:(MPSGraphTensor *)outputShape forwardConvolutionDescriptor:(MPSGraphConvolution2DOpDescriptor *)forwardConvolutionDescriptor name:(NSString *)name;
- (MPSGraphTensor)convolutionTranspose2DWeightsGradientWithIncomingGradientTensor:(MPSGraphTensor *)incomingGradientTensor sourceTensor:(MPSGraphTensor *)source outputShape:(MPSShape *)outputShape forwardConvolutionDescriptor:(MPSGraphConvolution2DOpDescriptor *)forwardConvolutionDescriptor name:(NSString *)name;
- (MPSGraphTensor)convolutionTranspose2DWeightsGradientWithIncomingGradientTensor:(MPSGraphTensor *)incomingGradientTensor sourceTensor:(MPSGraphTensor *)source outputShapeTensor:(MPSGraphTensor *)outputShape forwardConvolutionDescriptor:(MPSGraphConvolution2DOpDescriptor *)forwardConvolutionDescriptor name:(NSString *)name;
- (MPSGraphTensor)convolutionTranspose2DWithSourceTensor:(MPSGraphTensor *)source weightsTensor:(MPSGraphTensor *)weights outputShape:(MPSShape *)outputShape descriptor:(MPSGraphConvolution2DOpDescriptor *)descriptor name:(NSString *)name;
- (MPSGraphTensor)convolutionTranspose2DWithSourceTensor:(MPSGraphTensor *)source weightsTensor:(MPSGraphTensor *)weights outputShapeTensor:(MPSGraphTensor *)outputShape descriptor:(MPSGraphConvolution2DOpDescriptor *)descriptor name:(NSString *)name;
- (MPSGraphTensor)coordinateAlongAxis:(NSInteger)axis withShape:(MPSShape *)shape name:(NSString *)name;
- (MPSGraphTensor)coordinateAlongAxis:(NSInteger)axis withShapeTensor:(MPSGraphTensor *)shapeTensor name:(NSString *)name;
- (MPSGraphTensor)coordinateAlongAxisTensor:(MPSGraphTensor *)axisTensor withShape:(MPSShape *)shape name:(NSString *)name;
- (MPSGraphTensor)coordinateAlongAxisTensor:(MPSGraphTensor *)axisTensor withShapeTensor:(MPSGraphTensor *)shapeTensor name:(NSString *)name;
- (MPSGraphTensor)cosWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)coshWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)cumulativeMaximumWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis exclusive:(BOOL)exclusive reverse:(BOOL)reverse name:(NSString *)name;
- (MPSGraphTensor)cumulativeMaximumWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis name:(NSString *)name;
- (MPSGraphTensor)cumulativeMaximumWithTensor:(MPSGraphTensor *)tensor axisTensor:(MPSGraphTensor *)axisTensor exclusive:(BOOL)exclusive reverse:(BOOL)reverse name:(NSString *)name;
- (MPSGraphTensor)cumulativeMaximumWithTensor:(MPSGraphTensor *)tensor axisTensor:(MPSGraphTensor *)axisTensor name:(NSString *)name;
- (MPSGraphTensor)cumulativeMinimumWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis exclusive:(BOOL)exclusive reverse:(BOOL)reverse name:(NSString *)name;
- (MPSGraphTensor)cumulativeMinimumWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis name:(NSString *)name;
- (MPSGraphTensor)cumulativeMinimumWithTensor:(MPSGraphTensor *)tensor axisTensor:(MPSGraphTensor *)axisTensor exclusive:(BOOL)exclusive reverse:(BOOL)reverse name:(NSString *)name;
- (MPSGraphTensor)cumulativeMinimumWithTensor:(MPSGraphTensor *)tensor axisTensor:(MPSGraphTensor *)axisTensor name:(NSString *)name;
- (MPSGraphTensor)cumulativeProductWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis exclusive:(BOOL)exclusive reverse:(BOOL)reverse name:(NSString *)name;
- (MPSGraphTensor)cumulativeProductWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis name:(NSString *)name;
- (MPSGraphTensor)cumulativeProductWithTensor:(MPSGraphTensor *)tensor axisTensor:(MPSGraphTensor *)axisTensor exclusive:(BOOL)exclusive reverse:(BOOL)reverse name:(NSString *)name;
- (MPSGraphTensor)cumulativeProductWithTensor:(MPSGraphTensor *)tensor axisTensor:(MPSGraphTensor *)axisTensor name:(NSString *)name;
- (MPSGraphTensor)cumulativeSumWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis exclusive:(BOOL)exclusive reverse:(BOOL)reverse name:(NSString *)name;
- (MPSGraphTensor)cumulativeSumWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis name:(NSString *)name;
- (MPSGraphTensor)cumulativeSumWithTensor:(MPSGraphTensor *)tensor axisTensor:(MPSGraphTensor *)axisTensor exclusive:(BOOL)exclusive reverse:(BOOL)reverse name:(NSString *)name;
- (MPSGraphTensor)cumulativeSumWithTensor:(MPSGraphTensor *)tensor axisTensor:(MPSGraphTensor *)axisTensor name:(NSString *)name;
- (MPSGraphTensor)depthToSpace2DTensor:(MPSGraphTensor *)tensor widthAxis:(NSUInteger)widthAxis heightAxis:(NSUInteger)heightAxis depthAxis:(NSUInteger)depthAxis blockSize:(NSUInteger)blockSize usePixelShuffleOrder:(BOOL)usePixelShuffleOrder name:(NSString *)name;
- (MPSGraphTensor)depthToSpace2DTensor:(MPSGraphTensor *)tensor widthAxisTensor:(MPSGraphTensor *)widthAxisTensor heightAxisTensor:(MPSGraphTensor *)heightAxisTensor depthAxisTensor:(MPSGraphTensor *)depthAxisTensor blockSize:(NSUInteger)blockSize usePixelShuffleOrder:(BOOL)usePixelShuffleOrder name:(NSString *)name;
- (MPSGraphTensor)depthwiseConvolution2DDataGradientWithIncomingGradientTensor:(MPSGraphTensor *)incomingGradient weightsTensor:(MPSGraphTensor *)weights outputShape:(MPSShape *)outputShape descriptor:(MPSGraphDepthwiseConvolution2DOpDescriptor *)descriptor name:(NSString *)name;
- (MPSGraphTensor)depthwiseConvolution2DWeightsGradientWithIncomingGradientTensor:(MPSGraphTensor *)incomingGradient sourceTensor:(MPSGraphTensor *)source outputShape:(MPSShape *)outputShape descriptor:(MPSGraphDepthwiseConvolution2DOpDescriptor *)descriptor name:(NSString *)name;
- (MPSGraphTensor)depthwiseConvolution2DWithSourceTensor:(MPSGraphTensor *)source weightsTensor:(MPSGraphTensor *)weights descriptor:(MPSGraphDepthwiseConvolution2DOpDescriptor *)descriptor name:(NSString *)name;
- (MPSGraphTensor)depthwiseConvolution3DDataGradientWithIncomingGradientTensor:(MPSGraphTensor *)incomingGradient weightsTensor:(MPSGraphTensor *)weights outputShape:(MPSShape *)outputShape descriptor:(MPSGraphDepthwiseConvolution3DOpDescriptor *)descriptor name:(NSString *)name;
- (MPSGraphTensor)depthwiseConvolution3DWeightsGradientWithIncomingGradientTensor:(MPSGraphTensor *)incomingGradient sourceTensor:(MPSGraphTensor *)source outputShape:(MPSShape *)outputShape descriptor:(MPSGraphDepthwiseConvolution3DOpDescriptor *)descriptor name:(NSString *)name;
- (MPSGraphTensor)depthwiseConvolution3DWithSourceTensor:(MPSGraphTensor *)source weightsTensor:(MPSGraphTensor *)weights descriptor:(MPSGraphDepthwiseConvolution3DOpDescriptor *)descriptor name:(NSString *)name;
- (MPSGraphTensor)dequantizeTensor:(MPSGraphTensor *)tensor scale:(double)scale zeroPoint:(double)zeroPoint dataType:(MPSDataType)dataType name:(NSString *)name;
- (MPSGraphTensor)dequantizeTensor:(MPSGraphTensor *)tensor scaleTensor:(MPSGraphTensor *)scaleTensor zeroPoint:(double)zeroPoint dataType:(MPSDataType)dataType axis:(NSInteger)axis name:(NSString *)name;
- (MPSGraphTensor)dequantizeTensor:(MPSGraphTensor *)tensor scaleTensor:(MPSGraphTensor *)scaleTensor zeroPointTensor:(MPSGraphTensor *)zeroPointTensor dataType:(MPSDataType)dataType axis:(NSInteger)axis name:(NSString *)name;
- (MPSGraphTensor)divisionNoNaNWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name;
- (MPSGraphTensor)divisionWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name;
- (MPSGraphTensor)dropoutTensor:(MPSGraphTensor *)tensor rate:(double)rate name:(NSString *)name;
- (MPSGraphTensor)dropoutTensor:(MPSGraphTensor *)tensor rateTensor:(MPSGraphTensor *)rate name:(NSString *)name;
- (MPSGraphTensor)equalWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name;
- (MPSGraphTensor)erfWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)expandDimsOfTensor:(MPSGraphTensor *)tensor axes:(NSArray *)axes name:(NSString *)name;
- (MPSGraphTensor)expandDimsOfTensor:(MPSGraphTensor *)tensor axesTensor:(MPSGraphTensor *)axesTensor name:(NSString *)name;
- (MPSGraphTensor)expandDimsOfTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis name:(NSString *)name;
- (MPSGraphTensor)exponentBase10WithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)exponentBase2WithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)exponentWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)fastFourierTransformWithTensor:(MPSGraphTensor *)tensor axes:(NSArray *)axes descriptor:(MPSGraphFFTDescriptor *)descriptor name:(NSString *)name;
- (MPSGraphTensor)fastFourierTransformWithTensor:(MPSGraphTensor *)tensor axesTensor:(MPSGraphTensor *)axesTensor descriptor:(MPSGraphFFTDescriptor *)descriptor name:(NSString *)name;
- (MPSGraphTensor)flatten2DTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis name:(NSString *)name;
- (MPSGraphTensor)flatten2DTensor:(MPSGraphTensor *)tensor axisTensor:(MPSGraphTensor *)axisTensor name:(NSString *)name;
- (MPSGraphTensor)floorModuloWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name;
- (MPSGraphTensor)floorWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)gatherAlongAxis:(NSInteger)axis withUpdatesTensor:(MPSGraphTensor *)updatesTensor indicesTensor:(MPSGraphTensor *)indicesTensor name:(NSString *)name;
- (MPSGraphTensor)gatherAlongAxisTensor:(MPSGraphTensor *)axisTensor withUpdatesTensor:(MPSGraphTensor *)updatesTensor indicesTensor:(MPSGraphTensor *)indicesTensor name:(NSString *)name;
- (MPSGraphTensor)gatherNDWithUpdatesTensor:(MPSGraphTensor *)updatesTensor indicesTensor:(MPSGraphTensor *)indicesTensor batchDimensions:(NSUInteger)batchDimensions name:(NSString *)name;
- (MPSGraphTensor)gatherWithUpdatesTensor:(MPSGraphTensor *)updatesTensor indicesTensor:(MPSGraphTensor *)indicesTensor axis:(NSUInteger)axis batchDimensions:(NSUInteger)batchDimensions name:(NSString *)name;
- (MPSGraphTensor)greaterThanOrEqualToWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name;
- (MPSGraphTensor)greaterThanWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name;
- (MPSGraphTensor)identityWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)imToColWithSourceTensor:(MPSGraphTensor *)source descriptor:(MPSGraphImToColOpDescriptor *)descriptor name:(NSString *)name;
- (MPSGraphTensor)imaginaryPartOfTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)inverseOfTensor:(MPSGraphTensor *)inputTensor name:(NSString *)name;
- (MPSGraphTensor)isFiniteWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)isInfiniteWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)isNaNWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)leakyReLUGradientWithIncomingGradient:(MPSGraphTensor *)gradient sourceTensor:(MPSGraphTensor *)source alphaTensor:(MPSGraphTensor *)alphaTensor name:(NSString *)name;
- (MPSGraphTensor)leakyReLUWithTensor:(MPSGraphTensor *)tensor alpha:(double)alpha name:(NSString *)name;
- (MPSGraphTensor)leakyReLUWithTensor:(MPSGraphTensor *)tensor alphaTensor:(MPSGraphTensor *)alphaTensor name:(NSString *)name;
- (MPSGraphTensor)lessThanOrEqualToWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name;
- (MPSGraphTensor)lessThanWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name;
- (MPSGraphTensor)logarithmBase10WithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)logarithmBase2WithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)logarithmWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)logicalANDWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name;
- (MPSGraphTensor)logicalNANDWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name;
- (MPSGraphTensor)logicalNORWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name;
- (MPSGraphTensor)logicalORWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name;
- (MPSGraphTensor)logicalXNORWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name;
- (MPSGraphTensor)logicalXORWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name;
- (MPSGraphTensor)matrixMultiplicationWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name;
- (MPSGraphTensor)maxPooling2DGradientWithGradientTensor:(MPSGraphTensor *)gradient indicesTensor:(MPSGraphTensor *)indices outputShape:(MPSShape *)outputShape descriptor:(MPSGraphPooling2DOpDescriptor *)descriptor name:(NSString *)name;
- (MPSGraphTensor)maxPooling2DGradientWithGradientTensor:(MPSGraphTensor *)gradient indicesTensor:(MPSGraphTensor *)indices outputShapeTensor:(MPSGraphTensor *)outputShape descriptor:(MPSGraphPooling2DOpDescriptor *)descriptor name:(NSString *)name;
- (MPSGraphTensor)maxPooling2DGradientWithGradientTensor:(MPSGraphTensor *)gradient sourceTensor:(MPSGraphTensor *)source descriptor:(MPSGraphPooling2DOpDescriptor *)descriptor name:(NSString *)name;
- (MPSGraphTensor)maxPooling2DWithSourceTensor:(MPSGraphTensor *)source descriptor:(MPSGraphPooling2DOpDescriptor *)descriptor name:(NSString *)name;
- (MPSGraphTensor)maxPooling4DGradientWithGradientTensor:(MPSGraphTensor *)gradient indicesTensor:(MPSGraphTensor *)indices outputShape:(MPSShape *)outputShape descriptor:(MPSGraphPooling4DOpDescriptor *)descriptor name:(NSString *)name;
- (MPSGraphTensor)maxPooling4DGradientWithGradientTensor:(MPSGraphTensor *)gradient indicesTensor:(MPSGraphTensor *)indices outputShapeTensor:(MPSGraphTensor *)outputShape descriptor:(MPSGraphPooling4DOpDescriptor *)descriptor name:(NSString *)name;
- (MPSGraphTensor)maxPooling4DGradientWithGradientTensor:(MPSGraphTensor *)gradient sourceTensor:(MPSGraphTensor *)source descriptor:(MPSGraphPooling4DOpDescriptor *)descriptor name:(NSString *)name;
- (MPSGraphTensor)maxPooling4DWithSourceTensor:(MPSGraphTensor *)source descriptor:(MPSGraphPooling4DOpDescriptor *)descriptor name:(NSString *)name;
- (MPSGraphTensor)maximumWithNaNPropagationWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name;
- (MPSGraphTensor)maximumWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name;
- (MPSGraphTensor)meanOfTensor:(MPSGraphTensor *)tensor axes:(NSArray *)axes name:(NSString *)name;
- (MPSGraphTensor)minimumWithNaNPropagationWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name;
- (MPSGraphTensor)minimumWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name;
- (MPSGraphTensor)moduloWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name;
- (MPSGraphTensor)multiplicationWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name;
- (MPSGraphTensor)negativeWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)nonMaximumSuppressionWithBoxesTensor:(MPSGraphTensor *)boxesTensor scoresTensor:(MPSGraphTensor *)scoresTensor IOUThreshold:(float)IOUThreshold scoreThreshold:(float)scoreThreshold perClassSuppression:(BOOL)perClassSuppression coordinateMode:(MPSGraphNonMaximumSuppressionCoordinateMode)coordinateMode name:(NSString *)name;
- (MPSGraphTensor)nonMaximumSuppressionWithBoxesTensor:(MPSGraphTensor *)boxesTensor scoresTensor:(MPSGraphTensor *)scoresTensor classIndicesTensor:(MPSGraphTensor *)classIndicesTensor IOUThreshold:(float)IOUThreshold scoreThreshold:(float)scoreThreshold perClassSuppression:(BOOL)perClassSuppression coordinateMode:(MPSGraphNonMaximumSuppressionCoordinateMode)coordinateMode name:(NSString *)name;
- (MPSGraphTensor)nonZeroIndicesOfTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)normalizationBetaGradientWithIncomingGradientTensor:(MPSGraphTensor *)incomingGradientTensor sourceTensor:(MPSGraphTensor *)sourceTensor reductionAxes:(NSArray *)axes name:(NSString *)name;
- (MPSGraphTensor)normalizationGammaGradientWithIncomingGradientTensor:(MPSGraphTensor *)incomingGradientTensor sourceTensor:(MPSGraphTensor *)sourceTensor meanTensor:(MPSGraphTensor *)meanTensor varianceTensor:(MPSGraphTensor *)varianceTensor reductionAxes:(NSArray *)axes epsilon:(float)epsilon name:(NSString *)name;
- (MPSGraphTensor)normalizationGradientWithIncomingGradientTensor:(MPSGraphTensor *)incomingGradientTensor sourceTensor:(MPSGraphTensor *)sourceTensor meanTensor:(MPSGraphTensor *)meanTensor varianceTensor:(MPSGraphTensor *)varianceTensor gammaTensor:(MPSGraphTensor *)gamma gammaGradientTensor:(MPSGraphTensor *)gammaGradient betaGradientTensor:(MPSGraphTensor *)betaGradient reductionAxes:(NSArray *)axes epsilon:(float)epsilon name:(NSString *)name;
- (MPSGraphTensor)normalizationWithTensor:(MPSGraphTensor *)tensor meanTensor:(MPSGraphTensor *)mean varianceTensor:(MPSGraphTensor *)variance gammaTensor:(MPSGraphTensor *)gamma betaTensor:(MPSGraphTensor *)beta epsilon:(float)epsilon name:(NSString *)name;
- (MPSGraphTensor)notEqualWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name;
- (MPSGraphTensor)notWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)oneHotWithIndicesTensor:(MPSGraphTensor *)indicesTensor depth:(NSUInteger)depth axis:(NSUInteger)axis dataType:(MPSDataType)dataType name:(NSString *)name;
- (MPSGraphTensor)oneHotWithIndicesTensor:(MPSGraphTensor *)indicesTensor depth:(NSUInteger)depth axis:(NSUInteger)axis dataType:(MPSDataType)dataType onValue:(double)onValue offValue:(double)offValue name:(NSString *)name;
- (MPSGraphTensor)oneHotWithIndicesTensor:(MPSGraphTensor *)indicesTensor depth:(NSUInteger)depth axis:(NSUInteger)axis name:(NSString *)name;
- (MPSGraphTensor)oneHotWithIndicesTensor:(MPSGraphTensor *)indicesTensor depth:(NSUInteger)depth dataType:(MPSDataType)dataType name:(NSString *)name;
- (MPSGraphTensor)oneHotWithIndicesTensor:(MPSGraphTensor *)indicesTensor depth:(NSUInteger)depth dataType:(MPSDataType)dataType onValue:(double)onValue offValue:(double)offValue name:(NSString *)name;
- (MPSGraphTensor)oneHotWithIndicesTensor:(MPSGraphTensor *)indicesTensor depth:(NSUInteger)depth name:(NSString *)name;
- (MPSGraphTensor)padGradientWithIncomingGradientTensor:(MPSGraphTensor *)incomingGradientTensor sourceTensor:(MPSGraphTensor *)sourceTensor paddingMode:(MPSGraphPaddingMode)paddingMode leftPadding:(MPSShape *)leftPadding rightPadding:(MPSShape *)rightPadding name:(NSString *)name;
- (MPSGraphTensor)padTensor:(MPSGraphTensor *)tensor withPaddingMode:(MPSGraphPaddingMode)paddingMode leftPadding:(MPSShape *)leftPadding rightPadding:(MPSShape *)rightPadding constantValue:(double)constantValue name:(NSString *)name;
- (MPSGraphTensor)placeholderWithShape:(MPSShape *)shape dataType:(MPSDataType)dataType name:(NSString *)name;
- (MPSGraphTensor)placeholderWithShape:(MPSShape *)shape name:(NSString *)name;
- (MPSGraphTensor)powerWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name;
- (MPSGraphTensor)quantizeTensor:(MPSGraphTensor *)tensor scale:(double)scale zeroPoint:(double)zeroPoint dataType:(MPSDataType)dataType name:(NSString *)name;
- (MPSGraphTensor)quantizeTensor:(MPSGraphTensor *)tensor scaleTensor:(MPSGraphTensor *)scaleTensor zeroPoint:(double)zeroPoint dataType:(MPSDataType)dataType axis:(NSInteger)axis name:(NSString *)name;
- (MPSGraphTensor)quantizeTensor:(MPSGraphTensor *)tensor scaleTensor:(MPSGraphTensor *)scaleTensor zeroPointTensor:(MPSGraphTensor *)zeroPointTensor dataType:(MPSDataType)dataType axis:(NSInteger)axis name:(NSString *)name;
- (MPSGraphTensor)randomPhiloxStateTensorWithCounterLow:(NSUInteger)counterLow counterHigh:(NSUInteger)counterHigh key:(NSUInteger)key name:(NSString *)name;
- (MPSGraphTensor)randomPhiloxStateTensorWithSeed:(NSUInteger)seed name:(NSString *)name;
- (MPSGraphTensor)randomTensorWithShape:(MPSShape *)shape descriptor:(MPSGraphRandomOpDescriptor *)descriptor name:(NSString *)name;
- (MPSGraphTensor)randomTensorWithShape:(MPSShape *)shape descriptor:(MPSGraphRandomOpDescriptor *)descriptor seed:(NSUInteger)seed name:(NSString *)name;
- (MPSGraphTensor)randomTensorWithShapeTensor:(MPSGraphTensor *)shapeTensor descriptor:(MPSGraphRandomOpDescriptor *)descriptor name:(NSString *)name;
- (MPSGraphTensor)randomTensorWithShapeTensor:(MPSGraphTensor *)shapeTensor descriptor:(MPSGraphRandomOpDescriptor *)descriptor seed:(NSUInteger)seed name:(NSString *)name;
- (MPSGraphTensor)randomUniformTensorWithShape:(MPSShape *)shape name:(NSString *)name;
- (MPSGraphTensor)randomUniformTensorWithShape:(MPSShape *)shape seed:(NSUInteger)seed name:(NSString *)name;
- (MPSGraphTensor)randomUniformTensorWithShapeTensor:(MPSGraphTensor *)shapeTensor name:(NSString *)name;
- (MPSGraphTensor)randomUniformTensorWithShapeTensor:(MPSGraphTensor *)shapeTensor seed:(NSUInteger)seed name:(NSString *)name;
- (MPSGraphTensor)reLUGradientWithIncomingGradient:(MPSGraphTensor *)gradient sourceTensor:(MPSGraphTensor *)source name:(NSString *)name;
- (MPSGraphTensor)reLUWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)readVariable:(MPSGraphTensor *)variable name:(NSString *)name;
- (MPSGraphTensor)realPartOfTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)realToHermiteanFFTWithTensor:(MPSGraphTensor *)tensor axes:(NSArray *)axes descriptor:(MPSGraphFFTDescriptor *)descriptor name:(NSString *)name;
- (MPSGraphTensor)realToHermiteanFFTWithTensor:(MPSGraphTensor *)tensor axesTensor:(MPSGraphTensor *)axesTensor descriptor:(MPSGraphFFTDescriptor *)descriptor name:(NSString *)name;
- (MPSGraphTensor)reciprocalWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)reductionAndWithTensor:(MPSGraphTensor *)tensor axes:(NSArray *)axes name:(NSString *)name;
- (MPSGraphTensor)reductionAndWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis name:(NSString *)name;
- (MPSGraphTensor)reductionArgMaximumWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis name:(NSString *)name;
- (MPSGraphTensor)reductionArgMinimumWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis name:(NSString *)name;
- (MPSGraphTensor)reductionMaximumPropagateNaNWithTensor:(MPSGraphTensor *)tensor axes:(NSArray *)axes name:(NSString *)name;
- (MPSGraphTensor)reductionMaximumPropagateNaNWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis name:(NSString *)name;
- (MPSGraphTensor)reductionMaximumWithTensor:(MPSGraphTensor *)tensor axes:(NSArray *)axes name:(NSString *)name;
- (MPSGraphTensor)reductionMaximumWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis name:(NSString *)name;
- (MPSGraphTensor)reductionMinimumPropagateNaNWithTensor:(MPSGraphTensor *)tensor axes:(NSArray *)axes name:(NSString *)name;
- (MPSGraphTensor)reductionMinimumPropagateNaNWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis name:(NSString *)name;
- (MPSGraphTensor)reductionMinimumWithTensor:(MPSGraphTensor *)tensor axes:(NSArray *)axes name:(NSString *)name;
- (MPSGraphTensor)reductionMinimumWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis name:(NSString *)name;
- (MPSGraphTensor)reductionOrWithTensor:(MPSGraphTensor *)tensor axes:(NSArray *)axes name:(NSString *)name;
- (MPSGraphTensor)reductionOrWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis name:(NSString *)name;
- (MPSGraphTensor)reductionProductWithTensor:(MPSGraphTensor *)tensor axes:(NSArray *)axes name:(NSString *)name;
- (MPSGraphTensor)reductionProductWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis name:(NSString *)name;
- (MPSGraphTensor)reductionSumWithTensor:(MPSGraphTensor *)tensor axes:(NSArray *)axes name:(NSString *)name;
- (MPSGraphTensor)reductionSumWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis name:(NSString *)name;
- (MPSGraphTensor)reinterpretCastTensor:(MPSGraphTensor *)tensor toType:(MPSDataType)type name:(NSString *)name;
- (MPSGraphTensor)reshapeTensor:(MPSGraphTensor *)tensor withShape:(MPSShape *)shape name:(NSString *)name;
- (MPSGraphTensor)reshapeTensor:(MPSGraphTensor *)tensor withShapeTensor:(MPSGraphTensor *)shapeTensor name:(NSString *)name;
- (MPSGraphTensor)resizeBilinearWithGradientTensor:(MPSGraphTensor *)gradient input:(MPSGraphTensor *)input centerResult:(BOOL)centerResult alignCorners:(BOOL)alignCorners layout:(MPSGraphTensorNamedDataLayout)layout name:(NSString *)name;
- (MPSGraphTensor)resizeBilinearWithGradientTensor:(MPSGraphTensor *)gradient input:(MPSGraphTensor *)input scaleOffsetTensor:(MPSGraphTensor *)scaleOffset layout:(MPSGraphTensorNamedDataLayout)layout name:(NSString *)name;
- (MPSGraphTensor)resizeBilinearWithGradientTensor:(MPSGraphTensor *)gradient input:(MPSGraphTensor *)input scaleTensor:(MPSGraphTensor *)scale offsetTensor:(MPSGraphTensor *)offset name:(NSString *)name;
- (MPSGraphTensor)resizeBilinearWithTensor:(MPSGraphTensor *)imagesTensor sizeTensor:(MPSGraphTensor *)size centerResult:(BOOL)centerResult alignCorners:(BOOL)alignCorners layout:(MPSGraphTensorNamedDataLayout)layout name:(NSString *)name;
- (MPSGraphTensor)resizeBilinearWithTensor:(MPSGraphTensor *)imagesTensor sizeTensor:(MPSGraphTensor *)size centerResult:(BOOL)centerResult alignCorners:(BOOL)alignCorners name:(NSString *)name;
- (MPSGraphTensor)resizeBilinearWithTensor:(MPSGraphTensor *)imagesTensor sizeTensor:(MPSGraphTensor *)size scaleOffsetTensor:(MPSGraphTensor *)scaleOffset layout:(MPSGraphTensorNamedDataLayout)layout name:(NSString *)name;
- (MPSGraphTensor)resizeBilinearWithTensor:(MPSGraphTensor *)imagesTensor sizeTensor:(MPSGraphTensor *)size scaleTensor:(MPSGraphTensor *)scale offsetTensor:(MPSGraphTensor *)offset name:(NSString *)name;
- (MPSGraphTensor)resizeNearestWithGradientTensor:(MPSGraphTensor *)gradient input:(MPSGraphTensor *)input nearestRoundingMode:(MPSGraphResizeNearestRoundingMode)nearestRoundingMode centerResult:(BOOL)centerResult alignCorners:(BOOL)alignCorners layout:(MPSGraphTensorNamedDataLayout)layout name:(NSString *)name;
- (MPSGraphTensor)resizeNearestWithGradientTensor:(MPSGraphTensor *)gradient input:(MPSGraphTensor *)input scaleOffsetTensor:(MPSGraphTensor *)scaleOffset nearestRoundingMode:(MPSGraphResizeNearestRoundingMode)nearestRoundingMode layout:(MPSGraphTensorNamedDataLayout)layout name:(NSString *)name;
- (MPSGraphTensor)resizeNearestWithGradientTensor:(MPSGraphTensor *)gradient input:(MPSGraphTensor *)input scaleTensor:(MPSGraphTensor *)scale offsetTensor:(MPSGraphTensor *)offset nearestRoundingMode:(MPSGraphResizeNearestRoundingMode)nearestRoundingMode name:(NSString *)name;
- (MPSGraphTensor)resizeNearestWithTensor:(MPSGraphTensor *)imagesTensor sizeTensor:(MPSGraphTensor *)size nearestRoundingMode:(MPSGraphResizeNearestRoundingMode)nearestRoundingMode centerResult:(BOOL)centerResult alignCorners:(BOOL)alignCorners layout:(MPSGraphTensorNamedDataLayout)layout name:(NSString *)name;
- (MPSGraphTensor)resizeNearestWithTensor:(MPSGraphTensor *)imagesTensor sizeTensor:(MPSGraphTensor *)size nearestRoundingMode:(MPSGraphResizeNearestRoundingMode)nearestRoundingMode centerResult:(BOOL)centerResult alignCorners:(BOOL)alignCorners name:(NSString *)name;
- (MPSGraphTensor)resizeNearestWithTensor:(MPSGraphTensor *)imagesTensor sizeTensor:(MPSGraphTensor *)size scaleOffsetTensor:(MPSGraphTensor *)scaleOffset nearestRoundingMode:(MPSGraphResizeNearestRoundingMode)nearestRoundingMode layout:(MPSGraphTensorNamedDataLayout)layout name:(NSString *)name;
- (MPSGraphTensor)resizeNearestWithTensor:(MPSGraphTensor *)imagesTensor sizeTensor:(MPSGraphTensor *)size scaleTensor:(MPSGraphTensor *)scale offsetTensor:(MPSGraphTensor *)offset nearestRoundingMode:(MPSGraphResizeNearestRoundingMode)nearestRoundingMode name:(NSString *)name;
- (MPSGraphTensor)resizeTensor:(MPSGraphTensor *)imagesTensor size:(MPSShape *)size mode:(MPSGraphResizeMode)mode centerResult:(BOOL)centerResult alignCorners:(BOOL)alignCorners layout:(MPSGraphTensorNamedDataLayout)layout name:(NSString *)name;
- (MPSGraphTensor)resizeTensor:(MPSGraphTensor *)imagesTensor sizeTensor:(MPSGraphTensor *)size mode:(MPSGraphResizeMode)mode centerResult:(BOOL)centerResult alignCorners:(BOOL)alignCorners layout:(MPSGraphTensorNamedDataLayout)layout name:(NSString *)name;
- (MPSGraphTensor)resizeTensor:(MPSGraphTensor *)imagesTensor sizeTensor:(MPSGraphTensor *)size mode:(MPSGraphResizeMode)mode centerResult:(BOOL)centerResult alignCorners:(BOOL)alignCorners name:(NSString *)name;
- (MPSGraphTensor)resizeTensor:(MPSGraphTensor *)imagesTensor sizeTensor:(MPSGraphTensor *)size scaleOffsetTensor:(MPSGraphTensor *)scaleOffset mode:(MPSGraphResizeMode)mode layout:(MPSGraphTensorNamedDataLayout)layout name:(NSString *)name;
- (MPSGraphTensor)resizeTensor:(MPSGraphTensor *)imagesTensor sizeTensor:(MPSGraphTensor *)size scaleTensor:(MPSGraphTensor *)scale offsetTensor:(MPSGraphTensor *)offset mode:(MPSGraphResizeMode)mode name:(NSString *)name;
- (MPSGraphTensor)resizeWithGradientTensor:(MPSGraphTensor *)gradient input:(MPSGraphTensor *)input mode:(MPSGraphResizeMode)mode centerResult:(BOOL)centerResult alignCorners:(BOOL)alignCorners layout:(MPSGraphTensorNamedDataLayout)layout name:(NSString *)name;
- (MPSGraphTensor)resizeWithGradientTensor:(MPSGraphTensor *)gradient input:(MPSGraphTensor *)input scaleOffsetTensor:(MPSGraphTensor *)scaleOffset mode:(MPSGraphResizeMode)mode layout:(MPSGraphTensorNamedDataLayout)layout name:(NSString *)name;
- (MPSGraphTensor)resizeWithGradientTensor:(MPSGraphTensor *)gradient input:(MPSGraphTensor *)input scaleTensor:(MPSGraphTensor *)scale offsetTensor:(MPSGraphTensor *)offset mode:(MPSGraphResizeMode)mode name:(NSString *)name;
- (MPSGraphTensor)reverseSquareRootWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)reverseTensor:(MPSGraphTensor *)tensor axes:(NSArray *)axes name:(NSString *)name;
- (MPSGraphTensor)reverseTensor:(MPSGraphTensor *)tensor axesTensor:(MPSGraphTensor *)axesTensor name:(NSString *)name;
- (MPSGraphTensor)reverseTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)rintWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)roundWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)sampleGridWithSourceTensor:(MPSGraphTensor *)source coordinateTensor:(MPSGraphTensor *)coordinates layout:(MPSGraphTensorNamedDataLayout)layout normalizeCoordinates:(BOOL)normalizeCoordinates relativeCoordinates:(BOOL)relativeCoordinates alignCorners:(BOOL)alignCorners paddingMode:(MPSGraphPaddingMode)paddingMode nearestRoundingMode:(MPSGraphResizeNearestRoundingMode)nearestRoundingMode constantValue:(double)constantValue name:(NSString *)name;
- (MPSGraphTensor)sampleGridWithSourceTensor:(MPSGraphTensor *)source coordinateTensor:(MPSGraphTensor *)coordinates layout:(MPSGraphTensorNamedDataLayout)layout normalizeCoordinates:(BOOL)normalizeCoordinates relativeCoordinates:(BOOL)relativeCoordinates alignCorners:(BOOL)alignCorners paddingMode:(MPSGraphPaddingMode)paddingMode samplingMode:(MPSGraphResizeMode)samplingMode constantValue:(double)constantValue name:(NSString *)name;
- (MPSGraphTensor)scatterAlongAxis:(NSInteger)axis withDataTensor:(MPSGraphTensor *)dataTensor updatesTensor:(MPSGraphTensor *)updatesTensor indicesTensor:(MPSGraphTensor *)indicesTensor mode:(MPSGraphScatterMode)mode name:(NSString *)name;
- (MPSGraphTensor)scatterAlongAxis:(NSInteger)axis withUpdatesTensor:(MPSGraphTensor *)updatesTensor indicesTensor:(MPSGraphTensor *)indicesTensor shape:(MPSShape *)shape mode:(MPSGraphScatterMode)mode name:(NSString *)name;
- (MPSGraphTensor)scatterAlongAxisTensor:(MPSGraphTensor *)axisTensor withDataTensor:(MPSGraphTensor *)dataTensor updatesTensor:(MPSGraphTensor *)updatesTensor indicesTensor:(MPSGraphTensor *)indicesTensor mode:(MPSGraphScatterMode)mode name:(NSString *)name;
- (MPSGraphTensor)scatterAlongAxisTensor:(MPSGraphTensor *)axisTensor withUpdatesTensor:(MPSGraphTensor *)updatesTensor indicesTensor:(MPSGraphTensor *)indicesTensor shape:(MPSShape *)shape mode:(MPSGraphScatterMode)mode name:(NSString *)name;
- (MPSGraphTensor)scatterNDWithDataTensor:(MPSGraphTensor *)dataTensor updatesTensor:(MPSGraphTensor *)updatesTensor indicesTensor:(MPSGraphTensor *)indicesTensor batchDimensions:(NSUInteger)batchDimensions mode:(MPSGraphScatterMode)mode name:(NSString *)name;
- (MPSGraphTensor)scatterNDWithUpdatesTensor:(MPSGraphTensor *)updatesTensor indicesTensor:(MPSGraphTensor *)indicesTensor shape:(MPSShape *)shape batchDimensions:(NSUInteger)batchDimensions mode:(MPSGraphScatterMode)mode name:(NSString *)name;
- (MPSGraphTensor)scatterNDWithUpdatesTensor:(MPSGraphTensor *)updatesTensor indicesTensor:(MPSGraphTensor *)indicesTensor shape:(MPSShape *)shape batchDimensions:(NSUInteger)batchDimensions name:(NSString *)name;
- (MPSGraphTensor)scatterWithDataTensor:(MPSGraphTensor *)dataTensor updatesTensor:(MPSGraphTensor *)updatesTensor indicesTensor:(MPSGraphTensor *)indicesTensor axis:(NSInteger)axis mode:(MPSGraphScatterMode)mode name:(NSString *)name;
- (MPSGraphTensor)scatterWithUpdatesTensor:(MPSGraphTensor *)updatesTensor indicesTensor:(MPSGraphTensor *)indicesTensor shape:(MPSShape *)shape axis:(NSInteger)axis mode:(MPSGraphScatterMode)mode name:(NSString *)name;
- (MPSGraphTensor)selectWithPredicateTensor:(MPSGraphTensor *)predicateTensor truePredicateTensor:(MPSGraphTensor *)truePredicateTensor falsePredicateTensor:(MPSGraphTensor *)falseSelectTensor name:(NSString *)name;
- (MPSGraphTensor)shapeOfTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)sigmoidGradientWithIncomingGradient:(MPSGraphTensor *)gradient sourceTensor:(MPSGraphTensor *)source name:(NSString *)name;
- (MPSGraphTensor)sigmoidWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)signWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)signbitWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)sinWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)sinhWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)sliceGradientTensor:(MPSGraphTensor *)inputGradientTensor fwdInShapeTensor:(MPSGraphTensor *)fwdInShapeTensor starts:(NSArray *)starts ends:(NSArray *)ends strides:(NSArray *)strides name:(NSString *)name;
- (MPSGraphTensor)sliceGradientTensor:(MPSGraphTensor *)inputGradientTensor fwdInShapeTensor:(MPSGraphTensor *)fwdInShapeTensor starts:(NSArray *)starts ends:(NSArray *)ends strides:(NSArray *)strides startMask:(uint32_t)startMask endMask:(uint32_t)endMask squeezeMask:(uint32_t)squeezeMask name:(NSString *)name;
- (MPSGraphTensor)sliceTensor:(MPSGraphTensor *)tensor dimension:(NSUInteger)dimensionIndex start:(NSInteger)start length:(NSInteger)length name:(NSString *)name;
- (MPSGraphTensor)sliceTensor:(MPSGraphTensor *)tensor starts:(NSArray *)starts ends:(NSArray *)ends strides:(NSArray *)strides name:(NSString *)name;
- (MPSGraphTensor)sliceTensor:(MPSGraphTensor *)tensor starts:(NSArray *)starts ends:(NSArray *)ends strides:(NSArray *)strides startMask:(uint32_t)startMask endMask:(uint32_t)endMask squeezeMask:(uint32_t)squeezeMask name:(NSString *)name;
- (MPSGraphTensor)softMaxCrossEntropyGradientWithIncomingGradientTensor:(MPSGraphTensor *)gradientTensor sourceTensor:(MPSGraphTensor *)sourceTensor labelsTensor:(MPSGraphTensor *)labelsTensor axis:(NSInteger)axis reductionType:(MPSGraphLossReductionType)reductionType name:(NSString *)name;
- (MPSGraphTensor)softMaxCrossEntropyWithSourceTensor:(MPSGraphTensor *)sourceTensor labelsTensor:(MPSGraphTensor *)labelsTensor axis:(NSInteger)axis reductionType:(MPSGraphLossReductionType)reductionType name:(NSString *)name;
- (MPSGraphTensor)softMaxGradientWithIncomingGradient:(MPSGraphTensor *)gradient sourceTensor:(MPSGraphTensor *)source axis:(NSInteger)axis name:(NSString *)name;
- (MPSGraphTensor)softMaxWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis name:(NSString *)name;
- (MPSGraphTensor)sortWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis descending:(BOOL)descending name:(NSString *)name;
- (MPSGraphTensor)sortWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis name:(NSString *)name;
- (MPSGraphTensor)sortWithTensor:(MPSGraphTensor *)tensor axisTensor:(MPSGraphTensor *)axisTensor descending:(BOOL)descending name:(NSString *)name;
- (MPSGraphTensor)sortWithTensor:(MPSGraphTensor *)tensor axisTensor:(MPSGraphTensor *)axisTensor name:(NSString *)name;
- (MPSGraphTensor)spaceToBatchTensor:(MPSGraphTensor *)tensor spatialAxes:(NSArray *)spatialAxes batchAxis:(NSInteger)batchAxis blockDimensions:(NSArray *)blockDimensions usePixelShuffleOrder:(BOOL)usePixelShuffleOrder name:(NSString *)name;
- (MPSGraphTensor)spaceToBatchTensor:(MPSGraphTensor *)tensor spatialAxesTensor:(MPSGraphTensor *)spatialAxesTensor batchAxisTensor:(MPSGraphTensor *)batchAxisTensor blockDimensionsTensor:(MPSGraphTensor *)blockDimensionsTensor usePixelShuffleOrder:(BOOL)usePixelShuffleOrder name:(NSString *)name;
- (MPSGraphTensor)spaceToDepth2DTensor:(MPSGraphTensor *)tensor widthAxis:(NSUInteger)widthAxis heightAxis:(NSUInteger)heightAxis depthAxis:(NSUInteger)depthAxis blockSize:(NSUInteger)blockSize usePixelShuffleOrder:(BOOL)usePixelShuffleOrder name:(NSString *)name;
- (MPSGraphTensor)spaceToDepth2DTensor:(MPSGraphTensor *)tensor widthAxisTensor:(MPSGraphTensor *)widthAxisTensor heightAxisTensor:(MPSGraphTensor *)heightAxisTensor depthAxisTensor:(MPSGraphTensor *)depthAxisTensor blockSize:(NSUInteger)blockSize usePixelShuffleOrder:(BOOL)usePixelShuffleOrder name:(NSString *)name;
- (MPSGraphTensor)sparseTensorWithDescriptor:(MPSGraphCreateSparseOpDescriptor *)sparseDescriptor tensors:(NSArray *)inputTensorArray shape:(MPSShape *)shape name:(NSString *)name;
- (MPSGraphTensor)sparseTensorWithType:(MPSGraphSparseStorageType)sparseStorageType tensors:(NSArray *)inputTensorArray shape:(MPSShape *)shape dataType:(MPSDataType)dataType name:(NSString *)name;
- (MPSGraphTensor)squareRootWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)squareWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)squeezeTensor:(MPSGraphTensor *)tensor axes:(NSArray *)axes name:(NSString *)name;
- (MPSGraphTensor)squeezeTensor:(MPSGraphTensor *)tensor axesTensor:(MPSGraphTensor *)axesTensor name:(NSString *)name;
- (MPSGraphTensor)squeezeTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis name:(NSString *)name;
- (MPSGraphTensor)squeezeTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)stackTensors:(NSArray *)inputTensors axis:(NSInteger)axis name:(NSString *)name;
- (MPSGraphTensor)stencilWithSourceTensor:(MPSGraphTensor *)source weightsTensor:(MPSGraphTensor *)weights descriptor:(MPSGraphStencilOpDescriptor *)descriptor name:(NSString *)name;
- (MPSGraphTensor)stochasticGradientDescentWithLearningRateTensor:(MPSGraphTensor *)learningRateTensor valuesTensor:(MPSGraphTensor *)valuesTensor gradientTensor:(MPSGraphTensor *)gradientTensor name:(NSString *)name;
- (MPSGraphTensor)subtractionWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name;
- (MPSGraphTensor)tanWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)tanhWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)tileGradientWithIncomingGradientTensor:(MPSGraphTensor *)incomingGradientTensor sourceTensor:(MPSGraphTensor *)sourceTensor withMultiplier:(MPSShape *)multiplier name:(NSString *)name;
- (MPSGraphTensor)tileTensor:(MPSGraphTensor *)tensor withMultiplier:(MPSShape *)multiplier name:(NSString *)name;
- (MPSGraphTensor)topKWithGradientTensor:(MPSGraphTensor *)gradient source:(MPSGraphTensor *)source axis:(NSInteger)axis k:(NSUInteger)k name:(NSString *)name;
- (MPSGraphTensor)topKWithGradientTensor:(MPSGraphTensor *)gradient source:(MPSGraphTensor *)source axisTensor:(MPSGraphTensor *)axisTensor kTensor:(MPSGraphTensor *)kTensor name:(NSString *)name;
- (MPSGraphTensor)topKWithGradientTensor:(MPSGraphTensor *)gradient source:(MPSGraphTensor *)source k:(NSUInteger)k name:(NSString *)name;
- (MPSGraphTensor)topKWithGradientTensor:(MPSGraphTensor *)gradient source:(MPSGraphTensor *)source kTensor:(MPSGraphTensor *)kTensor name:(NSString *)name;
- (MPSGraphTensor)transposeTensor:(MPSGraphTensor *)tensor dimension:(NSUInteger)dimensionIndex withDimension:(NSUInteger)dimensionIndex2 name:(NSString *)name;
- (MPSGraphTensor)transposeTensor:(MPSGraphTensor *)tensor permutation:(NSArray *)permutation name:(NSString *)name;
- (MPSGraphTensor)truncateWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name;
- (MPSGraphTensor)variableWithData:(NSData *)data shape:(MPSShape *)shape dataType:(MPSDataType)dataType name:(NSString *)name;
- (MPSGraphTensor)varianceOfTensor:(MPSGraphTensor *)tensor axes:(NSArray *)axes name:(NSString *)name;
- (MPSGraphTensor)varianceOfTensor:(MPSGraphTensor *)tensor meanTensor:(MPSGraphTensor *)meanTensor axes:(NSArray *)axes name:(NSString *)name;
- (MPSGraphTensorDataDictionary)encodeToCommandBuffer:(MPSCommandBuffer *)commandBuffer feeds:(MPSGraphTensorDataDictionary *)feeds targetTensors:(NSArray *)targetTensors targetOperations:(NSArray *)targetOperations executionDescriptor:(MPSGraphExecutionDescriptor *)executionDescriptor;
- (MPSGraphTensorDataDictionary)runAsyncWithFeeds:(MPSGraphTensorDataDictionary *)feeds targetTensors:(NSArray *)targetTensors targetOperations:(NSArray *)targetOperations executionDescriptor:(MPSGraphExecutionDescriptor *)executionDescriptor;
- (MPSGraphTensorDataDictionary)runAsyncWithMTLCommandQueue:(id)commandQueue feeds:(MPSGraphTensorDataDictionary *)feeds targetTensors:(NSArray *)targetTensors targetOperations:(NSArray *)targetOperations executionDescriptor:(MPSGraphExecutionDescriptor *)executionDescriptor;
- (MPSGraphTensorDataDictionary)runWithFeeds:(MPSGraphTensorDataDictionary *)feeds targetTensors:(NSArray *)targetTensors targetOperations:(NSArray *)targetOperations;
- (MPSGraphTensorDataDictionary)runWithMTLCommandQueue:(id)commandQueue feeds:(MPSGraphTensorDataDictionary *)feeds targetTensors:(NSArray *)targetTensors targetOperations:(NSArray *)targetOperations;
- (NSArray)GRUGradientsWithSourceTensor:(MPSGraphTensor *)source recurrentWeight:(MPSGraphTensor *)recurrentWeight sourceGradient:(MPSGraphTensor *)sourceGradient zState:(MPSGraphTensor *)zState outputFwd:(MPSGraphTensor *)outputFwd inputWeight:(MPSGraphTensor *)inputWeight bias:(MPSGraphTensor *)bias descriptor:(MPSGraphGRUDescriptor *)descriptor name:(NSString *)name;
- (NSArray)GRUGradientsWithSourceTensor:(MPSGraphTensor *)source recurrentWeight:(MPSGraphTensor *)recurrentWeight sourceGradient:(MPSGraphTensor *)sourceGradient zState:(MPSGraphTensor *)zState outputFwd:(MPSGraphTensor *)outputFwd inputWeight:(MPSGraphTensor *)inputWeight bias:(MPSGraphTensor *)bias initState:(MPSGraphTensor *)initState descriptor:(MPSGraphGRUDescriptor *)descriptor name:(NSString *)name;
- (NSArray)GRUGradientsWithSourceTensor:(MPSGraphTensor *)source recurrentWeight:(MPSGraphTensor *)recurrentWeight sourceGradient:(MPSGraphTensor *)sourceGradient zState:(MPSGraphTensor *)zState outputFwd:(MPSGraphTensor *)outputFwd stateGradient:(MPSGraphTensor *)stateGradient inputWeight:(MPSGraphTensor *)inputWeight bias:(MPSGraphTensor *)bias initState:(MPSGraphTensor *)initState mask:(MPSGraphTensor *)mask secondaryBias:(MPSGraphTensor *)secondaryBias descriptor:(MPSGraphGRUDescriptor *)descriptor name:(NSString *)name;
- (NSArray)GRUWithSourceTensor:(MPSGraphTensor *)source recurrentWeight:(MPSGraphTensor *)recurrentWeight inputWeight:(MPSGraphTensor *)inputWeight bias:(MPSGraphTensor *)bias descriptor:(MPSGraphGRUDescriptor *)descriptor name:(NSString *)name;
- (NSArray)GRUWithSourceTensor:(MPSGraphTensor *)source recurrentWeight:(MPSGraphTensor *)recurrentWeight inputWeight:(MPSGraphTensor *)inputWeight bias:(MPSGraphTensor *)bias initState:(MPSGraphTensor *)initState descriptor:(MPSGraphGRUDescriptor *)descriptor name:(NSString *)name;
- (NSArray)GRUWithSourceTensor:(MPSGraphTensor *)source recurrentWeight:(MPSGraphTensor *)recurrentWeight inputWeight:(MPSGraphTensor *)inputWeight bias:(MPSGraphTensor *)bias initState:(MPSGraphTensor *)initState mask:(MPSGraphTensor *)mask secondaryBias:(MPSGraphTensor *)secondaryBias descriptor:(MPSGraphGRUDescriptor *)descriptor name:(NSString *)name;
- (NSArray)LSTMGradientsWithSourceTensor:(MPSGraphTensor *)source recurrentWeight:(MPSGraphTensor *)recurrentWeight sourceGradient:(MPSGraphTensor *)sourceGradient zState:(MPSGraphTensor *)zState cellOutputFwd:(MPSGraphTensor *)cellOutputFwd descriptor:(MPSGraphLSTMDescriptor *)descriptor name:(NSString *)name;
- (NSArray)LSTMGradientsWithSourceTensor:(MPSGraphTensor *)source recurrentWeight:(MPSGraphTensor *)recurrentWeight sourceGradient:(MPSGraphTensor *)sourceGradient zState:(MPSGraphTensor *)zState cellOutputFwd:(MPSGraphTensor *)cellOutputFwd inputWeight:(MPSGraphTensor *)inputWeight bias:(MPSGraphTensor *)bias initState:(MPSGraphTensor *)initState initCell:(MPSGraphTensor *)initCell descriptor:(MPSGraphLSTMDescriptor *)descriptor name:(NSString *)name;
- (NSArray)LSTMGradientsWithSourceTensor:(MPSGraphTensor *)source recurrentWeight:(MPSGraphTensor *)recurrentWeight sourceGradient:(MPSGraphTensor *)sourceGradient zState:(MPSGraphTensor *)zState cellOutputFwd:(MPSGraphTensor *)cellOutputFwd inputWeight:(MPSGraphTensor *)inputWeight bias:(MPSGraphTensor *)bias initState:(MPSGraphTensor *)initState initCell:(MPSGraphTensor *)initCell mask:(MPSGraphTensor *)mask descriptor:(MPSGraphLSTMDescriptor *)descriptor name:(NSString *)name;
- (NSArray)LSTMGradientsWithSourceTensor:(MPSGraphTensor *)source recurrentWeight:(MPSGraphTensor *)recurrentWeight sourceGradient:(MPSGraphTensor *)sourceGradient zState:(MPSGraphTensor *)zState cellOutputFwd:(MPSGraphTensor *)cellOutputFwd stateGradient:(MPSGraphTensor *)stateGradient cellGradient:(MPSGraphTensor *)cellGradient inputWeight:(MPSGraphTensor *)inputWeight bias:(MPSGraphTensor *)bias initState:(MPSGraphTensor *)initState initCell:(MPSGraphTensor *)initCell mask:(MPSGraphTensor *)mask peephole:(MPSGraphTensor *)peephole descriptor:(MPSGraphLSTMDescriptor *)descriptor name:(NSString *)name;
- (NSArray)LSTMWithSourceTensor:(MPSGraphTensor *)source recurrentWeight:(MPSGraphTensor *)recurrentWeight initState:(MPSGraphTensor *)initState initCell:(MPSGraphTensor *)initCell descriptor:(MPSGraphLSTMDescriptor *)descriptor name:(NSString *)name;
- (NSArray)LSTMWithSourceTensor:(MPSGraphTensor *)source recurrentWeight:(MPSGraphTensor *)recurrentWeight inputWeight:(MPSGraphTensor *)inputWeight bias:(MPSGraphTensor *)bias initState:(MPSGraphTensor *)initState initCell:(MPSGraphTensor *)initCell descriptor:(MPSGraphLSTMDescriptor *)descriptor name:(NSString *)name;
- (NSArray)LSTMWithSourceTensor:(MPSGraphTensor *)source recurrentWeight:(MPSGraphTensor *)recurrentWeight inputWeight:(MPSGraphTensor *)inputWeight bias:(MPSGraphTensor *)bias initState:(MPSGraphTensor *)initState initCell:(MPSGraphTensor *)initCell mask:(MPSGraphTensor *)mask peephole:(MPSGraphTensor *)peephole descriptor:(MPSGraphLSTMDescriptor *)descriptor name:(NSString *)name;
- (NSArray)adamWithCurrentLearningRateTensor:(MPSGraphTensor *)currentLearningRateTensor beta1Tensor:(MPSGraphTensor *)beta1Tensor beta2Tensor:(MPSGraphTensor *)beta2Tensor epsilonTensor:(MPSGraphTensor *)epsilonTensor valuesTensor:(MPSGraphTensor *)valuesTensor momentumTensor:(MPSGraphTensor *)momentumTensor velocityTensor:(MPSGraphTensor *)velocityTensor maximumVelocityTensor:(MPSGraphTensor *)maximumVelocityTensor gradientTensor:(MPSGraphTensor *)gradientTensor name:(NSString *)name;
- (NSArray)adamWithLearningRateTensor:(MPSGraphTensor *)learningRateTensor beta1Tensor:(MPSGraphTensor *)beta1Tensor beta2Tensor:(MPSGraphTensor *)beta2Tensor epsilonTensor:(MPSGraphTensor *)epsilonTensor beta1PowerTensor:(MPSGraphTensor *)beta1PowerTensor beta2PowerTensor:(MPSGraphTensor *)beta2PowerTensor valuesTensor:(MPSGraphTensor *)valuesTensor momentumTensor:(MPSGraphTensor *)momentumTensor velocityTensor:(MPSGraphTensor *)velocityTensor maximumVelocityTensor:(MPSGraphTensor *)maximumVelocityTensor gradientTensor:(MPSGraphTensor *)gradientTensor name:(NSString *)name;
- (NSArray)bottomKWithSourceTensor:(MPSGraphTensor *)source axis:(NSInteger)axis k:(NSUInteger)k name:(NSString *)name;
- (NSArray)bottomKWithSourceTensor:(MPSGraphTensor *)source axisTensor:(MPSGraphTensor *)axisTensor kTensor:(MPSGraphTensor *)kTensor name:(NSString *)name;
- (NSArray)controlDependencyWithOperations:(NSArray *)operations dependentBlock:(MPSGraphControlFlowDependencyBlock)dependentBlock name:(NSString *)name;
- (NSArray)forLoopWithLowerBound:(MPSGraphTensor *)lowerBound upperBound:(MPSGraphTensor *)upperBound step:(MPSGraphTensor *)step initialBodyArguments:(NSArray *)initialBodyArguments body:(MPSGraphForLoopBodyBlock)body name:(NSString *)name;
- (NSArray)forLoopWithNumberOfIterations:(MPSGraphTensor *)numberOfIterations initialBodyArguments:(NSArray *)initialBodyArguments body:(MPSGraphForLoopBodyBlock)body name:(NSString *)name;
- (NSArray)ifWithPredicateTensor:(MPSGraphTensor *)predicateTensor thenBlock:(MPSGraphIfThenElseBlock)thenBlock elseBlock:(MPSGraphIfThenElseBlock)elseBlock name:(NSString *)name;
- (NSArray)maxPooling2DReturnIndicesWithSourceTensor:(MPSGraphTensor *)source descriptor:(MPSGraphPooling2DOpDescriptor *)descriptor name:(NSString *)name;
- (NSArray)maxPooling4DReturnIndicesWithSourceTensor:(MPSGraphTensor *)source descriptor:(MPSGraphPooling4DOpDescriptor *)descriptor name:(NSString *)name;
- (NSArray)randomTensorWithShape:(MPSShape *)shape descriptor:(MPSGraphRandomOpDescriptor *)descriptor stateTensor:(MPSGraphTensor *)state name:(NSString *)name;
- (NSArray)randomTensorWithShapeTensor:(MPSGraphTensor *)shapeTensor descriptor:(MPSGraphRandomOpDescriptor *)descriptor stateTensor:(MPSGraphTensor *)state name:(NSString *)name;
- (NSArray)randomUniformTensorWithShape:(MPSShape *)shape stateTensor:(MPSGraphTensor *)state name:(NSString *)name;
- (NSArray)randomUniformTensorWithShapeTensor:(MPSGraphTensor *)shapeTensor stateTensor:(MPSGraphTensor *)state name:(NSString *)name;
- (NSArray)singleGateRNNGradientsWithSourceTensor:(MPSGraphTensor *)source recurrentWeight:(MPSGraphTensor *)recurrentWeight sourceGradient:(MPSGraphTensor *)sourceGradient zState:(MPSGraphTensor *)zState initState:(MPSGraphTensor *)initState descriptor:(MPSGraphSingleGateRNNDescriptor *)descriptor name:(NSString *)name;
- (NSArray)singleGateRNNGradientsWithSourceTensor:(MPSGraphTensor *)source recurrentWeight:(MPSGraphTensor *)recurrentWeight sourceGradient:(MPSGraphTensor *)sourceGradient zState:(MPSGraphTensor *)zState inputWeight:(MPSGraphTensor *)inputWeight bias:(MPSGraphTensor *)bias initState:(MPSGraphTensor *)initState descriptor:(MPSGraphSingleGateRNNDescriptor *)descriptor name:(NSString *)name;
- (NSArray)singleGateRNNGradientsWithSourceTensor:(MPSGraphTensor *)source recurrentWeight:(MPSGraphTensor *)recurrentWeight sourceGradient:(MPSGraphTensor *)sourceGradient zState:(MPSGraphTensor *)zState inputWeight:(MPSGraphTensor *)inputWeight bias:(MPSGraphTensor *)bias initState:(MPSGraphTensor *)initState mask:(MPSGraphTensor *)mask descriptor:(MPSGraphSingleGateRNNDescriptor *)descriptor name:(NSString *)name;
- (NSArray)singleGateRNNGradientsWithSourceTensor:(MPSGraphTensor *)source recurrentWeight:(MPSGraphTensor *)recurrentWeight sourceGradient:(MPSGraphTensor *)sourceGradient zState:(MPSGraphTensor *)zState stateGradient:(MPSGraphTensor *)stateGradient inputWeight:(MPSGraphTensor *)inputWeight bias:(MPSGraphTensor *)bias initState:(MPSGraphTensor *)initState mask:(MPSGraphTensor *)mask descriptor:(MPSGraphSingleGateRNNDescriptor *)descriptor name:(NSString *)name;
- (NSArray)singleGateRNNWithSourceTensor:(MPSGraphTensor *)source recurrentWeight:(MPSGraphTensor *)recurrentWeight initState:(MPSGraphTensor *)initState descriptor:(MPSGraphSingleGateRNNDescriptor *)descriptor name:(NSString *)name;
- (NSArray)singleGateRNNWithSourceTensor:(MPSGraphTensor *)source recurrentWeight:(MPSGraphTensor *)recurrentWeight inputWeight:(MPSGraphTensor *)inputWeight bias:(MPSGraphTensor *)bias initState:(MPSGraphTensor *)initState descriptor:(MPSGraphSingleGateRNNDescriptor *)descriptor name:(NSString *)name;
- (NSArray)singleGateRNNWithSourceTensor:(MPSGraphTensor *)source recurrentWeight:(MPSGraphTensor *)recurrentWeight inputWeight:(MPSGraphTensor *)inputWeight bias:(MPSGraphTensor *)bias initState:(MPSGraphTensor *)initState mask:(MPSGraphTensor *)mask descriptor:(MPSGraphSingleGateRNNDescriptor *)descriptor name:(NSString *)name;
- (NSArray)splitTensor:(MPSGraphTensor *)tensor numSplits:(NSUInteger)numSplits axis:(NSInteger)axis name:(NSString *)name;
- (NSArray)splitTensor:(MPSGraphTensor *)tensor splitSizes:(NSArray *)splitSizes axis:(NSInteger)axis name:(NSString *)name;
- (NSArray)splitTensor:(MPSGraphTensor *)tensor splitSizesTensor:(MPSGraphTensor *)splitSizesTensor axis:(NSInteger)axis name:(NSString *)name;
- (NSArray)topKWithSourceTensor:(MPSGraphTensor *)source axis:(NSInteger)axis k:(NSUInteger)k name:(NSString *)name;
- (NSArray)topKWithSourceTensor:(MPSGraphTensor *)source axisTensor:(MPSGraphTensor *)axisTensor kTensor:(MPSGraphTensor *)kTensor name:(NSString *)name;
- (NSArray)topKWithSourceTensor:(MPSGraphTensor *)source k:(NSUInteger)k name:(NSString *)name;
- (NSArray)topKWithSourceTensor:(MPSGraphTensor *)source kTensor:(MPSGraphTensor *)kTensor name:(NSString *)name;
- (NSArray)whileWithInitialInputs:(NSArray *)initialInputs before:(MPSGraphWhileBeforeBlock)before after:(MPSGraphWhileAfterBlock)after name:(NSString *)name;
- (NSDictionary)gradientForPrimaryTensor:(MPSGraphTensor *)primaryTensor withTensors:(NSArray *)tensors name:(NSString *)name;
- (id).cxx_construct;
- (id)absoluteErrorWithPrimaryTensor:(id)tensor secondaryTensor:(id)secondaryTensor reductionType:(unint64_t)type name:(id)name;
- (id)adamAssignWithInputVariableTensor:(id)tensor momentumVariableTensor:(id)variableTensor velocityVariableTensor:(id)velocityVariableTensor maximumVelocityVariableTensor:(id)maximumVelocityVariableTensor updates:(id)updates name:(id)name;
- (id)adamUpdateWithCurrentLearningRateTensor:(id)tensor beta1Tensor:(id)beta1Tensor beta2Tensor:(id)beta2Tensor epsilonTensor:(id)epsilonTensor valuesTensor:(id)valuesTensor momentumTensor:(id)momentumTensor velocityTensor:(id)velocityTensor maximumVelocityTensor:(id)self0 gradientTensor:(id)self1 name:(id)self2;
- (id)adamUpdateWithLearningRateTensor:(id)tensor beta1Tensor:(id)beta1Tensor beta2Tensor:(id)beta2Tensor epsilonTensor:(id)epsilonTensor beta1PowerTensor:(id)powerTensor beta2PowerTensor:(id)beta2PowerTensor valuesTensor:(id)valuesTensor momentumTensor:(id)self0 velocityTensor:(id)self1 maximumVelocityTensor:(id)self2 gradientTensor:(id)self3 name:(id)self4;
- (id)adamUpdateWithLearningRateTensor:(id)tensor beta1Tensor:(id)beta1Tensor beta2Tensor:(id)beta2Tensor epsilonTensor:(id)epsilonTensor iterationTensor:(id)iterationTensor valuesTensor:(id)valuesTensor momentumTensor:(id)momentumTensor velocityTensor:(id)self0 gradientTensor:(id)self1 name:(id)self2;
- (id)applyAdamWithCurrentLearningRateTensor:(id)tensor beta1Tensor:(id)beta1Tensor beta2Tensor:(id)beta2Tensor epsilonTensor:(id)epsilonTensor variable:(id)variable momentumVariable:(id)momentumVariable velocityVariable:(id)velocityVariable maximumVelocityVariable:(id)self0 gradientTensor:(id)self1 name:(id)self2;
- (id)applyAdamWithLearningRateTensor:(id)tensor beta1Tensor:(id)beta1Tensor beta2Tensor:(id)beta2Tensor epsilonTensor:(id)epsilonTensor beta1PowerTensor:(id)powerTensor beta2PowerTensor:(id)beta2PowerTensor variable:(id)variable momentumVariable:(id)self0 velocityVariable:(id)self1 gradientTensor:(id)self2 name:(id)self3;
- (id)applyAdamWithLearningRateTensor:(id)tensor beta1Tensor:(id)beta1Tensor beta2Tensor:(id)beta2Tensor epsilonTensor:(id)epsilonTensor iterationTensor:(id)iterationTensor variable:(id)variable momentumVariable:(id)momentumVariable velocityVariable:(id)self0 gradientTensor:(id)self1 name:(id)self2;
- (id)avgPooling2DLayerWithTensor:(id)tensor kernelSizes:(id)sizes strides:(id)strides paddingStyle:(unint64_t)style dataLayout:(unint64_t)layout name:(id)name;
- (id)batchNormalizationLayerWithTensor:(id)tensor batchNormalizationGammaInitializer:(id)initializer batchNormalizationBetaInitializer:(id)betaInitializer batchNormalizationMeanInitializer:(id)meanInitializer batchNormalizationVarianceInitializer:(id)varianceInitializer batchNormalizationEpsilon:(double)epsilon dataLayout:(unint64_t)layout name:(id)self0;
- (id)biasAddWithTensor:(id)tensor biases:(id)biases dataLayout:(unint64_t)layout name:(id)name;
- (id)broadcastGradientArgsForPrimaryTensor:(id)tensor withSecondaryTensor:(id)secondaryTensor name:(id)name;
- (id)bufferToTensorWithTensor:(id)tensor name:(id)name;
- (id)bufferToTensorWithTensor:(id)tensor shape:(id)shape type:(unsigned int)type interleave:(id)interleave isTensorBufferOp:(BOOL)op isChannelAndInterleaveSame:(BOOL)same name:(id)name;
- (id)callSymbolName:(id)name inputTensors:(id)tensors outputTypes:(id)types name:(id)a6;
- (id)callWithInputTensors:(id)tensors outputTypes:(id)types symbolName:(id)name inliningOption:(unint64_t)option name:(id)a7;
- (id)callWithInputTensors:(id)tensors outputTypes:(id)types symbolName:(id)name name:(id)a6;
- (id)castBooleansOfInputsTensors:(id)tensors;
- (id)compileWithDevice:(id)device feeds:(id)feeds targetTensors:(id)tensors targetOperations:(id)operations;
- (id)convolution2DLayerWithTensor:(id)tensor kernelSizes:(id)sizes outputChannelCount:(unint64_t)count strides:(id)strides activationType:(unsigned int)type weightsInitializer:(id)initializer biasesInitializer:(id)biasesInitializer batchNormalizationGammaInitializer:(id)self0 batchNormalizationBetaInitializer:(id)self1 batchNormalizationMeanInitializer:(id)self2 batchNormalizationVarianceInitializer:(id)self3 batchNormalizationEpsilon:(double)self4 paddingStyle:(unint64_t)self5 dataLayout:(unint64_t)self6 weightsLayout:(unint64_t)self7 name:(id)self8;
- (id)convolution2DLayerWithTensor:(id)tensor kernelSizes:(id)sizes outputChannelCount:(unint64_t)count strides:(id)strides activationType:(unsigned int)type weightsInitializer:(id)initializer biasesInitializer:(id)biasesInitializer paddingStyle:(unint64_t)self0 dataLayout:(unint64_t)self1 weightsLayout:(unint64_t)self2 name:(id)self3;
- (id)convolution2DLayerWithTensor:(id)tensor kernelSizes:(id)sizes outputChannelCount:(unint64_t)count strides:(id)strides dilationRates:(id)rates groups:(unint64_t)groups activationType:(unsigned int)type weightsInitializer:(id)self0 biasesInitializer:(id)self1 batchNormalizationGammaInitializer:(id)self2 batchNormalizationBetaInitializer:(id)self3 batchNormalizationMeanInitializer:(id)self4 batchNormalizationVarianceInitializer:(id)self5 batchNormalizationEpsilon:(double)self6 paddingStyle:(unint64_t)self7 dataLayout:(unint64_t)self8 weightsLayout:(unint64_t)self9 name:(id)name;
- (id)convolution2DWithDefaultBatchNormalizationLayerWithTensor:(id)tensor kernelSizes:(id)sizes outputChannelCount:(unint64_t)count strides:(id)strides activationType:(unsigned int)type weightsInitializer:(id)initializer biasesInitializer:(id)biasesInitializer paddingStyle:(unint64_t)self0 dataLayout:(unint64_t)self1 weightsLayout:(unint64_t)self2 name:(id)self3;
- (id)costVolumeWithRefTensor:(id)tensor inputTensor:(id)inputTensor coordinatesTensor:(id)coordinatesTensor windowSizes:(id)sizes layout:(unint64_t)layout normalizeCoordinates:(BOOL)coordinates relativeCoordinates:(BOOL)relativeCoordinates coordinateIs1DInWidth:(BOOL)self0 similarityType:(unint64_t)self1 name:(id)self2;
- (id)createTexture:(id)texture withPixelFormat:(unint64_t)format isCompressed:(BOOL)compressed name:(id)name;
- (id)cropResizeWithImagesTensor:(id)tensor boxesTensor:(id)boxesTensor boxIndicesTensor:(id)indicesTensor descriptor:(id)descriptor name:(id)name;
- (id)cropTensor:(id)tensor dimension:(unint64_t)dimension amount_before:(unint64_t)amount_before amount_after:(unint64_t)amount_after name:(id)name;
- (id)cumulativeMaximumReturnIndicesWithTensor:(id)tensor axis:(int64_t)axis exclusive:(BOOL)exclusive reverse:(BOOL)reverse name:(id)name;
- (id)cumulativeMinimumReturnIndicesWithTensor:(id)tensor axis:(int64_t)axis exclusive:(BOOL)exclusive reverse:(BOOL)reverse name:(id)name;
- (id)currentLearningRateWithLearningRateTensor:(id)tensor beta1Tensor:(id)beta1Tensor beta2Tensor:(id)beta2Tensor beta1PowerTensor:(id)powerTensor beta2PowerTensor:(id)beta2PowerTensor name:(id)name;
- (id)debugDescription;
- (id)decompositionLUWithTensor:(id)tensor name:(id)name;
- (id)decompositionWithTensor:(id)tensor descriptor:(id)descriptor name:(id)name;
- (id)deinterleaveTensor:(id)tensor interleaveFactor:(unint64_t)factor name:(id)name;
- (id)depthwiseConvolution2DDataGradientWithIncomingGradientTensor:(id)tensor weightsTensor:(id)weightsTensor outputShapeTensor:(id)shapeTensor descriptor:(id)descriptor name:(id)name;
- (id)depthwiseConvolution2DWeightsGradientWithIncomingGradientTensor:(id)tensor sourceTensor:(id)sourceTensor outputShapeTensor:(id)shapeTensor descriptor:(id)descriptor name:(id)name;
- (id)depthwiseConvolution3DDataGradientWithIncomingGradientTensor:(id)tensor weightsTensor:(id)weightsTensor outputShapeTensor:(id)shapeTensor descriptor:(id)descriptor name:(id)name;
- (id)depthwiseConvolution3DWeightsGradientWithIncomingGradientTensor:(id)tensor sourceTensor:(id)sourceTensor outputShapeTensor:(id)shapeTensor descriptor:(id)descriptor name:(id)name;
- (id)dequantizeTensor:(id)tensor LUTTensor:(id)tTensor axis:(int64_t)axis name:(id)name;
- (id)dequantizeTensor:(id)tensor LUTTensor:(id)tTensor name:(id)name;
- (id)dequantizeTensor:(id)tensor lutTableTensor:(id)tableTensor axis:(int64_t)axis name:(id)name;
- (id)dequantizeTensor:(id)tensor lutTableTensor:(id)tableTensor name:(id)name;
- (id)dequantizeTensor:(id)tensor scale:(double)scale zeroPoint:(double)point dtype:(unsigned int)dtype name:(id)name;
- (id)dequantizeTensor:(id)tensor scaleTensor:(id)scaleTensor dataType:(unsigned int)type name:(id)name;
- (id)dequantizeTensor:(id)tensor scaleTensor:(id)scaleTensor zeroPoint:(double)point dtype:(unsigned int)dtype axis:(int)axis name:(id)name;
- (id)dequantizeTensor:(id)tensor scaleTensor:(id)scaleTensor zeroPointTensor:(id)pointTensor dataType:(unsigned int)type name:(id)name;
- (id)dequantizeTensor:(id)tensor scaleTensor:(id)scaleTensor zeroPointTensor:(id)pointTensor dtype:(unsigned int)dtype axis:(int)axis name:(id)name;
- (id)dequantizeTensor:(id)tensor scaleTensor:(id)scaleTensor zeroPointTensor:(id)pointTensor minTensor:(id)minTensor dataType:(unsigned int)type axis:(int64_t)axis name:(id)name;
- (id)dequantizeTensor:(id)tensor scaleTensor:(id)scaleTensor zeroPointTensor:(id)pointTensor minTensor:(id)minTensor dataType:(unsigned int)type name:(id)name;
- (id)dimensionSizeOfTensor:(id)tensor axes:(id)axes name:(id)name;
- (id)dimensionSizeOfTensor:(id)tensor axesTensor:(id)axesTensor name:(id)name;
- (id)eluGradientWithIncomingGradient:(id)gradient sourceTensor:(id)tensor alpha:(double)alpha name:(id)name;
- (id)eluWithTensor:(id)tensor alpha:(double)alpha name:(id)name;
- (id)expandTensor:(id)tensor dimension:(unint64_t)dimension name:(id)name;
- (id)expandTensor:(id)tensor dimensionTensor:(id)dimensionTensor name:(id)name;
- (id)fixCastIntTensor:(id)tensor toSignedness:(BOOL)signedness name:(id)name;
- (id)fixSignednessOfInputsTensors:(id)tensors;
- (id)fixTypeOfReductionInput:(id)input;
- (id)fullyConnectedLayerWithTensor:(id)tensor outputChannelCount:(unint64_t)count activationType:(unsigned int)type weightsInitializer:(id)initializer biasesInitializer:(id)biasesInitializer name:(id)name;
- (id)gatherAlongAxisWithUpdatesTensor:(id)tensor indicesTensor:(id)indicesTensor axis:(int64_t)axis name:(id)name;
- (id)getCoordinateValueWithShapeTensor:(id)tensor axisTensor:(id)axisTensor name:(id)name;
- (id)getExecutableForDevice:(id)device feeds:(id)feeds targetTensors:(id)tensors targetOperations:(id)operations resultsDictionary:(id)dictionary executionDescriptor:(id)descriptor;
- (id)gradientForPrimaryTensor:(id)tensor withSecondaryTensor:(id)secondaryTensor name:(id)name;
- (id)interleaveTensor:(id)tensor interleaveFactor:(unint64_t)factor name:(id)name;
- (id)kernelPredictorWithSourceTensor:(id)tensor weightsTensor:(id)weightsTensor layout:(unint64_t)layout kernelShape:(id)shape dilationRates:(id)rates name:(id)name;
- (id)kernelPredictorWithSourceTensor:(id)tensor weightsTensor:(id)weightsTensor layout:(unint64_t)layout kernelShape:(id)shape name:(id)name;
- (id)localConvolutionDataGradientWithIncomingGradientTensor:(id)tensor weightTensor:(id)weightTensor dataLayout:(unint64_t)layout kernelShape:(id)shape dilationRateInX:(unint64_t)x dilationRateInY:(unint64_t)y name:(id)name;
- (id)localConvolutionWeightGradientWithIncomingGradientTensor:(id)tensor sourceTensor:(id)sourceTensor dataLayout:(unint64_t)layout kernelShape:(id)shape dilationRateInX:(unint64_t)x dilationRateInY:(unint64_t)y name:(id)name;
- (id)localConvolutionWithSourceTensor:(id)tensor weightTensor:(id)weightTensor dataLayout:(unint64_t)layout kernelShape:(id)shape dilationRateInX:(unint64_t)x dilationRateInY:(unint64_t)y name:(id)name;
- (id)lossReductionWithTensor:(id)tensor reductionType:(unint64_t)type axis:(int64_t *)axis name:(id)name;
- (id)makeListWithElementType:(id)type maxSize:(unint64_t)size name:(id)name;
- (id)makeListWithElementType:(id)type name:(id)name;
- (id)mathOpsWithTensors:(id)tensors mathOpType:(unint64_t)type name:(id)name;
- (id)matrixMultiplicationPrimaryGradientWithIncomingGradientTensor:(id)tensor primaryTensor:(id)primaryTensor secondaryTensor:(id)secondaryTensor name:(id)name;
- (id)matrixMultiplicationSecondaryGradientWithIncomingGradientTensor:(id)tensor primaryTensor:(id)primaryTensor secondaryTensor:(id)secondaryTensor name:(id)name;
- (id)maxPooling2DLayerWithTensor:(id)tensor kernelSizes:(id)sizes strides:(id)strides paddingStyle:(unint64_t)style dataLayout:(unint64_t)layout name:(id)name;
- (id)momentumUpdateWithBetaTensor:(id)tensor momentumTensor:(id)momentumTensor gradientTensor:(id)gradientTensor name:(id)name;
- (id)operationWithName:(id)name;
- (id)padGradientWithIncomingGradientTensor:(id)tensor inputTensor:(id)inputTensor paddingMode:(int64_t)mode paddingTensor:(id)paddingTensor constantValuesTensor:(id)valuesTensor name:(id)name;
- (id)padGradientWithIncomingGradientTensor:(id)tensor sourceTensor:(id)sourceTensor paddingMode:(int64_t)mode paddingTensor:(id)paddingTensor name:(id)name;
- (id)padTensor:(id)tensor paddingMode:(int64_t)mode paddingTensor:(id)paddingTensor constantValuesTensor:(id)valuesTensor name:(id)name;
- (id)paddingTensorWithLeftPadding:(id)padding rightPadding:(id)rightPadding;
- (id)popBackFromList:(id)list outputList:(id *)outputList name:(id)name;
- (id)progressRandomStateTensor:(id)tensor forShape:(id)shape name:(id)name;
- (id)progressRandomStateTensor:(id)tensor forShapeTensor:(id)shapeTensor name:(id)name;
- (id)prunedGradientTensorWithDescriptor:(id)descriptor inputTensor:(id)tensor gradientTensor:(id)gradientTensor shape:(id)shape name:(id)name;
- (id)prunedTensorWithDescriptor:(id)descriptor tensor:(id)tensor shape:(id)shape name:(id)name;
- (id)pushBackToList:(id)list element:(id)element name:(id)name;
- (id)quantizeTensor:(id)tensor scale:(double)scale zeroPoint:(double)point dtype:(unsigned int)dtype name:(id)name;
- (id)quantizeTensor:(id)tensor scaleTensor:(id)scaleTensor zeroPoint:(double)point dtype:(unsigned int)dtype axis:(int)axis name:(id)name;
- (id)quantizeTensor:(id)tensor scaleTensor:(id)scaleTensor zeroPointTensor:(id)pointTensor dtype:(unsigned int)dtype axis:(int)axis name:(id)name;
- (id)quantizedGatherWithUpdatesTensor:(id)tensor indicesTensor:(id)indicesTensor scaleTensor:(id)scaleTensor zeroPointTensor:(id)pointTensor minTensor:(id)minTensor dequantDataType:(unsigned int)type axis:(unint64_t)axis batchDimensions:(unint64_t)self0 name:(id)self1;
- (id)rankOfTensor:(id)tensor name:(id)name;
- (id)reciprocalSquareRootWithTensor:(id)tensor name:(id)name;
- (id)reductionSumWithTensor:(id)tensor axesTensor:(id)axesTensor name:(id)name;
- (id)resizeTensor:(id)tensor sizeTensor:(id)sizeTensor mode:(unint64_t)mode nearestRoundingMode:(unint64_t)roundingMode centerResult:(BOOL)result alignCorners:(BOOL)corners layout:(unint64_t)layout name:(id)self0;
- (id)resizeTensor:(id)tensor sizeTensor:(id)sizeTensor mode:(unint64_t)mode nearestRoundingMode:(unint64_t)roundingMode centerResult:(BOOL)result alignCorners:(BOOL)corners name:(id)name;
- (id)resizeTensor:(id)tensor sizeTensor:(id)sizeTensor scaleOffsetTensor:(id)offsetTensor mode:(unint64_t)mode nearestRoundingMode:(unint64_t)roundingMode layout:(unint64_t)layout name:(id)name;
- (id)resizeTensor:(id)tensor sizeTensor:(id)sizeTensor scaleTensor:(id)scaleTensor offsetTensor:(id)offsetTensor mode:(unint64_t)mode nearestRoundingMode:(unint64_t)roundingMode name:(id)name;
- (id)resizeWithGradientTensor:(id)tensor input:(id)input mode:(unint64_t)mode nearestRoundingMode:(unint64_t)roundingMode centerResult:(BOOL)result alignCorners:(BOOL)corners layout:(unint64_t)layout name:(id)self0;
- (id)resizeWithGradientTensor:(id)tensor input:(id)input scaleOffsetTensor:(id)offsetTensor mode:(unint64_t)mode nearestRoundingMode:(unint64_t)roundingMode layout:(unint64_t)layout name:(id)name;
- (id)resizeWithGradientTensor:(id)tensor input:(id)input scaleTensor:(id)scaleTensor offsetTensor:(id)offsetTensor mode:(unint64_t)mode nearestRoundingMode:(unint64_t)roundingMode name:(id)name;
- (id)runAsyncWithDevice:(id)device feeds:(id)feeds targetTensors:(id)tensors targetOperations:(id)operations executionDescriptor:(id)descriptor;
- (id)runInternalWithMPSCommandBuffer:(id)buffer feeds:(id)feeds targetTensors:(id)tensors targetOperations:(id)operations resultsDictionary:(id)dictionary executionDescriptor:(id)descriptor mpsGraphOwnedCommandBuffer:(BOOL)commandBuffer;
- (id)runInternalWithMPSGraphDevice:(id)device feeds:(id)feeds targetTensors:(id)tensors targetOperations:(id)operations resultsDictionary:(id)dictionary executionDescriptor:(id)descriptor;
- (id)runInternalWithMTLCommandQueue:(id)queue feeds:(id)feeds targetTensors:(id)tensors targetOperations:(id)operations resultsDictionary:(id)dictionary executionDescriptor:(id)descriptor;
- (id)runWithDevice:(id)device feeds:(id)feeds targetTensors:(id)tensors targetOperations:(id)operations executionDescriptor:(id)descriptor;
- (id)sampleGridDataGradientWithIncomingGradientTensor:(id)tensor coordinateTensor:(id)coordinateTensor outputShape:(id)shape normalizeCoordinates:(BOOL)coordinates relativeCoordinates:(BOOL)relativeCoordinates paddingMode:(int64_t)mode samplingMode:(unint64_t)samplingMode name:(id)self0;
- (id)sampleGridDataGradientWithIncomingGradientTensor:(id)tensor coordinateTensor:(id)coordinateTensor outputShapeTensor:(id)shapeTensor normalizeCoordinates:(BOOL)coordinates relativeCoordinates:(BOOL)relativeCoordinates paddingMode:(int64_t)mode samplingMode:(unint64_t)samplingMode name:(id)self0;
- (id)sampleGridWithSourceTensor:(id)tensor coordinateTensor:(id)coordinateTensor layout:(unint64_t)layout normalizeCoordinates:(BOOL)coordinates relativeCoordinates:(BOOL)relativeCoordinates alignCorners:(BOOL)corners paddingMode:(int64_t)mode samplingMode:(unint64_t)self0 nearestRoundingMode:(unint64_t)self1 constantValue:(double)self2 name:(id)self3;
- (id)sampleGridWithSourceTensor:(id)tensor coordinateTensor:(id)coordinateTensor normalizeCoordinates:(BOOL)coordinates relativeCoordinates:(BOOL)relativeCoordinates paddingMode:(int64_t)mode samplingMode:(unint64_t)samplingMode constantValue:(double)value name:(id)self0;
- (id)scaledDotProductAttentionWithQueryTensor:(id)tensor keyTensor:(id)keyTensor valueTensor:(id)valueTensor maskTensor:(id)maskTensor scale:(float)scale name:(id)name;
- (id)scaledDotProductAttentionWithQueryTensor:(id)tensor keyTensor:(id)keyTensor valueTensor:(id)valueTensor scale:(float)scale name:(id)name;
- (id)scatterAlongAxisWithDataTensor:(id)tensor updatesTensor:(id)updatesTensor indicesTensor:(id)indicesTensor axis:(int64_t)axis mode:(int64_t)mode name:(id)name;
- (id)scatterAlongAxisWithDataTensor:(id)tensor updatesTensor:(id)updatesTensor indicesTensor:(id)indicesTensor axis:(int64_t)axis name:(id)name;
- (id)scatterAlongAxisWithUpdatesTensor:(id)tensor indicesTensor:(id)indicesTensor shape:(id)shape axis:(int64_t)axis mode:(int64_t)mode name:(id)name;
- (id)scatterAlongAxisWithUpdatesTensor:(id)tensor indicesTensor:(id)indicesTensor shape:(id)shape axis:(int64_t)axis name:(id)name;
- (id)scatterWithDataTensor:(id)tensor updatesTensor:(id)updatesTensor indicesTensor:(id)indicesTensor axis:(int64_t)axis name:(id)name;
- (id)scatterWithUpdatesTensor:(id)tensor indicesTensor:(id)indicesTensor shape:(id)shape axis:(int64_t)axis name:(id)name;
- (id)sizeOfTensor:(id)tensor name:(id)name;
- (id)sliceGradientTensor:(id)tensor fwdInShapeTensor:(id)shapeTensor startTensor:(id)startTensor endTensor:(id)endTensor strideTensor:(id)strideTensor startMask:(unsigned int)mask endMask:(unsigned int)endMask squeezeMask:(unsigned int)self0 name:(id)self1;
- (id)sliceGradientTensor:(id)tensor fwdInShapeTensor:(id)shapeTensor startTensor:(id)startTensor sizeTensor:(id)sizeTensor squeezeMask:(unsigned int)mask name:(id)name;
- (id)sliceTensor:(id)tensor startTensor:(id)startTensor endTensor:(id)endTensor strideTensor:(id)strideTensor startMask:(unsigned int)mask endMask:(unsigned int)endMask squeezeMask:(unsigned int)squeezeMask name:(id)self0;
- (id)sliceTensor:(id)tensor startTensor:(id)startTensor sizeTensor:(id)sizeTensor squeezeMask:(unsigned int)mask name:(id)name;
- (id)sliceUpdateDataTensor:(id)tensor updateTensor:(id)updateTensor starts:(id)starts ends:(id)ends strides:(id)strides name:(id)name;
- (id)sliceUpdateDataTensor:(id)tensor updateTensor:(id)updateTensor starts:(id)starts ends:(id)ends strides:(id)strides startMask:(unsigned int)mask endMask:(unsigned int)endMask squeezeMask:(unsigned int)self0 name:(id)self1;
- (id)sliceUpdateDataTensor:(id)tensor updateTensor:(id)updateTensor startsTensor:(id)startsTensor endsTensor:(id)endsTensor stridesTensor:(id)stridesTensor name:(id)name;
- (id)sliceUpdateDataTensor:(id)tensor updateTensor:(id)updateTensor startsTensor:(id)startsTensor endsTensor:(id)endsTensor stridesTensor:(id)stridesTensor startMask:(unsigned int)mask endMask:(unsigned int)endMask squeezeMask:(unsigned int)self0 name:(id)self1;
- (id)solveLUWithDecompositionTensor:(id)tensor rhsTensor:(id)rhsTensor name:(id)name;
- (id)solveWithDecompositionTensor:(id)tensor rhsTensor:(id)rhsTensor descriptor:(id)descriptor name:(id)name;
- (id)squaredErrorWithPrimaryTensor:(id)tensor secondaryTensor:(id)secondaryTensor reductionType:(unint64_t)type name:(id)name;
- (id)squeezeTensor:(id)tensor dimension:(unint64_t)dimension name:(id)name;
- (id)squeezeTensor:(id)tensor dimensionTensor:(id)dimensionTensor name:(id)name;
- (id)stencilWithSourceTensor:(id)tensor weightsTensor:(id)weightsTensor offsets:(id)offsets name:(id)name;
- (id)stitchedOpsWithBlock:(id)block name:(id)name;
- (id)tensorToBufferWithTensor:(id)tensor name:(id)name;
- (id)tensorToBufferWithTensor:(id)tensor shape:(id)shape type:(unsigned int)type interleave:(id)interleave isTensorBufferOp:(BOOL)op isChannelAndInterleaveSame:(BOOL)same name:(id)name;
- (id)tileGradientWithIncomingGradientTensor:(id)tensor sourceTensor:(id)sourceTensor multiplierTensor:(id)multiplierTensor name:(id)name;
- (id)tileTensor:(id)tensor multiplierTensor:(id)multiplierTensor name:(id)name;
- (id)tileTensorWithMultiplier:(id)multiplier;
- (id)transposeTensor:(id)tensor permute:(id)permute name:(id)name;
- (id)varFromTensorWithTensor:(id)tensor name:(id)name;
- (id)variableFromTensorWithTensor:(id)tensor name:(id)name;
- (id)velocityUpdateWithBetaTensor:(id)tensor velocityTensor:(id)velocityTensor gradientTensor:(id)gradientTensor name:(id)name;
- (void)dealloc;
- (void)encodeToCommandBuffer:(MPSCommandBuffer *)commandBuffer feeds:(MPSGraphTensorDataDictionary *)feeds targetOperations:(NSArray *)targetOperations resultsDictionary:(MPSGraphTensorDataDictionary *)resultsDictionary executionDescriptor:(MPSGraphExecutionDescriptor *)executionDescriptor;
- (void)runAsyncWithDevice:(id)device feeds:(id)feeds targetOperations:(id)operations resultsDictionary:(id)dictionary executionDescriptor:(id)descriptor;
- (void)runAsyncWithMTLCommandQueue:(id)commandQueue feeds:(MPSGraphTensorDataDictionary *)feeds targetOperations:(NSArray *)targetOperations resultsDictionary:(MPSGraphTensorDataDictionary *)resultsDictionary executionDescriptor:(MPSGraphExecutionDescriptor *)executionDescriptor;
- (void)runWithDevice:(id)device feeds:(id)feeds targetOperations:(id)operations resultsDictionary:(id)dictionary executionDescriptor:(id)descriptor;
- (void)runWithMTLCommandQueue:(id)commandQueue feeds:(MPSGraphTensorDataDictionary *)feeds targetOperations:(NSArray *)targetOperations resultsDictionary:(MPSGraphTensorDataDictionary *)resultsDictionary;
@end

@implementation MPSGraph

- (id)decompositionLUWithTensor:(id)tensor name:(id)name
{
  v13[1] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  nameCopy = name;
  v8 = [MPSGraphMatrixDecompositionOp alloc];
  v13[0] = tensorCopy;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v10 = [(MPSGraphOperation *)v8 initWithGraph:self inputTensors:v9 controlDependencies:MEMORY[0x1E695E0F0] name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v10 outputTensors];

  return outputTensors;
}

- (id)decompositionWithTensor:(id)tensor descriptor:(id)descriptor name:(id)name
{
  v14[1] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  nameCopy = name;
  v9 = [MPSGraphMatrixDecompositionOp alloc];
  v14[0] = tensorCopy;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v11 = [(MPSGraphOperation *)v9 initWithGraph:self inputTensors:v10 controlDependencies:MEMORY[0x1E695E0F0] name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v11 outputTensors];

  return outputTensors;
}

- (id)sampleGridWithSourceTensor:(id)tensor coordinateTensor:(id)coordinateTensor layout:(unint64_t)layout normalizeCoordinates:(BOOL)coordinates relativeCoordinates:(BOOL)relativeCoordinates alignCorners:(BOOL)corners paddingMode:(int64_t)mode samplingMode:(unint64_t)self0 nearestRoundingMode:(unint64_t)self1 constantValue:(double)self2 name:(id)self3
{
  relativeCoordinatesCopy = relativeCoordinates;
  coordinatesCopy = coordinates;
  v35[3] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  coordinateTensorCopy = coordinateTensor;
  nameCopy = name;
  if (mode == 4)
  {
    modeCopy = 0;
  }

  else
  {
    modeCopy = mode;
  }

  v32 = tensorCopy;
  dataType = [tensorCopy dataType];
  valueCopy = 0.0;
  if (mode != 4)
  {
    valueCopy = value;
  }

  v23 = [(MPSGraph *)self constantWithScalar:&unk_1F5B75DB8 shape:dataType dataType:valueCopy];
  v24 = [MPSGraphSampleGridOp alloc];
  v35[0] = tensorCopy;
  v35[1] = coordinateTensorCopy;
  v35[2] = v23;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:3];
  LOBYTE(v30) = corners;
  v26 = [(MPSGraphSampleGridOp *)v24 initWithGraph:self inputTensors:v25 controlDependencies:MEMORY[0x1E695E0F0] layout:layout normalizeCoordinates:coordinatesCopy relativeCoordinates:relativeCoordinatesCopy alignCorners:v30 paddingMode:modeCopy samplingMode:samplingMode nearestRoundingMode:roundingMode name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v26 outputTensors];
  v28 = [outputTensors objectAtIndexedSubscript:0];

  return v28;
}

- (MPSGraphTensor)sampleGridWithSourceTensor:(MPSGraphTensor *)source coordinateTensor:(MPSGraphTensor *)coordinates layout:(MPSGraphTensorNamedDataLayout)layout normalizeCoordinates:(BOOL)normalizeCoordinates relativeCoordinates:(BOOL)relativeCoordinates alignCorners:(BOOL)alignCorners paddingMode:(MPSGraphPaddingMode)paddingMode samplingMode:(MPSGraphResizeMode)samplingMode constantValue:(double)constantValue name:(NSString *)name
{
  v12 = [(MPSGraph *)self sampleGridWithSourceTensor:source coordinateTensor:coordinates layout:layout normalizeCoordinates:normalizeCoordinates relativeCoordinates:relativeCoordinates alignCorners:alignCorners paddingMode:constantValue samplingMode:paddingMode nearestRoundingMode:samplingMode constantValue:0 name:name];

  return v12;
}

- (MPSGraphTensor)sampleGridWithSourceTensor:(MPSGraphTensor *)source coordinateTensor:(MPSGraphTensor *)coordinates layout:(MPSGraphTensorNamedDataLayout)layout normalizeCoordinates:(BOOL)normalizeCoordinates relativeCoordinates:(BOOL)relativeCoordinates alignCorners:(BOOL)alignCorners paddingMode:(MPSGraphPaddingMode)paddingMode nearestRoundingMode:(MPSGraphResizeNearestRoundingMode)nearestRoundingMode constantValue:(double)constantValue name:(NSString *)name
{
  v12 = [(MPSGraph *)self sampleGridWithSourceTensor:source coordinateTensor:coordinates layout:layout normalizeCoordinates:normalizeCoordinates relativeCoordinates:relativeCoordinates alignCorners:alignCorners paddingMode:constantValue samplingMode:paddingMode nearestRoundingMode:0 constantValue:nearestRoundingMode name:name];

  return v12;
}

- (id)sampleGridWithSourceTensor:(id)tensor coordinateTensor:(id)coordinateTensor normalizeCoordinates:(BOOL)coordinates relativeCoordinates:(BOOL)relativeCoordinates paddingMode:(int64_t)mode samplingMode:(unint64_t)samplingMode constantValue:(double)value name:(id)self0
{
  v10 = [(MPSGraph *)self sampleGridWithSourceTensor:tensor coordinateTensor:coordinateTensor layout:1 normalizeCoordinates:coordinates relativeCoordinates:relativeCoordinates alignCorners:0 paddingMode:value samplingMode:mode constantValue:samplingMode name:name];

  return v10;
}

- (id)sampleGridDataGradientWithIncomingGradientTensor:(id)tensor coordinateTensor:(id)coordinateTensor outputShapeTensor:(id)shapeTensor normalizeCoordinates:(BOOL)coordinates relativeCoordinates:(BOOL)relativeCoordinates paddingMode:(int64_t)mode samplingMode:(unint64_t)samplingMode name:(id)self0
{
  relativeCoordinatesCopy = relativeCoordinates;
  coordinatesCopy = coordinates;
  v27[3] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  coordinateTensorCopy = coordinateTensor;
  shapeTensorCopy = shapeTensor;
  nameCopy = name;
  if (mode == 4)
  {
    mode = 0;
  }

  v25 = tensorCopy;
  v19 = [MPSGraphSampleGridDataGradientOp alloc];
  v27[0] = tensorCopy;
  v27[1] = coordinateTensorCopy;
  v27[2] = shapeTensorCopy;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:3];
  v21 = [(MPSGraphSampleGridDataGradientOp *)v19 initWithGraph:self inputTensors:v20 controlDependencies:MEMORY[0x1E695E0F0] normalizeCoordinates:coordinatesCopy relativeCoordinates:relativeCoordinatesCopy paddingMode:mode samplingMode:samplingMode name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v21 outputTensors];
  v23 = [outputTensors objectAtIndexedSubscript:0];

  return v23;
}

- (id)sampleGridDataGradientWithIncomingGradientTensor:(id)tensor coordinateTensor:(id)coordinateTensor outputShape:(id)shape normalizeCoordinates:(BOOL)coordinates relativeCoordinates:(BOOL)relativeCoordinates paddingMode:(int64_t)mode samplingMode:(unint64_t)samplingMode name:(id)self0
{
  relativeCoordinatesCopy = relativeCoordinates;
  coordinatesCopy = coordinates;
  v27 = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  coordinateTensorCopy = coordinateTensor;
  shapeCopy = shape;
  nameCopy = name;
  v18 = 0;
  if (mode == 4)
  {
    mode = 0;
  }

  v26 = xmmword_1E099B5F0;
  while (v18 < [shapeCopy count])
  {
    v19 = [shapeCopy objectAtIndexedSubscript:v18];
    *(&v26 + v18) = [v19 intValue];

    ++v18;
  }

  v20 = [MEMORY[0x1E695DEF0] dataWithBytes:&v26 length:16];
  v21 = [(MPSGraph *)self constantWithData:v20 shape:&unk_1F5B75DD0 dataType:536870944];

  v22 = [(MPSGraph *)self sampleGridDataGradientWithIncomingGradientTensor:tensorCopy coordinateTensor:coordinateTensorCopy outputShapeTensor:v21 normalizeCoordinates:coordinatesCopy relativeCoordinates:relativeCoordinatesCopy paddingMode:mode samplingMode:samplingMode name:nameCopy];

  return v22;
}

- (MPSGraphTensor)imToColWithSourceTensor:(MPSGraphTensor *)source descriptor:(MPSGraphImToColOpDescriptor *)descriptor name:(NSString *)name
{
  v17[1] = *MEMORY[0x1E69E9840];
  v8 = source;
  v9 = descriptor;
  v10 = name;
  v11 = [MPSGraphImToColOp alloc];
  v17[0] = v8;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v13 = [(MPSGraphImToColOp *)v11 initWithGraph:self inputTensors:v12 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v9 name:v10];

  outputTensors = [(MPSGraphOperation *)v13 outputTensors];
  v15 = [outputTensors objectAtIndexedSubscript:0];

  return v15;
}

- (MPSGraphTensor)colToImWithSourceTensor:(MPSGraphTensor *)source outputShape:(MPSShape *)outputShape descriptor:(MPSGraphImToColOpDescriptor *)descriptor name:(NSString *)name
{
  v28 = *MEMORY[0x1E69E9840];
  v10 = source;
  v11 = outputShape;
  v12 = descriptor;
  v13 = name;
  v14 = [(MPSShape *)v11 objectAtIndexedSubscript:0];
  v27[0] = [v14 intValue];

  v15 = [(MPSShape *)v11 objectAtIndexedSubscript:1];
  v27[1] = [v15 intValue];

  v16 = [(MPSShape *)v11 objectAtIndexedSubscript:2];
  v27[2] = [v16 intValue];

  v17 = [(MPSShape *)v11 objectAtIndexedSubscript:3];
  v27[3] = [v17 intValue];

  v18 = [MEMORY[0x1E695DEF0] dataWithBytes:v27 length:16];
  v19 = [(MPSGraph *)self constantWithData:v18 shape:&unk_1F5B75DE8 dataType:536870944];

  v20 = [MPSGraphColToImOp alloc];
  v26[0] = v10;
  v26[1] = v19;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v22 = [(MPSGraphColToImOp *)v20 initWithGraph:self inputTensors:v21 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v12 outputShape:v11 name:v13];

  outputTensors = [(MPSGraphOperation *)v22 outputTensors];
  v24 = [outputTensors objectAtIndexedSubscript:0];

  return v24;
}

- (MPSGraphTensor)cumulativeSumWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis exclusive:(BOOL)exclusive reverse:(BOOL)reverse name:(NSString *)name
{
  v8 = reverse;
  v9 = exclusive;
  v21[2] = *MEMORY[0x1E69E9840];
  v12 = tensor;
  v13 = name;
  v14 = [(MPSGraph *)self constantWithScalar:536870944 dataType:axis];
  v15 = [MPSGraphCumulativeSumOp alloc];
  v21[0] = v12;
  v21[1] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v17 = [(MPSGraphCumulativeBaseOp *)v15 initWithGraph:self inputTensors:v16 controlDependencies:MEMORY[0x1E695E0F0] exclusive:v9 reverse:v8 name:v13];

  outputTensors = [(MPSGraphOperation *)v17 outputTensors];
  v19 = [outputTensors objectAtIndexedSubscript:0];

  return v19;
}

- (MPSGraphTensor)cumulativeSumWithTensor:(MPSGraphTensor *)tensor axisTensor:(MPSGraphTensor *)axisTensor exclusive:(BOOL)exclusive reverse:(BOOL)reverse name:(NSString *)name
{
  v8 = reverse;
  v9 = exclusive;
  v21[2] = *MEMORY[0x1E69E9840];
  v12 = tensor;
  v13 = axisTensor;
  v14 = name;
  v15 = [MPSGraphCumulativeSumOp alloc];
  v21[0] = v12;
  v21[1] = v13;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v17 = [(MPSGraphCumulativeBaseOp *)v15 initWithGraph:self inputTensors:v16 controlDependencies:MEMORY[0x1E695E0F0] exclusive:v9 reverse:v8 name:v14];

  outputTensors = [(MPSGraphOperation *)v17 outputTensors];
  v19 = [outputTensors objectAtIndexedSubscript:0];

  return v19;
}

- (MPSGraphTensor)cumulativeProductWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis exclusive:(BOOL)exclusive reverse:(BOOL)reverse name:(NSString *)name
{
  v8 = reverse;
  v9 = exclusive;
  v21[2] = *MEMORY[0x1E69E9840];
  v12 = tensor;
  v13 = name;
  v14 = [(MPSGraph *)self constantWithScalar:536870944 dataType:axis];
  v15 = [MPSGraphCumulativeProductOp alloc];
  v21[0] = v12;
  v21[1] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v17 = [(MPSGraphCumulativeBaseOp *)v15 initWithGraph:self inputTensors:v16 controlDependencies:MEMORY[0x1E695E0F0] exclusive:v9 reverse:v8 name:v13];

  outputTensors = [(MPSGraphOperation *)v17 outputTensors];
  v19 = [outputTensors objectAtIndexedSubscript:0];

  return v19;
}

- (MPSGraphTensor)cumulativeProductWithTensor:(MPSGraphTensor *)tensor axisTensor:(MPSGraphTensor *)axisTensor exclusive:(BOOL)exclusive reverse:(BOOL)reverse name:(NSString *)name
{
  v8 = reverse;
  v9 = exclusive;
  v21[2] = *MEMORY[0x1E69E9840];
  v12 = tensor;
  v13 = axisTensor;
  v14 = name;
  v15 = [MPSGraphCumulativeProductOp alloc];
  v21[0] = v12;
  v21[1] = v13;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v17 = [(MPSGraphCumulativeBaseOp *)v15 initWithGraph:self inputTensors:v16 controlDependencies:MEMORY[0x1E695E0F0] exclusive:v9 reverse:v8 name:v14];

  outputTensors = [(MPSGraphOperation *)v17 outputTensors];
  v19 = [outputTensors objectAtIndexedSubscript:0];

  return v19;
}

- (MPSGraphTensor)cumulativeMaximumWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis exclusive:(BOOL)exclusive reverse:(BOOL)reverse name:(NSString *)name
{
  v8 = reverse;
  v9 = exclusive;
  v21[2] = *MEMORY[0x1E69E9840];
  v12 = tensor;
  v13 = name;
  v14 = [(MPSGraph *)self constantWithScalar:536870944 dataType:axis];
  v15 = [MPSGraphCumulativeMaximumOp alloc];
  v21[0] = v12;
  v21[1] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v17 = [(MPSGraphCumulativeBaseOp *)v15 initWithGraph:self inputTensors:v16 controlDependencies:MEMORY[0x1E695E0F0] exclusive:v9 reverse:v8 name:v13];

  outputTensors = [(MPSGraphOperation *)v17 outputTensors];
  v19 = [outputTensors objectAtIndexedSubscript:0];

  return v19;
}

- (MPSGraphTensor)cumulativeMaximumWithTensor:(MPSGraphTensor *)tensor axisTensor:(MPSGraphTensor *)axisTensor exclusive:(BOOL)exclusive reverse:(BOOL)reverse name:(NSString *)name
{
  v8 = reverse;
  v9 = exclusive;
  v21[2] = *MEMORY[0x1E69E9840];
  v12 = tensor;
  v13 = axisTensor;
  v14 = name;
  v15 = [MPSGraphCumulativeMaximumOp alloc];
  v21[0] = v12;
  v21[1] = v13;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v17 = [(MPSGraphCumulativeBaseOp *)v15 initWithGraph:self inputTensors:v16 controlDependencies:MEMORY[0x1E695E0F0] exclusive:v9 reverse:v8 name:v14];

  outputTensors = [(MPSGraphOperation *)v17 outputTensors];
  v19 = [outputTensors objectAtIndexedSubscript:0];

  return v19;
}

- (MPSGraphTensor)cumulativeMinimumWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis exclusive:(BOOL)exclusive reverse:(BOOL)reverse name:(NSString *)name
{
  v8 = reverse;
  v9 = exclusive;
  v21[2] = *MEMORY[0x1E69E9840];
  v12 = tensor;
  v13 = name;
  v14 = [(MPSGraph *)self constantWithScalar:536870944 dataType:axis];
  v15 = [MPSGraphCumulativeMinimumOp alloc];
  v21[0] = v12;
  v21[1] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v17 = [(MPSGraphCumulativeBaseOp *)v15 initWithGraph:self inputTensors:v16 controlDependencies:MEMORY[0x1E695E0F0] exclusive:v9 reverse:v8 name:v13];

  outputTensors = [(MPSGraphOperation *)v17 outputTensors];
  v19 = [outputTensors objectAtIndexedSubscript:0];

  return v19;
}

- (MPSGraphTensor)cumulativeMinimumWithTensor:(MPSGraphTensor *)tensor axisTensor:(MPSGraphTensor *)axisTensor exclusive:(BOOL)exclusive reverse:(BOOL)reverse name:(NSString *)name
{
  v8 = reverse;
  v9 = exclusive;
  v21[2] = *MEMORY[0x1E69E9840];
  v12 = tensor;
  v13 = axisTensor;
  v14 = name;
  v15 = [MPSGraphCumulativeMinimumOp alloc];
  v21[0] = v12;
  v21[1] = v13;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v17 = [(MPSGraphCumulativeBaseOp *)v15 initWithGraph:self inputTensors:v16 controlDependencies:MEMORY[0x1E695E0F0] exclusive:v9 reverse:v8 name:v14];

  outputTensors = [(MPSGraphOperation *)v17 outputTensors];
  v19 = [outputTensors objectAtIndexedSubscript:0];

  return v19;
}

- (MPSGraphTensor)cumulativeSumWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis name:(NSString *)name
{
  v5 = [(MPSGraph *)self cumulativeSumWithTensor:tensor axis:axis exclusive:0 reverse:0 name:name];

  return v5;
}

- (MPSGraphTensor)cumulativeSumWithTensor:(MPSGraphTensor *)tensor axisTensor:(MPSGraphTensor *)axisTensor name:(NSString *)name
{
  v5 = [(MPSGraph *)self cumulativeSumWithTensor:tensor axisTensor:axisTensor exclusive:0 reverse:0 name:name];

  return v5;
}

- (MPSGraphTensor)cumulativeProductWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis name:(NSString *)name
{
  v5 = [(MPSGraph *)self cumulativeProductWithTensor:tensor axis:axis exclusive:0 reverse:0 name:name];

  return v5;
}

- (MPSGraphTensor)cumulativeProductWithTensor:(MPSGraphTensor *)tensor axisTensor:(MPSGraphTensor *)axisTensor name:(NSString *)name
{
  v5 = [(MPSGraph *)self cumulativeProductWithTensor:tensor axisTensor:axisTensor exclusive:0 reverse:0 name:name];

  return v5;
}

- (MPSGraphTensor)cumulativeMaximumWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis name:(NSString *)name
{
  v5 = [(MPSGraph *)self cumulativeMaximumWithTensor:tensor axis:axis exclusive:0 reverse:0 name:name];

  return v5;
}

- (MPSGraphTensor)cumulativeMaximumWithTensor:(MPSGraphTensor *)tensor axisTensor:(MPSGraphTensor *)axisTensor name:(NSString *)name
{
  v5 = [(MPSGraph *)self cumulativeMaximumWithTensor:tensor axisTensor:axisTensor exclusive:0 reverse:0 name:name];

  return v5;
}

- (MPSGraphTensor)cumulativeMinimumWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis name:(NSString *)name
{
  v5 = [(MPSGraph *)self cumulativeMinimumWithTensor:tensor axis:axis exclusive:0 reverse:0 name:name];

  return v5;
}

- (MPSGraphTensor)cumulativeMinimumWithTensor:(MPSGraphTensor *)tensor axisTensor:(MPSGraphTensor *)axisTensor name:(NSString *)name
{
  v5 = [(MPSGraph *)self cumulativeMinimumWithTensor:tensor axisTensor:axisTensor exclusive:0 reverse:0 name:name];

  return v5;
}

- (id)cumulativeMaximumReturnIndicesWithTensor:(id)tensor axis:(int64_t)axis exclusive:(BOOL)exclusive reverse:(BOOL)reverse name:(id)name
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (id)cumulativeMinimumReturnIndicesWithTensor:(id)tensor axis:(int64_t)axis exclusive:(BOOL)exclusive reverse:(BOOL)reverse name:(id)name
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSGraphTensor)inverseOfTensor:(MPSGraphTensor *)inputTensor name:(NSString *)name
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = inputTensor;
  v7 = name;
  v8 = [MPSGraphMatrixInverseOp alloc];
  v14[0] = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v10 = [(MPSGraphOperation *)v8 initWithGraph:self inputTensors:v9 controlDependencies:MEMORY[0x1E695E0F0] name:v7];

  outputTensors = [(MPSGraphOperation *)v10 outputTensors];
  v12 = [outputTensors objectAtIndexedSubscript:0];

  return v12;
}

- (MPSGraphTensor)oneHotWithIndicesTensor:(MPSGraphTensor *)indicesTensor depth:(NSUInteger)depth axis:(NSUInteger)axis dataType:(MPSDataType)dataType onValue:(double)onValue offValue:(double)offValue name:(NSString *)name
{
  v9 = oneHotBase(self, indicesTensor, depth, onValue, offValue, axis, *&dataType, name);

  return v9;
}

- (MPSGraphTensor)oneHotWithIndicesTensor:(MPSGraphTensor *)indicesTensor depth:(NSUInteger)depth dataType:(MPSDataType)dataType onValue:(double)onValue offValue:(double)offValue name:(NSString *)name
{
  v8 = oneHotBase(self, indicesTensor, depth, onValue, offValue, 0xFFFFFFFFFFFFFFFFLL, *&dataType, name);

  return v8;
}

- (MPSGraphTensor)oneHotWithIndicesTensor:(MPSGraphTensor *)indicesTensor depth:(NSUInteger)depth axis:(NSUInteger)axis dataType:(MPSDataType)dataType name:(NSString *)name
{
  v12 = indicesTensor;
  v13 = name;
  if (dataType == MPSDataTypeBFloat16 || dataType == MPSDataTypeFloat32 || dataType == MPSDataTypeFloat16)
  {
    v14 = 268435488;
  }

  else
  {
    v14 = 536870944;
  }

  v15 = oneHotBase(self, v12, depth, 1.0, 0.0, axis, v14, v13);

  return v15;
}

- (MPSGraphTensor)oneHotWithIndicesTensor:(MPSGraphTensor *)indicesTensor depth:(NSUInteger)depth axis:(NSUInteger)axis name:(NSString *)name
{
  v6 = oneHotBase(self, indicesTensor, depth, 1.0, 0.0, axis, 268435488, name);

  return v6;
}

- (MPSGraphTensor)oneHotWithIndicesTensor:(MPSGraphTensor *)indicesTensor depth:(NSUInteger)depth dataType:(MPSDataType)dataType name:(NSString *)name
{
  v7 = *&dataType;
  v10 = indicesTensor;
  v11 = name;
  if (v7 == -1879048176 || v7 == 268435488 || v7 == 268435472)
  {
    v12 = oneHotBase(self, v10, depth, 1.0, 0.0, 0xFFFFFFFFFFFFFFFFLL, 268435488, v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = oneHotBase(self, v10, depth, 1.0, 0.0, 0xFFFFFFFFFFFFFFFFLL, 536870944, v11);

  if (v11)
  {
    v14 = [(NSString *)v11 stringByAppendingFormat:@"/cast"];
  }

  else
  {
    v14 = @"/oneHot/cast";
  }

  v15 = [(MPSGraph *)self castTensor:v13 toType:v7 name:v14];
  if (v11)
  {
  }

  return v15;
}

- (MPSGraphTensor)oneHotWithIndicesTensor:(MPSGraphTensor *)indicesTensor depth:(NSUInteger)depth name:(NSString *)name
{
  v5 = oneHotBase(self, indicesTensor, depth, 1.0, 0.0, 0xFFFFFFFFFFFFFFFFLL, 268435488, name);

  return v5;
}

- (id)mathOpsWithTensors:(id)tensors mathOpType:(unint64_t)type name:(id)name
{
  tensorsCopy = tensors;
  nameCopy = name;
  v10 = [MPSGraphArithmeticOp alloc];
  v11 = [(MPSGraphArithmeticOp *)v10 initWithGraph:self inputTensors:tensorsCopy controlDependencies:MEMORY[0x1E695E0F0] mathOpType:type name:nameCopy];
  outputTensors = [(MPSGraphOperation *)v11 outputTensors];
  v13 = [outputTensors objectAtIndexedSubscript:0];

  return v13;
}

- (id)fixSignednessOfInputsTensors:(id)tensors
{
  v33 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  tensorsCopy = tensors;
  v5 = [tensorsCopy countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (!v5)
  {

LABEL_25:
    v10 = tensorsCopy;
    goto LABEL_26;
  }

  v6 = 0;
  v7 = *v28;
  while (2)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v28 != v7)
      {
        objc_enumerationMutation(tensorsCopy);
      }

      v9 = *(*(&v27 + 1) + 8 * i);
      MLIRElementType = getMLIRElementType(*self->_builder, [v9 dataType]);
      if (*(*MLIRElementType + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {

        v10 = tensorsCopy;
        goto LABEL_26;
      }

      v6 = v6 || !mlir::Type::isUnsignedInteger(&MLIRElementType);
    }

    v5 = [tensorsCopy countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

  if (!v6)
  {
    goto LABEL_25;
  }

  v10 = [MEMORY[0x1E695E0F0] mutableCopy];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = tensorsCopy;
  v11 = [v21 countByEnumeratingWithState:&v22 objects:v31 count:16];
  if (v11)
  {
    v12 = *v23;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v21);
        }

        v14 = *(*(&v22 + 1) + 8 * j);
        MLIRElementType = getMLIRElementType(*self->_builder, [v14 dataType]);
        v15 = v14;
        v16 = v15;
        if (mlir::Type::isUnsignedInteger(&MLIRElementType))
        {
          v17 = *self->_builder;
          Width = mlir::IntegerType::getWidth(&MLIRElementType);
          v19 = mlir::IntegerType::get(v17, Width, 1u);
          v16 = [(MPSGraph *)self castTensor:v15 toType:getMPSDataType(v19) name:0];
        }

        [v10 addObject:v16];
      }

      v11 = [v21 countByEnumeratingWithState:&v22 objects:v31 count:16];
    }

    while (v11);
  }

LABEL_26:

  return v10;
}

- (id)castBooleansOfInputsTensors:(id)tensors
{
  selfCopy = self;
  v33 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  tensorsCopy = tensors;
  v4 = [tensorsCopy countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (!v4)
  {

    goto LABEL_25;
  }

  v5 = 0;
  LOBYTE(v6) = 0;
  v7 = *v28;
  dataType2 = 268435488;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v28 != v7)
      {
        objc_enumerationMutation(tensorsCopy);
      }

      v10 = *(*(&v27 + 1) + 8 * i);
      dataType = [v10 dataType];
      v12 = dataType;
      if (!v6)
      {
        v6 = [v10 dataType] == -2147483640;
        if ((v12 & 0x10000000) == 0)
        {
          goto LABEL_11;
        }

LABEL_10:
        dataType2 = [v10 dataType];
        goto LABEL_11;
      }

      v6 = 1;
      if ((dataType & 0x10000000) != 0)
      {
        goto LABEL_10;
      }

LABEL_11:

      v5 |= (v12 & 0x10000000u) >> 28;
    }

    v4 = [tensorsCopy countByEnumeratingWithState:&v27 objects:v32 count:16];
  }

  while (v4);

  if ((v6 & v5 & 1) == 0)
  {
LABEL_25:
    v13 = tensorsCopy;
    goto LABEL_26;
  }

  v13 = [MEMORY[0x1E695E0F0] mutableCopy];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = tensorsCopy;
  v14 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v14)
  {
    v15 = *v24;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v23 + 1) + 8 * j);
        v18 = v17;
        if ([v17 dataType] == -2147483640)
        {
          v19 = [(MPSGraph *)selfCopy castTensor:v17 toType:dataType2 name:0];

          v18 = v19;
        }

        [v13 addObject:{v18, selfCopy}];
      }

      v14 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v14);
  }

LABEL_26:

  return v13;
}

- (MPSGraphTensor)identityWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:0 name:v7];

  return v9;
}

- (MPSGraphTensor)exponentWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:1 name:v7];

  return v9;
}

- (MPSGraphTensor)exponentBase2WithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:2 name:v7];

  return v9;
}

- (MPSGraphTensor)exponentBase10WithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:3 name:v7];

  return v9;
}

- (MPSGraphTensor)logarithmWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:4 name:v7];

  return v9;
}

- (MPSGraphTensor)logarithmBase2WithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:5 name:v7];

  return v9;
}

- (MPSGraphTensor)logarithmBase10WithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:6 name:v7];

  return v9;
}

- (MPSGraphTensor)squareWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:7 name:v7];

  return v9;
}

- (MPSGraphTensor)squareRootWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:8 name:v7];

  return v9;
}

- (MPSGraphTensor)reverseSquareRootWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:9 name:v7];

  return v9;
}

- (id)reciprocalSquareRootWithTensor:(id)tensor name:(id)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  nameCopy = name;
  v11[0] = tensorCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:9 name:nameCopy];

  return v9;
}

- (MPSGraphTensor)reciprocalWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:10 name:v7];

  return v9;
}

- (MPSGraphTensor)absoluteWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:11 name:v7];

  return v9;
}

- (MPSGraphTensor)absoluteSquareWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:12 name:v7];

  return v9;
}

- (MPSGraphTensor)negativeWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:13 name:v7];

  return v9;
}

- (MPSGraphTensor)signWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:14 name:v7];

  return v9;
}

- (MPSGraphTensor)signbitWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:15 name:v7];

  return v9;
}

- (MPSGraphTensor)ceilWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:16 name:v7];

  return v9;
}

- (MPSGraphTensor)floorWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:17 name:v7];

  return v9;
}

- (MPSGraphTensor)roundWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:18 name:v7];

  return v9;
}

- (MPSGraphTensor)rintWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:19 name:v7];

  return v9;
}

- (MPSGraphTensor)sinWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:20 name:v7];

  return v9;
}

- (MPSGraphTensor)cosWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:21 name:v7];

  return v9;
}

- (MPSGraphTensor)tanWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:22 name:v7];

  return v9;
}

- (MPSGraphTensor)sinhWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:23 name:v7];

  return v9;
}

- (MPSGraphTensor)coshWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:24 name:v7];

  return v9;
}

- (MPSGraphTensor)tanhWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:25 name:v7];

  return v9;
}

- (MPSGraphTensor)asinWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:26 name:v7];

  return v9;
}

- (MPSGraphTensor)acosWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:27 name:v7];

  return v9;
}

- (MPSGraphTensor)atanWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:28 name:v7];

  return v9;
}

- (MPSGraphTensor)asinhWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:29 name:v7];

  return v9;
}

- (MPSGraphTensor)acoshWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:30 name:v7];

  return v9;
}

- (MPSGraphTensor)atanhWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:31 name:v7];

  return v9;
}

- (MPSGraphTensor)notWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:32 name:v7];

  return v9;
}

- (MPSGraphTensor)isInfiniteWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:33 name:v7];

  return v9;
}

- (MPSGraphTensor)isFiniteWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:34 name:v7];

  return v9;
}

- (MPSGraphTensor)isNaNWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:35 name:v7];

  return v9;
}

- (MPSGraphTensor)erfWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:36 name:v7];

  return v9;
}

- (MPSGraphTensor)truncateWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:71 name:v7];

  return v9;
}

- (MPSGraphTensor)bitwiseNOTWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:37 name:v7];

  return v9;
}

- (MPSGraphTensor)bitwisePopulationCountWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:38 name:v7];

  return v9;
}

- (MPSGraphTensor)conjugateWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:39 name:v7];

  return v9;
}

- (MPSGraphTensor)additionWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name
{
  v16[2] = *MEMORY[0x1E69E9840];
  v8 = primaryTensor;
  v9 = secondaryTensor;
  v10 = name;
  v16[0] = v8;
  v16[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v12 = [(MPSGraph *)self fixSignednessOfInputsTensors:v11];

  v13 = [(MPSGraph *)self castBooleansOfInputsTensors:v12];

  v14 = [(MPSGraph *)self mathOpsWithTensors:v13 mathOpType:42 name:v10];

  return v14;
}

- (MPSGraphTensor)subtractionWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name
{
  v16[2] = *MEMORY[0x1E69E9840];
  v8 = primaryTensor;
  v9 = secondaryTensor;
  v10 = name;
  v16[0] = v8;
  v16[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v12 = [(MPSGraph *)self fixSignednessOfInputsTensors:v11];

  v13 = [(MPSGraph *)self castBooleansOfInputsTensors:v12];

  v14 = [(MPSGraph *)self mathOpsWithTensors:v13 mathOpType:43 name:v10];

  return v14;
}

- (MPSGraphTensor)multiplicationWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name
{
  v16[2] = *MEMORY[0x1E69E9840];
  v8 = primaryTensor;
  v9 = secondaryTensor;
  v10 = name;
  v16[0] = v8;
  v16[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v12 = [(MPSGraph *)self fixSignednessOfInputsTensors:v11];

  v13 = [(MPSGraph *)self castBooleansOfInputsTensors:v12];

  v14 = [(MPSGraph *)self mathOpsWithTensors:v13 mathOpType:44 name:v10];

  return v14;
}

- (MPSGraphTensor)divisionWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name
{
  v16[2] = *MEMORY[0x1E69E9840];
  v8 = primaryTensor;
  v9 = secondaryTensor;
  v10 = name;
  v16[0] = v8;
  v16[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v12 = [(MPSGraph *)self fixSignednessOfInputsTensors:v11];

  v13 = [(MPSGraph *)self castBooleansOfInputsTensors:v12];

  v14 = [(MPSGraph *)self mathOpsWithTensors:v13 mathOpType:45 name:v10];

  return v14;
}

- (MPSGraphTensor)moduloWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name
{
  v16[2] = *MEMORY[0x1E69E9840];
  v8 = primaryTensor;
  v9 = secondaryTensor;
  v10 = name;
  v16[0] = v8;
  v16[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v12 = [(MPSGraph *)self fixSignednessOfInputsTensors:v11];

  v13 = [(MPSGraph *)self castBooleansOfInputsTensors:v12];

  v14 = [(MPSGraph *)self mathOpsWithTensors:v13 mathOpType:46 name:v10];

  return v14;
}

- (MPSGraphTensor)powerWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name
{
  v16[2] = *MEMORY[0x1E69E9840];
  v8 = primaryTensor;
  v9 = secondaryTensor;
  v10 = name;
  v16[0] = v8;
  v16[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v12 = [(MPSGraph *)self fixSignednessOfInputsTensors:v11];

  v13 = [(MPSGraph *)self castBooleansOfInputsTensors:v12];

  v14 = [(MPSGraph *)self mathOpsWithTensors:v13 mathOpType:47 name:v10];

  return v14;
}

- (MPSGraphTensor)minimumWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name
{
  v16[2] = *MEMORY[0x1E69E9840];
  v8 = primaryTensor;
  v9 = secondaryTensor;
  v10 = name;
  v16[0] = v8;
  v16[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v12 = [(MPSGraph *)self fixSignednessOfInputsTensors:v11];

  v13 = [(MPSGraph *)self castBooleansOfInputsTensors:v12];

  v14 = [(MPSGraph *)self mathOpsWithTensors:v13 mathOpType:48 name:v10];

  return v14;
}

- (MPSGraphTensor)maximumWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name
{
  v16[2] = *MEMORY[0x1E69E9840];
  v8 = primaryTensor;
  v9 = secondaryTensor;
  v10 = name;
  v16[0] = v8;
  v16[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v12 = [(MPSGraph *)self fixSignednessOfInputsTensors:v11];

  v13 = [(MPSGraph *)self castBooleansOfInputsTensors:v12];

  v14 = [(MPSGraph *)self mathOpsWithTensors:v13 mathOpType:49 name:v10];

  return v14;
}

- (MPSGraphTensor)equalWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name
{
  v16[2] = *MEMORY[0x1E69E9840];
  v8 = primaryTensor;
  v9 = secondaryTensor;
  v10 = name;
  v16[0] = v8;
  v16[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v12 = [(MPSGraph *)self fixSignednessOfInputsTensors:v11];

  v13 = [(MPSGraph *)self castBooleansOfInputsTensors:v12];

  v14 = [(MPSGraph *)self mathOpsWithTensors:v13 mathOpType:50 name:v10];

  return v14;
}

- (MPSGraphTensor)notEqualWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name
{
  v16[2] = *MEMORY[0x1E69E9840];
  v8 = primaryTensor;
  v9 = secondaryTensor;
  v10 = name;
  v16[0] = v8;
  v16[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v12 = [(MPSGraph *)self fixSignednessOfInputsTensors:v11];

  v13 = [(MPSGraph *)self castBooleansOfInputsTensors:v12];

  v14 = [(MPSGraph *)self mathOpsWithTensors:v13 mathOpType:51 name:v10];

  return v14;
}

- (MPSGraphTensor)lessThanWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name
{
  v16[2] = *MEMORY[0x1E69E9840];
  v8 = primaryTensor;
  v9 = secondaryTensor;
  v10 = name;
  v16[0] = v8;
  v16[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v12 = [(MPSGraph *)self fixSignednessOfInputsTensors:v11];

  v13 = [(MPSGraph *)self castBooleansOfInputsTensors:v12];

  v14 = [(MPSGraph *)self mathOpsWithTensors:v13 mathOpType:52 name:v10];

  return v14;
}

- (MPSGraphTensor)lessThanOrEqualToWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name
{
  v16[2] = *MEMORY[0x1E69E9840];
  v8 = primaryTensor;
  v9 = secondaryTensor;
  v10 = name;
  v16[0] = v8;
  v16[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v12 = [(MPSGraph *)self fixSignednessOfInputsTensors:v11];

  v13 = [(MPSGraph *)self castBooleansOfInputsTensors:v12];

  v14 = [(MPSGraph *)self mathOpsWithTensors:v13 mathOpType:53 name:v10];

  return v14;
}

- (MPSGraphTensor)greaterThanWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name
{
  v16[2] = *MEMORY[0x1E69E9840];
  v8 = primaryTensor;
  v9 = secondaryTensor;
  v10 = name;
  v16[0] = v8;
  v16[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v12 = [(MPSGraph *)self fixSignednessOfInputsTensors:v11];

  v13 = [(MPSGraph *)self castBooleansOfInputsTensors:v12];

  v14 = [(MPSGraph *)self mathOpsWithTensors:v13 mathOpType:54 name:v10];

  return v14;
}

- (MPSGraphTensor)greaterThanOrEqualToWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name
{
  v16[2] = *MEMORY[0x1E69E9840];
  v8 = primaryTensor;
  v9 = secondaryTensor;
  v10 = name;
  v16[0] = v8;
  v16[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v12 = [(MPSGraph *)self fixSignednessOfInputsTensors:v11];

  v13 = [(MPSGraph *)self castBooleansOfInputsTensors:v12];

  v14 = [(MPSGraph *)self mathOpsWithTensors:v13 mathOpType:55 name:v10];

  return v14;
}

- (MPSGraphTensor)logicalANDWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name
{
  v16[2] = *MEMORY[0x1E69E9840];
  v8 = primaryTensor;
  v9 = secondaryTensor;
  v10 = name;
  v16[0] = v8;
  v16[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v12 = [(MPSGraph *)self fixSignednessOfInputsTensors:v11];

  v13 = [(MPSGraph *)self castBooleansOfInputsTensors:v12];

  v14 = [(MPSGraph *)self mathOpsWithTensors:v13 mathOpType:56 name:v10];

  return v14;
}

- (MPSGraphTensor)logicalORWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name
{
  v16[2] = *MEMORY[0x1E69E9840];
  v8 = primaryTensor;
  v9 = secondaryTensor;
  v10 = name;
  v16[0] = v8;
  v16[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v12 = [(MPSGraph *)self fixSignednessOfInputsTensors:v11];

  v13 = [(MPSGraph *)self castBooleansOfInputsTensors:v12];

  v14 = [(MPSGraph *)self mathOpsWithTensors:v13 mathOpType:57 name:v10];

  return v14;
}

- (MPSGraphTensor)logicalNANDWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name
{
  v16[2] = *MEMORY[0x1E69E9840];
  v8 = primaryTensor;
  v9 = secondaryTensor;
  v10 = name;
  v16[0] = v8;
  v16[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v12 = [(MPSGraph *)self fixSignednessOfInputsTensors:v11];

  v13 = [(MPSGraph *)self castBooleansOfInputsTensors:v12];

  v14 = [(MPSGraph *)self mathOpsWithTensors:v13 mathOpType:58 name:v10];

  return v14;
}

- (MPSGraphTensor)logicalNORWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name
{
  v16[2] = *MEMORY[0x1E69E9840];
  v8 = primaryTensor;
  v9 = secondaryTensor;
  v10 = name;
  v16[0] = v8;
  v16[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v12 = [(MPSGraph *)self fixSignednessOfInputsTensors:v11];

  v13 = [(MPSGraph *)self castBooleansOfInputsTensors:v12];

  v14 = [(MPSGraph *)self mathOpsWithTensors:v13 mathOpType:59 name:v10];

  return v14;
}

- (MPSGraphTensor)logicalXORWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name
{
  v16[2] = *MEMORY[0x1E69E9840];
  v8 = primaryTensor;
  v9 = secondaryTensor;
  v10 = name;
  v16[0] = v8;
  v16[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v12 = [(MPSGraph *)self fixSignednessOfInputsTensors:v11];

  v13 = [(MPSGraph *)self castBooleansOfInputsTensors:v12];

  v14 = [(MPSGraph *)self mathOpsWithTensors:v13 mathOpType:60 name:v10];

  return v14;
}

- (MPSGraphTensor)logicalXNORWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name
{
  v16[2] = *MEMORY[0x1E69E9840];
  v8 = primaryTensor;
  v9 = secondaryTensor;
  v10 = name;
  v16[0] = v8;
  v16[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v12 = [(MPSGraph *)self fixSignednessOfInputsTensors:v11];

  v13 = [(MPSGraph *)self castBooleansOfInputsTensors:v12];

  v14 = [(MPSGraph *)self mathOpsWithTensors:v13 mathOpType:61 name:v10];

  return v14;
}

- (MPSGraphTensor)atan2WithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name
{
  v16[2] = *MEMORY[0x1E69E9840];
  v8 = primaryTensor;
  v9 = secondaryTensor;
  v10 = name;
  v16[0] = v8;
  v16[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v12 = [(MPSGraph *)self fixSignednessOfInputsTensors:v11];

  v13 = [(MPSGraph *)self castBooleansOfInputsTensors:v12];

  v14 = [(MPSGraph *)self mathOpsWithTensors:v13 mathOpType:62 name:v10];

  return v14;
}

- (MPSGraphTensor)bitwiseANDWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name
{
  v16[2] = *MEMORY[0x1E69E9840];
  v8 = primaryTensor;
  v9 = secondaryTensor;
  v10 = name;
  v16[0] = v8;
  v16[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v12 = [(MPSGraph *)self fixSignednessOfInputsTensors:v11];

  v13 = [(MPSGraph *)self castBooleansOfInputsTensors:v12];

  v14 = [(MPSGraph *)self mathOpsWithTensors:v13 mathOpType:63 name:v10];

  return v14;
}

- (MPSGraphTensor)bitwiseORWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name
{
  v16[2] = *MEMORY[0x1E69E9840];
  v8 = primaryTensor;
  v9 = secondaryTensor;
  v10 = name;
  v16[0] = v8;
  v16[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v12 = [(MPSGraph *)self fixSignednessOfInputsTensors:v11];

  v13 = [(MPSGraph *)self castBooleansOfInputsTensors:v12];

  v14 = [(MPSGraph *)self mathOpsWithTensors:v13 mathOpType:64 name:v10];

  return v14;
}

- (MPSGraphTensor)bitwiseXORWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name
{
  v16[2] = *MEMORY[0x1E69E9840];
  v8 = primaryTensor;
  v9 = secondaryTensor;
  v10 = name;
  v16[0] = v8;
  v16[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v12 = [(MPSGraph *)self fixSignednessOfInputsTensors:v11];

  v13 = [(MPSGraph *)self castBooleansOfInputsTensors:v12];

  v14 = [(MPSGraph *)self mathOpsWithTensors:v13 mathOpType:65 name:v10];

  return v14;
}

- (MPSGraphTensor)bitwiseLeftShiftWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name
{
  v16[2] = *MEMORY[0x1E69E9840];
  v8 = primaryTensor;
  v9 = secondaryTensor;
  v10 = name;
  v16[0] = v8;
  v16[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v12 = [(MPSGraph *)self fixSignednessOfInputsTensors:v11];

  v13 = [(MPSGraph *)self castBooleansOfInputsTensors:v12];

  v14 = [(MPSGraph *)self mathOpsWithTensors:v13 mathOpType:66 name:v10];

  return v14;
}

- (MPSGraphTensor)bitwiseRightShiftWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name
{
  v16[2] = *MEMORY[0x1E69E9840];
  v8 = primaryTensor;
  v9 = secondaryTensor;
  v10 = name;
  v16[0] = v8;
  v16[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v12 = [(MPSGraph *)self fixSignednessOfInputsTensors:v11];

  v13 = [(MPSGraph *)self castBooleansOfInputsTensors:v12];

  v14 = [(MPSGraph *)self mathOpsWithTensors:v13 mathOpType:67 name:v10];

  return v14;
}

- (MPSGraphTensor)minimumWithNaNPropagationWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name
{
  v7 = primaryTensor;
  v8 = secondaryTensor;
  v9 = [(MPSGraph *)self isNaNWithTensor:v7 name:0];
  v10 = [(MPSGraph *)self isNaNWithTensor:v8 name:0];
  v11 = [(MPSGraph *)self logicalORWithPrimaryTensor:v9 secondaryTensor:v10 name:0];
  v12 = [(MPSGraph *)self minimumWithPrimaryTensor:v7 secondaryTensor:v8 name:0];
  v13 = -[MPSGraph constantWithScalar:dataType:](self, "constantWithScalar:dataType:", [v12 dataType], NAN);
  v14 = [(MPSGraph *)self selectWithPredicateTensor:v11 truePredicateTensor:v13 falsePredicateTensor:v12 name:0];

  return v14;
}

- (MPSGraphTensor)maximumWithNaNPropagationWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name
{
  v7 = primaryTensor;
  v8 = secondaryTensor;
  v9 = [(MPSGraph *)self isNaNWithTensor:v7 name:0];
  v10 = [(MPSGraph *)self isNaNWithTensor:v8 name:0];
  v11 = [(MPSGraph *)self logicalORWithPrimaryTensor:v9 secondaryTensor:v10 name:0];
  v12 = [(MPSGraph *)self maximumWithPrimaryTensor:v7 secondaryTensor:v8 name:0];
  v13 = -[MPSGraph constantWithScalar:dataType:](self, "constantWithScalar:dataType:", [v12 dataType], NAN);
  v14 = [(MPSGraph *)self selectWithPredicateTensor:v11 truePredicateTensor:v13 falsePredicateTensor:v12 name:0];

  return v14;
}

- (MPSGraphTensor)selectWithPredicateTensor:(MPSGraphTensor *)predicateTensor truePredicateTensor:(MPSGraphTensor *)truePredicateTensor falsePredicateTensor:(MPSGraphTensor *)falseSelectTensor name:(NSString *)name
{
  v22[2] = *MEMORY[0x1E69E9840];
  v10 = predicateTensor;
  v11 = truePredicateTensor;
  v12 = falseSelectTensor;
  v13 = name;
  v22[0] = v11;
  v22[1] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v15 = [(MPSGraph *)self fixSignednessOfInputsTensors:v14];

  v16 = [v15 objectAtIndexedSubscript:{0, v10}];
  v21[1] = v16;
  v17 = [v15 objectAtIndexedSubscript:1];
  v21[2] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];
  v19 = [(MPSGraph *)self mathOpsWithTensors:v18 mathOpType:69 name:v13];

  return v19;
}

- (MPSGraphTensor)clampWithTensor:(MPSGraphTensor *)tensor minValueTensor:(MPSGraphTensor *)minValueTensor maxValueTensor:(MPSGraphTensor *)maxValueTensor name:(NSString *)name
{
  v18[3] = *MEMORY[0x1E69E9840];
  v10 = tensor;
  v11 = minValueTensor;
  v12 = maxValueTensor;
  v13 = name;
  v18[0] = v10;
  v18[1] = v11;
  v18[2] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
  v15 = [(MPSGraph *)self fixSignednessOfInputsTensors:v14];

  v16 = [(MPSGraph *)self mathOpsWithTensors:v15 mathOpType:70 name:v13];

  return v16;
}

- (MPSGraphTensor)divisionNoNaNWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name
{
  v8 = primaryTensor;
  v9 = secondaryTensor;
  v10 = name;
  v11 = [(MPSGraph *)self constantWithScalar:&unk_1F5B77258 shape:268435488 dataType:0.0];
  if (v10)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/division", v10];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"divisionNoNaN/division"];
  }
  v12 = ;
  v13 = [(MPSGraph *)self divisionWithPrimaryTensor:v8 secondaryTensor:v9 name:v12];

  if (v10)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/select", v10];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"divisionNoNaN/select"];
  }
  v14 = ;
  v15 = [(MPSGraph *)self selectWithPredicateTensor:v9 truePredicateTensor:v13 falsePredicateTensor:v11 name:v14];

  return v15;
}

- (MPSGraphTensor)floorModuloWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name
{
  v8 = primaryTensor;
  v9 = secondaryTensor;
  v10 = name;
  if (v10)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/division", v10];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"floorMod/division"];
  }
  v11 = ;
  v12 = [(MPSGraph *)self divisionWithPrimaryTensor:v8 secondaryTensor:v9 name:v11];

  if (v10)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/floor", v10];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"floorMod/floor"];
  }
  v13 = ;
  v14 = [(MPSGraph *)self floorWithTensor:v12 name:v13];

  if (v10)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/multiply", v10];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"floorMod/multiply"];
  }
  v15 = ;
  v16 = [(MPSGraph *)self multiplicationWithPrimaryTensor:v14 secondaryTensor:v9 name:v15];

  if (v10)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/subtract", v10];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"floorMod/subtract"];
  }
  v17 = ;
  v18 = [(MPSGraph *)self subtractionWithPrimaryTensor:v8 secondaryTensor:v16 name:v17];

  return v18;
}

- (MPSGraphTensor)realPartOfTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:40 name:v7];

  return v9;
}

- (MPSGraphTensor)imaginaryPartOfTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(MPSGraph *)self mathOpsWithTensors:v8 mathOpType:41 name:v7];

  return v9;
}

- (MPSGraphTensor)complexTensorWithRealTensor:(MPSGraphTensor *)realTensor imaginaryTensor:(MPSGraphTensor *)imaginaryTensor name:(NSString *)name
{
  v14[2] = *MEMORY[0x1E69E9840];
  v8 = realTensor;
  v9 = imaginaryTensor;
  v10 = name;
  v14[0] = v8;
  v14[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v12 = [(MPSGraph *)self mathOpsWithTensors:v11 mathOpType:68 name:v10];

  return v12;
}

- (NSArray)singleGateRNNWithSourceTensor:(MPSGraphTensor *)source recurrentWeight:(MPSGraphTensor *)recurrentWeight inputWeight:(MPSGraphTensor *)inputWeight bias:(MPSGraphTensor *)bias initState:(MPSGraphTensor *)initState mask:(MPSGraphTensor *)mask descriptor:(MPSGraphSingleGateRNNDescriptor *)descriptor name:(NSString *)name
{
  v82[2] = *MEMORY[0x1E69E9840];
  v16 = source;
  v75 = recurrentWeight;
  v17 = inputWeight;
  v74 = bias;
  v73 = initState;
  v72 = mask;
  v18 = descriptor;
  v76 = name;
  v19 = v16;
  v70 = v19;
  v71 = v17;
  if (v17)
  {
    v20 = [(MPSGraph *)self transposeTensor:v17 dimension:0 withDimension:1 name:@"W^T"];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ W^T", v76];
    v19 = [(MPSGraph *)self matrixMultiplicationWithPrimaryTensor:v19 secondaryTensor:v20 name:v21];
  }

  if (![(MPSGraphSingleGateRNNDescriptor *)v18 bidirectional])
  {
    if (v74)
    {
      v53 = MEMORY[0x1E696AEC0];
      name = [(MPSGraphTensor *)v19 name];
      v55 = [v53 stringWithFormat:@"%@ + b", name];
      v56 = [(MPSGraph *)self additionWithPrimaryTensor:v19 secondaryTensor:v74 name:v55];

      v19 = v56;
    }

    v31 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
    v22 = [(MPSGraphSingleGateRNNDescriptor *)v18 copy];

    if ([v22 reverse])
    {
      name2 = [(MPSGraphTensor *)v19 name];
      v58 = [(MPSGraph *)self reverseTensor:v19 axes:&unk_1F5B772B8 name:name2];

      v19 = v58;
    }

    [v22 setReverse:0];
    [v31 addObject:v19];
    [v31 addObject:v75];
    if (v73)
    {
      [v31 addObject:v73];
      v22[9] = 1;
    }

    if (v72)
    {
      [v31 addObject:v72];
      v22[8] = 1;
    }

    v59 = [MPSGraphSingleGateRNNOp alloc];
    v69 = [(MPSGraphSingleGateRNNOp *)v59 initWithGraph:self inputTensors:v31 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v22 name:v76];
    if (![v22 training])
    {
      outputTensors = [(MPSGraphOperation *)v69 outputTensors];
      v67 = [outputTensors objectAtIndexedSubscript:0];
      v77 = v67;
      v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v77 count:1];
LABEL_31:

      goto LABEL_32;
    }

    outputTensors = [(MPSGraphOperation *)v69 outputTensors];
    v67 = [outputTensors objectAtIndexedSubscript:0];
    v78[0] = v67;
    outputTensors2 = [(MPSGraphOperation *)v69 outputTensors];
    v34 = [outputTensors2 objectAtIndexedSubscript:1];
    v78[1] = v34;
    v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:2];
LABEL_30:

    goto LABEL_31;
  }

  v22 = [(MPSGraphSingleGateRNNDescriptor *)v18 copy];

  [v22 setBidirectional:0];
  shape = [(MPSGraphTensor *)v75 shape];
  if (shape)
  {
    shape2 = [(MPSGraphTensor *)v75 shape];
    v25 = [shape2 objectAtIndexedSubscript:1];
    integerValue = [v25 integerValue];

    if ((integerValue & 0x8000000000000000) == 0)
    {
      if (v74)
      {
        v27 = MEMORY[0x1E696AEC0];
        name3 = [(MPSGraphTensor *)v19 name];
        v29 = [v27 stringWithFormat:@"%@ + b", name3];
        v30 = [(MPSGraph *)self additionWithPrimaryTensor:v19 secondaryTensor:v74 name:v29];

        v19 = v30;
      }

      v31 = [(MPSGraph *)self sliceTensor:v19 dimension:-1 start:0 length:integerValue name:0];
      v32 = [(MPSGraph *)self sliceTensor:v19 dimension:-1 start:integerValue length:integerValue name:0];
      outputTensors = [(MPSGraph *)self sliceTensor:v75 dimension:0 start:0 length:1 name:0];
      v67 = [(MPSGraph *)self sliceTensor:v75 dimension:0 start:1 length:1 name:0];
      v69 = [(MPSGraph *)self reverseTensor:v32 axes:&unk_1F5B77270 name:0];

      outputTensors2 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
      v34 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
      [outputTensors2 addObject:v31];
      [outputTensors2 addObject:outputTensors];
      [v34 addObject:v69];
      [v34 addObject:v67];
      if (v73)
      {
        v35 = [(MPSGraph *)self sliceTensor:v73 dimension:-1 start:0 length:integerValue name:0];
        v36 = [(MPSGraph *)self sliceTensor:v73 dimension:-1 start:integerValue length:integerValue name:0];
        [outputTensors2 addObject:v35];
        [v34 addObject:v36];
        v22[9] = 1;
      }

      if (v72)
      {
        v37 = [(MPSGraph *)self sliceTensor:v72 dimension:-1 start:0 length:integerValue name:0];
        v38 = [(MPSGraph *)self sliceTensor:v72 dimension:-1 start:integerValue length:integerValue name:0];
        [outputTensors2 addObject:v37];
        [v34 addObject:v38];
        v22[8] = 1;
      }

      v39 = [MPSGraphSingleGateRNNOp alloc];
      v66 = [(MPSGraphSingleGateRNNOp *)v39 initWithGraph:self inputTensors:outputTensors2 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v22 name:v76];
      v40 = [MPSGraphSingleGateRNNOp alloc];
      v63 = [(MPSGraphSingleGateRNNOp *)v40 initWithGraph:self inputTensors:v34 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v22 name:v76];
      outputTensors3 = [(MPSGraphOperation *)v63 outputTensors];
      v42 = [outputTensors3 objectAtIndexedSubscript:0];
      v65 = [(MPSGraph *)self reverseTensor:v42 axes:&unk_1F5B77288 name:0];

      outputTensors4 = [(MPSGraphOperation *)v66 outputTensors];
      v44 = [outputTensors4 objectAtIndexedSubscript:0];
      v82[0] = v44;
      v82[1] = v65;
      v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:2];
      v64 = [(MPSGraph *)self concatTensors:v45 dimension:-1 name:v76];

      if ([v22 training])
      {
        outputTensors5 = [(MPSGraphOperation *)v63 outputTensors];
        v47 = [outputTensors5 objectAtIndexedSubscript:1];
        v62 = [(MPSGraph *)self reverseTensor:v47 axes:&unk_1F5B772A0 name:0];

        outputTensors6 = [(MPSGraphOperation *)v66 outputTensors];
        v48 = [outputTensors6 objectAtIndexedSubscript:1];
        v81[0] = v48;
        v81[1] = v62;
        v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:2];
        v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ - training state", v76];
        v51 = [(MPSGraph *)self concatTensors:v49 dimension:-1 name:v50];

        v80[0] = v64;
        v80[1] = v51;
        v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:2];
      }

      else
      {
        v79 = v64;
        v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v79 count:1];
      }

      goto LABEL_30;
    }
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v52 = 0;
LABEL_32:

  return v52;
}

- (NSArray)singleGateRNNWithSourceTensor:(MPSGraphTensor *)source recurrentWeight:(MPSGraphTensor *)recurrentWeight inputWeight:(MPSGraphTensor *)inputWeight bias:(MPSGraphTensor *)bias initState:(MPSGraphTensor *)initState descriptor:(MPSGraphSingleGateRNNDescriptor *)descriptor name:(NSString *)name
{
  v9 = [(MPSGraph *)self singleGateRNNWithSourceTensor:source recurrentWeight:recurrentWeight inputWeight:inputWeight bias:bias initState:initState mask:0 descriptor:descriptor name:name];

  return v9;
}

- (NSArray)singleGateRNNWithSourceTensor:(MPSGraphTensor *)source recurrentWeight:(MPSGraphTensor *)recurrentWeight initState:(MPSGraphTensor *)initState descriptor:(MPSGraphSingleGateRNNDescriptor *)descriptor name:(NSString *)name
{
  v7 = [(MPSGraph *)self singleGateRNNWithSourceTensor:source recurrentWeight:recurrentWeight inputWeight:0 bias:0 initState:initState mask:0 descriptor:descriptor name:name];

  return v7;
}

- (NSArray)singleGateRNNGradientsWithSourceTensor:(MPSGraphTensor *)source recurrentWeight:(MPSGraphTensor *)recurrentWeight sourceGradient:(MPSGraphTensor *)sourceGradient zState:(MPSGraphTensor *)zState stateGradient:(MPSGraphTensor *)stateGradient inputWeight:(MPSGraphTensor *)inputWeight bias:(MPSGraphTensor *)bias initState:(MPSGraphTensor *)initState mask:(MPSGraphTensor *)mask descriptor:(MPSGraphSingleGateRNNDescriptor *)descriptor name:(NSString *)name
{
  v106[2] = *MEMORY[0x1E69E9840];
  v93 = source;
  v98 = recurrentWeight;
  v100 = sourceGradient;
  v90 = zState;
  v96 = stateGradient;
  v95 = inputWeight;
  v99 = initState;
  v94 = mask;
  v19 = descriptor;
  v101 = name;
  v85 = v19;
  v20 = [(MPSGraphSingleGateRNNDescriptor *)v19 copy];
  if (![v20 bidirectional])
  {
    v97 = [MEMORY[0x1E695DF70] arrayWithCapacity:5];
    if (v96)
    {
      v37 = [(MPSGraph *)self sliceTensor:v100 dimension:0 start:-1 length:1 name:@"lastSlice"];
      v38 = [(MPSGraph *)self additionWithPrimaryTensor:v37 secondaryTensor:v96 name:@"total derivative last state"];
      v39 = [(MPSGraph *)self cropTensor:v100 dimension:0 amount_before:0 amount_after:1 name:0];
      v102[0] = v39;
      v102[1] = v38;
      v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:2];
      v41 = [(MPSGraph *)self concatTensors:v40 dimension:0 name:0];

      v42 = v41;
    }

    else
    {
      v42 = v100;
    }

    v100 = v42;
    [v97 addObject:?];
    [v97 addObject:v98];
    [v97 addObject:v90];
    if (v99)
    {
      [v97 addObject:v99];
      v20[9] = 1;
    }

    if (v94)
    {
      [v97 addObject:v94];
      v20[8] = 1;
    }

    v88 = [[MPSGraphSingleGateRNNGradientOp alloc] initWithGraph:self inputTensors:v97 controlDependencies:0 descriptor:v20 name:v101];
    outputTensors = [(MPSGraphOperation *)v88 outputTensors];
    v45 = [outputTensors objectAtIndexedSubscript:0];

    if ([v20 reverse])
    {
      name = [v45 name];
      v47 = [(MPSGraph *)self reverseTensor:v45 axes:&unk_1F5B77318 name:name];

      v45 = v47;
    }

    outputTensors2 = [(MPSGraphOperation *)v88 outputTensors];
    v86 = [outputTensors2 objectAtIndexedSubscript:1];

    v25 = v45;
    if (v99)
    {
      outputTensors3 = [(MPSGraphOperation *)v88 outputTensors];
      v89 = [outputTensors3 objectAtIndexedSubscript:2];

      v50 = 0x1E696A000uLL;
      if (v95)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v89 = 0;
      v50 = 0x1E696A000;
      if (v95)
      {
LABEL_24:
        v101 = [*(v50 + 3776) stringWithFormat:@"%@ dx", v101];
        v92 = [(MPSGraph *)self matrixMultiplicationWithPrimaryTensor:v25 secondaryTensor:v95 name:v101];

        v52 = [(MPSGraph *)self flatten2DTensor:v25 axis:-1 name:0];
        v53 = [(MPSGraph *)self flatten2DTensor:v93 axis:-1 name:0];
        v54 = [(MPSGraph *)self transposeTensor:v52 dimension:0 withDimension:1 name:0];
        v1012 = [*(v50 + 3776) stringWithFormat:@"%@ dW", v101];
        v34 = [(MPSGraph *)self matrixMultiplicationWithPrimaryTensor:v54 secondaryTensor:v53 name:v1012];

        if (bias)
        {
LABEL_25:
          v1013 = [*(v50 + 3776) stringWithFormat:@"%@ db", v101];
          v87 = [(MPSGraph *)self reductionSumWithTensor:v25 axes:&unk_1F5B77330 name:v1013];

LABEL_29:
          v43 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:5];
          [v43 addObject:v92];
          [v43 addObject:v86];
          if (v34)
          {
            [v43 addObject:v34];
          }

          if (v87)
          {
            [v43 addObject:v87];
          }

          if (v89)
          {
            [v43 addObject:?];
          }

          else
          {
            v89 = 0;
          }

          goto LABEL_53;
        }

LABEL_28:
        v87 = 0;
        goto LABEL_29;
      }
    }

    v34 = 0;
    v92 = v25;
    if (bias)
    {
      goto LABEL_25;
    }

    goto LABEL_28;
  }

  [v20 setBidirectional:0];
  shape = [(MPSGraphTensor *)v98 shape];
  if (shape)
  {
    shape2 = [(MPSGraphTensor *)v98 shape];
    v23 = [shape2 objectAtIndexedSubscript:1];
    integerValue = [v23 integerValue];

    if ((integerValue & 0x8000000000000000) == 0)
    {
      v97 = [(MPSGraph *)self sliceTensor:v98 dimension:0 start:0 length:1 name:0];
      v88 = [(MPSGraph *)self sliceTensor:v98 dimension:0 start:1 length:1 name:0];
      v25 = [(MPSGraph *)self sliceTensor:v100 dimension:-1 start:0 length:integerValue name:0];
      v26 = [(MPSGraph *)self sliceTensor:v100 dimension:-1 start:integerValue length:integerValue name:0];
      if (v96)
      {
        v91 = [(MPSGraph *)self sliceTensor:v96 dimension:-1 start:integerValue length:integerValue name:0];
        v27 = [(MPSGraph *)self sliceTensor:v26 dimension:0 start:-1 length:1 name:0];
        v28 = [(MPSGraph *)self additionWithPrimaryTensor:v27 secondaryTensor:v91 name:0];
        v29 = [(MPSGraph *)self cropTensor:v26 dimension:0 amount_before:0 amount_after:1 name:0];
        v106[0] = v29;
        v106[1] = v28;
        v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v106 count:2];
        v31 = [(MPSGraph *)self concatTensors:v30 dimension:0 name:0];

        v26 = v31;
      }

      v86 = [(MPSGraph *)self reverseTensor:v26 axes:&unk_1F5B772D0 name:0];

      v89 = [(MPSGraph *)self sliceTensor:v90 dimension:-1 start:0 length:integerValue name:0];
      v32 = [(MPSGraph *)self sliceTensor:v90 dimension:-1 start:integerValue length:integerValue name:0];
      v92 = [(MPSGraph *)self reverseTensor:v32 axes:&unk_1F5B772E8 name:0];

      if (v94)
      {
        v33 = v99;
        v34 = [(MPSGraph *)self sliceTensor:v94 dimension:-1 start:0 length:integerValue name:0];
        v87 = [(MPSGraph *)self sliceTensor:v94 dimension:-1 start:integerValue length:integerValue name:0];
        if (v99)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v87 = 0;
        v34 = 0;
        v33 = v99;
        if (v99)
        {
LABEL_8:
          v35 = [(MPSGraph *)self sliceTensor:v33 dimension:-1 start:0 length:integerValue name:0];
          v78 = [(MPSGraph *)self sliceTensor:v33 dimension:-1 start:integerValue length:integerValue name:0];
          v79 = v35;
          v36 = v96;
          if (v96)
          {
LABEL_9:
            v80 = [(MPSGraph *)self sliceTensor:v36 dimension:-1 start:0 length:integerValue name:0];
            goto LABEL_39;
          }

LABEL_38:
          v80 = 0;
LABEL_39:
          [v20 setReverse:0];
          v84 = [(MPSGraph *)self singleGateRNNGradientsWithSourceTensor:v93 recurrentWeight:v97 sourceGradient:v25 zState:v89 stateGradient:v80 inputWeight:0 bias:0 initState:v79 mask:v34 descriptor:v20 name:v101];
          [v20 setReverse:1];
          v83 = [(MPSGraph *)self singleGateRNNGradientsWithSourceTensor:v93 recurrentWeight:v88 sourceGradient:v86 zState:v92 stateGradient:0 inputWeight:0 bias:0 initState:v78 mask:v87 descriptor:v20 name:v101];
          v57 = [v84 objectAtIndexedSubscript:0];
          v105[0] = v57;
          v58 = [v83 objectAtIndexedSubscript:0];
          v105[1] = v58;
          v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:2];
          v76 = [(MPSGraph *)self concatTensors:v59 dimension:-1 name:@"dz"];

          v60 = [v84 objectAtIndexedSubscript:1];
          v104[0] = v60;
          v61 = [v83 objectAtIndexedSubscript:1];
          v104[1] = v61;
          v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v104 count:2];
          v77 = [(MPSGraph *)self concatTensors:v62 dimension:0 name:@"dR"];

          v63 = v76;
          if (v99)
          {
            v64 = [v84 objectAtIndexedSubscript:2];
            v103[0] = v64;
            v65 = [v83 objectAtIndexedSubscript:2];
            v103[1] = v65;
            v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:2];
            v81 = [(MPSGraph *)self concatTensors:v66 dimension:-1 name:@"dh"];

            if (v95)
            {
              goto LABEL_41;
            }
          }

          else
          {
            v81 = 0;
            if (v95)
            {
LABEL_41:
              v1014 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ dx", v101];
              v82 = [(MPSGraph *)self matrixMultiplicationWithPrimaryTensor:v63 secondaryTensor:v95 name:v1014];

              v68 = [(MPSGraph *)self flatten2DTensor:v63 axis:-1 name:0];
              v69 = [(MPSGraph *)self flatten2DTensor:v93 axis:-1 name:0];
              v70 = [(MPSGraph *)self transposeTensor:v68 dimension:0 withDimension:1 name:0];
              v1015 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ dW", v101];
              v72 = [(MPSGraph *)self matrixMultiplicationWithPrimaryTensor:v70 secondaryTensor:v69 name:v1015];

              if (bias)
              {
LABEL_42:
                v1016 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ db", v101];
                v74 = [(MPSGraph *)self reductionSumWithTensor:v63 axes:&unk_1F5B77300 name:v1016];

LABEL_46:
                v43 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:5];
                [v43 addObject:v82];
                [v43 addObject:v77];
                if (v72)
                {
                  [v43 addObject:v72];
                }

                if (v74)
                {
                  [v43 addObject:v74];
                }

                if (v81)
                {
                  [v43 addObject:v81];
                }

LABEL_53:
                goto LABEL_54;
              }

LABEL_45:
              v74 = 0;
              goto LABEL_46;
            }
          }

          v72 = 0;
          v82 = v63;
          if (bias)
          {
            goto LABEL_42;
          }

          goto LABEL_45;
        }
      }

      v78 = 0;
      v79 = 0;
      v36 = v96;
      if (v96)
      {
        goto LABEL_9;
      }

      goto LABEL_38;
    }
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v43 = 0;
LABEL_54:

  return v43;
}

- (NSArray)singleGateRNNGradientsWithSourceTensor:(MPSGraphTensor *)source recurrentWeight:(MPSGraphTensor *)recurrentWeight sourceGradient:(MPSGraphTensor *)sourceGradient zState:(MPSGraphTensor *)zState inputWeight:(MPSGraphTensor *)inputWeight bias:(MPSGraphTensor *)bias initState:(MPSGraphTensor *)initState mask:(MPSGraphTensor *)mask descriptor:(MPSGraphSingleGateRNNDescriptor *)descriptor name:(NSString *)name
{
  v12 = [(MPSGraph *)self singleGateRNNGradientsWithSourceTensor:source recurrentWeight:recurrentWeight sourceGradient:sourceGradient zState:zState stateGradient:0 inputWeight:inputWeight bias:bias initState:initState mask:mask descriptor:descriptor name:name];

  return v12;
}

- (NSArray)singleGateRNNGradientsWithSourceTensor:(MPSGraphTensor *)source recurrentWeight:(MPSGraphTensor *)recurrentWeight sourceGradient:(MPSGraphTensor *)sourceGradient zState:(MPSGraphTensor *)zState inputWeight:(MPSGraphTensor *)inputWeight bias:(MPSGraphTensor *)bias initState:(MPSGraphTensor *)initState descriptor:(MPSGraphSingleGateRNNDescriptor *)descriptor name:(NSString *)name
{
  v11 = [(MPSGraph *)self singleGateRNNGradientsWithSourceTensor:source recurrentWeight:recurrentWeight sourceGradient:sourceGradient zState:zState stateGradient:0 inputWeight:inputWeight bias:bias initState:initState mask:0 descriptor:descriptor name:name];

  return v11;
}

- (NSArray)singleGateRNNGradientsWithSourceTensor:(MPSGraphTensor *)source recurrentWeight:(MPSGraphTensor *)recurrentWeight sourceGradient:(MPSGraphTensor *)sourceGradient zState:(MPSGraphTensor *)zState initState:(MPSGraphTensor *)initState descriptor:(MPSGraphSingleGateRNNDescriptor *)descriptor name:(NSString *)name
{
  v9 = [(MPSGraph *)self singleGateRNNGradientsWithSourceTensor:source recurrentWeight:recurrentWeight sourceGradient:sourceGradient zState:zState stateGradient:0 inputWeight:0 bias:0 initState:initState mask:0 descriptor:descriptor name:name];

  return v9;
}

- (NSArray)LSTMWithSourceTensor:(MPSGraphTensor *)source recurrentWeight:(MPSGraphTensor *)recurrentWeight inputWeight:(MPSGraphTensor *)inputWeight bias:(MPSGraphTensor *)bias initState:(MPSGraphTensor *)initState initCell:(MPSGraphTensor *)initCell mask:(MPSGraphTensor *)mask peephole:(MPSGraphTensor *)peephole descriptor:(MPSGraphLSTMDescriptor *)descriptor name:(NSString *)name
{
  v100[2] = *MEMORY[0x1E69E9840];
  v18 = source;
  v92 = recurrentWeight;
  v19 = inputWeight;
  v91 = bias;
  v89 = initState;
  v87 = initCell;
  selfCopy = self;
  v88 = mask;
  v90 = peephole;
  v21 = descriptor;
  v93 = name;
  v22 = v18;
  v85 = v22;
  v86 = v19;
  if (v19)
  {
    v23 = [(MPSGraph *)self transposeTensor:v19 dimension:0 withDimension:1 name:@"W^T"];
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ W^T", v93];
    v22 = [(MPSGraph *)self matrixMultiplicationWithPrimaryTensor:v22 secondaryTensor:v23 name:v24];
  }

  if (![(MPSGraphLSTMDescriptor *)v21 bidirectional])
  {
    if (v91)
    {
      v58 = MEMORY[0x1E696AEC0];
      name = [(MPSGraphTensor *)v22 name];
      v60 = [v58 stringWithFormat:@"%@ + b", name];
      v61 = [(MPSGraph *)self additionWithPrimaryTensor:v22 secondaryTensor:v91 name:v60];

      v22 = v61;
    }

    v34 = [MEMORY[0x1E695DF70] arrayWithCapacity:6];
    v25 = [(MPSGraphLSTMDescriptor *)v21 copy];

    if ([v25 reverse])
    {
      name2 = [(MPSGraphTensor *)v22 name];
      v63 = [(MPSGraph *)self reverseTensor:v22 axes:&unk_1F5B773A8 name:name2];

      v22 = v63;
    }

    [v25 setReverse:0];
    [v34 addObject:v22];
    [v34 addObject:v92];
    if (v89)
    {
      [v34 addObject:v89];
      v25[9] = 1;
    }

    if (v87)
    {
      [v34 addObject:v87];
      v25[10] = 1;
    }

    if (v88)
    {
      [v34 addObject:v88];
      v25[8] = 1;
    }

    if (v90)
    {
      [v34 addObject:v90];
      v25[11] = 1;
    }

    v64 = [MPSGraphLSTMOp alloc];
    v84 = [(MPSGraphLSTMOp *)v64 initWithGraph:self inputTensors:v34 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v25 name:v93];
    if (([v25 produceCell] & 1) != 0 || objc_msgSend(v25, "training"))
    {
      outputTensors = [(MPSGraphOperation *)v84 outputTensors];
LABEL_47:

      goto LABEL_48;
    }

    outputTensors2 = [(MPSGraphOperation *)v84 outputTensors];
    v80 = [outputTensors2 objectAtIndexedSubscript:0];
    v94 = v80;
    outputTensors = [MEMORY[0x1E695DEC8] arrayWithObjects:&v94 count:1];
LABEL_46:

    goto LABEL_47;
  }

  v25 = [(MPSGraphLSTMDescriptor *)v21 copy];

  [v25 setBidirectional:0];
  shape = [(MPSGraphTensor *)v92 shape];
  if (shape)
  {
    shape2 = [(MPSGraphTensor *)v92 shape];
    lastObject = [shape2 lastObject];
    integerValue = [lastObject integerValue];

    if ((integerValue & 0x8000000000000000) == 0)
    {
      if (v91)
      {
        v30 = MEMORY[0x1E696AEC0];
        name3 = [(MPSGraphTensor *)v22 name];
        v32 = [v30 stringWithFormat:@"%@ + b", name3];
        v33 = [(MPSGraph *)selfCopy additionWithPrimaryTensor:v22 secondaryTensor:v91 name:v32];

        v22 = v33;
      }

      v34 = [(MPSGraph *)selfCopy sliceTensor:v22 dimension:-1 start:0 length:4 * integerValue name:0];
      v35 = [(MPSGraph *)selfCopy sliceTensor:v22 dimension:-1 start:4 * integerValue length:4 * integerValue name:0];
      outputTensors2 = [(MPSGraph *)selfCopy sliceTensor:v92 dimension:0 start:0 length:1 name:0];
      v80 = [(MPSGraph *)selfCopy sliceTensor:v92 dimension:0 start:1 length:1 name:0];
      v84 = [(MPSGraph *)selfCopy reverseTensor:v35 axes:&unk_1F5B77348 name:0];

      v82 = [MEMORY[0x1E695DF70] arrayWithCapacity:8];
      v83 = [MEMORY[0x1E695DF70] arrayWithCapacity:8];
      [v82 addObject:v34];
      [v82 addObject:outputTensors2];
      [v83 addObject:v84];
      [v83 addObject:v80];
      if (v89)
      {
        v36 = [(MPSGraph *)selfCopy sliceTensor:v89 dimension:-1 start:0 length:integerValue name:0];
        v37 = [(MPSGraph *)selfCopy sliceTensor:v89 dimension:-1 start:integerValue length:integerValue name:0];
        [v82 addObject:v36];
        [v83 addObject:v37];
        v25[9] = 1;
      }

      if (v87)
      {
        v38 = [(MPSGraph *)selfCopy sliceTensor:v87 dimension:-1 start:0 length:integerValue name:0];
        v39 = [(MPSGraph *)selfCopy sliceTensor:v87 dimension:-1 start:integerValue length:integerValue name:0];
        [v82 addObject:v38];
        [v83 addObject:v39];
        v25[10] = 1;
      }

      if (v88)
      {
        v40 = [(MPSGraph *)selfCopy sliceTensor:v88 dimension:-1 start:0 length:integerValue name:0];
        v41 = [(MPSGraph *)selfCopy sliceTensor:v88 dimension:-1 start:integerValue length:integerValue name:0];
        [v82 addObject:v40];
        [v83 addObject:v41];
        v25[8] = 1;
      }

      if (v90)
      {
        v42 = [(MPSGraph *)selfCopy sliceTensor:v90 dimension:0 start:0 length:1 name:0];
        v43 = [(MPSGraph *)selfCopy sliceTensor:v90 dimension:0 start:1 length:1 name:0];
        [v82 addObject:v42];
        [v83 addObject:v43];
        v25[11] = 1;
      }

      v44 = [MPSGraphLSTMOp alloc];
      v79 = [(MPSGraphLSTMOp *)v44 initWithGraph:selfCopy inputTensors:v82 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v25 name:v93];
      v45 = [MPSGraphLSTMOp alloc];
      v78 = [(MPSGraphLSTMOp *)v45 initWithGraph:selfCopy inputTensors:v83 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v25 name:v93];
      outputTensors3 = [(MPSGraphOperation *)v78 outputTensors];
      v47 = [outputTensors3 objectAtIndexedSubscript:0];
      v77 = [(MPSGraph *)selfCopy reverseTensor:v47 axes:&unk_1F5B77360 name:0];

      outputTensors4 = [(MPSGraphOperation *)v79 outputTensors];
      v49 = [outputTensors4 objectAtIndexedSubscript:0];
      v100[0] = v49;
      v100[1] = v77;
      v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v100 count:2];
      v76 = [(MPSGraph *)selfCopy concatTensors:v50 dimension:-1 name:v93];

      if (([v25 produceCell] & 1) != 0 || objc_msgSend(v25, "training"))
      {
        outputTensors5 = [(MPSGraphOperation *)v78 outputTensors];
        v52 = [outputTensors5 objectAtIndexedSubscript:1];
        v53 = [(MPSGraph *)selfCopy reverseTensor:v52 axes:&unk_1F5B77378 name:0];

        outputTensors6 = [(MPSGraphOperation *)v79 outputTensors];
        v55 = [outputTensors6 objectAtIndexedSubscript:1];
        v99[0] = v55;
        v99[1] = v53;
        v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v99 count:2];
        v57 = [(MPSGraph *)selfCopy concatTensors:v56 dimension:-1 name:v93];
      }

      else
      {
        v57 = 0;
      }

      if ([v25 training])
      {
        outputTensors7 = [(MPSGraphOperation *)v78 outputTensors];
        v67 = [outputTensors7 objectAtIndexedSubscript:2];
        v75 = [(MPSGraph *)selfCopy reverseTensor:v67 axes:&unk_1F5B77390 name:0];

        outputTensors8 = [(MPSGraphOperation *)v79 outputTensors];
        v69 = [outputTensors8 objectAtIndexedSubscript:2];
        v98[0] = v69;
        v98[1] = v75;
        v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:2];
        v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ - training state", v93];
        v72 = [(MPSGraph *)selfCopy concatTensors:v70 dimension:-1 name:v71];

        v97[0] = v76;
        v97[1] = v57;
        v97[2] = v72;
        outputTensors = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:3];
      }

      else
      {
        if ([v25 produceCell])
        {
          v96[0] = v76;
          v96[1] = v57;
          v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:2];
        }

        else
        {
          v95 = v76;
          v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v95 count:1];
        }

        outputTensors = v73;
      }

      goto LABEL_46;
    }
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  outputTensors = 0;
LABEL_48:

  return outputTensors;
}

- (NSArray)LSTMWithSourceTensor:(MPSGraphTensor *)source recurrentWeight:(MPSGraphTensor *)recurrentWeight inputWeight:(MPSGraphTensor *)inputWeight bias:(MPSGraphTensor *)bias initState:(MPSGraphTensor *)initState initCell:(MPSGraphTensor *)initCell descriptor:(MPSGraphLSTMDescriptor *)descriptor name:(NSString *)name
{
  v10 = [(MPSGraph *)self LSTMWithSourceTensor:source recurrentWeight:recurrentWeight inputWeight:inputWeight bias:bias initState:initState initCell:initCell mask:0 peephole:0 descriptor:descriptor name:name];

  return v10;
}

- (NSArray)LSTMWithSourceTensor:(MPSGraphTensor *)source recurrentWeight:(MPSGraphTensor *)recurrentWeight initState:(MPSGraphTensor *)initState initCell:(MPSGraphTensor *)initCell descriptor:(MPSGraphLSTMDescriptor *)descriptor name:(NSString *)name
{
  v8 = [(MPSGraph *)self LSTMWithSourceTensor:source recurrentWeight:recurrentWeight inputWeight:0 bias:0 initState:initState initCell:initCell mask:0 peephole:0 descriptor:descriptor name:name];

  return v8;
}

- (NSArray)LSTMGradientsWithSourceTensor:(MPSGraphTensor *)source recurrentWeight:(MPSGraphTensor *)recurrentWeight sourceGradient:(MPSGraphTensor *)sourceGradient zState:(MPSGraphTensor *)zState cellOutputFwd:(MPSGraphTensor *)cellOutputFwd stateGradient:(MPSGraphTensor *)stateGradient cellGradient:(MPSGraphTensor *)cellGradient inputWeight:(MPSGraphTensor *)inputWeight bias:(MPSGraphTensor *)bias initState:(MPSGraphTensor *)initState initCell:(MPSGraphTensor *)initCell mask:(MPSGraphTensor *)mask peephole:(MPSGraphTensor *)peephole descriptor:(MPSGraphLSTMDescriptor *)descriptor name:(NSString *)name
{
  v143[2] = *MEMORY[0x1E69E9840];
  v122 = source;
  v130 = recurrentWeight;
  v135 = sourceGradient;
  v120 = zState;
  v119 = cellOutputFwd;
  v124 = stateGradient;
  v131 = cellGradient;
  v127 = inputWeight;
  v134 = initState;
  v133 = initCell;
  v123 = mask;
  v22 = peephole;
  v23 = descriptor;
  v137 = name;
  v115 = v23;
  v129 = v22;
  v24 = [(MPSGraphLSTMDescriptor *)v23 copy];
  v25 = v130;
  selfCopy2 = self;
  if (![v24 bidirectional])
  {
    v136 = [MEMORY[0x1E695DF70] arrayWithCapacity:8];
    if (v124)
    {
      v51 = [(MPSGraph *)self sliceTensor:v135 dimension:0 start:-1 length:1 name:@"lastSlice"];
      v52 = [(MPSGraph *)self additionWithPrimaryTensor:v51 secondaryTensor:v124 name:@"total derivative last state"];
      v53 = [(MPSGraph *)self cropTensor:v135 dimension:0 amount_before:0 amount_after:1 name:0];
      v139[0] = v53;
      v139[1] = v52;
      v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v139 count:2];
      v55 = [(MPSGraph *)self concatTensors:v54 dimension:0 name:0];

      v56 = v55;
      v25 = v130;
      selfCopy2 = self;
    }

    else
    {
      v56 = v135;
    }

    v135 = v56;
    [v136 addObject:?];
    [v136 addObject:v25];
    [v136 addObject:v120];
    [v136 addObject:v119];
    if (v134)
    {
      [v136 addObject:v134];
      v24[9] = 1;
    }

    if (v133)
    {
      [v136 addObject:v133];
      v24[10] = 1;
    }

    if (v123)
    {
      [v136 addObject:v123];
      v24[8] = 1;
    }

    if (v22)
    {
      [v136 addObject:v22];
      v24[11] = 1;
    }

    if (v131)
    {
      [v136 addObject:v131];
      v24[12] = 1;
    }

    v126 = [[MPSGraphLSTMGradientOp alloc] initWithGraph:selfCopy2 inputTensors:v136 controlDependencies:0 descriptor:v24 name:v137];
    outputTensors = [(MPSGraphOperation *)v126 outputTensors];
    v59 = [outputTensors objectAtIndexedSubscript:0];

    if ([v24 reverse])
    {
      name = [v59 name];
      v61 = [(MPSGraph *)self reverseTensor:v59 axes:&unk_1F5B77438 name:name];

      v59 = v61;
    }

    outputTensors2 = [(MPSGraphOperation *)v126 outputTensors];
    v116 = [outputTensors2 objectAtIndexedSubscript:1];

    v31 = v59;
    if (v22)
    {
      outputTensors3 = [(MPSGraphOperation *)v126 outputTensors];
      v121 = [outputTensors3 objectAtIndexedSubscript:2];

      v64 = 3;
      selfCopy7 = self;
      if (v134)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v121 = 0;
      v64 = 2;
      selfCopy7 = self;
      if (v134)
      {
LABEL_33:
        outputTensors4 = [(MPSGraphOperation *)v126 outputTensors];
        v125 = [outputTensors4 objectAtIndexedSubscript:v64];

        ++v64;
        selfCopy7 = self;
        if (v133)
        {
          goto LABEL_34;
        }

        goto LABEL_39;
      }
    }

    v125 = 0;
    if (v133)
    {
LABEL_34:
      outputTensors5 = [(MPSGraphOperation *)v126 outputTensors];
      v128 = [outputTensors5 objectAtIndexedSubscript:v64];

      selfCopy7 = self;
      v68 = 0x1E696A000uLL;
      if (v127)
      {
        goto LABEL_35;
      }

      goto LABEL_40;
    }

LABEL_39:
    v128 = 0;
    v68 = 0x1E696A000;
    if (v127)
    {
LABEL_35:
      v137 = [*(v68 + 3776) stringWithFormat:@"%@ dx", v137];
      v118 = [(MPSGraph *)selfCopy7 matrixMultiplicationWithPrimaryTensor:v31 secondaryTensor:v127 name:v137];

      v70 = [(MPSGraph *)self flatten2DTensor:v31 axis:-1 name:0];
      v71 = [(MPSGraph *)self flatten2DTensor:v122 axis:-1 name:0];
      v72 = [(MPSGraph *)self transposeTensor:v70 dimension:0 withDimension:1 name:0];
      v1372 = [*(v68 + 3776) stringWithFormat:@"%@ dW", v137];
      v132 = [(MPSGraph *)self matrixMultiplicationWithPrimaryTensor:v72 secondaryTensor:v71 name:v1372];

      selfCopy7 = self;
      if (bias)
      {
LABEL_36:
        v1373 = [*(v68 + 3776) stringWithFormat:@"%@ db", v137];
        v117 = [(MPSGraph *)selfCopy7 reductionSumWithTensor:v31 axes:&unk_1F5B77450 name:v1373];

LABEL_42:
        v57 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:7];
        [v57 addObject:v118];
        [v57 addObject:v116];
        if (v132)
        {
          [v57 addObject:v132];
        }

        if (v117)
        {
          [v57 addObject:v117];
        }

        if (v121)
        {
          [v57 addObject:v121];
        }

        if (v125)
        {
          [v57 addObject:v125];
        }

        if (v128)
        {
          [v57 addObject:?];
        }

        else
        {
          v128 = 0;
        }

        goto LABEL_78;
      }

LABEL_41:
      v117 = 0;
      goto LABEL_42;
    }

LABEL_40:
    v132 = 0;
    v118 = v31;
    if (bias)
    {
      goto LABEL_36;
    }

    goto LABEL_41;
  }

  [v24 setBidirectional:0];
  shape = [(MPSGraphTensor *)v130 shape];
  if (shape)
  {
    shape2 = [(MPSGraphTensor *)v130 shape];
    lastObject = [shape2 lastObject];
    integerValue = [lastObject integerValue];

    if ((integerValue & 0x8000000000000000) == 0)
    {
      v136 = [(MPSGraph *)self sliceTensor:v130 dimension:0 start:0 length:1 name:0];
      v126 = [(MPSGraph *)self sliceTensor:v130 dimension:0 start:1 length:1 name:0];
      v31 = [(MPSGraph *)self sliceTensor:v135 dimension:-1 start:0 length:integerValue name:0];
      v32 = [(MPSGraph *)self sliceTensor:v135 dimension:-1 start:integerValue length:integerValue name:0];
      v116 = [(MPSGraph *)self reverseTensor:v32 axes:&unk_1F5B773C0 name:0];

      v125 = [(MPSGraph *)self sliceTensor:v120 dimension:-1 start:0 length:4 * integerValue name:0];
      v33 = [(MPSGraph *)self sliceTensor:v120 dimension:-1 start:4 * integerValue length:4 * integerValue name:0];
      v128 = [(MPSGraph *)self reverseTensor:v33 axes:&unk_1F5B773D8 name:0];

      v34 = [(MPSGraph *)self sliceTensor:v119 dimension:-1 start:0 length:integerValue name:0];
      v118 = v34;
      v35 = [(MPSGraph *)self sliceTensor:v119 dimension:-1 start:integerValue length:integerValue name:0];
      v132 = [(MPSGraph *)self reverseTensor:v35 axes:&unk_1F5B773F0 name:0];

      if (v123)
      {
        v36 = [(MPSGraph *)self sliceTensor:v123 dimension:-1 start:0 length:integerValue name:0];
        v121 = [(MPSGraph *)self sliceTensor:v123 dimension:-1 start:integerValue length:integerValue name:0];
        v117 = v36;
        if (v22)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v121 = 0;
        v117 = 0;
        if (v22)
        {
LABEL_6:
          v37 = [(MPSGraph *)self sliceTensor:v22 dimension:0 start:0 length:1 name:0];
          v101 = [(MPSGraph *)self sliceTensor:v22 dimension:0 start:1 length:1 name:0];
          v104 = v37;
          v38 = v134;
          if (v134)
          {
            goto LABEL_7;
          }

          goto LABEL_56;
        }
      }

      v101 = 0;
      v104 = 0;
      v38 = v134;
      if (v134)
      {
LABEL_7:
        v39 = [(MPSGraph *)self sliceTensor:v38 dimension:-1 start:0 length:integerValue name:0];
        v102 = [(MPSGraph *)self sliceTensor:v38 dimension:-1 start:integerValue length:integerValue name:0];
        v106 = v39;
        v40 = v133;
        if (v133)
        {
          goto LABEL_8;
        }

        goto LABEL_57;
      }

LABEL_56:
      v102 = 0;
      v106 = 0;
      v40 = v133;
      if (v133)
      {
LABEL_8:
        v41 = [(MPSGraph *)self sliceTensor:v40 dimension:-1 start:0 length:integerValue name:0];
        v103 = [(MPSGraph *)self sliceTensor:v40 dimension:-1 start:integerValue length:integerValue name:0];
        v107 = v41;
        v42 = v124;
        if (v124)
        {
          goto LABEL_9;
        }

        goto LABEL_58;
      }

LABEL_57:
      v103 = 0;
      v107 = 0;
      v42 = v124;
      if (v124)
      {
LABEL_9:
        v43 = [(MPSGraph *)self sliceTensor:v42 dimension:-1 start:0 length:integerValue name:0];
        v105 = [(MPSGraph *)self sliceTensor:v42 dimension:-1 start:integerValue length:integerValue name:0];
        v109 = v43;
        v44 = v131;
        if (v131)
        {
LABEL_10:
          v45 = [(MPSGraph *)self sliceTensor:v44 dimension:-1 start:0 length:integerValue name:0];
          v46 = [(MPSGraph *)self sliceTensor:v131 dimension:-1 start:integerValue length:integerValue name:0];
          shape3 = [(MPSGraphTensor *)v131 shape];
          if (shape3 && (-[MPSGraphTensor shape](v131, "shape"), v48 = objc_claimAutoreleasedReturnValue(), v49 = [v48 count], v48, shape3, v49 >= 3))
          {
            v50 = [(MPSGraph *)self reverseTensor:v46 axes:&unk_1F5B77408 name:0];

            v108 = v45;
            v112 = v50;
          }

          else
          {
            v108 = v45;
            v112 = v46;
          }

LABEL_60:
          [v24 setReverse:0];
          v114 = [(MPSGraph *)self LSTMGradientsWithSourceTensor:v122 recurrentWeight:v136 sourceGradient:v31 zState:v125 cellOutputFwd:v34 stateGradient:v109 cellGradient:v108 inputWeight:0 bias:0 initState:v106 initCell:v107 mask:v117 peephole:v104 descriptor:v24 name:v137];
          [v24 setReverse:1];
          v113 = [(MPSGraph *)self LSTMGradientsWithSourceTensor:v122 recurrentWeight:v126 sourceGradient:v116 zState:v128 cellOutputFwd:v132 stateGradient:v105 cellGradient:v112 inputWeight:0 bias:0 initState:v102 initCell:v103 mask:v121 peephole:v101 descriptor:v24 name:v137];
          v75 = [v114 objectAtIndexedSubscript:0];
          v143[0] = v75;
          v76 = [v113 objectAtIndexedSubscript:0];
          v143[1] = v76;
          v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:v143 count:2];
          v99 = [(MPSGraph *)self concatTensors:v77 dimension:-1 name:@"dz"];

          v78 = [v114 objectAtIndexedSubscript:1];
          v142[0] = v78;
          v79 = [v113 objectAtIndexedSubscript:1];
          v142[1] = v79;
          v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:v142 count:2];
          v100 = [(MPSGraph *)self concatTensors:v80 dimension:0 name:@"dR"];

          v81 = v99;
          if (v134)
          {
            v82 = [v114 objectAtIndexedSubscript:2];
            v141[0] = v82;
            v83 = [v113 objectAtIndexedSubscript:2];
            v141[1] = v83;
            v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:v141 count:2];
            v110 = [(MPSGraph *)self concatTensors:v84 dimension:-1 name:@"dh"];

            v85 = 3;
            if (v133)
            {
              goto LABEL_62;
            }
          }

          else
          {
            v110 = 0;
            v85 = 2;
            if (v133)
            {
LABEL_62:
              v86 = [v114 objectAtIndexedSubscript:v85];
              v140[0] = v86;
              v87 = [v113 objectAtIndexedSubscript:v85];
              v140[1] = v87;
              v88 = [MEMORY[0x1E695DEC8] arrayWithObjects:v140 count:2];
              v111 = [(MPSGraph *)self concatTensors:v88 dimension:-1 name:@"dc"];

              if (v127)
              {
                goto LABEL_63;
              }

              goto LABEL_67;
            }
          }

          v111 = 0;
          if (v127)
          {
LABEL_63:
            v1374 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ dx", v137];
            v90 = [(MPSGraph *)self matrixMultiplicationWithPrimaryTensor:v81 secondaryTensor:v127 name:v1374];

            v91 = [(MPSGraph *)self flatten2DTensor:v81 axis:-1 name:0];
            v92 = [(MPSGraph *)self flatten2DTensor:v122 axis:-1 name:0];
            v93 = [(MPSGraph *)self transposeTensor:v91 dimension:0 withDimension:1 name:0];
            v1375 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ dW", v137];
            v95 = [(MPSGraph *)self matrixMultiplicationWithPrimaryTensor:v93 secondaryTensor:v92 name:v1375];

            if (bias)
            {
LABEL_64:
              v1376 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ db", v137];
              v97 = [(MPSGraph *)self reductionSumWithTensor:v81 axes:&unk_1F5B77420 name:v1376];

LABEL_69:
              v57 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:7];
              [v57 addObject:v90];
              [v57 addObject:v100];
              if (v95)
              {
                [v57 addObject:v95];
              }

              if (v97)
              {
                [v57 addObject:v97];
              }

              if (v110)
              {
                [v57 addObject:v110];
              }

              if (v111)
              {
                [v57 addObject:v111];
              }

LABEL_78:
              goto LABEL_79;
            }

LABEL_68:
            v97 = 0;
            goto LABEL_69;
          }

LABEL_67:
          v95 = 0;
          v90 = v81;
          if (bias)
          {
            goto LABEL_64;
          }

          goto LABEL_68;
        }

LABEL_59:
        v108 = 0;
        v112 = 0;
        goto LABEL_60;
      }

LABEL_58:
      v109 = 0;
      v105 = 0;
      v44 = v131;
      if (v131)
      {
        goto LABEL_10;
      }

      goto LABEL_59;
    }
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v57 = 0;
LABEL_79:

  return v57;
}

- (NSArray)LSTMGradientsWithSourceTensor:(MPSGraphTensor *)source recurrentWeight:(MPSGraphTensor *)recurrentWeight sourceGradient:(MPSGraphTensor *)sourceGradient zState:(MPSGraphTensor *)zState cellOutputFwd:(MPSGraphTensor *)cellOutputFwd inputWeight:(MPSGraphTensor *)inputWeight bias:(MPSGraphTensor *)bias initState:(MPSGraphTensor *)initState initCell:(MPSGraphTensor *)initCell mask:(MPSGraphTensor *)mask descriptor:(MPSGraphLSTMDescriptor *)descriptor name:(NSString *)name
{
  v14 = [(MPSGraph *)self LSTMGradientsWithSourceTensor:source recurrentWeight:recurrentWeight sourceGradient:sourceGradient zState:zState cellOutputFwd:cellOutputFwd stateGradient:0 cellGradient:0 inputWeight:inputWeight bias:bias initState:initState initCell:initCell mask:mask peephole:0 descriptor:descriptor name:name];

  return v14;
}

- (NSArray)LSTMGradientsWithSourceTensor:(MPSGraphTensor *)source recurrentWeight:(MPSGraphTensor *)recurrentWeight sourceGradient:(MPSGraphTensor *)sourceGradient zState:(MPSGraphTensor *)zState cellOutputFwd:(MPSGraphTensor *)cellOutputFwd inputWeight:(MPSGraphTensor *)inputWeight bias:(MPSGraphTensor *)bias initState:(MPSGraphTensor *)initState initCell:(MPSGraphTensor *)initCell descriptor:(MPSGraphLSTMDescriptor *)descriptor name:(NSString *)name
{
  v13 = [(MPSGraph *)self LSTMGradientsWithSourceTensor:source recurrentWeight:recurrentWeight sourceGradient:sourceGradient zState:zState cellOutputFwd:cellOutputFwd stateGradient:0 cellGradient:0 inputWeight:inputWeight bias:bias initState:initState initCell:initCell mask:0 peephole:0 descriptor:descriptor name:name];

  return v13;
}

- (NSArray)LSTMGradientsWithSourceTensor:(MPSGraphTensor *)source recurrentWeight:(MPSGraphTensor *)recurrentWeight sourceGradient:(MPSGraphTensor *)sourceGradient zState:(MPSGraphTensor *)zState cellOutputFwd:(MPSGraphTensor *)cellOutputFwd descriptor:(MPSGraphLSTMDescriptor *)descriptor name:(NSString *)name
{
  v9 = [(MPSGraph *)self LSTMGradientsWithSourceTensor:source recurrentWeight:recurrentWeight sourceGradient:sourceGradient zState:zState cellOutputFwd:cellOutputFwd stateGradient:0 cellGradient:0 inputWeight:0 bias:0 initState:0 initCell:0 mask:0 peephole:0 descriptor:descriptor name:name];

  return v9;
}

- (NSArray)GRUWithSourceTensor:(MPSGraphTensor *)source recurrentWeight:(MPSGraphTensor *)recurrentWeight inputWeight:(MPSGraphTensor *)inputWeight bias:(MPSGraphTensor *)bias initState:(MPSGraphTensor *)initState mask:(MPSGraphTensor *)mask secondaryBias:(MPSGraphTensor *)secondaryBias descriptor:(MPSGraphGRUDescriptor *)descriptor name:(NSString *)name
{
  v87[2] = *MEMORY[0x1E69E9840];
  v17 = source;
  v83 = recurrentWeight;
  v18 = inputWeight;
  v82 = bias;
  v80 = initState;
  v79 = mask;
  v81 = secondaryBias;
  v19 = descriptor;
  v20 = name;
  v21 = v17;
  v22 = v21;
  v78 = v18;
  if (v18)
  {
    v23 = [(MPSGraph *)self transposeTensor:v18 dimension:0 withDimension:1 name:@"W^T"];
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ W^T", v20];
    v22 = [(MPSGraph *)self matrixMultiplicationWithPrimaryTensor:v21 secondaryTensor:v23 name:v24];
  }

  if ([(MPSGraphGRUDescriptor *)v19 bidirectional])
  {
    v25 = [(MPSGraphGRUDescriptor *)v19 copy];

    [v25 setBidirectional:0];
    shape = [(MPSGraphTensor *)v83 shape];
    if (!shape || (-[MPSGraphTensor shape](v83, "shape"), v27 = objc_claimAutoreleasedReturnValue(), [v27 lastObject], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "integerValue"), v28, v27, shape, v29 < 0))
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      outputTensors5 = 0;
    }

    else
    {
      if (v82)
      {
        v30 = MEMORY[0x1E696AEC0];
        name = [v22 name];
        v32 = [v30 stringWithFormat:@"%@ + b", name];
        v33 = [(MPSGraph *)self additionWithPrimaryTensor:v22 secondaryTensor:v82 name:v32];

        v22 = v33;
      }

      v34 = [(MPSGraph *)self sliceTensor:v22 dimension:-1 start:0 length:3 * v29 name:0];
      v35 = [(MPSGraph *)self sliceTensor:v22 dimension:-1 start:3 * v29 length:3 * v29 name:0];
      v71 = v34;
      v74 = [(MPSGraph *)self sliceTensor:v83 dimension:0 start:0 length:1 name:0];
      v73 = [(MPSGraph *)self sliceTensor:v83 dimension:0 start:1 length:1 name:0];
      v72 = [(MPSGraph *)self reverseTensor:v35 axes:&unk_1F5B77468 name:0];

      v77 = [MEMORY[0x1E695DF70] arrayWithCapacity:8];
      v76 = [MEMORY[0x1E695DF70] arrayWithCapacity:8];
      [v77 addObject:v34];
      [v77 addObject:v74];
      [v76 addObject:v72];
      [v76 addObject:v73];
      if (v80)
      {
        v36 = [(MPSGraph *)self sliceTensor:v80 dimension:-1 start:0 length:v29 name:0];
        v37 = [(MPSGraph *)self sliceTensor:v80 dimension:-1 start:v29 length:v29 name:0];
        [v77 addObject:v36];
        [v76 addObject:v37];
        v25[9] = 1;
      }

      if (v79)
      {
        v38 = [(MPSGraph *)self sliceTensor:v79 dimension:-1 start:0 length:v29 name:0];
        v39 = [(MPSGraph *)self sliceTensor:v79 dimension:-1 start:v29 length:v29 name:0];
        [v77 addObject:v38];
        [v76 addObject:v39];
        v25[8] = 1;
      }

      if (v81)
      {
        v40 = [(MPSGraph *)self sliceTensor:v81 dimension:-1 start:0 length:v29 name:0];
        v41 = [(MPSGraph *)self sliceTensor:v81 dimension:-1 start:v29 length:v29 name:0];
        [v77 addObject:v40];
        [v76 addObject:v41];
        v25[10] = 1;
      }

      v42 = [MPSGraphGRUOp alloc];
      v75 = [(MPSGraphGRUOp *)v42 initWithGraph:self inputTensors:v77 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v25 name:v20];
      v43 = [MPSGraphGRUOp alloc];
      v68 = [(MPSGraphGRUOp *)v43 initWithGraph:self inputTensors:v76 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v25 name:v20];
      outputTensors = [(MPSGraphOperation *)v68 outputTensors];
      v45 = [outputTensors objectAtIndexedSubscript:0];
      v70 = [(MPSGraph *)self reverseTensor:v45 axes:&unk_1F5B77480 name:0];

      outputTensors2 = [(MPSGraphOperation *)v75 outputTensors];
      v47 = [outputTensors2 objectAtIndexedSubscript:0];
      v87[0] = v47;
      v87[1] = v70;
      v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:2];
      v69 = [(MPSGraph *)self concatTensors:v48 dimension:-1 name:v20];

      if ([v25 training])
      {
        outputTensors3 = [(MPSGraphOperation *)v68 outputTensors];
        v50 = [outputTensors3 objectAtIndexedSubscript:1];
        v67 = [(MPSGraph *)self reverseTensor:v50 axes:&unk_1F5B77498 name:0];

        outputTensors4 = [(MPSGraphOperation *)v75 outputTensors];
        v52 = [outputTensors4 objectAtIndexedSubscript:1];
        v86[0] = v52;
        v86[1] = v67;
        v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:2];
        v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ - training state", v20];
        v55 = [(MPSGraph *)self concatTensors:v53 dimension:-1 name:v54];

        v85[0] = v69;
        v85[1] = v55;
        outputTensors5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:2];
      }

      else
      {
        v84 = v69;
        outputTensors5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v84 count:1];
      }
    }
  }

  else
  {
    if (v82)
    {
      v57 = MEMORY[0x1E696AEC0];
      name2 = [v22 name];
      v59 = [v57 stringWithFormat:@"%@ + b", name2];
      v60 = [(MPSGraph *)self additionWithPrimaryTensor:v22 secondaryTensor:v82 name:v59];

      v22 = v60;
    }

    v61 = [MEMORY[0x1E695DF70] arrayWithCapacity:6];
    v25 = [(MPSGraphGRUDescriptor *)v19 copy];

    if ([v25 reverse])
    {
      name3 = [v22 name];
      v63 = [(MPSGraph *)self reverseTensor:v22 axes:&unk_1F5B774B0 name:name3];

      v22 = v63;
    }

    [v25 setReverse:0];
    [v61 addObject:v22];
    [v61 addObject:v83];
    if (v80)
    {
      [v61 addObject:v80];
      v25[9] = 1;
    }

    if (v79)
    {
      [v61 addObject:v79];
      v25[8] = 1;
    }

    if (v81)
    {
      [v61 addObject:v81];
      v25[10] = 1;
    }

    v64 = [MPSGraphGRUOp alloc];
    v65 = [(MPSGraphGRUOp *)v64 initWithGraph:self inputTensors:v61 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v25 name:v20];
    outputTensors5 = [(MPSGraphOperation *)v65 outputTensors];
  }

  return outputTensors5;
}

- (NSArray)GRUWithSourceTensor:(MPSGraphTensor *)source recurrentWeight:(MPSGraphTensor *)recurrentWeight inputWeight:(MPSGraphTensor *)inputWeight bias:(MPSGraphTensor *)bias initState:(MPSGraphTensor *)initState descriptor:(MPSGraphGRUDescriptor *)descriptor name:(NSString *)name
{
  v9 = [(MPSGraph *)self GRUWithSourceTensor:source recurrentWeight:recurrentWeight inputWeight:inputWeight bias:bias initState:initState mask:0 secondaryBias:0 descriptor:descriptor name:name];

  return v9;
}

- (NSArray)GRUWithSourceTensor:(MPSGraphTensor *)source recurrentWeight:(MPSGraphTensor *)recurrentWeight inputWeight:(MPSGraphTensor *)inputWeight bias:(MPSGraphTensor *)bias descriptor:(MPSGraphGRUDescriptor *)descriptor name:(NSString *)name
{
  v8 = [(MPSGraph *)self GRUWithSourceTensor:source recurrentWeight:recurrentWeight inputWeight:inputWeight bias:bias initState:0 mask:0 secondaryBias:0 descriptor:descriptor name:name];

  return v8;
}

- (NSArray)GRUGradientsWithSourceTensor:(MPSGraphTensor *)source recurrentWeight:(MPSGraphTensor *)recurrentWeight sourceGradient:(MPSGraphTensor *)sourceGradient zState:(MPSGraphTensor *)zState outputFwd:(MPSGraphTensor *)outputFwd stateGradient:(MPSGraphTensor *)stateGradient inputWeight:(MPSGraphTensor *)inputWeight bias:(MPSGraphTensor *)bias initState:(MPSGraphTensor *)initState mask:(MPSGraphTensor *)mask secondaryBias:(MPSGraphTensor *)secondaryBias descriptor:(MPSGraphGRUDescriptor *)descriptor name:(NSString *)name
{
  v128[2] = *MEMORY[0x1E69E9840];
  v108 = source;
  v114 = recurrentWeight;
  v118 = sourceGradient;
  v115 = zState;
  v116 = outputFwd;
  v113 = stateGradient;
  v112 = inputWeight;
  v122 = initState;
  v110 = mask;
  v120 = secondaryBias;
  v20 = descriptor;
  v121 = name;
  v103 = v20;
  v21 = [(MPSGraphGRUDescriptor *)v20 copy];
  v22 = v114;
  v23 = v115;
  v24 = v116;
  v25 = v118;
  if (![v21 bidirectional])
  {
    v119 = [MEMORY[0x1E695DF70] arrayWithCapacity:7];
    if (v113)
    {
      v45 = [(MPSGraph *)self sliceTensor:v118 dimension:0 start:-1 length:1 name:@"lastSlice"];
      v46 = [(MPSGraph *)self additionWithPrimaryTensor:v45 secondaryTensor:v113 name:@"total derivative last state"];
      v47 = [(MPSGraph *)self cropTensor:v118 dimension:0 amount_before:0 amount_after:1 name:0];
      v124[0] = v47;
      v124[1] = v46;
      v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v124 count:2];
      v49 = [(MPSGraph *)self concatTensors:v48 dimension:0 name:0];

      v25 = v49;
      v22 = v114;
      v23 = v115;
      v24 = v116;
    }

    v118 = v25;
    [v119 addObject:v25];
    [v119 addObject:v22];
    [v119 addObject:v23];
    [v119 addObject:v24];
    if (v122)
    {
      [v119 addObject:v122];
      v21[9] = 1;
    }

    if (v110)
    {
      [v119 addObject:v110];
      v21[8] = 1;
    }

    if (v120)
    {
      [v119 addObject:v120];
      v21[10] = 1;
    }

    v107 = [[MPSGraphGRUGradientOp alloc] initWithGraph:self inputTensors:v119 controlDependencies:0 descriptor:v21 name:v121];
    outputTensors = [(MPSGraphOperation *)v107 outputTensors];
    v51 = [outputTensors objectAtIndexedSubscript:0];

    if ([v21 reverse])
    {
      name = [v51 name];
      v53 = [(MPSGraph *)self reverseTensor:v51 axes:&unk_1F5B77528 name:name];

      v51 = v53;
    }

    outputTensors2 = [(MPSGraphOperation *)v107 outputTensors];
    v104 = [outputTensors2 objectAtIndexedSubscript:1];

    v30 = v51;
    if (v122)
    {
      outputTensors3 = [(MPSGraphOperation *)v107 outputTensors];
      v106 = [outputTensors3 objectAtIndexedSubscript:2];

      v56 = 3;
      if (v120)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v106 = 0;
      v56 = 2;
      if (v120)
      {
LABEL_23:
        outputTensors4 = [(MPSGraphOperation *)v107 outputTensors];
        v109 = [outputTensors4 objectAtIndexedSubscript:v56];

        v58 = 0x1E696A000uLL;
        if (v112)
        {
          goto LABEL_24;
        }

        goto LABEL_31;
      }
    }

    v109 = 0;
    v58 = 0x1E696A000;
    if (v112)
    {
LABEL_24:
      v121 = [*(v58 + 3776) stringWithFormat:@"%@ dx", v121];
      v111 = [(MPSGraph *)self matrixMultiplicationWithPrimaryTensor:v30 secondaryTensor:v112 name:v121];

      v60 = [(MPSGraph *)self flatten2DTensor:v30 axis:-1 name:0];
      v61 = [(MPSGraph *)self flatten2DTensor:v108 axis:-1 name:0];
      v62 = [(MPSGraph *)self transposeTensor:v60 dimension:0 withDimension:1 name:0];
      v1212 = [*(v58 + 3776) stringWithFormat:@"%@ dW", v121];
      v117 = [(MPSGraph *)self matrixMultiplicationWithPrimaryTensor:v62 secondaryTensor:v61 name:v1212];

      if (bias)
      {
LABEL_25:
        v1213 = [*(v58 + 3776) stringWithFormat:@"%@ db", v121];
        v105 = [(MPSGraph *)self reductionSumWithTensor:v30 axes:&unk_1F5B77540 name:v1213];

LABEL_33:
        v65 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:7];
        [v65 addObject:v111];
        [v65 addObject:v104];
        if (v117)
        {
          [v65 addObject:v117];
        }

        if (v105)
        {
          [v65 addObject:v105];
        }

        if (v106)
        {
          [v65 addObject:v106];
        }

        if (!v109)
        {

LABEL_65:
          goto LABEL_66;
        }

        [v65 addObject:?];
LABEL_64:

        goto LABEL_65;
      }

LABEL_32:
      v105 = 0;
      goto LABEL_33;
    }

LABEL_31:
    v117 = 0;
    v111 = v30;
    if (bias)
    {
      goto LABEL_25;
    }

    goto LABEL_32;
  }

  [v21 setBidirectional:0];
  shape = [(MPSGraphTensor *)v114 shape];
  if (shape)
  {
    shape2 = [(MPSGraphTensor *)v114 shape];
    lastObject = [shape2 lastObject];
    integerValue = [lastObject integerValue];

    if ((integerValue & 0x8000000000000000) == 0)
    {
      v119 = [(MPSGraph *)self sliceTensor:v114 dimension:0 start:0 length:1 name:0];
      v107 = [(MPSGraph *)self sliceTensor:v114 dimension:0 start:1 length:1 name:0];
      v30 = [(MPSGraph *)self sliceTensor:v118 dimension:-1 start:0 length:integerValue name:0];
      v31 = [(MPSGraph *)self sliceTensor:v118 dimension:-1 start:integerValue length:integerValue name:0];
      v104 = [(MPSGraph *)self reverseTensor:v31 axes:&unk_1F5B774C8 name:0];

      resetAfter = [v21 resetAfter];
      v33 = 3;
      if (resetAfter)
      {
        v33 = 4;
      }

      v34 = v33 * integerValue;
      v106 = [(MPSGraph *)self sliceTensor:v115 dimension:-1 start:0 length:v33 * integerValue name:0];
      v35 = [(MPSGraph *)self sliceTensor:v115 dimension:-1 start:v34 length:v34 name:0];
      v111 = [(MPSGraph *)self reverseTensor:v35 axes:&unk_1F5B774E0 name:0];

      v117 = [(MPSGraph *)self sliceTensor:v116 dimension:-1 start:0 length:integerValue name:0];
      v36 = [(MPSGraph *)self sliceTensor:v116 dimension:-1 start:integerValue length:integerValue name:0];
      v105 = [(MPSGraph *)self reverseTensor:v36 axes:&unk_1F5B774F8 name:0];

      if (v110)
      {
        v37 = [(MPSGraph *)self sliceTensor:v110 dimension:-1 start:0 length:integerValue name:0];
        v38 = [(MPSGraph *)self sliceTensor:v110 dimension:-1 start:integerValue length:integerValue name:0];
        v109 = v37;
        v39 = v120;
        v90 = v38;
        if (v120)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v38 = 0;
        v109 = 0;
        v39 = v120;
        v90 = 0;
        if (v120)
        {
LABEL_8:
          v40 = [(MPSGraph *)self sliceTensor:v39 dimension:-1 start:0 length:integerValue name:0];
          v94 = [(MPSGraph *)self sliceTensor:v39 dimension:-1 start:integerValue length:integerValue name:0];
          v91 = v40;
          if (v122)
          {
            goto LABEL_9;
          }

          goto LABEL_44;
        }
      }

      v94 = 0;
      v40 = 0;
      v91 = 0;
      if (v122)
      {
LABEL_9:
        v41 = [(MPSGraph *)self sliceTensor:v122 dimension:-1 start:0 length:integerValue name:0];
        v95 = [(MPSGraph *)self sliceTensor:v122 dimension:-1 start:integerValue length:integerValue name:0];
        v96 = v41;
        v42 = v113;
        selfCopy2 = self;
        if (v113)
        {
LABEL_10:
          v44 = [(MPSGraph *)selfCopy2 sliceTensor:v42 dimension:-1 start:0 length:integerValue name:0];
          [(MPSGraph *)selfCopy2 sliceTensor:v113 dimension:-1 start:integerValue length:integerValue name:0];
          v99 = v97 = v44;
          goto LABEL_46;
        }

LABEL_45:
        v97 = 0;
        v99 = 0;
LABEL_46:
        [v21 setReverse:0];
        v102 = [(MPSGraph *)selfCopy2 GRUGradientsWithSourceTensor:v108 recurrentWeight:v119 sourceGradient:v30 zState:v106 outputFwd:v117 stateGradient:v97 inputWeight:0 bias:0 initState:v96 mask:v109 secondaryBias:v40 descriptor:v21 name:v121];
        [v21 setReverse:1];
        v101 = [(MPSGraph *)selfCopy2 GRUGradientsWithSourceTensor:v108 recurrentWeight:v107 sourceGradient:v104 zState:v111 outputFwd:v105 stateGradient:v99 inputWeight:0 bias:0 initState:v95 mask:v38 secondaryBias:v94 descriptor:v21 name:v121];
        v66 = [v102 objectAtIndexedSubscript:0];
        v128[0] = v66;
        v67 = [v101 objectAtIndexedSubscript:0];
        v128[1] = v67;
        v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v128 count:2];
        v92 = [(MPSGraph *)selfCopy2 concatTensors:v68 dimension:-1 name:@"dz"];

        v69 = [v102 objectAtIndexedSubscript:1];
        v127[0] = v69;
        v70 = [v101 objectAtIndexedSubscript:1];
        v127[1] = v70;
        v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:v127 count:2];
        v93 = [(MPSGraph *)self concatTensors:v71 dimension:0 name:@"dR"];

        v72 = v92;
        if (v122)
        {
          v73 = [v102 objectAtIndexedSubscript:2];
          v126[0] = v73;
          v74 = [v101 objectAtIndexedSubscript:2];
          v126[1] = v74;
          v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:v126 count:2];
          v98 = [(MPSGraph *)self concatTensors:v75 dimension:-1 name:@"dh"];

          v76 = 3;
          if (v120)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v98 = 0;
          v76 = 2;
          if (v120)
          {
LABEL_48:
            v77 = [v102 objectAtIndexedSubscript:v76];
            v125[0] = v77;
            v78 = [v101 objectAtIndexedSubscript:v76];
            v125[1] = v78;
            v79 = [MEMORY[0x1E695DEC8] arrayWithObjects:v125 count:2];
            v80 = [(MPSGraph *)self concatTensors:v79 dimension:-1 name:@"db2"];

            if (v112)
            {
              goto LABEL_49;
            }

            goto LABEL_53;
          }
        }

        v80 = 0;
        if (v112)
        {
LABEL_49:
          v1214 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ dx", v121];
          v100 = [(MPSGraph *)self matrixMultiplicationWithPrimaryTensor:v72 secondaryTensor:v112 name:v1214];

          v82 = [(MPSGraph *)self flatten2DTensor:v72 axis:-1 name:0];
          v83 = [(MPSGraph *)self flatten2DTensor:v108 axis:-1 name:0];
          v84 = [(MPSGraph *)self transposeTensor:v82 dimension:0 withDimension:1 name:0];
          v1215 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ dW", v121];
          v86 = [(MPSGraph *)self matrixMultiplicationWithPrimaryTensor:v84 secondaryTensor:v83 name:v1215];

          if (bias)
          {
LABEL_50:
            v1216 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ db", v121];
            v88 = [(MPSGraph *)self reductionSumWithTensor:v72 axes:&unk_1F5B77510 name:v1216];

LABEL_55:
            v65 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:7];
            [v65 addObject:v100];
            [v65 addObject:v93];
            if (v86)
            {
              [v65 addObject:v86];
            }

            if (v88)
            {
              [v65 addObject:v88];
            }

            if (v98)
            {
              [v65 addObject:v98];
            }

            if (v80)
            {
              [v65 addObject:v80];
            }

            goto LABEL_64;
          }

LABEL_54:
          v88 = 0;
          goto LABEL_55;
        }

LABEL_53:
        v86 = 0;
        v100 = v72;
        if (bias)
        {
          goto LABEL_50;
        }

        goto LABEL_54;
      }

LABEL_44:
      v95 = 0;
      v96 = 0;
      v42 = v113;
      selfCopy2 = self;
      if (v113)
      {
        goto LABEL_10;
      }

      goto LABEL_45;
    }
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v65 = 0;
LABEL_66:

  return v65;
}

- (NSArray)GRUGradientsWithSourceTensor:(MPSGraphTensor *)source recurrentWeight:(MPSGraphTensor *)recurrentWeight sourceGradient:(MPSGraphTensor *)sourceGradient zState:(MPSGraphTensor *)zState outputFwd:(MPSGraphTensor *)outputFwd inputWeight:(MPSGraphTensor *)inputWeight bias:(MPSGraphTensor *)bias initState:(MPSGraphTensor *)initState descriptor:(MPSGraphGRUDescriptor *)descriptor name:(NSString *)name
{
  v12 = [(MPSGraph *)self GRUGradientsWithSourceTensor:source recurrentWeight:recurrentWeight sourceGradient:sourceGradient zState:zState outputFwd:outputFwd stateGradient:0 inputWeight:inputWeight bias:bias initState:initState mask:0 secondaryBias:0 descriptor:descriptor name:name];

  return v12;
}

- (NSArray)GRUGradientsWithSourceTensor:(MPSGraphTensor *)source recurrentWeight:(MPSGraphTensor *)recurrentWeight sourceGradient:(MPSGraphTensor *)sourceGradient zState:(MPSGraphTensor *)zState outputFwd:(MPSGraphTensor *)outputFwd inputWeight:(MPSGraphTensor *)inputWeight bias:(MPSGraphTensor *)bias descriptor:(MPSGraphGRUDescriptor *)descriptor name:(NSString *)name
{
  v11 = [(MPSGraph *)self GRUGradientsWithSourceTensor:source recurrentWeight:recurrentWeight sourceGradient:sourceGradient zState:zState outputFwd:outputFwd stateGradient:0 inputWeight:inputWeight bias:bias initState:0 mask:0 secondaryBias:0 descriptor:descriptor name:name];

  return v11;
}

- (NSArray)controlDependencyWithOperations:(NSArray *)operations dependentBlock:(MPSGraphControlFlowDependencyBlock)dependentBlock name:(NSString *)name
{
  v7 = operations;
  v8 = dependentBlock;
  pthread_mutex_lock(&self->_graphMutex);
  v9 = [(NSSet *)self->_currentControlDependencies copy];
  v10 = [(NSSet *)self->_currentControlDependencies setByAddingObjectsFromArray:v7];
  currentControlDependencies = self->_currentControlDependencies;
  self->_currentControlDependencies = v10;

  v12 = v8[2](v8);
  objc_storeStrong(&self->_currentControlDependencies, v9);
  pthread_mutex_unlock(&self->_graphMutex);

  return v12;
}

- (NSArray)ifWithPredicateTensor:(MPSGraphTensor *)predicateTensor thenBlock:(MPSGraphIfThenElseBlock)thenBlock elseBlock:(MPSGraphIfThenElseBlock)elseBlock name:(NSString *)name
{
  v21[1] = *MEMORY[0x1E69E9840];
  v10 = predicateTensor;
  v11 = thenBlock;
  v12 = elseBlock;
  v13 = name;
  v14 = [(MPSGraph *)self castTensor:v10 toType:2147483656 name:@"if_cast"];
  v15 = [(MPSGraph *)self reshapeTensor:v14 withShape:MEMORY[0x1E695E0F0] name:0];
  v16 = [MPSGraphIfElseOp alloc];
  v21[0] = v15;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v18 = [(MPSGraphIfElseOp *)v16 initWithGraph:self inputTensors:v17 controlDependencies:MEMORY[0x1E695E0F0] trueBlock:v11 falseBlock:v12 name:v13];

  outputTensors = [(MPSGraphOperation *)v18 outputTensors];

  return outputTensors;
}

- (NSArray)whileWithInitialInputs:(NSArray *)initialInputs before:(MPSGraphWhileBeforeBlock)before after:(MPSGraphWhileAfterBlock)after name:(NSString *)name
{
  v10 = initialInputs;
  v11 = before;
  v12 = after;
  v13 = name;
  v14 = [MPSGraphWhileOp alloc];
  v15 = [(MPSGraphWhileOp *)v14 initWithGraph:self inputTensors:v10 controlDependencies:MEMORY[0x1E695E0F0] beforeBlock:v11 afterBlock:v12 name:v13];
  outputTensors = [(MPSGraphOperation *)v15 outputTensors];

  return outputTensors;
}

- (NSArray)forLoopWithNumberOfIterations:(MPSGraphTensor *)numberOfIterations initialBodyArguments:(NSArray *)initialBodyArguments body:(MPSGraphForLoopBodyBlock)body name:(NSString *)name
{
  v10 = numberOfIterations;
  v11 = initialBodyArguments;
  v12 = body;
  v13 = name;
  v14 = [(MPSGraph *)self constantWithScalar:MEMORY[0x1E695E0F0] shape:536870944 dataType:0.0];
  v15 = [(MPSGraph *)self constantWithScalar:MEMORY[0x1E695E0F0] shape:536870944 dataType:1.0];
  v16 = [(MPSGraph *)self forLoopWithLowerBound:v14 upperBound:v10 step:v15 initialBodyArguments:v11 body:v12 name:v13];

  return v16;
}

- (NSArray)forLoopWithLowerBound:(MPSGraphTensor *)lowerBound upperBound:(MPSGraphTensor *)upperBound step:(MPSGraphTensor *)step initialBodyArguments:(NSArray *)initialBodyArguments body:(MPSGraphForLoopBodyBlock)body name:(NSString *)name
{
  v34[3] = *MEMORY[0x1E69E9840];
  v14 = lowerBound;
  v33 = upperBound;
  v32 = step;
  v15 = initialBodyArguments;
  v30 = body;
  v31 = name;
  v29 = v14;
  v16 = [(MPSGraph *)self reshapeTensor:v14 withShape:MEMORY[0x1E695E0F0] name:0];
  v17 = [(MPSGraph *)self castTensor:v16 toType:2147483680 name:@"for_cast"];
  v18 = [(MPSGraph *)self reshapeTensor:v33 withShape:MEMORY[0x1E695E0F0] name:0];
  v19 = [(MPSGraph *)self castTensor:v18 toType:2147483680 name:@"for_cast"];
  v20 = [(MPSGraph *)self reshapeTensor:v32 withShape:MEMORY[0x1E695E0F0] name:0];
  v21 = [(MPSGraph *)self castTensor:v20 toType:2147483680 name:@"for_cast"];
  v22 = MEMORY[0x1E695DF70];
  v34[0] = v17;
  v34[1] = v19;
  v34[2] = v21;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:3];
  v24 = [v22 arrayWithArray:v23];

  [v24 addObjectsFromArray:v15];
  v25 = [MPSGraphForLoopOp alloc];
  v26 = [(MPSGraphForLoopOp *)v25 initWithGraph:self inputTensors:v24 controlDependencies:MEMORY[0x1E695E0F0] bodyBlock:v30 iterArgs:v15 name:v31];
  outputTensors = [(MPSGraphOperation *)v26 outputTensors];

  return outputTensors;
}

- (MPSGraphTensor)depthwiseConvolution2DWithSourceTensor:(MPSGraphTensor *)source weightsTensor:(MPSGraphTensor *)weights descriptor:(MPSGraphDepthwiseConvolution2DOpDescriptor *)descriptor name:(NSString *)name
{
  v108[3] = *MEMORY[0x1E69E9840];
  v9 = source;
  v100 = weights;
  v10 = descriptor;
  v98 = name;
  v99 = v9;
  v97 = v10;
  shape = [(MPSGraphTensor *)v9 shape];
  if ([shape count] != 4)
  {
    shape2 = [(MPSGraphTensor *)v9 shape];
    [shape2 count];
  }

  shape3 = [(MPSGraphTensor *)v9 shape];
  if ([shape3 count] == 4)
  {
  }

  else
  {
    shape4 = [(MPSGraphTensor *)v9 shape];
    v15 = [shape4 count];

    if (v15 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  shape5 = [(MPSGraphTensor *)v100 shape];
  if ([shape5 count] != 4)
  {
    shape6 = [(MPSGraphTensor *)v100 shape];
    [shape6 count];
  }

  shape7 = [(MPSGraphTensor *)v100 shape];
  if ([shape7 count] == 4)
  {
  }

  else
  {
    shape8 = [(MPSGraphTensor *)v100 shape];
    v20 = [shape8 count];

    if (v20 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  strideInX = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)v10 strideInX];
  strideInY = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)v10 strideInY];
  dilationRateInX = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)v10 dilationRateInX];
  dilationRateInY = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)v10 dilationRateInY];
  paddingLeft = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)v10 paddingLeft];
  paddingRight = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)v10 paddingRight];
  paddingTop = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)v10 paddingTop];
  paddingBottom = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)v10 paddingBottom];
  paddingStyle = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)v10 paddingStyle];
  dataLayout = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)v10 dataLayout];
  weightsLayout = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)v10 weightsLayout];
  v108[0] = &unk_1F5B75800;
  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:strideInY];
  v108[1] = v30;
  v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:strideInX];
  v108[2] = v31;
  v95 = [MEMORY[0x1E695DEC8] arrayWithObjects:v108 count:3];

  v107[0] = &unk_1F5B75800;
  v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:dilationRateInY];
  v107[1] = v32;
  v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:dilationRateInX];
  v107[2] = v33;
  v94 = [MEMORY[0x1E695DEC8] arrayWithObjects:v107 count:3];

  v106[0] = &unk_1F5B75818;
  v106[1] = &unk_1F5B75818;
  v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:paddingTop];
  v106[2] = v34;
  v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:paddingBottom];
  v106[3] = v35;
  v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:paddingLeft];
  v106[4] = v36;
  v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:paddingRight];
  v106[5] = v37;
  v93 = [MEMORY[0x1E695DEC8] arrayWithObjects:v106 count:6];

  v38 = v100;
  v39 = v38;
  if (dataLayout > 6 || ((1 << dataLayout) & 0x51) == 0)
  {
    if ((dataLayout & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      goto LABEL_46;
    }

    shape9 = [(MPSGraphTensor *)v38 shape];
    v41 = shape9;
    if (!shape9 || [shape9 count] != 4)
    {
LABEL_45:

LABEL_46:
      v79 = [MPSGraphDepthwiseConvolution2DOp alloc];
      v101[0] = v99;
      v101[1] = v39;
      v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:v101 count:2];
      v81 = [(MPSGraphDepthwiseConvolution2DBaseOp *)v79 initWithGraph:self inputTensors:v80 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v10 name:v98];

      outputTensors = [(MPSGraphOperation *)v81 outputTensors];
      v83 = [(MPSGraphDepthwiseConvolution3DOp *)outputTensors objectAtIndexedSubscript:0];
      v54 = v39;
      goto LABEL_47;
    }

    if (weightsLayout == 3)
    {
      v57 = [v41 objectAtIndexedSubscript:0];
      v58 = [v41 objectAtIndexedSubscript:1];
      v59 = [v41 objectAtIndexedSubscript:2];
      integerValue = [v59 integerValue];

      v60 = [v41 objectAtIndexedSubscript:3];
      integerValue2 = [v60 integerValue];

      if (integerValue < 0 || (v47 = v57, v62 = v58, v63 = v39, integerValue2 < 0))
      {
        v48 = v58;
        v47 = v57;
        goto LABEL_44;
      }
    }

    else
    {
      v74 = [v41 objectAtIndexedSubscript:0];
      integerValue2 = [v74 integerValue];

      v75 = [v41 objectAtIndexedSubscript:1];
      integerValue = [v75 integerValue];

      v76 = [v41 objectAtIndexedSubscript:2];
      v77 = [v41 objectAtIndexedSubscript:3];
      v48 = v77;
      if (integerValue < 0 || integerValue2 < 0)
      {
        v47 = v76;
        goto LABEL_44;
      }

      if (weightsLayout == 2)
      {
        name = [(MPSGraphTensor *)v39 name];
        v63 = [(MPSGraph *)self transposeTensor:v39 permute:&unk_1F5B775D0 name:name];

        v47 = v76;
        v62 = v48;
      }

      else
      {
        v47 = v76;
        v62 = v77;
        v63 = v39;
      }
    }

    v103[0] = &unk_1F5B75800;
    v103[1] = v47;
    v103[2] = v62;
    name4 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue2 * integerValue];
    v103[3] = name4;
    v85 = [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:4];
    name2 = [v63 name];
    v73 = v85;
    v54 = [(MPSGraph *)self reshapeTensor:v63 withShape:v85 name:name2];
    v92 = v62;
    v55 = -1;
    goto LABEL_52;
  }

  shape10 = [(MPSGraphTensor *)v38 shape];
  v41 = shape10;
  if (!shape10 || [shape10 count] != 4)
  {
    goto LABEL_45;
  }

  if (weightsLayout == 3)
  {
    v42 = [v41 objectAtIndexedSubscript:0];
    v92 = [v41 objectAtIndexedSubscript:1];
    v43 = [v41 objectAtIndexedSubscript:2];
    integerValue3 = [v43 integerValue];

    v45 = [v41 objectAtIndexedSubscript:3];
    integerValue4 = [v45 integerValue];

    v47 = v42;
    if (integerValue3 < 0)
    {
      v48 = v92;
    }

    else
    {
      v48 = v92;
      if ((integerValue4 & 0x8000000000000000) == 0)
      {
        v105[0] = &unk_1F5B75800;
        v105[1] = v42;
        v105[2] = v92;
        v49 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue4 * integerValue3];
        v105[3] = v49;
        v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:4];
        name3 = [(MPSGraphTensor *)v39 name];
        v52 = [(MPSGraph *)self reshapeTensor:v39 withShape:v50 name:name3];

        name4 = [v52 name];
        v54 = [(MPSGraph *)self transposeTensor:v52 permute:&unk_1F5B775A0 name:name4];
        v55 = -3;
        v47 = v42;
LABEL_53:

        v48 = v92;
        goto LABEL_54;
      }
    }

    goto LABEL_44;
  }

  v64 = [v41 objectAtIndexedSubscript:0];
  integerValue5 = [v64 integerValue];

  v66 = [v41 objectAtIndexedSubscript:1];
  integerValue6 = [v66 integerValue];

  v68 = [v41 objectAtIndexedSubscript:2];
  v92 = [v41 objectAtIndexedSubscript:3];
  v69 = v68;
  if (integerValue6 < 0)
  {
    v48 = v92;
    v47 = v69;
    goto LABEL_44;
  }

  v48 = v92;
  v47 = v69;
  if ((integerValue5 & 0x8000000000000000) != 0)
  {
LABEL_44:

    goto LABEL_45;
  }

  if (integerValue5 >= 2)
  {
    name5 = [(MPSGraphTensor *)v39 name];
    v63 = [(MPSGraph *)self transposeTensor:v39 permute:&unk_1F5B775B8 name:name5];

    v47 = v69;
    v104[0] = &unk_1F5B75800;
    name4 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue6 * integerValue5];
    v104[1] = name4;
    v104[2] = v69;
    v104[3] = v92;
    v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:v104 count:4];
    name2 = [v63 name];
    v73 = v71;
    v54 = [(MPSGraph *)self reshapeTensor:v63 withShape:v71 name:name2];
    v55 = -3;
LABEL_52:

    v52 = v73;
    goto LABEL_53;
  }

  v55 = -3;
  v54 = v39;
LABEL_54:

  v81 = [MPSGraphDepthwiseConvolution3DOpDescriptor descriptorWithStrides:v95 dilationRates:v94 paddingValues:v93 paddingStyle:paddingStyle];
  [(MPSGraphDepthwiseConvolution2DOp *)v81 setChannelDimensionIndex:v55];
  v86 = [MPSGraphDepthwiseConvolution3DOp alloc];
  v102[0] = v99;
  v102[1] = v54;
  v87 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:2];
  outputTensors = [(MPSGraphDepthwiseConvolution3DBaseOp *)v86 initWithGraph:self inputTensors:v87 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v81 name:v98];

  v82OutputTensors = [(MPSGraphOperation *)outputTensors outputTensors];
  v83 = [v82OutputTensors objectAtIndexedSubscript:0];

LABEL_47:

  return v83;
}

- (id)depthwiseConvolution2DDataGradientWithIncomingGradientTensor:(id)tensor weightsTensor:(id)weightsTensor outputShapeTensor:(id)shapeTensor descriptor:(id)descriptor name:(id)name
{
  v33[3] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  weightsTensorCopy = weightsTensor;
  shapeTensorCopy = shapeTensor;
  descriptorCopy = descriptor;
  nameCopy = name;
  shape = [tensorCopy shape];
  if ([shape count] != 4)
  {
    shape2 = [tensorCopy shape];
    [shape2 count];
  }

  shape3 = [tensorCopy shape];
  if ([shape3 count] == 4)
  {
  }

  else
  {
    shape4 = [tensorCopy shape];
    v21 = [shape4 count];

    if (v21 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  shape5 = [weightsTensorCopy shape];
  if ([shape5 count] != 4)
  {
    shape6 = [weightsTensorCopy shape];
    [shape6 count];
  }

  shape7 = [weightsTensorCopy shape];
  if ([shape7 count] == 4)
  {
  }

  else
  {
    shape8 = [weightsTensorCopy shape];
    v26 = [shape8 count];

    if (v26 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v27 = [MPSGraphDepthwiseConvolution2DDataGradientOp alloc];
  v33[0] = tensorCopy;
  v33[1] = weightsTensorCopy;
  v33[2] = shapeTensorCopy;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:3];
  v29 = [(MPSGraphDepthwiseConvolution2DBaseOp *)v27 initWithGraph:self inputTensors:v28 controlDependencies:MEMORY[0x1E695E0F0] descriptor:descriptorCopy name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v29 outputTensors];
  v31 = [outputTensors objectAtIndexedSubscript:0];

  return v31;
}

- (MPSGraphTensor)depthwiseConvolution2DDataGradientWithIncomingGradientTensor:(MPSGraphTensor *)incomingGradient weightsTensor:(MPSGraphTensor *)weights outputShape:(MPSShape *)outputShape descriptor:(MPSGraphDepthwiseConvolution2DOpDescriptor *)descriptor name:(NSString *)name
{
  v24 = *MEMORY[0x1E69E9840];
  v12 = incomingGradient;
  v13 = weights;
  v14 = outputShape;
  v15 = descriptor;
  v16 = name;
  [(MPSShape *)v14 count];
  if ([(MPSShape *)v14 count]!= 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v17 = 0;
  v23 = xmmword_1E099B5F0;
  while (v17 < [(MPSShape *)v14 count])
  {
    v18 = [(MPSShape *)v14 objectAtIndexedSubscript:v17];
    *(&v23 + v17) = [v18 intValue];

    ++v17;
  }

  v19 = [MEMORY[0x1E695DEF0] dataWithBytes:&v23 length:16];
  v20 = [(MPSGraph *)self constantWithData:v19 shape:&unk_1F5B775E8 dataType:536870944];

  v21 = [(MPSGraph *)self depthwiseConvolution2DDataGradientWithIncomingGradientTensor:v12 weightsTensor:v13 outputShapeTensor:v20 descriptor:v15 name:v16];

  return v21;
}

- (id)depthwiseConvolution2DWeightsGradientWithIncomingGradientTensor:(id)tensor sourceTensor:(id)sourceTensor outputShapeTensor:(id)shapeTensor descriptor:(id)descriptor name:(id)name
{
  v38[3] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  sourceTensorCopy = sourceTensor;
  shapeTensorCopy = shapeTensor;
  descriptorCopy = descriptor;
  nameCopy = name;
  shape = [tensorCopy shape];
  if ([shape count] != 4)
  {
    shape2 = [tensorCopy shape];
    [shape2 count];
  }

  shape3 = [tensorCopy shape];
  if ([shape3 count] == 4)
  {
  }

  else
  {
    shape4 = [tensorCopy shape];
    v21 = [shape4 count];

    if (v21 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  shape5 = [sourceTensorCopy shape];
  if ([shape5 count] != 4)
  {
    shape6 = [sourceTensorCopy shape];
    [shape6 count];
  }

  shape7 = [sourceTensorCopy shape];
  if ([shape7 count] == 4)
  {
  }

  else
  {
    shape8 = [sourceTensorCopy shape];
    v26 = [shape8 count];

    if (v26 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  shape9 = [shapeTensorCopy shape];
  if ([shape9 count] != 1)
  {
    shape10 = [sourceTensorCopy shape];
    [shape10 count];
  }

  shape11 = [shapeTensorCopy shape];
  if ([shape11 count] == 1)
  {
  }

  else
  {
    shape12 = [sourceTensorCopy shape];
    v31 = [shape12 count];

    if (v31 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v32 = [MPSGraphDepthwiseConvolution2DWeightsGradientOp alloc];
  v38[0] = tensorCopy;
  v38[1] = sourceTensorCopy;
  v38[2] = shapeTensorCopy;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:3];
  v34 = [(MPSGraphDepthwiseConvolution2DBaseOp *)v32 initWithGraph:self inputTensors:v33 controlDependencies:MEMORY[0x1E695E0F0] descriptor:descriptorCopy name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v34 outputTensors];
  v36 = [outputTensors objectAtIndexedSubscript:0];

  return v36;
}

- (MPSGraphTensor)depthwiseConvolution2DWeightsGradientWithIncomingGradientTensor:(MPSGraphTensor *)incomingGradient sourceTensor:(MPSGraphTensor *)source outputShape:(MPSShape *)outputShape descriptor:(MPSGraphDepthwiseConvolution2DOpDescriptor *)descriptor name:(NSString *)name
{
  v24 = *MEMORY[0x1E69E9840];
  v12 = incomingGradient;
  v13 = source;
  v14 = outputShape;
  v15 = descriptor;
  v16 = name;
  [(MPSShape *)v14 count];
  if ([(MPSShape *)v14 count]!= 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v17 = 0;
  v23 = xmmword_1E099B5F0;
  while (v17 < [(MPSShape *)v14 count])
  {
    v18 = [(MPSShape *)v14 objectAtIndexedSubscript:v17];
    *(&v23 + v17) = [v18 intValue];

    ++v17;
  }

  v19 = [MEMORY[0x1E695DEF0] dataWithBytes:&v23 length:16];
  v20 = [(MPSGraph *)self constantWithData:v19 shape:&unk_1F5B77600 dataType:32];

  v21 = [(MPSGraph *)self depthwiseConvolution2DWeightsGradientWithIncomingGradientTensor:v12 sourceTensor:v13 outputShapeTensor:v20 descriptor:v15 name:v16];

  return v21;
}

- (MPSGraphTensor)depthwiseConvolution3DWithSourceTensor:(MPSGraphTensor *)source weightsTensor:(MPSGraphTensor *)weights descriptor:(MPSGraphDepthwiseConvolution3DOpDescriptor *)descriptor name:(NSString *)name
{
  v30[2] = *MEMORY[0x1E69E9840];
  v10 = source;
  v11 = weights;
  v12 = descriptor;
  v13 = name;
  shape = [(MPSGraphTensor *)v10 shape];
  if ([shape count] <= 3)
  {
    shape2 = [(MPSGraphTensor *)v10 shape];
    [shape2 count];
  }

  shape3 = [(MPSGraphTensor *)v10 shape];
  if ([shape3 count] >= 4)
  {
  }

  else
  {
    shape4 = [(MPSGraphTensor *)v10 shape];
    v18 = [shape4 count];

    if (v18 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  shape5 = [(MPSGraphTensor *)v11 shape];
  if ([shape5 count] != 4)
  {
    shape6 = [(MPSGraphTensor *)v11 shape];
    [shape6 count];
  }

  shape7 = [(MPSGraphTensor *)v11 shape];
  if ([shape7 count] == 4)
  {
  }

  else
  {
    shape8 = [(MPSGraphTensor *)v11 shape];
    v23 = [shape8 count];

    if (v23 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v24 = [MPSGraphDepthwiseConvolution3DOp alloc];
  v30[0] = v10;
  v30[1] = v11;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v26 = [(MPSGraphDepthwiseConvolution3DBaseOp *)v24 initWithGraph:self inputTensors:v25 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v12 name:v13];

  outputTensors = [(MPSGraphOperation *)v26 outputTensors];
  v28 = [outputTensors objectAtIndexedSubscript:0];

  return v28;
}

- (id)depthwiseConvolution3DDataGradientWithIncomingGradientTensor:(id)tensor weightsTensor:(id)weightsTensor outputShapeTensor:(id)shapeTensor descriptor:(id)descriptor name:(id)name
{
  v35[3] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  weightsTensorCopy = weightsTensor;
  shapeTensorCopy = shapeTensor;
  descriptorCopy = descriptor;
  nameCopy = name;
  shape = [tensorCopy shape];
  if ([shape count] <= 3)
  {
    shape2 = [tensorCopy shape];
    [shape2 count];
  }

  shape3 = [tensorCopy shape];
  if ([shape3 count] >= 4)
  {
  }

  else
  {
    shape4 = [tensorCopy shape];
    v21 = [shape4 count];

    if (v21 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  shape5 = [weightsTensorCopy shape];
  if ([shape5 count] != 4)
  {
    shape6 = [weightsTensorCopy shape];
    [shape6 count];
  }

  shape7 = [weightsTensorCopy shape];
  if ([shape7 count] == 4)
  {
  }

  else
  {
    shape8 = [weightsTensorCopy shape];
    v26 = [shape8 count];

    if (v26 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  if (shapeTensorCopy)
  {
    v35[0] = tensorCopy;
    v35[1] = weightsTensorCopy;
    v35[2] = shapeTensorCopy;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:3];
  }

  else
  {
    v34[0] = tensorCopy;
    v34[1] = weightsTensorCopy;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  }

  v28 = v27;
  v29 = [MPSGraphDepthwiseConvolution3DDataGradientOp alloc];
  v30 = [(MPSGraphDepthwiseConvolution3DBaseOp *)v29 initWithGraph:self inputTensors:v28 controlDependencies:MEMORY[0x1E695E0F0] descriptor:descriptorCopy name:nameCopy];
  outputTensors = [(MPSGraphOperation *)v30 outputTensors];
  v32 = [outputTensors objectAtIndexedSubscript:0];

  return v32;
}

- (MPSGraphTensor)depthwiseConvolution3DDataGradientWithIncomingGradientTensor:(MPSGraphTensor *)incomingGradient weightsTensor:(MPSGraphTensor *)weights outputShape:(MPSShape *)outputShape descriptor:(MPSGraphDepthwiseConvolution3DOpDescriptor *)descriptor name:(NSString *)name
{
  v34[3] = *MEMORY[0x1E69E9840];
  v29 = incomingGradient;
  v12 = weights;
  v13 = outputShape;
  v14 = descriptor;
  v15 = name;
  if (v13)
  {
    [(MPSShape *)v13 count];
    if ([(MPSShape *)v13 count]<= 3 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v32 = v34;
    v33 = 0x500000000;
    v16 = [(MPSShape *)v13 count];
    v17 = 0;
    if (v16)
    {
      if (v16 >= v33)
      {
        if (v16 > HIDWORD(v33))
        {
          v18 = v16;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v34, v16, 4);
          v16 = v18;
          v17 = v33;
        }

        if (v16 != v17)
        {
          v19 = v16;
          bzero(v32 + 4 * v17, 4 * (v16 - v17));
          LODWORD(v16) = v19;
        }
      }

      LODWORD(v33) = v16;
    }

    for (i = 0; i < [(MPSShape *)v13 count]; ++i)
    {
      v21 = [(MPSShape *)v13 objectAtIndexedSubscript:i];
      intValue = [v21 intValue];
      *(v32 + i) = intValue;
    }

    v23 = [MEMORY[0x1E695DEF0] dataWithBytes:v32 length:4 * v33];
    v24 = [MEMORY[0x1E696AD98] numberWithInt:v33];
    v31 = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
    v26 = [(MPSGraph *)self constantWithData:v23 shape:v25 dataType:536870944];

    if (v32 != v34)
    {
      free(v32);
    }
  }

  else
  {
    v26 = 0;
  }

  v27 = [(MPSGraph *)self depthwiseConvolution3DDataGradientWithIncomingGradientTensor:v29 weightsTensor:v12 outputShapeTensor:v26 descriptor:v14 name:v15, v29];

  return v27;
}

- (id)depthwiseConvolution3DWeightsGradientWithIncomingGradientTensor:(id)tensor sourceTensor:(id)sourceTensor outputShapeTensor:(id)shapeTensor descriptor:(id)descriptor name:(id)name
{
  v38[3] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  sourceTensorCopy = sourceTensor;
  shapeTensorCopy = shapeTensor;
  descriptorCopy = descriptor;
  nameCopy = name;
  shape = [tensorCopy shape];
  if ([shape count] <= 3)
  {
    shape2 = [tensorCopy shape];
    [shape2 count];
  }

  shape3 = [tensorCopy shape];
  if ([shape3 count] >= 4)
  {
  }

  else
  {
    shape4 = [tensorCopy shape];
    v21 = [shape4 count];

    if (v21 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  shape5 = [sourceTensorCopy shape];
  if ([shape5 count] <= 3)
  {
    shape6 = [sourceTensorCopy shape];
    [shape6 count];
  }

  shape7 = [sourceTensorCopy shape];
  if ([shape7 count] >= 4)
  {
  }

  else
  {
    shape8 = [sourceTensorCopy shape];
    v26 = [shape8 count];

    if (v26 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  shape9 = [shapeTensorCopy shape];
  if ([shape9 count] != 1)
  {
    shape10 = [sourceTensorCopy shape];
    [shape10 count];
  }

  shape11 = [shapeTensorCopy shape];
  if ([shape11 count] == 1)
  {
  }

  else
  {
    shape12 = [sourceTensorCopy shape];
    v31 = [shape12 count];

    if (v31 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v32 = [MPSGraphDepthwiseConvolution3DWeightsGradientOp alloc];
  v38[0] = tensorCopy;
  v38[1] = sourceTensorCopy;
  v38[2] = shapeTensorCopy;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:3];
  v34 = [(MPSGraphDepthwiseConvolution3DBaseOp *)v32 initWithGraph:self inputTensors:v33 controlDependencies:MEMORY[0x1E695E0F0] descriptor:descriptorCopy name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v34 outputTensors];
  v36 = [outputTensors objectAtIndexedSubscript:0];

  return v36;
}

- (MPSGraphTensor)depthwiseConvolution3DWeightsGradientWithIncomingGradientTensor:(MPSGraphTensor *)incomingGradient sourceTensor:(MPSGraphTensor *)source outputShape:(MPSShape *)outputShape descriptor:(MPSGraphDepthwiseConvolution3DOpDescriptor *)descriptor name:(NSString *)name
{
  v34[3] = *MEMORY[0x1E69E9840];
  v29 = incomingGradient;
  v12 = source;
  v13 = outputShape;
  v14 = descriptor;
  v15 = name;
  [(MPSShape *)v13 count];
  if ([(MPSShape *)v13 count]<= 3 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v32 = v34;
  v33 = 0x500000000;
  v16 = [(MPSShape *)v13 count];
  v17 = 0;
  if (v16)
  {
    if (v16 >= v33)
    {
      if (v16 > HIDWORD(v33))
      {
        v18 = v16;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v34, v16, 4);
        v16 = v18;
        v17 = v33;
      }

      if (v16 != v17)
      {
        v19 = v16;
        bzero(v32 + 4 * v17, 4 * (v16 - v17));
        LODWORD(v16) = v19;
      }
    }

    LODWORD(v33) = v16;
  }

  for (i = 0; i < [(MPSShape *)v13 count]; ++i)
  {
    v21 = [(MPSShape *)v13 objectAtIndexedSubscript:i];
    intValue = [v21 intValue];
    *(v32 + i) = intValue;
  }

  v23 = [MEMORY[0x1E695DEF0] dataWithBytes:v32 length:4 * v33];
  v24 = [MEMORY[0x1E696AD98] numberWithInt:v33];
  v31 = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  v26 = [(MPSGraph *)self constantWithData:v23 shape:v25 dataType:536870944];

  v27 = [(MPSGraph *)self depthwiseConvolution3DWeightsGradientWithIncomingGradientTensor:v30 sourceTensor:v12 outputShapeTensor:v26 descriptor:v14 name:v15];

  if (v32 != v34)
  {
    free(v32);
  }

  return v27;
}

- (id)fixTypeOfReductionInput:(id)input
{
  inputCopy = input;
  if ([inputCopy dataType] == -2147483640)
  {
    v5 = [(MPSGraph *)self castTensor:inputCopy toType:536870944 name:0];

    inputCopy = v5;
  }

  return inputCopy;
}

- (MPSGraphTensor)reductionSumWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis name:(NSString *)name
{
  v14[1] = *MEMORY[0x1E69E9840];
  v8 = tensor;
  v9 = name;
  v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLong:axis];
  v14[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v12 = [(MPSGraph *)self reductionSumWithTensor:v8 axes:v11 name:v9];

  return v12;
}

- (MPSGraphTensor)reductionSumWithTensor:(MPSGraphTensor *)tensor axes:(NSArray *)axes name:(NSString *)name
{
  v23[1] = *MEMORY[0x1E69E9840];
  v8 = tensor;
  v9 = axes;
  v10 = name;
  if (!v9)
  {
    v13 = 0;
    goto LABEL_8;
  }

  MPSShapeToVector<int>(v9, &__p);
  v11 = __p;
  v12 = v22;
  v13 = v22 - __p;
  if (v22 != __p)
  {
    v14 = [MEMORY[0x1E695DEF0] dataWithBytes:__p length:v22 - __p];
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v13 >> 2];
    v23[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    v13 = [(MPSGraph *)self constantWithData:v14 shape:v16 dataType:536870944];

    v17 = __p;
    if (!__p)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v20 = v8;
  v17 = v11;
  if (v11)
  {
LABEL_4:
    v22 = v17;
    operator delete(v17);
  }

LABEL_5:
  v18 = v8;
  if (v12 != v11)
  {
LABEL_8:
    v18 = [(MPSGraph *)self reductionSumWithTensor:v8 axesTensor:v13 name:v10];
  }

  return v18;
}

- (id)reductionSumWithTensor:(id)tensor axesTensor:(id)axesTensor name:(id)name
{
  v20[1] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  axesTensorCopy = axesTensor;
  nameCopy = name;
  v11 = [(MPSGraph *)self fixTypeOfReductionInput:tensorCopy];

  v20[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  if (axesTensorCopy)
  {
    v19[0] = v11;
    v19[1] = axesTensorCopy;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];

    v12 = v13;
  }

  v14 = [MPSGraphReductionSumOp alloc];
  v15 = [(MPSGraphReductionBaseOp *)v14 initWithGraph:self inputTensors:v12 controlDependencies:MEMORY[0x1E695E0F0] axes:0 name:nameCopy];
  outputTensors = [(MPSGraphOperation *)v15 outputTensors];
  v17 = [outputTensors objectAtIndexedSubscript:0];

  return v17;
}

- (MPSGraphTensor)reductionMaximumWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis name:(NSString *)name
{
  v14[1] = *MEMORY[0x1E69E9840];
  v8 = tensor;
  v9 = name;
  v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLong:axis];
  v14[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v12 = [(MPSGraph *)self reductionMaximumWithTensor:v8 axes:v11 name:v9];

  return v12;
}

- (MPSGraphTensor)reductionMaximumWithTensor:(MPSGraphTensor *)tensor axes:(NSArray *)axes name:(NSString *)name
{
  v27[1] = *MEMORY[0x1E69E9840];
  v8 = tensor;
  v9 = axes;
  v10 = name;
  v27[0] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  if (v9)
  {
    MPSShapeToVector<int>(v9, &__p);
    v12 = v24 - __p;
    v13 = [MEMORY[0x1E695DEF0] dataWithBytes:? length:?];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12 >> 2];
    v26 = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    v16 = [(MPSGraph *)self constantWithData:v13 shape:v15 dataType:536870944];

    v25[0] = v8;
    v25[1] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];

    if (__p)
    {
      v24 = __p;
      operator delete(__p);
    }

    v11 = v17;
  }

  v18 = [MPSGraphReductionMaxOp alloc];
  v19 = [(MPSGraphReductionBaseOp *)v18 initWithGraph:self inputTensors:v11 controlDependencies:MEMORY[0x1E695E0F0] axes:v9 name:v10];
  outputTensors = [(MPSGraphOperation *)v19 outputTensors];
  v21 = [outputTensors objectAtIndexedSubscript:0];

  return v21;
}

- (MPSGraphTensor)reductionMinimumWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis name:(NSString *)name
{
  v14[1] = *MEMORY[0x1E69E9840];
  v8 = tensor;
  v9 = name;
  v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLong:axis];
  v14[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v12 = [(MPSGraph *)self reductionMinimumWithTensor:v8 axes:v11 name:v9];

  return v12;
}

- (MPSGraphTensor)reductionMinimumWithTensor:(MPSGraphTensor *)tensor axes:(NSArray *)axes name:(NSString *)name
{
  v27[1] = *MEMORY[0x1E69E9840];
  v8 = tensor;
  v9 = axes;
  v10 = name;
  v27[0] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  if (v9)
  {
    MPSShapeToVector<int>(v9, &__p);
    v12 = v24 - __p;
    v13 = [MEMORY[0x1E695DEF0] dataWithBytes:? length:?];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12 >> 2];
    v26 = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    v16 = [(MPSGraph *)self constantWithData:v13 shape:v15 dataType:536870944];

    v25[0] = v8;
    v25[1] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];

    if (__p)
    {
      v24 = __p;
      operator delete(__p);
    }

    v11 = v17;
  }

  v18 = [MPSGraphReductionMinOp alloc];
  v19 = [(MPSGraphReductionBaseOp *)v18 initWithGraph:self inputTensors:v11 controlDependencies:MEMORY[0x1E695E0F0] axes:v9 name:v10];
  outputTensors = [(MPSGraphOperation *)v19 outputTensors];
  v21 = [outputTensors objectAtIndexedSubscript:0];

  return v21;
}

- (MPSGraphTensor)reductionMaximumPropagateNaNWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis name:(NSString *)name
{
  v14[1] = *MEMORY[0x1E69E9840];
  v8 = tensor;
  v9 = name;
  v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLong:axis];
  v14[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v12 = [(MPSGraph *)self reductionMaximumPropagateNaNWithTensor:v8 axes:v11 name:v9];

  return v12;
}

- (MPSGraphTensor)reductionMaximumPropagateNaNWithTensor:(MPSGraphTensor *)tensor axes:(NSArray *)axes name:(NSString *)name
{
  v27[1] = *MEMORY[0x1E69E9840];
  v8 = tensor;
  v9 = axes;
  v10 = name;
  v27[0] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  if (v9)
  {
    MPSShapeToVector<int>(v9, &__p);
    v12 = v24 - __p;
    v13 = [MEMORY[0x1E695DEF0] dataWithBytes:? length:?];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12 >> 2];
    v26 = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    v16 = [(MPSGraph *)self constantWithData:v13 shape:v15 dataType:536870944];

    v25[0] = v8;
    v25[1] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];

    if (__p)
    {
      v24 = __p;
      operator delete(__p);
    }

    v11 = v17;
  }

  v18 = [MPSGraphReductionMaxPropagateNaNOp alloc];
  v19 = [(MPSGraphReductionBaseOp *)v18 initWithGraph:self inputTensors:v11 controlDependencies:MEMORY[0x1E695E0F0] axes:v9 name:v10];
  outputTensors = [(MPSGraphOperation *)v19 outputTensors];
  v21 = [outputTensors objectAtIndexedSubscript:0];

  return v21;
}

- (MPSGraphTensor)reductionMinimumPropagateNaNWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis name:(NSString *)name
{
  v14[1] = *MEMORY[0x1E69E9840];
  v8 = tensor;
  v9 = name;
  v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLong:axis];
  v14[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v12 = [(MPSGraph *)self reductionMinimumPropagateNaNWithTensor:v8 axes:v11 name:v9];

  return v12;
}

- (MPSGraphTensor)reductionMinimumPropagateNaNWithTensor:(MPSGraphTensor *)tensor axes:(NSArray *)axes name:(NSString *)name
{
  v27[1] = *MEMORY[0x1E69E9840];
  v8 = tensor;
  v9 = axes;
  v10 = name;
  v27[0] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  if (v9)
  {
    MPSShapeToVector<int>(v9, &__p);
    v12 = v24 - __p;
    v13 = [MEMORY[0x1E695DEF0] dataWithBytes:? length:?];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12 >> 2];
    v26 = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    v16 = [(MPSGraph *)self constantWithData:v13 shape:v15 dataType:536870944];

    v25[0] = v8;
    v25[1] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];

    if (__p)
    {
      v24 = __p;
      operator delete(__p);
    }

    v11 = v17;
  }

  v18 = [MPSGraphReductionMinPropagateNaNOp alloc];
  v19 = [(MPSGraphReductionBaseOp *)v18 initWithGraph:self inputTensors:v11 controlDependencies:MEMORY[0x1E695E0F0] axes:v9 name:v10];
  outputTensors = [(MPSGraphOperation *)v19 outputTensors];
  v21 = [outputTensors objectAtIndexedSubscript:0];

  return v21;
}

- (MPSGraphTensor)reductionProductWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis name:(NSString *)name
{
  v14[1] = *MEMORY[0x1E69E9840];
  v8 = tensor;
  v9 = name;
  v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLong:axis];
  v14[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v12 = [(MPSGraph *)self reductionProductWithTensor:v8 axes:v11 name:v9];

  return v12;
}

- (MPSGraphTensor)reductionProductWithTensor:(MPSGraphTensor *)tensor axes:(NSArray *)axes name:(NSString *)name
{
  v28[1] = *MEMORY[0x1E69E9840];
  v8 = tensor;
  v9 = axes;
  v10 = name;
  v11 = [(MPSGraph *)self fixTypeOfReductionInput:v8];

  v28[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  if (v9)
  {
    MPSShapeToVector<int>(v9, &__p);
    v13 = v25 - __p;
    v14 = [MEMORY[0x1E695DEF0] dataWithBytes:? length:?];
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v13 >> 2];
    v27 = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
    v17 = [(MPSGraph *)self constantWithData:v14 shape:v16 dataType:536870944];

    v26[0] = v11;
    v26[1] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];

    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }

    v12 = v18;
  }

  v19 = [MPSGraphReductionProdOp alloc];
  v20 = [(MPSGraphReductionBaseOp *)v19 initWithGraph:self inputTensors:v12 controlDependencies:MEMORY[0x1E695E0F0] axes:v9 name:v10];
  outputTensors = [(MPSGraphOperation *)v20 outputTensors];
  v22 = [outputTensors objectAtIndexedSubscript:0];

  return v22;
}

- (MPSGraphTensor)reductionArgMinimumWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis name:(NSString *)name
{
  v19[1] = *MEMORY[0x1E69E9840];
  v8 = tensor;
  v9 = name;
  v19[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v11 = [(MPSGraph *)self constantWithScalar:536870944 dataType:axis];
  v18[0] = v8;
  v18[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];

  v13 = [MPSGraphReductionArgMinOp alloc];
  v14 = [(MPSGraphReductionArgBaseOp *)v13 initWithGraph:self inputTensors:v12 controlDependencies:MEMORY[0x1E695E0F0] axis:axis name:v9];
  outputTensors = [(MPSGraphOperation *)v14 outputTensors];
  v16 = [outputTensors objectAtIndexedSubscript:0];

  return v16;
}

- (MPSGraphTensor)reductionArgMaximumWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis name:(NSString *)name
{
  v19[1] = *MEMORY[0x1E69E9840];
  v8 = tensor;
  v9 = name;
  v19[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v11 = [(MPSGraph *)self constantWithScalar:536870944 dataType:axis];
  v18[0] = v8;
  v18[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];

  v13 = [MPSGraphReductionArgMaxOp alloc];
  v14 = [(MPSGraphReductionArgBaseOp *)v13 initWithGraph:self inputTensors:v12 controlDependencies:MEMORY[0x1E695E0F0] axis:axis name:v9];
  outputTensors = [(MPSGraphOperation *)v14 outputTensors];
  v16 = [outputTensors objectAtIndexedSubscript:0];

  return v16;
}

- (MPSGraphTensor)reductionAndWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis name:(NSString *)name
{
  v14[1] = *MEMORY[0x1E69E9840];
  v8 = tensor;
  v9 = name;
  v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLong:axis];
  v14[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v12 = [(MPSGraph *)self reductionAndWithTensor:v8 axes:v11 name:v9];

  return v12;
}

- (MPSGraphTensor)reductionAndWithTensor:(MPSGraphTensor *)tensor axes:(NSArray *)axes name:(NSString *)name
{
  v28[1] = *MEMORY[0x1E69E9840];
  v8 = tensor;
  v9 = axes;
  v10 = name;
  v11 = [(MPSGraph *)self fixTypeOfReductionInput:v8];

  v28[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  if (v9)
  {
    MPSShapeToVector<int>(v9, &__p);
    v13 = v25 - __p;
    v14 = [MEMORY[0x1E695DEF0] dataWithBytes:? length:?];
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v13 >> 2];
    v27 = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
    v17 = [(MPSGraph *)self constantWithData:v14 shape:v16 dataType:536870944];

    v26[0] = v11;
    v26[1] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];

    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }

    v12 = v18;
  }

  v19 = [MPSGraphReductionAndOp alloc];
  v20 = [(MPSGraphReductionBaseOp *)v19 initWithGraph:self inputTensors:v12 controlDependencies:MEMORY[0x1E695E0F0] axes:v9 name:v10];
  outputTensors = [(MPSGraphOperation *)v20 outputTensors];
  v22 = [outputTensors objectAtIndexedSubscript:0];

  return v22;
}

- (MPSGraphTensor)reductionOrWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis name:(NSString *)name
{
  v14[1] = *MEMORY[0x1E69E9840];
  v8 = tensor;
  v9 = name;
  v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLong:axis];
  v14[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v12 = [(MPSGraph *)self reductionOrWithTensor:v8 axes:v11 name:v9];

  return v12;
}

- (MPSGraphTensor)reductionOrWithTensor:(MPSGraphTensor *)tensor axes:(NSArray *)axes name:(NSString *)name
{
  v27[1] = *MEMORY[0x1E69E9840];
  v8 = tensor;
  v9 = axes;
  v10 = name;
  v27[0] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  if (v9)
  {
    MPSShapeToVector<int>(v9, &__p);
    v12 = v24 - __p;
    v13 = [MEMORY[0x1E695DEF0] dataWithBytes:? length:?];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12 >> 2];
    v26 = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    v16 = [(MPSGraph *)self constantWithData:v13 shape:v15 dataType:536870944];

    v25[0] = v8;
    v25[1] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];

    if (__p)
    {
      v24 = __p;
      operator delete(__p);
    }

    v11 = v17;
  }

  v18 = [MPSGraphReductionOrOp alloc];
  v19 = [(MPSGraphReductionBaseOp *)v18 initWithGraph:self inputTensors:v11 controlDependencies:MEMORY[0x1E695E0F0] axes:v9 name:v10];
  outputTensors = [(MPSGraphOperation *)v19 outputTensors];
  v21 = [outputTensors objectAtIndexedSubscript:0];

  return v21;
}

- (MPSGraphTensor)meanOfTensor:(MPSGraphTensor *)tensor axes:(NSArray *)axes name:(NSString *)name
{
  v27[1] = *MEMORY[0x1E69E9840];
  v8 = tensor;
  v9 = axes;
  v10 = name;
  v27[0] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  if (v9)
  {
    MPSShapeToVector<int>(v9, &__p);
    v12 = v24 - __p;
    v13 = [MEMORY[0x1E695DEF0] dataWithBytes:? length:?];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12 >> 2];
    v26 = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    v16 = [(MPSGraph *)self constantWithData:v13 shape:v15 dataType:536870944];

    v25[0] = v8;
    v25[1] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];

    if (__p)
    {
      v24 = __p;
      operator delete(__p);
    }

    v11 = v17;
  }

  v18 = [MPSGraphReductionMeanOp alloc];
  v19 = [(MPSGraphReductionBaseOp *)v18 initWithGraph:self inputTensors:v11 controlDependencies:MEMORY[0x1E695E0F0] axes:v9 name:v10];
  outputTensors = [(MPSGraphOperation *)v19 outputTensors];
  v21 = [outputTensors objectAtIndexedSubscript:0];

  return v21;
}

- (MPSGraph)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = MPSGraph;
  if ([(MPSGraph *)&v3 init])
  {
    operator new();
  }

  return 0;
}

void __16__MPSGraph_init__block_invoke(mlir *a1)
{
  mlir::registerAsmPrinterCLOptions(a1);

  ParseEnvironmentOptions("main", "MPSGRAPH_MLIR_CL", "");
}

- (id)operationWithName:(id)name
{
  nameCopy = name;
  for (i = 0; ; ++i)
  {
    if (i >= [(NSMutableArray *)self->_operations count])
    {
      v9 = 0;
      goto LABEL_7;
    }

    v6 = [(NSMutableArray *)self->_operations objectAtIndexedSubscript:i];
    name = [v6 name];
    v8 = [name isEqualToString:nameCopy];

    if (v8)
    {
      break;
    }
  }

  v9 = [(NSMutableArray *)self->_operations objectAtIndexedSubscript:i];
LABEL_7:

  return v9;
}

- (void)dealloc
{
  builder = self->_builder;
  if (builder)
  {
    MEMORY[0x1E12E5B90](builder, 0x20C40DC1BFBCFLL);
  }

  symbolTable = self->_symbolTable;
  if (symbolTable)
  {
    v5 = symbolTable[5];
    if (v5)
    {
      do
      {
        v9 = *v5;
        if (*(v5 + 47) < 0)
        {
          operator delete(v5[3]);
        }

        operator delete(v5);
        v5 = v9;
      }

      while (v9);
    }

    v6 = symbolTable[3];
    symbolTable[3] = 0;
    if (v6)
    {
      operator delete(v6);
    }

    if (*(symbolTable + 3))
    {
      v7 = *(symbolTable + 2);
      if (v7)
      {
        v8 = 0;
        do
        {
          v10 = *(*symbolTable + v8);
          if (v10 != -8 && v10 != 0)
          {
            v12 = *v10;
            if (*(v10 + 31) < 0)
            {
              operator delete(*(v10 + 1));
            }

            llvm::deallocate_buffer(v10, (v12 + 33));
          }

          v8 += 8;
        }

        while (8 * v7 != v8);
      }
    }

    free(*symbolTable);
    MEMORY[0x1E12E5B90](symbolTable, 0x10A0C4083D84BACLL);
  }

  v13.receiver = self;
  v13.super_class = MPSGraph;
  [(MPSGraph *)&v13 dealloc];
}

- (id)debugDescription
{
  v20[0] = 0;
  v20[1] = 0;
  v21 = 0;
  v13 = 0;
  v17 = 0;
  v18 = 1;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v12 = &unk_1F5B3FB30;
  v19 = v20;
  llvm::raw_ostream::SetBufferAndMode(&v12, 0, 0, 0);
  mlir::OpPrintingFlags::OpPrintingFlags(v11);
  mlir::Operation::print(self->_module.op.state, &v12, v11);
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = MPSGraph;
  v4 = [(MPSGraph *)&v10 debugDescription];
  v5 = v4;
  v6 = v19;
  if (*(v19 + 23) < 0)
  {
    v6 = *v19;
  }

  v7 = [v3 stringWithFormat:@"%@ : \n\nIR: %s \n\n", v4, v6];

  llvm::raw_ostream::~raw_ostream(&v12);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
    v8 = v7;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (id)compileWithDevice:(id)device feeds:(id)feeds targetTensors:(id)tensors targetOperations:(id)operations
{
  v6 = [(MPSGraph *)self compileWithDevice:device feeds:feeds targetTensors:tensors targetOperations:operations compilationDescriptor:0];

  return v6;
}

- (MPSGraphExecutable)compileWithDevice:(MPSGraphDevice *)device feeds:(MPSGraphTensorShapedTypeDictionary *)feeds targetTensors:(NSArray *)targetTensors targetOperations:(NSArray *)targetOperations compilationDescriptor:(MPSGraphCompilationDescriptor *)compilationDescriptor
{
  v26 = device;
  v12 = feeds;
  v13 = targetTensors;
  v14 = targetOperations;
  v15 = compilationDescriptor;
  v25 = 104;
  pthread_mutex_lock(&self->_graphMutex);
  if (!v15)
  {
    v15 = objc_opt_new();
    [(MPSGraphCompilationDescriptor *)v15 setCompilerOptions:self->_compilerOptions];
  }

  v16 = 0;
  v17 = 0;
  while (v16 < [(NSMutableArray *)self->_executableCache count])
  {
    v19 = [(NSMutableArray *)self->_executableCache objectAtIndexedSubscript:v16];
    v20 = [v19 isExecutableForFeeds:v12 targetTensors:v13 targetOperations:v14 compilationDescriptor:v15];

    if (v20)
    {
      v18 = [(NSMutableArray *)self->_executableCache objectAtIndexedSubscript:v16];

      v17 = v18;
    }

    ++v16;
  }

  v21 = objc_opt_new();
  [v21 setCompilerOptions:{-[MPSGraphCompilationDescriptor compilerOptions](v15, "compilerOptions")}];
  [v21 setCompilationDescriptor:v15];
  if (!v17)
  {
    v17 = [[MPSGraphExecutable alloc] initWithGraph:self device:v26 feeds:v12 targetTensors:v13 targetOperations:v14 executableDescriptor:v21];
    v22 = [(NSMutableArray *)self->_executableCache count];
    executableCache = self->_executableCache;
    if (v22 >= 0xF)
    {
      [(NSMutableArray *)executableCache removeObjectAtIndex:14];
      executableCache = self->_executableCache;
    }

    [(NSMutableArray *)executableCache insertObject:v17 atIndex:0];
  }

  pthread_mutex_unlock((self + v25));

  return v17;
}

- (MPSGraphTensorDataDictionary)runWithFeeds:(MPSGraphTensorDataDictionary *)feeds targetTensors:(NSArray *)targetTensors targetOperations:(NSArray *)targetOperations
{
  v8 = feeds;
  v9 = targetTensors;
  v10 = targetOperations;
  v11 = objc_opt_new();
  [v11 setWaitUntilCompleted:1];
  v12 = [(MPSGraph *)self runAsyncWithFeeds:v8 targetTensors:v9 targetOperations:v10 executionDescriptor:v11];

  return v12;
}

- (MPSGraphTensorDataDictionary)runWithMTLCommandQueue:(id)commandQueue feeds:(MPSGraphTensorDataDictionary *)feeds targetTensors:(NSArray *)targetTensors targetOperations:(NSArray *)targetOperations
{
  v10 = commandQueue;
  v11 = feeds;
  v12 = targetTensors;
  v13 = targetOperations;
  v14 = objc_opt_new();
  [v14 setWaitUntilCompleted:1];
  v15 = [(MPSGraph *)self runAsyncWithMTLCommandQueue:v10 feeds:v11 targetTensors:v12 targetOperations:v13 executionDescriptor:v14];

  return v15;
}

- (void)runWithMTLCommandQueue:(id)commandQueue feeds:(MPSGraphTensorDataDictionary *)feeds targetOperations:(NSArray *)targetOperations resultsDictionary:(MPSGraphTensorDataDictionary *)resultsDictionary
{
  v14 = commandQueue;
  v10 = feeds;
  v11 = targetOperations;
  v12 = resultsDictionary;
  v13 = objc_opt_new();
  [v13 setWaitUntilCompleted:1];
  [(MPSGraph *)self runAsyncWithMTLCommandQueue:v14 feeds:v10 targetOperations:v11 resultsDictionary:v12 executionDescriptor:v13];
}

- (MPSGraphTensorDataDictionary)runAsyncWithFeeds:(MPSGraphTensorDataDictionary *)feeds targetTensors:(NSArray *)targetTensors targetOperations:(NSArray *)targetOperations executionDescriptor:(MPSGraphExecutionDescriptor *)executionDescriptor
{
  v10 = feeds;
  v11 = targetTensors;
  v12 = targetOperations;
  v13 = executionDescriptor;
  if (qword_1ECE753E8 == -1)
  {
    if (_MergedGlobals_9_0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    dispatch_once(&qword_1ECE753E8, &__block_literal_global_487);
    if (_MergedGlobals_9_0)
    {
      goto LABEL_4;
    }
  }

  v14 = MPSGetPreferredDevice(0);
  if (v14)
  {
LABEL_5:
    v15 = [MPSGraphDevice deviceWithMTLDevice:v14];
    metalDevice = [v15 metalDevice];
    newCommandQueue = [metalDevice newCommandQueue];

    if (!v13)
    {
      v13 = objc_opt_new();
    }

    v18 = [(MPSGraph *)self runAsyncWithMTLCommandQueue:newCommandQueue feeds:v10 targetTensors:v11 targetOperations:v12 executionDescriptor:v13];

    goto LABEL_11;
  }

LABEL_4:
  v14 = MTLCreateSystemDefaultDevice();
  if (v14)
  {
    goto LABEL_5;
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v18 = 0;
LABEL_11:

  return v18;
}

char *__81__MPSGraph_runAsyncWithFeeds_targetTensors_targetOperations_executionDescriptor___block_invoke()
{
  result = getenv("OATS_CONFIG_ID");
  if (result)
  {
    _MergedGlobals_9_0 = 1;
  }

  return result;
}

- (MPSGraphTensorDataDictionary)runAsyncWithMTLCommandQueue:(id)commandQueue feeds:(MPSGraphTensorDataDictionary *)feeds targetTensors:(NSArray *)targetTensors targetOperations:(NSArray *)targetOperations executionDescriptor:(MPSGraphExecutionDescriptor *)executionDescriptor
{
  v12 = commandQueue;
  v13 = feeds;
  v14 = targetTensors;
  v15 = targetOperations;
  v16 = executionDescriptor;
  if (!v16)
  {
    v16 = objc_opt_new();
  }

  v17 = [(MPSGraph *)self runInternalWithMTLCommandQueue:v12 feeds:v13 targetTensors:v14 targetOperations:v15 resultsDictionary:0 executionDescriptor:v16];

  return v17;
}

- (void)runAsyncWithMTLCommandQueue:(id)commandQueue feeds:(MPSGraphTensorDataDictionary *)feeds targetOperations:(NSArray *)targetOperations resultsDictionary:(MPSGraphTensorDataDictionary *)resultsDictionary executionDescriptor:(MPSGraphExecutionDescriptor *)executionDescriptor
{
  v18 = commandQueue;
  v12 = feeds;
  v13 = targetOperations;
  v14 = resultsDictionary;
  v15 = executionDescriptor;
  if (!v15)
  {
    v15 = objc_opt_new();
  }

  allKeys = [(MPSGraphTensorDataDictionary *)v14 allKeys];
  v17 = [(MPSGraph *)self runInternalWithMTLCommandQueue:v18 feeds:v12 targetTensors:allKeys targetOperations:v13 resultsDictionary:v14 executionDescriptor:v15];
}

- (MPSGraphTensorDataDictionary)encodeToCommandBuffer:(MPSCommandBuffer *)commandBuffer feeds:(MPSGraphTensorDataDictionary *)feeds targetTensors:(NSArray *)targetTensors targetOperations:(NSArray *)targetOperations executionDescriptor:(MPSGraphExecutionDescriptor *)executionDescriptor
{
  v12 = commandBuffer;
  v13 = feeds;
  v14 = targetTensors;
  v15 = targetOperations;
  v16 = executionDescriptor;
  if (!v16)
  {
    v16 = objc_opt_new();
  }

  LOBYTE(v19) = 0;
  v17 = [(MPSGraph *)self runInternalWithMPSCommandBuffer:v12 feeds:v13 targetTensors:v14 targetOperations:v15 resultsDictionary:0 executionDescriptor:v16 mpsGraphOwnedCommandBuffer:v19];

  return v17;
}

- (void)encodeToCommandBuffer:(MPSCommandBuffer *)commandBuffer feeds:(MPSGraphTensorDataDictionary *)feeds targetOperations:(NSArray *)targetOperations resultsDictionary:(MPSGraphTensorDataDictionary *)resultsDictionary executionDescriptor:(MPSGraphExecutionDescriptor *)executionDescriptor
{
  v19 = commandBuffer;
  v12 = feeds;
  v13 = targetOperations;
  v14 = resultsDictionary;
  v15 = executionDescriptor;
  if (!v15)
  {
    v15 = objc_opt_new();
  }

  allKeys = [(MPSGraphTensorDataDictionary *)v14 allKeys];
  LOBYTE(v18) = 0;
  v17 = [(MPSGraph *)self runInternalWithMPSCommandBuffer:v19 feeds:v12 targetTensors:allKeys targetOperations:v13 resultsDictionary:v14 executionDescriptor:v15 mpsGraphOwnedCommandBuffer:v18];
}

- (id)runInternalWithMTLCommandQueue:(id)queue feeds:(id)feeds targetTensors:(id)tensors targetOperations:(id)operations resultsDictionary:(id)dictionary executionDescriptor:(id)descriptor
{
  feedsCopy = feeds;
  tensorsCopy = tensors;
  operationsCopy = operations;
  dictionaryCopy = dictionary;
  descriptorCopy = descriptor;
  v19 = [MEMORY[0x1E6974450] commandBufferFromCommandQueue:queue];
  LOBYTE(v22) = 1;
  v20 = [(MPSGraph *)self runInternalWithMPSCommandBuffer:v19 feeds:feedsCopy targetTensors:tensorsCopy targetOperations:operationsCopy resultsDictionary:dictionaryCopy executionDescriptor:descriptorCopy mpsGraphOwnedCommandBuffer:v22];

  return v20;
}

- (id)getExecutableForDevice:(id)device feeds:(id)feeds targetTensors:(id)tensors targetOperations:(id)operations resultsDictionary:(id)dictionary executionDescriptor:(id)descriptor
{
  v64 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  feedsCopy = feeds;
  tensorsCopy = tensors;
  operationsCopy = operations;
  dictionaryCopy = dictionary;
  descriptorCopy = descriptor;
  v45 = dictionaryCopy;
  v46 = feedsCopy;
  [feedsCopy enumerateKeysAndObjectsUsingBlock:&__block_literal_global_496];
  selfCopy = self;
  [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(dictionaryCopy, "count")}];
  v61[0] = 0;
  v61[1] = 0;
  v50 = v60 = v61;
  if (dictionaryCopy)
  {
    v58 = 0uLL;
    v59 = 0uLL;
    v56 = 0uLL;
    v57 = 0uLL;
    obj = dictionaryCopy;
    v16 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
    if (v16)
    {
      v17 = *v57;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v57 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v56 + 1) + 8 * i);
          index = [v19 index];
          v21 = v61[0];
          if (!v61[0])
          {
LABEL_13:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v22 = v21;
              v23 = v21[4];
              if (index >= v23)
              {
                break;
              }

              v21 = *v22;
              if (!*v22)
              {
                goto LABEL_13;
              }
            }

            if (v23 >= index)
            {
              break;
            }

            v21 = v22[1];
            if (!v21)
            {
              goto LABEL_13;
            }
          }

          objc_storeStrong(v22 + 5, v19);
        }

        v16 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
      }

      while (v16);
    }
  }

  else
  {
    v54 = 0uLL;
    v55 = 0uLL;
    v52 = 0uLL;
    v53 = 0uLL;
    obj = tensorsCopy;
    v24 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
    if (v24)
    {
      v25 = *v53;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v53 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v52 + 1) + 8 * j);
          index2 = [v27 index];
          v29 = v61[0];
          if (!v61[0])
          {
LABEL_28:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v30 = v29;
              v31 = v29[4];
              if (index2 >= v31)
              {
                break;
              }

              v29 = *v30;
              if (!*v30)
              {
                goto LABEL_28;
              }
            }

            if (v31 >= index2)
            {
              break;
            }

            v29 = v30[1];
            if (!v29)
            {
              goto LABEL_28;
            }
          }

          objc_storeStrong(v30 + 5, v27);
        }

        v24 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
      }

      while (v24);
    }
  }

  v32 = v60;
  if (v60 != v61)
  {
    v33 = 0;
    do
    {
      [v50 setObject:v32[5] atIndexedSubscript:v33];
      v34 = v32[1];
      if (v34)
      {
        do
        {
          v35 = v34;
          v34 = *v34;
        }

        while (v34);
      }

      else
      {
        do
        {
          v35 = v32[2];
          v36 = *v35 == v32;
          v32 = v35;
        }

        while (!v36);
      }

      ++v33;
      v32 = v35;
    }

    while (v35 != v61);
  }

  v37 = deviceCopy;
  v38 = getMPSShapedDictionaryFromDataDictionary(v46);
  compilationDescriptor = [descriptorCopy compilationDescriptor];
  if (v50)
  {
    v40 = v50;
  }

  else
  {
    v40 = tensorsCopy;
  }

  v41 = [(MPSGraph *)selfCopy compileWithDevice:v37 feeds:v38 targetTensors:v40 targetOperations:operationsCopy compilationDescriptor:compilationDescriptor];

  std::__tree<std::__value_type<unsigned long,MPSGraphTensor * {__strong}>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,MPSGraphTensor * {__strong}>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,MPSGraphTensor * {__strong}>>>::destroy(v61[0]);

  return v41;
}

void __110__MPSGraph_getExecutableForDevice_feeds_targetTensors_targetOperations_resultsDictionary_executionDescriptor___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = a2;
  v4 = a3;
  v5 = [v4 shape];
  v6 = [v22 shape];
  if (v6)
  {
    v7 = [v5 count];
    if (v7 != [v6 count] && objc_msgSend(v6, "count") && objc_msgSend(v5, "count") == 1)
    {
      v8 = [v5 objectAtIndexedSubscript:0];
      [v8 intValue];
    }

    v9 = [v5 count];
    if (v9 != [v6 count])
    {
      if ([v6 count])
      {
        if ([v5 count] != 1 || (objc_msgSend(v5, "objectAtIndexedSubscript:", 0), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "intValue"), v10, v11 != 1))
        {
          if (MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }
        }
      }
    }

    if ([v5 count] != 1 || (objc_msgSend(v5, "objectAtIndexedSubscript:", 0), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "intValue"), v12, v13 != 1))
    {
      for (i = 0; i < [v6 count]; ++i)
      {
        v15 = [v6 objectAtIndexedSubscript:i];
        v16 = [v15 integerValue];

        v17 = [v5 objectAtIndexedSubscript:i];
        v18 = [v17 integerValue];

        if (v16 != 0x8000000000000000 && v16 != -1 && v16 != v18 && MTLReportFailureTypeEnabled())
        {
          v20 = v18;
          v21 = i;
          v19 = v16;
          MTLReportFailure();
        }
      }
    }
  }
}

- (id)runInternalWithMPSCommandBuffer:(id)buffer feeds:(id)feeds targetTensors:(id)tensors targetOperations:(id)operations resultsDictionary:(id)dictionary executionDescriptor:(id)descriptor mpsGraphOwnedCommandBuffer:(BOOL)commandBuffer
{
  bufferCopy = buffer;
  feedsCopy = feeds;
  tensorsCopy = tensors;
  operationsCopy = operations;
  dictionaryCopy = dictionary;
  descriptorCopy = descriptor;
  v27 = tensorsCopy;
  device = [bufferCopy device];
  v22 = [MPSGraphDevice deviceWithMTLDevice:device];

  v23 = [(MPSGraph *)self getExecutableForDevice:v22 feeds:feedsCopy targetTensors:tensorsCopy targetOperations:operationsCopy resultsDictionary:dictionaryCopy executionDescriptor:descriptorCopy];
  v24 = [[MPSGraphExecutableExecutionDescriptor alloc] initWithGraphExecutionDescriptor:descriptorCopy];
  [v23 setOptions:self->_options];
  v25 = [v23 runInternalWithDevice:v22 commandBuffer:bufferCopy feedsDictionary:feedsCopy resultsDictionary:dictionaryCopy executableExecutionDescriptor:v24 mpsGraphOwnedCommandBuffer:commandBuffer];
  if (!descriptorCopy && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return v25;
}

- (id)runWithDevice:(id)device feeds:(id)feeds targetTensors:(id)tensors targetOperations:(id)operations executionDescriptor:(id)descriptor
{
  deviceCopy = device;
  feedsCopy = feeds;
  tensorsCopy = tensors;
  operationsCopy = operations;
  descriptorCopy = descriptor;
  if (!descriptorCopy)
  {
    descriptorCopy = objc_opt_new();
    [descriptorCopy setWaitUntilCompleted:1];
  }

  v17 = [(MPSGraph *)self runInternalWithMPSGraphDevice:deviceCopy feeds:feedsCopy targetTensors:tensorsCopy targetOperations:operationsCopy resultsDictionary:0 executionDescriptor:descriptorCopy];

  return v17;
}

- (void)runWithDevice:(id)device feeds:(id)feeds targetOperations:(id)operations resultsDictionary:(id)dictionary executionDescriptor:(id)descriptor
{
  deviceCopy = device;
  feedsCopy = feeds;
  operationsCopy = operations;
  dictionaryCopy = dictionary;
  descriptorCopy = descriptor;
  if (!descriptorCopy)
  {
    descriptorCopy = objc_opt_new();
    [descriptorCopy setWaitUntilCompleted:1];
  }

  allKeys = [dictionaryCopy allKeys];
  v17 = [(MPSGraph *)self runInternalWithMPSGraphDevice:deviceCopy feeds:feedsCopy targetTensors:allKeys targetOperations:operationsCopy resultsDictionary:dictionaryCopy executionDescriptor:descriptorCopy];
}

- (id)runAsyncWithDevice:(id)device feeds:(id)feeds targetTensors:(id)tensors targetOperations:(id)operations executionDescriptor:(id)descriptor
{
  deviceCopy = device;
  feedsCopy = feeds;
  tensorsCopy = tensors;
  operationsCopy = operations;
  descriptorCopy = descriptor;
  if (!descriptorCopy)
  {
    descriptorCopy = objc_opt_new();
    [descriptorCopy setWaitUntilCompleted:0];
  }

  v17 = [(MPSGraph *)self runInternalWithMPSGraphDevice:deviceCopy feeds:feedsCopy targetTensors:tensorsCopy targetOperations:operationsCopy resultsDictionary:0 executionDescriptor:descriptorCopy];

  return v17;
}

- (void)runAsyncWithDevice:(id)device feeds:(id)feeds targetOperations:(id)operations resultsDictionary:(id)dictionary executionDescriptor:(id)descriptor
{
  deviceCopy = device;
  feedsCopy = feeds;
  operationsCopy = operations;
  dictionaryCopy = dictionary;
  descriptorCopy = descriptor;
  if (!descriptorCopy)
  {
    descriptorCopy = objc_opt_new();
    [descriptorCopy setWaitUntilCompleted:0];
  }

  allKeys = [dictionaryCopy allKeys];
  v17 = [(MPSGraph *)self runInternalWithMPSGraphDevice:deviceCopy feeds:feedsCopy targetTensors:allKeys targetOperations:operationsCopy resultsDictionary:dictionaryCopy executionDescriptor:descriptorCopy];
}

- (id)runInternalWithMPSGraphDevice:(id)device feeds:(id)feeds targetTensors:(id)tensors targetOperations:(id)operations resultsDictionary:(id)dictionary executionDescriptor:(id)descriptor
{
  deviceCopy = device;
  feedsCopy = feeds;
  tensorsCopy = tensors;
  operationsCopy = operations;
  dictionaryCopy = dictionary;
  descriptorCopy = descriptor;
  if (!descriptorCopy)
  {
    descriptorCopy = objc_opt_new();
    [descriptorCopy setWaitUntilCompleted:1];
  }

  compilationDescriptor = [descriptorCopy compilationDescriptor];

  if (!compilationDescriptor)
  {
    v21 = objc_opt_new();
    [v21 setCompilerOptions:self->_compilerOptions];
    [descriptorCopy setCompilationDescriptor:v21];
  }

  v22 = [(MPSGraph *)self getExecutableForDevice:deviceCopy feeds:feedsCopy targetTensors:tensorsCopy targetOperations:operationsCopy resultsDictionary:dictionaryCopy executionDescriptor:descriptorCopy];
  v23 = [[MPSGraphExecutableExecutionDescriptor alloc] initWithGraphExecutionDescriptor:descriptorCopy];
  [v22 setOptions:self->_options];
  v24 = [v22 runInternalWithDevice:deviceCopy commandBuffer:0 feedsDictionary:feedsCopy resultsDictionary:dictionaryCopy executableExecutionDescriptor:v23 mpsGraphOwnedCommandBuffer:0];

  return v24;
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 8) = 0;
  return self;
}

- (MPSGraphTensor)resizeTensor:(MPSGraphTensor *)imagesTensor size:(MPSShape *)size mode:(MPSGraphResizeMode)mode centerResult:(BOOL)centerResult alignCorners:(BOOL)alignCorners layout:(MPSGraphTensorNamedDataLayout)layout name:(NSString *)name
{
  v11 = centerResult;
  v36[1] = *MEMORY[0x1E69E9840];
  v31 = imagesTensor;
  v32 = name;
  MPSShapeToVector<int>(size, &v34);
  if (layout >= MPSGraphTensorNamedDataLayoutHW)
  {
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v15 = qword_1E09A7860[layout];
    v16 = qword_1E09A7890[layout];
  }

  v17.__i_ = v34.__begin_;
  __x = -1;
  std::vector<int>::insert(&v34, v17, v16, &__x);
  v18.__i_ = v34.__end_;
  __x = -1;
  std::vector<int>::insert(&v34, v18, v15, &__x);
  v19 = v34.__end_ - v34.__begin_;
  v20 = [MEMORY[0x1E695DEF0] dataWithBytes:? length:?];
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v19 >> 2];
  v36[0] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  v23 = [(MPSGraph *)self constantWithData:v20 shape:v22 dataType:536870944];

  v24 = [MPSGraphResizeOp alloc];
  v35[0] = v31;
  v35[1] = v23;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  LOBYTE(v30) = alignCorners;
  v26 = [(MPSGraphResizeBaseOp *)v24 initWithGraph:self inputTensors:v25 controlDependencies:MEMORY[0x1E695E0F0] mode:mode nearestRoundingMode:0 centerResult:v11 alignCorners:v30 layout:layout name:v32];

  outputTensors = [(MPSGraphOperation *)v26 outputTensors];
  v28 = [outputTensors objectAtIndexedSubscript:0];

  if (v34.__begin_)
  {
    v34.__end_ = v34.__begin_;
    operator delete(v34.__begin_);
  }

  return v28;
}

- (MPSGraphTensor)resizeTensor:(MPSGraphTensor *)imagesTensor sizeTensor:(MPSGraphTensor *)size mode:(MPSGraphResizeMode)mode centerResult:(BOOL)centerResult alignCorners:(BOOL)alignCorners layout:(MPSGraphTensorNamedDataLayout)layout name:(NSString *)name
{
  v9 = [(MPSGraph *)self resizeTensor:imagesTensor sizeTensor:size mode:mode nearestRoundingMode:0 centerResult:centerResult alignCorners:alignCorners layout:layout name:name];

  return v9;
}

- (MPSGraphTensor)resizeNearestWithTensor:(MPSGraphTensor *)imagesTensor sizeTensor:(MPSGraphTensor *)size nearestRoundingMode:(MPSGraphResizeNearestRoundingMode)nearestRoundingMode centerResult:(BOOL)centerResult alignCorners:(BOOL)alignCorners layout:(MPSGraphTensorNamedDataLayout)layout name:(NSString *)name
{
  v9 = [(MPSGraph *)self resizeTensor:imagesTensor sizeTensor:size mode:0 nearestRoundingMode:nearestRoundingMode centerResult:centerResult alignCorners:alignCorners layout:layout name:name];

  return v9;
}

- (MPSGraphTensor)resizeBilinearWithTensor:(MPSGraphTensor *)imagesTensor sizeTensor:(MPSGraphTensor *)size centerResult:(BOOL)centerResult alignCorners:(BOOL)alignCorners layout:(MPSGraphTensorNamedDataLayout)layout name:(NSString *)name
{
  v8 = [(MPSGraph *)self resizeTensor:imagesTensor sizeTensor:size mode:1 centerResult:centerResult alignCorners:alignCorners layout:layout name:name];

  return v8;
}

- (id)resizeTensor:(id)tensor sizeTensor:(id)sizeTensor mode:(unint64_t)mode nearestRoundingMode:(unint64_t)roundingMode centerResult:(BOOL)result alignCorners:(BOOL)corners layout:(unint64_t)layout name:(id)self0
{
  resultCopy = result;
  v30[2] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  sizeTensorCopy = sizeTensor;
  nameCopy = name;
  v18 = [(MPSGraph *)self fixCastIntTensor:sizeTensorCopy toSignedness:1 name:nameCopy];

  v27 = v18;
  v29 = padSizeScaleOffsetForLayout(self, v18, 0, 0, layout, nameCopy);
  v19 = [MPSGraphResizeOp alloc];
  v30[0] = tensorCopy;
  v20 = [v29 objectAtIndexedSubscript:0];
  v30[1] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  LOBYTE(v26) = corners;
  v22 = [(MPSGraphResizeBaseOp *)v19 initWithGraph:self inputTensors:v21 controlDependencies:MEMORY[0x1E695E0F0] mode:mode nearestRoundingMode:roundingMode centerResult:resultCopy alignCorners:v26 layout:layout name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v22 outputTensors];
  v24 = [outputTensors objectAtIndexedSubscript:0];

  return v24;
}

- (MPSGraphTensor)resizeTensor:(MPSGraphTensor *)imagesTensor sizeTensor:(MPSGraphTensor *)size scaleOffsetTensor:(MPSGraphTensor *)scaleOffset mode:(MPSGraphResizeMode)mode layout:(MPSGraphTensorNamedDataLayout)layout name:(NSString *)name
{
  v8 = [(MPSGraph *)self resizeTensor:imagesTensor sizeTensor:size scaleOffsetTensor:scaleOffset mode:mode nearestRoundingMode:0 layout:layout name:name];

  return v8;
}

- (MPSGraphTensor)resizeNearestWithTensor:(MPSGraphTensor *)imagesTensor sizeTensor:(MPSGraphTensor *)size scaleOffsetTensor:(MPSGraphTensor *)scaleOffset nearestRoundingMode:(MPSGraphResizeNearestRoundingMode)nearestRoundingMode layout:(MPSGraphTensorNamedDataLayout)layout name:(NSString *)name
{
  v8 = [(MPSGraph *)self resizeTensor:imagesTensor sizeTensor:size scaleOffsetTensor:scaleOffset mode:0 nearestRoundingMode:nearestRoundingMode layout:layout name:name];

  return v8;
}

- (MPSGraphTensor)resizeBilinearWithTensor:(MPSGraphTensor *)imagesTensor sizeTensor:(MPSGraphTensor *)size scaleOffsetTensor:(MPSGraphTensor *)scaleOffset layout:(MPSGraphTensorNamedDataLayout)layout name:(NSString *)name
{
  v7 = [(MPSGraph *)self resizeTensor:imagesTensor sizeTensor:size scaleOffsetTensor:scaleOffset mode:1 layout:layout name:name];

  return v7;
}

- (id)resizeTensor:(id)tensor sizeTensor:(id)sizeTensor scaleOffsetTensor:(id)offsetTensor mode:(unint64_t)mode nearestRoundingMode:(unint64_t)roundingMode layout:(unint64_t)layout name:(id)name
{
  v37[4] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  sizeTensorCopy = sizeTensor;
  offsetTensorCopy = offsetTensor;
  nameCopy = name;
  v33 = [(MPSGraph *)self fixCastIntTensor:sizeTensorCopy toSignedness:1 name:nameCopy];

  if (nameCopy)
  {
    v17 = [nameCopy stringByAppendingString:@"/slice0"];
  }

  else
  {
    v17 = @"resize/slice0";
  }

  v35 = [(MPSGraph *)self sliceTensor:offsetTensorCopy dimension:0 start:0 length:2 name:v17];
  if (nameCopy)
  {

    v18 = [nameCopy stringByAppendingString:@"/slice1"];
  }

  else
  {
    v18 = @"resize/slice1";
  }

  v34 = [(MPSGraph *)self sliceTensor:offsetTensorCopy dimension:0 start:2 length:2 name:v18];
  if (nameCopy)
  {
  }

  v19 = padSizeScaleOffsetForLayout(self, v33, v35, v34, layout, nameCopy);
  v20 = [MPSGraphResizeOp alloc];
  v37[0] = tensorCopy;
  [v19 objectAtIndexedSubscript:0];
  v31 = v21 = layout;
  v37[1] = v31;
  v22 = [v19 objectAtIndexedSubscript:1];
  roundingModeCopy = roundingMode;
  v37[2] = v22;
  v24 = [v19 objectAtIndexedSubscript:2];
  v37[3] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:4];
  LOBYTE(v30) = 0;
  v26 = [(MPSGraphResizeBaseOp *)v20 initWithGraph:self inputTensors:v25 controlDependencies:MEMORY[0x1E695E0F0] mode:mode nearestRoundingMode:roundingModeCopy centerResult:0 alignCorners:v30 layout:v21 name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v26 outputTensors];
  v28 = [outputTensors objectAtIndexedSubscript:0];

  return v28;
}

- (MPSGraphTensor)resizeWithGradientTensor:(MPSGraphTensor *)gradient input:(MPSGraphTensor *)input mode:(MPSGraphResizeMode)mode centerResult:(BOOL)centerResult alignCorners:(BOOL)alignCorners layout:(MPSGraphTensorNamedDataLayout)layout name:(NSString *)name
{
  v9 = [(MPSGraph *)self resizeWithGradientTensor:gradient input:input mode:mode nearestRoundingMode:0 centerResult:centerResult alignCorners:alignCorners layout:layout name:name];

  return v9;
}

- (MPSGraphTensor)resizeNearestWithGradientTensor:(MPSGraphTensor *)gradient input:(MPSGraphTensor *)input nearestRoundingMode:(MPSGraphResizeNearestRoundingMode)nearestRoundingMode centerResult:(BOOL)centerResult alignCorners:(BOOL)alignCorners layout:(MPSGraphTensorNamedDataLayout)layout name:(NSString *)name
{
  v9 = [(MPSGraph *)self resizeWithGradientTensor:gradient input:input mode:0 nearestRoundingMode:nearestRoundingMode centerResult:centerResult alignCorners:alignCorners layout:layout name:name];

  return v9;
}

- (MPSGraphTensor)resizeBilinearWithGradientTensor:(MPSGraphTensor *)gradient input:(MPSGraphTensor *)input centerResult:(BOOL)centerResult alignCorners:(BOOL)alignCorners layout:(MPSGraphTensorNamedDataLayout)layout name:(NSString *)name
{
  v8 = [(MPSGraph *)self resizeWithGradientTensor:gradient input:input mode:1 centerResult:centerResult alignCorners:alignCorners layout:layout name:name];

  return v8;
}

- (id)resizeWithGradientTensor:(id)tensor input:(id)input mode:(unint64_t)mode nearestRoundingMode:(unint64_t)roundingMode centerResult:(BOOL)result alignCorners:(BOOL)corners layout:(unint64_t)layout name:(id)self0
{
  resultCopy = result;
  v29[2] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  inputCopy = input;
  nameCopy = name;
  v17 = nameCopy;
  if (nameCopy)
  {
    v18 = [nameCopy stringByAppendingString:@"/shapeOf"];
  }

  else
  {
    v18 = @"resizeGrad/shapeOf";
  }

  v19 = [(MPSGraph *)self shapeOfTensor:inputCopy name:v18];
  if (v17)
  {
  }

  v20 = [MPSGraphResizeGradientOp alloc];
  v29[0] = tensorCopy;
  v29[1] = v19;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  LOBYTE(v26) = corners;
  v22 = [(MPSGraphResizeBaseOp *)v20 initWithGraph:self inputTensors:v21 controlDependencies:MEMORY[0x1E695E0F0] mode:mode nearestRoundingMode:roundingMode centerResult:resultCopy alignCorners:v26 layout:layout name:v17];

  outputTensors = [(MPSGraphOperation *)v22 outputTensors];
  v24 = [outputTensors objectAtIndexedSubscript:0];

  return v24;
}

- (MPSGraphTensor)resizeWithGradientTensor:(MPSGraphTensor *)gradient input:(MPSGraphTensor *)input scaleOffsetTensor:(MPSGraphTensor *)scaleOffset mode:(MPSGraphResizeMode)mode layout:(MPSGraphTensorNamedDataLayout)layout name:(NSString *)name
{
  v8 = [(MPSGraph *)self resizeWithGradientTensor:gradient input:input scaleOffsetTensor:scaleOffset mode:mode nearestRoundingMode:0 layout:layout name:name];

  return v8;
}

- (MPSGraphTensor)resizeNearestWithGradientTensor:(MPSGraphTensor *)gradient input:(MPSGraphTensor *)input scaleOffsetTensor:(MPSGraphTensor *)scaleOffset nearestRoundingMode:(MPSGraphResizeNearestRoundingMode)nearestRoundingMode layout:(MPSGraphTensorNamedDataLayout)layout name:(NSString *)name
{
  v8 = [(MPSGraph *)self resizeWithGradientTensor:gradient input:input scaleOffsetTensor:scaleOffset mode:0 nearestRoundingMode:nearestRoundingMode layout:layout name:name];

  return v8;
}

- (MPSGraphTensor)resizeBilinearWithGradientTensor:(MPSGraphTensor *)gradient input:(MPSGraphTensor *)input scaleOffsetTensor:(MPSGraphTensor *)scaleOffset layout:(MPSGraphTensorNamedDataLayout)layout name:(NSString *)name
{
  v7 = [(MPSGraph *)self resizeWithGradientTensor:gradient input:input scaleOffsetTensor:scaleOffset mode:1 layout:layout name:name];

  return v7;
}

- (id)resizeWithGradientTensor:(id)tensor input:(id)input scaleOffsetTensor:(id)offsetTensor mode:(unint64_t)mode nearestRoundingMode:(unint64_t)roundingMode layout:(unint64_t)layout name:(id)name
{
  v36[4] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  inputCopy = input;
  offsetTensorCopy = offsetTensor;
  nameCopy = name;
  v16 = nameCopy;
  if (nameCopy)
  {
    v17 = [nameCopy stringByAppendingString:@"/shapeOf"];
  }

  else
  {
    v17 = @"resizeGrad/shapeOf";
  }

  v31 = [(MPSGraph *)self shapeOfTensor:inputCopy name:v17];
  if (v16)
  {

    v18 = [v16 stringByAppendingString:@"/slice0"];
  }

  else
  {
    v18 = @"resize/slice0";
  }

  v33 = [(MPSGraph *)self sliceTensor:offsetTensorCopy dimension:0 start:0 length:2 name:v18];
  if (v16)
  {

    v19 = [v16 stringByAppendingString:@"/slice1"];
  }

  else
  {
    v19 = @"resize/slice1";
  }

  v32 = [(MPSGraph *)self sliceTensor:offsetTensorCopy dimension:0 start:2 length:2 name:v19];
  if (v16)
  {
  }

  v20 = padSizeScaleOffsetForLayout(self, 0, v33, v32, layout, v16);
  v21 = [MPSGraphResizeGradientOp alloc];
  v36[0] = tensorCopy;
  v36[1] = v31;
  v22 = [v20 objectAtIndexedSubscript:1];
  v36[2] = v22;
  v23 = [v20 objectAtIndexedSubscript:2];
  v36[3] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:4];
  LOBYTE(v29) = 0;
  v25 = [(MPSGraphResizeBaseOp *)v21 initWithGraph:self inputTensors:v24 controlDependencies:MEMORY[0x1E695E0F0] mode:mode nearestRoundingMode:roundingMode centerResult:0 alignCorners:v29 layout:layout name:v16];

  outputTensors = [(MPSGraphOperation *)v25 outputTensors];
  v27 = [outputTensors objectAtIndexedSubscript:0];

  return v27;
}

- (MPSGraphTensor)resizeTensor:(MPSGraphTensor *)imagesTensor sizeTensor:(MPSGraphTensor *)size mode:(MPSGraphResizeMode)mode centerResult:(BOOL)centerResult alignCorners:(BOOL)alignCorners name:(NSString *)name
{
  v8 = [(MPSGraph *)self resizeTensor:imagesTensor sizeTensor:size mode:mode nearestRoundingMode:0 centerResult:centerResult alignCorners:alignCorners name:name];

  return v8;
}

- (MPSGraphTensor)resizeBilinearWithTensor:(MPSGraphTensor *)imagesTensor sizeTensor:(MPSGraphTensor *)size centerResult:(BOOL)centerResult alignCorners:(BOOL)alignCorners name:(NSString *)name
{
  v7 = [(MPSGraph *)self resizeTensor:imagesTensor sizeTensor:size mode:1 centerResult:centerResult alignCorners:alignCorners name:name];

  return v7;
}

- (MPSGraphTensor)resizeNearestWithTensor:(MPSGraphTensor *)imagesTensor sizeTensor:(MPSGraphTensor *)size nearestRoundingMode:(MPSGraphResizeNearestRoundingMode)nearestRoundingMode centerResult:(BOOL)centerResult alignCorners:(BOOL)alignCorners name:(NSString *)name
{
  v8 = [(MPSGraph *)self resizeTensor:imagesTensor sizeTensor:size mode:0 nearestRoundingMode:nearestRoundingMode centerResult:centerResult alignCorners:alignCorners name:name];

  return v8;
}

- (id)resizeTensor:(id)tensor sizeTensor:(id)sizeTensor mode:(unint64_t)mode nearestRoundingMode:(unint64_t)roundingMode centerResult:(BOOL)result alignCorners:(BOOL)corners name:(id)name
{
  resultCopy = result;
  v26[2] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  sizeTensorCopy = sizeTensor;
  nameCopy = name;
  v18 = [(MPSGraph *)self fixCastIntTensor:sizeTensorCopy toSignedness:1 name:nameCopy];

  v19 = [MPSGraphResizeOp alloc];
  v26[0] = tensorCopy;
  v26[1] = v18;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  LOBYTE(v25) = corners;
  v21 = [(MPSGraphResizeBaseOp *)v19 initWithGraph:self inputTensors:v20 controlDependencies:MEMORY[0x1E695E0F0] mode:mode nearestRoundingMode:roundingMode centerResult:resultCopy alignCorners:v25 name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v21 outputTensors];
  v23 = [outputTensors objectAtIndexedSubscript:0];

  return v23;
}

- (MPSGraphTensor)resizeTensor:(MPSGraphTensor *)imagesTensor sizeTensor:(MPSGraphTensor *)size scaleTensor:(MPSGraphTensor *)scale offsetTensor:(MPSGraphTensor *)offset mode:(MPSGraphResizeMode)mode name:(NSString *)name
{
  v8 = [(MPSGraph *)self resizeTensor:imagesTensor sizeTensor:size scaleTensor:scale offsetTensor:offset mode:mode nearestRoundingMode:0 name:name];

  return v8;
}

- (MPSGraphTensor)resizeBilinearWithTensor:(MPSGraphTensor *)imagesTensor sizeTensor:(MPSGraphTensor *)size scaleTensor:(MPSGraphTensor *)scale offsetTensor:(MPSGraphTensor *)offset name:(NSString *)name
{
  v7 = [(MPSGraph *)self resizeTensor:imagesTensor sizeTensor:size scaleTensor:scale offsetTensor:offset mode:1 name:name];

  return v7;
}

- (MPSGraphTensor)resizeNearestWithTensor:(MPSGraphTensor *)imagesTensor sizeTensor:(MPSGraphTensor *)size scaleTensor:(MPSGraphTensor *)scale offsetTensor:(MPSGraphTensor *)offset nearestRoundingMode:(MPSGraphResizeNearestRoundingMode)nearestRoundingMode name:(NSString *)name
{
  v8 = [(MPSGraph *)self resizeTensor:imagesTensor sizeTensor:size scaleTensor:scale offsetTensor:offset mode:0 nearestRoundingMode:nearestRoundingMode name:name];

  return v8;
}

- (id)resizeTensor:(id)tensor sizeTensor:(id)sizeTensor scaleTensor:(id)scaleTensor offsetTensor:(id)offsetTensor mode:(unint64_t)mode nearestRoundingMode:(unint64_t)roundingMode name:(id)name
{
  v28[4] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  sizeTensorCopy = sizeTensor;
  scaleTensorCopy = scaleTensor;
  offsetTensorCopy = offsetTensor;
  nameCopy = name;
  v20 = [(MPSGraph *)self fixCastIntTensor:sizeTensorCopy toSignedness:1 name:nameCopy];

  v21 = [MPSGraphResizeOp alloc];
  v28[0] = tensorCopy;
  v28[1] = v20;
  v28[2] = scaleTensorCopy;
  v28[3] = offsetTensorCopy;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];
  LOBYTE(v27) = 0;
  v23 = [(MPSGraphResizeBaseOp *)v21 initWithGraph:self inputTensors:v22 controlDependencies:MEMORY[0x1E695E0F0] mode:mode nearestRoundingMode:roundingMode centerResult:0 alignCorners:v27 name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v23 outputTensors];
  v25 = [outputTensors objectAtIndexedSubscript:0];

  return v25;
}

- (MPSGraphTensor)resizeWithGradientTensor:(MPSGraphTensor *)gradient input:(MPSGraphTensor *)input scaleTensor:(MPSGraphTensor *)scale offsetTensor:(MPSGraphTensor *)offset mode:(MPSGraphResizeMode)mode name:(NSString *)name
{
  v8 = [(MPSGraph *)self resizeWithGradientTensor:gradient input:input scaleTensor:scale offsetTensor:offset mode:mode nearestRoundingMode:0 name:name];

  return v8;
}

- (MPSGraphTensor)resizeBilinearWithGradientTensor:(MPSGraphTensor *)gradient input:(MPSGraphTensor *)input scaleTensor:(MPSGraphTensor *)scale offsetTensor:(MPSGraphTensor *)offset name:(NSString *)name
{
  v7 = [(MPSGraph *)self resizeWithGradientTensor:gradient input:input scaleTensor:scale offsetTensor:offset mode:1 name:name];

  return v7;
}

- (MPSGraphTensor)resizeNearestWithGradientTensor:(MPSGraphTensor *)gradient input:(MPSGraphTensor *)input scaleTensor:(MPSGraphTensor *)scale offsetTensor:(MPSGraphTensor *)offset nearestRoundingMode:(MPSGraphResizeNearestRoundingMode)nearestRoundingMode name:(NSString *)name
{
  v8 = [(MPSGraph *)self resizeWithGradientTensor:gradient input:input scaleTensor:scale offsetTensor:offset mode:0 nearestRoundingMode:nearestRoundingMode name:name];

  return v8;
}

- (id)resizeWithGradientTensor:(id)tensor input:(id)input scaleTensor:(id)scaleTensor offsetTensor:(id)offsetTensor mode:(unint64_t)mode nearestRoundingMode:(unint64_t)roundingMode name:(id)name
{
  v30[4] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  inputCopy = input;
  scaleTensorCopy = scaleTensor;
  offsetTensorCopy = offsetTensor;
  nameCopy = name;
  v19 = nameCopy;
  if (nameCopy)
  {
    v20 = [nameCopy stringByAppendingString:@"/shapeOf"];
  }

  else
  {
    v20 = @"resizeGrad/shapeOf";
  }

  v21 = [(MPSGraph *)self shapeOfTensor:inputCopy name:v20];
  if (v19)
  {
  }

  v22 = [MPSGraphResizeGradientOp alloc];
  v30[0] = tensorCopy;
  v30[1] = v21;
  v30[2] = scaleTensorCopy;
  v30[3] = offsetTensorCopy;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
  LOBYTE(v28) = 0;
  v24 = [(MPSGraphResizeBaseOp *)v22 initWithGraph:self inputTensors:v23 controlDependencies:MEMORY[0x1E695E0F0] mode:mode nearestRoundingMode:roundingMode centerResult:0 alignCorners:v28 name:v19];

  outputTensors = [(MPSGraphOperation *)v24 outputTensors];
  v26 = [outputTensors objectAtIndexedSubscript:0];

  return v26;
}

- (MPSGraphTensor)varianceOfTensor:(MPSGraphTensor *)tensor meanTensor:(MPSGraphTensor *)meanTensor axes:(NSArray *)axes name:(NSString *)name
{
  v10 = tensor;
  v11 = meanTensor;
  v12 = axes;
  v13 = name;
  v14 = v13;
  if (v13)
  {
    v15 = [(NSString *)v13 stringByAppendingString:@"/subtraction"];
  }

  else
  {
    v15 = @"variance/subtraction";
  }

  v16 = [(MPSGraph *)self subtractionWithPrimaryTensor:v10 secondaryTensor:v11 name:v15];
  if (v14)
  {

    v17 = [(NSString *)v14 stringByAppendingString:@"/square"];
  }

  else
  {
    v17 = @"variance/square";
  }

  v18 = [(MPSGraph *)self squareWithTensor:v16 name:v17];
  if (v14)
  {

    v19 = [(NSString *)v14 stringByAppendingString:@"/mean"];
  }

  else
  {
    v19 = @"variance/mean";
  }

  v20 = [(MPSGraph *)self meanOfTensor:v18 axes:v12 name:v19];
  if (v14)
  {
  }

  return v20;
}

- (MPSGraphTensor)varianceOfTensor:(MPSGraphTensor *)tensor axes:(NSArray *)axes name:(NSString *)name
{
  v8 = tensor;
  v9 = axes;
  v10 = name;
  v11 = v10;
  if (v10)
  {
    v12 = [(NSString *)v10 stringByAppendingString:@"/mean"];
  }

  else
  {
    v12 = @"variance/mean";
  }

  v13 = [(MPSGraph *)self meanOfTensor:v8 axes:v9 name:v12];
  if (v11)
  {
  }

  v14 = [(MPSGraph *)self varianceOfTensor:v8 meanTensor:v13 axes:v9 name:v11];

  return v14;
}

- (MPSGraphTensor)normalizationWithTensor:(MPSGraphTensor *)tensor meanTensor:(MPSGraphTensor *)mean varianceTensor:(MPSGraphTensor *)variance gammaTensor:(MPSGraphTensor *)gamma betaTensor:(MPSGraphTensor *)beta epsilon:(float)epsilon name:(NSString *)name
{
  v29[5] = *MEMORY[0x1E69E9840];
  v16 = tensor;
  v17 = mean;
  v18 = variance;
  v19 = gamma;
  v20 = beta;
  v21 = name;
  if (v19)
  {
    if (v20)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v19 = [(MPSGraph *)self constantWithScalar:[(MPSGraphTensor *)v16 dataType] dataType:1.0];
    if (v20)
    {
      goto LABEL_6;
    }
  }

  v20 = [(MPSGraph *)self constantWithScalar:[(MPSGraphTensor *)v16 dataType] dataType:0.0];
LABEL_6:
  v22 = [MPSGraphNormalizationOp alloc];
  v29[0] = v16;
  v29[1] = v17;
  v29[2] = v18;
  v29[3] = v19;
  v29[4] = v20;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:5];
  *&v24 = epsilon;
  v25 = [(MPSGraphNormalizationOp *)v22 initWithGraph:self inputTensors:v23 controlDependencies:MEMORY[0x1E695E0F0] epsilon:v21 name:v24];

  outputTensors = [(MPSGraphOperation *)v25 outputTensors];
  v27 = [outputTensors objectAtIndexedSubscript:0];

  return v27;
}

- (MPSGraphTensor)normalizationGammaGradientWithIncomingGradientTensor:(MPSGraphTensor *)incomingGradientTensor sourceTensor:(MPSGraphTensor *)sourceTensor meanTensor:(MPSGraphTensor *)meanTensor varianceTensor:(MPSGraphTensor *)varianceTensor reductionAxes:(NSArray *)axes epsilon:(float)epsilon name:(NSString *)name
{
  v44 = incomingGradientTensor;
  v16 = sourceTensor;
  v17 = meanTensor;
  v18 = varianceTensor;
  v43 = axes;
  v19 = name;
  v41 = v18;
  v42 = v17;
  v20 = [(MPSGraph *)self constantWithScalar:&unk_1F5B77720 shape:268435488 dataType:epsilon];
  v40 = v20;
  dataType = [(MPSGraphTensor *)v16 dataType];
  if (v19)
  {
    v22 = [(NSString *)v19 stringByAppendingFormat:@"/cast"];
  }

  else
  {
    v22 = @"normalizationGradient/cast";
  }

  v23 = [(MPSGraph *)self castTensor:v20 toType:dataType name:v22];
  if (v19)
  {

    v24 = [(NSString *)v19 stringByAppendingString:@"/addition"];
  }

  else
  {
    v24 = @"batchNormGammaGradient/addition";
  }

  v25 = [(MPSGraph *)self additionWithPrimaryTensor:v18 secondaryTensor:v23 name:v24];
  if (v19)
  {

    v26 = [(NSString *)v19 stringByAppendingString:@"/sqrt"];
  }

  else
  {
    v26 = @"batchNormGammaGradient/sqrt";
  }

  v27 = [(MPSGraph *)self squareRootWithTensor:v25 name:v26];
  if (v19)
  {

    v28 = [(NSString *)v19 stringByAppendingString:@"/subtraction"];
  }

  else
  {
    v28 = @"batchNormGammaGradient/subtraction";
  }

  v29 = [(MPSGraph *)self subtractionWithPrimaryTensor:v16 secondaryTensor:v17 name:v28];
  if (v19)
  {

    v30 = [(NSString *)v19 stringByAppendingString:@"/divison"];
  }

  else
  {
    v30 = @"batchNormGammaGradient/divison";
  }

  v31 = [(MPSGraph *)self divisionWithPrimaryTensor:v29 secondaryTensor:v27 name:v30];
  if (v19)
  {

    v32 = [(NSString *)v19 stringByAppendingString:@"/multiplication"];
  }

  else
  {
    v32 = @"batchNormGammaGradient/multiplication";
  }

  v33 = [(MPSGraph *)self multiplicationWithPrimaryTensor:v44 secondaryTensor:v31 name:v32];
  v34 = v33;
  if (v19)
  {

    v35 = v34;
    v36 = [(NSString *)v19 stringByAppendingFormat:@"/sum"];
  }

  else
  {
    v37 = v33;
    v36 = @"batchNormGammaGradient/sum";
  }

  v38 = [(MPSGraph *)self reductionSumWithTensor:v34 axes:v43 name:v36];
  if (v19)
  {
  }

  return v38;
}

- (MPSGraphTensor)normalizationBetaGradientWithIncomingGradientTensor:(MPSGraphTensor *)incomingGradientTensor sourceTensor:(MPSGraphTensor *)sourceTensor reductionAxes:(NSArray *)axes name:(NSString *)name
{
  v10 = incomingGradientTensor;
  v11 = sourceTensor;
  v12 = axes;
  v13 = name;
  v14 = v10;
  if (v13)
  {
    v15 = [(NSString *)v13 stringByAppendingFormat:@"/sum"];
  }

  else
  {
    v15 = @"batchNormGammaGradient/sum";
  }

  v16 = [(MPSGraph *)self reductionSumWithTensor:v14 axes:v12 name:v15];
  if (v13)
  {
  }

  return v16;
}

- (MPSGraphTensor)normalizationGradientWithIncomingGradientTensor:(MPSGraphTensor *)incomingGradientTensor sourceTensor:(MPSGraphTensor *)sourceTensor meanTensor:(MPSGraphTensor *)meanTensor varianceTensor:(MPSGraphTensor *)varianceTensor gammaTensor:(MPSGraphTensor *)gamma gammaGradientTensor:(MPSGraphTensor *)gammaGradient betaGradientTensor:(MPSGraphTensor *)betaGradient reductionAxes:(NSArray *)axes epsilon:(float)epsilon name:(NSString *)name
{
  v85[1] = *MEMORY[0x1E69E9840];
  v77 = incomingGradientTensor;
  v20 = sourceTensor;
  v74 = meanTensor;
  v75 = varianceTensor;
  v76 = gamma;
  v80 = gammaGradient;
  v79 = betaGradient;
  v83 = axes;
  v84 = name;
  v81 = v20;
  v73 = [(MPSGraph *)self constantWithScalar:&unk_1F5B77738 shape:268435488 dataType:epsilon];
  dataType = [(MPSGraphTensor *)v20 dataType];
  if (v84)
  {
    v22 = [(NSString *)v84 stringByAppendingFormat:@"/cast"];
  }

  else
  {
    v22 = @"normalizationGradient/cast";
  }

  v23 = [(MPSGraph *)self castTensor:v73 toType:dataType name:v22];
  v65 = v23;
  if (v84)
  {

    v24 = [(NSString *)v84 stringByAppendingString:@"/addition"];
  }

  else
  {
    v24 = @"batchNormGradient/addition";
  }

  v25 = [(MPSGraph *)self additionWithPrimaryTensor:v75 secondaryTensor:v23 name:v24];
  v66 = v25;
  if (v84)
  {

    v26 = [(NSString *)v84 stringByAppendingString:@"/reciprocal"];
  }

  else
  {
    v26 = @"batchNormGradient/reciprocal";
  }

  v72 = [(MPSGraph *)self reciprocalWithTensor:v25 name:v26];
  if (v84)
  {

    v27 = [(NSString *)v84 stringByAppendingString:@"/reciprocal"];
  }

  else
  {
    v27 = @"batchNormGradient/reciprocal2";
  }

  v78 = [(MPSGraph *)self reciprocalSquareRootWithTensor:v25 name:v27];
  if (v84)
  {
  }

  v82 = [(MPSGraph *)self constantWithScalar:&unk_1F5B77750 shape:536870944 dataType:1.0];
  for (i = 0; [(NSArray *)v83 count]> i; ++i)
  {
    v29 = [(NSArray *)v83 objectAtIndexedSubscript:i];
    v85[0] = v29;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:1];
    if (v84)
    {
      v31 = [(NSString *)v84 stringByAppendingFormat:@"/dimSize%d/", i, v65, v66];
      v23 = v31;
    }

    else
    {
      v31 = [@"batchNormGradient/dimSize" stringByAppendingFormat:@"%d/", i];
      v20 = v31;
    }

    v32 = [(MPSGraph *)self dimensionSizeOfTensor:v81 axes:v30 name:v31];
    if (v84)
    {

      v33 = [(NSString *)v84 stringByAppendingFormat:@"/mul%d/", i];
      v12 = v33;
    }

    else
    {

      v33 = [@"batchNormGradient/mul" stringByAppendingFormat:@"%d/", i];
      v27 = v33;
    }

    v34 = [(MPSGraph *)self multiplicationWithPrimaryTensor:v82 secondaryTensor:v32 name:v33];

    if (v84)
    {
      v35 = v12;
    }

    else
    {
      v35 = v27;
    }

    v82 = v34;
  }

  v36 = v82;
  dataType2 = [(MPSGraphTensor *)v81 dataType];
  if (v84)
  {
    v38 = [(NSString *)v84 stringByAppendingFormat:@"/cast"];
  }

  else
  {
    v38 = @"batchNormGradient/cast";
  }

  v71 = [(MPSGraph *)self castTensor:v36 toType:dataType2 name:v38];
  if (v84)
  {

    v39 = [(NSString *)v84 stringByAppendingString:@"/reciprocal"];
  }

  else
  {
    v39 = @"batchNormGradient/reciprocal";
  }

  v40 = [(MPSGraph *)self reciprocalWithTensor:v71 name:v39];
  if (v84)
  {

    if (v80)
    {
LABEL_40:
      if (v79)
      {
LABEL_46:
        v44 = [(NSString *)v84 stringByAppendingString:@"/multiplication1"];
        goto LABEL_48;
      }

      v43 = [(NSString *)v84 stringByAppendingString:@"/betaGradient"];
      goto LABEL_44;
    }

    v42 = [(NSString *)v84 stringByAppendingString:@"/gammaGradient"];
  }

  else
  {
    if (v80)
    {
      goto LABEL_42;
    }

    v42 = @"batchNormGradient/gammaGradient";
  }

  *&v41 = epsilon;
  v80 = [(MPSGraph *)self normalizationGammaGradientWithIncomingGradientTensor:v77 sourceTensor:v81 meanTensor:v74 varianceTensor:v75 reductionAxes:v83 epsilon:v42 name:v41];
  if (v84)
  {

    goto LABEL_40;
  }

LABEL_42:
  if (v79)
  {
    goto LABEL_47;
  }

  v43 = @"batchNormGradient/betaGradient";
LABEL_44:
  v79 = [(MPSGraph *)self normalizationBetaGradientWithIncomingGradientTensor:v77 sourceTensor:v81 reductionAxes:v83 name:v43];
  if (v84)
  {

    goto LABEL_46;
  }

LABEL_47:
  v44 = @"batchNormGradient/multiplication1";
LABEL_48:
  v67 = [(MPSGraph *)self multiplicationWithPrimaryTensor:v77 secondaryTensor:v78 name:v44];
  if (v84)
  {

    v45 = [(NSString *)v84 stringByAppendingString:@"/subtraction"];
  }

  else
  {
    v45 = @"batchNormGradient/subtraction";
  }

  v70 = [(MPSGraph *)self subtractionWithPrimaryTensor:v81 secondaryTensor:v74 name:v45];
  if (v84)
  {

    v46 = [(NSString *)v84 stringByAppendingString:@"/multiplication2"];
  }

  else
  {
    v46 = @"batchNormGradient/multiplication2";
  }

  v69 = [(MPSGraph *)self multiplicationWithPrimaryTensor:v40 secondaryTensor:v70 name:v46];
  if (v84)
  {

    v47 = [(NSString *)v84 stringByAppendingString:@"/multiplication2"];
  }

  else
  {
    v47 = @"batchNormGradient/multiplication2";
  }

  v68 = [(MPSGraph *)self multiplicationWithPrimaryTensor:v80 secondaryTensor:v72 name:v47];
  if (v84)
  {

    v48 = [(NSString *)v84 stringByAppendingString:@"/multiplication3"];
  }

  else
  {
    v48 = @"batchNormGradient/multiplication3";
  }

  v49 = [(MPSGraph *)self multiplicationWithPrimaryTensor:v69 secondaryTensor:v68 name:v48];
  if (v84)
  {

    v50 = [(NSString *)v84 stringByAppendingString:@"/multiplication4"];
  }

  else
  {
    v50 = @"batchNormGradient/multiplication4";
  }

  v51 = [(MPSGraph *)self multiplicationWithPrimaryTensor:v40 secondaryTensor:v79 name:v50];
  if (v84)
  {

    v52 = [(NSString *)v84 stringByAppendingString:@"/multiplication5"];
  }

  else
  {
    v52 = @"batchNormGradient/multiplication5";
  }

  v53 = [(MPSGraph *)self multiplicationWithPrimaryTensor:v51 secondaryTensor:v78 name:v52];
  if (v84)
  {

    v54 = [(NSString *)v84 stringByAppendingString:@"/subtraction1"];
  }

  else
  {
    v54 = @"batchNormGradient/subtraction1";
  }

  v55 = [(MPSGraph *)self subtractionWithPrimaryTensor:v67 secondaryTensor:v49 name:v54];
  if (v84)
  {

    v56 = [(NSString *)v84 stringByAppendingString:@"/subtraction2"];
  }

  else
  {
    v56 = @"batchNormGradient/subtraction2";
  }

  v57 = [(MPSGraph *)self subtractionWithPrimaryTensor:v55 secondaryTensor:v53 name:v56];
  v58 = v57;
  if (!v84)
  {
    v59 = v57;
    v60 = v76;
    if (v76)
    {
      v61 = @"batchNormGradient/multiplication";
      goto LABEL_77;
    }

LABEL_80:
    v63 = v59;
    goto LABEL_81;
  }

  v59 = v58;
  v60 = v76;
  if (!v76)
  {
    goto LABEL_80;
  }

  v61 = [(NSString *)v84 stringByAppendingString:@"/multiplication"];
LABEL_77:
  v62 = [(MPSGraph *)self multiplicationWithPrimaryTensor:v58 secondaryTensor:v76 name:v61];
  if (v84)
  {
  }

  v63 = v62;

  v60 = v63;
LABEL_81:

  return v63;
}

- (NSArray)topKWithSourceTensor:(MPSGraphTensor *)source axisTensor:(MPSGraphTensor *)axisTensor kTensor:(MPSGraphTensor *)kTensor name:(NSString *)name
{
  v21[3] = *MEMORY[0x1E69E9840];
  v10 = source;
  v11 = axisTensor;
  v12 = kTensor;
  v13 = name;
  v14 = [(MPSGraph *)self fixCastIntTensor:v12 toSignedness:1 name:v13];

  v15 = [(MPSGraph *)self fixCastIntTensor:v11 toSignedness:1 name:v13];

  v16 = [MPSGraphTopKOp alloc];
  v21[0] = v10;
  v21[1] = v15;
  v21[2] = v14;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];
  v18 = [(MPSGraphTopKOp *)v16 initWithGraph:self inputTensors:v17 controlDependencies:MEMORY[0x1E695E0F0] smallest:0 name:v13];

  outputTensors = [(MPSGraphOperation *)v18 outputTensors];

  return outputTensors;
}

- (NSArray)bottomKWithSourceTensor:(MPSGraphTensor *)source axisTensor:(MPSGraphTensor *)axisTensor kTensor:(MPSGraphTensor *)kTensor name:(NSString *)name
{
  v21[3] = *MEMORY[0x1E69E9840];
  v10 = source;
  v11 = axisTensor;
  v12 = kTensor;
  v13 = name;
  v14 = [(MPSGraph *)self fixCastIntTensor:v12 toSignedness:1 name:v13];

  v15 = [(MPSGraph *)self fixCastIntTensor:v11 toSignedness:1 name:v13];

  v16 = [MPSGraphTopKOp alloc];
  v21[0] = v10;
  v21[1] = v15;
  v21[2] = v14;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];
  v18 = [(MPSGraphTopKOp *)v16 initWithGraph:self inputTensors:v17 controlDependencies:MEMORY[0x1E695E0F0] smallest:1 name:v13];

  outputTensors = [(MPSGraphOperation *)v18 outputTensors];

  return outputTensors;
}

- (NSArray)topKWithSourceTensor:(MPSGraphTensor *)source kTensor:(MPSGraphTensor *)kTensor name:(NSString *)name
{
  v8 = source;
  v9 = kTensor;
  v10 = name;
  v11 = [(MPSGraph *)self constantWithScalar:536870944 dataType:-1.0];
  v12 = [(MPSGraph *)self topKWithSourceTensor:v8 axisTensor:v11 kTensor:v9 name:v10];

  return v12;
}

- (NSArray)topKWithSourceTensor:(MPSGraphTensor *)source axis:(NSInteger)axis k:(NSUInteger)k name:(NSString *)name
{
  v10 = source;
  v11 = name;
  v12 = [(MPSGraph *)self constantWithScalar:536870944 dataType:axis];
  v13 = [(MPSGraph *)self constantWithScalar:536870944 dataType:k];
  v14 = [(MPSGraph *)self topKWithSourceTensor:v10 axisTensor:v12 kTensor:v13 name:v11];

  return v14;
}

- (NSArray)bottomKWithSourceTensor:(MPSGraphTensor *)source axis:(NSInteger)axis k:(NSUInteger)k name:(NSString *)name
{
  v10 = source;
  v11 = name;
  v12 = [(MPSGraph *)self constantWithScalar:536870944 dataType:axis];
  v13 = [(MPSGraph *)self constantWithScalar:536870944 dataType:k];
  v14 = [(MPSGraph *)self bottomKWithSourceTensor:v10 axisTensor:v12 kTensor:v13 name:v11];

  return v14;
}

- (NSArray)topKWithSourceTensor:(MPSGraphTensor *)source k:(NSUInteger)k name:(NSString *)name
{
  v8 = source;
  v9 = name;
  v10 = [(MPSGraph *)self constantWithScalar:536870944 dataType:-1.0];
  v11 = [(MPSGraph *)self constantWithScalar:536870944 dataType:k];
  v12 = [(MPSGraph *)self topKWithSourceTensor:v8 axisTensor:v10 kTensor:v11 name:v9];

  return v12;
}

- (MPSGraphTensor)topKWithGradientTensor:(MPSGraphTensor *)gradient source:(MPSGraphTensor *)source k:(NSUInteger)k name:(NSString *)name
{
  v10 = gradient;
  v11 = source;
  v12 = name;
  v13 = [(MPSGraph *)self constantWithScalar:32 dataType:k];
  v14 = [(MPSGraph *)self topKWithGradientTensor:v10 source:v11 kTensor:v13 name:v12];

  return v14;
}

- (MPSGraphTensor)topKWithGradientTensor:(MPSGraphTensor *)gradient source:(MPSGraphTensor *)source axis:(NSInteger)axis k:(NSUInteger)k name:(NSString *)name
{
  v12 = gradient;
  v13 = source;
  v14 = name;
  v15 = [(MPSGraph *)self constantWithScalar:536870944 dataType:axis];
  v16 = [(MPSGraph *)self constantWithScalar:32 dataType:k];
  v17 = [(MPSGraph *)self topKWithGradientTensor:v12 source:v13 axisTensor:v15 kTensor:v16 name:v14];

  return v17;
}

- (MPSGraphTensor)bottomKWithGradientTensor:(MPSGraphTensor *)gradient source:(MPSGraphTensor *)source axis:(NSInteger)axis k:(NSUInteger)k name:(NSString *)name
{
  v12 = gradient;
  v13 = source;
  v14 = name;
  v15 = [(MPSGraph *)self constantWithScalar:536870944 dataType:axis];
  v16 = [(MPSGraph *)self constantWithScalar:32 dataType:k];
  v17 = [(MPSGraph *)self bottomKWithGradientTensor:v12 source:v13 axisTensor:v15 kTensor:v16 name:v14];

  return v17;
}

- (MPSGraphTensor)topKWithGradientTensor:(MPSGraphTensor *)gradient source:(MPSGraphTensor *)source kTensor:(MPSGraphTensor *)kTensor name:(NSString *)name
{
  v10 = gradient;
  v11 = source;
  v12 = kTensor;
  v13 = name;
  v14 = [(MPSGraph *)self constantWithScalar:536870944 dataType:-1.0];
  v15 = [(MPSGraph *)self topKWithGradientTensor:v10 source:v11 axisTensor:v14 kTensor:v12 name:v13];

  return v15;
}

- (MPSGraphTensor)topKWithGradientTensor:(MPSGraphTensor *)gradient source:(MPSGraphTensor *)source axisTensor:(MPSGraphTensor *)axisTensor kTensor:(MPSGraphTensor *)kTensor name:(NSString *)name
{
  v24[4] = *MEMORY[0x1E69E9840];
  v12 = gradient;
  v13 = source;
  v14 = axisTensor;
  v15 = kTensor;
  v16 = name;
  v17 = [(MPSGraph *)self fixCastIntTensor:v15 toSignedness:1 name:v16];

  v18 = [MPSGraphTopKGradientOp alloc];
  v24[0] = v13;
  v24[1] = v12;
  v24[2] = v14;
  v24[3] = v17;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
  v20 = [(MPSGraphTopKGradientOp *)v18 initWithGraph:self inputTensors:v19 controlDependencies:MEMORY[0x1E695E0F0] smallest:0 name:v16];

  outputTensors = [(MPSGraphOperation *)v20 outputTensors];
  v22 = [outputTensors objectAtIndexedSubscript:0];

  return v22;
}

- (MPSGraphTensor)bottomKWithGradientTensor:(MPSGraphTensor *)gradient source:(MPSGraphTensor *)source axisTensor:(MPSGraphTensor *)axisTensor kTensor:(MPSGraphTensor *)kTensor name:(NSString *)name
{
  v24[4] = *MEMORY[0x1E69E9840];
  v12 = gradient;
  v13 = source;
  v14 = axisTensor;
  v15 = kTensor;
  v16 = name;
  v17 = [(MPSGraph *)self fixCastIntTensor:v15 toSignedness:1 name:v16];

  v18 = [MPSGraphTopKGradientOp alloc];
  v24[0] = v13;
  v24[1] = v12;
  v24[2] = v14;
  v24[3] = v17;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
  v20 = [(MPSGraphTopKGradientOp *)v18 initWithGraph:self inputTensors:v19 controlDependencies:MEMORY[0x1E695E0F0] smallest:1 name:v16];

  outputTensors = [(MPSGraphOperation *)v20 outputTensors];
  v22 = [outputTensors objectAtIndexedSubscript:0];

  return v22;
}

- (id)costVolumeWithRefTensor:(id)tensor inputTensor:(id)inputTensor coordinatesTensor:(id)coordinatesTensor windowSizes:(id)sizes layout:(unint64_t)layout normalizeCoordinates:(BOOL)coordinates relativeCoordinates:(BOOL)relativeCoordinates coordinateIs1DInWidth:(BOOL)self0 similarityType:(unint64_t)self1 name:(id)self2
{
  coordinatesCopy = coordinates;
  v35[3] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  inputTensorCopy = inputTensor;
  coordinatesTensorCopy = coordinatesTensor;
  sizesCopy = sizes;
  nameCopy = name;
  v30 = inputTensorCopy;
  v19 = [MPSGraphCostVolumeOp alloc];
  v35[0] = tensorCopy;
  v35[1] = inputTensorCopy;
  v35[2] = coordinatesTensorCopy;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:3];
  v21 = [sizesCopy objectAtIndexedSubscript:0];
  integerValue = [v21 integerValue];
  v23 = [sizesCopy objectAtIndexedSubscript:1];
  integerValue2 = [v23 integerValue];
  BYTE1(v29) = width;
  LOBYTE(v29) = 1;
  v25 = [(MPSGraphCostVolumeOp *)v19 initWithGraph:self inputTensors:v20 controlDependencies:MEMORY[0x1E695E0F0] layout:layout normalizeCoordinates:coordinatesCopy relativeCoordinates:relativeCoordinates alignCorners:v29 coordinateIs1DInWidth:0 paddingMode:1 samplingMode:4 nearestRoundingMode:type similarityType:integerValue windowWidth:integerValue2 windowHeight:nameCopy name:?];

  outputTensors = [(MPSGraphOperation *)v25 outputTensors];
  v27 = [outputTensors objectAtIndexedSubscript:0];

  return v27;
}

- (MPSGraphTensor)nonMaximumSuppressionWithBoxesTensor:(MPSGraphTensor *)boxesTensor scoresTensor:(MPSGraphTensor *)scoresTensor IOUThreshold:(float)IOUThreshold scoreThreshold:(float)scoreThreshold perClassSuppression:(BOOL)perClassSuppression coordinateMode:(MPSGraphNonMaximumSuppressionCoordinateMode)coordinateMode name:(NSString *)name
{
  v11 = perClassSuppression;
  v29[4] = *MEMORY[0x1E69E9840];
  v16 = boxesTensor;
  v17 = scoresTensor;
  v18 = name;
  v19 = [(MPSGraph *)self constantWithScalar:268435488 dataType:IOUThreshold];
  v20 = [(MPSGraph *)self constantWithScalar:268435488 dataType:scoreThreshold];
  v21 = [MPSGraphNonMaximumSuppressionOp alloc];
  v29[0] = v16;
  v29[1] = v17;
  v29[2] = v19;
  v29[3] = v20;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
  *&v23 = IOUThreshold;
  *&v24 = scoreThreshold;
  v25 = [(MPSGraphNonMaximumSuppressionOp *)v21 initWithGraph:self inputTensors:v22 controlDependencies:MEMORY[0x1E695E0F0] iouThreshold:v11 scoreThreshold:coordinateMode perClassSuppression:v18 coordinateMode:v23 name:v24];

  outputTensors = [(MPSGraphOperation *)v25 outputTensors];
  v27 = [outputTensors objectAtIndexedSubscript:0];

  return v27;
}

- (MPSGraphTensor)nonMaximumSuppressionWithBoxesTensor:(MPSGraphTensor *)boxesTensor scoresTensor:(MPSGraphTensor *)scoresTensor classIndicesTensor:(MPSGraphTensor *)classIndicesTensor IOUThreshold:(float)IOUThreshold scoreThreshold:(float)scoreThreshold perClassSuppression:(BOOL)perClassSuppression coordinateMode:(MPSGraphNonMaximumSuppressionCoordinateMode)coordinateMode name:(NSString *)name
{
  v12 = perClassSuppression;
  v32[5] = *MEMORY[0x1E69E9840];
  v31 = boxesTensor;
  v18 = scoresTensor;
  v19 = classIndicesTensor;
  v20 = name;
  v21 = [(MPSGraph *)self constantWithScalar:268435488 dataType:IOUThreshold];
  v22 = [(MPSGraph *)self constantWithScalar:268435488 dataType:scoreThreshold];
  v23 = [MPSGraphNonMaximumSuppressionOp alloc];
  v32[0] = v31;
  v32[1] = v18;
  v32[2] = v19;
  v32[3] = v21;
  v32[4] = v22;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:5];
  *&v25 = IOUThreshold;
  *&v26 = scoreThreshold;
  v27 = [(MPSGraphNonMaximumSuppressionOp *)v23 initWithGraph:self inputTensors:v24 controlDependencies:MEMORY[0x1E695E0F0] iouThreshold:v12 scoreThreshold:coordinateMode perClassSuppression:v20 coordinateMode:v25 name:v26];

  outputTensors = [(MPSGraphOperation *)v27 outputTensors];
  v29 = [outputTensors objectAtIndexedSubscript:0];

  return v29;
}

- (MPSGraphTensor)sparseTensorWithType:(MPSGraphSparseStorageType)sparseStorageType tensors:(NSArray *)inputTensorArray shape:(MPSShape *)shape dataType:(MPSDataType)dataType name:(NSString *)name
{
  v8 = *&dataType;
  v12 = inputTensorArray;
  v13 = shape;
  v14 = name;
  v15 = [[MPSGraphSparseTensorOp alloc] initWithGraph:self sparseStorageType:sparseStorageType inputTensors:v12 shape:v13 dataType:v8 name:v14];
  outputTensors = [(MPSGraphOperation *)v15 outputTensors];
  v17 = [outputTensors objectAtIndexedSubscript:0];

  return v17;
}

- (MPSGraphTensor)sparseTensorWithDescriptor:(MPSGraphCreateSparseOpDescriptor *)sparseDescriptor tensors:(NSArray *)inputTensorArray shape:(MPSShape *)shape name:(NSString *)name
{
  v10 = sparseDescriptor;
  v11 = inputTensorArray;
  v12 = shape;
  v13 = name;
  v14 = [[MPSGraphSparseTensorOp alloc] initWithGraph:self sparseStorageType:[(MPSGraphCreateSparseOpDescriptor *)v10 sparseStorageType] inputTensors:v11 shape:v12 dataType:[(MPSGraphCreateSparseOpDescriptor *)v10 dataType] name:v13];
  outputTensors = [(MPSGraphOperation *)v14 outputTensors];
  v16 = [outputTensors objectAtIndexedSubscript:0];

  return v16;
}

- (MPSGraphTensor)placeholderWithShape:(MPSShape *)shape dataType:(MPSDataType)dataType name:(NSString *)name
{
  v6 = *&dataType;
  v8 = shape;
  v9 = name;
  v10 = [[MPSGraphPlaceholderOp alloc] initWithGraph:self shape:v8 dataType:v6 name:v9];
  placeholderMap = self->_placeholderMap;
  outputTensors = [(MPSGraphOperation *)v10 outputTensors];
  v13 = [outputTensors objectAtIndexedSubscript:0];
  name = [(MPSGraphOperation *)v10 name];
  [(NSMutableDictionary *)placeholderMap setObject:v13 forKey:name];

  placeholderArray = self->_placeholderArray;
  outputTensors2 = [(MPSGraphOperation *)v10 outputTensors];
  v17 = [outputTensors2 objectAtIndexedSubscript:0];
  [(NSMutableArray *)placeholderArray addObject:v17];

  outputTensors3 = [(MPSGraphOperation *)v10 outputTensors];
  v19 = [outputTensors3 objectAtIndexedSubscript:0];

  return v19;
}

- (MPSGraphTensor)placeholderWithShape:(MPSShape *)shape name:(NSString *)name
{
  v4 = [(MPSGraph *)self placeholderWithShape:shape dataType:268435488 name:name];

  return v4;
}

- (MPSGraphTensor)constantWithData:(NSData *)data shape:(MPSShape *)shape dataType:(MPSDataType)dataType
{
  v5 = *&dataType;
  v8 = data;
  v9 = shape;
  [(MPSShape *)v9 count];
  if (![(MPSShape *)v9 count]&& MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  for (i = 0; i < [(MPSShape *)v9 count:v19]; ++i)
  {
    v11 = [(MPSShape *)v9 objectAtIndexedSubscript:i];
    [v11 integerValue];

    v12 = [(MPSShape *)v9 objectAtIndexedSubscript:i];
    integerValue = [v12 integerValue];

    if (integerValue < 0)
    {
      if (MTLReportFailureTypeEnabled())
      {
        v14 = [(MPSShape *)v9 objectAtIndexedSubscript:i];
        v19 = i;
        integerValue2 = [v14 integerValue];
        MTLReportFailure();
      }
    }
  }

  v15 = [[MPSGraphConstantOp alloc] initWithGraph:self data:v8 shape:v9 dataType:v5 isSplat:0 name:0];
  outputTensors = [(MPSGraphOperation *)v15 outputTensors];
  v17 = [outputTensors objectAtIndexedSubscript:0];

  return v17;
}

- (MPSGraphTensor)constantWithScalar:(double)scalar shape:(MPSShape *)shape dataType:(MPSDataType)dataType
{
  v5 = *&dataType;
  v8 = shape;
  if ([(MPSShape *)v8 count]== 1)
  {
    v9 = [(MPSShape *)v8 objectAtIndexedSubscript:0];
    integerValue = [v9 integerValue];

    if (integerValue == -1)
    {

      v8 = MEMORY[0x1E695E0F0];
    }
  }

  for (i = 0; i < [(MPSShape *)v8 count:v21]; ++i)
  {
    v12 = [(MPSShape *)v8 objectAtIndexedSubscript:i];
    [v12 integerValue];

    v13 = [(MPSShape *)v8 objectAtIndexedSubscript:i];
    integerValue2 = [v13 integerValue];

    if (integerValue2 <= 0)
    {
      if (MTLReportFailureTypeEnabled())
      {
        v15 = [(MPSShape *)v8 objectAtIndexedSubscript:i];
        v21 = i;
        integerValue3 = [v15 integerValue];
        MTLReportFailure();
      }
    }
  }

  v16 = getConstantDataForScalar(v5, scalar);
  v17 = [[MPSGraphConstantOp alloc] initWithGraph:self data:v16 shape:v8 dataType:v5 isSplat:1 name:0];
  outputTensors = [(MPSGraphOperation *)v17 outputTensors];
  v19 = [outputTensors objectAtIndexedSubscript:0];

  return v19;
}

- (MPSGraphTensor)constantWithRealPart:(double)realPart imaginaryPart:(double)imaginaryPart shape:(MPSShape *)shape dataType:(MPSDataType)dataType
{
  v6 = *&dataType;
  v10 = shape;
  if ([(MPSShape *)v10 count]== 1)
  {
    v11 = [(MPSShape *)v10 objectAtIndexedSubscript:0];
    integerValue = [v11 integerValue];

    if (integerValue == -1)
    {

      v10 = MEMORY[0x1E695E0F0];
    }
  }

  for (i = 0; i < [(MPSShape *)v10 count:v23]; ++i)
  {
    v14 = [(MPSShape *)v10 objectAtIndexedSubscript:i];
    [v14 integerValue];

    v15 = [(MPSShape *)v10 objectAtIndexedSubscript:i];
    integerValue2 = [v15 integerValue];

    if (integerValue2 <= 0)
    {
      if (MTLReportFailureTypeEnabled())
      {
        v17 = [(MPSShape *)v10 objectAtIndexedSubscript:i];
        v23 = i;
        integerValue3 = [v17 integerValue];
        MTLReportFailure();
      }
    }
  }

  v18 = getConstantDataForComplexScalar(v6, realPart, imaginaryPart);
  v19 = [[MPSGraphConstantOp alloc] initWithGraph:self data:v18 shape:v10 dataType:v6 isSplat:1 name:0];
  outputTensors = [(MPSGraphOperation *)v19 outputTensors];
  v21 = [outputTensors objectAtIndexedSubscript:0];

  return v21;
}

- (MPSGraphTensor)variableWithData:(NSData *)data shape:(MPSShape *)shape dataType:(MPSDataType)dataType name:(NSString *)name
{
  v7 = *&dataType;
  v10 = data;
  v11 = shape;
  v12 = name;
  v13 = [[MPSGraphVariableOp alloc] initWithGraph:self shape:v11 dataType:v7 name:v12];
  outputTensors = [(MPSGraphOperation *)v13 outputTensors];
  v15 = [outputTensors objectAtIndexedSubscript:0];
  value = [v15 value];

  v17 = [[MPSGraphVariable alloc] initVariableWithData:v10 value:value];
  variable = v13->_variable;
  v13->_variable = v17;

  variableOpsMap = self->_variableOpsMap;
  name = [(MPSGraphOperation *)v13 name];
  [(NSMutableDictionary *)variableOpsMap setObject:v13 forKey:name];

  [(NSMutableArray *)self->_variableOps addObject:v13];
  outputTensors2 = [(MPSGraphOperation *)v13 outputTensors];
  v22 = [outputTensors2 objectAtIndexedSubscript:0];

  return v22;
}

- (id)variableFromTensorWithTensor:(id)tensor name:(id)name
{
  v4 = [(MPSGraph *)self varFromTensorWithTensor:tensor name:0];

  return v4;
}

- (MPSGraphTensor)readVariable:(MPSGraphTensor *)variable name:(NSString *)name
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = variable;
  v6 = [MPSGraphReadVariableOp alloc];
  v12[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v8 = [(MPSGraphOperation *)v6 initWithGraph:self inputTensors:v7 controlDependencies:MEMORY[0x1E695E0F0] name:0];

  outputTensors = [(MPSGraphOperation *)v8 outputTensors];
  v10 = [outputTensors objectAtIndexedSubscript:0];

  return v10;
}

- (MPSGraphOperation)assignVariable:(MPSGraphTensor *)variable withValueOfTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v15[2] = *MEMORY[0x1E69E9840];
  v8 = variable;
  v9 = tensor;
  v10 = name;
  v11 = [MPSGraphAssignVariableOp alloc];
  v15[0] = v8;
  v15[1] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v13 = [(MPSGraphOperation *)v11 initWithGraph:self inputTensors:v12 controlDependencies:MEMORY[0x1E695E0F0] name:v10];

  return v13;
}

- (id)createTexture:(id)texture withPixelFormat:(unint64_t)format isCompressed:(BOOL)compressed name:(id)name
{
  compressedCopy = compressed;
  v18[1] = *MEMORY[0x1E69E9840];
  textureCopy = texture;
  nameCopy = name;
  v12 = [MPSGraphCreateTextureTensorOp alloc];
  v18[0] = textureCopy;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v14 = [(MPSGraphCreateTextureTensorOp *)v12 initWithGraph:self inputTensors:v13 controlDependencies:MEMORY[0x1E695E0F0] pixelFormat:format isCompressed:compressedCopy name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v14 outputTensors];
  v16 = [outputTensors objectAtIndexedSubscript:0];

  return v16;
}

- (MPSGraphTensor)sortWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis descending:(BOOL)descending name:(NSString *)name
{
  v7 = descending;
  v19[2] = *MEMORY[0x1E69E9840];
  v10 = tensor;
  v11 = name;
  v12 = [(MPSGraph *)self constantWithScalar:536870944 dataType:axis];
  v13 = [MPSGraphSortOp alloc];
  v19[0] = v10;
  v19[1] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v15 = [(MPSGraphSortOp *)v13 initWithGraph:self inputTensors:v14 controlDependencies:MEMORY[0x1E695E0F0] descending:v7 name:v11];

  outputTensors = [(MPSGraphOperation *)v15 outputTensors];
  v17 = [outputTensors objectAtIndexedSubscript:0];

  return v17;
}

- (MPSGraphTensor)sortWithTensor:(MPSGraphTensor *)tensor axisTensor:(MPSGraphTensor *)axisTensor descending:(BOOL)descending name:(NSString *)name
{
  v7 = descending;
  v19[2] = *MEMORY[0x1E69E9840];
  v10 = tensor;
  v11 = axisTensor;
  v12 = name;
  v13 = [MPSGraphSortOp alloc];
  v19[0] = v10;
  v19[1] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v15 = [(MPSGraphSortOp *)v13 initWithGraph:self inputTensors:v14 controlDependencies:MEMORY[0x1E695E0F0] descending:v7 name:v12];

  outputTensors = [(MPSGraphOperation *)v15 outputTensors];
  v17 = [outputTensors objectAtIndexedSubscript:0];

  return v17;
}

- (MPSGraphTensor)sortWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis name:(NSString *)name
{
  v5 = [(MPSGraph *)self sortWithTensor:tensor axis:axis descending:0 name:name];

  return v5;
}

- (MPSGraphTensor)sortWithTensor:(MPSGraphTensor *)tensor axisTensor:(MPSGraphTensor *)axisTensor name:(NSString *)name
{
  v5 = [(MPSGraph *)self sortWithTensor:tensor axisTensor:axisTensor descending:0 name:name];

  return v5;
}

- (MPSGraphTensor)argSortWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis descending:(BOOL)descending name:(NSString *)name
{
  v7 = descending;
  v19[2] = *MEMORY[0x1E69E9840];
  v10 = tensor;
  v11 = name;
  v12 = [(MPSGraph *)self constantWithScalar:536870944 dataType:axis];
  v13 = [MPSGraphArgSortOp alloc];
  v19[0] = v10;
  v19[1] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v15 = [(MPSGraphArgSortOp *)v13 initWithGraph:self inputTensors:v14 controlDependencies:MEMORY[0x1E695E0F0] descending:v7 name:v11];

  outputTensors = [(MPSGraphOperation *)v15 outputTensors];
  v17 = [outputTensors objectAtIndexedSubscript:1];

  return v17;
}

- (MPSGraphTensor)argSortWithTensor:(MPSGraphTensor *)tensor axisTensor:(MPSGraphTensor *)axisTensor descending:(BOOL)descending name:(NSString *)name
{
  v7 = descending;
  v19[2] = *MEMORY[0x1E69E9840];
  v10 = tensor;
  v11 = axisTensor;
  v12 = name;
  v13 = [MPSGraphArgSortOp alloc];
  v19[0] = v10;
  v19[1] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v15 = [(MPSGraphArgSortOp *)v13 initWithGraph:self inputTensors:v14 controlDependencies:MEMORY[0x1E695E0F0] descending:v7 name:v12];

  outputTensors = [(MPSGraphOperation *)v15 outputTensors];
  v17 = [outputTensors objectAtIndexedSubscript:1];

  return v17;
}

- (MPSGraphTensor)argSortWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis name:(NSString *)name
{
  v5 = [(MPSGraph *)self argSortWithTensor:tensor axis:axis descending:0 name:name];

  return v5;
}

- (MPSGraphTensor)argSortWithTensor:(MPSGraphTensor *)tensor axisTensor:(MPSGraphTensor *)axisTensor name:(NSString *)name
{
  v5 = [(MPSGraph *)self argSortWithTensor:tensor axisTensor:axisTensor descending:0 name:name];

  return v5;
}

- (id)biasAddWithTensor:(id)tensor biases:(id)biases dataLayout:(unint64_t)layout name:(id)name
{
  v19[2] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  biasesCopy = biases;
  nameCopy = name;
  v13 = [MPSGraphBiasAddOp alloc];
  v19[0] = tensorCopy;
  v19[1] = biasesCopy;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v15 = [(MPSGraphBiasAddOp *)v13 initWithGraph:self inputTensors:v14 controlDependencies:MEMORY[0x1E695E0F0] dataLayout:layout name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v15 outputTensors];
  v17 = [outputTensors objectAtIndexedSubscript:0];

  return v17;
}

- (MPSGraphTensor)reLUWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v8 = [MPSGraphReLUOp alloc];
  v14[0] = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v10 = [(MPSGraphOperation *)v8 initWithGraph:self inputTensors:v9 controlDependencies:MEMORY[0x1E695E0F0] name:v7];

  outputTensors = [(MPSGraphOperation *)v10 outputTensors];
  v12 = [outputTensors objectAtIndexedSubscript:0];

  return v12;
}

- (MPSGraphTensor)reLUGradientWithIncomingGradient:(MPSGraphTensor *)gradient sourceTensor:(MPSGraphTensor *)source name:(NSString *)name
{
  v8 = gradient;
  v9 = source;
  v10 = name;
  v11 = [(MPSGraph *)self constantWithScalar:&unk_1F5B77798 shape:[(MPSGraphTensor *)v9 dataType] dataType:0.0];
  if (v10)
  {
    v12 = [(NSString *)v10 stringByAppendingString:@"/lessThanOrEqualTo"];
  }

  else
  {
    v12 = @"reLUGrad/lessThanOrEqualTo";
  }

  v13 = [(MPSGraph *)self greaterThanWithPrimaryTensor:v9 secondaryTensor:v11 name:v12];
  if (v10)
  {

    v14 = [(NSString *)v10 stringByAppendingString:@"/select"];
  }

  else
  {
    v14 = @"reLUGrad/multiplication";
  }

  v15 = [(MPSGraph *)self multiplicationWithPrimaryTensor:v8 secondaryTensor:v13 name:v14];
  if (v10)
  {
  }

  return v15;
}

- (MPSGraphTensor)leakyReLUWithTensor:(MPSGraphTensor *)tensor alpha:(double)alpha name:(NSString *)name
{
  v8 = tensor;
  v9 = @"leakyReLU";
  if (name)
  {
    v9 = name;
  }

  v10 = v9;
  v11 = [(MPSGraph *)self constantWithScalar:&unk_1F5B777B0 shape:[(MPSGraphTensor *)v8 dataType] dataType:alpha];
  v12 = [(MPSGraph *)self leakyReLUWithTensor:v8 alphaTensor:v11 name:v10];

  return v12;
}

- (MPSGraphTensor)leakyReLUWithTensor:(MPSGraphTensor *)tensor alphaTensor:(MPSGraphTensor *)alphaTensor name:(NSString *)name
{
  v17[2] = *MEMORY[0x1E69E9840];
  v8 = tensor;
  v9 = alphaTensor;
  v10 = name;
  v11 = [MPSGraphLeakyReLUOp alloc];
  v17[0] = v8;
  v17[1] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v13 = [(MPSGraphOperation *)v11 initWithGraph:self inputTensors:v12 controlDependencies:MEMORY[0x1E695E0F0] name:v10];

  outputTensors = [(MPSGraphOperation *)v13 outputTensors];
  v15 = [outputTensors objectAtIndexedSubscript:0];

  return v15;
}

- (MPSGraphTensor)leakyReLUGradientWithIncomingGradient:(MPSGraphTensor *)gradient sourceTensor:(MPSGraphTensor *)source alphaTensor:(MPSGraphTensor *)alphaTensor name:(NSString *)name
{
  v10 = gradient;
  v11 = source;
  v12 = alphaTensor;
  v13 = name;
  v14 = [(MPSGraph *)self constantWithScalar:&unk_1F5B777C8 shape:[(MPSGraphTensor *)v10 dataType] dataType:0.0];
  v15 = [(MPSGraph *)self constantWithScalar:&unk_1F5B777E0 shape:[(MPSGraphTensor *)v10 dataType] dataType:1.0];
  if (v13)
  {
    v16 = [(NSString *)v13 stringByAppendingString:@"/lessThan"];
  }

  else
  {
    v16 = @"leakyReLUGrad/lessThan";
  }

  v17 = [(MPSGraph *)self lessThanWithPrimaryTensor:v11 secondaryTensor:v14 name:v16];
  if (v13)
  {

    v18 = [(NSString *)v13 stringByAppendingString:@"/select"];
  }

  else
  {
    v18 = @"leakyReLUGrad/select";
  }

  v19 = [(MPSGraph *)self selectWithPredicateTensor:v17 truePredicateTensor:v12 falsePredicateTensor:v15 name:v18];
  if (v13)
  {

    v20 = [(NSString *)v13 stringByAppendingString:@"/multiplication_2"];
  }

  else
  {
    v20 = @"leakyReLUGrad/multiplication_2";
  }

  v21 = [(MPSGraph *)self multiplicationWithPrimaryTensor:v10 secondaryTensor:v19 name:v20];
  if (v13)
  {
  }

  return v21;
}

- (MPSGraphTensor)sigmoidWithTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v8 = [MPSGraphSigmoidOp alloc];
  v14[0] = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v10 = [(MPSGraphOperation *)v8 initWithGraph:self inputTensors:v9 controlDependencies:MEMORY[0x1E695E0F0] name:v7];

  outputTensors = [(MPSGraphOperation *)v10 outputTensors];
  v12 = [outputTensors objectAtIndexedSubscript:0];

  return v12;
}

- (MPSGraphTensor)sigmoidGradientWithIncomingGradient:(MPSGraphTensor *)gradient sourceTensor:(MPSGraphTensor *)source name:(NSString *)name
{
  v8 = gradient;
  v9 = source;
  v10 = name;
  v22 = 1065353216;
  v11 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:&v22 length:4 freeWhenDone:0];
  v12 = [(MPSGraph *)self constantWithData:v11 shape:&unk_1F5B777F8 dataType:[(MPSGraphTensor *)v9 dataType]];

  if (v10)
  {
    v13 = [(NSString *)v10 stringByAppendingString:@"/sigmoid"];
  }

  else
  {
    v13 = @"sigmoidGrad/sigmoid";
  }

  v14 = [(MPSGraph *)self sigmoidWithTensor:v9 name:v13];
  if (v10)
  {

    v15 = [(NSString *)v10 stringByAppendingString:@"/subtraction"];
  }

  else
  {
    v15 = @"sigmoidGrad/subtraction";
  }

  v16 = [(MPSGraph *)self subtractionWithPrimaryTensor:v12 secondaryTensor:v14 name:v15];
  if (v10)
  {

    v17 = [(NSString *)v10 stringByAppendingString:@"/multiplication"];
  }

  else
  {
    v17 = @"sigmoidGrad/multiplication";
  }

  v18 = [(MPSGraph *)self multiplicationWithPrimaryTensor:v16 secondaryTensor:v14 name:v17];
  if (v10)
  {

    v19 = [(NSString *)v10 stringByAppendingString:@"/multiplication_1"];
  }

  else
  {
    v19 = @"sigmoidGrad/multiplication_1";
  }

  v20 = [(MPSGraph *)self multiplicationWithPrimaryTensor:v8 secondaryTensor:v18 name:v19];
  if (v10)
  {
  }

  return v20;
}

- (MPSGraphTensor)softMaxWithTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis name:(NSString *)name
{
  v8 = tensor;
  v9 = name;
  v10 = v9;
  if (v9)
  {
    v11 = [(NSString *)v9 stringByAppendingString:@"/reductionMaximum"];
  }

  else
  {
    v11 = @"softMax/reductionMaximum";
  }

  v12 = [(MPSGraph *)self reductionMaximumWithTensor:v8 axis:axis name:v11];
  if (v10)
  {
  }

  operation = [v12 operation];
  [operation setStopGradient:1];

  if (v10)
  {
    v14 = [(NSString *)v10 stringByAppendingString:@"/subtraction"];
  }

  else
  {
    v14 = @"softMax/subtraction";
  }

  v15 = [(MPSGraph *)self subtractionWithPrimaryTensor:v8 secondaryTensor:v12 name:v14];
  if (v10)
  {

    v16 = [(NSString *)v10 stringByAppendingString:@"/exponent"];
  }

  else
  {
    v16 = @"softMax/exponent";
  }

  v17 = [(MPSGraph *)self exponentWithTensor:v15 name:v16];
  if (v10)
  {

    v18 = [(NSString *)v10 stringByAppendingString:@"/reductionSum"];
  }

  else
  {
    v18 = @"softMax/reductionSum";
  }

  v19 = [(MPSGraph *)self reductionSumWithTensor:v17 axis:axis name:v18];
  if (v10)
  {

    v20 = [(NSString *)v10 stringByAppendingString:@"/division"];
  }

  else
  {
    v20 = @"softMax/division";
  }

  v21 = [(MPSGraph *)self divisionWithPrimaryTensor:v17 secondaryTensor:v19 name:v20];
  if (v10)
  {
  }

  return v21;
}

- (MPSGraphTensor)softMaxGradientWithIncomingGradient:(MPSGraphTensor *)gradient sourceTensor:(MPSGraphTensor *)source axis:(NSInteger)axis name:(NSString *)name
{
  v10 = gradient;
  v11 = name;
  v12 = [(MPSGraph *)self softMaxWithTensor:source axis:axis name:@"softMaxGradient/softMax"];
  if (v11)
  {
    v13 = [(NSString *)v11 stringByAppendingString:@"/multiplication"];
  }

  else
  {
    v13 = @"softMaxGradient/multiplication";
  }

  v14 = [(MPSGraph *)self multiplicationWithPrimaryTensor:v12 secondaryTensor:v10 name:v13];
  if (v11)
  {

    v15 = [(NSString *)v11 stringByAppendingString:@"/subtraction"];
  }

  else
  {
    v15 = @"softMaxGradient/subtraction";
  }

  v16 = [(MPSGraph *)self subtractionWithPrimaryTensor:v10 secondaryTensor:v14 name:v15];
  if (v11)
  {

    v17 = [(NSString *)v11 stringByAppendingString:@"/multiplication_1"];
  }

  else
  {
    v17 = @"softMaxGradient/multiplication_1";
  }

  v18 = [(MPSGraph *)self multiplicationWithPrimaryTensor:v16 secondaryTensor:v12 name:v17];
  if (v11)
  {
  }

  return v18;
}

- (id)tensorToBufferWithTensor:(id)tensor shape:(id)shape type:(unsigned int)type interleave:(id)interleave isTensorBufferOp:(BOOL)op isChannelAndInterleaveSame:(BOOL)same name:(id)name
{
  v12 = *&type;
  v26[1] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  shapeCopy = shape;
  interleaveCopy = interleave;
  nameCopy = name;
  v19 = [MPSGraphTensorToBufferOp alloc];
  v26[0] = tensorCopy;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  BYTE1(v25) = same;
  LOBYTE(v25) = op;
  v21 = [(MPSGraphTensorToBufferOp *)v19 initWithGraph:self inputTensors:v20 controlDependencies:MEMORY[0x1E695E0F0] shape:shapeCopy type:v12 interleave:interleaveCopy isTensorBufferOp:v25 isChannelAndInterleaveSame:nameCopy name:?];

  outputTensors = [(MPSGraphOperation *)v21 outputTensors];
  v23 = [outputTensors objectAtIndexedSubscript:0];

  return v23;
}

- (id)tensorToBufferWithTensor:(id)tensor name:(id)name
{
  v14[1] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  nameCopy = name;
  v8 = [MPSGraphTensorToBufferOp alloc];
  v14[0] = tensorCopy;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v10 = [(MPSGraphOperation *)v8 initWithGraph:self inputTensors:v9 controlDependencies:MEMORY[0x1E695E0F0] name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v10 outputTensors];
  v12 = [outputTensors objectAtIndexedSubscript:0];

  return v12;
}

- (id)bufferToTensorWithTensor:(id)tensor shape:(id)shape type:(unsigned int)type interleave:(id)interleave isTensorBufferOp:(BOOL)op isChannelAndInterleaveSame:(BOOL)same name:(id)name
{
  v12 = *&type;
  v26[1] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  shapeCopy = shape;
  interleaveCopy = interleave;
  nameCopy = name;
  v19 = [MPSGraphBufferToTensorOp alloc];
  v26[0] = tensorCopy;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  BYTE1(v25) = same;
  LOBYTE(v25) = op;
  v21 = [(MPSGraphBufferToTensorOp *)v19 initWithGraph:self inputTensors:v20 controlDependencies:MEMORY[0x1E695E0F0] shape:shapeCopy type:v12 interleave:interleaveCopy isTensorBufferOp:v25 isChannelAndInterleaveSame:nameCopy name:?];

  outputTensors = [(MPSGraphOperation *)v21 outputTensors];
  v23 = [outputTensors objectAtIndexedSubscript:0];

  return v23;
}

- (id)bufferToTensorWithTensor:(id)tensor name:(id)name
{
  v14[1] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  nameCopy = name;
  v8 = [MPSGraphBufferToTensorOp alloc];
  v14[0] = tensorCopy;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v10 = [(MPSGraphOperation *)v8 initWithGraph:self inputTensors:v9 controlDependencies:MEMORY[0x1E695E0F0] name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v10 outputTensors];
  v12 = [outputTensors objectAtIndexedSubscript:0];

  return v12;
}

- (MPSGraphTensor)fastFourierTransformWithTensor:(MPSGraphTensor *)tensor axesTensor:(MPSGraphTensor *)axesTensor descriptor:(MPSGraphFFTDescriptor *)descriptor name:(NSString *)name
{
  v20[2] = *MEMORY[0x1E69E9840];
  v10 = tensor;
  v11 = axesTensor;
  v12 = descriptor;
  v13 = name;
  v14 = [MPSGraphFFTOp alloc];
  v20[0] = v10;
  v20[1] = v11;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v16 = [(MPSGraphFFTOp *)v14 initWithGraph:self inputTensors:v15 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v12 name:v13];

  outputTensors = [(MPSGraphOperation *)v16 outputTensors];
  v18 = [outputTensors objectAtIndexedSubscript:0];

  return v18;
}

- (MPSGraphTensor)fastFourierTransformWithTensor:(MPSGraphTensor *)tensor axes:(NSArray *)axes descriptor:(MPSGraphFFTDescriptor *)descriptor name:(NSString *)name
{
  v10 = tensor;
  v11 = descriptor;
  v12 = name;
  v13 = axesToAxesTensor(self, axes);
  if (v13)
  {
    v14 = [(MPSGraph *)self fastFourierTransformWithTensor:v10 axesTensor:v13 descriptor:v11 name:v12];
  }

  else
  {
    v14 = v10;
  }

  v15 = v14;

  return v15;
}

- (MPSGraphTensor)realToHermiteanFFTWithTensor:(MPSGraphTensor *)tensor axes:(NSArray *)axes descriptor:(MPSGraphFFTDescriptor *)descriptor name:(NSString *)name
{
  v10 = tensor;
  v11 = descriptor;
  v12 = name;
  v13 = axesToAxesTensor(self, axes);
  if (v13)
  {
    v14 = [(MPSGraph *)self realToHermiteanFFTWithTensor:v10 axesTensor:v13 descriptor:v11 name:v12];
  }

  else
  {
    v14 = v10;
  }

  v15 = v14;

  return v15;
}

- (MPSGraphTensor)realToHermiteanFFTWithTensor:(MPSGraphTensor *)tensor axesTensor:(MPSGraphTensor *)axesTensor descriptor:(MPSGraphFFTDescriptor *)descriptor name:(NSString *)name
{
  v20[2] = *MEMORY[0x1E69E9840];
  v10 = tensor;
  v11 = axesTensor;
  v12 = descriptor;
  v13 = name;
  v14 = [MPSGraphRealToHermiteanFFTOp alloc];
  v20[0] = v10;
  v20[1] = v11;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v16 = [(MPSGraphRealToHermiteanFFTOp *)v14 initWithGraph:self inputTensors:v15 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v12 name:v13];

  outputTensors = [(MPSGraphOperation *)v16 outputTensors];
  v18 = [outputTensors objectAtIndexedSubscript:0];

  return v18;
}

- (MPSGraphTensor)HermiteanToRealFFTWithTensor:(MPSGraphTensor *)tensor axes:(NSArray *)axes descriptor:(MPSGraphFFTDescriptor *)descriptor name:(NSString *)name
{
  v10 = tensor;
  v11 = descriptor;
  v12 = name;
  v13 = axesToAxesTensor(self, axes);
  if (v13)
  {
    v14 = [(MPSGraph *)self HermiteanToRealFFTWithTensor:v10 axesTensor:v13 descriptor:v11 name:v12];
  }

  else
  {
    v14 = v10;
  }

  v15 = v14;

  return v15;
}

- (MPSGraphTensor)HermiteanToRealFFTWithTensor:(MPSGraphTensor *)tensor axesTensor:(MPSGraphTensor *)axesTensor descriptor:(MPSGraphFFTDescriptor *)descriptor name:(NSString *)name
{
  v20[2] = *MEMORY[0x1E69E9840];
  v10 = tensor;
  v11 = axesTensor;
  v12 = descriptor;
  v13 = name;
  v14 = [MPSGraphHermiteanToRealFFTOp alloc];
  v20[0] = v10;
  v20[1] = v11;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v16 = [(MPSGraphHermiteanToRealFFTOp *)v14 initWithGraph:self inputTensors:v15 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v12 name:v13];

  outputTensors = [(MPSGraphOperation *)v16 outputTensors];
  v18 = [outputTensors objectAtIndexedSubscript:0];

  return v18;
}

- (MPSGraphTensor)stochasticGradientDescentWithLearningRateTensor:(MPSGraphTensor *)learningRateTensor valuesTensor:(MPSGraphTensor *)valuesTensor gradientTensor:(MPSGraphTensor *)gradientTensor name:(NSString *)name
{
  v10 = learningRateTensor;
  v11 = valuesTensor;
  v12 = gradientTensor;
  v13 = name;
  v14 = v13;
  if (v13)
  {
    v15 = [(NSString *)v13 stringByAppendingString:@"/multiplication"];
  }

  else
  {
    v15 = @"stochasticGradientDescent/multiplication";
  }

  v16 = [(MPSGraph *)self multiplicationWithPrimaryTensor:v12 secondaryTensor:v10 name:v15];
  if (v14)
  {

    v17 = [(NSString *)v14 stringByAppendingString:@"/subtraction"];
  }

  else
  {
    v17 = @"stochasticGradientDescent/subtraction";
  }

  v18 = [(MPSGraph *)self subtractionWithPrimaryTensor:v11 secondaryTensor:v16 name:v17];
  if (v14)
  {
  }

  return v18;
}

- (MPSGraphOperation)applyStochasticGradientDescentWithLearningRateTensor:(MPSGraphTensor *)learningRateTensor variable:(MPSGraphVariableOp *)variable gradientTensor:(MPSGraphTensor *)gradientTensor name:(NSString *)name
{
  v10 = learningRateTensor;
  v11 = gradientTensor;
  v12 = name;
  outputTensors = [(MPSGraphOperation *)variable outputTensors];
  v14 = [outputTensors objectAtIndexedSubscript:0];

  v15 = [(MPSGraph *)self stochasticGradientDescentWithLearningRateTensor:v10 valuesTensor:v14 gradientTensor:v11 name:v12];
  if (v12)
  {
    v16 = [(NSString *)v12 stringByAppendingString:@"/assignUpdate"];
  }

  else
  {
    v16 = @"applyStochasticGradient/assignUpdate";
  }

  v17 = [(MPSGraph *)self assignVariable:v14 withValueOfTensor:v15 name:v16];
  if (v12)
  {
  }

  return v17;
}

- (id)momentumUpdateWithBetaTensor:(id)tensor momentumTensor:(id)momentumTensor gradientTensor:(id)gradientTensor name:(id)name
{
  tensorCopy = tensor;
  momentumTensorCopy = momentumTensor;
  gradientTensorCopy = gradientTensor;
  nameCopy = name;
  v13 = nameCopy;
  v14 = @"momentumUpdate";
  if (nameCopy)
  {
    v14 = nameCopy;
  }

  v15 = v14;
  v16 = -[MPSGraph constantWithScalar:shape:dataType:](self, "constantWithScalar:shape:dataType:", &unk_1F5B77810, [gradientTensorCopy dataType], 1.0);
  v17 = [(__CFString *)v15 stringByAppendingString:@"/sub"];
  v18 = [(MPSGraph *)self subtractionWithPrimaryTensor:v16 secondaryTensor:tensorCopy name:v17];

  v19 = [(__CFString *)v15 stringByAppendingString:@"/mul"];
  v20 = [(MPSGraph *)self multiplicationWithPrimaryTensor:tensorCopy secondaryTensor:momentumTensorCopy name:v19];

  v21 = [(__CFString *)v15 stringByAppendingString:@"/mul"];
  v22 = [(MPSGraph *)self multiplicationWithPrimaryTensor:v18 secondaryTensor:gradientTensorCopy name:v21];

  v23 = [(__CFString *)v15 stringByAppendingString:@"/add"];
  v24 = [(MPSGraph *)self additionWithPrimaryTensor:v20 secondaryTensor:v22 name:v23];

  return v24;
}

- (id)velocityUpdateWithBetaTensor:(id)tensor velocityTensor:(id)velocityTensor gradientTensor:(id)gradientTensor name:(id)name
{
  tensorCopy = tensor;
  velocityTensorCopy = velocityTensor;
  gradientTensorCopy = gradientTensor;
  nameCopy = name;
  v14 = nameCopy;
  v15 = @"velocityUpdate";
  if (nameCopy)
  {
    v15 = nameCopy;
  }

  v16 = v15;
  v29 = velocityTensorCopy;
  v28 = -[MPSGraph constantWithScalar:shape:dataType:](self, "constantWithScalar:shape:dataType:", &unk_1F5B77828, [gradientTensorCopy dataType], 1.0);
  v17 = [(__CFString *)v16 stringByAppendingString:@"/sub"];
  v18 = [(MPSGraph *)self subtractionWithPrimaryTensor:v28 secondaryTensor:tensorCopy name:v17];

  v19 = [(__CFString *)v16 stringByAppendingString:@"/square"];
  v20 = [(MPSGraph *)self squareWithTensor:gradientTensorCopy name:v19];

  v21 = [(__CFString *)v16 stringByAppendingString:@"/mul"];
  v22 = [(MPSGraph *)self multiplicationWithPrimaryTensor:tensorCopy secondaryTensor:velocityTensorCopy name:v21];

  v23 = [(__CFString *)v16 stringByAppendingString:@"/mul"];
  v24 = [(MPSGraph *)self multiplicationWithPrimaryTensor:v18 secondaryTensor:v20 name:v23];

  v25 = [(__CFString *)v16 stringByAppendingString:@"/add"];
  v26 = [(MPSGraph *)self additionWithPrimaryTensor:v22 secondaryTensor:v24 name:v25];

  return v26;
}

- (id)adamAssignWithInputVariableTensor:(id)tensor momentumVariableTensor:(id)variableTensor velocityVariableTensor:(id)velocityVariableTensor maximumVelocityVariableTensor:(id)maximumVelocityVariableTensor updates:(id)updates name:(id)name
{
  v39[2] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  variableTensorCopy = variableTensor;
  velocityVariableTensorCopy = velocityVariableTensor;
  maximumVelocityVariableTensorCopy = maximumVelocityVariableTensor;
  updatesCopy = updates;
  nameCopy = name;
  v16 = nameCopy;
  v17 = @"applyAdam";
  if (nameCopy)
  {
    v17 = nameCopy;
  }

  v18 = v17;
  v35 = [updatesCopy objectAtIndexedSubscript:0];
  v37 = [updatesCopy objectAtIndexedSubscript:1];
  v36 = [updatesCopy objectAtIndexedSubscript:2];
  v19 = [(__CFString *)v18 stringByAppendingString:@"/assignAdamUpdate/momentum"];
  v20 = [(MPSGraph *)self assignVariable:variableTensorCopy withValueOfTensor:v37 name:v19];

  v21 = [(__CFString *)v18 stringByAppendingString:@"/assignAdamUpdate/velocity"];
  v22 = [(MPSGraph *)self assignVariable:velocityVariableTensorCopy withValueOfTensor:v36 name:v21];

  v23 = [(__CFString *)v18 stringByAppendingString:@"/assignAdamUpdate"];
  v24 = [(MPSGraph *)self assignVariable:tensorCopy withValueOfTensor:v35 name:v23];

  v25 = v24[4];
  v39[0] = v20;
  v39[1] = v22;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
  [v25 addObjectsFromArray:v26];

  v27 = [updatesCopy count];
  if (maximumVelocityVariableTensorCopy && v27 >= 4)
  {
    v28 = [updatesCopy objectAtIndexedSubscript:3];
    v29 = [(__CFString *)v18 stringByAppendingString:@"/assignAdamUpdate/maximumVelocity"];
    v30 = [(MPSGraph *)self assignVariable:maximumVelocityVariableTensorCopy withValueOfTensor:v28 name:v29];

    [v24[4] addObject:v30];
  }

  return v24;
}

- (NSArray)adamWithCurrentLearningRateTensor:(MPSGraphTensor *)currentLearningRateTensor beta1Tensor:(MPSGraphTensor *)beta1Tensor beta2Tensor:(MPSGraphTensor *)beta2Tensor epsilonTensor:(MPSGraphTensor *)epsilonTensor valuesTensor:(MPSGraphTensor *)valuesTensor momentumTensor:(MPSGraphTensor *)momentumTensor velocityTensor:(MPSGraphTensor *)velocityTensor maximumVelocityTensor:(MPSGraphTensor *)maximumVelocityTensor gradientTensor:(MPSGraphTensor *)gradientTensor name:(NSString *)name
{
  v12 = [(MPSGraph *)self adamUpdateWithCurrentLearningRateTensor:currentLearningRateTensor beta1Tensor:beta1Tensor beta2Tensor:beta2Tensor epsilonTensor:epsilonTensor valuesTensor:valuesTensor momentumTensor:momentumTensor velocityTensor:velocityTensor maximumVelocityTensor:maximumVelocityTensor gradientTensor:gradientTensor name:name];

  return v12;
}

- (id)adamUpdateWithCurrentLearningRateTensor:(id)tensor beta1Tensor:(id)beta1Tensor beta2Tensor:(id)beta2Tensor epsilonTensor:(id)epsilonTensor valuesTensor:(id)valuesTensor momentumTensor:(id)momentumTensor velocityTensor:(id)velocityTensor maximumVelocityTensor:(id)self0 gradientTensor:(id)self1 name:(id)self2
{
  v59[4] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  beta1TensorCopy = beta1Tensor;
  beta2TensorCopy = beta2Tensor;
  epsilonTensorCopy = epsilonTensor;
  valuesTensorCopy = valuesTensor;
  momentumTensorCopy = momentumTensor;
  velocityTensorCopy = velocityTensor;
  maximumVelocityTensorCopy = maximumVelocityTensor;
  gradientTensorCopy = gradientTensor;
  nameCopy = name;
  v22 = @"applyAdam";
  v47 = nameCopy;
  if (nameCopy)
  {
    v22 = nameCopy;
  }

  v23 = v22;
  v48 = beta1TensorCopy;
  v46 = momentumTensorCopy;
  v54 = gradientTensorCopy;
  v24 = [(__CFString *)v23 stringByAppendingString:@"/momentumUpdate"];
  v56 = [(MPSGraph *)self momentumUpdateWithBetaTensor:beta1TensorCopy momentumTensor:momentumTensorCopy gradientTensor:gradientTensorCopy name:v24];

  v25 = [(__CFString *)v23 stringByAppendingString:@"/velocityUpdate"];
  v26 = [(MPSGraph *)self velocityUpdateWithBetaTensor:beta2TensorCopy velocityTensor:velocityTensorCopy gradientTensor:gradientTensorCopy name:v25];

  v27 = v26;
  v28 = v27;
  if (maximumVelocityTensorCopy)
  {
    v29 = [(__CFString *)v23 stringByAppendingString:@"/maxVelocity"];
    v30 = [(MPSGraph *)self maximumWithPrimaryTensor:v28 secondaryTensor:maximumVelocityTensorCopy name:v29];

    v31 = v30;
    v55 = v31;
  }

  else
  {
    v31 = 0;
    v55 = v27;
  }

  v32 = [(__CFString *)v23 stringByAppendingString:@"/squareRoot"];
  v33 = [(MPSGraph *)self squareRootWithTensor:v55 name:v32];

  v34 = [(__CFString *)v23 stringByAppendingString:@"/epsilon_add"];
  v35 = [(MPSGraph *)self additionWithPrimaryTensor:v33 secondaryTensor:epsilonTensorCopy name:v34];

  v36 = [(__CFString *)v23 stringByAppendingString:@"/multiply"];
  v37 = [(MPSGraph *)self multiplicationWithPrimaryTensor:tensorCopy secondaryTensor:v56 name:v36];

  v38 = [(__CFString *)v23 stringByAppendingString:@"/divide"];
  v39 = [(MPSGraph *)self divisionWithPrimaryTensor:v37 secondaryTensor:v35 name:v38];

  v40 = [(__CFString *)v23 stringByAppendingString:@"/subtract"];
  v41 = [(MPSGraph *)self subtractionWithPrimaryTensor:valuesTensorCopy secondaryTensor:v39 name:v40];

  if (maximumVelocityTensorCopy)
  {
    v59[0] = v41;
    v59[1] = v56;
    v42 = v59;
    v43 = 4;
    v59[2] = v28;
    v59[3] = v31;
  }

  else
  {
    v58[0] = v41;
    v58[1] = v56;
    v42 = v58;
    v43 = 3;
    v58[2] = v28;
  }

  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:v43];

  return v44;
}

- (id)applyAdamWithCurrentLearningRateTensor:(id)tensor beta1Tensor:(id)beta1Tensor beta2Tensor:(id)beta2Tensor epsilonTensor:(id)epsilonTensor variable:(id)variable momentumVariable:(id)momentumVariable velocityVariable:(id)velocityVariable maximumVelocityVariable:(id)self0 gradientTensor:(id)self1 name:(id)self2
{
  tensorCopy = tensor;
  beta1TensorCopy = beta1Tensor;
  beta2TensorCopy = beta2Tensor;
  epsilonTensorCopy = epsilonTensor;
  momentumVariableCopy = momentumVariable;
  velocityVariableCopy = velocityVariable;
  maximumVelocityVariableCopy = maximumVelocityVariable;
  gradientTensorCopy = gradientTensor;
  nameCopy = name;
  v34 = momentumVariableCopy;
  outputTensors = [variable outputTensors];
  v24 = [outputTensors objectAtIndexedSubscript:0];

  outputTensors2 = [momentumVariableCopy outputTensors];
  v26 = [outputTensors2 objectAtIndexedSubscript:0];

  outputTensors3 = [velocityVariableCopy outputTensors];
  v28 = [outputTensors3 objectAtIndexedSubscript:0];

  if (maximumVelocityVariableCopy)
  {
    outputTensors4 = [maximumVelocityVariableCopy outputTensors];
    v30 = [outputTensors4 objectAtIndexedSubscript:0];
  }

  else
  {
    v30 = 0;
  }

  v31 = [(MPSGraph *)self adamUpdateWithCurrentLearningRateTensor:tensorCopy beta1Tensor:beta1TensorCopy beta2Tensor:beta2TensorCopy epsilonTensor:epsilonTensorCopy valuesTensor:v24 momentumTensor:v26 velocityTensor:v28 maximumVelocityTensor:v30 gradientTensor:gradientTensorCopy name:nameCopy];
  v32 = [(MPSGraph *)self adamAssignWithInputVariableTensor:v24 momentumVariableTensor:v26 velocityVariableTensor:v28 maximumVelocityVariableTensor:v30 updates:v31 name:nameCopy];

  return v32;
}

- (id)currentLearningRateWithLearningRateTensor:(id)tensor beta1Tensor:(id)beta1Tensor beta2Tensor:(id)beta2Tensor beta1PowerTensor:(id)powerTensor beta2PowerTensor:(id)beta2PowerTensor name:(id)name
{
  tensorCopy = tensor;
  powerTensorCopy = powerTensor;
  beta2PowerTensorCopy = beta2PowerTensor;
  nameCopy = name;
  v15 = nameCopy;
  v16 = @"applyAdam";
  if (nameCopy)
  {
    v16 = nameCopy;
  }

  v17 = v16;
  v30 = beta2PowerTensorCopy;
  v18 = -[MPSGraph constantWithScalar:shape:dataType:](self, "constantWithScalar:shape:dataType:", &unk_1F5B77840, [powerTensorCopy dataType], 1.0);
  v19 = [(__CFString *)v17 stringByAppendingString:@"/subPowBeta1"];
  v20 = [(MPSGraph *)self subtractionWithPrimaryTensor:v18 secondaryTensor:powerTensorCopy name:v19];

  v21 = [(__CFString *)v17 stringByAppendingString:@"/subPowBeta2"];
  v22 = [(MPSGraph *)self subtractionWithPrimaryTensor:v18 secondaryTensor:beta2PowerTensorCopy name:v21];

  v23 = [(__CFString *)v17 stringByAppendingString:@"/sqrtBeta2"];
  v24 = [(MPSGraph *)self squareRootWithTensor:v22 name:v23];

  v25 = [(__CFString *)v17 stringByAppendingString:@"/subBeta2"];
  v26 = [(MPSGraph *)self multiplicationWithPrimaryTensor:v24 secondaryTensor:tensorCopy name:v25];

  v27 = [(__CFString *)v17 stringByAppendingString:@"/subBeta2"];
  v28 = [(MPSGraph *)self divisionWithPrimaryTensor:v26 secondaryTensor:v20 name:v27];

  return v28;
}

- (NSArray)adamWithLearningRateTensor:(MPSGraphTensor *)learningRateTensor beta1Tensor:(MPSGraphTensor *)beta1Tensor beta2Tensor:(MPSGraphTensor *)beta2Tensor epsilonTensor:(MPSGraphTensor *)epsilonTensor beta1PowerTensor:(MPSGraphTensor *)beta1PowerTensor beta2PowerTensor:(MPSGraphTensor *)beta2PowerTensor valuesTensor:(MPSGraphTensor *)valuesTensor momentumTensor:(MPSGraphTensor *)momentumTensor velocityTensor:(MPSGraphTensor *)velocityTensor maximumVelocityTensor:(MPSGraphTensor *)maximumVelocityTensor gradientTensor:(MPSGraphTensor *)gradientTensor name:(NSString *)name
{
  v14 = [(MPSGraph *)self adamUpdateWithLearningRateTensor:learningRateTensor beta1Tensor:beta1Tensor beta2Tensor:beta2Tensor epsilonTensor:epsilonTensor beta1PowerTensor:beta1PowerTensor beta2PowerTensor:beta2PowerTensor valuesTensor:valuesTensor momentumTensor:momentumTensor velocityTensor:velocityTensor maximumVelocityTensor:maximumVelocityTensor gradientTensor:gradientTensor name:name];

  return v14;
}

- (id)adamUpdateWithLearningRateTensor:(id)tensor beta1Tensor:(id)beta1Tensor beta2Tensor:(id)beta2Tensor epsilonTensor:(id)epsilonTensor beta1PowerTensor:(id)powerTensor beta2PowerTensor:(id)beta2PowerTensor valuesTensor:(id)valuesTensor momentumTensor:(id)self0 velocityTensor:(id)self1 maximumVelocityTensor:(id)self2 gradientTensor:(id)self3 name:(id)self4
{
  beta1TensorCopy = beta1Tensor;
  beta2TensorCopy = beta2Tensor;
  epsilonTensorCopy = epsilonTensor;
  valuesTensorCopy = valuesTensor;
  selfCopy = self;
  momentumTensorCopy = momentumTensor;
  velocityTensorCopy = velocityTensor;
  maximumVelocityTensorCopy = maximumVelocityTensor;
  gradientTensorCopy = gradientTensor;
  nameCopy = name;
  v26 = [(MPSGraph *)self currentLearningRateWithLearningRateTensor:tensor beta1Tensor:beta1TensorCopy beta2Tensor:beta2TensorCopy beta1PowerTensor:powerTensor beta2PowerTensor:beta2PowerTensor name:nameCopy];
  v27 = selfCopy;
  v28 = valuesTensorCopy;
  v29 = [(MPSGraph *)v27 adamUpdateWithCurrentLearningRateTensor:v26 beta1Tensor:beta1TensorCopy beta2Tensor:beta2TensorCopy epsilonTensor:epsilonTensorCopy valuesTensor:valuesTensorCopy momentumTensor:momentumTensorCopy velocityTensor:velocityTensorCopy maximumVelocityTensor:maximumVelocityTensorCopy gradientTensor:gradientTensorCopy name:nameCopy];

  return v29;
}

- (id)applyAdamWithLearningRateTensor:(id)tensor beta1Tensor:(id)beta1Tensor beta2Tensor:(id)beta2Tensor epsilonTensor:(id)epsilonTensor beta1PowerTensor:(id)powerTensor beta2PowerTensor:(id)beta2PowerTensor variable:(id)variable momentumVariable:(id)self0 velocityVariable:(id)self1 gradientTensor:(id)self2 name:(id)self3
{
  tensorCopy = tensor;
  beta1TensorCopy = beta1Tensor;
  beta2TensorCopy = beta2Tensor;
  epsilonTensorCopy = epsilonTensor;
  powerTensorCopy = powerTensor;
  beta2PowerTensorCopy = beta2PowerTensor;
  momentumVariableCopy = momentumVariable;
  velocityVariableCopy = velocityVariable;
  gradientTensorCopy = gradientTensor;
  nameCopy = name;
  outputTensors = [variable outputTensors];
  v24 = [outputTensors objectAtIndexedSubscript:0];

  outputTensors2 = [momentumVariableCopy outputTensors];
  v26 = [outputTensors2 objectAtIndexedSubscript:0];

  outputTensors3 = [velocityVariableCopy outputTensors];
  v28 = [outputTensors3 objectAtIndexedSubscript:0];

  v29 = [(MPSGraph *)self adamUpdateWithLearningRateTensor:tensorCopy beta1Tensor:beta1TensorCopy beta2Tensor:beta2TensorCopy epsilonTensor:epsilonTensorCopy beta1PowerTensor:powerTensorCopy beta2PowerTensor:beta2PowerTensorCopy valuesTensor:v24 momentumTensor:v26 velocityTensor:v28 maximumVelocityTensor:0 gradientTensor:gradientTensorCopy name:nameCopy];
  v30 = [(MPSGraph *)self adamAssignWithInputVariableTensor:v24 momentumVariableTensor:v26 velocityVariableTensor:v28 maximumVelocityVariableTensor:0 updates:v29 name:nameCopy];

  return v30;
}

- (id)adamUpdateWithLearningRateTensor:(id)tensor beta1Tensor:(id)beta1Tensor beta2Tensor:(id)beta2Tensor epsilonTensor:(id)epsilonTensor iterationTensor:(id)iterationTensor valuesTensor:(id)valuesTensor momentumTensor:(id)momentumTensor velocityTensor:(id)self0 gradientTensor:(id)self1 name:(id)self2
{
  tensorCopy = tensor;
  beta1TensorCopy = beta1Tensor;
  beta2TensorCopy = beta2Tensor;
  epsilonTensorCopy = epsilonTensor;
  iterationTensorCopy = iterationTensor;
  valuesTensorCopy = valuesTensor;
  momentumTensorCopy = momentumTensor;
  velocityTensorCopy = velocityTensor;
  gradientTensorCopy = gradientTensor;
  nameCopy = name;
  v25 = nameCopy;
  v26 = @"applyAdam";
  if (nameCopy)
  {
    v26 = nameCopy;
  }

  v38 = v26;
  v35 = beta1TensorCopy;
  v33 = valuesTensorCopy;
  v27 = [(__CFString *)v38 stringByAppendingString:@"/beta1Power"];
  v28 = [(MPSGraph *)self powerWithPrimaryTensor:beta1TensorCopy secondaryTensor:iterationTensorCopy name:v27];

  v29 = [(__CFString *)v38 stringByAppendingString:@"/beta2Power"];
  v30 = [(MPSGraph *)self powerWithPrimaryTensor:beta2TensorCopy secondaryTensor:iterationTensorCopy name:v29];

  v32 = [(MPSGraph *)self adamUpdateWithLearningRateTensor:tensorCopy beta1Tensor:v35 beta2Tensor:beta2TensorCopy epsilonTensor:epsilonTensorCopy beta1PowerTensor:v28 beta2PowerTensor:v30 valuesTensor:v33 momentumTensor:momentumTensorCopy velocityTensor:velocityTensorCopy maximumVelocityTensor:0 gradientTensor:gradientTensorCopy name:v25];

  return v32;
}

- (id)applyAdamWithLearningRateTensor:(id)tensor beta1Tensor:(id)beta1Tensor beta2Tensor:(id)beta2Tensor epsilonTensor:(id)epsilonTensor iterationTensor:(id)iterationTensor variable:(id)variable momentumVariable:(id)momentumVariable velocityVariable:(id)self0 gradientTensor:(id)self1 name:(id)self2
{
  tensorCopy = tensor;
  beta1TensorCopy = beta1Tensor;
  beta2TensorCopy = beta2Tensor;
  epsilonTensorCopy = epsilonTensor;
  iterationTensorCopy = iterationTensor;
  momentumVariableCopy = momentumVariable;
  velocityVariableCopy = velocityVariable;
  gradientTensorCopy = gradientTensor;
  nameCopy = name;
  outputTensors = [variable outputTensors];
  v24 = [outputTensors objectAtIndexedSubscript:0];

  outputTensors2 = [momentumVariableCopy outputTensors];
  v26 = [outputTensors2 objectAtIndexedSubscript:0];

  outputTensors3 = [velocityVariableCopy outputTensors];
  v28 = [outputTensors3 objectAtIndexedSubscript:0];

  v29 = [(MPSGraph *)self adamUpdateWithLearningRateTensor:tensorCopy beta1Tensor:beta1TensorCopy beta2Tensor:beta2TensorCopy epsilonTensor:epsilonTensorCopy iterationTensor:iterationTensorCopy valuesTensor:v24 momentumTensor:v26 velocityTensor:v28 gradientTensor:gradientTensorCopy name:nameCopy];
  v30 = [(MPSGraph *)self adamAssignWithInputVariableTensor:v24 momentumVariableTensor:v26 velocityVariableTensor:v28 maximumVelocityVariableTensor:0 updates:v29 name:nameCopy];

  return v30;
}

- (id)solveWithDecompositionTensor:(id)tensor rhsTensor:(id)rhsTensor descriptor:(id)descriptor name:(id)name
{
  v20[3] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  rhsTensorCopy = rhsTensor;
  nameCopy = name;
  v12 = [MPSGraphMatrixSolverOp alloc];
  v13 = [tensorCopy objectAtIndexedSubscript:0];
  v14 = [tensorCopy objectAtIndexedSubscript:{1, v13}];
  v20[1] = v14;
  v20[2] = rhsTensorCopy;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
  v16 = [(MPSGraphOperation *)v12 initWithGraph:self inputTensors:v15 controlDependencies:MEMORY[0x1E695E0F0] name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v16 outputTensors];
  v18 = [outputTensors objectAtIndexedSubscript:0];

  return v18;
}

- (id)solveLUWithDecompositionTensor:(id)tensor rhsTensor:(id)rhsTensor name:(id)name
{
  v19[3] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  rhsTensorCopy = rhsTensor;
  nameCopy = name;
  v11 = [MPSGraphMatrixSolverOp alloc];
  v12 = [tensorCopy objectAtIndexedSubscript:0];
  v13 = [tensorCopy objectAtIndexedSubscript:{1, v12}];
  v19[1] = v13;
  v19[2] = rhsTensorCopy;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
  v15 = [(MPSGraphOperation *)v11 initWithGraph:self inputTensors:v14 controlDependencies:MEMORY[0x1E695E0F0] name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v15 outputTensors];
  v17 = [outputTensors objectAtIndexedSubscript:0];

  return v17;
}

- (MPSGraphTensor)stencilWithSourceTensor:(MPSGraphTensor *)source weightsTensor:(MPSGraphTensor *)weights descriptor:(MPSGraphStencilOpDescriptor *)descriptor name:(NSString *)name
{
  v20[2] = *MEMORY[0x1E69E9840];
  v10 = source;
  v11 = weights;
  v12 = descriptor;
  v13 = name;
  v20[0] = v10;
  v20[1] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v15 = [MPSGraphStencilOp alloc];
  v16 = [(MPSGraphStencilOp *)v15 initWithGraph:self inputTensors:v14 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v12 name:v13];
  outputTensors = [(MPSGraphOperation *)v16 outputTensors];
  v18 = [outputTensors objectAtIndexedSubscript:0];

  return v18;
}

- (id)stencilWithSourceTensor:(id)tensor weightsTensor:(id)weightsTensor offsets:(id)offsets name:(id)name
{
  v21[2] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  weightsTensorCopy = weightsTensor;
  offsetsCopy = offsets;
  nameCopy = name;
  v21[0] = tensorCopy;
  v21[1] = weightsTensorCopy;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v15 = [MPSGraphStencilOpDescriptor descriptorWithReductionMode:2 offsets:offsetsCopy strides:&unk_1F5B77930 dilationRates:&unk_1F5B77948 explicitPadding:&unk_1F5B77960 boundaryMode:4 paddingStyle:0.0 paddingConstant:3];
  v16 = [MPSGraphStencilOp alloc];
  v17 = [(MPSGraphStencilOp *)v16 initWithGraph:self inputTensors:v14 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v15 name:nameCopy];
  outputTensors = [(MPSGraphOperation *)v17 outputTensors];
  v19 = [outputTensors objectAtIndexedSubscript:0];

  return v19;
}

- (id)eluWithTensor:(id)tensor alpha:(double)alpha name:(id)name
{
  v17[2] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  nameCopy = name;
  v10 = -[MPSGraph constantWithScalar:shape:dataType:](self, "constantWithScalar:shape:dataType:", &unk_1F5B779A8, [tensorCopy dataType], alpha);
  v11 = [MPSGraphEluOp alloc];
  v17[0] = tensorCopy;
  v17[1] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v13 = [(MPSGraphOperation *)v11 initWithGraph:self inputTensors:v12 controlDependencies:MEMORY[0x1E695E0F0] name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v13 outputTensors];
  v15 = [outputTensors objectAtIndexedSubscript:0];

  return v15;
}

- (id)eluGradientWithIncomingGradient:(id)gradient sourceTensor:(id)tensor alpha:(double)alpha name:(id)name
{
  gradientCopy = gradient;
  tensorCopy = tensor;
  nameCopy = name;
  v12 = -[MPSGraph constantWithScalar:shape:dataType:](self, "constantWithScalar:shape:dataType:", &unk_1F5B779C0, [tensorCopy dataType], alpha);
  v26 = v12;
  v13 = -[MPSGraph constantWithScalar:shape:dataType:](self, "constantWithScalar:shape:dataType:", &unk_1F5B779D8, [tensorCopy dataType], 0.0);
  v14 = -[MPSGraph constantWithScalar:shape:dataType:](self, "constantWithScalar:shape:dataType:", &unk_1F5B779F0, [tensorCopy dataType], 1.0);
  if (nameCopy)
  {
    v15 = [nameCopy stringByAppendingString:@"/lessThanOrEqualTo"];
  }

  else
  {
    v15 = @"eluGrad/lessThanOrEqualTo";
  }

  v16 = [(MPSGraph *)self greaterThanWithPrimaryTensor:tensorCopy secondaryTensor:v13 name:v15];
  if (nameCopy)
  {

    v17 = [nameCopy stringByAppendingString:@"/eluResult"];
  }

  else
  {
    v17 = @"eluGrad/eluResult";
  }

  v18 = [(MPSGraph *)self eluWithTensor:tensorCopy alpha:v17 name:alpha];
  if (nameCopy)
  {

    v19 = [nameCopy stringByAppendingString:@"/negativeRegionGradient"];
  }

  else
  {
    v19 = @"eluGrad/negativeRegionGradient";
  }

  v20 = [(MPSGraph *)self additionWithPrimaryTensor:v18 secondaryTensor:v12 name:v19];
  if (nameCopy)
  {

    v21 = [nameCopy stringByAppendingString:@"/localGradient"];
  }

  else
  {
    v21 = @"eluGrad/localGradient";
  }

  v22 = [(MPSGraph *)self selectWithPredicateTensor:v16 truePredicateTensor:v14 falsePredicateTensor:v20 name:v21];
  if (nameCopy)
  {

    v23 = [nameCopy stringByAppendingString:@"/select"];
  }

  else
  {
    v23 = @"eluGrad/multiplication";
  }

  v24 = [(MPSGraph *)self multiplicationWithPrimaryTensor:gradientCopy secondaryTensor:v22 name:v23];
  if (nameCopy)
  {
  }

  return v24;
}

- (id)prunedTensorWithDescriptor:(id)descriptor tensor:(id)tensor shape:(id)shape name:(id)name
{
  v20[1] = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  tensorCopy = tensor;
  shapeCopy = shape;
  nameCopy = name;
  v14 = [MPSGraphPruningOp alloc];
  v20[0] = tensorCopy;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v16 = [(MPSGraphPruningOp *)v14 initWithGraph:self inputTensors:v15 controlDependencies:MEMORY[0x1E695E0F0] shape:shapeCopy descriptor:descriptorCopy name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v16 outputTensors];
  v18 = [outputTensors objectAtIndexedSubscript:0];

  return v18;
}

- (id)prunedGradientTensorWithDescriptor:(id)descriptor inputTensor:(id)tensor gradientTensor:(id)gradientTensor shape:(id)shape name:(id)name
{
  v23[2] = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  tensorCopy = tensor;
  gradientTensorCopy = gradientTensor;
  shapeCopy = shape;
  nameCopy = name;
  v17 = [MPSGraphPruningGradientOp alloc];
  v23[0] = tensorCopy;
  v23[1] = gradientTensorCopy;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v19 = [(MPSGraphPruningGradientOp *)v17 initWithGraph:self inputTensors:v18 controlDependencies:MEMORY[0x1E695E0F0] shape:shapeCopy descriptor:descriptorCopy name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v19 outputTensors];
  v21 = [outputTensors objectAtIndexedSubscript:0];

  return v21;
}

- (MPSGraphTensor)convolution2DWithSourceTensor:(MPSGraphTensor *)source weightsTensor:(MPSGraphTensor *)weights descriptor:(MPSGraphConvolution2DOpDescriptor *)descriptor name:(NSString *)name
{
  v30[2] = *MEMORY[0x1E69E9840];
  v10 = source;
  v11 = weights;
  v12 = descriptor;
  v13 = name;
  shape = [(MPSGraphTensor *)v10 shape];
  if ([shape count] != 4)
  {
    shape2 = [(MPSGraphTensor *)v10 shape];
    [shape2 count];
  }

  shape3 = [(MPSGraphTensor *)v10 shape];
  if ([shape3 count] == 4)
  {
  }

  else
  {
    shape4 = [(MPSGraphTensor *)v10 shape];
    v18 = [shape4 count];

    if (v18 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  shape5 = [(MPSGraphTensor *)v11 shape];
  if ([shape5 count] != 4)
  {
    shape6 = [(MPSGraphTensor *)v11 shape];
    [shape6 count];
  }

  shape7 = [(MPSGraphTensor *)v11 shape];
  if ([shape7 count] == 4)
  {
  }

  else
  {
    shape8 = [(MPSGraphTensor *)v11 shape];
    v23 = [shape8 count];

    if (v23 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v24 = [MPSGraphConvolution2DOp alloc];
  v30[0] = v10;
  v30[1] = v11;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v26 = [(MPSGraphConvolution2DBaseOp *)v24 initWithGraph:self inputTensors:v25 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v12 name:v13];

  outputTensors = [(MPSGraphOperation *)v26 outputTensors];
  v28 = [outputTensors objectAtIndexedSubscript:0];

  return v28;
}

- (MPSGraphTensor)convolution2DDataGradientWithIncomingGradientTensor:(MPSGraphTensor *)gradient weightsTensor:(MPSGraphTensor *)weights outputShapeTensor:(MPSGraphTensor *)outputShapeTensor forwardConvolutionDescriptor:(MPSGraphConvolution2DOpDescriptor *)forwardConvolutionDescriptor name:(NSString *)name
{
  v33[3] = *MEMORY[0x1E69E9840];
  v12 = gradient;
  v13 = weights;
  v14 = outputShapeTensor;
  v15 = forwardConvolutionDescriptor;
  v16 = name;
  shape = [(MPSGraphTensor *)v12 shape];
  if ([shape count] != 4)
  {
    shape2 = [(MPSGraphTensor *)v12 shape];
    [shape2 count];
  }

  shape3 = [(MPSGraphTensor *)v12 shape];
  if ([shape3 count] == 4)
  {
  }

  else
  {
    shape4 = [(MPSGraphTensor *)v12 shape];
    v21 = [shape4 count];

    if (v21 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  shape5 = [(MPSGraphTensor *)v13 shape];
  if ([shape5 count] != 4)
  {
    shape6 = [(MPSGraphTensor *)v13 shape];
    [shape6 count];
  }

  shape7 = [(MPSGraphTensor *)v13 shape];
  if ([shape7 count] == 4)
  {
  }

  else
  {
    shape8 = [(MPSGraphTensor *)v13 shape];
    v26 = [shape8 count];

    if (v26 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v27 = [MPSGraphConvolution2DDataGradientOp alloc];
  v33[0] = v12;
  v33[1] = v13;
  v33[2] = v14;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:3];
  v29 = [(MPSGraphConvolution2DBaseOp *)v27 initWithGraph:self inputTensors:v28 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v15 name:v16];

  outputTensors = [(MPSGraphOperation *)v29 outputTensors];
  v31 = [outputTensors objectAtIndexedSubscript:0];

  return v31;
}

- (MPSGraphTensor)convolution2DDataGradientWithIncomingGradientTensor:(MPSGraphTensor *)incomingGradient weightsTensor:(MPSGraphTensor *)weights outputShape:(MPSShape *)outputShape forwardConvolutionDescriptor:(MPSGraphConvolution2DOpDescriptor *)forwardConvolutionDescriptor name:(NSString *)name
{
  v24 = *MEMORY[0x1E69E9840];
  v12 = incomingGradient;
  v13 = weights;
  v14 = outputShape;
  v15 = forwardConvolutionDescriptor;
  v16 = name;
  [(MPSShape *)v14 count];
  if ([(MPSShape *)v14 count]!= 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v17 = 0;
  v23 = xmmword_1E099B5F0;
  while (v17 < [(MPSShape *)v14 count])
  {
    v18 = [(MPSShape *)v14 objectAtIndexedSubscript:v17];
    *(&v23 + v17) = [v18 intValue];

    ++v17;
  }

  v19 = [MEMORY[0x1E695DEF0] dataWithBytes:&v23 length:16];
  v20 = [(MPSGraph *)self constantWithData:v19 shape:&unk_1F5B77A08 dataType:536870944];

  v21 = [(MPSGraph *)self convolution2DDataGradientWithIncomingGradientTensor:v12 weightsTensor:v13 outputShapeTensor:v20 forwardConvolutionDescriptor:v15 name:v16];

  return v21;
}

- (MPSGraphTensor)convolution2DWeightsGradientWithIncomingGradientTensor:(MPSGraphTensor *)gradient sourceTensor:(MPSGraphTensor *)source outputShapeTensor:(MPSGraphTensor *)outputShapeTensor forwardConvolutionDescriptor:(MPSGraphConvolution2DOpDescriptor *)forwardConvolutionDescriptor name:(NSString *)name
{
  v38[3] = *MEMORY[0x1E69E9840];
  v12 = gradient;
  v13 = source;
  v14 = outputShapeTensor;
  v15 = forwardConvolutionDescriptor;
  v16 = name;
  shape = [(MPSGraphTensor *)v12 shape];
  if ([shape count] != 4)
  {
    shape2 = [(MPSGraphTensor *)v12 shape];
    [shape2 count];
  }

  shape3 = [(MPSGraphTensor *)v12 shape];
  if ([shape3 count] == 4)
  {
  }

  else
  {
    shape4 = [(MPSGraphTensor *)v12 shape];
    v21 = [shape4 count];

    if (v21 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  shape5 = [(MPSGraphTensor *)v13 shape];
  if ([shape5 count] != 4)
  {
    shape6 = [(MPSGraphTensor *)v13 shape];
    [shape6 count];
  }

  shape7 = [(MPSGraphTensor *)v13 shape];
  if ([shape7 count] == 4)
  {
  }

  else
  {
    shape8 = [(MPSGraphTensor *)v13 shape];
    v26 = [shape8 count];

    if (v26 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  shape9 = [(MPSGraphTensor *)v14 shape];
  if ([shape9 count] != 1)
  {
    shape10 = [(MPSGraphTensor *)v13 shape];
    [shape10 count];
  }

  shape11 = [(MPSGraphTensor *)v14 shape];
  if ([shape11 count] == 1)
  {
  }

  else
  {
    shape12 = [(MPSGraphTensor *)v13 shape];
    v31 = [shape12 count];

    if (v31 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v32 = [MPSGraphConvolution2DWeightsGradientOp alloc];
  v38[0] = v12;
  v38[1] = v13;
  v38[2] = v14;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:3];
  v34 = [(MPSGraphConvolution2DBaseOp *)v32 initWithGraph:self inputTensors:v33 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v15 name:v16];

  outputTensors = [(MPSGraphOperation *)v34 outputTensors];
  v36 = [outputTensors objectAtIndexedSubscript:0];

  return v36;
}

- (MPSGraphTensor)convolution2DWeightsGradientWithIncomingGradientTensor:(MPSGraphTensor *)incomingGradient sourceTensor:(MPSGraphTensor *)source outputShape:(MPSShape *)outputShape forwardConvolutionDescriptor:(MPSGraphConvolution2DOpDescriptor *)forwardConvolutionDescriptor name:(NSString *)name
{
  v24 = *MEMORY[0x1E69E9840];
  v12 = incomingGradient;
  v13 = source;
  v14 = outputShape;
  v15 = forwardConvolutionDescriptor;
  v16 = name;
  [(MPSShape *)v14 count];
  if ([(MPSShape *)v14 count]!= 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v17 = 0;
  v23 = xmmword_1E099B5F0;
  while (v17 < [(MPSShape *)v14 count])
  {
    v18 = [(MPSShape *)v14 objectAtIndexedSubscript:v17];
    *(&v23 + v17) = [v18 intValue];

    ++v17;
  }

  v19 = [MEMORY[0x1E695DEF0] dataWithBytes:&v23 length:16];
  v20 = [(MPSGraph *)self constantWithData:v19 shape:&unk_1F5B77A20 dataType:32];

  v21 = [(MPSGraph *)self convolution2DWeightsGradientWithIncomingGradientTensor:v12 sourceTensor:v13 outputShapeTensor:v20 forwardConvolutionDescriptor:v15 name:v16];

  return v21;
}

- (MPSGraphTensor)convolution3DWithSourceTensor:(MPSGraphTensor *)source weightsTensor:(MPSGraphTensor *)weights descriptor:(MPSGraphConvolution3DOpDescriptor *)descriptor name:(NSString *)name
{
  v30[2] = *MEMORY[0x1E69E9840];
  v10 = source;
  v11 = weights;
  v12 = descriptor;
  v13 = name;
  shape = [(MPSGraphTensor *)v10 shape];
  if ([shape count] != 5)
  {
    shape2 = [(MPSGraphTensor *)v10 shape];
    [shape2 count];
  }

  shape3 = [(MPSGraphTensor *)v10 shape];
  if ([shape3 count] == 5)
  {
  }

  else
  {
    shape4 = [(MPSGraphTensor *)v10 shape];
    v18 = [shape4 count];

    if (v18 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  shape5 = [(MPSGraphTensor *)v11 shape];
  if ([shape5 count] != 5)
  {
    shape6 = [(MPSGraphTensor *)v11 shape];
    [shape6 count];
  }

  shape7 = [(MPSGraphTensor *)v11 shape];
  if ([shape7 count] == 5)
  {
  }

  else
  {
    shape8 = [(MPSGraphTensor *)v11 shape];
    v23 = [shape8 count];

    if (v23 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v24 = [MPSGraphConvolution3DOp alloc];
  v30[0] = v10;
  v30[1] = v11;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v26 = [(MPSGraphConvolution3DBaseOp *)v24 initWithGraph:self inputTensors:v25 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v12 name:v13];

  outputTensors = [(MPSGraphOperation *)v26 outputTensors];
  v28 = [outputTensors objectAtIndexedSubscript:0];

  return v28;
}

- (MPSGraphTensor)convolution3DDataGradientWithIncomingGradientTensor:(MPSGraphTensor *)gradient weightsTensor:(MPSGraphTensor *)weights outputShapeTensor:(MPSGraphTensor *)outputShapeTensor forwardConvolutionDescriptor:(MPSGraphConvolution3DOpDescriptor *)forwardConvolutionDescriptor name:(NSString *)name
{
  v33[3] = *MEMORY[0x1E69E9840];
  v12 = gradient;
  v13 = weights;
  v14 = outputShapeTensor;
  v15 = forwardConvolutionDescriptor;
  v16 = name;
  shape = [(MPSGraphTensor *)v12 shape];
  if ([shape count] != 5)
  {
    shape2 = [(MPSGraphTensor *)v12 shape];
    [shape2 count];
  }

  shape3 = [(MPSGraphTensor *)v12 shape];
  if ([shape3 count] == 5)
  {
  }

  else
  {
    shape4 = [(MPSGraphTensor *)v12 shape];
    v21 = [shape4 count];

    if (v21 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  shape5 = [(MPSGraphTensor *)v13 shape];
  if ([shape5 count] != 5)
  {
    shape6 = [(MPSGraphTensor *)v13 shape];
    [shape6 count];
  }

  shape7 = [(MPSGraphTensor *)v13 shape];
  if ([shape7 count] == 5)
  {
  }

  else
  {
    shape8 = [(MPSGraphTensor *)v13 shape];
    v26 = [shape8 count];

    if (v26 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v27 = [MPSGraphConvolution3DDataGradientOp alloc];
  v33[0] = v12;
  v33[1] = v13;
  v33[2] = v14;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:3];
  v29 = [(MPSGraphConvolution3DBaseOp *)v27 initWithGraph:self inputTensors:v28 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v15 name:v16];

  outputTensors = [(MPSGraphOperation *)v29 outputTensors];
  v31 = [outputTensors objectAtIndexedSubscript:0];

  return v31;
}

- (MPSGraphTensor)convolution3DDataGradientWithIncomingGradientTensor:(MPSGraphTensor *)incomingGradient weightsTensor:(MPSGraphTensor *)weights outputShape:(MPSShape *)outputShape forwardConvolutionDescriptor:(MPSGraphConvolution3DOpDescriptor *)forwardConvolutionDescriptor name:(NSString *)name
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = incomingGradient;
  v13 = weights;
  v14 = outputShape;
  v15 = forwardConvolutionDescriptor;
  v16 = name;
  [(MPSShape *)v14 count];
  if ([(MPSShape *)v14 count]!= 5 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v17 = 0;
  LODWORD(v24) = 1;
  v23 = xmmword_1E09AA758;
  while (v17 < [(MPSShape *)v14 count:v23])
  {
    v18 = [(MPSShape *)v14 objectAtIndexedSubscript:v17];
    *(&v23 + v17) = [v18 intValue];

    ++v17;
  }

  v19 = [MEMORY[0x1E695DEF0] dataWithBytes:&v23 length:20];
  v20 = [(MPSGraph *)self constantWithData:v19 shape:&unk_1F5B77A38 dataType:536870944];

  v21 = [(MPSGraph *)self convolution3DDataGradientWithIncomingGradientTensor:v12 weightsTensor:v13 outputShapeTensor:v20 forwardConvolutionDescriptor:v15 name:v16];

  return v21;
}

- (MPSGraphTensor)convolution3DWeightsGradientWithIncomingGradientTensor:(MPSGraphTensor *)gradient sourceTensor:(MPSGraphTensor *)source outputShapeTensor:(MPSGraphTensor *)outputShapeTensor forwardConvolutionDescriptor:(MPSGraphConvolution3DOpDescriptor *)forwardConvolutionDescriptor name:(NSString *)name
{
  v38[3] = *MEMORY[0x1E69E9840];
  v12 = gradient;
  v13 = source;
  v14 = outputShapeTensor;
  v15 = forwardConvolutionDescriptor;
  v16 = name;
  shape = [(MPSGraphTensor *)v12 shape];
  if ([shape count] != 5)
  {
    shape2 = [(MPSGraphTensor *)v12 shape];
    [shape2 count];
  }

  shape3 = [(MPSGraphTensor *)v12 shape];
  if ([shape3 count] == 5)
  {
  }

  else
  {
    shape4 = [(MPSGraphTensor *)v12 shape];
    v21 = [shape4 count];

    if (v21 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  shape5 = [(MPSGraphTensor *)v13 shape];
  if ([shape5 count] != 5)
  {
    shape6 = [(MPSGraphTensor *)v13 shape];
    [shape6 count];
  }

  shape7 = [(MPSGraphTensor *)v13 shape];
  if ([shape7 count] == 5)
  {
  }

  else
  {
    shape8 = [(MPSGraphTensor *)v13 shape];
    v26 = [shape8 count];

    if (v26 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  shape9 = [(MPSGraphTensor *)v14 shape];
  if ([shape9 count] != 1)
  {
    shape10 = [(MPSGraphTensor *)v13 shape];
    [shape10 count];
  }

  shape11 = [(MPSGraphTensor *)v14 shape];
  if ([shape11 count] == 1)
  {
  }

  else
  {
    shape12 = [(MPSGraphTensor *)v13 shape];
    v31 = [shape12 count];

    if (v31 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v32 = [MPSGraphConvolution3DWeightsGradientOp alloc];
  v38[0] = v12;
  v38[1] = v13;
  v38[2] = v14;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:3];
  v34 = [(MPSGraphConvolution3DBaseOp *)v32 initWithGraph:self inputTensors:v33 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v15 name:v16];

  outputTensors = [(MPSGraphOperation *)v34 outputTensors];
  v36 = [outputTensors objectAtIndexedSubscript:0];

  return v36;
}

- (MPSGraphTensor)convolution3DWeightsGradientWithIncomingGradientTensor:(MPSGraphTensor *)incomingGradient sourceTensor:(MPSGraphTensor *)source outputShape:(MPSShape *)outputShape forwardConvolutionDescriptor:(MPSGraphConvolution3DOpDescriptor *)forwardConvolutionDescriptor name:(NSString *)name
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = incomingGradient;
  v13 = source;
  v14 = outputShape;
  v15 = forwardConvolutionDescriptor;
  v16 = name;
  [(MPSShape *)v14 count];
  if ([(MPSShape *)v14 count]!= 5 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v17 = 0;
  LODWORD(v24) = 1;
  v23 = xmmword_1E09AA758;
  while (v17 < [(MPSShape *)v14 count:v23])
  {
    v18 = [(MPSShape *)v14 objectAtIndexedSubscript:v17];
    *(&v23 + v17) = [v18 intValue];

    ++v17;
  }

  v19 = [MEMORY[0x1E695DEF0] dataWithBytes:&v23 length:20];
  v20 = [(MPSGraph *)self constantWithData:v19 shape:&unk_1F5B77A50 dataType:536870944];

  v21 = [(MPSGraph *)self convolution3DWeightsGradientWithIncomingGradientTensor:v12 sourceTensor:v13 outputShapeTensor:v20 forwardConvolutionDescriptor:v15 name:v16];

  return v21;
}

- (MPSGraphTensor)randomPhiloxStateTensorWithSeed:(NSUInteger)seed name:(NSString *)name
{
  v6 = name;
  v7 = [objc_alloc(MEMORY[0x1E6974828]) initPhiloxStateDescriptorWithSeed:seed];
  state = [v7 state];
  v9 = [(MPSGraph *)self randomPhiloxStateTensorWithCounterLow:*state counterHigh:state[1] key:state[2] name:v6];

  return v9;
}

- (MPSGraphTensor)randomPhiloxStateTensorWithCounterLow:(NSUInteger)counterLow counterHigh:(NSUInteger)counterHigh key:(NSUInteger)key name:(NSString *)name
{
  v10 = name;
  v11 = [MPSGraphInitRandomPhiloxStateOp alloc];
  v12 = [(MPSGraphInitRandomPhiloxStateOp *)v11 initWithGraph:self inputTensors:MEMORY[0x1E695E0F0] controlDependencies:MEMORY[0x1E695E0F0] counterLow:counterLow counterHigh:counterHigh key:key name:v10];
  outputTensors = [(MPSGraphOperation *)v12 outputTensors];
  v14 = [outputTensors objectAtIndexedSubscript:0];

  return v14;
}

- (id)progressRandomStateTensor:(id)tensor forShape:(id)shape name:(id)name
{
  v20[1] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  shapeCopy = shape;
  nameCopy = name;
  v11 = malloc_type_malloc(4 * [shapeCopy count], 0x100004052888210uLL);
  for (i = 0; i < [shapeCopy count]; ++i)
  {
    v13 = [shapeCopy objectAtIndexedSubscript:i];
    v11[i] = [v13 intValue];
  }

  v14 = [MEMORY[0x1E695DEF0] dataWithBytes:v11 length:{4 * objc_msgSend(shapeCopy, "count")}];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(shapeCopy, "count")}];
  v20[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v17 = [(MPSGraph *)self constantWithData:v14 shape:v16 dataType:32];

  free(v11);
  v18 = [(MPSGraph *)self progressRandomStateTensor:tensorCopy forShapeTensor:v17 name:nameCopy];

  return v18;
}

- (id)progressRandomStateTensor:(id)tensor forShapeTensor:(id)shapeTensor name:(id)name
{
  v17[2] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  shapeTensorCopy = shapeTensor;
  nameCopy = name;
  v11 = [MPSGraphUpdateRandomStateOp alloc];
  v17[0] = tensorCopy;
  v17[1] = shapeTensorCopy;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v13 = [(MPSGraphOperation *)v11 initWithGraph:self inputTensors:v12 controlDependencies:MEMORY[0x1E695E0F0] name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v13 outputTensors];
  v15 = [outputTensors objectAtIndexedSubscript:0];

  return v15;
}

- (MPSGraphTensor)randomTensorWithShape:(MPSShape *)shape descriptor:(MPSGraphRandomOpDescriptor *)descriptor name:(NSString *)name
{
  ++randomLayerSeed;
  v5 = [MPSGraph randomTensorWithShape:"randomTensorWithShape:descriptor:seed:name:" descriptor:shape seed:descriptor name:?];

  return v5;
}

- (MPSGraphTensor)randomTensorWithShapeTensor:(MPSGraphTensor *)shapeTensor descriptor:(MPSGraphRandomOpDescriptor *)descriptor name:(NSString *)name
{
  v8 = shapeTensor;
  v9 = descriptor;
  v10 = name;
  v11 = [(MPSGraph *)self fixCastIntTensor:v8 toSignedness:1 name:v10];

  ++randomLayerSeed;
  v12 = [MPSGraph randomTensorWithShapeTensor:"randomTensorWithShapeTensor:descriptor:seed:name:" descriptor:v11 seed:v9 name:?];

  return v12;
}

- (MPSGraphTensor)randomTensorWithShape:(MPSShape *)shape descriptor:(MPSGraphRandomOpDescriptor *)descriptor seed:(NSUInteger)seed name:(NSString *)name
{
  v22[1] = *MEMORY[0x1E69E9840];
  v10 = shape;
  v11 = descriptor;
  v12 = name;
  v13 = malloc_type_malloc(4 * [(MPSShape *)v10 count], 0x100004052888210uLL);
  for (i = 0; i < [(MPSShape *)v10 count]; ++i)
  {
    v15 = [(MPSShape *)v10 objectAtIndexedSubscript:i];
    v13[i] = [v15 intValue];
  }

  v16 = [MEMORY[0x1E695DEF0] dataWithBytes:v13 length:{4 * -[MPSShape count](v10, "count")}];
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MPSShape count](v10, "count")}];
  v22[0] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  v19 = [(MPSGraph *)self constantWithData:v16 shape:v18 dataType:32];

  free(v13);
  v20 = [(MPSGraph *)self randomTensorWithShapeTensor:v19 descriptor:v11 seed:seed name:v12];

  return v20;
}

- (MPSGraphTensor)randomTensorWithShapeTensor:(MPSGraphTensor *)shapeTensor descriptor:(MPSGraphRandomOpDescriptor *)descriptor seed:(NSUInteger)seed name:(NSString *)name
{
  v33[4] = *MEMORY[0x1E69E9840];
  v10 = shapeTensor;
  v11 = descriptor;
  v12 = name;
  v13 = [(MPSGraph *)self fixCastIntTensor:v10 toSignedness:1 name:v12];

  if (v12)
  {
    v14 = [(NSString *)v12 stringByAppendingFormat:@"/state"];
  }

  else
  {
    v14 = @"/randomUniform/state";
  }

  v15 = [(MPSGraph *)self randomPhiloxStateTensorWithSeed:seed name:v14];
  if (v12)
  {
  }

  distribution = [(MPSGraphRandomOpDescriptor *)v11 distribution];
  if (distribution)
  {
    if (distribution == 1)
    {
      v20 = [MPSGraphRandomNormalOp alloc];
      v31[0] = v15;
      v31[1] = v13;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
      v19 = [(MPSGraphRandomNormalOp *)v20 initWithGraph:self inputTensors:v18 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v11 name:v12];
    }

    else
    {
      if (distribution != 2)
      {
        v21 = 0;
        goto LABEL_18;
      }

      v17 = [MPSGraphRandomTruncatedNormalOp alloc];
      v32[0] = v15;
      v32[1] = v13;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
      v19 = [(MPSGraphRandomTruncatedNormalOp *)v17 initWithGraph:self inputTensors:v18 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v11 name:v12];
    }

    v21 = v19;
  }

  else
  {
    if (([(MPSGraphRandomOpDescriptor *)v11 dataType]& 0x10000000) != 0)
    {
      [(MPSGraphRandomOpDescriptor *)v11 min];
      v22 = [(MPSGraph *)self constantWithScalar:268435488 dataType:v23];
      [(MPSGraphRandomOpDescriptor *)v11 max];
      [(MPSGraph *)self constantWithScalar:268435488 dataType:v24];
    }

    else
    {
      v22 = [(MPSGraph *)self constantWithScalar:536870976 dataType:[(MPSGraphRandomOpDescriptor *)v11 minInteger]];
      [(MPSGraph *)self constantWithScalar:536870976 dataType:[(MPSGraphRandomOpDescriptor *)v11 maxInteger]];
    }
    v25 = ;
    v18 = v22;
    v26 = [MPSGraphRandomUniformOp alloc];
    v33[0] = v15;
    v33[1] = v13;
    v33[2] = v18;
    v33[3] = v25;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
    v21 = [(MPSGraphRandomUniformOp *)v26 initWithGraph:self inputTensors:v27 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v11 name:v12];
  }

LABEL_18:
  outputTensors = [(MPSGraphOperation *)v21 outputTensors];
  v29 = [outputTensors objectAtIndexedSubscript:0];

  return v29;
}

- (NSArray)randomTensorWithShape:(MPSShape *)shape descriptor:(MPSGraphRandomOpDescriptor *)descriptor stateTensor:(MPSGraphTensor *)state name:(NSString *)name
{
  v23[1] = *MEMORY[0x1E69E9840];
  v10 = shape;
  v11 = descriptor;
  v12 = state;
  v13 = name;
  v14 = malloc_type_malloc(4 * [(MPSShape *)v10 count], 0x100004052888210uLL);
  for (i = 0; i < [(MPSShape *)v10 count]; ++i)
  {
    v16 = [(MPSShape *)v10 objectAtIndexedSubscript:i];
    v14[i] = [v16 intValue];
  }

  v17 = [MEMORY[0x1E695DEF0] dataWithBytes:v14 length:{4 * -[MPSShape count](v10, "count")}];
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MPSShape count](v10, "count")}];
  v23[0] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v20 = [(MPSGraph *)self constantWithData:v17 shape:v19 dataType:536870944];

  free(v14);
  v21 = [(MPSGraph *)self randomTensorWithShapeTensor:v20 descriptor:v11 stateTensor:v12 name:v13];

  return v21;
}

- (NSArray)randomTensorWithShapeTensor:(MPSGraphTensor *)shapeTensor descriptor:(MPSGraphRandomOpDescriptor *)descriptor stateTensor:(MPSGraphTensor *)state name:(NSString *)name
{
  v40[4] = *MEMORY[0x1E69E9840];
  v10 = shapeTensor;
  v11 = descriptor;
  v12 = state;
  v13 = name;
  v35 = [(MPSGraph *)self fixCastIntTensor:v10 toSignedness:1 name:v13];

  distribution = [(MPSGraphRandomOpDescriptor *)v11 distribution];
  if (distribution)
  {
    if (distribution == 1)
    {
      v18 = [MPSGraphRandomNormalOp alloc];
      v38[0] = v12;
      v38[1] = v35;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
      v17 = [(MPSGraphRandomNormalOp *)v18 initWithGraph:self inputTensors:v16 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v11 name:v13];
    }

    else
    {
      if (distribution != 2)
      {
        v19 = 0;
        goto LABEL_13;
      }

      v15 = [MPSGraphRandomTruncatedNormalOp alloc];
      v39[0] = v12;
      v39[1] = v35;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
      v17 = [(MPSGraphRandomTruncatedNormalOp *)v15 initWithGraph:self inputTensors:v16 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v11 name:v13];
    }

    v19 = v17;
  }

  else
  {
    if (([(MPSGraphRandomOpDescriptor *)v11 dataType]& 0x10000000) != 0)
    {
      [(MPSGraphRandomOpDescriptor *)v11 min];
      v20 = [(MPSGraph *)self constantWithScalar:268435488 dataType:v21];
      [(MPSGraphRandomOpDescriptor *)v11 max];
      [(MPSGraph *)self constantWithScalar:268435488 dataType:v22];
    }

    else
    {
      v20 = [(MPSGraph *)self constantWithScalar:536870976 dataType:[(MPSGraphRandomOpDescriptor *)v11 minInteger]];
      [(MPSGraph *)self constantWithScalar:536870976 dataType:[(MPSGraphRandomOpDescriptor *)v11 maxInteger]];
    }
    v23 = ;
    v16 = v20;
    v24 = [MPSGraphRandomUniformOp alloc];
    v40[0] = v12;
    v40[1] = v35;
    v40[2] = v20;
    v40[3] = v23;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:4];
    v19 = [(MPSGraphRandomUniformOp *)v24 initWithGraph:self inputTensors:v25 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v11 name:v13];
  }

LABEL_13:
  v26 = [MPSGraphUpdateRandomStateOp alloc];
  v37[0] = v12;
  v37[1] = v35;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
  v28 = [(MPSGraphOperation *)v26 initWithGraph:self inputTensors:v27 controlDependencies:MEMORY[0x1E695E0F0] name:v13];

  outputTensors = [(MPSGraphOperation *)v19 outputTensors];
  v30 = [outputTensors objectAtIndexedSubscript:0];
  v36[0] = v30;
  outputTensors2 = [(MPSGraphOperation *)v28 outputTensors];
  v32 = [outputTensors2 objectAtIndexedSubscript:0];
  v36[1] = v32;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];

  return v33;
}

- (MPSGraphTensor)randomUniformTensorWithShape:(MPSShape *)shape name:(NSString *)name
{
  ++randomLayerSeed;
  v4 = [MPSGraph randomUniformTensorWithShape:"randomUniformTensorWithShape:seed:name:" seed:shape name:?];

  return v4;
}

- (MPSGraphTensor)randomUniformTensorWithShapeTensor:(MPSGraphTensor *)shapeTensor name:(NSString *)name
{
  v6 = shapeTensor;
  v7 = name;
  v8 = [(MPSGraph *)self fixCastIntTensor:v6 toSignedness:1 name:v7];

  ++randomLayerSeed;
  v9 = [MPSGraph randomUniformTensorWithShapeTensor:"randomUniformTensorWithShapeTensor:seed:name:" seed:v8 name:?];

  return v9;
}

- (MPSGraphTensor)randomUniformTensorWithShape:(MPSShape *)shape seed:(NSUInteger)seed name:(NSString *)name
{
  v19[1] = *MEMORY[0x1E69E9840];
  v8 = shape;
  v9 = name;
  v10 = malloc_type_malloc(4 * [(MPSShape *)v8 count], 0x100004052888210uLL);
  for (i = 0; i < [(MPSShape *)v8 count]; ++i)
  {
    v12 = [(MPSShape *)v8 objectAtIndexedSubscript:i];
    v10[i] = [v12 intValue];
  }

  v13 = [MEMORY[0x1E695DEF0] dataWithBytes:v10 length:{4 * -[MPSShape count](v8, "count")}];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MPSShape count](v8, "count")}];
  v19[0] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v16 = [(MPSGraph *)self constantWithData:v13 shape:v15 dataType:536870944];

  free(v10);
  v17 = [(MPSGraph *)self randomUniformTensorWithShapeTensor:v16 seed:seed name:v9];

  return v17;
}

- (MPSGraphTensor)randomUniformTensorWithShapeTensor:(MPSGraphTensor *)shapeTensor seed:(NSUInteger)seed name:(NSString *)name
{
  v24[4] = *MEMORY[0x1E69E9840];
  v8 = shapeTensor;
  v9 = name;
  v10 = [(MPSGraph *)self fixCastIntTensor:v8 toSignedness:1 name:v9];

  if (v9)
  {
    v11 = [(NSString *)v9 stringByAppendingFormat:@"/state"];
  }

  else
  {
    v11 = @"/randomUniform/state";
  }

  v12 = [(MPSGraph *)self randomPhiloxStateTensorWithSeed:seed name:v11];
  if (v9)
  {
  }

  v13 = [MPSGraphRandomOpDescriptor descriptorWithDistribution:0 dataType:268435488];
  if (([v13 dataType] & 0x10000000) != 0)
  {
    [v13 min];
    v14 = [(MPSGraph *)self constantWithScalar:268435488 dataType:v15];
    [v13 max];
    [(MPSGraph *)self constantWithScalar:268435488 dataType:v16];
  }

  else
  {
    v14 = -[MPSGraph constantWithScalar:dataType:](self, "constantWithScalar:dataType:", 536870976, [v13 minInteger]);
    -[MPSGraph constantWithScalar:dataType:](self, "constantWithScalar:dataType:", 536870976, [v13 maxInteger]);
  }
  v17 = ;
  v18 = [MPSGraphRandomUniformOp alloc];
  v24[0] = v12;
  v24[1] = v10;
  v24[2] = v14;
  v24[3] = v17;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
  v20 = [(MPSGraphRandomUniformOp *)v18 initWithGraph:self inputTensors:v19 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v13 name:v9];

  outputTensors = [(MPSGraphOperation *)v20 outputTensors];
  v22 = [outputTensors objectAtIndexedSubscript:0];

  return v22;
}

- (NSArray)randomUniformTensorWithShape:(MPSShape *)shape stateTensor:(MPSGraphTensor *)state name:(NSString *)name
{
  v20[1] = *MEMORY[0x1E69E9840];
  v8 = shape;
  v9 = state;
  v10 = name;
  v11 = malloc_type_malloc(4 * [(MPSShape *)v8 count], 0x100004052888210uLL);
  for (i = 0; i < [(MPSShape *)v8 count]; ++i)
  {
    v13 = [(MPSShape *)v8 objectAtIndexedSubscript:i];
    v11[i] = [v13 intValue];
  }

  v14 = [MEMORY[0x1E695DEF0] dataWithBytes:v11 length:{4 * -[MPSShape count](v8, "count")}];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MPSShape count](v8, "count")}];
  v20[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v17 = [(MPSGraph *)self constantWithData:v14 shape:v16 dataType:32];

  free(v11);
  v18 = [(MPSGraph *)self randomUniformTensorWithShapeTensor:v17 stateTensor:v9 name:v10];

  return v18;
}

- (NSArray)randomUniformTensorWithShapeTensor:(MPSGraphTensor *)shapeTensor stateTensor:(MPSGraphTensor *)state name:(NSString *)name
{
  v31[4] = *MEMORY[0x1E69E9840];
  v8 = shapeTensor;
  v27 = state;
  v28 = name;
  v26 = [(MPSGraph *)self fixCastIntTensor:v8 toSignedness:1 name:?];

  v9 = [MPSGraphRandomOpDescriptor descriptorWithDistribution:0 dataType:268435488];
  if (([v9 dataType] & 0x10000000) != 0)
  {
    [v9 min];
    v10 = [(MPSGraph *)self constantWithScalar:268435488 dataType:v11];
    [v9 max];
    [(MPSGraph *)self constantWithScalar:268435488 dataType:v12];
  }

  else
  {
    v10 = -[MPSGraph constantWithScalar:dataType:](self, "constantWithScalar:dataType:", 536870976, [v9 minInteger]);
    -[MPSGraph constantWithScalar:dataType:](self, "constantWithScalar:dataType:", 536870976, [v9 maxInteger]);
  }
  v25 = ;
  v13 = [MPSGraphRandomUniformOp alloc];
  v31[0] = v27;
  v31[1] = v26;
  v31[2] = v10;
  v31[3] = v25;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
  v15 = [(MPSGraphRandomUniformOp *)v13 initWithGraph:self inputTensors:v14 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v9 name:v28];

  v16 = [MPSGraphUpdateRandomStateOp alloc];
  v30[0] = v27;
  v30[1] = v26;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v18 = [(MPSGraphOperation *)v16 initWithGraph:self inputTensors:v17 controlDependencies:MEMORY[0x1E695E0F0] name:v28];

  outputTensors = [(MPSGraphOperation *)v15 outputTensors];
  v20 = [outputTensors objectAtIndexedSubscript:0];
  v29[0] = v20;
  outputTensors2 = [(MPSGraphOperation *)v18 outputTensors];
  v22 = [outputTensors2 objectAtIndexedSubscript:0];
  v29[1] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];

  return v23;
}

- (MPSGraphTensor)dropoutTensor:(MPSGraphTensor *)tensor rate:(double)rate name:(NSString *)name
{
  v8 = tensor;
  v9 = name;
  v10 = [(MPSGraph *)self constantWithScalar:&unk_1F5B77A68 shape:268435488 dataType:rate];
  dataType = [(MPSGraphTensor *)v8 dataType];
  if (v9)
  {
    v12 = [(NSString *)v9 stringByAppendingFormat:@"/cast"];
  }

  else
  {
    v12 = @"dropout/cast";
  }

  v13 = [(MPSGraph *)self castTensor:v10 toType:dataType name:v12];
  if (v9)
  {
  }

  v14 = [(MPSGraph *)self dropoutTensor:v8 rateTensor:v13 name:v9];

  return v14;
}

- (MPSGraphTensor)dropoutTensor:(MPSGraphTensor *)tensor rateTensor:(MPSGraphTensor *)rate name:(NSString *)name
{
  v8 = tensor;
  v9 = rate;
  v10 = name;
  v11 = v10;
  if (v10)
  {
    v12 = [(NSString *)v10 stringByAppendingString:@"/shape"];
  }

  else
  {
    v12 = @"dropout/shape";
  }

  v31 = [(MPSGraph *)self shapeOfTensor:v8 name:v12];
  if (v11)
  {

    v13 = [(NSString *)v11 stringByAppendingString:@"/randomUniform"];
  }

  else
  {
    v13 = @"dropout/randomUniform";
  }

  v14 = [(MPSGraph *)self randomUniformTensorWithShapeTensor:v31 name:v13];
  if (v11)
  {
  }

  dataType = [(MPSGraphTensor *)v8 dataType];
  if (v11)
  {
    v16 = [(NSString *)v11 stringByAppendingFormat:@"/randomUniform/cast"];
  }

  else
  {
    v16 = @"dropout/randomUniform/cast";
  }

  v17 = [(MPSGraph *)self castTensor:v14 toType:dataType name:v16];
  if (v11)
  {

    v18 = [(NSString *)v11 stringByAppendingString:@"/greaterEqual"];
  }

  else
  {
    v18 = @"dropout/greaterEqual";
  }

  v19 = [(MPSGraph *)self greaterThanOrEqualToWithPrimaryTensor:v17 secondaryTensor:v9 name:v18];
  if (v11)
  {
  }

  dataType2 = [(MPSGraphTensor *)v8 dataType];
  if (v11)
  {
    v21 = [(NSString *)v11 stringByAppendingFormat:@"/randomUniform/cast"];
  }

  else
  {
    v21 = @"dropout/randomUniform/cast";
  }

  v22 = [(MPSGraph *)self castTensor:v19 toType:dataType2 name:v21];
  if (v11)
  {

    v23 = [(NSString *)v11 stringByAppendingString:@"/reciprocal"];
  }

  else
  {
    v23 = @"dropout/reciprocal";
  }

  v24 = [(MPSGraph *)self reciprocalWithTensor:v9 name:v23];
  if (v11)
  {

    v25 = [(NSString *)v11 stringByAppendingString:@"/multiplication"];
  }

  else
  {
    v25 = @"dropout/multiplication";
  }

  v26 = [(MPSGraph *)self multiplicationWithPrimaryTensor:v22 secondaryTensor:v24 name:v25];
  if (v11)
  {

    v27 = [(NSString *)v11 stringByAppendingString:@"/multiplication_1"];
  }

  else
  {
    v27 = @"dropout/multiplication_1";
  }

  v28 = [(MPSGraph *)self multiplicationWithPrimaryTensor:v8 secondaryTensor:v26 name:v27];
  if (v11)
  {
  }

  return v28;
}

- (MPSGraphTensor)scatterNDWithUpdatesTensor:(MPSGraphTensor *)updatesTensor indicesTensor:(MPSGraphTensor *)indicesTensor shape:(MPSShape *)shape batchDimensions:(NSUInteger)batchDimensions name:(NSString *)name
{
  v7 = [(MPSGraph *)self scatterNDWithUpdatesTensor:updatesTensor indicesTensor:indicesTensor shape:shape batchDimensions:batchDimensions mode:0 name:name];

  return v7;
}

- (MPSGraphTensor)scatterNDWithUpdatesTensor:(MPSGraphTensor *)updatesTensor indicesTensor:(MPSGraphTensor *)indicesTensor shape:(MPSShape *)shape batchDimensions:(NSUInteger)batchDimensions mode:(MPSGraphScatterMode)mode name:(NSString *)name
{
  v14 = updatesTensor;
  v15 = indicesTensor;
  v16 = shape;
  v17 = name;
  v18 = 0.0;
  if ((mode - 2) <= 3)
  {
    v18 = dbl_1E09AAA78[mode - 2];
  }

  v19 = [(MPSGraph *)self constantWithScalar:v16 shape:[(MPSGraphTensor *)v14 dataType] dataType:v18];
  v20 = [(MPSGraph *)self scatterNDWithDataTensor:v19 updatesTensor:v14 indicesTensor:v15 batchDimensions:batchDimensions mode:mode name:v17];

  return v20;
}

- (MPSGraphTensor)scatterNDWithDataTensor:(MPSGraphTensor *)dataTensor updatesTensor:(MPSGraphTensor *)updatesTensor indicesTensor:(MPSGraphTensor *)indicesTensor batchDimensions:(NSUInteger)batchDimensions mode:(MPSGraphScatterMode)mode name:(NSString *)name
{
  v24[3] = *MEMORY[0x1E69E9840];
  v14 = dataTensor;
  v15 = updatesTensor;
  v16 = indicesTensor;
  v17 = name;
  v18 = [MPSGraphScatterNDOp alloc];
  v24[0] = v14;
  v24[1] = v15;
  v24[2] = v16;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];
  v20 = [(MPSGraphScatterNDOp *)v18 initWithGraph:self inputTensors:v19 controlDependencies:MEMORY[0x1E695E0F0] batchDimensions:batchDimensions mode:mode name:v17];

  outputTensors = [(MPSGraphOperation *)v20 outputTensors];
  v22 = [outputTensors objectAtIndexedSubscript:0];

  return v22;
}

- (id)scatterWithUpdatesTensor:(id)tensor indicesTensor:(id)indicesTensor shape:(id)shape axis:(int64_t)axis name:(id)name
{
  v7 = [(MPSGraph *)self scatterWithUpdatesTensor:tensor indicesTensor:indicesTensor shape:shape axis:axis mode:0 name:name];

  return v7;
}

- (id)scatterWithDataTensor:(id)tensor updatesTensor:(id)updatesTensor indicesTensor:(id)indicesTensor axis:(int64_t)axis name:(id)name
{
  v7 = [(MPSGraph *)self scatterWithDataTensor:tensor updatesTensor:updatesTensor indicesTensor:indicesTensor axis:axis mode:0 name:name];

  return v7;
}

- (MPSGraphTensor)scatterWithUpdatesTensor:(MPSGraphTensor *)updatesTensor indicesTensor:(MPSGraphTensor *)indicesTensor shape:(MPSShape *)shape axis:(NSInteger)axis mode:(MPSGraphScatterMode)mode name:(NSString *)name
{
  v14 = updatesTensor;
  v15 = indicesTensor;
  v16 = shape;
  v17 = name;
  v18 = 0.0;
  if ((mode - 2) <= 3)
  {
    v18 = dbl_1E09AAA78[mode - 2];
  }

  v19 = [(MPSGraph *)self constantWithScalar:v16 shape:[(MPSGraphTensor *)v14 dataType] dataType:v18];
  v20 = [(MPSGraph *)self scatterWithDataTensor:v19 updatesTensor:v14 indicesTensor:v15 axis:axis mode:mode name:v17];

  return v20;
}

- (MPSGraphTensor)scatterWithDataTensor:(MPSGraphTensor *)dataTensor updatesTensor:(MPSGraphTensor *)updatesTensor indicesTensor:(MPSGraphTensor *)indicesTensor axis:(NSInteger)axis mode:(MPSGraphScatterMode)mode name:(NSString *)name
{
  v25[4] = *MEMORY[0x1E69E9840];
  v14 = dataTensor;
  v15 = updatesTensor;
  v16 = indicesTensor;
  v17 = name;
  v18 = [(MPSGraph *)self constantWithScalar:536870944 dataType:axis];
  v19 = [MPSGraphScatterOp alloc];
  v25[0] = v14;
  v25[1] = v15;
  v25[2] = v16;
  v25[3] = v18;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
  v21 = [(MPSGraphScatterOp *)v19 initWithGraph:self inputTensors:v20 controlDependencies:MEMORY[0x1E695E0F0] axis:axis mode:mode name:v17];

  outputTensors = [(MPSGraphOperation *)v21 outputTensors];
  v23 = [outputTensors objectAtIndexedSubscript:0];

  return v23;
}

- (MPSGraphTensor)scatterAlongAxis:(NSInteger)axis withUpdatesTensor:(MPSGraphTensor *)updatesTensor indicesTensor:(MPSGraphTensor *)indicesTensor shape:(MPSShape *)shape mode:(MPSGraphScatterMode)mode name:(NSString *)name
{
  v14 = updatesTensor;
  v15 = indicesTensor;
  v16 = shape;
  v17 = name;
  v18 = [(MPSGraph *)self constantWithScalar:536870944 dataType:axis];
  v19 = [(MPSGraph *)self scatterAlongAxisTensor:v18 withUpdatesTensor:v14 indicesTensor:v15 shape:v16 mode:mode name:v17];

  return v19;
}

- (MPSGraphTensor)scatterAlongAxis:(NSInteger)axis withDataTensor:(MPSGraphTensor *)dataTensor updatesTensor:(MPSGraphTensor *)updatesTensor indicesTensor:(MPSGraphTensor *)indicesTensor mode:(MPSGraphScatterMode)mode name:(NSString *)name
{
  v14 = dataTensor;
  v15 = updatesTensor;
  v16 = indicesTensor;
  v17 = name;
  v18 = [(MPSGraph *)self constantWithScalar:536870944 dataType:axis];
  v19 = [(MPSGraph *)self scatterAlongAxisTensor:v18 withDataTensor:v14 updatesTensor:v15 indicesTensor:v16 mode:mode name:v17];

  return v19;
}

- (MPSGraphTensor)scatterAlongAxisTensor:(MPSGraphTensor *)axisTensor withUpdatesTensor:(MPSGraphTensor *)updatesTensor indicesTensor:(MPSGraphTensor *)indicesTensor shape:(MPSShape *)shape mode:(MPSGraphScatterMode)mode name:(NSString *)name
{
  v14 = axisTensor;
  v15 = updatesTensor;
  v16 = indicesTensor;
  v17 = shape;
  v18 = name;
  v19 = 0.0;
  if ((mode - 2) <= 3)
  {
    v19 = dbl_1E09AAA78[mode - 2];
  }

  v20 = [(MPSGraph *)self constantWithScalar:v17 shape:[(MPSGraphTensor *)v15 dataType] dataType:v19];
  v21 = [(MPSGraph *)self scatterAlongAxisTensor:v14 withDataTensor:v20 updatesTensor:v15 indicesTensor:v16 mode:mode name:v18];

  return v21;
}

- (MPSGraphTensor)scatterAlongAxisTensor:(MPSGraphTensor *)axisTensor withDataTensor:(MPSGraphTensor *)dataTensor updatesTensor:(MPSGraphTensor *)updatesTensor indicesTensor:(MPSGraphTensor *)indicesTensor mode:(MPSGraphScatterMode)mode name:(NSString *)name
{
  v26[4] = *MEMORY[0x1E69E9840];
  v14 = axisTensor;
  v15 = dataTensor;
  v16 = updatesTensor;
  v17 = indicesTensor;
  v18 = name;
  v19 = [(MPSGraph *)self fixCastIntTensor:v14 toSignedness:1 name:v18];

  v20 = [MPSGraphScatterAlongAxisOp alloc];
  v26[0] = v15;
  v26[1] = v16;
  v26[2] = v17;
  v26[3] = v19;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
  v22 = [(MPSGraphScatterAlongAxisOp *)v20 initWithGraph:self inputTensors:v21 controlDependencies:MEMORY[0x1E695E0F0] mode:mode name:v18];

  outputTensors = [(MPSGraphOperation *)v22 outputTensors];
  v24 = [outputTensors objectAtIndexedSubscript:0];

  return v24;
}

- (id)scatterAlongAxisWithUpdatesTensor:(id)tensor indicesTensor:(id)indicesTensor shape:(id)shape axis:(int64_t)axis name:(id)name
{
  v7 = [(MPSGraph *)self scatterAlongAxis:axis withUpdatesTensor:tensor indicesTensor:indicesTensor shape:shape mode:0 name:name];

  return v7;
}

- (id)scatterAlongAxisWithUpdatesTensor:(id)tensor indicesTensor:(id)indicesTensor shape:(id)shape axis:(int64_t)axis mode:(int64_t)mode name:(id)name
{
  v8 = [(MPSGraph *)self scatterAlongAxis:axis withUpdatesTensor:tensor indicesTensor:indicesTensor shape:shape mode:mode name:name];

  return v8;
}

- (id)scatterAlongAxisWithDataTensor:(id)tensor updatesTensor:(id)updatesTensor indicesTensor:(id)indicesTensor axis:(int64_t)axis name:(id)name
{
  v7 = [(MPSGraph *)self scatterAlongAxis:axis withDataTensor:tensor updatesTensor:updatesTensor indicesTensor:indicesTensor mode:0 name:name];

  return v7;
}

- (id)scatterAlongAxisWithDataTensor:(id)tensor updatesTensor:(id)updatesTensor indicesTensor:(id)indicesTensor axis:(int64_t)axis mode:(int64_t)mode name:(id)name
{
  v8 = [(MPSGraph *)self scatterAlongAxis:axis withDataTensor:tensor updatesTensor:updatesTensor indicesTensor:indicesTensor mode:mode name:name];

  return v8;
}

- (MPSGraphTensor)nonZeroIndicesOfTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v8 = [MPSGraphNonZeroOp alloc];
  v14[0] = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v10 = [(MPSGraphOperation *)v8 initWithGraph:self inputTensors:v9 controlDependencies:MEMORY[0x1E695E0F0] name:v7];

  outputTensors = [(MPSGraphOperation *)v10 outputTensors];
  v12 = [outputTensors objectAtIndexedSubscript:0];

  return v12;
}

- (MPSGraphTensor)gatherNDWithUpdatesTensor:(MPSGraphTensor *)updatesTensor indicesTensor:(MPSGraphTensor *)indicesTensor batchDimensions:(NSUInteger)batchDimensions name:(NSString *)name
{
  v21[2] = *MEMORY[0x1E69E9840];
  v10 = updatesTensor;
  v11 = indicesTensor;
  v12 = name;
  v13 = v11;
  v14 = v10;
  v15 = [MPSGraphGatherNDOp alloc];
  v21[0] = v14;
  v21[1] = v13;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v17 = [(MPSGraphGatherNDOp *)v15 initWithGraph:self inputTensors:v16 controlDependencies:MEMORY[0x1E695E0F0] batchDimensions:batchDimensions name:v12];

  outputTensors = [(MPSGraphOperation *)v17 outputTensors];
  v19 = [outputTensors objectAtIndexedSubscript:0];

  return v19;
}

- (MPSGraphTensor)gatherWithUpdatesTensor:(MPSGraphTensor *)updatesTensor indicesTensor:(MPSGraphTensor *)indicesTensor axis:(NSUInteger)axis batchDimensions:(NSUInteger)batchDimensions name:(NSString *)name
{
  v22[3] = *MEMORY[0x1E69E9840];
  v12 = updatesTensor;
  v13 = indicesTensor;
  v14 = name;
  v15 = [(MPSGraph *)self constantWithScalar:536870944 dataType:axis];
  v16 = [MPSGraphGatherOp alloc];
  v22[0] = v12;
  v22[1] = v13;
  v22[2] = v15;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
  v18 = [(MPSGraphGatherOp *)v16 initWithGraph:self inputTensors:v17 controlDependencies:MEMORY[0x1E695E0F0] axis:axis batchDimensions:batchDimensions name:v14];

  outputTensors = [(MPSGraphOperation *)v18 outputTensors];
  v20 = [outputTensors objectAtIndexedSubscript:0];

  return v20;
}

- (MPSGraphTensor)gatherAlongAxis:(NSInteger)axis withUpdatesTensor:(MPSGraphTensor *)updatesTensor indicesTensor:(MPSGraphTensor *)indicesTensor name:(NSString *)name
{
  v10 = updatesTensor;
  v11 = indicesTensor;
  v12 = name;
  v13 = [(MPSGraph *)self constantWithScalar:536870944 dataType:axis];
  v14 = [(MPSGraph *)self gatherAlongAxisTensor:v13 withUpdatesTensor:v10 indicesTensor:v11 name:v12];

  return v14;
}

- (MPSGraphTensor)gatherAlongAxisTensor:(MPSGraphTensor *)axisTensor withUpdatesTensor:(MPSGraphTensor *)updatesTensor indicesTensor:(MPSGraphTensor *)indicesTensor name:(NSString *)name
{
  v21[3] = *MEMORY[0x1E69E9840];
  v10 = axisTensor;
  v11 = updatesTensor;
  v12 = indicesTensor;
  v13 = name;
  v14 = [(MPSGraph *)self fixCastIntTensor:v10 toSignedness:1 name:v13];

  v15 = [MPSGraphGatherAlongAxisOp alloc];
  v21[0] = v11;
  v21[1] = v12;
  v21[2] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];
  v17 = [(MPSGraphOperation *)v15 initWithGraph:self inputTensors:v16 controlDependencies:MEMORY[0x1E695E0F0] name:v13];

  outputTensors = [(MPSGraphOperation *)v17 outputTensors];
  v19 = [outputTensors objectAtIndexedSubscript:0];

  return v19;
}

- (id)gatherAlongAxisWithUpdatesTensor:(id)tensor indicesTensor:(id)indicesTensor axis:(int64_t)axis name:(id)name
{
  v6 = [(MPSGraph *)self gatherAlongAxis:axis withUpdatesTensor:tensor indicesTensor:indicesTensor name:name];

  return v6;
}

- (id)quantizedGatherWithUpdatesTensor:(id)tensor indicesTensor:(id)indicesTensor scaleTensor:(id)scaleTensor zeroPointTensor:(id)pointTensor minTensor:(id)minTensor dequantDataType:(unsigned int)type axis:(unint64_t)axis batchDimensions:(unint64_t)self0 name:(id)self1
{
  tensorCopy = tensor;
  indicesTensorCopy = indicesTensor;
  scaleTensorCopy = scaleTensor;
  pointTensorCopy = pointTensor;
  minTensorCopy = minTensor;
  nameCopy = name;
  v21 = [(MPSGraph *)self constantWithScalar:536870944 dataType:axis];
  array = [MEMORY[0x1E695DF70] array];
  [array addObject:tensorCopy];
  [array addObject:indicesTensorCopy];
  [array addObject:v21];
  [array addObject:scaleTensorCopy];
  if (pointTensorCopy)
  {
    [array addObject:pointTensorCopy];
  }

  if (minTensorCopy)
  {
    [array addObject:minTensorCopy];
  }

  v23 = [MPSGraphQuantizedGatherOp alloc];
  v24 = [(MPSGraphQuantizedGatherOp *)v23 initWithGraph:self inputTensors:array controlDependencies:MEMORY[0x1E695E0F0] hasZeroPoint:pointTensorCopy != 0 hasMin:minTensorCopy != 0 dequantDataType:type axis:axis batchDimensions:dimensions name:nameCopy];
  outputTensors = [(MPSGraphOperation *)v24 outputTensors];
  v26 = [outputTensors objectAtIndexedSubscript:0];

  return v26;
}

- (MPSGraphTensor)softMaxCrossEntropyWithSourceTensor:(MPSGraphTensor *)sourceTensor labelsTensor:(MPSGraphTensor *)labelsTensor axis:(NSInteger)axis reductionType:(MPSGraphLossReductionType)reductionType name:(NSString *)name
{
  v11 = sourceTensor;
  v40 = labelsTensor;
  v41 = axis;
  v12 = name;
  v13 = v12;
  v39 = v11;
  if (v12)
  {
    v14 = [(NSString *)v12 stringByAppendingString:@"/reductionMaximum"];
  }

  else
  {
    v14 = @"softMaxCrossEntropy/reductionMaximum";
  }

  reductionType = [(MPSGraph *)self reductionMaximumWithTensor:v11 axis:axis name:v14, reductionType];
  if (v13)
  {
  }

  v38 = reductionType;
  operation = [reductionType operation];
  [operation setStopGradient:1];

  if (v13)
  {
    v17 = [(NSString *)v13 stringByAppendingString:@"/subtraction"];
  }

  else
  {
    v17 = @"softMaxCrossEntropy/subtraction";
  }

  v18 = [(MPSGraph *)self subtractionWithPrimaryTensor:v11 secondaryTensor:reductionType name:v17];
  if (v13)
  {

    v19 = [(NSString *)v13 stringByAppendingString:@"/exponent"];
  }

  else
  {
    v19 = @"softMaxCrossEntropy/exponent";
  }

  v20 = [(MPSGraph *)self exponentWithTensor:v18 name:v19];
  v37 = v20;
  if (v13)
  {

    v21 = [(NSString *)v13 stringByAppendingString:@"/reductionSum"];
  }

  else
  {
    v21 = @"softMaxCrossEntropy/reductionSum";
  }

  v22 = [(MPSGraph *)self reductionSumWithTensor:v20 axis:axis name:v21];
  if (v13)
  {

    v23 = [(NSString *)v13 stringByAppendingString:@"/logarithm"];
  }

  else
  {
    v23 = @"softMaxCrossEntropy/logarithm";
  }

  v24 = [(MPSGraph *)self logarithmWithTensor:v22 name:v23];
  if (v13)
  {

    v25 = [(NSString *)v13 stringByAppendingString:@"/subtraction2"];
  }

  else
  {
    v25 = @"softMaxCrossEntropy/subtraction2";
  }

  v26 = [(MPSGraph *)self subtractionWithPrimaryTensor:v18 secondaryTensor:v24 name:v25];
  if (v13)
  {

    v27 = [(NSString *)v13 stringByAppendingString:@"/logarithm"];
  }

  else
  {
    v27 = @"softMaxCrossEntropy/multiplication";
  }

  v28 = [(MPSGraph *)self multiplicationWithPrimaryTensor:v26 secondaryTensor:v40 name:v27];
  if (v13)
  {

    v29 = [(NSString *)v13 stringByAppendingString:@"/reductionSum_1"];
  }

  else
  {
    v29 = @"softMaxCrossEntropy/reductionSum_1";
  }

  v30 = [(MPSGraph *)self reductionSumWithTensor:v28 axis:axis name:v29];
  if (v13)
  {

    v31 = [(NSString *)v13 stringByAppendingString:@"/negative"];
  }

  else
  {
    v31 = @"softMaxCrossEntropy/negative";
  }

  v32 = [(MPSGraph *)self negativeWithTensor:v30 name:v31];
  if (v13)
  {
  }

  v33 = [(MPSGraph *)self lossReductionWithTensor:v32 reductionType:v36 axis:&v41 name:v13];

  return v33;
}

- (id)lossReductionWithTensor:(id)tensor reductionType:(unint64_t)type axis:(int64_t *)axis name:(id)name
{
  tensorCopy = tensor;
  nameCopy = name;
  shape = [tensorCopy shape];
  v13 = [shape count];

  if (axis)
  {
    v14 = (v13 & (*axis >> 63)) + *axis;
    if (type != 2)
    {
LABEL_3:
      if (type == 1)
      {
        v15 = v13 - 1;
        if (v13 >= 1)
        {
          if (nameCopy)
          {
            do
            {
              if (v14 != v15)
              {
                v18 = [nameCopy stringByAppendingString:@"/lossReduction"];
                v16 = [(MPSGraph *)self reductionSumWithTensor:tensorCopy axis:v15 name:v18];

                tensorCopy = v16;
              }

              v17 = v15-- <= 0;
            }

            while (!v17);
          }

          else
          {
            do
            {
              if (v14 != v15)
              {
                v26 = [(MPSGraph *)self reductionSumWithTensor:tensorCopy axis:v15 name:@"lossReduction"];

                tensorCopy = v26;
              }

              v17 = v15-- <= 0;
            }

            while (!v17);
          }
        }
      }

      goto LABEL_22;
    }
  }

  else
  {
    v14 = v13;
    if (type != 2)
    {
      goto LABEL_3;
    }
  }

  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v13 >= 1)
  {
    v20 = 0;
    v21 = 1;
    do
    {
      if (v14 != v20)
      {
        v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v21 - 1];
        [v19 addObject:v22];
      }

      v20 = v21++;
    }

    while (v13 > v20);
  }

  if (nameCopy)
  {
    v23 = [nameCopy stringByAppendingString:@"/lossReduction"];
  }

  else
  {
    v23 = @"lossReduction";
  }

  v24 = [(MPSGraph *)self meanOfTensor:tensorCopy axes:v19 name:v23];

  if (nameCopy)
  {
  }

  tensorCopy = v24;
LABEL_22:

  return tensorCopy;
}

- (MPSGraphTensor)softMaxCrossEntropyGradientWithIncomingGradientTensor:(MPSGraphTensor *)gradientTensor sourceTensor:(MPSGraphTensor *)sourceTensor labelsTensor:(MPSGraphTensor *)labelsTensor axis:(NSInteger)axis reductionType:(MPSGraphLossReductionType)reductionType name:(NSString *)name
{
  v13 = gradientTensor;
  v14 = sourceTensor;
  v15 = labelsTensor;
  v16 = name;
  v17 = v16;
  if (v16)
  {
    v18 = [(NSString *)v16 stringByAppendingString:@"/softMax"];
  }

  else
  {
    v18 = @"softMaxCrossEntropyGradient/softMax";
  }

  v19 = [(MPSGraph *)self softMaxWithTensor:v14 axis:axis name:v18];
  if (v17)
  {

    v20 = [(NSString *)v17 stringByAppendingString:@"/subtraction"];
  }

  else
  {
    v20 = @"softMaxCrossEntropyGradient/subtraction";
  }

  v21 = [(MPSGraph *)self subtractionWithPrimaryTensor:v19 secondaryTensor:v15 name:v20];
  if (v17)
  {

    v22 = [(NSString *)v17 stringByAppendingString:@"/multiplication"];
  }

  else
  {
    v22 = @"softMaxCrossEntropyGradient/multiplication";
  }

  v23 = [(MPSGraph *)self multiplicationWithPrimaryTensor:v13 secondaryTensor:v21 name:v22];
  if (v17)
  {
  }

  return v23;
}

- (NSDictionary)gradientForPrimaryTensor:(MPSGraphTensor *)primaryTensor withTensors:(NSArray *)tensors name:(NSString *)name
{
  v47[1] = *MEMORY[0x1E69E9840];
  v8 = primaryTensor;
  v9 = tensors;
  v10 = name;
  selfCopy = self;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v12;
  v39 = v15;
  v16 = v13;
  v40 = v16;
  v17 = selfCopy;
  v41 = v17;
  memset(v43, 0, sizeof(v43));
  v44 = 1065353216;
  v45 = 0;
  v18 = @"gradient";
  v38 = v14;
  if (v14)
  {
    v18 = v14;
  }

  v42 = v18;
  WeakRetained = objc_loadWeakRetained(&v15->_parentBlock);
  Autodiff::recurseForUses(&v39, WeakRetained, v15);
  v46 = WeakRetained;
  v47[0] = &v46;
  v20 = std::__hash_table<std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(v43, &v46);
  for (i = 0; i < [(NSArray *)v40 count]; ++i)
  {
    v22 = [(NSArray *)v40 objectAtIndexedSubscript:i];
    v47[0] = v22;
    v23 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>(v20 + 3, v47);

    if (!v23 || (v23[6] & 1) == 0)
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

  v47[0] = v39;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
  v25 = Autodiff::getFilledLike(&v39, v39, 1.0, &cfstr_Initialgrad.isa);
  v46 = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];

  Autodiff::computeGradsForBlock(&v39, WeakRetained, v24, v26);
  if (v45 == 1)
  {
    controlFlowPostAutodiff(&v39);
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v28 = objc_loadWeakRetained(&v15->_parentBlock);
  for (j = 0; j < [(NSArray *)v16 count]; ++j)
  {
    v30 = [(NSArray *)v16 objectAtIndexedSubscript:j];
    v31 = Autodiff::getGradientOf(&v39, v28, v30);

    if (!v31 && MTLReportFailureTypeEnabled())
    {
      v37 = [(NSArray *)v16 objectAtIndexedSubscript:j];
      operation = [v37 operation];
      name = [operation name];
      MTLReportFailure();
    }

    v32 = [(NSArray *)v16 objectAtIndexedSubscript:j, name];
    [dictionary setObject:v31 forKey:v32];
  }

  v34 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary];

  Autodiff::~Autodiff(&v39);

  return v34;
}

- (id)gradientForPrimaryTensor:(id)tensor withSecondaryTensor:(id)secondaryTensor name:(id)name
{
  v15[1] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  secondaryTensorCopy = secondaryTensor;
  nameCopy = name;
  v15[0] = secondaryTensorCopy;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v12 = [(MPSGraph *)self gradientForPrimaryTensor:tensorCopy withTensors:v11 name:nameCopy];

  [v12 count];
  if ([v12 count] != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v13 = [v12 objectForKeyedSubscript:secondaryTensorCopy];

  return v13;
}

- (id)callSymbolName:(id)name inputTensors:(id)tensors outputTypes:(id)types name:(id)a6
{
  v6 = [(MPSGraph *)self callWithInputTensors:tensors outputTypes:types symbolName:name inliningOption:0 name:a6];

  return v6;
}

- (id)callWithInputTensors:(id)tensors outputTypes:(id)types symbolName:(id)name name:(id)a6
{
  v6 = [(MPSGraph *)self callWithInputTensors:tensors outputTypes:types symbolName:name inliningOption:0 name:a6];

  return v6;
}

- (id)callWithInputTensors:(id)tensors outputTypes:(id)types symbolName:(id)name inliningOption:(unint64_t)option name:(id)a7
{
  tensorsCopy = tensors;
  typesCopy = types;
  nameCopy = name;
  v15 = a7;
  v16 = [MPSGraphCallOp alloc];
  v17 = [(MPSGraphCallOp *)v16 initWithGraph:self inputTensors:tensorsCopy controlDependencies:MEMORY[0x1E695E0F0] outputTypes:typesCopy symbolName:nameCopy inliningOption:option name:v15];
  outputTensors = [(MPSGraphOperation *)v17 outputTensors];

  return outputTensors;
}

- (MPSGraphTensor)bandPartWithTensor:(MPSGraphTensor *)inputTensor numLower:(NSInteger)numLower numUpper:(NSInteger)numUpper name:(NSString *)name
{
  v10 = inputTensor;
  v11 = name;
  v12 = [(MPSGraph *)self constantWithScalar:536870944 dataType:numLower];
  v13 = [(MPSGraph *)self constantWithScalar:536870944 dataType:numUpper];
  v14 = [(MPSGraph *)self bandPartWithTensor:v10 numLowerTensor:v12 numUpperTensor:v13 name:v11];

  return v14;
}

- (MPSGraphTensor)bandPartWithTensor:(MPSGraphTensor *)inputTensor numLowerTensor:(MPSGraphTensor *)numLowerTensor numUpperTensor:(MPSGraphTensor *)numUpperTensor name:(NSString *)name
{
  v19[3] = *MEMORY[0x1E69E9840];
  v10 = inputTensor;
  v11 = numLowerTensor;
  v12 = numUpperTensor;
  v13 = name;
  v14 = [MPSGraphBandPartOp alloc];
  v19[0] = v10;
  v19[1] = v11;
  v19[2] = v12;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
  v16 = [(MPSGraphOperation *)v14 initWithGraph:self inputTensors:v15 controlDependencies:MEMORY[0x1E695E0F0] name:v13];

  v17 = [v16[3] objectAtIndexedSubscript:0];

  return v17;
}

- (MPSGraphTensor)convolutionTranspose2DWithSourceTensor:(MPSGraphTensor *)source weightsTensor:(MPSGraphTensor *)weights outputShape:(MPSShape *)outputShape descriptor:(MPSGraphConvolution2DOpDescriptor *)descriptor name:(NSString *)name
{
  v7 = [(MPSGraph *)self convolution2DDataGradientWithIncomingGradientTensor:source weightsTensor:weights outputShape:outputShape forwardConvolutionDescriptor:descriptor name:name];

  return v7;
}

- (MPSGraphTensor)convolutionTranspose2DWithSourceTensor:(MPSGraphTensor *)source weightsTensor:(MPSGraphTensor *)weights outputShapeTensor:(MPSGraphTensor *)outputShape descriptor:(MPSGraphConvolution2DOpDescriptor *)descriptor name:(NSString *)name
{
  v7 = [(MPSGraph *)self convolution2DDataGradientWithIncomingGradientTensor:source weightsTensor:weights outputShapeTensor:outputShape forwardConvolutionDescriptor:descriptor name:name];

  return v7;
}

- (MPSGraphTensor)convolutionTranspose2DDataGradientWithIncomingGradientTensor:(MPSGraphTensor *)incomingGradient weightsTensor:(MPSGraphTensor *)weights outputShape:(MPSShape *)outputShape forwardConvolutionDescriptor:(MPSGraphConvolution2DOpDescriptor *)forwardConvolutionDescriptor name:(NSString *)name
{
  v7 = [(MPSGraph *)self convolution2DWithSourceTensor:incomingGradient weightsTensor:weights descriptor:forwardConvolutionDescriptor name:name];

  return v7;
}

- (MPSGraphTensor)convolutionTranspose2DDataGradientWithIncomingGradientTensor:(MPSGraphTensor *)incomingGradient weightsTensor:(MPSGraphTensor *)weights outputShapeTensor:(MPSGraphTensor *)outputShape forwardConvolutionDescriptor:(MPSGraphConvolution2DOpDescriptor *)forwardConvolutionDescriptor name:(NSString *)name
{
  v7 = [(MPSGraph *)self convolution2DWithSourceTensor:incomingGradient weightsTensor:weights descriptor:forwardConvolutionDescriptor name:name];

  return v7;
}

- (MPSGraphTensor)convolutionTranspose2DWeightsGradientWithIncomingGradientTensor:(MPSGraphTensor *)incomingGradientTensor sourceTensor:(MPSGraphTensor *)source outputShape:(MPSShape *)outputShape forwardConvolutionDescriptor:(MPSGraphConvolution2DOpDescriptor *)forwardConvolutionDescriptor name:(NSString *)name
{
  v7 = [(MPSGraph *)self convolution2DWeightsGradientWithIncomingGradientTensor:source sourceTensor:incomingGradientTensor outputShape:outputShape forwardConvolutionDescriptor:forwardConvolutionDescriptor name:name];

  return v7;
}

- (MPSGraphTensor)convolutionTranspose2DWeightsGradientWithIncomingGradientTensor:(MPSGraphTensor *)incomingGradientTensor sourceTensor:(MPSGraphTensor *)source outputShapeTensor:(MPSGraphTensor *)outputShape forwardConvolutionDescriptor:(MPSGraphConvolution2DOpDescriptor *)forwardConvolutionDescriptor name:(NSString *)name
{
  v7 = [(MPSGraph *)self convolution2DWeightsGradientWithIncomingGradientTensor:source sourceTensor:incomingGradientTensor outputShapeTensor:outputShape forwardConvolutionDescriptor:forwardConvolutionDescriptor name:name];

  return v7;
}

- (id)cropResizeWithImagesTensor:(id)tensor boxesTensor:(id)boxesTensor boxIndicesTensor:(id)indicesTensor descriptor:(id)descriptor name:(id)name
{
  v34[2] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  boxesTensorCopy = boxesTensor;
  indicesTensorCopy = indicesTensor;
  descriptorCopy = descriptor;
  nameCopy = name;
  v14 = indicesTensorCopy;
  LODWORD(name) = [v14 dataType];
  if (name == [boxesTensorCopy dataType])
  {
    v32 = v14;
    if (!nameCopy)
    {
      v15 = @"cropResize/expand";
      v16 = 1;
      v32 = v14;
      [(MPSGraph *)self expandTensor:v14 dimension:1 name:@"cropResize/expand"];
      goto LABEL_12;
    }
  }

  else
  {
    dataType = [boxesTensorCopy dataType];
    if (nameCopy)
    {
      v18 = [nameCopy stringByAppendingString:@"/cast"];
    }

    else
    {
      v18 = @"cropResize/cast";
    }

    v32 = [(MPSGraph *)self castTensor:v14 toType:dataType name:v18];

    if (!nameCopy)
    {
      v15 = @"cropResize/expand";
      v16 = 1;
      goto LABEL_11;
    }
  }

  v15 = [nameCopy stringByAppendingString:@"/expand"];
  v16 = 0;
LABEL_11:
  [(MPSGraph *)self expandTensor:v32 dimension:1 name:v15];
  v19 = LABEL_12:;
  if (v16)
  {
    v20 = @"cropResize/concat1";
  }

  else
  {

    v20 = [nameCopy stringByAppendingString:@"/concat1"];
  }

  v21 = [(MPSGraph *)self concatTensor:v19 withTensor:boxesTensorCopy dimension:1 name:v20];
  if ((v16 & 1) == 0)
  {
  }

  v22 = [MPSGraphCropResizeOp alloc];
  v34[0] = tensorCopy;
  v34[1] = v21;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  v24 = [(MPSGraphCropResizeOp *)v22 initWithGraph:self inputTensors:v23 controlDependencies:MEMORY[0x1E695E0F0] descriptor:descriptorCopy name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v24 outputTensors];
  v26 = [outputTensors objectAtIndexedSubscript:0];
  if (v16)
  {
    v27 = @"cropResize/reshape0";
  }

  else
  {
    v27 = [nameCopy stringByAppendingString:@"/reshape0"];
  }

  v28 = [(MPSGraph *)self squeezeTensor:v26 dimension:1 name:v27];
  if ((v16 & 1) == 0)
  {
  }

  return v28;
}

- (MPSGraphTensor)maxPooling2DWithSourceTensor:(MPSGraphTensor *)source descriptor:(MPSGraphPooling2DOpDescriptor *)descriptor name:(NSString *)name
{
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = source;
  v9 = name;
  v10 = [(MPSGraphPooling2DOpDescriptor *)descriptor copy];
  if ([v10 dataLayout])
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  [v10 setReturnIndicesMode:v11];
  v12 = [MPSGraphMaxWithIndicesPooling2DOp alloc];
  v18[0] = v8;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v14 = [(MPSGraphPooling2DBaseOp *)v12 initWithGraph:self inputTensors:v13 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v10 name:v9];

  outputTensors = [(MPSGraphOperation *)v14 outputTensors];
  v16 = [outputTensors objectAtIndexedSubscript:0];

  return v16;
}

- (NSArray)maxPooling2DReturnIndicesWithSourceTensor:(MPSGraphTensor *)source descriptor:(MPSGraphPooling2DOpDescriptor *)descriptor name:(NSString *)name
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = source;
  v9 = descriptor;
  v10 = name;
  v11 = [MPSGraphMaxWithIndicesPooling2DOp alloc];
  v16[0] = v8;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v13 = [(MPSGraphPooling2DBaseOp *)v11 initWithGraph:self inputTensors:v12 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v9 name:v10];

  outputTensors = [(MPSGraphOperation *)v13 outputTensors];

  return outputTensors;
}

- (MPSGraphTensor)avgPooling2DWithSourceTensor:(MPSGraphTensor *)source descriptor:(MPSGraphPooling2DOpDescriptor *)descriptor name:(NSString *)name
{
  v17[1] = *MEMORY[0x1E69E9840];
  v8 = source;
  v9 = descriptor;
  v10 = name;
  v11 = [MPSGraphAvgPooling2DOp alloc];
  v17[0] = v8;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v13 = [(MPSGraphPooling2DBaseOp *)v11 initWithGraph:self inputTensors:v12 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v9 name:v10];

  outputTensors = [(MPSGraphOperation *)v13 outputTensors];
  v15 = [outputTensors objectAtIndexedSubscript:0];

  return v15;
}

- (MPSGraphTensor)maxPooling2DGradientWithGradientTensor:(MPSGraphTensor *)gradient sourceTensor:(MPSGraphTensor *)source descriptor:(MPSGraphPooling2DOpDescriptor *)descriptor name:(NSString *)name
{
  v20[2] = *MEMORY[0x1E69E9840];
  v10 = gradient;
  v11 = source;
  v12 = descriptor;
  v13 = name;
  v14 = [MPSGraphMaxPooling2DGradientOp alloc];
  v20[0] = v10;
  v20[1] = v11;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v16 = [(MPSGraphMaxPooling2DGradientOp *)v14 initWithGraph:self inputTensors:v15 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v12 gradientWithIndices:0 name:v13];

  outputTensors = [(MPSGraphOperation *)v16 outputTensors];
  v18 = [outputTensors objectAtIndexedSubscript:0];

  return v18;
}

- (MPSGraphTensor)maxPooling2DGradientWithGradientTensor:(MPSGraphTensor *)gradient indicesTensor:(MPSGraphTensor *)indices outputShape:(MPSShape *)outputShape descriptor:(MPSGraphPooling2DOpDescriptor *)descriptor name:(NSString *)name
{
  v28 = *MEMORY[0x1E69E9840];
  v12 = gradient;
  v13 = indices;
  v14 = outputShape;
  v15 = descriptor;
  v16 = name;
  if ([(MPSShape *)v14 count:0x100000001])
  {
    v17 = [(MPSShape *)v14 objectAtIndexedSubscript:0];
    LODWORD(v25) = [v17 intValue];

    if ([(MPSShape *)v14 count]>= 2)
    {
      v18 = [(MPSShape *)v14 objectAtIndexedSubscript:1];
      HIDWORD(v25) = [v18 intValue];

      if ([(MPSShape *)v14 count]>= 3)
      {
        v19 = [(MPSShape *)v14 objectAtIndexedSubscript:2];
        intValue = [v19 intValue];

        if ([(MPSShape *)v14 count]>= 4)
        {
          v20 = [(MPSShape *)v14 objectAtIndexedSubscript:3];
          intValue2 = [v20 intValue];

          [(MPSShape *)v14 count];
        }
      }
    }
  }

  v21 = [MEMORY[0x1E695DEF0] dataWithBytes:&v25 length:16];
  v22 = [(MPSGraph *)self constantWithData:v21 shape:&unk_1F5B77AF8 dataType:536870944];

  v23 = [(MPSGraph *)self maxPooling2DGradientWithGradientTensor:v12 indicesTensor:v13 outputShapeTensor:v22 descriptor:v15 name:v16];

  return v23;
}

- (MPSGraphTensor)maxPooling2DGradientWithGradientTensor:(MPSGraphTensor *)gradient indicesTensor:(MPSGraphTensor *)indices outputShapeTensor:(MPSGraphTensor *)outputShape descriptor:(MPSGraphPooling2DOpDescriptor *)descriptor name:(NSString *)name
{
  v29[3] = *MEMORY[0x1E69E9840];
  v12 = gradient;
  v13 = indices;
  v14 = outputShape;
  v15 = descriptor;
  v16 = name;
  dataLayout = [(MPSGraphPooling2DOpDescriptor *)v15 dataLayout];
  returnIndicesMode = [(MPSGraphPooling2DOpDescriptor *)v15 returnIndicesMode];
  v19 = v15;
  if ([(MPSGraphPooling2DOpDescriptor *)v19 dilationRateInX]== 1)
  {
    v20 = [(MPSGraphPooling2DOpDescriptor *)v19 dilationRateInY]== 1;
    if (!dataLayout)
    {
LABEL_3:
      v21 = 2;
      goto LABEL_7;
    }
  }

  else
  {
    v20 = 0;
    if (!dataLayout)
    {
      goto LABEL_3;
    }
  }

  if (dataLayout == 1)
  {
    v21 = 3;
LABEL_7:
    v22 = returnIndicesMode == v21 && v20;

    if (v22)
    {
      goto LABEL_8;
    }

    goto LABEL_12;
  }

LABEL_12:
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_8:
  v23 = [MPSGraphMaxPooling2DGradientOp alloc];
  v29[0] = v12;
  v29[1] = v13;
  v29[2] = v14;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:3];
  v25 = [(MPSGraphMaxPooling2DGradientOp *)v23 initWithGraph:self inputTensors:v24 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v19 gradientWithIndices:1 name:v16];

  outputTensors = [(MPSGraphOperation *)v25 outputTensors];
  v27 = [outputTensors objectAtIndexedSubscript:0];

  return v27;
}

- (MPSGraphTensor)avgPooling2DGradientWithGradientTensor:(MPSGraphTensor *)gradient sourceTensor:(MPSGraphTensor *)source descriptor:(MPSGraphPooling2DOpDescriptor *)descriptor name:(NSString *)name
{
  v20[2] = *MEMORY[0x1E69E9840];
  v10 = gradient;
  v11 = source;
  v12 = descriptor;
  v13 = name;
  v14 = [MPSGraphAvgPooling2DGradientOp alloc];
  v20[0] = v10;
  v20[1] = v11;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v16 = [(MPSGraphPooling2DBaseOp *)v14 initWithGraph:self inputTensors:v15 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v12 name:v13];

  outputTensors = [(MPSGraphOperation *)v16 outputTensors];
  v18 = [outputTensors objectAtIndexedSubscript:0];

  return v18;
}

- (MPSGraphTensor)maxPooling4DWithSourceTensor:(MPSGraphTensor *)source descriptor:(MPSGraphPooling4DOpDescriptor *)descriptor name:(NSString *)name
{
  v26[1] = *MEMORY[0x1E69E9840];
  v25 = source;
  v8 = name;
  v9 = [(MPSGraphPooling4DOpDescriptor *)descriptor copy];
  kernelSizes = [v9 kernelSizes];
  v11 = [kernelSizes objectAtIndexedSubscript:0];
  if ([v11 intValue] == 1)
  {
    kernelSizes2 = [v9 kernelSizes];
    v13 = [kernelSizes2 objectAtIndexedSubscript:1];
    if ([v13 intValue] == 1)
    {
      strides = [v9 strides];
      v14 = [strides objectAtIndexedSubscript:0];
      if ([v14 intValue] == 1)
      {
        strides2 = [v9 strides];
        v15 = [strides2 objectAtIndexedSubscript:1];
        if ([v15 intValue] == 1)
        {
          v16 = 2;
        }

        else
        {
          v16 = 3;
        }
      }

      else
      {
        v16 = 3;
      }
    }

    else
    {
      v16 = 3;
    }
  }

  else
  {
    v16 = 3;
  }

  [v9 setReturnIndicesMode:v16];
  v17 = [MPSGraphMaxWithIndicesPool4DOp alloc];
  v26[0] = v25;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v19 = [(MPSGraphPooling4DBaseOp *)v17 initWithGraph:self inputTensors:v18 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v9 name:v8];

  outputTensors = [(MPSGraphOperation *)v19 outputTensors];
  v21 = [outputTensors objectAtIndexedSubscript:0];

  return v21;
}

- (NSArray)maxPooling4DReturnIndicesWithSourceTensor:(MPSGraphTensor *)source descriptor:(MPSGraphPooling4DOpDescriptor *)descriptor name:(NSString *)name
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = source;
  v9 = descriptor;
  v10 = name;
  v11 = [MPSGraphMaxWithIndicesPool4DOp alloc];
  v16[0] = v8;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v13 = [(MPSGraphPooling4DBaseOp *)v11 initWithGraph:self inputTensors:v12 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v9 name:v10];

  outputTensors = [(MPSGraphOperation *)v13 outputTensors];

  return outputTensors;
}

- (MPSGraphTensor)maxPooling4DGradientWithGradientTensor:(MPSGraphTensor *)gradient indicesTensor:(MPSGraphTensor *)indices outputShape:(MPSShape *)outputShape descriptor:(MPSGraphPooling4DOpDescriptor *)descriptor name:(NSString *)name
{
  v28 = *MEMORY[0x1E69E9840];
  v12 = gradient;
  v13 = indices;
  v14 = outputShape;
  v15 = descriptor;
  v16 = name;
  if ([(MPSShape *)v14 count:0x100000001])
  {
    v17 = [(MPSShape *)v14 objectAtIndexedSubscript:0];
    LODWORD(v25) = [v17 intValue];

    if ([(MPSShape *)v14 count]>= 2)
    {
      v18 = [(MPSShape *)v14 objectAtIndexedSubscript:1];
      HIDWORD(v25) = [v18 intValue];

      if ([(MPSShape *)v14 count]>= 3)
      {
        v19 = [(MPSShape *)v14 objectAtIndexedSubscript:2];
        intValue = [v19 intValue];

        if ([(MPSShape *)v14 count]>= 4)
        {
          v20 = [(MPSShape *)v14 objectAtIndexedSubscript:3];
          intValue2 = [v20 intValue];

          [(MPSShape *)v14 count];
        }
      }
    }
  }

  v21 = [MEMORY[0x1E695DEF0] dataWithBytes:&v25 length:16];
  v22 = [(MPSGraph *)self constantWithData:v21 shape:&unk_1F5B77B10 dataType:536870944];

  v23 = [(MPSGraph *)self maxPooling4DGradientWithGradientTensor:v12 indicesTensor:v13 outputShapeTensor:v22 descriptor:v15 name:0];

  return v23;
}

- (MPSGraphTensor)maxPooling4DGradientWithGradientTensor:(MPSGraphTensor *)gradient indicesTensor:(MPSGraphTensor *)indices outputShapeTensor:(MPSGraphTensor *)outputShape descriptor:(MPSGraphPooling4DOpDescriptor *)descriptor name:(NSString *)name
{
  v41[3] = *MEMORY[0x1E69E9840];
  v38 = gradient;
  v37 = indices;
  v39 = outputShape;
  v11 = descriptor;
  v40 = name;
  kernelSizes = [(MPSGraphPooling4DOpDescriptor *)v11 kernelSizes];
  v13 = [kernelSizes objectAtIndexedSubscript:0];
  if ([v13 intValue] == 1)
  {
    kernelSizes2 = [(MPSGraphPooling4DOpDescriptor *)v11 kernelSizes];
    v15 = [kernelSizes2 objectAtIndexedSubscript:1];
    if ([v15 intValue] == 1)
    {
      strides = [(MPSGraphPooling4DOpDescriptor *)v11 strides];
      v17 = [strides objectAtIndexedSubscript:0];
      if ([v17 intValue] == 1)
      {
        strides2 = [(MPSGraphPooling4DOpDescriptor *)v11 strides];
        v19 = [strides2 objectAtIndexedSubscript:1];
        v20 = [v19 intValue] == 1;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  kernelSizes3 = [(MPSGraphPooling4DOpDescriptor *)v11 kernelSizes];
  v22 = [kernelSizes3 objectAtIndexedSubscript:0];
  if ([v22 intValue] == 1)
  {
    kernelSizes4 = [(MPSGraphPooling4DOpDescriptor *)v11 kernelSizes];
    v24 = [kernelSizes4 objectAtIndexedSubscript:3];
    if ([v24 intValue] == 1)
    {
      strides3 = [(MPSGraphPooling4DOpDescriptor *)v11 strides];
      v26 = [strides3 objectAtIndexedSubscript:0];
      if ([v26 intValue] == 1)
      {
        strides4 = [(MPSGraphPooling4DOpDescriptor *)v11 strides];
        v27 = [strides4 objectAtIndexedSubscript:3];
        v28 = [v27 intValue] == 1;
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  if (!v20 && !v28 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if ((isValidIndicesInput4D(!v20, [(MPSGraphPooling4DOpDescriptor *)v11 returnIndicesMode], v11) & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v29 = [MPSGraphMaxPool4DGradientOp alloc];
  v41[0] = v38;
  v41[1] = v37;
  v41[2] = v39;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:3];
  v31 = [(MPSGraphMaxPool4DGradientOp *)v29 initWithGraph:self inputTensors:v30 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v11 gradientWithIndices:1 name:v40];

  outputTensors = [(MPSGraphOperation *)v31 outputTensors];
  v33 = [outputTensors objectAtIndexedSubscript:0];

  return v33;
}

- (MPSGraphTensor)maxPooling4DGradientWithGradientTensor:(MPSGraphTensor *)gradient sourceTensor:(MPSGraphTensor *)source descriptor:(MPSGraphPooling4DOpDescriptor *)descriptor name:(NSString *)name
{
  v20[2] = *MEMORY[0x1E69E9840];
  v10 = gradient;
  v11 = source;
  v12 = descriptor;
  v13 = name;
  v14 = [MPSGraphMaxPool4DGradientOp alloc];
  v20[0] = v10;
  v20[1] = v11;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v16 = [(MPSGraphMaxPool4DGradientOp *)v14 initWithGraph:self inputTensors:v15 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v12 gradientWithIndices:0 name:v13];

  outputTensors = [(MPSGraphOperation *)v16 outputTensors];
  v18 = [outputTensors objectAtIndexedSubscript:0];

  return v18;
}

- (MPSGraphTensor)avgPooling4DWithSourceTensor:(MPSGraphTensor *)source descriptor:(MPSGraphPooling4DOpDescriptor *)descriptor name:(NSString *)name
{
  v17[1] = *MEMORY[0x1E69E9840];
  v8 = source;
  v9 = descriptor;
  v10 = name;
  v11 = [MPSGraphAvgPool4DOp alloc];
  v17[0] = v8;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v13 = [(MPSGraphPooling4DBaseOp *)v11 initWithGraph:self inputTensors:v12 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v9 name:v10];

  outputTensors = [(MPSGraphOperation *)v13 outputTensors];
  v15 = [outputTensors objectAtIndexedSubscript:0];

  return v15;
}

- (MPSGraphTensor)avgPooling4DGradientWithGradientTensor:(MPSGraphTensor *)gradient sourceTensor:(MPSGraphTensor *)source descriptor:(MPSGraphPooling4DOpDescriptor *)descriptor name:(NSString *)name
{
  v20[2] = *MEMORY[0x1E69E9840];
  v10 = gradient;
  v11 = source;
  v12 = descriptor;
  v13 = name;
  v14 = [MPSGraphAvgPool4DGradientOp alloc];
  v20[0] = v10;
  v20[1] = v11;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v16 = [(MPSGraphPooling4DBaseOp *)v14 initWithGraph:self inputTensors:v15 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v12 name:v13];

  outputTensors = [(MPSGraphOperation *)v16 outputTensors];
  v18 = [outputTensors objectAtIndexedSubscript:0];

  return v18;
}

- (MPSGraphTensor)L2NormPooling4DWithSourceTensor:(MPSGraphTensor *)source descriptor:(MPSGraphPooling4DOpDescriptor *)descriptor name:(NSString *)name
{
  v17[1] = *MEMORY[0x1E69E9840];
  v8 = source;
  v9 = descriptor;
  v10 = name;
  v11 = [MPSGraphL2NormPool4DOp alloc];
  v17[0] = v8;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v13 = [(MPSGraphPooling4DBaseOp *)v11 initWithGraph:self inputTensors:v12 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v9 name:v10];

  outputTensors = [(MPSGraphOperation *)v13 outputTensors];
  v15 = [outputTensors objectAtIndexedSubscript:0];

  return v15;
}

- (MPSGraphTensor)L2NormPooling4DGradientWithGradientTensor:(MPSGraphTensor *)gradient sourceTensor:(MPSGraphTensor *)source descriptor:(MPSGraphPooling4DOpDescriptor *)descriptor name:(NSString *)name
{
  v20[2] = *MEMORY[0x1E69E9840];
  v10 = gradient;
  v11 = source;
  v12 = descriptor;
  v13 = name;
  v14 = [MPSGraphL2NormPool4DGradientOp alloc];
  v20[0] = v10;
  v20[1] = v11;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v16 = [(MPSGraphPooling4DBaseOp *)v14 initWithGraph:self inputTensors:v15 controlDependencies:MEMORY[0x1E695E0F0] descriptor:v12 name:v13];

  outputTensors = [(MPSGraphOperation *)v16 outputTensors];
  v18 = [outputTensors objectAtIndexedSubscript:0];

  return v18;
}

- (MPSGraphTensor)castTensor:(MPSGraphTensor *)tensor toType:(MPSDataType)type name:(NSString *)name
{
  v6 = *&type;
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = tensor;
  v9 = name;
  v10 = [MPSGraphCastOp alloc];
  v16[0] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v12 = [(MPSGraphCastOp *)v10 initWithGraph:self inputTensors:v11 controlDependencies:MEMORY[0x1E695E0F0] destType:v6 name:v9];

  outputTensors = [(MPSGraphOperation *)v12 outputTensors];
  v14 = [outputTensors objectAtIndexedSubscript:0];

  return v14;
}

- (MPSGraphTensor)reinterpretCastTensor:(MPSGraphTensor *)tensor toType:(MPSDataType)type name:(NSString *)name
{
  v6 = *&type;
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = tensor;
  v9 = name;
  v10 = [MPSGraphReinterpretCastOp alloc];
  v16[0] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v12 = [(MPSGraphReinterpretCastOp *)v10 initWithGraph:self inputTensors:v11 controlDependencies:MEMORY[0x1E695E0F0] destType:v6 name:v9];

  outputTensors = [(MPSGraphOperation *)v12 outputTensors];
  v14 = [outputTensors objectAtIndexedSubscript:0];

  return v14;
}

- (id)transposeTensor:(id)tensor permute:(id)permute name:(id)name
{
  v25[1] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  permuteCopy = permute;
  nameCopy = name;
  MPSShapeToVector<int>(permuteCopy, &__p);
  v11 = v23 - __p;
  v12 = [MEMORY[0x1E695DEF0] dataWithBytes:? length:?];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11 >> 2];
  v25[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  v15 = [(MPSGraph *)self constantWithData:v12 shape:v14 dataType:536870944];

  v16 = [MPSGraphPermuteOp alloc];
  v24[0] = tensorCopy;
  v24[1] = v15;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v18 = [(MPSGraphPermuteOp *)v16 initWithGraph:self inputTensors:v17 controlDependencies:MEMORY[0x1E695E0F0] permute:permuteCopy name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v18 outputTensors];
  v20 = [outputTensors objectAtIndexedSubscript:0];

  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  return v20;
}

- (MPSGraphTensor)transposeTensor:(MPSGraphTensor *)tensor permutation:(NSArray *)permutation name:(NSString *)name
{
  v5 = [(MPSGraph *)self transposeTensor:tensor permute:permutation name:name];

  return v5;
}

- (MPSGraphTensor)transposeTensor:(MPSGraphTensor *)tensor dimension:(NSUInteger)dimensionIndex withDimension:(NSUInteger)dimensionIndex2 name:(NSString *)name
{
  v18[1] = *MEMORY[0x1E69E9840];
  v10 = tensor;
  v11 = name;
  if (dimensionIndex == dimensionIndex2)
  {
    v12 = v10;
  }

  else
  {
    v13 = [MPSGraphTransposeOp alloc];
    v18[0] = v10;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v15 = [(MPSGraphTransposeOp *)v13 initWithGraph:self inputTensors:v14 controlDependencies:MEMORY[0x1E695E0F0] dimension:dimensionIndex withDimension:dimensionIndex2 name:v11];

    outputTensors = [(MPSGraphOperation *)v15 outputTensors];
    v12 = [outputTensors objectAtIndexedSubscript:0];
  }

  return v12;
}

- (MPSGraphTensor)reshapeTensor:(MPSGraphTensor *)tensor withShapeTensor:(MPSGraphTensor *)shapeTensor name:(NSString *)name
{
  v18[2] = *MEMORY[0x1E69E9840];
  v8 = tensor;
  v9 = shapeTensor;
  v10 = name;
  v11 = [(MPSGraph *)self fixCastIntTensor:v9 toSignedness:1 name:v10];

  v12 = [MPSGraphReshapeOp alloc];
  v18[0] = v8;
  v18[1] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v14 = [(MPSGraphOperation *)v12 initWithGraph:self inputTensors:v13 controlDependencies:MEMORY[0x1E695E0F0] name:v10];

  outputTensors = [(MPSGraphOperation *)v14 outputTensors];
  v16 = [outputTensors objectAtIndexedSubscript:0];

  return v16;
}

- (MPSGraphTensor)reshapeTensor:(MPSGraphTensor *)tensor withShape:(MPSShape *)shape name:(NSString *)name
{
  v19[1] = *MEMORY[0x1E69E9840];
  v8 = tensor;
  v9 = name;
  MPSShapeToVector<int>(shape, &__p);
  v10 = v18 - __p;
  v11 = [MEMORY[0x1E695DEF0] dataWithBytes:? length:?];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10 >> 2];
  v19[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v14 = [(MPSGraph *)self constantWithData:v11 shape:v13 dataType:536870944];

  v15 = [(MPSGraph *)self reshapeTensor:v8 withShapeTensor:v14 name:v9];

  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  return v15;
}

- (MPSGraphTensor)sliceTensor:(MPSGraphTensor *)tensor dimension:(NSUInteger)dimensionIndex start:(NSInteger)start length:(NSInteger)length name:(NSString *)name
{
  v20[1] = *MEMORY[0x1E69E9840];
  v12 = tensor;
  v13 = name;
  v14 = [MPSGraphSliceOp alloc];
  v20[0] = v12;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v16 = [(MPSGraphSliceOp *)v14 initWithGraph:self inputTensors:v15 controlDependencies:MEMORY[0x1E695E0F0] dimension:dimensionIndex start:start length:length name:v13];

  outputTensors = [(MPSGraphOperation *)v16 outputTensors];
  v18 = [outputTensors objectAtIndexedSubscript:0];

  return v18;
}

- (id)cropTensor:(id)tensor dimension:(unint64_t)dimension amount_before:(unint64_t)amount_before amount_after:(unint64_t)amount_after name:(id)name
{
  v21[2] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  nameCopy = name;
  v14 = [(MPSGraph *)self constantWithScalar:536870944 dataType:dimension];
  v15 = [MPSGraphCropOp alloc];
  v21[0] = tensorCopy;
  v21[1] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v17 = [(MPSGraphCropOp *)v15 initWithGraph:self inputTensors:v16 controlDependencies:MEMORY[0x1E695E0F0] dimension_index:dimension amount_before:amount_before amount_after:amount_after name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v17 outputTensors];
  v19 = [outputTensors objectAtIndexedSubscript:0];

  return v19;
}

- (MPSGraphTensor)sliceTensor:(MPSGraphTensor *)tensor starts:(NSArray *)starts ends:(NSArray *)ends strides:(NSArray *)strides name:(NSString *)name
{
  LODWORD(v9) = 0;
  v7 = [(MPSGraph *)self sliceTensor:tensor starts:starts ends:ends strides:strides startMask:0 endMask:0 squeezeMask:v9 name:name];

  return v7;
}

- (MPSGraphTensor)sliceTensor:(MPSGraphTensor *)tensor starts:(NSArray *)starts ends:(NSArray *)ends strides:(NSArray *)strides startMask:(uint32_t)startMask endMask:(uint32_t)endMask squeezeMask:(uint32_t)squeezeMask name:(NSString *)name
{
  v46[1] = *MEMORY[0x1E69E9840];
  v35 = tensor;
  v16 = ends;
  v17 = strides;
  v37 = name;
  v33 = v16;
  v34 = v17;
  MPSShapeToVector<int>(starts, &v42);
  MPSShapeToVector<int>(v16, &v40);
  MPSShapeToVector<int>(v17, &__p);
  v18 = v43 - v42;
  if ((v41 - v40 != v43 - v42 || v39 - __p != v18) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if ((v41 - v40 != v18 || v39 - __p != v18) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v19 = [MEMORY[0x1E695DEF0] dataWithBytes:v42 length:v18];
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v18 >> 2];
  v46[0] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:1];
  v36 = [(MPSGraph *)self constantWithData:v19 shape:v21 dataType:536870944];

  v22 = [MEMORY[0x1E695DEF0] dataWithBytes:v40 length:v18];
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v18 >> 2];
  v45 = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
  v25 = [(MPSGraph *)self constantWithData:v22 shape:v24 dataType:536870944];

  v26 = [MEMORY[0x1E695DEF0] dataWithBytes:__p length:v18];
  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v18 >> 2];
  v44 = v27;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
  v29 = [(MPSGraph *)self constantWithData:v26 shape:v28 dataType:536870944];

  LODWORD(v32) = squeezeMask;
  v30 = [(MPSGraph *)self sliceTensor:v35 startTensor:v36 endTensor:v25 strideTensor:v29 startMask:startMask endMask:endMask squeezeMask:v32 name:v37];

  if (__p)
  {
    v39 = __p;
    operator delete(__p);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  return v30;
}

- (id)sliceTensor:(id)tensor startTensor:(id)startTensor endTensor:(id)endTensor strideTensor:(id)strideTensor startMask:(unsigned int)mask endMask:(unsigned int)endMask squeezeMask:(unsigned int)squeezeMask name:(id)self0
{
  v10 = *&mask;
  v29[4] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  startTensorCopy = startTensor;
  endTensorCopy = endTensor;
  strideTensorCopy = strideTensor;
  nameCopy = name;
  v27 = strideTensorCopy;
  v20 = [MPSGraphStridedSliceOp alloc];
  v29[0] = tensorCopy;
  v29[1] = startTensorCopy;
  v29[2] = endTensorCopy;
  v29[3] = strideTensorCopy;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
  LOBYTE(v26) = 0;
  v22 = [(MPSGraphStridedSliceOp *)v20 initWithGraph:self inputTensors:v21 controlDependencies:MEMORY[0x1E695E0F0] startMask:v10 endMask:endMask shrinkAxisMask:squeezeMask endIsSize:v26 name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v22 outputTensors];
  v24 = [outputTensors objectAtIndexedSubscript:0];

  return v24;
}

- (id)sliceTensor:(id)tensor startTensor:(id)startTensor sizeTensor:(id)sizeTensor squeezeMask:(unsigned int)mask name:(id)name
{
  v8 = *&mask;
  v24[4] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  startTensorCopy = startTensor;
  sizeTensorCopy = sizeTensor;
  nameCopy = name;
  v16 = -[MPSGraph constantWithScalar:shape:dataType:](self, "constantWithScalar:shape:dataType:", &unk_1F5B77B28, [sizeTensorCopy dataType], 1.0);
  v17 = [MPSGraphStridedSliceOp alloc];
  v24[0] = tensorCopy;
  v24[1] = startTensorCopy;
  v24[2] = sizeTensorCopy;
  v24[3] = v16;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
  LOBYTE(v23) = 1;
  v19 = [(MPSGraphStridedSliceOp *)v17 initWithGraph:self inputTensors:v18 controlDependencies:MEMORY[0x1E695E0F0] startMask:0 endMask:0 shrinkAxisMask:v8 endIsSize:v23 name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v19 outputTensors];
  v21 = [outputTensors objectAtIndexedSubscript:0];

  return v21;
}

- (MPSGraphTensor)sliceGradientTensor:(MPSGraphTensor *)inputGradientTensor fwdInShapeTensor:(MPSGraphTensor *)fwdInShapeTensor starts:(NSArray *)starts ends:(NSArray *)ends strides:(NSArray *)strides name:(NSString *)name
{
  v8 = [(MPSGraph *)self sliceGradientTensor:inputGradientTensor fwdInShapeTensor:fwdInShapeTensor starts:starts ends:ends strides:strides startMask:0 endMask:0 squeezeMask:name name:?];

  return v8;
}

- (MPSGraphTensor)sliceGradientTensor:(MPSGraphTensor *)inputGradientTensor fwdInShapeTensor:(MPSGraphTensor *)fwdInShapeTensor starts:(NSArray *)starts ends:(NSArray *)ends strides:(NSArray *)strides startMask:(uint32_t)startMask endMask:(uint32_t)endMask squeezeMask:(uint32_t)squeezeMask name:(NSString *)name
{
  v48[1] = *MEMORY[0x1E69E9840];
  v37 = inputGradientTensor;
  v17 = fwdInShapeTensor;
  v18 = ends;
  v19 = strides;
  v39 = name;
  v35 = v18;
  v36 = v19;
  MPSShapeToVector<int>(starts, &v44);
  MPSShapeToVector<int>(v18, &v42);
  MPSShapeToVector<int>(v19, &__p);
  v20 = v45 - v44;
  if ((v43 - v42 != v45 - v44 || v41 - __p != v20) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if ((v43 - v42 != v20 || v41 - __p != v20) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v21 = [MEMORY[0x1E695DEF0] dataWithBytes:v44 length:v20];
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v20 >> 2];
  v48[0] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
  v38 = [(MPSGraph *)self constantWithData:v21 shape:v23 dataType:536870944];

  v24 = [MEMORY[0x1E695DEF0] dataWithBytes:v42 length:v20];
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v20 >> 2];
  v47 = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
  v27 = [(MPSGraph *)self constantWithData:v24 shape:v26 dataType:536870944];

  v28 = [MEMORY[0x1E695DEF0] dataWithBytes:__p length:v20];
  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v20 >> 2];
  v46 = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
  v31 = [(MPSGraph *)self constantWithData:v28 shape:v30 dataType:536870944];

  v32 = [(MPSGraph *)self fixCastIntTensor:v17 toSignedness:1 name:v39];

  v33 = [(MPSGraph *)self sliceGradientTensor:v37 fwdInShapeTensor:v32 startTensor:v38 endTensor:v27 strideTensor:v31 startMask:startMask endMask:__PAIR64__(squeezeMask squeezeMask:endMask) name:v39];

  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  return v33;
}

- (id)sliceGradientTensor:(id)tensor fwdInShapeTensor:(id)shapeTensor startTensor:(id)startTensor endTensor:(id)endTensor strideTensor:(id)strideTensor startMask:(unsigned int)mask endMask:(unsigned int)endMask squeezeMask:(unsigned int)self0 name:(id)self1
{
  v32[5] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  shapeTensorCopy = shapeTensor;
  startTensorCopy = startTensor;
  endTensorCopy = endTensor;
  strideTensorCopy = strideTensor;
  nameCopy = name;
  v29 = endTensorCopy;
  v30 = strideTensorCopy;
  v22 = [MPSGraphStridedSliceGradientOp alloc];
  v32[0] = tensorCopy;
  v32[1] = shapeTensorCopy;
  v32[2] = startTensorCopy;
  v32[3] = endTensorCopy;
  v32[4] = strideTensorCopy;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:5];
  LOBYTE(v28) = 0;
  v24 = [(MPSGraphStridedSliceGradientOp *)v22 initWithGraph:self inputTensors:v23 controlDependencies:MEMORY[0x1E695E0F0] startMask:mask endMask:endMask shrinkAxisMask:squeezeMask endIsSize:v28 name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v24 outputTensors];
  v26 = [outputTensors objectAtIndexedSubscript:0];

  return v26;
}

- (id)sliceGradientTensor:(id)tensor fwdInShapeTensor:(id)shapeTensor startTensor:(id)startTensor sizeTensor:(id)sizeTensor squeezeMask:(unsigned int)mask name:(id)name
{
  v9 = *&mask;
  v27[5] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  shapeTensorCopy = shapeTensor;
  startTensorCopy = startTensor;
  sizeTensorCopy = sizeTensor;
  nameCopy = name;
  v19 = -[MPSGraph constantWithScalar:shape:dataType:](self, "constantWithScalar:shape:dataType:", &unk_1F5B77B40, [sizeTensorCopy dataType], 1.0);
  v20 = [MPSGraphStridedSliceGradientOp alloc];
  v27[0] = tensorCopy;
  v27[1] = shapeTensorCopy;
  v27[2] = startTensorCopy;
  v27[3] = sizeTensorCopy;
  v27[4] = v19;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:5];
  LOBYTE(v26) = 1;
  v22 = [(MPSGraphStridedSliceGradientOp *)v20 initWithGraph:self inputTensors:v21 controlDependencies:MEMORY[0x1E695E0F0] startMask:0 endMask:0 shrinkAxisMask:v9 endIsSize:v26 name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v22 outputTensors];
  v24 = [outputTensors objectAtIndexedSubscript:0];

  return v24;
}

- (id)sliceUpdateDataTensor:(id)tensor updateTensor:(id)updateTensor starts:(id)starts ends:(id)ends strides:(id)strides startMask:(unsigned int)mask endMask:(unsigned int)endMask squeezeMask:(unsigned int)self0 name:(id)self1
{
  v47[1] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  updateTensorCopy = updateTensor;
  endsCopy = ends;
  stridesCopy = strides;
  nameCopy = name;
  v33 = endsCopy;
  v34 = stridesCopy;
  MPSShapeToVector<int>(starts, &v43);
  MPSShapeToVector<int>(endsCopy, &v41);
  MPSShapeToVector<int>(stridesCopy, &__p);
  v19 = v44 - v43;
  if ((v42 - v41 != v44 - v43 || v40 - __p != v19) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if ((v42 - v41 != v19 || v40 - __p != v19) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v20 = [MEMORY[0x1E695DEF0] dataWithBytes:v43 length:v19];
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v19 >> 2];
  v47[0] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
  v37 = [(MPSGraph *)self constantWithData:v20 shape:v22 dataType:536870944];

  v23 = [MEMORY[0x1E695DEF0] dataWithBytes:v41 length:v19];
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v19 >> 2];
  v46 = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
  v26 = [(MPSGraph *)self constantWithData:v23 shape:v25 dataType:536870944];

  v27 = [MEMORY[0x1E695DEF0] dataWithBytes:__p length:v19];
  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v19 >> 2];
  v45 = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
  v30 = [(MPSGraph *)self constantWithData:v27 shape:v29 dataType:536870944];

  v31 = [(MPSGraph *)self sliceUpdateDataTensor:tensorCopy updateTensor:updateTensorCopy startsTensor:v37 endsTensor:v26 stridesTensor:v30 startMask:mask endMask:__PAIR64__(squeezeMask squeezeMask:endMask) name:nameCopy];

  if (__p)
  {
    v40 = __p;
    operator delete(__p);
  }

  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  return v31;
}

- (id)sliceUpdateDataTensor:(id)tensor updateTensor:(id)updateTensor startsTensor:(id)startsTensor endsTensor:(id)endsTensor stridesTensor:(id)stridesTensor startMask:(unsigned int)mask endMask:(unsigned int)endMask squeezeMask:(unsigned int)self0 name:(id)self1
{
  v31[5] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  updateTensorCopy = updateTensor;
  startsTensorCopy = startsTensor;
  endsTensorCopy = endsTensor;
  stridesTensorCopy = stridesTensor;
  nameCopy = name;
  v28 = endsTensorCopy;
  v29 = stridesTensorCopy;
  v22 = [MPSGraphStridedSliceUpdateOp alloc];
  v31[0] = tensorCopy;
  v31[1] = updateTensorCopy;
  v31[2] = startsTensorCopy;
  v31[3] = endsTensorCopy;
  v31[4] = stridesTensorCopy;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:5];
  v24 = [(MPSGraphStridedSliceUpdateOp *)v22 initWithGraph:self inputTensors:v23 controlDependencies:MEMORY[0x1E695E0F0] startMask:mask endMask:endMask shrinkAxisMask:squeezeMask name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v24 outputTensors];
  v26 = [outputTensors objectAtIndexedSubscript:0];

  return v26;
}

- (id)sliceUpdateDataTensor:(id)tensor updateTensor:(id)updateTensor startsTensor:(id)startsTensor endsTensor:(id)endsTensor stridesTensor:(id)stridesTensor name:(id)name
{
  v8 = [(MPSGraph *)self sliceUpdateDataTensor:tensor updateTensor:updateTensor startsTensor:startsTensor endsTensor:endsTensor stridesTensor:stridesTensor startMask:0 endMask:0 squeezeMask:name name:?];

  return v8;
}

- (id)sliceUpdateDataTensor:(id)tensor updateTensor:(id)updateTensor starts:(id)starts ends:(id)ends strides:(id)strides name:(id)name
{
  v8 = [(MPSGraph *)self sliceUpdateDataTensor:tensor updateTensor:updateTensor starts:starts ends:ends strides:strides startMask:0 endMask:0 squeezeMask:name name:?];

  return v8;
}

- (MPSGraphTensor)concatTensors:(NSArray *)tensors dimension:(NSInteger)dimensionIndex interleave:(BOOL)interleave name:(NSString *)name
{
  v7 = interleave;
  v20[1] = *MEMORY[0x1E69E9840];
  v10 = tensors;
  v11 = name;
  v12 = [(MPSGraph *)self constantWithScalar:536870944 dataType:dimensionIndex];
  v20[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v14 = [(NSArray *)v10 arrayByAddingObjectsFromArray:v13];

  v15 = [MPSGraphConcatOp alloc];
  v16 = [(MPSGraphConcatOp *)v15 initWithGraph:self inputTensors:v14 controlDependencies:MEMORY[0x1E695E0F0] dimension:dimensionIndex interleave:v7 name:v11];
  outputTensors = [(MPSGraphOperation *)v16 outputTensors];
  v18 = [outputTensors objectAtIndexedSubscript:0];

  return v18;
}

- (MPSGraphTensor)concatTensors:(NSArray *)tensors dimension:(NSInteger)dimensionIndex name:(NSString *)name
{
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = tensors;
  v9 = name;
  v10 = [(MPSGraph *)self constantWithScalar:536870944 dataType:dimensionIndex];
  v18[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v12 = [(NSArray *)v8 arrayByAddingObjectsFromArray:v11];

  v13 = [MPSGraphConcatOp alloc];
  v14 = [(MPSGraphConcatOp *)v13 initWithGraph:self inputTensors:v12 controlDependencies:MEMORY[0x1E695E0F0] dimension:dimensionIndex interleave:0 name:v9];
  outputTensors = [(MPSGraphOperation *)v14 outputTensors];
  v16 = [outputTensors objectAtIndexedSubscript:0];

  return v16;
}

- (MPSGraphTensor)concatTensor:(MPSGraphTensor *)tensor withTensor:(MPSGraphTensor *)tensor2 dimension:(NSInteger)dimensionIndex name:(NSString *)name
{
  v20[3] = *MEMORY[0x1E69E9840];
  v10 = tensor;
  v11 = tensor2;
  v12 = name;
  v13 = [(MPSGraph *)self constantWithScalar:536870944 dataType:dimensionIndex];
  v14 = [MPSGraphConcatOp alloc];
  v20[0] = v10;
  v20[1] = v11;
  v20[2] = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
  v16 = [(MPSGraphConcatOp *)v14 initWithGraph:self inputTensors:v15 controlDependencies:MEMORY[0x1E695E0F0] dimension:dimensionIndex interleave:0 name:v12];

  outputTensors = [(MPSGraphOperation *)v16 outputTensors];
  v18 = [outputTensors objectAtIndexedSubscript:0];

  return v18;
}

- (id)tileTensorWithMultiplier:(id)multiplier
{
  v13[1] = *MEMORY[0x1E69E9840];
  multiplierCopy = multiplier;
  MPSShapeToVector<unsigned long long>(multiplierCopy, &__p);
  v5 = (v12 - __p) >> 3;
  if (v12 != __p)
  {
    if (!(v5 >> 62))
    {
      operator new();
    }

    std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
  }

  v6 = [MEMORY[0x1E695DEF0] dataWithBytes:0 length:v12 - __p];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v9 = [(MPSGraph *)self constantWithData:v6 shape:v8 dataType:536870944];

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v9;
}

- (id)tileTensor:(id)tensor multiplierTensor:(id)multiplierTensor name:(id)name
{
  v17[2] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  multiplierTensorCopy = multiplierTensor;
  nameCopy = name;
  v11 = [MPSGraphTileOp alloc];
  v17[0] = tensorCopy;
  v17[1] = multiplierTensorCopy;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v13 = [(MPSGraphOperation *)v11 initWithGraph:self inputTensors:v12 controlDependencies:MEMORY[0x1E695E0F0] name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v13 outputTensors];
  v15 = [outputTensors objectAtIndexedSubscript:0];

  return v15;
}

- (MPSGraphTensor)tileTensor:(MPSGraphTensor *)tensor withMultiplier:(MPSShape *)multiplier name:(NSString *)name
{
  v8 = tensor;
  v9 = name;
  v10 = [(MPSGraph *)self tileTensorWithMultiplier:multiplier];
  v11 = [(MPSGraph *)self tileTensor:v8 multiplierTensor:v10 name:v9];

  return v11;
}

- (id)tileGradientWithIncomingGradientTensor:(id)tensor sourceTensor:(id)sourceTensor multiplierTensor:(id)multiplierTensor name:(id)name
{
  v20[3] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  sourceTensorCopy = sourceTensor;
  multiplierTensorCopy = multiplierTensor;
  nameCopy = name;
  v20[0] = tensorCopy;
  v20[1] = sourceTensorCopy;
  v20[2] = multiplierTensorCopy;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
  v15 = [MPSGraphTileGradientOp alloc];
  v16 = [(MPSGraphOperation *)v15 initWithGraph:self inputTensors:v14 controlDependencies:MEMORY[0x1E695E0F0] name:nameCopy];
  outputTensors = [(MPSGraphOperation *)v16 outputTensors];
  v18 = [outputTensors objectAtIndexedSubscript:0];

  return v18;
}

- (MPSGraphTensor)tileGradientWithIncomingGradientTensor:(MPSGraphTensor *)incomingGradientTensor sourceTensor:(MPSGraphTensor *)sourceTensor withMultiplier:(MPSShape *)multiplier name:(NSString *)name
{
  v10 = incomingGradientTensor;
  v11 = sourceTensor;
  v12 = name;
  v13 = [(MPSGraph *)self tileTensorWithMultiplier:multiplier];
  v14 = [(MPSGraph *)self tileGradientWithIncomingGradientTensor:v10 sourceTensor:v11 multiplierTensor:v13 name:v12];

  return v14;
}

- (id)paddingTensorWithLeftPadding:(id)padding rightPadding:(id)rightPadding
{
  v22 = *MEMORY[0x1E69E9840];
  paddingCopy = padding;
  rightPaddingCopy = rightPadding;
  MPSShapeToVector<unsigned long long>(paddingCopy, &v18);
  MPSShapeToVector<unsigned long long>(rightPaddingCopy, &__p);
  v9 = v18;
  v8 = v19;
  v10 = v19 - v18;
  if (v19 - v18 != v21 - __p && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v11 = v10 >> 3;
  if (v8 != v9)
  {
    if ((v10 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
  }

  v12 = [MEMORY[0x1E695DEF0] dataWithBytes:0 length:0];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
  v17[0] = v13;
  v17[1] = &unk_1F5B75B48;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v15 = [(MPSGraph *)self constantWithData:v12 shape:v14 dataType:536870944];

  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  return v15;
}

- (MPSGraphTensor)padTensor:(MPSGraphTensor *)tensor withPaddingMode:(MPSGraphPaddingMode)paddingMode leftPadding:(MPSShape *)leftPadding rightPadding:(MPSShape *)rightPadding constantValue:(double)constantValue name:(NSString *)name
{
  v14 = tensor;
  v15 = name;
  if (paddingMode == MPSGraphPaddingModeZero)
  {
    constantValue = 0.0;
    paddingMode = MPSGraphPaddingModeConstant;
  }

  v16 = [(MPSGraph *)self paddingTensorWithLeftPadding:leftPadding rightPadding:rightPadding];
  v17 = [(MPSGraph *)self constantWithScalar:&unk_1F5B77B58 shape:[(MPSGraphTensor *)v14 dataType] dataType:constantValue];
  v18 = [(MPSGraph *)self padTensor:v14 paddingMode:paddingMode paddingTensor:v16 constantValuesTensor:v17 name:v15];

  return v18;
}

- (id)padTensor:(id)tensor paddingMode:(int64_t)mode paddingTensor:(id)paddingTensor constantValuesTensor:(id)valuesTensor name:(id)name
{
  v22[3] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  paddingTensorCopy = paddingTensor;
  valuesTensorCopy = valuesTensor;
  nameCopy = name;
  if (mode == 4)
  {
    mode = 0;
  }

  v16 = [MPSGraphPadOp alloc];
  v22[0] = tensorCopy;
  v22[1] = paddingTensorCopy;
  v22[2] = valuesTensorCopy;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
  v18 = [(MPSGraphPadOp *)v16 initWithGraph:self inputTensors:v17 controlDependencies:MEMORY[0x1E695E0F0] paddingMode:mode name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v18 outputTensors];
  v20 = [outputTensors objectAtIndexedSubscript:0];

  return v20;
}

- (MPSGraphTensor)spaceToDepth2DTensor:(MPSGraphTensor *)tensor widthAxisTensor:(MPSGraphTensor *)widthAxisTensor heightAxisTensor:(MPSGraphTensor *)heightAxisTensor depthAxisTensor:(MPSGraphTensor *)depthAxisTensor blockSize:(NSUInteger)blockSize usePixelShuffleOrder:(BOOL)usePixelShuffleOrder name:(NSString *)name
{
  v9 = usePixelShuffleOrder;
  v29[4] = *MEMORY[0x1E69E9840];
  v28 = tensor;
  v15 = widthAxisTensor;
  v16 = heightAxisTensor;
  v17 = depthAxisTensor;
  v18 = name;
  v19 = [(MPSGraph *)self fixCastIntTensor:v15 toSignedness:1 name:v18];

  v20 = [(MPSGraph *)self fixCastIntTensor:v16 toSignedness:1 name:v18];

  v21 = [(MPSGraph *)self fixCastIntTensor:v17 toSignedness:1 name:v18];

  v22 = [MPSGraphSpaceToDepth2DOp alloc];
  v29[0] = v28;
  v29[1] = v19;
  v29[2] = v20;
  v29[3] = v21;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
  v24 = [(MPSGraphSpaceToDepth2DOp *)v22 initWithGraph:self inputTensors:v23 controlDependencies:MEMORY[0x1E695E0F0] blockSize:blockSize usePixelShuffleOrder:v9 name:v18];

  outputTensors = [(MPSGraphOperation *)v24 outputTensors];
  v26 = [outputTensors objectAtIndexedSubscript:0];

  return v26;
}

- (MPSGraphTensor)depthToSpace2DTensor:(MPSGraphTensor *)tensor widthAxisTensor:(MPSGraphTensor *)widthAxisTensor heightAxisTensor:(MPSGraphTensor *)heightAxisTensor depthAxisTensor:(MPSGraphTensor *)depthAxisTensor blockSize:(NSUInteger)blockSize usePixelShuffleOrder:(BOOL)usePixelShuffleOrder name:(NSString *)name
{
  v9 = usePixelShuffleOrder;
  v29[4] = *MEMORY[0x1E69E9840];
  v28 = tensor;
  v15 = widthAxisTensor;
  v16 = heightAxisTensor;
  v17 = depthAxisTensor;
  v18 = name;
  v19 = [(MPSGraph *)self fixCastIntTensor:v15 toSignedness:1 name:v18];

  v20 = [(MPSGraph *)self fixCastIntTensor:v16 toSignedness:1 name:v18];

  v21 = [(MPSGraph *)self fixCastIntTensor:v17 toSignedness:1 name:v18];

  v22 = [MPSGraphDepthToSpace2DOp alloc];
  v29[0] = v28;
  v29[1] = v19;
  v29[2] = v20;
  v29[3] = v21;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
  v24 = [(MPSGraphDepthToSpace2DOp *)v22 initWithGraph:self inputTensors:v23 controlDependencies:MEMORY[0x1E695E0F0] blockSize:blockSize usePixelShuffleOrder:v9 name:v18];

  outputTensors = [(MPSGraphOperation *)v24 outputTensors];
  v26 = [outputTensors objectAtIndexedSubscript:0];

  return v26;
}

- (MPSGraphTensor)spaceToDepth2DTensor:(MPSGraphTensor *)tensor widthAxis:(NSUInteger)widthAxis heightAxis:(NSUInteger)heightAxis depthAxis:(NSUInteger)depthAxis blockSize:(NSUInteger)blockSize usePixelShuffleOrder:(BOOL)usePixelShuffleOrder name:(NSString *)name
{
  v9 = usePixelShuffleOrder;
  v15 = tensor;
  v16 = name;
  v17 = [(MPSGraph *)self constantWithScalar:536870944 dataType:widthAxis];
  v18 = [(MPSGraph *)self constantWithScalar:536870944 dataType:heightAxis];
  v19 = [(MPSGraph *)self constantWithScalar:536870944 dataType:depthAxis];
  v20 = [(MPSGraph *)self spaceToDepth2DTensor:v15 widthAxisTensor:v17 heightAxisTensor:v18 depthAxisTensor:v19 blockSize:blockSize usePixelShuffleOrder:v9 name:v16];

  return v20;
}

- (MPSGraphTensor)depthToSpace2DTensor:(MPSGraphTensor *)tensor widthAxis:(NSUInteger)widthAxis heightAxis:(NSUInteger)heightAxis depthAxis:(NSUInteger)depthAxis blockSize:(NSUInteger)blockSize usePixelShuffleOrder:(BOOL)usePixelShuffleOrder name:(NSString *)name
{
  v9 = usePixelShuffleOrder;
  v15 = tensor;
  v16 = name;
  v17 = [(MPSGraph *)self constantWithScalar:536870944 dataType:widthAxis];
  v18 = [(MPSGraph *)self constantWithScalar:536870944 dataType:heightAxis];
  v19 = [(MPSGraph *)self constantWithScalar:536870944 dataType:depthAxis];
  v20 = [(MPSGraph *)self depthToSpace2DTensor:v15 widthAxisTensor:v17 heightAxisTensor:v18 depthAxisTensor:v19 blockSize:blockSize usePixelShuffleOrder:v9 name:v16];

  return v20;
}

- (MPSGraphTensor)spaceToBatchTensor:(MPSGraphTensor *)tensor spatialAxesTensor:(MPSGraphTensor *)spatialAxesTensor batchAxisTensor:(MPSGraphTensor *)batchAxisTensor blockDimensionsTensor:(MPSGraphTensor *)blockDimensionsTensor usePixelShuffleOrder:(BOOL)usePixelShuffleOrder name:(NSString *)name
{
  v9 = usePixelShuffleOrder;
  v27[4] = *MEMORY[0x1E69E9840];
  v14 = tensor;
  v15 = spatialAxesTensor;
  v16 = batchAxisTensor;
  v17 = blockDimensionsTensor;
  v18 = name;
  v19 = [(MPSGraph *)self fixCastIntTensor:v15 toSignedness:1 name:v18];

  v20 = [(MPSGraph *)self fixCastIntTensor:v16 toSignedness:1 name:v18];

  v21 = [MPSGraphSpaceToBatchOp alloc];
  v27[0] = v14;
  v27[1] = v19;
  v27[2] = v20;
  v27[3] = v17;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
  v23 = [(MPSGraphSpaceToBatchOp *)v21 initWithGraph:self inputTensors:v22 controlDependencies:MEMORY[0x1E695E0F0] usePixelShuffleOrder:v9 name:v18];

  outputTensors = [(MPSGraphOperation *)v23 outputTensors];
  v25 = [outputTensors objectAtIndexedSubscript:0];

  return v25;
}

- (MPSGraphTensor)spaceToBatchTensor:(MPSGraphTensor *)tensor spatialAxes:(NSArray *)spatialAxes batchAxis:(NSInteger)batchAxis blockDimensions:(NSArray *)blockDimensions usePixelShuffleOrder:(BOOL)usePixelShuffleOrder name:(NSString *)name
{
  v9 = usePixelShuffleOrder;
  v33[1] = *MEMORY[0x1E69E9840];
  v25 = tensor;
  v27 = blockDimensions;
  v26 = name;
  MPSShapeToVector<int>(spatialAxes, &v30);
  v14 = [MEMORY[0x1E695DEF0] dataWithBytes:v30 length:v31 - v30];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:(v31 - v30) >> 2];
  v33[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  v17 = [(MPSGraph *)self constantWithData:v14 shape:v16 dataType:536870944];

  v18 = [(MPSGraph *)self constantWithScalar:536870944 dataType:batchAxis];
  MPSShapeToVector<int>(v27, &__p);
  v19 = [MEMORY[0x1E695DEF0] dataWithBytes:__p length:v29 - __p];
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:(v29 - __p) >> 2];
  v32 = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  v22 = [(MPSGraph *)self constantWithData:v19 shape:v21 dataType:536870944];

  v23 = [(MPSGraph *)self spaceToBatchTensor:v25 spatialAxesTensor:v17 batchAxisTensor:v18 blockDimensionsTensor:v22 usePixelShuffleOrder:v9 name:v26];

  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  return v23;
}

- (MPSGraphTensor)batchToSpaceTensor:(MPSGraphTensor *)tensor spatialAxesTensor:(MPSGraphTensor *)spatialAxesTensor batchAxisTensor:(MPSGraphTensor *)batchAxisTensor blockDimensionsTensor:(MPSGraphTensor *)blockDimensionsTensor usePixelShuffleOrder:(BOOL)usePixelShuffleOrder name:(NSString *)name
{
  v9 = usePixelShuffleOrder;
  v27[4] = *MEMORY[0x1E69E9840];
  v14 = tensor;
  v15 = spatialAxesTensor;
  v16 = batchAxisTensor;
  v17 = blockDimensionsTensor;
  v18 = name;
  v19 = [(MPSGraph *)self fixCastIntTensor:v15 toSignedness:1 name:v18];

  v20 = [(MPSGraph *)self fixCastIntTensor:v16 toSignedness:1 name:v18];

  v21 = [MPSGraphBatchToSpaceOp alloc];
  v27[0] = v14;
  v27[1] = v19;
  v27[2] = v20;
  v27[3] = v17;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
  v23 = [(MPSGraphBatchToSpaceOp *)v21 initWithGraph:self inputTensors:v22 controlDependencies:MEMORY[0x1E695E0F0] usePixelShuffleOrder:v9 name:v18];

  outputTensors = [(MPSGraphOperation *)v23 outputTensors];
  v25 = [outputTensors objectAtIndexedSubscript:0];

  return v25;
}

- (MPSGraphTensor)batchToSpaceTensor:(MPSGraphTensor *)tensor spatialAxes:(NSArray *)spatialAxes batchAxis:(NSInteger)batchAxis blockDimensions:(NSArray *)blockDimensions usePixelShuffleOrder:(BOOL)usePixelShuffleOrder name:(NSString *)name
{
  v9 = usePixelShuffleOrder;
  v33[1] = *MEMORY[0x1E69E9840];
  v25 = tensor;
  v27 = blockDimensions;
  v26 = name;
  MPSShapeToVector<int>(spatialAxes, &v30);
  v14 = [MEMORY[0x1E695DEF0] dataWithBytes:v30 length:v31 - v30];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:(v31 - v30) >> 2];
  v33[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  v17 = [(MPSGraph *)self constantWithData:v14 shape:v16 dataType:536870944];

  v18 = [(MPSGraph *)self constantWithScalar:536870944 dataType:batchAxis];
  MPSShapeToVector<int>(v27, &__p);
  v19 = [MEMORY[0x1E695DEF0] dataWithBytes:__p length:v29 - __p];
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:(v29 - __p) >> 2];
  v32 = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  v22 = [(MPSGraph *)self constantWithData:v19 shape:v21 dataType:536870944];

  v23 = [(MPSGraph *)self batchToSpaceTensor:v25 spatialAxesTensor:v17 batchAxisTensor:v18 blockDimensionsTensor:v22 usePixelShuffleOrder:v9 name:v26];

  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  return v23;
}

- (MPSGraphTensor)reverseTensor:(MPSGraphTensor *)tensor axesTensor:(MPSGraphTensor *)axesTensor name:(NSString *)name
{
  v18[2] = *MEMORY[0x1E69E9840];
  v8 = tensor;
  v9 = axesTensor;
  v10 = name;
  v11 = [(MPSGraph *)self fixCastIntTensor:v9 toSignedness:1 name:v10];

  v12 = [MPSGraphReverseOp alloc];
  v18[0] = v8;
  v18[1] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v14 = [(MPSGraphOperation *)v12 initWithGraph:self inputTensors:v13 controlDependencies:MEMORY[0x1E695E0F0] name:v10];

  outputTensors = [(MPSGraphOperation *)v14 outputTensors];
  v16 = [outputTensors objectAtIndexedSubscript:0];

  return v16;
}

- (MPSGraphTensor)reverseTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v8 = [MPSGraphReverseOp alloc];
  v14[0] = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v10 = [(MPSGraphOperation *)v8 initWithGraph:self inputTensors:v9 controlDependencies:MEMORY[0x1E695E0F0] name:v7];

  outputTensors = [(MPSGraphOperation *)v10 outputTensors];
  v12 = [outputTensors objectAtIndexedSubscript:0];

  return v12;
}

- (MPSGraphTensor)reverseTensor:(MPSGraphTensor *)tensor axes:(NSArray *)axes name:(NSString *)name
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = tensor;
  v9 = axes;
  v10 = name;
  memset(v24, 0, sizeof(v24));
  v11 = [(NSArray *)v9 count];
  if (v11 >= 0x10)
  {
    v12 = 16;
  }

  else
  {
    v12 = v11;
  }

  if (v11)
  {
    for (i = 0; ; ++i)
    {
      v14 = [(NSArray *)v9 count];
      v15 = v14 >= 0x10 ? 16 : v14;
      if (i >= v15)
      {
        break;
      }

      v16 = [(NSArray *)v9 objectAtIndexedSubscript:i];
      *(v24 + i) = [v16 intValue];
    }

    v17 = [MEMORY[0x1E695DEF0] dataWithBytes:v24 length:4 * v12];
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
    v23 = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    v20 = [(MPSGraph *)self constantWithData:v17 shape:v19 dataType:536870944];

    v21 = [(MPSGraph *)self reverseTensor:v8 axesTensor:v20 name:v10];
  }

  else
  {
    v21 = [(MPSGraph *)self reverseTensor:v8 name:v10];
  }

  return v21;
}

- (MPSGraphTensor)flatten2DTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis name:(NSString *)name
{
  v8 = tensor;
  v9 = name;
  v10 = [(MPSGraph *)self constantWithScalar:536870944 dataType:axis];
  v11 = [(MPSGraph *)self flatten2DTensor:v8 axisTensor:v10 name:v9];

  return v11;
}

- (MPSGraphTensor)flatten2DTensor:(MPSGraphTensor *)tensor axisTensor:(MPSGraphTensor *)axisTensor name:(NSString *)name
{
  v18[2] = *MEMORY[0x1E69E9840];
  v8 = tensor;
  v9 = axisTensor;
  v10 = name;
  v11 = [(MPSGraph *)self fixCastIntTensor:v9 toSignedness:1 name:v10];

  v12 = [MPSGraphFlatten2DOp alloc];
  v18[0] = v8;
  v18[1] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v14 = [(MPSGraphOperation *)v12 initWithGraph:self inputTensors:v13 controlDependencies:MEMORY[0x1E695E0F0] name:v10];

  outputTensors = [(MPSGraphOperation *)v14 outputTensors];
  v16 = [outputTensors objectAtIndexedSubscript:0];

  return v16;
}

- (id)padGradientWithIncomingGradientTensor:(id)tensor sourceTensor:(id)sourceTensor paddingMode:(int64_t)mode paddingTensor:(id)paddingTensor name:(id)name
{
  v23[3] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  sourceTensorCopy = sourceTensor;
  paddingTensorCopy = paddingTensor;
  nameCopy = name;
  v23[0] = tensorCopy;
  v23[1] = sourceTensorCopy;
  v23[2] = paddingTensorCopy;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
  v17 = [MPSGraphPadGradientOp alloc];
  if (mode == 4)
  {
    modeCopy = 0;
  }

  else
  {
    modeCopy = mode;
  }

  v19 = [(MPSGraphPadGradientOp *)v17 initWithGraph:self inputTensors:v16 controlDependencies:MEMORY[0x1E695E0F0] paddingMode:modeCopy name:nameCopy];
  outputTensors = [(MPSGraphOperation *)v19 outputTensors];
  v21 = [outputTensors objectAtIndexedSubscript:0];

  return v21;
}

- (MPSGraphTensor)padGradientWithIncomingGradientTensor:(MPSGraphTensor *)incomingGradientTensor sourceTensor:(MPSGraphTensor *)sourceTensor paddingMode:(MPSGraphPaddingMode)paddingMode leftPadding:(MPSShape *)leftPadding rightPadding:(MPSShape *)rightPadding name:(NSString *)name
{
  v14 = incomingGradientTensor;
  v15 = sourceTensor;
  v16 = name;
  v17 = [(MPSGraph *)self paddingTensorWithLeftPadding:leftPadding rightPadding:rightPadding];
  v18 = [(MPSGraph *)self constantWithScalar:&unk_1F5B77B70 shape:[(MPSGraphTensor *)v15 dataType] dataType:0.0];
  if (paddingMode == MPSGraphPaddingModeZero)
  {
    v19 = MPSGraphPaddingModeConstant;
  }

  else
  {
    v19 = paddingMode;
  }

  v20 = [(MPSGraph *)self padGradientWithIncomingGradientTensor:v14 inputTensor:v15 paddingMode:v19 paddingTensor:v17 constantValuesTensor:v18 name:v16];

  return v20;
}

- (id)padGradientWithIncomingGradientTensor:(id)tensor inputTensor:(id)inputTensor paddingMode:(int64_t)mode paddingTensor:(id)paddingTensor constantValuesTensor:(id)valuesTensor name:(id)name
{
  v23[3] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  inputTensorCopy = inputTensor;
  paddingTensorCopy = paddingTensor;
  nameCopy = name;
  if (mode == 4)
  {
    mode = 0;
  }

  v17 = [MPSGraphPadGradientOp alloc];
  v23[0] = tensorCopy;
  v23[1] = inputTensorCopy;
  v23[2] = paddingTensorCopy;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
  v19 = [(MPSGraphPadGradientOp *)v17 initWithGraph:self inputTensors:v18 controlDependencies:MEMORY[0x1E695E0F0] paddingMode:mode name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v19 outputTensors];
  v21 = [outputTensors objectAtIndexedSubscript:0];

  return v21;
}

- (MPSGraphTensor)shapeOfTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  shape = [(MPSGraphTensor *)v6 shape];
  v9 = isStaticShape(shape);

  if (v9)
  {
    shape2 = [(MPSGraphTensor *)v6 shape];
    MPSShapeToVector<unsigned long long>(shape2, &__p);

    if (v21 != __p)
    {
      if (((v21 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
    }

    v16 = [MEMORY[0x1E695DEF0] dataWithBytes:0 length:0];
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
    v23[0] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    v15 = [(MPSGraph *)self constantWithData:v16 shape:v18 dataType:536870944];

    if (__p)
    {
      v21 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v11 = [MPSGraphShapeOp alloc];
    v22 = v6;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    v13 = [(MPSGraphOperation *)v11 initWithGraph:self inputTensors:v12 controlDependencies:MEMORY[0x1E695E0F0] name:v7];

    outputTensors = [(MPSGraphOperation *)v13 outputTensors];
    v15 = [outputTensors objectAtIndexedSubscript:0];
  }

  return v15;
}

- (id)rankOfTensor:(id)tensor name:(id)name
{
  v16[1] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  nameCopy = name;
  shape = [tensorCopy shape];

  if (shape)
  {
    shape2 = [tensorCopy shape];
    v10 = -[MPSGraph constantWithScalar:shape:dataType:](self, "constantWithScalar:shape:dataType:", &unk_1F5B77B88, 536870944, [shape2 count]);
  }

  else
  {
    v11 = [MPSGraphRankOp alloc];
    v16[0] = tensorCopy;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v13 = [(MPSGraphOperation *)v11 initWithGraph:self inputTensors:v12 controlDependencies:MEMORY[0x1E695E0F0] name:nameCopy];

    outputTensors = [(MPSGraphOperation *)v13 outputTensors];
    v10 = [outputTensors objectAtIndexedSubscript:0];
  }

  return v10;
}

- (id)sizeOfTensor:(id)tensor name:(id)name
{
  v22[1] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  nameCopy = name;
  shape = [tensorCopy shape];
  v9 = isStaticShape(shape);

  if (v9)
  {
    v10 = 0;
    v11 = 1;
    while (1)
    {
      shape2 = [tensorCopy shape];
      v13 = [shape2 count];

      if (v10 >= v13)
      {
        break;
      }

      shape3 = [tensorCopy shape];
      v15 = [shape3 objectAtIndexedSubscript:v10];
      v11 *= [v15 unsignedIntegerValue];

      ++v10;
    }

    v20 = [(MPSGraph *)self constantWithScalar:&unk_1F5B77BA0 shape:536870944 dataType:v11];
  }

  else
  {
    v16 = [MPSGraphSizeOp alloc];
    v22[0] = tensorCopy;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    v18 = [(MPSGraphOperation *)v16 initWithGraph:self inputTensors:v17 controlDependencies:MEMORY[0x1E695E0F0] name:nameCopy];

    outputTensors = [(MPSGraphOperation *)v18 outputTensors];
    v20 = [outputTensors objectAtIndexedSubscript:0];
  }

  return v20;
}

- (id)dimensionSizeOfTensor:(id)tensor axes:(id)axes name:(id)name
{
  v19[1] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  axesCopy = axes;
  nameCopy = name;
  MPSShapeToVector<unsigned long long>(axesCopy, &__p);
  if (v18 != __p)
  {
    if (((v18 - __p) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
  }

  v11 = [MEMORY[0x1E695DEF0] dataWithBytes:0 length:0];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
  v19[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v14 = [(MPSGraph *)self constantWithData:v11 shape:v13 dataType:536870944];

  v15 = [(MPSGraph *)self dimensionSizeOfTensor:tensorCopy axesTensor:v14 name:nameCopy];

  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  return v15;
}

- (id)dimensionSizeOfTensor:(id)tensor axesTensor:(id)axesTensor name:(id)name
{
  v17[2] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  axesTensorCopy = axesTensor;
  nameCopy = name;
  v11 = [MPSGraphDimensionSizeOp alloc];
  v17[0] = tensorCopy;
  v17[1] = axesTensorCopy;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v13 = [(MPSGraphOperation *)v11 initWithGraph:self inputTensors:v12 controlDependencies:MEMORY[0x1E695E0F0] name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v13 outputTensors];
  v15 = [outputTensors objectAtIndexedSubscript:0];

  return v15;
}

- (MPSGraphTensor)broadcastTensor:(MPSGraphTensor *)tensor toShapeTensor:(MPSGraphTensor *)shapeTensor name:(NSString *)name
{
  v18[2] = *MEMORY[0x1E69E9840];
  v8 = tensor;
  v9 = shapeTensor;
  v10 = name;
  v11 = [(MPSGraph *)self fixCastIntTensor:v9 toSignedness:1 name:v10];

  v12 = [MPSGraphBroadcastOp alloc];
  v18[0] = v8;
  v18[1] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v14 = [(MPSGraphOperation *)v12 initWithGraph:self inputTensors:v13 controlDependencies:MEMORY[0x1E695E0F0] name:v10];

  outputTensors = [(MPSGraphOperation *)v14 outputTensors];
  v16 = [outputTensors objectAtIndexedSubscript:0];

  return v16;
}

- (MPSGraphTensor)broadcastTensor:(MPSGraphTensor *)tensor toShape:(MPSShape *)shape name:(NSString *)name
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = tensor;
  v9 = shape;
  v10 = name;
  v11 = [(MPSShape *)v9 count];
  memset(v33, 0, sizeof(v33));
  if (v11 >= 0x10)
  {
    v12 = 16;
  }

  else
  {
    v12 = v11;
  }

  v32 = 0uLL;
  v31 = 0uLL;
  v30 = 1;
  v24 = 0uLL;
  v25 = 0uLL;
  v26 = 0uLL;
  v27 = 0uLL;
  v13 = v9;
  v14 = [(MPSShape *)v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v14)
  {
    v15 = *v25;
    v16 = &v30;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v13);
        }

        *v16++ = [*(*(&v24 + 1) + 8 * i) unsignedIntValue];
      }

      v14 = [(MPSShape *)v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v14);
  }

  v18 = [MEMORY[0x1E695DEF0] dataWithBytes:&v30 length:(4 * v12)];
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v12];
  v28 = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  v21 = [(MPSGraph *)self constantWithData:v18 shape:v20 dataType:536870944];

  v22 = [(MPSGraph *)self broadcastTensor:v8 toShapeTensor:v21 name:v10];

  return v22;
}

- (id)broadcastGradientArgsForPrimaryTensor:(id)tensor withSecondaryTensor:(id)secondaryTensor name:(id)name
{
  v17[2] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  secondaryTensorCopy = secondaryTensor;
  nameCopy = name;
  v11 = [MPSGraphBroadcastGradientArgsOp alloc];
  v17[0] = tensorCopy;
  v17[1] = secondaryTensorCopy;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v13 = [(MPSGraphOperation *)v11 initWithGraph:self inputTensors:v12 controlDependencies:MEMORY[0x1E695E0F0] name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v13 outputTensors];
  v15 = [outputTensors objectAtIndexedSubscript:0];

  return v15;
}

- (MPSGraphTensor)squeezeTensor:(MPSGraphTensor *)tensor name:(NSString *)name
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = tensor;
  v7 = name;
  v8 = [MPSGraphSqueezeOp alloc];
  v14[0] = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v10 = [(MPSGraphOperation *)v8 initWithGraph:self inputTensors:v9 controlDependencies:MEMORY[0x1E695E0F0] name:v7];

  outputTensors = [(MPSGraphOperation *)v10 outputTensors];
  v12 = [outputTensors objectAtIndexedSubscript:0];

  return v12;
}

- (MPSGraphTensor)squeezeTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis name:(NSString *)name
{
  v7 = tensor;
  v8 = [(MPSGraph *)self constantWithScalar:&unk_1F5B77BB8 shape:536870944 dataType:axis];
  v9 = [(MPSGraph *)self squeezeTensor:v7 axesTensor:v8 name:0];

  return v9;
}

- (MPSGraphTensor)squeezeTensor:(MPSGraphTensor *)tensor axes:(NSArray *)axes name:(NSString *)name
{
  v19[1] = *MEMORY[0x1E69E9840];
  v8 = tensor;
  v9 = axes;
  v10 = name;
  MPSShapeToVector<unsigned long long>(v9, &__p);
  if (v18 != __p)
  {
    if (((v18 - __p) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
  }

  v11 = [MEMORY[0x1E695DEF0] dataWithBytes:0 length:0];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
  v19[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v14 = [(MPSGraph *)self constantWithData:v11 shape:v13 dataType:536870944];

  v15 = [(MPSGraph *)self squeezeTensor:v8 axesTensor:v14 name:0];

  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  return v15;
}

- (MPSGraphTensor)squeezeTensor:(MPSGraphTensor *)tensor axesTensor:(MPSGraphTensor *)axesTensor name:(NSString *)name
{
  v18[2] = *MEMORY[0x1E69E9840];
  v8 = tensor;
  v9 = axesTensor;
  v10 = name;
  v11 = [(MPSGraph *)self fixCastIntTensor:v9 toSignedness:1 name:v10];

  v12 = [MPSGraphSqueezeOp alloc];
  v18[0] = v8;
  v18[1] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v14 = [(MPSGraphOperation *)v12 initWithGraph:self inputTensors:v13 controlDependencies:MEMORY[0x1E695E0F0] name:v10];

  outputTensors = [(MPSGraphOperation *)v14 outputTensors];
  v16 = [outputTensors objectAtIndexedSubscript:0];

  return v16;
}

- (id)squeezeTensor:(id)tensor dimensionTensor:(id)dimensionTensor name:(id)name
{
  v17[2] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  dimensionTensorCopy = dimensionTensor;
  nameCopy = name;
  v11 = [MPSGraphSqueezeOp alloc];
  v17[0] = tensorCopy;
  v17[1] = dimensionTensorCopy;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v13 = [(MPSGraphOperation *)v11 initWithGraph:self inputTensors:v12 controlDependencies:MEMORY[0x1E695E0F0] name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v13 outputTensors];
  v15 = [outputTensors objectAtIndexedSubscript:0];

  return v15;
}

- (id)squeezeTensor:(id)tensor dimension:(unint64_t)dimension name:(id)name
{
  tensorCopy = tensor;
  v8 = [(MPSGraph *)self constantWithScalar:&unk_1F5B77BD0 shape:536870944 dataType:dimension];
  v9 = [(MPSGraph *)self squeezeTensor:tensorCopy dimensionTensor:v8 name:0];

  return v9;
}

- (MPSGraphTensor)expandDimsOfTensor:(MPSGraphTensor *)tensor axis:(NSInteger)axis name:(NSString *)name
{
  v7 = tensor;
  v8 = [(MPSGraph *)self constantWithScalar:&unk_1F5B77BE8 shape:536870944 dataType:axis];
  v9 = [(MPSGraph *)self expandDimsOfTensor:v7 axesTensor:v8 name:0];

  return v9;
}

- (MPSGraphTensor)expandDimsOfTensor:(MPSGraphTensor *)tensor axes:(NSArray *)axes name:(NSString *)name
{
  v19[1] = *MEMORY[0x1E69E9840];
  v8 = tensor;
  v9 = axes;
  v10 = name;
  MPSShapeToVector<unsigned long long>(v9, &__p);
  if (v18 != __p)
  {
    if (((v18 - __p) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
  }

  v11 = [MEMORY[0x1E695DEF0] dataWithBytes:0 length:0];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
  v19[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v14 = [(MPSGraph *)self constantWithData:v11 shape:v13 dataType:536870944];

  v15 = [(MPSGraph *)self expandDimsOfTensor:v8 axesTensor:v14 name:0];

  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  return v15;
}

- (MPSGraphTensor)expandDimsOfTensor:(MPSGraphTensor *)tensor axesTensor:(MPSGraphTensor *)axesTensor name:(NSString *)name
{
  v18[2] = *MEMORY[0x1E69E9840];
  v8 = tensor;
  v9 = axesTensor;
  v10 = name;
  v11 = [(MPSGraph *)self fixCastIntTensor:v9 toSignedness:1 name:0];

  v12 = [MPSGraphExpandOp alloc];
  v18[0] = v8;
  v18[1] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v14 = [(MPSGraphOperation *)v12 initWithGraph:self inputTensors:v13 controlDependencies:MEMORY[0x1E695E0F0] name:v10];

  outputTensors = [(MPSGraphOperation *)v14 outputTensors];
  v16 = [outputTensors objectAtIndexedSubscript:0];

  return v16;
}

- (id)expandTensor:(id)tensor dimensionTensor:(id)dimensionTensor name:(id)name
{
  v17[2] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  dimensionTensorCopy = dimensionTensor;
  nameCopy = name;
  v11 = [MPSGraphExpandOp alloc];
  v17[0] = tensorCopy;
  v17[1] = dimensionTensorCopy;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v13 = [(MPSGraphOperation *)v11 initWithGraph:self inputTensors:v12 controlDependencies:MEMORY[0x1E695E0F0] name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v13 outputTensors];
  v15 = [outputTensors objectAtIndexedSubscript:0];

  return v15;
}

- (id)expandTensor:(id)tensor dimension:(unint64_t)dimension name:(id)name
{
  tensorCopy = tensor;
  nameCopy = name;
  v10 = [(MPSGraph *)self constantWithScalar:&unk_1F5B77C00 shape:536870944 dataType:dimension];
  v11 = [(MPSGraph *)self expandTensor:tensorCopy dimensionTensor:v10 name:nameCopy];

  return v11;
}

- (NSArray)splitTensor:(MPSGraphTensor *)tensor splitSizes:(NSArray *)splitSizes axis:(NSInteger)axis name:(NSString *)name
{
  v21[1] = *MEMORY[0x1E69E9840];
  v10 = tensor;
  v11 = name;
  MPSShapeToVector<int>(splitSizes, &__p);
  v12 = v20 - __p;
  v13 = [MEMORY[0x1E695DEF0] dataWithBytes:? length:?];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12 >> 2];
  v21[0] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v16 = [(MPSGraph *)self constantWithData:v13 shape:v15 dataType:536870944];

  v17 = [(MPSGraph *)self splitTensor:v10 splitSizesTensor:v16 axis:axis name:v11];

  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  return v17;
}

- (NSArray)splitTensor:(MPSGraphTensor *)tensor splitSizesTensor:(MPSGraphTensor *)splitSizesTensor axis:(NSInteger)axis name:(NSString *)name
{
  v20[3] = *MEMORY[0x1E69E9840];
  v10 = tensor;
  v11 = splitSizesTensor;
  v12 = name;
  v13 = [(MPSGraph *)self constantWithScalar:536870944 dataType:axis];
  v14 = [(MPSGraph *)self fixCastIntTensor:v11 toSignedness:1 name:v12];

  v15 = [MPSGraphSplitOp alloc];
  v20[0] = v10;
  v20[1] = v13;
  v20[2] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
  v17 = [(MPSGraphSplitOp *)v15 initWithGraph:self inputTensors:v16 controlDependencies:MEMORY[0x1E695E0F0] dimension:axis name:v12];

  outputTensors = [(MPSGraphOperation *)v17 outputTensors];

  return outputTensors;
}

- (NSArray)splitTensor:(MPSGraphTensor *)tensor numSplits:(NSUInteger)numSplits axis:(NSInteger)axis name:(NSString *)name
{
  v18[2] = *MEMORY[0x1E69E9840];
  v10 = tensor;
  v11 = name;
  v12 = [(MPSGraph *)self constantWithScalar:536870944 dataType:axis];
  v13 = [MPSGraphSplitOp alloc];
  v18[0] = v10;
  v18[1] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v15 = [(MPSGraphSplitOp *)v13 initWithGraph:self inputTensors:v14 controlDependencies:MEMORY[0x1E695E0F0] dimension:axis numSplits:numSplits name:v11];

  outputTensors = [(MPSGraphOperation *)v15 outputTensors];

  return outputTensors;
}

- (MPSGraphTensor)stackTensors:(NSArray *)inputTensors axis:(NSInteger)axis name:(NSString *)name
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = inputTensors;
  v21 = axis;
  v22 = name;
  v24 = [(MPSGraph *)self constantWithScalar:&unk_1F5B77C18 shape:536870944 dataType:axis];
  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v8;
  v9 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v9)
  {
    v10 = 0;
    v11 = *v27;
    if (v22)
    {
      v12 = v22;
    }

    else
    {
      v12 = @"stack";
    }

    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/expand%lu", v12, v10];
        v16 = [(MPSGraph *)self expandTensor:v14 dimensionTensor:v24 name:v15];

        [v25 addObject:v16];
        ++v10;
      }

      v9 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  v17 = v22;
  if (!v22)
  {
    v17 = @"stack";
  }

  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/concat", v17];
  v19 = [(MPSGraph *)self concatTensors:v25 dimension:v21 name:v18];

  return v19;
}

- (MPSGraphTensor)coordinateAlongAxis:(NSInteger)axis withShape:(MPSShape *)shape name:(NSString *)name
{
  v8 = shape;
  v9 = name;
  v10 = [(MPSGraph *)self constantWithScalar:536870944 dataType:axis];
  v11 = [(MPSGraph *)self coordinateAlongAxisTensor:v10 withShape:v8 name:v9];

  return v11;
}

- (MPSGraphTensor)coordinateAlongAxisTensor:(MPSGraphTensor *)axisTensor withShape:(MPSShape *)shape name:(NSString *)name
{
  v20[1] = *MEMORY[0x1E69E9840];
  v8 = axisTensor;
  v9 = shape;
  v10 = name;
  v11 = malloc_type_malloc(4 * [(MPSShape *)v9 count], 0x100004052888210uLL);
  for (i = 0; i < [(MPSShape *)v9 count]; ++i)
  {
    v13 = [(MPSShape *)v9 objectAtIndexedSubscript:i];
    v11[i] = [v13 intValue];
  }

  v14 = [MEMORY[0x1E695DEF0] dataWithBytes:v11 length:{4 * -[MPSShape count](v9, "count")}];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MPSShape count](v9, "count")}];
  v20[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v17 = [(MPSGraph *)self constantWithData:v14 shape:v16 dataType:536870944];

  free(v11);
  v18 = [(MPSGraph *)self coordinateAlongAxisTensor:v8 withShapeTensor:v17 name:v10];

  return v18;
}

- (MPSGraphTensor)coordinateAlongAxis:(NSInteger)axis withShapeTensor:(MPSGraphTensor *)shapeTensor name:(NSString *)name
{
  v8 = shapeTensor;
  v9 = name;
  v10 = [(MPSGraph *)self constantWithScalar:536870944 dataType:axis];
  v11 = [(MPSGraph *)self coordinateAlongAxisTensor:v10 withShapeTensor:v8 name:v9];

  return v11;
}

- (MPSGraphTensor)coordinateAlongAxisTensor:(MPSGraphTensor *)axisTensor withShapeTensor:(MPSGraphTensor *)shapeTensor name:(NSString *)name
{
  v17[2] = *MEMORY[0x1E69E9840];
  v8 = axisTensor;
  v9 = shapeTensor;
  v10 = name;
  v11 = [(MPSGraph *)self fixCastIntTensor:v9 toSignedness:1 name:v10];

  v12 = [MPSGraphGetCoordOp alloc];
  v17[0] = v11;
  v17[1] = v8;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v14 = [(MPSGraphOperation *)v12 initWithGraph:self inputTensors:v13 controlDependencies:MEMORY[0x1E695E0F0] name:v10];

  v15 = [v14[3] objectAtIndexedSubscript:0];

  return v15;
}

- (id)getCoordinateValueWithShapeTensor:(id)tensor axisTensor:(id)axisTensor name:(id)name
{
  v5 = [(MPSGraph *)self coordinateAlongAxisTensor:axisTensor withShapeTensor:tensor name:name];

  return v5;
}

- (id)fixCastIntTensor:(id)tensor toSignedness:(BOOL)signedness name:(id)name
{
  signednessCopy = signedness;
  tensorCopy = tensor;
  nameCopy = name;
  dataType = [tensorCopy dataType];
  if (dataType > 536870943)
  {
    if (dataType != 536870944)
    {
      if (dataType != 536870976)
      {
LABEL_11:
        v12 = tensorCopy;
        goto LABEL_17;
      }

      goto LABEL_7;
    }

LABEL_12:
    if (signednessCopy)
    {
      v13 = 536870944;
    }

    else
    {
      v13 = 32;
    }

    if (dataType == v13)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  if (dataType == 32)
  {
    goto LABEL_12;
  }

  if (dataType != 64)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (signednessCopy)
  {
    v11 = 536870976;
  }

  else
  {
    v11 = 64;
  }

  if (dataType == v11)
  {
    goto LABEL_11;
  }

LABEL_16:
  v12 = [MPSGraph castTensor:"castTensor:toType:name:" toType:tensorCopy name:?];
LABEL_17:
  v14 = v12;

  return v14;
}

- (id)interleaveTensor:(id)tensor interleaveFactor:(unint64_t)factor name:(id)name
{
  v16[1] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  nameCopy = name;
  v10 = [MPSGraphInterleaveOp alloc];
  v16[0] = tensorCopy;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v12 = [(MPSGraphInterleaveOp *)v10 initWithGraph:self inputTensors:v11 controlDependencies:MEMORY[0x1E695E0F0] interleaveFactor:factor name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v12 outputTensors];
  v14 = [outputTensors objectAtIndexedSubscript:0];

  return v14;
}

- (id)deinterleaveTensor:(id)tensor interleaveFactor:(unint64_t)factor name:(id)name
{
  v16[1] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  nameCopy = name;
  v10 = [MPSGraphDeinterleaveOp alloc];
  v16[0] = tensorCopy;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v12 = [(MPSGraphDeinterleaveOp *)v10 initWithGraph:self inputTensors:v11 controlDependencies:MEMORY[0x1E695E0F0] interleaveFactor:factor name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v12 outputTensors];
  v14 = [outputTensors objectAtIndexedSubscript:0];

  return v14;
}

- (id)makeListWithElementType:(id)type maxSize:(unint64_t)size name:(id)name
{
  typeCopy = type;
  nameCopy = name;
  v10 = [MPSGraphMakeListOp alloc];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:size];
  v12 = [(MPSGraphMakeListOp *)v10 initWithGraph:self inputTensors:MEMORY[0x1E695E0F0] controlDependencies:MEMORY[0x1E695E0F0] elementType:typeCopy maxSize:v11 name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v12 outputTensors];
  v14 = [outputTensors objectAtIndexedSubscript:0];

  return v14;
}

- (id)makeListWithElementType:(id)type name:(id)name
{
  typeCopy = type;
  nameCopy = name;
  v8 = [MPSGraphMakeListOp alloc];
  v9 = [(MPSGraphMakeListOp *)v8 initWithGraph:self inputTensors:MEMORY[0x1E695E0F0] controlDependencies:MEMORY[0x1E695E0F0] elementType:typeCopy maxSize:0 name:nameCopy];
  outputTensors = [(MPSGraphOperation *)v9 outputTensors];
  v11 = [outputTensors objectAtIndexedSubscript:0];

  return v11;
}

- (id)pushBackToList:(id)list element:(id)element name:(id)name
{
  v17[2] = *MEMORY[0x1E69E9840];
  listCopy = list;
  elementCopy = element;
  nameCopy = name;
  v11 = [MPSGraphListPushBackOp alloc];
  v17[0] = listCopy;
  v17[1] = elementCopy;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v13 = [(MPSGraphOperation *)v11 initWithGraph:self inputTensors:v12 controlDependencies:MEMORY[0x1E695E0F0] name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v13 outputTensors];
  v15 = [outputTensors objectAtIndexedSubscript:0];

  return v15;
}

- (id)popBackFromList:(id)list outputList:(id *)outputList name:(id)name
{
  v17[1] = *MEMORY[0x1E69E9840];
  listCopy = list;
  nameCopy = name;
  v10 = [MPSGraphListPopBackOp alloc];
  v17[0] = listCopy;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v12 = [(MPSGraphOperation *)v10 initWithGraph:self inputTensors:v11 controlDependencies:MEMORY[0x1E695E0F0] name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v12 outputTensors];
  *outputList = [outputTensors objectAtIndexedSubscript:0];

  outputTensors2 = [(MPSGraphOperation *)v12 outputTensors];
  v15 = [outputTensors2 objectAtIndexedSubscript:1];

  return v15;
}

- (id)localConvolutionWithSourceTensor:(id)tensor weightTensor:(id)weightTensor dataLayout:(unint64_t)layout kernelShape:(id)shape dilationRateInX:(unint64_t)x dilationRateInY:(unint64_t)y name:(id)name
{
  v25[2] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  weightTensorCopy = weightTensor;
  shapeCopy = shape;
  nameCopy = name;
  v19 = [MPSGraphLocalConvolutionOp alloc];
  v25[0] = tensorCopy;
  v25[1] = weightTensorCopy;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v21 = [(MPSGraphLocalConvolutionOp *)v19 initWithGraph:self inputTensors:v20 controlDependencies:MEMORY[0x1E695E0F0] dataLayout:layout kernelShape:shapeCopy dilationRateInX:x dilationRateInY:y name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v21 outputTensors];
  v23 = [outputTensors objectAtIndexedSubscript:0];

  return v23;
}

- (id)localConvolutionWeightGradientWithIncomingGradientTensor:(id)tensor sourceTensor:(id)sourceTensor dataLayout:(unint64_t)layout kernelShape:(id)shape dilationRateInX:(unint64_t)x dilationRateInY:(unint64_t)y name:(id)name
{
  v25[2] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  sourceTensorCopy = sourceTensor;
  shapeCopy = shape;
  nameCopy = name;
  v19 = [MPSGraphLocalConvolutionWeightGradientOp alloc];
  v25[0] = tensorCopy;
  v25[1] = sourceTensorCopy;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v21 = [(MPSGraphLocalConvolutionWeightGradientOp *)v19 initWithGraph:self inputTensors:v20 controlDependencies:MEMORY[0x1E695E0F0] dataLayout:layout kernelShape:shapeCopy dilationRateInX:x dilationRateInY:y name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v21 outputTensors];
  v23 = [outputTensors objectAtIndexedSubscript:0];

  return v23;
}

- (id)localConvolutionDataGradientWithIncomingGradientTensor:(id)tensor weightTensor:(id)weightTensor dataLayout:(unint64_t)layout kernelShape:(id)shape dilationRateInX:(unint64_t)x dilationRateInY:(unint64_t)y name:(id)name
{
  v25[2] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  weightTensorCopy = weightTensor;
  shapeCopy = shape;
  nameCopy = name;
  v19 = [MPSGraphLocalConvolutionDataGradientOp alloc];
  v25[0] = tensorCopy;
  v25[1] = weightTensorCopy;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v21 = [(MPSGraphLocalConvolutionDataGradientOp *)v19 initWithGraph:self inputTensors:v20 controlDependencies:MEMORY[0x1E695E0F0] dataLayout:layout kernelShape:shapeCopy dilationRateInX:x dilationRateInY:y name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v21 outputTensors];
  v23 = [outputTensors objectAtIndexedSubscript:0];

  return v23;
}

- (id)batchNormalizationLayerWithTensor:(id)tensor batchNormalizationGammaInitializer:(id)initializer batchNormalizationBetaInitializer:(id)betaInitializer batchNormalizationMeanInitializer:(id)meanInitializer batchNormalizationVarianceInitializer:(id)varianceInitializer batchNormalizationEpsilon:(double)epsilon dataLayout:(unint64_t)layout name:(id)self0
{
  v67[1] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  initializerCopy = initializer;
  betaInitializerCopy = betaInitializer;
  meanInitializerCopy = meanInitializer;
  varianceInitializerCopy = varianceInitializer;
  nameCopy = name;
  v20 = tensorCopy;
  v21 = v20;
  if (meanInitializerCopy || initializerCopy || betaInitializerCopy || (v22 = v20, varianceInitializerCopy))
  {
    shape = [v20 shape];
    v57 = shape;
    if (layout)
    {
      if (layout == 1)
      {
        v24 = [shape objectAtIndexedSubscript:3];
        unsignedIntegerValue = [v24 unsignedIntegerValue];
        v26 = &unk_1F5B77C78;

        if (!nameCopy)
        {
LABEL_8:
          v27 = [@"batchNormalization" stringByAppendingString:@"/mean"];
LABEL_15:
          v29 = v27;
          v59 = [(MPSGraph *)self meanOfTensor:v21 axes:v26 name:v27];

          if (nameCopy)
          {
            [nameCopy stringByAppendingString:@"/batchNormalization/variance"];
          }

          else
          {
            [@"batchNormalization" stringByAppendingString:@"/variance"];
          }
          v30 = ;
          v58 = [(MPSGraph *)self varianceOfTensor:v21 meanTensor:v59 axes:v26 name:v30];

          if (initializerCopy)
          {
            v31 = [initializerCopy initializedDataWithNumberOfValues:unsignedIntegerValue dataType:268435488];
            v32 = [MEMORY[0x1E696AD98] numberWithInteger:unsignedIntegerValue];
            v67[0] = v32;
            v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:1];
            if (nameCopy)
            {
              [nameCopy stringByAppendingString:@"/batchNormalization/gammaVariable"];
            }

            else
            {
              [@"batchNormalization" stringByAppendingString:@"/gammaVariable"];
            }
            v34 = ;
            v60 = [(MPSGraph *)self variableWithData:v31 shape:v33 dataType:268435488 name:v34];

            traininableHighLevelOpVariables = self->_traininableHighLevelOpVariables;
            operation = [v60 operation];
            [(NSMutableArray *)traininableHighLevelOpVariables addObject:operation];
          }

          else
          {
            v60 = 0;
          }

          if (betaInitializerCopy)
          {
            v37 = [betaInitializerCopy initializedDataWithNumberOfValues:unsignedIntegerValue dataType:268435488];
            v38 = [MEMORY[0x1E696AD98] numberWithInteger:unsignedIntegerValue];
            v66 = v38;
            v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
            if (nameCopy)
            {
              [nameCopy stringByAppendingString:@"/batchNormalization/betaVariable"];
            }

            else
            {
              [@"batchNormalization" stringByAppendingString:@"/betaVariable"];
            }
            v41 = ;
            v40 = [(MPSGraph *)self variableWithData:v37 shape:v39 dataType:268435488 name:v41];

            v42 = self->_traininableHighLevelOpVariables;
            operation2 = [v40 operation];
            [(NSMutableArray *)v42 addObject:operation2];
          }

          else
          {
            v40 = 0;
          }

          if (meanInitializerCopy)
          {
            v44 = [meanInitializerCopy initializedDataWithNumberOfValues:unsignedIntegerValue dataType:268435488];
            v45 = [MEMORY[0x1E696AD98] numberWithInteger:unsignedIntegerValue];
            v65 = v45;
            v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
            if (nameCopy)
            {
              [nameCopy stringByAppendingString:@"/batchNormalization/runningMeanVariable"];
            }

            else
            {
              [@"batchNormalization" stringByAppendingString:@"/runningMeanVariable"];
            }
            v47 = ;
            v56 = [(MPSGraph *)self variableWithData:v44 shape:v46 dataType:268435488 name:v47];
          }

          else
          {
            v56 = 0;
          }

          if (varianceInitializerCopy)
          {
            v48 = [varianceInitializerCopy initializedDataWithNumberOfValues:unsignedIntegerValue dataType:268435488];
            v49 = [MEMORY[0x1E696AD98] numberWithInteger:unsignedIntegerValue];
            v64 = v49;
            v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
            if (nameCopy)
            {
              [nameCopy stringByAppendingString:@"/batchNormalization/runningVarianceVariable"];
            }

            else
            {
              [@"batchNormalization" stringByAppendingString:@"/runningVarianceVariable"];
            }
            v52 = ;
            v51 = [(MPSGraph *)self variableWithData:v48 shape:v50 dataType:268435488 name:v52];
          }

          else
          {
            v51 = 0;
          }

          if (nameCopy)
          {
            [nameCopy stringByAppendingString:@"/batchNormalization/normalization"];
          }

          else
          {
            [@"conv2DLayer" stringByAppendingString:@"/batchNormalization/normalization"];
          }
          v53 = ;
          *&v54 = epsilon;
          v22 = [(MPSGraph *)self normalizationWithTensor:v21 meanTensor:v59 varianceTensor:v58 gammaTensor:v60 betaTensor:v40 epsilon:v53 name:v54];

          goto LABEL_46;
        }
      }

      else
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        unsignedIntegerValue = 0;
        v26 = 0;
        if (!nameCopy)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      v28 = [shape objectAtIndexedSubscript:1];
      unsignedIntegerValue = [v28 unsignedIntegerValue];
      v26 = &unk_1F5B77C60;

      if (!nameCopy)
      {
        goto LABEL_8;
      }
    }

    v27 = [nameCopy stringByAppendingString:@"/batchNormalization/mean"];
    goto LABEL_15;
  }

LABEL_46:

  return v22;
}

- (id)convolution2DLayerWithTensor:(id)tensor kernelSizes:(id)sizes outputChannelCount:(unint64_t)count strides:(id)strides dilationRates:(id)rates groups:(unint64_t)groups activationType:(unsigned int)type weightsInitializer:(id)self0 biasesInitializer:(id)self1 batchNormalizationGammaInitializer:(id)self2 batchNormalizationBetaInitializer:(id)self3 batchNormalizationMeanInitializer:(id)self4 batchNormalizationVarianceInitializer:(id)self5 batchNormalizationEpsilon:(double)self6 paddingStyle:(unint64_t)self7 dataLayout:(unint64_t)self8 weightsLayout:(unint64_t)self9 name:(id)name
{
  v83[4] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  sizesCopy = sizes;
  stridesCopy = strides;
  ratesCopy = rates;
  initializerCopy = initializer;
  biasesInitializerCopy = biasesInitializer;
  gammaInitializerCopy = gammaInitializer;
  betaInitializerCopy = betaInitializer;
  meanInitializerCopy = meanInitializer;
  varianceInitializerCopy = varianceInitializer;
  nameCopy = name;
  v69 = sizesCopy;
  v26 = [sizesCopy objectAtIndexedSubscript:0];
  unsignedIntegerValue = [v26 unsignedIntegerValue];

  v28 = [sizesCopy objectAtIndexedSubscript:1];
  unsignedIntegerValue2 = [v28 unsignedIntegerValue];

  shape = [tensorCopy shape];
  if (!layout)
  {
    v30 = [shape objectAtIndexedSubscript:1];
    unsignedIntegerValue3 = [v30 unsignedIntegerValue];
LABEL_5:
    v32 = unsignedIntegerValue3;

    if (weightsLayout != 2)
    {
      goto LABEL_6;
    }

LABEL_11:
    v33 = [MEMORY[0x1E696AD98] numberWithInteger:count];
    v82[0] = v33;
    v34 = [MEMORY[0x1E696AD98] numberWithInteger:v32];
    v82[1] = v34;
    v35 = [MEMORY[0x1E696AD98] numberWithInteger:unsignedIntegerValue];
    v82[2] = v35;
    v36 = [MEMORY[0x1E696AD98] numberWithInteger:unsignedIntegerValue2];
    v82[3] = v36;
    v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:4];
    goto LABEL_12;
  }

  if (layout == 1)
  {
    v30 = [shape objectAtIndexedSubscript:3];
    unsignedIntegerValue3 = [v30 unsignedIntegerValue];
    goto LABEL_5;
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v32 = 0;
  if (weightsLayout == 2)
  {
    goto LABEL_11;
  }

LABEL_6:
  if (weightsLayout == 3)
  {
    v33 = [MEMORY[0x1E696AD98] numberWithInteger:unsignedIntegerValue];
    v83[0] = v33;
    v34 = [MEMORY[0x1E696AD98] numberWithInteger:unsignedIntegerValue2];
    v83[1] = v34;
    v35 = [MEMORY[0x1E696AD98] numberWithInteger:v32];
    v83[2] = v35;
    v36 = [MEMORY[0x1E696AD98] numberWithInteger:count];
    v83[3] = v36;
    v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:4];
LABEL_12:

    goto LABEL_16;
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v68 = 0;
LABEL_16:
  v37 = [initializerCopy initializedDataWithNumberOfValues:unsignedIntegerValue * count * unsignedIntegerValue2 * v32 dataType:268435488];
  if (nameCopy)
  {
    [nameCopy stringByAppendingString:@"/weightsVariable"];
  }

  else
  {
    [@"conv2DLayer" stringByAppendingString:@"/weightsVariable"];
  }
  v38 = ;
  v76 = [(MPSGraph *)self variableWithData:v37 shape:v68 dataType:268435488 name:v38];

  traininableHighLevelOpVariables = self->_traininableHighLevelOpVariables;
  operation = [v76 operation];
  [(NSMutableArray *)traininableHighLevelOpVariables addObject:operation];

  v41 = [stridesCopy objectAtIndexedSubscript:1];
  integerValue = [v41 integerValue];
  v43 = [stridesCopy objectAtIndexedSubscript:0];
  integerValue2 = [v43 integerValue];
  v45 = [ratesCopy objectAtIndexedSubscript:1];
  integerValue3 = [v45 integerValue];
  v47 = [ratesCopy objectAtIndexedSubscript:0];
  v48 = +[MPSGraphConvolution2DOpDescriptor descriptorWithStrideInX:strideInY:dilationRateInX:dilationRateInY:groups:paddingStyle:dataLayout:weightsLayout:](MPSGraphConvolution2DOpDescriptor, "descriptorWithStrideInX:strideInY:dilationRateInX:dilationRateInY:groups:paddingStyle:dataLayout:weightsLayout:", integerValue, integerValue2, integerValue3, [v47 integerValue], groups, style, layout, weightsLayout);

  if (nameCopy)
  {
    [nameCopy stringByAppendingString:@"/conv2D"];
  }

  else
  {
    [@"conv2DLayer" stringByAppendingString:@"/conv2D"];
  }
  v49 = ;
  v50 = [(MPSGraph *)self convolution2DWithSourceTensor:tensorCopy weightsTensor:v76 descriptor:v48 name:v49];

  v51 = v50;
  v52 = v51;
  if (biasesInitializerCopy)
  {
    v53 = [biasesInitializerCopy initializedDataWithNumberOfValues:count dataType:268435488];
    v54 = [MEMORY[0x1E696AD98] numberWithInteger:count];
    v81 = v54;
    v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v81 count:1];
    if (nameCopy)
    {
      [nameCopy stringByAppendingString:@"/biasAddVariable"];
    }

    else
    {
      [@"conv2DLayer" stringByAppendingString:@"/biasAddVariable"];
    }
    v56 = ;
    v57 = [(MPSGraph *)self variableWithData:v53 shape:v55 dataType:268435488 name:v56];

    v58 = self->_traininableHighLevelOpVariables;
    operation2 = [v57 operation];
    [(NSMutableArray *)v58 addObject:operation2];

    if (nameCopy)
    {
      [nameCopy stringByAppendingString:@"/biasAdd"];
    }

    else
    {
      [@"conv2DLayer" stringByAppendingString:@"/biasAdd"];
    }
    v60 = ;
    v52 = [(MPSGraph *)self additionWithPrimaryTensor:v51 secondaryTensor:v57 name:v60];
  }

  if (gammaInitializerCopy || betaInitializerCopy || meanInitializerCopy || varianceInitializerCopy)
  {
    v61 = [(MPSGraph *)self batchNormalizationLayerWithTensor:v52 batchNormalizationGammaInitializer:gammaInitializerCopy batchNormalizationBetaInitializer:betaInitializerCopy batchNormalizationMeanInitializer:meanInitializerCopy batchNormalizationVarianceInitializer:varianceInitializerCopy batchNormalizationEpsilon:layout dataLayout:epsilon name:nameCopy];

    v52 = v61;
    if (type != 1)
    {
      goto LABEL_41;
    }

LABEL_37:
    if (nameCopy)
    {
      [nameCopy stringByAppendingString:@"/reLU"];
    }

    else
    {
      [@"conv2DLayer" stringByAppendingString:@"/reLU"];
    }
    v62 = ;
    v63 = [(MPSGraph *)self reLUWithTensor:v52 name:v62];

    v52 = v63;
    goto LABEL_41;
  }

  if (type == 1)
  {
    goto LABEL_37;
  }

LABEL_41:

  return v52;
}

- (id)convolution2DLayerWithTensor:(id)tensor kernelSizes:(id)sizes outputChannelCount:(unint64_t)count strides:(id)strides activationType:(unsigned int)type weightsInitializer:(id)initializer biasesInitializer:(id)biasesInitializer batchNormalizationGammaInitializer:(id)self0 batchNormalizationBetaInitializer:(id)self1 batchNormalizationMeanInitializer:(id)self2 batchNormalizationVarianceInitializer:(id)self3 batchNormalizationEpsilon:(double)self4 paddingStyle:(unint64_t)self5 dataLayout:(unint64_t)self6 weightsLayout:(unint64_t)self7 name:(id)self8
{
  LODWORD(v20) = type;
  v18 = [(MPSGraph *)self convolution2DLayerWithTensor:tensor kernelSizes:sizes outputChannelCount:count strides:strides dilationRates:&unk_1F5B77C90 groups:1 activationType:epsilon weightsInitializer:v20 biasesInitializer:initializer batchNormalizationGammaInitializer:biasesInitializer batchNormalizationBetaInitializer:gammaInitializer batchNormalizationMeanInitializer:betaInitializer batchNormalizationVarianceInitializer:meanInitializer batchNormalizationEpsilon:varianceInitializer paddingStyle:style dataLayout:layout weightsLayout:weightsLayout name:name];

  return v18;
}

- (id)convolution2DWithDefaultBatchNormalizationLayerWithTensor:(id)tensor kernelSizes:(id)sizes outputChannelCount:(unint64_t)count strides:(id)strides activationType:(unsigned int)type weightsInitializer:(id)initializer biasesInitializer:(id)biasesInitializer paddingStyle:(unint64_t)self0 dataLayout:(unint64_t)self1 weightsLayout:(unint64_t)self2 name:(id)self3
{
  tensorCopy = tensor;
  sizesCopy = sizes;
  stridesCopy = strides;
  initializerCopy = initializer;
  biasesInitializerCopy = biasesInitializer;
  nameCopy = name;
  v29 = initializerCopy;
  v21 = +[MPSGraphVariableInitializer initializerWithOnes];
  v28 = +[MPSGraphVariableInitializer initializerWithZeros];
  v22 = +[MPSGraphVariableInitializer initializerWithZeros];
  v23 = +[MPSGraphVariableInitializer initializerWithZeros];
  LODWORD(v26) = type;
  v24 = [(MPSGraph *)self convolution2DLayerWithTensor:tensorCopy kernelSizes:sizesCopy outputChannelCount:count strides:stridesCopy dilationRates:&unk_1F5B77CA8 groups:1 activationType:0.001 weightsInitializer:v26 biasesInitializer:v29 batchNormalizationGammaInitializer:biasesInitializerCopy batchNormalizationBetaInitializer:v21 batchNormalizationMeanInitializer:v28 batchNormalizationVarianceInitializer:v22 batchNormalizationEpsilon:v23 paddingStyle:style dataLayout:layout weightsLayout:weightsLayout name:nameCopy];

  return v24;
}

- (id)convolution2DLayerWithTensor:(id)tensor kernelSizes:(id)sizes outputChannelCount:(unint64_t)count strides:(id)strides activationType:(unsigned int)type weightsInitializer:(id)initializer biasesInitializer:(id)biasesInitializer paddingStyle:(unint64_t)self0 dataLayout:(unint64_t)self1 weightsLayout:(unint64_t)self2 name:(id)self3
{
  LODWORD(v15) = type;
  v13 = [(MPSGraph *)self convolution2DLayerWithTensor:tensor kernelSizes:sizes outputChannelCount:count strides:strides dilationRates:&unk_1F5B77CC0 groups:1 activationType:0.001 weightsInitializer:v15 biasesInitializer:initializer batchNormalizationGammaInitializer:biasesInitializer batchNormalizationBetaInitializer:0 batchNormalizationMeanInitializer:0 batchNormalizationVarianceInitializer:0 batchNormalizationEpsilon:0 paddingStyle:style dataLayout:layout weightsLayout:weightsLayout name:name];

  return v13;
}

- (id)fullyConnectedLayerWithTensor:(id)tensor outputChannelCount:(unint64_t)count activationType:(unsigned int)type weightsInitializer:(id)initializer biasesInitializer:(id)biasesInitializer name:(id)name
{
  v45[2] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  initializerCopy = initializer;
  biasesInitializerCopy = biasesInitializer;
  nameCopy = name;
  shape = [tensorCopy shape];
  v15 = [shape objectAtIndexedSubscript:{objc_msgSend(shape, "count") - 1}];
  unsignedIntegerValue = [v15 unsignedIntegerValue];

  v17 = [MEMORY[0x1E696AD98] numberWithInteger:unsignedIntegerValue];
  v45[0] = v17;
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:count];
  v45[1] = v18;
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];

  v19 = [initializerCopy initializedDataWithNumberOfValues:unsignedIntegerValue * count dataType:268435488];
  if (nameCopy)
  {
    [nameCopy stringByAppendingString:@"/weightsVariable"];
  }

  else
  {
    [@"fullyConnectedLayer" stringByAppendingString:@"/weightsVariable"];
  }
  v20 = ;
  v21 = [(MPSGraph *)self variableWithData:v19 shape:v41 dataType:268435488 name:v20];

  traininableHighLevelOpVariables = self->_traininableHighLevelOpVariables;
  operation = [v21 operation];
  [(NSMutableArray *)traininableHighLevelOpVariables addObject:operation];

  if (nameCopy)
  {
    [nameCopy stringByAppendingString:@"/matMul"];
  }

  else
  {
    [@"fullyConnectedLayer" stringByAppendingString:@"/matMul"];
  }
  v24 = ;
  v25 = [(MPSGraph *)self matrixMultiplicationWithPrimaryTensor:tensorCopy secondaryTensor:v21 name:v24];

  v26 = v25;
  v27 = v26;
  if (biasesInitializerCopy)
  {
    v28 = [biasesInitializerCopy initializedDataWithNumberOfValues:count dataType:268435488];
    v29 = [MEMORY[0x1E696AD98] numberWithInteger:count];
    v44 = v29;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
    if (nameCopy)
    {
      [nameCopy stringByAppendingString:@"/biasAddVariable"];
    }

    else
    {
      [@"fullyConnectedLayer" stringByAppendingString:@"/biasAddVariable"];
    }
    v31 = ;
    v32 = [(MPSGraph *)self variableWithData:v28 shape:v30 dataType:268435488 name:v31];

    v33 = self->_traininableHighLevelOpVariables;
    operation2 = [v32 operation];
    [(NSMutableArray *)v33 addObject:operation2];

    if (nameCopy)
    {
      [nameCopy stringByAppendingString:@"/biasAdd"];
    }

    else
    {
      [@"fullyConnectedLayer" stringByAppendingString:@"/biasAdd"];
    }
    v35 = ;
    v27 = [(MPSGraph *)self additionWithPrimaryTensor:v26 secondaryTensor:v32 name:v35];
  }

  if (type == 1)
  {
    if (nameCopy)
    {
      [nameCopy stringByAppendingString:@"/reLU"];
    }

    else
    {
      [@"fullyConnectedLayer" stringByAppendingString:@"/reLU"];
    }
    v36 = ;
    v37 = [(MPSGraph *)self reLUWithTensor:v27 name:v36];

    v27 = v37;
  }

  return v27;
}

- (id)maxPooling2DLayerWithTensor:(id)tensor kernelSizes:(id)sizes strides:(id)strides paddingStyle:(unint64_t)style dataLayout:(unint64_t)layout name:(id)name
{
  tensorCopy = tensor;
  sizesCopy = sizes;
  stridesCopy = strides;
  nameCopy = name;
  v13 = [sizesCopy objectAtIndexedSubscript:1];
  integerValue = [v13 integerValue];
  v15 = [sizesCopy objectAtIndexedSubscript:0];
  integerValue2 = [v15 integerValue];
  v17 = [stridesCopy objectAtIndexedSubscript:1];
  integerValue3 = [v17 integerValue];
  v19 = [stridesCopy objectAtIndexedSubscript:0];
  v20 = +[MPSGraphPooling2DOpDescriptor descriptorWithKernelWidth:kernelHeight:strideInX:strideInY:paddingStyle:dataLayout:](MPSGraphPooling2DOpDescriptor, "descriptorWithKernelWidth:kernelHeight:strideInX:strideInY:paddingStyle:dataLayout:", integerValue, integerValue2, integerValue3, [v19 integerValue], style, layout);

  v21 = [(MPSGraph *)self maxPooling2DWithSourceTensor:tensorCopy descriptor:v20 name:nameCopy];

  return v21;
}

- (id)avgPooling2DLayerWithTensor:(id)tensor kernelSizes:(id)sizes strides:(id)strides paddingStyle:(unint64_t)style dataLayout:(unint64_t)layout name:(id)name
{
  tensorCopy = tensor;
  sizesCopy = sizes;
  stridesCopy = strides;
  nameCopy = name;
  v13 = [sizesCopy objectAtIndexedSubscript:1];
  integerValue = [v13 integerValue];
  v15 = [sizesCopy objectAtIndexedSubscript:0];
  integerValue2 = [v15 integerValue];
  v17 = [stridesCopy objectAtIndexedSubscript:1];
  integerValue3 = [v17 integerValue];
  v19 = [stridesCopy objectAtIndexedSubscript:0];
  v20 = +[MPSGraphPooling2DOpDescriptor descriptorWithKernelWidth:kernelHeight:strideInX:strideInY:paddingStyle:dataLayout:](MPSGraphPooling2DOpDescriptor, "descriptorWithKernelWidth:kernelHeight:strideInX:strideInY:paddingStyle:dataLayout:", integerValue, integerValue2, integerValue3, [v19 integerValue], style, layout);

  v21 = [(MPSGraph *)self avgPooling2DWithSourceTensor:tensorCopy descriptor:v20 name:nameCopy];

  return v21;
}

- (id)absoluteErrorWithPrimaryTensor:(id)tensor secondaryTensor:(id)secondaryTensor reductionType:(unint64_t)type name:(id)name
{
  tensorCopy = tensor;
  secondaryTensorCopy = secondaryTensor;
  nameCopy = @"absoluteError";
  if (name)
  {
    nameCopy = name;
  }

  v13 = nameCopy;
  v14 = [(__CFString *)v13 stringByAppendingString:@"/subtraction"];
  v15 = [(MPSGraph *)self subtractionWithPrimaryTensor:tensorCopy secondaryTensor:secondaryTensorCopy name:v14];

  v16 = [(__CFString *)v13 stringByAppendingString:@"/absolute"];
  v17 = [(MPSGraph *)self absoluteWithTensor:v15 name:v16];

  v18 = [(MPSGraph *)self lossReductionWithTensor:v17 reductionType:type axis:0 name:v13];

  return v18;
}

- (id)squaredErrorWithPrimaryTensor:(id)tensor secondaryTensor:(id)secondaryTensor reductionType:(unint64_t)type name:(id)name
{
  tensorCopy = tensor;
  secondaryTensorCopy = secondaryTensor;
  nameCopy = @"squaredError";
  if (name)
  {
    nameCopy = name;
  }

  v13 = nameCopy;
  v14 = [(__CFString *)v13 stringByAppendingString:@"/subtraction"];
  v15 = [(MPSGraph *)self subtractionWithPrimaryTensor:tensorCopy secondaryTensor:secondaryTensorCopy name:v14];

  v16 = [(__CFString *)v13 stringByAppendingString:@"/square"];
  v17 = [(MPSGraph *)self squareWithTensor:v15 name:v16];

  v18 = v17;
  v19 = v18;
  if (!type)
  {
    v20 = -[MPSGraph constantWithScalar:dataType:](self, "constantWithScalar:dataType:", [tensorCopy dataType], 0.5);
    v21 = [(__CFString *)v13 stringByAppendingString:@"/mul"];
    v19 = [(MPSGraph *)self multiplicationWithPrimaryTensor:v18 secondaryTensor:v20 name:v21];
  }

  v22 = [(MPSGraph *)self lossReductionWithTensor:v19 reductionType:type axis:0 name:v13];

  return v22;
}

- (id)kernelPredictorWithSourceTensor:(id)tensor weightsTensor:(id)weightsTensor layout:(unint64_t)layout kernelShape:(id)shape name:(id)name
{
  v7 = [(MPSGraph *)self kernelPredictorWithSourceTensor:tensor weightsTensor:weightsTensor layout:layout kernelShape:shape dilationRates:&unk_1F5B77CD8 name:name];

  return v7;
}

- (id)kernelPredictorWithSourceTensor:(id)tensor weightsTensor:(id)weightsTensor layout:(unint64_t)layout kernelShape:(id)shape dilationRates:(id)rates name:(id)name
{
  tensorCopy = tensor;
  weightsTensorCopy = weightsTensor;
  shapeCopy = shape;
  ratesCopy = rates;
  nameCopy = @"kernelPredictor";
  if (name)
  {
    nameCopy = name;
  }

  v19 = nameCopy;
  v20 = [ratesCopy objectAtIndexedSubscript:0];
  integerValue = [v20 integerValue];
  v22 = [ratesCopy objectAtIndexedSubscript:1];
  v23 = -[MPSGraph localConvolutionWithSourceTensor:weightTensor:dataLayout:kernelShape:dilationRateInX:dilationRateInY:name:](self, "localConvolutionWithSourceTensor:weightTensor:dataLayout:kernelShape:dilationRateInX:dilationRateInY:name:", tensorCopy, weightsTensorCopy, layout, shapeCopy, integerValue, [v22 integerValue], v19);

  return v23;
}

- (id)stitchedOpsWithBlock:(id)block name:(id)name
{
  blockCopy = block;
  nameCopy = name;
  v8 = [MPSGraphStitchedOp alloc];
  v9 = [(MPSGraphStitchedOp *)v8 initWithGraph:self withBlock:blockCopy inputTensors:MEMORY[0x1E695E0F0] controlDependencies:MEMORY[0x1E695E0F0] name:nameCopy];
  outputTensors = [(MPSGraphOperation *)v9 outputTensors];
  v11 = [outputTensors objectAtIndexedSubscript:0];

  return v11;
}

- (id)varFromTensorWithTensor:(id)tensor name:(id)name
{
  tensorCopy = tensor;
  nameCopy = name;
  v8 = [[MPSGraphVariableFromTensorOp alloc] initWithGraph:self tensor:tensorCopy name:nameCopy];
  outputTensors = [(MPSGraphOperation *)v8 outputTensors];
  v10 = [outputTensors objectAtIndexedSubscript:0];
  [v10 value];

  outputTensors2 = [(MPSGraphOperation *)v8 outputTensors];
  v12 = [outputTensors2 objectAtIndexedSubscript:0];

  return v12;
}

- (MPSGraphTensor)matrixMultiplicationWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor name:(NSString *)name
{
  v17[2] = *MEMORY[0x1E69E9840];
  v8 = primaryTensor;
  v9 = secondaryTensor;
  v10 = name;
  v11 = [MPSGraphMatrixMultiplicationOp alloc];
  v17[0] = v8;
  v17[1] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v13 = [(MPSGraphOperation *)v11 initWithGraph:self inputTensors:v12 controlDependencies:MEMORY[0x1E695E0F0] name:v10];

  outputTensors = [(MPSGraphOperation *)v13 outputTensors];
  v15 = [outputTensors objectAtIndexedSubscript:0];

  return v15;
}

- (id)matrixMultiplicationPrimaryGradientWithIncomingGradientTensor:(id)tensor primaryTensor:(id)primaryTensor secondaryTensor:(id)secondaryTensor name:(id)name
{
  tensorCopy = tensor;
  primaryTensorCopy = primaryTensor;
  secondaryTensorCopy = secondaryTensor;
  nameCopy = name;
  v14 = nameCopy;
  if (nameCopy)
  {
    v15 = [nameCopy stringByAppendingString:@"/transpose"];
  }

  else
  {
    v15 = @"matMulGrad/transpose";
  }

  v16 = [(MPSGraph *)self transposeTensor:secondaryTensorCopy dimension:-1 withDimension:-2 name:v15];
  if (v14)
  {
  }

  v17 = [(MPSGraph *)self matrixMultiplicationWithPrimaryTensor:tensorCopy secondaryTensor:v16 name:v14];

  return v17;
}

- (id)matrixMultiplicationSecondaryGradientWithIncomingGradientTensor:(id)tensor primaryTensor:(id)primaryTensor secondaryTensor:(id)secondaryTensor name:(id)name
{
  tensorCopy = tensor;
  primaryTensorCopy = primaryTensor;
  secondaryTensorCopy = secondaryTensor;
  nameCopy = name;
  v14 = nameCopy;
  if (nameCopy)
  {
    v15 = [nameCopy stringByAppendingString:@"/transpose"];
  }

  else
  {
    v15 = @"matMulGrad/transpose";
  }

  v16 = [(MPSGraph *)self transposeTensor:primaryTensorCopy dimension:-1 withDimension:-2 name:v15];
  if (v14)
  {
  }

  v17 = [(MPSGraph *)self matrixMultiplicationWithPrimaryTensor:v16 secondaryTensor:tensorCopy name:v14];

  return v17;
}

- (MPSGraphTensor)HammingDistanceWithPrimaryTensor:(MPSGraphTensor *)primaryTensor secondaryTensor:(MPSGraphTensor *)secondaryTensor resultDataType:(MPSDataType)resultDataType name:(NSString *)name
{
  v7 = *&resultDataType;
  v19[2] = *MEMORY[0x1E69E9840];
  v10 = primaryTensor;
  v11 = secondaryTensor;
  v12 = name;
  v13 = [MPSGraphHammingDistanceOp alloc];
  v19[0] = v10;
  v19[1] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v15 = [(MPSGraphHammingDistanceOp *)v13 initWithGraph:self inputTensors:v14 controlDependencies:MEMORY[0x1E695E0F0] resultDataType:v7 name:v12];

  outputTensors = [(MPSGraphOperation *)v15 outputTensors];
  v17 = [outputTensors objectAtIndexedSubscript:0];

  return v17;
}

- (id)scaledDotProductAttentionWithQueryTensor:(id)tensor keyTensor:(id)keyTensor valueTensor:(id)valueTensor maskTensor:(id)maskTensor scale:(float)scale name:(id)name
{
  v28[5] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  keyTensorCopy = keyTensor;
  valueTensorCopy = valueTensor;
  maskTensorCopy = maskTensor;
  nameCopy = name;
  v19 = maskTensorCopy;
  v20 = v19;
  if (!v19)
  {
    v20 = -[MPSGraph constantWithScalar:shape:dataType:](self, "constantWithScalar:shape:dataType:", &unk_1F5B77DB0, [tensorCopy dataType], 0.0);
  }

  v21 = -[MPSGraph constantWithScalar:dataType:](self, "constantWithScalar:dataType:", [tensorCopy dataType], scale);
  v22 = [MPSGraphScaledDotProductAttentionOp alloc];
  v28[0] = tensorCopy;
  v28[1] = keyTensorCopy;
  v28[2] = valueTensorCopy;
  v28[3] = v20;
  v28[4] = v21;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:5];
  v24 = [(MPSGraphOperation *)v22 initWithGraph:self inputTensors:v23 controlDependencies:MEMORY[0x1E695E0F0] name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v24 outputTensors];
  v26 = [outputTensors objectAtIndexedSubscript:0];

  return v26;
}

- (id)scaledDotProductAttentionWithQueryTensor:(id)tensor keyTensor:(id)keyTensor valueTensor:(id)valueTensor scale:(float)scale name:(id)name
{
  v7 = [(MPSGraph *)self scaledDotProductAttentionWithQueryTensor:tensor keyTensor:keyTensor valueTensor:valueTensor maskTensor:0 scale:name name:?];

  return v7;
}

- (MPSGraphTensor)quantizeTensor:(MPSGraphTensor *)tensor scale:(double)scale zeroPoint:(double)zeroPoint dataType:(MPSDataType)dataType name:(NSString *)name
{
  v8 = *&dataType;
  v22[3] = *MEMORY[0x1E69E9840];
  v12 = tensor;
  v13 = name;
  v14 = [(MPSGraph *)self constantWithScalar:268435488 dataType:scale];
  v15 = [(MPSGraph *)self constantWithScalar:536870920 dataType:zeroPoint];
  v16 = [MPSGraphQuantizeOp alloc];
  v22[0] = v12;
  v22[1] = v14;
  v22[2] = v15;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
  v18 = [(MPSGraphQuantizeOp *)v16 initWithGraph:self inputTensors:v17 controlDependencies:MEMORY[0x1E695E0F0] dataType:v8 axis:0 name:v13];

  outputTensors = [(MPSGraphOperation *)v18 outputTensors];
  v20 = [outputTensors objectAtIndexedSubscript:0];

  return v20;
}

- (MPSGraphTensor)dequantizeTensor:(MPSGraphTensor *)tensor scale:(double)scale zeroPoint:(double)zeroPoint dataType:(MPSDataType)dataType name:(NSString *)name
{
  v8 = *&dataType;
  v22[3] = *MEMORY[0x1E69E9840];
  v12 = tensor;
  v13 = name;
  v14 = [(MPSGraph *)self constantWithScalar:268435488 dataType:scale];
  v15 = [(MPSGraph *)self constantWithScalar:536870944 dataType:zeroPoint];
  v16 = [MPSGraphDequantizeOp alloc];
  v22[0] = v12;
  v22[1] = v14;
  v22[2] = v15;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
  v18 = [(MPSGraphDequantizeOp *)v16 initWithGraph:self inputTensors:v17 controlDependencies:MEMORY[0x1E695E0F0] dataType:v8 axis:0 name:v13];

  outputTensors = [(MPSGraphOperation *)v18 outputTensors];
  v20 = [outputTensors objectAtIndexedSubscript:0];

  return v20;
}

- (MPSGraphTensor)quantizeTensor:(MPSGraphTensor *)tensor scaleTensor:(MPSGraphTensor *)scaleTensor zeroPoint:(double)zeroPoint dataType:(MPSDataType)dataType axis:(NSInteger)axis name:(NSString *)name
{
  v9 = *&dataType;
  v13 = tensor;
  v14 = scaleTensor;
  v15 = [(MPSGraph *)self constantWithScalar:536870920 dataType:zeroPoint];
  v16 = [(MPSGraph *)self quantizeTensor:v13 scaleTensor:v14 zeroPointTensor:v15 dataType:v9 axis:axis name:0];

  return v16;
}

- (MPSGraphTensor)dequantizeTensor:(MPSGraphTensor *)tensor scaleTensor:(MPSGraphTensor *)scaleTensor zeroPoint:(double)zeroPoint dataType:(MPSDataType)dataType axis:(NSInteger)axis name:(NSString *)name
{
  v9 = *&dataType;
  v13 = tensor;
  v14 = scaleTensor;
  v15 = [(MPSGraph *)self constantWithScalar:536870944 dataType:zeroPoint];
  v16 = [(MPSGraph *)self dequantizeTensor:v13 scaleTensor:v14 zeroPointTensor:v15 dataType:v9 axis:axis name:0];

  return v16;
}

- (MPSGraphTensor)quantizeTensor:(MPSGraphTensor *)tensor scaleTensor:(MPSGraphTensor *)scaleTensor zeroPointTensor:(MPSGraphTensor *)zeroPointTensor dataType:(MPSDataType)dataType axis:(NSInteger)axis name:(NSString *)name
{
  v10 = *&dataType;
  v25[3] = *MEMORY[0x1E69E9840];
  v14 = tensor;
  v15 = scaleTensor;
  v16 = zeroPointTensor;
  v17 = name;
  v18 = [MPSGraphQuantizeOp alloc];
  v25[0] = v14;
  v25[1] = v15;
  v25[2] = v16;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:3];
  v20 = [MEMORY[0x1E696AD98] numberWithInteger:axis];
  v21 = [(MPSGraphQuantizeOp *)v18 initWithGraph:self inputTensors:v19 controlDependencies:MEMORY[0x1E695E0F0] dataType:v10 axis:v20 name:v17];

  outputTensors = [(MPSGraphOperation *)v21 outputTensors];
  v23 = [outputTensors objectAtIndexedSubscript:0];

  return v23;
}

- (MPSGraphTensor)dequantizeTensor:(MPSGraphTensor *)tensor scaleTensor:(MPSGraphTensor *)scaleTensor zeroPointTensor:(MPSGraphTensor *)zeroPointTensor dataType:(MPSDataType)dataType axis:(NSInteger)axis name:(NSString *)name
{
  v10 = *&dataType;
  v25[3] = *MEMORY[0x1E69E9840];
  v14 = tensor;
  v15 = scaleTensor;
  v16 = zeroPointTensor;
  v17 = name;
  v18 = [MPSGraphDequantizeOp alloc];
  v25[0] = v14;
  v25[1] = v15;
  v25[2] = v16;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:3];
  v20 = [MEMORY[0x1E696AD98] numberWithInteger:axis];
  v21 = [(MPSGraphDequantizeOp *)v18 initWithGraph:self inputTensors:v19 controlDependencies:MEMORY[0x1E695E0F0] dataType:v10 axis:v20 name:v17];

  outputTensors = [(MPSGraphOperation *)v21 outputTensors];
  v23 = [outputTensors objectAtIndexedSubscript:0];

  return v23;
}

- (id)dequantizeTensor:(id)tensor scaleTensor:(id)scaleTensor zeroPointTensor:(id)pointTensor minTensor:(id)minTensor dataType:(unsigned int)type axis:(int64_t)axis name:(id)name
{
  v10 = *&type;
  v27[4] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  scaleTensorCopy = scaleTensor;
  pointTensorCopy = pointTensor;
  minTensorCopy = minTensor;
  nameCopy = name;
  v20 = [MPSGraphDequantizeOp alloc];
  v27[0] = tensorCopy;
  v27[1] = scaleTensorCopy;
  v27[2] = pointTensorCopy;
  v27[3] = minTensorCopy;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
  v22 = [MEMORY[0x1E696AD98] numberWithInteger:axis];
  v23 = [(MPSGraphDequantizeOp *)v20 initWithGraph:self inputTensors:v21 controlDependencies:MEMORY[0x1E695E0F0] dataType:v10 axis:v22 name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v23 outputTensors];
  v25 = [outputTensors objectAtIndexedSubscript:0];

  return v25;
}

- (id)dequantizeTensor:(id)tensor scaleTensor:(id)scaleTensor zeroPointTensor:(id)pointTensor minTensor:(id)minTensor dataType:(unsigned int)type name:(id)name
{
  v9 = *&type;
  v25[4] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  scaleTensorCopy = scaleTensor;
  pointTensorCopy = pointTensor;
  minTensorCopy = minTensor;
  nameCopy = name;
  v19 = [MPSGraphDequantizeOp alloc];
  v25[0] = tensorCopy;
  v25[1] = scaleTensorCopy;
  v25[2] = pointTensorCopy;
  v25[3] = minTensorCopy;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
  v21 = [(MPSGraphDequantizeOp *)v19 initWithGraph:self inputTensors:v20 controlDependencies:MEMORY[0x1E695E0F0] dataType:v9 axis:0 name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v21 outputTensors];
  v23 = [outputTensors objectAtIndexedSubscript:0];

  return v23;
}

- (id)quantizeTensor:(id)tensor scale:(double)scale zeroPoint:(double)point dtype:(unsigned int)dtype name:(id)name
{
  v7 = [(MPSGraph *)self quantizeTensor:tensor scale:*&dtype zeroPoint:name dataType:scale name:point];

  return v7;
}

- (id)dequantizeTensor:(id)tensor scale:(double)scale zeroPoint:(double)point dtype:(unsigned int)dtype name:(id)name
{
  v7 = [(MPSGraph *)self dequantizeTensor:tensor scale:*&dtype zeroPoint:name dataType:scale name:point];

  return v7;
}

- (id)quantizeTensor:(id)tensor scaleTensor:(id)scaleTensor zeroPoint:(double)point dtype:(unsigned int)dtype axis:(int)axis name:(id)name
{
  v8 = [(MPSGraph *)self quantizeTensor:tensor scaleTensor:scaleTensor zeroPoint:*&dtype dataType:axis axis:name name:point];

  return v8;
}

- (id)dequantizeTensor:(id)tensor scaleTensor:(id)scaleTensor zeroPoint:(double)point dtype:(unsigned int)dtype axis:(int)axis name:(id)name
{
  v8 = [(MPSGraph *)self dequantizeTensor:tensor scaleTensor:scaleTensor zeroPoint:*&dtype dataType:axis axis:name name:point];

  return v8;
}

- (id)quantizeTensor:(id)tensor scaleTensor:(id)scaleTensor zeroPointTensor:(id)pointTensor dtype:(unsigned int)dtype axis:(int)axis name:(id)name
{
  v8 = [(MPSGraph *)self quantizeTensor:tensor scaleTensor:scaleTensor zeroPointTensor:pointTensor dataType:*&dtype axis:axis name:name];

  return v8;
}

- (id)dequantizeTensor:(id)tensor scaleTensor:(id)scaleTensor zeroPointTensor:(id)pointTensor dtype:(unsigned int)dtype axis:(int)axis name:(id)name
{
  v8 = [(MPSGraph *)self dequantizeTensor:tensor scaleTensor:scaleTensor zeroPointTensor:pointTensor dataType:*&dtype axis:axis name:name];

  return v8;
}

- (id)dequantizeTensor:(id)tensor LUTTensor:(id)tTensor name:(id)name
{
  v5 = [(MPSGraph *)self dequantizeTensor:tensor lutTableTensor:tTensor name:name];

  return v5;
}

- (id)dequantizeTensor:(id)tensor LUTTensor:(id)tTensor axis:(int64_t)axis name:(id)name
{
  v6 = [(MPSGraph *)self dequantizeTensor:tensor lutTableTensor:tTensor axis:axis name:name];

  return v6;
}

- (id)dequantizeTensor:(id)tensor scaleTensor:(id)scaleTensor zeroPointTensor:(id)pointTensor dataType:(unsigned int)type name:(id)name
{
  v8 = *&type;
  v22[3] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  scaleTensorCopy = scaleTensor;
  pointTensorCopy = pointTensor;
  nameCopy = name;
  v16 = [MPSGraphDequantizeOp alloc];
  v22[0] = tensorCopy;
  v22[1] = scaleTensorCopy;
  v22[2] = pointTensorCopy;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
  v18 = [(MPSGraphDequantizeOp *)v16 initWithGraph:self inputTensors:v17 controlDependencies:MEMORY[0x1E695E0F0] dataType:v8 axis:0 name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v18 outputTensors];
  v20 = [outputTensors objectAtIndexedSubscript:0];

  return v20;
}

- (id)dequantizeTensor:(id)tensor scaleTensor:(id)scaleTensor dataType:(unsigned int)type name:(id)name
{
  v7 = *&type;
  v20[3] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  scaleTensorCopy = scaleTensor;
  nameCopy = name;
  v13 = [(MPSGraph *)self constantWithScalar:536870920 dataType:0.0];
  v14 = [MPSGraphDequantizeOp alloc];
  v20[0] = tensorCopy;
  v20[1] = scaleTensorCopy;
  v20[2] = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
  v16 = [(MPSGraphDequantizeOp *)v14 initWithGraph:self inputTensors:v15 controlDependencies:MEMORY[0x1E695E0F0] dataType:v7 axis:0 name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v16 outputTensors];
  v18 = [outputTensors objectAtIndexedSubscript:0];

  return v18;
}

- (id)dequantizeTensor:(id)tensor lutTableTensor:(id)tableTensor name:(id)name
{
  v17[2] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  tableTensorCopy = tableTensor;
  nameCopy = name;
  v11 = [MPSGraphDequantizeLUTOp alloc];
  v17[0] = tensorCopy;
  v17[1] = tableTensorCopy;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v13 = [(MPSGraphDequantizeLUTOp *)v11 initWithGraph:self inputTensors:v12 controlDependencies:MEMORY[0x1E695E0F0] axis:0 name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v13 outputTensors];
  v15 = [outputTensors objectAtIndexedSubscript:0];

  return v15;
}

- (id)dequantizeTensor:(id)tensor lutTableTensor:(id)tableTensor axis:(int64_t)axis name:(id)name
{
  v20[2] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  tableTensorCopy = tableTensor;
  nameCopy = name;
  v13 = [MPSGraphDequantizeLUTOp alloc];
  v20[0] = tensorCopy;
  v20[1] = tableTensorCopy;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:axis];
  v16 = [(MPSGraphDequantizeLUTOp *)v13 initWithGraph:self inputTensors:v14 controlDependencies:MEMORY[0x1E695E0F0] axis:v15 name:nameCopy];

  outputTensors = [(MPSGraphOperation *)v16 outputTensors];
  v18 = [outputTensors objectAtIndexedSubscript:0];

  return v18;
}

@end