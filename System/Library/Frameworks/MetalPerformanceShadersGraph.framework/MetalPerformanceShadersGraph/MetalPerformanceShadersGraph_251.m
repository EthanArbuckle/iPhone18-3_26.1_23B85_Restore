void sub_1E0894388(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, mlir::Operation *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  std::pair<std::string,std::string>::~pair(&a28);
  mlir::PassManager::~PassManager((v46 - 176));
  mlir::OwningOpRef<mlir::ModuleOp>::~OwningOpRef(&a35);
  mlir::ParserConfig::~ParserConfig(&a46);
}

void sub_1E08946D4()
{
  loadCoreMLDialectInContext(v2);
  v27 = 0u;
  v28 = 0x1000000000;
  v29 = &v31;
  v30 = 0;
  v32 = v2;
  v33 = 1;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = v40;
  v39 = 0x600000000;
  v40[6] = &v41;
  v40[7] = 0x600000000;
  v5 = [*(v1 + v3) bytes];
  v6 = [*(v1 + v3) length];
  v16.__r_.__value_.__r.__words[0] = 0;
  *(v4 - 128) = 0u;
  *(v4 - 112) = 0u;
  *(v4 - 96) = v4 - 96;
  *(v4 - 88) = v4 - 96;
  *(v4 - 72) = 0;
  *(v4 - 64) = 0;
  *(v4 - 80) = 0;
  if (mlir::parseSourceString(v5, v6, (v4 - 128), &v32, "", 0, &v16))
  {
    mlir::detail::constructContainerOpForParserIfNecessary<mlir::ModuleOp>(v4 - 128, v32, v16.__r_.__value_.__l.__data_, &v26);
    mlir::Block::~Block((v4 - 128));
    v7 = v26;
    if (v26)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v26 = 0;
    mlir::Block::~Block((v4 - 128));
    v7 = v26;
    if (v26)
    {
LABEL_3:
      Context = mlir::Attribute::getContext((v7 + 24));
      mlir::PassManager::PassManager((v4 - 128), Context, "any", 3uLL, 1);
      memset(&v25, 0, sizeof(v25));
      v9 = v0;
      v10 = [v0 UTF8String];
      v11 = strlen(v10);
      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v12 = v11;
      if (v11 >= 0x17)
      {
        operator new();
      }

      *(&v16.__r_.__value_.__s + 23) = v11;
      if (v11)
      {
        memmove(&v16, v10, v11);
        v16.__r_.__value_.__s.__data_[v12] = 0;
        if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v16.__r_.__value_.__s.__data_[0] = 0;
        if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }
      }

      operator delete(v25.__r_.__value_.__l.__data_);
LABEL_7:
      v25 = v16;
      mlir::createSegmentAllOpsToDelegate(&v25, &v24);
      mlir::OpPassManager::addPass((v4 - 128), &v24);
      v13 = v24;
      v24 = 0;
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }

      v14.var0.var0 = v26;
      if (!mlir::PassManager::run((v4 - 128), v14))
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }

      mlir::BytecodeWriterConfig::BytecodeWriterConfig(&v23, &v27, "MLIR20.0.0git", 13);
      memset(v22, 0, sizeof(v22));
      LODWORD(v16.__r_.__value_.__r.__words[1]) = 0;
      v19 = 0;
      v20 = 1;
      v17 = 0;
      v18 = 0;
      v16.__r_.__value_.__r.__words[2] = 0;
      v16.__r_.__value_.__r.__words[0] = &unk_1F5B3FB30;
      v21 = v22;
      llvm::raw_ostream::SetBufferAndMode(&v16, 0, 0, 0);
      mlir::writeBytecodeToFile(v26, &v16, &v23, v15);
    }
  }

  mlir::ParserConfig::~ParserConfig(&v32);
}

void sub_1E0894B34(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, mlir::Operation *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, char a39)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  mlir::PassManager::~PassManager((v39 - 128));
  mlir::OwningOpRef<mlir::ModuleOp>::~OwningOpRef(&a30);
  mlir::ParserConfig::~ParserConfig(&a39);
}

void sub_1E0894C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  llvm::MapVector<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>,llvm::StringMap<unsigned int,llvm::MallocAllocator>,llvm::SmallVector<std::pair<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>>,0u>>::~MapVector(va);
  JUMPOUT(0x1E0894C34);
}

uint64_t llvm::MapVector<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>,llvm::StringMap<unsigned int,llvm::MallocAllocator>,llvm::SmallVector<std::pair<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>>,0u>>::~MapVector(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = 32 * v3;
    v5 = &v2[v4 - 9];
    v6 = -v4;
    do
    {
      v7 = *(v5 + 1);
      *(v5 + 1) = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      if (*v5 < 0)
      {
        operator delete(*(v5 - 23));
      }

      v5 -= 32;
      v6 += 32;
    }

    while (v6);
    v2 = *(a1 + 24);
  }

  if (v2 != (a1 + 40))
  {
    free(v2);
  }

  if (*(a1 + 12))
  {
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = 0;
      do
      {
        v10 = *(*a1 + v9);
        if (v10 != -8 && v10 != 0)
        {
          llvm::deallocate_buffer(v10, (*v10 + 17));
        }

        v9 += 8;
      }

      while (8 * v8 != v9);
    }
  }

  free(*a1);
  return a1;
}

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZ91__MPSGraphCoreMLCompilerDelegate_getInitializedCoreMLBytecodeWithPayloadPrefix_delegateId__E3__3NS1_4func6FuncOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESL_E4typeES3_OT1_EUlS3_E_EEvlS3_(id ***a1, mlir::Operation *a2)
{
  if (a2 && *(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    v2 = *a1;
    v20 = a2;
    v3 = objc_alloc(MEMORY[0x1E696AEC0]);
    SymName = mlir::func::FuncOp::getSymName(&v20);
    if (SymName)
    {
      v6 = v5;
      if (v5 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v5 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v19) = v5;
      if (v5)
      {
        memmove(&__p, SymName, v5);
      }

      *(&__p + v6) = 0;
      if (v19 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }
    }

    else
    {
      __p = 0;
      v18 = 0;
      p_p = &__p;
      v19 = 0;
    }

    v8 = [v3 initWithCString:p_p encoding:{4, __p, v18, v19}];
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p);
    }

    v9 = [**v2 getInputShapesForFunction:v8];
    v10 = v20;
    if (*(v20 + 47) && (v21.var0 = "externalize", v21.var1 = 11, InherentAttr = mlir::Operation::getInherentAttr(v20, v21), (v12 & 1) != 0))
    {
      if (InherentAttr)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v22.var0 = "externalize";
      v22.var1 = 11;
      if (mlir::DictionaryAttr::contains((v10 + 56), v22))
      {
        goto LABEL_27;
      }
    }

    v13 = v20;
    if (*(v20 + 47) && (v23.var0 = "private", v23.var1 = 7, v14 = mlir::Operation::getInherentAttr(v20, v23), (v15 & 1) != 0))
    {
      if (!v14)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v24.var0 = "private";
      v24.var1 = 7;
      if ((mlir::DictionaryAttr::contains((v13 + 56), v24) & 1) == 0)
      {
LABEL_26:
        v16 = [[MPSGraphExecutableEntryPoint alloc] initWithEntryFunctionName:v8 inputTypes:v9];
        [*v2[1] addObject:v16];
      }
    }

LABEL_27:
  }
}

void sub_1E08952E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if ((a14 & 0x80000000) == 0)
  {

    _Unwind_Resume(a1);
  }

  operator delete(__p);

  _Unwind_Resume(a1);
}

void sub_1E08954A0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

GPU::ConditionOpHandler *GPU::ConditionOpHandler::ConditionOpHandler(GPU::ConditionOpHandler *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4) = &unk_1F5B53650;
  v5 = objc_alloc(MEMORY[0x1E6974740]);
  v6 = [*(*(this + 2) + 48) metalDevice];
  v7 = [v5 initWithDevice:v6];
  v8 = *(this + 1);
  *(this + 1) = v7;

  return this;
}

GPU::IfOpHandler *GPU::IfOpHandler::IfOpHandler(GPU::IfOpHandler *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v5 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v5 = &unk_1F5B536A0;
  *(v5 + 15) = 0;
  v6 = (v5 + 120);
  *(v5 + 16) = 0;
  *(v5 + 17) = 0;
  v7 = [*(*(v5 + 2) + 48) metalDevice];
  if ([v7 supportsCommandBufferJump])
  {
    v8 = *(this + 40);
  }

  else
  {
    v8 = 0;
  }

  *(this + 41) = v8 & 1;

  v10 = *(this + 3);
  v11 = *(v10 + 44);
  v12 = (v11 >> 23) & 1;
  v13 = (v11 >> 21) & 0x7F8;
  v14 = 32 * *(v10 + 40);
  v15 = ((v10 + 64 + 16 * v12 + v13 + 7) & 0xFFFFFFFFFFFFFFF8) + v14;
  v44 = this;
  v16 = *(v15 + 8);
  if (v16 != v15)
  {
    do
    {
      v17 = v16 - 8;
      if (!v16)
      {
        v17 = 0;
      }

      v18 = *(v17 + 40);
      v19 = v17 + 32;
      if (v18 != v17 + 32)
      {
        do
        {
          v20 = *(v18 + 8);
          v21 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v18, v9);
          mlir::detail::walk<mlir::ForwardIterator>(v21, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::IfOpHandler::IfOpHandler(GPURegionRuntime *,mlir::Operation *,GPU::MPSGraphKernelDAG *)::$_0>, &v44, 1);
          v18 = v20;
        }

        while (v20 != v19);
      }

      v16 = *(v16 + 8);
    }

    while (v16 != v15);
    v22 = *(v10 + 44);
    v12 = (v22 >> 23) & 1;
    v13 = (v22 >> 21) & 0x7F8;
    v14 = 32 * *(v10 + 40);
  }

  v23 = ((v10 + 64 + 16 * v12 + v13 + 7) & 0xFFFFFFFFFFFFFFF8) + v14;
  v24 = v23 + 24;
  v44 = this;
  v25 = *(v23 + 32);
  if (v25 != v23 + 24)
  {
    do
    {
      v26 = v25 - 8;
      if (!v25)
      {
        v26 = 0;
      }

      v27 = *(v26 + 40);
      v28 = v26 + 32;
      if (v27 != v26 + 32)
      {
        do
        {
          v29 = *(v27 + 8);
          v30 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v27, v9);
          mlir::detail::walk<mlir::ForwardIterator>(v30, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::IfOpHandler::IfOpHandler(GPURegionRuntime *,mlir::Operation *,GPU::MPSGraphKernelDAG *)::$_1>, &v44, 1);
          v27 = v29;
        }

        while (v29 != v28);
      }

      v25 = *(v25 + 8);
    }

    while (v25 != v24);
  }

  v31 = objc_alloc(MEMORY[0x1E6974740]);
  v32 = [*(*(this + 2) + 48) metalDevice];
  v33 = [v31 initWithDevice:v32];
  v34 = *(this + 1);
  *(this + 1) = v33;

  if (*(this + 41))
  {
    v35 = 32;
  }

  else
  {
    v35 = 2147483656;
  }

  if (*(this + 41))
  {
    v36 = 4;
  }

  else
  {
    v36 = 1;
  }

  if (*(this + 41))
  {
    operator new();
  }

  v37 = [MEMORY[0x1E6974490] descriptorWithDataType:v35 shape:&unk_1F5B77D68];
  [v37 setPreferPackedRows:1];
  v38 = [*(*(this + 2) + 48) metalDevice];
  v39 = [v38 newBufferWithLength:v36 options:0];
  v40 = *v6;
  *v6 = v39;

  v41 = [objc_alloc(MEMORY[0x1E6974488]) initWithBuffer:*v6 descriptor:v37];
  v42 = *(this + 16);
  *(this + 16) = v41;

  return this;
}

void sub_1E0895AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, void *__p, uint64_t a15)
{
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](&a12);
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  GPU::BaseOpHandler::~BaseOpHandler(v15);
  _Unwind_Resume(a1);
}

uint64_t GPU::IfOpHandler::encodeCSCBOp(GPU::IfOpHandler *this, GPU::EncodeDescriptor *a2)
{
  v80[1] = *MEMORY[0x1E69E9840];
  v79 = a2;
  v2 = *(this + 41);
  if (v2 == 1)
  {
    v78 = *(this + 1);
    v4 = *(this + 2);
    v77 = *(this + 3);
    v66 = (*(*v4 + 48))(v4, *(*(v77 + 9) + 24), 0);
    v5 = GPU::EncodeDescriptor::getcomputeEncoder(v79);
    v6 = *(v79 + 1);
    v7 = [v66 mpsndarray];
    v80[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:1];
    v69 = this;
    [v78 encodeToMPSCommandEncoder:v5 commandBuffer:v6 sourceArrays:v8 resultState:0 destinationArray:*(this + 16) kernelDAGObject:*(this + 17)];

    v9 = GPU::EncodeDescriptor::getcomputeEncoder(v79);
    v10 = v69;
    [v9 encodeStartIf:*(v69 + 15) offset:0 comparison:0 referenceValue:1];
    __p = 0;
    v75 = 0;
    v76 = 0;
    v68 = v9;
    if (*(v77 + 9))
    {
      operator new();
    }

    ODSResultIndexAndLength = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength(&v77, 0);
    v13 = ODSResultIndexAndLength;
    if (*(v77 + 9))
    {
      NextResultAtOffset = v77 - 16;
    }

    else
    {
      NextResultAtOffset = 0;
    }

    if (ODSResultIndexAndLength)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
    }

    v15 = (HIDWORD(v13) + v13);
    v16 = v15 - v13;
    if (v15 != v13)
    {
      v41 = 0;
      v67 = v15 - v13;
      do
      {
        v42 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v41);
        v43 = (*(**(v10 + 2) + 80))(*(v10 + 2), v42, *(v79 + 1), 0, 0, 1);
        v44 = [v43 mpsndarray];
        v45 = v75;
        if (v75 >= v76)
        {
          v47 = NextResultAtOffset;
          v48 = __p;
          v49 = v75 - __p;
          v50 = (v75 - __p) >> 3;
          v51 = v50 + 1;
          if ((v50 + 1) >> 61)
          {
            std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
          }

          v52 = v76 - __p;
          if ((v76 - __p) >> 2 > v51)
          {
            v51 = v52 >> 2;
          }

          if (v52 >= 0x7FFFFFFFFFFFFFF8)
          {
            v53 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v53 = v51;
          }

          if (v53)
          {
            if (!(v53 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v65 = (v75 - __p) >> 3;
          *(8 * v50) = v44;
          v46 = 8 * v50 + 8;
          if (v48 == v45)
          {
            NextResultAtOffset = v47;
            v16 = v67;
            __p = 0;
            v75 = (8 * v50 + 8);
            v76 = 0;
          }

          else
          {
            v54 = v45 - v48 - 8;
            v55 = v48;
            v56 = 0;
            if (v54 < 0x38)
            {
              goto LABEL_67;
            }

            if (v48 < v49 + (v54 & 0xFFFFFFFFFFFFFFF8) - 8 * v65 + 8)
            {
              v55 = v48;
              v56 = 0;
              if ((v48 + (v54 & 0xFFFFFFFFFFFFFFF8)) != -8)
              {
                goto LABEL_67;
              }
            }

            v57 = (v54 >> 3) + 1;
            v56 = (8 * (v57 & 0x3FFFFFFFFFFFFFFCLL));
            v55 = (v56 + v48);
            v58 = (-8 * v65 + 8 * v50 + 16);
            v59 = (v48 + 2);
            v60 = v57 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v61 = *(v59 - 1);
              v62 = *v59;
              *(v59 - 1) = 0uLL;
              *v59 = 0uLL;
              *(v58 - 1) = v61;
              *v58 = v62;
              v58 += 2;
              v59 += 2;
              v60 -= 4;
            }

            while (v60);
            if (v57 != (v57 & 0x3FFFFFFFFFFFFFFCLL))
            {
LABEL_67:
              do
              {
                v63 = *v55;
                *v55++ = 0;
                *v56++ = v63;
              }

              while (v55 != v45);
            }

            NextResultAtOffset = v47;
            v16 = v67;
            do
            {
            }

            while (v48 != v45);
            v64 = __p;
            __p = 0;
            v75 = (8 * v50 + 8);
            v76 = 0;
            if (v64)
            {
              operator delete(v64);
            }
          }
        }

        else
        {
          *v75 = v44;
          v46 = (v45 + 8);
        }

        v75 = v46;

        ++v41;
        v9 = v68;
        v10 = v69;
      }

      while (v41 != v16);
    }

    v17 = ((v77 + 16 * ((*(v77 + 11) >> 23) & 1) + ((*(v77 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v77 + 10);
    v70 = v10;
    p_p = &__p;
    v72 = &v78;
    v73 = &v79;
    for (i = *(v17 + 8); i != v17; i = *(i + 8))
    {
      v19 = i - 8;
      if (!i)
      {
        v19 = 0;
      }

      v20 = *(v19 + 40);
      v21 = v19 + 32;
      if (v20 != v19 + 32)
      {
        do
        {
          v22 = *(v20 + 8);
          v23 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v20, v12);
          mlir::detail::walk<mlir::ForwardIterator>(v23, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::IfOpHandler::encodeCSCBOp(GPU::EncodeDescriptor *)::$_0>, &v70, 1);
          v20 = v22;
        }

        while (v22 != v21);
      }
    }

    [v9 encodeStartElse];
    v25 = ((v77 + 16 * ((*(v77 + 11) >> 23) & 1) + ((*(v77 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v77 + 10);
    v26 = v25 + 24;
    v70 = v10;
    p_p = &__p;
    v72 = &v78;
    v73 = &v79;
    v27 = *(v25 + 32);
    if (v27 != v25 + 24)
    {
      do
      {
        v28 = v27 - 8;
        if (!v27)
        {
          v28 = 0;
        }

        v29 = *(v28 + 40);
        v30 = v28 + 32;
        if (v29 != v28 + 32)
        {
          do
          {
            v31 = *(v29 + 8);
            v32 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v29, v24);
            mlir::detail::walk<mlir::ForwardIterator>(v32, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::IfOpHandler::encodeCSCBOp(GPU::EncodeDescriptor *)::$_1>, &v70, 1);
            v29 = v31;
          }

          while (v31 != v30);
        }

        v27 = *(v27 + 8);
      }

      while (v27 != v26);
    }

    [v9 encodeEndIf];
    BaseRuntime::clearScopeFromDataMap(*(v10 + 2), v77);
    GPURegionRuntime::clearScopeFromJITTypesMap(*(v10 + 2), v77);
    if (*(*(mlir::Block::getParentOp(*(*(v10 + 3) + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
    {
      v33 = v79;
      v34 = *(v79 + 9);
      if (v34)
      {
        [v34 endEncoding];
        v35 = *(v33 + 9);
        *(v33 + 9) = 0;

        v9 = v68;
      }
    }

    v36 = __p;
    if (__p)
    {
      v37 = v75;
      v38 = __p;
      if (v75 != __p)
      {
        do
        {
          v39 = *(v37 - 1);
          v37 -= 8;
        }

        while (v37 != v36);
        v38 = __p;
        v9 = v68;
      }

      v75 = v36;
      operator delete(v38);
    }

    return 1;
  }

  return v2;
}

void sub_1E0896360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23)
{
  std::vector<MPSGraphTensor * {__strong}>::~vector[abi:ne200100](&a19);

  _Unwind_Resume(a1);
}

void BaseRuntime::clearScopeFromDataMap(BaseRuntime *this, mlir::Operation *a2)
{
  v18 = a2;
  v3 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>(this + 11, &v18);
  if (v3)
  {
    v4 = v3;
    v5 = *(this + 96);
    v6 = v3[1];
    v7 = vcnt_s8(v5);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      if (v6 >= *&v5)
      {
        v6 %= *&v5;
      }
    }

    else
    {
      v6 &= *&v5 - 1;
    }

    v8 = *(this + 11);
    v9 = *(v8 + 8 * v6);
    do
    {
      v10 = v9;
      v9 = *v9;
    }

    while (v9 != v3);
    if (v10 == (this + 104))
    {
      goto LABEL_19;
    }

    v11 = v10[1];
    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v5)
      {
        v11 %= *&v5;
      }
    }

    else
    {
      v11 &= *&v5 - 1;
    }

    if (v11 != v6)
    {
LABEL_19:
      if (!*v3)
      {
        goto LABEL_20;
      }

      v12 = *(*v3 + 8);
      if (v7.u32[0] > 1uLL)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v6)
      {
LABEL_20:
        *(v8 + 8 * v6) = 0;
      }
    }

    v13 = *v3;
    if (*v3)
    {
      v14 = *(v13 + 8);
      if (v7.u32[0] > 1uLL)
      {
        if (v14 >= *&v5)
        {
          v14 %= *&v5;
        }
      }

      else
      {
        v14 &= *&v5 - 1;
      }

      if (v14 != v6)
      {
        *(v8 + 8 * v14) = v10;
        v13 = *v3;
      }
    }

    *v10 = v13;
    *v3 = 0;
    --*(this + 14);
    v15 = v3[5];
    if (v15)
    {
      do
      {
        v16 = *v15;

        operator delete(v15);
        v15 = v16;
      }

      while (v16);
    }

    v17 = v4[3];
    v4[3] = 0;
    if (v17)
    {
      operator delete(v17);
    }

    operator delete(v4);
  }
}

void GPU::IfOpHandler::encodeOp(GPU::IfOpHandler *this, id *a2)
{
  v31 = a2;
  v4 = *(this + 3);
  v5 = (*(**(this + 2) + 48))(*(this + 2), *(*(v4 + 72) + 24), 0);
  if (((*(*this + 64))(this, a2) & 1) == 0)
  {
    v6 = a2[9];
    if (v6)
    {
      [v6 endEncoding];
      v7 = a2[9];
      a2[9] = 0;
    }

    v8 = [v5 mpsndarray];
    v9 = a2[1];
    v10 = *(this + 15);
    v11 = [v5 mpsndarray];
    [v8 exportDataWithCommandBuffer:v9 toBuffer:v10 destinationDataType:objc_msgSend(v11 offset:"dataType") rowStrides:{0, 0}];

    v12 = [a2[1] rootCommandBuffer];
    (**a2)(a2);
    [v12 waitUntilCompleted];
    v13 = [*(this + 15) contents];
    v15 = ((v4 + 16 * ((*(v4 + 44) >> 23) & 1) + ((*(v4 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v4 + 40);
    if (*v13)
    {
      v29 = this;
      v30 = &v31;
      for (i = *(v15 + 8); i != v15; i = *(i + 8))
      {
        v17 = i - 8;
        if (!i)
        {
          v17 = 0;
        }

        v18 = *(v17 + 40);
        v19 = v17 + 32;
        if (v18 != v17 + 32)
        {
          do
          {
            v20 = *(v18 + 8);
            v21 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v18, v14);
            mlir::detail::walk<mlir::ForwardIterator>(v21, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::IfOpHandler::encodeOp(GPU::EncodeDescriptor *)::$_0>, &v29, 1);
            v18 = v20;
          }

          while (v20 != v19);
        }
      }
    }

    else
    {
      v22 = v15 + 24;
      v29 = this;
      v30 = &v31;
      for (j = *(v15 + 32); j != v22; j = *(j + 8))
      {
        v24 = j - 8;
        if (!j)
        {
          v24 = 0;
        }

        v25 = *(v24 + 40);
        v26 = v24 + 32;
        if (v25 != v24 + 32)
        {
          do
          {
            v27 = *(v25 + 8);
            v28 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v25, v14);
            mlir::detail::walk<mlir::ForwardIterator>(v28, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::IfOpHandler::encodeOp(GPU::EncodeDescriptor *)::$_1>, &v29, 1);
            v25 = v27;
          }

          while (v27 != v26);
        }
      }
    }

    GPURegionRuntime::clearScopeFromJITTypesMap(*(this + 2), v4);
  }
}

void GPU::ForOpHandler::ForOpHandler(GPU::ForOpHandler *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v23 = a3;
  v5 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v5 = &unk_1F5B536F8;
  *(v5 + 120) = 0u;
  *(v5 + 136) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 168) = 0u;
  *(v5 + 184) = 0u;
  *(v5 + 200) = 0u;
  v6 = [*(*(v5 + 2) + 48) metalDevice];
  if ([v6 supportsCommandBufferJump])
  {
    v7 = *(this + 40);
  }

  else
  {
    v7 = 0;
  }

  *(this + 41) = v7 & 1;

  v9 = ((*(this + 3) + 16 * ((*(*(this + 3) + 44) >> 23) & 1) + ((*(*(this + 3) + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*(this + 3) + 40);
  v20 = &v23;
  v21 = this;
  for (i = *(v9 + 8); i != v9; i = *(i + 8))
  {
    v11 = i - 8;
    if (!i)
    {
      v11 = 0;
    }

    v12 = *(v11 + 40);
    v13 = v11 + 32;
    if (v12 != v11 + 32)
    {
      do
      {
        v14 = *(v12 + 8);
        v15 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v12, v8);
        mlir::detail::walk<mlir::ForwardIterator>(v15, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::ForOpHandler::ForOpHandler(GPURegionRuntime *,mlir::Operation *,GPU::MPSGraphKernelDAG *)::$_0>, &v20, 1);
        v12 = v14;
      }

      while (v14 != v13);
    }
  }

  v16 = objc_alloc(MEMORY[0x1E6974740]);
  v17 = [*(*(this + 2) + 48) metalDevice];
  v18 = [v16 initWithDevice:v17];
  v19 = *(this + 1);
  *(this + 1) = v18;

  v20 = 0;
  v21 = 0;
  v22 = 0;
  operator new();
}

void sub_1E0896F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *__p, uint64_t a16)
{
  v19 = v18;

  GPU::BaseOpHandler::~BaseOpHandler(v16);
  _Unwind_Resume(a1);
}

uint64_t GPU::ForOpHandler::encodeCSCBOp(GPU::ForOpHandler *this, GPU::EncodeDescriptor *a2)
{
  v87[2] = *MEMORY[0x1E69E9840];
  v84 = a2;
  v77 = *(this + 41);
  if (v77 == 1)
  {
    v3 = (this + 8);
    v4 = *(this + 1);
    v79 = v3;
    v6 = (v3 + 1);
    v5 = v3[1];
    v82 = *(v6 + 1);
    v83 = v4;
    ODSOperandIndexAndLength = mlir::scf::ForOp::getODSOperandIndexAndLength(&v82, 1u, v7, v8);
    v78 = (*(*v5 + 48))(v5, *(*(v82 + 9) + 32 * ODSOperandIndexAndLength + 24), 0);
    v10 = *(this + 2);
    v13 = mlir::scf::ForOp::getODSOperandIndexAndLength(&v82, 2u, v11, v12);
    v76 = (*(*v10 + 48))(v10, *(*(v82 + 9) + 32 * v13 + 24), 0);
    v14 = v82;
    v16 = *(v82 + 10);
    v15 = *(v82 + 11);
    v17 = [v78 mpsndarray];
    objc_opt_class();
    LOBYTE(v10) = objc_opt_isKindOfClass();

    if (v10)
    {
      v18 = [v78 mpsndarray];
      [v18 setReadCount:{objc_msgSend(v18, "readCount") + 1}];
    }

    v19 = v83;
    v20 = GPU::EncodeDescriptor::getcomputeEncoder(v84);
    v21 = *(v84 + 1);
    v87[0] = *(this + 20);
    v22 = [v78 mpsndarray];
    v87[1] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:2];
    [v19 encodeToMPSCommandEncoder:v20 commandBuffer:v21 sourceArrays:v23 resultState:0 destinationArray:*(this + 24) kernelDAGObject:*(this + 25)];

    v24 = ((v14 + 16 * ((v15 >> 23) & 1) + ((v15 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v16;
    if (*(v82 + 9))
    {
      v25 = 0;
      v26 = 24;
      do
      {
        InitsMutable = mlir::scf::ForOp::getInitsMutable(&v82);
        v28 = (*(**(this + 2) + 48))(*(this + 2), *(InitsMutable + v26), 0);
        v29 = *(v24 + 8);
        if (v29)
        {
          v30 = v29 - 8;
        }

        else
        {
          v30 = 0;
        }

        v31 = *(*(v30 + 48) + 8 * v25 + 8);
        v32 = (*(**(this + 2) + 80))(*(this + 2), v31, *(v84 + 1), 0, 1, 1);
        v33 = *(this + 2);
        v34 = GPU::EncodeDescriptor::getcomputeEncoder(v84);

        ++v25;
        v26 += 32;
      }

      while (v25 < *(v82 + 9));
    }

    v35 = GPU::EncodeDescriptor::getcomputeEncoder(v84);
    [v35 encodeStartWhile:*(this + 19) offset:0 comparison:0 referenceValue:1];
    v80 = v35;
    v36 = *(((v82 + 16 * ((*(v82 + 11) >> 23) & 1) + ((*(v82 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v82 + 10) + 8);
    if (v36)
    {
      v37 = v36 - 8;
    }

    else
    {
      v37 = 0;
    }

    v38 = **(v37 + 48);
    v75 = [[MPSGraphTensorData alloc] initWithMPSNDArray:*(this + 20)];
    BaseRuntime::setTensorDataToDataMap(*(this + 2), v38, v75);
    v81[0] = this;
    v81[1] = v24;
    v81[2] = &v83;
    v81[3] = &v84;
    for (i = *(v24 + 8); i != v24; i = *(i + 8))
    {
      v41 = i - 8;
      if (!i)
      {
        v41 = 0;
      }

      v42 = *(v41 + 40);
      v43 = v41 + 32;
      if (v42 != v41 + 32)
      {
        do
        {
          v44 = *(v42 + 8);
          v45 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v42, v39);
          mlir::detail::walk<mlir::ForwardIterator>(v45, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::ForOpHandler::encodeCSCBOp(GPU::EncodeDescriptor *)::$_0>, v81, 1);
          v42 = v44;
        }

        while (v44 != v43);
      }
    }

    v46 = v83;
    v47 = GPU::EncodeDescriptor::getcomputeEncoder(v84);
    v48 = *(v84 + 1);
    v86[0] = *(this + 20);
    v49 = [v76 mpsndarray];
    v86[1] = v49;
    v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:2];
    [v46 encodeToMPSCommandEncoder:v47 commandBuffer:v48 sourceArrays:v50 resultState:0 destinationArray:*(this + 20) kernelDAGObject:*(this + 26)];

    v51 = v83;
    v52 = GPU::EncodeDescriptor::getcomputeEncoder(v84);
    v53 = *(v84 + 1);
    v85[0] = *(this + 20);
    v54 = [v78 mpsndarray];
    v85[1] = v54;
    v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:2];
    [v51 encodeToMPSCommandEncoder:v52 commandBuffer:v53 sourceArrays:v55 resultState:0 destinationArray:*(this + 24) kernelDAGObject:*(this + 25)];

    v56 = v80;
    [v80 encodeEndWhile];
    v57 = v82;
    if (*(v82 + 9))
    {
      v58 = 0;
      v59 = -16;
      v60 = -5;
      do
      {
        v61 = *(v24 + 8);
        if (v61)
        {
          v62 = v61 - 8;
        }

        else
        {
          v62 = 0;
        }

        v63 = (*(**(this + 2) + 48))(*(this + 2), *(*(v62 + 48) + 8 * v58 + 8), 0);
        v64 = *(this + 3);
        v65 = (v64 + v59);
        v66 = v64 - 24 * v60 - 96;
        if (v58 >= 6)
        {
          v67 = v66;
        }

        else
        {
          v67 = v65;
        }

        v68 = (*(**(this + 2) + 48))(*(this + 2), v67, 0);
        v69 = *(this + 2);
        v70 = GPU::EncodeDescriptor::getcomputeEncoder(v84);

        v56 = v80;
        ++v58;
        v57 = v82;
        ++v60;
        v59 -= 16;
      }

      while (v58 < *(v82 + 9));
    }

    BaseRuntime::clearScopeFromDataMap(*(this + 2), v57);
    GPURegionRuntime::clearScopeFromJITTypesMap(*(this + 2), v82);
    if (*(*(mlir::Block::getParentOp(*(*(this + 3) + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
    {
      v71 = v84;
      v72 = *(v84 + 9);
      if (v72)
      {
        [v72 endEncoding];
        v73 = *(v71 + 9);
        *(v71 + 9) = 0;
      }
    }
  }

  return v77;
}

void GPU::anonymous namespace::copyNDArrayOrListToTarget(void *a1, void *a2, void *a3, id *a4, void *a5, void *a6, void *a7, uint64_t a8)
{
  v19 = a2;
  v15 = a3;
  v16 = a5;
  v17 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    BaseRuntime::setTensorDataToDataMap(a1, a7, v16);
  }

  else
  {
    v18 = [v16 mpsndarray];
    GPURegionRuntime::copyNDArrayToTarget(a1, v19, v15, a4, v18, v17, a7, a8);
  }
}

void GPU::ForOpHandler::encodeOp(GPU::ForOpHandler *this, GPU::EncodeDescriptor *a2)
{
  v94[1] = *MEMORY[0x1E69E9840];
  v90 = a2;
  v3 = (this + 8);
  v81 = *(this + 1);
  v82 = v3;
  v4 = v3[1];
  v89 = v3[2];
  ODSOperandIndexAndLength = mlir::scf::ForOp::getODSOperandIndexAndLength(&v89, 0, v5, v6);
  v78 = (*(*v4 + 48))(v4, *(v89[9] + 32 * ODSOperandIndexAndLength + 24), 0);
  v8 = *(this + 2);
  v11 = mlir::scf::ForOp::getODSOperandIndexAndLength(&v89, 1u, v9, v10);
  v76 = (*(*v8 + 48))(v8, *(v89[9] + 32 * v11 + 24), 0);
  v12 = *(this + 2);
  v15 = mlir::scf::ForOp::getODSOperandIndexAndLength(&v89, 2u, v13, v14);
  v77 = (*(*v12 + 48))(v12, *(v89[9] + 32 * v15 + 24), 0);
  v17 = *(v89 + 10);
  v16 = *(v89 + 11);
  v88 = 0;
  v87 = 0;
  v18 = ((&v89[2 * ((v16 >> 23) & 1) + 8] + ((v16 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * v17;
  v19 = *(v18 + 8);
  if (v19)
  {
    v20 = v19 - 8;
  }

  else
  {
    v20 = 0;
  }

  v79 = **(v20 + 48);
  v80 = [[MPSGraphTensorData alloc] initWithMPSNDArray:*(this + 20)];
  v21 = GPU::EncodeDescriptor::getcomputeEncoder(v90);
  v22 = *(v90 + 1);
  v23 = [v78 mpsndarray];
  v94[0] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:1];
  [v81 encodeToMPSCommandEncoder:v21 commandBuffer:v22 sourceArrays:v24 resultState:0 destinationArray:*(this + 20) kernelDAGObject:0];

  if (((*(*this + 64))(this, v90) & 1) == 0)
  {
    v25 = v90;
    v26 = *(v90 + 9);
    if (v26)
    {
      [v26 endEncoding];
      v27 = *(v25 + 9);
      *(v25 + 9) = 0;
    }

    v28 = [v78 mpsndarray];
    v29 = *(v90 + 1);
    v30 = *(this + 16);
    v31 = [v78 mpsndarray];
    [v28 exportDataWithCommandBuffer:v29 toBuffer:v30 destinationDataType:objc_msgSend(v31 offset:"dataType") rowStrides:{0, 0}];

    v32 = [v76 mpsndarray];
    v33 = *(v90 + 1);
    v34 = *(this + 17);
    v35 = [v76 mpsndarray];
    [v32 exportDataWithCommandBuffer:v33 toBuffer:v34 destinationDataType:objc_msgSend(v35 offset:"dataType") rowStrides:{0, 0}];

    v36 = [v77 mpsndarray];
    v37 = *(v90 + 1);
    v38 = *(this + 18);
    v39 = [v77 mpsndarray];
    [v36 exportDataWithCommandBuffer:v37 toBuffer:v38 destinationDataType:objc_msgSend(v39 offset:"dataType") rowStrides:{0, 0}];

    v75 = [*(v90 + 1) rootCommandBuffer];
    (**v90)(v90);
    [v75 waitUntilCompleted];
    [*(this + 21) readBytes:&v88 + 4 strideBytes:0];
    [*(this + 22) readBytes:&v88 strideBytes:0];
    [*(this + 23) readBytes:&v87 strideBytes:0];
    if (*(v89 + 9))
    {
      for (i = 0; i < *(v89 + 9); ++i)
      {
        v41 = *(mlir::scf::ForOp::getInitsMutable(&v89) + 32 * i + 24);
        v42 = (*(**(this + 2) + 48))(*(this + 2), v41, 0);
        if (HIDWORD(v88) >= v88)
        {
          v46 = *(this + 3);
          v47 = v46 - 24 * (i - 5) - 96;
          v48 = (v46 + 16 * ~i);
          if (i <= 5)
          {
            v45 = v48;
          }

          else
          {
            v45 = v47;
          }
        }

        else
        {
          v43 = *(v18 + 8);
          if (v43)
          {
            v44 = v43 - 8;
          }

          else
          {
            v44 = 0;
          }

          v45 = *(*(v44 + 48) + 8 * i + 8);
        }

        v49 = (*(**(this + 2) + 48))(*(this + 2), v45, 0);
        v50 = *(this + 2);
        v51 = (*(v41 + 8) & 0xFFFFFFFFFFFFFFF8);
        if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v51 + 8))
        {
          v52 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v51 + 8);
          v83 = v51;
          v84 = v52;
          if (!v51)
          {
            goto LABEL_28;
          }

          if (!mlir::CallOpInterface::getArgOperands(&v83))
          {
            goto LABEL_27;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v83);
          if (v54)
          {
            v55 = 8 * v54;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v55 -= 8;
              if (!v55)
              {
                goto LABEL_28;
              }
            }

LABEL_27:
            StaticType = GPURegionRuntime::getStaticType(v50, v41);
            v92 = v45;
            v91[1] = StaticType;
            v91[0] = *(mlir::Value::getParentRegion(&v92) + 2);
            v83 = v91;
            v57 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>>>::__emplace_unique_key_args<mlir::Operation *,std::piecewise_construct_t const&,std::tuple<mlir::Operation * const&>,std::tuple<>>((v50 + 288), v91);
            v83 = v92;
            std::__hash_table<std::__hash_value_type<void *,mlir::Type>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,mlir::Type>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,mlir::Type>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,mlir::Type>>>::__emplace_unique_key_args<void *,void *,mlir::Type&>(v57 + 3, &v83);
          }
        }

        else
        {
          v83 = 0;
          v84 = 0;
        }

LABEL_28:
        v58 = *(this + 2);
        v59 = GPU::EncodeDescriptor::getcomputeEncoder(v90);
      }
    }

    v60 = v88;
    v61 = HIDWORD(v88);
    if (HIDWORD(v88) < v88)
    {
      v62 = v87;
      do
      {
        LOBYTE(v92) = v61 + v62 >= v60;
        BaseRuntime::setTensorDataToDataMap(*(this + 2), v79, v80);
        v83 = this;
        v84 = &v89;
        v85 = &v92;
        v86 = &v90;
        for (j = *(v18 + 8); j != v18; j = *(j + 8))
        {
          v65 = j - 8;
          if (!j)
          {
            v65 = 0;
          }

          v66 = *(v65 + 40);
          v67 = v65 + 32;
          if (v66 != v65 + 32)
          {
            do
            {
              v68 = *(v66 + 8);
              v69 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v66, v63);
              mlir::detail::walk<mlir::ForwardIterator>(v69, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::ForOpHandler::encodeOp(GPU::EncodeDescriptor *)::$_0>, &v83, 1);
              v66 = v68;
            }

            while (v68 != v67);
          }
        }

        v70 = GPU::EncodeDescriptor::getcomputeEncoder(v90);
        v71 = *(v90 + 1);
        v72 = *(this + 23);
        v93[0] = *(this + 20);
        v93[1] = v72;
        v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:2];
        [v81 encodeToMPSCommandEncoder:v70 commandBuffer:v71 sourceArrays:v73 resultState:0 destinationArray:*(this + 20) kernelDAGObject:*(this + 26)];

        HIDWORD(v74) = -858993459 * v61;
        LODWORD(v74) = -858993459 * v61;
        if ((v74 >> 1) <= 0x19999999)
        {
          (**v90)(v90);
        }

        v62 = v87;
        v60 = v88;
        v61 += v87;
      }

      while (v61 < v88);
    }
  }
}

GPU::WhileOpHandler *GPU::WhileOpHandler::WhileOpHandler(GPU::WhileOpHandler *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v5 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *(v5 + 15) = 0;
  v6 = (v5 + 120);
  *v5 = &unk_1F5B53750;
  *(v5 + 18) = v5 + 168;
  *(v5 + 16) = 0;
  *(v5 + 17) = 0;
  *(v5 + 152) = xmmword_1E096FB00;
  v7 = [*(*(v5 + 2) + 48) metalDevice];
  if ([v7 supportsCommandBufferJump])
  {
    v8 = *(this + 40);
  }

  else
  {
    v8 = 0;
  }

  *(this + 41) = v8 & 1;

  v10 = *(this + 3);
  v11 = *(v10 + 44);
  v12 = (v11 >> 23) & 1;
  v13 = (v11 >> 21) & 0x7F8;
  v14 = 32 * *(v10 + 40);
  v15 = ((v10 + 64 + 16 * v12 + v13 + 7) & 0xFFFFFFFFFFFFFFF8) + v14;
  v44[0] = this;
  v16 = *(v15 + 8);
  if (v16 != v15)
  {
    do
    {
      v17 = v16 - 8;
      if (!v16)
      {
        v17 = 0;
      }

      v18 = *(v17 + 40);
      v19 = v17 + 32;
      if (v18 != v17 + 32)
      {
        do
        {
          v20 = *(v18 + 8);
          v21 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v18, v9);
          mlir::detail::walk<mlir::ForwardIterator>(v21, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::WhileOpHandler::WhileOpHandler(GPURegionRuntime *,mlir::Operation *,GPU::MPSGraphKernelDAG *)::$_0>, v44, 1);
          v18 = v20;
        }

        while (v20 != v19);
      }

      v16 = *(v16 + 8);
    }

    while (v16 != v15);
    v22 = *(v10 + 44);
    v12 = (v22 >> 23) & 1;
    v13 = (v22 >> 21) & 0x7F8;
    v14 = 32 * *(v10 + 40);
  }

  v23 = ((v10 + 64 + 16 * v12 + v13 + 7) & 0xFFFFFFFFFFFFFFF8) + v14;
  v24 = v23 + 24;
  v44[0] = this;
  v25 = *(v23 + 32);
  if (v25 != v23 + 24)
  {
    do
    {
      v26 = v25 - 8;
      if (!v25)
      {
        v26 = 0;
      }

      v27 = *(v26 + 40);
      v28 = v26 + 32;
      if (v27 != v26 + 32)
      {
        do
        {
          v29 = *(v27 + 8);
          v30 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v27, v9);
          mlir::detail::walk<mlir::ForwardIterator>(v30, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::WhileOpHandler::WhileOpHandler(GPURegionRuntime *,mlir::Operation *,GPU::MPSGraphKernelDAG *)::$_1>, v44, 1);
          v27 = v29;
        }

        while (v29 != v28);
      }

      v25 = *(v25 + 8);
    }

    while (v25 != v24);
  }

  v31 = objc_alloc(MEMORY[0x1E6974740]);
  v32 = [*(*(this + 2) + 48) metalDevice];
  v33 = [v31 initWithDevice:v32];
  v34 = *(this + 1);
  *(this + 1) = v33;

  if (*(this + 41))
  {
    v35 = 32;
  }

  else
  {
    v35 = 2147483656;
  }

  if (*(this + 41))
  {
    v36 = 4;
  }

  else
  {
    v36 = 1;
  }

  if (*(this + 41))
  {
    memset(v44, 0, sizeof(v44));
    operator new();
  }

  v37 = [MEMORY[0x1E6974490] descriptorWithDataType:v35 shape:&unk_1F5B77D98];
  [v37 setPreferPackedRows:1];
  v38 = [*(*(this + 2) + 48) metalDevice];
  v39 = [v38 newBufferWithLength:v36 options:0];
  v40 = *v6;
  *v6 = v39;

  v41 = [objc_alloc(MEMORY[0x1E6974488]) initWithBuffer:*v6 descriptor:v37];
  v42 = *(this + 16);
  *(this + 16) = v41;

  return this;
}

void sub_1E08989A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, void *__p, uint64_t a17)
{
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](&a14);
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
    v19 = *v18;
    if (*v18 == a10)
    {
LABEL_4:

      GPU::BaseOpHandler::~BaseOpHandler(v17);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v19 = *v18;
    if (*v18 == a10)
    {
      goto LABEL_4;
    }
  }

  free(v19);
  goto LABEL_4;
}

void sub_1E0898B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (*v10 != a10)
  {
    JUMPOUT(0x1E0898A44);
  }

  JUMPOUT(0x1E0898A48);
}

void sub_1E0898B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (*v10 != a10)
  {
    JUMPOUT(0x1E0898A44);
  }

  JUMPOUT(0x1E0898A48);
}

void sub_1E0898B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (*v10 != a10)
  {
    JUMPOUT(0x1E0898A44);
  }

  JUMPOUT(0x1E0898A48);
}

uint64_t GPU::WhileOpHandler::encodeCSCBOp(GPU::WhileOpHandler *this, GPU::EncodeDescriptor *a2)
{
  v68 = a2;
  v2 = *(this + 41);
  if (v2 == 1)
  {
    v4 = this + 8;
    v5 = *(this + 1);
    v7 = 0;
    v60 = v4;
    v66 = *(v4 + 2);
    v67 = v5;
    v8 = (((v66 + 16 * ((*(v66 + 11) >> 23) & 1) + ((*(v66 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v66 + 10));
    v9 = v8 + 3;
    for (i = 24; *v8 != v8; i += 32)
    {
      v11 = v8[1];
      if (v11)
      {
        v12 = v11 - 8;
      }

      else
      {
        v12 = 0;
      }

      if (v7 >= ((*(v12 + 56) - *(v12 + 48)) >> 3))
      {
        break;
      }

      v13 = v8[1];
      v14 = v13 ? v13 - 8 : 0;
      v15 = *(*(v14 + 48) + 8 * v7);
      v16 = (*(**(this + 2) + 48))(*(this + 2), *(*(*(this + 3) + 72) + i), 0);
      v17 = *(this + 2);
      v18 = GPU::EncodeDescriptor::getcomputeEncoder(v68);

      ++v7;
    }

    v61 = this;
    v62 = &v67;
    v63 = &v68;
    v64 = &v66;
    v65 = v8 + 3;
    for (j = v8[1]; j != v8; j = j[1])
    {
      v20 = j - 1;
      if (!j)
      {
        v20 = 0;
      }

      v21 = v20[5];
      v22 = v20 + 4;
      if (v21 != v20 + 4)
      {
        do
        {
          v23 = v21[1];
          v24 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v21, v6);
          mlir::detail::walk<mlir::ForwardIterator>(v24, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::WhileOpHandler::encodeCSCBOp(GPU::EncodeDescriptor *)::$_0>, &v61, 1);
          v21 = v23;
        }

        while (v23 != v22);
      }
    }

    GPURegionRuntime::clearScopeFromJITTypesMap(*(this + 2), v66);
    v25 = GPU::EncodeDescriptor::getcomputeEncoder(v68);
    [v25 encodeStartWhile:*(this + 15) offset:0 comparison:0 referenceValue:1];
    v61 = this;
    v62 = v8;
    v63 = &v68;
    for (k = v8[4]; k != v9; k = k[1])
    {
      v28 = k - 1;
      if (!k)
      {
        v28 = 0;
      }

      v29 = v28[5];
      v30 = v28 + 4;
      if (v29 != v28 + 4)
      {
        do
        {
          v31 = v29[1];
          v32 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v29, v26);
          mlir::detail::walk<mlir::ForwardIterator>(v32, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::WhileOpHandler::encodeCSCBOp(GPU::EncodeDescriptor *)::$_1>, &v61, 1);
          v29 = v31;
        }

        while (v31 != v30);
      }
    }

    v61 = this;
    v62 = &v67;
    v63 = &v68;
    v64 = (v8 + 3);
    for (m = v8[1]; m != v8; m = m[1])
    {
      v34 = m - 1;
      if (!m)
      {
        v34 = 0;
      }

      v35 = v34[5];
      v36 = v34 + 4;
      if (v35 != v34 + 4)
      {
        do
        {
          v37 = v35[1];
          v38 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v35, v26);
          mlir::detail::walk<mlir::ForwardIterator>(v38, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::WhileOpHandler::encodeCSCBOp(GPU::EncodeDescriptor *)::$_2>, &v61, 1);
          v35 = v37;
        }

        while (v37 != v36);
      }
    }

    [v25 encodeEndWhile];
    v39 = v66;
    v59 = *(v66 + 9);
    if (v59)
    {
      v40 = 0;
      v41 = -16;
      v42 = 24;
      v58 = v8;
      do
      {
        v43 = v8[4];
        if (v43)
        {
          v44 = v43 - 8;
        }

        else
        {
          v44 = 0;
        }

        v45 = (*(**(this + 2) + 48))(*(this + 2), *(*(v44 + 48) + 8 * v40), 0);
        v46 = v25;
        v47 = *(this + 3);
        v48 = (v47 + v41);
        v49 = (v47 + v42);
        if (v40 >= 6)
        {
          v50 = v49;
        }

        else
        {
          v50 = v48;
        }

        v51 = (*(**(this + 2) + 48))(*(this + 2), v50, 0);
        v52 = *(this + 2);
        v53 = GPU::EncodeDescriptor::getcomputeEncoder(v68);

        ++v40;
        v42 -= 24;
        v41 -= 16;
        v25 = v46;
        v8 = v58;
      }

      while (v59 != v40);
      v39 = v66;
    }

    BaseRuntime::clearScopeFromDataMap(*(this + 2), v39);
    v2 = 1;
    GPURegionRuntime::clearScopeFromJITTypesMap(*(this + 2), v66);
    if (*(*(mlir::Block::getParentOp(*(*(this + 3) + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
    {
      v54 = v68;
      v55 = *(v68 + 9);
      if (v55)
      {
        [v55 endEncoding];
        v56 = *(v54 + 9);
        *(v54 + 9) = 0;
      }
    }
  }

  return v2;
}

uint64_t GPU::WhileOpHandler::encodeOp(GPU::WhileOpHandler *this, void **a2)
{
  v4 = *(this + 3);
  v43 = v4;
  v44 = a2;
  v5 = *(v4 + 40);
  v6 = *(v4 + 44);
  result = (*(*this + 64))(this);
  if (result)
  {
    return result;
  }

  v9 = 0;
  v10 = (((v4 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v5);
  for (i = v10 + 3; *v10 != v10; ++v9)
  {
    v12 = v10[1];
    if (v12)
    {
      v13 = v12 - 8;
    }

    else
    {
      v13 = 0;
    }

    if (v9 >= ((*(v13 + 56) - *(v13 + 48)) >> 3))
    {
      break;
    }

    v14 = v10[1];
    if (v14)
    {
      v15 = v14 - 8;
    }

    else
    {
      v15 = 0;
    }

    v16 = *(*(v15 + 48) + 8 * v9);
    v17 = *(*(*(this + 3) + 72) + 32 * v9 + 24);
    v18 = (*(**(this + 2) + 48))(*(this + 2), v17, 0);
    v19 = *(this + 2);
    v20 = (*(v17 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8))
    {
      v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
      v38 = v20;
      v39 = v21;
      if (!v20)
      {
        goto LABEL_24;
      }

      if (!mlir::CallOpInterface::getArgOperands(&v38))
      {
        goto LABEL_23;
      }

      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v38);
      if (v23)
      {
        v24 = 8 * v23;
        while (*ArgAttrsAttr != 0x8000000000000000)
        {
          ++ArgAttrsAttr;
          v24 -= 8;
          if (!v24)
          {
            goto LABEL_24;
          }
        }

LABEL_23:
        v45[1] = GPURegionRuntime::getStaticType(v19, v17);
        v46 = v16;
        v45[0] = *(mlir::Value::getParentRegion(&v46) + 2);
        v38 = v45;
        v25 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>>>::__emplace_unique_key_args<mlir::Operation *,std::piecewise_construct_t const&,std::tuple<mlir::Operation * const&>,std::tuple<>>((v19 + 288), v45);
        v38 = v46;
        std::__hash_table<std::__hash_value_type<void *,mlir::Type>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,mlir::Type>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,mlir::Type>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,mlir::Type>>>::__emplace_unique_key_args<void *,void *,mlir::Type&>(v25 + 3, &v38);
      }
    }

    else
    {
      v38 = 0;
      v39 = 0;
    }

LABEL_24:
    v26 = *(this + 2);
    v27 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  }

  LOBYTE(v46) = 1;
  while (1)
  {
    v38 = this;
    v39 = &v44;
    v40 = &v46;
    v41 = &v43;
    v42 = v10 + 3;
    v28 = v10[1];
    if (v28 != v10)
    {
      do
      {
        v29 = v28 - 1;
        if (!v28)
        {
          v29 = 0;
        }

        result = v29[5];
        v30 = v29 + 4;
        if (result != v29 + 4)
        {
          do
          {
            v31 = *(result + 8);
            v32 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(result, v8);
            mlir::detail::walk<mlir::ForwardIterator>(v32, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::WhileOpHandler::encodeOp(GPU::EncodeDescriptor *)::$_0>, &v38, 1);
            result = v31;
          }

          while (v31 != v30);
        }

        v28 = v28[1];
      }

      while (v28 != v10);
      if ((v46 & 1) == 0)
      {
        break;
      }
    }

    v38 = this;
    v39 = &v44;
    v33 = v10[4];
    if (v33 != i)
    {
      do
      {
        v34 = v33 - 1;
        if (!v33)
        {
          v34 = 0;
        }

        result = v34[5];
        v35 = v34 + 4;
        if (result != v34 + 4)
        {
          do
          {
            v36 = *(result + 8);
            v37 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(result, v8);
            mlir::detail::walk<mlir::ForwardIterator>(v37, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::WhileOpHandler::encodeOp(GPU::EncodeDescriptor *)::$_1>, &v38, 1);
            result = v36;
          }

          while (v36 != v35);
        }

        v33 = v33[1];
      }

      while (v33 != i);
      if ((v46 & 1) == 0)
      {
        break;
      }
    }
  }

  return result;
}

GPU::YieldOpHandler *GPU::YieldOpHandler::YieldOpHandler(GPU::YieldOpHandler *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4) = &unk_1F5B537A8;
  v5 = objc_alloc(MEMORY[0x1E6974740]);
  v6 = [*(*(this + 2) + 48) metalDevice];
  v7 = [v5 initWithDevice:v6];
  v8 = *(this + 1);
  *(this + 1) = v7;

  return this;
}

void GPU::YieldOpHandler::encodeOp(GPU::YieldOpHandler *this, void **a2)
{
  v68[4] = *MEMORY[0x1E69E9840];
  v3 = *(this + 3);
  if ((*(v3 + 46) & 0x80) != 0)
  {
    if (*(v3 + 68))
    {
      operator new();
    }

    v4 = *(this + 2);
    v5 = *(v3 + 16);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_7:
    ParentOp = 0;
    goto LABEL_8;
  }

  v4 = *(this + 2);
  v5 = *(v3 + 16);
  if (!v5)
  {
    goto LABEL_7;
  }

LABEL_5:
  ParentOp = mlir::Block::getParentOp(v5);
LABEL_8:
  BaseRuntime::clearScopeFromDataMap(v4, ParentOp);
  v7 = *(this + 3);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = mlir::Block::getParentOp(v8);
    if (!v9)
    {
      v10 = *(*(this + 3) + 16);
      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }

    v7 = *(this + 3);
    if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id)
    {
      if ((*(v7 + 46) & 0x80) == 0)
      {
        return;
      }

      v58 = *(v7 + 68);
      if (!v58)
      {
        return;
      }

      v15 = 0;
      while (1)
      {
        v16 = *(*(this + 3) + 16);
        if (v16)
        {
          v16 = mlir::Block::getParentOp(v16);
        }

        if (v15 >= 6)
        {
          v17 = (v16 + 24 * (5 - v15) - 96);
        }

        else
        {
          v17 = (v16 + 16 * ~v15);
        }

        v18 = *(8 * v15);
        v19 = (*(**(this + 2) + 48))(*(this + 2), v17, 0);
        v20 = *(this + 2);
        v21 = *(*(*(this + 3) + 72) + 32 * v15 + 24);
        v22 = (*(v21 + 8) & 0xFFFFFFFFFFFFFFF8);
        if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8))
        {
          v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
          v66 = v22;
          v67 = v23;
          if (!v22)
          {
            goto LABEL_40;
          }

          if (!mlir::CallOpInterface::getArgOperands(&v66))
          {
            goto LABEL_39;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v66);
          if (v25)
          {
            v26 = 8 * v25;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v26 -= 8;
              if (!v26)
              {
                goto LABEL_40;
              }
            }

LABEL_39:
            StaticType = GPURegionRuntime::getStaticType(v20, v21);
            v64 = v17;
            v63 = StaticType;
            v62 = *(mlir::Value::getParentRegion(&v64) + 2);
            v66 = &v62;
            v28 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>>>::__emplace_unique_key_args<mlir::Operation *,std::piecewise_construct_t const&,std::tuple<mlir::Operation * const&>,std::tuple<>>((v20 + 288), &v62);
            v66 = v64;
            std::__hash_table<std::__hash_value_type<void *,mlir::Type>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,mlir::Type>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,mlir::Type>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,mlir::Type>>>::__emplace_unique_key_args<void *,void *,mlir::Type&>(v28 + 3, &v66);
          }
        }

        else
        {
          v66 = 0;
          v67 = 0;
        }

LABEL_40:
        v29 = *(this + 2);
        v30 = GPU::EncodeDescriptor::getcomputeEncoder(a2);

        if (++v15 == v58)
        {
          return;
        }
      }
    }
  }

  v10 = *(v7 + 16);
  if (!v10)
  {
LABEL_19:
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    return;
  }

LABEL_14:
  v11 = mlir::Block::getParentOp(v10);
  v12 = v11;
  if (!v11)
  {
    goto LABEL_19;
  }

  v13 = *(*(v11 + 48) + 16);
  v14 = v13 == &mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id ? v11 : 0;
  if (v13 != &mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id)
  {
    goto LABEL_19;
  }

  v31 = *(this + 3);
  v32 = *(v31 + 44);
  if ((v32 & 0x800000) != 0)
  {
    v33 = *(v31 + 68);
  }

  else
  {
    v33 = 0;
  }

  v34 = *(v11 + 40);
  v35 = *(v11 + 44);
  v66 = v68;
  v67 = 0x400000000;
  if ((v32 & 0x800000) == 0)
  {
    goto LABEL_53;
  }

  v36 = *(v31 + 68);
  if (v36 < 5)
  {
    goto LABEL_48;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, v68, v36, 8);
  v31 = *(this + 3);
  if ((*(v31 + 46) & 0x80) != 0)
  {
    LODWORD(v36) = *(v31 + 68);
LABEL_48:
    if (v36)
    {
      v37 = v36;
      v38 = (*(v31 + 72) + 24);
      do
      {
        v39 = GPURegionRuntime::getStaticType(*(this + 2), *v38);
        v40 = v67;
        if (v67 >= HIDWORD(v67))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, v68, v67 + 1, 8);
          v40 = v67;
        }

        *(v66 + v40) = v39;
        LODWORD(v67) = v67 + 1;
        v38 += 4;
        --v37;
      }

      while (v37);
    }
  }

LABEL_53:
  GPURegionRuntime::clearScopeFromJITTypesMap(*(this + 2), v14);
  if (v33)
  {
    v41 = 0;
    v57 = v33;
    v59 = ((v12 + 16 * ((v35 >> 23) & 1) + ((v35 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v34;
    do
    {
      v42 = *(v59 + 8);
      if (v42)
      {
        v43 = v42 - 8;
      }

      else
      {
        v43 = 0;
      }

      v44 = *(*(v43 + 48) + 8 * v41);
      v45 = *(8 * v41);
      v46 = *(this + 2);
      v47 = *(*(*(this + 3) + 72) + 32 * v41 + 24);
      v48 = *(v66 + v41);
      v49 = (*(v47 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v49 + 8))
      {
        v50 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v49 + 8);
        v64 = v49;
        v65 = v50;
        if (v49)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v64))
          {
            goto LABEL_68;
          }

          v51 = mlir::CallableOpInterface::getArgAttrsAttr(&v64);
          if (v52)
          {
            v53 = 8 * v52;
            while (*v51 != 0x8000000000000000)
            {
              ++v51;
              v53 -= 8;
              if (!v53)
              {
                goto LABEL_71;
              }
            }

LABEL_68:
            if (!v48)
            {
              v48 = GPURegionRuntime::getStaticType(v46, v47);
            }

            v62 = v48;
            v63 = v44;
            v61 = *(mlir::Value::getParentRegion(&v63) + 2);
            v64 = &v61;
            v54 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>>>::__emplace_unique_key_args<mlir::Operation *,std::piecewise_construct_t const&,std::tuple<mlir::Operation * const&>,std::tuple<>>((v46 + 288), &v61);
            v64 = v63;
            std::__hash_table<std::__hash_value_type<void *,mlir::Type>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,mlir::Type>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,mlir::Type>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,mlir::Type>>>::__emplace_unique_key_args<void *,void *,mlir::Type&>(v54 + 3, &v64);
          }
        }
      }

      else
      {
        v64 = 0;
        v65 = 0;
      }

LABEL_71:
      v55 = *(this + 2);
      v56 = GPU::EncodeDescriptor::getcomputeEncoder(a2);

      ++v41;
    }

    while (v41 != v57);
  }

  if (v66 != v68)
  {
    free(v66);
  }
}

void sub_1E0899DCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (a23 != a9)
  {
    free(a23);
    std::vector<MPSGraphTensor * {__strong}>::~vector[abi:ne200100](&a14);
    _Unwind_Resume(a1);
  }

  std::vector<MPSGraphTensor * {__strong}>::~vector[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

void GPU::ConditionOpHandler::~ConditionOpHandler(GPU::ConditionOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::IfOpHandler::~IfOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::ForOpHandler::~ForOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::WhileOpHandler::~WhileOpHandler(GPU::WhileOpHandler *this)
{
  *this = &unk_1F5B53750;
  v2 = *(this + 18);
  if (v2 != this + 168)
  {
    free(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B53750;
  v2 = *(this + 18);
  if (v2 != this + 168)
  {
    free(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::YieldOpHandler::~YieldOpHandler(GPU::YieldOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

mlir::Block *llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::IfOpHandler::IfOpHandler(GPURegionRuntime *,mlir::Operation *,GPU::MPSGraphKernelDAG *)::$_0>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = *(a2 + 16);
  if (result)
  {
    result = mlir::Block::getParentOp(result);
  }

  if (result == *(v3 + 24))
  {
    result = (*(**(v3 + 16) + 72))(*(v3 + 16), a2, *(v3 + 32));
    if (*(v3 + 41) == 1)
    {
      *(v3 + 41) = *(result + 41) & 1;
    }

    else
    {
      *(v3 + 41) = 0;
    }
  }

  return result;
}

mlir::Block *llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::IfOpHandler::IfOpHandler(GPURegionRuntime *,mlir::Operation *,GPU::MPSGraphKernelDAG *)::$_1>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = *(a2 + 16);
  if (result)
  {
    result = mlir::Block::getParentOp(result);
  }

  if (result == *(v3 + 24))
  {
    result = (*(**(v3 + 16) + 72))(*(v3 + 16), a2, *(v3 + 32));
    if (*(v3 + 41) == 1)
    {
      *(v3 + 41) = *(result + 41) & 1;
    }

    else
    {
      *(v3 + 41) = 0;
    }
  }

  return result;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::IfOpHandler::encodeCSCBOp(GPU::EncodeDescriptor *)::$_0>(uint64_t *a1, mlir::Block **a2)
{
  v2 = a2;
  v20[1] = *MEMORY[0x1E69E9840];
  v19 = *a1;
  ParentOp = a2[2];
  if (ParentOp)
  {
    ParentOp = mlir::Block::getParentOp(ParentOp);
  }

  if (ParentOp == *(v19 + 24))
  {
    if (*(*(v2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
    {
      if ((*(v2 + 46) & 0x80) != 0)
      {
        v6 = *(v2 + 17);
        if (v6)
        {
          v7 = 0;
          v17 = 8 * v6;
          v8 = 24;
          do
          {
            v9 = v2;
            v10 = (*(**(v19 + 16) + 48))(*(v19 + 16), *(*(v2 + 9) + v8), 0);
            v11 = *(*a1[1] + v7);
            v12 = *a1[2];
            v13 = GPU::EncodeDescriptor::getcomputeEncoder(*a1[3]);
            v14 = *(*a1[3] + 8);
            v15 = [v10 mpsndarray];
            v20[0] = v15;
            v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
            [v12 encodeToMPSCommandEncoder:v13 commandBuffer:v14 sourceArrays:v16 resultState:0 destinationArray:v11 kernelDAGObject:0];

            v7 += 8;
            v8 += 32;
            v2 = v9;
          }

          while (v17 != v7);
        }
      }
    }

    else
    {
      v4 = *(v19 + 16);
      v5 = *a1[3];

      GPURegionRuntime::encodeOp(v4, v2, v5);
    }
  }
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::IfOpHandler::encodeCSCBOp(GPU::EncodeDescriptor *)::$_1>(uint64_t *a1, mlir::Block **a2)
{
  v2 = a2;
  v20[1] = *MEMORY[0x1E69E9840];
  v19 = *a1;
  ParentOp = a2[2];
  if (ParentOp)
  {
    ParentOp = mlir::Block::getParentOp(ParentOp);
  }

  if (ParentOp == *(v19 + 24))
  {
    if (*(*(v2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
    {
      if ((*(v2 + 46) & 0x80) != 0)
      {
        v6 = *(v2 + 17);
        if (v6)
        {
          v7 = 0;
          v17 = 8 * v6;
          v8 = 24;
          do
          {
            v9 = v2;
            v10 = (*(**(v19 + 16) + 48))(*(v19 + 16), *(*(v2 + 9) + v8), 0);
            v11 = *(*a1[1] + v7);
            v12 = *a1[2];
            v13 = GPU::EncodeDescriptor::getcomputeEncoder(*a1[3]);
            v14 = *(*a1[3] + 8);
            v15 = [v10 mpsndarray];
            v20[0] = v15;
            v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
            [v12 encodeToMPSCommandEncoder:v13 commandBuffer:v14 sourceArrays:v16 resultState:0 destinationArray:v11 kernelDAGObject:0];

            v7 += 8;
            v8 += 32;
            v2 = v9;
          }

          while (v17 != v7);
        }
      }
    }

    else
    {
      v4 = *(v19 + 16);
      v5 = *a1[3];

      GPURegionRuntime::encodeOp(v4, v2, v5);
    }
  }
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::IfOpHandler::encodeOp(GPU::EncodeDescriptor *)::$_0>(uint64_t *a1, mlir::Operation *a2)
{
  v4 = *a1;
  ParentOp = *(a2 + 2);
  if (ParentOp)
  {
    ParentOp = mlir::Block::getParentOp(ParentOp);
  }

  if (ParentOp == *(v4 + 24))
  {
    v6 = *(v4 + 16);
    v7 = *a1[1];

    GPURegionRuntime::encodeOp(v6, a2, v7);
  }
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::IfOpHandler::encodeOp(GPU::EncodeDescriptor *)::$_1>(uint64_t *a1, mlir::Operation *a2)
{
  v4 = *a1;
  ParentOp = *(a2 + 2);
  if (ParentOp)
  {
    ParentOp = mlir::Block::getParentOp(ParentOp);
  }

  if (ParentOp == *(v4 + 24))
  {
    v6 = *(v4 + 16);
    v7 = *a1[1];

    GPURegionRuntime::encodeOp(v6, a2, v7);
  }
}

mlir::Block *llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::ForOpHandler::ForOpHandler(GPURegionRuntime *,mlir::Operation *,GPU::MPSGraphKernelDAG *)::$_0>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  result = *(a2 + 16);
  if (result)
  {
    result = mlir::Block::getParentOp(result);
  }

  if (result == **a1)
  {
    result = (*(**(v4 + 16) + 72))(*(v4 + 16), a2, *(v4 + 32));
    if (*(v4 + 41) == 1)
    {
      *(v4 + 41) = *(result + 41) & 1;
    }

    else
    {
      *(v4 + 41) = 0;
    }
  }

  return result;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::ForOpHandler::encodeCSCBOp(GPU::EncodeDescriptor *)::$_0>(uint64_t *a1, mlir::Block **a2)
{
  v2 = a2;
  v22[1] = *MEMORY[0x1E69E9840];
  v20 = *a1;
  ParentOp = a2[2];
  if (ParentOp)
  {
    ParentOp = mlir::Block::getParentOp(ParentOp);
  }

  if (ParentOp == *(v20 + 24))
  {
    if (*(*(v2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
    {
      if ((*(v2 + 46) & 0x80) != 0)
      {
        v6 = *(v2 + 17);
        if (v6)
        {
          v7 = 8;
          v8 = 24;
          v18 = v2;
          do
          {
            v21 = (*(**(v20 + 16) + 48))(*(v20 + 16), *(*(v2 + 9) + v8), 0);
            v9 = *(a1[1] + 8);
            if (v9)
            {
              v10 = v9 - 8;
            }

            else
            {
              v10 = 0;
            }

            v11 = (*(**(v20 + 16) + 48))(*(v20 + 16), *(*(v10 + 48) + v7), 0);
            v12 = *a1[2];
            v13 = GPU::EncodeDescriptor::getcomputeEncoder(*a1[3]);
            v14 = *(*a1[3] + 8);
            v15 = [v21 mpsndarray];
            v22[0] = v15;
            v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
            v17 = [v11 mpsndarray];
            [v12 encodeToMPSCommandEncoder:v13 commandBuffer:v14 sourceArrays:v16 resultState:0 destinationArray:v17 kernelDAGObject:0];

            v7 += 8;
            v8 += 32;
            --v6;
            v2 = v18;
          }

          while (v6);
        }
      }
    }

    else
    {
      v4 = *(v20 + 16);
      v5 = *a1[3];

      GPURegionRuntime::encodeOp(v4, v2, v5);
    }
  }
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::ForOpHandler::encodeOp(GPU::EncodeDescriptor *)::$_0>(void *a1, mlir::Block **a2)
{
  v2 = a2;
  v3 = a1;
  v59[4] = *MEMORY[0x1E69E9840];
  v4 = *a1;
  ParentOp = a2[2];
  if (ParentOp)
  {
    ParentOp = mlir::Block::getParentOp(ParentOp);
  }

  if (ParentOp != *(v4 + 24))
  {
    return;
  }

  if (*(*(v2 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
  {
    v6 = *(v4 + 16);
    v7 = *v3[3];

    GPURegionRuntime::encodeOp(v6, v2, v7);
    return;
  }

  v50 = v2;
  v52 = v3;
  if ((*(v2 + 46) & 0x80) != 0)
  {
    v51 = *(v2 + 17);
    if (v51)
    {
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v10 = (*(**(v4 + 16) + 48))(*(v4 + 16), *(*(v2 + 9) + 32 * v9 + 24), 0);
        v11 = v10;
        if (((v8 >> 3) + 1) >> 61)
        {
          std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
        }

        if (v8 >> 3 != -1)
        {
          if (!(((v8 >> 3) + 1) >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v12 = (8 * (v8 >> 3));
        *v12 = v10;
        v13 = v12 + 1;
        if (!v8)
        {
          goto LABEL_25;
        }

        v14 = v8 - 8;
        v15 = 0;
        v16 = 0;
        if ((v8 - 8) >= 0x28)
        {
          if ((v14 & 0xFFFFFFFFFFFFFFF8) == 0xFFFFFFFFFFFFFFF8)
          {
            v17 = (v14 >> 3) + 1;
            v16 = (8 * (v17 & 0x3FFFFFFFFFFFFFFCLL));
            v15 = v16;
            v18 = 16;
            v19 = 16;
            v20 = v17 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v21 = *(v19 - 16);
              v22 = *v19;
              *(v19 - 16) = 0uLL;
              *v19 = 0uLL;
              *(v18 - 16) = v21;
              *v18 = v22;
              v18 += 32;
              v19 += 32;
              v20 -= 4;
            }

            while (v20);
            if (v17 == (v17 & 0x3FFFFFFFFFFFFFFCLL))
            {
              goto LABEL_23;
            }
          }

          else
          {
            v15 = 0;
            v16 = 0;
          }
        }

        do
        {
          v23 = *v15;
          *v15++ = 0;
          *v16++ = v23;
        }

        while (v15 != v8);
LABEL_23:
        for (i = 0; i != v8; ++i)
        {
          v25 = *i;
        }

LABEL_25:
        v8 = v13;
        v2 = v50;
        v3 = v52;

        if (++v9 == v51)
        {
          v26 = 0;
          goto LABEL_28;
        }
      }
    }

    v51 = 0;
    v26 = 1;
  }

  else
  {
    v51 = 0;
    v26 = 1;
  }

LABEL_28:
  BaseRuntime::clearScopeFromDataMap(*(v4 + 16), *v3[1]);
  v57 = v59;
  v58 = 0x400000000;
  if ((*(v2 + 46) & 0x80) != 0)
  {
    v27 = *(v2 + 17);
    if (v27 < 5)
    {
      goto LABEL_32;
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod(&v57, v59, v27, 8);
    if ((*(v2 + 46) & 0x80) != 0)
    {
      LODWORD(v27) = *(v2 + 17);
LABEL_32:
      if (v27)
      {
        v28 = v27;
        v29 = (*(v2 + 9) + 24);
        do
        {
          StaticType = GPURegionRuntime::getStaticType(*(v4 + 16), *v29);
          v31 = v58;
          if (v58 >= HIDWORD(v58))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v57, v59, v58 + 1, 8);
            v31 = v58;
          }

          *(v57 + v31) = StaticType;
          LODWORD(v58) = v58 + 1;
          v29 += 4;
          --v28;
        }

        while (v28);
      }
    }
  }

  GPURegionRuntime::clearScopeFromJITTypesMap(*(v4 + 16), *v3[1]);
  if ((v26 & 1) == 0)
  {
    for (j = 0; j != v51; ++j)
    {
      if (*v3[2] == 1)
      {
        v33 = *(v4 + 24);
        v34 = v33 + 24 * (5 - j) - 96;
        v35 = (v33 + 16 * ~j);
        if (j <= 5)
        {
          v36 = v35;
        }

        else
        {
          v36 = v34;
        }
      }

      else
      {
        v36 = *(mlir::scf::ForOp::getRegionIterArgs(v3[1]) + 8 * j);
      }

      v37 = *(8 * j);
      v38 = (*(**(v4 + 16) + 48))(*(v4 + 16), v36, 0);
      v39 = *(v4 + 16);
      v40 = *(*(v2 + 9) + 32 * j + 24);
      v41 = *(v57 + j);
      v42 = (*(v40 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v42 + 8))
      {
        v43 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v42 + 8);
        v55 = v42;
        v56 = v43;
        if (v42)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v55))
          {
            goto LABEL_54;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v55);
          if (v45)
          {
            v46 = 8 * v45;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v46 -= 8;
              if (!v46)
              {
                goto LABEL_57;
              }
            }

LABEL_54:
            if (!v41)
            {
              v41 = GPURegionRuntime::getStaticType(v39, v40);
            }

            v53[1] = v41;
            v54 = v36;
            v53[0] = *(mlir::Value::getParentRegion(&v54) + 2);
            v55 = v53;
            v47 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>>>::__emplace_unique_key_args<mlir::Operation *,std::piecewise_construct_t const&,std::tuple<mlir::Operation * const&>,std::tuple<>>((v39 + 288), v53);
            v55 = v54;
            std::__hash_table<std::__hash_value_type<void *,mlir::Type>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,mlir::Type>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,mlir::Type>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,mlir::Type>>>::__emplace_unique_key_args<void *,void *,mlir::Type&>(v47 + 3, &v55);
          }
        }
      }

      else
      {
        v55 = 0;
        v56 = 0;
      }

LABEL_57:
      v48 = *(v4 + 16);
      v49 = GPU::EncodeDescriptor::getcomputeEncoder(*v52[3]);

      v2 = v50;
      v3 = v52;
    }
  }

  if (v57 != v59)
  {
    free(v57);
  }
}

void sub_1E089B2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::vector<MPSGraphTensor * {__strong}>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E089B310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (a23 != a10)
  {
    free(a23);
  }

  std::vector<MPSGraphTensor * {__strong}>::~vector[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

mlir::Block *llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::WhileOpHandler::WhileOpHandler(GPURegionRuntime *,mlir::Operation *,GPU::MPSGraphKernelDAG *)::$_0>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = *(a2 + 16);
  if (result)
  {
    result = mlir::Block::getParentOp(result);
  }

  if (result == *(v3 + 24))
  {
    result = (*(**(v3 + 16) + 72))(*(v3 + 16), a2, *(v3 + 32));
    if (*(v3 + 41) == 1)
    {
      *(v3 + 41) = *(result + 41) & 1;
    }

    else
    {
      *(v3 + 41) = 0;
    }
  }

  return result;
}

mlir::Block *llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::WhileOpHandler::WhileOpHandler(GPURegionRuntime *,mlir::Operation *,GPU::MPSGraphKernelDAG *)::$_1>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = *(a2 + 16);
  if (result)
  {
    result = mlir::Block::getParentOp(result);
  }

  if (result == *(v3 + 24))
  {
    result = (*(**(v3 + 16) + 72))(*(v3 + 16), a2, *(v3 + 32));
    if (*(v3 + 41) == 1)
    {
      *(v3 + 41) = *(result + 41) & 1;
    }

    else
    {
      *(v3 + 41) = 0;
    }
  }

  return result;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::WhileOpHandler::encodeCSCBOp(GPU::EncodeDescriptor *)::$_0>(uint64_t *a1, mlir::Operation *a2)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v4 = *a1;
  ParentOp = *(a2 + 2);
  if (ParentOp)
  {
    ParentOp = mlir::Block::getParentOp(ParentOp);
  }

  if (ParentOp == *(v4 + 24))
  {
    v6 = *(v4 + 16);
    if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::ConditionOp,void>::id)
    {
      v21 = (*(*v6 + 48))(v6, *(*(a2 + 9) + 24), 0);
      v8 = *a1[1];
      v9 = GPU::EncodeDescriptor::getcomputeEncoder(*a1[2]);
      v10 = *(*a1[2] + 8);
      v11 = [v21 mpsndarray];
      v22[0] = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
      [v8 encodeToMPSCommandEncoder:v9 commandBuffer:v10 sourceArrays:v12 resultState:0 destinationArray:*(v4 + 128) kernelDAGObject:*(v4 + 136)];

      if (*(*(v4 + 24) + 36))
      {
        operator new();
      }

      BaseRuntime::clearScopeFromDataMap(*(v4 + 16), *a1[3]);
      if (*(*(v4 + 24) + 36))
      {
        v13 = 0;
        do
        {
          v14 = *(8 * v13);
          v15 = *(a1[4] + 8);
          if (v15)
          {
            v16 = v15 - 8;
          }

          else
          {
            v16 = 0;
          }

          v17 = *(*(v16 + 48) + 8 * v13);
          v18 = (*(**(v4 + 16) + 80))(*(v4 + 16), v17, *(*a1[2] + 8), 0, 1, 1);
          v19 = *(v4 + 16);
          v20 = GPU::EncodeDescriptor::getcomputeEncoder(*a1[2]);

          ++v13;
        }

        while (v13 < *(*(v4 + 24) + 36));
        operator delete(0);
      }
    }

    else
    {
      v7 = *a1[2];

      GPURegionRuntime::encodeOp(v6, a2, v7);
    }
  }
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::WhileOpHandler::encodeCSCBOp(GPU::EncodeDescriptor *)::$_1>(uint64_t *a1, mlir::Block **a2)
{
  v2 = a2;
  v4 = *a1;
  ParentOp = a2[2];
  if (ParentOp)
  {
    ParentOp = mlir::Block::getParentOp(ParentOp);
  }

  if (ParentOp == *(v4 + 24))
  {
    if (*(*(v2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
    {
      if ((*(v2 + 46) & 0x80) != 0)
      {
        v8 = *(v2 + 17);
        if (v8)
        {
          v9 = 0;
          v10 = 24;
          v20 = *(v2 + 17);
          v21 = v2;
          do
          {
            v11 = (*(**(v4 + 16) + 48))(*(v4 + 16), *(*(v2 + 9) + v10), 0);
            v12 = *(a1[1] + 8);
            if (v12)
            {
              v13 = v12 - 8;
            }

            else
            {
              v13 = 0;
            }

            v14 = *(*(v13 + 48) + 8 * v9);
            v15 = *(v4 + 16);
            if (*(*(v4 + 144) + v9) == 1)
            {
              v22 = v11;
              v16 = *(*(v13 + 48) + 8 * v9);
              v17 = (*(*v15 + 80))(v15);
              v18 = *(v4 + 16);
              v19 = GPU::EncodeDescriptor::getcomputeEncoder(*a1[2]);

              v8 = v20;
              v2 = v21;
              v11 = v22;
            }

            else
            {
              v17 = GPU::EncodeDescriptor::getcomputeEncoder(*a1[2]);
            }

            ++v9;
            v10 += 32;
          }

          while (v8 != v9);
        }
      }
    }

    else
    {
      v6 = *(v4 + 16);
      v7 = *a1[2];

      GPURegionRuntime::encodeOp(v6, v2, v7);
    }
  }
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::WhileOpHandler::encodeCSCBOp(GPU::EncodeDescriptor *)::$_2>(uint64_t a1, uint64_t a2)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  ParentOp = *(a2 + 16);
  if (ParentOp)
  {
    v4 = a2;
    ParentOp = mlir::Block::getParentOp(ParentOp);
    a2 = v4;
  }

  if (ParentOp == v2[3])
  {
    v5 = v2[2];
    if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::ConditionOp,void>::id)
    {
      v26 = a2;
      v27 = v2;
      v25 = (*(*v5 + 48))(v5, *(*(a2 + 72) + 24), 0);
      v7 = **(a1 + 8);
      v8 = GPU::EncodeDescriptor::getcomputeEncoder(**(a1 + 16));
      v9 = *(**(a1 + 16) + 8);
      v10 = [v25 mpsndarray];
      v30[0] = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
      [v7 encodeToMPSCommandEncoder:v8 commandBuffer:v9 sourceArrays:v11 resultState:0 destinationArray:v2[16] kernelDAGObject:v2[17]];

      v12 = v2;
      if (*(v2[3] + 36))
      {
        v13 = 0;
        v14 = 56;
        do
        {
          v15 = (*(*v12[2] + 48))(v12[2], *(*(v26 + 72) + v14), 0);
          v16 = *(*(a1 + 24) + 8);
          if (v16)
          {
            v17 = v16 - 8;
          }

          else
          {
            v17 = 0;
          }

          v18 = (*(*v12[2] + 48))(v12[2], *(*(v17 + 48) + 8 * v13), 0);
          v19 = **(a1 + 8);
          v20 = GPU::EncodeDescriptor::getcomputeEncoder(**(a1 + 16));
          v21 = *(**(a1 + 16) + 8);
          v22 = [v15 mpsndarray];
          v29 = v22;
          v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
          v24 = [v18 mpsndarray];
          [v19 encodeToMPSCommandEncoder:v20 commandBuffer:v21 sourceArrays:v23 resultState:0 destinationArray:v24 kernelDAGObject:0];

          ++v13;
          v12 = v27;
          v14 += 32;
        }

        while (v13 < *(v27[3] + 36));
      }
    }

    else
    {
      v6 = **(a1 + 16);

      GPURegionRuntime::encodeOp(v5, a2, v6);
    }
  }
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::WhileOpHandler::encodeOp(GPU::EncodeDescriptor *)::$_0>(uint64_t *a1, mlir::Block **a2)
{
  v2 = a2;
  v4 = *a1;
  ParentOp = a2[2];
  if (ParentOp)
  {
    ParentOp = mlir::Block::getParentOp(ParentOp);
  }

  if (ParentOp == *(v4 + 24))
  {
    if (*(*(v2 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::scf::ConditionOp,void>::id)
    {
      v6 = *(v4 + 16);
      v7 = *a1[1];

      GPURegionRuntime::encodeOp(v6, v2, v7);
      return;
    }

    v8 = (*(**(v4 + 16) + 48))(*(v4 + 16), *(*(v2 + 9) + 24), 0);
    v9 = a1[1];
    v10 = *v9;
    v11 = *(*v9 + 72);
    v38 = v8;
    if (v11)
    {
      [v11 endEncoding];
      v12 = *(v10 + 72);
      *(v10 + 72) = 0;
    }

    v13 = [v8 mpsndarray];
    v14 = *(*a1[1] + 8);
    v15 = *(v4 + 120);
    v16 = [v8 mpsndarray];
    [v13 exportDataWithCommandBuffer:v14 toBuffer:v15 destinationDataType:objc_msgSend(v16 offset:"dataType") rowStrides:{0, 0}];

    v37 = [*(*a1[1] + 8) rootCommandBuffer];
    (***a1[1])(*a1[1]);
    [v37 waitUntilCompleted];
    v17 = a1[2];
    *v17 = *[*(v4 + 120) contents];
    v39 = v2;
    if (*(*(v4 + 24) + 36))
    {
      operator new();
    }

    BaseRuntime::clearScopeFromDataMap(*(v4 + 16), *a1[3]);
    v18 = *(v4 + 24);
    if (*(v18 + 36))
    {
      v19 = 0;
      do
      {
        if (*a1[2])
        {
          v20 = *(a1[4] + 8);
          if (v20)
          {
            v21 = v20 - 8;
          }

          else
          {
            v21 = 0;
          }

          v22 = *(*(v21 + 48) + 8 * v19);
        }

        else
        {
          v23 = v18 - 24 * (v19 - 5) - 96;
          v24 = (v18 + 16 * ~v19);
          if (v19 <= 5)
          {
            v22 = v24;
          }

          else
          {
            v22 = v23;
          }
        }

        v25 = *(8 * v19);
        v26 = (*(**(v4 + 16) + 48))(*(v4 + 16), v22, 0);
        v27 = *(v4 + 16);
        ++v19;
        v28 = *(*(v2 + 9) + 32 * v19 + 24);
        v29 = (*(v28 + 8) & 0xFFFFFFFFFFFFFFF8);
        if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v29 + 8))
        {
          v30 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v29 + 8);
          v42 = v29;
          v43 = v30;
          if (!v29)
          {
            goto LABEL_33;
          }

          if (!mlir::CallOpInterface::getArgOperands(&v42))
          {
            goto LABEL_32;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v42);
          if (v32)
          {
            v33 = 8 * v32;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v33 -= 8;
              if (!v33)
              {
                goto LABEL_33;
              }
            }

LABEL_32:
            v40[1] = GPURegionRuntime::getStaticType(v27, v28);
            v41 = v22;
            v40[0] = *(mlir::Value::getParentRegion(&v41) + 2);
            v42 = v40;
            v34 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>>>::__emplace_unique_key_args<mlir::Operation *,std::piecewise_construct_t const&,std::tuple<mlir::Operation * const&>,std::tuple<>>((v27 + 288), v40);
            v42 = v41;
            std::__hash_table<std::__hash_value_type<void *,mlir::Type>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,mlir::Type>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,mlir::Type>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,mlir::Type>>>::__emplace_unique_key_args<void *,void *,mlir::Type&>(v34 + 3, &v42);
          }
        }

        else
        {
          v42 = 0;
          v43 = 0;
        }

LABEL_33:
        v35 = *(v4 + 16);
        v36 = GPU::EncodeDescriptor::getcomputeEncoder(*a1[1]);

        v18 = *(v4 + 24);
        v2 = v39;
      }

      while (v19 < *(v18 + 36));
    }

    if ((*a1[2] & 1) == 0)
    {
      GPURegionRuntime::clearScopeFromJITTypesMap(*(v4 + 16), *a1[3]);
    }
  }
}

void sub_1E089C814(_Unwind_Exception *a1, void *a2, void *a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<MPSGraphTensor * {__strong}>::~vector[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::WhileOpHandler::encodeOp(GPU::EncodeDescriptor *)::$_1>(uint64_t *a1, mlir::Operation *a2)
{
  v4 = *a1;
  ParentOp = *(a2 + 2);
  if (ParentOp)
  {
    ParentOp = mlir::Block::getParentOp(ParentOp);
  }

  if (ParentOp == *(v4 + 24))
  {
    v6 = *(v4 + 16);
    v7 = *a1[1];

    GPURegionRuntime::encodeOp(v6, a2, v7);
  }
}

void sub_1E089CB9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E089CC00);
}

void sub_1E089CBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E089CC00);
  }

  JUMPOUT(0x1E089CBBCLL);
}

void sub_1E089D804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);

    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:

      _Unwind_Resume(a1);
    }
  }

  else
  {

    if ((a14 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a9);

  _Unwind_Resume(a1);
}

void sub_1E089DB60(_Unwind_Exception *a1)
{
  if (v4)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1E089DCB8(_Unwind_Exception *a1)
{
  if (v4)
  {
  }

  _Unwind_Resume(a1);
}

void GPU::encodeReshape(void *a1, void *a2, void **a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a4;
  v27 = v13;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = adaptForMPS(v15);

  if (v16)
  {
    v18 = [v16 mpsndarray];
    v19 = [v18 offset];

    if (v19)
    {
LABEL_7:
      v23 = GPU::EncodeDescriptor::getcomputeEncoder(a3);
      v24 = a3[1];
      v25 = [v16 mpsndarray];
      v26 = [v13 reshapeWithCommandEncoder:v23 commandBuffer:v24 sourceArray:v14 shape:v17 destinationArray:v25];

      goto LABEL_8;
    }
  }

  v20 = GPU::EncodeDescriptor::getcomputeEncoder(a3);
  v21 = [v13 reshapeWithCommandEncoder:v20 commandBuffer:a3[1] sourceArray:v14 shape:v17 destinationArray:0];

  if (!v21)
  {
    if (!v16)
    {
      v16 = (*(*a2 + 80))(a2, a1, a3[1], 0, 0, 1);
    }

    goto LABEL_7;
  }

  v22 = GPU::EncodeDescriptor::getcomputeEncoder(a3);
  GPURegionRuntime::copyNDArrayToTarget(a2, v22, a3[1], &v27, v21, v16, a1, 0);

LABEL_8:
}

uint64_t GPU::BaseReshapeOpHandler<mlir::mps::ExpandDimsOp>::BaseReshapeOpHandler(uint64_t a1, GPURegionRuntime *a2, uint64_t a3, GPU::MPSGraphKernelDAG *a4)
{
  v148[5] = *MEMORY[0x1E69E9840];
  v6 = GPU::BaseOpHandler::BaseOpHandler(a1, a2, a3, a4);
  *(v6 + 120) = 0u;
  v7 = (v6 + 120);
  *v6 = &unk_1F5B53A70;
  v8 = v6 + 152;
  *(v6 + 17) = v6 + 152;
  v9 = (v6 + 136);
  *(v6 + 18) = 0x400000000;
  *(v6 + 184) = 0;
  *(v6 + 200) = 0;
  v10 = objc_alloc(MEMORY[0x1E6974740]);
  v11 = [*(*(a1 + 16) + 48) metalDevice];
  v12 = [v10 initWithDevice:v11];
  v13 = *(a1 + 8);
  *(a1 + 8) = v12;

  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
  if (*(a3 + 36))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  *(a1 + 120) = NextResultAtOffset;
  v16 = *(*(a3 + 72) + 24);
  *(a1 + 128) = v16;
  v17 = (*(v16 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v17)
  {
    v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
    v19 = *v7;
    *&v146 = v17;
    *(&v146 + 1) = v18;
    v20 = (*(v19 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v20)
    {
LABEL_6:
      v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
      goto LABEL_9;
    }
  }

  else
  {
    v146 = 0uLL;
    v20 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v20)
    {
      goto LABEL_6;
    }
  }

  v21 = 0;
LABEL_9:
  *&v145 = v20;
  *(&v145 + 1) = v21;
  if (!mlir::CallOpInterface::getArgOperands(&v145))
  {
    goto LABEL_17;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v145);
  if (!v23)
  {
LABEL_14:
    v25 = mlir::CallableOpInterface::getArgAttrsAttr(&v145);
    v26 = mlir::CallableOpInterface::getArgAttrsAttr(&v145);
    v28 = (v26 + 8 * v27);
    __src[0] = v148;
    __src[1] = 0x400000000;
    v29 = v28 - v25;
    v30 = (v28 - v25) >> 3;
    if (v30 < 5)
    {
      v31 = 0;
      v32 = v148;
      if (v28 == v25)
      {
        goto LABEL_24;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(__src, v148, v30, 8);
      v31 = __src[1];
      v32 = __src[0];
      if (v28 == v25)
      {
LABEL_24:
        v38 = v31 + (v29 >> 3);
        LODWORD(__src[1]) = v31 + (v29 >> 3);
        if (v9 == __src)
        {
          goto LABEL_51;
        }

        if (v32 != v148)
        {
          if (*v9 != v8)
          {
            free(*v9);
            v32 = __src[0];
            LODWORD(v38) = __src[1];
          }

          *(a1 + 136) = v32;
          v39 = HIDWORD(__src[1]);
          *(a1 + 144) = v38;
          *(a1 + 148) = v39;
          __src[0] = v148;
          HIDWORD(__src[1]) = 0;
          goto LABEL_50;
        }

        v40 = *(a1 + 144);
        if (v40 >= v38)
        {
          if (v38)
          {
            memmove(*v9, v32, 8 * v38);
          }

          goto LABEL_49;
        }

        if (*(a1 + 148) >= v38)
        {
          if (v40)
          {
            memmove(*v9, v32, 8 * v40);
            goto LABEL_47;
          }
        }

        else
        {
          *(a1 + 144) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v8, v38, 8);
        }

        v40 = 0;
LABEL_47:
        if (LODWORD(__src[1]) != v40)
        {
          memcpy(*v9 + 8 * v40, __src[0] + 8 * v40, 8 * (LODWORD(__src[1]) - v40));
        }

LABEL_49:
        *(a1 + 144) = v38;
LABEL_50:
        LODWORD(__src[1]) = 0;
        v32 = __src[0];
LABEL_51:
        if (v32 != v148)
        {
          free(v32);
        }

        return a1;
      }
    }

    memcpy(&v32[v31], v25, v28 - v25);
    v31 = __src[1];
    v32 = __src[0];
    goto LABEL_24;
  }

  v24 = 8 * v23;
  while (*ArgAttrsAttr != 0x8000000000000000)
  {
    ++ArgAttrsAttr;
    v24 -= 8;
    if (!v24)
    {
      goto LABEL_14;
    }
  }

LABEL_17:
  if (!mlir::CallOpInterface::getArgOperands(&v145))
  {
    return a1;
  }

  if (!mlir::CallOpInterface::getArgOperands(&v146))
  {
    return a1;
  }

  *__src = v146;
  v33 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  if (!v34)
  {
    return a1;
  }

  v35 = (v34 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v35 > 2)
  {
    v41 = v35 + 1;
    v42 = (v35 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v37 = (v33 + 8 * v42);
    v43 = (v33 + 16);
    v44 = 0uLL;
    v45 = vnegq_f64(0);
    v46 = v42;
    v47 = 0uLL;
    do
    {
      v44 = vsubq_s64(v44, vceqq_s64(v43[-1], v45));
      v47 = vsubq_s64(v47, vceqq_s64(*v43, v45));
      v43 += 2;
      v46 -= 4;
    }

    while (v46);
    v36 = vaddvq_s64(vaddq_s64(v47, v44));
    if (v41 == v42)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v36 = 0;
    v37 = v33;
  }

  do
  {
    v48 = *v37++;
    if (v48 == 0x8000000000000000)
    {
      ++v36;
    }
  }

  while (v37 != (v33 + 8 * v34));
LABEL_38:
  if (v36 != 1)
  {
    return a1;
  }

  *__src = v145;
  v49 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  if (!v50)
  {
    return a1;
  }

  v51 = (v50 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v51 > 2)
  {
    v55 = v51 + 1;
    v56 = (v51 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v53 = (v49 + 8 * v56);
    v57 = (v49 + 16);
    v58 = 0uLL;
    v59 = vnegq_f64(0);
    v60 = v56;
    v61 = 0uLL;
    do
    {
      v58 = vsubq_s64(v58, vceqq_s64(v57[-1], v59));
      v61 = vsubq_s64(v61, vceqq_s64(*v57, v59));
      v57 += 2;
      v60 -= 4;
    }

    while (v60);
    v52 = vaddvq_s64(vaddq_s64(v61, v58));
    if (v55 == v56)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v52 = 0;
    v53 = v49;
  }

  do
  {
    v62 = *v53++;
    if (v62 == 0x8000000000000000)
    {
      ++v52;
    }
  }

  while (v53 != (v49 + 8 * v50));
LABEL_60:
  if (v52 != 1)
  {
    return a1;
  }

  *__src = v146;
  v63 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v65 = v63;
  if (v64)
  {
    v66 = 8 * v64;
    while (*v65 != 0x8000000000000000)
    {
      v65 += 2;
      v66 -= 8;
      if (!v66)
      {
        v65 = (v63 + 8 * v64);
        break;
      }
    }
  }

  v67 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v68 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  if (v65 == v68)
  {
    v72 = 1;
    goto LABEL_75;
  }

  v69 = v65 - v68 - 8;
  if (v69 >= 0x38)
  {
    v73 = (v69 >> 3) + 1;
    v71 = (v68 + 8 * (v73 & 0x3FFFFFFFFFFFFFF8));
    v74 = (v68 + 32);
    v75.i64[0] = 0x100000001;
    v75.i64[1] = 0x100000001;
    v76 = v73 & 0x3FFFFFFFFFFFFFF8;
    v77.i64[0] = 0x100000001;
    v77.i64[1] = 0x100000001;
    do
    {
      v79 = v74[-2];
      v78 = v74[-1];
      v81 = *v74;
      v80 = v74[1];
      v74 += 4;
      v75 = vmulq_s32(v75, vuzp1q_s32(v79, v78));
      v77 = vmulq_s32(v77, vuzp1q_s32(v81, v80));
      v76 -= 8;
    }

    while (v76);
    v82 = vmulq_s32(v77, v75);
    *v82.i8 = vmul_s32(*v82.i8, *&vextq_s8(v82, v82, 8uLL));
    v70 = v82.i32[0] * v82.i32[1];
    if (v73 == (v73 & 0x3FFFFFFFFFFFFFF8))
    {
      goto LABEL_74;
    }
  }

  else
  {
    v70 = 1;
    v71 = v68;
  }

  do
  {
    v83 = *v71;
    v71 += 2;
    v70 *= v83;
  }

  while (v71 != v65);
LABEL_74:
  v72 = v70;
LABEL_75:
  v84 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v86 = v65 + 2;
  v87 = (v84 + 8 * v85);
  if (v65 + 2 == v87)
  {
    v90 = 1;
    goto LABEL_84;
  }

  v88 = v84 + 8 * v85 - v65 - 16;
  if (v88 >= 0x38)
  {
    v91 = (v88 >> 3) + 1;
    v86 += 2 * (v91 & 0x3FFFFFFFFFFFFFF8);
    v92 = (v65 + 10);
    v93.i64[0] = 0x100000001;
    v93.i64[1] = 0x100000001;
    v94 = v91 & 0x3FFFFFFFFFFFFFF8;
    v95.i64[0] = 0x100000001;
    v95.i64[1] = 0x100000001;
    do
    {
      v97 = v92[-2];
      v96 = v92[-1];
      v99 = *v92;
      v98 = v92[1];
      v92 += 4;
      v93 = vmulq_s32(v93, vuzp1q_s32(v97, v96));
      v95 = vmulq_s32(v95, vuzp1q_s32(v99, v98));
      v94 -= 8;
    }

    while (v94);
    v100 = vmulq_s32(v95, v93);
    *v100.i8 = vmul_s32(*v100.i8, *&vextq_s8(v100, v100, 8uLL));
    v89 = v100.i32[0] * v100.i32[1];
    if (v91 == (v91 & 0x3FFFFFFFFFFFFFF8))
    {
      goto LABEL_83;
    }
  }

  else
  {
    v89 = 1;
  }

  do
  {
    v101 = *v86;
    v86 += 2;
    v89 *= v101;
  }

  while (v86 != v87);
LABEL_83:
  v90 = v89;
LABEL_84:
  *__src = v145;
  v102 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v104 = v102;
  if (v103)
  {
    v105 = 8 * v103;
    while (*v104 != 0x8000000000000000)
    {
      v104 += 2;
      v105 -= 8;
      if (!v105)
      {
        v104 = (v102 + 8 * v103);
        break;
      }
    }
  }

  v106 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v107 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  if (v104 == v107)
  {
    v111 = 1;
    goto LABEL_98;
  }

  v108 = v104 - v107 - 8;
  if (v108 >= 0x38)
  {
    v112 = (v108 >> 3) + 1;
    v110 = (v107 + 8 * (v112 & 0x3FFFFFFFFFFFFFF8));
    v113 = (v107 + 32);
    v114.i64[0] = 0x100000001;
    v114.i64[1] = 0x100000001;
    v115 = v112 & 0x3FFFFFFFFFFFFFF8;
    v116.i64[0] = 0x100000001;
    v116.i64[1] = 0x100000001;
    do
    {
      v118 = v113[-2];
      v117 = v113[-1];
      v120 = *v113;
      v119 = v113[1];
      v113 += 4;
      v114 = vmulq_s32(v114, vuzp1q_s32(v118, v117));
      v116 = vmulq_s32(v116, vuzp1q_s32(v120, v119));
      v115 -= 8;
    }

    while (v115);
    v121 = vmulq_s32(v116, v114);
    *v121.i8 = vmul_s32(*v121.i8, *&vextq_s8(v121, v121, 8uLL));
    v109 = v121.i32[0] * v121.i32[1];
    if (v112 == (v112 & 0x3FFFFFFFFFFFFFF8))
    {
      goto LABEL_97;
    }
  }

  else
  {
    v109 = 1;
    v110 = v107;
  }

  do
  {
    v122 = *v110;
    v110 += 2;
    v109 *= v122;
  }

  while (v110 != v104);
LABEL_97:
  v111 = v109;
LABEL_98:
  v123 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v125 = v104 + 2;
  v126 = (v123 + 8 * v124);
  if (v104 + 2 != v126)
  {
    v127 = v123 + 8 * v124 - v104 - 16;
    if (v127 >= 0x38)
    {
      v130 = (v127 >> 3) + 1;
      v125 += 2 * (v130 & 0x3FFFFFFFFFFFFFF8);
      v131 = (v104 + 10);
      v132.i64[0] = 0x100000001;
      v132.i64[1] = 0x100000001;
      v133 = v130 & 0x3FFFFFFFFFFFFFF8;
      v134.i64[0] = 0x100000001;
      v134.i64[1] = 0x100000001;
      do
      {
        v136 = v131[-2];
        v135 = v131[-1];
        v138 = *v131;
        v137 = v131[1];
        v131 += 4;
        v132 = vmulq_s32(v132, vuzp1q_s32(v136, v135));
        v134 = vmulq_s32(v134, vuzp1q_s32(v138, v137));
        v133 -= 8;
      }

      while (v133);
      v139 = vmulq_s32(v134, v132);
      *v139.i8 = vmul_s32(*v139.i8, *&vextq_s8(v139, v139, 8uLL));
      v128 = v139.i32[0] * v139.i32[1];
      if (v130 == (v130 & 0x3FFFFFFFFFFFFFF8))
      {
        goto LABEL_106;
      }
    }

    else
    {
      v128 = 1;
    }

    do
    {
      v140 = *v125;
      v125 += 2;
      v128 *= v140;
    }

    while (v125 != v126);
LABEL_106:
    v129 = v128;
    goto LABEL_107;
  }

  v129 = 1;
LABEL_107:
  if (v72 == v111 && v90 == v129)
  {
    v141 = mlir::CallableOpInterface::getArgAttrsAttr(&v145);
    v142 = mlir::CallableOpInterface::getArgAttrsAttr(&v145);
    llvm::SmallVector<long long,4u>::SmallVector<long long const*,void>(__src, v141, (v142 + 8 * v143));
    llvm::SmallVectorImpl<unsigned long long>::operator=(v9, __src);
    if (__src[0] != v148)
    {
      free(__src[0]);
    }

    v144 = *(a1 + 200);
    *(a1 + 184) = (v65 - v67) >> 3;
    *(a1 + 192) = (v104 - v106) >> 3;
    if ((v144 & 1) == 0)
    {
      *(a1 + 200) = 1;
    }
  }

  return a1;
}

void sub_1E089EB98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a13 != (v16 + 16))
  {
    free(a13);
  }

  if (*v14 != v15)
  {
    free(*v14);
  }

  GPU::BaseOpHandler::~BaseOpHandler(v13);
  _Unwind_Resume(a1);
}

unint64_t GPU::ExpandDimsOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, a4);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, 0);
  }
}

uint64_t GPU::BaseReshapeOpHandler<mlir::mps::Flatten2DOp>::BaseReshapeOpHandler(uint64_t a1, GPURegionRuntime *a2, uint64_t a3, GPU::MPSGraphKernelDAG *a4)
{
  v148[5] = *MEMORY[0x1E69E9840];
  v6 = GPU::BaseOpHandler::BaseOpHandler(a1, a2, a3, a4);
  *(v6 + 120) = 0u;
  v7 = (v6 + 120);
  *v6 = &unk_1F5B53AC0;
  v8 = v6 + 152;
  *(v6 + 17) = v6 + 152;
  v9 = (v6 + 136);
  *(v6 + 18) = 0x400000000;
  *(v6 + 184) = 0;
  *(v6 + 200) = 0;
  v10 = objc_alloc(MEMORY[0x1E6974740]);
  v11 = [*(*(a1 + 16) + 48) metalDevice];
  v12 = [v10 initWithDevice:v11];
  v13 = *(a1 + 8);
  *(a1 + 8) = v12;

  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
  if (*(a3 + 36))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  *(a1 + 120) = NextResultAtOffset;
  v16 = *(*(a3 + 72) + 24);
  *(a1 + 128) = v16;
  v17 = (*(v16 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v17)
  {
    v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
    v19 = *v7;
    *&v146 = v17;
    *(&v146 + 1) = v18;
    v20 = (*(v19 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v20)
    {
LABEL_6:
      v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
      goto LABEL_9;
    }
  }

  else
  {
    v146 = 0uLL;
    v20 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v20)
    {
      goto LABEL_6;
    }
  }

  v21 = 0;
LABEL_9:
  *&v145 = v20;
  *(&v145 + 1) = v21;
  if (!mlir::CallOpInterface::getArgOperands(&v145))
  {
    goto LABEL_17;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v145);
  if (!v23)
  {
LABEL_14:
    v25 = mlir::CallableOpInterface::getArgAttrsAttr(&v145);
    v26 = mlir::CallableOpInterface::getArgAttrsAttr(&v145);
    v28 = (v26 + 8 * v27);
    __src[0] = v148;
    __src[1] = 0x400000000;
    v29 = v28 - v25;
    v30 = (v28 - v25) >> 3;
    if (v30 < 5)
    {
      v31 = 0;
      v32 = v148;
      if (v28 == v25)
      {
        goto LABEL_24;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(__src, v148, v30, 8);
      v31 = __src[1];
      v32 = __src[0];
      if (v28 == v25)
      {
LABEL_24:
        v38 = v31 + (v29 >> 3);
        LODWORD(__src[1]) = v31 + (v29 >> 3);
        if (v9 == __src)
        {
          goto LABEL_51;
        }

        if (v32 != v148)
        {
          if (*v9 != v8)
          {
            free(*v9);
            v32 = __src[0];
            LODWORD(v38) = __src[1];
          }

          *(a1 + 136) = v32;
          v39 = HIDWORD(__src[1]);
          *(a1 + 144) = v38;
          *(a1 + 148) = v39;
          __src[0] = v148;
          HIDWORD(__src[1]) = 0;
          goto LABEL_50;
        }

        v40 = *(a1 + 144);
        if (v40 >= v38)
        {
          if (v38)
          {
            memmove(*v9, v32, 8 * v38);
          }

          goto LABEL_49;
        }

        if (*(a1 + 148) >= v38)
        {
          if (v40)
          {
            memmove(*v9, v32, 8 * v40);
            goto LABEL_47;
          }
        }

        else
        {
          *(a1 + 144) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v8, v38, 8);
        }

        v40 = 0;
LABEL_47:
        if (LODWORD(__src[1]) != v40)
        {
          memcpy(*v9 + 8 * v40, __src[0] + 8 * v40, 8 * (LODWORD(__src[1]) - v40));
        }

LABEL_49:
        *(a1 + 144) = v38;
LABEL_50:
        LODWORD(__src[1]) = 0;
        v32 = __src[0];
LABEL_51:
        if (v32 != v148)
        {
          free(v32);
        }

        return a1;
      }
    }

    memcpy(&v32[v31], v25, v28 - v25);
    v31 = __src[1];
    v32 = __src[0];
    goto LABEL_24;
  }

  v24 = 8 * v23;
  while (*ArgAttrsAttr != 0x8000000000000000)
  {
    ++ArgAttrsAttr;
    v24 -= 8;
    if (!v24)
    {
      goto LABEL_14;
    }
  }

LABEL_17:
  if (!mlir::CallOpInterface::getArgOperands(&v145))
  {
    return a1;
  }

  if (!mlir::CallOpInterface::getArgOperands(&v146))
  {
    return a1;
  }

  *__src = v146;
  v33 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  if (!v34)
  {
    return a1;
  }

  v35 = (v34 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v35 > 2)
  {
    v41 = v35 + 1;
    v42 = (v35 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v37 = (v33 + 8 * v42);
    v43 = (v33 + 16);
    v44 = 0uLL;
    v45 = vnegq_f64(0);
    v46 = v42;
    v47 = 0uLL;
    do
    {
      v44 = vsubq_s64(v44, vceqq_s64(v43[-1], v45));
      v47 = vsubq_s64(v47, vceqq_s64(*v43, v45));
      v43 += 2;
      v46 -= 4;
    }

    while (v46);
    v36 = vaddvq_s64(vaddq_s64(v47, v44));
    if (v41 == v42)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v36 = 0;
    v37 = v33;
  }

  do
  {
    v48 = *v37++;
    if (v48 == 0x8000000000000000)
    {
      ++v36;
    }
  }

  while (v37 != (v33 + 8 * v34));
LABEL_38:
  if (v36 != 1)
  {
    return a1;
  }

  *__src = v145;
  v49 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  if (!v50)
  {
    return a1;
  }

  v51 = (v50 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v51 > 2)
  {
    v55 = v51 + 1;
    v56 = (v51 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v53 = (v49 + 8 * v56);
    v57 = (v49 + 16);
    v58 = 0uLL;
    v59 = vnegq_f64(0);
    v60 = v56;
    v61 = 0uLL;
    do
    {
      v58 = vsubq_s64(v58, vceqq_s64(v57[-1], v59));
      v61 = vsubq_s64(v61, vceqq_s64(*v57, v59));
      v57 += 2;
      v60 -= 4;
    }

    while (v60);
    v52 = vaddvq_s64(vaddq_s64(v61, v58));
    if (v55 == v56)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v52 = 0;
    v53 = v49;
  }

  do
  {
    v62 = *v53++;
    if (v62 == 0x8000000000000000)
    {
      ++v52;
    }
  }

  while (v53 != (v49 + 8 * v50));
LABEL_60:
  if (v52 != 1)
  {
    return a1;
  }

  *__src = v146;
  v63 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v65 = v63;
  if (v64)
  {
    v66 = 8 * v64;
    while (*v65 != 0x8000000000000000)
    {
      v65 += 2;
      v66 -= 8;
      if (!v66)
      {
        v65 = (v63 + 8 * v64);
        break;
      }
    }
  }

  v67 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v68 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  if (v65 == v68)
  {
    v72 = 1;
    goto LABEL_75;
  }

  v69 = v65 - v68 - 8;
  if (v69 >= 0x38)
  {
    v73 = (v69 >> 3) + 1;
    v71 = (v68 + 8 * (v73 & 0x3FFFFFFFFFFFFFF8));
    v74 = (v68 + 32);
    v75.i64[0] = 0x100000001;
    v75.i64[1] = 0x100000001;
    v76 = v73 & 0x3FFFFFFFFFFFFFF8;
    v77.i64[0] = 0x100000001;
    v77.i64[1] = 0x100000001;
    do
    {
      v79 = v74[-2];
      v78 = v74[-1];
      v81 = *v74;
      v80 = v74[1];
      v74 += 4;
      v75 = vmulq_s32(v75, vuzp1q_s32(v79, v78));
      v77 = vmulq_s32(v77, vuzp1q_s32(v81, v80));
      v76 -= 8;
    }

    while (v76);
    v82 = vmulq_s32(v77, v75);
    *v82.i8 = vmul_s32(*v82.i8, *&vextq_s8(v82, v82, 8uLL));
    v70 = v82.i32[0] * v82.i32[1];
    if (v73 == (v73 & 0x3FFFFFFFFFFFFFF8))
    {
      goto LABEL_74;
    }
  }

  else
  {
    v70 = 1;
    v71 = v68;
  }

  do
  {
    v83 = *v71;
    v71 += 2;
    v70 *= v83;
  }

  while (v71 != v65);
LABEL_74:
  v72 = v70;
LABEL_75:
  v84 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v86 = v65 + 2;
  v87 = (v84 + 8 * v85);
  if (v65 + 2 == v87)
  {
    v90 = 1;
    goto LABEL_84;
  }

  v88 = v84 + 8 * v85 - v65 - 16;
  if (v88 >= 0x38)
  {
    v91 = (v88 >> 3) + 1;
    v86 += 2 * (v91 & 0x3FFFFFFFFFFFFFF8);
    v92 = (v65 + 10);
    v93.i64[0] = 0x100000001;
    v93.i64[1] = 0x100000001;
    v94 = v91 & 0x3FFFFFFFFFFFFFF8;
    v95.i64[0] = 0x100000001;
    v95.i64[1] = 0x100000001;
    do
    {
      v97 = v92[-2];
      v96 = v92[-1];
      v99 = *v92;
      v98 = v92[1];
      v92 += 4;
      v93 = vmulq_s32(v93, vuzp1q_s32(v97, v96));
      v95 = vmulq_s32(v95, vuzp1q_s32(v99, v98));
      v94 -= 8;
    }

    while (v94);
    v100 = vmulq_s32(v95, v93);
    *v100.i8 = vmul_s32(*v100.i8, *&vextq_s8(v100, v100, 8uLL));
    v89 = v100.i32[0] * v100.i32[1];
    if (v91 == (v91 & 0x3FFFFFFFFFFFFFF8))
    {
      goto LABEL_83;
    }
  }

  else
  {
    v89 = 1;
  }

  do
  {
    v101 = *v86;
    v86 += 2;
    v89 *= v101;
  }

  while (v86 != v87);
LABEL_83:
  v90 = v89;
LABEL_84:
  *__src = v145;
  v102 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v104 = v102;
  if (v103)
  {
    v105 = 8 * v103;
    while (*v104 != 0x8000000000000000)
    {
      v104 += 2;
      v105 -= 8;
      if (!v105)
      {
        v104 = (v102 + 8 * v103);
        break;
      }
    }
  }

  v106 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v107 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  if (v104 == v107)
  {
    v111 = 1;
    goto LABEL_98;
  }

  v108 = v104 - v107 - 8;
  if (v108 >= 0x38)
  {
    v112 = (v108 >> 3) + 1;
    v110 = (v107 + 8 * (v112 & 0x3FFFFFFFFFFFFFF8));
    v113 = (v107 + 32);
    v114.i64[0] = 0x100000001;
    v114.i64[1] = 0x100000001;
    v115 = v112 & 0x3FFFFFFFFFFFFFF8;
    v116.i64[0] = 0x100000001;
    v116.i64[1] = 0x100000001;
    do
    {
      v118 = v113[-2];
      v117 = v113[-1];
      v120 = *v113;
      v119 = v113[1];
      v113 += 4;
      v114 = vmulq_s32(v114, vuzp1q_s32(v118, v117));
      v116 = vmulq_s32(v116, vuzp1q_s32(v120, v119));
      v115 -= 8;
    }

    while (v115);
    v121 = vmulq_s32(v116, v114);
    *v121.i8 = vmul_s32(*v121.i8, *&vextq_s8(v121, v121, 8uLL));
    v109 = v121.i32[0] * v121.i32[1];
    if (v112 == (v112 & 0x3FFFFFFFFFFFFFF8))
    {
      goto LABEL_97;
    }
  }

  else
  {
    v109 = 1;
    v110 = v107;
  }

  do
  {
    v122 = *v110;
    v110 += 2;
    v109 *= v122;
  }

  while (v110 != v104);
LABEL_97:
  v111 = v109;
LABEL_98:
  v123 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v125 = v104 + 2;
  v126 = (v123 + 8 * v124);
  if (v104 + 2 != v126)
  {
    v127 = v123 + 8 * v124 - v104 - 16;
    if (v127 >= 0x38)
    {
      v130 = (v127 >> 3) + 1;
      v125 += 2 * (v130 & 0x3FFFFFFFFFFFFFF8);
      v131 = (v104 + 10);
      v132.i64[0] = 0x100000001;
      v132.i64[1] = 0x100000001;
      v133 = v130 & 0x3FFFFFFFFFFFFFF8;
      v134.i64[0] = 0x100000001;
      v134.i64[1] = 0x100000001;
      do
      {
        v136 = v131[-2];
        v135 = v131[-1];
        v138 = *v131;
        v137 = v131[1];
        v131 += 4;
        v132 = vmulq_s32(v132, vuzp1q_s32(v136, v135));
        v134 = vmulq_s32(v134, vuzp1q_s32(v138, v137));
        v133 -= 8;
      }

      while (v133);
      v139 = vmulq_s32(v134, v132);
      *v139.i8 = vmul_s32(*v139.i8, *&vextq_s8(v139, v139, 8uLL));
      v128 = v139.i32[0] * v139.i32[1];
      if (v130 == (v130 & 0x3FFFFFFFFFFFFFF8))
      {
        goto LABEL_106;
      }
    }

    else
    {
      v128 = 1;
    }

    do
    {
      v140 = *v125;
      v125 += 2;
      v128 *= v140;
    }

    while (v125 != v126);
LABEL_106:
    v129 = v128;
    goto LABEL_107;
  }

  v129 = 1;
LABEL_107:
  if (v72 == v111 && v90 == v129)
  {
    v141 = mlir::CallableOpInterface::getArgAttrsAttr(&v145);
    v142 = mlir::CallableOpInterface::getArgAttrsAttr(&v145);
    llvm::SmallVector<long long,4u>::SmallVector<long long const*,void>(__src, v141, (v142 + 8 * v143));
    llvm::SmallVectorImpl<unsigned long long>::operator=(v9, __src);
    if (__src[0] != v148)
    {
      free(__src[0]);
    }

    v144 = *(a1 + 200);
    *(a1 + 184) = (v65 - v67) >> 3;
    *(a1 + 192) = (v104 - v106) >> 3;
    if ((v144 & 1) == 0)
    {
      *(a1 + 200) = 1;
    }
  }

  return a1;
}

void sub_1E089F4C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a13 != (v16 + 16))
  {
    free(a13);
  }

  if (*v14 != v15)
  {
    free(*v14);
  }

  GPU::BaseOpHandler::~BaseOpHandler(v13);
  _Unwind_Resume(a1);
}

unint64_t GPU::Flatten2DOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, a4);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, 0);
  }
}

uint64_t GPU::BaseReshapeOpHandler<mlir::mps::ReshapeOp>::BaseReshapeOpHandler(uint64_t a1, GPURegionRuntime *a2, uint64_t a3, GPU::MPSGraphKernelDAG *a4)
{
  v148[5] = *MEMORY[0x1E69E9840];
  v6 = GPU::BaseOpHandler::BaseOpHandler(a1, a2, a3, a4);
  *(v6 + 120) = 0u;
  v7 = (v6 + 120);
  *v6 = &unk_1F5B53B10;
  v8 = v6 + 152;
  *(v6 + 17) = v6 + 152;
  v9 = (v6 + 136);
  *(v6 + 18) = 0x400000000;
  *(v6 + 184) = 0;
  *(v6 + 200) = 0;
  v10 = objc_alloc(MEMORY[0x1E6974740]);
  v11 = [*(*(a1 + 16) + 48) metalDevice];
  v12 = [v10 initWithDevice:v11];
  v13 = *(a1 + 8);
  *(a1 + 8) = v12;

  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
  if (*(a3 + 36))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  *(a1 + 120) = NextResultAtOffset;
  v16 = *(*(a3 + 72) + 24);
  *(a1 + 128) = v16;
  v17 = (*(v16 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v17)
  {
    v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
    v19 = *v7;
    *&v146 = v17;
    *(&v146 + 1) = v18;
    v20 = (*(v19 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v20)
    {
LABEL_6:
      v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
      goto LABEL_9;
    }
  }

  else
  {
    v146 = 0uLL;
    v20 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v20)
    {
      goto LABEL_6;
    }
  }

  v21 = 0;
LABEL_9:
  *&v145 = v20;
  *(&v145 + 1) = v21;
  if (!mlir::CallOpInterface::getArgOperands(&v145))
  {
    goto LABEL_17;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v145);
  if (!v23)
  {
LABEL_14:
    v25 = mlir::CallableOpInterface::getArgAttrsAttr(&v145);
    v26 = mlir::CallableOpInterface::getArgAttrsAttr(&v145);
    v28 = (v26 + 8 * v27);
    __src[0] = v148;
    __src[1] = 0x400000000;
    v29 = v28 - v25;
    v30 = (v28 - v25) >> 3;
    if (v30 < 5)
    {
      v31 = 0;
      v32 = v148;
      if (v28 == v25)
      {
        goto LABEL_24;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(__src, v148, v30, 8);
      v31 = __src[1];
      v32 = __src[0];
      if (v28 == v25)
      {
LABEL_24:
        v38 = v31 + (v29 >> 3);
        LODWORD(__src[1]) = v31 + (v29 >> 3);
        if (v9 == __src)
        {
          goto LABEL_51;
        }

        if (v32 != v148)
        {
          if (*v9 != v8)
          {
            free(*v9);
            v32 = __src[0];
            LODWORD(v38) = __src[1];
          }

          *(a1 + 136) = v32;
          v39 = HIDWORD(__src[1]);
          *(a1 + 144) = v38;
          *(a1 + 148) = v39;
          __src[0] = v148;
          HIDWORD(__src[1]) = 0;
          goto LABEL_50;
        }

        v40 = *(a1 + 144);
        if (v40 >= v38)
        {
          if (v38)
          {
            memmove(*v9, v32, 8 * v38);
          }

          goto LABEL_49;
        }

        if (*(a1 + 148) >= v38)
        {
          if (v40)
          {
            memmove(*v9, v32, 8 * v40);
            goto LABEL_47;
          }
        }

        else
        {
          *(a1 + 144) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v8, v38, 8);
        }

        v40 = 0;
LABEL_47:
        if (LODWORD(__src[1]) != v40)
        {
          memcpy(*v9 + 8 * v40, __src[0] + 8 * v40, 8 * (LODWORD(__src[1]) - v40));
        }

LABEL_49:
        *(a1 + 144) = v38;
LABEL_50:
        LODWORD(__src[1]) = 0;
        v32 = __src[0];
LABEL_51:
        if (v32 != v148)
        {
          free(v32);
        }

        return a1;
      }
    }

    memcpy(&v32[v31], v25, v28 - v25);
    v31 = __src[1];
    v32 = __src[0];
    goto LABEL_24;
  }

  v24 = 8 * v23;
  while (*ArgAttrsAttr != 0x8000000000000000)
  {
    ++ArgAttrsAttr;
    v24 -= 8;
    if (!v24)
    {
      goto LABEL_14;
    }
  }

LABEL_17:
  if (!mlir::CallOpInterface::getArgOperands(&v145))
  {
    return a1;
  }

  if (!mlir::CallOpInterface::getArgOperands(&v146))
  {
    return a1;
  }

  *__src = v146;
  v33 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  if (!v34)
  {
    return a1;
  }

  v35 = (v34 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v35 > 2)
  {
    v41 = v35 + 1;
    v42 = (v35 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v37 = (v33 + 8 * v42);
    v43 = (v33 + 16);
    v44 = 0uLL;
    v45 = vnegq_f64(0);
    v46 = v42;
    v47 = 0uLL;
    do
    {
      v44 = vsubq_s64(v44, vceqq_s64(v43[-1], v45));
      v47 = vsubq_s64(v47, vceqq_s64(*v43, v45));
      v43 += 2;
      v46 -= 4;
    }

    while (v46);
    v36 = vaddvq_s64(vaddq_s64(v47, v44));
    if (v41 == v42)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v36 = 0;
    v37 = v33;
  }

  do
  {
    v48 = *v37++;
    if (v48 == 0x8000000000000000)
    {
      ++v36;
    }
  }

  while (v37 != (v33 + 8 * v34));
LABEL_38:
  if (v36 != 1)
  {
    return a1;
  }

  *__src = v145;
  v49 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  if (!v50)
  {
    return a1;
  }

  v51 = (v50 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v51 > 2)
  {
    v55 = v51 + 1;
    v56 = (v51 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v53 = (v49 + 8 * v56);
    v57 = (v49 + 16);
    v58 = 0uLL;
    v59 = vnegq_f64(0);
    v60 = v56;
    v61 = 0uLL;
    do
    {
      v58 = vsubq_s64(v58, vceqq_s64(v57[-1], v59));
      v61 = vsubq_s64(v61, vceqq_s64(*v57, v59));
      v57 += 2;
      v60 -= 4;
    }

    while (v60);
    v52 = vaddvq_s64(vaddq_s64(v61, v58));
    if (v55 == v56)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v52 = 0;
    v53 = v49;
  }

  do
  {
    v62 = *v53++;
    if (v62 == 0x8000000000000000)
    {
      ++v52;
    }
  }

  while (v53 != (v49 + 8 * v50));
LABEL_60:
  if (v52 != 1)
  {
    return a1;
  }

  *__src = v146;
  v63 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v65 = v63;
  if (v64)
  {
    v66 = 8 * v64;
    while (*v65 != 0x8000000000000000)
    {
      v65 += 2;
      v66 -= 8;
      if (!v66)
      {
        v65 = (v63 + 8 * v64);
        break;
      }
    }
  }

  v67 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v68 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  if (v65 == v68)
  {
    v72 = 1;
    goto LABEL_75;
  }

  v69 = v65 - v68 - 8;
  if (v69 >= 0x38)
  {
    v73 = (v69 >> 3) + 1;
    v71 = (v68 + 8 * (v73 & 0x3FFFFFFFFFFFFFF8));
    v74 = (v68 + 32);
    v75.i64[0] = 0x100000001;
    v75.i64[1] = 0x100000001;
    v76 = v73 & 0x3FFFFFFFFFFFFFF8;
    v77.i64[0] = 0x100000001;
    v77.i64[1] = 0x100000001;
    do
    {
      v79 = v74[-2];
      v78 = v74[-1];
      v81 = *v74;
      v80 = v74[1];
      v74 += 4;
      v75 = vmulq_s32(v75, vuzp1q_s32(v79, v78));
      v77 = vmulq_s32(v77, vuzp1q_s32(v81, v80));
      v76 -= 8;
    }

    while (v76);
    v82 = vmulq_s32(v77, v75);
    *v82.i8 = vmul_s32(*v82.i8, *&vextq_s8(v82, v82, 8uLL));
    v70 = v82.i32[0] * v82.i32[1];
    if (v73 == (v73 & 0x3FFFFFFFFFFFFFF8))
    {
      goto LABEL_74;
    }
  }

  else
  {
    v70 = 1;
    v71 = v68;
  }

  do
  {
    v83 = *v71;
    v71 += 2;
    v70 *= v83;
  }

  while (v71 != v65);
LABEL_74:
  v72 = v70;
LABEL_75:
  v84 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v86 = v65 + 2;
  v87 = (v84 + 8 * v85);
  if (v65 + 2 == v87)
  {
    v90 = 1;
    goto LABEL_84;
  }

  v88 = v84 + 8 * v85 - v65 - 16;
  if (v88 >= 0x38)
  {
    v91 = (v88 >> 3) + 1;
    v86 += 2 * (v91 & 0x3FFFFFFFFFFFFFF8);
    v92 = (v65 + 10);
    v93.i64[0] = 0x100000001;
    v93.i64[1] = 0x100000001;
    v94 = v91 & 0x3FFFFFFFFFFFFFF8;
    v95.i64[0] = 0x100000001;
    v95.i64[1] = 0x100000001;
    do
    {
      v97 = v92[-2];
      v96 = v92[-1];
      v99 = *v92;
      v98 = v92[1];
      v92 += 4;
      v93 = vmulq_s32(v93, vuzp1q_s32(v97, v96));
      v95 = vmulq_s32(v95, vuzp1q_s32(v99, v98));
      v94 -= 8;
    }

    while (v94);
    v100 = vmulq_s32(v95, v93);
    *v100.i8 = vmul_s32(*v100.i8, *&vextq_s8(v100, v100, 8uLL));
    v89 = v100.i32[0] * v100.i32[1];
    if (v91 == (v91 & 0x3FFFFFFFFFFFFFF8))
    {
      goto LABEL_83;
    }
  }

  else
  {
    v89 = 1;
  }

  do
  {
    v101 = *v86;
    v86 += 2;
    v89 *= v101;
  }

  while (v86 != v87);
LABEL_83:
  v90 = v89;
LABEL_84:
  *__src = v145;
  v102 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v104 = v102;
  if (v103)
  {
    v105 = 8 * v103;
    while (*v104 != 0x8000000000000000)
    {
      v104 += 2;
      v105 -= 8;
      if (!v105)
      {
        v104 = (v102 + 8 * v103);
        break;
      }
    }
  }

  v106 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v107 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  if (v104 == v107)
  {
    v111 = 1;
    goto LABEL_98;
  }

  v108 = v104 - v107 - 8;
  if (v108 >= 0x38)
  {
    v112 = (v108 >> 3) + 1;
    v110 = (v107 + 8 * (v112 & 0x3FFFFFFFFFFFFFF8));
    v113 = (v107 + 32);
    v114.i64[0] = 0x100000001;
    v114.i64[1] = 0x100000001;
    v115 = v112 & 0x3FFFFFFFFFFFFFF8;
    v116.i64[0] = 0x100000001;
    v116.i64[1] = 0x100000001;
    do
    {
      v118 = v113[-2];
      v117 = v113[-1];
      v120 = *v113;
      v119 = v113[1];
      v113 += 4;
      v114 = vmulq_s32(v114, vuzp1q_s32(v118, v117));
      v116 = vmulq_s32(v116, vuzp1q_s32(v120, v119));
      v115 -= 8;
    }

    while (v115);
    v121 = vmulq_s32(v116, v114);
    *v121.i8 = vmul_s32(*v121.i8, *&vextq_s8(v121, v121, 8uLL));
    v109 = v121.i32[0] * v121.i32[1];
    if (v112 == (v112 & 0x3FFFFFFFFFFFFFF8))
    {
      goto LABEL_97;
    }
  }

  else
  {
    v109 = 1;
    v110 = v107;
  }

  do
  {
    v122 = *v110;
    v110 += 2;
    v109 *= v122;
  }

  while (v110 != v104);
LABEL_97:
  v111 = v109;
LABEL_98:
  v123 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v125 = v104 + 2;
  v126 = (v123 + 8 * v124);
  if (v104 + 2 != v126)
  {
    v127 = v123 + 8 * v124 - v104 - 16;
    if (v127 >= 0x38)
    {
      v130 = (v127 >> 3) + 1;
      v125 += 2 * (v130 & 0x3FFFFFFFFFFFFFF8);
      v131 = (v104 + 10);
      v132.i64[0] = 0x100000001;
      v132.i64[1] = 0x100000001;
      v133 = v130 & 0x3FFFFFFFFFFFFFF8;
      v134.i64[0] = 0x100000001;
      v134.i64[1] = 0x100000001;
      do
      {
        v136 = v131[-2];
        v135 = v131[-1];
        v138 = *v131;
        v137 = v131[1];
        v131 += 4;
        v132 = vmulq_s32(v132, vuzp1q_s32(v136, v135));
        v134 = vmulq_s32(v134, vuzp1q_s32(v138, v137));
        v133 -= 8;
      }

      while (v133);
      v139 = vmulq_s32(v134, v132);
      *v139.i8 = vmul_s32(*v139.i8, *&vextq_s8(v139, v139, 8uLL));
      v128 = v139.i32[0] * v139.i32[1];
      if (v130 == (v130 & 0x3FFFFFFFFFFFFFF8))
      {
        goto LABEL_106;
      }
    }

    else
    {
      v128 = 1;
    }

    do
    {
      v140 = *v125;
      v125 += 2;
      v128 *= v140;
    }

    while (v125 != v126);
LABEL_106:
    v129 = v128;
    goto LABEL_107;
  }

  v129 = 1;
LABEL_107:
  if (v72 == v111 && v90 == v129)
  {
    v141 = mlir::CallableOpInterface::getArgAttrsAttr(&v145);
    v142 = mlir::CallableOpInterface::getArgAttrsAttr(&v145);
    llvm::SmallVector<long long,4u>::SmallVector<long long const*,void>(__src, v141, (v142 + 8 * v143));
    llvm::SmallVectorImpl<unsigned long long>::operator=(v9, __src);
    if (__src[0] != v148)
    {
      free(__src[0]);
    }

    v144 = *(a1 + 200);
    *(a1 + 184) = (v65 - v67) >> 3;
    *(a1 + 192) = (v104 - v106) >> 3;
    if ((v144 & 1) == 0)
    {
      *(a1 + 200) = 1;
    }
  }

  return a1;
}

void sub_1E089FDF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a13 != (v16 + 16))
  {
    free(a13);
  }

  if (*v14 != v15)
  {
    free(*v14);
  }

  GPU::BaseOpHandler::~BaseOpHandler(v13);
  _Unwind_Resume(a1);
}

unint64_t GPU::ReshapeOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, a4);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, 0);
  }
}

uint64_t GPU::BaseReshapeOpHandler<mlir::mps::SqueezeOp>::BaseReshapeOpHandler(uint64_t a1, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v148[5] = *MEMORY[0x1E69E9840];
  v6 = GPU::BaseOpHandler::BaseOpHandler(a1, a2, a3, a4);
  *(v6 + 120) = 0u;
  v7 = v6 + 120;
  *v6 = &unk_1F5B53B60;
  v8 = v6 + 152;
  *(v6 + 17) = v6 + 152;
  v9 = (v6 + 136);
  *(v6 + 18) = 0x400000000;
  *(v6 + 184) = 0;
  *(v6 + 200) = 0;
  v10 = objc_alloc(MEMORY[0x1E6974740]);
  v11 = [*(*(a1 + 16) + 48) metalDevice];
  v12 = [v10 initWithDevice:v11];
  v13 = *(a1 + 8);
  *(a1 + 8) = v12;

  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
  v146 = a3;
  if (*(a3 + 9))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  *v7 = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v146, 0);
  v16 = *(*(v146 + 9) + 32 * ODSOperandIndexAndLength + 24);
  *(a1 + 128) = v16;
  v17 = (*(v16 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v17)
  {
    v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
    *&v145 = v17;
    *(&v145 + 1) = v18;
    v19 = (*(*v7 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v19)
    {
LABEL_6:
      v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
      goto LABEL_9;
    }
  }

  else
  {
    v145 = 0uLL;
    v19 = (*(*v7 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v19)
    {
      goto LABEL_6;
    }
  }

  v20 = 0;
LABEL_9:
  *&v144 = v19;
  *(&v144 + 1) = v20;
  if (!mlir::CallOpInterface::getArgOperands(&v144))
  {
    goto LABEL_17;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v144);
  if (!v22)
  {
LABEL_14:
    v24 = mlir::CallableOpInterface::getArgAttrsAttr(&v144);
    v25 = mlir::CallableOpInterface::getArgAttrsAttr(&v144);
    v27 = (v25 + 8 * v26);
    __src[0] = v148;
    __src[1] = 0x400000000;
    v28 = v27 - v24;
    v29 = (v27 - v24) >> 3;
    if (v29 < 5)
    {
      v30 = 0;
      v31 = v148;
      if (v27 == v24)
      {
        goto LABEL_24;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(__src, v148, v29, 8);
      v30 = __src[1];
      v31 = __src[0];
      if (v27 == v24)
      {
LABEL_24:
        v37 = v30 + (v28 >> 3);
        LODWORD(__src[1]) = v30 + (v28 >> 3);
        if (v9 == __src)
        {
          goto LABEL_51;
        }

        if (v31 != v148)
        {
          if (*v9 != v8)
          {
            free(*v9);
            v31 = __src[0];
            LODWORD(v37) = __src[1];
          }

          *(a1 + 136) = v31;
          v38 = HIDWORD(__src[1]);
          *(a1 + 144) = v37;
          *(a1 + 148) = v38;
          __src[0] = v148;
          HIDWORD(__src[1]) = 0;
          goto LABEL_50;
        }

        v39 = *(a1 + 144);
        if (v39 >= v37)
        {
          if (v37)
          {
            memmove(*v9, v31, 8 * v37);
          }

          goto LABEL_49;
        }

        if (*(a1 + 148) >= v37)
        {
          if (v39)
          {
            memmove(*v9, v31, 8 * v39);
            goto LABEL_47;
          }
        }

        else
        {
          *(a1 + 144) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v8, v37, 8);
        }

        v39 = 0;
LABEL_47:
        if (LODWORD(__src[1]) != v39)
        {
          memcpy(*v9 + 8 * v39, __src[0] + 8 * v39, 8 * (LODWORD(__src[1]) - v39));
        }

LABEL_49:
        *(a1 + 144) = v37;
LABEL_50:
        LODWORD(__src[1]) = 0;
        v31 = __src[0];
LABEL_51:
        if (v31 != v148)
        {
          free(v31);
        }

        return a1;
      }
    }

    memcpy(&v31[v30], v24, v27 - v24);
    v30 = __src[1];
    v31 = __src[0];
    goto LABEL_24;
  }

  v23 = 8 * v22;
  while (*ArgAttrsAttr != 0x8000000000000000)
  {
    ++ArgAttrsAttr;
    v23 -= 8;
    if (!v23)
    {
      goto LABEL_14;
    }
  }

LABEL_17:
  if (!mlir::CallOpInterface::getArgOperands(&v144))
  {
    return a1;
  }

  if (!mlir::CallOpInterface::getArgOperands(&v145))
  {
    return a1;
  }

  *__src = v145;
  v32 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  if (!v33)
  {
    return a1;
  }

  v34 = (v33 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v34 > 2)
  {
    v40 = v34 + 1;
    v41 = (v34 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v36 = (v32 + 8 * v41);
    v42 = (v32 + 16);
    v43 = 0uLL;
    v44 = vnegq_f64(0);
    v45 = v41;
    v46 = 0uLL;
    do
    {
      v43 = vsubq_s64(v43, vceqq_s64(v42[-1], v44));
      v46 = vsubq_s64(v46, vceqq_s64(*v42, v44));
      v42 += 2;
      v45 -= 4;
    }

    while (v45);
    v35 = vaddvq_s64(vaddq_s64(v46, v43));
    if (v40 == v41)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v35 = 0;
    v36 = v32;
  }

  do
  {
    v47 = *v36++;
    if (v47 == 0x8000000000000000)
    {
      ++v35;
    }
  }

  while (v36 != (v32 + 8 * v33));
LABEL_38:
  if (v35 != 1)
  {
    return a1;
  }

  *__src = v144;
  v48 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  if (!v49)
  {
    return a1;
  }

  v50 = (v49 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v50 > 2)
  {
    v54 = v50 + 1;
    v55 = (v50 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v52 = (v48 + 8 * v55);
    v56 = (v48 + 16);
    v57 = 0uLL;
    v58 = vnegq_f64(0);
    v59 = v55;
    v60 = 0uLL;
    do
    {
      v57 = vsubq_s64(v57, vceqq_s64(v56[-1], v58));
      v60 = vsubq_s64(v60, vceqq_s64(*v56, v58));
      v56 += 2;
      v59 -= 4;
    }

    while (v59);
    v51 = vaddvq_s64(vaddq_s64(v60, v57));
    if (v54 == v55)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v51 = 0;
    v52 = v48;
  }

  do
  {
    v61 = *v52++;
    if (v61 == 0x8000000000000000)
    {
      ++v51;
    }
  }

  while (v52 != (v48 + 8 * v49));
LABEL_60:
  if (v51 != 1)
  {
    return a1;
  }

  *__src = v145;
  v62 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v64 = v62;
  if (v63)
  {
    v65 = 8 * v63;
    while (*v64 != 0x8000000000000000)
    {
      v64 += 2;
      v65 -= 8;
      if (!v65)
      {
        v64 = (v62 + 8 * v63);
        break;
      }
    }
  }

  v66 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v67 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  if (v64 == v67)
  {
    v71 = 1;
    goto LABEL_75;
  }

  v68 = v64 - v67 - 8;
  if (v68 >= 0x38)
  {
    v72 = (v68 >> 3) + 1;
    v70 = (v67 + 8 * (v72 & 0x3FFFFFFFFFFFFFF8));
    v73 = (v67 + 32);
    v74.i64[0] = 0x100000001;
    v74.i64[1] = 0x100000001;
    v75 = v72 & 0x3FFFFFFFFFFFFFF8;
    v76.i64[0] = 0x100000001;
    v76.i64[1] = 0x100000001;
    do
    {
      v78 = v73[-2];
      v77 = v73[-1];
      v80 = *v73;
      v79 = v73[1];
      v73 += 4;
      v74 = vmulq_s32(v74, vuzp1q_s32(v78, v77));
      v76 = vmulq_s32(v76, vuzp1q_s32(v80, v79));
      v75 -= 8;
    }

    while (v75);
    v81 = vmulq_s32(v76, v74);
    *v81.i8 = vmul_s32(*v81.i8, *&vextq_s8(v81, v81, 8uLL));
    v69 = v81.i32[0] * v81.i32[1];
    if (v72 == (v72 & 0x3FFFFFFFFFFFFFF8))
    {
      goto LABEL_74;
    }
  }

  else
  {
    v69 = 1;
    v70 = v67;
  }

  do
  {
    v82 = *v70;
    v70 += 2;
    v69 *= v82;
  }

  while (v70 != v64);
LABEL_74:
  v71 = v69;
LABEL_75:
  v83 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v85 = v64 + 2;
  v86 = (v83 + 8 * v84);
  if (v64 + 2 == v86)
  {
    v89 = 1;
    goto LABEL_84;
  }

  v87 = v83 + 8 * v84 - v64 - 16;
  if (v87 >= 0x38)
  {
    v90 = (v87 >> 3) + 1;
    v85 += 2 * (v90 & 0x3FFFFFFFFFFFFFF8);
    v91 = (v64 + 10);
    v92.i64[0] = 0x100000001;
    v92.i64[1] = 0x100000001;
    v93 = v90 & 0x3FFFFFFFFFFFFFF8;
    v94.i64[0] = 0x100000001;
    v94.i64[1] = 0x100000001;
    do
    {
      v96 = v91[-2];
      v95 = v91[-1];
      v98 = *v91;
      v97 = v91[1];
      v91 += 4;
      v92 = vmulq_s32(v92, vuzp1q_s32(v96, v95));
      v94 = vmulq_s32(v94, vuzp1q_s32(v98, v97));
      v93 -= 8;
    }

    while (v93);
    v99 = vmulq_s32(v94, v92);
    *v99.i8 = vmul_s32(*v99.i8, *&vextq_s8(v99, v99, 8uLL));
    v88 = v99.i32[0] * v99.i32[1];
    if (v90 == (v90 & 0x3FFFFFFFFFFFFFF8))
    {
      goto LABEL_83;
    }
  }

  else
  {
    v88 = 1;
  }

  do
  {
    v100 = *v85;
    v85 += 2;
    v88 *= v100;
  }

  while (v85 != v86);
LABEL_83:
  v89 = v88;
LABEL_84:
  *__src = v144;
  v101 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v103 = v101;
  if (v102)
  {
    v104 = 8 * v102;
    while (*v103 != 0x8000000000000000)
    {
      v103 += 2;
      v104 -= 8;
      if (!v104)
      {
        v103 = (v101 + 8 * v102);
        break;
      }
    }
  }

  v105 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v106 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  if (v103 == v106)
  {
    v110 = 1;
    goto LABEL_98;
  }

  v107 = v103 - v106 - 8;
  if (v107 >= 0x38)
  {
    v111 = (v107 >> 3) + 1;
    v109 = (v106 + 8 * (v111 & 0x3FFFFFFFFFFFFFF8));
    v112 = (v106 + 32);
    v113.i64[0] = 0x100000001;
    v113.i64[1] = 0x100000001;
    v114 = v111 & 0x3FFFFFFFFFFFFFF8;
    v115.i64[0] = 0x100000001;
    v115.i64[1] = 0x100000001;
    do
    {
      v117 = v112[-2];
      v116 = v112[-1];
      v119 = *v112;
      v118 = v112[1];
      v112 += 4;
      v113 = vmulq_s32(v113, vuzp1q_s32(v117, v116));
      v115 = vmulq_s32(v115, vuzp1q_s32(v119, v118));
      v114 -= 8;
    }

    while (v114);
    v120 = vmulq_s32(v115, v113);
    *v120.i8 = vmul_s32(*v120.i8, *&vextq_s8(v120, v120, 8uLL));
    v108 = v120.i32[0] * v120.i32[1];
    if (v111 == (v111 & 0x3FFFFFFFFFFFFFF8))
    {
      goto LABEL_97;
    }
  }

  else
  {
    v108 = 1;
    v109 = v106;
  }

  do
  {
    v121 = *v109;
    v109 += 2;
    v108 *= v121;
  }

  while (v109 != v103);
LABEL_97:
  v110 = v108;
LABEL_98:
  v122 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v124 = v103 + 2;
  v125 = (v122 + 8 * v123);
  if (v103 + 2 != v125)
  {
    v126 = v122 + 8 * v123 - v103 - 16;
    if (v126 >= 0x38)
    {
      v129 = (v126 >> 3) + 1;
      v124 += 2 * (v129 & 0x3FFFFFFFFFFFFFF8);
      v130 = (v103 + 10);
      v131.i64[0] = 0x100000001;
      v131.i64[1] = 0x100000001;
      v132 = v129 & 0x3FFFFFFFFFFFFFF8;
      v133.i64[0] = 0x100000001;
      v133.i64[1] = 0x100000001;
      do
      {
        v135 = v130[-2];
        v134 = v130[-1];
        v137 = *v130;
        v136 = v130[1];
        v130 += 4;
        v131 = vmulq_s32(v131, vuzp1q_s32(v135, v134));
        v133 = vmulq_s32(v133, vuzp1q_s32(v137, v136));
        v132 -= 8;
      }

      while (v132);
      v138 = vmulq_s32(v133, v131);
      *v138.i8 = vmul_s32(*v138.i8, *&vextq_s8(v138, v138, 8uLL));
      v127 = v138.i32[0] * v138.i32[1];
      if (v129 == (v129 & 0x3FFFFFFFFFFFFFF8))
      {
        goto LABEL_106;
      }
    }

    else
    {
      v127 = 1;
    }

    do
    {
      v139 = *v124;
      v124 += 2;
      v127 *= v139;
    }

    while (v124 != v125);
LABEL_106:
    v128 = v127;
    goto LABEL_107;
  }

  v128 = 1;
LABEL_107:
  if (v71 == v110 && v89 == v128)
  {
    v140 = mlir::CallableOpInterface::getArgAttrsAttr(&v144);
    v141 = mlir::CallableOpInterface::getArgAttrsAttr(&v144);
    llvm::SmallVector<long long,4u>::SmallVector<long long const*,void>(__src, v140, (v141 + 8 * v142));
    llvm::SmallVectorImpl<unsigned long long>::operator=(v9, __src);
    if (__src[0] != v148)
    {
      free(__src[0]);
    }

    v143 = *(a1 + 200);
    *(a1 + 184) = (v64 - v66) >> 3;
    *(a1 + 192) = (v103 - v105) >> 3;
    if ((v143 & 1) == 0)
    {
      *(a1 + 200) = 1;
    }
  }

  return a1;
}

void sub_1E08A0738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  if (a15 != (v18 + 16))
  {
    free(a15);
  }

  if (*v16 != v17)
  {
    free(*v16);
  }

  GPU::BaseOpHandler::~BaseOpHandler(v15);
  _Unwind_Resume(a1);
}

unint64_t GPU::SqueezeOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, a4);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, 0);
  }
}

void GPU::BaseReshapeOpHandler<mlir::mps::ExpandDimsOp>::encodeOp(uint64_t a1, GPU::EncodeDescriptor *a2)
{
  v42[4] = *MEMORY[0x1E69E9840];
  v4 = (a1 + 16);
  v5 = (*(**(a1 + 16) + 48))(*(a1 + 16), *(a1 + 120), 0);
  v6 = (*(**v4 + 48))(*v4, *(a1 + 128), 0);
  v7 = [v6 mpsndarray];
  if (!v7 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v8 = *(a1 + 144);
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = (a1 + 136);
  if (*(a1 + 200) != 1)
  {
    goto LABEL_10;
  }

  v10 = [v6 shape];

  if (!v10)
  {
    v8 = *(a1 + 144);
LABEL_10:
    v15 = getMPSShapeFromMLIR(*v9, v8);
LABEL_18:
    v20 = v15;
    goto LABEL_19;
  }

  v11 = *(a1 + 120);
  v12 = *(*(*(a1 + 16) + 592) + 32);
  if ((*(*v12 + 24))(v12, v11))
  {
    goto LABEL_17;
  }

  v13 = (*(v11 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8))
  {
    v40 = 0;
    v41 = 0;
    goto LABEL_17;
  }

  v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  v40 = v13;
  v41 = v14;
  if (!v13)
  {
    goto LABEL_17;
  }

  if (mlir::CallOpInterface::getArgOperands(&v40))
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v40);
    if (v17)
    {
      v18 = 8 * v17;
      while (*ArgAttrsAttr != 0x8000000000000000)
      {
        ++ArgAttrsAttr;
        v18 -= 8;
        if (!v18)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_22;
    }

LABEL_17:
    StaticType = GPURegionRuntime::getStaticType(*(a1 + 16), *(a1 + 120));
    v15 = getMPSShapeFromMLIR(StaticType);
    goto LABEL_18;
  }

LABEL_22:
  v22 = [v6 shape];
  v23 = [v22 objectAtIndexedSubscript:*(a1 + 184)];
  v24 = [v23 longLongValue];

  if (v24 < 1)
  {
    goto LABEL_20;
  }

  v40 = v42;
  v41 = 0x400000000;
  if (&v40 != v9)
  {
    v25 = *(a1 + 144);
    if (v25)
    {
      if (v25 < 5)
      {
        v26 = *(a1 + 144);
        v27 = v42;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v42, *(a1 + 144), 8);
        v26 = *(a1 + 144);
        if (!v26)
        {
LABEL_31:
          LODWORD(v41) = v25;
          v28 = v40;
          goto LABEL_32;
        }

        v27 = v40;
      }

      memcpy(v27, *v9, 8 * v26);
      goto LABEL_31;
    }
  }

  v25 = 0;
  v28 = v42;
LABEL_32:
  v28[*(a1 + 192)] = v24;
  v20 = getMPSShapeFromMLIR(v28, v25);
  v29 = *(a1 + 16);
  v30 = *(a1 + 120);
  v31 = (*(v30 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v31)
  {
    v32 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v31 + 8);
  }

  else
  {
    v32 = 0;
  }

  v35[0] = v31;
  v35[1] = v32;
  *&v36 = v40;
  *(&v36 + 1) = v41;
  v37 = 1;
  isSplat = mlir::ElementsAttr::isSplat(v35);
  v38[1] = mlir::ShapedType::cloneWith(v35, &v36, isSplat);
  v39 = v30;
  v38[0] = *(mlir::Value::getParentRegion(&v39) + 2);
  *&v36 = v38;
  v34 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>>>::__emplace_unique_key_args<mlir::Operation *,std::piecewise_construct_t const&,std::tuple<mlir::Operation * const&>,std::tuple<>>((v29 + 288), v38);
  *&v36 = v39;
  std::__hash_table<std::__hash_value_type<void *,mlir::Type>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,mlir::Type>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,mlir::Type>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,mlir::Type>>>::__emplace_unique_key_args<void *,void *,mlir::Type&>(v34 + 3, &v36);
  if (v40 != v42)
  {
    free(v40);
  }

LABEL_19:
  if (!v20)
  {
LABEL_20:
    GPU::BaseOpHandler::_inferJITOutputTypes(a1, a2);
    v21 = GPURegionRuntime::getStaticType(*(a1 + 16), *(a1 + 120));
    v20 = getMPSShapeFromMLIR(v21);
  }

  GPU::encodeReshape(*(a1 + 120), *(a1 + 16), a2, *(a1 + 8), v7, v20, v5);
}

void GPU::ExpandDimsOpHandler::~ExpandDimsOpHandler(GPU::ExpandDimsOpHandler *this)
{
  *this = &unk_1F5B53A70;
  v2 = *(this + 17);
  if (v2 != this + 152)
  {
    v3 = this;
    free(v2);
    this = v3;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B53A70;
  v2 = *(this + 17);
  if (v2 != this + 152)
  {
    free(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::BaseReshapeOpHandler<mlir::mps::Flatten2DOp>::encodeOp(uint64_t a1, GPU::EncodeDescriptor *a2)
{
  v42[4] = *MEMORY[0x1E69E9840];
  v4 = (a1 + 16);
  v5 = (*(**(a1 + 16) + 48))(*(a1 + 16), *(a1 + 120), 0);
  v6 = (*(**v4 + 48))(*v4, *(a1 + 128), 0);
  v7 = [v6 mpsndarray];
  if (!v7 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v8 = *(a1 + 144);
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = (a1 + 136);
  if (*(a1 + 200) != 1)
  {
    goto LABEL_10;
  }

  v10 = [v6 shape];

  if (!v10)
  {
    v8 = *(a1 + 144);
LABEL_10:
    v15 = getMPSShapeFromMLIR(*v9, v8);
LABEL_18:
    v20 = v15;
    goto LABEL_19;
  }

  v11 = *(a1 + 120);
  v12 = *(*(*(a1 + 16) + 592) + 32);
  if ((*(*v12 + 24))(v12, v11))
  {
    goto LABEL_17;
  }

  v13 = (*(v11 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8))
  {
    v40 = 0;
    v41 = 0;
    goto LABEL_17;
  }

  v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  v40 = v13;
  v41 = v14;
  if (!v13)
  {
    goto LABEL_17;
  }

  if (mlir::CallOpInterface::getArgOperands(&v40))
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v40);
    if (v17)
    {
      v18 = 8 * v17;
      while (*ArgAttrsAttr != 0x8000000000000000)
      {
        ++ArgAttrsAttr;
        v18 -= 8;
        if (!v18)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_22;
    }

LABEL_17:
    StaticType = GPURegionRuntime::getStaticType(*(a1 + 16), *(a1 + 120));
    v15 = getMPSShapeFromMLIR(StaticType);
    goto LABEL_18;
  }

LABEL_22:
  v22 = [v6 shape];
  v23 = [v22 objectAtIndexedSubscript:*(a1 + 184)];
  v24 = [v23 longLongValue];

  if (v24 < 1)
  {
    goto LABEL_20;
  }

  v40 = v42;
  v41 = 0x400000000;
  if (&v40 != v9)
  {
    v25 = *(a1 + 144);
    if (v25)
    {
      if (v25 < 5)
      {
        v26 = *(a1 + 144);
        v27 = v42;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v42, *(a1 + 144), 8);
        v26 = *(a1 + 144);
        if (!v26)
        {
LABEL_31:
          LODWORD(v41) = v25;
          v28 = v40;
          goto LABEL_32;
        }

        v27 = v40;
      }

      memcpy(v27, *v9, 8 * v26);
      goto LABEL_31;
    }
  }

  v25 = 0;
  v28 = v42;
LABEL_32:
  v28[*(a1 + 192)] = v24;
  v20 = getMPSShapeFromMLIR(v28, v25);
  v29 = *(a1 + 16);
  v30 = *(a1 + 120);
  v31 = (*(v30 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v31)
  {
    v32 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v31 + 8);
  }

  else
  {
    v32 = 0;
  }

  v35[0] = v31;
  v35[1] = v32;
  *&v36 = v40;
  *(&v36 + 1) = v41;
  v37 = 1;
  isSplat = mlir::ElementsAttr::isSplat(v35);
  v38[1] = mlir::ShapedType::cloneWith(v35, &v36, isSplat);
  v39 = v30;
  v38[0] = *(mlir::Value::getParentRegion(&v39) + 2);
  *&v36 = v38;
  v34 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>>>::__emplace_unique_key_args<mlir::Operation *,std::piecewise_construct_t const&,std::tuple<mlir::Operation * const&>,std::tuple<>>((v29 + 288), v38);
  *&v36 = v39;
  std::__hash_table<std::__hash_value_type<void *,mlir::Type>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,mlir::Type>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,mlir::Type>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,mlir::Type>>>::__emplace_unique_key_args<void *,void *,mlir::Type&>(v34 + 3, &v36);
  if (v40 != v42)
  {
    free(v40);
  }

LABEL_19:
  if (!v20)
  {
LABEL_20:
    GPU::BaseOpHandler::_inferJITOutputTypes(a1, a2);
    v21 = GPURegionRuntime::getStaticType(*(a1 + 16), *(a1 + 120));
    v20 = getMPSShapeFromMLIR(v21);
  }

  GPU::encodeReshape(*(a1 + 120), *(a1 + 16), a2, *(a1 + 8), v7, v20, v5);
}

void GPU::Flatten2DOpHandler::~Flatten2DOpHandler(GPU::Flatten2DOpHandler *this)
{
  *this = &unk_1F5B53AC0;
  v2 = *(this + 17);
  if (v2 != this + 152)
  {
    v3 = this;
    free(v2);
    this = v3;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B53AC0;
  v2 = *(this + 17);
  if (v2 != this + 152)
  {
    free(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::BaseReshapeOpHandler<mlir::mps::ReshapeOp>::encodeOp(uint64_t a1, GPU::EncodeDescriptor *a2)
{
  v42[4] = *MEMORY[0x1E69E9840];
  v4 = (a1 + 16);
  v5 = (*(**(a1 + 16) + 48))(*(a1 + 16), *(a1 + 120), 0);
  v6 = (*(**v4 + 48))(*v4, *(a1 + 128), 0);
  v7 = [v6 mpsndarray];
  if (!v7 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v8 = *(a1 + 144);
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = (a1 + 136);
  if (*(a1 + 200) != 1)
  {
    goto LABEL_10;
  }

  v10 = [v6 shape];

  if (!v10)
  {
    v8 = *(a1 + 144);
LABEL_10:
    v15 = getMPSShapeFromMLIR(*v9, v8);
LABEL_18:
    v20 = v15;
    goto LABEL_19;
  }

  v11 = *(a1 + 120);
  v12 = *(*(*(a1 + 16) + 592) + 32);
  if ((*(*v12 + 24))(v12, v11))
  {
    goto LABEL_17;
  }

  v13 = (*(v11 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8))
  {
    v40 = 0;
    v41 = 0;
    goto LABEL_17;
  }

  v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  v40 = v13;
  v41 = v14;
  if (!v13)
  {
    goto LABEL_17;
  }

  if (mlir::CallOpInterface::getArgOperands(&v40))
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v40);
    if (v17)
    {
      v18 = 8 * v17;
      while (*ArgAttrsAttr != 0x8000000000000000)
      {
        ++ArgAttrsAttr;
        v18 -= 8;
        if (!v18)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_22;
    }

LABEL_17:
    StaticType = GPURegionRuntime::getStaticType(*(a1 + 16), *(a1 + 120));
    v15 = getMPSShapeFromMLIR(StaticType);
    goto LABEL_18;
  }

LABEL_22:
  v22 = [v6 shape];
  v23 = [v22 objectAtIndexedSubscript:*(a1 + 184)];
  v24 = [v23 longLongValue];

  if (v24 < 1)
  {
    goto LABEL_20;
  }

  v40 = v42;
  v41 = 0x400000000;
  if (&v40 != v9)
  {
    v25 = *(a1 + 144);
    if (v25)
    {
      if (v25 < 5)
      {
        v26 = *(a1 + 144);
        v27 = v42;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v42, *(a1 + 144), 8);
        v26 = *(a1 + 144);
        if (!v26)
        {
LABEL_31:
          LODWORD(v41) = v25;
          v28 = v40;
          goto LABEL_32;
        }

        v27 = v40;
      }

      memcpy(v27, *v9, 8 * v26);
      goto LABEL_31;
    }
  }

  v25 = 0;
  v28 = v42;
LABEL_32:
  v28[*(a1 + 192)] = v24;
  v20 = getMPSShapeFromMLIR(v28, v25);
  v29 = *(a1 + 16);
  v30 = *(a1 + 120);
  v31 = (*(v30 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v31)
  {
    v32 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v31 + 8);
  }

  else
  {
    v32 = 0;
  }

  v35[0] = v31;
  v35[1] = v32;
  *&v36 = v40;
  *(&v36 + 1) = v41;
  v37 = 1;
  isSplat = mlir::ElementsAttr::isSplat(v35);
  v38[1] = mlir::ShapedType::cloneWith(v35, &v36, isSplat);
  v39 = v30;
  v38[0] = *(mlir::Value::getParentRegion(&v39) + 2);
  *&v36 = v38;
  v34 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>>>::__emplace_unique_key_args<mlir::Operation *,std::piecewise_construct_t const&,std::tuple<mlir::Operation * const&>,std::tuple<>>((v29 + 288), v38);
  *&v36 = v39;
  std::__hash_table<std::__hash_value_type<void *,mlir::Type>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,mlir::Type>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,mlir::Type>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,mlir::Type>>>::__emplace_unique_key_args<void *,void *,mlir::Type&>(v34 + 3, &v36);
  if (v40 != v42)
  {
    free(v40);
  }

LABEL_19:
  if (!v20)
  {
LABEL_20:
    GPU::BaseOpHandler::_inferJITOutputTypes(a1, a2);
    v21 = GPURegionRuntime::getStaticType(*(a1 + 16), *(a1 + 120));
    v20 = getMPSShapeFromMLIR(v21);
  }

  GPU::encodeReshape(*(a1 + 120), *(a1 + 16), a2, *(a1 + 8), v7, v20, v5);
}

void GPU::ReshapeOpHandler::~ReshapeOpHandler(GPU::ReshapeOpHandler *this)
{
  *this = &unk_1F5B53B10;
  v2 = *(this + 17);
  if (v2 != this + 152)
  {
    v3 = this;
    free(v2);
    this = v3;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B53B10;
  v2 = *(this + 17);
  if (v2 != this + 152)
  {
    free(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::BaseReshapeOpHandler<mlir::mps::SqueezeOp>::encodeOp(uint64_t a1, GPU::EncodeDescriptor *a2)
{
  v42[4] = *MEMORY[0x1E69E9840];
  v4 = (a1 + 16);
  v5 = (*(**(a1 + 16) + 48))(*(a1 + 16), *(a1 + 120), 0);
  v6 = (*(**v4 + 48))(*v4, *(a1 + 128), 0);
  v7 = [v6 mpsndarray];
  if (!v7 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v8 = *(a1 + 144);
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = (a1 + 136);
  if (*(a1 + 200) != 1)
  {
    goto LABEL_10;
  }

  v10 = [v6 shape];

  if (!v10)
  {
    v8 = *(a1 + 144);
LABEL_10:
    v15 = getMPSShapeFromMLIR(*v9, v8);
LABEL_18:
    v20 = v15;
    goto LABEL_19;
  }

  v11 = *(a1 + 120);
  v12 = *(*(*(a1 + 16) + 592) + 32);
  if ((*(*v12 + 24))(v12, v11))
  {
    goto LABEL_17;
  }

  v13 = (*(v11 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8))
  {
    v40 = 0;
    v41 = 0;
    goto LABEL_17;
  }

  v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  v40 = v13;
  v41 = v14;
  if (!v13)
  {
    goto LABEL_17;
  }

  if (mlir::CallOpInterface::getArgOperands(&v40))
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v40);
    if (v17)
    {
      v18 = 8 * v17;
      while (*ArgAttrsAttr != 0x8000000000000000)
      {
        ++ArgAttrsAttr;
        v18 -= 8;
        if (!v18)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_22;
    }

LABEL_17:
    StaticType = GPURegionRuntime::getStaticType(*(a1 + 16), *(a1 + 120));
    v15 = getMPSShapeFromMLIR(StaticType);
    goto LABEL_18;
  }

LABEL_22:
  v22 = [v6 shape];
  v23 = [v22 objectAtIndexedSubscript:*(a1 + 184)];
  v24 = [v23 longLongValue];

  if (v24 < 1)
  {
    goto LABEL_20;
  }

  v40 = v42;
  v41 = 0x400000000;
  if (&v40 != v9)
  {
    v25 = *(a1 + 144);
    if (v25)
    {
      if (v25 < 5)
      {
        v26 = *(a1 + 144);
        v27 = v42;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v42, *(a1 + 144), 8);
        v26 = *(a1 + 144);
        if (!v26)
        {
LABEL_31:
          LODWORD(v41) = v25;
          v28 = v40;
          goto LABEL_32;
        }

        v27 = v40;
      }

      memcpy(v27, *v9, 8 * v26);
      goto LABEL_31;
    }
  }

  v25 = 0;
  v28 = v42;
LABEL_32:
  v28[*(a1 + 192)] = v24;
  v20 = getMPSShapeFromMLIR(v28, v25);
  v29 = *(a1 + 16);
  v30 = *(a1 + 120);
  v31 = (*(v30 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v31)
  {
    v32 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v31 + 8);
  }

  else
  {
    v32 = 0;
  }

  v35[0] = v31;
  v35[1] = v32;
  *&v36 = v40;
  *(&v36 + 1) = v41;
  v37 = 1;
  isSplat = mlir::ElementsAttr::isSplat(v35);
  v38[1] = mlir::ShapedType::cloneWith(v35, &v36, isSplat);
  v39 = v30;
  v38[0] = *(mlir::Value::getParentRegion(&v39) + 2);
  *&v36 = v38;
  v34 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>>>::__emplace_unique_key_args<mlir::Operation *,std::piecewise_construct_t const&,std::tuple<mlir::Operation * const&>,std::tuple<>>((v29 + 288), v38);
  *&v36 = v39;
  std::__hash_table<std::__hash_value_type<void *,mlir::Type>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,mlir::Type>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,mlir::Type>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,mlir::Type>>>::__emplace_unique_key_args<void *,void *,mlir::Type&>(v34 + 3, &v36);
  if (v40 != v42)
  {
    free(v40);
  }

LABEL_19:
  if (!v20)
  {
LABEL_20:
    GPU::BaseOpHandler::_inferJITOutputTypes(a1, a2);
    v21 = GPURegionRuntime::getStaticType(*(a1 + 16), *(a1 + 120));
    v20 = getMPSShapeFromMLIR(v21);
  }

  GPU::encodeReshape(*(a1 + 120), *(a1 + 16), a2, *(a1 + 8), v7, v20, v5);
}

void GPU::SqueezeOpHandler::~SqueezeOpHandler(GPU::SqueezeOpHandler *this)
{
  *this = &unk_1F5B53B60;
  v2 = *(this + 17);
  if (v2 != this + 152)
  {
    v3 = this;
    free(v2);
    this = v3;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B53B60;
  v2 = *(this + 17);
  if (v2 != this + 152)
  {
    free(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::BaseReshapeOpHandler<mlir::mps::ExpandDimsOp>::~BaseReshapeOpHandler(GPU::BaseOpHandler *a1)
{
  *a1 = &unk_1F5B53A70;
  v2 = *(a1 + 17);
  if (v2 != (a1 + 152))
  {
    v3 = a1;
    free(v2);
    a1 = v3;
  }

  GPU::BaseOpHandler::~BaseOpHandler(a1);
}

void GPU::BaseReshapeOpHandler<mlir::mps::ExpandDimsOp>::~BaseReshapeOpHandler(GPU::BaseOpHandler *this)
{
  *this = &unk_1F5B53A70;
  v2 = *(this + 17);
  if (v2 != this + 152)
  {
    free(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::BaseReshapeOpHandler<mlir::mps::Flatten2DOp>::~BaseReshapeOpHandler(GPU::BaseOpHandler *a1)
{
  *a1 = &unk_1F5B53AC0;
  v2 = *(a1 + 17);
  if (v2 != (a1 + 152))
  {
    v3 = a1;
    free(v2);
    a1 = v3;
  }

  GPU::BaseOpHandler::~BaseOpHandler(a1);
}

void GPU::BaseReshapeOpHandler<mlir::mps::Flatten2DOp>::~BaseReshapeOpHandler(GPU::BaseOpHandler *this)
{
  *this = &unk_1F5B53AC0;
  v2 = *(this + 17);
  if (v2 != this + 152)
  {
    free(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::BaseReshapeOpHandler<mlir::mps::ReshapeOp>::~BaseReshapeOpHandler(GPU::BaseOpHandler *a1)
{
  *a1 = &unk_1F5B53B10;
  v2 = *(a1 + 17);
  if (v2 != (a1 + 152))
  {
    v3 = a1;
    free(v2);
    a1 = v3;
  }

  GPU::BaseOpHandler::~BaseOpHandler(a1);
}

void GPU::BaseReshapeOpHandler<mlir::mps::ReshapeOp>::~BaseReshapeOpHandler(GPU::BaseOpHandler *this)
{
  *this = &unk_1F5B53B10;
  v2 = *(this + 17);
  if (v2 != this + 152)
  {
    free(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::BaseReshapeOpHandler<mlir::mps::SqueezeOp>::~BaseReshapeOpHandler(GPU::BaseOpHandler *a1)
{
  *a1 = &unk_1F5B53B60;
  v2 = *(a1 + 17);
  if (v2 != (a1 + 152))
  {
    v3 = a1;
    free(v2);
    a1 = v3;
  }

  GPU::BaseOpHandler::~BaseOpHandler(a1);
}

void GPU::BaseReshapeOpHandler<mlir::mps::SqueezeOp>::~BaseReshapeOpHandler(GPU::BaseOpHandler *this)
{
  *this = &unk_1F5B53B60;
  v2 = *(this + 17);
  if (v2 != this + 152)
  {
    free(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void MILToMLIR::SliceBySizePattern::matchAndRewrite(MILToMLIR::SliceBySizePattern *this, const MIL::IROperation *a2, MILToMLIRRewriter *a3)
{
  v25[5] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  if ((*(*a2 + 192))(a2) == 1)
  {
    ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
    v7 = MILToMLIRRewriter::getArgValue(a3, a2, "begin");
    v8 = MILToMLIRRewriter::getArgValue(a3, a2, "size");
    v9 = *(a3 + 200);
    *__p = *(a3 + 184);
    v24 = v9;
    LODWORD(v21[0]) = 1;
    v25[0] = 1;
    IntegerType = mlir::Builder::getIntegerType(__p, 32, 1);
    v11 = mlir::RankedTensorType::get(v25, 1, IntegerType, 0);
    if (v11)
    {
      v12 = v11;
      v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
      v11 = v12;
    }

    else
    {
      v13 = 0;
    }

    v25[0] = mlir::DenseElementsAttr::getFromRawBuffer(v11, v13, v21, 4, 4, 1, 1);
    v14 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 184), LocationForOp, v25);
    v18 = LocationForOp;
    Context = mlir::Attribute::getContext(&v18);
    v16 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::StridedSliceOp,void>::id, Context);
    if (v17)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v16);
      mlir::mps::StridedSliceOp::build(a3 + 23, __p, ArgValue, v7, v8, v14 - 16, 0, 0, 0, 1);
      mlir::OpBuilder::create((a3 + 184), __p);
      mlir::OperationState::~OperationState(__p);
      (*(*a2 + 200))(__p, a2);
      operator new();
    }

    v22 = 1283;
    v21[2] = "mps.strided_slice";
    v21[3] = 17;
    v20 = 259;
    llvm::operator+(v21, &v19, v25);
    llvm::report_fatal_error(v25, 1);
  }

  operator new();
}

void sub_1E08A2534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::vector<std::string>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E08A2548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E08A255C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E08A2570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E08A258C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  operator delete(v21);
  std::vector<std::string>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

uint64_t MILToMLIR::SliceByIndexPattern::matchAndRewrite(MILToMLIR::SliceByIndexPattern *this, const MIL::IROperation *a2, MILToMLIRRewriter *a3)
{
  v195 = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  if ((*(*a2 + 192))(a2) != 1)
  {
    operator new();
  }

  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v7 = MILToMLIRRewriter::getArgValue(a3, a2, "begin");
  v184 = v7;
  v183 = MILToMLIRRewriter::getArgValue(a3, a2, "end");
  OptionalArgValue = MILToMLIRRewriter::getOptionalArgValue(a3, a2, "stride");
  if (!OptionalArgValue)
  {
    v8 = (*(v7 + 8) & 0xFFFFFFFFFFFFFFF8);
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
    if (v9)
    {
      v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
    }

    else
    {
      v8 = 0;
    }

    v191[0] = v8;
    v191[1] = v9;
    v189[0] = *mlir::CallableOpInterface::getArgAttrsAttr(v191);
    IntegerType = mlir::Builder::getIntegerType(a3 + 23, 32, 1);
    v11 = mlir::RankedTensorType::get(v189, 1, IntegerType, 0);
    v12 = v189[0];
    *&__p = v193;
    HIDWORD(__p) = 4;
    if (v189[0] < 5)
    {
      if (v189[0])
      {
        memset_pattern16(v193, &xmmword_1E099B5F0, 4 * v189[0]);
      }

      v13 = v193;
      DWORD2(__p) = v12;
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    else
    {
      DWORD2(__p) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__p, v193, v189[0], 4);
      v13 = __p;
      memset_pattern16(__p, &xmmword_1E099B5F0, 4 * v12);
      DWORD2(__p) = v12;
      if (!v11)
      {
LABEL_9:
        v14 = 0;
        goto LABEL_14;
      }
    }

    v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
    v13 = __p;
    LODWORD(v12) = DWORD2(__p);
LABEL_14:
    v187[0] = mlir::DenseElementsAttr::getFromRawBuffer(v11, v14, v13, 4 * v12, 4, 1, 1);
    OptionalArgValue = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 184), LocationForOp, v187) - 16;
    if (__p != v193)
    {
      free(__p);
    }
  }

  v181 = 0;
  v180 = 0;
  v15 = (*(*a2 + 160))(a2);
  v177 = a3;
  v179[0] = 0;
  v179[1] = 0;
  v178 = v179;
  v16 = v15 + 1;
  v17 = *v15;
  v176 = LocationForOp;
  if (*v15 == (v15 + 1))
  {
    v18 = 0;
    goto LABEL_83;
  }

  do
  {
    if (!*std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::__find_equal<std::string>(&v178, v179, v191, v189, v17 + 4))
    {
      std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::__construct_node<std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRArgument>>> const&>();
    }

    v19 = v17[1];
    if (v19)
    {
      do
      {
        v20 = v19;
        v19 = *v19;
      }

      while (v19);
    }

    else
    {
      do
      {
        v20 = v17[2];
        v143 = *v20 == v17;
        v17 = v20;
      }

      while (!v143);
    }

    v17 = v20;
  }

  while (v20 != v16);
  v18 = v179[0];
  v194 = 10;
  strcpy(&__p, "begin_mask");
  if (v179[0])
  {
    v21 = v179;
    v22 = v179[0];
    do
    {
      v23 = v21;
      v24 = (v22 + 32);
      v25 = v22[55];
      v26 = v25;
      if ((v25 & 0x80u) != 0)
      {
        v25 = *(v22 + 5);
      }

      if (v26 >= 0)
      {
        v27 = v22 + 32;
      }

      else
      {
        v27 = *(v22 + 4);
      }

      if (v25 >= 0xA)
      {
        v28 = 10;
      }

      else
      {
        v28 = v25;
      }

      v29 = v25 < 0xA;
      v30 = memcmp(v27, &__p, v28);
      v31 = v30 < 0;
      if (!v30)
      {
        v31 = v29;
      }

      if (v31)
      {
        v32 = 8;
      }

      else
      {
        v32 = 0;
      }

      if (v31)
      {
        v21 = v23;
      }

      else
      {
        v21 = v22;
      }

      v22 = *&v22[v32];
    }

    while (v22);
    if (v21 != v179)
    {
      if (v31)
      {
        v33 = (v23 + 4);
      }

      else
      {
        v33 = v24;
      }

      v34 = *(v21 + 55);
      v35 = v34;
      if ((v34 & 0x80u) != 0)
      {
        v34 = v21[5];
      }

      if (v35 >= 0)
      {
        v36 = v33;
      }

      else
      {
        v36 = *v33;
      }

      if (v34 >= 0xA)
      {
        v37 = 10;
      }

      else
      {
        v37 = v34;
      }

      v38 = v34 > 0xA;
      v39 = memcmp(&__p, v36, v37);
      v40 = v39 < 0;
      if (!v39)
      {
        v40 = v38;
      }

      if (!v40)
      {
        if (v21[8] - v21[7] != 16)
        {
          operator new();
        }

        v194 = 10;
        strcpy(&__p, "begin_mask");
        ParameterValue = MIL::IROperation::TryGetParameterValue();
        if (v194 < 0)
        {
          v42 = ParameterValue;
          operator delete(__p);
          ParameterValue = v42;
        }

        if (!ParameterValue)
        {
          operator new();
        }

        (*(*ParameterValue + 40))(ParameterValue);
        Data = MIL::IRTensorValue::GetDataView<BOOL>();
        v46 = HIDWORD(v181);
        if (v44)
        {
          if (v44 < 4)
          {
            v47 = 0;
            do
            {
LABEL_80:
              v46 |= *(Data + v47) << v47;
              ++v47;
LABEL_81:
              ;
            }

            while (v44 != v47);
            goto LABEL_82;
          }

          if (v44 < 0x10)
          {
            v47 = 0;
            goto LABEL_77;
          }

          v47 = v44 & 0xFFFFFFFFFFFFFFF0;
          v48 = 0uLL;
          v49 = HIDWORD(v181);
          v50 = xmmword_1E09A0AB0;
          v45 = xmmword_1E09A0AC0;
          v51 = xmmword_1E09A0AD0;
          v52.i64[0] = 0x1000000010;
          v52.i64[1] = 0x1000000010;
          v53 = v44 & 0xFFFFFFFFFFFFFFF0;
          v54 = Data;
          v55 = 0uLL;
          v56 = 0uLL;
          v57 = xmmword_1E0970050;
          do
          {
            v58 = *v54++;
            v55 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v58, xmmword_1E09A9450), v45), v55);
            v48 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v58, xmmword_1E09A9460), v51), v48);
            v49 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v58, xmmword_1E09A9470), v57), v49);
            v56 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v58, xmmword_1E09A9440), v50), v56);
            v57 = vaddq_s32(v57, v52);
            v51 = vaddq_s32(v51, v52);
            v45 = vaddq_s32(v45, v52);
            v50 = vaddq_s32(v50, v52);
            v53 -= 16;
          }

          while (v53);
          v59 = vorrq_s8(vorrq_s8(v49, v55), vorrq_s8(v48, v56));
          *v59.i8 = vorr_s8(*v59.i8, *&vextq_s8(v59, v59, 8uLL));
          v46 = v59.i32[0] | v59.i32[1];
          if (v44 != v47)
          {
            if ((v44 & 0xC) == 0)
            {
              goto LABEL_80;
            }

LABEL_77:
            v60 = v47;
            v61 = v46;
            v62 = vdupq_n_s32(v47);
            v47 = v44 & 0xFFFFFFFFFFFFFFFCLL;
            v63 = vorrq_s8(v62, xmmword_1E0970050);
            v64 = (Data + v60);
            v65 = v60 - (v44 & 0xFFFFFFFFFFFFFFFCLL);
            v66.i64[0] = 0x400000004;
            v66.i64[1] = 0x400000004;
            do
            {
              v67 = *v64++;
              v45.i32[0] = v67;
              v45 = vshlq_u32(vmovl_u16(*&vmovl_u8(*v45.i8)), v63);
              v61 = vorrq_s8(v45, v61);
              v63 = vaddq_s32(v63, v66);
              v65 += 4;
            }

            while (v65);
            v68 = vorr_s8(*v61.i8, *&vextq_s8(v61, v61, 8uLL));
            v46 = v68.i32[0] | v68.i32[1];
            goto LABEL_81;
          }
        }

LABEL_82:
        HIDWORD(v181) = v46;
        v18 = v179[0];
      }
    }
  }

LABEL_83:
  v194 = 8;
  strcpy(&__p, "end_mask");
  if (v18)
  {
    v69 = v179;
    v70 = v18;
    do
    {
      v71 = v69;
      v72 = (v70 + 32);
      v73 = v70[55];
      v74 = v73;
      if ((v73 & 0x80u) != 0)
      {
        v73 = *(v70 + 5);
      }

      if (v74 >= 0)
      {
        v75 = v70 + 32;
      }

      else
      {
        v75 = *(v70 + 4);
      }

      if (v73 >= 8)
      {
        v76 = 8;
      }

      else
      {
        v76 = v73;
      }

      v77 = v73 < 8;
      v78 = memcmp(v75, &__p, v76);
      v79 = v78 < 0;
      if (!v78)
      {
        v79 = v77;
      }

      if (v79)
      {
        v80 = 8;
      }

      else
      {
        v80 = 0;
      }

      if (!v79)
      {
        v69 = v70;
      }

      v70 = *&v70[v80];
    }

    while (v70);
    if (v69 != v179)
    {
      if (v79)
      {
        v81 = (v71 + 4);
      }

      else
      {
        v81 = v72;
      }

      v82 = *(v69 + 55);
      v83 = v82;
      if ((v82 & 0x80u) != 0)
      {
        v82 = v69[5];
      }

      if (v83 >= 0)
      {
        v84 = v81;
      }

      else
      {
        v84 = *v81;
      }

      if (v82 >= 8)
      {
        v85 = 8;
      }

      else
      {
        v85 = v82;
      }

      v86 = v82 > 8;
      v87 = memcmp(&__p, v84, v85);
      v88 = v87 < 0;
      if (!v87)
      {
        v88 = v86;
      }

      if (!v88)
      {
        if (v69[8] - v69[7] != 16)
        {
          operator new();
        }

        v194 = 8;
        strcpy(&__p, "end_mask");
        v89 = MIL::IROperation::TryGetParameterValue();
        if (v194 < 0)
        {
          v90 = v89;
          operator delete(__p);
          v89 = v90;
        }

        if (!v89)
        {
          operator new();
        }

        (*(*v89 + 40))(v89);
        v91 = MIL::IRTensorValue::GetDataView<BOOL>();
        v94 = v181;
        if (v92)
        {
          if (v92 < 4)
          {
            v95 = 0;
            do
            {
LABEL_134:
              v94 |= *(v91 + v95) << v95;
              ++v95;
LABEL_135:
              ;
            }

            while (v92 != v95);
            goto LABEL_136;
          }

          if (v92 < 0x10)
          {
            v95 = 0;
            goto LABEL_131;
          }

          v95 = v92 & 0xFFFFFFFFFFFFFFF0;
          v96 = 0uLL;
          v97 = v181;
          v98 = xmmword_1E09A0AB0;
          v93 = xmmword_1E09A0AC0;
          v99 = xmmword_1E09A0AD0;
          v100 = xmmword_1E0970050;
          v101.i64[0] = 0x1000000010;
          v101.i64[1] = 0x1000000010;
          v102 = v92 & 0xFFFFFFFFFFFFFFF0;
          v103 = v91;
          v104 = 0uLL;
          v105 = 0uLL;
          do
          {
            v106 = *v103++;
            v104 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v106, xmmword_1E09A9450), v93), v104);
            v96 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v106, xmmword_1E09A9460), v99), v96);
            v97 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v106, xmmword_1E09A9470), v100), v97);
            v105 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v106, xmmword_1E09A9440), v98), v105);
            v100 = vaddq_s32(v100, v101);
            v99 = vaddq_s32(v99, v101);
            v93 = vaddq_s32(v93, v101);
            v98 = vaddq_s32(v98, v101);
            v102 -= 16;
          }

          while (v102);
          v107 = vorrq_s8(vorrq_s8(v97, v104), vorrq_s8(v96, v105));
          *v107.i8 = vorr_s8(*v107.i8, *&vextq_s8(v107, v107, 8uLL));
          v94 = v107.i32[0] | v107.i32[1];
          if (v92 != v95)
          {
            if ((v92 & 0xC) == 0)
            {
              goto LABEL_134;
            }

LABEL_131:
            v108 = v95;
            v95 = v92 & 0xFFFFFFFFFFFFFFFCLL;
            v109 = v94;
            v110 = vorrq_s8(vdupq_n_s32(v108), xmmword_1E0970050);
            v111 = (v91 + v108);
            v112 = v108 - (v92 & 0xFFFFFFFFFFFFFFFCLL);
            v113.i64[0] = 0x400000004;
            v113.i64[1] = 0x400000004;
            do
            {
              v114 = *v111++;
              v93.i32[0] = v114;
              v93 = vshlq_u32(vmovl_u16(*&vmovl_u8(*v93.i8)), v110);
              v109 = vorrq_s8(v93, v109);
              v110 = vaddq_s32(v110, v113);
              v112 += 4;
            }

            while (v112);
            v115 = vorr_s8(*v109.i8, *&vextq_s8(v109, v109, 8uLL));
            v94 = v115.i32[0] | v115.i32[1];
            goto LABEL_135;
          }
        }

LABEL_136:
        LODWORD(v181) = v94;
        v18 = v179[0];
      }
    }
  }

  v194 = 12;
  strcpy(&__p, "squeeze_mask");
  if (!v18)
  {
    goto LABEL_170;
  }

  v116 = v179;
  do
  {
    v117 = v116;
    v118 = (v18 + 32);
    v119 = v18[55];
    v120 = v119;
    if ((v119 & 0x80u) != 0)
    {
      v119 = *(v18 + 5);
    }

    if (v120 >= 0)
    {
      v121 = v18 + 32;
    }

    else
    {
      v121 = *(v18 + 4);
    }

    if (v119 >= 0xC)
    {
      v122 = 12;
    }

    else
    {
      v122 = v119;
    }

    v123 = v119 < 0xC;
    v124 = memcmp(v121, &__p, v122);
    v125 = v124 < 0;
    if (!v124)
    {
      v125 = v123;
    }

    if (v125)
    {
      v126 = 8;
    }

    else
    {
      v126 = 0;
    }

    if (!v125)
    {
      v116 = v18;
    }

    v18 = *&v18[v126];
  }

  while (v18);
  if (v116 == v179)
  {
    goto LABEL_170;
  }

  if (v125)
  {
    v127 = (v117 + 4);
  }

  else
  {
    v127 = v118;
  }

  v128 = *(v116 + 55);
  v129 = v128;
  if ((v128 & 0x80u) != 0)
  {
    v128 = v116[5];
  }

  if (v129 >= 0)
  {
    v130 = v127;
  }

  else
  {
    v130 = *v127;
  }

  if (v128 >= 0xC)
  {
    v131 = 12;
  }

  else
  {
    v131 = v128;
  }

  v132 = v128 > 0xC;
  v133 = memcmp(&__p, v130, v131);
  v134 = v133 < 0;
  if (!v133)
  {
    v134 = v132;
  }

  if (v134)
  {
LABEL_170:
    v135 = this;
    v136 = v177;
LABEL_171:
    v137 = *(v135 + 31);
    if (v137 >= 0)
    {
      v138 = v135 + 8;
    }

    else
    {
      v138 = *(v135 + 1);
    }

    if (v137 >= 0)
    {
      v139 = *(v135 + 31);
    }

    else
    {
      v139 = *(v135 + 2);
    }

    if (v139 < 12)
    {
      goto LABEL_196;
    }

    v140 = &v138[v139];
    v141 = v138;
    while (1)
    {
      v142 = memchr(v141, 115, v139 - 11);
      if (!v142)
      {
        goto LABEL_196;
      }

      v143 = *v142 == 0x70755F6563696C73 && *(v142 + 2) == 1702125924;
      if (v143)
      {
        break;
      }

      v141 = v142 + 1;
      v139 = v140 - v141;
      if (v140 - v141 < 12)
      {
        goto LABEL_196;
      }
    }

    if (v142 == v140 || v142 - v138 == -1)
    {
LABEL_196:
      v186 = v176;
      Context = mlir::Attribute::getContext(&v186);
      v152 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::StridedSliceOp,void>::id, Context);
      if ((v153 & 1) == 0)
      {
        v190 = 1283;
        v189[2] = "mps.strided_slice";
        v189[3] = 17;
        v188 = 259;
        llvm::operator+(v189, v187, v191);
        llvm::report_fatal_error(v191, 1);
      }

      mlir::OperationState::OperationState(&__p, v176, v152);
      mlir::mps::StridedSliceOp::build(v136 + 23, &__p, ArgValue, v184, v183, OptionalArgValue, HIDWORD(v181), v181, v180, 0);
      mlir::OpBuilder::create((v136 + 23), &__p);
      mlir::OperationState::~OperationState(&__p);
    }

    else
    {
      *&__p = MILToMLIRRewriter::getArgValue(v136, a2, "update");
      LOBYTE(v191[0]) = 0;
      mlir::OpBuilder::create<mlir::mps::StridedSliceUpdateOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,unsigned int &,unsigned int &,unsigned int &,BOOL>(v136 + 23, v176, &ArgValue, &__p, &v184, &v183, &OptionalArgValue, &v181 + 1, &v181, &v180, v191);
    }

    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  if (v116[8] - v116[7] != 16)
  {
    operator new();
  }

  v194 = 12;
  strcpy(&__p, "squeeze_mask");
  v144 = MIL::IROperation::TryGetParameterValue();
  v136 = v177;
  if (v194 < 0)
  {
    v145 = v144;
    operator delete(__p);
    v144 = v145;
  }

  v135 = this;
  if (v144)
  {
    (*(*v144 + 40))(v144);
    v146 = MIL::IRTensorValue::GetDataView<BOOL>();
    v149 = v180;
    if (v147)
    {
      if (v147 < 4)
      {
        v150 = 0;
        do
        {
LABEL_213:
          v149 |= *(v146 + v150) << v150;
          ++v150;
LABEL_214:
          ;
        }

        while (v147 != v150);
        goto LABEL_215;
      }

      if (v147 < 0x10)
      {
        v150 = 0;
        goto LABEL_209;
      }

      v150 = v147 & 0xFFFFFFFFFFFFFFF0;
      v156 = 0uLL;
      v157 = v180;
      v158 = xmmword_1E09A0AB0;
      v148 = xmmword_1E09A0AC0;
      v159 = xmmword_1E09A0AD0;
      v160 = xmmword_1E0970050;
      v161.i64[0] = 0x1000000010;
      v161.i64[1] = 0x1000000010;
      v162 = v147 & 0xFFFFFFFFFFFFFFF0;
      v163 = v146;
      v164 = 0uLL;
      v165 = 0uLL;
      do
      {
        v166 = *v163++;
        v164 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v166, xmmword_1E09A9450), v148), v164);
        v156 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v166, xmmword_1E09A9460), v159), v156);
        v157 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v166, xmmword_1E09A9470), v160), v157);
        v165 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v166, xmmword_1E09A9440), v158), v165);
        v160 = vaddq_s32(v160, v161);
        v159 = vaddq_s32(v159, v161);
        v148 = vaddq_s32(v148, v161);
        v158 = vaddq_s32(v158, v161);
        v162 -= 16;
      }

      while (v162);
      v167 = vorrq_s8(vorrq_s8(v157, v164), vorrq_s8(v156, v165));
      *v167.i8 = vorr_s8(*v167.i8, *&vextq_s8(v167, v167, 8uLL));
      v149 = v167.i32[0] | v167.i32[1];
      if (v147 != v150)
      {
        if ((v147 & 0xC) == 0)
        {
          goto LABEL_213;
        }

LABEL_209:
        v168 = v150;
        v150 = v147 & 0xFFFFFFFFFFFFFFFCLL;
        v169 = v149;
        v170 = vorrq_s8(vdupq_n_s32(v168), xmmword_1E0970050);
        v171 = (v146 + v168);
        v172 = v168 - (v147 & 0xFFFFFFFFFFFFFFFCLL);
        v173.i64[0] = 0x400000004;
        v173.i64[1] = 0x400000004;
        do
        {
          v174 = *v171++;
          v148.i32[0] = v174;
          v148 = vshlq_u32(vmovl_u16(*&vmovl_u8(*v148.i8)), v170);
          v169 = vorrq_s8(v148, v169);
          v170 = vaddq_s32(v170, v173);
          v172 += 4;
        }

        while (v172);
        v175 = vorr_s8(*v169.i8, *&vextq_s8(v169, v169, 8uLL));
        v149 = v175.i32[0] | v175.i32[1];
        goto LABEL_214;
      }
    }

LABEL_215:
    v180 = v149;
    goto LABEL_171;
  }

  v154 = MILToMLIRRewriter::notifyFailure(v177, a2, &__p);
  if (v194 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(&v178, v179[0]);
  return v154;
}

void MILToMLIR::SliceBySizePattern::~SliceBySizePattern(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void MILToMLIR::SliceByIndexPattern::~SliceByIndexPattern(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

unint64_t getMPSGraphBuildSDKVersion(void)::$_0::operator()()
{
  if ((atomic_load_explicit(&qword_1ECE75458, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECE75458))
  {
    std::string::basic_string[abi:ne200100]<0>(&qword_1ECE754A8, "260100");
    __cxa_atexit(MEMORY[0x1E69E52C0], &qword_1ECE754A8, &dword_1DF9BF000);
    __cxa_guard_release(&qword_1ECE75458);
  }

  v0 = byte_1ECE754BF;
  if ((byte_1ECE754BF & 0x8000000000000000) != 0)
  {
    v1 = qword_1ECE754A8;
    v0 = qword_1ECE754B0;
  }

  else
  {
    v1 = &qword_1ECE754A8;
  }

  v2 = v0 - 4;
  if (v0 >= v0 - 4)
  {
    v3 = v0 - 4;
  }

  else
  {
    v3 = v0;
  }

  if (v3 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_52;
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v3;
  if (v3)
  {
    memmove(&__dst, v1, v3);
  }

  __dst.__r_.__value_.__s.__data_[v3] = 0;
  v4 = std::stoul(&__dst, 0, 10);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    v10 = v4;
    operator delete(__dst.__r_.__value_.__l.__data_);
    v4 = v10;
    v5 = byte_1ECE754BF;
    if ((byte_1ECE754BF & 0x8000000000000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v5 = byte_1ECE754BF;
    if ((byte_1ECE754BF & 0x8000000000000000) == 0)
    {
LABEL_16:
      if (v2 > v5)
      {
        goto LABEL_53;
      }

      v6 = &qword_1ECE754A8;
      v7 = v0 - 2;
      v8 = v5 - v2;
      if (v8 >= v0 - 2)
      {
        v9 = v0 - 2;
      }

      else
      {
        v9 = v8;
      }

      if (v9 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_52;
      }

      goto LABEL_28;
    }
  }

  if (qword_1ECE754B0 < v2)
  {
    goto LABEL_53;
  }

  v6 = qword_1ECE754A8;
  v7 = v0 - 2;
  v9 = qword_1ECE754B0 - v2 >= v0 - 2 ? v0 - 2 : qword_1ECE754B0 - v2;
  if (v9 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_52:
    std::string::__throw_length_error[abi:ne200100]();
  }

LABEL_28:
  v11 = v4;
  if (v9 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v9;
  if (v9)
  {
    memmove(&__dst, v6 + v2, v9);
  }

  __dst.__r_.__value_.__s.__data_[v9] = 0;
  v12 = std::stoul(&__dst, 0, 10);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    v13 = byte_1ECE754BF;
    if ((byte_1ECE754BF & 0x8000000000000000) == 0)
    {
LABEL_35:
      if (v7 <= v13)
      {
        v14 = &qword_1ECE754A8;
        goto LABEL_40;
      }

LABEL_53:
      std::string::__throw_out_of_range[abi:ne200100]();
    }
  }

  else
  {
    v13 = byte_1ECE754BF;
    if ((byte_1ECE754BF & 0x8000000000000000) == 0)
    {
      goto LABEL_35;
    }
  }

  v13 = qword_1ECE754B0;
  if (qword_1ECE754B0 < v7)
  {
    goto LABEL_53;
  }

  v14 = qword_1ECE754A8;
LABEL_40:
  v15 = v13 - v7;
  if (v15 >= v0)
  {
    v16 = v0;
  }

  else
  {
    v16 = v15;
  }

  if (v16 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_52;
  }

  if (v16 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v16;
  if (v16)
  {
    memmove(&__dst, v14 + v7, v16);
  }

  __dst.__r_.__value_.__s.__data_[v16] = 0;
  result = std::stoul(&__dst, 0, 10);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    v18 = result;
    operator delete(__dst.__r_.__value_.__l.__data_);
    result = v18;
  }

  *&xmmword_1ECE75490 = v11;
  *(&xmmword_1ECE75490 + 1) = v12;
  qword_1ECE754A0 = result;
  return result;
}

void sub_1E08A3DF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id getStateArray(unsigned int *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 UTF8String];
  v5 = strlen(v4);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  v32 = v5;
  if (v5)
  {
    memmove(__p, v4, v5);
  }

  *(__p + v6) = 0;
  v7 = v32;
  v8 = __p[0];
  v9 = __p[1];
  Context = mlir::Attribute::getContext((a1 + 6));
  if ((v7 & 0x80u) == 0)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  v12 = __p;
  v34 = 261;
  if ((v7 & 0x80u) != 0)
  {
    v12 = v8;
  }

  v33[0] = v12;
  v33[1] = v11;
  v13 = mlir::StringAttr::get(Context, v33);
  v14 = mlir::SymbolTable::lookupSymbolIn(a1, v13);
  if (!v14 || *(*(v14 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    goto LABEL_14;
  }

  v17 = v14;
  if (*(v14 + 47) && (v36.var0 = "mps.stateInputIndices", v36.var1 = 21, InherentAttr = mlir::Operation::getInherentAttr(v14, v36), (v19 & 1) != 0))
  {
    v20 = v17;
    if (!InherentAttr)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v37.var0 = "mps.stateInputIndices";
    v37.var1 = 21;
    v21 = mlir::DictionaryAttr::contains((v17 + 56), v37);
    v20 = v17;
    if (!v21)
    {
LABEL_14:
      v15 = 0;
      goto LABEL_15;
    }
  }

  if (!*(v20 + 47) || (v38.var0 = "mps.stateInputIndices", v38.var1 = 21, v22 = mlir::Operation::getInherentAttr(v20, v38), v20 = v17, (v23 & 1) == 0))
  {
    v39.var0 = "mps.stateInputIndices";
    v39.var1 = 21;
    v22 = mlir::DictionaryAttr::get((v20 + 56), v39);
  }

  v24 = v22;
  if (!v22)
  {
    goto LABEL_14;
  }

  if (mlir::detail::DenseArrayAttrImpl<long long>::classof(v22))
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v33[0] = v25;
  v26 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v33);
  v28 = v27;
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v28)
  {
    v29 = 8 * v28;
    do
    {
      v30 = [MEMORY[0x1E696AD98] numberWithLongLong:{*v26, __p[0]}];
      [v15 addObject:v30];

      ++v26;
      v29 -= 8;
    }

    while (v29);
  }

LABEL_15:
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  return v15;
}

void sub_1E08A4074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E08A4218(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_1ECE75420);

  _Unwind_Resume(a1);
}

void sub_1E08A42E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_1E08A43E0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1E08A58EC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1E08A591C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1E08A5D48(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1E08A5D78(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id getShapesFromTypes(void *a1)
{
  v1 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__5;
  v9 = __Block_byref_object_dispose__5;
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v1, "count")}];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___Z18getShapesFromTypesP7NSArrayIP12MPSGraphTypeE_block_invoke;
  v4[3] = &unk_1E86D4F38;
  v4[4] = &v5;
  [v1 enumerateObjectsUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_1E08A62B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1E08A68EC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1E08A6E38(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  std::mutex::~mutex(v14);

  JUMPOUT(0x1E12E5B90);
}

void sub_1E08A6E7C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void overrideCompilationDescriptorWithEV(MPSGraphCompilationDescriptor *a1)
{
  v1 = a1;
  if (byte_1EED2BC81 == 1)
  {
    [(MPSGraphCompilationDescriptor *)v1 setAneCompilerSpatialSplitting:qword_1EED2BC88];
  }

  if (word_1EED2BC90 == 1)
  {
    [(MPSGraphCompilationDescriptor *)v1 setEnableANEFWToFWSignal:HIBYTE(word_1EED2BC90)];
  }

  if (byte_1EED2BC92 == 1)
  {
    [(MPSGraphCompilationDescriptor *)v1 setEnableANELateLatch:byte_1EED2BC94];
  }

  if (byte_1EED2BC93 == 1)
  {
    [(MPSGraphCompilationDescriptor *)v1 setEnableANECHWRankPromotion:byte_1EED2BC95];
  }

  if (HIBYTE(word_1EED2BC5A) == 1)
  {
    if (byte_1EED2BC5C == 1)
    {
      [(MPSGraphCompilationDescriptor *)v1 setCompilerOptions:[(MPSGraphCompilationDescriptor *)v1 compilerOptions]& 0xFFFFFFFFFFFFFFFDLL];
    }

    if (byte_1EED2BC5D == 1)
    {
      [(MPSGraphCompilationDescriptor *)v1 setCompilerOptions:[(MPSGraphCompilationDescriptor *)v1 compilerOptions]& 0xFFFFFFFFFFFFFFFELL];
    }

    if (byte_1EED2BCA2 == 1)
    {
      [(MPSGraphCompilationDescriptor *)v1 setCompilerOptions:[(MPSGraphCompilationDescriptor *)v1 compilerOptions]| 0x100];
    }

    if (byte_1EED2BCA3 == 1)
    {
      [(MPSGraphCompilationDescriptor *)v1 setCompilerOptions:[(MPSGraphCompilationDescriptor *)v1 compilerOptions]| 0x200];
    }

    if (byte_1EED2BCBA == 1)
    {
      [(MPSGraphCompilationDescriptor *)v1 setCompilerOptions:[(MPSGraphCompilationDescriptor *)v1 compilerOptions]& 0xFFFFFFFFFFFFFBFFLL];
    }

    if (byte_1EED2BCC0 == 1)
    {
      [(MPSGraphCompilationDescriptor *)v1 setCompilerOptions:[(MPSGraphCompilationDescriptor *)v1 compilerOptions]| 0x800];
    }

    if (byte_1EED2BCE0 == 1)
    {
      [(MPSGraphCompilationDescriptor *)v1 setCompilerOptions:[(MPSGraphCompilationDescriptor *)v1 compilerOptions]| 0x1000];
    }

    if (byte_1EED2BCE1 == 1)
    {
      [(MPSGraphCompilationDescriptor *)v1 setCompilerOptions:[(MPSGraphCompilationDescriptor *)v1 compilerOptions]| 0x2000];
    }

    if (byte_1EED2BCE2 == 1)
    {
      [(MPSGraphCompilationDescriptor *)v1 setCompilerOptions:[(MPSGraphCompilationDescriptor *)v1 compilerOptions]| 0x4000];
    }

    if (byte_1EED2BCE3 == 1)
    {
      [(MPSGraphCompilationDescriptor *)v1 setCompilerOptions:[(MPSGraphCompilationDescriptor *)v1 compilerOptions]| 0x8000];
    }

    if (qword_1EED2BCE8)
    {
      [(MPSGraphCompilationDescriptor *)v1 setLayoutConversionPassConfig:?];
    }
  }

  if (byte_1EED2BCF0 == 1)
  {
    [(MPSGraphCompilationDescriptor *)v1 setEnableCompileResourcesForPackage:1];
  }

  if (byte_1EED2BCC1 == 1)
  {
    [(MPSGraphCompilationDescriptor *)v1 setMinimumNumberOfOpsInParallelRegion:qword_1EED2BCC8];
  }

  if (byte_1EED2BCD0 == 1)
  {
    [(MPSGraphCompilationDescriptor *)v1 setMaximumNumberOfParallelEncodingRegions:qword_1EED2BCD8];
  }
}

void sub_1E08A8E5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__587(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__588(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

llvm *llvm::DenseMapBase<llvm::DenseMap<MPSGraphExecutableSpecializedModule const*,std::unique_ptr<RuntimeCacheEntry>,llvm::DenseMapInfo<MPSGraphExecutableSpecializedModule const*,void>,llvm::detail::DenseMapPair<MPSGraphExecutableSpecializedModule const*,std::unique_ptr<RuntimeCacheEntry>>>,MPSGraphExecutableSpecializedModule const*,std::unique_ptr<RuntimeCacheEntry>,llvm::DenseMapInfo<MPSGraphExecutableSpecializedModule const*,void>,llvm::detail::DenseMapPair<MPSGraphExecutableSpecializedModule const*,std::unique_ptr<RuntimeCacheEntry>>>::clear(llvm *result)
{
  v1 = result;
  v2 = *(result + 2);
  if (!v2 && !*(result + 3))
  {
    return result;
  }

  v3 = *(result + 4);
  v4 = *result;
  if (v3 <= 4 * v2 || v3 < 0x41)
  {
    if (!v3)
    {
LABEL_35:
      *(v1 + 1) = 0;
      return result;
    }

    v10 = 16 * v3;
    v11 = (v4 + 8);
    while (1)
    {
      v12 = *(v11 - 1);
      if (v12 != -8192)
      {
        if (v12 == -4096)
        {
          goto LABEL_16;
        }

        v13 = *v11;
        *v11 = 0;
        if (v13)
        {
          v14 = *(v13 + 120);
          *(v13 + 120) = 0;
          if (v14)
          {
            (*(*v14 + 64))(v14);
          }

          std::condition_variable::~condition_variable((v13 + 64));
          std::mutex::~mutex(v13);
          result = MEMORY[0x1E12E5B90]();
        }
      }

      *(v11 - 1) = -4096;
LABEL_16:
      v11 += 2;
      v10 -= 16;
      if (!v10)
      {
        goto LABEL_35;
      }
    }
  }

  v5 = (v4 + 8);
  v6 = (16 * v3);
  v7 = 16 * v3;
  do
  {
    if ((*(v5 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v8 = *v5;
      *v5 = 0;
      if (v8)
      {
        v9 = *(v8 + 120);
        *(v8 + 120) = 0;
        if (v9)
        {
          (*(*v9 + 64))(v9);
        }

        std::condition_variable::~condition_variable((v8 + 64));
        std::mutex::~mutex(v8);
        result = MEMORY[0x1E12E5B90]();
      }
    }

    v5 += 2;
    v7 -= 16;
  }

  while (v7);
  if (!v2)
  {
    if (*(v1 + 4))
    {
      llvm::deallocate_buffer(*v1, v6);
    }

    goto LABEL_35;
  }

  v15 = 1 << (33 - __clz(v2 - 1));
  if (v15 <= 64)
  {
    v16 = 64;
  }

  else
  {
    v16 = v15;
  }

  result = *v1;
  if (v16 != *(v1 + 4))
  {
    llvm::deallocate_buffer(result, v6);
  }

  *(v1 + 1) = 0;
  v17 = result;
  if (((v16 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
  {
    goto LABEL_39;
  }

  v18 = ((v16 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
  v17 = (result + 16 * (v18 & 0x1FFFFFFFFFFFFFFELL));
  v19 = (result + 16);
  v20 = v18 & 0x1FFFFFFFFFFFFFFELL;
  do
  {
    *(v19 - 2) = -4096;
    *v19 = -4096;
    v19 += 4;
    v20 -= 2;
  }

  while (v20);
  if (v18 != (v18 & 0x1FFFFFFFFFFFFFFELL))
  {
LABEL_39:
    do
    {
      *v17 = -4096;
      v17 = (v17 + 16);
    }

    while (v17 != (result + 16 * v16));
  }

  return result;
}

void MPSGraphSpecializationCache::addModule()
{
  v0[0] = 0;
  v0[1] = 0;
  v1 = 0;
  llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::destroyAll(v0);
  llvm::deallocate_buffer(0, 0);
}

void sub_1E08A9F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13)
{
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  *v13 = a10;
  *(v13 + 8) = a11;
  *(v13 + 16) = a12;
  *(v13 + 24) = a13;
  JUMPOUT(0x1E08A9F90);
}

uint64_t sub_1E08A9F9C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, llvm *a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,llvm::detail::DenseSetEmpty,MPSGraphModuleKeysSetInfo,llvm::detail::DenseSetPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>>>,llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,llvm::detail::DenseSetEmpty,MPSGraphModuleKeysSetInfo,llvm::detail::DenseSetPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>>>::doFind<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>>(*(v30 + 48), *(v30 + 64), v31);
  if (result)
  {
    v34 = result;
    MPSGraphModuleKeysSetInfo::getTombstoneKey(v35);
    if (v32 != v34)
    {
      llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::destroyAll(v34);
      llvm::deallocate_buffer(*v34, (96 * *(v34 + 16)));
    }

    llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::destroyAll(v35);
    llvm::deallocate_buffer(v35[0], (96 * v36));
  }

  return result;
}

uint64_t *std::unique_ptr<MPSGraphExecutableSpecializedModule>::~unique_ptr[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>,MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>::destroyAll((v1 + 8));
    llvm::deallocate_buffer(*(v1 + 8), (120 * *(v1 + 24)));
  }

  return result;
}

void MPSGraphModuleKey::~MPSGraphModuleKey(MPSGraphModuleKey *this)
{
  if (this->var0.var0 != this->var0.var3)
  {
    free(this->var0.var0);
  }
}

void sub_1E08AA774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E08AADCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a26)
  {
    (*(*a26 + 8))(a26);
    v37 = a29;
    if (!a29)
    {
LABEL_3:
      if ((a20 & 0x80000000) == 0)
      {
LABEL_8:

        mlir::PassManager::~PassManager(&a34);
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(__p);
      goto LABEL_8;
    }
  }

  else
  {
    v37 = a29;
    if (!a29)
    {
      goto LABEL_3;
    }
  }

  (*(*v37 + 8))(v37);
  if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_1E08AB208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1E08ABB48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, std::runtime_error a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](v37 - 104);

  _Unwind_Resume(a1);
}

void sub_1E08AC078(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E08AC2A4(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

uint64_t sub_1E08AC53C()
{
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v4);
  }

  return v2;
}

void sub_1E08AC5C8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  mlir::OwningOpRef<mlir::ModuleOp>::~OwningOpRef(&a9);
  if (a14 != v22)
  {
    free(a14);
  }

  mlir::ParserConfig::~ParserConfig(&a22);
}

void sub_1E08AC638()
{
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v3);

  JUMPOUT(0x1E08AC664);
}

uint64_t sub_1E08AC7C0()
{
  llvm::MapVector<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>,llvm::StringMap<unsigned int,llvm::MallocAllocator>,llvm::SmallVector<std::pair<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>>,0u>>::~MapVector(&v4);

  return v2;
}

void sub_1E08AC808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E08ACAE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
    v16 = a13;
    if (!a13)
    {
LABEL_3:

      _Unwind_Resume(a1);
    }
  }

  else
  {
    v16 = a13;
    if (!a13)
    {
      goto LABEL_3;
    }
  }

  (*(*v16 + 8))(v16);

  _Unwind_Resume(a1);
}

void sub_1E08ACE48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
    v16 = a13;
    if (!a13)
    {
LABEL_3:

      _Unwind_Resume(a1);
    }
  }

  else
  {
    v16 = a13;
    if (!a13)
    {
      goto LABEL_3;
    }
  }

  (*(*v16 + 8))(v16);

  _Unwind_Resume(a1);
}

void sub_1E08AD0C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (a11)
  {
    (*(*a11 + 8))(a11);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1E08AD3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  mlir::PassManager::~PassManager(va);

  _Unwind_Resume(a1);
}

id MPSGraphModuleKeysSetToJSONString(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(a1 + 8)];
  v3 = *a1;
  v4 = *(a1 + 16);
  v5 = *a1 + 96 * v4;
  if (*(a1 + 8))
  {
    v17.i64[0] = *a1;
    v17.i64[1] = v5;
    llvm::DenseMapIterator<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>,true>::AdvancePastEmptyBuckets(&v17);
    v6 = v17;
    v3 = *a1;
    v4 = *(a1 + 16);
  }

  else
  {
    v6 = vdupq_n_s64(v5);
  }

  *v16 = v6;
  v7 = (v3 + 96 * v4);
  while (1)
  {
    v8 = v16[0];
    if (v16[0] == v7)
    {
      break;
    }

    v9 = MPSGraphModuleKeyToJSONString(v16[0]);
    [v2 addObject:v9];

    v16[0] = v8 + 1;
    llvm::DenseMapIterator<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>,true>::AdvancePastEmptyBuckets(v16);
  }

  v10 = [v2 sortedArrayUsingSelector:sel_compare_];
  v15 = 0;
  v11 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v10 options:1 error:&v15];
  v12 = v15;
  if (!v11 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v11 encoding:4];

  return v13;
}

void sub_1E08AE060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, uint64_t a12, void *a13)
{
  llvm::SmallVector<MPSGraphExecutableCacheValue,1u>::~SmallVector(v13 - 168);

  _Unwind_Resume(a1);
}

void **std::vector<MPSGraphModuleKey>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {

        v6 = *(v3 - 12);
        v3 -= 12;
        v5 = v6;
        if (v3 + 2 != v6)
        {
          free(v5);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t llvm::SmallVector<MPSGraphExecutableCacheValue,1u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 40 * v3 - 24;
    v5 = -40 * v3;
    do
    {
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v4 -= 40;
      v5 += 40;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

void sub_1E08AEA84(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1E08AEA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  std::vector<MPSGraphModuleKey>::~vector[abi:ne200100](&a30);

  JUMPOUT(0x1E08AEB20);
}

void sub_1E08AEAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, MPSGraphModuleKey *a28, uint64_t a29, void *a30, void **a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  if (*v39 != v36)
  {
    free(*v39);
  }

  a31 = v39;
  MPSGraphModuleKey::~MPSGraphModuleKey(&a36);

  std::vector<MPSGraphModuleKey>::~vector[abi:ne200100](&a30);
  JUMPOUT(0x1E08AEB20);
}

void getModuleResourcesLoader(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = a2;
  v8 = a4;
  v9 = a5;
  if (a3 == 1)
  {
    v10 = +[MPSGraphPackage getResourceFileName];
    v19 = [v20 URLByAppendingPathComponent:v10];

    v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v8, "count", v19)}];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = *v22;
      do
      {
        v15 = 0;
        do
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v21 + 1) + 8 * v15);
          v17 = [v9 objectForKeyedSubscript:v16];
          if (!v17 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          [v11 setObject:v17 forKeyedSubscript:v16];

          ++v15;
        }

        while (v13 != v15);
        v18 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
        v13 = v18;
      }

      while (v18);
    }

    operator new();
  }

  operator new();
}

void sub_1E08B0BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_objecta, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  std::vector<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>>::~vector[abi:ne200100](&a35);

  std::mutex::unlock((a20 + a24));
  _Unwind_Resume(a1);
}

uint64_t std::vector<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>>::~vector[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(a1 + 8);
    if (v3 != v2)
    {
      v4 = v3 - 24;
      llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::destroyAll(v4);
      llvm::deallocate_buffer(*v4, (96 * *(v4 + 16)));
    }

    *(a1 + 8) = v2;
    operator delete(*a1);
  }

  return a1;
}

id sub_1E08B2D44()
{
  llvm::SourceMgr::~SourceMgr(&v5);
  v2 = v6;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = v7;
  v7 = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return v1;
}

void sub_1E08B2E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, id a23, id a24, id a25, uint64_t a26, char a27)
{
  llvm::SourceMgr::SrcBuffer::~SrcBuffer(&a27);
  llvm::SourceMgr::~SourceMgr(&a11);
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](&a20);
  v29 = a22;
  a22 = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  _Unwind_Resume(a1);
}

void sub_1E08B3404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{
  _Block_object_dispose((v31 - 136), 8);

  _Unwind_Resume(a1);
}

void sub_1E08B59F0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, llvm *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, void *a56)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  std::unordered_set<mlir::Operation *>::~unordered_set[abi:ne200100](v58 - 160);

  std::__tree<MPSGraphTensor * {__strong}>::destroy(&a55, a56);
  if (a18)
  {
    operator delete(a18);
  }

  if (a32)
  {
    operator delete(a32);
  }

  if (a21)
  {
    operator delete(a21);
  }

  mlir::IRMapping::~IRMapping(&a46);
}