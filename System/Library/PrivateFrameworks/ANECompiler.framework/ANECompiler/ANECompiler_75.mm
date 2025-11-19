uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::CtEvent*>(uint64_t a1, uint64_t a2)
{
  v4 = 0xEEEEEEEEEEEEEEEFLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::CtEvent*,0>(a1, (a1 + 120), (a2 - 120));
        v5 = 1;
        return v5 & 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::CtEvent*,0>(a1, a1 + 120, a1 + 240, a2 - 120);
        v5 = 1;
        return v5 & 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::CtEvent*,0>(a1, a1 + 120, a1 + 240, a1 + 360, a2 - 120);
        v5 = 1;
        return v5 & 1;
    }

LABEL_14:
    v14 = a1 + 240;
    std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::CtEvent*,0>(a1, (a1 + 120), (a1 + 240));
    v16 = a1 + 360;
    if (a1 + 360 == a2)
    {
LABEL_29:
      v32 = 1;
    }

    else
    {
      v17 = 0;
      v18 = 0;
      while (1)
      {
        v19 = *(v16 + 104);
        if (v19 < *(v14 + 104))
        {
          v43 = *v16;
          v45 = *(v16 + 16);
          v47 = *(v16 + 32);
          v20 = *(v16 + 56);
          v49 = *(v16 + 48);
          v21 = *(v16 + 80);
          v35 = *(v16 + 64);
          *(v16 + 56) = 0;
          *(v16 + 64) = 0;
          *(v16 + 72) = 0;
          v41 = *(v16 + 96);
          v39 = v21;
          v37 = *(v16 + 114);
          v22 = v17;
          v36 = *(v16 + 112);
          while (1)
          {
            v23 = v22;
            v24 = a1 + v22;
            v25 = (a1 + v22 + 360);
            v26 = *(v24 + 256);
            *v25 = *(v24 + 240);
            v25[1] = v26;
            v25[2] = *(v24 + 272);
            *(v24 + 408) = *(v24 + 288);
            v27 = *(v24 + 416);
            if (v27)
            {
              *(v24 + 424) = v27;
              operator delete(v27);
              *(v24 + 424) = 0;
              *(v24 + 432) = 0;
            }

            *(v24 + 416) = *(v24 + 296);
            *(v24 + 432) = *(v24 + 312);
            *(v24 + 304) = 0;
            *(v24 + 312) = 0;
            *(v24 + 296) = 0;
            v28 = *(v24 + 336);
            *(v24 + 440) = *(v24 + 320);
            *(v24 + 456) = v28;
            v15 = *(v24 + 351);
            *(v24 + 471) = v15;
            if (v23 == -240)
            {
              break;
            }

            v22 = v23 - 120;
            if (v19 >= *(a1 + v23 + 224))
            {
              v29 = a1 + v22 + 360;
              goto LABEL_26;
            }
          }

          v29 = a1;
LABEL_26:
          v30 = a1 + v23;
          *v29 = v43;
          *(v29 + 16) = v45;
          *(v29 + 32) = v47;
          *(v29 + 48) = v49;
          v31 = *(v30 + 296);
          if (v31)
          {
            *(v29 + 64) = v31;
            operator delete(v31);
            *(v30 + 304) = 0;
            *(v30 + 312) = 0;
          }

          *(v30 + 296) = v20;
          *(v29 + 64) = v35;
          *(v30 + 320) = v39;
          *(v30 + 336) = v41;
          *(v29 + 104) = v19;
          *(v29 + 112) = v36;
          ++v18;
          *(v29 + 114) = v37;
          if (v18 == 8)
          {
            break;
          }
        }

        v14 = v16;
        v17 += 120;
        v16 += 120;
        if (v16 == a2)
        {
          goto LABEL_29;
        }
      }

      v32 = 0;
      LOBYTE(v15) = v16 + 120 == a2;
    }

    v5 = v32 | v15;
    return v5 & 1;
  }

  if (v4 < 2)
  {
LABEL_3:
    v5 = 1;
    return v5 & 1;
  }

  if (v4 != 2)
  {
    goto LABEL_14;
  }

  if (*(a2 - 16) >= *(a1 + 104))
  {
    goto LABEL_3;
  }

  v42 = *a1;
  v44 = *(a1 + 16);
  v46 = *(a1 + 32);
  v48 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 72);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *&v40[15] = *(a1 + 111);
  v38 = *(a1 + 80);
  *v40 = *(a1 + 96);
  v8 = *(a2 - 72);
  v9 = *(a2 - 88);
  v10 = *(a2 - 104);
  *a1 = *(a2 - 120);
  *(a1 + 16) = v10;
  *(a1 + 32) = v9;
  *(a1 + 48) = v8;
  *(a1 + 56) = *(a2 - 64);
  *(a1 + 72) = *(a2 - 48);
  *(a2 - 64) = 0;
  *(a2 - 56) = 0;
  *(a2 - 48) = 0;
  v11 = (a2 - 40);
  LODWORD(v8) = *(a2 - 9);
  v12 = *(a2 - 24);
  *(a1 + 80) = *(a2 - 40);
  *(a1 + 96) = v12;
  *(a1 + 111) = v8;
  *(a2 - 72) = v48;
  *(a2 - 88) = v46;
  *(a2 - 104) = v44;
  *(a2 - 120) = v42;
  v13 = *(a2 - 64);
  if (v13)
  {
    *(a2 - 56) = v13;
    v34 = v6;
    operator delete(v13);
    v6 = v34;
  }

  *(a2 - 64) = v6;
  *(a2 - 48) = v7;
  *v11 = v38;
  *(a2 - 24) = *v40;
  *(a2 - 9) = *&v40[15];
  v5 = 1;
  return v5 & 1;
}

__n128 std::__function::__func<operations_research::sat::CreateNoOverlapCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateNoOverlapCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F44748;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::CreateNoOverlapCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateNoOverlapCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::operator()(uint64_t a1, void **a2)
{
  v3 = *a2;
  result = operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(*(a1 + 8), 1);
  if (result)
  {
    v5 = *(a1 + 8);
    v6[0] = *(a1 + 16);
    v6[1] = v3;
    v6[2] = v5;
    result = operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(v5, 1);
    if (result)
    {
      operations_research::sat::CreateNoOverlapCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(BOOL)#1}::operator()(v6, 0);
      result = operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(*(a1 + 8), 0);
      if (result)
      {
        operations_research::sat::CreateNoOverlapCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(BOOL)#1}::operator()(v6, 1);
        return 1;
      }
    }
  }

  return result;
}

uint64_t std::__function::__func<operations_research::sat::CreateNoOverlapCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateNoOverlapCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat41CreateNoOverlapCompletionTimeCutGeneratorEPNS0_26SchedulingConstraintHelperEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat41CreateNoOverlapCompletionTimeCutGeneratorEPNS0_26SchedulingConstraintHelperEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat41CreateNoOverlapCompletionTimeCutGeneratorEPNS0_26SchedulingConstraintHelperEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat41CreateNoOverlapCompletionTimeCutGeneratorEPNS0_26SchedulingConstraintHelperEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void operations_research::sat::CreateNoOverlapCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(BOOL)#1}::operator()(void **a1, int a2)
{
  v69 = *MEMORY[0x277D85DE8];
  v49 = 0;
  v50 = 0uLL;
  v3 = a1[2];
  if ((-1431655765 * ((v3[11] - v3[10]) >> 3)) >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = a1[1][34];
    do
    {
      v7 = *(v3[19] + 4 * v5);
      if (v7 == -1 || (v8 = *(v3[19] + 4 * v5), ((*(*(v3[3] + 24) + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
      {
        v9 = v3[29];
        v10 = *(v9 + 8 * v5);
        if (v10 >= 1)
        {
          v11 = (v3[13] + v4);
          v12 = *v11;
          v13 = v3[31];
          v15 = v11[1];
          v14 = v11[2];
          v55 = *(v3[30] + 8 * v5);
          v17 = v3[32];
          v16 = v3[33];
          v56 = -*(v17 + 8 * v5);
          v57 = *(v13 + 8 * v5);
          v58 = -*(v16 + 8 * v5);
          v59 = *(v9 + 8 * v5);
          v60 = 0u;
          __p = 0u;
          v62 = 0;
          v67 = 0;
          v68 = 0;
          v63 = v12;
          v64 = v15;
          v65 = v14;
          v18 = v12;
          if (v12 == -1)
          {
            v21 = v14;
            if (v14 < 0x8000000000000003)
            {
              v21 = -INFINITY;
            }

            if (v14 > 0x7FFFFFFFFFFFFFFDLL)
            {
              v21 = INFINITY;
            }
          }

          else
          {
            v19 = v15;
            v20 = -INFINITY;
            if (v15 < 0x8000000000000003)
            {
              v19 = -INFINITY;
            }

            if (v15 > 0x7FFFFFFFFFFFFFFDLL)
            {
              v19 = INFINITY;
            }

            if (v14 >= 0x8000000000000003)
            {
              v20 = v14;
            }

            if (v14 > 0x7FFFFFFFFFFFFFFDLL)
            {
              v20 = INFINITY;
            }

            v21 = v20 + v19 * *(*v6 + 8 * v18);
          }

          v66 = v21;
          *&v60 = 1;
          *(&v60 + 1) = v10;
          std::vector<operations_research::sat::CtEvent>::push_back[abi:ne200100](&v49, &v55);
          if (__p)
          {
            *(&__p + 1) = __p;
            operator delete(__p);
          }

          v3 = a1[2];
        }
      }

      ++v5;
      v4 += 24;
    }

    while (v5 < (-1431655765 * ((v3[11] - v3[10]) >> 3)));
  }

  if (a2)
  {
    v22 = 6;
  }

  else
  {
    v22 = 0;
  }

  v48 = v22;
  v23 = v47;
  if (a2)
  {
    v24 = (v47 + 6);
    qmemcpy(v47, "Mirror", 6);
    v22 = v48;
  }

  else
  {
    v24 = v47;
  }

  *v24 = 0;
  v55 = "NoOverlapCompletionTimeExhaustive";
  v56 = 33;
  if ((v22 & 0x80u) != 0)
  {
    v23 = v47[0];
  }

  v53 = v23;
  v54 = v22;
  absl::lts_20240722::StrCat(&v55, &v53, &v46);
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v51 = &v43;
  v52 = 0;
  if (v50 != v49)
  {
    if (0xEEEEEEEEEEEEEEEFLL * ((v50 - v49) >> 3) < 0x222222222222223)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(&v46, &v43, 1, *a1, a1[1]);
  v25 = v43;
  if (v43)
  {
    v26 = v44;
    v27 = v43;
    if (v44 != v43)
    {
      do
      {
        v28 = *(v26 - 8);
        if (v28)
        {
          *(v26 - 7) = v28;
          operator delete(v28);
        }

        v26 -= 120;
      }

      while (v26 != v25);
      v27 = v43;
    }

    v44 = v25;
    operator delete(v27);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  v55 = "NoOverlapCompletionTimeQueyrane";
  v56 = 31;
  v29 = v48;
  v30 = v47;
  if ((v48 & 0x80u) != 0)
  {
    v30 = v47[0];
    v29 = v47[1];
  }

  v53 = v30;
  v54 = v29;
  absl::lts_20240722::StrCat(&v55, &v53, &v46);
  v31 = v49;
  v41 = v49;
  v40 = v50;
  v42 = v50;
  v50 = 0uLL;
  v49 = 0;
  operations_research::sat::GenerateCompletionTimeCutsWithEnergy(&v46, &v41, 1, 1, *a1, a1[1]);
  if (v31)
  {
    for (i = v40; i != v31; i -= 120)
    {
      v33 = *(i - 8);
      if (v33)
      {
        *(i - 7) = v33;
        operator delete(v33);
      }
    }

    operator delete(v31);
  }

  if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v48 & 0x80000000) == 0)
    {
      goto LABEL_56;
    }

LABEL_59:
    operator delete(v47[0]);
    v34 = v49;
    if (!v49)
    {
      goto LABEL_67;
    }

    goto LABEL_60;
  }

  operator delete(v46.__r_.__value_.__l.__data_);
  if (v48 < 0)
  {
    goto LABEL_59;
  }

LABEL_56:
  v34 = v49;
  if (!v49)
  {
    goto LABEL_67;
  }

LABEL_60:
  v35 = v50;
  v36 = v34;
  if (v50 != v34)
  {
    do
    {
      v37 = *(v35 - 8);
      if (v37)
      {
        *(v35 - 7) = v37;
        operator delete(v37);
      }

      v35 -= 120;
    }

    while (v35 != v34);
    v36 = v49;
  }

  *&v50 = v34;
  operator delete(v36);
LABEL_67:
  v38 = *MEMORY[0x277D85DE8];
}

void sub_23CCF049C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, void **a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  std::__exception_guard_exceptions<std::vector<operations_research::sat::CtEvent>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a32);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  std::vector<operations_research::sat::CtEvent>::~vector[abi:ne200100](&a29);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<operations_research::sat::CreateCumulativeCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateCumulativeCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F447C8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::CreateCumulativeCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateCumulativeCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  result = operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(*(a1 + 16), 1);
  if (result)
  {
    operations_research::sat::SchedulingDemandHelper::CacheAllEnergyValues(*(a1 + 24));
    v6 = *(a1 + 48);
    v5 = *(a1 + 56);
    v8[0] = *(a1 + 8);
    v8[1] = v5;
    v8[2] = v3;
    v7 = *(a1 + 32);
    v9 = *(a1 + 16);
    v10 = v7;
    v11 = v6;
    result = operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(v9, 1);
    if (result)
    {
      operations_research::sat::CreateCumulativeCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(BOOL)#1}::operator()(v8, 0);
      result = operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(*(a1 + 16), 0);
      if (result)
      {
        operations_research::sat::CreateCumulativeCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(BOOL)#1}::operator()(v8, 1);
        return 1;
      }
    }
  }

  return result;
}

uint64_t std::__function::__func<operations_research::sat::CreateCumulativeCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateCumulativeCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat42CreateCumulativeCompletionTimeCutGeneratorEPNS0_26SchedulingConstraintHelperEPNS0_22SchedulingDemandHelperERKNS0_16AffineExpressionEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat42CreateCumulativeCompletionTimeCutGeneratorEPNS0_26SchedulingConstraintHelperEPNS0_22SchedulingDemandHelperERKNS0_16AffineExpressionEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat42CreateCumulativeCompletionTimeCutGeneratorEPNS0_26SchedulingConstraintHelperEPNS0_22SchedulingDemandHelperERKNS0_16AffineExpressionEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat42CreateCumulativeCompletionTimeCutGeneratorEPNS0_26SchedulingConstraintHelperEPNS0_22SchedulingDemandHelperERKNS0_16AffineExpressionEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void operations_research::sat::CreateCumulativeCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(BOOL)#1}::operator()(uint64_t a1, int a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v48 = 0;
  v49 = 0uLL;
  v3 = *(a1 + 24);
  if ((-1431655765 * ((v3[11] - v3[10]) >> 3)) >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(*(a1 + 16) + 272);
    do
    {
      v7 = *(v3[19] + 4 * v5);
      if (v7 == -1 || (v8 = *(v3[19] + 4 * v5), ((*(*(v3[3] + 24) + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
      {
        if (*(v3[29] + 8 * v5) >= 1)
        {
          v9 = operations_research::sat::SchedulingDemandHelper::DemandMin(*(a1 + 32), v5);
          v3 = *(a1 + 24);
          if (v9 >= 1)
          {
            v10 = v3[29];
            v54 = *(v3[30] + 8 * v5);
            v11 = v3[31];
            v55 = -*(v3[32] + 8 * v5);
            v56 = *(v11 + 8 * v5);
            v57 = -*(v3[33] + 8 * v5);
            v58 = *(v10 + 8 * v5);
            v59 = 0u;
            memset(__p, 0, sizeof(__p));
            LODWORD(v61) = -1;
            *(&v61 + 1) = 0;
            v62 = 0;
            v64 = 0;
            IsFixed = 0;
            v12 = (v3[13] + v4);
            v13 = *(v12 + 2);
            v61 = *v12;
            v62 = v13;
            if (v61 == -1)
            {
              v16 = v62;
              if (v62 < 0x8000000000000003)
              {
                v16 = -INFINITY;
              }

              if (v62 > 0x7FFFFFFFFFFFFFFDLL)
              {
                v16 = INFINITY;
              }
            }

            else
            {
              v14 = *(&v61 + 1);
              v15 = -INFINITY;
              if (*(&v61 + 1) < 0x8000000000000003)
              {
                v14 = -INFINITY;
              }

              if (*(&v61 + 1) > 0x7FFFFFFFFFFFFFFDLL)
              {
                v14 = INFINITY;
              }

              if (v62 >= 0x8000000000000003)
              {
                v15 = v62;
              }

              if (v62 > 0x7FFFFFFFFFFFFFFDLL)
              {
                v15 = INFINITY;
              }

              v16 = v15 + v14 * *(*v6 + 8 * v61);
            }

            v63 = v16;
            *&v59 = operations_research::sat::SchedulingDemandHelper::DemandMin(*(a1 + 32), v5);
            v17 = *(a1 + 32);
            *(&v59 + 1) = *(*(v17 + 8) + 8 * v5);
            v18 = *(v17 + 17) + v4;
            if (v18 != __p)
            {
              std::vector<operations_research::sat::OrthogonalPackingResult::Item>::__assign_with_size[abi:ne200100]<operations_research::sat::OrthogonalPackingResult::Item*,operations_research::sat::OrthogonalPackingResult::Item*>(__p, *v18, *(v18 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v18 + 8) - *v18) >> 3));
              v17 = *(a1 + 32);
            }

            IsFixed = operations_research::sat::SchedulingDemandHelper::DemandIsFixed(v17, v5);
            std::vector<operations_research::sat::CtEvent>::push_back[abi:ne200100](&v48, &v54);
            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }

            v3 = *(a1 + 24);
          }
        }
      }

      ++v5;
      v4 += 24;
    }

    while (v5 < (-1431655765 * ((v3[11] - v3[10]) >> 3)));
  }

  v19 = *(a1 + 40);
  v20 = *(a1 + 56);
  if (v19 != -1)
  {
    v20 -= *(*(*a1 + 40) + ((8 * v19) ^ 8)) * *(a1 + 48);
  }

  if (a2)
  {
    v21 = 6;
  }

  else
  {
    v21 = 0;
  }

  v47 = v21;
  v22 = v46;
  if (a2)
  {
    v23 = (v46 + 6);
    qmemcpy(v46, "Mirror", 6);
    v21 = v47;
  }

  else
  {
    v23 = v46;
  }

  *v23 = 0;
  v54 = "CumulativeCompletionTimeExhaustive";
  v55 = 34;
  if ((v21 & 0x80u) != 0)
  {
    v22 = v46[0];
  }

  v52 = v22;
  v53 = v21;
  absl::lts_20240722::StrCat(&v54, &v52, &v45);
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v50 = &v42;
  v51 = 0;
  if (v49 != v48)
  {
    if (0xEEEEEEEEEEEEEEEFLL * ((v49 - v48) >> 3) < 0x222222222222223)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(&v45, &v42, v20, *(a1 + 8), *(a1 + 16));
  v24 = v42;
  if (v42)
  {
    v25 = v43;
    v26 = v42;
    if (v43 != v42)
    {
      do
      {
        v27 = *(v25 - 8);
        if (v27)
        {
          *(v25 - 7) = v27;
          operator delete(v27);
        }

        v25 -= 120;
      }

      while (v25 != v24);
      v26 = v42;
    }

    v43 = v24;
    operator delete(v26);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  v54 = "CumulativeCompletionTimeQueyrane";
  v55 = 32;
  v28 = v47;
  v29 = v46;
  if ((v47 & 0x80u) != 0)
  {
    v29 = v46[0];
    v28 = v46[1];
  }

  v52 = v29;
  v53 = v28;
  absl::lts_20240722::StrCat(&v54, &v52, &v45);
  v30 = v48;
  v40 = v48;
  v39 = v49;
  v41 = v49;
  v49 = 0uLL;
  v48 = 0;
  operations_research::sat::GenerateCompletionTimeCutsWithEnergy(&v45, &v40, v20, 1, *(a1 + 8), *(a1 + 16));
  if (v30)
  {
    for (i = v39; i != v30; i -= 120)
    {
      v32 = *(i - 8);
      if (v32)
      {
        *(i - 7) = v32;
        operator delete(v32);
      }
    }

    operator delete(v30);
  }

  if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v47 & 0x80000000) == 0)
    {
      goto LABEL_61;
    }

LABEL_64:
    operator delete(v46[0]);
    v33 = v48;
    if (!v48)
    {
      goto LABEL_72;
    }

    goto LABEL_65;
  }

  operator delete(v45.__r_.__value_.__l.__data_);
  if (v47 < 0)
  {
    goto LABEL_64;
  }

LABEL_61:
  v33 = v48;
  if (!v48)
  {
    goto LABEL_72;
  }

LABEL_65:
  v34 = v49;
  v35 = v33;
  if (v49 != v33)
  {
    do
    {
      v36 = *(v34 - 8);
      if (v36)
      {
        *(v34 - 7) = v36;
        operator delete(v36);
      }

      v34 -= 120;
    }

    while (v34 != v33);
    v35 = v48;
  }

  *&v49 = v33;
  operator delete(v35);
LABEL_72:
  v37 = *MEMORY[0x277D85DE8];
}

void sub_23CCF0CA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, void **a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  std::__exception_guard_exceptions<std::vector<operations_research::sat::CtEvent>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a32);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  std::vector<operations_research::sat::CtEvent>::~vector[abi:ne200100](&a29);
  _Unwind_Resume(a1);
}

operations_research::sat::SatPostsolver *operations_research::sat::SatPostsolver::SatPostsolver(operations_research::sat::SatPostsolver *this, int a2)
{
  *(this + 8) = 0u;
  *(this + 104) = 0u;
  v3 = (this + 104);
  *this = a2;
  *(this + 1) = a2;
  *(this + 17) = 0;
  v4 = (this + 136);
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 116) = 0u;
  if (!a2)
  {
    goto LABEL_12;
  }

  std::vector<int>::__append((this + 104), a2);
  if (a2 < 1)
  {
    goto LABEL_9;
  }

  v6 = *v3;
  if (a2 <= 7)
  {
    v7 = 0;
    do
    {
LABEL_8:
      v6->i32[v7] = v7;
      ++v7;
    }

    while (a2 != v7);
    goto LABEL_9;
  }

  v7 = a2 & 0x7FFFFFF8;
  v8 = xmmword_23CE38660;
  v9 = v6 + 1;
  v10.i64[0] = 0x400000004;
  v10.i64[1] = 0x400000004;
  v11.i64[0] = 0x800000008;
  v11.i64[1] = 0x800000008;
  v12 = v7;
  do
  {
    v9[-1] = v8;
    *v9 = vaddq_s32(v8, v10);
    v8 = vaddq_s32(v8, v11);
    v9 += 2;
    v12 -= 8;
  }

  while (v12);
  if (v7 != a2)
  {
    goto LABEL_8;
  }

LABEL_9:
  v13 = 2 * a2;
  if (2 * a2 <= 0)
  {
LABEL_12:
    v13 = 0;
    v14 = *v4;
    goto LABEL_13;
  }

  v14 = *(this + 17);
  if (*(this + 32) > v13)
  {
    v15 = v14 + (((v13 + 63) >> 3) & 0x1FFFFFF8);
    *(v15 - 8) &= ~(-2 << (v13 + 63));
  }

LABEL_13:
  *(this + 32) = v13;
  v16 = (v13 + 63) >> 6;
  v19 = 0;
  v17 = (*(this + 18) - v14) >> 3;
  if (v16 <= v17)
  {
    if (v16 < v17)
    {
      *(this + 18) = v14 + 8 * v16;
    }
  }

  else
  {
    std::vector<unsigned long long>::__append(v4, v16 - v17, &v19);
  }

  return this;
}

void sub_23CCF0EC8(_Unwind_Exception *a1)
{
  v6 = *v3;
  if (*v3)
  {
    v1[18] = v6;
    operator delete(v6);
    v7 = *v2;
    if (!*v2)
    {
LABEL_3:
      v8 = v1[10];
      if (!v8)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v7 = *v2;
    if (!*v2)
    {
      goto LABEL_3;
    }
  }

  v1[14] = v7;
  operator delete(v7);
  v8 = v1[10];
  if (!v8)
  {
LABEL_4:
    std::deque<int>::~deque[abi:ne200100]((v1 + 4));
    v9 = *v4;
    if (!*v4)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  v1[11] = v8;
  operator delete(v8);
  std::deque<int>::~deque[abi:ne200100]((v1 + 4));
  v9 = *v4;
  if (!*v4)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  v1[2] = v9;
  operator delete(v9);
  _Unwind_Resume(a1);
}

void operations_research::sat::SatPostsolver::Add(uint64_t a1, int a2, int *a3, uint64_t a4)
{
  v16 = operations_research::sat::SatPostsolver::ApplyReverseMapping(a1, a2);
  std::vector<int>::push_back[abi:ne200100](a1 + 80, &v16);
  v15 = *(a1 + 72);
  std::vector<int>::push_back[abi:ne200100](a1 + 8, &v15);
  if ((a4 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = 4 * a4;
    do
    {
      v8 = operations_research::sat::SatPostsolver::ApplyReverseMapping(a1, *a3);
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v11 = *(a1 + 40);
      if (v10 == v11)
      {
        v12 = 0;
      }

      else
      {
        v12 = ((v10 - v11) << 7) - 1;
      }

      v13 = *(a1 + 72);
      v14 = v13 + *(a1 + 64);
      if (v12 == v14)
      {
        std::deque<operations_research::sat::Literal>::__add_back_capacity((a1 + 32));
        v11 = *(a1 + 40);
        v13 = *(a1 + 72);
        v14 = *(a1 + 64) + v13;
      }

      *(*(v11 + ((v14 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v14 & 0x3FF)) = v8;
      *(a1 + 72) = v13 + 1;
      ++a3;
      v7 -= 4;
    }

    while (v7);
  }
}

uint64_t operations_research::sat::SatPostsolver::ApplyReverseMapping(uint64_t a1, int a2)
{
  v2 = a2;
  v3 = a2 >> 1;
  v4 = *(a1 + 104);
  v5 = (a1 + 104);
  if (a2 >> 1 >= ((*(a1 + 112) - v4) >> 2))
  {
    do
    {
      v7 = *(a1 + 4);
      *(a1 + 4) = v7 + 1;
      v15 = v7;
      std::vector<int>::push_back[abi:ne200100](v5, &v15);
      v4 = *(a1 + 104);
    }

    while (v3 >= ((*(a1 + 112) - v4) >> 2));
    v8 = 2 * *(a1 + 4);
    if (v8 < 1)
    {
      v8 = 0;
    }

    else if (*(a1 + 128) > v8)
    {
      v9 = *(a1 + 136) + (((v8 + 63) >> 3) & 0x1FFFFFF8);
      *(v9 - 8) &= ~(-2 << (v8 + 63));
    }

    *(a1 + 128) = v8;
    v10 = *(a1 + 136);
    v11 = *(a1 + 144);
    v12 = (v8 + 63) >> 6;
    v16 = 0;
    v13 = (v11 - v10) >> 3;
    if (v12 <= v13)
    {
      if (v12 < v13)
      {
        *(a1 + 144) = v10 + 8 * v12;
      }
    }

    else
    {
      std::vector<unsigned long long>::__append(a1 + 136, v12 - v13, &v16);
      v4 = *v5;
    }
  }

  return v2 & 1 | (2 * *(v4 + 4 * v3));
}

uint64_t operations_research::sat::SatPostsolver::FixVariable(uint64_t a1, int a2)
{
  result = operations_research::sat::SatPostsolver::ApplyReverseMapping(a1, a2);
  *(*(a1 + 136) + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  return result;
}

void operations_research::sat::SatPresolver::AddBinaryClause(uint64_t a1, int a2, int a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v4[0] = a2;
  v4[1] = a3;
  operations_research::sat::SatPresolver::AddClause(a1, v4, 2);
  v3 = *MEMORY[0x277D85DE8];
}

void operations_research::sat::SatPresolver::AddClause(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a1 + 336);
  v7 = -1431655765 * (&v6[-*(a1 + 328)] >> 3);
  v87 = v7;
  if ((a3 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    if (((4 * a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v9 = *(a1 + 344);
  if (v6 < v9)
  {
    *v6 = 0;
    *(v6 + 1) = 0;
    v8 = (v6 + 24);
    *(v6 + 2) = 0;
  }

  else
  {
    v10 = *(a1 + 328);
    v11 = v6 - v10;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v10) >> 3);
    v13 = v12 + 1;
    if (v12 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3);
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    if (v14 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      if (v15 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v16 = 24 * v12;
    *v16 = 0;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
    v8 = 24 * v12 + 24;
    v17 = (24 * v12 - v11);
    memcpy(v17, v10, v11);
    *(a1 + 328) = v17;
    *(a1 + 336) = v8;
    *(a1 + 344) = 0;
    if (v10)
    {
      operator delete(v10);
    }
  }

  *(a1 + 336) = v8;
  v19 = *(a1 + 264);
  v18 = *(a1 + 272);
  if (v19 == v18 << 6)
  {
    if ((v19 + 1) < 0)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    if (v19 > 0x3FFFFFFFFFFFFFFELL)
    {
      v22 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18 << 7;
      v21 = (v19 & 0x3FFFFFFFFFFFFFC0) + 64;
      if (v20 <= v21)
      {
        v22 = v21;
      }

      else
      {
        v22 = v20;
      }
    }

    std::vector<BOOL>::reserve(a1 + 256, v22);
    v19 = *(a1 + 264);
  }

  v23 = *(a1 + 288);
  v24 = *(a1 + 296);
  v25 = *(a1 + 288);
  *(a1 + 264) = v19 + 1;
  *(*(a1 + 256) + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
  if (v24 == v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = ((v24 - v25) << 7) - 1;
  }

  v27 = *(a1 + 320);
  v28 = v27 + *(a1 + 312);
  if (v26 == v28)
  {
    std::deque<int>::__add_back_capacity((a1 + 280));
    v25 = *(a1 + 288);
    v27 = *(a1 + 320);
    v28 = *(a1 + 312) + v27;
  }

  *(*(v25 + ((v28 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v28 & 0x3FF)) = v7;
  *(a1 + 320) = v27 + 1;
  v29 = *(a1 + 336);
  v30 = *(a1 + 448);
  v31 = *(v29 - 24);
  v32 = *(v29 - 16);
  if (v30 == *(a1 + 456))
  {
    v35 = 0;
    v33 = (v32 - v31) >> 2;
  }

  else
  {
    v33 = (v32 - v31) >> 2;
    if (v32 == v31)
    {
      v35 = 0;
    }

    else
    {
      v34 = 0;
      v35 = 0;
      v36 = 1;
      do
      {
        v37 = *(v31 + 4 * v34);
        v38 = *(v30 + 4 * v37);
        *(v31 + 4 * v34) = v38;
        v35 |= v37 != v38;
        v34 = v36++;
      }

      while (v33 > v34);
    }
  }

  v39 = 126 - 2 * __clz(v33);
  if (v32 == v31)
  {
    v40 = 0;
  }

  else
  {
    v40 = v39;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(v31, v32, &v88, v40, 1);
  v41 = *(v29 - 24);
  v42 = *(v29 - 16);
  if (v41 != v42)
  {
    v43 = v41 + 1;
    while (v43 != v42)
    {
      v44 = *(v43 - 1);
      v45 = *v43++;
      if (v44 == v45)
      {
        v46 = v43 - 2;
        while (v43 != v42)
        {
          v47 = v44;
          v44 = *v43;
          if (v47 != *v43)
          {
            v46[1] = v44;
            ++v46;
          }

          ++v43;
        }

        if (v46 + 1 != v42)
        {
          v42 = v46 + 1;
          *(v29 - 16) = v46 + 1;
        }

        break;
      }
    }
  }

  v48 = v42 - v41;
  if (v48 < 2)
  {
LABEL_55:
    v51 = (*(a1 + 328) + 24 * v87);
    v53 = *v51;
    v52 = v51[1];
    if (v53 == v52)
    {
      v54 = 0;
    }

    else
    {
      v54 = 0;
      if (v52 - 1 == v53)
      {
        v55 = v53;
      }

      else
      {
        v66 = 0;
        v67 = (((v52 - 1) - v53) >> 2) + 1;
        v55 = &v53[v67 & 0x7FFFFFFFFFFFFFFELL];
        v68 = v53 + 1;
        v69 = v67 & 0x7FFFFFFFFFFFFFFELL;
        do
        {
          v73 = *(v68 - 1) >> 1;
          v70 = *v68 >> 1;
          v71 = -v73 < 0;
          v72 = -v73 & 0x3F;
          LOBYTE(v73) = v73 & 0x3F;
          if (!v71)
          {
            v73 = -v72;
          }

          v71 = -v70 < 0;
          v74 = -v70 & 0x3F;
          LOBYTE(v70) = v70 & 0x3F;
          if (!v71)
          {
            v70 = -v74;
          }

          v54 |= 1 << v73;
          v66 |= 1 << v70;
          v68 += 2;
          v69 -= 2;
        }

        while (v69);
        v54 |= v66;
        if (v67 == (v67 & 0x7FFFFFFFFFFFFFFELL))
        {
          goto LABEL_76;
        }
      }

      do
      {
        v75 = *v55++;
        v76 = -(v75 >> 1) & 0x3F;
        v77 = (v75 >> 1) & 0x3F;
        if (v75 >> 1 <= 0)
        {
          v77 = -v76;
        }

        v54 |= 1 << v77;
      }

      while (v55 != v52);
    }

LABEL_76:
    v86 = v54;
    std::vector<long long>::push_back[abi:ne200100]((a1 + 352), &v86);
    v78 = *(a1 + 1456);
    if (((v78 != 0) & v35) == 1)
    {
      operations_research::sat::DratProofHandler::AddClause(v78, *(v29 - 24), (*(v29 - 16) - *(v29 - 24)) >> 2);
      operations_research::sat::DratProofHandler::DeleteClause(*(a1 + 1456), a2, a3);
    }

    v79 = (*(*(v29 - 16) - 4) | 1) + 1;
    v80 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 400) - *(a1 + 392)) >> 3);
    if (v79 > v80)
    {
      std::vector<std::vector<int>>::__append(a1 + 392, v79 - v80);
      v81 = *(a1 + 416);
      v82 = (*(a1 + 424) - v81) >> 2;
      if (v79 <= v82)
      {
        if (v79 < v82)
        {
          *(a1 + 424) = v81 + 4 * v79;
        }
      }

      else
      {
        std::vector<int>::__append((a1 + 416), v79 - v82);
      }
    }

    v83 = *(v29 - 24);
    for (i = *(v29 - 16); v83 != i; ++*(*(a1 + 416) + 4 * v85))
    {
      v85 = *v83++;
      std::vector<int>::push_back[abi:ne200100](*(a1 + 392) + 24 * v85, &v87);
    }

    return;
  }

  v49 = 2;
  v50 = 1;
  while ((v41[v50] ^ v41[v49 - 2]) != 1)
  {
    v50 = v49++;
    if (v48 <= v50)
    {
      goto LABEL_55;
    }
  }

  v57 = *(a1 + 288);
  v56 = *(a1 + 296);
  v58 = ((v56 - v57) << 7) - 1;
  v59 = v56 == v57;
  ++*(a1 + 472);
  v61 = *(a1 + 312);
  v60 = *(a1 + 320);
  if (v59)
  {
    v58 = 0;
  }

  *(a1 + 320) = v60 - 1;
  if ((v58 - (v60 + v61) + 1) >= 0x800)
  {
    operator delete(*(v56 - 8));
    *(a1 + 296) -= 8;
  }

  v62 = *(a1 + 336);
  v65 = *(v62 - 24);
  v64 = v62 - 24;
  v63 = v65;
  if (v65)
  {
    *(*(a1 + 336) - 16) = v63;
    operator delete(v63);
  }

  *(a1 + 336) = v64;
  --*(a1 + 264);
}

void sub_23CCF1840(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::SatPresolver::SetNumVariables(operations_research::sat::SatPresolver *this, int a2)
{
  v2 = 2 * a2;
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 50) - *(this + 49)) >> 3);
  if (v2 > v3)
  {
    std::vector<std::vector<int>>::__append(this + 392, v2 - v3);
    v5 = *(this + 52);
    v6 = (*(this + 53) - v5) >> 2;
    if (v2 <= v6)
    {
      if (v2 < v6)
      {
        *(this + 53) = v5 + 4 * v2;
      }
    }

    else
    {

      std::vector<int>::__append((this + 416), v2 - v6);
    }
  }
}

void operations_research::sat::SatPresolver::AddClauseInternal(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 1456);
  if (v4)
  {
    operations_research::sat::DratProofHandler::AddClause(v4, *a2, (*(a2 + 8) - *a2) >> 2);
  }

  v6 = *(a1 + 328);
  v5 = *(a1 + 336);
  v7 = v5 - v6;
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 3);
  v52 = -1431655765 * ((v5 - v6) >> 3);
  v9 = *(a1 + 344);
  if (v5 >= v9)
  {
    v11 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v6) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x555555555555555)
    {
      v13 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (v13 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v14 = (8 * ((v5 - v6) >> 3));
    v10 = v14 + 3;
    v15 = v14 - v7;
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0;
    memcpy(v14 - v7, v6, v7);
    *(a1 + 328) = v15;
    *(a1 + 336) = v10;
    *(a1 + 344) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    v10 = v5 + 24;
    *v5 = 0;
    *(v5 + 1) = 0;
    *(v5 + 2) = 0;
  }

  *(a1 + 336) = v10;
  v16 = *(v10 - 3);
  *(v10 - 3) = *a2;
  *a2 = v16;
  v17 = *(v10 - 2);
  *(v10 - 2) = *(a2 + 8);
  *(a2 + 8) = v17;
  v18 = *(v10 - 1);
  *(v10 - 1) = *(a2 + 16);
  *(a2 + 16) = v18;
  v20 = *(a1 + 264);
  v19 = *(a1 + 272);
  if (v20 == v19 << 6)
  {
    if ((v20 + 1) < 0)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    if (v20 > 0x3FFFFFFFFFFFFFFELL)
    {
      v23 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v19 << 7;
      v22 = (v20 & 0x3FFFFFFFFFFFFFC0) + 64;
      if (v21 <= v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = v21;
      }
    }

    std::vector<BOOL>::reserve(a1 + 256, v23);
    v20 = *(a1 + 264);
  }

  v24 = *(a1 + 288);
  v25 = *(a1 + 296);
  v26 = *(a1 + 288);
  *(a1 + 264) = v20 + 1;
  *(*(a1 + 256) + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
  if (v25 == v26)
  {
    v27 = 0;
  }

  else
  {
    v27 = ((v25 - v26) << 7) - 1;
  }

  v28 = *(a1 + 320);
  v29 = v28 + *(a1 + 312);
  if (v27 == v29)
  {
    std::deque<int>::__add_back_capacity((a1 + 280));
    v26 = *(a1 + 288);
    v28 = *(a1 + 320);
    v29 = *(a1 + 312) + v28;
  }

  *(*(v26 + ((v29 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v29 & 0x3FF)) = v8;
  *(a1 + 320) = v28 + 1;
  v30 = *(a1 + 336);
  v31 = *(v30 - 24);
  v32 = *(v30 - 16);
  if (v31 != v32)
  {
    do
    {
      v33 = *v31++;
      std::vector<int>::push_back[abi:ne200100](*(a1 + 392) + 24 * v33, &v52);
      ++*(*(a1 + 416) + 4 * v33);
      operations_research::sat::SatPresolver::UpdatePriorityQueue(a1, (v33 >> 1));
      operations_research::sat::SatPresolver::UpdateBvaPriorityQueue(a1, v33);
    }

    while (v31 != v32);
    LODWORD(v8) = v52;
  }

  v34 = (*(a1 + 328) + 24 * v8);
  v36 = *v34;
  v35 = v34[1];
  if (v36 == v35)
  {
    v37 = 0;
    goto LABEL_46;
  }

  v37 = 0;
  if (v35 - 1 == v36)
  {
    v38 = v36;
    do
    {
LABEL_43:
      v48 = *v38++;
      v49 = -(v48 >> 1) & 0x3F;
      v50 = (v48 >> 1) & 0x3F;
      if (v48 >> 1 <= 0)
      {
        v50 = -v49;
      }

      v37 |= 1 << v50;
    }

    while (v38 != v35);
    goto LABEL_46;
  }

  v39 = 0;
  v40 = (((v35 - 1) - v36) >> 2) + 1;
  v38 = &v36[v40 & 0x7FFFFFFFFFFFFFFELL];
  v41 = v36 + 1;
  v42 = v40 & 0x7FFFFFFFFFFFFFFELL;
  do
  {
    v46 = *(v41 - 1) >> 1;
    v43 = *v41 >> 1;
    v44 = -v46 < 0;
    v45 = -v46 & 0x3F;
    LOBYTE(v46) = v46 & 0x3F;
    if (!v44)
    {
      v46 = -v45;
    }

    v44 = -v43 < 0;
    v47 = -v43 & 0x3F;
    LOBYTE(v43) = v43 & 0x3F;
    if (!v44)
    {
      v43 = -v47;
    }

    v37 |= 1 << v46;
    v39 |= 1 << v43;
    v41 += 2;
    v42 -= 2;
  }

  while (v42);
  v37 |= v39;
  if (v40 != (v40 & 0x7FFFFFFFFFFFFFFELL))
  {
    goto LABEL_43;
  }

LABEL_46:
  v51 = v37;
  std::vector<long long>::push_back[abi:ne200100]((a1 + 352), &v51);
}

void operations_research::sat::SatPresolver::UpdatePriorityQueue(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1 != a1[1])
  {
    v31[3] = v2;
    v31[4] = v3;
    v5 = (v4 + 16 * a2);
    v6 = (*(a1[52] + 4 * ((2 * a2) | 1)) + *(a1[52] + (a2 << 33 >> 30)));
    v5[1] = v6;
    v7 = *v5;
    if ((v7 & 0x80000000) == 0 && (v8 = a1[4], v9 = (a1[5] - v8) >> 3, v9 > v7) && (v10 = *(v8 + 8 * v7), v10 == v5))
    {
      if (*(*(v8 + 8 * ((v7 - 1) / 2)) + 8) <= v6)
      {
        v24 = (2 * v7) | 1;
        v25 = v24;
        if (v9 <= v24)
        {
          v23 = *v5;
          v21 = *v5;
        }

        else
        {
          v26 = 2 * v7;
          v27 = v10[1];
          while (1)
          {
            v21 = v26 + 2;
            if (v9 <= v26 + 2 || (v28 = *(v8 + 8 * v25), v29 = *(v8 + 8 * v21), v30 = *(v29 + 8), *(v28 + 8) <= v30))
            {
              v29 = *(v8 + 8 * v24);
              v30 = *(v29 + 8);
              v21 = v24;
            }

            if (v27 <= v30)
            {
              break;
            }

            *(v8 + 8 * v7) = v29;
            *v29 = v7;
            v26 = 2 * v21;
            v24 = (2 * v21) | 1;
            v25 = v24;
            LODWORD(v7) = v21;
            if (v9 <= v24)
            {
              goto LABEL_31;
            }
          }

          v21 = v7;
LABEL_31:
          v23 = v21;
        }
      }

      else if (v7)
      {
        v19 = v10[1];
        while (1)
        {
          v20 = v7 - 1;
          v21 = (v7 - 1) >> 1;
          v22 = *(v8 + 8 * v21);
          v23 = v7;
          if (*(v22 + 8) <= v19)
          {
            break;
          }

          *(v8 + 8 * v7) = v22;
          *v22 = v7;
          LODWORD(v7) = v20 >> 1;
          if (v20 < 2)
          {
            v23 = v20 >> 1;
            goto LABEL_32;
          }
        }

        v21 = v7;
      }

      else
      {
        v23 = 0;
        v21 = 0;
      }

LABEL_32:
      *(v8 + 8 * v23) = v10;
      *v10 = v21;
    }

    else
    {
      v31[0] = v5;
      std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100]((a1 + 4), v31);
      v12 = a1[4];
      v13 = ((a1[5] - v12) >> 3) - 1;
      v14 = *(v12 + 8 * v13);
      if (v13 < 1)
      {
        v18 = v13;
      }

      else
      {
        v15 = *(v14 + 8);
        while (1)
        {
          v16 = v13 - 1;
          v17 = *(v12 + 8 * ((v13 - 1) >> 1));
          v18 = v13;
          if (*(v17 + 8) <= v15)
          {
            break;
          }

          *(v12 + 8 * v13) = v17;
          *v17 = v13;
          v13 = v16 >> 1;
          if (v16 <= 1)
          {
            v18 = v16 >> 1;
            v13 = v16 >> 1;
            break;
          }
        }
      }

      *(v12 + 8 * v18) = v14;
      *v14 = v13;
    }
  }
}

void *operations_research::sat::SatPresolver::UpdateBvaPriorityQueue(void *result, int a2)
{
  if (result[12])
  {
    v2 = (*(result[8] + (((result[11] + a2) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(result + 88) + a2));
    v3 = *(result[52] + 4 * a2);
    v2[1] = v3;
    v4 = *v2;
    if ((v4 & 0x80000000) == 0)
    {
      v5 = result[14];
      v6 = (result[15] - v5) >> 3;
      if (v6 > v4)
      {
        v7 = v5[v4];
        if (v7 == v2)
        {
          if (v5[(v4 - 1) / 2][1] >= v3)
          {
            v12 = (2 * v4) | 1;
            v13 = v12;
            if (v6 <= v12)
            {
              v20 = *v2;
              v5[v4] = v7;
              *v7 = v4;
            }

            else
            {
              v14 = 2 * v4;
              v15 = v7[1];
              while (1)
              {
                v16 = v14 + 2;
                if (v6 <= v14 + 2 || (v17 = v5[v13], v18 = v5[v16], v19 = v18[1], v17[1] >= v19))
                {
                  v18 = v5[v12];
                  v19 = v18[1];
                  v16 = v12;
                }

                if (v15 >= v19)
                {
                  break;
                }

                v5[v4] = v18;
                *v18 = v4;
                v14 = 2 * v16;
                v12 = (2 * v16) | 1;
                v13 = v12;
                LODWORD(v4) = v16;
                if (v6 <= v12)
                {
                  goto LABEL_24;
                }
              }

              v16 = v4;
LABEL_24:
              v5[v16] = v7;
              *v7 = v16;
            }
          }

          else if (v4)
          {
            v8 = v7[1];
            while (1)
            {
              v9 = v4 - 1;
              v10 = (v4 - 1) >> 1;
              v11 = v5[v10];
              if (v11[1] >= v8)
              {
                break;
              }

              v5[v4] = v11;
              *v11 = v4;
              LODWORD(v4) = v9 >> 1;
              if (v9 < 2)
              {
                v5[v10] = v7;
                *v7 = v10;
                return result;
              }
            }

            v5[v4] = v7;
            *v7 = v4;
          }

          else
          {
            *v5 = v7;
            *v7 = 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t operations_research::sat::SatPresolver::ProcessAllClauses(operations_research::sat::SatPresolver *this)
{
  v2 = *(this + 39);
  v3 = (v2 >> 7) & 0x1FFFFFFFFFFFFF8;
  v4 = *(this + 36);
  if (*(this + 37) == v4)
  {
    v12 = 0;
    v6 = 0;
    v13 = 0;
    v22 = 0;
    v17 = 0;
    v7 = (this + 320);
    v10 = (v4 + 8 * ((*(this + 40) + v2) >> 10));
    v32[0] = this;
    goto LABEL_16;
  }

  v5 = *(this + 39) & 0x3FFLL;
  v6 = (*(v4 + v3) + 4 * v5);
  v7 = (this + 320);
  v8 = *(this + 40) + v2;
  v9 = (v8 >> 7) & 0x1FFFFFFFFFFFFF8;
  v10 = (v4 + v9);
  v11 = v8 & 0x3FF;
  v12 = *(v4 + v9) + 4 * v11;
  v32[0] = this;
  if (v12 == v6)
  {
    v13 = 0;
    goto LABEL_13;
  }

  v13 = (v11 | ((v9 - v3) << 7)) - v5;
  if (v13 < 129)
  {
LABEL_13:
    v22 = 0;
    v17 = 0;
    goto LABEL_16;
  }

  v31 = (v4 + v9);
  v14 = v12;
  v15 = v6;
  v16 = (v11 | ((v9 - v3) << 7)) - v5;
  if (v13 >= 0x1FFFFFFFFFFFFFFFLL)
  {
    v17 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v17 = (v11 | ((v9 - v3) << 7)) - v5;
  }

  v18 = MEMORY[0x277D826F0];
  while (1)
  {
    v19 = operator new(4 * v17, v18);
    if (v19)
    {
      break;
    }

    v20 = v17 >> 1;
    v21 = v17 > 1;
    v17 >>= 1;
    if (!v21)
    {
      v22 = 0;
      v17 = v20;
      goto LABEL_15;
    }
  }

  v22 = v19;
LABEL_15:
  v6 = v15;
  v12 = v14;
  v10 = v31;
  v13 = v16;
LABEL_16:
  std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::SatPresolver::ProcessAllClauses(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>>((v4 + v3), v6, v10, v12, v32, v13, v22, v17);
  if (v22)
  {
    operator delete(v22);
  }

  if (!*v7)
  {
    return 1;
  }

  v23 = 0;
  do
  {
    v24 = *(this + 36);
    v25 = (*(v24 + ((*(this + 39) >> 7) & 0x1FFFFFFFFFFFFF8)))[*(this + 39) & 0x3FFLL];
    *(*(this + 32) + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v25);
    v26 = *(this + 40) - 1;
    v27 = *(this + 39) + 1;
    *(this + 39) = v27;
    *(this + 40) = v26;
    if (v27 >= 0x800)
    {
      operator delete(*v24);
      *(this + 36) += 8;
      *(this + 39) -= 1024;
    }

    result = operations_research::sat::SatPresolver::ProcessClauseToSimplifyOthers(this, v25);
    if (!result)
    {
      break;
    }

    if (++v23 >= 1000)
    {
      if ((*(this + 48) + *(this + 47)) >= 1000000001)
      {
        if (dword_27E25D370 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::SatPresolver::ProcessAllClauses(void)::$_1::operator() const(void)::site, dword_27E25D370))
        {
          absl::lts_20240722::log_internal::LogMessage::LogMessage(v32, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/simplification.cc", 320);
          v30 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v32, 1);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v30, "Aborting ProcessAllClauses() because work limit has been reached", 0x40uLL);
          absl::lts_20240722::log_internal::LogMessage::~LogMessage(v32);
          return 1;
        }

        return 1;
      }

      if (*(this + 183))
      {
        v29 = result;
        if (operations_research::TimeLimit::LimitReached(*(this + 183)))
        {
          return v29;
        }

        v23 = 0;
        result = v29;
      }

      else
      {
        v23 = 0;
      }
    }
  }

  while (*v7);
  return result;
}

void sub_23CCF2300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CCF2314(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::SatPresolver::ProcessClauseToSimplifyOthers(operations_research::sat::SatPresolver *this, int a2)
{
  v2 = *(this + 41) + 24 * a2;
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *v2;
  if (*v2 == v4)
  {
    return 1;
  }

  v81 = (*(this + 41) + 24 * a2);
  v8 = *v5;
  v9 = *(this + 52);
  v10 = *(v9 + 4 * *v5);
  do
  {
    v12 = *v5++;
    v11 = v12;
    v13 = *(v9 + 4 * v12);
    if (v13 < v10)
    {
      v8 = v11;
      v10 = v13;
    }
  }

  while (v5 != v4);
  result = operations_research::sat::SatPresolver::ProcessClauseToSimplifyOthersUsingLiteral(this, a2, v8);
  if (result)
  {
    v15 = v81;
    v16 = *v81;
    v17 = v81[1];
    if (*v81 != v17)
    {
      v18 = 0x7FFFFFFF;
      v19 = -1;
      do
      {
        v20 = *v16;
        if (*v16 != v8 && *(*(this + 52) + 4 * v20) < v18)
        {
          v18 = *(*(this + 52) + 4 * v20);
          v19 = *v16;
        }

        ++v16;
      }

      while (v16 != v17);
      if (v19 != -1 && *(*(this + 52) + 4 * v19) < *(*(this + 52) + 4 * (v8 ^ 1)))
      {

        return operations_research::sat::SatPresolver::ProcessClauseToSimplifyOthersUsingLiteral(this, a2, v19);
      }
    }

    v21 = v8 ^ 1u;
    v22 = (*(this + 49) + 24 * v21);
    begin = v22->__begin_;
    end = v22->__end_;
    if (v22->__begin_ == end)
    {
      v26 = 0;
      v25 = 0;
      v74 = v21 << 32;
      v75 = 0;
      v77 = 1;
      goto LABEL_74;
    }

    v25 = 0;
    v26 = 0;
    v27 = *(*(this + 44) + 8 * a2);
    v80 = *(this + 49) + 24 * v21;
    v79 = v27;
LABEL_23:
    v28 = *begin;
    v29 = *(*(this + 44) + 8 * *begin);
    if (!v29)
    {
      goto LABEL_22;
    }

    if ((v27 & ~v29) != 0)
    {
      goto LABEL_21;
    }

    v30 = v28;
    v31 = *(this + 41);
    v32 = (v31 + 24 * v28);
    v33 = *v32;
    v34 = v32[1];
    v35 = v34 - *v32;
    v36 = v35 >> 2;
    v38 = *v15;
    v37 = v15[1];
    v39 = v37 - *v15;
    if (v35 >> 2 < v39)
    {
LABEL_21:
      v22->__begin_[v25++] = v28;
      goto LABEL_22;
    }

    *(this + 48) += v39 + v36;
    if (v38 == v37)
    {
      goto LABEL_47;
    }

    v40 = v36 - v39;
    v41 = v35 - 4;
    v42 = v33;
    while (1)
    {
      v43 = *v42;
      v44 = *v38;
      if (*v38 == *v42)
      {
        ++v38;
      }

      else
      {
        if ((v44 ^ v43) == 1)
        {
          v45 = v38 + 1;
          if (v45 != v37)
          {
            v46 = 1;
            do
            {
              v47 = v42[v46];
              v48 = *v45;
              if (*v45 == v47)
              {
                ++v45;
              }

              else
              {
                if ((v48 ^ v47) == 1)
                {
                  goto LABEL_21;
                }

                if (v48 < v47)
                {
                  goto LABEL_21;
                }

                if (--v40 < 0)
                {
                  goto LABEL_21;
                }
              }

              ++v46;
            }

            while (v45 != v37);
          }

          if (v42 + 1 != v34)
          {
            memmove(v42, v42 + 1, v41);
            v30 = v28;
            v27 = v79;
            v22 = v80;
            v15 = v81;
            v31 = *(this + 41);
            v33 = *(v31 + 24 * v28);
          }

          v32[1] = (v42 + v41);
          v34 = *(v31 + 24 * v30 + 8);
LABEL_47:
          if (v33 == v34)
          {
            return 0;
          }

          v49 = *(this + 182);
          if (v49)
          {
            v50 = v30;
            operations_research::sat::DratProofHandler::AddClause(v49, v33, v34 - v33);
            v30 = v50;
            v27 = v79;
            v22 = v80;
            v15 = v81;
            v51 = *(this + 41) + 24 * v50;
            v33 = *v51;
            v34 = *(v51 + 8);
          }

          if (v33 == v34)
          {
            v52 = 0;
          }

          else
          {
            v52 = 0;
            if (v34 - 1 == v33)
            {
              v53 = v33;
              goto LABEL_61;
            }

            v54 = 0;
            v55 = (((v34 - 1) - v33) >> 2) + 1;
            v53 = &v33[v55 & 0x7FFFFFFFFFFFFFFELL];
            v56 = v33 + 1;
            v57 = v55 & 0x7FFFFFFFFFFFFFFELL;
            do
            {
              v61 = *(v56 - 1) >> 1;
              v58 = *v56 >> 1;
              v59 = -v61 < 0;
              v60 = -v61 & 0x3F;
              LOBYTE(v61) = v61 & 0x3F;
              if (!v59)
              {
                v61 = -v60;
              }

              v59 = -v58 < 0;
              v62 = -v58 & 0x3F;
              LOBYTE(v58) = v58 & 0x3F;
              if (!v59)
              {
                v58 = -v62;
              }

              v52 |= 1 << v61;
              v54 |= 1 << v58;
              v56 += 2;
              v57 -= 2;
            }

            while (v57);
            v52 |= v54;
            if (v55 != (v55 & 0x7FFFFFFFFFFFFFFELL))
            {
              do
              {
LABEL_61:
                v63 = *v53++;
                v64 = -(v63 >> 1) & 0x3F;
                v65 = (v63 >> 1) & 0x3F;
                if (v63 >> 1 <= 0)
                {
                  v65 = -v64;
                }

                v52 |= 1 << v65;
              }

              while (v53 != v34);
            }
          }

          *(*(this + 44) + 8 * v30) = v52;
          v66 = *(this + 32);
          v26 = 1;
          v67 = *(v66 + 8 * (v30 >> 6));
          if ((v67 & (1 << v30)) == 0)
          {
            v68 = *(this + 18);
            v69 = *(this + 37);
            v70 = *(this + 36);
            *(v66 + 8 * (v30 >> 6)) = v67 | (1 << v30);
            if (v69 == v70)
            {
              v71 = 0;
            }

            else
            {
              v71 = ((v69 - v70) << 7) - 1;
            }

            v72 = *(this + 40);
            v73 = v72 + *(this + 39);
            if (v71 == v73)
            {
              std::deque<int>::__add_back_capacity(this + 35);
              v27 = v79;
              v22 = v80;
              v15 = v81;
              v70 = *(this + 36);
              v72 = *(this + 40);
              v73 = *(this + 39) + v72;
            }

            *(*(v70 + ((v73 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v73 & 0x3FF)) = v28;
            *(this + 40) = v72 + 1;
            v26 = 1;
          }

LABEL_22:
          if (++begin != end)
          {
            goto LABEL_23;
          }

          begin = v22->__begin_;
          v74 = (v8 ^ 1u) << 32;
          v75 = v25;
          v76 = v22->__end_ - v22->__begin_;
          v77 = v25 >= v76;
          if (v25 > v76)
          {
            v78 = v26;
            std::vector<int>::__append(v22, v25 - v76);
            v26 = v78;
            goto LABEL_76;
          }

LABEL_74:
          if (!v77)
          {
            v22->__end_ = &begin[v75];
          }

LABEL_76:
          *(*(this + 52) + (v74 >> 30)) = v25;
          if (v26)
          {
            operations_research::sat::SatPresolver::UpdatePriorityQueue(this, (v8 >> 1));
          }

          return 1;
        }

        if (v44 < v43)
        {
          goto LABEL_21;
        }

        if (--v40 < 0)
        {
          goto LABEL_21;
        }
      }

      ++v42;
      v41 -= 4;
      if (v38 == v37)
      {
        goto LABEL_47;
      }
    }
  }

  return result;
}

uint64_t operations_research::sat::SatPresolver::Presolve(uint64_t a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(a1);
  v6 = *(a1 + 1472);
  if (*v6 == 1)
  {
    v7 = *(a2 + 8);
    v8 = v7 & 0x3F;
    v9 = 0;
    if (v7 > 0x3F || v8 != 0)
    {
      v11 = 0;
      v12 = *a2;
      v13 = *a2 + 8 * (v7 >> 6);
      do
      {
        v9 += (*v12 >> v11) & 1;
        v12 += v11 == 63;
        if (v11 == 63)
        {
          v11 = 0;
        }

        else
        {
          ++v11;
        }
      }

      while (v12 != v13 || v11 != v8);
    }

    v43 = "[SAT presolve] num removable Booleans: ";
    v44 = 39;
    v40 = v42;
    v41 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v9, v42, v4) - v42;
    v39[0].__r_.__value_.__r.__words[0] = " / ";
    v39[0].__r_.__value_.__l.__size_ = 3;
    v16 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(a2 + 8), v38, v15);
    v37[0] = v38;
    v37[1] = v16 - v38;
    absl::lts_20240722::StrCat(&v43, &v40, v39, v37, &__p);
    operations_research::SolverLogger::LogInfo(v6, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/simplification.cc", 349, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      v19 = *(a1 + 1472);
      if (*v19 != 1)
      {
LABEL_21:
        operations_research::sat::SatPresolver::DisplayStats(a1, 0.0, v17);
        goto LABEL_22;
      }
    }

    else
    {
      v19 = *(a1 + 1472);
      if (*v19 != 1)
      {
        goto LABEL_21;
      }
    }

    v43 = "[SAT presolve] num trivial clauses: ";
    v44 = 36;
    v20 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(a1 + 472), v42, v18);
    v40 = v42;
    v41 = v20 - v42;
    absl::lts_20240722::StrCat(&v43, &v40, v39);
    operations_research::SolverLogger::LogInfo(v19, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/simplification.cc", 351, v39);
    if (SHIBYTE(v39[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39[0].__r_.__value_.__l.__data_);
    }

    goto LABEL_21;
  }

LABEL_22:
  result = operations_research::sat::SatPresolver::ProcessAllClauses(a1);
  if (result)
  {
    if (**(a1 + 1472) == 1)
    {
      v22 = absl::lts_20240722::GetCurrentTimeNanos(result);
      operations_research::sat::SatPresolver::DisplayStats(a1, (v22 - CurrentTimeNanos) * 0.000000001, v23);
    }

    v24 = *(a1 + 1464);
    if ((!v24 || (operations_research::TimeLimit::LimitReached(v24) & 1) == 0) && (*(a1 + 384) + *(a1 + 376)) <= 1000000000)
    {
      operations_research::sat::SatPresolver::InitializePriorityQueue(a1);
      v26 = *(a1 + 32);
      if (((*(a1 + 40) - v26) >> 3) >= 1)
      {
        while (1)
        {
          v31 = (*v26)[1];
          v25 = AdjustablePriorityQueue<operations_research::sat::SatPresolver::PQElement,std::less<operations_research::sat::SatPresolver::PQElement>>::Remove(a1 + 24, *v26);
          if ((*(*a2 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v31))
          {
            if (operations_research::sat::SatPresolver::CrossProduct(a1, 2 * v31))
            {
              result = operations_research::sat::SatPresolver::ProcessAllClauses(a1);
              if (!result)
              {
                goto LABEL_48;
              }
            }

            v25 = *(a1 + 1464);
            if (v25)
            {
              v25 = operations_research::TimeLimit::LimitReached(v25);
              if (v25)
              {
                break;
              }
            }

            if ((*(a1 + 384) + *(a1 + 376)) > 1000000000)
            {
              break;
            }
          }

          v26 = *(a1 + 32);
          if (((*(a1 + 40) - v26) >> 3) <= 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        if (**(a1 + 1472) == 1)
        {
          v27 = absl::lts_20240722::GetCurrentTimeNanos(v25);
          operations_research::sat::SatPresolver::DisplayStats(a1, (v27 - CurrentTimeNanos) * 0.000000001, v28);
        }

        if (*(a1 + 1049) == 1)
        {
          *(a1 + 8) = *a1;
          operations_research::sat::SatPresolver::InitializeBvaPriorityQueue(a1);
          v30 = *(a1 + 112);
          if (((*(a1 + 120) - v30) >> 3) >= 1)
          {
            do
            {
              v32 = (*v30)[1];
              AdjustablePriorityQueue<operations_research::sat::SatPresolver::BvaPqElement,std::less<operations_research::sat::SatPresolver::BvaPqElement>>::Remove(a1 + 104, *v30);
              operations_research::sat::SatPresolver::SimpleBva(a1, v32);
              v29 = *(a1 + 1464);
              if (v29)
              {
                v29 = operations_research::TimeLimit::LimitReached(v29);
                if (v29)
                {
                  break;
                }
              }

              v30 = *(a1 + 112);
            }

            while (((*(a1 + 120) - v30) >> 3) > 0);
          }

          if (**(a1 + 1472) == 1)
          {
            v33 = absl::lts_20240722::GetCurrentTimeNanos(v29);
            operations_research::sat::SatPresolver::DisplayStats(a1, (v33 - CurrentTimeNanos) * 0.000000001, v34);
          }
        }
      }
    }

    result = 1;
  }

LABEL_48:
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CCF2C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::SatPresolver::DisplayStats(operations_research::sat::SatPresolver *this, long double a2, char *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = *(this + 41);
  v4 = *(this + 42);
  if (v3 == v4)
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
  }

  else
  {
    LODWORD(v5) = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *v3;
      v9 = v3[1];
      v3 += 3;
      if (v9 - v8 == 4)
      {
        v10 = v6 + 1;
      }

      else
      {
        v10 = v6;
      }

      if (v8 == v9)
      {
        v5 = v5;
      }

      else
      {
        v7 += (v9 - v8) >> 2;
        v6 = v10;
        v5 = (v5 + 1);
      }
    }

    while (v3 != v4);
  }

  v29 = v6;
  v30 = v7;
  v28 = 0;
  v27 = 0;
  v11 = *(this + 52);
  v12 = *(this + 53) - v11;
  if ((v12 >> 3) >= 1)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = (v12 >> 3) & 0x7FFFFFFF;
    do
    {
      v18 = (v11 + (v13 >> 30));
      v19 = *v18;
      v20 = v18[1];
      if (v19 | v20)
      {
        v27 = ++v14;
        if (v19)
        {
          v21 = v20 == 0;
        }

        else
        {
          v21 = 1;
        }

        if (v21)
        {
          HIDWORD(v28) = ++v16;
        }

        else if (v19 == 1 || v20 == 1)
        {
          LODWORD(v28) = ++v15;
        }
      }

      v13 += 0x200000000;
      --v17;
    }

    while (v17);
  }

  v23 = *(this + 184);
  if (*v23)
  {
    *&v37 = "[SAT presolve] [";
    *(&v37 + 1) = 16;
    *&v35 = v36;
    *(&v35 + 1) = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v36, a2, a3);
    *&v34 = "s]";
    *(&v34 + 1) = 2;
    *&v33 = " clauses:";
    *(&v33 + 1) = 9;
    *&v31 = v32;
    *(&v31 + 1) = absl::lts_20240722::numbers_internal::FastIntToBuffer(v5, v32, v24) - v32;
    absl::lts_20240722::StrCat<char [11],int,char [7],int,char [16],int,char [20],int,char [20],int>(" literals:", &v37, &v35, &v34, &v33, &v31, &v30, " vars:", &__p, &v27, " one_side_vars:", &v28 + 1, " simple_definition:", &v28, " singleton_clauses:", &v29);
    operations_research::SolverLogger::LogInfo(v23, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/simplification.cc", 942, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void sub_23CCF2EB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::SatPresolver::InitializePriorityQueue(operations_research::sat::SatPresolver *this)
{
  v2 = *(this + 53) - *(this + 52);
  v3 = (v2 >> 3);
  v4 = (*(this + 1) - *this) >> 4;
  if (v3 <= v4)
  {
    if (v3 < v4)
    {
      *(this + 1) = *this + 16 * v3;
    }
  }

  else
  {
    std::vector<operations_research::sat::SatPresolver::PQElement>::__append(this, v3 - v4);
  }

  if ((v2 >> 3) >= 1)
  {
    v5 = 0;
    v6 = (v2 >> 3) & 0x7FFFFFFF;
    do
    {
      v8 = *this + 16 * v5;
      *(v8 + 4) = v5;
      v9 = (*(this + 52) + (v5 << 33 >> 30));
      *(v8 + 8) = (v9[1] + *v9);
      v16 = v8;
      std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](this + 32, &v16);
      v10 = *(this + 4);
      v11 = ((*(this + 5) - v10) >> 3) - 1;
      v12 = *(v10 + 8 * v11);
      if (v11 < 1)
      {
        v7 = v11;
      }

      else
      {
        v13 = *(v12 + 8);
        while (1)
        {
          v14 = v11 - 1;
          v15 = *(v10 + 8 * ((v11 - 1) >> 1));
          v7 = v11;
          if (*(v15 + 8) <= v13)
          {
            break;
          }

          *(v10 + 8 * v11) = v15;
          *v15 = v11;
          v11 = v14 >> 1;
          if (v14 <= 1)
          {
            v7 = v14 >> 1;
            v11 = v14 >> 1;
            break;
          }
        }
      }

      *(v10 + 8 * v7) = v12;
      *v12 = v11;
      ++v5;
    }

    while (v5 != v6);
  }
}

uint64_t operations_research::sat::SatPresolver::CrossProduct(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 416);
  v3 = *(v2 + 4 * a2);
  v4 = a2 ^ 1;
  v5 = *(v2 + 4 * (a2 ^ 1));
  if (!(v3 | v5))
  {
    return 0;
  }

  v8 = v3 < 2 || v5 < 2;
  if (!v8 && v5 * v3 > *(a1 + 976))
  {
    return 0;
  }

  v9 = *(a1 + 980);
  v10 = *(a1 + 392);
  v11 = (v10 + 24 * a2);
  v12 = *v11;
  v13 = v11[1];
  if (v12 == v13)
  {
    v15 = 0;
    goto LABEL_22;
  }

  v14 = *(a1 + 328);
  if (v13 - 1 == v12)
  {
    v15 = 0;
    v16 = v12;
    do
    {
LABEL_19:
      v31 = *v16++;
      v32 = v9 + ((*(v14 + 24 * v31 + 8) - *(v14 + 24 * v31)) >> 2);
      if (*(v14 + 24 * v31 + 8) == *(v14 + 24 * v31))
      {
        v32 = 0;
      }

      v15 += v32;
    }

    while (v16 != v13);
    goto LABEL_22;
  }

  v17 = 0;
  v18 = 0;
  v19 = (((v13 - 1) - v12) >> 2) + 1;
  v16 = &v12[v19 & 0x7FFFFFFFFFFFFFFELL];
  v20 = v12 + 1;
  v21 = v19 & 0x7FFFFFFFFFFFFFFELL;
  do
  {
    v22 = (v14 + 24 * *(v20 - 1));
    v23 = (v14 + 24 * *v20);
    v25 = *v23;
    v24 = v23[1];
    v27 = v22[1] - *v22;
    v26 = v27 == 0;
    v28 = v9 + (v27 >> 2);
    if (v26)
    {
      v28 = 0;
    }

    v29 = v24 - v25;
    v26 = v29 == 0;
    v30 = v9 + (v29 >> 2);
    if (v26)
    {
      v30 = 0;
    }

    v17 += v28;
    v18 += v30;
    v20 += 2;
    v21 -= 2;
  }

  while (v21);
  v15 = v18 + v17;
  if (v19 != (v19 & 0x7FFFFFFFFFFFFFFELL))
  {
    goto LABEL_19;
  }

LABEL_22:
  v33 = (v10 + 24 * v4);
  v34 = *v33;
  v35 = v33[1];
  if (v34 != v35)
  {
    v36 = *(a1 + 328);
    if (v35 - 1 == v34)
    {
      v37 = v34;
    }

    else
    {
      v38 = 0;
      v39 = (((v35 - 1) - v34) >> 2) + 1;
      v37 = &v34[v39 & 0x7FFFFFFFFFFFFFFELL];
      v40 = v34 + 1;
      v41 = v39 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v42 = (v36 + 24 * *(v40 - 1));
        v43 = (v36 + 24 * *v40);
        v45 = *v43;
        v44 = v43[1];
        v46 = v42[1] - *v42;
        v26 = v46 == 0;
        v47 = v9 + (v46 >> 2);
        if (v26)
        {
          v47 = 0;
        }

        v48 = v44 - v45;
        v26 = v48 == 0;
        v49 = v9 + (v48 >> 2);
        if (v26)
        {
          v49 = 0;
        }

        v15 += v47;
        v38 += v49;
        v40 += 2;
        v41 -= 2;
      }

      while (v41);
      v15 += v38;
      if (v39 == (v39 & 0x7FFFFFFFFFFFFFFELL))
      {
        goto LABEL_35;
      }
    }

    do
    {
      v50 = *v37++;
      v51 = v9 + ((*(v36 + 24 * v50 + 8) - *(v36 + 24 * v50)) >> 2);
      if (*(v36 + 24 * v50 + 8) == *(v36 + 24 * v50))
      {
        v51 = 0;
      }

      v15 += v51;
    }

    while (v37 != v35);
  }

LABEL_35:
  if (v3 >= v5)
  {
    v52 = a2;
  }

  else
  {
    v52 = v4;
  }

  v53 = v52;
  v54 = (v10 + 24 * v52);
  v55 = *v54;
  v56 = v54[1];
  if (*v54 == v56)
  {
    goto LABEL_64;
  }

  v57 = 0;
  while (2)
  {
    v58 = *v55;
    v59 = *(a1 + 328);
    v60 = (v59 + 24 * *v55);
    v61 = *v60;
    v62 = v60[1];
    if (v61 == v62)
    {
      goto LABEL_40;
    }

    v63 = *(a1 + 392) + 24 * (v52 ^ 1);
    v64 = *v63;
    v65 = *(v63 + 8);
    if (v64 == v65)
    {
      goto LABEL_61;
    }

    v66 = 1;
    while (2)
    {
      v67 = (v59 + 24 * *v64);
      v68 = *v67;
      v69 = v67[1];
      if (*v67 == v69)
      {
        goto LABEL_44;
      }

      v70 = ((v69 - v68) >> 2) + ((v62 - v61) >> 2) - 2;
      v71 = v61;
      while (v68 != v69)
      {
        v72 = *v68;
        v73 = *v71;
        if (*v71 == *v68)
        {
          --v70;
LABEL_56:
          ++v71;
          v68 += 4;
          if (v71 == v62)
          {
            break;
          }
        }

        else
        {
          if ((v73 ^ v72) == 1)
          {
            if (v73 != v52)
            {
              goto LABEL_44;
            }

            goto LABEL_56;
          }

          if (v73 < v72)
          {
            ++v71;
          }

          else
          {
            v68 += 4;
          }

          if (v71 == v62)
          {
            break;
          }
        }
      }

      if ((v70 & 0x80000000) == 0)
      {
        v66 = 0;
        result = 0;
        v57 += v9 + v70;
        if (v57 > v15)
        {
          return result;
        }
      }

LABEL_44:
      if (++v64 != v65)
      {
        continue;
      }

      break;
    }

    if (v66)
    {
LABEL_61:
      if (*(a1 + 1048) == 1)
      {
        operations_research::sat::SatPostsolver::Add(*(a1 + 440), v52, v61, v62 - v61);
        operations_research::sat::SatPresolver::Remove(a1, v58);
      }
    }

LABEL_40:
    if (++v55 != v56)
    {
      continue;
    }

    break;
  }

  v10 = *(a1 + 392);
  v53 = v52;
LABEL_64:
  __p = 0;
  v104 = 0;
  v105 = 0;
  v74 = (v10 + 24 * v53);
  v75 = *v74;
  v76 = v74[1];
  if (*v74 != v76)
  {
    do
    {
      v77 = *v75;
      v78 = (*(a1 + 328) + 24 * *v75);
      if (*v78 != v78[1])
      {
        v79 = *(a1 + 392) + 24 * (v52 ^ 1);
        v80 = *v79;
        v81 = *(v79 + 8);
        while (v80 != v81)
        {
          v82 = *(a1 + 328);
          v83 = v82 + 24 * *v80;
          if (*v83 != *(v83 + 8))
          {
            if (operations_research::sat::ComputeResolvant(v52, (v82 + 24 * v77), v83, &__p))
            {
              operations_research::sat::SatPresolver::AddClauseInternal(a1, &__p);
            }
          }

          ++v80;
        }
      }

      ++v75;
    }

    while (v75 != v76);
    v10 = *(a1 + 392);
    v84 = (v10 + 24 * v53);
    v75 = *v84;
    v76 = v84[1];
  }

  if (v75 != v76)
  {
    do
    {
      v85 = *v75;
      v86 = *(a1 + 328) + 24 * *v75;
      v87 = *v86;
      v88 = *(v86 + 8);
      if (v87 != v88)
      {
        operations_research::sat::SatPostsolver::Add(*(a1 + 440), v52, v87, v88 - v87);
        operations_research::sat::SatPresolver::Remove(a1, v85);
      }

      ++v75;
    }

    while (v75 != v76);
    v10 = *(a1 + 392);
    v75 = *(v10 + 24 * v53);
  }

  v89 = v52 << 32;
  v90 = (v10 + 24 * v53);
  *v90 = 0;
  v90[1] = 0;
  v90[2] = 0;
  if (v75)
  {
    operator delete(v75);
  }

  *(*(a1 + 416) + (v89 >> 30)) = 0;
  v91 = v53 ^ 1u;
  v92 = v91;
  v93 = *(a1 + 392);
  v94 = (v93 + 24 * v91);
  v95 = *v94;
  v96 = v94[1];
  if (*v94 != v96)
  {
    do
    {
      v97 = *v95;
      v98 = *(a1 + 328) + 24 * *v95;
      v99 = *v98;
      v100 = *(v98 + 8);
      if (v99 != v100)
      {
        operations_research::sat::SatPostsolver::Add(*(a1 + 440), v53 ^ 1, v99, v100 - v99);
        operations_research::sat::SatPresolver::Remove(a1, v97);
      }

      ++v95;
    }

    while (v95 != v96);
    v93 = *(a1 + 392);
    v95 = *(v93 + 24 * v91);
  }

  v101 = v91 << 32;
  v102 = (v93 + 24 * v92);
  *v102 = 0;
  v102[1] = 0;
  v102[2] = 0;
  if (v95)
  {
    operator delete(v95);
  }

  *(*(a1 + 416) + (v101 >> 30)) = 0;
  if (__p)
  {
    v104 = __p;
    operator delete(__p);
  }

  return 1;
}

void sub_23CCF35BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::SatPresolver::InitializeBvaPriorityQueue(operations_research::sat::SatPresolver *this)
{
  v2 = this + 112;
  v3 = (*(this + 53) - *(this + 52)) >> 2;
  *(this + 15) = *(this + 14);
  v15 = 0xFFFFFFFFFFFFFFFFLL;
  std::deque<operations_research::sat::SatPresolver::BvaPqElement>::assign(this + 7, (v3 & 0xFFFFFFFE), &v15);
  if ((v3 & 0xFFFFFFFE) >= 1)
  {
    v4 = 0;
    v5 = v3 & 0xFFFFFFFE;
    do
    {
      v7 = *(*(this + 8) + (((*(this + 11) + v4) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(this + 88) + v4);
      *(v7 + 4) = v4;
      v8 = *(*(this + 52) + 4 * v4);
      *(v7 + 8) = v8;
      if (v8 >= 3)
      {
        *&v15 = v7;
        std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](v2, &v15);
        v9 = *(this + 14);
        v10 = ((*(this + 15) - v9) >> 3) - 1;
        v11 = *(v9 + 8 * v10);
        if (v10 < 1)
        {
          v6 = v10;
        }

        else
        {
          v12 = *(v11 + 8);
          while (1)
          {
            v13 = v10 - 1;
            v14 = *(v9 + 8 * ((v10 - 1) >> 1));
            v6 = v10;
            if (*(v14 + 8) >= v12)
            {
              break;
            }

            *(v9 + 8 * v10) = v14;
            *v14 = v10;
            v10 = v13 >> 1;
            if (v13 <= 1)
            {
              v6 = v13 >> 1;
              v10 = v13 >> 1;
              break;
            }
          }
        }

        *(v9 + 8 * v6) = v11;
        *v11 = v10;
      }

      ++v4;
    }

    while (v4 != v5);
  }
}

void operations_research::sat::SatPresolver::SimpleBva(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v302 = *MEMORY[0x277D85DE8];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 400) - *(a1 + 392)) >> 3);
  __x[0] = 0;
  v6 = *(a1 + 184);
  v7 = *(a1 + 192);
  v5 = (a1 + 184);
  v8 = (v7 - v6) >> 2;
  v279 = v5;
  v296 = a2;
  if (v4 <= v8)
  {
    if (v4 < v8)
    {
      *(a1 + 192) = v6 + 4 * v4;
    }
  }

  else
  {
    std::vector<int>::__append(v5, v4 - v8, __x);
  }

  v298 = v2;
  *v299 = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::EmptyNode(void)::empty_node;
  *&v299[8] = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::EmptyNode(void)::empty_node;
  *&v299[16] = 0;
  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::sat::Literal,std::less<operations_research::sat::Literal>,std::allocator<operations_research::sat::Literal>,256,false>>::insert_hint_unique<operations_research::sat::Literal,operations_research::sat::Literal&>(v299, absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::EmptyNode(void)::empty_node, 0, &v298, &v298, __x);
  v9 = a1 + 136;
  if ((a1 + 136) != v299)
  {
    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::clear((a1 + 136));
    v10 = *(a1 + 152);
    v11 = *&v299[8];
    v12 = *(a1 + 136);
    *(a1 + 136) = *v299;
    *v299 = v12;
    *(a1 + 144) = v11;
    *&v299[16] = v10;
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::clear(v299);
  v14 = *(a1 + 392) + 24 * v2;
  v277 = (a1 + 160);
  if (a1 + 160 != v14)
  {
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(v277, *v14, *(v14 + 8), (*(v14 + 8) - *v14) >> 2);
    v9 = a1 + 136;
  }

  v276 = 0;
  v15 = 0;
  v274 = v2;
  v275 = v2 << 32;
  v292 = v2;
  v16 = *(a1 + 208);
  v17 = *(a1 + 168);
  while (1)
  {
    *v299 = -1;
    *(a1 + 216) = v16;
    v18 = *(a1 + 160);
    if (v18 == v17)
    {
      break;
    }

    v19 = 0;
    v284 = v15;
    v281 = v17;
    do
    {
      v20 = *(a1 + 328) + 24 * *v18;
      v21 = *v20;
      v22 = *(v20 + 8);
      v23 = *v20;
      if (*v20 != v22)
      {
        v24 = 0x7FFFFFFF;
        v25 = -1;
        do
        {
          v26 = *v23;
          if (*v23 != v2 && *(*(a1 + 416) + 4 * v26) < v24)
          {
            v24 = *(*(a1 + 416) + 4 * v26);
            v25 = *v23;
          }

          ++v23;
        }

        while (v23 != v22);
        if (v25 != -1)
        {
          v27 = *(a1 + 392) + 24 * v25;
          v28 = *v27;
          v29 = *(v27 + 8);
          if (*v27 != v29)
          {
            v294 = *v18 << 32;
            v286 = v18;
            do
            {
              v30 = *v20;
              v31 = *(v20 + 8);
              v32 = *(*(a1 + 328) + 24 * *v28);
              v33 = *(*(a1 + 328) + 24 * *v28 + 8);
              if ((v31 - *v20) == (v33 - v32))
              {
                v34 = -1;
                while (v30 != v31)
                {
                  if (v32 == v33)
                  {
                    if (*v30 != v2)
                    {
                      goto LABEL_24;
                    }

                    break;
                  }

                  v35 = *v32;
                  v36 = *v30;
                  if (*v30 == *v32)
                  {
                    ++v30;
                    ++v32;
                  }

                  else if (v36 >= v35)
                  {
                    if (v34 != -1)
                    {
                      goto LABEL_24;
                    }

                    ++v32;
                    v34 = v35;
                  }

                  else
                  {
                    if (v36 != v2)
                    {
                      goto LABEL_24;
                    }

                    ++v30;
                  }
                }

                if (v32 != v33)
                {
                  if (v34 != -1)
                  {
                    goto LABEL_24;
                  }

                  v34 = *v32;
                }

                if (v34 != -1)
                {
                  v37 = *v9;
                  v38 = *(*v9 + 10);
                  if (*(*v9 + 10))
                  {
                    goto LABEL_44;
                  }

                  while (1)
                  {
                    do
                    {
                      if (*(v37 + 11))
                      {
                        while (1)
                        {
                          v42 = *(v37 + 10);
                          if (v38 != v42)
                          {
                            break;
                          }

                          LODWORD(v38) = *(v37 + 8);
                          v37 = *v37;
                          if (*(v37 + 11))
                          {
                            v43 = *(a1 + 144);
                            v44 = *(v43 + 10);
                            v45 = v44;
                            v46 = v44;
                            goto LABEL_69;
                          }
                        }

                        v43 = *(a1 + 144);
                        v45 = *(v43 + 10);
                        v47 = v37 == v43 && v38 == v45;
                        v46 = *(v43 + 10);
                        if (v47)
                        {
                          goto LABEL_69;
                        }

                        if (v34 < *(v37 + v38 + 3))
                        {
                          v45 = v38;
                          goto LABEL_68;
                        }

                        if (*(v37 + 11))
                        {
                          v45 = v38 + 1;
                          if (v38 + 1 == v42)
                          {
                            v48 = v37;
                            while (1)
                            {
                              v43 = *v48;
                              if (*(*v48 + 11))
                              {
                                break;
                              }

                              v49 = v48[8];
                              v48 = *v48;
                              if (v49 != *(v43 + 10))
                              {
                                v45 = v49;
                                v13 = v13 & 0xFFFFFFFF00000000 | v38;
                                if (v43 != v37)
                                {
                                  goto LABEL_78;
                                }

                                goto LABEL_65;
                              }
                            }
                          }

LABEL_68:
                          v43 = v37;
                          v46 = v38;
LABEL_69:
                          v13 = v13 & 0xFFFFFFFF00000000 | v46;
                          LODWORD(v38) = v46;
                          v37 = v43;
                          if (*(v43 + 11))
                          {
LABEL_66:
                            if (v45 != v38)
                            {
                              goto LABEL_24;
                            }

LABEL_97:
                            if ((v292 ^ v34) == 1 && dword_27E25D388 >= 1)
                            {
                              v70 = v19;
                              v71 = v13;
                              IsEnabled1 = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::SatPresolver::SimpleBva(operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>)::$_0::operator() const(void)::site, dword_27E25D388);
                              v17 = v281;
                              v9 = a1 + 136;
                              v15 = v284;
                              v13 = v71;
                              v18 = v286;
                              v19 = v70;
                              if (IsEnabled1)
                              {
                                v73 = absl::lts_20240722::log_internal::LogMessage::LogMessage(__x, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/simplification.cc", 436);
                                v74 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v73, 1);
                                absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v74, "self-subsumbtion", 0x10uLL);
                                absl::lts_20240722::log_internal::LogMessage::~LogMessage(__x);
                                v17 = v281;
                                v9 = a1 + 136;
                                v15 = v284;
                                v13 = v71;
                                v18 = v286;
                                v19 = v70;
                              }
                            }

                            v59 = *(a1 + 216);
                            v60 = *(a1 + 224);
                            if (v59 >= v60)
                            {
                              v288 = v19;
                              v290 = v13;
                              v62 = *(a1 + 208);
                              v63 = (v59 - v62) >> 3;
                              v64 = v63 + 1;
                              if ((v63 + 1) >> 61)
                              {
                                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                              }

                              v65 = v60 - v62;
                              if (v65 >> 2 > v64)
                              {
                                v64 = v65 >> 2;
                              }

                              if (v65 >= 0x7FFFFFFFFFFFFFF8)
                              {
                                v66 = 0x1FFFFFFFFFFFFFFFLL;
                              }

                              else
                              {
                                v66 = v64;
                              }

                              if (v66)
                              {
                                if (!(v66 >> 61))
                                {
                                  operator new();
                                }

                                std::__throw_bad_array_new_length[abi:ne200100]();
                              }

                              *(8 * v63) = v294 | v34;
                              memcpy(0, v62, v59 - v62);
                              v16 = (8 * v63 + 8);
                              *(a1 + 208) = 0;
                              *(a1 + 216) = v16;
                              *(a1 + 224) = 0;
                              if (v62)
                              {
                                operator delete(v62);
                                v16 = (8 * v63 + 8);
                              }

                              v17 = v281;
                              v9 = a1 + 136;
                              v15 = v284;
                              v13 = v290;
                              v18 = v286;
                              v19 = v288;
                              v61 = v34;
                            }

                            else
                            {
                              v61 = v34;
                              *v59 = v294 | v34;
                              v16 = (v59 + 1);
                            }

                            LODWORD(v2) = v296;
                            *(a1 + 216) = v16;
                            v67 = *(a1 + 184);
                            v68 = 4 * v61;
                            v69 = (*(v67 + v68) + 1);
                            *(v67 + v68) = v69;
                            if (v69 > v19)
                            {
                              *v299 = v34;
                              v19 = v69;
                            }

                            goto LABEL_24;
                          }

                          goto LABEL_70;
                        }

                        v51 = &v37[(v38 + 1) + 32];
                        do
                        {
                          v43 = *v51;
                          v52 = *(*v51 + 11);
                          v51 = *v51 + 256;
                        }

                        while (!v52);
                        v45 = 0;
                        v13 = v13 & 0xFFFFFFFF00000000 | v38;
                        if (v43 != v37)
                        {
LABEL_78:
                          if (*(v37 + 11))
                          {
                            goto LABEL_79;
                          }

                          goto LABEL_72;
                        }

LABEL_65:
                        if (*(v43 + 11))
                        {
                          goto LABEL_66;
                        }

LABEL_70:
                        if (v45 == v38)
                        {
                          goto LABEL_97;
                        }

                        if (*(v37 + 11))
                        {
LABEL_79:
                          v50 = -v13;
                          goto LABEL_80;
                        }

LABEL_72:
                        v37 += (v13 + 1);
                        do
                        {
                          v37 = v37[32];
                        }

                        while (!*(v37 + 11));
                        v50 = 1;
LABEL_80:
                        v53 = *(v37 + 8);
                        v54 = *v37;
                        v55 = v45;
                        while (1)
                        {
                          v56 = v54[v53 + 32];
                          if (!*(v56 + 11))
                          {
                            do
                            {
                              v56 = v56[32];
                            }

                            while (!*(v56 + 11));
                            v53 = *(v56 + 8);
                            v54 = *v56;
                          }

                          if (v56 == v43)
                          {
                            break;
                          }

                          v57 = *(v56 + 10);
                          if (v54 == v43 && v53 == v55)
                          {
                            goto LABEL_95;
                          }

                          if (v53 >= *(v54 + 10))
                          {
                            while (1)
                            {
                              v53 = *(v54 + 8);
                              v54 = *v54;
                              if (v54 == v43 && v53 == v55)
                              {
                                break;
                              }

                              if (v53 < *(v54 + 10))
                              {
                                goto LABEL_81;
                              }
                            }

LABEL_95:
                            v55 = v57;
                            break;
                          }

LABEL_81:
                          v50 += v57 + 1;
                          ++v53;
                        }

                        if (!(v55 + v50))
                        {
                          goto LABEL_97;
                        }

                        goto LABEL_24;
                      }

                      v39 = &v37[v38 + 32];
                      v37 = *v39;
                      v38 = *(*v39 + 10);
                    }

                    while (!*(*v39 + 10));
LABEL_44:
                    v40 = 0;
                    do
                    {
                      v41 = (v38 + v40) >> 1;
                      if (*(v37 + v41 + 3) < v34)
                      {
                        v40 = v41 + 1;
                      }

                      else
                      {
                        v38 = (v38 + v40) >> 1;
                      }
                    }

                    while (v40 != v38);
                  }
                }
              }

LABEL_24:
              ++v28;
            }

            while (v28 != v29);
          }
        }
      }

      ++v18;
    }

    while (v18 != v17);
    if (*v299 == -1)
    {
      break;
    }

    v75 = *(a1 + 152);
    v76 = ~v75 + v19 * v75;
    if (v76 <= v276)
    {
      break;
    }

    v77 = v13;
    if (!v75)
    {
      operator new();
    }

    v78 = *v9;
    v79 = *(*v9 + 10);
    if (*(*v9 + 10))
    {
      goto LABEL_124;
    }

    while (2)
    {
      if (!v78[11])
      {
        v78 = *&v78[8 * v79 + 256];
        v79 = v78[10];
        if (!v78[10])
        {
          continue;
        }

LABEL_124:
        v80 = 0;
        do
        {
          v81 = (v79 + v80) >> 1;
          if (*&v78[4 * v81 + 12] < *v299)
          {
            v80 = v81 + 1;
          }

          else
          {
            v79 = (v79 + v80) >> 1;
          }
        }

        while (v80 != v79);
        continue;
      }

      break;
    }

    v82 = v79;
    v83 = v78;
    while (v79 == v83[10])
    {
      LODWORD(v79) = v83[8];
      v83 = *v83;
      if (v83[11])
      {
        goto LABEL_135;
      }
    }

    if (*v299 >= *&v83[4 * v79 + 12])
    {
      goto LABEL_136;
    }

LABEL_135:
    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::sat::Literal,std::less<operations_research::sat::Literal>,std::allocator<operations_research::sat::Literal>,256,false>>::internal_emplace<operations_research::sat::Literal&>(v9, v78, v82, v299);
    v9 = a1 + 136;
    v15 = v284;
    v13 = v77;
LABEL_136:
    v276 = v76;
    v17 = *(a1 + 160);
    *(a1 + 168) = v17;
    v16 = *(a1 + 208);
    v84 = *(a1 + 216);
    if (v16 == v84)
    {
      LODWORD(v2) = v296;
      *(a1 + 216) = v16;
      if (++v15 == 100)
      {
        goto LABEL_156;
      }
    }

    else
    {
      v85 = v279;
      LODWORD(v2) = v296;
      do
      {
        v85->__begin_[*v16] = 0;
        if (*v16 == *v299)
        {
          v86 = *(a1 + 176);
          if (v17 < v86)
          {
            *v17 = v16[1];
            v17 += 4;
          }

          else
          {
            v87 = *v277;
            v88 = v17 - *v277;
            v89 = v88 >> 2;
            v90 = (v88 >> 2) + 1;
            if (v90 >> 62)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v91 = v86 - v87;
            if (v91 >> 1 > v90)
            {
              v90 = v91 >> 1;
            }

            if (v91 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v92 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v92 = v90;
            }

            if (v92)
            {
              if (!(v92 >> 62))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v93 = v16;
            *(4 * v89) = v16[1];
            v17 = (4 * v89 + 4);
            memcpy(0, v87, v88);
            *(a1 + 160) = 0;
            *(a1 + 168) = v17;
            *(a1 + 176) = 0;
            if (v87)
            {
              operator delete(v87);
            }

            v85 = v279;
            v9 = a1 + 136;
            v15 = v284;
            v13 = v77;
            v16 = v93;
            LODWORD(v2) = v296;
          }

          *(a1 + 168) = v17;
        }

        v16 += 2;
      }

      while (v16 != v84);
      v16 = *(a1 + 208);
      *(a1 + 216) = v16;
      if (++v15 == 100)
      {
LABEL_156:
        *(a1 + 216) = v16;
        if (v276 <= *(a1 + 1040))
        {
          goto LABEL_386;
        }

        goto LABEL_162;
      }
    }
  }

  v94 = *(a1 + 208);
  if (v94 != v16)
  {
    begin = v279->__begin_;
    v96 = *(a1 + 208);
    do
    {
      v97 = *v96;
      v96 += 2;
      begin[v97] = 0;
    }

    while (v96 != v16);
  }

  *(a1 + 216) = v94;
  if (v276 <= *(a1 + 1040))
  {
    goto LABEL_386;
  }

LABEL_162:
  v99 = *(a1 + 392);
  v98 = *(a1 + 400);
  v100 = 0xAAAAAAAAAAAAAAABLL * ((v98 - v99) >> 3);
  v278 = 0xAAAAAAAB00000000 * ((v98 - v99) >> 3);
  v101 = (v278 + 0x200000000) >> 32;
  if (v101 <= v100)
  {
    if (v101 < v100)
    {
      v102 = v99 + 24 * v101;
      if (v98 != v102)
      {
        v103 = *(a1 + 400);
        do
        {
          v105 = *(v103 - 24);
          v103 -= 24;
          v104 = v105;
          if (v105)
          {
            *(v98 - 16) = v104;
            operator delete(v104);
          }

          v98 = v103;
        }

        while (v103 != v102);
      }

      *(a1 + 400) = v102;
    }
  }

  else
  {
    std::vector<std::vector<int>>::__append(a1 + 392, v101 - v100);
  }

  v106 = *(a1 + 416);
  v107 = (*(a1 + 424) - v106) >> 2;
  if (v101 <= v107)
  {
    if (v101 < v107)
    {
      *(a1 + 424) = v106 + 4 * v101;
    }
  }

  else
  {
    std::vector<int>::__append((a1 + 416), v101 - v107);
  }

  std::deque<operations_research::sat::SatPresolver::BvaPqElement>::resize((a1 + 56), v101);
  v108 = *(a1 + 88);
  v109 = *(a1 + 64);
  *(*(v109 + (((v108 + (v278 >> 32)) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v108 + BYTE4(v278)) + 4) = v100;
  v273 = v100 + 1;
  v280 = v100 + 1;
  *(*(v109 + (((v108 + v273) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v108 + v100 + 1) + 4) = v100 + 1;
  v110 = *(a1 + 1456);
  if (v110)
  {
    operations_research::sat::DratProofHandler::AddOneVariable(v110);
  }

  v111 = *(a1 + 144);
  v112 = **(a1 + 136);
  v113 = v111[10];
  if (v112 != v111 || v111[10])
  {
    v114 = 0;
    do
    {
      __x[0] = *&v112[4 * v114 + 12];
      __x[1] = v100;
      std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>((a1 + 232), __x, v301, 2uLL);
      operations_research::sat::SatPresolver::AddClauseInternal(a1, a1 + 232);
      if (v112[11])
      {
        if (++v114 == v112[10])
        {
          v115 = v112;
          while (1)
          {
            v116 = *v115;
            if (*(*v115 + 11))
            {
              break;
            }

            v117 = v115[8];
            v115 = *v115;
            if (v117 != v116[10])
            {
              v112 = v116;
              v114 = v117;
              break;
            }
          }
        }
      }

      else
      {
        v118 = &v112[8 * (v114 + 1) + 256];
        do
        {
          v112 = *v118;
          v119 = *(*v118 + 11);
          v118 = *v118 + 256;
        }

        while (!v119);
        v114 = 0;
      }
    }

    while (v112 != v111 || v114 != v113);
  }

  v120 = *(a1 + 160);
  v121 = *(a1 + 168);
  if (v120 != v121)
  {
    do
    {
      v122 = v120;
      v123 = *(a1 + 328) + 24 * *v120;
      if (a1 + 232 != v123)
      {
        std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>((a1 + 232), *v123, *(v123 + 8), (*(v123 + 8) - *v123) >> 2);
      }

      v124 = *(a1 + 232);
      v125 = *(a1 + 240);
      if (v124 != v125)
      {
        v126 = *(a1 + 232);
        while (*v126 != v296)
        {
          if (++v126 == v125)
          {
            goto LABEL_200;
          }
        }

        *v126 = v280;
      }

LABEL_200:
      v127 = 126 - 2 * __clz((v125 - v124) >> 2);
      if (v125 == v124)
      {
        v128 = 0;
      }

      else
      {
        v128 = v127;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(v124, v125, __x, v128, 1);
      operations_research::sat::SatPresolver::AddClauseInternal(a1, a1 + 232);
      v120 = v122 + 1;
    }

    while (v122 + 1 != v121);
    v120 = *(a1 + 160);
    v121 = *(a1 + 168);
  }

  v129 = v296;
  if (v120 == v121)
  {
    goto LABEL_359;
  }

  v282 = v121;
  while (2)
  {
    v285 = *v120;
    v287 = (*(a1 + 328) + 24 * *v120);
    v130 = *v287;
    v131 = v287[1];
    v283 = v120;
    if (*v287 == v131)
    {
      v135 = -1;
    }

    else
    {
      v132 = 0x7FFFFFFF;
      v133 = -1;
      do
      {
        v134 = *v130;
        if (*v130 != v129 && *(*(a1 + 416) + 4 * v134) < v132)
        {
          v132 = *(*(a1 + 416) + 4 * v134);
          v133 = *v130;
        }

        ++v130;
      }

      while (v130 != v131);
      v135 = v133;
    }

    v289 = v135;
    v136 = *(a1 + 144);
    v137 = **(a1 + 136);
    v297 = v136;
    v291 = v136[10];
    if (v137 == v136 && v136[10] == 0)
    {
      goto LABEL_358;
    }

    v139 = 0;
    while (2)
    {
      v140 = *&v137[4 * v139 + 12];
      if (v140 == v129)
      {
        goto LABEL_347;
      }

      v141 = *(a1 + 392) + 24 * v289;
      v142 = *v141;
      v143 = *(v141 + 8);
      if (*v141 == v143)
      {
        goto LABEL_347;
      }

      v144 = *v287;
      v145 = v287[1];
      v146 = *(a1 + 328);
      while (2)
      {
        v148 = *v142;
        v149 = (v146 + 24 * v148);
        v150 = *v149;
        v151 = v149[1];
        if (v145 - *v287 != v151 - *v149)
        {
          goto LABEL_226;
        }

        v147 = -1;
        if (*v287 == v145)
        {
          v153 = v150;
          goto LABEL_241;
        }

        v152 = *v287;
        v153 = v150;
        while (v153 != v151)
        {
          v154 = *v153;
          v155 = *v152;
          if (*v152 == *v153)
          {
            ++v152;
            ++v153;
          }

          else if (v155 >= v154)
          {
            if (v147 != -1)
            {
              goto LABEL_224;
            }

            ++v153;
            v147 = v154;
          }

          else
          {
            if (v155 != v129)
            {
              goto LABEL_224;
            }

            ++v152;
          }

          if (v152 == v145)
          {
            goto LABEL_241;
          }
        }

        if (*v152 != v129)
        {
LABEL_224:
          v147 = -1;
          goto LABEL_225;
        }

LABEL_241:
        if (v153 == v151)
        {
          goto LABEL_225;
        }

        if (v147 != -1)
        {
          goto LABEL_224;
        }

        v147 = *v153;
LABEL_225:
        if (v147 != v140)
        {
LABEL_226:
          if (++v142 == v143)
          {
            goto LABEL_347;
          }

          continue;
        }

        break;
      }

      *(*(a1 + 352) + 8 * v148) = 0;
      v295 = v139;
      v293 = v148;
      if (v150 == v151)
      {
        v156 = *(a1 + 1456);
        if (!v156)
        {
          goto LABEL_345;
        }

LABEL_246:
        operations_research::sat::DratProofHandler::DeleteClause(v156, *(v146 + 24 * v148), (*(v146 + 24 * v148 + 8) - *(v146 + 24 * v148)) >> 2);
        v139 = v295;
        v129 = v296;
        v157 = *(a1 + 328) + 24 * v293;
        v158 = *v157;
        *(v157 + 8) = 0;
        *(v157 + 16) = 0;
        *v157 = 0;
        if (v158)
        {
          goto LABEL_346;
        }

        goto LABEL_347;
      }

      while (2)
      {
        v161 = *v150;
        v162 = *(a1 + 416);
        --*(v162 + 4 * *v150);
        if (*a1 == *(a1 + 8))
        {
LABEL_276:
          if (!*(a1 + 96))
          {
            goto LABEL_250;
          }

          goto LABEL_277;
        }

        v163 = (*a1 + 16 * (v161 >> 1));
        v164 = (*(v162 + 4 * (v161 | 1)) + *(v162 + 4 * (v161 & 0xFFFFFFFE)));
        v163[1] = v164;
        v165 = *v163;
        v166 = *(a1 + 40);
        if ((v165 & 0x80000000) != 0 || (v167 = *(a1 + 32), v168 = (v166 - v167) >> 3, v168 <= v165) || (v169 = *&v167[8 * v165], v169 != v163))
        {
          v170 = *(a1 + 48);
          if (v166 >= v170)
          {
            v172 = *(a1 + 32);
            v173 = v166 - v172;
            v174 = (v166 - v172) >> 3;
            v175 = v174 + 1;
            if ((v174 + 1) >> 61)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v176 = v170 - v172;
            if (v176 >> 2 > v175)
            {
              v175 = v176 >> 2;
            }

            if (v176 >= 0x7FFFFFFFFFFFFFF8)
            {
              v177 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v177 = v175;
            }

            if (v177)
            {
              if (!(v177 >> 61))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v178 = v161;
            v179 = (v166 - v172) >> 3;
            v180 = (8 * v174);
            v181 = (8 * v174 - 8 * v179);
            *v180 = v163;
            v171 = v180 + 1;
            memcpy(v181, v172, v173);
            *(a1 + 32) = v181;
            *(a1 + 40) = v171;
            *(a1 + 48) = 0;
            if (v172)
            {
              operator delete(v172);
            }

            v139 = v295;
            LODWORD(v148) = v293;
            v161 = v178;
            v129 = v296;
          }

          else
          {
            *v166 = v163;
            v171 = v166 + 8;
          }

          *(a1 + 40) = v171;
          v182 = *(a1 + 32);
          v183 = ((v171 - v182) >> 3) - 1;
          v184 = *(v182 + 8 * v183);
          if (v183 < 1)
          {
            v188 = v183;
          }

          else
          {
            v185 = *(v184 + 8);
            while (1)
            {
              v186 = v183 - 1;
              v187 = *(v182 + 8 * ((v183 - 1) >> 1));
              v188 = v183;
              if (*(v187 + 8) <= v185)
              {
                break;
              }

              *(v182 + 8 * v183) = v187;
              *v187 = v183;
              v183 = v186 >> 1;
              if (v186 <= 1)
              {
                v188 = v186 >> 1;
                v183 = v186 >> 1;
                break;
              }
            }
          }

          *(v182 + 8 * v188) = v184;
          *v184 = v183;
          goto LABEL_276;
        }

        if (*(*&v167[8 * ((v165 - 1) / 2)] + 8) > v164)
        {
          if (v165)
          {
            v203 = v169[1];
            while (1)
            {
              v204 = v165 - 1;
              v205 = (v165 - 1) >> 1;
              v206 = *&v167[8 * v205];
              if (*(v206 + 8) <= v203)
              {
                break;
              }

              *&v167[8 * v165] = v206;
              *v206 = v165;
              LODWORD(v165) = v204 >> 1;
              if (v204 < 2)
              {
                *&v167[8 * v205] = v169;
                *v169 = v205;
                if (*(a1 + 96))
                {
                  goto LABEL_277;
                }

                goto LABEL_250;
              }
            }

            *&v167[8 * v165] = v169;
            *v169 = v165;
            if (*(a1 + 96))
            {
              goto LABEL_277;
            }

            goto LABEL_250;
          }

          *v167 = v169;
          *v169 = 0;
          if (!*(a1 + 96))
          {
            goto LABEL_250;
          }

LABEL_277:
          v189 = *(a1 + 88);
          v190 = *(a1 + 64);
          v191 = (*(v190 + (((v189 + (v161 & 0xFFFFFFFE)) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v189 + (v161 & 0xFE)));
          v192 = *(a1 + 416);
          v193 = *(v192 + 4 * (v161 & 0xFFFFFFFE));
          v191[1] = v193;
          v194 = *v191;
          if ((v194 & 0x80000000) == 0)
          {
            v195 = *(a1 + 112);
            v196 = (*(a1 + 120) - v195) >> 3;
            if (v196 > v194)
            {
              v197 = *(v195 + 8 * v194);
              if (v197 == v191)
              {
                if (*(*(v195 + 8 * ((v194 - 1) / 2)) + 8) >= v193)
                {
                  v215 = (2 * v194) | 1;
                  v216 = v215;
                  if (v196 > v215)
                  {
                    v217 = 2 * v194;
                    v218 = v197[1];
                    while (1)
                    {
                      v200 = v217 + 2;
                      if (v196 <= v217 + 2 || (v219 = *(v195 + 8 * v216), v220 = *(v195 + 8 * v200), v221 = *(v220 + 8), *(v219 + 8) >= v221))
                      {
                        v220 = *(v195 + 8 * v215);
                        v221 = *(v220 + 8);
                        v200 = v215;
                      }

                      if (v218 >= v221)
                      {
                        break;
                      }

                      *(v195 + 8 * v194) = v220;
                      *v220 = v194;
                      v217 = 2 * v200;
                      v215 = (2 * v200) | 1;
                      v216 = v215;
                      LODWORD(v194) = v200;
                      if (v196 <= v215)
                      {
                        goto LABEL_320;
                      }
                    }

                    v200 = v194;
LABEL_320:
                    v202 = v200;
LABEL_321:
                    *(v195 + 8 * v202) = v197;
                    LODWORD(v194) = v200;
                  }
                }

                else if (v194)
                {
                  v198 = v197[1];
                  while (1)
                  {
                    v199 = v194 - 1;
                    v200 = (v194 - 1) >> 1;
                    v201 = *(v195 + 8 * v200);
                    v202 = v194;
                    if (*(v201 + 8) >= v198)
                    {
                      break;
                    }

                    *(v195 + 8 * v194) = v201;
                    *v201 = v194;
                    LODWORD(v194) = v199 >> 1;
                    if (v199 < 2)
                    {
                      v202 = v199 >> 1;
                      goto LABEL_321;
                    }
                  }

                  v200 = v194;
                  goto LABEL_321;
                }

                *v197 = v194;
              }
            }
          }

          v223 = (*(v190 + (((v189 + (v161 | 1)) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v189 + (v161 | 1)));
          v224 = *(v192 + 4 * (v161 | 1));
          v223[1] = v224;
          v225 = *v223;
          if ((v225 & 0x80000000) != 0)
          {
            goto LABEL_250;
          }

          v226 = *(a1 + 112);
          v227 = (*(a1 + 120) - v226) >> 3;
          if (v227 <= v225)
          {
            goto LABEL_250;
          }

          v228 = *(v226 + 8 * v225);
          if (v228 != v223)
          {
            goto LABEL_250;
          }

          if (*(*(v226 + 8 * ((v225 - 1) / 2)) + 8) >= v224)
          {
            v232 = (2 * v225) | 1;
            v233 = v232;
            if (v227 <= v232)
            {
              v159 = *v223;
              goto LABEL_341;
            }

            v234 = 2 * v225;
            v235 = v228[1];
            while (1)
            {
              v160 = v234 + 2;
              if (v227 <= v234 + 2 || (v236 = *(v226 + 8 * v233), v237 = *(v226 + 8 * v160), v238 = *(v237 + 8), *(v236 + 8) >= v238))
              {
                v237 = *(v226 + 8 * v232);
                v238 = *(v237 + 8);
                v160 = v232;
              }

              if (v235 >= v238)
              {
                break;
              }

              *(v226 + 8 * v225) = v237;
              *v237 = v225;
              v234 = 2 * v160;
              v232 = (2 * v160) | 1;
              v233 = v232;
              LODWORD(v225) = v160;
              if (v227 <= v232)
              {
                goto LABEL_343;
              }
            }

            v160 = v225;
LABEL_343:
            v159 = v160;
          }

          else if (v225)
          {
            v229 = v228[1];
            while (1)
            {
              v230 = v225 - 1;
              v160 = (v225 - 1) >> 1;
              v231 = *(v226 + 8 * v160);
              v159 = v225;
              if (*(v231 + 8) >= v229)
              {
                break;
              }

              *(v226 + 8 * v225) = v231;
              *v231 = v225;
              LODWORD(v225) = v230 >> 1;
              if (v230 < 2)
              {
                v159 = v230 >> 1;
                goto LABEL_249;
              }
            }

LABEL_341:
            v160 = v225;
          }

          else
          {
            v159 = 0;
            v160 = 0;
          }

LABEL_249:
          *(v226 + 8 * v159) = v228;
          *v228 = v160;
          goto LABEL_250;
        }

        v207 = (2 * v165) | 1;
        v208 = v207;
        if (v168 <= v207)
        {
          v222 = *v163;
          *&v167[8 * v165] = v169;
          *v169 = v165;
          if (!*(a1 + 96))
          {
            goto LABEL_250;
          }

          goto LABEL_277;
        }

        v209 = 2 * v165;
        v210 = v169[1];
        while (1)
        {
          v211 = v209 + 2;
          if (v168 <= v209 + 2 || (v212 = *&v167[8 * v208], v213 = *&v167[8 * v211], v214 = *(v213 + 8), *(v212 + 8) <= v214))
          {
            v213 = *&v167[8 * v207];
            v214 = *(v213 + 8);
            v211 = v207;
          }

          if (v210 <= v214)
          {
            break;
          }

          *&v167[8 * v165] = v213;
          *v213 = v165;
          v209 = 2 * v211;
          v207 = (2 * v211) | 1;
          v208 = v207;
          LODWORD(v165) = v211;
          if (v168 <= v207)
          {
            goto LABEL_317;
          }
        }

        v211 = v165;
LABEL_317:
        *&v167[8 * v211] = v169;
        *v169 = v211;
        if (*(a1 + 96))
        {
          goto LABEL_277;
        }

LABEL_250:
        if (++v150 != v151)
        {
          continue;
        }

        break;
      }

      v146 = *(a1 + 328);
      v156 = *(a1 + 1456);
      if (v156)
      {
        goto LABEL_246;
      }

LABEL_345:
      v239 = v146 + 24 * v148;
      v158 = *v239;
      *(v239 + 8) = 0;
      *(v239 + 16) = 0;
      *v239 = 0;
      if (v158)
      {
LABEL_346:
        operator delete(v158);
      }

LABEL_347:
      if (v137[11])
      {
        if (++v139 == v137[10])
        {
          v240 = v137;
          while (1)
          {
            v241 = *v240;
            if (*(*v240 + 11))
            {
              break;
            }

            v242 = v240[8];
            v240 = *v240;
            if (v242 != v241[10])
            {
              v139 = v242;
              v137 = v241;
              break;
            }
          }
        }
      }

      else
      {
        v243 = &v137[8 * (v139 + 1) + 256];
        do
        {
          v137 = *v243;
          v244 = *(*v243 + 11);
          v243 = *v243 + 256;
        }

        while (!v244);
        v139 = 0;
      }

      if (v137 != v297 || v139 != v291)
      {
        continue;
      }

      break;
    }

LABEL_358:
    operations_research::sat::SatPresolver::Remove(a1, v285);
    v120 = v283 + 1;
    v129 = v296;
    if (v283 + 1 != v282)
    {
      continue;
    }

    break;
  }

LABEL_359:
  if (!*(a1 + 96))
  {
    goto LABEL_386;
  }

  v245 = *(*(a1 + 64) + (((*(a1 + 88) + (v278 >> 32)) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 88) + BYTE4(v278));
  v246 = *(*(a1 + 416) + (v278 >> 30));
  *(v245 + 8) = v246;
  if (v246 < 3)
  {
LABEL_369:
    v254 = *(*(a1 + 64) + (((*(a1 + 88) + v273) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 88) + v273);
    v255 = *(*(a1 + 416) + 4 * v280);
    *(v254 + 8) = v255;
    if (v255 >= 3)
    {
      *__x = v254;
      std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](a1 + 112, __x);
      v256 = *(a1 + 112);
      v257 = ((*(a1 + 120) - v256) >> 3) - 1;
      v258 = *(v256 + 8 * v257);
      if (v257 < 1)
      {
        *(v256 + 8 * v257) = v258;
        *v258 = v257;
        if (!*(a1 + 96))
        {
          goto LABEL_386;
        }
      }

      else
      {
        v259 = *(v258 + 8);
        while (1)
        {
          v260 = v257 - 1;
          v261 = *(v256 + 8 * ((v257 - 1) >> 1));
          v262 = v257;
          if (*(v261 + 8) >= v259)
          {
            break;
          }

          *(v256 + 8 * v257) = v261;
          *v261 = v257;
          v257 = v260 >> 1;
          if (v260 <= 1)
          {
            v262 = v260 >> 1;
            v257 = v260 >> 1;
            break;
          }
        }

        *(v256 + 8 * v262) = v258;
        *v258 = v257;
        if (!*(a1 + 96))
        {
          goto LABEL_386;
        }
      }
    }

    v263 = *(*(a1 + 64) + (((*(a1 + 88) + v274) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 88) + v274);
    v264 = *(*(a1 + 416) + (v275 >> 30));
    *(v263 + 8) = v264;
    if (v264 >= 3)
    {
      *__x = v263;
      std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](a1 + 112, __x);
      v265 = *(a1 + 112);
      v266 = ((*(a1 + 120) - v265) >> 3) - 1;
      v267 = *(v265 + 8 * v266);
      if (v266 < 1)
      {
        v271 = v266;
      }

      else
      {
        v268 = *(v267 + 8);
        while (1)
        {
          v269 = v266 - 1;
          v270 = *(v265 + 8 * ((v266 - 1) >> 1));
          v271 = v266;
          if (*(v270 + 8) >= v268)
          {
            break;
          }

          *(v265 + 8 * v266) = v270;
          *v270 = v266;
          v266 = v269 >> 1;
          if (v269 <= 1)
          {
            v271 = v269 >> 1;
            v266 = v269 >> 1;
            break;
          }
        }
      }

      *(v265 + 8 * v271) = v267;
      *v267 = v266;
    }

    goto LABEL_386;
  }

  *__x = v245;
  std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](a1 + 112, __x);
  v247 = *(a1 + 112);
  v248 = ((*(a1 + 120) - v247) >> 3) - 1;
  v249 = *(v247 + 8 * v248);
  if (v248 < 1)
  {
    *(v247 + 8 * v248) = v249;
    *v249 = v248;
    if (!*(a1 + 96))
    {
      goto LABEL_386;
    }

    goto LABEL_369;
  }

  v250 = *(v249 + 8);
  while (1)
  {
    v251 = v248 - 1;
    v252 = *(v247 + 8 * ((v248 - 1) >> 1));
    v253 = v248;
    if (*(v252 + 8) >= v250)
    {
      break;
    }

    *(v247 + 8 * v248) = v252;
    *v252 = v248;
    v248 = v251 >> 1;
    if (v251 <= 1)
    {
      v253 = v251 >> 1;
      v248 = v251 >> 1;
      break;
    }
  }

  *(v247 + 8 * v253) = v249;
  *v249 = v248;
  if (*(a1 + 96))
  {
    goto LABEL_369;
  }

LABEL_386:
  v272 = *MEMORY[0x277D85DE8];
}

void sub_23CCF4F3C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::deque<operations_research::sat::SatPresolver::BvaPqElement>::resize(void *a1, unint64_t a2)
{
  v3 = a1[5];
  if (a2 > v3)
  {
    v4 = a2 - v3;

    std::deque<operations_research::sat::SatPresolver::BvaPqElement>::__append(a1, v4);
    return;
  }

  if (a2 >= v3)
  {
    return;
  }

  v5 = a1[4];
  v7 = a1[1];
  v6 = a1[2];
  v8 = (v7 + 8 * (v5 >> 8));
  if (v6 == v7)
  {
    v9 = 0;
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v9 = *v8 + 16 * v5;
    if (!a2)
    {
LABEL_12:
      v11 = v5 + v3;
      v12 = (v7 + 8 * ((v5 + v3) >> 8));
      v13 = v6 - v7;
      if (v6 != v7)
      {
        goto LABEL_13;
      }

      goto LABEL_21;
    }
  }

  v10 = a2 + ((v9 - *v8) >> 4);
  if (v10 >= 1)
  {
    v8 += 8 * (v10 >> 8);
    v9 = *v8 + 16 * v10;
    goto LABEL_12;
  }

  v15 = 255 - v10;
  v16 = 510 - v10;
  if (v15 >= 0)
  {
    v16 = v15;
  }

  v8 -= 8 * (v16 >> 8);
  v17 = v15;
  v18 = -v15;
  if (v18 >= 0)
  {
    v19 = -v18;
  }

  else
  {
    v19 = v17;
  }

  v9 = *v8 + 16 * (255 - v19);
  v11 = v5 + v3;
  v12 = (v7 + 8 * ((v5 + v3) >> 8));
  v13 = v6 - v7;
  if (v6 != v7)
  {
LABEL_13:
    v14 = *v12 + 16 * v11;
    if (v14 == v9)
    {
      return;
    }

    goto LABEL_22;
  }

LABEL_21:
  v14 = 0;
  if (!v9)
  {
    return;
  }

LABEL_22:
  v20 = ((v14 - *v12) >> 4) + 32 * (v12 - v8) - ((v9 - *v8) >> 4);
  if (v20 >= 1)
  {
    v21 = v6 == v7 ? 0 : 32 * v13 - 1;
    v22 = v3 - v20;
    a1[5] = v22;
    if (v21 - v5 - v22 >= 0x200)
    {
      do
      {
        operator delete(*(v6 - 8));
        v23 = a1[1];
        v6 = a1[2] - 8;
        a1[2] = v6;
        if (v6 == v23)
        {
          v24 = 0;
        }

        else
        {
          v24 = 32 * (v6 - v23) - 1;
        }
      }

      while ((v24 - (a1[5] + a1[4])) > 0x1FF);
    }
  }
}

void operations_research::sat::SatPresolver::Remove(operations_research::sat::SatPresolver *this, int a2)
{
  *(*(this + 44) + 8 * a2) = 0;
  v4 = *(this + 41);
  v5 = (v4 + 24 * a2);
  v6 = *v5;
  v7 = v5[1];
  if (*v5 != v7)
  {
    do
    {
      v8 = *v6++;
      --*(*(this + 52) + 4 * v8);
      operations_research::sat::SatPresolver::UpdatePriorityQueue(this, (v8 >> 1));
      operations_research::sat::SatPresolver::UpdateBvaPriorityQueue(this, v8 & 0xFFFFFFFE);
      operations_research::sat::SatPresolver::UpdateBvaPriorityQueue(this, v8 | 1);
    }

    while (v6 != v7);
    v4 = *(this + 41);
  }

  v9 = *(this + 182);
  if (v9)
  {
    operations_research::sat::DratProofHandler::DeleteClause(v9, *(v4 + 24 * a2), (*(v4 + 24 * a2 + 8) - *(v4 + 24 * a2)) >> 2);
    v4 = *(this + 41);
  }

  v10 = v4 + 24 * a2;
  v11 = *v10;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *v10 = 0;
  if (v11)
  {

    operator delete(v11);
  }
}

uint64_t operations_research::sat::SatPresolver::ProcessClauseToSimplifyOthersUsingLiteral(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 328);
  v4 = *(*(a1 + 352) + 8 * a2);
  v5 = *(a1 + 392) + 24 * a3;
  v7 = *v5;
  v6 = *(v5 + 8);
  *(a1 + 376) += (v6 - *v5) >> 2;
  if (v6 != v7)
  {
    v10 = 0;
    v11 = (v3 + 24 * a2);
    while (1)
    {
      v13 = *v7;
      v14 = *(*(a1 + 352) + 8 * *v7);
      if (!v14)
      {
        goto LABEL_4;
      }

      v15 = v4 & ~v14;
      if (v13 == a2 || v15 != 0)
      {
        goto LABEL_5;
      }

      v17 = v13;
      v18 = *(a1 + 328) + 24 * v13;
      v20 = *v18;
      v19 = *(v18 + 8);
      v21 = v19 - *v18;
      v22 = v21 >> 2;
      v24 = *v11;
      v23 = v11[1];
      v25 = v23 - *v11;
      if (v21 >> 2 < v25)
      {
        goto LABEL_5;
      }

      *(a1 + 384) += v25 + v22;
      if (v24 == v23)
      {
LABEL_3:
        v12 = v11;
        operations_research::sat::SatPresolver::Remove(a1, v13);
        v11 = v12;
LABEL_4:
        v10 = 1;
        goto LABEL_5;
      }

      v26 = v22 - v25;
      v27 = v21 - 4;
      while (1)
      {
        v28 = *v20;
        v29 = *v24;
        if (*v24 == *v20)
        {
          ++v24;
          goto LABEL_16;
        }

        if ((v29 ^ v28) == 1)
        {
          break;
        }

        if (v29 < v28)
        {
          goto LABEL_5;
        }

        if (--v26 < 0)
        {
          goto LABEL_5;
        }

LABEL_16:
        ++v20;
        v27 -= 4;
        if (v24 == v23)
        {
          goto LABEL_3;
        }
      }

      v30 = v24 + 1;
      if (v30 != v23)
      {
        v31 = 1;
        do
        {
          v32 = v20[v31];
          v33 = *v30;
          if (*v30 == v32)
          {
            ++v30;
          }

          else
          {
            if ((v33 ^ v32) == 1)
            {
              goto LABEL_5;
            }

            if (v33 < v32)
            {
              goto LABEL_5;
            }

            if (--v26 < 0)
            {
              goto LABEL_5;
            }
          }

          ++v31;
        }

        while (v30 != v23);
        v28 = *v20;
      }

      v78 = v11;
      v77 = v10;
      if (v20 + 1 != v19)
      {
        memmove(v20, v20 + 1, v27);
        v17 = v13;
        v11 = v78;
      }

      *(v18 + 8) = v20 + v27;
      if (v28 == -1)
      {
        goto LABEL_3;
      }

      v34 = *(a1 + 328) + 24 * v17;
      v35 = *v34;
      v36 = *(v34 + 8);
      if (v35 == v36)
      {
        return 0;
      }

      v37 = *(a1 + 1456);
      if (v37)
      {
        v38 = v17;
        operations_research::sat::DratProofHandler::AddClause(v37, v35, v36 - v35);
        v17 = v38;
        v39 = *(a1 + 328) + 24 * v38;
        v35 = *v39;
        v36 = *(v39 + 8);
      }

      if (v35 == v36)
      {
        v40 = 0;
      }

      else
      {
        v40 = 0;
        if (v36 - 1 == v35)
        {
          v41 = v35;
          goto LABEL_49;
        }

        v42 = 0;
        v43 = (((v36 - 1) - v35) >> 2) + 1;
        v41 = &v35[v43 & 0x7FFFFFFFFFFFFFFELL];
        v44 = v35 + 1;
        v45 = v43 & 0x7FFFFFFFFFFFFFFELL;
        do
        {
          v49 = *(v44 - 1) >> 1;
          v46 = *v44 >> 1;
          v47 = -v49 < 0;
          v48 = -v49 & 0x3F;
          LOBYTE(v49) = v49 & 0x3F;
          if (!v47)
          {
            v49 = -v48;
          }

          v47 = -v46 < 0;
          v50 = -v46 & 0x3F;
          LOBYTE(v46) = v46 & 0x3F;
          if (!v47)
          {
            v46 = -v50;
          }

          v40 |= 1 << v49;
          v42 |= 1 << v46;
          v44 += 2;
          v45 -= 2;
        }

        while (v45);
        v40 |= v42;
        if (v43 != (v43 & 0x7FFFFFFFFFFFFFFELL))
        {
          do
          {
LABEL_49:
            v51 = *v41++;
            v52 = -(v51 >> 1) & 0x3F;
            v53 = (v51 >> 1) & 0x3F;
            if (v51 >> 1 <= 0)
            {
              v53 = -v52;
            }

            v40 |= 1 << v53;
          }

          while (v41 != v36);
        }
      }

      *(*(a1 + 352) + 8 * v17) = v40;
      v54 = *(a1 + 392) + 24 * v28;
      v56 = *v54;
      v55 = *(v54 + 8);
      if (*v54 != v55)
      {
        while (*v56 != v13)
        {
          if (++v56 == v55)
          {
            goto LABEL_64;
          }
        }

        if (v56 != v55)
        {
          for (i = v56 + 1; i != v55; ++i)
          {
            if (*i != v13)
            {
              *v56++ = *i;
            }
          }
        }
      }

      if (v56 != v55)
      {
        *(v54 + 8) = v56;
      }

LABEL_64:
      --*(*(a1 + 416) + 4 * v28);
      v58 = (v28 >> 1);
      v59 = v17;
      operations_research::sat::SatPresolver::UpdatePriorityQueue(a1, v58);
      v60 = *(a1 + 256);
      v61 = *(v60 + 8 * (v59 >> 6));
      if ((v61 & (1 << v59)) != 0)
      {
        v11 = v78;
        v10 = v77;
      }

      else
      {
        v62 = *(a1 + 288);
        v63 = *(a1 + 296);
        v64 = *(a1 + 288);
        *(v60 + 8 * (v59 >> 6)) = v61 | (1 << v59);
        if (v63 == v64)
        {
          v65 = 0;
        }

        else
        {
          v65 = ((v63 - v64) << 7) - 1;
        }

        v66 = *(a1 + 320);
        v67 = v66 + *(a1 + 312);
        if (v65 == v67)
        {
          std::deque<int>::__add_back_capacity((a1 + 280));
          v64 = *(a1 + 288);
          v66 = *(a1 + 320);
          v67 = *(a1 + 312) + v66;
        }

        v11 = v78;
        v10 = v77;
        *(*(v64 + ((v67 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v67 & 0x3FF)) = v13;
        *(a1 + 320) = v66 + 1;
      }

LABEL_5:
      if (++v7 == v6)
      {
        if ((v10 & 1) == 0)
        {
          return 1;
        }

        v68 = (*(a1 + 392) + 24 * a3);
        begin = v68->__begin_;
        end = v68->__end_;
        if (v68->__begin_ == end)
        {
          v71 = 0;
          v75 = end - begin;
        }

        else
        {
          LODWORD(v71) = 0;
          v72 = *(a1 + 352);
          v73 = v68->__begin_;
          do
          {
            v74 = *v73;
            if (*(v72 + 8 * v74))
            {
              begin[v71] = v74;
              LODWORD(v71) = v71 + 1;
            }

            ++v73;
          }

          while (v73 != end);
          v71 = v71;
          v75 = end - begin;
          if (v71 > v75)
          {
            std::vector<int>::__append(v68, v71 - v75);
            return 1;
          }
        }

        if (v75 > v71)
        {
          v68->__end_ = &begin[v71];
        }

        return 1;
      }
    }
  }

  return 1;
}

uint64_t operations_research::sat::ComputeResolvant(int a1, char **a2, char **a3, uint64_t a4)
{
  v7 = *a4;
  *(a4 + 8) = *a4;
  v8 = *a3;
  v10 = *a2;
  v9 = a2[1];
  if (*a2 == v9)
  {
    goto LABEL_16;
  }

  if (v8 == a3[1])
  {
LABEL_15:
    v7 = *(a4 + 8);
LABEL_16:
    std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(a4, v7, v10, v9, (v9 - v10) >> 2);
    std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(a4, *(a4 + 8), v8, a3[1], (a3[1] - v8) >> 2);
    return 1;
  }

  while (1)
  {
    v12 = *v8;
    v13 = *v10;
    if (*v10 == *v8)
    {
      std::vector<int>::push_back[abi:ne200100](a4, v10);
      v10 += 4;
      v8 += 4;
      v9 = a2[1];
      if (v10 == v9)
      {
        goto LABEL_15;
      }

      goto LABEL_9;
    }

    if ((v13 ^ v12) == 1)
    {
      break;
    }

    if (v13 >= v12)
    {
      std::vector<int>::push_back[abi:ne200100](a4, v8);
      v8 += 4;
      v9 = a2[1];
      if (v10 == v9)
      {
        goto LABEL_15;
      }
    }

    else
    {
      std::vector<int>::push_back[abi:ne200100](a4, v10);
      v10 += 4;
      v9 = a2[1];
      if (v10 == v9)
      {
        goto LABEL_15;
      }
    }

LABEL_9:
    if (v8 == a3[1])
    {
      goto LABEL_15;
    }
  }

  if (v13 == a1)
  {
    v10 += 4;
    v8 += 4;
    v9 = a2[1];
    if (v10 == v9)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  return 0;
}

void std::deque<operations_research::sat::SatPresolver::BvaPqElement>::assign(void *a1, unint64_t a2, _OWORD *a3)
{
  v5 = a1[4];
  v4 = a1[5];
  v7 = a1[1];
  v6 = a1[2];
  v8 = (v7 + 8 * (v5 >> 8));
  if (v4 < a2)
  {
    if (v6 == v7)
    {
      v9 = 0;
      if (!v4)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v9 = (*v8 + 16 * v5);
      if (!v4)
      {
LABEL_11:

LABEL_13:
        std::deque<operations_research::sat::SatPresolver::BvaPqElement>::__append(a1, a2, a3);
        return;
      }
    }

    do
    {
      *v9++ = *a3;
      if ((v9 - *v8) == 4096)
      {
        v15 = *(v8 + 1);
        v8 += 8;
        v9 = v15;
      }

      --v4;
    }

    while (v4);
    a2 -= a1[5];

    goto LABEL_13;
  }

  if (v6 == v7)
  {
    v10 = 0;
    if (!a2)
    {
LABEL_7:
      v11 = v5 + v4;
      v12 = (v7 + 8 * ((v5 + v4) >> 8));
      v13 = v6 - v7;
      if (v6 != v7)
      {
        goto LABEL_8;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v10 = (*v8 + 16 * v5);
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  do
  {
    *v10++ = *a3;
    if ((v10 - *v8) == 4096)
    {
      v16 = *(v8 + 1);
      v8 += 8;
      v10 = v16;
    }

    --a2;
  }

  while (a2);
  v5 = a1[4];
  v4 = a1[5];
  v7 = a1[1];
  v6 = a1[2];
  v11 = v5 + v4;
  v12 = (v7 + 8 * ((v5 + v4) >> 8));
  v13 = v6 - v7;
  if (v6 != v7)
  {
LABEL_8:
    v14 = *v12 + 16 * v11;
    if (v14 == v10)
    {
      return;
    }

    goto LABEL_27;
  }

LABEL_26:
  v14 = 0;
  if (!v10)
  {
    return;
  }

LABEL_27:
  v17 = ((v14 - *v12) >> 4) + 32 * (v12 - v8) - ((v10 - *v8) >> 4);
  if (v17 >= 1)
  {
    v18 = 32 * v13 - 1;
    if (v6 == v7)
    {
      v18 = 0;
    }

    v19 = v4 - v17;
    a1[5] = v19;
    if (v18 - (v5 + v19) >= 0x200)
    {
      do
      {
        operator delete(*(v6 - 8));
        v20 = a1[1];
        v6 = a1[2] - 8;
        v21 = 32 * (v6 - v20) - 1;
        a1[2] = v6;
        if (v6 == v20)
        {
          v21 = 0;
        }
      }

      while ((v21 - (a1[5] + a1[4])) > 0x1FF);
    }
  }
}

char *absl::lts_20240722::StrCat<char [11],int,char [7],int,char [16],int,char [20],int,char [20],int>@<X0>(char *__s@<X5>, _OWORD *a2@<X0>, __int128 *a3@<X1>, _OWORD *a4@<X2>, __int128 *a5@<X3>, _OWORD *a6@<X4>, unsigned int *a7@<X6>, const char *a8@<X7>, std::string *a9@<X8>, unsigned int *a10, const char *a11, unsigned int *a12, const char *a13, unsigned int *a14, const char *a15, unsigned int *a16)
{
  v71 = *MEMORY[0x277D85DE8];
  v18 = *a3;
  v50[0] = *a2;
  v50[1] = v18;
  v19 = *a5;
  v50[2] = *a4;
  v50[3] = v19;
  v50[4] = *a6;
  v51 = __s;
  v52 = strlen(__s);
  v21 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a7, v49, v20);
  v47 = v49;
  v48 = v21 - v49;
  v53 = v49;
  v54 = v21 - v49;
  v22 = strlen(a8);
  v55 = a8;
  v56 = v22;
  v24 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a10, v46, v23);
  v44 = v46;
  v45 = v24 - v46;
  v57 = v46;
  v58 = v24 - v46;
  v25 = strlen(a11);
  v59 = a11;
  v60 = v25;
  v27 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a12, v43, v26);
  v41 = v43;
  v42 = v27 - v43;
  v61 = v43;
  v62 = v27 - v43;
  v28 = strlen(a13);
  v63 = a13;
  v64 = v28;
  v30 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a14, v40, v29);
  v38 = v40;
  v39 = v30 - v40;
  v65 = v40;
  v66 = v30 - v40;
  v31 = strlen(a15);
  v67 = a15;
  v68 = v31;
  v36 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a16, v37, v32) - v37;
  v69 = v37;
  v70 = v36;
  result = absl::lts_20240722::strings_internal::CatPieces(v50, 15, a9);
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

void operations_research::sat::ProbeAndFindEquivalentLiteral(uint64_t a1, uint64_t a2, uint64_t a3, std::vector<int> *a4, uint64_t a5)
{
  v108 = *MEMORY[0x277D85DE8];
  CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(a1);
  operations_research::sat::SatSolver::Backtrack(a1, 0);
  a4->__end_ = a4->__begin_;
  v9 = *(*(a1 + 216) + 12);
  v10 = *(operations_research::sat::SatSolver::parameters(a1) + 504);
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v78 = a1;
  v79 = v10 + operations_research::sat::SatSolver::deterministic_time(a1);
  v11 = *(a1 + 16);
  v12 = (2 * v11);
  v72 = 0;
  v73 = 0;
  v74 = 0;
  FindStronglyConnectedComponents<int,operations_research::sat::PropagationGraph,std::vector<std::vector<int>>>(2 * v11, &v75, &v72);
  v63 = v9;
  v65 = a5;
  v71 = 0;
  v69 = 0u;
  *v70 = 0u;
  *v67 = 0u;
  *v68 = 0u;
  operations_research::MergingPartition::Reset(v67, v12);
  v13 = v72;
  v14 = v73;
  if (v72 != v73)
  {
    do
    {
      v15 = *v13;
      if ((v13[1] - *v13) >= 5)
      {
        if (a4->__begin_ != a4->__end_ || (__x[0] = -1, !v12) || (std::vector<int>::__append(a4, v12, __x), v15 = *v13, (v13[1] - *v13) >= 5))
        {
          v16 = *v15;
          v17 = 2;
          v18 = 1;
          do
          {
            v19 = v15[v18];
            operations_research::MergingPartition::MergePartsOf(v67, v16, v19);
            operations_research::MergingPartition::MergePartsOf(v67, v16 ^ 1, v19 ^ 1);
            v18 = v17;
            v15 = *v13;
            ++v17;
          }

          while (v18 < v13[1] - *v13);
        }
      }

      v13 += 3;
    }

    while (v13 != v14);
  }

  operations_research::sat::SatSolver::Backtrack(a1, 0);
  if (a4->__begin_ == a4->__end_ || v12 < 1)
  {
    v22 = 0;
    v23 = v65;
    if (!v65)
    {
      goto LABEL_42;
    }

    goto LABEL_18;
  }

  v35 = 0;
  v36 = *(a1 + 216);
  do
  {
    RootAndCompressPath = operations_research::MergingPartition::GetRootAndCompressPath(v67, v35);
    v38 = *(v36 + 24);
    v39 = *(v38 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8));
    if (((v39 >> (v35 & 0x3E)) & 3) != 0 && ((*(v38 + ((RootAndCompressPath >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (RootAndCompressPath & 0x3E)) & 3) == 0)
    {
      v40 = RootAndCompressPath ^ (((v39 >> v35) & 1) == 0);
      if ((operations_research::sat::SatSolver::AddUnitClause(a1, v40) & 1) == 0)
      {
        goto LABEL_44;
      }

      if (a3)
      {
        __x[0] = v40;
        operations_research::sat::DratProofHandler::AddClause(a3, __x, 1);
      }
    }

    ++v35;
  }

  while (v12 != v35);
  v41 = 0;
  v42 = 0;
  do
  {
    v43 = operations_research::MergingPartition::GetRootAndCompressPath(v67, v41);
    a4->__begin_[v41] = v43;
    v44 = *(v36 + 24);
    v45 = *(v44 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8));
    v46 = *(v44 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8));
    v47 = v46 & (3 << (v41 & 0x3E));
    if (((v45 >> (v43 & 0x3E)) & 3) != 0)
    {
      if (!v47)
      {
        v48 = v41 ^ (((v45 >> v43) & 1) == 0);
        if ((operations_research::sat::SatSolver::AddUnitClause(a1, v48) & 1) == 0)
        {
          goto LABEL_44;
        }

        if (a3)
        {
          goto LABEL_33;
        }
      }
    }

    else if (v47)
    {
      v48 = v43 ^ (((v46 >> v41) & 1) == 0);
      if ((operations_research::sat::SatSolver::AddUnitClause(a1, v48) & 1) == 0)
      {
        goto LABEL_44;
      }

      if (a3)
      {
LABEL_33:
        __x[0] = v48;
        operations_research::sat::DratProofHandler::AddClause(a3, __x, 1);
      }
    }

    else if (v41 != v43)
    {
      v49 = v43 ^ 1;
      __x[0] = v41;
      __x[1] = v43 ^ 1;
      operations_research::sat::SatPostsolver::Add(a2, v41, __x, 2);
      ++v42;
      if (a3)
      {
        __x[0] = v41;
        __x[1] = v49;
        operations_research::sat::DratProofHandler::AddClause(a3, __x, 2);
      }
    }

    ++v41;
  }

  while (v12 != v41);
  v22 = (v42 / 2);
  v23 = v65;
  if (!v65)
  {
LABEL_42:
    if ((*(operations_research::sat::SatSolver::parameters(a1) + 290) & 1) != 0 || dword_27E25D3A0 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::ProbeAndFindEquivalentLiteral(operations_research::sat::SatSolver *,operations_research::sat::SatPostsolver *,operations_research::sat::DratProofHandler *,absl::StrongVector<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>> *,operations_research::SolverLogger *)::$_0::operator() const(void)::site, dword_27E25D3A0))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(__x, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/simplification.cc", 1263);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(__x, "Probing. fixed ", 0xFuLL);
      LODWORD(v88[0]) = v63;
      v57 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(__x, v88);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v57, " + ", 3uLL);
      LODWORD(v88[0]) = *(*(a1 + 216) + 12) - v63;
      v58 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v57, v88);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v58, " equiv ", 7uLL);
      LODWORD(v88[0]) = v22;
      v59 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v58, v88);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v59, " total ", 7uLL);
      LODWORD(v88[0]) = *(a1 + 16);
      v60 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v59, v88);
      v61 = absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v60, " wtime: ", 8uLL);
      v88[0] = (absl::lts_20240722::GetCurrentTimeNanos(v61) - CurrentTimeNanos) * 0.000000001;
      absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v60, v88);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(__x);
    }

    goto LABEL_44;
  }

LABEL_18:
  if (*v23 == 1)
  {
    v24 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v63, v83, v20);
    *&v82 = v83;
    *(&v82 + 1) = v24 - v83;
    v26 = absl::lts_20240722::numbers_internal::FastIntToBuffer((*(*(a1 + 216) + 12) - v63), v81, v25);
    *&v80 = v81;
    *(&v80 + 1) = v26 - v81;
    v27 = *(a1 + 16);
    v28 = absl::lts_20240722::GetCurrentTimeNanos(v26);
    *__x = "[Pure SAT probing] fixed ";
    v91 = 25;
    v92 = v82;
    v93 = " + ";
    v94 = 3;
    v95 = v80;
    v96 = " equiv ";
    v97 = 7;
    v30 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v22, v89, v29);
    *&v88[0] = v89;
    *&v88[1] = v30 - v89;
    v98 = v89;
    v99 = v30 - v89;
    v100 = " total ";
    v101 = 7;
    v32 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v27, v87, v31);
    v86[4] = v87;
    v86[5] = v32 - v87;
    v102 = v87;
    v103 = v32 - v87;
    v104 = " wtime: ";
    v105 = 8;
    v34 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v86, (v28 - CurrentTimeNanos) * 0.000000001, v33);
    v84 = v86;
    v85 = v34;
    v106 = v86;
    v107 = v34;
    absl::lts_20240722::strings_internal::CatPieces(__x, 10, &__p);
    operations_research::SolverLogger::LogInfo(v65, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/simplification.cc", 1259, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

LABEL_44:
  if (v70[0])
  {
    operator delete(v70[0]);
  }

  if (v68[1])
  {
    *&v69 = v68[1];
    operator delete(v68[1]);
  }

  if (v67[0])
  {
    v67[1] = v67[0];
    operator delete(v67[0]);
  }

  v50 = v72;
  if (v72)
  {
    v51 = v73;
    v52 = v72;
    if (v73 != v72)
    {
      v53 = v73;
      do
      {
        v55 = *(v53 - 3);
        v53 -= 24;
        v54 = v55;
        if (v55)
        {
          *(v51 - 2) = v54;
          operator delete(v54);
        }

        v51 = v53;
      }

      while (v53 != v50);
      v52 = v72;
    }

    v73 = v50;
    operator delete(v52);
  }

  if (v75)
  {
    v76 = v75;
    operator delete(v75);
  }

  v56 = *MEMORY[0x277D85DE8];
}

void sub_23CCF6350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  operations_research::MergingPartition::~MergingPartition(&a17);
  std::vector<std::vector<int>>::~vector[abi:ne200100](&a27);
  if (__p)
  {
    a31 = __p;
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void FindStronglyConnectedComponents<int,operations_research::sat::PropagationGraph,std::vector<std::vector<int>>>(int a1, double *a2, uint64_t a3)
{
  *__p = 0u;
  v8 = 0u;
  v5 = 0u;
  *v6 = 0u;
  *v3 = 0u;
  *v4 = 0u;
  StronglyConnectedComponentsFinder<int,operations_research::sat::PropagationGraph,std::vector<std::vector<int>>>::FindStronglyConnectedComponents(v3, a1, a2, a3);
  if (__p[1])
  {
    *&v8 = __p[1];
    operator delete(__p[1]);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  if (v4[1])
  {
    *&v5 = v4[1];
    operator delete(v4[1]);
  }

  if (v3[0])
  {
    v3[1] = v3[0];
    operator delete(v3[0]);
  }
}

char *std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::SatPresolver::ProcessAllClauses(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(char *result, int *a2, void *a3, uint64_t a4, uint64_t *a5, unint64_t a6, int *a7, int64_t a8)
{
  if (a6 < 2)
  {
    return result;
  }

  v8 = a2;
  if (a6 == 2)
  {
    if (*a3 == a4)
    {
      a4 = *(a3 - 1) + 4096;
    }

    v9 = *(a4 - 4);
    v10 = *a2;
    v11 = *(*a5 + 328);
    if (*(v11 + 24 * v9 + 8) - *(v11 + 24 * v9) < *(v11 + 24 * v10 + 8) - *(v11 + 24 * v10))
    {
      *a2 = v9;
      *(a4 - 4) = v10;
    }

    return result;
  }

  v12 = result;
  if (a6 > 128)
  {
    v27 = a6 >> 1;
    v28 = (a6 >> 1) + ((a2 - *result) >> 2);
    if (v28 < 1)
    {
      v31 = 1023 - v28;
      v29 = &result[-8 * (v31 >> 10)];
      v30 = (*v29 + 4 * (~v31 & 0x3FF));
    }

    else
    {
      v29 = &result[8 * (v28 >> 10)];
      v30 = (*v29 + 4 * (v28 & 0x3FF));
    }

    v56 = a4;
    v33 = a6 - v27;
    if (a6 <= a8)
    {
      v40 = a7;
      std::__stable_sort_move<std::_ClassicAlgPolicy,operations_research::sat::SatPresolver::ProcessAllClauses(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(result, a2, v29, v30, a5, a6 >> 1, a7);
      v41 = &v40[v27];
      result = std::__stable_sort_move<std::_ClassicAlgPolicy,operations_research::sat::SatPresolver::ProcessAllClauses(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(v29, v30, a3, v56, a5, v33, v41);
      v42 = &v40[a6];
      v43 = *a5;
      v44 = v41;
      while (v44 != v42)
      {
        v45 = *v44;
        v46 = *v40;
        v47 = *(*(v43 + 328) + 24 * v45 + 8) - *(*(v43 + 328) + 24 * v45) >= *(*(v43 + 328) + 24 * v46 + 8) - *(*(v43 + 328) + 24 * v46);
        v48 = *(*(v43 + 328) + 24 * v45 + 8) - *(*(v43 + 328) + 24 * v45) < *(*(v43 + 328) + 24 * v46 + 8) - *(*(v43 + 328) + 24 * v46);
        if (*(*(v43 + 328) + 24 * v45 + 8) - *(*(v43 + 328) + 24 * v45) >= *(*(v43 + 328) + 24 * v46 + 8) - *(*(v43 + 328) + 24 * v46))
        {
          v45 = *v40;
        }

        *v8 = v45;
        v8 += 4;
        v49 = *v12;
        if (&v8[-*v12] == 4096)
        {
          v50 = *(v12 + 1);
          v12 += 8;
          v49 = v50;
          v8 = v50;
        }

        v40 += v47;
        v44 += v48;
        if (v40 == v41)
        {
          while (v44 != v42)
          {
            v51 = *v44++;
            *v8 = v51;
            v8 += 4;
            if (v8 - v49 == 4096)
            {
              v52 = *(v12 + 1);
              v12 += 8;
              v49 = v52;
              v8 = v52;
            }
          }

          return result;
        }
      }

      if (v40 != v41)
      {
        v53 = *v12;
        do
        {
          v54 = *v40++;
          *v8 = v54;
          v8 += 4;
          if (v8 - v53 == 4096)
          {
            v55 = *(v12 + 1);
            v12 += 8;
            v53 = v55;
            v8 = v55;
          }
        }

        while (v40 != v41);
      }
    }

    else
    {
      v36 = a6 - v27;
      std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::SatPresolver::ProcessAllClauses(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(result, a2, v29, v30, a5, a6 >> 1, a7, a8);
      std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::SatPresolver::ProcessAllClauses(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(v29, v30, a3, v56, a5, v36, a7, a8);
      return std::__inplace_merge<std::_ClassicAlgPolicy,operations_research::sat::SatPresolver::ProcessAllClauses(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(v12, v8, v29, v30, a3, v56, a5, v27, v36, a7, a8);
    }
  }

  else if (a2 != a4)
  {
    v13 = (a2 + 1);
    v14 = *result;
    if ((a2 - *result + 4) == 4096)
    {
      v12 = result + 8;
      v14 = *(result + 1);
      v13 = v14;
    }

    if (v13 != a4)
    {
      v15 = *(*a5 + 328);
      while (1)
      {
        v16 = v12;
        v17 = v13;
        if (v13 == v14)
        {
          v16 = v12 - 8;
          v17 = *(v12 - 1) + 4096;
        }

        v20 = *(v17 - 4);
        v18 = (v17 - 4);
        v19 = v20;
        v21 = *v13;
        v22 = *(v15 + 24 * v21 + 8) - *(v15 + 24 * v21);
        result = *(v15 + 24 * v20 + 8);
        if (v22 < &result[-*(v15 + 24 * v20)])
        {
          break;
        }

        v13 += 4;
        if (v13 - v14 == 4096)
        {
          goto LABEL_27;
        }

LABEL_14:
        if (v13 == a4)
        {
          return result;
        }
      }

      result = v13;
      do
      {
        v25 = v18;
        *result = v19;
        if (v18 == a2)
        {
          break;
        }

        if (v18 == *v16)
        {
          v23 = *(v16 - 1);
          v16 -= 8;
          v18 = (v23 + 4096);
        }

        v24 = *--v18;
        v19 = v24;
        result = v25;
      }

      while (v22 < *(v15 + 24 * v24 + 8) - *(v15 + 24 * v24));
      *v25 = v21;
      v13 += 4;
      if (v13 - v14 != 4096)
      {
        goto LABEL_14;
      }

LABEL_27:
      v26 = *(v12 + 1);
      v12 += 8;
      v14 = v26;
      v13 = v26;
      goto LABEL_14;
    }
  }

  return result;
}

char **std::__stable_sort_move<std::_ClassicAlgPolicy,operations_research::sat::SatPresolver::ProcessAllClauses(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(char **result, int *a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t a6, int *a7)
{
  if (a6)
  {
    if (a6 == 1)
    {
LABEL_10:
      *a7 = *a2;
      return result;
    }

    if (a6 == 2)
    {
      if (*a3 == a4)
      {
        a4 = *(a3 - 1) + 4096;
      }

      v9 = *(a4 - 4);
      v7 = (a4 - 4);
      v8 = v9;
      v10 = *(*a5 + 328);
      v11 = *(v10 + 24 * v9 + 8) - *(v10 + 24 * v9);
      v12 = *(v10 + 24 * *a2 + 8) - *(v10 + 24 * *a2);
      if (v11 >= v12)
      {
        v8 = *a2;
      }

      *a7++ = v8;
      if (v11 >= v12)
      {
        a2 = v7;
      }

      goto LABEL_10;
    }

    if (a6 > 8)
    {
      v25 = a6 >> 1;
      v26 = (a6 >> 1) + ((a2 - *result) >> 2);
      v29 = a4;
      if (v26 < 1)
      {
        v32 = 1023 - v26;
        v30 = &result[-(v32 >> 10)];
        v31 = &(*v30)[4 * (~v32 & 0x3FF)];
      }

      else
      {
        v30 = &result[v26 >> 10];
        v31 = &(*v30)[4 * (v26 & 0x3FF)];
      }

      v33 = result;
      v34 = a2;
      v36 = a7;
      (std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::SatPresolver::ProcessAllClauses(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>>)();
      result = std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::SatPresolver::ProcessAllClauses(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(v30, v31, a3, v29, a5, a6 - v25, &v36[v25], a6 - v25);
      if (v34 == v31)
      {
        v37 = v31;
        v38 = v36;
LABEL_32:
        if (v37 != v29)
        {
          v39 = *v30;
          do
          {
            v40 = *v37;
            v37 += 4;
            *v38 = v40;
            if (v37 - v39 == 4096)
            {
              v41 = v30[1];
              ++v30;
              v39 = v41;
              v37 = v41;
            }

            ++v38;
          }

          while (v37 != v29);
        }
      }

      else
      {
        v42 = *a5;
        v37 = v31;
        v38 = v36;
        v43 = v33;
        while (v37 != v29)
        {
          v44 = *v37;
          v45 = *v34;
          if (*(*(v42 + 328) + 24 * v44 + 8) - *(*(v42 + 328) + 24 * v44) >= *(*(v42 + 328) + 24 * v45 + 8) - *(*(v42 + 328) + 24 * v45))
          {
            *v38 = v45;
            if (++v34 - *v43 == 4096)
            {
              v47 = v43[1];
              ++v43;
              v34 = v47;
            }
          }

          else
          {
            *v38 = v44;
            v37 += 4;
            if (v37 - *v30 == 4096)
            {
              v46 = v30[1];
              ++v30;
              v37 = v46;
            }
          }

          ++v38;
          if (v34 == v31)
          {
            goto LABEL_32;
          }
        }

        if (v34 != v31)
        {
          v48 = *v43;
          do
          {
            v49 = *v34++;
            *v38 = v49;
            if (v34 - v48 == 4096)
            {
              v50 = v43[1];
              ++v43;
              v48 = v50;
              v34 = v50;
            }

            ++v38;
          }

          while (v34 != v31);
        }
      }
    }

    else if (a2 != a4)
    {
      v13 = 0;
      v14 = *a5;
      *a7 = *a2;
      v15 = *result;
      for (i = a7; ; i = v18)
      {
        if (++a2 - v15 == 4096)
        {
          v17 = result[1];
          ++result;
          v15 = v17;
          a2 = v17;
        }

        if (a2 == a4)
        {
          break;
        }

        v18 = i + 1;
        v19 = *a2;
        v20 = *i;
        v21 = *(v14 + 328);
        if (*(v21 + 24 * v19 + 8) - *(v21 + 24 * v19) >= *(v21 + 24 * v20 + 8) - *(v21 + 24 * v20))
        {
          *v18 = v19;
        }

        else
        {
          i[1] = v20;
          v22 = a7;
          if (i != a7)
          {
            v23 = v13;
            while (1)
            {
              v22 = (a7 + v23);
              v24 = *(a7 + v23 - 4);
              if (*(v21 + 24 * *a2 + 8) - *(v21 + 24 * *a2) >= *(v21 + 24 * v24 + 8) - *(v21 + 24 * v24))
              {
                break;
              }

              *v22 = v24;
              v23 -= 4;
              if (!v23)
              {
                v22 = a7;
                break;
              }
            }
          }

          *v22 = *a2;
        }

        v13 += 4;
      }
    }
  }

  return result;
}

char *std::__inplace_merge<std::_ClassicAlgPolicy,operations_research::sat::SatPresolver::ProcessAllClauses(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(char *result, char *a2, const void **a3, char *a4, void *a5, char *a6, uint64_t *a7, uint64_t a8, int64_t a9, char *a10, int64_t a11)
{
  v11 = a9;
  if (!a9)
  {
    return result;
  }

  v14 = result;
  result = a10;
  while (v11 > a11 && a8 > a11)
  {
    if (!a8)
    {
      return result;
    }

    v16 = *a4;
    v17 = *(*a7 + 328);
    v18 = a8 + 1;
    while (1)
    {
      v19 = *a2;
      if (*(v17 + 24 * v16 + 8) - *(v17 + 24 * v16) < *(v17 + 24 * v19 + 8) - *(v17 + 24 * v19))
      {
        break;
      }

      a2 += 4;
      if (&a2[-*v14] == 4096)
      {
        v20 = *(v14 + 1);
        v14 += 8;
        a2 = v20;
      }

      if (--v18 == 1)
      {
        return result;
      }
    }

    if ((v18 - 1) >= v11)
    {
      if (v18 == 2)
      {
        *a2 = v16;
        *a4 = v19;
        return result;
      }

      v38 = (v18 - 1) / 2;
      v29 = v14;
      v30 = a2;
      if (v18 < 3)
      {
LABEL_38:
        if (a6 == a4)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v39 = v38 + (&a2[-*v14] >> 2);
        if (v39 >= 1)
        {
          v29 = &v14[8 * (v39 >> 10)];
          v30 = *v29 + 4 * (v39 & 0x3FF);
          goto LABEL_38;
        }

        v52 = 1023 - v39;
        v29 = &v14[-8 * (v52 >> 10)];
        v30 = *v29 + 4 * (~v52 & 0x3FF);
        if (a6 == a4)
        {
LABEL_69:
          v21 = 0;
          v22 = a3;
          v23 = a4;
          v114 = a11;
          v115 = result;
          v113 = a3;
          if (v30 == a4)
          {
            goto LABEL_74;
          }

LABEL_70:
          if (a4 == v23)
          {
            v60 = v30;
            v58 = v29;
          }

          else
          {
            v111 = a6;
            v112 = a5;
            v53 = v22;
            v54 = a7;
            v55 = v38;
            v56 = v21;
            v57 = std::__rotate_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(v29, v30, a3, a4, v53, v23);
            v21 = v56;
            v38 = v55;
            a7 = v54;
            a6 = v111;
            a5 = v112;
            v58 = v57;
            v60 = v59;
          }

          goto LABEL_75;
        }
      }

      v40 = (a4 - *a3) >> 2;
      v41 = (&a6[-*a5] >> 2) + ((a5 - a3) << 7) - v40;
      if (!v41)
      {
        goto LABEL_69;
      }

      v42 = *(v17 + 24 * *v30 + 8) - *(v17 + 24 * *v30);
      v23 = a4;
      v22 = a3;
      while (2)
      {
        v43 = v41 >> 1;
        if (v41 == 1)
        {
          v44 = v23;
          v45 = v22;
          if (*(v17 + 24 * *v23 + 8) - *(v17 + 24 * *v23) < v42)
          {
            goto LABEL_55;
          }

LABEL_42:
          v41 = v43;
          if (!v43)
          {
            if (v23 == a4)
            {
              v21 = 0;
              v114 = a11;
              v115 = result;
              v113 = v22;
              if (v30 == a4)
              {
                goto LABEL_74;
              }
            }

            else
            {
              v21 = (&v23[-*v22] >> 2) + ((v22 - a3) << 7) - v40;
              v114 = a11;
              v115 = result;
              v113 = v22;
              if (v30 == a4)
              {
                goto LABEL_74;
              }
            }

            goto LABEL_70;
          }

          continue;
        }

        break;
      }

      v46 = v43 + (&v23[-*v22] >> 2);
      if (v46 < 1)
      {
        v47 = 2046 - v46;
        if (1023 - v46 >= 0)
        {
          v47 = 1023 - v46;
        }

        v45 = &v22[-(v47 >> 10)];
        if (v46 - 1023 >= 0)
        {
          v48 = -((v46 - 1023) & 0x3FF);
        }

        else
        {
          v48 = (1023 - v46) & 0x3FF;
        }

        v44 = (*v45 + 4 * (1023 - v48));
        if (*(v17 + 24 * *v44 + 8) - *(v17 + 24 * *v44) >= v42)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v45 = &v22[v46 >> 10];
        v44 = (*v45 + 4 * (v46 & 0x3FF));
        if (*(v17 + 24 * *v44 + 8) - *(v17 + 24 * *v44) >= v42)
        {
          goto LABEL_42;
        }
      }

LABEL_55:
      v23 = (v44 + 1);
      if ((v44 - *v45 + 4) == 4096)
      {
        v49 = v45[1];
        ++v45;
        v23 = v49;
      }

      v43 = v41 + ~v43;
      v22 = v45;
      goto LABEL_42;
    }

    v21 = v11 / 2;
    v22 = a3;
    v23 = a4;
    if ((v11 + 1) >= 3)
    {
      v24 = v21 + ((a4 - *a3) >> 2);
      if (v24 < 1)
      {
        v51 = 1023 - v24;
        v22 = &a3[-(v51 >> 10)];
        v23 = (*v22 + 4 * (~v51 & 0x3FF));
        if (a4 == a2)
        {
LABEL_66:
          v38 = 0;
          v29 = v14;
          v30 = a2;
          v114 = a11;
          v115 = result;
          v113 = v22;
          if (a2 == a4)
          {
            goto LABEL_74;
          }

          goto LABEL_70;
        }

        goto LABEL_16;
      }

      v22 = &a3[v24 >> 10];
      v23 = (*v22 + 4 * (v24 & 0x3FF));
    }

    if (a4 == a2)
    {
      goto LABEL_66;
    }

LABEL_16:
    v25 = *v14;
    v26 = &a2[-*v14] >> 2;
    v27 = ((a4 - *a3) >> 2) + ((a3 - v14) << 7) - v26;
    if (!v27)
    {
      goto LABEL_66;
    }

    v28 = *(v17 + 24 * *v23 + 8) - *(v17 + 24 * *v23);
    v29 = v14;
    v30 = a2;
    do
    {
      v31 = v27 >> 1;
      v32 = v30;
      v33 = v29;
      if (v27 == 1)
      {
        if (v28 < *(v17 + 24 * *v30 + 8) - *(v17 + 24 * *v30))
        {
          goto LABEL_19;
        }

LABEL_32:
        v30 = v32 + 4;
        v25 = *v33;
        if (v32 + 4 - *v33 == 4096)
        {
          v37 = v33[1];
          ++v33;
          v25 = v37;
          v30 = v37;
        }

        v31 = v27 + ~v31;
        v29 = v33;
        goto LABEL_19;
      }

      v34 = v31 + ((v30 - v25) >> 2);
      if (v34 >= 1)
      {
        v33 = &v29[v34 >> 10];
        v32 = *v33 + 4 * (v34 & 0x3FF);
        if (v28 < *(v17 + 24 * *v32 + 8) - *(v17 + 24 * *v32))
        {
          goto LABEL_19;
        }

        goto LABEL_32;
      }

      v35 = 2046 - v34;
      if (1023 - v34 >= 0)
      {
        v35 = 1023 - v34;
      }

      v33 = &v29[-(v35 >> 10)];
      if (v34 - 1023 >= 0)
      {
        v36 = -((v34 - 1023) & 0x3FF);
      }

      else
      {
        v36 = (1023 - v34) & 0x3FF;
      }

      v32 = *v33 + 4 * (1023 - v36);
      if (v28 >= *(v17 + 24 * *v32 + 8) - *(v17 + 24 * *v32))
      {
        goto LABEL_32;
      }

LABEL_19:
      v27 = v31;
    }

    while (v31);
    v50 = (v30 - v25) >> 2;
    if (v30 == a2)
    {
      v38 = 0;
    }

    else
    {
      v38 = v50 + ((v29 - v14) << 7) - v26;
    }

    v21 = v11 / 2;
    v114 = a11;
    v115 = result;
    v113 = v22;
    if (v30 != a4)
    {
      goto LABEL_70;
    }

LABEL_74:
    v60 = v23;
    v58 = v22;
LABEL_75:
    a8 = ~v38 + v18;
    v61 = v11 - v21;
    if (v38 + v21 >= (v11 - (v38 + v21) + v18 - 1))
    {
      v66 = a7;
      a8 = v38;
      v61 = v21;
      std::__inplace_merge<std::_ClassicAlgPolicy,operations_research::sat::SatPresolver::ProcessAllClauses(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(v58, v60, v113, v23, a5, a6);
      a3 = v29;
      v23 = v30;
      a5 = v58;
      a6 = v60;
    }

    else
    {
      v62 = v14;
      v63 = a2;
      v64 = a5;
      v65 = a6;
      v66 = a7;
      std::__inplace_merge<std::_ClassicAlgPolicy,operations_research::sat::SatPresolver::ProcessAllClauses(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(v62, v63, v29, v30, v58, v60);
      a5 = v64;
      a6 = v65;
      v14 = v58;
      a2 = v60;
      a3 = v113;
    }

    v11 = v61;
    a4 = v23;
    a11 = v114;
    result = v115;
    a7 = v66;
    if (!v61)
    {
      return result;
    }
  }

  if (a8 <= v11)
  {
    if (a2 == a4)
    {
      return result;
    }

    v74 = 0;
    v75 = *v14;
    v76 = *v14;
    v77 = a2;
    v78 = v14;
    do
    {
      v79 = *v77;
      v77 += 4;
      *&result[v74] = v79;
      if (v77 - v76 == 4096)
      {
        v80 = *(v78 + 1);
        v78 += 8;
        v76 = v80;
        v77 = v80;
      }

      v74 += 4;
    }

    while (v77 != a4);
    if (!v74)
    {
      return result;
    }

    v81 = &result[v74];
    v82 = *a7;
    v83 = result;
    while (1)
    {
      if (a4 == a6)
      {
        v103 = *v14;
        v102 = (v14 + 8);
        v101 = v103;
        v104 = &result[v74];
        while (1)
        {
          if ((v104 - v83) >> 2 >= (v101 - a2 + 4096) >> 2)
          {
            v105 = (v101 - a2 + 4096) >> 2;
          }

          else
          {
            v105 = (v104 - v83) >> 2;
          }

          if ((v105 & 0x3FFFFFFFFFFFFFFFLL) != 0)
          {
            result = memmove(a2, v83, 4 * v105);
          }

          v83 += 4 * v105;
          if (v81 == v83)
          {
            break;
          }

          v106 = *v102++;
          v101 = v106;
          a2 = v106;
        }

        return result;
      }

      v84 = *a4;
      v85 = *v83;
      if (*(*(v82 + 328) + 24 * v84 + 8) - *(*(v82 + 328) + 24 * v84) >= *(*(v82 + 328) + 24 * v85 + 8) - *(*(v82 + 328) + 24 * v85))
      {
        *a2 = v85;
        a2 += 4;
        v83 += 4;
        if (a2 - v75 == 4096)
        {
          goto LABEL_102;
        }
      }

      else
      {
        *a2 = v84;
        a4 += 4;
        if (a4 - *a3 == 4096)
        {
          v86 = a3[1];
          ++a3;
          a4 = v86;
          a2 += 4;
          if (a2 - v75 == 4096)
          {
LABEL_102:
            v87 = *(v14 + 1);
            v14 += 8;
            v75 = v87;
            a2 = v87;
          }
        }

        else
        {
          a2 += 4;
          if (a2 - v75 == 4096)
          {
            goto LABEL_102;
          }
        }
      }

      if (v81 == v83)
      {
        return result;
      }
    }
  }

  if (a6 == a4)
  {
    return result;
  }

  v67 = 0;
  v68 = *a3;
  v69 = *a3;
  v70 = a4;
  v71 = a3;
  do
  {
    v72 = *v70;
    v70 += 4;
    *&result[v67] = v72;
    if (v70 - v69 == 4096)
    {
      v73 = v71[1];
      ++v71;
      v69 = v73;
      v70 = v73;
    }

    v67 += 4;
  }

  while (v70 != a6);
  if (!v67)
  {
    return result;
  }

  v88 = &result[v67];
  v89 = *a7;
  while (2)
  {
    if (a2 != a4)
    {
      v90 = a4;
      if (v68 == a4)
      {
        v90 = *(a3 - 1) + 4096;
      }

      v91 = v88 - 4;
      v92 = *(v88 - 1);
      v93 = *(v89 + 328);
      if (*(v93 + 24 * v92 + 8) - *(v93 + 24 * v92) >= *(v93 + 24 * *(v90 - 4) + 8) - *(v93 + 24 * *(v90 - 4)))
      {
        v97 = *a5;
        v98 = a6;
        if (a6 == *a5)
        {
          v98 = *(a5 - 1) + 4096;
        }

        *(v98 - 4) = v92;
        v88 = v91;
        if (a6 == v97)
        {
          goto LABEL_122;
        }
      }

      else
      {
        v94 = a4;
        if (v68 == a4)
        {
          v94 = *(a3 - 1) + 4096;
          v95 = *a5;
          v96 = a6;
          if (a6 == *a5)
          {
            goto LABEL_120;
          }

LABEL_112:
          *(v96 - 1) = *(v94 - 4);
          if (v68 != a4)
          {
            goto LABEL_113;
          }

LABEL_121:
          v99 = *--a3;
          v68 = v99;
          a4 = v99 + 4092;
          if (a6 == v95)
          {
LABEL_122:
            v100 = *--a5;
            a6 = (v100 + 4096);
          }
        }

        else
        {
          v95 = *a5;
          v96 = a6;
          if (a6 != *a5)
          {
            goto LABEL_112;
          }

LABEL_120:
          *(*(a5 - 1) + 4092) = *(v94 - 4);
          if (v68 == a4)
          {
            goto LABEL_121;
          }

LABEL_113:
          a4 -= 4;
          if (a6 == v95)
          {
            goto LABEL_122;
          }
        }
      }

      a6 -= 4;
      if (v88 == result)
      {
        return result;
      }

      continue;
    }

    break;
  }

  if (v88 != result)
  {
    v107 = *a5;
    do
    {
      while (1)
      {
        v110 = *(v88 - 1);
        v88 -= 4;
        v109 = v110;
        if (a6 == v107)
        {
          break;
        }

        *(a6 - 1) = v109;
        a6 -= 4;
        if (v88 == result)
        {
          return result;
        }
      }

      v108 = *--a5;
      v107 = v108;
      *(v108 + 1023) = v109;
      a6 = v108 + 4092;
    }

    while (v88 != result);
  }

  return result;
}

char *std::__rotate_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(const void **a1, char *a2, char *a3, char *a4, const void **a5, char *a6)
{
  v8 = (a2 - *a1) >> 2;
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = v8 + 1;
    v10 = &a1[(v8 + 1) >> 10];
    v11 = *v10 + 4 * (v9 & 0x3FF);
    if (v11 != a4)
    {
      goto LABEL_3;
    }

LABEL_9:
    v16 = *a2;
    v24 = a1;
    v25 = a2;
    std::__for_each_segment[abi:ne200100]<std::__deque_iterator<int,int *,int &,int **,long,1024l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<int,int *,int &,int **,long,1024l>,std::__deque_iterator<int,int *,int &,int **,long,1024l>>>(v10, v11, a5, a6, &v24);
    result = v24;
    *v25 = v16;
    return result;
  }

  v14 = 1022 - v8;
  v15 = ~v14;
  v10 = &a1[-(v14 >> 10)];
  v11 = *v10 + 4 * (v15 & 0x3FF);
  if (v11 == a4)
  {
    goto LABEL_9;
  }

LABEL_3:
  v12 = &a4[-*a3] >> 2;
  if (v12 < 0)
  {
    if ((*&a3[-8 * ((1022 - v12) >> 10)] + 4 * (~(1022 - v12) & 0x3FF)) != a6)
    {
      goto LABEL_5;
    }
  }

  else if ((*&a3[((v12 + 1) >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * ((v12 + 1) & 0x3FF)) != a6)
  {
LABEL_5:

    return std::__rotate_gcd[abi:ne200100]<std::_ClassicAlgPolicy,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(a1, a2, a3, a4, a5, a6);
  }

  v17 = (a6 - *a5) >> 2;
  if (v17 < 2)
  {
    v22 = 1024 - v17;
    v20 = &a5[-(v22 >> 10)];
    v21 = *v20 + 4 * (~v22 & 0x3FF);
  }

  else
  {
    v19 = v17 - 1;
    v20 = &a5[v19 >> 10];
    v21 = *v20 + 4 * (v19 & 0x3FF);
  }

  v23 = *v21;
  std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<int,int *,int &,int **,long,1024l>,std::__deque_iterator<int,int *,int &,int **,long,1024l>,0>(a1, a2, v20, v21, a5, a6, &v24);
  result = v26;
  *a2 = v23;
  return result;
}

char *std::__rotate_gcd[abi:ne200100]<std::_ClassicAlgPolicy,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(char *result, char *a2, char *a3, char *a4, char *a5, char *a6)
{
  if (a4 == a2)
  {
    v6 = 0;
    if (a6 != a4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v7 = 0;
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v6 = (&a4[-*a3] >> 2) + ((a3 - result) << 7) - (&a2[-*result] >> 2);
  if (a6 == a4)
  {
    goto LABEL_10;
  }

LABEL_3:
  v7 = (&a6[-*a5] >> 2) + ((a5 - a3) << 7) - (&a4[-*a3] >> 2);
  if (v6 == v7)
  {
LABEL_11:
    if (a2 == a4 || a4 == a6)
    {
      return a3;
    }

    v15 = *result;
    v16 = a3;
    v17 = a4;
    while (1)
    {
      v19 = *a2;
      *a2 = *v17;
      a2 += 4;
      *v17 = v19;
      if (a2 - v15 == 4096)
      {
        v20 = *(result + 1);
        result += 8;
        v15 = v20;
        a2 = v20;
        v17 += 4;
        if (&v17[-*v16] == 4096)
        {
LABEL_22:
          v21 = *(v16 + 1);
          v16 += 8;
          v17 = v21;
        }
      }

      else
      {
        v17 += 4;
        if (&v17[-*v16] == 4096)
        {
          goto LABEL_22;
        }
      }

      if (a2 == a4 || v17 == a6)
      {
        return a3;
      }
    }
  }

LABEL_4:
  v8 = v7;
  v9 = v6;
  do
  {
    v10 = v9;
    v9 = v8;
    v8 = v10 % v8;
  }

  while (v8);
  v11 = v9 + (&a2[-*result] >> 2);
  if (v11 < 1)
  {
    v22 = 1023 - v11;
    v23 = 2046 - v11;
    if (1023 - v11 >= 0)
    {
      v23 = 1023 - v11;
    }

    v12 = &result[-8 * (v23 >> 10)];
    v13 = *v12;
    v24 = v22 & 0x3FF;
    v26 = -v22;
    v25 = v26 < 0;
    v27 = v26 & 0x3FF;
    if (!v25)
    {
      v24 = -v27;
    }

    v14 = v13 + 4 * (1023 - v24);
    if (v14 == a2)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v12 = &result[8 * (v11 >> 10)];
    v13 = *v12;
    v14 = *v12 + 4 * (v11 & 0x3FF);
    if (v14 == a2)
    {
      goto LABEL_82;
    }
  }

  if (!v6)
  {
LABEL_66:
    if (v14 == v13)
    {
      v50 = *(v12 - 1);
      v12 -= 8;
      v13 = v50;
      v14 = v50 + 4096;
    }

    v52 = *(v14 - 4);
    v14 -= 4;
    v51 = v52;
    v53 = v14;
    v54 = v14;
    v55 = v12;
    while (1)
    {
      v56 = v54;
      *v53 = *v54;
      if (a6 != v54)
      {
        v57 = (&a6[-*a5] >> 2) + ((a5 - v55) << 7);
        v58 = &v54[-*v55] >> 2;
        if (v57 - v58 > 0)
        {
          goto LABEL_70;
        }

        if (v57 != v58)
        {
          v59 = (&a2[-*result] >> 2) - (v57 - v58);
          if (v59 <= 0)
          {
            v60 = 2046 - v59;
            if (1023 - v59 >= 0)
            {
              v60 = 1023 - v59;
            }

            v55 = &result[-8 * (v60 >> 10)];
            if (v59 - 1023 >= 0)
            {
              v61 = -((v59 - 1023) & 0x3FF);
            }

            else
            {
              v61 = (1023 - v59) & 0x3FF;
            }

            v54 = (*v55 + 4 * (1023 - v61));
          }

          else
          {
            v55 = &result[8 * (v59 >> 10)];
            v54 = (*v55 + 4 * (v59 & 0x3FF));
          }

          goto LABEL_70;
        }
      }

      v54 = a2;
      v55 = result;
LABEL_70:
      v53 = v56;
      if (v54 == v14)
      {
        *v56 = v51;
        if (v14 == a2)
        {
          goto LABEL_82;
        }

        goto LABEL_66;
      }
    }
  }

  while (2)
  {
    if (v14 == v13)
    {
      v33 = *(v12 - 1);
      v12 -= 8;
      v13 = v33;
      v14 = v33 + 4092;
      v28 = *(v33 + 4092);
      v30 = v6 + 1023;
      if (v6 + 1023 >= 1)
      {
        goto LABEL_33;
      }

LABEL_35:
      v34 = 2046 - v30;
      if (1023 - v30 >= 0)
      {
        v34 = 1023 - v30;
      }

      v31 = &v12[-8 * (v34 >> 10)];
      if (v30 - 1023 >= 0)
      {
        v35 = -((v30 - 1023) & 0x3FF);
      }

      else
      {
        v35 = (1023 - v30) & 0x3FF;
      }

      v32 = (*v31 + 4 * (1023 - v35));
      goto LABEL_41;
    }

    v29 = *(v14 - 4);
    v14 -= 4;
    v28 = v29;
    v30 = v6 + ((v14 - v13) >> 2);
    if (v30 < 1)
    {
      goto LABEL_35;
    }

LABEL_33:
    v31 = &v12[8 * (v30 >> 10)];
    v32 = (*v31 + 4 * (v30 & 0x3FF));
LABEL_41:
    v36 = v14;
    do
    {
      v37 = v32;
      *v36 = *v32;
      if (a6 == v32)
      {
        v39 = v6;
        v38 = v6 == 0;
        if (v6 >= 0)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v41 = (&a6[-*a5] >> 2) + ((a5 - v31) << 7) - (&v32[-*v31] >> 2);
        v42 = __OFSUB__(v6, v41);
        v39 = v6 - v41;
        v38 = v39 == 0;
        if (v39 < 0 == v42)
        {
LABEL_46:
          if (v38)
          {
            v32 = a2;
            v31 = result;
            goto LABEL_43;
          }

          v40 = v39 + (&a2[-*result] >> 2);
          if (v40 >= 1)
          {
            v31 = &result[8 * (v40 >> 10)];
LABEL_53:
            v32 = (*v31 + 4 * (v40 & 0x3FF));
            goto LABEL_43;
          }

          v43 = 1023 - v40;
          v45 = 2046 - v40;
          if (1023 - v40 >= 0)
          {
            v45 = 1023 - v40;
          }

          v31 = &result[-8 * (v45 >> 10)];
          goto LABEL_60;
        }
      }

      v40 = v6 + (&v37[-*v31] >> 2);
      if (v40 >= 1)
      {
        v31 += 8 * (v40 >> 10);
        goto LABEL_53;
      }

      v43 = 1023 - v40;
      v44 = 2046 - v40;
      if (v43 >= 0)
      {
        v44 = v43;
      }

      v31 -= 8 * (v44 >> 10);
LABEL_60:
      v46 = v43 & 0x3FF;
      v47 = -v43;
      v25 = v47 < 0;
      v48 = v47 & 0x3FF;
      if (v25)
      {
        v49 = v46;
      }

      else
      {
        v49 = -v48;
      }

      v32 = (*v31 + 4 * (1023 - v49));
LABEL_43:
      v36 = v37;
    }

    while (v32 != v14);
    *v37 = v28;
    if (v14 != a2)
    {
      continue;
    }

    break;
  }

LABEL_82:
  if (v7)
  {
    v62 = v7 + (&a2[-*result] >> 2);
    if (v62 >= 1)
    {
      a3 = &result[8 * (v62 >> 10)];
      v63 = *a3 + 4 * (v62 & 0x3FF);
      return a3;
    }

    v64 = 1023 - v62;
    v65 = 2046 - v62;
    if (v64 >= 0)
    {
      v65 = v64;
    }

    v66 = &result[-8 * (v65 >> 10)];
    v67 = v64 & 0x3FF;
    v68 = -v64;
    v25 = v68 < 0;
    v69 = v68 & 0x3FF;
    if (v25)
    {
      v70 = v67;
    }

    else
    {
      v70 = -v69;
    }

    result -= 8 * (v65 >> 10);
    v71 = *v66 + 4 * (1023 - v70);
  }

  return result;
}

const void **std::__for_each_segment[abi:ne200100]<std::__deque_iterator<int,int *,int &,int **,long,1024l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<int,int *,int &,int **,long,1024l>,std::__deque_iterator<int,int *,int &,int **,long,1024l>>>(const void **__len, char *a2, const void **a3, char *a4, uint64_t a5)
{
  v7 = a2;
  if (__len == a3)
  {
    v9 = *a5;
    v8 = *(a5 + 8);
    if (a2 != a4)
    {
      v11 = *v9++;
      v10 = v11;
      while (1)
      {
        v12 = (v10 - v8 + 4096) >> 2;
        if ((a4 - v7) >> 2 < v12)
        {
          v12 = (a4 - v7) >> 2;
        }

        v13 = 4 * v12;
        if ((v12 & 0x3FFFFFFFFFFFFFFFLL) != 0)
        {
          __len = memmove(v8, v7, 4 * v12);
        }

        v7 += v13;
        if (v7 == a4)
        {
          break;
        }

        v14 = *v9++;
        v10 = v14;
        v8 = v14;
      }

      v8 += v13;
      if (*(v9 - 1) + 4096 != v8)
      {
        *a5 = v9 - 1;
        goto LABEL_50;
      }

      v8 = *v9;
    }

    *a5 = v9;
    goto LABEL_50;
  }

  v16 = __len;
  v17 = *__len + 4096;
  v18 = *a5;
  v8 = *(a5 + 8);
  if (v17 != a2)
  {
    v20 = *v18++;
    v19 = v20;
    while (1)
    {
      v21 = (v19 - v8 + 4096) >> 2;
      if ((v17 - v7) >> 2 < v21)
      {
        v21 = (v17 - v7) >> 2;
      }

      v22 = 4 * v21;
      if ((v21 & 0x3FFFFFFFFFFFFFFFLL) != 0)
      {
        __len = memmove(v8, v7, 4 * v21);
      }

      v7 += v22;
      if (v7 == v17)
      {
        break;
      }

      v23 = *v18++;
      v19 = v23;
      v8 = v23;
    }

    v8 += v22;
    if (*(v18 - 1) + 4096 == v8)
    {
      v8 = *v18;
    }

    else
    {
      --v18;
    }
  }

  *a5 = v18;
  *(a5 + 8) = v8;
  for (i = v16 + 1; i != a3; ++i)
  {
    v25 = *i;
    v26 = *i + 4096;
    v28 = *v18++;
    v27 = v28;
    while (1)
    {
      v29 = (v27 - v8 + 4096) >> 2;
      if ((v26 - v25) >> 2 < v29)
      {
        v29 = (v26 - v25) >> 2;
      }

      v30 = 4 * v29;
      if ((v29 & 0x3FFFFFFFFFFFFFFFLL) != 0)
      {
        __len = memmove(v8, v25, 4 * v29);
      }

      v25 += v30;
      if (v25 == v26)
      {
        break;
      }

      v31 = *v18++;
      v27 = v31;
      v8 = v31;
    }

    v8 += v30;
    if (*(v18 - 1) + 4096 == v8)
    {
      v8 = *v18;
    }

    else
    {
      --v18;
    }

    *a5 = v18;
    *(a5 + 8) = v8;
  }

  v32 = *i;
  if (*i != a4)
  {
    v34 = *v18++;
    v33 = v34;
    while (1)
    {
      v35 = (v33 - v8 + 4096) >> 2;
      if ((a4 - v32) >> 2 < v35)
      {
        v35 = (a4 - v32) >> 2;
      }

      v36 = 4 * v35;
      if ((v35 & 0x3FFFFFFFFFFFFFFFLL) != 0)
      {
        __len = memmove(v8, v32, 4 * v35);
      }

      v32 += v36;
      if (v32 == a4)
      {
        break;
      }

      v37 = *v18++;
      v33 = v37;
      v8 = v37;
    }

    v8 += v36;
    if (*(v18 - 1) + 4096 == v8)
    {
      v8 = *v18;
    }

    else
    {
      --v18;
    }
  }

  *a5 = v18;
LABEL_50:
  *(a5 + 8) = v8;
  return __len;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<int,int *,int &,int **,long,1024l>,std::__deque_iterator<int,int *,int &,int **,long,1024l>,0>@<X0>(const void **a1@<X1>, char *a2@<X2>, const void **a3@<X3>, char *a4@<X4>, const void **a5@<X5>, char *a6@<X6>, const void ***a7@<X8>)
{
  v8 = a5;
  if (a1 == a3)
  {
    if (a2 == a4)
    {
      goto LABEL_42;
    }

    v13 = *a5;
    v14 = a4;
    while (1)
    {
      v15 = &a6[-v13] >> 2;
      if ((v14 - a2) >> 2 < v15)
      {
        v15 = (v14 - a2) >> 2;
      }

      v14 -= 4 * v15;
      a6 -= 4 * v15;
      if ((-v15 & 0x3FFFFFFFFFFFFFFFLL) != 0)
      {
        result = memmove(a6, v14, 4 * v15);
      }

      if (v14 == a2)
      {
        break;
      }

      v17 = *--v8;
      v13 = v17;
      a6 = (v17 + 4096);
    }

    goto LABEL_40;
  }

  v19 = *a3;
  if (*a3 != a4)
  {
    v20 = *a5;
    v21 = a4;
    while (1)
    {
      v22 = &a6[-v20] >> 2;
      if ((v21 - v19) >> 2 < v22)
      {
        v22 = (v21 - v19) >> 2;
      }

      v21 -= 4 * v22;
      a6 -= 4 * v22;
      if ((-v22 & 0x3FFFFFFFFFFFFFFFLL) != 0)
      {
        result = memmove(a6, v21, 4 * v22);
      }

      if (v21 == v19)
      {
        break;
      }

      v23 = *--v8;
      v20 = v23;
      a6 = (v23 + 4096);
    }

    if (*v8 + 4096 == a6)
    {
      v24 = v8[1];
      ++v8;
      a6 = v24;
    }
  }

  v25 = a3 - 1;
  if (a3 - 1 != a1)
  {
    v26 = *v8;
    do
    {
      while (1)
      {
        v27 = *v25;
        v28 = *v25 + 4096;
        while (1)
        {
          v29 = (a6 - v26) >> 2;
          if ((v28 - v27) >> 2 < v29)
          {
            v29 = (v28 - v27) >> 2;
          }

          v28 -= 4 * v29;
          a6 -= 4 * v29;
          if ((-v29 & 0x3FFFFFFFFFFFFFFFLL) != 0)
          {
            result = memmove(a6, v28, 4 * v29);
          }

          if (v28 == v27)
          {
            break;
          }

          v30 = *--v8;
          v26 = v30;
          a6 = v30 + 4096;
        }

        v26 = *v8;
        if (*v8 + 4096 == a6)
        {
          break;
        }

        if (--v25 == a1)
        {
          goto LABEL_32;
        }
      }

      v31 = v8[1];
      ++v8;
      v26 = v31;
      a6 = v31;
      --v25;
    }

    while (v25 != a1);
  }

LABEL_32:
  v32 = *v25 + 4096;
  if (v32 != a2)
  {
    v33 = *v8;
    while (1)
    {
      v34 = &a6[-v33] >> 2;
      if ((v32 - a2) >> 2 < v34)
      {
        v34 = (v32 - a2) >> 2;
      }

      v32 -= 4 * v34;
      a6 -= 4 * v34;
      if ((-v34 & 0x3FFFFFFFFFFFFFFFLL) != 0)
      {
        result = memmove(a6, v32, 4 * v34);
      }

      if (v32 == a2)
      {
        break;
      }

      v35 = *--v8;
      v33 = v35;
      a6 = (v35 + 4096);
    }

LABEL_40:
    if (*v8 + 4096 == a6)
    {
      v36 = v8[1];
      ++v8;
      a6 = v36;
    }
  }

LABEL_42:
  *a7 = a3;
  a7[1] = a4;
  a7[2] = v8;
  a7[3] = a6;
  return result;
}

uint64_t AdjustablePriorityQueue<operations_research::sat::SatPresolver::PQElement,std::less<operations_research::sat::SatPresolver::PQElement>>::Remove(uint64_t result, int *a2)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  v4 = ((v3 - v2) >> 3) - 1;
  v5 = *a2;
  if (*a2 == v4)
  {
    *(result + 16) = v3 - 8;
    return result;
  }

  v6 = v5;
  v7 = *(v2 + 8 * v4);
  *(v2 + 8 * v5) = v7;
  v8 = v3 - 8;
  *(result + 16) = v8;
  v9 = *(v7 + 8);
  if (*(*(v2 + 8 * ((v5 - 1) / 2)) + 8) > v9)
  {
    if (v5 >= 1)
    {
      while (1)
      {
        v10 = v5 - 1;
        v11 = (v5 - 1) >> 1;
        v12 = *(v2 + 8 * v11);
        v6 = v5;
        if (*(v12 + 8) <= v9)
        {
          break;
        }

        *(v2 + 8 * v5) = v12;
        *v12 = v5;
        v5 = v10 >> 1;
        if (v10 < 2)
        {
          *(v2 + 8 * v11) = v7;
          *v7 = v11;
          return result;
        }
      }
    }

    goto LABEL_16;
  }

  v13 = (v8 - v2) >> 3;
  v14 = (2 * v5) | 1;
  if (v13 <= v14)
  {
LABEL_16:
    *(v2 + 8 * v6) = v7;
    *v7 = v5;
    return result;
  }

  v15 = 2 * v5;
  v16 = (2 * v5) | 1;
  while (1)
  {
    v17 = v15 + 2;
    if (v13 <= v15 + 2 || (v18 = *(v2 + 8 * v14), v19 = *(v2 + 8 * v17), v20 = *(v19 + 8), *(v18 + 8) <= v20))
    {
      v19 = *(v2 + 8 * v16);
      v20 = *(v19 + 8);
      v17 = v16;
    }

    if (v9 <= v20)
    {
      break;
    }

    *(v2 + 8 * v5) = v19;
    *v19 = v5;
    v15 = 2 * v17;
    v16 = (2 * v17) | 1;
    v14 = v16;
    v5 = v17;
    if (v13 <= v16)
    {
      *(v2 + 8 * v17) = v7;
      *v7 = v17;
      return result;
    }
  }

  *(v2 + 8 * v5) = v7;
  *v7 = v5;
  return result;
}

uint64_t AdjustablePriorityQueue<operations_research::sat::SatPresolver::BvaPqElement,std::less<operations_research::sat::SatPresolver::BvaPqElement>>::Remove(uint64_t result, int *a2)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  v4 = ((v3 - v2) >> 3) - 1;
  v5 = *a2;
  if (*a2 == v4)
  {
    *(result + 16) = v3 - 8;
    return result;
  }

  v6 = v5;
  v7 = *(v2 + 8 * v4);
  *(v2 + 8 * v5) = v7;
  v8 = v3 - 8;
  *(result + 16) = v8;
  v9 = *(v7 + 8);
  if (*(*(v2 + 8 * ((v5 - 1) / 2)) + 8) < v9)
  {
    if (v5 >= 1)
    {
      while (1)
      {
        v10 = v5 - 1;
        v11 = (v5 - 1) >> 1;
        v12 = *(v2 + 8 * v11);
        v6 = v5;
        if (*(v12 + 8) >= v9)
        {
          break;
        }

        *(v2 + 8 * v5) = v12;
        *v12 = v5;
        v5 = v10 >> 1;
        if (v10 < 2)
        {
          *(v2 + 8 * v11) = v7;
          *v7 = v11;
          return result;
        }
      }
    }

    goto LABEL_16;
  }

  v13 = (v8 - v2) >> 3;
  v14 = (2 * v5) | 1;
  if (v13 <= v14)
  {
LABEL_16:
    *(v2 + 8 * v6) = v7;
    *v7 = v5;
    return result;
  }

  v15 = 2 * v5;
  v16 = (2 * v5) | 1;
  while (1)
  {
    v17 = v15 + 2;
    if (v13 <= v15 + 2 || (v18 = *(v2 + 8 * v14), v19 = *(v2 + 8 * v17), v20 = *(v19 + 8), *(v18 + 8) >= v20))
    {
      v19 = *(v2 + 8 * v16);
      v20 = *(v19 + 8);
      v17 = v16;
    }

    if (v9 >= v20)
    {
      break;
    }

    *(v2 + 8 * v5) = v19;
    *v19 = v5;
    v15 = 2 * v17;
    v16 = (2 * v17) | 1;
    v14 = v16;
    v5 = v17;
    if (v13 <= v16)
    {
      *(v2 + 8 * v17) = v7;
      *v7 = v17;
      return result;
    }
  }

  *(v2 + 8 * v5) = v7;
  *v7 = v5;
  return result;
}

void *std::deque<operations_research::sat::SatPresolver::BvaPqElement>::__append(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 32 * (v5 - v4) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  v9 = v6 - v8;
  v10 = a2 > v9;
  v11 = a2 - v9;
  if (v10)
  {
    result = std::deque<operations_research::sat::SatPresolver::BvaPqElement>::__add_back_capacity(result, v11);
    v7 = v3[5];
    v4 = v3[1];
    v5 = v3[2];
    v8 = v3[4] + v7;
  }

  v12 = (v4 + 8 * (v8 >> 8));
  if (v5 != v4)
  {
    v13 = *v12 + 16 * v8;
    v14 = v13;
    if (a2)
    {
      goto LABEL_9;
    }

LABEL_13:
    v16 = v12;
    if (v13 != v14)
    {
      goto LABEL_21;
    }

    return result;
  }

  v13 = 0;
  v14 = 0;
  if (!a2)
  {
    goto LABEL_13;
  }

LABEL_9:
  v15 = a2 + ((v14 - *v12) >> 4);
  if (v15 < 1)
  {
    v17 = 255 - v15;
    v18 = 510 - v15;
    if (v17 >= 0)
    {
      v18 = v17;
    }

    v16 = &v12[-(v18 >> 8)];
    v19 = v17;
    v20 = -v17;
    if (v20 >= 0)
    {
      v21 = -v20;
    }

    else
    {
      v21 = v19;
    }

    v14 = *v16 + 16 * (255 - v21);
    if (v13 != v14)
    {
      while (1)
      {
LABEL_21:
        v22 = v14;
        if (v12 != v16)
        {
          v22 = *v12 + 4096;
        }

        if (v13 == v22)
        {
          if (v12 == v16)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v23 = v22 - v13 - 16;
          v24 = v13;
          if (v23 < 0x10)
          {
            goto LABEL_36;
          }

          v25 = (v23 >> 4) + 1;
          v24 = (v13 + 16 * (v25 & 0x1FFFFFFFFFFFFFFELL));
          v26 = (v13 + 16);
          result = (v25 & 0x1FFFFFFFFFFFFFFELL);
          do
          {
            *(v26 - 2) = -1;
            *v26 = -1;
            *(v26 - 1) = 0;
            v26[1] = 0;
            v26 += 4;
            result = (result - 2);
          }

          while (result);
          if (v25 != (v25 & 0x1FFFFFFFFFFFFFFELL))
          {
LABEL_36:
            do
            {
              *v24 = -1;
              v24[1] = 0;
              v24 += 2;
            }

            while (v24 != v22);
          }

          v7 += (v22 - v13) >> 4;
          if (v12 == v16)
          {
LABEL_33:
            v3[5] = v7;
            return result;
          }
        }

        v27 = v12[1];
        ++v12;
        v13 = v27;
        if (v27 == v14)
        {
          goto LABEL_33;
        }
      }
    }
  }

  else
  {
    v16 = &v12[v15 >> 8];
    v14 = *v16 + 16 * v15;
    if (v13 != v14)
    {
      goto LABEL_21;
    }
  }

  return result;
}

void *std::deque<operations_research::sat::SatPresolver::BvaPqElement>::__add_back_capacity(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if (v4)
  {
    v5 = (v4 >> 8) + 1;
  }

  else
  {
    v5 = v4 >> 8;
  }

  v6 = result[4];
  if (v5 >= v6 >> 8)
  {
    v7 = v6 >> 8;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 8)
  {
    for (result[4] = v6 - (v7 << 8); v7; --v7)
    {
      v12 = v2[1];
      v14 = *v12;
      v2[1] = v12 + 1;
      result = std::__split_buffer<std::vector<operations_research::sat::Literal> *,std::allocator<std::vector<operations_research::sat::Literal> *>>::emplace_back<std::vector<operations_research::sat::Literal> *&>(v2, &v14);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    v10 = v3 >> 3;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      if (v9 >> 2 <= v8 + v10)
      {
        v11 = v8 + v10;
      }

      else
      {
        v11 = v9 >> 2;
      }

      if (v11)
      {
        if (!(v11 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= v7 << 8; v7; --v7)
    {
      v13 = v2[1];
      v14 = *v13;
      v2[1] = v13 + 1;
      result = std::__split_buffer<std::vector<operations_research::sat::Literal> *,std::allocator<std::vector<operations_research::sat::Literal> *>>::emplace_back<std::vector<operations_research::sat::Literal> *&>(v2, &v14);
    }
  }

  return result;
}

void sub_23CCF8BD8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<operations_research::sat::SatPresolver::PQElement>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v14 = &v4[2 * a2];
      if (((a2 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_36;
      }

      v15 = ((a2 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v16 = &v4[2 * (v15 & 0x1FFFFFFFFFFFFFFELL)];
      v17 = v4 + 2;
      v18 = v15 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v17 - 2) = -1;
        *v17 = -1;
        *(v17 - 1) = 0;
        v17[1] = 0;
        v17 += 4;
        v18 -= 2;
      }

      while (v18);
      v4 = v16;
      if (v15 != (v15 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_36:
        do
        {
          *v4 = -1;
          v4[1] = 0;
          v4 += 2;
        }

        while (v4 != v14);
      }

      v4 = v14;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = (v4 - *a1) >> 4;
    v6 = v5 + a2;
    if ((v5 + a2) >> 60)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *a1;
    if (v7 >> 3 > v6)
    {
      v6 = v7 >> 3;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v8 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (!(v8 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v19 = 16 * v5;
    if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v19 + 16 * a2;
      v10 = (16 * v5);
      if (((a2 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_37;
      }

      v11 = ((a2 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = (v19 + 16 * (v11 & 0x1FFFFFFFFFFFFFFELL));
      v12 = (v19 + 16);
      v13 = v11 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v12 - 2) = -1;
        *v12 = -1;
        *(v12 - 1) = 0;
        v12[1] = 0;
        v12 += 4;
        v13 -= 2;
      }

      while (v13);
      if (v11 != (v11 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_37:
        do
        {
          *v10 = -1;
          v10[1] = 0;
          v10 += 2;
        }

        while (v10 != v9);
      }
    }

    else
    {
      v9 = 16 * v5;
    }

    v20 = *a1;
    v21 = *(a1 + 8) - *a1;
    v22 = v19 - v21;
    memcpy((v19 - v21), *a1, v21);
    *a1 = v22;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v20)
    {

      operator delete(v20);
    }
  }
}

void *std::deque<operations_research::sat::SatPresolver::BvaPqElement>::__append(void *result, unint64_t a2, _OWORD *a3)
{
  v5 = result;
  v6 = result[1];
  v7 = result[2];
  if (v7 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = 32 * (v7 - v6) - 1;
  }

  v9 = result[5];
  v10 = v9 + result[4];
  v11 = v8 - v10;
  v12 = a2 > v11;
  v13 = a2 - v11;
  if (v12)
  {
    result = std::deque<operations_research::sat::SatPresolver::BvaPqElement>::__add_back_capacity(result, v13);
    v9 = v5[5];
    v6 = v5[1];
    v7 = v5[2];
    v10 = v5[4] + v9;
  }

  v14 = (v6 + 8 * (v10 >> 8));
  if (v7 != v6)
  {
    v15 = *v14 + 16 * v10;
    v16 = v15;
    if (a2)
    {
      goto LABEL_9;
    }

LABEL_12:
    v18 = v14;
    goto LABEL_28;
  }

  v15 = 0;
  v16 = 0;
  if (!a2)
  {
    goto LABEL_12;
  }

LABEL_9:
  v17 = a2 + ((v16 - *v14) >> 4);
  if (v17 < 1)
  {
    v19 = 255 - v17;
    v20 = 510 - v17;
    if (v19 >= 0)
    {
      v20 = v19;
    }

    v18 = &v14[-(v20 >> 8)];
    v21 = v19;
    v22 = -v19;
    if (v22 >= 0)
    {
      v23 = -v22;
    }

    else
    {
      v23 = v21;
    }

    v16 = *v18 + 16 * (255 - v23);
  }

  else
  {
    v18 = &v14[v17 >> 8];
    v16 = *v18 + 16 * v17;
  }

LABEL_28:
  while (v15 != v16)
  {
    v24 = v16;
    if (v14 != v18)
    {
      v24 = *v14 + 4096;
    }

    if (v15 == v24)
    {
      v5[5] = v9;
      if (v14 == v18)
      {
        return result;
      }
    }

    else
    {
      v25 = v15;
      do
      {
        *v25++ = *a3;
      }

      while (v25 != v24);
      v9 = v5[5] + ((v24 - v15) >> 4);
      v5[5] = v9;
      if (v14 == v18)
      {
        return result;
      }
    }

    v26 = v14[1];
    ++v14;
    v15 = v26;
  }

  return result;
}

void StronglyConnectedComponentsFinder<int,operations_research::sat::PropagationGraph,std::vector<std::vector<int>>>::FindStronglyConnectedComponents(std::vector<int> *a1, int a2, double *a3, uint64_t a4)
{
  a1->__end_ = a1->__begin_;
  a1[1].__end_ = a1[1].__begin_;
  __u[0] = 0;
  std::vector<int>::assign(a1 + 2, a2, __u);
  v79 = a1 + 3;
  a1[3].__end_ = a1[3].__begin_;
  begin = a1[2].__begin_;
  v83 = 0;
  v76 = a2;
  if (a2 >= 1)
  {
    v9 = begin;
    v10 = 0;
    LODWORD(v11) = 0;
    v77 = a4;
    v78 = a3;
    v80 = v9;
    while (v9[v10])
    {
LABEL_4:
      v83 = ++v10;
      if (v10 >= v76)
      {
        return;
      }
    }

    std::vector<int>::push_back[abi:ne200100](v79, &v83);
    end = a1[3].__end_;
    while (1)
    {
      v15 = *(end - 1);
      v13 = end - 1;
      v14 = v15;
      v16 = v9[v15];
      if (!v16)
      {
        v23 = a1->__end_;
        value = a1->__end_cap_.__value_;
        if (v23 >= value)
        {
          v25 = a1->__begin_;
          v26 = v23 - a1->__begin_;
          v27 = v26 >> 2;
          v28 = (v26 >> 2) + 1;
          if (v28 >> 62)
          {
            goto LABEL_100;
          }

          v29 = value - v25;
          if (v29 >> 1 > v28)
          {
            v28 = v29 >> 1;
          }

          if (v29 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v30 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v30 = v28;
          }

          if (v30)
          {
            if (!(v30 >> 62))
            {
              operator new();
            }

LABEL_101:
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *(4 * v27) = v14;
          v24 = 4 * v27 + 4;
          memcpy(0, v25, v26);
          a1->__begin_ = 0;
          a1->__end_ = v24;
          a1->__end_cap_.__value_ = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          *v23 = v14;
          v24 = (v23 + 4);
        }

        v36 = v78;
        a1->__end_ = v24;
        v11 = (v24 - a1->__begin_) >> 2;
        v9[v14] = v11;
        v38 = a1[1].__end_;
        v37 = a1[1].__end_cap_.__value_;
        if (v38 >= v37)
        {
          v40 = a1[1].__begin_;
          v41 = v38 - v40;
          v42 = (v38 - v40) >> 2;
          v43 = v42 + 1;
          if ((v42 + 1) >> 62)
          {
LABEL_100:
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          v44 = v37 - v40;
          if (v44 >> 1 > v43)
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

            goto LABEL_101;
          }

          *(4 * v42) = v11;
          v39 = 4 * v42 + 4;
          memcpy(0, v40, v41);
          a1[1].__begin_ = 0;
          a1[1].__end_ = v39;
          a1[1].__end_cap_.__value_ = 0;
          if (v40)
          {
            operator delete(v40);
          }

          v36 = v78;
        }

        else
        {
          *v38 = v11;
          v39 = (v38 + 4);
        }

        a1[1].__end_ = v39;
        v36[1] = *v36;
        operations_research::sat::SatSolver::Backtrack(*(v36 + 3), 0);
        v9 = v80;
        if (operations_research::sat::SatSolver::deterministic_time(*(v36 + 3)) <= v36[4])
        {
          v46 = *(v36 + 3);
          v47 = *(v46 + 216);
          if (((*(*(v47 + 24) + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v14 & 0x3E)) & 3) == 0)
          {
            v63 = *(v47 + 12);
            operations_research::sat::SatSolver::EnqueueDecisionAndBackjumpOnConflict(v46, v14);
            v64 = *(v36 + 3);
            if (v64[74] >= 1)
            {
              v65 = *(v64 + 27);
              if (v63 + 1 < *(v65 + 12))
              {
                v66 = v63 + 1;
                v67 = *(v36 + 1);
                do
                {
                  v68 = *(*(v65 + 48) + 4 * v66);
                  v69 = *(v36 + 2);
                  if (v67 < v69)
                  {
                    *v67 = v68;
                    v67 += 4;
                  }

                  else
                  {
                    v70 = *v36;
                    v71 = &v67[-*v36];
                    v72 = (v71 >> 2) + 1;
                    if (v72 >> 62)
                    {
                      goto LABEL_100;
                    }

                    v73 = v69 - v70;
                    if (v73 >> 1 > v72)
                    {
                      v72 = v73 >> 1;
                    }

                    if (v73 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v74 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v74 = v72;
                    }

                    if (v74)
                    {
                      if (!(v74 >> 62))
                      {
                        operator new();
                      }

                      goto LABEL_101;
                    }

                    v75 = (4 * (v71 >> 2));
                    *v75 = v68;
                    v67 = (v75 + 1);
                    memcpy(0, v70, v71);
                    *v36 = 0.0;
                    *(v36 + 1) = v67;
                    v36[2] = 0.0;
                    if (v70)
                    {
                      operator delete(v70);
                    }

                    v9 = v80;
                  }

                  *(v36 + 1) = v67;
                  ++v66;
                  v65 = *(*(v36 + 3) + 216);
                }

                while (v66 < *(v65 + 12));
              }
            }
          }
        }

        v48 = *v36;
        v49 = *(v36 + 1);
        if (*v36 == v49)
        {
          a4 = v77;
        }

        else
        {
          v50 = 0x7FFFFFFF;
          do
          {
            v51 = *v48;
            v52 = v9[v51];
            if (v52)
            {
              if (v52 < v50)
              {
                v50 = v9[v51];
              }
            }

            else
            {
              v54 = a1[3].__end_;
              v53 = a1[3].__end_cap_.__value_;
              if (v54 >= v53)
              {
                v55 = v79->__begin_;
                v56 = v54 - v79->__begin_;
                v57 = v56 >> 2;
                v58 = (v56 >> 2) + 1;
                if (v58 >> 62)
                {
                  goto LABEL_100;
                }

                v59 = v53 - v55;
                if (v59 >> 1 > v58)
                {
                  v58 = v59 >> 1;
                }

                if (v59 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v60 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v60 = v58;
                }

                if (v60)
                {
                  if (!(v60 >> 62))
                  {
                    operator new();
                  }

                  goto LABEL_101;
                }

                *(4 * v57) = v51;
                v61 = 4 * v57 + 4;
                memcpy(0, v55, v56);
                a1[3].__begin_ = 0;
                a1[3].__end_ = v61;
                a1[3].__end_cap_.__value_ = 0;
                if (v55)
                {
                  operator delete(v55);
                }

                v9 = v80;
                a1[3].__end_ = v61;
              }

              else
              {
                *v54 = v51;
                a1[3].__end_ = v54 + 1;
              }
            }

            ++v48;
          }

          while (v48 != v49);
          a4 = v77;
          if (v50 < v11)
          {
            v62 = a1[1].__end_;
            do
            {
              LODWORD(v11) = *(v62 - 2);
              --v62;
            }

            while (v11 > v50);
            a1[1].__end_ = v62;
          }
        }

        goto LABEL_8;
      }

      a1[3].__end_ = v13;
      if (v11 == v16)
      {
        break;
      }

LABEL_8:
      end = a1[3].__end_;
      if (a1[3].__begin_ == end)
      {
        v10 = v83;
        goto LABEL_4;
      }
    }

    v17 = v11 - 1;
    v18 = a1->__end_;
    v19 = &a1->__begin_[v11 - 1];
    v81 = v18;
    *__u = v19;
    v20 = *(a4 + 8);
    if (v20 >= *(a4 + 16))
    {
      v21 = std::vector<std::vector<int>>::__emplace_back_slow_path<int *,int *>(a4, __u, &v81);
    }

    else
    {
      *v20 = 0;
      v20[1] = 0;
      v20[2] = 0;
      if (v18 != v19)
      {
        if (((v18 - v19) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v21 = v20 + 3;
      *(a4 + 8) = v20 + 3;
    }

    *(a4 + 8) = v21;
    v31 = a1->__begin_;
    v32 = a1->__end_ - a1->__begin_;
    if (v17 >= v32)
    {
      if (v17 <= v32)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v33 = v17;
      do
      {
        v9[v31[v33]] = 0x7FFFFFFF;
        v33 = v11;
        LODWORD(v11) = v11 + 1;
      }

      while (v32 > v33);
      if (v17 <= v32)
      {
        if (v17 < v32)
        {
          a1->__end_ = &v31[v17];
        }

        goto LABEL_36;
      }
    }

    std::vector<int>::__append(a1, v17 - v32);
LABEL_36:
    v35 = a1[1].__begin_;
    v34 = a1[1].__end_;
    a1[1].__end_ = v34 - 1;
    if (v35 == v34 - 1)
    {
      LODWORD(v11) = 0;
    }

    else
    {
      LODWORD(v11) = *(v34 - 2);
    }

    goto LABEL_8;
  }
}

void sub_23CCF9618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  *(a10 + 8) = v10;
  _Unwind_Resume(exception_object);
}

void operations_research::sat::SharedStatTables::SharedStatTables(operations_research::sat::SharedStatTables *this)
{
  v3 = *MEMORY[0x277D85DE8];
  *(this + 2) = 0u;
  *(this + 5) = 0u;
  *(this + 8) = 0u;
  *(this + 11) = 0u;
  *(this + 30) = 0;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 12) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  absl::lts_20240722::Mutex::Lock(this);
  v2 = 11;
  strcpy(v1, "Task timing");
  operator new();
}

void sub_23CCFAE50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}