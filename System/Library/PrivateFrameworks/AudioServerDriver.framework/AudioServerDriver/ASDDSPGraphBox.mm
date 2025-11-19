@interface ASDDSPGraphBox
- (ASDDSPGraphBox)init;
- (ASDDSPGraphBox)initWithBox:(void *)a3 fromGraph:(shared_ptr<DSPGraph::Graph>)a4;
- (BOOL)getParameter:(float *)a3 forID:(unsigned int)a4 scope:(unsigned int)a5 element:(unsigned int)a6;
- (BOOL)getParameterInfo:(AudioUnitParameterInfo *)a3 forID:(unsigned int)a4 inScope:(unsigned int)a5;
- (BOOL)getParameterList:(unsigned int *)a3 numParameterIDs:(int64_t *)a4 inScope:(unsigned int)a5;
- (BOOL)hasParameter:(unsigned int)a3 scope:(unsigned int)a4 element:(unsigned int)a5;
- (BOOL)setParameter:(float)a3 forID:(unsigned int)a4 scope:(unsigned int)a5 element:(unsigned int)a6 bufferOffset:(int64_t)a7;
- (BOOL)startInjectingPort:(int64_t)a3 toFile:(id)a4 shouldLoop:(BOOL)a5;
- (BOOL)startRecordingPort:(int64_t)a3 toFile:(id)a4;
- (BOOL)startRecordingPort:(int64_t)a3 toFile:(id)a4 withAudioCapturerOptions:(unint64_t)a5;
- (BOOL)stopInjectingPort:(int64_t)a3;
- (BOOL)stopRecordingPort:(int64_t)a3;
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

- (ASDDSPGraphBox)initWithBox:(void *)a3 fromGraph:(shared_ptr<DSPGraph::Graph>)a4
{
  ptr = a4.__ptr_;
  v14.receiver = self;
  v14.super_class = ASDDSPGraphBox;
  v7 = [(ASDDSPGraphBox *)&v14 init:a3];
  if (v7)
  {
    if (!a3)
    {
      v12 = [MEMORY[0x277CCA890] currentHandler];
      [v12 handleFailureInMethod:a2 object:v7 file:@"ASDDSPGraphBox.mm" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"box"}];
    }

    if (!*ptr)
    {
      v13 = [MEMORY[0x277CCA890] currentHandler];
      [v13 handleFailureInMethod:a2 object:v7 file:@"ASDDSPGraphBox.mm" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"graph"}];
    }

    v7->_box = a3;
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

- (BOOL)startRecordingPort:(int64_t)a3 toFile:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__ASDDSPGraphBox_startRecordingPort_toFile___block_invoke;
  v10[3] = &unk_278CE3B48;
  v10[4] = self;
  v11 = v6;
  v12 = a3;
  v13 = &unk_2853444C8;
  v14 = 0;
  v15 = &v13;
  v7 = v6;
  LOBYTE(self) = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v10);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v13);

  v8 = *MEMORY[0x277D85DE8];
  return self;
}

- (BOOL)startRecordingPort:(int64_t)a3 toFile:(id)a4 withAudioCapturerOptions:(unint64_t)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__ASDDSPGraphBox_startRecordingPort_toFile_withAudioCapturerOptions___block_invoke;
  v12[3] = &unk_278CE3EF0;
  v12[4] = self;
  v13 = v8;
  v14 = a3;
  v15 = a5;
  v16 = &unk_2853444C8;
  v17 = 0;
  v18 = &v16;
  v9 = v8;
  LOBYTE(a3) = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v12);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v16);

  v10 = *MEMORY[0x277D85DE8];
  return a3;
}

- (BOOL)stopRecordingPort:(int64_t)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__ASDDSPGraphBox_stopRecordingPort___block_invoke;
  v6[3] = &unk_278CE3F18;
  v6[4] = self;
  v6[5] = a3;
  v7 = &unk_2853444C8;
  v8 = 0;
  v9 = &v7;
  v3 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v6);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v7);
  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)startInjectingPort:(int64_t)a3 toFile:(id)a4 shouldLoop:(BOOL)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__ASDDSPGraphBox_startInjectingPort_toFile_shouldLoop___block_invoke;
  v12[3] = &unk_278CE3F40;
  v12[4] = self;
  v13 = v8;
  v14 = a3;
  v15 = a5;
  v16 = &unk_2853444C8;
  v17 = 0;
  v18 = &v16;
  v9 = v8;
  LOBYTE(a3) = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v12);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v16);

  v10 = *MEMORY[0x277D85DE8];
  return a3;
}

- (BOOL)stopInjectingPort:(int64_t)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__ASDDSPGraphBox_stopInjectingPort___block_invoke;
  v6[3] = &unk_278CE3F18;
  v6[4] = self;
  v6[5] = a3;
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

- (BOOL)getParameterList:(unsigned int *)a3 numParameterIDs:(int64_t *)a4 inScope:(unsigned int)a5
{
  v13 = *MEMORY[0x277D85DE8];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__ASDDSPGraphBox_getParameterList_numParameterIDs_inScope___block_invoke;
  v8[3] = &unk_278CE3B70;
  v9 = a5;
  v8[4] = self;
  v8[5] = a4;
  v8[6] = a3;
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

- (BOOL)getParameterInfo:(AudioUnitParameterInfo *)a3 forID:(unsigned int)a4 inScope:(unsigned int)a5
{
  v14 = *MEMORY[0x277D85DE8];
  (*(*self->_box + 104))(v11);
  result = v13;
  if (v13)
  {
    v7 = v11[5];
    *&a3->clumpID = v11[4];
    *&a3->unit = v7;
    *&a3->flags = v12;
    v8 = v11[1];
    *a3->name = v11[0];
    *&a3->name[16] = v8;
    v9 = v11[3];
    *&a3->name[32] = v11[2];
    *&a3->name[48] = v9;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)getParameter:(float *)a3 forID:(unsigned int)a4 scope:(unsigned int)a5 element:(unsigned int)a6
{
  v16 = *MEMORY[0x277D85DE8];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__ASDDSPGraphBox_getParameter_forID_scope_element___block_invoke;
  v9[3] = &unk_278CE3B70;
  v9[4] = self;
  v9[5] = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = &unk_2853444C8;
  v14 = 0;
  v15 = &v13;
  v6 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v9);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v13);
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)hasParameter:(unsigned int)a3 scope:(unsigned int)a4 element:(unsigned int)a5
{
  v14 = *MEMORY[0x277D85DE8];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__ASDDSPGraphBox_hasParameter_scope_element___block_invoke;
  v8[3] = &unk_278CE3F18;
  v8[4] = self;
  v9 = a4;
  v10 = a3;
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

- (BOOL)setParameter:(float)a3 forID:(unsigned int)a4 scope:(unsigned int)a5 element:(unsigned int)a6 bufferOffset:(int64_t)a7
{
  v18 = *MEMORY[0x277D85DE8];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__ASDDSPGraphBox_setParameter_forID_scope_element_bufferOffset___block_invoke;
  v10[3] = &unk_278CE3F68;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a3;
  v10[4] = self;
  v10[5] = a7;
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