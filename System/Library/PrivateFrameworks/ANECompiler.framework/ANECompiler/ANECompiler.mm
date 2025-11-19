unint64_t LayerCycleAndFootprintEstimator::GetMaxCycleWithoutStall(LayerCycleAndFootprintEstimator *this, char a2, char a3)
{
  v6 = *this;
  v7 = *(this + 1);
  if (*this == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      v9 = *v6++;
      MaxCycle = L2CycleEstimator::GetMaxCycle(v9, a2);
      if (v8 <= MaxCycle)
      {
        v8 = MaxCycle;
      }
    }

    while (v6 != v7);
  }

  v11 = ComputeCycleEstimator::GetMaxCycle(*(this + 3), a2 & a3);
  if (v8 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v8;
  }

  result = L2CycleEstimator::GetMaxCycle(*(this + 4), a3);
  if (v12 > result)
  {
    return v12;
  }

  return result;
}

unint64_t LayerCycleAndFootprintEstimator::GetMaxCycle(LayerCycleAndFootprintEstimator *this, char a2, char a3)
{
  MaxCycleWithoutStall = LayerCycleAndFootprintEstimator::GetMaxCycleWithoutStall(this, a2, a3);
  if ((a2 & 1) == 0)
  {
    MaxCycleWithoutStall += LayerCycleAndFootprintEstimator::GetOverheadCycles(this);
  }

  return MaxCycleWithoutStall;
}

uint64_t LayerCycleAndFootprintEstimator::GetOverheadCycles(uint64_t **this)
{
  LayerCycleAndFootprintEstimator::GetReadBehaviors(this, &v6);
  if (v6 == v7)
  {
    v2 = 0;
    if (!v6)
    {
      return this[4][16] + v2;
    }

    goto LABEL_5;
  }

  v2 = 0;
  v3 = v6;
  do
  {
    v4 = *v3++;
    v2 += *(v4 + 120) + 1;
  }

  while (v3 != v7);
  if (v6)
  {
LABEL_5:
    v7 = v6;
    operator delete(v6);
  }

  return this[4][16] + v2;
}

void LayerCycleAndFootprintEstimator::GetReadBehaviors(uint64_t **this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v2 = *this;
  v3 = this[1];
  if (*this != v3)
  {
    v5 = 0;
    do
    {
      v6 = *v2;
      v7 = *(a2 + 16);
      if (v5 >= v7)
      {
        v8 = (v5 - *a2) >> 3;
        if ((v8 + 1) >> 61)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v9 = v7 - *a2;
        v10 = v9 >> 2;
        if (v9 >> 2 <= (v8 + 1))
        {
          v10 = v8 + 1;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        if (v11)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<L2CycleEstimator *>>(a2, v11);
        }

        v12 = (8 * v8);
        *v12 = v6;
        v5 = (8 * v8 + 8);
        v13 = *(a2 + 8) - *a2;
        v14 = v12 - v13;
        memcpy(v12 - v13, *a2, v13);
        v15 = *a2;
        *a2 = v14;
        *(a2 + 8) = v5;
        *(a2 + 16) = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v5++ = v6;
      }

      *(a2 + 8) = v5;
      ++v2;
    }

    while (v2 != v3);
  }
}

void sub_23C921E08(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278BC2E18, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<L2CycleEstimator *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t ORToolsCpL2AccessVariable::ORToolsCpL2AccessVariable(uint64_t a1, operations_research::sat::CpModelBuilder *a2, uint64_t a3, _OWORD *a4)
{
  v110 = operations_research::sat::CpModelBuilder::NewConstant(a2, *a3);
  v111 = v8;
  if (*(a3 + 159) >= 0)
  {
    v9 = *(a3 + 159);
  }

  else
  {
    v9 = *(a3 + 144);
  }

  std::string::basic_string[abi:ne200100](&__p, v9 + 20);
  if ((v109 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v9)
  {
    if (*(a3 + 159) >= 0)
    {
      v11 = (a3 + 136);
    }

    else
    {
      v11 = *(a3 + 136);
    }

    memmove(p_p, v11, v9);
  }

  strcpy(p_p + v9, "_resident_time_const");
  if ((v109 & 0x80u) == 0)
  {
    v12 = &__p;
  }

  else
  {
    v12 = __p;
  }

  if ((v109 & 0x80u) == 0)
  {
    v13 = v109;
  }

  else
  {
    v13 = v108;
  }

  *a1 = operations_research::sat::IntVar::WithName(&v110, v12, v13);
  *(a1 + 8) = v14;
  if (v109 < 0)
  {
    operator delete(__p);
  }

  v110 = operations_research::sat::CpModelBuilder::NewConstant(a2, *(a3 + 16));
  v111 = v15;
  if (*(a3 + 159) >= 0)
  {
    v16 = *(a3 + 159);
  }

  else
  {
    v16 = *(a3 + 144);
  }

  std::string::basic_string[abi:ne200100](&__p, v16 + 23);
  if ((v109 & 0x80u) == 0)
  {
    v17 = &__p;
  }

  else
  {
    v17 = __p;
  }

  if (v16)
  {
    if (*(a3 + 159) >= 0)
    {
      v18 = (a3 + 136);
    }

    else
    {
      v18 = *(a3 + 136);
    }

    memmove(v17, v18, v16);
  }

  strcpy(v17 + v16, "_nonresident_time_const");
  if ((v109 & 0x80u) == 0)
  {
    v19 = &__p;
  }

  else
  {
    v19 = __p;
  }

  if ((v109 & 0x80u) == 0)
  {
    v20 = v109;
  }

  else
  {
    v20 = v108;
  }

  *(a1 + 16) = operations_research::sat::IntVar::WithName(&v110, v19, v20);
  *(a1 + 24) = v21;
  if (v109 < 0)
  {
    operator delete(__p);
  }

  v110 = operations_research::sat::CpModelBuilder::NewConstant(a2, *(a3 + 32));
  v111 = v22;
  if (*(a3 + 159) >= 0)
  {
    v23 = *(a3 + 159);
  }

  else
  {
    v23 = *(a3 + 144);
  }

  std::string::basic_string[abi:ne200100](&__p, v23 + 41);
  if ((v109 & 0x80u) == 0)
  {
    v24 = &__p;
  }

  else
  {
    v24 = __p;
  }

  if (v23)
  {
    if (*(a3 + 159) >= 0)
    {
      v25 = (a3 + 136);
    }

    else
    {
      v25 = *(a3 + 136);
    }

    memmove(v24, v25, v23);
  }

  strcpy(v24 + v23, "_nonresident_time_if_chain_producer_const");
  if ((v109 & 0x80u) == 0)
  {
    v26 = &__p;
  }

  else
  {
    v26 = __p;
  }

  if ((v109 & 0x80u) == 0)
  {
    v27 = v109;
  }

  else
  {
    v27 = v108;
  }

  *(a1 + 32) = operations_research::sat::IntVar::WithName(&v110, v26, v27);
  *(a1 + 40) = v28;
  if (v109 < 0)
  {
    operator delete(__p);
  }

  v110 = operations_research::sat::CpModelBuilder::NewConstant(a2, *(a3 + 48));
  v111 = v29;
  if (*(a3 + 159) >= 0)
  {
    v30 = *(a3 + 159);
  }

  else
  {
    v30 = *(a3 + 144);
  }

  std::string::basic_string[abi:ne200100](&__p, v30 + 41);
  if ((v109 & 0x80u) == 0)
  {
    v31 = &__p;
  }

  else
  {
    v31 = __p;
  }

  if (v30)
  {
    if (*(a3 + 159) >= 0)
    {
      v32 = (a3 + 136);
    }

    else
    {
      v32 = *(a3 + 136);
    }

    memmove(v31, v32, v30);
  }

  strcpy(v31 + v30, "_nonresident_time_if_chain_consumer_const");
  if ((v109 & 0x80u) == 0)
  {
    v33 = &__p;
  }

  else
  {
    v33 = __p;
  }

  if ((v109 & 0x80u) == 0)
  {
    v34 = v109;
  }

  else
  {
    v34 = v108;
  }

  *(a1 + 48) = operations_research::sat::IntVar::WithName(&v110, v33, v34);
  *(a1 + 56) = v35;
  if (v109 < 0)
  {
    operator delete(__p);
  }

  v110 = operations_research::sat::CpModelBuilder::NewConstant(a2, *(a3 + 64));
  v111 = v36;
  if (*(a3 + 159) >= 0)
  {
    v37 = *(a3 + 159);
  }

  else
  {
    v37 = *(a3 + 144);
  }

  std::string::basic_string[abi:ne200100](&__p, v37 + 42);
  if ((v109 & 0x80u) == 0)
  {
    v38 = &__p;
  }

  else
  {
    v38 = __p;
  }

  if (v37)
  {
    if (*(a3 + 159) >= 0)
    {
      v39 = (a3 + 136);
    }

    else
    {
      v39 = *(a3 + 136);
    }

    memmove(v38, v39, v37);
  }

  strcpy(v38 + v37, "_nonresident_time_if_l2_dep_producer_const");
  if ((v109 & 0x80u) == 0)
  {
    v40 = &__p;
  }

  else
  {
    v40 = __p;
  }

  if ((v109 & 0x80u) == 0)
  {
    v41 = v109;
  }

  else
  {
    v41 = v108;
  }

  *(a1 + 64) = operations_research::sat::IntVar::WithName(&v110, v40, v41);
  *(a1 + 72) = v42;
  if (v109 < 0)
  {
    operator delete(__p);
  }

  v110 = operations_research::sat::CpModelBuilder::NewConstant(a2, *(a3 + 80));
  v111 = v43;
  if (*(a3 + 159) >= 0)
  {
    v44 = *(a3 + 159);
  }

  else
  {
    v44 = *(a3 + 144);
  }

  std::string::basic_string[abi:ne200100](&__p, v44 + 42);
  if ((v109 & 0x80u) == 0)
  {
    v45 = &__p;
  }

  else
  {
    v45 = __p;
  }

  if (v44)
  {
    if (*(a3 + 159) >= 0)
    {
      v46 = (a3 + 136);
    }

    else
    {
      v46 = *(a3 + 136);
    }

    memmove(v45, v46, v44);
  }

  strcpy(v45 + v44, "_nonresident_time_if_l2_dep_consumer_const");
  if ((v109 & 0x80u) == 0)
  {
    v47 = &__p;
  }

  else
  {
    v47 = __p;
  }

  if ((v109 & 0x80u) == 0)
  {
    v48 = v109;
  }

  else
  {
    v48 = v108;
  }

  *(a1 + 80) = operations_research::sat::IntVar::WithName(&v110, v47, v48);
  *(a1 + 88) = v49;
  if (v109 < 0)
  {
    operator delete(__p);
  }

  v110 = operations_research::sat::CpModelBuilder::NewConstant(a2, *(a3 + 96));
  v111 = v50;
  if (*(a3 + 159) >= 0)
  {
    v51 = *(a3 + 159);
  }

  else
  {
    v51 = *(a3 + 144);
  }

  std::string::basic_string[abi:ne200100](&__p, v51 + 17);
  if ((v109 & 0x80u) == 0)
  {
    v52 = &__p;
  }

  else
  {
    v52 = __p;
  }

  if (v51)
  {
    if (*(a3 + 159) >= 0)
    {
      v53 = (a3 + 136);
    }

    else
    {
      v53 = *(a3 + 136);
    }

    memmove(v52, v53, v51);
  }

  strcpy(v52 + v51, "_chain_time_const");
  if ((v109 & 0x80u) == 0)
  {
    v54 = &__p;
  }

  else
  {
    v54 = __p;
  }

  if ((v109 & 0x80u) == 0)
  {
    v55 = v109;
  }

  else
  {
    v55 = v108;
  }

  *(a1 + 96) = operations_research::sat::IntVar::WithName(&v110, v54, v55);
  *(a1 + 104) = v56;
  if (v109 < 0)
  {
    operator delete(__p);
  }

  v110 = operations_research::sat::CpModelBuilder::NewConstant(a2, *(a3 + 8));
  v111 = v57;
  if (*(a3 + 159) >= 0)
  {
    v58 = *(a3 + 159);
  }

  else
  {
    v58 = *(a3 + 144);
  }

  std::string::basic_string[abi:ne200100](&__p, v58 + 20);
  if ((v109 & 0x80u) == 0)
  {
    v59 = &__p;
  }

  else
  {
    v59 = __p;
  }

  if (v58)
  {
    if (*(a3 + 159) >= 0)
    {
      v60 = (a3 + 136);
    }

    else
    {
      v60 = *(a3 + 136);
    }

    memmove(v59, v60, v58);
  }

  strcpy(v59 + v58, "_resident_cost_const");
  if ((v109 & 0x80u) == 0)
  {
    v61 = &__p;
  }

  else
  {
    v61 = __p;
  }

  if ((v109 & 0x80u) == 0)
  {
    v62 = v109;
  }

  else
  {
    v62 = v108;
  }

  *(a1 + 112) = operations_research::sat::IntVar::WithName(&v110, v61, v62);
  *(a1 + 120) = v63;
  if (v109 < 0)
  {
    operator delete(__p);
  }

  v110 = operations_research::sat::CpModelBuilder::NewConstant(a2, *(a3 + 24));
  v111 = v64;
  if (*(a3 + 159) >= 0)
  {
    v65 = *(a3 + 159);
  }

  else
  {
    v65 = *(a3 + 144);
  }

  std::string::basic_string[abi:ne200100](&__p, v65 + 23);
  if ((v109 & 0x80u) == 0)
  {
    v66 = &__p;
  }

  else
  {
    v66 = __p;
  }

  if (v65)
  {
    if (*(a3 + 159) >= 0)
    {
      v67 = (a3 + 136);
    }

    else
    {
      v67 = *(a3 + 136);
    }

    memmove(v66, v67, v65);
  }

  strcpy(v66 + v65, "_nonresident_cost_const");
  if ((v109 & 0x80u) == 0)
  {
    v68 = &__p;
  }

  else
  {
    v68 = __p;
  }

  if ((v109 & 0x80u) == 0)
  {
    v69 = v109;
  }

  else
  {
    v69 = v108;
  }

  *(a1 + 128) = operations_research::sat::IntVar::WithName(&v110, v68, v69);
  *(a1 + 136) = v70;
  if (v109 < 0)
  {
    operator delete(__p);
  }

  v110 = operations_research::sat::CpModelBuilder::NewConstant(a2, *(a3 + 40));
  v111 = v71;
  if (*(a3 + 159) >= 0)
  {
    v72 = *(a3 + 159);
  }

  else
  {
    v72 = *(a3 + 144);
  }

  std::string::basic_string[abi:ne200100](&__p, v72 + 41);
  if ((v109 & 0x80u) == 0)
  {
    v73 = &__p;
  }

  else
  {
    v73 = __p;
  }

  if (v72)
  {
    if (*(a3 + 159) >= 0)
    {
      v74 = (a3 + 136);
    }

    else
    {
      v74 = *(a3 + 136);
    }

    memmove(v73, v74, v72);
  }

  strcpy(v73 + v72, "_nonresident_cost_if_chain_producer_const");
  if ((v109 & 0x80u) == 0)
  {
    v75 = &__p;
  }

  else
  {
    v75 = __p;
  }

  if ((v109 & 0x80u) == 0)
  {
    v76 = v109;
  }

  else
  {
    v76 = v108;
  }

  *(a1 + 144) = operations_research::sat::IntVar::WithName(&v110, v75, v76);
  *(a1 + 152) = v77;
  if (v109 < 0)
  {
    operator delete(__p);
  }

  v110 = operations_research::sat::CpModelBuilder::NewConstant(a2, *(a3 + 56));
  v111 = v78;
  if (*(a3 + 159) >= 0)
  {
    v79 = *(a3 + 159);
  }

  else
  {
    v79 = *(a3 + 144);
  }

  std::string::basic_string[abi:ne200100](&__p, v79 + 41);
  if ((v109 & 0x80u) == 0)
  {
    v80 = &__p;
  }

  else
  {
    v80 = __p;
  }

  if (v79)
  {
    if (*(a3 + 159) >= 0)
    {
      v81 = (a3 + 136);
    }

    else
    {
      v81 = *(a3 + 136);
    }

    memmove(v80, v81, v79);
  }

  strcpy(v80 + v79, "_nonresident_cost_if_chain_consumer_const");
  if ((v109 & 0x80u) == 0)
  {
    v82 = &__p;
  }

  else
  {
    v82 = __p;
  }

  if ((v109 & 0x80u) == 0)
  {
    v83 = v109;
  }

  else
  {
    v83 = v108;
  }

  *(a1 + 160) = operations_research::sat::IntVar::WithName(&v110, v82, v83);
  *(a1 + 168) = v84;
  if (v109 < 0)
  {
    operator delete(__p);
  }

  v110 = operations_research::sat::CpModelBuilder::NewConstant(a2, *(a3 + 72));
  v111 = v85;
  if (*(a3 + 159) >= 0)
  {
    v86 = *(a3 + 159);
  }

  else
  {
    v86 = *(a3 + 144);
  }

  std::string::basic_string[abi:ne200100](&__p, v86 + 42);
  if ((v109 & 0x80u) == 0)
  {
    v87 = &__p;
  }

  else
  {
    v87 = __p;
  }

  if (v86)
  {
    if (*(a3 + 159) >= 0)
    {
      v88 = (a3 + 136);
    }

    else
    {
      v88 = *(a3 + 136);
    }

    memmove(v87, v88, v86);
  }

  strcpy(v87 + v86, "_nonresident_cost_if_l2_dep_producer_const");
  if ((v109 & 0x80u) == 0)
  {
    v89 = &__p;
  }

  else
  {
    v89 = __p;
  }

  if ((v109 & 0x80u) == 0)
  {
    v90 = v109;
  }

  else
  {
    v90 = v108;
  }

  *(a1 + 176) = operations_research::sat::IntVar::WithName(&v110, v89, v90);
  *(a1 + 184) = v91;
  if (v109 < 0)
  {
    operator delete(__p);
  }

  v110 = operations_research::sat::CpModelBuilder::NewConstant(a2, *(a3 + 88));
  v111 = v92;
  if (*(a3 + 159) >= 0)
  {
    v93 = *(a3 + 159);
  }

  else
  {
    v93 = *(a3 + 144);
  }

  std::string::basic_string[abi:ne200100](&__p, v93 + 42);
  if ((v109 & 0x80u) == 0)
  {
    v94 = &__p;
  }

  else
  {
    v94 = __p;
  }

  if (v93)
  {
    if (*(a3 + 159) >= 0)
    {
      v95 = (a3 + 136);
    }

    else
    {
      v95 = *(a3 + 136);
    }

    memmove(v94, v95, v93);
  }

  strcpy(v94 + v93, "_nonresident_cost_if_l2_dep_consumer_const");
  if ((v109 & 0x80u) == 0)
  {
    v96 = &__p;
  }

  else
  {
    v96 = __p;
  }

  if ((v109 & 0x80u) == 0)
  {
    v97 = v109;
  }

  else
  {
    v97 = v108;
  }

  *(a1 + 192) = operations_research::sat::IntVar::WithName(&v110, v96, v97);
  *(a1 + 200) = v98;
  if (v109 < 0)
  {
    operator delete(__p);
  }

  v110 = operations_research::sat::CpModelBuilder::NewConstant(a2, *(a3 + 104));
  v111 = v99;
  if (*(a3 + 159) >= 0)
  {
    v100 = *(a3 + 159);
  }

  else
  {
    v100 = *(a3 + 144);
  }

  std::string::basic_string[abi:ne200100](&__p, v100 + 17);
  if ((v109 & 0x80u) == 0)
  {
    v101 = &__p;
  }

  else
  {
    v101 = __p;
  }

  if (v100)
  {
    if (*(a3 + 159) >= 0)
    {
      v102 = (a3 + 136);
    }

    else
    {
      v102 = *(a3 + 136);
    }

    memmove(v101, v102, v100);
  }

  strcpy(v101 + v100, "_chain_cost_const");
  if ((v109 & 0x80u) == 0)
  {
    v103 = &__p;
  }

  else
  {
    v103 = __p;
  }

  if ((v109 & 0x80u) == 0)
  {
    v104 = v109;
  }

  else
  {
    v104 = v108;
  }

  *(a1 + 208) = operations_research::sat::IntVar::WithName(&v110, v103, v104);
  *(a1 + 216) = v105;
  if (v109 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 224) = *a4;
  *(a1 + 240) = a4[1];
  *(a1 + 256) = a4[2];
  return a1;
}

void sub_23C922A70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

void ORToolsL2DepScheduleVariable::ORToolsL2DepScheduleVariable(uint64_t a1, operations_research::sat::CpModelBuilder *a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6, int a7, uint64_t a8, uint64_t **a9, uint64_t a10, uint64_t a11, char a12, operations_research::Domain *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v84 = operations_research::sat::CpModelBuilder::NewConstant(a2, 0);
  v85 = v22;
  if (*(a3 + 271) >= 0)
  {
    v23 = *(a3 + 271);
  }

  else
  {
    v23 = *(a3 + 256);
  }

  std::string::basic_string[abi:ne200100](&__p, v23 + 13);
  if ((v83 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v23)
  {
    if (*(a3 + 271) >= 0)
    {
      v25 = (a3 + 248);
    }

    else
    {
      v25 = *(a3 + 248);
    }

    memmove(p_p, v25, v23);
  }

  strcpy(p_p + v23, ":l2_dep_begin");
  if ((v83 & 0x80u) == 0)
  {
    v26 = &__p;
  }

  else
  {
    v26 = __p;
  }

  if ((v83 & 0x80u) == 0)
  {
    v27 = v83;
  }

  else
  {
    v27 = v82;
  }

  *a1 = operations_research::sat::IntVar::WithName(&v84, v26, v27);
  *(a1 + 8) = v28;
  if (v83 < 0)
  {
    operator delete(__p);
  }

  v84 = operations_research::sat::CpModelBuilder::NewIntVar(a2, a13);
  v85 = v29;
  if (*(a3 + 271) >= 0)
  {
    v30 = *(a3 + 271);
  }

  else
  {
    v30 = *(a3 + 256);
  }

  std::string::basic_string[abi:ne200100](&__p, v30 + 12);
  if ((v83 & 0x80u) == 0)
  {
    v31 = &__p;
  }

  else
  {
    v31 = __p;
  }

  if (v30)
  {
    if (*(a3 + 271) >= 0)
    {
      v32 = (a3 + 248);
    }

    else
    {
      v32 = *(a3 + 248);
    }

    memmove(v31, v32, v30);
  }

  strcpy(v31 + v30, ":l2_dep_time");
  if ((v83 & 0x80u) == 0)
  {
    v33 = &__p;
  }

  else
  {
    v33 = __p;
  }

  if ((v83 & 0x80u) == 0)
  {
    v34 = v83;
  }

  else
  {
    v34 = v82;
  }

  *(a1 + 16) = operations_research::sat::IntVar::WithName(&v84, v33, v34);
  *(a1 + 24) = v35;
  if (v83 < 0)
  {
    operator delete(__p);
  }

  v84 = operations_research::sat::CpModelBuilder::NewIntVar(a2, a13);
  v85 = v36;
  if (*(a3 + 271) >= 0)
  {
    v37 = *(a3 + 271);
  }

  else
  {
    v37 = *(a3 + 256);
  }

  std::string::basic_string[abi:ne200100](&__p, v37 + 11);
  if ((v83 & 0x80u) == 0)
  {
    v38 = &__p;
  }

  else
  {
    v38 = __p;
  }

  if (v37)
  {
    if (*(a3 + 271) >= 0)
    {
      v39 = (a3 + 248);
    }

    else
    {
      v39 = *(a3 + 248);
    }

    memmove(v38, v39, v37);
  }

  strcpy(v38 + v37, ":l2_dep_end");
  if ((v83 & 0x80u) == 0)
  {
    v40 = &__p;
  }

  else
  {
    v40 = __p;
  }

  if ((v83 & 0x80u) == 0)
  {
    v41 = v83;
  }

  else
  {
    v41 = v82;
  }

  *(a1 + 32) = operations_research::sat::IntVar::WithName(&v84, v40, v41);
  *(a1 + 40) = v42;
  if (v83 < 0)
  {
    operator delete(__p);
  }

  if (*(a3 + 271) < 0)
  {
    std::string::__init_copy_ctor_external(&v80, *(a3 + 248), *(a3 + 256));
  }

  else
  {
    v80 = *(a3 + 248);
  }

  LayerCycleAndFootprintEstimator::GetReadBehaviors(a4, &__p);
  ORToolsL2DepScheduleVariable::CreateReadEndVariables(a2, &v80.__r_.__value_.__l.__data_, (v82 - __p) >> 3, a13, (a1 + 48));
  if (__p)
  {
    v82 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
  }

  v84 = operations_research::sat::CpModelBuilder::NewIntVar(a2, a13);
  v85 = v43;
  if (*(a3 + 271) >= 0)
  {
    v44 = *(a3 + 271);
  }

  else
  {
    v44 = *(a3 + 256);
  }

  v45 = &__p;
  std::string::basic_string[abi:ne200100](&__p, v44 + 21);
  if ((v83 & 0x80u) != 0)
  {
    v45 = __p;
  }

  if (v44)
  {
    if (*(a3 + 271) >= 0)
    {
      v46 = (a3 + 248);
    }

    else
    {
      v46 = *(a3 + 248);
    }

    memmove(v45, v46, v44);
  }

  strcpy(v45 + v44, ":producer_compute_end");
  if ((v83 & 0x80u) == 0)
  {
    v47 = &__p;
  }

  else
  {
    v47 = __p;
  }

  if ((v83 & 0x80u) == 0)
  {
    v48 = v83;
  }

  else
  {
    v48 = v82;
  }

  *(a1 + 72) = operations_research::sat::IntVar::WithName(&v84, v47, v48);
  *(a1 + 80) = v49;
  if (v83 < 0)
  {
    operator delete(__p);
  }

  v84 = operations_research::sat::CpModelBuilder::NewIntVar(a2, a13);
  v85 = v50;
  if (*(a3 + 271) >= 0)
  {
    v51 = *(a3 + 271);
  }

  else
  {
    v51 = *(a3 + 256);
  }

  v52 = &__p;
  std::string::basic_string[abi:ne200100](&__p, v51 + 19);
  if ((v83 & 0x80u) != 0)
  {
    v52 = __p;
  }

  if (v51)
  {
    if (*(a3 + 271) >= 0)
    {
      v53 = (a3 + 248);
    }

    else
    {
      v53 = *(a3 + 248);
    }

    memmove(v52, v53, v51);
  }

  strcpy(v52 + v51, ":prodcuer_write_end");
  if ((v83 & 0x80u) == 0)
  {
    v54 = &__p;
  }

  else
  {
    v54 = __p;
  }

  if ((v83 & 0x80u) == 0)
  {
    v55 = v83;
  }

  else
  {
    v55 = v82;
  }

  *(a1 + 88) = operations_research::sat::IntVar::WithName(&v84, v54, v55);
  *(a1 + 96) = v56;
  if (v83 < 0)
  {
    operator delete(__p);
  }

  if (*(a8 + 271) < 0)
  {
    std::string::__init_copy_ctor_external(&v79, *(a8 + 248), *(a8 + 256));
  }

  else
  {
    v79 = *(a8 + 248);
  }

  LayerCycleAndFootprintEstimator::GetReadBehaviors(a9, &__p);
  ORToolsL2DepScheduleVariable::CreateReadEndVariables(a2, &v79.__r_.__value_.__l.__data_, (v82 - __p) >> 3, a13, (a1 + 104));
  if (__p)
  {
    v82 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  v84 = operations_research::sat::CpModelBuilder::NewIntVar(a2, a13);
  v85 = v57;
  if (*(a8 + 271) >= 0)
  {
    v58 = *(a8 + 271);
  }

  else
  {
    v58 = *(a8 + 256);
  }

  v59 = &__p;
  std::string::basic_string[abi:ne200100](&__p, v58 + 21);
  if ((v83 & 0x80u) != 0)
  {
    v59 = __p;
  }

  if (v58)
  {
    if (*(a8 + 271) >= 0)
    {
      v60 = (a8 + 248);
    }

    else
    {
      v60 = *(a8 + 248);
    }

    memmove(v59, v60, v58);
  }

  strcpy(v59 + v58, ":consumer_compute_end");
  if ((v83 & 0x80u) == 0)
  {
    v61 = &__p;
  }

  else
  {
    v61 = __p;
  }

  if ((v83 & 0x80u) == 0)
  {
    v62 = v83;
  }

  else
  {
    v62 = v82;
  }

  *(a1 + 128) = operations_research::sat::IntVar::WithName(&v84, v61, v62);
  *(a1 + 136) = v63;
  if (v83 < 0)
  {
    operator delete(__p);
  }

  v84 = operations_research::sat::CpModelBuilder::NewIntVar(a2, a13);
  v85 = v64;
  if (*(a8 + 271) >= 0)
  {
    v65 = *(a8 + 271);
  }

  else
  {
    v65 = *(a8 + 256);
  }

  v66 = &__p;
  std::string::basic_string[abi:ne200100](&__p, v65 + 19);
  if ((v83 & 0x80u) != 0)
  {
    v66 = __p;
  }

  if (v65)
  {
    if (*(a8 + 271) >= 0)
    {
      v67 = (a8 + 248);
    }

    else
    {
      v67 = *(a8 + 248);
    }

    memmove(v66, v67, v65);
  }

  strcpy(v66 + v65, ":consumer_write_end");
  if ((v83 & 0x80u) == 0)
  {
    v68 = &__p;
  }

  else
  {
    v68 = __p;
  }

  if ((v83 & 0x80u) == 0)
  {
    v69 = v83;
  }

  else
  {
    v69 = v82;
  }

  *(a1 + 144) = operations_research::sat::IntVar::WithName(&v84, v68, v69);
  *(a1 + 152) = v70;
  if (v83 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 160) = *(a3 + 160);
  v84 = operations_research::sat::CpModelBuilder::NewIntVar(a2, a13);
  v85 = v71;
  if (*(a3 + 271) >= 0)
  {
    v72 = *(a3 + 271);
  }

  else
  {
    v72 = *(a3 + 256);
  }

  v73 = &__p;
  std::string::basic_string[abi:ne200100](&__p, v72 + 28);
  if ((v83 & 0x80u) != 0)
  {
    v73 = __p;
  }

  if (v72)
  {
    if (*(a3 + 271) >= 0)
    {
      v74 = (a3 + 248);
    }

    else
    {
      v74 = *(a3 + 248);
    }

    memmove(v73, v74, v72);
  }

  strcpy(v73 + v72, "pipeline_stall_overhead_time");
  if ((v83 & 0x80u) == 0)
  {
    v75 = &__p;
  }

  else
  {
    v75 = __p;
  }

  if ((v83 & 0x80u) == 0)
  {
    v76 = v83;
  }

  else
  {
    v76 = v82;
  }

  *(a1 + 176) = operations_research::sat::IntVar::WithName(&v84, v75, v76);
  *(a1 + 184) = v77;
  if (v83 < 0)
  {
    operator delete(__p);
  }

  LayerCycleAndFootprintEstimator::GetReadBehaviors(a4, &__p);
  ORToolsL2DepScheduleVariable::CreateInputL2AccessVariables(&__p, a5, (a1 + 192));
  if (__p)
  {
    v82 = __p;
    operator delete(__p);
  }

  v78 = *(a4 + 24);
  operator new();
}

{
  ORToolsL2DepScheduleVariable::ORToolsL2DepScheduleVariable(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

void sub_23C923534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 + 311) < 0)
  {
    operator delete(*(v28 + 288));
  }

  std::unique_ptr<ORToolsCpL2AccessVariable>::~unique_ptr[abi:ne200100]((v28 + 264));
  std::unique_ptr<ORToolsCpComputeConstant>::~unique_ptr[abi:ne200100]((v28 + 256));
  std::vector<std::unique_ptr<ORToolsCpL2AccessVariable>>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::unique_ptr<ORToolsCpL2AccessVariable>::~unique_ptr[abi:ne200100]((v28 + 224));
  std::unique_ptr<ORToolsCpComputeConstant>::~unique_ptr[abi:ne200100]((v28 + 216));
  std::vector<std::unique_ptr<ORToolsCpL2AccessVariable>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v30 = *(v28 + 104);
  if (v30)
  {
    *(v28 + 112) = v30;
    operator delete(v30);
  }

  v31 = *(v28 + 48);
  if (v31)
  {
    *(v28 + 56) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}

void sub_23C923750(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    JUMPOUT(0x23C923744);
  }

  JUMPOUT(0x23C923748);
}

void sub_23C92377C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    JUMPOUT(0x23C923744);
  }

  JUMPOUT(0x23C923748);
}

void ORToolsL2DepScheduleVariable::CreateReadEndVariables(operations_research::sat::CpModelBuilder *a1@<X1>, const void **a2@<X2>, uint64_t a3@<X3>, const operations_research::Domain *a4@<X4>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v27 = operations_research::sat::CpModelBuilder::NewIntVar(a1, a4);
  v28 = v10;
  if (*(a2 + 23) >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = a2[1];
  }

  p_p = &__p;
  std::string::basic_string[abi:ne200100](&__p, v11 + 11);
  if ((v26 & 0x80u) != 0)
  {
    p_p = __p;
  }

  if (v11)
  {
    if (*(a2 + 23) >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    memmove(p_p, v13, v11);
  }

  strcpy(p_p + v11, ":read_end_0");
  if ((v26 & 0x80u) == 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = __p;
  }

  if ((v26 & 0x80u) == 0)
  {
    v15 = v26;
  }

  else
  {
    v15 = v25;
  }

  *&v29 = operations_research::sat::IntVar::WithName(&v27, v14, v15);
  DWORD2(v29) = v16;
  std::vector<operations_research::sat::IntVar>::push_back[abi:ne200100](a5, &v29);
  if (v26 < 0)
  {
    operator delete(__p);
  }

  if (a3 == 2)
  {
    v27 = operations_research::sat::CpModelBuilder::NewIntVar(a1, a4);
    v28 = v17;
    if (*(a2 + 23) >= 0)
    {
      v18 = *(a2 + 23);
    }

    else
    {
      v18 = a2[1];
    }

    v19 = &__p;
    std::string::basic_string[abi:ne200100](&__p, v18 + 11);
    if ((v26 & 0x80u) != 0)
    {
      v19 = __p;
    }

    if (v18)
    {
      if (*(a2 + 23) >= 0)
      {
        v20 = a2;
      }

      else
      {
        v20 = *a2;
      }

      memmove(v19, v20, v18);
    }

    strcpy(v19 + v18, ":read_end_1");
    if ((v26 & 0x80u) == 0)
    {
      v21 = &__p;
    }

    else
    {
      v21 = __p;
    }

    if ((v26 & 0x80u) == 0)
    {
      v22 = v26;
    }

    else
    {
      v22 = v25;
    }

    *&v29 = operations_research::sat::IntVar::WithName(&v27, v21, v22);
    DWORD2(v29) = v23;
    std::vector<operations_research::sat::IntVar>::push_back[abi:ne200100](a5, &v29);
    if (v26 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_23C9239A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void ORToolsL2DepScheduleVariable::CreateInputL2AccessVariables(void *a1@<X2>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a1[1] != *a1)
  {
    v3 = *a2;
    operator new();
  }
}

void sub_23C923B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::unique_ptr<ORToolsCpL2AccessVariable>::~unique_ptr[abi:ne200100](&a9);
  std::vector<std::unique_ptr<ORToolsCpL2AccessVariable>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

ORToolsCpL2AccessVariable **std::unique_ptr<ORToolsCpL2AccessVariable>::~unique_ptr[abi:ne200100](ORToolsCpL2AccessVariable **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(v2);
    MEMORY[0x23EED9460]();
  }

  return a1;
}

ORToolsCpComputeConstant **std::unique_ptr<ORToolsCpComputeConstant>::~unique_ptr[abi:ne200100](ORToolsCpComputeConstant **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    ORToolsCpComputeConstant::~ORToolsCpComputeConstant(v2);
    MEMORY[0x23EED9460]();
  }

  return a1;
}

void ORToolsL2DepScheduleVariable::~ORToolsL2DepScheduleVariable(ORToolsL2DepScheduleVariable *this)
{
  v2 = *(this + 48);
  if (v2)
  {
    *(this + 49) = v2;
    operator delete(v2);
  }

  v3 = *(this + 45);
  if (v3)
  {
    *(this + 46) = v3;
    operator delete(v3);
  }

  if (*(this + 335) < 0)
  {
    operator delete(*(this + 39));
  }

  if (*(this + 311) < 0)
  {
    operator delete(*(this + 36));
  }

  std::unique_ptr<ORToolsCpL2AccessVariable>::~unique_ptr[abi:ne200100](this + 33);
  std::unique_ptr<ORToolsCpComputeConstant>::~unique_ptr[abi:ne200100](this + 32);
  v6 = (this + 232);
  std::vector<std::unique_ptr<ORToolsCpL2AccessVariable>>::__destroy_vector::operator()[abi:ne200100](&v6);
  std::unique_ptr<ORToolsCpL2AccessVariable>::~unique_ptr[abi:ne200100](this + 28);
  std::unique_ptr<ORToolsCpComputeConstant>::~unique_ptr[abi:ne200100](this + 27);
  v6 = (this + 192);
  std::vector<std::unique_ptr<ORToolsCpL2AccessVariable>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v4 = *(this + 13);
  if (v4)
  {
    *(this + 14) = v4;
    operator delete(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    *(this + 7) = v5;
    operator delete(v5);
  }
}

void std::vector<operations_research::sat::IntVar>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<operations_research::sat::BoolVar>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void ORToolsL2DepScheduleVariable::CreateLayerConstraint(uint64_t a1, operations_research::sat::CpModelBuilder *a2, uint64_t *a3, uint64_t **a4, const operations_research::Domain *a5)
{
  v315[1] = *MEMORY[0x277D85DE8];
  v264 = *(a1 + 168);
  v265 = *(a1 + 160);
  v10 = operations_research::sat::BoolVar::BoolVar(&v309, ~v264, v265);
  v11 = v309;
  v12 = v310;
  operations_research::sat::LinearExpr::LinearExpr(v10, *(a1 + 16), *(a1 + 24));
  *&v305 = *(a1 + 32);
  DWORD2(v305) = *(a1 + 40);
  v306 = *a1;
  LODWORD(v307) = *(a1 + 8);
  *&v304.__r_.__value_.__l.__data_ = xmmword_23CE306C0;
  operations_research::sat::LinearExpr::WeightedSum(&v305, 2, 2, &v297);
  v266 = a2;
  v294.__r_.__value_.__r.__words[0] = operations_research::sat::CpModelBuilder::AddEquality(a2, &v309, &v297);
  if (*(a1 + 311) >= 0)
  {
    v13 = *(a1 + 311);
  }

  else
  {
    v13 = *(a1 + 296);
  }

  std::string::basic_string[abi:ne200100](&__p, v13 + 16);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (v13)
  {
    if (*(a1 + 311) >= 0)
    {
      v15 = (a1 + 288);
    }

    else
    {
      v15 = *(a1 + 288);
    }

    memmove(p_p, v15, v13);
  }

  v263 = (a1 + 288);
  strcpy(p_p + v13, ":l2_dep_interval");
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &__p;
  }

  else
  {
    v16 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  operations_research::sat::Constraint::WithName(&v294, v16, size);
  v18 = v266;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v300)
  {
    v301 = v300;
    operator delete(v300);
  }

  if (v297)
  {
    v298 = v297;
    operator delete(v297);
  }

  if (v312)
  {
    v313 = v312;
    operator delete(v312);
  }

  if (v309)
  {
    v310 = v309;
    operator delete(v309);
  }

  operations_research::sat::LinearExpr::LinearExpr(&v309, *a1, *(a1 + 8));
  v19 = operations_research::sat::CpModelBuilder::NewConstant(v266, 0);
  operations_research::sat::LinearExpr::LinearExpr(&v297, v19, v20);
  operations_research::sat::LinearExpr::LinearExpr(&v305, *(a1 + 32), *(a1 + 40));
  operations_research::sat::CpModelBuilder::NewOptionalIntervalVar(v266, &v309, &v297, &v305, v11, v12);
  if (v307)
  {
    v308 = v307;
    operator delete(v307);
  }

  if (v305)
  {
    *(&v305 + 1) = v305;
    operator delete(v305);
  }

  if (v300)
  {
    v301 = v300;
    operator delete(v300);
  }

  if (v297)
  {
    v298 = v297;
    operator delete(v297);
  }

  if (v312)
  {
    v313 = v312;
    operator delete(v312);
  }

  if (v309)
  {
    v310 = v309;
    operator delete(v309);
  }

  if (*(a1 + 200) != *(a1 + 192))
  {
    v21 = 0;
    v22 = 0;
    v12 = &v292;
    v7 = ":l2_dep_producer_resident_read_time_interval";
    v5 = &v294;
    v6 = ":l2_dep_producer_nonresident_read_time_interval";
    do
    {
      operations_research::sat::LinearExpr::LinearExpr(&v309, *a1, *(a1 + 8));
      v23 = *(*(a1 + 192) + 8 * v22);
      operations_research::sat::LinearExpr::LinearExpr(&v297, *v23, v23[1]);
      operations_research::sat::LinearExpr::LinearExpr(&v305, *(*(a1 + 48) + v21), *(*(a1 + 48) + v21 + 8));
      v24 = *(*(a1 + 192) + 8 * v22);
      __p.__r_.__value_.__r.__words[0] = *(v24 + 224);
      LODWORD(__p.__r_.__value_.__r.__words[1]) = *(v24 + 232);
      __p.__r_.__value_.__r.__words[2] = v265;
      v303 = v264;
      memset(&v304, 0, sizeof(v304));
      std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(&v304, &__p, &v304, 2uLL);
      BooleanAnd = ORToolsCpBasedAllocatorUtil::CreateBooleanAnd(v18, &v304);
      v295 = operations_research::sat::CpModelBuilder::NewOptionalIntervalVar(v18, &v309, &v297, &v305, BooleanAnd, v26);
      v296 = v27;
      if (*(a1 + 311) >= 0)
      {
        v28 = *(a1 + 311);
      }

      else
      {
        v28 = *(a1 + 296);
      }

      std::string::basic_string[abi:ne200100](&v293, v28 + 44);
      if ((v293.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &v293;
      }

      else
      {
        v29 = v293.__r_.__value_.__r.__words[0];
      }

      if (v28)
      {
        if (*(a1 + 311) >= 0)
        {
          v30 = v263;
        }

        else
        {
          v30 = *(a1 + 288);
        }

        memmove(v29, v30, v28);
      }

      strcpy(v29 + v28, ":l2_dep_producer_resident_read_time_interval");
      std::to_string(&v292, v22);
      if ((v292.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = &v292;
      }

      else
      {
        v31 = v292.__r_.__value_.__r.__words[0];
      }

      if ((v292.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = HIBYTE(v292.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v32 = v292.__r_.__value_.__l.__size_;
      }

      v33 = std::string::append(&v293, v31, v32);
      v34 = v266;
      v35 = *&v33->__r_.__value_.__l.__data_;
      v294.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
      *&v294.__r_.__value_.__l.__data_ = v35;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v36 = &v294;
      }

      else
      {
        v36 = v294.__r_.__value_.__r.__words[0];
      }

      if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = HIBYTE(v294.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v37 = v294.__r_.__value_.__l.__size_;
      }

      operations_research::sat::IntervalVar::WithName(&v295, v36, v37);
      if (SHIBYTE(v294.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v294.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v292.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v292.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v293.__r_.__value_.__l.__data_);
      }

      if (v304.__r_.__value_.__r.__words[0])
      {
        v304.__r_.__value_.__l.__size_ = v304.__r_.__value_.__r.__words[0];
        operator delete(v304.__r_.__value_.__l.__data_);
      }

      if (v307)
      {
        v308 = v307;
        operator delete(v307);
      }

      if (v305)
      {
        *(&v305 + 1) = v305;
        operator delete(v305);
      }

      if (v300)
      {
        v301 = v300;
        operator delete(v300);
      }

      if (v297)
      {
        v298 = v297;
        operator delete(v297);
      }

      if (v312)
      {
        v313 = v312;
        operator delete(v312);
      }

      if (v309)
      {
        v310 = v309;
        operator delete(v309);
      }

      operations_research::sat::LinearExpr::LinearExpr(&v309, *a1, *(a1 + 8));
      v38 = *(*(a1 + 192) + 8 * v22);
      operations_research::sat::LinearExpr::LinearExpr(&v297, *(v38 + 64), *(v38 + 72));
      operations_research::sat::LinearExpr::LinearExpr(&v305, *(*(a1 + 48) + v21), *(*(a1 + 48) + v21 + 8));
      v39 = *(*(a1 + 192) + 8 * v22);
      __p.__r_.__value_.__r.__words[0] = *(v39 + 240);
      LODWORD(__p.__r_.__value_.__r.__words[1]) = *(v39 + 248);
      __p.__r_.__value_.__r.__words[2] = v265;
      v303 = v264;
      memset(&v304, 0, sizeof(v304));
      std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(&v304, &__p, &v304, 2uLL);
      v40 = ORToolsCpBasedAllocatorUtil::CreateBooleanAnd(v34, &v304);
      v295 = operations_research::sat::CpModelBuilder::NewOptionalIntervalVar(v34, &v309, &v297, &v305, v40, v41);
      v296 = v42;
      if (*(a1 + 311) >= 0)
      {
        v43 = *(a1 + 311);
      }

      else
      {
        v43 = *(a1 + 296);
      }

      std::string::basic_string[abi:ne200100](&v293, v43 + 47);
      if ((v293.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = &v293;
      }

      else
      {
        v44 = v293.__r_.__value_.__r.__words[0];
      }

      if (v43)
      {
        if (*(a1 + 311) >= 0)
        {
          v45 = v263;
        }

        else
        {
          v45 = *(a1 + 288);
        }

        memmove(v44, v45, v43);
      }

      strcpy(v44 + v43, ":l2_dep_producer_nonresident_read_time_interval");
      std::to_string(&v292, v22);
      if ((v292.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v46 = &v292;
      }

      else
      {
        v46 = v292.__r_.__value_.__r.__words[0];
      }

      if ((v292.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = HIBYTE(v292.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v47 = v292.__r_.__value_.__l.__size_;
      }

      v48 = std::string::append(&v293, v46, v47);
      v18 = v266;
      v49 = *&v48->__r_.__value_.__l.__data_;
      v294.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
      *&v294.__r_.__value_.__l.__data_ = v49;
      v48->__r_.__value_.__l.__size_ = 0;
      v48->__r_.__value_.__r.__words[2] = 0;
      v48->__r_.__value_.__r.__words[0] = 0;
      if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v50 = &v294;
      }

      else
      {
        v50 = v294.__r_.__value_.__r.__words[0];
      }

      if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v51 = HIBYTE(v294.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v51 = v294.__r_.__value_.__l.__size_;
      }

      operations_research::sat::IntervalVar::WithName(&v295, v50, v51);
      if (SHIBYTE(v294.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v294.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v292.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v292.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v293.__r_.__value_.__l.__data_);
      }

      if (v304.__r_.__value_.__r.__words[0])
      {
        v304.__r_.__value_.__l.__size_ = v304.__r_.__value_.__r.__words[0];
        operator delete(v304.__r_.__value_.__l.__data_);
      }

      if (v307)
      {
        v308 = v307;
        operator delete(v307);
      }

      if (v305)
      {
        *(&v305 + 1) = v305;
        operator delete(v305);
      }

      if (v300)
      {
        v301 = v300;
        operator delete(v300);
      }

      if (v297)
      {
        v298 = v297;
        operator delete(v297);
      }

      if (v312)
      {
        v313 = v312;
        operator delete(v312);
      }

      if (v309)
      {
        v310 = v309;
        operator delete(v309);
      }

      ++v22;
      v21 += 16;
    }

    while (v22 < (*(a1 + 200) - *(a1 + 192)) >> 3);
  }

  operations_research::sat::LinearExpr::LinearExpr(&v309, *a1, *(a1 + 8));
  operations_research::sat::LinearExpr::LinearExpr(&v297, **(a1 + 216), *(*(a1 + 216) + 8));
  operations_research::sat::LinearExpr::LinearExpr(&v305, *(a1 + 72), *(a1 + 80));
  v304.__r_.__value_.__r.__words[0] = operations_research::sat::CpModelBuilder::NewOptionalIntervalVar(v18, &v309, &v297, &v305, v265, v264);
  LODWORD(v304.__r_.__value_.__r.__words[1]) = v52;
  if (*(a1 + 311) >= 0)
  {
    v53 = *(a1 + 311);
  }

  else
  {
    v53 = *(a1 + 296);
  }

  std::string::basic_string[abi:ne200100](&__p, v53 + 38);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v54 = &__p;
  }

  else
  {
    v54 = __p.__r_.__value_.__r.__words[0];
  }

  if (v53)
  {
    if (*(a1 + 311) >= 0)
    {
      v55 = v263;
    }

    else
    {
      v55 = *(a1 + 288);
    }

    memmove(v54, v55, v53);
  }

  strcpy(v54 + v53, ":l2_dep_producer_compute_time_interval");
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v56 = &__p;
  }

  else
  {
    v56 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v57 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v57 = __p.__r_.__value_.__l.__size_;
  }

  operations_research::sat::IntervalVar::WithName(&v304, v56, v57);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v307)
  {
    v308 = v307;
    operator delete(v307);
  }

  if (v305)
  {
    *(&v305 + 1) = v305;
    operator delete(v305);
  }

  if (v300)
  {
    v301 = v300;
    operator delete(v300);
  }

  if (v297)
  {
    v298 = v297;
    operator delete(v297);
  }

  if (v312)
  {
    v313 = v312;
    operator delete(v312);
  }

  if (v309)
  {
    v310 = v309;
    operator delete(v309);
  }

  operations_research::sat::LinearExpr::LinearExpr(&v309, *a1, *(a1 + 8));
  operations_research::sat::LinearExpr::LinearExpr(&v297, **(a1 + 224), *(*(a1 + 224) + 8));
  operations_research::sat::LinearExpr::LinearExpr(&v305, *(a1 + 88), *(a1 + 96));
  v304.__r_.__value_.__r.__words[0] = operations_research::sat::CpModelBuilder::NewOptionalIntervalVar(v266, &v309, &v297, &v305, v265, v264);
  LODWORD(v304.__r_.__value_.__r.__words[1]) = v58;
  if (*(a1 + 311) >= 0)
  {
    v59 = *(a1 + 311);
  }

  else
  {
    v59 = *(a1 + 296);
  }

  std::string::basic_string[abi:ne200100](&__p, v59 + 36);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v60 = &__p;
  }

  else
  {
    v60 = __p.__r_.__value_.__r.__words[0];
  }

  if (v59)
  {
    if (*(a1 + 311) >= 0)
    {
      v61 = v263;
    }

    else
    {
      v61 = *(a1 + 288);
    }

    memmove(v60, v61, v59);
  }

  strcpy(v60 + v59, ":l2_dep_producer_write_time_interval");
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v62 = &__p;
  }

  else
  {
    v62 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v63 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v63 = __p.__r_.__value_.__l.__size_;
  }

  operations_research::sat::IntervalVar::WithName(&v304, v62, v63);
  v64 = v266;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v307)
  {
    v308 = v307;
    operator delete(v307);
  }

  if (v305)
  {
    *(&v305 + 1) = v305;
    operator delete(v305);
  }

  if (v300)
  {
    v301 = v300;
    operator delete(v300);
  }

  if (v297)
  {
    v298 = v297;
    operator delete(v297);
  }

  if (v312)
  {
    v313 = v312;
    operator delete(v312);
  }

  if (v309)
  {
    v310 = v309;
    operator delete(v309);
  }

  if (*(a1 + 240) != *(a1 + 232))
  {
    v65 = 0;
    v66 = 0;
    v6 = (a1 + 312);
    v5 = ":l2_dep_consumer_nonresident_read_interval_";
    do
    {
      if (v66 == *(a1 + 352))
      {
        operations_research::sat::LinearExpr::LinearExpr(&v309, *a1, *(a1 + 8));
        v67 = *(*(a1 + 232) + 8 * v66);
        operations_research::sat::LinearExpr::LinearExpr(&v297, *v67, v67[1]);
        operations_research::sat::LinearExpr::LinearExpr(&v305, *(*(a1 + 104) + v65), *(*(a1 + 104) + v65 + 8));
        v293.__r_.__value_.__r.__words[0] = operations_research::sat::CpModelBuilder::NewOptionalIntervalVar(v64, &v309, &v297, &v305, v265, v264);
        LODWORD(v293.__r_.__value_.__r.__words[1]) = v68;
        if (*(a1 + 335) >= 0)
        {
          v69 = *(a1 + 335);
        }

        else
        {
          v69 = *(a1 + 320);
        }

        std::string::basic_string[abi:ne200100](&v304, v69 + 40);
        if ((v304.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v70 = &v304;
        }

        else
        {
          v70 = v304.__r_.__value_.__r.__words[0];
        }

        if (v69)
        {
          if (*(a1 + 335) >= 0)
          {
            v71 = (a1 + 312);
          }

          else
          {
            v71 = *(a1 + 312);
          }

          memmove(v70, v71, v69);
        }

        strcpy(v70 + v69, ":l2_dep_consumer_resident_read_interval_");
        std::to_string(&v294, v66);
        if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v72 = &v294;
        }

        else
        {
          v72 = v294.__r_.__value_.__r.__words[0];
        }

        if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v73 = HIBYTE(v294.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v73 = v294.__r_.__value_.__l.__size_;
        }

        v74 = std::string::append(&v304, v72, v73);
        v64 = v266;
        v75 = *&v74->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v74->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v75;
        v74->__r_.__value_.__l.__size_ = 0;
        v74->__r_.__value_.__r.__words[2] = 0;
        v74->__r_.__value_.__r.__words[0] = 0;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v76 = &__p;
        }

        else
        {
          v76 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v77 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v77 = __p.__r_.__value_.__l.__size_;
        }

        operations_research::sat::IntervalVar::WithName(&v293, v76, v77);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v294.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v294.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v304.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_298;
        }

        v78 = v304.__r_.__value_.__r.__words[0];
      }

      else
      {
        operations_research::sat::LinearExpr::LinearExpr(&v309, *a1, *(a1 + 8));
        v79 = *(*(a1 + 232) + 8 * v66);
        operations_research::sat::LinearExpr::LinearExpr(&v297, *v79, v79[1]);
        operations_research::sat::LinearExpr::LinearExpr(&v305, *(*(a1 + 104) + v65), *(*(a1 + 104) + v65 + 8));
        v80 = *(*(a1 + 232) + 8 * v66);
        __p.__r_.__value_.__r.__words[0] = *(v80 + 224);
        LODWORD(__p.__r_.__value_.__r.__words[1]) = *(v80 + 232);
        __p.__r_.__value_.__r.__words[2] = v265;
        v303 = v264;
        memset(&v304, 0, sizeof(v304));
        std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(&v304, &__p, &v304, 2uLL);
        v81 = ORToolsCpBasedAllocatorUtil::CreateBooleanAnd(v64, &v304);
        v12 = v12 & 0xFFFFFFFF00000000 | v82;
        v295 = operations_research::sat::CpModelBuilder::NewOptionalIntervalVar(v64, &v309, &v297, &v305, v81, v12);
        v296 = v83;
        if (*(a1 + 335) >= 0)
        {
          v84 = *(a1 + 335);
        }

        else
        {
          v84 = *(a1 + 320);
        }

        std::string::basic_string[abi:ne200100](&v293, v84 + 43);
        if ((v293.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v85 = &v293;
        }

        else
        {
          v85 = v293.__r_.__value_.__r.__words[0];
        }

        if (v84)
        {
          if (*(a1 + 335) >= 0)
          {
            v86 = (a1 + 312);
          }

          else
          {
            v86 = *(a1 + 312);
          }

          memmove(v85, v86, v84);
        }

        qmemcpy(v262, "_nonresident_rea:l2_dep_consumer", sizeof(v262));
        strcpy(v85 + v84, ":l2_dep_consumer_nonresident_read_interval_");
        std::to_string(&v292, v66);
        if ((v292.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v87 = &v292;
        }

        else
        {
          v87 = v292.__r_.__value_.__r.__words[0];
        }

        if ((v292.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v88 = HIBYTE(v292.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v88 = v292.__r_.__value_.__l.__size_;
        }

        v89 = std::string::append(&v293, v87, v88);
        v90 = v266;
        v91 = *&v89->__r_.__value_.__l.__data_;
        v294.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
        *&v294.__r_.__value_.__l.__data_ = v91;
        v89->__r_.__value_.__l.__size_ = 0;
        v89->__r_.__value_.__r.__words[2] = 0;
        v89->__r_.__value_.__r.__words[0] = 0;
        if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v92 = &v294;
        }

        else
        {
          v92 = v294.__r_.__value_.__r.__words[0];
        }

        if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v93 = HIBYTE(v294.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v93 = v294.__r_.__value_.__l.__size_;
        }

        operations_research::sat::IntervalVar::WithName(&v295, v92, v93);
        if (SHIBYTE(v294.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v294.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v292.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v292.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v293.__r_.__value_.__l.__data_);
        }

        if (v304.__r_.__value_.__r.__words[0])
        {
          v304.__r_.__value_.__l.__size_ = v304.__r_.__value_.__r.__words[0];
          operator delete(v304.__r_.__value_.__l.__data_);
        }

        if (v307)
        {
          v308 = v307;
          operator delete(v307);
        }

        if (v305)
        {
          *(&v305 + 1) = v305;
          operator delete(v305);
        }

        if (v300)
        {
          v301 = v300;
          operator delete(v300);
        }

        if (v297)
        {
          v298 = v297;
          operator delete(v297);
        }

        if (v312)
        {
          v313 = v312;
          operator delete(v312);
        }

        if (v309)
        {
          v310 = v309;
          operator delete(v309);
        }

        operations_research::sat::LinearExpr::LinearExpr(&v309, *a1, *(a1 + 8));
        v94 = *(*(a1 + 232) + 8 * v66);
        operations_research::sat::LinearExpr::LinearExpr(&v297, *(v94 + 80), *(v94 + 88));
        operations_research::sat::LinearExpr::LinearExpr(&v305, *(*(a1 + 104) + v65), *(*(a1 + 104) + v65 + 8));
        v95 = *(*(a1 + 232) + 8 * v66);
        __p.__r_.__value_.__r.__words[0] = *(v95 + 240);
        LODWORD(__p.__r_.__value_.__r.__words[1]) = *(v95 + 248);
        __p.__r_.__value_.__r.__words[2] = v265;
        v303 = v264;
        memset(&v304, 0, sizeof(v304));
        std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(&v304, &__p, &v304, 2uLL);
        v96 = ORToolsCpBasedAllocatorUtil::CreateBooleanAnd(v90, &v304);
        v7 = v7 & 0xFFFFFFFF00000000 | v97;
        v295 = operations_research::sat::CpModelBuilder::NewOptionalIntervalVar(v90, &v309, &v297, &v305, v96, v7);
        v296 = v98;
        if (*(a1 + 335) >= 0)
        {
          v99 = *(a1 + 335);
        }

        else
        {
          v99 = *(a1 + 320);
        }

        std::string::basic_string[abi:ne200100](&v293, v99 + 43);
        if ((v293.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v100 = &v293;
        }

        else
        {
          v100 = v293.__r_.__value_.__r.__words[0];
        }

        if (v99)
        {
          if (*(a1 + 335) >= 0)
          {
            v101 = (a1 + 312);
          }

          else
          {
            v101 = *(a1 + 312);
          }

          memmove(v100, v101, v99);
        }

        v102 = (v100 + v99);
        *v102 = v262[1];
        v102[1] = v262[0];
        strcpy(&v100[1].__r_.__value_.__s.__data_[v99 + 3], "t_read_interval_");
        std::to_string(&v292, v66);
        if ((v292.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v103 = &v292;
        }

        else
        {
          v103 = v292.__r_.__value_.__r.__words[0];
        }

        if ((v292.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v104 = HIBYTE(v292.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v104 = v292.__r_.__value_.__l.__size_;
        }

        v105 = std::string::append(&v293, v103, v104);
        v64 = v266;
        v106 = *&v105->__r_.__value_.__l.__data_;
        v294.__r_.__value_.__r.__words[2] = v105->__r_.__value_.__r.__words[2];
        *&v294.__r_.__value_.__l.__data_ = v106;
        v105->__r_.__value_.__l.__size_ = 0;
        v105->__r_.__value_.__r.__words[2] = 0;
        v105->__r_.__value_.__r.__words[0] = 0;
        if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v107 = &v294;
        }

        else
        {
          v107 = v294.__r_.__value_.__r.__words[0];
        }

        if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v108 = HIBYTE(v294.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v108 = v294.__r_.__value_.__l.__size_;
        }

        operations_research::sat::IntervalVar::WithName(&v295, v107, v108);
        if (SHIBYTE(v294.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v294.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v292.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v292.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v293.__r_.__value_.__l.__data_);
        }

        v78 = v304.__r_.__value_.__r.__words[0];
        if (!v304.__r_.__value_.__r.__words[0])
        {
          goto LABEL_298;
        }

        v304.__r_.__value_.__l.__size_ = v304.__r_.__value_.__r.__words[0];
      }

      operator delete(v78);
LABEL_298:
      if (v307)
      {
        v308 = v307;
        operator delete(v307);
      }

      if (v305)
      {
        *(&v305 + 1) = v305;
        operator delete(v305);
      }

      if (v300)
      {
        v301 = v300;
        operator delete(v300);
      }

      if (v297)
      {
        v298 = v297;
        operator delete(v297);
      }

      if (v312)
      {
        v313 = v312;
        operator delete(v312);
      }

      if (v309)
      {
        v310 = v309;
        operator delete(v309);
      }

      ++v66;
      v65 += 16;
    }

    while (v66 < (*(a1 + 240) - *(a1 + 232)) >> 3);
  }

  operations_research::sat::LinearExpr::LinearExpr(&v309, *a1, *(a1 + 8));
  operations_research::sat::LinearExpr::LinearExpr(&v297, **(a1 + 256), *(*(a1 + 256) + 8));
  operations_research::sat::LinearExpr::LinearExpr(&v305, *(a1 + 128), *(a1 + 136));
  v304.__r_.__value_.__r.__words[0] = operations_research::sat::CpModelBuilder::NewOptionalIntervalVar(v64, &v309, &v297, &v305, v265, v264);
  LODWORD(v304.__r_.__value_.__r.__words[1]) = v109;
  if (*(a1 + 335) >= 0)
  {
    v110 = *(a1 + 335);
  }

  else
  {
    v110 = *(a1 + 320);
  }

  std::string::basic_string[abi:ne200100](&__p, v110 + 42);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v111 = &__p;
  }

  else
  {
    v111 = __p.__r_.__value_.__r.__words[0];
  }

  if (v110)
  {
    if (*(a1 + 335) >= 0)
    {
      v112 = (a1 + 312);
    }

    else
    {
      v112 = *(a1 + 312);
    }

    memmove(v111, v112, v110);
  }

  strcpy(v111 + v110, ":l2_dep_consumer_compute_resident_interval");
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v113 = &__p;
  }

  else
  {
    v113 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v114 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v114 = __p.__r_.__value_.__l.__size_;
  }

  operations_research::sat::IntervalVar::WithName(&v304, v113, v114);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v307)
  {
    v308 = v307;
    operator delete(v307);
  }

  if (v305)
  {
    *(&v305 + 1) = v305;
    operator delete(v305);
  }

  if (v300)
  {
    v301 = v300;
    operator delete(v300);
  }

  if (v297)
  {
    v298 = v297;
    operator delete(v297);
  }

  if (v312)
  {
    v313 = v312;
    operator delete(v312);
  }

  if (v309)
  {
    v310 = v309;
    operator delete(v309);
  }

  operations_research::sat::LinearExpr::LinearExpr(&v309, *a1, *(a1 + 8));
  operations_research::sat::LinearExpr::LinearExpr(&v297, **(a1 + 264), *(*(a1 + 264) + 8));
  operations_research::sat::LinearExpr::LinearExpr(&v305, *(a1 + 144), *(a1 + 152));
  v115 = *(a1 + 264);
  __p.__r_.__value_.__r.__words[0] = *(v115 + 224);
  LODWORD(__p.__r_.__value_.__r.__words[1]) = *(v115 + 232);
  __p.__r_.__value_.__r.__words[2] = v265;
  v303 = v264;
  memset(&v304, 0, sizeof(v304));
  std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(&v304, &__p, &v304, 2uLL);
  v116 = ORToolsCpBasedAllocatorUtil::CreateBooleanAnd(v266, &v304);
  v293.__r_.__value_.__r.__words[0] = operations_research::sat::CpModelBuilder::NewOptionalIntervalVar(v266, &v309, &v297, &v305, v116, v117);
  LODWORD(v293.__r_.__value_.__r.__words[1]) = v118;
  if (*(a1 + 335) >= 0)
  {
    v119 = *(a1 + 335);
  }

  else
  {
    v119 = *(a1 + 320);
  }

  std::string::basic_string[abi:ne200100](&v294, v119 + 45);
  if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v120 = &v294;
  }

  else
  {
    v120 = v294.__r_.__value_.__r.__words[0];
  }

  if (v119)
  {
    if (*(a1 + 335) >= 0)
    {
      v121 = (a1 + 312);
    }

    else
    {
      v121 = *(a1 + 312);
    }

    memmove(v120, v121, v119);
  }

  strcpy(v120 + v119, ":l2_dep_consumer_resident_write_time_interval");
  if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v122 = &v294;
  }

  else
  {
    v122 = v294.__r_.__value_.__r.__words[0];
  }

  if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v123 = HIBYTE(v294.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v123 = v294.__r_.__value_.__l.__size_;
  }

  operations_research::sat::IntervalVar::WithName(&v293, v122, v123);
  if (SHIBYTE(v294.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v294.__r_.__value_.__l.__data_);
  }

  if (v304.__r_.__value_.__r.__words[0])
  {
    v304.__r_.__value_.__l.__size_ = v304.__r_.__value_.__r.__words[0];
    operator delete(v304.__r_.__value_.__l.__data_);
  }

  if (v307)
  {
    v308 = v307;
    operator delete(v307);
  }

  if (v305)
  {
    *(&v305 + 1) = v305;
    operator delete(v305);
  }

  if (v300)
  {
    v301 = v300;
    operator delete(v300);
  }

  if (v297)
  {
    v298 = v297;
    operator delete(v297);
  }

  if (v312)
  {
    v313 = v312;
    operator delete(v312);
  }

  if (v309)
  {
    v310 = v309;
    operator delete(v309);
  }

  operations_research::sat::LinearExpr::LinearExpr(&v309, *a1, *(a1 + 8));
  operations_research::sat::LinearExpr::LinearExpr(&v297, *(*(a1 + 264) + 80), *(*(a1 + 264) + 88));
  operations_research::sat::LinearExpr::LinearExpr(&v305, *(a1 + 144), *(a1 + 152));
  v124 = *(a1 + 264);
  __p.__r_.__value_.__r.__words[0] = *(v124 + 240);
  LODWORD(__p.__r_.__value_.__r.__words[1]) = *(v124 + 248);
  __p.__r_.__value_.__r.__words[2] = v265;
  v303 = v264;
  memset(&v304, 0, sizeof(v304));
  std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(&v304, &__p, &v304, 2uLL);
  v125 = ORToolsCpBasedAllocatorUtil::CreateBooleanAnd(v266, &v304);
  v293.__r_.__value_.__r.__words[0] = operations_research::sat::CpModelBuilder::NewOptionalIntervalVar(v266, &v309, &v297, &v305, v125, v126);
  LODWORD(v293.__r_.__value_.__r.__words[1]) = v127;
  if (*(a1 + 335) >= 0)
  {
    v128 = *(a1 + 335);
  }

  else
  {
    v128 = *(a1 + 320);
  }

  std::string::basic_string[abi:ne200100](&v294, v128 + 48);
  if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v129 = &v294;
  }

  else
  {
    v129 = v294.__r_.__value_.__r.__words[0];
  }

  if (v128)
  {
    if (*(a1 + 335) >= 0)
    {
      v130 = (a1 + 312);
    }

    else
    {
      v130 = *(a1 + 312);
    }

    memmove(v129, v130, v128);
  }

  strcpy(v129 + v128, ":l2_dep_consumer_nonresident_write_time_interval");
  if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v131 = &v294;
  }

  else
  {
    v131 = v294.__r_.__value_.__r.__words[0];
  }

  if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v132 = HIBYTE(v294.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v132 = v294.__r_.__value_.__l.__size_;
  }

  operations_research::sat::IntervalVar::WithName(&v293, v131, v132);
  v133 = v266;
  if (SHIBYTE(v294.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v294.__r_.__value_.__l.__data_);
  }

  if (v304.__r_.__value_.__r.__words[0])
  {
    v304.__r_.__value_.__l.__size_ = v304.__r_.__value_.__r.__words[0];
    operator delete(v304.__r_.__value_.__l.__data_);
  }

  if (v307)
  {
    v308 = v307;
    operator delete(v307);
  }

  if (v305)
  {
    *(&v305 + 1) = v305;
    operator delete(v305);
  }

  if (v300)
  {
    v301 = v300;
    operator delete(v300);
  }

  if (v297)
  {
    v298 = v297;
    operator delete(v297);
  }

  if (v312)
  {
    v313 = v312;
    operator delete(v312);
  }

  if (v309)
  {
    v310 = v309;
    operator delete(v309);
  }

  *&v262[1] = operations_research::sat::CpModelBuilder::NewIntVar(v266, a5);
  *&v262[0] = v134;
  v135 = *(a1 + 48);
  if (*(a1 + 56) != v135)
  {
    v136 = 0;
    v137 = 0;
    v5 = &v294;
    v6 = ":l2_dep_producer_read_";
    do
    {
      operations_research::sat::LinearExpr::LinearExpr(&v309, *(v135 + v136), *(v135 + v136 + 8));
      operations_research::sat::LinearExpr::LinearExpr(&v297, *&v262[1], *&v262[0]);
      v293.__r_.__value_.__r.__words[0] = operations_research::sat::CpModelBuilder::AddLessOrEqual(v133, &v309, &v297);
      if (*(a1 + 311) >= 0)
      {
        v138 = *(a1 + 311);
      }

      else
      {
        v138 = *(a1 + 296);
      }

      std::string::basic_string[abi:ne200100](&v304, v138 + 22);
      if ((v304.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v139 = &v304;
      }

      else
      {
        v139 = v304.__r_.__value_.__r.__words[0];
      }

      if (v138)
      {
        if (*(a1 + 311) >= 0)
        {
          v140 = v263;
        }

        else
        {
          v140 = *(a1 + 288);
        }

        memmove(v139, v140, v138);
      }

      strcpy(v139 + v138, ":l2_dep_producer_read_");
      std::to_string(&v294, v137);
      if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v141 = &v294;
      }

      else
      {
        v141 = v294.__r_.__value_.__r.__words[0];
      }

      if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v142 = HIBYTE(v294.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v142 = v294.__r_.__value_.__l.__size_;
      }

      v143 = std::string::append(&v304, v141, v142);
      v133 = v266;
      v144 = *&v143->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v143->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v144;
      v143->__r_.__value_.__l.__size_ = 0;
      v143->__r_.__value_.__r.__words[2] = 0;
      v143->__r_.__value_.__r.__words[0] = 0;
      v145 = std::string::append(&__p, "_end_constraint", 0xFuLL);
      v146 = *&v145->__r_.__value_.__l.__data_;
      v306 = v145->__r_.__value_.__r.__words[2];
      v305 = v146;
      v145->__r_.__value_.__l.__size_ = 0;
      v145->__r_.__value_.__r.__words[2] = 0;
      v145->__r_.__value_.__r.__words[0] = 0;
      if (v306 >= 0)
      {
        v147 = &v305;
      }

      else
      {
        v147 = v305;
      }

      if (v306 >= 0)
      {
        v148 = HIBYTE(v306);
      }

      else
      {
        v148 = *(&v305 + 1);
      }

      operations_research::sat::Constraint::WithName(&v293, v147, v148);
      if (SHIBYTE(v306) < 0)
      {
        operator delete(v305);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v294.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v294.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v304.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v304.__r_.__value_.__l.__data_);
      }

      if (v300)
      {
        v301 = v300;
        operator delete(v300);
      }

      if (v297)
      {
        v298 = v297;
        operator delete(v297);
      }

      if (v312)
      {
        v313 = v312;
        operator delete(v312);
      }

      if (v309)
      {
        v310 = v309;
        operator delete(v309);
      }

      ++v137;
      v135 = *(a1 + 48);
      v136 += 16;
    }

    while (v137 < (*(a1 + 56) - v135) >> 4);
  }

  operations_research::sat::LinearExpr::LinearExpr(&v309, *(a1 + 72), *(a1 + 80));
  operations_research::sat::LinearExpr::LinearExpr(&v297, *&v262[1], *&v262[0]);
  __p.__r_.__value_.__r.__words[0] = operations_research::sat::CpModelBuilder::AddLessOrEqual(v133, &v309, &v297);
  if (*(a1 + 311) >= 0)
  {
    v149 = *(a1 + 311);
  }

  else
  {
    v149 = *(a1 + 296);
  }

  std::string::basic_string[abi:ne200100](&v305, v149 + 39);
  if (v306 >= 0)
  {
    v150 = &v305;
  }

  else
  {
    v150 = v305;
  }

  if (v149)
  {
    if (*(a1 + 311) >= 0)
    {
      v151 = v263;
    }

    else
    {
      v151 = *(a1 + 288);
    }

    memmove(v150, v151, v149);
  }

  strcpy(v150 + v149, ":l2_dep_producer_compute_end_constraint");
  if (v306 >= 0)
  {
    v152 = &v305;
  }

  else
  {
    v152 = v305;
  }

  if (v306 >= 0)
  {
    v153 = HIBYTE(v306);
  }

  else
  {
    v153 = *(&v305 + 1);
  }

  operations_research::sat::Constraint::WithName(&__p, v152, v153);
  if (SHIBYTE(v306) < 0)
  {
    operator delete(v305);
  }

  if (v300)
  {
    v301 = v300;
    operator delete(v300);
  }

  if (v297)
  {
    v298 = v297;
    operator delete(v297);
  }

  if (v312)
  {
    v313 = v312;
    operator delete(v312);
  }

  if (v309)
  {
    v310 = v309;
    operator delete(v309);
  }

  operations_research::sat::LinearExpr::LinearExpr(&v309, *(a1 + 88), *(a1 + 96));
  operations_research::sat::LinearExpr::LinearExpr(&v297, *&v262[1], *&v262[0]);
  __p.__r_.__value_.__r.__words[0] = operations_research::sat::CpModelBuilder::AddLessOrEqual(v266, &v309, &v297);
  if (*(a1 + 311) >= 0)
  {
    v154 = *(a1 + 311);
  }

  else
  {
    v154 = *(a1 + 296);
  }

  std::string::basic_string[abi:ne200100](&v305, v154 + 37);
  if (v306 >= 0)
  {
    v155 = &v305;
  }

  else
  {
    v155 = v305;
  }

  if (v154)
  {
    if (*(a1 + 311) >= 0)
    {
      v156 = v263;
    }

    else
    {
      v156 = *(a1 + 288);
    }

    memmove(v155, v156, v154);
  }

  strcpy(v155 + v154, ":l2_dep_producer_write_end_constraint");
  if (v306 >= 0)
  {
    v157 = &v305;
  }

  else
  {
    v157 = v305;
  }

  if (v306 >= 0)
  {
    v158 = HIBYTE(v306);
  }

  else
  {
    v158 = *(&v305 + 1);
  }

  operations_research::sat::Constraint::WithName(&__p, v157, v158);
  v159 = v266;
  if (SHIBYTE(v306) < 0)
  {
    operator delete(v305);
  }

  if (v300)
  {
    v301 = v300;
    operator delete(v300);
  }

  if (v297)
  {
    v298 = v297;
    operator delete(v297);
  }

  if (v312)
  {
    v313 = v312;
    operator delete(v312);
  }

  if (v309)
  {
    v310 = v309;
    operator delete(v309);
  }

  v160 = *(a1 + 104);
  if (*(a1 + 112) != v160)
  {
    v161 = 0;
    v162 = 0;
    v5 = &v294;
    v6 = ":l2_dep_consumer_read_";
    do
    {
      operations_research::sat::LinearExpr::LinearExpr(&v309, *(v160 + v161), *(v160 + v161 + 8));
      operations_research::sat::LinearExpr::LinearExpr(&v297, *&v262[1], *&v262[0]);
      v293.__r_.__value_.__r.__words[0] = operations_research::sat::CpModelBuilder::AddLessOrEqual(v159, &v309, &v297);
      if (*(a1 + 335) >= 0)
      {
        v163 = *(a1 + 335);
      }

      else
      {
        v163 = *(a1 + 320);
      }

      std::string::basic_string[abi:ne200100](&v304, v163 + 22);
      if ((v304.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v164 = &v304;
      }

      else
      {
        v164 = v304.__r_.__value_.__r.__words[0];
      }

      if (v163)
      {
        if (*(a1 + 335) >= 0)
        {
          v165 = (a1 + 312);
        }

        else
        {
          v165 = *(a1 + 312);
        }

        memmove(v164, v165, v163);
      }

      strcpy(v164 + v163, ":l2_dep_consumer_read_");
      std::to_string(&v294, v162);
      if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v166 = &v294;
      }

      else
      {
        v166 = v294.__r_.__value_.__r.__words[0];
      }

      if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v167 = HIBYTE(v294.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v167 = v294.__r_.__value_.__l.__size_;
      }

      v168 = std::string::append(&v304, v166, v167);
      v159 = v266;
      v169 = *&v168->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v168->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v169;
      v168->__r_.__value_.__l.__size_ = 0;
      v168->__r_.__value_.__r.__words[2] = 0;
      v168->__r_.__value_.__r.__words[0] = 0;
      v170 = std::string::append(&__p, "_end_constraint", 0xFuLL);
      v171 = *&v170->__r_.__value_.__l.__data_;
      v306 = v170->__r_.__value_.__r.__words[2];
      v305 = v171;
      v170->__r_.__value_.__l.__size_ = 0;
      v170->__r_.__value_.__r.__words[2] = 0;
      v170->__r_.__value_.__r.__words[0] = 0;
      if (v306 >= 0)
      {
        v172 = &v305;
      }

      else
      {
        v172 = v305;
      }

      if (v306 >= 0)
      {
        v173 = HIBYTE(v306);
      }

      else
      {
        v173 = *(&v305 + 1);
      }

      operations_research::sat::Constraint::WithName(&v293, v172, v173);
      if (SHIBYTE(v306) < 0)
      {
        operator delete(v305);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v294.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v294.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v304.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v304.__r_.__value_.__l.__data_);
      }

      if (v300)
      {
        v301 = v300;
        operator delete(v300);
      }

      if (v297)
      {
        v298 = v297;
        operator delete(v297);
      }

      if (v312)
      {
        v313 = v312;
        operator delete(v312);
      }

      if (v309)
      {
        v310 = v309;
        operator delete(v309);
      }

      ++v162;
      v160 = *(a1 + 104);
      v161 += 16;
    }

    while (v162 < (*(a1 + 112) - v160) >> 4);
  }

  operations_research::sat::LinearExpr::LinearExpr(&v309, *(a1 + 128), *(a1 + 136));
  operations_research::sat::LinearExpr::LinearExpr(&v297, *&v262[1], *&v262[0]);
  __p.__r_.__value_.__r.__words[0] = operations_research::sat::CpModelBuilder::AddLessOrEqual(v159, &v309, &v297);
  if (*(a1 + 335) >= 0)
  {
    v174 = *(a1 + 335);
  }

  else
  {
    v174 = *(a1 + 320);
  }

  std::string::basic_string[abi:ne200100](&v305, v174 + 39);
  if (v306 >= 0)
  {
    v175 = &v305;
  }

  else
  {
    v175 = v305;
  }

  if (v174)
  {
    if (*(a1 + 335) >= 0)
    {
      v176 = (a1 + 312);
    }

    else
    {
      v176 = *(a1 + 312);
    }

    memmove(v175, v176, v174);
  }

  strcpy(v175 + v174, ":l2_dep_consumer_compute_end_constraint");
  if (v306 >= 0)
  {
    v177 = &v305;
  }

  else
  {
    v177 = v305;
  }

  if (v306 >= 0)
  {
    v178 = HIBYTE(v306);
  }

  else
  {
    v178 = *(&v305 + 1);
  }

  operations_research::sat::Constraint::WithName(&__p, v177, v178);
  if (SHIBYTE(v306) < 0)
  {
    operator delete(v305);
  }

  if (v300)
  {
    v301 = v300;
    operator delete(v300);
  }

  if (v297)
  {
    v298 = v297;
    operator delete(v297);
  }

  if (v312)
  {
    v313 = v312;
    operator delete(v312);
  }

  if (v309)
  {
    v310 = v309;
    operator delete(v309);
  }

  operations_research::sat::LinearExpr::LinearExpr(&v309, *(a1 + 144), *(a1 + 152));
  operations_research::sat::LinearExpr::LinearExpr(&v297, *&v262[1], *&v262[0]);
  __p.__r_.__value_.__r.__words[0] = operations_research::sat::CpModelBuilder::AddLessOrEqual(v266, &v309, &v297);
  if (*(a1 + 335) >= 0)
  {
    v179 = *(a1 + 335);
  }

  else
  {
    v179 = *(a1 + 320);
  }

  std::string::basic_string[abi:ne200100](&v305, v179 + 37);
  if (v306 >= 0)
  {
    v180 = &v305;
  }

  else
  {
    v180 = v305;
  }

  if (v179)
  {
    if (*(a1 + 335) >= 0)
    {
      v181 = (a1 + 312);
    }

    else
    {
      v181 = *(a1 + 312);
    }

    memmove(v180, v181, v179);
  }

  strcpy(v180 + v179, ":l2_dep_consumer_write_end_constraint");
  if (v306 >= 0)
  {
    v182 = &v305;
  }

  else
  {
    v182 = v305;
  }

  if (v306 >= 0)
  {
    v183 = HIBYTE(v306);
  }

  else
  {
    v183 = *(&v305 + 1);
  }

  operations_research::sat::Constraint::WithName(&__p, v182, v183);
  v184 = v266;
  if (SHIBYTE(v306) < 0)
  {
    operator delete(v305);
  }

  if (v300)
  {
    v301 = v300;
    operator delete(v300);
  }

  if (v297)
  {
    v298 = v297;
    operator delete(v297);
  }

  if (v312)
  {
    v313 = v312;
    operator delete(v312);
  }

  if (v309)
  {
    v310 = v309;
    operator delete(v309);
  }

  LayerCycleAndFootprintEstimator::GetReadBehaviors(a4, &__p);
  memset(&v304, 0, sizeof(v304));
  memset(&v294, 0, sizeof(v294));
  v185 = *(a1 + 192);
  if (*(a1 + 200) == v185)
  {
    v189 = 0;
  }

  else
  {
    v186 = 0;
    do
    {
      v309 = v265;
      LODWORD(v310) = v264;
      v187 = v185[v186];
      LODWORD(v312) = *(v187 + 248);
      v311 = *(v187 + 240);
      v299 = 0;
      v298 = 0;
      v297 = 0;
      std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(&v297, &v309, &v313, 2uLL);
      *&v305 = ORToolsCpBasedAllocatorUtil::CreateBooleanAnd(v266, &v297);
      DWORD2(v305) = v188;
      std::vector<operations_research::sat::IntVar>::push_back[abi:ne200100](&v304, &v305);
      if (v297)
      {
        v298 = v297;
        operator delete(v297);
      }

      v309 = *(*(__p.__r_.__value_.__r.__words[0] + 8 * v186) + 120);
      std::vector<long long>::push_back[abi:ne200100](&v294.__r_.__value_.__l.__data_, &v309);
      ++v186;
      v185 = *(a1 + 192);
      v189 = (*(a1 + 200) - v185) >> 3;
    }

    while (v189 > v186);
  }

  if (v189 > 1)
  {
    v309 = v265;
    LODWORD(v310) = v264;
    v190 = *v185;
    LODWORD(v312) = *(*v185 + 248);
    v311 = *(v190 + 240);
    v191 = v185[1];
    v314 = *(v191 + 248);
    v313 = *(v191 + 240);
    v297 = 0;
    v298 = 0;
    v299 = 0;
    std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(&v297, &v309, v315, 3uLL);
    *&v305 = ORToolsCpBasedAllocatorUtil::CreateBooleanAnd(v266, &v297);
    DWORD2(v305) = v192;
    std::vector<operations_research::sat::IntVar>::push_back[abi:ne200100](&v304, &v305);
    if (v297)
    {
      v298 = v297;
      operator delete(v297);
    }

    v309 = 1;
    std::vector<long long>::push_back[abi:ne200100](&v294.__r_.__value_.__l.__data_, &v309);
  }

  operations_research::sat::LinearExpr::LinearExpr(&v309, *(a1 + 176), *(a1 + 184));
  operations_research::sat::LinearExpr::WeightedSum(v304.__r_.__value_.__l.__data_, (v304.__r_.__value_.__l.__size_ - v304.__r_.__value_.__r.__words[0]) >> 4, v294.__r_.__value_.__l.__data_, (v294.__r_.__value_.__l.__size_ - v294.__r_.__value_.__r.__words[0]) >> 3, &v297);
  operations_research::sat::CpModelBuilder::AddEquality(v266, &v309, &v297);
  if (v300)
  {
    v301 = v300;
    operator delete(v300);
  }

  if (v297)
  {
    v298 = v297;
    operator delete(v297);
  }

  if (v312)
  {
    v313 = v312;
    operator delete(v312);
  }

  if (v309)
  {
    v310 = v309;
    operator delete(v309);
  }

  operations_research::sat::LinearExpr::LinearExpr(&v309, *&v262[1], *&v262[0]);
  operations_research::sat::LinearExpr::LinearExpr(&v297, *(a1 + 176), *(a1 + 184));
  operations_research::sat::LinearExpr::LinearExpr(&v305, *(a1 + 32), *(a1 + 40));
  operations_research::sat::CpModelBuilder::NewIntervalVar(v266, &v309, &v297, &v305);
  if (v307)
  {
    v308 = v307;
    operator delete(v307);
  }

  if (v305)
  {
    *(&v305 + 1) = v305;
    operator delete(v305);
  }

  if (v300)
  {
    v301 = v300;
    operator delete(v300);
  }

  if (v297)
  {
    v298 = v297;
    operator delete(v297);
  }

  if (v312)
  {
    v313 = v312;
    operator delete(v312);
  }

  if (v309)
  {
    v310 = v309;
    operator delete(v309);
  }

  v193 = *(a1 + 192);
  if (*(a1 + 200) != v193)
  {
    v194 = 0;
    do
    {
      v195 = *(a1 + 336);
      v196 = *(a1 + 344);
      v197 = *(v193 + 8 * v194);
      v309 = *(v197 + 240);
      LODWORD(v310) = *(v197 + 248);
      v311 = v265;
      LODWORD(v312) = v264;
      v299 = 0;
      v297 = 0;
      v298 = 0;
      std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(&v297, &v309, &v313, 2uLL);
      v198 = ORToolsCpBasedAllocatorUtil::CreateBooleanAnd(v184, &v297);
      v200 = v199;
      if (*(a1 + 311) >= 0)
      {
        v201 = *(a1 + 311);
      }

      else
      {
        v201 = *(a1 + 296);
      }

      std::string::basic_string[abi:ne200100](v290, v201 + 51);
      if (v291 >= 0)
      {
        v202 = v290;
      }

      else
      {
        v202 = v290[0];
      }

      if (v201)
      {
        if (*(a1 + 311) >= 0)
        {
          v203 = v263;
        }

        else
        {
          v203 = *(a1 + 288);
        }

        memmove(v202, v203, v201);
      }

      strcpy(v202 + v201, ":l2_dep_producer_nonresident_read_pressure_interval");
      v184 = v266;
      OptionalClosedInterval = ORToolsCpBasedAllocatorUtil::CreateOptionalClosedInterval(v266, v195, v196, v198, v200, v290);
      v206 = v205;
      if (v291 < 0)
      {
        operator delete(v290[0]);
      }

      if (v297)
      {
        v298 = v297;
        operator delete(v297);
      }

      v207 = *(*(a1 + 192) + 8 * v194);
      operations_research::sat::LinearExpr::LinearExpr(v287, *(v207 + 176), *(v207 + 184));
      operations_research::sat::CumulativeConstraint::AddDemand(a3, OptionalClosedInterval, v206, v287);
      if (v288)
      {
        v289 = v288;
        operator delete(v288);
      }

      if (v287[0])
      {
        v287[1] = v287[0];
        operator delete(v287[0]);
      }

      if (*(a1 + 408) == 1)
      {
        v208 = *(a1 + 344);
        v209 = *(*(a1 + 192) + 8 * v194);
        v309 = *(v209 + 224);
        LODWORD(v310) = *(v209 + 232);
        v311 = v265;
        LODWORD(v312) = v264;
        v299 = 0;
        v297 = 0;
        v298 = 0;
        std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(&v297, &v309, &v313, 2uLL);
        v210 = ORToolsCpBasedAllocatorUtil::CreateBooleanAnd(v266, &v297);
        v212 = v211;
        if (*(a1 + 311) >= 0)
        {
          v213 = *(a1 + 311);
        }

        else
        {
          v213 = *(a1 + 296);
        }

        std::string::basic_string[abi:ne200100](v285, v213 + 48);
        if (v286 >= 0)
        {
          v214 = v285;
        }

        else
        {
          v214 = v285[0];
        }

        if (v213)
        {
          if (*(a1 + 311) >= 0)
          {
            v215 = v263;
          }

          else
          {
            v215 = *(a1 + 288);
          }

          memmove(v214, v215, v213);
        }

        v6 = (v6 & 0xFFFFFFFF00000000 | v212);
        strcpy(v214 + v213, ":l2_dep_producer_resident_read_pressure_interval");
        v184 = v266;
        v216 = ORToolsCpBasedAllocatorUtil::CreateOptionalClosedInterval(v266, v208, v208, v210, v6, v285);
        v218 = v217;
        if (v286 < 0)
        {
          operator delete(v285[0]);
        }

        if (v297)
        {
          v298 = v297;
          operator delete(v297);
        }

        v219 = *(*(a1 + 192) + 8 * v194);
        operations_research::sat::LinearExpr::LinearExpr(v282, *(v219 + 112), *(v219 + 120));
        v5 = v5 & 0xFFFFFFFF00000000 | v218;
        operations_research::sat::CumulativeConstraint::AddDemand(a3, v216, v5, v282);
        if (v283)
        {
          v284 = v283;
          operator delete(v283);
        }

        if (v282[0])
        {
          v282[1] = v282[0];
          operator delete(v282[0]);
        }
      }

      ++v194;
      v193 = *(a1 + 192);
    }

    while (v194 < (*(a1 + 200) - v193) >> 3);
  }

  v220 = *(a1 + 232);
  if (*(a1 + 240) != v220)
  {
    v221 = 0;
    do
    {
      if (v221 != *(a1 + 352))
      {
        v222 = *(a1 + 336);
        v223 = *(a1 + 344);
        v224 = *(v220 + 8 * v221);
        v309 = *(v224 + 240);
        LODWORD(v310) = *(v224 + 248);
        v311 = v265;
        LODWORD(v312) = v264;
        v299 = 0;
        v297 = 0;
        v298 = 0;
        std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(&v297, &v309, &v313, 2uLL);
        v225 = ORToolsCpBasedAllocatorUtil::CreateBooleanAnd(v184, &v297);
        v227 = v226;
        if (*(a1 + 335) >= 0)
        {
          v228 = *(a1 + 335);
        }

        else
        {
          v228 = *(a1 + 320);
        }

        std::string::basic_string[abi:ne200100](v280, v228 + 51);
        if (v281 >= 0)
        {
          v229 = v280;
        }

        else
        {
          v229 = v280[0];
        }

        if (v228)
        {
          if (*(a1 + 335) >= 0)
          {
            v230 = (a1 + 312);
          }

          else
          {
            v230 = *(a1 + 312);
          }

          memmove(v229, v230, v228);
        }

        v6 = (v6 & 0xFFFFFFFF00000000 | v227);
        strcpy(v229 + v228, ":l2_dep_consumer_nonresident_read_pressure_interval");
        v184 = v266;
        v231 = ORToolsCpBasedAllocatorUtil::CreateOptionalClosedInterval(v266, v222, v223, v225, v6, v280);
        v233 = v232;
        if (v281 < 0)
        {
          operator delete(v280[0]);
        }

        if (v297)
        {
          v298 = v297;
          operator delete(v297);
        }

        v234 = *(*(a1 + 232) + 8 * v221);
        operations_research::sat::LinearExpr::LinearExpr(v277, *(v234 + 192), *(v234 + 200));
        v5 = v5 & 0xFFFFFFFF00000000 | v233;
        operations_research::sat::CumulativeConstraint::AddDemand(a3, v231, v5, v277);
        if (v278)
        {
          v279 = v278;
          operator delete(v278);
        }

        if (v277[0])
        {
          v277[1] = v277[0];
          operator delete(v277[0]);
        }
      }

      ++v221;
      v220 = *(a1 + 232);
    }

    while (v221 < (*(a1 + 240) - v220) >> 3);
  }

  v235 = *(a1 + 336);
  v236 = *(a1 + 344);
  v237 = *(a1 + 264);
  v309 = *(v237 + 240);
  LODWORD(v310) = *(v237 + 248);
  v311 = v265;
  LODWORD(v312) = v264;
  v299 = 0;
  v297 = 0;
  v298 = 0;
  std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(&v297, &v309, &v313, 2uLL);
  v238 = ORToolsCpBasedAllocatorUtil::CreateBooleanAnd(v184, &v297);
  v240 = v239;
  if (*(a1 + 335) >= 0)
  {
    v241 = *(a1 + 335);
  }

  else
  {
    v241 = *(a1 + 320);
  }

  std::string::basic_string[abi:ne200100](v275, v241 + 52);
  if (v276 >= 0)
  {
    v242 = v275;
  }

  else
  {
    v242 = v275[0];
  }

  if (v241)
  {
    if (*(a1 + 335) >= 0)
    {
      v243 = (a1 + 312);
    }

    else
    {
      v243 = *(a1 + 312);
    }

    memmove(v242, v243, v241);
  }

  strcpy(v242 + v241, ":l2_dep_consumer_nonresident_write_pressure_interval");
  v244 = ORToolsCpBasedAllocatorUtil::CreateOptionalClosedInterval(v266, v235, v236, v238, v240, v275);
  v246 = v245;
  if (v276 < 0)
  {
    operator delete(v275[0]);
  }

  if (v297)
  {
    v298 = v297;
    operator delete(v297);
  }

  operations_research::sat::LinearExpr::LinearExpr(v272, *(*(a1 + 264) + 192), *(*(a1 + 264) + 200));
  operations_research::sat::CumulativeConstraint::AddDemand(a3, v244, v246, v272);
  if (v273)
  {
    v274 = v273;
    operator delete(v273);
  }

  if (v272[0])
  {
    v272[1] = v272[0];
    operator delete(v272[0]);
  }

  if (*(a1 + 409) == 1)
  {
    v247 = *(a1 + 336);
    v248 = *(a1 + 264);
    v309 = *(v248 + 224);
    LODWORD(v310) = *(v248 + 232);
    v311 = v265;
    LODWORD(v312) = v264;
    v299 = 0;
    v297 = 0;
    v298 = 0;
    std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(&v297, &v309, &v313, 2uLL);
    v249 = ORToolsCpBasedAllocatorUtil::CreateBooleanAnd(v266, &v297);
    v251 = v250;
    if (*(a1 + 335) >= 0)
    {
      v252 = *(a1 + 335);
    }

    else
    {
      v252 = *(a1 + 320);
    }

    std::string::basic_string[abi:ne200100](v270, v252 + 49);
    if (v271 >= 0)
    {
      v253 = v270;
    }

    else
    {
      v253 = v270[0];
    }

    if (v252)
    {
      if (*(a1 + 335) >= 0)
      {
        v254 = (a1 + 312);
      }

      else
      {
        v254 = *(a1 + 312);
      }

      memmove(v253, v254, v252);
    }

    strcpy(v253 + v252, ":l2_dep_consumer_resident_write_pressure_interval");
    v255 = ORToolsCpBasedAllocatorUtil::CreateOptionalClosedInterval(v266, v247, v247, v249, v251, v270);
    v257 = v256;
    if (v271 < 0)
    {
      operator delete(v270[0]);
    }

    if (v297)
    {
      v298 = v297;
      operator delete(v297);
    }

    operations_research::sat::LinearExpr::LinearExpr(v267, *(*(a1 + 264) + 112), *(*(a1 + 264) + 120));
    operations_research::sat::CumulativeConstraint::AddDemand(a3, v255, v257, v267);
    if (v268)
    {
      v269 = v268;
      operator delete(v268);
    }

    if (v267[0])
    {
      v267[1] = v267[0];
      operator delete(v267[0]);
    }
  }

  if (v294.__r_.__value_.__r.__words[0])
  {
    v294.__r_.__value_.__l.__size_ = v294.__r_.__value_.__r.__words[0];
    operator delete(v294.__r_.__value_.__l.__data_);
  }

  if (v304.__r_.__value_.__r.__words[0])
  {
    v304.__r_.__value_.__l.__size_ = v304.__r_.__value_.__r.__words[0];
    operator delete(v304.__r_.__value_.__l.__data_);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v258 = *MEMORY[0x277D85DE8];
}

void sub_23C92664C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  operations_research::sat::LinearExpr::~LinearExpr(va);
  v17 = STACK[0x230];
  if (STACK[0x230])
  {
    STACK[0x238] = v17;
    operator delete(v17);
  }

  v18 = *(v15 - 240);
  if (v18)
  {
    *(v15 - 232) = v18;
    operator delete(v18);
  }

  v19 = STACK[0x290];
  if (STACK[0x290])
  {
    STACK[0x298] = v19;
    operator delete(v19);
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::LinearExpr::~LinearExpr(operations_research::sat::LinearExpr *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

void std::vector<long long>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar*,operations_research::sat::BoolVar*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<operations_research::sat::BoolVar>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23C926CD8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<operations_research::sat::BoolVar>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<operations_research::sat::BoolVar>>(a1, a2);
  }

  std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<operations_research::sat::BoolVar>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::unique_ptr<ORToolsCpL2AccessVariable>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::unique_ptr<ORToolsCpL2AccessVariable>::~unique_ptr[abi:ne200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__split_buffer<std::unique_ptr<ORToolsCpL2AccessVariable>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<ORToolsCpL2AccessVariable>::~unique_ptr[abi:ne200100]((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<operations_research::sat::BoolVar>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23C926EA4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void ORToolsCpTransposer::ORToolsCpTransposer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2;
  *(a1 + 8) = a5;
  *(a1 + 24) = 0;
  *(a1 + 16) = a1 + 24;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 88) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  *(a1 + 112) = 0;
  *(a1 + 104) = a1 + 112;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 160) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 152) = a1 + 160;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 1065353216;
  operator new();
}

void sub_23C927264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, void **a12, void **a13, void **a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  std::ofstream::~ofstream(v29, MEMORY[0x277D82810]);
  MEMORY[0x23EED93A0](v28);
  std::unique_ptr<operations_research::sat::SatParameters>::~unique_ptr[abi:ne200100]((v24 + 224));
  std::unique_ptr<operations_research::sat::CpModelBuilder>::~unique_ptr[abi:ne200100]((v27 + 40));
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v27);
  std::__tree<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>>>::destroy(a10, *a11);
  v31 = *a12;
  if (*a12)
  {
    *(v24 + 136) = v31;
    operator delete(v31);
  }

  std::__tree<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>>>::destroy(v26, *a13);
  std::__tree<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>>>::destroy(v25, *a14);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned long>>>>::~__hash_table(a15);
  std::__tree<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>>>::destroy(a16, *a17);
  _Unwind_Resume(a1);
}

operations_research::sat::SatParameters **std::unique_ptr<operations_research::sat::SatParameters>::~unique_ptr[abi:ne200100](operations_research::sat::SatParameters **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operations_research::sat::SatParameters::~SatParameters(v2);
    MEMORY[0x23EED9460]();
  }

  return a1;
}

operations_research::sat::CpModelProto **std::unique_ptr<operations_research::sat::CpModelBuilder>::~unique_ptr[abi:ne200100](operations_research::sat::CpModelProto **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 24) >= 2uLL)
    {
      operator delete((*(v2 + 26) - (*(v2 + 25) & 1) - 8));
    }

    if (*(v2 + 20) >= 2uLL)
    {
      operator delete((*(v2 + 22) - (*(v2 + 21) & 1) - 8));
    }

    operations_research::sat::CpModelProto::~CpModelProto(v2);
    MEMORY[0x23EED9460]();
  }

  return a1;
}

void ORToolsCpTransposer::~ORToolsCpTransposer(ORToolsCpTransposer *this)
{
  v2 = MEMORY[0x277D82810];
  v3 = *MEMORY[0x277D82810];
  *(this + 31) = *MEMORY[0x277D82810];
  *(this + *(v3 - 24) + 248) = *(v2 + 24);
  MEMORY[0x23EED90E0](this + 256);
  std::ostream::~ostream();
  MEMORY[0x23EED93A0](this + 664);
  std::unique_ptr<operations_research::sat::SatParameters>::~unique_ptr[abi:ne200100](this + 28);
  std::unique_ptr<operations_research::sat::CpModelBuilder>::~unique_ptr[abi:ne200100](this + 27);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 176);
  std::__tree<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>>>::destroy(this + 152, *(this + 20));
  v4 = *(this + 16);
  if (v4)
  {
    *(this + 17) = v4;
    operator delete(v4);
  }

  std::__tree<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>>>::destroy(this + 104, *(this + 14));
  std::__tree<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>>>::destroy(this + 80, *(this + 11));
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned long>>>>::~__hash_table(this + 40);
  std::__tree<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>>>::destroy(this + 16, *(this + 3));
}

void ORToolsCpTransposer::CreateTensorDecisionVariable(ORToolsCpTransposer *this, unint64_t a2)
{
  v28 = a2;
  v5 = this + 160;
  v4 = *(this + 20);
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = this + 160;
  do
  {
    v7 = *(v4 + 4);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * v9];
  }

  while (v4);
  if (v6 == v5 || *(v6 + 4) > a2)
  {
LABEL_9:
    v10 = *CpTransposeGraph::GetRootTensorConstraint(**this, a2);
    CpTransposeGraph::GetTensorDimensions(**this, a2, &v27);
    if (v27.__r_.__value_.__l.__size_ == 1 && (CpTransposeGraph::GetTensorDimensions(**this, a2, __p), v26 == 1) && (v10 & 1) == 0)
    {
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(this + 22, &v28);
      v19 = *(this + 1);
      v27.__r_.__value_.__r.__words[0] = &v28;
      *(std::__tree<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v19, &v28) + 10) = 0;
    }

    else
    {
      *(&v27.__r_.__value_.__s + 23) = 0;
      v27.__r_.__value_.__s.__data_[0] = 0;
      CpGraph::GetTensorName(**this, a2, &v27);
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v27.__r_.__value_.__l.__size_;
      }

      v12 = __p;
      std::string::basic_string[abi:ne200100](__p, size + 22);
      if ((v25 & 0x80u) != 0)
      {
        v12 = __p[0];
      }

      if (size)
      {
        if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v13 = &v27;
        }

        else
        {
          v13 = v27.__r_.__value_.__r.__words[0];
        }

        memmove(v12, v13, size);
      }

      strcpy(v12 + size, ":cw_transpose_decision");
      v20 = operations_research::sat::CpModelBuilder::NewBoolVar(*(this + 27));
      v21 = v14;
      if ((v25 & 0x80u) == 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      if ((v25 & 0x80u) == 0)
      {
        v16 = v25;
      }

      else
      {
        v16 = __p[1];
      }

      v17 = operations_research::sat::BoolVar::WithName(&v20, v15, v16);
      v22[0] = a2;
      v22[1] = v17;
      v23 = v18;
      std::__tree<std::__value_type<unsigned long long,operations_research::sat::BoolVar>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,operations_research::sat::BoolVar>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,operations_research::sat::BoolVar>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,operations_research::sat::BoolVar>>((v5 - 8), v22);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_23C9277A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ORToolsCpTransposer::CreateTensorConstraint(CpTransposeGraph ***this, unint64_t a2)
{
  v18 = a2;
  RootTensorConstraint = CpTransposeGraph::GetRootTensorConstraint(**this, a2);
  v4 = *RootTensorConstraint;
  if (*(RootTensorConstraint + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, RootTensorConstraint[1], RootTensorConstraint[2]);
    if (!v4)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v17 = *(RootTensorConstraint + 1);
    if (!v4)
    {
      goto LABEL_20;
    }
  }

  v5 = this[27];
  v10[0] = &v18;
  v6 = std::__tree<std::__value_type<unsigned long long,operations_research::sat::BoolVar>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,operations_research::sat::BoolVar>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,operations_research::sat::BoolVar>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((this + 19), &v18);
  operations_research::sat::LinearExpr::LinearExpr(v13, v6[5], v6[6]);
  operations_research::sat::LinearExpr::LinearExpr(v10, 0);
  v16 = operations_research::sat::CpModelBuilder::AddEquality(v5, v13, v10);
  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v17;
  }

  else
  {
    v7 = v17.__r_.__value_.__r.__words[0];
  }

  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v17.__r_.__value_.__l.__size_;
  }

  operations_research::sat::Constraint::WithName(&v16, v7, size);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }

  v9 = this[1];
  v13[0] = &v18;
  *(std::__tree<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v9, &v18) + 10) = 0;
LABEL_20:
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void sub_23C927934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  _Unwind_Resume(exception_object);
}

void ORToolsCpTransposer::CreateLayerConstraints(ORToolsCpTransposer *this, unint64_t a2)
{
  v175[0] = a2;
  LayerTruthTable = CpTransposeGraph::GetLayerTruthTable(**this, a2);
  v4 = LayerTruthTable;
  if (*(LayerTruthTable + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v174, LayerTruthTable[3], LayerTruthTable[4]);
  }

  else
  {
    v174 = *(LayerTruthTable + 1);
  }

  v171 = 0;
  v172 = 0;
  v173 = 0;
  v168 = 0;
  v169 = 0;
  v170 = 0;
  v165 = 0;
  v166 = 0;
  v167 = 0;
  memset(v164, 0, sizeof(v164));
  v161 = 0u;
  v162 = 0u;
  v163 = 1065353216;
  memset(v159, 0, sizeof(v159));
  v160 = 1065353216;
  v5 = *v4;
  v6 = v4[1];
  if (*v4 == v6)
  {
    v57 = 0;
    v56 = 0;
    __val = 0;
  }

  else
  {
    __val = 0;
    v7 = 0;
    v144 = v4[1];
    do
    {
      v8 = *(v5 + 24);
      v9 = *(v5 + 25);
      v11 = v5[4] == -1 || v5[5] == -1;
      if (*(v5 + 71) < 0)
      {
        std::string::__init_copy_ctor_external(&v154, v5[6], v5[7]);
      }

      else
      {
        v154 = *(v5 + 2);
      }

      if (!(v11 | (v9 == 0) & ~v8))
      {
        __p = 0;
        v150 = 0;
        v151 = 0;
        v12 = *v5;
        v13 = v5[1];
        if (*v5 == v13)
        {
          goto LABEL_48;
        }

        v14 = 0;
        do
        {
          v15 = *v12;
          v158.__r_.__value_.__r.__words[0] = *v12;
          if (!std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(this + 22, &v158))
          {
            v147[0] = v15;
            v158.__r_.__value_.__r.__words[0] = v147;
            v16 = std::__tree<std::__value_type<unsigned long long,operations_research::sat::BoolVar>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,operations_research::sat::BoolVar>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,operations_research::sat::BoolVar>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 152, v147);
            v17 = v16;
            if (*(v12 + 8) == 1)
            {
              v18 = *CpTransposeGraph::GetRootTensorConstraint(**this, v15);
              std::vector<operations_research::sat::IntVar>::push_back[abi:ne200100](&__p, v17 + 5);
              v14 |= v18;
            }

            else
            {
              operations_research::sat::BoolVar::BoolVar(&v158, ~*(v16 + 12), v16[5]);
              v19 = v158.__r_.__value_.__r.__words[1];
              v20 = v150;
              if (v150 >= v151)
              {
                v22 = (v150 - __p) >> 4;
                v23 = v22 + 1;
                if ((v22 + 1) >> 60)
                {
                  std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                }

                v24 = v151 - __p;
                if ((v151 - __p) >> 3 > v23)
                {
                  v23 = v24 >> 3;
                }

                if (v24 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v25 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v25 = v23;
                }

                if (v25)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<operations_research::sat::BoolVar>>(&__p, v25);
                }

                v26 = 16 * v22;
                *v26 = v158.__r_.__value_.__r.__words[0];
                *(v26 + 8) = v19;
                v21 = 16 * v22 + 16;
                v27 = (v26 - (v150 - __p));
                memcpy(v27, __p, v150 - __p);
                v28 = __p;
                __p = v27;
                v150 = v21;
                v151 = 0;
                if (v28)
                {
                  operator delete(v28);
                }
              }

              else
              {
                *v150 = v158.__r_.__value_.__r.__words[0];
                *(v20 + 2) = v19;
                v21 = (v20 + 16);
              }

              v150 = v21;
            }
          }

          v12 += 16;
        }

        while (v12 != v13);
        v29 = __p;
        if (__p == v150)
        {
LABEL_48:
          v6 = v144;
        }

        else
        {
          v30 = (v150 - __p) >> 4;
          v6 = v144;
          do
          {
            v30 ^= (v30 >> 2) + (v30 << 6) + (*(v29 + 2) - 1640531527);
            v29 += 16;
          }

          while (v29 != v150);
          v146.__r_.__value_.__r.__words[0] = v30;
          if ((v14 & 1) == 0 && !std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(v159, &v146))
          {
            std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(v159, &v146);
            v147[0] = operations_research::sat::CpModelBuilder::NewBoolVar(*(this + 27));
            LODWORD(v147[1]) = v31;
            if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v32 = &v154;
            }

            else
            {
              v32 = v154.__r_.__value_.__r.__words[0];
            }

            if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v154.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v154.__r_.__value_.__l.__size_;
            }

            v158.__r_.__value_.__r.__words[0] = operations_research::sat::BoolVar::WithName(v147, v32, size);
            LODWORD(v158.__r_.__value_.__r.__words[1]) = v34;
            v147[0] = operations_research::sat::CpModelBuilder::AddBoolAnd(*(this + 27), __p, (v150 - __p) >> 4);
            operations_research::sat::Constraint::OnlyEnforceIf(v147, v158.__r_.__value_.__l.__data_, v158.__r_.__value_.__r.__words[1]);
            LODWORD(v145.__r_.__value_.__l.__data_) = v158.__r_.__value_.__r.__words[1];
            v147[0] = &v145;
            std::__hash_table<std::__hash_value_type<int,unsigned long>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned long>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned long>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(&v161, &v145)[3] = v7;
            std::vector<operations_research::sat::IntVar>::push_back[abi:ne200100](&v171, &v158);
            v35 = (log2((v5[4] + 1)) * 100.0);
            v36 = v166;
            if (v166 >= v167)
            {
              v38 = v165;
              v39 = v166 - v165;
              v40 = v166 - v165;
              v41 = v40 + 1;
              if ((v40 + 1) >> 61)
              {
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              v42 = v167 - v165;
              if ((v167 - v165) >> 2 > v41)
              {
                v41 = v42 >> 2;
              }

              v43 = v42 >= 0x7FFFFFFFFFFFFFF8;
              v44 = 0x1FFFFFFFFFFFFFFFLL;
              if (!v43)
              {
                v44 = v41;
              }

              if (v44)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(&v165, v44);
              }

              *(8 * v40) = v35;
              v37 = 8 * v40 + 8;
              memcpy(0, v38, v39);
              v45 = v165;
              v165 = 0;
              v166 = v37;
              v167 = 0;
              if (v45)
              {
                operator delete(v45);
              }
            }

            else
            {
              *v166 = v35;
              v37 = (v36 + 1);
            }

            v166 = v37;
            v46 = v5[5];
            v47 = v169;
            if (v169 >= v170)
            {
              v49 = v168;
              v50 = v169 - v168;
              v51 = (v169 - v168) >> 3;
              v52 = v51 + 1;
              if ((v51 + 1) >> 61)
              {
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              v53 = v170 - v168;
              if ((v170 - v168) >> 2 > v52)
              {
                v52 = v53 >> 2;
              }

              v43 = v53 >= 0x7FFFFFFFFFFFFFF8;
              v54 = 0x1FFFFFFFFFFFFFFFLL;
              if (!v43)
              {
                v54 = v52;
              }

              if (v54)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(&v168, v54);
              }

              *(8 * v51) = v46;
              v48 = 8 * v51 + 8;
              memcpy(0, v49, v50);
              v55 = v168;
              v168 = 0;
              v169 = v48;
              v170 = 0;
              if (v55)
              {
                operator delete(v55);
              }
            }

            else
            {
              *v169 = v46;
              v48 = (v47 + 8);
            }

            v169 = v48;
            std::vector<BOOL>::push_back(v164, v5 + 26);
            __val = v7;
          }
        }

        if (__p)
        {
          v150 = __p;
          operator delete(__p);
        }
      }

      if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v154.__r_.__value_.__l.__data_);
      }

      ++v7;
      v5 += 9;
    }

    while (v5 != v6);
    v57 = v171;
    v56 = v172;
  }

  v58 = (v56 - v57) >> 4;
  if (v58)
  {
    if (v58 == 1)
    {
      v59 = &(*v4)[9 * __val];
      if (*(v59 + 71) < 0)
      {
        std::string::__init_copy_ctor_external(&v158, *(v59 + 48), *(v59 + 56));
      }

      else
      {
        v60 = *(v59 + 48);
        v158.__r_.__value_.__r.__words[2] = *(v59 + 64);
        *&v158.__r_.__value_.__l.__data_ = v60;
      }

      v121 = *v59;
      v122 = *(v59 + 8);
      if (*v59 != v122)
      {
        do
        {
          v123 = *v121;
          v154.__r_.__value_.__r.__words[0] = *v121;
          if (!std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(this + 22, &v154) && (*CpTransposeGraph::GetRootTensorConstraint(**this, v123) & 1) == 0)
          {
            __p = v123;
            v154.__r_.__value_.__r.__words[0] = &__p;
            v124 = std::__tree<std::__value_type<unsigned long long,operations_research::sat::BoolVar>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,operations_research::sat::BoolVar>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,operations_research::sat::BoolVar>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 152, &__p);
            v125 = *(v121 + 8);
            v126 = *(this + 27);
            operations_research::sat::LinearExpr::LinearExpr(&v154, v124[5], v124[6]);
            operations_research::sat::LinearExpr::LinearExpr(&__p, v125 == 1);
            v157 = operations_research::sat::CpModelBuilder::AddEquality(v126, &v154, &__p);
            if ((v174.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v127 = HIBYTE(v174.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v127 = v174.__r_.__value_.__l.__size_;
            }

            std::string::basic_string[abi:ne200100](&v146, v127 + 18);
            if ((v146.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v128 = &v146;
            }

            else
            {
              v128 = v146.__r_.__value_.__r.__words[0];
            }

            if (v127)
            {
              if ((v174.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v129 = &v174;
              }

              else
              {
                v129 = v174.__r_.__value_.__r.__words[0];
              }

              memmove(v128, v129, v127);
            }

            strcpy(v128 + v127, ":presolved_to_row_");
            std::to_string(&v145, __val);
            if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v130 = &v145;
            }

            else
            {
              v130 = v145.__r_.__value_.__r.__words[0];
            }

            if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v131 = HIBYTE(v145.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v131 = v145.__r_.__value_.__l.__size_;
            }

            v132 = std::string::append(&v146, v130, v131);
            v133 = *&v132->__r_.__value_.__l.__data_;
            v148 = v132->__r_.__value_.__r.__words[2];
            *v147 = v133;
            v132->__r_.__value_.__l.__size_ = 0;
            v132->__r_.__value_.__r.__words[2] = 0;
            v132->__r_.__value_.__r.__words[0] = 0;
            if (v148 >= 0)
            {
              v134 = v147;
            }

            else
            {
              v134 = v147[0];
            }

            if (v148 >= 0)
            {
              v135 = HIBYTE(v148);
            }

            else
            {
              v135 = v147[1];
            }

            operations_research::sat::Constraint::WithName(&v157, v134, v135);
            if (SHIBYTE(v148) < 0)
            {
              operator delete(v147[0]);
            }

            if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v145.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v146.__r_.__value_.__l.__data_);
            }

            if (v152)
            {
              v153 = v152;
              operator delete(v152);
            }

            if (__p)
            {
              v150 = __p;
              operator delete(__p);
            }

            if (v155)
            {
              v156 = v155;
              operator delete(v155);
            }

            if (v154.__r_.__value_.__r.__words[0])
            {
              v154.__r_.__value_.__l.__size_ = v154.__r_.__value_.__r.__words[0];
              operator delete(v154.__r_.__value_.__l.__data_);
            }
          }

          v121 += 16;
        }

        while (v121 != v122);
      }

      if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
      {
        v136 = v158.__r_.__value_.__r.__words[0];
LABEL_229:
        operator delete(v136);
      }
    }

    else
    {
      v61 = v165;
      v62 = v166;
      if (!memcmp(v165 + 1, v165, v166 - (v165 + 1)))
      {
        v63 = v168;
        v64 = v169;
        v65 = v168 + 8;
        if (!memcmp(v168 + 8, v168, v169 - (v168 + 8)) && v62 != v61)
        {
          v66 = 0;
          v67 = v62 - v61;
          v68 = v164[0];
          if (v67 <= 1)
          {
            v67 = 1;
          }

          do
          {
            v61[v66] += (*&v68[(v66 >> 3) & 0x1FFFFFFFFFFFFFF8] >> v66) & 1;
            ++v66;
          }

          while (v67 != v66);
        }

        v69 = v63;
        if (v63 != v64)
        {
          v69 = v63;
          if (v65 != v64)
          {
            v70 = *v63;
            v69 = v63;
            v71 = v63 + 8;
            do
            {
              v73 = *v71;
              v71 += 8;
              v72 = v73;
              v74 = v70 < v73;
              if (v70 <= v73)
              {
                v70 = v72;
              }

              if (v74)
              {
                v69 = v65;
              }

              v65 = v71;
            }

            while (v71 != v64);
          }
        }

        if (v62 != v61)
        {
          v75 = *v69;
          v76 = v62 - v61;
          if (v76 <= 1)
          {
            v76 = 1;
          }

          do
          {
            v77 = *v63;
            v63 += 8;
            v78 = *v61;
            if (v77 == v75)
            {
              ++v78;
            }

            *v61++ = v78;
            --v76;
          }

          while (v76);
        }
      }

      v79 = *(this + 27);
      operations_research::sat::LinearExpr::Sum(v57, v58, &v154);
      v80 = operations_research::sat::CpModelBuilder::NewConstant(*(this + 27), 1);
      operations_research::sat::LinearExpr::LinearExpr(&__p, v80, v81);
      v147[0] = operations_research::sat::CpModelBuilder::AddEquality(v79, &v154, &__p);
      if ((v174.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v82 = HIBYTE(v174.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v82 = v174.__r_.__value_.__l.__size_;
      }

      v83 = &v158;
      std::string::basic_string[abi:ne200100](&v158, v82 + 6);
      if ((v158.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v83 = v158.__r_.__value_.__r.__words[0];
      }

      if (v82)
      {
        if ((v174.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v84 = &v174;
        }

        else
        {
          v84 = v174.__r_.__value_.__r.__words[0];
        }

        memmove(v83, v84, v82);
      }

      strcpy(v83 + v82, ":mutex");
      if ((v158.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v85 = &v158;
      }

      else
      {
        v85 = v158.__r_.__value_.__r.__words[0];
      }

      if ((v158.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v86 = HIBYTE(v158.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v86 = v158.__r_.__value_.__l.__size_;
      }

      operations_research::sat::Constraint::WithName(v147, v85, v86);
      if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v158.__r_.__value_.__l.__data_);
      }

      if (v152)
      {
        v153 = v152;
        operator delete(v152);
      }

      if (__p)
      {
        v150 = __p;
        operator delete(__p);
      }

      if (v155)
      {
        v156 = v155;
        operator delete(v155);
      }

      if (v154.__r_.__value_.__r.__words[0])
      {
        v154.__r_.__value_.__l.__size_ = v154.__r_.__value_.__r.__words[0];
        operator delete(v154.__r_.__value_.__l.__data_);
      }

      v87 = v165;
      v89 = v165 + 1;
      v88 = *v165;
      if (v165 != v166 && v89 != v166)
      {
        v90 = *v165;
        v91 = v165 + 1;
        v92 = v165;
        v93 = v165 + 1;
        do
        {
          v95 = *v93++;
          v94 = v95;
          if (v95 < v90)
          {
            v90 = v94;
            v92 = v91;
          }

          v91 = v93;
        }

        while (v93 != v166);
        v96 = *v92;
        v97 = v165 + 1;
        do
        {
          v99 = *v97++;
          v98 = v99;
          v100 = v88 < v99;
          if (v88 <= v99)
          {
            v88 = v98;
          }

          if (v100)
          {
            v87 = v89;
          }

          v89 = v97;
        }

        while (v97 != v166);
        v88 = v96;
      }

      v101 = *v87;
      if (v101 >= 6300)
      {
        v102 = 6300;
      }

      else
      {
        v102 = v101;
      }

      v103 = *(this + 30) + v102;
      *(this + 29) += v88;
      *(this + 30) = v103;
      operations_research::Domain::Domain(&v158, v88, v102);
      v104 = operations_research::sat::CpModelBuilder::NewIntVar(*(this + 27), &v158);
      v106 = v105;
      v107 = *(this + 27);
      operations_research::sat::LinearExpr::LinearExpr(&v154, v104, v105);
      operations_research::sat::LinearExpr::WeightedSum(v171, (v172 - v171) >> 4, v165, v166 - v165, &__p);
      v146.__r_.__value_.__r.__words[0] = operations_research::sat::CpModelBuilder::AddEquality(v107, &v154, &__p);
      if ((v174.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v108 = HIBYTE(v174.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v108 = v174.__r_.__value_.__l.__size_;
      }

      v109 = v147;
      std::string::basic_string[abi:ne200100](v147, v108 + 5);
      if (v148 < 0)
      {
        v109 = v147[0];
      }

      if (v108)
      {
        if ((v174.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v110 = &v174;
        }

        else
        {
          v110 = v174.__r_.__value_.__r.__words[0];
        }

        memmove(v109, v110, v108);
      }

      strcpy(v109 + v108, ":cost");
      if (v148 >= 0)
      {
        v111 = v147;
      }

      else
      {
        v111 = v147[0];
      }

      if (v148 >= 0)
      {
        v112 = HIBYTE(v148);
      }

      else
      {
        v112 = v147[1];
      }

      operations_research::sat::Constraint::WithName(&v146, v111, v112);
      if (SHIBYTE(v148) < 0)
      {
        operator delete(v147[0]);
      }

      if (v152)
      {
        v153 = v152;
        operator delete(v152);
      }

      if (__p)
      {
        v150 = __p;
        operator delete(__p);
      }

      if (v155)
      {
        v156 = v155;
        operator delete(v155);
      }

      if (v154.__r_.__value_.__r.__words[0])
      {
        v154.__r_.__value_.__l.__size_ = v154.__r_.__value_.__r.__words[0];
        operator delete(v154.__r_.__value_.__l.__data_);
      }

      v114 = *(this + 17);
      v113 = *(this + 18);
      if (v114 >= v113)
      {
        v116 = *(this + 16);
        v117 = (v114 - v116) >> 4;
        v118 = v117 + 1;
        if ((v117 + 1) >> 60)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v119 = v113 - v116;
        if (v119 >> 3 > v118)
        {
          v118 = v119 >> 3;
        }

        if (v119 >= 0x7FFFFFFFFFFFFFF0)
        {
          v120 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v120 = v118;
        }

        if (v120)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<operations_research::sat::BoolVar>>(this + 128, v120);
        }

        v137 = (16 * v117);
        *v137 = v104;
        v137[1] = v106;
        v115 = 16 * v117 + 16;
        v138 = *(this + 16);
        v139 = *(this + 17) - v138;
        v140 = (16 * v117 - v139);
        memcpy(v140, v138, v139);
        v141 = *(this + 16);
        *(this + 16) = v140;
        *(this + 17) = v115;
        *(this + 18) = 0;
        if (v141)
        {
          operator delete(v141);
        }
      }

      else
      {
        *v114 = v104;
        v114[1] = v106;
        v115 = (v114 + 2);
      }

      *(this + 17) = v115;
      v154.__r_.__value_.__r.__words[0] = v175;
      v142 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned long>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 5, v175);
      if (v142 + 3 != &v161)
      {
        *(v142 + 14) = v163;
        std::__hash_table<std::__hash_value_type<int,unsigned long>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned long>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned long>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned long>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<int,unsigned long>,void *> *>>(v142 + 3, v162, 0);
      }

      if (v158.__r_.__value_.__s.__data_[0])
      {
        v136 = v158.__r_.__value_.__l.__size_;
        goto LABEL_229;
      }
    }
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v159);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&v161);
  if (v164[0])
  {
    operator delete(v164[0]);
  }

  if (v165)
  {
    v166 = v165;
    operator delete(v165);
  }

  if (v168)
  {
    v169 = v168;
    operator delete(v168);
  }

  if (v171)
  {
    v172 = v171;
    operator delete(v171);
  }

  if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v174.__r_.__value_.__l.__data_);
  }
}

void sub_23C9286C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&a56);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&a62);
  v64 = *(v62 - 224);
  if (v64)
  {
    operator delete(v64);
  }

  v65 = *(v62 - 200);
  if (v65)
  {
    *(v62 - 192) = v65;
    operator delete(v65);
  }

  v66 = *(v62 - 176);
  if (v66)
  {
    *(v62 - 168) = v66;
    operator delete(v66);
  }

  v67 = *(v62 - 152);
  if (v67)
  {
    *(v62 - 144) = v67;
    operator delete(v67);
  }

  if (*(v62 - 105) < 0)
  {
    operator delete(*(v62 - 128));
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<BOOL>::push_back(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = std::vector<BOOL>::reserve(result, v7);
    v4 = v3[1];
  }

  v3[1] = v4 + 1;
  v8 = *v3;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *(v8 + 8 * v9) | v10;
  }

  else
  {
    v11 = *(v8 + 8 * v9) & ~v10;
  }

  *(v8 + 8 * v9) = v11;
  return result;
}

void ORToolsCpTransposer::SetObjectiveFunction(ORToolsCpTransposer *this)
{
  operations_research::Domain::Domain(v15, *(this + 29), *(this + 30));
  v2 = operations_research::sat::CpModelBuilder::NewIntVar(*(this + 27), v15);
  v4 = v3;
  v5 = *(this + 27);
  operations_research::sat::LinearExpr::LinearExpr(&v10, v2, v3);
  operations_research::sat::LinearExpr::Sum(*(this + 16), (*(this + 17) - *(this + 16)) >> 4, v7);
  v14 = operations_research::sat::CpModelBuilder::AddEquality(v5, &v10, v7);
  operations_research::sat::Constraint::WithName(&v14, "objective_perf_cost", 0x13uLL);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  v6 = *(this + 27);
  operations_research::sat::LinearExpr::LinearExpr(&v10, v2, v4);
  operations_research::sat::CpModelBuilder::Minimize(v6, &v10);
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v15[0])
  {
    operator delete(v15[1]);
  }
}

void sub_23C928A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  operations_research::sat::LinearExpr::~LinearExpr(va);
  if (*(v8 - 56))
  {
    operator delete(*(v8 - 48));
  }

  _Unwind_Resume(a1);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_23C928D40(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x23EED93A0](v1);
  _Unwind_Resume(a1);
}

void ORToolsCpTransposer::PrintConstraintProblem(ORToolsCpTransposer *this)
{
  if (*(this + 47))
  {
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 31, "[Variables]", 11);
    std::ios_base::getloc((v2 + *(*v2 - 24)));
    v3 = std::locale::use_facet(&__p, MEMORY[0x277D82680]);
    (v3->__vftable[2].~facet_0)(v3, 10);
    std::locale::~locale(&__p);
    std::ostream::put();
    std::ostream::flush();
    v4 = *(this + 27);
    v6 = *(v4 + 24);
    v5 = v4 + 24;
    v7 = (v6 + 7);
    if (v6)
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }

    if (*(v5 + 8))
    {
      v9 = MEMORY[0x277D82680];
      v10 = *v8;
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 31, "vars: ", 6);
      std::to_string(&__p, 0);
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

      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, p_p, size);
      std::ios_base::getloc((v14 + *(*v14 - 24)));
      v15 = std::locale::use_facet(&v40, v9);
      (v15->__vftable[2].~facet_0)(v15, 10);
      std::locale::~locale(&v40);
      std::ostream::put();
      std::ostream::flush();
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      google::protobuf::Message::DebugString(&__p);
    }

    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 31, "\n\n[Constraints]", 15);
    std::ios_base::getloc((v16 + *(*v16 - 24)));
    v17 = std::locale::use_facet(&__p, MEMORY[0x277D82680]);
    (v17->__vftable[2].~facet_0)(v17, 10);
    std::locale::~locale(&__p);
    std::ostream::put();
    std::ostream::flush();
    v18 = *(this + 27);
    v20 = *(v18 + 48);
    v19 = v18 + 48;
    v21 = (v20 + 7);
    if (v20)
    {
      v22 = v21;
    }

    else
    {
      v22 = v19;
    }

    if (*(v19 + 8))
    {
      v23 = MEMORY[0x277D82680];
      v24 = *v22;
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 31, "constraint id: ", 15);
      std::to_string(&__p, 0);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = &__p;
      }

      else
      {
        v26 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v27 = __p.__r_.__value_.__l.__size_;
      }

      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v26, v27);
      std::ios_base::getloc((v28 + *(*v28 - 24)));
      v29 = std::locale::use_facet(&v40, v23);
      (v29->__vftable[2].~facet_0)(v29, 10);
      std::locale::~locale(&v40);
      std::ostream::put();
      std::ostream::flush();
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      google::protobuf::Message::DebugString(&__p);
    }

    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 31, "\n\n[Stats]", 9);
    std::ios_base::getloc((v30 + *(*v30 - 24)));
    v31 = std::locale::use_facet(&__p, MEMORY[0x277D82680]);
    (v31->__vftable[2].~facet_0)(v31, 10);
    std::locale::~locale(&__p);
    std::ostream::put();
    std::ostream::flush();
    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 31, "NodeCount=", 10);
    v33 = MEMORY[0x23EED91A0](v32, *(this + 12));
    std::ios_base::getloc((v33 + *(*v33 - 24)));
    v34 = std::locale::use_facet(&__p, MEMORY[0x277D82680]);
    (v34->__vftable[2].~facet_0)(v34, 10);
    std::locale::~locale(&__p);
    std::ostream::put();
    std::ostream::flush();
    operations_research::sat::CpModelStats(*(this + 27), &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = &__p;
    }

    else
    {
      v35 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v36 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v36 = __p.__r_.__value_.__l.__size_;
    }

    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 31, v35, v36);
    std::ios_base::getloc((v37 + *(*v37 - 24)));
    v38 = std::locale::use_facet(&v40, MEMORY[0x277D82680]);
    (v38->__vftable[2].~facet_0)(v38, 10);
    std::locale::~locale(&v40);
    std::ostream::put();
    std::ostream::flush();
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_23C929444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL ORToolsCpTransposer::TranslateToDecisionMap(ORToolsCpTransposer *this, const operations_research::sat::CpSolverResponse *a2)
{
  v4 = *(a2 + 66);
  if (*(this + 47))
  {
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 31, "\n\n[Solver Status]", 17);
    std::ios_base::getloc((v5 + *(*v5 - 24)));
    v6 = std::locale::use_facet(&v58, MEMORY[0x277D82680]);
    (v6->__vftable[2].~facet_0)(v6, 10);
    std::locale::~locale(&v58);
    std::ostream::put();
    std::ostream::flush();
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 31, "User Time = ", 12);
    v8 = MEMORY[0x23EED9170](v7, *(a2 + 26));
    std::ios_base::getloc((v8 + *(*v8 - 24)));
    v9 = std::locale::use_facet(&v58, MEMORY[0x277D82680]);
    (v9->__vftable[2].~facet_0)(v9, 10);
    std::locale::~locale(&v58);
    std::ostream::put();
    std::ostream::flush();
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 31, "Wall Time = ", 12);
    v11 = MEMORY[0x23EED9170](v10, *(a2 + 25));
    std::ios_base::getloc((v11 + *(*v11 - 24)));
    v12 = std::locale::use_facet(&v58, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&v58);
    std::ostream::put();
    std::ostream::flush();
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 31, "Deterministic Time = ", 21);
    v14 = MEMORY[0x23EED9170](v13, *(a2 + 27));
    std::ios_base::getloc((v14 + *(*v14 - 24)));
    v15 = std::locale::use_facet(&v58, MEMORY[0x277D82680]);
    (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(&v58);
    std::ostream::put();
    std::ostream::flush();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 31, "Status = ", 9);
    v16 = *(a2 + 66);
    if (v16 >= 4)
    {
      if (v16 == 4)
      {
        v17 = "OPTIMAL";
      }

      else
      {
        v17 = "ERROR";
      }
    }

    else
    {
      v17 = off_278BC2E30[v16];
    }

    v18 = strlen(v17);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 31, v17, v18);
    std::ios_base::getloc((v19 + *(*v19 - 24)));
    v20 = std::locale::use_facet(&v58, MEMORY[0x277D82680]);
    (v20->__vftable[2].~facet_0)(v20, 10);
    std::locale::~locale(&v58);
    std::ostream::put();
    std::ostream::flush();
  }

  v21 = v4 == 4 || v4 == 2;
  if (v21)
  {
    if (*(this + 47))
    {
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 31, "\n\n[Solver Result]", 17);
      std::ios_base::getloc((v22 + *(*v22 - 24)));
      v23 = std::locale::use_facet(&v58, MEMORY[0x277D82680]);
      (v23->__vftable[2].~facet_0)(v23, 10);
      std::locale::~locale(&v58);
      std::ostream::put();
      std::ostream::flush();
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 31, "Objective = ", 12);
      v25 = MEMORY[0x23EED9170](v24, *(a2 + 18));
      std::ios_base::getloc((v25 + *(*v25 - 24)));
      v26 = std::locale::use_facet(&v58, MEMORY[0x277D82680]);
      (v26->__vftable[2].~facet_0)(v26, 10);
      std::locale::~locale(&v58);
      std::ostream::put();
      std::ostream::flush();
      v27 = *(this + 19);
      if (v27 != (this + 160))
      {
        v28 = MEMORY[0x277D82680];
        do
        {
          v29 = *(v27 + 5);
          v30 = *(v27 + 6);
          operations_research::sat::BoolVar::Name((v27 + 40), &v58);
          if ((v60 & 0x80u) == 0)
          {
            locale = &v58;
          }

          else
          {
            locale = v58.__locale_;
          }

          if ((v60 & 0x80u) == 0)
          {
            v32 = v60;
          }

          else
          {
            v32 = v59;
          }

          v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 31, locale, v32);
          v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, " = ", 3);
          v35 = operations_research::sat::SolutionBooleanValue(a2, v29, v30);
          std::to_string(&v57, v35);
          if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v36 = &v57;
          }

          else
          {
            v36 = v57.__r_.__value_.__r.__words[0];
          }

          if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v57.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v57.__r_.__value_.__l.__size_;
          }

          v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v36, size);
          std::ios_base::getloc((v38 + *(*v38 - 24)));
          v39 = std::locale::use_facet(&v61, v28);
          (v39->__vftable[2].~facet_0)(v39, 10);
          std::locale::~locale(&v61);
          std::ostream::put();
          std::ostream::flush();
          if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v57.__r_.__value_.__l.__data_);
          }

          if (v60 < 0)
          {
            operator delete(v58.__locale_);
          }

          v40 = *(v27 + 1);
          if (v40)
          {
            do
            {
              v41 = v40;
              v40 = *v40;
            }

            while (v40);
          }

          else
          {
            do
            {
              v41 = *(v27 + 2);
              v21 = *v41 == v27;
              v27 = v41;
            }

            while (!v21);
          }

          v27 = v41;
        }

        while (v41 != (this + 160));
      }
    }

    v42 = *(this + 19);
    if (v42 != (this + 160))
    {
      do
      {
        v43 = *(v42 + 5);
        v57.__r_.__value_.__r.__words[0] = *(v42 + 4);
        v44 = operations_research::sat::SolutionBooleanValue(a2, v43, *(v42 + 6));
        v45 = *(this + 1);
        v58.__locale_ = &v57;
        *(std::__tree<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v45, &v57) + 10) = v44;
        v46 = *(v42 + 1);
        if (v46)
        {
          do
          {
            v47 = v46;
            v46 = *v46;
          }

          while (v46);
        }

        else
        {
          do
          {
            v47 = *(v42 + 2);
            v21 = *v47 == v42;
            v42 = v47;
          }

          while (!v21);
        }

        v42 = v47;
      }

      while (v47 != (this + 160));
    }

    v48 = *(this + 13);
    if (v48 != (this + 112))
    {
      do
      {
        v58.__locale_ = (v48 + 32);
        for (i = std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned long>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 5, v48 + 4)[5]; i; i = *i)
        {
          if (*(*(a2 + 4) + 8 * *(i + 4)))
          {
            v50 = i[3];
            v51 = *(this + 1);
            v58.__locale_ = (v48 + 32);
            std::__tree<std::__value_type<unsigned long long,unsigned long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v51 + 48, v48 + 4)[5] = v50;
            LODWORD(v50) = *(*CpTransposeGraph::GetLayerTruthTable(**this, *(v48 + 4)) + 72 * i[3] + 25);
            v52 = *(this + 1);
            v58.__locale_ = (v48 + 32);
            *(std::__tree<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v52 + 24, v48 + 4) + 10) = v50;
          }
        }

        v53 = *(v48 + 1);
        if (v53)
        {
          do
          {
            v54 = v53;
            v53 = *v53;
          }

          while (v53);
        }

        else
        {
          do
          {
            v54 = *(v48 + 2);
            v21 = *v54 == v48;
            v48 = v54;
          }

          while (!v21);
        }

        v48 = v54;
      }

      while (v54 != (this + 112));
    }
  }

  return v4 == 2 || v4 == 4;
}

void ORToolsCpTransposer::Execute(ORToolsCpTransposer *this)
{
  v2 = *(this + 10);
  v3 = this + 88;
  if (v2 != this + 88)
  {
    do
    {
      ORToolsCpTransposer::CreateTensorDecisionVariable(this, *(v2 + 4));
      v4 = *(v2 + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v2 + 2);
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
    v2 = *(this + 10);
  }

  if (v2 != v3)
  {
    do
    {
      if (!std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(this + 22, v2 + 4))
      {
        ORToolsCpTransposer::CreateTensorConstraint(this, *(v2 + 4));
      }

      v7 = *(v2 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v2 + 2);
          v6 = *v8 == v2;
          v2 = v8;
        }

        while (!v6);
      }

      v2 = v8;
    }

    while (v8 != v3);
  }

  v9 = *(this + 13);
  if (v9 != (this + 112))
  {
    do
    {
      ORToolsCpTransposer::CreateLayerConstraints(this, *(v9 + 4));
      v10 = *(v9 + 1);
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = *(v9 + 2);
          v6 = *v11 == v9;
          v9 = v11;
        }

        while (!v6);
      }

      v9 = v11;
    }

    while (v11 != (this + 112));
  }

  ORToolsCpTransposer::SetObjectiveFunction(this);
  v12 = *(this + 27);
  ORToolsCpTransposer::PrintConstraintProblem(this);
  v13 = *(this + 28);
  *(v13 + 448) = 0x4014000000000000;
  *(v13 + 28) |= 0x20u;
  v14 = *(this + 28);
  *(v14 + 332) = 1;
  *(v14 + 24) |= 0x80u;
  operations_research::sat::SolveWithParameters(v12, *(this + 28), v15);
}

void sub_23C929F30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ORToolsCpTransposer::~ORToolsCpTransposer(va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v3 == v8)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t std::ofstream::~ofstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x23EED90E0](a1 + 1);

  return std::ostream::~ostream();
}

uint64_t std::vector<BOOL>::reserve(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      std::vector<BOOL>::__vallocate[abi:ne200100](&v2, a2);
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_23C92A180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(a1, v2);
  }

  std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 8);
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(&v18, &v16, &v14, &v13);
}

void std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void operations_research::sat::Model::~Model(operations_research::sat::Model *this)
{
  v2 = *(this + 7);
  v4 = *(this + 8);
  v3 = (this + 56);
  while (v4 != v2)
  {
    v6 = *--v4;
    v5 = v6;
    *v4 = 0;
    if (v6)
    {
      (*(*v5 + 8))(v5);
      v2 = *v3;
    }
  }

  v7 = v3;
  std::vector<std::unique_ptr<operations_research::sat::Model::DeleteInterface>>::__destroy_vector::operator()[abi:ne200100](&v7);
  if (*(this + 3) >= 2uLL)
  {
    operator delete((*(this + 5) - (*(this + 4) & 1) - 8));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::vector<std::unique_ptr<operations_research::sat::Model::DeleteInterface>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<operations_research::sat::Model::DeleteInterface>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<operations_research::sat::Model::DeleteInterface>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void std::__tree<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x23EED9110](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x23EED9120](v13);
  return a1;
}

void sub_23C92A83C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x23EED9120](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x23C92A81CLL);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_23C92AA70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned long>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned long>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned long>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void *std::__tree<unsigned long long>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<unsigned long long>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *std::__tree<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *std::__tree<std::__value_type<unsigned long long,operations_research::sat::BoolVar>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,operations_research::sat::BoolVar>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,operations_research::sat::BoolVar>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,operations_research::sat::BoolVar>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *std::__tree<std::__value_type<unsigned long long,operations_research::sat::BoolVar>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,operations_research::sat::BoolVar>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,operations_research::sat::BoolVar>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<int,unsigned long>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned long>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned long>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned long>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_23C92B9AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned long>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned long>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<int,unsigned long>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned long>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned long>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned long>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<int,unsigned long>,void *> *>>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = *(a2 + 4);
        *(v8 + 4) = v9;
        v8[3] = a2[3];
        v10 = *v8;
        v8[1] = v9;
        inserted = std::__hash_table<std::__hash_value_type<int,unsigned long>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned long>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned long>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned long>>>::__node_insert_multi_prepare(a1, v9, v8 + 4);
        std::__hash_table<std::__hash_value_type<int,unsigned long>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned long>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned long>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned long>>>::__node_insert_multi_perform(a1, v8, inserted);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    std::__hash_table<std::__hash_value_type<int,unsigned long>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned long>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned long>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned long>>>::__emplace_multi<std::pair<int const,unsigned long> const&>();
  }
}

void sub_23C92BAEC(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t std::__hash_table<std::__hash_value_type<int,unsigned long>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned long>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned long>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned long>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    std::__hash_table<std::__hash_value_type<int,unsigned long>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned long>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned long>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned long>>>::__rehash<false>(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = *(v16 + 8);
    if (v14.u32[0] > 1uLL)
    {
      v20 = *(v16 + 8);
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && *(v16 + 16) == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void *std::__hash_table<std::__hash_value_type<int,unsigned long>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned long>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned long>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned long>>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void std::__hash_table<std::__hash_value_type<int,unsigned long>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned long>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned long>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned long>>>::__rehash<false>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<int,unsigned long>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned long>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned long>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned long>>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<int,unsigned long>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned long>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned long>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned long>>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x23EED9320](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_23C92C0F4(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

void *std::__tree<std::__value_type<unsigned long long,unsigned long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void CpGraph::~CpGraph(void **this)
{
  if (*(this + 335) < 0)
  {
    operator delete(this[39]);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::~__hash_table((this + 34));
  std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::~__hash_table((this + 29));
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table((this + 24));
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table((this + 19));
  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  v2 = this[13];
  if (v2)
  {
    this[14] = v2;
    operator delete(v2);
  }

  std::__hash_table<std::__hash_value_type<NodeKey<unsigned long long>,std::vector<NodeKey<unsigned long long>>>,std::__unordered_map_hasher<NodeKey<unsigned long long>,std::__hash_value_type<NodeKey<unsigned long long>,std::vector<NodeKey<unsigned long long>>>,std::hash<NodeKey<unsigned long long>>,std::equal_to<NodeKey<unsigned long long>>,true>,std::__unordered_map_equal<NodeKey<unsigned long long>,std::__hash_value_type<NodeKey<unsigned long long>,std::vector<NodeKey<unsigned long long>>>,std::equal_to<NodeKey<unsigned long long>>,std::hash<NodeKey<unsigned long long>>,true>,std::allocator<std::__hash_value_type<NodeKey<unsigned long long>,std::vector<NodeKey<unsigned long long>>>>>::~__hash_table((this + 8));
  std::__hash_table<std::__hash_value_type<NodeKey<unsigned long long>,std::vector<NodeKey<unsigned long long>>>,std::__unordered_map_hasher<NodeKey<unsigned long long>,std::__hash_value_type<NodeKey<unsigned long long>,std::vector<NodeKey<unsigned long long>>>,std::hash<NodeKey<unsigned long long>>,std::equal_to<NodeKey<unsigned long long>>,true>,std::__unordered_map_equal<NodeKey<unsigned long long>,std::__hash_value_type<NodeKey<unsigned long long>,std::vector<NodeKey<unsigned long long>>>,std::equal_to<NodeKey<unsigned long long>>,std::hash<NodeKey<unsigned long long>>,true>,std::allocator<std::__hash_value_type<NodeKey<unsigned long long>,std::vector<NodeKey<unsigned long long>>>>>::~__hash_table((this + 3));
  std::__tree<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>>>::destroy(this, this[1]);
}

BOOL CpGraph::GetTensorName(uint64_t a1, unint64_t a2, std::string *a3)
{
  v7 = a2;
  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((a1 + 272), &v7);
  v5 = v4;
  if (v4)
  {
    std::string::operator=(a3, v4 + 1);
  }

  return v5 != 0;
}

BOOL CpGraph::GetLayerName(uint64_t a1, unint64_t a2, std::string *a3)
{
  v7 = a2;
  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((a1 + 232), &v7);
  v5 = v4;
  if (v4)
  {
    std::string::operator=(a3, v4 + 1);
  }

  return v5 != 0;
}

void CpGraph::GetTensors(CpGraph *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v2 = this + 8;
  v3 = *this;
  if (*this != (this + 8))
  {
    do
    {
      v9 = *(v3 + 4);
      v10 = v9;
      if (std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(this + 34, &v10))
      {
        std::vector<long long>::push_back[abi:ne200100](a2, &v9);
      }

      v6 = *(v3 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v3 + 2);
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v2);
  }
}

void sub_23C92C574(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *CpGraph::GetOutputTensor(CpGraph *this, unint64_t a2)
{
  v7 = a2;
  result = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(this + 29, &v7);
  if (result)
  {
    v7 = a2;
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(this + 3, &v7);
    v6 = this + 104;
    if (v5)
    {
      v6 = (v5 + 3);
    }

    return **v6;
  }

  return result;
}

void *CpGraph::GetInputTensors@<X0>(CpGraph *this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v12 = a2;
  result = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(this + 29, &v12);
  if (result)
  {
    v12 = a2;
    v7 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(this + 8, &v12);
    v8 = (this + 104);
    if (v7)
    {
      v8 = v7 + 3;
    }

    v9 = *v8;
    v10 = v8[1];
    v11 = (v10 - *v8) >> 3;
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<NodeKey<unsigned long long> const*>,std::__wrap_iter<NodeKey<unsigned long long> const*>>(a3, v9, v10, v11);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

BOOL CpGraph::GetLayerSchedule(CpGraph *this, unint64_t a2, uint64_t *a3)
{
  v6 = a2;
  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(this + 24, &v6);
  if (v4)
  {
    *a3 = v4[3];
  }

  return v4 != 0;
}

void CpGraph::GetLayers(CpGraph *this@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = this + 8;
  v7 = *this;
  if (*this != (this + 8))
  {
    do
    {
      v15 = *(v7 + 4);
      v16 = v15;
      if (std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(this + 29, &v16))
      {
        std::vector<long long>::push_back[abi:ne200100](a3, &v15);
      }

      v8 = *(v7 + 1);
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = *(v7 + 2);
          v10 = *v9 == v7;
          v7 = v9;
        }

        while (!v10);
      }

      v7 = v9;
    }

    while (v9 != v6);
  }

  if (a2)
  {
    v11 = *a3;
    v12 = *(a3 + 8);
    v13 = 126 - 2 * __clz((v12 - *a3) >> 3);
    v10 = v12 == *a3;
    v16 = this;
    if (v10)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    std::__introsort<std::_ClassicAlgPolicy,CpGraph::GetLayers(BOOL)::$_0 &,unsigned long long *,false>(v11, v12, &v16, v14, 1);
  }
}

void sub_23C92C878(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL CpGraph::GetTensorLiverange(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  v6 = a2;
  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((a1 + 152), &v6);
  if (v4)
  {
    *a3 = *(v4 + 3);
  }

  return v4 != 0;
}

uint64_t std::__hash_table<std::__hash_value_type<NodeKey<unsigned long long>,std::vector<NodeKey<unsigned long long>>>,std::__unordered_map_hasher<NodeKey<unsigned long long>,std::__hash_value_type<NodeKey<unsigned long long>,std::vector<NodeKey<unsigned long long>>>,std::hash<NodeKey<unsigned long long>>,std::equal_to<NodeKey<unsigned long long>>,true>,std::__unordered_map_equal<NodeKey<unsigned long long>,std::__hash_value_type<NodeKey<unsigned long long>,std::vector<NodeKey<unsigned long long>>>,std::equal_to<NodeKey<unsigned long long>>,std::hash<NodeKey<unsigned long long>>,true>,std::allocator<std::__hash_value_type<NodeKey<unsigned long long>,std::vector<NodeKey<unsigned long long>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<NodeKey<unsigned long long>,std::vector<NodeKey<unsigned long long>>>,std::__unordered_map_hasher<NodeKey<unsigned long long>,std::__hash_value_type<NodeKey<unsigned long long>,std::vector<NodeKey<unsigned long long>>>,std::hash<NodeKey<unsigned long long>>,std::equal_to<NodeKey<unsigned long long>>,true>,std::__unordered_map_equal<NodeKey<unsigned long long>,std::__hash_value_type<NodeKey<unsigned long long>,std::vector<NodeKey<unsigned long long>>>,std::equal_to<NodeKey<unsigned long long>>,std::hash<NodeKey<unsigned long long>>,true>,std::allocator<std::__hash_value_type<NodeKey<unsigned long long>,std::vector<NodeKey<unsigned long long>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<NodeKey<unsigned long long>,std::vector<NodeKey<unsigned long long>>>,std::__unordered_map_hasher<NodeKey<unsigned long long>,std::__hash_value_type<NodeKey<unsigned long long>,std::vector<NodeKey<unsigned long long>>>,std::hash<NodeKey<unsigned long long>>,std::equal_to<NodeKey<unsigned long long>>,true>,std::__unordered_map_equal<NodeKey<unsigned long long>,std::__hash_value_type<NodeKey<unsigned long long>,std::vector<NodeKey<unsigned long long>>>,std::equal_to<NodeKey<unsigned long long>>,std::hash<NodeKey<unsigned long long>>,true>,std::allocator<std::__hash_value_type<NodeKey<unsigned long long>,std::vector<NodeKey<unsigned long long>>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<NodeKey<unsigned long long> const*>,std::__wrap_iter<NodeKey<unsigned long long> const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23C92C9C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned long long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(a1, a2);
  }

  std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,CpGraph::GetLayers(BOOL)::$_0 &,unsigned long long *,false>(uint64_t result, unint64_t *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v152 = result;
  while (2)
  {
    v145 = a2 - 2;
    v147 = a2 - 1;
    v144 = a2 - 3;
    v9 = v152;
    v150 = a2;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v10 = a2 - v9;
          v11 = v10 - 2;
          v152 = v9;
          if (v10 > 2)
          {
            v12 = v9;
            switch(v10)
            {
              case 3:
                return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,CpGraph::GetLayers(BOOL)::$_0 &,unsigned long long *,0>(v9, v9 + 1, v147, a3);
              case 4:
                return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,CpGraph::GetLayers(BOOL)::$_0 &,unsigned long long *,0>(v9, v9 + 1, v9 + 2, v147, a3);
              case 5:
                return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,CpGraph::GetLayers(BOOL)::$_0 &,unsigned long long *,0>(v9, v9 + 1, v9 + 2, v9 + 3, v147, a3);
            }
          }

          else
          {
            if (v10 < 2)
            {
              return result;
            }

            v12 = v9;
            if (v10 == 2)
            {
              v65 = *(a2 - 1);
              v153 = *v9;
              v154 = v65;
              v66 = *a3;
              v67 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((*a3 + 192), &v154);
              result = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v66 + 192), &v153);
              if (v67[3] < *(result + 24))
              {
                v68 = *v9;
                *v9 = *(a2 - 1);
                *(a2 - 1) = v68;
              }

              return result;
            }
          }

          if (v10 <= 23)
          {
            v69 = v12 + 1;
            v71 = v12 == a2 || v69 == a2;
            if (a5)
            {
              if (!v71)
              {
                v72 = 0;
                v73 = v9;
                do
                {
                  v75 = *v73;
                  v74 = v73[1];
                  v73 = v69;
                  v153 = v75;
                  v154 = v74;
                  v76 = *a3;
                  v77 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((*a3 + 192), &v154);
                  result = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v76 + 192), &v153);
                  if (v77[3] < *(result + 24))
                  {
                    v78 = *v73;
                    v79 = v72;
                    while (1)
                    {
                      *(v9 + v79 + 8) = *(v9 + v79);
                      if (!v79)
                      {
                        break;
                      }

                      v153 = *(v9 + v79 - 8);
                      v154 = v78;
                      v80 = *a3;
                      v81 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((*a3 + 192), &v154);
                      result = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v80 + 192), &v153);
                      v79 -= 8;
                      if (v81[3] >= *(result + 24))
                      {
                        v82 = (v9 + v79 + 8);
                        goto LABEL_80;
                      }
                    }

                    v82 = v9;
LABEL_80:
                    *v82 = v78;
                    a2 = v150;
                  }

                  v69 = v73 + 1;
                  v72 += 8;
                }

                while (v73 + 1 != a2);
              }
            }

            else if (!v71)
            {
              do
              {
                v134 = v152[1];
                v135 = v69;
                v153 = *v152;
                v154 = v134;
                v136 = *a3;
                v137 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((*a3 + 192), &v154);
                result = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v136 + 192), &v153);
                if (v137[3] < *(result + 24))
                {
                  v138 = *v135;
                  v139 = v135;
                  do
                  {
                    v140 = v139;
                    v141 = *--v139;
                    *v140 = v141;
                    v153 = *(v140 - 2);
                    v154 = v138;
                    v142 = *a3;
                    v143 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((*a3 + 192), &v154);
                    result = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v142 + 192), &v153);
                  }

                  while (v143[3] < *(result + 24));
                  *v139 = v138;
                }

                v152 = v135;
                v69 = v135 + 1;
              }

              while (v135 + 1 != a2);
            }

            return result;
          }

          if (!a4)
          {
            if (v12 != a2)
            {
              v83 = v11 >> 1;
              v84 = v11 >> 1;
              v85 = v9;
              do
              {
                v86 = v84;
                if (v83 >= v84)
                {
                  v87 = (2 * v84) | 1;
                  v88 = &v85[v87];
                  v89 = 2 * v84 + 2;
                  v146 = v84;
                  if (v89 < v10)
                  {
                    v90 = *v88;
                    v153 = v88[1];
                    v154 = v90;
                    v91 = *a3;
                    v92 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((*a3 + 192), &v154);
                    v93 = (v91 + 192);
                    v86 = v146;
                    if (v92[3] < std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(v93, &v153)[3])
                    {
                      ++v88;
                      v87 = v89;
                    }
                  }

                  v94 = &v85[v86];
                  v95 = *v88;
                  v153 = *v94;
                  v154 = v95;
                  v96 = *a3;
                  v97 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((*a3 + 192), &v154);
                  result = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v96 + 192), &v153);
                  if (v97[3] >= *(result + 24))
                  {
                    v148 = *v94;
                    do
                    {
                      v98 = v88;
                      *v94 = *v88;
                      if (v83 < v87)
                      {
                        break;
                      }

                      v99 = (2 * v87) | 1;
                      v88 = &v85[v99];
                      if (2 * v87 + 2 < v10)
                      {
                        v100 = *v88;
                        v153 = v88[1];
                        v154 = v100;
                        v101 = v83;
                        v102 = *a3;
                        v103 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((*a3 + 192), &v154);
                        v104 = (v102 + 192);
                        v83 = v101;
                        v85 = v152;
                        if (v103[3] < std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(v104, &v153)[3])
                        {
                          ++v88;
                          v99 = 2 * v87 + 2;
                        }
                      }

                      v105 = *v88;
                      v153 = v148;
                      v154 = v105;
                      v106 = *a3;
                      v107 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((*a3 + 192), &v154);
                      result = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v106 + 192), &v153);
                      v94 = v98;
                      v87 = v99;
                    }

                    while (v107[3] >= *(result + 24));
                    v86 = v146;
                    *v98 = v148;
                  }
                }

                v84 = v86 - 1;
              }

              while (v86);
              v108 = v150;
              do
              {
                v109 = 0;
                v110 = v152;
                v149 = *v152;
                v151 = v108;
                do
                {
                  v111 = &v110[v109];
                  v112 = v111 + 1;
                  v113 = (2 * v109) | 1;
                  v114 = 2 * v109 + 2;
                  if (v114 >= v10)
                  {
                    v109 = (2 * v109) | 1;
                  }

                  else
                  {
                    v116 = v111[2];
                    v115 = v111 + 2;
                    v117 = *(v115 - 1);
                    v153 = v116;
                    v154 = v117;
                    v118 = *a3;
                    v119 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((*a3 + 192), &v154);
                    result = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v118 + 192), &v153);
                    if (v119[3] >= *(result + 24))
                    {
                      v109 = v113;
                    }

                    else
                    {
                      v112 = v115;
                      v109 = v114;
                    }
                  }

                  *v110 = *v112;
                  v110 = v112;
                }

                while (v109 <= ((v10 - 2) >> 1));
                v120 = v151 - 1;
                if (v112 == v151 - 1)
                {
                  v108 = v151 - 1;
                  *v112 = v149;
                }

                else
                {
                  *v112 = *v120;
                  v108 = v151 - 1;
                  *v120 = v149;
                  v121 = (v112 - v152 + 8) >> 3;
                  v122 = v121 < 2;
                  v123 = v121 - 2;
                  if (!v122)
                  {
                    v124 = v123 >> 1;
                    v125 = &v152[v123 >> 1];
                    v126 = *v125;
                    v153 = *v112;
                    v154 = v126;
                    v127 = *a3;
                    v128 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((*a3 + 192), &v154);
                    result = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v127 + 192), &v153);
                    if (v128[3] < *(result + 24))
                    {
                      v129 = *v112;
                      do
                      {
                        v130 = v125;
                        *v112 = *v125;
                        if (!v124)
                        {
                          break;
                        }

                        v124 = (v124 - 1) >> 1;
                        v125 = &v152[v124];
                        v131 = *v125;
                        v153 = v129;
                        v154 = v131;
                        v132 = *a3;
                        v133 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((*a3 + 192), &v154);
                        result = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v132 + 192), &v153);
                        v112 = v130;
                      }

                      while (v133[3] < *(result + 24));
                      *v130 = v129;
                    }
                  }
                }

                v122 = v10-- <= 2;
              }

              while (!v122);
            }

            return result;
          }

          v13 = &v12[v10 >> 1];
          if (v10 < 0x81)
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,CpGraph::GetLayers(BOOL)::$_0 &,unsigned long long *,0>(&v12[v10 >> 1], v12, v147, a3);
          }

          else
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,CpGraph::GetLayers(BOOL)::$_0 &,unsigned long long *,0>(v12, &v12[v10 >> 1], v147, a3);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,CpGraph::GetLayers(BOOL)::$_0 &,unsigned long long *,0>(v12 + 1, v13 - 1, v145, a3);
            v14 = &v12[(v10 >> 1) + 1];
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,CpGraph::GetLayers(BOOL)::$_0 &,unsigned long long *,0>(v152 + 2, v14, v144, a3);
            v12 = v152;
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,CpGraph::GetLayers(BOOL)::$_0 &,unsigned long long *,0>(v13 - 1, v13, v14, a3);
            v15 = *v152;
            *v152 = *v13;
            *v13 = v15;
          }

          --a4;
          if (a5)
          {
            break;
          }

          v16 = *(v12 - 1);
          v153 = *v12;
          v154 = v16;
          v17 = *a3;
          v18 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((*a3 + 192), &v154);
          if (v18[3] < std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v17 + 192), &v153)[3])
          {
            break;
          }

          v44 = *v12;
          v153 = *v147;
          v154 = v44;
          v45 = *a3;
          v46 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((*a3 + 192), &v154);
          result = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v45 + 192), &v153);
          if (v46[3] >= *(result + 24))
          {
            v50 = v12 + 1;
            do
            {
              v9 = v50;
              if (v50 >= a2)
              {
                break;
              }

              ++v50;
              v153 = *v9;
              v154 = v44;
              v51 = *a3;
              v52 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((*a3 + 192), &v154);
              result = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v51 + 192), &v153);
            }

            while (v52[3] >= *(result + 24));
          }

          else
          {
            v9 = v12;
            do
            {
              v47 = v9[1];
              ++v9;
              v153 = v47;
              v154 = v44;
              v48 = *a3;
              v49 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((*a3 + 192), &v154);
              result = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v48 + 192), &v153);
            }

            while (v49[3] >= *(result + 24));
          }

          v53 = a2;
          if (v9 < a2)
          {
            v53 = a2;
            do
            {
              v54 = *--v53;
              v153 = v54;
              v154 = v44;
              v55 = *a3;
              v56 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((*a3 + 192), &v154);
              result = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v55 + 192), &v153);
            }

            while (v56[3] < *(result + 24));
          }

          while (v9 < v53)
          {
            v57 = *v9;
            *v9 = *v53;
            *v53 = v57;
            do
            {
              v58 = v9[1];
              ++v9;
              v153 = v58;
              v154 = v44;
              v59 = *a3;
              v60 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((*a3 + 192), &v154);
            }

            while (v60[3] >= std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v59 + 192), &v153)[3]);
            do
            {
              v61 = *--v53;
              v153 = v61;
              v154 = v44;
              v62 = *a3;
              v63 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((*a3 + 192), &v154);
              result = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v62 + 192), &v153);
            }

            while (v63[3] < *(result + 24));
          }

          v64 = v9 - 1;
          if (v9 - 1 != v152)
          {
            *v152 = *v64;
          }

          a5 = 0;
          *v64 = v44;
        }

        v19 = 0;
        v20 = *v12;
        do
        {
          v21 = v12[v19 + 1];
          v153 = v20;
          v154 = v21;
          v22 = *a3;
          v23 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((*a3 + 192), &v154);
          ++v19;
        }

        while (v23[3] < std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v22 + 192), &v153)[3]);
        v24 = &v12[v19];
        v25 = v150;
        if (v19 == 1)
        {
          v25 = v150;
          do
          {
            if (v24 >= v25)
            {
              break;
            }

            v29 = *--v25;
            v153 = v20;
            v154 = v29;
            v30 = *a3;
            v31 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((*a3 + 192), &v154);
          }

          while (v31[3] >= std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v30 + 192), &v153)[3]);
        }

        else
        {
          do
          {
            v26 = *--v25;
            v153 = v20;
            v154 = v26;
            v27 = *a3;
            v28 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((*a3 + 192), &v154);
          }

          while (v28[3] >= std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v27 + 192), &v153)[3]);
        }

        if (v24 >= v25)
        {
          v41 = v24 - 1;
        }

        else
        {
          v32 = v24;
          v33 = v25;
          do
          {
            v34 = *v32;
            *v32 = *v33;
            *v33 = v34;
            do
            {
              v35 = v32[1];
              ++v32;
              v153 = v20;
              v154 = v35;
              v36 = *a3;
              v37 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((*a3 + 192), &v154);
            }

            while (v37[3] < std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v36 + 192), &v153)[3]);
            do
            {
              v38 = *--v33;
              v153 = v20;
              v154 = v38;
              v39 = *a3;
              v40 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((*a3 + 192), &v154);
            }

            while (v40[3] >= std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v39 + 192), &v153)[3]);
          }

          while (v32 < v33);
          v41 = v32 - 1;
        }

        if (v41 != v152)
        {
          *v152 = *v41;
        }

        *v41 = v20;
        v42 = v24 >= v25;
        a2 = v150;
        if (v42)
        {
          break;
        }

LABEL_39:
        result = std::__introsort<std::_ClassicAlgPolicy,CpGraph::GetLayers(BOOL)::$_0 &,unsigned long long *,false>(v152, v41, a3, a4, a5 & 1);
        a5 = 0;
        v9 = v41 + 1;
      }

      v43 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CpGraph::GetLayers(BOOL)::$_0 &,unsigned long long *>(v152, v41, a3);
      v9 = v41 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CpGraph::GetLayers(BOOL)::$_0 &,unsigned long long *>(v41 + 1, v150, a3);
      if (result)
      {
        break;
      }

      if (!v43)
      {
        goto LABEL_39;
      }
    }

    a2 = v41;
    if (!v43)
    {
      continue;
    }

    return result;
  }
}

void *std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,CpGraph::GetLayers(BOOL)::$_0 &,unsigned long long *,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  v28 = *a1;
  v29 = v8;
  v9 = *a4;
  v10 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((*a4 + 192), &v29);
  v11 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v9 + 192), &v28);
  v12 = *a3;
  v13 = *a2;
  if (v10[3] >= v11[3])
  {
    v28 = *a2;
    v29 = v12;
    v18 = *a4;
    v19 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((*a4 + 192), &v29);
    result = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v18 + 192), &v28);
    if (v19[3] < result[3])
    {
      v20 = *a2;
      *a2 = *a3;
      *a3 = v20;
      v21 = *a2;
      v28 = *a1;
      v29 = v21;
      v22 = *a4;
      v23 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v22 + 192), &v29);
      result = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v22 + 192), &v28);
      if (v23[3] < result[3])
      {
        v24 = *a1;
        *a1 = *a2;
        *a2 = v24;
      }
    }
  }

  else
  {
    v28 = *a2;
    v29 = v12;
    v14 = *a4;
    v15 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((*a4 + 192), &v29);
    result = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v14 + 192), &v28);
    v17 = *a1;
    if (v15[3] >= result[3])
    {
      *a1 = *a2;
      *a2 = v17;
      v25 = *a3;
      v28 = v17;
      v29 = v25;
      v26 = *a4;
      v27 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v26 + 192), &v29);
      result = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v26 + 192), &v28);
      if (v27[3] >= result[3])
      {
        return result;
      }

      v17 = *a2;
      *a2 = *a3;
    }

    else
    {
      *a1 = *a3;
    }

    *a3 = v17;
  }

  return result;
}

void *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,CpGraph::GetLayers(BOOL)::$_0 &,unsigned long long *,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,CpGraph::GetLayers(BOOL)::$_0 &,unsigned long long *,0>(a1, a2, a3, a5);
  v10 = *a4;
  v23 = *a3;
  v24 = v10;
  v11 = *a5;
  v12 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((*a5 + 192), &v24);
  result = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v11 + 192), &v23);
  if (v12[3] < result[3])
  {
    v14 = *a3;
    *a3 = *a4;
    *a4 = v14;
    v15 = *a3;
    v23 = *a2;
    v24 = v15;
    v16 = *a5;
    v17 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((*a5 + 192), &v24);
    result = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v16 + 192), &v23);
    if (v17[3] < result[3])
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      v19 = *a2;
      v23 = *a1;
      v24 = v19;
      v20 = *a5;
      v21 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((*a5 + 192), &v24);
      result = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v20 + 192), &v23);
      if (v21[3] < result[3])
      {
        v22 = *a1;
        *a1 = *a2;
        *a2 = v22;
      }
    }
  }

  return result;
}