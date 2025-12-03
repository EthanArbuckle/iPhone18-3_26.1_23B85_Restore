@interface MPSGraphLocalConvolutionBase
- (MPSGraphLocalConvolutionBase)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies dataLayout:(unint64_t)layout kernelShape:(id)shape dilationRateInX:(unint64_t)x dilationRateInY:(unint64_t)y name:(id)self0;
@end

@implementation MPSGraphLocalConvolutionBase

- (MPSGraphLocalConvolutionBase)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies dataLayout:(unint64_t)layout kernelShape:(id)shape dilationRateInX:(unint64_t)x dilationRateInY:(unint64_t)y name:(id)self0
{
  graphCopy = graph;
  tensorsCopy = tensors;
  dependenciesCopy = dependencies;
  shapeCopy = shape;
  nameCopy = name;
  self->_dataLayout = layout;
  v21 = [shapeCopy copy];
  kernelShape = self->_kernelShape;
  self->_kernelShape = v21;

  self->_dilationRateInX = x;
  self->_dilationRateInY = y;
  v23 = [(MPSGraphOperation *)self initWithGraph:graphCopy inputTensors:tensorsCopy controlDependencies:dependenciesCopy name:nameCopy];

  return v23;
}

@end