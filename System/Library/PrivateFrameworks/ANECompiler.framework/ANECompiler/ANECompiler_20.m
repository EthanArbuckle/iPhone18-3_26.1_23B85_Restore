void sub_23CA01960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CA01974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CA01988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *__p, uint64_t a14, char a15, void *a16, uint64_t a17, char a18, void *a19, uint64_t a20, char a21, void *a22, uint64_t a23, char a24, void *a25, uint64_t a26, char a27, void *a28)
{
  if (a12)
  {
    operator delete(__p);
  }

  if ((a15 & 1) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(a16);
  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::unique_ptr<operations_research::sat::CompiledConstraint>>::emplace_back<operations_research::sat::CompiledNoOverlapConstraint *&>(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 3;
    v9 = (v7 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    *(8 * v8) = *a2;
    v5 = 8 * v8 + 8;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
  return v5 - 8;
}

uint64_t absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::sat::ConstraintProto::ConstraintCase,0>(uint64_t a1, int *a2)
{
  v6 = a1;
  v3 = *a2;
  if (*a2 < 1)
  {
    if (!v3)
    {
      absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(0, 0, "signed_value != 0");
    }

    v4 = (2 * ~v3) | 1;
  }

  else
  {
    v4 = 2 * v3 - 2;
  }

  operations_research::sat::AbslStringify<absl::lts_20240722::log_internal::StringifySink>(&v6, v4);
  return a1;
}

uint64_t operations_research::sat::LsEvaluator::ReduceObjectiveBounds(operations_research::sat::LsEvaluator *this, uint64_t a2, uint64_t a3)
{
  if ((*(*this + 16) & 1) == 0)
  {
    return 0;
  }

  result = operations_research::sat::LinearIncrementalEvaluator::ReduceBounds((this + 176), 0, a2, a3);
  if (result)
  {
    operations_research::sat::LsEvaluator::UpdateViolatedList(this, 0);
    return 1;
  }

  return result;
}

void operations_research::sat::LsEvaluator::UpdateViolatedList(operations_research::sat::LsEvaluator *this, int a2)
{
  v28 = a2;
  v2 = *(this + 115);
  v3 = *(v2 + 4 * a2);
  v4 = *(this + 44);
  v5 = __OFSUB__(a2, v4);
  v6 = a2 - v4;
  if (v6 < 0 != v5)
  {
    if (*(*(this + 78) + 4 * a2) <= 0 && *(*(this + 75) + 8 * a2) >= 1)
    {
      goto LABEL_11;
    }
  }

  else if (*(*(*(this + 100) + 8 * v6) + 16) >= 1)
  {
LABEL_11:
    if (v3 != -1)
    {
      return;
    }

    *(v2 + 4 * a2) = (*(this + 119) - *(this + 118)) >> 2;
    std::vector<int>::push_back[abi:ne200100](this + 944, &v28);
    v16 = *(this + 44);
    if (v28 >= v16)
    {
      v24 = *(this + 106) + 24 * (v28 - v16);
      v19 = *v24;
      v18 = (*(v24 + 8) - *v24) >> 2;
    }

    else
    {
      v17 = (*(this + 45) + 20 * v28);
      LODWORD(v18) = v17[2] + v17[1] + v17[4];
      if (!v18)
      {
        return;
      }

      v19 = (*(this + 48) + 4 * *v17);
      v18 = v18;
    }

    if (v18)
    {
      v25 = *(this + 121);
      v26 = 4 * v18;
      do
      {
        v27 = *v19++;
        ++*(v25 + 4 * v27);
        v26 -= 4;
      }

      while (v26);
    }

    return;
  }

  if (v3 == -1)
  {
    return;
  }

  v7 = *(this + 119);
  v8 = *(v7 - 4);
  *(v2 + 4 * v8) = v3;
  *(*(this + 118) + 4 * v3) = v8;
  *(v2 + 4 * a2) = -1;
  *(this + 119) = v7 - 4;
  v9 = *(this + 44);
  v5 = __OFSUB__(a2, v9);
  v10 = a2 - v9;
  if (v10 < 0 != v5)
  {
    v11 = (*(this + 45) + 20 * a2);
    v12 = v11[2] + v11[1] + v11[4];
    if (!v12)
    {
      return;
    }

    v13 = (*(this + 48) + 4 * *v11);
    v14 = v12;
  }

  else
  {
    v20 = *(this + 106) + 24 * v10;
    v13 = *v20;
    v14 = (*(v20 + 8) - *v20) >> 2;
    if (!v14)
    {
      return;
    }
  }

  v21 = *(this + 121);
  v22 = 4 * v14;
  do
  {
    v23 = *v13++;
    --*(v21 + 4 * v23);
    v22 -= 4;
  }

  while (v22);
}

void operations_research::sat::LsEvaluator::ComputeAllViolations(operations_research::sat::LsEvaluator *this)
{
  v2 = *(this + 112);
  v3 = *(this + 113) - v2;
  operations_research::sat::LinearIncrementalEvaluator::ComputeInitialActivities(this + 44, v2);
  v4 = *(this + 100);
  for (i = *(this + 101); v4 != i; v6[2] = (*(*v6 + 16))(v6))
  {
    v6 = *v4++;
    v7 = (*(this + 113) - *(this + 112)) >> 3;
  }

  v8 = *(*this + 32);
  __u = 0;
  std::vector<int>::assign((this + 968), v8, &__u);
  *(this + 119) = *(this + 118);
  v9 = (*(this + 44) + ((*(this + 101) - *(this + 100)) >> 3));
  v12 = -1;
  std::vector<int>::assign((this + 920), v9, &v12);
  v10 = *(this + 44) + ((*(this + 101) - *(this + 100)) >> 3);
  if (v10 >= 1)
  {
    for (j = 0; j != v10; ++j)
    {
      operations_research::sat::LsEvaluator::UpdateViolatedList(this, j);
    }
  }
}

void operations_research::sat::LsEvaluator::RecomputeViolatedList(operations_research::sat::LsEvaluator *this, char a2)
{
  v4 = *(*this + 32);
  __u = 0;
  std::vector<int>::assign((this + 968), v4, &__u);
  *(this + 119) = *(this + 118);
  v5 = (*(this + 44) + ((*(this + 101) - *(this + 100)) >> 3));
  v8 = -1;
  std::vector<int>::assign((this + 920), v5, &v8);
  v6 = *(this + 44);
  if ((a2 & 1) == 0)
  {
    v6 += (*(this + 101) - *(this + 100)) >> 3;
  }

  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      operations_research::sat::LsEvaluator::UpdateViolatedList(this, i);
    }
  }
}

uint64_t operations_research::sat::LsEvaluator::UpdateAllNonLinearViolations(uint64_t this)
{
  v1 = *(this + 800);
  v2 = *(this + 808);
  if (v1 != v2)
  {
    v3 = this;
    do
    {
      v4 = *v1++;
      v5 = (*(v3 + 904) - *(v3 + 896)) >> 3;
      this = (*(*v4 + 16))(v4);
      v4[2] = this;
    }

    while (v1 != v2);
  }

  return this;
}

void operations_research::sat::LsEvaluator::UpdateNonLinearViolations(operations_research::sat::LsEvaluator *this, uint64_t a2, uint64_t a3)
{
  v3 = *(this + 112);
  v4 = *(v3 + 8 * a2);
  if (v4 != a3)
  {
    v7 = a2;
    *(v3 + 8 * a2) = a3;
    v8 = *(this + 103) + 24 * a2;
    v9 = *v8;
    v10 = *(v8 + 8);
    if (*v8 != v10)
    {
      do
      {
        v11 = *v9++;
        v12 = *(this + 44) + v11;
        v13 = *(*(this + 100) + 8 * v11);
        v14 = v13[2];
        v15 = (*(this + 113) - *(this + 112)) >> 3;
        v13[2] = v14 + (*(*v13 + 24))(v13, a2, v4);
        v16 = *(*(*(this + 100) + 8 * v11) + 16) - v14;
        LODWORD(v17) = v12;
        *(&v17 + 1) = v16;
        std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](this + 992, &v17);
      }

      while (v9 != v10);
      v3 = *(this + 112);
    }

    *(v3 + 8 * v7) = v4;
  }
}

void operations_research::sat::LsEvaluator::UpdateLinearScores(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = *(a1[112] + 8 * a2);
  v11 = a3 - v10;
  if (a3 != v10)
  {
    v17 = (a1 + 124);
    a1[125] = a1[124];
    v18 = a1 + 93;
    std::vector<BOOL>::resize((a1 + 93), 0xCCCCCCCCCCCCCCCDLL * ((a1[37] - a1[36]) >> 2), 0);
    v20 = a1[96];
    v21 = a1[97];
    if (v20 != v21)
    {
      v22 = *v18;
      v23 = a1[96];
      do
      {
        v24 = *v23++;
        *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v24);
      }

      while (v23 != v21);
    }

    a1[97] = v20;
    operations_research::sat::LinearIncrementalEvaluator::UpdateVariableAndScores(a1 + 22, a2, v11, a4, a5, a6, a7, v19, a9, a10, v17);
  }
}

void operations_research::sat::LsEvaluator::UpdateVariableValue(operations_research::sat::LsEvaluator *this, int a2, uint64_t a3)
{
  *(*(this + 112) + 8 * a2) = a3;
  v3 = *(this + 124);
  v4 = *(this + 125);
  while (v3 != v4)
  {
    v6 = *v3;
    v3 += 4;
    operations_research::sat::LsEvaluator::UpdateViolatedList(this, v6);
  }
}

uint64_t operations_research::sat::LsEvaluator::NumInfeasibleConstraints(operations_research::sat::LsEvaluator *this)
{
  v2 = *(this + 44);
  if (v2 < 1)
  {
    result = 0;
  }

  else
  {
    v3 = 0;
    result = 0;
    do
    {
      if (*(*(this + 78) + 4 * v3) <= 0)
      {
        if (*(*(this + 75) + 8 * v3) <= 0)
        {
          result = result;
        }

        else
        {
          result = (result + 1);
        }
      }

      ++v3;
    }

    while (v2 != v3);
  }

  v5 = *(this + 100);
  v6 = *(this + 101);
  if (v5 != v6)
  {
    if (v6 - 1 == v5)
    {
      v7 = v5;
      do
      {
LABEL_19:
        v12 = *v7++;
        if (*(v12 + 16) <= 0)
        {
          result = result;
        }

        else
        {
          result = (result + 1);
        }
      }

      while (v7 != v6);
      return result;
    }

    v8 = 0;
    v9 = (((v6 - 1) - v5) >> 3) + 1;
    v7 = &v5[v9 & 0x3FFFFFFFFFFFFFFELL];
    v10 = v5 + 1;
    v11 = v9 & 0x3FFFFFFFFFFFFFFELL;
    do
    {
      if (*(*(v10 - 1) + 16) > 0)
      {
        LODWORD(result) = result + 1;
      }

      if (*(*v10 + 16) > 0)
      {
        ++v8;
      }

      v10 += 2;
      v11 -= 2;
    }

    while (v11);
    result = (v8 + result);
    if (v9 != (v9 & 0x3FFFFFFFFFFFFFFELL))
    {
      goto LABEL_19;
    }
  }

  return result;
}

BOOL operations_research::sat::LsEvaluator::IsViolated(operations_research::sat::LsEvaluator *this, int a2)
{
  v2 = *(this + 44);
  v3 = __OFSUB__(a2, v2);
  v4 = a2 - v2;
  if (v4 < 0 != v3)
  {
    return (*(*(this + 69) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2) & 1;
  }

  else
  {
    return *(*(*(this + 100) + 8 * v4) + 16) > 0;
  }
}

double operations_research::sat::LsEvaluator::WeightedNonLinearViolationDelta(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 896);
  v8 = *(v7 + 8 * a4);
  v9 = v8 + a5;
  *(v7 + 8 * a4) = v8 + a5;
  v10 = *(a1 + 824) + 24 * a4;
  v11 = *v10;
  v12 = *(v10 + 8);
  if (*v10 == v12)
  {
    v16 = 0.0;
  }

  else
  {
    v15 = *(a1 + 176);
    v16 = 0.0;
    do
    {
      v17 = *v11++;
      v18 = *(*(a1 + 800) + 8 * v17);
      v19 = (*(a1 + 904) - *(a1 + 896)) >> 3;
      v16 = v16 + (*(*v18 + 24))(v18, a4, v8) * *(a2 + 8 * (v17 + v15));
    }

    while (v11 != v12);
    v7 = *(a1 + 896);
    v9 = *(v7 + 8 * a4);
  }

  *(v7 + 8 * a4) = v9 - a5;
  return v16;
}

void operations_research::sat::CompiledAllDiffConstraint::~CompiledAllDiffConstraint(operations_research::sat::CompiledAllDiffConstraint *this)
{
  *this = &unk_284F3C530;
  v1 = *(this + 3);
  if (v1)
  {
    *(this + 4) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_284F3C530;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::CompiledNoOverlapConstraint::~CompiledNoOverlapConstraint(operations_research::sat::CompiledNoOverlapConstraint *this)
{
  *this = &unk_284F3C560;
  v1 = *(this + 4);
  if (v1)
  {
    *(this + 5) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_284F3C560;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::CompiledCumulativeConstraint::~CompiledCumulativeConstraint(operations_research::sat::CompiledCumulativeConstraint *this)
{
  *this = &unk_284F3C590;
  v1 = *(this + 4);
  if (v1)
  {
    *(this + 5) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_284F3C590;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::CompiledCircuitConstraint::~CompiledCircuitConstraint(operations_research::sat::CompiledCircuitConstraint *this)
{
  operations_research::sat::CompiledCircuitConstraint::~CompiledCircuitConstraint(this);

  JUMPOUT(0x23EED9460);
}

{
  *this = &unk_284F3C5F0;
  v2 = *(this + 31);
  if (v2)
  {
    *(this + 32) = v2;
    operator delete(v2);
  }

  v3 = *(this + 28);
  if (v3)
  {
    *(this + 29) = v3;
    operator delete(v3);
  }

  v4 = *(this + 25);
  if (v4)
  {
    *(this + 26) = v4;
    operator delete(v4);
  }

  v5 = *(this + 22);
  if (v5)
  {
    *(this + 23) = v5;
    operator delete(v5);
  }

  v6 = *(this + 19);
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(this + 16);
  if (v7)
  {
    *(this + 17) = v7;
    operator delete(v7);
  }

  v8 = *(this + 13);
  if (v8)
  {
    operator delete(v8);
  }

  v9 = *(this + 9);
  if (v9)
  {
    v10 = *(this + 10);
    v11 = *(this + 9);
    if (v10 != v9)
    {
      v12 = *(this + 10);
      do
      {
        v14 = *(v12 - 24);
        v12 -= 24;
        v13 = v14;
        if (v14)
        {
          *(v10 - 16) = v13;
          operator delete(v13);
        }

        v10 = v12;
      }

      while (v12 != v9);
      v11 = *(this + 9);
    }

    *(this + 10) = v9;
    operator delete(v11);
  }
}

uint64_t *std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::anonymous namespace::ComputeOverloadArea(absl::lts_20240722::Span<int const>,absl::lts_20240722::Span<operations_research::sat::LinearExpressionProto const* const>,operations_research::sat::CpModelProto const&,absl::lts_20240722::Span<long long const>,long long,std::vector<std::pair<long long,long long>> &)::$_0 &,std::pair<long long,long long>*,false>(uint64_t *result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  v9 = v7;
  while (1)
  {
    v7 = v9;
    v10 = (a2 - v9) >> 4;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v94 = *(a2 - 2);
        v95 = *v9;
        if (v94 < *v9)
        {
          *v9 = v94;
          *(a2 - 2) = v95;
          v96 = v9[1];
          v9[1] = *(a2 - 1);
          *(a2 - 1) = v96;
        }

        return result;
      }

      goto LABEL_10;
    }

    switch(v10)
    {
      case 3:
        v97 = v9[2];
        v98 = *v9;
        v99 = *(a2 - 2);
        if (v97 >= *v9)
        {
          if (v99 >= v97)
          {
            return result;
          }

          v9[2] = v99;
          *(a2 - 2) = v97;
          v8 = v9 + 3;
          v151 = v9[3];
          v9[3] = *(a2 - 1);
          *(a2 - 1) = v151;
          v152 = v9[2];
          v153 = *v9;
          if (v152 >= *v9)
          {
            return result;
          }

          *v9 = v152;
          v9[2] = v153;
          v100 = v9 + 1;
        }

        else
        {
          if (v99 >= v97)
          {
            v100 = v9 + 3;
            v165 = v9[3];
            v166 = v9[1];
            *v9 = v97;
            v9[1] = v165;
            v9[2] = v98;
            v9[3] = v166;
            v167 = *(a2 - 2);
            if (v167 >= v98)
            {
              return result;
            }

            v9[2] = v167;
          }

          else
          {
            v100 = v9 + 1;
            *v9 = v99;
          }

          *(a2 - 2) = v98;
        }

        v168 = *v100;
        *v100 = *v8;
        *v8 = v168;
        return result;
      case 4:
        v101 = v9[2];
        v102 = *v9;
        v103 = v9[4];
        if (v101 >= *v9)
        {
          if (v103 >= v101)
          {
            v101 = v9[4];
          }

          else
          {
            v154 = v9 + 3;
            v155 = v9[3];
            v156 = v9[5];
            v9[2] = v103;
            v9[3] = v156;
            v9[4] = v101;
            v9[5] = v155;
            if (v103 < v102)
            {
              *v9 = v103;
              v9[2] = v102;
              v104 = v9 + 1;
              goto LABEL_201;
            }
          }

          v172 = *(a2 - 2);
          if (v172 >= v101)
          {
            return result;
          }
        }

        else
        {
          if (v103 < v101)
          {
            v104 = v9 + 1;
            *v9 = v103;
            goto LABEL_200;
          }

          v104 = v9 + 3;
          v169 = v9[3];
          v170 = v9[1];
          *v9 = v101;
          v9[1] = v169;
          v9[2] = v102;
          v9[3] = v170;
          if (v103 >= v102)
          {
            v101 = v103;
            v172 = *(a2 - 2);
            if (v172 >= v103)
            {
              return result;
            }
          }

          else
          {
            v9[2] = v103;
LABEL_200:
            v9[4] = v102;
            v154 = v9 + 5;
LABEL_201:
            v171 = *v104;
            *v104 = *v154;
            *v154 = v171;
            v101 = v9[4];
            v172 = *(a2 - 2);
            if (v172 >= v101)
            {
              return result;
            }
          }
        }

        v9[4] = v172;
        *(a2 - 2) = v101;
        v173 = v9[5];
        v9[5] = *(a2 - 1);
        *(a2 - 1) = v173;
        v174 = v9[4];
        v175 = v9[2];
        if (v174 < v175)
        {
          v176 = v9[3];
          v177 = v9[5];
          v9[2] = v174;
          v9[3] = v177;
          v9[4] = v175;
          v9[5] = v176;
          v178 = *v9;
          if (v174 < *v9)
          {
            v179 = v9[1];
            *v9 = v174;
            v9[1] = v177;
            v9[2] = v178;
            v9[3] = v179;
          }
        }

        return result;
      case 5:
    }

LABEL_10:
    if (v10 <= 23)
    {
      v105 = v9 + 2;
      v107 = v9 == a2 || v105 == a2;
      if ((a4 & 1) == 0)
      {
        if (!v107)
        {
          v157 = v9 + 3;
          do
          {
            v158 = v105;
            v159 = v7[2];
            v160 = *v7;
            if (v159 < *v7)
            {
              v161 = v7[3];
              v162 = v157;
              do
              {
                v163 = v162;
                v164 = *(v162 - 2);
                v162 -= 2;
                *(v163 - 1) = v160;
                *v163 = v164;
                v160 = *(v163 - 5);
              }

              while (v159 < v160);
              *(v162 - 1) = v159;
              *v162 = v161;
            }

            v105 = v158 + 2;
            v157 += 2;
            v7 = v158;
          }

          while (v158 + 2 != a2);
        }

        return result;
      }

      if (v107)
      {
        return result;
      }

      v108 = 0;
      v109 = v9;
      while (1)
      {
        v111 = v105;
        v112 = v109[2];
        v113 = *v109;
        if (v112 < *v109)
        {
          v114 = v109[3];
          v115 = v108;
          do
          {
            v116 = v9 + v115;
            v117 = *(v9 + v115 + 8);
            *(v116 + 2) = v113;
            *(v116 + 3) = v117;
            if (!v115)
            {
              v110 = v9;
              goto LABEL_132;
            }

            v113 = *(v116 - 2);
            v115 -= 16;
          }

          while (v112 < v113);
          v110 = (v9 + v115 + 16);
LABEL_132:
          *v110 = v112;
          v110[1] = v114;
        }

        v105 = v111 + 2;
        v108 += 16;
        v109 = v111;
        if (v111 + 2 == a2)
        {
          return result;
        }
      }
    }

    if (!a3)
    {
      break;
    }

    v11 = &v9[2 * (v10 >> 1)];
    v12 = v11;
    v13 = *(a2 - 2);
    if (v10 >= 0x81)
    {
      v14 = *v11;
      v15 = *v9;
      if (*v11 >= *v9)
      {
        if (v13 >= v14 || (*v11 = v13, *(a2 - 2) = v14, v21 = v11 + 1, v20 = v11[1], v11[1] = *(a2 - 1), *(a2 - 1) = v20, v22 = *v9, *v11 >= *v9))
        {
LABEL_29:
          v30 = v11 - 2;
          v31 = *(v11 - 2);
          v32 = v9[2];
          v33 = *(a2 - 4);
          if (v31 >= v32)
          {
            if (v33 >= v31 || (*v30 = v33, *(a2 - 4) = v31, v36 = v11 - 1, v35 = *(v11 - 1), *(v11 - 1) = *(a2 - 3), *(a2 - 3) = v35, v37 = v9[2], *v30 >= v37))
            {
LABEL_42:
              v47 = v11[2];
              v45 = v11 + 2;
              v46 = v47;
              v48 = v9[4];
              v49 = *(a2 - 6);
              if (v47 >= v48)
              {
                if (v49 >= v46)
                {
                  goto LABEL_52;
                }

                *v45 = v49;
                *(a2 - 6) = v46;
                v52 = v45 + 1;
                v51 = v45[1];
                v45[1] = *(a2 - 5);
                *(a2 - 5) = v51;
                v46 = *v45;
                v53 = v9[4];
                if (*v45 >= v53)
                {
LABEL_52:
                  v58 = *v12;
                  v59 = *v30;
                  if (*v12 < *v30)
                  {
LABEL_53:
                    if (v46 >= v58)
                    {
                      v62 = v12[1];
                      *v12 = v59;
                      v63 = v30[1];
                      *v30 = v58;
                      v30[1] = v62;
                      v12[1] = v63;
                      if (v46 >= v59)
                      {
                        v58 = v59;
                        goto LABEL_63;
                      }

                      *v12 = v46;
                      *v45 = v59;
                      v61 = v45 + 1;
                      v60 = v12 + 1;
                    }

                    else
                    {
                      *v30 = v46;
                      v60 = v30 + 1;
                      *v45 = v59;
                      v61 = v45 + 1;
                    }

                    v64 = v61;
                    goto LABEL_62;
                  }

LABEL_59:
                  if (v46 >= v58)
                  {
LABEL_63:
                    v67 = *v9;
                    *v9 = v58;
                    v19 = v9 + 1;
                    *v12 = v67;
                    v25 = v12 + 1;
                    goto LABEL_64;
                  }

                  v64 = v12 + 1;
                  v65 = v12[1];
                  *v12 = v46;
                  v12[1] = v45[1];
                  *v45 = v58;
                  v45[1] = v65;
                  if (v46 >= v59)
                  {
                    v58 = v46;
                    goto LABEL_63;
                  }

                  *v30 = v46;
                  v60 = v30 + 1;
                  *v12 = v59;
LABEL_62:
                  v66 = *v60;
                  *v60 = *v64;
                  *v64 = v66;
                  v58 = *v12;
                  goto LABEL_63;
                }

                v9[4] = v46;
                *v45 = v53;
                v50 = v9 + 5;
              }

              else
              {
                if (v49 >= v46)
                {
                  v50 = v45 + 1;
                  v54 = v45[1];
                  v55 = v9[5];
                  v9[4] = v46;
                  v9[5] = v54;
                  *v45 = v48;
                  v45[1] = v55;
                  v56 = *(a2 - 6);
                  if (v56 >= v48)
                  {
                    v46 = v48;
                    v58 = *v12;
                    v59 = *v30;
                    if (*v12 < *v30)
                    {
                      goto LABEL_53;
                    }

                    goto LABEL_59;
                  }

                  *v45 = v56;
                }

                else
                {
                  v50 = v9 + 5;
                  v9[4] = v49;
                }

                *(a2 - 6) = v48;
                v52 = a2 - 5;
              }

              v57 = *v50;
              *v50 = *v52;
              *v52 = v57;
              v46 = *v45;
              goto LABEL_52;
            }

            v9[2] = *v30;
            *v30 = v37;
            v34 = v9 + 3;
          }

          else
          {
            if (v33 >= v31)
            {
              v34 = v11 - 1;
              v41 = *(v11 - 1);
              v42 = v9[3];
              v9[2] = v31;
              v9[3] = v41;
              *v30 = v32;
              *(v11 - 1) = v42;
              v43 = *(a2 - 4);
              if (v43 >= v32)
              {
                goto LABEL_42;
              }

              *v30 = v43;
            }

            else
            {
              v34 = v9 + 3;
              v9[2] = v33;
            }

            *(a2 - 4) = v32;
            v36 = a2 - 3;
          }

          v44 = *v34;
          *v34 = *v36;
          *v36 = v44;
          goto LABEL_42;
        }

        *v9 = *v11;
        v16 = v9 + 1;
        *v11 = v22;
      }

      else
      {
        if (v13 >= v14)
        {
          v16 = v11 + 1;
          v26 = v11[1];
          v27 = v9[1];
          *v9 = v14;
          v9[1] = v26;
          *v11 = v15;
          v11[1] = v27;
          v28 = *(a2 - 2);
          if (v28 >= v15)
          {
            goto LABEL_29;
          }

          *v11 = v28;
        }

        else
        {
          v16 = v9 + 1;
          *v9 = v13;
        }

        *(a2 - 2) = v15;
        v21 = a2 - 1;
      }

      v29 = *v16;
      *v16 = *v21;
      *v21 = v29;
      goto LABEL_29;
    }

    v17 = *v9;
    v18 = *v11;
    if (*v9 >= *v11)
    {
      if (v13 < v17)
      {
        *v9 = v13;
        *(a2 - 2) = v17;
        v23 = v9[1];
        v9[1] = *(a2 - 1);
        *(a2 - 1) = v23;
        v24 = *v12;
        if (*v9 < *v12)
        {
          *v12 = *v9;
          *v9 = v24;
          v19 = v12 + 1;
          v25 = v9 + 1;
LABEL_64:
          v68 = *v19;
          *v19 = *v25;
          *v25 = v68;
        }
      }
    }

    else
    {
      if (v13 < v17)
      {
        v19 = v11 + 1;
        *v12 = v13;
LABEL_37:
        *(a2 - 2) = v18;
        v25 = a2 - 1;
        goto LABEL_64;
      }

      v19 = v9 + 1;
      v38 = v9[1];
      v39 = v12[1];
      *v12 = v17;
      v12[1] = v38;
      *v9 = v18;
      v9[1] = v39;
      v40 = *(a2 - 2);
      if (v40 < v18)
      {
        *v9 = v40;
        goto LABEL_37;
      }
    }

    --a3;
    v69 = *v9;
    if ((a4 & 1) != 0 || *(v9 - 2) < v69)
    {
      v70 = 0;
      v71 = v9[1];
      do
      {
        v72 = v9[v70 + 2];
        v70 += 2;
      }

      while (v72 < v69);
      v73 = &v9[v70];
      v74 = a2;
      if (v70 == 2)
      {
        v74 = a2;
        do
        {
          if (v73 >= v74)
          {
            break;
          }

          v76 = *(v74 - 2);
          v74 -= 2;
        }

        while (v76 >= v69);
      }

      else
      {
        do
        {
          v75 = *(v74 - 2);
          v74 -= 2;
        }

        while (v75 >= v69);
      }

      if (v73 >= v74)
      {
        v9 = (v9 + v70 * 8);
        v82 = v73 - 2;
        if (v73 - 2 != v7)
        {
          goto LABEL_82;
        }
      }

      else
      {
        v77 = *v74;
        v9 = (v9 + v70 * 8);
        v78 = v74;
        do
        {
          *v9 = v77;
          *v78 = v72;
          v79 = v9[1];
          v9[1] = v78[1];
          v78[1] = v79;
          do
          {
            v80 = v9[2];
            v9 += 2;
            v72 = v80;
          }

          while (v80 < v69);
          do
          {
            v81 = *(v78 - 2);
            v78 -= 2;
            v77 = v81;
          }

          while (v81 >= v69);
        }

        while (v9 < v78);
        v82 = v9 - 2;
        if (v9 - 2 != v7)
        {
LABEL_82:
          *v7 = *(v9 - 2);
          v7[1] = *(v9 - 1);
        }
      }

      *(v9 - 2) = v69;
      *(v9 - 1) = v71;
      if (v73 < v74)
      {
        goto LABEL_86;
      }

      if (result)
      {
        a2 = v82;
        if (v83)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v83)
      {
LABEL_86:
        a4 = 0;
      }
    }

    else
    {
      if (v69 >= *(a2 - 2))
      {
        v85 = v9 + 2;
        do
        {
          v9 = v85;
          if (v85 >= a2)
          {
            break;
          }

          v85 += 2;
        }

        while (v69 >= *v9);
      }

      else
      {
        do
        {
          v84 = v9[2];
          v9 += 2;
        }

        while (v69 >= v84);
      }

      v86 = a2;
      if (v9 < a2)
      {
        v86 = a2;
        do
        {
          v87 = *(v86 - 2);
          v86 -= 2;
        }

        while (v69 < v87);
      }

      v88 = v7[1];
      if (v9 < v86)
      {
        v89 = *v9;
        v90 = *v86;
        do
        {
          *v9 = v90;
          *v86 = v89;
          v91 = v9[1];
          v9[1] = v86[1];
          v86[1] = v91;
          do
          {
            v92 = v9[2];
            v9 += 2;
            v89 = v92;
          }

          while (v69 >= v92);
          do
          {
            v93 = *(v86 - 2);
            v86 -= 2;
            v90 = v93;
          }

          while (v69 < v93);
        }

        while (v9 < v86);
      }

      if (v9 - 2 != v7)
      {
        *v7 = *(v9 - 2);
        v7[1] = *(v9 - 1);
      }

      a4 = 0;
      *(v9 - 2) = v69;
      *(v9 - 1) = v88;
    }
  }

  if (v9 == a2)
  {
    return result;
  }

  v118 = (v10 - 2) >> 1;
  v119 = v118;
  while (2)
  {
    v120 = 16 * v119;
    if (v118 >= (16 * v119) >> 4)
    {
      v121 = (v120 >> 3) | 1;
      v122 = &v9[2 * v121];
      if ((v120 >> 3) + 2 >= v10)
      {
        v123 = *v122;
        v125 = &v9[v120 / 8];
        v126 = *v125;
        if (*v122 >= *v125)
        {
LABEL_152:
          v127 = v125[1];
          while (1)
          {
            v129 = v125;
            v125 = v122;
            *v129 = v123;
            v129[1] = v122[1];
            if (v118 < v121)
            {
              break;
            }

            v130 = (2 * v121) | 1;
            v122 = &v9[2 * v130];
            v121 = 2 * v121 + 2;
            if (v121 < v10)
            {
              v123 = *v122;
              result = v122 + 2;
              v128 = v122[2];
              if (*v122 <= v128)
              {
                v123 = v122[2];
              }

              if (*v122 >= v128)
              {
                v121 = v130;
              }

              else
              {
                v122 += 2;
              }

              if (v123 < v126)
              {
                break;
              }
            }

            else
            {
              v123 = *v122;
              v121 = v130;
              if (*v122 < v126)
              {
                break;
              }
            }
          }

          *v125 = v126;
          v125[1] = v127;
        }
      }

      else
      {
        v123 = *v122;
        v124 = v122[2];
        if (*v122 <= v124)
        {
          v123 = v122[2];
        }

        if (*v122 < v124)
        {
          v122 += 2;
          v121 = (v120 >> 3) + 2;
        }

        v125 = &v9[v120 / 8];
        v126 = *v125;
        if (v123 >= *v125)
        {
          goto LABEL_152;
        }
      }
    }

    v139 = v119-- <= 0;
    if (!v139)
    {
      continue;
    }

    break;
  }

  do
  {
    v131 = 0;
    v132 = *v9;
    v133 = v9[1];
    v134 = (v10 - 2) >> 1;
    v135 = v9;
    do
    {
      while (1)
      {
        v141 = &v135[2 * v131];
        v140 = v141 + 2;
        v142 = (2 * v131) | 1;
        v131 = 2 * v131 + 2;
        if (v131 < v10)
        {
          break;
        }

        v131 = v142;
        *v135 = *v140;
        v135[1] = v141[3];
        v135 = v141 + 2;
        if (v142 > v134)
        {
          goto LABEL_174;
        }
      }

      v138 = v141[4];
      v137 = v141 + 4;
      v136 = v138;
      result = *(v137 - 2);
      v139 = result < v138;
      if (result > v138)
      {
        v136 = *(v137 - 2);
      }

      if (v139)
      {
        v140 = v137;
      }

      else
      {
        v131 = v142;
      }

      *v135 = v136;
      v135[1] = v140[1];
      v135 = v140;
    }

    while (v131 <= v134);
LABEL_174:
    if (v140 == a2 - 2)
    {
      *v140 = v132;
      v140[1] = v133;
    }

    else
    {
      *v140 = *(a2 - 2);
      v140[1] = *(a2 - 1);
      *(a2 - 2) = v132;
      *(a2 - 1) = v133;
      v143 = (v140 - v9 + 16) >> 4;
      v139 = v143 < 2;
      v144 = v143 - 2;
      if (!v139)
      {
        v145 = v144 >> 1;
        v146 = &v9[2 * v145];
        v147 = *v146;
        v148 = *v140;
        if (*v146 < *v140)
        {
          v149 = v140[1];
          do
          {
            v150 = v140;
            v140 = v146;
            *v150 = v147;
            v150[1] = v146[1];
            if (!v145)
            {
              break;
            }

            v145 = (v145 - 1) >> 1;
            v146 = &v9[2 * v145];
            v147 = *v146;
          }

          while (*v146 < v148);
          *v140 = v148;
          v140[1] = v149;
        }
      }
    }

    a2 -= 2;
    v139 = v10-- <= 2;
  }

  while (!v139);
  return result;
}

uint64_t *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::anonymous namespace::ComputeOverloadArea(absl::lts_20240722::Span<int const>,absl::lts_20240722::Span<operations_research::sat::LinearExpressionProto const* const>,operations_research::sat::CpModelProto const&,absl::lts_20240722::Span<long long const>,long long,std::vector<std::pair<long long,long long>> &)::$_0 &,std::pair<long long,long long>*,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *a3;
  if (*a2 >= *result)
  {
    if (v7 < v5)
    {
      *a2 = v7;
      *a3 = v5;
      v10 = a2 + 1;
      v9 = a2[1];
      a2[1] = a3[1];
      a3[1] = v9;
      v11 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        v8 = result + 1;
        *a2 = v11;
LABEL_10:
        v13 = *v8;
        *v8 = *v10;
        *v10 = v13;
      }
    }
  }

  else
  {
    if (v7 < v5)
    {
      v8 = result + 1;
      *result = v7;
LABEL_9:
      *a3 = v6;
      v10 = a3 + 1;
      goto LABEL_10;
    }

    *result = v5;
    *a2 = v6;
    v8 = a2 + 1;
    v12 = result[1];
    result[1] = a2[1];
    a2[1] = v12;
    v6 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  v14 = *a3;
  if (*a4 < *a3)
  {
    *a3 = *a4;
    *a4 = v14;
    v15 = a3[1];
    a3[1] = a4[1];
    a4[1] = v15;
    v16 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      *a3 = v16;
      v17 = a2[1];
      a2[1] = a3[1];
      a3[1] = v17;
      v18 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        *a2 = v18;
        v19 = result[1];
        result[1] = a2[1];
        a2[1] = v19;
      }
    }
  }

  v20 = *a4;
  if (*a5 < *a4)
  {
    *a4 = *a5;
    *a5 = v20;
    v21 = a4[1];
    a4[1] = a5[1];
    a5[1] = v21;
    v22 = *a3;
    if (*a4 < *a3)
    {
      *a3 = *a4;
      *a4 = v22;
      v23 = a3[1];
      a3[1] = a4[1];
      a4[1] = v23;
      v24 = *a2;
      if (*a3 < *a2)
      {
        *a2 = *a3;
        *a3 = v24;
        v25 = a2[1];
        a2[1] = a3[1];
        a3[1] = v25;
        v26 = *result;
        if (*a2 < *result)
        {
          *result = *a2;
          *a2 = v26;
          v27 = result[1];
          result[1] = a2[1];
          a2[1] = v27;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::anonymous namespace::ComputeOverloadArea(absl::lts_20240722::Span<int const>,absl::lts_20240722::Span<operations_research::sat::LinearExpressionProto const* const>,operations_research::sat::CpModelProto const&,absl::lts_20240722::Span<long long const>,long long,std::vector<std::pair<long long,long long>> &)::$_0 &,std::pair<long long,long long>*>(uint64_t *a1, uint64_t *a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v7 = a1[2];
      v8 = *a1;
      v9 = *(a2 - 2);
      if (v7 >= *a1)
      {
        if (v9 >= v7)
        {
          return 1;
        }

        a1[2] = v9;
        *(a2 - 2) = v7;
        v21 = a1 + 3;
        v20 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v20;
        v22 = a1[2];
        v23 = *a1;
        if (v22 >= *a1)
        {
          return 1;
        }

        *a1 = v22;
        a1[2] = v23;
        v10 = a1 + 1;
      }

      else
      {
        if (v9 >= v7)
        {
          v10 = a1 + 3;
          v30 = a1[3];
          v31 = a1[1];
          *a1 = v7;
          a1[1] = v30;
          a1[2] = v8;
          a1[3] = v31;
          v32 = *(a2 - 2);
          if (v32 >= v8)
          {
            return 1;
          }

          a1[2] = v32;
        }

        else
        {
          v10 = a1 + 1;
          *a1 = v9;
        }

        *(a2 - 2) = v8;
        v21 = a2 - 1;
      }

      v33 = *v10;
      *v10 = *v21;
      *v21 = v33;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        return 1;
      }

LABEL_14:
      v11 = a1 + 4;
      v12 = a1[4];
      v13 = a1[2];
      v14 = *a1;
      if (v13 >= *a1)
      {
        if (v12 >= v13 || (v25 = a1 + 3, v24 = a1[3], v26 = a1[5], a1[2] = v12, a1[3] = v26, a1[4] = v13, a1[5] = v24, v12 >= v14))
        {
LABEL_37:
          v37 = a1 + 6;
          if (a1 + 6 == a2)
          {
            return 1;
          }

          v38 = 0;
          v39 = 0;
          while (1)
          {
            v40 = *v37;
            v41 = *v11;
            if (*v37 < *v11)
            {
              break;
            }

LABEL_40:
            v11 = v37;
            v38 += 16;
            v37 += 2;
            if (v37 == a2)
            {
              return 1;
            }
          }

          v42 = v37[1];
          v43 = v38;
          do
          {
            v44 = (a1 + v43);
            v45 = *(a1 + v43 + 40);
            v44[6] = v41;
            v44[7] = v45;
            if (v43 == -32)
            {
              *a1 = v40;
              a1[1] = v42;
              if (++v39 != 8)
              {
                goto LABEL_40;
              }

              return v37 + 2 == a2;
            }

            v41 = v44[2];
            v43 -= 16;
          }

          while (v40 < v41);
          v46 = a1 + v43;
          *(v46 + 6) = v40;
          *(v46 + 7) = v42;
          if (++v39 != 8)
          {
            goto LABEL_40;
          }

          return v37 + 2 == a2;
        }

        *a1 = v12;
        a1[2] = v14;
        v15 = a1 + 1;
      }

      else
      {
        if (v12 >= v13)
        {
          v15 = a1 + 3;
          v34 = a1[3];
          v35 = a1[1];
          *a1 = v13;
          a1[1] = v34;
          a1[2] = v14;
          a1[3] = v35;
          if (v12 >= v14)
          {
            goto LABEL_37;
          }

          a1[2] = v12;
        }

        else
        {
          v15 = a1 + 1;
          *a1 = v12;
        }

        a1[4] = v14;
        v25 = a1 + 5;
      }

      v36 = *v15;
      *v15 = *v25;
      *v25 = v36;
      goto LABEL_37;
    }

    v16 = a1[2];
    v17 = *a1;
    v18 = a1[4];
    if (v16 >= *a1)
    {
      if (v18 >= v16)
      {
        goto LABEL_53;
      }

      v28 = a1 + 3;
      v27 = a1[3];
      v29 = a1[5];
      a1[2] = v18;
      a1[3] = v29;
      a1[4] = v16;
      a1[5] = v27;
      if (v18 >= v17)
      {
        goto LABEL_52;
      }

      *a1 = v18;
      a1[2] = v17;
      v19 = a1 + 1;
    }

    else
    {
      if (v18 >= v16)
      {
        v19 = a1 + 3;
        v47 = a1[3];
        v48 = a1[1];
        *a1 = v16;
        a1[1] = v47;
        a1[2] = v17;
        a1[3] = v48;
        if (v18 >= v17)
        {
          goto LABEL_53;
        }

        a1[2] = v18;
      }

      else
      {
        v19 = a1 + 1;
        *a1 = v18;
      }

      a1[4] = v17;
      v28 = a1 + 5;
      v16 = v17;
    }

    v49 = *v19;
    *v19 = *v28;
    *v28 = v49;
LABEL_52:
    v18 = v16;
LABEL_53:
    v50 = *(a2 - 2);
    if (v50 >= v18)
    {
      return 1;
    }

    a1[4] = v50;
    *(a2 - 2) = v18;
    v51 = a1[5];
    a1[5] = *(a2 - 1);
    *(a2 - 1) = v51;
    v52 = a1[4];
    v53 = a1[2];
    if (v52 >= v53)
    {
      return 1;
    }

    v54 = a1[3];
    v55 = a1[5];
    a1[2] = v52;
    a1[3] = v55;
    a1[4] = v53;
    a1[5] = v54;
    v56 = *a1;
    if (v52 >= *a1)
    {
      return 1;
    }

    v57 = a1[1];
    *a1 = v52;
    a1[1] = v55;
    a1[2] = v56;
    a1[3] = v57;
    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
    goto LABEL_14;
  }

  v4 = *(a2 - 2);
  v5 = *a1;
  if (v4 >= *a1)
  {
    return 1;
  }

  *a1 = v4;
  *(a2 - 2) = v5;
  v6 = a1[1];
  a1[1] = *(a2 - 1);
  *(a2 - 1) = v6;
  return 1;
}

void operations_research::sat::LinearIncrementalEvaluator::~LinearIncrementalEvaluator(operations_research::sat::LinearIncrementalEvaluator *this)
{
  v2 = *(this + 74);
  if (v2)
  {
    *(this + 75) = v2;
    operator delete(v2);
  }

  v3 = *(this + 71);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 68);
  if (v4)
  {
    *(this + 69) = v4;
    operator delete(v4);
  }

  v5 = *(this + 65);
  if (v5)
  {
    *(this + 66) = v5;
    operator delete(v5);
  }

  v6 = *(this + 62);
  if (v6)
  {
    *(this + 63) = v6;
    operator delete(v6);
  }

  v7 = *(this + 59);
  if (v7)
  {
    *(this + 60) = v7;
    operator delete(v7);
  }

  v8 = *(this + 56);
  if (v8)
  {
    *(this + 57) = v8;
    operator delete(v8);
  }

  v9 = *(this + 53);
  if (v9)
  {
    *(this + 54) = v9;
    operator delete(v9);
  }

  v10 = *(this + 50);
  if (v10)
  {
    *(this + 51) = v10;
    operator delete(v10);
  }

  v11 = *(this + 47);
  if (v11)
  {
    operator delete(v11);
  }

  v12 = *(this + 44);
  if (v12)
  {
    *(this + 45) = v12;
    operator delete(v12);
  }

  v13 = *(this + 41);
  if (v13)
  {
    *(this + 42) = v13;
    operator delete(v13);
  }

  v14 = *(this + 38);
  if (v14)
  {
    *(this + 39) = v14;
    operator delete(v14);
  }

  v15 = *(this + 35);
  if (v15)
  {
    *(this + 36) = v15;
    operator delete(v15);
  }

  v16 = *(this + 32);
  if (v16)
  {
    *(this + 33) = v16;
    operator delete(v16);
  }

  v17 = *(this + 29);
  if (v17)
  {
    *(this + 30) = v17;
    operator delete(v17);
  }

  v18 = *(this + 26);
  if (v18)
  {
    *(this + 27) = v18;
    operator delete(v18);
  }

  v19 = *(this + 23);
  if (v19)
  {
    *(this + 24) = v19;
    operator delete(v19);
  }

  v20 = *(this + 20);
  if (v20)
  {
    *(this + 21) = v20;
    operator delete(v20);
  }

  v21 = *(this + 17);
  if (v21)
  {
    *(this + 18) = v21;
    operator delete(v21);
  }

  v22 = *(this + 14);
  if (v22)
  {
    *(this + 15) = v22;
    operator delete(v22);
  }

  v23 = *(this + 11);
  if (v23)
  {
    v24 = *(this + 12);
    v25 = *(this + 11);
    if (v24 != v23)
    {
      v26 = *(this + 12);
      do
      {
        v28 = *(v26 - 24);
        v26 -= 24;
        v27 = v28;
        if (v28)
        {
          *(v24 - 16) = v27;
          operator delete(v27);
        }

        v24 = v26;
      }

      while (v26 != v23);
      v25 = *(this + 11);
    }

    *(this + 12) = v23;
    operator delete(v25);
  }

  v29 = *(this + 8);
  if (v29)
  {
    v30 = *(this + 9);
    v31 = *(this + 8);
    if (v30 != v29)
    {
      v32 = *(this + 9);
      do
      {
        v34 = *(v32 - 24);
        v32 -= 24;
        v33 = v34;
        if (v34)
        {
          *(v30 - 16) = v33;
          operator delete(v33);
        }

        v30 = v32;
      }

      while (v32 != v29);
      v31 = *(this + 8);
    }

    *(this + 9) = v29;
    operator delete(v31);
  }

  v35 = *(this + 4);
  if (v35)
  {
    *(this + 5) = v35;
    operator delete(v35);
  }

  v36 = *(this + 1);
  if (v36)
  {
    v37 = *(this + 2);
    v38 = *(this + 1);
    if (v37 != v36)
    {
      v39 = *(this + 2);
      do
      {
        v40 = *(v39 - 24);
        v39 -= 24;
        if (v40)
        {
          operator delete(*(v37 - 16));
        }

        v37 = v39;
      }

      while (v39 != v36);
      v38 = *(this + 1);
    }

    *(this + 2) = v36;
    operator delete(v38);
  }
}

void *absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::InitFrom(void *a1, void *a2)
{
  v4 = *a2 >> 1;
  if (*a2)
  {
    if (!(*a2 >> 61))
    {
      if (v4 > 2)
      {
        v5 = *a2 >> 1;
      }

      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  result = memcpy(a1 + 1, a2 + 1, 16 * v4);
  *a1 = *a2;
  return result;
}

uint64_t std::vector<operations_research::Domain>::__emplace_back_slow_path<operations_research::Domain const&>(void ***a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v3)
  {
    v3 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v6 = (8 * (a1[1] - *a1));
  *v6 = 0;
  v7 = *a2;
  if (*a2 < 2)
  {
LABEL_13:
    v8 = (v6 + 3);
    v9 = *a1;
    v10 = a1[1];
    v11 = (v6 + *a1 - v10);
    if (v10 == *a1)
    {
      goto LABEL_14;
    }

LABEL_18:
    v13 = v9;
    v14 = v11;
    do
    {
      *v14 = 0;
      *v14 = *v13;
      *(v14 + 1) = *(v13 + 1);
      *v13 = 0;
      v13 += 3;
      v14 += 3;
    }

    while (v13 != v10);
    do
    {
      if (*v9)
      {
        operator delete(v9[1]);
      }

      v9 += 3;
    }

    while (v9 != v10);
    v9 = *a1;
    *a1 = v11;
    a1[1] = v8;
    a1[2] = 0;
    if (v9)
    {
      goto LABEL_15;
    }

    return v8;
  }

  if ((v7 & 1) == 0)
  {
    *v6 = v7;
    *(24 * v2 + 8) = *(a2 + 1);
    goto LABEL_13;
  }

  absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::InitFrom((24 * v2), a2);
  v8 = 24 * v2 + 24;
  v9 = *a1;
  v10 = a1[1];
  v11 = (v6 + *a1 - v10);
  if (v10 != *a1)
  {
    goto LABEL_18;
  }

LABEL_14:
  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
LABEL_15:
    operator delete(v9);
  }

  return v8;
}

void sub_23CA03F44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*v2)
  {
    operator delete(*(v2 + 8));
  }

  std::__split_buffer<operations_research::Domain>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<operations_research::Domain>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v5 = v2 - 24;
      *(a1 + 16) = v2 - 24;
      if (*(v2 - 24))
      {
        operator delete(*(v2 - 16));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<operations_research::sat::LinearIncrementalEvaluator::SpanData>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v3 - v4) >> 2) >= a2)
  {
    v10 = 20 * a2;
    if (20 * a2)
    {
      bzero(*(a1 + 8), 20 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 2);
    v6 = v5 + a2;
    if (v5 + a2 > 0xCCCCCCCCCCCCCCCLL)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 2);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x666666666666666)
    {
      v8 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0xCCCCCCCCCCCCCCCLL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = 20 * v5;
    v12 = 20 * a2;
    if (20 * a2)
    {
      bzero(v11, v12);
      v9 = v11 + v12;
    }

    else
    {
      v9 = v11;
    }

    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = (v11 - v14);
    memcpy(v15, *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

void *std::vector<long long>::__assign_with_size[abi:ne200100]<long long const*,long long const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      v9 = v8;
      v10 = a4;
      operator delete(v9);
      a4 = v10;
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v11 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v11 = a4;
      }

      v12 = v7 >= 0x7FFFFFFFFFFFFFF8;
      v13 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v12)
      {
        v13 = v11;
      }

      if (!(v13 >> 61))
      {
        operator new();
      }
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v14 = result[1];
  v15 = v14 - v8;
  if (a4 > (v14 - v8) >> 3)
  {
    v16 = &__src[v15];
    if (v14 == v8)
    {
      v17 = result[1];
      v18 = v17;
      if (v16 == a3)
      {
        goto LABEL_26;
      }
    }

    else
    {
      result = memmove(*result, __src, v15);
      v17 = v6[1];
      v18 = v17;
      if (v16 == a3)
      {
        goto LABEL_26;
      }
    }

    v21 = &a3[v8] - &__src[v14] - 8;
    if (v21 >= 0x38)
    {
      v18 = v17;
      if ((&v8[v17] - &__src[v14]) >= 0x20)
      {
        v22 = (v21 >> 3) + 1;
        v23 = 8 * (v22 & 0x3FFFFFFFFFFFFFFCLL);
        v16 += v23;
        v18 = (v17 + v23);
        v24 = (v17 + 16);
        v25 = &__src[v14 - v8 + 16];
        v26 = v22 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v27 = *v25;
          *(v24 - 1) = *(v25 - 1);
          *v24 = v27;
          v24 += 2;
          v25 += 32;
          v26 -= 4;
        }

        while (v26);
        if (v22 == (v22 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v18 = v17;
    }

    do
    {
      v28 = *v16;
      v16 += 8;
      *v18 = v28;
      v18 += 8;
    }

    while (v16 != a3);
LABEL_26:
    v20 = v18;
    goto LABEL_27;
  }

  v19 = a3 - __src;
  if (v19)
  {
    result = memmove(*result, __src, v19);
  }

  v20 = &v8[v19];
LABEL_27:
  v6[1] = v20;
  return result;
}

uint64_t operations_research::sat::BooleanXorPropagator::Propagate(operations_research::sat::BooleanXorPropagator *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = -1;
    v7 = 1;
    do
    {
      v8 = *(v2 + 4 * v4);
      v9 = *(*(*(this + 8) + 24) + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8));
      v10 = v8 & 0x3F;
      if (((v9 >> (v10 ^ 1u)) & 1) == 0)
      {
        if ((v9 >> v10))
        {
          v5 ^= 1u;
        }

        else
        {
          if (v6 != -1)
          {
            return 1;
          }

          v6 = v7 - 1;
        }
      }

      v4 = v7++;
    }

    while ((v3 - v2) >> 2 > v4);
    if (v6 != -1)
    {
      v11 = 0;
      *(this + 6) = *(this + 5);
      v12 = 1;
      v13 = v6;
      do
      {
        if (v13)
        {
          v21 = *(v2 + 4 * v11) ^ (((*(*(*(this + 8) + 24) + ((*(v2 + 4 * v11) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (*(v2 + 4 * v11) & 0x3F ^ 1u)) & 1) == 0);
          std::vector<int>::push_back[abi:ne200100](this + 40, &v21);
          v2 = *(this + 1);
          v3 = *(this + 2);
        }

        v11 = v12;
        --v13;
        ++v12;
      }

      while (v11 < (v3 - v2) >> 2);
      operations_research::sat::IntegerTrail::EnqueueLiteral(*(this + 9), *(v2 + 4 * v6) ^ (*(this + 32) == (v5 & 1)), *(this + 5), (*(this + 6) - *(this + 5)) >> 2, 0, 0);
      return 1;
    }
  }

  if (*(this + 32) == (v5 & 1))
  {
    return 1;
  }

  v14 = *(this + 8);
  v16 = *(v14 + 72);
  v15 = v14 + 72;
  *(v15 + 48) = 0;
  *(v15 + 8) = v16;
  if (*(this + 2) != v2)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      v20 = *(v2 + 4 * v17) ^ (((*(*(*(this + 8) + 24) + ((*(v2 + 4 * v17) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (*(v2 + 4 * v17) & 0x3F ^ 1u)) & 1) == 0);
      std::vector<int>::push_back[abi:ne200100](v15, &v20);
      v17 = v18;
      v2 = *(this + 1);
      ++v18;
    }

    while (v17 < (*(this + 2) - v2) >> 2);
  }

  return 0;
}

void operations_research::sat::BooleanXorPropagator::RegisterWith(operations_research::sat::BooleanXorPropagator *this, operations_research::sat::GenericLiteralWatcher *a2)
{
  v4 = operations_research::sat::GenericLiteralWatcher::Register(a2, this);
  v6 = *(this + 1);
  v5 = *(this + 2);
  if (v6 != v5)
  {
    v7 = v4;
    do
    {
      v9 = *v6;
      v11 = *(a2 + 8);
      v10 = *(a2 + 9);
      v12 = (v10 - v11) >> 3;
      v13 = 0xAAAAAAAAAAAAAAABLL * v12;
      if (*v6 >= -1431655765 * v12)
      {
        v14 = v9 + 1;
        if (v14 <= v13)
        {
          if (v14 < v13)
          {
            v15 = v11 + 24 * v14;
            if (v10 != v15)
            {
              v16 = *(a2 + 9);
              do
              {
                v18 = *(v16 - 24);
                v16 -= 24;
                v17 = v18;
                if (v18)
                {
                  *(v10 - 16) = v17;
                  operator delete(v17);
                }

                v10 = v16;
              }

              while (v16 != v15);
            }

            *(a2 + 9) = v15;
          }
        }

        else
        {
          std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append(a2 + 64, v14 - v13);
        }
      }

      v19 = *(a2 + 8) + 24 * v9;
      v30 = v7 | 0xFFFFFFFF00000000;
      std::vector<long long>::push_back[abi:ne200100](v19, &v30);
      v20 = *v6 ^ 1;
      v22 = *(a2 + 8);
      v21 = *(a2 + 9);
      v23 = (v21 - v22) >> 3;
      v24 = 0xAAAAAAAAAAAAAAABLL * v23;
      if (v20 >= -1431655765 * v23)
      {
        v25 = v20 + 1;
        if (v25 > v24)
        {
          std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append(a2 + 64, v25 - v24);
        }

        else if (v25 < v24)
        {
          v26 = v22 + 24 * v25;
          if (v21 != v26)
          {
            v27 = *(a2 + 9);
            do
            {
              v29 = *(v27 - 24);
              v27 -= 24;
              v28 = v29;
              if (v29)
              {
                *(v21 - 16) = v28;
                operator delete(v28);
              }

              v21 = v27;
            }

            while (v27 != v26);
          }

          *(a2 + 9) = v26;
        }
      }

      v8 = *(a2 + 8) + 24 * v20;
      v30 = v7 | 0xFFFFFFFF00000000;
      std::vector<long long>::push_back[abi:ne200100](v8, &v30);
      ++v6;
    }

    while (v6 != v5);
  }
}

uint64_t operations_research::sat::GreaterThanAtLeastOneOfPropagator::GreaterThanAtLeastOneOfPropagator(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  *a1 = &unk_284F3C720;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (24 * a4)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((24 * a4) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  if ((a6 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    if (((4 * a6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  if ((a8 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    if (((4 * a8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 88) = operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a9);
  *(a1 + 96) = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a9);
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  return a1;
}

{
  return operations_research::sat::GreaterThanAtLeastOneOfPropagator::GreaterThanAtLeastOneOfPropagator(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

void sub_23CA04938(_Unwind_Exception *exception_object)
{
  v6 = *v2;
  if (*v2)
  {
    v1[9] = v6;
    operator delete(v6);
    v7 = *v3;
    if (!*v3)
    {
LABEL_3:
      v8 = *v4;
      if (!*v4)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v7 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[6] = v7;
  operator delete(v7);
  v8 = *v4;
  if (!*v4)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  v1[3] = v8;
  operator delete(v8);
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::GreaterThanAtLeastOneOfPropagator::Propagate(operations_research::sat::GreaterThanAtLeastOneOfPropagator *this)
{
  v2 = *(this + 8);
  v3 = *(this + 9);
  if (v2 == v3)
  {
LABEL_5:
    v5 = *(this + 2);
    v6 = *(this + 3);
    if (v6 == v5)
    {
      goto LABEL_17;
    }

    v7 = 0;
    v8 = *(*(this + 12) + 40);
    v9 = *(v8 + 8 * *(this + 2));
    v10 = 0x7FFFFFFFFFFFFFFELL;
    v11 = 1;
    do
    {
      v12 = *(*(this + 5) + 4 * v7);
      v13 = *(*(*(this + 11) + 24) + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8));
      if ((v13 >> v12))
      {
        return 1;
      }

      if (((v13 >> (v12 & 0x3F ^ 1u)) & 1) == 0)
      {
        v14 = (v5 + 24 * v7);
        v15 = *(v14 + 2);
        if (*v14 != -1)
        {
          v15 += *(v8 + 8 * *v14) * *(v14 + 1);
        }

        if (v15 < v10)
        {
          v10 = v15;
        }

        if (v10 <= v9)
        {
          return 1;
        }
      }

      v7 = v11++;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3) > v7);
    if (v10 == 0x7FFFFFFFFFFFFFFELL)
    {
LABEL_17:
      v17 = *(this + 11);
      *(v17 + 120) = 0;
      if ((v17 + 72) != (this + 40))
      {
        std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>((v17 + 72), *(this + 5), *(this + 6), (*(this + 6) - *(this + 5)) >> 2);
      }

      return 0;
    }

    *(this + 14) = *(this + 13);
    *(this + 17) = *(this + 16);
    if (v2 != v3)
    {
      do
      {
        v18 = *v2++;
        LODWORD(v30) = v18 ^ 1;
        std::vector<int>::push_back[abi:ne200100](this + 104, &v30);
      }

      while (v2 != v3);
      v5 = *(this + 2);
      v6 = *(this + 3);
    }

    if (v6 == v5)
    {
      return operations_research::sat::IntegerTrail::Enqueue(*(this + 12), *(this + 2), v10, *(this + 13), (*(this + 14) - *(this + 13)) >> 2, *(this + 16), (*(this + 17) - *(this + 16)) >> 4);
    }

    v19 = 0;
    for (i = 1; ; ++i)
    {
      v21 = (v5 + 24 * v19);
      v22 = *v21;
      v23 = *(v21 + 2);
      if (*v21 == -1)
      {
        if (v23 < v10)
        {
LABEL_31:
          v24 = (*(this + 5) + 4 * v19);
          if ((*(*(*(this + 11) + 24) + ((*v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (*v24 & 0x3F ^ 1u)))
          {
            std::vector<int>::push_back[abi:ne200100](this + 104, v24);
          }

          else if (v22 != -1)
          {
            v25 = v22;
            v26 = v10 - v23;
            v27 = *(v21 + 1);
            v28 = (v10 - v23) / v27;
            if (v28 * v27 >= v26)
            {
              v29 = v28;
            }

            else
            {
              v29 = v28 + 1;
            }

            *&v30 = v25;
            *(&v30 + 1) = v29;
            std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](this + 128, &v30);
          }
        }
      }

      else if (v23 + *(*(*(this + 12) + 152) + 24 * v22) * *(v21 + 1) < v10)
      {
        goto LABEL_31;
      }

      v19 = i;
      v5 = *(this + 2);
      if (0xAAAAAAAAAAAAAAABLL * ((*(this + 3) - v5) >> 3) <= v19)
      {
        return operations_research::sat::IntegerTrail::Enqueue(*(this + 12), *(this + 2), v10, *(this + 13), (*(this + 14) - *(this + 13)) >> 2, *(this + 16), (*(this + 17) - *(this + 16)) >> 4);
      }
    }
  }

  v4 = *(this + 8);
  while (((*(*(*(this + 11) + 24) + ((*v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *v4) & 1) != 0)
  {
    if (++v4 == v3)
    {
      goto LABEL_5;
    }
  }

  return 1;
}

void operations_research::sat::GreaterThanAtLeastOneOfPropagator::RegisterWith(operations_research::sat::GreaterThanAtLeastOneOfPropagator *this, operations_research::sat::GenericLiteralWatcher *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = operations_research::sat::GenericLiteralWatcher::Register(a2, this);
  v5 = *(this + 5);
  v6 = *(this + 6);
  for (i = this; v5 != v6; ++v5)
  {
    v7 = *v5 ^ 1;
    v9 = *(a2 + 8);
    v8 = *(a2 + 9);
    v10 = (v8 - v9) >> 3;
    v11 = 0xAAAAAAAAAAAAAAABLL * v10;
    if (v7 >= -1431655765 * v10)
    {
      v12 = v7 + 1;
      if (v12 <= v11)
      {
        if (v12 < v11)
        {
          v13 = v9 + 24 * v12;
          if (v8 != v13)
          {
            v14 = *(a2 + 9);
            do
            {
              v16 = *(v14 - 24);
              v14 -= 24;
              v15 = v16;
              if (v16)
              {
                *(v8 - 16) = v15;
                operator delete(v15);
              }

              v8 = v14;
            }

            while (v14 != v13);
          }

          *(a2 + 9) = v13;
        }
      }

      else
      {
        std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append(a2 + 64, v12 - v11);
      }
    }

    v17 = *(a2 + 8) + 24 * v7;
    v36 = v4;
    LODWORD(v37) = -1;
    std::vector<long long>::push_back[abi:ne200100](v17, &v36);
  }

  v18 = *(i + 8);
  for (j = *(i + 9); v18 != j; ++v18)
  {
    v20 = *v18;
    v22 = *(a2 + 8);
    v21 = *(a2 + 9);
    v23 = (v21 - v22) >> 3;
    v24 = 0xAAAAAAAAAAAAAAABLL * v23;
    if (*v18 >= -1431655765 * v23)
    {
      v25 = v20 + 1;
      if (v25 <= v24)
      {
        if (v25 < v24)
        {
          v26 = v22 + 24 * v25;
          if (v21 != v26)
          {
            v27 = *(a2 + 9);
            do
            {
              v29 = *(v27 - 24);
              v27 -= 24;
              v28 = v29;
              if (v29)
              {
                *(v21 - 16) = v28;
                operator delete(v28);
              }

              v21 = v27;
            }

            while (v27 != v26);
          }

          *(a2 + 9) = v26;
        }
      }

      else
      {
        std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append(a2 + 64, v25 - v24);
      }
    }

    v30 = *(a2 + 8) + 24 * v20;
    v36 = v4;
    LODWORD(v37) = -1;
    std::vector<long long>::push_back[abi:ne200100](v30, &v36);
  }

  v32 = *(i + 2);
  for (k = *(i + 3); v32 != k; v32 += 24)
  {
    v33 = *v32;
    v39 = *(v32 + 4);
    v40 = *(v32 + 20);
    if (v33 != -1)
    {
      v36 = v33;
      v37 = v39;
      v38 = v40;
      operations_research::sat::GenericLiteralWatcher::WatchLowerBound(a2, &v36, v4);
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

void operations_research::sat::GenericLiteralWatcher::WatchLowerBound(uint64_t a1, int *a2, unsigned int a3)
{
  v3 = *a2;
  if (v3 != -1)
  {
    v7 = *(a1 + 88);
    v6 = *(a1 + 96);
    v8 = (a1 + 88);
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3);
    if (v9 <= v3)
    {
      v10 = v3 + 1;
      if (v10 <= v9)
      {
        if (v10 < v9)
        {
          v11 = v7 + 24 * v10;
          if (v6 != v11)
          {
            v12 = *(a1 + 96);
            do
            {
              v14 = *(v12 - 24);
              v12 -= 24;
              v13 = v14;
              if (v14)
              {
                *(v6 - 16) = v13;
                operator delete(v13);
              }

              v6 = v12;
            }

            while (v12 != v11);
          }

          *(a1 + 96) = v11;
        }
      }

      else
      {
        std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append(a1 + 88, v10 - v9);
      }
    }

    v17 = a3 | 0xFFFFFFFF00000000;
    v15 = (*v8 + 24 * v3);
    v16 = v15[1];
    if (*v15 == v16 || *(v16 - 8) != a3 || *(v16 - 4) != -1)
    {
      std::vector<long long>::push_back[abi:ne200100](v15, &v17);
    }
  }
}

void operations_research::sat::BooleanXorPropagator::~BooleanXorPropagator(operations_research::sat::BooleanXorPropagator *this)
{
  *this = &unk_284F3C750;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

{
  *this = &unk_284F3C750;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::GreaterThanAtLeastOneOfPropagator::~GreaterThanAtLeastOneOfPropagator(operations_research::sat::GreaterThanAtLeastOneOfPropagator *this)
{
  *this = &unk_284F3C720;
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    *(this + 9) = v4;
    operator delete(v4);
  }

  v5 = *(this + 5);
  if (v5)
  {
    *(this + 6) = v5;
    operator delete(v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    *(this + 3) = v6;
    operator delete(v6);
  }
}

{
  *this = &unk_284F3C720;
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    *(this + 9) = v4;
    operator delete(v4);
  }

  v5 = *(this + 5);
  if (v5)
  {
    *(this + 6) = v5;
    operator delete(v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    *(this + 3) = v6;
    operator delete(v6);
  }

  JUMPOUT(0x23EED9460);
}

uint64_t operations_research::sat::BoolVar::BoolVar(uint64_t result, int a2, uint64_t a3)
{
  *result = a3;
  *(result + 8) = a2;
  return result;
}

uint64_t operations_research::sat::BoolVar::WithName(uint64_t *a1, const void *a2, size_t a3)
{
  result = *a1;
  if (result)
  {
    v5 = *(a1 + 2);
    if (~v5 > v5)
    {
      v5 = ~v5;
    }

    v7 = *(result + 24);
    v6 = (result + 24);
    v8 = (v7 + 8 * v5 + 7);
    if ((v7 & 1) == 0)
    {
      v8 = v6;
    }

    v9 = *v8;
    v10 = *(v9 + 8);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((v9 + 40), a2, a3, v10);
    result = *a1;
    v11 = a1[1];
  }

  else
  {
    v12 = a1[1];
  }

  return result;
}

void operations_research::sat::BoolVar::Name(operations_research::sat::BoolVar *this@<X0>, uint64_t a2@<X8>)
{
  v18[6] = *MEMORY[0x277D85DE8];
  v2 = *this;
  if (!*this)
  {
    *(a2 + 23) = 4;
    strcpy(a2, "null");
    goto LABEL_14;
  }

  v3 = *(this + 2);
  if (~v3 <= v3)
  {
    v4 = *(this + 2);
  }

  else
  {
    v4 = ~v3;
  }

  v6 = *(v2 + 24);
  v5 = v2 + 24;
  v7 = v6 + 8 * v4 + 7;
  if (v6)
  {
    v5 = v7;
  }

  v8 = *(*v5 + 40) & 0xFFFFFFFFFFFFFFFCLL;
  if (v3 < 0)
  {
    v18[0] = "Not(";
    v18[1] = 4;
    v10 = *(v8 + 23);
    v11 = *(v8 + 8);
    if ((v10 & 0x80u) != 0)
    {
      v8 = *v8;
      v10 = v11;
    }

    v17[0] = v8;
    v17[1] = v10;
    v16[0] = ")";
    v16[1] = 1;
    absl::lts_20240722::StrCat(v18, v17, v16, a2);
    goto LABEL_14;
  }

  if ((*(v8 + 23) & 0x80000000) == 0)
  {
    v9 = *v8;
    *(a2 + 16) = *(v8 + 16);
    *a2 = v9;
LABEL_14:
    v12 = *MEMORY[0x277D85DE8];
    return;
  }

  v13 = *v8;
  v14 = *(v8 + 8);
  v15 = *MEMORY[0x277D85DE8];

  std::string::__init_copy_ctor_external(a2, v13, v14);
}

uint64_t operations_research::sat::IntVar::WithName(uint64_t *a1, const void *a2, size_t a3)
{
  result = *a1;
  if (result)
  {
    v6 = *(result + 24);
    v5 = (result + 24);
    v7 = (v6 + 8 * *(a1 + 2) + 7);
    if ((v6 & 1) == 0)
    {
      v7 = v5;
    }

    v8 = *v7;
    v9 = *(v8 + 8);
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((v8 + 40), a2, a3, v9);
    result = *a1;
    v10 = a1[1];
  }

  else
  {
    v11 = a1[1];
  }

  return result;
}

uint64_t operations_research::sat::LinearExpr::LinearExpr(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v6 = a3;
  if (a3 < 0)
  {
    LODWORD(v5) = ~a3;
    std::vector<int>::push_back[abi:ne200100](a1, &v5);
    v5 = -1;
    std::vector<long long>::push_back[abi:ne200100]((a1 + 24), &v5);
    ++*(a1 + 48);
  }

  else
  {
    std::vector<int>::push_back[abi:ne200100](a1, &v6);
    v5 = 1;
    std::vector<long long>::push_back[abi:ne200100]((a1 + 24), &v5);
  }

  return a1;
}

void sub_23CA0553C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
    v4 = *v1;
    if (!*v1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v4 = *v1;
    if (!*v1)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 8) = v4;
  operator delete(v4);
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::LinearExpr::LinearExpr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[1] = a2;
  v6 = a3;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  std::vector<int>::push_back[abi:ne200100](a1, &v6);
  v5[0] = 1;
  std::vector<long long>::push_back[abi:ne200100]((a1 + 24), v5);
  return a1;
}

void sub_23CA055E8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
    v4 = *v1;
    if (!*v1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v4 = *v1;
    if (!*v1)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 8) = v4;
  operator delete(v4);
  _Unwind_Resume(exception_object);
}

double operations_research::sat::LinearExpr::LinearExpr(operations_research::sat::LinearExpr *this, uint64_t a2)
{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 6) = a2;
  return result;
}

double operations_research::sat::LinearExpr::Sum@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 48) = 0;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = *(a1 + 8);
    operator new();
  }

  return result;
}

void sub_23CA0576C(_Unwind_Exception *a1)
{
  operator delete(v2);
  operations_research::sat::LinearExpr::~LinearExpr(v1);
  _Unwind_Resume(a1);
}

void sub_23CA05788(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  operations_research::sat::LinearExpr::~LinearExpr(va);
  operations_research::sat::LinearExpr::~LinearExpr(v2);
  _Unwind_Resume(a1);
}

void operations_research::sat::LinearExpr::Sum(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 48) = 0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = a1;
    v5 = &a1[2 * a2];
    do
    {
      operations_research::sat::LinearExpr::LinearExpr(&v6, *v3, v3[1]);
      *(a3 + 48) += v10;
      std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(a3, *(a3 + 8), v6, v7, (v7 - v6) >> 2);
      std::vector<long long>::__insert_with_size[abi:ne200100]<std::__wrap_iter<long long const*>,std::__wrap_iter<long long const*>>(a3 + 24, *(a3 + 32), __p, v9, (v9 - __p) >> 3);
      if (__p)
      {
        v9 = __p;
        operator delete(__p);
      }

      if (v6)
      {
        v7 = v6;
        operator delete(v6);
      }

      v3 += 2;
    }

    while (v3 != v5);
  }
}

void sub_23CA05888(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  operations_research::sat::LinearExpr::~LinearExpr(va);
  operations_research::sat::LinearExpr::~LinearExpr(v2);
  _Unwind_Resume(a1);
}

double operations_research::sat::LinearExpr::WeightedSum@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (a2 != a3)
  {
    operations_research::sat::LinearExpr::WeightedSum(a2, a3);
  }

  *(a4 + 48) = 0;
  result = 0.0;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  if (a2)
  {
    v5 = *(a1 + 8);
    operator new();
  }

  return result;
}

void sub_23CA05A40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  operator delete(v11);
  operations_research::sat::LinearExpr::~LinearExpr(v10);
  _Unwind_Resume(a1);
}

void sub_23CA05A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  operations_research::sat::LinearExpr::~LinearExpr(&a16);
  operations_research::sat::LinearExpr::~LinearExpr(&a9);
  operations_research::sat::LinearExpr::~LinearExpr(v16);
  _Unwind_Resume(a1);
}

void operations_research::sat::LinearExpr::WeightedSum(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a2 != a4)
  {
    operations_research::sat::LinearExpr::WeightedSum(a2, a4);
  }

  *(a5 + 48) = 0;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *a5 = 0u;
  if (a2)
  {
    v9 = 0;
    for (i = 0; i < a2; v9 = ++i)
    {
      operations_research::sat::LinearExpr::LinearExpr(v23, *(a1 + 16 * v9), *(a1 + 16 * v9 + 8));
      v11 = *(a3 + 8 * v9);
      v12 = v28 * v11;
      v28 *= v11;
      v13 = __p;
      v14 = v26;
      if (__p != v26)
      {
        v15 = __p;
        if (v26 - 8 == __p)
        {
          goto LABEL_24;
        }

        v16 = ((v26 - 8 - __p) >> 3) + 1;
        v15 = __p + 8 * (v16 & 0x3FFFFFFFFFFFFFFELL);
        v17 = (__p + 8);
        v18 = v16 & 0x3FFFFFFFFFFFFFFELL;
        do
        {
          v19 = *v17 * v11;
          *(v17 - 1) *= v11;
          *v17 = v19;
          v17 += 2;
          v18 -= 2;
        }

        while (v18);
        if (v16 != (v16 & 0x3FFFFFFFFFFFFFFELL))
        {
LABEL_24:
          do
          {
            *v15 *= v11;
            v15 += 8;
          }

          while (v15 != v14);
        }

        v12 = v28;
      }

      v20 = *v23;
      v29 = *v23;
      v21 = v24;
      v23[1] = 0;
      v24 = 0;
      v23[0] = 0;
      v30 = v21;
      v31 = v13;
      v32 = v14;
      v33 = v27;
      v26 = 0;
      v27 = 0;
      __p = 0;
      v34 = v12;
      *(a5 + 48) += v12;
      v22 = v20;
      std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(a5, *(a5 + 8), v20, *(&v20 + 1), (*(&v20 + 1) - v20) >> 2);
      std::vector<long long>::__insert_with_size[abi:ne200100]<std::__wrap_iter<long long const*>,std::__wrap_iter<long long const*>>(a5 + 24, *(a5 + 32), v13, v14, (v14 - v13) >> 3);
      if (v13)
      {
        operator delete(v13);
      }

      if (v22)
      {
        operator delete(v22);
      }

      if (__p)
      {
        v26 = __p;
        operator delete(__p);
      }

      if (v23[0])
      {
        v23[1] = v23[0];
        operator delete(v23[0]);
      }
    }
  }
}

void sub_23CA05C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  operations_research::sat::LinearExpr::~LinearExpr(&a17);
  operations_research::sat::LinearExpr::~LinearExpr(&a9);
  operations_research::sat::LinearExpr::~LinearExpr(v17);
  _Unwind_Resume(a1);
}

void std::vector<double>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

uint64_t operations_research::sat::Constraint::WithName(uint64_t *a1, const void *a2, size_t a3)
{
  v4 = *a1;
  v5 = *(*a1 + 8);
  if (v5)
  {
    google::protobuf::internal::ArenaStringPtr::Set((v4 + 40), a2, a3, *(v5 & 0xFFFFFFFFFFFFFFFELL));
  }

  else
  {
    google::protobuf::internal::ArenaStringPtr::Set((v4 + 40), a2, a3, v5);
  }

  return *a1;
}

uint64_t operations_research::sat::Constraint::OnlyEnforceIf(void *a1, uint64_t a2, int a3)
{
  v3 = *a1;
  v4 = (*a1 + 16);
  v5 = *v4;
  v6 = *v4;
  v7 = *a1;
  if (v5 == HIDWORD(v5))
  {
    v10 = a3;
    google::protobuf::RepeatedField<int>::Grow(*a1 + 16, HIDWORD(v5), (HIDWORD(v5) + 1));
    a3 = v10;
    v6 = *v4;
    v7 = *a1;
  }

  v8 = *(v3 + 24);
  *(v3 + 16) = v6 + 1;
  *(v8 + 4 * v6) = a3;
  return v7;
}

void operations_research::sat::CpModelBuilder::LinearExprToProto(const operations_research::sat::LinearExpr *a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  operations_research::sat::LinearExpressionProto::LinearExpressionProto(a3, 0);
  v7 = *a1;
  v8 = *(a1 + 1);
  if (*a1 != v8)
  {
    v9 = *(a3 + 16);
    v10 = *(a3 + 20);
    do
    {
      v11 = *v7;
      if (v9 == v10)
      {
        google::protobuf::RepeatedField<int>::Grow(a3 + 16, v9, (v9 + 1));
        LODWORD(v9) = *(a3 + 16);
        v10 = *(a3 + 20);
      }

      v12 = *(a3 + 24);
      *(a3 + 16) = v9 + 1;
      *(v12 + 4 * v9) = v11;
      ++v7;
      v9 = (v9 + 1);
    }

    while (v7 != v8);
  }

  if (a2)
  {
    v13 = -1;
  }

  else
  {
    v13 = 1;
  }

  v14 = *(a1 + 3);
  v15 = *(a1 + 4);
  if (v14 != v15)
  {
    v16 = *(a3 + 40);
    do
    {
      v17 = *v14;
      if (v16 == *(a3 + 44))
      {
        google::protobuf::RepeatedField<long long>::Grow(a3 + 40, v16);
        LODWORD(v16) = *(a3 + 40);
      }

      *(*(a3 + 48) + 8 * v16) = v17 * v13;
      v16 = (v16 + 1);
      *(a3 + 40) = v16;
      ++v14;
    }

    while (v14 != v15);
  }

  *(a3 + 64) = *(a1 + 6) * v13;
}

uint64_t operations_research::sat::CpModelBuilder::IndexFromConstant(operations_research::sat::CpModelBuilder *this, uint64_t a2)
{
  v30 = a2;
  v4 = (this + 160);
  v3 = *(this + 20);
  if (v3 > 1)
  {
    v16 = 0;
    _X10 = *(this + 22);
    __asm { PRFM            #4, [X10] }

    v23 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2));
    v24 = vdup_n_s8(v23 & 0x7F);
    v25 = ((v23 >> 7) ^ (_X10 >> 12)) & v3;
    v26 = *(_X10 + v25);
    v27 = vceq_s8(v26, v24);
    if (!v27)
    {
      goto LABEL_17;
    }

LABEL_15:
    while (*(*(this + 23) + 16 * ((v25 + (__clz(__rbit64(v27)) >> 3)) & v3)) != a2)
    {
      v27 &= ((v27 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v27)
      {
LABEL_17:
        while (!*&vceq_s8(v26, 0x8080808080808080))
        {
          v16 += 8;
          v25 = (v16 + v25) & v3;
          v26 = *(_X10 + v25);
          v27 = vceq_s8(v26, v24);
          if (v27)
          {
            goto LABEL_15;
          }
        }

        goto LABEL_4;
      }
    }
  }

  else if (*(this + 21) < 2uLL || *(this + 22) != a2)
  {
LABEL_4:
    v5 = *(this + 8);
    v6 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((this + 24), google::protobuf::Arena::DefaultConstruct<operations_research::sat::IntegerVariableProto>);
    v8 = (v6 + 16);
    v7 = *(v6 + 16);
    v9 = *(v6 + 20);
    if (v7 == v9)
    {
      v29 = v6;
      google::protobuf::RepeatedField<long long>::Grow(v6 + 16, v9);
      v6 = v29;
      v7 = *(v29 + 16);
      v9 = *(v29 + 20);
    }

    v10 = *(v6 + 24);
    v11 = v7 + 1;
    *(v6 + 16) = v7 + 1;
    *(v10 + 8 * v7) = a2;
    v12 = v30;
    if (v7 + 1 == v9)
    {
      v28 = v6;
      google::protobuf::RepeatedField<long long>::Grow(v8, v9);
      v11 = *(v28 + 16);
      v10 = *(v28 + 24);
    }

    *v8 = v11 + 1;
    *(v10 + 8 * v11) = v12;
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,int>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,int>>>::find_or_prepare_insert<long long>(v4, &v30, v31);
    if (v33 == 1)
    {
      v13 = v32;
      *v32 = v30;
      *(v13 + 8) = 0;
    }

    *(v32 + 8) = v5;
  }

  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,int>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,int>>>::find_or_prepare_insert<long long>(v4, &v30, v31);
  if (v33 == 1)
  {
    v14 = v32;
    *v32 = v30;
    *(v14 + 8) = 0;
  }

  return *(v32 + 8);
}

void operations_research::sat::CumulativeConstraint::AddDemand(uint64_t *a1, int a2, int a3, operations_research::sat::LinearExpr *a4)
{
  v7 = *a1;
  if (*(*a1 + 60) == 22)
  {
    v8 = *(v7 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(*a1);
    *(v7 + 60) = 22;
    v9 = *(v7 + 8);
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::Arena::DefaultConstruct<operations_research::sat::CumulativeConstraintProto>(v9);
    *(v7 + 48) = v8;
  }

  v10 = (v8 + 24);
  v11 = *(v8 + 24);
  v12 = v11;
  if (v11 == HIDWORD(v11))
  {
    v20 = v8;
    google::protobuf::RepeatedField<int>::Grow(v8 + 24, HIDWORD(v11), (HIDWORD(v11) + 1));
    v8 = v20;
    v12 = *v10;
  }

  v13 = *(v8 + 32);
  *(v8 + 24) = v12 + 1;
  *(v13 + 4 * v12) = a3;
  operations_research::sat::CpModelBuilder::LinearExprToProto(a4, 0, &v21);
  v14 = *a1;
  if (*(v14 + 60) == 22)
  {
    v15 = *(v14 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v14);
    *(v14 + 60) = 22;
    v16 = *(v14 + 8);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::Arena::DefaultConstruct<operations_research::sat::CumulativeConstraintProto>(v16);
    *(v14 + 48) = v15;
  }

  v17 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v15 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>);
  if (v17 != &v21)
  {
    v18 = *(v17 + 1);
    if (v18)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
      v19 = v22;
      if ((v22 & 1) == 0)
      {
LABEL_16:
        if (v18 != v19)
        {
LABEL_17:
          operations_research::sat::LinearExpressionProto::CopyFrom(v17, &v21);
          goto LABEL_21;
        }

LABEL_20:
        operations_research::sat::LinearExpressionProto::InternalSwap(v17, &v21);
        goto LABEL_21;
      }
    }

    else
    {
      v19 = v22;
      if ((v22 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    if (v18 != *(v19 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

LABEL_21:
  operations_research::sat::LinearExpressionProto::~LinearExpressionProto(&v21);
}

uint64_t operations_research::sat::IntervalVar::WithName(uint64_t *a1, const void *a2, size_t a3)
{
  result = *a1;
  if (result)
  {
    v6 = *(result + 48);
    v5 = (result + 48);
    v7 = (v6 + 8 * *(a1 + 2) + 7);
    if ((v6 & 1) == 0)
    {
      v7 = v5;
    }

    v8 = *v7;
    v9 = *(v8 + 8);
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((v8 + 40), a2, a3, v9);
    result = *a1;
    v10 = a1[1];
  }

  else
  {
    v11 = a1[1];
  }

  return result;
}

uint64_t operations_research::sat::CpModelBuilder::AddEquality(operations_research::sat::CpModelBuilder *this, const operations_research::sat::LinearExpr *a2, const operations_research::sat::LinearExpr *a3)
{
  v5 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((this + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
  v6 = v5;
  if (*(v5 + 60) == 12)
  {
    v7 = *(v5 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v5);
    *(v6 + 60) = 12;
    v8 = *(v6 + 8);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v5 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v8);
    v7 = v5;
    *(v6 + 48) = v5;
  }

  operations_research::sat::CpModelBuilder::FillLinearTerms(v5, a2, a3, v7);
  v9 = *(a3 + 6);
  v10 = *(a2 + 6);
  if (*(v6 + 60) == 12)
  {
    v11 = *(v6 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v6);
    *(v6 + 60) = 12;
    v12 = *(v6 + 8);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    v11 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v12);
    *(v6 + 48) = v11;
  }

  v13 = v9 - v10;
  v15 = *(v11 + 64);
  v14 = *(v11 + 68);
  v16 = (v11 + 64);
  if (v15 == v14)
  {
    v25 = v11;
    google::protobuf::RepeatedField<long long>::Grow(v11 + 64, v14);
    v11 = v25;
    v15 = *v16;
  }

  v17 = *(v11 + 72);
  *(v11 + 64) = v15 + 1;
  *(v17 + 8 * v15) = v13;
  if (*(v6 + 60) == 12)
  {
    v18 = *(v6 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v6);
    *(v6 + 60) = 12;
    v19 = *(v6 + 8);
    if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    v18 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v19);
    *(v6 + 48) = v18;
  }

  v21 = *(v18 + 64);
  v20 = *(v18 + 68);
  v22 = (v18 + 64);
  if (v21 == v20)
  {
    v26 = v18;
    google::protobuf::RepeatedField<long long>::Grow(v18 + 64, v20);
    v18 = v26;
    v21 = *v22;
  }

  v23 = *(v18 + 72);
  *(v18 + 64) = v21 + 1;
  *(v23 + 8 * v21) = v13;
  return v6;
}

operations_research::sat::CpModelBuilder *operations_research::sat::CpModelBuilder::NewIntVar(operations_research::sat::CpModelBuilder *this, const operations_research::Domain *a2)
{
  v4 = *(this + 8);
  v5 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((this + 24), google::protobuf::Arena::DefaultConstruct<operations_research::sat::IntegerVariableProto>);
  v6 = *a2;
  v9 = *(a2 + 1);
  v8 = a2 + 8;
  v7 = v9;
  if (v6)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  if ((v6 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    v11 = &v10[2 * (v6 >> 1)];
    v13 = (v5 + 16);
    v12 = *(v5 + 16);
    do
    {
      while (1)
      {
        v14 = *v10;
        v15 = *(v5 + 20);
        if (v12 == v15)
        {
          v19 = v5;
          google::protobuf::RepeatedField<long long>::Grow(v13, v12);
          v5 = v19;
          LODWORD(v12) = *(v19 + 16);
          v15 = *(v19 + 20);
        }

        v16 = *(v5 + 24);
        v17 = v12 + 1;
        *(v5 + 16) = v12 + 1;
        *(v16 + 8 * v12) = v14;
        v18 = v10[1];
        if (v12 + 1 == v15)
        {
          break;
        }

        v12 = (v12 + 2);
        *v13 = v12;
        *(v16 + 8 * v17) = v18;
        v10 += 2;
        if (v10 == v11)
        {
          return this;
        }
      }

      v20 = v5;
      google::protobuf::RepeatedField<long long>::Grow(v13, v15);
      v5 = v20;
      v21 = *(v20 + 16);
      v22 = *(v20 + 24);
      v12 = (v21 + 1);
      *v13 = v12;
      *(v22 + 8 * v21) = v18;
      v10 += 2;
    }

    while (v10 != v11);
  }

  return this;
}

operations_research::sat::CpModelBuilder *operations_research::sat::CpModelBuilder::NewBoolVar(operations_research::sat::CpModelBuilder *this)
{
  v2 = *(this + 8);
  v3 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((this + 24), google::protobuf::Arena::DefaultConstruct<operations_research::sat::IntegerVariableProto>);
  v5 = (v3 + 16);
  v4 = *(v3 + 16);
  v6 = *(v3 + 20);
  if (v4 == v6)
  {
    v10 = v3;
    google::protobuf::RepeatedField<long long>::Grow(v3 + 16, v6);
    v3 = v10;
    v11 = *(v10 + 16);
    v6 = *(v10 + 20);
    v7 = *(v10 + 24);
    v8 = v11 + 1;
    *(v10 + 16) = v11 + 1;
    *(v7 + 8 * v11) = 0;
    if (v11 + 1 != v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = v3;
    google::protobuf::RepeatedField<long long>::Grow(v5, v6);
    v8 = *(v12 + 16);
    v7 = *(v12 + 24);
    goto LABEL_3;
  }

  v7 = *(v3 + 24);
  v8 = v4 + 1;
  *(v3 + 16) = v4 + 1;
  *(v7 + 8 * v4) = 0;
  if (v4 + 1 == v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  *v5 = v8 + 1;
  *(v7 + 8 * v8) = 1;
  return this;
}

uint64_t operations_research::sat::CpModelBuilder::NewOptionalIntervalVar(uint64_t a1, const operations_research::sat::LinearExpr *a2, const operations_research::sat::LinearExpr *a3, const operations_research::sat::LinearExpr *a4, uint64_t a5, int a6)
{
  v11 = *(a1 + 56);
  v12 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((a1 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
  v13 = v12;
  v14 = (v12 + 16);
  v15 = *(v12 + 16);
  v16 = v15;
  if (v15 == HIDWORD(v15))
  {
    google::protobuf::RepeatedField<int>::Grow(v12 + 16, HIDWORD(v15), (HIDWORD(v15) + 1));
    v16 = *v14;
  }

  v17 = *(v13 + 24);
  *(v13 + 16) = v16 + 1;
  *(v17 + 4 * v16) = a6;
  if (*(v13 + 60) == 19)
  {
    v18 = *(v13 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v13);
    *(v13 + 60) = 19;
    v19 = *(v13 + 8);
    if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::Arena::DefaultConstruct<operations_research::sat::IntervalConstraintProto>(v19);
    v18 = v20;
    *(v13 + 48) = v20;
  }

  operations_research::sat::CpModelBuilder::LinearExprToProto(a2, 0, &v34);
  *(v18 + 16) |= 1u;
  v21 = *(v18 + 24);
  if (v21)
  {
    if (v21 == &v34)
    {
      goto LABEL_21;
    }

LABEL_14:
    v23 = *(v21 + 1);
    if (v23)
    {
      v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
      v24 = v35;
      if ((v35 & 1) == 0)
      {
LABEL_16:
        if (v23 != v24)
        {
LABEL_17:
          operations_research::sat::LinearExpressionProto::CopyFrom(v21, &v34);
          goto LABEL_21;
        }

LABEL_20:
        operations_research::sat::LinearExpressionProto::InternalSwap(v21, &v34);
        goto LABEL_21;
      }
    }

    else
    {
      v24 = v35;
      if ((v35 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    if (v23 != *(v24 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  v22 = *(v18 + 8);
  if (v22)
  {
    v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(v22);
  *(v18 + 24) = v21;
  if (v21 != &v34)
  {
    goto LABEL_14;
  }

LABEL_21:
  operations_research::sat::LinearExpressionProto::~LinearExpressionProto(&v34);
  operations_research::sat::CpModelBuilder::LinearExprToProto(a3, 0, &v34);
  *(v18 + 16) |= 4u;
  v25 = *(v18 + 40);
  if (v25)
  {
    if (v25 == &v34)
    {
      goto LABEL_34;
    }

LABEL_27:
    v27 = *(v25 + 1);
    if (v27)
    {
      v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
      v28 = v35;
      if ((v35 & 1) == 0)
      {
LABEL_29:
        if (v27 != v28)
        {
LABEL_30:
          operations_research::sat::LinearExpressionProto::CopyFrom(v25, &v34);
          goto LABEL_34;
        }

LABEL_33:
        operations_research::sat::LinearExpressionProto::InternalSwap(v25, &v34);
        goto LABEL_34;
      }
    }

    else
    {
      v28 = v35;
      if ((v35 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    if (v27 != *(v28 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_30;
    }

    goto LABEL_33;
  }

  v26 = *(v18 + 8);
  if (v26)
  {
    v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(v26);
  *(v18 + 40) = v25;
  if (v25 != &v34)
  {
    goto LABEL_27;
  }

LABEL_34:
  operations_research::sat::LinearExpressionProto::~LinearExpressionProto(&v34);
  operations_research::sat::CpModelBuilder::LinearExprToProto(a4, 0, &v34);
  *(v18 + 16) |= 2u;
  v29 = *(v18 + 32);
  if (v29)
  {
    if (v29 == &v34)
    {
      goto LABEL_47;
    }

LABEL_40:
    v31 = *(v29 + 1);
    if (v31)
    {
      v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
      v32 = v35;
      if ((v35 & 1) == 0)
      {
LABEL_42:
        if (v31 != v32)
        {
LABEL_43:
          operations_research::sat::LinearExpressionProto::CopyFrom(v29, &v34);
          goto LABEL_47;
        }

LABEL_46:
        operations_research::sat::LinearExpressionProto::InternalSwap(v29, &v34);
        goto LABEL_47;
      }
    }

    else
    {
      v32 = v35;
      if ((v35 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    if (v31 != *(v32 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_43;
    }

    goto LABEL_46;
  }

  v30 = *(v18 + 8);
  if (v30)
  {
    v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(v30);
  *(v18 + 32) = v29;
  if (v29 != &v34)
  {
    goto LABEL_40;
  }

LABEL_47:
  operations_research::sat::LinearExpressionProto::~LinearExpressionProto(&v34);
  return a1;
}

uint64_t operations_research::sat::FillDomainInProto<operations_research::sat::IntegerVariableProto>(uint64_t *a1, uint64_t a2)
{
  *(a2 + 16) = 0;
  v2 = (a2 + 16);
  v3 = *a1;
  v4 = *a1 >> 1;
  if (*(a2 + 20) < v4)
  {
    v21 = a2;
    google::protobuf::RepeatedField<long long>::Grow(a2 + 16, 0);
    a2 = v21;
    v4 = *a1 >> 1;
    result = (a1 + 1);
    if (*a1)
    {
      v8 = a1[1];
    }

    else
    {
      v8 = a1 + 1;
    }

    if ((v4 & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      return result;
    }
  }

  else
  {
    v7 = a1[1];
    result = (a1 + 1);
    v6 = v7;
    if (v3)
    {
      v8 = v6;
    }

    else
    {
      v8 = result;
    }

    if ((v4 & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      return result;
    }
  }

  v9 = &v8[2 * v4];
  v10 = *(a2 + 16);
  do
  {
    while (1)
    {
      v11 = *v8;
      v12 = *(a2 + 20);
      if (v10 == v12)
      {
        v16 = a2;
        result = google::protobuf::RepeatedField<long long>::Grow(v2, v10);
        a2 = v16;
        LODWORD(v10) = *(v16 + 16);
        v12 = *(v16 + 20);
      }

      v13 = *(a2 + 24);
      v14 = v10 + 1;
      *(a2 + 16) = v10 + 1;
      *(v13 + 8 * v10) = v11;
      v15 = v8[1];
      if (v10 + 1 == v12)
      {
        break;
      }

      v10 = (v10 + 2);
      *v2 = v10;
      *(v13 + 8 * v14) = v15;
      v8 += 2;
      if (v8 == v9)
      {
        return result;
      }
    }

    v17 = a2;
    result = google::protobuf::RepeatedField<long long>::Grow(v2, v12);
    a2 = v17;
    v18 = *(v17 + 16);
    v19 = *(v17 + 24);
    v10 = (v18 + 1);
    *v2 = v10;
    *(v19 + 8 * v18) = v15;
    v8 += 2;
  }

  while (v8 != v9);
  return result;
}

uint64_t operations_research::sat::CpModelBuilder::AddBoolAnd(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((a1 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
  if ((a3 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = (a2 + 8);
    v7 = 16 * a3;
    do
    {
      if (*(v5 + 60) == 4)
      {
        v8 = *(v5 + 48);
      }

      else
      {
        operations_research::sat::ConstraintProto::clear_constraint(v5);
        *(v5 + 60) = 4;
        v9 = *(v5 + 8);
        if (v9)
        {
          v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
        }

        v8 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v9);
        *(v5 + 48) = v8;
      }

      v10 = *v6;
      v11 = (v8 + 2);
      v12 = v8[2];
      v13 = v12;
      if (v12 == HIDWORD(v12))
      {
        v15 = v8;
        google::protobuf::RepeatedField<int>::Grow(v8 + 2, HIDWORD(v12), (HIDWORD(v12) + 1));
        v8 = v15;
        v13 = *v11;
      }

      v14 = v8[3];
      *(v8 + 4) = v13 + 1;
      *(v14 + 4 * v13) = v10;
      v6 += 4;
      v7 -= 16;
    }

    while (v7);
  }

  return v5;
}

uint64_t operations_research::sat::CpModelBuilder::FillLinearTerms(operations_research::sat::CpModelBuilder *this, const operations_research::sat::LinearExpr *a2, const operations_research::sat::LinearExpr *a3, operations_research::sat::LinearConstraintProto *a4)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  if (*a2 != v5)
  {
    v6 = *(a4 + 4);
    v7 = *(a4 + 5);
    v8 = a4 + 16;
    do
    {
      v9 = *v4;
      if (v6 == v7)
      {
        v11 = a3;
        v12 = a2;
        v13 = a4;
        result = google::protobuf::RepeatedField<int>::Grow(v8, v6, (v6 + 1));
        a2 = v12;
        a3 = v11;
        a4 = v13;
        LODWORD(v6) = *(v13 + 4);
        v7 = *(v13 + 5);
      }

      v10 = *(a4 + 3);
      *(a4 + 4) = v6 + 1;
      *(v10 + 4 * v6) = v9;
      ++v4;
      v6 = (v6 + 1);
    }

    while (v4 != v5);
  }

  v15 = *(a2 + 3);
  v16 = *(a2 + 4);
  if (v15 != v16)
  {
    v18 = (a4 + 40);
    v17 = *(a4 + 10);
    do
    {
      v19 = *v15;
      if (v17 == *(a4 + 11))
      {
        v20 = a3;
        v21 = a4;
        result = google::protobuf::RepeatedField<long long>::Grow(v18, v17);
        a3 = v20;
        a4 = v21;
        LODWORD(v17) = *v18;
      }

      *(*(a4 + 6) + 8 * v17) = v19;
      v17 = (v17 + 1);
      *(a4 + 10) = v17;
      ++v15;
    }

    while (v15 != v16);
  }

  v22 = *a3;
  v23 = *(a3 + 1);
  if (*a3 != v23)
  {
    v24 = *(a4 + 4);
    v25 = *(a4 + 5);
    v26 = a4 + 16;
    do
    {
      v27 = *v22;
      if (v24 == v25)
      {
        v29 = a3;
        v30 = a4;
        result = google::protobuf::RepeatedField<int>::Grow(v26, v24, (v24 + 1));
        a3 = v29;
        a4 = v30;
        LODWORD(v24) = *(v30 + 4);
        v25 = *(v30 + 5);
      }

      v28 = *(a4 + 3);
      *(a4 + 4) = v24 + 1;
      *(v28 + 4 * v24) = v27;
      ++v22;
      v24 = (v24 + 1);
    }

    while (v22 != v23);
  }

  v31 = *(a3 + 3);
  v32 = *(a3 + 4);
  if (v31 != v32)
  {
    v34 = (a4 + 40);
    v33 = *(a4 + 10);
    do
    {
      v35 = *v31;
      if (v33 == *(a4 + 11))
      {
        v36 = a4;
        result = google::protobuf::RepeatedField<long long>::Grow(v34, v33);
        a4 = v36;
        LODWORD(v33) = *v34;
      }

      *(*(a4 + 6) + 8 * v33) = -v35;
      v33 = (v33 + 1);
      *(a4 + 10) = v33;
      ++v31;
    }

    while (v31 != v32);
  }

  return result;
}

uint64_t operations_research::sat::CpModelBuilder::AddLessOrEqual(operations_research::sat::CpModelBuilder *this, const operations_research::sat::LinearExpr *a2, const operations_research::sat::LinearExpr *a3)
{
  v5 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((this + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
  v6 = v5;
  if (*(v5 + 60) == 12)
  {
    v7 = *(v5 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v5);
    *(v6 + 60) = 12;
    v8 = *(v6 + 8);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v5 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v8);
    v7 = v5;
    *(v6 + 48) = v5;
  }

  operations_research::sat::CpModelBuilder::FillLinearTerms(v5, a2, a3, v7);
  v9 = *(a3 + 6);
  v10 = *(a2 + 6);
  if (*(v6 + 60) == 12)
  {
    v11 = *(v6 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v6);
    *(v6 + 60) = 12;
    v12 = *(v6 + 8);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    v11 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v12);
    *(v6 + 48) = v11;
  }

  v14 = *(v11 + 64);
  v13 = *(v11 + 68);
  v15 = (v11 + 64);
  if (v14 == v13)
  {
    v24 = v11;
    google::protobuf::RepeatedField<long long>::Grow(v11 + 64, v13);
    v11 = v24;
    v14 = *v15;
  }

  v16 = *(v11 + 72);
  *(v11 + 64) = v14 + 1;
  *(v16 + 8 * v14) = 0x8000000000000000;
  if (*(v6 + 60) == 12)
  {
    v17 = *(v6 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v6);
    *(v6 + 60) = 12;
    v18 = *(v6 + 8);
    if (v18)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
    }

    v17 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v18);
    *(v6 + 48) = v17;
  }

  v20 = *(v17 + 64);
  v19 = *(v17 + 68);
  v21 = (v17 + 64);
  if (v20 == v19)
  {
    v25 = v17;
    google::protobuf::RepeatedField<long long>::Grow(v17 + 64, v19);
    v17 = v25;
    v20 = *v21;
  }

  v22 = *(v17 + 72);
  *(v17 + 64) = v20 + 1;
  *(v22 + 8 * v20) = v9 - v10;
  return v6;
}

uint64_t operations_research::sat::CpModelBuilder::AddNotEqual(operations_research::sat::CpModelBuilder *this, const operations_research::sat::LinearExpr *a2, const operations_research::sat::LinearExpr *a3)
{
  v5 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((this + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
  v6 = v5;
  if (*(v5 + 60) == 12)
  {
    v7 = *(v5 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v5);
    *(v6 + 60) = 12;
    v8 = *(v6 + 8);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v5 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v8);
    v7 = v5;
    *(v6 + 48) = v5;
  }

  operations_research::sat::CpModelBuilder::FillLinearTerms(v5, a2, a3, v7);
  v9 = *(a3 + 6);
  v10 = *(a2 + 6);
  if (*(v6 + 60) == 12)
  {
    v11 = *(v6 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v6);
    *(v6 + 60) = 12;
    v12 = *(v6 + 8);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    v11 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v12);
    *(v6 + 48) = v11;
  }

  v14 = *(v11 + 64);
  v13 = *(v11 + 68);
  v15 = (v11 + 64);
  if (v14 == v13)
  {
    v38 = v11;
    google::protobuf::RepeatedField<long long>::Grow(v11 + 64, v13);
    v11 = v38;
    v14 = *v15;
  }

  v16 = v9 - v10;
  v17 = *(v11 + 72);
  *(v11 + 64) = v14 + 1;
  *(v17 + 8 * v14) = 0x8000000000000000;
  if (*(v6 + 60) == 12)
  {
    v18 = *(v6 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v6);
    *(v6 + 60) = 12;
    v19 = *(v6 + 8);
    if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    v18 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v19);
    *(v6 + 48) = v18;
  }

  v21 = *(v18 + 64);
  v20 = *(v18 + 68);
  v22 = (v18 + 64);
  if (v21 == v20)
  {
    v39 = v18;
    google::protobuf::RepeatedField<long long>::Grow(v18 + 64, v20);
    v18 = v39;
    v21 = *v22;
  }

  v23 = *(v18 + 72);
  *(v18 + 64) = v21 + 1;
  *(v23 + 8 * v21) = v16 - 1;
  if (*(v6 + 60) == 12)
  {
    v24 = *(v6 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v6);
    *(v6 + 60) = 12;
    v25 = *(v6 + 8);
    if (v25)
    {
      v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
    }

    v24 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v25);
    *(v6 + 48) = v24;
  }

  v26 = v16 + 1;
  v28 = *(v24 + 64);
  v27 = *(v24 + 68);
  v29 = (v24 + 64);
  if (v28 == v27)
  {
    v40 = v24;
    google::protobuf::RepeatedField<long long>::Grow(v24 + 64, v27);
    v24 = v40;
    v28 = *v29;
  }

  v30 = *(v24 + 72);
  *(v24 + 64) = v28 + 1;
  *(v30 + 8 * v28) = v26;
  if (*(v6 + 60) == 12)
  {
    v31 = *(v6 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v6);
    *(v6 + 60) = 12;
    v32 = *(v6 + 8);
    if (v32)
    {
      v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
    }

    v31 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v32);
    *(v6 + 48) = v31;
  }

  v34 = *(v31 + 64);
  v33 = *(v31 + 68);
  v35 = (v31 + 64);
  if (v34 == v33)
  {
    v41 = v31;
    google::protobuf::RepeatedField<long long>::Grow(v31 + 64, v33);
    v31 = v41;
    v34 = *v35;
  }

  v36 = *(v31 + 72);
  *(v31 + 64) = v34 + 1;
  *(v36 + 8 * v34) = 0x7FFFFFFFFFFFFFFFLL;
  return v6;
}

uint64_t operations_research::sat::CpModelBuilder::AddCumulative(uint64_t a1, const operations_research::sat::LinearExpr *a2)
{
  v3 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((a1 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
  operations_research::sat::CpModelBuilder::LinearExprToProto(a2, 0, &v12);
  if (*(v3 + 60) == 22)
  {
    v4 = *(v3 + 48);
    *(v4 + 16) |= 1u;
    v5 = *(v4 + 72);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v3);
    *(v3 + 60) = 22;
    v6 = *(v3 + 8);
    if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::Arena::DefaultConstruct<operations_research::sat::CumulativeConstraintProto>(v6);
    v4 = v7;
    *(v3 + 48) = v7;
    *(v7 + 16) |= 1u;
    v5 = *(v7 + 72);
    if (v5)
    {
LABEL_3:
      if (v5 == &v12)
      {
        goto LABEL_18;
      }

LABEL_11:
      v9 = *(v5 + 1);
      if (v9)
      {
        v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
        v10 = v13;
        if ((v13 & 1) == 0)
        {
LABEL_13:
          if (v9 != v10)
          {
LABEL_14:
            operations_research::sat::LinearExpressionProto::CopyFrom(v5, &v12);
            goto LABEL_18;
          }

LABEL_17:
          operations_research::sat::LinearExpressionProto::InternalSwap(v5, &v12);
          goto LABEL_18;
        }
      }

      else
      {
        v10 = v13;
        if ((v13 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      if (v9 != *(v10 & 0xFFFFFFFFFFFFFFFELL))
      {
        goto LABEL_14;
      }

      goto LABEL_17;
    }
  }

  v8 = *(v4 + 8);
  if (v8)
  {
    v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(v8);
  *(v4 + 72) = v5;
  if (v5 != &v12)
  {
    goto LABEL_11;
  }

LABEL_18:
  operations_research::sat::LinearExpressionProto::~LinearExpressionProto(&v12);
  return v3;
}

double operations_research::sat::CpModelBuilder::Minimize(operations_research::sat::CpModelBuilder *this, const operations_research::sat::LinearExpr *a2)
{
  v4 = *(this + 16);
  if (v4)
  {
    operations_research::sat::CpObjectiveProto::Clear(v4);
  }

  v5 = *(this + 4) & 0xFFFFFFFE;
  *(this + 4) = v5;
  v6 = *(this + 19);
  if (v6)
  {
    operations_research::sat::FloatObjectiveProto::Clear(v6);
    v5 = *(this + 4);
  }

  *(this + 4) = v5 & 0xFFFFFFF7;
  v7 = *a2;
  v8 = *(a2 + 1);
  if (*a2 != v8)
  {
    do
    {
      v9 = *v7;
      *(this + 4) |= 1u;
      v10 = *(this + 16);
      if (!v10)
      {
        v11 = *(this + 1);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        google::protobuf::Arena::DefaultConstruct<operations_research::sat::CpObjectiveProto>(v11);
        *(this + 16) = v10;
      }

      v12 = (v10 + 16);
      v13 = *(v10 + 16);
      v14 = v13;
      if (v13 == HIDWORD(v13))
      {
        v16 = v10;
        google::protobuf::RepeatedField<int>::Grow(v10 + 16, HIDWORD(v13), (HIDWORD(v13) + 1));
        v10 = v16;
        v14 = *v12;
      }

      v15 = *(v10 + 24);
      *(v10 + 16) = v14 + 1;
      *(v15 + 4 * v14) = v9;
      ++v7;
    }

    while (v7 != v8);
  }

  v17 = *(a2 + 3);
  for (i = *(a2 + 4); v17 != i; ++v17)
  {
    v19 = *v17;
    *(this + 4) |= 1u;
    v20 = *(this + 16);
    if (!v20)
    {
      v21 = *(this + 1);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::Arena::DefaultConstruct<operations_research::sat::CpObjectiveProto>(v21);
      *(this + 16) = v20;
    }

    v23 = *(v20 + 40);
    v22 = *(v20 + 44);
    v24 = (v20 + 40);
    if (v23 == v22)
    {
      v26 = v20;
      google::protobuf::RepeatedField<long long>::Grow(v20 + 40, v22);
      v20 = v26;
      v23 = *v24;
    }

    v25 = *(v20 + 48);
    *(v20 + 40) = v23 + 1;
    *(v25 + 8 * v23) = v19;
  }

  *(this + 4) |= 1u;
  v27 = *(this + 16);
  if (!v27)
  {
    v28 = *(this + 1);
    if (v28)
    {
      v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::Arena::DefaultConstruct<operations_research::sat::CpObjectiveProto>(v28);
    *(this + 16) = v27;
  }

  result = *(a2 + 6);
  *(v27 + 88) = result;
  return result;
}

BOOL operations_research::sat::WriteModelProtoToFile<operations_research::sat::CpModelProto>(uint64_t a1, char *a2, size_t a3)
{
  if (a3 >= 3)
  {
    v3 = &a2[a3];
    v4 = *&a2[a3 - 3] == 30836 && a2[a3 - 1] == 116;
    if (v4 || a3 >= 9 && ((v5 = *(v3 - 9), v6 = *(v3 - 1), v5 == 0x746F727074786574) ? (v7 = v6 == 111) : (v7 = 0), v7))
    {
      memset(&v12[14], 0, 24);
      google::protobuf::TextFormat::Printer::Printer(v12);
      operations_research::sat::SetupTextFormatPrinter(v12, v10);
    }
  }

  file::SetBinaryProto(a2, a3, a1, 47802, v12);
  v9 = v12[0];
  if ((v12[0] & 1) == 0)
  {
    absl::lts_20240722::status_internal::StatusRep::Unref(v12[0], v8);
  }

  return v9 == 1;
}

void sub_23CA078E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::TextFormat::Printer::~Printer(va);
  if (*(v2 - 33) < 0)
  {
    operator delete(*(v2 - 56));
  }

  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::SolutionIntegerValue(operations_research::sat *this, const operations_research::sat::CpSolverResponse *a2, const operations_research::sat::LinearExpr *a3)
{
  result = *(a2 + 6);
  v5 = *a2;
  v6 = *(a2 + 1) - *a2;
  if (v6)
  {
    v7 = v6 >> 2;
    v8 = *(this + 4);
    v9 = *(a2 + 3);
    v10 = v7 - 1;
    if (v7 <= 1 || ((v11 = v10 > 0x7FFFFFFE, v12 = v10 >> 31, !v11) ? (v13 = v12 == 0) : (v13 = 0), !v13))
    {
      v14 = 0;
      v15 = 0;
LABEL_8:
      v16 = v15 + 1;
      do
      {
        result += *(v9 + 8 * v14) * *(v8 + 8 * *(v5 + 4 * v14));
        v14 = v16++;
      }

      while (v7 > v14);
      return result;
    }

    v17 = 0;
    v14 = v7 & 0xFFFFFFFE;
    v15 = v7 & 0xFFFFFFFE;
    v18 = (v5 + 4);
    v19 = (v9 + 8);
    v20 = v14;
    do
    {
      result += *(v19 - 1) * *(v8 + 8 * *(v18 - 1));
      v17 += *v19 * *(v8 + 8 * *v18);
      v18 += 2;
      v19 += 2;
      v20 -= 2;
    }

    while (v20);
    result += v17;
    if (v7 != v14)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL operations_research::sat::SolutionBooleanValue(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a3 & 0x7FFFFFFF;
  if (a3 < 0)
  {
    v3 = a3 & 0x7FFFFFFF ^ 0x7FFFFFFFLL;
  }

  return (*(*(a1 + 32) + 8 * v3) ^ ((a3 & 0x80000000) >> 31)) == 1;
}

double google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    v3 = a1;
  }

  else
  {
    v2 = operator new(0x50uLL);
    v3 = 0;
  }

  return operations_research::sat::LinearExpressionProto::LinearExpressionProto(v2, v3);
}

uint64_t google::protobuf::Arena::DefaultConstruct<operations_research::sat::DecisionStrategyProto>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    v3 = a1;
  }

  else
  {
    v2 = operator new(0x50uLL);
    v3 = 0;
  }

  return operations_research::sat::DecisionStrategyProto::DecisionStrategyProto(v2, v3);
}

void *std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  v6 = a5 - 1;
  if (a5 < 1)
  {
    return v5;
  }

  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (a5 > (v8 - v9) >> 2)
  {
    v10 = *a1;
    v11 = a5 + ((v9 - *a1) >> 2);
    if (v11 >> 62)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v12 = v8 - v10;
    if (v12 >> 1 > v11)
    {
      v11 = v12 >> 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v13 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (!(v13 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v31 = (__dst - v10);
    v32 = 4 * ((__dst - v10) >> 2);
    v33 = v32;
    if ((a5 & 0x3FFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_32;
    }

    v33 = (v32 + 4 * a5);
    if ((v6 & 0x3FFFFFFFFFFFFFFFuLL) >= 7 && (v31 - __src) >= 0x20)
    {
      v51 = (v6 & 0x3FFFFFFFFFFFFFFFLL) + 1;
      v52 = 4 * (v51 & 0x7FFFFFFFFFFFFFF8);
      v34 = (v32 + v52);
      v35 = &__src[v52];
      v53 = (__src + 16);
      v54 = (v32 + 16);
      v55 = v51 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v56 = *v53;
        *(v54 - 1) = *(v53 - 1);
        *v54 = v56;
        v53 += 2;
        v54 += 2;
        v55 -= 8;
      }

      while (v55);
      if (v51 == (v51 & 0x7FFFFFFFFFFFFFF8))
      {
        goto LABEL_32;
      }
    }

    else
    {
      v34 = v32;
      v35 = __src;
    }

    do
    {
      v36 = *v35;
      v35 += 4;
      *v34 = v36;
      v34 += 4;
    }

    while (v34 != v33);
LABEL_32:
    v37 = *(a1 + 8) - __dst;
    memcpy(v33, __dst, v37);
    v39 = &v33[v37];
    *(a1 + 8) = v5;
    v40 = *a1;
    v41 = v5 - *a1;
    v42 = v32 - v41;
    memcpy((v32 - v41), *a1, v41);
    *a1 = v42;
    *(a1 + 8) = v39;
    *(a1 + 16) = 0;
    if (v40)
    {
      operator delete(v40);
    }

    return v32;
  }

  v14 = v9 - __dst;
  v15 = (v9 - __dst) >> 2;
  if (v15 >= a5)
  {
    v14 = 4 * a5;
    v18 = &__dst[4 * a5];
    v19 = (v9 - 4 * a5);
    if (v19 >= v9)
    {
      v23 = *(a1 + 8);
    }

    else
    {
      v20 = v19 + 1;
      if (v9 > (v19 + 1))
      {
        v20 = *(a1 + 8);
      }

      v21 = v20 + v14 + ~v9;
      v22 = v21 < 0x1C || (a5 & 0x3FFFFFFFFFFFFFF8) == 0;
      v23 = *(a1 + 8);
      if (v22)
      {
        goto LABEL_75;
      }

      v24 = (v21 >> 2) + 1;
      v25 = 4 * (v24 & 0x7FFFFFFFFFFFFFF8);
      v19 = (v19 + v25);
      v23 = (v9 + v25);
      v26 = (v9 + 16);
      v27 = (v9 + 16 - v14);
      v28 = v24 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v29 = *v27;
        *(v26 - 1) = *(v27 - 1);
        *v26 = v29;
        v26 += 2;
        v27 += 2;
        v28 -= 8;
      }

      while (v28);
      if (v24 != (v24 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_75:
        do
        {
          v30 = *v19++;
          *v23++ = v30;
        }

        while (v19 < v9);
      }
    }

    *(a1 + 8) = v23;
    if (v9 != v18)
    {
      memmove(&__dst[4 * a5], __dst, v9 - v18);
    }

    if (v14)
    {
      goto LABEL_69;
    }

    return v5;
  }

  v16 = &__src[v14];
  if (&__src[v14] == a4)
  {
    v17 = *(a1 + 8);
  }

  else
  {
    v43 = &__src[v14];
    v44 = a4 - v16 - 4;
    if (v44 < 0x1C)
    {
      v17 = *(a1 + 8);
    }

    else
    {
      v17 = *(a1 + 8);
      if (v9 - v16 >= 0x20)
      {
        v45 = (v44 >> 2) + 1;
        v46 = 4 * (v45 & 0x7FFFFFFFFFFFFFF8);
        v43 = &v16[v46];
        v17 = v9 + v46;
        v47 = (v9 + 16);
        v48 = (v16 + 16);
        v49 = v45 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v50 = *v48;
          *(v47 - 1) = *(v48 - 1);
          *v47 = v50;
          v47 += 2;
          v48 += 2;
          v49 -= 8;
        }

        while (v49);
        if (v45 == (v45 & 0x7FFFFFFFFFFFFFF8))
        {
          goto LABEL_52;
        }
      }
    }

    do
    {
      v57 = *v43;
      v43 += 4;
      *v17 = v57;
      v17 += 4;
    }

    while (v43 != a4);
  }

LABEL_52:
  *(a1 + 8) = v17;
  if (v15 >= 1)
  {
    v58 = a5;
    v59 = &__dst[4 * a5];
    v60 = (v17 - 4 * a5);
    if (v60 >= v9)
    {
      v64 = v17;
    }

    else
    {
      v61 = v60 + 1;
      if (v9 > (v60 + 1))
      {
        v61 = v9;
      }

      v62 = &v61[v58] + ~v17;
      v63 = v62 < 0x1C || (a5 & 0x3FFFFFFFFFFFFFF8) == 0;
      v64 = v17;
      if (v63)
      {
        goto LABEL_76;
      }

      v65 = (v62 >> 2) + 1;
      v66 = 4 * (v65 & 0x7FFFFFFFFFFFFFF8);
      v60 = (v60 + v66);
      v64 = (v17 + v66);
      v67 = (v17 + 16);
      v68 = (v17 + 16 - v58 * 4);
      v69 = v65 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v70 = *v68;
        *(v67 - 1) = *(v68 - 1);
        *v67 = v70;
        v67 += 2;
        v68 += 2;
        v69 -= 8;
      }

      while (v69);
      if (v65 != (v65 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_76:
        do
        {
          v71 = *v60++;
          *v64++ = v71;
        }

        while (v60 < v9);
      }
    }

    *(a1 + 8) = v64;
    if (v17 != v59)
    {
      memmove(&__dst[4 * a5], __dst, v17 - v59);
    }

    if (v9 != v5)
    {
LABEL_69:
      memmove(v5, __src, v14);
    }
  }

  return v5;
}

void *std::vector<long long>::__insert_with_size[abi:ne200100]<std::__wrap_iter<long long const*>,std::__wrap_iter<long long const*>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  v6 = a5 - 1;
  if (a5 < 1)
  {
    return v5;
  }

  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (a5 > (v8 - v9) >> 3)
  {
    v10 = *a1;
    v11 = a5 + ((v9 - *a1) >> 3);
    if (v11 >> 61)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v12 = v8 - v10;
    if (v12 >> 2 > v11)
    {
      v11 = v12 >> 2;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (!(v13 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v31 = (__dst - v10);
    v32 = 8 * ((__dst - v10) >> 3);
    v33 = v32;
    if ((a5 & 0x1FFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_32;
    }

    v33 = (v32 + 8 * a5);
    if ((v6 & 0x1FFFFFFFFFFFFFFFuLL) >= 7 && (v31 - __src) >= 0x20)
    {
      v51 = (v6 & 0x1FFFFFFFFFFFFFFFLL) + 1;
      v52 = 8 * (v51 & 0x3FFFFFFFFFFFFFFCLL);
      v34 = (v32 + v52);
      v35 = &__src[v52];
      v53 = (__src + 16);
      v54 = (v32 + 16);
      v55 = v51 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v56 = *v53;
        *(v54 - 1) = *(v53 - 1);
        *v54 = v56;
        v53 += 2;
        v54 += 2;
        v55 -= 4;
      }

      while (v55);
      if (v51 == (v51 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_32;
      }
    }

    else
    {
      v34 = v32;
      v35 = __src;
    }

    do
    {
      v36 = *v35;
      v35 += 8;
      *v34 = v36;
      v34 += 8;
    }

    while (v34 != v33);
LABEL_32:
    v37 = *(a1 + 8) - __dst;
    memcpy(v33, __dst, v37);
    v39 = &v33[v37];
    *(a1 + 8) = v5;
    v40 = *a1;
    v41 = v5 - *a1;
    v42 = v32 - v41;
    memcpy((v32 - v41), *a1, v41);
    *a1 = v42;
    *(a1 + 8) = v39;
    *(a1 + 16) = 0;
    if (v40)
    {
      operator delete(v40);
    }

    return v32;
  }

  v14 = v9 - __dst;
  v15 = (v9 - __dst) >> 3;
  if (v15 >= a5)
  {
    v14 = 8 * a5;
    v18 = &__dst[8 * a5];
    v19 = (v9 - 8 * a5);
    if (v19 >= v9)
    {
      v23 = *(a1 + 8);
    }

    else
    {
      v20 = v19 + 1;
      if (v9 > (v19 + 1))
      {
        v20 = *(a1 + 8);
      }

      v21 = v20 + v14 + ~v9;
      v22 = v21 < 0x18 || (a5 & 0x1FFFFFFFFFFFFFFCLL) == 0;
      v23 = *(a1 + 8);
      if (v22)
      {
        goto LABEL_75;
      }

      v24 = (v21 >> 3) + 1;
      v25 = 8 * (v24 & 0x3FFFFFFFFFFFFFFCLL);
      v19 = (v19 + v25);
      v23 = (v9 + v25);
      v26 = (v9 + 16);
      v27 = (v9 + 16 - v14);
      v28 = v24 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v29 = *v27;
        *(v26 - 1) = *(v27 - 1);
        *v26 = v29;
        v26 += 2;
        v27 += 2;
        v28 -= 4;
      }

      while (v28);
      if (v24 != (v24 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_75:
        do
        {
          v30 = *v19++;
          *v23++ = v30;
        }

        while (v19 < v9);
      }
    }

    *(a1 + 8) = v23;
    if (v9 != v18)
    {
      memmove(&__dst[8 * a5], __dst, v9 - v18);
    }

    if (v14)
    {
      goto LABEL_69;
    }

    return v5;
  }

  v16 = &__src[v14];
  if (&__src[v14] == a4)
  {
    v17 = *(a1 + 8);
  }

  else
  {
    v43 = &__src[v14];
    v44 = a4 - v16 - 8;
    if (v44 < 0x18)
    {
      v17 = *(a1 + 8);
    }

    else
    {
      v17 = *(a1 + 8);
      if (v9 - v16 >= 0x20)
      {
        v45 = (v44 >> 3) + 1;
        v46 = 8 * (v45 & 0x3FFFFFFFFFFFFFFCLL);
        v43 = &v16[v46];
        v17 = v9 + v46;
        v47 = (v9 + 16);
        v48 = (v16 + 16);
        v49 = v45 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v50 = *v48;
          *(v47 - 1) = *(v48 - 1);
          *v47 = v50;
          v47 += 2;
          v48 += 2;
          v49 -= 4;
        }

        while (v49);
        if (v45 == (v45 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_52;
        }
      }
    }

    do
    {
      v57 = *v43;
      v43 += 8;
      *v17 = v57;
      v17 += 8;
    }

    while (v43 != a4);
  }

LABEL_52:
  *(a1 + 8) = v17;
  if (v15 >= 1)
  {
    v58 = a5;
    v59 = &__dst[8 * a5];
    v60 = (v17 - 8 * a5);
    if (v60 >= v9)
    {
      v64 = v17;
    }

    else
    {
      v61 = v60 + 1;
      if (v9 > (v60 + 1))
      {
        v61 = v9;
      }

      v62 = &v61[v58] + ~v17;
      v63 = v62 < 0x18 || (a5 & 0x1FFFFFFFFFFFFFFCLL) == 0;
      v64 = v17;
      if (v63)
      {
        goto LABEL_76;
      }

      v65 = (v62 >> 3) + 1;
      v66 = 8 * (v65 & 0x3FFFFFFFFFFFFFFCLL);
      v60 = (v60 + v66);
      v64 = (v17 + v66);
      v67 = (v17 + 16);
      v68 = (v17 + 16 - v58 * 8);
      v69 = v65 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v70 = *v68;
        *(v67 - 1) = *(v68 - 1);
        *v67 = v70;
        v67 += 2;
        v68 += 2;
        v69 -= 4;
      }

      while (v69);
      if (v65 != (v65 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_76:
        do
        {
          v71 = *v60++;
          *v64++ = v71;
        }

        while (v60 < v9);
      }
    }

    *(a1 + 8) = v64;
    if (v17 != v59)
    {
      memmove(&__dst[8 * a5], __dst, v17 - v59);
    }

    if (v9 != v5)
    {
LABEL_69:
      memmove(v5, __src, v14);
    }
  }

  return v5;
}

uint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,int>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,int>>>::find_or_prepare_insert<long long>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if (*result > 1)
  {
    v6 = 0;
    _X10 = result[2];
    __asm { PRFM            #4, [X10] }

    v13 = *a2;
    v14 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2));
    v15 = vdup_n_s8(v14 & 0x7F);
    v16 = ((v14 >> 7) ^ (_X10 >> 12)) & v3;
    v17 = *(_X10 + v16);
    v18 = vceq_s8(v17, v15);
    if (!v18)
    {
      goto LABEL_8;
    }

LABEL_5:
    v19 = result[3];
    do
    {
      v20 = (v16 + (__clz(__rbit64(v18)) >> 3)) & v3;
      if (*(v19 + 16 * v20) == v13)
      {
        *a3 = _X10 + v20;
        *(a3 + 8) = v19 + 16 * v20;
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
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v14, (v16 + (__clz(__rbit64(v21)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,int>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,int>>>::GetPolicyFunctions(void)::value);
    v24 = v22[3] + 16 * result;
    *a3 = result + v22[2];
    *(a3 + 8) = v24;
    *(a3 + 16) = 1;
  }

  else
  {
    if (result[1] > 1)
    {
      v4 = result + 2;
      if (result[2] != *a2)
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,int>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,int>>>::resize_impl(result, 3);
      }

      v5 = 0;
    }

    else
    {
      result[1] = 2;
      v4 = result + 2;
      v5 = 1;
    }

    *a3 = &absl::lts_20240722::container_internal::kSooControl;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,int>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,int>>>::resize_impl(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *a1 < 2 && v3 > 1;
  v6 = a1[2];
  v9 = v3 & 1;
  v10 = v2 < 2;
  v11 = v5;
  v7 = a1[3];
  v8[0] = v6;
  v8[1] = v7;
  v8[2] = v2;
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,16ul,true,true,8ul>(v8, a1);
}

int64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::find_or_prepare_insert<int>@<X0>(int64_t result@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
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
      if (*(v19 + 8 * v20) == v13)
      {
        *a3 = _X10 + v20;
        *(a3 + 8) = v19 + 8 * v20;
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
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v14, (v16 + (__clz(__rbit64(v21)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::GetPolicyFunctions(void)::value);
    v24 = *(v22 + 24) + 8 * result;
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
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::resize_impl(result, 3);
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

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::resize_impl(uint64_t a1, uint64_t a2)
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
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,8ul,true,true,4ul>(&v7, a1);
}

uint64_t operations_research::sat::PossibleIntegerOverflow(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 == 0x8000000000000000)
  {
    return 1;
  }

  if (a6 >= 0)
  {
    v7 = a6;
  }

  else
  {
    v7 = -a6;
  }

  v8 = -v7;
  if (a3)
  {
    v9 = 0;
    v12 = *(a1 + 24);
    v10 = (a1 + 24);
    v11 = v12;
    v13 = v12 + 7;
    v14 = 1;
    do
    {
      v15 = *(a4 + 8 * v9);
      if (v15 == 0x8000000000000000)
      {
        return 1;
      }

      v16 = *(a2 + 4 * v9);
      if (~v16 <= v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = ~v16;
      }

      v18 = (v13 + 8 * v17);
      if ((v11 & 1) == 0)
      {
        v18 = v10;
      }

      v19 = *v18;
      v20 = *(v19 + 24);
      v21 = v20[*(v19 + 16) - 1];
      v22 = *v20;
      if (v16 >= 0)
      {
        v23 = v15;
      }

      else
      {
        v23 = -v15;
      }

      v24 = ((v22 ^ v23) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      if ((v22 * v23) >> 64 == (v22 * v23) >> 63)
      {
        v24 = v22 * v23;
      }

      if ((v21 * v23) >> 64 == (v21 * v23) >> 63)
      {
        v25 = v21 * v23;
      }

      else
      {
        v25 = ((v21 ^ v23) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v25 >= v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = v25;
      }

      v27 = v26 & (v26 >> 63);
      v28 = (v8 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      v29 = __OFADD__(v8, v27);
      v8 += v27;
      if (v29)
      {
        v8 = v28;
      }

      if (v24 <= v25)
      {
        v30 = v25;
      }

      else
      {
        v30 = v24;
      }

      v31 = v30 & ~(v30 >> 63);
      v32 = (v7 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      v29 = __OFADD__(v7, v31);
      v7 += v31;
      if (v29)
      {
        v7 = v32;
      }

      v33 = v25 - 0x7FFFFFFFFFFFFFFFLL;
      v34 = (v24 - 0x7FFFFFFFFFFFFFFFLL) >= 2 && v33 >= 2;
      v35 = v34 && (v8 - 0x7FFFFFFFFFFFFFFFLL) >= 2;
      if (!v35 || (v7 - 0x7FFFFFFFFFFFFFFFLL) < 2)
      {
        return 1;
      }

      v9 = v14++;
    }

    while (a3 > v9);
  }

  v37 = v7 > 0x3FFFFFFFFFFFFFFFLL;
  return v8 < 0xC000000000000001 || v37;
}

void operations_research::sat::ValidateCpModel(operations_research::sat *this@<X0>, const operations_research::sat::CpModelProto *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>, __int128 a5@<Q0>)
{
  v607 = a2;
  v5 = this;
  v6 = a4;
  v661 = *MEMORY[0x277D85DE8];
  if (*(this + 8) >= 1)
  {
    v7 = 0;
    v8 = 0;
    v10 = this + 24;
    v9 = *(this + 3);
    v608 = this + 24;
    do
    {
      if (v9)
      {
        v21 = v9 + 8 * v7 + 7;
      }

      else
      {
        v21 = v10;
      }

      v22 = *v21;
      v23 = *(*v21 + 16);
      if (!v23)
      {
        v631 = "var #";
        v632.__r_.__value_.__r.__words[0] = 5;
        v24 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v7, &v658, a3);
        v656 = &v658;
        p_size = v24 - &v658;
        *v655 = " has no domain(): ";
        *&v655[8] = 18;
        google::protobuf::Message::ShortDebugString(__p);
      }

      if (v23)
      {
        v631 = "var #";
        v632.__r_.__value_.__r.__words[0] = 5;
        v25 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v7, &v658, a3);
        v656 = &v658;
        p_size = v25 - &v658;
        *v655 = " has an odd domain() size: ";
        *&v655[8] = 27;
        google::protobuf::Message::ShortDebugString(__p);
      }

      if (v23 < 1)
      {
        v26 = operations_research::IntervalsAreSortedAndNonAdjacent(0, 0);
      }

      else
      {
        a5 = **(v22 + 24);
        if (**(v22 + 24) <= *(*(v22 + 24) + 8))
        {
          *v613 = **(v22 + 24);
          operator new();
        }

        v26 = 0;
        v5 = this;
        v10 = v608;
      }

      if (!v26)
      {
        v631 = "var #";
        v632.__r_.__value_.__r.__words[0] = 5;
        v32 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v7, &v658, a3);
        v656 = &v658;
        p_size = v32 - &v658;
        *v655 = " has and invalid domain() format: ";
        *&v655[8] = 34;
        google::protobuf::Message::ShortDebugString(__p);
      }

      v27 = *(v22 + 24);
      v28 = *v27;
      v29 = v27[*(v22 + 16) - 1];
      v30 = v28 < 0x8000000000000002 || v29 == 0x7FFFFFFFFFFFFFFFLL;
      v6 = a4;
      if (v30)
      {
        v631 = "var #";
        v632.__r_.__value_.__r.__words[0] = 5;
        v31 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v7, &v658, a3);
        v656 = &v658;
        p_size = v31 - &v658;
        *v655 = " domain do not fall in [kint64min + 2, kint64max - 1]. ";
        *&v655[8] = 55;
        google::protobuf::Message::ShortDebugString(__p);
      }

      if (v28 < 0 && v28 + 0x7FFFFFFFFFFFFFFFLL < v29)
      {
        v631 = "var #";
        v632.__r_.__value_.__r.__words[0] = 5;
        v33 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v7, &v658, a3);
        v656 = &v658;
        p_size = v33 - &v658;
        *v655 = " has a domain that is too large, i.e. |UB - LB| overflow an int64_t: ";
        *&v655[8] = 69;
        google::protobuf::Message::ShortDebugString(__p);
      }

      *(a4 + 23) = 0;
      *a4 = 0;
      v9 = *(v5 + 3);
      v11 = (v9 + 8 * v7 + 7);
      if ((v9 & 1) == 0)
      {
        v11 = v10;
      }

      v12 = *v11;
      v13 = *(v12 + 24);
      v14 = *v13;
      v15 = v13[*(v12 + 16) - 1];
      if (*v13 >= 0)
      {
        v16 = *v13;
      }

      else
      {
        v16 = -v14;
      }

      if (v15 >= 0)
      {
        v17 = v15;
      }

      else
      {
        v17 = -v15;
      }

      v18 = v15 - v14;
      if (v16 <= v17)
      {
        v16 = v17;
      }

      if (v16 > v18)
      {
        v18 = v16;
      }

      v19 = __OFADD__(v8, v18);
      v20 = v8 + v18;
      if (v19)
      {
        v8 = (v8 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v20;
      }

      ++v7;
    }

    while (v7 < *(v5 + 8));
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      operator new();
    }
  }

  if (*(v5 + 14) >= 1)
  {
    v34 = 0;
    v35 = 0;
    v606 = 0;
    v604 = 0;
    v36 = (v5 + 48);
    v37 = (v5 + 24);
    v38 = &operations_research::sat::_RoutesConstraintProto_default_instance_;
    v609 = v36;
    while (2)
    {
      if (*v36)
      {
        v92 = (*v36 + 8 * v34 + 7);
      }

      else
      {
        v92 = v36;
      }

      v93 = *v92;
      operations_research::sat::GetReferencesUsedByConstraint(*v92, &v656);
      v94 = v656;
      if (v656 != p_size)
      {
        v95 = *(this + 8);
        do
        {
          v96 = v94->n128_u32[0];
          if (v95 <= v96 || v96 < -v95)
          {
            v107 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v96, &v655[16], a3);
            *v655 = &v655[16];
            *&v655[8] = v107 - &v655[16];
            v109 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v34, v654, v108);
            *&v653 = v654;
            *(&v653 + 1) = v109 - v654;
            google::protobuf::Message::ShortDebugString(__p);
          }

          v94 = (v94 + 4);
        }

        while (v94 != p_size);
      }

      v98 = *(v93 + 4);
      if (v98)
      {
        v99 = *(v93 + 3);
        v100 = *(this + 8);
        v101 = -v100;
        v102 = *(this + 3);
        v103 = 4 * v98;
        if (v102)
        {
          v110 = v102 + 7;
          while (1)
          {
            v104 = *v99;
            if (v100 <= v104 || v104 < v101)
            {
              break;
            }

            v112 = ~v104 <= v104 ? *v99 : ~v104;
            v113 = *(v110 + 8 * v112);
            v114 = *(v113 + 24);
            if ((*v114 & 0x8000000000000000) != 0 || v114[*(v113 + 16) - 1] >= 2)
            {
              break;
            }

            ++v99;
            v103 -= 4;
            if (!v103)
            {
              goto LABEL_171;
            }
          }
        }

        else
        {
          while (1)
          {
            v104 = *v99;
            if (v100 <= v104 || v104 < v101)
            {
              break;
            }

            v106 = *(v102 + 24);
            if ((*v106 & 0x8000000000000000) != 0 || v106[*(v102 + 16) - 1] >= 2)
            {
              break;
            }

            ++v99;
            v103 -= 4;
            if (!v103)
            {
              goto LABEL_171;
            }
          }
        }

        v127 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v104, &v655[16], a3);
        *v655 = &v655[16];
        *&v655[8] = v127 - &v655[16];
        v129 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v34, v654, v128);
        *&v653 = v654;
        *(&v653 + 1) = v129 - v654;
        google::protobuf::Message::ShortDebugString(__p);
      }

LABEL_171:
      v115 = v659;
      if (v659 != v660)
      {
        v116 = *(this + 8);
        v117 = -v116;
        v118 = *(this + 3);
        v119 = v118 + 7;
        if (v118)
        {
          while (1)
          {
            v120 = *v115;
            if (v116 <= v120 || v120 < v117)
            {
              break;
            }

            v124 = ~v120 <= v120 ? *v115 : ~v120;
            v125 = *(v119 + 8 * v124);
            v126 = *(v125 + 24);
            if ((*v126 & 0x8000000000000000) != 0 || v126[*(v125 + 16) - 1] >= 2)
            {
              break;
            }

            if (++v115 == v660)
            {
              goto LABEL_191;
            }
          }
        }

        else
        {
          while (1)
          {
            v120 = *v115;
            if (v116 <= v120 || v120 < v117)
            {
              break;
            }

            v122 = *(v118 + 24);
            if ((*v122 & 0x8000000000000000) != 0 || v122[*(v118 + 16) - 1] >= 2)
            {
              break;
            }

            if (++v115 == v660)
            {
              goto LABEL_191;
            }
          }
        }

        v130 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v120, &v655[16], a3);
        *v655 = &v655[16];
        *&v655[8] = v130 - &v655[16];
        v132 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v34, v654, v131);
        *&v653 = v654;
        *(&v653 + 1) = v132 - v654;
        google::protobuf::Message::ShortDebugString(__p);
      }

LABEL_191:
      *(v6 + 23) = 0;
      *v6 = 0;
      v36 = v609;
      if (v659)
      {
        v660 = v659;
        operator delete(v659);
      }

      if (v656)
      {
        p_size = v656;
        operator delete(v656);
      }

      if (*(v6 + 23) < 0)
      {
        if (*(v6 + 8))
        {
          goto LABEL_1116;
        }

        operator delete(*v6);
      }

      else if (*(v6 + 23))
      {
        goto LABEL_1116;
      }

      if (*v609)
      {
        v133 = *v609 + 8 * v34 + 7;
      }

      else
      {
        v133 = v609;
      }

      v134 = *v133;
      v616 = *v133;
      switch(*(*v133 + 60))
      {
        case 3:
        case 4:
          goto LABEL_138;
        case 7:
          v135 = *(v134 + 48);
          if (*(v135 + 32) != 2)
          {
            v631 = "An int_div constraint should have exactly 2 terms: ";
            v632.__r_.__value_.__r.__words[0] = 51;
            google::protobuf::Message::ShortDebugString(v655);
          }

          if ((*(v135 + 16) & 1) == 0)
          {
            v631 = "An int_div constraint should have a target: ";
            v632.__r_.__value_.__r.__words[0] = 44;
            google::protobuf::Message::ShortDebugString(v655);
          }

          v222 = *(v135 + 24);
          v221 = (v135 + 24);
          v223 = (v222 + 7);
          if (v222)
          {
            v221 = v223;
          }

          v6 = a4;
          if (*(a4 + 23) < 0)
          {
            if (*(a4 + 8))
            {
              goto LABEL_1116;
            }

            operator delete(*a4);
            v134 = v616;
          }

          else
          {
            v204 = *(a4 + 23);
            v134 = v616;
            if (*(a4 + 23))
            {
              goto LABEL_507;
            }
          }

          v279 = &operations_research::sat::_LinearArgumentProto_default_instance_;
          if (*(v134 + 60) == 7)
          {
            v279 = *(v134 + 48);
          }

          v281 = v279[3];
          v280 = (v279 + 3);
          v282 = (v281 + 15);
          if (v281)
          {
            v280 = v282;
          }

          v6 = a4;
          if (*(a4 + 23) < 0)
          {
            if (*(a4 + 8))
            {
              goto LABEL_1116;
            }

            operator delete(*a4);
            v134 = v616;
          }

          else
          {
            v204 = *(a4 + 23);
            v134 = v616;
            if (*(a4 + 23))
            {
              goto LABEL_507;
            }
          }

          v289 = &operations_research::sat::_LinearArgumentProto_default_instance_;
          if (*(v134 + 60) == 7)
          {
            v289 = *(v134 + 48);
          }

          v290 = v289[6];
          if (v290)
          {
            v291 = v290;
          }

          else
          {
            v291 = &operations_research::sat::_LinearExpressionProto_default_instance_;
          }

          v6 = a4;
          if (*(a4 + 23) < 0)
          {
            if (*(a4 + 8))
            {
              goto LABEL_1116;
            }

            operator delete(*a4);
            v134 = v616;
          }

          else
          {
            v204 = *(a4 + 23);
            v134 = v616;
            if (*(a4 + 23))
            {
              goto LABEL_507;
            }
          }

          v304 = &operations_research::sat::_LinearArgumentProto_default_instance_;
          if (*(v134 + 60) == 7)
          {
            v304 = *(v134 + 48);
          }

          v306 = v304[3];
          v305 = v304 + 3;
          v307 = (v306 + 15);
          if (v306)
          {
            v305 = v307;
          }

          v308 = *v305;
          v309 = *(*v305 + 4);
          if (v309 < 1)
          {
            goto LABEL_1123;
          }

          v310 = *(v308 + 6);
          v311 = *(v308 + 3);
          v312 = *v37;
          if (*v37)
          {
            v356 = 0;
            v313 = 0;
            v357 = v312 + 7;
            do
            {
              if (v310[v356])
              {
                v358 = *(v357 + 8 * v311[v356]);
                if (*(v358 + 16) != 2 || **(v358 + 24) != *(*(v358 + 24) + 8))
                {
                  break;
                }
              }

              v313 = ++v356 >= v309;
            }

            while (v309 != v356);
          }

          else
          {
            v313 = 0;
            v314 = *(v308 + 6);
            v315 = 1;
            v316 = v309;
            do
            {
              v317 = *v314++;
              if (v317 && (*(v312 + 16) != 2 || **(v312 + 24) != *(*(v312 + 24) + 8)))
              {
                break;
              }

              v313 = v315++ >= v309;
              --v316;
            }

            while (v316);
          }

          if (v313)
          {
LABEL_1123:
            {
              v631 = "Division by 0: ";
              v632.__r_.__value_.__r.__words[0] = 15;
              google::protobuf::Message::ShortDebugString(v655);
            }
          }

          else
          {
            v359 = *v310;
            if (!v359)
            {
              absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(0, 0, "coeff != 0");
            }

            v360 = *(v308 + 8);
            v361 = -v360 / v359;
            if (!(v361 * v359 + v360))
            {
              v362 = operations_research::Domain::Contains(&v631, v361);
              if (v631)
              {
                operator delete(v632.__r_.__value_.__l.__data_);
              }

              v6 = a4;
              v134 = v616;
              if (v362)
              {
                v631 = "The domain of the divisor cannot contain 0: ";
                v632.__r_.__value_.__r.__words[0] = 44;
                google::protobuf::Message::ShortDebugString(v655);
              }
            }
          }

          *(v6 + 23) = 0;
          *v6 = 0;
          v167 = *(v134 + 16);
          if (!v167)
          {
            goto LABEL_138;
          }

          goto LABEL_509;
        case 8:
          v181 = *(v134 + 48);
          if (*(v181 + 32) != 2)
          {
            v631 = "An int_mod constraint should have exactly 2 terms: ";
            v632.__r_.__value_.__r.__words[0] = 51;
            google::protobuf::Message::ShortDebugString(v655);
          }

          if ((*(v181 + 16) & 1) == 0)
          {
            v631 = "An int_mod constraint should have a target: ";
            v632.__r_.__value_.__r.__words[0] = 44;
            google::protobuf::Message::ShortDebugString(v655);
          }

          v225 = *(v181 + 24);
          v224 = (v181 + 24);
          v226 = (v225 + 7);
          if (v225)
          {
            v224 = v226;
          }

          v6 = a4;
          if (*(a4 + 23) < 0)
          {
            if (*(a4 + 8))
            {
              goto LABEL_1116;
            }

            operator delete(*a4);
            v134 = v616;
          }

          else
          {
            v204 = *(a4 + 23);
            v134 = v616;
            if (*(a4 + 23))
            {
              goto LABEL_507;
            }
          }

          v283 = &operations_research::sat::_LinearArgumentProto_default_instance_;
          if (*(v134 + 60) == 8)
          {
            v283 = *(v134 + 48);
          }

          v285 = v283[3];
          v284 = (v283 + 3);
          v286 = (v285 + 15);
          if (v285)
          {
            v284 = v286;
          }

          v6 = a4;
          if (*(a4 + 23) < 0)
          {
            if (*(a4 + 8))
            {
              goto LABEL_1116;
            }

            operator delete(*a4);
            v134 = v616;
          }

          else
          {
            v204 = *(a4 + 23);
            v134 = v616;
            if (*(a4 + 23))
            {
              goto LABEL_507;
            }
          }

          v292 = &operations_research::sat::_LinearArgumentProto_default_instance_;
          if (*(v134 + 60) == 8)
          {
            v292 = *(v134 + 48);
          }

          v293 = v292[6];
          if (v293)
          {
            v294 = v293;
          }

          else
          {
            v294 = &operations_research::sat::_LinearExpressionProto_default_instance_;
          }

          v6 = a4;
          if (*(a4 + 23) < 0)
          {
            if (*(a4 + 8))
            {
              goto LABEL_1116;
            }

            operator delete(*a4);
            v134 = v616;
          }

          else
          {
            v204 = *(a4 + 23);
            v134 = v616;
            if (*(a4 + 23))
            {
              goto LABEL_507;
            }
          }

          v318 = &operations_research::sat::_LinearArgumentProto_default_instance_;
          if (*(v134 + 60) == 8)
          {
            v318 = *(v134 + 48);
          }

          v320 = v318[3];
          v319 = (v318 + 3);
          v321 = (v320 + 15);
          if (v320)
          {
            v319 = v321;
          }

          operations_research::sat::LinearExpressionProto::LinearExpressionProto(&v631, 0, *v319);
          v322 = v637;
          v323 = LODWORD(v632.__r_.__value_.__r.__words[1]);
          if (SLODWORD(v632.__r_.__value_.__r.__words[1]) < 1)
          {
            v6 = a4;
            v134 = v616;
          }

          else
          {
            v324 = v632.__r_.__value_.__r.__words[2];
            v325 = v635;
            v326 = *v37;
            if (*v37)
            {
              v6 = a4;
              v134 = v616;
              do
              {
                v368 = *v324++;
                v367 = v368;
                v370 = *v325++;
                v369 = v370;
                if (~v367 <= v367)
                {
                  v371 = v367;
                }

                else
                {
                  v371 = ~v367;
                }

                v372 = *(*v37 + 7 + 8 * v371);
                if (v369 < 0)
                {
                  if (v367 < 0)
                  {
                    v363 = -**(v372 + 24);
                  }

                  else
                  {
                    v363 = *(*(v372 + 24) + 8 * (*(v372 + 16) - 1));
                  }

                  v364 = (v363 >> 63) ^ 0x8000000000000000;
                }

                else
                {
                  if (v367 < 0)
                  {
                    v363 = -*(*(v372 + 24) + 8 * (*(v372 + 16) - 1));
                  }

                  else
                  {
                    v363 = **(v372 + 24);
                  }

                  v364 = (v363 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
                }

                if ((v363 * v369) >> 64 == (v363 * v369) >> 63)
                {
                  v365 = v363 * v369;
                }

                else
                {
                  v365 = v364;
                }

                v366 = (v322 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
                v19 = __OFADD__(v322, v365);
                v322 += v365;
                if (v19)
                {
                  v322 = v366;
                }

                --v323;
              }

              while (v323);
            }

            else
            {
              v6 = a4;
              v134 = v616;
              do
              {
                v332 = *v324++;
                v331 = v332;
                v334 = *v325++;
                v333 = v334;
                if (v334 < 0)
                {
                  if (v331 < 0)
                  {
                    v327 = -**(v326 + 24);
                  }

                  else
                  {
                    v327 = *(*(v326 + 24) + 8 * (*(v326 + 16) - 1));
                  }

                  v328 = (v327 >> 63) ^ 0x8000000000000000;
                }

                else
                {
                  if (v331 < 0)
                  {
                    v327 = -*(*(v326 + 24) + 8 * (*(v326 + 16) - 1));
                  }

                  else
                  {
                    v327 = **(v326 + 24);
                  }

                  v328 = (v327 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
                }

                if ((v327 * v333) >> 64 == (v327 * v333) >> 63)
                {
                  v329 = v327 * v333;
                }

                else
                {
                  v329 = v328;
                }

                v330 = (v322 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
                v19 = __OFADD__(v322, v329);
                v322 += v329;
                if (v19)
                {
                  v322 = v330;
                }

                --v323;
              }

              while (v323);
            }
          }

          if (v322 <= 0)
          {
            v656 = "An int_mod must have a strictly positive modulo argument: ";
            p_size = 58;
            google::protobuf::Message::ShortDebugString(&v653);
          }

          std::string::basic_string[abi:ne200100]<0>(v6, &byte_23CE7F131);
          operations_research::sat::LinearExpressionProto::~LinearExpressionProto(&v631);
          v303 = *(v6 + 23);
          if (v303 < 0)
          {
            goto LABEL_653;
          }

          goto LABEL_333;
        case 0xB:
          v182 = *(v134 + 48);
          if ((v182[2] & 1) == 0)
          {
            v631 = "An int_prod constraint should have a target: ";
            v632.__r_.__value_.__r.__words[0] = 45;
            google::protobuf::Message::ShortDebugString(v655);
          }

          v198 = v182[3];
          if (v198)
          {
            v199 = (v198 + 7);
          }

          else
          {
            v199 = (v182 + 3);
          }

          v200 = *(v182 + 8);
          if (!v200)
          {
            goto LABEL_347;
          }

          v201 = 8 * v200;
          do
          {
            while (1)
            {
              if (*(v6 + 23) < 0)
              {
                break;
              }

              if (*(v6 + 23))
              {
                goto LABEL_1116;
              }

              ++v199;
              v201 -= 8;
              if (!v201)
              {
                goto LABEL_345;
              }
            }

            if (*(v6 + 8))
            {
              goto LABEL_1116;
            }

            operator delete(*v6);
            ++v199;
            v201 -= 8;
          }

          while (v201);
LABEL_345:
          v182 = &operations_research::sat::_LinearArgumentProto_default_instance_;
          if (*(v616 + 60) == 11)
          {
            v182 = *(v616 + 48);
          }

LABEL_347:
          v202 = v182[6];
          if (v202)
          {
            v203 = v202;
          }

          else
          {
            v203 = &operations_research::sat::_LinearExpressionProto_default_instance_;
          }

          v6 = a4;
          if (*(a4 + 23) < 0)
          {
            if (*(a4 + 8))
            {
              goto LABEL_1116;
            }

            operator delete(*a4);
          }

          else
          {
            v204 = *(a4 + 23);
            v134 = v616;
            if (*(a4 + 23))
            {
              goto LABEL_507;
            }
          }

          operations_research::Domain::Domain(v655, 1);
          v230 = v38;
          v231 = &operations_research::sat::_LinearArgumentProto_default_instance_;
          if (*(v616 + 60) == 11)
          {
            v231 = *(v616 + 48);
          }

          v233 = v231[3];
          v232 = v231 + 3;
          v234 = (v233 + 7);
          if (v233)
          {
            v235 = v234;
          }

          else
          {
            v235 = v232;
          }

          v236 = *(v232 + 2);
          if (v236)
          {
            v237 = &v235[v236];
            do
            {
              v238 = *v235;
              v239 = (*v235)[8];
              v240 = *(*v235 + 4);
              if (v240 < 1)
              {
                v248 = (*v235)[8];
              }

              else
              {
                v241 = v238[3];
                v242 = *v37;
                v243 = *v37 + 7;
                v244 = v238[6];
                v245 = v241;
                v246 = v244;
                v247 = *(*v235 + 4);
                v248 = (*v235)[8];
                do
                {
                  v254 = *v245++;
                  v253 = v254;
                  v256 = *v246++;
                  v255 = v256;
                  if (~v253 <= v253)
                  {
                    v257 = v253;
                  }

                  else
                  {
                    v257 = ~v253;
                  }

                  v258 = (v243 + 8 * v257);
                  if ((v242 & 1) == 0)
                  {
                    v258 = v37;
                  }

                  v259 = *v258;
                  if (v255 < 0)
                  {
                    if (v253 < 0)
                    {
                      v249 = -**(v259 + 24);
                    }

                    else
                    {
                      v249 = *(*(v259 + 24) + 8 * (*(v259 + 16) - 1));
                    }

                    v250 = (v249 >> 63) ^ 0x8000000000000000;
                  }

                  else
                  {
                    if (v253 < 0)
                    {
                      v249 = -*(*(v259 + 24) + 8 * (*(v259 + 16) - 1));
                    }

                    else
                    {
                      v249 = **(v259 + 24);
                    }

                    v250 = (v249 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
                  }

                  if ((v249 * v255) >> 64 == (v249 * v255) >> 63)
                  {
                    v251 = v249 * v255;
                  }

                  else
                  {
                    v251 = v250;
                  }

                  v19 = __OFADD__(v248, v251);
                  v252 = v248 + v251;
                  if (v19)
                  {
                    v248 = (v248 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v248 = v252;
                  }

                  --v247;
                }

                while (v247);
                do
                {
                  v265 = *v241++;
                  v264 = v265;
                  v267 = *v244++;
                  v266 = v267;
                  if (~v264 <= v264)
                  {
                    v268 = v264;
                  }

                  else
                  {
                    v268 = ~v264;
                  }

                  v269 = (v243 + 8 * v268);
                  if ((v242 & 1) == 0)
                  {
                    v269 = v37;
                  }

                  v270 = *v269;
                  if (v266 < 0)
                  {
                    if (v264 < 0)
                    {
                      v260 = -*(*(v270 + 24) + 8 * (*(v270 + 16) - 1));
                    }

                    else
                    {
                      v260 = **(v270 + 24);
                    }

                    v261 = (v260 >> 63) ^ 0x8000000000000000;
                  }

                  else
                  {
                    if (v264 < 0)
                    {
                      v260 = -**(v270 + 24);
                    }

                    else
                    {
                      v260 = *(*(v270 + 24) + 8 * (*(v270 + 16) - 1));
                    }

                    v261 = (v260 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
                  }

                  if ((v260 * v266) >> 64 == (v260 * v266) >> 63)
                  {
                    v262 = v260 * v266;
                  }

                  else
                  {
                    v262 = v261;
                  }

                  v19 = __OFADD__(v239, v262);
                  v263 = v239 + v262;
                  if (v19)
                  {
                    v239 = (v239 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v239 = v263;
                  }

                  --v240;
                }

                while (v240);
              }

              operations_research::Domain::Domain(&v656, v248, v239);
              operations_research::Domain::ContinuousMultiplicationBy(v655, &v656, &v631, v271);
              if (v655[0])
              {
                operator delete(*&v655[8]);
              }

              *v655 = v631;
              *&v655[8] = *&v632.__r_.__value_.__l.__data_;
              v631 = 0;
              if (v656)
              {
                operator delete(p_size);
              }

              ++v235;
            }

            while (v235 != v237);
          }

          v6 = a4;
          if (operations_research::Domain::Max(v655) < 0x8000000000000002 || operations_research::Domain::Min(v655) == 0x7FFFFFFFFFFFFFFFLL)
          {
            v631 = "integer overflow in constraint: ";
            v632.__r_.__value_.__r.__words[0] = 32;
            google::protobuf::Message::ShortDebugString(&v653);
          }

          v301 = &operations_research::sat::_LinearArgumentProto_default_instance_;
          if (*(v616 + 60) == 11)
          {
            v301 = *(v616 + 48);
          }

          if (*(v301 + 8) >= 3)
          {
            if (operations_research::Domain::Max(v655) == 0x7FFFFFFFFFFFFFFFLL || (v302 = operations_research::Domain::Min(v655), v302 == 0x8000000000000000 || v302 == 0x8000000000000001))
            {
              v631 = "Potential integer overflow in constraint: ";
              v632.__r_.__value_.__r.__words[0] = 42;
              google::protobuf::Message::ShortDebugString(&v653);
            }
          }

          std::string::basic_string[abi:ne200100]<0>(a4, &byte_23CE7F131);
          if (v655[0])
          {
            operator delete(*&v655[8]);
          }

          v38 = v230;
          v134 = v616;
          v303 = *(a4 + 23);
          if (v303 < 0)
          {
            goto LABEL_653;
          }

LABEL_333:
          if (v303)
          {
            goto LABEL_1116;
          }

          goto LABEL_508;
        case 0xC:
          v158 = *(v134 + 48);
          v159 = *(v158 + 64);
          if (v159)
          {
            goto LABEL_496;
          }

          if (v159 >= 1)
          {
            if (**(v158 + 72) <= *(*(v158 + 72) + 8))
            {
              v603 = **(v158 + 72);
              operator new();
            }

LABEL_496:
            v631 = "Invalid domain in constraint : ";
            v632.__r_.__value_.__r.__words[0] = 31;
            google::protobuf::Message::ShortDebugString(v655);
          }

          if (!operations_research::IntervalsAreSortedAndNonAdjacent(0, 0))
          {
            goto LABEL_496;
          }

          if (*(v616 + 60) == 12)
          {
            v272 = *(v616 + 48);
            v273 = *(v272 + 10);
            if (v273 != *(v272 + 4))
            {
              goto LABEL_540;
            }
          }

          else
          {
            v273 = dword_2810BEE70;
            if (dword_2810BEE70 != off_2810BEE58)
            {
LABEL_540:
              v631 = "coeffs_size() != vars_size() in constraint: ";
              v632.__r_.__value_.__r.__words[0] = 44;
              google::protobuf::Message::ShortDebugString(v655);
            }

            v272 = &operations_research::sat::_LinearConstraintProto_default_instance_;
          }

          if (operations_research::sat::PossibleIntegerOverflow(this, v272[3], v273, v272[6], v273, 0))
          {
            google::protobuf::Message::DebugString(&v631);
          }

          v6 = a4;
LABEL_581:
          *(v6 + 23) = 0;
          *v6 = 0;
          goto LABEL_138;
        case 0xD:
          v160 = *(v134 + 48);
          v162 = *(v160 + 16);
          v161 = v160 + 16;
          v163 = (v162 + 7);
          if (v162)
          {
            v164 = v163;
          }

          else
          {
            v164 = v161;
          }

          v165 = *(v161 + 8);
          if (!v165)
          {
            goto LABEL_266;
          }

          v166 = 8 * v165;
          do
          {
            while (1)
            {
              if ((*(v6 + 23) & 0x80000000) == 0)
              {
                break;
              }

              if (*(v6 + 8))
              {
                goto LABEL_1116;
              }

              operator delete(*v6);
              ++v164;
              v166 -= 8;
              if (!v166)
              {
                goto LABEL_266;
              }
            }

            if (*(v6 + 23))
            {
              goto LABEL_1116;
            }

            ++v164;
            v166 -= 8;
          }

          while (v166);
          goto LABEL_266;
        case 0xE:
          v168 = *(v134 + 48);
          operations_research::sat::LinearExpressionProto::LinearExpressionProto(&v631, 0);
          v169 = *(v168 + 40);
          v170 = HIDWORD(v632.__r_.__value_.__r.__words[1]);
          v171 = v632.__r_.__value_.__r.__words[1];
          if (LODWORD(v632.__r_.__value_.__r.__words[1]) == HIDWORD(v632.__r_.__value_.__r.__words[1]))
          {
            google::protobuf::RepeatedField<int>::Grow(&v632.__r_.__value_.__r.__words[1], HIDWORD(v632.__r_.__value_.__r.__words[1]), (HIDWORD(v632.__r_.__value_.__r.__words[1]) + 1));
            v170 = HIDWORD(v632.__r_.__value_.__r.__words[1]);
            v171 = v632.__r_.__value_.__r.__words[1];
          }

          v172 = (v171 + 1);
          LODWORD(v632.__r_.__value_.__r.__words[1]) = v171 + 1;
          *(v632.__r_.__value_.__r.__words[2] + 4 * v171) = v169;
          v173 = v634;
          if (v634 == HIDWORD(v634))
          {
            google::protobuf::RepeatedField<long long>::Grow(&v634, HIDWORD(v634));
            v173 = v634;
            v170 = HIDWORD(v632.__r_.__value_.__r.__words[1]);
            v172 = LODWORD(v632.__r_.__value_.__r.__words[1]);
          }

          LODWORD(v634) = v173 + 1;
          v635[v173] = 1;
          if (v172 == v170)
          {
            google::protobuf::RepeatedField<int>::Grow(&v632.__r_.__value_.__r.__words[1], v172, (v172 + 1));
            LODWORD(v172) = v632.__r_.__value_.__r.__words[1];
          }

          LODWORD(v632.__r_.__value_.__r.__words[1]) = v172 + 1;
          *(v632.__r_.__value_.__r.__words[2] + 4 * v172) = 0;
          v174 = v634;
          if (v634 == HIDWORD(v634))
          {
            google::protobuf::RepeatedField<long long>::Grow(&v634, HIDWORD(v634));
            v174 = v634;
          }

          v175 = v635;
          LODWORD(v634) = v174 + 1;
          v635[v174] = -1;
          v176 = *(v168 + 16);
          if (v176)
          {
            v177 = *(v168 + 24);
            v178 = v632.__r_.__value_.__r.__words[2];
            v179 = 4 * v176;
            do
            {
              *(v178 + 4) = *v177;
              if (operations_research::sat::PossibleIntegerOverflow(this, v178, SLODWORD(v632.__r_.__value_.__r.__words[1]), v175, v634, 0))
              {
                v656 = "Domain of the variables involved in element constraint may cause overflow";
                p_size = 73;
                google::protobuf::Message::ShortDebugString(&v653);
              }

              ++v177;
              v179 -= 4;
            }

            while (v179);
          }

          v6 = a4;
          *(a4 + 23) = 0;
          *a4 = 0;
          v134 = v616;
          operations_research::sat::LinearExpressionProto::~LinearExpressionProto(&v631);
          v204 = *(a4 + 23);
          if (v204 < 0)
          {
            goto LABEL_653;
          }

          goto LABEL_507;
        case 0xF:
          v185 = *(v134 + 48);
          v186 = *(v185 + 16);
          if (*(v185 + 40) != v186 || *(v185 + 64) != v186)
          {
            v631 = "Wrong field sizes in graph: ";
            v632.__r_.__value_.__r.__words[0] = 28;
            google::protobuf::Message::ShortDebugString(v655);
          }

          a5 = xmmword_23CE306D0;
          *v655 = xmmword_23CE306D0;
          if (v186 < 1)
          {
            goto LABEL_359;
          }

          v205 = 0;
          v206 = 4 * v186;
          while (2)
          {
            if (*(*(v185 + 48) + v205) != *(*(v185 + 24) + v205))
            {
              goto LABEL_355;
            }

            LODWORD(v656) = *(*(v185 + 48) + v205);
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(v655, &v656, &v631);
            if (v632.__r_.__value_.__s.__data_[8] == 1)
            {
              *v632.__r_.__value_.__l.__data_ = v656;
LABEL_355:
              v205 += 4;
              if (v206 == v205)
              {
LABEL_359:
                *(v6 + 23) = 0;
                *v6 = 0;
                goto LABEL_504;
              }

              continue;
            }

            break;
          }

          v631 = "Circuit/Route constraint contains multiple self-loop involving node ";
          v632.__r_.__value_.__r.__words[0] = 68;
          v274 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(*(v185 + 48) + v205), &v658, a3);
          v656 = &v658;
          p_size = v274 - &v658;
          absl::lts_20240722::StrCat(&v631, &v656, v6);
LABEL_504:
          if (*v655 >= 2uLL)
          {
            operator delete((*&v655[16] - (v655[8] & 1) - 8));
          }

          v134 = v616;
          v204 = *(v6 + 23);
          if ((v204 & 0x80000000) == 0)
          {
            goto LABEL_507;
          }

          goto LABEL_653;
        case 0x10:
          v183 = *(v134 + 48);
          v184 = *(v183 + 16);
          if (v184 && *(v183 + 40) % v184)
          {
            v631 = "The flat encoding of a table constraint must be a multiple of the number of variable: ";
            v632.__r_.__value_.__r.__words[0] = 86;
            google::protobuf::Message::DebugString(v655);
          }

          goto LABEL_581;
        case 0x11:
          v150 = *(v134 + 48);
          v151 = v150[10];
          if (v151 != v150[16] || v151 != v150[22])
          {
            v631 = "The transitions repeated fields must have the same size: ";
            v632.__r_.__value_.__r.__words[0] = 57;
            google::protobuf::Message::ShortDebugString(v655);
          }

          v605 = v35;
          v621 = 0;
          v622 = 0;
          v623 = &unk_23CE31C20;
          if (v151 < 1)
          {
            goto LABEL_247;
          }

          v152 = 0;
          v153 = 8 * v151;
          while (2)
          {
            v154 = &operations_research::sat::_AutomatonConstraintProto_default_instance_;
            if (*(v616 + 60) == 17)
            {
              v154 = *(v616 + 48);
            }

            v155 = v154[12][v152 / 8];
            if (v155 - 0x7FFFFFFFFFFFFFFFLL <= 2)
            {
              v631 = "labels in the automaton constraint are too big: ";
              v632.__r_.__value_.__r.__words[0] = 48;
              v295 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v155, &v658, a3);
              v656 = &v658;
              p_size = v295 - &v658;
              absl::lts_20240722::StrCat(&v631, &v656, v6);
            }

            else
            {
              v156 = v154[6][v152 / 8];
              v157 = v154[9][v152 / 8];
              v631 = v156;
              v632.__r_.__value_.__r.__words[0] = v155;
              v632.__r_.__value_.__l.__size_ = v157;
              *v655 = &v621;
              v656 = &v631;
              p_size = &v632.__r_.__value_.__l.__size_;
              a5 = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<long long,long long>,long long>,absl::lts_20240722::hash_internal::Hash<std::pair<long long,long long>>,std::equal_to<std::pair<long long,long long>>,std::allocator<std::pair<std::pair<long long,long long> const,long long>>>::EmplaceDecomposable::operator()<std::pair<long long,long long>,std::piecewise_construct_t const&,std::tuple<std::pair<long long,long long>&&>,std::tuple<long long &&>>(v655, &v631, &v656, &p_size, v618);
              if (v620)
              {
                v152 += 8;
                v6 = a4;
                if (v153 == v152)
                {
LABEL_247:
                  *(v6 + 23) = 0;
                  *v6 = 0;
                  break;
                }

                continue;
              }

              if (*(v619 + 16) == v157)
              {
                v296 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v156, &v655[16], a3);
                *v655 = &v655[16];
                *&v655[8] = v296 - &v655[16];
                v298 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v155, v654, v297);
                *&v653 = v654;
                *(&v653 + 1) = v298 - v654;
                v631 = "automaton: duplicate transition ";
                v632.__r_.__value_.__r.__words[0] = 32;
                *&v632.__r_.__value_.__r.__words[1] = *v655;
                v633 = " --(";
                v634 = 4;
                v635 = v654;
                v636 = v298 - v654;
                v637 = ")--> ";
                v638 = 5;
                v300 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v157, &v658, v299);
                v6 = a4;
                v656 = &v658;
                p_size = v300 - &v658;
                v639 = &v658;
                v640 = v300 - &v658;
                absl::lts_20240722::strings_internal::CatPieces(&v631, 6, a4);
              }

              else
              {
                v344 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v156, v628, a3);
                v627[0] = v628;
                v627[1] = (v344 - v628);
                v346 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v155, v626, v345);
                v624 = v626;
                v625 = v346 - v626;
                v347 = v619;
                v631 = "automaton: incompatible transitions ";
                v632.__r_.__value_.__r.__words[0] = 36;
                *&v632.__r_.__value_.__r.__words[1] = *v627;
                v633 = " --(";
                v634 = 4;
                v635 = v626;
                v636 = v346 - v626;
                v637 = ")--> ";
                v638 = 5;
                v349 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v157, &v658, v348);
                v6 = a4;
                v656 = &v658;
                p_size = v349 - &v658;
                v639 = &v658;
                v640 = v349 - &v658;
                v641 = " and ";
                v642 = 5;
                v351 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v156, &v655[16], v350);
                *v655 = &v655[16];
                *&v655[8] = v351 - &v655[16];
                v643 = &v655[16];
                v644 = v351 - &v655[16];
                v645 = " --(";
                v646 = 4;
                v353 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v155, v654, v352);
                *&v653 = v654;
                *(&v653 + 1) = v353 - v654;
                v647 = v654;
                v648 = v353 - v654;
                v649 = ")--> ";
                v650 = 5;
                v355 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(v347 + 16), v630, v354);
                __p[0] = v630;
                __p[1] = (v355 - v630);
                v651 = v630;
                v652 = v355 - v630;
                absl::lts_20240722::strings_internal::CatPieces(&v631, 12, a4);
              }
            }

            break;
          }

          v134 = v616;
          if (v621)
          {
            operator delete(&v623[-(v622 & 1) - 8]);
          }

          v35 = v605;
          v204 = *(v6 + 23);
          if (v204 < 0)
          {
            goto LABEL_653;
          }

          goto LABEL_507;
        case 0x12:
          if (*(*(v134 + 48) + 16) != *(*(v134 + 48) + 40))
          {
            v631 = "Non-matching fields size in inverse: ";
            v632.__r_.__value_.__r.__words[0] = 37;
            google::protobuf::Message::ShortDebugString(v655);
          }

          goto LABEL_508;
        case 0x13:
          if (*(v134 + 16) >= 2)
          {
            v631 = "Interval with more than one enforcement literals are currently not supported: ";
            v632.__r_.__value_.__r.__words[0] = 78;
            google::protobuf::Message::ShortDebugString(v655);
          }

          v195 = *(v134 + 48);
          v196 = *(v195 + 16);
          if ((v196 & 1) == 0)
          {
            v631 = "Interval must have a start expression: ";
            v632.__r_.__value_.__r.__words[0] = 39;
            google::protobuf::Message::ShortDebugString(v655);
          }

          if ((v196 & 4) == 0)
          {
            v631 = "Interval must have a size expression: ";
            v632.__r_.__value_.__r.__words[0] = 38;
            google::protobuf::Message::ShortDebugString(v655);
          }

          if ((v196 & 2) == 0)
          {
            v631 = "Interval must have a end expression: ";
            v632.__r_.__value_.__r.__words[0] = 37;
            google::protobuf::Message::ShortDebugString(v655);
          }

          operations_research::sat::LinearExpressionProto::LinearExpressionProto(&v631, 0);
          if (*(v195 + 24))
          {
            v288 = *(v195 + 24);
          }

          else
          {
            v288 = &operations_research::sat::_LinearExpressionProto_default_instance_;
          }

          if (v288[4] >= 2)
          {
            operator new();
          }

          v6 = a4;
          if (*(a4 + 23) < 0)
          {
            if (*(a4 + 8))
            {
              goto LABEL_821;
            }

            operator delete(*a4);
          }

          else if (*(a4 + 23))
          {
            goto LABEL_821;
          }

          if (*(v195 + 24))
          {
            v421 = *(v195 + 24);
          }

          else
          {
            v421 = &operations_research::sat::_LinearExpressionProto_default_instance_;
          }

          if (*(v195 + 40))
          {
            v422 = *(v195 + 40);
          }

          else
          {
            v422 = &operations_research::sat::_LinearExpressionProto_default_instance_;
          }

          v423 = "Interval with a size expression containing more than one variable are currently not supported.";
          if (v422[4] > 1)
          {
            goto LABEL_781;
          }

          if (*(a4 + 23) < 0)
          {
            if (*(a4 + 8))
            {
              goto LABEL_821;
            }

            operator delete(*a4);
          }

          else if (*(a4 + 23))
          {
            goto LABEL_821;
          }

          v426 = *(v195 + 40);
          if (!*(v616 + 16))
          {
            v427 = v426 ? *(v195 + 40) : &operations_research::sat::_LinearExpressionProto_default_instance_;
            {
              v656 = "The size of a performed interval must be >= 0 in constraint: ";
              p_size = 61;
              google::protobuf::Message::DebugString(&v653);
            }
          }

          if (v426)
          {
            v428 = v426;
          }

          else
          {
            v428 = &operations_research::sat::_LinearExpressionProto_default_instance_;
          }

          if (*(v195 + 32))
          {
            v429 = *(v195 + 32);
          }

          else
          {
            v429 = &operations_research::sat::_LinearExpressionProto_default_instance_;
          }

          v423 = "Interval with a end expression containing more than one variable are currently not supported.";
          if (v429[4] > 1)
          {
            goto LABEL_781;
          }

          if (*(a4 + 23) < 0)
          {
            v36 = v609;
            v6 = a4;
            if (!*(a4 + 8))
            {
              operator delete(*a4);
LABEL_813:
              if (*(v195 + 32))
              {
                v431 = *(v195 + 32);
              }

              else
              {
                v431 = &operations_research::sat::_LinearExpressionProto_default_instance_;
              }

              v432 = operations_research::sat::PossibleIntegerOverflow(this, v632.__r_.__value_.__r.__words[2], SLODWORD(v632.__r_.__value_.__r.__words[1]), v635, v634, v637);
              v423 = &byte_23CE7F131;
              if (v432)
              {
                v656 = "Possible overflow in interval: ";
                p_size = 31;
                if (*(v616 + 60) == 19)
                {
                  v433 = *(v616 + 48);
                }

                google::protobuf::Message::ShortDebugString(&v653);
              }

LABEL_781:
              std::string::basic_string[abi:ne200100]<0>(v6, v423);
            }
          }

          else
          {
            v36 = v609;
            v6 = a4;
            if (!*(a4 + 23))
            {
              goto LABEL_813;
            }
          }

LABEL_821:
          operations_research::sat::LinearExpressionProto::~LinearExpressionProto(&v631);
          if (*(v6 + 23) < 0)
          {
            if (*(v6 + 8))
            {
              goto LABEL_1116;
            }

            operator delete(*v6);
          }

          else if (*(v6 + 23))
          {
            goto LABEL_1116;
          }

          goto LABEL_138;
        case 0x14:
          v145 = v606;
          if (v606 < v604)
          {
            goto LABEL_292;
          }

          v146 = v606 - v35;
          v147 = (v606 - v35) >> 2;
          v148 = v147 + 1;
          if ((v147 + 1) >> 62)
          {
            goto LABEL_1119;
          }

          if ((v604 - v35) >> 1 > v148)
          {
            v148 = (v604 - v35) >> 1;
          }

          if (v604 - v35 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v149 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v149 = v148;
          }

          if (!v149)
          {
            goto LABEL_330;
          }

          if (!(v149 >> 62))
          {
            operator new();
          }

          goto LABEL_1120;
        case 0x15:
          v145 = v606;
          if (v606 < v604)
          {
            goto LABEL_292;
          }

          v146 = v606 - v35;
          v147 = (v606 - v35) >> 2;
          v180 = v147 + 1;
          if ((v147 + 1) >> 62)
          {
            goto LABEL_1119;
          }

          if ((v604 - v35) >> 1 > v180)
          {
            v180 = (v604 - v35) >> 1;
          }

          if (v604 - v35 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v149 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v149 = v180;
          }

          if (!v149)
          {
            goto LABEL_330;
          }

          if (!(v149 >> 62))
          {
            operator new();
          }

          goto LABEL_1120;
        case 0x16:
          v145 = v606;
          if (v606 >= v604)
          {
            v146 = v606 - v35;
            v147 = (v606 - v35) >> 2;
            v197 = v147 + 1;
            if ((v147 + 1) >> 62)
            {
LABEL_1119:
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            if ((v604 - v35) >> 1 > v197)
            {
              v197 = (v604 - v35) >> 1;
            }

            if (v604 - v35 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v149 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v149 = v197;
            }

            if (v149)
            {
              if (!(v149 >> 62))
              {
                operator new();
              }

LABEL_1120:
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

LABEL_330:
            v604 = 4 * v149;
            *(4 * v147) = v34;
            v606 = 4 * v147 + 4;
            memcpy(0, v35, v146);
            v35 = 0;
            v6 = a4;
            v134 = v616;
            v167 = *(v616 + 16);
            if (v167)
            {
              goto LABEL_509;
            }
          }

          else
          {
LABEL_292:
            *v145 = v34;
            v606 = (v145 + 1);
            v167 = *(v134 + 16);
            if (v167)
            {
              goto LABEL_509;
            }
          }

          goto LABEL_138;
        case 0x17:
          v653 = xmmword_23CE306D0;
          v188 = *(v134 + 48);
          v189 = *(v188 + 4);
          if (v189)
          {
            v190 = v38;
            v191 = 0;
            v192 = v188[3];
            v193 = 4 * v189;
            do
            {
              LODWORD(v656) = *v192;
              if ((v656 & 0x80000000) != 0)
              {
                operator new();
              }

              absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v653, &v656, &v631);
              v194 = v656;
              if (v632.__r_.__value_.__s.__data_[8] == 1)
              {
                *v632.__r_.__value_.__l.__data_ = v656;
              }

              if (v191 <= v194)
              {
                v191 = v194;
              }

              v192 = (v192 + 4);
              v193 -= 4;
            }

            while (v193);
            v38 = v190;
            if (*(v616 + 60) == 23)
            {
              v188 = *(v616 + 48);
            }

            else
            {
              v188 = v190;
            }
          }

          else
          {
            v191 = 0;
          }

          v214 = v38;
          v215 = *(v188 + 10);
          if (v215)
          {
            v216 = v188[6];
            v217 = 4 * v215;
            do
            {
              LODWORD(v656) = *v216;
              if ((v656 & 0x80000000) != 0)
              {
                operator new();
              }

              absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v653, &v656, &v631);
              v218 = v656;
              if (v632.__r_.__value_.__s.__data_[8] == 1)
              {
                *v632.__r_.__value_.__l.__data_ = v656;
              }

              if (v191 <= v218)
              {
                v191 = v218;
              }

              v216 = (v216 + 4);
              v217 -= 4;
            }

            while (v217);
          }

          if (*(&v653 + 1) >= 2uLL && (*(&v653 + 1) >> 1) - 1 != v191)
          {
            operator new();
          }

          v38 = v214;
          if (*(v616 + 60) == 23)
          {
            v214 = *(v616 + 48);
          }

          v219 = *(v214 + 4);
          if (*(v214 + 10) != v219 || *(v214 + 16) != v219)
          {
            v631 = "Wrong field sizes in graph: ";
            v632.__r_.__value_.__r.__words[0] = 28;
            google::protobuf::Message::ShortDebugString(v655);
          }

          a5 = xmmword_23CE306D0;
          *v655 = xmmword_23CE306D0;
          if (v219 < 1)
          {
            goto LABEL_499;
          }

          v227 = 0;
          v228 = v214[3];
          v229 = 4 * v219;
          while (2)
          {
            if (*(v214[6] + v227) != *(v228 + v227))
            {
              goto LABEL_423;
            }

            LODWORD(v656) = *(v214[6] + v227);
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(v655, &v656, &v631);
            if (v632.__r_.__value_.__s.__data_[8])
            {
              *v632.__r_.__value_.__l.__data_ = v656;
              v228 = v214[3];
              if (!*(v228 + v227))
              {
                operator new();
              }

LABEL_423:
              v227 += 4;
              if (v229 == v227)
              {
LABEL_499:
                *(v6 + 23) = 0;
                *v6 = 0;
                goto LABEL_500;
              }

              continue;
            }

            break;
          }

          v631 = "Circuit/Route constraint contains multiple self-loop involving node ";
          v632.__r_.__value_.__r.__words[0] = 68;
          v343 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(v214[6] + v227), &v658, a3);
          v656 = &v658;
          p_size = v343 - &v658;
          absl::lts_20240722::StrCat(&v631, &v656, v6);
LABEL_500:
          if (*v655 >= 2uLL)
          {
            operator delete((*&v655[16] - (v655[8] & 1) - 8));
          }

          v134 = v616;
          if (v653 < 2)
          {
            v204 = *(v6 + 23);
            if ((v204 & 0x80000000) == 0)
            {
              goto LABEL_507;
            }
          }

          else
          {
            operator delete((v654[0] - (BYTE8(v653) & 1) - 8));
            v204 = *(v6 + 23);
            if ((v204 & 0x80000000) == 0)
            {
LABEL_507:
              if (v204)
              {
                goto LABEL_1116;
              }

              goto LABEL_508;
            }
          }

LABEL_653:
          if (*(v6 + 8))
          {
            goto LABEL_1116;
          }

          operator delete(*v6);
          v167 = *(v134 + 16);
          if (v167)
          {
            goto LABEL_509;
          }

          goto LABEL_138;
        case 0x18:
          if (*(v134 + 16) >= 1)
          {
            operator new();
          }

          v207 = *(v134 + 48);
          v208 = *(v207 + 6);
          if (v208 != *(v207 + 18))
          {
            v631 = "time_exprs and level_changes fields must be of the same size: ";
            v632.__r_.__value_.__r.__words[0] = 62;
            google::protobuf::Message::ShortDebugString(v655);
          }

          v209 = v207[2];
          if (v209)
          {
            v210 = (v209 + 7);
          }

          else
          {
            v210 = (v207 + 2);
          }

          if (!v208)
          {
            v213 = 24;
            v212 = a4;
            goto LABEL_542;
          }

          v211 = 8 * v208;
          v212 = a4;
          do
          {
            while (1)
            {
              if (*(a4 + 23) < 0)
              {
                break;
              }

              if (*(a4 + 23))
              {
                goto LABEL_1116;
              }

              ++v210;
              v211 -= 8;
              if (!v211)
              {
                goto LABEL_371;
              }
            }

            if (*(a4 + 8))
            {
              goto LABEL_1116;
            }

            operator delete(*a4);
            ++v210;
            v211 -= 8;
          }

          while (v211);
LABEL_371:
          v213 = *(v616 + 60);
          if (v213 == 24)
          {
            v207 = *(v616 + 48);
LABEL_542:
            v287 = v38;
            goto LABEL_624;
          }

          v287 = v38;
          v207 = &operations_research::sat::_ReservoirConstraintProto_default_instance_;
LABEL_624:
          v337 = v207[8];
          v336 = v207 + 8;
          v338 = (v337 + 7);
          if (v337)
          {
            v339 = v338;
          }

          else
          {
            v339 = v336;
          }

          v340 = *(v336 + 2);
          if (v340)
          {
            v341 = 8 * v340;
            do
            {
              while (1)
              {
                if (*(*v339 + 4))
                {
                  v631 = "expression must be constant: ";
                  v632.__r_.__value_.__r.__words[0] = 29;
                  google::protobuf::Message::ShortDebugString(v655);
                }

                if (*(v212 + 23) < 0)
                {
                  break;
                }

                if (*(v212 + 23))
                {
                  goto LABEL_1116;
                }

                ++v339;
                v341 -= 8;
                if (!v341)
                {
                  goto LABEL_636;
                }
              }

              if (*(v212 + 8))
              {
                goto LABEL_1116;
              }

              operator delete(*v212);
              ++v339;
              v341 -= 8;
            }

            while (v341);
LABEL_636:
            v213 = *(v616 + 60);
          }

          if (v213 == 24)
          {
            v342 = *(v616 + 48);
            v38 = v287;
            if (v342[11] > 0)
            {
              goto LABEL_641;
            }
          }

          else
          {
            v38 = v287;
            if (qword_2810BEB58 >= 1)
            {
LABEL_641:
              v631 = "The min level of a reservoir must be <= 0. Please use fixed events to setup initial state: ";
              v632.__r_.__value_.__r.__words[0] = 91;
              google::protobuf::Message::ShortDebugString(v655);
            }

            v342 = &operations_research::sat::_ReservoirConstraintProto_default_instance_;
          }

          if ((v342[12] & 0x8000000000000000) != 0)
          {
            v631 = "The max level of a reservoir must be >= 0. Please use fixed events to setup initial state: ";
            v632.__r_.__value_.__r.__words[0] = 91;
            google::protobuf::Message::ShortDebugString(v655);
          }

          v374 = v342[8];
          v373 = v342 + 8;
          v375 = (v374 + 7);
          if (v374)
          {
            v376 = v375;
          }

          else
          {
            v376 = v373;
          }

          v377 = *(v373 + 2);
          if (v377)
          {
            v378 = 0;
            v379 = &v376[v377];
            v380 = *v37;
            v381 = *v37 + 7;
            do
            {
              v382 = *v376;
              v383 = (*v376)[8];
              v384 = *(*v376 + 4);
              if (v384 < 1)
              {
                v390 = (*v376)[8];
              }

              else
              {
                v385 = v382[3];
                v386 = v382[6];
                v387 = v385;
                v388 = v386;
                v389 = *(*v376 + 4);
                v390 = (*v376)[8];
                do
                {
                  v396 = *v387++;
                  v395 = v396;
                  v398 = *v388++;
                  v397 = v398;
                  if (~v395 <= v395)
                  {
                    v399 = v395;
                  }

                  else
                  {
                    v399 = ~v395;
                  }

                  v400 = (v381 + 8 * v399);
                  if ((v380 & 1) == 0)
                  {
                    v400 = v37;
                  }

                  v401 = *v400;
                  if (v397 < 0)
                  {
                    if (v395 < 0)
                    {
                      v391 = -**(v401 + 24);
                    }

                    else
                    {
                      v391 = *(*(v401 + 24) + 8 * (*(v401 + 16) - 1));
                    }

                    v392 = (v391 >> 63) ^ 0x8000000000000000;
                  }

                  else
                  {
                    if (v395 < 0)
                    {
                      v391 = -*(*(v401 + 24) + 8 * (*(v401 + 16) - 1));
                    }

                    else
                    {
                      v391 = **(v401 + 24);
                    }

                    v392 = (v391 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
                  }

                  if ((v391 * v397) >> 64 == (v391 * v397) >> 63)
                  {
                    v393 = v391 * v397;
                  }

                  else
                  {
                    v393 = v392;
                  }

                  v394 = (v390 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
                  v19 = __OFADD__(v390, v393);
                  v390 += v393;
                  if (v19)
                  {
                    v390 = v394;
                  }

                  --v389;
                }

                while (v389);
                do
                {
                  v407 = *v385++;
                  v406 = v407;
                  v409 = *v386++;
                  v408 = v409;
                  if (~v406 <= v406)
                  {
                    v410 = v406;
                  }

                  else
                  {
                    v410 = ~v406;
                  }

                  v411 = (v381 + 8 * v410);
                  if ((v380 & 1) == 0)
                  {
                    v411 = v37;
                  }

                  v412 = *v411;
                  if (v408 < 0)
                  {
                    if (v406 < 0)
                    {
                      v402 = -*(*(v412 + 24) + 8 * (*(v412 + 16) - 1));
                    }

                    else
                    {
                      v402 = **(v412 + 24);
                    }

                    v403 = (v402 >> 63) ^ 0x8000000000000000;
                  }

                  else
                  {
                    if (v406 < 0)
                    {
                      v402 = -**(v412 + 24);
                    }

                    else
                    {
                      v402 = *(*(v412 + 24) + 8 * (*(v412 + 16) - 1));
                    }

                    v403 = (v402 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
                  }

                  if ((v402 * v408) >> 64 == (v402 * v408) >> 63)
                  {
                    v404 = v402 * v408;
                  }

                  else
                  {
                    v404 = v403;
                  }

                  v405 = (v383 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
                  v19 = __OFADD__(v383, v404);
                  v383 += v404;
                  if (v19)
                  {
                    v383 = v405;
                  }

                  --v384;
                }

                while (v384);
              }

              if (v390 >= 0)
              {
                v413 = v390;
              }

              else
              {
                v413 = -v390;
              }

              if (v390 == 0x8000000000000000)
              {
                v413 = 0x7FFFFFFFFFFFFFFFLL;
              }

              if (v383 >= 0)
              {
                v414 = v383;
              }

              else
              {
                v414 = -v383;
              }

              if (v383 == 0x8000000000000000)
              {
                v415 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v415 = v414;
              }

              if (v413 > v415)
              {
                v415 = v413;
              }

              v416 = (v378 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
              v19 = __OFADD__(v378, v415);
              v378 += v415;
              if (v19)
              {
                v378 = v416;
              }

              if (v378 == 0x7FFFFFFFFFFFFFFFLL)
              {
                google::protobuf::Message::DebugString(&v631);
              }

              ++v376;
            }

            while (v376 != v379);
          }

          if (v213 == 24)
          {
            v417 = *(v616 + 48);
            v418 = *(v417 + 10);
            v419 = a4;
            if (v418 <= 0 || v418 == *(v417 + 6))
            {
              v420 = *(v417 + 18);
              if (v420 >= 1)
              {
LABEL_786:
                v424 = "Wrong array length of level_changes variables";
                if (v420 != *(v417 + 6))
                {
                  goto LABEL_793;
                }
              }

              goto LABEL_787;
            }
          }

          else
          {
            v419 = a4;
            if (dword_2810BEB28 <= 0 || dword_2810BEB28 == dword_2810BEB18)
            {
              v420 = dword_2810BEB48;
              if (dword_2810BEB48 > 0)
              {
                v417 = &operations_research::sat::_ReservoirConstraintProto_default_instance_;
                goto LABEL_786;
              }

LABEL_787:
              v424 = &byte_23CE7F131;
              goto LABEL_793;
            }
          }

          v424 = "Wrong array length of active_literals variables";
LABEL_793:
          std::string::basic_string[abi:ne200100]<0>(v419, v424);
          v6 = a4;
          if (*(a4 + 23) < 0)
          {
            if (*(a4 + 8))
            {
              goto LABEL_1116;
            }

            operator delete(*a4);
            v134 = v616;
            v167 = *(v616 + 16);
            if (v167)
            {
              goto LABEL_509;
            }
          }

          else
          {
            v134 = v616;
            if (*(a4 + 23))
            {
              goto LABEL_1116;
            }

LABEL_508:
            v167 = *(v134 + 16);
            if (v167)
            {
LABEL_509:
              v275 = *(v134 + 24);
              v276 = 4 * v167;
              do
              {
                v277 = *v275;
                if (~*v275 > *v275)
                {
                  v277 = ~v277;
                }

                v278 = *v37 + 8 * v277 + 7;
                if ((*v37 & 1) == 0)
                {
                  v278 = v37;
                }

                operations_research::Domain::FromFlatSpanOfIntervals(*(*v278 + 24), *(*v278 + 16), v655, a5);
                if (operations_research::Domain::Size(v655) != 1)
                {
                  v631 = "Enforcement literal not supported in constraint: ";
                  v632.__r_.__value_.__r.__words[0] = 49;
                  google::protobuf::Message::ShortDebugString(&v653);
                }

                if (v655[0])
                {
                  operator delete(*&v655[8]);
                }

                ++v275;
                v276 -= 4;
              }

              while (v276);
            }
          }

LABEL_138:
          if (++v34 < *(this + 14))
          {
            continue;
          }

          if (v35 == v606)
          {
            v5 = this;
          }

          else
          {
            v434 = &v658;
            v435 = &v655[16];
            v436 = v35;
            do
            {
              v437 = *v436;
              if (*v36)
              {
                v438 = (*v36 + 8 * v437 + 7);
              }

              else
              {
                v438 = v36;
              }

              operations_research::sat::UsedIntervals(*v438, &v653);
              if (v653 != *(&v653 + 1))
              {
                v439 = *(this + 14);
                v440 = *(this + 6);
                v441 = v440 + 7;
                if (v607)
                {
                  v442 = v653;
                  if (v440)
                  {
                    while (1)
                    {
                      v444 = *v442;
                      if ((v444 & 0x80000000) != 0 || v444 >= v439)
                      {
                        break;
                      }

                      if (v444 >= v437)
                      {
LABEL_866:
                        v453 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v444, v434, a3);
                        v656 = v434;
                        p_size = v453 - v434;
                        v455 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v437, v435, v454);
                        *v655 = v435;
                        *&v655[8] = v455 - v435;
                        google::protobuf::Message::ShortDebugString(__p);
                      }

                      if (*(*(v441 + 8 * v444) + 60) != 19)
                      {
                        goto LABEL_865;
                      }

                      if (++v442 == *(&v653 + 1))
                      {
                        goto LABEL_861;
                      }
                    }
                  }

                  else
                  {
                    v443 = v653;
                    while (1)
                    {
                      v444 = *v443;
                      if ((v444 & 0x80000000) != 0 || v444 >= v439)
                      {
                        break;
                      }

                      if (v444 >= v437)
                      {
                        goto LABEL_866;
                      }

                      if (*(v440 + 60) != 19)
                      {
                        goto LABEL_865;
                      }

                      if (++v443 == *(&v653 + 1))
                      {
                        goto LABEL_861;
                      }
                    }
                  }
                }

                else
                {
                  v445 = v653;
                  if (v440)
                  {
                    while (1)
                    {
                      v444 = *v445;
                      if ((v444 & 0x80000000) != 0 || v444 >= v439)
                      {
                        break;
                      }

                      if (*(*(v441 + 8 * v444) + 60) != 19)
                      {
LABEL_865:
                        v450 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v444, v434, a3);
                        v656 = v434;
                        p_size = v450 - v434;
                        v452 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v437, v435, v451);
                        *v655 = v435;
                        *&v655[8] = v452 - v435;
                        google::protobuf::Message::ShortDebugString(__p);
                      }

                      if (++v445 == *(&v653 + 1))
                      {
                        goto LABEL_861;
                      }
                    }
                  }

                  else
                  {
                    v446 = v653;
                    while (1)
                    {
                      v444 = *v446;
                      if ((v444 & 0x80000000) != 0 || v444 >= v439)
                      {
                        break;
                      }

                      if (*(v440 + 60) != 19)
                      {
                        goto LABEL_865;
                      }

                      if (++v446 == *(&v653 + 1))
                      {
                        goto LABEL_861;
                      }
                    }
                  }
                }

                v447 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v444, v434, a3);
                v656 = v434;
                p_size = v447 - v434;
                v449 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v437, v435, v448);
                *v655 = v435;
                *&v655[8] = v449 - v435;
                google::protobuf::Message::ShortDebugString(__p);
              }

LABEL_861:
              if (v653)
              {
                *(&v653 + 1) = v653;
                operator delete(v653);
              }

              *(a4 + 23) = 0;
              *a4 = 0;
              if (*v36)
              {
                v456 = *v36 + 8 * v437 + 7;
              }

              else
              {
                v456 = v36;
              }

              v457 = *v456;
              v458 = *(*v456 + 60);
              if (v458 != 20)
              {
                if (v458 == 21)
                {
                  v462 = *(v457 + 48);
                  v463 = *(v462 + 16);
                  if (v463 != *(v462 + 40))
                  {
                    v631 = "The two lists of intervals must have the same size: ";
                    v632.__r_.__value_.__r.__words[0] = 52;
                    google::protobuf::Message::ShortDebugString(v655);
                  }

                  v464 = v434;
                  v465 = 0;
                  v466 = 0;
                  v467 = 4 * (v463 & ~(v463 >> 31));
                  while (v467 != v465)
                  {
                    v470 = ((v469 ^ v468) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
                    if ((v468 * v469) >> 64 == (v468 * v469) >> 63)
                    {
                      v470 = v468 * v469;
                    }

                    v19 = __OFADD__(v466, v470);
                    v471 = v466 + v470;
                    if (v19)
                    {
                      v466 = (v466 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v466 = v471;
                    }

                    v465 += 4;
                    if (v466 == 0x7FFFFFFFFFFFFFFFLL)
                    {
                      google::protobuf::Message::DebugString(&v631);
                    }
                  }

                  v36 = v609;
                  *(a4 + 23) = 0;
                  *a4 = 0;
                  v434 = v464;
                  v435 = &v655[16];
                }

                else if (v458 == 22)
                {
                  v459 = *(v457 + 48);
                  if (*(v459 + 24) != *(v459 + 56))
                  {
                    v631 = "intervals_size() != demands_size() in constraint: ";
                    v632.__r_.__value_.__r.__words[0] = 50;
                    google::protobuf::Message::ShortDebugString(v655);
                  }

                  v460 = *(v459 + 72);
                  if (v460)
                  {
                    v461 = v460;
                  }

                  else
                  {
                    v461 = &operations_research::sat::_LinearExpressionProto_default_instance_;
                  }

                  if (*(a4 + 23) < 0)
                  {
                    if (*(a4 + 8))
                    {
                      goto LABEL_1116;
                    }

                    operator delete(*a4);
                  }

                  else if (*(a4 + 23))
                  {
                    goto LABEL_1116;
                  }

                  v472 = *(v457 + 60);
                  v473 = *(v457 + 48);
                  v474 = &operations_research::sat::_CumulativeConstraintProto_default_instance_;
                  if (v472 == 22)
                  {
                    v474 = *(v457 + 48);
                  }

                  v476 = v474[6];
                  v475 = v474 + 6;
                  v477 = (v476 + 7);
                  if (v476)
                  {
                    v478 = v477;
                  }

                  else
                  {
                    v478 = v475;
                  }

                  v479 = *(v475 + 2);
                  if (v479)
                  {
                    v617 = v434;
                    v480 = v457;
                    v481 = v435;
                    v482 = 8 * v479;
                    do
                    {
                      while (1)
                      {
                        if (*(a4 + 23) < 0)
                        {
                          break;
                        }

                        if (*(a4 + 23))
                        {
                          goto LABEL_1116;
                        }

                        ++v478;
                        v482 -= 8;
                        if (!v482)
                        {
                          goto LABEL_907;
                        }
                      }

                      if (*(a4 + 8))
                      {
                        goto LABEL_1116;
                      }

                      operator delete(*a4);
                      ++v478;
                      v482 -= 8;
                    }

                    while (v482);
LABEL_907:
                    v472 = *(v480 + 60);
                    v473 = *(v480 + 48);
                    v435 = v481;
                    v434 = v617;
                  }

                  if (v472 == 22)
                  {
                    v483 = v473;
                  }

                  else
                  {
                    v483 = &operations_research::sat::_CumulativeConstraintProto_default_instance_;
                  }

                  v485 = v483[6];
                  v484 = v483 + 6;
                  v486 = (v485 + 7);
                  if (v485)
                  {
                    v487 = v486;
                  }

                  else
                  {
                    v487 = v484;
                  }

                  v488 = *(v484 + 2);
                  if (v488)
                  {
                    v489 = &v487[v488];
                    v490 = *v37;
                    if (*v37)
                    {
                      while (1)
                      {
                        v504 = *v487;
                        v505 = (*v487)[8];
                        v506 = *(*v487 + 4);
                        if (v506 >= 1)
                        {
                          v507 = v504[3];
                          v508 = v504[6];
                          v509 = *(*v487 + 4);
                          do
                          {
                            v514 = *v507++;
                            v513 = v514;
                            v516 = *v508++;
                            v515 = v516;
                            if (~v513 <= v513)
                            {
                              v517 = v513;
                            }

                            else
                            {
                              v517 = ~v513;
                            }

                            v518 = *(*v37 + 7 + 8 * v517);
                            if (v515 < 0)
                            {
                              if (v513 < 0)
                              {
                                v510 = -**(v518 + 24);
                              }

                              else
                              {
                                v510 = *(*(v518 + 24) + 8 * (*(v518 + 16) - 1));
                              }

                              v511 = (v510 >> 63) ^ 0x8000000000000000;
                            }

                            else
                            {
                              if (v513 < 0)
                              {
                                v510 = -*(*(v518 + 24) + 8 * (*(v518 + 16) - 1));
                              }

                              else
                              {
                                v510 = **(v518 + 24);
                              }

                              v511 = (v510 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
                            }

                            if ((v510 * v515) >> 64 == (v510 * v515) >> 63)
                            {
                              v512 = v510 * v515;
                            }

                            else
                            {
                              v512 = v511;
                            }

                            a3 = ((v505 >> 63) + 0x7FFFFFFFFFFFFFFFLL);
                            v19 = __OFADD__(v505, v512);
                            v505 += v512;
                            if (v19)
                            {
                              v505 = a3;
                            }

                            --v509;
                          }

                          while (v509);
                        }

                        if ((v505 & 0x8000000000000000) != 0)
                        {
                          break;
                        }

                        if (v506 >= 2)
                        {
LABEL_1001:
                          v631 = "Demand ";
                          v632.__r_.__value_.__r.__words[0] = 7;
                          google::protobuf::Message::DebugString(__p);
                        }

                        if (++v487 == v489)
                        {
                          goto LABEL_960;
                        }
                      }
                    }

                    else
                    {
                      while (1)
                      {
                        v491 = *v487;
                        v492 = (*v487)[8];
                        v493 = *(*v487 + 4);
                        if (v493 > 0)
                        {
                          v494 = v491[3];
                          v495 = v491[6];
                          v496 = *(*v487 + 4);
                          do
                          {
                            v501 = *v494++;
                            v500 = v501;
                            v503 = *v495++;
                            v502 = v503;
                            if (v503 < 0)
                            {
                              if (v500 < 0)
                              {
                                v497 = -**(v490 + 24);
                              }

                              else
                              {
                                v497 = *(*(v490 + 24) + 8 * (*(v490 + 16) - 1));
                              }

                              v498 = (v497 >> 63) ^ 0x8000000000000000;
                            }

                            else
                            {
                              if (v500 < 0)
                              {
                                v497 = -*(*(v490 + 24) + 8 * (*(v490 + 16) - 1));
                              }

                              else
                              {
                                v497 = **(v490 + 24);
                              }

                              v498 = (v497 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
                            }

                            if ((v497 * v502) >> 64 == (v497 * v502) >> 63)
                            {
                              v499 = v497 * v502;
                            }

                            else
                            {
                              v499 = v498;
                            }

                            a3 = ((v492 >> 63) + 0x7FFFFFFFFFFFFFFFLL);
                            v19 = __OFADD__(v492, v499);
                            v492 += v499;
                            if (v19)
                            {
                              v492 = a3;
                            }

                            --v496;
                          }

                          while (v496);
                        }

                        if ((v492 & 0x8000000000000000) != 0)
                        {
                          break;
                        }

                        if (v493 > 1)
                        {
                          goto LABEL_1001;
                        }

                        if (++v487 == v489)
                        {
                          goto LABEL_960;
                        }
                      }
                    }

                    v631 = "Demand ";
                    v632.__r_.__value_.__r.__words[0] = 7;
                    google::protobuf::Message::DebugString(__p);
                  }

LABEL_960:
                  if (v472 == 22)
                  {
                    if (v473[9])
                    {
                      v519 = v473[9];
                    }

                    else
                    {
                      v519 = &operations_research::sat::_LinearExpressionProto_default_instance_;
                    }

                    if (*(v519 + 4) > 1)
                    {
                      goto LABEL_965;
                    }
                  }

                  else
                  {
                    if (qword_2810BEAF8)
                    {
                      v520 = qword_2810BEAF8;
                    }

                    else
                    {
                      v520 = &operations_research::sat::_LinearExpressionProto_default_instance_;
                    }

                    v473 = &operations_research::sat::_CumulativeConstraintProto_default_instance_;
                    if (*(v520 + 4) >= 2)
                    {
LABEL_965:
                      v631 = "capacity ";
                      v632.__r_.__value_.__r.__words[0] = 9;
                      google::protobuf::Message::DebugString(__p);
                    }
                  }

                  v522 = v473[6];
                  v521 = v473 + 6;
                  v523 = (v522 + 7);
                  if (v522)
                  {
                    v524 = v523;
                  }

                  else
                  {
                    v524 = v521;
                  }

                  v525 = *(v521 + 2);
                  if (v525)
                  {
                    v526 = &v524[v525];
                    v527 = *v37;
                    if (*v37)
                    {
                      v543 = 0;
                      v544 = v527 + 7;
                      while (1)
                      {
                        v545 = *v524;
                        v546 = (*v524)[8];
                        v547 = *(*v524 + 4);
                        if (v547 >= 1)
                        {
                          v548 = v545[3];
                          v549 = v545[6];
                          do
                          {
                            v555 = *v548++;
                            v554 = v555;
                            v557 = *v549++;
                            v556 = v557;
                            if (~v554 <= v554)
                            {
                              v558 = v554;
                            }

                            else
                            {
                              v558 = ~v554;
                            }

                            v559 = *(v544 + 8 * v558);
                            if (v556 < 0)
                            {
                              if (v554 < 0)
                              {
                                v550 = -*(*(v559 + 24) + 8 * (*(v559 + 16) - 1));
                              }

                              else
                              {
                                v550 = **(v559 + 24);
                              }

                              v551 = (v550 >> 63) ^ 0x8000000000000000;
                            }

                            else
                            {
                              if (v554 < 0)
                              {
                                v550 = -**(v559 + 24);
                              }

                              else
                              {
                                v550 = *(*(v559 + 24) + 8 * (*(v559 + 16) - 1));
                              }

                              v551 = (v550 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
                            }

                            if ((v550 * v556) >> 64 == (v550 * v556) >> 63)
                            {
                              v552 = v550 * v556;
                            }

                            else
                            {
                              v552 = v551;
                            }

                            v553 = (v546 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
                            v19 = __OFADD__(v546, v552);
                            v546 += v552;
                            if (v19)
                            {
                              v546 = v553;
                            }

                            --v547;
                          }

                          while (v547);
                        }

                        v560 = (v543 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
                        v19 = __OFADD__(v543, v546);
                        v543 += v546;
                        if (v19)
                        {
                          v543 = v560;
                        }

                        if (v543 == 0x7FFFFFFFFFFFFFFFLL)
                        {
                          break;
                        }

                        if (++v524 == v526)
                        {
                          goto LABEL_1027;
                        }
                      }
                    }

                    else
                    {
                      v528 = 0;
                      while (1)
                      {
                        v529 = *v524;
                        v530 = (*v524)[8];
                        v531 = *(*v524 + 4);
                        if (v531 > 0)
                        {
                          v532 = v529[3];
                          v533 = v529[6];
                          do
                          {
                            v539 = *v532++;
                            v538 = v539;
                            v541 = *v533++;
                            v540 = v541;
                            if (v541 < 0)
                            {
                              if (v538 < 0)
                              {
                                v534 = -*(*(v527 + 24) + 8 * (*(v527 + 16) - 1));
                              }

                              else
                              {
                                v534 = **(v527 + 24);
                              }

                              v535 = (v534 >> 63) ^ 0x8000000000000000;
                            }

                            else
                            {
                              if (v538 < 0)
                              {
                                v534 = -**(v527 + 24);
                              }

                              else
                              {
                                v534 = *(*(v527 + 24) + 8 * (*(v527 + 16) - 1));
                              }

                              v535 = (v534 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
                            }

                            if ((v534 * v540) >> 64 == (v534 * v540) >> 63)
                            {
                              v536 = v534 * v540;
                            }

                            else
                            {
                              v536 = v535;
                            }

                            v537 = (v530 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
                            v19 = __OFADD__(v530, v536);
                            v530 += v536;
                            if (v19)
                            {
                              v530 = v537;
                            }

                            --v531;
                          }

                          while (v531);
                        }

                        v542 = (v528 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
                        v19 = __OFADD__(v528, v530);
                        v528 += v530;
                        if (v19)
                        {
                          v528 = v542;
                        }

                        if (v528 == 0x7FFFFFFFFFFFFFFFLL)
                        {
                          break;
                        }

                        if (++v524 == v526)
                        {
                          goto LABEL_1027;
                        }
                      }
                    }

                    google::protobuf::Message::DebugString(&v631);
                  }

LABEL_1027:
                  *(a4 + 23) = 0;
                  *a4 = 0;
                }

                else
                {
                  absl::lts_20240722::log_internal::LogMessage::LogMessage(&v631, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_checker.cc", 1062, 2);
                  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v631, "Shouldn't be here", 0x11uLL);
                  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v631);
                }
              }

              ++v436;
            }

            while (v436 != v606);
            v6 = a4;
            v5 = this;
          }

          break;
        case 0x1B:
          if (*(*(v134 + 48) + 48))
          {
            v136 = *(*(v134 + 48) + 48);
          }

          else
          {
            v136 = &operations_research::sat::_LinearExpressionProto_default_instance_;
          }

          v6 = a4;
          if (*(a4 + 23) < 0)
          {
            if (*(a4 + 8))
            {
              goto LABEL_1116;
            }

            operator delete(*a4);
            v137 = v616;
            v138 = &operations_research::sat::_LinearArgumentProto_default_instance_;
            if (*(v616 + 60) == 27)
            {
              goto LABEL_216;
            }
          }

          else
          {
            if (*(a4 + 23))
            {
              goto LABEL_1116;
            }

            v137 = v616;
            v138 = &operations_research::sat::_LinearArgumentProto_default_instance_;
            if (*(v616 + 60) == 27)
            {
LABEL_216:
              v138 = *(v137 + 48);
            }
          }

          v140 = v138[3];
          v139 = v138 + 3;
          v141 = (v140 + 7);
          if (v140)
          {
            v142 = v141;
          }

          else
          {
            v142 = v139;
          }

          v143 = *(v139 + 2);
          if (v143)
          {
            v144 = 8 * v143;
            do
            {
              while (1)
              {
                if ((*(a4 + 23) & 0x80000000) == 0)
                {
                  break;
                }

                if (*(a4 + 8))
                {
                  goto LABEL_1116;
                }

                operator delete(*a4);
                ++v142;
                v144 -= 8;
                if (!v144)
                {
                  goto LABEL_266;
                }
              }

              if (*(a4 + 23))
              {
                goto LABEL_1116;
              }

              ++v142;
              v144 -= 8;
            }

            while (v144);
          }

LABEL_266:
          v134 = v616;
          v167 = *(v616 + 16);
          if (!v167)
          {
            goto LABEL_138;
          }

          goto LABEL_509;
        case 0x1E:
          std::string::basic_string[abi:ne200100]<0>(v6, "The dummy constraint should never appear in a model.");
          goto LABEL_1116;
        default:
          goto LABEL_508;
      }

      break;
    }
  }

  v39 = *(v5 + 4);
  if ((v39 & 1) == 0)
  {
    goto LABEL_48;
  }

  if ((v39 & 8) != 0)
  {
    operator new();
  }

  v90 = *(v5 + 16);
  v91 = *(v90 + 64);
  if (v91)
  {
LABEL_1046:
    v631 = "The objective has and invalid domain() format: ";
    v632.__r_.__value_.__r.__words[0] = 47;
    google::protobuf::Message::ShortDebugString(v655);
  }

  if (v91 >= 1)
  {
    if (**(v90 + 72) <= *(*(v90 + 72) + 8))
    {
      *v615 = **(v90 + 72);
      operator new();
    }

    goto LABEL_1046;
  }

  if (!operations_research::IntervalsAreSortedAndNonAdjacent(0, 0))
  {
    goto LABEL_1046;
  }

  v563 = *(v90 + 16);
  if (v563 != *(v90 + 40))
  {
    v631 = "vars and coeffs size do not match in objective: ";
    v632.__r_.__value_.__r.__words[0] = 48;
    google::protobuf::Message::ShortDebugString(v655);
  }

  v5 = this;
  if (v563)
  {
    v564 = *(this + 8);
    v565 = 4 * v563;
    v566 = *(v90 + 24);
    do
    {
      v567 = *v566;
      if (v564 <= v567 || v567 < -v564)
      {
        v631 = "Out of bound integer variable ";
        v632.__r_.__value_.__r.__words[0] = 30;
        v601 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v567, &v658, v563);
        v656 = &v658;
        p_size = v601 - &v658;
        *v655 = " in objective: ";
        *&v655[8] = 15;
        google::protobuf::Message::ShortDebugString(__p);
      }

      ++v566;
      v565 -= 4;
    }

    while (v565);
  }

  if (operations_research::sat::PossibleIntegerOverflow(this, *(v90 + 24), v563, *(v90 + 48), *(v90 + 16), 0))
  {
    google::protobuf::Message::DebugString(&v631);
  }

  *(v6 + 23) = 0;
  *v6 = 0;
  if (*(v6 + 23) < 0)
  {
    if (*(v6 + 8))
    {
      goto LABEL_1116;
    }

    operator delete(*v6);
  }

  else if (*(v6 + 23))
  {
    goto LABEL_1116;
  }

  if (*(this + 16))
  {
    v588 = *(this + 16);
  }

  else
  {
    v588 = &operations_research::sat::_CpObjectiveProto_default_instance_;
  }

  v589 = v588[14];
  if (v589 || v588[13] || v588[15])
  {
    v590 = *(v588 + 16);
    if (!v590)
    {
      v631 = "Objective integer scaling or offset is set without an objective domain.";
      v632.__r_.__value_.__r.__words[0] = 71;
      absl::lts_20240722::StrCat(&v631, v6);
      goto LABEL_1116;
    }

    v591 = v588[9];
    v592 = v588[13];
    v593 = 8 * v590 - 8;
    do
    {
      v594 = v592 + *v591;
      if (__OFADD__(*v591, v592))
      {
        v594 = (*v591 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      }

      if ((v594 - 0x7FFFFFFFFFFFFFFFLL) < 2)
      {
        goto LABEL_1105;
      }

      v595 = (v594 * v589) >> 64 == (v594 * v589) >> 63 ? v594 * v589 : ((v594 ^ v589) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      if (v595 - 0x7FFFFFFFFFFFFFFFLL < 2)
      {
        goto LABEL_1105;
      }

      v596 = v588[15];
      v597 = (v595 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      v19 = __OFADD__(v595, v596);
      v598 = v596 + v595;
      if (v19)
      {
        v598 = v597;
      }

      v599 = v598 - 0x7FFFFFFFFFFFFFFFLL;
      ++v591;
      v600 = v599 < 2 || v593 == 0;
      v593 -= 8;
    }

    while (!v600);
    if (v599 <= 1)
    {
LABEL_1105:
      v631 = "Internal fields related to the postsolve of the integer objective are causing a potential integer overflow: ";
      v632.__r_.__value_.__r.__words[0] = 108;
      google::protobuf::Message::ShortDebugString(v655);
    }
  }

LABEL_48:
  v40 = *(v5 + 9);
  if (v40)
  {
    v41 = (v40 + 7);
  }

  else
  {
    v41 = v5 + 72;
  }

  v42 = *(v5 + 20);
  if (!v42)
  {
LABEL_109:
    *(v6 + 23) = 0;
    *v6 = 0;
    v75 = *(v6 + 23);
    if ((v75 & 0x80000000) == 0)
    {
      goto LABEL_1057;
    }

    goto LABEL_110;
  }

  v614 = &v41[8 * v42];
  v43 = (v5 + 24);
  while (1)
  {
    v44 = *v41;
    v45 = *(*v41 + 64);
    if (v45 >= 5)
    {
      v631 = "Unknown or unsupported variable_selection_strategy: ";
      v632.__r_.__value_.__r.__words[0] = 52;
      v570 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v45, &v658, a3);
      v656 = &v658;
      p_size = v570 - &v658;
      absl::lts_20240722::StrCat(&v631, &v656, v6);
      goto LABEL_1056;
    }

    v46 = *(v44 + 68);
    if (v46 >= 5)
    {
      v631 = "Unknown or unsupported domain_reduction_strategy: ";
      v632.__r_.__value_.__r.__words[0] = 50;
      v571 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v46, &v658, a3);
      v656 = &v658;
      p_size = v571 - &v658;
      absl::lts_20240722::StrCat(&v631, &v656, v6);
      goto LABEL_1056;
    }

    v47 = *(v44 + 16);
    if (v47)
    {
      break;
    }

LABEL_80:
    v59 = *(v44 + 40);
    if (v59)
    {
      v60 = (v59 + 7);
    }

    else
    {
      v60 = (v44 + 40);
    }

    v61 = *(v44 + 48);
    if (v61)
    {
      v610 = &v60[v61];
      while (1)
      {
        v62 = *v60;
        v63 = *(*v60 + 4);
        if (v63)
        {
          v64 = *(v62 + 3);
          v65 = *(this + 8);
          v66 = 4 * v63;
          do
          {
            if (v65 <= *v64 || *v64 < -v65)
            {
              v631 = "Invalid variable reference in strategy: ";
              v632.__r_.__value_.__r.__words[0] = 40;
              google::protobuf::Message::ShortDebugString(v655);
            }

            ++v64;
            v66 -= 4;
          }

          while (v66);
        }

        if (v632.__r_.__value_.__s.__data_[15] < 0)
        {
          v68 = v632.__r_.__value_.__r.__words[0];
          operator delete(v631);
          if (v68)
          {
LABEL_1107:
            v631 = "Invalid affine expr in strategy: ";
            v632.__r_.__value_.__r.__words[0] = 33;
            google::protobuf::Message::ShortDebugString(v655);
          }
        }

        else if (v632.__r_.__value_.__s.__data_[15])
        {
          goto LABEL_1107;
        }

        if (v46 == 4)
        {
          v69 = *(v62 + 4);
          if (v69)
          {
            break;
          }
        }

LABEL_85:
        ++v60;
        v6 = a4;
        if (v60 == v610)
        {
          goto LABEL_108;
        }
      }

      v70 = *(v62 + 3);
      v71 = 4 * v69;
      while (1)
      {
        v72 = *v70;
        if (*v43)
        {
          v73 = *v43 + 8 * v72 + 7;
        }

        else
        {
          v73 = v43;
        }

        operations_research::Domain::FromFlatSpanOfIntervals(*(*v73 + 24), *(*v73 + 16), &v631, a5);
        v74 = operations_research::Domain::Size(&v631);
        if (v631)
        {
          operator delete(v632.__r_.__value_.__l.__data_);
        }

        if (v74 >= 100001)
        {
          break;
        }

        ++v70;
        v71 -= 4;
        if (!v71)
        {
          goto LABEL_85;
        }
      }

      v631 = "Variable #";
      v632.__r_.__value_.__r.__words[0] = 10;
      v562 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v72, &v658, a3);
      v6 = a4;
      v656 = &v658;
      p_size = v562 - &v658;
      *v655 = " has a domain too large to be used in a SELECT_MEDIAN_VALUE value selection strategy";
      *&v655[8] = 84;
      absl::lts_20240722::StrCat(&v631, &v656, v655, a4);
      goto LABEL_1056;
    }

LABEL_108:
    v41 += 8;
    v5 = this;
    if (v41 == v614)
    {
      goto LABEL_109;
    }
  }

  if (*(v44 + 48))
  {
    v631 = "Strategy can't have both variables and exprs: ";
    v632.__r_.__value_.__r.__words[0] = 46;
    google::protobuf::Message::ShortDebugString(v655);
  }

  v48 = *(v44 + 24);
  if (v46 != 4)
  {
    v56 = *(v5 + 8);
    v57 = 4 * v47;
    do
    {
      if (v56 <= *v48 || *v48 < -v56)
      {
LABEL_828:
        v631 = "Invalid variable reference in strategy: ";
        v632.__r_.__value_.__r.__words[0] = 40;
        google::protobuf::Message::ShortDebugString(v655);
      }

      ++v48;
      v57 -= 4;
    }

    while (v57);
    goto LABEL_80;
  }

  v49 = 4 * v47;
  while (1)
  {
    v50 = *v48;
    v51 = *(v5 + 8);
    if (v51 <= *v48 || v50 < -v51)
    {
      goto LABEL_828;
    }

    if (~v50 <= v50)
    {
      v53 = v50;
    }

    else
    {
      v53 = ~v50;
    }

    if (*v43)
    {
      v54 = *v43 + 8 * v53 + 7;
    }

    else
    {
      v54 = v43;
    }

    operations_research::Domain::FromFlatSpanOfIntervals(*(*v54 + 24), *(*v54 + 16), &v631, a5);
    v55 = operations_research::Domain::Size(&v631);
    if (v631)
    {
      operator delete(v632.__r_.__value_.__l.__data_);
    }

    if (v55 > 100000)
    {
      break;
    }

    ++v48;
    v49 -= 4;
    v5 = this;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  v631 = "Variable #";
  v632.__r_.__value_.__r.__words[0] = 10;
  v561 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v53, &v658, a3);
  v656 = &v658;
  p_size = v561 - &v658;
  *v655 = " has a domain too large to be used in a SELECT_MEDIAN_VALUE value selection strategy";
  *&v655[8] = 84;
  absl::lts_20240722::StrCat(&v631, &v656, v655, v6);
LABEL_1056:
  v5 = this;
  v75 = *(v6 + 23);
  if (v75 < 0)
  {
LABEL_110:
    if (*(v6 + 8))
    {
      goto LABEL_1116;
    }

    operator delete(*v6);
    if ((*(v5 + 16) & 2) == 0)
    {
      goto LABEL_1059;
    }

    goto LABEL_112;
  }

LABEL_1057:
  if (v75)
  {
    goto LABEL_1116;
  }

  if ((*(v5 + 16) & 2) == 0)
  {
LABEL_1059:
    *(v6 + 23) = 0;
    *v6 = 0;
LABEL_1060:
    v572 = *(v5 + 24);
    if (v572)
    {
      v573 = *(v5 + 13);
      v576 = *(v5 + 3);
      v575 = v5 + 24;
      v574 = v576;
      v577 = *(v575 + 2);
      v578 = v576 + 7;
      v579 = 4 * v572;
      while (1)
      {
        v580 = *v573;
        if (v577 <= v580 || v580 < -v577)
        {
          break;
        }

        v582 = ~v580 <= v580 ? *v573 : ~v580;
        v583 = (v578 + 8 * v582);
        if ((v574 & 1) == 0)
        {
          v583 = v575;
        }

        v584 = *v583;
        v585 = *(*v583 + 24);
        if ((*v585 & 0x8000000000000000) != 0 || v585[*(v584 + 16) - 1] >= 2)
        {
          break;
        }

        ++v573;
        v579 -= 4;
        if (!v579)
        {
          goto LABEL_1074;
        }
      }

      v631 = "Invalid literal reference ";
      v632.__r_.__value_.__r.__words[0] = 26;
      v586 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v580, &v658, a3);
      v656 = &v658;
      p_size = v586 - &v658;
      *v655 = " in the 'assumptions' field.";
      *&v655[8] = 28;
      absl::lts_20240722::StrCat(&v631, &v656, v655, v6);
    }

    else
    {
LABEL_1074:
      std::string::basic_string[abi:ne200100]<0>(v6, &byte_23CE7F131);
    }

    goto LABEL_1116;
  }

LABEL_112:
  v76 = *(v5 + 17);
  v77 = *(v76 + 16);
  if (v77 != *(v76 + 40))
  {
    operator new();
  }

  if (v77)
  {
    v78 = *(v76 + 24);
    v79 = *(v5 + 8);
    v80 = 4 * v77;
    v81 = 4 * v77;
    v82 = v78;
    do
    {
      v83 = *v82;
      if (v79 <= v83 || v83 < -v79)
      {
        v631 = "Invalid variable reference in solution hint: ";
        v632.__r_.__value_.__r.__words[0] = 45;
        v569 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v83, &v658, a3);
        v656 = &v658;
        p_size = v569 - &v658;
        absl::lts_20240722::StrCat(&v631, &v656, v6);
        v5 = this;
        goto LABEL_1112;
      }

      ++v82;
      v81 -= 4;
    }

    while (v81);
    *v655 = xmmword_23CE306D0;
    do
    {
      v85 = *v78;
      if (~*v78 <= *v78)
      {
        v86 = v85;
      }

      else
      {
        v86 = ~v85;
      }

      LODWORD(v631) = v86;
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(v655, &v631, &v653);
      if ((v654[0] & 1) == 0)
      {
        v631 = "The solution hint contains duplicate variables like the variable with index #";
        v632.__r_.__value_.__r.__words[0] = 77;
        v587 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v86, &v658, a3);
        v656 = &v658;
        p_size = v587 - &v658;
        absl::lts_20240722::StrCat(&v631, &v656, v6);
        goto LABEL_1110;
      }

      **(&v653 + 1) = v631;
      ++v78;
      v80 -= 4;
    }

    while (v80);
    v87 = *(v76 + 40);
    if (v87)
    {
      v88 = *(v76 + 48);
      v89 = 8 * v87;
      do
      {
        if ((*v88 - 0x7FFFFFFFFFFFFFFFLL) <= 1)
        {
          operator new();
        }

        ++v88;
        v89 -= 8;
      }

      while (v89);
    }
  }

  else
  {
    *v655 = xmmword_23CE306D0;
  }

  *(v6 + 23) = 0;
  *v6 = 0;
LABEL_1110:
  if (*v655 >= 2uLL)
  {
    operator delete((*&v655[16] - (v655[8] & 1) - 8));
  }

LABEL_1112:
  if (*(v6 + 23) < 0)
  {
    if (!*(v6 + 8))
    {
      operator delete(*v6);
      goto LABEL_1060;
    }
  }

  else if (!*(v6 + 23))
  {
    goto LABEL_1060;
  }

LABEL_1116:
  v602 = *MEMORY[0x277D85DE8];
}