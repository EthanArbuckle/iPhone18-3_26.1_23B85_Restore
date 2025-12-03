@interface MPSGraphReductionBaseOp
- (MPSGraphReductionBaseOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies axes:(id)axes name:(id)name;
@end

@implementation MPSGraphReductionBaseOp

- (MPSGraphReductionBaseOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies axes:(id)axes name:(id)name
{
  objc_storeStrong(&self->_axes, axes);
  nameCopy = name;
  dependenciesCopy = dependencies;
  tensorsCopy = tensors;
  graphCopy = graph;
  v16 = [(MPSGraphOperation *)self initWithGraph:graphCopy inputTensors:tensorsCopy controlDependencies:dependenciesCopy name:nameCopy];

  return v16;
}

@end