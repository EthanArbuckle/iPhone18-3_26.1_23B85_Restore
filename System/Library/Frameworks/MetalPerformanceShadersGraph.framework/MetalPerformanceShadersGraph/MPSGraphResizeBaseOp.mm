@interface MPSGraphResizeBaseOp
- (MPSGraphResizeBaseOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 mode:(unint64_t)a6 nearestRoundingMode:(unint64_t)a7 centerResult:(BOOL)a8 alignCorners:(BOOL)a9 layout:(unint64_t)a10 name:(id)a11;
- (MPSGraphResizeBaseOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 mode:(unint64_t)a6 nearestRoundingMode:(unint64_t)a7 centerResult:(BOOL)a8 alignCorners:(BOOL)a9 name:(id)a10;
@end

@implementation MPSGraphResizeBaseOp

- (MPSGraphResizeBaseOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 mode:(unint64_t)a6 nearestRoundingMode:(unint64_t)a7 centerResult:(BOOL)a8 alignCorners:(BOOL)a9 layout:(unint64_t)a10 name:(id)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a11;
  v20 = [v17 objectAtIndexedSubscript:0];
  v21 = validateLayout(v20, a10, supportedLayouts, 5);

  if (!v21 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  self->_mode = a6;
  self->_nearestRoundingMode = a7;
  self->_centerResult = a8;
  self->_alignCorners = a9;
  self->_layout = a10;
  v22 = [(MPSGraphOperation *)self initWithGraph:v16 inputTensors:v17 controlDependencies:v18 name:v19];

  return v22;
}

- (MPSGraphResizeBaseOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 mode:(unint64_t)a6 nearestRoundingMode:(unint64_t)a7 centerResult:(BOOL)a8 alignCorners:(BOOL)a9 name:(id)a10
{
  self->_mode = a6;
  self->_nearestRoundingMode = a7;
  self->_centerResult = a8;
  self->_alignCorners = a9;
  return [(MPSGraphOperation *)self initWithGraph:a3 inputTensors:a4 controlDependencies:a5 name:a10];
}

@end