@interface MPSGraphResizeBaseOp
- (MPSGraphResizeBaseOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies mode:(unint64_t)mode nearestRoundingMode:(unint64_t)roundingMode centerResult:(BOOL)result alignCorners:(BOOL)corners layout:(unint64_t)self0 name:(id)self1;
- (MPSGraphResizeBaseOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies mode:(unint64_t)mode nearestRoundingMode:(unint64_t)roundingMode centerResult:(BOOL)result alignCorners:(BOOL)corners name:(id)self0;
@end

@implementation MPSGraphResizeBaseOp

- (MPSGraphResizeBaseOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies mode:(unint64_t)mode nearestRoundingMode:(unint64_t)roundingMode centerResult:(BOOL)result alignCorners:(BOOL)corners layout:(unint64_t)self0 name:(id)self1
{
  graphCopy = graph;
  tensorsCopy = tensors;
  dependenciesCopy = dependencies;
  nameCopy = name;
  v20 = [tensorsCopy objectAtIndexedSubscript:0];
  v21 = validateLayout(v20, layout, supportedLayouts, 5);

  if (!v21 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  self->_mode = mode;
  self->_nearestRoundingMode = roundingMode;
  self->_centerResult = result;
  self->_alignCorners = corners;
  self->_layout = layout;
  v22 = [(MPSGraphOperation *)self initWithGraph:graphCopy inputTensors:tensorsCopy controlDependencies:dependenciesCopy name:nameCopy];

  return v22;
}

- (MPSGraphResizeBaseOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies mode:(unint64_t)mode nearestRoundingMode:(unint64_t)roundingMode centerResult:(BOOL)result alignCorners:(BOOL)corners name:(id)self0
{
  self->_mode = mode;
  self->_nearestRoundingMode = roundingMode;
  self->_centerResult = result;
  self->_alignCorners = corners;
  return [(MPSGraphOperation *)self initWithGraph:graph inputTensors:tensors controlDependencies:dependencies name:name];
}

@end