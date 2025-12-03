@interface ASDDSPGraph
- (ASDDSPGraph)init;
- (ASDDSPGraph)initWithDSPGraph:(shared_ptr<DSPGraph::Graph>)graph;
- (BOOL)configure;
- (BOOL)configured;
- (BOOL)getParameter:(float *)parameter forID:(unsigned int)d;
- (BOOL)getProperty:(void *)property withSize:(unsigned int *)size forID:(unsigned int)d;
- (BOOL)hasParameter:(unsigned int)parameter;
- (BOOL)initialize;
- (BOOL)initialized;
- (BOOL)reset;
- (BOOL)setAUStrip:(id)strip;
- (BOOL)setProperty:(const void *)property withSize:(unsigned int)size forID:(unsigned int)d;
- (BOOL)setPropertyStrip:(id)strip;
- (BOOL)setVariableSliceDuration:(int64_t)duration forSampleRate:(int64_t)rate;
- (BOOL)unconfigure;
- (BOOL)uninitialize;
- (NSSet)boxes;
- (NSSet)inputs;
- (NSSet)outputs;
- (NSString)name;
- (id).cxx_construct;
- (id)boxWithName:(id)name;
- (int64_t)sliceDurationInSamples;
- (shared_ptr<DSPGraph::Graph>)graph;
- (unint64_t)numberOfInputs;
- (unint64_t)numberOfOutputs;
- (void)setName:(id)name;
@end

@implementation ASDDSPGraph

- (ASDDSPGraph)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[ASDDSPGraph init]"];
  [v3 raise:*MEMORY[0x277CBE660] format:{@"Do not call %@", v4}];

  return 0;
}

- (ASDDSPGraph)initWithDSPGraph:(shared_ptr<DSPGraph::Graph>)graph
{
  ptr = graph.__ptr_;
  v11.receiver = self;
  v11.super_class = ASDDSPGraph;
  v5 = [(ASDDSPGraph *)&v11 init:graph.__ptr_];
  if (v5)
  {
    v6 = *ptr;
    if (!*ptr)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v5 file:@"ASDDSPGraph.mm" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"graph"}];

      v6 = *ptr;
    }

    v7 = *(ptr + 1);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v5->_graph.__cntrl_;
    v5->_graph.__ptr_ = v6;
    v5->_graph.__cntrl_ = v7;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }
  }

  return v5;
}

- (BOOL)setVariableSliceDuration:(int64_t)duration forSampleRate:(int64_t)rate
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__ASDDSPGraph_setVariableSliceDuration_forSampleRate___block_invoke;
  v7[3] = &unk_278CE3A80;
  v7[4] = self;
  v7[5] = duration;
  v7[6] = rate;
  v8 = &unk_2853444C8;
  v9 = 0;
  v10 = &v8;
  v4 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v7);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v8);
  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t __54__ASDDSPGraph_setVariableSliceDuration_forSampleRate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 graph];
  }

  else
  {
    v6 = 0;
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  DSPGraph::Graph::setSliceDuration();
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return 1;
}

- (int64_t)sliceDurationInSamples
{
  v9 = *MEMORY[0x277D85DE8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__ASDDSPGraph_sliceDurationInSamples__block_invoke;
  v5[3] = &unk_278CE3AA8;
  v5[4] = self;
  v6 = &unk_285344480;
  v7 = 0;
  v8 = &v6;
  v2 = ASDDSP::exceptionBarrier<unsigned int({block_pointer} {__strong})(void)>(v5);
  std::__function::__value_func<unsigned int ()(void)>::~__value_func[abi:ne200100](&v6);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t __37__ASDDSPGraph_sliceDurationInSamples__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return MEMORY[0x2B0];
  }

  [v1 graph];
  v2 = *(v4 + 688);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v2;
}

- (BOOL)configured
{
  v9 = *MEMORY[0x277D85DE8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __25__ASDDSPGraph_configured__block_invoke;
  v5[3] = &unk_278CE3AD0;
  v5[4] = self;
  v6 = &unk_2853444C8;
  v7 = 0;
  v8 = &v6;
  v2 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v5);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v6);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t __25__ASDDSPGraph_configured__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    [v1 graph];
    v2 = *(v4 + 761);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else
  {
    v2 = MEMORY[0x2F9];
  }

  return v2 & 1;
}

- (BOOL)initialized
{
  v9 = *MEMORY[0x277D85DE8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __26__ASDDSPGraph_initialized__block_invoke;
  v5[3] = &unk_278CE3AD0;
  v5[4] = self;
  v6 = &unk_2853444C8;
  v7 = 0;
  v8 = &v6;
  v2 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v5);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v6);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t __26__ASDDSPGraph_initialized__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    [v1 graph];
    v2 = *(v4 + 762);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else
  {
    v2 = MEMORY[0x2FA];
  }

  return v2 & 1;
}

- (BOOL)configure
{
  v9 = *MEMORY[0x277D85DE8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __24__ASDDSPGraph_configure__block_invoke;
  v5[3] = &unk_278CE3AD0;
  v5[4] = self;
  v6 = &unk_2853444C8;
  v7 = 0;
  v8 = &v6;
  v2 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v5);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v6);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t __24__ASDDSPGraph_configure__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    [v1 graph];
    v1 = v3;
  }

  else
  {
    v4 = 0;
  }

  DSPGraph::Graph::configure(v1);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return 1;
}

- (BOOL)unconfigure
{
  v9 = *MEMORY[0x277D85DE8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __26__ASDDSPGraph_unconfigure__block_invoke;
  v5[3] = &unk_278CE3AD0;
  v5[4] = self;
  v6 = &unk_2853444C8;
  v7 = 0;
  v8 = &v6;
  v2 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v5);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v6);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t __26__ASDDSPGraph_unconfigure__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    [v1 graph];
    v1 = v3;
  }

  else
  {
    v4 = 0;
  }

  DSPGraph::Graph::unconfigure(v1);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return 1;
}

- (BOOL)initialize
{
  v9 = *MEMORY[0x277D85DE8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __25__ASDDSPGraph_initialize__block_invoke;
  v5[3] = &unk_278CE3AD0;
  v5[4] = self;
  v6 = &unk_2853444C8;
  v7 = 0;
  v8 = &v6;
  v2 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v5);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v6);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t __25__ASDDSPGraph_initialize__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    [v1 graph];
    v1 = v3;
  }

  else
  {
    v4 = 0;
  }

  DSPGraph::Graph::initialize(v1);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return 1;
}

- (BOOL)uninitialize
{
  v9 = *MEMORY[0x277D85DE8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __27__ASDDSPGraph_uninitialize__block_invoke;
  v5[3] = &unk_278CE3AD0;
  v5[4] = self;
  v6 = &unk_2853444C8;
  v7 = 0;
  v8 = &v6;
  v2 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v5);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v6);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t __27__ASDDSPGraph_uninitialize__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    [v1 graph];
    v1 = v3;
  }

  else
  {
    v4 = 0;
  }

  DSPGraph::Graph::uninitialize(v1);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return 1;
}

- (BOOL)reset
{
  v9 = *MEMORY[0x277D85DE8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __20__ASDDSPGraph_reset__block_invoke;
  v5[3] = &unk_278CE3AD0;
  v5[4] = self;
  v6 = &unk_2853444C8;
  v7 = 0;
  v8 = &v6;
  v2 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v5);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v6);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t __20__ASDDSPGraph_reset__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    [v1 graph];
    v1 = v3;
  }

  else
  {
    v4 = 0;
  }

  DSPGraph::Graph::reset(v1);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return 1;
}

- (BOOL)setAUStrip:(id)strip
{
  v14 = *MEMORY[0x277D85DE8];
  stripCopy = strip;
  v5 = stripCopy;
  if (stripCopy)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __26__ASDDSPGraph_setAUStrip___block_invoke;
    v9[3] = &unk_278CE3AF8;
    v9[4] = self;
    v10 = stripCopy;
    v11 = &unk_2853444C8;
    v12 = 0;
    v13 = &v11;
    v6 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v9);
    std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v11);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ASDDSPGraph setAUStrip:];
    }

    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

BOOL __26__ASDDSPGraph_setAUStrip___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 graph];
    v2 = v5;
  }

  else
  {
    v6 = 0;
  }

  v3 = DSPGraph::Graph::setAUStrip(v2, *(a1 + 40));
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v3 == 0;
}

- (BOOL)setPropertyStrip:(id)strip
{
  v14 = *MEMORY[0x277D85DE8];
  stripCopy = strip;
  v5 = stripCopy;
  if (stripCopy)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __32__ASDDSPGraph_setPropertyStrip___block_invoke;
    v9[3] = &unk_278CE3AF8;
    v9[4] = self;
    v10 = stripCopy;
    v11 = &unk_2853444C8;
    v12 = 0;
    v13 = &v11;
    v6 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v9);
    std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v11);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ASDDSPGraph setPropertyStrip:];
    }

    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t __32__ASDDSPGraph_setPropertyStrip___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 graph];
    v2 = v4;
  }

  else
  {
    v5 = 0;
  }

  DSPGraph::Graph::setPropertyStrip(v2, *(a1 + 40));
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return 1;
}

- (BOOL)getParameter:(float *)parameter forID:(unsigned int)d
{
  v12 = *MEMORY[0x277D85DE8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__ASDDSPGraph_getParameter_forID___block_invoke;
  v7[3] = &unk_278CE3B20;
  v7[4] = self;
  v7[5] = parameter;
  dCopy = d;
  v9 = &unk_2853444C8;
  v10 = 0;
  v11 = &v9;
  v4 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v7);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v9);
  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t __34__ASDDSPGraph_getParameter_forID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 graph];
    v2 = v4;
  }

  else
  {
    v5 = 0;
  }

  **(a1 + 40) = (*(*v2 + 48))(v2, *(a1 + 48));
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return 1;
}

- (BOOL)hasParameter:(unsigned int)parameter
{
  [(ASDDSPGraph *)self graph];
  hasParameter = DSPGraph::Graph::hasParameter(v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return hasParameter;
}

uint64_t __34__ASDDSPGraph_setParameter_forID___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = [*(a1 + 32) UTF8String];
    v3 = [*(a1 + 40) name];
    v4 = [v3 UTF8String];
    v5 = *(a1 + 48);
    *v9 = 136315650;
    *&v9[4] = v2;
    *&v9[12] = 2080;
    *&v9[14] = v4;
    v10 = 2048;
    v11 = v5;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Setting dsp graph level parameter %s on graph: %s to %f", v9, 0x20u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    [v6 graph];
    v6 = *v9;
  }

  else
  {
    *v9 = 0;
    *&v9[8] = 0;
  }

  (*(*v6 + 40))(v6, *(a1 + 52), *(a1 + 48));
  if (*&v9[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v9[8]);
  }

  v7 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)getProperty:(void *)property withSize:(unsigned int *)size forID:(unsigned int)d
{
  v13 = *MEMORY[0x277D85DE8];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__ASDDSPGraph_getProperty_withSize_forID___block_invoke;
  v8[3] = &unk_278CE3B70;
  v8[5] = size;
  v8[6] = property;
  v8[4] = self;
  dCopy = d;
  v10 = &unk_2853444C8;
  v11 = 0;
  v12 = &v10;
  v5 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v8);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v10);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t __42__ASDDSPGraph_getProperty_withSize_forID___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!v1)
  {
    return 0;
  }

  v3 = *(a1 + 48);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    [v4 graph];
    v4 = v6;
    v1 = *(a1 + 40);
    v3 = *(a1 + 48);
  }

  else
  {
    v7 = 0;
  }

  (*(*v4 + 72))(v4, *(a1 + 56), v1, v3);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return 1;
}

- (BOOL)setProperty:(const void *)property withSize:(unsigned int)size forID:(unsigned int)d
{
  v14 = *MEMORY[0x277D85DE8];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__ASDDSPGraph_setProperty_withSize_forID___block_invoke;
  v8[3] = &unk_278CE3A80;
  dCopy = d;
  sizeCopy = size;
  v8[4] = self;
  v8[5] = property;
  v11 = &unk_2853444C8;
  v12 = 0;
  v13 = &v11;
  v5 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v8);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v11);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t __42__ASDDSPGraph_setProperty_withSize_forID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 graph];
    v2 = v4;
  }

  else
  {
    v5 = 0;
  }

  (*(*v2 + 56))(v2, *(a1 + 48), *(a1 + 52), *(a1 + 40));
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return 1;
}

- (id)boxWithName:(id)name
{
  v11[4] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __27__ASDDSPGraph_boxWithName___block_invoke;
  v9[3] = &unk_278CE3B98;
  v9[4] = self;
  v10 = nameCopy;
  v11[0] = &unk_285344510;
  v11[1] = 0;
  v11[3] = v11;
  v5 = nameCopy;
  v6 = ASDDSP::exceptionBarrier<objc_object *({block_pointer} {__strong})(void)>(v9);
  std::__function::__value_func<objc_object * ()(void)>::~__value_func[abi:ne200100](v11);

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

ASDDSPGraphBox *__27__ASDDSPGraph_boxWithName___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 40) UTF8String];
  v4 = strlen(v3);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v17 = v4;
  if (v4)
  {
    memmove(&__dst, v3, v4);
  }

  *(&__dst + v5) = 0;
  v6 = DSPGraph::Graph::box();
  v7 = v6;
  if (v17 < 0)
  {
    operator delete(__dst);
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_9:
  v8 = [ASDDSPGraphBox alloc];
  v9 = *(a1 + 32);
  v11 = *(v9 + 8);
  v10 = *(v9 + 16);
  v14 = v11;
  v15 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = [(ASDDSPGraphBox *)v8 initWithBox:v7 fromGraph:&v14];
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

LABEL_15:

  return v12;
}

- (NSSet)boxes
{
  v6[4] = *MEMORY[0x277D85DE8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __20__ASDDSPGraph_boxes__block_invoke;
  v5[3] = &unk_278CE3BC0;
  v5[4] = self;
  v6[0] = &unk_285344510;
  v6[1] = 0;
  v6[3] = v6;
  v2 = ASDDSP::exceptionBarrier<objc_object *({block_pointer} {__strong})(void)>(v5);
  std::__function::__value_func<objc_object * ()(void)>::~__value_func[abi:ne200100](v6);
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

id __20__ASDDSPGraph_boxes__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB58] set];
  for (i = *(*(*(a1 + 32) + 8) + 24); i; i = *i)
  {
    v4 = [ASDDSPGraphBox alloc];
    v5 = i[2];
    v6 = *(a1 + 32);
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
    v11 = v8;
    v12 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = [(ASDDSPGraphBox *)v4 initWithBox:v5 fromGraph:&v11];
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    [v2 addObject:{v9, v11}];
  }

  return v2;
}

- (NSSet)inputs
{
  v6[4] = *MEMORY[0x277D85DE8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __21__ASDDSPGraph_inputs__block_invoke;
  v5[3] = &unk_278CE3BC0;
  v5[4] = self;
  v6[0] = &unk_285344510;
  v6[1] = 0;
  v6[3] = v6;
  v2 = ASDDSP::exceptionBarrier<objc_object *({block_pointer} {__strong})(void)>(v5);
  std::__function::__value_func<objc_object * ()(void)>::~__value_func[abi:ne200100](v6);
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

id __21__ASDDSPGraph_inputs__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB58] set];
  for (i = 0; i < DSPGraph::Graph::numInputs(*(*(a1 + 32) + 8)); ++i)
  {
    v4 = [ASDDSPGraphBox alloc];
    v5 = DSPGraph::Graph::in(*(*(a1 + 32) + 8));
    v6 = *(a1 + 32);
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
    v11 = v8;
    v12 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = [(ASDDSPGraphBox *)v4 initWithBox:v5 fromGraph:&v11];
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    [v2 addObject:{v9, v11}];
  }

  return v2;
}

- (NSSet)outputs
{
  v6[4] = *MEMORY[0x277D85DE8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __22__ASDDSPGraph_outputs__block_invoke;
  v5[3] = &unk_278CE3BC0;
  v5[4] = self;
  v6[0] = &unk_285344510;
  v6[1] = 0;
  v6[3] = v6;
  v2 = ASDDSP::exceptionBarrier<objc_object *({block_pointer} {__strong})(void)>(v5);
  std::__function::__value_func<objc_object * ()(void)>::~__value_func[abi:ne200100](v6);
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

id __22__ASDDSPGraph_outputs__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB58] set];
  for (i = 0; i < DSPGraph::Graph::numOutputs(*(*(a1 + 32) + 8)); ++i)
  {
    v4 = [ASDDSPGraphBox alloc];
    v5 = DSPGraph::Graph::out(*(*(a1 + 32) + 8));
    v6 = *(a1 + 32);
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
    v11 = v8;
    v12 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = [(ASDDSPGraphBox *)v4 initWithBox:v5 fromGraph:&v11];
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    [v2 addObject:{v9, v11}];
  }

  return v2;
}

- (NSString)name
{
  ptr = self->_graph.__ptr_;
  v3 = (ptr + 408);
  if (*(ptr + 431) < 0)
  {
    v3 = *v3;
  }

  return [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
}

- (void)setName:(id)name
{
  v9[4] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __23__ASDDSPGraph_setName___block_invoke;
  v7[3] = &unk_278CE3BE8;
  v7[4] = self;
  v8 = nameCopy;
  v9[0] = &unk_285344558;
  v9[3] = v9;
  v5 = nameCopy;
  ASDDSP::exceptionBarrier<void({block_pointer} {__strong})(void)>(v7);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v9);

  v6 = *MEMORY[0x277D85DE8];
}

void __23__ASDDSPGraph_setName___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  [*(a1 + 40) UTF8String];

  JUMPOUT(0x245CEB7F0);
}

- (unint64_t)numberOfInputs
{
  v9 = *MEMORY[0x277D85DE8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__ASDDSPGraph_numberOfInputs__block_invoke;
  v5[3] = &unk_278CE3AA8;
  v5[4] = self;
  v6 = &unk_285344480;
  v7 = 0;
  v8 = &v6;
  v2 = ASDDSP::exceptionBarrier<unsigned int({block_pointer} {__strong})(void)>(v5);
  std::__function::__value_func<unsigned int ()(void)>::~__value_func[abi:ne200100](&v6);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

- (unint64_t)numberOfOutputs
{
  v9 = *MEMORY[0x277D85DE8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __30__ASDDSPGraph_numberOfOutputs__block_invoke;
  v5[3] = &unk_278CE3AA8;
  v5[4] = self;
  v6 = &unk_285344480;
  v7 = 0;
  v8 = &v6;
  v2 = ASDDSP::exceptionBarrier<unsigned int({block_pointer} {__strong})(void)>(v5);
  std::__function::__value_func<unsigned int ()(void)>::~__value_func[abi:ne200100](&v6);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

- (shared_ptr<DSPGraph::Graph>)graph
{
  cntrl = self->_graph.__cntrl_;
  *v2 = self->_graph.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end