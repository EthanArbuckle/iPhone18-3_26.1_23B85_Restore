@interface ASDDSPGraphBox
- (ASDDSPGraphBox)init;
- (ASDDSPGraphBox)initWithBox:(void *)box fromGraph:(shared_ptr<DSPGraph::Graph>)graph;
- (BOOL)getParameter:(float *)parameter forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element;
- (BOOL)getParameterInfo:(AudioUnitParameterInfo *)info forID:(unsigned int)d inScope:(unsigned int)scope;
- (BOOL)getParameterList:(unsigned int *)list numParameterIDs:(int64_t *)ds inScope:(unsigned int)scope;
- (BOOL)hasParameter:(unsigned int)parameter scope:(unsigned int)scope element:(unsigned int)element;
- (BOOL)setParameter:(float)parameter forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element bufferOffset:(int64_t)offset;
- (BOOL)startInjectingPort:(int64_t)port toFile:(id)file shouldLoop:(BOOL)loop;
- (BOOL)startRecordingPort:(int64_t)port toFile:(id)file;
- (BOOL)startRecordingPort:(int64_t)port toFile:(id)file withAudioCapturerOptions:(unint64_t)options;
- (BOOL)stopInjectingPort:(int64_t)port;
- (BOOL)stopRecordingPort:(int64_t)port;
- (NSString)name;
- (id).cxx_construct;
@end

@implementation ASDDSPGraphBox

- (ASDDSPGraphBox)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[ASDDSPGraphBox init]"];
  [v3 raise:*MEMORY[0x277CBE660] format:{@"Do not call %@", v4}];

  return 0;
}

- (ASDDSPGraphBox)initWithBox:(void *)box fromGraph:(shared_ptr<DSPGraph::Graph>)graph
{
  ptr = graph.__ptr_;
  v14.receiver = self;
  v14.super_class = ASDDSPGraphBox;
  v7 = [(ASDDSPGraphBox *)&v14 init:box];
  if (v7)
  {
    if (!box)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v7 file:@"ASDDSPGraphBox.mm" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"box"}];
    }

    if (!*ptr)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:v7 file:@"ASDDSPGraphBox.mm" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"graph"}];
    }

    v7->_box = box;
    v9 = *ptr;
    v8 = *(ptr + 1);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v7->_graph.__cntrl_;
    v7->_graph.__ptr_ = v9;
    v7->_graph.__cntrl_ = v8;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }
  }

  return v7;
}

- (BOOL)startRecordingPort:(int64_t)port toFile:(id)file
{
  v16 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__ASDDSPGraphBox_startRecordingPort_toFile___block_invoke;
  v10[3] = &unk_278CE3B48;
  v10[4] = self;
  v11 = fileCopy;
  portCopy = port;
  v13 = &unk_2853444C8;
  v14 = 0;
  v15 = &v13;
  v7 = fileCopy;
  LOBYTE(self) = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v10);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v13);

  v8 = *MEMORY[0x277D85DE8];
  return self;
}

- (BOOL)startRecordingPort:(int64_t)port toFile:(id)file withAudioCapturerOptions:(unint64_t)options
{
  v19 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__ASDDSPGraphBox_startRecordingPort_toFile_withAudioCapturerOptions___block_invoke;
  v12[3] = &unk_278CE3EF0;
  v12[4] = self;
  v13 = fileCopy;
  portCopy = port;
  optionsCopy = options;
  v16 = &unk_2853444C8;
  v17 = 0;
  v18 = &v16;
  v9 = fileCopy;
  LOBYTE(port) = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v12);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v16);

  v10 = *MEMORY[0x277D85DE8];
  return port;
}

- (BOOL)stopRecordingPort:(int64_t)port
{
  v10 = *MEMORY[0x277D85DE8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__ASDDSPGraphBox_stopRecordingPort___block_invoke;
  v6[3] = &unk_278CE3F18;
  v6[4] = self;
  v6[5] = port;
  v7 = &unk_2853444C8;
  v8 = 0;
  v9 = &v7;
  v3 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v6);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v7);
  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)startInjectingPort:(int64_t)port toFile:(id)file shouldLoop:(BOOL)loop
{
  v19 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__ASDDSPGraphBox_startInjectingPort_toFile_shouldLoop___block_invoke;
  v12[3] = &unk_278CE3F40;
  v12[4] = self;
  v13 = fileCopy;
  portCopy = port;
  loopCopy = loop;
  v16 = &unk_2853444C8;
  v17 = 0;
  v18 = &v16;
  v9 = fileCopy;
  LOBYTE(port) = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v12);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v16);

  v10 = *MEMORY[0x277D85DE8];
  return port;
}

- (BOOL)stopInjectingPort:(int64_t)port
{
  v10 = *MEMORY[0x277D85DE8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__ASDDSPGraphBox_stopInjectingPort___block_invoke;
  v6[3] = &unk_278CE3F18;
  v6[4] = self;
  v6[5] = port;
  v7 = &unk_2853444C8;
  v8 = 0;
  v9 = &v7;
  v3 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v6);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v7);
  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

- (NSString)name
{
  box = self->_box;
  v3 = box + 32;
  if (box[55] < 0)
  {
    v3 = *v3;
  }

  return [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
}

- (BOOL)getParameterList:(unsigned int *)list numParameterIDs:(int64_t *)ds inScope:(unsigned int)scope
{
  v13 = *MEMORY[0x277D85DE8];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__ASDDSPGraphBox_getParameterList_numParameterIDs_inScope___block_invoke;
  v8[3] = &unk_278CE3B70;
  scopeCopy = scope;
  v8[4] = self;
  v8[5] = ds;
  v8[6] = list;
  v10 = &unk_2853444C8;
  v11 = 0;
  v12 = &v10;
  v5 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v8);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v10);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t __59__ASDDSPGraphBox_getParameterList_numParameterIDs_inScope___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  (*(**(*(a1 + 32) + 8) + 96))(&v8);
  v3 = v8;
  v4 = v9;
  v5 = v9 - v8;
  v6 = *(a1 + 48);
  **(a1 + 40) = (v9 - v8) >> 2;
  if (v6 && v4 != v3)
  {
    memmove(v6, v3, v5);
    v3 = v8;
  }

  if (v3)
  {
    v9 = v3;
    operator delete(v3);
  }

  return 1;
}

- (BOOL)getParameterInfo:(AudioUnitParameterInfo *)info forID:(unsigned int)d inScope:(unsigned int)scope
{
  v14 = *MEMORY[0x277D85DE8];
  (*(*self->_box + 104))(v11);
  result = v13;
  if (v13)
  {
    v7 = v11[5];
    *&info->clumpID = v11[4];
    *&info->unit = v7;
    *&info->flags = v12;
    v8 = v11[1];
    *info->name = v11[0];
    *&info->name[16] = v8;
    v9 = v11[3];
    *&info->name[32] = v11[2];
    *&info->name[48] = v9;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)getParameter:(float *)parameter forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element
{
  v16 = *MEMORY[0x277D85DE8];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__ASDDSPGraphBox_getParameter_forID_scope_element___block_invoke;
  v9[3] = &unk_278CE3B70;
  v9[4] = self;
  v9[5] = parameter;
  dCopy = d;
  scopeCopy = scope;
  elementCopy = element;
  v13 = &unk_2853444C8;
  v14 = 0;
  v15 = &v13;
  v6 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v9);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v13);
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)hasParameter:(unsigned int)parameter scope:(unsigned int)scope element:(unsigned int)element
{
  v14 = *MEMORY[0x277D85DE8];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__ASDDSPGraphBox_hasParameter_scope_element___block_invoke;
  v8[3] = &unk_278CE3F18;
  v8[4] = self;
  scopeCopy = scope;
  parameterCopy = parameter;
  v11 = &unk_2853444C8;
  v12 = 0;
  v13 = &v11;
  v5 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v8);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v11);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL __45__ASDDSPGraphBox_hasParameter_scope_element___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(**(*(a1 + 32) + 8) + 96))(&v6);
  v3 = v7;
  v4 = v6;
  if (v6 != v7)
  {
    v4 = v6;
    while (*v4 != *(a1 + 44))
    {
      if (++v4 == v7)
      {
        v4 = v7;
        break;
      }
    }
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  return v4 != v3;
}

- (BOOL)setParameter:(float)parameter forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element bufferOffset:(int64_t)offset
{
  v18 = *MEMORY[0x277D85DE8];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__ASDDSPGraphBox_setParameter_forID_scope_element_bufferOffset___block_invoke;
  v10[3] = &unk_278CE3F68;
  dCopy = d;
  scopeCopy = scope;
  elementCopy = element;
  parameterCopy = parameter;
  v10[4] = self;
  v10[5] = offset;
  v15 = &unk_2853444C8;
  v16 = 0;
  v17 = &v15;
  v7 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v10);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v15);
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end