void sub_23CC5D918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::AppendLinMaxRelaxationPart2(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = 0x6DB6DB6DB6DB6DB7 * ((*(a3 + 8) - *a3) >> 3);
  operations_research::sat::Model::GetOrCreate<operations_research::sat::GenericLiteralWatcher>(a4);
  if (v4 >= 1)
  {
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    operations_research::sat::NegationOf(*a3, &v29);
    if (v34)
    {
      *(&v34 + 1) = v34;
      operator delete(v34);
    }

    v5 = v29;
    v34 = v29;
    *&v35 = v30;
    if (*(&v29 + 1) >= v30)
    {
      v7 = *(&v29 + 1) - v29;
      v8 = (*(&v29 + 1) - v29) >> 2;
      v9 = v8 + 1;
      if ((v8 + 1) >> 62)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v10 = v30 - v29;
      if ((v30 - v29) >> 1 > v9)
      {
        v9 = v10 >> 1;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v11 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v9;
      }

      if (v11)
      {
        if (!(v11 >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(4 * v8) = a1;
      v6 = 4 * v8 + 4;
      memcpy(0, v5, v7);
      *&v34 = 0;
      *(&v34 + 1) = v6;
      *&v35 = 0;
      if (v5)
      {
        operator delete(v5);
      }
    }

    else
    {
      **(&v29 + 1) = a1;
      v6 = *(&v5 + 1) + 4;
    }

    *(&v34 + 1) = v6;
    if ((*a3 + 24) != (&v35 + 8))
    {
      std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(&v35 + 1, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
    }

    v12 = v36;
    if (v36 >= *(&v36 + 1))
    {
      v14 = *(&v35 + 1);
      v15 = v36 - *(&v35 + 1);
      v16 = (v36 - *(&v35 + 1)) >> 3;
      v17 = v16 + 1;
      if ((v16 + 1) >> 61)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v18 = *(&v36 + 1) - *(&v35 + 1);
      if ((*(&v36 + 1) - *(&v35 + 1)) >> 2 > v17)
      {
        v17 = v18 >> 2;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        v19 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        if (!(v19 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(8 * v16) = 1;
      v13 = 8 * v16 + 8;
      memcpy(0, v14, v15);
      *(&v35 + 1) = 0;
      v36 = v13;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v36 = 1;
      v13 = v12 + 8;
    }

    *&v36 = v13;
    operator new();
  }

  v34 = 0uLL;
  *&v35 = 0;
  if (v4 << 32)
  {
    if (!(v4 >> 61))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  std::vector<std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::vector[abi:ne200100](&v32, v4);
  if (v34)
  {
    *(&v34 + 1) = v34;
    operator delete(v34);
  }

  v31 = xmmword_23CE306D0;
  operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a4);
  v20 = v32;
  if (v32)
  {
    v21 = v33;
    v22 = v32;
    if (v33 != v32)
    {
      v23 = v33;
      do
      {
        v25 = *(v23 - 3);
        v23 -= 24;
        v24 = v25;
        if (v25)
        {
          *(v21 - 2) = v24;
          operator delete(v24);
        }

        v21 = v23;
      }

      while (v23 != v20);
      v22 = v32;
    }

    v33 = v20;
    operator delete(v22);
  }
}

void sub_23CC5EAC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unint64_t a31, uint64_t a32, uint64_t a33)
{
  if (a31 < 2)
  {
    v35 = *(v33 - 184);
    if (v35)
    {
      goto LABEL_6;
    }
  }

  else
  {
    operator delete((a33 - (a32 & 1) - 8));
    v35 = *(v33 - 184);
    if (v35)
    {
LABEL_6:
      v36 = *(v33 - 176);
      v37 = v35;
      if (v36 != v35)
      {
        v38 = *(v33 - 176);
        do
        {
          v40 = *(v38 - 3);
          v38 -= 24;
          v39 = v40;
          if (v40)
          {
            *(v36 - 2) = v39;
            operator delete(v39);
          }

          v36 = v38;
        }

        while (v38 != v35);
        v37 = *(v33 - 184);
      }

      *(v33 - 176) = v35;
      operator delete(v37);
      _Unwind_Resume(exception_object);
    }
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::AppendLinearConstraintRelaxation(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, void *a3, operations_research::sat::Model *a4, operations_research::sat::LinearRelaxation *a5, operations_research::sat::ActivityBoundHelper *a6)
{
  v8 = a3[3];
  if (v8 > 1)
  {
    v10 = 0;
    _X11 = a3[5];
    __asm { PRFM            #4, [X11] }

    v16 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::CpModelMapping>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::CpModelMapping>(void)::d));
    v17 = vdup_n_s8(v16 & 0x7F);
    v18 = ((v16 >> 7) ^ (_X11 >> 12)) & v8;
    v19 = *(_X11 + v18);
    v20 = vceq_s8(v19, v17);
    if (!v20)
    {
      goto LABEL_9;
    }

LABEL_6:
    v21 = a3[6];
    while (1)
    {
      v22 = (v18 + (__clz(__rbit64(v20)) >> 3)) & v8;
      if (*(v21 + 16 * v22) == &gtl::FastTypeId<operations_research::sat::CpModelMapping>(void)::d)
      {
        break;
      }

      v20 &= ((v20 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v20)
      {
LABEL_9:
        while (!*&vceq_s8(v19, 0x8080808080808080))
        {
          v10 += 8;
          v18 = (v10 + v18) & v8;
          v19 = *(_X11 + v18);
          v20 = vceq_s8(v19, v17);
          if (v20)
          {
            goto LABEL_6;
          }
        }

        goto LABEL_13;
      }
    }

    v23 = (v21 + 16 * v22);
    if (_X11 + v22)
    {
      goto LABEL_4;
    }
  }

  else if (a3[4] >= 2uLL)
  {
    v23 = a3 + 5;
    v32 = &absl::lts_20240722::container_internal::kSooControl;
    if (a3[5] != &gtl::FastTypeId<operations_research::sat::CpModelMapping>(void)::d)
    {
      v32 = 0;
      v23 = a3[3];
    }

    if (v32)
    {
LABEL_4:
      v9 = v23[1];
      goto LABEL_14;
    }
  }

LABEL_13:
  v9 = 0;
LABEL_14:
  v24 = *(this + 15);
  v25 = *(this + 6);
  if (v24 != 12)
  {
    v25 = &operations_research::sat::_LinearConstraintProto_default_instance_;
  }

  v26 = v25[9];
  v27 = *v26;
  v28 = v26[*(v25 + 16) - 1];
  if (*v26 != 0x8000000000000000 || v28 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v30 = *(this + 4);
    if (v30)
    {
      if (a2)
      {
        v31 = v9[19];
        if (v31 > 1)
        {
          v57 = 0;
          v58 = this + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + this) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + this)));
          v59 = 0x9DDFEA08EB382D69 * v58;
          v60 = (v58 * 0x9DDFEA08EB382D69) >> 64;
          _X11 = v9[21];
          __asm { PRFM            #4, [X11] }

          v63 = v60 ^ v59;
          v64 = vdup_n_s8(v63 & 0x7F);
          v65 = ((v63 >> 7) ^ (_X11 >> 12)) & v31;
          v66 = *(_X11 + v65);
          v67 = vceq_s8(v66, v64);
          if (!v67)
          {
            goto LABEL_68;
          }

          do
          {
LABEL_66:
            if (*(v9[22] + 8 * ((v65 + (__clz(__rbit64(v67)) >> 3)) & v31)) == this)
            {
              goto LABEL_27;
            }

            v67 &= ((v67 & 0x8080808080808080) - 1) & 0x8080808080808080;
          }

          while (v67);
LABEL_68:
          while (!*&vceq_s8(v66, 0x8080808080808080))
          {
            v57 += 8;
            v65 = (v57 + v65) & v31;
            v66 = *(_X11 + v65);
            v67 = vceq_s8(v66, v64);
            if (v67)
            {
              goto LABEL_66;
            }
          }
        }

        else if (v9[20] >= 2uLL && v9[21] == this)
        {
          goto LABEL_27;
        }

        if (v30 > 1 || *(v25 + 4) >= 2)
        {
LABEL_27:
          if ((v30 & 0x80000000) == 0)
          {
            operator new();
          }

          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }
      }
    }

    else
    {
      if (v8 > 1)
      {
        v36 = 0;
        _X12 = a3[5];
        __asm { PRFM            #4, [X12] }

        v39 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
        v40 = vdup_n_s8(v39 & 0x7F);
        v41 = ((v39 >> 7) ^ (_X12 >> 12)) & v8;
        v42 = *(_X12 + v41);
        v43 = vceq_s8(v42, v40);
        if (!v43)
        {
          goto LABEL_42;
        }

LABEL_39:
        v44 = a3[6];
        while (1)
        {
          v45 = (v41 + (__clz(__rbit64(v43)) >> 3)) & v8;
          if (*(v44 + 16 * v45) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
          {
            break;
          }

          v43 &= ((v43 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v43)
          {
LABEL_42:
            while (!*&vceq_s8(v42, 0x8080808080808080))
            {
              v36 += 8;
              v41 = (v36 + v41) & v8;
              v42 = *(_X12 + v41);
              v43 = vceq_s8(v42, v40);
              if (v43)
              {
                goto LABEL_39;
              }
            }

            goto LABEL_45;
          }
        }

        v33 = (v44 + 16 * v45);
        v35 = (_X12 + v45);
        if (_X12 + v45)
        {
          goto LABEL_46;
        }
      }

      else if (a3[4] >= 2uLL && (v34 = a3[5], v33 = a3 + 5, v34 == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d))
      {
        v35 = &absl::lts_20240722::container_internal::kSooControl;
        if (&absl::lts_20240722::container_internal::kSooControl)
        {
LABEL_46:
          v35 = v33[1];
        }
      }

      else
      {
LABEL_45:
        v35 = 0;
      }

      v46 = 0;
      v71[0] = v35;
      v71[1] = v27;
      v71[2] = v28;
      *__p = 0u;
      v73 = 0u;
      if (v24 == 12)
      {
        goto LABEL_50;
      }

      while (1)
      {
        v47 = &operations_research::sat::_LinearConstraintProto_default_instance_;
        if (v46 >= off_2810BEE58)
        {
          break;
        }

        while (1)
        {
          v48 = *(v47[3] + v46);
          v49 = v47[6][v46];
          v50 = ~v48 <= v48 ? *(v47[3] + v46) : ~v48;
          operations_research::sat::LinearConstraintBuilder::AddTerm(v71, *(*v9 + 4 * v50) ^ (v48 >> 31), v49);
          ++v46;
          if (*(this + 15) != 12)
          {
            break;
          }

LABEL_50:
          v47 = *(this + 6);
          if (v46 >= *(v47 + 4))
          {
            goto LABEL_56;
          }
        }
      }

LABEL_56:
      operations_research::sat::LinearConstraintBuilder::Build(v71, &v68);
      v51 = *(a4 + 1);
      if (v51 >= *(a4 + 2))
      {
        v54 = std::vector<operations_research::sat::LinearConstraint>::__emplace_back_slow_path<operations_research::sat::LinearConstraint>(a4, &v68);
      }

      else
      {
        v52 = v68;
        *(v51 + 16) = v69;
        *v51 = v52;
        v53 = v70;
        v70 = 0uLL;
        *(v51 + 24) = v53;
        v54 = v51 + 40;
      }

      *(a4 + 1) = v54;
      v55 = *(&v70 + 1);
      *(&v70 + 1) = 0;
      if (v55)
      {
        MEMORY[0x23EED9440](v55, 0x1000C8000313F17);
      }

      v56 = v70;
      *&v70 = 0;
      if (v56)
      {
        MEMORY[0x23EED9440](v56, 0x1000C8052888210);
      }

      if (__p[1])
      {
        *&v73 = __p[1];
        operator delete(__p[1]);
      }
    }
  }
}

void sub_23CC5FB38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  operations_research::sat::LinearConstraint::~LinearConstraint(&a20);
  if (__p)
  {
    a30 = __p;
    operator delete(__p);
    if (!a17)
    {
LABEL_3:
      if (!a12)
      {
LABEL_8:
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a12);
      goto LABEL_8;
    }
  }

  else if (!a17)
  {
    goto LABEL_3;
  }

  operator delete(a17);
  if (!a12)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void operations_research::sat::TryToLinearizeConstraint(operations_research::sat *this, void (****a2)(operations_research::sat::LinearArgumentProto *__hidden this), const operations_research::sat::ConstraintProto *a3, const operations_research::sat::ConstraintProto *a4, operations_research::sat::Model *a5, operations_research::sat::LinearRelaxation *a6, operations_research::sat::ActivityBoundHelper *a7)
{
  v12 = *(operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a4) + 296);
  if (v12)
  {
    operations_research::sat::TryToLinearizeConstraint(v12);
  }

  switch(*(a2 + 15))
  {
    case 3:
      if (a3 >= 2)
      {

        operations_research::sat::AppendBoolOrRelaxation(a2, a4, a5, v13);
      }

      break;
    case 4:
      if (a3 >= 2)
      {

        operations_research::sat::AppendBoolAndRelaxation(a2, a4, a5, a6, v14);
      }

      break;
    case 0xB:
      v30 = a2[6];
      if (*(v30 + 8) != 2)
      {
        goto LABEL_72;
      }

      v33 = v30[3];
      v31 = (v30 + 3);
      v32 = v33;
      v34 = (v33 + 7);
      v35 = (v33 & 1) == 0;
      if ((v33 & 1) == 0)
      {
        v34 = v31;
      }

      v36 = (v32 + 15);
      if (!v35)
      {
        v31 = v36;
      }

      if (operations_research::sat::LinearExpressionProtosAreEqual(*v34, *v31, 1))
      {
        operations_research::sat::AppendSquareRelaxation(a2, a4, a5, v37);

        operations_research::sat::AddSquareCutGenerator(a2, a3, a4, a5, v38);
      }

      else
      {
LABEL_72:

        operations_research::sat::AddIntProdCutGenerator(a2, a3, a4, a5, v14);
      }

      break;
    case 0xC:

      operations_research::sat::AppendLinearConstraintRelaxation(a2, (a3 > 1), a4, a5, a6, v15);
      break;
    case 0xD:

      operations_research::sat::AddAllDiffRelaxationAndCutGenerator(a2, a3, a4, a5, v14);
      break;
    case 0xF:
      operations_research::sat::AppendCircuitRelaxation(a2, a4, a5, v13);
      if (a3 >= 2)
      {

        operations_research::sat::AddCircuitCutGenerator(a2, a4, a5, v16);
      }

      return;
    case 0x14:

      operations_research::sat::AppendNoOverlapRelaxationAndCutGenerator(a2, a4, a5, v13);
      break;
    case 0x15:
      operations_research::sat::AppendNoOverlap2dRelaxation(a2, a4, a5, v13);
      if (a3 >= 2)
      {

        operations_research::sat::AddNoOverlap2dCutGenerator(a2, a4, a5, v39);
      }

      break;
    case 0x16:

      operations_research::sat::AppendCumulativeRelaxationAndCutGenerator(a2, a4, a5, v13);
      break;
    case 0x17:
      operations_research::sat::AppendRoutesRelaxation(a2, a4, a5, v13);
      if (a3 >= 2)
      {

        operations_research::sat::AddRoutesCutGenerator(a2, a4, a5, v40);
      }

      return;
    case 0x1A:

      operations_research::sat::AppendAtMostOneRelaxation(a2, a4, a5, v13);
      break;
    case 0x1B:
      operations_research::sat::AppendLinMaxRelaxationPart1(a2, a4, a5, v13);
      v18 = a2[6];
      v19 = &operations_research::sat::_LinearArgumentProto_default_instance_;
      if (*(a2 + 15) != 27)
      {
        v18 = &operations_research::sat::_LinearArgumentProto_default_instance_;
      }

      v21 = v18[3];
      v20 = v18 + 3;
      v22 = (v21 + 7);
      if (v21)
      {
        v23 = v22;
      }

      else
      {
        v23 = v20;
      }

      v24 = *(v20 + 2);
      if (!v24)
      {
        goto LABEL_35;
      }

      v25 = &v23[v24];
      v26 = -1;
      do
      {
        v27 = *(*v23 + 4);
        if (v27)
        {
          v28 = (*v23)[3];
          for (i = 4 * v27; i; i -= 4)
          {
            if (*v28 < 0)
            {
              operations_research::sat::ExpandCpModel(&v42);
            }

            if (v26 == -1)
            {
              v26 = *v28;
            }

            else if (*v28 != v26)
            {
              goto LABEL_35;
            }

            ++v28;
          }
        }

        ++v23;
      }

      while (v23 != v25);
      if (v26 == -1)
      {
LABEL_35:
        if (a3 > 1)
        {
          if (*(a2 + 15) == 27)
          {
            v19 = a2[6];
          }

          if (*(v19 + 8) <= 99)
          {

            operations_research::sat::AddLinMaxCutGenerator(a2, a4, a5, v17);
          }
        }
      }

      else
      {
        operations_research::sat::AppendMaxAffineRelaxation(a2, a4, a5, v17);
        if (a3 >= 2)
        {

          operations_research::sat::AddMaxAffineCutGenerator(a2, a4, a5, v41);
        }
      }

      break;
    case 0x1D:

      operations_research::sat::AppendExactlyOneRelaxation(a2, a4, a5, v13);
      break;
    default:
      return;
  }
}

uint64_t operations_research::sat::AppendSquareRelaxation(uint64_t this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3, operations_research::sat::LinearRelaxation *a4)
{
  if (!*(this + 16))
  {
    v6 = this;
    v7 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
    this = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
    v8 = &operations_research::sat::_LinearArgumentProto_default_instance_;
    if (*(v6 + 60) == 11)
    {
      v8 = *(v6 + 48);
    }

    v9 = &operations_research::sat::_LinearExpressionProto_default_instance_;
    if (v8[6])
    {
      v9 = v8[6];
    }

    v10 = *(v9 + 4);
    if (v10 > 1)
    {
      operations_research::sat::LoadIntProdConstraint(*(v9 + 4));
    }

    if (v10)
    {
      v11 = *v9[3];
      if (~v11 <= v11)
      {
        v12 = *v9[3];
      }

      else
      {
        v12 = ~v11;
      }

      v13 = *(*v7 + 4 * v12) ^ (v11 >> 31);
      v14 = *v9[6];
      v15 = v13 ^ (v14 >> 63);
      if (v14 >= 0)
      {
        v16 = *v9[6];
      }

      else
      {
        v16 = -v14;
      }
    }

    else
    {
      v16 = 0;
      v15 = -1;
    }

    v18 = v8[3];
    v17 = v8 + 3;
    v19 = (v18 + 7);
    if (v18)
    {
      v20 = v19;
    }

    else
    {
      v20 = v17;
    }

    v21 = *v20;
    v22 = *(*v20 + 4);
    if (v22 > 1)
    {
      operations_research::sat::LoadIntProdConstraint(v22);
    }

    if (v22)
    {
      v23 = *v21[3];
      v24 = ~v23 <= v23 ? *v21[3] : ~v23;
      v25 = *(*v7 + 4 * v24) ^ (v23 >> 31);
      v26 = *v21[6];
      v27 = v25 ^ (v26 >> 63);
      v28 = v26 >= 0 ? *v21[6] : -v26;
      if (v27 != -1)
      {
        v29 = v21[8];
        v30 = *(this + 40);
        v31 = 8 * v27;
        v32 = v29 + *(v30 + v31) * v28;
        v33 = v29 - *(v30 + (v31 ^ 8)) * v28;
        if (v32 != v33)
        {
          v34 = v9[8];
          if (v32 < 0)
          {
            if (v33 > 0)
            {
              return this;
            }
          }

          else if (v33 > 0)
          {
            v35 = v33;
            goto LABEL_34;
          }

          v27 ^= (v28 >> 63) ^ 1;
          v29 = -v29;
          v35 = -v32;
          v32 = -v33;
LABEL_34:
          if (v35 <= 0x80000000)
          {
            LODWORD(v54) = v27;
            *(&v54 + 1) = v28;
            v55 = v29;
            LODWORD(v52) = v15;
            *(&v52 + 1) = v16;
            v53 = v34;
            operations_research::sat::ComputeHyperplanAboveSquare(&v54, &v52, v32, v35, a2, &v56);
            v36 = *(a3 + 1);
            if (v36 >= *(a3 + 2))
            {
              v39 = std::vector<operations_research::sat::LinearConstraint>::__emplace_back_slow_path<operations_research::sat::LinearConstraint>(a3, &v56);
            }

            else
            {
              v37 = v56;
              *(v36 + 16) = v57;
              *v36 = v37;
              v38 = v58;
              v58 = 0uLL;
              *(v36 + 24) = v38;
              v39 = v36 + 40;
            }

            *(a3 + 1) = v39;
            v40 = *(&v58 + 1);
            *(&v58 + 1) = 0;
            if (v40)
            {
              MEMORY[0x23EED9440](v40, 0x1000C8000313F17);
            }

            v41 = v58;
            *&v58 = 0;
            if (v41)
            {
              MEMORY[0x23EED9440](v41, 0x1000C8052888210);
            }

            LODWORD(v54) = v27;
            *(&v54 + 1) = v28;
            v55 = v29;
            LODWORD(v52) = v15;
            *(&v52 + 1) = v16;
            v53 = v34;
            operations_research::sat::ComputeHyperplanBelowSquare(&v54, &v52, v32, a2, &v56);
            v42 = *(a3 + 1);
            if (v42 >= *(a3 + 2))
            {
              v45 = std::vector<operations_research::sat::LinearConstraint>::__emplace_back_slow_path<operations_research::sat::LinearConstraint>(a3, &v56);
            }

            else
            {
              v43 = v56;
              *(v42 + 16) = v57;
              *v42 = v43;
              v44 = v58;
              v58 = 0uLL;
              *(v42 + 24) = v44;
              v45 = v42 + 40;
            }

            *(a3 + 1) = v45;
            v46 = *(&v58 + 1);
            *(&v58 + 1) = 0;
            if (v46)
            {
              MEMORY[0x23EED9440](v46, 0x1000C8000313F17);
            }

            this = v58;
            *&v58 = 0;
            if (this)
            {
              this = MEMORY[0x23EED9440](this, 0x1000C8052888210);
            }

            if (v32 + 1 < v35)
            {
              LODWORD(v54) = v27;
              *(&v54 + 1) = v28;
              v55 = v29;
              LODWORD(v52) = v15;
              *(&v52 + 1) = v16;
              v53 = v34;
              operations_research::sat::ComputeHyperplanBelowSquare(&v54, &v52, v35 - 1, a2, &v56);
              v47 = *(a3 + 1);
              if (v47 >= *(a3 + 2))
              {
                v50 = std::vector<operations_research::sat::LinearConstraint>::__emplace_back_slow_path<operations_research::sat::LinearConstraint>(a3, &v56);
              }

              else
              {
                v48 = v56;
                *(v47 + 16) = v57;
                *v47 = v48;
                v49 = v58;
                v58 = 0uLL;
                *(v47 + 24) = v49;
                v50 = v47 + 40;
              }

              *(a3 + 1) = v50;
              v51 = *(&v58 + 1);
              *(&v58 + 1) = 0;
              if (v51)
              {
                MEMORY[0x23EED9440](v51, 0x1000C8000313F17);
              }

              this = v58;
              *&v58 = 0;
              if (this)
              {
                return MEMORY[0x23EED9440](this, 0x1000C8052888210);
              }
            }
          }
        }
      }
    }
  }

  return this;
}

void sub_23CC60574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  operations_research::sat::LinearConstraint::~LinearConstraint(va);
  _Unwind_Resume(a1);
}

void sub_23CC60588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  operations_research::sat::LinearConstraint::~LinearConstraint(va);
  _Unwind_Resume(a1);
}

void sub_23CC6059C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  operations_research::sat::LinearConstraint::~LinearConstraint(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::AddSquareCutGenerator(uint64_t this, const operations_research::sat::ConstraintProto *a2, void *a3, operations_research::sat::Model *a4, operations_research::sat::LinearRelaxation *a5)
{
  v39 = *MEMORY[0x277D85DE8];
  if (!*(this + 16))
  {
    v6 = this;
    v7 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a3);
    this = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a3);
    if (*(v6 + 60) == 11)
    {
      v8 = *(v6 + 48);
    }

    else
    {
      v8 = &operations_research::sat::_LinearArgumentProto_default_instance_;
    }

    if (v8[6])
    {
      v9 = v8[6];
    }

    else
    {
      v9 = &operations_research::sat::_LinearExpressionProto_default_instance_;
    }

    v10 = *(v9 + 4);
    if (v10 > 1)
    {
      operations_research::sat::LoadIntProdConstraint(*(v9 + 4));
    }

    if (v10)
    {
      v11 = *v9[3];
      if (~v11 <= v11)
      {
        v12 = *v9[3];
      }

      else
      {
        v12 = ~v11;
      }

      v13 = *(*v7 + 4 * v12) ^ (v11 >> 31);
      v14 = *v9[6];
      v15 = v13 ^ (v14 >> 63);
      if (v14 < 0)
      {
        v14 = -v14;
      }
    }

    else
    {
      v14 = 0;
      v15 = -1;
    }

    v17 = v8[3];
    v16 = v8 + 3;
    v18 = (v17 + 7);
    if (v17)
    {
      v19 = v18;
    }

    else
    {
      v19 = v16;
    }

    v20 = *v19;
    v21 = *(*v19 + 4);
    if (v21 > 1)
    {
      operations_research::sat::LoadIntProdConstraint(v21);
    }

    if (v21)
    {
      v22 = *v20[3];
      if (~v22 <= v22)
      {
        v23 = *v20[3];
      }

      else
      {
        v23 = ~v22;
      }

      v24 = *v20[6];
      v25 = *(*v7 + 4 * v23) ^ (v22 >> 31) ^ (v24 >> 63);
      if (v24 >= 0)
      {
        v26 = *v20[6];
      }

      else
      {
        v26 = -v24;
      }

      v27 = v20[8];
      if (v25 == -1)
      {
        v28 = 1;
        v25 = -1;
        v31 = v9[8];
        v32 = v27 <= 0;
        if (v27 < 0)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v28 = 0;
        v29 = *(this + 40);
        v30 = 8 * v25;
        v31 = v9[8];
        v32 = (v27 - *(v29 + (v30 ^ 8)) * v26) <= 0;
        if (((v27 + *(v29 + v30) * v26) & 0x8000000000000000) != 0)
        {
LABEL_36:
          if (!v32)
          {
            goto LABEL_42;
          }

LABEL_38:
          v25 ^= (v26 >> 63) ^ 1;
          if (v28)
          {
            v25 = -1;
            v26 = 0;
          }

          v27 = -v27;
LABEL_41:
          LODWORD(v36) = v15;
          *(&v36 + 1) = v14;
          v37 = v31;
          LODWORD(v34) = v25;
          *(&v34 + 1) = v26;
          v35 = v27;
          operations_research::sat::CreateSquareCutGenerator(&v36, &v34, a3, v38);
        }
      }
    }

    else
    {
      v26 = 0;
      v28 = 1;
      v25 = -1;
      v27 = v20[8];
      v31 = v9[8];
      v32 = v27 <= 0;
      if (v27 < 0)
      {
        goto LABEL_36;
      }
    }

    if (!v32)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

LABEL_42:
  v33 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_23CC60938(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::AddIntProdCutGenerator(uint64_t this, const operations_research::sat::ConstraintProto *a2, void *a3, operations_research::sat::Model *a4, operations_research::sat::LinearRelaxation *a5)
{
  v79 = *MEMORY[0x277D85DE8];
  if (*(this + 16))
  {
    goto LABEL_94;
  }

  v5 = *(this + 60) == 11 ? *(this + 48) : &operations_research::sat::_LinearArgumentProto_default_instance_;
  if (*(v5 + 8) != 2)
  {
    goto LABEL_94;
  }

  v7 = this;
  v8 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a3);
  if (*(v7 + 60) == 11)
  {
    v9 = *(v7 + 48);
  }

  else
  {
    v9 = &operations_research::sat::_LinearArgumentProto_default_instance_;
  }

  v10 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  if (v9[6])
  {
    v10 = v9[6];
  }

  v11 = *(v10 + 4);
  if (v11 > 1)
  {
    operations_research::sat::LoadIntProdConstraint(*(v10 + 4));
  }

  if (v11)
  {
    v12 = *v10[3];
    if (~v12 <= v12)
    {
      v13 = *v10[3];
    }

    else
    {
      v13 = ~v12;
    }

    v14 = *(*v8 + 4 * v13) ^ (v12 >> 31);
    v15 = *v10[6];
    v16 = v14 ^ (v15 >> 63);
    if (v15 >= 0)
    {
      v17 = *v10[6];
    }

    else
    {
      v17 = -v15;
    }
  }

  else
  {
    v17 = 0;
    v16 = -1;
  }

  v20 = v9[3];
  v18 = v9 + 3;
  v19 = v20;
  v21 = (v20 + 7);
  if ((v20 & 1) == 0)
  {
    v21 = v18;
  }

  v22 = *v21;
  v23 = *(*v21 + 4);
  if (v23 > 1)
  {
    operations_research::sat::LoadIntProdConstraint(v23);
  }

  if (v23)
  {
    v24 = *v22[3];
    if (~v24 <= v24)
    {
      v25 = *v22[3];
    }

    else
    {
      v25 = ~v24;
    }

    v26 = *(*v8 + 4 * v25) ^ (v24 >> 31);
    v27 = *v22[6];
    v28 = v26 ^ (v27 >> 63);
    if (v27 >= 0)
    {
      v29 = *v22[6];
    }

    else
    {
      v29 = -v27;
    }
  }

  else
  {
    v29 = 0;
    v28 = -1;
  }

  v30 = (v19 + 15);
  if ((v19 & 1) == 0)
  {
    v30 = v18;
  }

  v31 = *v30;
  v32 = *(*v30 + 4);
  if (v32 > 1)
  {
    operations_research::sat::LoadIntProdConstraint(v32);
  }

  v71 = v16;
  if (v32)
  {
    v33 = *v31[3];
    if (~v33 <= v33)
    {
      v34 = *v31[3];
    }

    else
    {
      v34 = ~v33;
    }

    v35 = *(*v8 + 4 * v34) ^ (v33 >> 31);
    v36 = *v31[6];
    v37 = v35 ^ (v36 >> 63);
    if (v36 >= 0)
    {
      v38 = *v31[6];
    }

    else
    {
      v38 = -v36;
    }
  }

  else
  {
    v38 = 0;
    v37 = -1;
  }

  v39 = v22[8];
  v40 = v10[8];
  v41 = v31[8];
  this = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a3);
  if (v28 == -1)
  {
    v44 = v39;
    v45 = v39;
    if (v37 != -1)
    {
LABEL_44:
      v46 = *(this + 40);
      v47 = 8 * v37;
      v48 = v41 + *(v46 + v47) * v38;
      v49 = v41 - *(v46 + (v47 ^ 8)) * v38;
      if ((v44 & 0x8000000000000000) == 0)
      {
        goto LABEL_49;
      }

LABEL_48:
      if (v45 > 0)
      {
        goto LABEL_94;
      }

      goto LABEL_49;
    }
  }

  else
  {
    v42 = *(this + 40);
    v43 = 8 * v28;
    v44 = v39 + *(v42 + v43) * v29;
    v45 = v39 - *(v42 + (v43 ^ 8)) * v29;
    if (v37 != -1)
    {
      goto LABEL_44;
    }
  }

  v48 = v41;
  v49 = v41;
  if (v44 < 0)
  {
    goto LABEL_48;
  }

LABEL_49:
  if ((v48 & 0x8000000000000000) == 0 || v49 <= 0)
  {
    v50 = v28 ^ (v29 >> 63) ^ 1;
    if (v28 == -1)
    {
      v50 = -1;
      v51 = 0;
    }

    else
    {
      v51 = v29;
    }

    v52 = v71 ^ (v17 >> 63) ^ 1;
    if (v71 == -1)
    {
      v52 = -1;
      v53 = 0;
    }

    else
    {
      v53 = v17;
    }

    v54 = v45 <= 0;
    if (v45 <= 0)
    {
      v55 = v50;
    }

    else
    {
      v55 = v28;
    }

    if (v54)
    {
      v56 = v51;
    }

    else
    {
      v56 = v29;
    }

    if (v54)
    {
      v57 = -v39;
    }

    else
    {
      v57 = v39;
    }

    if (v54)
    {
      v58 = -v40;
    }

    else
    {
      v52 = v71;
      v53 = v17;
      v58 = v40;
    }

    v59 = v37 ^ (v38 >> 63) ^ 1;
    if (v37 == -1)
    {
      v59 = -1;
      v60 = 0;
    }

    else
    {
      v60 = v38;
    }

    v61 = v52 ^ (v53 >> 63) ^ 1;
    if (v52 == -1)
    {
      v61 = -1;
      v62 = 0;
    }

    else
    {
      v62 = v53;
    }

    v63 = v49 <= 0;
    if (v49 <= 0)
    {
      v64 = v61;
    }

    else
    {
      v64 = v52;
    }

    LODWORD(v76) = v64;
    if (v63)
    {
      v65 = v62;
    }

    else
    {
      v65 = v53;
    }

    if (v63)
    {
      v66 = -v58;
    }

    else
    {
      v66 = v58;
    }

    *(&v76 + 1) = v65;
    v77 = v66;
    LODWORD(v74) = v55;
    if (v63)
    {
      v67 = v59;
    }

    else
    {
      v67 = v37;
    }

    if (v63)
    {
      v68 = v60;
    }

    else
    {
      v68 = v38;
    }

    *(&v74 + 1) = v56;
    v75 = v57;
    LODWORD(v72) = v67;
    if (v63)
    {
      v69 = -v41;
    }

    else
    {
      v69 = v41;
    }

    *(&v72 + 1) = v68;
    v73 = v69;
    operations_research::sat::CreatePositiveMultiplicationCutGenerator(&v76, &v74, &v72, a3, v78);
  }

LABEL_94:
  v70 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_23CC60E18(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::AddLinMaxCutGenerator(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3, operations_research::sat::LinearRelaxation *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  result = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2);
  if (*(result + 725) != 1 || *(this + 4) != 0)
  {
    goto LABEL_5;
  }

  result = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  v10 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  if (*(this + 15) == 27)
  {
    v11 = *(this + 6);
    if (v11[6])
    {
      v10 = v11[6];
    }

    if (*(v10 + 4) == 1 && *v10[6] == 1 && !v10[8])
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (qword_2810BF008)
    {
      v10 = qword_2810BF008;
    }

    if (*(v10 + 4) == 1 && *v10[6] == 1 && !v10[8])
    {
      v11 = &operations_research::sat::_LinearArgumentProto_default_instance_;
LABEL_19:
      v12 = *v10[3];
      if (~v12 <= v12)
      {
        v13 = *v10[3];
      }

      else
      {
        v13 = ~v12;
      }

      v14 = *(*result + 4 * v13);
      v26 = 0;
      v27 = 0;
      v28 = 0;
      std::vector<operations_research::sat::LinearExpression>::reserve(&v26, *(v11 + 8));
      v16 = 0;
      for (i = 1; ; ++i)
      {
        if (*(this + 15) == 27)
        {
          v18 = *(this + 6);
          if (v16 >= *(v18 + 8))
          {
            goto LABEL_41;
          }
        }

        else
        {
          if (v16 >= dword_2810BEFF8)
          {
LABEL_41:
            operations_research::sat::CreateAlternativeLiteralsWithView((-1227133513 * ((v27 - v26) >> 3)), a3, v15, a2, v23);
          }

          v18 = &operations_research::sat::_LinearArgumentProto_default_instance_;
        }

        v20 = v18[3];
        v19 = (v18 + 3);
        v21 = &v20[i - 1] + 7;
        if (v20)
        {
          v19 = v21;
        }

        operations_research::sat::CpModelMapping::GetExprFromProto(*v19, v23);
        operations_research::sat::PositiveVarExpr(v23, v29);
        v22 = v27;
        if (v27 >= v28)
        {
          v27 = std::vector<operations_research::sat::LinearExpression>::__emplace_back_slow_path<operations_research::sat::LinearExpression>(&v26, v29);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }
        }

        else
        {
          *(v27 + 16) = 0;
          v22[3] = 0;
          *v22 = 0;
          v22[1] = 0;
          *v22 = *v29;
          v22[2] = v30;
          v29[0] = 0;
          v29[1] = 0;
          v30 = 0;
          v22[4] = 0;
          v22[5] = 0;
          *(v22 + 3) = *__p;
          v22[5] = v32;
          __p[0] = 0;
          __p[1] = 0;
          v32 = 0;
          v22[6] = v33;
          v27 = (v22 + 7);
        }

        if (v29[0])
        {
          v29[1] = v29[0];
          operator delete(v29[0]);
        }

        if (v24)
        {
          v25 = v24;
          operator delete(v24);
        }

        if (v23[0])
        {
          v23[1] = v23[0];
          operator delete(v23[0]);
        }

        ++v16;
      }
    }
  }

LABEL_5:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CC61444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::AddAllDiffRelaxationAndCutGenerator(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, void *a3, operations_research::sat::Model *a4, operations_research::sat::LinearRelaxation *a5)
{
  v68 = *MEMORY[0x277D85DE8];
  if (!*(this + 4))
  {
    v7 = a2;
    operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a3);
    v9 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a3);
    if (*(this + 15) == 13)
    {
      v10 = *(this + 6);
    }

    else
    {
      v10 = &operations_research::sat::_AllDifferentConstraintProto_default_instance_;
    }

    v11 = *(v10 + 6);
    operations_research::sat::CpModelMapping::Affines<google::protobuf::RepeatedPtrField<operations_research::sat::LinearExpressionProto>>((v10 + 2), &v62);
    v60 = 0;
    v12 = v62;
    v13 = v63;
    if (v62 != v63)
    {
      do
      {
        v14 = *v12;
        if (*v12 == -1)
        {
          v15 = *(v12 + 2);
          goto LABEL_13;
        }

        if (!(*(*(v9 + 40) + 8 * v14) + *(*(v9 + 40) + ((8 * v14) ^ 8))))
        {
          v15 = *(v12 + 2) + *(*(v9 + 40) + 8 * v14) * *(v12 + 1);
LABEL_13:
          operations_research::Domain::Domain(__p, v15);
          operations_research::Domain::UnionWith(&v60, __p, &v64);
          if (v60)
          {
            operator delete(v61);
          }

          v60 = v64;
          v61 = v65;
          v64 = 0;
          if ((__p[0] & 1) == 0)
          {
            goto LABEL_8;
          }

          v16 = __p[1];
          goto LABEL_7;
        }

        v17 = operations_research::sat::IntegerTrail::InitialVariableDomain(v9, v14);
        operations_research::Domain::MultiplicationBy(v17, 0, *(v12 + 1), v59);
        operations_research::Domain::Domain(v58, *(v12 + 2));
        operations_research::Domain::AdditionWith(v59, v58, __p, v18);
        operations_research::Domain::UnionWith(&v60, __p, &v64);
        if (v60)
        {
          operator delete(v61);
        }

        v60 = v64;
        v61 = v65;
        v64 = 0;
        if (__p[0])
        {
          operator delete(__p[1]);
          if ((v58[0] & 1) == 0)
          {
LABEL_21:
            if ((v59[0] & 1) == 0)
            {
              goto LABEL_8;
            }

            goto LABEL_25;
          }
        }

        else if ((v58[0] & 1) == 0)
        {
          goto LABEL_21;
        }

        operator delete(v58[1]);
        if ((v59[0] & 1) == 0)
        {
          goto LABEL_8;
        }

LABEL_25:
        v16 = v59[1];
LABEL_7:
        operator delete(v16);
LABEL_8:
        v12 += 24;
      }

      while (v12 != v13);
    }

    if (operations_research::Domain::Size(&v60) == v11)
    {
      if (v60 <= 1)
      {
        goto LABEL_45;
      }

      v25 = &v61;
      if (v60)
      {
        v25 = v61;
      }

      v22 = *v25;
      v23 = (v60 & 1) != 0 ? v61 : &v61;
      if ((v60 & 0x1FFFFFFFFFFFFFFELL) != 0)
      {
        v19 = 0;
        v20 = &v23[v60 >> 1];
        do
        {
          if (v22 == *(v23 + 1))
          {
            if (++v23 == v20)
            {
              v21 = v22;
            }

            else
            {
              v21 = *v23;
            }
          }

          else
          {
            v21 = v22 + 1;
          }

          v19 = (v19 + v22);
          v22 = v21;
        }

        while (v23 != v20);
      }

      else
      {
LABEL_45:
        v19 = 0;
      }

      v26 = a3[3];
      if (v26 > 1)
      {
        v35 = 0;
        _X12 = a3[5];
        __asm { PRFM            #4, [X12] }

        v42 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
        v43 = vdup_n_s8(v42 & 0x7F);
        v44 = ((v42 >> 7) ^ (_X12 >> 12)) & v26;
        v45 = *(_X12 + v44);
        v46 = vceq_s8(v45, v43);
        if (!v46)
        {
          goto LABEL_58;
        }

LABEL_55:
        v47 = a3[6];
        while (1)
        {
          v48 = (v44 + (__clz(__rbit64(v46)) >> 3)) & v26;
          if (*(v47 + 16 * v48) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
          {
            break;
          }

          v46 &= ((v46 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v46)
          {
LABEL_58:
            while (!*&vceq_s8(v45, 0x8080808080808080))
            {
              v35 += 8;
              v44 = (v35 + v44) & v26;
              v45 = *(_X12 + v44);
              v46 = vceq_s8(v45, v43);
              if (v46)
              {
                goto LABEL_55;
              }
            }

            goto LABEL_48;
          }
        }

        v51 = (v47 + 16 * v48);
        v27 = (_X12 + v48);
        if (_X12 + v48)
        {
          goto LABEL_49;
        }
      }

      else if (a3[4] >= 2uLL)
      {
        v53 = a3[5];
        v52 = a3 + 5;
        v27 = &absl::lts_20240722::container_internal::kSooControl;
        if (v53 == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
        {
          v51 = v52;
        }

        else
        {
          v27 = 0;
          v51 = v19;
        }

        if (v27)
        {
LABEL_49:
          v27 = v51[1];
        }
      }

      else
      {
LABEL_48:
        v27 = 0;
      }

      v64 = v27;
      *&v65 = v19;
      *(&v65 + 1) = v19;
      v66 = 0u;
      v67 = 0u;
      v28 = v62;
      v29 = v63;
      if (v62 != v63)
      {
        do
        {
          v30 = *v28;
          v56 = *(v28 + 2);
          *__p = v30;
          operations_research::sat::LinearConstraintBuilder::AddTerm(&v64, __p, 1);
          v28 += 24;
        }

        while (v28 != v29);
      }

      operations_research::sat::LinearConstraintBuilder::Build(&v64, __p);
      v31 = *(a4 + 1);
      if (v31 >= *(a4 + 2))
      {
        v34 = std::vector<operations_research::sat::LinearConstraint>::__emplace_back_slow_path<operations_research::sat::LinearConstraint>(a4, __p);
      }

      else
      {
        v32 = *__p;
        *(v31 + 16) = v56;
        *v31 = v32;
        v33 = v57;
        v57 = 0uLL;
        *(v31 + 24) = v33;
        v34 = v31 + 40;
      }

      *(a4 + 1) = v34;
      v49 = *(&v57 + 1);
      *(&v57 + 1) = 0;
      if (v49)
      {
        MEMORY[0x23EED9440](v49, 0x1000C8000313F17);
      }

      v50 = v57;
      *&v57 = 0;
      if (v50)
      {
        MEMORY[0x23EED9440](v50, 0x1000C8052888210);
      }

      if (*(&v66 + 1))
      {
        *&v67 = *(&v66 + 1);
        operator delete(*(&v66 + 1));
      }
    }

    else
    {
      v24 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a3);
      if (v7 >= 2 && v11 <= *(v24 + 684))
      {
        operations_research::sat::CreateAllDifferentCutGenerator(&v62, a3, &v64);
      }
    }

    if (v60)
    {
      operator delete(v61);
    }

    if (v62)
    {
      v63 = v62;
      operator delete(v62);
    }
  }

  v54 = *MEMORY[0x277D85DE8];
}

void sub_23CC61B88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *a15, uint64_t a16, char a17, void *a18, uint64_t a19, char a20, void *__p, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23CC61C84(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, void *__p)
{
  if (a9)
  {
    operator delete(__p);
  }

  JUMPOUT(0x23CC61C54);
}

uint64_t operations_research::sat::AddNoOverlap2dCutGenerator(uint64_t this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3, operations_research::sat::LinearRelaxation *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  if (!*(this + 16))
  {
    v5 = this;
    operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
    v7 = *(v5 + 60);
    v6 = (v5 + 60);
    v8 = *(v6 - 3);
    if (v7 != 21)
    {
      v8 = &operations_research::sat::_NoOverlap2DConstraintProto_default_instance_;
    }

    operations_research::sat::CpModelMapping::Intervals<google::protobuf::RepeatedField<int>>(v8 + 4, &v15);
    v9 = *(v6 - 3);
    if (*v6 != 21)
    {
      v9 = &operations_research::sat::_NoOverlap2DConstraintProto_default_instance_;
    }

    operations_research::sat::CpModelMapping::Intervals<google::protobuf::RepeatedField<int>>(v9 + 10, &v14);
    v10 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntervalsRepository>(a2);
    Helper = operations_research::sat::IntervalsRepository::GetOrCreateHelper(v10, &v15);
    v12 = operations_research::sat::IntervalsRepository::GetOrCreateHelper(v10, &v14);
    operations_research::sat::CreateNoOverlap2dCompletionTimeCutGenerator(Helper, v12, a2, __p);
  }

  v13 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_23CC62468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::AppendElementEncodingRelaxation(operations_research::sat *this, operations_research::sat::Model *a2, operations_research::sat::LinearRelaxation *a3)
{
  v84 = *MEMORY[0x277D85DE8];
  v74 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(this);
  v69 = operations_research::sat::Model::GetOrCreate<operations_research::sat::ElementEncodings>(this);
  ElementEncodedVariables = operations_research::sat::ElementEncodings::GetElementEncodedVariables(v69);
  v68 = ElementEncodedVariables[1];
  if (*ElementEncodedVariables == v68)
  {
    goto LABEL_79;
  }

  v6 = 0;
  v73 = (this + 40);
  v7 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
  v8 = vdup_n_s8(v7 & 0x7F);
  v71 = v7 >> 7;
  v9 = *ElementEncodedVariables;
  do
  {
    v10 = *v9;
    v11 = operations_research::sat::ElementEncodings::Get(v69, *v9);
    v70 = v9;
    v12 = v11[1];
    v13 = **v11;
    v72 = *(v12 + 10);
    if (v13 != v12 || *(v12 + 10) != 0)
    {
      v15 = 0;
      while (1)
      {
        v16 = &v13[32 * v15];
        v18 = *(v16 + 3);
        v17 = *(v16 + 4);
        v19 = (v16 + 24);
        if (v18 == v17)
        {
          v21 = 0x7FFFFFFFFFFFFFFELL;
          goto LABEL_26;
        }

        v20 = v17 - v18 - 16;
        if (v20 <= 0xF)
        {
          break;
        }

        v23 = (v20 >> 4) + 1;
        v22 = &v18[16 * (v23 & 0x1FFFFFFFFFFFFFFELL)];
        v24 = (v18 + 16);
        v25 = 0x7FFFFFFFFFFFFFFELL;
        v26 = v23 & 0x1FFFFFFFFFFFFFFELL;
        v27 = 0x7FFFFFFFFFFFFFFELL;
        do
        {
          v28 = *(v24 - 2);
          v30 = *v24;
          v24 += 4;
          v29 = v30;
          if (v28 < v25)
          {
            v25 = v28;
          }

          if (v29 < v27)
          {
            v27 = v29;
          }

          v26 -= 2;
        }

        while (v26);
        if (v25 >= v27)
        {
          v21 = v27;
        }

        else
        {
          v21 = v25;
        }

        if (v23 != (v23 & 0x1FFFFFFFFFFFFFFELL))
        {
          goto LABEL_23;
        }

LABEL_26:
        v33 = *(this + 3);
        if (v33 > 1)
        {
          v34 = 0;
          _X9 = *v73;
          __asm { PRFM            #4, [X9] }

          v40 = (v71 ^ (*v73 >> 12)) & v33;
          v41 = *(*v73 + v40);
          v42 = vceq_s8(v41, v8);
          if (!v42)
          {
            goto LABEL_33;
          }

LABEL_30:
          v43 = *(this + 6);
          while (1)
          {
            v44 = (v40 + (__clz(__rbit64(v42)) >> 3)) & v33;
            if (*(v43 + 16 * v44) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
            {
              break;
            }

            v42 &= ((v42 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v42)
            {
LABEL_33:
              while (!*&vceq_s8(v41, 0x8080808080808080))
              {
                v34 += 8;
                v40 = (v34 + v40) & v33;
                v41 = *&_X9[v40];
                v42 = vceq_s8(v41, v8);
                if (v42)
                {
                  goto LABEL_30;
                }
              }

              goto LABEL_43;
            }
          }

          v45 = (v43 + 16 * v44);
          if (!&_X9[v44])
          {
            goto LABEL_43;
          }
        }

        else
        {
          if (*(this + 4) < 2uLL)
          {
            goto LABEL_43;
          }

          v45 = *v73;
          if (*v73 == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
          {
            v45 = this + 40;
          }

          v47 = &absl::lts_20240722::container_internal::kSooControl;
          if (*v73 != &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
          {
            v47 = 0;
          }

          if (!v47)
          {
LABEL_43:
            v46 = 0;
            goto LABEL_44;
          }
        }

        v46 = *(v45 + 1);
LABEL_44:
        v79 = v46;
        v80 = -v21;
        v81 = -v21;
        v82 = 0u;
        v83 = 0u;
        operations_research::sat::LinearConstraintBuilder::AddTerm(&v79, v10, -1);
        v48 = *v19;
        v49 = v19[1];
        while (v48 != v49)
        {
          if (*v48 != v21 && (operations_research::sat::LinearConstraintBuilder::AddLiteralTerm(&v79, *(v48 + 8), *v48 - v21) & 1) == 0)
          {
            v50 = 0;
            v51 = *(&v82 + 1);
            if (!*(&v82 + 1))
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          }

          v48 += 16;
        }

        operations_research::sat::LinearConstraintBuilder::Build(&v79, &v76);
        if (!operations_research::sat::PossibleOverflow(v74, &v76, v52))
        {
          v53 = *(a2 + 1);
          if (v53 >= *(a2 + 2))
          {
            v56 = std::vector<operations_research::sat::LinearConstraint>::__emplace_back_slow_path<operations_research::sat::LinearConstraint>(a2, &v76);
          }

          else
          {
            v54 = v76;
            *(v53 + 16) = v77;
            *v53 = v54;
            v55 = v78;
            v78 = 0uLL;
            *(v53 + 24) = v55;
            v56 = v53 + 40;
          }

          *(a2 + 1) = v56;
        }

        v57 = *(&v78 + 1);
        *(&v78 + 1) = 0;
        if (v57)
        {
          MEMORY[0x23EED9440](v57, 0x1000C8000313F17);
        }

        v58 = v78;
        *&v78 = 0;
        if (v58)
        {
          MEMORY[0x23EED9440](v58, 0x1000C8052888210);
        }

        v6 = (v6 + 1);
        v50 = 1;
        v51 = *(&v82 + 1);
        if (*(&v82 + 1))
        {
LABEL_61:
          *&v83 = v51;
          operator delete(v51);
        }

LABEL_62:
        if (!v50)
        {
          goto LABEL_79;
        }

        if (v13[11])
        {
          if (++v15 == v13[10])
          {
            v59 = v13;
            while (1)
            {
              v60 = *v59;
              if (*(*v59 + 11))
              {
                break;
              }

              v61 = v59[8];
              v59 = *v59;
              if (v61 != v60[10])
              {
                v13 = v60;
                v15 = v61;
                break;
              }
            }
          }
        }

        else
        {
          v62 = &v13[8 * (v15 + 1) + 240];
          do
          {
            v13 = *v62;
            v63 = *(*v62 + 11);
            v62 = *v62 + 240;
          }

          while (!v63);
          v15 = 0;
        }

        if (v13 == v12 && v15 == v72)
        {
          goto LABEL_3;
        }
      }

      v21 = 0x7FFFFFFFFFFFFFFELL;
      v22 = v18;
      do
      {
LABEL_23:
        v32 = *v22;
        v22 += 2;
        v31 = v32;
        if (v32 < v21)
        {
          v21 = v31;
        }
      }

      while (v22 != v17);
      goto LABEL_26;
    }

LABEL_3:
    v9 = v70 + 1;
  }

  while (v70 + 1 != v68);
  if (v6)
  {
    v65 = operations_research::sat::Model::GetOrCreate<operations_research::SolverLogger>(this);
    if (*v65 == 1)
    {
      v79 = "[ElementLinearRelaxation] #from_exactly_one:";
      v80 = 44;
      v66 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v6, &v77, v64);
      *&v76 = &v77;
      *(&v76 + 1) = v66 - &v77;
      absl::lts_20240722::StrCat(&v79, &v76, &v75);
      operations_research::SolverLogger::LogInfo(v65, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_relaxation.cc", 1829, &v75);
      if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v75.__r_.__value_.__l.__data_);
      }
    }
  }

LABEL_79:
  v67 = *MEMORY[0x277D85DE8];
}

void sub_23CC62A44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23CC62A64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::ComputeLinearRelaxation(operations_research::sat *this@<X0>, const operations_research::sat::CpModelProto *a2@<X1>, operations_research::sat::Model *a3@<X2>, uint64_t a4@<X8>)
{
  v179 = *MEMORY[0x277D85DE8];
  *(a4 + 64) = 0;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  v7 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2);
  v9 = v7;
  v139 = 0;
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  v144 = 0;
  v145 = xmmword_23CE306D0;
  v146 = xmmword_23CE306D0;
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v156 = xmmword_23CE306D0;
  v157 = xmmword_23CE306D0;
  if (v7[143] >= 2)
  {
    operations_research::sat::ActivityBoundHelper::AddAllAtMostOnes(&v139, this);
  }

  v10 = *(this + 6);
  if (v10)
  {
    v11 = (v10 + 7);
  }

  else
  {
    v11 = (this + 48);
  }

  v12 = *(this + 14);
  if (v12)
  {
    v13 = 8 * v12;
    do
    {
      operations_research::sat::TryToLinearizeConstraint(v7, *v11++, v9[143], a2, a4, &v139, v8);
      v13 -= 8;
    }

    while (v13);
  }

  v138 = 0;
  v16 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  v134 = v9;
  v17 = *(this + 8);
  if (v17 < 1)
  {
    v19 = 0;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v20 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d));
    v136 = v20 >> 7;
    v21 = vdup_n_s8(v20 & 0x7F);
    do
    {
      if (*(v16[6] + 4 * v18) == -1)
      {
        v22 = *(*v16 + 4 * v18);
        v168 = &unk_284F43DF8;
        v169 = v22;
        v170 = &v168;
        v23 = *(a2 + 3);
        if (v23 > 1)
        {
          v24 = 0;
          _X11 = *(a2 + 5);
          __asm { PRFM            #4, [X11] }

          v31 = *(a2 + 6);
          v32 = (v136 ^ (_X11 >> 12)) & v23;
          v33 = *(_X11 + v32);
          v15 = vceq_s8(v33, v21);
          if (!v15)
          {
            goto LABEL_25;
          }

          do
          {
LABEL_23:
            v34 = (v32 + (__clz(__rbit64(v15)) >> 3)) & v23;
            if (*(v31 + 16 * v34) == &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d)
            {
              v15 = v31 + 16 * v34;
              goto LABEL_29;
            }

            v15 &= ((v15 & 0x8080808080808080) - 1) & 0x8080808080808080;
          }

          while (v15);
LABEL_25:
          while (!*&vceq_s8(v33, 0x8080808080808080))
          {
            v24 += 8;
            v32 = (v24 + v32) & v23;
            v33 = *(_X11 + v32);
            v15 = vceq_s8(v33, v21);
            if (v15)
            {
              goto LABEL_23;
            }
          }
        }

        else if (*(a2 + 4) >= 2uLL)
        {
          if (*(a2 + 5) == &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d)
          {
            v15 = a2 + 40;
          }

          else
          {
            v15 = v17;
          }
        }

LABEL_29:
        if (*(*(*(v15 + 8) + 40) + 8 * v22) + *(*(*(v15 + 8) + 40) + ((8 * v22) ^ 8)))
        {
          v35 = this;
          operations_research::sat::AppendRelaxationForEqualityEncoding(v22, a2, a4, &v138, &v138 + 1);
          v37 = *a4;
          v36 = *(a4 + 8);
          operations_research::sat::AppendPartialGreaterThanEncodingRelaxation(v22, a2, a4);
          if (0xCCCCCCCCCCCCCCCDLL * ((*(a4 + 8) - *a4) >> 3) <= (-858993459 * ((v36 - v37) >> 3)))
          {
            v19 = v19;
          }

          else
          {
            v19 = (v19 + 1);
          }

          this = v35;
          v17 = v35[8];
        }
      }

      ++v18;
    }

    while (v18 < v17);
  }

  v38 = v134;
  if (v134[143] > 1)
  {
    operations_research::sat::AppendElementEncodingRelaxation(a2, a4, v14);
  }

  v39 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
  if (operations_research::sat::SatSolver::FinishPropagation(v39))
  {
    v41 = operations_research::sat::Model::GetOrCreate<operations_research::SolverLogger>(a2);
    v42 = HIDWORD(v138);
    if ((v138 || v19) && *v41 == 1)
    {
      v43 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v138, v159, v40);
      v158[0] = v159;
      v158[1] = (v43 - v159);
      v45 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v42, v167, v44);
      v165 = v167;
      v166 = v45 - v167;
      v171 = "[EncodingLinearRelaxation] #tight_equality:";
      *v172 = 43;
      *&v172[8] = *v158;
      *&v172[24] = " #loose_equality:";
      *&v173 = 17;
      *(&v173 + 1) = v167;
      v174 = v45 - v167;
      v175 = " #inequality:";
      v176 = 13;
      v47 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v19, &v162[16], v46);
      *v162 = &v162[16];
      *&v162[8] = v47 - &v162[16];
      v177 = &v162[16];
      v178 = v47 - &v162[16];
      absl::lts_20240722::strings_internal::CatPieces(&v171, 6, &__p);
      operations_research::SolverLogger::LogInfo(v41, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_relaxation.cc", 1905, &__p);
      v38 = v134;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v48 = *a4;
    v49 = *(a4 + 8);
    if ((*a4 != v49 || *(a4 + 24) != *(a4 + 32)) && *v41 == 1)
    {
      v171 = "[LinearRelaxationBeforeCliqueExpansion] #linear:";
      *v172 = 48;
      v50 = absl::lts_20240722::numbers_internal::FastIntToBuffer(0xCCCCCCCCCCCCCCCDLL * ((v49 - v48) >> 3), &v162[16], v40);
      *v162 = &v162[16];
      *&v162[8] = v50 - &v162[16];
      v158[0] = " #at_most_ones:";
      v158[1] = 15;
      v52 = absl::lts_20240722::numbers_internal::FastIntToBuffer(0xAAAAAAAAAAAAAAABLL * ((*(a4 + 32) - *(a4 + 24)) >> 3), v167, v51);
      v165 = v167;
      v166 = v52 - v167;
      absl::lts_20240722::StrCat(&v171, v162, v158, &v165, &__p);
      operations_research::SolverLogger::LogInfo(v41, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_relaxation.cc", 1913, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v53 = operations_research::sat::Model::GetOrCreate<operations_research::sat::BinaryImplicationGraph>(a2);
    v54 = *(v38 + 84);
    operations_research::sat::BinaryImplicationGraph::TransformIntoMaxCliques(v53, (a4 + 24));
    v133 = v41;
    v55 = *(a4 + 24);
    v56 = *(a4 + 32);
    if (v55 != v56)
    {
      v57 = (a2 + 40);
      v58 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
      v59 = vdup_n_s8(v58 & 0x7F);
      v135 = v58 >> 7;
      while (*v55 == v55[1])
      {
LABEL_47:
        v55 += 3;
        if (v55 == v56)
        {
          v55 = *(a4 + 24);
          v56 = *(a4 + 32);
          goto LABEL_80;
        }
      }

      v60 = *(a2 + 3);
      if (v60 > 1)
      {
        v62 = 0;
        _X9 = *v57;
        __asm { PRFM            #4, [X9] }

        v65 = (v135 ^ (*v57 >> 12)) & v60;
        v66 = *(*v57 + v65);
        v67 = vceq_s8(v66, v59);
        if (!v67)
        {
          goto LABEL_57;
        }

LABEL_54:
        v68 = *(a2 + 6);
        while (1)
        {
          v69 = (v65 + (__clz(__rbit64(v67)) >> 3)) & v60;
          if (*(v68 + 16 * v69) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
          {
            break;
          }

          v67 &= ((v67 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v67)
          {
LABEL_57:
            while (!*&vceq_s8(v66, 0x8080808080808080))
            {
              v62 += 8;
              v65 = (v62 + v65) & v60;
              v66 = *&_X9[v65];
              v67 = vceq_s8(v66, v59);
              if (v67)
              {
                goto LABEL_54;
              }
            }

            goto LABEL_61;
          }
        }

        v70 = (v68 + 16 * v69);
        if (&_X9[v69])
        {
          goto LABEL_52;
        }
      }

      else if (*(a2 + 4) >= 2uLL)
      {
        v70 = *v57;
        if (*v57 == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
        {
          v70 = a2 + 40;
        }

        v79 = &absl::lts_20240722::container_internal::kSooControl;
        if (*v57 != &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
        {
          v79 = 0;
        }

        if (v79)
        {
LABEL_52:
          v61 = *(v70 + 1);
LABEL_62:
          v171 = v61;
          *v172 = xmmword_23CE4D230;
          *&v172[16] = 0u;
          v173 = 0u;
          v72 = *v55;
          v71 = v55[1];
          if (*v55 != v71)
          {
            do
            {
              operations_research::sat::LinearConstraintBuilder::AddLiteralTerm(&v171, *v72++, 1);
            }

            while (v72 != v71);
          }

          operations_research::sat::LinearConstraintBuilder::Build(&v171, v162);
          v73 = *(a4 + 8);
          if (v73 >= *(a4 + 16))
          {
            v76 = std::vector<operations_research::sat::LinearConstraint>::__emplace_back_slow_path<operations_research::sat::LinearConstraint>(a4, v162);
          }

          else
          {
            v74 = *v162;
            *(v73 + 16) = *&v162[16];
            *v73 = v74;
            v75 = v163;
            v163 = 0uLL;
            *(v73 + 24) = v75;
            v76 = v73 + 40;
          }

          *(a4 + 8) = v76;
          v77 = *(&v163 + 1);
          *(&v163 + 1) = 0;
          if (v77)
          {
            MEMORY[0x23EED9440](v77, 0x1000C8000313F17);
          }

          v78 = v163;
          *&v163 = 0;
          if (v78)
          {
            MEMORY[0x23EED9440](v78, 0x1000C8052888210);
          }

          if (*&v172[24])
          {
            *&v173 = *&v172[24];
            operator delete(*&v172[24]);
          }

          goto LABEL_47;
        }
      }

LABEL_61:
      v61 = 0;
      goto LABEL_62;
    }

LABEL_80:
    if (v56 != v55)
    {
      v80 = v56;
      do
      {
        v82 = *(v80 - 3);
        v80 -= 3;
        v81 = v82;
        if (v82)
        {
          *(v56 - 2) = v81;
          operator delete(v81);
        }

        v56 = v80;
      }

      while (v80 != v55);
    }

    *(a4 + 32) = v55;
    v83 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
    v84 = *(v83 + 296);
    if (v84)
    {
      absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v84, 0, "sat_solver->CurrentDecisionLevel() == 0");
    }

    v85 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
    v86 = *a4;
    v87 = *(a4 + 8);
    if (*a4 != v87)
    {
      v88 = v85;
      while (1)
      {
        v90 = *(v86 + 16);
        if (v90 == 1)
        {
          break;
        }

        if (!v90 && (*v86 > 0 || (*(v86 + 8) & 0x8000000000000000) != 0))
        {
LABEL_118:
          *(v83 + 528) = 1;
          goto LABEL_170;
        }

LABEL_90:
        v86 += 40;
        if (v86 == v87)
        {
          goto LABEL_119;
        }
      }

      v91 = **(v86 + 32);
      v92 = **(v86 + 24) ^ (v91 >> 63);
      if (v91 >= 0)
      {
        v93 = **(v86 + 32);
      }

      else
      {
        v93 = -v91;
      }

      v94 = *v86;
      if (v92 == -1)
      {
        if (v94 <= 0)
        {
          v89 = *(v86 + 8);
          goto LABEL_89;
        }

        v97 = 0xFFFFFFFFLL;
        v96 = 1;
      }

      else
      {
        v95 = *(v88 + 152);
        if (v94 <= *(v95 + 24 * v92) * v93)
        {
          v89 = *(v86 + 8);
          goto LABEL_111;
        }

        if (v94 / v93 * v93 >= v94)
        {
          v96 = v94 / v93;
        }

        else
        {
          v96 = v94 / v93 + 1;
        }

        v97 = v92;
      }

      if ((operations_research::sat::IntegerTrail::Enqueue(v88, v97, v96, 0, 0, 0, 0) & 1) == 0)
      {
        goto LABEL_118;
      }

      v89 = *(v86 + 8);
      if (v92 != -1)
      {
        v95 = *(v88 + 152);
LABEL_111:
        if (v89 >= -(v93 * *(v95 + 24 * (v92 ^ 1))))
        {
          goto LABEL_90;
        }

        v98 = v89 / v93 - (v89 / v93 * v93 > v89);
        if (v98 >= 0x8000000000000002)
        {
          v99 = -v98;
        }

        else
        {
          v99 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v100 = v92 ^ 1;
LABEL_117:
        if (!operations_research::sat::IntegerTrail::Enqueue(v88, v100, v99, 0, 0, 0, 0))
        {
          goto LABEL_118;
        }

        goto LABEL_90;
      }

LABEL_89:
      if ((v89 & 0x8000000000000000) == 0)
      {
        goto LABEL_90;
      }

      v100 = 0xFFFFFFFFLL;
      v99 = 1;
      goto LABEL_117;
    }

LABEL_119:
    v101 = v133;
    v102 = v134;
    if (!operations_research::sat::SatSolver::FinishPropagation(v83))
    {
      goto LABEL_170;
    }

    v103 = *a4;
    v104 = *(a4 + 8);
    if (*a4 != v104)
    {
      while (*(v103 + 16) >= 2)
      {
        v103 += 40;
        if (v103 == v104)
        {
          v103 = *(a4 + 8);
          goto LABEL_135;
        }
      }

      if (v103 != v104)
      {
        v105 = v103 + 40;
        if ((v103 + 40) != v104)
        {
          do
          {
            if (*(v105 + 16) >= 2)
            {
              v106 = *v105;
              *(v103 + 16) = *(v105 + 16);
              *v103 = v106;
              v107 = *(v105 + 24);
              *(v105 + 24) = 0;
              v108 = *(v103 + 24);
              *(v103 + 24) = v107;
              if (v108)
              {
                MEMORY[0x23EED9440](v108, 0x1000C8052888210);
              }

              v109 = *(v105 + 32);
              *(v105 + 32) = 0;
              v110 = *(v103 + 32);
              *(v103 + 32) = v109;
              if (v110)
              {
                MEMORY[0x23EED9440](v110, 0x1000C8000313F17);
              }

              v103 += 40;
            }

            v105 += 40;
          }

          while (v105 != v104);
          v104 = *(a4 + 8);
          v101 = v133;
          v102 = v134;
        }
      }
    }

LABEL_135:
    std::vector<operations_research::sat::LinearConstraint>::erase(a4, v103, v104);
    if (v102[143] < 2 || *(v102 + 663) != 1)
    {
      goto LABEL_165;
    }

    v113 = *(a2 + 3);
    if (v113 > 1)
    {
      v112 = 0;
      _X11 = *(a2 + 5);
      __asm { PRFM            #4, [X11] }

      v117 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
      v118 = vdup_n_s8(v117 & 0x7F);
      v119 = ((v117 >> 7) ^ (_X11 >> 12)) & v113;
      v120 = *(_X11 + v119);
      v121 = vceq_s8(v120, v118);
      if (!v121)
      {
        goto LABEL_144;
      }

LABEL_141:
      v122 = *(a2 + 6);
      do
      {
        v123 = (v119 + (__clz(__rbit64(v121)) >> 3)) & v113;
        if (*(v122 + 16 * v123) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
        {
          v112 = (v122 + 16 * v123);
          v114 = (_X11 + v123);
          goto LABEL_150;
        }

        v121 &= ((v121 & 0x8080808080808080) - 1) & 0x8080808080808080;
      }

      while (v121);
LABEL_144:
      while (!*&vceq_s8(v120, 0x8080808080808080))
      {
        v112 += 8;
        v119 = &v112[v119] & v113;
        v120 = *(_X11 + v119);
        v121 = vceq_s8(v120, v118);
        if (v121)
        {
          goto LABEL_141;
        }
      }
    }

    else if (*(a2 + 4) >= 2uLL)
    {
      v112 = a2 + 40;
      v114 = &absl::lts_20240722::container_internal::kSooControl;
      if (*(a2 + 5) != &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
      {
        v114 = 0;
        v112 = 0;
      }

      goto LABEL_150;
    }

    v114 = 0;
LABEL_150:
    if (v114)
    {
      v114 = *(v112 + 1);
    }

    *v162 = v114;
    *&v162[8] = 0u;
    v163 = 0u;
    v164 = 0u;
    v124 = *(this + 8);
    if (v124 >= 1)
    {
      for (i = 0; i < v124; ++i)
      {
        v126 = *(v16[6] + 4 * i);
        if (v126 != -1)
        {
          operations_research::sat::LinearConstraintBuilder::AddLiteralTerm(v162, 2 * v126, 1);
          v124 = *(this + 8);
        }
      }
    }

    operations_research::sat::LinearConstraintBuilder::BuildExpression(v162, v158);
    if (v158[0] != v158[1])
    {
      operations_research::sat::CreateCliqueCutGenerator(v158, a2, &v171);
    }

    if (v160)
    {
      v161 = v160;
      operator delete(v160);
    }

    if (v158[0])
    {
      v158[1] = v158[0];
      operator delete(v158[0]);
    }

    if (*(&v163 + 1))
    {
      *&v164 = *(&v163 + 1);
      operator delete(*(&v163 + 1));
    }

LABEL_165:
    v127 = *a4;
    v128 = *(a4 + 8);
    if ((*a4 != v128 || *(a4 + 48) != *(a4 + 56)) && *v101 == 1)
    {
      v171 = "[FinalLinearRelaxation] #linear:";
      *v172 = 32;
      v129 = absl::lts_20240722::numbers_internal::FastIntToBuffer(0xCCCCCCCCCCCCCCCDLL * ((v128 - v127) >> 3), &v162[16], v111);
      *v162 = &v162[16];
      *&v162[8] = v129 - &v162[16];
      v158[0] = " #cut_generators:";
      v158[1] = 17;
      v131 = absl::lts_20240722::numbers_internal::FastIntToBuffer((*(a4 + 56) - *(a4 + 48)) >> 6, v167, v130);
      v165 = v167;
      v166 = v131 - v167;
      absl::lts_20240722::StrCat(&v171, v162, v158, &v165, &__p);
      operations_research::SolverLogger::LogInfo(v101, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_relaxation.cc", 2007, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

LABEL_170:
  operations_research::sat::ActivityBoundHelper::~ActivityBoundHelper(&v139);
  v132 = *MEMORY[0x277D85DE8];
}

void sub_23CC639B8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

__int128 *std::vector<operations_research::sat::LinearConstraint>::erase(uint64_t a1, __int128 *a2, __int128 *a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        v8 = *v4;
        *(v7 + 4) = *(v4 + 4);
        *v7 = v8;
        v9 = *(v4 + 3);
        *(v4 + 3) = 0;
        v10 = *(v7 + 3);
        *(v7 + 3) = v9;
        if (v10)
        {
          MEMORY[0x23EED9440](v10, 0x1000C8052888210);
        }

        v11 = *(v4 + 4);
        *(v4 + 4) = 0;
        v12 = *(v7 + 4);
        *(v7 + 4) = v11;
        if (v12)
        {
          MEMORY[0x23EED9440](v12, 0x1000C8000313F17);
        }

        v4 = (v4 + 40);
        v7 = (v7 + 40);
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      v13 = *(v6 - 1);
      *(v6 - 1) = 0;
      if (v13)
      {
        MEMORY[0x23EED9440](v13, 0x1000C8000313F17);
      }

      v14 = *(v6 - 2);
      *(v6 - 2) = 0;
      if (v14)
      {
        MEMORY[0x23EED9440](v14, 0x1000C8052888210);
      }

      v6 = (v6 - 40);
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

uint64_t std::__function::__func<operations_research::sat::IsFixed(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)::{lambda(operations_research::sat::Model const&)#1},std::allocator<operations_research::sat::IsFixed(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)::{lambda(operations_research::sat::Model const&)#1}>,BOOL ()(operations_research::sat::Model const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_284F43DF8;
  *(a2 + 8) = *(result + 8);
  return result;
}

BOOL std::__function::__func<operations_research::sat::IsFixed(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)::{lambda(operations_research::sat::Model const&)#1},std::allocator<operations_research::sat::IsFixed(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)::{lambda(operations_research::sat::Model const&)#1}>,BOOL ()(operations_research::sat::Model const&)>::operator()(uint64_t a1, void *a2)
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
        return *(*(*(v2 + 8) + 40) + 8 * *(a1 + 8)) + *(*(*(v2 + 8) + 40) + ((8 * *(a1 + 8)) ^ 8)) == 0;
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

  return *(*(*(v2 + 8) + 40) + 8 * *(a1 + 8)) + *(*(*(v2 + 8) + 40) + ((8 * *(a1 + 8)) ^ 8)) == 0;
}

uint64_t std::__function::__func<operations_research::sat::IsFixed(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)::{lambda(operations_research::sat::Model const&)#1},std::allocator<operations_research::sat::IsFixed(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)::{lambda(operations_research::sat::Model const&)#1}>,BOOL ()(operations_research::sat::Model const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000023CE4D3CDLL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000023CE4D3CDLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023CE4D3CDLL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023CE4D3CDLL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::equal_to<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::find_or_prepare_insert<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
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
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v14, (v16 + (__clz(__rbit64(v21)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::equal_to<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::GetPolicyFunctions(void)::value);
    v24 = v22[3] + 8 * result;
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
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::equal_to<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::resize_impl(result, 3);
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

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::equal_to<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::resize_impl(uint64_t *a1, uint64_t a2)
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

uint64_t std::vector<operations_research::sat::LinearConstraint>::__emplace_back_slow_path<operations_research::sat::LinearConstraint>(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v3 - *a1;
  v5 = 0xCCCCCCCCCCCCCCCDLL * (v4 >> 3);
  v6 = v5 + 1;
  if (v5 + 1 > 0x666666666666666)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - v2) >> 3) > v6)
  {
    v6 = 0x999999999999999ALL * ((*(a1 + 16) - v2) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - v2) >> 3) >= 0x333333333333333)
  {
    v8 = 0x666666666666666;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0x666666666666666)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v9 = 8 * (v4 >> 3);
  *v9 = *a2;
  *(v9 + 16) = *(a2 + 16);
  v10 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(v9 + 24) = v10;
  v11 = v9 + 40;
  v12 = v9 - v4;
  if (v2 != v3)
  {
    v13 = v2;
    v14 = v12;
    do
    {
      v15 = *v13;
      *(v14 + 16) = *(v13 + 4);
      *v14 = v15;
      v16 = *(v13 + 3);
      v13[3] = 0;
      v13[4] = 0;
      *(v14 + 24) = v16;
      v13 += 5;
      v14 += 40;
    }

    while (v13 != v3);
    do
    {
      v17 = v2[4];
      v2[4] = 0;
      if (v17)
      {
        MEMORY[0x23EED9440](v17, 0x1000C8000313F17);
      }

      v18 = v2[3];
      v2[3] = 0;
      if (v18)
      {
        MEMORY[0x23EED9440](v18, 0x1000C8052888210);
      }

      v2 += 5;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = v12;
  *(a1 + 8) = v11;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return 40 * v5 + 40;
}

void *std::vector<std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_23CC645D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  *(v9 + 8) = v10;
  std::__exception_guard_exceptions<std::vector<std::vector<int>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<int,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<std::pair<int,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<int,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<int,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *a1 < 2uLL && v3 > 1;
  if (v5)
  {
    v6 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(a1 + 16)) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(a1 + 16)))) + *(a1 + 20);
  }

  v8 = *a1;
  v9 = v3 & 1;
  v10 = v2 < 2;
  v11 = v5;
  v7 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,16ul,false,true,8ul>(&v7, a1);
}

__n128 absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<int,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<std::pair<int,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<int,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<int,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::transfer_slot_fn(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

void **std::vector<operations_research::SolverLogger::ThrottlingData>::~vector[abi:ne200100](void **a1)
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
        if (*(v3 - 1) < 0)
        {
          operator delete(*(v3 - 3));
        }

        v3 -= 5;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void **std::vector<std::function<void ()(std::string const&)>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 32;
      do
      {
        v6 = *(v3 - 1);
        v3 -= 32;
        if (v3 == v6)
        {
          (*(*v6 + 32))(v6);
        }

        else if (v6)
        {
          (*(*v6 + 40))(v6);
        }

        v5 -= 32;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

operations_research::SolverLogger *operations_research::SolverLogger::SolverLogger(operations_research::SolverLogger *this)
{
  *(this + 1) = 0;
  *this = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 20;
  *(this + 5) = 0x3FF0000000000000;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 48) = 1;
  *(this + 7) = absl::lts_20240722::GetCurrentTimeNanos(this);
  return this;
}

void sub_23CC64B50(_Unwind_Exception *a1)
{
  std::vector<operations_research::SolverLogger::ThrottlingData>::~vector[abi:ne200100]((v1 + 72));
  std::vector<std::function<void ()(std::string const&)>>::~vector[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

uint64_t operations_research::SolverLogger::AddInfoLoggingCallback(uint64_t *a1, uint64_t a2)
{
  v3 = a1[2];
  if (v3 >= a1[3])
  {
    result = std::vector<std::function<void ()(std::string const&)>>::__emplace_back_slow_path<std::function<void ()(std::string const&)> const&>(a1 + 1, a2);
    a1[2] = result;
  }

  else
  {
    v4 = *(a2 + 24);
    if (!v4)
    {
LABEL_5:
      *(v3 + 24) = v4;
      result = v3 + 32;
      a1[2] = v3 + 32;
      a1[2] = v3 + 32;
      return result;
    }

    if (v4 != a2)
    {
      v4 = (*(*v4 + 16))(v4);
      goto LABEL_5;
    }

    *(v3 + 24) = v3;
    (*(**(a2 + 24) + 24))(*(a2 + 24), v3);
    result = v3 + 32;
    a1[2] = v3 + 32;
    a1[2] = v3 + 32;
  }

  return result;
}

uint64_t operations_research::SolverLogger::LogInfo(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (*(result + 1) == 1)
  {
    v6 = *(a4 + 23);
    if (v6 >= 0)
    {
      v7 = a4;
    }

    else
    {
      v7 = *a4;
    }

    if (v6 >= 0)
    {
      v8 = *(a4 + 23);
    }

    else
    {
      v8 = *(a4 + 8);
    }

    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], v7, v8);
    std::ios_base::getloc((v9 + *(*v9 - 24)));
    v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
    (v10->__vftable[2].~facet_0)(v10, 10);
    std::locale::~locale(&v14);
    std::ostream::put();
    result = std::ostream::flush();
  }

  v12 = *(v5 + 8);
  for (i = *(v5 + 16); v12 != i; v12 += 32)
  {
    v13 = *(v12 + 24);
    if (!v13)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    result = (*(*v13 + 48))(v13, a4);
  }

  return result;
}

unint64_t operations_research::SolverLogger::GetNewThrottledId(operations_research::SolverLogger *this)
{
  v3 = *(this + 9);
  v4 = *(this + 10);
  v2 = (this + 72);
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v3) >> 3);
  v6 = v5 + 1;
  if (v6 > v5)
  {
    std::vector<operations_research::SolverLogger::ThrottlingData>::__append(v2, v6 - v5);
    return v5;
  }

  if (v6 >= v5)
  {
    return v5;
  }

  v8 = v3 + 40 * v6;
  while (v4 != v8)
  {
    if (*(v4 - 1) < 0)
    {
      operator delete(*(v4 - 24));
    }

    v4 -= 40;
  }

  *(this + 10) = v8;
  return v5;
}

std::string *operations_research::SolverLogger::ThrottledLog(std::string *result, uint64_t a2, uint64_t a3)
{
  v23[6] = *MEMORY[0x277D85DE8];
  if (result->__r_.__value_.__s.__data_[0] != 1)
  {
LABEL_19:
    v17 = *MEMORY[0x277D85DE8];
    return result;
  }

  v3 = result[3].__r_.__value_.__r.__words[0] + 40 * a2;
  if (result[2].__r_.__value_.__s.__data_[0] == 1)
  {
    v4 = result;
    v5 = a3;
    CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(result);
    a3 = v5;
    v7 = CurrentTimeNanos;
    result = v4;
    v8 = v7 - v4[2].__r_.__value_.__l.__size_ + v4[2].__r_.__value_.__r.__words[2];
  }

  else
  {
    v8 = result[2].__r_.__value_.__r.__words[2];
  }

  v9 = fmax(v8 * 0.000000001, 1.0);
  v10 = *(v3 + 8);
  if ((*v3 - SLODWORD(result[1].__r_.__value_.__r.__words[1])) / v9 < *&result[1].__r_.__value_.__r.__words[2])
  {
    if (v10 < 1)
    {
      operations_research::SolverLogger::LogInfo(result, a2, a3, a3);
    }

    else
    {
      v11 = result;
      v12 = *(a3 + 23);
      if (v12 >= 0)
      {
        v13 = a3;
      }

      else
      {
        v13 = *a3;
      }

      if (v12 < 0)
      {
        v12 = *(a3 + 8);
      }

      v23[0] = v13;
      v23[1] = v12;
      v22[0] = " [skipped_logs=";
      v22[1] = 15;
      v20[0] = v21;
      v20[1] = absl::lts_20240722::numbers_internal::FastIntToBuffer(v10, v21, a3) - v21;
      v19[0] = "]";
      v19[1] = 1;
      absl::lts_20240722::StrCat(v23, v22, v20, v19, &__p);
      operations_research::SolverLogger::LogInfo(v11, v14, v15, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    ++*v3;
    *(v3 + 8) = 0;
    result = MEMORY[0x23EED9020](v3 + 16, &byte_23CE7F131);
    goto LABEL_19;
  }

  *(v3 + 8) = v10 + 1;
  v16 = *MEMORY[0x277D85DE8];

  return std::string::operator=((v3 + 16), a3);
}

void sub_23CC65010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

absl::lts_20240722 *operations_research::SolverLogger::FlushPendingThrottledLogs(absl::lts_20240722 *this, char a2, char *a3)
{
  v21[6] = *MEMORY[0x277D85DE8];
  if (*this == 1)
  {
    v3 = this;
    v4 = *(this + 9);
    if (*(this + 10) != v4)
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = (v4 + 40 * v6);
        if (v8[1])
        {
          if ((a2 & 1) != 0 || (*(v3 + 48) != 1 ? (v9 = *(v3 + 64)) : (this = absl::lts_20240722::GetCurrentTimeNanos(this), v9 = this + *(v3 + 64) - *(v3 + 56)), (*v8 - *(v3 + 32)) / fmax(v9 * 0.000000001, 1.0) < *(v3 + 40)))
          {
            v10 = v8[2];
            v11 = *(v8 + 39);
            if (v11 < 0)
            {
              v11 = v8[3];
            }

            else
            {
              v10 = v8 + 2;
            }

            v21[0] = v10;
            v21[1] = v11;
            v20[0] = " [skipped_logs=";
            v20[1] = 15;
            v12 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v8[1] - 1, v19, a3);
            v18[0] = v19;
            v18[1] = v12 - v19;
            v17[0] = "]";
            v17[1] = 1;
            absl::lts_20240722::StrCat(v21, v20, v18, v17, &__p);
            operations_research::SolverLogger::LogInfo(v3, v13, v14, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            ++*v8;
            v8[1] = 0;
            this = MEMORY[0x23EED9020](v8 + 2, &byte_23CE7F131);
          }
        }

        v6 = v7;
        v4 = *(v3 + 72);
        ++v7;
      }

      while (0xCCCCCCCCCCCCCCCDLL * ((*(v3 + 80) - v4) >> 3) > v6);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_23CC65230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::function<void ()(std::string const&)>>::__emplace_back_slow_path<std::function<void ()(std::string const&)> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v7 = 32 * v2;
  __p = 0;
  v15 = v7;
  v16 = v7;
  v17 = 0;
  v8 = *(a2 + 24);
  if (v8)
  {
    if (v8 == a2)
    {
      *(v7 + 24) = v7;
      (*(*v8 + 24))(v8, v7);
      goto LABEL_15;
    }

    v8 = (*(*v8 + 16))(v8);
  }

  *(v7 + 24) = v8;
LABEL_15:
  v16 += 32;
  std::vector<std::function<void ()(std::string const&)>>::__swap_out_circular_buffer(a1, &__p);
  v9 = a1[1];
  v10 = v15;
  while (1)
  {
    v11 = v16;
    if (v16 == v10)
    {
      break;
    }

    v16 -= 32;
    v12 = *(v11 - 8);
    if (v12 == v11 - 32)
    {
      (*(*v12 + 32))(v12);
    }

    else if (v12)
    {
      (*(*v12 + 40))(v12);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_23CC65434(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::function<void ()(std::string const&)>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::function<void ()(std::string const&)>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v3 = result;
  v4 = a2[1];
  v6 = *result;
  v5 = result[1];
  v7 = v5 - *result;
  if (v5 == *result)
  {
    goto LABEL_15;
  }

  v8 = (v4 - 32 * ((v5 - *result) >> 5) + 24);
  v9 = *result;
  do
  {
    v11 = v9[3];
    v10 = v8;
    if (!v11)
    {
      goto LABEL_4;
    }

    if (v9 != v11)
    {
      *v8 = v11;
      v10 = v9 + 3;
LABEL_4:
      *v10 = 0;
      goto LABEL_5;
    }

    *v8 = (v8 - 3);
    (*(*v9[3] + 24))();
LABEL_5:
    v9 += 4;
    v8 += 4;
  }

  while (v9 != v5);
  v12 = v6;
  do
  {
    result = v6[3];
    if (v6 == result)
    {
      result = (*(*result + 32))(result);
    }

    else if (result)
    {
      result = (*(*result + 40))(result);
    }

    v6 += 4;
    v12 += 4;
  }

  while (v6 != v5);
LABEL_15:
  a2[1] = v4 - v7;
  v13 = *v3;
  *v3 = v4 - v7;
  v3[1] = v13;
  a2[1] = v13;
  v14 = v3[1];
  v3[1] = a2[2];
  a2[2] = v14;
  v15 = v3[2];
  v3[2] = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
  return result;
}

uint64_t std::__split_buffer<std::function<void ()(std::string const&)>>::~__split_buffer(uint64_t a1)
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

void std::vector<operations_research::SolverLogger::ThrottlingData>::__append(char **a1, unint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v3 - v4) >> 3) >= a2)
  {
    v12 = 40 * a2;
    if (40 * a2)
    {
      bzero(a1[1], 40 * a2);
      v4 += v12;
    }

    a1[1] = v4;
    return;
  }

  v5 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3) + a2;
  if (v5 > 0x666666666666666)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v6 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
  if (2 * v6 > v5)
  {
    v5 = 2 * v6;
  }

  if (v6 >= 0x333333333333333)
  {
    v7 = 0x666666666666666;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x666666666666666)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v13 = (8 * ((v4 - *a1) >> 3));
  v14 = 40 * a2;
  if (40 * a2)
  {
    bzero(v13, v14);
    v8 = &v13[v14];
    v9 = *a1;
    v10 = a1[1];
    v11 = &v13[*a1 - v10];
    if (v10 != *a1)
    {
      goto LABEL_19;
    }

LABEL_12:
    *a1 = v11;
    a1[1] = v8;
    a1[2] = 0;
    if (!v9)
    {
      return;
    }

    goto LABEL_26;
  }

  v8 = 8 * ((v4 - *a1) >> 3);
  v9 = *a1;
  v10 = a1[1];
  v11 = &v13[*a1 - v10];
  if (v10 == *a1)
  {
    goto LABEL_12;
  }

LABEL_19:
  v15 = v9;
  v16 = v11;
  do
  {
    *v16 = *v15;
    v17 = *(v15 + 1);
    *(v16 + 4) = *(v15 + 4);
    *(v16 + 1) = v17;
    *(v15 + 3) = 0;
    *(v15 + 4) = 0;
    *(v15 + 2) = 0;
    v15 += 40;
    v16 += 40;
  }

  while (v15 != v10);
  do
  {
    if (v9[39] < 0)
    {
      operator delete(*(v9 + 2));
    }

    v9 += 40;
  }

  while (v9 != v10);
  v9 = *a1;
  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
LABEL_26:

    operator delete(v9);
  }
}

operations_research::glop::LinearProgram *operations_research::glop::LinearProgram::LinearProgram(operations_research::glop::LinearProgram *this)
{
  v2 = operations_research::glop::SparseMatrix::SparseMatrix(this);
  operations_research::glop::SparseMatrix::SparseMatrix(v2 + 32);
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 4) = 0u;
  *(this + 42) = 0;
  *(this + 43) = &unk_23CE31C20;
  *(this + 45) = 0;
  *(this + 46) = 0;
  *(this + 47) = &unk_23CE31C20;
  *(this + 49) = 0;
  *(this + 50) = 0x3FF0000000000000;
  *(this + 102) = 16843008;
  *(this + 53) = 0;
  *(this + 54) = 0;
  *(this + 52) = 0;
  *(this + 110) = -1;
  *(this + 444) = 1;
  return this;
}

unint64_t *operations_research::glop::LinearProgram::Clear(operations_research::glop::LinearProgram *this)
{
  operations_research::glop::SparseMatrix::Clear(this);
  operations_research::glop::SparseMatrix::Clear(this + 4);
  *(this + 9) = *(this + 8);
  *(this + 12) = *(this + 11);
  v2 = *(this + 14);
  v3 = *(this + 15);
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  *(this + 15) = v2;
  *(this + 18) = *(this + 17);
  *(this + 21) = *(this + 20);
  *(this + 24) = *(this + 23);
  *(this + 30) = *(this + 29);
  *(this + 33) = *(this + 32);
  v5 = *(this + 26);
  v6 = *(this + 27);
  while (v6 != v5)
  {
    v7 = *(v6 - 1);
    v6 -= 3;
    if (v7 < 0)
    {
      operator delete(*v6);
    }
  }

  *(this + 27) = v5;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>>>>::clear(this + 45);
  result = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>>>::clear(this + 41);
  *(this + 49) = 0;
  *(this + 50) = 0x3FF0000000000000;
  *(this + 102) = 16843008;
  if (*(this + 439) < 0)
  {
    **(this + 52) = 0;
    *(this + 53) = 0;
  }

  else
  {
    *(this + 416) = 0;
    *(this + 439) = 0;
  }

  *(this + 110) = -1;
  return result;
}

unint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>>>>::clear(unint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = result;
    v4 = result[2];
    v3 = result[3];
    if (v1 > 6)
    {
      v9 = result[1];
      if (v9 >= 2)
      {
        v10 = v9 >> 1;
        do
        {
          v11 = *v4 & 0x8080808080808080;
          if (v11 != 0x8080808080808080)
          {
            v12 = v11 ^ 0x8080808080808080;
            do
            {
              v13 = v3 + ((4 * __clz(__rbit64(v12))) & 0x1E0);
              if (*(v13 + 23) < 0)
              {
                operator delete(*v13);
              }

              --v10;
              v12 &= v12 - 1;
            }

            while (v12);
          }

          ++v4;
          v3 += 256;
        }

        while (v10);
      }
    }

    else
    {
      v5 = *(v4 + v1) & 0x8080808080808080;
      if (v5 != 0x8080808080808080)
      {
        v6 = v3 - 32;
        v7 = v5 ^ 0x8080808080808080;
        do
        {
          v8 = v6 + ((4 * __clz(__rbit64(v7))) & 0x1E0);
          if (*(v8 + 23) < 0)
          {
            operator delete(*v8);
          }

          v7 &= v7 - 1;
        }

        while (v7);
      }
    }

    return absl::lts_20240722::container_internal::ClearBackingArray(v2, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>>>>::GetPolicyFunctions(void)::value, v1 < 0x80, 0);
  }

  return result;
}

unint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>>>::clear(unint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = result;
    v4 = result[2];
    v3 = result[3];
    if (v1 > 6)
    {
      v9 = result[1];
      if (v9 >= 2)
      {
        v10 = v9 >> 1;
        do
        {
          v11 = *v4 & 0x8080808080808080;
          if (v11 != 0x8080808080808080)
          {
            v12 = v11 ^ 0x8080808080808080;
            do
            {
              v13 = v3 + ((4 * __clz(__rbit64(v12))) & 0x1E0);
              if (*(v13 + 23) < 0)
              {
                operator delete(*v13);
              }

              --v10;
              v12 &= v12 - 1;
            }

            while (v12);
          }

          ++v4;
          v3 += 256;
        }

        while (v10);
      }
    }

    else
    {
      v5 = *(v4 + v1) & 0x8080808080808080;
      if (v5 != 0x8080808080808080)
      {
        v6 = v3 - 32;
        v7 = v5 ^ 0x8080808080808080;
        do
        {
          v8 = v6 + ((4 * __clz(__rbit64(v7))) & 0x1E0);
          if (*(v8 + 23) < 0)
          {
            operator delete(*v8);
          }

          v7 &= v7 - 1;
        }

        while (v7);
      }
    }

    return absl::lts_20240722::container_internal::ClearBackingArray(v2, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>>>::GetPolicyFunctions(void)::value, v1 < 0x80, 0);
  }

  return result;
}

uint64_t operations_research::glop::LinearProgram::CreateNewVariable(operations_research::glop::LinearProgram *this)
{
  __p[0] = 0;
  std::vector<double>::push_back[abi:ne200100](this + 136, __p);
  __p[0] = 0;
  std::vector<double>::push_back[abi:ne200100](this + 160, __p);
  std::vector<double>::push_back[abi:ne200100](this + 184, &operations_research::glop::kInfinity);
  LODWORD(__p[0]) = 0;
  std::vector<int>::push_back[abi:ne200100](this + 232, __p);
  v4 = 0;
  LOBYTE(__p[0]) = 0;
  std::vector<std::string>::push_back[abi:ne200100](this + 208, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  *(this + 410) = 0;
  return operations_research::glop::SparseMatrix::AppendEmptyColumn(this);
}

void sub_23CC65DAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::glop::LinearProgram::CreateNewSlackVariable(uint64_t a1, int a2, uint64_t a3, double a4, double a5)
{
  v14 = a5;
  v15 = a4;
  v13 = 0;
  std::vector<double>::push_back[abi:ne200100](a1 + 136, &v13);
  std::vector<double>::push_back[abi:ne200100](a1 + 160, &v15);
  std::vector<double>::push_back[abi:ne200100](a1 + 184, &v14);
  if (a2)
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  LODWORD(v13) = v8;
  std::vector<int>::push_back[abi:ne200100](a1 + 232, &v13);
  v9 = *(a1 + 216);
  if (v9 >= *(a1 + 224))
  {
    v11 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1 + 208, a3);
  }

  else
  {
    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(*(a1 + 216), *a3, *(a3 + 8));
    }

    else
    {
      v10 = *a3;
      *(v9 + 16) = *(a3 + 16);
      *v9 = v10;
    }

    v11 = v9 + 24;
    *(a1 + 216) = v9 + 24;
  }

  *(a1 + 216) = v11;
  *(a1 + 410) = 0;
  return operations_research::glop::SparseMatrix::AppendEmptyColumn(a1);
}

unint64_t operations_research::glop::LinearProgram::CreateNewConstraint(operations_research::glop::LinearProgram *this)
{
  v2 = this + 112;
  v3 = (*(this + 15) - *(this + 14)) >> 3;
  v4 = 0xAAAAAAAAAAAAAAABLL * v3;
  operations_research::glop::SparseMatrix::SetNumRows(this, -1431655765 * v3 + 1);
  __p[0] = 0;
  std::vector<double>::push_back[abi:ne200100](this + 64, __p);
  __p[0] = 0;
  std::vector<double>::push_back[abi:ne200100](this + 88, __p);
  v7 = 0;
  LOBYTE(__p[0]) = 0;
  std::vector<std::string>::push_back[abi:ne200100](v2, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  *(this + 410) = 0;
  return v4;
}

void sub_23CC65F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::glop::LinearProgram::SetVariableType(uint64_t result, int a2, int a3)
{
  v3 = *(result + 232);
  v4 = (*(v3 + 4 * a2) - 1) < 2;
  *(v3 + 4 * a2) = a3;
  if ((a3 - 1) < 2 != v4)
  {
    *(result + 411) = 0;
  }

  return result;
}

double operations_research::glop::LinearProgram::SetVariableBounds(uint64_t a1, int a2, double result, double a4)
{
  v4 = *(a1 + 160);
  if ((*(*(a1 + 232) + 4 * a2) - 1) > 1)
  {
    *(v4 + 8 * a2) = result;
    *(*(a1 + 184) + 8 * a2) = a4;
    return result;
  }

  v5 = *(v4 + 8 * a2);
  v6 = *(a1 + 184);
  if (v5 >= 2.22044605e-16 || v5 <= -1.0)
  {
    v9 = 0;
  }

  else
  {
    v8 = *(v6 + 8 * a2);
    v9 = v8 < 2.0;
    if (v8 <= 1.0)
    {
      v9 = 0;
    }
  }

  *(v4 + 8 * a2) = result;
  *(v6 + 8 * a2) = a4;
  result = *(v4 + 8 * a2);
  if (a4 <= 1.0 || result >= 2.22044605e-16 || result <= -1.0)
  {
    if (!v9)
    {
      return result;
    }

    goto LABEL_20;
  }

  result = 2.0;
  if (a4 < 2.0 != v9)
  {
LABEL_20:
    *(a1 + 411) = 0;
  }

  return result;
}

BOOL operations_research::glop::LinearProgram::IsVariableBinary(void *a1, int a2)
{
  if ((*(a1[29] + 4 * a2) - 1) > 1)
  {
    return 0;
  }

  v2 = *(a1[20] + 8 * a2);
  if (v2 < 2.22044605e-16)
  {
    v3 = v2 == -1.0;
    v4 = v2 < -1.0;
  }

  else
  {
    v3 = 1;
    v4 = 0;
  }

  if (v4 || v3)
  {
    return 0;
  }

  v5 = *(a1[23] + 8 * a2);
  return v5 > 1.0 && v5 < 2.0;
}

void operations_research::glop::LinearProgram::UpdateAllIntegerVariableLists(operations_research::glop::LinearProgram *this)
{
  if ((*(this + 411) & 1) == 0)
  {
    *(this + 33) = *(this + 32);
    *(this + 36) = *(this + 35);
    *(this + 39) = *(this + 38);
    v2 = -1431655765 * ((*(this + 1) - *this) >> 4);
    v9 = 0;
    if (v2 >= 1)
    {
      for (i = 0; i < v2; v9 = i)
      {
        if ((*(*(this + 29) + 4 * i) - 1) <= 1)
        {
          std::vector<int>::push_back[abi:ne200100](this + 256, &v9);
          if ((*(*(this + 29) + 4 * v9) - 1) > 1 || ((v5 = *(*(this + 20) + 8 * v9), v5 < 2.22044605e-16) ? (v6 = v5 <= -1.0) : (v6 = 1), v6 || ((v7 = *(*(this + 23) + 8 * v9), v7 > 1.0) ? (v8 = v7 < 2.0) : (v8 = 0), v4 = this + 280, !v8)))
          {
            v4 = this + 304;
          }

          std::vector<int>::push_back[abi:ne200100](v4, &v9);
        }

        i = v9 + 1;
      }
    }

    *(this + 411) = 1;
  }
}

void operations_research::glop::LinearProgram::SetConstraintBounds(uint64_t a1, int a2, double a3, double a4)
{
  operations_research::glop::LinearProgram::ResizeRowsIfNeeded(a1, a2);
  v8 = 8 * a2;
  *(*(a1 + 64) + v8) = a3;
  *(*(a1 + 88) + v8) = a4;
}

void operations_research::glop::LinearProgram::ResizeRowsIfNeeded(uint64_t a1, int a2)
{
  if (*(a1 + 24) <= a2)
  {
    *(a1 + 410) = 0;
    v3 = a2 + 1;
    operations_research::glop::SparseMatrix::SetNumRows(a1, a2 + 1);
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
    __x.__r_.__value_.__r.__words[0] = 0;
    v6 = (v5 - v4) >> 3;
    if (v3 <= v6)
    {
      if (v3 < v6)
      {
        *(a1 + 72) = v4 + 8 * v3;
      }
    }

    else
    {
      std::vector<double>::__append(a1 + 64, v3 - v6, &__x);
    }

    v7 = *(a1 + 88);
    v8 = *(a1 + 96);
    __x.__r_.__value_.__r.__words[0] = 0;
    v9 = (v8 - v7) >> 3;
    if (v3 <= v9)
    {
      if (v3 < v9)
      {
        *(a1 + 96) = v7 + 8 * v3;
      }
    }

    else
    {
      std::vector<double>::__append(a1 + 88, v3 - v9, &__x);
    }

    v10 = *(a1 + 112);
    v11 = *(a1 + 120);
    *(&__x.__r_.__value_.__s + 23) = 0;
    __x.__r_.__value_.__s.__data_[0] = 0;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v10) >> 3);
    if (v3 <= v12)
    {
      if (v3 < v12)
      {
        v13 = (v10 + 24 * v3);
        while (v11 != v13)
        {
          v14 = *(v11 - 1);
          v11 -= 3;
          if (v14 < 0)
          {
            operator delete(*v11);
          }
        }

        *(a1 + 120) = v13;
      }
    }

    else
    {
      std::vector<std::string>::__append((a1 + 112), v3 - v12, &__x);
      if (SHIBYTE(__x.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__x.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_23CC66424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::glop::LinearProgram::SetCoefficient(uint64_t a1, int a2, int a3, double a4)
{
  operations_research::glop::LinearProgram::ResizeRowsIfNeeded(a1, a2);
  *(a1 + 409) = 0;
  v8 = *a1 + 48 * a3;
  v9 = *(v8 + 8);
  if (v9 == *(v8 + 16) && (!v9 || v9 < 2 * v9))
  {
    operator new[]();
  }

  *(v8 + 8) = v9 + 1;
  v10 = *(v8 + 32);
  *(*(v8 + 24) + 4 * v9) = a2;
  *(v10 + 8 * v9) = a4;
  *(v8 + 40) = 1;
}

void operations_research::glop::LinearProgram::CleanUp(operations_research::glop::LinearProgram *this, __n128 a2)
{
  if ((*(this + 409) & 1) == 0)
  {
    operations_research::glop::SparseMatrix::CleanUp(this, a2);
    *(this + 409) = 1;
  }
}

BOOL operations_research::glop::LinearProgram::IsCleanedUp(operations_research::glop::LinearProgram *this)
{
  if (*(this + 409))
  {
    return 1;
  }

  result = operations_research::glop::SparseMatrix::IsCleanedUp(this);
  *(this + 409) = result;
  return result;
}

void operations_research::glop::LinearProgram::GetVariableName(uint64_t a1@<X0>, signed int a2@<W1>, std::string *a3@<X8>)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 208);
  if (a2 >= (-1431655765 * ((*(a1 + 216) - v3) >> 3)))
  {
    goto LABEL_9;
  }

  v4 = (v3 + 24 * a2);
  if ((*(v4 + 23) & 0x80000000) == 0)
  {
    if (*(v4 + 23))
    {
      v5 = *v4;
      a3->__r_.__value_.__r.__words[2] = *(v4 + 2);
      *&a3->__r_.__value_.__l.__data_ = v5;
LABEL_10:
      v9 = *MEMORY[0x277D85DE8];
      return;
    }

LABEL_9:
    v10[0] = a2;
    v10[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
    absl::lts_20240722::str_format_internal::FormatPack("c%d", 3, v10, 1uLL, a3);
    goto LABEL_10;
  }

  v6 = *(v4 + 1);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = *v4;
  v8 = *MEMORY[0x277D85DE8];

  std::string::__init_copy_ctor_external(a3, v7, v6);
}

void operations_research::glop::LinearProgram::GetConstraintName(uint64_t a1@<X0>, signed int a2@<W1>, std::string *a3@<X8>)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 112);
  if (a2 >= (-1431655765 * ((*(a1 + 120) - v3) >> 3)))
  {
    goto LABEL_9;
  }

  v4 = (v3 + 24 * a2);
  if ((*(v4 + 23) & 0x80000000) == 0)
  {
    if (*(v4 + 23))
    {
      v5 = *v4;
      a3->__r_.__value_.__r.__words[2] = *(v4 + 2);
      *&a3->__r_.__value_.__l.__data_ = v5;
LABEL_10:
      v9 = *MEMORY[0x277D85DE8];
      return;
    }

LABEL_9:
    v10[0] = a2;
    v10[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
    absl::lts_20240722::str_format_internal::FormatPack("r%d", 3, v10, 1uLL, a3);
    goto LABEL_10;
  }

  v6 = *(v4 + 1);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = *v4;
  v8 = *MEMORY[0x277D85DE8];

  std::string::__init_copy_ctor_external(a3, v7, v6);
}

uint64_t operations_research::glop::LinearProgram::GetTransposeSparseMatrix(operations_research::glop::LinearProgram *this)
{
  if ((*(this + 410) & 1) == 0)
  {
    operations_research::glop::SparseMatrix::PopulateFromTranspose<operations_research::glop::SparseMatrix>(this + 4, this);
    *(this + 410) = 1;
  }

  return this + 32;
}

uint64_t operations_research::glop::LinearProgram::GetMutableTransposeSparseMatrix(operations_research::glop::LinearProgram *this)
{
  if ((*(this + 410) & 1) == 0)
  {
    operations_research::glop::SparseMatrix::PopulateFromTranspose<operations_research::glop::SparseMatrix>(this + 4, this);
  }

  *(this + 410) = 0;
  return this + 32;
}

void *operations_research::glop::LinearProgram::ClearTransposeMatrix(operations_research::glop::LinearProgram *this)
{
  result = operations_research::glop::SparseMatrix::Clear(this + 4);
  *(this + 410) = 0;
  return result;
}

double operations_research::glop::LinearProgram::GetObjectiveCoefficientForMinimizationVersion(uint64_t a1, int a2)
{
  result = *(*(a1 + 136) + 8 * a2);
  if (*(a1 + 408))
  {
    return -result;
  }

  return result;
}

uint64_t operations_research::glop::LinearProgram::GetDimensionString@<X0>(operations_research::glop::LinearProgram *this@<X0>, void *a2@<X8>)
{
  v11[10] = *MEMORY[0x277D85DE8];
  v9 = 0.0;
  v10 = 0.0;
  operations_research::glop::SparseMatrix::ComputeMinAndMaxMagnitudes(this, &v10, &v9);
  v4 = *(this + 6);
  v5 = -1431655765 * ((*(this + 1) - *this) >> 4);
  v6 = operations_research::glop::SparseMatrix::num_entries(this);
  v11[0] = v4;
  v11[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
  v11[2] = v5;
  v11[3] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
  v11[4] = v6;
  v11[5] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  *&v11[6] = v10;
  v11[7] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  *&v11[8] = v9;
  v11[9] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  result = absl::lts_20240722::str_format_internal::FormatPack("%d rows, %d columns, %d entries with magnitude in [%e, %e]", 58, v11, 5uLL, a2);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t operations_research::glop::LinearProgram::GetObjectiveStatsString@<X0>(operations_research::glop::LinearProgram *this@<X0>, void *a2@<X8>)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v3 = *(this + 17);
  v4 = *(this + 18);
  if (v3 == v4)
  {
    goto LABEL_18;
  }

  v5 = 0;
  v6 = INFINITY;
  v7 = -INFINITY;
  do
  {
    v8 = *v3;
    if (*v3 == 0x7FF0000000000000)
    {
      v9 = 1;
    }

    else
    {
      v9 = (*v3 & 0x7FFFFFFFFFFFFFFFLL) == 0;
      *v3;
    }

    if (!v9 && v8 != -INFINITY)
    {
      if (v8 < v6)
      {
        v6 = *v3;
      }

      if (v7 < v8)
      {
        v7 = *v3;
      }

      ++v5;
    }

    ++v3;
  }

  while (v3 != v4);
  if (!v5)
  {
LABEL_18:
    operator new();
  }

  v13[0] = v5;
  v13[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  *&v13[2] = v6;
  v13[3] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  *&v13[4] = v7;
  v13[5] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  result = absl::lts_20240722::str_format_internal::FormatPack("%d non-zeros, range [%e, %e]", 28, v13, 3uLL, a2);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t operations_research::glop::LinearProgram::GetBoundsStatsString@<X0>(operations_research::glop::LinearProgram *this@<X0>, void *a2@<X8>)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v2 = *(this + 20);
  v3 = *(this + 21);
  v4 = 0x7FF0000000000000;
  if (v2 == v3)
  {
    v5 = 0;
    v11 = 0xFFF0000000000000;
    v6 = INFINITY;
    v7 = -INFINITY;
    v12 = *(this + 23);
    v13 = *(this + 24);
    if (v12 == v13)
    {
      goto LABEL_34;
    }

    goto LABEL_21;
  }

  v5 = 0;
  v6 = INFINITY;
  v7 = -INFINITY;
  do
  {
    v8 = *v2;
    if (*v2 == 0x7FF0000000000000)
    {
      v9 = 1;
    }

    else
    {
      v9 = (*v2 & 0x7FFFFFFFFFFFFFFFLL) == 0;
      *v2;
    }

    if (!v9 && v8 != -INFINITY)
    {
      if (v8 < v6)
      {
        v6 = *v2;
      }

      if (v7 < v8)
      {
        v7 = *v2;
      }

      ++v5;
    }

    ++v2;
  }

  while (v2 != v3);
  v4 = *&v6;
  v11 = *&v7;
  v12 = *(this + 23);
  v13 = *(this + 24);
  if (v12 != v13)
  {
    do
    {
LABEL_21:
      v14 = *v12;
      if (*v12 == 0x7FF0000000000000)
      {
        v15 = 1;
      }

      else
      {
        v15 = (*v12 & 0x7FFFFFFFFFFFFFFFLL) == 0;
        *v12;
      }

      if (!v15 && v14 != -INFINITY)
      {
        if (v14 < v6)
        {
          v6 = *v12;
        }

        if (v7 < v14)
        {
          v7 = *v12;
        }

        ++v5;
      }

      ++v12;
    }

    while (v12 != v13);
    v4 = *&v6;
    v11 = *&v7;
  }

LABEL_34:
  v17 = *(this + 8);
  v18 = *(this + 9);
  if (v17 != v18)
  {
    do
    {
      v19 = *v17;
      if (*v17 == 0x7FF0000000000000)
      {
        v20 = 1;
      }

      else
      {
        v20 = (*v17 & 0x7FFFFFFFFFFFFFFFLL) == 0;
        *v17;
      }

      if (!v20 && v19 != -INFINITY)
      {
        if (v19 < v6)
        {
          v6 = *v17;
        }

        if (v7 < v19)
        {
          v7 = *v17;
        }

        ++v5;
      }

      ++v17;
    }

    while (v17 != v18);
    v4 = *&v6;
    v11 = *&v7;
  }

  v22 = *(this + 11);
  v23 = *(this + 12);
  if (v22 != v23)
  {
    do
    {
      v24 = *v22;
      if (*v22 == 0x7FF0000000000000)
      {
        v25 = 1;
      }

      else
      {
        v25 = (*v22 & 0x7FFFFFFFFFFFFFFFLL) == 0;
        *v22;
      }

      if (!v25 && v24 != -INFINITY)
      {
        if (v24 < v6)
        {
          v6 = *v22;
        }

        if (v7 < v24)
        {
          v7 = *v22;
        }

        ++v5;
      }

      ++v22;
    }

    while (v22 != v23);
    v4 = *&v6;
    v11 = *&v7;
  }

  if (!v5)
  {
    operator new();
  }

  v29[0] = v5;
  v29[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  v29[2] = v4;
  v29[3] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  v29[4] = v11;
  v29[5] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  result = absl::lts_20240722::str_format_internal::FormatPack("%d non-zeros, range [%e, %e]", 28, v29, 3uLL, a2);
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t operations_research::glop::LinearProgram::GetSlackVariable(uint64_t a1, int a2)
{
  v2 = *(a1 + 440);
  if (v2 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (v2 + a2);
  }
}

void operations_research::glop::LinearProgram::AddSlackVariablesWhereNecessary(operations_research::glop::LinearProgram *this, int a2, char *a3, __n128 a4)
{
  v37[6] = *MEMORY[0x277D85DE8];
  if ((*(this + 409) & 1) == 0)
  {
    operations_research::glop::SparseMatrix::CleanUp(this, a4);
    *(this + 409) = 1;
  }

  v6 = *(this + 6);
  if (v6)
  {
    if ((v6 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (a2)
  {
    v7 = *this;
    v8 = -1431655765 * ((*(this + 1) - *this) >> 4);
    if (v8 >= 1)
    {
      v9 = 0;
      v10 = *(this + 29);
      v11 = v8 & 0x7FFFFFFF;
      do
      {
        v12 = (v7 + 48 * v9);
        v13 = v12[1];
        if (v13 >= 1)
        {
          v14 = v12[3];
          if ((*(v10 + 4 * v9) - 3) >= 0xFFFFFFFE)
          {
            v16 = v12[4];
            do
            {
              while (1)
              {
                v17 = *v14++;
                v18 = v17 >> 6;
                v19 = 1 << v17;
                v20 = *(8 * v18);
                if (((1 << v17) & v20) != 0 && round(*v16) == *v16)
                {
                  break;
                }

                *(8 * v18) = v20 & ~v19;
                ++v16;
                if (!--v13)
                {
                  goto LABEL_9;
                }
              }

              *(8 * v18) = v19 | v20;
              ++v16;
              --v13;
            }

            while (v13);
          }

          else
          {
            do
            {
              v15 = *v14++;
              *((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) &= ~(1 << v15);
              --v13;
            }

            while (v13);
          }
        }

LABEL_9:
        ++v9;
      }

      while (v9 != v11);
    }
  }

  v21 = -1431655765 * ((*(this + 1) - *this) >> 4);
  v22 = *(this + 6);
  if (v22 >= 1)
  {
    for (i = 0; i < v22; ++i)
    {
      v24 = *(this + 110);
      if (v24 == -1)
      {
        v25 = -1;
      }

      else
      {
        v25 = i + v24;
      }

      if (v25 == -1 || v25 >= v21)
      {
        v27 = *((i >> 3) & 0x1FFFFFFFFFFFFFF8);
        v28 = *(*(this + 11) + 8 * i);
        v29 = *(*(this + 8) + 8 * i);
        v37[0] = "s";
        v37[1] = 1;
        v30 = absl::lts_20240722::numbers_internal::FastIntToBuffer(i, v36, a3);
        v35[0] = v36;
        v35[1] = v30 - v36;
        absl::lts_20240722::StrCat(v37, v35, &__p);
        NewSlackVariable = operations_research::glop::LinearProgram::CreateNewSlackVariable(this, (v27 & (1 << i)) != 0, &__p, -v28, -v29);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          v32 = NewSlackVariable;
          operator delete(__p.__r_.__value_.__l.__data_);
          NewSlackVariable = v32;
        }

        operations_research::glop::LinearProgram::SetCoefficient(this, i, NewSlackVariable, 1.0);
        operations_research::glop::LinearProgram::ResizeRowsIfNeeded(this, i);
        *(*(this + 8) + 8 * i) = 0;
        *(*(this + 11) + 8 * i) = 0;
        v22 = *(this + 6);
      }
    }
  }

  *(this + 409) = 1;
  if (*(this + 110) == -1)
  {
    *(this + 110) = v21;
  }

  v33 = *MEMORY[0x277D85DE8];
}

void sub_23CC671D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    operator delete(v14);
    _Unwind_Resume(a1);
  }

  operator delete(v14);
  _Unwind_Resume(a1);
}

void operations_research::glop::LinearProgram::PopulateFromDual(uint64_t a1, uint64_t *a2, std::vector<int> *a3)
{
  v3 = a2;
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 6);
  operations_research::glop::LinearProgram::Clear(a1);
  *(a1 + 408) = 1;
  v8 = v3[50];
  *(a1 + 392) = v3[49];
  *(a1 + 400) = v8;
  if (v7 >= 1)
  {
    v9 = 0;
    while (1)
    {
      operations_research::glop::LinearProgram::CreateNewVariable(a1);
      v10 = *(v3[8] + 8 * v9);
      v11 = *(v3[11] + 8 * v9);
      if (v10 != v11)
      {
        break;
      }

      v12 = *(a1 + 160);
      if ((*(*(a1 + 232) + 4 * v9) - 1) > 1)
      {
        *(v12 + 8 * v9) = 0xFFF0000000000000;
LABEL_4:
        *(*(a1 + 184) + 8 * v9) = 0x7FF0000000000000;
        goto LABEL_5;
      }

      v13 = *(v12 + 8 * v9);
      v14 = *(a1 + 184);
      v15 = v13 >= 2.22044605e-16 || v13 <= -1.0;
      if (v15 || (v16 = *(v14 + 8 * v9), v16 <= 1.0))
      {
        *(v12 + 8 * v9) = 0xFFF0000000000000;
LABEL_26:
        *(v14 + 8 * v9) = 0x7FF0000000000000;
        goto LABEL_5;
      }

      *(v12 + 8 * v9) = 0xFFF0000000000000;
      *(v14 + 8 * v9) = 0x7FF0000000000000;
      if (v16 < 2.0)
      {
        goto LABEL_15;
      }

LABEL_5:
      *(*(a1 + 136) + 8 * v9) = v10;
LABEL_6:
      if (v7 == ++v9)
      {
        goto LABEL_42;
      }
    }

    if (v11 != INFINITY)
    {
      v17 = *(a1 + 160);
      if ((*(*(a1 + 232) + 4 * v9) - 1) > 1)
      {
        *(v17 + 8 * v9) = 0xFFF0000000000000;
        *(*(a1 + 184) + 8 * v9) = 0;
      }

      else
      {
        v18 = *(v17 + 8 * v9);
        v19 = *(a1 + 184);
        v20 = v18 >= 2.22044605e-16 || v18 <= -1.0;
        if (v20 || (v21 = *(v19 + 8 * v9), v21 <= 1.0))
        {
          *(v17 + 8 * v9) = 0xFFF0000000000000;
          *(v19 + 8 * v9) = 0;
        }

        else
        {
          *(v17 + 8 * v9) = 0xFFF0000000000000;
          *(v19 + 8 * v9) = 0;
          if (v21 < 2.0)
          {
            *(a1 + 411) = 0;
          }
        }
      }

      *(*(a1 + 136) + 8 * v9) = v11;
      goto LABEL_6;
    }

    if (v10 == -INFINITY)
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v78, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/lp_data/lp_data.cc", 809, 2);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v78, "PopulateFromDual() was called with a program ", 0x2DuLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v78, "containing free constraints.", 0x1CuLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v78);
      goto LABEL_6;
    }

    v22 = *(a1 + 160);
    if ((*(*(a1 + 232) + 4 * v9) - 1) <= 1)
    {
      v23 = *(v22 + 8 * v9);
      v14 = *(a1 + 184);
      v24 = v23 >= 2.22044605e-16 || v23 <= -1.0;
      if (v24 || (v25 = *(v14 + 8 * v9), v25 <= 1.0))
      {
        *(v22 + 8 * v9) = 0;
        goto LABEL_26;
      }

      *(v22 + 8 * v9) = 0;
      *(v14 + 8 * v9) = 0x7FF0000000000000;
      if (v25 >= 2.0)
      {
        goto LABEL_5;
      }

LABEL_15:
      *(a1 + 411) = 0;
      goto LABEL_5;
    }

    *(v22 + 8 * v9) = 0;
    goto LABEL_4;
  }

LABEL_42:
  v26 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 4);
  __n = v7;
  v77 = v3;
  if (v26 >= 1)
  {
    v27 = 0;
    v28 = (v26 & 0x7FFFFFFF);
    do
    {
      v29 = *(v3[20] + 8 * v27);
      if (v29 != -INFINITY)
      {
        NewVariable = operations_research::glop::LinearProgram::CreateNewVariable(a1);
        *(*(a1 + 136) + 8 * NewVariable) = v29;
        v31 = *(a1 + 160);
        if ((*(*(a1 + 232) + 4 * NewVariable) - 1) > 1)
        {
          *(v31 + 8 * NewVariable) = 0;
          *(*(a1 + 184) + 8 * NewVariable) = 0x7FF0000000000000;
        }

        else
        {
          v32 = *(v31 + 8 * NewVariable);
          v33 = *(a1 + 184);
          v34 = v32 >= 2.22044605e-16 || v32 <= -1.0;
          if (v34 || (v35 = *(v33 + 8 * NewVariable), v35 <= 1.0))
          {
            *(v31 + 8 * NewVariable) = 0;
            *(v33 + 8 * NewVariable) = 0x7FF0000000000000;
          }

          else
          {
            *(v31 + 8 * NewVariable) = 0;
            *(v33 + 8 * NewVariable) = 0x7FF0000000000000;
            if (v35 < 2.0)
            {
              *(a1 + 411) = 0;
            }
          }
        }

        operations_research::glop::LinearProgram::SetCoefficient(a1, v27, NewVariable, 1.0);
      }

      v27 = v27 + 1;
    }

    while (v28 != v27);
    v36 = 0;
    do
    {
      v37 = *(v3[23] + 8 * v36);
      if (v37 != INFINITY)
      {
        v38 = operations_research::glop::LinearProgram::CreateNewVariable(a1);
        *(*(a1 + 136) + 8 * v38) = v37;
        v39 = *(a1 + 160);
        if ((*(*(a1 + 232) + 4 * v38) - 1) > 1)
        {
          *(v39 + 8 * v38) = 0xFFF0000000000000;
          *(*(a1 + 184) + 8 * v38) = 0;
        }

        else
        {
          v40 = *(v39 + 8 * v38);
          v41 = *(a1 + 184);
          v42 = v40 >= 2.22044605e-16 || v40 <= -1.0;
          if (v42 || (v43 = *(v41 + 8 * v38), v43 <= 1.0))
          {
            *(v39 + 8 * v38) = 0xFFF0000000000000;
            *(v41 + 8 * v38) = 0;
          }

          else
          {
            *(v39 + 8 * v38) = 0xFFF0000000000000;
            *(v41 + 8 * v38) = 0;
            if (v43 < 2.0)
            {
              *(a1 + 411) = 0;
            }
          }
        }

        operations_research::glop::LinearProgram::SetCoefficient(a1, v36, v38, 1.0);
      }

      v36 = v36 + 1;
    }

    while (v28 != v36);
    v44 = 0;
    __dst = v28;
    do
    {
      v45 = v3[17];
      if (*(v3 + 408))
      {
        v46 = -*(v45 + 8 * v44);
      }

      else
      {
        v46 = *(v45 + 8 * v44);
      }

      operations_research::glop::LinearProgram::ResizeRowsIfNeeded(a1, v44);
      *(*(a1 + 64) + 8 * v44) = v46;
      *(*(a1 + 88) + 8 * v44) = v46;
      v47 = (*v3 + 48 * v44);
      v48 = v47[1];
      if (v48 >= 1)
      {
        v50 = v47[3];
        v49 = v47[4];
        do
        {
          v52 = *v50++;
          v53 = *v49;
          operations_research::glop::LinearProgram::ResizeRowsIfNeeded(a1, v44);
          *(a1 + 409) = 0;
          v54 = *a1 + 48 * v52;
          v55 = *(v54 + 8);
          if (v55 == *(v54 + 16) && (!v55 || v55 < 2 * v55))
          {
            operator new[]();
          }

          v51 = *(v54 + 32);
          *(*(v54 + 24) + 4 * v55) = v44;
          *(v54 + 8) = v55 + 1;
          *(v51 + 8 * v55) = v53;
          *(v54 + 40) = 1;
          ++v49;
          --v48;
        }

        while (v48);
      }

      v44 = v44 + 1;
      v3 = v77;
    }

    while (v44 != __dst);
  }

  std::vector<int>::assign(a3, v7, operations_research::glop::kInvalidCol);
  if (v7 >= 1)
  {
    v56 = 0;
    v57 = 0;
    do
    {
      v58 = *(v77[8] + 8 * v57);
      v59 = *(v77[11] + 8 * v57);
      v60 = v58 == -INFINITY && v59 == INFINITY;
      if (v60 || (v58 != v59 ? (v61 = v58 == -INFINITY) : (v61 = 1), !v61 ? (v62 = v59 == INFINITY) : (v62 = 1), !v62))
      {
        v63 = operations_research::glop::LinearProgram::CreateNewVariable(a1);
        v64 = v63;
        v65 = *(a1 + 160);
        if ((*(*(a1 + 232) + 4 * v63) - 1) > 1)
        {
          *(v65 + 8 * v63) = 0;
          *(*(a1 + 184) + 8 * v63) = 0x7FF0000000000000;
        }

        else
        {
          v66 = *(v65 + 8 * v63);
          v67 = *(a1 + 184);
          v68 = v66 >= 2.22044605e-16 || v66 <= -1.0;
          if (v68 || (v69 = *(v67 + 8 * v63), v69 <= 1.0))
          {
            *(v65 + 8 * v63) = 0;
            *(v67 + 8 * v63) = 0x7FF0000000000000;
          }

          else
          {
            *(v65 + 8 * v63) = 0;
            *(v67 + 8 * v63) = 0x7FF0000000000000;
            if (v69 < 2.0)
            {
              *(a1 + 411) = 0;
            }
          }
        }

        *(*(a1 + 136) + 8 * v63) = v58;
        v70 = *a1;
        v71 = *a1 + 48 * v63;
        *(v71 + 8) = 0;
        *(v71 + 40) = 0;
        v72 = v70 + v56;
        if (*(v71 + 16) < *(v70 + v56 + 16))
        {
          operator new[]();
        }

        v73 = *(v72 + 8);
        if (v73 >= 1)
        {
          memmove(*(v71 + 24), *(v70 + v56 + 24), 4 * v73);
          memmove(*(v71 + 32), *(v70 + v56 + 32), 8 * *(v72 + 8));
          v73 = *(v72 + 8);
        }

        *(v71 + 8) = v73;
        *(v71 + 40) = *(v70 + v56 + 40);
        a3->__begin_[v57] = v64;
      }

      ++v57;
      v56 += 48;
    }

    while (48 * __n != v56);
  }

  *(a1 + 409) = 1;
}

void sub_23CC67A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *operations_research::glop::LinearProgram::PopulateFromLinearProgram(operations_research::glop::LinearProgram *this, const operations_research::glop::LinearProgram *a2)
{
  operations_research::glop::SparseMatrix::PopulateFromSparseMatrix(this, a2);
  if (*(a2 + 410) == 1)
  {
    *(this + 410) = 1;
    operations_research::glop::SparseMatrix::PopulateFromSparseMatrix((this + 32), (a2 + 32));
    if (this == a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *(this + 410) = 0;
  operations_research::glop::SparseMatrix::Clear(this + 4);
  if (this != a2)
  {
LABEL_5:
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(this + 8, *(a2 + 8), *(a2 + 9), (*(a2 + 9) - *(a2 + 8)) >> 3);
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(this + 11, *(a2 + 11), *(a2 + 12), (*(a2 + 12) - *(a2 + 11)) >> 3);
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(this + 112, *(a2 + 14), *(a2 + 15), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 15) - *(a2 + 14)) >> 3));
  }

LABEL_6:
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>>>>::clear(this + 45);
  result = operations_research::glop::LinearProgram::PopulateNameObjectiveAndVariablesFromLinearProgram(this, a2);
  *(this + 110) = *(a2 + 110);
  return result;
}

std::string *operations_research::glop::LinearProgram::PopulateNameObjectiveAndVariablesFromLinearProgram(operations_research::glop::LinearProgram *this, const operations_research::glop::LinearProgram *a2)
{
  if (this == a2)
  {
    *(this + 411) = *(a2 + 411);
  }

  else
  {
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(this + 17, *(a2 + 17), *(a2 + 18), (*(a2 + 18) - *(a2 + 17)) >> 3);
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(this + 20, *(a2 + 20), *(a2 + 21), (*(a2 + 21) - *(a2 + 20)) >> 3);
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(this + 23, *(a2 + 23), *(a2 + 24), (*(a2 + 24) - *(a2 + 23)) >> 3);
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(this + 208, *(a2 + 26), *(a2 + 27), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 27) - *(a2 + 26)) >> 3));
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(this + 29, *(a2 + 29), *(a2 + 30), (*(a2 + 30) - *(a2 + 29)) >> 2);
    *(this + 411) = *(a2 + 411);
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(this + 32, *(a2 + 32), *(a2 + 33), (*(a2 + 33) - *(a2 + 32)) >> 2);
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(this + 35, *(a2 + 35), *(a2 + 36), (*(a2 + 36) - *(a2 + 35)) >> 2);
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(this + 38, *(a2 + 38), *(a2 + 39), (*(a2 + 39) - *(a2 + 38)) >> 2);
  }

  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>>>::clear(this + 41);
  *(this + 204) = *(a2 + 204);
  v4 = *(a2 + 50);
  *(this + 49) = *(a2 + 49);
  *(this + 50) = v4;

  return std::string::operator=((this + 416), (a2 + 416));
}

__n128 operations_research::glop::LinearProgram::Swap(operations_research::glop::LinearProgram *this, operations_research::glop::LinearProgram *a2)
{
  operations_research::glop::SparseMatrix::Swap(this, a2);
  operations_research::glop::SparseMatrix::Swap(this + 4, (a2 + 32));
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  v5 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v5;
  v6 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v6;
  v7 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v7;
  v8 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v8;
  v9 = *(this + 104);
  *(this + 104) = *(a2 + 104);
  *(a2 + 104) = v9;
  v10 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v10;
  v11 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v11;
  v12 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v12;
  v13 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v13;
  v14 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v14;
  v15 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v15;
  v16 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v16;
  v17 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v17;
  v18 = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v18;
  v19 = *(this + 200);
  *(this + 200) = *(a2 + 200);
  *(a2 + 200) = v19;
  v20 = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v20;
  v21 = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v21;
  v22 = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v22;
  v23 = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v23;
  v24 = *(this + 31);
  *(this + 31) = *(a2 + 31);
  *(a2 + 31) = v24;
  v25 = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v25;
  v26 = *(this + 33);
  *(this + 33) = *(a2 + 33);
  *(a2 + 33) = v26;
  v27 = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = v27;
  v28 = *(this + 35);
  *(this + 35) = *(a2 + 35);
  *(a2 + 35) = v28;
  v29 = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v29;
  v30 = *(this + 37);
  *(this + 37) = *(a2 + 37);
  *(a2 + 37) = v30;
  v31 = *(this + 38);
  *(this + 38) = *(a2 + 38);
  *(a2 + 38) = v31;
  v32 = *(this + 39);
  *(this + 39) = *(a2 + 39);
  *(a2 + 39) = v32;
  v33 = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v33;
  v34 = *(a2 + 328);
  v35 = *(a2 + 43);
  v36 = *(a2 + 44);
  v37 = *(this + 344);
  *(a2 + 328) = *(this + 328);
  *(a2 + 344) = v37;
  *(this + 328) = v34;
  *(this + 43) = v35;
  *(this + 44) = v36;
  v38 = *(a2 + 360);
  v39 = *(a2 + 47);
  v40 = *(a2 + 48);
  v41 = *(this + 376);
  *(a2 + 360) = *(this + 360);
  *(a2 + 376) = v41;
  *(this + 360) = v38;
  *(this + 47) = v39;
  *(this + 48) = v40;
  LOBYTE(v33) = *(this + 408);
  *(this + 408) = *(a2 + 408);
  *(a2 + 408) = v33;
  *&v38 = *(this + 49);
  *(this + 49) = *(a2 + 49);
  *(a2 + 49) = v38;
  *&v38 = *(this + 50);
  *(this + 50) = *(a2 + 50);
  *(a2 + 50) = v38;
  LOBYTE(v33) = *(this + 409);
  *(this + 409) = *(a2 + 409);
  *(a2 + 409) = v33;
  LOBYTE(v33) = *(this + 410);
  *(this + 410) = *(a2 + 410);
  *(a2 + 410) = v33;
  LOBYTE(v33) = *(this + 411);
  *(this + 411) = *(a2 + 411);
  *(a2 + 411) = v33;
  v42 = *(this + 54);
  result = *(this + 26);
  v44 = *(a2 + 54);
  *(this + 26) = *(a2 + 26);
  *(this + 54) = v44;
  *(a2 + 26) = result;
  *(a2 + 54) = v42;
  LODWORD(v42) = *(this + 110);
  *(this + 110) = *(a2 + 110);
  *(a2 + 110) = v42;
  return result;
}

void operations_research::glop::LinearProgram::DeleteColumns(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    *(a1 + 411) = 0;
    v4 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
    v5 = 0xAAAAAAAB00000000 * ((*(a1 + 8) - *a1) >> 4);
    v42 = 0;
    v43 = 0;
    v44 = 0;
    if (v5)
    {
      if (!(v4 >> 62))
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0;
    if (v4 >= 1)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = v4 & 0x7FFFFFFF;
      do
      {
        while (1)
        {
          *(4 * v7) = v8;
          if (v7 >= *(a2 + 8) || ((*(*a2 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
          {
            break;
          }

          *(4 * v7++) = -1;
          v6 += 24;
          if (v9 == v7)
          {
            goto LABEL_13;
          }
        }

        v10 = 8 * v8;
        *(*(a1 + 136) + v10) = *(*(a1 + 136) + 8 * v7);
        *(*(a1 + 160) + v10) = *(*(a1 + 160) + 8 * v7);
        *(*(a1 + 184) + v10) = *(*(a1 + 184) + 8 * v7);
        std::string::operator=((*(a1 + 208) + 24 * v8), (*(a1 + 208) + v6));
        *(*(a1 + 232) + 4 * v8++) = *(*(a1 + 232) + 4 * v7++);
        v6 += 24;
      }

      while (v9 != v7);
    }

    else
    {
      v8 = 0;
    }

LABEL_13:
    operations_research::glop::SparseMatrix::DeleteColumns(a1, a2);
    __p.__r_.__value_.__r.__words[0] = 0;
    v12 = *(a1 + 136);
    v13 = (*(a1 + 144) - v12) >> 3;
    if (v8 <= v13)
    {
      if (v8 < v13)
      {
        *(a1 + 144) = v12 + 8 * v8;
      }
    }

    else
    {
      std::vector<double>::__append(a1 + 136, v8 - v13, &__p);
    }

    v14 = *(a1 + 160);
    v15 = *(a1 + 168);
    __p.__r_.__value_.__r.__words[0] = 0;
    v16 = (v15 - v14) >> 3;
    if (v8 <= v16)
    {
      if (v8 < v16)
      {
        *(a1 + 168) = v14 + 8 * v8;
      }
    }

    else
    {
      std::vector<double>::__append(a1 + 160, v8 - v16, &__p);
    }

    v17 = *(a1 + 184);
    v18 = *(a1 + 192);
    __p.__r_.__value_.__r.__words[0] = 0;
    v19 = (v18 - v17) >> 3;
    if (v8 <= v19)
    {
      if (v8 < v19)
      {
        *(a1 + 192) = v17 + 8 * v8;
      }
    }

    else
    {
      std::vector<double>::__append(a1 + 184, v8 - v19, &__p);
    }

    v20 = *(a1 + 232);
    v21 = *(a1 + 240);
    LODWORD(__p.__r_.__value_.__l.__data_) = 0;
    v22 = (v21 - v20) >> 2;
    if (v8 <= v22)
    {
      if (v8 < v22)
      {
        *(a1 + 240) = v20 + 4 * v8;
      }
    }

    else
    {
      std::vector<int>::__append((a1 + 232), v8 - v22, &__p);
    }

    *(&__p.__r_.__value_.__s + 23) = 0;
    __p.__r_.__value_.__s.__data_[0] = 0;
    v23 = *(a1 + 208);
    v24 = *(a1 + 216);
    v25 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v23) >> 3);
    if (v8 <= v25)
    {
      if (v8 < v25)
      {
        v26 = (v23 + 24 * v8);
        while (v24 != v26)
        {
          v27 = *(v24 - 1);
          v24 -= 3;
          if (v27 < 0)
          {
            operator delete(*v24);
          }
        }

        *(a1 + 216) = v26;
      }
    }

    else
    {
      std::vector<std::string>::__append((a1 + 208), v8 - v25, &__p);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (*(a1 + 336) >= 2uLL)
    {
      v29 = *(a1 + 344);
      v28 = *(a1 + 352);
      if (*v29 <= -2)
      {
        do
        {
          v30 = __clz(__rbit64((*v29 | ~(*v29 >> 7)) & 0x101010101010101)) >> 3;
          v29 += v30;
          v28 += 32 * v30;
        }

        while (*v29 < -1);
      }

      do
      {
        v32 = *(v28 + 24);
        if (v32 < *(a2 + 8) && ((*(*a2 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v32) & 1) != 0)
        {
          v33 = v29 + 1;
          v34 = v29[1];
          v35 = v28 + 32;
          if (v34 <= -2)
          {
            do
            {
              v36 = __clz(__rbit64((*v33 | ~(*v33 >> 7)) & 0x101010101010101)) >> 3;
              v33 += v36;
              v35 += 32 * v36;
              v34 = *v33;
            }

            while (v34 < -1);
          }

          if (v34 == 255)
          {
            v31 = 0;
          }

          else
          {
            v31 = v33;
          }

          if (*(v28 + 23) < 0)
          {
            operator delete(*v28);
          }

          absl::lts_20240722::container_internal::EraseMetaOnly((a1 + 328), &v29[-*(a1 + 344)]);
        }

        else
        {
          *(v28 + 24) = *(4 * v32);
          v39 = v29[1];
          v38 = v29 + 1;
          v37 = v39;
          v35 = v28 + 32;
          if (v39 <= -2)
          {
            do
            {
              v40 = __clz(__rbit64((*v38 | ~(*v38 >> 7)) & 0x101010101010101)) >> 3;
              v38 += v40;
              v35 += 32 * v40;
            }

            while (*v38 < -1);
            v37 = *v38;
          }

          v31 = v38;
          if (v37 == 255)
          {
            break;
          }
        }

        v28 = v35;
        v29 = v31;
      }

      while (v31);
    }

    if (*(a1 + 410) == 1)
    {
      operations_research::glop::SparseMatrix::DeleteRows((a1 + 32), v8, &v42);
      v11 = v42;
    }

    if (v11)
    {
      v43 = v11;
      operator delete(v11);
    }
  }
}

void sub_23CC683AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void operations_research::glop::LinearProgram::ScaleObjective(uint64_t a1, int a2)
{
  v2 = *(a1 + 136);
  v3 = *(a1 + 144);
  v4 = *(a1 + 136);
  v5 = 0.0;
  if (v4 == v3)
  {
    v6 = INFINITY;
  }

  else
  {
    v6 = INFINITY;
    v7 = *(a1 + 136);
    do
    {
      v8 = *v7 & 0x7FFFFFFFFFFFFFFFLL;
      if (v8 == 0x7FF0000000000000)
      {
        v9 = 1;
      }

      else
      {
        v9 = v8 == 0;
        *v7;
      }

      if (!v9)
      {
        v10 = fabs(*v7);
        if (v10 < v6)
        {
          v6 = v10;
        }

        if (v5 < v10)
        {
          v5 = v10;
        }
      }

      ++v7;
    }

    while (v7 != v3);
  }

  v11 = 1.0;
  switch(a2)
  {
    case 3:
      if (v4 != v3)
      {
        do
        {
          if (*v4 != 0.0)
          {
            v19 = fabs(*v4);
            operator new();
          }

          ++v4;
        }

        while (v4 != v3);
        v11 = 1.0;
      }

      goto LABEL_63;
    case 2:
      if (v4 == v3)
      {
        goto LABEL_63;
      }

      v15 = 0;
      v16 = 0.0;
      do
      {
        v17 = *v4++;
        v18 = v16 + fabs(v17);
        if (v17 != 0.0)
        {
          ++v15;
          v16 = v18;
        }
      }

      while (v4 != v3);
      if (!v15)
      {
        goto LABEL_63;
      }

      v13 = v16 / v15;
      break;
    case 1:
      if (v5 >= 1.0 || v5 <= 0.0)
      {
        v13 = 1.0;
      }

      else
      {
        v13 = v5;
      }

      if (v6 != INFINITY && v6 > 1.0)
      {
        v13 = v6;
      }

      break;
    default:
      goto LABEL_63;
  }

  v11 = 1.0;
  if (v13 == 1.0)
  {
    goto LABEL_63;
  }

  v20 = -1431655765 * ((*(a1 + 8) - *a1) >> 4);
  if (v20 < 1)
  {
    goto LABEL_62;
  }

  v21 = *(a1 + 136);
  v22 = v20 & 0x7FFFFFFF;
  if (v22 > 3)
  {
    v24 = v20 & 3;
    v23 = v22 - v24;
    v25 = v21 + 1;
    v26 = v22 - v24;
    while (1)
    {
      v27 = v25[-1];
      v28 = vmovn_s64(vmvnq_s8(vceqzq_f64(v27)));
      if (v28.i8[0])
      {
        v25[-1].f64[0] = v27.f64[0] / v13;
        if ((v28.i8[4] & 1) == 0)
        {
LABEL_50:
          v29 = *v25;
          v30 = vmovn_s64(vmvnq_s8(vceqzq_f64(*v25)));
          if ((v30.i8[0] & 1) == 0)
          {
            goto LABEL_51;
          }

          goto LABEL_55;
        }
      }

      else if ((v28.i8[4] & 1) == 0)
      {
        goto LABEL_50;
      }

      v25[-1].f64[1] = v27.f64[1] / v13;
      v29 = *v25;
      v30 = vmovn_s64(vmvnq_s8(vceqzq_f64(*v25)));
      if ((v30.i8[0] & 1) == 0)
      {
LABEL_51:
        if (v30.i8[4])
        {
          goto LABEL_56;
        }

        goto LABEL_47;
      }

LABEL_55:
      v25->f64[0] = v29.f64[0] / v13;
      if (v30.i8[4])
      {
LABEL_56:
        v25->f64[1] = v29.f64[1] / v13;
      }

LABEL_47:
      v25 += 2;
      v26 -= 4;
      if (!v26)
      {
        if (v24)
        {
          goto LABEL_58;
        }

        goto LABEL_62;
      }
    }
  }

  v23 = 0;
LABEL_58:
  v31 = &v21->f64[v23];
  v32 = v22 - v23;
  do
  {
    if (*v31 != 0.0)
    {
      *v31 = *v31 / v13;
    }

    ++v31;
    --v32;
  }

  while (v32);
LABEL_62:
  v33 = v13 * *(a1 + 400);
  *(a1 + 392) = *(a1 + 392) / v13;
  *(a1 + 400) = v33;
  v11 = v13;
LABEL_63:
  if (dword_2810BD3C8 >= 1)
  {
    v34 = v11;
    if (absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::glop::LinearProgram::ScaleObjective(operations_research::glop::GlopParameters_CostScalingAlgorithm)::$_0::operator() const(void)::site, dword_2810BD3C8))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v39, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/lp_data/lp_data.cc", 1227);
      v35 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v39, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v35, "Objective magnitude range is [", 0x1EuLL);
      v40 = v6;
      v36 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v35, &v40);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v36, ", ", 2uLL);
      v40 = v5;
      v37 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v36, &v40);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v37, "] (dividing by ", 0xFuLL);
      v40 = v34;
      v38 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v37, &v40);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v38, ").", 2uLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v39);
    }
  }
}

void sub_23CC688A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CC688B8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

double operations_research::glop::LinearProgram::ScaleBounds(operations_research::glop::LinearProgram *this)
{
  v2 = *(this + 20);
  v3 = *(this + 21);
  v4 = 0.0;
  if (v2 == v3)
  {
    v5 = INFINITY;
  }

  else
  {
    v5 = INFINITY;
    v6 = *(this + 20);
    do
    {
      v7 = *v6 & 0x7FFFFFFFFFFFFFFFLL;
      if (v7 == 0x7FF0000000000000)
      {
        v8 = 1;
      }

      else
      {
        v8 = v7 == 0;
        *v6;
      }

      if (!v8)
      {
        v9 = fabs(*v6);
        if (v9 < v5)
        {
          v5 = v9;
        }

        if (v4 < v9)
        {
          v4 = v9;
        }
      }

      ++v6;
    }

    while (v6 != v3);
  }

  v10 = *(this + 23);
  v11 = *(this + 24);
  if (v10 != v11)
  {
    v12 = *(this + 23);
    do
    {
      v13 = *v12 & 0x7FFFFFFFFFFFFFFFLL;
      if (v13 == 0x7FF0000000000000)
      {
        v14 = 1;
      }

      else
      {
        v14 = v13 == 0;
        *v12;
      }

      if (!v14)
      {
        v15 = fabs(*v12);
        if (v15 < v5)
        {
          v5 = v15;
        }

        if (v4 < v15)
        {
          v4 = v15;
        }
      }

      ++v12;
    }

    while (v12 != v11);
  }

  v16 = *(this + 8);
  v17 = *(this + 9);
  if (v16 != v17)
  {
    v18 = *(this + 8);
    do
    {
      v19 = *v18 & 0x7FFFFFFFFFFFFFFFLL;
      if (v19 == 0x7FF0000000000000)
      {
        v20 = 1;
      }

      else
      {
        v20 = v19 == 0;
        *v18;
      }

      if (!v20)
      {
        v21 = fabs(*v18);
        if (v21 < v5)
        {
          v5 = v21;
        }

        if (v4 < v21)
        {
          v4 = v21;
        }
      }

      ++v18;
    }

    while (v18 != v17);
  }

  v22 = *(this + 11);
  v23 = *(this + 12);
  if (v22 != v23)
  {
    v24 = *(this + 11);
    do
    {
      v25 = *v24 & 0x7FFFFFFFFFFFFFFFLL;
      if (v25 == 0x7FF0000000000000)
      {
        v26 = 1;
      }

      else
      {
        v26 = v25 == 0;
        *v24;
      }

      if (!v26)
      {
        v27 = fabs(*v24);
        if (v27 < v5)
        {
          v5 = v27;
        }

        if (v4 < v27)
        {
          v4 = v27;
        }
      }

      ++v24;
    }

    while (v24 != v23);
  }

  if (v4 >= 1.0 || v4 <= 0.0)
  {
    v29 = 1.0;
  }

  else
  {
    v29 = v4;
  }

  if (v5 == INFINITY || v5 <= 1.0)
  {
    v31 = v29;
  }

  else
  {
    v31 = v5;
  }

  if (v31 != 1.0)
  {
    v32 = v31 * *(this + 50);
    *(this + 49) = *(this + 49) / v31;
    *(this + 50) = v32;
    v33 = -1431655765 * ((*(this + 1) - *this) >> 4);
    if (v33 >= 1)
    {
      v34 = *(this + 29);
      for (i = v33 & 0x7FFFFFFF; i; --i)
      {
        v36 = *v2;
        v37 = *v2 / v31;
        v38 = *v10;
        v39 = *v34++;
        v40 = *v10 / v31;
        if ((v39 - 1) > 1)
        {
          *v2 = v37;
          *v10 = v40;
        }

        else
        {
          v41 = v36 < 2.22044605e-16;
          if (v36 <= -1.0)
          {
            v41 = 0;
          }

          v42 = v38 > 1.0;
          if (v38 >= 2.0)
          {
            v42 = 0;
          }

          v43 = v41 && v42;
          *v2 = v37;
          *v10 = v40;
          v44 = *v2;
          if (v40 <= 1.0 || v44 >= 2.22044605e-16 || v44 <= -1.0)
          {
            if (v43)
            {
              goto LABEL_83;
            }
          }

          else if (v40 < 2.0 != v43)
          {
LABEL_83:
            *(this + 411) = 0;
          }
        }

        ++v10;
        ++v2;
      }
    }

    if (*(this + 6) >= 1)
    {
      v47 = 0;
      do
      {
        v48 = v16[v47] / v31;
        v49 = v22[v47] / v31;
        operations_research::glop::LinearProgram::ResizeRowsIfNeeded(this, v47);
        v16 = *(this + 8);
        v16[v47] = v48;
        v22 = *(this + 11);
        v22[v47++] = v49;
      }

      while (v47 < *(this + 6));
    }
  }

  if (dword_2810BD3E0 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::glop::LinearProgram::ScaleBounds(void)::$_0::operator() const(void)::site, dword_2810BD3E0))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v55, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/lp_data/lp_data.cc", 1261);
    v51 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v55, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v51, "Bounds magnitude range is [", 0x1BuLL);
    v56 = v5;
    v52 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v51, &v56);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v52, ", ", 2uLL);
    v56 = v4;
    v53 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v52, &v56);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v53, "] (dividing bounds by ", 0x16uLL);
    v56 = v31;
    v54 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v53, &v56);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v54, ").", 2uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v55);
  }

  return v31;
}

void sub_23CC68CB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void operations_research::glop::LinearProgram::DeleteRows(uint64_t a1, uint64_t *a2)
{
  if (a2[1])
  {
    v4 = *(a1 + 24);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    if (v4)
    {
      if ((v4 & 0x80000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v5 = *(a1 + 64);
    if ((*(a1 + 72) - v5) >> 3)
    {
      *(a1 + 72) = v5;
    }

    v6 = *(a1 + 88);
    if ((*(a1 + 96) - v6) >> 3)
    {
      *(a1 + 96) = v6;
    }

    v7 = *(a1 + 120);
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - *(a1 + 112)) >> 3))
    {
      v8 = *(a1 + 112);
      while (v7 != v8)
      {
        v9 = *(v7 - 1);
        v7 -= 3;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      *(a1 + 120) = v8;
    }

    operations_research::glop::SparseMatrix::DeleteRows(a1, 0, &v20);
    if (*(a1 + 368) >= 2uLL)
    {
      v11 = *(a1 + 376);
      v10 = *(a1 + 384);
      if (*v11 <= -2)
      {
        do
        {
          v12 = __clz(__rbit64((*v11 | ~(*v11 >> 7)) & 0x101010101010101)) >> 3;
          v11 = (v11 + v12);
          v10 += 32 * v12;
        }

        while (*v11 < -1);
      }

      do
      {
        v13 = *(v20 + *(v10 + 24));
        v14 = (v11 + 1);
        v15 = v10 + 32;
        if (v13 == -1)
        {
          v18 = *v14;
          if (v18 <= -2)
          {
            do
            {
              v19 = __clz(__rbit64((*v14 | ~(*v14 >> 7)) & 0x101010101010101)) >> 3;
              v14 = (v14 + v19);
              v15 += 32 * v19;
              v18 = *v14;
            }

            while (v18 < -1);
          }

          if (v18 == 255)
          {
            v14 = 0;
          }

          if (*(v10 + 23) < 0)
          {
            operator delete(*v10);
          }

          absl::lts_20240722::container_internal::EraseMetaOnly((a1 + 360), v11 - *(a1 + 376));
        }

        else
        {
          *(v10 + 24) = v13;
          v16 = *v14;
          if (v16 <= -2)
          {
            do
            {
              v17 = __clz(__rbit64((*v14 | ~(*v14 >> 7)) & 0x101010101010101)) >> 3;
              v14 = (v14 + v17);
              v15 += 32 * v17;
            }

            while (*v14 < -1);
            v16 = *v14;
          }

          if (v16 == 255)
          {
            break;
          }
        }

        v11 = v14;
        v10 = v15;
      }

      while (v14);
    }

    if (*(a1 + 410) == 1)
    {
      operations_research::glop::SparseMatrix::DeleteColumns((a1 + 32), a2);
    }

    if (v20)
    {
      v21 = v20;
      operator delete(v20);
    }
  }
}

void sub_23CC69064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::glop::LinearProgram::IsValid(operations_research::glop::LinearProgram *this, double a2)
{
  v2 = fabs(*(this + 49));
  if ((*(this + 49) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v2 <= a2)
  {
    v4 = fabs(*(this + 50));
    v5 = *(this + 50) & 0x7FFFFFFFFFFFFFFFLL;
    if (v5 > 0x7FF0000000000000 || v5 == 0x7FF0000000000000)
    {
      v7 = 1;
    }

    else
    {
      v7 = v5 == 0;
      *(this + 50);
    }

    if (!v7 && v4 <= a2)
    {
      v10 = -1431655765 * ((*(this + 1) - *this) >> 4);
      if (v10 < 1)
      {
LABEL_55:
        v31 = *(this + 11);
        v32 = *(this + 8);
        v33 = *(this + 9) - v32;
        if (((v33 ^ (*(this + 12) - v31)) & 0x7FFFFFFF8) == 0)
        {
          if ((v33 >> 3) < 1)
          {
            return 1;
          }

          v34 = (v33 >> 3) & 0x7FFFFFFF;
          result = 1;
          while (1)
          {
            v35 = *v32;
            v36 = *v31;
            if (*v32 == INFINITY && v36 == INFINITY)
            {
              break;
            }

            v38 = v35 != -INFINITY;
            if (v36 != -INFINITY)
            {
              v38 = 1;
            }

            v39 = v35 > v36 || !v38;
            if (v39 || (*&v35 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && fabs(v35) > a2 || (*&v36 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && fabs(v36) > a2)
            {
              break;
            }

            ++v31;
            ++v32;
            if (!--v34)
            {
              return result;
            }
          }
        }
      }

      else
      {
        v11 = 0;
        v12 = v10 & 0x7FFFFFFF;
        while (1)
        {
          v13 = 8 * v11;
          v14 = *(*(this + 20) + v13);
          v15 = *(*(this + 23) + v13);
          if (v14 == INFINITY && v15 == INFINITY)
          {
            break;
          }

          v17 = v14 != -INFINITY;
          if (v15 != -INFINITY)
          {
            v17 = 1;
          }

          if (v14 > v15 || !v17)
          {
            break;
          }

          v19 = fabs(v14);
          if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v19 > a2)
          {
            break;
          }

          v21 = fabs(v15);
          if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v21 > a2)
          {
            break;
          }

          v23 = *(*(this + 17) + 8 * v11);
          v24 = fabs(v23);
          if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v24 > a2)
          {
            break;
          }

          v26 = *this + 48 * v11;
          v27 = *(v26 + 8);
          if (v27 >= 1)
          {
            v28 = *(v26 + 32);
            do
            {
              v29 = fabs(*v28);
              if ((*v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v29 > a2)
              {
                return 0;
              }

              ++v28;
            }

            while (--v27);
          }

          if (++v11 == v12)
          {
            goto LABEL_55;
          }
        }
      }
    }
  }

  return 0;
}

BOOL operations_research::glop::LinearProgram::IsInEquationForm(operations_research::glop::LinearProgram *this, const operations_research::glop::SparseMatrix *a2)
{
  v2 = *(this + 6);
  if (v2 < 1)
  {
LABEL_6:
    if (v2 == -1431655765 * ((*(this + 1) - *this) >> 4) - *(this + 110))
    {
      return operations_research::glop::IsRightMostSquareMatrixIdentity(this, a2);
    }
  }

  else
  {
    v3 = 0;
    while (*(*(this + 8) + v3) == 0.0 && *(*(this + 11) + v3) == 0.0)
    {
      v3 += 8;
      if (8 * v2 == v3)
      {
        goto LABEL_6;
      }
    }
  }

  return 0;
}

void operations_research::glop::LinearProgram::RemoveNearZeroEntries(operations_research::glop::LinearProgram *this, double a2)
{
  v2 = *this;
  v3 = -1431655765 * ((*(this + 1) - *this) >> 4);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = *(this + 17);
    v8 = v3 & 0x7FFFFFFF;
    do
    {
      v9 = (v2 + 48 * v4);
      v10 = v9[1];
      if (v10 < 1)
      {
        v11 = 0;
      }

      else
      {
        v11 = 0;
        v12 = 0;
        v13 = v9[4];
        do
        {
          v14 = *(v13 + 8 * v12);
          if (fabs(v14) > a2)
          {
            *(v9[3] + 4 * v11) = *(v9[3] + 4 * v12);
            *(v13 + 8 * v11++) = v14;
          }

          ++v12;
        }

        while (v10 != v12);
      }

      v9[1] = v11;
      if (fabs(*(v7 + 8 * v4)) <= a2)
      {
        *(v7 + 8 * v4) = 0;
        ++v5;
      }

      v6 = v10 + v6 - v11;
      ++v4;
    }

    while (v4 != v8);
    if (v6 > 0)
    {
      *(this + 410) = 0;
      if (dword_2810C0A78 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&_MergedGlobals_25, dword_2810C0A78))
      {
        v20 = v5;
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v21, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/lp_data/lp_data.cc", 1574);
        v15 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v21, 1);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v15, "Removed ", 8uLL);
        v22 = v6;
        v16 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v15, &v22);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v16, " matrix entries.", 0x10uLL);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v21);
        v5 = v20;
      }
    }

    if (v5 >= 1 && dword_2810C0A90 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0A88, dword_2810C0A90))
    {
      v17 = v5;
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v21, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/lp_data/lp_data.cc", 1577);
      v18 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v21, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v18, "Removed ", 8uLL);
      v22 = v17;
      v19 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v18, &v22);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v19, " objective coefficients.", 0x18uLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v21);
    }
  }
}

void sub_23CC69594(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CC695A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v5 = __str;
  v7 = *(a1 + 16);
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = *(a1 + 8);
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v8);
        v11 = *a1;
      }

      *(a1 + 8) = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      a4 = v9;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v19 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v20 = 2 * v19;
      if (2 * v19 <= a4)
      {
        v20 = a4;
      }

      if (v19 >= 0x555555555555555)
      {
        v21 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v21 = v20;
      }

      if (v21 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v13 = *(a1 + 8);
  v14 = v13 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v13 - v8) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8++, v5++);
      }

      while (v5 != a3);
      v13 = *(a1 + 8);
    }

    while (v13 != v8)
    {
      v18 = *(v13 - 1);
      v13 -= 3;
      if (v18 < 0)
      {
        operator delete(*v13);
      }
    }

    *(a1 + 8) = v8;
  }

  else
  {
    v15 = (__str + v14);
    if (v13 != v8)
    {
      do
      {
        std::string::operator=(v8++, v5++);
        v14 -= 24;
      }

      while (v14);
      v13 = *(a1 + 8);
    }

    v22 = v13;
    v16 = v13;
    if (v15 != a3)
    {
      v16 = v13;
      do
      {
        while ((SHIBYTE(v15->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          v17 = *&v15->__r_.__value_.__l.__data_;
          v16->__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
          *&v16->__r_.__value_.__l.__data_ = v17;
          ++v16;
          ++v15;
          v22 = v16;
          if (v15 == a3)
          {
            goto LABEL_17;
          }
        }

        std::string::__init_copy_ctor_external(v16, v15->__r_.__value_.__l.__data_, v15->__r_.__value_.__l.__size_);
        ++v15;
        v16 = ++v22;
      }

      while (v15 != a3);
    }

LABEL_17:
    *(a1 + 8) = v16;
  }
}

void sub_23CC6988C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_23CC698A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>>>>::transfer_slot_fn(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  *(a2 + 16) = *(a3 + 2);
  *a2 = v3;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  *(a2 + 24) = *(a3 + 6);
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v3 = *a1;
  v4 = *(a1 + 8) & 1;
  v5 = 0;
  v2 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,32ul,false,false,8ul>(&v2, a1);
}

uint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>>>>::resize_impl(absl::lts_20240722::container_internal::CommonFields &,unsigned long,absl::lts_20240722::container_internal::HashtablezInfoHandle)::{lambda(absl::lts_20240722::container_internal::map_slot_type<std::string,operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>> *)#1}::operator()(uint64_t a1, absl::lts_20240722::hash_internal::MixingHashState *a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  v5 = a2;
  v7 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v8 = v7;
  }

  v9 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, a2, v8, a4, a5);
  v10 = (((v9 + v8) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v9 + v8));
  v11 = *(a1 + 8);
  v12 = v11[2];
  v13 = *v11;
  v14 = ((v10 >> 7) ^ (v12 >> 12)) & v13;
  if (*(v12 + v14) >= -1)
  {
    v15 = 0;
    for (i = *(v12 + v14) & ~(*(v12 + v14) << 7) & 0x8080808080808080; !i; i = *(v12 + v14) & ~(*(v12 + v14) << 7) & 0x8080808080808080)
    {
      v15 += 8;
      v14 = (v15 + v14) & v13;
    }

    v14 = (v14 + (__clz(__rbit64(i)) >> 3)) & v13;
  }

  else
  {
    v15 = 0;
  }

  v17 = v10 & 0x7F;
  *(v12 + v14) = v17;
  *(v12 + ((v14 - 7) & v13) + (v13 & 7)) = v17;
  v18 = **(a1 + 16) + 32 * v14;
  v19 = *v5;
  *(v18 + 16) = *(v5 + 2);
  *v18 = v19;
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  *v5 = 0;
  *(v18 + 24) = *(v5 + 6);
  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  return v15;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>>>::transfer_slot_fn(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  *(a2 + 16) = *(a3 + 2);
  *a2 = v3;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  *(a2 + 24) = *(a3 + 6);
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v3 = *a1;
  v4 = *(a1 + 8) & 1;
  v5 = 0;
  v2 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,32ul,false,false,8ul>(&v2, a1);
}

void std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = v3 + 24;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v8 = v7 + 1;
  if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  if (2 * v9 > v8)
  {
    v8 = 2 * v9;
  }

  if (v9 >= 0x555555555555555)
  {
    v10 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    if (v10 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v11 = 24 * v7;
  *v11 = *a2;
  *(v11 + 16) = *(a2 + 2);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v6 = 24 * v7 + 24;
  v12 = *a1;
  v13 = *(a1 + 8) - *a1;
  v14 = v11 - v13;
  memcpy((v11 - v13), *a1, v13);
  *a1 = v14;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v12)
  {
    goto LABEL_3;
  }

  operator delete(v12);
  *(a1 + 8) = v6;
}

void operations_research::glop::Scale(operations_research::glop::SparseMatrix *a1, operations_research::glop::SparseMatrixScaler *this, int a3)
{
  operations_research::glop::SparseMatrixScaler::Init(this, a1);
  operations_research::glop::SparseMatrixScaler::Scale(this, a3);
  operations_research::glop::SparseMatrixScaler::ScaleRowVector(this, 0, a1 + 17);
  operations_research::glop::SparseMatrixScaler::ScaleRowVector(this, 1, a1 + 23);
  operations_research::glop::SparseMatrixScaler::ScaleRowVector(this, 1, a1 + 20);
  operations_research::glop::SparseMatrixScaler::ScaleColumnVector(this, 0, a1 + 11);
  operations_research::glop::SparseMatrixScaler::ScaleColumnVector(this, 0, a1 + 8);
  *(a1 + 410) = 0;
}

void operations_research::glop::LpScalingHelper::Scale(operations_research::glop::LpScalingHelper *this, operations_research::glop::LinearProgram *a2)
{
  operations_research::glop::GlopParameters::GlopParameters(v4, 0);
  operations_research::glop::LpScalingHelper::Scale(this, v4, a2);
  operations_research::glop::GlopParameters::~GlopParameters(v4);
}

void sub_23CC69F80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  operations_research::glop::GlopParameters::~GlopParameters(va);
  _Unwind_Resume(a1);
}

double operations_research::glop::LpScalingHelper::Scale(operations_research::glop::LpScalingHelper *this, const operations_research::glop::GlopParameters *a2, operations_research::glop::LinearProgram *a3)
{
  operations_research::glop::SparseMatrixScaler::Clear(this);
  v6 = *(a2 + 63);
  operations_research::glop::SparseMatrixScaler::Init(this, a3);
  operations_research::glop::SparseMatrixScaler::Scale(this, v6);
  operations_research::glop::SparseMatrixScaler::ScaleRowVector(this, 0, a3 + 17);
  operations_research::glop::SparseMatrixScaler::ScaleRowVector(this, 1, a3 + 23);
  operations_research::glop::SparseMatrixScaler::ScaleRowVector(this, 1, a3 + 20);
  operations_research::glop::SparseMatrixScaler::ScaleColumnVector(this, 0, a3 + 11);
  operations_research::glop::SparseMatrixScaler::ScaleColumnVector(this, 0, a3 + 8);
  *(a3 + 410) = 0;
  *(this + 7) = 1.0 / operations_research::glop::LinearProgram::ScaleBounds(a3);
  operations_research::glop::LinearProgram::ScaleObjective(a3, *(a2 + 73));
  result = 1.0 / v7;
  *(this + 8) = result;
  return result;
}

std::string *operations_research::glop::StringifyRational@<X0>(std::string *this@<X0>, double a2@<D0>, double a3@<D1>, uint64_t a4@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 == INFINITY)
  {
    *(a4 + 23) = 3;
    *a4 = 6712937;
  }

  else if (a2 == -INFINITY)
  {
    *(a4 + 23) = 4;
    strcpy(a4, "-inf");
  }

  else
  {
    v5 = operations_research::RationalApproximation(this, a2, a3);
    if (v6 == 1)
    {
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = 0;
      *(a4 + 23) = 22;
      v8 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v5, a4, v7);
      this = std::string::erase(a4, &v8[-a4], 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      v9 = v6;
      v15[0] = v16;
      v15[1] = (absl::lts_20240722::numbers_internal::FastIntToBuffer(v5, v16, v7) - v16);
      v14[0] = "/";
      v14[1] = 1;
      v12[0] = v13;
      v12[1] = absl::lts_20240722::numbers_internal::FastIntToBuffer(v9, v13, v10) - v13;
      this = absl::lts_20240722::StrCat(v15, v14, v12, a4);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_23CC6A2DC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

std::string *operations_research::glop::Stringify@<X0>(std::string *this@<X0>, double a2@<D0>, void *a3@<X8>)
{
  v6[2] = *MEMORY[0x277D85DE8];
  if (this)
  {
    v3 = *MEMORY[0x277D85DE8];

    return operations_research::glop::StringifyRational(this, a2, 2.22044605e-16, a3);
  }

  else
  {
    *v6 = a2;
    v6[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
    result = absl::lts_20240722::str_format_internal::FormatPack("%.16g", 5, v6, 1uLL, a3);
    v5 = *MEMORY[0x277D85DE8];
  }

  return result;
}

void operations_research::glop::StringifyMonomial(std::string *a1@<X0>, std::string::size_type size@<X1>, int a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v30 = *MEMORY[0x277D85DE8];
  if (a5 == 0.0)
  {
    *(a4 + 23) = 0;
    *a4 = 0;
    goto LABEL_3;
  }

  p_p = a1;
  if (a5 > 0.0)
  {
    v27[0] = " + ";
    v27[1] = 3;
    if (a5 != 1.0)
    {
      if (a3)
      {
        operations_research::glop::StringifyRational(a1, a5, 2.22044605e-16, &v14);
      }

      else
      {
        v28 = a5;
        v29 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
        absl::lts_20240722::str_format_internal::FormatPack("%.16g", 5, &v28, 1uLL, &v14);
      }

      v10 = v16;
      v11 = &v14;
      if ((v16 & 0x80u) != 0)
      {
        v11 = v14;
        v10 = v15;
      }

      v25[0] = v11;
      v25[1] = v10;
      v24[0] = " ";
      v24[1] = 1;
      v23[0] = p_p;
      v23[1] = size;
      absl::lts_20240722::StrCat(v25, v24, v23, &__p);
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
    }

    v26[0] = p_p;
    v26[1] = size;
    absl::lts_20240722::StrCat(v27, v26, a4);
    if (a5 == 1.0)
    {
      goto LABEL_3;
    }

LABEL_32:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v16 & 0x80000000) == 0)
      {
        goto LABEL_3;
      }
    }

    else if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

    operator delete(v14);
    goto LABEL_3;
  }

  v22[0] = " - ";
  v22[1] = 3;
  if (a5 != -1.0)
  {
    if (a3)
    {
      operations_research::glop::StringifyRational(a1, -a5, 2.22044605e-16, &v14);
    }

    else
    {
      v28 = -a5;
      v29 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
      absl::lts_20240722::str_format_internal::FormatPack("%.16g", 5, &v28, 1uLL, &v14);
    }

    v12 = v16;
    v13 = &v14;
    if ((v16 & 0x80u) != 0)
    {
      v13 = v14;
      v12 = v15;
    }

    v20[0] = v13;
    v20[1] = v12;
    v19[0] = " ";
    v19[1] = 1;
    v18[0] = p_p;
    v18[1] = size;
    absl::lts_20240722::StrCat(v20, v19, v18, &__p);
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
  }

  v21[0] = p_p;
  v21[1] = size;
  absl::lts_20240722::StrCat(v22, v21, a4);
  if (a5 != -1.0)
  {
    goto LABEL_32;
  }

LABEL_3:
  v6 = *MEMORY[0x277D85DE8];
}

void sub_23CC6A64C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *operations_research::glop::GetProblemStatusString@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  if (result > 5)
  {
    if (result <= 8)
    {
      if (result == 6)
      {
        *(a2 + 23) = 4;
        strcpy(a2, "INIT");
        return result;
      }

      if (result != 7)
      {
        *(a2 + 23) = 13;
        strcpy(a2, "DUAL_FEASIBLE");
        return result;
      }

      v2 = "PRIMAL_FEASIBLE";
      goto LABEL_26;
    }

    switch(result)
    {
      case 9:
        *(a2 + 23) = 8;
        strcpy(a2, "ABNORMAL");
        return result;
      case 0xA:
        v2 = "INVALID_PROBLEM";
        goto LABEL_26;
      case 0xB:
        *(a2 + 23) = 9;
        strcpy(a2, "IMPRECISE");
        return result;
    }

    goto LABEL_27;
  }

  if (result <= 2)
  {
    switch(result)
    {
      case 0:
        *(a2 + 23) = 7;
        strcpy(a2, "OPTIMAL");
        return result;
      case 1:
        *(a2 + 23) = 17;
        strcpy(a2, "PRIMAL_INFEASIBLE");
        return result;
      case 2:
        v2 = "DUAL_INFEASIBLE";
LABEL_26:
        *(a2 + 23) = 15;
        *a2 = *v2;
        *(a2 + 7) = *(v2 + 7);
        *(a2 + 15) = 0;
        return result;
    }

LABEL_27:
    v3 = result;
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v5, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/lp_data/lp_types.cc", 52, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v5, "Invalid ProblemStatus ", 0x16uLL);
    v6 = v3;
    absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v5, &v6);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v5);
    return std::string::basic_string[abi:ne200100]<0>(a2, "UNKNOWN ProblemStatus");
  }

  if (result == 3)
  {
    operator new();
  }

  if (result == 4)
  {
    *(a2 + 23) = 16;
    strcpy(a2, "PRIMAL_UNBOUNDED");
  }

  else
  {
    *(a2 + 23) = 14;
    strcpy(a2, "DUAL_UNBOUNDED");
  }

  return result;
}

void sub_23CC6A9C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

_BYTE *operations_research::glop::GetVariableTypeString@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  if (result > 1)
  {
    if (result != 2)
    {
      if (result == 3)
      {
        operator new();
      }

      if (result == 4)
      {
        *(a2 + 23) = 14;
        strcpy(a2, "FIXED_VARIABLE");
        return result;
      }

      goto LABEL_13;
    }

    v2 = "UPPER_BOUNDED";
LABEL_11:
    *(a2 + 23) = 13;
    *a2 = *v2;
    *(a2 + 5) = *(v2 + 5);
    *(a2 + 13) = 0;
    return result;
  }

  if (!result)
  {
    v2 = "UNCONSTRAINED";
    goto LABEL_11;
  }

  if (result == 1)
  {
    v2 = "LOWER_BOUNDED";
    goto LABEL_11;
  }

LABEL_13:
  v3 = result;
  absl::lts_20240722::log_internal::LogMessage::LogMessage(v5, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/lp_data/lp_types.cc", 71, 2);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v5, "Invalid VariableType ", 0x15uLL);
  v6 = v3;
  absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v5, &v6);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(v5);
  return std::string::basic_string[abi:ne200100]<0>(a2, "UNKNOWN VariableType");
}

void sub_23CC6AB68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

_BYTE *operations_research::glop::GetVariableStatusString@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  if (result <= 1)
  {
    if (!result)
    {
      *(a2 + 23) = 5;
      strcpy(a2, "BASIC");
      return result;
    }

    if (result == 1)
    {
      *(a2 + 23) = 11;
      strcpy(a2, "FIXED_VALUE");
      return result;
    }

    goto LABEL_13;
  }

  switch(result)
  {
    case 2:
      v2 = "AT_LOWER_BOUND";
LABEL_12:
      *(a2 + 23) = 14;
      *a2 = *v2;
      *(a2 + 6) = *(v2 + 6);
      *(a2 + 14) = 0;
      return result;
    case 3:
      v2 = "AT_UPPER_BOUND";
      goto LABEL_12;
    case 4:
      *(a2 + 23) = 4;
      strcpy(a2, "FREE");
      return result;
  }

LABEL_13:
  v3 = result;
  absl::lts_20240722::log_internal::LogMessage::LogMessage(v5, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/lp_data/lp_types.cc", 90, 2);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v5, "Invalid VariableStatus ", 0x17uLL);
  v6 = v3;
  absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v5, &v6);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(v5);
  return std::string::basic_string[abi:ne200100]<0>(a2, "UNKNOWN VariableStatus");
}

void sub_23CC6ACF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

_BYTE *operations_research::glop::GetConstraintStatusString@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  if (result <= 1)
  {
    if (!result)
    {
      *(a2 + 23) = 5;
      strcpy(a2, "BASIC");
      return result;
    }

    if (result == 1)
    {
      *(a2 + 23) = 11;
      strcpy(a2, "FIXED_VALUE");
      return result;
    }

    goto LABEL_13;
  }

  switch(result)
  {
    case 2:
      v2 = "AT_LOWER_BOUND";
LABEL_12:
      *(a2 + 23) = 14;
      *a2 = *v2;
      *(a2 + 6) = *(v2 + 6);
      *(a2 + 14) = 0;
      return result;
    case 3:
      v2 = "AT_UPPER_BOUND";
      goto LABEL_12;
    case 4:
      *(a2 + 23) = 4;
      strcpy(a2, "FREE");
      return result;
  }

LABEL_13:
  v3 = result;
  absl::lts_20240722::log_internal::LogMessage::LogMessage(v5, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/lp_data/lp_types.cc", 109, 2);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v5, "Invalid ConstraintStatus ", 0x19uLL);
  v6 = v3;
  absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v5, &v6);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(v5);
  return std::string::basic_string[abi:ne200100]<0>(a2, "UNKNOWN ConstraintStatus");
}

void sub_23CC6AE88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::glop::VariableToConstraintStatus(uint64_t result)
{
  if (result >= 5)
  {
    v1 = result;
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v2, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/lp_data/lp_types.cc", 128, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v2, "Invalid VariableStatus ", 0x17uLL);
    v3 = v1;
    absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v2, &v3);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v2);
    return 4;
  }

  return result;
}

void sub_23CC6AF24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double operations_research::glop::SquaredNorm(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 < 1)
  {
    return 0.0;
  }

  v2 = a1[2];
  if (v1 < 4)
  {
    v3 = 0;
    result = 0.0;
LABEL_8:
    v9 = v1 - v3;
    v10 = &v2->f64[v3];
    do
    {
      v11 = *v10++;
      result = result + v11 * v11;
      --v9;
    }

    while (v9);
    return result;
  }

  v3 = v1 & 0x7FFFFFFFFFFFFFFCLL;
  v5 = v2 + 1;
  result = 0.0;
  v6 = v1 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v7 = vmulq_f64(v5[-1], v5[-1]);
    v8 = vmulq_f64(*v5, *v5);
    result = result + v7.f64[0] + v7.f64[1] + v8.f64[0] + v8.f64[1];
    v5 += 2;
    v6 -= 4;
  }

  while (v6);
  if (v1 != v3)
  {
    goto LABEL_8;
  }

  return result;
}

double operations_research::glop::SquaredNorm(operations_research::glop *this, const operations_research::glop::ScatteredColumn *a2)
{
  v3 = *(this + 4);
  v2 = *(this + 5);
  v4 = *this;
  if (v3 == v2)
  {
    v5 = (*(this + 1) - v4) >> 3;
LABEL_6:
    v8 = (v5 - 3);
    if (v8 < 1)
    {
      v12 = 0;
      result = 0.0;
      if (v5 <= 0)
      {
        return result;
      }

      goto LABEL_17;
    }

    if (v8 >= 5)
    {
      v13 = ((v8 - 1) >> 2) + 1;
      v9 = 4 * (v13 & 0x7FFFFFFFFFFFFFFELL);
      v14 = v4 + 2;
      v10 = 0uLL;
      v15 = v13 & 0x7FFFFFFFFFFFFFFELL;
      v11 = 0uLL;
      do
      {
        v16 = v14[-2];
        v17 = vmulq_f64(v14[-1], v14[-1]);
        v19 = *v14;
        v18 = v14[1];
        v14 += 4;
        v11 = vaddq_f64(vaddq_f64(v11, v17), vmulq_f64(v18, v18));
        v10 = vaddq_f64(vaddq_f64(v10, vmulq_f64(v16, v16)), vmulq_f64(v19, v19));
        v15 -= 2;
      }

      while (v15);
      if (v13 == (v13 & 0x7FFFFFFFFFFFFFFELL))
      {
LABEL_16:
        v12 = v5 & 0xFFFFFFFC;
        *&result = *&vaddq_f64(vaddq_f64(vaddq_f64(v10, vdupq_laneq_s64(v10, 1)), v11), vdupq_laneq_s64(v11, 1));
        if ((v5 & 0xFFFFFFFC) >= v5)
        {
          return result;
        }

LABEL_17:
        v21 = v12;
        result = result + v4->f64[v12] * v4->f64[v12];
        v22 = v12 | 1;
        if (v22 < v5)
        {
          result = result + v4->f64[v22] * v4->f64[v22];
          if ((v21 | 2) < v5)
          {
            return result + v4->f64[v21 | 2] * v4->f64[v21 | 2];
          }
        }

        return result;
      }
    }

    else
    {
      v9 = 0;
      v10 = 0uLL;
      v11 = 0uLL;
    }

    v20 = &v4[v9 / 2 + 1];
    do
    {
      v10 = vmlaq_f64(v10, v20[-1], v20[-1]);
      v11 = vmlaq_f64(v11, *v20, *v20);
      v9 += 4;
      v20 += 2;
    }

    while (v9 < v8);
    goto LABEL_16;
  }

  v5 = (*(this + 1) - v4) >> 3;
  if (v5 * 0.8 < ((v2 - v3) >> 2))
  {
    goto LABEL_6;
  }

  result = 0.0;
  if (&v2[-1].u8[4] == v3)
  {
    v7 = *(this + 4);
    do
    {
LABEL_23:
      v27 = v7->i32[0];
      v7 = (v7 + 4);
      result = result + v4->f64[v27] * v4->f64[v27];
    }

    while (v7 != v2);
    return result;
  }

  v23 = ((&v2[-1].u8[4] - v3) >> 2) + 1;
  v7 = (v3 + 4 * (v23 & 0x7FFFFFFFFFFFFFFELL));
  result = 0.0;
  v24 = v23 & 0x7FFFFFFFFFFFFFFELL;
  do
  {
    v25 = *v3++;
    v26 = vshrq_n_s64(vshll_n_s32(v25, 0x20uLL), 0x1DuLL);
    result = result + *(v4->f64 + v26.i64[0]) * *(v4->f64 + v26.i64[0]) + *(v4->f64 + v26.i64[1]) * *(v4->f64 + v26.i64[1]);
    v24 -= 2;
  }

  while (v24);
  if (v23 != (v23 & 0x7FFFFFFFFFFFFFFELL))
  {
    goto LABEL_23;
  }

  return result;
}

double operations_research::glop::PreciseSquaredNorm(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8) - *a1;
  if ((v2 >> 3) < 1)
  {
    return 0.0;
  }

  v3 = (v2 >> 3) & 0x7FFFFFFF;
  v4 = 0.0;
  v5 = 0.0;
  do
  {
    v6 = *v1++;
    v7 = v5 + v6 * v6;
    result = v4 + v7;
    v5 = v7 + v4 - (v4 + v7);
    v4 = result;
    --v3;
  }

  while (v3);
  return result;
}

double operations_research::glop::SquaredNormAndResetToZero(uint64_t a1, int a2)
{
  v2 = (a2 - 3);
  if (v2 >= 1)
  {
    if (v2 >= 0xD)
    {
      v9 = ((v2 - 1) >> 2) + 1;
      v3 = 4 * (v9 & 0x7FFFFFFFFFFFFFFCLL);
      v10 = a1 + 64;
      v4 = 0.0;
      v11 = v9 & 0x7FFFFFFFFFFFFFFCLL;
      v5 = 0.0;
      v6 = 0.0;
      v7 = 0.0;
      do
      {
        v12 = (v10 - 64);
        v23 = vld4q_f64(v12);
        v24 = vld4q_f64(v10);
        v13 = vmulq_f64(v23.val[0], v23.val[0]);
        v14 = vmulq_f64(v24.val[0], v24.val[0]);
        v15 = vmulq_f64(v23.val[1], v23.val[1]);
        v16 = vmulq_f64(v24.val[1], v24.val[1]);
        v17 = vmulq_f64(v23.val[2], v23.val[2]);
        v18 = vmulq_f64(v24.val[2], v24.val[2]);
        v23.val[0] = vmulq_f64(v23.val[3], v23.val[3]);
        v23.val[2] = vmulq_f64(v24.val[3], v24.val[3]);
        *(v10 - 32) = 0uLL;
        *(v10 - 16) = 0uLL;
        *(v10 - 64) = 0uLL;
        *(v10 - 48) = 0uLL;
        *(v10 + 32) = 0uLL;
        *(v10 + 48) = 0uLL;
        *v10 = 0uLL;
        *(v10 + 16) = 0uLL;
        v10 += 128;
        v4 = v4 + v23.val[0].f64[0] + v23.val[0].f64[1] + v23.val[2].f64[0] + v23.val[2].f64[1];
        v5 = v5 + v17.f64[0] + v17.f64[1] + v18.f64[0] + v18.f64[1];
        v6 = v6 + v15.f64[0] + v15.f64[1] + v16.f64[0] + v16.f64[1];
        v7 = v7 + v13.f64[0] + v13.f64[1] + v14.f64[0] + v14.f64[1];
        v11 -= 4;
      }

      while (v11);
      if (v9 == (v9 & 0x7FFFFFFFFFFFFFFCLL))
      {
LABEL_11:
        result = v7 + v6 + v5 + v4;
        if (v3 >= a2)
        {
          return result;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v3 = 0;
      v4 = 0.0;
      v5 = 0.0;
      v6 = 0.0;
      v7 = 0.0;
    }

    v19 = (a1 + 8 * v3 + 16);
    do
    {
      v7 = v7 + *(v19 - 2) * *(v19 - 2);
      v6 = v6 + *(v19 - 1) * *(v19 - 1);
      v5 = v5 + *v19 * *v19;
      v4 = v4 + v19[1] * v19[1];
      *(v19 - 1) = 0uLL;
      *v19 = 0uLL;
      v3 += 4;
      v19 += 4;
    }

    while (v3 < v2);
    goto LABEL_11;
  }

  LODWORD(v3) = 0;
  result = 0.0;
  if (a2 <= 0)
  {
    return result;
  }

LABEL_12:
  v20 = v3;
  result = result + *(a1 + 8 * v3) * *(a1 + 8 * v3);
  *(a1 + 8 * v3) = 0;
  v21 = v3 | 1;
  if (v21 < a2)
  {
    result = result + *(a1 + 8 * v21) * *(a1 + 8 * v21);
    *(a1 + 8 * v21) = 0;
    v22 = v20 | 2;
    if ((v20 | 2) < a2)
    {
      result = result + *(a1 + 8 * v22) * *(a1 + 8 * v22);
      *(a1 + 8 * v22) = 0;
    }
  }

  return result;
}

double operations_research::glop::InfinityNorm(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8) - *a1;
  if ((v2 >> 3) < 1)
  {
    return 0.0;
  }

  v3 = (v2 >> 3) & 0x7FFFFFFF;
  result = 0.0;
  do
  {
    v5 = *v1++;
    v6 = fabs(v5);
    if (result < v6)
    {
      result = v6;
    }

    --v3;
  }

  while (v3);
  return result;
}

{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 0.0;
  }

  v2 = *(a1 + 32);
  result = 0.0;
  do
  {
    v4 = *v2++;
    v5 = fabs(v4);
    if (result < v5)
    {
      result = v5;
    }

    --v1;
  }

  while (v1);
  return result;
}

double operations_research::glop::InfinityNorm(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 < 1)
  {
    return 0.0;
  }

  v2 = a1[2];
  result = 0.0;
  do
  {
    v4 = *v2++;
    v5 = fabs(v4);
    if (result < v5)
    {
      result = v5;
    }

    --v1;
  }

  while (v1);
  return result;
}

double operations_research::glop::RestrictedInfinityNorm(uint64_t *a1, uint64_t *a2, _DWORD *a3)
{
  v3 = *a1;
  if (*a1 < 1)
  {
    return 0.0;
  }

  v4 = a1[1];
  v5 = a1[2];
  result = 0.0;
  v7 = *a2;
  do
  {
    v9 = *v4++;
    v8 = v9;
    if ((*(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v9))
    {
      v10 = fabs(*v5);
      if (v10 > result)
      {
        *a3 = v8;
        result = v10;
      }
    }

    ++v5;
    --v3;
  }

  while (v3);
  return result;
}

uint64_t *operations_research::glop::SetSupportToFalse(uint64_t *result, void *a2)
{
  v2 = *result;
  if (*result >= 1)
  {
    v3 = result[1];
    v4 = result[2];
    do
    {
      if (*v4 != 0.0)
      {
        *(*a2 + ((*v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << *v3);
      }

      ++v4;
      ++v3;
      --v2;
    }

    while (v2);
  }

  return result;
}

BOOL operations_research::glop::IsDominated(uint64_t *a1, void *a2)
{
  v2 = *a1;
  if (*a1 < 1)
  {
    return 1;
  }

  v3 = a1[1];
  v4 = a1[2];
  if (fabs(*v4) > *(*a2 + 8 * *v3))
  {
    return 0;
  }

  v5 = 1;
  do
  {
    v6 = v5;
    if (v2 == v5)
    {
      break;
    }

    v7 = fabs(v4[v5]);
    v8 = *(*a2 + 8 * v3[v5++]);
  }

  while (v7 <= v8);
  return v6 >= v2;
}

double operations_research::glop::SparseMatrixScaler::SparseMatrixScaler(operations_research::glop::SparseMatrixScaler *this)
{
  *(this + 6) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

void operations_research::glop::SparseMatrixScaler::Init(operations_research::glop::SparseMatrixScaler *this, operations_research::glop::SparseMatrix *a2)
{
  *this = a2;
  v3 = *(a2 + 6);
  v13 = 0x3FF0000000000000;
  v6 = *(this + 1);
  v5 = *(this + 2);
  v4 = this + 8;
  v7 = (v5 - v6) >> 3;
  v8 = v3 >= v7;
  v9 = v3 - v7;
  if (v9 != 0 && v8)
  {
    std::vector<double>::__append(v4, v9, &v13);
    a2 = *this;
  }

  else if (!v8)
  {
    *(this + 2) = v6 + 8 * v3;
  }

  v10 = -1431655765 * ((*(a2 + 1) - *a2) >> 4);
  v13 = 0x3FF0000000000000;
  v11 = *(this + 4);
  v12 = (*(this + 5) - v11) >> 3;
  if (v10 <= v12)
  {
    if (v10 < v12)
    {
      *(this + 5) = v11 + 8 * v10;
    }
  }

  else
  {
    std::vector<double>::__append(this + 32, v10 - v12, &v13);
  }
}

void *operations_research::glop::SparseMatrixScaler::Clear(void *this)
{
  *this = 0;
  this[2] = this[1];
  this[5] = this[4];
  return this;
}

double operations_research::glop::SparseMatrixScaler::RowUnscalingFactor(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  result = 1.0;
  if (a2 < ((*(a1 + 16) - v2) >> 3))
  {
    return *(v2 + 8 * a2);
  }

  return result;
}

double operations_research::glop::SparseMatrixScaler::ColUnscalingFactor(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  result = 1.0;
  if (a2 < ((*(a1 + 40) - v2) >> 3))
  {
    return *(v2 + 8 * a2);
  }

  return result;
}

uint64_t operations_research::glop::SparseMatrixScaler::DebugInformationString@<X0>(operations_research::glop::SparseMatrix **this@<X0>, void *a2@<X8>)
{
  v51[16] = *MEMORY[0x277D85DE8];
  v49 = 0.0;
  v50 = 0.0;
  operations_research::glop::SparseMatrix::ComputeMinAndMaxMagnitudes(*this, &v49, &v50);
  v4 = **this;
  v5 = -1431655765 * ((*(*this + 1) - v4) >> 4);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = v5 & 0x7FFFFFFF;
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    do
    {
      v11 = v4 + 48 * v6;
      v12 = *(v11 + 8);
      if (v12 >= 1)
      {
        v13 = *(v11 + 32);
        do
        {
          v14 = *v13++;
          v8 = v8 + v14 * v14;
          v9 = v9 + fabs(v14);
          v10 = v10 + 1.0;
          --v12;
        }

        while (v12);
      }

      ++v6;
    }

    while (v6 != v7);
    if (v10 != 0.0)
    {
      v15 = (v8 - v9 * v9 / v10) / v10;
      v16 = this[1];
      v17 = this[2];
      if (v16 != v17)
      {
        goto LABEL_10;
      }

LABEL_39:
      v22 = v16;
      v30 = v49;
      v29 = v50;
      v31 = this[4];
      v32 = this[5];
      v33 = v31 + 1;
      if (v31 == v32 || v33 == v32)
      {
        goto LABEL_24;
      }

      goto LABEL_29;
    }
  }

  v15 = 0.0;
  v16 = this[1];
  v17 = this[2];
  if (v16 == v17)
  {
    goto LABEL_39;
  }

LABEL_10:
  v18 = v16 + 1;
  if (v16 + 1 != v17)
  {
    v19 = *v16;
    v20 = *v16;
    v21 = v16 + 1;
    v22 = v16;
    v23 = v16 + 1;
    do
    {
      v24 = *v23++;
      v25 = v24;
      if (v24 < v20)
      {
        v20 = v25;
        v22 = v21;
      }

      v21 = v23;
    }

    while (v23 != v17);
    v26 = v16 + 1;
    do
    {
      v27 = *v26++;
      v28 = v27;
      if (v19 < v27)
      {
        v19 = v28;
        v16 = v18;
      }

      v18 = v26;
    }

    while (v26 != v17);
    v30 = v49;
    v29 = v50;
    v31 = this[4];
    v32 = this[5];
    v33 = v31 + 1;
    if (v31 != v32 && v33 != v32)
    {
      goto LABEL_29;
    }

LABEL_24:
    v35 = v31;
    goto LABEL_37;
  }

  v22 = v16;
  v30 = v49;
  v29 = v50;
  v31 = this[4];
  v32 = this[5];
  v33 = v31 + 1;
  if (v31 == v32 || v33 == v32)
  {
    goto LABEL_24;
  }

LABEL_29:
  v37 = *v31;
  v38 = *v31;
  v39 = v33;
  v35 = v31;
  v40 = v33;
  do
  {
    v41 = *v40++;
    v42 = v41;
    if (v41 < v38)
    {
      v38 = v42;
      v35 = v39;
    }

    v39 = v40;
  }

  while (v40 != v32);
  v43 = v33;
  do
  {
    v44 = *v43++;
    v45 = v44;
    if (v37 < v44)
    {
      v37 = v45;
      v31 = v33;
    }

    v33 = v43;
  }

  while (v43 != v32);
LABEL_37:
  *v51 = v30;
  v51[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  *&v51[2] = v29;
  v51[3] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  *&v51[4] = v29 / v30;
  v51[5] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  *&v51[6] = v15;
  v51[7] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  *&v51[8] = *v22;
  v51[9] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  *&v51[10] = *v16;
  v51[11] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  *&v51[12] = *v35;
  v51[13] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  *&v51[14] = *v31;
  v51[15] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  result = absl::lts_20240722::str_format_internal::FormatPack("Min magnitude = %g, max magnitude = %g\nDynamic range = %g\nVariance = %g\nMinimum row scale = %g, maximum row scale = %g\nMinimum col scale = %g, maximum col scale = %g\n", 166, v51, 8uLL, a2);
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

void operations_research::glop::SparseMatrixScaler::Scale(operations_research::glop::SparseMatrix **a1, int a2)
{
  v70 = 0.0;
  v71 = 0.0;
  operations_research::glop::SparseMatrix::ComputeMinAndMaxMagnitudes(*a1, &v70, &v71);
  if (v70 == 0.0)
  {
    return;
  }

  if (dword_2810C0AA8 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&_MergedGlobals_26, dword_2810C0AA8))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v69, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/lp_data/matrix_scaler.cc", 115);
    v59 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v69, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v59, "Before scaling:\n", 0x10uLL);
    operations_research::glop::SparseMatrixScaler::DebugInformationString(a1, v68);
    absl::lts_20240722::log_internal::LogMessage::operator<<(v59, v68);
    operations_research::sat::BruteForceOrthogonalPacking(v68, v69);
  }

  if (a2 == 2)
  {
    operations_research::glop::SparseMatrixScaler::LPScale(a1);
  }

  if (v71 / v70 >= 1.0e20)
  {
    goto LABEL_50;
  }

  for (i = 0; i != 4; ++i)
  {
    HIDWORD(v64) = operations_research::glop::SparseMatrixScaler::ScaleRowsGeometrically(a1);
    v5 = **a1;
    v6 = 0xAAAAAAAAAAAAAAABLL * ((*(*a1 + 1) - v5) >> 4);
    if (v6 <= 0)
    {
      LODWORD(v64) = 0;
      v34 = 1;
      v35 = dword_2810C0AD8;
      if (dword_2810C0AD8 >= 1)
      {
        goto LABEL_44;
      }

      goto LABEL_39;
    }

    v7 = 0;
    v8 = 0;
    v9 = v6 & 0x7FFFFFFF;
    do
    {
      v10 = v5 + 48 * v7;
      v11 = *(v10 + 8);
      if (v11 >= 1)
      {
        v12 = 0;
        v13 = *(v10 + 32);
        v14 = 0.0;
        v15 = INFINITY;
        do
        {
          v16 = v13->f64[v12];
          v17 = fabs(v16);
          if (v16 != 0.0 && v17 < v15)
          {
            v15 = v17;
          }

          if (v16 != 0.0 && v14 < v17)
          {
            v14 = v17;
          }

          ++v12;
        }

        while (v11 != v12);
        if (v14 != 0.0)
        {
          v18 = sqrt(v15 * v14);
          *(a1[4] + v7) = v18 * *(a1[4] + v7);
          if (v11 >= 4)
          {
            v19 = v11 & 0x7FFFFFFFFFFFFFFCLL;
            v20 = vdupq_lane_s64(*&v18, 0);
            v21 = v13 + 1;
            v22 = v11 & 0x7FFFFFFFFFFFFFFCLL;
            do
            {
              v23 = vdivq_f64(*v21, v20);
              v21[-1] = vdivq_f64(v21[-1], v20);
              *v21 = v23;
              v21 += 2;
              v22 -= 4;
            }

            while (v22);
            if (v11 == v19)
            {
              goto LABEL_9;
            }
          }

          else
          {
            v19 = 0;
          }

          v24 = v11 - v19;
          v25 = &v13->f64[v19];
          do
          {
            *v25 = *v25 / v18;
            ++v25;
            --v24;
          }

          while (v24);
LABEL_9:
          ++v8;
        }
      }

      ++v7;
    }

    while (v7 != v9);
    v26 = 0;
    LODWORD(v64) = v8;
    v27 = 0.0;
    v28 = 0.0;
    v29 = 0.0;
    do
    {
      v30 = v5 + 48 * v26;
      v31 = *(v30 + 8);
      if (v31 >= 1)
      {
        v32 = *(v30 + 32);
        do
        {
          v33 = *v32++;
          v27 = v27 + v33 * v33;
          v28 = v28 + fabs(v33);
          v29 = v29 + 1.0;
          --v31;
        }

        while (v31);
      }

      ++v26;
    }

    while (v26 != v9);
    if (v29 == 0.0)
    {
      v34 = 1;
      v35 = dword_2810C0AD8;
      if (dword_2810C0AD8 >= 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v34 = (v27 - v28 * v28 / v29) / v29 < 10.0;
      v35 = dword_2810C0AD8;
      if (dword_2810C0AD8 >= 1)
      {
LABEL_44:
        if (absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0AD0, v35))
        {
          v36 = i;
          absl::lts_20240722::log_internal::LogMessage::LogMessage(&__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/lp_data/matrix_scaler.cc", 136);
          v37 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&__p, 1);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v37, "Geometric scaling iteration ", 0x1CuLL);
          v65[0] = v36;
          v38 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v37, v65);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v38, ". Rows scaled = ", 0x10uLL);
          v39 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v38, &v64 + 1);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v39, ", columns scaled = ", 0x13uLL);
          v40 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v39, &v64);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v40, "\n", 1uLL);
          absl::lts_20240722::log_internal::LogMessage::~LogMessage(&__p);
          i = v36;
        }
      }
    }

LABEL_39:
    if (dword_2810C0AF0 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0AE8, dword_2810C0AF0))
    {
      v41 = i;
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v65, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/lp_data/matrix_scaler.cc", 139);
      v42 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v65, 1);
      operations_research::glop::SparseMatrixScaler::DebugInformationString(a1, &__p);
      absl::lts_20240722::log_internal::LogMessage::operator<<(v42, &__p);
      if (v67 < 0)
      {
        operator delete(__p);
      }

      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v65);
      i = v41;
    }

    if (v34)
    {
      break;
    }

    if (!v64)
    {
      break;
    }
  }

LABEL_50:
  HIDWORD(v64) = operations_research::glop::SparseMatrixScaler::EquilibrateRows(a1);
  v43 = 0xAAAAAAAAAAAAAAABLL * ((*(*a1 + 1) - **a1) >> 4);
  if (v43 >= 1)
  {
    v44 = 0;
    v45 = 0;
    v46 = v43 & 0x7FFFFFFF;
    while (2)
    {
      *&v47 = operations_research::glop::InfinityNorm(**a1 + 48 * v44);
      if (*&v47 == 0.0 || *&v47 == 1.0)
      {
        goto LABEL_53;
      }

      *(a1[4] + v44) = *&v47 * *(a1[4] + v44);
      v49 = **a1 + 48 * v44;
      v50 = *(v49 + 8);
      if (v50 >= 1)
      {
        v51 = *(v49 + 32);
        if (v50 < 4)
        {
          v52 = 0;
          goto LABEL_64;
        }

        v52 = v50 & 0x7FFFFFFFFFFFFFFCLL;
        v53 = vdupq_lane_s64(v47, 0);
        v54 = v51 + 1;
        v55 = v50 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v56 = vdivq_f64(*v54, v53);
          v54[-1] = vdivq_f64(v54[-1], v53);
          *v54 = v56;
          v54 += 2;
          v55 -= 4;
        }

        while (v55);
        if (v50 != v52)
        {
LABEL_64:
          v57 = v50 - v52;
          v58 = &v51->f64[v52];
          do
          {
            *v58 = *v58 / *&v47;
            ++v58;
            --v57;
          }

          while (v57);
        }
      }

      ++v45;
LABEL_53:
      if (++v44 == v46)
      {
        goto LABEL_68;
      }

      continue;
    }
  }

  v45 = 0;
LABEL_68:
  LODWORD(v64) = v45;
  if (dword_2810C0B08 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0B00, dword_2810C0B08))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(&__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/lp_data/matrix_scaler.cc", 148);
    v60 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&__p, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v60, "Equilibration step: Rows scaled = ", 0x22uLL);
    v61 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v60, &v64 + 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v61, ", columns scaled = ", 0x13uLL);
    v62 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v61, &v64);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v62, "\n", 1uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&__p);
  }

  if (dword_2810C0B20 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0B18, dword_2810C0B20))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v65, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/lp_data/matrix_scaler.cc", 150);
    v63 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v65, 1);
    operations_research::glop::SparseMatrixScaler::DebugInformationString(a1, &__p);
    absl::lts_20240722::log_internal::LogMessage::operator<<(v63, &__p);
    operations_research::sat::BruteForceOrthogonalPacking(&__p, v65);
  }
}

void sub_23CC6C0F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *a12, void *__p, int a14, __int16 a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23CC6C90C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, operations_research::glop::RevisedSimplex *a28, __int16 a29, char a30, char a31)
{
  if (a21 < 0)
  {
    operator delete(__p);
    v32 = a22;
    if (a22)
    {
LABEL_7:
      operator delete(v32);
      v33 = a25;
      if (!a25)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v32 = a22;
    if (a22)
    {
      goto LABEL_7;
    }
  }

  v33 = a25;
  if (!a25)
  {
LABEL_9:
    std::unique_ptr<operations_research::glop::RevisedSimplex>::~unique_ptr[abi:ne200100](&a28);
    operations_research::glop::GlopParameters::~GlopParameters(&a29);
    std::unique_ptr<operations_research::glop::LinearProgram>::~unique_ptr[abi:ne200100]((v31 - 112));
    _Unwind_Resume(a1);
  }

LABEL_8:
  operator delete(v33);
  goto LABEL_9;
}

uint64_t operations_research::glop::SparseMatrixScaler::ScaleRowsGeometrically(operations_research::glop::SparseMatrixScaler *this)
{
  v1 = *this;
  v2 = *(*this + 24);
  if (v2)
  {
    if ((v2 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v3 = *v1;
  v4 = -1431655765 * ((v1[1] - *v1) >> 4);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = v4 & 0x7FFFFFFF;
    do
    {
      v7 = (v3 + 48 * v5);
      v8 = v7[1];
      if (v8 >= 1)
      {
        v9 = v7[3];
        v10 = v7[4];
        do
        {
          if (*v10 != 0.0)
          {
            v11 = fabs(*v10);
            v12 = (8 * *v9);
            v13 = *v12;
            if (*v12 < v11)
            {
              v13 = v11;
            }

            *(8 * *v9) = v13;
            if (v11 >= *v12)
            {
              v11 = *v12;
            }

            *v12 = v11;
          }

          ++v10;
          ++v9;
          --v8;
        }

        while (v8);
      }

      ++v5;
    }

    while (v5 != v6);
  }

  v14 = *(v1 + 6);
  if (v14)
  {
    if ((v14 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v15 = *this;
  v16 = *(*this + 24);
  if (v16 < 1)
  {
    v18 = 0;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v19 = 8 * v16;
    do
    {
      if (*v17 != 1.0)
      {
        v18 = (v18 + 1);
        *(v17 + *(this + 1)) = *v17 * *(v17 + *(this + 1));
      }

      ++v17;
    }

    while (v19 != v17);
  }

  v21 = v15;
  v20 = *v15;
  v22 = -1431655765 * ((v21[1] - v20) >> 4);
  if (v22 >= 1)
  {
    v23 = 0;
    v24 = v22 & 0x7FFFFFFF;
    do
    {
      v25 = (v20 + 48 * v23);
      v26 = v25[1];
      if (v26 >= 1)
      {
        v27 = v25[3];
        v28 = v25[4];
        do
        {
          v29 = *v27++;
          *v28 = *v28 / *(8 * v29);
          ++v28;
          --v26;
        }

        while (v26);
      }

      ++v23;
    }

    while (v23 != v24);
  }

  return v18;
}

void sub_23CC6CDDC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    operator delete(v2);
    if (!v1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::glop::SparseMatrixScaler::EquilibrateRows(uint64_t **this)
{
  v1 = *this;
  v2 = *(*this + 6);
  if (v2)
  {
    if ((v2 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v3 = *v1;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v1[1] - *v1) >> 4);
  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      v6 = (v3 + 48 * v5);
      v7 = v6[1];
      if (v7 >= 1)
      {
        v8 = v6[3];
        v9 = v6[4];
        do
        {
          if (*v9 != 0.0)
          {
            v10 = fabs(*v9);
            if (*(8 * *v8) >= v10)
            {
              v10 = *(8 * *v8);
            }

            *(8 * *v8) = v10;
          }

          ++v9;
          ++v8;
          --v7;
        }

        while (v7);
      }

      ++v5;
    }

    while (v5 != (v4 & 0x7FFFFFFF));
  }

  v11 = *(v1 + 6);
  if (v11 < 1)
  {
    v13 = 0;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 8 * v11;
    do
    {
      if (*v12 != 1.0)
      {
        v13 = (v13 + 1);
        *(v12 + this[1]) = *v12 * *(v12 + this[1]);
      }

      ++v12;
    }

    while (v14 != v12);
  }

  if (v4 >= 1)
  {
    v15 = 0;
    v16 = v4 & 0x7FFFFFFF;
    do
    {
      v17 = (v3 + 48 * v15);
      v18 = v17[1];
      if (v18 >= 1)
      {
        v19 = v17[3];
        v20 = v17[4];
        do
        {
          v21 = *v19++;
          *v20 = *v20 / *(8 * v21);
          ++v20;
          --v18;
        }

        while (v18);
      }

      ++v15;
    }

    while (v15 != v16);
  }

  return v13;
}