@interface MPSGraphReductionBaseOp
- (MPSGraphReductionBaseOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 axes:(id)a6 name:(id)a7;
@end

@implementation MPSGraphReductionBaseOp

- (MPSGraphReductionBaseOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 axes:(id)a6 name:(id)a7
{
  objc_storeStrong(&self->_axes, a6);
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(MPSGraphOperation *)self initWithGraph:v15 inputTensors:v14 controlDependencies:v13 name:v12];

  return v16;
}

@end