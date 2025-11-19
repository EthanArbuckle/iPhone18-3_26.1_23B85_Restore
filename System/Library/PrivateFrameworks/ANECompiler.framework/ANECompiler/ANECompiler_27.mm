void sub_23CA66EC8(_Unwind_Exception *a1)
{
  v9 = *(v1 + 464);
  if (v9)
  {
    *(v1 + 472) = v9;
    operator delete(v9);
    v10 = *(v1 + 440);
    if (!v10)
    {
LABEL_3:
      v11 = *(v1 + 416);
      if (!v11)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v10 = *(v1 + 440);
    if (!v10)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 448) = v10;
  operator delete(v10);
  v11 = *(v1 + 416);
  if (!v11)
  {
LABEL_4:
    v12 = *(v1 + 392);
    if (!v12)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v11);
  v12 = *(v1 + 392);
  if (!v12)
  {
LABEL_5:
    std::deque<int>::~deque[abi:ne200100](v7);
    v13 = *(v1 + 320);
    if (!v13)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(v12);
  std::deque<int>::~deque[abi:ne200100](v7);
  v13 = *(v1 + 320);
  if (!v13)
  {
LABEL_6:
    v14 = *(v1 + 296);
    if (!v14)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v1 + 328) = v13;
  operator delete(v13);
  v14 = *(v1 + 296);
  if (!v14)
  {
LABEL_7:
    v15 = *(v1 + 272);
    if (!v15)
    {
LABEL_9:
      absl::StrongVector<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,absl::lts_20240722::InlinedVector<int,6ul,std::allocator<int>>,std::allocator<absl::lts_20240722::InlinedVector<int,6ul,std::allocator<int>>>>::~StrongVector(v6);
      absl::StrongVector<operations_research::StrongIndex<operations_research::sat::PrecedencesPropagator::OptionalArcIndex_index_tag_>,operations_research::sat::PrecedencesPropagator::ArcInfo,std::allocator<operations_research::sat::PrecedencesPropagator::ArcInfo>>::~StrongVector((v3 + 128));
      absl::StrongVector<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,absl::lts_20240722::InlinedVector<int,6ul,std::allocator<int>>,std::allocator<absl::lts_20240722::InlinedVector<int,6ul,std::allocator<int>>>>::~StrongVector(v5);
      absl::StrongVector<operations_research::StrongIndex<operations_research::sat::PrecedencesPropagator::OptionalArcIndex_index_tag_>,operations_research::sat::PrecedencesPropagator::ArcInfo,std::allocator<operations_research::sat::PrecedencesPropagator::ArcInfo>>::~StrongVector((v3 + 80));
      absl::StrongVector<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,absl::lts_20240722::InlinedVector<int,6ul,std::allocator<int>>,std::allocator<absl::lts_20240722::InlinedVector<int,6ul,std::allocator<int>>>>::~StrongVector(v4);
      operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>::~SparseBitset(v3);
      *v1 = v2;
      if (*(v1 + 31) < 0)
      {
        operator delete(*(v1 + 8));
      }

      _Unwind_Resume(a1);
    }

LABEL_8:
    *(v1 + 280) = v15;
    operator delete(v15);
    goto LABEL_9;
  }

LABEL_15:
  *(v1 + 304) = v14;
  operator delete(v14);
  v15 = *(v1 + 272);
  if (!v15)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

void **absl::StrongVector<operations_research::StrongIndex<operations_research::sat::PrecedencesPropagator::OptionalArcIndex_index_tag_>,operations_research::sat::PrecedencesPropagator::ArcInfo,std::allocator<operations_research::sat::PrecedencesPropagator::ArcInfo>>::~StrongVector(void **a1)
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
        if (*(v3 - 5))
        {
          operator delete(*(v3 - 4));
        }

        v3 -= 8;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *operations_research::sat::Model::Delete<operations_research::sat::PrecedencesPropagator>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F3D4A8;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::PrecedencesPropagator>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F3D4A8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::Model::Delete<operations_research::sat::LinearPropagator>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F3D4E0;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::LinearPropagator>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F3D4E0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::Model::Delete<operations_research::sat::LinearConstraintPropagator<false>>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F3D518;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::LinearConstraintPropagator<false>>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F3D518;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

uint64_t std::__function::__func<operations_research::sat::NewBooleanVariable(void)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::NewBooleanVariable(void)::{lambda(operations_research::sat::Model *)#1}>,operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_> ()(operations_research::sat::Model *)>::operator()(uint64_t a1, void **a2)
{
  v2 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(*a2);
  v3 = v2[4];
  operations_research::sat::SatSolver::SetNumVariables(v2, v3 + 1);
  return v3;
}

uint64_t std::__function::__func<operations_research::sat::NewBooleanVariable(void)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::NewBooleanVariable(void)::{lambda(operations_research::sat::Model *)#1}>,operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_> ()(operations_research::sat::Model *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000023CE4187ELL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000023CE4187ELL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023CE4187ELL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023CE4187ELL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void operations_research::sat::LoadConditionalLinearConstraint(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(a3 + 16);
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (*a3 > 0 || (*(a3 + 8) & 0x8000000000000000) != 0)
  {
    if ((a2 & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      operator new();
    }

    v7 = &unk_284F3BBD8;
    v8 = 0;
    v9 = 0;
    v10 = &v7;
    v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a4);
    operations_research::sat::SatSolver::AddProblemClause(v5, v8, v9, 0);
    if (v10 == &v7)
    {
      (*(*v10 + 4))(v10);
    }

    else if (v10)
    {
      (*(*v10 + 5))();
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_23CA67AD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (v12)
  {
    operator delete(v12);
  }

  if (v11)
  {
    operator delete(v11);
  }

  operator delete(v10);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<operations_research::sat::ProductConstraint(operations_research::sat::AffineExpression,operations_research::sat::AffineExpression,operations_research::sat::AffineExpression)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::ProductConstraint(operations_research::sat::AffineExpression,operations_research::sat::AffineExpression,operations_research::sat::AffineExpression)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F3D5E0;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::ProductConstraint(operations_research::sat::AffineExpression,operations_research::sat::AffineExpression,operations_research::sat::AffineExpression)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::ProductConstraint(operations_research::sat::AffineExpression,operations_research::sat::AffineExpression,operations_research::sat::AffineExpression)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000023CE419DALL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000023CE419DALL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023CE419DALL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023CE419DALL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void operations_research::sat::ProductConstraint(operations_research::sat::AffineExpression,operations_research::sat::AffineExpression,operations_research::sat::AffineExpression)::{lambda(operations_research::sat::Model *)#1}::operator()(uint64_t a1, void *a2)
{
  v3 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
  v4 = *(a1 + 24);
  if (*a1 != v4 || (v5 = *(a1 + 32), *(a1 + 8) != v5) || (v6 = *(a1 + 40), *(a1 + 16) != v6))
  {
LABEL_7:
    operator new();
  }

  if (v4 == -1)
  {
    if (v6 < 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *(v3 + 40);
    v8 = 8 * v4;
    if (v6 + *(v7 + v8) * v5 < 0)
    {
      if (v6 - *(v7 + (v8 ^ 8)) * v5 > 0)
      {
        goto LABEL_7;
      }

LABEL_10:
      operator new();
    }
  }

  operator new();
}

void *operations_research::sat::Model::Delete<operations_research::sat::SquarePropagator>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F3D650;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::SquarePropagator>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F3D650;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::Model::Delete<operations_research::sat::ProductPropagator>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F3D688;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::ProductPropagator>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F3D688;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

__n128 std::__function::__func<operations_research::sat::FixedDivisionConstraint(operations_research::sat::AffineExpression,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::AffineExpression)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::FixedDivisionConstraint(operations_research::sat::AffineExpression,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::AffineExpression)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F3D6D0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::FixedDivisionConstraint(operations_research::sat::AffineExpression,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::AffineExpression)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::FixedDivisionConstraint(operations_research::sat::AffineExpression,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::AffineExpression)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000023CE41B4CLL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000023CE41B4CLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023CE41B4CLL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023CE41B4CLL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void operations_research::sat::FixedDivisionConstraint(operations_research::sat::AffineExpression,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::AffineExpression)::{lambda(operations_research::sat::Model *)#1}::operator()(uint64_t *a1, void *a2)
{
  operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
  v3 = *a1;
  operator new();
}

void *operations_research::sat::Model::Delete<operations_research::sat::FixedDivisionPropagator>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F3D740;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::FixedDivisionPropagator>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F3D740;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

__n128 std::__function::__func<operations_research::sat::DivisionConstraint(operations_research::sat::AffineExpression,operations_research::sat::AffineExpression,operations_research::sat::AffineExpression)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::DivisionConstraint(operations_research::sat::AffineExpression,operations_research::sat::AffineExpression,operations_research::sat::AffineExpression)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F3D788;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::DivisionConstraint(operations_research::sat::AffineExpression,operations_research::sat::AffineExpression,operations_research::sat::AffineExpression)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::DivisionConstraint(operations_research::sat::AffineExpression,operations_research::sat::AffineExpression,operations_research::sat::AffineExpression)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000023CE41CB9)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000023CE41CB9 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023CE41CB9))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023CE41CB9 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void operations_research::sat::DivisionConstraint(operations_research::sat::AffineExpression,operations_research::sat::AffineExpression,operations_research::sat::AffineExpression)::{lambda(operations_research::sat::Model *)#1}::operator()(int *a1, void *a2)
{
  v3 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
  if (*a1 != -1)
  {
    v4 = *(a1 + 2) - *(*(v3 + 40) + ((8 * *a1) ^ 8)) * *(a1 + 1);
  }

  operator new();
}

void *operations_research::sat::Model::Delete<operations_research::sat::DivisionPropagator>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F3D7F8;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::DivisionPropagator>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F3D7F8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

__n128 std::__function::__func<operations_research::sat::FixedModuloConstraint(operations_research::sat::AffineExpression,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::AffineExpression)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::FixedModuloConstraint(operations_research::sat::AffineExpression,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::AffineExpression)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F3D840;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::FixedModuloConstraint(operations_research::sat::AffineExpression,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::AffineExpression)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::FixedModuloConstraint(operations_research::sat::AffineExpression,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::AffineExpression)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000023CE41E28)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000023CE41E28 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023CE41E28))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023CE41E28 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *operations_research::sat::Model::Delete<operations_research::sat::FixedModuloPropagator>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F3D8B0;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::FixedModuloPropagator>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F3D8B0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

uint64_t operations_research::sat::IsEqualToMinOf(operations_research::sat::LinearExpression const&,std::vector<operations_research::sat::LinearExpression> const&)::{lambda(operations_research::sat::Model *)#1}::~Model(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 56);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 32);
        if (v5)
        {
          *(v3 - 24) = v5;
          operator delete(v5);
        }

        v6 = v3 - 56;
        v7 = *(v3 - 56);
        if (v7)
        {
          *(v3 - 48) = v7;
          operator delete(v7);
        }

        v3 -= 56;
      }

      while (v6 != v2);
      v4 = *(a1 + 56);
    }

    *(a1 + 64) = v2;
    operator delete(v4);
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    *(a1 + 32) = v8;
    operator delete(v8);
  }

  v9 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v9;
    operator delete(v9);
  }

  return a1;
}

void *operations_research::sat::LinearExpression::LinearExpression(void *this, const operations_research::sat::LinearExpression *a2)
{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  v2 = *(a2 + 1);
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  this[3] = 0;
  this[4] = 0;
  this[5] = 0;
  v4 = *(a2 + 3);
  v3 = *(a2 + 4);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  this[6] = *(a2 + 6);
  return this;
}

void sub_23CA69444(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<operations_research::sat::LinearExpression>::__init_with_size[abi:ne200100]<operations_research::sat::LinearExpression*,operations_research::sat::LinearExpression*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x492492492492493)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }
}

void sub_23CA6957C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<operations_research::sat::LinearExpression>,operations_research::sat::LinearExpression*>>::~__exception_guard_exceptions[abi:ne200100](&a11);
  *(v11 + 8) = v12;
  std::__exception_guard_exceptions<std::vector<operations_research::sat::LinearExpression>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void ***std::__exception_guard_exceptions<std::vector<operations_research::sat::LinearExpression>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 4);
          if (v6)
          {
            *(v4 - 3) = v6;
            operator delete(v6);
          }

          v7 = v4 - 56;
          v8 = *(v4 - 7);
          if (v8)
          {
            *(v4 - 6) = v8;
            operator delete(v8);
          }

          v4 -= 56;
        }

        while (v7 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<operations_research::sat::LinearExpression>,operations_research::sat::LinearExpression*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      do
      {
        v7 = *(v4 - 32);
        if (v7)
        {
          *(v4 - 24) = v7;
          operator delete(v7);
        }

        v8 = v4 - 56;
        v9 = *(v4 - 56);
        if (v9)
        {
          *(v4 - 48) = v9;
          operator delete(v9);
        }

        v4 -= 56;
      }

      while (v8 != v5);
    }
  }

  return a1;
}

void *std::__function::__func<operations_research::sat::IsEqualToMinOf(operations_research::sat::LinearExpression const&,std::vector<operations_research::sat::LinearExpression> const&)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::IsEqualToMinOf(operations_research::sat::LinearExpression const&,std::vector<operations_research::sat::LinearExpression> const&)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::~__func(void *a1)
{
  *a1 = &unk_284F3D8F8;
  v2 = a1[8];
  if (v2)
  {
    v3 = a1[9];
    v4 = a1[8];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 32);
        if (v5)
        {
          *(v3 - 24) = v5;
          operator delete(v5);
        }

        v6 = v3 - 56;
        v7 = *(v3 - 56);
        if (v7)
        {
          *(v3 - 48) = v7;
          operator delete(v7);
        }

        v3 -= 56;
      }

      while (v6 != v2);
      v4 = a1[8];
    }

    a1[9] = v2;
    operator delete(v4);
  }

  v8 = a1[4];
  if (v8)
  {
    a1[5] = v8;
    operator delete(v8);
  }

  v9 = a1[1];
  if (v9)
  {
    a1[2] = v9;
    operator delete(v9);
  }

  return a1;
}

void std::__function::__func<operations_research::sat::IsEqualToMinOf(operations_research::sat::LinearExpression const&,std::vector<operations_research::sat::LinearExpression> const&)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::IsEqualToMinOf(operations_research::sat::LinearExpression const&,std::vector<operations_research::sat::LinearExpression> const&)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::~__func(void *a1)
{
  *a1 = &unk_284F3D8F8;
  v2 = a1[8];
  if (v2)
  {
    v3 = a1[9];
    v4 = a1[8];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 32);
        if (v5)
        {
          *(v3 - 24) = v5;
          operator delete(v5);
        }

        v6 = v3 - 56;
        v7 = *(v3 - 56);
        if (v7)
        {
          *(v3 - 48) = v7;
          operator delete(v7);
        }

        v3 -= 56;
      }

      while (v6 != v2);
      v4 = a1[8];
    }

    a1[9] = v2;
    operator delete(v4);
  }

  v8 = a1[4];
  if (v8)
  {
    a1[5] = v8;
    operator delete(v8);
  }

  v9 = a1[1];
  if (v9)
  {
    a1[2] = v9;
    operator delete(v9);
  }

  JUMPOUT(0x23EED9460);
}

void sub_23CA69904(_Unwind_Exception *a1)
{
  operations_research::sat::LinearExpr::~LinearExpr(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<operations_research::sat::IsEqualToMinOf(operations_research::sat::LinearExpression const&,std::vector<operations_research::sat::LinearExpression> const&)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::IsEqualToMinOf(operations_research::sat::LinearExpression const&,std::vector<operations_research::sat::LinearExpression> const&)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::__clone(uint64_t *a1, void *a2)
{
  v2 = a2;
  *a2 = &unk_284F3D8F8;
  operations_research::sat::LinearExpression::LinearExpression(a2 + 1, (a1 + 1));
  v2[8] = 0;
  v2[9] = 0;
  v2 += 8;
  v2[2] = 0;
  std::vector<operations_research::sat::LinearExpression>::__init_with_size[abi:ne200100]<operations_research::sat::LinearExpression*,operations_research::sat::LinearExpression*>(v2, a1[8], a1[9], 0x6DB6DB6DB6DB6DB7 * ((a1[9] - a1[8]) >> 3));
}

void std::__function::__func<operations_research::sat::IsEqualToMinOf(operations_research::sat::LinearExpression const&,std::vector<operations_research::sat::LinearExpression> const&)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::IsEqualToMinOf(operations_research::sat::LinearExpression const&,std::vector<operations_research::sat::LinearExpression> const&)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<operations_research::sat::IsEqualToMinOf(operations_research::sat::LinearExpression const&,std::vector<operations_research::sat::LinearExpression> const&)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::IsEqualToMinOf(operations_research::sat::LinearExpression const&,std::vector<operations_research::sat::LinearExpression> const&)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<operations_research::sat::IsEqualToMinOf(operations_research::sat::LinearExpression const&,std::vector<operations_research::sat::LinearExpression> const&)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::IsEqualToMinOf(operations_research::sat::LinearExpression const&,std::vector<operations_research::sat::LinearExpression> const&)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000023CE48212)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000023CE48212 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023CE48212))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023CE48212 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void std::__function::__alloc_func<operations_research::sat::IsEqualToMinOf(operations_research::sat::LinearExpression const&,std::vector<operations_research::sat::LinearExpression> const&)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::IsEqualToMinOf(operations_research::sat::LinearExpression const&,std::vector<operations_research::sat::LinearExpression> const&)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::destroy[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 56);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 32);
        if (v5)
        {
          *(v3 - 24) = v5;
          operator delete(v5);
        }

        v6 = v3 - 56;
        v7 = *(v3 - 56);
        if (v7)
        {
          *(v3 - 48) = v7;
          operator delete(v7);
        }

        v3 -= 56;
      }

      while (v6 != v2);
      v4 = *(a1 + 56);
    }

    *(a1 + 64) = v2;
    operator delete(v4);
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    *(a1 + 32) = v8;
    operator delete(v8);
  }

  v9 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v9;

    operator delete(v9);
  }
}

void operations_research::sat::IsEqualToMinOf(operations_research::sat::LinearExpression const&,std::vector<operations_research::sat::LinearExpression> const&)::{lambda(operations_research::sat::Model *)#1}::operator()(uint64_t a1, void *a2)
{
  v4 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
  if (*(a1 + 8) - *a1 == 4 && ((v5 = **(a1 + 24), v5 >= 0) ? (v6 = **(a1 + 24)) : (v6 = -v5), v6 == 1 && !*(a1 + 48)))
  {
    v9 = **a1 ^ (v5 != 1);
    v12 = *(a1 + 56);
    v13 = *(a1 + 64);
    if (v12 == v13)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v7 = operations_research::sat::LinearExpression::Min(a1, v4);
    v8 = operations_research::sat::LinearExpression::Max(a1, v4);
    v9 = operations_research::sat::IntegerTrail::AddIntegerVariable(v4, v7, v8);
    memset(v19, 0, 56);
    operations_research::sat::LinearConstraintBuilder::AddLinearExpression(v19, a1, 1);
    operations_research::sat::LinearConstraintBuilder::AddTerm(v19, v9, -1);
    operations_research::sat::LinearConstraintBuilder::Build(v19, v16);
    operations_research::sat::LoadConditionalLinearConstraint(0, 0, v16, a2);
    v10 = v18;
    v18 = 0;
    if (v10)
    {
      MEMORY[0x23EED9440](v10, 0x1000C8000313F17);
    }

    v11 = v17;
    v17 = 0;
    if (v11)
    {
      MEMORY[0x23EED9440](v11, 0x1000C8052888210);
    }

    if (*&v19[2])
    {
      *(&v19[2] + 1) = *&v19[2];
      operator delete(*&v19[2]);
    }

    v12 = *(a1 + 56);
    v13 = *(a1 + 64);
    if (v12 == v13)
    {
LABEL_23:
      operator new();
    }
  }

  do
  {
    v19[0] = 0uLL;
    *&v19[1] = 0x7FFFFFFFFFFFFFFELL;
    memset(&v19[1] + 8, 0, 32);
    operations_research::sat::LinearConstraintBuilder::AddLinearExpression(v19, v12, 1);
    operations_research::sat::LinearConstraintBuilder::AddTerm(v19, v9, -1);
    operations_research::sat::LinearConstraintBuilder::Build(v19, v16);
    operations_research::sat::LoadConditionalLinearConstraint(0, 0, v16, a2);
    v14 = v18;
    v18 = 0;
    if (v14)
    {
      MEMORY[0x23EED9440](v14, 0x1000C8000313F17);
    }

    v15 = v17;
    v17 = 0;
    if (v15)
    {
      MEMORY[0x23EED9440](v15, 0x1000C8052888210);
    }

    if (*&v19[2])
    {
      *(&v19[2] + 1) = *&v19[2];
      operator delete(*&v19[2]);
    }

    v12 += 7;
  }

  while (v12 != v13);
  goto LABEL_23;
}

void sub_23CA69DF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  operations_research::sat::LinearConstraint::~LinearConstraint(&a10);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  a20 = __p;
  operator delete(__p);
  _Unwind_Resume(a1);
}

void *operations_research::sat::Model::Delete<operations_research::sat::LinMinPropagator>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F3D968;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::LinMinPropagator>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F3D968;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::Model::Delete<operations_research::sat::GreaterThanAtLeastOneOfPropagator>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F3D9B0;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::GreaterThanAtLeastOneOfPropagator>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F3D9B0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,absl::lts_20240722::btree_map<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,absl::lts_20240722::btree_map<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>>>>,256,false>>::clear_and_delete(_BYTE *__p)
{
  v1 = __p;
  if (__p[11])
  {
    if (__p[10])
    {
      v2 = 32 * __p[10];
      v3 = __p + 40;
      do
      {
        if (*v3)
        {
          absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::clear_and_delete(*(v3 - 2));
        }

        *(v3 - 2) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
        *(v3 - 1) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
        *v3 = 0;
        v3 += 4;
        v2 -= 32;
      }

      while (v2);
    }

    goto LABEL_12;
  }

  if (__p[10])
  {
    v49 = *__p;
    do
    {
      v1 = v1[30];
    }

    while (!*(v1 + 11));
    v4 = *(v1 + 8);
    v5 = *v1;
    v6 = v5[v4 + 30];
    if (!*(v6 + 11))
    {
      goto LABEL_18;
    }

    while (1)
    {
LABEL_16:
      v50 = v4;
      v7 = *(v6 + 10);
      if (*(v6 + 10))
      {
        goto LABEL_20;
      }

LABEL_54:
      while (1)
      {
        operator delete(v6);
        v27 = *(v5 + 10);
        if (v50 < v27)
        {
          break;
        }

        do
        {
          v51 = *(v5 + 8);
          __pb = v5;
          v28 = *v5;
          if (v27)
          {
            v29 = v5 + 2;
            v30 = &v5[4 * v27 + 2];
            do
            {
              if (v29[3])
              {
                v31 = v29[1];
                if (v31[11])
                {
                  if (v31[10])
                  {
                    v32 = 32 * v31[10];
                    v33 = v31 + 32;
                    do
                    {
                      v34 = *(v33 - 1);
                      if (v34)
                      {
                        *v33 = v34;
                        operator delete(v34);
                      }

                      v33 += 4;
                      v32 -= 32;
                    }

                    while (v32);
                  }
                }

                else if (v31[10])
                {
                  v35 = *v31;
                  do
                  {
                    v31 = *(v31 + 30);
                  }

                  while (!v31[11]);
                  v36 = v31[8];
                  v37 = *v31;
                  v38 = v37[v36 + 30];
                  if (!v38[11])
                  {
                    do
                    {
LABEL_74:
                      v38 = *(v38 + 30);
                    }

                    while (!v38[11]);
                    v36 = v38[8];
                    v37 = *v38;
                    v39 = v38[10];
                    if (!v38[10])
                    {
                      goto LABEL_80;
                    }

LABEL_76:
                    v40 = 32 * v39;
                    v41 = v38 + 32;
                    do
                    {
                      v42 = *(v41 - 1);
                      if (v42)
                      {
                        *v41 = v42;
                        operator delete(v42);
                      }

                      v41 += 4;
                      v40 -= 32;
                    }

                    while (v40);
                    goto LABEL_80;
                  }

                  while (1)
                  {
LABEL_72:
                    v39 = v38[10];
                    if (v38[10])
                    {
                      goto LABEL_76;
                    }

LABEL_80:
                    operator delete(v38);
                    v43 = *(v37 + 10);
                    if (v36 >= v43)
                    {
                      break;
                    }

                    v38 = v37[++v36 + 30];
                    if (!v38[11])
                    {
                      goto LABEL_74;
                    }
                  }

                  while (1)
                  {
                    v44 = *(v37 + 8);
                    v45 = *v37;
                    if (v43)
                    {
                      v46 = 32 * v43;
                      v47 = v37 + 4;
                      do
                      {
                        v48 = *(v47 - 1);
                        if (v48)
                        {
                          *v47 = v48;
                          operator delete(v48);
                        }

                        v47 += 4;
                        v46 -= 32;
                      }

                      while (v46);
                    }

                    operator delete(v37);
                    if (v45 == v35)
                    {
                      goto LABEL_58;
                    }

                    v43 = v45[10];
                    v37 = v45;
                    if (v44 < v43)
                    {
                      v37 = v45;
                      v36 = v44 + 1;
                      v38 = *&v45[8 * v36 + 240];
                      if (v38[11])
                      {
                        goto LABEL_72;
                      }

                      goto LABEL_74;
                    }
                  }
                }

                operator delete(v31);
              }

LABEL_58:
              v29[1] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
              v29[2] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
              v29[3] = 0;
              v29 += 4;
            }

            while (v29 != v30);
          }

          operator delete(__pb);
          if (v28 == v49)
          {
            return;
          }

          v27 = *(v28 + 10);
          v5 = v28;
        }

        while (v51 >= v27);
        v5 = v28;
        v4 = v51 + 1;
        v6 = *(v28 + 8 * (v51 + 1) + 240);
        if (*(v6 + 11))
        {
          goto LABEL_16;
        }

        do
        {
LABEL_18:
          v6 = v6[30];
        }

        while (!*(v6 + 11));
        v50 = *(v6 + 8);
        v5 = *v6;
        v7 = *(v6 + 10);
        if (*(v6 + 10))
        {
LABEL_20:
          v8 = v6 + 2;
          __pa = &v6[4 * v7 + 2];
          while (1)
          {
            if (v8[3])
            {
              v9 = v8[1];
              if (v9[11])
              {
                if (v9[10])
                {
                  v10 = 32 * v9[10];
                  v11 = v9 + 32;
                  do
                  {
                    v12 = *(v11 - 1);
                    if (v12)
                    {
                      *v11 = v12;
                      operator delete(v12);
                    }

                    v11 += 4;
                    v10 -= 32;
                  }

                  while (v10);
                }
              }

              else if (v9[10])
              {
                v13 = *v9;
                do
                {
                  v9 = *(v9 + 30);
                }

                while (!v9[11]);
                v14 = v9[8];
                v15 = *v9;
                v16 = v15[v14 + 30];
                if (!v16[11])
                {
                  do
                  {
LABEL_38:
                    v16 = *(v16 + 30);
                  }

                  while (!v16[11]);
                  v14 = v16[8];
                  v15 = *v16;
                  v17 = v16[10];
                  if (!v16[10])
                  {
                    goto LABEL_44;
                  }

LABEL_40:
                  v18 = 32 * v17;
                  v19 = v16 + 32;
                  do
                  {
                    v20 = *(v19 - 1);
                    if (v20)
                    {
                      *v19 = v20;
                      operator delete(v20);
                    }

                    v19 += 4;
                    v18 -= 32;
                  }

                  while (v18);
                  goto LABEL_44;
                }

                while (1)
                {
LABEL_36:
                  v17 = v16[10];
                  if (v16[10])
                  {
                    goto LABEL_40;
                  }

LABEL_44:
                  operator delete(v16);
                  v21 = *(v15 + 10);
                  if (v14 >= v21)
                  {
                    break;
                  }

                  v16 = v15[++v14 + 30];
                  if (!v16[11])
                  {
                    goto LABEL_38;
                  }
                }

                while (1)
                {
                  v22 = *(v15 + 8);
                  v23 = *v15;
                  if (v21)
                  {
                    v24 = 32 * v21;
                    v25 = v15 + 4;
                    do
                    {
                      v26 = *(v25 - 1);
                      if (v26)
                      {
                        *v25 = v26;
                        operator delete(v26);
                      }

                      v25 += 4;
                      v24 -= 32;
                    }

                    while (v24);
                  }

                  operator delete(v15);
                  if (v23 == v13)
                  {
                    goto LABEL_22;
                  }

                  v21 = v23[10];
                  v15 = v23;
                  if (v22 < v21)
                  {
                    v15 = v23;
                    v14 = v22 + 1;
                    v16 = *&v23[8 * v14 + 240];
                    if (v16[11])
                    {
                      goto LABEL_36;
                    }

                    goto LABEL_38;
                  }
                }
              }

              operator delete(v9);
            }

LABEL_22:
            v8[1] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
            v8[2] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
            v8[3] = 0;
            v8 += 4;
            if (v8 == __pa)
            {
              goto LABEL_54;
            }
          }
        }
      }

      v4 = v50 + 1;
      v6 = v5[v50 + 31];
      if (!*(v6 + 11))
      {
        goto LABEL_18;
      }
    }
  }

LABEL_12:

  operator delete(v1);
}

void *operations_research::sat::Model::Delete<operations_research::sat::ElementEncodings>::~Delete(void *result)
{
  *result = &unk_284F3D9E8;
  v1 = result[1];
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    std::default_delete<operations_research::sat::ElementEncodings>::operator()[abi:ne200100]((result + 1), v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::ElementEncodings>::~Delete(void *a1)
{
  *a1 = &unk_284F3D9E8;
  v2 = a1[1];
  a1[1] = 0;
  if (v2)
  {
    std::default_delete<operations_research::sat::ElementEncodings>::operator()[abi:ne200100]((a1 + 1), v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void std::default_delete<operations_research::sat::ElementEncodings>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 48);
    if (v3)
    {
      *(a2 + 56) = v3;
      operator delete(v3);
    }

    if (*(a2 + 40))
    {
      absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::clear_and_delete(*(a2 + 24));
    }

    *(a2 + 24) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
    *(a2 + 32) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
    *(a2 + 40) = 0;
    if (*(a2 + 16))
    {
      absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,absl::lts_20240722::btree_map<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,absl::lts_20240722::btree_map<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>>>>,256,false>>::clear_and_delete(*a2);
    }

    *a2 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,absl::lts_20240722::btree_map<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,absl::lts_20240722::btree_map<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>>>>,256,false>>::EmptyNode(void)::empty_node;
    *(a2 + 8) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,absl::lts_20240722::btree_map<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,absl::lts_20240722::btree_map<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>>>>,256,false>>::EmptyNode(void)::empty_node;
    *(a2 + 16) = 0;

    JUMPOUT(0x23EED9460);
  }
}

operations_research::sat::PrecedenceRelations *operations_research::sat::PrecedenceRelations::PrecedenceRelations(operations_research::sat::PrecedenceRelations *this, operations_research::sat::Model *a2)
{
  *this = &unk_284F440D8;
  *(this + 1) = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2);
  *(this + 2) = operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a2);
  v4 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 56) = 0;
  *(this + 3) = v4;
  *(this + 4) = &unk_284F3BF70;
  *(this + 57) = 256;
  *(this + 168) = 0u;
  *(this + 60) = 0u;
  *(this + 76) = 0u;
  *(this + 92) = 0u;
  *(this + 108) = 0u;
  *(this + 124) = 0u;
  *(this + 140) = 0u;
  *(this + 154) = 0;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 29) = 0;
  *(this + 15) = xmmword_23CE306D0;
  *(this + 17) = xmmword_23CE306D0;
  *(this + 19) = xmmword_23CE306D0;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  v6 = this;
  std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](v4 + 768, &v6);
  return this;
}

void sub_23CA6AB88(_Unwind_Exception *a1)
{
  v5 = *(v1 + 456);
  if (v5)
  {
    *(v1 + 464) = v5;
    operator delete(v5);
    v6 = *(v1 + 432);
    if (!v6)
    {
LABEL_3:
      v7 = *(v1 + 408);
      if (!v7)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v6 = *(v1 + 432);
    if (!v6)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 440) = v6;
  operator delete(v6);
  v7 = *(v1 + 408);
  if (!v7)
  {
LABEL_4:
    v8 = *(v1 + 384);
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:
  *(v1 + 416) = v7;
  operator delete(v7);
  v8 = *(v1 + 384);
  if (!v8)
  {
LABEL_6:
    std::vector<std::vector<int>>::~vector[abi:ne200100]((v1 + 360));
    std::vector<std::vector<int>>::~vector[abi:ne200100]((v1 + 336));
    if (*(v1 + 304) >= 2uLL)
    {
      operator delete((*(v1 + 320) - (*(v1 + 312) & 1) - 8));
      if (*(v1 + 272) < 2uLL)
      {
LABEL_8:
        if (*(v1 + 240) < 2uLL)
        {
          goto LABEL_9;
        }

        goto LABEL_19;
      }
    }

    else if (*(v1 + 272) < 2uLL)
    {
      goto LABEL_8;
    }

    operator delete((*(v1 + 288) - (*(v1 + 280) & 1) - 8));
    if (*(v1 + 240) < 2uLL)
    {
LABEL_9:
      v9 = *(v1 + 216);
      if (!v9)
      {
        goto LABEL_10;
      }

      goto LABEL_20;
    }

LABEL_19:
    operator delete((*(v1 + 256) - (*(v1 + 248) & 1) - 8));
    v9 = *(v1 + 216);
    if (!v9)
    {
LABEL_10:
      std::vector<operations_research::sat::PrecedenceRelations::ConditionalEntry>::~vector[abi:ne200100]((v1 + 192));
      v10 = *v3;
      if (!*v3)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }

LABEL_20:
    *(v1 + 224) = v9;
    operator delete(v9);
    std::vector<operations_research::sat::PrecedenceRelations::ConditionalEntry>::~vector[abi:ne200100]((v1 + 192));
    v10 = *v3;
    if (!*v3)
    {
LABEL_11:
      v11 = *(v1 + 136);
      if (!v11)
      {
        goto LABEL_12;
      }

      goto LABEL_22;
    }

LABEL_21:
    *(v1 + 176) = v10;
    operator delete(v10);
    v11 = *(v1 + 136);
    if (!v11)
    {
LABEL_12:
      util::StaticGraph<int,int>::~StaticGraph(v2);
      _Unwind_Resume(a1);
    }

LABEL_22:
    *(v1 + 144) = v11;
    operator delete(v11);
    util::StaticGraph<int,int>::~StaticGraph(v2);
    _Unwind_Resume(a1);
  }

LABEL_5:
  *(v1 + 392) = v8;
  operator delete(v8);
  goto LABEL_6;
}

void **std::vector<operations_research::sat::PrecedenceRelations::ConditionalEntry>::~vector[abi:ne200100](void **a1)
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
        if (*(v3 - 3))
        {
          operator delete(*(v3 - 2));
        }

        v3 -= 6;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *operations_research::sat::Model::Delete<operations_research::sat::PrecedenceRelations>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F3DA20;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::PrecedenceRelations>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F3DA20;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

unint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>,operations_research::sat::SchedulingDemandHelper *>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>>,std::equal_to<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>>,std::allocator<std::pair<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>> const,operations_research::sat::SchedulingDemandHelper *>>>::~raw_hash_set(unint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v4 = a1[2];
    v3 = a1[3];
    if (v2 > 6)
    {
      v10 = a1[1];
      if (v10 >= 2)
      {
        v12 = v10 >> 1;
        do
        {
          v13 = *v4 & 0x8080808080808080;
          if (v13 != 0x8080808080808080)
          {
            v14 = v13 ^ 0x8080808080808080;
            do
            {
              v15 = v3 + 40 * (__clz(__rbit64(v14)) >> 3);
              v16 = *(v15 + 8);
              if (v16)
              {
                *(v15 + 16) = v16;
                operator delete(v16);
              }

              --v12;
              v14 &= v14 - 1;
            }

            while (v14);
          }

          ++v4;
          v3 += 320;
        }

        while (v12);
      }
    }

    else
    {
      v5 = *(v4 + v2) & 0x8080808080808080;
      if (v5 != 0x8080808080808080)
      {
        v6 = v3 - 40;
        v7 = v5 ^ 0x8080808080808080;
        do
        {
          v8 = v6 + 40 * (__clz(__rbit64(v7)) >> 3);
          v9 = *(v8 + 8);
          if (v9)
          {
            *(v8 + 16) = v9;
            operator delete(v9);
          }

          v7 &= v7 - 1;
        }

        while (v7);
      }
    }

    operator delete((a1[2] - (a1[1] & 1) - 8));
  }

  return a1;
}

unint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>,operations_research::sat::SchedulingConstraintHelper *>,absl::lts_20240722::hash_internal::Hash<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>>,std::equal_to<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>>,std::allocator<std::pair<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>> const,operations_research::sat::SchedulingConstraintHelper *>>>::~raw_hash_set(unint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v4 = a1[2];
    v3 = a1[3];
    if (v2 > 6)
    {
      v10 = a1[1];
      if (v10 >= 2)
      {
        v12 = v10 >> 1;
        do
        {
          v13 = *v4 & 0x8080808080808080;
          if (v13 != 0x8080808080808080)
          {
            v14 = v13 ^ 0x8080808080808080;
            do
            {
              v15 = v3 + ((4 * __clz(__rbit64(v14))) & 0x1E0);
              v16 = *v15;
              if (*v15)
              {
                *(v15 + 8) = v16;
                operator delete(v16);
              }

              --v12;
              v14 &= v14 - 1;
            }

            while (v14);
          }

          ++v4;
          v3 += 256;
        }

        while (v12);
      }
    }

    else
    {
      v5 = *(v4 + v2) & 0x8080808080808080;
      if (v5 != 0x8080808080808080)
      {
        v6 = v3 - 32;
        v7 = v5 ^ 0x8080808080808080;
        do
        {
          v8 = v6 + ((4 * __clz(__rbit64(v7))) & 0x1E0);
          v9 = *v8;
          if (*v8)
          {
            *(v8 + 8) = v9;
            operator delete(v9);
          }

          v7 &= v7 - 1;
        }

        while (v7);
      }
    }

    operator delete((a1[2] - (a1[1] & 1) - 8));
  }

  return a1;
}

void *operations_research::sat::Model::Delete<operations_research::sat::IntervalsRepository>::~Delete(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  *v1 = &unk_284F3DA58;
  v1[1] = 0;
  if (v2)
  {
    v3 = v1;
    operations_research::sat::IntervalsRepository::~IntervalsRepository(v2);
    MEMORY[0x23EED9460]();
    return v3;
  }

  return v1;
}

void operations_research::sat::Model::Delete<operations_research::sat::IntervalsRepository>::~Delete(void *a1)
{
  v1 = a1[1];
  *a1 = &unk_284F3DA58;
  a1[1] = 0;
  if (v1)
  {
    operations_research::sat::IntervalsRepository::~IntervalsRepository(v1);
    MEMORY[0x23EED9460]();
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::IntervalsRepository::~IntervalsRepository(operations_research::sat::IntervalsRepository *this)
{
  v2 = *(this + 36);
  if (v2)
  {
    *(this + 37) = v2;
    operator delete(v2);
  }

  v3 = *(this + 33);
  if (v3)
  {
    *(this + 34) = v3;
    operator delete(v3);
  }

  if (*(this + 29))
  {
    operator delete((*(this + 31) - (*(this + 30) & 1) - 8));
  }

  if (*(this + 25) >= 2uLL)
  {
    operator delete((*(this + 27) - (*(this + 26) & 1) - 8));
  }

  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>,operations_research::sat::SchedulingDemandHelper *>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>>,std::equal_to<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>>,std::allocator<std::pair<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>> const,operations_research::sat::SchedulingDemandHelper *>>>::~raw_hash_set(this + 21);
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>,operations_research::sat::SchedulingConstraintHelper *>,absl::lts_20240722::hash_internal::Hash<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>>,std::equal_to<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>>,std::allocator<std::pair<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>> const,operations_research::sat::SchedulingConstraintHelper *>>>::~raw_hash_set(this + 17);
  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    *(this + 12) = v5;
    operator delete(v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    *(this + 9) = v6;
    operator delete(v6);
  }

  v7 = *(this + 5);
  if (v7)
  {
    *(this + 6) = v7;
    operator delete(v7);
  }
}

void *operations_research::sat::Model::Delete<operations_research::sat::ProductDetector>::~Delete(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  *v1 = &unk_284F3DA90;
  v1[1] = 0;
  if (v2)
  {
    v3 = v1;
    operations_research::sat::ProductDetector::~ProductDetector(v2);
    MEMORY[0x23EED9460]();
    return v3;
  }

  return v1;
}

void operations_research::sat::Model::Delete<operations_research::sat::ProductDetector>::~Delete(void *a1)
{
  v1 = a1[1];
  *a1 = &unk_284F3DA90;
  a1[1] = 0;
  if (v1)
  {
    operations_research::sat::ProductDetector::~ProductDetector(v1);
    MEMORY[0x23EED9460]();
  }

  JUMPOUT(0x23EED9460);
}

_DWORD *std::vector<int>::__assign_with_size[abi:ne200100]<absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::iterator,absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::iterator>(uint64_t a1, void *a2, int *a3, void *a4, uint64_t a5, unint64_t a6)
{
  v6 = a2;
  v8 = *(a1 + 16);
  result = *a1;
  if (a6 > (v8 - result) >> 2)
  {
    if (result)
    {
      *(a1 + 8) = result;
      v10 = a6;
      operator delete(result);
      a6 = v10;
      v8 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (!(a6 >> 62))
    {
      v11 = v8 >> 1;
      if (v8 >> 1 <= a6)
      {
        v11 = a6;
      }

      v12 = v8 >= 0x7FFFFFFFFFFFFFFCLL;
      v13 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v12)
      {
        v13 = v11;
      }

      if (!(v13 >> 62))
      {
        operator new();
      }
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v14 = *(a1 + 8);
  v15 = v14 - result;
  if (v15 < a6)
  {
    if (v15 <= 0)
    {
      v17 = a2;
      v16 = a3;
    }

    else
    {
      v16 = a3;
      v17 = a2;
      do
      {
        v20 = *(v17 + 1);
        v17 = (v17 + 1);
        LOBYTE(v19) = v20;
        ++v16;
        if (v20 <= -2)
        {
          do
          {
            v21 = __clz(__rbit64((*v17 | ~(*v17 >> 7)) & 0x101010101010101)) >> 3;
            v17 = (v17 + v21);
            v16 += v21;
            v19 = *v17;
          }

          while (v19 < -1);
        }

        if (v19 == 255)
        {
          v17 = 0;
        }
      }

      while (v15-- > 1);
      if (a2 != v17)
      {
        do
        {
          v26 = *a3++;
          *result = v26;
          v28 = *(v6 + 1);
          v6 = (v6 + 1);
          v27 = v28;
          if (v28 <= -2)
          {
            do
            {
              v29 = __clz(__rbit64((*v6 | ~(*v6 >> 7)) & 0x101010101010101)) >> 3;
              v6 = (v6 + v29);
              a3 += v29;
            }

            while (*v6 < -1);
            v27 = *v6;
          }

          if (v27 == 255)
          {
            v6 = 0;
          }

          ++result;
        }

        while (v6 != v17);
        if (v17 == a4)
        {
          goto LABEL_40;
        }

        goto LABEL_44;
      }
    }

    if (a2 == a4)
    {
LABEL_40:
      *(a1 + 8) = v14;
      return result;
    }

    do
    {
LABEL_44:
      v30 = *v16++;
      *v14 = v30;
      v32 = *(v17 + 1);
      v17 = (v17 + 1);
      v31 = v32;
      if (v32 <= -2)
      {
        do
        {
          v33 = __clz(__rbit64((*v17 | ~(*v17 >> 7)) & 0x101010101010101)) >> 3;
          v17 = (v17 + v33);
          v16 += v33;
        }

        while (*v17 < -1);
        v31 = *v17;
      }

      if (v31 == 255)
      {
        v17 = 0;
      }

      ++v14;
    }

    while (v17 != a4);
    goto LABEL_40;
  }

  while (v6 != a4)
  {
    v22 = *a3++;
    *result = v22;
    v24 = *(v6 + 1);
    v6 = (v6 + 1);
    v23 = v24;
    if (v24 <= -2)
    {
      do
      {
        v25 = __clz(__rbit64((*v6 | ~(*v6 >> 7)) & 0x101010101010101)) >> 3;
        v6 = (v6 + v25);
        a3 += v25;
      }

      while (*v6 < -1);
      v23 = *v6;
    }

    if (v23 == 255)
    {
      v6 = 0;
    }

    ++result;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::ConstraintProto const*>,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Eq,std::allocator<operations_research::sat::ConstraintProto const*>>::find_or_prepare_insert<operations_research::sat::ConstraintProto const*>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if (*result > 1)
  {
    v6 = 0;
    _X10 = result[2];
    __asm { PRFM            #4, [X10] }

    v13 = *a2;
    v14 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2))) + *a2;
    v15 = ((v14 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v14);
    v16 = vdup_n_s8(v15 & 0x7F);
    v17 = ((v15 >> 7) ^ (_X10 >> 12)) & v3;
    v18 = *(_X10 + v17);
    v19 = vceq_s8(v18, v16);
    if (!v19)
    {
      goto LABEL_8;
    }

LABEL_5:
    v20 = result[3];
    do
    {
      v21 = (v17 + (__clz(__rbit64(v19)) >> 3)) & v3;
      if (*(v20 + 8 * v21) == v13)
      {
        *a3 = _X10 + v21;
        *(a3 + 8) = v20 + 8 * v21;
        *(a3 + 16) = 0;
        return result;
      }

      v19 &= ((v19 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v19);
LABEL_8:
    while (1)
    {
      v22 = vceq_s8(v18, 0x8080808080808080);
      if (v22)
      {
        break;
      }

      v6 += 8;
      v17 = (v6 + v17) & v3;
      v18 = *(_X10 + v17);
      v19 = vceq_s8(v18, v16);
      if (v19)
      {
        goto LABEL_5;
      }
    }

    v23 = result;
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v15, (v17 + (__clz(__rbit64(v22)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::ConstraintProto const*>,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Eq,std::allocator<operations_research::sat::ConstraintProto const*>>::GetPolicyFunctions(void)::value);
    v25 = v23[3] + 8 * result;
    *a3 = result + v23[2];
    *(a3 + 8) = v25;
    *(a3 + 16) = 1;
  }

  else
  {
    if (result[1] > 1)
    {
      v4 = result + 2;
      if (result[2] != *a2)
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::ConstraintProto const*>,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Eq,std::allocator<operations_research::sat::ConstraintProto const*>>::resize_impl(result, 3);
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

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::ConstraintProto const*>,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Eq,std::allocator<operations_research::sat::ConstraintProto const*>>::resize_impl(uint64_t *a1, uint64_t a2)
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
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,8ul,true,true,8ul>(v8, a1);
}

void *operations_research::sat::Model::Delete<operations_research::sat::SymmetryPropagator>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F3DAF8;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::SymmetryPropagator>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F3DAF8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedStatistics>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedStatistics>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedStatistics>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::SharedStatistics>(void)::d)
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::SharedStatistics>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::SharedStatistics>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

void *operations_research::sat::Model::Delete<operations_research::sat::SharedStatistics>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F3DB30;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,int>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,int>>>::~raw_hash_set(v1 + 1);
    absl::lts_20240722::Mutex::~Mutex(v1);
    MEMORY[0x23EED9460]();
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::SharedStatistics>::~Delete(void *a1)
{
  v1 = a1[1];
  *a1 = &unk_284F3DB30;
  a1[1] = 0;
  if (v1)
  {
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,int>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,int>>>::~raw_hash_set(v1 + 1);
    absl::lts_20240722::Mutex::~Mutex(v1);
    MEMORY[0x23EED9460]();
  }

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::Model::Delete<operations_research::sat::ImpliedBounds>::~Delete(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  *v1 = &unk_284F3DB68;
  v1[1] = 0;
  if (v2)
  {
    v3 = v1;
    operations_research::sat::ImpliedBounds::~ImpliedBounds(v2);
    MEMORY[0x23EED9460]();
    return v3;
  }

  return v1;
}

void operations_research::sat::Model::Delete<operations_research::sat::ImpliedBounds>::~Delete(void *a1)
{
  v1 = a1[1];
  *a1 = &unk_284F3DB68;
  a1[1] = 0;
  if (v1)
  {
    operations_research::sat::ImpliedBounds::~ImpliedBounds(v1);
    MEMORY[0x23EED9460]();
  }

  JUMPOUT(0x23EED9460);
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::InequalityDetectionHelper *,false>(uint64_t a1, __int128 *a2, uint64_t a3, char a4, __n128 a5)
{
  v381 = *MEMORY[0x277D85DE8];
LABEL_2:
  v9 = a2 - 2;
  v10 = a2 - 4;
  v11 = a2 - 6;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = (a2 - v12) >> 5;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        goto LABEL_288;
      }

      if (v13 == 2)
      {
        v183 = *(v12 + 8);
        v184 = *(a2 - 6) >> 1;
        v185 = v184 == v183 >> 1;
        v186 = v184 < v183 >> 1;
        if (v185)
        {
          v186 = *(a2 - 4) < *(v12 + 16);
        }

        if (v186)
        {
          v337 = *v12;
          v375 = *(v12 + 16);
          v187 = *(a2 - 1);
          *v12 = *(a2 - 2);
          *(v12 + 16) = v187;
          *(a2 - 2) = v337;
          *(a2 - 1) = v375;
        }

        goto LABEL_288;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      v188 = *(v12 + 48);
      v189 = *(v12 + 8);
      v190 = *(v12 + 40) >> 1;
      v185 = v190 == v189 >> 1;
      v191 = v190 < v189 >> 1;
      if (v185)
      {
        v191 = v188 < *(v12 + 16);
      }

      v192 = *(a2 - 6) >> 1;
      v193 = *(a2 - 4) < v188;
      v185 = v192 == v190;
      v194 = v192 < v190;
      if (v185)
      {
        v194 = v193;
      }

      if (v191)
      {
        if (v194)
        {
          v338 = *v12;
          v376 = *(v12 + 16);
          v195 = *(a2 - 1);
          *v12 = *v9;
          *(v12 + 16) = v195;
        }

        else
        {
          v345 = *v12;
          v380 = *(v12 + 16);
          v299 = *(v12 + 48);
          *v12 = *(v12 + 32);
          *(v12 + 16) = v299;
          *(v12 + 32) = v345;
          *(v12 + 48) = v380;
          v300 = *(v12 + 40);
          v301 = *(a2 - 6) >> 1;
          v185 = v301 == v300 >> 1;
          v302 = v301 < v300 >> 1;
          if (v185)
          {
            v302 = *(a2 - 4) < *(v12 + 48);
          }

          if (!v302)
          {
            goto LABEL_288;
          }

          v338 = *(v12 + 32);
          v376 = *(v12 + 48);
          v303 = *(a2 - 1);
          *(v12 + 32) = *v9;
          *(v12 + 48) = v303;
        }

        *v9 = v338;
        *(a2 - 1) = v376;
      }

      else if (v194)
      {
        v342 = *(v12 + 32);
        v378 = *(v12 + 48);
        v280 = *(a2 - 1);
        *(v12 + 32) = *v9;
        *(v12 + 48) = v280;
        *v9 = v342;
        *(a2 - 1) = v378;
LABEL_268:
        v281 = *(v12 + 8);
        v282 = *(v12 + 40) >> 1;
        v185 = v282 == v281 >> 1;
        v283 = v282 < v281 >> 1;
        if (v185)
        {
          v283 = *(v12 + 48) < *(v12 + 16);
        }

        if (v283)
        {
          v343 = *v12;
          v379 = *(v12 + 16);
          v284 = *(v12 + 48);
          *v12 = *(v12 + 32);
          *(v12 + 16) = v284;
          *(v12 + 32) = v343;
          *(v12 + 48) = v379;
        }
      }

LABEL_288:
      v304 = *MEMORY[0x277D85DE8];
      return;
    }

    if (v13 == 4)
    {
      break;
    }

    if (v13 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::InequalityDetectionHelper *,0>(v12, (v12 + 32), (v12 + 64), (v12 + 96), a5);
      v171 = *(v12 + 104);
      v172 = *(a2 - 6) >> 1;
      v185 = v172 == v171 >> 1;
      v173 = v172 < v171 >> 1;
      if (v185)
      {
        v173 = *(a2 - 4) < *(v12 + 112);
      }

      if (!v173)
      {
        goto LABEL_288;
      }

      v334 = *(v12 + 96);
      v372 = *(v12 + 112);
      v174 = *(a2 - 1);
      *(v12 + 96) = *(a2 - 2);
      *(v12 + 112) = v174;
      *(a2 - 2) = v334;
      *(a2 - 1) = v372;
      v175 = *(v12 + 72);
      v176 = *(v12 + 104) >> 1;
      v185 = v176 == v175 >> 1;
      v177 = v176 < v175 >> 1;
      if (v185)
      {
        v177 = *(v12 + 112) < *(v12 + 80);
      }

      if (!v177)
      {
        goto LABEL_288;
      }

      v335 = *(v12 + 64);
      v373 = *(v12 + 80);
      v178 = *(v12 + 112);
      *(v12 + 64) = *(v12 + 96);
      *(v12 + 80) = v178;
      *(v12 + 96) = v335;
      *(v12 + 112) = v373;
      v179 = *(v12 + 40);
      v180 = *(v12 + 72) >> 1;
      v185 = v180 == v179 >> 1;
      v181 = v180 < v179 >> 1;
      if (v185)
      {
        v181 = *(v12 + 80) < *(v12 + 48);
      }

      if (!v181)
      {
        goto LABEL_288;
      }

      v336 = *(v12 + 32);
      v374 = *(v12 + 48);
      v182 = *(v12 + 80);
      *(v12 + 32) = *(v12 + 64);
      *(v12 + 48) = v182;
      *(v12 + 64) = v336;
      *(v12 + 80) = v374;
      goto LABEL_268;
    }

LABEL_10:
    if (v13 <= 23)
    {
      v197 = (v12 + 32);
      v199 = v12 == a2 || v197 == a2;
      if (a4)
      {
        if (!v199)
        {
          v200 = 0;
          v201 = v12;
          do
          {
            v203 = v197;
            v204 = *(v201 + 10);
            v205 = *(v201 + 12);
            v206 = *(v201 + 2);
            v207 = v204 >> 1;
            v185 = v204 >> 1 == v206 >> 1;
            v208 = v204 >> 1 < v206 >> 1;
            if (v185)
            {
              v208 = v205 < *(v201 + 4);
            }

            if (v208)
            {
              v209 = *v203;
              v210 = *(v201 + 11);
              v346 = *(v201 + 15);
              v339 = *(v201 + 52);
              v211 = v200;
              do
              {
                v212 = v12 + v211;
                v213 = *(v12 + v211 + 16);
                *(v212 + 32) = *(v12 + v211);
                *(v212 + 48) = v213;
                if (!v211)
                {
                  v202 = v12;
                  goto LABEL_202;
                }

                v214 = *(v212 - 24);
                v215 = v205 < *(v212 - 16);
                v185 = v207 == v214 >> 1;
                v216 = v207 < v214 >> 1;
                if (!v185)
                {
                  v215 = v216;
                }

                v211 -= 32;
              }

              while (v215);
              v202 = v12 + v211 + 32;
LABEL_202:
              *v202 = v209;
              *(v202 + 8) = v204;
              *(v202 + 12) = v210;
              *(v202 + 16) = v205;
              *(v202 + 20) = v339;
              *(v202 + 28) = v346;
            }

            v197 = v203 + 2;
            v200 += 32;
            v201 = v203;
          }

          while (v203 + 2 != a2);
        }
      }

      else if (!v199)
      {
        do
        {
          v285 = v197;
          v286 = *(a1 + 40);
          v287 = *(a1 + 48);
          v288 = *(a1 + 8);
          v289 = v286 >> 1;
          v185 = v286 >> 1 == v288 >> 1;
          v290 = v286 >> 1 < v288 >> 1;
          if (v185)
          {
            v290 = v287 < *(a1 + 16);
          }

          if (v290)
          {
            v291 = *v285;
            v292 = *(a1 + 44);
            v348 = *(a1 + 60);
            v344 = *(a1 + 52);
            v293 = v285;
            do
            {
              v294 = *(v293 - 1);
              *v293 = *(v293 - 2);
              v293[1] = v294;
              v295 = *(v293 - 14);
              v296 = *(v293 - 12);
              v293 -= 2;
              v297 = v287 < v296;
              v185 = v289 == v295 >> 1;
              v298 = v289 < v295 >> 1;
              if (v185)
              {
                v298 = v297;
              }
            }

            while (v298);
            *v293 = v291;
            *(v293 + 2) = v286;
            *(v293 + 3) = v292;
            *(v293 + 4) = v287;
            *(v293 + 7) = v348;
            *(v293 + 20) = v344;
          }

          v197 = v285 + 2;
          a1 = v285;
        }

        while (v285 + 2 != a2);
      }

      goto LABEL_288;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v217 = (v13 - 2) >> 1;
        v218 = v217;
        do
        {
          v219 = v218;
          v220 = 32 * v218;
          if (v217 >= (32 * v218) >> 5)
          {
            v221 = (v220 >> 4) | 1;
            v222 = v12 + 32 * v221;
            if ((v220 >> 4) + 2 < v13)
            {
              v223 = *(v222 + 40);
              v224 = *(v222 + 8) >> 1;
              v185 = v224 == v223 >> 1;
              v225 = v224 < v223 >> 1;
              if (v185)
              {
                v225 = *(v222 + 16) < *(v222 + 48);
              }

              v226 = !v225;
              if (v225)
              {
                v227 = 32;
              }

              else
              {
                v227 = 0;
              }

              v222 += v227;
              if (!v226)
              {
                v221 = (v220 >> 4) + 2;
              }
            }

            v228 = v12 + v220;
            v229 = *(v228 + 8);
            v230 = *(v228 + 16);
            v231 = *(v222 + 8) >> 1;
            v232 = v229 >> 1;
            v233 = *(v222 + 16) < v230;
            v185 = v231 == v229 >> 1;
            v234 = v231 < v229 >> 1;
            if (v185)
            {
              v235 = *(v222 + 16) < v230;
            }

            else
            {
              v235 = v234;
            }

            if (!v235)
            {
              v236 = *v228;
              v237 = *(v228 + 12);
              v347 = *(v228 + 28);
              v340 = *(v228 + 20);
              do
              {
                v241 = v228;
                v228 = v222;
                v242 = *(v222 + 16);
                *v241 = *v222;
                v241[1] = v242;
                if (v217 < v221)
                {
                  break;
                }

                v243 = (2 * v221) | 1;
                v222 = v12 + 32 * v243;
                v244 = 2 * v221 + 2;
                if (v244 < v13)
                {
                  v245 = *(v222 + 40);
                  v246 = *(v222 + 8) >> 1;
                  v185 = v246 == v245 >> 1;
                  v247 = v246 < v245 >> 1;
                  if (v185)
                  {
                    v247 = *(v222 + 16) < *(v222 + 48);
                  }

                  v248 = !v247;
                  if (v247)
                  {
                    v249 = 32;
                  }

                  else
                  {
                    v249 = 0;
                  }

                  v222 += v249;
                  if (!v248)
                  {
                    v243 = v244;
                  }
                }

                v238 = *(v222 + 8) >> 1;
                v239 = *(v222 + 16) < v230;
                v185 = v238 == v232;
                v240 = v238 < v232;
                if (!v185)
                {
                  v239 = v240;
                }

                v221 = v243;
              }

              while (!v239);
              *v228 = v236;
              *(v228 + 8) = v229;
              *(v228 + 12) = v237;
              *(v228 + 16) = v230;
              *(v228 + 20) = v340;
              *(v228 + 28) = v347;
            }
          }

          v218 = v219 - 1;
        }

        while (v219);
        do
        {
          v251 = 0;
          v341 = *v12;
          v377 = *(v12 + 16);
          v252 = (v13 - 2) >> 1;
          v253 = v12;
          do
          {
            while (1)
            {
              v260 = &v253[2 * v251];
              v258 = v260 + 2;
              v261 = (2 * v251) | 1;
              v251 = 2 * v251 + 2;
              if (v251 < v13)
              {
                break;
              }

              v251 = v261;
              v262 = v260[3];
              *v253 = *v258;
              v253[1] = v262;
              v253 = v260 + 2;
              if (v261 > v252)
              {
                goto LABEL_255;
              }
            }

            v254 = *(v260 + 18);
            v255 = *(v260 + 10) >> 1;
            v185 = v255 == v254 >> 1;
            v256 = v255 < v254 >> 1;
            if (v185)
            {
              v256 = *(v260 + 12) < *(v260 + 20);
            }

            v257 = v260 + 4;
            if (v256)
            {
              v258 = v257;
            }

            else
            {
              v251 = v261;
            }

            v259 = v258[1];
            *v253 = *v258;
            v253[1] = v259;
            v253 = v258;
          }

          while (v251 <= v252);
LABEL_255:
          a2 -= 2;
          if (v258 == a2)
          {
            *v258 = v341;
            v258[1] = v377;
          }

          else
          {
            v263 = a2[1];
            *v258 = *a2;
            v258[1] = v263;
            *a2 = v341;
            a2[1] = v377;
            v264 = (v258 - v12 + 32) >> 5;
            v250 = v264 < 2;
            v265 = v264 - 2;
            if (!v250)
            {
              v266 = v265 >> 1;
              v267 = v12 + 32 * (v265 >> 1);
              v268 = *(v258 + 2);
              v269 = *(v258 + 4);
              v270 = *(v267 + 8) >> 1;
              v271 = v268 >> 1;
              v272 = *(v267 + 16) < v269;
              v185 = v270 == v268 >> 1;
              v273 = v270 < v268 >> 1;
              if (!v185)
              {
                v272 = v273;
              }

              if (v272)
              {
                v274 = *v258;
                v275 = *(v258 + 3);
                v310 = *(v258 + 7);
                v307 = *(v258 + 20);
                do
                {
                  v276 = v258;
                  v258 = v267;
                  v277 = *(v267 + 16);
                  *v276 = *v267;
                  v276[1] = v277;
                  if (!v266)
                  {
                    break;
                  }

                  v266 = (v266 - 1) >> 1;
                  v267 = v12 + 32 * v266;
                  v278 = *(v267 + 8) >> 1;
                  v185 = v278 == v271;
                  v279 = v278 < v271;
                  if (v185)
                  {
                    v279 = *(v267 + 16) < v269;
                  }
                }

                while (v279);
                *v258 = v274;
                *(v258 + 2) = v268;
                *(v258 + 3) = v275;
                *(v258 + 4) = v269;
                *(v258 + 20) = v307;
                *(v258 + 7) = v310;
              }
            }
          }

          v250 = v13-- <= 2;
        }

        while (!v250);
      }

      goto LABEL_288;
    }

    v14 = v12 + 32 * (v13 >> 1);
    v15 = *(a2 - 4);
    v16 = *(a2 - 6) >> 1;
    if (v13 < 0x81)
    {
      v24 = *(v12 + 16);
      v25 = *(v14 + 8);
      v26 = *(v12 + 8) >> 1;
      v185 = v26 == v25 >> 1;
      v27 = v26 < v25 >> 1;
      if (v185)
      {
        v27 = v24 < *(v14 + 16);
      }

      v28 = v15 < v24;
      v185 = v16 == v26;
      v29 = v16 < v26;
      if (v185)
      {
        v29 = v28;
      }

      if (!v27)
      {
        if (v29)
        {
          v315 = *v12;
          v353 = *(v12 + 16);
          v36 = *(a2 - 1);
          *v12 = *v9;
          *(v12 + 16) = v36;
          a5 = v315;
          *v9 = v315;
          *(a2 - 1) = v353;
          v37 = *(v14 + 8);
          v38 = *(v12 + 8) >> 1;
          v185 = v38 == v37 >> 1;
          v39 = v38 < v37 >> 1;
          if (v185)
          {
            v39 = *(v12 + 16) < *(v14 + 16);
          }

          if (v39)
          {
            v316 = *v14;
            v354 = *(v14 + 16);
            v40 = *(v12 + 16);
            *v14 = *v12;
            *(v14 + 16) = v40;
            a5 = v316;
            *v12 = v316;
            *(v12 + 16) = v354;
            --a3;
            if (a4)
            {
              goto LABEL_61;
            }

            goto LABEL_102;
          }
        }

        goto LABEL_60;
      }

      if (v29)
      {
        v312 = *v14;
        v350 = *(v14 + 16);
        v30 = *(a2 - 1);
        *v14 = *v9;
        *(v14 + 16) = v30;
      }

      else
      {
        v321 = *v14;
        v359 = *(v14 + 16);
        v60 = *(v12 + 16);
        *v14 = *v12;
        *(v14 + 16) = v60;
        a5 = v321;
        *v12 = v321;
        *(v12 + 16) = v359;
        v61 = *(v12 + 8);
        v62 = *(a2 - 6) >> 1;
        v185 = v62 == v61 >> 1;
        v63 = v62 < v61 >> 1;
        if (v185)
        {
          v63 = *(a2 - 4) < *(v12 + 16);
        }

        if (!v63)
        {
LABEL_60:
          --a3;
          if (a4)
          {
            goto LABEL_61;
          }

          goto LABEL_102;
        }

        v312 = *v12;
        v350 = *(v12 + 16);
        v64 = *(a2 - 1);
        *v12 = *v9;
        *(v12 + 16) = v64;
      }

      a5 = v312;
      *v9 = v312;
      *(a2 - 1) = v350;
      goto LABEL_60;
    }

    v17 = *(v14 + 16);
    v18 = *(v12 + 8);
    v19 = *(v14 + 8) >> 1;
    v185 = v19 == v18 >> 1;
    v20 = v19 < v18 >> 1;
    if (v185)
    {
      v20 = v17 < *(v12 + 16);
    }

    v21 = v15 < v17;
    v185 = v16 == v19;
    v22 = v16 < v19;
    if (v185)
    {
      v22 = v21;
    }

    if (v20)
    {
      if (v22)
      {
        v311 = *v12;
        v349 = *(v12 + 16);
        v23 = *(a2 - 1);
        *v12 = *v9;
        *(v12 + 16) = v23;
LABEL_42:
        *v9 = v311;
        *(a2 - 1) = v349;
        goto LABEL_43;
      }

      v317 = *v12;
      v355 = *(v12 + 16);
      v41 = *(v14 + 16);
      *v12 = *v14;
      *(v12 + 16) = v41;
      *v14 = v317;
      *(v14 + 16) = v355;
      v42 = *(v14 + 8);
      v43 = *(a2 - 6) >> 1;
      v185 = v43 == v42 >> 1;
      v44 = v43 < v42 >> 1;
      if (v185)
      {
        v44 = *(a2 - 4) < *(v14 + 16);
      }

      if (v44)
      {
        v311 = *v14;
        v349 = *(v14 + 16);
        v45 = *(a2 - 1);
        *v14 = *v9;
        *(v14 + 16) = v45;
        goto LABEL_42;
      }
    }

    else if (v22)
    {
      v313 = *v14;
      v351 = *(v14 + 16);
      v31 = *(a2 - 1);
      *v14 = *v9;
      *(v14 + 16) = v31;
      *v9 = v313;
      *(a2 - 1) = v351;
      v32 = *(v12 + 8);
      v33 = *(v14 + 8) >> 1;
      v185 = v33 == v32 >> 1;
      v34 = v33 < v32 >> 1;
      if (v185)
      {
        v34 = *(v14 + 16) < *(v12 + 16);
      }

      if (v34)
      {
        v314 = *v12;
        v352 = *(v12 + 16);
        v35 = *(v14 + 16);
        *v12 = *v14;
        *(v12 + 16) = v35;
        *v14 = v314;
        *(v14 + 16) = v352;
      }
    }

LABEL_43:
    v46 = (v14 - 32);
    v47 = *(v14 - 16);
    v48 = *(v12 + 40);
    v49 = *(v14 - 24) >> 1;
    v185 = v49 == v48 >> 1;
    v50 = v49 < v48 >> 1;
    if (v185)
    {
      v50 = v47 < *(v12 + 48);
    }

    v51 = *(a2 - 14) >> 1;
    v52 = *(a2 - 12) < v47;
    v185 = v51 == v49;
    v53 = v51 < v49;
    if (v185)
    {
      v53 = v52;
    }

    if (v50)
    {
      if (v53)
      {
        v318 = *(v12 + 32);
        v356 = *(v12 + 48);
        v54 = *(a2 - 3);
        *(v12 + 32) = *v10;
        *(v12 + 48) = v54;
LABEL_66:
        *v10 = v318;
        *(a2 - 3) = v356;
        goto LABEL_67;
      }

      v322 = *(v12 + 32);
      v360 = *(v12 + 48);
      v68 = *(v14 - 16);
      *(v12 + 32) = *v46;
      *(v12 + 48) = v68;
      *v46 = v322;
      *(v14 - 16) = v360;
      v69 = *(v14 - 24);
      v70 = *(a2 - 14) >> 1;
      v185 = v70 == v69 >> 1;
      v71 = v70 < v69 >> 1;
      if (v185)
      {
        v71 = *(a2 - 12) < *(v14 - 16);
      }

      if (v71)
      {
        v318 = *v46;
        v356 = *(v14 - 16);
        v72 = *(a2 - 3);
        *v46 = *v10;
        *(v14 - 16) = v72;
        goto LABEL_66;
      }
    }

    else if (v53)
    {
      v319 = *v46;
      v357 = *(v14 - 16);
      v55 = *(a2 - 3);
      *v46 = *v10;
      *(v14 - 16) = v55;
      *v10 = v319;
      *(a2 - 3) = v357;
      v56 = *(v12 + 40);
      v57 = *(v14 - 24) >> 1;
      v185 = v57 == v56 >> 1;
      v58 = v57 < v56 >> 1;
      if (v185)
      {
        v58 = *(v14 - 16) < *(v12 + 48);
      }

      if (v58)
      {
        v320 = *(v12 + 32);
        v358 = *(v12 + 48);
        v59 = *(v14 - 16);
        *(v12 + 32) = *v46;
        *(v12 + 48) = v59;
        *v46 = v320;
        *(v14 - 16) = v358;
      }
    }

LABEL_67:
    v73 = *(v14 + 48);
    v74 = *(v12 + 72);
    v75 = *(v14 + 40) >> 1;
    v185 = v75 == v74 >> 1;
    v76 = v75 < v74 >> 1;
    if (v185)
    {
      v76 = v73 < *(v12 + 80);
    }

    v77 = *(a2 - 22) >> 1;
    v78 = *(a2 - 20) < v73;
    v185 = v77 == v75;
    v79 = v77 < v75;
    if (v185)
    {
      v79 = v78;
    }

    if (v76)
    {
      if (v79)
      {
        v323 = *(v12 + 64);
        v361 = *(v12 + 80);
        v80 = *(a2 - 5);
        *(v12 + 64) = *v11;
        *(v12 + 80) = v80;
LABEL_83:
        *v11 = v323;
        *(a2 - 5) = v361;
        goto LABEL_84;
      }

      v326 = *(v12 + 64);
      v364 = *(v12 + 80);
      v86 = *(v14 + 48);
      *(v12 + 64) = *(v14 + 32);
      *(v12 + 80) = v86;
      *(v14 + 32) = v326;
      *(v14 + 48) = v364;
      v87 = *(v14 + 40);
      v88 = *(a2 - 22) >> 1;
      v185 = v88 == v87 >> 1;
      v89 = v88 < v87 >> 1;
      if (v185)
      {
        v89 = *(a2 - 20) < *(v14 + 48);
      }

      if (v89)
      {
        v323 = *(v14 + 32);
        v361 = *(v14 + 48);
        v90 = *(a2 - 5);
        *(v14 + 32) = *v11;
        *(v14 + 48) = v90;
        goto LABEL_83;
      }
    }

    else if (v79)
    {
      v324 = *(v14 + 32);
      v362 = *(v14 + 48);
      v81 = *(a2 - 5);
      *(v14 + 32) = *v11;
      *(v14 + 48) = v81;
      *v11 = v324;
      *(a2 - 5) = v362;
      v82 = *(v12 + 72);
      v83 = *(v14 + 40) >> 1;
      v185 = v83 == v82 >> 1;
      v84 = v83 < v82 >> 1;
      if (v185)
      {
        v84 = *(v14 + 48) < *(v12 + 80);
      }

      if (v84)
      {
        v325 = *(v12 + 64);
        v363 = *(v12 + 80);
        v85 = *(v14 + 48);
        *(v12 + 64) = *(v14 + 32);
        *(v12 + 80) = v85;
        *(v14 + 32) = v325;
        *(v14 + 48) = v363;
      }
    }

LABEL_84:
    v91 = *(v14 + 16);
    v92 = *(v14 - 24);
    v93 = *(v14 + 8) >> 1;
    v185 = v93 == v92 >> 1;
    v94 = v93 < v92 >> 1;
    if (v185)
    {
      v94 = v91 < *(v14 - 16);
    }

    v95 = *(v14 + 40) >> 1;
    v96 = *(v14 + 48) < v91;
    v185 = v95 == v93;
    v97 = v95 < v93;
    if (v185)
    {
      v97 = v96;
    }

    if (v94)
    {
      if (v97)
      {
        v327 = *v46;
        v365 = *(v14 - 16);
        v98 = *(v14 + 48);
        *v46 = *(v14 + 32);
        *(v14 - 16) = v98;
LABEL_100:
        *(v14 + 32) = v327;
        *(v14 + 48) = v365;
        goto LABEL_101;
      }

      v330 = *v46;
      v368 = *(v14 - 16);
      v104 = *(v14 + 16);
      *v46 = *v14;
      *(v14 - 16) = v104;
      *v14 = v330;
      *(v14 + 16) = v368;
      v105 = *(v14 + 8);
      v106 = *(v14 + 40) >> 1;
      v185 = v106 == v105 >> 1;
      v107 = v106 < v105 >> 1;
      if (v185)
      {
        v107 = *(v14 + 48) < *(v14 + 16);
      }

      if (v107)
      {
        v327 = *v14;
        v365 = *(v14 + 16);
        v108 = *(v14 + 48);
        *v14 = *(v14 + 32);
        *(v14 + 16) = v108;
        goto LABEL_100;
      }
    }

    else if (v97)
    {
      v328 = *v14;
      v366 = *(v14 + 16);
      v99 = *(v14 + 48);
      *v14 = *(v14 + 32);
      *(v14 + 16) = v99;
      *(v14 + 32) = v328;
      *(v14 + 48) = v366;
      v100 = *(v14 - 24);
      v101 = *(v14 + 8) >> 1;
      v185 = v101 == v100 >> 1;
      v102 = v101 < v100 >> 1;
      if (v185)
      {
        v102 = *(v14 + 16) < *(v14 - 16);
      }

      if (v102)
      {
        v329 = *v46;
        v367 = *(v14 - 16);
        v103 = *(v14 + 16);
        *v46 = *v14;
        *(v14 - 16) = v103;
        *v14 = v329;
        *(v14 + 16) = v367;
      }
    }

LABEL_101:
    v331 = *v12;
    v369 = *(v12 + 16);
    v109 = *(v14 + 16);
    *v12 = *v14;
    *(v12 + 16) = v109;
    a5 = v331;
    *v14 = v331;
    *(v14 + 16) = v369;
    --a3;
    if (a4)
    {
LABEL_61:
      v65 = *(v12 + 8);
      v66 = *(v12 + 16);
      v67 = v65 >> 1;
      goto LABEL_105;
    }

LABEL_102:
    v65 = *(v12 + 8);
    v66 = *(v12 + 16);
    v110 = *(v12 - 24) >> 1;
    v67 = v65 >> 1;
    v111 = *(v12 - 16) < v66;
    v185 = v110 == v65 >> 1;
    v112 = v110 < v65 >> 1;
    if (!v185)
    {
      v111 = v112;
    }

    if (v111)
    {
LABEL_105:
      v113 = 0;
      v114 = *v12;
      v115 = *(v12 + 12);
      v305 = *(v12 + 20);
      v308 = *(v12 + 28);
      do
      {
        v116 = *(v12 + v113 + 40) >> 1;
        v117 = *(v12 + v113 + 48) < v66;
        v185 = v116 == v67;
        v118 = v116 < v67;
        if (!v185)
        {
          v117 = v118;
        }

        v113 += 32;
      }

      while (v117);
      v119 = v12 + v113;
      v120 = a2;
      if (v113 == 32)
      {
        v125 = a2;
        while (v119 < v125)
        {
          v121 = v125 - 2;
          v126 = *(v125 - 6) >> 1;
          v127 = *(v125 - 4) < v66;
          v185 = v126 == v67;
          v128 = v126 < v67;
          if (v185)
          {
            v128 = v127;
          }

          v125 = v121;
          if (v128)
          {
            goto LABEL_119;
          }
        }

        v121 = v125;
        v12 = v119;
      }

      else
      {
        do
        {
          v121 = v120 - 2;
          v122 = *(v120 - 6) >> 1;
          v123 = *(v120 - 4) < v66;
          v185 = v122 == v67;
          v124 = v122 < v67;
          if (v185)
          {
            v124 = v123;
          }

          v120 = v121;
        }

        while (!v124);
LABEL_119:
        v12 = v119;
        if (v119 < v121)
        {
          v129 = v121;
          do
          {
            v332 = *v12;
            v370 = *(v12 + 16);
            v130 = v129[1];
            *v12 = *v129;
            *(v12 + 16) = v130;
            a5 = v332;
            *v129 = v332;
            v129[1] = v370;
            do
            {
              v131 = *(v12 + 40);
              v132 = *(v12 + 48);
              v12 += 32;
              v131 >>= 1;
              v133 = v132 < v66;
              v185 = v131 == v67;
              v134 = v131 < v67;
              if (v185)
              {
                v134 = v133;
              }
            }

            while (v134);
            do
            {
              v135 = v129[-2].n128_i32[2];
              v136 = v129[-1].n128_i32[0];
              v129 -= 2;
              v135 >>= 1;
              v137 = v136 < v66;
              v185 = v135 == v67;
              v138 = v135 < v67;
              if (v185)
              {
                v138 = v137;
              }
            }

            while (!v138);
          }

          while (v12 < v129);
        }
      }

      v139 = (v12 - 32);
      if (v12 - 32 != a1)
      {
        a5 = *v139;
        v140 = *(v12 - 16);
        *a1 = *v139;
        *(a1 + 16) = v140;
      }

      *(v12 - 32) = v114;
      *(v12 - 24) = v65;
      *(v12 - 20) = v115;
      *(v12 - 16) = v66;
      *(v12 - 4) = v308;
      *(v12 - 12) = v305;
      if (v119 < v121)
      {
        goto LABEL_134;
      }

      v141 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::InequalityDetectionHelper *>(a1, v12 - 32, a5);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::InequalityDetectionHelper *>(v12, a2, v142))
      {
        a2 = (v12 - 32);
        if ((v141 & 1) == 0)
        {
          goto LABEL_2;
        }

        goto LABEL_288;
      }

      if ((v141 & 1) == 0)
      {
LABEL_134:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::InequalityDetectionHelper *,false>(a1, v12 - 32, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v143 = *v12;
      v144 = *(v12 + 12);
      v306 = *(v12 + 20);
      v309 = *(v12 + 28);
      v145 = *(a2 - 6);
      v185 = v67 == v145 >> 1;
      v146 = v67 < v145 >> 1;
      if (v185)
      {
        v146 = v66 < *(a2 - 4);
      }

      if (v146)
      {
        v147 = v12;
        do
        {
          v12 = v147 + 32;
          v148 = *(v147 + 40);
          v149 = v66 < *(v147 + 48);
          v185 = v67 == v148 >> 1;
          v150 = v67 < v148 >> 1;
          if (v185)
          {
            v150 = v149;
          }

          v147 = v12;
        }

        while (!v150);
      }

      else
      {
        v151 = v12 + 32;
        do
        {
          v12 = v151;
          if (v151 >= a2)
          {
            break;
          }

          v152 = *(v151 + 8);
          v153 = v66 < *(v12 + 16);
          v185 = v67 == v152 >> 1;
          v154 = v67 < v152 >> 1;
          if (!v185)
          {
            v153 = v154;
          }

          v151 = v12 + 32;
        }

        while (!v153);
      }

      v155 = a2;
      if (v12 < a2)
      {
        v156 = a2;
        do
        {
          v155 = v156 - 2;
          v157 = v156[-2].n128_i32[2];
          v158 = v66 < v156[-1].n128_u32[0];
          v185 = v67 == v157 >> 1;
          v159 = v67 < v157 >> 1;
          if (v185)
          {
            v159 = v158;
          }

          v156 = v155;
        }

        while (v159);
      }

      while (v12 < v155)
      {
        v333 = *v12;
        v371 = *(v12 + 16);
        v160 = v155[1];
        *v12 = *v155;
        *(v12 + 16) = v160;
        a5 = v333;
        *v155 = v333;
        v155[1] = v371;
        do
        {
          v161 = *(v12 + 40);
          v162 = *(v12 + 48);
          v12 += 32;
          v163 = v66 < v162;
          v185 = v67 == v161 >> 1;
          v164 = v67 < v161 >> 1;
          if (v185)
          {
            v164 = v163;
          }
        }

        while (!v164);
        do
        {
          v165 = v155[-2].n128_i32[2];
          v166 = v155[-1].n128_i32[0];
          v155 -= 2;
          v167 = v66 < v166;
          v185 = v67 == v165 >> 1;
          v168 = v67 < v165 >> 1;
          if (v185)
          {
            v168 = v167;
          }
        }

        while (v168);
      }

      v169 = (v12 - 32);
      if (v12 - 32 != a1)
      {
        a5 = *v169;
        v170 = *(v12 - 16);
        *a1 = *v169;
        *(a1 + 16) = v170;
      }

      a4 = 0;
      *(v12 - 32) = v143;
      *(v12 - 24) = v65;
      *(v12 - 20) = v144;
      *(v12 - 16) = v66;
      *(v12 - 4) = v309;
      *(v12 - 12) = v306;
    }
  }

  v196 = *MEMORY[0x277D85DE8];

  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::InequalityDetectionHelper *,0>(v12, (v12 + 32), (v12 + 64), a2 - 8, a5);
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::InequalityDetectionHelper *,0>(__int128 *a1, __int128 *a2, int *a3, int *a4, __n128 result)
{
  v5 = *(a2 + 4);
  v6 = *(a1 + 2);
  v7 = *(a2 + 2) >> 1;
  v8 = v7 == v6 >> 1;
  v9 = v7 < v6 >> 1;
  if (v8)
  {
    v9 = v5 < *(a1 + 4);
  }

  v10 = a3[2] >> 1;
  v11 = a3[4] < v5;
  v8 = v10 == v7;
  v12 = v10 < v7;
  if (v8)
  {
    v12 = v11;
  }

  if (v9)
  {
    if (v12)
    {
      v13 = *a1;
      result = a1[1];
      v14 = *(a3 + 1);
      *a1 = *a3;
      a1[1] = v14;
LABEL_17:
      *a3 = v13;
      *(a3 + 1) = result;
      goto LABEL_18;
    }

    v22 = *a1;
    result = a1[1];
    v23 = a2[1];
    *a1 = *a2;
    a1[1] = v23;
    *a2 = v22;
    a2[1] = result;
    v24 = *(a2 + 2);
    v25 = a3[2] >> 1;
    v8 = v25 == v24 >> 1;
    v26 = v25 < v24 >> 1;
    if (v8)
    {
      v26 = a3[4] < *(a2 + 4);
    }

    if (v26)
    {
      v13 = *a2;
      result = a2[1];
      v27 = *(a3 + 1);
      *a2 = *a3;
      a2[1] = v27;
      goto LABEL_17;
    }
  }

  else if (v12)
  {
    v15 = *a2;
    result = a2[1];
    v16 = *(a3 + 1);
    *a2 = *a3;
    a2[1] = v16;
    *a3 = v15;
    *(a3 + 1) = result;
    v17 = *(a1 + 2);
    v18 = *(a2 + 2) >> 1;
    v8 = v18 == v17 >> 1;
    v19 = v18 < v17 >> 1;
    if (v8)
    {
      v19 = *(a2 + 4) < *(a1 + 4);
    }

    if (v19)
    {
      v20 = *a1;
      result = a1[1];
      v21 = a2[1];
      *a1 = *a2;
      a1[1] = v21;
      *a2 = v20;
      a2[1] = result;
    }
  }

LABEL_18:
  v28 = a3[2];
  v29 = a4[2] >> 1;
  v8 = v29 == v28 >> 1;
  v30 = v29 < v28 >> 1;
  if (v8)
  {
    v30 = a4[4] < a3[4];
  }

  if (v30)
  {
    v31 = *a3;
    result = *(a3 + 1);
    v32 = *(a4 + 1);
    *a3 = *a4;
    *(a3 + 1) = v32;
    *a4 = v31;
    *(a4 + 1) = result;
    v33 = *(a2 + 2);
    v34 = a3[2] >> 1;
    v8 = v34 == v33 >> 1;
    v35 = v34 < v33 >> 1;
    if (v8)
    {
      v35 = a3[4] < *(a2 + 4);
    }

    if (v35)
    {
      v36 = *a2;
      result = a2[1];
      v37 = *(a3 + 1);
      *a2 = *a3;
      a2[1] = v37;
      *a3 = v36;
      *(a3 + 1) = result;
      v38 = *(a1 + 2);
      v39 = *(a2 + 2) >> 1;
      v8 = v39 == v38 >> 1;
      v40 = v39 < v38 >> 1;
      if (v8)
      {
        v40 = *(a2 + 4) < *(a1 + 4);
      }

      if (v40)
      {
        v41 = *a1;
        result = a1[1];
        v42 = a2[1];
        *a1 = *a2;
        a1[1] = v42;
        *a2 = v41;
        a2[1] = result;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::InequalityDetectionHelper *>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v113 = *MEMORY[0x277D85DE8];
  v3 = (a2 - a1) >> 5;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v4 = (a2 - 32);
        v36 = *(a1 + 48);
        v37 = *(a1 + 8);
        v38 = *(a1 + 40) >> 1;
        v9 = v38 == v37 >> 1;
        v39 = v38 < v37 >> 1;
        if (v9)
        {
          v39 = v36 < *(a1 + 16);
        }

        v40 = *(a2 - 24) >> 1;
        v41 = *(a2 - 16) < v36;
        v9 = v40 == v38;
        v42 = v40 < v38;
        if (v9)
        {
          v42 = v41;
        }

        if (!v39)
        {
          if (v42)
          {
            v60 = *(a1 + 32);
            v59 = *(a1 + 48);
            v61 = *(a2 - 16);
            *(a1 + 32) = *v4;
            *(a1 + 48) = v61;
            *v4 = v60;
            *(a2 - 16) = v59;
            v62 = *(a1 + 8);
            v63 = *(a1 + 40) >> 1;
            v9 = v63 == v62 >> 1;
            LODWORD(v4) = v63 < v62 >> 1;
            if (v9)
            {
              LODWORD(v4) = *(a1 + 48) < *(a1 + 16);
            }

            if (v4 == 1)
            {
              v65 = *a1;
              v64 = *(a1 + 16);
              v66 = *(a1 + 48);
              *a1 = *(a1 + 32);
              *(a1 + 16) = v66;
              *(a1 + 32) = v65;
              *(a1 + 48) = v64;
              goto LABEL_78;
            }
          }

          goto LABEL_3;
        }

        if (v42)
        {
          v44 = *a1;
          v43 = *(a1 + 16);
          v45 = *(a2 - 16);
          *a1 = *v4;
          *(a1 + 16) = v45;
        }

        else
        {
          v77 = *a1;
          v76 = *(a1 + 16);
          v78 = *(a1 + 48);
          *a1 = *(a1 + 32);
          *(a1 + 16) = v78;
          *(a1 + 32) = v77;
          *(a1 + 48) = v76;
          v79 = *(a1 + 40);
          v80 = *(a2 - 24) >> 1;
          v9 = v80 == v79 >> 1;
          v81 = v80 < v79 >> 1;
          if (v9)
          {
            v81 = *(a2 - 16) < *(a1 + 48);
          }

          if (!v81)
          {
            goto LABEL_3;
          }

          v44 = *(a1 + 32);
          v43 = *(a1 + 48);
          v82 = *(a2 - 16);
          *(a1 + 32) = *v4;
          *(a1 + 48) = v82;
        }

        *v4 = v44;
        *(a2 - 16) = v43;
        LOBYTE(v4) = 1;
        goto LABEL_78;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::InequalityDetectionHelper *,0>(a1, (a1 + 32), (a1 + 64), (a2 - 32), a3);
        LOBYTE(v4) = 1;
        goto LABEL_78;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::InequalityDetectionHelper *,0>(a1, (a1 + 32), (a1 + 64), (a1 + 96), a3);
        v7 = *(a1 + 104);
        v8 = *(a2 - 24) >> 1;
        v9 = v8 == v7 >> 1;
        v10 = v8 < v7 >> 1;
        if (v9)
        {
          v10 = *(a2 - 16) < *(a1 + 112);
        }

        if (v10)
        {
          v12 = *(a1 + 96);
          v11 = *(a1 + 112);
          v13 = *(a2 - 16);
          *(a1 + 96) = *(a2 - 32);
          *(a1 + 112) = v13;
          *(a2 - 32) = v12;
          *(a2 - 16) = v11;
          v14 = *(a1 + 72);
          v15 = *(a1 + 104) >> 1;
          v9 = v15 == v14 >> 1;
          v16 = v15 < v14 >> 1;
          if (v9)
          {
            v16 = *(a1 + 112) < *(a1 + 80);
          }

          if (v16)
          {
            v18 = *(a1 + 64);
            v17 = *(a1 + 80);
            v19 = *(a1 + 112);
            *(a1 + 64) = *(a1 + 96);
            *(a1 + 80) = v19;
            *(a1 + 96) = v18;
            *(a1 + 112) = v17;
            v20 = *(a1 + 40);
            v21 = *(a1 + 72) >> 1;
            v9 = v21 == v20 >> 1;
            v22 = v21 < v20 >> 1;
            if (v9)
            {
              v22 = *(a1 + 80) < *(a1 + 48);
            }

            if (v22)
            {
              v24 = *(a1 + 32);
              v23 = *(a1 + 48);
              v25 = *(a1 + 80);
              *(a1 + 32) = *(a1 + 64);
              *(a1 + 48) = v25;
              *(a1 + 64) = v24;
              *(a1 + 80) = v23;
              v26 = *(a1 + 8);
              v27 = *(a1 + 40) >> 1;
              v9 = v27 == v26 >> 1;
              LODWORD(v4) = v27 < v26 >> 1;
              if (v9)
              {
                LODWORD(v4) = *(a1 + 48) < *(a1 + 16);
              }

              if (v4 == 1)
              {
                v29 = *a1;
                v28 = *(a1 + 16);
                v30 = *(a1 + 48);
                *a1 = *(a1 + 32);
                *(a1 + 16) = v30;
                *(a1 + 32) = v29;
                *(a1 + 48) = v28;
                goto LABEL_78;
              }
            }
          }
        }

        goto LABEL_3;
    }
  }

  else
  {
    if (v3 < 2)
    {
LABEL_3:
      LOBYTE(v4) = 1;
      goto LABEL_78;
    }

    if (v3 == 2)
    {
      v31 = *(a1 + 8);
      v32 = *(a2 - 24) >> 1;
      v9 = v32 == v31 >> 1;
      LODWORD(v4) = v32 < v31 >> 1;
      if (v9)
      {
        LODWORD(v4) = *(a2 - 16) < *(a1 + 16);
      }

      if (v4 == 1)
      {
        v34 = *a1;
        v33 = *(a1 + 16);
        v35 = *(a2 - 16);
        *a1 = *(a2 - 32);
        *(a1 + 16) = v35;
        *(a2 - 32) = v34;
        *(a2 - 16) = v33;
        goto LABEL_78;
      }

      goto LABEL_3;
    }
  }

  v46 = a1 + 64;
  v47 = *(a1 + 48);
  v48 = *(a1 + 16);
  v49 = *(a1 + 40) >> 1;
  v50 = *(a1 + 8) >> 1;
  if (v49 == v50)
  {
    v51 = v47 < v48;
  }

  else
  {
    v51 = v49 < v50;
  }

  v52 = *(a1 + 80);
  v53 = *(a1 + 72) >> 1;
  v54 = v52 < v47;
  v9 = v53 == v49;
  v55 = v53 < v49;
  if (!v9)
  {
    v54 = v55;
  }

  if (!v51)
  {
    if (v54)
    {
      v68 = *(a1 + 32);
      v67 = *(a1 + 48);
      v69 = *(a1 + 80);
      *(a1 + 32) = *v46;
      *(a1 + 48) = v69;
      *v46 = v68;
      *(a1 + 80) = v67;
      v70 = *(a1 + 40) >> 1;
      v71 = *(a1 + 48) < v48;
      v9 = v70 == v50;
      v72 = v70 < v50;
      if (!v9)
      {
        v71 = v72;
      }

      if (v71)
      {
        v74 = *a1;
        v73 = *(a1 + 16);
        v75 = *(a1 + 48);
        *a1 = *(a1 + 32);
        *(a1 + 16) = v75;
        *(a1 + 32) = v74;
        *(a1 + 48) = v73;
      }
    }

    goto LABEL_61;
  }

  if (v54)
  {
    v57 = *a1;
    v56 = *(a1 + 16);
    v58 = *(a1 + 80);
    *a1 = *v46;
    *(a1 + 16) = v58;
  }

  else
  {
    v84 = *a1;
    v83 = *(a1 + 16);
    v85 = *(a1 + 48);
    *a1 = *(a1 + 32);
    *(a1 + 16) = v85;
    *(a1 + 32) = v84;
    *(a1 + 48) = v83;
    v86 = *(a1 + 40);
    v9 = v53 == v86 >> 1;
    v87 = v53 < v86 >> 1;
    if (v9)
    {
      v87 = v52 < *(a1 + 48);
    }

    if (!v87)
    {
      goto LABEL_61;
    }

    v57 = *(a1 + 32);
    v56 = *(a1 + 48);
    v88 = *(a1 + 80);
    *(a1 + 32) = *v46;
    *(a1 + 48) = v88;
  }

  *v46 = v57;
  *(a1 + 80) = v56;
LABEL_61:
  v89 = a1 + 96;
  if (a1 + 96 == a2)
  {
LABEL_75:
    v108 = 1;
  }

  else
  {
    v90 = 0;
    v91 = 0;
    while (1)
    {
      v93 = *(v89 + 8);
      v94 = *(v89 + 16);
      v95 = *(v46 + 8);
      v96 = *(v46 + 16);
      v97 = v93 >> 1;
      v98 = v94 < v96;
      v9 = v93 >> 1 == v95 >> 1;
      v99 = v93 >> 1 < v95 >> 1;
      if (v9)
      {
        v99 = v98;
      }

      if (v99)
      {
        v100 = *v89;
        v101 = *(v89 + 12);
        v111 = *(v89 + 20);
        v112 = *(v89 + 28);
        v102 = v90;
        do
        {
          v103 = a1 + v102;
          v104 = *(a1 + v102 + 80);
          *(v103 + 96) = *(a1 + v102 + 64);
          *(v103 + 112) = v104;
          if (v102 == -64)
          {
            v92 = a1;
            goto LABEL_64;
          }

          v105 = *(v103 + 40);
          v106 = v94 < *(v103 + 48);
          v9 = v97 == v105 >> 1;
          v107 = v97 < v105 >> 1;
          if (!v9)
          {
            v106 = v107;
          }

          v102 -= 32;
        }

        while (v106);
        v92 = a1 + v102 + 96;
LABEL_64:
        *v92 = v100;
        *(v92 + 8) = v93;
        *(v92 + 12) = v101;
        *(v92 + 16) = v94;
        *(v92 + 20) = v111;
        *(v92 + 28) = v112;
        if (++v91 == 8)
        {
          break;
        }
      }

      v46 = v89;
      v90 += 32;
      v89 += 32;
      if (v89 == a2)
      {
        goto LABEL_75;
      }
    }

    v108 = 0;
    LOBYTE(v89) = v89 + 32 == a2;
  }

  LOBYTE(v4) = v108 | v89;
LABEL_78:
  v109 = *MEMORY[0x277D85DE8];
  return v4 & 1;
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::EqualityDetectionHelper *,false>(__n128 *a1, unint64_t n128_u64, uint64_t a3, char a4)
{
LABEL_1:
  v8 = (n128_u64 - 32);
  v204 = (n128_u64 - 16);
  v9 = a1;
  while (1)
  {
    a1 = v9;
    v10 = (n128_u64 - v9) >> 5;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:

          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::EqualityDetectionHelper *,0>(v9, &v9[2], (n128_u64 - 32));
          return;
        case 4:

          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::EqualityDetectionHelper *,0>(v9, v9 + 2, v9 + 4, (n128_u64 - 32));
          return;
        case 5:

          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::EqualityDetectionHelper *,0>(v9, v9 + 2, v9 + 4, v9 + 6, (n128_u64 - 32));
          return;
      }
    }

    else
    {
      if (v10 < 2)
      {
        return;
      }

      if (v10 == 2)
      {
        v78 = *(n128_u64 - 24) >> 1;
        v79 = v9->n128_i32[2] >> 1;
        v80 = v78 < v79;
        if (v78 == v79 && (v81 = *(n128_u64 - 16), v82 = v9[1].n128_i64[0], v80 = v81 < v82, v81 == v82))
        {
          if (*(n128_u64 - 8) != 1 || (v9[1].n128_u8[8] & 1) != 0)
          {
            return;
          }
        }

        else if (!v80)
        {
          return;
        }

        v214 = *v9;
        v220 = v9[1];
        v187 = *(n128_u64 - 16);
        *v9 = *v8;
        v9[1] = v187;
        *v8 = v214;
        *(n128_u64 - 16) = v220;
        return;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v9 == n128_u64)
      {
        return;
      }

      v108 = (v10 - 2) >> 1;
      v109 = v108;
      while (1)
      {
        v111 = v109;
        v112 = 32 * v109;
        if (v108 < (32 * v109) >> 5)
        {
          goto LABEL_227;
        }

        v113 = (v112 >> 4) | 1;
        v114 = &v9[2 * v113];
        if ((v112 >> 4) + 2 < v10)
        {
          v115 = v114->n128_i32[2] >> 1;
          v116 = v114[2].n128_i32[2] >> 1;
          v117 = v115 < v116;
          if (v115 == v116 && (v118 = v114[1].n128_i64[0], v119 = v114[3].n128_i64[0], v117 = v118 < v119, v118 == v119))
          {
            if (v114[1].n128_u8[8] == 1 && (v114[3].n128_u8[8] & 1) == 0)
            {
LABEL_237:
              v114 += 2;
              v113 = (v112 >> 4) + 2;
            }
          }

          else if (v117)
          {
            goto LABEL_237;
          }
        }

        v120 = &v9[v112 / 0x10];
        v121 = v114->n128_i32[2] >> 1;
        v122 = v9[v112 / 0x10].n128_i32[2];
        v123 = v122 >> 1;
        if (v121 == v122 >> 1)
        {
          v124 = v114[1].n128_i64[0];
          v125 = v120[1].n128_i64[0];
          v126 = v124 < v125;
          if (v124 == v125)
          {
            if (v114[1].n128_u8[8] != 1 || (v120[1].n128_u8[8] & 1) != 0)
            {
              goto LABEL_246;
            }
          }

          else
          {
            v124 = v120[1].n128_i64[0];
            if (!v126)
            {
              goto LABEL_246;
            }
          }
        }

        else if (v121 >= v123)
        {
          v124 = v120[1].n128_i64[0];
LABEL_246:
          v127 = v120->n128_u64[0];
          v128 = v120->n128_u32[3];
          v129 = v120[1].n128_u8[8];
          *&v212[3] = v120[1].n128_u32[3];
          *v212 = *(&v120[1].n128_u32[2] + 1);
          v130 = v114[1];
          *v120 = *v114;
          v120[1] = v130;
          if (v108 >= v113)
          {
            if ((v129 & 1) == 0)
            {
              v110 = v114;
              while (1)
              {
                v114 = v110;
                v132 = 2 * v113;
                v113 = (2 * v113) | 1;
                v110 = &v9[2 * v113];
                v133 = v132 + 2;
                if (v133 < v10)
                {
                  v134 = v110->n128_i32[2] >> 1;
                  v135 = v110[2].n128_i32[2] >> 1;
                  v136 = v134 < v135;
                  if (v134 != v135 || (v137 = v110[1].n128_i64[0], v138 = v110[3].n128_i64[0], v136 = v137 < v138, v137 != v138))
                  {
                    if (!v136)
                    {
                      goto LABEL_260;
                    }

LABEL_259:
                    v110 += 2;
                    v113 = v133;
                    goto LABEL_260;
                  }

                  if (v110[1].n128_u8[8] == 1 && (v110[3].n128_u8[8] & 1) == 0)
                  {
                    goto LABEL_259;
                  }
                }

LABEL_260:
                v139 = v110->n128_i32[2] >> 1;
                v140 = v139 < v123;
                if (v139 == v123 && (v141 = v110[1].n128_i64[0], v140 = v141 < v124, v141 == v124))
                {
                  if (v110[1].n128_u8[8])
                  {
                    goto LABEL_225;
                  }
                }

                else if (v140)
                {
                  goto LABEL_225;
                }

                v131 = v110[1];
                *v114 = *v110;
                v114[1] = v131;
                if (v108 < v113)
                {
                  goto LABEL_226;
                }
              }
            }

            while (1)
            {
              v143 = 2 * v113;
              v113 = (2 * v113) | 1;
              v110 = &v9[2 * v113];
              v144 = v143 + 2;
              if (v144 >= v10)
              {
                goto LABEL_275;
              }

              v145 = v110->n128_i32[2] >> 1;
              v146 = v110[2].n128_i32[2] >> 1;
              v147 = v145 < v146;
              if (v145 == v146 && (v148 = v110[1].n128_i64[0], v149 = v110[3].n128_i64[0], v147 = v148 < v149, v148 == v149))
              {
                if (v110[1].n128_u8[8] == 1 && (v110[3].n128_u8[8] & 1) == 0)
                {
LABEL_274:
                  v110 += 2;
                  v113 = v144;
                }
              }

              else if (v147)
              {
                goto LABEL_274;
              }

LABEL_275:
              v150 = v110->n128_i32[2] >> 1;
              if (v150 == v123)
              {
                if (v110[1].n128_u64[0] < v124)
                {
                  break;
                }
              }

              else if (v150 < v123)
              {
                break;
              }

              v142 = v110[1];
              *v114 = *v110;
              v114[1] = v142;
              v114 = v110;
              if (v108 < v113)
              {
                goto LABEL_226;
              }
            }
          }

LABEL_225:
          v110 = v114;
LABEL_226:
          v110->n128_u64[0] = v127;
          v110->n128_u32[2] = v122;
          v110->n128_u32[3] = v128;
          v110[1].n128_u64[0] = v124;
          v110[1].n128_u8[8] = v129;
          *(&v110[1].n128_u32[2] + 1) = *v212;
          v110[1].n128_u32[3] = *&v212[3];
        }

LABEL_227:
        v109 = v111 - 1;
        if (!v111)
        {
          while (1)
          {
            v151 = 0;
            v213 = *v9;
            v219 = v9[1];
            v152 = v9;
            do
            {
              v154 = v152;
              v155 = &v152[2 * v151];
              v152 = v155 + 2;
              v156 = 2 * v151;
              v151 = (2 * v151) | 1;
              v157 = v156 + 2;
              if (v157 < v10)
              {
                v158 = v155[2].n128_i32[2] >> 1;
                v159 = v155[4].n128_i32[2] >> 1;
                v160 = v158 < v159;
                if (v158 == v159 && (v161 = v155[3].n128_i64[0], v162 = v155[5].n128_i64[0], v160 = v161 < v162, v161 == v162))
                {
                  if (v155[3].n128_u8[8] == 1 && (v155[5].n128_u8[8] & 1) == 0)
                  {
LABEL_281:
                    v152 = v155 + 4;
                    v151 = v157;
                  }
                }

                else if (v160)
                {
                  goto LABEL_281;
                }
              }

              v153 = v152[1];
              *v154 = *v152;
              v154[1] = v153;
            }

            while (v151 <= ((v10 - 2) >> 1));
            n128_u64 -= 32;
            if (v152 == n128_u64)
            {
              *v152 = v213;
              v152[1] = v219;
              goto LABEL_279;
            }

            v163 = *(n128_u64 + 16);
            *v152 = *n128_u64;
            v152[1] = v163;
            *n128_u64 = v213;
            *(n128_u64 + 16) = v219;
            v164 = (v152 - v9 + 32) >> 5;
            v165 = v164 - 2;
            if (v164 >= 2)
            {
              v166 = v165 >> 1;
              v167 = &v9[2 * (v165 >> 1)];
              v168 = v167->n128_i32[2] >> 1;
              v169 = v152->n128_i32[2];
              v170 = v169 >> 1;
              if (v168 == v169 >> 1)
              {
                v171 = v167[1].n128_i64[0];
                v172 = v152[1].n128_i64[0];
                v173 = v171 < v172;
                if (v171 == v172)
                {
                  if (v167[1].n128_u8[8] != 1 || (v152[1].n128_u8[8] & 1) != 0)
                  {
                    goto LABEL_279;
                  }
                }

                else
                {
                  v171 = v152[1].n128_i64[0];
                  if (!v173)
                  {
                    goto LABEL_279;
                  }
                }
              }

              else
              {
                if (v168 >= v170)
                {
                  goto LABEL_279;
                }

                v171 = v152[1].n128_i64[0];
              }

              v174 = v152->n128_u64[0];
              v175 = v152->n128_u32[3];
              v176 = v152[1].n128_u8[8];
              *&v207[3] = v152[1].n128_u32[3];
              *v207 = *(&v152[1].n128_u32[2] + 1);
              v177 = v167[1];
              *v152 = *v167;
              v152[1] = v177;
              if (v165 >= 2)
              {
                if ((v176 & 1) == 0)
                {
                  v178 = &v9[2 * (v165 >> 1)];
                  while (1)
                  {
                    v167 = v178;
                    v180 = v166 - 1;
                    v166 = (v166 - 1) >> 1;
                    v178 = &v9[2 * v166];
                    v181 = v178->n128_i32[2] >> 1;
                    v182 = v181 < v170;
                    if (v181 == v170 && (v183 = v178[1].n128_i64[0], v182 = v183 < v171, v183 == v171))
                    {
                      if ((v178[1].n128_u8[8] & 1) == 0)
                      {
                        goto LABEL_304;
                      }
                    }

                    else if (!v182)
                    {
                      goto LABEL_304;
                    }

                    v179 = v178[1];
                    *v167 = *v178;
                    v167[1] = v179;
                    if (v180 <= 1)
                    {
                      goto LABEL_305;
                    }
                  }
                }

                while (1)
                {
                  v185 = v166 - 1;
                  v166 = (v166 - 1) >> 1;
                  v178 = &v9[2 * v166];
                  v186 = v178->n128_i32[2] >> 1;
                  if (v186 == v170)
                  {
                    if (v178[1].n128_u64[0] >= v171)
                    {
                      break;
                    }
                  }

                  else if (v186 >= v170)
                  {
                    break;
                  }

                  v184 = v178[1];
                  *v167 = *v178;
                  v167[1] = v184;
                  v167 = &v9[2 * v166];
                  if (v185 < 2)
                  {
                    goto LABEL_305;
                  }
                }
              }

LABEL_304:
              v178 = v167;
LABEL_305:
              v178->n128_u64[0] = v174;
              v178->n128_u32[2] = v169;
              v178->n128_u32[3] = v175;
              v178[1].n128_u64[0] = v171;
              v178[1].n128_u8[8] = v176;
              *(&v178[1].n128_u32[2] + 1) = *v207;
              v178[1].n128_u32[3] = *&v207[3];
            }

LABEL_279:
            v27 = v10-- <= 2;
            if (v27)
            {
              return;
            }
          }
        }
      }
    }

    v11 = v10 >> 1;
    v12 = &v9[2 * (v10 >> 1)];
    if (v10 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::EqualityDetectionHelper *,0>(&a1[2 * (v10 >> 1)], a1, (n128_u64 - 32));
      --a3;
      if (a4)
      {
LABEL_19:
        v17 = a1->n128_i32[2];
        v18 = v17 >> 1;
        goto LABEL_24;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::EqualityDetectionHelper *,0>(a1, &a1[2 * (v10 >> 1)], (n128_u64 - 32));
      v13 = 2 * v11;
      v14 = &a1[2 * v11 - 2];
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::EqualityDetectionHelper *,0>(&a1[2], v14, (n128_u64 - 64));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::EqualityDetectionHelper *,0>(&a1[4], &a1[v13 + 2], (n128_u64 - 96));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::EqualityDetectionHelper *,0>(v14, v12, &a1[v13 + 2]);
      v208 = *a1;
      v216 = a1[1];
      v15 = v12[1];
      *a1 = *v12;
      a1[1] = v15;
      *v12 = v208;
      v12[1] = v216;
      --a3;
      if (a4)
      {
        goto LABEL_19;
      }
    }

    v16 = a1[-2].n128_i32[2] >> 1;
    v17 = a1->n128_i32[2];
    v18 = v17 >> 1;
    if (v16 == v17 >> 1)
    {
      v19 = a1[-1].n128_i64[0];
      v20 = a1[1].n128_i64[0];
      if (v19 == v20)
      {
        if (a1[-1].n128_u8[8] != 1 || (a1[1].n128_u8[8] & 1) != 0)
        {
          goto LABEL_95;
        }

        goto LABEL_24;
      }

      if (v19 < v20)
      {
        goto LABEL_24;
      }

      v19 = a1[1].n128_i64[0];
LABEL_95:
      v49 = a1->n128_u64[0];
      v50 = a1->n128_u32[3];
      v51 = a1[1].n128_u8[8];
      *v206 = *(&a1[1].n128_u32[2] + 1);
      *&v206[3] = a1[1].n128_u32[3];
      v52 = *(n128_u64 - 24);
      v53 = v18 < v52 >> 1;
      if (v18 == v52 >> 1 && (v53 = v19 < *v204, v19 == *v204))
      {
        if ((a1[1].n128_u8[8] & 1) != 0 && (*(n128_u64 - 8) & 1) == 0)
        {
LABEL_99:
          v9 = a1 + 2;
          if ((a1[1].n128_u8[8] & 1) == 0)
          {
            while (1)
            {
              v57 = v9->n128_i32[2] >> 1;
              if (v18 == v57)
              {
                if (v19 < v9[1].n128_u64[0])
                {
                  goto LABEL_126;
                }
              }

              else if (v18 < v57)
              {
                goto LABEL_126;
              }

              v9 += 2;
            }
          }

          while (1)
          {
            v54 = v9->n128_i32[2] >> 1;
            v55 = v18 < v54;
            if (v18 == v54 && (v56 = v9[1].n128_i64[0], v55 = v19 < v56, v19 == v56))
            {
              if ((v9[1].n128_u8[8] & 1) == 0)
              {
                goto LABEL_126;
              }
            }

            else if (v55)
            {
              goto LABEL_126;
            }

            v9 += 2;
          }
        }
      }

      else if (v53)
      {
        goto LABEL_99;
      }

      v9 = a1 + 2;
      if (a1[2].n128_u64 < n128_u64)
      {
        if ((a1[1].n128_u8[8] & 1) == 0)
        {
          while (1)
          {
            v61 = v9->n128_i32[2] >> 1;
            if (v18 == v61)
            {
              if (v19 < v9[1].n128_u64[0])
              {
                goto LABEL_126;
              }
            }

            else if (v18 < v61)
            {
              goto LABEL_126;
            }

            v9 += 2;
            if (v9 >= n128_u64)
            {
              goto LABEL_126;
            }
          }
        }

        do
        {
          v58 = v9->n128_i32[2] >> 1;
          v59 = v18 < v58;
          if (v18 == v58 && (v60 = v9[1].n128_i64[0], v59 = v19 < v60, v19 == v60))
          {
            if ((v9[1].n128_u8[8] & 1) == 0)
            {
              break;
            }
          }

          else if (v59)
          {
            break;
          }

          v9 += 2;
        }

        while (v9 < n128_u64);
      }

LABEL_126:
      v62 = n128_u64;
      if (v9 >= n128_u64)
      {
        goto LABEL_166;
      }

      v63 = n128_u64 - 16;
      v64 = (n128_u64 - 16);
      if (a1[1].n128_u8[8])
      {
        while (1)
        {
          v65 = v52 >> 1;
          v66 = v18 < v65;
          if (v18 == v65 && (v66 = v19 < *v63, v19 == *v63))
          {
            if (*(v63 + 8))
            {
LABEL_135:
              v62 = (v63 - 16);
              goto LABEL_166;
            }
          }

          else if (!v66)
          {
            goto LABEL_135;
          }

          v52 = *(v63 - 40);
          v63 -= 32;
        }
      }

      while (1)
      {
        v67 = v52 >> 1;
        if (v18 != v67)
        {
          break;
        }

        if (v19 >= *v64)
        {
          goto LABEL_140;
        }

LABEL_137:
        v52 = *(v64 - 10);
        v64 -= 4;
      }

      if (v18 < v67)
      {
        goto LABEL_137;
      }

LABEL_140:
      v62 = (v64 - 2);
LABEL_166:
      if (v9 < v62)
      {
        v210 = *v9;
        v218 = v9[1];
        v68 = v62[1];
        *v9 = *v62;
        v9[1] = v68;
        v9 += 2;
        *v62 = v210;
        v62[1] = v218;
        if ((v51 & 1) == 0)
        {
          while (1)
          {
            v72 = v9->n128_i32[2] >> 1;
            if (v18 == v72)
            {
              if (v19 < v9[1].n128_u64[0])
              {
                goto LABEL_153;
              }
            }

            else if (v18 < v72)
            {
              goto LABEL_153;
            }

            v9 += 2;
          }
        }

        while (1)
        {
          v69 = v9->n128_i32[2] >> 1;
          v70 = v18 < v69;
          if (v18 == v69 && (v71 = v9[1].n128_i64[0], v70 = v19 < v71, v19 == v71))
          {
            if ((v9[1].n128_u8[8] & 1) == 0)
            {
LABEL_153:
              v62 -= 2;
              if ((v51 & 1) == 0)
              {
                while (1)
                {
                  v76 = v62->n128_i32[2] >> 1;
                  if (v18 == v76)
                  {
                    if (v19 >= v62[1].n128_u64[0])
                    {
                      goto LABEL_166;
                    }
                  }

                  else if (v18 >= v76)
                  {
                    goto LABEL_166;
                  }

                  v62 -= 2;
                }
              }

              while (1)
              {
                v73 = v62->n128_i32[2] >> 1;
                v74 = v18 < v73;
                if (v18 == v73 && (v75 = v62[1].n128_i64[0], v74 = v19 < v75, v19 == v75))
                {
                  if (v62[1].n128_u8[8])
                  {
                    goto LABEL_166;
                  }
                }

                else if (!v74)
                {
                  goto LABEL_166;
                }

                v62 -= 2;
              }
            }
          }

          else if (v70)
          {
            goto LABEL_153;
          }

          v9 += 2;
        }
      }

      if (&v9[-2] != a1)
      {
        v77 = v9[-1];
        *a1 = v9[-2];
        a1[1] = v77;
      }

      a4 = 0;
      v9[-2].n128_u64[0] = v49;
      v9[-2].n128_u32[2] = v17;
      v9[-2].n128_u32[3] = v50;
      v9[-1].n128_u64[0] = v19;
      v9[-1].n128_u8[8] = v51;
      *(&v9[-1].n128_u32[2] + 1) = *v206;
      v9[-1].n128_u32[3] = *&v206[3];
    }

    else
    {
      if (v16 >= v18)
      {
        v19 = a1[1].n128_i64[0];
        goto LABEL_95;
      }

LABEL_24:
      v21 = a1->n128_u64[0];
      v22 = a1->n128_u32[3];
      v23 = a1[1].n128_i64[0];
      v24 = a1[1].n128_u8[8];
      *v205 = *(&a1[1].n128_u32[2] + 1);
      *&v205[3] = a1[1].n128_u32[3];
      v25 = a1 + 2;
      if ((v24 & 1) == 0)
      {
        while (1)
        {
          v26 = v25->n128_i32[2] >> 1;
          v27 = v26 < v18;
          if (v26 == v18 && (v28 = v25[1].n128_i64[0], v27 = v28 < v23, v28 == v23))
          {
            if ((v25[1].n128_u8[8] & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          else if (!v27)
          {
            goto LABEL_37;
          }

          v25 += 2;
        }
      }

      while (1)
      {
        v29 = v25->n128_i32[2] >> 1;
        if (v29 != v18)
        {
          break;
        }

        if (v25[1].n128_u64[0] >= v23)
        {
          goto LABEL_37;
        }

LABEL_34:
        v25 += 2;
      }

      if (v29 < v18)
      {
        goto LABEL_34;
      }

LABEL_37:
      if (&v25[-2] != a1)
      {
        i = n128_u64 - 32;
        if (v24)
        {
          for (i = n128_u64 - 32; ; i -= 32)
          {
            v34 = *(i + 8) >> 1;
            if (v34 == v18)
            {
              if (*(i + 16) < v23)
              {
                goto LABEL_64;
              }
            }

            else if (v34 < v18)
            {
              goto LABEL_64;
            }
          }
        }

        while (1)
        {
          v31 = *(i + 8) >> 1;
          v32 = v31 < v18;
          if (v31 == v18 && (v33 = *(i + 16), v32 = v33 < v23, v33 == v23))
          {
            if (*(i + 24))
            {
              goto LABEL_64;
            }
          }

          else if (v32)
          {
            goto LABEL_64;
          }

          i -= 32;
        }
      }

      i = n128_u64;
      if (v25 < n128_u64)
      {
        for (i = n128_u64 - 32; ; i -= 32)
        {
          v35 = *(i + 8) >> 1;
          if (v35 == v18)
          {
            v36 = *(i + 16);
            if (v36 == v23)
            {
              if (v25 >= i || ((v24 | *(i + 24) ^ 1) & 1) == 0)
              {
                break;
              }
            }

            else if (v25 >= i || v36 < v23)
            {
              break;
            }
          }

          else if (v25 >= i || v35 < v18)
          {
            break;
          }
        }
      }

LABEL_64:
      v9 = v25;
      if (v25 < i)
      {
        v9 = v25;
        v37 = i;
        do
        {
          v209 = *v9;
          v217 = v9[1];
          v38 = *(v37 + 16);
          *v9 = *v37;
          v9[1] = v38;
          *v37 = v209;
          *(v37 + 16) = v217;
          if (v24)
          {
            do
            {
              while (1)
              {
                v9 += 2;
                v42 = v9->n128_i32[2] >> 1;
                if (v42 != v18)
                {
                  break;
                }

                if (v9[1].n128_u64[0] >= v23)
                {
                  goto LABEL_78;
                }
              }
            }

            while (v42 < v18);
          }

          else
          {
            do
            {
              while (1)
              {
                v9 += 2;
                v39 = v9->n128_i32[2] >> 1;
                v40 = v39 < v18;
                if (v39 == v18)
                {
                  v41 = v9[1].n128_i64[0];
                  v40 = v41 < v23;
                  if (v41 == v23)
                  {
                    break;
                  }
                }

                if (!v40)
                {
                  goto LABEL_78;
                }
              }
            }

            while ((v9[1].n128_u8[8] & 1) != 0);
          }

LABEL_78:
          if (v24)
          {
            do
            {
              while (1)
              {
                v37 -= 32;
                v46 = *(v37 + 8) >> 1;
                if (v46 != v18)
                {
                  break;
                }

                if (*(v37 + 16) < v23)
                {
                  goto LABEL_66;
                }
              }
            }

            while (v46 >= v18);
          }

          else
          {
            do
            {
              while (1)
              {
                v37 -= 32;
                v43 = *(v37 + 8) >> 1;
                v44 = v43 < v18;
                if (v43 == v18)
                {
                  v45 = *(v37 + 16);
                  v44 = v45 < v23;
                  if (v45 == v23)
                  {
                    break;
                  }
                }

                if (v44)
                {
                  goto LABEL_66;
                }
              }
            }

            while ((*(v37 + 24) & 1) == 0);
          }

LABEL_66:
          ;
        }

        while (v9 < v37);
      }

      if (&v9[-2] != a1)
      {
        v47 = v9[-1];
        *a1 = v9[-2];
        a1[1] = v47;
      }

      v9[-2].n128_u64[0] = v21;
      v9[-2].n128_u32[2] = v17;
      v9[-2].n128_u32[3] = v22;
      v9[-1].n128_u64[0] = v23;
      v9[-1].n128_u8[8] = v24;
      *(&v9[-1].n128_u32[2] + 1) = *v205;
      v9[-1].n128_u32[3] = *&v205[3];
      if (v25 < i)
      {
LABEL_94:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::EqualityDetectionHelper *,false>(a1, &v9[-2], a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v48 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::EqualityDetectionHelper *>(a1, v9 - 2);
        if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::EqualityDetectionHelper *>(v9, n128_u64))
        {
          n128_u64 = v9[-2].n128_u64;
          if (v48)
          {
            return;
          }

          goto LABEL_1;
        }

        if ((v48 & 1) == 0)
        {
          goto LABEL_94;
        }
      }
    }
  }

  v83 = v9 + 2;
  v85 = v9 == n128_u64 || v83 == n128_u64;
  if ((a4 & 1) == 0)
  {
    if (v85)
    {
      return;
    }

    while (1)
    {
      v188 = a1;
      a1 = v83;
      v189 = v188[2].n128_i32[2];
      v190 = v189 >> 1;
      v191 = v188->n128_i32[2] >> 1;
      if (v189 >> 1 == v191)
      {
        v192 = v188[3].n128_i64[0];
        v193 = v188[1].n128_i64[0];
        if (v192 == v193)
        {
          if (v188[3].n128_u8[8] != 1 || (v188[1].n128_u8[8] & 1) != 0)
          {
            goto LABEL_326;
          }
        }

        else if (v192 >= v193)
        {
          goto LABEL_326;
        }
      }

      else
      {
        if (v190 >= v191)
        {
          goto LABEL_326;
        }

        v192 = v188[3].n128_i64[0];
      }

      v194 = a1->n128_u64[0];
      v195 = v188[2].n128_i32[3];
      v196 = v188[3].n128_i8[8];
      *v215 = *(&v188[3].n128_u32[2] + 1);
      *&v215[3] = v188[3].n128_u32[3];
      if (v196)
      {
        do
        {
          while (1)
          {
            v197 = v188;
            v198 = v188[1];
            v188[2] = *v188;
            v188[3] = v198;
            v188 -= 2;
            v199 = v197[-2].n128_i32[2] >> 1;
            v200 = v190 < v199;
            if (v190 == v199)
            {
              v201 = v197[-1].n128_i64[0];
              v200 = v192 < v201;
              if (v192 == v201)
              {
                break;
              }
            }

            if (!v200)
            {
              goto LABEL_325;
            }
          }
        }

        while ((v197[-1].n128_u8[8] & 1) == 0);
      }

      else
      {
        do
        {
          while (1)
          {
            v197 = v188;
            v202 = v188[1];
            v188[2] = *v188;
            v188[3] = v202;
            v188 -= 2;
            v203 = v197[-2].n128_i32[2] >> 1;
            if (v190 == v203)
            {
              break;
            }

            if (v190 >= v203)
            {
              goto LABEL_325;
            }
          }
        }

        while (v192 < v197[-1].n128_u64[0]);
      }

LABEL_325:
      v197->n128_u64[0] = v194;
      v197->n128_u32[2] = v189;
      v197->n128_u32[3] = v195;
      v197[1].n128_u64[0] = v192;
      v197[1].n128_u8[8] = v196;
      *(&v197[1].n128_u32[2] + 1) = *v215;
      v197[1].n128_u32[3] = *&v215[3];
LABEL_326:
      v83 = a1 + 2;
      if (&a1[2] == n128_u64)
      {
        return;
      }
    }
  }

  if (v85)
  {
    return;
  }

  v86 = 0;
  v87 = v9;
  while (2)
  {
    v89 = v87;
    v87 = v83;
    v90 = v89[2].n128_i32[2];
    v91 = v90 >> 1;
    v92 = v89->n128_i32[2] >> 1;
    if (v90 >> 1 == v92)
    {
      v93 = v89[3].n128_i64[0];
      v94 = v89[1].n128_i64[0];
      if (v93 == v94)
      {
        if (v89[3].n128_u8[8] != 1 || (v89[1].n128_u8[8] & 1) != 0)
        {
          goto LABEL_197;
        }
      }

      else if (v93 >= v94)
      {
        goto LABEL_197;
      }
    }

    else
    {
      if (v91 >= v92)
      {
        goto LABEL_197;
      }

      v93 = v89[3].n128_i64[0];
    }

    v95 = v89[2].n128_u64[0];
    v96 = v89[2].n128_u32[3];
    v97 = v89[3].n128_u8[8];
    *v211 = *(&v89[3].n128_u32[2] + 1);
    *&v211[3] = v89[3].n128_u32[3];
    v98 = v89[1];
    *v87 = *v89;
    v87[1] = v98;
    v88 = v9;
    if (v89 == v9)
    {
      goto LABEL_196;
    }

    v99 = v86;
    v100 = v86;
    if (v97)
    {
      while (1)
      {
        v102 = (v9->n128_u64 + v100);
        v103 = *(&v9[-1] + v100 - 8) >> 1;
        if (v91 == v103)
        {
          v104 = *(v102 - 2);
          if (v93 == v104)
          {
            if (v9->n128_u8[v100 - 8])
            {
LABEL_221:
              v88 = v89;
              goto LABEL_196;
            }
          }

          else if (v93 >= v104)
          {
            v88 = (v9 + v100);
            goto LABEL_196;
          }
        }

        else if (v91 >= v103)
        {
          goto LABEL_221;
        }

        v89 -= 2;
        v101 = *(v102 - 1);
        *v102 = *(v102 - 2);
        v102[1] = v101;
        v100 -= 32;
        if (!v100)
        {
LABEL_195:
          v88 = v9;
          goto LABEL_196;
        }
      }
    }

    while (2)
    {
      v106 = (v9->n128_u64 + v99);
      v107 = *(&v9[-1] + v99 - 8) >> 1;
      if (v91 != v107)
      {
        if (v91 >= v107)
        {
          goto LABEL_221;
        }

        goto LABEL_218;
      }

      if (v93 < *(v106 - 2))
      {
LABEL_218:
        v89 -= 2;
        v105 = *(v106 - 1);
        *v106 = *(v106 - 2);
        v106[1] = v105;
        v99 -= 32;
        if (!v99)
        {
          goto LABEL_195;
        }

        continue;
      }

      break;
    }

    v88 = (v9 + v99);
LABEL_196:
    v88->n128_u64[0] = v95;
    v88->n128_u32[2] = v90;
    v88->n128_u32[3] = v96;
    v88[1].n128_u64[0] = v93;
    v88[1].n128_u8[8] = v97;
    *(&v88[1].n128_u32[2] + 1) = *v211;
    v88[1].n128_u32[3] = *&v211[3];
LABEL_197:
    v83 = v87 + 2;
    v86 += 32;
    if (&v87[2] != n128_u64)
    {
      continue;
    }

    break;
  }
}

__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::EqualityDetectionHelper *,0>(int *a1, int *a2, int *a3)
{
  v3 = a2[2] >> 1;
  v4 = a1[2] >> 1;
  v5 = v3 < v4;
  if (v3 == v4 && (v6 = *(a2 + 2), v7 = *(a1 + 2), v5 = v6 < v7, v6 == v7))
  {
    if (*(a2 + 24) == 1 && (a1[6] & 1) == 0)
    {
LABEL_5:
      v8 = a3[2] >> 1;
      v9 = v8 < v3;
      if (v8 == v3 && (v10 = *(a3 + 2), v11 = *(a2 + 2), v9 = v10 < v11, v10 == v11))
      {
        if (*(a3 + 24) == 1 && (a2[6] & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      else if (v9)
      {
LABEL_9:
        v13 = *a1;
        result = *(a1 + 1);
        v14 = *(a3 + 1);
        *a1 = *a3;
        *(a1 + 1) = v14;
        *a3 = v13;
        *(a3 + 1) = result;
        return result;
      }

      v26 = *a1;
      result = *(a1 + 1);
      v27 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v27;
      *a2 = v26;
      *(a2 + 1) = result;
      v28 = a3[2] >> 1;
      v29 = a2[2] >> 1;
      v30 = v28 < v29;
      if (v28 == v29 && (v31 = *(a3 + 2), v32 = *(a2 + 2), v30 = v31 < v32, v31 == v32))
      {
        if (*(a3 + 24) != 1 || (a2[6] & 1) != 0)
        {
          return result;
        }
      }

      else if (!v30)
      {
        return result;
      }

      v35 = *a2;
      result = *(a2 + 1);
      v36 = *(a3 + 1);
      *a2 = *a3;
      *(a2 + 1) = v36;
      *a3 = v35;
      *(a3 + 1) = result;
      return result;
    }
  }

  else if (v5)
  {
    goto LABEL_5;
  }

  v15 = a3[2] >> 1;
  v16 = v15 < v3;
  if (v15 != v3 || (v17 = *(a3 + 2), v18 = *(a2 + 2), v16 = v17 < v18, v17 != v18))
  {
    if (!v16)
    {
      return result;
    }

LABEL_18:
    v19 = *a2;
    result = *(a2 + 1);
    v20 = *(a3 + 1);
    *a2 = *a3;
    *(a2 + 1) = v20;
    *a3 = v19;
    *(a3 + 1) = result;
    v21 = a2[2] >> 1;
    v22 = a1[2] >> 1;
    v23 = v21 < v22;
    if (v21 == v22 && (v24 = *(a2 + 2), v25 = *(a1 + 2), v23 = v24 < v25, v24 == v25))
    {
      if (*(a2 + 24) != 1 || (a1[6] & 1) != 0)
      {
        return result;
      }
    }

    else if (!v23)
    {
      return result;
    }

    v33 = *a1;
    result = *(a1 + 1);
    v34 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v34;
    *a2 = v33;
    *(a2 + 1) = result;
    return result;
  }

  if (*(a3 + 24) == 1 && (a2[6] & 1) == 0)
  {
    goto LABEL_18;
  }

  return result;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::EqualityDetectionHelper *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4)
{
  result.n128_u64[0] = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::EqualityDetectionHelper *,0>(a1, a2, a3).n128_u64[0];
  v9 = a4->n128_i32[2] >> 1;
  v10 = a3->n128_i32[2] >> 1;
  v11 = v9 < v10;
  if (v9 != v10 || (v12 = a4[1].n128_i64[0], v13 = a3[1].n128_i64[0], v11 = v12 < v13, v12 != v13))
  {
    if (!v11)
    {
      return result;
    }

LABEL_8:
    v14 = *a3;
    result = a3[1];
    v15 = a4[1];
    *a3 = *a4;
    a3[1] = v15;
    *a4 = v14;
    a4[1] = result;
    v16 = a3->n128_i32[2] >> 1;
    v17 = a2->n128_i32[2] >> 1;
    v18 = v16 < v17;
    if (v16 == v17 && (v19 = a3[1].n128_i64[0], v20 = a2[1].n128_i64[0], v18 = v19 < v20, v19 == v20))
    {
      if (a3[1].n128_u8[8] != 1 || (a2[1].n128_u8[8] & 1) != 0)
      {
        return result;
      }
    }

    else if (!v18)
    {
      return result;
    }

    v21 = *a2;
    result = a2[1];
    v22 = a3[1];
    *a2 = *a3;
    a2[1] = v22;
    *a3 = v21;
    a3[1] = result;
    v23 = a2->n128_i32[2] >> 1;
    v24 = a1->n128_i32[2] >> 1;
    v25 = v23 < v24;
    if (v23 == v24 && (v26 = a2[1].n128_i64[0], v27 = a1[1].n128_i64[0], v25 = v26 < v27, v26 == v27))
    {
      if (a2[1].n128_u8[8] != 1 || (a1[1].n128_u8[8] & 1) != 0)
      {
        return result;
      }
    }

    else if (!v25)
    {
      return result;
    }

    v28 = *a1;
    result = a1[1];
    v29 = a2[1];
    *a1 = *a2;
    a1[1] = v29;
    *a2 = v28;
    a2[1] = result;
    return result;
  }

  if (a4[1].n128_u8[8] == 1 && (a3[1].n128_u8[8] & 1) == 0)
  {
    goto LABEL_8;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::EqualityDetectionHelper *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5)
{
  result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::EqualityDetectionHelper *,0>(a1, a2, a3, a4).n128_u64[0];
  v11 = a5->n128_i32[2] >> 1;
  v12 = a4->n128_i32[2] >> 1;
  v13 = v11 < v12;
  if (v11 != v12 || (v14 = a5[1].n128_i64[0], v15 = a4[1].n128_i64[0], v13 = v14 < v15, v14 != v15))
  {
    if (!v13)
    {
      return result;
    }

LABEL_8:
    v16 = *a4;
    result = a4[1];
    v17 = a5[1];
    *a4 = *a5;
    a4[1] = v17;
    *a5 = v16;
    a5[1] = result;
    v18 = a4->n128_i32[2] >> 1;
    v19 = a3->n128_i32[2] >> 1;
    v20 = v18 < v19;
    if (v18 == v19 && (v21 = a4[1].n128_i64[0], v22 = a3[1].n128_i64[0], v20 = v21 < v22, v21 == v22))
    {
      if (a4[1].n128_u8[8] != 1 || (a3[1].n128_u8[8] & 1) != 0)
      {
        return result;
      }
    }

    else if (!v20)
    {
      return result;
    }

    v23 = *a3;
    result = a3[1];
    v24 = a4[1];
    *a3 = *a4;
    a3[1] = v24;
    *a4 = v23;
    a4[1] = result;
    v25 = a3->n128_i32[2] >> 1;
    v26 = a2->n128_i32[2] >> 1;
    v27 = v25 < v26;
    if (v25 == v26 && (v28 = a3[1].n128_i64[0], v29 = a2[1].n128_i64[0], v27 = v28 < v29, v28 == v29))
    {
      if (a3[1].n128_u8[8] != 1 || (a2[1].n128_u8[8] & 1) != 0)
      {
        return result;
      }
    }

    else if (!v27)
    {
      return result;
    }

    v30 = *a2;
    result = a2[1];
    v31 = a3[1];
    *a2 = *a3;
    a2[1] = v31;
    *a3 = v30;
    a3[1] = result;
    v32 = a2->n128_i32[2] >> 1;
    v33 = a1->n128_i32[2] >> 1;
    v34 = v32 < v33;
    if (v32 == v33 && (v35 = a2[1].n128_i64[0], v36 = a1[1].n128_i64[0], v34 = v35 < v36, v35 == v36))
    {
      if (a2[1].n128_u8[8] != 1 || (a1[1].n128_u8[8] & 1) != 0)
      {
        return result;
      }
    }

    else if (!v34)
    {
      return result;
    }

    v37 = *a1;
    result = a1[1];
    v38 = a2[1];
    *a1 = *a2;
    a1[1] = v38;
    *a2 = v37;
    a2[1] = result;
    return result;
  }

  if (a5[1].n128_u8[8] == 1 && (a4[1].n128_u8[8] & 1) == 0)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::EqualityDetectionHelper *>(__n128 *a1, __n128 *a2)
{
  v2 = (a2 - a1) >> 5;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::EqualityDetectionHelper *,0>(a1, &a1[2], &a2[-2]);
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::EqualityDetectionHelper *,0>(a1, a1 + 2, a1 + 4, a2 - 2);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::EqualityDetectionHelper *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v4 = a2[-2].n128_i32[2] >> 1;
      v5 = a1->n128_i32[2] >> 1;
      v6 = v4 < v5;
      if (v4 == v5 && (v7 = a2[-1].n128_i64[0], v8 = a1[1].n128_i64[0], v6 = v7 < v8, v7 == v8))
      {
        if (a2[-1].n128_u8[8] != 1 || (a1[1].n128_u8[8] & 1) != 0)
        {
          return 1;
        }
      }

      else if (!v6)
      {
        return 1;
      }

      v37 = a2 - 2;
      v39 = *a1;
      v38 = a1[1];
      v40 = a2[-1];
      *a1 = a2[-2];
      a1[1] = v40;
      *v37 = v39;
      v37[1] = v38;
      return 1;
    }
  }

  v9 = a1 + 4;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::EqualityDetectionHelper *,0>(a1, &a1[2], &a1[4]);
  v13 = a1 + 6;
  if (&a1[6] == a2)
  {
    goto LABEL_48;
  }

  v12 = a2;
  v14 = 0;
  v15 = 0;
  while (2)
  {
    v17 = v13->n128_i32[2];
    v18 = v17 >> 1;
    v19 = v9->n128_i32[2] >> 1;
    if (v17 >> 1 == v19)
    {
      v20 = v13[1].n128_i64[0];
      v21 = v9[1].n128_i64[0];
      if (v20 == v21)
      {
        if (v13[1].n128_u8[8] != 1 || (v9[1].n128_u8[8] & 1) != 0)
        {
          goto LABEL_19;
        }
      }

      else if (v20 >= v21)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v18 >= v19)
      {
        goto LABEL_19;
      }

      v20 = v13[1].n128_i64[0];
    }

    v22 = v13->n128_u64[0];
    v23 = v13->n128_u32[3];
    v24 = v13[1].n128_u8[8];
    *v41 = *(&v13[1].n128_u32[2] + 1);
    *&v41[3] = v13[1].n128_u32[3];
    v25 = v9[1];
    v16 = a1;
    *v13 = *v9;
    v13[1] = v25;
    if (v9 == a1)
    {
      goto LABEL_18;
    }

    v26 = v14;
    v27 = v14;
    if (v24)
    {
      while (1)
      {
        v29 = a1 + v27;
        v30 = *(&a1[2].n128_i32[2] + v27) >> 1;
        if (v18 == v30)
        {
          v31 = *(v29 + 6);
          if (v20 == v31)
          {
            if (a1[3].n128_u8[v27 + 8])
            {
              goto LABEL_45;
            }
          }

          else if (v20 >= v31)
          {
LABEL_45:
            v16 = v9;
            goto LABEL_18;
          }
        }

        else if (v18 >= v30)
        {
          v35 = (a1 + v27);
          goto LABEL_46;
        }

        v9 -= 2;
        v28 = *(v29 + 3);
        *(v29 + 4) = *(v29 + 2);
        *(v29 + 5) = v28;
        v27 -= 32;
        if (v27 == -64)
        {
LABEL_17:
          v16 = a1;
          goto LABEL_18;
        }
      }
    }

    while (1)
    {
      v33 = a1 + v26;
      v34 = *(&a1[2].n128_i32[2] + v26) >> 1;
      if (v18 != v34)
      {
        break;
      }

      if (v20 >= *(v33 + 6))
      {
        goto LABEL_45;
      }

LABEL_42:
      v9 -= 2;
      v32 = *(v33 + 3);
      *(v33 + 4) = *(v33 + 2);
      *(v33 + 5) = v32;
      v26 -= 32;
      if (v26 == -64)
      {
        goto LABEL_17;
      }
    }

    if (v18 < v34)
    {
      goto LABEL_42;
    }

    v35 = (a1 + v26);
LABEL_46:
    v16 = v35 + 4;
LABEL_18:
    v16->n128_u64[0] = v22;
    v16->n128_u32[2] = v17;
    v16->n128_u32[3] = v23;
    v16[1].n128_u64[0] = v20;
    v16[1].n128_u8[8] = v24;
    *(&v16[1].n128_u32[2] + 1) = *v41;
    v16[1].n128_u32[3] = *&v41[3];
    if (++v15 == 8)
    {
      v36 = 0;
      v12 = &v13[2] == a2;
    }

    else
    {
LABEL_19:
      v9 = v13;
      v14 += 32;
      v13 += 2;
      if (v13 != a2)
      {
        continue;
      }

LABEL_48:
      v36 = 1;
    }

    return (v36 | v12) & 1;
  }
}

void std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::ValueLiteralPair::CompareByValue &,operations_research::sat::ValueLiteralPair*,false>(__int128 *a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 2;
  v9 = a2 - 4;
  v10 = a2 - 6;
  v11 = a1;
LABEL_2:
  v12 = 1 - a4;
  while (1)
  {
    a1 = v11;
    v13 = v12;
    v14 = (a2 - v11) >> 4;
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return;
      }

      if (v14 == 2)
      {
        v55 = a2 - 2;
        v56 = *(a2 - 2);
        if (v56 < *v11 || v56 == *v11 && *(a2 - 2) < *(v11 + 2))
        {
          v114 = *v11;
          v57 = *v55;
          *(v11 + 2) = *(a2 - 2);
          *v11 = v57;
          *v55 = v114.n128_u64[0];
          *(a2 - 2) = v114.n128_u32[2];
        }

        return;
      }

      goto LABEL_10;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::ValueLiteralPair::CompareByValue &,operations_research::sat::ValueLiteralPair*,0>(v11, v11 + 1, v11 + 2, (a2 - 2));
      return;
    }

    if (v14 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::ValueLiteralPair::CompareByValue &,operations_research::sat::ValueLiteralPair*,0>(v11, v11 + 1, v11 + 2, (v11 + 3));
      v61 = a2 - 2;
      v62 = *(a2 - 2);
      v63 = *(v11 + 6);
      if (v62 < v63 || v62 == v63 && *(a2 - 2) < *(v11 + 14))
      {
        v116 = v11[3];
        v64 = *v61;
        *(v11 + 14) = *(a2 - 2);
        *(v11 + 6) = v64;
        *v61 = v116;
        *(a2 - 2) = DWORD2(v116);
        v65 = *(v11 + 6);
        v66 = *(v11 + 4);
        if (v65 < v66 || v65 == v66 && *(v11 + 14) < *(v11 + 10))
        {
          v117 = v11[2];
          *(v11 + 4) = *(v11 + 6);
          *(v11 + 10) = *(v11 + 14);
          *(v11 + 6) = v117;
          *(v11 + 14) = DWORD2(v117);
          v67 = *(v11 + 4);
          v68 = *(v11 + 2);
          if (v67 < v68 || v67 == v68 && *(v11 + 10) < *(v11 + 6))
          {
            v118 = v11[1];
            *(v11 + 2) = *(v11 + 4);
            *(v11 + 6) = *(v11 + 10);
            *(v11 + 4) = v118;
            *(v11 + 10) = DWORD2(v118);
            v69 = *(v11 + 2);
            if (v69 < *v11 || v69 == *v11 && *(v11 + 6) < *(v11 + 2))
            {
              v119 = *v11;
              *v11 = *(v11 + 2);
              *(v11 + 2) = *(v11 + 6);
              *(v11 + 2) = v119.n128_u64[0];
              *(v11 + 6) = v119.n128_u32[2];
            }
          }
        }
      }

      return;
    }

LABEL_10:
    if (v14 <= 23)
    {
      v70 = (v11 + 1);
      v72 = v11 == a2 || v70 == a2;
      if (a5)
      {
        if (v72)
        {
          return;
        }

        v73 = 0;
        v74 = v11;
        while (2)
        {
          v76 = v74;
          v74 = v70;
          v77 = *(v76 + 2);
          if (v77 < *v76)
          {
            v78 = *(v76 + 6);
            goto LABEL_165;
          }

          if (v77 == *v76)
          {
            v78 = *(v76 + 6);
            if (v78 < *(v76 + 2))
            {
LABEL_165:
              *v74 = *v76;
              *(v74 + 2) = *(v76 + 2);
              v75 = v11;
              if (v76 != v11)
              {
                v79 = v73;
                while (1)
                {
                  v80 = v11 + v79;
                  v81 = *(v11 + v79 - 16);
                  if (v77 >= v81)
                  {
                    if (v77 != v81)
                    {
                      v75 = (v11 + v79);
                      goto LABEL_161;
                    }

                    if (v78 >= *(v11 + v79 - 8))
                    {
                      break;
                    }
                  }

                  --v76;
                  *v80 = *(v11 + v79 - 16);
                  *(v80 + 2) = *(v11 + v79 - 8);
                  v79 -= 16;
                  if (!v79)
                  {
                    v75 = v11;
                    goto LABEL_161;
                  }
                }

                v75 = v76;
              }

LABEL_161:
              *v75 = v77;
              *(v75 + 2) = v78;
            }
          }

          v70 = (v74 + 1);
          v73 += 16;
          if (v74 + 1 == a2)
          {
            return;
          }

          continue;
        }
      }

      if (v72)
      {
        return;
      }

      while (2)
      {
        v84 = a1;
        a1 = v70;
        v85 = *(v84 + 2);
        if (v85 >= *v84)
        {
          if (v85 == *v84)
          {
            v86 = *(v84 + 6);
            if (v86 < *(v84 + 2))
            {
              goto LABEL_197;
            }
          }
        }

        else
        {
          v86 = *(v84 + 6);
          do
          {
            do
            {
LABEL_197:
              v87 = v84;
              *(v84 + 2) = *v84;
              *(v84 + 6) = *(v84 + 2);
              v88 = *(v84-- - 2);
              v89 = v85 == v88;
            }

            while (v85 < v88);
          }

          while (v89 && v86 < *(v87 - 2));
          *v87 = v85;
          *(v87 + 2) = v86;
        }

        v70 = (a1 + 1);
        if (a1 + 1 == a2)
        {
          return;
        }

        continue;
      }
    }

    if (v12 == 1)
    {
      if (v11 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::ValueLiteralPair::CompareByValue &,operations_research::sat::ValueLiteralPair*,operations_research::sat::ValueLiteralPair*>(v11, a2, a2, a3);
      }

      return;
    }

    v15 = &v11[v14 >> 1];
    v16 = v15;
    if (v14 >= 0x81)
    {
      v17 = v15->n128_u64[0];
      if (v15->n128_u64[0] < *v11 || v15->n128_u64[0] == *v11 && v15->n128_u32[2] < *(v11 + 2))
      {
        if (*v8 < v17 || *v8 == v17 && *(a2 - 2) < v15->n128_u32[2])
        {
          v93 = *v11;
          v18 = *v8;
          *(v11 + 2) = *(a2 - 2);
          *v11 = v18;
        }

        else
        {
          v99 = *v11;
          v25 = v15->n128_u64[0];
          *(v11 + 2) = v15->n128_u32[2];
          *v11 = v25;
          v15->n128_u32[2] = v99.n128_u32[2];
          v15->n128_u64[0] = v99.n128_u64[0];
          if (*v8 >= v15->n128_u64[0] && (*v8 != v15->n128_u64[0] || *(a2 - 2) >= v15->n128_u32[2]))
          {
            goto LABEL_34;
          }

          v93 = *v15;
          v26 = *v8;
          v15->n128_u32[2] = *(a2 - 2);
          v15->n128_u64[0] = v26;
        }

        *v8 = v93.n128_u64[0];
        *(a2 - 2) = v93.n128_u32[2];
        goto LABEL_34;
      }

      if (*v8 < v17 || *v8 == v17 && *(a2 - 2) < v15->n128_u32[2])
      {
        v95 = *v15;
        v21 = *v8;
        v15->n128_u32[2] = *(a2 - 2);
        v15->n128_u64[0] = v21;
        *v8 = v95.n128_u64[0];
        *(a2 - 2) = v95.n128_u32[2];
        if (v15->n128_u64[0] < *v11 || v15->n128_u64[0] == *v11 && v15->n128_u32[2] < *(v11 + 2))
        {
          v96 = *v11;
          v22 = v15->n128_u64[0];
          *(v11 + 2) = v15->n128_u32[2];
          *v11 = v22;
          v15->n128_u32[2] = v96.n128_u32[2];
          v15->n128_u64[0] = v96.n128_u64[0];
        }
      }

LABEL_34:
      v27 = (v11 + 1);
      v28 = *(v11 + 2);
      v29 = v15 - 1;
      v30 = v15[-1].n128_i64[0];
      if (v30 < v28 || v30 == v28 && v15[-1].n128_u32[2] < *(v11 + 6))
      {
        if (*v9 < v30 || *v9 == v30 && *(a2 - 6) < v15[-1].n128_u32[2])
        {
          v100 = *v27;
          v31 = *v9;
          *(v11 + 6) = *(a2 - 6);
          v27->n128_u64[0] = v31;
        }

        else
        {
          v104 = *v27;
          v36 = v29->n128_u64[0];
          *(v11 + 6) = v15[-1].n128_u32[2];
          v27->n128_u64[0] = v36;
          v15[-1].n128_u32[2] = v104.n128_u32[2];
          v29->n128_u64[0] = v104.n128_u64[0];
          if (*v9 >= v29->n128_u64[0] && (*v9 != v29->n128_u64[0] || *(a2 - 6) >= v15[-1].n128_u32[2]))
          {
            goto LABEL_52;
          }

          v100 = *v29;
          v37 = *v9;
          v15[-1].n128_u32[2] = *(a2 - 6);
          v29->n128_u64[0] = v37;
        }

        *v9 = v100.n128_u64[0];
        *(a2 - 6) = v100.n128_u32[2];
        goto LABEL_52;
      }

      if (*v9 < v30 || *v9 == v30 && *(a2 - 6) < v15[-1].n128_u32[2])
      {
        v101 = *v29;
        v32 = *v9;
        v15[-1].n128_u32[2] = *(a2 - 6);
        v29->n128_u64[0] = v32;
        *v9 = v101.n128_u64[0];
        *(a2 - 6) = v101.n128_u32[2];
        if (v29->n128_u64[0] < v27->n128_u64[0] || v29->n128_u64[0] == v27->n128_u64[0] && v15[-1].n128_u32[2] < *(v11 + 6))
        {
          v102 = *v27;
          v33 = v29->n128_u64[0];
          *(v11 + 6) = v15[-1].n128_u32[2];
          v27->n128_u64[0] = v33;
          v15[-1].n128_u32[2] = v102.n128_u32[2];
          v29->n128_u64[0] = v102.n128_u64[0];
        }
      }

LABEL_52:
      v38 = (v11 + 2);
      v39 = *(v11 + 4);
      v42 = v15[1].n128_i64[0];
      v40 = v15 + 1;
      v41 = v42;
      v43 = v42 == v39;
      if (v42 < v39 || v43 && v40->n128_u32[2] < *(v11 + 10))
      {
        if (*v10 < v41 || *v10 == v41 && *(a2 - 10) < v40->n128_u32[2])
        {
          v105 = *v38;
          v44 = *v10;
          *(v11 + 10) = *(a2 - 10);
          v38->n128_u64[0] = v44;
        }

        else
        {
          v108 = *v38;
          v47 = v40->n128_u64[0];
          *(v11 + 10) = v40->n128_u32[2];
          v38->n128_u64[0] = v47;
          v40->n128_u32[2] = v108.n128_u32[2];
          v40->n128_u64[0] = v108.n128_u64[0];
          if (*v10 >= v40->n128_u64[0] && (*v10 != v40->n128_u64[0] || *(a2 - 10) >= v40->n128_u32[2]))
          {
            goto LABEL_66;
          }

          v105 = *v40;
          v48 = *v10;
          v40->n128_u32[2] = *(a2 - 10);
          v40->n128_u64[0] = v48;
        }

        *v10 = v105.n128_u64[0];
        *(a2 - 10) = v105.n128_u32[2];
        goto LABEL_66;
      }

      if (*v10 < v41 || *v10 == v41 && *(a2 - 10) < v40->n128_u32[2])
      {
        v106 = *v40;
        v45 = *v10;
        v40->n128_u32[2] = *(a2 - 10);
        v40->n128_u64[0] = v45;
        *v10 = v106.n128_u64[0];
        *(a2 - 10) = v106.n128_u32[2];
        if (v40->n128_u64[0] < v38->n128_u64[0] || v40->n128_u64[0] == v38->n128_u64[0] && v40->n128_u32[2] < *(v11 + 10))
        {
          v107 = *v38;
          v46 = v40->n128_u64[0];
          *(v11 + 10) = v40->n128_u32[2];
          v38->n128_u64[0] = v46;
          v40->n128_u32[2] = v107.n128_u32[2];
          v40->n128_u64[0] = v107.n128_u64[0];
        }
      }

LABEL_66:
      v49 = v16->n128_u64[0];
      if (v16->n128_u64[0] >= v29->n128_u64[0] && (v16->n128_u64[0] != v29->n128_u64[0] || v16->n128_u32[2] >= v29->n128_u32[2]))
      {
        if (v40->n128_u64[0] < v49 || v40->n128_u64[0] == v49 && v40->n128_u32[2] < v16->n128_u32[2])
        {
          v110 = *v16;
          v16->n128_u64[0] = v40->n128_u64[0];
          v16->n128_u32[2] = v40->n128_u32[2];
          v40->n128_u64[0] = v110.n128_u64[0];
          v40->n128_u32[2] = v110.n128_u32[2];
          if (v16->n128_u64[0] < v29->n128_u64[0] || v16->n128_u64[0] == v29->n128_u64[0] && v16->n128_u32[2] < v29->n128_u32[2])
          {
            v111 = *v29;
            v29->n128_u64[0] = v16->n128_u64[0];
            v29->n128_u32[2] = v16->n128_u32[2];
            v16->n128_u64[0] = v111.n128_u64[0];
            v16->n128_u32[2] = v111.n128_u32[2];
          }
        }

        goto LABEL_79;
      }

      if (v40->n128_u64[0] < v49 || v40->n128_u64[0] == v49 && v40->n128_u32[2] < v16->n128_u32[2])
      {
        v109 = *v29;
        v29->n128_u64[0] = v40->n128_u64[0];
        v29->n128_u32[2] = v40->n128_u32[2];
      }

      else
      {
        v112 = *v29;
        v29->n128_u64[0] = v16->n128_u64[0];
        v29->n128_u32[2] = v16->n128_u32[2];
        v16->n128_u64[0] = v112.n128_u64[0];
        v16->n128_u32[2] = v112.n128_u32[2];
        if (v40->n128_u64[0] >= v112.n128_i64[0] && (v40->n128_u64[0] != v112.n128_u64[0] || v40->n128_u32[2] >= v16->n128_u32[2]))
        {
          goto LABEL_79;
        }

        v109 = *v16;
        v16->n128_u64[0] = v40->n128_u64[0];
        v16->n128_u32[2] = v40->n128_u32[2];
      }

      v40->n128_u64[0] = v109.n128_u64[0];
      v40->n128_u32[2] = v109.n128_u32[2];
LABEL_79:
      v113 = *v11;
      v50 = v16->n128_u64[0];
      *(v11 + 2) = v16->n128_u32[2];
      *v11 = v50;
      v16->n128_u32[2] = v113.n128_u32[2];
      v16->n128_u64[0] = v113.n128_u64[0];
      goto LABEL_80;
    }

    v19 = *v11;
    if (*v11 < v16->n128_u64[0] || *v11 == v16->n128_u64[0] && *(v11 + 2) < v16->n128_u32[2])
    {
      if (*v8 < v19 || *v8 == v19 && *(a2 - 2) < *(v11 + 2))
      {
        v94 = *v16;
        v20 = *v8;
        v16->n128_u32[2] = *(a2 - 2);
        v16->n128_u64[0] = v20;
LABEL_46:
        *v8 = v94.n128_u64[0];
        *(a2 - 2) = v94.n128_u32[2];
        goto LABEL_80;
      }

      v103 = *v16;
      v34 = *v11;
      v16->n128_u32[2] = *(v11 + 2);
      v16->n128_u64[0] = v34;
      *(v11 + 2) = v103.n128_u32[2];
      *v11 = v103.n128_u64[0];
      if (*v8 < *v11 || *v8 == *v11 && *(a2 - 2) < *(v11 + 2))
      {
        v94 = *v11;
        v35 = *v8;
        *(v11 + 2) = *(a2 - 2);
        *v11 = v35;
        goto LABEL_46;
      }
    }

    else if (*v8 < v19 || *v8 == v19 && *(a2 - 2) < *(v11 + 2))
    {
      v97 = *v11;
      v23 = *v8;
      *(v11 + 2) = *(a2 - 2);
      *v11 = v23;
      *v8 = v97.n128_u64[0];
      *(a2 - 2) = v97.n128_u32[2];
      if (*v11 < v16->n128_u64[0] || *v11 == v16->n128_u64[0] && *(v11 + 2) < v16->n128_u32[2])
      {
        v98 = *v16;
        v24 = *v11;
        v16->n128_u32[2] = *(v11 + 2);
        v16->n128_u64[0] = v24;
        *(v11 + 2) = v98.n128_u32[2];
        *v11 = v98.n128_u64[0];
      }
    }

LABEL_80:
    if ((a5 & 1) == 0)
    {
      v51 = *(v11 - 2);
      if (v51 >= *v11 && (v51 != *v11 || *(v11 - 2) >= *(v11 + 2)))
      {
        v11 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::ValueLiteralPair *,operations_research::sat::ValueLiteralPair::CompareByValue &>(v11, a2);
        goto LABEL_135;
      }
    }

    v52 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::ValueLiteralPair *,operations_research::sat::ValueLiteralPair::CompareByValue &>(v11, a2);
    if ((v53 & 1) == 0)
    {
      goto LABEL_133;
    }

    v54 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::ValueLiteralPair::CompareByValue &,operations_research::sat::ValueLiteralPair*>(v11, v52);
    v11 = (v52 + 16);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::ValueLiteralPair::CompareByValue &,operations_research::sat::ValueLiteralPair*>(v52 + 16, a2))
    {
      a4 = -v13;
      a2 = v52;
      if (v54)
      {
        return;
      }

      goto LABEL_1;
    }

    v12 = v13 + 1;
    if (!v54)
    {
LABEL_133:
      std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::ValueLiteralPair::CompareByValue &,operations_research::sat::ValueLiteralPair*,false>(a1, v52, a3, -v13, a5 & 1);
      v11 = (v52 + 16);
LABEL_135:
      a5 = 0;
      a4 = -v13;
      goto LABEL_2;
    }
  }

  v58 = (v11 + 1);
  v59 = *(v11 + 2);
  if (v59 < *v11 || v59 == *v11 && *(v11 + 6) < *(v11 + 2))
  {
    if (*v8 < v59 || *v8 == v59 && *(a2 - 2) < *(v11 + 6))
    {
      v115 = *v11;
      v60 = *v8;
      *(v11 + 2) = *(a2 - 2);
      *v11 = v60;
    }

    else
    {
      v122 = *v11;
      *v11 = *v58;
      *(v11 + 2) = *(v11 + 6);
      *v58 = v122.n128_u64[0];
      *(v11 + 6) = v122.n128_u32[2];
      v90 = *(v11 + 2);
      if (*v8 >= v90 && (*v8 != v90 || *(a2 - 2) >= *(v11 + 6)))
      {
        return;
      }

      v115 = *v58;
      v91 = *v8;
      *(v11 + 6) = *(a2 - 2);
      *v58 = v91;
    }

    *v8 = v115.n128_u64[0];
    *(a2 - 2) = v115.n128_u32[2];
    return;
  }

  if (*v8 < v59 || *v8 == v59 && *(a2 - 2) < *(v11 + 6))
  {
    v120 = *v58;
    v82 = *v8;
    *(v11 + 6) = *(a2 - 2);
    *v58 = v82;
    *v8 = v120.n128_u64[0];
    *(a2 - 2) = v120.n128_u32[2];
    v83 = *(v11 + 2);
    if (v83 < *v11 || v83 == *v11 && *(v11 + 6) < *(v11 + 2))
    {
      v121 = *v11;
      *v11 = *v58;
      *(v11 + 2) = *(v11 + 6);
      *v58 = v121.n128_u64[0];
      *(v11 + 6) = v121.n128_u32[2];
    }
  }
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::ValueLiteralPair::CompareByValue &,operations_research::sat::ValueLiteralPair*,0>(__n128 *a1, __n128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a2->n128_u64[0];
  if (a2->n128_u64[0] < a1->n128_u64[0] || a2->n128_u64[0] == a1->n128_u64[0] && a2->n128_u32[2] < a1->n128_u32[2])
  {
    if (*a3 < v4 || *a3 == v4 && *(a3 + 2) < a2->n128_u32[2])
    {
      result = *a1;
      v14 = *a1;
      v6 = *(a3 + 2);
      a1->n128_u64[0] = *a3;
      a1->n128_u32[2] = v6;
    }

    else
    {
      result = *a1;
      v17 = *a1;
      v9 = a2->n128_u32[2];
      a1->n128_u64[0] = a2->n128_u64[0];
      a1->n128_u32[2] = v9;
      a2->n128_u64[0] = v17.n128_u64[0];
      a2->n128_u32[2] = v17.n128_u32[2];
      if (*a3 >= a2->n128_u64[0] && (*a3 != a2->n128_u64[0] || *(a3 + 2) >= a2->n128_u32[2]))
      {
        goto LABEL_14;
      }

      result = *a2;
      v14 = *a2;
      v10 = *(a3 + 2);
      a2->n128_u64[0] = *a3;
      a2->n128_u32[2] = v10;
    }

    *a3 = v14.n128_u64[0];
    *(a3 + 2) = v14.n128_u32[2];
  }

  else if (*a3 < v4 || *a3 == v4 && *(a3 + 2) < a2->n128_u32[2])
  {
    result = *a2;
    v15 = *a2;
    v7 = *(a3 + 2);
    a2->n128_u64[0] = *a3;
    a2->n128_u32[2] = v7;
    *a3 = v15.n128_u64[0];
    *(a3 + 2) = v15.n128_u32[2];
    if (a2->n128_u64[0] < a1->n128_u64[0] || a2->n128_u64[0] == a1->n128_u64[0] && a2->n128_u32[2] < a1->n128_u32[2])
    {
      result = *a1;
      v16 = *a1;
      v8 = a2->n128_u32[2];
      a1->n128_u64[0] = a2->n128_u64[0];
      a1->n128_u32[2] = v8;
      a2->n128_u64[0] = v16.n128_u64[0];
      a2->n128_u32[2] = v16.n128_u32[2];
    }
  }

LABEL_14:
  if (*a4 < *a3 || *a4 == *a3 && *(a4 + 8) < *(a3 + 2))
  {
    result = *a3;
    v18 = *a3;
    v11 = *(a4 + 8);
    *a3 = *a4;
    *(a3 + 2) = v11;
    *a4 = v18;
    *(a4 + 8) = DWORD2(v18);
    if (*a3 < a2->n128_u64[0] || *a3 == a2->n128_u64[0] && *(a3 + 2) < a2->n128_u32[2])
    {
      result = *a2;
      v19 = *a2;
      v12 = *(a3 + 2);
      a2->n128_u64[0] = *a3;
      a2->n128_u32[2] = v12;
      *a3 = v19.n128_u64[0];
      *(a3 + 2) = v19.n128_u32[2];
      if (a2->n128_u64[0] < a1->n128_u64[0] || a2->n128_u64[0] == a1->n128_u64[0] && a2->n128_u32[2] < a1->n128_u32[2])
      {
        result = *a1;
        v20 = *a1;
        v13 = a2->n128_u32[2];
        a1->n128_u64[0] = a2->n128_u64[0];
        a1->n128_u32[2] = v13;
        a2->n128_u64[0] = v20.n128_u64[0];
        a2->n128_u32[2] = v20.n128_u32[2];
      }
    }
  }

  return result;
}

__int128 *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::ValueLiteralPair *,operations_research::sat::ValueLiteralPair::CompareByValue &>(__int128 *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a2 - 2);
  if (*a1 < v4 || *a1 == v4 && v3 < *(a2 - 2))
  {
    i = a1;
    do
    {
      v7 = *(i++ + 2);
      v6 = v7;
    }

    while (v2 >= v7 && (v2 != v6 || v3 >= *(i + 2)));
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (--a2; v2 < v4 || v2 == v4 && v3 < *(a2 + 2); --a2)
    {
      v8 = *(a2 - 2);
      v4 = v8;
    }
  }

  while (i < a2)
  {
    v16 = *i;
    v9 = *a2;
    *(i + 2) = *(a2 + 2);
    *i = v9;
    *(a2 + 2) = DWORD2(v16);
    *a2 = v16;
    do
    {
      v11 = *(i++ + 2);
      v10 = v11;
    }

    while (v2 >= v11 && (v2 != v10 || v3 >= *(i + 2)));
    do
    {
      do
      {
        v12 = *(a2-- - 2);
        v13 = v2 == v12;
      }

      while (v2 < v12);
    }

    while (v13 && v3 < *(a2 + 2));
  }

  if (i - 1 != a1)
  {
    v14 = *(i - 2);
    *(a1 + 2) = *(i - 2);
    *a1 = v14;
  }

  *(i - 2) = v2;
  *(i - 2) = v3;
  return i;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::ValueLiteralPair *,operations_research::sat::ValueLiteralPair::CompareByValue &>(uint64_t *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 2);
  while (1)
  {
    v5 = a1[v2 + 2];
    if (v5 >= v3 && (v5 != v3 || SLODWORD(a1[v2 + 3]) >= v4))
    {
      break;
    }

    v2 += 2;
  }

  v6 = &a1[v2 + 2];
  if (v2 * 8)
  {
    do
    {
      v8 = *(a2 - 16);
      a2 -= 16;
      v7 = v8;
    }

    while (v8 >= v3 && (v7 != v3 || *(a2 + 8) >= v4));
  }

  else
  {
LABEL_19:
    if (v6 < a2)
    {
      do
      {
        v10 = *(a2 - 16);
        a2 -= 16;
        v9 = v10;
        if (v10 < v3)
        {
          break;
        }

        if (v9 != v3)
        {
          goto LABEL_19;
        }
      }

      while (*(a2 + 8) >= v4 && v6 < a2);
    }
  }

  v12 = v6;
  if (v6 < a2)
  {
    v13 = a2;
    do
    {
      v21 = *v12;
      v14 = *v13;
      *(v12 + 8) = *(v13 + 8);
      *v12 = v14;
      *(v13 + 8) = DWORD2(v21);
      *v13 = v21;
      do
      {
        do
        {
          v15 = *(v12 + 16);
          v12 += 16;
          v16 = v15 == v3;
        }

        while (v15 < v3);
      }

      while (v16 && *(v12 + 8) < v4);
      do
      {
        v18 = *(v13 - 16);
        v13 -= 16;
        v17 = v18;
      }

      while (v18 >= v3 && (v17 != v3 || *(v13 + 8) >= v4));
    }

    while (v12 < v13);
  }

  if ((v12 - 16) != a1)
  {
    v19 = *(v12 - 16);
    *(a1 + 2) = *(v12 - 8);
    *a1 = v19;
  }

  *(v12 - 16) = v3;
  *(v12 - 8) = v4;
  return v12 - 16;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::ValueLiteralPair::CompareByValue &,operations_research::sat::ValueLiteralPair*>(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 <= 2)
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v15 = (a2 - 16);
      v16 = *(a2 - 16);
      if (v16 < *a1)
      {
LABEL_14:
        v43 = *a1;
        v17 = *(a2 - 8);
        *a1 = v15->n128_u64[0];
LABEL_15:
        *(a1 + 8) = v17;
        v15->n128_u64[0] = v43.n128_u64[0];
        v15->n128_u32[2] = v43.n128_u32[2];
        return 1;
      }

      if (v16 == *a1)
      {
        if (*(a2 - 8) >= *(a1 + 8))
        {
          return 1;
        }

        goto LABEL_14;
      }

      return 1;
    }

LABEL_19:
    v21 = a1 + 32;
    v22 = *a1;
    v23 = (a1 + 16);
    v24 = *(a1 + 16);
    if (v24 >= *a1 && (v24 != *a1 || *(a1 + 24) >= *(a1 + 8)))
    {
      if (*v21 < v24 || *v21 == v24 && *(a1 + 40) < *(a1 + 24))
      {
        v47 = *v23;
        v23->n128_u64[0] = *v21;
        *(a1 + 24) = *(a1 + 40);
        *v21 = v47.n128_u64[0];
        *(a1 + 40) = v47.n128_u32[2];
        if (v23->n128_u64[0] < v22 || v23->n128_u64[0] == v22 && *(a1 + 24) < *(a1 + 8))
        {
          v48 = *a1;
          *a1 = v23->n128_u64[0];
          *(a1 + 8) = *(a1 + 24);
          v23->n128_u64[0] = v48.n128_u64[0];
          *(a1 + 24) = v48.n128_u32[2];
        }
      }

      goto LABEL_49;
    }

    v25 = *v21;
    if (*v21 < v24 || *v21 == v24 && *(a1 + 40) < *(a1 + 24))
    {
      v45 = *a1;
      *a1 = *v21;
      *(a1 + 8) = *(a1 + 40);
    }

    else
    {
      v50 = *a1;
      *a1 = v23->n128_u64[0];
      *(a1 + 8) = *(a1 + 24);
      v23->n128_u64[0] = v50.n128_u64[0];
      *(a1 + 24) = v50.n128_u32[2];
      v30 = *(a1 + 16);
      if (v25 >= v30 && (v25 != v30 || *(a1 + 40) >= *(a1 + 24)))
      {
        goto LABEL_49;
      }

      v45 = *v23;
      v23->n128_u64[0] = *v21;
      *(a1 + 24) = *(a1 + 40);
    }

    *v21 = v45.n128_u64[0];
    *(a1 + 40) = v45.n128_u32[2];
LABEL_49:
    v31 = a1 + 48;
    if (a1 + 48 == a2)
    {
      return 1;
    }

    v32 = 0;
    v33 = 0;
    while (1)
    {
      v35 = *v31;
      if (*v31 >= *v21)
      {
        if (*v31 != *v21)
        {
          goto LABEL_53;
        }

        v36 = *(v31 + 8);
        if (v36 >= *(v21 + 8))
        {
          goto LABEL_53;
        }
      }

      else
      {
        v36 = *(v31 + 8);
      }

      *v31 = *v21;
      *(v31 + 8) = *(v21 + 8);
      v34 = a1;
      if (v21 != a1)
      {
        v37 = v32;
        while (1)
        {
          v38 = *(a1 + v37 + 16);
          if (v35 >= v38)
          {
            if (v35 != v38)
            {
              v34 = v21;
              goto LABEL_52;
            }

            if (v36 >= *(a1 + v37 + 24))
            {
              break;
            }
          }

          v21 -= 16;
          *(a1 + v37 + 32) = *(a1 + v37 + 16);
          *(a1 + v37 + 40) = *(a1 + v37 + 24);
          v37 -= 16;
          if (v37 == -32)
          {
            v34 = a1;
            goto LABEL_52;
          }
        }

        v34 = a1 + v37 + 32;
      }

LABEL_52:
      *v34 = v35;
      *(v34 + 8) = v36;
      if (++v33 == 8)
      {
        return v31 + 16 == a2;
      }

LABEL_53:
      v21 = v31;
      v32 += 16;
      v31 += 16;
      if (v31 == a2)
      {
        return 1;
      }
    }
  }

  if (v2 == 3)
  {
    v15 = (a1 + 16);
    v18 = *(a1 + 16);
    v19 = (a2 - 16);
    if (v18 < *a1 || v18 == *a1 && *(a1 + 24) < *(a1 + 8))
    {
      if (*v19 < v18 || *v19 == v18 && *(a2 - 8) < *(a1 + 24))
      {
        v44 = *a1;
        v20 = *(a2 - 8);
        *a1 = *v19;
        *(a1 + 8) = v20;
      }

      else
      {
        v49 = *a1;
        *a1 = v15->n128_u64[0];
        *(a1 + 8) = *(a1 + 24);
        v15->n128_u64[0] = v49.n128_u64[0];
        *(a1 + 24) = v49.n128_u32[2];
        v28 = *(a1 + 16);
        if (*v19 >= v28)
        {
          if (*v19 != v28)
          {
            return 1;
          }

          if (*(a2 - 8) >= *(a1 + 24))
          {
            return 1;
          }
        }

        v44 = *v15;
        v29 = *(a2 - 8);
        v15->n128_u64[0] = *v19;
        *(a1 + 24) = v29;
      }

      *v19 = v44.n128_u64[0];
      *(a2 - 8) = v44.n128_u32[2];
      return 1;
    }

    if (*v19 >= v18)
    {
      if (*v19 != v18)
      {
        return 1;
      }

      if (*(a2 - 8) >= *(a1 + 24))
      {
        return 1;
      }
    }

    v46 = *v15;
    v26 = *(a2 - 8);
    v15->n128_u64[0] = *v19;
    *(a1 + 24) = v26;
    *v19 = v46.n128_u64[0];
    *(a2 - 8) = v46.n128_u32[2];
    v27 = *(a1 + 16);
    if (v27 >= *a1)
    {
      if (v27 != *a1)
      {
        return 1;
      }

      if (*(a1 + 24) >= *(a1 + 8))
      {
        return 1;
      }
    }

    v43 = *a1;
    *a1 = v15->n128_u64[0];
    v17 = *(a1 + 24);
    goto LABEL_15;
  }

  if (v2 == 4)
  {
    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::ValueLiteralPair::CompareByValue &,operations_research::sat::ValueLiteralPair*,0>(a1, (a1 + 16), (a1 + 32), a2 - 16);
    return 1;
  }

  if (v2 != 5)
  {
    goto LABEL_19;
  }

  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::ValueLiteralPair::CompareByValue &,operations_research::sat::ValueLiteralPair*,0>(a1, (a1 + 16), (a1 + 32), a1 + 48);
  v6 = (a2 - 16);
  v7 = *(a2 - 16);
  v8 = *(a1 + 48);
  if (v7 >= v8)
  {
    if (v7 != v8)
    {
      return 1;
    }

    if (*(a2 - 8) >= *(a1 + 56))
    {
      return 1;
    }
  }

  v39 = *(a1 + 48);
  v9 = *(a2 - 8);
  *(a1 + 48) = *v6;
  *(a1 + 56) = v9;
  *v6 = v39;
  *(a2 - 8) = DWORD2(v39);
  v10 = *(a1 + 48);
  v11 = *(a1 + 32);
  if (v10 >= v11)
  {
    if (v10 != v11)
    {
      return 1;
    }

    if (*(a1 + 56) >= *(a1 + 40))
    {
      return 1;
    }
  }

  v40 = *(a1 + 32);
  *(a1 + 32) = *(a1 + 48);
  *(a1 + 40) = *(a1 + 56);
  *(a1 + 48) = v40;
  *(a1 + 56) = DWORD2(v40);
  v12 = *(a1 + 32);
  v13 = *(a1 + 16);
  if (v12 < v13)
  {
LABEL_10:
    v41 = *(a1 + 16);
    *(a1 + 16) = *(a1 + 32);
    *(a1 + 24) = *(a1 + 40);
    *(a1 + 32) = v41;
    *(a1 + 40) = DWORD2(v41);
    v14 = *(a1 + 16);
    if (v14 < *a1 || v14 == *a1 && *(a1 + 24) < *(a1 + 8))
    {
      v42 = *a1;
      *a1 = *(a1 + 16);
      *(a1 + 8) = *(a1 + 24);
      *(a1 + 16) = v42.n128_u64[0];
      *(a1 + 24) = v42.n128_u32[2];
      return 1;
    }

    return 1;
  }

  if (v12 == v13)
  {
    if (*(a1 + 40) >= *(a1 + 24))
    {
      return 1;
    }

    goto LABEL_10;
  }

  return 1;
}

__int128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::ValueLiteralPair::CompareByValue &,operations_research::sat::ValueLiteralPair*,operations_research::sat::ValueLiteralPair*>(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 16 * v9);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::ValueLiteralPair::CompareByValue &,operations_research::sat::ValueLiteralPair*>(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (*v12 < *a1 || *v12 == *a1 && *(v12 + 2) < *(a1 + 8))
        {
          v36 = *v12;
          v13 = *(a1 + 8);
          *v12 = *a1;
          *(v12 + 2) = v13;
          *a1 = v36;
          *(a1 + 8) = DWORD2(v36);
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::ValueLiteralPair::CompareByValue &,operations_research::sat::ValueLiteralPair*>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 < 2)
    {
      return v12;
    }

    while (1)
    {
      v16 = 0;
      v37 = *a1;
      v17 = a1;
      do
      {
        v19 = v17;
        v20 = v17 + 16 * v16;
        v17 = v20 + 16;
        v21 = 2 * v16;
        v16 = (2 * v16) | 1;
        v22 = v21 + 2;
        if (v22 < v8)
        {
          v23 = *(v20 + 32);
          v24 = *(v20 + 16);
          if (v24 < v23 || v24 == v23 && *(v20 + 24) < *(v20 + 40))
          {
            v17 = v20 + 32;
            v16 = v22;
          }
        }

        v18 = *v17;
        *(v19 + 8) = *(v17 + 8);
        *v19 = v18;
      }

      while (v16 <= ((v8 - 2) >> 1));
      v6 -= 2;
      if (v17 == v6)
      {
        *(v17 + 8) = DWORD2(v37);
        *v17 = v37;
      }

      else
      {
        v25 = *v6;
        *(v17 + 8) = *(v6 + 2);
        *v17 = v25;
        *v6 = v37;
        *(v6 + 2) = DWORD2(v37);
        v26 = (v17 - a1 + 16) >> 4;
        v27 = v26 - 2;
        if (v26 >= 2)
        {
          v28 = v27 >> 1;
          v29 = a1 + 16 * (v27 >> 1);
          v30 = *v17;
          if (*v29 < *v17)
          {
            v31 = *(v17 + 8);
LABEL_30:
            v32 = *v29;
            *(v17 + 8) = *(v29 + 8);
            *v17 = v32;
            if (v27 >= 2)
            {
              while (1)
              {
                v35 = v28 - 1;
                v28 = (v28 - 1) >> 1;
                v33 = a1 + 16 * v28;
                if (*v33 >= v30 && (*v33 != v30 || *(v33 + 8) >= v31))
                {
                  break;
                }

                v34 = *v33;
                *(v29 + 8) = *(v33 + 8);
                *v29 = v34;
                v29 = a1 + 16 * v28;
                if (v35 <= 1)
                {
                  goto LABEL_32;
                }
              }
            }

            v33 = v29;
LABEL_32:
            *v33 = v30;
            *(v33 + 8) = v31;
            goto LABEL_17;
          }

          if (*v29 == *v17)
          {
            v31 = *(v17 + 8);
            if (*(v29 + 8) < v31)
            {
              goto LABEL_30;
            }
          }
        }
      }

LABEL_17:
      if (v8-- <= 2)
      {
        return v12;
      }
    }
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::ValueLiteralPair::CompareByValue &,operations_research::sat::ValueLiteralPair*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 < 2)
  {
    return result;
  }

  v4 = a4 - result;
  v5 = (a3 - 2) >> 1;
  if (v5 < (a4 - result) >> 4)
  {
    return result;
  }

  v6 = v4 >> 3;
  v7 = (v4 >> 3) + 1;
  v8 = (result + 16 * v7);
  v9 = v6 + 2;
  if (v9 < a3)
  {
    v10 = v8[2];
    if (*v8 < v10 || *v8 == v10 && *(v8 + 2) < *(v8 + 6))
    {
      v8 += 2;
      v7 = v9;
    }
  }

  v11 = *a4;
  if (*v8 < *a4)
  {
    return result;
  }

  if (*v8 != *a4)
  {
    v12 = *(a4 + 2);
    v14 = *v8;
    *(a4 + 2) = *(v8 + 2);
    *a4 = v14;
    if (v5 >= v7)
    {
      goto LABEL_18;
    }

LABEL_15:
    v15 = v8;
LABEL_16:
    *v15 = v11;
    *(v15 + 2) = v12;
    return result;
  }

  v12 = *(a4 + 2);
  if (*(v8 + 2) < v12)
  {
    return result;
  }

  v13 = *v8;
  *(a4 + 2) = *(v8 + 2);
  *a4 = v13;
  if (v5 < v7)
  {
    goto LABEL_15;
  }

  while (1)
  {
LABEL_18:
    v17 = 2 * v7;
    v7 = (2 * v7) | 1;
    v15 = (result + 16 * v7);
    v18 = v17 + 2;
    if (v18 < a3)
    {
      v19 = v15[2];
      if (*v15 < v19 || *v15 == v19 && *(v15 + 2) < *(v15 + 6))
      {
        v15 += 2;
        v7 = v18;
      }
    }

    if (*v15 < v11 || *v15 == v11 && *(v15 + 2) < v12)
    {
      break;
    }

    v16 = *v15;
    *(v8 + 2) = *(v15 + 2);
    *v8 = v16;
    v8 = v15;
    if (v5 < v7)
    {
      goto LABEL_16;
    }
  }

  *v8 = v11;
  *(v8 + 2) = v12;
  return result;
}

unsigned __int8 *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::insert_hint_unique<int,int const&>@<X0>(unsigned __int8 *result@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, int *a4@<X3>, _DWORD *a5@<X4>, uint64_t a6@<X8>)
{
  if (!*(result + 2))
  {
    operator new();
  }

  v7 = *(result + 1);
  v8 = v7[10];
  if (v7 != a2 || a3 != v8)
  {
    v10 = *a4;
    v11 = *&a2[4 * a3 + 12];
    if (*a4 >= v11)
    {
      if (v11 >= v10)
      {
        *a6 = a2;
        *(a6 + 8) = a3;
        *(a6 + 16) = 0;
        return result;
      }

      if (a2[11])
      {
        v13 = (a3 + 1);
        a3 = a3 & 0xFFFFFFFF00000000 | v13;
        if (v13 == a2[10])
        {
          v14 = a2;
          while (1)
          {
            v15 = *v14;
            if (*(*v14 + 11))
            {
              break;
            }

            v16 = v14[8];
            a3 = a3 & 0xFFFFFFFF00000000 | v16;
            v14 = *v14;
            if (v16 != v15[10])
            {
              goto LABEL_38;
            }
          }

          a3 = a3 & 0xFFFFFFFF00000000 | v13;
        }

        v15 = a2;
      }

      else
      {
        v21 = &a2[8 * (a3 + 1) + 256];
        do
        {
          v15 = *v21;
          v22 = *(*v21 + 11);
          v21 = *v21 + 256;
        }

        while (!v22);
        a3 &= 0xFFFFFFFF00000000;
      }

LABEL_38:
      if ((v15 != v7 || a3 != v8) && v10 >= *&v15[4 * a3 + 12])
      {
        goto LABEL_43;
      }

      a2 = v15;
      goto LABEL_42;
    }
  }

  if (**result == a2 && a3 == 0)
  {
    goto LABEL_42;
  }

  if (!a2[11])
  {
      ;
    }

    v10 = *a4;
    if (*(i + 4 * (*(i + 10) - 1) + 12) >= *a4)
    {
      goto LABEL_43;
    }

LABEL_42:
    result = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::internal_emplace<int const&>(result, a2, a3, a5);
    *a6 = result;
    *(a6 + 8) = v23;
    *(a6 + 16) = 1;
    return result;
  }

  if (a3 - 1 < 0)
  {
    v18 = a2;
    while (1)
    {
      v19 = *v18;
      if (*(*v18 + 11))
      {
        break;
      }

      v20 = v18[8];
      v18 = *v18;
      if (v20)
      {
        v10 = *a4;
        if (*(v19 + 4 * (v20 - 1) + 12) >= *a4)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      }
    }
  }

  v10 = *a4;
  if (*&a2[4 * a3 + 8] < *a4)
  {
    goto LABEL_42;
  }

LABEL_43:
  v24 = *result;
  v25 = *(*result + 10);
  if (*(*result + 10))
  {
    goto LABEL_46;
  }

LABEL_50:
  LODWORD(v26) = 0;
LABEL_51:
  while (!v24[11])
  {
    v24 = *&v24[8 * v26 + 256];
    v25 = v24[10];
    if (!v24[10])
    {
      goto LABEL_50;
    }

LABEL_46:
    v26 = 0;
    while (*&v24[4 * v26 + 12] < v10)
    {
      if (v25 == ++v26)
      {
        LODWORD(v26) = v25;
        goto LABEL_51;
      }
    }
  }

  v27 = v26;
  v28 = v24;
  while (v26 == v28[10])
  {
    LODWORD(v26) = v28[8];
    v28 = *v28;
    if (v28[11])
    {
      goto LABEL_57;
    }
  }

  if (v10 < *&v28[4 * v26 + 12])
  {
LABEL_57:
    result = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::internal_emplace<int const&>(result, v24, v27, a5);
    v28 = result;
    LODWORD(v26) = v29;
    v30 = 1;
    goto LABEL_59;
  }

  v30 = 0;
LABEL_59:
  *a6 = v28;
  *(a6 + 8) = v26;
  *(a6 + 16) = v30;
  return result;
}

unsigned __int8 *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::internal_emplace<int const&>(uint64_t a1, unsigned __int8 *a2, uint64_t a3, _DWORD *a4)
{
  i = a2;
  v31 = a3;
  v6 = a2[11];
  if (a2[11])
  {
    if (a2[10] == v6)
    {
      goto LABEL_3;
    }

LABEL_10:
    v7 = a2;
    v8 = a3;
    v9 = a2[10];
    v10 = v9 - a3;
    if (v9 <= a3)
    {
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  a2 = *&a2[8 * a3 + 256];
  for (i = a2; !a2[11]; i = a2)
  {
    a2 = *&a2[8 * a2[10] + 256];
  }

  LOBYTE(a3) = a2[10];
  LODWORD(v31) = a3;
  v6 = a2[11];
  if (!a2[11])
  {
    v6 = 61;
  }

  if (a2[10] != v6)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 <= 0x3C)
  {
    operator new();
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::rebalance_or_split(a1, &i);
  v7 = i;
  v8 = v31;
  v9 = i[10];
  v10 = v9 - v31;
  if (v9 > v31)
  {
LABEL_13:
    v11 = v10;
    if ((v10 & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      v12 = &v7[4 * v8 + 12];
      v13 = v12 + 4 * v11;
      v14 = v13 + 4;
      v15 = 4 * v9;
      v16 = 4 * v9 - 4 * v8 - 4;
      if (v16 < 0x1C)
      {
        goto LABEL_18;
      }

      v17 = (v16 >> 2) + 1;
      v18 = 4 * (v17 & 0x7FFFFFFFFFFFFFF8);
      v14 -= v18;
      v13 -= v18;
      v19 = &v7[v15];
      v20 = v17 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v21 = *(v19 - 4);
        *(v19 - 1) = *(v19 - 20);
        *v19 = v21;
        v19 -= 32;
        v20 -= 8;
      }

      while (v20);
      if (v17 != (v17 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_18:
        v22 = (v14 - 4);
        do
        {
          v23 = *(v13 - 4);
          v13 -= 4;
          *v22-- = v23;
        }

        while (v13 != v12);
      }

      LODWORD(v9) = v7[10];
    }
  }

LABEL_21:
  *&v7[4 * v8 + 12] = *a4;
  v24 = v9 + 1;
  v7[10] = v9 + 1;
  if (!v7[11])
  {
    v25 = v8 + 1;
    if (v25 < v24)
    {
      v26 = v7 + 256;
      do
      {
        v27 = *&v26[8 * (v24 - 1)];
        *&v26[8 * v24] = v27;
        *(v27 + 8) = v24;
      }

      while (v25 < --v24);
    }
  }

  ++*(a1 + 16);
  return i;
}

char *std::vector<int>::__assign_with_size[abi:ne200100]<google::protobuf::internal::RepeatedIterator<int const>,google::protobuf::internal::RepeatedIterator<int const>>(char **a1, uint64_t a2, int *a3, unint64_t a4)
{
  v4 = a2;
  v6 = a1[2];
  v7 = *a1;
  result = v7;
  if (a4 > (v6 - v7) >> 2)
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

    if (!(a4 >> 62))
    {
      v10 = v6 >> 1;
      if (v6 >> 1 <= a4)
      {
        v10 = a4;
      }

      v11 = v6 >= 0x7FFFFFFFFFFFFFFCLL;
      v12 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v11)
      {
        v12 = v10;
      }

      if (!(v12 >> 62))
      {
        operator new();
      }
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v13 = a1[1];
  if (a4 <= (v13 - v7) >> 2)
  {
    if (a2 != a3)
    {
      v34 = a3 - a2 - 4;
      if (v34 < 0x1C)
      {
        goto LABEL_40;
      }

      if (&v7[-a2] < 0x20)
      {
        goto LABEL_40;
      }

      v35 = (v34 >> 2) + 1;
      v36 = 4 * (v35 & 0x7FFFFFFFFFFFFFF8);
      result = &v7[v36];
      v37 = (a2 + v36);
      v38 = (a2 + 16);
      v39 = v7 + 16;
      v40 = v35 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v41 = *v38;
        *(v39 - 1) = *(v38 - 1);
        *v39 = v41;
        v38 += 2;
        v39 += 2;
        v40 -= 8;
      }

      while (v40);
      v4 = v37;
      if (v35 != (v35 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_40:
        do
        {
          v42 = *v4++;
          *result = v42;
          result += 4;
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
      v15 = v13 - v7 - 4;
      if (v15 < 0x1C)
      {
        goto LABEL_41;
      }

      if (&v7[-a2] < 0x20)
      {
        goto LABEL_41;
      }

      v16 = (v15 >> 2) + 1;
      v17 = 4 * (v16 & 0x7FFFFFFFFFFFFFF8);
      result = &v7[v17];
      v18 = (a2 + v17);
      v19 = (a2 + 16);
      v20 = v7 + 16;
      v21 = v16 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v22 = *v19;
        *(v20 - 1) = *(v19 - 1);
        *v20 = v22;
        v19 += 2;
        v20 += 2;
        v21 -= 8;
      }

      while (v21);
      v4 = v18;
      if (v16 != (v16 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_41:
        do
        {
          v23 = *v4++;
          *result = v23;
          result += 4;
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
      v25 = a3 - v14 - 4;
      if (v25 < 0x1C)
      {
        goto LABEL_25;
      }

      if (&v13[-v14] < 0x20)
      {
        goto LABEL_25;
      }

      v26 = (v25 >> 2) + 1;
      v27 = 4 * (v26 & 0x7FFFFFFFFFFFFFF8);
      v24 = (v14 + v27);
      v28 = &v13[v27];
      v29 = v13 + 16;
      v30 = (v14 + 16);
      v31 = v26 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v32 = *v30;
        *(v29 - 1) = *(v30 - 1);
        *v29 = v32;
        v29 += 2;
        v30 += 2;
        v31 -= 8;
      }

      while (v31);
      v13 = v28;
      if (v26 != (v26 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_25:
        v28 = v13;
        do
        {
          v33 = *v24++;
          *v28 = v33;
          v28 += 4;
        }

        while (v24 != a3);
      }

      a1[1] = v28;
    }
  }

  return result;
}

void *std::__function::__func<std::function<void ()(operations_research::sat::Model *)> operations_research::sat::WeightedSumLowerOrEqual<std::vector<long long>>(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::vector<long long> const&,long long)::{lambda(operations_research::sat::Model *)#1},std::allocator<std::function<void ()(operations_research::sat::Model *)> operations_research::sat::WeightedSumLowerOrEqual<std::vector<long long>>(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::vector<long long> const&,long long)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::~__func(void *a1)
{
  *a1 = &unk_284F3DBA0;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::__function::__func<std::function<void ()(operations_research::sat::Model *)> operations_research::sat::WeightedSumLowerOrEqual<std::vector<long long>>(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::vector<long long> const&,long long)::{lambda(operations_research::sat::Model *)#1},std::allocator<std::function<void ()(operations_research::sat::Model *)> operations_research::sat::WeightedSumLowerOrEqual<std::vector<long long>>(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::vector<long long> const&,long long)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::~__func(void *a1)
{
  *a1 = &unk_284F3DBA0;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x23EED9460);
}

void std::__function::__func<std::function<void ()(operations_research::sat::Model *)> operations_research::sat::WeightedSumLowerOrEqual<std::vector<long long>>(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::vector<long long> const&,long long)::{lambda(operations_research::sat::Model *)#1},std::allocator<std::function<void ()(operations_research::sat::Model *)> operations_research::sat::WeightedSumLowerOrEqual<std::vector<long long>>(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::vector<long long> const&,long long)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::destroy(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;

    operator delete(v3);
  }
}

void std::__function::__func<std::function<void ()(operations_research::sat::Model *)> operations_research::sat::WeightedSumLowerOrEqual<std::vector<long long>>(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::vector<long long> const&,long long)::{lambda(operations_research::sat::Model *)#1},std::allocator<std::function<void ()(operations_research::sat::Model *)> operations_research::sat::WeightedSumLowerOrEqual<std::vector<long long>>(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::vector<long long> const&,long long)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::destroy_deallocate(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    __p[5] = v2;
    operator delete(v2);
  }

  v3 = __p[1];
  if (v3)
  {
    __p[2] = v3;
    operator delete(v3);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::function<void ()(operations_research::sat::Model *)> operations_research::sat::WeightedSumLowerOrEqual<std::vector<long long>>(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::vector<long long> const&,long long)::{lambda(operations_research::sat::Model *)#1},std::allocator<std::function<void ()(operations_research::sat::Model *)> operations_research::sat::WeightedSumLowerOrEqual<std::vector<long long>>(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::vector<long long> const&,long long)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000023CE448E0)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000023CE448E0 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023CE448E0))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023CE448E0 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *operations_research::sat::Model::Delete<operations_research::sat::GreaterThanAtLeastOneOfDetector>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F3DC20;
  a1[1] = 0;
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      v4 = *(v2 + 32);
      v5 = *(v2 + 24);
      if (v4 != v3)
      {
        v6 = *(v2 + 32);
        do
        {
          v8 = *(v6 - 24);
          v6 -= 24;
          v7 = v8;
          if (v8)
          {
            *(v4 - 16) = v7;
            operator delete(v7);
          }

          v4 = v6;
        }

        while (v6 != v3);
        v5 = *(v2 + 24);
      }

      *(v2 + 32) = v3;
      operator delete(v5);
    }

    v9 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v9;
      operator delete(v9);
    }

    MEMORY[0x23EED9460](v2, 0x20C40A759441BLL);
  }

  return a1;
}

void operations_research::sat::Model::Delete<operations_research::sat::GreaterThanAtLeastOneOfDetector>::~Delete(void *a1)
{
  v1 = a1[1];
  *a1 = &unk_284F3DC20;
  a1[1] = 0;
  if (v1)
  {
    v2 = *(v1 + 24);
    if (v2)
    {
      v3 = *(v1 + 32);
      v4 = *(v1 + 24);
      if (v3 != v2)
      {
        v5 = *(v1 + 32);
        do
        {
          v7 = *(v5 - 24);
          v5 -= 24;
          v6 = v7;
          if (v7)
          {
            *(v3 - 16) = v6;
            operator delete(v6);
          }

          v3 = v5;
        }

        while (v5 != v2);
        v4 = *(v1 + 24);
      }

      *(v1 + 32) = v2;
      operator delete(v4);
    }

    v8 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v8;
      operator delete(v8);
    }

    MEMORY[0x23EED9460](v1, 0x20C40A759441BLL);
  }

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::Model::Delete<operations_research::sat::ProductDecomposer>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F3DC58;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    MEMORY[0x23EED9460](v1, 0x20C40960023A9);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::ProductDecomposer>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F3DC58;
  a1[1] = 0;
  if (v2)
  {
    MEMORY[0x23EED9460](v2, 0x20C40960023A9);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void std::vector<operations_research::sat::LinearExpression>::__swap_out_circular_buffer(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v4);
    do
    {
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
      *v8 = *v7;
      v8[2] = *(v7 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      v8[3] = 0;
      v8[4] = 0;
      v8[5] = 0;
      *(v8 + 3) = *(v7 + 24);
      v9 = *(v7 + 48);
      v8[5] = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      v8[6] = v9;
      v7 += 56;
      v8 += 7;
    }

    while (v7 != v4);
    do
    {
      v10 = *(v5 + 24);
      if (v10)
      {
        *(v5 + 32) = v10;
        operator delete(v10);
      }

      v11 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v11;
        operator delete(v11);
      }

      v5 += 56;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v12 = *a1;
  *a1 = v6;
  a1[1] = v12;
  a2[1] = v12;
  v13 = a1[1];
  a1[1] = a2[2];
  a2[2] = v13;
  v14 = a1[2];
  a1[2] = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<operations_research::sat::LinearExpression>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 56);
    *(a1 + 16) = i - 56;
    v5 = *(i - 32);
    if (v5)
    {
      *(i - 24) = v5;
      operator delete(v5);
    }

    v6 = *v4;
    if (*v4)
    {
      *(i - 48) = v6;
      operator delete(v6);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<operations_research::sat::LinearExpression>::__emplace_back_slow_path<operations_research::sat::LinearExpression>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v5 = 0x492492492492492;
  }

  else
  {
    v5 = v3;
  }

  v20 = a1;
  if (v5)
  {
    if (v5 <= 0x492492492492492)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v6 = 56 * v2;
  __p = 0;
  v17 = v6;
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(v6 + 24) = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v6 + 40) = v7;
  *(v6 + 48) = v8;
  v18 = 56 * v2 + 56;
  v19 = 0;
  std::vector<operations_research::sat::LinearExpression>::__swap_out_circular_buffer(a1, &__p);
  v9 = a1[1];
  v10 = v17;
  while (1)
  {
    v11 = v18;
    if (v18 == v10)
    {
      break;
    }

    v12 = (v18 - 56);
    v18 -= 56;
    v13 = *(v11 - 32);
    if (v13)
    {
      *(v11 - 24) = v13;
      operator delete(v13);
    }

    v14 = *v12;
    if (*v12)
    {
      *(v11 - 48) = v14;
      operator delete(v14);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_23CA72C18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<operations_research::sat::LinearExpression>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::CpModelMapping::Interval(operations_research::sat::CpModelMapping *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    operations_research::sat::CpModelMapping::Interval(a2);
  }

  v3 = *(this + 3);
  v4 = (*(this + 4) - v3) >> 2;
  if (v4 <= a2)
  {
    operations_research::sat::CpModelMapping::Interval(a2, v4);
  }

  v5 = (v3 + 4 * a2);
  if (*v5 == -1)
  {
    operations_research::sat::CpModelMapping::Interval(v5);
  }

  return *v5;
}

void absl::lts_20240722::log_internal::MakeCheckOpString<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_> const&,operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_> const&>(unsigned int *a1, unsigned int *a2, char *a3)
{
  absl::lts_20240722::log_internal::CheckOpMessageBuilder::CheckOpMessageBuilder(&v6, a3);
  MEMORY[0x23EED9180](&v6, *a1);
  v5 = absl::lts_20240722::log_internal::CheckOpMessageBuilder::ForVar2(&v6);
  MEMORY[0x23EED9180](v5, *a2);
  absl::lts_20240722::log_internal::CheckOpMessageBuilder::NewString(&v6);
}

void sub_23CA72E00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_0_8(uint64_t a1, uint64_t a2)
{

  return absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v2, a2, 101);
}

void operations_research::sat::PostsolveClause(uint64_t a1, void *a2)
{
  v2 = *(a1 + 60);
  v3 = *(a1 + 48);
  if (v2 == 3)
  {
    v4 = *(a1 + 48);
  }

  else
  {
    v4 = &operations_research::sat::_BoolArgumentProto_default_instance_;
  }

  v5 = *(v4 + 4);
  if (!v5)
  {
    operations_research::sat::PostsolveClause();
  }

  if (v5 < 1)
  {
    goto LABEL_23;
  }

  v8 = 0;
  v9 = 0;
  v10 = 4 * v5;
  do
  {
    if (*(a1 + 60) == 3)
    {
      v11 = *(a1 + 48);
    }

    else
    {
      v11 = &operations_research::sat::_BoolArgumentProto_default_instance_;
    }

    v12 = *(v11[3] + v8);
    v13 = ~v12;
    if (~v12 > v12)
    {
      v12 = ~v12;
    }

    v14 = v12;
    if (operations_research::Domain::IsFixed((*a2 + 24 * v12)))
    {
      v9 |= operations_research::Domain::Min((*a2 + 24 * v14)) == v13 >> 31;
    }

    else
    {
      operations_research::Domain::Domain(&v20, 0);
      v15 = *a2 + 24 * v14;
      if (v15 == &v20)
      {
        if (v20)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        if (*v15)
        {
          operator delete(*(v15 + 8));
        }

        *v15 = v20;
        *(v15 + 8) = *__p;
      }
    }

    v8 += 4;
  }

  while (v10 != v8);
  if ((v9 & 1) == 0)
  {
    v2 = *(a1 + 60);
    v3 = *(a1 + 48);
LABEL_23:
    if (v2 == 3)
    {
      v16 = v3;
    }

    else
    {
      v16 = &operations_research::sat::_BoolArgumentProto_default_instance_;
    }

    v17 = *v16[3];
    operations_research::Domain::Domain(&v20, v17 >= 0);
    if (~v17 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = ~v17;
    }

    v19 = *a2 + 24 * v18;
    if (v19 == &v20)
    {
      operations_research::sat::LinearIncrementalEvaluator::ReduceBounds(&v20);
    }

    else
    {
      if (*v19)
      {
        operator delete(*(v19 + 8));
      }

      *v19 = v20;
      *(v19 + 8) = *__p;
    }
  }
}

void operations_research::sat::PostsolveExactlyOne(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  if (*(a1 + 60) != 29)
  {
    v2 = &operations_research::sat::_BoolArgumentProto_default_instance_;
  }

  v3 = *(v2 + 4);
  if (!v3)
  {
    goto LABEL_18;
  }

  v9 = 0;
  v5 = v2[3];
  v6 = 4 * v3;
  do
  {
    v7 = *v5;
    if (~*v5 <= *v5)
    {
      v8 = *v5;
    }

    else
    {
      v8 = ~v7;
    }

    if (!operations_research::Domain::IsFixed((*a2 + 24 * v8)))
    {
      operator new();
    }

    if (operations_research::Domain::Min((*a2 + 24 * v8)) == v7 >= 0)
    {
      if (v9)
      {
        absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v10, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_postsolve.cc", 68);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v10, "Two variables at one in exactly one.", 0x24uLL);
        goto LABEL_17;
      }

      v9 = 1;
    }

    ++v5;
    v6 -= 4;
  }

  while (v6);
  if ((v9 & 1) == 0)
  {
LABEL_18:
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v10, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_postsolve.cc", 77);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v10, "All zero in exactly one", 0x17uLL);
LABEL_17:
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&v10);
  }
}

void sub_23CA73304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (v10)
  {
    v11 = a1;
    operator delete(v10);
    a1 = v11;
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::SetEnforcementLiteralToFalse(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    operations_research::sat::SetEnforcementLiteralToFalse(&v10);
  }

  v4 = *(a1 + 24);
  v5 = 4 * v2;
  while (1)
  {
    v6 = *v4;
    v7 = ~*v4 <= *v4 ? *v4 : ~v6;
    if (!operations_research::Domain::IsFixed((*a2 + 24 * v7)))
    {
      break;
    }

    ++v4;
    v5 -= 4;
    if (!v5)
    {
      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v9, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_postsolve.cc", 106);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v9, "Unsatisfied linear constraint with no free enforcement literal: ", 0x40uLL);
      google::protobuf::Message::ShortDebugString(&v10);
    }
  }

  if ((v6 & 0x80000000) != 0)
  {
    operations_research::Domain::Domain(&v10, 1);
    v8 = *a2 + 24 * v7;
    if (v8 == &v10)
    {
LABEL_17:
      operations_research::sat::LinearIncrementalEvaluator::ReduceBounds(&v10);
      return;
    }
  }

  else
  {
    operations_research::Domain::Domain(&v10, 0);
    v8 = *a2 + 24 * v6;
    if (v8 == &v10)
    {
      goto LABEL_17;
    }
  }

  if (*v8)
  {
    operator delete(*(v8 + 8));
  }

  *v8 = v10;
}

void sub_23CA73490(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&a10);
}

void operations_research::sat::PostsolveLinear(uint64_t a1, void *a2, __n128 a3)
{
  if (*(a1 + 60) == 12)
  {
    v4 = *(a1 + 48);
  }

  else
  {
    v4 = &operations_research::sat::_LinearConstraintProto_default_instance_;
  }

  v13 = *(v4 + 4);
  if (v13 < 1)
  {
    v10 = 0;
  }

  else
  {
    v5 = 0;
    v12 = 0;
    do
    {
      v6 = *(a1 + 48);
      if (*(a1 + 60) != 12)
      {
        v6 = &operations_research::sat::_LinearConstraintProto_default_instance_;
      }

      v7 = *(v6[3] + v5);
      v8 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
      if (v8 <= v7)
      {
        absl::lts_20240722::log_internal::MakeCheckOpString<long long,unsigned long long>(v7, v8, "var < domains->size()");
      }

      v9 = v6[6][v5];
      if (v9)
      {
        if (!operations_research::Domain::IsFixed((*a2 + 24 * v7)))
        {
          operator new();
        }

        v12 += operations_research::Domain::Min((*a2 + 24 * v7)) * v9;
      }

      ++v5;
    }

    while (v13 != v5);
    v10 = v12;
  }

  v11 = &operations_research::sat::_LinearConstraintProto_default_instance_;
  if (*(a1 + 60) == 12)
  {
    v11 = *(a1 + 48);
  }

  operations_research::Domain::FromFlatSpanOfIntervals(v11[9], *(v11 + 16), v15, a3);
  if (!operations_research::Domain::Contains(v15, v10))
  {
    operations_research::sat::SetEnforcementLiteralToFalse(a1, a2);
  }

  if (v15[0])
  {
    operator delete(v15[1]);
  }
}

void sub_23CA73C68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19, void *a20, uint64_t a21, void *a22, void *a23, int a24, __int16 a25, char a26, char a27, char a28, void *a29)
{
  if (*(v30 - 136))
  {
    operator delete(*(v30 - 128));
  }

  if (*(v30 - 112))
  {
    operator delete(*(v30 - 104));
    v32 = __p;
    if (!__p)
    {
LABEL_5:
      if (!v29)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v32 = __p;
    if (!__p)
    {
      goto LABEL_5;
    }
  }

  operator delete(v32);
  if (!v29)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(v29);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::PostsolveLinMax(uint64_t a1, void *a2)
{
  v3 = *(a1 + 60);
  v4 = *(a1 + 48);
  if (v3 == 27)
  {
    v5 = *(a1 + 48);
  }

  else
  {
    v5 = &operations_research::sat::_LinearArgumentProto_default_instance_;
  }

  v7 = v5[3];
  v6 = v5 + 3;
  v8 = (v7 + 7);
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  v10 = *(v6 + 2);
  if (v10)
  {
    v12 = &v9[v10];
    v13 = 0x8000000000000000;
    do
    {
      v14 = *v9;
      v15 = (*v9)[8];
      if (*(*v9 + 4) >= 1)
      {
        v16 = 0;
        do
        {
          v17 = *(v14[3] + v16);
          if (~v17 <= v17)
          {
            v18 = *(v14[3] + v16);
          }

          else
          {
            v18 = ~v17;
          }

          v19 = *(v14[6] + v16) * operations_research::Domain::Min((*a2 + 24 * v18));
          if (v17 < 0)
          {
            v19 = -v19;
          }

          v15 += v19;
          ++v16;
        }

        while (v16 < *(v14 + 4));
      }

      if (v13 <= v15)
      {
        v13 = v15;
      }

      ++v9;
    }

    while (v9 != v12);
    v3 = *(a1 + 60);
    v4 = *(a1 + 48);
  }

  else
  {
    v13 = 0x8000000000000000;
  }

  if (v3 == 27)
  {
    v20 = v4;
  }

  else
  {
    v20 = &operations_research::sat::_LinearArgumentProto_default_instance_;
  }

  v21 = v20[6];
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  v23 = *(v22 + 4);
  if (v23 != 1)
  {
    operations_research::sat::PostsolveLinMax(v23);
  }

  if ((*v22[3] & 0x80000000) != 0)
  {
    operations_research::sat::PostsolveLinMax(&v27);
  }

  v24 = v13 - v22[8];
  v25 = *v22[6];
  if (v24 % v25)
  {
    operations_research::sat::PostsolveLinMax(v24 % v25);
  }

  operations_research::Domain::Domain(&v27, v24 / v25);
  v26 = *a2 + 24 * *v22[3];
  if (v26 == &v27)
  {
    operations_research::sat::LinearIncrementalEvaluator::ReduceBounds(&v27);
  }

  else
  {
    if (*v26)
    {
      operator delete(*(v26 + 8));
    }

    *v26 = v27;
    *(v26 + 8) = v28;
  }
}