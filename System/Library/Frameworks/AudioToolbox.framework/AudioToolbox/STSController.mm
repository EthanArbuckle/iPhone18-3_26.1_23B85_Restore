@interface STSController
- (BOOL)_updateGlobalState:(const STSGlobalState *)state didChange:(BOOL *)change error:(id *)error;
- (BOOL)signalChangeWithError:(id *)error;
- (BOOL)updateGlobalState:(STSGlobalState *)state didChange:(BOOL *)change error:(id *)error;
- (BOOL)updateGlobalState:(const STSGlobalState *)state labelStates:(const void *)states additionalLabelInfo:(id)info error:(id *)error;
- (BOOL)updateLabel:(__CFString *)label state:(STSPerLabelState *)state didChange:(BOOL *)change error:(id *)error;
- (BOOL)updateLabel:(__CFString *)label state:(const STSPerLabelState *)state didChange:(BOOL *)change additionalInfo:(id)info error:(id *)error;
- (STSController)initWithSTSObject:(OpaqueFigSTS *)object error:(id *)error;
- (__hash_map_iterator<std::__hash_iterator<std::__hash_node<std::__hash_value_type<std::string,)ensureResourcesAllocatedForLabel:(__CFString *)label error:(id *)error;
- (id).cxx_construct;
- (void)cleanupAllLabels;
- (void)cleanupLabel:(__CFString *)label;
- (void)dealloc;
@end

@implementation STSController

- (id).cxx_construct
{
  self->_perLabelState.__table_.__bucket_list_ = 0u;
  *&self->_perLabelState.__table_.__first_node_.__next_ = 0u;
  self->_perLabelState.__table_.__max_load_factor_ = 1.0;
  *&self->_availableIndicesWithinSharedStorage.c.__map_.__first_ = 0u;
  *&self->_availableIndicesWithinSharedStorage.c.__map_.__end_ = 0u;
  *&self->_availableIndicesWithinSharedStorage.c.__start_ = 0u;
  self->_activeIndices.m_activeLabels = 0;
  MEMORY[0x1BFAE3970](&self->_controlSemaphore, a2);
  return self;
}

- (BOOL)_updateGlobalState:(const STSGlobalState *)state didChange:(BOOL *)change error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  if (memcmp(&self->_globalState, state, 0x50uLL))
  {
    *change = 1;
    v8 = self->_globalGeneration + 1;
    do
    {
      v9 = v8;
      v8 = 1;
    }

    while (!v9);
    self->_globalGeneration = v9;
    v10 = *&state->hostTime;
    *&v29[24] = *&state[2].hostTime;
    v11 = *&state[6].hostTime;
    *&v29[40] = *&state[4].hostTime;
    *&v29[56] = v11;
    *&v29[72] = *&state[8].hostTime;
    *&v29[8] = v10;
    sharedStorage = self->_sharedStorage;
    v28 = 0;
    if (sharedStorage[1] == 3)
    {
      v13 = 0;
    }

    else
    {
      v13 = sharedStorage[1];
    }

    while (1)
    {
      v14 = atomic_load(sharedStorage);
      v15 = v13 == v14 || v13 == HIWORD(v14);
      if (!v15)
      {
        break;
      }

      caulk::concurrent::details::spinloop::spin(&v28);
      if (v13 == 2)
      {
        v13 = 0;
      }

      else
      {
        ++v13;
      }
    }

    v16 = &sharedStorage[28 * v13];
    *(v16 + 2) = v9;
    v17 = v16 + 4;
    v18 = *&v29[48];
    *(v17 + 10) = *&v29[32];
    *(v17 + 14) = v18;
    *(v17 + 18) = *&v29[64];
    v19 = *&v29[16];
    *(v17 + 2) = *v29;
    v20 = *(v17 + 96);
    *(v17 + 11) = *&v29[80];
    *(v17 + 6) = v19;
    if ((v20 & 1) == 0)
    {
      *(v17 + 96) = 1;
    }

    v21 = v14;
    atomic_compare_exchange_strong(sharedStorage, &v21, (v13 << 16) | v14);
    if (v21 != v14)
    {
      v22 = v21;
      do
      {
        atomic_compare_exchange_strong(sharedStorage, &v22, v21 | (v13 << 16));
        v15 = v22 == v21;
        v21 = v22;
      }

      while (!v15);
    }

    sharedStorage[1] = v13 + 1;
    *&self->_globalState.hostTime = *&state->hostTime;
    v23 = *&state[2].hostTime;
    v24 = *&state[4].hostTime;
    v25 = *&state[8].hostTime;
    *&self->_anon_78[40] = *&state[6].hostTime;
    *&self->_anon_78[56] = v25;
    *&self->_anon_78[8] = v23;
    *&self->_anon_78[24] = v24;
  }

  v26 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)updateLabel:(__CFString *)label state:(const STSPerLabelState *)state didChange:(BOOL *)change additionalInfo:(id)info error:(id *)error
{
  v33[1] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v13.var0.var0 = [(STSController *)self ensureResourcesAllocatedForLabel:label error:error];
  if (v13.var0.var0)
  {
    v14 = [infoCopy objectForKey:@"STSAdditionalLabelInfoKey_DeferToSystemTuning"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 isEqualToNumber:&unk_1F37D3BE0] ^ 1;
    }

    else
    {
      if (v14)
      {
        if (error)
        {
          v32 = *MEMORY[0x1E696A578];
          v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error: Incorrect type provided for STSAdditionalLabelInfoKey_DeferToSystemTuning - expecting NSNumber, got %@", v14];
          v33[0] = v17;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];

          *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.STS-N" code:1396926817 userInfo:v18];
        }

        v16 = 0;
        goto LABEL_18;
      }

      v15 = 0;
    }

    if (memcmp(v13.var0.var0 + 64, state, 0x50uLL) || *(v13.var0.var0 + 144) != v15)
    {
      v19 = v13.var0.var0 + 16;
      *change = 1;
      v20 = *(v13.var0.var0 + 7) + 1;
      do
      {
        v21 = v20;
        v20 = 1;
      }

      while (!v21);
      *(v13.var0.var0 + 7) = v21;
      if (*(v13.var0.var0 + 39) < 0)
      {
        v19 = *v19;
      }

      strcpy(__src + 8, v19);
      *&__src[0] = v21;
      v22 = *&state[4].var1;
      __src[14] = *&state[2].var3;
      __src[15] = v22;
      __src[16] = *&state[5].var2;
      v23 = *&state[1].var2;
      __src[12] = *&state->var1;
      __src[13] = v23;
      LOBYTE(__src[17]) = v15;
      v24 = (self->_sharedStorage + 928 * *(v13.var0.var0 + 6));
      memcpy(__dst, __src, sizeof(__dst));
      caulk::concurrent::multi_buffer<STSPerLabelStorage,3>::write(v24 + 92, __dst);
      *(v13.var0.var0 + 4) = *&state->var1;
      v25 = *&state[1].var2;
      v26 = *&state[2].var3;
      v27 = *&state[5].var2;
      *(v13.var0.var0 + 7) = *&state[4].var1;
      *(v13.var0.var0 + 8) = v27;
      *(v13.var0.var0 + 5) = v25;
      *(v13.var0.var0 + 6) = v26;
      *(v13.var0.var0 + 144) = v15;
    }

    v16 = 1;
LABEL_18:

    goto LABEL_19;
  }

  v16 = 0;
LABEL_19:

  v28 = *MEMORY[0x1E69E9840];
  return v16;
}

- (__hash_map_iterator<std::__hash_iterator<std::__hash_node<std::__hash_value_type<std::string,)ensureResourcesAllocatedForLabel:(__CFString *)label error:(id *)error
{
  v50[1] = *MEMORY[0x1E69E9840];
  labelCopy = label;
  std::string::basic_string[abi:ne200100]<0>(&__p, -[__CFString UTF8String](label, "UTF8String"));
  v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  size = __p.__r_.__value_.__l.__size_;
  v10 = +[STSController maxLabelLength];
  if ((v8 & 0x80u) == 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = size;
  }

  if (v11 > v10)
  {
    if (error)
    {
      v49 = *MEMORY[0x1E696A578];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error: label %@ is too long - please keep under %u characters", label, 180];
      v50[0] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];

      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.STS-N" code:1396924774 userInfo:v13];
    }

LABEL_7:
    v14 = 0;
    goto LABEL_9;
  }

  v14 = std::__hash_table<std::__hash_value_type<std::string,STSPerLabelControllerState>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,STSPerLabelControllerState>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,STSPerLabelControllerState>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,STSPerLabelControllerState>>>::find<std::string>(&self->_perLabelState.__table_.__bucket_list_.__ptr_, &__p);
  if (v14)
  {
    goto LABEL_9;
  }

  v17 = self->_availableIndicesWithinSharedStorage.c.__size_;
  if (!v17)
  {
    if (error)
    {
      v47 = *MEMORY[0x1E696A578];
      label = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error: no resources available for new label %@", label];
      v48 = label;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];

      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.STS-N" code:1396924774 userInfo:v26];
    }

    goto LABEL_7;
  }

  begin = self->_availableIndicesWithinSharedStorage.c.__map_.__begin_;
  end = self->_availableIndicesWithinSharedStorage.c.__map_.__end_;
  v20 = ((end - begin) << 6) - 1;
  if (end == begin)
  {
    v20 = 0;
  }

  v21 = v17 - 1;
  v22 = self->_availableIndicesWithinSharedStorage.c.__start_ + v21;
  v23 = (*(begin + ((v22 >> 6) & 0x3FFFFFFFFFFFFF8)))[v22 & 0x1FF];
  self->_availableIndicesWithinSharedStorage.c.__size_ = v21;
  if (v20 - v22 >= 0x400)
  {
    operator delete(*(end - 1));
    --self->_availableIndicesWithinSharedStorage.c.__map_.__end_;
  }

  m_activeLabels = self->_activeIndices.m_activeLabels;
  if (v23 <= 0x3F)
  {
    m_activeLabels |= 1 << v23;
    self->_activeIndices.m_activeLabels = m_activeLabels;
  }

  atomic_store(m_activeLabels, self->_sharedStorage + 44);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v36, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v36 = __p;
  }

  v37 = v23;
  v38 = 0;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v39 = 0u;
  v40 = 0u;
  v44 = 0;
  *v45 = *v46;
  *&v45[7] = *&v46[7];
  v27 = std::__string_hash<char>::operator()[abi:ne200100](&v36);
  v28 = v27;
  v29 = self->_perLabelState.__table_.__bucket_list_.__deleter_.__size_;
  if (!v29)
  {
    goto LABEL_41;
  }

  v30 = vcnt_s8(v29);
  v30.i16[0] = vaddlv_u8(v30);
  v31 = v30.u32[0];
  if (v30.u32[0] > 1uLL)
  {
    v32 = v27;
    if (v27 >= v29)
    {
      v32 = v27 % v29;
    }
  }

  else
  {
    v32 = (v29 - 1) & v27;
  }

  v33 = self->_perLabelState.__table_.__bucket_list_.__ptr_[v32];
  if (!v33 || (v14 = *v33) == 0)
  {
LABEL_41:
    operator new();
  }

  while (1)
  {
    v34 = v14[1];
    if (v34 == v28)
    {
      break;
    }

    if (v31 > 1)
    {
      if (v34 >= v29)
      {
        v34 %= v29;
      }
    }

    else
    {
      v34 &= v29 - 1;
    }

    if (v34 != v32)
    {
      goto LABEL_41;
    }

LABEL_40:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_41;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v14 + 2, &v36))
  {
    goto LABEL_40;
  }

  if ((*(&v36.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

LABEL_9:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)updateGlobalState:(const STSGlobalState *)state labelStates:(const void *)states additionalLabelInfo:(id)info error:(id *)error
{
  infoCopy = info;
  if (error)
  {
    *error = 0;
  }

  v11 = states + 16;
  v12 = states + 16;
  while (1)
  {
    v12 = *v12;
    if (!v12)
    {
      break;
    }

    if ([(STSController *)self ensureResourcesAllocatedForLabel:v12[2] error:error]== 0)
    {
      v13 = 0;
      goto LABEL_15;
    }
  }

  v17 = 0;
  if (state && ![(STSController *)self _updateGlobalState:state didChange:&v17 error:error])
  {
LABEL_11:
    v13 = 0;
  }

  else
  {
    while (1)
    {
      v11 = *v11;
      v13 = v11 == 0;
      if (!v11)
      {
        break;
      }

      v14 = [infoCopy objectForKey:v11[2]];
      v15 = [(STSController *)self updateLabel:v11[2] state:v11 + 4 didChange:&v17 additionalInfo:v14 error:error];

      if (!v15)
      {
        goto LABEL_11;
      }
    }
  }

  if ((v17 & 1) != 0 || self->_allowAutomaticHeadTracking)
  {
    v13 = [(STSController *)self signalChangeWithError:error];
  }

LABEL_15:

  return v13;
}

- (void)cleanupAllLabels
{
  v17 = 0u;
  v18 = 0u;
  max_load_factor = self->_perLabelState.__table_.__max_load_factor_;
  std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<PowerUsageWatchdog::ClientDescription>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<PowerUsageWatchdog::ClientDescription>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<PowerUsageWatchdog::ClientDescription>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<PowerUsageWatchdog::ClientDescription>>>>::__rehash<true>(&v17, self->_perLabelState.__table_.__bucket_list_.__deleter_.__size_);
  for (i = self->_perLabelState.__table_.__first_node_.__next_; i; i = *i)
  {
    v4 = std::__string_hash<char>::operator()[abi:ne200100]((i + 2));
    v5 = v4;
    v6 = *(&v17 + 1);
    if (!*(&v17 + 1))
    {
      goto LABEL_18;
    }

    v7 = vcnt_s8(*(&v17 + 8));
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4;
      if (v4 >= *(&v17 + 1))
      {
        v9 = v4 % *(&v17 + 1);
      }
    }

    else
    {
      v9 = (*(&v17 + 1) - 1) & v4;
    }

    v10 = *(v17 + 8 * v9);
    if (!v10 || (v11 = *v10) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v12 = v11[1];
      if (v12 == v5)
      {
        break;
      }

      if (v8 > 1)
      {
        if (v12 >= v6)
        {
          v12 %= v6;
        }
      }

      else
      {
        v12 &= v6 - 1;
      }

      if (v12 != v9)
      {
        goto LABEL_18;
      }

LABEL_17:
      v11 = *v11;
      if (!v11)
      {
        goto LABEL_18;
      }
    }

    if (!std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, i + 2))
    {
      goto LABEL_17;
    }
  }

  v13 = v18;
  if (v18)
  {
    v14 = *MEMORY[0x1E695E480];
    do
    {
      v15 = (v13 + 2);
      if (*(v13 + 39) < 0)
      {
        v15 = *v15;
      }

      v16 = CFStringCreateWithCString(v14, v15, 0x8000100u);
      [(STSController *)self cleanupLabel:v16];
      CFRelease(v16);
      v13 = *v13;
    }

    while (v13);
  }

  std::__hash_table<std::__hash_value_type<std::string,STSPerLabelControllerState>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,STSPerLabelControllerState>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,STSPerLabelControllerState>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,STSPerLabelControllerState>>>::~__hash_table(&v17);
}

- (void)cleanupLabel:(__CFString *)label
{
  v36 = *MEMORY[0x1E69E9840];
  labelCopy = label;
  std::string::basic_string[abi:ne200100]<0>(__p, -[__CFString UTF8String](label, "UTF8String"));
  v6 = std::__hash_table<std::__hash_value_type<std::string,STSPerLabelControllerState>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,STSPerLabelControllerState>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,STSPerLabelControllerState>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,STSPerLabelControllerState>>>::find<std::string>(&self->_perLabelState.__table_.__bucket_list_.__ptr_, __p);
  if (v6)
  {
    v7 = v6;
    v8 = (self->_sharedStorage + 928 * v6[6]);
    *buf = 0;
    v35 = 0;
    caulk::concurrent::multi_buffer<STSPerLabelStorage,3>::write(v8 + 92, buf);
    v9 = v7[6];
    m_activeLabels = self->_activeIndices.m_activeLabels;
    if (v9 <= 0x3F)
    {
      m_activeLabels &= ~(1 << v9);
      self->_activeIndices.m_activeLabels = m_activeLabels;
    }

    atomic_store(m_activeLabels, self->_sharedStorage + 44);
    v11 = *&self->_availableIndicesWithinSharedStorage.c.__map_.__begin_;
    end = self->_availableIndicesWithinSharedStorage.c.__map_.__end_;
    begin = self->_availableIndicesWithinSharedStorage.c.__map_.__begin_;
    v14 = ((end - begin) << 6) - 1;
    if (end == begin)
    {
      v14 = 0;
    }

    v15 = self->_availableIndicesWithinSharedStorage.c.__size_ + self->_availableIndicesWithinSharedStorage.c.__start_;
    if (v14 == v15)
    {
      std::deque<unsigned long>::__add_back_capacity(&self->_availableIndicesWithinSharedStorage.c.__map_.__first_);
      begin = self->_availableIndicesWithinSharedStorage.c.__map_.__begin_;
      v15 = self->_availableIndicesWithinSharedStorage.c.__size_ + self->_availableIndicesWithinSharedStorage.c.__start_;
    }

    (*(begin + ((v15 >> 6) & 0x3FFFFFFFFFFFFF8)))[v15 & 0x1FF] = v7[6];
    ++self->_availableIndicesWithinSharedStorage.c.__size_;
    size = self->_perLabelState.__table_.__bucket_list_.__deleter_.__size_;
    v17 = v7[1];
    v18 = vcnt_s8(size);
    v18.i16[0] = vaddlv_u8(v18);
    if (v18.u32[0] > 1uLL)
    {
      if (v17 >= size)
      {
        v17 %= size;
      }
    }

    else
    {
      v17 &= size - 1;
    }

    ptr = self->_perLabelState.__table_.__bucket_list_.__ptr_;
    isa = ptr[v17];
    do
    {
      v21 = isa;
      isa = isa->super.isa;
    }

    while (isa != v7);
    if (v21 == &self->_perLabelState.__table_.__first_node_)
    {
      goto LABEL_25;
    }

    sts = v21->_sts;
    if (v18.u32[0] > 1uLL)
    {
      if (sts >= size)
      {
        sts %= size;
      }
    }

    else
    {
      sts &= size - 1;
    }

    if (sts != v17)
    {
LABEL_25:
      if (!*v7)
      {
        goto LABEL_26;
      }

      v23 = *(*v7 + 1);
      if (v18.u32[0] > 1uLL)
      {
        if (v23 >= size)
        {
          v23 %= size;
        }
      }

      else
      {
        v23 &= size - 1;
      }

      if (v23 != v17)
      {
LABEL_26:
        ptr[v17] = 0;
      }
    }

    v24 = *v7;
    if (*v7)
    {
      v25 = *(v24 + 1);
      if (v18.u32[0] > 1uLL)
      {
        if (v25 >= size)
        {
          v25 %= size;
        }
      }

      else
      {
        v25 &= size - 1;
      }

      if (v25 != v17)
      {
        self->_perLabelState.__table_.__bucket_list_.__ptr_[v25] = v21;
        v24 = *v7;
      }
    }

    v21->super.isa = v24;
    *v7 = 0;
    --self->_perLabelState.__table_.__size_;
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,STSPerLabelControllerState>,void *>>>::operator()[abi:ne200100](1, v7);
    v29 = 0;
    v26 = [(STSController *)self signalChangeWithError:&v29];
    v27 = v29;
    if (!v26 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = label;
      v33 = 2112;
      v34 = v27;
      _os_log_error_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failed to signal cleanup of label %@: %@", buf, 0x16u);
    }
  }

  if (v31 < 0)
  {
    operator delete(__p[0]);
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (BOOL)updateGlobalState:(STSGlobalState *)state didChange:(BOOL *)change error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  v11 = 0;
  v8 = [(STSController *)self _updateGlobalState:state didChange:&v11 error:error];
  LOBYTE(v9) = 0;
  if (v8)
  {
    if (v11 || self->_allowAutomaticHeadTracking)
    {
      v9 = [(STSController *)self signalChangeWithError:error];
      if (!change)
      {
        return v9;
      }
    }

    else
    {
      v9 = 1;
      if (!change)
      {
        return v9;
      }
    }

    if (v9)
    {
      *change = v11;
      LOBYTE(v9) = 1;
    }
  }

  return v9;
}

- (BOOL)updateLabel:(__CFString *)label state:(STSPerLabelState *)state didChange:(BOOL *)change error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  v12 = 0;
  v9 = [(STSController *)self updateLabel:label state:state didChange:&v12 additionalInfo:0 error:error];
  LOBYTE(v10) = 0;
  if (v9)
  {
    if (v12)
    {
      v10 = [(STSController *)self signalChangeWithError:error];
      if (!change)
      {
        return v10;
      }
    }

    else
    {
      v10 = 1;
      if (!change)
      {
        return v10;
      }
    }

    if (v10)
    {
      *change = v12;
      LOBYTE(v10) = 1;
    }
  }

  return v10;
}

- (BOOL)signalChangeWithError:(id *)error
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = caulk::mach::semaphore::signal_or_error(&self->_controlSemaphore);
  if (error && (v4 & 0x100000000) == 0)
  {
    v10 = *MEMORY[0x1E696A578];
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error: failed to signal change"];
    v11[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];

    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.STS-N" code:1396929899 userInfo:v6];
  }

  v7 = *MEMORY[0x1E69E9840];
  return HIDWORD(v4) & 1;
}

- (void)dealloc
{
  [(STSController *)self cleanupAllLabels];
  sts = self->_sts;
  if (sts)
  {
    CFRelease(sts);
  }

  sharedStorage = self->_sharedStorage;
  if (sharedStorage)
  {
    munmap(sharedStorage, self->_shmemSize);
  }

  v5.receiver = self;
  v5.super_class = STSController;
  [(STSController *)&v5 dealloc];
}

- (STSController)initWithSTSObject:(OpaqueFigSTS *)object error:(id *)error
{
  p_isa = error;
  v50[1] = *MEMORY[0x1E69E9840];
  if (error)
  {
    *error = 0;
    if (!object)
    {
      v49 = *MEMORY[0x1E696A578];
      v50[0] = @"Error: NULL FigSTSRef";
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
      *p_isa = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.STS-N" code:1396926817 userInfo:v8];

LABEL_21:
      selfCopy = 0;
      goto LABEL_22;
    }
  }

  else if (!object)
  {
    goto LABEL_21;
  }

  xdict = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v9 = getCMBaseObjectGetVTableSymbolLoc(void)::ptr;
  v38 = getCMBaseObjectGetVTableSymbolLoc(void)::ptr;
  if (!getCMBaseObjectGetVTableSymbolLoc(void)::ptr)
  {
    region[0] = MEMORY[0x1E69E9820];
    region[1] = 3221225472;
    region[2] = ___ZL33getCMBaseObjectGetVTableSymbolLocv_block_invoke;
    region[3] = &unk_1E7ED08E8;
    region[4] = &v35;
    ___ZL33getCMBaseObjectGetVTableSymbolLocv_block_invoke(region);
    v9 = v36[3];
  }

  _Block_object_dispose(&v35, 8);
  if (!v9)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"const CMBaseVTable *softLink_CMBaseObjectGetVTable(CMBaseObjectRef)"];
    [currentHandler handleFailureInFunction:v25 file:@"STSController.mm" lineNumber:27 description:{@"%s", dlerror()}];

    __break(1u);
    goto LABEL_46;
  }

  v10 = *(*(v9(object) + 16) + 40);
  if (!v10)
  {
    v11 = 4294954514;
    if (p_isa)
    {
      goto LABEL_16;
    }

LABEL_19:
    selfCopy = 0;
    goto LABEL_20;
  }

  v11 = v10(object, @"SharedStorage", &xdict);
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = xdict == 0;
  }

  if (!v12)
  {
    if (MEMORY[0x1BFAE5890](xdict) != MEMORY[0x1E69E9E80])
    {
      v11 = 0;
      goto LABEL_15;
    }

    v18 = xpc_dictionary_get_value(xdict, "sharedstorage");
    currentHandler = v18;
    if (!v18 || MEMORY[0x1BFAE5890](v18) != MEMORY[0x1E69E9F08])
    {
      if (p_isa)
      {
        v45 = *MEMORY[0x1E696A578];
        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error: Failed to copy STS shared memory from configuration"];
        v46 = v19;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];

        *p_isa = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.STS-N" code:1396924774 userInfo:v20];
      }

      goto LABEL_27;
    }

    region[0] = 0;
    v4 = xpc_shmem_map(currentHandler, region);
    v21 = region[0];
    if (!region[0])
    {
      if (!p_isa)
      {
LABEL_27:
        selfCopy = 0;
        goto LABEL_17;
      }

      v43 = *MEMORY[0x1E696A578];
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error: Failed to map STS shared memory w/ size %lu: %d", v4, 0];
      v44 = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];

      [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.STS-N" code:1396924774 userInfo:v25];
      *p_isa = selfCopy = 0;
LABEL_48:

      goto LABEL_17;
    }

    if (v4 >> 4 <= 0xE96)
    {
      if (p_isa)
      {
        v41 = *MEMORY[0x1E696A578];
        59760 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error: STS shared memory region of size %lu isn't large enough (requires %lu)", v4, 59760];
        v42 = 59760;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];

        *p_isa = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.STS-N" code:1396924774 userInfo:v23];

        v21 = region[0];
      }

      munmap(v21, v4);
      goto LABEL_27;
    }

    v26 = xpc_dictionary_get_value(xdict, "controlsemaphore");
    v25 = v26;
    if (!v26 || MEMORY[0x1BFAE5890](v26) != MEMORY[0x1E69E9EC0])
    {
      if (p_isa)
      {
        v39 = *MEMORY[0x1E696A578];
        v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error: Failed to copy STS control semaphore from configuration"];
        v40 = v27;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];

        *p_isa = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.STS-N" code:1396924774 userInfo:v28];
      }

      munmap(region[0], v4);
      selfCopy = 0;
      goto LABEL_48;
    }

    xpc_mach_send_copy_right();
    v32.receiver = self;
    v32.super_class = STSController;
    v29 = [(STSController *)&v32 init];
    p_isa = &v29->super.isa;
    if (v29)
    {
      v29->_shmemSize = v4;
      v29->_sts = CFRetain(object);
      p_isa[25] = region[0];
      caulk::mach::semaphore::semaphore(&v35);
      caulk::mach::semaphore::operator=();
      MEMORY[0x1BFAE3980](&v35);
      *(p_isa + 224) = xpc_dictionary_get_BOOL(xdict, "allowautomaticheadtracking");
      v30 = +[STSController maxNumberOfPerLabelStates];
      if (v30 >= 1)
      {
        v31 = (v30 & 0x7FFFFFFF) + 1;
        do
        {
          v35 = v31 - 2;
          std::deque<unsigned long>::push_back(p_isa + 7, &v35);
          --v31;
        }

        while (v31 > 1);
      }

      goto LABEL_47;
    }

LABEL_46:
    munmap(region[0], v4);
LABEL_47:
    self = p_isa;
    selfCopy = self;
    goto LABEL_48;
  }

LABEL_15:
  if (!p_isa)
  {
    goto LABEL_19;
  }

LABEL_16:
  v47 = *MEMORY[0x1E696A578];
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error: Failed to copy STS shared memory configuration: %d", v11];
  v48 = v13;
  currentHandler = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];

  [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.STS-N" code:1396924774 userInfo:currentHandler];
  *p_isa = selfCopy = 0;
LABEL_17:

LABEL_20:
LABEL_22:

  v16 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

@end