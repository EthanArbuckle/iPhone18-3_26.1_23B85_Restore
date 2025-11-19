@interface NLE5Embedding
+ (BOOL)compileEmbeddingModelWithModelPath:(id)a3 useANE:(BOOL)a4 adapters:(id)a5;
+ (BOOL)isCompiledEmbeddingModelWithModelPath:(id)a3 useANE:(BOOL)a4 adapters:(id)a5 error:(id *)a6;
+ (id)embeddingModelWithModelPath:(id)a3 useANE:(BOOL)a4 adapters:(id)a5;
- (BOOL)_loadFunction:(const char *)a3;
- (BOOL)isAdapterLoaded:(id)a3;
- (BOOL)isBackboneLoaded;
- (BOOL)loadAdapter:(id)a3;
- (BOOL)loadBackbone;
- (NLE5Embedding)initWithProgramLibrary:()unique_ptr<E5RT:(std:(void *)a4 :default_delete<E5RT::ProgramLibrary>>)a3 :ProgramLibrary andSubwordVocab:;
- (id).cxx_construct;
- (id)_embeddingDataForString:(id)a3 sequenceSize:(unint64_t *)a4 error:(id *)a5;
- (id)_embeddingDataForTokenizedBatch:(id)a3 withOutputProperties:(id)a4;
- (id)_tokenIDsForText:(id)a3 addBOS:(BOOL)a4;
- (id)embeddingDataForString:(id)a3 sequenceSize:(unint64_t *)a4 error:(id *)a5;
- (id)embeddingDataForTokenizedBatch:(id)a3 withOutputProperties:(id)a4;
- (id)textForTokenIDs:(id)a3;
- (id)tokenIDsForText:(id)a3;
- (void)_setInputFragments:(int *)a3 count:(unint64_t)a4;
- (void)dealloc;
@end

@implementation NLE5Embedding

- (NLE5Embedding)initWithProgramLibrary:()unique_ptr<E5RT:(std:(void *)a4 :default_delete<E5RT::ProgramLibrary>>)a3 :ProgramLibrary andSubwordVocab:
{
  v13.receiver = self;
  v13.super_class = NLE5Embedding;
  v6 = [(NLE5Embedding *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_numInputs = 3;
    v6->_subwordVocabRef = a4;
    v8 = *a3.__ptr_;
    *a3.__ptr_ = 0;
    ptr = v6->_programLibrary.__ptr_;
    v7->_programLibrary.__ptr_ = v8;
    if (ptr)
    {
      (*(*ptr + 8))(ptr);
    }

    adapters = v7->_adapters;
    v7->_adapters = MEMORY[0x1E695E0F0];

    loadedFunction = v7->_loadedFunction;
    v7->_loadedFunction = 0;
  }

  return v7;
}

- (void)dealloc
{
  subwordVocabRef = self->_subwordVocabRef;
  if (subwordVocabRef)
  {
    CFRelease(subwordVocabRef);
  }

  v4.receiver = self;
  v4.super_class = NLE5Embedding;
  [(NLE5Embedding *)&v4 dealloc];
}

+ (id)embeddingModelWithModelPath:(id)a3 useANE:(BOOL)a4 adapters:(id)a5
{
  v6 = a4;
  v52 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  if (v7)
  {
    v9 = [v7 pathExtension];
    v10 = [v9 isEqualToString:@"mil"];

    if (v10)
    {
      v11 = [v7 stringByDeletingLastPathComponent];
      v12 = [v11 stringByAppendingPathComponent:@"sp.dat"];

      v13 = [MEMORY[0x1E696AC08] defaultManager];
      v14 = [v13 fileExistsAtPath:v12 isDirectory:0];

      if ((v14 & 1) == 0)
      {
        v29 = objc_autoreleasePoolPush();
        v30 = NLGetLogCategory(0);
        v31 = [v30 internal];

        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = NLGetLogIdentifier(0);
          v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing sentence piece model for embedding at: %@", v12];
          *buf = 138543618;
          *&buf[4] = v32;
          *&buf[12] = 2114;
          *&buf[14] = v33;
          _os_log_impl(&dword_19D48F000, v31, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v29);
        v19 = 0;
        goto LABEL_29;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v51 = 0;
      if (getSentencePieceModelLoadQueue(void)::onceToken != -1)
      {
        +[NLE5Embedding embeddingModelWithModelPath:useANE:adapters:];
      }

      v15 = getSentencePieceModelLoadQueue(void)::queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __61__NLE5Embedding_embeddingModelWithModelPath_useANE_adapters___block_invoke;
      block[3] = &unk_1E76291B0;
      v45 = buf;
      v16 = v12;
      v44 = v16;
      dispatch_sync(v15, block);
      if (*(*&buf[8] + 24))
      {
        v17 = v7;
        std::string::basic_string[abi:ne200100]<0>(__p, [v7 UTF8String]);
        compileModel(__p, v6, v8);
        if (v49 < 0)
        {
          operator delete(*__p);
        }

        v18 = [NLE5Embedding alloc];
        v41 = v42;
        v42 = 0;
        v19 = [(NLE5Embedding *)v18 initWithProgramLibrary:&v41 andSubwordVocab:*(*&buf[8] + 24)];
        v20 = v41;
        v41 = 0;
        if (v20)
        {
          (*(*v20 + 8))(v20);
        }

        if ([v8 count])
        {
          v21 = [v8 copy];
          [(NLE5Embedding *)v19 setAdapters:v21];
        }

        v22 = v42;
        v42 = 0;
        if (v22)
        {
          (*(*v22 + 8))(v22);
        }

        if (v19)
        {
          goto LABEL_28;
        }

        v23 = *(*&buf[8] + 24);
        if (v23)
        {
          CFRelease(v23);
        }
      }

      else
      {
        v34 = objc_autoreleasePoolPush();
        v35 = NLGetLogCategory(0);
        v36 = [v35 internal];

        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v37 = NLGetLogIdentifier(0);
          v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load sentence piece model for embedding from: %@", v16];
          *__p = 138543618;
          *&__p[4] = v37;
          v47 = 2114;
          v48 = v38;
          _os_log_impl(&dword_19D48F000, v36, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", __p, 0x16u);
        }

        objc_autoreleasePoolPop(v34);
      }

      v19 = 0;
LABEL_28:

      _Block_object_dispose(buf, 8);
LABEL_29:

      goto LABEL_30;
    }
  }

  v24 = objc_autoreleasePoolPush();
  v25 = NLGetLogCategory(0);
  v26 = [v25 internal];

  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = NLGetLogIdentifier(0);
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid path for MIL model: %@", v7];
    *buf = 138543618;
    *&buf[4] = v27;
    *&buf[12] = 2114;
    *&buf[14] = v28;
    _os_log_impl(&dword_19D48F000, v26, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v24);
  v19 = 0;
LABEL_30:

  v39 = *MEMORY[0x1E69E9840];

  return v19;
}

uint64_t __61__NLE5Embedding_embeddingModelWithModelPath_useANE_adapters___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = NLEmbeddingSubwordVocabCreate();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

+ (BOOL)isCompiledEmbeddingModelWithModelPath:(id)a3 useANE:(BOOL)a4 adapters:(id)a5 error:(id *)a6
{
  v7 = a4;
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  MEMORY[0x19EAFBE50](v26);
  std::string::basic_string[abi:ne200100]<0>(__p, "/private/var/db/com.apple.naturallanguaged");
  E5RT::E5CompilerConfigOptions::SetBundleCacheLocation();
  if (v30 < 0)
  {
    operator delete(*__p);
  }

  E5RT::E5Compiler::MakeCompiler();
  v10 = v8;
  std::string::basic_string[abi:ne200100]<0>(__p, [v8 UTF8String]);
  createE5CompilerOptions(v7, v9, &v24);
  if (v30 < 0)
  {
    operator delete(*__p);
  }

  v11 = v8;
  std::string::basic_string[abi:ne200100]<0>(__p, [v8 UTF8String]);
  IsNewCompileRequired = E5RT::E5Compiler::IsNewCompileRequired();
  if (v30 < 0)
  {
    operator delete(*__p);
  }

  v13 = objc_autoreleasePoolPush();
  v14 = IsNewCompileRequired ^ 1;
  v15 = NLGetLogCategory(0);
  v16 = [v15 internal];

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = NLGetLogIdentifier(0);
    v18 = "doesn't require";
    if (IsNewCompileRequired)
    {
      v18 = "requires";
    }

    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@' %s compilation", v8, v18];
    *__p = 138543618;
    *&__p[4] = v17;
    v28 = 2114;
    v29 = v19;
    _os_log_impl(&dword_19D48F000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@%{public}@", __p, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  v20 = v24;
  v24 = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = v25;
  v25 = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  MEMORY[0x19EAFBE60](v26);

  v22 = *MEMORY[0x1E69E9840];
  return v14;
}

+ (BOOL)compileEmbeddingModelWithModelPath:(id)a3 useANE:(BOOL)a4 adapters:(id)a5
{
  v6 = a4;
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = objc_autoreleasePoolPush();
  v10 = NLGetLogCategory(0);
  v11 = [v10 internal];

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NLGetLogIdentifier(0);
    v13 = MEMORY[0x1E696AEC0];
    v14 = [v8 componentsJoinedByString:@" / "];
    v15 = [v13 stringWithFormat:@"Compiling '%@' with adapters: %@", v7, v14];
    *buf = 138543618;
    *&buf[4] = v12;
    v27 = 2114;
    v28 = v15;
    _os_log_impl(&dword_19D48F000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@%{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v16 = NLContextualEmbeddingSignpostHandle();
  v17 = os_signpost_id_generate(v16);
  v18 = v16;
  v19 = v18;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19D48F000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "compileE5", &unk_19D4EF749, buf, 2u);
  }

  v20 = v7;
  std::string::basic_string[abi:ne200100]<0>(buf, [v7 UTF8String]);
  compileModel(buf, v6, v8);
  if (v25)
  {
    (*(*v25 + 8))();
  }

  if (v29 < 0)
  {
    operator delete(*buf);
  }

  v21 = v19;
  v22 = v21;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19D48F000, v22, OS_SIGNPOST_INTERVAL_END, v17, "compileE5", &unk_19D4EF749, buf, 2u);
  }

  v23 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)_loadFunction:(const char *)a3
{
  v92[6] = *MEMORY[0x1E69E9840];
  ExportedFunctions = E5RT::ProgramLibrary::GetExportedFunctions(self->_programLibrary.__ptr_);
  std::unordered_map<std::string,std::shared_ptr<E5RT::ProgramFunction>>::unordered_map(v92, ExportedFunctions);
  std::string::basic_string[abi:ne200100]<0>(__p, a3);
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(v92, __p);
  v7 = v6;
  if ((v91 & 0x80000000) == 0)
  {
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_69:
    v47 = objc_autoreleasePoolPush();
    v48 = NLGetLogCategory(self);
    v49 = [v48 internal];

    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v50 = NLGetLogIdentifier(self);
      v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Loaded mil library is missing %s function", a3];
      *__p = 138543618;
      *&__p[4] = v50;
      v89 = 2114;
      v90 = v51;
      _os_log_impl(&dword_19D48F000, v49, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", __p, 0x16u);
    }

    objc_autoreleasePoolPop(v47);
    goto LABEL_94;
  }

  operator delete(*__p);
  if (!v7)
  {
    goto LABEL_69;
  }

LABEL_3:
  std::string::basic_string[abi:ne200100]<0>(__p, a3);
  v8 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(v92, __p);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v9 = v8[6];
  v85 = v8[5];
  v86 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  E5RT::PrecompiledComputeOpCreateOptions::Create();
  if (v86)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v86);
  }

  if (v91 < 0)
  {
    operator delete(*__p);
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3];
  loadedFunction = self->_loadedFunction;
  self->_loadedFunction = v10;

  E5RT::ExecutionStreamOperation::CreatePreCompiledComputeOp();
  std::shared_ptr<E5RT::ExecutionStreamOperation>::operator=[abi:ne200100]<E5RT::ExecutionStreamOperation,std::default_delete<E5RT::ExecutionStreamOperation>,0>(&self->_main_esop.__ptr_, __p);
  v12 = *__p;
  *__p = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(E5RT::ExecutionStreamOperation::GetInputPorts(self->_main_esop.__ptr_) + 16);
  if (!v13)
  {
LABEL_33:
    std::string::basic_string[abi:ne200100]<0>(__p, "mlm_input");
    v25 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(&self->_buffers.__table_.__bucket_list_.__ptr_, __p);
    v26 = v25;
    if (v91 < 0)
    {
      operator delete(*__p);
      if (v26)
      {
LABEL_35:
        for (i = *(E5RT::ExecutionStreamOperation::GetOutputPorts(self->_main_esop.__ptr_) + 16); i; i = *i)
        {
          PortDescriptorRef = E5RT::IOPort::GetPortDescriptorRef(i[5]);
          v29 = E5RT::OperandDescriptor::TensorDescriptor(PortDescriptorRef);
          E5RT::TensorDescriptor::AllocateMemory();
          v30 = i + 2;
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>>>::__emplace_unique_key_args<std::string,std::string const&,std::unique_ptr<E5RT::BufferObject>>(&self->_buffers.__table_.__bucket_list_.__ptr_, i + 2);
          v31 = *__p;
          *__p = 0;
          if (v31)
          {
            (*(*v31 + 8))(v31);
          }

          v32 = i[5];
          *__p = i + 2;
          v33 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&self->_buffers.__table_.__bucket_list_.__ptr_, i + 2);
          v34 = v33[6];
          v81 = v33[5];
          v82 = v34;
          if (v34)
          {
            atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          E5RT::IOPort::BindMemoryObject();
          if (v82)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v82);
          }

          v35 = *(i + 39);
          if (v35 < 0)
          {
            if (i[3] != 14)
            {
              continue;
            }

            v30 = *v30;
          }

          else if (v35 != 14)
          {
            continue;
          }

          if (*v30 == 0x65626D655F6D6C6DLL && *(v30 + 6) == 0x73676E6964646562)
          {
            TensorShape = E5RT::TensorDescriptor::GetTensorShape(v29);
            if (TensorShape[1] - *TensorShape != 32)
            {
              v52 = objc_autoreleasePoolPush();
              v69 = NLGetLogCategory(self);
              v54 = [v69 internal];

              if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
              {
                v70 = NLGetLogIdentifier(self);
                v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected output rank"];
                *__p = 138543618;
                *&__p[4] = v70;
                v89 = 2114;
                v90 = v71;
                _os_log_impl(&dword_19D48F000, v54, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", __p, 0x16u);
              }

              goto LABEL_92;
            }

            E5RT::TensorDescriptor::GetTensorDataTypeRef(v29);
            if ((E5RT::TensorDataType::IsType<float>() & 1) == 0)
            {
              v52 = objc_autoreleasePoolPush();
              v72 = NLGetLogCategory(self);
              v54 = [v72 internal];

              if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
              {
                v73 = NLGetLogIdentifier(self);
                v74 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected output type"];
                *__p = 138543618;
                *&__p[4] = v73;
                v89 = 2114;
                v90 = v74;
                _os_log_impl(&dword_19D48F000, v54, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", __p, 0x16u);
              }

              goto LABEL_92;
            }

            v38 = *TensorShape;
            self->_dimension = *(*TensorShape + 24);
            if (self->_maximumSequenceLength != *(v38 + 8))
            {
              v52 = objc_autoreleasePoolPush();
              v75 = NLGetLogCategory(self);
              v54 = [v75 internal];

              if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
              {
                v76 = NLGetLogIdentifier(self);
                v77 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Max sequence length not matching in input/output"];
                *__p = 138543618;
                *&__p[4] = v76;
                v89 = 2114;
                v90 = v77;
                _os_log_impl(&dword_19D48F000, v54, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", __p, 0x16u);
              }

              goto LABEL_92;
            }
          }
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "mlm_embeddings");
        v39 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(&self->_buffers.__table_.__bucket_list_.__ptr_, __p);
        v40 = v39;
        if (v91 < 0)
        {
          operator delete(*__p);
          if (v40)
          {
LABEL_58:
            E5RT::ExecutionStream::CreateExecutionStream(__p, v39);
            v41 = *__p;
            *__p = 0;
            ptr = self->_stream.__ptr_;
            self->_stream.__ptr_ = v41;
            if (ptr)
            {
              (*(*ptr + 8))(ptr);
              v43 = *__p;
              *__p = 0;
              if (v43)
              {
                (*(*v43 + 8))(v43);
              }
            }

            v44 = self->_stream.__ptr_;
            cntrl = self->_main_esop.__cntrl_;
            v79 = self->_main_esop.__ptr_;
            v80 = cntrl;
            if (cntrl)
            {
              atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
            }

            E5RT::ExecutionStream::EncodeOperation();
            if (v80)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v80);
            }

            if (v87)
            {
              (*(*v87 + 8))();
            }

            std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::~__hash_table(v92);
            result = 1;
            goto LABEL_95;
          }
        }

        else if (v39)
        {
          goto LABEL_58;
        }

        v52 = objc_autoreleasePoolPush();
        v57 = NLGetLogCategory(self);
        v54 = [v57 internal];

        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          v58 = NLGetLogIdentifier(self);
          v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s output is missing", "mlm_embeddings"];
          *__p = 138543618;
          *&__p[4] = v58;
          v89 = 2114;
          v90 = v59;
          _os_log_impl(&dword_19D48F000, v54, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", __p, 0x16u);
        }

        goto LABEL_92;
      }
    }

    else if (v25)
    {
      goto LABEL_35;
    }

    v52 = objc_autoreleasePoolPush();
    v53 = NLGetLogCategory(self);
    v54 = [v53 internal];

    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v55 = NLGetLogIdentifier(self);
      v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s input is missing", "mlm_input"];
      *__p = 138543618;
      *&__p[4] = v55;
      v89 = 2114;
      v90 = v56;
      _os_log_impl(&dword_19D48F000, v54, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", __p, 0x16u);
    }

    goto LABEL_92;
  }

  while (1)
  {
    v14 = E5RT::IOPort::GetPortDescriptorRef(v13[5]);
    v15 = E5RT::OperandDescriptor::TensorDescriptor(v14);
    E5RT::TensorDescriptor::AllocateMemory();
    v16 = v13 + 2;
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>>>::__emplace_unique_key_args<std::string,std::string const&,std::unique_ptr<E5RT::BufferObject>>(&self->_buffers.__table_.__bucket_list_.__ptr_, v13 + 2);
    v17 = *__p;
    *__p = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v18 = v13[5];
    *__p = v13 + 2;
    v19 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&self->_buffers.__table_.__bucket_list_.__ptr_, v13 + 2);
    v20 = v19[6];
    v83 = v19[5];
    v84 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    E5RT::IOPort::BindMemoryObject();
    if (v84)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v84);
    }

    v21 = *(v13 + 39);
    if (v21 < 0)
    {
      if (v13[3] != 9)
      {
        goto LABEL_32;
      }

      v16 = *v16;
    }

    else if (v21 != 9)
    {
      goto LABEL_32;
    }

    if (*v16 != 0x75706E695F6D6C6DLL || *(v16 + 8) != 116)
    {
      goto LABEL_32;
    }

    v23 = E5RT::TensorDescriptor::GetTensorShape(v15);
    if (v23[1] - *v23 != 32)
    {
      break;
    }

    E5RT::TensorDescriptor::GetTensorDataTypeRef(v15);
    if ((E5RT::TensorDataType::IsType<int>() & 1) == 0)
    {
      v52 = objc_autoreleasePoolPush();
      v63 = NLGetLogCategory(self);
      v54 = [v63 internal];

      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v64 = NLGetLogIdentifier(self);
        v65 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected input type"];
        *__p = 138543618;
        *&__p[4] = v64;
        v89 = 2114;
        v90 = v65;
        _os_log_impl(&dword_19D48F000, v54, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", __p, 0x16u);
      }

      goto LABEL_92;
    }

    v24 = *v23;
    self->_maximumSequenceLength = *(*v23 + 8);
    if (self->_numInputs != *(v24 + 24))
    {
      v52 = objc_autoreleasePoolPush();
      v66 = NLGetLogCategory(self);
      v54 = [v66 internal];

      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v67 = NLGetLogIdentifier(self);
        v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected input tensor shape"];
        *__p = 138543618;
        *&__p[4] = v67;
        v89 = 2114;
        v90 = v68;
        _os_log_impl(&dword_19D48F000, v54, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", __p, 0x16u);
      }

      goto LABEL_92;
    }

LABEL_32:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_33;
    }
  }

  v52 = objc_autoreleasePoolPush();
  v60 = NLGetLogCategory(self);
  v54 = [v60 internal];

  if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
  {
    v61 = NLGetLogIdentifier(self);
    v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected input rank"];
    *__p = 138543618;
    *&__p[4] = v61;
    v89 = 2114;
    v90 = v62;
    _os_log_impl(&dword_19D48F000, v54, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", __p, 0x16u);
  }

LABEL_92:

  objc_autoreleasePoolPop(v52);
  if (v87)
  {
    (*(*v87 + 8))();
  }

LABEL_94:
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::~__hash_table(v92);
  result = 0;
LABEL_95:
  v78 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_setInputFragments:(int *)a3 count:(unint64_t)a4
{
  std::string::basic_string[abi:ne200100]<0>(__p, "mlm_input");
  v16 = __p;
  v7 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_buffers.__table_.__bucket_list_.__ptr_, __p);
  DataSpan = E5RT::BufferObject::GetDataSpan(v7[5]);
  v10 = v9;
  if (v9 >= 4)
  {
    v11 = DataSpan;
  }

  else
  {
    v11 = 0;
  }

  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  bzero(v11, v10 & 0xFFFFFFFFFFFFFFFCLL);
  maximumSequenceLength = self->_maximumSequenceLength;
  if (maximumSequenceLength >= a4)
  {
    maximumSequenceLength = a4;
  }

  if (maximumSequenceLength)
  {
    for (i = 0; i != maximumSequenceLength; ++i)
    {
      *(v11 + self->_numInputs * i) = a3[i];
      *(v11 + self->_numInputs * i + 1) = i;
      *(v11 + self->_numInputs * i + 2) = 0;
    }
  }
}

- (BOOL)isBackboneLoaded
{
  if (!self->_stream.__ptr_)
  {
    return 0;
  }

  loadedFunction = self->_loadedFunction;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"main"];
  v4 = [(NSString *)loadedFunction isEqualToString:v3];

  return v4;
}

- (BOOL)loadBackbone
{
  v23 = *MEMORY[0x1E69E9840];
  if ([(NLE5Embedding *)self isBackboneLoaded])
  {
    v3 = 1;
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    v5 = NLGetLogCategory(self);
    v6 = [v5 internal];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NLGetLogIdentifier(self);
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Loading backbone"];
      v19 = 138543618;
      v20 = v7;
      v21 = 2114;
      v22 = v8;
      _os_log_impl(&dword_19D48F000, v6, OS_LOG_TYPE_INFO, "%{public}@%{public}@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    ptr = self->_stream.__ptr_;
    if (ptr)
    {
      E5RT::ExecutionStream::ResetStream(ptr);
      v10 = self->_stream.__ptr_;
      self->_stream.__ptr_ = 0;
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }
    }

    v11 = NLContextualEmbeddingSignpostHandle();
    v12 = os_signpost_id_generate(v11);
    v13 = v11;
    v14 = v13;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      LOWORD(v19) = 0;
      _os_signpost_emit_with_name_impl(&dword_19D48F000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "loadBackboneE5", &unk_19D4EF749, &v19, 2u);
    }

    v3 = [(NLE5Embedding *)self _loadFunction:"main"];
    v15 = v14;
    v16 = v15;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      LOWORD(v19) = 0;
      _os_signpost_emit_with_name_impl(&dword_19D48F000, v16, OS_SIGNPOST_INTERVAL_END, v12, "loadBackboneE5", &unk_19D4EF749, &v19, 2u);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)isAdapterLoaded:(id)a3
{
  v4 = a3;
  v5 = self->_stream.__ptr_ && [(NSString *)self->_loadedFunction isEqualToString:v4];

  return v5;
}

- (BOOL)loadAdapter:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(NLE5Embedding *)self isAdapterLoaded:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(NLE5Embedding *)self adapters];
    v7 = [v6 containsObject:v4];

    v8 = objc_autoreleasePoolPush();
    if (v7)
    {
      v9 = NLGetLogCategory(self);
      v10 = [v9 internal];

      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = NLGetLogIdentifier(self);
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Loading adapter '%@'", v4];
        *buf = 138543618;
        v30 = v11;
        v31 = 2114;
        v32 = v12;
        _os_log_impl(&dword_19D48F000, v10, OS_LOG_TYPE_INFO, "%{public}@%{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      ptr = self->_stream.__ptr_;
      if (ptr)
      {
        E5RT::ExecutionStream::ResetStream(ptr);
        v14 = self->_stream.__ptr_;
        self->_stream.__ptr_ = 0;
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }

        loadedFunction = self->_loadedFunction;
        self->_loadedFunction = 0;
      }

      v16 = NLContextualEmbeddingSignpostHandle();
      v17 = os_signpost_id_generate(v16);
      v18 = v16;
      v19 = v18;
      if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19D48F000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "loadAdapterE5", &unk_19D4EF749, buf, 2u);
      }

      v20 = v4;
      v5 = -[NLE5Embedding _loadFunction:](self, "_loadFunction:", [v4 UTF8String]);
      v21 = v19;
      v22 = v21;
      if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19D48F000, v22, OS_SIGNPOST_INTERVAL_END, v17, "loadAdapterE5", &unk_19D4EF749, buf, 2u);
      }
    }

    else
    {
      v23 = NLGetLogCategory(self);
      v24 = [v23 internal];

      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = NLGetLogIdentifier(self);
        v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"E5 bundle is missing requested adapter '%@'", v4];
        *buf = 138543618;
        v30 = v25;
        v31 = 2114;
        v32 = v26;
        _os_log_impl(&dword_19D48F000, v24, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v5 = 0;
    }
  }

  v27 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)_embeddingDataForTokenizedBatch:(id)a3 withOutputProperties:(id)a4
{
  __src[3] = *MEMORY[0x1E69E9840];
  v53 = a3;
  v6 = a4;
  v55 = v6;
  if (self->_stream.__ptr_)
  {
    v52 = [MEMORY[0x1E695DF88] data];
    v51 = [MEMORY[0x1E695DF70] array];
    v7 = [MEMORY[0x1E695DF70] array];
    v54 = 0;
    v56 = v7;
    while (v54 < [v53 count])
    {
      v8 = [v53 objectAtIndex:?];
      v9 = [MEMORY[0x1E695DF70] array];
      memset(__src, 0, 24);
      v10 = [(NLE5Embedding *)self _tokenIDsForText:&stru_1F10C6540 addBOS:1];
      v11 = [v10 firstObject];
      v12 = [v11 intValue];

      v13 = __src[1];
      if (__src[1] >= __src[2])
      {
        v15 = __src[0];
        v16 = __src[1] - __src[0];
        v17 = (__src[1] - __src[0]) >> 2;
        v18 = v17 + 1;
        if ((v17 + 1) >> 62)
        {
          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        v19 = __src[2] - __src[0];
        if ((__src[2] - __src[0]) >> 1 > v18)
        {
          v18 = v19 >> 1;
        }

        v20 = v19 >= 0x7FFFFFFFFFFFFFFCLL;
        v21 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v20)
        {
          v21 = v18;
        }

        if (v21)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<ME_Model::ME_Feature>>(__src, v21);
        }

        *(4 * v17) = v12;
        v14 = (4 * v17 + 4);
        memcpy(0, v15, v16);
        v22 = __src[0];
        __src[0] = 0;
        __src[1] = v14;
        __src[2] = 0;
        if (v22)
        {
          operator delete(v22);
        }

        v7 = v56;
      }

      else
      {
        *__src[1] = v12;
        v14 = v13 + 4;
      }

      v23 = 0;
      __src[1] = v14;
      while ([v8 count] > v23)
      {
        v24 = [v8 objectAtIndex:v23];
        v25 = [(NLE5Embedding *)self _tokenIDsForText:v24 addBOS:0];
        applesauce::CF::ArrayRef::from_ns(v25, &cf);

        if (!cf)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x19EAFBFD0](exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::convert_to<std::vector<int>,0>(cf, &__p);
        v27 = __src[0];
        v26 = __src[1];
        begin = __p.__begin_;
        end = __p.__end_;
        v30 = [(NLE5Embedding *)self maximumSequenceLength];
        v31 = end - begin + ((v26 - v27) >> 2);
        v6 = v55;
        v7 = v56;
        if (v31 <= v30)
        {
          v32 = [MEMORY[0x1E696B098] valueWithRange:{(__src[1] - __src[0]) >> 2, __p.__end_ - __p.__begin_}];
          [v9 addObject:v32];

          std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(__src, __src[1], __p.__begin_, __p.__end_, __p.__end_ - __p.__begin_);
        }

        if (__p.__begin_)
        {
          __p.__end_ = __p.__begin_;
          operator delete(__p.__begin_);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (v31 > v30)
        {
          break;
        }

        ++v23;
      }

      while ([v8 count] > v23)
      {
        v33 = [MEMORY[0x1E696B098] valueWithRange:{0x7FFFFFFFFFFFFFFFLL, 0}];
        [v9 addObject:v33];

        ++v23;
      }

      [NLE5Embedding _setInputFragments:"_setInputFragments:count:" count:?];
      v34 = NLContextualEmbeddingSignpostHandle();
      v35 = os_signpost_id_generate(v34);
      v36 = v34;
      v37 = v36;
      if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
      {
        LOWORD(__p.__begin_) = 0;
        _os_signpost_emit_with_name_impl(&dword_19D48F000, v37, OS_SIGNPOST_INTERVAL_BEGIN, v35, "inferenceE5", &unk_19D4EF749, &__p, 2u);
      }

      E5RT::ExecutionStream::ExecuteStreamSync(self->_stream.__ptr_);
      v38 = v37;
      v39 = v38;
      if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
      {
        LOWORD(__p.__begin_) = 0;
        _os_signpost_emit_with_name_impl(&dword_19D48F000, v39, OS_SIGNPOST_INTERVAL_END, v35, "inferenceE5", &unk_19D4EF749, &__p, 2u);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "mlm_embeddings");
      cf = &__p;
      v40 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_buffers.__table_.__bucket_list_.__ptr_, &__p.__begin_);
      DataSpan = E5RT::BufferObject::GetDataSpan(v40[5]);
      [v52 appendBytes:DataSpan length:4 * self->_dimension * ((__src[1] - __src[0]) >> 2)];
      if (SHIBYTE(__p.__end_cap_.__value_) < 0)
      {
        operator delete(__p.__begin_);
      }

      [v51 addObject:v9];
      v42 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:(__src[1] - __src[0]) >> 2];
      [v7 addObject:v42];

      if (__src[0])
      {
        __src[1] = __src[0];
        operator delete(__src[0]);
      }

      ++v54;
    }

    [v6 setObject:v51 forKeyedSubscript:@"fragmentRangesForTokens"];
    [v6 setObject:v7 forKeyedSubscript:@"fragmentCountPerSample"];
  }

  else
  {
    v43 = objc_autoreleasePoolPush();
    v44 = NLGetLogCategory(self);
    v45 = [v44 internal];

    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = NLGetLogIdentifier(self);
      v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Execution stream hasn't been created"];
      LODWORD(__src[0]) = 138543618;
      *(__src + 4) = v46;
      WORD2(__src[1]) = 2114;
      *(&__src[1] + 6) = v47;
      _os_log_impl(&dword_19D48F000, v45, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", __src, 0x16u);
    }

    objc_autoreleasePoolPop(v43);
    v52 = 0;
  }

  v48 = *MEMORY[0x1E69E9840];

  return v52;
}

- (id)embeddingDataForTokenizedBatch:(id)a3 withOutputProperties:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(NLE5Embedding *)self _embeddingDataForTokenizedBatch:v6 withOutputProperties:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)_embeddingDataForString:(id)a3 sequenceSize:(unint64_t *)a4 error:(id *)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (self->_stream.__ptr_)
  {
    v9 = [(NLE5Embedding *)self _tokenIDsForText:v8 addBOS:1];
    applesauce::CF::ArrayRef::from_ns(v9, cf);

    if (!cf[0])
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x19EAFBFD0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::convert_to<std::vector<int>,0>(cf[0], &v38);
    begin = v38.__begin_;
    end = v38.__end_;
    if ([(NLE5Embedding *)self maximumSequenceLength]< end - begin)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = NLGetLogCategory(self);
      v14 = [v13 internal];

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = NLGetLogIdentifier(self);
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Input string length exceeds max sequence length supported by the model"];
        *buf = 138543618;
        *&buf[4] = v15;
        v33 = 2114;
        v34 = v16;
        _os_log_impl(&dword_19D48F000, v14, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      if (a5)
      {
        v17 = MEMORY[0x1E696ABC0];
        v36 = *MEMORY[0x1E696A578];
        v37 = @"Input trimmed up to max sequence length";
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        *a5 = [v17 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:4 userInfo:v18];
      }

      std::vector<int>::resize(&v38, [(NLE5Embedding *)self maximumSequenceLength]);
    }

    [NLE5Embedding _setInputFragments:"_setInputFragments:count:" count:?];
    E5RT::ExecutionStream::ExecuteStreamSync(self->_stream.__ptr_);
    v19 = MEMORY[0x1E695DEF0];
    std::string::basic_string[abi:ne200100]<0>(buf, "mlm_embeddings");
    cf[2] = buf;
    v20 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_buffers.__table_.__bucket_list_.__ptr_, buf);
    DataSpan = E5RT::BufferObject::GetDataSpan(v20[5]);
    v22 = [v19 dataWithBytes:DataSpan length:4 * self->_dimension * ((v38.__end_ - v38.__begin_) >> 2)];
    if (v35 < 0)
    {
      operator delete(*buf);
    }

    if (a4)
    {
      *a4 = v38.__end_ - v38.__begin_;
    }

    if (v38.__begin_)
    {
      v38.__end_ = v38.__begin_;
      operator delete(v38.__begin_);
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = NLGetLogCategory(self);
    v25 = [v24 internal];

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = NLGetLogIdentifier(self);
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Execution stream hasn't been created"];
      LODWORD(v38.__begin_) = 138543618;
      *(&v38.__begin_ + 4) = v26;
      WORD2(v38.__end_) = 2114;
      *(&v38.__end_ + 6) = v27;
      _os_log_impl(&dword_19D48F000, v25, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", &v38, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v22 = 0;
  }

  v28 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)embeddingDataForString:(id)a3 sequenceSize:(unint64_t *)a4 error:(id *)a5
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [(NLE5Embedding *)self _embeddingDataForString:v8 sequenceSize:a4 error:a5];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)textForTokenIDs:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_subwordVocabRef)
  {
    v5 = NLEmbeddingSubwordVocabCopyTextForTokenIds();
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = NLGetLogCategory(self);
    v8 = [v7 internal];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = NLGetLogIdentifier(self);
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Sentence piece tokenizer is not set"];
      v13 = 138543618;
      v14 = v9;
      v15 = 2114;
      v16 = v10;
      _os_log_impl(&dword_19D48F000, v8, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v5 = &stru_1F10C6540;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)tokenIDsForText:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_subwordVocabRef)
  {
    v5 = [(NLE5Embedding *)self _tokenIDsForText:v4 addBOS:1];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = NLGetLogCategory(self);
    v8 = [v7 internal];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = NLGetLogIdentifier(self);
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Sentence piece tokenizer is not set"];
      v13 = 138543618;
      v14 = v9;
      v15 = 2114;
      v16 = v10;
      _os_log_impl(&dword_19D48F000, v8, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v5 = MEMORY[0x1E695E0F0];
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_tokenIDsForText:(id)a3 addBOS:(BOOL)a4
{
  subwordVocabRef = self->_subwordVocabRef;
  v5 = NLEmbeddingSubwordVocabCopyTokenIdsForText();

  return v5;
}

- (id).cxx_construct
{
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 22) = 1065353216;
  return self;
}

@end