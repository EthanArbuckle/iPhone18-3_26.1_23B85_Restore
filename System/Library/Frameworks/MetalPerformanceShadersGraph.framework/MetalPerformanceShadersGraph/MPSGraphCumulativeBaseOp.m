@interface MPSGraphCumulativeBaseOp
- (MPSGraphCumulativeBaseOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 exclusive:(BOOL)a6 reverse:(BOOL)a7 name:(id)a8;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphCumulativeBaseOp

- (MPSGraphCumulativeBaseOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 exclusive:(BOOL)a6 reverse:(BOOL)a7 name:(id)a8
{
  self->_exclusive = a6;
  self->_reverse = a7;
  return [(MPSGraphOperation *)self initWithGraph:a3 inputTensors:a4 controlDependencies:a5 name:a8];
}

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  result = a7;
  __break(1u);
  return result;
}

@end