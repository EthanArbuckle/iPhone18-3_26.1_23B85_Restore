uint64_t operations_research::sat::PresolveContext::MinOf(operations_research::sat::PresolveContext *this, const operations_research::sat::LinearExpressionProto *a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 4) >= 1)
  {
    for (i = 0; i < *(a2 + 4); ++i)
    {
      v7 = *(*(a2 + 6) + 8 * i);
      v8 = *(*(a2 + 3) + 4 * i);
      if (v7 < 1)
      {
        if ((v8 & 0x80000000) != 0)
        {
          v9 = operations_research::Domain::Min((*(this + 53) + 24 * ~v8));
          goto LABEL_11;
        }

        v6 = operations_research::Domain::Max((*(this + 53) + 24 * v8));
      }

      else
      {
        if ((v8 & 0x80000000) != 0)
        {
          v9 = operations_research::Domain::Max((*(this + 53) + 24 * ~v8));
LABEL_11:
          v6 = -v9;
          goto LABEL_4;
        }

        v6 = operations_research::Domain::Min((*(this + 53) + 24 * v8));
      }

LABEL_4:
      v2 += v6 * v7;
    }
  }

  return v2;
}

uint64_t operations_research::sat::PresolveContext::MaxOf(operations_research::sat::PresolveContext *this, const operations_research::sat::LinearExpressionProto *a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 4) >= 1)
  {
    for (i = 0; i < *(a2 + 4); ++i)
    {
      v7 = *(*(a2 + 6) + 8 * i);
      v8 = *(*(a2 + 3) + 4 * i);
      if (v7 < 1)
      {
        if ((v8 & 0x80000000) != 0)
        {
          v9 = operations_research::Domain::Max((*(this + 53) + 24 * ~v8));
          goto LABEL_11;
        }

        v6 = operations_research::Domain::Min((*(this + 53) + 24 * v8));
      }

      else
      {
        if ((v8 & 0x80000000) != 0)
        {
          v9 = operations_research::Domain::Min((*(this + 53) + 24 * ~v8));
LABEL_11:
          v6 = -v9;
          goto LABEL_4;
        }

        v6 = operations_research::Domain::Max((*(this + 53) + 24 * v8));
      }

LABEL_4:
      v2 += v6 * v7;
    }
  }

  return v2;
}

BOOL operations_research::sat::PresolveContext::IsFixed(operations_research::sat::PresolveContext *this, const operations_research::sat::LinearExpressionProto *a2)
{
  v2 = *(a2 + 4);
  if (v2 < 1)
  {
    return 1;
  }

  for (i = 0; i < v2; ++i)
  {
    if (*(*(a2 + 6) + 8 * i))
    {
      v6 = *(*(a2 + 3) + 4 * i);
      if (~v6 > v6)
      {
        v6 = ~v6;
      }

      result = operations_research::Domain::IsFixed((*(this + 53) + 24 * v6));
      if (!result)
      {
        return result;
      }

      v2 = *(a2 + 4);
    }
  }

  return 1;
}

uint64_t operations_research::sat::PresolveContext::FixedValue(operations_research::sat::PresolveContext *this, const operations_research::sat::LinearExpressionProto *a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 4);
  if (v3 >= 1)
  {
    for (i = 0; i < v3; ++i)
    {
      v7 = *(*(a2 + 6) + 8 * i);
      if (v7)
      {
        v8 = *(*(a2 + 3) + 4 * i);
        if (~v8 <= v8)
        {
          v9 = *(*(a2 + 3) + 4 * i);
        }

        else
        {
          v9 = ~v8;
        }

        if (!operations_research::Domain::IsFixed((*(this + 53) + 24 * v9)))
        {
          operations_research::sat::PresolveContext::FixedValue(&v13);
        }

        v10 = operations_research::Domain::Min((*(this + 53) + 24 * v9));
        if (v8 >= 0)
        {
          v11 = v10;
        }

        else
        {
          v11 = -v10;
        }

        v2 += v11 * v7;
        v3 = *(a2 + 4);
      }
    }
  }

  return v2;
}

void operations_research::sat::PresolveContext::DomainSuperSetOf(operations_research::sat::PresolveContext *this@<X0>, const operations_research::sat::LinearExpressionProto *a2@<X1>, uint64_t a3@<X8>)
{
  operations_research::Domain::Domain(a3, *(a2 + 8));
  if (*(a2 + 4) >= 1)
  {
    if (&v14 != a3)
    {
      v6 = 0;
      while (1)
      {
        operations_research::sat::PresolveContext::DomainOf(this, *(*(a2 + 3) + 4 * v6), v10);
        operations_research::Domain::MultiplicationBy(v10, 0, *(*(a2 + 6) + 8 * v6), &v12);
        operations_research::Domain::AdditionWith(a3, &v12, &v14, v7);
        if (*a3)
        {
          operator delete(*(a3 + 8));
        }

        *a3 = v14;
        *(a3 + 8) = v15;
        v14 = 0;
        if (v12)
        {
          operator delete(__p);
          if (v10[0])
          {
LABEL_11:
            operator delete(v11);
          }
        }

        else if (v10[0])
        {
          goto LABEL_11;
        }

        if (++v6 >= *(a2 + 4))
        {
          return;
        }
      }
    }

    for (i = 0; i < *(a2 + 4); ++i)
    {
      operations_research::sat::PresolveContext::DomainOf(this, *(*(a2 + 3) + 4 * i), v10);
      operations_research::Domain::MultiplicationBy(v10, 0, *(*(a2 + 6) + 8 * i), &v12);
      operations_research::Domain::AdditionWith(a3, &v12, &v14, v9);
      if (v14)
      {
        operator delete(v15);
        if ((v12 & 1) == 0)
        {
LABEL_16:
          if (v10[0])
          {
            goto LABEL_20;
          }

          continue;
        }
      }

      else if ((v12 & 1) == 0)
      {
        goto LABEL_16;
      }

      operator delete(__p);
      if (v10[0])
      {
LABEL_20:
        operator delete(v11);
      }
    }
  }
}

void sub_23CC93678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, char a13, void *__p)
{
  if (a13)
  {
    operator delete(__p);
    if ((a10 & 1) == 0)
    {
LABEL_3:
      if ((*v14 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a10 & 1) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a11);
  if ((*v14 & 1) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*(v14 + 8));
  _Unwind_Resume(exception_object);
}

void operations_research::sat::PresolveContext::DomainOf(operations_research::sat::PresolveContext *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  if ((a2 & 0x80000000) != 0)
  {
    operations_research::Domain::Negation((*(this + 53) + 24 * ~a2), &v10);
    if (&v10 == a3)
    {
      operations_research::sat::LinearIncrementalEvaluator::ReduceBounds(&v10);
    }

    else
    {
      if (*a3)
      {
        operator delete(*(a3 + 8));
      }

      *a3 = v10;
      *(a3 + 8) = v11;
    }
  }

  else
  {
    v4 = (*(this + 53) + 24 * a2);
    if (v4 != a3)
    {
      v5 = *v4;
      v8 = v4[1];
      v6 = (v4 + 1);
      v7 = v8;
      if (v5)
      {
        v9 = v7;
      }

      else
      {
        v9 = v6;
      }

      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::Assign<absl::lts_20240722::inlined_vector_internal::IteratorValueAdapter<std::allocator<operations_research::ClosedInterval>,operations_research::ClosedInterval const*>>(a3, v9, (8 * v5) >> 4);
    }
  }
}

void sub_23CC937DC(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

BOOL operations_research::sat::PresolveContext::ExpressionIsAffineBoolean(operations_research::sat::PresolveContext *this, const operations_research::sat::LinearExpressionProto *a2)
{
  if (*(a2 + 4) != 1)
  {
    return 0;
  }

  v3 = **(a2 + 3);
  if (~v3 <= v3)
  {
    v4 = **(a2 + 3);
  }

  else
  {
    v4 = ~v3;
  }

  return (operations_research::Domain::Min((*(this + 53) + 24 * v4)) & 0x8000000000000000) == 0 && operations_research::Domain::Max((*(this + 53) + 24 * v4)) < 2;
}

uint64_t operations_research::sat::PresolveContext::ExpressionIsALiteral(operations_research::sat::PresolveContext *this, const operations_research::sat::LinearExpressionProto *a2, int *a3)
{
  if (*(a2 + 4) != 1)
  {
    return 0;
  }

  v6 = **(a2 + 3);
  if (~v6 <= v6)
  {
    v7 = **(a2 + 3);
  }

  else
  {
    v7 = ~v6;
  }

  if ((v7 & 0x80000000) != 0)
  {
    v9 = ~v7;
    if (operations_research::Domain::Max((*(this + 53) + 24 * v9)) - 1 < 0)
    {
      if (-operations_research::Domain::Min((*(this + 53) + 24 * v9)) > 1)
      {
        return 0;
      }

      goto LABEL_13;
    }

    return 0;
  }

  if (operations_research::Domain::Min((*(this + 53) + 24 * v7)) < 0)
  {
    return 0;
  }

  if (operations_research::Domain::Max((*(this + 53) + 24 * v7)) > 1)
  {
    return 0;
  }

LABEL_13:
  v10 = *(a2 + 8);
  if (v10 != 1)
  {
    result = 0;
    if (v10 || v6 < 0 || **(a2 + 6) != 1)
    {
      return result;
    }

    goto LABEL_24;
  }

  v11 = **(a2 + 6);
  if ((v6 & 0x80000000) == 0 && v11 == -1)
  {
    v6 = ~v6;
    if (!a3)
    {
      return 1;
    }

    goto LABEL_25;
  }

  result = 0;
  if (v6 < 0 && v11 == 1)
  {
LABEL_24:
    if (!a3)
    {
      return 1;
    }

LABEL_25:
    *a3 = v6;
    return 1;
  }

  return result;
}

BOOL operations_research::sat::PresolveContext::IntervalIsConstant(operations_research::sat::PresolveContext *this, int a2)
{
  v2 = *this + 48;
  if (*v2)
  {
    v2 = *v2 + 8 * a2 + 7;
  }

  v3 = *v2;
  if (!*(*v2 + 16))
  {
    v6 = *(v3 + 60);
    if (v6 == 19)
    {
      v7 = *(v3 + 48);
    }

    else
    {
      v7 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
    }

    v8 = v7[3];
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = &operations_research::sat::_LinearExpressionProto_default_instance_;
    }

    v10 = *(v9 + 4);
    if (v10 >= 1)
    {
      for (i = 0; i < v10; ++i)
      {
        if (v9[6][i])
        {
          v12 = *(v9[3] + i);
          if (~v12 > v12)
          {
            v12 = ~v12;
          }

          result = operations_research::Domain::IsFixed((*(this + 53) + 24 * v12));
          if (!result)
          {
            return result;
          }

          v10 = *(v9 + 4);
        }
      }

      v6 = *(v3 + 60);
    }

    if (v6 == 19)
    {
      if (*(*(v3 + 48) + 40))
      {
        v13 = *(*(v3 + 48) + 40);
      }

      else
      {
        v13 = &operations_research::sat::_LinearExpressionProto_default_instance_;
      }

      v14 = *(v13 + 4);
      if (v14 < 1)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (qword_2810BECA8)
      {
        v13 = qword_2810BECA8;
      }

      else
      {
        v13 = &operations_research::sat::_LinearExpressionProto_default_instance_;
      }

      v14 = *(v13 + 4);
      if (v14 < 1)
      {
LABEL_26:
        if (v6 == 19)
        {
          goto LABEL_27;
        }

        goto LABEL_44;
      }
    }

    for (j = 0; j < v14; ++j)
    {
      if (v13[6][j])
      {
        v18 = *(v13[3] + j);
        if (~v18 > v18)
        {
          v18 = ~v18;
        }

        result = operations_research::Domain::IsFixed((*(this + 53) + 24 * v18));
        if (!result)
        {
          return result;
        }

        v14 = *(v13 + 4);
      }
    }

    if (*(v3 + 60) == 19)
    {
LABEL_27:
      if (*(*(v3 + 48) + 32))
      {
        v15 = *(*(v3 + 48) + 32);
      }

      else
      {
        v15 = &operations_research::sat::_LinearExpressionProto_default_instance_;
      }

      v16 = *(v15 + 4);
      if (v16 < 1)
      {
        return 1;
      }

LABEL_48:
      v19 = 0;
      while (1)
      {
        if (v15[6][v19])
        {
          v20 = *(v15[3] + v19);
          if (~v20 > v20)
          {
            v20 = ~v20;
          }

          result = operations_research::Domain::IsFixed((*(this + 53) + 24 * v20));
          if (!result)
          {
            return result;
          }

          v16 = *(v15 + 4);
        }

        if (++v19 >= v16)
        {
          return 1;
        }
      }
    }

LABEL_44:
    if (qword_2810BECA0)
    {
      v15 = qword_2810BECA0;
    }

    else
    {
      v15 = &operations_research::sat::_LinearExpressionProto_default_instance_;
    }

    v16 = *(v15 + 4);
    if (v16 < 1)
    {
      return 1;
    }

    goto LABEL_48;
  }

  return 0;
}

uint64_t operations_research::sat::PresolveContext::StartMin(operations_research::sat::PresolveContext *this, int a2)
{
  v2 = (*this + 48);
  if (*v2)
  {
    v2 = (*v2 + 8 * a2 + 7);
  }

  v3 = *v2;
  if (*(v3 + 60) == 19)
  {
    v4 = *(*(v3 + 48) + 24);
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = &operations_research::sat::_LinearExpressionProto_default_instance_;
    }
  }

  else if (qword_2810BEC98)
  {
    v5 = qword_2810BEC98;
  }

  else
  {
    v5 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  return operations_research::sat::PresolveContext::MinOf(this, v5);
}

uint64_t operations_research::sat::PresolveContext::EndMax(operations_research::sat::PresolveContext *this, int a2)
{
  v2 = (*this + 48);
  if (*v2)
  {
    v2 = (*v2 + 8 * a2 + 7);
  }

  v3 = *v2;
  if (*(v3 + 60) == 19)
  {
    v4 = *(*(v3 + 48) + 32);
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = &operations_research::sat::_LinearExpressionProto_default_instance_;
    }
  }

  else if (qword_2810BECA0)
  {
    v5 = qword_2810BECA0;
  }

  else
  {
    v5 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  return operations_research::sat::PresolveContext::MaxOf(this, v5);
}

uint64_t operations_research::sat::PresolveContext::ConstraintIsOptional(operations_research::sat::PresolveContext *this, int a2)
{
  v2 = *this + 48;
  if (*v2)
  {
    v2 = *v2 + 8 * a2 + 7;
  }

  v3 = *v2;
  v4 = *(*v2 + 16);
  if (v4)
  {
    v6 = 0;
    v7 = *(v3 + 24);
    v8 = 4 * v4;
    while (1)
    {
      v10 = *v7;
      if ((*v7 & 0x80000000) != 0)
      {
        v12 = ~v10;
        if (operations_research::Domain::Min((*(this + 53) + 24 * v12)) == 1)
        {
          return 0;
        }

        v11 = operations_research::Domain::Max((*(this + 53) + 24 * v12)) == 0;
      }

      else
      {
        if (!operations_research::Domain::Max((*(this + 53) + 24 * v10)))
        {
          return 0;
        }

        v11 = operations_research::Domain::Min((*(this + 53) + 24 * v10)) == 1;
      }

      v9 = v11;
      v6 |= v9 ^ 1;
      ++v7;
      v8 -= 4;
      if (!v8)
      {
        return v6 & 1;
      }
    }
  }

  v6 = 0;
  return v6 & 1;
}

uint64_t operations_research::sat::PresolveContext::SizeMin(operations_research::sat::PresolveContext *this, int a2)
{
  v2 = (*this + 48);
  if (*v2)
  {
    v2 = (*v2 + 8 * a2 + 7);
  }

  v3 = *v2;
  if (*(v3 + 60) == 19)
  {
    v4 = *(*(v3 + 48) + 40);
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = &operations_research::sat::_LinearExpressionProto_default_instance_;
    }
  }

  else if (qword_2810BECA8)
  {
    v5 = qword_2810BECA8;
  }

  else
  {
    v5 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  return operations_research::sat::PresolveContext::MinOf(this, v5);
}

uint64_t operations_research::sat::PresolveContext::SizeMax(operations_research::sat::PresolveContext *this, int a2)
{
  v2 = (*this + 48);
  if (*v2)
  {
    v2 = (*v2 + 8 * a2 + 7);
  }

  v3 = *v2;
  if (*(v3 + 60) == 19)
  {
    v4 = *(*(v3 + 48) + 40);
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = &operations_research::sat::_LinearExpressionProto_default_instance_;
    }
  }

  else if (qword_2810BECA8)
  {
    v5 = qword_2810BECA8;
  }

  else
  {
    v5 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  return operations_research::sat::PresolveContext::MaxOf(this, v5);
}

BOOL operations_research::sat::PresolveContext::VariableIsUnique(operations_research::sat::PresolveContext *this, int a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 82) - *(this + 81)) >> 3) != *(*this + 56))
  {
    return 0;
  }

  if (~a2 <= a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = ~a2;
  }

  return (*(*(this + 84) + 32 * v2 + 8) & 0xFFFFFFFFFFFFFFFELL) == 2;
}

BOOL operations_research::sat::PresolveContext::VariableIsUniqueAndRemovable(operations_research::sat::PresolveContext *this, int a2)
{
  if ((*(this + 16) & 1) != 0 || 0xAAAAAAAAAAAAAAABLL * ((*(this + 82) - *(this + 81)) >> 3) != *(*this + 56))
  {
    return 0;
  }

  if (~a2 <= a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = ~a2;
  }

  return (*(*(this + 84) + 32 * v2 + 8) & 0xFFFFFFFFFFFFFFFELL) == 2;
}

BOOL operations_research::sat::PresolveContext::VariableWithCostIsUnique(operations_research::sat::PresolveContext *this, int a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 82) - *(this + 81)) >> 3) == *(*this + 56))
  {
    v2 = ~a2 <= a2 ? a2 : ~a2;
    v3 = *(this + 84) + 32 * v2;
    if ((*(v3 + 8) & 0xFFFFFFFFFFFFFFFELL) == 4)
    {
      v4 = *v3;
      if (*v3 <= 1uLL)
      {
        return *(v3 + 16) == -1;
      }

      v6 = 0;
      _X11 = *(v3 + 16);
      __asm { PRFM            #4, [X11] }

      v13 = ((0x378BC386FLL * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * 0x378BC386FLL);
      v14 = vdup_n_s8(v13 & 0x7F);
      v15 = ((v13 >> 7) ^ (_X11 >> 12)) & v4;
      v16 = *(_X11 + v15);
      v17 = vceq_s8(v16, v14);
      if (!v17)
      {
        goto LABEL_11;
      }

      do
      {
LABEL_9:
        if (*(*(v3 + 24) + 4 * ((v15 + (__clz(__rbit64(v17)) >> 3)) & v4)) == -1)
        {
          return 1;
        }

        v17 &= ((v17 & 0x8080808080808080) - 1) & 0x8080808080808080;
      }

      while (v17);
LABEL_11:
      while (!*&vceq_s8(v16, 0x8080808080808080))
      {
        v6 += 8;
        v15 = (v6 + v15) & v4;
        v16 = *(_X11 + v15);
        v17 = vceq_s8(v16, v14);
        if (v17)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return 0;
}

BOOL operations_research::sat::PresolveContext::VariableWithCostIsUniqueAndRemovable(operations_research::sat::PresolveContext *this, int a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 82) - *(this + 81)) >> 3) == *(*this + 56))
  {
    v2 = ~a2 <= a2 ? a2 : ~a2;
    if ((*(this + 16) & 1) == 0 && (*(this + 576) & 1) == 0)
    {
      if (~v2 > v2)
      {
        v2 = ~v2;
      }

      v3 = *(this + 84) + 32 * v2;
      if ((*(v3 + 8) & 0xFFFFFFFFFFFFFFFELL) == 4)
      {
        v4 = *v3;
        if (*v3 <= 1uLL)
        {
          return *(v3 + 16) == -1;
        }

        v6 = 0;
        _X11 = *(v3 + 16);
        __asm { PRFM            #4, [X11] }

        v13 = ((0x378BC386FLL * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * 0x378BC386FLL);
        v14 = vdup_n_s8(v13 & 0x7F);
        v15 = ((v13 >> 7) ^ (_X11 >> 12)) & v4;
        v16 = *(_X11 + v15);
        v17 = vceq_s8(v16, v14);
        if (!v17)
        {
          goto LABEL_15;
        }

        do
        {
LABEL_13:
          if (*(*(v3 + 24) + 4 * ((v15 + (__clz(__rbit64(v17)) >> 3)) & v4)) == -1)
          {
            return 1;
          }

          v17 &= ((v17 & 0x8080808080808080) - 1) & 0x8080808080808080;
        }

        while (v17);
LABEL_15:
        while (!*&vceq_s8(v16, 0x8080808080808080))
        {
          v6 += 8;
          v15 = (v6 + v15) & v4;
          v16 = *(_X11 + v15);
          v17 = vceq_s8(v16, v14);
          if (v17)
          {
            goto LABEL_13;
          }
        }
      }
    }
  }

  return 0;
}

BOOL operations_research::sat::PresolveContext::VariableIsNotUsedAnymore(operations_research::sat::PresolveContext *this, int a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 82) - *(this + 81)) >> 3) != *(*this + 56))
  {
    return 0;
  }

  if (~a2 <= a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = ~a2;
  }

  return *(*(this + 84) + 32 * v2 + 8) < 2uLL;
}

uint64_t operations_research::sat::PresolveContext::MarkVariableAsRemoved(operations_research::sat::PresolveContext *this, int a2)
{
  if (~a2 <= a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = ~a2;
  }

  v6 = v2;
  result = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(this + 1024, &v6, v4);
  if (v5 == 1)
  {
    *v4[1] = v6;
  }

  return result;
}

uint64_t operations_research::sat::PresolveContext::VariableWasRemoved(operations_research::sat::PresolveContext *this, int a2)
{
  v49 = *MEMORY[0x277D85DE8];
  if (~a2 <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = ~a2;
  }

  if (operations_research::Domain::IsFixed((*(this + 53) + 24 * v3)))
  {
    goto LABEL_5;
  }

  v7 = *(this + 128);
  if (v7 > 1)
  {
    v15 = 0;
    v16 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + v3;
    v17 = 0x9DDFEA08EB382D69 * v16;
    v18 = (v16 * 0x9DDFEA08EB382D69) >> 64;
    _X10 = *(this + 130);
    __asm { PRFM            #4, [X10] }

    v25 = v18 ^ v17;
    v26 = vdup_n_s8(v25 & 0x7F);
    v27 = ((v25 >> 7) ^ (_X10 >> 12)) & v7;
    v28 = *(_X10 + v27);
    v29 = vceq_s8(v28, v26);
    if (!v29)
    {
      goto LABEL_30;
    }

LABEL_28:
    while (*(*(this + 131) + 4 * ((v27 + (__clz(__rbit64(v29)) >> 3)) & v7)) != v3)
    {
      v29 &= ((v29 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v29)
      {
LABEL_30:
        while (!*&vceq_s8(v28, 0x8080808080808080))
        {
          v15 += 8;
          v27 = (v15 + v27) & v7;
          v28 = *(_X10 + v27);
          v29 = vceq_s8(v28, v26);
          if (v29)
          {
            goto LABEL_28;
          }
        }

        goto LABEL_5;
      }
    }
  }

  else if (*(this + 129) < 2uLL || *(this + 260) != v3)
  {
LABEL_5:
    result = 0;
    goto LABEL_6;
  }

  if (*(*(this + 84) + 32 * v3 + 8) < 2uLL)
  {
    goto LABEL_49;
  }

  v8 = *(this + 48);
  if (*v8 == 1)
  {
    v47 = "Variable ";
    v48 = 9;
    v44 = v46;
    v45 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v3, v46, v4) - v46;
    v43[0].__r_.__value_.__r.__words[0] = " was removed, yet it appears in some constraints!";
    v43[0].__r_.__value_.__l.__size_ = 49;
    absl::lts_20240722::StrCat(&v47, &v44, v43, __p);
    operations_research::SolverLogger::LogInfo(v8, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/presolve_context.cc", 436, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v9 = *(this + 48);
    if (*v9)
    {
      v47 = "affine relation: ";
      v48 = 17;
      operations_research::sat::PresolveContext::AffineRelationDebugString(this, v3, __p);
      size = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0].__r_.__value_.__r.__words[0];
      }

      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p[0].__r_.__value_.__l.__size_;
      }

      v44 = v11;
      v45 = size;
      absl::lts_20240722::StrCat(&v47, &v44, v43);
      operations_research::SolverLogger::LogInfo(v9, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/presolve_context.cc", 438, v43);
      if (SHIBYTE(v43[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v43[0].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }
  }

  v12 = (*(this + 84) + 32 * v3);
  if (v12[1] < 2uLL)
  {
    goto LABEL_49;
  }

  v13 = (v12 + 2);
  if (*v12 >= 2uLL)
  {
    v14 = v12[2];
    v13 = v12[3];
    if (*v14 <= -2)
    {
      do
      {
        v30 = __clz(__rbit64((*v14 | ~(*v14 >> 7)) & 0x101010101010101)) >> 3;
        v14 = (v14 + v30);
        v13 += v30;
      }

      while (*v14 < -1);
    }
  }

  else
  {
    v14 = &absl::lts_20240722::container_internal::kSooControl;
  }

  if (**(this + 48) == 1)
  {
    do
    {
      v31 = *(this + 48);
      if (*v31 == 1)
      {
        v32 = *v13;
        v47 = "constraint #";
        v48 = 12;
        v33 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v32, v46, v4);
        v44 = v46;
        v45 = v33 - v46;
        v43[0].__r_.__value_.__r.__words[0] = " : ";
        v43[0].__r_.__value_.__l.__size_ = 3;
        if ((v32 & 0x80000000) == 0)
        {
          v34 = (*this + 48);
          if (*v34)
          {
            v34 = (*v34 + 8 * v32 + 7);
          }

          v35 = *v34;
          google::protobuf::Message::ShortDebugString(&v39);
        }

        v40 = 0;
        LOBYTE(v39) = 0;
        __p[0].__r_.__value_.__r.__words[0] = &v39;
        __p[0].__r_.__value_.__l.__size_ = 0;
        absl::lts_20240722::StrCat(&v47, &v44, v43, __p, &v41);
        operations_research::SolverLogger::LogInfo(v31, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/presolve_context.cc", 443, &v41);
        if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v41.__r_.__value_.__l.__data_);
        }

        if (v40 < 0)
        {
          operator delete(v39);
        }
      }

      v37 = *(v14 + 1);
      v14 = (v14 + 1);
      LOBYTE(v36) = v37;
      ++v13;
      if (v37 <= -2)
      {
        do
        {
          v38 = __clz(__rbit64((*v14 | ~(*v14 >> 7)) & 0x101010101010101)) >> 3;
          v14 = (v14 + v38);
          v13 += v38;
          v36 = *v14;
        }

        while (v36 < -1);
      }

      result = 1;
    }

    while (v36 != 255);
  }

  else
  {
LABEL_49:
    result = 1;
  }

LABEL_6:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CC947AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::PresolveContext::AffineRelationDebugString(operations_research::sat::PresolveContext *this@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  operations_research::sat::PresolveContext::GetAffineRelation(this, a2, &v20);
  v6 = &v19;
  operations_research::sat::PresolveContext::RefDebugString(this, a2, v7, &v19);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v19.__r_.__value_.__l.__size_;
    v6 = v19.__r_.__value_.__r.__words[0];
  }

  v10 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v21, v24, v8);
  *&v23 = v24;
  *(&v23 + 1) = v10 - v24;
  operations_research::sat::PresolveContext::RefDebugString(this, v20, v11, &__p);
  v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v13 = __p.__r_.__value_.__l.__size_;
  }

  v28[0] = v6;
  v28[1] = size;
  v28[2] = " = ";
  v28[3] = 3;
  v29 = v23;
  v30 = " * ";
  v31 = 3;
  v32 = p_p;
  v33 = v13;
  v34 = " + ";
  v35 = 3;
  v15 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v22, v27, v12);
  v25 = v27;
  v26 = v15 - v27;
  v36 = v27;
  v37 = v15 - v27;
  absl::lts_20240722::strings_internal::CatPieces(v28, 7, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_11:
    v16 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v19.__r_.__value_.__l.__data_);
  v17 = *MEMORY[0x277D85DE8];
}

void sub_23CC949B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL operations_research::sat::PresolveContext::VariableIsOnlyUsedInEncodingAndMaybeInObjective(operations_research::sat::PresolveContext *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    operations_research::sat::PresolveContext::VariableIsOnlyUsedInEncodingAndMaybeInObjective(&v20);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 82) - *(this + 81)) >> 3) != *(*this + 56))
  {
    return 0;
  }

  v2 = *(*(this + 90) + 4 * a2);
  if (!v2)
  {
    return 0;
  }

  v3 = (*(this + 84) + 32 * a2);
  v4 = v3[1];
  v5 = v4 >> 1;
  if (v4 >> 1 == v2)
  {
    return 1;
  }

  v7 = *v3;
  if (*v3 > 1uLL)
  {
    v8 = 0;
    _X13 = v3[2];
    __asm { PRFM            #4, [X13] }

    v15 = ((0x378BC386FLL * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * 0x378BC386FLL);
    v16 = vdup_n_s8(v15 & 0x7F);
    v17 = ((v15 >> 7) ^ (_X13 >> 12)) & v7;
    v18 = *(_X13 + v17);
    v19 = vceq_s8(v18, v16);
    if (!v19)
    {
      goto LABEL_13;
    }

LABEL_11:
    while (*(v3[3] + 4 * ((v17 + (__clz(__rbit64(v19)) >> 3)) & v7)) != -1)
    {
      v19 &= ((v19 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v19)
      {
LABEL_13:
        while (!*&vceq_s8(v18, 0x8080808080808080))
        {
          v8 += 8;
          v17 = (v8 + v17) & v7;
          v18 = *(_X13 + v17);
          v19 = vceq_s8(v18, v16);
          if (v19)
          {
            goto LABEL_11;
          }
        }

        return 0;
      }
    }
  }

  else if (v4 < 2 || *(v3 + 4) != -1)
  {
    return 0;
  }

  return v5 == v2 + 1;
}

BOOL operations_research::sat::PresolveContext::VariableIsOnlyUsedInLinear1AndOneExtraConstraint(operations_research::sat::PresolveContext *this, int a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 82) - *(this + 81)) >> 3) != *(*this + 56))
  {
    return 0;
  }

  v4 = *(*(this + 90) + 4 * a2);
  if (!v4)
  {
    return 0;
  }

  if (a2 < 0)
  {
    v6[2] = v2;
    v6[3] = v3;
    operations_research::sat::PresolveContext::VariableIsOnlyUsedInLinear1AndOneExtraConstraint(v6);
  }

  return v4 + 1 == *(*(this + 84) + 32 * a2 + 8) >> 1;
}

BOOL operations_research::sat::PresolveContext::DomainContains(operations_research::sat::PresolveContext *this, unsigned int a2, uint64_t a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    return operations_research::Domain::Contains((*(this + 53) + 24 * ~a2), -a3);
  }

  else
  {
    return operations_research::Domain::Contains((*(this + 53) + 24 * a2), a3);
  }
}

BOOL operations_research::sat::PresolveContext::DomainContains(operations_research::sat::PresolveContext *this, const operations_research::sat::LinearExpressionProto *a2, uint64_t a3)
{
  v4 = *(a2 + 4);
  if (v4 > 1)
  {
    operations_research::sat::PresolveContext::DomainContains(v4);
  }

  if (v4 != 1)
  {
    return operations_research::sat::PresolveContext::FixedValue(this, a2) == a3;
  }

  v7 = 0;
  v8 = 1;
  while (!*(*(a2 + 6) + 8 * v7))
  {
LABEL_4:
    if (++v7 >= v8)
    {
      return operations_research::sat::PresolveContext::FixedValue(this, a2) == a3;
    }
  }

  v9 = *(*(a2 + 3) + 4 * v7);
  if (~v9 > v9)
  {
    v9 = ~v9;
  }

  if (operations_research::Domain::IsFixed((*(this + 53) + 24 * v9)))
  {
    v8 = *(a2 + 4);
    goto LABEL_4;
  }

  v11 = a3 - *(a2 + 8);
  v12 = **(a2 + 6);
  v13 = v11 / v12;
  if (v11 % v12)
  {
    return 0;
  }

  v14 = **(a2 + 3);
  if ((v14 & 0x80000000) != 0)
  {
    v15 = (*(this + 53) + 24 * ~v14);
    v13 = -v13;
  }

  else
  {
    v15 = (*(this + 53) + 24 * v14);
  }

  return operations_research::Domain::Contains(v15, v13);
}

uint64_t operations_research::sat::PresolveContext::IntersectDomainWith(operations_research::sat::PresolveContext *this, absl::lts_20240722::numbers_internal *a2, const operations_research::Domain *a3, BOOL *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  if (~a2 <= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = ~a2;
  }

  if ((a2 & 0x80000000) != 0)
  {
    operations_research::Domain::Negation(a3, &v36);
    if (operations_research::Domain::IsIncludedIn((*(this + 53) + 24 * v8), &v36))
    {
      if (v36)
      {
        operator delete(v37);
      }

      goto LABEL_39;
    }

    operations_research::Domain::IntersectionWith((*(this + 53) + 24 * v8), &v36, &v34);
    v10 = *(this + 53) + 24 * v8;
    if (v10 == &v34)
    {
      operations_research::sat::LinearIncrementalEvaluator::ReduceBounds(&v34);
    }

    else
    {
      if (*v10)
      {
        operator delete(*(v10 + 8));
      }

      *v10 = v34;
      *(v10 + 8) = *v35;
    }

    if (v36)
    {
      operator delete(v37);
    }
  }

  else
  {
    if (operations_research::Domain::IsIncludedIn((*(this + 53) + 24 * v8), a3))
    {
LABEL_39:
      result = 1;
      goto LABEL_40;
    }

    operations_research::Domain::IntersectionWith((*(this + 53) + 24 * v8), a3, &v36);
    v9 = *(this + 53) + 24 * v8;
    if (v9 == &v36)
    {
      operations_research::sat::LinearIncrementalEvaluator::ReduceBounds(&v36);
    }

    else
    {
      if (*v9)
      {
        operator delete(*(v9 + 8));
      }

      *v9 = v36;
      *(v9 + 8) = v37;
    }
  }

  if (a4)
  {
    *a4 = 1;
  }

  LODWORD(v36) = v8;
  v11 = v8 >> 6;
  v12 = *(this + 18);
  v13 = *(v12 + 8 * v11);
  if ((v13 & (1 << v8)) == 0)
  {
    *(v12 + 8 * v11) = v13 | (1 << v8);
    std::vector<int>::push_back[abi:ne200100](this + 168, &v36);
  }

  if (!operations_research::Domain::IsEmpty((*(this + 53) + 24 * v8)))
  {
    operations_research::sat::PresolveContext::GetAffineRelation(this, v8, &v36);
    v21 = v36;
    if (v36 == v8)
    {
      goto LABEL_39;
    }

    operations_research::sat::PresolveContext::DomainOf(this, v8, &v30);
    operations_research::Domain::Domain(&__p, -*(&v37 + 1));
    operations_research::Domain::AdditionWith(&v30, &__p, &v32, v23);
    operations_research::Domain::InverseMultiplicationBy(&v32, v37, &v34);
    result = operations_research::sat::PresolveContext::IntersectDomainWith(this, v21, &v34, 0);
    v24 = result;
    if (v34)
    {
      operator delete(v35[0]);
      result = v24;
      if ((v32 & 1) == 0)
      {
LABEL_43:
        if ((__p.__r_.__value_.__s.__data_[0] & 1) == 0)
        {
          goto LABEL_44;
        }

        goto LABEL_50;
      }
    }

    else if ((v32 & 1) == 0)
    {
      goto LABEL_43;
    }

    operator delete(v33);
    result = v24;
    if ((__p.__r_.__value_.__s.__data_[0] & 1) == 0)
    {
LABEL_44:
      if ((v30 & 1) == 0)
      {
        goto LABEL_40;
      }

LABEL_51:
      v26 = v31;
      goto LABEL_52;
    }

LABEL_50:
    operator delete(__p.__r_.__value_.__l.__size_);
    result = v24;
    if ((v30 & 1) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_51;
  }

  v36 = "var #";
  *&v37 = 5;
  v15 = absl::lts_20240722::numbers_internal::FastIntToBuffer(a2, &v35[1], v14);
  v34 = &v35[1];
  v35[0] = (v15 - &v35[1]);
  v32 = " as empty domain after intersecting with ";
  v33 = 41;
  operations_research::Domain::ToString(a3, v27);
  v16 = v28;
  if ((v28 & 0x80u) == 0)
  {
    v17 = v27;
  }

  else
  {
    v17 = v27[0];
  }

  if ((v28 & 0x80u) != 0)
  {
    v16 = v27[1];
  }

  v30 = v17;
  v31 = v16;
  absl::lts_20240722::StrCat(&v36, &v34, &v32, &v30, &__p);
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

  result = operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(this, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v25 = result;
    operator delete(__p.__r_.__value_.__l.__data_);
    result = v25;
    if (v28 < 0)
    {
LABEL_47:
      v24 = result;
      v26 = v27[0];
LABEL_52:
      operator delete(v26);
      result = v24;
    }
  }

  else if (v28 < 0)
  {
    goto LABEL_47;
  }

LABEL_40:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CC95158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, void *a17, int a18, __int16 a19, char a20, char a21, char a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, void *__p)
{
  if (a34)
  {
    operator delete(__p);
    if ((a28 & 1) == 0)
    {
LABEL_3:
      if ((a16 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a28 & 1) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a29);
  if ((a16 & 1) == 0)
  {
LABEL_4:
    if ((a22 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(exception_object);
    }

LABEL_9:
    operator delete(a23);
    _Unwind_Resume(exception_object);
  }

LABEL_8:
  operator delete(a17);
  if ((a22 & 1) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void operations_research::sat::PresolveContext::GetAffineRelation(operations_research::sat::PresolveContext *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (~a2 <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = ~a2;
  }

  v4 = v3;
  v5 = *(this + 113);
  if (v3 >= ((*(this + 114) - v5) >> 2) || *(v5 + 4 * v3) == v3)
  {
    v6 = 0;
    v7 = 1;
    *a3 = v3;
    *(a3 + 8) = 1;
    *(a3 + 16) = 0;
    if ((a2 & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    *(a3 + 8) = -v7;
    *(a3 + 16) = -v6;
    return;
  }

  v10 = a3;
  *(this + 126) = *(this + 125);
  v20 = v3;
  do
  {
    std::vector<int>::push_back[abi:ne200100](this + 1000, &v20);
    v11 = *(this + 113);
    v20 = *(v11 + 4 * v20);
    v12 = v20;
  }

  while (v20 != *(v11 + 4 * v20));
  v13 = *(this + 126);
  v14 = *(this + 125);
  v15 = *(this + 116);
  for (i = *(this + 119); v13 != v14; *(v11 + 4 * v17) = v12)
  {
    v17 = *(v13 - 4);
    v13 -= 4;
    v18 = *(v11 + 4 * v17);
    *(i + 8 * v17) += *(i + 8 * v18) * *(v15 + 8 * v17);
    *(v15 + 8 * v17) *= *(v15 + 8 * v18);
  }

  v19 = *(v11 + 4 * v4);
  v7 = *(v15 + 8 * v4);
  v6 = *(i + 8 * v4);
  a3 = v10;
  *v10 = v19;
  *(v10 + 8) = v7;
  *(v10 + 16) = v6;
  if (a2 < 0)
  {
    goto LABEL_13;
  }
}

uint64_t operations_research::sat::PresolveContext::IntersectDomainWith(operations_research::sat::PresolveContext *this, const operations_research::sat::LinearExpressionProto *a2, const operations_research::Domain *a3, BOOL *a4)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 4);
  if (v7 == 1)
  {
    v10 = **(a2 + 3);
    operations_research::Domain::Domain(v15, -*(a2 + 8));
    operations_research::Domain::AdditionWith(a3, v15, v16, v11);
    operations_research::Domain::InverseMultiplicationBy(v16, **(a2 + 6), v17);
    v8 = operations_research::sat::PresolveContext::IntersectDomainWith(this, v10, v17, a4);
    if (v17[0])
    {
      operator delete(v17[1]);
      if ((v16[0] & 1) == 0)
      {
LABEL_7:
        if ((v15[0] & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }
    }

    else if ((v16[0] & 1) == 0)
    {
      goto LABEL_7;
    }

    operator delete(v16[1]);
    if ((v15[0] & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_12:
    operator delete(v15[1]);
    goto LABEL_13;
  }

  if (!v7 && !operations_research::Domain::Contains(a3, *(a2 + 8)))
  {
    google::protobuf::Message::ShortDebugString(&v14);
  }

  v8 = 1;
LABEL_13:
  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_23CC955AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, void *a34)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if (a14 < 0)
    {
LABEL_5:
      operator delete(a9);
      if ((a20 & 0x80000000) == 0)
      {
LABEL_9:
        _Unwind_Resume(a1);
      }

LABEL_8:
      operator delete(a15);
      _Unwind_Resume(a1);
    }
  }

  else if (a14 < 0)
  {
    goto LABEL_5;
  }

  if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

uint64_t operations_research::sat::PresolveContext::SetLiteralToFalse(operations_research::sat::PresolveContext *this, unsigned int a2)
{
  if (~a2 <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = ~a2;
  }

  operations_research::Domain::Domain(v6, a2 >> 31);
  result = operations_research::sat::PresolveContext::IntersectDomainWith(this, v3, v6, 0);
  if (v6[0])
  {
    v5 = result;
    operator delete(v6[1]);
    return v5;
  }

  return result;
}

void sub_23CC95708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p)
{
  if (a10)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::PresolveContext::SetLiteralToTrue(operations_research::sat::PresolveContext *this, int a2)
{
  if (a2 > ~a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = ~a2;
  }

  operations_research::Domain::Domain(v6, a2 >= 0);
  result = operations_research::sat::PresolveContext::IntersectDomainWith(this, v3, v6, 0);
  if (v6[0])
  {
    v5 = result;
    operator delete(v6[1]);
    return v5;
  }

  return result;
}

void sub_23CC95794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p)
{
  if (a10)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::PresolveContext::ConstraintIsInactive(operations_research::sat::PresolveContext *this, int a2)
{
  v2 = (*this + 48);
  if (*v2)
  {
    v2 = (*v2 + 8 * a2 + 7);
  }

  v3 = *v2;
  if (!*(v3 + 60))
  {
    return 1;
  }

  v4 = *(v3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = *(v3 + 24);
  v7 = 4 * v4;
  while (1)
  {
    v9 = *v6;
    if ((*v6 & 0x80000000) != 0)
    {
      result = operations_research::Domain::Min((*(this + 53) + 24 * ~v9));
      if (result == 1)
      {
        return result;
      }

      goto LABEL_7;
    }

    if (!operations_research::Domain::Max((*(this + 53) + 24 * v9)))
    {
      return 1;
    }

LABEL_7:
    ++v6;
    v7 -= 4;
    if (!v7)
    {
      return 0;
    }
  }
}

void operations_research::sat::PresolveContext::UpdateRuleStats(uint64_t a1, __int128 *a2, int a3, unint64_t a4, const unint64_t *a5)
{
  if (*(a2 + 23) < 0)
  {
    if (*(a2 + 1) <= 3uLL || **a2 != 1329876820)
    {
LABEL_9:
      *(a1 + 24) += a3;
      v7 = 2;
      if (**(a1 + 384) != 1)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  else if (*(a2 + 23) <= 3u || *a2 != 1329876820)
  {
    goto LABEL_9;
  }

  v7 = 3;
  if (**(a1 + 384) != 1)
  {
    return;
  }

LABEL_10:
  if (dword_27E25D240 >= v7)
  {
    v13 = a1;
    IsEnabled = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled(&operations_research::sat::PresolveContext::UpdateRuleStats(std::string const&,int)::$_0::operator() const(void)::site, dword_27E25D240, v7);
    a1 = v13;
    if (IsEnabled)
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v15, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/presolve_context.cc", 602);
      v11 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v15, v7);
      v14 = *(v13 + 24);
      v12 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v11, &v14);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v12, " : ", 3uLL);
      absl::lts_20240722::log_internal::LogMessage::operator<<(v12, a2);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v15);
      a1 = v13;
    }
  }

  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,int>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,int>>>::find_or_prepare_insert_non_soo<std::string>((a1 + 1088), a2, a4, a5, v15);
  if (v17 == 1)
  {
    v8 = v16;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v16, *a2, *(a2 + 1));
    }

    else
    {
      v9 = *a2;
      v16->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&v8->__r_.__value_.__l.__data_ = v9;
    }

    LODWORD(v8[1].__r_.__value_.__l.__data_) = 0;
  }

  LODWORD(v16[1].__r_.__value_.__l.__data_) += a3;
}

void sub_23CC95A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void operations_research::sat::PresolveContext::MaybeResizeIntervalData(std::vector<int> *this)
{
  end = this[31].__end_;
  begin = this[31].__begin_;
  v3 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  v4 = (-1431655765 * ((this[27].__end_ - this[27].__begin_) >> 3));
  if (v4 != v3)
  {
    if (v4 <= v3)
    {
      if (v4 < v3)
      {
        v6 = &begin[6 * v4];
        if (end != v6)
        {
          v7 = this[31].__end_;
          do
          {
            v9 = *(v7 - 3);
            v7 -= 6;
            v8 = v9;
            if (v9)
            {
              *(end - 2) = v8;
              operator delete(v8);
            }

            end = v7;
          }

          while (v7 != v6);
        }

        this[31].__end_ = v6;
      }
    }

    else
    {
      std::vector<std::vector<int>>::__append(&this[31], v4 - v3);
    }

    v10 = this[32].__begin_;
    v11 = this[32].__end_ - v10;
    if (v4 <= v11)
    {
      if (v4 < v11)
      {
        this[32].__end_ = &v10[v4];
      }
    }

    else
    {

      std::vector<int>::__append(this + 32, v4 - v11);
    }
  }
}

void operations_research::sat::PresolveContext::AddVariableUsage(std::vector<int> *this, int a2)
{
  v4 = (this->__begin_ + 12);
  v5 = *v4;
  v29 = a2;
  if (v5)
  {
    v4 = (v5 + 8 * a2 + 7);
  }

  v6 = *v4;
  operations_research::sat::UsedVariables(*v4, __p);
  begin = this[27].__begin_;
  v8 = &begin[6 * a2];
  v9 = *v8;
  if (*v8)
  {
    *(v8 + 1) = v9;
    operator delete(v9);
    *v8 = 0;
    *(v8 + 1) = 0;
    *(v8 + 2) = 0;
    begin = this[27].__begin_;
  }

  *v8 = *__p;
  *(v8 + 2) = v28;
  v10 = &begin[6 * a2];
  v11 = *v10;
  v12 = v10[1];
  while (v11 != v12)
  {
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&this[28].__begin_[8 * *v11], &v29, __p);
    if (v28 == 1)
    {
      *__p[1] = v29;
    }

    ++v11;
  }

  operations_research::sat::UsedIntervals(v6, __p);
  if (__p[0] != __p[1])
  {
    operations_research::sat::PresolveContext::MaybeResizeIntervalData(this);
    v13 = &this[31].__begin_[6 * v29];
    v14 = *v13;
    *v13 = __p[0];
    __p[0] = v14;
    v15 = *(v13 + 8);
    *(v13 + 8) = __p[1];
    __p[1] = v15;
    v16 = *(v13 + 16);
    *(v13 + 16) = v28;
    v28 = v16;
    v17 = *v13;
    v18 = *(v13 + 8);
    if (v17 != v18)
    {
      v19 = this[32].__begin_;
      do
      {
        v20 = *v17++;
        ++v19[v20];
      }

      while (v17 != v18);
    }
  }

  v21 = v29;
  v22 = this[29].__begin_;
  v23 = v22[v29];
  if ((v23 & 0x80000000) == 0)
  {
    --this[30].__begin_[v23];
  }

  if (*(v6 + 15) != 12 || (v24 = *(v6 + 6), *(v24 + 16) != 1))
  {
    v22[v21] = -1;
    v26 = __p[0];
    if (!__p[0])
    {
      return;
    }

    goto LABEL_23;
  }

  v25 = **(v24 + 24);
  if (~v25 > v25)
  {
    v25 = ~v25;
  }

  v22[v21] = v25;
  ++this[30].__begin_[v25];
  v26 = __p[0];
  if (__p[0])
  {
LABEL_23:
    __p[1] = v26;
    operator delete(v26);
  }
}

void sub_23CC95D64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(std::vector<int> *this, unsigned int a2)
{
  v82 = a2;
  if ((this[17].__end_ & 1) == 0)
  {
    v3 = (this->__begin_ + 12);
    if (*v3)
    {
      v3 = (*v3 + 8 * a2 + 7);
    }

    v4 = *v3;
    operations_research::sat::UsedIntervals(*v3, &v79);
    if (0xAAAAAAAAAAAAAAABLL * ((this[31].__end_ - this[31].__begin_) >> 3) > v82 || v79 != v80)
    {
      operations_research::sat::PresolveContext::MaybeResizeIntervalData(this);
      v5 = v82;
      begin = this[31].__begin_;
      v7 = &begin[6 * v82];
      v8 = *v7;
      v9 = v7[1];
      if (v8 != v9)
      {
        v10 = this[32].__begin_;
        do
        {
          v11 = *v8++;
          --v10[v11];
        }

        while (v8 != v9);
        v5 = v82;
        v8 = *&begin[6 * v82];
      }

      v12 = &begin[6 * v5];
      *v12 = v79;
      v79 = v8;
      v13 = v12[1];
      v12[1] = v80;
      v80 = v13;
      v14 = v12[2];
      v12[2] = v81;
      v81 = v14;
      v15 = *v12;
      v16 = v12[1];
      if (*v12 != v16)
      {
        v17 = this[32].__begin_;
        do
        {
          v18 = *v15++;
          ++v17[v18];
        }

        while (v15 != v16);
      }
    }

    operations_research::sat::UsedVariables(v4, &__p);
    v19 = &this[27].__begin_[6 * v82];
    v20 = *v19;
    v21 = (*(v19 + 1) - *v19) >> 2;
    v23 = __p;
    v22 = v77;
    v71 = v4;
    v24 = 0;
    if (__p != v77)
    {
      v72 = v77;
      do
      {
        v25 = *v23;
        if (v24 < v21)
        {
          while (1)
          {
            v26 = *(v20 + 4 * v24);
            if (v26 >= v25)
            {
              break;
            }

            v27 = this[28].__begin_;
            v28 = &v27[8 * v26];
            v29 = *v28;
            if (*v28 > 1)
            {
              v30 = 0;
              _X12 = v28[2];
              __asm { PRFM            #4, [X12] }

              v37 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v82) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v82));
              v38 = vdup_n_s8(v37 & 0x7F);
              v39 = ((v37 >> 7) ^ (_X12 >> 12)) & v29;
              v40 = *(_X12 + v39);
              v41 = vceq_s8(v40, v38);
              if (!v41)
              {
                goto LABEL_28;
              }

              do
              {
LABEL_26:
                v42 = (v39 + (__clz(__rbit64(v41)) >> 3)) & v29;
                if (*(v28[3] + 4 * v42) == v82)
                {
                  absl::lts_20240722::container_internal::EraseMetaOnly(v28, v42);
                  v27 = this[28].__begin_;
                  goto LABEL_32;
                }

                v41 &= ((v41 & 0x8080808080808080) - 1) & 0x8080808080808080;
              }

              while (v41);
LABEL_28:
              while (!*&vceq_s8(v40, 0x8080808080808080))
              {
                v30 += 8;
                v39 = (v30 + v39) & v29;
                v40 = *(_X12 + v39);
                v41 = vceq_s8(v40, v38);
                if (v41)
                {
                  goto LABEL_26;
                }
              }
            }

            else if (v28[1] >= 2 && *(v28 + 4) == v82)
            {
              v28[1] = 0;
            }

LABEL_32:
            if (*&v27[8 * v26 + 2] <= 7uLL)
            {
              v73 = v26;
              end = this[8].__end_;
              v44 = *&end[2 * (v26 >> 6)];
              if ((v44 & (1 << v26)) == 0)
              {
                *&end[2 * (v26 >> 6)] = v44 | (1 << v26);
                std::vector<int>::push_back[abi:ne200100](&this[9].__end_, &v73);
              }
            }

            if (++v24 == v21)
            {
              v24 = v21;
              goto LABEL_38;
            }
          }

          if (v26 == v25)
          {
            ++v24;
            v22 = v72;
            goto LABEL_16;
          }

LABEL_38:
          v22 = v72;
        }

        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&this[28].__begin_[8 * v25], &v82, &v73);
        if (v75 == 1)
        {
          *v74 = v82;
        }

LABEL_16:
        ++v23;
      }

      while (v23 != v22);
    }

    if (v24 < v21)
    {
      v45 = v24;
      do
      {
        v46 = *(v20 + 4 * v45);
        v47 = this[28].__begin_;
        v48 = &v47[8 * v46];
        v49 = *v48;
        if (*v48 > 1)
        {
          v50 = 0;
          _X12 = v48[2];
          __asm { PRFM            #4, [X12] }

          v53 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v82) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v82));
          v54 = vdup_n_s8(v53 & 0x7F);
          v55 = ((v53 >> 7) ^ (_X12 >> 12)) & v49;
          v56 = *(_X12 + v55);
          v57 = vceq_s8(v56, v54);
          if (!v57)
          {
            goto LABEL_51;
          }

          do
          {
LABEL_49:
            v58 = (v55 + (__clz(__rbit64(v57)) >> 3)) & v49;
            if (*(v48[3] + 4 * v58) == v82)
            {
              absl::lts_20240722::container_internal::EraseMetaOnly(v48, v58);
              v47 = this[28].__begin_;
              goto LABEL_55;
            }

            v57 &= ((v57 & 0x8080808080808080) - 1) & 0x8080808080808080;
          }

          while (v57);
LABEL_51:
          while (!*&vceq_s8(v56, 0x8080808080808080))
          {
            v50 += 8;
            v55 = (v50 + v55) & v49;
            v56 = *(_X12 + v55);
            v57 = vceq_s8(v56, v54);
            if (v57)
            {
              goto LABEL_49;
            }
          }
        }

        else if (v48[1] >= 2 && *(v48 + 4) == v82)
        {
          v48[1] = 0;
        }

LABEL_55:
        if (*&v47[8 * v46 + 2] <= 7uLL)
        {
          v73 = v46;
          v59 = this[8].__end_;
          v60 = *&v59[2 * (v46 >> 6)];
          if ((v60 & (1 << v46)) == 0)
          {
            *&v59[2 * (v46 >> 6)] = v60 | (1 << v46);
            std::vector<int>::push_back[abi:ne200100](&this[9].__end_, &v73);
          }
        }

        ++v45;
      }

      while (v45 != v21);
    }

    v61 = v82;
    v62 = &this[27].__begin_[6 * v82];
    v63 = *v62;
    *v62 = __p;
    __p = v63;
    v64 = *(v62 + 8);
    *(v62 + 8) = v77;
    v77 = v64;
    v65 = *(v62 + 16);
    *(v62 + 16) = v78;
    v78 = v65;
    v66 = this[29].__begin_;
    v67 = v66[v61];
    if ((v67 & 0x80000000) == 0)
    {
      --this[30].__begin_[v67];
    }

    if (*(v71 + 15) == 12 && (v68 = *(v71 + 6), *(v68 + 16) == 1))
    {
      v69 = **(v68 + 24);
      if (~v69 > v69)
      {
        v69 = ~v69;
      }

      v66[v61] = v69;
      ++this[30].__begin_[v69];
      v70 = __p;
      if (!__p)
      {
        goto LABEL_68;
      }
    }

    else
    {
      v66[v61] = -1;
      v70 = __p;
      if (!__p)
      {
        goto LABEL_68;
      }
    }

    v77 = v70;
    operator delete(v70);
LABEL_68:
    if (v79)
    {
      v80 = v79;
      operator delete(v79);
    }
  }
}

void sub_23CC9632C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(std::vector<int> *this)
{
  if ((this[17].__end_ & 1) == 0)
  {
    end = this[27].__end_;
    begin = this[27].__begin_;
    v4 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
    v5 = this->__begin_[14];
    if (v5 <= v4)
    {
      if (v5 < v4)
      {
        v6 = &begin[6 * v5];
        if (end != v6)
        {
          v7 = this[27].__end_;
          do
          {
            v9 = *(v7 - 3);
            v7 -= 6;
            v8 = v9;
            if (v9)
            {
              *(end - 2) = v8;
              operator delete(v8);
            }

            end = v7;
          }

          while (v7 != v6);
        }

        this[27].__end_ = v6;
      }
    }

    else
    {
      std::vector<std::vector<int>>::__append(&this[27], v5 - v4);
    }

    __x = -1;
    v10 = this[29].__begin_;
    v11 = this[29].__end_ - v10;
    if (v5 <= v11)
    {
      if (v5 < v11)
      {
        this[29].__end_ = &v10[v5];
      }
    }

    else
    {
      std::vector<int>::__append(this + 29, v5 - v11, &__x);
    }

    if (v5 > v4)
    {
      do
      {
        operations_research::sat::PresolveContext::AddVariableUsage(this, v4);
        LODWORD(v4) = v4 + 1;
      }

      while (v5 != v4);
    }
  }
}

uint64_t operations_research::sat::PresolveContext::AddRelation(operations_research::sat::PresolveContext *this, uint64_t a2, signed int a3, uint64_t a4, uint64_t a5, operations_research::AffineRelation *a6)
{
  if (a4 >= 0)
  {
    v9 = a4;
  }

  else
  {
    v9 = -a4;
  }

  if (v9 == 1)
  {
    if (operations_research::sat::PresolveContext::VariableWasRemoved(this, a2))
    {
      operations_research::sat::PresolveContext::AddRelation(v59);
    }

    if (operations_research::sat::PresolveContext::VariableWasRemoved(this, a3))
    {
      operations_research::sat::PresolveContext::AddRelation(v59);
    }

    v11 = *(a6 + 1);
    v12 = (*(a6 + 2) - v11) >> 2;
    if (v12 <= a2)
    {
      v13 = a2;
    }

    else
    {
      v13 = a2;
      if (*(v11 + 4 * a2) != a2)
      {
        *(a6 + 14) = *(a6 + 13);
        v59[0] = a2;
        do
        {
          std::vector<int>::push_back[abi:ne200100](a6 + 104, v59);
          v14 = *(a6 + 1);
          v59[0] = *(v14 + 4 * v59[0]);
          v15 = v59[0];
        }

        while (v59[0] != *(v14 + 4 * v59[0]));
        v17 = *(a6 + 13);
        v16 = *(a6 + 14);
        v11 = v14;
        if (v16 != v17)
        {
          v18 = *(a6 + 4);
          v19 = *(a6 + 7);
          do
          {
            v20 = *(v16 - 4);
            v16 -= 4;
            v21 = *(v14 + 4 * v20);
            *(v19 + 8 * v20) += *(v19 + 8 * v21) * *(v18 + 8 * v20);
            *(v18 + 8 * v20) *= *(v18 + 8 * v21);
            *(v14 + 4 * v20) = v15;
          }

          while (v16 != v17);
          v11 = *(a6 + 1);
        }

        v13 = *(v14 + 4 * a2);
        v12 = (*(a6 + 2) - v11) >> 2;
      }
    }

    v23 = a3;
    if (v12 > a3)
    {
      v23 = a3;
      if (*(v11 + 4 * a3) != a3)
      {
        *(a6 + 14) = *(a6 + 13);
        v59[0] = a3;
        do
        {
          std::vector<int>::push_back[abi:ne200100](a6 + 104, v59);
          v24 = *(a6 + 1);
          v59[0] = *(v24 + 4 * v59[0]);
          v25 = v59[0];
        }

        while (v59[0] != *(v24 + 4 * v59[0]));
        v27 = *(a6 + 13);
        v26 = *(a6 + 14);
        if (v26 != v27)
        {
          v28 = *(a6 + 4);
          v29 = *(a6 + 7);
          do
          {
            v30 = *(v26 - 4);
            v26 -= 4;
            v31 = *(v24 + 4 * v30);
            *(v29 + 8 * v30) += *(v29 + 8 * v31) * *(v28 + 8 * v30);
            *(v28 + 8 * v30) *= *(v28 + 8 * v31);
            *(v24 + 4 * v30) = v25;
          }

          while (v26 != v27);
        }

        v23 = *(v24 + 4 * a3);
      }
    }

    if ((v13 & 0x80000000) != 0)
    {
      v39 = operations_research::Domain::Max((*(this + 53) + 24 * ~v13));
      if (v39 >= 0)
      {
        v33 = v39;
      }

      else
      {
        v33 = -v39;
      }

      v40 = -operations_research::Domain::Min((*(this + 53) + 24 * ~v13));
      if (v40 >= 0)
      {
        v41 = v40;
      }

      else
      {
        v41 = -v40;
      }

      if (v33 <= v41)
      {
        v33 = v41;
      }

      if ((v23 & 0x80000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v32 = operations_research::Domain::Min((*(this + 53) + 24 * v13));
      if (v32 >= 0)
      {
        v33 = v32;
      }

      else
      {
        v33 = -v32;
      }

      v34 = operations_research::Domain::Max((*(this + 53) + 24 * v13));
      if (v34 >= 0)
      {
        v35 = v34;
      }

      else
      {
        v35 = -v34;
      }

      if (v33 <= v35)
      {
        v33 = v35;
      }

      if ((v23 & 0x80000000) == 0)
      {
LABEL_38:
        v36 = operations_research::Domain::Min((*(this + 53) + 24 * v23));
        if (v36 >= 0)
        {
          v37 = v36;
        }

        else
        {
          v37 = -v36;
        }

        v38 = operations_research::Domain::Max((*(this + 53) + 24 * v23));
        goto LABEL_55;
      }
    }

    v42 = operations_research::Domain::Max((*(this + 53) + 24 * ~v23));
    if (v42 >= 0)
    {
      v37 = v42;
    }

    else
    {
      v37 = -v42;
    }

    v38 = -operations_research::Domain::Min((*(this + 53) + 24 * ~v23));
LABEL_55:
    if (v38 >= 0)
    {
      v43 = v38;
    }

    else
    {
      v43 = -v38;
    }

    if (v37 <= v43)
    {
      v44 = v43;
    }

    else
    {
      v44 = v37;
    }

    v45 = v44 < v33;
    v54 = v33 == v44;
    v46 = v33 < v44;
    v48 = a5;
    v47 = a4;
    if (!v54)
    {
      goto LABEL_71;
    }

    if ((v13 & 0x80000000) != 0)
    {
      v49 = -operations_research::Domain::Max((*(this + 53) + 24 * ~v13));
      if ((v23 & 0x80000000) == 0)
      {
LABEL_65:
        v50 = operations_research::Domain::Min((*(this + 53) + 24 * v23));
        v51 = operations_research::Domain::Min((*(this + 53) + 24 * v23));
        v46 = v49 >= v50;
        if ((v13 & 0x80000000) == 0)
        {
LABEL_66:
          v52 = operations_research::Domain::Min((*(this + 53) + 24 * v13));
LABEL_70:
          v45 = v51 >= v52;
          v48 = a5;
          v47 = a4;
LABEL_71:
          v54 = !v46 || !v45;
          if (v54)
          {
            v55 = v46;
          }

          else
          {
            v55 = v13 < v23;
          }

          if (v54)
          {
            v56 = v45;
          }

          else
          {
            v56 = v13 >= v23;
          }

          return operations_research::AffineRelation::TryAdd(a6, a2, a3, v47, v48, v55, v56);
        }

LABEL_69:
        v52 = -operations_research::Domain::Max((*(this + 53) + 24 * ~v13));
        goto LABEL_70;
      }
    }

    else
    {
      v49 = operations_research::Domain::Min((*(this + 53) + 24 * v13));
      if ((v23 & 0x80000000) == 0)
      {
        goto LABEL_65;
      }
    }

    v53 = -operations_research::Domain::Max((*(this + 53) + 24 * ~v23));
    v51 = -operations_research::Domain::Max((*(this + 53) + 24 * ~v23));
    v46 = v49 >= v53;
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_69;
  }

  return operations_research::AffineRelation::TryAdd(a6, a2, a3, a4, a5, 1, 1);
}

uint64_t operations_research::AffineRelation::TryAdd(operations_research::AffineRelation *this, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  if (!a4)
  {
    operations_research::AffineRelation::TryAdd(v47, a2);
  }

  v8 = a2;
  if (a2 == a3)
  {
    operations_research::AffineRelation::TryAdd(a2);
  }

  if ((a2 & 0x80000000) != 0)
  {
    operations_research::AffineRelation::TryAdd(a2);
  }

  if ((a3 & 0x80000000) != 0)
  {
    operations_research::AffineRelation::TryAdd(a3);
  }

  if (a2 <= a3)
  {
    v14 = a3;
  }

  else
  {
    v14 = a2;
  }

  operations_research::AffineRelation::IncreaseSizeOfMemberVectors(this, v14 + 1);
  v15 = *(this + 10);
  v16 = *(v15 + 4 * v8);
  v17 = *this;
  if (v16 == v17)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(*(v15 + 4 * v8), v16, "size_[x] != kSizeForRemovedEntry");
  }

  if (*(v15 + 4 * a3) == v17)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v17, *this, "size_[y] != kSizeForRemovedEntry");
  }

  v18 = *(this + 13);
  *(this + 14) = v18;
  v47[0] = v8;
  v19 = *(this + 1);
  if (*(v19 + 4 * v8) != v8)
  {
    do
    {
      std::vector<int>::push_back[abi:ne200100](this + 104, v47);
      v19 = *(this + 1);
      v47[0] = *(v19 + 4 * v47[0]);
      v20 = v47[0];
    }

    while (v47[0] != *(v19 + 4 * v47[0]));
    v18 = *(this + 13);
    v21 = *(this + 14);
    if (v21 != v18)
    {
      v22 = *(this + 4);
      v23 = *(this + 7);
      do
      {
        v24 = *(v21 - 4);
        v21 -= 4;
        v25 = *(v19 + 4 * v24);
        *(v23 + 8 * v24) += *(v23 + 8 * v25) * *(v22 + 8 * v24);
        *(v22 + 8 * v24) *= *(v22 + 8 * v25);
        *(v19 + 4 * v24) = v20;
      }

      while (v21 != v18);
    }
  }

  *(this + 14) = v18;
  v47[0] = a3;
  if (*(v19 + 4 * a3) != a3)
  {
    do
    {
      std::vector<int>::push_back[abi:ne200100](this + 104, v47);
      v19 = *(this + 1);
      v47[0] = *(v19 + 4 * v47[0]);
      v26 = v47[0];
    }

    while (v47[0] != *(v19 + 4 * v47[0]));
    v28 = *(this + 13);
    v27 = *(this + 14);
    if (v27 != v28)
    {
      v29 = *(this + 4);
      v30 = *(this + 7);
      do
      {
        v31 = *(v27 - 4);
        v27 -= 4;
        v32 = *(v19 + 4 * v31);
        *(v30 + 8 * v31) += *(v30 + 8 * v32) * *(v29 + 8 * v31);
        *(v29 + 8 * v31) *= *(v29 + 8 * v32);
        *(v19 + 4 * v31) = v26;
      }

      while (v27 != v28);
    }
  }

  v33 = *(v19 + 4 * v8);
  v34 = *(v19 + 4 * a3);
  if (v33 == v34)
  {
    return 0;
  }

  v36 = *(this + 4);
  v37 = *(v36 + 8 * v8);
  v38 = *(v36 + 8 * a3) * a4;
  v39 = *(this + 7);
  v40 = a5 + *(v39 + 8 * a3) * a4 - *(v39 + 8 * v8);
  if (a7 && !(v38 % v37))
  {
    v41 = v40 % v37 == 0;
    if (!a6)
    {
LABEL_30:
      v42 = 0;
      v43 = v33;
      v44 = v34;
      if (!v41)
      {
        goto LABEL_27;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v41 = 0;
    if (!a6)
    {
      goto LABEL_30;
    }
  }

  if (v37 % v38)
  {
    goto LABEL_30;
  }

  v42 = v40 % v38 == 0;
  v43 = v33;
  v44 = v34;
  if (!v41)
  {
LABEL_27:
    if (!v42)
    {
      return 0;
    }

    v45 = *(this + 10);
    goto LABEL_33;
  }

LABEL_31:
  v45 = *(this + 10);
  if (!v42 || *(v45 + 4 * v8) <= *(v45 + 4 * a3))
  {
    *(v19 + 4 * v43) = v34;
    *(v45 + 4 * v44) += *(v45 + 4 * v43);
    *(v36 + 8 * v43) = v38 / v37;
    v46 = v40 / v37;
    goto LABEL_35;
  }

LABEL_33:
  *(v19 + 4 * v44) = v33;
  *(v45 + 4 * v43) += *(v45 + 4 * v44);
  *(v36 + 8 * v44) = v37 / v38;
  v43 = v44;
  v46 = -v40 / v38;
LABEL_35:
  *(v39 + 8 * v43) = v46;
  ++*(this + 1);
  return 1;
}

uint64_t operations_research::sat::PresolveContext::PropagateAffineRelation(operations_research::sat::PresolveContext *this, int a2)
{
  if (~a2 <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = ~a2;
  }

  operations_research::sat::PresolveContext::GetAffineRelation(this, v3, &v8);
  v4 = v8;
  if (v8 == v3)
  {
    return 1;
  }

  v6 = v9;
  v7 = v10;

  return operations_research::sat::PresolveContext::PropagateAffineRelation(this, v3, v4, v6, v7);
}

uint64_t operations_research::sat::PresolveContext::PropagateAffineRelation(operations_research::sat::PresolveContext *this, int a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a3 >= 0)
  {
    v7 = a4;
  }

  else
  {
    v7 = -a4;
  }

  v8 = (a2 ^ (a2 >> 31));
  if (a2 >= 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = -v7;
  }

  if (a2 >= 0)
  {
    v10 = a5;
  }

  else
  {
    v10 = -a5;
  }

  operations_research::sat::PresolveContext::DomainOf(this, a2 ^ (a2 >> 31), v19);
  operations_research::Domain::Domain(&v17, -v10);
  operations_research::Domain::AdditionWith(v19, &v17, &v21, v11);
  operations_research::Domain::InverseMultiplicationBy(&v21, v9, &v23);
  v12 = (a3 ^ (a3 >> 31));
  v13 = operations_research::sat::PresolveContext::IntersectDomainWith(this, v12, &v23, 0);
  if (v23)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
LABEL_12:
      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_22;
    }
  }

  else if ((v21 & 1) == 0)
  {
    goto LABEL_12;
  }

  operator delete(v22);
  if ((v17 & 1) == 0)
  {
LABEL_13:
    if ((v19[0] & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(v18);
  if ((v19[0] & 1) == 0)
  {
LABEL_14:
    if (v13)
    {
      goto LABEL_15;
    }

    return 0;
  }

LABEL_23:
  operator delete(v20);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  operations_research::sat::PresolveContext::DomainOf(this, v12, v19);
  operations_research::Domain::MultiplicationBy(v19, 0, v9, &v21);
  operations_research::Domain::Domain(&v17, v10);
  operations_research::Domain::AdditionWith(&v21, &v17, &v23, v14);
  v15 = operations_research::sat::PresolveContext::IntersectDomainWith(this, v8, &v23, 0);
  if ((v23 & 1) == 0)
  {
    if ((v17 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_26:
    operator delete(v18);
    if ((v21 & 1) == 0)
    {
LABEL_18:
      if ((v19[0] & 1) == 0)
      {
        return v15;
      }

      goto LABEL_28;
    }

    goto LABEL_27;
  }

  operator delete(__p);
  if (v17)
  {
    goto LABEL_26;
  }

LABEL_17:
  if ((v21 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_27:
  operator delete(v22);
  if (v19[0])
  {
LABEL_28:
    operator delete(v20);
  }

  return v15;
}

void sub_23CC96ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, void *a10, uint64_t a11, char a12, void *a13, uint64_t a14, char a15, void *a16, uint64_t a17, char a18, void *__p)
{
  if (a18)
  {
    operator delete(__p);
    if ((a9 & 1) == 0)
    {
LABEL_3:
      if ((a15 & 1) == 0)
      {
LABEL_8:
        if (a12)
        {
          operator delete(a13);
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(a16);
      goto LABEL_8;
    }
  }

  else if ((a9 & 1) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  if ((a15 & 1) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

unint64_t *operations_research::sat::PresolveContext::RemoveAllVariablesFromAffineRelationConstraint(unint64_t *this)
{
  v1 = this[84];
  v2 = this[85];
  if (v1 != v2)
  {
    v3 = ((0x378BC386ELL * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * 0x378BC386ELL);
    v4 = v3 >> 7;
    v5 = vdup_n_s8(v3 & 0x7F);
    do
    {
      v12 = *v1;
      if (*v1 > 1)
      {
        v10 = 0;
        _X10 = v1[2];
        __asm { PRFM            #4, [X10] }

        for (i = v4 ^ (_X10 >> 12); ; i = v10 + v6)
        {
          v6 = i & v12;
          v7 = *(_X10 + v6);
          v8 = vceq_s8(v7, v5);
          if (v8)
          {
            break;
          }

LABEL_6:
          if (vceq_s8(v7, 0x8080808080808080))
          {
            goto LABEL_9;
          }

          v10 += 8;
        }

        while (1)
        {
          v9 = (v6 + (__clz(__rbit64(v8)) >> 3)) & v12;
          if (*(v1[3] + 4 * v9) == -2)
          {
            break;
          }

          v8 &= ((v8 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v8)
          {
            goto LABEL_6;
          }
        }

        this = absl::lts_20240722::container_internal::EraseMetaOnly(v1, v9);
      }

      else if (v1[1] >= 2 && *(v1 + 4) == -2)
      {
        v1[1] = 0;
      }

LABEL_9:
      v1 += 4;
    }

    while (v1 != v2);
  }

  return this;
}

void operations_research::sat::PresolveContext::RemoveVariableFromAffineRelation(operations_research::sat::PresolveContext *this, unsigned int a2)
{
  operations_research::sat::PresolveContext::GetAffineRelation(this, a2, &v67);
  if ((a2 & 0x80000000) != 0)
  {
    operations_research::sat::PresolveContext::RemoveVariableFromAffineRelation(&v67);
  }

  data = v67.__r_.__value_.__l.__data_;
  if (LODWORD(v67.__r_.__value_.__l.__data_) == a2)
  {
    operations_research::sat::PresolveContext::RemoveVariableFromAffineRelation(a2);
  }

  v5 = *(this + 84);
  v6 = (v5 + 32 * a2);
  v7 = v6[1];
  if (v7 >> 1 != 1)
  {
    operations_research::sat::PresolveContext::RemoveVariableFromAffineRelation(v7 >> 1);
  }

  v8 = *v6;
  if (*v6 > 1uLL)
  {
    v14 = 0;
    v15 = ((0x378BC386ELL * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * 0x378BC386ELL);
    v16 = vdup_n_s8(v15 & 0x7F);
    _X12 = v6[2];
    __asm { PRFM            #4, [X12] }

    v23 = ((v15 >> 7) ^ (_X12 >> 12)) & v8;
    v24 = *(_X12 + v23);
    v25 = vceq_s8(v24, v16);
    if (!v25)
    {
      goto LABEL_22;
    }

    do
    {
LABEL_20:
      if (*(v6[3] + 4 * ((v23 + (__clz(__rbit64(v25)) >> 3)) & v8)) == -2)
      {
        goto LABEL_7;
      }

      v25 &= ((v25 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v25);
LABEL_22:
    while (!*&vceq_s8(v24, 0x8080808080808080))
    {
      v14 += 8;
      v23 = (v14 + v23) & v8;
      v24 = *(_X12 + v23);
      v25 = vceq_s8(v24, v16);
      if (v25)
      {
        goto LABEL_20;
      }
    }

LABEL_42:
    operations_research::sat::PresolveContext::RemoveVariableFromAffineRelation(&v67);
  }

  if (v7 < 2 || *(v6 + 4) != -2)
  {
    goto LABEL_42;
  }

LABEL_7:
  v9 = (v5 + 32 * SLODWORD(v67.__r_.__value_.__l.__data_));
  v10 = *v9;
  if (*v9 > 1uLL)
  {
    v26 = 0;
    v27 = ((0x378BC386ELL * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * 0x378BC386ELL);
    v28 = vdup_n_s8(v27 & 0x7F);
    _X11 = v9[2];
    __asm { PRFM            #4, [X11] }

    v31 = ((v27 >> 7) ^ (_X11 >> 12)) & v10;
    v32 = *(_X11 + v31);
    v33 = vceq_s8(v32, v28);
    if (!v33)
    {
      goto LABEL_28;
    }

    do
    {
LABEL_26:
      if (*(v9[3] + 4 * ((v31 + (__clz(__rbit64(v33)) >> 3)) & v10)) == -2)
      {
        goto LABEL_10;
      }

      v33 &= ((v33 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v33);
LABEL_28:
    while (!*&vceq_s8(v32, 0x8080808080808080))
    {
      v26 += 8;
      v31 = (v26 + v31) & v10;
      v32 = *(_X11 + v31);
      v33 = vceq_s8(v32, v28);
      if (v33)
      {
        goto LABEL_26;
      }
    }

LABEL_65:
    operations_research::sat::PresolveContext::RemoveVariableFromAffineRelation(&v67);
  }

  if (v9[1] < 2uLL || *(v9 + 4) != -2)
  {
    goto LABEL_65;
  }

LABEL_10:
  if (~a2 <= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = ~a2;
  }

  v66[0] = v11;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(this + 1024, v66, &v67);
  if (v67.__r_.__value_.__s.__data_[16] == 1)
  {
    *v67.__r_.__value_.__l.__size_ = v66[0];
  }

  v12 = (*(this + 84) + 32 * a2);
  v13 = *v12;
  if (*v12 > 1)
  {
    v34 = 0;
    v35 = ((0x378BC386ELL * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * 0x378BC386ELL);
    v36 = vdup_n_s8(v35 & 0x7F);
    _X10 = v12[2];
    __asm { PRFM            #4, [X10] }

    v39 = ((v35 >> 7) ^ (_X10 >> 12)) & v13;
    v40 = *(_X10 + v39);
    v41 = vceq_s8(v40, v36);
    if (!v41)
    {
      goto LABEL_34;
    }

    do
    {
LABEL_32:
      v42 = (v39 + (__clz(__rbit64(v41)) >> 3)) & v13;
      if (*(v12[3] + 4 * v42) == -2)
      {
        absl::lts_20240722::container_internal::EraseMetaOnly(v12, v42);
        goto LABEL_38;
      }

      v41 &= ((v41 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v41);
LABEL_34:
    while (!*&vceq_s8(v40, 0x8080808080808080))
    {
      v34 += 8;
      v39 = (v34 + v39) & v13;
      v40 = *(_X10 + v39);
      v41 = vceq_s8(v40, v36);
      if (v41)
      {
        goto LABEL_32;
      }
    }
  }

  else if (v12[1] >= 2 && *(v12 + 4) == -2)
  {
    v12[1] = 0;
  }

LABEL_38:
  operations_research::AffineRelation::IgnoreFromClassSize(this + 896, a2);
  v43 = *(this + 113);
  if (data < ((*(this + 114) - v43) >> 2))
  {
    if (*(v43 + 4 * data) == data)
    {
      if (*(*(this + 122) + 4 * data) != 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      *(this + 126) = *(this + 125);
      LODWORD(v67.__r_.__value_.__l.__data_) = data;
      do
      {
        std::vector<int>::push_back[abi:ne200100](this + 1000, &v67);
        v44 = *(this + 113);
        LODWORD(v67.__r_.__value_.__l.__data_) = *(v44 + 4 * SLODWORD(v67.__r_.__value_.__l.__data_));
        v45 = v67.__r_.__value_.__l.__data_;
      }

      while (LODWORD(v67.__r_.__value_.__l.__data_) != *(v44 + 4 * SLODWORD(v67.__r_.__value_.__l.__data_)));
      v46 = *(this + 126);
      v47 = *(this + 125);
      if (v46 != v47)
      {
        v48 = *(this + 116);
        v49 = *(this + 119);
        do
        {
          v50 = *(v46 - 4);
          v46 -= 4;
          v51 = *(v44 + 4 * v50);
          *(v49 + 8 * v50) += *(v49 + 8 * v51) * *(v48 + 8 * v50);
          *(v48 + 8 * v50) *= *(v48 + 8 * v51);
          *(v44 + 4 * v50) = v45;
        }

        while (v46 != v47);
      }

      if (*(*(this + 122) + 4 * *(v44 + 4 * data)) != 1)
      {
        goto LABEL_63;
      }
    }
  }

  v52 = *(this + 84);
  v53 = (v52 + 32 * data);
  v54 = *v53;
  if (*v53 > 1)
  {
    v55 = 0;
    _X11 = v53[2];
    __asm { PRFM            #4, [X11] }

    v58 = ((0x378BC386ELL * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * 0x378BC386ELL);
    v59 = vdup_n_s8(v58 & 0x7F);
    v60 = ((v58 >> 7) ^ (_X11 >> 12)) & v54;
    v61 = *(_X11 + v60);
    v62 = vceq_s8(v61, v59);
    if (!v62)
    {
      goto LABEL_56;
    }

    do
    {
LABEL_54:
      v63 = (v60 + (__clz(__rbit64(v62)) >> 3)) & v54;
      if (*(v53[3] + 4 * v63) == -2)
      {
        absl::lts_20240722::container_internal::EraseMetaOnly(v53, v63);
        v52 = *(this + 84);
        goto LABEL_60;
      }

      v62 &= ((v62 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v62);
LABEL_56:
    while (!*&vceq_s8(v61, 0x8080808080808080))
    {
      v55 += 8;
      v60 = (v55 + v60) & v54;
      v61 = *(_X11 + v60);
      v62 = vceq_s8(v61, v59);
      if (v62)
      {
        goto LABEL_54;
      }
    }
  }

  else if (v53[1] >= 2 && *(v53 + 4) == -2)
  {
    v53[1] = 0;
  }

LABEL_60:
  if (*(v52 + 32 * data + 8) <= 7uLL)
  {
    LODWORD(v67.__r_.__value_.__l.__data_) = data;
    v64 = *(this + 25);
    v65 = *(v64 + 8 * (data >> 6));
    if ((v65 & (1 << data)) == 0)
    {
      *(v64 + 8 * (data >> 6)) = v65 | (1 << data);
      std::vector<int>::push_back[abi:ne200100](this + 224, &v67);
    }
  }

LABEL_63:
  if (dword_2810BD650 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&operations_research::sat::PresolveContext::RemoveVariableFromAffineRelation(int)::$_0::operator() const(void)::site, dword_2810BD650))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v66, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/presolve_context.cc", 911);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v66, "Removing affine relation: ", 0x1AuLL);
    operations_research::sat::PresolveContext::AffineRelationDebugString(this, a2, &v67);
    absl::lts_20240722::log_internal::LogMessage::operator<<(v66, &v67);
    operations_research::sat::BruteForceOrthogonalPacking(&v67, v66);
  }
}

void sub_23CC9770C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a10);
    _Unwind_Resume(a1);
  }

  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a10);
  _Unwind_Resume(a1);
}

uint64_t operations_research::AffineRelation::IgnoreFromClassSize(uint64_t this, int a2)
{
  v3 = a2;
  v4 = *(this + 80);
  if (a2 < ((*(this + 88) - v4) >> 2))
  {
    v5 = this;
    this = *(v4 + 4 * a2);
    if (this == *v5)
    {
      absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(this, this, "size_[x] != kSizeForRemovedEntry");
    }

    v6 = *(v5 + 8);
    if (a2 < ((*(v5 + 16) - v6) >> 2) && *(v6 + 4 * a2) != a2)
    {
      *(v5 + 112) = *(v5 + 104);
      v16[0] = a2;
      do
      {
        std::vector<int>::push_back[abi:ne200100](v5 + 104, v16);
        v7 = *(v5 + 8);
        v16[0] = *(v7 + 4 * v16[0]);
        v8 = v16[0];
      }

      while (v16[0] != *(v7 + 4 * v16[0]));
      v10 = *(v5 + 104);
      v9 = *(v5 + 112);
      if (v9 != v10)
      {
        v11 = *(v5 + 32);
        v12 = *(v5 + 56);
        do
        {
          v13 = *(v9 - 4);
          v9 -= 4;
          v14 = *(v7 + 4 * v13);
          *(v12 + 8 * v13) += *(v12 + 8 * v14) * *(v11 + 8 * v13);
          *(v11 + 8 * v13) *= *(v11 + 8 * v14);
          *(v7 + 4 * v13) = v8;
        }

        while (v9 != v10);
      }

      v15 = *(v7 + 4 * v3);
      v4 = *(v5 + 80);
      if (v15 != a2)
      {
        this = *(v4 + 4 * v15);
        if (this < 2)
        {
          operations_research::AffineRelation::IgnoreFromClassSize(this);
        }

        *(v4 + 4 * v15) = this - 1;
        goto LABEL_13;
      }

      this = *(v4 + 4 * v3);
    }

    if (this != 1)
    {
      operations_research::AffineRelation::IgnoreFromClassSize(this);
    }

LABEL_13:
    *(v4 + 4 * v3) = *v5;
  }

  return this;
}

uint64_t operations_research::sat::PresolveContext::CanonicalizeVariable(operations_research::sat::PresolveContext *this, int a2)
{
  operations_research::sat::PresolveContext::GetAffineRelation(this, a2, v14);
  v3 = v14[0];
  if ((v14[0] & 0x80000000) != 0)
  {
    result = operations_research::Domain::Max((*(this + 53) + 24 * ~LODWORD(v14[0])));
    v5 = -result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = operations_research::Domain::Min((*(this + 53) + 24 * LODWORD(v14[0])));
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  if (~v3 <= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = ~v3;
  }

  result = operations_research::Domain::IsFixed((*(this + 53) + 24 * v6));
  if ((result & 1) == 0)
  {
    operations_research::sat::PresolveContext::DomainOf(this, v3, v12);
    operations_research::Domain::Domain(v11, -v5);
    operations_research::Domain::AdditionWith(v12, v11, v14, v7);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*this + 24), google::protobuf::Arena::DefaultConstruct<operations_research::sat::IntegerVariableProto>);
    operations_research::sat::FillDomainInProto<operations_research::sat::IntegerVariableProto>(v14, v8);
    operations_research::sat::PresolveContext::InitializeNewDomains(this);
    v9 = *(*this + 32);
    if (v14[0])
    {
      operator delete(v14[1]);
      v10 = v9 - 1;
      if ((v11[0] & 1) == 0)
      {
LABEL_11:
        if ((v12[0] & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v10 = v9 - 1;
      if ((v11[0] & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    operator delete(v11[1]);
    if ((v12[0] & 1) == 0)
    {
LABEL_13:
      if (operations_research::sat::PresolveContext::StoreAffineRelation(this, v3, v10, 1, v5, 1))
      {
        operator new();
      }

      operations_research::sat::PresolveContext::CanonicalizeVariable(v14);
    }

LABEL_12:
    operator delete(__p);
    goto LABEL_13;
  }

  return result;
}

void sub_23CC97ADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *__p, void *a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::PresolveContext::StoreAffineRelation(operations_research::sat::PresolveContext *this, absl::lts_20240722::numbers_internal *a2, absl::lts_20240722::numbers_internal *a3, uint64_t a4, uint64_t a5, int a6)
{
  if (!a4)
  {
    operations_research::sat::PresolveContext::StoreAffineRelation(&v80, a2);
  }

  if (*(this + 416))
  {
    return 0;
  }

  if (~a2 <= a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = ~a2;
  }

  operations_research::sat::PresolveContext::GetAffineRelation(this, v13, &v80);
  if (v80 != v13)
  {
    result = operations_research::sat::PresolveContext::PropagateAffineRelation(this, v13, v80, *(&v80 + 1), v81);
    if (!result)
    {
      return result;
    }
  }

  v14 = ~a3 <= a3 ? a3 : ~a3;
  operations_research::sat::PresolveContext::GetAffineRelation(this, v14, &v80);
  if (v80 != v14)
  {
    result = operations_research::sat::PresolveContext::PropagateAffineRelation(this, v14, v80, *(&v80 + 1), v81);
    if (!result)
    {
      return result;
    }
  }

  result = operations_research::sat::PresolveContext::PropagateAffineRelation(this, a2, a3, a4, a5);
  if (!result)
  {
    return result;
  }

  if (operations_research::Domain::IsFixed((*(this + 53) + 24 * v13)))
  {
    operations_research::sat::PresolveContext::DomainOf(this, a2, &v80);
    v15 = operations_research::Domain::Min(&v80) - a5;
    if (v80)
    {
      operator delete(*(&v80 + 1));
    }

    if (a4 >= 0)
    {
      v16 = a4;
    }

    else
    {
      v16 = -a4;
    }

    if (v15 % v16)
    {
      return operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(this, &byte_23CE7F131, 0);
    }

    std::string::basic_string[abi:ne200100]<0>(&v80, "affine: fixed");
    operations_research::sat::PresolveContext::UpdateRuleStats(this, &v80, 1, v30, v31);
    if (SHIBYTE(v81) < 0)
    {
      operator delete(v80);
    }

    operations_research::Domain::Domain(&v80, v15 / a4);
    result = operations_research::sat::PresolveContext::IntersectDomainWith(this, a3, &v80, 0);
    goto LABEL_36;
  }

  if (operations_research::Domain::IsFixed((*(this + 53) + 24 * v14)))
  {
    operations_research::sat::PresolveContext::DomainOf(this, a3, &v80);
    v17 = operations_research::Domain::Min(&v80);
    if (v80)
    {
      operator delete(*(&v80 + 1));
    }

    std::string::basic_string[abi:ne200100]<0>(&v80, "affine: fixed");
    operations_research::sat::PresolveContext::UpdateRuleStats(this, &v80, 1, v18, v19);
    v20 = a5 + v17 * a4;
    if (SHIBYTE(v81) < 0)
    {
      operator delete(v80);
    }

    operations_research::Domain::Domain(&v80, v20);
    result = operations_research::sat::PresolveContext::IntersectDomainWith(this, a2, &v80, 0);
LABEL_36:
    if ((v80 & 1) == 0)
    {
      return result;
    }

    v32 = *(&v80 + 1);
    goto LABEL_38;
  }

  operations_research::sat::PresolveContext::GetAffineRelation(this, a2, &v80);
  operations_research::sat::PresolveContext::GetAffineRelation(this, a3, &v77);
  v22 = v80;
  v23 = v79;
  v24 = a5 + v79 * a4;
  v25 = v81;
  v26 = v24 - v81;
  if (v80 == v77)
  {
    v27 = v78;
    v28 = *(&v80 + 1);
    v29 = v78 * a4 - *(&v80 + 1);
    if (!v29)
    {
      if (v24 == v81)
      {
        return 1;
      }

      return operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(this, &byte_23CE7F131, 0);
    }

    if (v26 % v29)
    {
      return operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(this, &byte_23CE7F131, 0);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "affine: unique solution");
    operations_research::sat::PresolveContext::UpdateRuleStats(this, &__p, 1, v48, v49);
    if (v76 < 0)
    {
      operator delete(__p);
    }

    v50 = -v26 / v29;
    operations_research::Domain::Domain(&__p, v50);
    v51 = operations_research::sat::PresolveContext::IntersectDomainWith(this, v22, &__p, 0);
    if (__p)
    {
      operator delete(*(&__p + 1));
    }

    if (v51)
    {
      operations_research::Domain::Domain(&__p, v25 + v50 * v28);
      v52 = operations_research::sat::PresolveContext::IntersectDomainWith(this, a2, &__p, 0);
      if (__p)
      {
        operator delete(*(&__p + 1));
      }

      if (v52)
      {
        operations_research::Domain::Domain(&__p, v23 + v50 * v27);
        result = operations_research::sat::PresolveContext::IntersectDomainWith(this, a3, &__p, 0);
        if (__p)
        {
          v32 = *(&__p + 1);
LABEL_38:
          v33 = result;
          operator delete(v32);
          return v33;
        }

        return result;
      }
    }

    return 0;
  }

  v34 = *(&v80 + 1);
  if (!*(&v80 + 1))
  {
    operations_research::sat::PresolveContext::StoreAffineRelation(&__p, v21);
  }

  v35 = v78 * a4;
  v36 = -(v78 * a4);
  if (!(v78 * a4))
  {
    operations_research::sat::PresolveContext::StoreAffineRelation(v36);
  }

  if (v80 >= 0)
  {
    v37 = *(&v80 + 1);
  }

  else
  {
    v37 = -*(&v80 + 1);
  }

  if (v35 >= 0)
  {
    v38 = v78 * a4;
  }

  else
  {
    v38 = -v35;
  }

  v39 = v37;
  do
  {
    v40 = v38;
    v38 = v39 % v38;
    v39 = v40;
  }

  while (v38);
  if (v40 != 1)
  {
    if (v26 % v40)
    {
      return operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(this, &byte_23CE7F131, 0);
    }

    v34 = *(&v80 + 1) / v40;
    if (*(&v80 + 1) / v40 >= 0)
    {
      v37 = *(&v80 + 1) / v40;
    }

    else
    {
      v37 = -v34;
    }

    v26 /= v40;
    v36 /= v40;
  }

  if (v37 < 2)
  {
    if (v37 == 1)
    {
      v53 = v80;
      v22 = v77;
      v54 = v36;
      v36 = v34;
      goto LABEL_82;
    }

    if (v36 >= 0)
    {
      v41 = v36;
    }

    else
    {
      v41 = -v36;
    }
  }

  else
  {
    if (v36 >= 0)
    {
      v41 = v36;
    }

    else
    {
      v41 = -v36;
    }

    if (v41 >= 2)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "affine: created common representative");
      operations_research::sat::PresolveContext::UpdateRuleStats(this, &__p, 1, v42, v43);
      if (v76 < 0)
      {
        operator delete(__p);
      }

      if ((operations_research::sat::PresolveContext::CanonicalizeAffineVariable(this, v22, v34, v41, a5) & 1) == 0)
      {
        return 0;
      }

      v44 = this;
      v45 = a2;
      v46 = a3;
      v47 = a4;
      return operations_research::sat::PresolveContext::StoreAffineRelation(v44, v45, v46, v47, a5, 1);
    }
  }

  v53 = v77;
  v54 = v34;
  if (v41 != 1)
  {
    operations_research::sat::PresolveContext::StoreAffineRelation(v41);
  }

LABEL_82:
  if (v36 >= 0)
  {
    a5 = v26;
  }

  else
  {
    a5 = -v26;
  }

  if (v36 < 0)
  {
    v55 = v54;
  }

  else
  {
    v55 = -v54;
  }

  if ((v53 & 0x80000000) != 0)
  {
    operations_research::sat::PresolveContext::StoreAffineRelation(&__p);
  }

  if ((v22 & 0x80000000) != 0)
  {
    operations_research::sat::PresolveContext::StoreAffineRelation(&__p);
  }

  operations_research::sat::PresolveContext::DomainOf(this, v53, v70);
  operations_research::Domain::Domain(&v68, -a5);
  operations_research::Domain::AdditionWith(v70, &v68, &v72, v56);
  operations_research::Domain::InverseMultiplicationBy(&v72, v55, &__p);
  v57 = operations_research::sat::PresolveContext::IntersectDomainWith(this, v22, &__p, 0);
  if (__p)
  {
    operator delete(*(&__p + 1));
    if ((v72 & 1) == 0)
    {
LABEL_92:
      if ((v68 & 1) == 0)
      {
        goto LABEL_93;
      }

      goto LABEL_98;
    }
  }

  else if ((v72 & 1) == 0)
  {
    goto LABEL_92;
  }

  operator delete(v73);
  if ((v68 & 1) == 0)
  {
LABEL_93:
    if ((v70[0] & 1) == 0)
    {
      goto LABEL_94;
    }

LABEL_99:
    operator delete(v71);
    if ((v57 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_100;
  }

LABEL_98:
  operator delete(v69);
  if (v70[0])
  {
    goto LABEL_99;
  }

LABEL_94:
  if ((v57 & 1) == 0)
  {
    return 0;
  }

LABEL_100:
  operations_research::sat::PresolveContext::DomainOf(this, v22, v70);
  operations_research::Domain::ContinuousMultiplicationBy(v70, v55, &v72);
  operations_research::Domain::Domain(&v68, a5);
  operations_research::Domain::AdditionWith(&v72, &v68, &__p, v58);
  v59 = operations_research::sat::PresolveContext::IntersectDomainWith(this, v53, &__p, 0);
  if (__p)
  {
    operator delete(*(&__p + 1));
    if ((v68 & 1) == 0)
    {
LABEL_102:
      if ((v72 & 1) == 0)
      {
        goto LABEL_103;
      }

      goto LABEL_108;
    }
  }

  else if ((v68 & 1) == 0)
  {
    goto LABEL_102;
  }

  operator delete(v69);
  if ((v72 & 1) == 0)
  {
LABEL_103:
    if ((v70[0] & 1) == 0)
    {
      goto LABEL_104;
    }

LABEL_109:
    operator delete(v71);
    if ((v59 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_110;
  }

LABEL_108:
  operator delete(v73);
  if (v70[0])
  {
    goto LABEL_109;
  }

LABEL_104:
  if ((v59 & 1) == 0)
  {
    return 0;
  }

LABEL_110:
  if (v26 >= 0)
  {
    v60 = v26;
  }

  else
  {
    v60 = -v26;
  }

  v61 = operations_research::sat::PresolveContext::MinOf(this, v53);
  if (v61 >= 0)
  {
    v62 = v61;
  }

  else
  {
    v62 = -v61;
  }

  v63 = operations_research::sat::PresolveContext::MaxOf(this, v53);
  if (v63 >= 0)
  {
    v64 = v63;
  }

  else
  {
    v64 = -v63;
  }

  if (v62 > v64)
  {
    v64 = v62;
  }

  if (v60 > v64)
  {
    if (a6)
    {
      operations_research::sat::PresolveContext::StoreAffineRelation(&__p);
    }

    operations_research::sat::PresolveContext::CanonicalizeVariable(this, v22);
    v44 = this;
    v45 = v53;
    v46 = v22;
    v47 = v55;
    return operations_research::sat::PresolveContext::StoreAffineRelation(v44, v45, v46, v47, a5, 1);
  }

  if ((operations_research::sat::PresolveContext::AddRelation(this, v53, v22, v55, a5, (this + 896)) & 1) == 0)
  {
    operations_research::sat::PresolveContext::StoreAffineRelation(&__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "affine: new relation");
  operations_research::sat::PresolveContext::UpdateRuleStats(this, &__p, 1, v65, v66);
  if (v76 < 0)
  {
    operator delete(__p);
  }

  if ((operations_research::sat::PresolveContext::PropagateAffineRelation(this, a2) & 1) == 0)
  {
    return 0;
  }

  result = operations_research::sat::PresolveContext::PropagateAffineRelation(this, a3);
  if (result)
  {
    operations_research::sat::PresolveContext::GetAffineRelation(this, v53, &__p);
    v67 = __p;
    if (v53 != __p)
    {
      operations_research::SparseBitset<int>::Set(this + 136, v53);
    }

    if (v22 != v67)
    {
      operations_research::SparseBitset<int>::Set(this + 136, v22);
    }

    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(*(this + 84) + 32 * v53, &operations_research::sat::kAffineRelationConstraint, &__p);
    if (v75 == 1)
    {
      **(&__p + 1) = -2;
    }

    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(*(this + 84) + 32 * v22, &operations_research::sat::kAffineRelationConstraint, &__p);
    if (v75 == 1)
    {
      **(&__p + 1) = -2;
    }

    return 1;
  }

  return result;
}

void sub_23CC98378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, void *a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, void *a16, uint64_t a17, uint64_t a18, void *__p, int a20, __int16 a21, char a22, char a23)
{
  if (a18)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL operations_research::sat::PresolveContext::ScaleFloatingPointObjective(operations_research::sat::PresolveContext *this)
{
  v2 = *this;
  v3 = *(*this + 152);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &operations_research::sat::_FloatObjectiveProto_default_instance_;
  }

  v11 = 0;
  v12 = 0;
  __p = 0;
  if (*(v4 + 4) >= 1)
  {
    v5 = *v4[6];
    operator new();
  }

  v6 = *(v4 + 7);
  v7 = *(v4 + 64);
  if (v3)
  {
    operations_research::sat::FloatObjectiveProto::Clear(v3);
  }

  *(v2 + 16) &= ~8u;
  operations_research::sat::PresolveContext::WriteVariableDomainsToProto(this);
  result = operations_research::sat::ScaleAndSetObjective(*(this + 49), &__p, v7, *this, *(this + 48), v6);
  if (__p)
  {
    v11 = __p;
    v9 = result;
    operator delete(__p);
    return v9;
  }

  return result;
}

void sub_23CC986D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::PresolveContext::WriteVariableDomainsToProto(operations_research::sat::PresolveContext *this)
{
  if (*(*this + 32) >= 1)
  {
    v2 = 0;
    v3 = 8;
    do
    {
      operations_research::sat::PresolveContext::DomainOf(this, v2, v5);
      v4 = (*this + 24);
      if (*v4)
      {
        v4 = (*v4 + v3 - 1);
      }

      operations_research::sat::FillDomainInProto<operations_research::sat::IntegerVariableProto>(v5, *v4);
      if (v5[0])
      {
        operator delete(v5[1]);
      }

      ++v2;
      v3 += 8;
    }

    while (v2 < *(*this + 32));
  }
}

void sub_23CC987A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p)
{
  if (a10)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::PresolveContext::CanonicalizeAffineVariable(operations_research::sat::PresolveContext *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v61 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    operations_research::sat::PresolveContext::CanonicalizeAffineVariable(&v50, a2);
  }

  if (!a3)
  {
    operations_research::sat::PresolveContext::CanonicalizeAffineVariable(&v50, a2);
  }

  v5 = a4;
  if (a3 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = -a3;
  }

  if (a4 >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = -a4;
  }

  if (v7 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (v7 <= v8)
  {
    v7 = v8;
  }

  v10 = v7 % v9;
  if (v10)
  {
    v11 = v10 >> __clz(__rbit64(v10));
    v12 = v9;
    do
    {
      v13 = v12 >> __clz(__rbit64(v12));
      v12 = v13 - v11;
      if (v11 > v13)
      {
        v12 = v11 - v13;
      }

      if (v11 >= v13)
      {
        v11 = v13;
      }
    }

    while (v12);
    v9 = v11 << __clz(__rbit64(v10 | v9));
  }

  if (v9 != 1)
  {
    if (a5 % v9)
    {
      v14 = a5;
      __p[0] = v46;
      __p[1] = (absl::lts_20240722::numbers_internal::FastIntToBuffer(a3, v46, a3) - v46);
      v42 = v44;
      v43 = (absl::lts_20240722::numbers_internal::FastIntToBuffer(v14, v44, v15) - v44);
      v50 = "Infeasible ";
      v51 = 11;
      v52 = *__p;
      v53 = " * X = ";
      v54 = 7;
      v55 = v44;
      v56 = v43;
      v57 = " % ";
      v58 = 3;
      v17 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v5, v49, v16);
      v47 = v49;
      v48 = (v17 - v49);
      v59 = v49;
      v60 = v17 - v49;
      absl::lts_20240722::strings_internal::CatPieces(&v50, 6, &v41);
      if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v41;
      }

      else
      {
        v18 = v41.__r_.__value_.__r.__words[0];
      }

      if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v41.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v41.__r_.__value_.__l.__size_;
      }

      result = operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(this, v18, size);
      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        v21 = v41.__r_.__value_.__r.__words[0];
LABEL_73:
        v39 = result;
        operator delete(v21);
        result = v39;
        goto LABEL_74;
      }

      goto LABEL_74;
    }

    v5 = a4 / v9;
    if (a4 / v9 >= 0)
    {
      v8 = a4 / v9;
    }

    else
    {
      v8 = -v5;
    }

    a5 /= v9;
    a3 /= v9;
  }

  if (v8 == 1)
  {
    result = 1;
    goto LABEL_74;
  }

  v22 = a2 ^ (a2 >> 31);
  if (a2 >= 0)
  {
    v23 = a5;
  }

  else
  {
    v23 = -a5;
  }

  if (a2 >= 0)
  {
    v24 = a3;
  }

  else
  {
    v24 = -a3;
  }

  v25 = operations_research::sat::ProductWithModularInverse(v24, v5, v23);
  operations_research::sat::PresolveContext::DomainOf(this, v22, __p);
  operations_research::Domain::Domain(&v42, -v25);
  operations_research::Domain::AdditionWith(__p, &v42, &v47, v26);
  operations_research::Domain::InverseMultiplicationBy(&v47, v5, &v50);
  if (v47)
  {
    operator delete(v48);
    if ((v42 & 1) == 0)
    {
LABEL_46:
      if ((__p[0] & 1) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    }
  }

  else if ((v42 & 1) == 0)
  {
    goto LABEL_46;
  }

  operator delete(v43);
  if (__p[0])
  {
LABEL_47:
    operator delete(__p[1]);
  }

LABEL_48:
  if (!operations_research::Domain::IsEmpty(&v50))
  {
    if (operations_research::Domain::IsFixed(&v50))
    {
      operator new();
    }

    v27 = operations_research::Domain::Min(&v50);
    operations_research::Domain::Domain(__p, -v27);
    operations_research::Domain::AdditionWith(&v50, __p, &v47, v28);
    v29 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*this + 24), google::protobuf::Arena::DefaultConstruct<operations_research::sat::IntegerVariableProto>);
    operations_research::sat::FillDomainInProto<operations_research::sat::IntegerVariableProto>(&v47, v29);
    operations_research::sat::PresolveContext::InitializeNewDomains(this);
    v30 = *(*this + 32);
    if (v47)
    {
      operator delete(v48);
    }

    if (__p[0])
    {
      operator delete(__p[1]);
    }

    v31 = (*this + 24);
    v32 = *v31;
    v33 = *v31 + 7 + 8 * v22;
    if ((*v31 & 1) == 0)
    {
      v33 = *this + 24;
    }

    v34 = *(*v33 + 40) & 0xFFFFFFFFFFFFFFFCLL;
    v35 = *(v34 + 23);
    if (v35 < 0)
    {
      v35 = *(v34 + 8);
    }

    v36 = v30 - 1;
    if (v35)
    {
      if (v32)
      {
        v31 = (v32 + 7 + 8 * v36);
      }

      v37 = *v31;
      v38 = *(v37 + 8);
      if (v38)
      {
        v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set<>((v37 + 40), v34, v38);
    }

    if (operations_research::sat::PresolveContext::StoreAffineRelation(this, v22, v36, v5, v25 + v27 * v5, 1))
    {
      operator new();
    }

    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v47, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/presolve_context.cc", 1003);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&v47);
  }

  result = operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(this, "Empty domain in CanonicalizeAffineVariable()", 44);
  if (v50)
  {
    v21 = v51;
    goto LABEL_73;
  }

LABEL_74:
  v40 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CC98D74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, void *a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (*(v34 - 168))
  {
    operator delete(*(v34 - 160));
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::PresolveContext::StoreBooleanEqualityRelation(operations_research::sat::PresolveContext *this, absl::lts_20240722::numbers_internal *a2, int a3)
{
  if (*(this + 416))
  {
    return 0;
  }

  if (operations_research::sat::PresolveContext::VariableWasRemoved(this, a2))
  {
    operations_research::sat::PresolveContext::StoreBooleanEqualityRelation(&v13);
  }

  if (operations_research::sat::PresolveContext::VariableWasRemoved(this, a3))
  {
    operations_research::sat::PresolveContext::StoreBooleanEqualityRelation(&v13);
  }

  operations_research::sat::PresolveContext::DomainOf(this, a2, &v13);
  if (operations_research::Domain::IsEmpty(&v13))
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v12, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/presolve_context.cc", 1196);
    goto LABEL_35;
  }

  if (v13)
  {
    operator delete(__p);
  }

  operations_research::sat::PresolveContext::DomainOf(this, a3, &v13);
  if (operations_research::Domain::IsEmpty(&v13))
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v12, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/presolve_context.cc", 1197);
LABEL_35:
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v12);
  }

  if (v13)
  {
    operator delete(__p);
  }

  if (~a2 <= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = ~a2;
  }

  if (operations_research::Domain::Min((*(this + 53) + 24 * v7)) < 0 || operations_research::Domain::Max((*(this + 53) + 24 * v7)) >= 2)
  {
    operations_research::sat::PresolveContext::StoreBooleanEqualityRelation(&v13);
  }

  if (~a3 <= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = ~a3;
  }

  if (operations_research::Domain::Min((*(this + 53) + 24 * v8)) < 0 || operations_research::Domain::Max((*(this + 53) + 24 * v8)) >= 2)
  {
    operations_research::sat::PresolveContext::StoreBooleanEqualityRelation(&v13);
  }

  if (a2 == a3)
  {
    return 1;
  }

  if (~a3 == a2)
  {
    operations_research::Domain::Domain(&v13, 0);
    result = operations_research::sat::PresolveContext::IntersectDomainWith(this, a2, &v13, 0);
    if (v13)
    {
      v9 = result;
      operator delete(__p);
      return v9;
    }
  }

  else
  {
    if (((a3 ^ a2) & 0x80000000) != 0)
    {
      v10 = -1;
      v11 = 1;
    }

    else
    {
      v10 = 1;
      v11 = 0;
    }

    return operations_research::sat::PresolveContext::StoreAffineRelation(this, v7, v8, v10, v11, 0);
  }

  return result;
}

void sub_23CC990DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *__p)
{
  if (a12)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::PresolveContext::RefDebugString(operations_research::sat::PresolveContext *this@<X0>, signed int a2@<W1>, char *a3@<X2>, std::string *a4@<X8>)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v7 = 1;
  if (a2 < 0)
  {
    v7 = 2;
  }

  v8 = "-X";
  if (a2 >= 0)
  {
    v8 = "X";
  }

  v21[0] = v8;
  v21[1] = v7;
  if (~a2 <= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = ~a2;
  }

  v19[0] = v20;
  v19[1] = absl::lts_20240722::numbers_internal::FastIntToBuffer(v9, v20, a3) - v20;
  operations_research::sat::PresolveContext::DomainOf(this, a2, v14);
  operations_research::Domain::ToString(v14, __p);
  v10 = v17;
  if ((v17 & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if ((v17 & 0x80u) != 0)
  {
    v10 = __p[1];
  }

  v18[0] = v11;
  v18[1] = v10;
  absl::lts_20240722::StrCat(v21, v19, v18, a4);
  if (v17 < 0)
  {
    operator delete(__p[0]);
    if ((v14[0] & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_18:
    operator delete(v15);
    v13 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v14[0])
  {
    goto LABEL_18;
  }

LABEL_15:
  v12 = *MEMORY[0x277D85DE8];
}

void sub_23CC99260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::SparseBitset<int>::Resize(uint64_t a1, int a2)
{
  if (*a1 > a2)
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    if (v3 == v2)
    {
      v4 = 0;
      v6 = v2 - v3;
    }

    else
    {
      LODWORD(v4) = 0;
      v5 = *(a1 + 32);
      do
      {
        if (*v5 < a2)
        {
          v3[v4] = *v5;
          LODWORD(v4) = v4 + 1;
        }

        ++v5;
      }

      while (v5 != v2);
      v4 = v4;
      v6 = v2 - v3;
      if (v4 > v6)
      {
        v7 = a1;
        v8 = a2;
        std::vector<int>::__append((a1 + 32), v4 - v6);
        a2 = v8;
        a1 = v7;
        goto LABEL_12;
      }
    }

    if (v6 > v4)
    {
      *(a1 + 40) = &v3[v4];
    }
  }

LABEL_12:
  v9 = a2 & ~(a2 >> 31);
  if (a2 < 1 || v9 >= *a1)
  {
    v10 = *(a1 + 8);
  }

  else
  {
    v10 = *(a1 + 8);
    v11 = v10 + 8 * ((a2 + 63) >> 6);
    *(v11 - 8) &= ~(-2 << (a2 + 63));
  }

  *a1 = v9;
  v12 = (v9 + 63) >> 6;
  v14 = 0;
  v13 = (*(a1 + 16) - v10) >> 3;
  if (v12 <= v13)
  {
    if (v12 < v13)
    {
      *(a1 + 16) = v10 + 8 * v12;
    }
  }

  else
  {
    std::vector<unsigned long long>::__append(a1 + 8, v12 - v13, &v14);
  }
}

void operations_research::sat::PresolveContext::LoadSolutionHint(operations_research::sat::PresolveContext *this)
{
  if (*(this + 448) == 1)
  {
    operations_research::sat::PresolveContext::LoadSolutionHint(v8);
  }

  *(this + 448) = 1;
  if ((*(*this + 16) & 2) != 0)
  {
    operations_research::sat::PartialVariableAssignment::PartialVariableAssignment(v8, 0, *(*this + 136));
    v2 = v9;
    if (v9 >= 1)
    {
      v3 = v10;
      v4 = v11;
      do
      {
        v6 = *v3++;
        v5 = v6;
        if ((v6 & 0x80000000) != 0)
        {
          break;
        }

        v7 = *(this + 60);
        if (v5 < (*(this + 61) - v7) >> 3)
        {
          *(*(this + 57) + ((v5 >> 3) & 0x1FFFFFF8)) |= 1 << v5;
          *(v7 + 8 * v5) = *v4;
        }

        ++v4;
        --v2;
      }

      while (v2);
    }

    operations_research::sat::PartialVariableAssignment::~PartialVariableAssignment(v8);
  }
}

void operations_research::sat::PresolveContext::CanonicalizeDomainOfSizeTwo(operations_research::sat::PresolveContext *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    operations_research::sat::PresolveContext::CanonicalizeDomainOfSizeTwo(v83);
  }

  operations_research::sat::PresolveContext::DomainOf(this, a2, v83);
  v6 = operations_research::Domain::Size(v83);
  if (v6 != 2)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v6, 2, "DomainOf(var).Size() == 2");
  }

  if (v83[0])
  {
    operator delete(v83[1]);
  }

  v7 = 24 * a2;
  v82 = operations_research::Domain::Min((*(this + 53) + v7));
  v81 = operations_research::Domain::Max((*(this + 53) + v7));
  if (*(this + 416))
  {
    return;
  }

  v8 = 0;
  _X8 = *(this + 102);
  __asm { PRFM            #4, [X8] }

  v15 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2));
  v16 = *(this + 100);
  v17 = vdup_n_s8(v15 & 0x7F);
  v18 = ((v15 >> 7) ^ (_X8 >> 12)) & v16;
  v19 = *(_X8 + v18);
  v20 = vceq_s8(v19, v17);
  if (!v20)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_7:
    v21 = *(this + 103) + 40 * ((v18 + (__clz(__rbit64(v20)) >> 3)) & v16);
    if (*v21 == a2)
    {
      v24 = (v21 + 8);
      v23 = *(v21 + 8);
      if (v23 <= 1)
      {
        goto LABEL_21;
      }

      v25 = 0;
      _X9 = *(v21 + 24);
      __asm { PRFM            #4, [X9] }

      v28 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v82) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v82));
      v29 = vdup_n_s8(v28 & 0x7F);
      v30 = ((v28 >> 7) ^ (_X9 >> 12)) & v23;
      v31 = *(_X9 + v30);
      v32 = vceq_s8(v31, v29);
      if (!v32)
      {
        goto LABEL_17;
      }

LABEL_14:
      v33 = *(v21 + 32);
      while (1)
      {
        v34 = (v30 + (__clz(__rbit64(v32)) >> 3)) & v23;
        if (*(v33 + 16 * v34) == v82)
        {
          break;
        }

        v32 &= ((v32 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v32)
        {
LABEL_17:
          while (!*&vceq_s8(v31, 0x8080808080808080))
          {
            v25 += 8;
            v30 = (v25 + v30) & v23;
            v31 = *(_X9 + v30);
            v32 = vceq_s8(v31, v29);
            if (v32)
            {
              goto LABEL_14;
            }
          }

          goto LABEL_52;
        }
      }

      v2 = v33 + 16 * v34;
      v35 = (_X9 + v34);
      if (!(_X9 + v34))
      {
        goto LABEL_52;
      }

LABEL_27:
      LiteralRepresentative = operations_research::sat::PresolveContext::GetLiteralRepresentative(this, *(v2 + 8));
      if (~LiteralRepresentative <= LiteralRepresentative)
      {
        v37 = LiteralRepresentative;
      }

      else
      {
        v37 = ~LiteralRepresentative;
      }

      v38 = *(this + 128);
      if (v38 > 1)
      {
        v39 = 0;
        _X11 = *(this + 130);
        __asm { PRFM            #4, [X11] }

        v42 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v37) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v37));
        v43 = vdup_n_s8(v42 & 0x7F);
        v44 = ((_X11 >> 12) ^ (v42 >> 7)) & v38;
        v45 = *(_X11 + v44);
        v46 = vceq_s8(v45, v43);
        if (!v46)
        {
          goto LABEL_38;
        }

LABEL_36:
        while (*(*(this + 131) + 4 * ((v44 + (__clz(__rbit64(v46)) >> 3)) & v38)) != v37)
        {
          v46 &= ((v46 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v46)
          {
LABEL_38:
            while (!*&vceq_s8(v45, 0x8080808080808080))
            {
              v39 += 8;
              v44 = (v39 + v44) & v38;
              v45 = *(_X11 + v44);
              v46 = vceq_s8(v45, v43);
              if (v46)
              {
                goto LABEL_36;
              }
            }

            goto LABEL_41;
          }
        }
      }

      else if (*(this + 129) < 2uLL || *(this + 260) != v37)
      {
LABEL_41:
        v47 = 0;
        v48 = *v24;
        if (*v24 <= 1)
        {
          goto LABEL_53;
        }

        goto LABEL_42;
      }

      if (*v24 > 1)
      {
        absl::lts_20240722::container_internal::EraseMetaOnly(v24, v35 - *(v21 + 24));
      }

      else
      {
        *(v21 + 16) = 0;
      }

      goto LABEL_52;
    }

    v20 &= ((v20 & 0x8080808080808080) - 1) & 0x8080808080808080;
  }

  while (v20);
LABEL_9:
  while (1)
  {
    v22 = vceq_s8(v19, 0x8080808080808080);
    if (v22)
    {
      break;
    }

    v8 += 8;
    v18 = (v8 + v18) & v16;
    v19 = *(_X8 + v18);
    v20 = vceq_s8(v19, v17);
    if (v20)
    {
      goto LABEL_7;
    }
  }

  v21 = *(this + 103) + 40 * absl::lts_20240722::container_internal::PrepareInsertNonSoo(this + 100, v15, (v18 + (__clz(__rbit64(v22)) >> 3)) & v16, v8, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,absl::lts_20240722::flat_hash_map<long long,operations_research::sat::SavedLiteral,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,operations_research::sat::SavedLiteral>>>>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,absl::lts_20240722::flat_hash_map<long long,operations_research::sat::SavedLiteral,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,operations_research::sat::SavedLiteral>>>>>>::GetPolicyFunctions(void)::value);
  *v21 = a2;
  *(v21 + 8) = xmmword_23CE306D0;
  v24 = (v21 + 8);
LABEL_21:
  if (*(v21 + 16) >= 2uLL)
  {
    v2 = v21 + 24;
    if (*(v21 + 24) == v82)
    {
      v35 = &absl::lts_20240722::container_internal::kSooControl;
      if (&absl::lts_20240722::container_internal::kSooControl)
      {
        goto LABEL_27;
      }
    }
  }

LABEL_52:
  v47 = 1;
  v48 = *v24;
  if (*v24 <= 1)
  {
LABEL_53:
    if (*(v21 + 16) < 2uLL)
    {
      goto LABEL_85;
    }

    v59 = *(v21 + 24) == v81 ? &absl::lts_20240722::container_internal::kSooControl : 0;
    v3 = v21 + 24;
    if (!v59)
    {
      goto LABEL_85;
    }

LABEL_59:
    v60 = operations_research::sat::PresolveContext::GetLiteralRepresentative(this, *(v3 + 8));
    if (~v60 <= v60)
    {
      v61 = v60;
    }

    else
    {
      v61 = ~v60;
    }

    v62 = *(this + 128);
    if (v62 > 1)
    {
      v63 = 0;
      _X11 = *(this + 130);
      __asm { PRFM            #4, [X11] }

      v66 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v61) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v61));
      v67 = vdup_n_s8(v66 & 0x7F);
      v68 = ((_X11 >> 12) ^ (v66 >> 7)) & v62;
      v69 = *(_X11 + v68);
      v70 = vceq_s8(v69, v67);
      if (!v70)
      {
        goto LABEL_70;
      }

      do
      {
LABEL_68:
        if (*(*(this + 131) + 4 * ((v68 + (__clz(__rbit64(v70)) >> 3)) & v62)) == v61)
        {
          goto LABEL_65;
        }

        v70 &= ((v70 & 0x8080808080808080) - 1) & 0x8080808080808080;
      }

      while (v70);
LABEL_70:
      while (!*&vceq_s8(v69, 0x8080808080808080))
      {
        v63 += 8;
        v68 = (v63 + v68) & v62;
        v69 = *(_X11 + v68);
        v70 = vceq_s8(v69, v67);
        if (v70)
        {
          goto LABEL_68;
        }
      }
    }

    else if (*(this + 129) >= 2uLL && *(this + 260) == v61)
    {
LABEL_65:
      if (*v24 > 1)
      {
        absl::lts_20240722::container_internal::EraseMetaOnly(v24, v59 - *(v21 + 24));
      }

      else
      {
        *(v21 + 16) = 0;
      }

      goto LABEL_85;
    }

    v71 = 0;
    if (v47)
    {
      goto LABEL_86;
    }

    goto LABEL_74;
  }

LABEL_42:
  v49 = 0;
  _X9 = *(v21 + 24);
  __asm { PRFM            #4, [X9] }

  v52 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v81) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v81));
  v53 = vdup_n_s8(v52 & 0x7F);
  v54 = ((v52 >> 7) ^ (_X9 >> 12)) & v48;
  v55 = *(_X9 + v54);
  v56 = vceq_s8(v55, v53);
  if (!v56)
  {
    goto LABEL_46;
  }

LABEL_43:
  v57 = *(v21 + 32);
  do
  {
    v58 = (v54 + (__clz(__rbit64(v56)) >> 3)) & v48;
    if (*(v57 + 16 * v58) == v81)
    {
      v3 = v57 + 16 * v58;
      v59 = (_X9 + v58);
      if (!(_X9 + v58))
      {
        goto LABEL_85;
      }

      goto LABEL_59;
    }

    v56 &= ((v56 & 0x8080808080808080) - 1) & 0x8080808080808080;
  }

  while (v56);
LABEL_46:
  while (!*&vceq_s8(v55, 0x8080808080808080))
  {
    v49 += 8;
    v54 = (v49 + v54) & v48;
    v55 = *(_X9 + v54);
    v56 = vceq_s8(v55, v53);
    if (v56)
    {
      goto LABEL_43;
    }
  }

LABEL_85:
  v71 = 1;
  if (v47)
  {
LABEL_86:
    if (v71)
    {
      operator new();
    }

    operator new();
  }

LABEL_74:
  if (v71)
  {
    operator new();
  }

  v72 = operations_research::sat::PresolveContext::GetLiteralRepresentative(this, *(v2 + 8));
  v73 = operations_research::sat::PresolveContext::GetLiteralRepresentative(this, *(v3 + 8));
  if (v72 != ~v73)
  {
    operator new();
  }

  v74 = operations_research::sat::PresolveContext::GetLiteralRepresentative(this, v72);
  v75 = operations_research::sat::PresolveContext::GetLiteralRepresentative(this, v73);
  if (~v74 <= v74)
  {
    v76 = v74;
  }

  else
  {
    v76 = ~v74;
  }

  if (!operations_research::Domain::IsFixed((*(this + 53) + 24 * v76)) && v74 != ~v75)
  {
    operations_research::sat::PresolveContext::CanonicalizeDomainOfSizeTwo(v74, ~v75);
  }

  if (~v74 <= v74)
  {
    v77 = v74;
  }

  else
  {
    v77 = ~v74;
  }

  v78 = v77;
  if (operations_research::Domain::IsFixed((*(this + 53) + 24 * v77)) || (~v75 <= v75 ? (v79 = v75) : (v79 = ~v75), operations_research::Domain::IsFixed((*(this + 53) + 24 * v79))))
  {
    if (operations_research::Domain::IsFixed((*(this + 53) + 24 * v78)))
    {
      if (~v75 <= v75)
      {
        v80 = v75;
      }

      else
      {
        v80 = ~v75;
      }

      if (operations_research::Domain::IsFixed((*(this + 53) + 24 * v80)))
      {
        operator new();
      }

      operations_research::sat::PresolveContext::CanonicalizeDomainOfSizeTwo(v83);
    }

    operations_research::sat::PresolveContext::CanonicalizeDomainOfSizeTwo(v83);
  }

  operations_research::sat::PresolveContext::GetAffineRelation(this, a2, v83);
  if (LODWORD(v83[0]) != v78)
  {
    operator new();
  }
}

void sub_23CC99FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, int a14, __int16 a15, char a16, char a17)
{
  if (a12)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,operations_research::sat::SavedLiteral>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,operations_research::sat::SavedLiteral>>>::operator[]<long long,absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,operations_research::sat::SavedLiteral>>(uint64_t *a1, uint64_t *a2)
{
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,operations_research::sat::SavedLiteral>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,operations_research::sat::SavedLiteral>>>::find_or_prepare_insert<long long>(a1, a2, v5);
  if (v7 == 1)
  {
    v3 = v6;
    *v6 = *a2;
    *(v3 + 2) = 0;
  }

  return v6 + 1;
}

void operations_research::sat::PresolveContext::InsertVarValueEncodingInternal(operations_research::sat::PresolveContext *this, int a2, unsigned int a3, void *a4, int a5)
{
  v78 = a2;
  if ((a3 & 0x80000000) != 0)
  {
    operations_research::sat::PresolveContext::InsertVarValueEncodingInternal(v75);
  }

  v8 = a2;
  if (operations_research::sat::PresolveContext::VariableWasRemoved(this, a2))
  {
    operations_research::sat::PresolveContext::InsertVarValueEncodingInternal(v75);
  }

  if (operations_research::sat::PresolveContext::VariableWasRemoved(this, a3))
  {
    operations_research::sat::PresolveContext::InsertVarValueEncodingInternal(v75);
  }

  v10 = 0;
  _X8 = *(this + 102);
  __asm { PRFM            #4, [X8] }

  v17 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a3) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a3));
  v18 = *(this + 100);
  v19 = v17 >> 7;
  v20 = vdup_n_s8(v17 & 0x7F);
  v21 = ((v17 >> 7) ^ (_X8 >> 12)) & v18;
  v22 = *(_X8 + v21);
  v23 = vceq_s8(v22, v20);
  if (v23)
  {
LABEL_5:
    while (1)
    {
      v24 = *(this + 103) + 40 * ((v21 + (__clz(__rbit64(v23)) >> 3)) & v18);
      if (*v24 == a3)
      {
        break;
      }

      v23 &= ((v23 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v23)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v25 = vceq_s8(v22, 0x8080808080808080);
      if (v25)
      {
        break;
      }

      v10 += 8;
      v21 = (v10 + v21) & v18;
      v22 = *(_X8 + v21);
      v23 = vceq_s8(v22, v20);
      if (v23)
      {
        goto LABEL_5;
      }
    }

    v24 = *(this + 103) + 40 * absl::lts_20240722::container_internal::PrepareInsertNonSoo(this + 100, (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a3) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a3)), (v21 + (__clz(__rbit64(v25)) >> 3)) & v18, v10, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,absl::lts_20240722::flat_hash_map<long long,operations_research::sat::SavedLiteral,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,operations_research::sat::SavedLiteral>>>>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,absl::lts_20240722::flat_hash_map<long long,operations_research::sat::SavedLiteral,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,operations_research::sat::SavedLiteral>>>>>>::GetPolicyFunctions(void)::value);
    *v24 = a3;
    *(v24 + 8) = xmmword_23CE306D0;
    v8 = v78;
  }

  v73 = a4;
  LODWORD(__p[0]) = v8;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,operations_research::sat::SavedLiteral>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,operations_research::sat::SavedLiteral>>>::find_or_prepare_insert<long long>((v24 + 8), &v73, v75);
  if (v77)
  {
    v26 = v76;
    *v76 = v73;
    *(v26 + 8) = __p[0];
    operations_research::sat::PresolveContext::DomainOf(this, a3, &v73);
    v27 = operations_research::Domain::Size(&v73);
    if (v73)
    {
      operator delete(__p[0]);
    }

    if (v27 == 2)
    {
      operations_research::sat::PresolveContext::CanonicalizeDomainOfSizeTwo(this, a3);
    }

    else
    {
      if (dword_2810BD668 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&operations_research::sat::PresolveContext::InsertVarValueEncodingInternal(int,int,long long,BOOL)::$_0::operator() const(void)::site, dword_2810BD668))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(&v73, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/presolve_context.cc", 1433);
        v69 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v73, 2);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v69, "Insert lit(", 0xBuLL);
        LODWORD(v72) = v78;
        v70 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v69, &v72);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v70, ") <=> var(", 0xAuLL);
        LODWORD(v72) = a3;
        v71 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v70, &v72);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v71, ") == ", 5uLL);
        v72 = a4;
        absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v71, &v72);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v73);
      }

      v29 = 0;
      _X9 = *(this + 106);
      __asm { PRFM            #4, [X9] }

      v32 = *(this + 104);
      v33 = (v19 ^ (_X9 >> 12)) & v32;
      v34 = *(_X9 + v33);
      v35 = vceq_s8(v34, v20);
      if (v35)
      {
LABEL_22:
        while (1)
        {
          v36 = *(this + 107) + 40 * ((v33 + (__clz(__rbit64(v35)) >> 3)) & v32);
          if (*v36 == a3)
          {
            break;
          }

          v35 &= ((v35 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v35)
          {
            goto LABEL_24;
          }
        }

        _X9 = *(v36 + 24);
        v39 = *(v36 + 8);
      }

      else
      {
LABEL_24:
        while (1)
        {
          v37 = vceq_s8(v34, 0x8080808080808080);
          if (v37)
          {
            break;
          }

          v29 += 8;
          v33 = (v29 + v33) & v32;
          v34 = *(_X9 + v33);
          v35 = vceq_s8(v34, v20);
          if (v35)
          {
            goto LABEL_22;
          }
        }

        inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(this + 104, (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a3) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a3)), (v33 + (__clz(__rbit64(v37)) >> 3)) & v32, v29, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,absl::lts_20240722::flat_hash_map<long long,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>>>>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,absl::lts_20240722::flat_hash_map<long long,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>>>>>>::GetPolicyFunctions(void)::value);
        v39 = 0;
        v36 = *(this + 107) + 40 * inserted;
        *v36 = a3;
        *(v36 + 8) = 0;
        *(v36 + 16) = 0;
        _X9 = &unk_23CE31C20;
        *(v36 + 24) = &unk_23CE31C20;
      }

      v41 = 0;
      __asm { PRFM            #4, [X9] }

      v43 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a4) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a4));
      v44 = vdup_n_s8(v43 & 0x7F);
      v45 = ((v43 >> 7) ^ (_X9 >> 12)) & v39;
      v46 = *(_X9 + v45);
      v47 = vceq_s8(v46, v44);
      if (!v47)
      {
        goto LABEL_32;
      }

LABEL_30:
      while (1)
      {
        v48 = *(v36 + 32) + 40 * ((v45 + (__clz(__rbit64(v47)) >> 3)) & v39);
        if (*v48 == a4)
        {
          break;
        }

        v47 &= ((v47 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v47)
        {
LABEL_32:
          while (1)
          {
            v49 = vceq_s8(v46, 0x8080808080808080);
            if (v49)
            {
              break;
            }

            v41 += 8;
            v45 = (v41 + v45) & v39;
            v46 = *(_X9 + v45);
            v47 = vceq_s8(v46, v44);
            if (v47)
            {
              goto LABEL_30;
            }
          }

          v48 = *(v36 + 32) + 40 * absl::lts_20240722::container_internal::PrepareInsertNonSoo((v36 + 8), (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a4) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a4)), (v45 + (__clz(__rbit64(v49)) >> 3)) & v39, v41, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>>>::GetPolicyFunctions(void)::value);
          *v48 = a4;
          *(v48 + 8) = xmmword_23CE306D0;
          break;
        }
      }

      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(v48 + 8, &v78, &v73);
      if (LOBYTE(__p[1]) == 1)
      {
        *__p[0] = v78;
      }

      v50 = 0;
      _X9 = *(this + 110);
      __asm { PRFM            #4, [X9] }

      v53 = *(this + 108);
      v54 = (v19 ^ (_X9 >> 12)) & v53;
      v55 = *(_X9 + v54);
      v56 = vceq_s8(v55, v20);
      if (v56)
      {
LABEL_39:
        while (1)
        {
          v57 = *(this + 111) + 40 * ((v54 + (__clz(__rbit64(v56)) >> 3)) & v53);
          if (*v57 == a3)
          {
            break;
          }

          v56 &= ((v56 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v56)
          {
            goto LABEL_41;
          }
        }

        _X9 = *(v57 + 24);
        v60 = *(v57 + 8);
      }

      else
      {
LABEL_41:
        while (1)
        {
          v58 = vceq_s8(v55, 0x8080808080808080);
          if (v58)
          {
            break;
          }

          v50 += 8;
          v54 = (v50 + v54) & v53;
          v55 = *(_X9 + v54);
          v56 = vceq_s8(v55, v20);
          if (v56)
          {
            goto LABEL_39;
          }
        }

        v61 = absl::lts_20240722::container_internal::PrepareInsertNonSoo(this + 108, (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a3) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a3)), (v54 + (__clz(__rbit64(v58)) >> 3)) & v53, v50, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,absl::lts_20240722::flat_hash_map<long long,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>>>>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,absl::lts_20240722::flat_hash_map<long long,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>>>>>>::GetPolicyFunctions(void)::value);
        v60 = 0;
        v57 = *(this + 111) + 40 * v61;
        *v57 = a3;
        *(v57 + 8) = 0;
        *(v57 + 16) = 0;
        _X9 = &unk_23CE31C20;
        *(v57 + 24) = &unk_23CE31C20;
      }

      v62 = 0;
      __asm { PRFM            #4, [X9] }

      v64 = ((v43 >> 7) ^ (_X9 >> 12)) & v60;
      v65 = *(_X9 + v64);
      v66 = vceq_s8(v65, v44);
      if (!v66)
      {
        goto LABEL_49;
      }

LABEL_47:
      while (1)
      {
        v67 = *(v57 + 32) + 40 * ((v64 + (__clz(__rbit64(v66)) >> 3)) & v60);
        if (*v67 == a4)
        {
          break;
        }

        v66 &= ((v66 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v66)
        {
LABEL_49:
          while (1)
          {
            v68 = vceq_s8(v65, 0x8080808080808080);
            if (v68)
            {
              break;
            }

            v62 += 8;
            v64 = (v62 + v64) & v60;
            v65 = *(_X9 + v64);
            v66 = vceq_s8(v65, v44);
            if (v66)
            {
              goto LABEL_47;
            }
          }

          v67 = *(v57 + 32) + 40 * absl::lts_20240722::container_internal::PrepareInsertNonSoo((v57 + 8), (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a4) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a4)), (v64 + (__clz(__rbit64(v68)) >> 3)) & v60, v62, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>>>::GetPolicyFunctions(void)::value);
          *v67 = a4;
          *(v67 + 8) = xmmword_23CE306D0;
          break;
        }
      }

      LODWORD(v72) = ~v78;
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(v67 + 8, &v72, &v73);
      if (LOBYTE(__p[1]) == 1)
      {
        *__p[0] = v72;
      }

      if (a5)
      {
        operator new();
      }
    }
  }

  else
  {
    LiteralRepresentative = operations_research::sat::PresolveContext::GetLiteralRepresentative(this, *(v76 + 8));
    if (operations_research::sat::PresolveContext::VariableWasRemoved(this, LiteralRepresentative))
    {
      *(v76 + 8) = v78;
    }

    else if (v78 != LiteralRepresentative)
    {
      operator new();
    }
  }
}

void sub_23CC9A8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CC9A8E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, void *a10, uint64_t a11, void *a12, void *__p, int a14, __int16 a15, char a16, char a17)
{
  if (a12)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a10);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::PresolveContext::InsertHalfVarValueEncoding(operations_research::sat::PresolveContext *this, unsigned int a2, int a3, uint64_t a4, int a5)
{
  v62 = a2;
  if (*(this + 416))
  {
    return 0;
  }

  operations_research::sat::PresolveContext::GetAffineRelation(this, a3, &v63);
  v8 = a4 - __p[1];
  v9 = (a4 - __p[1]) / __p[0];
  if (v8 == v9 * __p[0])
  {
    v10 = v63;
    operations_research::sat::PresolveContext::DomainOf(this, v63, &v63);
    v11 = operations_research::Domain::Contains(&v63, v9);
    if (v63)
    {
      operator delete(__p[0]);
    }

    if (v11)
    {
      v12 = 0;
      if (a5)
      {
        _X8 = *(this + 106);
        __asm { PRFM            #4, [X8] }

        v19 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v10) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v10));
        v20 = *(this + 104);
        v21 = vdup_n_s8(v19 & 0x7F);
        v22 = ((v19 >> 7) ^ (_X8 >> 12)) & v20;
        v23 = *(_X8 + v22);
        v24 = vceq_s8(v23, v21);
        if (!v24)
        {
          goto LABEL_10;
        }

        do
        {
LABEL_8:
          v25 = *(this + 107) + 40 * ((v22 + (__clz(__rbit64(v24)) >> 3)) & v20);
          if (*v25 == v10)
          {
            _X9 = *(v25 + 24);
            v37 = *(v25 + 8);
            goto LABEL_22;
          }

          v24 &= ((v24 & 0x8080808080808080) - 1) & 0x8080808080808080;
        }

        while (v24);
LABEL_10:
        while (1)
        {
          v26 = vceq_s8(v23, 0x8080808080808080);
          if (v26)
          {
            break;
          }

          v12 += 8;
          v22 = (v12 + v22) & v20;
          v23 = *(_X8 + v22);
          v24 = vceq_s8(v23, v21);
          if (v24)
          {
            goto LABEL_8;
          }
        }

        inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(this + 104, v19, (v22 + (__clz(__rbit64(v26)) >> 3)) & v20, v12, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,absl::lts_20240722::flat_hash_map<long long,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>>>>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,absl::lts_20240722::flat_hash_map<long long,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>>>>>>::GetPolicyFunctions(void)::value);
        v37 = 0;
        v25 = *(this + 107) + 40 * inserted;
        *v25 = v10;
        *(v25 + 8) = 0;
        *(v25 + 16) = 0;
        _X9 = &unk_23CE31C20;
        *(v25 + 24) = &unk_23CE31C20;
LABEL_22:
        v40 = 0;
        __asm { PRFM            #4, [X9] }

        v42 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v9) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v9));
        v43 = vdup_n_s8(v42 & 0x7F);
        v44 = ((_X9 >> 12) ^ (v42 >> 7)) & v37;
        v45 = *(_X9 + v44);
        v46 = vceq_s8(v45, v43);
        if (!v46)
        {
          goto LABEL_25;
        }

LABEL_23:
        while (1)
        {
          v47 = *(v25 + 32) + 40 * ((v44 + (__clz(__rbit64(v46)) >> 3)) & v37);
          if (*v47 == v9)
          {
            break;
          }

          v46 &= ((v46 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v46)
          {
LABEL_25:
            while (1)
            {
              v48 = vceq_s8(v45, 0x8080808080808080);
              if (v48)
              {
                goto LABEL_35;
              }

              v40 += 8;
              v44 = (v40 + v44) & v37;
              v45 = *(_X9 + v44);
              v46 = vceq_s8(v45, v43);
              if (v46)
              {
                goto LABEL_23;
              }
            }
          }
        }
      }

      else
      {
        _X8 = *(this + 110);
        __asm { PRFM            #4, [X8] }

        v29 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v10) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v10));
        v30 = *(this + 108);
        v31 = vdup_n_s8(v29 & 0x7F);
        v32 = ((v29 >> 7) ^ (_X8 >> 12)) & v30;
        v33 = *(_X8 + v32);
        v34 = vceq_s8(v33, v31);
        if (!v34)
        {
          goto LABEL_16;
        }

        do
        {
LABEL_14:
          v25 = *(this + 111) + 40 * ((v32 + (__clz(__rbit64(v34)) >> 3)) & v30);
          if (*v25 == v10)
          {
            _X9 = *(v25 + 24);
            v37 = *(v25 + 8);
            goto LABEL_29;
          }

          v34 &= ((v34 & 0x8080808080808080) - 1) & 0x8080808080808080;
        }

        while (v34);
LABEL_16:
        while (1)
        {
          v35 = vceq_s8(v33, 0x8080808080808080);
          if (v35)
          {
            break;
          }

          v12 += 8;
          v32 = (v12 + v32) & v30;
          v33 = *(_X8 + v32);
          v34 = vceq_s8(v33, v31);
          if (v34)
          {
            goto LABEL_14;
          }
        }

        v49 = absl::lts_20240722::container_internal::PrepareInsertNonSoo(this + 108, v29, (v32 + (__clz(__rbit64(v35)) >> 3)) & v30, v12, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,absl::lts_20240722::flat_hash_map<long long,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>>>>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,absl::lts_20240722::flat_hash_map<long long,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>>>>>>::GetPolicyFunctions(void)::value);
        v37 = 0;
        v25 = *(this + 111) + 40 * v49;
        *v25 = v10;
        *(v25 + 8) = 0;
        *(v25 + 16) = 0;
        _X9 = &unk_23CE31C20;
        *(v25 + 24) = &unk_23CE31C20;
LABEL_29:
        v40 = 0;
        __asm { PRFM            #4, [X9] }

        v42 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v9) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v9));
        v51 = vdup_n_s8(v42 & 0x7F);
        v44 = ((_X9 >> 12) ^ (v42 >> 7)) & v37;
        v52 = *(_X9 + v44);
        v53 = vceq_s8(v52, v51);
        if (!v53)
        {
          goto LABEL_32;
        }

LABEL_30:
        while (1)
        {
          v47 = *(v25 + 32) + 40 * ((v44 + (__clz(__rbit64(v53)) >> 3)) & v37);
          if (*v47 == v9)
          {
            break;
          }

          v53 &= ((v53 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v53)
          {
LABEL_32:
            while (1)
            {
              v48 = vceq_s8(v52, 0x8080808080808080);
              if (v48)
              {
                break;
              }

              v40 += 8;
              v44 = (v40 + v44) & v37;
              v52 = *(_X9 + v44);
              v53 = vceq_s8(v52, v51);
              if (v53)
              {
                goto LABEL_30;
              }
            }

LABEL_35:
            v47 = *(v25 + 32) + 40 * absl::lts_20240722::container_internal::PrepareInsertNonSoo((v25 + 8), v42, (v44 + (__clz(__rbit64(v48)) >> 3)) & v37, v40, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>>>::GetPolicyFunctions(void)::value);
            *v47 = v9;
            *(v47 + 8) = xmmword_23CE306D0;
            break;
          }
        }
      }

      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(v47 + 8, &v62, &v63);
      if (__p[1])
      {
        *__p[0] = v62;
        if (dword_2810BD680 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&operations_research::sat::PresolveContext::InsertHalfVarValueEncoding(int,int,long long,BOOL)::$_0::operator() const(void)::site, dword_2810BD680))
        {
          absl::lts_20240722::log_internal::LogMessage::LogMessage(&v63, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/presolve_context.cc", 1459);
          v57 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v63, 2);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v57, "Collect lit(", 0xCuLL);
          LODWORD(v65) = v62;
          v58 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v57, &v65);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v58, ") implies var(", 0xEuLL);
          LODWORD(v65) = v10;
          v59 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v58, &v65);
          if (a5)
          {
            v60 = ") == ";
          }

          else
          {
            v60 = ") != ";
          }

          v61 = absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v59, v60);
          v65 = v9;
          absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v61, &v65);
          absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v63);
        }

        operator new();
      }

      return 0;
    }
  }

  if (~v62 <= v62)
  {
    v55 = v62;
  }

  else
  {
    v55 = ~v62;
  }

  operations_research::Domain::Domain(&v63, v62 >> 31);
  v56 = operations_research::sat::PresolveContext::IntersectDomainWith(this, v55, &v63, 0);
  operations_research::sat::LinearIncrementalEvaluator::ReduceBounds(&v63);
  return v56;
}

void sub_23CC9B40C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CC9B420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::PresolveContext::InsertVarValueEncoding(operations_research::sat::PresolveContext *this, uint64_t a2, int a3, uint64_t a4)
{
  operations_research::sat::PresolveContext::GetAffineRelation(this, a3, &v21);
  v7 = a4 - v23;
  v8 = (a4 - v23) / __p;
  if (v7 != v8 * __p)
  {
    goto LABEL_13;
  }

  v9 = v21;
  operations_research::sat::PresolveContext::DomainOf(this, v21, &v21);
  v10 = operations_research::Domain::Contains(&v21, v8);
  if (v21)
  {
    operator delete(__p);
  }

  if (v10)
  {
    LiteralRepresentative = operations_research::sat::PresolveContext::GetLiteralRepresentative(this, a2);
    v12 = 1;
    operations_research::sat::PresolveContext::InsertVarValueEncodingInternal(this, LiteralRepresentative, v9, v8, 1);
    if (*(this + 448) == 1)
    {
      v13 = ~LiteralRepresentative <= LiteralRepresentative ? LiteralRepresentative : ~LiteralRepresentative;
      v14 = *(this + 57);
      v15 = v13 >> 6;
      v12 = 1;
      v16 = *(v14 + 8 * v15);
      if ((v16 & (1 << v13)) == 0)
      {
        if ((*(v14 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v9))
        {
          v17 = *(this + 60);
          v18 = *(v17 + 8 * v9);
          *(v14 + 8 * v15) = v16 | (1 << v13);
          *(v17 + 8 * v13) = (LiteralRepresentative >= 0) ^ (v18 != v8);
        }

        return 1;
      }
    }
  }

  else
  {
LABEL_13:
    if (~a2 <= a2)
    {
      v19 = a2;
    }

    else
    {
      v19 = ~a2;
    }

    operations_research::Domain::Domain(&v21, a2 >> 31);
    v12 = operations_research::sat::PresolveContext::IntersectDomainWith(this, v19, &v21, 0);
    if (v21)
    {
      operator delete(__p);
    }
  }

  return v12;
}

void sub_23CC9B5E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p)
{
  if (a10)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::PresolveContext::StoreLiteralImpliesVarEqValue(operations_research::sat::PresolveContext *this, uint64_t a2, int a3, uint64_t a4)
{
  operations_research::sat::PresolveContext::GetAffineRelation(this, a3, &v15);
  v7 = a4 - v17;
  v8 = (a4 - v17) / __p;
  if (v7 != v8 * __p)
  {
    goto LABEL_7;
  }

  v9 = v15;
  operations_research::sat::PresolveContext::DomainOf(this, v15, &v15);
  v10 = operations_research::Domain::Contains(&v15, v8);
  if (v15)
  {
    operator delete(__p);
  }

  if (v10)
  {
    LiteralRepresentative = operations_research::sat::PresolveContext::GetLiteralRepresentative(this, a2);
    return operations_research::sat::PresolveContext::InsertHalfVarValueEncoding(this, LiteralRepresentative, v9, v8, 1);
  }

  else
  {
LABEL_7:
    if (~a2 <= a2)
    {
      v13 = a2;
    }

    else
    {
      v13 = ~a2;
    }

    operations_research::Domain::Domain(&v15, a2 >> 31);
    result = operations_research::sat::PresolveContext::IntersectDomainWith(this, v13, &v15, 0);
    if (v15)
    {
      v14 = result;
      operator delete(__p);
      return v14;
    }
  }

  return result;
}

void sub_23CC9B71C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p)
{
  if (a10)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::PresolveContext::StoreLiteralImpliesVarNEqValue(operations_research::sat::PresolveContext *this, uint64_t a2, int a3, uint64_t a4)
{
  operations_research::sat::PresolveContext::GetAffineRelation(this, a3, &v12);
  v7 = a4 - v14;
  v8 = (a4 - v14) / v13;
  if (v7 != v8 * v13)
  {
    return 0;
  }

  v10 = v12;
  LiteralRepresentative = operations_research::sat::PresolveContext::GetLiteralRepresentative(this, a2);

  return operations_research::sat::PresolveContext::InsertHalfVarValueEncoding(this, LiteralRepresentative, v10, v8, 0);
}

uint64_t operations_research::sat::PresolveContext::HasVarValueEncoding(operations_research::sat::PresolveContext *this, int a2, uint64_t a3, int *a4)
{
  if (operations_research::sat::PresolveContext::VariableWasRemoved(this, a2))
  {
    operations_research::sat::PresolveContext::HasVarValueEncoding(&v41);
  }

  operations_research::sat::PresolveContext::GetAffineRelation(this, a2, &v41);
  v8 = a3 - v43;
  v9 = (a3 - v43) / v42;
  if (v8 != v9 * v42)
  {
    return 0;
  }

  v11 = 0;
  v12 = v41;
  _X10 = *(this + 102);
  __asm { PRFM            #4, [X10] }

  v19 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v41) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v41));
  v20 = *(this + 100);
  v21 = vdup_n_s8(v19 & 0x7F);
  v22 = ((v19 >> 7) ^ (_X10 >> 12)) & v20;
  v23 = *(_X10 + v22);
  v24 = vceq_s8(v23, v21);
  if (!v24)
  {
    goto LABEL_7;
  }

LABEL_5:
  while (1)
  {
    v25 = *(this + 103) + 40 * ((v22 + (__clz(__rbit64(v24)) >> 3)) & v20);
    if (*v25 == v41)
    {
      break;
    }

    v24 &= ((v24 & 0x8080808080808080) - 1) & 0x8080808080808080;
    if (!v24)
    {
LABEL_7:
      while (1)
      {
        v26 = vceq_s8(v23, 0x8080808080808080);
        if (v26)
        {
          break;
        }

        v11 += 8;
        v22 = (v11 + v22) & v20;
        v23 = *(_X10 + v22);
        v24 = vceq_s8(v23, v21);
        if (v24)
        {
          goto LABEL_5;
        }
      }

      v25 = *(this + 103) + 40 * absl::lts_20240722::container_internal::PrepareInsertNonSoo(this + 100, v19, (v22 + (__clz(__rbit64(v26)) >> 3)) & v20, v11, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,absl::lts_20240722::flat_hash_map<long long,operations_research::sat::SavedLiteral,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,operations_research::sat::SavedLiteral>>>>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,absl::lts_20240722::flat_hash_map<long long,operations_research::sat::SavedLiteral,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,operations_research::sat::SavedLiteral>>>>>>::GetPolicyFunctions(void)::value);
      *v25 = v12;
      *(v25 + 8) = xmmword_23CE306D0;
      goto LABEL_19;
    }
  }

  v27 = *(v25 + 8);
  if (v27 > 1)
  {
    v28 = 0;
    _X11 = *(v25 + 24);
    __asm { PRFM            #4, [X11] }

    v31 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v9) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v9));
    v32 = vdup_n_s8(v31 & 0x7F);
    v33 = ((_X11 >> 12) ^ (v31 >> 7)) & v27;
    v34 = *(_X11 + v33);
    v35 = vceq_s8(v34, v32);
    if (!v35)
    {
      goto LABEL_15;
    }

LABEL_12:
    v36 = *(v25 + 32);
    while (1)
    {
      v37 = (v33 + (__clz(__rbit64(v35)) >> 3)) & v27;
      if (*(v36 + 16 * v37) == v9)
      {
        break;
      }

      v35 &= ((v35 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v35)
      {
LABEL_15:
        while (!*&vceq_s8(v34, 0x8080808080808080))
        {
          v28 += 8;
          v33 = (v28 + v33) & v27;
          v34 = *(_X11 + v33);
          v35 = vceq_s8(v34, v32);
          if (v35)
          {
            goto LABEL_12;
          }
        }

        return 0;
      }
    }

    v38 = v36 + 16 * v37;
    if (!(_X11 + v37))
    {
      return 0;
    }

    goto LABEL_25;
  }

LABEL_19:
  if (*(v25 + 16) < 2uLL)
  {
    return 0;
  }

  v39 = *(v25 + 24);
  v38 = v25 + 24;
  if (v39 != v9 || !&absl::lts_20240722::container_internal::kSooControl)
  {
    return 0;
  }

LABEL_25:
  LiteralRepresentative = operations_research::sat::PresolveContext::GetLiteralRepresentative(this, *(v38 + 8));
  if (operations_research::sat::PresolveContext::VariableWasRemoved(this, LiteralRepresentative))
  {
    return 0;
  }

  if (a4)
  {
    *a4 = operations_research::sat::PresolveContext::GetLiteralRepresentative(this, *(v38 + 8));
  }

  return 1;
}

BOOL operations_research::sat::PresolveContext::IsFullyEncoded(operations_research::sat::PresolveContext *this, const operations_research::sat::LinearExpressionProto *a2)
{
  v3 = *(a2 + 4);
  if (v3 > 1)
  {
    operations_research::sat::PresolveContext::IsFullyEncoded(v3);
  }

  if (v3 != 1)
  {
    return 1;
  }

  v5 = 0;
  v6 = 1;
  while (!*(*(a2 + 6) + 8 * v5))
  {
LABEL_4:
    if (++v5 >= v6)
    {
      return 1;
    }
  }

  v7 = *(*(a2 + 3) + 4 * v5);
  if (~v7 > v7)
  {
    v7 = ~v7;
  }

  if (operations_research::Domain::IsFixed((*(this + 53) + 24 * v7)))
  {
    v6 = *(a2 + 4);
    goto LABEL_4;
  }

  v8 = **(a2 + 3);
  if (~v8 <= v8)
  {
    v9 = **(a2 + 3);
  }

  else
  {
    v9 = ~v8;
  }

  v10 = operations_research::Domain::Size((*(this + 53) + 24 * v9));
  if (v10 < 3)
  {
    return 1;
  }

  v12 = 0;
  _X9 = *(this + 102);
  __asm { PRFM            #4, [X9] }

  v19 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v9) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v9));
  v20 = *(this + 100);
  v21 = vdup_n_s8(v19 & 0x7F);
  v22 = ((v19 >> 7) ^ (_X9 >> 12)) & v20;
  v23 = *(_X9 + v22);
  v24 = vceq_s8(v23, v21);
  if (!v24)
  {
    goto LABEL_18;
  }

  do
  {
LABEL_16:
    v25 = *(this + 103) + 40 * ((v22 + (__clz(__rbit64(v24)) >> 3)) & v20);
    if (*v25 == v9)
    {
      return v10 <= *(v25 + 16) >> 1;
    }

    v24 &= ((v24 & 0x8080808080808080) - 1) & 0x8080808080808080;
  }

  while (v24);
LABEL_18:
  while (!*&vceq_s8(v23, 0x8080808080808080))
  {
    v12 += 8;
    v22 = (v12 + v22) & v20;
    v23 = *(_X9 + v22);
    v24 = vceq_s8(v23, v21);
    if (v24)
    {
      goto LABEL_16;
    }
  }

  return 0;
}

uint64_t operations_research::sat::PresolveContext::GetOrCreateVarValueEncoding(operations_research::sat::PresolveContext *this, int a2, uint64_t a3)
{
  v72 = a3;
  if (operations_research::sat::PresolveContext::VariableWasRemoved(this, a2))
  {
    operations_research::sat::PresolveContext::GetOrCreateVarValueEncoding(&v73);
  }

  operations_research::sat::PresolveContext::GetAffineRelation(this, a2, &v73);
  v5 = (v72 - v75) / v74;
  if ((v72 - v75) % v74)
  {
    return ~operations_research::sat::PresolveContext::GetTrueLiteral(this);
  }

  v6 = v73;
  v72 = (v72 - v75) / v74;
  if (!operations_research::Domain::Contains((*(this + 53) + 24 * v73), v5))
  {
    return ~operations_research::sat::PresolveContext::GetTrueLiteral(this);
  }

  v7 = 0;
  _X8 = *(this + 102);
  __asm { PRFM            #4, [X8] }

  v14 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v6) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v6));
  v15 = *(this + 100);
  v16 = vdup_n_s8(v14 & 0x7F);
  v17 = ((v14 >> 7) ^ (_X8 >> 12)) & v15;
  v18 = *(_X8 + v17);
  v19 = vceq_s8(v18, v16);
  if (!v19)
  {
    goto LABEL_7;
  }

LABEL_5:
  while (1)
  {
    v20 = *(this + 103) + 40 * ((v17 + (__clz(__rbit64(v19)) >> 3)) & v15);
    if (*v20 == v6)
    {
      break;
    }

    v19 &= ((v19 & 0x8080808080808080) - 1) & 0x8080808080808080;
    if (!v19)
    {
LABEL_7:
      while (1)
      {
        v21 = vceq_s8(v18, 0x8080808080808080);
        if (v21)
        {
          break;
        }

        v7 += 8;
        v17 = (v7 + v17) & v15;
        v18 = *(_X8 + v17);
        v19 = vceq_s8(v18, v16);
        if (v19)
        {
          goto LABEL_5;
        }
      }

      v20 = *(this + 103) + 40 * absl::lts_20240722::container_internal::PrepareInsertNonSoo(this + 100, v14, (v17 + (__clz(__rbit64(v21)) >> 3)) & v15, v7, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,absl::lts_20240722::flat_hash_map<long long,operations_research::sat::SavedLiteral,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,operations_research::sat::SavedLiteral>>>>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,absl::lts_20240722::flat_hash_map<long long,operations_research::sat::SavedLiteral,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,operations_research::sat::SavedLiteral>>>>>>::GetPolicyFunctions(void)::value);
      *v20 = v6;
      *(v20 + 8) = xmmword_23CE306D0;
      v24 = (v20 + 8);
      goto LABEL_21;
    }
  }

  v24 = (v20 + 8);
  v23 = *(v20 + 8);
  if (v23 > 1)
  {
    v25 = 0;
    _X9 = *(v20 + 24);
    __asm { PRFM            #4, [X9] }

    v28 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v72) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v72));
    v29 = vdup_n_s8(v28 & 0x7F);
    v30 = ((v28 >> 7) ^ (_X9 >> 12)) & v23;
    v31 = *(_X9 + v30);
    v32 = vceq_s8(v31, v29);
    if (!v32)
    {
      goto LABEL_17;
    }

LABEL_14:
    v33 = *(v20 + 32);
    while (1)
    {
      v34 = (v30 + (__clz(__rbit64(v32)) >> 3)) & v23;
      if (*(v33 + 16 * v34) == v72)
      {
        break;
      }

      v32 &= ((v32 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v32)
      {
LABEL_17:
        while (!*&vceq_s8(v31, 0x8080808080808080))
        {
          v25 += 8;
          v30 = (v25 + v30) & v23;
          v31 = *(_X9 + v30);
          v32 = vceq_s8(v31, v29);
          if (v32)
          {
            goto LABEL_14;
          }
        }

        goto LABEL_39;
      }
    }

    v35 = v33 + 16 * v34;
    if (!(_X9 + v34))
    {
      goto LABEL_39;
    }

    goto LABEL_27;
  }

LABEL_21:
  if (*(v20 + 16) < 2uLL)
  {
    goto LABEL_39;
  }

  v35 = v20 + 24;
  if (*(v20 + 24) != v72 || !&absl::lts_20240722::container_internal::kSooControl)
  {
    goto LABEL_39;
  }

LABEL_27:
  LiteralRepresentative = operations_research::sat::PresolveContext::GetLiteralRepresentative(this, *(v35 + 8));
  v37 = operations_research::sat::PresolveContext::VariableWasRemoved(this, LiteralRepresentative);
  result = LiteralRepresentative;
  if (!v37)
  {
    return result;
  }

  v38 = *v24;
  if (*v24 > 1)
  {
    v39 = 0;
    _X10 = *(v20 + 24);
    __asm { PRFM            #4, [X10] }

    v42 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v72) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v72));
    v43 = vdup_n_s8(v42 & 0x7F);
    v44 = ((v42 >> 7) ^ (_X10 >> 12)) & v38;
    v45 = *(_X10 + v44);
    v46 = vceq_s8(v45, v43);
    if (!v46)
    {
      goto LABEL_35;
    }

    do
    {
LABEL_33:
      v47 = (v44 + (__clz(__rbit64(v46)) >> 3)) & v38;
      if (*(*(v20 + 32) + 16 * v47) == v72)
      {
        absl::lts_20240722::container_internal::EraseMetaOnly(v24, v47);
        goto LABEL_39;
      }

      v46 &= ((v46 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v46);
LABEL_35:
    while (!*&vceq_s8(v45, 0x8080808080808080))
    {
      v39 += 8;
      v44 = (v39 + v44) & v38;
      v45 = *(_X10 + v44);
      v46 = vceq_s8(v45, v43);
      if (v46)
      {
        goto LABEL_33;
      }
    }
  }

  else if (*(v20 + 16) >= 2uLL && *(v20 + 24) == v72)
  {
    *(v20 + 16) = 0;
  }

LABEL_39:
  if (operations_research::Domain::Size((*(this + 53) + 24 * v6)) == 1)
  {
    TrueLiteral = operations_research::sat::PresolveContext::GetTrueLiteral(this);
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,operations_research::sat::SavedLiteral>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,operations_research::sat::SavedLiteral>>>::find_or_prepare_insert<long long>(v24, &v72, &v73);
    if (v75 == 1)
    {
      v49 = v74;
      *v74 = v72;
      *(v49 + 8) = 0;
    }

    result = TrueLiteral;
    *(v74 + 8) = TrueLiteral;
    return result;
  }

  if ((v6 & 0x80000000) == 0)
  {
    v50 = operations_research::Domain::Min((*(this + 53) + 24 * v6));
    v51 = operations_research::Domain::Max((*(this + 53) + 24 * v6));
    if (operations_research::Domain::Size((*(this + 53) + 24 * v6)) == 2)
    {
      goto LABEL_45;
    }

LABEL_53:
    v56 = operations_research::sat::PresolveContext::NewBoolVar(this);
    operations_research::sat::PresolveContext::InsertVarValueEncoding(this, v56, v6, v72);

    return operations_research::sat::PresolveContext::GetLiteralRepresentative(this, v56);
  }

  v50 = -operations_research::Domain::Max((*(this + 53) + 24 * ~v6));
  v51 = -operations_research::Domain::Min((*(this + 53) + 24 * ~v6));
  if (operations_research::Domain::Size((*(this + 53) + 24 * v6)) != 2)
  {
    goto LABEL_53;
  }

LABEL_45:
  if (v72 == v50)
  {
    v52 = v51;
  }

  else
  {
    v52 = v50;
  }

  v73 = v52;
  v53 = *v24;
  if (*v24 > 1)
  {
    v57 = 0;
    _X10 = *(v20 + 24);
    __asm { PRFM            #4, [X10] }

    v60 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v52) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v52));
    v61 = vdup_n_s8(v60 & 0x7F);
    v62 = ((_X10 >> 12) ^ (v60 >> 7)) & v53;
    v63 = *(_X10 + v62);
    v64 = vceq_s8(v63, v61);
    if (!v64)
    {
      goto LABEL_60;
    }

LABEL_57:
    v65 = *(v20 + 32);
    do
    {
      v66 = (v62 + (__clz(__rbit64(v64)) >> 3)) & v53;
      if (*(v65 + 16 * v66) == v52)
      {
        v20 = v65 + 16 * v66;
        v55 = (_X10 + v66);
        goto LABEL_65;
      }

      v64 &= ((v64 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v64);
LABEL_60:
    while (!*&vceq_s8(v63, 0x8080808080808080))
    {
      v57 += 8;
      v62 = (v57 + v62) & v53;
      v63 = *(_X10 + v62);
      v64 = vceq_s8(v63, v61);
      if (v64)
      {
        goto LABEL_57;
      }
    }

    goto LABEL_63;
  }

  if (*(v20 + 16) < 2uLL || (v54 = *(v20 + 24), v20 += 24, v54 != v52))
  {
LABEL_63:
    v55 = 0;
    goto LABEL_65;
  }

  v55 = &absl::lts_20240722::container_internal::kSooControl;
LABEL_65:
  if (v55)
  {
    v67 = ~operations_research::sat::PresolveContext::GetLiteralRepresentative(this, *(v20 + 8));
    if (!operations_research::sat::PresolveContext::VariableWasRemoved(this, v67))
    {
      v70 = absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,operations_research::sat::SavedLiteral>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,operations_research::sat::SavedLiteral>>>::operator[]<long long,absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,operations_research::sat::SavedLiteral>>(v24, &v72);
      result = v67;
      *v70 = v67;
      return result;
    }

    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,operations_research::sat::SavedLiteral>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,operations_research::sat::SavedLiteral>>>::erase<long long>(v24, &v73);
  }

  if (v50 || v51 != 1)
  {
    v69 = operations_research::sat::PresolveContext::NewBoolVar(this);
    operations_research::sat::PresolveContext::InsertVarValueEncoding(this, v69, v6, v51);
    LODWORD(result) = operations_research::sat::PresolveContext::GetLiteralRepresentative(this, v69);
    if (v72 == v51)
    {
      return result;
    }

    else
    {
      return ~result;
    }
  }

  else
  {
    v68 = operations_research::sat::PresolveContext::GetLiteralRepresentative(this, v6);
    v71 = 1;
    *absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,operations_research::sat::SavedLiteral>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,operations_research::sat::SavedLiteral>>>::operator[]<long long,absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,operations_research::sat::SavedLiteral>>(v24, &v71) = v68;
    v71 = 0;
    *absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,operations_research::sat::SavedLiteral>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,operations_research::sat::SavedLiteral>>>::operator[]<long long,absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,operations_research::sat::SavedLiteral>>(v24, &v71) = ~v68;
    if (v72 == 1)
    {
      return v68;
    }

    else
    {
      return ~v68;
    }
  }
}

uint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,operations_research::sat::SavedLiteral>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,operations_research::sat::SavedLiteral>>>::erase<long long>(unint64_t *a1, void *a2)
{
  v2 = *a1;
  if (*a1 > 1)
  {
    v4 = 0;
    _X9 = a1[2];
    __asm { PRFM            #4, [X9] }

    v11 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2));
    v12 = vdup_n_s8(v11 & 0x7F);
    v13 = ((v11 >> 7) ^ (_X9 >> 12)) & v2;
    v14 = *(_X9 + v13);
    v15 = vceq_s8(v14, v12);
    if (!v15)
    {
      goto LABEL_8;
    }

    do
    {
LABEL_6:
      v16 = (v13 + (__clz(__rbit64(v15)) >> 3)) & v2;
      if (*(a1[3] + 16 * v16) == *a2)
      {
        a1[2];
        absl::lts_20240722::container_internal::EraseMetaOnly(a1, v16);
        return 1;
      }

      v15 &= ((v15 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v15);
LABEL_8:
    while (!*&vceq_s8(v14, 0x8080808080808080))
    {
      v4 += 8;
      v13 = (v4 + v13) & v2;
      v14 = *(_X9 + v13);
      v15 = vceq_s8(v14, v12);
      if (v15)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

  else if (a1[1] >= 2 && a1[2] == *a2)
  {
    a1[1] = 0;
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t operations_research::sat::PresolveContext::GetOrCreateAffineValueEncoding(operations_research::sat::PresolveContext *this, const operations_research::sat::LinearExpressionProto *a2, uint64_t a3)
{
  v6 = *(a2 + 4);
  if (v6 < 1)
  {
LABEL_9:
    v9 = operations_research::sat::PresolveContext::FixedValue(this, a2);
    LODWORD(result) = operations_research::sat::PresolveContext::GetTrueLiteral(this);
    if (v9 == a3)
    {
      return result;
    }

    else
    {
      return ~result;
    }
  }

  v7 = 0;
  while (!*(*(a2 + 6) + 8 * v7))
  {
LABEL_3:
    if (++v7 >= v6)
    {
      goto LABEL_9;
    }
  }

  v8 = *(*(a2 + 3) + 4 * v7);
  if (~v8 > v8)
  {
    v8 = ~v8;
  }

  if (operations_research::Domain::IsFixed((*(this + 53) + 24 * v8)))
  {
    v6 = *(a2 + 4);
    goto LABEL_3;
  }

  v11 = a3 - *(a2 + 8);
  v12 = **(a2 + 6);
  if (v11 % v12)
  {
    return ~operations_research::sat::PresolveContext::GetTrueLiteral(this);
  }

  v13 = **(a2 + 3);

  return operations_research::sat::PresolveContext::GetOrCreateVarValueEncoding(this, v13, v11 / v12);
}

void operations_research::sat::PresolveContext::ReadObjectiveFromProto(operations_research::sat::PresolveContext *this, __n128 a2)
{
  if (*(*this + 128))
  {
    v3 = *(*this + 128);
  }

  else
  {
    v3 = &operations_research::sat::_CpObjectiveProto_default_instance_;
  }

  *(this + 504) = 0;
  *(this + 76) = v3[11];
  a2.n128_u64[0] = v3[12];
  if (a2.n128_f64[0] == 0.0)
  {
    a2.n128_f64[0] = 1.0;
  }

  *(this + 77) = a2.n128_u64[0];
  *(this + 78) = v3[13];
  *(this + 79) = v3[15];
  v4 = v3[14];
  if (v4 <= 1)
  {
    v4 = 1;
  }

  *(this + 80) = v4;
  v5 = *(v3 + 16);
  if (v5)
  {
    *(this + 576) = 1;
    operations_research::Domain::FromFlatSpanOfIntervals(v3[9], v5, &v25, a2);
    v6 = this + 584;
    if ((this + 584) == &v25)
    {
LABEL_10:
      operations_research::sat::LinearIncrementalEvaluator::ReduceBounds(&v25);
      goto LABEL_15;
    }
  }

  else
  {
    *(this + 576) = 0;
    operations_research::Domain::AllValues(&v25);
    v6 = this + 584;
    if ((this + 584) == &v25)
    {
      goto LABEL_10;
    }
  }

  if (*v6)
  {
    operator delete(*(this + 74));
  }

  *(this + 73) = v25;
  *(this + 37) = v26;
LABEL_15:
  v7 = *(this + 78);
  if (v7 < 0)
  {
    v7 = -v7;
  }

  *(this + 68) = v7;
  v8 = *(this + 64);
  if (v8 <= 1)
  {
    *(this + 65) = 0;
    if (*(v3 + 4) < 1)
    {
      return;
    }

    goto LABEL_21;
  }

  absl::lts_20240722::container_internal::ClearBackingArray(this + 64, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,long long>>>::GetPolicyFunctions(void)::value, v8 < 0x80, 1u);
  if (*(v3 + 4) >= 1)
  {
LABEL_21:
    for (i = 0; i < *(v3 + 4); ++i)
    {
      v10 = *(v3[3] + i);
      if ((v10 & 0x80000000) != 0)
      {
        v15 = operations_research::Domain::Max((*(this + 53) + 24 * ~v10));
        if (v15 >= 0)
        {
          v16 = v15;
        }

        else
        {
          v16 = -v15;
        }

        v17 = -operations_research::Domain::Min((*(this + 53) + 24 * ~v10));
        if (v17 >= 0)
        {
          v14 = v17;
        }

        else
        {
          v14 = -v17;
        }

        if (v16 > v14)
        {
          v14 = v16;
        }

        if (!v14)
        {
          continue;
        }
      }

      else
      {
        v11 = operations_research::Domain::Min((*(this + 53) + 24 * v10));
        if (v11 >= 0)
        {
          v12 = v11;
        }

        else
        {
          v12 = -v11;
        }

        v13 = operations_research::Domain::Max((*(this + 53) + 24 * v10));
        if (v13 >= 0)
        {
          v14 = v13;
        }

        else
        {
          v14 = -v13;
        }

        if (v12 > v14)
        {
          v14 = v12;
        }

        if (!v14)
        {
          continue;
        }
      }

      v18 = v3[6][i];
      if (v18 >= 0)
      {
        v19 = v3[6][i];
      }

      else
      {
        v19 = -v18;
      }

      *(this + 68) += v19 * v14;
      if (~v10 <= v10)
      {
        v20 = v10;
      }

      else
      {
        v20 = ~v10;
      }

      v24 = v20;
      if (v10 >= 0)
      {
        v21 = v18;
      }

      else
      {
        v21 = -v18;
      }

      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,long long>>>::find_or_prepare_insert<int>(this + 512, &v24, &v25);
      if (BYTE8(v26) == 1)
      {
        v22 = v26;
        *v26 = v24;
        *(v22 + 8) = 0;
      }

      *(v26 + 8) += v21;
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,long long>>>::find_or_prepare_insert<int>(this + 512, &v24, &v25);
      if (BYTE8(v26) == 1)
      {
        v23 = v26;
        *v26 = v24;
        *(v23 + 8) = 0;
      }

      if (*(v26 + 8))
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(*(this + 84) + 32 * v24, &operations_research::sat::kObjectiveConstraint, &v25);
        if (BYTE8(v26) == 1)
        {
          *v26 = -1;
        }
      }

      else
      {
        operations_research::sat::PresolveContext::RemoveVariableFromObjective(this, v24);
      }
    }
  }
}

void operations_research::sat::PresolveContext::RemoveVariableFromObjective(operations_research::sat::PresolveContext *this, int a2)
{
  *(this + 504) = 0;
  if (~a2 <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = ~a2;
  }

  v4 = *(this + 64);
  if (v4 > 1)
  {
    v5 = 0;
    _X10 = *(this + 66);
    __asm { PRFM            #4, [X10] }

    v12 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v3) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v3));
    v13 = vdup_n_s8(v12 & 0x7F);
    v14 = ((v12 >> 7) ^ (_X10 >> 12)) & v4;
    v15 = *(_X10 + v14);
    v16 = vceq_s8(v15, v13);
    if (!v16)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v17 = (v14 + (__clz(__rbit64(v16)) >> 3)) & v4;
      if (*(*(this + 67) + 16 * v17) == v3)
      {
        absl::lts_20240722::container_internal::EraseMetaOnly(this + 64, v17);
        goto LABEL_15;
      }

      v16 &= ((v16 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v16);
LABEL_11:
    while (!*&vceq_s8(v15, 0x8080808080808080))
    {
      v5 += 8;
      v14 = (v5 + v14) & v4;
      v15 = *(_X10 + v14);
      v16 = vceq_s8(v15, v13);
      if (v16)
      {
        goto LABEL_9;
      }
    }
  }

  else if (*(this + 65) >= 2uLL && *(this + 132) == v3)
  {
    *(this + 65) = 0;
  }

LABEL_15:
  v18 = *(this + 84);
  v19 = (v18 + 32 * v3);
  v20 = *v19;
  if (*v19 > 1)
  {
    v21 = 0;
    _X11 = v19[2];
    __asm { PRFM            #4, [X11] }

    v24 = vdup_n_s8((((0x378BC386FLL * 0x9DDFEA08EB382D69) >> 64) ^ 0xD866A887) & 0x7F);
    v25 = (((((0x378BC386FLL * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * 0x378BC386FLL)) >> 7) ^ (_X11 >> 12)) & v20;
    v26 = *(_X11 + v25);
    v27 = vceq_s8(v26, v24);
    if (!v27)
    {
      goto LABEL_22;
    }

    do
    {
LABEL_20:
      v28 = (v25 + (__clz(__rbit64(v27)) >> 3)) & v20;
      if (*(v19[3] + 4 * v28) == -1)
      {
        absl::lts_20240722::container_internal::EraseMetaOnly(v19, v28);
        v18 = *(this + 84);
        goto LABEL_26;
      }

      v27 &= ((v27 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v27);
LABEL_22:
    while (!*&vceq_s8(v26, 0x8080808080808080))
    {
      v21 += 8;
      v25 = (v21 + v25) & v20;
      v26 = *(_X11 + v25);
      v27 = vceq_s8(v26, v24);
      if (v27)
      {
        goto LABEL_20;
      }
    }
  }

  else if (v19[1] >= 2 && *(v19 + 4) == -1)
  {
    v19[1] = 0;
  }

LABEL_26:
  if (*(v18 + 32 * v3 + 8) <= 7uLL)
  {
    v31 = v3;
    v29 = *(this + 25);
    v30 = *(v29 + 8 * (v3 >> 6));
    if ((v30 & (1 << v3)) == 0)
    {
      *(v29 + 8 * (v3 >> 6)) = v30 | (1 << v3);
      std::vector<int>::push_back[abi:ne200100](this + 224, &v31);
    }
  }
}

uint64_t operations_research::sat::PresolveContext::CanonicalizeOneObjectiveVariable(operations_research::sat::PresolveContext *this, absl::lts_20240722::numbers_internal *a2)
{
  v4 = *(this + 64);
  if (v4 > 1)
  {
    v6 = 0;
    v7 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2;
    v8 = 0x9DDFEA08EB382D69 * v7;
    v9 = (v7 * 0x9DDFEA08EB382D69) >> 64;
    _X10 = *(this + 66);
    __asm { PRFM            #4, [X10] }

    v16 = v9 ^ v8;
    v17 = vdup_n_s8(v16 & 0x7F);
    v18 = ((v16 >> 7) ^ (_X10 >> 12)) & v4;
    v19 = *(_X10 + v18);
    v20 = vceq_s8(v19, v17);
    if (!v20)
    {
      goto LABEL_8;
    }

LABEL_5:
    v21 = *(this + 67);
    while (1)
    {
      v22 = (v18 + (__clz(__rbit64(v20)) >> 3)) & v4;
      if (*(v21 + 16 * v22) == a2)
      {
        break;
      }

      v20 &= ((v20 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v20)
      {
LABEL_8:
        while (!*&vceq_s8(v19, 0x8080808080808080))
        {
          v6 += 8;
          v18 = (v6 + v18) & v4;
          v19 = *(_X10 + v18);
          v20 = vceq_s8(v19, v17);
          if (v20)
          {
            goto LABEL_5;
          }
        }

        return 1;
      }
    }

    v23 = (v21 + 16 * v22);
    if (_X10 + v22)
    {
      goto LABEL_16;
    }

    return 1;
  }

  if (*(this + 65) < 2uLL)
  {
    return 1;
  }

  v23 = this + 528;
  v24 = &absl::lts_20240722::container_internal::kSooControl;
  if (*(this + 132) != a2)
  {
    v24 = 0;
    v23 = 0;
  }

  if (!v24)
  {
    return 1;
  }

LABEL_16:
  v25 = *(v23 + 1);
  if ((*(this + 16) & 1) == 0 && (*(this + 576) & 1) == 0 && 0xAAAAAAAAAAAAAAABLL * ((*(this + 82) - *(this + 81)) >> 3) == *(*this + 56))
  {
    v26 = (*(this + 84) + 32 * a2);
    if ((v26[1] & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v27 = *v26;
      if (*v26 >= 2uLL)
      {
        v32 = 0;
        _X11 = v26[2];
        __asm { PRFM            #4, [X11] }

        v35 = ((0x378BC386FLL * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * 0x378BC386FLL);
        v36 = vdup_n_s8(v35 & 0x7F);
        v37 = ((v35 >> 7) ^ (_X11 >> 12)) & v27;
        v38 = *(_X11 + v37);
        v39 = vceq_s8(v38, v36);
        if (!v39)
        {
          goto LABEL_32;
        }

LABEL_30:
        while (*(v26[3] + 4 * ((v37 + (__clz(__rbit64(v39)) >> 3)) & v27)) != -1)
        {
          v39 &= ((v39 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v39)
          {
LABEL_32:
            while (!*&vceq_s8(v38, 0x8080808080808080))
            {
              v32 += 8;
              v37 = (v32 + v37) & v27;
              v38 = *(_X11 + v37);
              v39 = vceq_s8(v38, v36);
              if (v39)
              {
                goto LABEL_30;
              }
            }

            goto LABEL_38;
          }
        }
      }

      else if (*(v26 + 4) != -1)
      {
        goto LABEL_38;
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "objective: variable not used elsewhere");
      operations_research::sat::PresolveContext::UpdateRuleStats(this, &__p, 1, v28, v29);
      if (v55 < 0)
      {
        operator delete(__p);
      }

      if (v25 < 1)
      {
        v40 = operations_research::sat::PresolveContext::MaxOf(this, a2);
        operations_research::Domain::Domain(&__p, v40);
        v41 = operations_research::sat::PresolveContext::IntersectDomainWith(this, a2, &__p, 0);
        if (__p)
        {
          operator delete(*(&__p + 1));
        }

        if ((v41 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v30 = operations_research::sat::PresolveContext::MinOf(this, a2);
        operations_research::Domain::Domain(&__p, v30);
        v31 = operations_research::sat::PresolveContext::IntersectDomainWith(this, a2, &__p, 0);
        if (__p)
        {
          operator delete(*(&__p + 1));
        }

        if ((v31 & 1) == 0)
        {
          return 0;
        }
      }
    }
  }

LABEL_38:
  if (~a2 <= a2)
  {
    v42 = a2;
  }

  else
  {
    v42 = ~a2;
  }

  if (operations_research::Domain::IsFixed((*(this + 53) + 24 * v42)))
  {
    v43 = *(this + 53);
    if ((a2 & 0x80000000) != 0)
    {
      v44 = -operations_research::Domain::Max((v43 + 24 * ~a2));
    }

    else
    {
      v44 = operations_research::Domain::Min((v43 + 24 * a2));
    }

    operations_research::sat::PresolveContext::AddToObjectiveOffset(this, v44 * v25);
    operations_research::sat::PresolveContext::RemoveVariableFromObjective(this, a2);
    return 1;
  }

  operations_research::sat::PresolveContext::GetAffineRelation(this, a2, &v50);
  if (v50 == a2)
  {
    return 1;
  }

  operations_research::sat::PresolveContext::RemoveVariableFromObjective(this, a2);
  operations_research::sat::PresolveContext::AddToObjectiveOffset(this, v52 * v25);
  v45 = v51 * v25;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,long long>>>::find_or_prepare_insert<int>(this + 512, &v50, &__p);
  if (v54 == 1)
  {
    v46 = *(&__p + 1);
    **(&__p + 1) = v50;
    *(v46 + 8) = 0;
  }

  v47 = *(*(&__p + 1) + 8) + v45;
  *(*(&__p + 1) + 8) = v47;
  if (!v47)
  {
    operations_research::sat::PresolveContext::RemoveVariableFromObjective(this, v50);
    return 1;
  }

  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(*(this + 84) + 32 * v50, &operations_research::sat::kObjectiveConstraint, &__p);
  if (v54 == 1)
  {
    **(&__p + 1) = -1;
  }

  v48 = v50;
  if (~v50 > v50)
  {
    v48 = ~v50;
  }

  if (!operations_research::Domain::IsFixed((*(this + 53) + 24 * v48)))
  {
    return 1;
  }

  operations_research::sat::PresolveContext::RemoveVariableFromObjective(this, v50);
  if (v50 < 0)
  {
    v49 = -operations_research::Domain::Max((*(this + 53) + 24 * ~v50));
  }

  else
  {
    v49 = operations_research::Domain::Min((*(this + 53) + 24 * v50));
  }

  operations_research::sat::PresolveContext::AddToObjectiveOffset(this, v49 * v47);
  return 1;
}

void sub_23CC9D060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, int a14, __int16 a15, char a16, char a17)
{
  if (a12)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL operations_research::sat::PresolveContext::AddToObjectiveOffset(operations_research::sat::PresolveContext *this, uint64_t a2)
{
  *(this + 504) = 0;
  v2 = *(this + 78);
  v3 = (v2 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  v4 = __OFADD__(v2, a2);
  v5 = v2 + a2;
  if (v4)
  {
    v5 = v3;
  }

  v6 = v5 + 0x7FFFFFFFFFFFFFFFLL;
  if ((v5 + 0x7FFFFFFFFFFFFFFFLL) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    *(this + 78) = v5;
    *(this + 76) = *(this + 76) + a2;
    v8 = (this + 584);
    operations_research::Domain::Domain(v11, -a2);
    operations_research::Domain::AdditionWith(v8, v11, &v12, v9);
    if (v8 == &v12)
    {
      operations_research::sat::LinearIncrementalEvaluator::ReduceBounds(&v12);
      if ((v11[0] & 1) == 0)
      {
        return v6 < 0xFFFFFFFFFFFFFFFELL;
      }

      goto LABEL_8;
    }

    if (*v8)
    {
      operator delete(*(this + 74));
    }

    *(this + 73) = v12;
    *(this + 37) = v13;
    v12 = 0;
    if (v11[0])
    {
LABEL_8:
      operator delete(v11[1]);
    }
  }

  return v6 < 0xFFFFFFFFFFFFFFFELL;
}

void sub_23CC9D178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, void *__p)
{
  if (a9)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::PresolveContext::CanonicalizeObjective(operations_research::sat::PresolveContext *this, int a2)
{
  *(this + 504) = 0;
  *(this + 70) = *(this + 69);
  if (*(this + 65) < 2uLL)
  {
    goto LABEL_12;
  }

  if (*(this + 64) >= 2uLL)
  {
    v5 = *(this + 66);
    v4 = *(this + 67);
    if (*v5 <= -2)
    {
      do
      {
        v6 = __clz(__rbit64((*v5 | ~(*v5 >> 7)) & 0x101010101010101)) >> 3;
        v5 = (v5 + v6);
        v4 += 16 * v6;
      }

      while (*v5 < -1);
    }
  }

  else
  {
    v4 = this + 528;
    v5 = &absl::lts_20240722::container_internal::kSooControl;
  }

  do
  {
    LODWORD(v43) = *v4;
    *&v44 = *(v4 + 1);
    std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](this + 552, &v43);
    v8 = *(v5 + 1);
    v5 = (v5 + 1);
    LOBYTE(v7) = v8;
    v4 += 16;
    if (v8 <= -2)
    {
      do
      {
        v9 = __clz(__rbit64((*v5 | ~(*v5 >> 7)) & 0x101010101010101)) >> 3;
        v5 = (v5 + v9);
        v4 += 16 * v9;
        v7 = *v5;
      }

      while (v7 < -1);
    }
  }

  while (v7 != 255);
  v10 = *(this + 69);
  v11 = *(this + 70);
  if (v10 == v11)
  {
LABEL_12:
    operations_research::Domain::Domain(&v43, 0);
    v12 = *(this + 69);
    *(this + 70) = v12;
    if (*(this + 65) < 2uLL)
    {
      v19 = v12;
    }

    else
    {
      if (*(this + 64) >= 2uLL)
      {
        v14 = *(this + 66);
        v13 = *(this + 67);
        if (*v14 <= -2)
        {
          do
          {
            v15 = __clz(__rbit64((*v14 | ~(*v14 >> 7)) & 0x101010101010101)) >> 3;
            v14 = (v14 + v15);
            v13 += 2 * v15;
          }

          while (*v14 < -1);
        }
      }

      else
      {
        v13 = (this + 528);
        v14 = &absl::lts_20240722::container_internal::kSooControl;
      }

      do
      {
        LODWORD(v41) = *v13;
        v42[0] = v13[1];
        std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](this + 552, &v41);
        v17 = *(v14 + 1);
        v14 = (v14 + 1);
        LOBYTE(v16) = v17;
        v13 += 2;
        if (v17 <= -2)
        {
          do
          {
            v18 = __clz(__rbit64((*v14 | ~(*v14 >> 7)) & 0x101010101010101)) >> 3;
            v14 = (v14 + v18);
            v13 += 2 * v18;
            v16 = *v14;
          }

          while (v16 < -1);
        }
      }

      while (v16 != 255);
      v19 = *(this + 69);
      v12 = *(this + 70);
    }

    v20 = 126 - 2 * __clz((v12 - v19) >> 4);
    if (v12 == v19)
    {
      v21 = 0;
    }

    else
    {
      v21 = v20;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,long long> *,false>(v19, v12, &v41, v21, 1);
    v22 = *(this + 69);
    v23 = *(this + 70);
    if (v22 != v23)
    {
      v24 = 0;
      while (1)
      {
        v25 = *(v22 + 8);
        if (v25)
        {
          if (v25 >= 0)
          {
            v26 = *(v22 + 8);
          }

          else
          {
            v26 = -v25;
          }

          v27 = v24;
          do
          {
            v24 = v26;
            v26 = v27 % v26;
            v27 = v24;
          }

          while (v26);
        }

        operations_research::sat::PresolveContext::DomainOf(this, *v22, v36);
        operations_research::Domain::MultiplicationBy(v36, 0, v25, v38);
        operations_research::Domain::AdditionWith(&v43, v38, &v39, v28);
        operations_research::Domain::RelaxIfTooComplex(&v39, &v41);
        if (v43)
        {
          operator delete(v44);
        }

        v43 = v41;
        v44 = *v42;
        v41 = 0;
        if (v39)
        {
          operator delete(__p);
          if ((v38[0] & 1) == 0)
          {
LABEL_37:
            if (v36[0])
            {
              goto LABEL_41;
            }

            goto LABEL_26;
          }
        }

        else if ((v38[0] & 1) == 0)
        {
          goto LABEL_37;
        }

        operator delete(v38[1]);
        if (v36[0])
        {
LABEL_41:
          operator delete(v37);
        }

LABEL_26:
        v22 += 16;
        if (v22 == v23)
        {
          goto LABEL_44;
        }
      }
    }

    v24 = 0;
LABEL_44:
    v30 = (this + 584);
    operations_research::Domain::IntersectionWith(this + 73, &v43, &v41);
    if ((this + 584) == &v41)
    {
      operations_research::sat::LinearIncrementalEvaluator::ReduceBounds(&v41);
      if (!a2)
      {
        goto LABEL_52;
      }
    }

    else
    {
      if (*v30)
      {
        operator delete(*(this + 74));
      }

      *(this + 73) = v41;
      *(this + 37) = *v42;
      if (!a2)
      {
LABEL_52:
        if (v24 >= 2)
        {
          operations_research::sat::PresolveContext::CanonicalizeObjective(this + 65, v24, this, this + 64);
          operations_research::Domain::InverseMultiplicationBy((this + 584), v24, &v41);
          operations_research::sat::PresolveContext::CanonicalizeObjective(this + 584, &v41, this);
          if (operations_research::Domain::IsEmpty((this + 584)))
          {
            goto LABEL_54;
          }

          *(this + 76) = *(this + 76) / v24;
          *(this + 77) = *(this + 77) * v24;
          v33 = *(this + 80) * *(this + 78) + *(this + 79);
          if (operations_research::Domain::IsFixed((this + 584)))
          {
            *(this + 80) = 1;
            v33 += operations_research::Domain::Min((this + 584)) * (v24 - 1);
            v34 = *(this + 80);
          }

          else
          {
            v34 = *(this + 80) * v24;
            *(this + 80) = v34;
          }

          v35 = __divti3();
          *(this + 78) = v35;
          *(this + 79) = v33 - v35 * v34;
          operations_research::Domain::InverseMultiplicationBy(&v43, v24, &v41);
          if (v43)
          {
            operator delete(v44);
          }

          v43 = v41;
          v44 = *v42;
        }

        if (!operations_research::Domain::IsEmpty((this + 584)))
        {
          v32 = operations_research::Domain::Max((this + 584));
          operations_research::Domain::Domain(&v39, 0x8000000000000000, v32);
          operations_research::Domain::IntersectionWith(&v43, &v39, &v41);
          *(this + 576) = operations_research::Domain::IsIncludedIn(&v41, (this + 584)) ^ 1;
          if (v41)
          {
            operator delete(v42[0]);
          }

          if (v39)
          {
            operator delete(__p);
          }

          result = 1;
          if ((v43 & 1) == 0)
          {
            return result;
          }

LABEL_55:
          v31 = result;
          operator delete(v44);
          return v31;
        }

LABEL_54:
        result = operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(this, "empty objective domain", 22);
        if ((v43 & 1) == 0)
        {
          return result;
        }

        goto LABEL_55;
      }
    }

    operations_research::Domain::SimplifyUsingImpliedDomain((this + 584), &v43, &v41);
    if (v30 == &v41)
    {
      operations_research::sat::LinearIncrementalEvaluator::ReduceBounds(&v41);
    }

    else
    {
      if (*v30)
      {
        operator delete(*(this + 74));
      }

      *(this + 73) = v41;
      *(this + 37) = *v42;
    }

    goto LABEL_52;
  }

  while ((operations_research::sat::PresolveContext::CanonicalizeOneObjectiveVariable(this, *v10) & 1) != 0)
  {
    v10 += 4;
    if (v10 == v11)
    {
      goto LABEL_12;
    }
  }

  return operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(this, "canonicalize objective one term", 31);
}

void sub_23CC9D770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, char a13, void *a14, uint64_t a15, char a16, void *a17, uint64_t a18, char a19, void *__p)
{
  if (*(v20 - 88))
  {
    operator delete(*(v20 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::PresolveContext::RecomputeSingletonObjectiveDomain(operations_research::sat::PresolveContext *this)
{
  v2 = *(this + 65) >> 1;
  if (v2 != 1)
  {
    operations_research::sat::PresolveContext::RecomputeSingletonObjectiveDomain(v2);
  }

  if (*(this + 64) > 1uLL)
  {
    v5 = *(this + 66);
    v6 = *(this + 67);
    if (*v5 <= -2)
    {
      do
      {
        v7 = __clz(__rbit64((*v5 | ~(*v5 >> 7)) & 0x101010101010101)) >> 3;
        v5 = (v5 + v7);
        v6 += 4 * v7;
      }

      while (*v5 < -1);
    }

    v4 = *v6;
    v8 = *(this + 66);
    v3 = *(this + 67);
    if (*v8 <= -2)
    {
      do
      {
        v9 = __clz(__rbit64((*v8 | ~(*v8 >> 7)) & 0x101010101010101)) >> 3;
        v8 = (v8 + v9);
        v3 += 16 * v9;
      }

      while (*v8 < -1);
    }
  }

  else
  {
    v3 = this + 528;
    v4 = *(this + 132);
  }

  v10 = *(v3 + 1);
  v11 = (this + 584);
  operations_research::Domain::InverseMultiplicationBy((this + 584), v10, &v16);
  v12 = operations_research::sat::PresolveContext::IntersectDomainWith(this, v4, &v16, 0);
  if (v16)
  {
    operator delete(__p[0]);
  }

  if (v12)
  {
    *(this + 504) = 0;
    operations_research::sat::PresolveContext::DomainOf(this, v4, v14);
    operations_research::Domain::ContinuousMultiplicationBy(v14, v10, &v16);
    if (v11 == &v16)
    {
      operations_research::sat::LinearIncrementalEvaluator::ReduceBounds(&v16);
      if ((v14[0] & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (*v11)
      {
        operator delete(*(this + 74));
      }

      *(this + 73) = v16;
      *(this + 37) = *__p;
      v16 = 0;
      if ((v14[0] & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    operator delete(v15);
LABEL_16:
    *(this + 576) = 0;
  }

  return v12;
}

void sub_23CC9D9F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, void *__p, uint64_t a11, char a12, uint64_t a13)
{
  if (a9)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::PresolveContext::AddLiteralToObjective(operations_research::sat::PresolveContext *this, int a2, uint64_t a3)
{
  *(this + 504) = 0;
  if (~a2 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = ~a2;
  }

  v11 = v6;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,long long>>>::find_or_prepare_insert<int>(this + 512, &v11, v12);
  if (v14 == 1)
  {
    v7 = v13;
    *v13 = v11;
    *(v7 + 8) = 0;
  }

  v8 = v13;
  if ((a2 & 0x80000000) == 0)
  {
    v9 = *(v13 + 8) + a3;
    *(v13 + 8) = v9;
    if (v9)
    {
      goto LABEL_8;
    }

LABEL_12:
    operations_research::sat::PresolveContext::RemoveVariableFromObjective(this, v11);
    return;
  }

  operations_research::sat::PresolveContext::AddToObjectiveOffset(this, a3);
  v10 = *(v8 + 8) - a3;
  *(v8 + 8) = v10;
  if (!v10)
  {
    goto LABEL_12;
  }

LABEL_8:
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(*(this + 84) + 32 * v11, &operations_research::sat::kObjectiveConstraint, v12);
  if (v14 == 1)
  {
    *v13 = -1;
  }
}

uint64_t operations_research::sat::PresolveContext::SubstituteVariableInObjective(operations_research::sat::PresolveContext *this, uint64_t a2, uint64_t a3, const operations_research::sat::ConstraintProto *a4)
{
  *(this + 504) = 0;
  if (*(a4 + 4))
  {
    operations_research::sat::PresolveContext::SubstituteVariableInObjective(&v72);
  }

  v4 = a2;
  if ((a2 & 0x80000000) != 0)
  {
    operations_research::sat::PresolveContext::SubstituteVariableInObjective(&v72);
  }

  v7 = *(this + 64);
  if (v7 > 1)
  {
    v8 = 0;
    v9 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2;
    v10 = 0x9DDFEA08EB382D69 * v9;
    v11 = (v9 * 0x9DDFEA08EB382D69) >> 64;
    _X10 = *(this + 66);
    __asm { PRFM            #4, [X10] }

    v18 = v11 ^ v10;
    v19 = vdup_n_s8(v18 & 0x7F);
    v20 = ((v18 >> 7) ^ (_X10 >> 12)) & v7;
    v21 = *(_X10 + v20);
    v22 = vceq_s8(v21, v19);
    if (!v22)
    {
      goto LABEL_10;
    }

LABEL_7:
    v23 = *(this + 67);
    while (1)
    {
      v24 = (v20 + (__clz(__rbit64(v22)) >> 3)) & v7;
      if (*(v23 + 16 * v24) == a2)
      {
        break;
      }

      v22 &= ((v22 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v22)
      {
LABEL_10:
        while (!*&vceq_s8(v21, 0x8080808080808080))
        {
          v8 += 8;
          v20 = (v8 + v20) & v7;
          v21 = *(_X10 + v20);
          v22 = vceq_s8(v21, v19);
          if (v22)
          {
            goto LABEL_7;
          }
        }

LABEL_100:
        absl::lts_20240722::base_internal::ThrowStdOutOfRange("absl::container_internal::raw_hash_map<>::at", a2);
      }
    }

    v25 = (v23 + 16 * v24);
    if (!(_X10 + v24))
    {
      goto LABEL_100;
    }
  }

  else
  {
    if (*(this + 65) < 2uLL)
    {
      goto LABEL_100;
    }

    v25 = this + 528;
    v64 = &absl::lts_20240722::container_internal::kSooControl;
    if (*(this + 132) != a2)
    {
      v64 = 0;
    }

    if (!v64)
    {
      goto LABEL_100;
    }
  }

  if (!a3)
  {
    operations_research::sat::PresolveContext::SubstituteVariableInObjective(&v72, a2);
  }

  v26 = *(v25 + 1);
  if (v26 % a3)
  {
    operations_research::sat::PresolveContext::SubstituteVariableInObjective(v26 % a3);
  }

  v67 = v26 / a3;
  v27 = 0;
  v28 = 0;
  while (1)
  {
    if (*(a4 + 15) == 12)
    {
      v33 = *(a4 + 6);
      if (v27 >= *(v33 + 16))
      {
        break;
      }

      v34 = *(*(v33 + 24) + 4 * v27);
      v35 = ~v34;
      if (~v34 <= v34)
      {
        v36 = *(*(v33 + 24) + 4 * v27);
      }

      else
      {
        v36 = ~v34;
      }

      if (v36 != v4)
      {
        v37 = *(*(v33 + 48) + 8 * v27);
        if (v37 >= 0)
        {
          v38 = v37;
        }

        else
        {
          v38 = -v37;
        }

        v39 = *(this + 53);
        if (v34 < 0)
        {
          goto LABEL_17;
        }

LABEL_48:
        v42 = operations_research::Domain::Min((v39 + 24 * v34));
        if (v42 >= 0)
        {
          v30 = v42;
        }

        else
        {
          v30 = -v42;
        }

        v31 = operations_research::Domain::Max((*(this + 53) + 24 * v34));
        goto LABEL_21;
      }

      goto LABEL_27;
    }

    if (v27 >= off_2810BEE58)
    {
      break;
    }

    v34 = *(off_2810BEE60 + v27);
    v35 = ~v34;
    if (~v34 <= v34)
    {
      v40 = *(off_2810BEE60 + v27);
    }

    else
    {
      v40 = ~v34;
    }

    if (v40 != v4)
    {
      v41 = *(off_2810BEE78 + v27);
      if (v41 >= 0)
      {
        v38 = *(off_2810BEE78 + v27);
      }

      else
      {
        v38 = -v41;
      }

      v39 = *(this + 53);
      if ((v34 & 0x80000000) == 0)
      {
        goto LABEL_48;
      }

LABEL_17:
      v29 = operations_research::Domain::Max((v39 + 24 * v35));
      if (v29 >= 0)
      {
        v30 = v29;
      }

      else
      {
        v30 = -v29;
      }

      v31 = -operations_research::Domain::Min((*(this + 53) + 24 * v35));
LABEL_21:
      if (v31 >= 0)
      {
        v32 = v31;
      }

      else
      {
        v32 = -v31;
      }

      if (v30 > v32)
      {
        v32 = v30;
      }

      v28 += v32 * v38;
    }

LABEL_27:
    ++v27;
  }

  if (v67 >= 0)
  {
    v43 = v67;
  }

  else
  {
    v43 = -v67;
  }

  if ((v43 * v28) >> 64 == (v43 * v28) >> 63)
  {
    v44 = v43 * v28;
  }

  else
  {
    v44 = ((v28 ^ v43) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  }

  v45 = *(this + 68);
  if (a3 >= 0)
  {
    v46 = a3;
  }

  else
  {
    v46 = -a3;
  }

  v47 = operations_research::Domain::Min((*(this + 53) + 24 * v4));
  if (v47 >= 0)
  {
    v48 = v47;
  }

  else
  {
    v48 = -v47;
  }

  v49 = operations_research::Domain::Max((*(this + 53) + 24 * v4));
  if (v49 >= 0)
  {
    v51 = v49;
  }

  else
  {
    v51 = -v49;
  }

  if (v48 > v51)
  {
    v51 = v48;
  }

  v52 = v45 - v51 * v46;
  _VF = __OFADD__(v44, v52);
  v53 = v44 + v52;
  if (_VF)
  {
    v53 = (v44 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v53 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  *(this + 68) = v53;
  if (*(a4 + 15) == 12)
  {
    v55 = *(a4 + 6);
  }

  else
  {
    v55 = &operations_research::sat::_LinearConstraintProto_default_instance_;
  }

  operations_research::Domain::FromFlatSpanOfIntervals(v55[9], *(v55 + 16), &v70, v50);
  v69 = 1;
  operations_research::Domain::MultiplicationBy(&v70, &v69, v67, &v72);
  if (v70)
  {
    operator delete(__p[0]);
  }

  v70 = v72;
  *__p = v73;
  if (!v69)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v72, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/presolve_context.cc", 1962);
    goto LABEL_114;
  }

  if (operations_research::Domain::IsEmpty(&v70))
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v72, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/presolve_context.cc", 1963);
LABEL_114:
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&v72);
  }

  v56 = operations_research::Domain::Min(&v70);
  result = operations_research::sat::PresolveContext::AddToObjectiveOffset(this, v56);
  if (!result)
  {
    goto LABEL_103;
  }

  v57 = 0;
  while (2)
  {
    if (*(a4 + 15) == 12)
    {
      v58 = *(a4 + 6);
      if (v57 >= *(v58 + 16))
      {
        goto LABEL_101;
      }

      v59 = *(*(v58 + 24) + 4 * v57);
      v68 = v59;
      v60 = *(*(v58 + 48) + 8 * v57);
      if ((v59 & 0x80000000) == 0)
      {
LABEL_87:
        if (v59 != v4)
        {
LABEL_92:
          absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,long long>>>::find_or_prepare_insert<int>(this + 512, &v68, &v72);
          if (BYTE8(v73) == 1)
          {
            v61 = v73;
            *v73 = v68;
            *(v61 + 8) = 0;
          }

          v62 = *(v73 + 8);
          v63 = v68;
          *(v73 + 8) = v62 - v60 * v67;
          if (v62 == v60 * v67)
          {
            operations_research::sat::PresolveContext::RemoveVariableFromObjective(this, v63);
          }

          else
          {
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(*(this + 84) + 32 * v63, &operations_research::sat::kObjectiveConstraint, &v72);
            if (BYTE8(v73) == 1)
            {
              *v73 = -1;
            }
          }
        }

LABEL_83:
        ++v57;
        continue;
      }

LABEL_91:
      v68 = ~v59;
      v60 = -v60;
      if (~v59 != v4)
      {
        goto LABEL_92;
      }

      goto LABEL_83;
    }

    break;
  }

  if (v57 < off_2810BEE58)
  {
    v59 = *(off_2810BEE60 + v57);
    v68 = v59;
    v60 = *(off_2810BEE78 + v57);
    if ((v59 & 0x80000000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_91;
  }

LABEL_101:
  operations_research::sat::PresolveContext::RemoveVariableFromObjective(this, v4);
  *(this + 576) = 1;
  if (operations_research::Domain::IsEmpty((this + 584)))
  {
    result = operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(this, &byte_23CE7F131, 0);
LABEL_103:
    if (v70)
    {
LABEL_104:
      v65 = result;
      operator delete(__p[0]);
      return v65;
    }
  }

  else
  {
    result = 1;
    if (v70)
    {
      goto LABEL_104;
    }
  }

  return result;
}

void sub_23CC9E0BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, void *__p)
{
  if (a13)
  {
    v14 = a1;
    operator delete(__p);
    a1 = v14;
  }

  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::PresolveContext::ExploitExactlyOneInObjective(void *a1, int *a2, uint64_t a3)
{
  if (a1[65] < 2uLL || a3 == 0)
  {
    return 0;
  }

  if ((a3 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = a1[64];
    if (v6 <= 1)
    {
      v7 = 4 * a3;
      v8 = 0x7FFFFFFFFFFFFFFFLL;
      v9 = a2;
      while (1)
      {
        v10 = *v9;
        v11 = ~*v9 <= *v9 ? *v9 : ~v10;
        if (*(a1 + 132) != v11)
        {
          return 0;
        }

        v12 = a1[67];
        if (v12 >= v8)
        {
          v13 = v8;
        }

        else
        {
          v13 = a1[67];
        }

        if (v8 >= -v12)
        {
          v14 = -v12;
        }

        else
        {
          v14 = v8;
        }

        if (v10 < 0)
        {
          v8 = v14;
        }

        else
        {
          v8 = v13;
        }

        ++v9;
        v7 -= 4;
        if (!v7)
        {
          goto LABEL_24;
        }
      }
    }

    _X11 = a1[66];
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    v16 = a2;
    do
    {
      v22 = 0;
      v26 = *v16;
      if (~*v16 <= *v16)
      {
        v27 = v26;
      }

      else
      {
        v27 = ~v26;
      }

      __asm { PRFM            #4, [X11] }

      v32 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v27) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v27));
      v23 = (_X11 >> 12) ^ (v32 >> 7);
      v33 = vdup_n_s8(v32 & 0x7F);
      while (1)
      {
        v17 = v23 & v6;
        v18 = *(_X11 + v17);
        v19 = vceq_s8(v18, v33);
        if (v19)
        {
          break;
        }

LABEL_35:
        if (vceq_s8(v18, 0x8080808080808080))
        {
          return 0;
        }

        v22 += 8;
        v23 = v22 + v17;
      }

      v20 = a1[67];
      while (1)
      {
        v21 = (v17 + (__clz(__rbit64(v19)) >> 3)) & v6;
        if (*(v20 + 16 * v21) == v27)
        {
          break;
        }

        v19 &= ((v19 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v19)
        {
          goto LABEL_35;
        }
      }

      v24 = *(v20 + 16 * v21 + 8);
      if (v8 >= -v24)
      {
        v25 = -v24;
      }

      else
      {
        v25 = v8;
      }

      if (v24 >= v8)
      {
        v24 = v8;
      }

      if (v26 >= 0)
      {
        v8 = v24;
      }

      else
      {
        v8 = v25;
      }

      ++v16;
    }

    while (v16 != &a2[a3]);
LABEL_24:
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return operations_research::sat::PresolveContext::ShiftCostInExactlyOne(a1, a2, a3, v8);
}

uint64_t operations_research::sat::PresolveContext::ShiftCostInExactlyOne(operations_research::sat::PresolveContext *this, int *a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 1;
  }

  if ((a3 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = a2;
    v7 = *(this + 64);
    if (v7 > 1)
    {
      v10 = 0;
      v8 = 0;
      v15 = &a2[a3];
      _X14 = *(this + 66);
      v17 = a2;
      do
      {
        v23 = 0;
        v31 = *v17;
        if (~*v17 <= *v17)
        {
          v32 = v31;
        }

        else
        {
          v32 = ~v31;
        }

        __asm { PRFM            #4, [X14] }

        v37 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v32) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v32));
        v24 = (_X14 >> 12) ^ (v37 >> 7);
        v38 = vdup_n_s8(v37 & 0x7F);
        while (1)
        {
          v18 = v24 & v7;
          v19 = *(_X14 + v18);
          v20 = vceq_s8(v19, v38);
          if (v20)
          {
            break;
          }

LABEL_21:
          if (vceq_s8(v19, 0x8080808080808080))
          {
            v25 = 0;
            goto LABEL_24;
          }

          v23 += 8;
          v24 = v23 + v18;
        }

        v21 = *(this + 67);
        while (1)
        {
          v22 = (v18 + (__clz(__rbit64(v20)) >> 3)) & v7;
          if (*(v21 + 16 * v22) == v32)
          {
            break;
          }

          v20 &= ((v20 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v20)
          {
            goto LABEL_21;
          }
        }

        v25 = *(v21 + 16 * v22 + 8);
LABEL_24:
        if (v25 >= 0)
        {
          v26 = v25;
        }

        else
        {
          v26 = -v25;
        }

        v27 = (v10 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        _VF = __OFADD__(v10, v26);
        v10 += v26;
        if (_VF)
        {
          v10 = v27;
        }

        if (v31 >= 0)
        {
          v28 = -a4;
        }

        else
        {
          v28 = a4;
        }

        v29 = v25 + v28;
        if (v29 < 0)
        {
          v29 = -v29;
        }

        v30 = (v8 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        _VF = __OFADD__(v8, v29);
        v8 += v29;
        if (_VF)
        {
          v8 = v30;
        }

        ++v17;
      }

      while (v17 != v15);
    }

    else if (*(this + 65) > 1uLL)
    {
      v10 = 0;
      v8 = 0;
      v52 = *(this + 132);
      v53 = 4 * a3;
      v54 = a2;
      do
      {
        v61 = *v54;
        if (~*v54 <= *v54)
        {
          v62 = *v54;
        }

        else
        {
          v62 = ~v61;
        }

        if (v52 == v62)
        {
          v55 = *(this + 67);
        }

        else
        {
          v55 = 0;
        }

        if (v55 >= 0)
        {
          v56 = v55;
        }

        else
        {
          v56 = -v55;
        }

        v57 = (v10 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        _VF = __OFADD__(v10, v56);
        v10 += v56;
        if (_VF)
        {
          v10 = v57;
        }

        if (v61 >= 0)
        {
          v58 = -a4;
        }

        else
        {
          v58 = a4;
        }

        v59 = v55 + v58;
        if (v59 < 0)
        {
          v59 = -v59;
        }

        v60 = (v8 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        _VF = __OFADD__(v8, v59);
        v8 += v59;
        if (_VF)
        {
          v8 = v60;
        }

        ++v54;
        v53 -= 4;
      }

      while (v53);
    }

    else
    {
      v8 = 0;
      if (a4 >= 0)
      {
        v9 = a4;
      }

      else
      {
        v9 = -a4;
      }

      v10 = 4 * a3;
      do
      {
        v11 = (v8 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        _VF = __OFADD__(v8, v9);
        v8 += v9;
        if (_VF)
        {
          v8 = v11;
        }

        v10 -= 4;
      }

      while (v10);
    }

    if (v8 - 0x7FFFFFFFFFFFFFFFLL < 2)
    {
      return 0;
    }

    v39 = v8 <= v10;
    v40 = v8 - v10;
    if (!v39)
    {
      v41 = *(this + 68);
      _VF = __OFADD__(v41, v40);
      v42 = v41 + v40;
      if (_VF)
      {
        v42 = (v41 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      }

      if ((v42 - 0x7FFFFFFFFFFFFFFFLL) < 2)
      {
        return 0;
      }

      *(this + 68) = v42;
    }

    *(this + 504) = 0;
    v43 = 4 * a3;
    v14 = a4;
    do
    {
      v45 = *v6;
      if (~*v6 <= *v6)
      {
        v46 = *v6;
      }

      else
      {
        v46 = ~v45;
      }

      v63 = v46;
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,long long>>>::find_or_prepare_insert<int>(this + 512, &v63, &v64);
      if (BYTE8(v65) == 1)
      {
        v47 = v65;
        *v65 = v63;
        *(v47 + 8) = 0;
      }

      v48 = v65;
      if (!*(v65 + 8))
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(*(this + 84) + 32 * v63, &operations_research::sat::kObjectiveConstraint, &v64);
        if (BYTE8(v65) == 1)
        {
          *v65 = -1;
        }
      }

      v49 = *(v48 + 8);
      if (v45 < 0)
      {
        v44 = v49 + a4;
        *(v48 + 8) = v44;
        if (!v44)
        {
          operations_research::sat::PresolveContext::RemoveVariableFromObjective(this, v63);
        }

        v14 -= a4;
      }

      else
      {
        v50 = v49 - a4;
        *(v48 + 8) = v50;
        if (!v50)
        {
          operations_research::sat::PresolveContext::RemoveVariableFromObjective(this, v63);
        }
      }

      ++v6;
      v43 -= 4;
    }

    while (v43);
    if (!v14)
    {
      goto LABEL_65;
    }
  }

  else
  {
    *(this + 504) = 0;
    v14 = a4;
  }

  operations_research::sat::PresolveContext::AddToObjectiveOffset(this, v14);
LABEL_65:
  if ((*(this + 576) & 1) == 0)
  {
    v51 = operations_research::Domain::Max((this + 584));
    operations_research::Domain::Domain(&v64, 0x8000000000000000, v51);
    if ((this + 584) == &v64)
    {
      operations_research::sat::LinearIncrementalEvaluator::ReduceBounds(&v64);
    }

    else
    {
      if (*(this + 584))
      {
        operator delete(*(this + 74));
      }

      *(this + 73) = v64;
      *(this + 37) = v65;
    }
  }

  return 1;
}

uint64_t operations_research::sat::PresolveContext::WriteObjectiveToProto(uint64_t this)
{
  if ((*(this + 504) & 1) == 0)
  {
    v1 = this;
    *(this + 504) = 1;
    v2 = *(this + 552);
    *(this + 560) = v2;
    v3 = *(this + 520);
    if (v3 >> 1 > (*(this + 568) - v2) >> 4)
    {
      if (!(v3 >> 61))
      {
        operations_research::sat::PresolveContext::WriteObjectiveToProto();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    if (*(this + 520) >= 2uLL)
    {
      if (*(this + 512) >= 2uLL)
      {
        v5 = *(this + 528);
        v4 = *(this + 536);
        if (*v5 <= -2)
        {
          do
          {
            v6 = __clz(__rbit64((*v5 | ~(*v5 >> 7)) & 0x101010101010101)) >> 3;
            v5 = (v5 + v6);
            v4 += 16 * v6;
          }

          while (*v5 < -1);
        }
      }

      else
      {
        v4 = this + 528;
        v5 = &absl::lts_20240722::container_internal::kSooControl;
      }

      do
      {
        LODWORD(v30) = *v4;
        *(&v30 + 1) = *(v4 + 8);
        std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100]((v1 + 69), &v30);
        v8 = *(v5 + 1);
        v5 = (v5 + 1);
        LOBYTE(v7) = v8;
        v4 += 16;
        if (v8 <= -2)
        {
          do
          {
            v9 = __clz(__rbit64((*v5 | ~(*v5 >> 7)) & 0x101010101010101)) >> 3;
            v5 = (v5 + v9);
            v4 += 16 * v9;
            v7 = *v5;
          }

          while (v7 < -1);
        }
      }

      while (v7 != 255);
    }

    v10 = v1[69];
    v11 = v1[70];
    v12 = 126 - 2 * __clz((v11 - v10) >> 4);
    if (v11 == v10)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::PresolveContext::WriteObjectiveToProto(void)::$_0 &,std::pair<int,long long> *,false>(v10, v11, v13, 1);
    v14 = *v1;
    *(v14 + 16) = *(*v1 + 16) | 1;
    v15 = *(v14 + 128);
    if (!v15)
    {
      v16 = *(v14 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::Arena::DefaultConstruct<operations_research::sat::CpObjectiveProto>(v16);
      v15 = v17;
      *(v14 + 128) = v17;
    }

    *(v15 + 88) = v1[76];
    *(v15 + 96) = v1[77];
    *(v15 + 104) = v1[78];
    *(v15 + 120) = v1[79];
    v18 = v1[80];
    if (v18 == 1)
    {
      v18 = 0;
    }

    *(v15 + 112) = v18;
    this = operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(v1 + 73, v15);
    *(v15 + 16) = 0;
    v19 = (v15 + 16);
    *(v15 + 40) = 0;
    v20 = v1[69];
    for (i = v1[70]; v20 != i; v20 += 16)
    {
      v22 = *v20;
      v23 = HIDWORD(*v19);
      v24 = *v19;
      if (v24 == v23)
      {
        this = google::protobuf::RepeatedField<int>::Grow(v15 + 16, v23, (v23 + 1));
        v24 = *v19;
      }

      v25 = *(v15 + 24);
      *(v15 + 16) = v24 + 1;
      *(v25 + 4 * v24) = v22;
      v26 = *(v20 + 8);
      v28 = *(v15 + 40);
      v27 = *(v15 + 44);
      if (v28 == v27)
      {
        this = google::protobuf::RepeatedField<long long>::Grow(v15 + 40, v27);
        v28 = *(v15 + 40);
      }

      v29 = *(v15 + 48);
      *(v15 + 40) = v28 + 1;
      *(v29 + 8 * v28) = v26;
    }
  }

  return this;
}

uint64_t operations_research::sat::PresolveContext::GetOrCreateReifiedPrecedenceLiteral(operations_research::sat::PresolveContext *this, const operations_research::sat::LinearExpressionProto *a2, const operations_research::sat::LinearExpressionProto *a3, unsigned int a4, unsigned int a5)
{
  if ((a4 & 0x80000000) == 0)
  {
    if (operations_research::Domain::Max((*(this + 53) + 24 * a4)))
    {
      goto LABEL_3;
    }

LABEL_8:
    operations_research::sat::PresolveContext::GetOrCreateReifiedPrecedenceLiteral(v175);
  }

  if (operations_research::Domain::Min((*(this + 53) + 24 * ~a4)) == 1)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((a5 & 0x80000000) != 0)
  {
    if (operations_research::Domain::Min((*(this + 53) + 24 * ~a5)) != 1)
    {
      goto LABEL_5;
    }

LABEL_10:
    operations_research::sat::PresolveContext::GetOrCreateReifiedPrecedenceLiteral(v175);
  }

  if (!operations_research::Domain::Max((*(this + 53) + 24 * a5)))
  {
    goto LABEL_10;
  }

LABEL_5:
  operations_research::sat::PresolveContext::GetReifiedPrecedenceKey(this, a2, a3, a4, a5, v175);
  if (absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::tuple<int,long long,int,long long,long long,int,int>,int>,absl::lts_20240722::hash_internal::Hash<std::tuple<int,long long,int,long long,long long,int,int>>,std::equal_to<std::tuple<int,long long,int,long long,long long,int,int>>,std::allocator<std::pair<std::tuple<int,long long,int,long long,long long,int,int> const,int>>>::find<std::tuple<int,long long,int,long long,long long,int,int>>(this + 132, v175))
  {
    return *(v10 + 48);
  }

  v11 = operations_research::sat::PresolveContext::NewBoolVar(this);
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::tuple<int,long long,int,long long,long long,int,int>,int>,absl::lts_20240722::hash_internal::Hash<std::tuple<int,long long,int,long long,long long,int,int>>,std::equal_to<std::tuple<int,long long,int,long long,long long,int,int>>,std::allocator<std::pair<std::tuple<int,long long,int,long long,long long,int,int> const,int>>>::find_or_prepare_insert_non_soo<std::tuple<int,long long,int,long long,long long,int,int>>(this + 132, v175, &v172);
  v12 = v173;
  if (v174 == 1)
  {
    v13 = v175[0];
    v14 = v175[2];
    *(v173 + 16) = v175[1];
    *(v12 + 32) = v14;
    *v12 = v13;
  }

  *(v12 + 48) = v11;
  v15 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*this + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
  v16 = v15;
  v17 = (v15 + 16);
  v18 = *(v15 + 16);
  v19 = v18;
  if (v18 == HIDWORD(v18))
  {
    google::protobuf::RepeatedField<int>::Grow(v15 + 16, HIDWORD(v18), (HIDWORD(v18) + 1));
    v19 = *v17;
  }

  v20 = *(v16 + 24);
  *(v16 + 16) = v19 + 1;
  *(v20 + 4 * v19) = v11;
  v21 = *(a2 + 4);
  if (v21 >= 1)
  {
    for (i = 0; i < v21; ++i)
    {
      if (*(*(a2 + 6) + 8 * i))
      {
        v23 = *(*(a2 + 3) + 4 * i);
        if (~v23 > v23)
        {
          v23 = ~v23;
        }

        if (!operations_research::Domain::IsFixed((*(this + 53) + 24 * v23)))
        {
          if (*(v16 + 60) == 12)
          {
            v24 = *(v16 + 48);
          }

          else
          {
            operations_research::sat::ConstraintProto::clear_constraint(v16);
            *(v16 + 60) = 12;
            v25 = *(v16 + 8);
            if (v25)
            {
              v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
            }

            v24 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v25);
            *(v16 + 48) = v24;
          }

          v26 = **(a2 + 3);
          v27 = (v24 + 16);
          v28 = *(v24 + 16);
          v29 = v28;
          if (v28 == HIDWORD(v28))
          {
            v164 = v24;
            google::protobuf::RepeatedField<int>::Grow(v24 + 16, HIDWORD(v28), (HIDWORD(v28) + 1));
            v24 = v164;
            v29 = *v27;
          }

          v30 = *(v24 + 24);
          *(v24 + 16) = v29 + 1;
          *(v30 + 4 * v29) = v26;
          if (*(v16 + 60) == 12)
          {
            v31 = *(v16 + 48);
          }

          else
          {
            operations_research::sat::ConstraintProto::clear_constraint(v16);
            *(v16 + 60) = 12;
            v32 = *(v16 + 8);
            if (v32)
            {
              v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
            }

            v31 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v32);
            *(v16 + 48) = v31;
          }

          v33 = -**(a2 + 6);
          v35 = *(v31 + 40);
          v34 = *(v31 + 44);
          v36 = (v31 + 40);
          if (v35 == v34)
          {
            v165 = v31;
            google::protobuf::RepeatedField<long long>::Grow(v31 + 40, v34);
            v31 = v165;
            v35 = *v36;
          }

          v37 = *(v31 + 48);
          *(v31 + 40) = v35 + 1;
          *(v37 + 8 * v35) = v33;
          break;
        }

        v21 = *(a2 + 4);
      }
    }
  }

  v38 = *(a3 + 4);
  if (v38 < 1)
  {
    goto LABEL_61;
  }

  v39 = 0;
  while (!*(*(a3 + 6) + 8 * v39))
  {
LABEL_40:
    if (++v39 >= v38)
    {
      goto LABEL_61;
    }
  }

  v40 = *(*(a3 + 3) + 4 * v39);
  if (~v40 > v40)
  {
    v40 = ~v40;
  }

  if (operations_research::Domain::IsFixed((*(this + 53) + 24 * v40)))
  {
    v38 = *(a3 + 4);
    goto LABEL_40;
  }

  if (*(v16 + 60) == 12)
  {
    v41 = *(v16 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v16);
    *(v16 + 60) = 12;
    v42 = *(v16 + 8);
    if (v42)
    {
      v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
    }

    v41 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v42);
    *(v16 + 48) = v41;
  }

  v43 = **(a3 + 3);
  v44 = (v41 + 16);
  v45 = *(v41 + 16);
  v46 = v45;
  if (v45 == HIDWORD(v45))
  {
    v166 = v41;
    google::protobuf::RepeatedField<int>::Grow(v41 + 16, HIDWORD(v45), (HIDWORD(v45) + 1));
    v41 = v166;
    v46 = *v44;
  }

  v47 = *(v41 + 24);
  *(v41 + 16) = v46 + 1;
  *(v47 + 4 * v46) = v43;
  if (*(v16 + 60) == 12)
  {
    v48 = *(v16 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v16);
    *(v16 + 60) = 12;
    v49 = *(v16 + 8);
    if (v49)
    {
      v49 = *(v49 & 0xFFFFFFFFFFFFFFFELL);
    }

    v48 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v49);
    *(v16 + 48) = v48;
  }

  v50 = **(a3 + 6);
  v52 = *(v48 + 40);
  v51 = *(v48 + 44);
  v53 = (v48 + 40);
  if (v52 == v51)
  {
    v167 = v48;
    google::protobuf::RepeatedField<long long>::Grow(v48 + 40, v51);
    v48 = v167;
    v52 = *v53;
  }

  v54 = *(v48 + 48);
  *(v48 + 40) = v52 + 1;
  *(v54 + 8 * v52) = v50;
LABEL_61:
  v55 = *(a2 + 4);
  if (v55 < 1)
  {
LABEL_69:
    v58 = operations_research::sat::PresolveContext::FixedValue(this, a2);
    v59 = *(a3 + 4);
    if (v59 >= 1)
    {
      goto LABEL_72;
    }

LABEL_79:
    v62 = v58 - operations_research::sat::PresolveContext::FixedValue(this, a3);
    if (*(v16 + 60) != 12)
    {
      goto LABEL_82;
    }

    goto LABEL_80;
  }

  v56 = 0;
  while (!*(*(a2 + 6) + 8 * v56))
  {
LABEL_63:
    if (++v56 >= v55)
    {
      goto LABEL_69;
    }
  }

  v57 = *(*(a2 + 3) + 4 * v56);
  if (~v57 > v57)
  {
    v57 = ~v57;
  }

  if (operations_research::Domain::IsFixed((*(this + 53) + 24 * v57)))
  {
    v55 = *(a2 + 4);
    goto LABEL_63;
  }

  v58 = *(a2 + 8);
  v59 = *(a3 + 4);
  if (v59 < 1)
  {
    goto LABEL_79;
  }

LABEL_72:
  v60 = 0;
  while (!*(*(a3 + 6) + 8 * v60))
  {
LABEL_73:
    if (++v60 >= v59)
    {
      goto LABEL_79;
    }
  }

  v61 = *(*(a3 + 3) + 4 * v60);
  if (~v61 > v61)
  {
    v61 = ~v61;
  }

  if (operations_research::Domain::IsFixed((*(this + 53) + 24 * v61)))
  {
    v59 = *(a3 + 4);
    goto LABEL_73;
  }

  v62 = v58 - *(a3 + 8);
  if (*(v16 + 60) == 12)
  {
LABEL_80:
    v63 = *(v16 + 48);
    goto LABEL_85;
  }

LABEL_82:
  operations_research::sat::ConstraintProto::clear_constraint(v16);
  *(v16 + 60) = 12;
  v64 = *(v16 + 8);
  if (v64)
  {
    v64 = *(v64 & 0xFFFFFFFFFFFFFFFELL);
  }

  v63 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v64);
  *(v16 + 48) = v63;
LABEL_85:
  v66 = *(v63 + 64);
  v65 = *(v63 + 68);
  v67 = (v63 + 64);
  if (v66 == v65)
  {
    v127 = v63;
    google::protobuf::RepeatedField<long long>::Grow(v63 + 64, v65);
    v63 = v127;
    v66 = *v67;
  }

  v68 = *(v63 + 72);
  *(v63 + 64) = v66 + 1;
  *(v68 + 8 * v66) = v62;
  if (*(v16 + 60) == 12)
  {
    v69 = *(v16 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v16);
    *(v16 + 60) = 12;
    v70 = *(v16 + 8);
    if (v70)
    {
      v70 = *(v70 & 0xFFFFFFFFFFFFFFFELL);
    }

    v69 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v70);
    *(v16 + 48) = v69;
  }

  v72 = *(v69 + 64);
  v71 = *(v69 + 68);
  v73 = (v69 + 64);
  if (v72 == v71)
  {
    v128 = v69;
    google::protobuf::RepeatedField<long long>::Grow(v69 + 64, v71);
    v69 = v128;
    v72 = *v73;
  }

  v74 = *(v69 + 72);
  *(v69 + 64) = v72 + 1;
  *(v74 + 8 * v72) = 0x7FFFFFFFFFFFFFFFLL;
  operations_research::sat::PresolveContext::CanonicalizeLinearConstraint(this, v16);
  if ((a4 & 0x80000000) != 0)
  {
    if (operations_research::Domain::Max((*(this + 53) + 24 * ~a4)))
    {
LABEL_96:
      operations_research::sat::PresolveContext::AddImplication(this, v11, a4);
    }
  }

  else if (operations_research::Domain::Min((*(this + 53) + 24 * a4)) != 1)
  {
    goto LABEL_96;
  }

  if ((a5 & 0x80000000) != 0)
  {
    if (operations_research::Domain::Max((*(this + 53) + 24 * ~a5)))
    {
LABEL_99:
      operations_research::sat::PresolveContext::AddImplication(this, v11, a5);
    }
  }

  else if (operations_research::Domain::Min((*(this + 53) + 24 * a5)) != 1)
  {
    goto LABEL_99;
  }

  v75 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*this + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
  v76 = *(a2 + 4);
  if (v76 < 1)
  {
    goto LABEL_127;
  }

  v77 = 0;
  while (2)
  {
    if (!*(*(a2 + 6) + 8 * v77))
    {
LABEL_102:
      if (++v77 >= v76)
      {
        goto LABEL_127;
      }

      continue;
    }

    break;
  }

  v78 = *(*(a2 + 3) + 4 * v77);
  if (~v78 > v78)
  {
    v78 = ~v78;
  }

  if (operations_research::Domain::IsFixed((*(this + 53) + 24 * v78)))
  {
    v76 = *(a2 + 4);
    goto LABEL_102;
  }

  if (*(v75 + 60) == 12)
  {
    v79 = *(v75 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v75);
    *(v75 + 60) = 12;
    v80 = *(v75 + 8);
    if (v80)
    {
      v80 = *(v80 & 0xFFFFFFFFFFFFFFFELL);
    }

    v79 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v80);
    *(v75 + 48) = v79;
  }

  v81 = **(a2 + 3);
  v82 = (v79 + 16);
  v83 = *(v79 + 16);
  v84 = v83;
  if (v83 == HIDWORD(v83))
  {
    v168 = v79;
    google::protobuf::RepeatedField<int>::Grow(v79 + 16, HIDWORD(v83), (HIDWORD(v83) + 1));
    v79 = v168;
    v84 = *v82;
  }

  v85 = *(v79 + 24);
  *(v79 + 16) = v84 + 1;
  *(v85 + 4 * v84) = v81;
  if (*(v75 + 60) == 12)
  {
    v86 = *(v75 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v75);
    *(v75 + 60) = 12;
    v87 = *(v75 + 8);
    if (v87)
    {
      v87 = *(v87 & 0xFFFFFFFFFFFFFFFELL);
    }

    v86 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v87);
    *(v75 + 48) = v86;
  }

  v88 = -**(a2 + 6);
  v90 = *(v86 + 40);
  v89 = *(v86 + 44);
  v91 = (v86 + 40);
  if (v90 == v89)
  {
    v169 = v86;
    google::protobuf::RepeatedField<long long>::Grow(v86 + 40, v89);
    v86 = v169;
    v90 = *v91;
  }

  v92 = *(v86 + 48);
  *(v86 + 40) = v90 + 1;
  *(v92 + 8 * v90) = v88;
LABEL_127:
  v93 = *(a3 + 4);
  if (v93 < 1)
  {
    goto LABEL_150;
  }

  v94 = 0;
  while (2)
  {
    if (!*(*(a3 + 6) + 8 * v94))
    {
LABEL_129:
      if (++v94 >= v93)
      {
        goto LABEL_150;
      }

      continue;
    }

    break;
  }

  v95 = *(*(a3 + 3) + 4 * v94);
  if (~v95 > v95)
  {
    v95 = ~v95;
  }

  if (operations_research::Domain::IsFixed((*(this + 53) + 24 * v95)))
  {
    v93 = *(a3 + 4);
    goto LABEL_129;
  }

  if (*(v75 + 60) == 12)
  {
    v96 = *(v75 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v75);
    *(v75 + 60) = 12;
    v97 = *(v75 + 8);
    if (v97)
    {
      v97 = *(v97 & 0xFFFFFFFFFFFFFFFELL);
    }

    v96 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v97);
    *(v75 + 48) = v96;
  }

  v98 = **(a3 + 3);
  v99 = (v96 + 16);
  v100 = *(v96 + 16);
  v101 = v100;
  if (v100 == HIDWORD(v100))
  {
    v170 = v96;
    google::protobuf::RepeatedField<int>::Grow(v96 + 16, HIDWORD(v100), (HIDWORD(v100) + 1));
    v96 = v170;
    v101 = *v99;
  }

  v102 = *(v96 + 24);
  *(v96 + 16) = v101 + 1;
  *(v102 + 4 * v101) = v98;
  if (*(v75 + 60) == 12)
  {
    v103 = *(v75 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v75);
    *(v75 + 60) = 12;
    v104 = *(v75 + 8);
    if (v104)
    {
      v104 = *(v104 & 0xFFFFFFFFFFFFFFFELL);
    }

    v103 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v104);
    *(v75 + 48) = v103;
  }

  v105 = **(a3 + 6);
  v107 = *(v103 + 40);
  v106 = *(v103 + 44);
  v108 = (v103 + 40);
  if (v107 == v106)
  {
    v171 = v103;
    google::protobuf::RepeatedField<long long>::Grow(v103 + 40, v106);
    v103 = v171;
    v107 = *v108;
  }

  v109 = *(v103 + 48);
  *(v103 + 40) = v107 + 1;
  *(v109 + 8 * v107) = v105;
LABEL_150:
  if (*(v75 + 60) == 12)
  {
    v110 = *(v75 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v75);
    *(v75 + 60) = 12;
    v111 = *(v75 + 8);
    if (v111)
    {
      v111 = *(v111 & 0xFFFFFFFFFFFFFFFELL);
    }

    v110 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v111);
    *(v75 + 48) = v110;
  }

  v113 = *(v110 + 64);
  v112 = *(v110 + 68);
  v114 = (v110 + 64);
  if (v113 == v112)
  {
    v129 = v110;
    google::protobuf::RepeatedField<long long>::Grow(v110 + 64, v112);
    v110 = v129;
    v113 = *v114;
  }

  v115 = *(v110 + 72);
  *(v110 + 64) = v113 + 1;
  *(v115 + 8 * v113) = 0x8000000000000000;
  if (*(v75 + 60) == 12)
  {
    v116 = *(v75 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v75);
    *(v75 + 60) = 12;
    v117 = *(v75 + 8);
    if (v117)
    {
      v117 = *(v117 & 0xFFFFFFFFFFFFFFFELL);
    }

    v116 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v117);
    *(v75 + 48) = v116;
  }

  v118 = v62 - 1;
  v120 = *(v116 + 64);
  v119 = *(v116 + 68);
  v121 = (v116 + 64);
  if (v120 == v119)
  {
    v130 = v116;
    google::protobuf::RepeatedField<long long>::Grow(v116 + 64, v119);
    v116 = v130;
    v120 = *v121;
  }

  v122 = *(v116 + 72);
  *(v116 + 64) = v120 + 1;
  *(v122 + 8 * v120) = v118;
  v123 = ~v11;
  v124 = (v75 + 16);
  v125 = *(v75 + 16);
  if (v125 == HIDWORD(v125))
  {
    google::protobuf::RepeatedField<int>::Grow(v75 + 16, HIDWORD(v125), (HIDWORD(v125) + 1));
    v131 = *v124;
    v132 = *(v75 + 24);
    *(v75 + 16) = *v124 + 1;
    *(v132 + 4 * v131) = v123;
    if ((a4 & 0x80000000) != 0)
    {
      goto LABEL_171;
    }

LABEL_166:
    if (operations_research::Domain::Min((*(this + 53) + 24 * a4)) == 1)
    {
      goto LABEL_167;
    }

LABEL_172:
    v133 = HIDWORD(*v124);
    v134 = *v124;
    if (v134 == v133)
    {
      google::protobuf::RepeatedField<int>::Grow(v75 + 16, v133, (v133 + 1));
      v162 = *v124;
      v163 = *(v75 + 24);
      *(v75 + 16) = *v124 + 1;
      *(v163 + 4 * v162) = a4;
      if ((a5 & 0x80000000) == 0)
      {
        goto LABEL_168;
      }
    }

    else
    {
      v135 = *(v75 + 24);
      *(v75 + 16) = v134 + 1;
      *(v135 + 4 * v134) = a4;
      if ((a5 & 0x80000000) == 0)
      {
        goto LABEL_168;
      }
    }
  }

  else
  {
    v126 = *(v75 + 24);
    *(v75 + 16) = v125 + 1;
    *(v126 + 4 * v125) = v123;
    if ((a4 & 0x80000000) == 0)
    {
      goto LABEL_166;
    }

LABEL_171:
    if (operations_research::Domain::Max((*(this + 53) + 24 * ~a4)))
    {
      goto LABEL_172;
    }

LABEL_167:
    if ((a5 & 0x80000000) == 0)
    {
LABEL_168:
      if (operations_research::Domain::Min((*(this + 53) + 24 * a5)) == 1)
      {
        goto LABEL_178;
      }

      goto LABEL_175;
    }
  }

  if (!operations_research::Domain::Max((*(this + 53) + 24 * ~a5)))
  {
    goto LABEL_178;
  }

LABEL_175:
  v136 = HIDWORD(*v124);
  v137 = *v124;
  if (v137 == v136)
  {
    google::protobuf::RepeatedField<int>::Grow(v75 + 16, v136, (v136 + 1));
    v137 = *v124;
  }

  v138 = *(v75 + 24);
  *(v75 + 16) = v137 + 1;
  *(v138 + 4 * v137) = a5;
LABEL_178:
  operations_research::sat::PresolveContext::CanonicalizeLinearConstraint(this, v75);
  operations_research::sat::PresolveContext::GetReifiedPrecedenceKey(this, a3, a2, a5, a4, &v172);
  if (absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::tuple<int,long long,int,long long,long long,int,int>,int>,absl::lts_20240722::hash_internal::Hash<std::tuple<int,long long,int,long long,long long,int,int>>,std::equal_to<std::tuple<int,long long,int,long long,long long,int,int>>,std::allocator<std::pair<std::tuple<int,long long,int,long long,long long,int,int> const,int>>>::find<std::tuple<int,long long,int,long long,long long,int,int>>(this + 132, &v172))
  {
    v140 = v139;
    v141 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*this + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
    v142 = v141;
    if (*(v141 + 60) == 3)
    {
      v143 = *(v141 + 48);
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(v141);
      *(v142 + 60) = 3;
      v144 = *(v142 + 8);
      if (v144)
      {
        v144 = *(v144 & 0xFFFFFFFFFFFFFFFELL);
      }

      v143 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v144);
      *(v142 + 48) = v143;
    }

    v146 = *(v143 + 4);
    v145 = *(v143 + 5);
    v147 = v143 + 2;
    if (v146 == v145)
    {
      v156 = v143;
      google::protobuf::RepeatedField<int>::Grow(v143 + 2, v145, (v145 + 1));
      v143 = v156;
      v146 = *(v156 + 4);
      v145 = *(v156 + 5);
    }

    v148 = v143[3];
    v149 = v146 + 1;
    *(v143 + 4) = v146 + 1;
    *(v148 + 4 * v146) = v11;
    v150 = *(v140 + 48);
    if (v146 + 1 == v145)
    {
      v157 = v143;
      google::protobuf::RepeatedField<int>::Grow(v147, v145, (v145 + 1));
      v143 = v157;
      v158 = *(v157 + 4);
      v145 = *(v157 + 5);
      v148 = v157[3];
      v151 = v158 + 1;
      *v147 = v158 + 1;
      *(v148 + 4 * v158) = v150;
      v152 = ~a4;
      if (v158 + 1 == v145)
      {
        goto LABEL_192;
      }

LABEL_188:
      v153 = v151 + 1;
      *v147 = v151 + 1;
      *(v148 + 4 * v151) = v152;
      v154 = ~a5;
      if (v151 + 1 == v145)
      {
LABEL_193:
        v161 = v143;
        google::protobuf::RepeatedField<int>::Grow(v147, v145, (v145 + 1));
        v153 = *(v161 + 4);
        v148 = v161[3];
      }
    }

    else
    {
      v151 = v146 + 2;
      *v147 = v149 + 1;
      *(v148 + 4 * v149) = v150;
      v152 = ~a4;
      if (v149 + 1 != v145)
      {
        goto LABEL_188;
      }

LABEL_192:
      v159 = v143;
      google::protobuf::RepeatedField<int>::Grow(v147, v145, (v145 + 1));
      v143 = v159;
      v160 = *(v159 + 4);
      v145 = *(v159 + 5);
      v148 = v159[3];
      v153 = v160 + 1;
      *v147 = v160 + 1;
      *(v148 + 4 * v160) = v152;
      v154 = ~a5;
      if (v160 + 1 == v145)
      {
        goto LABEL_193;
      }
    }

    *v147 = v153 + 1;
    *(v148 + 4 * v153) = v154;
  }

  return v11;
}