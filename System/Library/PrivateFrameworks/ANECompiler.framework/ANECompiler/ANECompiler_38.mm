uint64_t std::__split_buffer<std::function<BOOL ()(void)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    while (1)
    {
      *(a1 + 16) = i - 32;
      v4 = *(i - 8);
      if (v4 != i - 32)
      {
        break;
      }

      (*(*v4 + 32))(v4);
      i = *(a1 + 16);
      if (i == v3)
      {
        goto LABEL_8;
      }
    }

    if (v4)
    {
      (*(*v4 + 40))(v4);
    }
  }

LABEL_8:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__func<operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroImport(operations_research::sat::CpModelProto const&,operations_research::sat::SharedBoundsManager *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroImport(operations_research::sat::CpModelProto const&,operations_research::sat::SharedBoundsManager *,operations_research::sat::Model *)::$_0>,BOOL ()(void)>::~__func(uint64_t result)
{
  *result = &unk_284F3E8D8;
  if (*(result + 47) < 0)
  {
    v1 = result;
    operator delete(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroImport(operations_research::sat::CpModelProto const&,operations_research::sat::SharedBoundsManager *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroImport(operations_research::sat::CpModelProto const&,operations_research::sat::SharedBoundsManager *,operations_research::sat::Model *)::$_0>,BOOL ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_284F3E8D8;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x23EED9460);
}

__n128 std::__function::__func<operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroImport(operations_research::sat::CpModelProto const&,operations_research::sat::SharedBoundsManager *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroImport(operations_research::sat::CpModelProto const&,operations_research::sat::SharedBoundsManager *,operations_research::sat::Model *)::$_0>,BOOL ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F3E8D8;
  *(a2 + 8) = *(a1 + 8);
  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 24), *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v4 = *(a1 + 24);
    *(a2 + 40) = *(a1 + 40);
    *(a2 + 24) = v4;
  }

  result = *(a1 + 48);
  v6 = *(a1 + 64);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 48) = result;
  *(a2 + 64) = v6;
  return result;
}

void std::__function::__func<operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroImport(operations_research::sat::CpModelProto const&,operations_research::sat::SharedBoundsManager *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroImport(operations_research::sat::CpModelProto const&,operations_research::sat::SharedBoundsManager *,operations_research::sat::Model *)::$_0>,BOOL ()(void)>::destroy(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

void std::__function::__func<operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroImport(operations_research::sat::CpModelProto const&,operations_research::sat::SharedBoundsManager *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroImport(operations_research::sat::CpModelProto const&,operations_research::sat::SharedBoundsManager *,operations_research::sat::Model *)::$_0>,BOOL ()(void)>::destroy_deallocate(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    v2 = a1;
    operator delete(*(a1 + 24));
    a1 = v2;
  }

  operator delete(a1);
}

uint64_t std::__function::__func<operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroImport(operations_research::sat::CpModelProto const&,operations_research::sat::SharedBoundsManager *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroImport(operations_research::sat::CpModelProto const&,operations_research::sat::SharedBoundsManager *,operations_research::sat::Model *)::$_0>,BOOL ()(void)>::operator()(uint64_t a1)
{
  v61[6] = *MEMORY[0x277D85DE8];
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  __p = 0;
  v50 = 0;
  v51 = 0;
  operations_research::sat::SharedBoundsManager::GetChangedBounds(*(a1 + 16), *(a1 + 72), &v55, &v52, &__p);
  v2 = v55;
  if (v56 != v55)
  {
    v3 = 0;
    v4 = 0;
    v5 = 1;
    while (1)
    {
      v6 = v2[v3];
      v7 = *(a1 + 80);
      v8 = ~v6 <= v6 ? v6 : ~v6;
      v9 = *(v7[6] + 4 * v8);
      if (v9 == -1)
      {
        break;
      }

      v10 = __PAIR64__(v9, v6) >> 31;
      v11 = v10 ^ (*(__p + v3) == 0);
      v12 = *(a1 + 64);
      v13 = v10 >> 6;
      v14 = *(*(v12 + 24) + 8 * v13);
      if (((1 << v11) & v14) != 0)
      {
        goto LABEL_4;
      }

      if ((v14 >> (v11 & 0x3F ^ 1u)))
      {
        v41 = 0;
        *(*(a1 + 48) + 528) = 1;
        goto LABEL_41;
      }

      v15 = *(v12 + 12);
      *(v12 + 8) = *(v12 + 8) & 0xFFFFFFF | 0x10000000;
      *(*(v12 + 48) + 4 * v15) = v11;
      *(*(v12 + 96) + 8 * (v10 >> 1)) = *(v12 + 8);
      *(*(v12 + 24) + 8 * v13) |= 1 << v11;
      ++*(v12 + 12);
LABEL_3:
      v4 = 1;
LABEL_4:
      v3 = v5;
      v2 = v55;
      ++v5;
      if (v3 >= (v56 - v55) >> 2)
      {
        if ((v4 & 1) != 0 && (operations_research::sat::SatSolver::FinishPropagation(*(a1 + 48)) & 1) == 0)
        {
LABEL_48:
          v41 = 0;
          goto LABEL_41;
        }

        goto LABEL_40;
      }
    }

    v16 = *(*v7 + 4 * v8);
    if (v16 == -1)
    {
      goto LABEL_4;
    }

    v17 = v16 ^ (v6 >> 31);
    v18 = *(v52 + v3);
    v48 = v18;
    v19 = *(__p + v3);
    v47 = v19;
    v20 = *(*(a1 + 56) + 40);
    v21 = 8 * v17;
    v22 = *(v20 + v21);
    v46 = v22;
    v23 = -*(v20 + (v21 ^ 8));
    v45 = v23;
    if (v18 <= v22 && v19 >= v23)
    {
      goto LABEL_4;
    }

    {
LABEL_19:
      if (v18 > v22 && !operations_research::sat::IntegerTrail::Enqueue(*(a1 + 56), v17, v48, 0, 0, 0, 0))
      {
        goto LABEL_48;
      }

      if (v19 < v23)
      {
        v25 = v47 >= 0x8000000000000002 ? -v47 : 0x7FFFFFFFFFFFFFFFLL;
        if ((operations_research::sat::IntegerTrail::Enqueue(*(a1 + 56), v17 ^ 1, v25, 0, 0, 0, 0) & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      goto LABEL_3;
    }

    v27 = *(a1 + 8);
    v29 = *(v27 + 24);
    v28 = v27 + 24;
    v30 = v29 + 8 * v6 + 7;
    if (v29)
    {
      v28 = v30;
    }

    v31 = *(*v28 + 40) & 0xFFFFFFFFFFFFFFFCLL;
    if (*(v31 + 23) < 0)
    {
      v26 = *(v31 + 8);
      if (v26)
      {
        std::string::__init_copy_ctor_external(&v44, *v31, v26);
        goto LABEL_36;
      }
    }

    else if (*(v31 + 23))
    {
      v33 = *v31;
      v44.__r_.__value_.__r.__words[2] = *(v31 + 16);
      *&v44.__r_.__value_.__l.__data_ = v33;
LABEL_36:
      v34 = absl::lts_20240722::log_internal::LogMessage::LogMessage(v61, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 1310);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v34, "  '", 3uLL);
      v35 = absl::lts_20240722::log_internal::LogMessage::operator<<(v61, (a1 + 24));
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v35, "' imports new bounds for ", 0x19uLL);
      v36 = absl::lts_20240722::log_internal::LogMessage::operator<<(v35, &v44);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v36, ": from [", 8uLL);
      v37 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_>,0>(v36, &v46);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v37, ", ", 2uLL);
      v38 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_>,0>(v37, &v45);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v38, "] to [", 6uLL);
      v39 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_>,0>(v38, &v48);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v39, ", ", 2uLL);
      v40 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_>,0>(v39, &v47);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v40, "]", 1uLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v61);
      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v44.__r_.__value_.__l.__data_);
      }

      goto LABEL_19;
    }

    v61[0] = "anonymous_var(";
    v61[1] = 14;
    v32 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v6, v60, v26);
    v59[0] = v60;
    v59[1] = v32 - v60;
    v58[0] = ")";
    v58[1] = 1;
    absl::lts_20240722::StrCat(v61, v59, v58, &v44);
    goto LABEL_36;
  }

LABEL_40:
  v41 = 1;
LABEL_41:
  if (__p)
  {
    v50 = __p;
    operator delete(__p);
  }

  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }

  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

  v42 = *MEMORY[0x277D85DE8];
  return v41;
}

void sub_23CB0B39C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
    v28 = a24;
    if (a24)
    {
LABEL_7:
      operator delete(v28);
      v29 = a27;
      if (a27)
      {
LABEL_8:
        operator delete(v29);
        _Unwind_Resume(exception_object);
      }

LABEL_4:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v28 = a24;
    if (a24)
    {
      goto LABEL_7;
    }
  }

  v29 = a27;
  if (a27)
  {
    goto LABEL_8;
  }

  goto LABEL_4;
}

uint64_t std::__function::__func<operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroImport(operations_research::sat::CpModelProto const&,operations_research::sat::SharedBoundsManager *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroImport(operations_research::sat::CpModelProto const&,operations_research::sat::SharedBoundsManager *,operations_research::sat::Model *)::$_0>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat12_GLOBAL__N_137RegisterVariableBoundsLevelZeroImportERKNS0_12CpModelProtoEPNS0_19SharedBoundsManagerEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat12_GLOBAL__N_137RegisterVariableBoundsLevelZeroImportERKNS0_12CpModelProtoEPNS0_19SharedBoundsManagerEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat12_GLOBAL__N_137RegisterVariableBoundsLevelZeroImportERKNS0_12CpModelProtoEPNS0_19SharedBoundsManagerEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat12_GLOBAL__N_137RegisterVariableBoundsLevelZeroImportERKNS0_12CpModelProtoEPNS0_19SharedBoundsManagerEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__function::__func<operations_research::sat::anonymous namespace::RegisterClausesLevelZeroImport(int,operations_research::sat::SharedClausesManager *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::RegisterClausesLevelZeroImport(int,operations_research::sat::SharedClausesManager *,operations_research::sat::Model *)::$_0>,BOOL ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F3E968;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::anonymous namespace::RegisterClausesLevelZeroImport(int,operations_research::sat::SharedClausesManager *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::RegisterClausesLevelZeroImport(int,operations_research::sat::SharedClausesManager *,operations_research::sat::Model *)::$_0>,BOOL ()(void)>::operator()(uint64_t a1)
{
  __p = 0;
  v13 = 0;
  v14 = 0;
  operations_research::sat::SharedClausesManager::GetUnseenBinaryClauses(*(a1 + 8), *(a1 + 16), &__p);
  v2 = *(a1 + 40);
  *(v2 + 844) = 0;
  v3 = __p;
  v4 = v13;
  if (__p == v13)
  {
LABEL_5:
    v9 = 1;
    *(v2 + 844) = 1;
    v10 = __p;
    if (!__p)
    {
      return v9;
    }

LABEL_6:
    v13 = v10;
    operator delete(v10);
    return v9;
  }

  while (1)
  {
    v5 = *(*(a1 + 24) + 48);
    v6 = vmax_s32(vmvn_s8(*v3), *v3);
    HIDWORD(v8) = *(v5 + 4 * v6.i32[0]);
    LODWORD(v8) = *v3;
    v7 = v8 >> 31;
    HIDWORD(v8) = *(v5 + 4 * v6.i32[1]);
    LODWORD(v8) = HIDWORD(*v3);
    if ((operations_research::sat::SatSolver::AddBinaryClause(*(a1 + 32), v7, v8 >> 31) & 1) == 0)
    {
      break;
    }

    if (++v3 == v4)
    {
      v2 = *(a1 + 40);
      goto LABEL_5;
    }
  }

  v9 = 0;
  v10 = __p;
  if (__p)
  {
    goto LABEL_6;
  }

  return v9;
}

void sub_23CB0B64C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<operations_research::sat::anonymous namespace::RegisterClausesLevelZeroImport(int,operations_research::sat::SharedClausesManager *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::RegisterClausesLevelZeroImport(int,operations_research::sat::SharedClausesManager *,operations_research::sat::Model *)::$_0>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat12_GLOBAL__N_130RegisterClausesLevelZeroImportEiPNS0_20SharedClausesManagerEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat12_GLOBAL__N_130RegisterClausesLevelZeroImportEiPNS0_20SharedClausesManagerEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat12_GLOBAL__N_130RegisterClausesLevelZeroImportEiPNS0_20SharedClausesManagerEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat12_GLOBAL__N_130RegisterClausesLevelZeroImportEiPNS0_20SharedClausesManagerEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__function::__value_func<void ()(operations_research::sat::Literal,operations_research::sat::Literal)>::swap[abi:ne200100](void *result, void *a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  if (a2 == result)
  {
LABEL_8:
    v6 = *MEMORY[0x277D85DE8];
    return result;
  }

  v3 = result;
  result = result[3];
  v4 = a2[3];
  if (result != v3)
  {
    if (v4 != a2)
    {
      v3[3] = v4;
      a2[3] = result;
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }

    (*(*v4 + 24))(a2[3], v3);
    result = (*(*a2[3] + 32))(a2[3]);
    a2[3] = v3[3];
    v3[3] = v3;
    goto LABEL_8;
  }

  if (v4 == a2)
  {
    (*(*result + 24))(result, v8);
    (*(*v3[3] + 32))(v3[3]);
    v3[3] = 0;
    (*(*a2[3] + 24))(a2[3], v3);
    (*(*a2[3] + 32))(a2[3]);
    a2[3] = 0;
    v3[3] = v3;
    (*(v8[0] + 24))(v8, a2);
    result = (*(v8[0] + 32))(v8);
  }

  else
  {
    (*(*result + 24))(result, a2);
    result = (*(*v3[3] + 32))(v3[3]);
    v3[3] = a2[3];
  }

  a2[3] = a2;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CB0B968(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

__n128 std::__function::__func<operations_research::sat::anonymous namespace::RegisterClausesExport(int,operations_research::sat::SharedClausesManager *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::RegisterClausesExport(int,operations_research::sat::SharedClausesManager *,operations_research::sat::Model *)::$_0>,void ()(operations_research::sat::Literal,operations_research::sat::Literal)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F3E9E8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<operations_research::sat::anonymous namespace::RegisterClausesExport(int,operations_research::sat::SharedClausesManager *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::RegisterClausesExport(int,operations_research::sat::SharedClausesManager *,operations_research::sat::Model *)::$_0>,void ()(operations_research::sat::Literal,operations_research::sat::Literal)>::operator()(uint64_t a1, int *a2, int *a3)
{
  v3 = *a2 >> 1;
  v4 = *(*(a1 + 8) + 72);
  v5 = (*(*(a1 + 8) + 80) - v4) >> 2;
  if (v5 > v3)
  {
    v6 = *(v4 + 4 * v3);
    if (v6 != -1)
    {
      v7 = *a3 >> 1;
      if (v5 > v7)
      {
        v8 = *(v4 + 4 * v7);
        if (v8 != -1)
        {
          operations_research::sat::SharedClausesManager::AddBinaryClause(*(a1 + 24), *(a1 + 16), v6 ^ -(*a2 & 1), v8 ^ -(*a3 & 1));
        }
      }
    }
  }
}

uint64_t std::__function::__func<operations_research::sat::anonymous namespace::RegisterClausesExport(int,operations_research::sat::SharedClausesManager *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::RegisterClausesExport(int,operations_research::sat::SharedClausesManager *,operations_research::sat::Model *)::$_0>,void ()(operations_research::sat::Literal,operations_research::sat::Literal)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat12_GLOBAL__N_121RegisterClausesExportEiPNS0_20SharedClausesManagerEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat12_GLOBAL__N_121RegisterClausesExportEiPNS0_20SharedClausesManagerEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat12_GLOBAL__N_121RegisterClausesExportEiPNS0_20SharedClausesManagerEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat12_GLOBAL__N_121RegisterClausesExportEiPNS0_20SharedClausesManagerEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

operations_research::sat::Model **std::unique_ptr<operations_research::sat::Model>::~unique_ptr[abi:ne200100](operations_research::sat::Model **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    operations_research::sat::Model::~Model(v2);
    MEMORY[0x23EED9460]();
    return v3;
  }

  return v1;
}

void operations_research::sat::anonymous namespace::ObjectiveShavingSolver::~ObjectiveShavingSolver(operations_research::sat::_anonymous_namespace_::ObjectiveShavingSolver *this)
{
  *this = &unk_284F3EA88;
  operations_research::sat::SharedStatTables::AddTimingStat((*(this + 155) + 88), this);
}

{
}

void operations_research::sat::anonymous namespace::ObjectiveShavingSolver::Synchronize(operations_research::sat::_anonymous_namespace_::ObjectiveShavingSolver *this)
{
  absl::lts_20240722::Mutex::Lock(this + 201);
  if (*(this + 1624) == 1)
  {
    v2 = atomic_load(this + 1248);
    if ((v2 & 1) == 0)
    {
      {
        atomic_store(1u, this + 1248);
      }

      if (operations_research::sat::SharedResponseManager::GetInnerObjectiveLowerBound(*(*(this + 155) + 40)) > *(this + 202))
      {
        atomic_store(1u, this + 1248);
      }
    }
  }

  absl::lts_20240722::Mutex::Unlock((this + 1608));
}

uint64_t operations_research::sat::anonymous namespace::ObjectiveShavingSolver::TaskIsAvailable(operations_research::sat::_anonymous_namespace_::ObjectiveShavingSolver *this)
{
  {
    return 0;
  }

  absl::lts_20240722::Mutex::Lock(this + 201);
  v3 = *(this + 1624);
  absl::lts_20240722::Mutex::Unlock((this + 1608));
  return (v3 ^ 1) & 1;
}

void operations_research::sat::anonymous namespace::ObjectiveShavingSolver::GenerateTask(operations_research::sat::_anonymous_namespace_::ObjectiveShavingSolver *this@<X0>, void *a2@<X8>)
{
  absl::lts_20240722::Mutex::Lock(this + 201);
  atomic_store(0, this + 1248);
  *(this + 1624) = 1;
  *(this + 202) = operations_research::sat::SharedResponseManager::GetInnerObjectiveLowerBound(*(*(this + 155) + 40));
  absl::lts_20240722::Mutex::Unlock((this + 1608));
  *a2 = &unk_284F3EAE0;
  a2[1] = this;
  a2[3] = a2;
}

uint64_t std::__function::__func<operations_research::sat::anonymous namespace::ObjectiveShavingSolver::GenerateTask(long long)::{lambda(void)#1},std::allocator<operations_research::sat::anonymous namespace::ObjectiveShavingSolver::GenerateTask(long long)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F3EAE0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<operations_research::sat::anonymous namespace::ObjectiveShavingSolver::GenerateTask(long long)::{lambda(void)#1},std::allocator<operations_research::sat::anonymous namespace::ObjectiveShavingSolver::GenerateTask(long long)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  if (*(v1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v3, *(v1 + 8), *(v1 + 16));
  }

  else
  {
    v2 = *(v1 + 8);
    v3.__r_.__value_.__r.__words[2] = *(v1 + 24);
    *&v3.__r_.__value_.__l.__data_ = v2;
  }

  operator new();
}

void sub_23CB0CA70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<operations_research::sat::anonymous namespace::ObjectiveShavingSolver::GenerateTask(long long)::{lambda(void)#1},std::allocator<operations_research::sat::anonymous namespace::ObjectiveShavingSolver::GenerateTask(long long)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat12_GLOBAL__N_122ObjectiveShavingSolver12GenerateTaskExEUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat12_GLOBAL__N_122ObjectiveShavingSolver12GenerateTaskExEUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat12_GLOBAL__N_122ObjectiveShavingSolver12GenerateTaskExEUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat12_GLOBAL__N_122ObjectiveShavingSolver12GenerateTaskExEUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::vector<long long>::vector[abi:ne200100]<google::protobuf::internal::RepeatedIterator<long long const>,0>(void *result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3 != a2)
  {
    if (((a3 - a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_23CB0CDD0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::anonymous namespace::PostsolveResponseWrapper(char a1, int a2, const operations_research::sat::CpModelProto *a3, uint64_t *a4, uint64_t a5, __n128 a6)
{
  if (a1)
  {
    v9 = operations_research::sat::CpModelProto::CpModelProto(v30, 0, a3);
    v47 = 0;
    v45 = 1;
    CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(v9);
    v10 = *a5;
    if (*(a5 + 8) != *a5)
    {
      v11 = 0;
      v12 = 1;
      do
      {
        v13 = (v31 + 8 * *(*a4 + 4 * v11) + 7);
        if ((v31 & 1) == 0)
        {
          v13 = &v31;
        }

        v14 = *v13;
        v15 = *v13;
        *(v15 + 16) = 0;
        v16 = (v15 + 16);
        v17 = *&v10[8 * v11];
        v18 = *(v14 + 20);
        if (v18)
        {
          v19 = 0;
        }

        else
        {
          google::protobuf::RepeatedField<long long>::Grow(v16, v18);
          v10 = *a5;
          v19 = *(v14 + 16);
          v18 = *(v14 + 20);
        }

        v20 = *(v14 + 24);
        v21 = v19 + 1;
        *(v14 + 16) = v19 + 1;
        *(v20 + 8 * v19) = v17;
        v22 = *&v10[8 * v11];
        if (v19 + 1 == v18)
        {
          google::protobuf::RepeatedField<long long>::Grow(v16, v18);
          v21 = *(v14 + 16);
          v20 = *(v14 + 24);
          v10 = *a5;
        }

        *v16 = v21 + 1;
        *(v20 + 8 * v21) = v22;
        v11 = v12++;
      }

      while (v11 < (*(a5 + 8) - v10) >> 3);
    }

    memset(v40, 0, sizeof(v40));
    v41 = xmmword_23CE306D0;
    v43 = 0;
    v44 = 0;
    v42 = 0;
    v32.__r_.__value_.__r.__words[0] = &gtl::FastTypeId<WallTimer>(void)::d;
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long,void *>,absl::lts_20240722::hash_internal::Hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<std::pair<unsigned long const,void *>>>::find_or_prepare_insert<unsigned long>(&v41, &v32, v34);
    if (v36 == 1)
    {
      v23 = v35;
      *v35 = v32.__r_.__value_.__r.__words[0];
      v23[1] = 0;
    }

    v35[1] = &v45;
    v24 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(v40);
    v24[143] = 0;
    v25 = v24[8];
    v24[147] = 0;
    v24[8] = v25 | 0x110;
    v26 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedResponseManager>(v40);
    operations_research::sat::SharedResponseManager::InitializeObjective(v26, v30, v27);
    operations_research::sat::SharedResponseManager::GetResponse(v26, v34);
    if (v39 != 2 && v39 != 4)
    {
      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v33, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 2239);
      operations_research::sat::CpSolverResponseStats(v34, 1, &v32);
      absl::lts_20240722::log_internal::LogMessage::operator<<(v33, &v32);
      std::string::~string(&v32);
      absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v33);
    }

    if (v37 < a2)
    {
      absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(a2, v37, "num_variables_in_original_model <= postsolve_response.solution().size()");
    }

    std::vector<long long>::__assign_with_size[abi:ne200100]<google::protobuf::internal::RepeatedIterator<long long const>,google::protobuf::internal::RepeatedIterator<long long const>>(a5, v38, (v38 + 8 * a2), a2);
    operations_research::sat::CpSolverResponse::~CpSolverResponse(v34);
    operations_research::sat::Model::~Model(v40);
    operations_research::sat::CpModelProto::~CpModelProto(v30);
  }

  else
  {

    operations_research::sat::PostsolveResponse(a2, a3, a4, a5, a6);
  }
}

void sub_23CB0D10C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, char a37)
{
  operations_research::sat::CpSolverResponse::~CpSolverResponse(&a37);
  operations_research::sat::Model::~Model((v37 - 184));
  operations_research::sat::CpModelProto::~CpModelProto(&a9);
  _Unwind_Resume(a1);
}

void operations_research::sat::anonymous namespace::ObjectiveShavingSolver::Info(std::string *this, uint64_t a2, char *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    __p = *(a2 + 8);
  }

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
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v7 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(a2 + 1296), v16, a3);
  *&v15 = v16;
  *(&v15 + 1) = v7 - v16;
  v9 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(a2 + 1320), v14, v8);
  v12 = v14;
  v13 = v9 - v14;
  v17[0] = p_p;
  v17[1] = size;
  v17[2] = " (vars=";
  v17[3] = 7;
  v18 = v15;
  v19 = " csts=";
  v20 = 6;
  v21 = v14;
  v22 = v9 - v14;
  v23 = ")";
  v24 = 1;
  absl::lts_20240722::strings_internal::CatPieces(v17, 6, this);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_23CB0D2E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<long long>::__assign_with_size[abi:ne200100]<google::protobuf::internal::RepeatedIterator<long long const>,google::protobuf::internal::RepeatedIterator<long long const>>(char **a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v4 = a2;
  v6 = a1[2];
  v7 = *a1;
  result = v7;
  if (a4 > (v6 - v7) >> 3)
  {
    if (v7)
    {
      a1[1] = v7;
      v9 = a4;
      operator delete(v7);
      a4 = v9;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v10 = v6 >> 2;
      if (v6 >> 2 <= a4)
      {
        v10 = a4;
      }

      v11 = v6 >= 0x7FFFFFFFFFFFFFF8;
      v12 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v11)
      {
        v12 = v10;
      }

      if (!(v12 >> 61))
      {
        operator new();
      }
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v13 = a1[1];
  if (a4 <= (v13 - v7) >> 3)
  {
    if (a2 != a3)
    {
      v34 = a3 - a2 - 8;
      if (v34 < 0x18)
      {
        goto LABEL_40;
      }

      if (&v7[-a2] < 0x20)
      {
        goto LABEL_40;
      }

      v35 = (v34 >> 3) + 1;
      v36 = 8 * (v35 & 0x3FFFFFFFFFFFFFFCLL);
      result = &v7[v36];
      v37 = (a2 + v36);
      v38 = (a2 + 16);
      v39 = v7 + 16;
      v40 = v35 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v41 = *v38;
        *(v39 - 1) = *(v38 - 1);
        *v39 = v41;
        v38 += 2;
        v39 += 2;
        v40 -= 4;
      }

      while (v40);
      v4 = v37;
      if (v35 != (v35 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_40:
        do
        {
          v42 = *v4++;
          *result = v42;
          result += 8;
        }

        while (v4 != a3);
      }
    }

    a1[1] = result;
  }

  else
  {
    v14 = v13 - v7 + a2;
    if (v13 != v7)
    {
      v15 = v13 - v7 - 8;
      if (v15 < 0x18)
      {
        goto LABEL_41;
      }

      if (&v7[-a2] < 0x20)
      {
        goto LABEL_41;
      }

      v16 = (v15 >> 3) + 1;
      v17 = 8 * (v16 & 0x3FFFFFFFFFFFFFFCLL);
      result = &v7[v17];
      v18 = (a2 + v17);
      v19 = (a2 + 16);
      v20 = v7 + 16;
      v21 = v16 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v22 = *v19;
        *(v20 - 1) = *(v19 - 1);
        *v20 = v22;
        v19 += 2;
        v20 += 2;
        v21 -= 4;
      }

      while (v21);
      v4 = v18;
      if (v16 != (v16 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_41:
        do
        {
          v23 = *v4++;
          *result = v23;
          result += 8;
        }

        while (v4 != v14);
      }
    }

    if (v14 == a3)
    {
      a1[1] = v13;
    }

    else
    {
      v24 = v14;
      v25 = a3 - v14 - 8;
      if (v25 < 0x18)
      {
        goto LABEL_25;
      }

      if (&v13[-v14] < 0x20)
      {
        goto LABEL_25;
      }

      v26 = (v25 >> 3) + 1;
      v27 = 8 * (v26 & 0x3FFFFFFFFFFFFFFCLL);
      v24 = (v14 + v27);
      v28 = &v13[v27];
      v29 = v13 + 16;
      v30 = (v14 + 16);
      v31 = v26 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v32 = *v30;
        *(v29 - 1) = *(v30 - 1);
        *v29 = v32;
        v29 += 2;
        v30 += 2;
        v31 -= 4;
      }

      while (v31);
      v13 = v28;
      if (v26 != (v26 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_25:
        v28 = v13;
        do
        {
          v33 = *v24++;
          *v28 = v33;
          v28 += 8;
        }

        while (v24 != a3);
      }

      a1[1] = v28;
    }
  }

  return result;
}

void operations_research::sat::anonymous namespace::FeasibilityPumpSolver::~FeasibilityPumpSolver(operations_research::sat::_anonymous_namespace_::FeasibilityPumpSolver *this)
{
  *this = &unk_284F3EB60;
  operations_research::sat::SharedStatTables::AddTimingStat((*(this + 32) + 88), this);
}

{
}

void operations_research::sat::anonymous namespace::FeasibilityPumpSolver::Synchronize(atomic_ullong *this)
{
  absl::lts_20240722::Mutex::Lock(this + 34);
  v2 = *(this + 36);
  if (v2 > 0.0)
  {
    *(this + 5) = v2 + *(this + 5);
    operations_research::TimeDistribution::AddTimeInSec((this + 19), v2);
    v2 = *(this + 36);
  }

  v3 = *(this[32] + 16);
  absl::lts_20240722::Mutex::Lock(v3);
  *(v3[1] + 112) = v2 + *(v3[1] + 112);
  absl::lts_20240722::Mutex::Unlock(v3);
  this[36] = 0;
  absl::lts_20240722::Mutex::Unlock((this + 34));
}

uint64_t operations_research::sat::anonymous namespace::FeasibilityPumpSolver::TaskIsAvailable(operations_research::sat::_anonymous_namespace_::FeasibilityPumpSolver *this)
{
  {
    return 0;
  }

  absl::lts_20240722::Mutex::Lock(this + 34);
  v3 = *(this + 296);
  absl::lts_20240722::Mutex::Unlock((this + 272));
  return v3 & 1;
}

void operations_research::sat::anonymous namespace::FeasibilityPumpSolver::GenerateTask(atomic_ullong *this@<X0>, void *a2@<X8>)
{
  absl::lts_20240722::Mutex::Lock(this + 34);
  *(this + 296) = 0;
  absl::lts_20240722::Mutex::Unlock((this + 34));
  *a2 = &unk_284F3EBB8;
  a2[1] = this;
  a2[3] = a2;
}

uint64_t std::__function::__func<operations_research::sat::anonymous namespace::FeasibilityPumpSolver::GenerateTask(long long)::{lambda(void)#1},std::allocator<operations_research::sat::anonymous namespace::FeasibilityPumpSolver::GenerateTask(long long)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F3EBB8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<operations_research::sat::anonymous namespace::FeasibilityPumpSolver::GenerateTask(long long)::{lambda(void)#1},std::allocator<operations_research::sat::anonymous namespace::FeasibilityPumpSolver::GenerateTask(long long)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  absl::lts_20240722::Mutex::Lock((v1 + 272));
  v3 = *(v1 + 280);
  if (v3 == 1)
  {
    v4 = *(v1 + 264);
    v5 = **(v1 + 256);
    v6 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(v4);
    if (*(operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(v4) + 572))
    {
      operations_research::sat::ComputeLinearRelaxation(v5, v4, v7, __p);
      if ((*(operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(v4) + 528) & 1) == 0)
      {
        v8 = -858993459 * ((__p[0].__r_.__value_.__l.__size_ - __p[0].__r_.__value_.__r.__words[0]) >> 3);
        if (v8)
        {
          v9 = operations_research::sat::Model::GetOrCreate<operations_research::sat::FeasibilityPump>(v4);
          if (v8 >= 1)
          {
            v10 = 0;
            v11 = v8 & 0x7FFFFFFF;
            do
            {
              operations_research::sat::FeasibilityPump::AddLinearConstraint(v9, (__p[0].__r_.__value_.__r.__words[0] + v10));
              v10 += 40;
              --v11;
            }

            while (v11);
          }

          if (*(v5 + 16))
          {
            v12 = *(v5 + 128);
            if (*(v12 + 10) >= 1)
            {
              v13 = 0;
              do
              {
                v14 = *(v12[3] + v13);
                if (~v14 <= v14)
                {
                  v15 = *(v12[3] + v13);
                }

                else
                {
                  v15 = ~v14;
                }

                operations_research::sat::FeasibilityPump::SetObjectiveCoefficient(v9, *(*v6 + 4 * v15) ^ (v14 >> 31), v12[6][v13++]);
                v12 = *(v5 + 128);
                if (!v12)
                {
                  v12 = &operations_research::sat::_CpObjectiveProto_default_instance_;
                }
              }

              while (v13 < *(v12 + 10));
            }
          }
        }
      }

      operations_research::sat::LinearRelaxation::~LinearRelaxation(__p);
    }

    v16 = *(v1 + 264);
    v17 = v16[3];
    if (v17 > 1)
    {
      v20 = 0;
      _X12 = v16[5];
      __asm { PRFM            #4, [X12] }

      v27 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::FeasibilityPump>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::FeasibilityPump>(void)::d));
      v28 = vdup_n_s8(v27 & 0x7F);
      v29 = ((v27 >> 7) ^ (_X12 >> 12)) & v17;
      v30 = *(_X12 + v29);
      v31 = vceq_s8(v30, v28);
      if (!v31)
      {
        goto LABEL_27;
      }

LABEL_24:
      v32 = v16[6];
      while (1)
      {
        v33 = (v29 + (__clz(__rbit64(v31)) >> 3)) & v17;
        if (*(v32 + 16 * v33) == &gtl::FastTypeId<operations_research::sat::FeasibilityPump>(void)::d)
        {
          break;
        }

        v31 &= ((v31 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v31)
        {
LABEL_27:
          while (!*&vceq_s8(v30, 0x8080808080808080))
          {
            v20 += 8;
            v29 = (v20 + v29) & v17;
            v30 = *(_X12 + v29);
            v31 = vceq_s8(v30, v28);
            if (v31)
            {
              goto LABEL_24;
            }
          }

          goto LABEL_34;
        }
      }

      v18 = (v32 + 16 * v33);
      if (!(_X12 + v33))
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v16[4] < 2uLL)
      {
        goto LABEL_34;
      }

      v19 = v16[5];
      v18 = v16 + 5;
      if (v19 != &gtl::FastTypeId<operations_research::sat::FeasibilityPump>(void)::d || !&absl::lts_20240722::container_internal::kSooControl)
      {
        goto LABEL_34;
      }
    }

    if (v18[1])
    {
      *(v1 + 280) = 0;
      *(v1 + 296) = 1;
    }
  }

LABEL_34:
  absl::lts_20240722::Mutex::Unlock((v1 + 272));
  if (v3)
  {
    return;
  }

  v34 = operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(*(v1 + 264));
  v35 = *(v34 + 112);
  v36 = *(v1 + 264);
  v37 = v36[3];
  if (v37 > 1)
  {
    v38 = 0;
    _X12 = v36[5];
    __asm { PRFM            #4, [X12] }

    v41 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::FeasibilityPump>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::FeasibilityPump>(void)::d));
    v42 = vdup_n_s8(v41 & 0x7F);
    v43 = ((v41 >> 7) ^ (_X12 >> 12)) & v37;
    v44 = *(_X12 + v43);
    v45 = vceq_s8(v44, v42);
    if (!v45)
    {
      goto LABEL_42;
    }

LABEL_39:
    v46 = v36[6];
    while (1)
    {
      v47 = (v43 + (__clz(__rbit64(v45)) >> 3)) & v37;
      if (*(v46 + 16 * v47) == &gtl::FastTypeId<operations_research::sat::FeasibilityPump>(void)::d)
      {
        break;
      }

      v45 &= ((v45 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v45)
      {
LABEL_42:
        while (!*&vceq_s8(v44, 0x8080808080808080))
        {
          v38 += 8;
          v43 = (v38 + v43) & v37;
          v44 = *(_X12 + v43);
          v45 = vceq_s8(v44, v42);
          if (v45)
          {
            goto LABEL_39;
          }
        }

        goto LABEL_51;
      }
    }

    v48 = (v46 + 16 * v47);
    if (!(_X12 + v47))
    {
      goto LABEL_51;
    }
  }

  else
  {
    if (v36[4] < 2uLL)
    {
      goto LABEL_51;
    }

    v49 = v36[5];
    v48 = v36 + 5;
    v50 = &absl::lts_20240722::container_internal::kSooControl;
    if (v49 != &gtl::FastTypeId<operations_research::sat::FeasibilityPump>(void)::d)
    {
      v50 = 0;
    }

    if (!v50)
    {
LABEL_51:
      if ((operations_research::sat::FeasibilityPump::Solve(0) & 1) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_57;
    }
  }

  if ((operations_research::sat::FeasibilityPump::Solve(v48[1]) & 1) == 0)
  {
LABEL_52:
    v51 = *(*(v1 + 256) + 40);
    if (*(v1 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(__p, *(v1 + 8), *(v1 + 16));
    }

    else
    {
      v52 = *(v1 + 8);
      __p[0].__r_.__value_.__r.__words[2] = *(v1 + 24);
      *&__p[0].__r_.__value_.__l.__data_ = v52;
    }

    operations_research::sat::SharedResponseManager::NotifyThatImprovingProblemIsInfeasible(v51, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }
  }

LABEL_57:
  absl::lts_20240722::Mutex::Lock((v1 + 272));
  *(v1 + 288) = *(v1 + 288) + *(v34 + 112) - v35;
  absl::lts_20240722::Mutex::Unlock((v1 + 272));
  {
    v53 = *(*(v1 + 256) + 16);
    absl::lts_20240722::Mutex::Lock(v53);
    atomic_store(1u, *(v53 + 24));
    absl::lts_20240722::Mutex::Unlock(v53);
  }

  else
  {
    absl::lts_20240722::Mutex::Lock((v1 + 272));
    *(v1 + 296) = 1;
    absl::lts_20240722::Mutex::Unlock((v1 + 272));
  }
}

void sub_23CB0DE58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  operations_research::sat::LinearRelaxation::~LinearRelaxation(&__p);
  absl::lts_20240722::Mutex::Unlock((v14 + 272));
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<operations_research::sat::anonymous namespace::FeasibilityPumpSolver::GenerateTask(long long)::{lambda(void)#1},std::allocator<operations_research::sat::anonymous namespace::FeasibilityPumpSolver::GenerateTask(long long)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat12_GLOBAL__N_121FeasibilityPumpSolver12GenerateTaskExEUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat12_GLOBAL__N_121FeasibilityPumpSolver12GenerateTaskExEUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat12_GLOBAL__N_121FeasibilityPumpSolver12GenerateTaskExEUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat12_GLOBAL__N_121FeasibilityPumpSolver12GenerateTaskExEUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void operations_research::sat::anonymous namespace::LoadBaseModel(operations_research::sat::_anonymous_namespace_ *this, const operations_research::sat::CpModelProto *a2, operations_research::sat::Model *a3)
{
  v94 = *MEMORY[0x277D85DE8];
  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedResponseManager>(a2);
  if (!v5)
  {
  }

  v6 = v5;
  v7 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
  *(operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a2) + 32) = 0;
  v8 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  v9 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2);
  v11 = v9;
  if (*(v9 + 572) <= 1 && (*(v9 + 248) != 1 || *(this + 20)))
  {
    v12 = *(v9 + 321);
  }

  else
  {
    v12 = 1;
  }

  operations_research::sat::LoadVariables(this, (v12 & 1), a2, v10);
  operations_research::sat::DetectOptionalVariables(this, a2, v13);
  if ((*(v11 + 315) & 1) == 0 && *(v11 + 756) >= 2 && (*(v11 + 284) & 1) == 0 && !*(v11 + 572))
  {
    operations_research::sat::LoadBooleanSymmetries(this, a2, v14);
  }

  operations_research::sat::ExtractEncoding(this, a2, v14);
  operations_research::sat::PropagateEncodingFromEquivalenceRelations(this, a2, v15);
  if (*(v7 + 528) == 1)
  {
    *(v7 + 528) = 1;
    v17 = *(a2 + 23);
    if (v17 >= 0)
    {
      v18 = a2;
    }

    else
    {
      v18 = *a2;
    }

    if (v17 < 0)
    {
      v17 = *(a2 + 1);
    }

    goto LABEL_25;
  }

  operations_research::sat::AddFullEncodingFromSearchBranching(this, a2, v16);
  if (*(v7 + 528) == 1)
  {
    *(v7 + 528) = 1;
    v17 = *(a2 + 23);
    if (v17 >= 0)
    {
      v18 = a2;
    }

    else
    {
      v18 = *a2;
    }

    if (v17 < 0)
    {
      v17 = *(a2 + 1);
    }

LABEL_25:
    v91 = v18;
    v92 = v17;
    v89 = " [loading]";
    v90 = 10;
    absl::lts_20240722::StrCat(&v91, &v89, &v86);
    operations_research::sat::SharedResponseManager::NotifyThatImprovingProblemIsInfeasible(v6, &v86);
    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
    {
      v19 = v86.__r_.__value_.__r.__words[0];
      goto LABEL_102;
    }

    goto LABEL_103;
  }

  v20 = operations_research::sat::Model::GetOrCreate<operations_research::sat::PrecedenceRelations>(a2);
  v21 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
  operations_research::sat::PrecedenceRelations::Resize(v20, (*(v21 + 48) - *(v21 + 40)) >> 3);
  *&v86.__r_.__value_.__l.__data_ = xmmword_23CE306D0;
  v24 = *(this + 6);
  v23 = (this + 48);
  v25 = (v24 + 7);
  if (v24)
  {
    v26 = v25;
  }

  else
  {
    v26 = v23;
  }

  v27 = *(v23 + 2);
  if (!v27)
  {
    goto LABEL_51;
  }

  v28 = 0;
  v29 = &v26[v27];
  do
  {
    v35 = *v26;
    v36 = v8[15];
    if (v36 > 1)
    {
      v33 = 0;
      v37 = v35 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v35) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v35)));
      v38 = ((v37 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v37);
      v39 = vdup_n_s8(v38 & 0x7F);
      _X10 = v8[17];
      __asm { PRFM            #4, [X10] }

      for (i = (v38 >> 7) ^ (_X10 >> 12); ; i = v33 + v30)
      {
        v30 = i & v36;
        v31 = *(_X10 + v30);
        v32 = vceq_s8(v31, v39);
        if (v32)
        {
          break;
        }

LABEL_35:
        if (vceq_s8(v31, 0x8080808080808080))
        {
          goto LABEL_40;
        }

        v33 += 8;
      }

      while (*(v8[18] + 8 * ((v30 + (__clz(__rbit64(v32)) >> 3)) & v36)) != v35)
      {
        v32 &= ((v32 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v32)
        {
          goto LABEL_35;
        }
      }

LABEL_44:
      ++v28;
      goto LABEL_45;
    }

    if (v8[16] >= 2uLL && v8[17] == v35)
    {
      goto LABEL_44;
    }

LABEL_40:
    if (operations_research::sat::LoadConstraint(*v26, a2, v22))
    {
      if (*(v7 + 528) == 1)
      {
        if (dword_2810BFD28 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&_MergedGlobals_9, dword_2810BFD28))
        {
          absl::lts_20240722::log_internal::LogMessage::LogMessage(v85, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 1556);
          v79 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v85, 2);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v79, "UNSAT during extraction (after adding '", 0x27uLL);
          v80 = operations_research::sat::ConstraintCaseName(*(v35 + 15));
          v82 = absl::lts_20240722::log_internal::LogMessage::operator<<(v79, v80, v81);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v82, "'). ", 4uLL);
          google::protobuf::Message::DebugString(v84);
        }

        *(v7 + 528) = 1;
        v52 = *(a2 + 23);
        if (v52 >= 0)
        {
          v53 = a2;
        }

        else
        {
          v53 = *a2;
        }

        if (v52 < 0)
        {
          v52 = *(a2 + 1);
        }

        goto LABEL_98;
      }
    }

    else
    {
      LODWORD(v89) = *(v35 + 15);
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::ConstraintProto::ConstraintCase>,absl::lts_20240722::hash_internal::Hash<operations_research::sat::ConstraintProto::ConstraintCase>,std::equal_to<operations_research::sat::ConstraintProto::ConstraintCase>,std::allocator<operations_research::sat::ConstraintProto::ConstraintCase>>::find_or_prepare_insert<operations_research::sat::ConstraintProto::ConstraintCase>(&v86, &v89, &v91);
      if (v93 == 1)
      {
        *v92 = v89;
      }
    }

LABEL_45:
    ++v26;
  }

  while (v26 != v29);
  if (v28 >= 1 && dword_2810BFD40 >= 3 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&off_2810BFD38, dword_2810BFD40))
  {
    v76 = absl::lts_20240722::log_internal::LogMessage::LogMessage(&v91, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 1563);
    v77 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v76, 3);
    LODWORD(v89) = v28;
    v78 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v77, &v89);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v78, " constraints were skipped.", 0x1AuLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v91);
  }

LABEL_51:
  if (v86.__r_.__value_.__l.__size_ >= 2)
  {
    if (dword_2810BFD58 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFD50, dword_2810BFD58))
    {
      v74 = absl::lts_20240722::log_internal::LogMessage::LogMessage(&v91, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 1566);
      v75 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v74, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v75, "There is unsupported constraints types in this model: ", 0x36uLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v91);
    }

    if (v86.__r_.__value_.__l.__size_ < 2)
    {
      v55 = 0;
    }

    else
    {
      if (v86.__r_.__value_.__r.__words[0] >= 2)
      {
        v51 = v86.__r_.__value_.__r.__words[2];
        v50 = v87;
        if (*v86.__r_.__value_.__r.__words[2] <= -2)
        {
          do
          {
            v54 = __clz(__rbit64((*v51 | ~(*v51 >> 7)) & 0x101010101010101)) >> 3;
            v51 = (v51 + v54);
            v50 += v54;
          }

          while (*v51 < -1);
        }
      }

      else
      {
        v50 = &v86.__r_.__value_.__r.__words[2];
        v51 = &absl::lts_20240722::container_internal::kSooControl;
      }

      v55 = 0;
      do
      {
        v56 = operations_research::sat::ConstraintCaseName(*v50);
        v58 = v55;
        v59 = v55 >> 4;
        if (((v55 >> 4) + 1) >> 60)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if (v55 >> 4 != -1)
        {
          if (!(((v55 >> 4) + 1) >> 60))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v60 = (16 * v59);
        *v60 = v56;
        v60[1] = v57;
        v55 = 16 * v59 + 16;
        memcpy(0, 0, v58);
        v62 = *(v51 + 1);
        v51 = (v51 + 1);
        LOBYTE(v61) = v62;
        ++v50;
        if (v62 <= -2)
        {
          do
          {
            v63 = __clz(__rbit64((*v51 | ~(*v51 >> 7)) & 0x101010101010101)) >> 3;
            v51 = (v51 + v63);
            v50 += v63;
            v61 = *v51;
          }

          while (v61 < -1);
        }
      }

      while (v61 != 255);
    }

    v64 = 126 - 2 * __clz(v55 >> 4);
    if (v55)
    {
      v65 = v64;
    }

    else
    {
      v65 = 0;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string_view *,false>(0, v55, &v91, v65, 1);
    if (v55)
    {
      for (j = 0; j != v55; j += 16)
      {
        v67 = *j;
        v68 = *(j + 8);
        if (dword_2810BFD70 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFD68, dword_2810BFD70))
        {
          v83 = v7;
          v69 = absl::lts_20240722::log_internal::LogMessage::LogMessage(&v91, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 1573);
          v70 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v69, 1);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v70, " - ", 3uLL);
          absl::lts_20240722::log_internal::LogMessage::operator<<(v70, v67, v68);
          absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v91);
          v7 = v83;
        }
      }
    }

    *(v7 + 528) = 1;
    v71 = *(a2 + 23);
    if (v71 >= 0)
    {
      v72 = a2;
    }

    else
    {
      v72 = *a2;
    }

    if (v71 < 0)
    {
      v71 = *(a2 + 1);
    }

    v91 = v72;
    v92 = v71;
    v89 = " [loading]";
    v90 = 10;
    absl::lts_20240722::StrCat(&v91, &v89, &__p);
    operations_research::sat::SharedResponseManager::NotifyThatImprovingProblemIsInfeasible(v6, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v46 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a2);
    operations_research::sat::IntegerEncoder::AddAllImplicationsBetweenAssociatedLiterals(v46);
    if (operations_research::sat::SatSolver::FinishPropagation(v7))
    {
      v47 = operations_research::sat::Model::GetOrCreate<operations_research::sat::ProductDetector>(a2);
      v48 = operations_research::sat::Model::GetOrCreate<operations_research::sat::BinaryImplicationGraph>(a2);
      operations_research::sat::ProductDetector::ProcessImplicationGraph(v47, v48);
      v49 = operations_research::sat::Model::GetOrCreate<operations_research::sat::PrecedenceRelations>(a2);
      operations_research::sat::PrecedenceRelations::Build(v49);
    }

    else
    {
      *(v7 + 528) = 1;
      v52 = *(a2 + 23);
      if (v52 >= 0)
      {
        v53 = a2;
      }

      else
      {
        v53 = *a2;
      }

      if (v52 < 0)
      {
        v52 = *(a2 + 1);
      }

LABEL_98:
      v91 = v53;
      v92 = v52;
      v89 = " [loading]";
      v90 = 10;
      absl::lts_20240722::StrCat(&v91, &v89, &__p);
      operations_research::sat::SharedResponseManager::NotifyThatImprovingProblemIsInfeasible(v6, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  if (v86.__r_.__value_.__r.__words[0] >= 2)
  {
    v19 = (v86.__r_.__value_.__r.__words[2] - (v86.__r_.__value_.__s.__data_[8] & 1) - 8);
LABEL_102:
    operator delete(v19);
  }

LABEL_103:
  v73 = *MEMORY[0x277D85DE8];
}

void sub_23CB0E8D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a18);
  if (a20 >= 2)
  {
    operator delete((a22 - (a21 & 1) - 8));
  }

  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::FeasibilityPump>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::FeasibilityPump>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::FeasibilityPump>(void)::d));
    v9 = vdup_n_s8(v8 & 0x7F);
    v10 = ((v8 >> 7) ^ (_X11 >> 12)) & v1;
    v11 = *(_X11 + v10);
    v12 = vceq_s8(v11, v9);
    if (!v12)
    {
      goto LABEL_8;
    }

LABEL_5:
    v13 = a1[6];
    while (1)
    {
      v14 = (v10 + (__clz(__rbit64(v12)) >> 3)) & v1;
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::FeasibilityPump>(void)::d)
      {
        break;
      }

      v12 &= ((v12 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v12)
      {
LABEL_8:
        while (!*&vceq_s8(v11, 0x8080808080808080))
        {
          v2 += 8;
          v10 = (v2 + v10) & v1;
          v11 = *(_X11 + v10);
          v12 = vceq_s8(v11, v9);
          if (v12)
          {
            goto LABEL_5;
          }
        }

LABEL_20:
        operator new();
      }
    }

    v15 = (v13 + 16 * v14);
    if (!(_X11 + v14))
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (a1[4] < 2uLL)
    {
      goto LABEL_20;
    }

    v17 = a1[5];
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::FeasibilityPump>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::FeasibilityPump>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
    if (_ZF)
    {
      v15 = a1 + 5;
    }

    if (!v19)
    {
      goto LABEL_20;
    }
  }

  return v15[1];
}

void operations_research::sat::PrecedenceRelations::Resize(operations_research::sat::PrecedenceRelations *this, int a2)
{
  if (*(this + 10) < a2)
  {
    *(this + 11) = a2;
    v2 = *(this + 8);
    if (a2 > ((*(this + 10) - v2) >> 2))
    {
      if ((a2 & 0x80000000) == 0)
      {
        v3 = *(this + 9) - v2;
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }
  }

  if (*(this + 10) <= a2 - 1)
  {
    *(this + 10) = a2;
    v4 = *(this + 8);
    v5 = *(this + 9);
    __x = 0;
    v6 = (v5 - v4) >> 2;
    if (a2 <= v6)
    {
      if (a2 < v6)
      {
        *(this + 9) = v4 + 4 * a2;
      }
    }

    else
    {
      std::vector<int>::__append((this + 64), a2 - v6, &__x);
    }
  }
}

int64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::ConstraintProto::ConstraintCase>,absl::lts_20240722::hash_internal::Hash<operations_research::sat::ConstraintProto::ConstraintCase>,std::equal_to<operations_research::sat::ConstraintProto::ConstraintCase>,std::allocator<operations_research::sat::ConstraintProto::ConstraintCase>>::find_or_prepare_insert<operations_research::sat::ConstraintProto::ConstraintCase>@<X0>(int64_t result@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if (*result > 1uLL)
  {
    v6 = 0;
    _X10 = *(result + 16);
    __asm { PRFM            #4, [X10] }

    v13 = *a2;
    v14 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v13) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v13));
    v15 = vdup_n_s8(v14 & 0x7F);
    v16 = ((v14 >> 7) ^ (_X10 >> 12)) & v3;
    v17 = *(_X10 + v16);
    v18 = vceq_s8(v17, v15);
    if (!v18)
    {
      goto LABEL_8;
    }

LABEL_5:
    v19 = *(result + 24);
    do
    {
      v20 = (v16 + (__clz(__rbit64(v18)) >> 3)) & v3;
      if (*(v19 + 4 * v20) == v13)
      {
        *a3 = _X10 + v20;
        *(a3 + 8) = v19 + 4 * v20;
        *(a3 + 16) = 0;
        return result;
      }

      v18 &= ((v18 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v18);
LABEL_8:
    while (1)
    {
      v21 = vceq_s8(v17, 0x8080808080808080);
      if (v21)
      {
        break;
      }

      v6 += 8;
      v16 = (v6 + v16) & v3;
      v17 = *(_X10 + v16);
      v18 = vceq_s8(v17, v15);
      if (v18)
      {
        goto LABEL_5;
      }
    }

    v22 = result;
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v14, (v16 + (__clz(__rbit64(v21)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::ConstraintProto::ConstraintCase>,absl::lts_20240722::hash_internal::Hash<operations_research::sat::ConstraintProto::ConstraintCase>,std::equal_to<operations_research::sat::ConstraintProto::ConstraintCase>,std::allocator<operations_research::sat::ConstraintProto::ConstraintCase>>::GetPolicyFunctions(void)::value);
    v24 = *(v22 + 24) + 4 * result;
    *a3 = *(v22 + 16) + result;
    *(a3 + 8) = v24;
    *(a3 + 16) = 1;
  }

  else
  {
    if (*(result + 8) > 1uLL)
    {
      v4 = (result + 16);
      if (*(result + 16) != *a2)
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::ConstraintProto::ConstraintCase>,absl::lts_20240722::hash_internal::Hash<operations_research::sat::ConstraintProto::ConstraintCase>,std::equal_to<operations_research::sat::ConstraintProto::ConstraintCase>,std::allocator<operations_research::sat::ConstraintProto::ConstraintCase>>::resize_impl(result, 3);
      }

      v5 = 0;
    }

    else
    {
      *(result + 8) = 2;
      v4 = (result + 16);
      v5 = 1;
    }

    *a3 = &absl::lts_20240722::container_internal::kSooControl;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::ConstraintProto::ConstraintCase>,absl::lts_20240722::hash_internal::Hash<operations_research::sat::ConstraintProto::ConstraintCase>,std::equal_to<operations_research::sat::ConstraintProto::ConstraintCase>,std::allocator<operations_research::sat::ConstraintProto::ConstraintCase>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *a1 < 2uLL && v3 > 1;
  if (v5)
  {
    v6 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(a1 + 16);
  }

  v8 = *a1;
  v9 = v3 & 1;
  v10 = v2 < 2;
  v11 = v5;
  v7 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,4ul,true,true,4ul>(&v7, a1);
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string_view *,0>(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v6 = *a2;
  v7 = *(a2 + 1);
  v8 = *(a1 + 1);
  if (v8 >= v7)
  {
    v9 = *(a2 + 1);
  }

  else
  {
    v9 = *(a1 + 1);
  }

  v10 = memcmp(v6, *a1, v9);
  if (!v10)
  {
    if (v7 < v8)
    {
      goto LABEL_6;
    }

LABEL_13:
    v15 = *(a3 + 1);
    if (v7 >= v15)
    {
      v16 = *(a3 + 1);
    }

    else
    {
      v16 = v7;
    }

    v17 = memcmp(*a3, v6, v16);
    if (v17)
    {
      if (v17 < 0)
      {
        goto LABEL_18;
      }
    }

    else if (v15 < v7)
    {
LABEL_18:
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      v19 = *(a2 + 1);
      v20 = *(a1 + 1);
      if (v20 >= v19)
      {
        v21 = *(a2 + 1);
      }

      else
      {
        v21 = *(a1 + 1);
      }

      v22 = memcmp(*a2, *a1, v21);
      if (v22)
      {
        if ((v22 & 0x80000000) == 0)
        {
          return 1;
        }
      }

      else if (v19 >= v20)
      {
        return 1;
      }

      v29 = *a1;
      *a1 = *a2;
      *a2 = v29;
      return 1;
    }

    return 0;
  }

  if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  v11 = *(a3 + 1);
  if (v7 >= v11)
  {
    v12 = *(a3 + 1);
  }

  else
  {
    v12 = v7;
  }

  v13 = memcmp(*a3, v6, v12);
  if (v13)
  {
    if (v13 < 0)
    {
LABEL_11:
      v14 = *a1;
      *a1 = *a3;
LABEL_37:
      *a3 = v14;
      return 1;
    }
  }

  else if (v11 < v7)
  {
    goto LABEL_11;
  }

  v23 = *a1;
  *a1 = *a2;
  *a2 = v23;
  v24 = *(a3 + 1);
  v25 = *(a2 + 1);
  if (v25 >= v24)
  {
    v26 = *(a3 + 1);
  }

  else
  {
    v26 = *(a2 + 1);
  }

  v27 = memcmp(*a3, *a2, v26);
  if (v27)
  {
    if ((v27 & 0x80000000) == 0)
    {
      return 1;
    }

    goto LABEL_36;
  }

  if (v24 < v25)
  {
LABEL_36:
    v14 = *a2;
    *a2 = *a3;
    goto LABEL_37;
  }

  return 1;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string_view *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string_view *,0>(a1, a2, a3);
  v8 = *(a4 + 8);
  v9 = *(a3 + 8);
  if (v9 >= v8)
  {
    v10 = *(a4 + 8);
  }

  else
  {
    v10 = *(a3 + 8);
  }

  v11 = memcmp(*a4, *a3, v10);
  if (v11)
  {
    if ((v11 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v8 >= v9)
  {
    return result;
  }

  v13 = *a3;
  *a3 = *a4;
  *a4 = v13;
  v14 = *(a3 + 8);
  v15 = *(a2 + 8);
  if (v15 >= v14)
  {
    v16 = *(a3 + 8);
  }

  else
  {
    v16 = *(a2 + 8);
  }

  v17 = memcmp(*a3, *a2, v16);
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v14 >= v15)
  {
    return result;
  }

  v18 = *a2;
  *a2 = *a3;
  *a3 = v18;
  v19 = *(a2 + 8);
  v20 = *(a1 + 8);
  if (v20 >= v19)
  {
    v21 = *(a2 + 8);
  }

  else
  {
    v21 = *(a1 + 8);
  }

  v22 = memcmp(*a2, *a1, v21);
  if (v22)
  {
    if (v22 < 0)
    {
      goto LABEL_22;
    }
  }

  else if (v19 < v20)
  {
LABEL_22:
    result = *a1;
    *a1 = *a2;
    *a2 = result;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string_view *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string_view *,0>(a1, a2, a3, a4);
  v10 = *(a5 + 8);
  v11 = *(a4 + 8);
  if (v11 >= v10)
  {
    v12 = *(a5 + 8);
  }

  else
  {
    v12 = *(a4 + 8);
  }

  v13 = memcmp(*a5, *a4, v12);
  if (v13)
  {
    if ((v13 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v10 >= v11)
  {
    return result;
  }

  v15 = *a4;
  *a4 = *a5;
  *a5 = v15;
  v16 = *(a4 + 8);
  v17 = *(a3 + 8);
  if (v17 >= v16)
  {
    v18 = *(a4 + 8);
  }

  else
  {
    v18 = *(a3 + 8);
  }

  v19 = memcmp(*a4, *a3, v18);
  if (v19)
  {
    if ((v19 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v16 >= v17)
  {
    return result;
  }

  v20 = *a3;
  *a3 = *a4;
  *a4 = v20;
  v21 = *(a3 + 8);
  v22 = *(a2 + 8);
  if (v22 >= v21)
  {
    v23 = *(a3 + 8);
  }

  else
  {
    v23 = *(a2 + 8);
  }

  v24 = memcmp(*a3, *a2, v23);
  if (v24)
  {
    if ((v24 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v21 >= v22)
  {
    return result;
  }

  v25 = *a2;
  *a2 = *a3;
  *a3 = v25;
  v26 = *(a2 + 8);
  v27 = *(a1 + 8);
  if (v27 >= v26)
  {
    v28 = *(a2 + 8);
  }

  else
  {
    v28 = *(a1 + 8);
  }

  v29 = memcmp(*a2, *a1, v28);
  if (v29)
  {
    if ((v29 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v26 >= v27)
  {
    return result;
  }

  result = *a1;
  *a1 = *a2;
  *a2 = result;
  return result;
}

_OWORD *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::string_view *,std::__less<void,void> &>(uint64_t a1, _OWORD *a2)
{
  v2 = a2;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a2 - 2);
  v7 = *(v2 - 1);
  if (v7 >= v5)
  {
    v8 = *(a1 + 8);
  }

  else
  {
    v8 = *(v2 - 1);
  }

  v9 = memcmp(*a1, v6, v8);
  if (v9)
  {
    if (v9 < 0)
    {
LABEL_6:
      v10 = (a1 + 16);
      while (1)
      {
        v12 = v10;
        v13 = *(v10 + 1);
        if (v13 >= v5)
        {
          v14 = v5;
        }

        else
        {
          v14 = *(v10 + 1);
        }

        v11 = memcmp(v4, *v10, v14);
        if (!v11)
        {
          if (v5 == v13)
          {
            v11 = 0;
          }

          else
          {
            if (v5 < v13)
            {
              goto LABEL_28;
            }

            v11 = 1;
          }
        }

        v10 = v12 + 1;
        if (v11 < 0)
        {
          goto LABEL_28;
        }
      }
    }
  }

  else if (v5 < v7)
  {
    goto LABEL_6;
  }

  v15 = (a1 + 16);
  do
  {
    v12 = v15;
    if (v15 >= v2)
    {
      break;
    }

    v17 = *(v15 + 1);
    if (v17 >= v5)
    {
      v18 = v5;
    }

    else
    {
      v18 = *(v15 + 1);
    }

    v16 = memcmp(v4, *v15, v18);
    if (!v16)
    {
      if (v5 == v17)
      {
        v16 = 0;
      }

      else
      {
        if (v5 < v17)
        {
          break;
        }

        v16 = 1;
      }
    }

    v15 = v12 + 1;
  }

  while ((v16 & 0x80000000) == 0);
LABEL_28:
  if (v12 < v2)
  {
    v19 = v2 - 1;
    do
    {
      v2 = v19;
      v21 = *(v19 + 1);
      if (v21 >= v5)
      {
        v22 = v5;
      }

      else
      {
        v22 = *(v19 + 1);
      }

      v20 = memcmp(v4, *v19, v22);
      if (!v20)
      {
        if (v5 >= v21)
        {
          break;
        }

        v20 = -1;
      }

      v19 = v2 - 1;
    }

    while (v20 < 0);
  }

LABEL_56:
  if (v12 < v2)
  {
    v32 = *v12;
    *v12 = *v2;
    *v2 = v32;
    v23 = v12 + 1;
    while (1)
    {
      v12 = v23;
      v25 = *(v23 + 1);
      if (v25 >= v5)
      {
        v26 = v5;
      }

      else
      {
        v26 = *(v23 + 1);
      }

      v24 = memcmp(v4, *v23, v26);
      if (!v24)
      {
        if (v5 == v25)
        {
          v24 = 0;
        }

        else
        {
          if (v5 < v25)
          {
LABEL_48:
            v27 = v2 - 1;
            while (1)
            {
              v2 = v27;
              v29 = *(v27 + 1);
              if (v29 >= v5)
              {
                v30 = v5;
              }

              else
              {
                v30 = *(v27 + 1);
              }

              v28 = memcmp(v4, *v27, v30);
              if (!v28)
              {
                if (v5 >= v29)
                {
                  goto LABEL_56;
                }

                v28 = -1;
              }

              v27 = v2 - 1;
              if ((v28 & 0x80000000) == 0)
              {
                goto LABEL_56;
              }
            }
          }

          v24 = 1;
        }
      }

      v23 = v12 + 1;
      if (v24 < 0)
      {
        goto LABEL_48;
      }
    }
  }

  if (v12 - 1 != a1)
  {
    *a1 = *(v12 - 1);
  }

  *(v12 - 2) = v4;
  *(v12 - 1) = v5;
  return v12;
}

_OWORD *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::string_view *,std::__less<void,void> &>(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = *a1;
  v6 = *(a1 + 8);
  do
  {
    v8 = v4;
    v9 = a1 + v4;
    v10 = *(v9 + 24);
    if (v6 >= v10)
    {
      v11 = *(v9 + 24);
    }

    else
    {
      v11 = v6;
    }

    v7 = memcmp(*(v9 + 16), v5, v11);
    if (v7)
    {
      goto LABEL_3;
    }

    if (v10 >= v6)
    {
      break;
    }

    v7 = -1;
LABEL_3:
    v4 = v8 + 16;
  }

  while (v7 < 0);
  v12 = a1 + v8 + 16;
  v13 = a2 - 16;
  if (v8)
  {
    while (1)
    {
      v15 = v13;
      v16 = *(v13 + 8);
      if (v6 >= v16)
      {
        v17 = *(v13 + 8);
      }

      else
      {
        v17 = v6;
      }

      v14 = memcmp(*v13, v5, v17);
      if (!v14)
      {
        if (v16 == v6)
        {
          v14 = 0;
        }

        else
        {
          if (v16 < v6)
          {
            goto LABEL_31;
          }

          v14 = 1;
        }
      }

      v13 = v15 - 16;
      if (v14 < 0)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v15 = v13;
    v19 = v13 + 16;
    if (v12 >= v19)
    {
      break;
    }

    v20 = *(v15 + 8);
    if (v6 >= v20)
    {
      v21 = *(v15 + 8);
    }

    else
    {
      v21 = v6;
    }

    v18 = memcmp(*v15, v5, v21);
    if (!v18)
    {
      if (v20 == v6)
      {
        v18 = 0;
      }

      else
      {
        if (v20 < v6)
        {
          goto LABEL_31;
        }

        v18 = 1;
      }
    }

    v13 = v15 - 16;
    if (v18 < 0)
    {
      goto LABEL_31;
    }
  }

  v15 = v19;
LABEL_31:
  v22 = v12;
  if (v12 < v15)
  {
    v23 = v15;
    do
    {
      v33 = *v22;
      *v22 = *v23;
      *v23 = v33;
      v24 = v22 + 1;
      do
      {
        v22 = v24;
        v26 = *(v24 + 1);
        if (v6 >= v26)
        {
          v27 = *(v24 + 1);
        }

        else
        {
          v27 = v6;
        }

        v25 = memcmp(*v24, v5, v27);
        if (v25)
        {
          goto LABEL_36;
        }

        if (v26 >= v6)
        {
          break;
        }

        v25 = -1;
LABEL_36:
        v24 = v22 + 1;
      }

      while (v25 < 0);
      v28 = v23 - 1;
      while (1)
      {
        v23 = v28;
        v30 = *(v28 + 1);
        if (v6 >= v30)
        {
          v31 = *(v28 + 1);
        }

        else
        {
          v31 = v6;
        }

        v29 = memcmp(*v28, v5, v31);
        if (v29)
        {
          goto LABEL_44;
        }

        if (v30 != v6)
        {
          break;
        }

        v29 = 0;
LABEL_44:
        v28 = v23 - 1;
        if (v29 < 0)
        {
          goto LABEL_33;
        }
      }

      if (v30 >= v6)
      {
        v29 = 1;
        goto LABEL_44;
      }

LABEL_33:
      ;
    }

    while (v22 < v23);
  }

  result = v22 - 1;
  if (v22 - 1 != a1)
  {
    *a1 = *result;
  }

  *(v22 - 2) = v5;
  *(v22 - 1) = v6;
  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string_view *>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string_view *,0>(a1, (a1 + 16), (a2 - 16));
        v5 = 1;
        return v5 & 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string_view *,0>(a1, a1 + 16, a1 + 32, a2 - 16);
        v5 = 1;
        return v5 & 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string_view *,0>(a1, a1 + 16, a1 + 32, a1 + 48, a2 - 16);
        v5 = 1;
        return v5 & 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
LABEL_3:
      v5 = 1;
      return v5 & 1;
    }

    if (v4 == 2)
    {
      v7 = *(a2 - 8);
      v6 = (a2 - 16);
      v8 = *(a1 + 8);
      if (v8 >= v7)
      {
        v9 = *(a2 - 8);
      }

      else
      {
        v9 = *(a1 + 8);
      }

      v10 = memcmp(*(a2 - 16), *a1, v9);
      if (v10)
      {
        if ((v10 & 0x80000000) == 0)
        {
          goto LABEL_3;
        }
      }

      else if (v7 >= v8)
      {
        goto LABEL_3;
      }

      v28 = *a1;
      *a1 = *v6;
      *v6 = v28;
      v5 = 1;
      return v5 & 1;
    }
  }

  v11 = (a1 + 32);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string_view *,0>(a1, (a1 + 16), (a1 + 32));
  v13 = a1 + 48;
  if (a1 + 48 == a2)
  {
LABEL_39:
    v27 = 1;
    goto LABEL_43;
  }

  v14 = 0;
  v15 = 0;
  while (2)
  {
    v17 = *v13;
    v18 = *(v13 + 8);
    v19 = v11[1];
    if (v19 >= v18)
    {
      v20 = *(v13 + 8);
    }

    else
    {
      v20 = v11[1];
    }

    v21 = memcmp(*v13, *v11, v20);
    if (v21)
    {
      if ((v21 & 0x80000000) == 0)
      {
        goto LABEL_20;
      }
    }

    else if (v18 >= v19)
    {
      goto LABEL_20;
    }

    v22 = v14;
    while (1)
    {
      v23 = a1 + v22;
      *(a1 + v22 + 48) = *(a1 + v22 + 32);
      if (v22 == -32)
      {
        v16 = a1;
        goto LABEL_19;
      }

      v16 = v11;
      v24 = *(v23 + 24);
      v25 = v24 >= v18 ? v18 : *(v23 + 24);
      v26 = memcmp(v17, *(v23 + 16), v25);
      if (!v26)
      {
        break;
      }

LABEL_29:
      v11 = v16 - 2;
      v22 -= 16;
      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_19;
      }
    }

    if (v18 < v24)
    {
      v26 = -1;
      goto LABEL_29;
    }

    v16 = (a1 + v22 + 32);
LABEL_19:
    *v16 = v17;
    v16[1] = v18;
    if (++v15 != 8)
    {
LABEL_20:
      v11 = v13;
      v14 += 16;
      v13 += 16;
      if (v13 == a2)
      {
        goto LABEL_39;
      }

      continue;
    }

    break;
  }

  v27 = 0;
  v12 = v13 + 16 == a2;
LABEL_43:
  v5 = v27 | v12;
  return v5 & 1;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string_view *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 4)
    {
      v8 = a3;
      v9 = (a4 - result) >> 3;
      v10 = v9 + 1;
      v11 = result + 16 * (v9 + 1);
      v12 = v9 + 2;
      if (v9 + 2 < a3)
      {
        v13 = v4 >> 1;
        v14 = *(v11 + 8);
        v15 = *(v11 + 24);
        if (v15 >= v14)
        {
          v16 = *(v11 + 8);
        }

        else
        {
          v16 = *(v11 + 24);
        }

        v17 = memcmp(*v11, *(v11 + 16), v16);
        if (!v17)
        {
          v34 = v14 >= v15;
          v7 = v13;
          if (v34)
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }

        v7 = v13;
        if (v17 < 0)
        {
LABEL_9:
          v11 += 16;
          v10 = v12;
        }
      }

LABEL_10:
      v18 = *(v11 + 8);
      v19 = *v5;
      v20 = *(v5 + 8);
      if (v20 >= v18)
      {
        v21 = *(v11 + 8);
      }

      else
      {
        v21 = *(v5 + 8);
      }

      result = memcmp(*v11, *v5, v21);
      if (result)
      {
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      else if (v18 < v20)
      {
        return result;
      }

      v35 = v20;
      v36 = v19;
      while (1)
      {
        v24 = v5;
        v5 = v11;
        *v24 = *v11;
        if (v7 < v10)
        {
LABEL_39:
          *v5 = v19;
          *(v5 + 8) = v20;
          return result;
        }

        v25 = 2 * v10;
        v10 = (2 * v10) | 1;
        v11 = v6 + 16 * v10;
        v26 = v25 + 2;
        if (v25 + 2 < v8)
        {
          v27 = v8;
          v28 = v6;
          v29 = v7;
          v30 = *(v11 + 8);
          v31 = *(v11 + 24);
          if (v31 >= v30)
          {
            v32 = *(v11 + 8);
          }

          else
          {
            v32 = *(v11 + 24);
          }

          v33 = memcmp(*v11, *(v11 + 16), v32);
          if (v33)
          {
            v7 = v29;
            v6 = v28;
            v8 = v27;
            v20 = v35;
            v19 = v36;
            if (v33 < 0)
            {
              goto LABEL_18;
            }
          }

          else
          {
            v34 = v30 >= v31;
            v7 = v29;
            v6 = v28;
            v8 = v27;
            v20 = v35;
            v19 = v36;
            if (!v34)
            {
LABEL_18:
              v11 += 16;
              v10 = v26;
            }
          }
        }

        v22 = *(v11 + 8);
        if (v20 >= v22)
        {
          v23 = *(v11 + 8);
        }

        else
        {
          v23 = v20;
        }

        result = memcmp(*v11, v19, v23);
        if (!result)
        {
          if (v22 == v20)
          {
            result = 0;
          }

          else
          {
            if (v22 < v20)
            {
              goto LABEL_39;
            }

            result = 1;
          }
        }

        if ((result & 0x80000000) != 0)
        {
          goto LABEL_39;
        }
      }
    }
  }

  return result;
}

uint64_t std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::string_view *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 2)
  {
    return result;
  }

  v5 = result;
  v6 = 0;
  v33 = *result;
  v7 = (a4 - 2) >> 1;
  v8 = result;
  do
  {
    v9 = v8;
    v10 = v8 + 16 * v6;
    v8 = v10 + 16;
    v11 = 2 * v6;
    v6 = (2 * v6) | 1;
    v12 = v11 + 2;
    if (v11 + 2 < a4)
    {
      v15 = *(v10 + 32);
      v14 = v10 + 32;
      v13 = v15;
      v16 = *(v14 - 8);
      v17 = *(v14 + 8);
      if (v17 >= v16)
      {
        v18 = *(v14 - 8);
      }

      else
      {
        v18 = *(v14 + 8);
      }

      result = memcmp(*(v14 - 16), v13, v18);
      if (result)
      {
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_3;
        }
      }

      else if (v16 < v17)
      {
LABEL_3:
        v8 = v14;
        v6 = v12;
      }
    }

    *v9 = *v8;
  }

  while (v6 <= v7);
  v19 = (a2 - 16);
  if (v8 == a2 - 16)
  {
    *v8 = v33;
  }

  else
  {
    *v8 = *v19;
    *v19 = v33;
    v20 = (v8 - v5 + 16) >> 4;
    v21 = v20 < 2;
    v22 = v20 - 2;
    if (!v21)
    {
      v23 = v22 >> 1;
      v24 = v5 + 16 * (v22 >> 1);
      v25 = *(v24 + 8);
      v26 = *v8;
      v27 = *(v8 + 8);
      if (v27 >= v25)
      {
        v28 = *(v24 + 8);
      }

      else
      {
        v28 = *(v8 + 8);
      }

      result = memcmp(*v24, *v8, v28);
      if (result)
      {
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_27;
        }
      }

      else if (v25 < v27)
      {
LABEL_27:
        do
        {
          v29 = v8;
          v8 = v24;
          *v29 = *v24;
          if (!v23)
          {
            break;
          }

          v23 = (v23 - 1) >> 1;
          v24 = v5 + 16 * v23;
          v30 = *(v24 + 8);
          if (v27 >= v30)
          {
            v31 = *(v24 + 8);
          }

          else
          {
            v31 = v27;
          }

          result = memcmp(*v24, v26, v31);
          if (!result)
          {
            if (v30 >= v27)
            {
              break;
            }

            result = 0xFFFFFFFFLL;
          }
        }

        while ((result & 0x80000000) != 0);
        *v8 = v26;
        *(v8 + 8) = v27;
      }
    }
  }

  return result;
}

void *operations_research::sat::Model::Delete<operations_research::sat::FeasibilityPump>::~Delete(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  *v1 = &unk_284F3EC58;
  v1[1] = 0;
  if (v2)
  {
    v3 = v1;
    operations_research::sat::FeasibilityPump::~FeasibilityPump(v2);
    MEMORY[0x23EED9460]();
    return v3;
  }

  return v1;
}

void operations_research::sat::Model::Delete<operations_research::sat::FeasibilityPump>::~Delete(void *a1)
{
  v1 = a1[1];
  *a1 = &unk_284F3EC58;
  a1[1] = 0;
  if (v1)
  {
    operations_research::sat::FeasibilityPump::~FeasibilityPump(v1);
    MEMORY[0x23EED9460]();
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::LinearRelaxation::~LinearRelaxation(operations_research::sat::LinearRelaxation *this)
{
  v2 = *(this + 6);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *(this + 7);
  v4 = *(this + 6);
  if (v3 == v2)
  {
    goto LABEL_13;
  }

  v5 = v3 - 32;
  do
  {
    v6 = *(v3 - 8);
    if (v3 - 32 == v6)
    {
      (*(*v6 + 32))(v6);
      v7 = *(v3 - 56);
      if (!v7)
      {
        goto LABEL_4;
      }

LABEL_11:
      *(v3 - 48) = v7;
      operator delete(v7);
      goto LABEL_4;
    }

    if (v6)
    {
      (*(*v6 + 40))(v6);
    }

    v7 = *(v3 - 56);
    if (v7)
    {
      goto LABEL_11;
    }

LABEL_4:
    v3 -= 64;
    v5 -= 64;
  }

  while (v3 != v2);
  v4 = *(this + 6);
LABEL_13:
  *(this + 7) = v2;
  operator delete(v4);
LABEL_14:
  v8 = *(this + 3);
  if (v8)
  {
    v9 = *(this + 4);
    v10 = *(this + 3);
    if (v9 != v8)
    {
      v11 = *(this + 4);
      do
      {
        v13 = *(v11 - 24);
        v11 -= 24;
        v12 = v13;
        if (v13)
        {
          *(v9 - 16) = v12;
          operator delete(v12);
        }

        v9 = v11;
      }

      while (v11 != v8);
      v10 = *(this + 3);
    }

    *(this + 4) = v8;
    operator delete(v10);
  }

  v14 = *this;
  if (*this)
  {
    v15 = *(this + 1);
    v16 = *this;
    if (v15 != v14)
    {
      do
      {
        v17 = *(v15 - 8);
        *(v15 - 8) = 0;
        if (v17)
        {
          MEMORY[0x23EED9440](v17, 0x1000C8000313F17);
        }

        v18 = *(v15 - 16);
        *(v15 - 16) = 0;
        if (v18)
        {
          MEMORY[0x23EED9440](v18, 0x1000C8052888210);
        }

        v15 -= 40;
      }

      while (v15 != v14);
      v16 = *this;
    }

    *(this + 1) = v14;
    operator delete(v16);
  }
}

void operations_research::sat::CutGenerator::~CutGenerator(operations_research::sat::CutGenerator *this)
{
  v2 = this + 32;
  v3 = *(this + 7);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *(this + 1);
    if (!v4)
    {
      return;
    }

    goto LABEL_5;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
LABEL_5:
    *(this + 2) = v4;
    operator delete(v4);
  }
}

void *operations_research::sat::anonymous namespace::LnsSolver::LnsSolver(void *a1, uint64_t *a2, const operations_research::sat::SatParameters *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  if (*(*a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v10 + 8), *(v10 + 16));
  }

  else
  {
    v11 = *(v10 + 8);
    __p.__r_.__value_.__r.__words[2] = *(v10 + 24);
    *&__p.__r_.__value_.__l.__data_ = v11;
  }

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
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  operations_research::sat::SubSolver::SubSolver(a1, p_p, size, 2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_284F3ECA0;
  v14 = *a2;
  *a2 = 0;
  a1[32] = v14;
  a1[33] = a4;
  operations_research::sat::SatParameters::SatParameters((a1 + 34), 0, a3);
  a1[156] = a5;
  return a1;
}

void sub_23CB104A8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v3)
  {
  }

  operations_research::sat::SubSolver::~SubSolver(v1);
  _Unwind_Resume(a1);
}

void sub_23CB104CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::anonymous namespace::LnsSolver::~LnsSolver(operations_research::sat::_anonymous_namespace_::LnsSolver *this)
{
  *this = &unk_284F3ECA0;
  operations_research::sat::SharedStatTables::AddTimingStat((*(this + 156) + 88), this);
}

{
}

void operations_research::sat::anonymous namespace::LnsSolver::Synchronize(operations_research::sat::NeighborhoodGenerator **this)
{
  v2 = operations_research::sat::NeighborhoodGenerator::Synchronize(this[32]);
  v3 = v2;
  if (v2 > 0.0)
  {
    *(this + 5) = v2 + *(this + 5);
    operations_research::TimeDistribution::AddTimeInSec((this + 19), v2);
  }

  v4 = *(this[156] + 2);
  absl::lts_20240722::Mutex::Lock(v4);
  *(v4[1] + 112) = v3 + *(v4[1] + 112);
  absl::lts_20240722::Mutex::Unlock(v4);
}

uint64_t operations_research::sat::anonymous namespace::LnsSolver::TaskIsAvailable(atomic_ullong ***this)
{
  {
    return 0;
  }

  v3 = (*this[32])[3];

  return v3();
}

uint64_t operations_research::sat::anonymous namespace::LnsSolver::GenerateTask@<X0>(uint64_t this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = &unk_284F3ECF8;
  a3[1] = a2;
  a3[2] = this;
  a3[3] = a3;
  return this;
}

__n128 std::__function::__func<operations_research::sat::anonymous namespace::LnsSolver::GenerateTask(long long)::{lambda(void)#1},std::allocator<operations_research::sat::anonymous namespace::LnsSolver::GenerateTask(long long)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F3ECF8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::anonymous namespace::LnsSolver::GenerateTask(long long)::{lambda(void)#1},std::allocator<operations_research::sat::anonymous namespace::LnsSolver::GenerateTask(long long)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat12_GLOBAL__N_19LnsSolver12GenerateTaskExEUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat12_GLOBAL__N_19LnsSolver12GenerateTaskExEUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat12_GLOBAL__N_19LnsSolver12GenerateTaskExEUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat12_GLOBAL__N_19LnsSolver12GenerateTaskExEUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t operations_research::sat::anonymous namespace::LnsSolver::GenerateTask(long long)::{lambda(void)#1}::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v9 = *MEMORY[0x277D85DE8];
  v4 = v3[1];
  if ((result & 1) == 0)
  {
    v6 = *v3;
    v7 = *(v4 + 716);
    operator new();
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CB125EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, operations_research::sat::PresolveContext *a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  if (a28)
  {
    operator delete(a28);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  operations_research::sat::CpSolverResponse::~CpSolverResponse(&STACK[0x10A8]);
  if (a38)
  {
    operator delete(a38);
  }

  operations_research::sat::CpModelProto::~CpModelProto(&STACK[0x11B8]);
  std::unique_ptr<operations_research::sat::PresolveContext>::~unique_ptr[abi:ne200100](&a41);
  operations_research::sat::CpModelProto::~CpModelProto(&a42);
  operations_research::sat::CpModelProto::~CpModelProto(&a62);
  operations_research::sat::Model::~Model(&STACK[0x250]);
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
    if ((SLOBYTE(STACK[0x2D7]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }
  }

  else if ((SLOBYTE(STACK[0x2D7]) & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

  operator delete(STACK[0x2C0]);
LABEL_13:
  operations_research::sat::SatParameters::~SatParameters(&STACK[0x1288]);
  operations_research::sat::Neighborhood::~Neighborhood(&STACK[0x2F0]);
  operations_research::sat::CpSolverResponse::~CpSolverResponse(&STACK[0x3D8]);
  v63 = STACK[0xEE8];
  if (STACK[0xEE8])
  {
    STACK[0xEF0] = v63;
    operator delete(v63);
  }

  _Unwind_Resume(a1);
}

void sub_23CB12ADC()
{
  if (!STACK[0xEE8])
  {
    JUMPOUT(0x23CB12AD4);
  }

  JUMPOUT(0x23CB12ACCLL);
}

void operations_research::sat::SharedSolutionRepository<long long>::GetRandomBiasedSolution(atomic_ullong *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  absl::lts_20240722::Mutex::Lock(a1 + 4);
  v6 = a1[9];
  ++a1[7];
  v7 = a1[12];
  v8 = a1[13];
  v9 = *v7;
  a1[10] = v6;
  v41 = 0;
  if (v8 == v7)
  {
    v12 = (v8 - v7) >> 6;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v13 = &v7[64 * v11];
      if (*v13 == v9 && v13[14] <= 100)
      {
        std::vector<int>::push_back[abi:ne200100]((a1 + 9), &v41);
        v10 = v41;
        v7 = a1[12];
        v8 = a1[13];
      }

      v41 = ++v10;
      v11 = v10;
      v12 = (v8 - v7) >> 6;
    }

    while (v12 > v10);
    v14 = a1[9];
    v15 = a1[10];
    if (v14 != v15)
    {
      v16 = (v15 - v14) >> 2;
      if ((v16 - (v16 != 0x80000000)) < 0)
      {
        v21 = 0;
LABEL_33:
        v20 = *(v14 + 4 * v21);
        goto LABEL_34;
      }

      v41 = 0;
      v42 = (v15 - v14) >> 2;
      v40 = 0;
      v17 = a2[1];
      if (v17 == absl::lts_20240722::BitGenRef::NotAMock)
      {
        v27 = 0;
      }

      else
      {
        if ((v17)(*a2, &absl::lts_20240722::base_internal::FastTypeTag<int ()(absl::lts_20240722::random_internal::UniformDistributionWrapper<int>,std::tuple<int,int>)>::dummy_var, &v41, &v40))
        {
          v18 = v40;
LABEL_32:
          v21 = v18;
          v14 = a1[9];
          goto LABEL_33;
        }

        v27 = v41;
        LODWORD(v16) = v42;
      }

      v28 = (a2[2])(*a2);
      v29 = v16 - v27 - (v16 != 0x80000000);
      v30 = v29 + 1;
      if (((v29 + 1) & v29) != 0)
      {
        v31 = v28 * v30;
        if (v30 > v31)
        {
            ;
          }
        }

        v32 = HIDWORD(v31);
      }

      else
      {
        LODWORD(v32) = v28 & v29;
      }

      v18 = v27 + v32;
      goto LABEL_32;
    }
  }

  if ((v12 - (v12 != 0x80000000)) < 0)
  {
    v20 = 0;
  }

  else
  {
    v41 = 0;
    v42 = v12;
    v40 = 0;
    v19 = a2[1];
    if (v19 == absl::lts_20240722::BitGenRef::NotAMock)
    {
      v22 = 0;
    }

    else
    {
      if ((v19)(*a2, &absl::lts_20240722::base_internal::FastTypeTag<int ()(absl::lts_20240722::random_internal::UniformDistributionWrapper<int>,std::tuple<int,int>)>::dummy_var, &v41, &v40))
      {
        v20 = v40;
        goto LABEL_34;
      }

      v22 = v41;
      LODWORD(v12) = v42;
    }

    v23 = (a2[2])(*a2);
    v24 = v12 - v22 - (v12 != 0x80000000);
    v25 = v24 + 1;
    if (((v24 + 1) & v24) != 0)
    {
      v26 = v23 * v25;
      if (v25 > v26)
      {
          ;
        }
      }

      v20 = v22 + HIDWORD(v26);
    }

    else
    {
      v20 = v22 + (v23 & v24);
    }
  }

LABEL_34:
  v33 = a1[12] + (v20 << 6);
  ++*(v33 + 56);
  v34 = *v33;
  *(a3 + 8) = 0;
  *a3 = v34;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  v36 = *(v33 + 8);
  v35 = *(v33 + 16);
  if (v35 != v36)
  {
    if (((v35 - v36) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (*(v33 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a3 + 32), *(v33 + 32), *(v33 + 40));
  }

  else
  {
    v37 = *(v33 + 32);
    *(a3 + 48) = *(v33 + 48);
    *(a3 + 32) = v37;
  }

  *(a3 + 56) = *(v33 + 56);
  absl::lts_20240722::Mutex::Unlock((a1 + 4));
}

void operations_research::sat::SharedSolutionRepository<long long>::GetSolution(atomic_ullong *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  absl::lts_20240722::Mutex::Lock(a1 + 4);
  ++a1[7];
  v6 = a1[12] + (a2 << 6);
  v7 = *v6;
  *(a3 + 8) = 0;
  *a3 = v7;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  v9 = *(v6 + 8);
  v8 = *(v6 + 16);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (*(v6 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a3 + 32), *(v6 + 32), *(v6 + 40));
  }

  else
  {
    v10 = *(v6 + 32);
    *(a3 + 48) = *(v6 + 48);
    *(a3 + 32) = v10;
  }

  *(a3 + 56) = *(v6 + 56);
  absl::lts_20240722::Mutex::Unlock((a1 + 4));
}

void sub_23CB12FAC(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 16) = v5;
    operator delete(v5);
  }

  absl::lts_20240722::Mutex::Unlock((v1 + 32));
  _Unwind_Resume(a1);
}

atomic_ullong operations_research::sat::NeighborhoodGenerator::num_calls(atomic_ullong *this)
{
  absl::lts_20240722::Mutex::Lock(this + 5);
  v2 = this[12];
  absl::lts_20240722::Mutex::Unlock((this + 5));
  return v2;
}

operations_research::sat::CpSolverResponse *operations_research::sat::CpSolverResponse::operator=(operations_research::sat::CpSolverResponse *result, const operations_research::sat::CpSolverResponse *a2)
{
  if (result != a2)
  {
    v2 = *(result + 1);
    if (v2)
    {
      v2 = *(v2 & 0xFFFFFFFFFFFFFFFELL);
      v3 = *(a2 + 1);
      if ((v3 & 1) == 0)
      {
LABEL_4:
        if (v2 != v3)
        {
LABEL_5:
          v4 = result;
          operations_research::sat::CpSolverResponse::CopyFrom(result, a2);
          return v4;
        }

        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(a2 + 1);
      if ((v3 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    if (v2 != *(v3 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_5;
    }

LABEL_8:
    v5 = result;
    operations_research::sat::CpSolverResponse::InternalSwap(result, a2);
    return v5;
  }

  return result;
}

std::string *absl::lts_20240722::StrAppend<char [8],unsigned long,char [2]>(std::string *a1, _OWORD *a2, __int128 *a3, _OWORD *a4, __int128 *a5, _OWORD *a6, char *__s, unint64_t *a8, const char *a9)
{
  v26 = *MEMORY[0x277D85DE8];
  v11 = *a3;
  v19[0] = *a2;
  v19[1] = v11;
  v12 = *a5;
  v19[2] = *a4;
  v19[3] = v12;
  v19[4] = *a6;
  v20 = __s;
  v21 = strlen(__s);
  v17 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a8, v18, v13) - v18;
  v22 = v18;
  v23 = v17;
  v14 = strlen(a9);
  v24 = a9;
  v25 = v14;
  result = absl::lts_20240722::strings_internal::AppendPieces(a1, v19, 8);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

char *absl::lts_20240722::StrCat<char [9],double,char [2],double,char [10],std::string,char [10],long long,char [5],double,char [2]>@<X0>(char *__s@<X5>, _OWORD *a2@<X0>, __int128 *a3@<X1>, _OWORD *a4@<X2>, __int128 *a5@<X3>, _OWORD *a6@<X4>, long double *a7@<X6>, const char *a8@<X7>, std::string *a9@<X8>, long double *a10, const char *a11, uint64_t a12, const char *a13, unint64_t *a14, const char *a15, long double *a16, const char *a17)
{
  v68 = *MEMORY[0x277D85DE8];
  v19 = *a3;
  v45[0] = *a2;
  v45[1] = v19;
  v20 = *a5;
  v45[2] = *a4;
  v45[3] = v20;
  v45[4] = *a6;
  v46 = __s;
  v47 = strlen(__s);
  v22 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v44, *a7, v21);
  v43[4] = v44;
  v43[5] = v22;
  v48 = v44;
  v49 = v22;
  v23 = strlen(a8);
  v50 = a8;
  v51 = v23;
  v25 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v43, *a10, v24);
  v41 = v43;
  v42 = v25;
  v52 = v43;
  v53 = v25;
  v26 = strlen(a11);
  v54 = a11;
  v55 = v26;
  v27 = *(a12 + 23);
  if ((v27 & 0x80u) == 0)
  {
    v28 = a12;
  }

  else
  {
    v28 = *a12;
  }

  if ((v27 & 0x80u) != 0)
  {
    v27 = *(a12 + 8);
  }

  v56 = v28;
  v57 = v27;
  v29 = strlen(a13);
  v58 = a13;
  v59 = v29;
  v31 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a14, v40, v30);
  v39[4] = v40;
  v39[5] = v31 - v40;
  v60 = v40;
  v61 = v31 - v40;
  v32 = strlen(a15);
  v62 = a15;
  v63 = v32;
  v38 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v39, *a16, v33);
  v64 = v39;
  v65 = v38;
  v34 = strlen(a17);
  v66 = a17;
  v67 = v34;
  result = absl::lts_20240722::strings_internal::CatPieces(v45, 16, a9);
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

void std::vector<operations_research::sat::NeighborhoodGenerator::SolveData>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[2];
    *(v3 + 48) = *(a2 + 6);
    *(v3 + 16) = v6;
    *(v3 + 32) = v7;
    *v3 = v5;
    v8 = v3 + 56;
LABEL_3:
    *(a1 + 8) = v8;
    return;
  }

  v9 = *a1;
  v10 = v3 - *a1;
  v11 = 0x6DB6DB6DB6DB6DB7 * (v10 >> 3) + 1;
  if (v11 > 0x492492492492492)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v12 = 0x6DB6DB6DB6DB6DB7 * ((v4 - v9) >> 3);
  if (2 * v12 > v11)
  {
    v11 = 2 * v12;
  }

  if (v12 >= 0x249249249249249)
  {
    v13 = 0x492492492492492;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    if (v13 <= 0x492492492492492)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v14 = 8 * (v10 >> 3);
  v15 = a2[1];
  *v14 = *a2;
  *(v14 + 16) = v15;
  *(v14 + 32) = a2[2];
  *(v14 + 48) = *(a2 + 6);
  v8 = v14 + 56;
  v16 = v14 - v10;
  memcpy((v14 - v10), v9, v10);
  *a1 = v16;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  if (!v9)
  {
    goto LABEL_3;
  }

  operator delete(v9);
  *(a1 + 8) = v8;
}

uint64_t operations_research::sat::RelaxationInducedNeighborhoodGenerator::RelaxationInducedNeighborhoodGenerator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *__src, size_t __len)
{
  *a1 = &unk_284F3C970;
  v7 = (a1 + 8);
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(a1 + 31) = __len;
  if (__len)
  {
    memmove(v7, __src, __len);
  }

  *(v7 + __len) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0x3FE0000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0x3FB999999999999ALL;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 50;
  *(a1 + 136) = 0;
  *a1 = &unk_284F3CE78;
  *(a1 + 144) = a3;
  *(a1 + 152) = a4;
  *(a1 + 160) = a5;
  if (!a4)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v15, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_lns.h", 796);
    goto LABEL_12;
  }

  if (!a5)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v15, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_lns.h", 797);
LABEL_12:
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v15);
  }

  return a1;
}

void operations_research::sat::NeighborhoodGenerator::~NeighborhoodGenerator(operations_research::sat::NeighborhoodGenerator *this)
{
  *this = &unk_284F3C970;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  absl::lts_20240722::Mutex::~Mutex((this + 40));
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t operations_research::sat::FeasibilityJumpSolver::FeasibilityJumpSolver(uint64_t a1, const void **a2, int a3, uint64_t a4, const operations_research::sat::SatParameters *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = *(a2 + 23);
  if ((v17 & 0x8000000000000000) != 0)
  {
    v18 = a2;
    a2 = *a2;
    v17 = v18[1];
  }

  operations_research::sat::SubSolver::SubSolver(a1, a2, v17, a3);
  *a1 = &unk_284F412D0;
  *(a1 + 256) = a4;
  operations_research::sat::SatParameters::SatParameters((a1 + 264), 0, a5);
  *(a1 + 1240) = a6;
  *(a1 + 1248) = a7;
  *(a1 + 1256) = a8;
  *(a1 + 1264) = a9;
  *(a1 + 1272) = a10;
  operations_research::sat::ModelRandomGenerator::ModelRandomGenerator((a1 + 1280), (a1 + 264));
  *(a1 + 4088) = 256;
  *(a1 + 4096) = 0u;
  *(a1 + 4112) = 0u;
  *(a1 + 4128) = 0u;
  *(a1 + 4144) = 0u;
  *(a1 + 4160) = 0u;
  v19 = operator new(0x18uLL);
  *v19 = operations_research::sat::FeasibilityJumpSolver::ComputeLinearJump;
  v19[1] = 0;
  v19[2] = a1;
  v25[0] = v19;
  v25[1] = 24;
  v26 = absl::lts_20240722::internal_any_invocable::RemoteManagerTrivial;
  v27 = absl::lts_20240722::internal_any_invocable::RemoteInvoker<false,std::pair<long long,double>,absl::lts_20240722::functional_internal::FrontBinder<std::pair<long long,double> (operations_research::sat::FeasibilityJumpSolver::*)(int),operations_research::sat::FeasibilityJumpSolver*> &,int>;
  operations_research::sat::JumpTable::JumpTable(a1 + 4176, v25);
  v26(1, v25, v25);
  v20 = operator new(0x18uLL);
  *v20 = operations_research::sat::FeasibilityJumpSolver::ComputeGeneralJump;
  v20[1] = 0;
  v20[2] = a1;
  v22[0] = v20;
  v22[1] = 24;
  v23 = absl::lts_20240722::internal_any_invocable::RemoteManagerTrivial;
  v24 = absl::lts_20240722::internal_any_invocable::RemoteInvoker<false,std::pair<long long,double>,absl::lts_20240722::functional_internal::FrontBinder<std::pair<long long,double> (operations_research::sat::FeasibilityJumpSolver::*)(int),operations_research::sat::FeasibilityJumpSolver*> &,int>;
  operations_research::sat::JumpTable::JumpTable(a1 + 4280, v22);
  v23(1, v22, v22);
  *(a1 + 4496) = 0;
  *(a1 + 4480) = 0u;
  *(a1 + 4464) = 0u;
  *(a1 + 4448) = 0u;
  *(a1 + 4432) = 0u;
  *(a1 + 4416) = 0u;
  *(a1 + 4400) = 0u;
  *(a1 + 4384) = 0u;
  *(a1 + 4504) = 0x3FF0000000000000;
  *(a1 + 4584) = 0;
  *(a1 + 4600) = 0;
  *(a1 + 4592) = 0;
  *(a1 + 4512) = 0u;
  *(a1 + 4528) = 0u;
  *(a1 + 4544) = 0u;
  *(a1 + 4560) = 0u;
  *(a1 + 4608) = 1;
  *(a1 + 4720) = 0u;
  *(a1 + 4692) = 0u;
  *(a1 + 4708) = 0u;
  *(a1 + 4660) = 0u;
  *(a1 + 4676) = 0u;
  *(a1 + 4628) = 0u;
  *(a1 + 4644) = 0u;
  *(a1 + 4612) = 0u;
  *(a1 + 4736) = 0x7FFFFFFFFFFFFFFFLL;
  return a1;
}

void sub_23CB138E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t, uint64_t *, uint64_t *))
{
  a11(1, &a9, &a9);
  operations_research::sat::JumpTable::~JumpTable((v11 + v12));
  v14 = *(v11 + 4152);
  if (v14)
  {
    operator delete(v14);
  }

  v15 = *(v11 + 4128);
  if (v15)
  {
    operator delete(v15);
  }

  std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>::~vector[abi:ne200100]((v11 + 4104));
  std::unique_ptr<operations_research::sat::LsEvaluator>::~unique_ptr[abi:ne200100]((v11 + 4096));
  operations_research::sat::SatParameters::~SatParameters((v11 + 264));
  operations_research::sat::SubSolver::~SubSolver(v11);
  _Unwind_Resume(a1);
}

void sub_23CB13974(_Unwind_Exception *a1)
{
  operations_research::sat::SatParameters::~SatParameters((v1 + 264));
  operations_research::sat::SubSolver::~SubSolver(v1);
  _Unwind_Resume(a1);
}

void operations_research::sat::JumpTable::~JumpTable(operations_research::sat::JumpTable *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    *(this + 8) = v3;
    operator delete(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }

  (*(this + 2))(1, this, this);
}

operations_research::sat::LsEvaluator **std::unique_ptr<operations_research::sat::LsEvaluator>::~unique_ptr[abi:ne200100](operations_research::sat::LsEvaluator **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    operations_research::sat::LsEvaluator::~LsEvaluator(v2);
    MEMORY[0x23EED9460]();
    return v3;
  }

  return v1;
}

uint64_t absl::lts_20240722::internal_any_invocable::RemoteInvoker<false,std::pair<long long,double>,absl::lts_20240722::functional_internal::FrontBinder<std::pair<long long,double> (operations_research::sat::FeasibilityJumpSolver::*)(int),operations_research::sat::FeasibilityJumpSolver*> &,int>(uint64_t (***a1)(void *))
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = ((*a1)[2] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

__n128 absl::lts_20240722::internal_any_invocable::RemoteManagerTrivial(char a1, void **a2, _OWORD *a3)
{
  if (a1)
  {
    operator delete(*a2);
  }

  else
  {
    result = *a2;
    *a3 = *a2;
  }

  return result;
}

void operations_research::sat::LsEvaluator::~LsEvaluator(operations_research::sat::LsEvaluator *this)
{
  v2 = *(this + 124);
  if (v2)
  {
    *(this + 125) = v2;
    operator delete(v2);
  }

  v3 = *(this + 121);
  if (v3)
  {
    *(this + 122) = v3;
    operator delete(v3);
  }

  v4 = *(this + 118);
  if (v4)
  {
    *(this + 119) = v4;
    operator delete(v4);
  }

  v5 = *(this + 115);
  if (v5)
  {
    *(this + 116) = v5;
    operator delete(v5);
  }

  v6 = *(this + 112);
  if (v6)
  {
    *(this + 113) = v6;
    operator delete(v6);
  }

  v7 = *(this + 109);
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(this + 106);
  if (v8)
  {
    v9 = *(this + 107);
    v10 = *(this + 106);
    if (v9 != v8)
    {
      v11 = *(this + 107);
      do
      {
        v13 = *(v11 - 24);
        v11 -= 24;
        v12 = v13;
        if (v13)
        {
          *(v9 - 16) = v12;
          operator delete(v12);
        }

        v9 = v11;
      }

      while (v11 != v8);
      v10 = *(this + 106);
    }

    *(this + 107) = v8;
    operator delete(v10);
  }

  v14 = *(this + 103);
  if (v14)
  {
    v15 = *(this + 104);
    v16 = *(this + 103);
    if (v15 != v14)
    {
      v17 = *(this + 104);
      do
      {
        v19 = *(v17 - 24);
        v17 -= 24;
        v18 = v19;
        if (v19)
        {
          *(v15 - 16) = v18;
          operator delete(v18);
        }

        v15 = v17;
      }

      while (v17 != v14);
      v16 = *(this + 103);
    }

    *(this + 104) = v14;
    operator delete(v16);
  }

  v20 = *(this + 100);
  if (v20)
  {
    v21 = *(this + 101);
    v22 = *(this + 100);
    if (v21 != v20)
    {
      do
      {
        v24 = *--v21;
        v23 = v24;
        *v21 = 0;
        if (v24)
        {
          (*(*v23 + 8))(v23);
        }
      }

      while (v21 != v20);
      v22 = *(this + 100);
    }

    *(this + 101) = v20;
    operator delete(v22);
  }

  operations_research::sat::LinearIncrementalEvaluator::~LinearIncrementalEvaluator((this + 176));
  operations_research::sat::CpModelProto::~CpModelProto((this + 16));
}

uint64_t std::function<void ()(operations_research::sat::CpModelProto,operations_research::sat::Model *)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void std::__function::__func<operations_research::sat::anonymous namespace::SolveCpModelParallel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_1,std::allocator<operations_research::sat::anonymous namespace::SolveCpModelParallel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_1>,void ()(operations_research::sat::CpModelProto,operations_research::sat::Model *)>::operator()(uint64_t a1, const operations_research::sat::CpModelProto *a2, const operations_research::sat::CpModelProto **a3)
{
  operations_research::sat::CpModelProto::CpModelProto(&v12, 0);
  if (&v12 != a2)
  {
    v5 = v13;
    if (v13)
    {
      v5 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      v6 = *(a2 + 1);
      if ((v6 & 1) == 0)
      {
LABEL_4:
        if (v5 != v6)
        {
LABEL_5:
          operations_research::sat::CpModelProto::CopyFrom(&v12, a2);
          goto LABEL_9;
        }

LABEL_8:
        operations_research::sat::CpModelProto::InternalSwap(&v12, a2);
        goto LABEL_9;
      }
    }

    else
    {
      v6 = *(a2 + 1);
      if ((v6 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    if (v5 != *(v6 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

LABEL_9:
  v7 = *a3;
  v8 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedResponseManager>(v7);
  operations_research::sat::SharedResponseManager::InitializeObjective(v8, &v12, v9);
  operations_research::sat::CpModelProto::~CpModelProto(&v12);
}

uint64_t std::__function::__func<operations_research::sat::anonymous namespace::SolveCpModelParallel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_1,std::allocator<operations_research::sat::anonymous namespace::SolveCpModelParallel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_1>,void ()(operations_research::sat::CpModelProto,operations_research::sat::Model *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat12_GLOBAL__N_120SolveCpModelParallelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat12_GLOBAL__N_120SolveCpModelParallelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat12_GLOBAL__N_120SolveCpModelParallelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat12_GLOBAL__N_120SolveCpModelParallelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t operations_research::sat::LocalBranchingLpBasedNeighborhoodGenerator::LocalBranchingLpBasedNeighborhoodGenerator(uint64_t a1, uint64_t a2, void *__src, size_t __len, uint64_t a5, uint64_t a6)
{
  *a1 = &unk_284F3C970;
  v6 = (a1 + 8);
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(a1 + 31) = __len;
  if (__len)
  {
    memmove(v6, __src, __len);
  }

  *(v6 + __len) = 0;
  *(a1 + 32) = a2;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0x3FE0000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0x3FB999999999999ALL;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 50;
  *(a1 + 136) = 0;
  *a1 = &unk_284F3CB60;
  v12 = a5 + 24;
  v13 = *(a5 + 24);
  if (v13)
  {
    if (v13 == a5)
    {
      *(a1 + 168) = a1 + 144;
      (*(**v12 + 24))();
      goto LABEL_13;
    }

    *(a1 + 168) = v13;
  }

  else
  {
    v12 = a1 + 168;
  }

  *v12 = 0;
LABEL_13:
  *(a1 + 176) = a6;
  return a1;
}

uint64_t operations_research::sat::SchedulingResourceWindowsNeighborhoodGenerator::SchedulingResourceWindowsNeighborhoodGenerator(uint64_t a1, uint64_t a2, uint64_t *a3, void *__src, size_t __len)
{
  *a1 = &unk_284F3C970;
  v5 = (a1 + 8);
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(a1 + 31) = __len;
  if (__len)
  {
    memmove(v5, __src, __len);
  }

  *(v5 + __len) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0x3FE0000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0x3FB999999999999ALL;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 50;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *a1 = &unk_284F3CC80;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v11 = *a3;
  v10 = a3[1];
  if (v10 != v11)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v10 - v11) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return a1;
}

void sub_23CB14220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 19) = v10;
  std::__exception_guard_exceptions<std::vector<std::vector<int>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  operations_research::sat::NeighborhoodGenerator::~NeighborhoodGenerator(v9);
  _Unwind_Resume(a1);
}

void sub_23CB14240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::__exception_guard_exceptions<std::vector<std::vector<int>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  operations_research::sat::NeighborhoodGenerator::~NeighborhoodGenerator(v9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<int>>,std::vector<int>*,std::vector<int>*,std::vector<int>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v6 = v5[1];
      if (v6 != *v5)
      {
        if (((v6 - *v5) & 0x8000000000000000) == 0)
        {
          v7 = v6 - *v5;
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_23CB14340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<operations_research::sat::Literal>>,std::vector<operations_research::sat::Literal>*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<operations_research::sat::anonymous namespace::SolveCpModelParallel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_2,std::allocator<operations_research::sat::anonymous namespace::SolveCpModelParallel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_2>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F3EE08;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::anonymous namespace::SolveCpModelParallel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_2,std::allocator<operations_research::sat::anonymous namespace::SolveCpModelParallel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_2>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat12_GLOBAL__N_120SolveCpModelParallelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_2")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat12_GLOBAL__N_120SolveCpModelParallelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_2" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat12_GLOBAL__N_120SolveCpModelParallelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_2"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat12_GLOBAL__N_120SolveCpModelParallelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_2" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

unsigned __int8 *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::insert_unique<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>@<X0>(unsigned __int8 **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X2>, __int128 **a4@<X3>, unsigned __int8 **a5@<X8>)
{
  v5 = a2;
  if (!a1[2])
  {
    operator new();
  }

  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v5 = *a2;
    v7 = a2[1];
  }

  v8 = *a1;
  v9 = (*a1)[10];
  if (!(*a1)[10])
  {
    goto LABEL_24;
  }

LABEL_7:
  v10 = 0;
  do
  {
    v11 = (v9 + v10) >> 1;
    v12 = &v8[32 * v11 + 16];
    v13 = *(v12 + 23);
    if ((v13 & 0x8000000000000000) != 0)
    {
      v16 = *v12;
      v13 = *&v8[32 * v11 + 24];
      if (v7 >= v13)
      {
        v17 = *&v8[32 * v11 + 24];
      }

      else
      {
        v17 = v7;
      }

      result = memcmp(v16, v5, v17);
      if (result)
      {
LABEL_15:
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_8;
        }

        goto LABEL_9;
      }
    }

    else
    {
      if (v7 >= v13)
      {
        v14 = *(v12 + 23);
      }

      else
      {
        v14 = v7;
      }

      result = memcmp(v12, v5, v14);
      if (result)
      {
        goto LABEL_15;
      }
    }

    if (v13 < v7)
    {
LABEL_8:
      v10 = v11 + 1;
      v11 = v9;
      goto LABEL_9;
    }

    if (v13 == v7)
    {
      v18 = 0;
      v19 = a5;
      *a5 = v8;
      a5[1] = ((v9 + v10) >> 1);
      goto LABEL_29;
    }

LABEL_9:
    v9 = v11;
  }

  while (v10 != v11);
  while (!v8[11])
  {
    v8 = *&v8[8 * v11 + 240];
    v9 = v8[10];
    if (v8[10])
    {
      goto LABEL_7;
    }

LABEL_24:
    LODWORD(v11) = 0;
  }

  result = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::internal_emplace<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, v8, v11, a3, a4);
  v19 = a5;
  *a5 = result;
  *(a5 + 2) = v20;
  v18 = 1;
LABEL_29:
  *(v19 + 16) = v18;
  return result;
}

unsigned __int8 *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::internal_emplace<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, __int128 **a5)
{
  i = a2;
  v25 = a3;
  v7 = a2[11];
  if (a2[11])
  {
    if (a2[10] != v7)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v8 = *&a2[8 * a3 + 240];
  for (i = v8; !v8[11]; i = v8)
  {
    v8 = *&v8[8 * v8[10] + 240];
  }

  LODWORD(v25) = v8[10];
  v7 = v8[11];
  if (!v8[11])
  {
    v7 = 7;
  }

  if (v8[10] == v7)
  {
LABEL_9:
    if (v7 <= 6)
    {
      operator new();
    }

    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::rebalance_or_split(a1, &i);
  }

LABEL_12:
  v9 = i;
  v10 = v25;
  v11 = i[10];
  v12 = v25;
  if (v11 > v25)
  {
    v12 = v25;
    if (((v11 - v25) & 0x7FFFFFFFFFFFFFFLL) != 0)
    {
      v13 = 32 * i[10];
      v14 = &i[v13 - 16];
      v15 = 32 * v25 - v13;
      do
      {
        *(v14 + 2) = *v14;
        *(v14 + 6) = *(v14 + 2);
        *(v14 + 1) = 0;
        *(v14 + 2) = 0;
        *v14 = 0;
        *(v14 + 14) = *(v14 + 6);
        if (v14[23] < 0)
        {
          operator delete(*v14);
        }

        v14 -= 32;
        v15 += 32;
      }

      while (v15);
    }
  }

  v16 = &v9[32 * v12];
  v17 = *a5;
  if (*(*a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v16 + 16), *v17, *(v17 + 1));
    *(v16 + 10) = 0;
    v19 = ++v9[10];
    if (v9[11])
    {
      goto LABEL_26;
    }
  }

  else
  {
    v18 = *v17;
    *(v16 + 4) = *(v17 + 2);
    *(v16 + 1) = v18;
    *(v16 + 10) = 0;
    v19 = ++v9[10];
    if (v9[11])
    {
      goto LABEL_26;
    }
  }

  if (v10 + 1 < v19)
  {
    v20 = v9 + 240;
    do
    {
      v21 = *&v20[8 * (v19 - 1)];
      *&v20[8 * v19] = v21;
      *(v21 + 8) = v19;
    }

    while (v10 + 1 < --v19);
  }

LABEL_26:
  ++*(a1 + 16);
  return i;
}

void absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::rebalance_or_split(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v3 = *a2;
  v4 = **a2;
  if (*a2 == *a1)
  {
    operator new();
  }

  v5 = v3[8];
  if (v3[8])
  {
    v6 = *(v4 + 8 * (v5 - 1) + 240);
    v7 = v6[10];
    if (v7 <= 6)
    {
      v8 = *(a2 + 8);
      v9 = (7 - v7) >> (v8 < 7) <= 1u ? 1 : (7 - v7) >> (v8 < 7);
      v10 = (v9 + v7);
      if (v8 >= v9 || v10 <= 6)
      {
        absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::rebalance_right_to_left(*(v4 + 8 * (v5 - 1) + 240), v9, v3);
        v12 = *(a2 + 8) - v9;
        *(a2 + 2) = v12;
        if (v12 >= 0)
        {
          return;
        }

        v23 = v12 + v6[10] + 1;
LABEL_30:
        *(a2 + 2) = v23;
        *a2 = v6;
        return;
      }
    }
  }

  v13 = *(v4 + 10);
  if (v5 >= v13 || (v6 = *(v4 + 8 * (v5 + 1) + 240), v14 = v6[10], v14 > 6) || ((v15 = *(a2 + 2), (7 - v14) >> (v15 > 0) <= 1u) ? (v16 = 1) : (v16 = (7 - v14) >> (v15 > 0)), (v17 = (v16 + v14), (v3[10] - v16) < v15) ? (v18 = v17 > 6) : (v18 = 0), v18))
  {
    if (v13 == 7)
    {
      v24 = v4;
      v25 = v5;
      absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::rebalance_or_split(a1, &v24);
      v3 = *a2;
      v21 = **a2;
    }

    v22 = v3[8] + 1;
    if (v3[11])
    {
      operator new();
    }

    operator new();
  }

  absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::rebalance_left_to_right(v3, v16, *(v4 + 8 * (v5 + 1) + 240));
  v19 = *(a2 + 2);
  v20 = (*a2)[10];
  if (v19 > v20)
  {
    v23 = v19 + ~v20;
    goto LABEL_30;
  }
}

void absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::rebalance_right_to_left(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = a1 + 32 * *(a1 + 10);
  v7 = *a1 + 32 * *(a1 + 8);
  v8 = *(v7 + 32);
  *(v6 + 16) = *(v7 + 16);
  *(v6 + 32) = v8;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 16) = 0;
  *(v6 + 40) = *(v7 + 40);
  if (*(v7 + 39) < 0)
  {
    operator delete(*(v7 + 16));
  }

  v9 = (a2 - 1);
  v10 = a3 + 32 * v9;
  if ((v9 & 0x7FFFFFFFFFFFFFFLL) != 0)
  {
    v11 = 0;
    v12 = a1 + 32 * *(a1 + 10);
    do
    {
      v13 = a3 + v11;
      v14 = v12 + v11;
      v15 = *(a3 + v11 + 16);
      *(v14 + 64) = *(a3 + v11 + 32);
      *(v14 + 48) = v15;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0;
      *(v13 + 16) = 0;
      *(v14 + 72) = *(a3 + v11 + 40);
      if (*(a3 + v11 + 39) < 0)
      {
        operator delete(*(v13 + 16));
      }

      v11 += 32;
    }

    while (32 * a2 - 32 != v11);
  }

  v16 = *a1 + 32 * *(a1 + 8);
  v17 = *(v10 + 16);
  *(v16 + 32) = *(v10 + 32);
  *(v16 + 16) = v17;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 16) = 0;
  *(v16 + 40) = *(v10 + 40);
  if (*(v10 + 39) < 0)
  {
    operator delete(*(v10 + 16));
  }

  v18 = *(a3 + 10);
  v19 = a2;
  if (((v18 - a2) & 0x7FFFFFFFFFFFFFFLL) != 0)
  {
    v20 = 0;
    v21 = a3 + 32 * a2;
    v22 = 32 * v18 - 32 * a2;
    do
    {
      v23 = a3 + v20;
      v24 = v21 + v20;
      v25 = *(v21 + v20 + 16);
      *(v23 + 32) = *(v21 + v20 + 32);
      *(v23 + 16) = v25;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0;
      *(v24 + 16) = 0;
      *(v23 + 40) = *(v21 + v20 + 40);
      if (*(v21 + v20 + 39) < 0)
      {
        operator delete(*(v24 + 16));
      }

      v20 += 32;
    }

    while (v22 != v20);
  }

  if (!*(a1 + 11))
  {
    if (a2)
    {
      v26 = (a3 + 240);
      v27 = 1;
      do
      {
        v28 = *(a1 + 10) + v27;
        v29 = *v26++;
        *(a1 + 240 + 8 * v28) = v29;
        *(v29 + 8) = v28;
        *v29 = a1;
        ++v27;
        --v19;
      }

      while (v19);
    }

    if (*(a3 + 10) >= a2)
    {
      v30 = 0;
      v31 = a3 + 240;
      do
      {
        v32 = *(v31 + 8 * (v30 + a2));
        *(v31 + 8 * v30) = v32;
        *(v32 + 8) = v30;
        *v32 = a3;
        ++v30;
      }

      while ((*(a3 + 10) - a2) >= v30);
    }
  }

  *(a1 + 10) += a2;
  *(a3 + 10) -= a2;
}

void absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::rebalance_left_to_right(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = a3 + 16;
  if (*(a3 + 10))
  {
    v7 = 0;
    v8 = 32 * *(a3 + 10);
    v9 = a3 + 32 * a2;
    v10 = a3;
    do
    {
      v11 = v9 + v8;
      v12 = (v10 + v8);
      v13 = *(v10 + v8 - 16);
      *v11 = *(v10 + v8);
      *(v11 - 16) = v13;
      *(v12 - 1) = 0;
      *v12 = 0;
      *(v12 - 2) = 0;
      *(v11 + 8) = *(v10 + v8 + 8);
      if (*(v10 + v8 + 7) < 0)
      {
        operator delete(*(v12 - 2));
      }

      v10 -= 32;
      v9 -= 32;
      v7 += 32;
    }

    while (v8 != v7);
  }

  v14 = a2 - 1;
  v15 = v6 + 32 * v14;
  v16 = *a1 + 32 * *(a1 + 8);
  v17 = *(v16 + 16);
  *(v15 + 16) = *(v16 + 32);
  *v15 = v17;
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  *(v16 + 16) = 0;
  *(v15 + 24) = *(v16 + 40);
  if (*(v16 + 39) < 0)
  {
    operator delete(*(v16 + 16));
  }

  v18 = *(a1 + 10);
  if ((v14 & 0x7FFFFFFFFFFFFFFLL) != 0)
  {
    v19 = 0;
    v20 = 32 * a2;
    v21 = a1 - v20 + 32 * v18;
    v22 = v20 - 32;
    do
    {
      v23 = v6 + v19;
      v24 = v21 + v19;
      v25 = *(v21 + v19 + 48);
      *(v23 + 16) = *(v21 + v19 + 64);
      *v23 = v25;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      *(v24 + 48) = 0;
      *(v23 + 24) = *(v21 + v19 + 72);
      if (*(v21 + v19 + 71) < 0)
      {
        operator delete(*(v24 + 48));
      }

      v19 += 32;
    }

    while (v22 != v19);
    LODWORD(v18) = *(a1 + 10);
  }

  v26 = *a1 + 32 * *(a1 + 8);
  v27 = a1 + 16 + 32 * (v18 - a2);
  v28 = *v27;
  *(v26 + 32) = *(v27 + 16);
  *(v26 + 16) = v28;
  *(v27 + 8) = 0;
  *(v27 + 16) = 0;
  *v27 = 0;
  *(v26 + 40) = *(v27 + 24);
  if (*(v27 + 23) < 0)
  {
    operator delete(*v27);
    if (*(a1 + 11))
    {
      goto LABEL_27;
    }
  }

  else if (*(a1 + 11))
  {
    goto LABEL_27;
  }

  if (((*(a3 + 10) + 1) & 0x100) == 0)
  {
    v29 = a3 + 240;
    v30 = (*(a3 + 10) + 1);
    do
    {
      v31 = *(v29 + 8 * (v30 - 1));
      *(v29 + 8 * (v30 - 1 + a2)) = v31;
      *(v31 + 8) = v30 - 1 + a2;
      *v31 = a3;
      --v30;
    }

    while (v30);
  }

  if (a2)
  {
    v32 = 0;
    if ((a2 + 1) <= 2u)
    {
      v33 = 2;
    }

    else
    {
      v33 = (a2 + 1);
    }

    v34 = v33 - 1;
    do
    {
      v35 = *(a1 + 240 + 8 * (v32 + 1 - a2 + *(a1 + 10)));
      *(a3 + 8 * v32 + 240) = v35;
      *(v35 + 8) = v32;
      *v35 = a3;
      ++v32;
    }

    while (v34 != v32);
  }

LABEL_27:
  *(a1 + 10) -= a2;
  *(a3 + 10) += a2;
}

void absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::split(unsigned __int8 *a1, int a2, uint64_t a3)
{
  if (a2 == 7)
  {
    LOBYTE(v5) = 0;
  }

  else if (a2)
  {
    v5 = a1[10] >> 1;
  }

  else
  {
    LOBYTE(v5) = a1[10] - 1;
  }

  *(a3 + 10) = v5;
  v6 = a1[10] - v5;
  a1[10] = v6;
  v7 = a1 + 16;
  if (*(a3 + 10))
  {
    v8 = a3 + 16;
    v9 = &a1[32 * v6 + 40];
    v10 = 32 * *(a3 + 10);
    do
    {
      v11 = *(v9 - 24);
      *(v8 + 16) = *(v9 - 1);
      *v8 = v11;
      *(v9 - 2) = 0;
      *(v9 - 1) = 0;
      *(v9 - 3) = 0;
      *(v8 + 24) = *v9;
      if (*(v9 - 1) < 0)
      {
        operator delete(*(v9 - 3));
      }

      v8 += 32;
      v9 += 32;
      v10 -= 32;
    }

    while (v10);
    v6 = a1[10];
  }

  v12 = v6 - 1;
  a1[10] = v12;
  v13 = *a1;
  v14 = a1[8];
  v15 = &v7[32 * v12];
  v16 = *(*a1 + 10);
  if (v16 > v14 && ((v16 - v14) & 0x7FFFFFFFFFFFFFFLL) != 0)
  {
    v17 = 32 * *(*a1 + 10);
    v18 = v17 + v13 - 16;
    v19 = 32 * v14 - v17;
    do
    {
      *(v18 + 32) = *v18;
      *(v18 + 48) = *(v18 + 16);
      *(v18 + 8) = 0;
      *(v18 + 16) = 0;
      *v18 = 0;
      *(v18 + 56) = *(v18 + 24);
      if (*(v18 + 23) < 0)
      {
        operator delete(*v18);
      }

      v18 -= 32;
      v19 += 32;
    }

    while (v19);
  }

  v20 = v13 + 32 * v14;
  v21 = *v15;
  *(v20 + 32) = *(v15 + 2);
  *(v20 + 16) = v21;
  *(v15 + 1) = 0;
  *(v15 + 2) = 0;
  *v15 = 0;
  *(v20 + 40) = *(v15 + 6);
  v22 = (*(v13 + 10))++ + 1;
  if (!*(v13 + 11) && v14 + 1 < v22)
  {
    v23 = v13 + 240;
    do
    {
      v24 = *(v23 + 8 * (v22 - 1));
      *(v23 + 8 * v22) = v24;
      *(v24 + 8) = v22;
    }

    while (v14 + 1 < --v22);
  }

  v26 = &v7[32 * a1[10]];
  if (v26[23] < 0)
  {
    operator delete(*v26);
  }

  *(*a1 + 8 * (a1[8] + 1) + 240) = a3;
  v27 = a1[11];
  if (!a1[11])
  {
    v28 = a1[10];
    do
    {
      v29 = *&a1[8 * ++v28 + 240];
      *(a3 + 240 + 8 * v27) = v29;
      *(v29 + 8) = v27;
      *v29 = a3;
      ++v27;
    }

    while (*(a3 + 10) >= v27);
  }
}

char *absl::lts_20240722::strings_internal::JoinAlgorithm<std::__wrap_iter<std::string *>,void>@<X0>(char *__src@<X0>, char *a2@<X1>, const void *a3@<X2>, size_t a4@<X3>, std::string *a5@<X8>)
{
  a5->__r_.__value_.__r.__words[0] = 0;
  a5->__r_.__value_.__l.__size_ = 0;
  a5->__r_.__value_.__r.__words[2] = 0;
  if (__src == a2)
  {
    return __src;
  }

  v8 = __src;
  v9 = __src[23];
  if ((v9 & 0x8000000000000000) != 0)
  {
    v9 = *(__src + 1);
  }

  v10 = __src + 24;
  if (__src + 24 != a2)
  {
    v11 = __src + 24;
    do
    {
      v12 = v11[23];
      if (v12 < 0)
      {
        v12 = *(v11 + 1);
      }

      v9 += a4 + v12;
      v11 += 24;
    }

    while (v11 != a2);
  }

  if (!v9)
  {
    return __src;
  }

  if (v9 >= 0x17 && (v13 = a5, std::string::__grow_by(a5, 0x16uLL, v9 - 22, 0, 0, 0, 0), a5 = v13, v13->__r_.__value_.__l.__size_ = 0, SHIBYTE(v13->__r_.__value_.__r.__words[2]) < 0))
  {
    v14 = v13->__r_.__value_.__r.__words[0];
    v13->__r_.__value_.__l.__size_ = v9;
  }

  else
  {
    *(&a5->__r_.__value_.__s + 23) = v9 & 0x7F;
    v14 = a5;
  }

  v14->__r_.__value_.__s.__data_[v9] = 0;
  v15 = *(v8 + 23);
  if ((a5->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = a5;
  }

  else
  {
    v16 = a5->__r_.__value_.__r.__words[0];
  }

  if ((v15 & 0x8000000000000000) == 0)
  {
    __src = memcpy(v16, v8, v15);
    v17 = *(v8 + 23);
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  __src = memcpy(v16, *v8, v8[1]);
  v17 = *(v8 + 23);
  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_18:
    v17 = v8[1];
  }

LABEL_19:
  if (v10 != a2)
  {
    v18 = v16 + v17;
    do
    {
      memcpy(v18, a3, a4);
      v19 = v10[23];
      if ((v19 & 0x8000000000000000) != 0)
      {
        v20 = &v18[a4];
        __src = memcpy(v20, *v10, *(v10 + 1));
        v21 = v10[23];
        if (v21 < 0)
        {
LABEL_26:
          v21 = *(v10 + 1);
        }
      }

      else
      {
        v20 = &v18[a4];
        __src = memcpy(v20, v10, v19);
        v21 = v10[23];
        if (v21 < 0)
        {
          goto LABEL_26;
        }
      }

      v18 = &v20[v21];
      v10 += 24;
    }

    while (v10 != a2);
  }

  return __src;
}

void sub_23CB15424(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }
}

void sub_23CB1556C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](&a11);
  *(v11 + 8) = v12;
  std::__exception_guard_exceptions<std::vector<std::string>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::anonymous namespace::InitializeDebugSolution(uint64_t this, const operations_research::sat::CpModelProto *a2, operations_research::sat::Model *a3)
{
  v3 = a2;
  v4 = this;
  v90 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 3);
  if (v5 <= 1)
  {
    if (*(a2 + 4) < 2uLL)
    {
      goto LABEL_70;
    }

    v20 = a2 + 40;
    v21 = &absl::lts_20240722::container_internal::kSooControl;
    if (*(a2 + 5) != &gtl::FastTypeId<operations_research::sat::SharedResponseManager>(void)::d)
    {
      v21 = 0;
    }

    if (!v21)
    {
      goto LABEL_70;
    }

LABEL_16:
    v22 = *(v20 + 1);
    if (!v22 || *(v22 + 688) == *(v22 + 696))
    {
      goto LABEL_70;
    }

    v23 = operations_research::sat::Model::GetOrCreate<operations_research::sat::DebugSolution>(a2);
    v24 = v23;
    if (v23 != (v22 + 688))
    {
      std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v23, *(v22 + 688), *(v22 + 696), (*(v22 + 696) - *(v22 + 688)) >> 3);
    }

    v25 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(v3);
    v26 = ((*(v25 + 48) - *(v25 + 40)) >> 3);
    LOBYTE(v82) = 0;
    std::vector<BOOL>::assign((v24 + 3), v26, &v82);
    v82 = 0;
    std::vector<long long>::assign(v24 + 6, v26, &v82);
    v86 = 0;
    v87 = 0;
    v88 = 0;
    v27 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(v3);
    v28 = v27;
    v29 = *v24;
    if (v24[1] == *v24)
    {
      if ((v87 - v86) >> 2)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v72 = v4;
      v73 = v3;
      v30 = 0;
      v31 = -1;
      v32 = 1;
      v74 = v27;
      v75 = v24;
      do
      {
        v34 = v32 - 1;
        if (v31 <= v32 - 1)
        {
          v35 = v32 - 1;
        }

        else
        {
          v35 = v31;
        }

        v36 = *(*(v28 + 6) + 4 * v35);
        if (v36 != -1)
        {
          v37 = (__PAIR64__(v36, v34) >> 31) ^ (*&v29[8 * v30] == 0);
          v38 = v87;
          if (v87 >= v88)
          {
            v40 = v86;
            v41 = v87 - v86;
            v42 = (v87 - v86) >> 2;
            v43 = v42 + 1;
            if ((v42 + 1) >> 62)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v44 = v88 - v86;
            if ((v88 - v86) >> 1 > v43)
            {
              v43 = v44 >> 1;
            }

            if (v44 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v45 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v45 = v43;
            }

            if (v45)
            {
              if (!(v45 >> 62))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            *(4 * v42) = v37;
            v39 = 4 * v42 + 4;
            memcpy(0, v40, v41);
            v86 = 0;
            v87 = v39;
            v88 = 0;
            if (v40)
            {
              operator delete(v40);
            }

            v28 = v74;
            v24 = v75;
          }

          else
          {
            *v87 = v37;
            v39 = (v38 + 4);
          }

          v87 = v39;
          v29 = *v24;
        }

        v46 = *(*v28 + 4 * v35);
        if (v46 != -1)
        {
          v47 = v46 ^ (v34 >> 31);
          *&v24[3][(v46 >> 3) & 0x1FFFFFFFFFFFFFF8] |= (1 << v47) | (1 << (v47 ^ 1u));
          v48 = *&v29[8 * v30];
          v49 = v24[6];
          *&v49[8 * v47] = v48;
          *&v49[8 * (v47 ^ 1)] = -v48;
        }

        v30 = v32;
        v33 = (v24[1] - v29) >> 3;
        ++v32;
        --v31;
      }

      while (v33 > v30);
      v4 = v72;
      v3 = v73;
      if (v33 != (v87 - v86) >> 2)
      {
LABEL_49:
        v50 = *(v3 + 3);
        if (v50 > 1)
        {
          v51 = 0;
          _X11 = *(v3 + 5);
          __asm { PRFM            #4, [X11] }

          v54 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ObjectiveDefinition>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ObjectiveDefinition>(void)::d));
          v55 = vdup_n_s8(v54 & 0x7F);
          v56 = ((v54 >> 7) ^ (_X11 >> 12)) & v50;
          v57 = *(_X11 + v56);
          v58 = vceq_s8(v57, v55);
          if (!v58)
          {
            goto LABEL_56;
          }

LABEL_53:
          v59 = *(v3 + 6);
          while (1)
          {
            v60 = (v56 + (__clz(__rbit64(v58)) >> 3)) & v50;
            if (*(v59 + 16 * v60) == &gtl::FastTypeId<operations_research::sat::ObjectiveDefinition>(void)::d)
            {
              break;
            }

            v58 &= ((v58 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v58)
            {
LABEL_56:
              while (!*&vceq_s8(v57, 0x8080808080808080))
              {
                v51 += 8;
                v56 = (v51 + v56) & v50;
                v57 = *(_X11 + v56);
                v58 = vceq_s8(v57, v55);
                if (v58)
                {
                  goto LABEL_53;
                }
              }

LABEL_69:
              v69 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(v3);
              operations_research::sat::CpModelMapping::CpModelMapping(&v82, v28);
              v83 = v69;
              operations_research::sat::DebugSolution::DebugSolution(&v84, v24);
              v85 = v3;
              operations_research::sat::CpModelMapping::CpModelMapping(&v78, &v82);
              v79 = v83;
              operations_research::sat::DebugSolution::DebugSolution(&v80, &v84);
              v81 = v85;
              operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(v3);
              operations_research::sat::CpModelMapping::CpModelMapping(v76, &v78);
              v76[23] = v79;
              operations_research::sat::DebugSolution::DebugSolution(v77, &v80);
              v77[9] = v81;
              v89 = 0;
              operator new();
            }
          }

          v61 = (v59 + 16 * v60);
          if (!(_X11 + v60))
          {
            goto LABEL_69;
          }
        }

        else
        {
          if (*(v3 + 4) < 2uLL)
          {
            goto LABEL_69;
          }

          v61 = v3 + 40;
          v62 = &absl::lts_20240722::container_internal::kSooControl;
          if (*(v3 + 5) != &gtl::FastTypeId<operations_research::sat::ObjectiveDefinition>(void)::d)
          {
            v62 = 0;
          }

          if (!v62)
          {
            goto LABEL_69;
          }
        }

        v63 = *(v61 + 1);
        if (v63)
        {
          v64 = *(v63 + 16);
          if (*(v4 + 128))
          {
            v65 = *(v4 + 128);
          }

          else
          {
            v65 = &operations_research::sat::_CpObjectiveProto_default_instance_;
          }

          v66 = v24[1] - *v24;
          v67 = operations_research::sat::ComputeInnerObjective(v65, *v24);
          *&v24[3][(v64 >> 3) & 0x1FFFFFFFFFFFFFF8] |= (1 << v64) | (1 << (v64 ^ 1u));
          v68 = v24[6];
          *&v68[8 * v64] = v67;
          *&v68[(v64 ^ 1) << 32 >> 29] = -v67;
        }

        goto LABEL_69;
      }
    }

    if ((*(v4 + 16) & 1) == 0)
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(&v82, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 725);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v82, "Loaded pure Boolean debugging solution.", 0x27uLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v82);
      v71 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(v3);
      operations_research::sat::SatSolver::LoadDebugSolution(v71, &v86);
    }

    goto LABEL_49;
  }

  v6 = 0;
  _X11 = *(a2 + 5);
  __asm { PRFM            #4, [X11] }

  v13 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedResponseManager>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedResponseManager>(void)::d));
  v14 = vdup_n_s8(v13 & 0x7F);
  v15 = ((v13 >> 7) ^ (_X11 >> 12)) & v5;
  v16 = *(_X11 + v15);
  v17 = vceq_s8(v16, v14);
  if (!v17)
  {
    goto LABEL_8;
  }

LABEL_5:
  v18 = *(a2 + 6);
  do
  {
    v19 = (v15 + (__clz(__rbit64(v17)) >> 3)) & v5;
    if (*(v18 + 16 * v19) == &gtl::FastTypeId<operations_research::sat::SharedResponseManager>(void)::d)
    {
      v20 = (v18 + 16 * v19);
      if (!(_X11 + v19))
      {
        goto LABEL_70;
      }

      goto LABEL_16;
    }

    v17 &= ((v17 & 0x8080808080808080) - 1) & 0x8080808080808080;
  }

  while (v17);
LABEL_8:
  while (!*&vceq_s8(v16, 0x8080808080808080))
  {
    v6 += 8;
    v15 = (v6 + v15) & v5;
    v16 = *(_X11 + v15);
    v17 = vceq_s8(v16, v14);
    if (v17)
    {
      goto LABEL_5;
    }
  }

LABEL_70:
  v70 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_23CB16314(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::anonymous namespace::anonymous namespace::GetOrCreateVariableLinkedToSumOf(unsigned int **a1, int a2, int a3, void *a4)
{
  v72 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v7 = a1[1];
  if (v6 != v7)
  {
    if (v7 - v6 == 16)
    {
      v8 = *(v6 + 1);
      if (v8 == -1)
      {
        ConstantIntegerVariable = *v6 ^ 1;
        goto LABEL_81;
      }

      if (v8 == 1)
      {
        ConstantIntegerVariable = *v6;
        goto LABEL_81;
      }
    }

    v63 = 0;
    v64 = 0;
    v65 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v10 = *a1;
    v11 = a1[1];
    if (*a1 == v11)
    {
      v36 = 0;
      v31 = 0;
      v35 = a4;
      v33 = a3;
      v37 = 0;
      v38 = 0;
      v39 = 1;
    }

    else
    {
      do
      {
        v13 = *v10;
        v14 = *(v10 + 1);
        v15 = v64;
        if (v64 >= v65)
        {
          v17 = v63;
          v18 = v64 - v63;
          v19 = (v64 - v63) >> 2;
          v20 = v19 + 1;
          if ((v19 + 1) >> 62)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          v21 = v65 - v63;
          if ((v65 - v63) >> 1 > v20)
          {
            v20 = v21 >> 1;
          }

          if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v22 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v22 = v20;
          }

          if (v22)
          {
            if (!(v22 >> 62))
            {
              operator new();
            }

LABEL_82:
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *(4 * v19) = v13;
          v16 = 4 * v19 + 4;
          memcpy(0, v17, v18);
          v63 = 0;
          v65 = 0;
          if (v17)
          {
            operator delete(v17);
          }
        }

        else
        {
          *v64 = v13;
          v16 = (v15 + 4);
        }

        v64 = v16;
        v23 = v61;
        if (v61 < v62)
        {
          *v61 = v14;
          v12 = (v23 + 8);
        }

        else
        {
          v24 = v60;
          v25 = v61 - v60;
          v26 = (v61 - v60) >> 3;
          v27 = v26 + 1;
          if ((v26 + 1) >> 61)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          v28 = v62 - v60;
          if ((v62 - v60) >> 2 > v27)
          {
            v27 = v28 >> 2;
          }

          if (v28 >= 0x7FFFFFFFFFFFFFF8)
          {
            v29 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v29 = v27;
          }

          if (v29)
          {
            if (!(v29 >> 61))
            {
              operator new();
            }

            goto LABEL_82;
          }

          *(8 * v26) = v14;
          v12 = 8 * v26 + 8;
          memcpy(0, v24, v25);
          v60 = 0;
          v62 = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        v61 = v12;
        v10 += 4;
      }

      while (v10 != v11);
      v32 = v64;
      v31 = v65;
      if (v64 < v65)
      {
        ConstantIntegerVariable = VariableWithTightBound;
        v33 = a3;
        *v64 = VariableWithTightBound;
        v34 = v32 + 4;
        v35 = a4;
LABEL_54:
        v64 = v34;
        v45 = v61;
        if (v61 >= v62)
        {
          v47 = v60;
          v48 = v61 - v60;
          v49 = (v61 - v60) >> 3;
          v50 = v49 + 1;
          if ((v49 + 1) >> 61)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          v51 = v62 - v60;
          if ((v62 - v60) >> 2 > v50)
          {
            v50 = v51 >> 2;
          }

          if (v51 >= 0x7FFFFFFFFFFFFFF8)
          {
            v52 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v52 = v50;
          }

          if (v52)
          {
            if (!(v52 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v53 = (8 * v49);
          v54 = &v53[-((v61 - v60) >> 3)];
          *v53 = -1;
          v46 = (v53 + 1);
          memcpy(v54, v47, v48);
          v60 = v54;
          v62 = 0;
          if (v47)
          {
            operator delete(v47);
          }
        }

        else
        {
          *v61 = -1;
          v46 = v45 + 8;
        }

        v61 = v46;
        if (*(operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(v35) + 884) < ((v64 - v63) >> 2))
        {
          operations_research::sat::SplitAndLoadIntermediateConstraints(a2, v33, &v63, &v60, v35);
        }

        if (a2)
        {
          memset(__p, 0, sizeof(__p));
          if (v61 != v60)
          {
            if (((v61 - v60) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          operations_research::sat::WeightedSumLowerOrEqual<std::vector<long long>>(&v63, __p, v68);
        }

        if (v33)
        {
          operations_research::sat::WeightedSumLowerOrEqual<std::vector<long long>>(&v63, &v60, v67);
        }

        if (v60)
        {
          v61 = v60;
          operator delete(v60);
        }

        if (v63)
        {
          v64 = v63;
          operator delete(v63);
        }

        goto LABEL_81;
      }

      v36 = v63;
      v35 = a4;
      v33 = a3;
      v37 = v64 - v63;
      v38 = (v64 - v63) >> 2;
      v39 = v38 + 1;
      if ((v38 + 1) >> 62)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }
    }

    v40 = v31 - v36;
    if (v40 >> 1 > v39)
    {
      v39 = v40 >> 1;
    }

    if (v40 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v41 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v41 = v39;
    }

    ConstantIntegerVariable = VariableWithTightBound;
    if (v41)
    {
      if (!(v41 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v42 = v38;
    v43 = (4 * v38);
    v44 = &v43[-v42];
    *v43 = VariableWithTightBound;
    v34 = (v43 + 1);
    memcpy(v44, v36, v37);
    v63 = v44;
    v65 = 0;
    if (v36)
    {
      operator delete(v36);
    }

    goto LABEL_54;
  }

  v69 = &unk_284F3F018;
  v70 = 0;
  v71 = &v69;
  v30 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a4);
  ConstantIntegerVariable = operations_research::sat::IntegerTrail::GetOrCreateConstantIntegerVariable(v30, v70);
  if (v71 == &v69)
  {
    (*(*v71 + 4))(v71);
  }

  else if (v71)
  {
    (*(*v71 + 5))(v71);
  }

LABEL_81:
  v55 = *MEMORY[0x277D85DE8];
  return ConstantIntegerVariable;
}

void sub_23CB16C3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
    v26 = a12;
    if (!a12)
    {
LABEL_3:
      v27 = a15;
      if (a15)
      {
LABEL_8:
        operator delete(v27);
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v26 = a12;
    if (!a12)
    {
      goto LABEL_3;
    }
  }

  operator delete(v26);
  v27 = a15;
  if (a15)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t operations_research::sat::anonymous namespace::anonymous namespace::GetOrCreateVariableWithTightBound(unsigned int *a1, unsigned int *a2, void *a3)
{
  v63 = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
    v60 = &unk_284F3F018;
    v61 = 0;
    v62 = &v60;
    v46 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a3);
    result = operations_research::sat::IntegerTrail::GetOrCreateConstantIntegerVariable(v46, v61);
    v43 = v62;
    if (v62 != &v60)
    {
      goto LABEL_40;
    }

    goto LABEL_43;
  }

  if (a2 - a1 != 16)
  {
LABEL_6:
    v8 = 0;
    v9 = 0;
    v10 = (a3 + 5);
    v11 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d));
    v12 = v11 >> 7;
    v13 = vdup_n_s8(v11 & 0x7F);
    v14 = a3[3];
    do
    {
      v26 = *a1;
      v57 = &unk_284F3D388;
      v58 = v26;
      v59 = &v57;
      if (v14 > 1)
      {
        v27 = 0;
        _X5 = a3[5];
        v29 = a3[6];
        __asm { PRFM            #4, [X5] }

        v35 = (v12 ^ (_X5 >> 12)) & v14;
        v36 = *(_X5 + v35);
        v3 = vceq_s8(v36, v13);
        if (!v3)
        {
          goto LABEL_28;
        }

        do
        {
LABEL_26:
          v4 = ((v35 + (__clz(__rbit64(v3)) >> 3)) & v14);
          if (*(v29 + 16 * *&v4) == &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d)
          {
            v3 = v29 + 16 * *&v4;
            goto LABEL_32;
          }

          v3 &= ((v3 & 0x8080808080808080) - 1) & 0x8080808080808080;
        }

        while (v3);
LABEL_28:
        while (1)
        {
          v4 = vceq_s8(v36, 0x8080808080808080);
          if (v4)
          {
            break;
          }

          v27 += 8;
          v35 = (v27 + v35) & v14;
          v36 = *(_X5 + v35);
          v3 = vceq_s8(v36, v13);
          if (v3)
          {
            goto LABEL_26;
          }
        }
      }

      else if (a3[4] >= 2uLL)
      {
        if (*v10 == &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d)
        {
          v3 = (a3 + 5);
        }

        else
        {
          v3 = v8;
        }
      }

LABEL_32:
      v37 = 8 * v26;
      v38 = *(*(*(v3 + 8) + 40) + v37);
      v54 = &unk_284F3F0A8;
      v55 = v26;
      v56 = &v54;
      if (v14 > 1)
      {
        v17 = 0;
        _X6 = a3[5];
        v40 = a3[6];
        __asm { PRFM            #4, [X6] }

        for (i = v12 ^ (_X6 >> 12); ; i = v17 + v3)
        {
          v3 = i & v14;
          v15 = *(_X6 + v3);
          v4 = vceq_s8(v15, v13);
          if (v4)
          {
            break;
          }

LABEL_10:
          if (vceq_s8(v15, 0x8080808080808080))
          {
            goto LABEL_13;
          }

          v17 += 8;
        }

        while (1)
        {
          v16 = (v3 + (__clz(__rbit64(*&v4)) >> 3)) & v14;
          if (*(v40 + 16 * v16) == &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d)
          {
            break;
          }

          *&v4 &= ((*&v4 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!*&v4)
          {
            goto LABEL_10;
          }
        }

        v4 = (v40 + 16 * v16);
      }

      else if (a3[4] >= 2uLL)
      {
        if (*v10 == &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d)
        {
          v4 = (a3 + 5);
        }

        else
        {
          v4 = v8;
        }
      }

LABEL_13:
      v19 = *(*(*(*&v4 + 8) + 40) + (v37 ^ 8));
      v20 = *(a1 + 1);
      v21 = v20 * v38;
      v22 = v19 * v20;
      v23 = -(v19 * v20);
      if (v23 < v21)
      {
        v24 = -v22;
      }

      else
      {
        v24 = v21;
      }

      v8 += v24;
      if (v21 <= v23)
      {
        v25 = -v22;
      }

      else
      {
        v25 = v21;
      }

      v9 += v25;
      a1 += 4;
    }

    while (a1 != a2);
    v50 = &unk_284F3F128;
    v51 = v8;
    v52 = v9;
    v53 = &v50;
    if (v8 > v9)
    {
      absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v8, v9, "lb <= ub");
    }

    v42 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a3);
    result = operations_research::sat::IntegerTrail::AddIntegerVariable(v42, v51, v52);
    v43 = v53;
    if (v53 != &v50)
    {
LABEL_40:
      if (v43)
      {
        v44 = result;
        (*(*v43 + 5))(v43);
        result = v44;
        v45 = *MEMORY[0x277D85DE8];
        return result;
      }

      goto LABEL_44;
    }

LABEL_43:
    v47 = result;
    (*(*v43 + 4))(v43);
    result = v47;
LABEL_44:
    v48 = *MEMORY[0x277D85DE8];
    return result;
  }

  v5 = *(a1 + 1);
  if (v5 != -1)
  {
    if (v5 == 1)
    {
      result = *a1;
      v7 = *MEMORY[0x277D85DE8];
      return result;
    }

    goto LABEL_6;
  }

  result = *a1 ^ 1;
  v49 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CB1715C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::function<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> ()(operations_research::sat::Model *)>::~function(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::ObjectiveDefinition>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ObjectiveDefinition>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ObjectiveDefinition>(void)::d));
    v9 = vdup_n_s8(v8 & 0x7F);
    v10 = ((v8 >> 7) ^ (_X11 >> 12)) & v1;
    v11 = *(_X11 + v10);
    v12 = vceq_s8(v11, v9);
    if (!v12)
    {
      goto LABEL_8;
    }

LABEL_5:
    v13 = a1[6];
    while (1)
    {
      v14 = (v10 + (__clz(__rbit64(v12)) >> 3)) & v1;
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::ObjectiveDefinition>(void)::d)
      {
        break;
      }

      v12 &= ((v12 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v12)
      {
LABEL_8:
        while (!*&vceq_s8(v11, 0x8080808080808080))
        {
          v2 += 8;
          v10 = (v2 + v10) & v1;
          v11 = *(_X11 + v10);
          v12 = vceq_s8(v11, v9);
          if (v12)
          {
            goto LABEL_5;
          }
        }

LABEL_20:
        operator new();
      }
    }

    v15 = (v13 + 16 * v14);
    if (!(_X11 + v14))
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (a1[4] < 2uLL)
    {
      goto LABEL_20;
    }

    v17 = a1[5];
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::ObjectiveDefinition>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::ObjectiveDefinition>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
    if (_ZF)
    {
      v15 = a1 + 5;
    }

    if (!v19)
    {
      goto LABEL_20;
    }
  }

  return v15[1];
}

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::SearchHeuristics>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SearchHeuristics>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SearchHeuristics>(void)::d));
    v9 = vdup_n_s8(v8 & 0x7F);
    v10 = ((v8 >> 7) ^ (_X11 >> 12)) & v1;
    v11 = *(_X11 + v10);
    v12 = vceq_s8(v11, v9);
    if (!v12)
    {
      goto LABEL_8;
    }

LABEL_5:
    v13 = a1[6];
    while (1)
    {
      v14 = (v10 + (__clz(__rbit64(v12)) >> 3)) & v1;
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::SearchHeuristics>(void)::d)
      {
        break;
      }

      v12 &= ((v12 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v12)
      {
LABEL_8:
        while (!*&vceq_s8(v11, 0x8080808080808080))
        {
          v2 += 8;
          v10 = (v2 + v10) & v1;
          v11 = *(_X11 + v10);
          v12 = vceq_s8(v11, v9);
          if (v12)
          {
            goto LABEL_5;
          }
        }

LABEL_20:
        operator new();
      }
    }

    v15 = (v13 + 16 * v14);
    if (!(_X11 + v14))
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (a1[4] < 2uLL)
    {
      goto LABEL_20;
    }

    v17 = a1[5];
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::SearchHeuristics>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::SearchHeuristics>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
    if (_ZF)
    {
      v15 = a1 + 5;
    }

    if (!v19)
    {
      goto LABEL_20;
    }
  }

  return v15[1];
}

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::DebugSolution>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::DebugSolution>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::DebugSolution>(void)::d));
    v9 = vdup_n_s8(v8 & 0x7F);
    v10 = ((v8 >> 7) ^ (_X11 >> 12)) & v1;
    v11 = *(_X11 + v10);
    v12 = vceq_s8(v11, v9);
    if (!v12)
    {
      goto LABEL_8;
    }

LABEL_5:
    v13 = a1[6];
    while (1)
    {
      v14 = (v10 + (__clz(__rbit64(v12)) >> 3)) & v1;
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::DebugSolution>(void)::d)
      {
        break;
      }

      v12 &= ((v12 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v12)
      {
LABEL_8:
        while (!*&vceq_s8(v11, 0x8080808080808080))
        {
          v2 += 8;
          v10 = (v2 + v10) & v1;
          v11 = *(_X11 + v10);
          v12 = vceq_s8(v11, v9);
          if (v12)
          {
            goto LABEL_5;
          }
        }

LABEL_20:
        operator new();
      }
    }

    v15 = (v13 + 16 * v14);
    if (!(_X11 + v14))
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (a1[4] < 2uLL)
    {
      goto LABEL_20;
    }

    v17 = a1[5];
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::DebugSolution>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::DebugSolution>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
    if (_ZF)
    {
      v15 = a1 + 5;
    }

    if (!v19)
    {
      goto LABEL_20;
    }
  }

  return v15[1];
}

void operations_research::sat::anonymous namespace::InitializeDebugSolution(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0::~$_0(operations_research::sat::CpModelMapping *this)
{
  v2 = *(this + 30);
  if (v2)
  {
    *(this + 31) = v2;
    operator delete(v2);
  }

  v3 = *(this + 27);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 24);
  if (v4)
  {
    *(this + 25) = v4;
    operator delete(v4);
  }

  operations_research::sat::CpModelMapping::~CpModelMapping(this);
}

void *operations_research::sat::Model::Delete<operations_research::sat::DebugSolution>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F3EE88;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 48);
    if (v3)
    {
      *(v1 + 56) = v3;
      operator delete(v3);
    }

    v4 = *(v1 + 24);
    if (v4)
    {
      operator delete(v4);
    }

    v5 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v5;
      operator delete(v5);
    }

    MEMORY[0x23EED9460](v1, 0x1030C4020C51B62);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::DebugSolution>::~Delete(void *a1)
{
  v1 = a1[1];
  *a1 = &unk_284F3EE88;
  a1[1] = 0;
  if (v1)
  {
    v2 = *(v1 + 48);
    if (v2)
    {
      *(v1 + 56) = v2;
      operator delete(v2);
    }

    v3 = *(v1 + 24);
    if (v3)
    {
      operator delete(v3);
    }

    v4 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v4;
      operator delete(v4);
    }

    MEMORY[0x23EED9460](v1, 0x1030C4020C51B62);
  }

  JUMPOUT(0x23EED9460);
}

operations_research::sat::CpModelMapping *operations_research::sat::CpModelMapping::CpModelMapping(operations_research::sat::CpModelMapping *this, const operations_research::sat::CpModelMapping *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v4 = *(a2 + 1);
  if (v4 != *a2)
  {
    if (((v4 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  v6 = *(a2 + 3);
  v5 = *(a2 + 4);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  v8 = *(a2 + 6);
  v7 = *(a2 + 7);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  v10 = *(a2 + 9);
  v9 = *(a2 + 10);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  v12 = *(a2 + 12);
  v11 = *(a2 + 13);
  if (v11 != v12)
  {
    if (((v11 - v12) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::ConstraintProto const*>,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Eq,std::allocator<operations_research::sat::ConstraintProto const*>>::raw_hash_set(this + 15, a2 + 15);
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::ConstraintProto const*>,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Eq,std::allocator<operations_research::sat::ConstraintProto const*>>::raw_hash_set(this + 19, a2 + 19);
  return this;
}

void sub_23CB17FE4(_Unwind_Exception *exception_object)
{
  if (v1[15] >= 2)
  {
    operations_research::sat::CpModelMapping::CpModelMapping(v1);
  }

  v7 = *v5;
  if (*v5)
  {
    v1[13] = v7;
    operator delete(v7);
    v8 = *v4;
    if (!*v4)
    {
LABEL_5:
      v9 = *v3;
      if (!*v3)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v8 = *v4;
    if (!*v4)
    {
      goto LABEL_5;
    }
  }

  v1[10] = v8;
  operator delete(v8);
  v9 = *v3;
  if (!*v3)
  {
LABEL_6:
    v10 = *v2;
    if (!*v2)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  v1[7] = v9;
  operator delete(v9);
  v10 = *v2;
  if (!*v2)
  {
LABEL_7:
    v11 = *v1;
    if (!*v1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_13:
  v1[4] = v10;
  operator delete(v10);
  v11 = *v1;
  if (!*v1)
  {
LABEL_9:
    _Unwind_Resume(exception_object);
  }

LABEL_8:
  v1[1] = v11;
  operator delete(v11);
  goto LABEL_9;
}

void sub_23CB18084()
{
  if (*v0)
  {
    JUMPOUT(0x23CB18050);
  }

  JUMPOUT(0x23CB18018);
}

void sub_23CB18094()
{
  if (*v0)
  {
    JUMPOUT(0x23CB18060);
  }

  JUMPOUT(0x23CB18020);
}

void sub_23CB180A4()
{
  if (*v0)
  {
    JUMPOUT(0x23CB18070);
  }

  JUMPOUT(0x23CB18028);
}

void sub_23CB180B4()
{
  if (!*v0)
  {
    JUMPOUT(0x23CB18038);
  }

  JUMPOUT(0x23CB18030);
}

uint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::ConstraintProto const*>,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Eq,std::allocator<operations_research::sat::ConstraintProto const*>>::raw_hash_set(uint64_t *a1, unint64_t *a2)
{
  v4 = a2[1] >> 1;
  if (v4 == 7)
  {
    v5 = 8;
  }

  else
  {
    v5 = (v4 - 1) / 7 + v4;
  }

  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::ConstraintProto const*>,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Eq,std::allocator<operations_research::sat::ConstraintProto const*>>::raw_hash_set(a1, v5);
  v6 = a2[1];
  if (v6 >= 2)
  {
    if (v6 > 3)
    {
      v10 = v6 >> 1;
      v11 = *a1;
      if (*a1 > 8)
      {
        v23 = *a2;
        v26 = a2 + 2;
        v24 = a2[2];
        v25 = v26[1];
        if (v23 >= 7)
        {
          v44 = v6 >> 1;
          do
          {
            v45 = *v24 & 0x8080808080808080;
            if (v45 != 0x8080808080808080)
            {
              v46 = v45 ^ 0x8080808080808080;
              do
              {
                v47 = __clz(__rbit64(v46)) >> 3;
                v48 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(v25 + 8 * v47)) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(v25 + 8 * v47)))) + *(v25 + 8 * v47);
                first_non = absl::lts_20240722::container_internal::find_first_non_full<void>(a1, ((v48 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v48));
                v50 = *(v24 + v47);
                v51 = a1[2];
                *(v51 + first_non) = v50;
                *(v51 + (*a1 & (first_non - 7)) + (*a1 & 7)) = v50;
                *(a1[3] + 8 * first_non) = *(v25 + 8 * v47);
                --v44;
                v46 &= v46 - 1;
              }

              while (v46);
            }

            ++v24;
            v25 += 64;
          }

          while (v44);
        }

        else
        {
          v27 = *(v24 + v23) & 0x8080808080808080;
          if (v27 != 0x8080808080808080)
          {
            v28 = v24 - 1;
            v29 = v25 - 8;
            v30 = v27 ^ 0x8080808080808080;
            do
            {
              v31 = __clz(__rbit64(v30)) >> 3;
              v32 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(v29 + 8 * v31)) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(v29 + 8 * v31)))) + *(v29 + 8 * v31);
              v33 = absl::lts_20240722::container_internal::find_first_non_full<void>(a1, ((v32 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v32));
              v34 = v28[v31];
              v35 = a1[2];
              *(v35 + v33) = v34;
              *(v35 + (*a1 & (v33 - 7)) + (*a1 & 7)) = v34;
              *(a1[3] + 8 * v33) = *(v29 + 8 * v31);
              v30 &= v30 - 1;
            }

            while (v30);
          }
        }
      }

      else
      {
        v12 = (a1[2] >> 12) | 1;
        v14 = a2[2];
        v13 = a2[3];
        if (*a2 >= 7)
        {
          v38 = *a1;
          do
          {
            v39 = *v14 & 0x8080808080808080;
            if (v39 != 0x8080808080808080)
            {
              v40 = v39 ^ 0x8080808080808080;
              do
              {
                v41 = __clz(__rbit64(v40)) >> 3;
                v38 = (v38 + v12) & v11;
                v42 = *(v14 + v41);
                v43 = a1[2];
                *(v43 + v38) = v42;
                *(v43 + (v11 & (v38 - 7)) + (v11 & 7)) = v42;
                *(a1[3] + 8 * v38) = *(v13 + 8 * v41);
                --v10;
                v40 &= v40 - 1;
              }

              while (v40);
            }

            ++v14;
            v13 += 64;
          }

          while (v10);
        }

        else
        {
          v15 = *(v14 + *a2) & 0x8080808080808080;
          if (v15 != 0x8080808080808080)
          {
            v16 = v14 - 1;
            v17 = v13 - 8;
            v18 = v15 ^ 0x8080808080808080;
            v19 = *a1;
            do
            {
              v20 = __clz(__rbit64(v18)) >> 3;
              v19 = (v19 + v12) & v11;
              v21 = v16[v20];
              v22 = a1[2];
              *(v22 + v19) = v21;
              *(v22 + (v11 & (v19 - 7)) + (v11 & 7)) = v21;
              *(a1[3] + 8 * v19) = *(v17 + 8 * v20);
              v18 &= v18 - 1;
            }

            while (v18);
          }
        }
      }

      v36 = a1[2];
      a1[1] = v6 & 0xFFFFFFFFFFFFFFFELL | a1[1] & 1;
      *(v36 - 8) -= v6 >> 1;
    }

    else
    {
      a1[1] = 2;
      v7 = (a2 + 2);
      if (*a2 >= 2)
      {
        v8 = a2[2];
        v7 = a2[3];
        if (*v8 <= -2)
        {
          do
          {
            v9 = __clz(__rbit64((*v8 | ~(*v8 >> 7)) & 0x101010101010101)) >> 3;
            v8 = (v8 + v9);
            v7 += v9;
          }

          while (*v8 < -1);
        }
      }

      a1[2] = *v7;
    }
  }

  return a1;
}

void sub_23CB1849C(_Unwind_Exception *exception_object)
{
  if (*v1 >= 2uLL)
  {
    operator delete((v1[2] - (v1[1] & 1) - 8));
  }

  _Unwind_Resume(exception_object);
}

double absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::ConstraintProto const*>,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Eq,std::allocator<operations_research::sat::ConstraintProto const*>>::raw_hash_set(uint64_t *a1, unint64_t a2)
{
  *&result = 1;
  *a1 = xmmword_23CE306D0;
  if (a2 >= 2)
  {
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::ConstraintProto const*>,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Eq,std::allocator<operations_research::sat::ConstraintProto const*>>::resize_impl(a1, 0xFFFFFFFFFFFFFFFFLL >> __clz(a2));
  }

  return result;
}

void *operations_research::sat::DebugSolution::DebugSolution(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = a2[1];
  if (v4 != *a2)
  {
    if (((v4 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  std::vector<BOOL>::vector(a1 + 3, (a2 + 3));
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  v6 = a2[6];
  v5 = a2[7];
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return a1;
}

void sub_23CB18608(_Unwind_Exception *a1)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void *std::__function::__func<operations_research::sat::anonymous namespace::InitializeDebugSolution(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::InitializeDebugSolution(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0>,BOOL ()(absl::lts_20240722::Span<operations_research::sat::Literal const>)>::~__func(void *a1)
{
  *a1 = &unk_284F3EEC0;
  v2 = a1[31];
  if (v2)
  {
    a1[32] = v2;
    operator delete(v2);
  }

  v3 = a1[28];
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[25];
  if (v4)
  {
    a1[26] = v4;
    operator delete(v4);
  }

  operations_research::sat::CpModelMapping::~CpModelMapping((a1 + 1));
  return a1;
}

void std::__function::__func<operations_research::sat::anonymous namespace::InitializeDebugSolution(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::InitializeDebugSolution(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0>,BOOL ()(absl::lts_20240722::Span<operations_research::sat::Literal const>)>::~__func(void *a1)
{
  *a1 = &unk_284F3EEC0;
  v2 = a1[31];
  if (v2)
  {
    a1[32] = v2;
    operator delete(v2);
  }

  v3 = a1[28];
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[25];
  if (v4)
  {
    a1[26] = v4;
    operator delete(v4);
  }

  operations_research::sat::CpModelMapping::~CpModelMapping((a1 + 1));

  JUMPOUT(0x23EED9460);
}

void sub_23CB18914(_Unwind_Exception *a1)
{
  operations_research::sat::CpModelMapping::~CpModelMapping(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *std::__function::__func<operations_research::sat::anonymous namespace::InitializeDebugSolution(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::InitializeDebugSolution(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0>,BOOL ()(absl::lts_20240722::Span<operations_research::sat::Literal const>)>::__clone(void *a1, void *a2)
{
  *a2 = &unk_284F3EEC0;
  operations_research::sat::CpModelMapping::CpModelMapping((a2 + 1), (a1 + 1));
  a2[24] = a1[24];
  result = operations_research::sat::DebugSolution::DebugSolution(a2 + 25, a1 + 25);
  a2[34] = a1[34];
  return result;
}

void std::__function::__func<operations_research::sat::anonymous namespace::InitializeDebugSolution(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::InitializeDebugSolution(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0>,BOOL ()(absl::lts_20240722::Span<operations_research::sat::Literal const>)>::destroy(void *a1)
{
  v2 = a1[31];
  if (v2)
  {
    a1[32] = v2;
    operator delete(v2);
  }

  v3 = a1[28];
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[25];
  if (v4)
  {
    a1[26] = v4;
    operator delete(v4);
  }

  operations_research::sat::CpModelMapping::~CpModelMapping((a1 + 1));
}

void std::__function::__func<operations_research::sat::anonymous namespace::InitializeDebugSolution(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::InitializeDebugSolution(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0>,BOOL ()(absl::lts_20240722::Span<operations_research::sat::Literal const>)>::destroy_deallocate(void *a1)
{
  v2 = a1[31];
  if (v2)
  {
    a1[32] = v2;
    operator delete(v2);
  }

  v3 = a1[28];
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[25];
  if (v4)
  {
    a1[26] = v4;
    operator delete(v4);
  }

  operations_research::sat::CpModelMapping::~CpModelMapping((a1 + 1));

  operator delete(a1);
}

uint64_t std::__function::__func<operations_research::sat::anonymous namespace::InitializeDebugSolution(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::InitializeDebugSolution(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0>,BOOL ()(absl::lts_20240722::Span<operations_research::sat::Literal const>)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat12_GLOBAL__N_123InitializeDebugSolutionERKNS0_12CpModelProtoEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat12_GLOBAL__N_123InitializeDebugSolutionERKNS0_12CpModelProtoEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat12_GLOBAL__N_123InitializeDebugSolutionERKNS0_12CpModelProtoEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat12_GLOBAL__N_123InitializeDebugSolutionERKNS0_12CpModelProtoEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t operations_research::sat::anonymous namespace::InitializeDebugSolution(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_1::operator()(uint64_t a1, int *a2, uint64_t a3, int *a4, uint64_t a5)
{
  v5 = a1;
  v72[0] = a2;
  v72[1] = a3;
  v70 = a4;
  v71 = a5;
  if ((a3 & 0x3FFFFFFFFFFFFFFFLL) == 0)
  {
    v34 = a4;
    v35 = 0;
    v8 = 0;
    v7 = 0;
    if ((a5 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_58;
  }

  v6 = a2;
  v7 = 0;
  v8 = 0;
  v59 = &a2[a3];
  while (1)
  {
    v9 = *v6;
    v10 = *(v5 + 72);
    v63 = *v6;
    if (*v6 >> 1 >= ((*(v5 + 80) - v10) >> 2))
    {
      break;
    }

    v11 = *(v10 + 4 * (v9 >> 1));
    if (v11 == -1)
    {
      break;
    }

    v12 = v7;
    v13 = v7 >> 5;
    if (((v7 >> 5) + 1) >> 59)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    if (v7 >> 5 != -1)
    {
      if (!(((v7 >> 5) + 1) >> 59))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v33 = 32 * v13;
    *v33 = v9;
    *(v33 + 8) = -1;
    v8 = 0;
    *(v33 + 16) = 0;
    *(v33 + 24) = v11;
    v7 = 32 * v13 + 32;
    memcpy(0, 0, v12);
    v5 = a1;
    if (*(*(a1 + 192) + 8 * v11) == ((v63 & 1) == 0))
    {
      goto LABEL_32;
    }

LABEL_29:
    if (++v6 == v59)
    {
      v35 = 0;
      goto LABEL_35;
    }
  }

  v14 = *(v5 + 184);
  v15 = v14[14];
  v16 = -858993459 * ((v14[15] - v15) >> 3);
  v17 = v14 + 9;
  v18 = (v15 + 40 * v9);
  if (v9 >= v16)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v22 = *v19;
  v21 = (v19 + 1);
  v20 = v22;
  if (v22)
  {
    v21 = *v21;
  }

  if ((v20 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    v60 = v6;
    v23 = 1;
    v62 = &v21[4 * (v20 >> 1)];
    do
    {
      v24 = *v21;
      v25 = *(v5 + 96);
      if ((v24 & 0xFFFFFFFFFFFFFFFELL) >= (*(v5 + 104) - v25) >> 2)
      {
        break;
      }

      v26 = *(v25 + 4 * (v24 & 0xFFFFFFFE));
      if (v26 == -1)
      {
        break;
      }

      v27 = v21[1];
      v28 = *(v21 + 1);
      v29 = *(*(v5 + 192) + 8 * v26);
      v30 = v7;
      v31 = v7 >> 5;
      if ((v31 + 1) >> 59)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v65 = v29;
      if (v31 != -1)
      {
        if (!((v31 + 1) >> 59))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      MEMORY[0xFFFFFFFFFFFFFFE0] = v9;
      MEMORY[0xFFFFFFFFFFFFFFE8] = v24;
      MEMORY[0xFFFFFFFFFFFFFFEC] = v27;
      v8 = 0;
      MEMORY[0xFFFFFFFFFFFFFFF0] = v28;
      MEMORY[0xFFFFFFFFFFFFFFF8] = v26;
      v7 = 0;
      memcpy(0, 0, v30);
      v5 = a1;
      v9 = v63;
      v32 = (v24 & 1) != 0 ? -v65 : v65;
      v23 &= v28 <= v32;
      v21 += 4;
      if (v21 == v62)
      {
        break;
      }
    }

    while (v28 <= v32);
    if ((v23 & 1) == 0)
    {
      v6 = v60;
      goto LABEL_29;
    }
  }

LABEL_32:
  v35 = 1;
LABEL_35:
  v34 = v70;
  a5 = v71;
  if ((v71 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
LABEL_36:
    v64 = v35;
    v36 = &v34[4 * a5];
    v66 = v36;
    while (1)
    {
      v37 = *v34;
      v38 = *(v5 + 96);
      if ((v37 & 0xFFFFFFFFFFFFFFFELL) >= (*(v5 + 104) - v38) >> 2)
      {
        return 1;
      }

      v39 = *(v38 + 4 * (v37 & 0xFFFFFFFE));
      if (v39 == -1)
      {
        return 1;
      }

      v40 = v34[1];
      v41 = *(v34 + 1);
      v42 = v8;
      v43 = *(*(v5 + 192) + 8 * v39);
      v44 = v42;
      if (v7 >= v42)
      {
        v46 = v7;
        v47 = v7 >> 5;
        v48 = v47 + 1;
        if ((v47 + 1) >> 59)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if (v42 >> 4 > v48)
        {
          v48 = v42 >> 4;
        }

        if (v48)
        {
          if (!(v48 >> 59))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v49 = 32 * v47;
        *v49 = -1;
        *(v49 + 8) = v37;
        *(v49 + 12) = v40;
        v44 = 0;
        *(v49 + 16) = v41;
        *(v49 + 24) = v39;
        v7 = 32 * v47 + 32;
        memcpy(0, 0, v46);
        v5 = a1;
        v36 = v66;
        if (v37)
        {
          v50 = -v43;
        }

        else
        {
          v50 = v43;
        }

        if (v41 <= v50)
        {
LABEL_57:
          v35 = 1;
          break;
        }
      }

      else
      {
        *v7 = -1;
        *(v7 + 8) = v37;
        *(v7 + 12) = v40;
        *(v7 + 16) = v41;
        *(v7 + 24) = v39;
        v7 += 32;
        if (v37)
        {
          v45 = -v43;
        }

        else
        {
          v45 = v43;
        }

        if (v41 <= v45)
        {
          goto LABEL_57;
        }
      }

      v34 += 4;
      v8 = v44;
      if (v34 == v36)
      {
        v35 = v64;
        break;
      }
    }
  }

LABEL_58:
  if (v35)
  {
    return 1;
  }

  absl::lts_20240722::log_internal::LogMessage::LogMessage(&v68, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 809);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v68, "Reason clause is not satisfied by loaded solution:", 0x32uLL);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v68);
  absl::lts_20240722::log_internal::LogMessage::LogMessage(&v68, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 810);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v68, "Worker '", 8uLL);
  v53 = absl::lts_20240722::log_internal::LogMessage::operator<<(&v68, *(v5 + 264));
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v53, "', level=", 9uLL);
  v67[0] = *(operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(*(v5 + 264)) + 296);
  absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v53, v67);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v68);
  absl::lts_20240722::log_internal::LogMessage::LogMessage(&v68, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 812);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v68, "literals (neg): ", 0x10uLL);
  absl::lts_20240722::log_internal::LogMessage::operator<<<absl::lts_20240722::Span<operations_research::sat::Literal const>,0>(&v68, v72);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v68);
  absl::lts_20240722::log_internal::LogMessage::LogMessage(&v68, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 813);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v68, "integer literals: ", 0x12uLL);
  absl::lts_20240722::log_internal::LogMessage::operator<<<absl::lts_20240722::Span<operations_research::sat::IntegerLiteral const>,0>(&v68, &v70);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v68);
  if (!v7)
  {
    return 0;
  }

  for (i = 0; i != v7; i += 2)
  {
    v55 = i[1];
    v68 = *i;
    v69 = v55;
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v67, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 815);
    v56 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::sat::Literal,0>(v67, &v68);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v56, " ", 1uLL);
    v57 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::sat::IntegerLiteral,0>(v56, (&v68 + 8));
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v57, " var=", 5uLL);
    v73[0] = DWORD2(v69);
    v58 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v57, v73);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v58, " value_in_sol=", 0xEuLL);
    *v73 = *(*(a1 + 192) + 8 * SDWORD2(v69));
    absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v58, v73);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v67);
  }

  return 0;
}

void sub_23CB19250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, char a17, uint64_t a18, char a19)
{
  if (v19)
  {
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t absl::lts_20240722::log_internal::LogMessage::operator<<<absl::lts_20240722::Span<operations_research::sat::Literal const>,0>(uint64_t a1, uint64_t a2)
{
  absl::lts_20240722::log_internal::LogMessage::OstreamView::OstreamView(v6, *(a1 + 8));
  v4 = absl::lts_20240722::log_internal::LogMessage::OstreamView::stream(v6);
  operations_research::sat::operator<<(v4, *a2, *(a2 + 8));
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(v6);
  return a1;
}

void sub_23CB19324(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

void sub_23CB19338(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

uint64_t absl::lts_20240722::log_internal::LogMessage::operator<<<absl::lts_20240722::Span<operations_research::sat::IntegerLiteral const>,0>(uint64_t a1, uint64_t a2)
{
  absl::lts_20240722::log_internal::LogMessage::OstreamView::OstreamView(v6, *(a1 + 8));
  v4 = absl::lts_20240722::log_internal::LogMessage::OstreamView::stream(v6);
  operations_research::sat::operator<<(v4, *a2, *(a2 + 8));
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(v6);
  return a1;
}

void sub_23CB193A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

void sub_23CB193B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

void *operations_research::sat::operator<<(void *a1, __int128 *a2, uint64_t a3)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[", 1);
  if ((a3 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    v17 = *a2;
    operations_research::sat::IntegerLiteral::DebugString(&v17, v6, &__p);
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
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, p_p, size);
    v9 = 16 * a3;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      v10 = v9 - 16;
      if (!v10)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v10 = v9 - 16;
      if (!v10)
      {
        goto LABEL_12;
      }
    }

    v12 = a2 + 1;
    do
    {
      v17 = *v12;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ",", 1);
      operations_research::sat::IntegerLiteral::DebugString(&v17, v13, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &__p;
      }

      else
      {
        v14 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v15 = __p.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v14, v15);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v12;
      v10 -= 16;
    }

    while (v10);
  }

LABEL_12:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]", 1);
  return a1;
}

void sub_23CB19510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__func<operations_research::sat::anonymous namespace::InitializeDebugSolution(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_1,std::allocator<operations_research::sat::anonymous namespace::InitializeDebugSolution(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_1>,BOOL ()(absl::lts_20240722::Span<operations_research::sat::Literal const>,absl::lts_20240722::Span<operations_research::sat::IntegerLiteral const>)>::~__func(void *a1)
{
  *a1 = &unk_284F3EF50;
  v2 = a1[31];
  if (v2)
  {
    a1[32] = v2;
    operator delete(v2);
  }

  v3 = a1[28];
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[25];
  if (v4)
  {
    a1[26] = v4;
    operator delete(v4);
  }

  operations_research::sat::CpModelMapping::~CpModelMapping((a1 + 1));
  return a1;
}

void std::__function::__func<operations_research::sat::anonymous namespace::InitializeDebugSolution(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_1,std::allocator<operations_research::sat::anonymous namespace::InitializeDebugSolution(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_1>,BOOL ()(absl::lts_20240722::Span<operations_research::sat::Literal const>,absl::lts_20240722::Span<operations_research::sat::IntegerLiteral const>)>::~__func(void *a1)
{
  *a1 = &unk_284F3EF50;
  v2 = a1[31];
  if (v2)
  {
    a1[32] = v2;
    operator delete(v2);
  }

  v3 = a1[28];
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[25];
  if (v4)
  {
    a1[26] = v4;
    operator delete(v4);
  }

  operations_research::sat::CpModelMapping::~CpModelMapping((a1 + 1));

  JUMPOUT(0x23EED9460);
}

void sub_23CB196C8(_Unwind_Exception *a1)
{
  operations_research::sat::CpModelMapping::~CpModelMapping(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *std::__function::__func<operations_research::sat::anonymous namespace::InitializeDebugSolution(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_1,std::allocator<operations_research::sat::anonymous namespace::InitializeDebugSolution(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_1>,BOOL ()(absl::lts_20240722::Span<operations_research::sat::Literal const>,absl::lts_20240722::Span<operations_research::sat::IntegerLiteral const>)>::__clone(void *a1, void *a2)
{
  *a2 = &unk_284F3EF50;
  operations_research::sat::CpModelMapping::CpModelMapping((a2 + 1), (a1 + 1));
  a2[24] = a1[24];
  result = operations_research::sat::DebugSolution::DebugSolution(a2 + 25, a1 + 25);
  a2[34] = a1[34];
  return result;
}

void std::__function::__func<operations_research::sat::anonymous namespace::InitializeDebugSolution(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_1,std::allocator<operations_research::sat::anonymous namespace::InitializeDebugSolution(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_1>,BOOL ()(absl::lts_20240722::Span<operations_research::sat::Literal const>,absl::lts_20240722::Span<operations_research::sat::IntegerLiteral const>)>::destroy(void *a1)
{
  v2 = a1[31];
  if (v2)
  {
    a1[32] = v2;
    operator delete(v2);
  }

  v3 = a1[28];
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[25];
  if (v4)
  {
    a1[26] = v4;
    operator delete(v4);
  }

  operations_research::sat::CpModelMapping::~CpModelMapping((a1 + 1));
}

void std::__function::__func<operations_research::sat::anonymous namespace::InitializeDebugSolution(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_1,std::allocator<operations_research::sat::anonymous namespace::InitializeDebugSolution(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_1>,BOOL ()(absl::lts_20240722::Span<operations_research::sat::Literal const>,absl::lts_20240722::Span<operations_research::sat::IntegerLiteral const>)>::destroy_deallocate(void *a1)
{
  v2 = a1[31];
  if (v2)
  {
    a1[32] = v2;
    operator delete(v2);
  }

  v3 = a1[28];
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[25];
  if (v4)
  {
    a1[26] = v4;
    operator delete(v4);
  }

  operations_research::sat::CpModelMapping::~CpModelMapping((a1 + 1));

  operator delete(a1);
}

uint64_t std::__function::__func<operations_research::sat::anonymous namespace::InitializeDebugSolution(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_1,std::allocator<operations_research::sat::anonymous namespace::InitializeDebugSolution(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_1>,BOOL ()(absl::lts_20240722::Span<operations_research::sat::Literal const>,absl::lts_20240722::Span<operations_research::sat::IntegerLiteral const>)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat12_GLOBAL__N_123InitializeDebugSolutionERKNS0_12CpModelProtoEPNS0_5ModelEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat12_GLOBAL__N_123InitializeDebugSolutionERKNS0_12CpModelProtoEPNS0_5ModelEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat12_GLOBAL__N_123InitializeDebugSolutionERKNS0_12CpModelProtoEPNS0_5ModelEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat12_GLOBAL__N_123InitializeDebugSolutionERKNS0_12CpModelProtoEPNS0_5ModelEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *operations_research::sat::Model::Delete<operations_research::sat::LinearProgrammingConstraint>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F3EFE0;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::LinearProgrammingConstraint>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F3EFE0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

uint64_t std::function<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> ()(operations_research::sat::Model *)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t operations_research::sat::Model::Add<void>(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v2 = *(a2 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__func<operations_research::sat::ConstantIntegerVariable(long long)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::ConstantIntegerVariable(long long)::{lambda(operations_research::sat::Model *)#1}>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> ()(operations_research::sat::Model *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F3F018;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::ConstantIntegerVariable(long long)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::ConstantIntegerVariable(long long)::{lambda(operations_research::sat::Model *)#1}>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> ()(operations_research::sat::Model *)>::operator()(uint64_t a1, void **a2)
{
  v3 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(*a2);
  v4 = *(a1 + 8);

  return operations_research::sat::IntegerTrail::GetOrCreateConstantIntegerVariable(v3, v4);
}

uint64_t std::__function::__func<operations_research::sat::ConstantIntegerVariable(long long)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::ConstantIntegerVariable(long long)::{lambda(operations_research::sat::Model *)#1}>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> ()(operations_research::sat::Model *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000023CE44684)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000023CE44684 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023CE44684))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023CE44684 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<operations_research::sat::UpperBound(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)::{lambda(operations_research::sat::Model const&)#1},std::allocator<operations_research::sat::UpperBound(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)::{lambda(operations_research::sat::Model const&)#1}>,long long ()(operations_research::sat::Model const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_284F3F0A8;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<operations_research::sat::UpperBound(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)::{lambda(operations_research::sat::Model const&)#1},std::allocator<operations_research::sat::UpperBound(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)::{lambda(operations_research::sat::Model const&)#1}>,long long ()(operations_research::sat::Model const&)>::operator()(uint64_t a1, void *a2)
{
  v3 = a2[3];
  if (v3 > 1)
  {
    v7 = 0;
    _X11 = a2[5];
    __asm { PRFM            #4, [X11] }

    v14 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d));
    v15 = (v14 >> 7) ^ (_X11 >> 12);
    v16 = vdup_n_s8(v14 & 0x7F);
    v17 = a2[6];
    v18 = v15 & v3;
    v19 = *(_X11 + v18);
    v2 = vceq_s8(v19, v16);
    if (!v2)
    {
      goto LABEL_9;
    }

    do
    {
LABEL_7:
      v20 = (v18 + (__clz(__rbit64(v2)) >> 3)) & v3;
      if (*(v17 + 16 * v20) == &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d)
      {
        v2 = v17 + 16 * v20;
        return -*(*(*(v2 + 8) + 40) + ((8 * *(a1 + 8)) ^ 8));
      }

      v2 &= ((v2 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v2);
LABEL_9:
    while (!*&vceq_s8(v19, 0x8080808080808080))
    {
      v7 += 8;
      v18 = (v7 + v18) & v3;
      v19 = *(_X11 + v18);
      v2 = vceq_s8(v19, v16);
      if (v2)
      {
        goto LABEL_7;
      }
    }
  }

  else if (a2[4] >= 2uLL)
  {
    v6 = a2[5];
    v4 = a2 + 5;
    v5 = v6;
    if (v6 == &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d)
    {
      v2 = v4;
    }

    else
    {
      v2 = v5;
    }
  }

  return -*(*(*(v2 + 8) + 40) + ((8 * *(a1 + 8)) ^ 8));
}

uint64_t std::__function::__func<operations_research::sat::UpperBound(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)::{lambda(operations_research::sat::Model const&)#1},std::allocator<operations_research::sat::UpperBound(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)::{lambda(operations_research::sat::Model const&)#1}>,long long ()(operations_research::sat::Model const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000023CE44A55)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000023CE44A55 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023CE44A55))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023CE44A55 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__function::__func<operations_research::sat::NewIntegerVariable(long long,long long)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::NewIntegerVariable(long long,long long)::{lambda(operations_research::sat::Model *)#1}>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> ()(operations_research::sat::Model *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F3F128;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::NewIntegerVariable(long long,long long)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::NewIntegerVariable(long long,long long)::{lambda(operations_research::sat::Model *)#1}>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> ()(operations_research::sat::Model *)>::operator()(uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 > v5)
  {
    std::__function::__func<operations_research::sat::NewIntegerVariable(long long,long long)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::NewIntegerVariable(long long,long long)::{lambda(operations_research::sat::Model *)#1}>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> ()(operations_research::sat::Model *)>::operator()(v4, v5);
  }

  v6 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(*a2);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);

  return operations_research::sat::IntegerTrail::AddIntegerVariable(v6, v7, v8);
}

uint64_t std::__function::__func<operations_research::sat::NewIntegerVariable(long long,long long)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::NewIntegerVariable(long long,long long)::{lambda(operations_research::sat::Model *)#1}>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> ()(operations_research::sat::Model *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000023CE44B72)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000023CE44B72 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023CE44B72))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023CE44B72 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *operations_research::sat::Model::Delete<operations_research::sat::ObjectiveDefinition>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F3F1A8;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    if (v1[9] >= 2uLL)
    {
      operator delete((v1[11] - (v1[10] & 1) - 8));
    }

    v3 = v1[6];
    if (v3)
    {
      v1[7] = v3;
      operator delete(v3);
    }

    v4 = v1[3];
    if (v4)
    {
      v1[4] = v4;
      operator delete(v4);
    }

    MEMORY[0x23EED9460](v1, 0x10A2C40D8E3481FLL);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::ObjectiveDefinition>::~Delete(void *a1)
{
  v1 = a1[1];
  *a1 = &unk_284F3F1A8;
  a1[1] = 0;
  if (v1)
  {
    if (v1[9] >= 2uLL)
    {
      operator delete((v1[11] - (v1[10] & 1) - 8));
    }

    v2 = v1[6];
    if (v2)
    {
      v1[7] = v2;
      operator delete(v2);
    }

    v3 = v1[3];
    if (v3)
    {
      v1[4] = v3;
      operator delete(v3);
    }

    MEMORY[0x23EED9460](v1, 0x10A2C40D8E3481FLL);
  }

  JUMPOUT(0x23EED9460);
}

int64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>::find_or_prepare_insert<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>@<X0>(int64_t result@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if (*result > 1uLL)
  {
    v6 = 0;
    _X10 = *(result + 16);
    __asm { PRFM            #4, [X10] }

    v13 = *a2;
    v14 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v13) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v13));
    v15 = vdup_n_s8(v14 & 0x7F);
    v16 = ((v14 >> 7) ^ (_X10 >> 12)) & v3;
    v17 = *(_X10 + v16);
    v18 = vceq_s8(v17, v15);
    if (!v18)
    {
      goto LABEL_8;
    }

LABEL_5:
    v19 = *(result + 24);
    do
    {
      v20 = (v16 + (__clz(__rbit64(v18)) >> 3)) & v3;
      if (*(v19 + 4 * v20) == v13)
      {
        *a3 = _X10 + v20;
        *(a3 + 8) = v19 + 4 * v20;
        *(a3 + 16) = 0;
        return result;
      }

      v18 &= ((v18 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v18);
LABEL_8:
    while (1)
    {
      v21 = vceq_s8(v17, 0x8080808080808080);
      if (v21)
      {
        break;
      }

      v6 += 8;
      v16 = (v6 + v16) & v3;
      v17 = *(_X10 + v16);
      v18 = vceq_s8(v17, v15);
      if (v18)
      {
        goto LABEL_5;
      }
    }

    v22 = result;
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v14, (v16 + (__clz(__rbit64(v21)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>::GetPolicyFunctions(void)::value);
    v24 = *(v22 + 24) + 4 * result;
    *a3 = *(v22 + 16) + result;
    *(a3 + 8) = v24;
    *(a3 + 16) = 1;
  }

  else
  {
    if (*(result + 8) > 1uLL)
    {
      v4 = (result + 16);
      if (*(result + 16) != *a2)
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>::resize_impl(result, 3);
      }

      v5 = 0;
    }

    else
    {
      *(result + 8) = 2;
      v4 = (result + 16);
      v5 = 1;
    }

    *a3 = &absl::lts_20240722::container_internal::kSooControl;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *a1 < 2uLL && v3 > 1;
  if (v5)
  {
    v6 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(a1 + 16);
  }

  v8 = *a1;
  v9 = v3 & 1;
  v10 = v2 < 2;
  v11 = v5;
  v7 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,4ul,true,true,4ul>(&v7, a1);
}

void *operations_research::sat::Model::Delete<operations_research::sat::LevelZeroEquality>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F3F210;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::LevelZeroEquality>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F3F210;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

__n128 std::__function::__func<operations_research::sat::anonymous namespace::RegisterObjectiveBestBoundExport(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::sat::SharedResponseManager *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::RegisterObjectiveBestBoundExport(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::sat::SharedResponseManager *,operations_research::sat::Model *)::$_0>,void ()(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F3F248;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<operations_research::sat::anonymous namespace::RegisterObjectiveBestBoundExport(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::sat::SharedResponseManager *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::RegisterObjectiveBestBoundExport(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::sat::SharedResponseManager *,operations_research::sat::Model *)::$_0>,void ()(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(*(a1 + 16) + 152);
  v3 = *(v2 + 24 * v1);
  if (v3 > *(a1 + 40))
  {
    *(a1 + 40) = v3;
    operations_research::sat::SharedResponseManager::UpdateInnerObjectiveBounds(*(a1 + 24), *(a1 + 32), v3, -*(v2 + 24 * (v1 ^ 1)));
    v5 = *(a1 + 32);
    v6 = v5[3];
    if (v6 > 1)
    {
      v8 = 0;
      _X12 = v5[5];
      __asm { PRFM            #4, [X12] }

      v15 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SatParameters>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SatParameters>(void)::d));
      v16 = vdup_n_s8(v15 & 0x7F);
      v17 = ((v15 >> 7) ^ (_X12 >> 12)) & v6;
      v18 = *(_X12 + v17);
      v19 = vceq_s8(v18, v16);
      if (!v19)
      {
        goto LABEL_9;
      }

LABEL_6:
      v20 = v5[6];
      do
      {
        v21 = (v17 + (__clz(__rbit64(v19)) >> 3)) & v6;
        if (*(v20 + 16 * v21) == &gtl::FastTypeId<operations_research::sat::SatParameters>(void)::d)
        {
          v5 = (v20 + 16 * v21);
          goto LABEL_13;
        }

        v19 &= ((v19 & 0x8080808080808080) - 1) & 0x8080808080808080;
      }

      while (v19);
LABEL_9:
      while (!*&vceq_s8(v18, 0x8080808080808080))
      {
        v8 += 8;
        v17 = (v8 + v17) & v6;
        v18 = *(_X12 + v17);
        v19 = vceq_s8(v18, v16);
        if (v19)
        {
          goto LABEL_6;
        }
      }
    }

    else if (v5[4] >= 2uLL)
    {
      v7 = v5[5];
      v5 += 5;
    }

LABEL_13:
    if ((*(v5[1] + 280) & 1) == 0)
    {
      v22 = *(a1 + 24);

      operations_research::sat::SharedResponseManager::Synchronize(v22);
    }
  }
}

uint64_t std::__function::__func<operations_research::sat::anonymous namespace::RegisterObjectiveBestBoundExport(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::sat::SharedResponseManager *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::RegisterObjectiveBestBoundExport(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::sat::SharedResponseManager *,operations_research::sat::Model *)::$_0>,void ()(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat12_GLOBAL__N_132RegisterObjectiveBestBoundExportENS_11StrongIndexINS0_26IntegerVariable_index_tag_EEEPNS0_21SharedResponseManagerEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat12_GLOBAL__N_132RegisterObjectiveBestBoundExportENS_11StrongIndexINS0_26IntegerVariable_index_tag_EEEPNS0_21SharedResponseManagerEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat12_GLOBAL__N_132RegisterObjectiveBestBoundExportENS_11StrongIndexINS0_26IntegerVariable_index_tag_EEEPNS0_21SharedResponseManagerEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat12_GLOBAL__N_132RegisterObjectiveBestBoundExportENS_11StrongIndexINS0_26IntegerVariable_index_tag_EEEPNS0_21SharedResponseManagerEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<operations_research::sat::anonymous namespace::RegisterObjectiveBoundsImport(operations_research::sat::SharedResponseManager *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::RegisterObjectiveBoundsImport(operations_research::sat::SharedResponseManager *,operations_research::sat::Model *)::$_0>,BOOL ()(void)>::~__func(uint64_t result)
{
  *result = &unk_284F3F2C8;
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

void std::__function::__func<operations_research::sat::anonymous namespace::RegisterObjectiveBoundsImport(operations_research::sat::SharedResponseManager *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::RegisterObjectiveBoundsImport(operations_research::sat::SharedResponseManager *,operations_research::sat::Model *)::$_0>,BOOL ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_284F3F2C8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x23EED9460);
}

__n128 std::__function::__func<operations_research::sat::anonymous namespace::RegisterObjectiveBoundsImport(operations_research::sat::SharedResponseManager *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::RegisterObjectiveBoundsImport(operations_research::sat::SharedResponseManager *,operations_research::sat::Model *)::$_0>,BOOL ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F3F2C8;
  v4 = (a2 + 8);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
    result = *(a1 + 32);
    v8 = *(a1 + 48);
    *(a2 + 32) = result;
    *(a2 + 48) = v8;
  }

  else
  {
    v5 = *(a1 + 8);
    *(a2 + 24) = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
    result = *(a1 + 32);
    v7 = *(a1 + 48);
    *(a2 + 32) = result;
    *(a2 + 48) = v7;
  }

  return result;
}

void std::__function::__func<operations_research::sat::anonymous namespace::RegisterObjectiveBoundsImport(operations_research::sat::SharedResponseManager *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::RegisterObjectiveBoundsImport(operations_research::sat::SharedResponseManager *,operations_research::sat::Model *)::$_0>,BOOL ()(void)>::destroy(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

void std::__function::__func<operations_research::sat::anonymous namespace::RegisterObjectiveBoundsImport(operations_research::sat::SharedResponseManager *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::RegisterObjectiveBoundsImport(operations_research::sat::SharedResponseManager *,operations_research::sat::Model *)::$_0>,BOOL ()(void)>::destroy_deallocate(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    v2 = a1;
    operator delete(*(a1 + 8));
    a1 = v2;
  }

  operator delete(a1);
}

uint64_t std::__function::__func<operations_research::sat::anonymous namespace::RegisterObjectiveBoundsImport(operations_research::sat::SharedResponseManager *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::RegisterObjectiveBoundsImport(operations_research::sat::SharedResponseManager *,operations_research::sat::Model *)::$_0>,BOOL ()(void)>::operator()(uint64_t a1)
{
  if (*(*(a1 + 32) + 332))
  {
    return 1;
  }

  v3 = operations_research::sat::SharedResponseManager::SynchronizedInnerObjectiveLowerBound(*(a1 + 56));
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 48) + 16);
  v6 = *(*(v4 + 40) + 8 * v5);
  if (v3 <= v6 || (result = operations_research::sat::IntegerTrail::Enqueue(v4, v5, v3, 0, 0, 0, 0), result))
  {
    v7 = operations_research::sat::SharedResponseManager::SynchronizedInnerObjectiveUpperBound(*(a1 + 56));
    v8 = *(a1 + 40);
    v9 = *(*(a1 + 48) + 16);
    v10 = -*(*(v8 + 40) + ((8 * v9) ^ 8));
    if (v7 >= v10)
    {
      if (v3 <= v6)
      {
        return 1;
      }
    }

    else
    {
      if (v7 >= 0x8000000000000002)
      {
        v11 = -v7;
      }

      else
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if ((operations_research::sat::IntegerTrail::Enqueue(v8, v9 ^ 1, v11, 0, 0, 0, 0) & 1) == 0)
      {
        return 0;
      }
    }

    {
      v22 = v6;
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v23, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 1405);
      v12 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v23, 3);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v12, "'", 1uLL);
      v13 = absl::lts_20240722::log_internal::LogMessage::operator<<(v12, (a1 + 8));
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v13, "' imports objective bounds: external [", 0x26uLL);
      v14 = v3;
      if (v3 < 0x8000000000000003)
      {
        v14 = -INFINITY;
      }

      if (v3 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v14 = INFINITY;
      }

      v24 = (v14 + *(*(a1 + 48) + 8)) * **(a1 + 48);
      v15 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v13, &v24);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v15, ", ", 2uLL);
      v16 = v7;
      if (v7 < 0x8000000000000003)
      {
        v16 = -INFINITY;
      }

      if (v7 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v16 = INFINITY;
      }

      v24 = (v16 + *(*(a1 + 48) + 8)) * **(a1 + 48);
      v17 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v15, &v24);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v17, "], current [", 0xCuLL);
      v18 = v22;
      if (v22 < 0x8000000000000003)
      {
        v18 = -INFINITY;
      }

      if (v22 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v18 = INFINITY;
      }

      v24 = (v18 + *(*(a1 + 48) + 8)) * **(a1 + 48);
      v19 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v17, &v24);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v19, ", ", 2uLL);
      v20 = v10;
      if (v10 < 0x8000000000000003)
      {
        v20 = -INFINITY;
      }

      if (v10 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v20 = INFINITY;
      }

      v24 = (v20 + *(*(a1 + 48) + 8)) * **(a1 + 48);
      v21 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v19, &v24);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v21, "]", 1uLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v23);
    }

    return operations_research::sat::SatSolver::FinishPropagation(*(a1 + 32));
  }

  return result;
}

void sub_23CB1B218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<operations_research::sat::anonymous namespace::RegisterObjectiveBoundsImport(operations_research::sat::SharedResponseManager *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::RegisterObjectiveBoundsImport(operations_research::sat::SharedResponseManager *,operations_research::sat::Model *)::$_0>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat12_GLOBAL__N_129RegisterObjectiveBoundsImportEPNS0_21SharedResponseManagerEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat12_GLOBAL__N_129RegisterObjectiveBoundsImportEPNS0_21SharedResponseManagerEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat12_GLOBAL__N_129RegisterObjectiveBoundsImportEPNS0_21SharedResponseManagerEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat12_GLOBAL__N_129RegisterObjectiveBoundsImportEPNS0_21SharedResponseManagerEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *operations_research::sat::Model::Delete<operations_research::sat::SearchHeuristics>::~Delete(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  *v1 = &unk_284F3F348;
  v1[1] = 0;
  if (v2)
  {
    v3 = v1;
    operations_research::sat::SearchHeuristics::~SearchHeuristics(v2);
    MEMORY[0x23EED9460]();
    return v3;
  }

  return v1;
}

void operations_research::sat::Model::Delete<operations_research::sat::SearchHeuristics>::~Delete(void *a1)
{
  v1 = a1[1];
  *a1 = &unk_284F3F348;
  a1[1] = 0;
  if (v1)
  {
    operations_research::sat::SearchHeuristics::~SearchHeuristics(v1);
    MEMORY[0x23EED9460]();
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::SearchHeuristics::~SearchHeuristics(operations_research::sat::SearchHeuristics *this)
{
  v2 = this + 216;
  v3 = *(this + 30);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *(this + 26);
    if (v4 != (this + 184))
    {
      goto LABEL_5;
    }

LABEL_23:
    (*(*v4 + 32))(v4);
    v5 = *(this + 22);
    if (v5 != (this + 152))
    {
      goto LABEL_8;
    }

LABEL_24:
    (*(*v5 + 32))(v5);
    v6 = *(this + 18);
    if (v6 != (this + 120))
    {
      goto LABEL_11;
    }

LABEL_25:
    (*(*v6 + 32))(v6);
    v7 = *(this + 14);
    if (v7 != (this + 88))
    {
      goto LABEL_14;
    }

LABEL_26:
    (*(*v7 + 32))(v7);
    v8 = *(this + 10);
    if (v8 != (this + 56))
    {
      goto LABEL_17;
    }

LABEL_27:
    (*(*v8 + 32))(v8);
    v9 = *(this + 3);
    if (!v9)
    {
      goto LABEL_20;
    }

    goto LABEL_28;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = *(this + 26);
  if (v4 == (this + 184))
  {
    goto LABEL_23;
  }

LABEL_5:
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(this + 22);
  if (v5 == (this + 152))
  {
    goto LABEL_24;
  }

LABEL_8:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  v6 = *(this + 18);
  if (v6 == (this + 120))
  {
    goto LABEL_25;
  }

LABEL_11:
  if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  v7 = *(this + 14);
  if (v7 == (this + 88))
  {
    goto LABEL_26;
  }

LABEL_14:
  if (v7)
  {
    (*(*v7 + 40))(v7);
  }

  v8 = *(this + 10);
  if (v8 == (this + 56))
  {
    goto LABEL_27;
  }

LABEL_17:
  if (v8)
  {
    (*(*v8 + 40))(v8);
  }

  v9 = *(this + 3);
  if (!v9)
  {
LABEL_20:
    v10 = *this;
    if (!*this)
    {
      return;
    }

    goto LABEL_37;
  }

LABEL_28:
  v11 = *(this + 4);
  v12 = v9;
  if (v11 != v9)
  {
    v13 = v11 - 32;
    do
    {
      v14 = *(v11 - 1);
      v11 -= 32;
      if (v11 == v14)
      {
        (*(*v14 + 32))(v14);
      }

      else if (v14)
      {
        (*(*v14 + 40))(v14);
      }

      v13 -= 32;
    }

    while (v11 != v9);
    v12 = *(this + 3);
  }

  *(this + 4) = v9;
  operator delete(v12);
  v10 = *this;
  if (*this)
  {
LABEL_37:
    v15 = *(this + 1);
    v16 = v10;
    if (v15 != v10)
    {
      v17 = v15 - 32;
      do
      {
        v18 = *(v15 - 1);
        v15 -= 32;
        if (v15 == v18)
        {
          (*(*v18 + 32))(v18);
        }

        else if (v18)
        {
          (*(*v18 + 40))(v18);
        }

        v17 -= 32;
      }

      while (v15 != v10);
      v16 = *this;
    }

    *(this + 1) = v10;
    operator delete(v16);
  }
}

__n128 std::__function::__func<operations_research::sat::anonymous namespace::LoadCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::LoadCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F3F380;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<operations_research::sat::anonymous namespace::LoadCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::LoadCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  if (*(*(a1 + 8) + 128))
  {
    v2 = *(*(a1 + 8) + 128);
  }

  else
  {
    v2 = &operations_research::sat::_CpObjectiveProto_default_instance_;
  }

  v3 = operations_research::sat::ComputeInnerObjective(v2, __p);
  if (v3 < *(a1 + 32))
  {
    *(a1 + 32) = v3;
    operations_research::sat::SharedResponseManager::NewSolution(*(a1 + 24), __p, (v5 - __p) >> 3, *(a1 + 16), *(a1 + 16));
  }

  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_23CB1BA10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<operations_research::sat::anonymous namespace::LoadCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::LoadCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat12_GLOBAL__N_111LoadCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat12_GLOBAL__N_111LoadCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat12_GLOBAL__N_111LoadCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat12_GLOBAL__N_111LoadCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void operations_research::sat::anonymous namespace::GetSolutionValues(operations_research::sat::_anonymous_namespace_ *this, const operations_research::sat::CpModelProto *a2, const operations_research::sat::Model *a3)
{
  v65 = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 3);
  if (v6 <= 1)
  {
    if (*(a3 + 4) < 2uLL)
    {
      goto LABEL_16;
    }

    v24 = a3 + 40;
    v56 = &absl::lts_20240722::container_internal::kSooControl;
    if (*(a3 + 5) != &gtl::FastTypeId<operations_research::sat::CpModelMapping>(void)::d)
    {
      v56 = 0;
      v24 = 0x9DDFEA08EB382D69;
    }

    if (!v56)
    {
      goto LABEL_16;
    }

LABEL_4:
    v7 = *(v24 + 1);
    if (v6 > 1)
    {
      goto LABEL_17;
    }

    goto LABEL_5;
  }

  v9 = 0;
  _X11 = *(a3 + 5);
  __asm { PRFM            #4, [X11] }

  v16 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::CpModelMapping>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::CpModelMapping>(void)::d));
  v17 = (v16 >> 7) ^ (_X11 >> 12);
  v18 = vdup_n_s8(v16 & 0x7F);
  v19 = *(a3 + 6);
  v20 = v17 & v6;
  v21 = *(_X11 + v20);
  v22 = vceq_s8(v21, v18);
  if (!v22)
  {
    goto LABEL_12;
  }

  do
  {
LABEL_10:
    v23 = (v20 + (__clz(__rbit64(v22)) >> 3)) & v6;
    if (*(v19 + 16 * v23) == &gtl::FastTypeId<operations_research::sat::CpModelMapping>(void)::d)
    {
      v24 = (v19 + 16 * v23);
      if (!(_X11 + v23))
      {
        goto LABEL_16;
      }

      goto LABEL_4;
    }

    v22 &= ((v22 & 0x8080808080808080) - 1) & 0x8080808080808080;
  }

  while (v22);
LABEL_12:
  while (!*&vceq_s8(v21, 0x8080808080808080))
  {
    v9 += 8;
    v20 = (v9 + v20) & v6;
    v21 = *(_X11 + v20);
    v22 = vceq_s8(v21, v18);
    if (v22)
    {
      goto LABEL_10;
    }
  }

LABEL_16:
  v7 = 0;
  if (v6 <= 1)
  {
LABEL_5:
    if (*(a3 + 4) < 2uLL)
    {
      goto LABEL_24;
    }

    v57 = &absl::lts_20240722::container_internal::kSooControl;
    if (*(a3 + 5) == &gtl::FastTypeId<operations_research::sat::Trail>(void)::d)
    {
      v36 = a3 + 40;
    }

    else
    {
      v57 = 0;
      v36 = 0x9DDFEA08EB382D69;
    }

    if (!v57)
    {
      goto LABEL_24;
    }

LABEL_7:
    v8 = *(v36 + 1);
    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
    if (*(a2 + 8) >= 1)
    {
      goto LABEL_25;
    }

    goto LABEL_46;
  }

LABEL_17:
  v25 = 0;
  _X11 = *(a3 + 5);
  __asm { PRFM            #4, [X11] }

  v28 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::Trail>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::Trail>(void)::d));
  v29 = (v28 >> 7) ^ (_X11 >> 12);
  v30 = vdup_n_s8(v28 & 0x7F);
  v31 = *(a3 + 6);
  v32 = v29 & v6;
  v33 = *(_X11 + v32);
  v34 = vceq_s8(v33, v30);
  if (!v34)
  {
    goto LABEL_20;
  }

LABEL_18:
  while (2)
  {
    v35 = (v32 + (__clz(__rbit64(v34)) >> 3)) & v6;
    if (*(v31 + 16 * v35) == &gtl::FastTypeId<operations_research::sat::Trail>(void)::d)
    {
      v36 = (v31 + 16 * v35);
      if (!(_X11 + v35))
      {
        goto LABEL_24;
      }

      goto LABEL_7;
    }

    v34 &= ((v34 & 0x8080808080808080) - 1) & 0x8080808080808080;
    if (v34)
    {
      continue;
    }

    break;
  }

LABEL_20:
  while (!*&vceq_s8(v33, 0x8080808080808080))
  {
    v25 += 8;
    v32 = (v25 + v32) & v6;
    v33 = *(_X11 + v32);
    v34 = vceq_s8(v33, v30);
    if (v34)
    {
      goto LABEL_18;
    }
  }

LABEL_24:
  v8 = 0;
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (*(a2 + 8) >= 1)
  {
LABEL_25:
    v37 = 0;
    v38 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d));
    v39 = v38 >> 7;
    v40 = vdup_n_s8(v38 & 0x7F);
    while (1)
    {
      v41 = *(*v7 + 4 * v37);
      if (v41 != -1)
      {
        break;
      }

      v44 = 2 * *(v7[6] + 4 * v37);
      if (((*(*(v8 + 24) + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v44 & 0x3E)) & 3) != 0)
      {
        v59 = &unk_284F3F3F0;
        v60[0] = v44;
        v61 = &v59;
        v58[0] = operations_research::sat::Value(operations_research::sat::Literal)::{lambda(operations_research::sat::Model const&)#1}::operator()(v60, a3);
        std::vector<long long>::push_back[abi:ne200100](this, v58);
        v45 = v61;
        if (v61 != &v59)
        {
          goto LABEL_42;
        }

        v46 = *(*v61 + 4);
LABEL_45:
        v46();
        goto LABEL_27;
      }

      v58[0] = 0;
      std::vector<long long>::push_back[abi:ne200100](this, v58);
LABEL_27:
      if (++v37 >= *(a2 + 8))
      {
        goto LABEL_46;
      }
    }

    v62 = &unk_284F3D388;
    v63 = v41;
    v64 = &v62;
    v42 = *(a3 + 3);
    if (v42 > 1)
    {
      v47 = 0;
      _X11 = *(a3 + 5);
      v49 = *(a3 + 6);
      __asm { PRFM            #4, [X11] }

      v51 = (v39 ^ (_X11 >> 12)) & v42;
      v52 = *(_X11 + v51);
      v43 = vceq_s8(v52, v40);
      if (!v43)
      {
        goto LABEL_37;
      }

      do
      {
LABEL_35:
        v53 = (v51 + (__clz(__rbit64(v43)) >> 3)) & v42;
        if (*(v49 + 16 * v53) == &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d)
        {
          v43 = v49 + 16 * v53;
          goto LABEL_41;
        }

        v43 &= ((v43 & 0x8080808080808080) - 1) & 0x8080808080808080;
      }

      while (v43);
LABEL_37:
      while (!*&vceq_s8(v52, 0x8080808080808080))
      {
        v47 += 8;
        v51 = (v47 + v51) & v42;
        v52 = *(_X11 + v51);
        v43 = vceq_s8(v52, v40);
        if (v43)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      v43 = a3 + 40;
    }

LABEL_41:
    v58[0] = *(*(*(v43 + 8) + 40) + 8 * v41);
    std::vector<long long>::push_back[abi:ne200100](this, v58);
    v45 = v64;
    if (v64 != &v62)
    {
LABEL_42:
      if (v45)
      {
        (*(*v45 + 5))(v45);
      }

      goto LABEL_27;
    }

    v46 = *(*v64 + 4);
    goto LABEL_45;
  }

LABEL_46:
  explicit = atomic_load_explicit(&qword_2810BDD68, memory_order_acquire);
  if (explicit)
  {
    if ((explicit & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  else if (!absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_cp_model_check_intermediate_solutions))
  {
    goto LABEL_49;
  }

  if (!operations_research::sat::SolutionIsFeasible(a2, *this, (*(this + 1) - *this) >> 3, 0, 0))
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v58, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 857);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v58);
  }

LABEL_49:
  v55 = *MEMORY[0x277D85DE8];
}