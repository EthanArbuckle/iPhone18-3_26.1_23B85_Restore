@interface MPSGraphCumulativeBaseOp
- (MPSGraphCumulativeBaseOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies exclusive:(BOOL)exclusive reverse:(BOOL)reverse name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphCumulativeBaseOp

- (MPSGraphCumulativeBaseOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies exclusive:(BOOL)exclusive reverse:(BOOL)reverse name:(id)name
{
  self->_exclusive = exclusive;
  self->_reverse = reverse;
  return [(MPSGraphOperation *)self initWithGraph:graph inputTensors:tensors controlDependencies:dependencies name:name];
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  result = name;
  __break(1u);
  return result;
}

@end