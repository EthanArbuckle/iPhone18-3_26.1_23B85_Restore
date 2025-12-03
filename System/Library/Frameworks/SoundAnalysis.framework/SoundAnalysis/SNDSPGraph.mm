@interface SNDSPGraph
- (BOOL)preflight:(int64_t)preflight outputFrameCount:(int64_t *)count error:(id *)error;
- (BOOL)processInputBufferList:(AudioBufferList *)list inputFrameCount:(unsigned int)count atSourcePosition:(int64_t)position to:(AudioBufferList *)to outputFrameCapacity:(unsigned int)capacity outputFrameCount:(unsigned int *)frameCount atDestinationPosition:(int64_t *)destinationPosition error:(id *)self0;
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

- (BOOL)preflight:(int64_t)preflight outputFrameCount:(int64_t *)count error:(id *)error
{
  if (DSPGraph::Graph::numInputs(self->_graph.__ptr_) >= 2)
  {
    __assert_rtn("[SNDSPGraph preflight:outputFrameCount:error:]", "SNDSPGraph.mm", 271, "_graph->numInputs() <= 1");
  }

  if (DSPGraph::Graph::numOutputs(self->_graph.__ptr_) >= 2)
  {
    __assert_rtn("[SNDSPGraph preflight:outputFrameCount:error:]", "SNDSPGraph.mm", 272, "_graph->numOutputs() <= 1");
  }

  if (!count)
  {
    __assert_rtn("[SNDSPGraph preflight:outputFrameCount:error:]", "SNDSPGraph.mm", 273, "outputFrameCount");
  }

  DSPGraph::Graph::preflight();
  *count = 0;
  return 1;
}

- (BOOL)processInputBufferList:(AudioBufferList *)list inputFrameCount:(unsigned int)count atSourcePosition:(int64_t)position to:(AudioBufferList *)to outputFrameCapacity:(unsigned int)capacity outputFrameCount:(unsigned int *)frameCount atDestinationPosition:(int64_t *)destinationPosition error:(id *)self0
{
  if (DSPGraph::Graph::numInputs(self->_graph.__ptr_) >= 2)
  {
    __assert_rtn("[SNDSPGraph processInputBufferList:inputFrameCount:atSourcePosition:to:outputFrameCapacity:outputFrameCount:atDestinationPosition:error:]", "SNDSPGraph.mm", 317, "_graph->numInputs() <= 1");
  }

  if (DSPGraph::Graph::numOutputs(self->_graph.__ptr_) >= 2)
  {
    __assert_rtn("[SNDSPGraph processInputBufferList:inputFrameCount:atSourcePosition:to:outputFrameCapacity:outputFrameCount:atDestinationPosition:error:]", "SNDSPGraph.mm", 318, "_graph->numOutputs() <= 1");
  }

  if (!destinationPosition)
  {
    __assert_rtn("[SNDSPGraph processInputBufferList:inputFrameCount:atSourcePosition:to:outputFrameCapacity:outputFrameCount:atDestinationPosition:error:]", "SNDSPGraph.mm", 319, "destinationFramePosition");
  }

  DSPGraph::Graph::processMultiple();
  *frameCount = capacity;
  *destinationPosition = 0.0;
  return 1;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end