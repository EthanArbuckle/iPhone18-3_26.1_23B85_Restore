void sub_1E07EDC34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9 == v9)
  {
    _Unwind_Resume(exception_object);
  }

  free(a9);
  _Unwind_Resume(exception_object);
}

void llvm::SmallVectorTemplateBase<GPU::GPURegionCallOpHandler::ScheduleStep,false>::push_back(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4 >= *(a1 + 12))
  {
    if (v5 <= a2 && v5 + 88 * v4 > a2)
    {
      v8 = a2 - v5;
      llvm::SmallVectorTemplateBase<GPU::GPURegionCallOpHandler::ScheduleStep,false>::grow(a1, v4 + 1);
      v5 = *a1;
      v2 = *a1 + v8;
    }

    else
    {
      llvm::SmallVectorTemplateBase<GPU::GPURegionCallOpHandler::ScheduleStep,false>::grow(a1, v4 + 1);
      v5 = *a1;
    }
  }

  v6 = v5 + 88 * *(a1 + 8);
  *v6 = v6 + 16;
  *(v6 + 8) = 0x400000000;
  if (*(v2 + 8))
  {
    llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=(v6, v2);
  }

  *(v6 + 80) = *(v2 + 80);
  ++*(a1 + 8);
}

void sub_1E07EDD38(_Unwind_Exception *exception_object)
{
  if (*v1 != v2)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

void llvm::SmallVectorTemplateBase<GPU::GPURegionCallOpHandler::ScheduleStep,false>::grow(uint64_t a1, unint64_t a2)
{
  v15 = 0;
  v3 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 88, &v15);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = 0;
    v9 = 88 * v7;
    do
    {
      v10 = v5 + v8;
      *v10 = v5 + v8 + 16;
      *(v10 + 8) = 0x400000000;
      if (*&v6[v8 + 8])
      {
        v10 = llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=(v10, &v6[v8]);
      }

      *(v10 + 80) = v6[v8 + 80];
      v8 += 88;
    }

    while (v9 != v8);
    v11 = *(a1 + 8);
    v6 = *a1;
    if (v11)
    {
      v12 = &v6[88 * v11 - 88];
      v13 = -88 * v11;
      do
      {
        if (v12 + 2 != *v12)
        {
          free(*v12);
        }

        v12 -= 11;
        v13 += 88;
      }

      while (v13);
      v6 = *a1;
    }
  }

  v14 = v15;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 12) = v14;
}

void sub_1E07EDE84(void *a1)
{
  v4 = (v1 + v2);
  v5 = *(v1 + v2);
  if (v1 + v2 + 16 != v5)
  {
    free(v5);
  }

  __cxa_begin_catch(a1);
  if (v2)
  {
    do
    {
      v8 = *v1;
      v7 = v1 + 2;
      v6 = v8;
      if (v8 != v7)
      {
        free(v6);
      }

      v1 = (v7 + 9);
    }

    while (v4 != v1);
  }

  __cxa_rethrow();
}

uint64_t llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=(uint64_t result, const void **a2)
{
  if (result != a2)
  {
    v3 = a2 + 2;
    v2 = *a2;
    if (*a2 != a2 + 2)
    {
      if (*result != result + 16)
      {
        v4 = result;
        v5 = a2;
        free(*result);
        a2 = v5;
        result = v4;
        v2 = *v5;
      }

      *result = v2;
      v6 = a2 + 1;
      *(result + 8) = a2[1];
      *a2 = v3;
      *(a2 + 3) = 0;
      goto LABEL_17;
    }

    v6 = a2 + 1;
    v7 = *(a2 + 2);
    v8 = *(result + 8);
    if (v8 >= v7)
    {
      if (v7)
      {
        v12 = result;
        memmove(*result, *a2, 16 * v7);
        result = v12;
      }

      *(result + 8) = v7;
      goto LABEL_17;
    }

    if (*(result + 12) >= v7)
    {
      if (v8)
      {
        v10 = result;
        v13 = a2;
        memmove(*result, *a2, 16 * v8);
        a2 = v13;
        v11 = *v6 - v8;
        if (!v11)
        {
LABEL_16:
          result = v10;
          *(v10 + 8) = v7;
LABEL_17:
          *v6 = 0;
          return result;
        }
      }

      else
      {
        v10 = result;
        v8 = 0;
        v11 = *v6;
        if (!*v6)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      *(result + 8) = 0;
      v9 = a2;
      v10 = result;
      llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 16, v7, 16);
      a2 = v9;
      v8 = 0;
      v11 = *v6;
      if (!*v6)
      {
        goto LABEL_16;
      }
    }

    memcpy((*v10 + 16 * v8), *a2 + 16 * v8, 16 * v11);
    goto LABEL_16;
  }

  return result;
}

uint64_t llvm::SmallVector<std::promise<void>,4u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = 8 * v3;
    v5 = -v4;
    v6 = v2 + v4 - 8;
    do
    {
      v6 = MEMORY[0x1E12E5A60](v6) - 8;
      v5 += 8;
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

char **llvm::SmallVector<std::shared_future<void>,4u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = 8 * v3;
    v5 = -v4;
    v6 = &v2[v4 - 8];
    do
    {
      std::shared_future<void>::~shared_future(v6);
      v6 = (v7 - 8);
      v5 += 8;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

void llvm::SmallVectorTemplateBase<std::promise<void>,false>::grow(uint64_t a1, unint64_t a2)
{
  v23 = 0;
  v3 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 8, &v23);
  v5 = v4;
  v6 = *a1;
  v7 = *a1;
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = (v8 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v10 = v8;
    if (v9 >= 0xB)
    {
      v12 = v5 >= &v6[v10] || v6 >= v5 + v10 * 8;
      v11 = v5;
      if (v12)
      {
        v13 = v9 + 1;
        v14 = v13 & 0x3FFFFFFFFFFFFFFCLL;
        v11 = (v5 + v14 * 8);
        v7 = &v6[v14];
        v15 = (v6 + 2);
        v16 = (v5 + 16);
        v17 = v13 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v18 = *v15;
          *(v16 - 1) = *(v15 - 1);
          *v16 = v18;
          *(v15 - 1) = 0uLL;
          *v15 = 0uLL;
          v15 += 2;
          v16 += 2;
          v17 -= 4;
        }

        while (v17);
        if (v13 == (v13 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v11 = v5;
    }

    v19 = &v6[v8];
    do
    {
      *v11++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v19);
LABEL_14:
    v20 = -(v10 * 8);
    v21 = &v6[v10 - 1];
    do
    {
      v21 = MEMORY[0x1E12E5A60](v21) - 8;
      v20 += 8;
    }

    while (v20);
    v7 = *a1;
  }

  v22 = v23;
  if (v7 != v3)
  {
    free(v7);
  }

  *a1 = v5;
  *(a1 + 12) = v22;
}

void llvm::SmallVectorTemplateBase<std::shared_future<void>,false>::grow(uint64_t a1, unint64_t a2)
{
  v24 = 0;
  v3 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 8, &v24);
  v5 = v4;
  v6 = *a1;
  v7 = *a1;
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = (v8 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v10 = v8;
    if (v9 >= 0xB)
    {
      v12 = v5 >= &v6[v10] || v6 >= v5 + v10 * 8;
      v11 = v5;
      if (v12)
      {
        v13 = v9 + 1;
        v14 = v13 & 0x3FFFFFFFFFFFFFFCLL;
        v11 = (v5 + v14 * 8);
        v7 = &v6[v14];
        v15 = (v6 + 2);
        v16 = (v5 + 16);
        v17 = v13 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v18 = *v15;
          *(v16 - 1) = *(v15 - 1);
          *v16 = v18;
          *(v15 - 1) = 0uLL;
          *v15 = 0uLL;
          v15 += 2;
          v16 += 2;
          v17 -= 4;
        }

        while (v17);
        if (v13 == (v13 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v11 = v5;
    }

    v19 = &v6[v8];
    do
    {
      *v11++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v19);
LABEL_14:
    v20 = -(v10 * 8);
    v21 = &v6[v10 - 1];
    do
    {
      std::shared_future<void>::~shared_future(v21);
      v21 = (v22 - 8);
      v20 += 8;
    }

    while (v20);
    v7 = *a1;
  }

  v23 = v24;
  if (v7 != v3)
  {
    free(v7);
  }

  *a1 = v5;
  *(a1 + 12) = v23;
}

void llvm::SmallVectorTemplateBase<std::unique_ptr<GPU::anonymous namespace::BlockingEncodeDescriptor>,false>::grow(uint64_t a1, unint64_t a2)
{
  v25 = 0;
  v3 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 8, &v25);
  v5 = v4;
  v6 = *a1;
  v7 = *a1;
  v8 = *(a1 + 8);
  if (!v8)
  {
    goto LABEL_19;
  }

  v9 = (v8 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  v10 = v8;
  if (v9 < 0xB)
  {
    v11 = v5;
LABEL_12:
    v20 = &v6[v8];
    do
    {
      v21 = *v7;
      *v7++ = 0;
      *v11++ = v21;
    }

    while (v7 != v20);
    goto LABEL_14;
  }

  v12 = v6 >= v5 + v10 * 8 || v5 >= &v6[v10];
  v11 = v5;
  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = v9 + 1;
  v14 = v13 & 0x3FFFFFFFFFFFFFFCLL;
  v11 = (v5 + v14 * 8);
  v7 = &v6[v14];
  v15 = (v6 + 2);
  v16 = (v5 + 16);
  v17 = v13 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v18 = *(v15 - 1);
    v19 = *v15;
    *(v15 - 1) = 0uLL;
    *v15 = 0uLL;
    *(v16 - 1) = v18;
    *v16 = v19;
    v15 += 2;
    v16 += 2;
    v17 -= 4;
  }

  while (v17);
  if (v13 != (v13 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_12;
  }

LABEL_14:
  v22 = v6 - 1;
  do
  {
    v23 = v22[v10];
    v22[v10] = 0;
    if (v23)
    {
      v23->__state_ = &unk_1F5B50780;
      std::shared_future<void>::~shared_future(v23 + 13);
      GPU::EncodeDescriptor::~EncodeDescriptor(v23);
      MEMORY[0x1E12E5B90]();
    }

    --v10;
  }

  while (v10 * 8);
  v7 = *a1;
LABEL_19:
  v24 = v25;
  if (v7 != v3)
  {
    free(v7);
  }

  *a1 = v5;
  *(a1 + 12) = v24;
}

uint64_t GPU::anonymous namespace::BlockingEncodeDescriptor::commitAndContinue(GPU::_anonymous_namespace_::BlockingEncodeDescriptor *this)
{
  v2 = *(this + 13);
  if (v2)
  {
    std::__assoc_sub_state::wait(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    [v3 endEncoding];
    v4 = *(this + 9);
    *(this + 9) = 0;
  }

  result = [*(this + 1) commitAndContinue];
  *(this + 24) = 1;
  return result;
}

void GPU::anonymous namespace::BlockingEncodeDescriptor::checkCommitAndContinueUpdate(GPU::_anonymous_namespace_::BlockingEncodeDescriptor *this)
{
  v1 = *(this + 13);
  if (!v1)
  {
    return;
  }

  v3.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  m = (v1 + 24);
  v12.__m_ = (v1 + 24);
  v12.__owns_ = 1;
  std::mutex::lock((v1 + 24));
  v5 = *(v1 + 136);
  if ((v5 & 8) != 0)
  {
    v6 = 2;
    goto LABEL_27;
  }

  if ((v5 & 4) != 0)
  {
    v6 = 0;
    goto LABEL_27;
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ < v3.__d_.__rep_)
  {
    if (std::chrono::steady_clock::now().__d_.__rep_ >= v3.__d_.__rep_)
    {
      goto LABEL_9;
    }

    v9.__d_.__rep_ = v3.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
    if (v9.__d_.__rep_ >= 1)
    {
      std::chrono::steady_clock::now();
      v10.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (!v10.__d_.__rep_)
      {
        v11 = 0;
        goto LABEL_22;
      }

      if (v10.__d_.__rep_ < 1)
      {
        if (v10.__d_.__rep_ < 0xFFDF3B645A1CAC09)
        {
          v7.__d_.__rep_ = v9.__d_.__rep_ + 0x8000000000000000;
          goto LABEL_7;
        }
      }

      else if (v10.__d_.__rep_ > 0x20C49BA5E353F7)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
        if ((v9.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_22:
          v7.__d_.__rep_ = v11 + v9.__d_.__rep_;
          goto LABEL_7;
        }

LABEL_6:
        v7.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_7:
        std::condition_variable::__do_timed_wait((v1 + 88), &v12, v7);
        std::chrono::steady_clock::now();
        goto LABEL_8;
      }

      v11 = 1000 * v10.__d_.__rep_;
      if (1000 * v10.__d_.__rep_ <= (v9.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        goto LABEL_22;
      }

      goto LABEL_6;
    }

LABEL_8:
    std::chrono::steady_clock::now();
LABEL_9:
    v8 = *(v1 + 136);
    if ((v8 & 4) != 0)
    {
      goto LABEL_25;
    }
  }

  v8 = *(v1 + 136);
LABEL_25:
  v6 = ((v8 >> 2) & 1) == 0;
  if (v12.__owns_)
  {
    m = v12.__m_;
LABEL_27:
    std::mutex::unlock(m);
  }

  if (!v6)
  {
    *(this + 24) = 1;
  }
}

void sub_1E07EF3E4()
{
  if (v1)
  {
  }

  JUMPOUT(0x1E07EF3B4);
}

void sub_1E07EF3F4()
{
  if (v1)
  {
  }

  JUMPOUT(0x1E07EF3B8);
}

void sub_1E07EF404()
{
  if (v1)
  {
  }

  JUMPOUT(0x1E07EF3BCLL);
}

void GPU::anePreCompileBinary(void *a1@<X0>, mlir::Operation ***x1_0@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v78[1] = *MEMORY[0x1E69E9840];
  v50 = a1;
  v48 = a3;
  if (a3)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v46 = 0;
  }

  else
  {
    v46 = @"hwx";
  }

  v69 = **x1_0;
  Callee = mlir::placement::RegionCall::getCallee(&v69);
  v9 = MEMORY[0x1E696AEC0];
  if (Callee)
  {
    v10 = v7;
    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v7 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v55) = v7;
    if (v7)
    {
      memmove(__dst, Callee, v7);
    }

    *(__dst + v10) = 0;
    v11 = __dst;
    if (v55 < 0)
    {
      v11 = __dst[0];
    }
  }

  else
  {
    __dst[0] = 0;
    __dst[1] = 0;
    v11 = __dst;
    v55 = 0;
  }

  v51 = [v9 stringWithFormat:@"%s", v11];
  if (SHIBYTE(v55) < 0)
  {
    operator delete(__dst[0]);
  }

  v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.bc.mlir", v51];
  v13 = v69;
  while (1)
  {
    v14 = *(v13 + 2);
    if (!v14)
    {
      break;
    }

    ParentOp = mlir::Block::getParentOp(v14);
    v13 = ParentOp;
    if (!ParentOp || *(*(ParentOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
    {
      goto LABEL_24;
    }
  }

  v13 = 0;
LABEL_24:
  v16 = GPU::getANEArchFromModule(v13, v12);
  v17 = GPU::getANECCompilationOptions(v13, v79);
  v18 = GPU::getANECCompilationOptionsFromEV(v17);
  v19 = [(GPU *)v17 objectForKey:v16];
  if (!v19 || (v20 = [v18 count] == 0, v19, v20))
  {
    v27 = 0x1E696A000;
    if (![v18 count])
    {
      goto LABEL_31;
    }

    v77 = v16;
    v78[0] = v18;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v78 forKeys:&v77 count:1];
    [(GPU *)v17 addEntriesFromDictionary:v21];
  }

  else
  {
    v21 = [(GPU *)v17 objectForKeyedSubscript:v16];
    v22 = [(GPU *)v17 objectForKeyedSubscript:v16];
    objc_opt_class();
    objc_opt_isKindOfClass();

    v23 = [(GPU *)v17 objectForKeyedSubscript:v16];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v25 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v21];
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = ___ZN3GPU19anePreCompileBinaryEP18MPSGraphExecutableRN4llvm15SmallVectorImplIN4mlir9placement10RegionCallEEE22BinaryResourceFileType_block_invoke;
    v67[3] = &unk_1E86D4BF0;
    v26 = v25;
    v68 = v26;
    [v18 enumerateKeysAndObjectsUsingBlock:v67];
    [(GPU *)v17 setObject:v26 forKeyedSubscript:v16];
  }

  v27 = 0x1E696A000uLL;
LABEL_31:
  if (GPU::emitFilesToCompile(v16, 1, *x1_0, *(x1_0 + 2), v50))
  {
    v28 = [*(v27 + 3776) stringWithFormat:@"%@/", v50[115]];
    v29 = *(v50 + 835);
    v47 = [*(v27 + 3776) stringWithFormat:@"%@.%@", v51, v46];
    v45 = [v28 stringByAppendingPathComponent:?];
    v42 = v29;
    v75[0] = @"InputNetworks";
    v72[0] = @"NetworkSourceFileName";
    v72[1] = @"NetworkSourcePath";
    v73[0] = v49;
    v73[1] = v28;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:v72 count:2];
    v74 = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
    v76[0] = v31;
    v76[1] = v47;
    v75[1] = @"OutputFileName";
    v75[2] = @"OutputFilePath";
    v76[2] = v28;
    v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:v75 count:3];

    v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"compiler_options_%@.plist", v51];
    v32 = [v28 stringByAppendingPathComponent:?];
    if (([(GPU *)v17 writeToFile:v32 atomically:1]& 1) == 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v70 = @"OptionsFilePath";
    v71 = v32;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
    v34 = [v33 mutableCopy];

    if (!v48)
    {
      [v34 setObject:v16 forKeyedSubscript:@"TargetArchitecture"];
      v61 = 0;
      v62 = &v61;
      v63 = 0x3032000000;
      v64 = __Block_byref_object_copy__1;
      v65 = __Block_byref_object_dispose__1;
      v66 = 0;
      v56 = MEMORY[0x1E69E9820];
      v57 = 3221225472;
      v58 = ___ZN3GPU19anePreCompileBinaryEP18MPSGraphExecutableRN4llvm15SmallVectorImplIN4mlir9placement10RegionCallEEE22BinaryResourceFileType_block_invoke_151;
      v59 = &unk_1E86D4C18;
      v60 = &v61;
      v35 = ANECCompile();
      if (v35 || v42)
      {
        v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ANECCompile() failed: status=%d, statusdict=%@", v35, v62[5]];
        NSLog(&cfstr_Error_2.isa, v41);
        NSLog(&cfstr_AneCompilation_0.isa);
        *a4 = 0;
        *(a4 + 16) = 0;

        _Block_object_dispose(&v61, 8);
        goto LABEL_46;
      }

      Context = mlir::Attribute::getContext((v13 + 24));
      mlir::PassManager::PassManager(__dst, Context, "any", 3uLL, 1);
      mlir::mpsx::createMakeANERegionsExternalPass(&v52);
      v37 = v52;
      v52 = 0;
      v53 = v37;
      mlir::OpPassManager::addPass(__dst, &v53);
      v38 = v53;
      v53 = 0;
      if (v38)
      {
        (*(*v38 + 8))(v38);
      }

      v39 = v52;
      v52 = 0;
      if (v39)
      {
        (*(*v39 + 8))(v39);
      }

      v40.var0.var0 = v13;
      if (!mlir::PassManager::run(__dst, v40))
      {
        *a4 = 0;
        *(a4 + 16) = 0;
        mlir::PassManager::~PassManager(__dst);
        _Block_object_dispose(&v61, 8);

        goto LABEL_46;
      }

      mlir::PassManager::~PassManager(__dst);
      _Block_object_dispose(&v61, 8);
    }

    *a4 = v45;
    *(a4 + 8) = v48;
    *(a4 + 16) = 1;
LABEL_46:

    goto LABEL_47;
  }

  *a4 = 0;
  *(a4 + 16) = 0;
LABEL_47:
}

void sub_1E07EFCB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, void *a18, void *a19, void *a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  mlir::PassManager::~PassManager(&__p);
  _Block_object_dispose(&a39, 8);

  _Unwind_Resume(a1);
}

id GPU::getANEArchFromModule(GPU *this, ModuleOp a2)
{
  if (!*(this + 47) || (v18.var0 = "mps.aneArch", v18.var1 = 11, InherentAttr = mlir::Operation::getInherentAttr(this, v18), (v4 & 1) == 0))
  {
    v19.var0 = "mps.aneArch";
    v19.var1 = 11;
    InherentAttr = mlir::DictionaryAttr::get((this + 56), v19);
  }

  if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v16 = 0;
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v5 = MEMORY[0x1E696AEC0];
    AttrData = mlir::OpaqueAttr::getAttrData(&v16);
    if (AttrData)
    {
      goto LABEL_9;
    }

LABEL_19:
    __p = 0;
    v14 = 0;
    p_p = &__p;
    v15 = 0;
    goto LABEL_20;
  }

  v16 = InherentAttr;
  v5 = MEMORY[0x1E696AEC0];
  AttrData = mlir::OpaqueAttr::getAttrData(&v16);
  if (!AttrData)
  {
    goto LABEL_19;
  }

LABEL_9:
  v8 = v7;
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v7 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v7;
  if (v7)
  {
    memmove(&__p, AttrData, v7);
  }

  *(&__p + v8) = 0;
  if (v15 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

LABEL_20:
  v10 = [v5 stringWithUTF8String:{p_p, __p, v14, v15, v16}];
  if (SHIBYTE(v15) < 0)
  {
    v11 = v10;
    operator delete(__p);
    v10 = v11;
  }

  return v10;
}

void sub_1E07F0090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id GPU::getANECCompilationOptions(GPU *this, ModuleOp a2)
{
  v3 = objc_opt_new();
  if (!*(this + 47) || (v26.var0 = "mps.aneCompilerSpatialSplitting", v26.var1 = 31, InherentAttr = mlir::Operation::getInherentAttr(this, v26), (v5 & 1) == 0))
  {
    v27.var0 = "mps.aneCompilerSpatialSplitting";
    v27.var1 = 31;
    InherentAttr = mlir::DictionaryAttr::get((this + 56), v27);
  }

  if (InherentAttr)
  {
    if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v6 = InherentAttr;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v24 = v6;
  UInt = mlir::IntegerAttr::getUInt(&v24);
  if (UInt)
  {
    v8 = @"Auto";
    if (UInt == 3)
    {
      v8 = @"GenericDAG";
    }

    if (UInt == 2)
    {
      v9 = @"Memory";
    }

    else
    {
      v9 = v8;
    }

    [v3 setObject:v9 forKeyedSubscript:@"SpatialSplitMode"];
  }

  if (!*(this + 47) || (v28.var0 = "mps_spi.device_compilation_options", v28.var1 = 34, v10 = mlir::Operation::getInherentAttr(this, v28), (v11 & 1) == 0))
  {
    v29.var0 = "mps_spi.device_compilation_options";
    v29.var1 = 34;
    v10 = mlir::DictionaryAttr::get((this + 56), v29);
  }

  if (v10)
  {
    v12 = *(*v10 + 136);
    v13 = v12 == &mlir::detail::TypeIDResolver<mlir::mps_spi::DeviceDescriptorOptionsAttr,void>::id;
    v14 = v12 == &mlir::detail::TypeIDResolver<mlir::mps_spi::DeviceDescriptorOptionsAttr,void>::id ? v10 : 0;
    v24 = v14;
    if (v13)
    {
      v15 = MEMORY[0x1E696AEC0];
      RHS = mlir::AffineBinaryOpExpr::getRHS(&v24);
      v16 = [v15 stringWithUTF8String:mlir::OpaqueAttr::getAttrData(&RHS)];
      v17 = MEMORY[0x1E696ACB0];
      v18 = [v16 dataUsingEncoding:4];
      v22 = 0;
      v19 = [v17 JSONObjectWithData:v18 options:0 error:&v22];
      v20 = v22;

      if (!v19 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      [v3 addEntriesFromDictionary:v19];
    }
  }

  return v3;
}

void sub_1E07F02C0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id GPU::getANECCompilationOptionsFromEV(GPU *this)
{
  if (qword_1EE17DE18 != -1)
  {
    dispatch_once(&qword_1EE17DE18, &__block_literal_global_281);
  }

  v1 = objc_opt_new();
  v2 = v1;
  if (byte_1EE17DDF6 == 1)
  {
    [v1 setObject:MEMORY[0x1E695E118] forKey:@"OptimizeKernelCoalescing"];
  }

  if (byte_1EE17DDF7 == 1)
  {
    [v2 setObject:MEMORY[0x1E695E118] forKey:@"EnableAggressiveNETransposeFusion"];
  }

  if (byte_1EE17DDF8 == 1)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:qword_1EE17DE20];
    [v2 setObject:v3 forKey:@"BSSLimit"];
  }

  return v2;
}

BOOL GPU::emitFilesToCompile(void *a1, int a2, mlir::Operation **a3, uint64_t a4, void *a5)
{
  v61[2] = *MEMORY[0x1E69E9840];
  v8 = a1;
  v9 = a5;
  v60 = *a3;
  Context = mlir::Attribute::getContext((v60 + 24));
  v11 = [*(v9 + 115) UTF8String];
  v12 = strlen(v11);
  if (v12 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v13 = v12;
  if (v12 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v12;
  if (v12)
  {
    memmove(&__dst, v11, v12);
  }

  __dst.__r_.__value_.__s.__data_[v13] = 0;
  v14 = std::string::append(&__dst, "/");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v58.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v58.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    if (a2)
    {
LABEL_9:
      memset(&__dst, 0, sizeof(__dst));
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      Callee = mlir::placement::RegionCall::getCallee(&v60);
      if (Callee)
      {
        v18 = v16;
        if (v16 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v16 >= 0x17)
        {
          operator new();
        }

        *(&v50.__r_.__value_.__s + 23) = v16;
        if (v16)
        {
          memmove(&v50, Callee, v16);
        }

        v50.__r_.__value_.__s.__data_[v18] = 0;
      }

      else
      {
        memset(&v50, 0, sizeof(v50));
      }

      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &v58;
      }

      else
      {
        v23 = v58.__r_.__value_.__r.__words[0];
      }

      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v58.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v58.__r_.__value_.__l.__size_;
      }

      v25 = std::string::insert(&v50, 0, v23, size);
      v26 = *&v25->__r_.__value_.__l.__data_;
      v51.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
      *&v51.__r_.__value_.__l.__data_ = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      v27 = std::string::append(&v51, ".bc.mlir");
      v28 = v27->__r_.__value_.__r.__words[0];
      v61[0] = v27->__r_.__value_.__l.__size_;
      *(v61 + 7) = *(&v27->__r_.__value_.__r.__words[1] + 7);
      v29 = HIBYTE(v27->__r_.__value_.__r.__words[2]);
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      __dst.__r_.__value_.__r.__words[0] = v28;
      __dst.__r_.__value_.__l.__size_ = v61[0];
      *(&__dst.__r_.__value_.__r.__words[1] + 7) = *(v61 + 7);
      *(&__dst.__r_.__value_.__s + 23) = v29;
      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v51.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_39:
          if (*(v9 + 854) != 1)
          {
            goto LABEL_52;
          }

          goto LABEL_43;
        }
      }

      else if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

      operator delete(v50.__r_.__value_.__l.__data_);
      if (*(v9 + 854) != 1)
      {
LABEL_52:
        mlir::mpsx::createWriteANERegionsPass(&__dst, &v51);
        v36 = v51.__r_.__value_.__r.__words[0];
        v51.__r_.__value_.__r.__words[0] = 0;
        v49 = v36;
        mlir::OpPassManager::addPass(v59, &v49);
        v37 = v49;
        v49 = 0;
        if (v37)
        {
          (*(*v37 + 8))(v37);
        }

        v38 = v51.__r_.__value_.__r.__words[0];
        v51.__r_.__value_.__r.__words[0] = 0;
        if (v38)
        {
          (*(*v38 + 8))(v38);
        }

        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_59;
        }

        v22 = __dst.__r_.__value_.__r.__words[0];
        goto LABEL_58;
      }

LABEL_43:
      v30 = [MEMORY[0x1E696AC08] defaultManager];
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:p_dst];
      v33 = [v30 fileExistsAtPath:v32];

      if (v33)
      {
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v34 = &__dst;
        }

        else
        {
          v34 = __dst.__r_.__value_.__r.__words[0];
        }

        v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v34];
        [v30 removeItemAtPath:v35 error:0];
      }

      goto LABEL_52;
    }
  }

  else if (a2)
  {
    goto LABEL_9;
  }

  ANECFamily = getANECFamily(v8);
  v20 = *(v9 + 843);
  v21 = *(v9 + 854);
  v48 = 0;
  LOBYTE(v47) = 0;
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v46, v58.__r_.__value_.__l.__data_, v58.__r_.__value_.__l.__size_);
  }

  else
  {
    v46 = v58;
  }

  v45 = 0;
  LOBYTE(__p) = 0;
  mlir::anec::populateWritePlistPass(v59, &v47, &v46, &__p, v21, ANECFamily, v20);
  if (v45 < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_21:
      if (v48 < 0)
      {
        goto LABEL_25;
      }

      goto LABEL_59;
    }
  }

  else if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(v46.__r_.__value_.__l.__data_);
  if (v48 < 0)
  {
LABEL_25:
    v22 = v47;
LABEL_58:
    operator delete(v22);
  }

LABEL_59:
  v39.var0.var0 = v60;
  while (1)
  {
    v40 = *(v39.var0.var0 + 2);
    if (!v40)
    {
      break;
    }

    ParentOp = mlir::Block::getParentOp(v40);
    v39.var0.var0 = ParentOp;
    if (!ParentOp || *(*(ParentOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
    {
      goto LABEL_65;
    }
  }

  v39.var0.var0 = 0;
LABEL_65:
  v42 = mlir::PassManager::run(v59, v39);
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  mlir::PassManager::~PassManager(v59);

  return v42;
}

void sub_1E07F0A18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a46 < 0)
  {
    operator delete(__p);
  }

  if (*(v50 - 185) < 0)
  {
    operator delete(*(v50 - 208));
  }

  mlir::PassManager::~PassManager((v50 - 176));

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZN3GPU19anePreCompileBinaryEP18MPSGraphExecutableRN4llvm15SmallVectorImplIN4mlir9placement10RegionCallEEE22BinaryResourceFileType_block_invoke_151(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = a3;
  }
}

uint64_t GPU::ANEHelper::ANEHelper(uint64_t a1, void *x1_0, GPU *a3)
{
  v5 = x1_0;
  objc_initWeak(a1, v5);
  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  *(a1 + 72) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = a3;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/", v5[115]];
  v7 = *(a1 + 24);
  *(a1 + 24) = v6;

  v8 = GPU::getANEArchFromModule(a3, v39);
  v9 = *(a1 + 16);
  *(a1 + 16) = v8;

  *(a1 + 87) = 0;
  if (qword_1EE17DE10 != -1)
  {
    dispatch_once(&qword_1EE17DE10, &__block_literal_global_6);
  }

  *(a1 + 82) = byte_1EE17DDF1;
  *(a1 + 83) = byte_1EE17DDF4;
  if (byte_1EE17DDF2 == 1)
  {
    *(a1 + 84) = byte_1EE17DDF2;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(a1);
    *(a1 + 84) = WeakRetained[847];
  }

  v11 = byte_1EE17DDF3;
  *(a1 + 85) = byte_1EE17DDF3;
  if (byte_1EE17DDF5 != 1)
  {
    v14 = objc_loadWeakRetained(a1);
    *(a1 + 86) = v14[848];

    if ((*(a1 + 85) & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_10:
    v12 = [MEMORY[0x1E698CD98] aneRealTimeTaskQoS];
    goto LABEL_11;
  }

  *(a1 + 86) = byte_1EE17DDF5;
  if (v11)
  {
    goto LABEL_10;
  }

LABEL_8:
  v12 = [MEMORY[0x1E698CD98] aneUserInteractiveTaskQoS];
LABEL_11:
  *(a1 + 32) = v12;
  v15 = GPU::getANECCompilationOptions(*(a1 + 8), v13);
  v16 = *(a1 + 72);
  *(a1 + 72) = v15;

  *(a1 + 80) = 0;
  v17 = *(a1 + 8);
  if (!*(v17 + 47) || (v40.var0 = "mps.aneEnableFWToFWSignal", v40.var1 = 25, InherentAttr = mlir::Operation::getInherentAttr(*(a1 + 8), v40), (v19 & 1) == 0))
  {
    v41.var0 = "mps.aneEnableFWToFWSignal";
    v41.var1 = 25;
    InherentAttr = mlir::DictionaryAttr::get((v17 + 56), v41);
  }

  if (InherentAttr)
  {
    if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v20 = InherentAttr;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v38 = v20;
  *(a1 + 80) = mlir::IntegerAttr::getInt(&v38) != 0;
  *(a1 + 81) = 0;
  v21 = *(a1 + 8);
  if (!*(v21 + 47) || (v42.var0 = "mps.aneEnableLateLatch", v42.var1 = 22, v22 = mlir::Operation::getInherentAttr(*(a1 + 8), v42), (v23 & 1) == 0))
  {
    v43.var0 = "mps.aneEnableLateLatch";
    v43.var1 = 22;
    v22 = mlir::DictionaryAttr::get((v21 + 56), v43);
  }

  if (v22)
  {
    if (*(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  v38 = v24;
  *(a1 + 81) = mlir::IntegerAttr::getInt(&v38) != 0;
  v25 = v5[40];
  v26 = *(v5 + 82);
  if (!v26)
  {
    v27 = v5[40];
    v32 = &v25[v26];
    if (v25 == v32)
    {
      goto LABEL_47;
    }

    goto LABEL_40;
  }

  v27 = v5[40];
  if (*v25)
  {
    v28 = *v25 == -8;
  }

  else
  {
    v28 = 1;
  }

  if (v28)
  {
    do
    {
      v30 = v27[1];
      ++v27;
      v29 = v30;
      if (v30)
      {
        v31 = v29 == -8;
      }

      else
      {
        v31 = 1;
      }
    }

    while (v31);
  }

  v32 = &v25[v26];
  if (v27 != v32)
  {
LABEL_40:
    v33 = *v27;
    do
    {
      v34.var0.var0 = *(*(a1 + 8) + 24);
      LazyCopyFile::load(*(v33 + 8), v34);
      do
      {
        v35 = v27[1];
        ++v27;
        v33 = v35;
        if (v35)
        {
          v36 = v33 == -8;
        }

        else
        {
          v36 = 1;
        }
      }

      while (v36);
    }

    while (v27 != v32);
  }

LABEL_47:

  return a1;
}

void sub_1E07F0F3C()
{
  v4 = *(v0 + 40);
  *(v0 + 40) = 0;
  if (v4)
  {
    std::default_delete<GPU::ANEHelper::CompiledProduct>::operator()[abi:ne200100](v2, v4);
  }

  objc_destroyWeak(v0);
  _Unwind_Resume(v3);
}

void ___ZN3GPU9ANEHelperC2EP18MPSGraphExecutableN4mlir8ModuleOpE_block_invoke()
{
  if (getenv("MPSGRAPH_DISABLE_ANE_INTERMEDIATE_BUFFER"))
  {
    NSLog(&cfstr_MpsgraphDisabl_4.isa);
    byte_1EE17DDF1 = 1;
  }

  if (getenv("MPSGRAPH_DISABLE_ANE_CACHING"))
  {
    NSLog(&cfstr_MpsgraphDisabl_6.isa);
    byte_1EE17DDF2 = 1;
  }

  if (getenv("MPSGRAPH_ENABLE_ANE_REAL_TIME_QOS"))
  {
    NSLog(&cfstr_MpsgraphEnable_4.isa);
    byte_1EE17DDF3 = 1;
  }

  if (getenv("MPS_GRAPH_FORCE_ANE_FALLBACK"))
  {
    NSLog(&cfstr_MpsGraphForceA_0.isa);
    byte_1EE17DDF4 = 1;
  }

  if (getenv("MPS_GRAPH_DISABLE_ANE_FALLBACK"))
  {
    NSLog(&cfstr_MpsGraphDisabl_0.isa);
    byte_1EE17DDF5 = 1;
  }

  std::mutex::lock(&GPU::ANEHelper::_intermediateBufferHandleMutex);
  _MergedGlobals_68 = 0;
  qword_1EE17DE00 = -1;
  qword_1EE17DE08 = 0;

  std::mutex::unlock(&GPU::ANEHelper::_intermediateBufferHandleMutex);
}

void GPU::ANEHelper::get(void *a1@<X0>, uint64_t **a2@<X1>, void *a3@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (*(a2 + 2))
  {
    ParentOp = **a2;
    while (1)
    {
      v7 = *(ParentOp + 16);
      if (!v7)
      {
        break;
      }

      ParentOp = mlir::Block::getParentOp(v7);
      if (!ParentOp)
      {
        break;
      }

      if (*(*(ParentOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
      {
        v8 = ParentOp;
        Callee = mlir::placement::RegionCall::getCallee(*a2);
        v11 = v10;
        Context = mlir::Attribute::getContext((v8 + 6));
        v15 = 261;
        v14[0] = Callee;
        v14[1] = v11;
        v13 = mlir::StringAttr::get(Context, v14);
        mlir::SymbolTable::lookupSymbolIn(v8, v13);
        operator new();
      }
    }
  }

  *a3 = 0;
}

void sub_1E07F1474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, GPU::ANEHelper *a10, uint64_t a11, uint64_t a12)
{
  v14 = a12;
  a12 = 0;
  if (v14)
  {
    std::default_delete<GPU::ANEHelper::CompiledProduct>::operator()[abi:ne200100](&a12, v14);
  }

  std::unique_ptr<GPU::ANEHelper>::~unique_ptr[abi:ne200100](&a10);

  _Unwind_Resume(a1);
}

GPU::ANEHelper **std::unique_ptr<GPU::ANEHelper>::~unique_ptr[abi:ne200100](GPU::ANEHelper **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    GPU::ANEHelper::~ANEHelper(v2);
  }

  return a1;
}

void GPU::ANEHelper::getFromPreCompiled(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = a1;
  if (*(a2 + 8))
  {
    v6 = **a2;
    while (1)
    {
      v7 = *(v6 + 16);
      if (!v7)
      {
        break;
      }

      ParentOp = mlir::Block::getParentOp(v7);
      v6 = ParentOp;
      if (!ParentOp)
      {
        break;
      }

      if (*(*(ParentOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
      {
        operator new();
      }
    }
  }

  *a3 = 0;
}

void sub_1E07F1968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, GPU::ANEHelper *a23)
{
  std::unique_ptr<GPU::ANEHelper>::~unique_ptr[abi:ne200100](&a23);

  _Unwind_Resume(a1);
}

uint64_t GPU::ANEHelper::load(uint64_t a1, mlir::Operation **a2, uint64_t a3, uint64_t a4)
{
  v186[41] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1);
  v8 = WeakRetained[836];

  v133 = a1;
  v9 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 81)];
  [*(a4 + 16) setObject:v9 forKeyedSubscript:*MEMORY[0x1E698CDF8]];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:*(v133 + 80)];
  [*(a4 + 16) setObject:v10 forKeyedSubscript:*MEMORY[0x1E698CDF0]];

  std::mutex::lock(&GPU::ANEHelper::_intermediateBufferHandleMutex);
  if (_MergedGlobals_68 == 1 && (*(v133 + 82) & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:qword_1EE17DE00];
    [*(a4 + 16) setObject:v11 forKeyedSubscript:*MEMORY[0x1E698CE38]];

    if ((*(v133 + 87) & 1) == 0)
    {
      ++qword_1EE17DE08;
      *(v133 + 87) = 1;
    }
  }

  v13 = *a4;
  v12 = *(a4 + 8);
  v14 = *(a4 + 16);
  v15 = *(v133 + 32);
  if (*(v133 + 85) == 1)
  {
    v155 = 0;
    v16 = &v155;
    v17 = [v12 loadRealTimeModel:v13 options:v14 qos:v15 error:&v155];
  }

  else
  {
    v154 = 0;
    v16 = &v154;
    v17 = [v12 loadModel:v13 options:v14 qos:v15 error:&v154];
  }

  v18 = v17;
  v19 = *v16;
  v130 = v18 ^ 1 | v8;
  v131 = v19;
  if ((v130 & 1) == 0)
  {
    if ((_MergedGlobals_68 & 1) == 0 && (*(v133 + 82) & 1) == 0 && [*a4 intermediateBufferHandle])
    {
      if (*(v133 + 87) && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (qword_1EE17DE08 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      _MergedGlobals_68 = 1;
      qword_1EE17DE00 = [*a4 intermediateBufferHandle];
      if ((*(v133 + 87) & 1) == 0)
      {
        ++qword_1EE17DE08;
        *(v133 + 87) = 1;
      }
    }

    if ([*a4 intermediateBufferHandle])
    {
      [*a4 intermediateBufferHandle];
    }

    if ([*a4 intermediateBufferHandle])
    {
      v21 = qword_1EE17DE00;
      if (v21 != [*a4 intermediateBufferHandle])
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }
    }

    if (!a3)
    {
LABEL_172:
      *(a4 + 29) = 1;
      goto LABEL_173;
    }

    v132 = &a2[a3];
    while (1)
    {
      v23 = *(v133 + 36);
      v161 = *a2;
      v22 = v161;
      v24 = *a4;
      v167 = v169;
      v168 = 0x400000000;
      v170 = v172;
      v171 = 0x400000000;
      v173 = 0;
      v174 = 0;
      __dst = v177;
      __len = xmmword_1E09700D0;
      v178 = 0;
      v179[0] = v180;
      v179[1] = 0x400000000;
      v181[0] = 0;
      v181[1] = 0;
      v180[4] = v181;
      v182[0] = v183;
      v182[1] = 0x400000000;
      v184[0] = 0;
      v184[1] = 0;
      v183[4] = v184;
      v165 = a4;
      v166 = 0;
      v136 = v24;
      v143 = [v24 modelAttributes];
      v134 = a2;
      v135 = v22;
      v25 = GPU::getProcedureIndex(v22, v24);
      v26 = v166;
      v166 = v25;

      v141 = [v143 objectForKeyedSubscript:@"NetworkStatusList"];
      v27 = [v143 objectForKeyedSubscript:*MEMORY[0x1E698CE58]];
      v142 = [v27 objectForKeyedSubscript:*MEMORY[0x1E698CED0]];

      if (v142)
      {
        [v142 count];
      }

      if (v141)
      {
        [v141 count];
      }

      v140 = [v142 objectAtIndexedSubscript:{objc_msgSend(v166, "unsignedIntValue")}];
      v28 = [v140 objectForKeyedSubscript:*MEMORY[0x1E698CE78]];
      v150 = v28;
      if (v28)
      {
        [v28 count];
      }

      v29 = [v143 objectForKeyedSubscript:*MEMORY[0x1E698CE58]];
      v147 = [v29 objectForKeyedSubscript:*MEMORY[0x1E698CE80]];

      if (v147)
      {
        [v147 count];
      }

      v30 = [v140 objectForKeyedSubscript:*MEMORY[0x1E698CEA0]];
      v145 = v30;
      if (v30)
      {
        [v30 count];
      }

      v31 = [v141 objectAtIndexedSubscript:{objc_msgSend(v166, "unsignedIntValue")}];
      v32 = v31;
      v139 = v31;
      if (v31)
      {
        [v31 count];
      }

      v33 = [v32 objectForKeyedSubscript:@"LiveInputList"];
      v138 = v33;
      if (v33)
      {
        [v33 count];
      }

      v152 = [v139 objectForKeyedSubscript:@"LiveStateList"];
      v151 = [v139 objectForKeyedSubscript:@"LiveInputParamList"];
      v34 = [v139 objectForKeyedSubscript:@"LiveOutputList"];
      v153 = v34;
      if (v34)
      {
        [v34 count];
      }

      v35 = [v143 objectForKeyedSubscript:*MEMORY[0x1E698CE58]];
      v144 = [v35 objectForKeyedSubscript:*MEMORY[0x1E698CE70]];

      v36 = [v143 objectForKeyedSubscript:*MEMORY[0x1E698CE58]];
      v148 = [v36 objectForKeyedSubscript:*MEMORY[0x1E698CE98]];

      if (v23)
      {
        Callee = mlir::placement::RegionCall::getCallee(&v161);
        v149 = v38;
        v39 = Callee;
      }

      else
      {
        v149 = 0;
        v39 = "";
      }

      v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v39];
      v162 = 0;
      v163 = 0;
      v164 = 0x1000000000;
      if ((*(v161 + 46) & 0x80) == 0)
      {
        break;
      }

      v41 = *(v161 + 17);
      if (v41 <= HIDWORD(v168))
      {
        goto LABEL_49;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(&v167, v169, v41, 8);
      v42 = MEMORY[0x1E695DF70];
      if ((*(v161 + 46) & 0x80) != 0)
      {
        v41 = *(v161 + 17);
      }

      else
      {
        v41 = 0;
      }

LABEL_50:
      obj = [v42 arrayWithCapacity:v41];
      v43 = 0;
      v44 = v161;
      if ((*(v161 + 46) & 0x80) != 0)
      {
LABEL_51:
        if (v43 == *(v44 + 17))
        {
          goto LABEL_76;
        }

        goto LABEL_52;
      }

      while (v43)
      {
LABEL_52:
        mlir::anec::getANECInputName(v39, v149, v43, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        v48 = llvm::StringMapImpl::hash(p_p, size, v45);
        v49 = llvm::StringMapImpl::LookupBucketFor(&v162, p_p, size, v48);
        v50 = v162;
        v51 = *(v162 + v49);
        if (v51 == -8)
        {
          LODWORD(v164) = v164 - 1;
LABEL_62:
          buffer = llvm::allocate_buffer(size + 17, 8uLL);
          v53 = buffer;
          v54 = (buffer + 2);
          if (size)
          {
            memcpy(buffer + 2, p_p, size);
          }

          v54[size] = 0;
          *v53 = size;
          v53[1] = 0;
          v50[v49] = v53;
          ++HIDWORD(v163);
          v55 = llvm::StringMapImpl::RehashTable(&v162, v49);
          for (i = (v162 + 8 * v55); ; ++i)
          {
            v51 = *i;
            if (*i && v51 != -8)
            {
              break;
            }
          }

          goto LABEL_70;
        }

        if (!v51)
        {
          goto LABEL_62;
        }

LABEL_70:
        *(v51 + 8) = v43;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v58 = [v150 objectAtIndexedSubscript:v43];
        [obj addObject:v58];

        v59 = [v150 objectAtIndexedSubscript:v43];
        v60 = [v147 objectAtIndexedSubscript:{objc_msgSend(v59, "intValue")}];

        v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@__arg", v40, v40];
        v62 = [v60 substringFromIndex:{objc_msgSend(v61, "length")}];
        v63 = [v62 intValue];
        v64 = v168;
        if (v168 >= HIDWORD(v168))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v167, v169, v168 + 1, 8);
          v64 = v168;
        }

        *&v167[8 * v64] = v63;
        LODWORD(v168) = v168 + 1;

        ++v43;
        v44 = v161;
        if ((*(v161 + 46) & 0x80) != 0)
        {
          goto LABEL_51;
        }
      }

LABEL_76:
      v158 = 0;
      v159 = 0;
      v160 = 0x1000000000;
      if (*(v44 + 9))
      {
        v65 = 0;
        while (1)
        {
          mlir::anec::getANECOutputName(v39, v149, v65, &__p);
          v67 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          v68 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? SHIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
          v69 = llvm::StringMapImpl::hash(v67, v68, v66);
          v70 = llvm::StringMapImpl::LookupBucketFor(&v158, v67, v68, v69);
          v71 = v158;
          v72 = *(v158 + v70);
          if (v72 == -8)
          {
            break;
          }

          if (!v72)
          {
            goto LABEL_90;
          }

LABEL_87:
          *(v72 + 8) = v65;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (++v65 == *(v161 + 9))
          {
            goto LABEL_102;
          }
        }

        LODWORD(v160) = v160 - 1;
LABEL_90:
        v73 = llvm::allocate_buffer(v68 + 17, 8uLL);
        v74 = v73;
        v75 = (v73 + 2);
        if (v68)
        {
          memcpy(v73 + 2, v67, v68);
        }

        v75[v68] = 0;
        *v74 = v68;
        v74[1] = 0;
        v71[v70] = v74;
        ++HIDWORD(v159);
        v76 = llvm::StringMapImpl::RehashTable(&v158, v70);
        v77 = (v158 + 8 * v76);
        v72 = *v77;
        if (*v77)
        {
          v78 = v72 == -8;
        }

        else
        {
          v78 = 1;
        }

        if (v78)
        {
          do
          {
            v79 = v77[1];
            ++v77;
            v72 = v79;
            if (v79)
            {
              v80 = v72 == -8;
            }

            else
            {
              v80 = 1;
            }
          }

          while (v80);
        }

        goto LABEL_87;
      }

LABEL_102:
      for (j = 0; j < [v152 count]; ++j)
      {
        v82 = [v152 objectAtIndexedSubscript:j];
        v83 = [v82 objectForKeyedSubscript:@"Name"];
        v84 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@__arg", v40, v40];
        v85 = [v83 substringFromIndex:{objc_msgSend(v84, "length")}];
        __p.__r_.__value_.__r.__words[0] = [v85 intValue];
        llvm::SmallSet<unsigned long long,4u,std::less<unsigned long long>>::insertImpl<unsigned long long>(v157, v179, &__p);
      }

      for (k = 0; k < [v151 count]; ++k)
      {
        v87 = [v151 objectAtIndexedSubscript:k];
        v88 = [v87 objectForKeyedSubscript:@"Name"];
        v89 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@__arg", v40, v40];
        v90 = [v88 substringFromIndex:{objc_msgSend(v89, "length")}];
        __p.__r_.__value_.__r.__words[0] = [v90 intValue];
        llvm::SmallSet<unsigned long long,4u,std::less<unsigned long long>>::insertImpl<unsigned long long>(v156, v182, &__p);
      }

      objc_storeStrong(&v173, obj);
      if ((*(v161 + 46) & 0x80) != 0)
      {
        v92 = *(v161 + 17);
        __p.__r_.__value_.__r.__words[0] = v186;
        *&__p.__r_.__value_.__r.__words[1] = xmmword_1E09700D0;
        if (!v92)
        {
          v92 = 0;
          v95 = v168;
          if (v168)
          {
            goto LABEL_118;
          }

          goto LABEL_123;
        }

        if (v92 < 0x29)
        {
          v93 = 0;
          v94 = v92;
        }

        else
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(&__p, v186, v92, 1);
          v93 = __p.__r_.__value_.__l.__size_;
          v94 = v92 - __p.__r_.__value_.__l.__size_;
          if (v92 == __p.__r_.__value_.__l.__size_)
          {
LABEL_117:
            __p.__r_.__value_.__l.__size_ = v92;
            v95 = v168;
            if (v168)
            {
              goto LABEL_118;
            }

            goto LABEL_123;
          }
        }

        bzero((__p.__r_.__value_.__r.__words[0] + v93), v94);
        goto LABEL_117;
      }

      v92 = 0;
      __p.__r_.__value_.__r.__words[0] = v186;
      *&__p.__r_.__value_.__r.__words[1] = xmmword_1E09700D0;
      v95 = v168;
      if (v168)
      {
LABEL_118:
        v96 = 0;
        v97 = v167;
        v98 = 8 * v95;
        do
        {
          if (v96 < [v144 count])
          {
            v99 = [v144 objectAtIndexedSubscript:v96];
            v100 = [v99 BOOLValue];
            *(__p.__r_.__value_.__r.__words[0] + *&v97[8 * v96]) = v100;
          }

          ++v96;
          v98 -= 8;
        }

        while (v98);
        v92 = __p.__r_.__value_.__l.__size_;
      }

LABEL_123:
      v101 = __len;
      if (__len >= v92)
      {
        if (v92)
        {
          memmove(__dst, __p.__r_.__value_.__l.__data_, v92);
        }
      }

      else
      {
        if (*(&__len + 1) >= v92)
        {
          if (__len)
          {
            memmove(__dst, __p.__r_.__value_.__l.__data_, __len);
          }
        }

        else
        {
          *&__len = 0;
          llvm::SmallVectorBase<unsigned long long>::grow_pod(&__dst, v177, v92, 1);
          v101 = 0;
        }

        v91 = __p.__r_.__value_.__l.__size_ - v101;
        if (__p.__r_.__value_.__l.__size_ != v101)
        {
          memcpy(__dst + v101, (__p.__r_.__value_.__r.__words[0] + v101), v91);
        }
      }

      *&__len = v92;
      v102 = [v153 count];
      if (v102 > HIDWORD(v171))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v170, v172, v102, 8);
      }

      v103 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v138, "count", v102)}];
      v104 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v153, "count")}];
      for (m = 0; m < [v153 count]; ++m)
      {
        v106 = [v153 objectAtIndexedSubscript:m];
        v107 = [v106 objectForKeyedSubscript:@"Name"];
        v108 = v107;
        v109 = [v107 UTF8String];
        v111 = v109;
        if (v109)
        {
          v112 = strlen(v109);
        }

        else
        {
          v112 = 0;
        }

        v113 = llvm::StringMapImpl::hash(v111, v112, v110);
        Key = llvm::StringMapImpl::FindKey(&v158, v111, v112, v113);
        v115 = Key;
        if (Key == -1)
        {
          v115 = v159;
        }

        v116 = *(*(v158 + v115) + 8);
        v117 = v171;
        if (v171 >= HIDWORD(v171))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v170, v172, v171 + 1, 8);
          v117 = v171;
        }

        *&v170[8 * v117] = v116;
        LODWORD(v171) = v171 + 1;
        v118 = [v145 objectAtIndexedSubscript:m];
        [v104 addObject:v118];

        if (m >= [v148 count])
        {
          [MEMORY[0x1E696AD98] numberWithBool:0];
        }

        else
        {
          [v148 objectAtIndexedSubscript:m];
        }
        v119 = ;
        [v103 addObject:v119];
      }

      v120 = v174;
      v174 = v104;
      v121 = v104;

      v122 = v178;
      v178 = v103;

      if (__p.__r_.__value_.__l.__data_ != v186)
      {
        free(__p.__r_.__value_.__l.__data_);
      }

      if (HIDWORD(v159) && v159)
      {
        v123 = 0;
        do
        {
          v124 = *(v158 + v123);
          if (v124 != -8 && v124 != 0)
          {
            llvm::deallocate_buffer(v124, (*v124 + 17));
          }

          v123 += 8;
        }

        while (8 * v159 != v123);
      }

      free(v158);

      if (HIDWORD(v163) && v163)
      {
        v126 = 0;
        do
        {
          v127 = *(v162 + v126);
          if (v127 != -8 && v127 != 0)
          {
            llvm::deallocate_buffer(v127, (*v127 + 17));
          }

          v126 += 8;
        }

        while (8 * v163 != v126);
      }

      free(v162);

      __p.__r_.__value_.__r.__words[0] = v135;
      GPU::ANEHelper::ProcedureInfo::ProcedureInfo(&__p.__r_.__value_.__r.__words[1], &v165);
      llvm::DenseMapBase<llvm::DenseMap<mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo>>,mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo>>::try_emplace<GPU::ANEHelper::ProcedureInfo>(&v162, a4 + 32, &__p, &__p.__r_.__value_.__r.__words[1]);
      GPU::ANEHelper::ProcedureInfo::~ProcedureInfo(&__p.__r_.__value_.__r.__words[1]);
      GPU::ANEHelper::ProcedureInfo::~ProcedureInfo(&v165);
      a2 = v134 + 1;
      if (v134 + 1 == v132)
      {
        goto LABEL_172;
      }
    }

    v41 = 0;
LABEL_49:
    v42 = MEMORY[0x1E695DF70];
    goto LABEL_50;
  }

  if (v19)
  {
    v20 = [v19 debugDescription];
    NSLog(&cfstr_Error_3.isa, v20);
  }

  NSLog(&cfstr_AneLoadFailed.isa);
LABEL_173:

  std::mutex::unlock(&GPU::ANEHelper::_intermediateBufferHandleMutex);
  return (v130 ^ 1) & 1;
}

void GPU::ANEHelper::~ANEHelper(GPU::ANEHelper *this)
{
  std::mutex::lock(&GPU::ANEHelper::_intermediateBufferHandleMutex);
  if (_MergedGlobals_68 == 1 && (*(this + 82) & 1) == 0 && *(this + 87) == 1)
  {
    if (!--qword_1EE17DE08)
    {
      _MergedGlobals_68 = 0;
      qword_1EE17DE00 = -1;
    }

    *(this + 87) = 0;
  }

  std::mutex::unlock(&GPU::ANEHelper::_intermediateBufferHandleMutex);
  if (*(this + 36) == 1)
  {
    v2 = *(this + 5);
    if (v2)
    {
      GPU::ANEHelper::unloadModel(v2);
    }
  }

  else if (*(this + 14))
  {
    v3 = *(this + 16);
    if (v3)
    {
      v4 = 16 * v3;
      v5 = *(this + 6);
      while ((*v5 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v5 += 2;
        v4 -= 16;
        if (!v4)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      v5 = *(this + 6);
    }

    v12 = *(this + 6) + 16 * v3;
LABEL_26:
    if (v5 != v12)
    {
      v13 = v5[1];
      if (v13)
      {
        GPU::ANEHelper::unloadModel(v13);
      }

      while (1)
      {
        v5 += 2;
        if (v5 == v12)
        {
          break;
        }

        if ((*v5 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          goto LABEL_26;
        }
      }
    }
  }

LABEL_15:

  v6 = *(this + 16);
  v7 = *(this + 6);
  if (v6)
  {
    v8 = 16 * v6;
    v9 = (v7 + 8);
    do
    {
      if ((*(v9 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v10 = *v9;
        *v9 = 0;
        if (v10)
        {
          std::default_delete<GPU::ANEHelper::CompiledProduct>::operator()[abi:ne200100](v9, v10);
        }
      }

      v9 += 2;
      v8 -= 16;
    }

    while (v8);
    v7 = *(this + 6);
    v11 = (16 * *(this + 16));
  }

  else
  {
    v11 = 0;
  }

  llvm::deallocate_buffer(v7, v11);
}

void GPU::ANEHelper::unloadModel(uint64_t *a1)
{
  if (*(a1 + 29) == 1)
  {
    v1 = *(a1 + 28);
    v3 = a1[1];
    v4 = *a1;
    v5 = a1[2];
    v6 = *(a1 + 6);
    if (v1 == 1)
    {
      v14 = 0;
      v7 = &v14;
      v8 = [v3 unloadRealTimeModel:v4 options:v5 qos:v6 error:&v14];
    }

    else
    {
      v13 = 0;
      v7 = &v13;
      v8 = [v3 unloadModel:v4 options:v5 qos:v6 error:&v13];
    }

    v9 = v8;
    v10 = *v7;
    v11 = v10;
    if ((v9 & 1) == 0)
    {
      if (v10)
      {
        v12 = [v10 debugDescription];
        NSLog(&cfstr_Error_3.isa, v12);
      }
    }
  }
}

mlir::Operation *GPU::ANEHelper::getBaseCompiledProduct(GPU::ANEHelper *this, mlir::Operation *a2)
{
  v17 = a2;
  if (*(this + 36) == 1)
  {
    return *(this + 5);
  }

  v5 = (this + 48);
  v4 = *(this + 6);
  v6 = *(this + 16);
  if (v6)
  {
    v7 = v6 - 1;
    v8 = (v6 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v9 = (v4 + 16 * v8);
    v10 = *v9;
    if (*v9 == a2)
    {
      return v9[1];
    }

    v12 = 0;
    v13 = 1;
    while (v10 != -4096)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v10 == -8192;
      }

      if (v14)
      {
        v12 = v9;
      }

      v15 = v8 + v13++;
      v8 = v15 & v7;
      v9 = (v4 + 16 * (v15 & v7));
      v10 = *v9;
      if (*v9 == a2)
      {
        return v9[1];
      }
    }

    if (v12)
    {
      v9 = v12;
    }
  }

  else
  {
    v9 = 0;
  }

  v18 = v9;
  v11 = *(this + 14);
  if (4 * v11 + 4 >= 3 * v6)
  {
    v16 = this;
    v6 *= 2;
    goto LABEL_26;
  }

  if (v6 + ~v11 - *(this + 15) <= v6 >> 3)
  {
    v16 = this;
LABEL_26:
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>,mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>::grow(this + 48, v6);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>,mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>::LookupBucketFor<mlir::Operation *>(v5, &v17, &v18);
    this = v16;
    v9 = v18;
    ++*(v16 + 14);
    if (*v9 == -4096)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  *(this + 14) = v11 + 1;
  if (*v9 != -4096)
  {
LABEL_10:
    --*(this + 15);
  }

LABEL_11:
  *v9 = v17;
  v9[1] = 0;
  return v9[1];
}

void GPU::ANEHelper::createCompiledProduct(void *a1, uint64_t a2, mlir::Operation **a3)
{
  v67[3] = *MEMORY[0x1E69E9840];
  if (*(a2 + 36))
  {
    v5 = @"bc.mlir";
  }

  else
  {
    v5 = @"plist";
  }

  v53 = v5;
  v61 = *a3;
  Callee = mlir::placement::RegionCall::getCallee(&v61);
  v8 = MEMORY[0x1E696AEC0];
  if (Callee)
  {
    v9 = v6;
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v6 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v60) = v6;
    if (v6)
    {
      memmove(&__dst, Callee, v6);
    }

    *(&__dst + v9) = 0;
    p_dst = &__dst;
    if (v60 < 0)
    {
      p_dst = __dst;
    }
  }

  else
  {
    __dst = 0;
    v59 = 0;
    p_dst = &__dst;
    v60 = 0;
  }

  v56 = [v8 stringWithFormat:@"%s", p_dst];
  if (SHIBYTE(v60) < 0)
  {
    operator delete(__dst);
  }

  v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v56, v53];
  v54 = [*(a2 + 24) stringByAppendingPathComponent:?];
  if (*(a2 + 36) != 1)
  {
    v15 = v61;
    if (!*(v61 + 47) || (v70.var0 = "mps.regionSHA", v70.var1 = 13, InherentAttr = mlir::Operation::getInherentAttr(v61, v70), (v16 & 1) == 0))
    {
      v71.var0 = "mps.regionSHA";
      v71.var1 = 13;
      InherentAttr = mlir::DictionaryAttr::get((v15 + 56), v71);
    }

    if (InherentAttr)
    {
      goto LABEL_21;
    }

LABEL_28:
    v14 = 0;
    goto LABEL_29;
  }

  v11 = *(a2 + 8);
  if (!*(v11 + 47) || (v68.var0 = "mps.aneRegionsSHA", v68.var1 = 17, InherentAttr = mlir::Operation::getInherentAttr(*(a2 + 8), v68), (v13 & 1) == 0))
  {
    v69.var0 = "mps.aneRegionsSHA";
    v69.var1 = 17;
    InherentAttr = mlir::DictionaryAttr::get((v11 + 56), v69);
  }

  if (!InherentAttr)
  {
    goto LABEL_28;
  }

LABEL_21:
  if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v14 = InherentAttr;
  }

  else
  {
    v14 = 0;
  }

LABEL_29:
  __dst = v14;
  AttrData = mlir::OpaqueAttr::getAttrData(&__dst);
  v19 = MEMORY[0x1E696AEC0];
  if (AttrData)
  {
    v20 = v17;
    if (v17 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v17 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v60) = v17;
    if (v17)
    {
      memmove(&__dst, AttrData, v17);
    }

    *(&__dst + v20) = 0;
    v21 = &__dst;
    if (v60 < 0)
    {
      v21 = __dst;
    }
  }

  else
  {
    __dst = 0;
    v59 = 0;
    v21 = &__dst;
    v60 = 0;
  }

  v22 = [v19 stringWithFormat:@"%s", v21];
  if (SHIBYTE(v60) < 0)
  {
    operator delete(__dst);
  }

  WeakRetained = objc_loadWeakRetained(a2);
  v24 = WeakRetained[835];

  v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"compiler_options_%@.plist", v56];
  v51 = [*(a2 + 24) stringByAppendingPathComponent:?];
  if (*(a2 + 85) == 1)
  {
    [MEMORY[0x1E698CD48] sharedPrivateConnection];
  }

  else
  {
    [MEMORY[0x1E698CD48] sharedConnection];
  }
  v25 = ;
  v66[0] = @"NetworkPlistPath";
  v66[1] = @"NetworkPlistName";
  v67[0] = v54;
  v67[1] = v56;
  v66[2] = @"TargetArchitecture";
  v67[2] = *(a2 + 16);
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:v66 count:3];
  v55 = [v26 mutableCopy];

  v27 = GPU::getANECCompilationOptionsFromEV([v55 addEntriesFromDictionary:*(a2 + 72)]);
  [v55 addEntriesFromDictionary:v27];

  v64 = *(a2 + 16);
  v65 = v55;
  v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
  if (([v48 writeToFile:v51 atomically:1] & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v28 = *MEMORY[0x1E698CED8];
  v62[0] = *MEMORY[0x1E698CDE0];
  v62[1] = v28;
  v29 = *MEMORY[0x1E698CE48];
  v63[0] = v50;
  v63[1] = v29;
  v62[2] = *MEMORY[0x1E698CEE0];
  v63[2] = v52;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:3];
  v31 = [v30 mutableCopy];

  v32 = [MEMORY[0x1E696AD98] numberWithBool:(*(a2 + 84) & 1) == 0];
  [v31 setObject:v32 forKeyedSubscript:*MEMORY[0x1E698CE60]];

  v33 = [MEMORY[0x1E696AD98] numberWithBool:(*(a2 + 84) & 1) == 0];
  [v31 setObject:v33 forKeyedSubscript:*MEMORY[0x1E698CEF0]];

  v34 = MEMORY[0x1E698CD78];
  v35 = [MEMORY[0x1E695DFF8] fileURLWithPath:*(a2 + 24)];
  v36 = [v34 modelAtURLWithCacheURLIdentifier:v35 key:v56 cacheURLIdentifier:v22];

  if ((([v25 compiledModelExistsFor:v36] ^ 1 | v24) & 1) == 0 || (v37 = *(a2 + 32), v57 = 0, v38 = objc_msgSend(v25, "compileModel:options:qos:error:", v36, v31, v37, &v57), v39 = v57, v40 = v39, v38) && !v24)
  {
    v45 = [v36 getCacheURLIdentifier];
    [v45 isEqualToString:v22];

    v46 = [v36 getCacheURLIdentifier];
    v47 = [v46 isEqualToString:v22];

    if ((v47 & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    [v25 compiledModelExistsFor:v36];
    if (([v25 compiledModelExistsFor:v36] & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    operator new();
  }

  if (v39)
  {
    v41 = objc_loadWeakRetained(a2);
    v42 = ([v41 options] & 2) == 0;

    if (!v42)
    {
      v43 = v54;
      printf("ANE plist filePath:\n%s\n", [v54 UTF8String]);
    }

    v44 = [v40 debugDescription];
    NSLog(&cfstr_Error_2.isa, v44);
  }

  NSLog(&cfstr_AneCompilation_0.isa);
  *a1 = 0;
}

void GPU::ANEHelper::applyAndLoadModel(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v108 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 36) & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v88 = a1;
  v82 = [**(a1 + 40) getCacheURLIdentifier];
  if (!v82 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v103 = v105;
  v104 = 0x400000000;
  v6 = [MEMORY[0x1E695E0F8] mutableCopy];
  if (*(a2 + 2))
  {
    v7 = *(a2 + 4);
    if (v7)
    {
      v8 = 16 * v7;
      v9 = *a2;
      while ((*v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v9 += 16;
        v8 -= 16;
        if (!v8)
        {
          goto LABEL_78;
        }
      }
    }

    else
    {
      v9 = *a2;
    }

    v10 = *a2 + 16 * v7;
    if (v9 != v10)
    {
      v11 = *(a3 + 4);
      if (v11)
      {
        v76 = v10;
LABEL_13:
        v12 = *a3;
        v13 = HIDWORD(*v9);
        v14 = 0x9DDFEA08EB382D69 * ((8 * *v9 - 0xAE502812AA7333) ^ v13);
        v15 = (-348639895 * ((((0x9DDFEA08EB382D69 * (v13 ^ (v14 >> 47) ^ v14)) >> 32) >> 15) ^ (-348639895 * (v13 ^ (v14 >> 47) ^ v14)))) & (v11 - 1);
        v16 = *(*a3 + 32 * v15);
        if (*v9 != v16)
        {
          v56 = 1;
          do
          {
            if (v16 == -4096)
            {
              goto LABEL_71;
            }

            v57 = v15 + v56++;
            v15 = v57 & (v11 - 1);
            v16 = *(v12 + 32 * v15);
          }

          while (*v9 != v16);
        }

        if (v15 == v11)
        {
          goto LABEL_71;
        }

        v17 = v12 + 32 * v15;
        if (!*(v17 + 16))
        {
          goto LABEL_71;
        }

        v18 = *(v17 + 8);
        v19 = *(v17 + 24);
        if (v19)
        {
          v20 = 32 * v19;
          v21 = v18;
          while ((*v21 | 0x1000) == 0xFFFFFFFFFFFFF000)
          {
            v21 += 4;
            v20 -= 32;
            if (!v20)
            {
              goto LABEL_71;
            }
          }
        }

        else
        {
          v21 = v18;
        }

        v78 = &v18[4 * v19];
        while (v21 != v78)
        {
          v98 = *v21;
          v85 = [MEMORY[0x1E695E0F0] mutableCopy];
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          obj = *(v9 + 8);
          v22 = [obj countByEnumeratingWithState:&v94 objects:v102 count:16];
          if (v22)
          {
            v23 = *v95;
            do
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v95 != v23)
                {
                  objc_enumerationMutation(obj);
                }

                v25 = *(*(&v94 + 1) + 8 * i);
                v26 = v25;
                v27 = [v25 UTF8String];
                v29 = v27;
                if (v27)
                {
                  v30 = strlen(v27);
                }

                else
                {
                  v30 = 0;
                }

                v31 = llvm::StringMapImpl::hash(v29, v30, v28);
                if (llvm::StringMapImpl::FindKey(v21 + 1, v29, v30, v31) != -1)
                {
                  v32 = MEMORY[0x1E698CDC0];
                  v33 = MEMORY[0x1E695DFF8];
                  v34 = [*(v9 + 8) objectForKeyedSubscript:v25];
                  v35 = [v33 fileURLWithPath:v34];
                  v36 = [v32 weightWithSymbolAndURL:v25 weightURL:v35];

                  [v85 addObject:v36];
                }
              }

              v22 = [obj countByEnumeratingWithState:&v94 objects:v102 count:16];
            }

            while (v22);
          }

          if (![v85 count])
          {
            goto LABEL_60;
          }

          v37 = MEMORY[0x1E696AEC0];
          Callee = mlir::placement::RegionCall::getCallee(&v98);
          if (Callee)
          {
            v40 = v38;
            if (v38 >= 0x7FFFFFFFFFFFFFF8)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v38 >= 0x17)
            {
              operator new();
            }

            HIBYTE(v107) = v38;
            if (v38)
            {
              memmove(__dst, Callee, v38);
            }

            *(__dst + v40) = 0;
            if (v107 >= 0)
            {
              v41 = __dst;
            }

            else
            {
              v41 = __dst[0];
            }
          }

          else
          {
            __dst[1] = 0;
            __dst[0] = 0;
            v41 = __dst;
            v107 = 0;
          }

          v42 = [v37 stringWithUTF8String:v41];
          if (SHIBYTE(v107) < 0)
          {
            operator delete(__dst[0]);
          }

          v43 = [MEMORY[0x1E698CD90] procedureDataWithSymbol:v42 weightArray:v85];
          v44 = *(v88 + 40);
          v45 = *(v44 + 32);
          v46 = *(v44 + 48);
          if (v46)
          {
            v47 = 0x9DDFEA08EB382D69 * ((8 * v98 - 0xAE502812AA7333) ^ HIDWORD(v98));
            v48 = 0x9DDFEA08EB382D69 * (HIDWORD(v98) ^ (v47 >> 47) ^ v47);
            v49 = (-348639895 * ((v48 >> 47) ^ v48)) & (v46 - 1);
            v50 = (v45 + 352 * v49);
            v51 = *v50;
            if (*v50 == v98)
            {
              goto LABEL_56;
            }

            v52 = 1;
            while (v51 != -4096)
            {
              v53 = v49 + v52++;
              v49 = v53 & (v46 - 1);
              v50 = (v45 + 352 * v49);
              v51 = *v50;
              if (*v50 == v98)
              {
                goto LABEL_56;
              }
            }
          }

          v50 = (v45 + 352 * v46);
LABEL_56:
          if (v50 == (v45 + 352 * v46) && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          [v6 setObject:v43 forKeyedSubscript:v50[2]];
          v54 = v98;
          v55 = v104;
          if (v104 >= HIDWORD(v104))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v105, v104 + 1, 8);
            v55 = v104;
          }

          *(v103 + v55) = v54;
          LODWORD(v104) = v104 + 1;

LABEL_60:
          do
          {
            v21 += 4;
            if (v21 == v78)
            {
              goto LABEL_71;
            }
          }

          while ((*v21 | 0x1000) == 0xFFFFFFFFFFFFF000);
        }

LABEL_71:
        while (1)
        {
          v9 += 16;
          if (v9 == v76)
          {
            break;
          }

          while ((*v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
          {
            v9 += 16;
            if (v9 == v76)
            {
              goto LABEL_78;
            }
          }

          if (v9 == v76)
          {
            break;
          }

          v11 = *(a3 + 4);
          if (v11)
          {
            goto LABEL_13;
          }
        }
      }
    }
  }

LABEL_78:
  if ([v6 count])
  {
    obja = [MEMORY[0x1E696AEC0] stringWithFormat:@"Adapting ANE model."];
    v58 = [v6 allKeys];
    v77 = [v58 sortedArrayUsingSelector:sel_compare_];

    v59 = [MEMORY[0x1E695E0F0] mutableCopy];
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v60 = v77;
    v61 = [v60 countByEnumeratingWithState:&v90 objects:v101 count:16];
    if (v61)
    {
      v62 = *v91;
      do
      {
        for (j = 0; j != v61; ++j)
        {
          if (*v91 != v62)
          {
            objc_enumerationMutation(v60);
          }

          v64 = [v6 objectForKey:*(*(&v90 + 1) + 8 * j)];
          [v59 addObject:v64];
        }

        v61 = [v60 countByEnumeratingWithState:&v90 objects:v101 count:16];
      }

      while (v61);
    }

    v79 = [MEMORY[0x1E698CD80] withProcedureData:obja procedureArray:v59];
    v65 = *MEMORY[0x1E698CED8];
    v99[0] = *MEMORY[0x1E698CDD0];
    v99[1] = v65;
    v66 = *MEMORY[0x1E698CEB0];
    v100[0] = v82;
    v100[1] = v66;
    v86 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v100 forKeys:v99 count:2];
    v67 = [MEMORY[0x1E696AFB0] UUID];
    v81 = [v67 UUIDString];

    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", v82, v81];
    objc_claimAutoreleasedReturnValue();
    v68 = [MEMORY[0x1E698CD78] modelWithCacheURLIdentifier:?];
    v69 = *(*(v88 + 40) + 8);
    v70 = *(v88 + 32);
    v89 = 0;
    v71 = [v69 loadModelNewInstance:v68 options:v86 modelInstParams:v79 qos:v70 error:&v89];
    v72 = v89;
    if ((v71 & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      if (v72)
      {
        v71 = [v72 localizedDescription];
        v73 = v71;
        v74 = [v71 UTF8String];
      }

      else
      {
        v74 = "unknown error";
      }

      v75 = v74;
      MTLReportFailure();
      if (v72)
      {
      }
    }

    [v86 mutableCopy];
    operator new();
  }

  *a4 = 0;

  if (v103 != v105)
  {
    free(v103);
  }
}

void sub_1E07F4B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, void *a18, void *a19, void *a20)
{
  if (STACK[0x3A0] != a17)
  {
    free(STACK[0x3A0]);
  }

  _Unwind_Resume(a1);
}

id GPU::getProcedureIndex(mlir::Operation *a1, void *a2)
{
  v17 = a1;
  v2 = a2;
  v3 = [v2 modelAttributes];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E698CE58]];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E698CEC0]];

  v6 = MEMORY[0x1E696AEC0];
  Callee = mlir::placement::RegionCall::getCallee(&v17);
  if (Callee)
  {
    v9 = v7;
    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v7 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v16) = v7;
    if (v7)
    {
      memmove(&__p, Callee, v7);
    }

    *(&__p + v9) = 0;
    if (v16 >= 0)
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
    v15 = 0;
    p_p = &__p;
    v16 = 0;
  }

  v11 = [v6 stringWithUTF8String:{p_p, __p, v15, v16, v17}];
  v12 = [v5 objectForKeyedSubscript:v11];

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }

  if (!v12 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return v12;
}

uint64_t GPU::ANEHelper::aneStreamingSessionSignal(GPU::ANEHelper *this, MPSGraphAneSessionDescriptor *a2, uint64_t **a3, NSMutableDictionary *a4)
{
  v44[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if (*(this + 36))
  {
    v9 = [MEMORY[0x1E695E0F8] mutableCopy];
    v10 = [(MPSGraphAneSessionDescriptor *)v7 aneSessionSignal];
    if (v10 > 2)
    {
      if (v10 == 3)
      {
        v11 = MEMORY[0x1E698CE18];
        goto LABEL_17;
      }

      if (v10 == 4)
      {
        v11 = MEMORY[0x1E698CE20];
        goto LABEL_17;
      }
    }

    else
    {
      if (v10 == 1)
      {
        v13 = *MEMORY[0x1E698CE28];
        v43 = *MEMORY[0x1E698CE00];
        v14 = [(MPSGraphAneSessionDescriptor *)v7 energyEffecientWorkload];
        v15 = MEMORY[0x1E695E110];
        if (v14)
        {
          v15 = MEMORY[0x1E695E118];
        }

        v44[0] = v15;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
        goto LABEL_18;
      }

      if (v10 == 2)
      {
        v11 = MEMORY[0x1E698CE30];
LABEL_17:
        v13 = *v11;
        v16 = 0;
LABEL_18:
        v17 = *(*(this + 5) + 8);
        v18 = **a3;
        v42 = 0;
        v12 = [v17 sessionHintWithModel:v18 hint:v13 options:v16 report:v9 error:&v42];
        v19 = v42;
        v20 = v19;
        if (v19)
        {
          v21 = v12;
        }

        else
        {
          v21 = 1;
        }

        if ((v21 & 1) == 0)
        {
          v22 = [v19 debugDescription];
          NSLog(&cfstr_AneSessionHint_0.isa, v22);
        }

        if (v8)
        {
          if ([(NSMutableDictionary *)v8 count])
          {
            if (v13 == *MEMORY[0x1E698CE28])
            {
              v23 = MEMORY[0x1E698CE10];
              v24 = [v9 objectForKey:*MEMORY[0x1E698CE10]];
              v25 = v24 == 0;

              if (!v25)
              {
                v40 = [v9 objectForKeyedSubscript:*v23];
                v26 = [(NSMutableDictionary *)v8 objectForKey:*v23];
                v27 = v26;
                v28 = &unk_1F5B759C8;
                if (v26)
                {
                  v28 = v26;
                }

                v29 = v28;

                v30 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v40, "unsignedLongLongValue") + objc_msgSend(v29, "unsignedLongLongValue")}];
                [(NSMutableDictionary *)v8 setObject:v30 forKeyedSubscript:*MEMORY[0x1E698CE10]];
              }

              v31 = MEMORY[0x1E698CE08];
              v32 = [v9 objectForKey:*MEMORY[0x1E698CE08]];
              v33 = v32 == 0;

              if (!v33)
              {
                v41 = [v9 objectForKeyedSubscript:*v31];
                v34 = [(NSMutableDictionary *)v8 objectForKey:*v31];
                v35 = v34;
                v36 = &unk_1F5B759C8;
                if (v34)
                {
                  v36 = v34;
                }

                v37 = v36;

                v38 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v41, "unsignedLongLongValue") + objc_msgSend(v37, "unsignedLongLongValue")}];
                [(NSMutableDictionary *)v8 setObject:v38 forKeyedSubscript:*MEMORY[0x1E698CE08]];
              }
            }
          }

          else
          {
            [(NSMutableDictionary *)v8 addEntriesFromDictionary:v9];
          }
        }

LABEL_36:
        goto LABEL_37;
      }
    }

    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v12 = 0;
    goto LABEL_36;
  }

  NSLog(&cfstr_AneSessionHint.isa);
  v12 = 0;
LABEL_37:

  return v12;
}

void ___ZN3GPUL31getANECCompilationOptionsFromEVEv_block_invoke()
{
  if (getenv("MPS_GRAPH_ENABLE_ANE_OPT_KERNEL_COALESCING"))
  {
    NSLog(&cfstr_MpsGraphEnable_4.isa);
    byte_1EE17DDF6 = 1;
  }

  if (getenv("MPS_GRAPH_ENABLE_ANE_AGGRESSIVE_NET_TRANSPOSE_FUSION"))
  {
    NSLog(&cfstr_MpsGraphEnable_6.isa);
    byte_1EE17DDF7 = 1;
  }

  v0 = getenv("MPS_GRAPH_SET_ANE_BSS_LIMIT");
  if (v0)
  {
    qword_1EE17DE20 = atoll(v0);
    NSLog(&cfstr_MpsGraphSetAne_0.isa, qword_1EE17DE20);
    byte_1EE17DDF8 = 1;
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo>>,mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo>>::try_emplace<GPU::ANEHelper::ProcedureInfo>(uint64_t result, uint64_t a2, unint64_t *a3, __int128 *a4)
{
  v5 = result;
  v6 = *(a2 + 16);
  if (!v6)
  {
    v11 = 0;
    goto LABEL_5;
  }

  v7 = *a2;
  v8 = HIDWORD(*a3);
  v9 = 0x9DDFEA08EB382D69 * ((8 * *a3 - 0xAE502812AA7333) ^ v8);
  v10 = (-348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9)))) & (v6 - 1);
  v11 = (*a2 + 352 * v10);
  v12 = *v11;
  if (*a3 != *v11)
  {
    v15 = 0;
    v16 = 1;
    while (v12 != -4096)
    {
      if (v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = v12 == -8192;
      }

      if (v17)
      {
        v15 = v11;
      }

      v18 = v10 + v16++;
      v10 = v18 & (v6 - 1);
      v11 = (v7 + 352 * v10);
      v12 = *v11;
      if (*a3 == *v11)
      {
        goto LABEL_3;
      }
    }

    if (v15)
    {
      v11 = v15;
    }

LABEL_5:
    v21 = v11;
    v14 = *(a2 + 8);
    if (4 * v14 + 4 >= 3 * v6)
    {
      v6 *= 2;
    }

    else if (v6 + ~v14 - *(a2 + 12) > v6 >> 3)
    {
      *(a2 + 8) = v14 + 1;
      if (*v11 == -4096)
      {
LABEL_9:
        *v11 = *a3;
        result = GPU::ANEHelper::ProcedureInfo::ProcedureInfo((v11 + 1), a4);
        v7 = *a2;
        v6 = *(a2 + 16);
        v13 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(a2 + 12);
      goto LABEL_9;
    }

    v19 = a4;
    v20 = a3;
    llvm::DenseMapBase<llvm::DenseMap<mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo>>,mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo>>::grow(a2, v6);
    llvm::DenseMapBase<llvm::DenseMap<mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo>>,mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo>>::LookupBucketFor<mlir::placement::RegionCall>(*a2, *(a2 + 16), *v20, &v21);
    a3 = v20;
    a4 = v19;
    v11 = v21;
    ++*(a2 + 8);
    if (*v11 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v13 = 0;
LABEL_10:
  *v5 = v11;
  *(v5 + 8) = v7 + 352 * v6;
  *(v5 + 16) = v13;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo>>,mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo>>::LookupBucketFor<mlir::placement::RegionCall>(uint64_t result, int a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4);
    v6 = a2 - 1;
    v7 = (-348639895 * ((v5 >> 47) ^ v5)) & (a2 - 1);
    v8 = (result + 352 * v7);
    v9 = *v8;
    if (*v8 == a3)
    {
LABEL_3:
      *a4 = v8;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v9 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v9 == -8192;
        }

        if (v12)
        {
          v10 = v8;
        }

        v13 = v7 + v11++;
        v7 = v13 & v6;
        v8 = (result + 352 * (v13 & v6));
        v9 = *v8;
        if (*v8 == a3)
        {
          goto LABEL_3;
        }
      }

      if (v10)
      {
        v8 = v10;
      }

      *a4 = v8;
    }
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo>>,mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer(352 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = 352 * v10 - 352;
    if (v11 >= 0x160)
    {
      v16 = v11 / 0x160 + 1;
      v12 = &result[44 * (v16 & 0x1FFFFFFFFFFFFFELL)];
      v17 = result;
      v18 = v16 & 0x1FFFFFFFFFFFFFELL;
      do
      {
        *v17 = -4096;
        v17[44] = -4096;
        v17 += 88;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0x1FFFFFFFFFFFFFELL))
      {
LABEL_16:
        if (v3)
        {
          v20 = v4;
          do
          {
            v26 = *v20;
            if ((*v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              v27 = 0x9DDFEA08EB382D69 * ((8 * *v20 - 0xAE502812AA7333) ^ HIDWORD(*v20));
              v28 = 0x9DDFEA08EB382D69 * (HIDWORD(v26) ^ (v27 >> 47) ^ v27);
              v29 = *(a1 + 16) - 1;
              v30 = v29 & (-348639895 * ((v28 >> 47) ^ v28));
              v25 = (*a1 + 352 * v30);
              v31 = *v25;
              if (v26 != *v25)
              {
                v32 = 0;
                v33 = 1;
                while (v31 != -4096)
                {
                  if (v32)
                  {
                    v34 = 0;
                  }

                  else
                  {
                    v34 = v31 == -8192;
                  }

                  if (v34)
                  {
                    v32 = v25;
                  }

                  v35 = v30 + v33++;
                  v30 = v35 & v29;
                  v25 = (*a1 + 352 * v30);
                  v31 = *v25;
                  if (v26 == *v25)
                  {
                    goto LABEL_26;
                  }
                }

                if (v32)
                {
                  v25 = v32;
                }
              }

LABEL_26:
              *v25 = v26;
              GPU::ANEHelper::ProcedureInfo::ProcedureInfo((v25 + 1), (v20 + 8));
              ++*(a1 + 8);
              GPU::ANEHelper::ProcedureInfo::~ProcedureInfo((v20 + 8));
            }

            v20 = (v20 + 352);
          }

          while (v20 != (v4 + 352 * v3));
        }

        llvm::deallocate_buffer(v4, (352 * v3));
      }
    }

    else
    {
      v12 = result;
    }

    v19 = &result[44 * v10];
    do
    {
      *v12 = -4096;
      v12 += 44;
    }

    while (v12 != v19);
    goto LABEL_16;
  }

  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 352 * v13 - 352;
    if (v14 < 0x160)
    {
      v15 = result;
LABEL_21:
      v24 = &result[44 * v13];
      do
      {
        *v15 = -4096;
        v15 += 44;
      }

      while (v15 != v24);
      return result;
    }

    v21 = v14 / 0x160 + 1;
    v15 = &result[44 * (v21 & 0x1FFFFFFFFFFFFFELL)];
    v22 = result;
    v23 = v21 & 0x1FFFFFFFFFFFFFELL;
    do
    {
      *v22 = -4096;
      v22[44] = -4096;
      v22 += 88;
      v23 -= 2;
    }

    while (v23);
    if (v21 != (v21 & 0x1FFFFFFFFFFFFFELL))
    {
      goto LABEL_21;
    }
  }

  return result;
}

uint64_t GPU::ANEHelper::ProcedureInfo::ProcedureInfo(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a2 + 1) = 0;
  *a1 = v4;
  *(a1 + 16) = a1 + 32;
  *(a1 + 24) = 0x400000000;
  if (*(a2 + 6))
  {
    llvm::SmallVectorImpl<unsigned long long>::operator=(a1 + 16, a2 + 2);
  }

  *(a1 + 64) = a1 + 80;
  *(a1 + 72) = 0x400000000;
  if (*(a2 + 18))
  {
    llvm::SmallVectorImpl<unsigned long long>::operator=(a1 + 64, a2 + 8);
  }

  v5 = a2[7];
  *(a2 + 14) = 0;
  *(a2 + 15) = 0;
  *(a1 + 128) = a1 + 152;
  *(a1 + 112) = v5;
  *(a1 + 136) = xmmword_1E09700D0;
  v7 = a2 + 17;
  v6 = *(a2 + 17);
  if (v6 && a1 != a2)
  {
    v8 = *(a2 + 16);
    if (v8 == (a2 + 152))
    {
      v9 = *(a2 + 17);
      if (v6 < 0x29 || (*(a1 + 136) = 0, llvm::SmallVectorBase<unsigned long long>::grow_pod(a1 + 128, (a1 + 152), v6, 1), (v9 = *v7) != 0))
      {
        memcpy(*(a1 + 128), *(a2 + 16), v9);
      }

      *(a1 + 136) = v6;
    }

    else
    {
      *(a1 + 128) = v8;
      *(a1 + 136) = v6;
      *(a1 + 144) = *(a2 + 18);
      *(a2 + 16) = a2 + 152;
      *(a2 + 18) = 0;
    }

    *v7 = 0;
  }

  v10 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 200) = a1 + 216;
  *(a1 + 192) = v10;
  *(a1 + 208) = 0x400000000;
  if (*(a2 + 52))
  {
    llvm::SmallVectorImpl<unsigned long long>::operator=(a1 + 200, a2 + 25);
  }

  v11 = a1 + 256;
  v12 = *(a2 + 32);
  *(a1 + 248) = *(a2 + 31);
  *(a1 + 256) = v12;
  v13 = *(a2 + 33);
  *(a1 + 264) = v13;
  if (!v13)
  {
    *(a1 + 248) = v11;
    *(a1 + 272) = a1 + 288;
    *(a1 + 280) = 0x400000000;
    if (!*(a2 + 70))
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  *(v12 + 16) = v11;
  *(a2 + 31) = a2 + 16;
  *(a2 + 32) = 0;
  *(a2 + 33) = 0;
  *(a1 + 272) = a1 + 288;
  *(a1 + 280) = 0x400000000;
  if (*(a2 + 70))
  {
LABEL_20:
    llvm::SmallVectorImpl<unsigned long long>::operator=(a1 + 272, a2 + 34);
  }

LABEL_21:
  v14 = a1 + 328;
  v15 = *(a2 + 41);
  *(a1 + 320) = *(a2 + 40);
  *(a1 + 328) = v15;
  v16 = *(a2 + 42);
  *(a1 + 336) = v16;
  if (v16)
  {
    *(v15 + 16) = v14;
    *(a2 + 40) = a2 + 328;
    *(a2 + 41) = 0;
    *(a2 + 42) = 0;
  }

  else
  {
    *(a1 + 320) = v14;
  }

  return a1;
}

void sub_1E07F5CD0(_Unwind_Exception *a1)
{
  if (*v4 != v3)
  {
    free(*v4);
  }

  v8 = *(v1 + 64);
  if (v8 == v6)
  {
    v9 = *v2;
    if (*v2 == v5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    free(v8);
    v9 = *v2;
    if (*v2 == v5)
    {
LABEL_5:

      _Unwind_Resume(a1);
    }
  }

  free(v9);

  _Unwind_Resume(a1);
}

uint64_t llvm::StringMap<unsigned long long,llvm::MallocAllocator>::~StringMap(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      do
      {
        v4 = *(*a1 + v3);
        if (v4 != -8 && v4 != 0)
        {
          llvm::deallocate_buffer(v4, (*v4 + 17));
        }

        v3 += 8;
      }

      while (8 * v2 != v3);
    }
  }

  free(*a1);
  return a1;
}

void llvm::SmallSet<unsigned long long,4u,std::less<unsigned long long>>::insertImpl<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  if (*(a2 + 64))
  {
    v6 = *(a2 + 56);
    if (!v6)
    {
LABEL_14:
      operator new();
    }

    v7 = *a3;
    while (1)
    {
      while (1)
      {
        v8 = v6;
        v9 = v6[4];
        if (v7 >= v9)
        {
          break;
        }

        v6 = *v8;
        if (!*v8)
        {
          goto LABEL_14;
        }
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = v8[1];
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    v15 = 0;
    v16 = 0;
  }

  else
  {
    v10 = *a2;
    v11 = *(a2 + 8);
    v12 = *a3;
    if (!v11)
    {
      goto LABEL_19;
    }

    v13 = 8 * v11;
    v14 = 8 * v11;
    v8 = *a2;
    while (*v8 != v12)
    {
      ++v8;
      v14 -= 8;
      if (!v14)
      {
        goto LABEL_18;
      }
    }

    if (v14)
    {
      v16 = 0;
      v15 = 1;
      goto LABEL_23;
    }

LABEL_18:
    if (v11 > 3)
    {
      do
      {
        if (!*std::__tree<unsigned long long>::__find_equal<unsigned long long>((a2 + 48), (a2 + 56), &v22, &v21, v10))
        {
          operator new();
        }

        ++v10;
        v13 -= 8;
      }

      while (v13);
      *(a2 + 8) = 0;
      v18 = *(a2 + 56);
      if (!v18)
      {
LABEL_34:
        operator new();
      }

      v19 = *a3;
      while (1)
      {
        while (1)
        {
          v8 = v18;
          v20 = v18[4];
          if (v19 >= v20)
          {
            break;
          }

          v18 = *v8;
          if (!*v8)
          {
            goto LABEL_34;
          }
        }

        if (v20 >= v19)
        {
          break;
        }

        v18 = v8[1];
        if (!v18)
        {
          goto LABEL_34;
        }
      }

      v15 = 0;
    }

    else
    {
LABEL_19:
      if (v11 >= *(a2 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v11 + 1, 8);
        v11 = *(a2 + 8);
        v10 = *a2;
      }

      v10[v11] = v12;
      v17 = *(a2 + 8) + 1;
      *(a2 + 8) = v17;
      v8 = (*a2 + 8 * v17 - 8);
      v15 = 1;
    }

    v16 = 1;
  }

LABEL_23:
  *(a1 + 8) = v15;
  *a1 = v8;
  *(a1 + 16) = v16;
}

void llvm::DenseMap<mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo>>::~DenseMap(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *a1;
  if (v2)
  {
    v4 = 352 * v2;
    v5 = (v3 + 8);
    do
    {
      if ((*(v5 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        GPU::ANEHelper::ProcedureInfo::~ProcedureInfo(v5);
      }

      v5 = (v5 + 352);
      v4 -= 352;
    }

    while (v4);
    v3 = *a1;
    v6 = 352 * *(a1 + 16);
  }

  else
  {
    v6 = 0;
  }

  llvm::deallocate_buffer(v3, v6);
}

void llvm::DenseMap<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>::~DenseMap(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *a1;
  if (v2)
  {
    v4 = 16 * v2;
    v5 = (v3 + 8);
    do
    {
      if ((*(v5 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v6 = *v5;
        *v5 = 0;
        if (v6)
        {
          std::default_delete<GPU::ANEHelper::CompiledProduct>::operator()[abi:ne200100](v5, v6);
        }
      }

      v5 += 2;
      v4 -= 16;
    }

    while (v4);
    v3 = *a1;
    v7 = (16 * *(a1 + 16));
  }

  else
  {
    v7 = 0;
  }

  llvm::deallocate_buffer(v3, v7);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>,mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>::LookupBucketFor<mlir::Operation *>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 16 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 0;
LABEL_5:
    *a3 = v7;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>,mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer(16 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = (16 * v3);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>,mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>::moveFromOldBuckets(a1, v4, &v10[v4]);

    llvm::deallocate_buffer(v4, v10);
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (v11 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = v12 + 1;
      v14 = (v12 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v15 = &result[2 * v14];
      v16 = result + 2;
      v17 = v14;
      do
      {
        *(v16 - 2) = -4096;
        *v16 = -4096;
        v16 += 4;
        v17 -= 2;
      }

      while (v17);
      if (v13 == v14)
      {
        return result;
      }
    }

    else
    {
      v15 = result;
    }

    v18 = &result[2 * v11];
    do
    {
      *v15 = -4096;
      v15 += 2;
    }

    while (v15 != v18);
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>,mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = (v6 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v8)
    {
      v9 = v8 + 1;
      v10 = (v8 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v11 = &v7[2 * v10];
      v12 = v7 + 2;
      v13 = v10;
      do
      {
        *(v12 - 2) = -4096;
        *v12 = -4096;
        v12 += 4;
        v13 -= 2;
      }

      while (v13);
      if (v9 == v10)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = *a1;
    }

    v14 = &v7[2 * v6];
    do
    {
      *v11 = -4096;
      v11 += 2;
    }

    while (v11 != v14);
  }

LABEL_10:
  if (a2 != a3)
  {
    do
    {
      v15 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v16 = *(a1 + 16) - 1;
        v17 = v16 & ((v15 >> 4) ^ (v15 >> 9));
        v18 = (*a1 + 16 * v17);
        v19 = *v18;
        if (v15 != *v18)
        {
          v22 = 0;
          v23 = 1;
          while (v19 != -4096)
          {
            if (v22)
            {
              v24 = 0;
            }

            else
            {
              v24 = v19 == -8192;
            }

            if (v24)
            {
              v22 = v18;
            }

            v25 = v17 + v23++;
            v17 = v25 & v16;
            v18 = (*a1 + 16 * (v25 & v16));
            v19 = *v18;
            if (v15 == *v18)
            {
              goto LABEL_15;
            }
          }

          if (v22)
          {
            v18 = v22;
          }
        }

LABEL_15:
        v20 = v4[1];
        v4[1] = 0;
        *v18 = v15;
        v18[1] = v20;
        ++*(a1 + 8);
        v21 = v4[1];
        v4[1] = 0;
        if (v21)
        {
          std::default_delete<GPU::ANEHelper::CompiledProduct>::operator()[abi:ne200100]((v4 + 1), v21);
        }
      }

      v4 += 2;
    }

    while (v4 != a3);
  }
}

void _GLOBAL__sub_I_MPSGraphANEUtils_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(MEMORY[0x1E69E5328], &GPU::ANEHelper::_intermediateBufferHandleMutex, &dword_1DF9BF000);

  objc_autoreleasePoolPop(v0);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1E07F7448(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1E07F767C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void GPU::SampleGridOpHandler::_createNDArrayMultiaryKernel(GPU::SampleGridOpHandler *this)
{
  v15 = *(this + 3);
  v2 = objc_alloc(MEMORY[0x1E6974730]);
  v3 = [*(*(this + 2) + 48) metalDevice];
  v4 = [v2 initWithDevice:v3];

  [v4 setNormalizeCoordinates:mlir::mps::GRUOp::getResetAfter(&v15)];
  [v4 setRelativeCoordinates:mlir::mps::GRUOp::getTraining(&v15)];
  [v4 setAlignCorners:mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v15)];
  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v15);
  if (PaddingStyle >= 4)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v6 = 0;
  }

  else
  {
    v6 = *(&xmmword_1E097BCB0 + PaddingStyle);
  }

  [v4 setPaddingMode:{v6, v15}];
  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v15);
  if (WeightsLayout >= 2)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    WeightsLayout = 0;
  }

  [v4 setSamplingMode:WeightsLayout];
  v18 = 0;
  v19 = 0;
  v8 = *(*(v15 + 72) + 88);
  v17 = &v18;
  v16[0] = v8;
  DefiningOp = mlir::Value::getDefiningOp(v16);
  if (!DefiningOp || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v17, DefiningOp))
  {
    v11 = 0;
    goto LABEL_21;
  }

  mlir::mps::CPUNDArray::CPUNDArray(v16, v18, v19);
  if (!mlir::mps::CPUNDArray::isFloatType(v16))
  {
    if (mlir::mps::CPUNDArray::isIntegerType(v16))
    {
      SplatIntegerValue = mlir::mps::CPUNDArray::getSplatIntegerValue(v16);
      if (SplatIntegerValue)
      {
        v10 = [MEMORY[0x1E696AD98] numberWithLongLong:SplatIntegerValue];
        goto LABEL_20;
      }
    }

LABEL_19:
    v10 = 0;
    goto LABEL_20;
  }

  if (mlir::mps::CPUNDArray::getSplatFloatValue(v16) == 0.0)
  {
    goto LABEL_19;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithFloat:?];
LABEL_20:
  v11 = v10;
  mlir::mps::CPUNDArray::~CPUNDArray(v16);

LABEL_21:
  [v11 doubleValue];
  [v4 setConstantValue:?];

  Layout = mlir::mps::SampleGridOp::getLayout(&v15);
  if (Layout >= 2)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    Layout = 1;
  }

  [v4 setDataFormat:Layout];
  if ((mlir::mps::SampleGridOp::getNearestRoundingMode(&v15) & 0x100000000) != 0)
  {
    NearestRoundingMode = mlir::mps::SampleGridOp::getNearestRoundingMode(&v15);
    if (NearestRoundingMode < 6)
    {
      goto LABEL_28;
    }

    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  NearestRoundingMode = 0;
LABEL_28:
  [v4 setNearestMode:NearestRoundingMode];
  objc_storeStrong(this + 1, v4);
  [*(this + 1) setOptions:{objc_msgSend(*(this + 1), "options") | 1}];
}

void sub_1E07F7DBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlir::mps::CPUNDArray::~CPUNDArray(va);

  _Unwind_Resume(a1);
}

void sub_1E07F7DD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlir::mps::CPUNDArray::~CPUNDArray(va);

  _Unwind_Resume(a1);
}

void sub_1E07F7DEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlir::mps::CPUNDArray::~CPUNDArray(va);

  _Unwind_Resume(a1);
}

GPU::SampleGridDataGradientOpHandler *GPU::SampleGridDataGradientOpHandler::SampleGridDataGradientOpHandler(GPU::SampleGridDataGradientOpHandler *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v5 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v5 = &unk_1F5B50850;
  v14 = *(v5 + 3);
  v6 = objc_alloc(MEMORY[0x1E6974730]);
  v7 = [*(*(this + 2) + 48) metalDevice];
  v8 = [v6 initWithDevice:v7];

  [v8 setNormalizeCoordinates:mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v14)];
  [v8 setRelativeCoordinates:mlir::mps::CostVolumeOp::getNormalizeCoordinates(&v14)];
  Layout = mlir::mps::SampleGridOp::getLayout(&v14);
  if (Layout >= 4)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v10 = 0;
  }

  else
  {
    v10 = *(&xmmword_1E097BCB0 + Layout);
  }

  [v8 setPaddingMode:v10];
  PaddingStyle = mlir::mps::DepthwiseConv2DDataGradientOp::getPaddingStyle(&v14);
  if (PaddingStyle >= 2)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    PaddingStyle = 0;
  }

  [v8 setSamplingMode:PaddingStyle];
  v12 = *(this + 1);
  *(this + 1) = v8;

  return this;
}

void sub_1E07F7FCC(_Unwind_Exception *a1)
{
  v3 = v2;

  GPU::BaseOpHandler::~BaseOpHandler(v1);
  _Unwind_Resume(a1);
}

void GPU::SampleGridDataGradientOpHandler::encodeNDArrayOp(GPU::SampleGridDataGradientOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v27[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(*(this + 3) + 72);
  v7 = *(v6 + 24);
  v8 = *(v6 + 56);
  v23 = v5;
  v24 = [(NSArray *)v5 objectAtIndexedSubscript:0];
  v9 = [v24 mpsndarray];
  v10 = (*(**(this + 2) + 48))(*(this + 2), v7, 0);
  v11 = [v10 mpsndarray];

  v12 = (*(**(this + 2) + 48))(*(this + 2), v8, 0);
  v13 = [v12 mpsndarray];

  if (!v9 || (v11 ? (v14 = v13 == 0) : (v14 = 1), v14))
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v15 = *(this + 1);
  v27[0] = v9;
  v27[1] = v13;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v17 = [v15 resultStateForSourceArrays:v16 sourceStates:0 destinationArray:v9];

  if (*(v9 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v9 setReadCount:{objc_msgSend(v9, "readCount") + 1}];
  }

  v18 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v19 = *(a2 + 1);
  v26[0] = v9;
  v26[1] = v13;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v25[0] = v9;
  v21 = [MEMORY[0x1E695DFB0] null];
  v25[1] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  [v15 encodeGradientsToCommandEncoder:v18 commandBuffer:v19 sourceArrays:v20 sourceGradient:v11 gradientState:v17 destinationGradients:v22 kernelDAGObject:0];
}

unint64_t GPU::SampleGridDataGradientOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 2)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 2u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

void GPU::SampleGridDataGradientOpHandler::~SampleGridDataGradientOpHandler(GPU::SampleGridDataGradientOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MultiaryKernelOpHandler<GPU::SampleGridOpHandler,mlir::mps::SampleGridOp,MPSNDArrayGridSample,2ul>::encodeNDArrayOp(uint64_t a1, GPU::EncodeDescriptor *a2, void *a3)
{
  v17 = a3;
  if ((*(a1 + 40) & 1) == 0)
  {
    GPU::SampleGridOpHandler::_createNDArrayMultiaryKernel(a1);
  }

  v5 = [v17 objectAtIndexedSubscript:0];
  v6 = [v5 mpsndarray];

  if (!v6 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v7 = v6;
  v8 = *(a1 + 24);
  if (*(a1 + 32))
  {
    mlir::Block::getParentOp(*(v8 + 16));
    if (*(*(mlir::Block::getParentOp(*(*(a1 + 24) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v9 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(a1 + 32), *(a1 + 16));
    v10 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(a1 + 32));
  }

  else
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
    v11 = (*(**(a1 + 16) + 48))(*(a1 + 16), *(*(v8 + 72) + 24), 0);
    v12 = [v11 mpsndarray];

    if (!v12 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    [v9 addObject:v12];

    v13 = (*(**(a1 + 16) + 48))(*(a1 + 16), *(*(v8 + 72) + 56), 0);
    v14 = [v13 mpsndarray];

    if (!v14 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    [v9 addObject:v14];

    v10 = 0;
  }

  v15 = *(a1 + 8);
  v16 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  [v15 encodeToMPSCommandEncoder:v16 commandBuffer:*(a2 + 1) sourceArrays:v9 resultState:0 destinationArray:v7 kernelDAGObject:v10];
}

void GPU::SampleGridOpHandler::~SampleGridOpHandler(GPU::SampleGridOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MultiaryKernelOpHandler<GPU::SampleGridOpHandler,mlir::mps::SampleGridOp,MPSNDArrayGridSample,2ul>::~MultiaryKernelOpHandler(GPU::BaseOpHandler *a1)
{
  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

id *GPU::TopKOpHandler::TopKOpHandler(id *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v5 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v5 = &unk_1F5B50938;
  *(v5 + 120) = 0u;
  *(v5 + 136) = 0u;
  v6 = objc_alloc(MEMORY[0x1E69748B8]);
  v7 = [*(this[2] + 6) metalDevice];
  v8 = [v6 initWithDevice:v7];
  v9 = this[1];
  this[1] = v8;

  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  v10 = this[15];
  this[15] = 0;

  v11 = this[16];
  this[16] = 0;

  v12 = this[17];
  this[17] = 0;

  return this;
}

void sub_1E07F9AB0(_Unwind_Exception *a1)
{
  v3 = v2;

  GPU::BaseOpHandler::~BaseOpHandler(v1);
  _Unwind_Resume(a1);
}

void GPU::TopKOpHandler::encodeOp(GPU::TopKOpHandler *this, GPU::EncodeDescriptor *a2)
{
  v132 = *MEMORY[0x1E69E9840];
  GPU::BaseOpHandler::_inferJITOutputTypes(this, a2);
  v125 = *(this + 3);
  v118 = a2;
  v112 = *(this + 1);
  [v112 setK:{RuntimeUtils::getAxis(*(this + 2), a2, *(*(v125 + 72) + 88), 0)}];
  v4 = (*(**(this + 2) + 48))(*(this + 2), *(*(v125 + 72) + 24), 0);
  v5 = [v4 mpsndarray];

  if (!v5 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v113 = v5;
  Axis = RuntimeUtils::getAxis(*(this + 2), v118, *(*(v125 + 72) + 56), [v5 numberOfDimensions]);
  v7 = [v5 numberOfDimensions];
  if (Axis >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(this + 3);
  v10 = *(v9 + 36);
  v11 = v9 - 16;
  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v114 = [MEMORY[0x1E695DF70] arrayWithCapacity:v10];
  if (v10)
  {
    v13 = 0;
    v115 = 3;
    do
    {
      while (1)
      {
        v14 = *mlir::detail::OpResultImpl::getNextResultAtOffset(v12, v13);
        if (!v14)
        {
          break;
        }

        v15 = 0;
        do
        {
          v14 = *v14;
          --v15;
        }

        while (v14);
        if (!v15)
        {
          break;
        }

        v16 = (*(**(this + 2) + 80))(*(this + 2));
        v17 = [v16 mpsndarray];
        [v114 addObject:v17];

        if (++v13 == v10)
        {
          goto LABEL_19;
        }
      }

      v18 = [MEMORY[0x1E695DFB0] null];
      [v114 addObject:v18];
      v115 &= ~(1 << v13);

      ++v13;
    }

    while (v13 != v10);
  }

  else
  {
    v115 = 3;
  }

LABEL_19:
  v117 = v8 + ~Axis;
  if ([v112 K] <= 0x10 && !mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v125))
  {
    if (!v117)
    {
      v111 = GPU::EncodeDescriptor::getcomputeEncoder(v118);
      v99 = v118[1];
      v129 = v5;
      v98 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v129 count:1];
      [v112 encodeToMPSCommandEncoder:v111 commandBuffer:v99 sourceArrays:v98 destinationArrays:v114 activeDestinationMask:v115];
      goto LABEL_81;
    }

    v111 = [v5 descriptor];
    [v111 transposeDimension:0 withDimension:v117];
    v64 = v118[1];
    v65 = GPU::EncodeDescriptor::getcomputeEncoder(v118);
    v110 = [v113 safeArrayViewWithCommandBuffer:v64 computeEncoder:v65 descriptor:v111 aliasing:1];

    v119 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(*(this + 3) + 36)];
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v66 = v114;
    v67 = [v66 countByEnumeratingWithState:&v121 objects:v131 count:16];
    if (v67)
    {
      v68 = *v122;
      v69 = MEMORY[0x1E69744E8];
      do
      {
        for (i = 0; i != v67; ++i)
        {
          if (*v122 != v68)
          {
            objc_enumerationMutation(v66);
          }

          v71 = *(*(&v121 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v72 = [MEMORY[0x1E695DFB0] null];
            [v119 addObject:v72];
          }

          else
          {
            v72 = [v71 descriptor];
            [v72 transposeDimension:0 withDimension:v117];
            if (*(v71 + *v69) == 1)
            {
              [v71 setReadCount:{objc_msgSend(v71, "readCount") + 1}];
            }

            v73 = v118[1];
            v74 = GPU::EncodeDescriptor::getcomputeEncoder(v118);
            v75 = [v71 safeArrayViewWithCommandBuffer:v73 computeEncoder:v74 descriptor:v72 aliasing:1];

            [v119 addObject:v75];
          }
        }

        v67 = [v66 countByEnumeratingWithState:&v121 objects:v131 count:16];
      }

      while (v67);
    }

    v30 = GPU::EncodeDescriptor::getcomputeEncoder(v118);
    v76 = v118[1];
    v130 = v110;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v130 count:1];
    [v112 encodeToMPSCommandEncoder:v30 commandBuffer:v76 sourceArrays:v33 destinationArrays:v119 activeDestinationMask:v115];
    v113 = v110;
LABEL_80:

    v98 = v119;
LABEL_81:

    goto LABEL_82;
  }

  if ((v115 & 2) != 0)
  {
    v42 = *(this + 17);
    if (!v42)
    {
      v43 = objc_alloc(MEMORY[0x1E6974698]);
      v44 = [*(*(this + 2) + 48) metalDevice];
      v45 = [v43 initWithDevice:v44];
      v46 = *(this + 17);
      *(this + 17) = v45;

      v42 = *(this + 17);
    }

    v111 = v42;
    [v111 setDescending:!mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v125)];
    [v111 setAxis:v117];
    v119 = [v113 descriptor];
    v47 = [v114 objectAtIndexedSubscript:1];
    v30 = [v47 descriptor];

    [v30 dataType];
    if (([v30 dataType] & 0xFFF8) != 0x20 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    [v119 setDataType:536870944];
    v33 = [MEMORY[0x1E69744A8] temporaryNDArrayWithCommandBuffer:v118[1] descriptor:v119];
    if (v115)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v113 setReadCount:{objc_msgSend(v113, "readCount") + 1}];
      }
    }

    v48 = GPU::EncodeDescriptor::getcomputeEncoder(v118);
    v49 = v118[1];
    v128 = v113;
    v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v128 count:1];
    [v111 encodeToMPSCommandEncoder:v48 commandBuffer:v49 sourceArrays:v50 destinationArray:v33];

    v109 = [v33 descriptor];
    [v109 sliceDimension:v117 withSubrange:{0, objc_msgSend(v112, "K")}];
    v51 = v118[1];
    v52 = GPU::EncodeDescriptor::getcomputeEncoder(v118);
    v108 = [v33 safeArrayViewWithCommandBuffer:v51 computeEncoder:v52 descriptor:v109 aliasing:0];

    if (v115)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v108 setReadCount:{objc_msgSend(v108, "readCount") + 1}];
      }
    }

    v53 = *(this + 2);
    v54 = GPU::EncodeDescriptor::getcomputeEncoder(v118);
    v55 = v118[1];
    v56 = *(this + 2);
    if (*(v125 + 36))
    {
      v57 = v125 - 16;
    }

    else
    {
      v57 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v57, 1);
    v59 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, 0);
    v60 = (*(*v56 + 48))(v56, v59, 0);
    if (*(v125 + 36))
    {
      v61 = v125 - 16;
    }

    else
    {
      v61 = 0;
    }

    v62 = mlir::detail::OpResultImpl::getNextResultAtOffset(v61, 1);
    v63 = mlir::detail::OpResultImpl::getNextResultAtOffset(v62, 0);
    GPURegionRuntime::copyNDArrayToTarget(v53, v54, v55, this + 15, v108, v60, v63, 0);

    if (v115)
    {
      v77 = v113;
      v106 = v108;
      v78 = [v114 objectAtIndexedSubscript:0];
      if ((!v113 || !v106) && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v105 = [v77 descriptor];
      v116 = [v106 descriptor];
      v104 = [v78 descriptor];
      v101 = [v104 numberOfDimensions];
      if (v117)
      {
        [v105 transposeDimension:0 withDimension:?];
        [v116 transposeDimension:0 withDimension:v117];
        [v104 transposeDimension:0 withDimension:v117];
        v79 = v118[1];
        v80 = GPU::EncodeDescriptor::getcomputeEncoder(v118);
        v81 = [v77 safeArrayViewWithCommandBuffer:v79 computeEncoder:v80 descriptor:v105 aliasing:1];

        v77 = v81;
        if (*(v78 + *MEMORY[0x1E69744E8]) == 1)
        {
          [v78 setReadCount:{objc_msgSend(v78, "readCount") + 1}];
        }

        v82 = v118[1];
        v83 = GPU::EncodeDescriptor::getcomputeEncoder(v118);
        v84 = [v78 safeArrayViewWithCommandBuffer:v82 computeEncoder:v83 descriptor:v104 aliasing:1];

        v78 = v84;
      }

      v107 = v77;
      v100 = [v116 getShape];
      v102 = RuntimeUtils::expandShape(v100, [v100 count], 1);
      v103 = *(*(this + 2) + 416);
      v120 = 0;
      if (*(v106 + *MEMORY[0x1E69744E8]) == 1)
      {
        [v106 setReadCount:{objc_msgSend(v106, "readCount") + 1}];
      }

      v85 = v106;
      v39 = v85;
      v86 = v85;
      if (v117)
      {
        v86 = [v85 arrayViewWithDescriptor:v116];
      }

      v87 = GPU::EncodeDescriptor::getcomputeEncoder(v118);
      v88 = GPU::doReshapeWithFallBack(v86, v102, v103, v87, v118[1], &v120, 1);

      v89 = *(this + 18);
      if (!v89)
      {
        v90 = objc_alloc(MEMORY[0x1E6974718]);
        v91 = [*(*(this + 2) + 48) metalDevice];
        v92 = [v90 initWithDevice:v91];
        v93 = *(this + 18);
        *(this + 18) = v92;

        v89 = *(this + 18);
      }

      [v89 setBatchDimensions:v101 - 1];
      v94 = *(this + 18);
      v95 = GPU::EncodeDescriptor::getcomputeEncoder(v118);
      v96 = v118[1];
      v127[0] = v107;
      v127[1] = v88;
      v97 = [MEMORY[0x1E695DEC8] arrayWithObjects:v127 count:2];
      [v94 encodeToMPSCommandEncoder:v95 commandBuffer:v96 sourceArrays:v97 destinationArray:v78];

      if (v117 && *(v78 + *MEMORY[0x1E69744E8]) == 1)
      {
        [v78 setReadCount:{objc_msgSend(v78, "readCount") - 1}];
      }
    }

    else
    {
      v39 = v108;
    }

    goto LABEL_79;
  }

  if (v115)
  {
    v19 = *(this + 16);
    if (!v19)
    {
      v20 = objc_alloc(MEMORY[0x1E6974880]);
      v21 = [*(*(this + 2) + 48) metalDevice];
      v22 = [v20 initWithDevice:v21];
      v23 = *(this + 16);
      *(this + 16) = v22;

      v19 = *(this + 16);
    }

    v111 = v19;
    [v111 setDescending:!mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v125)];
    [v111 setAxis:v117];
    v24 = MEMORY[0x1E69744A8];
    v25 = v118[1];
    v26 = [v113 descriptor];
    v119 = [v24 temporaryNDArrayWithCommandBuffer:v25 descriptor:v26];

    v27 = GPU::EncodeDescriptor::getcomputeEncoder(v118);
    v28 = v118[1];
    v126 = v113;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v126 count:1];
    [v111 encodeToMPSCommandEncoder:v27 commandBuffer:v28 sourceArrays:v29 destinationArray:v119];

    v30 = [v119 descriptor];
    [v30 sliceDimension:v117 withSubrange:{0, objc_msgSend(v112, "K")}];
    v31 = v118[1];
    v32 = GPU::EncodeDescriptor::getcomputeEncoder(v118);
    v33 = [v119 safeArrayViewWithCommandBuffer:v31 computeEncoder:v32 descriptor:v30 aliasing:0];

    v34 = *(this + 2);
    v109 = GPU::EncodeDescriptor::getcomputeEncoder(v118);
    v35 = v118[1];
    v36 = *(this + 2);
    if (*(v125 + 36))
    {
      v37 = v125 - 16;
    }

    else
    {
      v37 = 0;
    }

    v38 = mlir::detail::OpResultImpl::getNextResultAtOffset(v37, 0);
    v39 = (*(*v36 + 48))(v36, v38, 0);
    if (*(v125 + 36))
    {
      v40 = v125 - 16;
    }

    else
    {
      v40 = 0;
    }

    v41 = mlir::detail::OpResultImpl::getNextResultAtOffset(v40, 0);
    GPURegionRuntime::copyNDArrayToTarget(v34, v109, v35, this + 15, v33, v39, v41, 0);
LABEL_79:

    goto LABEL_80;
  }

LABEL_82:
}

unint64_t GPU::TopKOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
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

GPU::TopKGradientOpHandler *GPU::TopKGradientOpHandler::TopKGradientOpHandler(GPU::TopKGradientOpHandler *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v5 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v5 = &unk_1F5B50988;
  *(v5 + 120) = 0u;
  *(v5 + 136) = 0u;
  v6 = objc_alloc(MEMORY[0x1E69748B8]);
  v7 = [*(*(this + 2) + 48) metalDevice];
  v8 = [v6 initWithDevice:v7 K:0 computeGradient:1];
  v9 = *(this + 1);
  *(this + 1) = v8;

  v10 = *(this + 15);
  *(this + 15) = 0;

  v11 = *(this + 16);
  *(this + 16) = 0;

  v12 = *(this + 17);
  *(this + 17) = 0;

  return this;
}

void sub_1E07FAE74(_Unwind_Exception *a1)
{
  v3 = v2;

  v5 = *(v1 + 144);
  *(v1 + 144) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  GPU::BaseOpHandler::~BaseOpHandler(v1);
  _Unwind_Resume(a1);
}

GPU::TopKGradientOpHandler *GPU::TopKGradientOpHandler::postInitializeHook(GPU::TopKGradientOpHandler *this)
{
  if (*(this + 40) == 1 && !*(this + 4))
  {
    return GPU::TopKGradientOpHandler::_getKernelDAGObject(this);
  }

  return this;
}

id GPU::TopKGradientOpHandler::_getKernelDAGObject(GPU::TopKGradientOpHandler *this)
{
  if (!*(this + 18))
  {
    v4 = *(this + 3);
    v5 = *(v4 + 36);
    v6 = v4 - 16;
    if (v5)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
    StaticType = GPURegionRuntime::getStaticType(*(this + 2), NextResultAtOffset);
    getMPSDataType(StaticType);
    getBaseTensorShape((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), &__p);
    operator new();
  }

  if ((*(this + 40) & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (!*(*(this + 18) + 120) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v2 = *(*(this + 18) + 120);

  return v2;
}

void sub_1E07FB138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  MEMORY[0x1E12E5B90](v11, 0x10A1C40A031F3DELL);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void GPU::TopKGradientOpHandler::encodeOp(GPU::TopKGradientOpHandler *this, void **a2)
{
  v102[2] = *MEMORY[0x1E69E9840];
  GPU::BaseOpHandler::_inferJITOutputTypes(this, a2);
  v98 = *(this + 3);
  v4 = *(v98 + 72);
  v5 = *(v4 + 56);
  v6 = *(v4 + 24);
  if (*(v98 + 36))
  {
    v7 = v98 - 16;
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  v9 = (*(**(this + 2) + 48))(*(this + 2), v5, 0);
  v86 = [v9 mpsndarray];

  v10 = (*(**(this + 2) + 48))(*(this + 2), v6, 0);
  v96 = [v10 mpsndarray];

  v11 = (*(**(this + 2) + 48))(*(this + 2), NextResultAtOffset, 0);
  v12 = [v11 mpsndarray];

  if (v86)
  {
    v13 = v96 == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13 || v12 == 0;
  if (v14 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v91 = *(this + 1);
  [v91 setK:{RuntimeUtils::getAxis(*(this + 2), a2, *(*(v98 + 72) + 120), 0)}];
  Axis = RuntimeUtils::getAxis(*(this + 2), a2, *(*(v98 + 72) + 88), [v96 numberOfDimensions]);
  v16 = [v96 numberOfDimensions];
  if (Axis >= 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17 + ~Axis;
  if ([v91 K] > 0x10 || mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v98))
  {
    v19 = *(this + 16);
    if (!v19)
    {
      v20 = objc_alloc(MEMORY[0x1E6974698]);
      v21 = [*(*(this + 2) + 48) metalDevice];
      v22 = [v20 initWithDevice:v21];
      v23 = *(this + 16);
      *(this + 16) = v22;

      v19 = *(this + 16);
    }

    v90 = v19;
    [v90 setDescending:!mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v98)];
    [v90 setAxis:v18];
    v82 = [v96 descriptor];
    [v82 setDataType:536870944];
    v92 = [MEMORY[0x1E69744A8] temporaryNDArrayWithCommandBuffer:a2[1] descriptor:v82];
    v24 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v25 = a2[1];
    v100 = v96;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v100 count:1];
    [v90 encodeToMPSCommandEncoder:v24 commandBuffer:v25 sourceArrays:v26 destinationArray:v92];

    v89 = [v92 descriptor];
    [v89 sliceDimension:v18 withSubrange:{0, objc_msgSend(v91, "K")}];
    v27 = a2[1];
    v28 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v79 = [v92 safeArrayViewWithCommandBuffer:v27 computeEncoder:v28 descriptor:v89 aliasing:0];

    v29 = [v12 descriptor];
    for (i = 0; i < [v12 numberOfDimensions]; ++i)
    {
      [v29 setLengthOfDimension:1 atIndex:i];
    }

    if (!*(this + 15))
    {
      v31 = objc_alloc(MEMORY[0x1E6974740]);
      v32 = [*(*(this + 2) + 48) metalDevice];
      v33 = [v31 initWithDevice:v32];
      v34 = *(this + 15);
      *(this + 15) = v33;
    }

    v35 = [MEMORY[0x1E69744A8] temporaryNDArrayWithCommandBuffer:a2[1] descriptor:v29];
    v36 = *(this + 15);
    v37 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v38 = a2[1];
    v39 = GPU::TopKGradientOpHandler::_getKernelDAGObject(this);
    [v36 encodeToMPSCommandEncoder:v37 commandBuffer:v38 sourceArrays:MEMORY[0x1E695E0F0] resultState:0 destinationArray:v35 kernelDAGObject:v39];

    if (!*(this + 17))
    {
      v40 = objc_alloc(MEMORY[0x1E6974870]);
      v41 = [*(*(this + 2) + 48) metalDevice];
      v42 = [v40 initWithDevice:v41 operation:6];
      v43 = *(this + 17);
      *(this + 17) = v42;
    }

    v44 = v86;
    v93 = v12;
    v81 = v79;
    v45 = v35;
    v88 = v44;
    v85 = [v35 descriptor];
    v83 = [v44 descriptor];
    v87 = [v81 descriptor];
    v84 = [v93 descriptor];
    if (v18)
    {
      [v85 transposeDimension:0 withDimension:v18];
      [v83 transposeDimension:0 withDimension:v18];
      [v87 transposeDimension:0 withDimension:v18];
      [v84 transposeDimension:0 withDimension:v18];
      v46 = a2[1];
      v47 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
      v48 = [v35 safeArrayViewWithCommandBuffer:v46 computeEncoder:v47 descriptor:v85 aliasing:1];

      v45 = v48;
      v49 = a2[1];
      v50 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
      v94 = [v88 safeArrayViewWithCommandBuffer:v49 computeEncoder:v50 descriptor:v83 aliasing:1];

      if (*(v93 + *MEMORY[0x1E69744E8]) == 1)
      {
        [v93 setReadCount:{objc_msgSend(v93, "readCount") + 1}];
      }

      v51 = a2[1];
      v52 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
      v53 = [v93 safeArrayViewWithCommandBuffer:v51 computeEncoder:v52 descriptor:v84 aliasing:1];

      v93 = v53;
    }

    else
    {
      v94 = v44;
    }

    v95 = v45;
    [v87 getShape];
    v78 = v54 = v18;
    v80 = RuntimeUtils::expandShape(v78, [v78 count], 1);
    v55 = v81;
    v56 = v55;
    v57 = v55;
    if (v54)
    {
      v57 = [v55 arrayViewWithDescriptor:v87];
    }

    v58 = *(*(this + 2) + 416);
    v97 = 0;
    v59 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v60 = GPU::doReshapeWithFallBack(v57, v80, v58, v59, a2[1], &v97, 1);

    [*(this + 17) setBatchDimensions:{objc_msgSend(v88, "numberOfDimensions") - 1}];
    v61 = *(this + 17);
    v62 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v63 = a2[1];
    v99[0] = v95;
    v99[1] = v94;
    v99[2] = v60;
    v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:v99 count:3];
    [v61 encodeToMPSCommandEncoder:v62 commandBuffer:v63 sourceArrays:v64 destinationArray:v93];
  }

  else
  {
    v90 = v12;
    if (v18)
    {
      v65 = [v96 descriptor];
      [v65 transposeDimension:0 withDimension:v18];
      v66 = [v86 descriptor];
      [v66 transposeDimension:0 withDimension:v18];
      v67 = a2[1];
      v68 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
      v69 = [v96 safeArrayViewWithCommandBuffer:v67 computeEncoder:v68 descriptor:v65 aliasing:1];

      v70 = a2[1];
      v71 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
      v72 = [v86 safeArrayViewWithCommandBuffer:v70 computeEncoder:v71 descriptor:v66 aliasing:1];

      v73 = [v90 descriptor];
      [v73 transposeDimension:0 withDimension:v18];
      if (*(v90 + *MEMORY[0x1E69744E8]) == 1)
      {
        [v90 setReadCount:{objc_msgSend(v90, "readCount") + 1}];
      }

      v74 = a2[1];
      v75 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
      v76 = [v90 safeArrayViewWithCommandBuffer:v74 computeEncoder:v75 descriptor:v73 aliasing:1];

      v90 = v76;
    }

    else
    {
      v69 = v96;
      v72 = v86;
    }

    v82 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v77 = a2[1];
    v102[0] = v69;
    v102[1] = v72;
    v88 = v72;
    v92 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:2];
    v101 = v90;
    v89 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v101 count:1];
    [v91 encodeToMPSCommandEncoder:v82 commandBuffer:v77 sourceArrays:v92 destinationArrays:?];
    v96 = v69;
  }
}

unint64_t GPU::TopKGradientOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 3)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 3u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

void GPU::TopKOpHandler::~TopKOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::TopKGradientOpHandler::~TopKGradientOpHandler(GPU::TopKGradientOpHandler *this)
{
  *this = &unk_1F5B50988;
  v2 = *(this + 18);
  *(this + 18) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B50988;
  v2 = *(this + 18);
  *(this + 18) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void mlir::AsmResourceBlob::~AsmResourceBlob(mlir::AsmResourceBlob *this)
{
  v2 = *(this + 6);
  if (v2 >= 8)
  {
    v3 = this + 24;
    v4 = *this;
    v5 = *(this + 1);
    v6 = *(this + 2);
    v7 = this + 24;
    if ((v2 & 2) == 0)
    {
      v7 = *v3;
    }

    (*(v2 & 0xFFFFFFFFFFFFFFF8))(v7, v4, v5, v6);
    v8 = *(this + 6);
    if (v8 >= 8)
    {
      if ((v8 & 4) != 0)
      {
        if ((v8 & 2) == 0)
        {
          v3 = *v3;
        }

        (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
      }

      if ((v8 & 2) == 0)
      {
        llvm::deallocate_buffer(*(this + 3), *(this + 4));
      }
    }
  }
}

{
  v2 = *(this + 6);
  if (v2 >= 8)
  {
    v3 = this + 24;
    v4 = *this;
    v5 = *(this + 1);
    v6 = *(this + 2);
    v7 = this + 24;
    if ((v2 & 2) == 0)
    {
      v7 = *v3;
    }

    (*(v2 & 0xFFFFFFFFFFFFFFF8))(v7, v4, v5, v6);
    v8 = *(this + 6);
    if (v8 >= 8)
    {
      if ((v8 & 4) != 0)
      {
        if ((v8 & 2) == 0)
        {
          v3 = *v3;
        }

        (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
      }

      if ((v8 & 2) == 0)
      {
        llvm::deallocate_buffer(*(this + 3), *(this + 4));
      }
    }
  }
}

llvm **llvm::unique_function<void ()(void *,unsigned long,unsigned long)>::~unique_function(llvm *a1)
{
  v1 = a1;
  v2 = *(a1 + 3);
  if (v2 >= 8)
  {
    if ((v2 & 4) != 0)
    {
      if ((v2 & 2) == 0)
      {
        a1 = *a1;
      }

      (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16))(a1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(*v1, v1[1]);
    }
  }

  return v1;
}

void getMLIRTypes(const MIL::IRValueType *a1@<X0>, mlir::MLIRContext *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (*(*a1 + 24))(a1);
  if (v6)
  {
    getMLIRType(v6, a2);
    goto LABEL_3;
  }

  v7 = (*(*a1 + 40))(a1);
  if (v7)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v8 = (*(*v7 + 64))(v7);
    v9 = *v8;
    v10 = *(v8 + 8);
    while (v9 != v10)
    {
      getMLIRTypes(&__p, *v9, a2);
      std::vector<mlir::Type>::__insert_with_size[abi:ne200100]<std::__wrap_iter<mlir::Type*>,std::__wrap_iter<mlir::Type*>>(a3, *(a3 + 8), __p, v31, (v31 - __p) >> 3);
      if (__p)
      {
        v31 = __p;
        operator delete(__p);
      }

      ++v9;
    }

    return;
  }

  v11 = MIL::IRValueType::TryCastAsMemoryLayoutType(a1);
  if (v11)
  {
    v12 = v11;
    v13 = MIL::IRMemoryLayoutValueType::TryAsTensorBufferType(v11);
    if (v13)
    {
      v14 = v13;
      DataType = MIL::IRTensorBufferValueType::GetDataType(v13);
      v16 = MILElemTypeToMLIRElemType(DataType, a2);
      if (MIL::IRTensorBufferValueType::IsFixedRank(v14))
      {
        if (MIL::IRTensorBufferValueType::IsScalar(v14))
        {
          operator new();
        }

        Shape = MIL::IRTensorBufferValueType::GetShape(v14);
        getMLIRShape(Shape, &__p);
        if (v31 != __p)
        {
          if (v31 - __p >= 0)
          {
            operator new();
          }

          std::vector<long>::__throw_length_error[abi:ne200100]();
        }

        InterleaveFactors = MIL::IRTensorBufferValueType::GetInterleaveFactors(v14);
        v28 = InterleaveFactors[1];
        if (v28 != *InterleaveFactors)
        {
          if (((v28 - *InterleaveFactors) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
        }

        mlir::RankedTensorType::get(__p, (v31 - __p) >> 3, v16, 0);
        if (__p)
        {
          v31 = __p;
          operator delete(__p);
        }
      }

      else
      {
        mlir::UnrankedTensorType::get(v16);
      }

      operator new();
    }

    if (MIL::IRMemoryLayoutValueType::TryAsPixelBufferType(v12))
    {
      v18 = mlir::Float32Type::get(a2, v17);
      goto LABEL_30;
    }
  }

  v19 = MIL::IRValueType::TryCastAsStateType(a1);
  if (v19)
  {
    WrappedType = MIL::IRStateValueType::GetWrappedType(v19);
    v21 = (*(*WrappedType + 24))(WrappedType);
    if (!v21 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v22 = (*(*v21 + 88))(v21);
    v23 = MILElemTypeToMLIRElemType(v22, a2);
    if ((*(*v21 + 104))(v21))
    {
      if (MIL::IRTensorValueType::IsScalar(v21))
      {
        v24 = 0;
        v25 = 0;
        __p = 0;
        v31 = 0;
        v32 = 0;
      }

      else
      {
        v29 = (*(*v21 + 96))(v21);
        getMLIRShape(v29, &__p);
        v25 = __p;
        v24 = v31;
      }

      mlir::RankedTensorType::get(v25, (v24 - v25) >> 3, v23, 0);
      if (__p)
      {
        v31 = __p;
        operator delete(__p);
      }

LABEL_3:
      operator new();
    }

    v18 = v23;
LABEL_30:
    mlir::UnrankedTensorType::get(v18);
    goto LABEL_3;
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
}

void sub_1E07FD6A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *__p, void *a14, uint64_t a15)
{
  operator delete(v15);
  if (__p)
  {
    operator delete(__p);
    if (a11)
    {
LABEL_7:
      operator delete(a11);
      v17 = a14;
      if (!a14)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if (a11)
  {
    goto LABEL_7;
  }

  v17 = a14;
  if (!a14)
  {
    goto LABEL_9;
  }

LABEL_8:
  operator delete(v17);
LABEL_9:
  _Unwind_Resume(a1);
}

uint64_t getMLIRType(const MIL::IRTensorValueType *a1, mlir::MLIRContext *a2)
{
  v4 = (*(*a1 + 88))(a1);
  result = MILElemTypeToMLIRElemType(v4, a2);
  if (result)
  {
    v6 = result;
    if ((*(*a1 + 104))(a1))
    {
      if (MIL::IRTensorValueType::IsScalar(a1))
      {
        v7 = 0;
        v8 = 0;
        __p = 0;
        v12 = 0;
        v13 = 0;
      }

      else
      {
        v9 = (*(*a1 + 96))(a1);
        getMLIRShape(v9, &__p);
        v8 = __p;
        v7 = v12;
      }

      result = mlir::RankedTensorType::get(v8, (v7 - v8) >> 3, v6, 0);
      if (__p)
      {
        v12 = __p;
        v10 = result;
        operator delete(__p);
        return v10;
      }
    }

    else
    {

      return mlir::UnrankedTensorType::get(v6);
    }
  }

  return result;
}

void sub_1E07FD8C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t getMLIRElemTypeFromMILValue(const MIL::IRValue *a1, mlir::MLIRContext *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = (*(*a1 + 32))(a1);
  if (!v3)
  {
    return 0;
  }

  v4 = (*(*v3 + 24))(v3);
  if (!v4)
  {
    return 0;
  }

  v5 = (*(*v4 + 88))(v4);

  return MILElemTypeToMLIRElemType(v5, a2);
}

uint64_t MILElemTypeToMLIRElemType(int a1, mlir::Float32Type *this)
{
  switch(a1)
  {
    case 2:
      result = mlir::IntegerType::get(this, 1, 0);
      break;
    case 3:
      result = mlir::IntegerType::get(this, 8, 0);
      break;
    case 4:
      result = mlir::Float16Type::get(this, this);
      break;
    case 5:
      result = mlir::Float32Type::get(this, this);
      break;
    case 9:
      result = mlir::IntegerType::get(this, 8, 1u);
      break;
    case 10:
      result = mlir::IntegerType::get(this, 16, 1u);
      break;
    case 11:
      result = mlir::IntegerType::get(this, 32, 1u);
      break;
    case 12:
      result = mlir::IntegerType::get(this, 64, 1u);
      break;
    case 13:
      result = mlir::IntegerType::get(this, 4, 1u);
      break;
    case 14:
      result = mlir::IntegerType::get(this, 8, 2u);
      break;
    case 15:
      result = mlir::IntegerType::get(this, 16, 2u);
      break;
    case 16:
      result = mlir::IntegerType::get(this, 32, 2u);
      break;
    case 19:
      result = mlir::IntegerType::get(this, 2, 2u);
      break;
    case 20:
      result = mlir::IntegerType::get(this, 4, 2u);
      break;
    case 21:
      result = mlir::IntegerType::get(this, 1, 2u);
      break;
    case 22:
      result = mlir::IntegerType::get(this, 3, 2u);
      break;
    case 23:
      result = mlir::IntegerType::get(this, 6, 2u);
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

void getMLIRShape(const MIL::IRTensorValueType *a1@<X0>, void *a2@<X8>)
{
  if (MIL::IRTensorValueType::IsScalar(a1))
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    v4 = (*(*a1 + 96))(a1);

    getMLIRShape(v4, a2);
  }
}

void getMLIRShape(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *a1;
  v4 = a1[1];
  if (v4 != *a1)
  {
    if (((v4 - *a1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  while (v3 != v4)
  {
    v5 = (*(**v3 + 16))();
    if (v5)
    {
      v6 = (*(*v5 + 48))(v5);
    }

    else
    {
      v6 = 0x8000000000000000;
    }

    v7 = v6;
    std::vector<long long>::push_back[abi:ne200100](a2, &v7);
    v3 += 8;
  }
}

void sub_1E07FDC48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

EmitterObjC::ReshapeOpHandler *EmitterObjC::ReshapeOpHandler::ReshapeOpHandler(EmitterObjC::ReshapeOpHandler *this, EmitObjC *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B50A08;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(v5 + 9) + 24);
  if (*(v5 + 9))
  {
    v7 = v5 - 16;
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  v9 = *(*(v5 + 9) + 56);
  v10 = MEMORY[0x1E696AEC0];
  v11 = v26;
  (*(*a2 + 32))(v26, a2, NextResultAtOffset);
  if (v27 < 0)
  {
    v11 = v26[0];
  }

  v25 = v6;
  __p.__r_.__value_.__r.__words[0] = &v25;
  v12 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v25);
  v13 = v12 + 3;
  if (*(v12 + 47) < 0)
  {
    v13 = *v13;
  }

  v24 = v9;
  __p.__r_.__value_.__r.__words[0] = &v24;
  v14 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v24);
  v15 = v14 + 3;
  if (*(v14 + 47) < 0)
  {
    v15 = *v15;
  }

  v22 = 0;
  LOBYTE(v21) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v21, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v17 = [v10 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph reshapeTensor:%s\n         withShapeTensor:%s\n                    name:%s]\n    ", v11, v13, v15, p_p];;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_21:
    operator delete(v21);
    if ((v27 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_22:
    operator delete(v26[0]);
    goto LABEL_19;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v22 < 0)
  {
    goto LABEL_21;
  }

LABEL_18:
  if (v27 < 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  v18 = [*(a2 + 27) stringByAppendingString:v17];
  v19 = *(a2 + 27);
  *(a2 + 27) = v18;

  return this;
}

void sub_1E07FDE98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a24 < 0)
  {
    operator delete(a19);
    if ((a18 & 0x80000000) == 0)
    {
LABEL_3:
      if (a32 < 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a18 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a13);
  if (a32 < 0)
  {
LABEL_4:
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  _Unwind_Resume(exception_object);
}

EmitterObjC::ShapeOpHandler *EmitterObjC::ShapeOpHandler::ShapeOpHandler(EmitterObjC::ShapeOpHandler *this, EmitObjC *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B50A20;
  v5 = *(*(a3 + 9) + 24);
  if (*(a3 + 9))
  {
    v6 = a3 - 16;
  }

  else
  {
    v6 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
  v8 = MEMORY[0x1E696AEC0];
  v9 = v21;
  (*(*a2 + 32))(v21, a2, NextResultAtOffset);
  if (v22 < 0)
  {
    v9 = v21[0];
  }

  v20 = v5;
  __p.__r_.__value_.__r.__words[0] = &v20;
  v10 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v20);
  v11 = v10 + 3;
  if (*(v10 + 47) < 0)
  {
    v11 = *v11;
  }

  v18 = 0;
  LOBYTE(v17) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v17, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v13 = [v8 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph shapeOfTensor:%s\n                    name:%s]\n    ", v9, v11, p_p];;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_16:
    operator delete(v17);
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_17:
    operator delete(v21[0]);
    goto LABEL_14;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v18 < 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  if (v22 < 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  v14 = [*(a2 + 27) stringByAppendingString:v13];
  v15 = *(a2 + 27);
  *(a2 + 27) = v14;

  return this;
}

void sub_1E07FE0F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a23 < 0)
  {
    operator delete(a18);
    if ((a17 & 0x80000000) == 0)
    {
LABEL_3:
      if (a30 < 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a12);
  if (a30 < 0)
  {
LABEL_4:
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  _Unwind_Resume(exception_object);
}

EmitterObjC::ExpandDimsOpHandler *EmitterObjC::ExpandDimsOpHandler::ExpandDimsOpHandler(EmitterObjC::ExpandDimsOpHandler *this, EmitObjC *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B50A38;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ExpandDimsOp,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(v5 + 9) + 24);
  if (*(v5 + 9))
  {
    v7 = v5 - 16;
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  v9 = *(*(v5 + 9) + 56);
  v10 = MEMORY[0x1E696AEC0];
  v11 = v26;
  (*(*a2 + 32))(v26, a2, NextResultAtOffset);
  if (v27 < 0)
  {
    v11 = v26[0];
  }

  v25 = v6;
  __p.__r_.__value_.__r.__words[0] = &v25;
  v12 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v25);
  v13 = v12 + 3;
  if (*(v12 + 47) < 0)
  {
    v13 = *v13;
  }

  v24 = v9;
  __p.__r_.__value_.__r.__words[0] = &v24;
  v14 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v24);
  v15 = v14 + 3;
  if (*(v14 + 47) < 0)
  {
    v15 = *v15;
  }

  v22 = 0;
  LOBYTE(v21) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v21, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v17 = [v10 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph expandDimsOfTensor:%s\n                   axesTensor:%s\n                         name:%s]\n    ", v11, v13, v15, p_p];;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_21:
    operator delete(v21);
    if ((v27 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_22:
    operator delete(v26[0]);
    goto LABEL_19;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v22 < 0)
  {
    goto LABEL_21;
  }

LABEL_18:
  if (v27 < 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  v18 = [*(a2 + 27) stringByAppendingString:v17];
  v19 = *(a2 + 27);
  *(a2 + 27) = v18;

  return this;
}

void sub_1E07FE398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a24 < 0)
  {
    operator delete(a19);
    if ((a18 & 0x80000000) == 0)
    {
LABEL_3:
      if (a32 < 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a18 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a13);
  if (a32 < 0)
  {
LABEL_4:
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  _Unwind_Resume(exception_object);
}

EmitterObjC::PermuteOpHandler *EmitterObjC::PermuteOpHandler::PermuteOpHandler(EmitterObjC::PermuteOpHandler *this, EmitObjC *a2, mlir::Operation *a3)
{
  v78[4] = *MEMORY[0x1E69E9840];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B50A50;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PermuteOp,void>::id)
  {
    v4 = a3;
  }

  else
  {
    v4 = 0;
  }

  v64 = *(*(v4 + 9) + 24);
  if (*(v4 + 9))
  {
    v5 = v4 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  v6 = *(*(v4 + 9) + 56);
  *(&v73.__r_.__value_.__s + 23) = 2;
  strcpy(&v73, "@[");
  v76 = v78;
  v77 = 0x400000000;
  if ((mlir::matchConstantWithIntVector<long long>(v6, &v76) & 1) == 0)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v13 = MEMORY[0x1E696AEC0];
    v14 = &v72;
    (*(*a2 + 32))(&v72, a2, NextResultAtOffset);
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v14 = v72.__r_.__value_.__r.__words[0];
    }

    v75.__r_.__value_.__r.__words[0] = v64;
    v71.__r_.__value_.__r.__words[0] = &v75;
    v15 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v75);
    v16 = v15 + 3;
    if (*(v15 + 47) < 0)
    {
      v16 = *v16;
    }

    v67 = 0;
    LOBYTE(__p) = 0;
    EmitObjC::emitTensorName(a2, NextResultAtOffset, &__p, &v71);
    if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v71;
    }

    else
    {
      v17 = v71.__r_.__value_.__r.__words[0];
    }

    v18 = [v13 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph transposeTensor:%s\n                   permute:%s\n                      name:%s]\n    ", v14, v16, &v73, v17];;
    if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v71.__r_.__value_.__l.__data_);
      if ((v67 & 0x80000000) == 0)
      {
LABEL_30:
        if ((SHIBYTE(v72.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_31:
          **(a2 + 39) = 1;
          v19 = [*(a2 + 27) stringByAppendingString:v18];
          v20 = *(a2 + 27);
          *(a2 + 27) = v19;

          goto LABEL_153;
        }

LABEL_35:
        operator delete(v72.__r_.__value_.__l.__data_);
        goto LABEL_31;
      }
    }

    else if ((v67 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    operator delete(__p);
    if ((SHIBYTE(v72.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_35;
  }

  v7 = v77;
  if (!v77)
  {
    v12 = 2;
    goto LABEL_76;
  }

  v72.__r_.__value_.__r.__words[2] = 0x300000000000000;
  *&v72.__r_.__value_.__l.__data_ = 0x405B40uLL;
  std::to_string(&v71, *v76);
  if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v71;
  }

  else
  {
    v8 = v71.__r_.__value_.__r.__words[0];
  }

  if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v71.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v71.__r_.__value_.__l.__size_;
  }

  v10 = std::string::append(&v72, v8, size);
  v11 = v10->__r_.__value_.__r.__words[0];
  v75.__r_.__value_.__r.__words[0] = v10->__r_.__value_.__l.__size_;
  *(v75.__r_.__value_.__r.__words + 7) = *(&v10->__r_.__value_.__r.__words[1] + 7);
  v12 = HIBYTE(v10->__r_.__value_.__r.__words[2]);
  v10->__r_.__value_.__r.__words[0] = 0;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v73.__r_.__value_.__r.__words[0] = v11;
  *(&v73.__r_.__value_.__r.__words[1] + 7) = *(v75.__r_.__value_.__r.__words + 7);
  v73.__r_.__value_.__l.__size_ = v75.__r_.__value_.__r.__words[0];
  *(&v73.__r_.__value_.__s + 23) = v12;
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v72.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_17:
      if (v77 < 2)
      {
        goto LABEL_75;
      }

      goto LABEL_38;
    }
  }

  else if ((SHIBYTE(v72.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

  operator delete(v72.__r_.__value_.__l.__data_);
  if (v77 >= 2)
  {
LABEL_38:
    v21 = 1;
    while (1)
    {
      v22 = v12;
      if ((v12 & 0x80u) != 0)
      {
        v12 = v73.__r_.__value_.__l.__size_;
      }

      if (v12 + 2 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 + 2 >= 0x17)
      {
        operator new();
      }

      memset(&v72, 0, sizeof(v72));
      *(&v72.__r_.__value_.__s + 23) = v12 + 2;
      if (v12)
      {
        if (v22 >= 0)
        {
          v23 = &v73;
        }

        else
        {
          v23 = v11;
        }

        memmove(&v72, v23, v12);
      }

      strcpy(&v72 + v12, ", ");
      if (v22 < 0)
      {
        operator delete(v11);
      }

      v73 = v72;
      v24 = SHIBYTE(v72.__r_.__value_.__r.__words[2]);
      if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v25 = v73.__r_.__value_.__l.__size_;
      }

      if (v25 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v25 + 1 >= 0x17)
      {
        operator new();
      }

      memset(&v72, 0, sizeof(v72));
      *(&v72.__r_.__value_.__s + 23) = v25 + 1;
      if (v25)
      {
        if (v24 >= 0)
        {
          v26 = &v73;
        }

        else
        {
          v26 = v73.__r_.__value_.__r.__words[0];
        }

        memmove(&v72, v26, v25);
      }

      *(&v72.__r_.__value_.__l.__data_ + v25) = 64;
      std::to_string(&v71, v76[v21]);
      if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = &v71;
      }

      else
      {
        v27 = v71.__r_.__value_.__r.__words[0];
      }

      if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v28 = v71.__r_.__value_.__l.__size_;
      }

      v29 = std::string::append(&v72, v27, v28);
      v11 = v29->__r_.__value_.__r.__words[0];
      v75.__r_.__value_.__r.__words[0] = v29->__r_.__value_.__l.__size_;
      *(v75.__r_.__value_.__r.__words + 7) = *(&v29->__r_.__value_.__r.__words[1] + 7);
      v12 = HIBYTE(v29->__r_.__value_.__r.__words[2]);
      v29->__r_.__value_.__r.__words[0] = 0;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      if (v24 < 0)
      {
        operator delete(v73.__r_.__value_.__l.__data_);
      }

      v73.__r_.__value_.__r.__words[0] = v11;
      v73.__r_.__value_.__l.__size_ = v75.__r_.__value_.__r.__words[0];
      *(&v73.__r_.__value_.__r.__words[1] + 7) = *(v75.__r_.__value_.__r.__words + 7);
      *(&v73.__r_.__value_.__s + 23) = v12;
      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v71.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v72.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_40;
        }

LABEL_74:
        operator delete(v72.__r_.__value_.__l.__data_);
        if (++v21 >= v77)
        {
          break;
        }
      }

      else
      {
        if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_74;
        }

LABEL_40:
        if (++v21 >= v77)
        {
          break;
        }
      }
    }
  }

LABEL_75:
  v7 = v73.__r_.__value_.__l.__size_;
LABEL_76:
  if ((v12 & 0x80u) == 0)
  {
    v30 = v12;
  }

  else
  {
    v30 = v7;
  }

  if (v30 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v30 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v72, 0, sizeof(v72));
  *(&v72.__r_.__value_.__s + 23) = v30 + 1;
  if (v30)
  {
    if ((v12 & 0x80u) == 0)
    {
      v31 = &v73;
    }

    else
    {
      v31 = v73.__r_.__value_.__r.__words[0];
    }

    memmove(&v72, v31, v30);
  }

  *(&v72.__r_.__value_.__l.__data_ + v30) = 93;
  if (v12 < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  v73 = v72;
  v32 = (*(v64 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v32)
  {
    v33 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v32 + 8);
  }

  else
  {
    v33 = 0;
  }

  v70[0] = v32;
  v70[1] = v33;
  if (mlir::CallOpInterface::getArgOperands(v70))
  {
    v34 = v77;
    mlir::CallableOpInterface::getArgAttrsAttr(v70);
    if (v35 == v34)
    {
      mlir::CallableOpInterface::getArgAttrsAttr(v70);
      if (v36)
      {
        if (!(v36 >> 62))
        {
          operator new();
        }

        std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
      }

      if (v77)
      {
        v37 = 0;
        while (1)
        {
          v38 = *(4 * v37);
          *(4 * v37) = MEMORY[0];
          MEMORY[0] = v38;
          memset(&v72, 0, sizeof(v72));
          if (v37)
          {
            break;
          }

          *v74 = v64;
          v75.__r_.__value_.__r.__words[0] = v74;
          v45 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, v74);
          if (*(v45 + 47) < 0)
          {
            std::string::__init_copy_ctor_external(&v71, v45[3], v45[4]);
          }

          else
          {
            v71 = *(v45 + 1);
          }

LABEL_118:
          if (v37 < v77 - 1)
          {
            (*(*a2 + 32))(&v69, a2, NextResultAtOffset);
            v46 = std::string::append(&v69, "permute");
            v47 = *&v46->__r_.__value_.__l.__data_;
            v75.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
            *&v75.__r_.__value_.__l.__data_ = v47;
            v46->__r_.__value_.__l.__size_ = 0;
            v46->__r_.__value_.__r.__words[2] = 0;
            v46->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v68, v37);
            if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v48 = &v68;
            }

            else
            {
              v48 = v68.__r_.__value_.__r.__words[0];
            }

            if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v49 = HIBYTE(v68.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v49 = v68.__r_.__value_.__l.__size_;
            }

            v50 = std::string::append(&v75, v48, v49);
            v51 = v50->__r_.__value_.__r.__words[0];
            *v74 = v50->__r_.__value_.__l.__size_;
            *&v74[7] = *(&v50->__r_.__value_.__r.__words[1] + 7);
            v52 = HIBYTE(v50->__r_.__value_.__r.__words[2]);
            v50->__r_.__value_.__l.__size_ = 0;
            v50->__r_.__value_.__r.__words[2] = 0;
            v50->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v72.__r_.__value_.__l.__data_);
            }

            v72.__r_.__value_.__r.__words[0] = v51;
            v72.__r_.__value_.__l.__size_ = *v74;
            *(&v72.__r_.__value_.__r.__words[1] + 7) = *&v74[7];
            *(&v72.__r_.__value_.__s + 23) = v52;
            if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v68.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_129;
              }
            }

            else if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_129:
              if ((SHIBYTE(v69.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_137;
              }

LABEL_136:
              operator delete(v69.__r_.__value_.__l.__data_);
              goto LABEL_137;
            }

            operator delete(v75.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v69.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_137;
            }

            goto LABEL_136;
          }

          (*(*a2 + 32))(&v75, a2, NextResultAtOffset);
          if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v72.__r_.__value_.__l.__data_);
          }

          v72 = v75;
LABEL_137:
          v53 = MEMORY[0x1E696AEC0];
          if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v54 = &v72;
          }

          else
          {
            v54 = v72.__r_.__value_.__r.__words[0];
          }

          if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v55 = &v71;
          }

          else
          {
            v55 = v71.__r_.__value_.__r.__words[0];
          }

          std::operator+<char>();
          v56 = std::string::append(&v69, "");
          v57 = *&v56->__r_.__value_.__l.__data_;
          v75.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
          *&v75.__r_.__value_.__l.__data_ = v57;
          v56->__r_.__value_.__l.__size_ = 0;
          v56->__r_.__value_.__r.__words[2] = 0;
          v56->__r_.__value_.__r.__words[0] = 0;
          v58 = &v75;
          if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v58 = v75.__r_.__value_.__r.__words[0];
          }

          v59 = [v53 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph transposeTensor:%s\n                 dimension:%ld\n             withDimension:%ld\n                      name:%s]\n                    ", v54, v55, v37, 0, v58];;
          if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v75.__r_.__value_.__l.__data_);
            if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_152:
              operator delete(v69.__r_.__value_.__l.__data_);
            }
          }

          else if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_152;
          }

          v60 = [*(a2 + 27) stringByAppendingString:v59];
          v61 = *(a2 + 27);
          *(a2 + 27) = v60;

          if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v71.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v72.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_100;
            }

LABEL_149:
            operator delete(v72.__r_.__value_.__l.__data_);
            if (++v37 >= v77)
            {
              goto LABEL_153;
            }
          }

          else
          {
            if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_149;
            }

LABEL_100:
            if (++v37 >= v77)
            {
              goto LABEL_153;
            }
          }
        }

        (*(*a2 + 32))(&v69, a2, NextResultAtOffset);
        v39 = std::string::append(&v69, "permute");
        v40 = *&v39->__r_.__value_.__l.__data_;
        v75.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
        *&v75.__r_.__value_.__l.__data_ = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v68, v37 - 1);
        if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v41 = &v68;
        }

        else
        {
          v41 = v68.__r_.__value_.__r.__words[0];
        }

        if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v42 = HIBYTE(v68.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v42 = v68.__r_.__value_.__l.__size_;
        }

        v43 = std::string::append(&v75, v41, v42);
        v44 = *&v43->__r_.__value_.__l.__data_;
        v71.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
        *&v71.__r_.__value_.__l.__data_ = v44;
        v43->__r_.__value_.__l.__size_ = 0;
        v43->__r_.__value_.__r.__words[2] = 0;
        v43->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v68.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_110:
            if ((SHIBYTE(v69.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_118;
            }

LABEL_116:
            operator delete(v69.__r_.__value_.__l.__data_);
            goto LABEL_118;
          }
        }

        else if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_110;
        }

        operator delete(v75.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v69.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_118;
        }

        goto LABEL_116;
      }
    }
  }

LABEL_153:
  if (v76 != v78)
  {
    free(v76);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_1E07FF04C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  v54 = *(v52 - 152);
  if (v54 != a17)
  {
    free(v54);
  }

  if (*(v52 - 201) < 0)
  {
    operator delete(*(v52 - 224));
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

EmitterObjC::TransposeOpHandler *EmitterObjC::TransposeOpHandler::TransposeOpHandler(EmitterObjC::TransposeOpHandler *this, EmitObjC *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B50A68;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::TransposeOp,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(v5 + 9) + 24);
  if (*(v5 + 9))
  {
    v7 = v5 - 16;
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  v9 = *(*(v5 + 9) + 56);
  v35 = 0;
  v36 = 0;
  v38 = &v35;
  __p.__r_.__value_.__r.__words[0] = v9;
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (DefiningOp && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v38, DefiningOp) & 1) != 0 && (SingleInt = mlir::getSingleIntValue<long long>(v35, v36), (v12 & 1) != 0))
  {
    v13 = SingleInt;
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v13 = -1;
  }

  v14 = *(*(v5 + 9) + 88);
  v35 = 0;
  v36 = 0;
  v38 = &v35;
  __p.__r_.__value_.__r.__words[0] = v14;
  v15 = mlir::Value::getDefiningOp(&__p);
  if (v15 && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v38, v15) & 1) != 0 && (v16 = mlir::getSingleIntValue<long long>(v35, v36), (v17 & 1) != 0))
  {
    v18 = v16;
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v18 = -1;
  }

  v19 = *(*(v5 + 9) + 56);
  v35 = 0;
  v36 = 0;
  v38 = &v35;
  __p.__r_.__value_.__r.__words[0] = v19;
  v20 = mlir::Value::getDefiningOp(&__p);
  if (v20 && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v38, v20) && (v21 = mlir::getSingleIntValue<long long>(v35, v36), (v22 & 1) != 0))
  {
    v13 = v21;
  }

  else if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v23 = MEMORY[0x1E696AEC0];
  v24 = &v35;
  (*(*a2 + 32))(&v35, a2, NextResultAtOffset);
  if (v37 < 0)
  {
    v24 = v35;
  }

  v38 = v6;
  __p.__r_.__value_.__r.__words[0] = &v38;
  v25 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v38);
  v26 = v25 + 3;
  if (*(v25 + 47) < 0)
  {
    v26 = *v26;
  }

  v33 = 0;
  LOBYTE(v32) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v32, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v28 = [v23 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph transposeTensor:%s\n                 dimension:%lld\n             withDimension:%lld\n                      name:%s]\n    ", v24, v26, v13, v18, p_p];;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

LABEL_39:
    operator delete(v32);
    if ((v37 & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

LABEL_40:
    operator delete(v35);
    goto LABEL_37;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v33 < 0)
  {
    goto LABEL_39;
  }

LABEL_36:
  if (v37 < 0)
  {
    goto LABEL_40;
  }

LABEL_37:
  v29 = [*(a2 + 27) stringByAppendingString:v28];
  v30 = *(a2 + 27);
  *(a2 + 27) = v29;

  return this;
}

void sub_1E07FF5D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(a20);
    if ((a19 & 0x80000000) == 0)
    {
LABEL_3:
      if (a31 < 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a19 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a14);
  if (a31 < 0)
  {
LABEL_4:
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  _Unwind_Resume(exception_object);
}

void EmitterObjC::getConstantAxes(void *a1, uint64_t a2)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v6 = v8;
  v7 = 0x400000000;
  mlir::matchConstantWithIntVector<int>(a2, &v6);
  if ((mlir::matchConstantWithIntVector<int>(a2, &v6) & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v7)
  {
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    goto LABEL_4;
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v4 = v7;
  v5 = v6;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (v4)
  {
LABEL_4:
    operator new();
  }

  if (v5 != v8)
  {
    free(v5);
  }
}

void sub_1E07FF7B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10 != v10)
  {
    free(a10);
  }

  _Unwind_Resume(exception_object);
}

EmitterObjC::ConcatOpHandler *EmitterObjC::ConcatOpHandler::ConcatOpHandler(EmitterObjC::ConcatOpHandler *this, EmitObjC *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B50A80;
  v47 = a3;
  mlir::mps::ConcatOp::getODSOperandIndexAndLength(&v47, 0);
  ODSOperandIndexAndLength = mlir::mps::ConcatOp::getODSOperandIndexAndLength(&v47, 0);
  v7 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
  if (v7 != ODSOperandIndexAndLength)
  {
    if (!((v7 - ODSOperandIndexAndLength) >> 61))
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v8 = mlir::mps::ConcatOp::getODSOperandIndexAndLength(&v47, 1u);
  v9 = *(*(v47 + 9) + 32 * v8 + 24);
  if (*(v47 + 9))
  {
    v10 = v47 - 16;
  }

  else
  {
    v10 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0);
  EmitterObjC::getConstantAxes(v46, v9);
  v12 = v46[0];
  if ((v46[1] - v46[0]) != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v39 = *v12;
  v43 = MEMORY[0];
  __p.__r_.__value_.__r.__words[0] = &v43;
  v13 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v43);
  v14 = (v13 + 3);
  if (*(v13 + 47) < 0)
  {
    v14 = *v14;
  }

  v15 = strlen(v14);
  if (v15 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v16 = v15;
  if (v15 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v15;
  if (v15)
  {
    memmove(&__dst, v14, v15);
  }

  __dst.__r_.__value_.__s.__data_[v16] = 0;
  v17 = std::string::insert(&__dst, 0, "@[");
  v18 = *&v17->__r_.__value_.__l.__data_;
  v45.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v45.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v19 = 8;
  do
  {
    v20 = *v19;
    std::string::append(&v45, ", ");
    __p.__r_.__value_.__r.__words[0] = v20;
    __dst.__r_.__value_.__r.__words[0] = &__p;
    v21 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &__p);
    v22 = (v21 + 3);
    if (*(v21 + 47) < 0)
    {
      v22 = *v22;
    }

    std::string::append(&v45, v22);
    v19 += 8;
  }

  while (v19);
  std::string::append(&v45, "]");
  if (*(a3 + 47) && (v48.var0 = "interleave", v48.var1 = 10, InherentAttr = mlir::Operation::getInherentAttr(a3, v48), (v24 & 1) != 0))
  {
    v25 = InherentAttr != 0;
  }

  else
  {
    v49.var0 = "interleave";
    v49.var1 = 10;
    v25 = mlir::DictionaryAttr::contains((a3 + 56), v49);
  }

  v26 = MEMORY[0x1E696AEC0];
  (*(*a2 + 32))(&__dst, a2, NextResultAtOffset);
  v27 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  v28 = __dst.__r_.__value_.__r.__words[0];
  v29 = SHIBYTE(v45.__r_.__value_.__r.__words[2]);
  v30 = v45.__r_.__value_.__r.__words[0];
  v41 = 0;
  LOBYTE(v40) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v40, &__p);
  v31 = "NO";
  if (v25)
  {
    v31 = "YES";
  }

  v32 = &v45;
  if (v29 < 0)
  {
    v32 = v30;
  }

  p_dst = &__dst;
  if (v27 < 0)
  {
    p_dst = v28;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v35 = [v26 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph concatTensors:%s\n               dimension:%d\n              interleave:%s\n                    name:%s]\n    ", p_dst, v32, v39, v31, p_p];;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v41 & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

LABEL_45:
    operator delete(v40);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_46;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v41 < 0)
  {
    goto LABEL_45;
  }

LABEL_38:
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_39;
  }

LABEL_46:
  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_39:
  v36 = [*(a2 + 27) stringByAppendingString:v35];
  v37 = *(a2 + 27);
  *(a2 + 27) = v36;

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (v46[0])
  {
    operator delete(v46[0]);
  }

  operator delete(0);
  return this;
}

void sub_1E07FFD40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (v41)
  {
    operator delete(v41);
    if (!__p)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!__p)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t EmitterObjC::PadOpHandler::PadOpHandler(EmitterObjC::PadOpHandler *this, EmitObjC *a2, mlir::Operation *a3)
{
  v83[6] = *MEMORY[0x1E69E9840];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B50A98;
  v72 = a3;
  v5 = *(*(a3 + 9) + 24);
  if (*(a3 + 9))
  {
    v6 = a3 - 16;
  }

  else
  {
    v6 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
  v8 = *(a3 + 9);
  v9 = *(v8 + 56);
  v10 = *(v8 + 88);
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v72);
  v79 = &v81;
  v80 = 0x400000000;
  mlir::matchConstantWithIntVector<long long>(v9, &v79);
  if ((mlir::matchConstantWithIntVector<long long>(v9, &v79) & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v80 <= 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  std::to_string(&v82, *v79);
  v12 = std::string::insert(&v82, 0, "@[@");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v71.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v71.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  std::to_string(&v82, v79[1]);
  v14 = std::string::insert(&v82, 0, "@[@");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v70.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v70.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
    if (v80 < 3)
    {
      goto LABEL_35;
    }

    goto LABEL_12;
  }

  if (v80 >= 3)
  {
LABEL_12:
    v16 = 0;
    while (1)
    {
      std::to_string(&v69, v79[v16 + 2]);
      v18 = std::string::insert(&v69, 0, ", @");
      v19 = *&v18->__r_.__value_.__l.__data_;
      v82.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
      *&v82.__r_.__value_.__l.__data_ = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &v82;
      }

      else
      {
        v20 = v82.__r_.__value_.__r.__words[0];
      }

      if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v82.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v82.__r_.__value_.__l.__size_;
      }

      std::string::append(&v71, v20, size);
      if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v82.__r_.__value_.__l.__data_);
        if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_34:
          operator delete(v69.__r_.__value_.__l.__data_);
        }
      }

      else if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_34;
      }

      std::to_string(&v69, v79[v16 + 3]);
      v22 = std::string::insert(&v69, 0, ", @");
      v23 = *&v22->__r_.__value_.__l.__data_;
      v82.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
      *&v82.__r_.__value_.__l.__data_ = v23;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v82;
      }

      else
      {
        v24 = v82.__r_.__value_.__r.__words[0];
      }

      if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = HIBYTE(v82.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v25 = v82.__r_.__value_.__l.__size_;
      }

      std::string::append(&v70, v24, v25);
      if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v82.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v69.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

LABEL_31:
        operator delete(v69.__r_.__value_.__l.__data_);
        v26 = v16 + 4;
        v16 += 2;
        if (v26 >= v80)
        {
          break;
        }
      }

      else
      {
        if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_31;
        }

LABEL_14:
        v17 = v16 + 4;
        v16 += 2;
        if (v17 >= v80)
        {
          break;
        }
      }
    }
  }

LABEL_35:
  std::string::append(&v71, "]");
  std::string::append(&v70, "]");
  memset(&v69, 0, sizeof(v69));
  if (*(*mlir::getElementTypeOrSelf(v10) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    *&v82.__r_.__value_.__l.__data_ = 0uLL;
    v78[0] = &v82;
    __p[0] = v10;
    DefiningOp = mlir::Value::getDefiningOp(__p);
    if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v78, DefiningOp))
    {
      SingleInt = mlir::getSingleIntValue<long long>(v82.__r_.__value_.__l.__data_, v82.__r_.__value_.__l.__size_);
      if (v36)
      {
LABEL_61:
        std::to_string(&v82, SingleInt);
        goto LABEL_132;
      }
    }

    else
    {
      SingleInt = 0;
    }

    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    goto LABEL_61;
  }

  v73 = 0uLL;
  __p[0] = &v73;
  v82.__r_.__value_.__r.__words[0] = v10;
  v27 = mlir::Value::getDefiningOp(&v82);
  if (!v27 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(__p, v27) || (v76 = v73, v75[0] = mlir::CallOpInterface::getArgOperands(&v76), v75[1] = v28, ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v75), mlir::ShapedType::getNumElements(ArgAttrsAttr, v30) != 1) || (v82.__r_.__value_.__r.__words[0] = mlir::CallOpInterface::getArgOperands(&v76), v82.__r_.__value_.__l.__size_ = v31, v32 = *(*mlir::ElementsAttr::isSplat(&v82) + 136), v32 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id) && v32 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v32 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v32 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v32 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v32 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v32 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v32 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v32 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v32 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v32 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v32 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v32 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v32 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v32 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v32 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v32 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    _D8 = 0.0;
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    goto LABEL_131;
  }

  v74 = 0.0;
  *__p = v76;
  Type = mlir::ElementsAttr::getType(__p);
  v38 = Type;
  if (Type)
  {
    v39 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  else
  {
    v39 = 0;
  }

  v78[0] = v38;
  v78[1] = v39;
  isSplat = mlir::ElementsAttr::isSplat(v78);
  v40 = mlir::ElementsAttr::isSplat(__p);
  ElementsAttrRawData = mlir::getElementsAttrRawData(__p[0]);
  v43 = v42;
  NumElements = mlir::ElementsAttr::getNumElements(__p[0], __p[1]);
  if (mlir::Type::isUnsignedInteger(&isSplat, 8))
  {
    v46 = NumElements - 1;
    if (NumElements >= 1)
    {
      if (v40)
      {
        v46 = 0;
      }

      LOBYTE(v45) = ElementsAttrRawData[v46];
      _D8 = v45;
      goto LABEL_131;
    }
  }

  else if (mlir::Type::isInteger(&isSplat, 8))
  {
    v47 = NumElements - 1;
    if (NumElements >= 1)
    {
      if (v40)
      {
        v47 = 0;
      }

      _D8 = ElementsAttrRawData[v47];
      goto LABEL_131;
    }
  }

  else if (mlir::Type::isUnsignedInteger(&isSplat, 16))
  {
    v49 = NumElements - 1;
    if (NumElements >= 1)
    {
      if (v40)
      {
        v49 = 0;
      }

      LOWORD(v48) = *&ElementsAttrRawData[2 * v49];
      _D8 = v48;
      goto LABEL_131;
    }
  }

  else if (mlir::Type::isInteger(&isSplat, 16))
  {
    v51 = NumElements - 1;
    if (NumElements >= 1)
    {
      if (v40)
      {
        v51 = 0;
      }

      v50.i16[0] = *&ElementsAttrRawData[2 * v51];
      _D8 = vmovl_s16(v50).i32[0];
      goto LABEL_131;
    }
  }

  else if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    v53 = NumElements - 1;
    if (NumElements >= 1)
    {
      if (v40)
      {
        v53 = 0;
      }

      LODWORD(v52) = *&ElementsAttrRawData[4 * v53];
      _D8 = v52;
      goto LABEL_131;
    }
  }

  else if (mlir::Type::isInteger(&isSplat, 32))
  {
    v54 = NumElements - 1;
    if (NumElements >= 1)
    {
      if (v40)
      {
        v54 = 0;
      }

      _D8 = *&ElementsAttrRawData[4 * v54];
      goto LABEL_131;
    }
  }

  else if (mlir::Type::isUnsignedInteger(&isSplat, 64))
  {
    v55 = NumElements - 1;
    if (NumElements >= 1)
    {
      if (v40)
      {
        v55 = 0;
      }

      _D8 = *&ElementsAttrRawData[8 * v55];
      goto LABEL_131;
    }
  }

  else if (mlir::Type::isInteger(&isSplat, 64))
  {
    v56 = NumElements - 1;
    if (NumElements >= 1)
    {
      if (v40)
      {
        v56 = 0;
      }

      _D8 = *&ElementsAttrRawData[8 * v56];
      goto LABEL_131;
    }
  }

  else if (mlir::Type::isF16(&isSplat))
  {
    v57 = NumElements - 1;
    if (NumElements >= 1)
    {
      if (v40)
      {
        v57 = 0;
      }

      _H0 = *&ElementsAttrRawData[2 * v57];
      __asm { FCVT            D8, H0 }

      goto LABEL_131;
    }
  }

  else if (mlir::Type::isF32(&isSplat))
  {
    if (NumElements >= 1)
    {
      if (v40)
      {
        _D8 = *ElementsAttrRawData;
      }

      else
      {
        _D8 = *&ElementsAttrRawData[4 * NumElements - 4];
      }

      goto LABEL_131;
    }
  }

  else if (mlir::Type::isF64(&isSplat))
  {
    if (NumElements >= 1)
    {
      if (v40)
      {
        _D8 = *ElementsAttrRawData;
      }

      else
      {
        _D8 = *&ElementsAttrRawData[8 * NumElements - 8];
      }

      goto LABEL_131;
    }
  }

  else
  {
    if (!mlir::Type::isBF16(&isSplat))
    {
      if (mlir::Type::isInteger(&isSplat, 1))
      {
        if (v40)
        {
          v64 = 1;
        }

        else
        {
          v64 = NumElements;
        }

        llvm::SmallVector<char,40u>::SmallVector(&v82, v64);
        mlir::detail::unpackBooleanData(ElementsAttrRawData, v43, v82.__r_.__value_.__l.__data_, v82.__r_.__value_.__l.__size_);
        if (NumElements < 1)
        {
          _D8 = 0.0;
        }

        else
        {
          v65 = (v82.__r_.__value_.__r.__words[0] + NumElements - 1);
          if (v40)
          {
            v65 = v82.__r_.__value_.__r.__words[0];
          }

          _D8 = *v65;
        }

        if (v82.__r_.__value_.__l.__data_ != v83)
        {
          free(v82.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        mlir::Type::getIntOrFloatBitWidth(&isSplat);
        IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
        mlir::detail::unpackQuantizedData<double>(ElementsAttrRawData, v43, &v74, NumElements, IntOrFloatBitWidth);
        _D8 = v74;
      }

      goto LABEL_131;
    }

    v63 = NumElements - 1;
    if (NumElements >= 1)
    {
      if (v40)
      {
        v63 = 0;
      }

      _D8 = COERCE_FLOAT(*&ElementsAttrRawData[2 * v63] << 16);
      goto LABEL_131;
    }
  }

  _D8 = 0.0;
LABEL_131:
  std::to_string(&v82, _D8);
LABEL_132:
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  v69 = v82;
  (*(*a2 + 32))(&v82, a2, NextResultAtOffset);
  v78[0] = v5;
  __p[0] = v78;
  if (*(std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, v78) + 47) < 0)
  {
    if (StorageType <= 1)
    {
      goto LABEL_136;
    }
  }

  else if (StorageType <= 1)
  {
LABEL_136:
    if (!StorageType)
    {
      operator new();
    }

    if (StorageType == 1)
    {
      operator new();
    }

    goto LABEL_159;
  }

  if (StorageType == 2)
  {
    operator new();
  }

  if (StorageType == 3)
  {
    operator new();
  }

LABEL_159:
  MTLReportFailureTypeEnabled();
  result = MTLReportFailure();
  __break(1u);
  return result;
}

void sub_1E0800B6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  v54 = *(v52 - 192);
  if (v54 != (v52 - 168))
  {
    free(v54);
  }

  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  v55 = *(v52 - 240);
  if (v55 == a19)
  {
    _Unwind_Resume(exception_object);
  }

  free(v55);
  _Unwind_Resume(exception_object);
}

EmitterObjC::SqueezeOpHandler *EmitterObjC::SqueezeOpHandler::SqueezeOpHandler(EmitterObjC::SqueezeOpHandler *this, EmitObjC *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B50AB0;
  v40 = a3;
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v40, 0);
  v7 = *(*(v40 + 9) + 32 * ODSOperandIndexAndLength + 24);
  if (*(v40 + 9))
  {
    v8 = v40 - 16;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  v10 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v40, 1u);
  if ((*(v40 + 46) & 0x80) == 0)
  {
    v11 = 0;
    v12 = v10;
    if (HIDWORD(v10) + v10 == v10)
    {
      goto LABEL_6;
    }

LABEL_8:
    v13 = *(v11 + 32 * v12 + 24);
    goto LABEL_9;
  }

  v11 = *(v40 + 9);
  v12 = v10;
  if (HIDWORD(v10) + v10 != v10)
  {
    goto LABEL_8;
  }

LABEL_6:
  v13 = 0;
LABEL_9:
  if ((*(a3 + 46) & 0x80) != 0 && *(a3 + 17) == 1)
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = v38;
    (*(*a2 + 32))(v38, a2, NextResultAtOffset);
    if (v39 < 0)
    {
      v15 = v38[0];
    }

    v37 = v7;
    __p.__r_.__value_.__r.__words[0] = &v37;
    v16 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v37);
    v17 = v16 + 3;
    if (*(v16 + 47) < 0)
    {
      v17 = *v17;
    }

    v35 = 0;
    LOBYTE(v34) = 0;
    EmitObjC::emitTensorName(a2, NextResultAtOffset, &v34, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v19 = [v14 stringWithFormat:@"\n        MPSGraphTensor *%s = \n        [graph squeezeTensor:%s\n                        name:%s]\n        ", v15, v17, p_p];;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v35 & 0x80000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else if ((v35 & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    v27 = v34;
  }

  else
  {
    v20 = MEMORY[0x1E696AEC0];
    v21 = v38;
    (*(*a2 + 32))(v38, a2, NextResultAtOffset);
    if (v39 < 0)
    {
      v21 = v38[0];
    }

    v37 = v7;
    __p.__r_.__value_.__r.__words[0] = &v37;
    v22 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v37);
    v23 = v22 + 3;
    if (*(v22 + 47) < 0)
    {
      v23 = *v23;
    }

    v33 = v13;
    __p.__r_.__value_.__r.__words[0] = &v33;
    v24 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v33);
    v25 = v24 + 3;
    if (*(v24 + 47) < 0)
    {
      v25 = *v25;
    }

    v32 = 0;
    LOBYTE(v31) = 0;
    EmitObjC::emitTensorName(a2, NextResultAtOffset, &v31, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &__p;
    }

    else
    {
      v26 = __p.__r_.__value_.__r.__words[0];
    }

    v19 = [v20 stringWithFormat:@"\n        MPSGraphTensor *%s = \n        [graph squeezeTensor:%s\n                  axesTensor:%s\n                        name:%s]\n        ", v21, v23, v25, v26];;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v32 & 0x80000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else if ((v32 & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    v27 = v31;
  }

  operator delete(v27);
LABEL_38:
  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

  v28 = [*(a2 + 27) stringByAppendingString:v19];
  v29 = *(a2 + 27);
  *(a2 + 27) = v28;

  return this;
}

void sub_1E080105C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, _Unwind_Exception *exception_objecta, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(exception_objecta);
  }

  if (*(v31 - 81) < 0)
  {
    operator delete(*(v31 - 104));
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

EmitterObjC::CropOpHandler *EmitterObjC::CropOpHandler::CropOpHandler(EmitterObjC::CropOpHandler *this, EmitObjC *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B50AC8;
  v6 = *(*(a3 + 9) + 24);
  if (*(a3 + 9))
  {
    v7 = a3 - 16;
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  v9 = *(a3 + 9);
  v10 = v9[11];
  v11 = v9[15];
  EmitterObjC::getConstantAxes(v57, v9[7]);
  v12 = v57[0];
  v45 = v57[0];
  if (v57[1] - v57[0] != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v13 = *v12;
  EmitterObjC::getConstantAxes(v56, v10);
  v14 = v56[0];
  v44 = v56[0];
  if (v56[1] - v56[0] != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v15 = *v14;
  EmitterObjC::getConstantAxes(v55, v11);
  v16 = v55[0];
  v43 = v55[0];
  if (v55[1] - v55[0] != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v17 = *v16;
  v18 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v18)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
  }

  else
  {
    v19 = 0;
  }

  v52 = v18;
  v53 = v19;
  if (mlir::CallOpInterface::getArgOperands(&v52))
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v52);
    if (!v21)
    {
LABEL_15:
      v23 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v23)
      {
        v24 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v23 + 8);
      }

      else
      {
        v24 = 0;
      }

      v52 = v23;
      v53 = v24;
      v42 = v17;
      v32 = v15;
      v33 = *(mlir::CallableOpInterface::getArgAttrsAttr(&v52) + 8 * v13);
      v34 = MEMORY[0x1E696AEC0];
      v35 = &v52;
      (*(*a2 + 32))(&v52, a2, NextResultAtOffset);
      if (v54 < 0)
      {
        v35 = v52;
      }

      v51 = v6;
      __p.__r_.__value_.__r.__words[0] = &v51;
      v36 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v51);
      v37 = v36 + 3;
      if (*(v36 + 47) < 0)
      {
        v37 = *v37;
      }

      v49 = 0;
      LOBYTE(v48) = 0;
      EmitObjC::emitTensorName(a2, NextResultAtOffset, &v48, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v30 = [v34 stringWithFormat:@"\n        MPSGraphTensor *%s = \n        [graph sliceTensor:%s\n                 dimension:%d\n                     start:%d\n                    length:%lld\n                      name:%s]\n        ", v35, v37, v13, v32, v33 - (v42 + v32), p_p];;
      v31 = v45;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((v49 & 0x80000000) == 0)
        {
          goto LABEL_40;
        }
      }

      else if ((v49 & 0x80000000) == 0)
      {
        goto LABEL_40;
      }

      operator delete(v48);
      if ((v54 & 0x80000000) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }

    v22 = 8 * v21;
    while (*ArgAttrsAttr != 0x8000000000000000)
    {
      ++ArgAttrsAttr;
      v22 -= 8;
      if (!v22)
      {
        goto LABEL_15;
      }
    }
  }

  v25 = MEMORY[0x1E696AEC0];
  v26 = &v52;
  (*(*a2 + 32))(&v52, a2, NextResultAtOffset);
  if (v54 < 0)
  {
    v26 = v52;
  }

  v51 = v6;
  __p.__r_.__value_.__r.__words[0] = &v51;
  v27 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v51);
  v28 = v27 + 3;
  if (*(v27 + 47) < 0)
  {
    v28 = *v28;
  }

  v47 = 0;
  LOBYTE(v46) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v46, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &__p;
  }

  else
  {
    v29 = __p.__r_.__value_.__r.__words[0];
  }

  v30 = [v25 stringWithFormat:@"\n        MPSGraphTensor *%s = \n        [graph cropTensor:%s\n                dimension:%d\n            amount_before:%d\n             amount_after:%d\n                     name:%s]\n        ", v26, v28, v13, v15, v17, v29];;
  v31 = v45;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v47 < 0)
    {
      goto LABEL_28;
    }
  }

  else if (v47 < 0)
  {
LABEL_28:
    operator delete(v46);
    if (v54 < 0)
    {
      goto LABEL_41;
    }

    goto LABEL_42;
  }

LABEL_40:
  if (v54 < 0)
  {
LABEL_41:
    operator delete(v52);
  }

LABEL_42:
  v39 = [*(a2 + 27) stringByAppendingString:v30];
  v40 = *(a2 + 27);
  *(a2 + 27) = v39;

  operator delete(v43);
  operator delete(v44);
  operator delete(v31);
  return this;
}

void sub_1E0801594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, void *a17, void *a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (__p)
  {
    operator delete(__p);
    if (!a17)
    {
LABEL_3:
      if (!a18)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (!a17)
  {
    goto LABEL_3;
  }

  operator delete(a17);
  if (!a18)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(a18);
  _Unwind_Resume(exception_object);
}

EmitterObjC::SliceOpHandler *EmitterObjC::SliceOpHandler::SliceOpHandler(EmitterObjC::SliceOpHandler *this, EmitObjC *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B50AE0;
  v6 = *(*(a3 + 9) + 24);
  if (*(a3 + 9))
  {
    v7 = a3 - 16;
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  v9 = *(*(a3 + 9) + 56);
  v36 = 0;
  v37 = 0;
  v39 = &v36;
  __p.__r_.__value_.__r.__words[0] = v9;
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (DefiningOp && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v39, DefiningOp) & 1) != 0 && (SingleInt = mlir::getSingleIntValue<long long>(v36, v37), (v12 & 1) != 0))
  {
    v13 = SingleInt;
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v13 = -1;
  }

  v14 = *(*(a3 + 9) + 88);
  v36 = 0;
  v37 = 0;
  v39 = &v36;
  __p.__r_.__value_.__r.__words[0] = v14;
  v15 = mlir::Value::getDefiningOp(&__p);
  if (v15 && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v39, v15) & 1) != 0 && (v16 = mlir::getSingleIntValue<long long>(v36, v37), (v17 & 1) != 0))
  {
    v18 = v16;
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v18 = -1;
  }

  v19 = *(*(a3 + 9) + 120);
  v36 = 0;
  v37 = 0;
  v39 = &v36;
  __p.__r_.__value_.__r.__words[0] = v19;
  v20 = mlir::Value::getDefiningOp(&__p);
  if (v20 && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v39, v20) & 1) != 0 && (v21 = mlir::getSingleIntValue<long long>(v36, v37), (v22 & 1) != 0))
  {
    v23 = v21;
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v23 = -1;
  }

  v24 = MEMORY[0x1E696AEC0];
  v25 = &v36;
  (*(*a2 + 32))(&v36, a2, NextResultAtOffset);
  if (v38 < 0)
  {
    v25 = v36;
  }

  v39 = v6;
  __p.__r_.__value_.__r.__words[0] = &v39;
  v26 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v39);
  v27 = v26 + 3;
  if (*(v26 + 47) < 0)
  {
    v27 = *v27;
  }

  v34 = 0;
  LOBYTE(v33) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v33, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v29 = [v24 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph sliceTensor:%s\n             dimension:%lld\n                 start:%lld\n                length:%lld\n                  name:%s]\n    ", v25, v27, v13, v18, v23, p_p];;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_37:
    operator delete(v33);
    if ((v38 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_38:
    operator delete(v36);
    goto LABEL_35;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v34 < 0)
  {
    goto LABEL_37;
  }

LABEL_34:
  if (v38 < 0)
  {
    goto LABEL_38;
  }

LABEL_35:
  v30 = [*(a2 + 27) stringByAppendingString:v29];
  v31 = *(a2 + 27);
  *(a2 + 27) = v30;

  return this;
}

void sub_1E0801A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a27 < 0)
  {
    operator delete(a22);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if (a33 < 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if (a33 < 0)
  {
LABEL_4:
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  _Unwind_Resume(exception_object);
}

EmitterObjC::ReinterpretCastOpHandler *EmitterObjC::ReinterpretCastOpHandler::ReinterpretCastOpHandler(EmitterObjC::ReinterpretCastOpHandler *this, EmitObjC *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B50AF8;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReinterpretCastOp,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(v5 + 9) + 24);
  v7 = *(v5 + 9);
  v8 = v5 - 16;
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
  MPSDataType = getMPSDataType((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
  v12 = MEMORY[0x1E696AEC0];
  v13 = v30;
  (*(*a2 + 32))(v30, a2, NextResultAtOffset);
  if (v31 < 0)
  {
    v13 = v30[0];
  }

  v29 = v6;
  v27[0] = &v29;
  v14 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v29);
  v15 = v14 + 3;
  if (*(v14 + 47) < 0)
  {
    v15 = *v15;
  }

  EmitterObjC::emitMPSDataType(MPSDataType, v27);
  v16 = v28;
  v17 = v27[0];
  v25 = 0;
  LOBYTE(v24) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v24, &__p);
  v18 = v27;
  if (v16 < 0)
  {
    v18 = v17;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v20 = [v12 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph reinterpretCastTensor:%s\n                          toType:%s\n                            name:%s]\n    ", v13, v15, v18, p_p];;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v25 & 0x80000000) == 0)
    {
LABEL_18:
      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_23:
      operator delete(v27[0]);
      if ((v31 & 0x80000000) == 0)
      {
        goto LABEL_20;
      }

LABEL_24:
      operator delete(v30[0]);
      goto LABEL_20;
    }
  }

  else if ((v25 & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

  operator delete(v24);
  if (v28 < 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  if (v31 < 0)
  {
    goto LABEL_24;
  }

LABEL_20:
  v21 = [*(a2 + 27) stringByAppendingString:v20];
  v22 = *(a2 + 27);
  *(a2 + 27) = v21;

  return this;
}

void sub_1E0801CF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((a19 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a31 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a19 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a14);
  if ((a31 & 0x80000000) == 0)
  {
LABEL_4:
    if (*(v31 - 81) < 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a26);
  if (*(v31 - 81) < 0)
  {
LABEL_5:
    operator delete(*(v31 - 104));
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  _Unwind_Resume(exception_object);
}

EmitterObjC::GatherOpHandler *EmitterObjC::GatherOpHandler::GatherOpHandler(EmitterObjC::GatherOpHandler *this, EmitObjC *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B50B10;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::GatherOp,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v35 = v5;
  v6 = *(v5 + 9);
  v7 = v6[7];
  v8 = v6[3];
  v9 = v6[11];
  v32 = 0;
  v33 = 0;
  v36 = &v32;
  __p.__r_.__value_.__r.__words[0] = v9;
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (DefiningOp && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v36, DefiningOp) & 1) != 0 && (SingleInt = mlir::getSingleIntValue<long long>(v32, v33), (v12 & 1) != 0))
  {
    v13 = SingleInt;
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v13 = -1;
  }

  Count = mlir::pdl_interp::CheckOperandCountOp::getCount(&v35);
  if (*(v35 + 9))
  {
    v15 = v35 - 16;
  }

  else
  {
    v15 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
  getMPSDataType((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
  v17 = MEMORY[0x1E696AEC0];
  v18 = &v32;
  (*(*a2 + 32))(&v32, a2, NextResultAtOffset);
  if (v34 < 0)
  {
    v18 = v32;
  }

  v36 = v8;
  __p.__r_.__value_.__r.__words[0] = &v36;
  v19 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v36);
  v20 = v19 + 3;
  if (*(v19 + 47) < 0)
  {
    v20 = *v20;
  }

  v31 = v7;
  __p.__r_.__value_.__r.__words[0] = &v31;
  v21 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v31);
  v22 = v21 + 3;
  if (*(v21 + 47) < 0)
  {
    v22 = *v22;
  }

  v29 = 0;
  LOBYTE(v28) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v28, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v24 = [v17 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph gatherWithUpdatesTensor:%s\n                     indicesTensor:%s\n                              axis:%lld\n                   batchDimensions:%d\n                            name:%s]\n    ", v18, v20, v22, v13, Count, p_p];;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v29 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_28:
    operator delete(v28);
    if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

LABEL_29:
    operator delete(v32);
    goto LABEL_26;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v29 < 0)
  {
    goto LABEL_28;
  }

LABEL_25:
  if (v34 < 0)
  {
    goto LABEL_29;
  }

LABEL_26:
  v25 = [*(a2 + 27) stringByAppendingString:v24];
  v26 = *(a2 + 27);
  *(a2 + 27) = v25;

  return this;
}