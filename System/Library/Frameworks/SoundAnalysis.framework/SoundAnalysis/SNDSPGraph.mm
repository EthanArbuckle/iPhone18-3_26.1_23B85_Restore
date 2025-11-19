@interface SNDSPGraph
- (BOOL)preflight:(int64_t)a3 outputFrameCount:(int64_t *)a4 error:(id *)a5;
- (BOOL)processInputBufferList:(AudioBufferList *)a3 inputFrameCount:(unsigned int)a4 atSourcePosition:(int64_t)a5 to:(AudioBufferList *)a6 outputFrameCapacity:(unsigned int)a7 outputFrameCount:(unsigned int *)a8 atDestinationPosition:(int64_t *)a9 error:(id *)a10;
- (SNDSPGraph)init;
- (id).cxx_construct;
@end

@implementation SNDSPGraph

- (SNDSPGraph)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[SNDSPGraph init]"];
  [v3 raise:*MEMORY[0x1E695D940] format:{@"Do not call %@", v4}];

  return 0;
}

- (BOOL)preflight:(int64_t)a3 outputFrameCount:(int64_t *)a4 error:(id *)a5
{
  if (DSPGraph::Graph::numInputs(self->_graph.__ptr_) >= 2)
  {
    __assert_rtn("[SNDSPGraph preflight:outputFrameCount:error:]", "SNDSPGraph.mm", 271, "_graph->numInputs() <= 1");
  }

  if (DSPGraph::Graph::numOutputs(self->_graph.__ptr_) >= 2)
  {
    __assert_rtn("[SNDSPGraph preflight:outputFrameCount:error:]", "SNDSPGraph.mm", 272, "_graph->numOutputs() <= 1");
  }

  if (!a4)
  {
    __assert_rtn("[SNDSPGraph preflight:outputFrameCount:error:]", "SNDSPGraph.mm", 273, "outputFrameCount");
  }

  DSPGraph::Graph::preflight();
  *a4 = 0;
  return 1;
}

- (BOOL)processInputBufferList:(AudioBufferList *)a3 inputFrameCount:(unsigned int)a4 atSourcePosition:(int64_t)a5 to:(AudioBufferList *)a6 outputFrameCapacity:(unsigned int)a7 outputFrameCount:(unsigned int *)a8 atDestinationPosition:(int64_t *)a9 error:(id *)a10
{
  if (DSPGraph::Graph::numInputs(self->_graph.__ptr_) >= 2)
  {
    __assert_rtn("[SNDSPGraph processInputBufferList:inputFrameCount:atSourcePosition:to:outputFrameCapacity:outputFrameCount:atDestinationPosition:error:]", "SNDSPGraph.mm", 317, "_graph->numInputs() <= 1");
  }

  if (DSPGraph::Graph::numOutputs(self->_graph.__ptr_) >= 2)
  {
    __assert_rtn("[SNDSPGraph processInputBufferList:inputFrameCount:atSourcePosition:to:outputFrameCapacity:outputFrameCount:atDestinationPosition:error:]", "SNDSPGraph.mm", 318, "_graph->numOutputs() <= 1");
  }

  if (!a9)
  {
    __assert_rtn("[SNDSPGraph processInputBufferList:inputFrameCount:atSourcePosition:to:outputFrameCapacity:outputFrameCount:atDestinationPosition:error:]", "SNDSPGraph.mm", 319, "destinationFramePosition");
  }

  DSPGraph::Graph::processMultiple();
  *a8 = a7;
  *a9 = 0.0;
  return 1;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end