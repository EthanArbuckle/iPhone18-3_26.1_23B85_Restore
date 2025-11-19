uint64_t llvm::cl::list<std::string,llvm::DebugCounter,llvm::cl::parser<std::string>>::list<char [14],llvm::cl::OptionHidden,llvm::cl::desc,llvm::cl::MiscFlags,llvm::cl::LocationClass<llvm::DebugCounter>>(uint64_t a1, const char *a2, _WORD *a3, _OWORD *a4, _WORD *a5, void *a6)
{
  *a1 = &unk_1F5B3E1D8;
  *(a1 + 8) = 0;
  *(a1 + 10) = *(a1 + 10) & 0x8000 | 1;
  v12 = a1 + 80;
  *(a1 + 64) = a1 + 80;
  v13 = a1 + 64;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v15 = *(a1 + 72);
  if (v15 >= *(a1 + 76))
  {
    v22 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v13, v12, v15 + 1, 8);
    GeneralCategory = v22;
    LODWORD(v15) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v15) = GeneralCategory;
  v16 = *(a1 + 72) + 1;
  *(a1 + 128) = 0u;
  *(a1 + 72) = v16;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  *a1 = &unk_1F5B3EE10;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  *(a1 + 192) = &unk_1F5B3E560;
  *(a1 + 200) = &unk_1F5B3EE78;
  *(a1 + 224) = a1 + 200;
  v17 = strlen(a2);
  v18 = llvm::cl::Option::setArgStr(a1, a2, v17);
  v19 = *(a1 + 10) & 0xFF9F | (32 * (*a3 & 3));
  *(a1 + 10) = v19;
  *(a1 + 32) = *a4;
  *(a1 + 10) = ((*a5 & 0x1F) << 9) | v19;
  if (*(a1 + 128))
  {
    v23 = "cl::location(x) specified more than once!";
    v24 = 259;
    v20 = llvm::errs(v18);
    llvm::cl::Option::error(a1, &v23, 0, 0, v20);
  }

  else
  {
    *(a1 + 128) = *a6;
  }

  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t llvm::cl::list<std::string,llvm::DebugCounter,llvm::cl::parser<std::string>>::handleOccurrence(uint64_t a1, int a2, int a3, int a4, void *__src, size_t __len)
{
  __p[0] = 0;
  __p[1] = 0;
  v27 = 0;
  if (*(a1 + 160) == 1)
  {
    *(a1 + 176) = *(a1 + 168);
    *(a1 + 160) = 0;
  }

  if (!__src)
  {
    __dst = 0uLL;
    v29 = 0;
    goto LABEL_16;
  }

  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_35;
  }

  if (__len >= 0x17)
  {
    if ((__len | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (__len | 7) + 1;
    }

    v11 = __src;
    v12 = operator new(v10);
    __src = v11;
    p_dst = v12;
    *(&__dst + 1) = __len;
    v29 = v10 | 0x8000000000000000;
    *&__dst = v12;
LABEL_14:
    memmove(p_dst, __src, __len);
    *(p_dst + __len) = 0;
    if ((SHIBYTE(v27) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  HIBYTE(v29) = __len;
  p_dst = &__dst;
  if (__len)
  {
    goto LABEL_14;
  }

  LOBYTE(__dst) = 0;
  if ((SHIBYTE(v27) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_15:
  operator delete(__p[0]);
LABEL_16:
  *__p = __dst;
  v27 = v29;
  llvm::DebugCounter::push_back(*(a1 + 128), __p);
  *(a1 + 12) = a2;
  v14 = *(a1 + 176);
  v13 = *(a1 + 184);
  if (v14 >= v13)
  {
    v16 = *(a1 + 168);
    v17 = v14 - v16;
    v18 = (v14 - v16) >> 2;
    v19 = v18 + 1;
    if ((v18 + 1) >> 62)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v20 = v13 - v16;
    if (v20 >> 1 > v19)
    {
      v19 = v20 >> 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v21 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v19;
    }

    if (v21)
    {
      if (v21 >> 62)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v22 = operator new(4 * v21);
    }

    else
    {
      v22 = 0;
    }

    v23 = &v22[4 * v18];
    *v23 = a2;
    v15 = v23 + 4;
    memcpy(v22, v16, v17);
    *(a1 + 168) = v22;
    *(a1 + 176) = v15;
    *(a1 + 184) = &v22[4 * v21];
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v14 = a2;
    v15 = v14 + 4;
  }

  *(a1 + 176) = v15;
  v24 = *(a1 + 224);
  if (!v24)
  {
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_35:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  (*(*v24 + 48))(v24, __p);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void anonymous namespace::DebugCounterList::~DebugCounterList(_anonymous_namespace_::DebugCounterList *this)
{
  v1 = llvm::cl::list<std::string,llvm::DebugCounter,llvm::cl::parser<std::string>>::~list(this);

  operator delete(v1);
}

void anonymous namespace::DebugCounterList::printOptionInfo(_anonymous_namespace_::DebugCounterList *this, unsigned int a2)
{
  v39[6] = *MEMORY[0x1E69E9840];
  v4 = llvm::outs(this);
  v5 = v4[4];
  if ((v4[3] - v5) <= 2)
  {
    v4 = llvm::raw_ostream::write(v4, "  -", 3uLL);
    v6 = v4[4];
    v7 = *(this + 2);
    v8 = *(this + 3);
    if (v8 <= v4[3] - v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    llvm::raw_ostream::write(v4, v7, v8);
    goto LABEL_7;
  }

  *(v5 + 2) = 45;
  *v5 = 8224;
  v11 = v4[3];
  v6 = (v4[4] + 3);
  v4[4] = v6;
  v7 = *(this + 2);
  v8 = *(this + 3);
  if (v8 > v11 - v6)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v8)
  {
    v9 = v4;
    v10 = v8;
    memcpy(v6, v7, v8);
    v9[4] += v10;
  }

LABEL_7:
  llvm::cl::Option::printHelpStr(*(this + 4), *(this + 5), a2, *(this + 3) + 6);
  if ((atomic_load_explicit(_MergedGlobals_52, memory_order_acquire) & 1) == 0)
  {
    llvm::initDebugCounterOptions();
    v12 = qword_1EE17CB90;
    v13 = qword_1EE17CB98;
    if (qword_1EE17CB90 == qword_1EE17CB98)
    {
      return;
    }

    while (1)
    {
LABEL_11:
      v34 = llvm::UniqueVector<std::string>::idFor(&qword_1EE17CB78, v12);
      v14 = qword_1EE17CB90 + 24 * (v34 - 1);
      llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>,unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>::lookup(&qword_1EE17CB60, &v34, v35);
      if (*(v14 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v31, *v14, *(v14 + 8));
      }

      else
      {
        v15 = *v14;
        v31.__r_.__value_.__r.__words[2] = *(v14 + 16);
        *&v31.__r_.__value_.__l.__data_ = v15;
      }

      v32 = __p;
      v33 = v37;
      v37 = 0;
      __p = 0uLL;
      v16 = v38;
      if (v38 != v39)
      {
        free(v38);
        if (SHIBYTE(v37) < 0)
        {
          operator delete(__p);
        }
      }

      v17 = (v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v31.__r_.__value_.__r.__words[2]) : LODWORD(v31.__r_.__value_.__r.__words[1]);
      v18 = llvm::outs(v16);
      v19 = v18[4];
      if ((v18[3] - v19) > 4)
      {
        *(v19 + 4) = 61;
        *v19 = 538976288;
        v18[4] += 5;
      }

      else
      {
        v18 = llvm::raw_ostream::write(v18, "    =", 5uLL);
      }

      v20 = a2 - v17;
      v21 = (v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v31 : v31.__r_.__value_.__r.__words[0];
      v22 = (v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v31.__r_.__value_.__r.__words[2]) : v31.__r_.__value_.__l.__size_;
      v23 = llvm::raw_ostream::write(v18, v21, v22);
      v24 = llvm::outs(v23);
      v25 = llvm::raw_ostream::indent(v24, v20 - 8);
      v26 = v25[4];
      if ((v25[3] - v26) > 4)
      {
        *(v26 + 4) = 32;
        *v26 = 538979616;
        v25[4] += 5;
      }

      else
      {
        v25 = llvm::raw_ostream::write(v25, " -   ", 5uLL);
      }

      v27 = v33 >= 0 ? &v32 : v32;
      v28 = v33 >= 0 ? HIBYTE(v33) : *(&v32 + 1);
      v29 = llvm::raw_ostream::write(v25, v27, v28);
      v30 = *(v29 + 4);
      if (v30 >= *(v29 + 3))
      {
        break;
      }

      *(v29 + 4) = v30 + 1;
      *v30 = 10;
      if (SHIBYTE(v33) < 0)
      {
        goto LABEL_40;
      }

LABEL_41:
      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      v12 += 24;
      if (v12 == v13)
      {
        return;
      }
    }

    llvm::raw_ostream::write(v29, 10);
    if ((SHIBYTE(v33) & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_40:
    operator delete(v32);
    goto LABEL_41;
  }

  v12 = qword_1EE17CB90;
  v13 = qword_1EE17CB98;
  if (qword_1EE17CB90 != qword_1EE17CB98)
  {
    goto LABEL_11;
  }
}

void llvm::cl::list<std::string,llvm::DebugCounter,llvm::cl::parser<std::string>>::setDefault(uint64_t *a1)
{
  a1[22] = a1[21];
  v1 = a1[17];
  for (i = a1[18]; v1 != i; v1 += 40)
  {
    llvm::DebugCounter::push_back(a1[16], (v1 + 8));
  }
}

void llvm::cl::list<std::string,llvm::DebugCounter,llvm::cl::parser<std::string>>::~list(void *a1)
{
  v1 = llvm::cl::list<std::string,llvm::DebugCounter,llvm::cl::parser<std::string>>::~list(a1);

  operator delete(v1);
}

void *std::__function::__func<llvm::cl::list<std::string,llvm::DebugCounter,llvm::cl::parser<std::string>>::{lambda(std::string const&)#1},std::allocator<llvm::cl::list<std::string,llvm::DebugCounter,llvm::cl::parser<std::string>>::{lambda(std::string const&)#1}>,void ()(std::string const&)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5B3EE78;
  return result;
}

uint64_t std::__function::__func<llvm::cl::list<std::string,llvm::DebugCounter,llvm::cl::parser<std::string>>::{lambda(std::string const&)#1},std::allocator<llvm::cl::list<std::string,llvm::DebugCounter,llvm::cl::parser<std::string>>::{lambda(std::string const&)#1}>,void ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E099DE7BLL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E099DE7BLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E099DE7BLL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E099DE7BLL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *llvm::cl::list<std::string,llvm::DebugCounter,llvm::cl::parser<std::string>>::~list(void *a1)
{
  *a1 = &unk_1F5B3EE10;
  v2 = a1 + 25;
  v3 = a1[28];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[21];
    if (v4)
    {
LABEL_5:
      a1[22] = v4;
      operator delete(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = a1[21];
    if (v4)
    {
      goto LABEL_5;
    }
  }

  v5 = a1[17];
  if (v5)
  {
    v6 = a1[18];
    v7 = a1[17];
    if (v6 != v5)
    {
      v8 = v6 - 40;
      v9 = a1[18];
      do
      {
        *(v9 - 40) = &unk_1F5AFCAB0;
        v9 -= 40;
        if (*(v9 + 31) < 0)
        {
          operator delete(*(v6 - 32));
        }

        v8 -= 40;
        v6 = v9;
      }

      while (v9 != v5);
      v7 = a1[17];
    }

    a1[18] = v5;
    operator delete(v7);
  }

  *a1 = &unk_1F5B3E1D8;
  v10 = a1[12];
  if (v10 != a1[11])
  {
    free(v10);
  }

  v11 = a1[8];
  if (v11 != a1 + 10)
  {
    free(v11);
  }

  return a1;
}

double llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>,unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>::lookup@<D0>(uint64_t *a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 4);
  if (!v4)
  {
LABEL_21:
    result = 0.0;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 48) = a3 + 64;
    *(a3 + 60) = 3;
    return result;
  }

  v5 = *a1;
  v6 = v4 - 1;
  v7 = (37 * *a2) & (v4 - 1);
  v8 = *(*a1 + 120 * v7);
  if (*a2 != v8)
  {
    v18 = 1;
    while (v8 != -1)
    {
      v19 = v7 + v18++;
      v7 = v19 & v6;
      v8 = *(v5 + 120 * v7);
      if (*a2 == v8)
      {
        goto LABEL_3;
      }
    }

    goto LABEL_21;
  }

LABEL_3:
  v9 = v5 + 120 * v7;
  v10 = v9 + 8;
  v11 = *(v9 + 8);
  *(a3 + 16) = *(v9 + 24);
  *a3 = v11;
  if (*(v9 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a3 + 24), *(v9 + 32), *(v9 + 40));
  }

  else
  {
    v12 = *(v9 + 32);
    *(a3 + 40) = *(v9 + 48);
    *(a3 + 24) = v12;
  }

  v13 = (a3 + 64);
  *(a3 + 48) = a3 + 64;
  *&result = 0x300000000;
  *(a3 + 56) = 0x300000000;
  v15 = *(v10 + 56);
  if (v10 != a3 && v15 != 0)
  {
    if (v15 < 4)
    {
      v17 = *(v10 + 56);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3 + 48, a3 + 64, *(v10 + 56), 16);
      v17 = *(v10 + 56);
      if (!v17)
      {
LABEL_15:
        *(a3 + 56) = v15;
        return result;
      }

      v13 = *(a3 + 48);
    }

    memcpy(v13, *(v10 + 48), 16 * v17);
    goto LABEL_15;
  }

  return result;
}

uint64_t llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::opt<char [20],llvm::cl::OptionHidden,llvm::cl::NumOccurrencesFlag,llvm::cl::LocationClass<BOOL>,llvm::cl::initializer<BOOL>,llvm::cl::desc>(uint64_t a1, char *a2, _WORD *a3, _WORD *a4, _BYTE **a5, _BYTE **a6, __n128 *a7)
{
  *a1 = &unk_1F5B3E1D8;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v14 = a1 + 80;
  *(a1 + 64) = a1 + 80;
  v15 = a1 + 64;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v17 = *(a1 + 72);
  if (v17 >= *(a1 + 76))
  {
    v19 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v15, v14, v17 + 1, 8);
    GeneralCategory = v19;
    LODWORD(v17) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v17) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 145) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_1F5AFB2B0;
  *a1 = &unk_1F5B3EEF8;
  *(a1 + 152) = &unk_1F5B3E320;
  *(a1 + 160) = &unk_1F5B3EFA8;
  *(a1 + 184) = a1 + 160;
  llvm::cl::apply<llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>,char [20],llvm::cl::OptionHidden,llvm::cl::NumOccurrencesFlag,llvm::cl::LocationClass<BOOL>,llvm::cl::initializer<BOOL>,llvm::cl::desc>(a1, a2, a3, a4, a5, a6, a7);
  llvm::cl::Option::addArgument(a1);
  return a1;
}

__n128 llvm::cl::apply<llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>,char [20],llvm::cl::OptionHidden,llvm::cl::NumOccurrencesFlag,llvm::cl::LocationClass<BOOL>,llvm::cl::initializer<BOOL>,llvm::cl::desc>(uint64_t a1, char *__s, _WORD *a3, _WORD *a4, _BYTE **a5, _BYTE **a6, __n128 *a7)
{
  v14 = strlen(__s);
  v15 = llvm::cl::Option::setArgStr(a1, __s, v14);
  v16 = *(a1 + 10) & 0xFF9F | (32 * (*a3 & 3));
  *(a1 + 10) = v16;
  *(a1 + 10) = v16 & 0xFFF8 | *a4 & 7;
  if (*(a1 + 128))
  {
    v21 = "cl::location(x) specified more than once!";
    v22 = 259;
    v17 = llvm::errs(v15);
    llvm::cl::Option::error(a1, &v21, 0, 0, v17);
    v18 = *(a1 + 128);
  }

  else
  {
    v18 = *a5;
    *(a1 + 128) = *a5;
    *(a1 + 145) = 1;
    *(a1 + 144) = *v18;
  }

  v19 = *a6;
  *v18 = **a6;
  *(a1 + 145) = 1;
  *(a1 + 144) = *v19;
  result = *a7;
  *(a1 + 32) = *a7;
  return result;
}

uint64_t llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::handleOccurrence(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6)
{
  v11 = 0;
  result = llvm::cl::parser<BOOL>::parse((a1 + 152), a1, a3, a4, a5, a6, &v11);
  if ((result & 1) == 0)
  {
    v9 = result;
    **(a1 + 128) = v11;
    *(a1 + 12) = a2;
    v10 = *(a1 + 184);
    if (v10)
    {
      (*(*v10 + 48))(v10, &v11);
      return v9;
    }

    else
    {
      std::__throw_bad_function_call[abi:nn200100]();
      return llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::getValueExpectedFlagDefault();
    }
  }

  return result;
}

void *llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::~opt(void *a1)
{
  *a1 = &unk_1F5B3EEF8;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_1F5B3E1D8;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_1F5B3E1D8;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::~opt(char *__p)
{
  *__p = &unk_1F5B3EEF8;
  v2 = __p + 160;
  v3 = *(__p + 23);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *__p = &unk_1F5B3E1D8;
    v4 = *(__p + 12);
    if (v4 != *(__p + 11))
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *__p = &unk_1F5B3E1D8;
    v4 = *(__p + 12);
    if (v4 != *(__p + 11))
    {
      goto LABEL_5;
    }
  }

  v5 = *(__p + 8);
  if (v5 != __p + 80)
  {
    free(v5);
  }

  operator delete(__p);
}

void llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::printOptionValue(uint64_t a1, int a2, char a3)
{
  if ((a3 & 1) != 0 || *(a1 + 145) != 1 || *(a1 + 144) != **(a1 + 128))
  {
    v8 = v3;
    v9 = v4;
    v5 = **(a1 + 128);
    v7 = *(a1 + 144);
    v6 = &unk_1F5AFB2B0;
    llvm::cl::parser<BOOL>::printOptionDiff((a1 + 152), a1, v5, &v6, a2);
  }
}

uint64_t llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::setDefault(uint64_t result)
{
  if (*(result + 145) == 1)
  {
    **(result + 128) = *(result + 144);
  }

  else
  {
    **(result + 128) = 0;
  }

  return result;
}

void *std::__function::__func<llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::{lambda(BOOL const&)#1},std::allocator<llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5B3EFA8;
  return result;
}

uint64_t std::__function::__func<llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::{lambda(BOOL const&)#1},std::allocator<llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E099DFA3)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E099DFA3 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E099DFA3))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E099DFA3 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void llvm::DebugCounter::~DebugCounter(llvm::DebugCounter *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    v3 = *(this + 7);
    v4 = *(this + 6);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 6);
    }

    *(this + 7) = v2;
    operator delete(v4);
  }

  std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(this + 24, *(this + 4));
  v6 = *(this + 4);
  v7 = *this;
  if (v6)
  {
    v8 = v7 + 72;
    v9 = 120 * v6;
    do
    {
      if (*(v8 - 18) <= 0xFFFFFFFD)
      {
        v10 = *(v8 - 2);
        if (v8 != v10)
        {
          free(v10);
        }

        if (*(v8 - 17) < 0)
        {
          operator delete(*(v8 - 5));
        }
      }

      v8 += 120;
      v9 -= 120;
    }

    while (v9);
    v7 = *this;
    v11 = 120 * *(this + 4);
  }

  else
  {
    v11 = 0;
  }

  llvm::deallocate_buffer(v7, v11);
}

void std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
      v4 = a2;
    }

    else
    {
      v4 = a2;
    }

    operator delete(v4);
  }
}

uint64_t llvm::UniqueVector<std::string>::idFor(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a2 + 23);
  v5 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v6 = v4 >= 0 ? a2 : *a2;
  v7 = a1 + 8;
  do
  {
    v8 = *(v3 + 55);
    if (v8 >= 0)
    {
      v9 = *(v3 + 55);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v8 >= 0)
    {
      v10 = (v3 + 32);
    }

    else
    {
      v10 = *(v3 + 32);
    }

    if (v5 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v12 = memcmp(v10, v6, v11);
    v13 = v9 < v5;
    if (v12)
    {
      v13 = v12 < 0;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v7 = v3;
    }

    v3 = *(v3 + v15);
  }

  while (v3);
  if (v7 == v2)
  {
    return 0;
  }

  v16 = *(v7 + 55);
  v17 = v16 >= 0 ? *(v7 + 55) : *(v7 + 40);
  v18 = v16 >= 0 ? (v7 + 32) : *(v7 + 32);
  v19 = v17 >= v5 ? v5 : v17;
  v20 = memcmp(v6, v18, v19);
  v21 = v5 >= v17;
  if (v20)
  {
    v21 = v20 >= 0;
  }

  if (v21)
  {
    return *(v7 + 56);
  }

  else
  {
    return 0;
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>,unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>::LookupBucketFor<unsigned int>(uint64_t *a1, _DWORD *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (37 * *a2) & (v3 - 1);
    v7 = (*a1 + 120 * v6);
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
      while (v8 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -2;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 120 * (v13 & v5));
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

_DWORD *llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>,unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(120 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = 30 * v3;
    llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>,unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>::moveFromOldBuckets(a1, v4, &v4[v10]);

    llvm::deallocate_buffer(v4, (v10 * 4));
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 120 * v11 - 120;
    if (v12 < 0x78)
    {
      v13 = result;
LABEL_14:
      v17 = &result[30 * v11];
      do
      {
        *v13 = -1;
        v13 += 30;
      }

      while (v13 != v17);
      return result;
    }

    v14 = v12 / 0x78 + 1;
    v13 = &result[30 * (v14 & 0x7FFFFFFFFFFFFFELL)];
    v15 = result;
    v16 = v14 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v15 = -1;
      v15[30] = -1;
      v15 += 60;
      v16 -= 2;
    }

    while (v16);
    if (v14 != (v14 & 0x7FFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>,unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>::moveFromOldBuckets(uint64_t a1, int *a2, int *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 120 * v6 - 120;
    if (v8 < 0x78)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[30 * v6];
      do
      {
        *v9 = -1;
        v9 += 30;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x78 + 1;
    v9 = &v7[30 * (v10 & 0x7FFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v11 = -1;
      v11[30] = -1;
      v11 += 60;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0x7FFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  if (a2 != a3)
  {
    do
    {
      v14 = *v4;
      if (*v4 <= 0xFFFFFFFD)
      {
        v15 = *(a1 + 16) - 1;
        v16 = v15 & (37 * v14);
        v17 = *a1 + 120 * v16;
        v18 = *v17;
        if (v14 != *v17)
        {
          v23 = 0;
          v24 = 1;
          while (v18 != -1)
          {
            if (v23)
            {
              v25 = 0;
            }

            else
            {
              v25 = v18 == -2;
            }

            if (v25)
            {
              v23 = v17;
            }

            v26 = v16 + v24++;
            v16 = v26 & v15;
            v17 = *a1 + 120 * v16;
            v18 = *v17;
            if (v14 == *v17)
            {
              goto LABEL_14;
            }
          }

          if (v23)
          {
            v17 = v23;
          }
        }

LABEL_14:
        *v17 = v14;
        v19 = *(v4 + 2);
        *(v17 + 24) = *(v4 + 24);
        *(v17 + 8) = v19;
        v20 = *(v4 + 2);
        *(v17 + 48) = *(v4 + 6);
        *(v17 + 32) = v20;
        *(v4 + 5) = 0;
        *(v4 + 6) = 0;
        *(v4 + 4) = 0;
        *(v17 + 56) = v17 + 72;
        v21 = v17 + 56;
        *(v21 + 8) = 0x300000000;
        if (v4[16])
        {
          llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=(v21, v4 + 7);
        }

        ++*(a1 + 8);
        v22 = *(v4 + 7);
        if (v22 != v4 + 18)
        {
          free(v22);
        }

        if (*(v4 + 55) < 0)
        {
          operator delete(*(v4 + 4));
        }
      }

      v4 += 30;
    }

    while (v4 != a3);
  }
}

uint64_t llvm::array_pod_sort_comparator<llvm::StringRef>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v3 >= v2)
  {
    v4 = *(a1 + 8);
  }

  else
  {
    v4 = *(a2 + 8);
  }

  if (!v4)
  {
    if (v2 >= v3)
    {
      return v3 < v2;
    }

    return 0xFFFFFFFFLL;
  }

  v5 = *a2;
  v6 = *a1;
  v7 = memcmp(*a1, *a2, v4);
  if (!v7)
  {
    if (v2 >= v3)
    {
      goto LABEL_12;
    }

    return 0xFFFFFFFFLL;
  }

  if (v7 < 0)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_12:
  v9 = memcmp(v5, v6, v4);
  if (!v9)
  {
    return v3 < v2;
  }

  return v9 < 0;
}

uint64_t OUTLINED_FUNCTION_0_25(uint64_t a1, uint64_t a2, void *a3)
{
}

void llvm::toString(void **a1@<X0>, std::string *a2@<X8>)
{
  v117[6] = *MEMORY[0x1E69E9840];
  v115 = v117;
  v116 = 0x200000000;
  v3 = *a1;
  *a1 = 0;
  v109 = &v115;
  if (!v3)
  {
    v110 = 0;
    goto LABEL_18;
  }

  if ((*(*v3 + 48))(v3, &llvm::ErrorList::ID))
  {
    v110 = 0;
    v4 = v3[1];
    v5 = v3[2];
    if (v4 != v5)
    {
      v6 = 0;
      do
      {
        v113 = v6;
        v7 = *v4;
        *v4 = 0;
        v111 = v7;
        llvm::handleErrorImpl<llvm::toString(llvm::Error)::$_0>(&v112, &v111, &v109);
        llvm::ErrorList::join(&v113, &v112, &v114);
        v6 = v114;
        v114 = 0;
        if (v112)
        {
          (*(*v112 + 8))(v112);
        }

        v8 = v111;
        v111 = 0;
        if (v8)
        {
          (*(*v8 + 8))(v8);
        }

        if (v113)
        {
          (*(*v113 + 8))(v113);
        }

        ++v4;
      }

      while (v4 != v5);
      v110 = v6;
    }

    v9 = *(*v3 + 8);
  }

  else
  {
    v114 = v3;
    llvm::handleErrorImpl<llvm::toString(llvm::Error)::$_0>(&v110, &v114, &v109);
    if (!v114)
    {
      goto LABEL_18;
    }

    v9 = *(*v114 + 8);
  }

  v9();
LABEL_18:
  v10 = v115;
  v11 = v116;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  if (!v11)
  {
    goto LABEL_54;
  }

  v12 = v11 - 1;
  v13 = 24 * v11 - 24;
  if (v13 >= 0x60)
  {
    v15 = v13 / 0x18;
    v16 = v13 / 0x18 + 1;
    if (v13 >= 0x180)
    {
      v18 = 0uLL;
      v19 = (v11 - 1);
      if ((v16 & 0xF) != 0)
      {
        v20 = v16 & 0xF;
      }

      else
      {
        v20 = 16;
      }

      v21 = v16 - v20;
      v22 = v10 + 191;
      v106 = v20;
      v107 = v16 - v20;
      v23 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
      do
      {
        v29.i8[0] = *(v22 - 168);
        v30.i8[0] = v29.i8[0];
        v30.i8[1] = *(v22 - 144);
        v30.i8[2] = *(v22 - 120);
        v30.i8[3] = *(v22 - 96);
        v30.i8[4] = *(v22 - 72);
        v30.i8[5] = *(v22 - 48);
        v30.i8[6] = *(v22 - 24);
        v30.i8[7] = *v22;
        v31 = (v22 - 183);
        v32 = (v22 - 135);
        v33 = (v22 - 87);
        v34 = (v22 - 39);
        v35 = (v22 + 9);
        v36 = (v22 + 57);
        v37 = vld3q_f64(v31);
        v38 = vld3q_f64(v32);
        v39 = vld3q_f64(v33);
        v40 = vld3q_f64(v34);
        v108 = v40;
        v41 = vld3q_f64(v35);
        v42 = vld3q_f64(v36);
        v30.i8[8] = v22[24];
        v30.i8[9] = v22[48];
        v30.i8[10] = v22[72];
        v30.i8[11] = v22[96];
        v43.i32[0] = v30.i32[2];
        v30.i8[12] = v22[120];
        v30.i8[13] = v22[144];
        v43.i16[2] = v30.i16[6];
        v30.i8[14] = v22[168];
        v43.i8[6] = v30.i8[14];
        v30.i8[15] = v22[192];
        v29.i8[1] = v30.i8[1];
        v29.i8[2] = v30.i8[2];
        v44 = vcltzq_s8(v30);
        v45 = vmovl_high_s8(v44);
        v29.i8[3] = *(v22 - 96);
        v29.i8[4] = *(v22 - 72);
        v46 = vmovl_s8(*v44.i8);
        v47 = vmovl_s16(*v46.i8);
        v29.i8[5] = *(v22 - 48);
        v29.i8[6] = *(v22 - 24);
        v48.i64[0] = v47.i32[0];
        v48.i64[1] = v47.i32[1];
        v49 = v48;
        v29.i8[7] = *v22;
        v50 = vmovl_u8(v29);
        v51 = vmovl_u16(*v50.i8);
        v48.i64[0] = v51.u32[0];
        v48.i64[1] = v51.u32[1];
        v52 = vbslq_s8(v49, v37, v48);
        v53 = vmovl_s16(*v45.i8);
        v43.i8[7] = v22[192];
        v54 = vmovl_u8(v43);
        v55 = vmovl_u16(*v54.i8);
        v48.i64[0] = v53.i32[0];
        v48.i64[1] = v53.i32[1];
        v56 = v48;
        v48.i64[0] = v55.u32[0];
        v48.i64[1] = v55.u32[1];
        v57 = vbslq_s8(v56, v41, v48);
        v58 = vmovl_high_s16(v46);
        v48.i64[0] = v47.i32[2];
        v48.i64[1] = v47.i32[3];
        v59 = v48;
        v48.i64[0] = v51.u32[2];
        v48.i64[1] = v51.u32[3];
        v60 = vbslq_s8(v59, v38, v48);
        v48.i64[0] = v58.i32[0];
        v48.i64[1] = v58.i32[1];
        v61 = v48;
        v62 = (v22 + 105);
        v63 = (v22 + 153);
        v64 = vmovl_high_u16(v50);
        v48.i64[0] = v64.u32[0];
        v48.i64[1] = v64.u32[1];
        v65 = vbslq_s8(v61, v39, v48);
        v66 = vld3q_f64(v62);
        v67 = vld3q_f64(v63);
        v48.i64[0] = v53.i32[2];
        v48.i64[1] = v53.i32[3];
        v68 = v48;
        v48.i64[0] = v55.u32[2];
        v48.i64[1] = v55.u32[3];
        v69 = vbslq_s8(v68, v42, v48);
        v70 = vmovl_high_s16(v45);
        v71 = vmovl_high_u16(v54);
        v48.i64[0] = v70.i32[0];
        v48.i64[1] = v70.i32[1];
        v72 = v48;
        v48.i64[0] = v71.u32[0];
        v48.i64[1] = v71.u32[1];
        v73 = vbslq_s8(v72, v66, v48);
        v48.i64[0] = v58.i32[2];
        v48.i64[1] = v58.i32[3];
        v74 = v48;
        v48.i64[0] = v64.u32[2];
        v48.i64[1] = v64.u32[3];
        v75 = vbslq_s8(v74, v108, v48);
        v48.i64[0] = v70.i32[2];
        v48.i64[1] = v70.i32[3];
        v76 = v48;
        v48.i64[0] = v71.u32[2];
        v48.i64[1] = v71.u32[3];
        v28 = vaddq_s64(vbslq_s8(v76, v67, v48), v28);
        v24 = vaddq_s64(v75, v24);
        v27 = vaddq_s64(v73, v27);
        v26 = vaddq_s64(v69, v26);
        v23 = vaddq_s64(v65, v23);
        v18 = vaddq_s64(v60, v18);
        v25 = vaddq_s64(v57, v25);
        v19 = vaddq_s64(v52, v19);
        v22 += 384;
        v21 -= 16;
      }

      while (v21);
      v12 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v19, v25), vaddq_s64(v23, v27)), vaddq_s64(vaddq_s64(v18, v26), vaddq_s64(v24, v28))));
      if (v106 <= 4)
      {
        v14 = &v10[24 * v107];
        goto LABEL_36;
      }

      v15 = v13 / 0x18;
      v17 = v107;
    }

    else
    {
      v17 = 0;
    }

    v77 = v16 & 3;
    if ((v16 & 3) == 0)
    {
      v77 = 4;
    }

    v14 = &v10[24 * (v16 - v77)];
    v78 = 0uLL;
    v79 = v12;
    v80 = ~v15 + v17 + v77;
    v81 = &v10[24 * v17 + 47];
    v82.i64[0] = 255;
    v82.i64[1] = 255;
    do
    {
      v83 = (v81 - 39);
      v84 = (v81 + 9);
      v85 = vld3q_f64(v83);
      v86 = vld3q_f64(v84);
      v87.i16[0] = *(v81 - 24);
      v87.i16[1] = *v81;
      v87.i16[2] = v81[24];
      v87.i16[3] = v81[48];
      v88 = vmovl_u16(vcltz_s16(vshr_n_s16(vshl_n_s16(v87, 8uLL), 8uLL)));
      v89.i64[0] = v88.u32[0];
      v89.i64[1] = v88.u32[1];
      v90 = vshrq_n_s64(vshlq_n_s64(v89, 0x38uLL), 0x38uLL);
      v89.i64[0] = v88.u32[2];
      v89.i64[1] = v88.u32[3];
      v91 = vshrq_n_s64(vshlq_n_s64(v89, 0x38uLL), 0x38uLL);
      v89.i64[0] = v81[24];
      v89.i64[1] = v81[48];
      v92 = vbicq_s8(v89, v91);
      v89.i64[0] = *(v81 - 24);
      v89.i64[1] = *v81;
      v78 = vaddq_s64(vorrq_s8(vandq_s8(v86, v91), vandq_s8(v92, v82)), v78);
      v79 = vaddq_s64(vorrq_s8(vandq_s8(v85, v90), vandq_s8(vbicq_s8(v89, v90), v82)), v79);
      v81 += 96;
      v80 += 4;
    }

    while (v80);
    v12 = vaddvq_s64(vaddq_s64(v79, v78));
    goto LABEL_36;
  }

  v14 = v10;
  do
  {
LABEL_36:
    v93 = v14[23];
    if ((v93 & 0x80u) != 0)
    {
      v93 = *(v14 + 1);
    }

    v12 += v93;
    v14 += 24;
  }

  while (v14 != &v10[24 * v11]);
  std::string::reserve(a2, v12);
  v94 = v10[23];
  if (v94 >= 0)
  {
    v95 = v10;
  }

  else
  {
    v95 = *v10;
  }

  if (v94 >= 0)
  {
    v96 = v10[23];
  }

  else
  {
    v96 = *(v10 + 1);
  }

  std::string::append(a2, v95, v96);
  if (v11 != 1)
  {
    v97 = v10 + 24;
    do
    {
      std::string::append(a2, "\n", 1uLL);
      v98 = v97[23];
      if (v98 >= 0)
      {
        v99 = v97;
      }

      else
      {
        v99 = *v97;
      }

      if (v98 >= 0)
      {
        v100 = v97[23];
      }

      else
      {
        v100 = *(v97 + 1);
      }

      std::string::append(a2, v99, v100);
      v97 += 24;
      v13 -= 24;
    }

    while (v13);
  }

LABEL_54:
  v101 = v115;
  if (v116)
  {
    v102 = v115 + 24 * v116 - 1;
    v103 = -24 * v116;
    v104 = v102;
    do
    {
      v105 = *v104;
      v104 -= 24;
      if (v105 < 0)
      {
        operator delete(*(v102 - 23));
      }

      v102 = v104;
      v103 += 24;
    }

    while (v103);
    v101 = v115;
  }

  if (v101 != v117)
  {
    free(v101);
  }
}

uint64_t llvm::ErrorList::convertToErrorCode(llvm::ErrorList *this)
{
  {
    llvm::ErrorList::convertToErrorCode();
  }

  return 1;
}

uint64_t llvm::inconvertibleErrorCode(llvm *this)
{
  {
    llvm::ErrorList::convertToErrorCode();
  }

  return 3;
}

unint64_t llvm::FileError::convertToErrorCode(llvm::FileError *this)
{
  v1 = (*(**(this + 6) + 32))(*(this + 6));
  {
    v3 = v1;
    if (v2 != &getErrorErrorCat(void)::ErrorErrorCat || v1 != 3)
    {
      return v1 & 0xFFFFFFFF00000000 | v3;
    }
  }

  else
  {
    v7 = v1;
    v8 = v2;
    llvm::ErrorList::convertToErrorCode();
    v1 = v7;
    v3 = v7;
    if (v8 != &getErrorErrorCat(void)::ErrorErrorCat || v7 != 3)
    {
      return v1 & 0xFFFFFFFF00000000 | v3;
    }
  }

  {
    return 2;
  }

  return 2;
}

void *llvm::errorCodeToError@<X0>(llvm *this@<X0>, std::error_code a2@<0:X1, 8:X2>, void *a3@<X8>)
{
  if (this)
  {
    v5 = *&a2.__val_;
    result = operator new(0x18uLL);
    *result = &unk_1F5B3F108;
    result[1] = this;
    result[2] = v5;
    *a3 = result;
  }

  else
  {
    result = 0;
    *a3 = 0;
  }

  return result;
}

uint64_t llvm::errorToErrorCode(void **a1)
{
  v14.__val_ = 0;
  v14.__cat_ = std::system_category();
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if ((*(*v2 + 48))(v2, &llvm::ErrorList::ID))
    {
      v3 = v2[1];
      v4 = v2[2];
      if (v3 != v4)
      {
        v5 = 0;
        do
        {
          v11.__r_.__value_.__r.__words[0] = v5;
          v6 = *v3;
          *v3 = 0;
          if ((*(*v6 + 48))(v6, &llvm::ErrorInfoBase::ID))
          {
            *&v14.__val_ = (*(*v6 + 32))(v6);
            v14.__cat_ = v7;
            (*(*v6 + 8))(v6);
            v6 = 0;
          }

          v15 = v6;
          llvm::ErrorList::join(&v11, &v15, v12);
          v5 = v12[0];
          v12[0] = 0;
          if (v15)
          {
            (*(*v15 + 8))(v15);
          }

          if (v11.__r_.__value_.__r.__words[0])
          {
            (*(*v11.__r_.__value_.__l.__data_ + 8))(v11.__r_.__value_.__r.__words[0]);
          }

          ++v3;
        }

        while (v3 != v4);
      }
    }

    else
    {
      (*(*v2 + 48))(v2, &llvm::ErrorInfoBase::ID);
      *&v14.__val_ = (*(*v2 + 32))(v2);
      v14.__cat_ = v8;
    }

    (*(*v2 + 8))(v2);
  }

  {
    llvm::errorToErrorCode();
  }

  if (v14.__cat_ == &getErrorErrorCat(void)::ErrorErrorCat && v14.__val_ == 3)
  {
    std::error_code::message(&v11, &v14);
    v13 = 260;
    v12[0] = &v11;
    llvm::report_fatal_error(v12, 1);
  }

  return *&v14.__val_;
}

uint64_t llvm::StringError::StringError(uint64_t a1, llvm::Twine *a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_1F5B3F028;
  llvm::Twine::str(a2, (a1 + 8));
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  *(a1 + 48) = 1;
  return a1;
}

void llvm::StringError::log(const std::error_code *this, llvm::raw_ostream *a2)
{
  if (LOBYTE(this[3].__val_) == 1)
  {
    cat_high = SHIBYTE(this[1].__cat_);
    if (cat_high >= 0)
    {
      p_cat = &this->__cat_;
    }

    else
    {
      p_cat = this->__cat_;
    }

    if (cat_high >= 0)
    {
      v6 = HIBYTE(this[1].__cat_);
    }

    else
    {
      v6 = *&this[1].__val_;
    }

    llvm::raw_ostream::write(a2, p_cat, v6);
    return;
  }

  std::error_code::message(&v12, this + 2);
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v12;
  }

  else
  {
    v7 = v12.__r_.__value_.__r.__words[0];
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v12.__r_.__value_.__l.__size_;
  }

  llvm::raw_ostream::write(a2, v7, size);
  if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v9 = SHIBYTE(this[1].__cat_);
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_22:
    if (!*&this[1].__val_)
    {
      return;
    }

    goto LABEL_23;
  }

  operator delete(v12.__r_.__value_.__l.__data_);
  v9 = SHIBYTE(this[1].__cat_);
  if (v9 < 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  if (!v9)
  {
    return;
  }

LABEL_23:
  std::operator+<char>();
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v12;
  }

  else
  {
    v10 = v12.__r_.__value_.__r.__words[0];
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = v12.__r_.__value_.__l.__size_;
  }

  llvm::raw_ostream::write(a2, v10, v11);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void llvm::createStringError(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x38uLL);
  v10 = 260;
  v9[0] = a1;
  *v8 = &unk_1F5B3F028;
  llvm::Twine::str(v9, (v8 + 8));
  *(v8 + 4) = a2;
  *(v8 + 5) = a3;
  v8[48] = 1;
  *a4 = v8;
}

void llvm::ErrorInfoBase::message(llvm::ErrorInfoBase *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = 0;
  v8 = 0;
  v9 = 1;
  v6 = 0;
  v7 = 0;
  v5 = 0;
  v3 = &unk_1F5B3FB30;
  v10 = a2;
  llvm::raw_ostream::SetBufferAndMode(&v3, 0, 0, 0);
  (*(*this + 16))(this, &v3);
  llvm::raw_ostream::~raw_ostream(&v3);
}

void llvm::ErrorList::~ErrorList(llvm::ErrorList *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 1);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(this + 1);
    }

    *(this + 2) = v2;
    operator delete(v4);
  }
}

{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 1);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(this + 1);
    }

    *(this + 2) = v2;
    operator delete(v4);
  }

  operator delete(this);
}

void *llvm::ErrorList::log(void *this, llvm::raw_ostream *a2)
{
  v3 = this;
  v4 = *(a2 + 4);
  if ((*(a2 + 3) - v4) > 0x10)
  {
    *(v4 + 16) = 10;
    *v4 = *"Multiple errors:\n";
    *(a2 + 4) += 17;
    v5 = this[1];
    for (i = this[2]; v5 != i; ++v5)
    {
LABEL_7:
      while (1)
      {
        this = (*(**v5 + 16))(*v5, a2);
        v7 = *(a2 + 4);
        if (*(a2 + 3) == v7)
        {
          break;
        }

        *v7 = 10;
        ++*(a2 + 4);
        if (++v5 == i)
        {
          return this;
        }
      }

      this = llvm::raw_ostream::write(a2, "\n", 1uLL);
    }
  }

  else
  {
    this = llvm::raw_ostream::write(a2, "Multiple errors:\n", 0x11uLL);
    v5 = v3[1];
    i = v3[2];
    if (v5 != i)
    {
      goto LABEL_7;
    }
  }

  return this;
}

void llvm::ECError::log(llvm::ECError *this, llvm::raw_ostream *a2)
{
  std::error_code::message(&v5, (this + 8));
  if ((v5.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = &v5;
  }

  else
  {
    v3 = v5.__r_.__value_.__r.__words[0];
  }

  if ((v5.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v5.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v5.__r_.__value_.__l.__size_;
  }

  llvm::raw_ostream::write(a2, v3, size);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void llvm::FileError::~FileError(llvm::FileError *this)
{
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
    v3 = this;
  }

  else
  {
    v3 = this;
  }

  operator delete(v3);
}

uint64_t llvm::FileError::log(llvm::FileError *this, llvm::raw_ostream *a2)
{
  v4 = *(a2 + 4);
  if (*(a2 + 3) == v4)
  {
    v5 = llvm::raw_ostream::write(a2, "'", 1uLL);
  }

  else
  {
    *v4 = 39;
    ++*(a2 + 4);
    v5 = a2;
  }

  v6 = *(this + 31);
  if (v6 >= 0)
  {
    v7 = this + 8;
  }

  else
  {
    v7 = *(this + 1);
  }

  if (v6 >= 0)
  {
    v8 = *(this + 31);
  }

  else
  {
    v8 = *(this + 2);
  }

  v9 = llvm::raw_ostream::write(v5, v7, v8);
  v10 = v9[4];
  if ((v9[3] - v10) > 2)
  {
    *(v10 + 2) = 32;
    *v10 = 14887;
    v9[4] += 3;
    if (*(this + 40) != 1)
    {
      goto LABEL_19;
    }

LABEL_14:
    v11 = *(a2 + 4);
    if ((*(a2 + 3) - v11) > 4)
    {
      *(v11 + 4) = 32;
      *v11 = 1701734764;
      *(a2 + 4) += 5;
      v13 = llvm::raw_ostream::operator<<(a2, *(this + 4));
      v14 = *(v13 + 4);
      if (*(v13 + 3) - v14 > 1uLL)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v12 = llvm::raw_ostream::write(a2, "line ", 5uLL);
      v13 = llvm::raw_ostream::operator<<(v12, *(this + 4));
      v14 = *(v13 + 4);
      if (*(v13 + 3) - v14 > 1uLL)
      {
LABEL_16:
        *v14 = 8250;
        *(v13 + 4) += 2;
        goto LABEL_19;
      }
    }

    llvm::raw_ostream::write(v13, ": ", 2uLL);
    goto LABEL_19;
  }

  llvm::raw_ostream::write(v9, "': ", 3uLL);
  if (*(this + 40) == 1)
  {
    goto LABEL_14;
  }

LABEL_19:
  v15 = *(**(this + 6) + 16);

  return v15();
}

void llvm::StringError::~StringError(void **this)
{
  *this = &unk_1F5B3F028;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B3F028;
  if (*(this + 31) < 0)
  {
    v2 = this;
    operator delete(this[1]);
    this = v2;
  }

  operator delete(this);
}

void anonymous namespace::ErrorErrorCategory::~ErrorErrorCategory(std::error_category *this)
{
  std::error_category::~error_category(this);

  operator delete(v1);
}

void anonymous namespace::ErrorErrorCategory::message(int a1@<W1>, uint64_t a2@<X8>)
{
  if (a1 == 3)
  {
    v4 = operator new(0x80uLL);
    *a2 = v4;
    *(a2 + 8) = xmmword_1E099DFD0;
    strcpy(v4, "Inconvertible error value. An error has occurred that could not be converted to a known std::error_code. Please file a bug.");
  }

  else if (a1 == 2)
  {
    *(a2 + 23) = 22;
    strcpy(a2, "A file error occurred.");
  }

  else
  {
    *(a2 + 23) = 15;
    strcpy(a2, "Multiple errors");
  }
}

uint64_t llvm::handleErrorImpl<llvm::toString(llvm::Error)::$_0>(void *a1, void *a2, uint64_t *a3)
{
  result = (*(**a2 + 48))(*a2, &llvm::ErrorInfoBase::ID);
  v7 = *a2;
  *a2 = 0;
  if (result)
  {
    v8 = *a3;
    v9 = __p;
    (*(*v7 + 24))(__p, v7);
    v10 = *(v8 + 8);
    v11 = *v8;
    if (v10 >= *(v8 + 12))
    {
      if (v11 <= __p && v11 + 24 * v10 > __p)
      {
        v14 = __p - v11;
        llvm::SmallVectorTemplateBase<std::string,false>::grow(v8, v10 + 1);
        v11 = *v8;
        v9 = &v14[*v8];
      }

      else
      {
        llvm::SmallVectorTemplateBase<std::string,false>::grow(v8, v10 + 1);
        v11 = *v8;
        v9 = __p;
      }
    }

    v12 = v11 + 24 * *(v8 + 8);
    v13 = *v9;
    *(v12 + 16) = v9[2];
    *v12 = v13;
    v9[1] = 0;
    v9[2] = 0;
    *v9 = 0;
    ++*(v8 + 8);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    *a1 = 0;
    return (*(*v7 + 8))(v7);
  }

  else
  {
    *a1 = v7;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_26(uint64_t a1, void *a2, void *a3)
{
}

void llvm::report_fatal_error(llvm *this, const char *a2)
{
  v2 = 1;
  v5 = 1;
  if (*this)
  {
    v3 = this;
    v2 = 3;
  }

  v4 = v2;
  llvm::report_fatal_error(&v3, a2);
}

void llvm::report_fatal_error(llvm::Twine *a1, uint64_t a2)
{
  std::mutex::lock(&_MergedGlobals_44);
  v5 = _MergedGlobals_9;
  v4 = unk_1ECE752B0;
  std::mutex::unlock(&_MergedGlobals_44);
  if (v5)
  {
    llvm::Twine::str(a1, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v10 = v5(v4, p_p, a2);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

LABEL_14:
    llvm::sys::RunInterruptHandlers(v10);
    if (a2)
    {
      abort();
    }

    exit(1);
  }

  v18 = &__p;
  __p.__r_.__value_.__r.__words[0] = v20;
  *&__p.__r_.__value_.__r.__words[1] = xmmword_1E0970870;
  v12 = 2;
  v16 = 0;
  v17 = 1;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v11 = &unk_1F5B3FBC0;
  llvm::raw_ostream::SetBufferAndMode(&v11, 0, 0, 0);
  v6 = v15;
  if ((v14 - v15) > 0xB)
  {
    *(v15 + 8) = 540693071;
    *v6 = *"LLVM ERROR: ";
    v15 += 12;
    v7 = &v11;
    llvm::Twine::print(a1, &v11);
    v8 = v15;
    if (v14 != v15)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(&v11, "LLVM ERROR: ", 0xCuLL);
    llvm::Twine::print(a1, v7);
    v8 = v7[4];
    if (v7[3] != v8)
    {
LABEL_4:
      *v8 = 10;
      v7[4] = v7[4] + 1;
      goto LABEL_12;
    }
  }

  llvm::raw_ostream::write(v7, "\n", 1uLL);
LABEL_12:
  write(2, v18->__r_.__value_.__l.__data_, v18->__r_.__value_.__l.__size_);
  llvm::raw_ostream::~raw_ostream(&v11);
  v10 = __p.__r_.__value_.__r.__words[0];
  if (__p.__r_.__value_.__l.__data_ != v20)
  {
    free(__p.__r_.__value_.__l.__data_);
  }

  goto LABEL_14;
}

void llvm::report_bad_alloc_error(llvm *this, const char *a2)
{
  std::mutex::lock(&stru_1EE17C860);
  v5 = qword_1ECE752B8;
  v4 = unk_1ECE752C0;
  std::mutex::unlock(&stru_1EE17C860);
  if (!v5)
  {
    write(2, "LLVM ERROR: out of memory\n", 0x1AuLL);
    v6 = strlen(this);
    write(2, this, v6);
    write(2, "\n", 1uLL);
    abort();
  }

  v5(v4, this, a2);
  __break(1u);
}

uint64_t _GLOBAL__sub_I_ErrorHandling_cpp()
{
  v0 = MEMORY[0x1E69E5328];
  __cxa_atexit(MEMORY[0x1E69E5328], &_MergedGlobals_44, &dword_1DF9BF000);

  return __cxa_atexit(v0, &stru_1EE17C860, &dword_1DF9BF000);
}

BOOL llvm::ExponentialBackoff::waitForNextAttempt(llvm::ExponentialBackoff *this)
{
  v2.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v3 = *(this + 2);
  if (v2.__d_.__rep_ < v3)
  {
    if (*(this + 1) >= *(this + 4) * *this)
    {
      v4 = *(this + 4) * *this;
    }

    else
    {
      v4 = *(this + 1);
    }

    v10[0] = *this;
    v10[1] = v4;
    v5 = std::uniform_int_distribution<unsigned long long>::operator()<std::random_device>(v10, this + 24, v10);
    v6 = *(this + 1);
    v7 = *(this + 2) - v2.__d_.__rep_;
    if (v7 >= v5)
    {
      v7 = v5;
    }

    __ns.__rep_ = v7;
    if (v4 < v6)
    {
      *(this + 4) *= 2;
    }

    std::this_thread::sleep_for (&__ns);
  }

  return v2.__d_.__rep_ < v3;
}

unint64_t std::uniform_int_distribution<unsigned long long>::operator()<std::random_device>(uint64_t a1, uint64_t a2, void *a3)
{
  result = a3[1];
  v4 = result - *a3;
  if (result == *a3)
  {
    return result;
  }

  v5 = v4 + 1;
  if (v4 == -1)
  {
    v14 = arc4random();
    return arc4random() | (v14 << 32);
  }

  v6 = __clz(v5);
  v7 = 63;
  if (((v5 << v6) & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = 64;
  }

  v8 = v7 - v6;
  if ((v8 & 0x1F) != 0)
  {
    v9 = (v8 >> 5) + 1;
  }

  else
  {
    v9 = v8 >> 5;
  }

  v10 = v8 / v9;
  if (v10 >= 0x40)
  {
    v11 = 0;
  }

  else
  {
    v11 = (-1 << v10) & 0x100000000;
  }

  if ((v11 ^ 0x100000000) > v11 / v9)
  {
    v10 = v8 / ++v9;
    if (v10 > 0x3F)
    {
      v11 = 0;
      v13 = 0;
      v12 = v9 - (v8 % v9);
      v10 = 64;
      goto LABEL_19;
    }

    v11 = (-1 << (v8 / v9)) & 0x100000000;
  }

  v12 = v9 - v8 % v9;
  if (v10 <= 0x3E)
  {
    v13 = 0x80000000uLL >> v10 << (v10 + 1);
  }

  else
  {
    v13 = 0;
  }

LABEL_19:
  if (v10)
  {
    v15 = 0xFFFFFFFF >> -v10;
  }

  else
  {
    v15 = 0;
  }

  v16 = 0xFFFFFFFF >> ~v10;
  if (v10 >= 0x1F)
  {
    v16 = -1;
  }

  v40 = v16;
  v17 = v10 + 1;
  if (v12)
  {
    if (v12 < v9)
    {
      v38 = v10;
      v39 = v5;
      while (v10 < 0x40)
      {
        v18 = 0;
        for (i = 0; i != v12; ++i)
        {
          do
          {
            v20 = arc4random();
          }

          while (v11 <= v20);
          v18 = (v18 << v10) + (v20 & v15);
        }

        v21 = v10;
        v22 = v12;
        v23 = v12;
        if (v21 >= 0x3F)
        {
          goto LABEL_41;
        }

        do
        {
          do
          {
            v25 = arc4random();
          }

          while (v13 <= v25);
          v18 = (v18 << v17) + (v25 & v40);
          ++v23;
        }

        while (v23 < v9);
LABEL_27:
        v10 = v38;
        if (v18 < v39)
        {
          return *a3 + v18;
        }
      }

      for (j = 0; j != v12; ++j)
      {
          ;
        }
      }

      v22 = v12;
      do
      {
        do
        {
LABEL_41:
          v26 = arc4random();
        }

        while (v13 <= v26);
        ++v22;
      }

      while (v22 < v9);
      v18 = v26 & v40;
      goto LABEL_27;
    }

    if (v10 >= 0x40)
    {
      v33 = 0;
      while (1)
      {
        do
        {
          v34 = arc4random();
        }

        while (v11 <= v34);
        if (++v33 == v12)
        {
          v33 = 0;
          v18 = v34 & v15;
          if (v5 > v18)
          {
            break;
          }
        }
      }
    }

    else
    {
      v30 = 0;
      v31 = 0;
      while (1)
      {
        do
        {
          v32 = arc4random();
        }

        while (v11 <= v32);
        v18 = (v30 << v10) + (v32 & v15);
        ++v31;
        v30 = v18;
        if (v31 == v12)
        {
          v30 = 0;
          v31 = 0;
          if (v18 < v5)
          {
            break;
          }
        }
      }
    }
  }

  else if (v9)
  {
    if (v10 >= 0x3F)
    {
      v35 = 0;
      while (1)
      {
        do
        {
          v36 = arc4random();
        }

        while (v13 <= v36);
        if (++v35 >= v9)
        {
          v35 = 0;
          v18 = v36 & v40;
          if (v5 > v18)
          {
            break;
          }
        }
      }
    }

    else
    {
      v27 = 0;
      v28 = 0;
      while (1)
      {
        do
        {
          v29 = arc4random();
        }

        while (v13 <= v29);
        v18 = (v27 << v17) + (v29 & v40);
        ++v28;
        v27 = v18;
        if (v28 >= v9)
        {
          v27 = 0;
          v28 = 0;
          if (v18 < v5)
          {
            break;
          }
        }
      }
    }
  }

  else
  {
    v18 = 0;
  }

  return *a3 + v18;
}

char *llvm::formatv_object_base::parseFormatString@<X0>(char *result@<X0>, size_t a2@<X1>, void *a3@<X8>)
{
  v3 = a3;
  *a3 = a3 + 2;
  a3[1] = 0x200000000;
  if (a2)
  {
    v83 = 0;
    do
    {
      v9 = result;
      v10 = a2;
      LOBYTE(v85) = 0;
      v89 = 0;
      if (*result != 123)
      {
        v30 = memchr(result, 123, a2);
        v3 = a3;
        v16 = 0;
        v21 = 0;
        v15 = 0;
        v22 = 0;
        v23 = 0;
        v26 = 0;
        v31 = v30 - v9;
        if (!v30)
        {
          v31 = -1;
        }

        if (v10 >= v31)
        {
          v24 = v31;
        }

        else
        {
          v24 = v10;
        }

        result = &v9[v24];
        a2 = v10 - v24;
        goto LABEL_37;
      }

      v11 = 1;
      do
      {
        if (a2 == v11)
        {
          v13 = -1;
          if (a2 != -1)
          {
            v13 = a2;
          }

          if (v13 >= 2)
          {
            goto LABEL_32;
          }

LABEL_13:
          v14 = memchr(result, 125, a2);
          v15 = 0;
          v16 = 0;
          v17 = 1;
          v18 = 2;
          if (!v14)
          {
            v21 = 0;
            v22 = 0;
            v23 = 0;
            v24 = 64;
            v25 = "Unterminated brace sequence. Escape with {{ for a literal brace.";
            v26 = 0;
            v27 = 1;
            a2 = 0;
            result = 0;
            v3 = a3;
            goto LABEL_38;
          }

          v19 = v14;
          v20 = (v14 - v9);
          v21 = 0;
          v22 = 0;
          v23 = 0;
          v24 = 64;
          v25 = "Unterminated brace sequence. Escape with {{ for a literal brace.";
          v26 = 0;
          v27 = 1;
          a2 = 0;
          result = 0;
          v3 = a3;
          if (v20 == -1)
          {
            goto LABEL_38;
          }

          if (v10 != 1)
          {
            v28 = memchr((v9 + 1), 123, v10 - 1);
            v29 = v28 - v9;
            if (!v28)
            {
              v29 = -1;
            }

            if (v29 < v20)
            {
              v16 = 0;
              v21 = 0;
              v15 = 0;
              v22 = 0;
              v23 = 0;
              v26 = 0;
              if (v10 >= v29)
              {
                v24 = v29;
              }

              else
              {
                v24 = v10;
              }

              result = &v9[v24];
              a2 = v10 - v24;
              v17 = 1;
              v18 = 2;
              v25 = v9;
              v27 = 1;
              v3 = a3;
              goto LABEL_38;
            }
          }

          if (v9 == v19)
          {
            v34 = 1;
          }

          else
          {
            v34 = v20;
          }

          if (v34 >= v10)
          {
            v34 = v10;
          }

          v35 = v34 - 1;
          if (v10 >= (v20 + 1))
          {
            v36 = (v20 + 1);
          }

          else
          {
            v36 = v10;
          }

          v92 = v9 + 1;
          v93 = v35;
          v18 = 2;
          first_not_of = llvm::StringRef::find_first_not_of(&v92, "{}", 2, 0);
          if (first_not_of >= v93)
          {
            v38 = v93;
          }

          else
          {
            v38 = first_not_of;
          }

          v39 = v93 - v38;
          v94 = &v92[v38];
          v95 = v93 - v38;
          last_not_of = llvm::StringRef::find_last_not_of(&v94, "{}", 2, 0xFFFFFFFFFFFFFFFFLL);
          if (last_not_of + 1 < v95)
          {
            v41 = last_not_of + 1;
          }

          else
          {
            v41 = v95;
          }

          v42 = v95 - v39 + v41;
          if (v95 < v42)
          {
            v42 = v95;
          }

          v90 = v94;
          v91 = v42;
          v43 = llvm::StringRef::find_first_not_of(&v90, " \t\n\v\f\r", 6, 0);
          if (v43 >= v91)
          {
            v44 = v91;
          }

          else
          {
            v44 = v43;
          }

          v45 = v91 - v44;
          v94 = v90 + v44;
          v95 = v91 - v44;
          v46 = llvm::StringRef::find_last_not_of(&v94, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
          if (v46 + 1 < v95)
          {
            v48 = v46 + 1;
          }

          else
          {
            v48 = v95;
          }

          v49 = v95 - v45 + v48;
          if (v95 < v49)
          {
            v49 = v95;
          }

          v90 = v94;
          v91 = v49;
          v94 = 0;
          v50 = llvm::consumeUnsignedInteger(&v90, 0, &v94, v47);
          if (HIDWORD(v94))
          {
            v51 = -1;
          }

          else
          {
            v51 = v94;
          }

          if (v50)
          {
            v23 = -1;
          }

          else
          {
            v23 = v51;
          }

          v52 = llvm::StringRef::find_first_not_of(&v90, " \t\n\v\f\r", 6, 0);
          if (v52 >= v91)
          {
            v53 = v91;
          }

          else
          {
            v53 = v52;
          }

          v54 = v91 - v53;
          v94 = v90 + v53;
          v95 = v91 - v53;
          v55 = llvm::StringRef::find_last_not_of(&v94, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
          if (v55 + 1 < v95)
          {
            v57 = v55 + 1;
          }

          else
          {
            v57 = v95;
          }

          v58 = v95 - v54 + v57;
          if (v95 < v58)
          {
            v58 = v95;
          }

          v90 = v94;
          v91 = v58;
          if (!v58)
          {
            v22 = 0;
            v15 = 32;
            goto LABEL_100;
          }

          if (*v94 != 44)
          {
            v22 = 0;
            v15 = 32;
            v18 = 2;
            goto LABEL_100;
          }

          v15 = 32;
          v18 = 2;
          v90 = v94 + 1;
          v91 = v58 - 1;
          if (v58 == 1)
          {
            v22 = 0;
            goto LABEL_100;
          }

          if (v58 == 2)
          {
            goto LABEL_98;
          }

          v59 = v94 + 2;
          v60 = *(v94 + 2);
          switch(v60)
          {
            case '+':
              v18 = 2;
              break;
            case '-':
              v18 = 0;
              break;
            case '=':
              v18 = 1;
              break;
            default:
              v80 = *(v94 + 1);
              switch(v80)
              {
                case '+':
                  v18 = 2;
                  break;
                case '-':
                  v18 = 0;
                  break;
                case '=':
                  v18 = 1;
                  break;
                default:
                  v18 = 2;
                  v94 = 0;
                  if (llvm::consumeUnsignedInteger(&v90, 0, &v94, v56))
                  {
LABEL_142:
                    v17 = 0;
                    v3 = a3;
LABEL_133:
                    v27 = 0;
                    result = &v9[v36];
                    a2 = v10 - v36;
                    LOWORD(v92) = v94;
                    BYTE2(v92) = BYTE2(v94);
                    v26 = 1;
                    goto LABEL_38;
                  }

LABEL_99:
                  v22 = v94;
                  if (HIDWORD(v94))
                  {
                    goto LABEL_142;
                  }

LABEL_100:
                  v62 = llvm::StringRef::find_first_not_of(&v90, " \t\n\v\f\r", 6, 0);
                  if (v62 >= v91)
                  {
                    v63 = v91;
                  }

                  else
                  {
                    v63 = v62;
                  }

                  v64 = v91 - v63;
                  v94 = v90 + v63;
                  v95 = v91 - v63;
                  v65 = llvm::StringRef::find_last_not_of(&v94, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
                  if (v65 + 1 < v95)
                  {
                    v66 = v65 + 1;
                  }

                  else
                  {
                    v66 = v95;
                  }

                  v67 = v95 - v64 + v66;
                  if (v95 < v67)
                  {
                    v67 = v95;
                  }

                  v90 = v94;
                  v91 = v67;
                  if (v67 && *v94 == 58)
                  {
                    v90 = v94 + 1;
                    v91 = v67 - 1;
                    v68 = llvm::StringRef::find_first_not_of(&v90, " \t\n\v\f\r", 6, 0);
                    if (v68 >= v91)
                    {
                      v69 = v91;
                    }

                    else
                    {
                      v69 = v68;
                    }

                    v70 = v91 - v69;
                    v94 = v90 + v69;
                    v95 = v91 - v69;
                    v71 = llvm::StringRef::find_last_not_of(&v94, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
                    v21 = v94;
                    if (v71 + 1 < v95)
                    {
                      v72 = v71 + 1;
                    }

                    else
                    {
                      v72 = v95;
                    }

                    v73 = v95 - v70 + v72;
                    if (v95 >= v73)
                    {
                      v16 = v73;
                    }

                    else
                    {
                      v16 = v95;
                    }

                    v90 = 0;
                    v91 = 0;
                  }

                  else
                  {
                    v16 = 0;
                    v21 = 0;
                  }

                  v74 = llvm::StringRef::find_first_not_of(&v90, " \t\n\v\f\r", 6, 0);
                  if (v74 >= v91)
                  {
                    v75 = v91;
                  }

                  else
                  {
                    v75 = v74;
                  }

                  v76 = v91 - v75;
                  v94 = v90 + v75;
                  v95 = v91 - v75;
                  v77 = llvm::StringRef::find_last_not_of(&v94, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
                  v24 = v95;
                  if (v77 + 1 < v95)
                  {
                    v78 = v77 + 1;
                  }

                  else
                  {
                    v78 = v95;
                  }

                  v79 = v95 - v76 + v78;
                  if (v95 < v79)
                  {
                    v79 = v95;
                  }

                  if (v79)
                  {
                    v17 = 0;
                  }

                  else
                  {
                    v17 = 1;
                    v25 = v92;
                    v24 = v93;
                  }

                  v3 = a3;
                  goto LABEL_133;
              }

              v61 = -2;
LABEL_97:
              v90 = v59;
              v91 = v61 + v58;
LABEL_98:
              v94 = 0;
              if (llvm::consumeUnsignedInteger(&v90, 0, &v94, v56))
              {
                goto LABEL_142;
              }

              goto LABEL_99;
          }

          v15 = *(v94 + 1);
          v59 = v94 + 3;
          v61 = -3;
          goto LABEL_97;
        }

        v12 = result[v11++];
      }

      while (v12 == 123);
      v13 = v11 - 1;
      if (a2 < v13)
      {
        v13 = a2;
      }

      if (v13 < 2)
      {
        goto LABEL_13;
      }

LABEL_32:
      v16 = 0;
      v21 = 0;
      v15 = 0;
      v22 = 0;
      v23 = 0;
      v26 = 0;
      v24 = v13 >> 1;
      if (a2 < v13 >> 1)
      {
        v24 = a2;
      }

      v32 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < v32)
      {
        v32 = a2;
      }

      result += v32;
      a2 -= v32;
LABEL_37:
      v17 = 1;
      v18 = 2;
      v25 = v9;
      v27 = 1;
LABEL_38:
      LODWORD(v85) = v27;
      *(&v85 + 1) = v25;
      *&v86 = v24;
      *(&v86 + 1) = __PAIR64__(v22, v23);
      LODWORD(v87) = v18;
      BYTE4(v87) = v15;
      *(&v87 + 5) = v92;
      BYTE7(v87) = BYTE2(v92);
      *(&v87 + 1) = v21;
      v88 = v16;
      v89 = v17;
      if (v17)
      {
        if (v23 == -1)
        {
          v33 = v26;
        }

        else
        {
          v33 = 0;
        }

        if (v33 == 1)
        {
          DWORD2(v86) = v83++;
        }

        v4 = *(v3 + 8);
        if (v4 >= *(v3 + 12))
        {
          v81 = a2;
          v82 = result;
          llvm::SmallVectorTemplateBase<llvm::ReplacementItem,true>::growAndEmplaceBack<llvm::ReplacementItem&>(v3, &v85);
          v3 = a3;
          a2 = v81;
          result = v82;
        }

        else
        {
          v5 = *v3 + 56 * v4;
          v6 = v85;
          v7 = v86;
          v8 = v87;
          *(v5 + 48) = v88;
          *(v5 + 16) = v7;
          *(v5 + 32) = v8;
          *v5 = v6;
          ++*(v3 + 8);
        }
      }
    }

    while (a2);
  }

  return result;
}

uint64_t llvm::SmallVectorTemplateBase<llvm::ReplacementItem,true>::growAndEmplaceBack<llvm::ReplacementItem&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v2;
  v14[2] = *(a2 + 32);
  v15 = *(a2 + 48);
  v3 = *(a1 + 8);
  v4 = *a1;
  v5 = v14;
  if (v3 >= *(a1 + 12))
  {
    if (v4 <= v14 && v4 + 56 * v3 > v14)
    {
      v12 = v14 - v4;
      v13 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v3 + 1, 56);
      a1 = v13;
      v4 = *v13;
      v5 = &v12[*v13];
    }

    else
    {
      v11 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v3 + 1, 56);
      a1 = v11;
      v4 = *v11;
      v5 = v14;
    }
  }

  v6 = v4 + 56 * *(a1 + 8);
  v7 = *v5;
  v8 = *(v5 + 1);
  v9 = *(v5 + 2);
  *(v6 + 48) = *(v5 + 6);
  *(v6 + 16) = v8;
  *(v6 + 32) = v9;
  *v6 = v7;
  LODWORD(v6) = *(a1 + 8) + 1;
  *(a1 + 8) = v6;
  return *a1 + 56 * v6 - 56;
}

unsigned int *llvm::IntervalMapImpl::Path::replaceRoot(unsigned int *result, uint64_t a2, int a3, uint64_t a4)
{
  v4 = *result;
  *v4 = a2;
  *(v4 + 2) = a3;
  *(v4 + 3) = a4;
  v5 = *result;
  v6 = *(**result + 8 * *(*result + 12)) & 0xFFFFFFFFFFFFFFC0;
  v7 = (a4 & 0xFFFFFFFF00000000 | *(**result + 8 * *(*result + 12)) & 0x3FLL) + 1;
  v8 = result[2];
  v9 = result[3];
  if (v8 == 1)
  {
    if (v9 <= 1)
    {
      v15 = result;
      llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 4), v8 + 1, 16);
      result = v15;
      v10 = v15[2];
      v5 = *v15;
    }

    else
    {
      v10 = 1;
    }

    v11 = &v5[2 * v10];
    *v11 = v6;
    v11[1] = v7;
    ++result[2];
  }

  else
  {
    if (v8 >= v9)
    {
      v16 = result;
      llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 4), v8 + 1, 16);
      result = v16;
      v5 = *v16;
      v8 = v16[2];
    }

    *&v5[2 * v8] = *&v5[2 * v8 - 2];
    v12 = result[2];
    v13 = *result + 16 * v12 - 16;
    if (v13 != v5 + 2)
    {
      v14 = result;
      memmove(v5 + 4, v5 + 2, v13 - (v5 + 2));
      result = v14;
      LODWORD(v12) = v14[2];
    }

    result[2] = v12 + 1;
    v5[2] = v6;
    v5[3] = v7;
  }

  return result;
}

uint64_t llvm::IntervalMapImpl::Path::getLeftSibling(llvm::IntervalMapImpl::Path *this, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *this;
  v3 = -1;
  while (1)
  {
    v4 = (a2 + v3);
    if (!(a2 + v3))
    {
      break;
    }

    --v3;
    if (*(v2 + 16 * v4 + 12))
    {
      v5 = a2 + v3 + 2;
      v2 += 16 * v4;
      v6 = *(v2 + 12);
      if (!v6)
      {
        return 0;
      }

      goto LABEL_8;
    }
  }

  v5 = 1;
  v6 = *(v2 + 12);
  if (!v6)
  {
    return 0;
  }

LABEL_8:
  result = *(*v2 + 8 * (v6 - 1));
  if (v5 != a2)
  {
    v8 = a2 - v5;
    do
    {
      result = *((result & 0xFFFFFFFFFFFFFFC0) + 8 * (result & 0x3F));
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned int *llvm::IntervalMapImpl::Path::moveLeft(unsigned int *this, unsigned int a2)
{
  v2 = this[2];
  if (v2 && *(*this + 12) < *(*this + 8))
  {
    v3 = a2;
    do
    {
      --v3;
    }

    while (!*(*this + 16 * v3 + 12));
  }

  else if (v2 - 1 >= a2 || (v4 = a2 + 1, v2 == v4))
  {
    v3 = 0;
  }

  else
  {
    if (v2 <= v4)
    {
      v5 = a2;
      v6 = v4 - v2;
      v7 = this[2];
      v8 = this;
      if (this[3] < v4)
      {
        v16 = this[2];
        v17 = a2 + 1;
        llvm::SmallVectorBase<unsigned int>::grow_pod(this, (this + 4), v4, 16);
        v2 = v16;
        v4 = v17;
        this = v8;
        v7 = v8[2];
      }

      bzero((*this + 16 * v7), 16 * (v4 - v2));
      this = v8;
      LODWORD(v4) = v8[2] + v6;
      a2 = v5;
    }

    v3 = 0;
    this[2] = v4;
  }

  v9 = *this;
  v10 = *this + 16 * v3;
  v11 = *(v10 + 12) - 1;
  *(v10 + 12) = v11;
  v12 = *(*v10 + 8 * v11);
  v13 = v3 + 1;
  if (v3 + 1 != a2)
  {
    do
    {
      v14 = *this + 16 * v13;
      *v14 = v12 & 0xFFFFFFFFFFFFFFC0;
      *(v14 + 8) = (v12 & 0x3F) + 1;
      *(v14 + 12) = v12 & 0x3F;
      v12 = *((v12 & 0xFFFFFFFFFFFFFFC0) + 8 * (v12 & 0x3F));
      ++v13;
    }

    while (a2 != v13);
    v9 = *this;
  }

  v15 = v9 + 16 * a2;
  *v15 = v12 & 0xFFFFFFFFFFFFFFC0;
  *(v15 + 8) = (v12 & 0x3F) + 1;
  *(v15 + 12) = v12 & 0x3F;
  return this;
}

uint64_t llvm::IntervalMapImpl::Path::getRightSibling(llvm::IntervalMapImpl::Path *this, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = 0;
  v3 = *this;
  v4 = (*this + 16 * a2 - 4);
  while (a2 - 1 != v2)
  {
    v5 = *v4;
    v6 = *(v4 - 1) - 1;
    ++v2;
    v4 -= 4;
    if (v5 != v6)
    {
      v7 = a2 - v2;
      v8 = a2 - v2 + 1;
      result = v7;
      goto LABEL_9;
    }
  }

  result = 0;
  if (*(v3 + 12) == *(v3 + 8) - 1)
  {
    return result;
  }

  v8 = 1;
LABEL_9:
  result = *(*(v3 + 16 * result) + 8 * (*(v3 + 16 * result + 12) + 1));
  if (v8 != a2)
  {
    v10 = a2 - v8;
    do
    {
      result = *(result & 0xFFFFFFFFFFFFFFC0);
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t *llvm::IntervalMapImpl::Path::moveRight(uint64_t *this, unsigned int a2)
{
  v2 = *this;
  v3 = a2 - 1;
  v4 = 1;
  while (1)
  {
    v5 = v4;
    v6 = v3;
    if (!v3)
    {
      break;
    }

    v8 = *(v2 + 16 * v3 + 8);
    v7 = *(v2 + 16 * v3 + 12);
    ++v4;
    --v3;
    if (v7 != v8 - 1)
    {
      v9 = v2 + 16 * v6;
      v10 = v7 + 1;
      *(v9 + 12) = v10;
      if (v10 == v8)
      {
        return this;
      }

      goto LABEL_7;
    }
  }

  v11 = *(v2 + 8);
  v9 = *this;
  v10 = *(v2 + 12) + 1;
  *(v2 + 12) = v10;
  if (v10 == v11)
  {
    return this;
  }

LABEL_7:
  v12 = *(*v9 + 8 * v10);
  if (v5 != 1)
  {
    v13 = v5 - 1;
    v14 = v6 + 1;
    do
    {
      v15 = *this + 16 * v14;
      *v15 = v12 & 0xFFFFFFFFFFFFFFC0;
      *(v15 + 8) = (v12 & 0x3F) + 1;
      *(v15 + 12) = 0;
      ++v14;
      v12 = *(v12 & 0xFFFFFFFFFFFFFFC0);
      --v13;
    }

    while (v13);
    v2 = *this;
  }

  v16 = (v2 + 16 * a2);
  *v16 = v12 & 0xFFFFFFFFFFFFFFC0;
  v16[1] = (v12 & 0x3F) + 1;
  return this;
}

unint64_t llvm::IntervalMapImpl::distribute(llvm::IntervalMapImpl *this, int a2, unsigned int a3, unsigned int a4, const unsigned int *a5, unsigned int *a6, int a7)
{
  if (!this)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  LODWORD(v9) = 0;
  v10 = this;
  v11 = (a7 + a2) / this;
  v12 = (a7 + a2) % this;
  do
  {
    if (v7 >= v12)
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 + 1;
    }

    a5[v7] = v13;
    v14 = a6 - v8;
    v8 += v13;
    if (this == v10 && v8 > a6)
    {
      LODWORD(this) = v7;
      v9 = v14;
    }

    else
    {
      v9 = v9;
    }

    ++v7;
  }

  while (v10 != v7);
  if (a7)
  {
    --a5[this];
  }

  return this | (v9 << 32);
}

uint64_t llvm::LockFileManager::readLockFile@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  v21 = 261;
  __p[0] = a1;
  __p[1] = a2;
  llvm::MemoryBuffer::getFile(__p, 0, 1, 0, 0, &v22);
  if (v23)
  {
    v21 = 261;
    goto LABEL_29;
  }

  llvm::getToken(*(v22 + 8), *(v22 + 16) - *(v22 + 8), " ", 1, __p);
  v7 = __p[0];
  v6 = __p[1];
  v18 = v20;
  first_not_of = llvm::StringRef::find_first_not_of(&v18, 0x20u, 0);
  if (*(&v18 + 1) >= first_not_of)
  {
    v9 = first_not_of;
  }

  else
  {
    v9 = *(&v18 + 1);
  }

  *&v18 = v18 + v9;
  *(&v18 + 1) -= v9;
  __p[0] = 0;
  if (llvm::getAsSignedInteger(v18, *(&v18 + 1), 0xA, __p) || (v10 = __p[0], __p[0] != SLODWORD(__p[0])))
  {
LABEL_28:
    v21 = 261;
LABEL_29:
    __p[0] = a1;
    __p[1] = a2;
    result = llvm::sys::fs::remove(__p, 1);
    *a3 = 0;
    *(a3 + 32) = 0;
    if (v23)
    {
      return result;
    }

    goto LABEL_30;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v6 | 7) + 1;
    }

    p_dst = operator new(v12);
    *(&__dst + 1) = v6;
    v17 = v12 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_16;
  }

  HIBYTE(v17) = v6;
  p_dst = &__dst;
  if (v6)
  {
LABEL_16:
    memmove(p_dst, v7, v6);
  }

  *(p_dst + v6) = 0;
  *&v20 = v17;
  *__p = __dst;
  DWORD2(v20) = v10;
  if (v17 >= 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __dst;
  }

  if (v17 >= 0)
  {
    v14 = SHIBYTE(v17);
  }

  else
  {
    v14 = *(&__dst + 1);
  }

  result = llvm::LockFileManager::processStillExecuting(v13, v14, v10);
  if (!result)
  {
    if (SBYTE7(v20) < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_28;
  }

  *a3 = *__p;
  *(a3 + 16) = v20;
  *(a3 + 24) = DWORD2(v20);
  *(a3 + 32) = 1;
  if (v23)
  {
    return result;
  }

LABEL_30:
  result = v22;
  v22 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t llvm::LockFileManager::processStillExecuting(const void *a1, uint64_t a2, pid_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  __s1 = v14;
  v13 = xmmword_1E0971960;
  __s[255] = 0;
  __s[0] = 0;
  gethostname(__s, 0xFFuLL);
  v6 = strlen(__s);
  v7 = 0;
  if (v6 > 0x100)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(&__s1, v14, v6, 1);
    v7 = v13;
  }

  if (v6)
  {
    memcpy(__s1 + v7, __s, v6);
    v7 = v13;
  }

  v8 = v7 + v6;
  *&v13 = v7 + v6;
  if (v7 + v6 == a2 && (!v8 || !memcmp(__s1, a1, v8)) && getsid(a3) == -1 && *__error() == 3)
  {
    v9 = 0;
    v10 = __s1;
    if (__s1 == v14)
    {
      return v9;
    }

    goto LABEL_13;
  }

  v9 = 1;
  v10 = __s1;
  if (__s1 != v14)
  {
LABEL_13:
    free(v10);
  }

  return v9;
}

uint64_t llvm::LockFileManager::LockFileManager(uint64_t a1, const void *a2, unint64_t a3)
{
  v134 = *MEMORY[0x1E69E9840];
  v6 = (a1 + 24);
  *a1 = a1 + 24;
  *(a1 + 16) = 128;
  v7 = (a1 + 176);
  *(a1 + 152) = a1 + 176;
  v8 = (a1 + 152);
  *(a1 + 160) = xmmword_1E0971D70;
  v9 = (a1 + 328);
  *(a1 + 304) = a1 + 328;
  v10 = (a1 + 312);
  *(a1 + 312) = xmmword_1E0971D70;
  *(a1 + 456) = 0;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  v11 = std::system_category();
  v12 = 0;
  *(a1 + 504) = v11;
  *(a1 + 512) = 0;
  *(a1 + 528) = 0;
  *(a1 + 520) = 0;
  *(a1 + 8) = 0;
  if (a3 >= 0x81)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, v6, a3, 1);
    v12 = *(a1 + 8);
  }

  if (a3)
  {
    memcpy((*a1 + v12), a2, a3);
    v12 = *(a1 + 8);
  }

  v119 = (a1 + 512);
  *(a1 + 8) = v12 + a3;
  absolute = llvm::sys::fs::make_absolute(a1);
  if (!absolute)
  {
    v19 = *(a1 + 8);
    v20 = *(a1 + 160);
    if (v20 >= v19)
    {
      if (v19)
      {
        memmove(*(a1 + 152), *a1, *(a1 + 8));
      }
    }

    else
    {
      if (*(a1 + 168) >= v19)
      {
        if (v20)
        {
          memmove(*(a1 + 152), *a1, *(a1 + 160));
        }
      }

      else
      {
        *(a1 + 160) = 0;
        llvm::SmallVectorBase<unsigned long long>::grow_pod(v8, v7, v19, 1);
        v20 = 0;
      }

      v29 = *(a1 + 8);
      if (v29 != v20)
      {
        memcpy((*(a1 + 152) + v20), (*a1 + v20), v29 - v20);
      }
    }

    *(a1 + 160) = v19;
    if (*(a1 + 168) < v19 + 5)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(v8, v7, v19 + 5, 1);
      v19 = *(a1 + 160);
    }

    v30 = (a1 + 456);
    v31 = *(a1 + 152) + v19;
    *(v31 + 4) = 107;
    *v31 = 1668246574;
    v32 = *(a1 + 152);
    v33 = (*(a1 + 160) + 5);
    *(a1 + 160) = v33;
    llvm::LockFileManager::readLockFile(v32, v33, __dst);
    v34 = *(a1 + 488);
    v35 = v126;
    if (v34 == v126)
    {
      if (*(a1 + 488))
      {
        if (*(a1 + 479) < 0)
        {
          operator delete(*(a1 + 456));
          LOBYTE(v34) = *(a1 + 488);
        }

        else
        {
          LOBYTE(v34) = 1;
        }

        *v30 = *__dst;
        *(a1 + 472) = *&__dst[16];
        __dst[23] = 0;
        __dst[0] = 0;
        *(a1 + 480) = v125;
        if (!v35)
        {
          goto LABEL_69;
        }

        goto LABEL_67;
      }
    }

    else
    {
      if (*(a1 + 488))
      {
        if (*(a1 + 479) < 0)
        {
          operator delete(*v30);
        }

        LOBYTE(v34) = 0;
        *(a1 + 488) = 0;
        if (!v35)
        {
LABEL_69:
          if (v34)
          {
            return a1;
          }

          v36 = *(a1 + 160);
          v37 = *(a1 + 312);
          if (v37 >= v36)
          {
            if (v36)
            {
              memmove(*(a1 + 304), *v8, *(a1 + 160));
            }
          }

          else
          {
            if (*(a1 + 320) >= v36)
            {
              if (v37)
              {
                memmove(*(a1 + 304), *v8, *(a1 + 312));
              }
            }

            else
            {
              *v10 = 0;
              llvm::SmallVectorBase<unsigned long long>::grow_pod(a1 + 304, v9, v36, 1);
              v37 = 0;
            }

            v38 = *(a1 + 160);
            if (v38 != v37)
            {
              memcpy((*(a1 + 304) + v37), *v8 + v37, v38 - v37);
            }
          }

          *(a1 + 312) = v36;
          if (*(a1 + 320) < v36 + 9)
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod(a1 + 304, v9, v36 + 9, 1);
            v36 = *v10;
          }

          v39 = *(a1 + 304) + v36;
          *v39 = *"-%%%%%%%%";
          *(v39 + 8) = 37;
          v40 = *v10 + 9;
          *v10 = v40;
          v123 = 0;
          LOWORD(v126) = 261;
          *__dst = *(a1 + 304);
          *&__dst[8] = v40;
          UniqueFile = llvm::sys::fs::createUniqueFile(__dst, &v123, (a1 + 304), 0, 438);
          if (UniqueFile)
          {
            v43 = v41;
            __src.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
            *&__src.__r_.__value_.__r.__words[1] = xmmword_1E097BD80;
            strcpy(__src.__r_.__value_.__l.__data_, "failed to create unique file ");
            v44 = *v10;
            if (*v10 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_272;
            }

            v45 = *(a1 + 304);
            if (v44 >= 0x17)
            {
              if ((v44 | 7) == 0x17)
              {
                v52 = 25;
              }

              else
              {
                v52 = (v44 | 7) + 1;
              }

              v46 = operator new(v52);
              *&__dst[8] = v44;
              *&__dst[16] = v52 | 0x8000000000000000;
              *__dst = v46;
            }

            else
            {
              __dst[23] = *v10;
              v46 = __dst;
              if (!v44)
              {
LABEL_97:
                v46[v44] = 0;
                if (__dst[23] >= 0)
                {
                  v53 = __dst;
                }

                else
                {
                  v53 = *__dst;
                }

                if (__dst[23] >= 0)
                {
                  v54 = __dst[23];
                }

                else
                {
                  v54 = *&__dst[8];
                }

                std::string::append(&__src, v53, v54);
                if ((__dst[23] & 0x80000000) != 0)
                {
                  operator delete(*__dst);
                }

                if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  p_src = &__src;
                }

                else
                {
                  p_src = __src.__r_.__value_.__r.__words[0];
                }

                if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  size = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  size = __src.__r_.__value_.__l.__size_;
                }

                *(a1 + 496) = UniqueFile;
                *(a1 + 504) = v43;
                if (!p_src)
                {
                  memset(__dst, 0, sizeof(__dst));
                  v58 = a1 + 512;
                  if ((*(a1 + 535) & 0x80000000) == 0)
                  {
                    goto LABEL_125;
                  }

LABEL_124:
                  operator delete(*v58);
LABEL_125:
                  *v58 = *__dst;
                  *(v58 + 16) = *&__dst[16];
                  if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    return a1;
                  }

                  goto LABEL_47;
                }

                if (size > 0x7FFFFFFFFFFFFFF7)
                {
                  goto LABEL_272;
                }

                if (size >= 0x17)
                {
                  if ((size | 7) == 0x17)
                  {
                    v59 = 25;
                  }

                  else
                  {
                    v59 = (size | 7) + 1;
                  }

                  v57 = operator new(v59);
                  *&__dst[8] = size;
                  *&__dst[16] = v59 | 0x8000000000000000;
                  *__dst = v57;
                  v58 = a1 + 512;
                }

                else
                {
                  __dst[23] = size;
                  v57 = __dst;
                  v58 = a1 + 512;
                  if (!size)
                  {
LABEL_123:
                    v57[size] = 0;
                    if ((*(a1 + 535) & 0x80000000) == 0)
                    {
                      goto LABEL_125;
                    }

                    goto LABEL_124;
                  }
                }

                memmove(v57, p_src, size);
                goto LABEL_123;
              }
            }

            memmove(v46, v45, v44);
            goto LABEL_97;
          }

          *__dst = &v125;
          *&__dst[8] = xmmword_1E0971960;
          v133 = 0;
          __src.__r_.__value_.__s.__data_[0] = 0;
          gethostname(&__src, 0xFFuLL);
          v47 = strlen(&__src);
          v48 = *&__dst[8];
          if (*&__dst[16] < *&__dst[8] + v47)
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod(__dst, &v125, *&__dst[8] + v47, 1);
            v48 = *&__dst[8];
          }

          if (v47)
          {
            memcpy((*__dst + v48), &__src, v47);
            v48 = *&__dst[8];
          }

          *&__dst[8] = v48 + v47;
          llvm::raw_fd_ostream::raw_fd_ostream(&__src, v123, 1, 0, 0);
          v49 = llvm::raw_ostream::write(&__src, *__dst, *&__dst[8]);
          v50 = *(v49 + 4);
          if (v50 >= *(v49 + 3))
          {
            v51 = llvm::raw_ostream::write(v49, 32);
          }

          else
          {
            v51 = v49;
            *(v49 + 4) = v50 + 1;
            *v50 = 32;
          }

          ProcessId = llvm::sys::Process::getProcessId();
          llvm::raw_ostream::operator<<(v51, ProcessId);
          llvm::raw_fd_ostream::close(&__src);
          v61 = v132;
          if (!v132)
          {
LABEL_171:
            llvm::raw_fd_ostream::~raw_fd_ostream(&__src);
            if (*__dst != &v125)
            {
              free(*__dst);
            }

            if (v61)
            {
              return a1;
            }

            v73 = *(a1 + 304);
            v74 = *(a1 + 312);
            llvm::sys::RemoveFileOnSignal(v73, v74);
            while (1)
            {
              LOWORD(v126) = 261;
              v76 = *(a1 + 312);
              *__dst = *(a1 + 304);
              *&__dst[8] = v76;
              v131 = 261;
              v77 = *(a1 + 160);
              __src.__r_.__value_.__r.__words[0] = *(a1 + 152);
              __src.__r_.__value_.__l.__size_ = v77;
              link = llvm::sys::fs::create_link(__dst, &__src, v75);
              if (!link)
              {
                return a1;
              }

              v80 = v78;
              v81 = std::generic_category();
              if (link != 17 || v81 != v80)
              {
                break;
              }

              llvm::LockFileManager::readLockFile(*(a1 + 152), *(a1 + 160), __dst);
              v82 = *(a1 + 488);
              v83 = v126;
              if (v82 == v126)
              {
                if (*(a1 + 488))
                {
                  if (*(a1 + 479) < 0)
                  {
                    operator delete(*(a1 + 456));
                    LOBYTE(v82) = *(a1 + 488);
                  }

                  else
                  {
                    LOBYTE(v82) = 1;
                  }

                  *v30 = *__dst;
                  *(a1 + 472) = *&__dst[16];
                  __dst[23] = 0;
                  __dst[0] = 0;
                  *(a1 + 480) = v125;
                }
              }

              else if (*(a1 + 488))
              {
                if (*(a1 + 479) < 0)
                {
                  operator delete(*v30);
                }

                LOBYTE(v82) = 0;
                *(a1 + 488) = 0;
              }

              else
              {
                *v30 = *__dst;
                *(a1 + 472) = *&__dst[16];
                memset(__dst, 0, sizeof(__dst));
                *(a1 + 480) = v125;
                LOBYTE(v82) = 1;
                *(a1 + 488) = 1;
              }

              if (v83 && (__dst[23] & 0x80000000) != 0)
              {
                operator delete(*__dst);
              }

              if (v82)
              {
                LOWORD(v126) = 261;
                v97 = *v10;
                *__dst = *(a1 + 304);
                *&__dst[8] = v97;
                llvm::sys::fs::remove(__dst, 1);
                goto LABEL_270;
              }

              LOWORD(v126) = 261;
              v84 = *(a1 + 160);
              *__dst = *(a1 + 152);
              *&__dst[8] = v84;
              if (!llvm::sys::fs::access(__dst, 0))
              {
                LOWORD(v126) = 261;
                v85 = *(a1 + 160);
                *__dst = *(a1 + 152);
                *&__dst[8] = v85;
                v86 = llvm::sys::fs::remove(__dst, 1);
                if (v86)
                {
                  v118 = v87;
                  v88 = v86;
                  __src.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
                  *&__src.__r_.__value_.__r.__words[1] = xmmword_1E09827F0;
                  strcpy(__src.__r_.__value_.__l.__data_, "failed to remove lockfile ");
                  v89 = *v10;
                  if (*v10 > 0x7FFFFFFFFFFFFFF7)
                  {
                    goto LABEL_272;
                  }

                  v90 = *(a1 + 304);
                  if (v89 >= 0x17)
                  {
                    if ((v89 | 7) == 0x17)
                    {
                      v109 = 25;
                    }

                    else
                    {
                      v109 = (v89 | 7) + 1;
                    }

                    v91 = operator new(v109);
                    *&__dst[8] = v89;
                    *&__dst[16] = v109 | 0x8000000000000000;
                    *__dst = v91;
                  }

                  else
                  {
                    __dst[23] = *v10;
                    v91 = __dst;
                    if (!v89)
                    {
LABEL_239:
                      v91[v89] = 0;
                      if (__dst[23] >= 0)
                      {
                        v110 = __dst;
                      }

                      else
                      {
                        v110 = *__dst;
                      }

                      if (__dst[23] >= 0)
                      {
                        v111 = __dst[23];
                      }

                      else
                      {
                        v111 = *&__dst[8];
                      }

                      std::string::append(&__src, v110, v111);
                      if ((__dst[23] & 0x80000000) != 0)
                      {
                        operator delete(*__dst);
                      }

                      if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v112 = &__src;
                      }

                      else
                      {
                        v112 = __src.__r_.__value_.__r.__words[0];
                      }

                      if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v113 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
                      }

                      else
                      {
                        v113 = __src.__r_.__value_.__l.__size_;
                      }

                      *(a1 + 496) = v88;
                      *(a1 + 504) = v118;
                      if (!v112)
                      {
                        memset(__dst, 0, sizeof(__dst));
                        v114 = a1 + 512;
                        goto LABEL_265;
                      }

                      v114 = a1 + 512;
                      if (v113 <= 0x7FFFFFFFFFFFFFF7)
                      {
                        if (v113 >= 0x17)
                        {
                          if ((v113 | 7) == 0x17)
                          {
                            v116 = 25;
                          }

                          else
                          {
                            v116 = (v113 | 7) + 1;
                          }

                          v115 = operator new(v116);
                          *&__dst[8] = v113;
                          *&__dst[16] = v116 | 0x8000000000000000;
                          *__dst = v115;
                        }

                        else
                        {
                          __dst[23] = v113;
                          v115 = __dst;
                          if (!v113)
                          {
LABEL_264:
                            v115[v113] = 0;
LABEL_265:
                            if (*(a1 + 535) < 0)
                            {
                              operator delete(*v114);
                            }

                            *v114 = *__dst;
                            *(v114 + 16) = *&__dst[16];
                            if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
                            {
                              v108 = __src.__r_.__value_.__r.__words[0];
LABEL_269:
                              operator delete(v108);
                            }

                            goto LABEL_270;
                          }
                        }

                        memmove(v115, v112, v113);
                        goto LABEL_264;
                      }

LABEL_272:
                      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
                    }
                  }

                  memmove(v91, v90, v89);
                  goto LABEL_239;
                }
              }
            }

            strcpy(__p, "failed to create link ");
            HIBYTE(__p[2]) = 22;
            *&__dst[8] = 0;
            v127 = 0;
            v128 = 1;
            v125 = 0;
            v126 = 0;
            *&__dst[16] = 0;
            *__dst = &unk_1F5B3FB30;
            v129 = __p;
            llvm::raw_ostream::SetBufferAndMode(__dst, 0, 0, 0);
            v92 = *(a1 + 152);
            v93 = *(a1 + 160);
            v94 = v126;
            if (v93 <= v125 - v126)
            {
              v96 = (a1 + 512);
              if (v93)
              {
                v98 = *(a1 + 160);
                memcpy(v126, v92, v93);
                v94 = &v126[v98];
                v126 += v98;
              }

              v95 = __dst;
            }

            else
            {
              v95 = llvm::raw_ostream::write(__dst, v92, v93);
              v94 = v95[4];
              v96 = (a1 + 512);
            }

            if (v95[3] - v94 > 3uLL)
            {
              *v94 = 544175136;
              v99 = (v95[4] + 4);
              v95[4] = v99;
            }

            else
            {
              v95 = llvm::raw_ostream::write(v95, " to ", 4uLL);
              v99 = v95[4];
            }

            v100 = *(a1 + 304);
            v101 = *v10;
            if (*v10 <= v95[3] - v99)
            {
              if (v101)
              {
                v102 = v95;
                v103 = *v10;
                memcpy(v99, v100, v101);
                v102[4] += v103;
              }
            }

            else
            {
              llvm::raw_ostream::write(v95, v100, v101);
            }

            if (SHIBYTE(__p[2]) >= 0)
            {
              v104 = __p;
            }

            else
            {
              v104 = __p[0];
            }

            if (SHIBYTE(__p[2]) >= 0)
            {
              v105 = SHIBYTE(__p[2]);
            }

            else
            {
              v105 = __p[1];
            }

            *(a1 + 496) = link;
            *(a1 + 504) = v80;
            if (!v104)
            {
              memset(&__src, 0, sizeof(__src));
LABEL_230:
              if (*(a1 + 535) < 0)
              {
                operator delete(*v96);
              }

              *v96 = __src;
              llvm::raw_ostream::~raw_ostream(__dst);
              if (SHIBYTE(__p[2]) < 0)
              {
                v108 = __p[0];
                goto LABEL_269;
              }

LABEL_270:
              LOWORD(v126) = 261;
              *__dst = v73;
              *&__dst[8] = v74;
              llvm::sys::fs::remove(__dst, 1);
              llvm::sys::DontRemoveFileOnSignal(v73, v74);
              return a1;
            }

            if (v105 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_272;
            }

            if (v105 >= 0x17)
            {
              if ((v105 | 7) == 0x17)
              {
                v107 = 25;
              }

              else
              {
                v107 = (v105 | 7) + 1;
              }

              v106 = operator new(v107);
              __src.__r_.__value_.__l.__size_ = v105;
              __src.__r_.__value_.__r.__words[2] = v107 | 0x8000000000000000;
              __src.__r_.__value_.__r.__words[0] = v106;
            }

            else
            {
              *(&__src.__r_.__value_.__s + 23) = v105;
              v106 = &__src;
              if (!v105)
              {
                goto LABEL_229;
              }
            }

            memmove(v106, v104, v105);
LABEL_229:
            *(v106 + v105) = 0;
            goto LABEL_230;
          }

          *(&v122.__r_.__value_.__s + 23) = 19;
          strcpy(&v122, "failed to write to ");
          v62 = *v10;
          if (*v10 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_272;
          }

          v63 = *(a1 + 304);
          if (v62 >= 0x17)
          {
            if ((v62 | 7) == 0x17)
            {
              v65 = 25;
            }

            else
            {
              v65 = (v62 | 7) + 1;
            }

            v64 = operator new(v65);
            __p[1] = v62;
            __p[2] = (v65 | 0x8000000000000000);
            __p[0] = v64;
          }

          else
          {
            HIBYTE(__p[2]) = *v10;
            v64 = __p;
            if (!v62)
            {
LABEL_141:
              *(v64 + v62) = 0;
              if (SHIBYTE(__p[2]) >= 0)
              {
                v66 = __p;
              }

              else
              {
                v66 = __p[0];
              }

              if (SHIBYTE(__p[2]) >= 0)
              {
                v67 = HIBYTE(__p[2]);
              }

              else
              {
                v67 = __p[1];
              }

              std::string::append(&v122, v66, v67);
              if (SHIBYTE(__p[2]) < 0)
              {
                operator delete(__p[0]);
              }

              if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v68 = &v122;
              }

              else
              {
                v68 = v122.__r_.__value_.__r.__words[0];
              }

              if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v69 = SHIBYTE(v122.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v69 = v122.__r_.__value_.__l.__size_;
              }

              *(a1 + 496) = v132;
              if (!v68)
              {
                memset(__p, 0, 24);
LABEL_167:
                if (*(a1 + 535) < 0)
                {
                  operator delete(*v119);
                }

                *v119 = *__p;
                *(a1 + 528) = __p[2];
                v121 = 261;
                v72 = *v10;
                __p[0] = *(a1 + 304);
                __p[1] = v72;
                llvm::sys::fs::remove(__p, 1);
                LODWORD(v132) = 0;
                *(&v132 + 1) = v11;
                if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v122.__r_.__value_.__l.__data_);
                }

                goto LABEL_171;
              }

              if (v69 > 0x7FFFFFFFFFFFFFF7)
              {
                goto LABEL_272;
              }

              if (v69 >= 0x17)
              {
                if ((v69 | 7) == 0x17)
                {
                  v71 = 25;
                }

                else
                {
                  v71 = (v69 | 7) + 1;
                }

                v70 = operator new(v71);
                __p[1] = v69;
                __p[2] = (v71 | 0x8000000000000000);
                __p[0] = v70;
              }

              else
              {
                HIBYTE(__p[2]) = v69;
                v70 = __p;
                if (!v69)
                {
                  goto LABEL_166;
                }
              }

              memmove(v70, v68, v69);
LABEL_166:
              *(v70 + v69) = 0;
              goto LABEL_167;
            }
          }

          memmove(v64, v63, v62);
          goto LABEL_141;
        }

LABEL_67:
        if ((__dst[23] & 0x80000000) != 0)
        {
          operator delete(*__dst);
        }

        goto LABEL_69;
      }

      *v30 = *__dst;
      *(a1 + 472) = *&__dst[16];
      memset(__dst, 0, sizeof(__dst));
      *(a1 + 480) = v125;
      LOBYTE(v34) = 1;
      *(a1 + 488) = 1;
    }

    if (!v35)
    {
      goto LABEL_69;
    }

    goto LABEL_67;
  }

  v15 = v13;
  __src.__r_.__value_.__r.__words[0] = operator new(0x28uLL);
  *&__src.__r_.__value_.__r.__words[1] = xmmword_1E0982810;
  strcpy(__src.__r_.__value_.__l.__data_, "failed to obtain absolute path for ");
  v16 = *(a1 + 8);
  if (v16 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_272;
  }

  v17 = *a1;
  if (v16 >= 0x17)
  {
    if ((v16 | 7) == 0x17)
    {
      v21 = 25;
    }

    else
    {
      v21 = (v16 | 7) + 1;
    }

    v18 = operator new(v21);
    *&__dst[8] = v16;
    *&__dst[16] = v21 | 0x8000000000000000;
    *__dst = v18;
    goto LABEL_17;
  }

  __dst[23] = *(a1 + 8);
  v18 = __dst;
  if (v16)
  {
LABEL_17:
    memmove(v18, v17, v16);
  }

  v18[v16] = 0;
  if (__dst[23] >= 0)
  {
    v22 = __dst;
  }

  else
  {
    v22 = *__dst;
  }

  if (__dst[23] >= 0)
  {
    v23 = __dst[23];
  }

  else
  {
    v23 = *&__dst[8];
  }

  std::string::append(&__src, v22, v23);
  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
  }

  if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &__src;
  }

  else
  {
    v24 = __src.__r_.__value_.__r.__words[0];
  }

  if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v25 = __src.__r_.__value_.__l.__size_;
  }

  *(a1 + 496) = absolute;
  *(a1 + 504) = v15;
  if (v24)
  {
    if (v25 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_272;
    }

    if (v25 >= 0x17)
    {
      if ((v25 | 7) == 0x17)
      {
        v28 = 25;
      }

      else
      {
        v28 = (v25 | 7) + 1;
      }

      v26 = operator new(v28);
      *&__dst[8] = v25;
      *&__dst[16] = v28 | 0x8000000000000000;
      *__dst = v26;
      v27 = a1 + 512;
    }

    else
    {
      __dst[23] = v25;
      v26 = __dst;
      v27 = a1 + 512;
      if (!v25)
      {
LABEL_44:
        v26[v25] = 0;
        if ((*(a1 + 535) & 0x80000000) == 0)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }
    }

    memmove(v26, v24, v25);
    goto LABEL_44;
  }

  memset(__dst, 0, sizeof(__dst));
  v27 = a1 + 512;
  if ((*(a1 + 535) & 0x80000000) == 0)
  {
    goto LABEL_46;
  }

LABEL_45:
  operator delete(*v27);
LABEL_46:
  *v27 = *__dst;
  *(v27 + 16) = *&__dst[16];
  if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_47:
    operator delete(__src.__r_.__value_.__l.__data_);
  }

  return a1;
}

uint64_t llvm::LockFileManager::getState(llvm::LockFileManager *this)
{
  if (*(this + 488))
  {
    return 1;
  }

  else
  {
    return 2 * (*(this + 124) != 0);
  }
}

void llvm::LockFileManager::getErrorMessage(llvm::LockFileManager *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 124))
  {
    if (*(this + 535) < 0)
    {
      v3 = this;
      std::string::__init_copy_ctor_external(a2, *(this + 64), *(this + 65));
      this = v3;
    }

    else
    {
      *a2 = *(this + 32);
      *(a2 + 16) = *(this + 66);
    }

    std::error_code::message(&v16, this + 31);
    v9 = 0;
    v13 = 0;
    v14 = 1;
    v11 = 0;
    v12 = 0;
    v10 = 0;
    v8 = &unk_1F5B3FB30;
    v15 = a2;
    llvm::raw_ostream::SetBufferAndMode(&v8, 0, 0, 0);
    size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v16.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      if ((v11 - v12) > 1)
      {
        *v12++ = 8250;
        v5 = &v8;
      }

      else
      {
        v5 = llvm::raw_ostream::write(&v8, ": ", 2uLL);
      }

      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v6 = &v16;
      }

      else
      {
        v6 = v16.__r_.__value_.__r.__words[0];
      }

      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v7 = v16.__r_.__value_.__l.__size_;
      }

      llvm::raw_ostream::write(v5, v6, v7);
    }

    llvm::raw_ostream::~raw_ostream(&v8);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *(a2 + 23) = 0;
    *a2 = 0;
  }
}

void llvm::LockFileManager::~LockFileManager(llvm::LockFileManager *this)
{
  if ((*(this + 488) & 1) != 0 || *(this + 124))
  {
    if ((*(this + 535) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v8 = 261;
    v2 = *(this + 20);
    v6 = *(this + 19);
    v7 = v2;
    llvm::sys::fs::remove(&v6, 1);
    v8 = 261;
    v3 = *(this + 39);
    v6 = *(this + 38);
    v7 = v3;
    llvm::sys::fs::remove(&v6, 1);
    llvm::sys::DontRemoveFileOnSignal(*(this + 38), *(this + 39));
    if ((*(this + 535) & 0x80000000) == 0)
    {
LABEL_4:
      if (*(this + 488) != 1)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }
  }

  operator delete(*(this + 64));
  if (*(this + 488) != 1)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (*(this + 479) < 0)
  {
    operator delete(*(this + 57));
  }

LABEL_10:
  v4 = *(this + 38);
  if (v4 != this + 328)
  {
    free(v4);
  }

  v5 = *(this + 19);
  if (v5 != this + 176)
  {
    free(v5);
  }

  if (*this != (this + 24))
  {
    free(*this);
  }
}

uint64_t llvm::LockFileManager::waitForUnlock(llvm::LockFileManager *this, unsigned int a2)
{
  if (*(this + 488) != 1)
  {
    return 0;
  }

  v16 = xmmword_1E099E180;
  v17 = std::chrono::steady_clock::now().__d_.__rep_ + 1000000000 * a2;
  *(&__token.__r_.__value_.__s + 23) = 12;
  strcpy(&__token, "/dev/urandom");
  std::random_device::random_device(&v18, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  v19 = 1;
  do
  {
    if (!llvm::ExponentialBackoff::waitForNextAttempt(&v16))
    {
      v12 = 2;
      goto LABEL_24;
    }

    v6 = *(this + 20);
    if ((v6 + 1) > *(this + 21))
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(this + 152, this + 176, v6 + 1, 1);
      *(*(this + 19) + *(this + 20)) = 0;
      v7 = *(this + 19);
      v15 = 257;
      if (!*v7)
      {
LABEL_17:
        v8 = 1;
        goto LABEL_18;
      }
    }

    else
    {
      *(*(this + 19) + v6) = 0;
      v7 = *(this + 19);
      v15 = 257;
      if (!*v7)
      {
        goto LABEL_17;
      }
    }

    __token.__r_.__value_.__r.__words[0] = v7;
    v8 = 3;
LABEL_18:
    LOBYTE(v15) = v8;
    v9 = llvm::sys::fs::access(&__token, 0);
    if (std::generic_category() == v10 && v9 == 2)
    {
      v15 = 261;
      v11 = *(this + 1);
      __token.__r_.__value_.__r.__words[0] = *this;
      __token.__r_.__value_.__l.__size_ = v11;
      v12 = llvm::sys::fs::access(&__token, 0) != 0;
      goto LABEL_24;
    }

    v3 = *(this + 479);
    if (v3 >= 0)
    {
      v4 = this + 456;
    }

    else
    {
      v4 = *(this + 57);
    }

    if (v3 >= 0)
    {
      v5 = *(this + 479);
    }

    else
    {
      v5 = *(this + 58);
    }
  }

  while ((llvm::LockFileManager::processStillExecuting(v4, v5, *(this + 120)) & 1) != 0);
  v12 = 1;
LABEL_24:
  std::random_device::~random_device(&v18);
  return v12;
}

uint64_t llvm::LockFileManager::unsafeRemoveLockFile(llvm::LockFileManager *this)
{
  v4 = 261;
  v1 = *(this + 20);
  v3[0] = *(this + 19);
  v3[1] = v1;
  return llvm::sys::fs::remove(v3, 1);
}

void llvm::ManagedStaticBase::RegisterManagedStatic(llvm::ManagedStaticBase *this, void *(*a2)(void), void (*a3)(void *))
{
  if (atomic_load_explicit(&qword_1EE17CE20, memory_order_acquire))
  {
    std::recursive_mutex::lock(&stru_1EE17CE28);
    if (*this)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  llvm::ManagedStaticBase::RegisterManagedStatic();
  std::recursive_mutex::lock(&stru_1EE17CE28);
  if (!*this)
  {
LABEL_3:
    atomic_store(a2(), this);
    v6 = _MergedGlobals_53;
    *(this + 1) = a3;
    *(this + 2) = v6;
    _MergedGlobals_53 = this;
  }

LABEL_4:

  std::recursive_mutex::unlock(&stru_1EE17CE28);
}

char *llvm::MemoryBuffer::getMemBuffer@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, const char *a4@<X3>, char **a5@<X8>)
{
  v10 = 261;
  v9[0] = a3;
  v9[1] = a4;
  result = operator new(24, v9);
  *result = &unk_1F5B3F2C8;
  *(result + 1) = a1;
  *(result + 2) = a1 + a2;
  *a5 = result;
  return result;
}

char *operator new(uint64_t a1, const char **a2)
{
  v16[32] = *MEMORY[0x1E69E9840];
  v14 = v16;
  v15 = xmmword_1E0971960;
  if (*(a2 + 33) != 1)
  {
    goto LABEL_15;
  }

  v3 = *(a2 + 32);
  if (v3 > 4)
  {
    if (v3 - 5 < 2)
    {
      v6 = *a2;
      v7 = a2[1];
      v8 = v16;
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v3 == 1)
  {
    v7 = 0;
    v6 = 0;
    v8 = v16;
    goto LABEL_16;
  }

  if (v3 != 3)
  {
    if (v3 == 4)
    {
      v4 = *a2;
      v5 = (*a2)[23];
      if (v5 >= 0)
      {
        v6 = *a2;
      }

      else
      {
        v6 = *v4;
      }

      if (v5 >= 0)
      {
        v7 = v4[23];
      }

      else
      {
        v7 = *(v4 + 1);
      }

      v8 = v16;
      goto LABEL_16;
    }

LABEL_15:
    llvm::Twine::toVector(a2, &v14);
    v8 = v14;
    v7 = v15;
    v6 = v14;
    goto LABEL_16;
  }

  v6 = *a2;
  if (*a2)
  {
    v7 = strlen(*a2);
  }

  else
  {
    v7 = 0;
  }

  v8 = v16;
LABEL_16:
  v9 = malloc(a1 + v7 + 9);
  if (!v9)
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  v10 = v9;
  v11 = &v9[a1];
  *v11 = v7;
  v12 = v11 + 1;
  if (v7)
  {
    memcpy(v12, v6, v7);
  }

  *(v12 + v7) = 0;
  if (v8 != v16)
  {
    free(v8);
  }

  return v10;
}

void llvm::MemoryBuffer::getMemBufferCopy(const void *a1@<X0>, size_t a2@<X1>, const char **a3@<X2>, __int16 a4@<W3>, void *a5@<X8>)
{
  llvm::WritableMemoryBuffer::getNewUninitMemBuffer(a2, a3, a4, &v9);
  v8 = v9;
  if (v9 && a2)
  {
    memmove(*(v9 + 8), a1, a2);
  }

  *a5 = v8;
}

void llvm::MemoryBuffer::getFileOrSTDIN(void **a1@<X0>, int a2@<W1>, int a3@<W2>, unsigned __int16 a4@<W3>, uint64_t a5@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = xmmword_1E0971960;
  if (*(a1 + 33) != 1)
  {
    goto LABEL_17;
  }

  v10 = *(a1 + 32);
  if (v10 > 4)
  {
    if (v10 - 5 < 2)
    {
      v12 = *a1;
      if (a1[1] != 1)
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v10 == 1)
  {
    goto LABEL_26;
  }

  if (v10 == 3)
  {
    v12 = *a1;
    if (!*a1 || strlen(*a1) != 1)
    {
      goto LABEL_26;
    }

    goto LABEL_18;
  }

  if (v10 != 4)
  {
LABEL_17:
    llvm::Twine::toVector(a1, &v18);
    v12 = v18;
    if (v19 != 1)
    {
      goto LABEL_26;
    }

    goto LABEL_18;
  }

  v11 = *(*a1 + 23);
  if (v11 >= 0)
  {
    v12 = *a1;
  }

  else
  {
    v12 = **a1;
  }

  if (v11 >= 0)
  {
    v13 = *(*a1 + 23);
  }

  else
  {
    v13 = (*a1)[1];
  }

  if (v13 != 1)
  {
LABEL_26:
    getFileAux<llvm::MemoryBuffer>(a5, a1, 0xFFFFFFFFFFFFFFFFLL, 0, a2, a3, 0, a4);
    v16 = v18;
    if (v18 == v20)
    {
      return;
    }

    goto LABEL_27;
  }

LABEL_18:
  if (*v12 != 45)
  {
    goto LABEL_26;
  }

  llvm::sys::ChangeStdinMode();
  getEnumTag for MPSGraphDelegateKernelError();
  getMemoryBufferForStream(v21);
  v14 = *(a5 + 16);
  if (v22)
  {
    v15 = v21[1];
    *a5 = v21[0];
    *(a5 + 8) = v15;
    *(a5 + 16) = v14 | 1;
    v16 = v18;
    if (v18 == v20)
    {
      return;
    }

LABEL_27:
    free(v16);
    return;
  }

  v17 = v21[0];
  *(a5 + 16) = v14 & 0xFE;
  *a5 = v17;
  v16 = v18;
  if (v18 != v20)
  {
    goto LABEL_27;
  }
}

llvm::sys::fs *getFileAux<llvm::MemoryBuffer>(uint64_t a1, llvm::sys::fs::file_status *a2, unint64_t a3, off_t a4, int a5, int a6, char a7, unsigned __int16 a8)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  llvm::sys::fs::openNativeFileForRead(a2, v15, 0, &v22);
  if ((v23 & 1) == 0)
  {
    v20 = v22;
    getOpenFileImpl<llvm::MemoryBuffer>(a1, v22, a2, -1, a3, a4, a6, a7, a8);
    result = llvm::sys::fs::closeFile(&v20, v19);
    if ((v23 & 1) == 0)
    {
      return result;
    }

    goto LABEL_10;
  }

  v21 = v22;
  v22 = 0;
  v16 = llvm::errorToErrorCode(&v21);
  *(a1 + 16) |= 1u;
  *a1 = v16;
  *(a1 + 8) = v17;
  result = v21;
  if (v21)
  {
    result = (*(*v21 + 8))(v21);
  }

  if (v23)
  {
LABEL_10:
    result = v22;
    v22 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void llvm::WritableMemoryBuffer::getNewUninitMemBuffer(size_t a1@<X0>, const char **a2@<X1>, __int16 a3@<W2>, void *a4@<X8>)
{
  v23[32] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v21 = v23;
  v22 = xmmword_1E0971960;
  if (*(a2 + 33) != 1)
  {
    goto LABEL_15;
  }

  v8 = *(a2 + 32);
  if (v8 > 4)
  {
    if (v8 - 5 < 2)
    {
      v11 = *a2;
      v12 = a2[1];
      v13 = v23;
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v8 == 1)
  {
    v12 = 0;
    v11 = 0;
    v13 = v23;
    goto LABEL_16;
  }

  if (v8 != 3)
  {
    if (v8 == 4)
    {
      v9 = *a2;
      v10 = (*a2)[23];
      if (v10 >= 0)
      {
        v11 = *a2;
      }

      else
      {
        v11 = *v9;
      }

      if (v10 >= 0)
      {
        v12 = (*a2)[23];
      }

      else
      {
        v12 = *(v9 + 1);
      }

      v13 = v23;
      goto LABEL_16;
    }

LABEL_15:
    llvm::Twine::toVector(a2, &v21);
    v13 = v21;
    v12 = v22;
    v11 = v21;
    goto LABEL_16;
  }

  v11 = *a2;
  if (*a2)
  {
    v12 = strlen(*a2);
  }

  else
  {
    v12 = 0;
  }

  v13 = v23;
LABEL_16:
  v14 = v12 + 33;
  if ((a3 & 0x100) != 0)
  {
    v15 = 1 << v7;
  }

  else
  {
    v15 = 16;
  }

  v16 = a1 + v15 + v14 + 1;
  if (v16 <= a1 || (v17 = malloc(v16)) == 0)
  {
    *a4 = 0;
    if (v13 == v23)
    {
      return;
    }

    goto LABEL_26;
  }

  v18 = v17;
  v17[3] = v12;
  v19 = (v17 + 4);
  if (v12)
  {
    memcpy(v17 + 4, v11, v12);
  }

  v19[v12] = 0;
  v20 = (v18 + v14 + v15 - 1) & -v15;
  *(v20 + a1) = 0;
  *v18 = &unk_1F5B3F330;
  v18[1] = v20;
  v18[2] = v20 + a1;
  *a4 = v18;
  v13 = v21;
  if (v21 != v23)
  {
LABEL_26:
    free(v13);
  }
}

void getOpenFileImpl<llvm::MemoryBuffer>(uint64_t a1, llvm::sys::fs *this, llvm::sys::fs::file_status *a3, __darwin_time_t a4, unint64_t a5, off_t a6, int a7, char a8, uint64_t a9)
{
  tv_sec = a5;
  v45.st_ctimespec.tv_nsec = *MEMORY[0x1E69E9840];
  if (atomic_load_explicit(&qword_1EE17CE78, memory_order_acquire))
  {
    if (a5 != -1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v41 = a7;
    v39 = a8;
    v40 = a4;
    getOpenFileImpl<llvm::MemoryBuffer>();
    a4 = v40;
    a8 = v39;
    a7 = v41;
    if (tv_sec != -1)
    {
      goto LABEL_4;
    }
  }

  tv_sec = a4;
  if (a4 == -1)
  {
    v24 = a8;
    v25 = a7;
    memset(&v45, 0, 44);
    *(&v45.st_atimespec.tv_nsec + 4) = 0xFFFFLL;
    WORD2(v45.st_mtimespec.tv_sec) = 0;
    v45.st_mtimespec.tv_nsec = 0;
    v26 = llvm::sys::fs::status(this, &v45, a3);
    if (v26)
    {
      *(a1 + 16) |= 1u;
      *a1 = v26;
      *(a1 + 8) = v27;
      return;
    }

    if (LODWORD(v45.st_atimespec.tv_nsec) != 2 && LODWORD(v45.st_atimespec.tv_nsec) != 5)
    {
      getMemoryBufferForStream(v43);
      v36 = *(a1 + 16);
      if (v44)
      {
        v37 = v36 | 1;
        v38 = v43[0];
        *(a1 + 8) = v43[1];
      }

      else
      {
        v37 = v36 & 0xFE;
        v38 = v43[0];
      }

      *(a1 + 16) = v37;
      *a1 = v38;
      return;
    }

    tv_sec = v45.st_atimespec.tv_sec;
    a4 = v45.st_atimespec.tv_sec;
    a7 = v25;
    a8 = v24;
  }

LABEL_4:
  v14 = dword_1EE17CE6C;
  if (a7 && (a8 & 1) != 0)
  {
    goto LABEL_29;
  }

  v16 = (tv_sec & 0xFFFFFFFFFFFFC000) != 0 && tv_sec >= dword_1EE17CE6C;
  if (!v16 || a7 == 0)
  {
    if (v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (a4 == -1)
    {
      memset(&v45, 0, 44);
      *(&v45.st_atimespec.tv_nsec + 4) = 0xFFFFLL;
      WORD2(v45.st_mtimespec.tv_sec) = 0;
      v45.st_mtimespec.tv_nsec = 0;
      if (llvm::sys::fs::status(this, &v45, a3))
      {
        goto LABEL_29;
      }

      a4 = v45.st_atimespec.tv_sec;
      if (tv_sec + a6 != v45.st_atimespec.tv_sec)
      {
        goto LABEL_29;
      }
    }

    else if (tv_sec + a6 != a4)
    {
      goto LABEL_29;
    }

    if ((a4 & (v14 - 1)) != 0)
    {
LABEL_22:
      v45.st_dev = 0;
      v45.st_ino = std::system_category();
      v18 = operator new(48, a3);
      *v18 = &unk_1F5B3F380;
      PageSizeEstimate = llvm::sys::Process::getPageSizeEstimate(v18);
      v20 = (PageSizeEstimate - 1) & a6;
      v21 = llvm::sys::Process::getPageSizeEstimate(PageSizeEstimate);
      llvm::sys::fs::mapped_file_region::mapped_file_region((v18 + 24), this, 0, v20 + tv_sec, -v21 & a6, &v45);
      if (!v45.st_dev)
      {
        Loc = mlir::Token::getLoc((v18 + 24));
        v23 = Loc + ((llvm::sys::Process::getPageSizeEstimate(Loc) - 1) & a6);
        *(v18 + 1) = v23;
        *(v18 + 2) = &v23[tv_sec];
        if (!v45.st_dev)
        {
          *(a1 + 16) &= ~1u;
          *a1 = v18;
          return;
        }
      }

      (*(*v18 + 8))(v18);
    }
  }

LABEL_29:
  llvm::WritableMemoryBuffer::getNewUninitMemBuffer(tv_sec, a3, a9, v43);
  if (!v43[0])
  {
    v35 = std::generic_category();
    *(a1 + 16) |= 1u;
    *a1 = 12;
    *(a1 + 8) = v35;
    return;
  }

  v28 = *(v43[0] + 8);
  v29 = *(v43[0] + 16) - v28;
  do
  {
    if (!v29)
    {
      goto LABEL_46;
    }

    llvm::sys::fs::readNativeFileSlice(this, v28, v29, a6, &v45);
    if (v45.st_ino)
    {
      v30 = *&v45.st_dev;
      *&v45.st_dev = 0;
      v42 = v30;
      v31 = llvm::errorToErrorCode(&v42);
      *(a1 + 16) |= 1u;
      *a1 = v31;
      *(a1 + 8) = v32;
      if (v42)
      {
        (*(*v42 + 8))(v42);
        v33 = 1;
        if ((v45.st_ino & 1) == 0)
        {
          continue;
        }
      }

      else
      {
        v33 = 1;
        if ((v45.st_ino & 1) == 0)
        {
          continue;
        }
      }
    }

    else if (*&v45.st_dev)
    {
      v33 = 0;
      v29 -= *&v45.st_dev;
      v28 += *&v45.st_dev;
      a6 += *&v45.st_dev;
      if ((v45.st_ino & 1) == 0)
      {
        continue;
      }
    }

    else
    {
      bzero(v28, v29);
      v33 = 3;
      if ((v45.st_ino & 1) == 0)
      {
        continue;
      }
    }

    v34 = *&v45.st_dev;
    *&v45.st_dev = 0;
    if (v34)
    {
      (*(*v34 + 8))(v34);
    }
  }

  while (!v33);
  if (v33 == 3)
  {
LABEL_46:
    *(a1 + 16) &= ~1u;
    *a1 = v43[0];
    return;
  }

  if (v43[0])
  {
    (*(*v43[0] + 8))(v43[0]);
  }
}

void getMemoryBufferForStream(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v17[2048] = *MEMORY[0x1E69E9840];
  v15 = v17;
  v16 = xmmword_1E099E190;
  llvm::sys::fs::readNativeFileToEOF(v5, &v15, 0x4000uLL, &v14);
  if (v14)
  {
    v13 = v14;
    v14 = 0;
    v6 = llvm::errorToErrorCode(&v13);
    *(v4 + 16) |= 1u;
    *v4 = v6;
    *(v4 + 8) = v7;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    if (v14)
    {
      (*(*v14 + 8))(v14);
      v8 = v15;
      if (v15 == v17)
      {
        return;
      }

      goto LABEL_12;
    }

LABEL_11:
    v8 = v15;
    if (v15 == v17)
    {
      return;
    }

    goto LABEL_12;
  }

  v9 = v15;
  v10 = v16;
  llvm::WritableMemoryBuffer::getNewUninitMemBuffer(v16, v3, 0, &v14);
  v11 = v14;
  if (v14)
  {
    if (v10)
    {
      memmove(*(v14 + 8), v9, v10);
    }

    *(v4 + 16) &= ~1u;
    *v4 = v11;
    goto LABEL_11;
  }

  v12 = std::generic_category();
  *(v4 + 16) |= 1u;
  *v4 = 12;
  *(v4 + 8) = v12;
  v8 = v15;
  if (v15 == v17)
  {
    return;
  }

LABEL_12:
  free(v8);
}

uint64_t llvm::sys::Process::getPageSizeEstimate(llvm::sys::Process *this)
{
  v8 = *MEMORY[0x1E69E9840];
  llvm::sys::Process::getPageSize(&v6);
  if ((v7 & 1) == 0)
  {
    return v6;
  }

  v1 = v6;
  v6 = 0;
  v4 = v1;
  llvm::handleErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v4, &v5);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (v7)
  {
    v2 = v6;
    v6 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return 4096;
}

void *anonymous namespace::MemoryBufferMMapFile<llvm::MemoryBuffer>::~MemoryBufferMMapFile(void *a1)
{
  *a1 = &unk_1F5B3F380;
  llvm::sys::fs::mapped_file_region::unmapImpl((a1 + 3));
  return a1;
}

void anonymous namespace::MemoryBufferMMapFile<llvm::MemoryBuffer>::~MemoryBufferMMapFile(void *a1)
{
  *a1 = &unk_1F5B3F380;
  llvm::sys::fs::mapped_file_region::unmapImpl((a1 + 3));

  free(a1);
}

llvm::MemoryBufferRef *llvm::MemoryBufferRef::MemoryBufferRef(llvm::MemoryBufferRef *this, const llvm::MemoryBuffer *a2)
{
  v3 = *(a2 + 1);
  v4 = *(a2 + 2) - v3;
  *this = v3;
  *(this + 1) = v4;
  *(this + 2) = (*(*a2 + 16))(a2);
  *(this + 3) = v5;
  return this;
}

void *llvm::write_integer(llvm::raw_ostream *a1, unsigned int a2, size_t a3, int a4)
{
  return write_unsigned_impl<unsigned int>(a1, a2, a3, a4, 0);
}

{
  if ((a2 & 0x80000000) != 0)
  {
    a2 = -a2;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return write_unsigned_impl<unsigned int>(a1, a2, a3, a4, v4);
}

void *llvm::write_integer(llvm::raw_ostream *a1, unint64_t a2, size_t a3, int a4)
{
  return write_unsigned<unsigned long>(a1, a2, a3, a4, 0);
}

{
  if ((a2 & 0x8000000000000000) != 0)
  {
    a2 = -a2;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return write_unsigned<unsigned long>(a1, a2, a3, a4, v4);
}

void *write_unsigned<unsigned long>(llvm::raw_ostream *this, unint64_t a2, size_t a3, int a4, int a5)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!HIDWORD(a2))
  {

    return write_unsigned_impl<unsigned int>(this, a2, a3, a4, a5);
  }

  v9 = 0;
  v10 = 0;
  do
  {
    v24[v10-- + 127] = (a2 % 0xA) | 0x30;
    v9 += 0x100000000;
    v11 = a2 > 9;
    a2 /= 0xAuLL;
  }

  while (v11);
  v12 = v9 >> 32;
  if (!a5)
  {
LABEL_10:
    if (a4 != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  v13 = *(this + 4);
  if (v13 < *(this + 3))
  {
    *(this + 4) = v13 + 1;
    *v13 = 45;
    goto LABEL_10;
  }

  llvm::raw_ostream::write(this, 45);
  if (a4 != 1)
  {
LABEL_11:
    if (v12 < a3)
    {
      v14 = v12;
      do
      {
        while (1)
        {
          v15 = *(this + 4);
          if (v15 >= *(this + 3))
          {
            break;
          }

          *(this + 4) = v15 + 1;
          *v15 = 48;
          if (++v14 >= a3)
          {
            goto LABEL_16;
          }
        }

        llvm::raw_ostream::write(this, 48);
        ++v14;
      }

      while (v14 < a3);
    }
  }

LABEL_16:
  v16 = &v25 - v12;
  if (a4 != 1)
  {
    return llvm::raw_ostream::write(this, &v25 - v12, v12);
  }

  v17 = (v12 - 1) % 3;
  v18 = v17 + 1;
  v19 = v12 - (v17 + 1);
  if (v12 >= v17 + 1)
  {
    v20 = v17 + 1;
  }

  else
  {
    v20 = v12;
  }

  result = llvm::raw_ostream::write(this, v16, v20);
  if (v19)
  {
    v21 = &v16[v18];
    v22 = -3 * ((-v10 - 1) / 3uLL);
    do
    {
      v23 = *(this + 4);
      if (v23 < *(this + 3))
      {
        *(this + 4) = v23 + 1;
        *v23 = 44;
      }

      else
      {
        llvm::raw_ostream::write(this, 44);
      }

      result = llvm::raw_ostream::write(this, v21, 3uLL);
      v21 += 3;
      v22 += 3;
    }

    while (v22);
  }

  return result;
}

void *llvm::write_hex(void *a1, unint64_t a2, int a3, unint64_t a4, char a5)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    if (a4 > 0x7F)
    {
      LODWORD(a4) = 128;
    }
  }

  else
  {
    LODWORD(a4) = 0;
  }

  v5 = (67 - __clz(a2)) >> 2;
  if (v5 <= 1)
  {
    v5 = 1;
  }

  *&v6 = 0x3030303030303030;
  *(&v6 + 1) = 0x3030303030303030;
  v11[6] = v6;
  v11[7] = v6;
  v11[4] = v6;
  v11[5] = v6;
  LODWORD(v7) = v5 + 2 * ((a3 & 0xFFFFFFFE) == 2);
  v11[2] = v6;
  v11[3] = v6;
  if (a4 <= v7)
  {
    v7 = v7;
  }

  else
  {
    v7 = a4;
  }

  v11[0] = v6;
  v11[1] = v6;
  if ((a3 & 0xFFFFFFFE) == 2)
  {
    BYTE1(v11[0]) = 120;
  }

  if (a2)
  {
    v8 = &v11[-1] + v7 + 15;
    do
    {
      *v8-- = llvm::hexdigit(unsigned int,BOOL)::LUT[a2 & 0xF] | (32 * ((a3 & 0xFFFFFFFD) != 0));
      v9 = a2 > 0xF;
      a2 >>= 4;
    }

    while (v9);
  }

  return llvm::raw_ostream::write(a1, v11, v7);
}

void llvm::write_double(llvm::raw_ostream *this, unsigned int a2, unint64_t a3, char a4, double a5)
{
  v37[1] = *MEMORY[0x1E69E9840];
  v6 = 2;
  if (a2 < 2)
  {
    v6 = 6;
  }

  if ((a4 & 1) == 0)
  {
    a3 = v6;
  }

  if (fabs(a5) != INFINITY)
  {
    v35 = v37;
    v36 = xmmword_1E096FB00;
    if (a2 == 1)
    {
      v13 = 69;
    }

    else
    {
      v13 = 102;
    }

    if (a2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 101;
    }

    v27 = 2;
    v31 = 0;
    v32 = 1;
    v29 = 0;
    v30 = 0;
    v28 = 0;
    v26 = &unk_1F5B3FBC0;
    v33 = &v35;
    llvm::raw_ostream::SetBufferAndMode(&v26, 0, 0, 0);
    if ((v29 - v30) > 1)
    {
      *v30++ = 11813;
      v16 = llvm::raw_ostream::operator<<(&v26, a3);
      v17 = *(v16 + 4);
      if (v17 >= *(v16 + 3))
      {
LABEL_25:
        llvm::raw_ostream::write(v16, v14);
        if (a2 != 3)
        {
LABEL_26:
          v18 = v36;
          if ((v36 + 1) > *(&v36 + 1))
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod(&v35, v37, v36 + 1, 1);
            v18 = v36;
          }

          v35[v18] = 0;
          snprintf(__str, 0x20uLL, v35, *&a5, &unk_1F5B07C70, v35, *&a5);
          v19 = strlen(__str);
          v20 = *(this + 4);
          if (v19 > *(this + 3) - v20)
          {
            llvm::raw_ostream::write(this, __str, v19);
            llvm::raw_ostream::~raw_ostream(&v26);
            v21 = v35;
            if (v35 == v37)
            {
              return;
            }

            goto LABEL_46;
          }

          if (v19)
          {
            memcpy(v20, __str, v19);
            *(this + 4) += v19;
            llvm::raw_ostream::~raw_ostream(&v26);
            v21 = v35;
            if (v35 == v37)
            {
              return;
            }

            goto LABEL_46;
          }

          goto LABEL_45;
        }

LABEL_34:
        v22 = a5 * 100.0;
        v23 = v36;
        if ((v36 + 1) > *(&v36 + 1))
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(&v35, v37, v36 + 1, 1);
          v23 = v36;
        }

        v35[v23] = 0;
        snprintf(__str, 0x20uLL, v35, *&v22, &unk_1F5B07C70, v35, *&v22);
        v24 = strlen(__str);
        v25 = *(this + 4);
        if (v24 <= *(this + 3) - v25)
        {
          if (v24)
          {
            memcpy(v25, __str, v24);
            v25 = (*(this + 4) + v24);
            *(this + 4) = v25;
          }
        }

        else
        {
          llvm::raw_ostream::write(this, __str, v24);
          v25 = *(this + 4);
        }

        if (v25 >= *(this + 3))
        {
          llvm::raw_ostream::write(this, 37);
          llvm::raw_ostream::~raw_ostream(&v26);
          v21 = v35;
          if (v35 == v37)
          {
            return;
          }

LABEL_46:
          free(v21);
          return;
        }

        *(this + 4) = v25 + 1;
        *v25 = 37;
LABEL_45:
        llvm::raw_ostream::~raw_ostream(&v26);
        v21 = v35;
        if (v35 == v37)
        {
          return;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v15 = llvm::raw_ostream::write(&v26, "%.", 2uLL);
      v16 = llvm::raw_ostream::operator<<(v15, a3);
      v17 = *(v16 + 4);
      if (v17 >= *(v16 + 3))
      {
        goto LABEL_25;
      }
    }

    *(v16 + 4) = v17 + 1;
    *v17 = v14;
    if (a2 != 3)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

  if (a5 >= 0.0)
  {
    v9 = "INF";
  }

  else
  {
    v9 = "-INF";
  }

  if (a5 >= 0.0)
  {
    v10 = 3;
  }

  else
  {
    v10 = 4;
  }

  v11 = *(this + 4);
  if (v10 <= *(this + 3) - v11)
  {
    memcpy(v11, v9, v10);
    *(this + 4) += v10;
  }

  else
  {

    llvm::raw_ostream::write(this, v9, v10);
  }
}

void *write_unsigned_impl<unsigned int>(llvm::raw_ostream *this, unsigned int a2, size_t a3, int a4, int a5)
{
  v8 = 0;
  v9 = 0;
  v25 = *MEMORY[0x1E69E9840];
  do
  {
    v24[v9-- + 127] = (a2 % 0xA) | 0x30;
    v8 += 0x100000000;
    v10 = a2 > 9;
    a2 /= 0xAu;
  }

  while (v10);
  v11 = v8 >> 32;
  if (a5)
  {
    v12 = *(this + 4);
    if (v12 >= *(this + 3))
    {
      llvm::raw_ostream::write(this, 45);
      if (a4 == 1)
      {
        goto LABEL_12;
      }

      goto LABEL_7;
    }

    *(this + 4) = v12 + 1;
    *v12 = 45;
  }

  if (a4 == 1)
  {
    goto LABEL_12;
  }

LABEL_7:
  if (v11 < a3)
  {
    v13 = v11;
    do
    {
      while (1)
      {
        v14 = *(this + 4);
        if (v14 >= *(this + 3))
        {
          break;
        }

        *(this + 4) = v14 + 1;
        *v14 = 48;
        if (++v13 >= a3)
        {
          goto LABEL_12;
        }
      }

      llvm::raw_ostream::write(this, 48);
      ++v13;
    }

    while (v13 < a3);
  }

LABEL_12:
  v15 = &v25 - v11;
  if (a4 != 1)
  {
    return llvm::raw_ostream::write(this, &v25 - v11, v11);
  }

  v16 = (v11 - 1) % 3;
  v17 = v16 + 1;
  v18 = v11 - (v16 + 1);
  if (v11 >= v16 + 1)
  {
    v19 = v16 + 1;
  }

  else
  {
    v19 = v11;
  }

  result = llvm::raw_ostream::write(this, v15, v19);
  if (v18)
  {
    v21 = &v15[v17];
    v22 = -3 * ((-v9 - 1) / 3uLL);
    do
    {
      v23 = *(this + 4);
      if (v23 < *(this + 3))
      {
        *(this + 4) = v23 + 1;
        *v23 = 44;
      }

      else
      {
        llvm::raw_ostream::write(this, 44);
      }

      result = llvm::raw_ostream::write(this, v21, 3uLL);
      v21 += 3;
      v22 += 3;
    }

    while (v22);
  }

  return result;
}

void *llvm::operator<<(void *result)
{
  v1 = result[4];
  if (result[3] - v1 <= 3uLL)
  {
    return llvm::raw_ostream::write(result, "None", 4uLL);
  }

  *v1 = 1701736270;
  result[4] += 4;
  return result;
}

uint64_t llvm::PrettyStackTraceEntry::PrettyStackTraceEntry(uint64_t a1, int a2)
{
  *a1 = &unk_1F5B3F3D0;
  *(a1 + 8) = a2;
  v3 = GlobalSigInfoGenerationCounter;
  v4 = ThreadLocalSigInfoGenerationCounter();
  if (*v4)
  {
    v5 = *v4 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v4;
    v7 = llvm::errs(v4);
    PrintCurStackTrace(v7);
    *v6 = v3;
  }

  v8 = PrettyStackTraceHead();
  *(a1 + 16) = *v8;
  *v8 = a1;
  return a1;
}

void llvm::PrettyStackTraceEntry::~PrettyStackTraceEntry(llvm::PrettyStackTraceEntry *this)
{
  *this = &unk_1F5B3F3D0;
  v1 = PrettyStackTraceHead();
  *v1 = v2;
  v3 = GlobalSigInfoGenerationCounter;
  v4 = ThreadLocalSigInfoGenerationCounter();
  if (*v4)
  {
    v5 = *v4 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v4;
    v7 = llvm::errs(v4);
    PrintCurStackTrace(v7);
    *v6 = v3;
  }
}

llvm::PrettyStackTraceFormat *llvm::PrettyStackTraceFormat::PrettyStackTraceFormat(llvm::PrettyStackTraceFormat *this, const char *a2, ...)
{
  va_start(va, a2);
  *this = &unk_1F5B3F3D0;
  *(this + 2) = 0;
  v4 = GlobalSigInfoGenerationCounter;
  v5 = ThreadLocalSigInfoGenerationCounter();
  if (*v5)
  {
    v6 = *v5 == v4;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = v5;
    v8 = llvm::errs(v5);
    PrintCurStackTrace(v8);
    *v7 = v4;
  }

  v9 = PrettyStackTraceHead();
  *(this + 2) = *v9;
  *v9 = this;
  *(this + 3) = this + 48;
  v10 = (this + 24);
  *this = &unk_1F5B3F3F8;
  *(this + 2) = xmmword_1E096E640;
  v11 = vsnprintf(0, 0, a2, va);
  if ((v11 & 0x80000000) == 0)
  {
    v12 = (v11 + 1);
    v13 = *(this + 4);
    if (v13 != v12)
    {
      if (v13 <= v12)
      {
        if (*(this + 5) < v12)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(this + 24, this + 48, v12, 1);
          v13 = *(this + 4);
        }

        if (v12 != v13)
        {
          bzero(&(*v10)[v13], v12 - v13);
        }
      }

      *(this + 4) = v12;
    }

    vsnprintf(*v10, v12, a2, va);
  }

  return this;
}

void *llvm::PrettyStackTraceFormat::print(llvm::PrettyStackTraceFormat *this, llvm::raw_ostream *a2)
{
  result = llvm::raw_ostream::write(a2, *(this + 3), *(this + 4));
  v3 = result[4];
  if (result[3] == v3)
  {

    return llvm::raw_ostream::write(result, "\n", 1uLL);
  }

  else
  {
    *v3 = 10;
    ++result[4];
  }

  return result;
}

void llvm::PrettyStackTraceFormat::~PrettyStackTraceFormat(llvm::PrettyStackTraceFormat *this)
{
  *this = &unk_1F5B3F3F8;
  v2 = *(this + 3);
  if (v2 != this + 48)
  {
    free(v2);
  }

  *this = &unk_1F5B3F3D0;
  v3 = PrettyStackTraceHead();
  *v3 = v4;
  v5 = GlobalSigInfoGenerationCounter;
  v6 = ThreadLocalSigInfoGenerationCounter();
  if (*v6)
  {
    v7 = *v6 == v5;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = v6;
    v9 = llvm::errs(v6);
    PrintCurStackTrace(v9);
    *v8 = v5;
  }
}

{
  *this = &unk_1F5B3F3F8;
  v2 = *(this + 3);
  if (v2 != this + 48)
  {
    free(v2);
  }

  *this = &unk_1F5B3F3D0;
  v3 = PrettyStackTraceHead();
  *v3 = v4;
  v5 = GlobalSigInfoGenerationCounter;
  v6 = ThreadLocalSigInfoGenerationCounter();
  if (*v6)
  {
    v7 = *v6 == v5;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = v6;
    v9 = llvm::errs(v6);
    PrintCurStackTrace(v9);
    *v8 = v5;
  }

  operator delete(this);
}

void PrintCurStackTrace(llvm::raw_ostream *a1)
{
  v2 = PrettyStackTraceHead();
  v3 = *v2;
  if (*v2)
  {
    v4 = v2;
    v5 = *(a1 + 4);
    if ((*(a1 + 3) - v5) >= 0xC)
    {
      *(v5 + 8) = 171602029;
      *v5 = *"Stack dump:\n";
      *(a1 + 4) += 12;
      *v2 = 0;
    }

    else
    {
      llvm::raw_ostream::write(a1, "Stack dump:\n", 0xCuLL);
      v3 = *v4;
      *v4 = 0;
      if (!v3)
      {
LABEL_15:
        *v4 = v3;
        if (*(a1 + 4) != *(a1 + 2))
        {
          llvm::raw_ostream::flush_nonempty(a1);
        }

        return;
      }
    }

    v6 = 0;
    v7 = v3;
    do
    {
      v8 = v6;
      v6 = v7;
      v7 = v7[2];
      v6[2] = v8;
    }

    while (v7);
    v9 = 0;
    v10 = v6;
    do
    {
      v11 = llvm::raw_ostream::operator<<(a1, v9);
      v12 = *(v11 + 4);
      if (*(v11 + 3) - v12 > 1uLL)
      {
        *v12 = 2350;
        *(v11 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v11, ".\t", 2uLL);
      }

      llvm::sys::Watchdog::Watchdog(&v15, 5u);
      (*(*v10 + 16))(v10, a1);
      llvm::sys::Watchdog::~Watchdog(&v15);
      v10 = v10[2];
      ++v9;
    }

    while (v10);
    v13 = 0;
    do
    {
      v14 = v6;
      v6 = v6[2];
      v14[2] = v13;
      v13 = v14;
    }

    while (v6);
    goto LABEL_15;
  }
}

void llvm::initRandomSeedOptions(llvm *this)
{
  if (!atomic_load_explicit(Seed, memory_order_acquire))
  {
  }
}

uint64_t anonymous namespace::CreateSeed::call(_anonymous_namespace_::CreateSeed *this)
{
  v1 = operator new(0xC8uLL);
  *&v7 = "seed";
  *(&v7 + 1) = 4;
  v6 = 1;
  *&v5 = "Seed for the random number generator";
  *(&v5 + 1) = 36;
  v3 = 0;
  v4 = &v3;
  return llvm::cl::opt<unsigned long long,false,llvm::cl::parser<unsigned long long>>::opt<char [9],llvm::cl::value_desc,llvm::cl::OptionHidden,llvm::cl::desc,llvm::cl::initializer<int>>(v1, "rng-seed", &v7, &v6, &v5, &v4);
}

uint64_t llvm::object_deleter<llvm::cl::opt<unsigned long long,false,llvm::cl::parser<unsigned long long>>>::call(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t llvm::cl::opt<unsigned long long,false,llvm::cl::parser<unsigned long long>>::opt<char [9],llvm::cl::value_desc,llvm::cl::OptionHidden,llvm::cl::desc,llvm::cl::initializer<int>>(uint64_t a1, const char *a2, _OWORD *a3, _WORD *a4, _OWORD *a5, int **a6)
{
  *a1 = &unk_1F5B3E1D8;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v12 = a1 + 80;
  *(a1 + 64) = a1 + 80;
  v13 = a1 + 64;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v15 = *(a1 + 72);
  if (v15 >= *(a1 + 76))
  {
    v19 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v13, v12, v15 + 1, 8);
    GeneralCategory = v19;
    LODWORD(v15) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v15) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 136) = &unk_1F5B00D30;
  *a1 = &unk_1F5B00CC8;
  *(a1 + 160) = &unk_1F5B3E500;
  *(a1 + 168) = &unk_1F5B00D50;
  *(a1 + 192) = a1 + 168;
  v16 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v16);
  *(a1 + 48) = *a3;
  *(a1 + 10) = (32 * (*a4 & 3)) | *(a1 + 10) & 0xFF9F;
  *(a1 + 32) = *a5;
  v17 = **a6;
  *(a1 + 128) = v17;
  *(a1 + 152) = 1;
  *(a1 + 144) = v17;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t llvm::Regex::Regex(uint64_t a1, char *a2, uint64_t a3, unsigned int a4)
{
  v8 = operator new(0x20uLL);
  *v8 = 0u;
  v8[1] = 0u;
  *a1 = v8;
  *(v8 + 2) = &a2[a3];
  *(a1 + 8) = llvm_regcomp(v8, a2, ((4 * a4) & 8 | (2 * (a4 & 1)) | (a4 >> 2) & 1) ^ 0x21);
  return a1;
}

void llvm::Regex::~Regex(void **this)
{
  v2 = *this;
  if (v2)
  {
    llvm_regfree(v2);
    if (*this)
    {
      operator delete(*this);
    }
  }
}

uint64_t llvm::Regex::match(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38[16] = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v10 = *(a5 + 23);
    if (v10 < 0)
    {
      v10 = *(a5 + 8);
    }

    if (v10)
    {
      MEMORY[0x1E12E55D0](a5, "");
    }

    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = *a1;
      v13 = llvm_regerror(*(a1 + 8), *a1, 0, 0);
      std::string::resize(a5, v13 - 1, 0);
      if (*(a5 + 23) >= 0)
      {
        v14 = a5;
      }

      else
      {
        v14 = *a5;
      }

      llvm_regerror(v11, v12, v14, v13);
      return 0;
    }
  }

  else if (*(a1 + 8))
  {
    return 0;
  }

  if (a4)
  {
    v16 = *(*a1 + 8) + 1;
  }

  else
  {
    v16 = 0;
  }

  if (a2)
  {
    v17 = a3;
  }

  else
  {
    a2 = "";
    v17 = 0;
  }

  v36 = v38;
  v37 = 0x800000000;
  if (v16 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v16;
  }

  if (v16 < 9)
  {
    v19 = 0;
    v20 = v38;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v38, v18, 16);
    v19 = v37;
    if (v37 == v18)
    {
      goto LABEL_27;
    }

    v20 = v36;
  }

  bzero(&v20[2 * v19], 16 * (v18 - v19));
LABEL_27:
  LODWORD(v37) = v18;
  v21 = v36;
  *v36 = 0;
  v21[1] = v17;
  v22 = llvm_regexec(*a1, a2, v16, v21, 4);
  if (v22)
  {
    if (v22 == 1 || !a5)
    {
      result = 0;
      v27 = v36;
      if (v36 == v38)
      {
        return result;
      }
    }

    else
    {
      v23 = *(a1 + 8);
      v24 = *a1;
      v25 = llvm_regerror(v23, *a1, 0, 0);
      std::string::resize(a5, v25 - 1, 0);
      if (*(a5 + 23) >= 0)
      {
        v26 = a5;
      }

      else
      {
        v26 = *a5;
      }

      llvm_regerror(v23, v24, v26, v25);
      result = 0;
      v27 = v36;
      if (v36 == v38)
      {
        return result;
      }
    }

LABEL_36:
    v28 = result;
    free(v27);
    return v28;
  }

  if (a4)
  {
    *(a4 + 8) = 0;
    if (v16)
    {
      v29 = 0;
      v30 = 0;
      v31 = 16 * v16;
      do
      {
        while (1)
        {
          v32 = *(v36 + v29);
          if (v32 == -1)
          {
            break;
          }

          v33 = *(v36 + v29 + 8);
          if (v30 >= *(a4 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v30 + 1, 16);
            v30 = *(a4 + 8);
          }

          v34 = (*a4 + 16 * v30);
          *v34 = &a2[v32];
          v34[1] = v33 - v32;
          v30 = *(a4 + 8) + 1;
          *(a4 + 8) = v30;
          v29 += 16;
          if (v31 == v29)
          {
            goto LABEL_49;
          }
        }

        if (v30 >= *(a4 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v30 + 1, 16);
          v30 = *(a4 + 8);
        }

        v35 = (*a4 + 16 * v30);
        *v35 = 0;
        v35[1] = 0;
        v30 = *(a4 + 8) + 1;
        *(a4 + 8) = v30;
        v29 += 16;
      }

      while (v31 != v29);
    }
  }

LABEL_49:
  result = 1;
  v27 = v36;
  if (v36 != v38)
  {
    goto LABEL_36;
  }

  return result;
}

double llvm::SHA1::init(llvm::SHA1 *this)
{
  *(this + 4) = xmmword_1E099E290;
  *&result = 3285377520;
  *(this + 10) = 3285377520;
  *(this + 88) = 0;
  return result;
}

_DWORD *llvm::SHA1::hashBlock(_DWORD *this)
{
  v1 = this[16];
  v2 = this[17];
  HIDWORD(v4) = v1;
  LODWORD(v4) = v1;
  v3 = v4 >> 27;
  HIDWORD(v4) = v2;
  LODWORD(v4) = v2;
  v5 = v4 >> 2;
  v6 = this[18];
  v277 = this[19];
  v278 = this[20];
  v7 = this[1];
  v8 = v3 + v278 + *this + (v6 & v2 | v277 & ~v2) + 1518500249;
  HIDWORD(v4) = v8;
  LODWORD(v4) = v8;
  v9 = v277 + v7 + (v5 & v1 | v6 & ~v1) + 1518500249 + (v4 >> 27);
  HIDWORD(v4) = v1;
  LODWORD(v4) = v1;
  v10 = v4 >> 2;
  HIDWORD(v4) = v9;
  LODWORD(v4) = v9;
  v12 = this[2];
  v11 = this[3];
  v13 = v6 + v12 + (v10 & v8 | v5 & ~v8) + 1518500249 + (v4 >> 27);
  HIDWORD(v4) = v8;
  LODWORD(v4) = v8;
  v14 = v4 >> 2;
  HIDWORD(v4) = v13;
  LODWORD(v4) = v13;
  v15 = v5 + v11 + (v14 & v9 | v10 & ~v9) + 1518500249 + (v4 >> 27);
  HIDWORD(v4) = v9;
  LODWORD(v4) = v9;
  v16 = v4 >> 2;
  HIDWORD(v4) = v15;
  LODWORD(v4) = v15;
  v17 = this[4];
  v18 = this[5];
  v19 = v10 + v17 + (v16 & v13 | v14 & ~v13) + 1518500249 + (v4 >> 27);
  HIDWORD(v4) = v13;
  LODWORD(v4) = v13;
  v20 = v4 >> 2;
  HIDWORD(v4) = v19;
  LODWORD(v4) = v19;
  v21 = v14 + v18 + (v20 & v15 | v16 & ~v15) + 1518500249 + (v4 >> 27);
  HIDWORD(v4) = v15;
  LODWORD(v4) = v15;
  v22 = v4 >> 2;
  HIDWORD(v4) = v21;
  LODWORD(v4) = v21;
  v24 = this[6];
  v23 = this[7];
  v25 = v24 + v16 + (v22 & v19 | v20 & ~v19) + 1518500249 + (v4 >> 27);
  HIDWORD(v4) = v19;
  LODWORD(v4) = v19;
  v26 = v4 >> 2;
  HIDWORD(v4) = v25;
  LODWORD(v4) = v25;
  v27 = v23 + v20 + (v26 & v21 | v22 & ~v21) + 1518500249 + (v4 >> 27);
  HIDWORD(v4) = v21;
  LODWORD(v4) = v21;
  v28 = v4 >> 2;
  HIDWORD(v4) = v27;
  LODWORD(v4) = v27;
  v30 = this[8];
  v29 = this[9];
  v31 = v30 + v22 + (v28 & v25 | v26 & ~v25) + 1518500249 + (v4 >> 27);
  HIDWORD(v4) = v25;
  LODWORD(v4) = v25;
  v32 = v4 >> 2;
  HIDWORD(v4) = v31;
  LODWORD(v4) = v31;
  v33 = v29 + v26 + (v32 & v27 | v28 & ~v27) + 1518500249 + (v4 >> 27);
  HIDWORD(v4) = v27;
  LODWORD(v4) = v27;
  v34 = v4 >> 2;
  HIDWORD(v4) = v33;
  LODWORD(v4) = v33;
  v36 = this[10];
  v35 = this[11];
  v37 = v36 + v28 + (v34 & v31 | v32 & ~v31) + 1518500249 + (v4 >> 27);
  HIDWORD(v4) = v31;
  LODWORD(v4) = v31;
  v38 = v4 >> 2;
  HIDWORD(v4) = v37;
  LODWORD(v4) = v37;
  v39 = v35 + v32 + (v38 & v33 | v34 & ~v33) + 1518500249 + (v4 >> 27);
  HIDWORD(v4) = v33;
  LODWORD(v4) = v33;
  v40 = v4 >> 2;
  HIDWORD(v4) = v39;
  LODWORD(v4) = v39;
  v42 = this[12];
  v41 = this[13];
  v43 = v42 + v34 + (v40 & v37 | v38 & ~v37) + 1518500249 + (v4 >> 27);
  HIDWORD(v4) = v37;
  LODWORD(v4) = v37;
  v44 = v4 >> 2;
  HIDWORD(v4) = v43;
  LODWORD(v4) = v43;
  v45 = v41 + v38 + (v44 & v39 | v40 & ~v39) + 1518500249 + (v4 >> 27);
  HIDWORD(v4) = v39;
  LODWORD(v4) = v39;
  v46 = v4 >> 2;
  HIDWORD(v4) = v45;
  LODWORD(v4) = v45;
  v48 = this[14];
  v47 = this[15];
  v49 = v48 + v40 + (v46 & v43 | v44 & ~v43) + 1518500249 + (v4 >> 27);
  HIDWORD(v4) = v43;
  LODWORD(v4) = v43;
  v50 = v4 >> 2;
  HIDWORD(v4) = v49;
  LODWORD(v4) = v49;
  v51 = v47 + v44 + (v50 & v45 | v46 & ~v45) + 1518500249 + (v4 >> 27);
  HIDWORD(v4) = v45;
  LODWORD(v4) = v45;
  v52 = v4 >> 2;
  HIDWORD(v4) = v12 ^ *this ^ v30 ^ v41;
  LODWORD(v4) = HIDWORD(v4);
  v53 = v4 >> 31;
  HIDWORD(v4) = v51;
  LODWORD(v4) = v51;
  v54 = v53 + v46 + (v52 & v49 | v50 & ~v49) + 1518500249 + (v4 >> 27);
  HIDWORD(v4) = v49;
  LODWORD(v4) = v49;
  v55 = v4 >> 2;
  HIDWORD(v4) = v11 ^ v7 ^ v29 ^ v48;
  LODWORD(v4) = HIDWORD(v4);
  v56 = v4 >> 31;
  HIDWORD(v4) = v54;
  LODWORD(v4) = v54;
  v57 = v4 >> 27;
  HIDWORD(v4) = v51;
  LODWORD(v4) = v51;
  v58 = v4 >> 2;
  v59 = v56 + v50 + (v55 & v51 | v52 & ~v51) + 1518500249 + v57;
  HIDWORD(v4) = v17 ^ v12 ^ v36 ^ v47;
  LODWORD(v4) = HIDWORD(v4);
  v60 = v4 >> 31;
  HIDWORD(v4) = v59;
  LODWORD(v4) = v59;
  v61 = v60 + v52 + (v58 & v54 | v55 & ~v54) + 1518500249 + (v4 >> 27);
  HIDWORD(v4) = v54;
  LODWORD(v4) = v54;
  v62 = v4 >> 2;
  HIDWORD(v4) = v18 ^ v11 ^ v35 ^ v53;
  LODWORD(v4) = HIDWORD(v4);
  v63 = v4 >> 31;
  HIDWORD(v4) = v61;
  LODWORD(v4) = v61;
  v64 = v63 + v55 + (v62 & v59 | v58 & ~v59) + 1518500249 + (v4 >> 27);
  HIDWORD(v4) = v59;
  LODWORD(v4) = v59;
  v65 = v4 >> 2;
  HIDWORD(v4) = v24 ^ v17 ^ v42 ^ v56;
  LODWORD(v4) = HIDWORD(v4);
  v66 = v4 >> 31;
  HIDWORD(v4) = v64;
  LODWORD(v4) = v64;
  v67 = v4 >> 27;
  v68 = v66 + v58 + (v65 ^ v62 ^ v61) + 1859775393;
  HIDWORD(v4) = v61;
  LODWORD(v4) = v61;
  v69 = v4 >> 2;
  v70 = v68 + v67;
  HIDWORD(v4) = v23 ^ v18 ^ v41 ^ v60;
  LODWORD(v4) = HIDWORD(v4);
  v71 = v4 >> 31;
  HIDWORD(v4) = v70;
  LODWORD(v4) = v70;
  v72 = v71 + v62 + (v69 ^ v65 ^ v64) + 1859775393 + (v4 >> 27);
  HIDWORD(v4) = v64;
  LODWORD(v4) = v64;
  v73 = v4 >> 2;
  HIDWORD(v4) = v30 ^ v24 ^ v48 ^ v63;
  LODWORD(v4) = HIDWORD(v4);
  v74 = v4 >> 31;
  HIDWORD(v4) = v72;
  LODWORD(v4) = v72;
  v75 = v4 >> 27;
  v76 = v74 + v65 + (v73 ^ v69 ^ v70) + 1859775393;
  HIDWORD(v4) = v70;
  LODWORD(v4) = v70;
  v77 = v4 >> 2;
  v78 = v76 + v75;
  HIDWORD(v4) = v29 ^ v23 ^ v47 ^ v66;
  LODWORD(v4) = HIDWORD(v4);
  v79 = v4 >> 31;
  HIDWORD(v4) = v78;
  LODWORD(v4) = v78;
  v80 = v79 + v69 + (v77 ^ v73 ^ v72) + 1859775393 + (v4 >> 27);
  HIDWORD(v4) = v72;
  LODWORD(v4) = v72;
  v81 = v4 >> 2;
  HIDWORD(v4) = v36 ^ v30 ^ v53 ^ v71;
  LODWORD(v4) = HIDWORD(v4);
  v82 = v4 >> 31;
  HIDWORD(v4) = v80;
  LODWORD(v4) = v80;
  v83 = v4 >> 27;
  v84 = v82 + v73 + (v81 ^ v77 ^ v78) + 1859775393;
  HIDWORD(v4) = v78;
  LODWORD(v4) = v78;
  v85 = v4 >> 2;
  v86 = v84 + v83;
  HIDWORD(v4) = v35 ^ v29 ^ v56 ^ v74;
  LODWORD(v4) = HIDWORD(v4);
  v87 = v4 >> 31;
  HIDWORD(v4) = v86;
  LODWORD(v4) = v86;
  v88 = v87 + v77 + (v85 ^ v81 ^ v80) + 1859775393 + (v4 >> 27);
  HIDWORD(v4) = v80;
  LODWORD(v4) = v80;
  v89 = v4 >> 2;
  HIDWORD(v4) = v42 ^ v36 ^ v60 ^ v79;
  LODWORD(v4) = HIDWORD(v4);
  v90 = v4 >> 31;
  HIDWORD(v4) = v88;
  LODWORD(v4) = v88;
  v91 = v4 >> 27;
  v92 = v90 + v81 + (v89 ^ v85 ^ v86) + 1859775393;
  HIDWORD(v4) = v86;
  LODWORD(v4) = v86;
  v93 = v4 >> 2;
  v94 = v92 + v91;
  HIDWORD(v4) = v41 ^ v35 ^ v63 ^ v82;
  LODWORD(v4) = HIDWORD(v4);
  v95 = v4 >> 31;
  HIDWORD(v4) = v94;
  LODWORD(v4) = v94;
  v96 = v95 + v85 + (v93 ^ v89 ^ v88) + 1859775393 + (v4 >> 27);
  HIDWORD(v4) = v88;
  LODWORD(v4) = v88;
  v97 = v4 >> 2;
  HIDWORD(v4) = v48 ^ v42 ^ v66 ^ v87;
  LODWORD(v4) = HIDWORD(v4);
  v98 = v4 >> 31;
  HIDWORD(v4) = v96;
  LODWORD(v4) = v96;
  v99 = v4 >> 27;
  v100 = v98 + v89 + (v97 ^ v93 ^ v94) + 1859775393;
  HIDWORD(v4) = v94;
  LODWORD(v4) = v94;
  v101 = v4 >> 2;
  v102 = v100 + v99;
  HIDWORD(v4) = v47 ^ v41 ^ v71 ^ v90;
  LODWORD(v4) = HIDWORD(v4);
  v103 = v4 >> 31;
  HIDWORD(v4) = v102;
  LODWORD(v4) = v102;
  v104 = v103 + v93 + (v101 ^ v97 ^ v96) + 1859775393 + (v4 >> 27);
  HIDWORD(v4) = v96;
  LODWORD(v4) = v96;
  v105 = v4 >> 2;
  HIDWORD(v4) = v53 ^ v48 ^ v74 ^ v95;
  LODWORD(v4) = HIDWORD(v4);
  v106 = v4 >> 31;
  HIDWORD(v4) = v104;
  LODWORD(v4) = v104;
  v107 = v4 >> 27;
  v108 = v106 + v97 + (v105 ^ v101 ^ v102) + 1859775393;
  HIDWORD(v4) = v102;
  LODWORD(v4) = v102;
  v109 = v4 >> 2;
  v110 = v108 + v107;
  HIDWORD(v4) = v56 ^ v47 ^ v79 ^ v98;
  LODWORD(v4) = HIDWORD(v4);
  v111 = v4 >> 31;
  HIDWORD(v4) = v110;
  LODWORD(v4) = v110;
  v112 = v111 + v101 + (v109 ^ v105 ^ v104) + 1859775393 + (v4 >> 27);
  HIDWORD(v4) = v104;
  LODWORD(v4) = v104;
  v113 = v4 >> 2;
  HIDWORD(v4) = v60 ^ v53 ^ v82 ^ v103;
  LODWORD(v4) = HIDWORD(v4);
  v114 = v4 >> 31;
  HIDWORD(v4) = v112;
  LODWORD(v4) = v112;
  v115 = v4 >> 27;
  v116 = v114 + v105 + (v113 ^ v109 ^ v110) + 1859775393;
  HIDWORD(v4) = v110;
  LODWORD(v4) = v110;
  v117 = v4 >> 2;
  v118 = v116 + v115;
  HIDWORD(v4) = v63 ^ v56 ^ v87 ^ v106;
  LODWORD(v4) = HIDWORD(v4);
  v119 = v4 >> 31;
  HIDWORD(v4) = v118;
  LODWORD(v4) = v118;
  v120 = v119 + v109 + (v117 ^ v113 ^ v112) + 1859775393 + (v4 >> 27);
  HIDWORD(v4) = v112;
  LODWORD(v4) = v112;
  v121 = v4 >> 2;
  HIDWORD(v4) = v66 ^ v60 ^ v90 ^ v111;
  LODWORD(v4) = HIDWORD(v4);
  v122 = v4 >> 31;
  HIDWORD(v4) = v120;
  LODWORD(v4) = v120;
  v123 = v4 >> 27;
  HIDWORD(v4) = v118;
  LODWORD(v4) = v118;
  v124 = v4 >> 2;
  v125 = v122 + v113 + (v121 ^ v117 ^ v118) + 1859775393 + v123;
  HIDWORD(v4) = v71 ^ v63 ^ v95 ^ v114;
  LODWORD(v4) = HIDWORD(v4);
  v126 = v4 >> 31;
  HIDWORD(v4) = v125;
  LODWORD(v4) = v125;
  v127 = v126 + v117 + (v124 ^ v121 ^ v120) + 1859775393 + (v4 >> 27);
  HIDWORD(v4) = v120;
  LODWORD(v4) = v120;
  v128 = v4 >> 2;
  HIDWORD(v4) = v74 ^ v66 ^ v98 ^ v119;
  LODWORD(v4) = HIDWORD(v4);
  v129 = v4 >> 31;
  HIDWORD(v4) = v127;
  LODWORD(v4) = v127;
  v130 = v4 >> 27;
  v131 = v129 + v121 + (v128 ^ v124 ^ v125) + 1859775393;
  HIDWORD(v4) = v125;
  LODWORD(v4) = v125;
  v132 = v4 >> 2;
  v133 = v131 + v130;
  HIDWORD(v4) = v79 ^ v71 ^ v103 ^ v122;
  LODWORD(v4) = HIDWORD(v4);
  v134 = v4 >> 31;
  HIDWORD(v4) = v133;
  LODWORD(v4) = v133;
  v135 = v134 + v124 + (v132 ^ v128 ^ v127) + 1859775393 + (v4 >> 27);
  HIDWORD(v4) = v127;
  LODWORD(v4) = v127;
  v136 = v4 >> 2;
  HIDWORD(v4) = v82 ^ v74 ^ v106 ^ v126;
  LODWORD(v4) = HIDWORD(v4);
  v137 = v4 >> 31;
  HIDWORD(v4) = v135;
  LODWORD(v4) = v135;
  v138 = v4 >> 27;
  v139 = v137 + v128 + (v136 ^ v132 ^ v133) + 1859775393;
  HIDWORD(v4) = v133;
  LODWORD(v4) = v133;
  v140 = v4 >> 2;
  v141 = v139 + v138;
  HIDWORD(v4) = v87 ^ v79 ^ v111 ^ v129;
  LODWORD(v4) = HIDWORD(v4);
  v142 = v4 >> 31;
  HIDWORD(v4) = v141;
  LODWORD(v4) = v141;
  v143 = v142 + v132 + (v140 ^ v136 ^ v135) + 1859775393 + (v4 >> 27);
  HIDWORD(v4) = v135;
  LODWORD(v4) = v135;
  v144 = v4 >> 2;
  HIDWORD(v4) = v90 ^ v82 ^ v114 ^ v134;
  LODWORD(v4) = HIDWORD(v4);
  v145 = v4 >> 31;
  HIDWORD(v4) = v143;
  LODWORD(v4) = v143;
  v146 = v145 + v136 + ((v141 | v144) & v140 | v141 & v144) - 1894007588 + (v4 >> 27);
  HIDWORD(v4) = v141;
  LODWORD(v4) = v141;
  v147 = v4 >> 2;
  HIDWORD(v4) = v95 ^ v87 ^ v119 ^ v137;
  LODWORD(v4) = HIDWORD(v4);
  v148 = v4 >> 31;
  HIDWORD(v4) = v146;
  LODWORD(v4) = v146;
  v149 = v148 + v140 + ((v143 | v147) & v144 | v143 & v147) - 1894007588 + (v4 >> 27);
  HIDWORD(v4) = v143;
  LODWORD(v4) = v143;
  v150 = v4 >> 2;
  HIDWORD(v4) = v98 ^ v90 ^ v122 ^ v142;
  LODWORD(v4) = HIDWORD(v4);
  v151 = v4 >> 31;
  HIDWORD(v4) = v149;
  LODWORD(v4) = v149;
  v152 = v151 + v144 + ((v146 | v150) & v147 | v146 & v150) - 1894007588 + (v4 >> 27);
  HIDWORD(v4) = v146;
  LODWORD(v4) = v146;
  v153 = v4 >> 2;
  HIDWORD(v4) = v103 ^ v95 ^ v126 ^ v145;
  LODWORD(v4) = HIDWORD(v4);
  v154 = v4 >> 31;
  HIDWORD(v4) = v152;
  LODWORD(v4) = v152;
  v155 = v4 >> 27;
  v156 = v154 + v147 + ((v149 | v153) & v150 | v149 & v153) - 1894007588;
  HIDWORD(v4) = v149;
  LODWORD(v4) = v149;
  v157 = v4 >> 2;
  v158 = v156 + v155;
  HIDWORD(v4) = v106 ^ v98 ^ v129 ^ v148;
  LODWORD(v4) = HIDWORD(v4);
  v159 = v4 >> 31;
  HIDWORD(v4) = v158;
  LODWORD(v4) = v158;
  v160 = v159 + v150 + ((v152 | v157) & v153 | v152 & v157) - 1894007588 + (v4 >> 27);
  HIDWORD(v4) = v152;
  LODWORD(v4) = v152;
  v161 = v4 >> 2;
  HIDWORD(v4) = v111 ^ v103 ^ v134 ^ v151;
  LODWORD(v4) = HIDWORD(v4);
  v162 = v4 >> 31;
  HIDWORD(v4) = v160;
  LODWORD(v4) = v160;
  v163 = v162 + v153 + ((v158 | v161) & v157 | v158 & v161) - 1894007588 + (v4 >> 27);
  HIDWORD(v4) = v158;
  LODWORD(v4) = v158;
  v164 = v4 >> 2;
  HIDWORD(v4) = v114 ^ v106 ^ v137 ^ v154;
  LODWORD(v4) = HIDWORD(v4);
  v165 = v4 >> 31;
  HIDWORD(v4) = v163;
  LODWORD(v4) = v163;
  v166 = v165 + v157 + ((v160 | v164) & v161 | v160 & v164) - 1894007588 + (v4 >> 27);
  HIDWORD(v4) = v160;
  LODWORD(v4) = v160;
  v167 = v4 >> 2;
  HIDWORD(v4) = v119 ^ v111 ^ v142 ^ v159;
  LODWORD(v4) = HIDWORD(v4);
  v168 = v4 >> 31;
  HIDWORD(v4) = v166;
  LODWORD(v4) = v166;
  v169 = v168 + v161 + ((v163 | v167) & v164 | v163 & v167) - 1894007588 + (v4 >> 27);
  HIDWORD(v4) = v163;
  LODWORD(v4) = v163;
  v170 = v4 >> 2;
  HIDWORD(v4) = v122 ^ v114 ^ v145 ^ v162;
  LODWORD(v4) = HIDWORD(v4);
  v171 = v4 >> 31;
  HIDWORD(v4) = v169;
  LODWORD(v4) = v169;
  v172 = v171 + v164 + ((v166 | v170) & v167 | v166 & v170) - 1894007588 + (v4 >> 27);
  HIDWORD(v4) = v166;
  LODWORD(v4) = v166;
  v173 = v4 >> 2;
  HIDWORD(v4) = v126 ^ v119 ^ v148 ^ v165;
  LODWORD(v4) = HIDWORD(v4);
  v174 = v4 >> 31;
  HIDWORD(v4) = v172;
  LODWORD(v4) = v172;
  v175 = v4 >> 27;
  v176 = v174 + v167 + ((v169 | v173) & v170 | v169 & v173) - 1894007588;
  HIDWORD(v4) = v169;
  LODWORD(v4) = v169;
  v177 = v4 >> 2;
  v178 = v176 + v175;
  HIDWORD(v4) = v129 ^ v122 ^ v151 ^ v168;
  LODWORD(v4) = HIDWORD(v4);
  v179 = v4 >> 31;
  HIDWORD(v4) = v178;
  LODWORD(v4) = v178;
  v180 = v179 + v170 + ((v172 | v177) & v173 | v172 & v177) - 1894007588 + (v4 >> 27);
  HIDWORD(v4) = v172;
  LODWORD(v4) = v172;
  v181 = v4 >> 2;
  HIDWORD(v4) = v134 ^ v126 ^ v154 ^ v171;
  LODWORD(v4) = HIDWORD(v4);
  v182 = v4 >> 31;
  HIDWORD(v4) = v180;
  LODWORD(v4) = v180;
  v183 = v182 + v173 + ((v178 | v181) & v177 | v178 & v181) - 1894007588 + (v4 >> 27);
  HIDWORD(v4) = v178;
  LODWORD(v4) = v178;
  v184 = v4 >> 2;
  HIDWORD(v4) = v137 ^ v129 ^ v159 ^ v174;
  LODWORD(v4) = HIDWORD(v4);
  v185 = v4 >> 31;
  HIDWORD(v4) = v183;
  LODWORD(v4) = v183;
  v186 = v185 + v177 + ((v180 | v184) & v181 | v180 & v184) - 1894007588 + (v4 >> 27);
  HIDWORD(v4) = v180;
  LODWORD(v4) = v180;
  v187 = v4 >> 2;
  HIDWORD(v4) = v142 ^ v134 ^ v162 ^ v179;
  LODWORD(v4) = HIDWORD(v4);
  v188 = v4 >> 31;
  HIDWORD(v4) = v186;
  LODWORD(v4) = v186;
  v189 = v188 + v181 + ((v183 | v187) & v184 | v183 & v187) - 1894007588 + (v4 >> 27);
  HIDWORD(v4) = v183;
  LODWORD(v4) = v183;
  v190 = v4 >> 2;
  HIDWORD(v4) = v145 ^ v137 ^ v165 ^ v182;
  LODWORD(v4) = HIDWORD(v4);
  v191 = v4 >> 31;
  HIDWORD(v4) = v189;
  LODWORD(v4) = v189;
  v192 = v191 + v184 + ((v186 | v190) & v187 | v186 & v190) - 1894007588 + (v4 >> 27);
  HIDWORD(v4) = v186;
  LODWORD(v4) = v186;
  v193 = v4 >> 2;
  HIDWORD(v4) = v148 ^ v142 ^ v168 ^ v185;
  LODWORD(v4) = HIDWORD(v4);
  v194 = v4 >> 31;
  HIDWORD(v4) = v192;
  LODWORD(v4) = v192;
  v195 = v4 >> 27;
  v196 = v194 + v187 + ((v189 | v193) & v190 | v189 & v193) - 1894007588;
  HIDWORD(v4) = v189;
  LODWORD(v4) = v189;
  v197 = v4 >> 2;
  v198 = v196 + v195;
  HIDWORD(v4) = v151 ^ v145 ^ v171 ^ v188;
  LODWORD(v4) = HIDWORD(v4);
  v199 = v4 >> 31;
  HIDWORD(v4) = v198;
  LODWORD(v4) = v198;
  v200 = v199 + v190 + ((v192 | v197) & v193 | v192 & v197) - 1894007588 + (v4 >> 27);
  HIDWORD(v4) = v192;
  LODWORD(v4) = v192;
  v201 = v4 >> 2;
  HIDWORD(v4) = v154 ^ v148 ^ v174 ^ v191;
  LODWORD(v4) = HIDWORD(v4);
  v202 = v4 >> 31;
  HIDWORD(v4) = v200;
  LODWORD(v4) = v200;
  v203 = v202 + v193 + ((v198 | v201) & v197 | v198 & v201) - 1894007588 + (v4 >> 27);
  HIDWORD(v4) = v198;
  LODWORD(v4) = v198;
  v204 = v4 >> 2;
  HIDWORD(v4) = v159 ^ v151 ^ v179 ^ v194;
  LODWORD(v4) = HIDWORD(v4);
  v205 = v4 >> 31;
  HIDWORD(v4) = v203;
  LODWORD(v4) = v203;
  v206 = v205 + v197 + ((v200 | v204) & v201 | v200 & v204) - 1894007588 + (v4 >> 27);
  HIDWORD(v4) = v200;
  LODWORD(v4) = v200;
  v207 = v4 >> 2;
  HIDWORD(v4) = v162 ^ v154 ^ v182 ^ v199;
  LODWORD(v4) = HIDWORD(v4);
  v208 = v4 >> 31;
  HIDWORD(v4) = v206;
  LODWORD(v4) = v206;
  v209 = v208 + v201 + ((v203 | v207) & v204 | v203 & v207) - 1894007588 + (v4 >> 27);
  HIDWORD(v4) = v203;
  LODWORD(v4) = v203;
  v210 = v4 >> 2;
  HIDWORD(v4) = v165 ^ v159 ^ v185 ^ v202;
  LODWORD(v4) = HIDWORD(v4);
  v211 = v4 >> 31;
  HIDWORD(v4) = v209;
  LODWORD(v4) = v209;
  v212 = v4 >> 27;
  HIDWORD(v4) = v206;
  LODWORD(v4) = v206;
  v213 = v4 >> 2;
  v214 = v211 + v204 + (v210 ^ v207 ^ v206) - 899497514 + v212;
  HIDWORD(v4) = v168 ^ v162 ^ v188 ^ v205;
  LODWORD(v4) = HIDWORD(v4);
  v215 = v4 >> 31;
  HIDWORD(v4) = v214;
  LODWORD(v4) = v214;
  v216 = v215 + v207 + (v213 ^ v210 ^ v209) - 899497514 + (v4 >> 27);
  HIDWORD(v4) = v209;
  LODWORD(v4) = v209;
  v217 = v4 >> 2;
  HIDWORD(v4) = v171 ^ v165 ^ v191 ^ v208;
  LODWORD(v4) = HIDWORD(v4);
  v218 = v4 >> 31;
  HIDWORD(v4) = v216;
  LODWORD(v4) = v216;
  v219 = v4 >> 27;
  v220 = v218 + v210 + (v217 ^ v213 ^ v214) - 899497514;
  HIDWORD(v4) = v214;
  LODWORD(v4) = v214;
  v221 = v4 >> 2;
  v222 = v220 + v219;
  HIDWORD(v4) = v174 ^ v168 ^ v194 ^ v211;
  LODWORD(v4) = HIDWORD(v4);
  v223 = v4 >> 31;
  HIDWORD(v4) = v222;
  LODWORD(v4) = v222;
  v224 = v223 + v213 + (v221 ^ v217 ^ v216) - 899497514 + (v4 >> 27);
  HIDWORD(v4) = v216;
  LODWORD(v4) = v216;
  v225 = v4 >> 2;
  HIDWORD(v4) = v179 ^ v171 ^ v199 ^ v215;
  LODWORD(v4) = HIDWORD(v4);
  v226 = v4 >> 31;
  HIDWORD(v4) = v224;
  LODWORD(v4) = v224;
  v227 = v4 >> 27;
  HIDWORD(v4) = v222;
  LODWORD(v4) = v222;
  v228 = v4 >> 2;
  v229 = v226 + v217 + (v225 ^ v221 ^ v222) - 899497514 + v227;
  HIDWORD(v4) = v182 ^ v174 ^ v202 ^ v218;
  LODWORD(v4) = HIDWORD(v4);
  v230 = v4 >> 31;
  *this = v226;
  this[1] = v230;
  HIDWORD(v4) = v229;
  LODWORD(v4) = v229;
  v231 = v230 + v221 + (v228 ^ v225 ^ v224) - 899497514 + (v4 >> 27);
  HIDWORD(v4) = v224;
  LODWORD(v4) = v224;
  v232 = v4 >> 2;
  HIDWORD(v4) = v185 ^ v179 ^ v205 ^ v223;
  LODWORD(v4) = HIDWORD(v4);
  v233 = v4 >> 31;
  HIDWORD(v4) = v231;
  LODWORD(v4) = v231;
  v234 = v233 + v225 + (v232 ^ v228 ^ v229) - 899497514 + (v4 >> 27);
  HIDWORD(v4) = v229;
  LODWORD(v4) = v229;
  v235 = v4 >> 2;
  HIDWORD(v4) = v188 ^ v182 ^ v208 ^ v226;
  LODWORD(v4) = HIDWORD(v4);
  v236 = v4 >> 31;
  this[2] = v233;
  this[3] = v236;
  HIDWORD(v4) = v234;
  LODWORD(v4) = v234;
  v237 = v236 + v228 + (v235 ^ v232 ^ v231) - 899497514 + (v4 >> 27);
  HIDWORD(v4) = v231;
  LODWORD(v4) = v231;
  v238 = v4 >> 2;
  HIDWORD(v4) = v191 ^ v185 ^ v211 ^ v230;
  LODWORD(v4) = HIDWORD(v4);
  v239 = v4 >> 31;
  HIDWORD(v4) = v237;
  LODWORD(v4) = v237;
  v240 = v239 + v232 + (v238 ^ v235 ^ v234) - 899497514 + (v4 >> 27);
  HIDWORD(v4) = v234;
  LODWORD(v4) = v234;
  v241 = v4 >> 2;
  HIDWORD(v4) = v194 ^ v188 ^ v215 ^ v233;
  LODWORD(v4) = HIDWORD(v4);
  v242 = v4 >> 31;
  this[4] = v239;
  this[5] = v242;
  HIDWORD(v4) = v240;
  LODWORD(v4) = v240;
  v243 = v242 + v235 + (v241 ^ v238 ^ v237) - 899497514 + (v4 >> 27);
  HIDWORD(v4) = v237;
  LODWORD(v4) = v237;
  v244 = v4 >> 2;
  HIDWORD(v4) = v199 ^ v191 ^ v218 ^ v236;
  LODWORD(v4) = HIDWORD(v4);
  v245 = v4 >> 31;
  HIDWORD(v4) = v243;
  LODWORD(v4) = v243;
  v246 = v4 >> 27;
  v247 = v245 + v238 + (v244 ^ v241 ^ v240) - 899497514;
  HIDWORD(v4) = v240;
  LODWORD(v4) = v240;
  v248 = v4 >> 2;
  v249 = v247 + v246;
  HIDWORD(v4) = v202 ^ v194 ^ v223 ^ v239;
  LODWORD(v4) = HIDWORD(v4);
  v250 = v4 >> 31;
  this[6] = v245;
  this[7] = v250;
  HIDWORD(v4) = v249;
  LODWORD(v4) = v249;
  v251 = v250 + v241 + (v248 ^ v244 ^ v243) - 899497514 + (v4 >> 27);
  HIDWORD(v4) = v243;
  LODWORD(v4) = v243;
  v252 = v4 >> 2;
  HIDWORD(v4) = v205 ^ v199 ^ v226 ^ v242;
  LODWORD(v4) = HIDWORD(v4);
  v253 = v4 >> 31;
  HIDWORD(v4) = v251;
  LODWORD(v4) = v251;
  v254 = v253 + v244 + (v252 ^ v248 ^ v249) - 899497514 + (v4 >> 27);
  HIDWORD(v4) = v249;
  LODWORD(v4) = v249;
  v255 = v4 >> 2;
  HIDWORD(v4) = v208 ^ v202 ^ v230 ^ v245;
  LODWORD(v4) = HIDWORD(v4);
  v256 = v4 >> 31;
  this[8] = v253;
  this[9] = v256;
  HIDWORD(v4) = v254;
  LODWORD(v4) = v254;
  v257 = v256 + v248 + (v255 ^ v252 ^ v251) - 899497514 + (v4 >> 27);
  HIDWORD(v4) = v251;
  LODWORD(v4) = v251;
  v258 = v4 >> 2;
  HIDWORD(v4) = v211 ^ v205 ^ v233 ^ v250;
  LODWORD(v4) = HIDWORD(v4);
  v259 = v4 >> 31;
  HIDWORD(v4) = v257;
  LODWORD(v4) = v257;
  v260 = v259 + v252 + (v258 ^ v255 ^ v254) - 899497514 + (v4 >> 27);
  HIDWORD(v4) = v254;
  LODWORD(v4) = v254;
  v261 = v4 >> 2;
  HIDWORD(v4) = v215 ^ v208 ^ v236 ^ v253;
  LODWORD(v4) = HIDWORD(v4);
  v262 = v4 >> 31;
  this[10] = v259;
  this[11] = v262;
  HIDWORD(v4) = v260;
  LODWORD(v4) = v260;
  v263 = v262 + v255 + (v261 ^ v258 ^ v257) - 899497514 + (v4 >> 27);
  HIDWORD(v4) = v257;
  LODWORD(v4) = v257;
  v264 = v4 >> 2;
  HIDWORD(v4) = v218 ^ v211 ^ v239 ^ v256;
  LODWORD(v4) = HIDWORD(v4);
  v265 = v4 >> 31;
  HIDWORD(v4) = v263;
  LODWORD(v4) = v263;
  v266 = v4 >> 27;
  v267 = v265 + v258 + (v264 ^ v261 ^ v260) - 899497514;
  HIDWORD(v4) = v260;
  LODWORD(v4) = v260;
  v268 = v4 >> 2;
  v269 = v267 + v266;
  HIDWORD(v4) = v223 ^ v215 ^ v242 ^ v259;
  LODWORD(v4) = HIDWORD(v4);
  v270 = v4 >> 31;
  this[12] = v265;
  this[13] = v270;
  HIDWORD(v4) = v269;
  LODWORD(v4) = v269;
  v271 = v270 + v261 + (v268 ^ v264 ^ v263) - 899497514 + (v4 >> 27);
  HIDWORD(v4) = v263;
  LODWORD(v4) = v263;
  v272 = v4 >> 2;
  HIDWORD(v4) = v226 ^ v218 ^ v245 ^ v262;
  LODWORD(v4) = HIDWORD(v4);
  v273 = v4 >> 31;
  HIDWORD(v4) = v271;
  LODWORD(v4) = v271;
  v274 = v273 + v264 + (v272 ^ v268 ^ v269) - 899497514 + (v4 >> 27);
  HIDWORD(v4) = v269;
  LODWORD(v4) = v269;
  v275 = v4 >> 2;
  HIDWORD(v4) = v230 ^ v223 ^ v250 ^ v265;
  LODWORD(v4) = HIDWORD(v4);
  v276 = v4 >> 31;
  this[14] = v273;
  this[15] = v276;
  HIDWORD(v4) = v274;
  LODWORD(v4) = v274;
  this[16] = v1 + v276 + v268 + (v275 ^ v272 ^ v271) - 899497514 + (v4 >> 27);
  this[17] = v274 + v2;
  HIDWORD(v4) = v271;
  LODWORD(v4) = v271;
  this[18] = (v4 >> 2) + v6;
  this[19] = v275 + v277;
  this[20] = v272 + v278;
  return this;
}

_DWORD *llvm::SHA1::update(_DWORD *this, unsigned int *a2, unint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = this;
  this[21] += a3;
  v6 = *(this + 88);
  if (*(this + 88))
  {
    if (64 - v6 >= a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = 64 - v6;
    }

    if (v7)
    {
      v8 = a2;
      v9 = v7;
      do
      {
        v10 = *v8;
        v8 = (v8 + 1);
        *(v5 + (v6 ^ 3)) = v10;
        LODWORD(v6) = (*(v5 + 88))++ + 1;
        if (v6 == 64)
        {
          this = llvm::SHA1::hashBlock(v5);
          LOBYTE(v6) = 0;
          *(v5 + 88) = 0;
        }

        --v9;
      }

      while (v9);
    }

    v3 -= v7;
    v4 = (v4 + v7);
  }

  if (v3 >= 0x40)
  {
    do
    {
      *v5 = bswap32(*v4);
      *(v5 + 4) = bswap32(v4[1]);
      *(v5 + 8) = bswap32(v4[2]);
      *(v5 + 12) = bswap32(v4[3]);
      *(v5 + 16) = bswap32(v4[4]);
      *(v5 + 20) = bswap32(v4[5]);
      *(v5 + 24) = bswap32(v4[6]);
      *(v5 + 28) = bswap32(v4[7]);
      *(v5 + 32) = bswap32(v4[8]);
      *(v5 + 36) = bswap32(v4[9]);
      *(v5 + 40) = bswap32(v4[10]);
      *(v5 + 44) = bswap32(v4[11]);
      *(v5 + 48) = bswap32(v4[12]);
      *(v5 + 52) = bswap32(v4[13]);
      *(v5 + 56) = bswap32(v4[14]);
      *(v5 + 60) = bswap32(v4[15]);
      this = llvm::SHA1::hashBlock(v5);
      v3 -= 64;
      v4 += 16;
    }

    while (v3 > 0x3F);
  }

  if (v3)
  {
    LOBYTE(v11) = *(v5 + 88);
    do
    {
      *(v5 + (v11 ^ 3)) = *v4;
      v11 = (*(v5 + 88))++ + 1;
      if (v11 == 64)
      {
        this = llvm::SHA1::hashBlock(v5);
        LOBYTE(v11) = 0;
        *(v5 + 88) = 0;
      }

      v4 = (v4 + 1);
      --v3;
    }

    while (v3);
  }

  return this;
}

_DWORD *llvm::SHA1::pad(_DWORD *this)
{
  v1 = this;
  *(this + (*(this + 88) ^ 3)) = 0x80;
  v2 = *(this + 88);
  LOBYTE(v3) = v2 + 1;
  *(this + 88) = v2 + 1;
  if (v2 != 55)
  {
    if (v2 == 63)
    {
      this = llvm::SHA1::hashBlock(this);
      LOBYTE(v3) = 0;
      *(v1 + 88) = 0;
    }

    do
    {
      *(v1 + (v3 ^ 3)) = 0;
      v3 = (*(v1 + 88))++ + 1;
      if (v3 == 64)
      {
        this = llvm::SHA1::hashBlock(v1);
        LOBYTE(v3) = 0;
        *(v1 + 88) = 0;
      }
    }

    while (v3 != 56);
  }

  *(v1 + 59) = 0;
  *(v1 + 57) = 0;
  *(v1 + 56) = *(v1 + 84) >> 29;
  *(v1 + 88) = 60;
  *(v1 + 63) = *(v1 + 84) >> 21;
  v4 = (*(v1 + 88))++ + 1;
  if (v4 == 64)
  {
    this = llvm::SHA1::hashBlock(v1);
    LOBYTE(v4) = 0;
    *(v1 + 88) = 0;
  }

  *(v1 + (v4 ^ 3)) = *(v1 + 84) >> 13;
  v5 = (*(v1 + 88))++ + 1;
  if (v5 == 64)
  {
    this = llvm::SHA1::hashBlock(v1);
    LOBYTE(v5) = 0;
    *(v1 + 88) = 0;
  }

  *(v1 + (v5 ^ 3)) = *(v1 + 84) >> 5;
  v6 = (*(v1 + 88))++ + 1;
  if (v6 == 64)
  {
    this = llvm::SHA1::hashBlock(v1);
    LOBYTE(v6) = 0;
    *(v1 + 88) = 0;
  }

  *(v1 + (v6 ^ 3)) = 8 * *(v1 + 84);
  v7 = (*(v1 + 88))++ + 1;
  if (v7 == 64)
  {
    this = llvm::SHA1::hashBlock(v1);
    *(v1 + 88) = 0;
  }

  return this;
}

__n128 llvm::SHA1::result@<Q0>(llvm::SHA1 *this@<X0>, int8x16_t *a2@<X8>)
{
  v8 = *(this + 2);
  v9 = *(this + 3);
  *v10 = *(this + 4);
  *&v10[12] = *(this + 76);
  v6 = *this;
  v7 = *(this + 1);
  llvm::SHA1::pad(this);
  v4 = bswap32(*(this + 20));
  *a2 = vrev32q_s8(*(this + 4));
  a2[1].i32[0] = v4;
  *(this + 2) = v8;
  *(this + 3) = v9;
  *(this + 4) = *v10;
  *(this + 76) = *&v10[12];
  result = v6;
  *this = v6;
  *(this + 1) = v7;
  return result;
}

void *llvm::SmallPtrSetImplBase::shrink_and_clear(void **this)
{
  free(this[1]);
  v2 = *(this + 5) - *(this + 6);
  v3 = 1 << (33 - __clz(v2 - 1));
  *(this + 5) = 0;
  *(this + 6) = 0;
  if (v2 <= 0x10)
  {
    v4 = 32;
  }

  else
  {
    v4 = v3;
  }

  *(this + 4) = v4;
  v5 = 8 * v4;
  v6 = malloc(v5);
  if (!v6)
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  this[1] = v6;

  return memset(v6, 255, v5);
}

const void **llvm::SmallPtrSetImplBase::insert_imp_big(llvm::SmallPtrSetImplBase *this, char *a2)
{
  v2 = *(this + 5);
  v3 = *(this + 4);
  if (3 * v3 <= 4 * (v2 - *(this + 6)))
  {
    v14 = a2;
    if (v3 >= 0x40)
    {
      v3 *= 2;
    }

    else
    {
      v3 = 128;
    }
  }

  else
  {
    if (v3 - v2 >= v3 >> 3)
    {
      goto LABEL_3;
    }

    v14 = a2;
  }

  v15 = this;
  llvm::SmallPtrSetImplBase::Grow(this, v3);
  this = v15;
  a2 = v14;
LABEL_3:
  v4 = *(this + 4) - 1;
  v5 = *(this + 1);
  v6 = v4 & ((a2 >> 4) ^ (a2 >> 9));
  v7 = (v5 + 8 * v6);
  v8 = *v7;
  if (*v7 != -1)
  {
    v9 = 0;
    v11 = 1;
    while (v8 != a2)
    {
      if (v9)
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 + 2 == 0;
      }

      if (v12)
      {
        v9 = v7;
      }

      v13 = v6 + v11++;
      v6 = v13 & v4;
      v7 = (v5 + 8 * (v13 & v4));
      v8 = *v7;
      if (*v7 == -1)
      {
        goto LABEL_5;
      }
    }

    return v7;
  }

  v9 = 0;
LABEL_5:
  if (v9)
  {
    v7 = v9;
  }

  if (*v7 == a2)
  {
    return v7;
  }

  if (*v7 == -2)
  {
    --*(this + 6);
  }

  else
  {
    ++*(this + 5);
  }

  *v7 = a2;
  return v7;
}

void llvm::SmallPtrSetImplBase::Grow(llvm::SmallPtrSetImplBase *this, unsigned int a2)
{
  v5 = *this;
  v4 = *(this + 1);
  v6 = 16;
  if (v4 == *this)
  {
    v6 = 20;
  }

  v7 = *(this + v6);
  v8 = malloc(8 * a2);
  if (!v8 && (a2 || (v8 = malloc(1uLL)) == 0))
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  *(this + 1) = v8;
  *(this + 4) = a2;
  memset(v8, 255, 8 * a2);
  if (v7)
  {
    v9 = a2 - 1;
    v10 = v4;
    do
    {
      v13 = *v10;
      if (*v10 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v14 = *(this + 1);
        v15 = ((v13 >> 4) ^ (v13 >> 9)) & v9;
        v12 = (v14 + 8 * v15);
        v16 = *v12;
        if (*v12 == -1)
        {
          v11 = 0;
LABEL_9:
          if (v11)
          {
            v12 = v11;
          }
        }

        else
        {
          v11 = 0;
          v17 = 1;
          while (v16 != v13)
          {
            if (v11)
            {
              v18 = 0;
            }

            else
            {
              v18 = v16 == -2;
            }

            if (v18)
            {
              v11 = v12;
            }

            v19 = v15 + v17++;
            v15 = v19 & v9;
            v12 = (v14 + 8 * (v19 & v9));
            v16 = *v12;
            if (*v12 == -1)
            {
              goto LABEL_9;
            }
          }
        }

        *v12 = v13;
      }

      ++v10;
    }

    while (v10 != &v4[v7]);
  }

  if (v4 != v5)
  {
    free(v4);
  }

  *(this + 20) = (*(this + 5) - *(this + 6));
}

uint64_t llvm::SmallPtrSetImplBase::doFind(llvm::SmallPtrSetImplBase *this, const void *a2)
{
  v2 = *(this + 4) - 1;
  v3 = *(this + 1);
  v4 = ((a2 >> 4) ^ (a2 >> 9)) & v2;
  v5 = *(v3 + 8 * v4);
  if (v5 == a2)
  {
    return v3 + 8 * v4;
  }

  v7 = 1;
  while (v5 != -1)
  {
    v8 = v4 + v7++;
    v4 = v8 & v2;
    v5 = *(v3 + 8 * v4);
    if (v5 == a2)
    {
      return v3 + 8 * v4;
    }
  }

  return 0;
}

llvm::SmallPtrSetImplBase *llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(llvm::SmallPtrSetImplBase *this, const void **__dst, const llvm::SmallPtrSetImplBase *a3)
{
  *this = __dst;
  v5 = *a3;
  if (*(a3 + 1) == *a3)
  {
    v7 = __dst;
    *(this + 1) = __dst;
    LODWORD(v6) = *(a3 + 4);
  }

  else
  {
    v6 = *(a3 + 4);
    v7 = malloc(8 * v6);
    if (!v7 && (v6 || (v7 = malloc(1uLL)) == 0))
    {
      llvm::report_bad_alloc_error("Allocation failed", 1);
    }

    *(this + 1) = v7;
  }

  *(this + 4) = v6;
  v8 = *(a3 + 1);
  v9 = 16;
  if (v8 == v5)
  {
    v9 = 20;
  }

  v10 = *(a3 + v9);
  if (v10)
  {
    memmove(v7, v8, 8 * v10);
  }

  *(this + 20) = *(a3 + 20);
  return this;
}

double llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(uint64_t a1, void *__dst, int a3, double *a4)
{
  *a1 = __dst;
  v5 = *a4;
  v4 = *(a4 + 1);
  if (v4 == *a4)
  {
    *(a1 + 8) = __dst;
    v6 = *(a4 + 5);
    if (v6)
    {
      v7 = a1;
      v8 = a3;
      v9 = a4;
      memmove(__dst, *(a4 + 1), 8 * v6);
      a3 = v8;
      a1 = v7;
      a4 = v9;
    }
  }

  else
  {
    *(a1 + 8) = v4;
    *(a4 + 1) = v5;
  }

  result = a4[2];
  *(a1 + 16) = result;
  *(a1 + 24) = *(a4 + 6);
  *(a4 + 5) = 0;
  *(a4 + 6) = 0;
  *(a4 + 4) = a3;
  return result;
}

double llvm::SmallPtrSetImplBase::CopyFrom(llvm::SmallPtrSetImplBase *this, const llvm::SmallPtrSetImplBase *a2)
{
  v4 = *(this + 1);
  v6 = *a2;
  v5 = *(a2 + 1);
  if (v4 == *this)
  {
    if (v5 == v6)
    {
      v4 = *this;
    }

    else
    {
      v7 = *(a2 + 4);
      if (*(this + 4) == v7)
      {
        goto LABEL_15;
      }

      v4 = malloc(8 * v7);
      if (!v4)
      {
LABEL_9:
        if (v7 || (v4 = malloc(1uLL)) == 0)
        {
          llvm::report_bad_alloc_error("Allocation failed", 1);
        }
      }
    }
  }

  else
  {
    if (v5 != v6)
    {
      v7 = *(a2 + 4);
      if (*(this + 4) == v7)
      {
        goto LABEL_15;
      }

      v4 = realloc(v4, 8 * v7);
      if (v4)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

    free(v4);
    v4 = *this;
  }

LABEL_14:
  *(this + 1) = v4;
LABEL_15:
  *(this + 4) = *(a2 + 4);
  v8 = *(a2 + 1);
  v9 = 16;
  if (v8 == *a2)
  {
    v9 = 20;
  }

  v10 = *(a2 + v9);
  if (v10)
  {
    memmove(v4, v8, 8 * v10);
  }

  result = *(a2 + 20);
  *(this + 20) = result;
  return result;
}

double llvm::SmallPtrSetImplBase::MoveFrom(uint64_t a1, int a2, double *a3)
{
  v6 = *(a1 + 8);
  if (v6 != *a1)
  {
    free(v6);
  }

  v8 = *a3;
  v7 = *(a3 + 1);
  if (v7 == *a3)
  {
    v9 = *a1;
    *(a1 + 8) = *a1;
    v10 = *(a3 + 5);
    if (v10)
    {
      memmove(v9, *(a3 + 1), 8 * v10);
    }
  }

  else
  {
    *(a1 + 8) = v7;
    a3[1] = v8;
  }

  result = a3[2];
  *(a1 + 16) = result;
  *(a1 + 24) = *(a3 + 6);
  *(a3 + 5) = 0;
  *(a3 + 6) = 0;
  *(a3 + 4) = a2;
  return result;
}

void llvm::SmallVectorBase<unsigned int>::mallocForGrow(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (HIDWORD(a3))
  {
    report_size_overflow(a3);
  }

  v5 = *(a1 + 12);
  if (v5 == -1)
  {
    v13 = report_at_maximum_capacity(0xFFFFFFFFuLL);
    llvm::SmallVectorBase<unsigned int>::grow_pod(v13, v14, v15, v16);
  }

  else
  {
    v7 = 2 * v5;
    v8 = v5 < 0;
    v9 = 0xFFFFFFFFLL;
    if (!v8)
    {
      v9 = v7 + 1;
    }

    if (((2 * *(a1 + 12)) | 1uLL) < a3)
    {
      v9 = a3;
    }

    *a5 = v9;
    v10 = v9 * a4;
    v11 = malloc(v9 * a4);
    if (!v11)
    {
      if (v10)
      {
        goto LABEL_15;
      }

      v11 = malloc(1uLL);
      if (!v11)
      {
        goto LABEL_15;
      }
    }

    if (v11 != a2)
    {
      return;
    }

    v12 = v11;
    if (!malloc(v10) && (v10 || !malloc(1uLL)))
    {
LABEL_15:
      llvm::report_bad_alloc_error("Allocation failed", 1);
    }

    free(v12);
  }
}

void llvm::SmallVectorBase<unsigned int>::grow_pod(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  if (HIDWORD(a3))
  {
    report_size_overflow(a3, a2);
  }

  else
  {
    v5 = *(a1 + 12);
    if (v5 != -1)
    {
      v8 = 2 * v5;
      v9 = v5 < 0;
      v10 = 0xFFFFFFFFLL;
      if (!v9)
      {
        v10 = v8 + 1;
      }

      if (((2 * *(a1 + 12)) | 1uLL) >= a3)
      {
        v11 = v10;
      }

      else
      {
        v11 = a3;
      }

      v12 = *a1;
      v13 = v11 * a4;
      if (*a1 == a2)
      {
        v16 = malloc(v11 * a4);
        if (v16 || !v13 && (v16 = malloc(1uLL)) != 0)
        {
          v15 = v16;
          if (v16 == a2)
          {
            v17 = malloc(v13);
            if (!v17)
            {
              if (v13)
              {
                goto LABEL_30;
              }

              v17 = malloc(1uLL);
              if (!v17)
              {
                goto LABEL_30;
              }
            }

            v18 = v17;
            free(v15);
            v15 = v18;
          }

          memcpy(v15, v12, *(a1 + 8) * a4);
          goto LABEL_29;
        }
      }

      else
      {
        v14 = realloc(*a1, v11 * a4);
        if (v14 || !v13 && (v14 = malloc(1uLL)) != 0)
        {
          if (v14 != a2)
          {
            v15 = v14;
LABEL_29:
            *a1 = v15;
            *(a1 + 12) = v11;
            return;
          }

          v19 = v14;
          v20 = *(a1 + 8);
          v21 = malloc(v13);
          if (v21 || !v13 && (v21 = malloc(1uLL)) != 0)
          {
            v15 = v21;
            if (v20)
            {
              memcpy(v21, v19, v20 * a4);
            }

            free(v19);
            goto LABEL_29;
          }
        }
      }

LABEL_30:
      llvm::report_bad_alloc_error("Allocation failed", 1);
    }
  }

  v22 = report_at_maximum_capacity(0xFFFFFFFFuLL);
  llvm::SmallVectorBase<unsigned long long>::grow_pod(v22);
}

void llvm::SmallVectorBase<unsigned long long>::grow_pod(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4 == -1)
  {
    v19 = report_at_maximum_capacity(0xFFFFFFFFFFFFFFFFLL);
    report_size_overflow(v19);
  }

  if (((2 * v4) | 1uLL) > a3)
  {
    v8 = 2 * v4 + 1;
  }

  else
  {
    v8 = a3;
  }

  v9 = *a1;
  v10 = v8 * a4;
  if (*a1 == a2)
  {
    v13 = malloc(v8 * a4);
    if (v13 || !v10 && (v13 = malloc(1uLL)) != 0)
    {
      v12 = v13;
      if (v13 == a2)
      {
        v14 = malloc(v10);
        if (!v14)
        {
          if (v10)
          {
            goto LABEL_27;
          }

          v14 = malloc(1uLL);
          if (!v14)
          {
            goto LABEL_27;
          }
        }

        v15 = v14;
        free(v12);
        v12 = v15;
      }

      memcpy(v12, v9, *(a1 + 8) * a4);
      goto LABEL_26;
    }

LABEL_27:
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  v11 = realloc(*a1, v8 * a4);
  if (!v11)
  {
    if (v10)
    {
      goto LABEL_27;
    }

    v11 = malloc(1uLL);
    if (!v11)
    {
      goto LABEL_27;
    }
  }

  if (v11 != a2)
  {
    v12 = v11;
    goto LABEL_26;
  }

  v16 = v11;
  v17 = *(a1 + 8);
  v18 = malloc(v10);
  if (!v18)
  {
    if (v10)
    {
      goto LABEL_27;
    }

    v18 = malloc(1uLL);
    if (!v18)
    {
      goto LABEL_27;
    }
  }

  v12 = v18;
  if (v17)
  {
    memcpy(v18, v16, v17 * a4);
  }

  free(v16);
LABEL_26:
  *a1 = v12;
  *(a1 + 16) = v8;
}

void report_size_overflow(unint64_t a1)
{
  std::to_string(&v4, a1);
  std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>("SmallVector unable to grow. Requested capacity (", &v4, &v5);
  std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v5, ") is larger than maximum value for size type (", &v6);
  std::to_string(&v3, 0xFFFFFFFFuLL);
  std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v6, &v3, &v1);
  std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v1, ")", &v7);
  std::string::~string(&v1);
  std::string::~string(&v3);
  std::string::~string(&v6);
  std::string::~string(&v5);
  std::string::~string(&v4);
  v2 = 260;
  v1.__r_.__value_.__r.__words[0] = &v7;
  llvm::report_fatal_error(&v1, 1);
}

uint64_t report_at_maximum_capacity(unint64_t a1)
{
  std::to_string(&v4, a1);
  std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>("SmallVector capacity unable to grow. Already at maximum size ", &v4, &v6);
  std::string::~string(&v4);
  v5 = 260;
  v4.__r_.__value_.__r.__words[0] = &v6;
  v2 = llvm::report_fatal_error(&v4, 1, v1);
  return std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v2);
}

__n128 std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>@<Q0>(std::string *a1@<X0>, const std::string::value_type *a2@<X1>, std::string *a3@<X8>)
{
  v4 = std::string::append(a1, a2);
  result = *v4;
  *a3 = *v4->n128_u8;
  v4->n128_u64[0] = 0;
  v4->n128_u64[1] = 0;
  v4[1].n128_u64[0] = 0;
  return result;
}

{
  v4 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::string::append(a1, a2, v5);
  result = *v6;
  *a3 = *v6->n128_u8;
  v6->n128_u64[0] = 0;
  v6->n128_u64[1] = 0;
  v6[1].n128_u64[0] = 0;
  return result;
}

__n128 std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>@<Q0>(std::string::value_type *__s@<X0>, std::string *this@<X1>, std::string *a3@<X8>)
{
  v4 = std::string::insert(this, 0, __s);
  result = *v4;
  *a3 = *v4->n128_u8;
  v4->n128_u64[0] = 0;
  v4->n128_u64[1] = 0;
  v4[1].n128_u64[0] = 0;
  return result;
}

double llvm::SourceMgr::SourceMgr(llvm::SourceMgr *this)
{
  *(this + 8) = 0;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

void llvm::SourceMgr::~SourceMgr(llvm::SourceMgr *this)
{
  v2 = *(this + 8);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    v4 = *(this + 4);
    v5 = *(this + 3);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v5 = *(this + 3);
    }

    *(this + 4) = v3;
    operator delete(v5);
  }

  v7 = *this;
  if (*this)
  {
    v8 = *(this + 1);
    v9 = *this;
    if (v8 != v7)
    {
      do
      {
        v10 = *(v8 - 2);
        if (v10)
        {
          v11 = *v10;
          if (*v10)
          {
            v10[1] = v11;
            operator delete(v11);
          }

          operator delete(v10);
          *(v8 - 2) = 0;
        }

        v13 = *(v8 - 3);
        v8 -= 3;
        v12 = v13;
        *v8 = 0;
        if (v13)
        {
          (*(*v12 + 8))(v12);
        }
      }

      while (v8 != v7);
      v9 = *this;
    }

    *(this + 1) = v7;
    operator delete(v9);
  }
}

uint64_t llvm::SourceMgr::AddIncludeFile(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  llvm::SourceMgr::OpenIncludeFile(a1, a2, a4, &v11);
  if (v12)
  {
    v6 = 0;
  }

  else
  {
    v10 = v11;
    v11 = 0;
    v6 = llvm::SourceMgr::AddNewSourceBuffer(a1, &v10, a3);
    v7 = v10;
    v10 = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  if ((v12 & 1) == 0)
  {
    v8 = v11;
    v11 = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  return v6;
}

void llvm::SourceMgr::OpenIncludeFile(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 23);
  v9 = *a2;
  if (v8 >= 0)
  {
    v9 = a2;
  }

  if (v8 < 0)
  {
    v8 = *(a2 + 8);
  }

  v10 = a1[8];
  v46[4] = 261;
  __src = v9;
  __len[0] = v8;
  if (v10)
  {
    llvm::vfs::FileSystem::getBufferForFile(v10, &__src, -1, 1, 0, 0, a4);
  }

  else
  {
    llvm::MemoryBuffer::getFile(&__src, 0, 1, 0, 0, a4);
  }

  v11 = *(a2 + 23);
  if (v11 >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  if (v11 >= 0)
  {
    v13 = *(a2 + 23);
  }

  else
  {
    v13 = *(a2 + 8);
  }

  __src = v46;
  *__len = xmmword_1E0970870;
  if (v13 < 0x41)
  {
    v14 = 0;
    v15 = 0;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(&__src, v46, v13, 1);
    v14 = __len[0];
  }

  memcpy(__src + v14, v12, v13);
  v15 = __len[0];
LABEL_18:
  __len[0] = v15 + v13;
  v16 = -1431655765 * ((a1[4] - a1[3]) >> 3);
  if (v16)
  {
    v17 = 0;
    v18 = 24 * v16;
    do
    {
      if ((*(a4 + 16) & 1) == 0)
      {
        break;
      }

      v20 = a1[3] + v17;
      v21 = *(v20 + 23);
      if (v21 >= 0)
      {
        v22 = (a1[3] + v17);
      }

      else
      {
        v22 = *v20;
      }

      if (v21 >= 0)
      {
        v23 = *(v20 + 23);
      }

      else
      {
        v23 = *(v20 + 8);
      }

      __len[0] = 0;
      if (__len[1] >= v23)
      {
        v24 = 0;
        v25 = 0;
        if (!v23)
        {
          goto LABEL_33;
        }
      }

      else
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(&__src, v46, v23, 1);
        v24 = __len[0];
      }

      memcpy(__src + v24, v22, v23);
      v25 = __len[0];
LABEL_33:
      __len[0] = v25 + v23;
      v40 = 260;
      *&__dst = a2;
      v43 = 257;
      v37 = 257;
      v35 = 257;
      llvm::sys::path::append(&__src, &__dst, v41, &v36, &v34);
      v26 = a1[8];
      if (v26)
      {
        v40 = 261;
        __dst = __PAIR128__(__len[0], __src);
        llvm::vfs::FileSystem::getBufferForFile(v26, &__dst, -1, 1, 0, 0, v41);
        if (v41 == a4)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v40 = 261;
        __dst = __PAIR128__(__len[0], __src);
        llvm::MemoryBuffer::getFile(&__dst, 0, 1, 0, 0, v41);
        if (v41 == a4)
        {
LABEL_41:
          if ((v42 & 1) == 0)
          {
            v29 = v41[0];
            v41[0] = 0;
            if (v29)
            {
              (*(*v29 + 8))(v29);
            }
          }

          goto LABEL_21;
        }
      }

      v27 = *(a4 + 16);
      if ((v27 & 1) == 0)
      {
        v28 = *a4;
        *a4 = 0;
        if (v28)
        {
          (*(*v28 + 8))(v28);
          v27 = *(a4 + 16);
        }
      }

      if (v42)
      {
        *(a4 + 16) = v27 | 1;
        v19 = v41[1];
        *a4 = v41[0];
        *(a4 + 8) = v19;
      }

      else
      {
        *(a4 + 16) = v27 & 0xFE;
        *a4 = v41[0];
      }

LABEL_21:
      v17 += 24;
    }

    while (v18 != v17);
  }

  v30 = __src;
  if ((*(a4 + 16) & 1) == 0)
  {
    v31 = __len[0];
    if (__len[0] >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    if (__len[0] >= 0x17)
    {
      if ((__len[0] | 7) == 0x17)
      {
        v33 = 25;
      }

      else
      {
        v33 = (__len[0] | 7) + 1;
      }

      p_dst = operator new(v33);
      *(&__dst + 1) = v31;
      v39 = v33 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v39) = __len[0];
      p_dst = &__dst;
      if (!__len[0])
      {
        LOBYTE(__dst) = 0;
        if ((*(a3 + 23) & 0x80000000) == 0)
        {
LABEL_49:
          *a3 = __dst;
          *(a3 + 16) = v39;
          v30 = __src;
          goto LABEL_50;
        }

LABEL_58:
        operator delete(*a3);
        goto LABEL_49;
      }
    }

    memmove(p_dst, v30, v31);
    *(p_dst + v31) = 0;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_58;
  }

LABEL_50:
  if (v30 != v46)
  {
    free(v30);
  }
}

uint64_t llvm::SourceMgr::AddNewSourceBuffer(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  *a2 = 0;
  v12 = v3;
  __p = 0;
  v14 = a3;
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    v5 = std::vector<llvm::SourceMgr::SrcBuffer>::__emplace_back_slow_path<llvm::SourceMgr::SrcBuffer>(a1, &v12);
    v8 = __p;
    *(a1 + 8) = v5;
    v6 = *a1;
    if (v8)
    {
      v9 = *v8;
      if (*v8)
      {
        v8[1] = v9;
        operator delete(v9);
      }

      operator delete(v8);
      __p = 0;
    }
  }

  else
  {
    v4[1] = 0;
    v4[2] = a3;
    v12 = 0;
    __p = 0;
    *v4 = v3;
    v5 = (v4 + 3);
    *(a1 + 8) = v4 + 3;
    v6 = *a1;
  }

  v10 = v12;
  v12 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  return -1431655765 * ((v5 - v6) >> 3);
}

uint64_t llvm::SourceMgr::SrcBuffer::getLineNumber(llvm::SourceMgr::SrcBuffer *this, const char *a2)
{
  v6 = *this;
  v4 = (this + 8);
  v5 = v6;
  v7 = *(v6 + 16) - *(v6 + 8);
  if (v7 <= 0xFF)
  {
    Offset = GetOrCreateOffsetCache<unsigned char>(v4, v5);
    v17 = Offset[1] - *Offset;
    if (v17)
    {
      v18 = *Offset;
      do
      {
        v19 = v17 >> 1;
        v20 = &v18[v17 >> 1];
        v22 = *v20;
        v21 = v20 + 1;
        v17 += ~(v17 >> 1);
        if (v22 < (a2 - *(*this + 8)))
        {
          v18 = v21;
        }

        else
        {
          v17 = v19;
        }
      }

      while (v17);
      return v18 - *Offset + 1;
    }

    else
    {
      return 1;
    }
  }

  else if (v7 >> 16)
  {
    if (HIDWORD(v7))
    {
      v8 = GetOrCreateOffsetCache<unsigned long long>(v4, v5);
      v9 = v8[1];
      if (v9 != *v8)
      {
        v10 = v9 - *v8;
        v9 = *v8;
        do
        {
          v11 = v10 >> 1;
          v12 = &v9[v10 >> 1];
          v14 = *v12;
          v13 = v12 + 1;
          v10 += ~(v10 >> 1);
          if (v14 < &a2[-*(*this + 8)])
          {
            v9 = v13;
          }

          else
          {
            v10 = v11;
          }
        }

        while (v10);
      }

      return ((v9 - *v8) >> 3) + 1;
    }

    else
    {
      v30 = GetOrCreateOffsetCache<unsigned int>(v4, v5);
      v31 = v30[1];
      if (v31 != *v30)
      {
        v32 = (v31 - *v30) >> 2;
        v31 = *v30;
        do
        {
          v33 = v32 >> 1;
          v34 = &v31[v32 >> 1];
          v36 = *v34;
          v35 = v34 + 1;
          v32 += ~(v32 >> 1);
          if (v36 < a2 - *(*this + 8))
          {
            v31 = v35;
          }

          else
          {
            v32 = v33;
          }
        }

        while (v32);
      }

      return ((v31 - *v30) >> 2) + 1;
    }
  }

  else
  {
    v23 = GetOrCreateOffsetCache<unsigned short>(v4, v5);
    v24 = v23[1];
    if (v24 != *v23)
    {
      v25 = v24 - *v23;
      v24 = *v23;
      do
      {
        v26 = v25 >> 1;
        v27 = &v24[v25 >> 1];
        v29 = *v27;
        v28 = v27 + 1;
        v25 += ~(v25 >> 1);
        if (v29 < (a2 - *(*this + 8)))
        {
          v24 = v28;
        }

        else
        {
          v25 = v26;
        }
      }

      while (v25);
    }

    return ((v24 - *v23) >> 1) + 1;
  }
}