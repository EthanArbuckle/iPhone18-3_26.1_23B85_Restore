void sub_23CB95D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *a13, uint64_t a14, char a15, void *__p, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  std::function<double ()(long long)>::~function(&a18);
  if (a15)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t operations_research::ConvexMinimum<long long,double>(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v10 = a5;
  }

  else
  {
    v10 = -1;
  }

  if (a5 >= 2)
  {
    v11 = 0;
    v12 = a5;
    v13 = v10;
    while (1)
    {
      v15 = v11 + (a5 >> 1);
      v23 = *(a4 + 8 * v15);
      v16 = *(a6 + 24);
      if (!v16)
      {
        break;
      }

      v17 = (*(*v16 + 48))(v16, &v23);
      if (v17 >= *&a3)
      {
        if (v13 < v12)
        {
          v14 = v15;
        }

        else
        {
          v11 = v15 + 1;
          v14 = v12;
        }
      }

      else
      {
        v13 = v15 - 1;
        v23 = *(a4 + ((v15 - 1) << 32 >> 29));
        v18 = *(a6 + 24);
        if (!v18)
        {
          break;
        }

        v19 = v17;
        v20 = (*(*v18 + 48))(v18, &v23);
        *&a3 = v20;
        if (v20 == v19)
        {
          goto LABEL_20;
        }

        v14 = v15 - 1;
        if (v20 >= v19)
        {
          v11 = v15 + 1;
          v13 = v15;
          *&a3 = v19;
          v14 = v12;
        }
      }

      a5 = v14 - v11;
      v12 = v14;
      if (v14 - v11 <= 1)
      {
        goto LABEL_17;
      }
    }

LABEL_24:
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v11 = 0;
  v13 = v10;
LABEL_17:
  if (a5 != 1)
  {
    goto LABEL_20;
  }

  v23 = *(a4 + 8 * v11);
  v21 = *(a6 + 24);
  if (!v21)
  {
    goto LABEL_24;
  }

  if ((*(*v21 + 48))(v21, &v23) > *&a3)
  {
LABEL_20:
    v11 = v13;
  }

  if (v11 != v10)
  {
    return *(a4 + 8 * v11);
  }

  return a2;
}

uint64_t std::function<double ()(long long)>::~function(uint64_t a1)
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

uint64_t operations_research::sat::FeasibilityJumpSolver::ComputeGeneralJump(operations_research::sat::FeasibilityJumpSolver *this, int a2)
{
  v50 = a2;
  if (((*(*(this + 519) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    return operations_research::sat::FeasibilityJumpSolver::ComputeLinearJump(this, a2);
  }

  v3 = *(this + 513) + 24 * a2;
  v48 = 0;
  if (*v3 >= 2uLL)
  {
    if (*v3)
    {
      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::InitFrom(&v48, v3);
    }

    else
    {
      v48 = *v3;
      *__p = *(v3 + 8);
    }
  }

  if (operations_research::Domain::IsFixed(&v48))
  {
    v4 = 0;
    v5 = v48;
    goto LABEL_82;
  }

  ++*(this + 579);
  v6 = *(*(*(this + 512) + 896) + 8 * v50);
  operations_research::Domain::Domain(v44, v6, v6);
  operations_research::Domain::Complement(v44, v45);
  operations_research::Domain::IntersectionWith(&v48, v45, &v46);
  if (v48)
  {
    operator delete(__p[0]);
  }

  v48 = v46;
  *__p = v47;
  v46 = 0;
  if (v45[0])
  {
    operator delete(v45[1]);
  }

  if (v44[0])
  {
    operator delete(v44[1]);
  }

  if (v48)
  {
    v7 = __p[0];
  }

  else
  {
    v7 = __p;
  }

  v8 = *v7;
  v9 = (__p[0] + 8);
  if ((v48 & 1) == 0)
  {
    v9 = &__p[1];
  }

  v10 = *v9;
  v46 = this;
  *&v47 = &v50;
  v11 = &v10[-v6 + 1];
  v4 = &v8[-v6];
  v12 = v10 + 1 - v8;
  if (v12 == 1)
  {
    v13 = absl::lts_20240722::functional_internal::InvokeObject<operations_research::sat::FeasibilityJumpSolver::ComputeGeneralJump(int)::$_0,double,long long>(&v46, v4);
    goto LABEL_22;
  }

  v15 = v4 + v12 / 2;
  v16 = absl::lts_20240722::functional_internal::InvokeObject<operations_research::sat::FeasibilityJumpSolver::ComputeGeneralJump(int)::$_0,double,long long>(&v46, v15);
  v17 = v15 - 1;
  v18 = absl::lts_20240722::functional_internal::InvokeObject<operations_research::sat::FeasibilityJumpSolver::ComputeGeneralJump(int)::$_0,double,long long>(&v46, v15 - 1);
  v14 = v18;
  if (v18 != v16)
  {
    v19 = v15 - 1;
    if (v18 >= v16)
    {
      v4 = v15 + 1;
      v14 = v16;
      v17 = v15;
      v19 = v11;
    }

    v20 = v19 - v4;
    if (v19 > v4)
    {
      if (v20 >= 2)
      {
        while (1)
        {
          while (1)
          {
            v21 = v4 + (v20 >> 1);
            v22 = absl::lts_20240722::functional_internal::InvokeObject<operations_research::sat::FeasibilityJumpSolver::ComputeGeneralJump(int)::$_0,double,long long>(&v46, v21);
            if (v22 < v14)
            {
              break;
            }

            if (v17 < v19)
            {
              v19 = v21;
            }

            else
            {
              v4 = v21 + 1;
            }

            v20 = v19 - v4;
            if (v19 - v4 <= 1)
            {
              goto LABEL_43;
            }
          }

          v23 = absl::lts_20240722::functional_internal::InvokeObject<operations_research::sat::FeasibilityJumpSolver::ComputeGeneralJump(int)::$_0,double,long long>(&v46, v21 - 1);
          v14 = v23;
          if (v23 == v22)
          {
            break;
          }

          if (v23 < v22)
          {
            v17 = v21 - 1;
          }

          else
          {
            v4 = v21 + 1;
            v17 = v21;
          }

          if (v23 < v22)
          {
            v19 = v21 - 1;
          }

          else
          {
            v14 = v22;
          }

          v20 = v19 - v4;
          if (v19 - v4 <= 1)
          {
            goto LABEL_43;
          }
        }

        v4 = v21 - 1;
        v5 = v48;
        if ((v48 >> 1) < 2)
        {
          goto LABEL_82;
        }

        goto LABEL_46;
      }

LABEL_43:
      if (v20 == 1)
      {
        v13 = absl::lts_20240722::functional_internal::InvokeObject<operations_research::sat::FeasibilityJumpSolver::ComputeGeneralJump(int)::$_0,double,long long>(&v46, v4);
        if (v13 <= v14)
        {
LABEL_22:
          v14 = v13;
          v5 = v48;
          if ((v48 >> 1) >= 2)
          {
            goto LABEL_46;
          }

          goto LABEL_82;
        }
      }
    }
  }

  v4 = v17;
  v5 = v48;
  if ((v48 >> 1) >= 2)
  {
LABEL_46:
    v24 = 1;
    while (1)
    {
      v26 = ((v5 & 1) != 0 ? __p[0] : __p);
      v27 = &v26[16 * v24];
      v29 = *v27;
      v28 = *(v27 + 1);
      v46 = this;
      *&v47 = &v50;
      v30 = v28 - v6 + 1;
      v25 = v29 - v6;
      v31 = v28 + 1 - v29;
      if (v31 == 1)
      {
        break;
      }

      v34 = v25 + v31 / 2;
      v35 = absl::lts_20240722::functional_internal::InvokeObject<operations_research::sat::FeasibilityJumpSolver::ComputeGeneralJump(int)::$_0,double,long long>(&v46, v34);
      v36 = v34 - 1;
      v37 = absl::lts_20240722::functional_internal::InvokeObject<operations_research::sat::FeasibilityJumpSolver::ComputeGeneralJump(int)::$_0,double,long long>(&v46, v34 - 1);
      v33 = v37;
      if (v37 != v35)
      {
        v38 = v34 - 1;
        if (v37 >= v35)
        {
          v25 = v34 + 1;
          v33 = v35;
          v36 = v34;
          v38 = v30;
        }

        v39 = v38 - v25;
        if (v38 <= v25)
        {
          goto LABEL_79;
        }

        if (v39 >= 2)
        {
          while (1)
          {
            while (1)
            {
              v40 = v25 + (v39 >> 1);
              v41 = absl::lts_20240722::functional_internal::InvokeObject<operations_research::sat::FeasibilityJumpSolver::ComputeGeneralJump(int)::$_0,double,long long>(&v46, v40);
              if (v41 < v33)
              {
                break;
              }

              if (v36 < v38)
              {
                v38 = v40;
              }

              else
              {
                v25 = v40 + 1;
              }

              v39 = v38 - v25;
              if (v38 - v25 <= 1)
              {
                goto LABEL_76;
              }
            }

            v42 = absl::lts_20240722::functional_internal::InvokeObject<operations_research::sat::FeasibilityJumpSolver::ComputeGeneralJump(int)::$_0,double,long long>(&v46, v40 - 1);
            v33 = v42;
            if (v42 == v41)
            {
              break;
            }

            if (v42 < v41)
            {
              v36 = v40 - 1;
            }

            else
            {
              v25 = v40 + 1;
              v36 = v40;
            }

            if (v42 < v41)
            {
              v38 = v40 - 1;
            }

            else
            {
              v33 = v41;
            }

            v39 = v38 - v25;
            if (v38 - v25 <= 1)
            {
              goto LABEL_76;
            }
          }

          v25 = v40 - 1;
          goto LABEL_48;
        }

LABEL_76:
        if (v39 != 1)
        {
LABEL_79:
          v25 = v36;
          goto LABEL_48;
        }

        v32 = absl::lts_20240722::functional_internal::InvokeObject<operations_research::sat::FeasibilityJumpSolver::ComputeGeneralJump(int)::$_0,double,long long>(&v46, v25);
        if (v32 <= v33)
        {
          goto LABEL_56;
        }
      }

      v25 = v36;
LABEL_48:
      if (v33 < v14)
      {
        v4 = v25;
        v14 = v33;
      }

      ++v24;
      v5 = v48;
      if (v24 >= (v48 >> 1))
      {
        goto LABEL_82;
      }
    }

    v32 = absl::lts_20240722::functional_internal::InvokeObject<operations_research::sat::FeasibilityJumpSolver::ComputeGeneralJump(int)::$_0,double,long long>(&v46, v29 - v6);
LABEL_56:
    v33 = v32;
    goto LABEL_48;
  }

LABEL_82:
  if (v5)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_23CB9647C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, char a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, void *__p)
{
  if (a19)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::FeasibilityJumpSolver::UpdateViolatedConstraintWeights(operations_research::sat::FeasibilityJumpSolver *this, operations_research::sat::JumpTable *a2)
{
  ++*(this + 586);
  v4 = (*(this + 514) - *(this + 513)) >> 3;
  if (*(this + 4608) == 1)
  {
    *(this + 563) = *(this + 563) * (1.0 / *(this + 141));
  }

  v5 = -1431655765 * v4;
  v6 = *(this + 512);
  v7 = v6[118];
  v75 = v6;
  v8 = v6[119];
  if (v7 == v8)
  {
    goto LABEL_25;
  }

  v9 = *(this + 551);
  v10 = *(this + 4609);
  if (v10)
  {
    v11 = 0;
    v12 = *(this + 554);
    do
    {
      v13 = *v7++;
      v14 = *(this + 563) + v9->f64[v13];
      v9->f64[v13] = v14;
      *(v12 + 8 * v13) = v14;
      v11 |= v9->f64[v13] > 1.0e10;
    }

    while (v7 != v8);
  }

  else
  {
    v11 = 0;
    do
    {
      v15 = *v7++;
      v16 = *(this + 563) + v9->f64[v15];
      v9->f64[v15] = v16;
      v11 |= v16 > 1.0e10;
    }

    while (v7 != v8);
  }

  if ((v11 & 1) == 0)
  {
LABEL_25:
    operations_research::sat::LinearIncrementalEvaluator::ClearAffectedVariables((v75 + 22));
    v25 = *(this + 548);
    v26 = (*(this + 549) - v25) >> 3;
    if (v5 <= v26)
    {
      if (v5 < v26)
      {
        *(this + 549) = v25 + 8 * v5;
      }
    }

    else
    {
      std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__append(this + 4384, v5 - v26);
    }

    v27 = *(this + 512);
    v28 = *(v27 + 944);
    for (i = *(v27 + 952); v28 != i; ++v28)
    {
      v31 = *v28;
      if (v31 < operations_research::sat::LsEvaluator::NumLinearConstraints(*(this + 512)))
      {
        v29 = *(this + 548);
        v30 = (*(this + 549) - v29) >> 3;
        operations_research::sat::LinearIncrementalEvaluator::UpdateScoreOnWeightUpdate(v75 + 22, v31, *(a2 + 4), (*(a2 + 5) - *(a2 + 4)) >> 3, v29);
      }

      else
      {
        v32 = *(this + 512);
        if (operations_research::sat::LsEvaluator::NumLinearConstraints(v32) <= v31)
        {
          v37 = *(v32 + 106) + 24 * (v31 - operations_research::sat::LsEvaluator::NumLinearConstraints(v32));
          v35 = *v37;
          v36 = (*(v37 + 8) - *v37) >> 2;
          if (v36)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v33 = (*(v32 + 45) + 20 * v31);
          v34 = v33[2] + v33[1] + v33[4];
          if (v34)
          {
            v35 = (*(v32 + 48) + 4 * *v33);
            v36 = v34;
LABEL_38:
            v38 = 4 * v36;
            do
            {
              v40 = *v35;
              v41 = v40 >> 6;
              v42 = 1 << v40;
              *(*(a2 + 10) + 8 * (v40 >> 6)) |= 1 << v40;
              v78 = v40;
              if ((*(*(this + 564) + 8 * (v40 >> 6)) & (1 << v40)) == 0 && !operations_research::Domain::IsFixed((*(this + 513) + 24 * v40)) && ((*(*(a2 + 10) + 8 * v41) & v42) != 0 || *(*(a2 + 7) + 8 * v40) < 0.0))
              {
                v43 = *(this + 588);
                if (v43[4] == v43[5] || (*(v43[1] + 8 * v41) & v42) == 0)
                {
                  v39 = *(this + 512);
                  if (*(v39[121] + 4 * v40) > 0)
                  {
                    goto LABEL_40;
                  }

                  v44 = *(v39[112] + 8 * v40);
                  v45 = operations_research::Domain::Min((*(this + 513) + 24 * v40));
                  if (*(*v39 + 16))
                  {
                    v46 = v39[30];
                    if (0xAAAAAAAAAAAAAAABLL * ((v39[31] - v46) >> 3) > v40)
                    {
                      v47 = (v46 + 24 * v40);
                      v48 = *v47;
                      if (*v47 != v47[1] && !*v48 && *(v48 + 8) * (v45 - v44) < 0)
                      {
                        goto LABEL_40;
                      }
                    }
                  }

                  v49 = *(this + 512);
                  v50 = operations_research::Domain::Max((*(this + 513) + 24 * v40));
                  if (*(*v49 + 16))
                  {
                    v51 = v49[30];
                    if (0xAAAAAAAAAAAAAAABLL * ((v49[31] - v51) >> 3) > v40)
                    {
                      v52 = (v51 + 24 * v40);
                      v53 = *v52;
                      if (*v52 != v52[1] && !*v53 && *(v53 + 8) * (v50 - v44) < 0)
                      {
LABEL_40:
                        std::vector<int>::push_back[abi:ne200100](this + 4536, &v78);
                        *(*(this + 564) + ((v78 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v78;
                      }
                    }
                  }
                }
              }

              ++v35;
              v38 -= 4;
            }

            while (v38);
          }
        }
      }
    }

    v54 = v75[96];
    v55 = v75[97];
    if (v54 == v55)
    {
      return;
    }

    while (1)
    {
      v56 = *v54;
      v57 = *v54 >> 6;
      v58 = 1 << *v54;
      if ((v58 & *(*(this + 516) + 8 * v57)) != 0)
      {
        *(*(a2 + 7) + 8 * v56) = *(*(a2 + 7) + 8 * v56) + *(this + 563) * *(*(this + 548) + 8 * v56);
        v79 = v56;
        if ((*(*(this + 564) + 8 * v57) & v58) == 0)
        {
          goto LABEL_67;
        }
      }

      else
      {
        *(*(a2 + 10) + 8 * v57) |= v58;
        v79 = v56;
        if ((*(*(this + 564) + 8 * v57) & v58) == 0)
        {
LABEL_67:
          if (operations_research::sat::FeasibilityJumpSolver::ShouldScan(this, a2, v56))
          {
            std::vector<int>::push_back[abi:ne200100](this + 4536, &v79);
            *(*(this + 564) + ((v79 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v79;
          }
        }
      }

      if (++v54 == v55)
      {
        return;
      }
    }
  }

  *(this + 563) = *(this + 563) * 1.0e-10;
  v17 = *(this + 552);
  v18 = v17 - v9;
  if (v17 != v9)
  {
    v19 = v18 >> 3;
    if (v10)
    {
      v20 = *(this + 554);
      if (v19 >= 0xC && ((v19 - 1) <= 0x7FFFFFFE ? (v21 = (v19 - 1) >> 31 == 0) : (v21 = 0), v21 && (v9 >= v20 + v18 || v20 >= v17)))
      {
        v22 = (v18 >> 3) & 0xFFFFFFFELL;
        v71 = vdupq_n_s64(0x3DDB7CDFD9D7BDBBuLL);
        v72 = v22;
        v73 = *(this + 554);
        v74 = v9;
        do
        {
          *v74 = vmulq_f64(*v74, v71);
          ++v74;
          *v73 = vmulq_f64(*v73, v71);
          ++v73;
          v72 -= 2;
        }

        while (v72);
        v23 = v19 & 0xFFFFFFFE;
        if (v19 == v22)
        {
          goto LABEL_77;
        }
      }

      else
      {
        v22 = 0;
        v23 = 0;
      }

      v24 = v23 + 1;
      do
      {
        v9->f64[v22] = v9->f64[v22] * 1.0e-10;
        *(v20 + 8 * v22) = *(v20 + 8 * v22) * 1.0e-10;
        v22 = v24++;
      }

      while (v19 > v22);
    }

    else
    {
      if (v19 > 0xD && ((v19 - 1) <= 0x7FFFFFFE ? (v59 = (v19 - 1) >> 31 == 0) : (v59 = 0), v59))
      {
        v60 = (v18 >> 3) & 0xFFFFFFFCLL;
        v61 = v19 & 0xFFFFFFFC;
        v67 = v9 + 1;
        v68 = vdupq_n_s64(0x3DDB7CDFD9D7BDBBuLL);
        v69 = v60;
        do
        {
          v70 = vmulq_f64(*v67, v68);
          v67[-1] = vmulq_f64(v67[-1], v68);
          *v67 = v70;
          v67 += 2;
          v69 -= 4;
        }

        while (v69);
        if (v19 == v60)
        {
          goto LABEL_77;
        }
      }

      else
      {
        v60 = 0;
        v61 = 0;
      }

      v62 = v61 + 1;
      do
      {
        v9->f64[v60] = v9->f64[v60] * 1.0e-10;
        v60 = v62++;
      }

      while (v19 > v60);
    }
  }

LABEL_77:
  v63 = *(a2 + 4);
  v64 = (*(a2 + 5) - v63) >> 3;
  if (v5 <= v64)
  {
    if (v5 < v64)
    {
      *(a2 + 5) = v63 + 8 * v5;
    }
  }

  else
  {
    std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__append(a2 + 32, v5 - v64);
  }

  v65 = *(a2 + 7);
  v66 = (*(a2 + 8) - v65) >> 3;
  if (v5 <= v66)
  {
    if (v5 < v66)
    {
      *(a2 + 8) = v65 + 8 * v5;
    }
  }

  else
  {
    std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__append(a2 + 56, v5 - v66);
  }

  v77 = 1;
  std::vector<BOOL>::assign(a2 + 80, v5, &v77);
}

uint64_t operations_research::sat::FeasibilityJumpSolver::DoSomeLinearIterations(operations_research::sat::FeasibilityJumpSolver *this)
{
  if (dword_2810BD5A8 >= 1 && (operations_research::sat::FeasibilityJumpSolver::DoSomeLinearIterations(dword_2810BD5A8, this, &v23, &__p) & 1) == 0)
  {
    v19 = __p.__r_.__value_.__r.__words[0];
    operations_research::sat::FeasibilityJumpSolver::OneLineStats(this, v18, &__p);
    operations_research::sat::SharedResponseManager::LogMessageWithThrottling(v19, &v23, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }

  if (*(this + 4609))
  {
    return 1;
  }

  operations_research::sat::LsEvaluator::RecomputeViolatedList(*(this + 512), 1);
  operations_research::sat::FeasibilityJumpSolver::RecomputeVarsToScan(this, (this + 4176));
  v3 = 0;
  v4 = *(this + 512);
  while (1)
  {
    do
    {
      v21 = 0;
      __p.__r_.__value_.__r.__words[0] = 0;
      v20 = 0.0;
      if (!operations_research::sat::FeasibilityJumpSolver::ScanRelevantVariables(this, 5, (this + 4176), &v21, &__p, &v20))
      {
        ++v3;
        if (*(this + 4091))
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }

      v6 = v21;
      v7 = *(*(v4 + 896) + 8 * v21);
      v8 = v21;
      ++*(this + 582);
      v9 = __p.__r_.__value_.__r.__words[0];
      operations_research::sat::LsEvaluator::UpdateLinearScores(*(this + 512), v6, __p.__r_.__value_.__l.__data_, *(this + 551), (*(this + 552) - *(this + 551)) >> 3, *(this + 526), (*(this + 527) - *(this + 526)) >> 3, v5, *(this + 529), (*(this + 530) - *(this + 529)) >> 3);
      operations_research::sat::LsEvaluator::UpdateVariableValue(*(this + 512), v6, v9);
      v10 = v8 >> 6;
      v11 = 1 << v8;
      if ((*(*(this + 516) + 8 * (v8 >> 6)) & (1 << v8)) != 0)
      {
        v12 = -v20;
        *(*(this + 526) + 8 * v8) = v7 - v9;
        *(*(this + 529) + 8 * v8) = v12;
        v13 = *(this + 532);
        v14 = *(v13 + 8 * v10) & ~v11;
      }

      else
      {
        v13 = *(this + 532);
        v14 = *(v13 + 8 * v10) | v11;
      }

      *(v13 + 8 * v10) = v14;
      operations_research::sat::FeasibilityJumpSolver::MarkJumpsThatNeedToBeRecomputed(this, v8, (this + 4176));
    }

    while (v3++ != 9999);
    v3 = 10001;
    if (*(this + 4091))
    {
LABEL_18:
      LODWORD(v16) = 0;
      v17 = 1;
      return v17 & v16;
    }

LABEL_15:
    v16 = *(this + 568);
    if (*(this + 567) == v16)
    {
      break;
    }

LABEL_5:
    if (v3 >= 10000)
    {
      v17 = 0;
      return v17 & v16;
    }
  }

  if (*(*(this + 512) + 944) != *(*(this + 512) + 952))
  {
    operations_research::sat::FeasibilityJumpSolver::UpdateViolatedConstraintWeights(this, (this + 4176));
    goto LABEL_5;
  }

  v17 = 1;
  LODWORD(v16) = 1;
  return v17 & v16;
}

void sub_23CB96E70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a19);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::FeasibilityJumpSolver::RecomputeVarsToScan(operations_research::sat::FeasibilityJumpSolver *this, operations_research::sat::JumpTable *a2)
{
  v2 = a2;
  v4 = (-1431655765 * ((*(this + 514) - *(this + 513)) >> 3));
  v5 = *(a2 + 4);
  v6 = (*(a2 + 5) - v5) >> 3;
  if (v4 <= v6)
  {
    if (v4 < v6)
    {
      *(a2 + 5) = v5 + 8 * v4;
    }
  }

  else
  {
    std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__append(a2 + 32, v4 - v6);
  }

  v7 = *(v2 + 7);
  v8 = (*(v2 + 8) - v7) >> 3;
  v49 = (v2 + 56);
  if (v4 <= v8)
  {
    if (v4 < v8)
    {
      *(v2 + 8) = v7 + 8 * v4;
    }
  }

  else
  {
    std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__append(v2 + 56, v4 - v8);
  }

  v52 = 1;
  std::vector<BOOL>::assign(v2 + 80, v4, &v52);
  v51 = 0;
  std::vector<BOOL>::assign(this + 4512, v4, &v51);
  *(this + 568) = *(this + 567);
  v9 = *(this + 512);
  v10 = *(v9 + 944);
  v48 = *(v9 + 952);
  if (v10 != v48)
  {
    v47 = v2;
    do
    {
      v50 = v10;
      v11 = *v10;
      v12 = *(this + 512);
      if (operations_research::sat::LsEvaluator::NumLinearConstraints(v12) <= v11)
      {
        v17 = *(v12 + 106) + 24 * (v11 - operations_research::sat::LsEvaluator::NumLinearConstraints(v12));
        v15 = *v17;
        v16 = (*(v17 + 8) - *v17) >> 2;
        if (v16)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v13 = (*(v12 + 45) + 20 * v11);
        v14 = v13[2] + v13[1] + v13[4];
        if (v14)
        {
          v15 = (*(v12 + 48) + 4 * *v13);
          v16 = v14;
LABEL_16:
          v18 = 4 * v16;
          do
          {
            v20 = *v15;
            v21 = *v15;
            v22 = *v15 >> 6;
            v23 = 1 << *v15;
            if ((v23 & *(*(this + 564) + 8 * v22)) == 0 && !operations_research::Domain::IsFixed((*(this + 513) + 24 * v21)) && ((*(*(v2 + 10) + 8 * v22) & v23) != 0 || *(*v49 + 8 * v20) < 0.0))
            {
              v24 = *(this + 588);
              if (v24[4] == v24[5] || (*(v24[1] + 8 * v22) & v23) == 0)
              {
                v25 = *(this + 512);
                if (*(v25[121] + 4 * v20) > 0)
                {
                  goto LABEL_27;
                }

                v34 = *(v25[112] + 8 * v20);
                v35 = operations_research::Domain::Min((*(this + 513) + 24 * v20));
                if (*(*v25 + 16))
                {
                  v36 = v25[30];
                  if (0xAAAAAAAAAAAAAAABLL * ((v25[31] - v36) >> 3) > v20)
                  {
                    v37 = (v36 + 24 * v21);
                    v38 = *v37;
                    if (*v37 != v37[1] && !*v38 && *(v38 + 8) * (v35 - v34) < 0)
                    {
                      goto LABEL_27;
                    }
                  }
                }

                v39 = *(this + 512);
                v40 = operations_research::Domain::Max((*(this + 513) + 24 * v21));
                if (*(*v39 + 16))
                {
                  v41 = v39[30];
                  if (0xAAAAAAAAAAAAAAABLL * ((v39[31] - v41) >> 3) > v20)
                  {
                    v42 = (v41 + 24 * v21);
                    v43 = *v42;
                    if (*v42 != v42[1] && !*v43 && *(v43 + 8) * (v40 - v34) < 0)
                    {
LABEL_27:
                      v26 = *(this + 568);
                      v27 = *(this + 569);
                      if (v26 < v27)
                      {
                        *v26 = v20;
                        v19 = v26 + 4;
                      }

                      else
                      {
                        v28 = *(this + 567);
                        v29 = v26 - v28;
                        v30 = (v26 - v28) >> 2;
                        v31 = v30 + 1;
                        if ((v30 + 1) >> 62)
                        {
                          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                        }

                        v32 = v27 - v28;
                        if (v32 >> 1 > v31)
                        {
                          v31 = v32 >> 1;
                        }

                        if (v32 >= 0x7FFFFFFFFFFFFFFCLL)
                        {
                          v33 = 0x3FFFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v33 = v31;
                        }

                        if (v33)
                        {
                          if (!(v33 >> 62))
                          {
                            operator new();
                          }

                          std::__throw_bad_array_new_length[abi:ne200100]();
                        }

                        v44 = (v26 - v28) >> 2;
                        v45 = (4 * v30);
                        v46 = (4 * v30 - 4 * v44);
                        *v45 = v20;
                        v19 = v45 + 1;
                        memcpy(v46, v28, v29);
                        *(this + 567) = v46;
                        *(this + 568) = v19;
                        *(this + 569) = 0;
                        if (v28)
                        {
                          operator delete(v28);
                        }

                        v2 = v47;
                      }

                      *(this + 568) = v19;
                      *(*(this + 564) + 8 * v22) |= v23;
                    }
                  }
                }
              }
            }

            ++v15;
            v18 -= 4;
          }

          while (v18);
        }
      }

      v10 = v50 + 1;
    }

    while (v50 + 1 != v48);
  }
}

uint64_t operations_research::sat::FeasibilityJumpSolver::ScanRelevantVariables(operations_research::sat::FeasibilityJumpSolver *this, int a2, operations_research::sat::JumpTable *a3, int *a4, uint64_t *a5, double *a6)
{
  if (*(this + 4091))
  {
    return 0;
  }

  v7 = a2;
  v9 = *(this + 588);
  v11 = *(v9 + 32);
  v10 = *(v9 + 40);
  if (v11 == v10)
  {
    if (*(this + 1153) >= 0)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (*(v10 - 8) > *(this + 1153))
  {
    return 0;
  }

LABEL_6:
  *a4 = -1;
  *a6 = 0.0;
  v12 = *(this + 567);
  v13 = *(this + 568);
  if (v12 == v13 || a2 < 1)
  {
    return 0;
  }

  v15 = 0;
  v16 = 0xFFFFFFFFLL;
  v17 = 0.0;
  while (1)
  {
    v22 = (v13 - v12) >> 2;
    if ((v22 - (v22 != 0x80000000)) >= 0)
    {
      break;
    }

    v24 = 0;
    v25 = *v12;
    if ((operations_research::sat::FeasibilityJumpSolver::ShouldScan(this, a3, *v12) & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_30:
    v72 = v16;
    v33 = *(a3 + 10);
    v34 = v25 >> 6;
    v35 = *(v33 + 8 * v34);
    if ((v35 & (1 << v25)) != 0)
    {
      *(v33 + 8 * v34) = v35 & ~(1 << v25);
      v36 = (*(a3 + 3))(a3, v25);
      v38 = v37;
      v39 = *(a3 + 7);
      *(*(a3 + 4) + 8 * v25) = v36;
      *(v39 + 8 * v25) = v37;
    }

    else
    {
      v36 = *(*(a3 + 4) + 8 * v25);
      v38 = *(*(a3 + 7) + 8 * v25);
    }

    if (__ROR8__(0x8F5C28F5C28F5C29 * (*(this + 578) + *(this + 579)) + 0x51EB851EB851EB8, 2) <= 0x28F5C28F5C28F5CuLL)
    {
      v40 = *(this + 155);
      if (v40)
      {
        absl::lts_20240722::Mutex::Lock(*(this + 155));
        v41 = operations_research::TimeLimit::LimitReached(v40[1]);
        absl::lts_20240722::Mutex::Unlock(v40);
        if (v41)
        {
          result = 0;
          *(this + 4091) = 1;
          return result;
        }
      }
    }

    v42 = v38;
    if (v38 >= 0.0)
    {
LABEL_55:
      v61 = *(this + 567);
      v62 = *(v61 + 4 * v24);
      *(*(this + 564) + ((v62 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v62);
      v63 = *(this + 568);
      v64 = *(v63 - 4);
      v63 -= 4;
      *(v61 + 4 * v24) = v64;
      *(this + 568) = v63;
      if (v72 == (v63 - v61) >> 2)
      {
        v16 = v24;
      }

      else
      {
        v16 = v72;
      }

      goto LABEL_58;
    }

    v43 = *(this + 512);
    v44 = *(*(v43 + 896) + 8 * v25);
    v45 = v42;
    if (*(this + 4609) == 1)
    {
      v46 = *(this + 551);
      v47 = (*(this + 552) - v46) >> 3;
      ++*(this + 587);
      v48 = operations_research::sat::LinearIncrementalEvaluator::WeightedViolationDelta((v43 + 176), v46, v47, v25, v36);
      v49 = operations_research::sat::LsEvaluator::WeightedNonLinearViolationDelta(*(this + 512), v46, v47, v25, v36);
      v50 = *(this + 512);
      v51 = 0.0;
      if (*(*v50 + 16))
      {
        v53 = v50 + 30;
        v52 = v50[30];
        if (0xAAAAAAAAAAAAAAABLL * ((v53[1] - v52) >> 3) > v25)
        {
          v54 = (v52 + 24 * v25);
          v55 = *v54;
          if (*v54 != v54[1] && !*v55)
          {
            v51 = (*(v55 + 8) * v36);
          }
        }
      }

      v45 = v48 + v49 + v51 * 1.08420217e-19;
      v56 = v45 - v42;
      v57 = *(this + 588);
      v59 = *(v57 + 32);
      v58 = *(v57 + 40);
      if (v59 == v58)
      {
        v60 = 0.0;
        if (v56 < 0.0)
        {
          v56 = 0.0;
        }

        if (v56 > v45)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v56 < 0.0)
        {
          v56 = 0.0;
        }

        if (v45 + *(v58 - 24) < v56)
        {
          goto LABEL_52;
        }

        v60 = *(v58 - 16);
      }

      if (v60 <= v45)
      {
        goto LABEL_55;
      }
    }

LABEL_52:
    ++v15;
    if (v17 > v42)
    {
      if (!v36)
      {
        absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(0, 0, "delta != 0");
      }

      *a4 = v25;
      *a5 = v44 + v36;
      *a6 = v45;
      v16 = v24;
      v17 = v42;
LABEL_58:
      v7 = a2;
      v12 = *(this + 567);
      v13 = *(this + 568);
      if (v12 == v13)
      {
        goto LABEL_65;
      }

      goto LABEL_15;
    }

    v7 = a2;
    v16 = v72;
    v12 = *(this + 567);
    v13 = *(this + 568);
    if (v12 == v13)
    {
      goto LABEL_65;
    }

LABEL_15:
    if (v15 >= v7)
    {
      goto LABEL_65;
    }
  }

  v73 = 0;
  v74 = v22;
  v75 = 0;
  v23 = *(this + 161);
  if (v23 == absl::lts_20240722::BitGenRef::NotAMock)
  {
    v26 = 0;
  }

  else
  {
    if ((v23)(*(this + 160), &absl::lts_20240722::base_internal::FastTypeTag<int ()(absl::lts_20240722::random_internal::UniformDistributionWrapper<int>,std::tuple<int,int>)>::dummy_var, &v73, &v75))
    {
      v24 = v75;
      goto LABEL_29;
    }

    v26 = v73;
    LODWORD(v22) = v74;
  }

  v27 = v22 - v26 - (v22 != 0x80000000);
  v28 = (*(this + 162))(*(this + 160));
  v29 = v27 + 1;
  if (((v27 + 1) & v27) != 0)
  {
    v30 = v28 * v29;
    if (v29 > v30)
    {
        ;
      }
    }

    v31 = HIDWORD(v30);
  }

  else
  {
    LODWORD(v31) = v28 & v27;
  }

  v24 = (v26 + v31);
LABEL_29:
  v32 = *(this + 567);
  v25 = *(v32 + 4 * v24);
  if (operations_research::sat::FeasibilityJumpSolver::ShouldScan(this, a3, *(v32 + 4 * v24)))
  {
    goto LABEL_30;
  }

LABEL_11:
  v18 = *(this + 567);
  v19 = *(v18 + 4 * v24);
  *(*(this + 564) + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v19);
  v20 = *(this + 568);
  v21 = *(v20 - 4);
  v13 = (v20 - 4);
  *(v18 + 4 * v24) = v21;
  *(this + 568) = v13;
  if (v16 == (v13 - v18) >> 2)
  {
    v16 = v24;
  }

  else
  {
    v16 = v16;
  }

  v12 = *(this + 567);
  if (v12 != v13)
  {
    goto LABEL_15;
  }

LABEL_65:
  if (v16 == -1)
  {
    return 0;
  }

  v66 = v12[v16];
  result = 1;
  *(*(this + 564) + ((v66 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v66);
  v12[v16] = *(v13 - 1);
  *(this + 568) = v13 - 1;
  return result;
}

void operations_research::sat::FeasibilityJumpSolver::MarkJumpsThatNeedToBeRecomputed(operations_research::sat::FeasibilityJumpSolver *this, int a2, operations_research::sat::JumpTable *a3)
{
  v4 = *(this + 512);
  v5 = v4[96];
  v6 = v4[97];
  if (v5 == v6)
  {
    goto LABEL_14;
  }

  do
  {
    v7 = *v5;
    if (*v5 == a2)
    {
      v51 = *v5;
      if ((*(*(this + 564) + 8 * (v7 >> 6)) & (1 << v7)) != 0)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v8 = v7 >> 6;
      v9 = 1 << v7;
      if ((*(*(this + 516) + 8 * v8) & (1 << v7)) != 0)
      {
        v51 = *v5;
        if ((*(*(this + 564) + 8 * v8) & v9) != 0)
        {
          goto LABEL_3;
        }
      }

      else
      {
        *(*(a3 + 10) + 8 * v8) |= v9;
        v51 = v7;
        if ((*(*(this + 564) + 8 * v8) & v9) != 0)
        {
          goto LABEL_3;
        }
      }
    }

    if (operations_research::sat::FeasibilityJumpSolver::ShouldScan(this, a3, v7))
    {
      std::vector<int>::push_back[abi:ne200100](this + 4536, &v51);
      *(*(this + 564) + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
    }

LABEL_3:
    ++v5;
  }

  while (v5 != v6);
  v4 = *(this + 512);
LABEL_14:
  v10 = v4[124];
  v11 = v4[125];
  v48 = v11;
  while (v10 != v11)
  {
    v12 = *v10;
    if (v12 >= operations_research::sat::LsEvaluator::NumLinearConstraints(*(this + 512)))
    {
      v13 = *(this + 512);
      v14 = *v10;
      if (operations_research::sat::LsEvaluator::NumLinearConstraints(v13) <= v14)
      {
        v19 = *(v13 + 106) + 24 * (v14 - operations_research::sat::LsEvaluator::NumLinearConstraints(v13));
        v17 = *v19;
        v18 = (*(v19 + 8) - *v19) >> 2;
        if (v18)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v15 = (*(v13 + 45) + 20 * v14);
        v16 = v15[2] + v15[1] + v15[4];
        if (v16)
        {
          v17 = (*(v13 + 48) + 4 * *v15);
          v18 = v16;
LABEL_22:
          v20 = 4 * v18;
          while (2)
          {
            v22 = *v17;
            v23 = *v17;
            v24 = *v17 >> 6;
            if (*v17 == a2)
            {
              v25 = 1 << v23;
              if ((*(*(this + 564) + 8 * v24) & (1 << v23)) == 0)
              {
                goto LABEL_30;
              }
            }

            else
            {
              v25 = 1 << v23;
              *(*(a3 + 10) + 8 * v24) |= 1 << v23;
              if ((*(*(this + 564) + 8 * v24) & (1 << v23)) == 0)
              {
LABEL_30:
                if (!operations_research::Domain::IsFixed((*(this + 513) + 24 * v23)) && ((*(*(a3 + 10) + 8 * v24) & v25) != 0 || *(*(a3 + 7) + 8 * v22) < 0.0))
                {
                  v26 = *(this + 588);
                  if (v26[4] == v26[5] || (*(v26[1] + 8 * v24) & v25) == 0)
                  {
                    v27 = *(this + 512);
                    if (*(v27[121] + 4 * v22) > 0)
                    {
                      goto LABEL_36;
                    }

                    v35 = *(v27[112] + 8 * v22);
                    v36 = operations_research::Domain::Min((*(this + 513) + 24 * v22));
                    if (*(*v27 + 16))
                    {
                      v37 = v27[30];
                      if (0xAAAAAAAAAAAAAAABLL * ((v27[31] - v37) >> 3) > v22)
                      {
                        v38 = (v37 + 24 * v23);
                        v39 = *v38;
                        if (*v38 != v38[1] && !*v39 && *(v39 + 8) * (v36 - v35) < 0)
                        {
                          goto LABEL_36;
                        }
                      }
                    }

                    v40 = *(this + 512);
                    v41 = operations_research::Domain::Max((*(this + 513) + 24 * v23));
                    if (*(*v40 + 16))
                    {
                      v42 = v40[30];
                      if (0xAAAAAAAAAAAAAAABLL * ((v40[31] - v42) >> 3) > v22)
                      {
                        v43 = (v42 + 24 * v23);
                        v44 = *v43;
                        if (*v43 != v43[1] && !*v44 && *(v44 + 8) * (v41 - v35) < 0)
                        {
LABEL_36:
                          v28 = *(this + 568);
                          v29 = *(this + 569);
                          if (v28 < v29)
                          {
                            *v28 = v22;
                            v21 = v28 + 4;
                          }

                          else
                          {
                            v30 = *(this + 567);
                            v31 = v28 - v30;
                            v32 = (v28 - v30) >> 2;
                            v33 = v32 + 1;
                            if ((v32 + 1) >> 62)
                            {
                              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                            }

                            v34 = v29 - v30;
                            if (v34 >> 1 > v33)
                            {
                              v33 = v34 >> 1;
                            }

                            if (v34 >= 0x7FFFFFFFFFFFFFFCLL)
                            {
                              v33 = 0x3FFFFFFFFFFFFFFFLL;
                            }

                            if (v33)
                            {
                              if (!(v33 >> 62))
                              {
                                operator new();
                              }

                              std::__throw_bad_array_new_length[abi:ne200100]();
                            }

                            v45 = (v28 - v30) >> 2;
                            v46 = (4 * v32);
                            v47 = (4 * v32 - 4 * v45);
                            *v46 = v22;
                            v21 = v46 + 1;
                            memcpy(v47, v30, v31);
                            *(this + 567) = v47;
                            *(this + 568) = v21;
                            *(this + 569) = 0;
                            if (v30)
                            {
                              operator delete(v30);
                            }
                          }

                          *(this + 568) = v21;
                          *(*(this + 564) + 8 * v24) |= v25;
                        }
                      }
                    }
                  }
                }
              }
            }

            ++v17;
            v20 -= 4;
            if (!v20)
            {
              break;
            }

            continue;
          }
        }
      }
    }

    v10 += 4;
    v11 = v48;
  }
}

uint64_t operations_research::sat::FeasibilityJumpSolver::DoSomeGeneralIterations(operations_research::sat::FeasibilityJumpSolver *this)
{
  if ((*(this + 4609) & 1) == 0 && !operations_research::sat::LsEvaluator::NumNonLinearConstraints(*(this + 512)))
  {
    return 1;
  }

  v60 = *(this + 512);
  operations_research::sat::LsEvaluator::UpdateAllNonLinearViolations(v60);
  operations_research::sat::LsEvaluator::RecomputeViolatedList(*(this + 512), 0);
  operations_research::sat::FeasibilityJumpSolver::RecomputeVarsToScan(this, (this + 4280));
  v2 = *(this + 586) + *(this + 587) + *(this + 580);
  v61 = v2 + 100000;
  if (__OFSUB__(v2, v2 + 100000))
  {
    return 0;
  }

  while (1)
  {
    v64 = 0;
    v62 = 0.0;
    v63 = 0;
    v3 = operations_research::sat::FeasibilityJumpSolver::ScanRelevantVariables(this, 3, (this + 4280), &v64, &v63, &v62);
    v5 = v3;
    if (!v3)
    {
      break;
    }

    v6 = v64;
LABEL_12:
    ++*(this + 580);
    if (v6 == -1)
    {
      absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(-1, -1, "var != -1");
    }

    v13 = *(*(v60 + 896) + 8 * v6);
    v14 = v63;
    v15 = 4408;
    if (*(this + 4609))
    {
      v15 = 4432;
    }

    operations_research::sat::LsEvaluator::UpdateLinearScores(*(this + 512), v6, v63, *(this + v15), (*(this + v15 + 8) - *(this + v15)) >> 3, *(this + 539), (*(this + 540) - *(this + 539)) >> 3, v4, *(this + 542), (*(this + 543) - *(this + 542)) >> 3);
    operations_research::sat::LsEvaluator::UpdateNonLinearViolations(*(this + 512), v6, v14);
    operations_research::sat::LsEvaluator::UpdateVariableValue(*(this + 512), v6, v14);
    if (v5 & *(this + 4609))
    {
      v16 = *(this + 512);
      v17 = *(v16 + 992);
      v18 = *(v16 + 1000);
      while (v17 != v18)
      {
        if (*(v17 + 1))
        {
          IsViolated = operations_research::sat::LsEvaluator::IsViolated(*(this + 512), *v17);
          v20 = *v17;
          if (IsViolated)
          {
            v21 = *(this + 554);
            v22 = *(*(this + 551) + 8 * v20);
            if (*(v21 + 8 * v20) != v22)
            {
              *(v21 + 8 * v20) = v22;
              v23 = *(this + 557);
              v24 = v20 >> 6;
              v25 = *(v23 + 8 * v24);
              if ((v25 & (1 << v20)) != 0)
              {
                v26 = *(this + 512);
                if (operations_research::sat::LsEvaluator::NumLinearConstraints(v26) > v20)
                {
                  goto LABEL_24;
                }

LABEL_31:
                v34 = *(v26 + 106) + 24 * (v20 - operations_research::sat::LsEvaluator::NumLinearConstraints(v26));
                v29 = *v34;
                v30 = (*(v34 + 8) - *v34) >> 2;
                if (!v30)
                {
                  goto LABEL_17;
                }
              }

              else
              {
                *(v23 + 8 * v24) = v25 | (1 << v20);
                std::vector<int>::push_back[abi:ne200100](this + 4480, v17);
                v20 = *v17;
                v26 = *(this + 512);
                if (operations_research::sat::LsEvaluator::NumLinearConstraints(v26) <= v20)
                {
                  goto LABEL_31;
                }

LABEL_24:
                v27 = (*(v26 + 45) + 20 * v20);
                v28 = v27[2] + v27[1] + v27[4];
                if (!v28)
                {
                  goto LABEL_17;
                }

                v29 = (*(v26 + 48) + 4 * *v27);
                v30 = v28;
              }

              v35 = *(this + 545);
              v36 = 4 * v30;
              do
              {
                v37 = *v29++;
                *(v35 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
                v36 -= 4;
              }

              while (v36);
              goto LABEL_17;
            }
          }

          if (!operations_research::sat::LsEvaluator::IsViolated(*(this + 512), *v17))
          {
            v31 = *v17;
            v32 = *(this + 557);
            v33 = *(v32 + 8 * (v31 >> 6));
            if (((1 << v31) & v33) == 0 && *(*(this + 554) + 8 * v31) == *(*(this + 551) + 8 * v31))
            {
              *(v32 + 8 * (v31 >> 6)) = (1 << v31) | v33;
              std::vector<int>::push_back[abi:ne200100](this + 4480, v17);
            }
          }
        }

LABEL_17:
        v17 += 4;
      }
    }

    v38 = v6 >> 6;
    v39 = 1 << v6;
    if ((*(*(this + 516) + 8 * v38) & (1 << v6)) != 0)
    {
      v40 = -v62;
      *(*(this + 539) + 8 * v6) = v13 - v14;
      *(*(this + 542) + 8 * v6) = v40;
      v41 = *(this + 545);
      v42 = *(v41 + 8 * v38) & ~v39;
    }

    else
    {
      v41 = *(this + 545);
      v42 = *(v41 + 8 * v38) | v39;
    }

    *(v41 + 8 * v38) = v42;
    operations_research::sat::FeasibilityJumpSolver::MarkJumpsThatNeedToBeRecomputed(this, v6, (this + 4280));
    if ((v5 & *(this + 4609)) == 1)
    {
      v43 = *(this + 588);
      v44 = v62;
      v45 = v43[4];
      v46 = v43[5];
      if (v45 != v46)
      {
        v47 = *(v46 - 16);
        if (v47 > v62)
        {
          v47 = v62;
        }

        *(v46 - 16) = v47;
      }

      *(v43[1] + 8 * v38) |= v39;
      LODWORD(v65) = v6;
      *(&v65 + 1) = v13;
      v66 = -v44;
      if (v45 == v46)
      {
        v49 = 0;
        v48 = v44 + 0.0;
      }

      else
      {
        v48 = v44 + *(v46 - 24);
        v49 = *(v46 - 8);
      }

      v67 = v48;
      v68 = 0;
      v69 = v49;
      std::vector<operations_research::sat::CompoundMoveBuilder::UnitMove>::push_back[abi:ne200100]((v43 + 4), &v65);
      v52 = *(this + 588);
      v53 = *(v52 + 32);
      v54 = *(v52 + 40);
      v55 = *(v52 + 32);
      if (v55 != v54 && *(v54 - 3) < 0.0)
      {
        *(this + 581) += (-1431655765 * ((v54 - v55) >> 4));
        v56 = *(v52 + 8);
        v57 = v55;
        do
        {
          v58 = *v57;
          v57 += 12;
          *(v56 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v58);
        }

        while (v57 != v54);
        *(v52 + 40) = v55;
        *(this + 1153) = 0;
      }
    }

LABEL_6:
    if (*(this + 586) + *(this + 587) + *(this + 580) >= v61)
    {
      return 0;
    }
  }

  v7 = *(this + 588);
  v9 = v7[4];
  v8 = v7[5];
  if (v9 != v8)
  {
    ++v7[7];
    v64 = *(v8 - 48);
    v6 = v64;
    v63 = *(v8 - 40);
    v10 = v7[1];
    v11 = (v64 >> 3) & 0x1FFFFFFFFFFFFFF8;
    v12 = *(v10 + v11);
    v62 = *(v8 - 32);
    *(v10 + v11) = v12 & ~(1 << v64);
    v7[5] = v8 - 48;
    if (v9 != v8 - 48)
    {
      ++*(v8 - 56);
    }

    goto LABEL_12;
  }

  v50 = *(this + 4091);
  if ((v50 & 1) == 0 && *(*(this + 512) + 944) != *(*(this + 512) + 952))
  {
    if (*(this + 4609) != 1 || (operations_research::sat::FeasibilityJumpSolver::ResetChangedCompoundWeights(this), (*(this + 4609) & 1) == 0) || (v51 = *(this + 1153) + 1, *(this + 1153) = v51, v51 >= 3))
    {
      *(this + 1153) = 0;
      operations_research::sat::FeasibilityJumpSolver::UpdateViolatedConstraintWeights(this, (this + 4280));
    }

    goto LABEL_6;
  }

  return v50 ^ 1u;
}

void operations_research::sat::FeasibilityJumpSolver::ResetChangedCompoundWeights(operations_research::sat::FeasibilityJumpSolver *this)
{
  if (*(this + 4609) != 1)
  {
    return;
  }

  v36 = v4;
  v37 = v3;
  v38 = v1;
  v39 = v2;
  v6 = *(this + 560);
  v7 = *(this + 561);
  if (v6 == v7)
  {
    goto LABEL_36;
  }

  do
  {
    v8 = *v6;
    v9 = v8;
    *(*(this + 557) + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v8);
    if (operations_research::sat::LsEvaluator::IsViolated(*(this + 512), v8))
    {
      v10 = 1.0;
    }

    else
    {
      v10 = 0.0009765625;
    }

    v11 = v10 * *(*(this + 551) + 8 * v8);
    v12 = *(this + 554);
    if (*(v12 + 8 * v8) != v11)
    {
      *(v12 + 8 * v8) = v11;
      v13 = *(this + 512);
      if (operations_research::sat::LsEvaluator::NumLinearConstraints(v13) <= v9)
      {
        v18 = *(v13 + 106) + 24 * (v9 - operations_research::sat::LsEvaluator::NumLinearConstraints(v13));
        v16 = *v18;
        v17 = (*(v18 + 8) - *v18) >> 2;
        if (!v17)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v14 = (*(v13 + 45) + 20 * v9);
        v15 = v14[2] + v14[1] + v14[4];
        if (!v15)
        {
          goto LABEL_4;
        }

        v16 = (*(v13 + 48) + 4 * *v14);
        v17 = v15;
      }

      v19 = 4 * v17;
      do
      {
        v21 = *v16;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        *(*(this + 545) + 8 * (v21 >> 6)) |= 1 << v21;
        v35 = v21;
        if ((*(*(this + 564) + 8 * (v21 >> 6)) & (1 << v21)) == 0 && !operations_research::Domain::IsFixed((*(this + 513) + 24 * v21)) && ((*(*(this + 545) + 8 * v22) & v23) != 0 || *(*(this + 542) + 8 * v21) < 0.0))
        {
          v24 = *(this + 588);
          if (v24[4] == v24[5] || (*(v24[1] + 8 * v22) & v23) == 0)
          {
            v20 = *(this + 512);
            if (*(v20[121] + 4 * v21) > 0)
            {
              goto LABEL_15;
            }

            v25 = *(v20[112] + 8 * v21);
            v26 = operations_research::Domain::Min((*(this + 513) + 24 * v21));
            if (*(*v20 + 16))
            {
              v27 = v20[30];
              if (0xAAAAAAAAAAAAAAABLL * ((v20[31] - v27) >> 3) > v21)
              {
                v28 = (v27 + 24 * v21);
                v29 = *v28;
                if (*v28 != v28[1] && !*v29 && *(v29 + 8) * (v26 - v25) < 0)
                {
                  goto LABEL_15;
                }
              }
            }

            v30 = *(this + 512);
            v31 = operations_research::Domain::Max((*(this + 513) + 24 * v21));
            if (*(*v30 + 16))
            {
              v32 = v30[30];
              if (0xAAAAAAAAAAAAAAABLL * ((v30[31] - v32) >> 3) > v21)
              {
                v33 = (v32 + 24 * v21);
                v34 = *v33;
                if (*v33 != v33[1] && !*v34 && *(v34 + 8) * (v31 - v25) < 0)
                {
LABEL_15:
                  std::vector<int>::push_back[abi:ne200100](this + 4536, &v35);
                  *(*(this + 564) + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
                }
              }
            }
          }
        }

        ++v16;
        v19 -= 4;
      }

      while (v19);
    }

LABEL_4:
    ++v6;
  }

  while (v6 != v7);
  v6 = *(this + 560);
LABEL_36:
  *(this + 561) = v6;
}

unint64_t operations_research::sat::FeasibilityJumpSolver::ShouldScan(operations_research::sat::FeasibilityJumpSolver *this, const operations_research::sat::JumpTable *a2, int a3)
{
  if (operations_research::Domain::IsFixed((*(this + 513) + 24 * a3)))
  {
    return 0;
  }

  v6 = a3 >> 6;
  if ((*(*(a2 + 10) + 8 * v6) & (1 << a3)) == 0 && *(*(a2 + 7) + 8 * a3) >= 0.0)
  {
    return 0;
  }

  v7 = *(this + 588);
  if (v7[4] != v7[5] && (*(v7[1] + 8 * v6) & (1 << a3)) != 0)
  {
    return 0;
  }

  v8 = *(this + 512);
  if (*(v8[121] + 4 * a3) > 0)
  {
    return 1;
  }

  v10 = *(v8[112] + 8 * a3);
  v11 = operations_research::Domain::Min((*(this + 513) + 24 * a3));
  if (*(*v8 + 16))
  {
    v12 = v8[30];
    if (0xAAAAAAAAAAAAAAABLL * ((v8[31] - v12) >> 3) > a3)
    {
      v13 = (v12 + 24 * a3);
      v14 = *v13;
      if (*v13 != v13[1] && !*v14 && *(v14 + 8) * (v11 - v10) < 0)
      {
        return 1;
      }
    }
  }

  v15 = *(this + 512);
  v16 = operations_research::Domain::Max((*(this + 513) + 24 * a3));
  if ((*(*v15 + 16) & 1) == 0)
  {
    return 0;
  }

  v17 = v15[30];
  if (0xAAAAAAAAAAAAAAABLL * ((v15[31] - v17) >> 3) <= a3)
  {
    return 0;
  }

  v18 = (v17 + 24 * a3);
  v19 = *v18;
  if (*v18 == v18[1] || *v19)
  {
    return 0;
  }

  else
  {
    return (*(v19 + 8) * (v16 - v10)) >> 63;
  }
}

void std::vector<operations_research::sat::CompoundMoveBuilder::UnitMove>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    v6 = a2[2];
    v3[1] = a2[1];
    v3[2] = v6;
    *v3 = v5;
    v7 = v3 + 3;
LABEL_3:
    *(a1 + 8) = v7;
    return;
  }

  v8 = *a1;
  v9 = v3 - *a1;
  v10 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 4) + 1;
  if (v10 > 0x555555555555555)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v11 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v8) >> 4);
  if (2 * v11 > v10)
  {
    v10 = 2 * v11;
  }

  if (v11 >= 0x2AAAAAAAAAAAAAALL)
  {
    v12 = 0x555555555555555;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (v12 <= 0x555555555555555)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v13 = (16 * (v9 >> 4));
  v14 = a2[1];
  *v13 = *a2;
  v13[1] = v14;
  v13[2] = a2[2];
  v7 = v13 + 3;
  v15 = v13 - v9;
  memcpy(v13 - v9, v8, v9);
  *a1 = v15;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (!v8)
  {
    goto LABEL_3;
  }

  operator delete(v8);
  *(a1 + 8) = v7;
}

uint64_t operations_research::sat::FeasibilityJumpSolver::IsDone(operations_research::sat::FeasibilityJumpSolver *this)
{
  v1 = atomic_load(this + 4089);
  if ((v1 & 1) == 0)
  {
    return 1;
  }

  if (*(this + 8) != 1)
  {
    return 0;
  }

  v2 = atomic_load((*(this + 156) + 680));
  return v2 & 1;
}

uint64_t operations_research::sat::FeasibilityJumpSolver::TaskIsAvailable(operations_research::sat::FeasibilityJumpSolver *this)
{
  v1 = atomic_load(this + 4089);
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  if (*(this + 8) == 1)
  {
    v3 = atomic_load((*(this + 156) + 680));
    if (v3)
    {
      return 0;
    }
  }

  v4 = atomic_load(this + 4090);
  if (v4)
  {
    return 0;
  }

  if (operations_research::sat::SharedResponseManager::ProblemIsSolved(*(this + 156)))
  {
    return 0;
  }

  v5 = *(this + 155);
  absl::lts_20240722::Mutex::Lock(v5);
  v6 = operations_research::TimeLimit::LimitReached(*(v5 + 8));
  absl::lts_20240722::Mutex::Unlock(v5);
  if (v6)
  {
    return 0;
  }

  v8 = *(this + 156);
  absl::lts_20240722::Mutex::Lock(v8 + 15);
  v10 = v8[23];
  v9 = v8[24];
  absl::lts_20240722::Mutex::Unlock((v8 + 15));
  return (((v9 - v10) >> 6) > 0) ^ (*(this + 8) != 2);
}

unint64_t absl::lts_20240722::log_uniform_int_distribution<long long>::Generate<absl::lts_20240722::BitGenRef>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = (a2[2])(*a2);
  v7 = v5 + 1;
  if (((v5 + 1) & v5) != 0)
  {
    v8 = v6 * v7;
    if (v7 > v8)
    {
        ;
      }
    }

    v9 = HIDWORD(v8);
    if (HIDWORD(v8))
    {
      goto LABEL_4;
    }

    return 0;
  }

  LODWORD(v9) = v6 & v5;
  if ((v6 & v5) == 0)
  {
    return 0;
  }

LABEL_4:
  v10 = v9 - 1;
  v11 = *(a3 + 16);
  if (v11 == 2)
  {
    v12 = 1 << v10;
    v13 = v9 <= 63;
    v14 = -1 << v9;
    if (v13)
    {
      v15 = ~v14;
    }

    else
    {
      v15 = -1;
    }
  }

  else
  {
    v17 = v11;
    v18 = pow(v11, v10);
    v12 = v18;
    v19 = v18 * v17 + -1.0;
    if (v18 > 1.84467441e19)
    {
      v12 = -1;
    }

    if (v19 <= 1.84467441e19)
    {
      v15 = v19;
    }

    else
    {
      v15 = -1;
    }
  }

  v20 = *(a3 + 24);
  if (v12 >= v20)
  {
    v21 = *(a3 + 24);
  }

  else
  {
    v21 = v12;
  }

  if (v15 >= v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = v15;
  }

  v23 = v22 - v21;
  v24 = (a2[2])(*a2);
  v25 = v23 + 1;
  if (((v23 + 1) & v23) == 0)
  {
    return (v24 & v23) + v21;
  }

  if (v25 > v24 * v25)
  {
      ;
    }
  }

  return ((v24 * v25) >> 64) + v21;
}

uint64_t std::__function::__func<operations_research::sat::FeasibilityJumpSolver::GenerateTask(long long)::$_0,std::allocator<operations_research::sat::FeasibilityJumpSolver::GenerateTask(long long)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F41328;
  a2[1] = v2;
  return result;
}

void std::__function::__func<operations_research::sat::FeasibilityJumpSolver::GenerateTask(long long)::$_0,std::allocator<operations_research::sat::FeasibilityJumpSolver::GenerateTask(long long)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v100 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  if ((*(v1 + 4088) & 1) == 0)
  {
    operations_research::sat::FeasibilityJumpSolver::Initialize(*(a1 + 8));
  }

  if (*(v1 + 32) == 2)
  {
    v2 = *(v1 + 1248);
    absl::lts_20240722::Mutex::Lock(v2 + 15);
    v4 = v2[23];
    v3 = v2[24];
    absl::lts_20240722::Mutex::Unlock((v2 + 15));
    if (((v3 - v4) >> 6) < 1)
    {
      std::__function::__func<operations_research::sat::FeasibilityJumpSolver::GenerateTask(long long)::$_0,std::allocator<operations_research::sat::FeasibilityJumpSolver::GenerateTask(long long)::$_0>,void ()(void)>::operator()(v3 - v4);
    }

    v96.__r_.__value_.__r.__words[0] = v1 + 1280;
    v96.__r_.__value_.__l.__size_ = absl::lts_20240722::BitGenRef::MockCall<operations_research::sat::ModelRandomGenerator>;
    v96.__r_.__value_.__r.__words[2] = absl::lts_20240722::BitGenRef::ImplFn<operations_research::sat::ModelRandomGenerator>;
    operations_research::sat::SharedSolutionRepository<long long>::GetRandomBiasedSolution(v2 + 11, &v96, &v97);
    if (v97.__r_.__value_.__l.__data_ >= *(v1 + 4736))
    {
      if (*(v1 + 4576) > 0)
      {
        v6 = 0;
        if ((v99 & 0x80000000) == 0)
        {
          goto LABEL_29;
        }

LABEL_28:
        operator delete(v98);
LABEL_29:
        if (v97.__r_.__value_.__l.__size_)
        {
          v97.__r_.__value_.__r.__words[2] = v97.__r_.__value_.__l.__size_;
          operator delete(v97.__r_.__value_.__l.__size_);
        }

        v7 = v6;
        if (*(**(v1 + 256) + 16))
        {
          goto LABEL_32;
        }

LABEL_11:
        v8 = *(v1 + 1256);
        if (!v8)
        {
          goto LABEL_55;
        }

        goto LABEL_34;
      }

      *(v1 + 4576) = *(v1 + 1144);
      ++*(v1 + 4664);
      operations_research::sat::FeasibilityJumpSolver::PerturbateCurrentSolution(v1);
    }

    else
    {
      operations_research::sat::LsEvaluator::OverwriteCurrentSolution(*(v1 + 4096), v97.__r_.__value_.__l.__size_, (v97.__r_.__value_.__r.__words[2] - v97.__r_.__value_.__l.__size_) >> 3);
      *(v1 + 4736) = v97.__r_.__value_.__r.__words[0];
      if (dword_27E25CD90 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&operations_research::sat::FeasibilityJumpSolver::GenerateTask(long long)::$_0::operator() const(void)::{lambda(void)#1}::operator() const(void)::site, dword_27E25CD90))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v95, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/feasibility_jump.cc", 373);
        v88 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v95, 2);
        if (*(v1 + 31) < 0)
        {
          std::string::__init_copy_ctor_external(&v96, *(v1 + 8), *(v1 + 16));
        }

        else
        {
          v89 = *(v1 + 8);
          v96.__r_.__value_.__r.__words[2] = *(v1 + 24);
          *&v96.__r_.__value_.__l.__data_ = v89;
        }

        v90 = absl::lts_20240722::log_internal::LogMessage::operator<<(v88, &v96);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v90, " import a solution with value ", 0x1EuLL);
        v94[0] = v97.__r_.__value_.__r.__words[0];
        absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v90, v94);
        if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v96.__r_.__value_.__l.__data_);
        }

        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v95);
      }

      ++*(v1 + 4680);
      *(v1 + 4576) = *(v1 + 1144);
    }

    v6 = 1;
    if ((v99 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v5 = *(*(v1 + 4096) + 792) * 0.000000005;
  if (v5 < *(v1 + 4560) || *(v1 + 4688) < *(v1 + 4568))
  {
    v6 = 0;
    v7 = 0;
    if (*(**(v1 + 256) + 16))
    {
      goto LABEL_32;
    }

    goto LABEL_11;
  }

  v9 = *(v1 + 4672);
  if (v9 && *(v1 + 1017) != 1)
  {
    if (*(v1 + 624) <= 0.0)
    {
      v6 = 0;
      goto LABEL_20;
    }

    ++*(v1 + 4664);
    operations_research::sat::FeasibilityJumpSolver::PerturbateCurrentSolution(v1);
  }

  else
  {
    *(v1 + 4672) = v9 + 1;
    operations_research::sat::FeasibilityJumpSolver::ResetCurrentSolution(v1);
  }

  v6 = 1;
LABEL_20:
  v10 = *(v1 + 1156);
  if (v10 <= 1)
  {
    v10 = 1;
  }

  v11 = *(v1 + 4664) + *(v1 + 4672);
  while (v11 >= 3)
  {
    v12 = v11 + 1;
    v13 = __clz(v12);
    v11 = v12 - (1 << (v13 ^ 0x3F));
    if (!v11)
    {
      v14 = 1 << (62 - v13);
      goto LABEL_116;
    }
  }

  v14 = 1;
LABEL_116:
  *(v1 + 4560) = v5 + (v14 * v10);
  *(v1 + 4568) = *(v1 + 4688) + 10 * v10;
  v7 = v6;
  if ((*(**(v1 + 256) + 16) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_32:
  InnerObjectiveLowerBound = operations_research::sat::SharedResponseManager::GetInnerObjectiveLowerBound(*(v1 + 1248));
  InnerObjectiveUpperBound = operations_research::sat::SharedResponseManager::GetInnerObjectiveUpperBound(*(v1 + 1248));
  if (InnerObjectiveUpperBound < InnerObjectiveLowerBound)
  {
    goto LABEL_112;
  }

  v7 = v6 | operations_research::sat::LsEvaluator::ReduceObjectiveBounds(*(v1 + 4096), InnerObjectiveLowerBound, InnerObjectiveUpperBound);
  v8 = *(v1 + 1256);
  if (v8)
  {
LABEL_34:
    operations_research::sat::SharedBoundsManager::UpdateDomains(v8, (v1 + 4104));
    v17 = *(v1 + 4104);
    if (*(v1 + 4112) != v17)
    {
      v18 = 0;
      v19 = 1;
      do
      {
        if (operations_research::Domain::IsEmpty((v17 + 24 * v18)))
        {
          goto LABEL_112;
        }

        v17 = *(v1 + 4104);
        v21 = (v17 + 24 * v18);
        v22 = *v21;
        v23 = *v21 >> 1;
        if (v23 == 2)
        {
          v26 = v21 + 1;
          if (v22)
          {
            v26 = *v26;
            if (v26[1] != *v26)
            {
LABEL_53:
              v30 = (*(v1 + 4128) + 8 * (v18 >> 6));
              v31 = 1 << v18;
LABEL_54:
              v20 = *v30 & ~v31;
              goto LABEL_37;
            }

            v27 = v26 + 3;
          }

          else
          {
            if (v21[2] != v21[1])
            {
              goto LABEL_53;
            }

            v27 = v21 + 4;
          }

          v32 = *v27;
          v33 = v26[2];
          v30 = (*(v1 + 4128) + 8 * (v18 >> 6));
          v31 = 1 << v18;
          if (v32 != v33)
          {
            goto LABEL_54;
          }
        }

        else
        {
          if (v23 != 1)
          {
            goto LABEL_53;
          }

          v24 = v21 + 1;
          if (v22)
          {
            v24 = *v24;
            v25 = v24 + 1;
          }

          else
          {
            v25 = v21 + 2;
          }

          v28 = *v25;
          v29 = *v24 + 1;
          v30 = (*(v1 + 4128) + 8 * (v18 >> 6));
          v31 = 1 << v18;
          if (v28 != v29)
          {
            goto LABEL_54;
          }
        }

        v20 = *v30 | v31;
LABEL_37:
        *v30 = v20;
        v18 = v19++;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((*(v1 + 4112) - v17) >> 3) > v18);
    }
  }

LABEL_55:
  v34 = *(v1 + 4096);
  v35 = *(v34 + 896);
  if (*(v34 + 904) != v35)
  {
    v36 = 0;
    v37 = 1;
    do
    {
      v38 = *(v35 + 8 * v36);
      v39 = operations_research::Domain::ClosestValue((*(v1 + 4104) + 24 * v36), v38);
      v35 = *(v34 + 896);
      if (v39 != v38)
      {
        *(v35 + 8 * v36) = v39;
        v7 = 1;
      }

      v36 = v37++;
    }

    while (v36 < (*(v34 + 904) - v35) >> 3);
  }

  v40 = *(v1 + 4704);
  v41 = *(v40 + 32);
  v42 = *(v40 + 40);
  if (v41 == v42)
  {
    v46 = 0;
    v47 = v1 + 4096;
    if (v7)
    {
      goto LABEL_67;
    }

LABEL_70:
    if ((v6 & 1) == 0)
    {
      if (!v46)
      {
        goto LABEL_102;
      }

      goto LABEL_91;
    }

    goto LABEL_71;
  }

  v43 = *(v1 + 4104);
  do
  {
    v44 = operations_research::Domain::Contains((v43 + 24 * *v41), *(v41 + 1));
    v41 += 12;
  }

  while (v41 != v42 && v44);
  v46 = !v44;
  v47 = v1 + 4096;
  if ((v7 & 1) == 0)
  {
    goto LABEL_70;
  }

LABEL_67:
  operations_research::sat::LsEvaluator::ComputeAllViolations(*(v1 + 4096));
  if (v6)
  {
LABEL_71:
    *(v1 + 4504) = 0x3FF0000000000000;
    v48 = operations_research::sat::LsEvaluator::NumEvaluatorConstraints(*(v1 + 4096));
    v97.__r_.__value_.__r.__words[0] = 0x3FF0000000000000;
    std::vector<double>::assign((v1 + 4408), v48, &v97);
    v97.__r_.__value_.__r.__words[0] = 0x3FE0000000000000;
    v96.__r_.__value_.__s.__data_[0] = 0;
    v49 = *(v1 + 1288);
    if (v49 == absl::lts_20240722::BitGenRef::NotAMock)
    {
      v51 = 0.5;
      goto LABEL_78;
    }

    if ((v49)(*(v1 + 1280), &absl::lts_20240722::base_internal::FastTypeTag<BOOL ()(absl::lts_20240722::bernoulli_distribution,std::tuple<double>)>::dummy_var, &v97, &v96))
    {
      v50 = v96.__r_.__value_.__s.__data_[0];
    }

    else
    {
      v51 = *&v97.__r_.__value_.__l.__data_;
LABEL_78:
      while (1)
      {
        v52 = (*(v1 + 1296))(*(v1 + 1280));
        v53 = vcvtd_n_s64_f64(v51, 0x20uLL);
        if (v52 != v53)
        {
          break;
        }

        v50 = 0;
        v51 = (v51 + v53 * -2.32830644e-10) * 4294967300.0;
        if (v51 == 0.0)
        {
          goto LABEL_82;
        }
      }

      v50 = v52 < v53;
    }

LABEL_82:
    *(v47 + 512) = v50 & 1;
    v54 = *(v1 + 1160);
    *&v97.__r_.__value_.__l.__data_ = v54;
    v96.__r_.__value_.__s.__data_[0] = 0;
    v55 = *(v1 + 1288);
    if (v55 == absl::lts_20240722::BitGenRef::NotAMock)
    {
      goto LABEL_86;
    }

    if ((v55)(*(v1 + 1280), &absl::lts_20240722::base_internal::FastTypeTag<BOOL ()(absl::lts_20240722::bernoulli_distribution,std::tuple<double>)>::dummy_var, &v97, &v96))
    {
      v56 = v96.__r_.__value_.__s.__data_[0];
    }

    else
    {
      v54 = *&v97.__r_.__value_.__l.__data_;
LABEL_86:
      while (1)
      {
        v57 = (*(v1 + 1296))(*(v1 + 1280));
        v58 = vcvtd_n_s64_f64(v54, 0x20uLL);
        if (v57 != v58)
        {
          break;
        }

        v56 = 0;
        v54 = (v54 + v58 * -2.32830644e-10) * 4294967300.0;
        if (v54 == 0.0)
        {
          goto LABEL_90;
        }
      }

      v56 = v57 < v58;
    }

LABEL_90:
    *(v47 + 513) = v56 & 1;
  }

LABEL_91:
  v59 = *(v1 + 4704);
  v60 = v59[4];
  v61 = v59[5];
  if (v60 != v61)
  {
    v62 = v59[1];
    v63 = v59[4];
    do
    {
      v64 = *v63;
      v63 += 12;
      *(v62 + ((v64 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v64);
    }

    while (v63 != v61);
  }

  v59[5] = v60;
  if (*(v47 + 513) == 1)
  {
    std::vector<double>::__assign_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>((v1 + 4432), *(v1 + 4408), *(v1 + 4416), (*(v1 + 4416) - *(v1 + 4408)) >> 3);
    if (*(v1 + 4416) == *(v1 + 4408))
    {
      v67 = 0;
    }

    else
    {
      v65 = 0;
      v66 = 1;
      do
      {
        if (!operations_research::sat::LsEvaluator::IsViolated(*(v1 + 4096), v66 - 1))
        {
          *(*(v1 + 4432) + 8 * v65) = *(*(v1 + 4432) + 8 * v65) * 0.0009765625;
        }

        v65 = v66;
        v67 = (*(v1 + 4416) - *(v1 + 4408)) >> 3;
        ++v66;
      }

      while (v67 > v65);
    }

    *(v1 + 4488) = *(v1 + 4480);
    v97.__r_.__value_.__s.__data_[0] = 0;
    std::vector<BOOL>::assign(v1 + 4456, v67, &v97);
    *(v1 + 4612) = 0;
  }

LABEL_102:
  ++*(v1 + 4616);
  if (operations_research::sat::FeasibilityJumpSolver::DoSomeLinearIterations(v1) && operations_research::sat::FeasibilityJumpSolver::DoSomeGeneralIterations(v1))
  {
    IsFeasible = operations_research::sat::SolutionIsFeasible(**(v1 + 256), *(*(v1 + 4096) + 896), (*(*(v1 + 4096) + 904) - *(*(v1 + 4096) + 896)) >> 3, 0, 0);
    v70 = *(v1 + 1248);
    if (!IsFeasible)
    {
      if (*(v1 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v97, *(v1 + 8), *(v1 + 16));
      }

      else
      {
        v81 = *(v1 + 8);
        v97.__r_.__value_.__r.__words[2] = *(v1 + 24);
        *&v97.__r_.__value_.__l.__data_ = v81;
      }

      if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v86 = &v97;
      }

      else
      {
        v86 = v97.__r_.__value_.__r.__words[0];
      }

      if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v97.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v97.__r_.__value_.__l.__size_;
      }

      operations_research::sat::SharedResponseManager::LogMessage(v70, v86, size, "infeasible solution. Aborting.", 30);
      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v97.__r_.__value_.__l.__data_);
      }

      atomic_store(0, (v1 + 4089));
      goto LABEL_109;
    }

    v71 = *(v1 + 4096);
    v72 = *(v71 + 896);
    v73 = *(v71 + 904);
    if (*(v1 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v92, *(v1 + 8), *(v1 + 16));
    }

    else
    {
      v74 = *(v1 + 8);
      v92.__r_.__value_.__r.__words[2] = *(v1 + 24);
      *&v92.__r_.__value_.__l.__data_ = v74;
    }

    v82 = HIBYTE(v92.__r_.__value_.__r.__words[2]);
    v83 = &v92;
    if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v82 = v92.__r_.__value_.__l.__size_;
      v83 = v92.__r_.__value_.__r.__words[0];
    }

    v97.__r_.__value_.__r.__words[0] = v83;
    v97.__r_.__value_.__l.__size_ = v82;
    v96.__r_.__value_.__r.__words[0] = "(";
    v96.__r_.__value_.__l.__size_ = 1;
    operations_research::sat::FeasibilityJumpSolver::OneLineStats(v1, v69, &v91);
    v84 = HIBYTE(v91.__r_.__value_.__r.__words[2]);
    if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v85 = &v91;
    }

    else
    {
      v85 = v91.__r_.__value_.__r.__words[0];
    }

    if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v84 = v91.__r_.__value_.__l.__size_;
    }

    v95[0] = v85;
    v95[1] = v84;
    v94[0] = ")";
    v94[1] = 1;
    absl::lts_20240722::StrCat(&v97.__r_.__value_.__l.__data_, &v96, v95, v94, &__p);
    operations_research::sat::SharedResponseManager::NewSolution(v70, v72, (v73 - v72) >> 3, &__p, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v91.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_130:
        if ((SHIBYTE(v92.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_131:
          v75 = *(v1 + 1144);
          goto LABEL_108;
        }

LABEL_144:
        operator delete(v92.__r_.__value_.__l.__data_);
        goto LABEL_131;
      }
    }

    else if ((SHIBYTE(v91.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_130;
    }

    operator delete(v91.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v92.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_144;
  }

  v75 = *(v1 + 4576) - 1;
LABEL_108:
  *(v1 + 4576) = v75;
LABEL_109:
  v76 = *(*(v1 + 4096) + 792) * 0.000000005;
  v77 = *(v1 + 40);
  v78 = v76 - v77;
  if (v76 - v77 > 0.0)
  {
    *(v1 + 40) = v77 + v78;
    operations_research::TimeDistribution::AddTimeInSec(v1 + 152, v76 - v77);
  }

  v79 = *(v1 + 1240);
  absl::lts_20240722::Mutex::Lock(v79);
  *(v79[1] + 112) = v78 + *(v79[1] + 112);
  absl::lts_20240722::Mutex::Unlock(v79);
  atomic_store(0, (v1 + 4090));
LABEL_112:
  v80 = *MEMORY[0x277D85DE8];
}

{
  absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>((a1 >> 6), 0, "repo.NumSolutions() > 0");
}

void sub_23CB99880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  operations_research::sat::SharedSolutionRepository<long long>::Solution::~Solution(v17 - 192);
  _Unwind_Resume(a1);
}

void sub_23CB9989C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  operations_research::sat::SharedSolutionRepository<long long>::Solution::~Solution(v17 - 192);
  _Unwind_Resume(a1);
}

void sub_23CB998E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a25);
  operations_research::sat::SharedSolutionRepository<long long>::Solution::~Solution(v36 - 192);
  _Unwind_Resume(a1);
}

void sub_23CB9990C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
    if (a15 < 0)
    {
LABEL_5:
      operator delete(a10);
      if (a21 < 0)
      {
LABEL_8:
        operator delete(a16);
        _Unwind_Resume(a1);
      }

LABEL_9:
      _Unwind_Resume(a1);
    }
  }

  else if (a15 < 0)
  {
    goto LABEL_5;
  }

  if (a21 < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_9;
}

void sub_23CB999B0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<operations_research::sat::FeasibilityJumpSolver::GenerateTask(long long)::$_0,std::allocator<operations_research::sat::FeasibilityJumpSolver::GenerateTask(long long)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat21FeasibilityJumpSolver12GenerateTaskExE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat21FeasibilityJumpSolver12GenerateTaskExE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat21FeasibilityJumpSolver12GenerateTaskExE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat21FeasibilityJumpSolver12GenerateTaskExE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

char *std::vector<double>::__assign_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v6 >> 2;
      if (v6 >> 2 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF8;
      v11 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 3)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

__n128 std::__function::__func<operations_research::sat::FeasibilityJumpSolver::ComputeLinearJump(int)::$_0,std::allocator<operations_research::sat::FeasibilityJumpSolver::ComputeLinearJump(int)::$_0>,double ()(long long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F413A8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

double std::__function::__func<operations_research::sat::FeasibilityJumpSolver::ComputeLinearJump(int)::$_0,std::allocator<operations_research::sat::FeasibilityJumpSolver::ComputeLinearJump(int)::$_0>,double ()(long long)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = 4408;
  if (*(v3 + 4609))
  {
    v4 = 4432;
  }

  v5 = (v3 + v4);
  v6 = *v5;
  v7 = *(a1 + 16);
  v8 = (v5[1] - *v5) >> 3;
  v9 = v2 - *(**(a1 + 24) + 8 * v7);
  ++*(v3 + 4696);
  v10 = operations_research::sat::LinearIncrementalEvaluator::WeightedViolationDelta((*(v3 + 4096) + 176), v6, v8, v7, v9);
  v11 = *(v3 + 4096);
  v12 = 0.0;
  if (*(*v11 + 16))
  {
    v14 = v11 + 30;
    v13 = v11[30];
    if (0xAAAAAAAAAAAAAAABLL * ((v14[1] - v13) >> 3) > v7)
    {
      v15 = (v13 + 24 * v7);
      v16 = *v15;
      if (*v15 != v15[1] && !*v16)
      {
        v12 = (*(v16 + 8) * v9);
      }
    }
  }

  return v10 + v12 * 1.08420217e-19;
}

uint64_t std::__function::__func<operations_research::sat::FeasibilityJumpSolver::ComputeLinearJump(int)::$_0,std::allocator<operations_research::sat::FeasibilityJumpSolver::ComputeLinearJump(int)::$_0>,double ()(long long)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat21FeasibilityJumpSolver17ComputeLinearJumpEiE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat21FeasibilityJumpSolver17ComputeLinearJumpEiE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat21FeasibilityJumpSolver17ComputeLinearJumpEiE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat21FeasibilityJumpSolver17ComputeLinearJumpEiE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__function::__func<operations_research::sat::FeasibilityJumpSolver::ComputeLinearJump(int)::$_1,std::allocator<operations_research::sat::FeasibilityJumpSolver::ComputeLinearJump(int)::$_1>,double ()(long long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F41438;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

double std::__function::__func<operations_research::sat::FeasibilityJumpSolver::ComputeLinearJump(int)::$_1,std::allocator<operations_research::sat::FeasibilityJumpSolver::ComputeLinearJump(int)::$_1>,double ()(long long)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = 4408;
  if (*(v3 + 4609))
  {
    v4 = 4432;
  }

  v5 = (v3 + v4);
  v6 = *v5;
  v7 = *(a1 + 16);
  v8 = (v5[1] - *v5) >> 3;
  v9 = v2 - *(**(a1 + 24) + 8 * v7);
  ++*(v3 + 4696);
  v10 = operations_research::sat::LinearIncrementalEvaluator::WeightedViolationDelta((*(v3 + 4096) + 176), v6, v8, v7, v9);
  v11 = *(v3 + 4096);
  v12 = 0.0;
  if (*(*v11 + 16))
  {
    v14 = v11 + 30;
    v13 = v11[30];
    if (0xAAAAAAAAAAAAAAABLL * ((v14[1] - v13) >> 3) > v7)
    {
      v15 = (v13 + 24 * v7);
      v16 = *v15;
      if (*v15 != v15[1] && !*v16)
      {
        v12 = (*(v16 + 8) * v9);
      }
    }
  }

  return v10 + v12 * 1.08420217e-19;
}

uint64_t std::__function::__func<operations_research::sat::FeasibilityJumpSolver::ComputeLinearJump(int)::$_1,std::allocator<operations_research::sat::FeasibilityJumpSolver::ComputeLinearJump(int)::$_1>,double ()(long long)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat21FeasibilityJumpSolver17ComputeLinearJumpEiE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat21FeasibilityJumpSolver17ComputeLinearJumpEiE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat21FeasibilityJumpSolver17ComputeLinearJumpEiE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat21FeasibilityJumpSolver17ComputeLinearJumpEiE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

double absl::lts_20240722::functional_internal::InvokeObject<operations_research::sat::FeasibilityJumpSolver::ComputeGeneralJump(int)::$_0,double,long long>(unsigned int **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a1[1];
  v5 = 1102;
  if (*(*a1 + 4609))
  {
    v5 = 1108;
  }

  v6 = &v3[v5];
  v7 = *v6;
  v8 = (v6[1] - *v6) >> 3;
  ++*(v3 + 587);
  v9 = operations_research::sat::LinearIncrementalEvaluator::WeightedViolationDelta((*(v3 + 512) + 176), v7, v8, v4, a2);
  v10 = operations_research::sat::LsEvaluator::WeightedNonLinearViolationDelta(*(v3 + 512), v7, v8, v4, a2);
  v11 = *(v3 + 512);
  v12 = 0.0;
  if (*(*v11 + 16))
  {
    v14 = v11 + 30;
    v13 = v11[30];
    if (0xAAAAAAAAAAAAAAABLL * ((v14[1] - v13) >> 3) > v4)
    {
      v15 = (v13 + 24 * v4);
      v16 = *v15;
      if (*v15 != v15[1] && !*v16)
      {
        v12 = (*(v16 + 8) * a2);
      }
    }
  }

  return v9 + v10 + v12 * 1.08420217e-19;
}

void operations_research::sat::FeasibilityPump::FeasibilityPump(operations_research::sat::FeasibilityPump *this, operations_research::sat::Model *a2)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 4) = 0;
  *(this + 5) = 0x3FF0000000000000;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  operations_research::glop::LinearProgram::LinearProgram((this + 80));
  operations_research::glop::RevisedSimplex::RevisedSimplex((this + 528));
  *(this + 2644) = 0;
  *(this + 1321) = 0u;
  *(this + 1320) = 0u;
  *(this + 1319) = 0u;
  *(this + 1318) = 0u;
  operations_research::glop::SparseMatrixScaler::SparseMatrixScaler((this + 21160));
  __asm { FMOV            V0.2D, #1.0 }

  *(this + 1326) = _Q0;
  *(this + 2654) = 0;
  *(this + 2656) = 0;
  *(this + 2655) = 0;
  *(this + 21256) = xmmword_23CE306D0;
  *(this + 21288) = 0u;
  *(this + 21304) = 0u;
  *(this + 21320) = 0u;
  *(this + 21336) = 0u;
  *(this + 21345) = 0u;
  *(this + 2671) = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2);
  *(this + 2672) = operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(a2);
  *(this + 2673) = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
  *(this + 2674) = operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a2);
  *(this + 2675) = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a2);
  v9 = *(a2 + 3);
  if (v9 > 1)
  {
    v11 = 0;
    _X11 = *(a2 + 5);
    __asm { PRFM            #4, [X11] }

    v14 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedIncompleteSolutionManager>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedIncompleteSolutionManager>(void)::d));
    v15 = vdup_n_s8(v14 & 0x7F);
    v16 = ((v14 >> 7) ^ (_X11 >> 12)) & v9;
    v17 = *(_X11 + v16);
    v18 = vceq_s8(v17, v15);
    if (!v18)
    {
      goto LABEL_10;
    }

LABEL_7:
    v19 = *(a2 + 6);
    while (1)
    {
      v20 = (v16 + (__clz(__rbit64(v18)) >> 3)) & v9;
      if (*(v19 + 16 * v20) == &gtl::FastTypeId<operations_research::sat::SharedIncompleteSolutionManager>(void)::d)
      {
        break;
      }

      v18 &= ((v18 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v18)
      {
LABEL_10:
        while (!*&vceq_s8(v17, 0x8080808080808080))
        {
          v11 += 8;
          v16 = (v11 + v16) & v9;
          v17 = *(_X11 + v16);
          v18 = vceq_s8(v17, v15);
          if (v18)
          {
            goto LABEL_7;
          }
        }

LABEL_16:
        v21 = 0;
LABEL_17:
        *(this + 2676) = v21;
        *(this + 2677) = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
        *(this + 2678) = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerDomains>(a2);
        v22 = *(a2 + 3);
        if (v22 > 1)
        {
          v26 = 0;
          _X11 = *(a2 + 5);
          __asm { PRFM            #4, [X11] }

          v29 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::CpModelMapping>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::CpModelMapping>(void)::d));
          v30 = vdup_n_s8(v29 & 0x7F);
          v31 = ((v29 >> 7) ^ (_X11 >> 12)) & v22;
          v32 = *(_X11 + v31);
          v33 = vceq_s8(v32, v30);
          if (!v33)
          {
            goto LABEL_26;
          }

LABEL_23:
          v34 = *(a2 + 6);
          while (1)
          {
            v35 = (v31 + (__clz(__rbit64(v33)) >> 3)) & v22;
            if (*(v34 + 16 * v35) == &gtl::FastTypeId<operations_research::sat::CpModelMapping>(void)::d)
            {
              break;
            }

            v33 &= ((v33 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v33)
            {
LABEL_26:
              while (!*&vceq_s8(v32, 0x8080808080808080))
              {
                v26 += 8;
                v31 = (v26 + v31) & v22;
                v32 = *(_X11 + v31);
                v33 = vceq_s8(v32, v30);
                if (v33)
                {
                  goto LABEL_23;
                }
              }

LABEL_29:
              v25 = 0;
LABEL_31:
              *(this + 2679) = v25;
              *(this + 10720) = 0;
              *(this + 10756) = 0;
              *(this + 2699) = 0;
              *(this + 1341) = 0u;
              *(this + 1342) = 0u;
              *(this + 1343) = 0u;
              *(this + 21528) = 0u;
              *(this + 21544) = 0u;
              *(this + 21560) = 0u;
              *(this + 5400) = 20;
              operations_research::glop::GlopParameters::GlopParameters(v36, 0);
              v38 = 0;
              v39 = 2000;
              v37 |= 0x2000001u;
              operations_research::glop::RevisedSimplex::SetParameters((this + 528), v36);
            }
          }

          v23 = (v34 + 16 * v35);
          v25 = (_X11 + v35);
          if (!(_X11 + v35))
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (*(a2 + 4) < 2uLL)
          {
            goto LABEL_29;
          }

          v24 = *(a2 + 5);
          v23 = a2 + 40;
          if (v24 != &gtl::FastTypeId<operations_research::sat::CpModelMapping>(void)::d)
          {
            goto LABEL_29;
          }

          v25 = &absl::lts_20240722::container_internal::kSooControl;
          if (!&absl::lts_20240722::container_internal::kSooControl)
          {
            goto LABEL_31;
          }
        }

        v25 = *(v23 + 1);
        goto LABEL_31;
      }
    }

    v10 = (v19 + 16 * v20);
    if (!(_X11 + v20))
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (*(a2 + 4) < 2uLL)
    {
      goto LABEL_16;
    }

    v10 = a2 + 40;
    if (*(a2 + 5) != &gtl::FastTypeId<operations_research::sat::SharedIncompleteSolutionManager>(void)::d || !&absl::lts_20240722::container_internal::kSooControl)
    {
      goto LABEL_16;
    }
  }

  v21 = *(v10 + 1);
  goto LABEL_17;
}

void sub_23CB9A51C(_Unwind_Exception *a1)
{
  v8 = *(v1 + 21552);
  if (v8)
  {
    *(v1 + 21560) = v8;
    operator delete(v8);
    v9 = *v6;
    if (!*v6)
    {
LABEL_3:
      v10 = *(v1 + 21480);
      if (!v10)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v9 = *v6;
    if (!*v6)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 21536) = v9;
  operator delete(v9);
  v10 = *(v1 + 21480);
  if (!v10)
  {
LABEL_4:
    v11 = *(v1 + 21456);
    if (!v11)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v1 + 21488) = v10;
  operator delete(v10);
  v11 = *(v1 + 21456);
  if (!v11)
  {
LABEL_5:
    v12 = *(v1 + 21336);
    if (!v12)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v1 + 21464) = v11;
  operator delete(v11);
  v12 = *(v1 + 21336);
  if (!v12)
  {
LABEL_6:
    v13 = *(v1 + 21312);
    if (!v13)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v1 + 21344) = v12;
  operator delete(v12);
  v13 = *(v1 + 21312);
  if (!v13)
  {
LABEL_7:
    v14 = *v5;
    if (!*v5)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v1 + 21320) = v13;
  operator delete(v13);
  v14 = *v5;
  if (!*v5)
  {
LABEL_8:
    if (*v4 < 2uLL)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(v14);
  if (*v4 < 2uLL)
  {
LABEL_9:
    v15 = *(v1 + 21232);
    if (!v15)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_28:
  operator delete((*(v1 + 21272) - (*(v1 + 21264) & 1) - 8));
  v15 = *(v1 + 21232);
  if (!v15)
  {
LABEL_11:
    operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>::~SparseBitset((v1 + v3));
    v16 = *(v1 + 21136);
    if (v16)
    {
      *(v1 + 21144) = v16;
      operator delete(v16);
      v17 = *(v1 + 21112);
      if (!v17)
      {
LABEL_13:
        v18 = *(v1 + 21088);
        if (!v18)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v17 = *(v1 + 21112);
      if (!v17)
      {
        goto LABEL_13;
      }
    }

    *(v1 + 21120) = v17;
    operator delete(v17);
    v18 = *(v1 + 21088);
    if (!v18)
    {
LABEL_15:
      operations_research::glop::RevisedSimplex::~RevisedSimplex((v1 + 528));
      operations_research::glop::LinearProgram::~LinearProgram((v1 + 80));
      absl::StrongVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::sat::FeasibilityPump::LinearConstraintInternal,std::allocator<operations_research::sat::FeasibilityPump::LinearConstraintInternal>>::~StrongVector(v2);
      v19 = *v1;
      if (*v1)
      {
        *(v1 + 8) = v19;
        operator delete(v19);
      }

      _Unwind_Resume(a1);
    }

LABEL_14:
    *(v1 + 21096) = v18;
    operator delete(v18);
    goto LABEL_15;
  }

LABEL_10:
  *(v1 + 21240) = v15;
  operator delete(v15);
  goto LABEL_11;
}

void **absl::StrongVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::sat::FeasibilityPump::LinearConstraintInternal,std::allocator<operations_research::sat::FeasibilityPump::LinearConstraintInternal>>::~StrongVector(void **a1)
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
        v5 = *(v3 - 3);
        if (v5)
        {
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        v3 -= 40;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void operations_research::sat::FeasibilityPump::~FeasibilityPump(operations_research::sat::FeasibilityPump *this)
{
  if (dword_27E25CDA8 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::FeasibilityPump::~FeasibilityPump()::$_0::operator() const(void)::site, dword_27E25CDA8))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v21, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/feasibility_pump.cc", 81);
    v20 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v21, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v20, "Feasibility Pump Total number of simplex iterations: ", 0x35uLL);
    v22 = *(this + 2699);
    absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v20, &v22);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v21);
  }

  v2 = *(this + 2694);
  if (v2)
  {
    *(this + 2695) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2691);
  if (v3)
  {
    *(this + 2692) = v3;
    operator delete(v3);
  }

  v4 = *(this + 2685);
  if (v4)
  {
    *(this + 2686) = v4;
    operator delete(v4);
  }

  v5 = *(this + 2682);
  if (v5)
  {
    *(this + 2683) = v5;
    operator delete(v5);
  }

  v6 = *(this + 2667);
  if (v6)
  {
    *(this + 2668) = v6;
    operator delete(v6);
  }

  v7 = *(this + 2664);
  if (v7)
  {
    *(this + 2665) = v7;
    operator delete(v7);
  }

  v8 = *(this + 2661);
  if (v8)
  {
    operator delete(v8);
  }

  if (*(this + 2657) >= 2uLL)
  {
    operator delete((*(this + 2659) - (*(this + 2658) & 1) - 8));
  }

  v9 = *(this + 2654);
  if (v9)
  {
    *(this + 2655) = v9;
    operator delete(v9);
  }

  v10 = *(this + 2649);
  if (v10)
  {
    *(this + 2650) = v10;
    operator delete(v10);
  }

  v11 = *(this + 2646);
  if (v11)
  {
    *(this + 2647) = v11;
    operator delete(v11);
  }

  v12 = *(this + 2642);
  if (v12)
  {
    *(this + 2643) = v12;
    operator delete(v12);
  }

  v13 = *(this + 2639);
  if (v13)
  {
    *(this + 2640) = v13;
    operator delete(v13);
  }

  v14 = *(this + 2636);
  if (v14)
  {
    *(this + 2637) = v14;
    operator delete(v14);
  }

  operations_research::glop::RevisedSimplex::~RevisedSimplex((this + 528));
  operations_research::glop::LinearProgram::~LinearProgram((this + 80));
  v15 = *(this + 6);
  if (v15)
  {
    v16 = *(this + 7);
    v17 = *(this + 6);
    if (v16 != v15)
    {
      do
      {
        v18 = *(v16 - 24);
        if (v18)
        {
          *(v16 - 16) = v18;
          operator delete(v18);
        }

        v16 -= 40;
      }

      while (v16 != v15);
      v17 = *(this + 6);
    }

    *(this + 7) = v15;
    operator delete(v17);
  }

  v19 = *this;
  if (*this)
  {
    *(this + 1) = v19;
    operator delete(v19);
  }
}

uint64_t operations_research::sat::FeasibilityPump::AddLinearConstraint(operations_research::sat::FeasibilityPump *this, const operations_research::sat::LinearConstraint *a2)
{
  v4 = *(a2 + 4);
  if (v4)
  {
    v5 = *(a2 + 3);
    v6 = 4 * v4;
    do
    {
      v7 = *v5++;
      operations_research::sat::FeasibilityPump::GetOrCreateMirrorVariable(this, v7 & 0xFFFFFFFE);
      v6 -= 4;
    }

    while (v6);
  }

  v22 = 0;
  v20 = 0u;
  *__p = 0u;
  v8 = *(this + 7);
  if (v8 >= *(this + 8))
  {
    v9 = std::vector<operations_research::sat::FeasibilityPump::LinearConstraintInternal>::__emplace_back_slow_path<operations_research::sat::FeasibilityPump::LinearConstraintInternal>(this + 6, &v20);
    v10 = __p[0];
    *(this + 7) = v9;
    if (v10)
    {
      __p[1] = v10;
      operator delete(v10);
      v9 = *(this + 7);
    }
  }

  else
  {
    *(v8 + 32) = 0;
    *v8 = 0uLL;
    *(v8 + 16) = 0uLL;
    v9 = v8 + 40;
    *(this + 7) = v8 + 40;
  }

  *(v9 - 40) = *a2;
  v11 = *(a2 + 1);
  *(v9 - 32) = v11;
  if (*a2 > v11)
  {
    operations_research::sat::FeasibilityPump::AddLinearConstraint(a2, a2 + 1);
  }

  if (*(a2 + 4) >= 1)
  {
    v12 = 0;
    do
    {
      v13 = *(*(a2 + 3) + 4 * v12);
      if (v13)
      {
        v14 = -*(*(a2 + 4) + 8 * v12);
      }

      else
      {
        v14 = *(*(a2 + 4) + 8 * v12);
      }

      LODWORD(v20) = operations_research::sat::FeasibilityPump::GetOrCreateMirrorVariable(this, v13 & 0xFFFFFFFE);
      *(&v20 + 1) = v14;
      std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](v9 - 24, &v20);
      ++v12;
    }

    while (v12 < *(a2 + 4));
  }

  v15 = *(v9 - 24);
  v16 = *(v9 - 16);
  v17 = 126 - 2 * __clz((v16 - v15) >> 4);
  if (v16 == v15)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  return std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,long long> *,false>(v15, v16, &v20, v18, 1);
}

void sub_23CB9AAB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::FeasibilityPump::GetOrCreateMirrorVariable(uint64_t a1, unsigned int a2)
{
  v31 = a2;
  v3 = *(a1 + 21256);
  if (v3 > 1)
  {
    v4 = 0;
    v5 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2;
    v6 = 0x9DDFEA08EB382D69 * v5;
    v7 = (v5 * 0x9DDFEA08EB382D69) >> 64;
    _X10 = *(a1 + 21272);
    __asm { PRFM            #4, [X10] }

    v14 = v7 ^ v6;
    v15 = vdup_n_s8(v14 & 0x7F);
    v16 = ((v14 >> 7) ^ (_X10 >> 12)) & v3;
    v17 = *(_X10 + v16);
    v18 = vceq_s8(v17, v15);
    if (!v18)
    {
      goto LABEL_8;
    }

LABEL_5:
    v19 = *(a1 + 21280);
    while (1)
    {
      v20 = (v16 + (__clz(__rbit64(v18)) >> 3)) & v3;
      if (*(v19 + 8 * v20) == a2)
      {
        break;
      }

      v18 &= ((v18 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v18)
      {
LABEL_8:
        while (!*&vceq_s8(v17, 0x8080808080808080))
        {
          v4 += 8;
          v16 = (v4 + v16) & v3;
          v17 = *(_X10 + v16);
          v18 = vceq_s8(v17, v15);
          if (v18)
          {
            goto LABEL_5;
          }
        }

        goto LABEL_16;
      }
    }

    v21 = v19 + 8 * v20;
    if (!(_X10 + v20))
    {
      goto LABEL_16;
    }

    return *(v21 + 4);
  }

  if (*(a1 + 21264) >= 2uLL)
  {
    v21 = a1 + 21272;
    v23 = &absl::lts_20240722::container_internal::kSooControl;
    if (*(a1 + 21272) != a2)
    {
      v23 = 0;
    }

    if (v23)
    {
      return *(v21 + 4);
    }
  }

LABEL_16:
  v24 = *(*(a1 + 21432) + 96);
  if ((*(*(a1 + 21432) + 104) - v24) >> 2 <= a2)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(v24 + 4 * a2) + 1;
  }

  if (*(a1 + 72) > v25)
  {
    v25 = *(a1 + 72);
  }

  *(a1 + 72) = v25;
  v26 = (*(a1 + 21240) - *(a1 + 21232)) >> 2;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>>>::find_or_prepare_insert<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>(a1 + 21256, &v31, &v32);
  if (v34 == 1)
  {
    *v33 = v31;
  }

  *(v33 + 4) = v26;
  std::vector<int>::push_back[abi:ne200100](a1 + 21232, &v31);
  v27 = *(a1 + 21296);
  v28 = *(a1 + 21304);
  if (v27 == v28 << 6)
  {
    if ((v27 + 1) < 0)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v29 = v28 << 7;
    if (v29 <= (v27 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v29 = (v27 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v27 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0x7FFFFFFFFFFFFFFFLL;
    }

    std::vector<BOOL>::reserve(a1 + 21288, v30);
    v27 = *(a1 + 21296);
  }

  *(a1 + 21296) = v27 + 1;
  *(*(a1 + 21288) + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v27);
  v32 = 0x7FF0000000000000;
  std::vector<double>::push_back[abi:ne200100](a1 + 21456, &v32);
  v32 = 0;
  std::vector<long long>::push_back[abi:ne200100]((a1 + 21528), &v32);
  return v26;
}

void operations_research::sat::FeasibilityPump::SetObjectiveCoefficient(uint64_t a1, int a2, uint64_t a3)
{
  *(a1 + 21360) = 1;
  v4 = a2 & 0xFFFFFFFE;
  if (a2)
  {
    v5 = -a3;
  }

  else
  {
    v5 = a3;
  }

  v6 = *(a1 + 21256);
  if (v6 > 1)
  {
    v7 = 0;
    v8 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + (a2 & 0xFFFFFFFE);
    v9 = 0x9DDFEA08EB382D69 * v8;
    v10 = (v8 * 0x9DDFEA08EB382D69) >> 64;
    _X12 = *(a1 + 21272);
    __asm { PRFM            #4, [X12] }

    v17 = v10 ^ v9;
    v18 = vdup_n_s8(v17 & 0x7F);
    v19 = ((v17 >> 7) ^ (_X12 >> 12)) & v6;
    v20 = *(_X12 + v19);
    v21 = vceq_s8(v20, v18);
    if (!v21)
    {
      goto LABEL_11;
    }

LABEL_8:
    v22 = *(a1 + 21280);
    while (1)
    {
      v23 = (v19 + (__clz(__rbit64(v21)) >> 3)) & v6;
      if (*(v22 + 8 * v23) == v4)
      {
        break;
      }

      v21 &= ((v21 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v21)
      {
LABEL_11:
        while (!*&vceq_s8(v20, 0x8080808080808080))
        {
          v7 += 8;
          v19 = (v7 + v19) & v6;
          v20 = *(_X12 + v19);
          v21 = vceq_s8(v20, v18);
          if (v21)
          {
            goto LABEL_8;
          }
        }

        return;
      }
    }

    v24 = v22 + 8 * v23;
    if (!(_X12 + v23))
    {
      return;
    }

    goto LABEL_15;
  }

  if (*(a1 + 21264) >= 2uLL)
  {
    v27 = *(a1 + 21272) == v4 ? &absl::lts_20240722::container_internal::kSooControl : 0;
    v24 = *(a1 + 21272) == v4 ? a1 + 21272 : v5;
    if (v27)
    {
LABEL_15:
      LODWORD(v28) = *(v24 + 4);
      *(&v28 + 1) = v5;
      std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](a1, &v28);
      if (a3 >= 0)
      {
        v26 = a3;
      }

      else
      {
        v26 = -a3;
      }

      if (*(a1 + 24) > v26)
      {
        v26 = *(a1 + 24);
      }

      *(a1 + 24) = v26;
    }
  }
}

void operations_research::sat::FeasibilityPump::PrintStats(operations_research::sat::FeasibilityPump *this)
{
  v1 = this + 20480;
  if (*(this + 21440) == 1)
  {
    if (dword_2810BFE90 >= 2)
    {
      v15 = this;
      IsEnabled2 = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&_MergedGlobals_11, dword_2810BFE90);
      this = v15;
      if (IsEnabled2)
      {
        v14 = v1;
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v18, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/feasibility_pump.cc", 149);
        v3 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v18, 2);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v3, "Fractionality: ", 0xFuLL);
        v19 = *(v15 + 2688);
        absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v3, &v19);
LABEL_18:
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v18);
        v1 = v14;
        this = v15;
      }
    }
  }

  else
  {
    if (dword_2810BFEA8 >= 2)
    {
      v16 = this;
      v5 = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&off_2810BFEA0, dword_2810BFEA8);
      this = v16;
      if (v5)
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v18, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/feasibility_pump.cc", 151);
        v6 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v18, 2);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v6, "Fractionality: NA", 0x11uLL);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v18);
        this = v16;
      }
    }

    if (dword_2810BFEC0 > 1)
    {
      v15 = this;
      v7 = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&off_2810BFEB8, dword_2810BFEC0);
      this = v15;
      if (v7)
      {
        v14 = v1;
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v18, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/feasibility_pump.cc", 152);
        v8 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v18, 2);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v8, "simplex status: ", 0x10uLL);
        LOBYTE(v19) = operations_research::glop::RevisedSimplex::GetProblemStatus((v15 + 528));
        absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::glop::ProblemStatus,0>(v8, &v19);
        goto LABEL_18;
      }
    }
  }

  if (v1[1032] == 1)
  {
    if (dword_2810BFED8 >= 2)
    {
      v17 = this;
      v9 = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&off_2810BFED0, dword_2810BFED8);
      this = v17;
      if (v9)
      {
        v10 = v1;
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v18, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/feasibility_pump.cc", 156);
        v11 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v18, 2);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v11, "#Infeasible const: ", 0x13uLL);
        LODWORD(v19) = *(v10 + 274);
        absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v11, &v19);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v18);
        this = v17;
      }
    }

    if (dword_2810BFEF0 >= 2)
    {
      v12 = this;
      if (absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&off_2810BFEE8, dword_2810BFEF0))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v18, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/feasibility_pump.cc", 157);
        v13 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v18, 2);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v13, "Infeasibility: ", 0xFuLL);
        v19 = *(v12 + 2698);
        absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v13, &v19);
        goto LABEL_23;
      }
    }
  }

  else if (dword_2810BFF08 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&off_2810BFF00, dword_2810BFF08))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v18, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/feasibility_pump.cc", 159);
    v4 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v18, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "Infeasibility: NA", 0x11uLL);
LABEL_23:
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v18);
  }
}

void sub_23CB9B22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CB9B240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CB9B254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CB9B268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CB9B27C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CB9B290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CB9B2A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::glop::ProblemStatus,0>(uint64_t a1, char *a2)
{
  absl::lts_20240722::log_internal::LogMessage::OstreamView::OstreamView(v8, *(a1 + 8));
  v4 = absl::lts_20240722::log_internal::LogMessage::OstreamView::stream(v8);
  operations_research::glop::GetProblemStatusString(*a2, v9);
  if ((v10 & 0x80u) == 0)
  {
    v5 = v9;
  }

  else
  {
    v5 = v9[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v6 = v10;
  }

  else
  {
    v6 = v9[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, v6);
  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(v8);
  return a1;
}

void sub_23CB9B350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 - 33) < 0)
  {
    operator delete(*(v9 - 56));
    absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(&a9);
    _Unwind_Resume(a1);
  }

  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(&a9);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::FeasibilityPump::Solve(operations_research::TimeLimit **this)
{
  v2 = (this + 10);
  v3 = (this + 2560);
  if (!(-1431655765 * ((this[11] - this[10]) >> 4)))
  {
    operations_research::sat::FeasibilityPump::InitializeWorkingLP(this);
  }

  v4 = this[2655] - this[2654];
  if ((v4 >> 2) >= 1)
  {
    v5 = 0;
    v6 = (v4 >> 2) & 0x7FFFFFFF;
    do
    {
      v7 = *(this[2654] + v5);
      v8 = *(this[2673] + 19);
      v9 = *(v8 + 24 * v7);
      v10 = v9;
      if (v9 < 0x8000000000000003)
      {
        v10 = -INFINITY;
      }

      if (v9 <= 0x7FFFFFFFFFFFFFFDLL)
      {
        v11 = v10;
      }

      else
      {
        v11 = INFINITY;
      }

      v12 = -*(v8 + 24 * (v7 ^ 1));
      v13 = v12;
      if (v12 < 0x8000000000000003)
      {
        v13 = -INFINITY;
      }

      if (v12 <= 0x7FFFFFFFFFFFFFFDLL)
      {
        v14 = v13;
      }

      else
      {
        v14 = INFINITY;
      }

      v15 = operations_research::glop::LpScalingHelper::VariableScalingFactor((this + 2645), v5);
      operations_research::glop::LinearProgram::SetVariableBounds(v2, v5++, v15 * v11, v15 * v14);
    }

    while (v6 != v5);
  }

  v3[960] = 0;
  v3[1032] = 0;
  if ((-1431655765 * ((this[11] - this[10]) >> 4)) >= 1)
  {
    v16 = 0;
    do
    {
      operations_research::glop::LinearProgram::SetObjectiveCoefficient(v2, v16++, 0.0);
    }

    while (v16 < (-1431655765 * ((this[11] - this[10]) >> 4)));
  }

  v17 = *this;
  v18 = this[1];
  if (*this != v18)
  {
    do
    {
      v19 = *(v17 + 1);
      v20 = v19;
      if (v19 < 0x8000000000000003)
      {
        v20 = -INFINITY;
      }

      if (v19 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v20 = INFINITY;
      }

      operations_research::glop::LinearProgram::SetObjectiveCoefficient(v2, *v17, v20);
      v17 = (v17 + 16);
    }

    while (v17 != v18);
  }

  this[5] = 0x3FF0000000000000;
  if (*(v3 + 280) >= 1)
  {
    v21 = 0;
    do
    {
      if (operations_research::TimeLimit::LimitReached(this[2672]))
      {
        break;
      }

      operations_research::sat::FeasibilityPump::L1DistanceMinimize(this);
      if (!operations_research::sat::FeasibilityPump::SolveLp(this) || (v3[961] & 1) != 0 || !operations_research::sat::FeasibilityPump::Round(this))
      {
        break;
      }

      if (v3[1033] == 1)
      {
        operations_research::sat::FeasibilityPump::MaybePushToRepo(this, v22);
      }

      ++v21;
    }

    while (v21 < *(v3 + 280));
  }

  v23 = *(this[2677] + 528);
  if ((v23 & 1) == 0)
  {
    operations_research::sat::FeasibilityPump::PrintStats(this);
    operations_research::sat::FeasibilityPump::MaybePushToRepo(this, v24);
  }

  return v23 ^ 1u;
}

void operations_research::sat::FeasibilityPump::InitializeWorkingLP(operations_research::sat::FeasibilityPump *this)
{
  operations_research::glop::LinearProgram::Clear((this + 80));
  if (*(this + 2655) != *(this + 2654))
  {
    v2 = 0;
    do
    {
      v58 = v2;
      NewVariable = operations_research::glop::LinearProgram::CreateNewVariable((this + 80));
      if (v2 != NewVariable)
      {
        operations_research::sat::FeasibilityPump::InitializeWorkingLP(&v58, &NewVariable);
      }

      operations_research::glop::LinearProgram::SetVariableType(this + 80, v2++, 1);
    }

    while (v2 < ((*(this + 2655) - *(this + 2654)) >> 2));
  }

  v3 = *(this + 6);
  for (i = *(this + 7); v3 != i; v3 += 5)
  {
    NewConstraint = operations_research::glop::LinearProgram::CreateNewConstraint((this + 80));
    v6 = v3[1];
    v7 = *v3;
    if (*v3 < 0x8000000000000003)
    {
      v7 = -INFINITY;
    }

    v8 = v6;
    if (*v3 > 0x7FFFFFFFFFFFFFFDLL)
    {
      v7 = INFINITY;
    }

    if (v6 < 0x8000000000000003)
    {
      v8 = -INFINITY;
    }

    if (v6 > 0x7FFFFFFFFFFFFFFDLL)
    {
      v8 = INFINITY;
    }

    v9 = NewConstraint;
    operations_research::glop::LinearProgram::SetConstraintBounds(this + 80, NewConstraint, v7, v8);
    v10 = v3[2];
    for (j = v3[3]; v10 != j; v10 += 16)
    {
      v12 = *(v10 + 8);
      v13 = v12;
      if (v12 < 0x8000000000000003)
      {
        v13 = -INFINITY;
      }

      if (v12 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v13 = INFINITY;
      }

      operations_research::glop::LinearProgram::SetCoefficient(this + 80, v9, *v10, v13);
    }
  }

  v14 = *this;
  v15 = *(this + 1);
  if (*this != v15)
  {
    do
    {
      v16 = *(v14 + 8);
      v17 = v16;
      if (v16 < 0x8000000000000003)
      {
        v17 = -INFINITY;
      }

      if (v16 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v17 = INFINITY;
      }

      operations_research::glop::LinearProgram::SetObjectiveCoefficient(this + 80, *v14, v17);
      v14 += 16;
    }

    while (v14 != v15);
  }

  v18 = *(this + 2655) - *(this + 2654);
  if ((v18 >> 2) >= 1)
  {
    v19 = 0;
    v20 = (v18 >> 2) & 0x7FFFFFFF;
    do
    {
      v21 = *(*(this + 2654) + 4 * v19);
      v22 = *(*(this + 2673) + 152);
      v23 = *(v22 + 24 * v21);
      v24 = v23;
      if (v23 < 0x8000000000000003)
      {
        v24 = -INFINITY;
      }

      if (v23 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v24 = INFINITY;
      }

      v25 = -*(v22 + 24 * (v21 ^ 1));
      v26 = v25;
      if (v25 < 0x8000000000000003)
      {
        v26 = -INFINITY;
      }

      if (v25 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v26 = INFINITY;
      }

      operations_research::glop::LinearProgram::SetVariableBounds(this + 80, v19++, v24, v26);
    }

    while (v20 != v19);
  }

  *(this + 4) = 0;
  v54 = *(this + 10);
  v55 = *(this + 11);
  v27 = operations_research::glop::LinearProgram::IntegerVariablesList((this + 80));
  v29 = *v27;
  v28 = *(v27 + 8);
  if (*v27 != v28)
  {
    v30 = 0;
    while (1)
    {
      v31 = *v29;
      IsVariableBinary = operations_research::glop::LinearProgram::IsVariableBinary(this + 10, *v29);
      v33 = *(this + 2661);
      v34 = v31 >> 6;
      v35 = 1 << v31;
      if (IsVariableBinary)
      {
        v36 = *(v33 + 8 * v34) | v35;
        *(v33 + 8 * v34) = v36;
        if ((v36 & v35) == 0)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v37 = *(v33 + 8 * v34) & ~v35;
        *(v33 + 8 * v34) = v37;
        if ((v37 & v35) == 0)
        {
LABEL_46:
          v38 = v30;
          v39 = v30 >> 2;
          if (((v30 >> 2) + 1) >> 62)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          if (v30 >> 2 != -1)
          {
            if (!(((v30 >> 2) + 1) >> 62))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *(4 * v39) = v31;
          v30 = 4 * v39 + 4;
          memcpy(0, 0, v38);
        }
      }

      *(this + 4) = fabs(operations_research::glop::LinearProgram::GetObjectiveCoefficientForMinimizationVersion(this + 80, v31)) + *(this + 4);
      if (++v29 == v28)
      {
        goto LABEL_54;
      }
    }
  }

  v30 = 0;
LABEL_54:
  v40 = operations_research::glop::LinearProgram::IntegerVariablesList((this + 80));
  if (v40[1] == *v40)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<unsigned long long,long long>(0, 0, "lp_data_.IntegerVariablesList().size() > 0");
  }

  v41 = *(this + 4);
  v42 = operations_research::glop::LinearProgram::IntegerVariablesList((this + 80));
  *(this + 4) = v41 / ((v42[1] - *v42) >> 2);
  if (v30)
  {
    __u[0] = -1;
    v43 = (-1431655765 * ((v55 - v54) >> 4));
    std::vector<int>::assign((this + 21088), v43, __u);
    __u[0] = -1;
    std::vector<int>::assign((this + 21112), v43, __u);
    __u[0] = -1;
    std::vector<int>::assign((this + 21136), v43, __u);
    for (k = 0; k != v30; ++k)
    {
      v45 = *k;
      v46 = operations_research::glop::LinearProgram::CreateNewVariable((this + 80));
      *(*(this + 2636) + 4 * v45) = v46;
      v47 = v46;
      operations_research::glop::LinearProgram::SetVariableBounds(this + 80, v46, 0.0, INFINITY);
      v48 = operations_research::glop::LinearProgram::CreateNewConstraint((this + 80));
      *(*(this + 2639) + 4 * v45) = v48;
      v49 = v48;
      operations_research::glop::LinearProgram::SetCoefficient(this + 80, v48, v47, 1.0);
      operations_research::glop::LinearProgram::SetCoefficient(this + 80, v49, v45, -1.0);
      v50 = operations_research::glop::LinearProgram::CreateNewConstraint((this + 80));
      *(*(this + 2642) + 4 * v45) = v50;
      v51 = v50;
      operations_research::glop::LinearProgram::SetCoefficient(this + 80, v50, v47, 1.0);
      operations_research::glop::LinearProgram::SetCoefficient(this + 80, v51, v45, 1.0);
    }
  }

  operations_research::glop::LpScalingHelper::Scale((this + 21160), (this + 80));
  operations_research::glop::LinearProgram::AddSlackVariablesWhereNecessary((this + 80), 0, v52, v53);
}

void sub_23CB9BBCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    v11 = a1;
    operator delete(__p);
    a1 = v11;
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::FeasibilityPump::L1DistanceMinimize(operations_research::sat::FeasibilityPump *this)
{
  v2 = (this + 80);
  v3 = 0xAAAAAAAB00000000 * ((*(this + 11) - *(this + 10)) >> 4);
  if (v3)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v4 = (0x555555558 * ((*(this + 11) - *(this + 10)) >> 4)) & 0x7FFFFFFFFLL;
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v5 = *(this + 27);
  v6 = *(this + 28) - v5;
  if ((v6 >> 3) >= 1)
  {
    v7 = *(this + 5);
    v8 = (v6 >> 3) & 0x7FFFFFFF;
    if (v8 < 4 || -v5 <= 0x1F)
    {
      v10 = 0;
LABEL_13:
      v16 = &v5->f64[v10];
      v17 = (8 * v10);
      v18 = v10 - v8;
      do
      {
        v19 = *v16++;
        *v17++ = v7 * v19;
      }

      while (!__CFADD__(v18++, 1));
      goto LABEL_16;
    }

    v11 = (v6 >> 3) & 3;
    v10 = v8 - v11;
    v12 = v5 + 1;
    v13 = 16;
    v14 = v8 - v11;
    do
    {
      v15 = vmulq_n_f64(*v12, v7);
      *(v13 - 16) = vmulq_n_f64(v12[-1], v7);
      *v13 = v15;
      v12 += 2;
      v13 += 32;
      v14 -= 4;
    }

    while (v14);
    if (v11)
    {
      goto LABEL_13;
    }
  }

LABEL_16:
  v21 = operations_research::glop::LinearProgram::IntegerVariablesList(v2);
  v22 = *v21;
  v23 = *(v21 + 8);
  if (*v21 != v23)
  {
    do
    {
      v24 = *v22;
      v25 = *(this + 5);
      v26 = 1.0 - v25;
      if ((*(*(this + 2661) + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v24))
      {
        *(8 * v24) = v26 * *(this + 4) * (1 - 2 * *(*(this + 2691) + 8 * v24)) + v25 * *(*(this + 27) + 8 * v24);
      }

      else
      {
        v27 = 4 * v24;
        *(8 * *(*(this + 2636) + v27)) = v26 * *(this + 4);
        SlackVariable = operations_research::glop::LinearProgram::GetSlackVariable(v2, *(*(this + 2639) + v27));
        v29 = operations_research::glop::LpScalingHelper::VariableScalingFactor(this + 21160, SlackVariable);
        operations_research::glop::LinearProgram::SetVariableBounds(v2, SlackVariable, -INFINITY, v29 * *(*(this + 2691) + 8 * v24));
        v30 = operations_research::glop::LinearProgram::GetSlackVariable(v2, *(*(this + 2642) + v27));
        v31 = operations_research::glop::LpScalingHelper::VariableScalingFactor(this + 21160, v30);
        operations_research::glop::LinearProgram::SetVariableBounds(v2, v30, -INFINITY, -(v31 * *(*(this + 2691) + 8 * v24)));
      }

      ++v22;
    }

    while (v22 != v23);
  }

  if ((-1431655765 * ((*(this + 11) - *(this + 10)) >> 4)) < 1)
  {
    *(this + 5) = *(this + 5) * 0.8;
  }

  else
  {
    v32 = 0;
    do
    {
      operations_research::glop::LinearProgram::SetObjectiveCoefficient(v2, v32, *(8 * v32));
      ++v32;
    }

    while (v32 < (-1431655765 * ((*(this + 11) - *(this + 10)) >> 4)));
    *(this + 5) = *(this + 5) * 0.8;

    operator delete(0);
  }
}

void sub_23CB9BF54(_Unwind_Exception *exception_object)
{
  if (!v1)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::FeasibilityPump::SolveLp(operations_research::sat::FeasibilityPump *this)
{
  v2 = *(this + 2655);
  v3 = *(this + 2654);
  if (dword_2810BFF20 >= 3 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&off_2810BFF18, dword_2810BFF20))
  {
    v16 = v2;
    v17 = absl::lts_20240722::log_internal::LogMessage::LogMessage(v29, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/feasibility_pump.cc", 384);
    v18 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v17, 3);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v18, "LP relaxation: ", 0xFuLL);
    operations_research::glop::LinearProgram::GetDimensionString((this + 80), v28);
    v19 = absl::lts_20240722::log_internal::LogMessage::operator<<(v18, v28);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v19, ".", 1uLL);
    operations_research::sat::BruteForceOrthogonalPacking(v28, v29);
    v2 = v16;
  }

  operations_research::glop::RevisedSimplex::Solve((this + 528), (this + 80), *(this + 2672), &v25);
  *(this + 2699) += operations_research::glop::RevisedSimplex::GetNumberOfIterations((this + 528));
  if (v25)
  {
    if (dword_2810BFF38 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFF30, dword_2810BFF38))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v24, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/feasibility_pump.cc", 389);
      v20 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v24, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v20, "The LP solver encountered an error: ", 0x24uLL);
      absl::lts_20240722::log_internal::LogMessage::operator<<(v20, &__p);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v24);
    }

    operations_research::glop::RevisedSimplex::ClearStateForNextSolve(this + 66);
  }

  else
  {
    if (dword_2810BFF50 >= 3 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&off_2810BFF48, dword_2810BFF50))
    {
      v21 = v2;
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v24, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/feasibility_pump.cc", 397);
      v22 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v24, 3);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v22, "simplex status: ", 0x10uLL);
      ProblemStatus = operations_research::glop::RevisedSimplex::GetProblemStatus((this + 528));
      absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::glop::ProblemStatus,0>(v22, &ProblemStatus);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v24);
      v2 = v21;
    }

    if (operations_research::glop::RevisedSimplex::GetProblemStatus((this + 528)) != 1)
    {
      *(this + 2688) = 0;
      if (!operations_research::glop::RevisedSimplex::GetProblemStatus((this + 528)) || operations_research::glop::RevisedSimplex::GetProblemStatus((this + 528)) == 8 || operations_research::glop::RevisedSimplex::GetProblemStatus((this + 528)) == 7 || operations_research::glop::RevisedSimplex::GetProblemStatus((this + 528)) == 11)
      {
        v6 = v2 - v3;
        *(this + 21440) = 1;
        if (((v2 - v3) >> 2) >= 1)
        {
          v7 = 0;
          v8 = (v6 >> 2) & 0x7FFFFFFF;
          do
          {
            VariableValue = operations_research::glop::RevisedSimplex::GetVariableValue(this + 528, v7);
            v10 = operations_research::glop::LpScalingHelper::UnscaleVariableValue(this + 21160, v7, VariableValue);
            *(*(this + 2682) + 8 * v7) = v10;
            v11 = vabdd_f64(v10, round(v10));
            if (*(this + 2688) >= v11)
            {
              v11 = *(this + 2688);
            }

            *(this + 2688) = v11;
            ++v7;
          }

          while (v8 != v7);
        }

        *(this + 2681) = 0;
        v12 = *this;
        v13 = *(this + 1);
        if (*this != v13)
        {
          v14 = *(this + 2682);
          v15 = 0.0;
          do
          {
            v15 = v15 + *(v14 + 8 * *v12) * v12[1];
            *(this + 2681) = v15;
            v12 += 2;
          }

          while (v12 != v13);
        }

        *(this + 21441) = *(this + 2688) < 0.0001;
      }

      v4 = 1;
      if (v27 < 0)
      {
        goto LABEL_8;
      }

      return v4;
    }
  }

  v4 = 0;
  if (v27 < 0)
  {
LABEL_8:
    operator delete(__p);
  }

  return v4;
}

void sub_23CB9C2BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::FeasibilityPump::Round(std::vector<int> *this)
{
  v1 = this[890].__end_[184];
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        v4 = this;
        active = operations_research::sat::FeasibilityPump::ActiveLockBasedRounding(this);
        this = v4;
        if ((active & 1) == 0)
        {
          return 0;
        }
      }

      goto LABEL_22;
    }

    v15 = this;
    v16 = operations_research::sat::FeasibilityPump::PropagationRounding(this);
    this = v15;
    if (v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v2 = this;
        v3 = operations_research::sat::FeasibilityPump::LockBasedRounding(this);
        this = v2;
        if ((v3 & 1) == 0)
        {
          return 0;
        }
      }

LABEL_22:
      operations_research::sat::FeasibilityPump::FillIntegerSolutionStats(&this->__begin_);
      return 1;
    }

    if (LOBYTE(this[893].__end_) == 1)
    {
      begin = this[894].__begin_;
      v7 = this[894].__end_ - begin;
      if (v7)
      {
        v8 = v7 >> 3;
        v9 = this[897].__begin_;
        if (v8 >= 0xE && ((v8 - 1) <= 0x7FFFFFFE ? (v10 = (v8 - 1) >> 31 == 0) : (v10 = 0), v10))
        {
          v11 = v8 & 0xFFFFFFFC;
          v12 = v8 & 0xFFFFFFFC;
          v17 = (begin + 4);
          v18 = (v9 + 4);
          v19 = v11;
          do
          {
            v20 = vcvtq_s64_f64(vrndaq_f64(*v17));
            v18[-1] = vcvtq_s64_f64(vrndaq_f64(v17[-1]));
            *v18 = v20;
            v17 += 2;
            v18 += 2;
            v19 -= 4;
          }

          while (v19);
          if (v8 == v11)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v11 = 0;
          v12 = 0;
        }

        v13 = v12 + 1;
        do
        {
          *&v9[2 * v11] = llround(*&begin[2 * v11]);
          v11 = v13++;
        }

        while (v8 > v11);
      }

LABEL_20:
      LOBYTE(this[896].__end_) = 1;
      operations_research::sat::FeasibilityPump::FillIntegerSolutionStats(&this->__begin_);
      return 1;
    }
  }

  return 0;
}

void operations_research::sat::FeasibilityPump::MaybePushToRepo(operations_research::sat::FeasibilityPump *this, const char *_X1)
{
  if (*(this + 2676))
  {
    v3 = *(this + 18);
    v53 = 0;
    v54 = 0;
    __p = 0;
    if (v3)
    {
      if ((v3 & 0x80000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v4 = this + 20480;
    if (*(this + 21441) == 1)
    {
      v5 = *(this + 2654);
      v6 = *(this + 2655);
      if (v5 != v6)
      {
        v7 = *(*(this + 2679) + 96);
        v8 = (*(*(this + 2679) + 104) - v7) >> 2;
        v9 = (this + 21272);
        do
        {
          v10 = *v5;
          if (v8 > v10)
          {
            v11 = v10;
            v12 = *(v7 + 4 * v10);
            if ((v12 & 0x80000000) == 0 && v12 < *(this + 18))
            {
              v13 = *(this + 2657);
              if (v13 > 1)
              {
                v14 = 0;
                _X1 = *v9;
                __asm { PRFM            #4, [X1] }

                v19 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v11) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v11));
                v20 = vdup_n_s8(v19 & 0x7F);
                v21 = ((v19 >> 7) ^ (*v9 >> 12)) & v13;
                v22 = *&(*v9)[v21];
                v23 = vceq_s8(v22, v20);
                if (!v23)
                {
                  goto LABEL_19;
                }

LABEL_16:
                v24 = *(this + 2660);
                while (1)
                {
                  v25 = (v21 + (__clz(__rbit64(v23)) >> 3)) & v13;
                  if (*(v24 + 8 * v25) == v11)
                  {
                    break;
                  }

                  v23 &= ((v23 & 0x8080808080808080) - 1) & 0x8080808080808080;
                  if (!v23)
                  {
LABEL_19:
                    while (!*&vceq_s8(v22, 0x8080808080808080))
                    {
                      v14 += 8;
                      v21 = (v14 + v21) & v13;
                      v22 = *&_X1[v21];
                      v23 = vceq_s8(v22, v20);
                      if (v23)
                      {
                        goto LABEL_16;
                      }
                    }

LABEL_64:
                    absl::lts_20240722::base_internal::ThrowStdOutOfRange("absl::container_internal::raw_hash_map<>::at", _X1);
                  }
                }

                v26 = v24 + 8 * v25;
                if (!&_X1[v25])
                {
                  goto LABEL_64;
                }
              }

              else
              {
                if (*(this + 2658) < 2uLL)
                {
                  goto LABEL_64;
                }

                _ZF = *v9 == v11;
                v26 = (*v9 == v11 ? v4 + 792 : v5);
                if (!(_ZF ? &absl::lts_20240722::container_internal::kSooControl : 0))
                {
                  goto LABEL_64;
                }
              }

              *(8 * v12) = *(*(this + 2682) + 8 * *(v26 + 4));
            }
          }

          v5 += 4;
        }

        while (v5 != v6);
      }

      operations_research::sat::SharedIncompleteSolutionManager::AddSolution(*(this + 2676), &__p);
    }

    if (v4[1033] == 1)
    {
      v29 = *(this + 2654);
      v30 = *(this + 2655);
      if (v29 != v30)
      {
        v31 = *(*(this + 2679) + 96);
        v32 = (*(*(this + 2679) + 104) - v31) >> 2;
        v33 = (v4 + 792);
        v34 = __p;
        do
        {
          v35 = *v29;
          if (v32 > v35)
          {
            v36 = v35;
            v37 = *(v31 + 4 * v35);
            if ((v37 & 0x80000000) == 0 && v37 < *(this + 18))
            {
              v38 = *(this + 2657);
              if (v38 > 1)
              {
                v40 = 0;
                _X2 = *v33;
                __asm { PRFM            #4, [X2] }

                v43 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v36) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v36));
                v44 = vdup_n_s8(v43 & 0x7F);
                v45 = ((v43 >> 7) ^ (*v33 >> 12)) & v38;
                v46 = *(*v33 + v45);
                v47 = vceq_s8(v46, v44);
                if (!v47)
                {
                  goto LABEL_47;
                }

LABEL_44:
                v48 = *(this + 2660);
                while (1)
                {
                  v49 = (v45 + (__clz(__rbit64(v47)) >> 3)) & v38;
                  if (*(v48 + 8 * v49) == v36)
                  {
                    break;
                  }

                  v47 &= ((v47 & 0x8080808080808080) - 1) & 0x8080808080808080;
                  if (!v47)
                  {
LABEL_47:
                    while (!*&vceq_s8(v46, 0x8080808080808080))
                    {
                      v40 += 8;
                      v45 = (v40 + v45) & v38;
                      v46 = *(_X2 + v45);
                      v47 = vceq_s8(v46, v44);
                      if (v47)
                      {
                        goto LABEL_44;
                      }
                    }

LABEL_42:
                    v39 = 0;
LABEL_65:
                    absl::lts_20240722::base_internal::ThrowStdOutOfRange("absl::container_internal::raw_hash_map<>::at", v39);
                  }
                }

                v50 = (v48 + 8 * v49);
                v39 = (_X2 + v49);
                if (!(_X2 + v49))
                {
                  goto LABEL_65;
                }
              }

              else
              {
                if (*(this + 2658) < 2uLL)
                {
                  goto LABEL_42;
                }

                v51 = *v33 == v36;
                if (*v33 == v36)
                {
                  v50 = v4 + 792;
                }

                else
                {
                  v50 = v29;
                }

                if (v51)
                {
                  v39 = &absl::lts_20240722::container_internal::kSooControl;
                }

                else
                {
                  v39 = 0;
                }

                if (!v39)
                {
                  goto LABEL_65;
                }
              }

              v34[v37] = *(*(this + 2691) + 8 * *(v50 + 1));
            }
          }

          ++v29;
        }

        while (v29 != v30);
      }

      operations_research::sat::SharedIncompleteSolutionManager::AddSolution(*(this + 2676), &__p);
    }

    if (__p)
    {
      v53 = __p;
      operator delete(__p);
    }
  }
}

void sub_23CB9C8E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::FeasibilityPump::LockBasedRounding(std::vector<int> *this)
{
  p_end = &this[853].__end_;
  end_low = LOBYTE(this[893].__end_);
  if (end_low == 1)
  {
    if (this[888].__begin_ == this[888].__end_)
    {
      v16 = this[885].__begin_ - this[884].__end_cap_.__value_;
      v17 = (v16 >> 2);
      __x = 0;
      if (v16 << 30)
      {
        std::vector<int>::__append(this + 888, (v16 >> 2), &__x);
      }

      v35 = 0;
      begin = this[889].__begin_;
      v19 = this[889].__end_ - begin;
      if (v17 <= v19)
      {
        if (v17 < v19)
        {
          this[889].__end_ = &begin[v17];
        }
      }

      else
      {
        std::vector<int>::__append(this + 889, v17 - v19, &v35);
      }

      if ((v16 >> 2) >= 1)
      {
        v20 = 0;
        v21 = (v16 >> 2) & 0x7FFFFFFF;
        do
        {
          SparseColumn = operations_research::glop::LinearProgram::GetSparseColumn(&this[3].__end_, v20);
          v23 = SparseColumn[1];
          if (v23 >= 1)
          {
            v24 = SparseColumn[3];
            v25 = SparseColumn[4];
            do
            {
              v26 = *v24++;
              SlackVariable = operations_research::glop::LinearProgram::GetSlackVariable(&this[3].__end_, v26);
              v28 = *&this[10].__begin_[2 * SlackVariable];
              v29 = v28 < -INFINITY;
              if (v28 > -INFINITY)
              {
                v29 = 1;
              }

              v30 = *&this[11].__begin_[2 * SlackVariable];
              v31 = v30 < INFINITY;
              if (v30 > INFINITY)
              {
                v31 = 1;
              }

              v32 = *v25++;
              v33 = v32 <= 0.0;
              if (v32 <= 0.0)
              {
                v34 = v31;
              }

              else
              {
                v34 = v29;
              }

              if (!v33)
              {
                v29 = v31;
              }

              this[888].__begin_[v20] += v34;
              this[889].__begin_[v20] += v29;
              --v23;
            }

            while (v23);
          }

          ++v20;
        }

        while (v20 != v21);
      }
    }

    v4 = this[894].__begin_;
    v5 = this[894].__end_ - v4;
    if (v5)
    {
      v6 = 0;
      v7 = v5 >> 3;
      v8 = 1;
      do
      {
        while (1)
        {
          while (1)
          {
            v9 = *&v4[2 * v6];
            v10 = round(v9);
            if (vabdd_f64(v9, v10) >= 0.1)
            {
              v11 = this[888].__begin_[v6];
              v12 = this[889].__begin_[v6];
              v13 = v11 <= v12;
              if (v11 != v12)
              {
                break;
              }
            }

            *&this[897].__begin_[2 * v6] = v10;
            v6 = v8++;
            if (v7 <= v6)
            {
              goto LABEL_12;
            }
          }

          v14 = this[897].__begin_;
          if (v13)
          {
            break;
          }

          *&v14[2 * v6] = vcvtmd_s64_f64(v9);
          v6 = v8++;
          if (v7 <= v6)
          {
            goto LABEL_12;
          }
        }

        *&v14[2 * v6] = vcvtpd_s64_f64(v9);
        v6 = v8++;
      }

      while (v7 > v6);
    }

LABEL_12:
    *(p_end + 1032) = 1;
  }

  return end_low;
}

uint64_t operations_research::sat::FeasibilityPump::ActiveLockBasedRounding(operations_research::sat::FeasibilityPump *this)
{
  v1 = this + 20480;
  v2 = *(this + 21440);
  if (v2 == 1)
  {
    v4 = *(this + 2655) - *(this + 2654);
    if ((v4 >> 2) >= 1)
    {
      v5 = 0;
      v6 = (v4 >> 2) & 0x7FFFFFFF;
      v7 = *(this + 2682);
      do
      {
        while (1)
        {
          while (1)
          {
            v8 = *(v7 + 8 * v5);
            v9 = round(v8);
            if (vabdd_f64(v8, v9) < 0.1)
            {
              *(*(this + 2691) + 8 * v5) = v9;
            }

            SparseColumn = operations_research::glop::LinearProgram::GetSparseColumn(this + 10, v5);
            v11 = SparseColumn[1];
            if (v11 >= 1)
            {
              v12 = 0;
              v13 = 0;
              v14 = SparseColumn[3];
              v15 = SparseColumn[4];
              do
              {
                v16 = *v14++;
                ConstraintStatus = operations_research::glop::RevisedSimplex::GetConstraintStatus(this + 528, v16);
                if (ConstraintStatus == 3)
                {
                  if (*v15 <= 0.0)
                  {
                    ++v12;
                  }

                  else
                  {
                    ++v13;
                  }
                }

                else if (ConstraintStatus == 2)
                {
                  if (*v15 > 0.0)
                  {
                    ++v12;
                  }

                  else
                  {
                    ++v13;
                  }
                }

                ++v15;
                --v11;
              }

              while (v11);
              if (v13 != v12)
              {
                break;
              }
            }

            v7 = *(this + 2682);
            *(*(this + 2691) + 8 * v5) = llround(*(v7 + 8 * v5));
            if (++v5 == v6)
            {
              goto LABEL_23;
            }
          }

          v7 = *(this + 2682);
          v18 = *(v7 + 8 * v5);
          v19 = *(this + 2691);
          if (v13 <= v12)
          {
            break;
          }

          *(v19 + 8 * v5++) = vcvtmd_s64_f64(v18);
          if (v5 == v6)
          {
            goto LABEL_23;
          }
        }

        *(v19 + 8 * v5++) = vcvtpd_s64_f64(v18);
      }

      while (v5 != v6);
    }

LABEL_23:
    v1[1032] = 1;
  }

  return v2;
}

uint64_t operations_research::sat::FeasibilityPump::PropagationRounding(operations_research::sat::FeasibilityPump *this)
{
  v1 = this + 20480;
  if (*(this + 21440) != 1)
  {
    return 0;
  }

  v2 = this;
  result = operations_research::sat::SatSolver::ResetToLevelZero(*(this + 2677));
  if (result)
  {
    v46 = v1;
    v4 = *(v2 + 2682);
    v48 = v2;
    if (*(v2 + 2683) == v4)
    {
      v6 = 0;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = vabdd_f64(round(*(v4 + 8 * v5)), *(v4 + 8 * v5));
        if ((*(*(v2 + 2661) + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v5))
        {
          operator new();
        }

        v9 = v6;
        v10 = v6 >> 4;
        if (((v6 >> 4) + 1) >> 60)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if (v6 >> 4 != -1)
        {
          if (!(((v6 >> 4) + 1) >> 60))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v11 = 16 * v10;
        *v11 = v8;
        *(v11 + 8) = v7 - 1;
        v6 = 16 * v10 + 16;
        memcpy(0, 0, v9);
        v2 = v48;
        v5 = v7;
        v4 = *(v48 + 2682);
        ++v7;
      }

      while (v5 < (*(v48 + 2683) - v4) >> 3);
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,false>(0, 0, &v49, 0, 1);
    v12 = 126 - 2 * __clz(v6 >> 4);
    if (v6)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,false>(0, v6, &v49, v13, 1);
    v18 = 0;
    if (v6)
    {
      v14 = 0;
      v15 = 1;
      do
      {
        v16 = v18;
        v17 = v18 >> 2;
        if (((v18 >> 2) + 1) >> 62)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if (v18 >> 2 != -1)
        {
          if (!(((v18 >> 2) + 1) >> 62))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(4 * v17) = *(16 * v14 + 8);
        v18 = 4 * v17 + 4;
        memcpy(0, 0, v16);
        v2 = v48;
        v14 = v15++;
      }

      while (v6 >> 4 > v14);
      operator delete(0);
    }

    if (!v18)
    {
LABEL_72:
      v46[1032] = 1;
      return operations_research::sat::SatSolver::ResetToLevelZero(*(v2 + 2677));
    }

    v19 = 0;
    while (1)
    {
      v20 = *v19;
      if (operations_research::TimeLimit::LimitReached(*(v2 + 2672)))
      {
        return 0;
      }

      v21 = *(*(v2 + 2654) + 4 * v20);
      if (v21)
      {
        absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v49, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/feasibility_pump.cc", 602);
        goto LABEL_80;
      }

      v22 = **(v2 + 2678);
      v23 = (*(*(v2 + 2673) + 40) + 8 * v21);
      v24 = *v23;
      v53 = v24;
      v25 = v23[1];
      v52 = -v25;
      if (v24 + v25)
      {
        __src = -v25;
        v26 = (v22 + 24 * (v21 / 2));
        v27 = *(*(v2 + 2682) + 8 * v20);
        v28 = vcvtmd_s64_f64(v27);
        v29 = operations_research::Domain::Contains(v26, v28);
        v30 = vcvtpd_s64_f64(v27);
        v31 = v24 <= v28 && v29;
        v32 = operations_research::Domain::Contains(v26, v30);
        v33 = __src >= v30 && v32;
        IsEmpty = operations_research::Domain::IsEmpty(v26);
        v35 = llround(v27);
        if (IsEmpty)
        {
          *(*(v48 + 2691) + 8 * v20) = v35;
          *(*(v48 + 2677) + 528) = 1;
          return 0;
        }

        if (v24 <= v30)
        {
          if (__src >= v28)
          {
            if (v33 && v31)
            {
              *(*(v48 + 2691) + 8 * v20) = v35;
            }

            else if (v33)
            {
              *(*(v48 + 2691) + 8 * v20) = v30;
              v35 = v30;
            }

            else if (v31)
            {
              *(*(v48 + 2691) + 8 * v20) = v28;
              v35 = v28;
            }

            else
            {
              v36 = v35;
              operations_research::sat::IntegerEncoder::Canonicalize(*(v48 + 2675), v21, v35, &v49);
              v37 = v50;
              v38 = v50 - v36;
              if (v50 - v36 < 0)
              {
                v38 = v36 - v50;
              }

              v39 = -v51 - v36;
              if (v39 < 0)
              {
                v39 = v36 + v51;
              }

              if (v38 >= v39)
              {
                v37 = -v51;
              }

              v40 = *(v48 + 2691);
              *(v40 + 8 * v20) = v37;
              v35 = *(v40 + 8 * v20);
            }
          }

          else
          {
            *(*(v48 + 2691) + 8 * v20) = __src;
            v35 = __src;
          }
        }

        else
        {
          *(*(v48 + 2691) + 8 * v20) = v24;
          v35 = v24;
        }

        if (!operations_research::Domain::Contains(v26, v35))
        {
          absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v49, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/feasibility_pump.cc", 657);
LABEL_80:
          absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&v49);
        }

        v2 = v48;
        v41 = *(*(v48 + 2691) + 8 * v20);
        if (v24 > v41)
        {
          absl::lts_20240722::log_internal::MakeCheckOpString<long long,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const&>(*(*(v48 + 2691) + 8 * v20), &v53, "integer_solution_[var_index] >= lb");
        }

        if (v41 > __src)
        {
          absl::lts_20240722::log_internal::MakeCheckOpString<long long,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const&>(*(*(v48 + 2691) + 8 * v20), &v52, "integer_solution_[var_index] <= ub");
        }

        if (v41 == v24)
        {
          if (v24 >= 0x8000000000000002)
          {
            v42 = -v24;
          }

          else
          {
            v42 = 0x7FFFFFFFFFFFFFFFLL;
          }

          AssociatedLiteral = operations_research::sat::IntegerEncoder::GetOrCreateAssociatedLiteral(*(v48 + 2675), v21 | 1u, v42);
        }

        else
        {
          v44 = *(v48 + 2675);
          if (v41 == __src)
          {
            AssociatedLiteral = operations_research::sat::IntegerEncoder::GetOrCreateAssociatedLiteral(v44, v21, __src);
          }

          else
          {
            AssociatedLiteral = operations_research::sat::IntegerEncoder::GetOrCreateLiteralAssociatedToEquality(v44, v21, v41);
          }
        }

        v45 = AssociatedLiteral;
        if (!operations_research::sat::SatSolver::FinishPropagation(*(v48 + 2677)))
        {
          return 0;
        }

        operations_research::sat::SatSolver::EnqueueDecisionAndBacktrackOnConflict(*(v48 + 2677), v45, 0);
        if (*(*(v48 + 2677) + 528) == 1)
        {
          return 0;
        }
      }

      else
      {
        *(*(v2 + 2691) + 8 * v20) = v24;
      }

      if (++v19 == v18)
      {
        goto LABEL_72;
      }
    }
  }

  return result;
}

void sub_23CB9D5BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, void *a13)
{
  if (__p)
  {
    v13 = a1;
    operator delete(__p);
    a1 = v13;
  }

  _Unwind_Resume(a1);
}

int **operations_research::sat::FeasibilityPump::FillIntegerSolutionStats(int **this)
{
  this[2690] = 0;
  v1 = *this;
  v2 = this[1];
  if (*this != v2)
  {
    v3 = 0;
    v4 = this[2691];
    do
    {
      v3 = (v3 + *(v1 + 1) * *&v4[2 * *v1]);
      this[2690] = v3;
      v1 += 4;
    }

    while (v1 != v2);
  }

  *(this + 21513) = 1;
  *(this + 5394) = 0;
  this[2698] = 0;
  v5 = this[6];
  v6 = -858993459 * ((this[7] - v5) >> 3);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = v6 & 0x7FFFFFFF;
    do
    {
      v14 = &v5[10 * v9];
      v15 = v14[2];
      v16 = v14[3];
      if (v15 == v16)
      {
        v20 = 0;
        v26 = v14[1];
        v21 = __OFSUB__(0, v26);
        v25 = -v26;
        if (!((v25 < 0) ^ v21 | (v25 == 0)))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v17 = 0;
        while (1)
        {
          v18 = *&this[2691][2 * *v15];
          v19 = *(v15 + 1);
          v20 = (v18 * v19) >> 64 == (v18 * v19) >> 63 ? v18 * v19 : ((v19 ^ v18) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
          if (v20 == 0x8000000000000000)
          {
            break;
          }

          if (v20 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_31;
          }

          v21 = __OFADD__(v17, v20);
          v22 = v17 + v20;
          if (v21)
          {
            v17 = (v17 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v22;
          }

          if (v17 == 0x8000000000000000)
          {
            v20 = 0x8000000000000000;
            if (*v14 == 0x8000000000000000)
            {
              goto LABEL_14;
            }

            goto LABEL_34;
          }

          v15 += 4;
          v23 = v17 == 0x7FFFFFFFFFFFFFFFLL || v15 == v16;
          v20 = v17;
          if (v23)
          {
LABEL_31:
            v24 = v14[1];
            v21 = __OFSUB__(v20, v24);
            v25 = v20 - v24;
            if ((v25 < 0) ^ v21 | (v25 == 0))
            {
              break;
            }

            goto LABEL_6;
          }
        }
      }

      if (*v14 > v20)
      {
LABEL_34:
        v25 = 0;
LABEL_6:
        *(this + 21513) = 0;
        *(this + 5394) = ++v8;
        v11 = *v14;
        v12 = v11 <= v20;
        v13 = v11 - v20;
        if (v12)
        {
          v13 = 0;
        }

        if (v25 > v13)
        {
          v13 = v25;
        }

        if (v7 <= v13)
        {
          v7 = v13;
        }

        this[2698] = v7;
      }

LABEL_14:
      ++v9;
    }

    while (v9 != v10);
  }

  return this;
}

void operations_research::glop::RevisedSimplex::~RevisedSimplex(operations_research::glop::RevisedSimplex *this)
{
  v2 = *(this + 2567);
  if (v2)
  {
    *(this + 2568) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2564);
  if (v3)
  {
    *(this + 2565) = v3;
    operator delete(v3);
  }

  v4 = *(this + 2558);
  *(this + 2558) = 0;
  if (v4)
  {
    MEMORY[0x23EED9440](v4, 0x1000C8077774924);
  }

  operations_research::glop::LuFactorization::~LuFactorization((this + 16560));
  operations_research::glop::GlopParameters::~GlopParameters((this + 16232));
  operations_research::glop::GlopParameters::~GlopParameters((this + 15904));
  operations_research::StatsGroup::~StatsGroup((this + 15824));
  operations_research::glop::RevisedSimplex::RatioTestStats::~RatioTestStats((this + 15184));
  operations_research::glop::RevisedSimplex::IterationStats::~IterationStats((this + 14424));
  v5 = *(this + 1790);
  if (v5)
  {
    *(this + 1791) = v5;
    operator delete(v5);
  }

  v6 = *(this + 1787);
  if (v6)
  {
    *(this + 1788) = v6;
    operator delete(v6);
  }

  v7 = *(this + 1784);
  if (v7)
  {
    *(this + 1785) = v7;
    operator delete(v7);
  }

  operations_research::glop::DynamicMaximum<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>::~DynamicMaximum(this + 13768);
  v8 = *(this + 1716);
  if (v8)
  {
    *(this + 1717) = v8;
    operator delete(v8);
  }

  v9 = *(this + 1713);
  if (v9)
  {
    *(this + 1714) = v9;
    operator delete(v9);
  }

  *(this + 1703) = &unk_284F3A5F8;
  if (*(this + 13655) < 0)
  {
    operator delete(*(this + 1704));
  }

  operations_research::StatsGroup::~StatsGroup((this + 13544));
  operations_research::glop::GlopParameters::~GlopParameters((this + 13216));
  operations_research::glop::ReducedCosts::~ReducedCosts((this + 12264));
  operations_research::glop::UpdateRow::~UpdateRow((this + 11360));
  operations_research::glop::VariableValues::~VariableValues((this + 11032));
  operations_research::glop::DynamicMaximum<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>::~DynamicMaximum(this + 10552);
  operations_research::glop::DualEdgeNorms::~DualEdgeNorms((this + 9840));
  operations_research::glop::PrimalEdgeNorms::~PrimalEdgeNorms((this + 8880));
  operations_research::glop::VariablesInfo::~VariablesInfo((this + 8520));
  operations_research::glop::BasisFactorization::~BasisFactorization((this + 3664));
  v10 = *(this + 454);
  if (v10)
  {
    v11 = *(this + 455);
    v12 = *(this + 454);
    if (v11 != v10)
    {
      do
      {
        if (*(v11 - 1) < 0)
        {
          operator delete(*(v11 - 24));
        }

        v11 -= 40;
      }

      while (v11 != v10);
      v12 = *(this + 454);
    }

    *(this + 455) = v10;
    operator delete(v12);
  }

  v13 = *(this + 446);
  if (v13)
  {
    v14 = *(this + 447);
    v15 = *(this + 446);
    if (v14 != v13)
    {
      v16 = v14 - 32;
      do
      {
        v17 = *(v14 - 8);
        v14 -= 32;
        if (v14 == v17)
        {
          (*(*v17 + 32))(v17);
        }

        else if (v17)
        {
          (*(*v17 + 40))(v17);
        }

        v16 -= 32;
      }

      while (v14 != v13);
      v15 = *(this + 446);
    }

    *(this + 447) = v13;
    operator delete(v15);
  }

  v18 = *(this + 91);
  if (v18)
  {
    *(this + 92) = v18;
    operator delete(v18);
  }

  v19 = *(this + 87);
  if (v19)
  {
    operator delete(v19);
  }

  v20 = *(this + 84);
  if (v20)
  {
    *(this + 85) = v20;
    operator delete(v20);
  }

  v21 = *(this + 80);
  if (v21)
  {
    *(this + 81) = v21;
    operator delete(v21);
  }

  v22 = *(this + 76);
  if (v22)
  {
    *(this + 77) = v22;
    operator delete(v22);
  }

  v23 = *(this + 72);
  if (v23)
  {
    *(this + 73) = v23;
    operator delete(v23);
  }

  v24 = *(this + 69);
  if (v24)
  {
    *(this + 70) = v24;
    operator delete(v24);
  }

  v25 = *(this + 66);
  if (v25)
  {
    *(this + 67) = v25;
    operator delete(v25);
  }

  v26 = *(this + 63);
  if (v26)
  {
    *(this + 64) = v26;
    operator delete(v26);
  }

  v27 = *(this + 60);
  if (v27)
  {
    *(this + 61) = v27;
    operator delete(v27);
  }

  v28 = *(this + 57);
  if (v28)
  {
    *(this + 58) = v28;
    operator delete(v28);
  }

  v29 = *(this + 52);
  if (v29)
  {
    v30 = *(this + 53);
    v31 = *(this + 52);
    if (v30 != v29)
    {
      do
      {
        v32 = *(v30 - 1);
        v30 -= 3;
        if (v32 < 0)
        {
          operator delete(*v30);
        }
      }

      while (v30 != v29);
      v31 = *(this + 52);
    }

    *(this + 53) = v29;
    operator delete(v31);
  }

  v33 = *(this + 49);
  if (v33)
  {
    *(this + 50) = v33;
    operator delete(v33);
  }

  v34 = *(this + 46);
  if (v34)
  {
    *(this + 47) = v34;
    operator delete(v34);
  }

  v35 = *(this + 43);
  if (v35)
  {
    operator delete(v35);
  }

  v36 = *(this + 40);
  if (v36)
  {
    *(this + 41) = v36;
    operator delete(v36);
  }

  v37 = *(this + 36);
  if (v37)
  {
    *(this + 37) = v37;
    operator delete(v37);
  }

  v38 = *(this + 32);
  if (v38)
  {
    *(this + 33) = v38;
    operator delete(v38);
  }

  v39 = *(this + 27);
  if (v39)
  {
    *(this + 28) = v39;
    operator delete(v39);
  }

  v40 = *(this + 24);
  if (v40)
  {
    *(this + 25) = v40;
    operator delete(v40);
  }

  v41 = *(this + 19);
  if (v41)
  {
    *(this + 20) = v41;
    operator delete(v41);
  }

  v42 = *(this + 16);
  if (v42)
  {
    *(this + 17) = v42;
    operator delete(v42);
  }

  v43 = *(this + 13);
  if (v43)
  {
    *(this + 14) = v43;
    operator delete(v43);
  }

  v44 = *(this + 9);
  if (v44)
  {
    *(this + 10) = v44;
    operator delete(v44);
  }

  v45 = *(this + 6);
  if (v45)
  {
    *(this + 7) = v45;
    operator delete(v45);
  }

  v46 = *(this + 3);
  if (v46)
  {
    *(this + 4) = v46;
    operator delete(v46);
  }
}

void operations_research::glop::RevisedSimplex::RatioTestStats::~RatioTestStats(operations_research::glop::RevisedSimplex::RatioTestStats *this)
{
  *(this + 70) = &unk_284F3A5F8;
  if (*(this + 591) < 0)
  {
    operator delete(*(this + 71));
    *(this + 60) = &unk_284F3A5F8;
    if ((*(this + 511) & 0x80000000) == 0)
    {
LABEL_3:
      *(this + 50) = &unk_284F3A5F8;
      if ((*(this + 431) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    *(this + 60) = &unk_284F3A5F8;
    if ((*(this + 511) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*(this + 61));
  *(this + 50) = &unk_284F3A5F8;
  if ((*(this + 431) & 0x80000000) == 0)
  {
LABEL_4:
    *(this + 40) = &unk_284F3A5F8;
    if ((*(this + 351) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(*(this + 51));
  *(this + 40) = &unk_284F3A5F8;
  if ((*(this + 351) & 0x80000000) == 0)
  {
LABEL_5:
    *(this + 30) = &unk_284F3A5F8;
    if ((*(this + 271) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*(this + 41));
  *(this + 30) = &unk_284F3A5F8;
  if ((*(this + 271) & 0x80000000) == 0)
  {
LABEL_6:
    *(this + 20) = &unk_284F3A5F8;
    if ((*(this + 191) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(this + 31));
  *(this + 20) = &unk_284F3A5F8;
  if ((*(this + 191) & 0x80000000) == 0)
  {
LABEL_7:
    *(this + 10) = &unk_284F3A5F8;
    if ((*(this + 111) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*(this + 21));
  *(this + 10) = &unk_284F3A5F8;
  if ((*(this + 111) & 0x80000000) == 0)
  {
LABEL_8:
    v2 = this;

    goto LABEL_10;
  }

LABEL_17:
  operator delete(*(this + 11));
  v2 = this;

LABEL_10:
  operations_research::StatsGroup::~StatsGroup(v2);
}

void operations_research::glop::RevisedSimplex::IterationStats::~IterationStats(operations_research::glop::RevisedSimplex::IterationStats *this)
{
  *(this + 85) = &unk_284F3A5F8;
  if (*(this + 711) < 0)
  {
    operator delete(*(this + 86));
    *(this + 75) = &unk_284F3A5F8;
    if ((*(this + 631) & 0x80000000) == 0)
    {
LABEL_3:
      *(this + 62) = &unk_284F3A5F8;
      if ((*(this + 527) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    *(this + 75) = &unk_284F3A5F8;
    if ((*(this + 631) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*(this + 76));
  *(this + 62) = &unk_284F3A5F8;
  if ((*(this + 527) & 0x80000000) == 0)
  {
LABEL_4:
    *(this + 49) = &unk_284F3A5F8;
    if ((*(this + 423) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(*(this + 63));
  *(this + 49) = &unk_284F3A5F8;
  if ((*(this + 423) & 0x80000000) == 0)
  {
LABEL_5:
    *(this + 36) = &unk_284F3A5F8;
    if ((*(this + 319) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*(this + 50));
  *(this + 36) = &unk_284F3A5F8;
  if ((*(this + 319) & 0x80000000) == 0)
  {
LABEL_6:
    *(this + 23) = &unk_284F3A5F8;
    if ((*(this + 215) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(this + 37));
  *(this + 23) = &unk_284F3A5F8;
  if ((*(this + 215) & 0x80000000) == 0)
  {
LABEL_7:
    *(this + 10) = &unk_284F3A5F8;
    if ((*(this + 111) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*(this + 24));
  *(this + 10) = &unk_284F3A5F8;
  if ((*(this + 111) & 0x80000000) == 0)
  {
LABEL_8:
    v2 = this;

    goto LABEL_10;
  }

LABEL_17:
  operator delete(*(this + 11));
  v2 = this;

LABEL_10:
  operations_research::StatsGroup::~StatsGroup(v2);
}

uint64_t operations_research::glop::DynamicMaximum<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>::~DynamicMaximum(uint64_t a1)
{
  *(a1 + 400) = &unk_284F3A5F8;
  if (*(a1 + 431) < 0)
  {
    operator delete(*(a1 + 408));
    *(a1 + 320) = &unk_284F3A5F8;
    if ((*(a1 + 351) & 0x80000000) == 0)
    {
LABEL_3:
      *(a1 + 216) = &unk_284F3A5F8;
      if ((*(a1 + 247) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else
  {
    *(a1 + 320) = &unk_284F3A5F8;
    if ((*(a1 + 351) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*(a1 + 328));
  *(a1 + 216) = &unk_284F3A5F8;
  if ((*(a1 + 247) & 0x80000000) == 0)
  {
LABEL_4:
    operations_research::StatsGroup::~StatsGroup((a1 + 136));
    v2 = *(a1 + 112);
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:
  operator delete(*(a1 + 224));
  operations_research::StatsGroup::~StatsGroup((a1 + 136));
  v2 = *(a1 + 112);
  if (v2)
  {
LABEL_5:
    *(a1 + 120) = v2;
    operator delete(v2);
  }

LABEL_6:
  v3 = *(a1 + 80);
  if (v3)
  {
    *(a1 + 88) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    *(a1 + 56) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    *(a1 + 32) = v5;
    operator delete(v5);
  }

  return a1;
}

void operations_research::glop::ReducedCosts::~ReducedCosts(operations_research::glop::ReducedCosts *this)
{
  v2 = *(this + 110);
  if (v2)
  {
    *(this + 111) = v2;
    operator delete(v2);
  }

  v3 = *(this + 106);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 103);
  if (v4)
  {
    *(this + 104) = v4;
    operator delete(v4);
  }

  v5 = *(this + 99);
  if (v5)
  {
    *(this + 100) = v5;
    operator delete(v5);
  }

  v6 = *(this + 96);
  if (v6)
  {
    *(this + 97) = v6;
    operator delete(v6);
  }

  v7 = *(this + 93);
  if (v7)
  {
    *(this + 94) = v7;
    operator delete(v7);
  }

  v8 = *(this + 90);
  if (v8)
  {
    *(this + 91) = v8;
    operator delete(v8);
  }

  *(this + 79) = &unk_284F3A5F8;
  if ((*(this + 663) & 0x80000000) == 0)
  {
    *(this + 69) = &unk_284F3A5F8;
    if ((*(this + 583) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    operator delete(*(this + 70));
    *(this + 59) = &unk_284F3A5F8;
    if ((*(this + 503) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_21:
    operator delete(*(this + 60));
    goto LABEL_18;
  }

  operator delete(*(this + 80));
  *(this + 69) = &unk_284F3A5F8;
  if (*(this + 583) < 0)
  {
    goto LABEL_20;
  }

LABEL_17:
  *(this + 59) = &unk_284F3A5F8;
  if (*(this + 503) < 0)
  {
    goto LABEL_21;
  }

LABEL_18:
  operations_research::StatsGroup::~StatsGroup((this + 392));
  operations_research::glop::GlopParameters::~GlopParameters((this + 64));
}

void operations_research::glop::UpdateRow::~UpdateRow(operations_research::glop::UpdateRow *this)
{
  *(this + 103) = &unk_284F3A5F8;
  if (*(this + 855) < 0)
  {
    operator delete(*(this + 104));
    *(this + 93) = &unk_284F3A5F8;
    if ((*(this + 775) & 0x80000000) == 0)
    {
LABEL_3:
      *(this + 83) = &unk_284F3A5F8;
      if ((*(this + 695) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else
  {
    *(this + 93) = &unk_284F3A5F8;
    if ((*(this + 775) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*(this + 94));
  *(this + 83) = &unk_284F3A5F8;
  if ((*(this + 695) & 0x80000000) == 0)
  {
LABEL_4:
    operations_research::StatsGroup::~StatsGroup((this + 584));
    operations_research::glop::GlopParameters::~GlopParameters((this + 256));
    v2 = *(this + 26);
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_21:
  operator delete(*(this + 84));
  operations_research::StatsGroup::~StatsGroup((this + 584));
  operations_research::glop::GlopParameters::~GlopParameters((this + 256));
  v2 = *(this + 26);
  if (v2)
  {
LABEL_5:
    *(this + 27) = v2;
    operator delete(v2);
  }

LABEL_6:
  v3 = *(this + 23);
  if (v3)
  {
    *(this + 24) = v3;
    operator delete(v3);
  }

  v4 = *(this + 19);
  if (v4)
  {
    *(this + 20) = v4;
    operator delete(v4);
  }

  v5 = *(this + 15);
  if (v5)
  {
    *(this + 16) = v5;
    operator delete(v5);
  }

  v6 = *(this + 12);
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(this + 9);
  if (v7)
  {
    *(this + 10) = v7;
    operator delete(v7);
  }

  v8 = *(this + 5);
  if (v8)
  {
    *(this + 6) = v8;
    operator delete(v8);
  }
}

void operations_research::glop::VariableValues::~VariableValues(operations_research::glop::VariableValues *this)
{
  v2 = *(this + 38);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 35);
  if (v3)
  {
    *(this + 36) = v3;
    operator delete(v3);
  }

  v4 = *(this + 31);
  if (v4)
  {
    *(this + 32) = v4;
    operator delete(v4);
  }

  v5 = *(this + 28);
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(this + 25);
  if (v6)
  {
    *(this + 26) = v6;
    operator delete(v6);
  }

  v7 = *(this + 21);
  if (v7)
  {
    *(this + 22) = v7;
    operator delete(v7);
  }

  operations_research::StatsGroup::~StatsGroup((this + 88));
  v8 = *(this + 8);
  if (v8)
  {
    *(this + 9) = v8;
    operator delete(v8);
  }
}

void operations_research::glop::DualEdgeNorms::~DualEdgeNorms(operations_research::glop::DualEdgeNorms *this)
{
  v2 = *(this + 85);
  if (v2)
  {
    *(this + 86) = v2;
    operator delete(v2);
  }

  v3 = *(this + 82);
  if (v3)
  {
    *(this + 83) = v3;
    operator delete(v3);
  }

  operations_research::glop::GlopParameters::~GlopParameters((this + 320));
  *(this + 30) = &unk_284F3A5F8;
  if (*(this + 271) < 0)
  {
    operator delete(*(this + 31));
    *(this + 20) = &unk_284F3A5F8;
    if ((*(this + 191) & 0x80000000) == 0)
    {
LABEL_7:
      *(this + 10) = &unk_284F3A5F8;
      if ((*(this + 111) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

  else
  {
    *(this + 20) = &unk_284F3A5F8;
    if ((*(this + 191) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  operator delete(*(this + 21));
  *(this + 10) = &unk_284F3A5F8;
  if ((*(this + 111) & 0x80000000) == 0)
  {
LABEL_8:
    v4 = this;

    goto LABEL_10;
  }

LABEL_13:
  operator delete(*(this + 11));
  v4 = this;

LABEL_10:
  operations_research::StatsGroup::~StatsGroup(v4);
}

void operations_research::glop::PrimalEdgeNorms::~PrimalEdgeNorms(operations_research::glop::PrimalEdgeNorms *this)
{
  v2 = *(this + 117);
  if (v2)
  {
    *(this + 118) = v2;
    operator delete(v2);
  }

  v3 = *(this + 113);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 110);
  if (v4)
  {
    *(this + 111) = v4;
    operator delete(v4);
  }

  v5 = *(this + 106);
  if (v5)
  {
    *(this + 107) = v5;
    operator delete(v5);
  }

  v6 = *(this + 102);
  if (v6)
  {
    *(this + 103) = v6;
    operator delete(v6);
  }

  v7 = *(this + 99);
  if (v7)
  {
    *(this + 100) = v7;
    operator delete(v7);
  }

  v8 = *(this + 96);
  if (v8)
  {
    *(this + 97) = v8;
    operator delete(v8);
  }

  *(this + 85) = &unk_284F3A5F8;
  if (*(this + 711) < 0)
  {
    operator delete(*(this + 86));
    *(this + 75) = &unk_284F3A5F8;
    if ((*(this + 631) & 0x80000000) == 0)
    {
LABEL_17:
      *(this + 65) = &unk_284F3A5F8;
      if ((*(this + 551) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

LABEL_22:
      operator delete(*(this + 66));
      *(this + 55) = &unk_284F3A5F8;
      if ((*(this + 471) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_23:
      operator delete(*(this + 56));
      goto LABEL_19;
    }
  }

  else
  {
    *(this + 75) = &unk_284F3A5F8;
    if ((*(this + 631) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }
  }

  operator delete(*(this + 76));
  *(this + 65) = &unk_284F3A5F8;
  if (*(this + 551) < 0)
  {
    goto LABEL_22;
  }

LABEL_18:
  *(this + 55) = &unk_284F3A5F8;
  if (*(this + 471) < 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  operations_research::StatsGroup::~StatsGroup((this + 360));
  operations_research::glop::GlopParameters::~GlopParameters((this + 24));
}

void operations_research::glop::VariablesInfo::~VariablesInfo(operations_research::glop::VariablesInfo *this)
{
  v2 = *(this + 40);
  if (v2)
  {
    *(this + 41) = v2;
    operator delete(v2);
  }

  v3 = *(this + 36);
  if (v3)
  {
    *(this + 37) = v3;
    operator delete(v3);
  }

  v4 = *(this + 32);
  if (v4)
  {
    *(this + 33) = v4;
    operator delete(v4);
  }

  v5 = *(this + 28);
  if (v5)
  {
    *(this + 29) = v5;
    operator delete(v5);
  }

  v6 = *(this + 24);
  if (v6)
  {
    *(this + 25) = v6;
    operator delete(v6);
  }

  v7 = *(this + 20);
  if (v7)
  {
    *(this + 21) = v7;
    operator delete(v7);
  }

  v8 = *(this + 16);
  if (v8)
  {
    *(this + 17) = v8;
    operator delete(v8);
  }

  v9 = *(this + 13);
  if (v9)
  {
    *(this + 14) = v9;
    operator delete(v9);
  }

  v10 = *(this + 10);
  if (v10)
  {
    *(this + 11) = v10;
    operator delete(v10);
  }

  v11 = *(this + 7);
  if (v11)
  {
    *(this + 8) = v11;
    operator delete(v11);
  }

  v12 = *(this + 4);
  if (v12)
  {
    *(this + 5) = v12;
    operator delete(v12);
  }

  v13 = *(this + 1);
  if (v13)
  {
    *(this + 2) = v13;
    operator delete(v13);
  }
}

void operations_research::glop::LinearProgram::~LinearProgram(operations_research::glop::LinearProgram *this)
{
  if (*(this + 439) < 0)
  {
    operator delete(*(this + 52));
  }

  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,int>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,int>>>::~raw_hash_set(this + 45);
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,int>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,int>>>::~raw_hash_set(this + 41);
  v2 = *(this + 38);
  if (v2)
  {
    *(this + 39) = v2;
    operator delete(v2);
  }

  v3 = *(this + 35);
  if (v3)
  {
    *(this + 36) = v3;
    operator delete(v3);
  }

  v4 = *(this + 32);
  if (v4)
  {
    *(this + 33) = v4;
    operator delete(v4);
  }

  v5 = *(this + 29);
  if (v5)
  {
    *(this + 30) = v5;
    operator delete(v5);
  }

  v6 = *(this + 26);
  if (v6)
  {
    v7 = *(this + 27);
    v8 = *(this + 26);
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 1);
        v7 -= 3;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = *(this + 26);
    }

    *(this + 27) = v6;
    operator delete(v8);
  }

  v10 = *(this + 23);
  if (v10)
  {
    *(this + 24) = v10;
    operator delete(v10);
  }

  v11 = *(this + 20);
  if (v11)
  {
    *(this + 21) = v11;
    operator delete(v11);
  }

  v12 = *(this + 17);
  if (v12)
  {
    *(this + 18) = v12;
    operator delete(v12);
  }

  v13 = *(this + 14);
  if (v13)
  {
    v14 = *(this + 15);
    v15 = *(this + 14);
    if (v14 != v13)
    {
      do
      {
        v16 = *(v14 - 1);
        v14 -= 3;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = *(this + 14);
    }

    *(this + 15) = v13;
    operator delete(v15);
  }

  v17 = *(this + 11);
  if (v17)
  {
    *(this + 12) = v17;
    operator delete(v17);
  }

  v18 = *(this + 8);
  if (v18)
  {
    *(this + 9) = v18;
    operator delete(v18);
  }

  v19 = *(this + 4);
  if (v19)
  {
    v20 = *(this + 5);
    v21 = *(this + 4);
    if (v20 != v19)
    {
      do
      {
        v23 = *(v20 - 6);
        v20 -= 6;
        v22 = v23;
        *v20 = 0;
        if (v23)
        {
          MEMORY[0x23EED9440](v22, 0x1000C8077774924);
        }
      }

      while (v20 != v19);
      v21 = *(this + 4);
    }

    *(this + 5) = v19;
    operator delete(v21);
  }

  v24 = *this;
  if (*this)
  {
    v25 = *(this + 1);
    v26 = *this;
    if (v25 != v24)
    {
      do
      {
        v28 = *(v25 - 6);
        v25 -= 6;
        v27 = v28;
        *v25 = 0;
        if (v28)
        {
          MEMORY[0x23EED9440](v27, 0x1000C8077774924);
        }
      }

      while (v25 != v24);
      v26 = *this;
    }

    *(this + 1) = v24;
    operator delete(v26);
  }
}

void absl::lts_20240722::log_internal::MakeCheckOpString<long long,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const&>(uint64_t a1, void *a2, char *a3)
{
  absl::lts_20240722::log_internal::CheckOpMessageBuilder::CheckOpMessageBuilder(&v6, a3);
  MEMORY[0x23EED91B0](&v6, a1);
  v5 = absl::lts_20240722::log_internal::CheckOpMessageBuilder::ForVar2(&v6);
  MEMORY[0x23EED91B0](v5, *a2);
  absl::lts_20240722::log_internal::CheckOpMessageBuilder::NewString(&v6);
}

void sub_23CB9EE40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<operations_research::sat::FeasibilityPump::LinearConstraintInternal>::__emplace_back_slow_path<operations_research::sat::FeasibilityPump::LinearConstraintInternal>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v5 = 0x666666666666666;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x666666666666666)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  v7 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v8 = 40 * v2 + 40;
  v9 = *a1;
  v10 = a1[1];
  v11 = v6 + *a1 - v10;
  if (*a1 != v10)
  {
    v12 = *a1;
    v13 = v6 + *a1 - v10;
    do
    {
      *v13 = *v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0;
      *(v13 + 16) = *(v12 + 1);
      *(v13 + 32) = v12[4];
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = 0;
      v12 += 5;
      v13 += 40;
    }

    while (v12 != v10);
    do
    {
      v14 = v9[2];
      if (v14)
      {
        v9[3] = v14;
        operator delete(v14);
      }

      v9 += 5;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

int64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>>>::find_or_prepare_insert<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>@<X0>(int64_t result@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
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
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v14, (v16 + (__clz(__rbit64(v21)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>>>::GetPolicyFunctions(void)::value);
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
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>>>::resize_impl(result, 3);
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

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>>>::resize_impl(uint64_t a1, uint64_t a2)
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

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,false>(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 <= 2)
    {
      break;
    }

    switch(v12)
    {
      case 3uLL:

        return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(v9, v9 + 16, a2 - 16);
      case 4uLL:
        result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(v9, v9 + 16, v9 + 32);
        v27 = *(a2 - 16);
        v28 = *(v9 + 32);
        if (v27 >= v28)
        {
          if (v28 < v27)
          {
            return result;
          }

          v30 = *(a2 - 8);
          v29 = *(v9 + 40);
          if (v30 >= v29)
          {
            return result;
          }
        }

        else
        {
          v29 = *(v9 + 40);
          v30 = *(a2 - 8);
        }

        *(v9 + 32) = v27;
        *(a2 - 16) = v28;
        *(v9 + 40) = v30;
        *(a2 - 8) = v29;
        v31 = *(v9 + 32);
        v32 = *(v9 + 16);
        if (v31 >= v32)
        {
          if (v32 < v31)
          {
            return result;
          }

          v34 = *(v9 + 40);
          v33 = *(v9 + 24);
          if (v34 >= v33)
          {
            return result;
          }
        }

        else
        {
          v33 = *(v9 + 24);
          v34 = *(v9 + 40);
        }

        *(v9 + 16) = v31;
        *(v9 + 32) = v32;
        *(v9 + 24) = v34;
        *(v9 + 40) = v33;
        v35 = *v9;
        if (v31 >= *v9)
        {
          if (v35 < v31)
          {
            return result;
          }

          v36 = *(v9 + 8);
          if (v34 >= v36)
          {
            return result;
          }
        }

        else
        {
          v36 = *(v9 + 8);
        }

        *v9 = v31;
        *(v9 + 16) = v35;
        *(v9 + 8) = v34;
        *(v9 + 24) = v36;
        return result;
      case 5uLL:

        return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(v9, v9 + 16, v9 + 32, v9 + 48, a2 - 16);
    }

LABEL_11:
    if (v12 <= 23)
    {
      v37 = v9 + 16;
      v39 = v9 == a2 || v37 == a2;
      if (a5)
      {
        if (v39)
        {
          return result;
        }

        v40 = 0;
        v41 = v9;
LABEL_56:
        v43 = v41;
        v41 = v37;
        v44 = *(v43 + 16);
        v45 = *v43;
        if (v44 >= *v43)
        {
          if (v45 < v44)
          {
            goto LABEL_55;
          }

          v46 = *(v43 + 24);
          v47 = *(v43 + 8);
          if (v46 >= v47)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v46 = *(v43 + 24);
          v47 = *(v43 + 8);
        }

        *(v43 + 16) = v45;
        *(v41 + 8) = v47;
        v42 = v9;
        if (v43 == v9)
        {
          goto LABEL_54;
        }

        v48 = v40;
        while (1)
        {
          v51 = *(v9 + v48 - 16);
          if (v44 < v51)
          {
            v49 = *(v9 + v48 - 8);
          }

          else
          {
            if (v51 < v44)
            {
              v42 = v9 + v48;
LABEL_54:
              *v42 = v44;
              *(v42 + 8) = v46;
LABEL_55:
              v37 = v41 + 16;
              v40 += 16;
              if (v41 + 16 == a2)
              {
                return result;
              }

              goto LABEL_56;
            }

            v49 = *(v9 + v48 - 8);
            if (v46 >= v49)
            {
              v42 = v43;
              goto LABEL_54;
            }
          }

          v43 -= 16;
          v50 = v9 + v48;
          *v50 = v51;
          *(v50 + 8) = v49;
          v48 -= 16;
          if (!v48)
          {
            v42 = v9;
            goto LABEL_54;
          }
        }
      }

      if (v39)
      {
        return result;
      }

      for (i = v9 + 8; ; i += 16)
      {
        v57 = v8;
        v8 = v37;
        v58 = *(v57 + 16);
        v59 = *v57;
        if (v58 < *v57)
        {
          break;
        }

        if (v59 >= v58)
        {
          v60 = *(v57 + 24);
          if (v60 < *(v57 + 8))
          {
            goto LABEL_87;
          }
        }

LABEL_84:
        v37 += 16;
        if (v8 + 16 == a2)
        {
          return result;
        }
      }

      v60 = *(v57 + 24);
LABEL_87:
      for (j = i; ; j -= 16)
      {
        *(j + 8) = v59;
        *(j + 16) = *j;
        v59 = *(j - 24);
        if (v58 >= v59 && (v59 < v58 || v60 >= *(j - 16)))
        {
          break;
        }
      }

      *(j - 8) = v58;
      *j = v60;
      goto LABEL_84;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {
        v52 = (v12 - 2) >> 1;
        v53 = v52 + 1;
        v54 = v9 + 16 * v52;
        do
        {
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *>(v9, a3, (a2 - v9) >> 4, v54);
          v54 -= 16;
          --v53;
        }

        while (v53);
        do
        {
          result = std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::pair<double,int> *>(v9, a2, a3, v12);
          a2 -= 16;
        }

        while (v12-- > 2);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = v9 + 16 * (v12 >> 1);
    if (v12 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(v8 + 16 * (v12 >> 1), v8, a2 - 16);
      if (a5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(v8, v8 + 16 * (v12 >> 1), a2 - 16);
      v15 = 16 * v13;
      v16 = 16 * v13 + v8 - 16;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(v8 + 16, v16, a2 - 32);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(v8 + 32, v8 + 16 + v15, a2 - 48);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(v16, v14, v8 + 16 + v15);
      v17 = *v8;
      *v8 = *v14;
      *v14 = v17;
      v18 = *(v8 + 8);
      *(v8 + 8) = *(v14 + 8);
      *(v14 + 8) = v18;
      if (a5)
      {
        goto LABEL_20;
      }
    }

    v19 = *(v8 - 16);
    if (v19 >= *v8 && (*v8 < v19 || *(v8 - 8) >= *(v8 + 8)))
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<double,int> *,std::__less<void,void> &>(v8, a2);
      v9 = result;
LABEL_25:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }

LABEL_20:
    v20 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<double,int> *,std::__less<void,void> &>(v8, a2);
    if ((v21 & 1) == 0)
    {
      goto LABEL_23;
    }

    v22 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *>(v8, v20);
    v9 = v20 + 16;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *>(v20 + 16, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v20;
      if (v22)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v22)
    {
LABEL_23:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,false>(v8, v20, a3, -v11, a5 & 1);
      v9 = v20 + 16;
      goto LABEL_25;
    }
  }

  if (v12 < 2)
  {
    return result;
  }

  if (v12 != 2)
  {
    goto LABEL_11;
  }

  v23 = *(a2 - 16);
  v24 = *v9;
  if (v23 < *v9)
  {
    v25 = *(v9 + 8);
    v26 = *(a2 - 8);
LABEL_30:
    *v9 = v23;
    *(a2 - 16) = v24;
    *(v9 + 8) = v26;
    *(a2 - 8) = v25;
    return result;
  }

  if (v24 >= v23)
  {
    v26 = *(a2 - 8);
    v25 = *(v9 + 8);
    if (v26 < v25)
    {
      goto LABEL_30;
    }
  }

  return result;
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *a1;
  if (*a2 < *a1 || v4 >= v3 && *(a2 + 8) < *(a1 + 8))
  {
    v5 = *a3;
    if (*a3 < v3)
    {
      v6 = *(a3 + 8);
LABEL_4:
      *a1 = v5;
      *a3 = v4;
      v7 = *(a1 + 8);
      *(a1 + 8) = v6;
      *(a3 + 8) = v7;
      return 1;
    }

    if (v3 >= v5)
    {
      v6 = *(a3 + 8);
      v16 = *(a2 + 8);
      if (v6 < v16)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v16 = *(a2 + 8);
    }

    *a1 = v3;
    *a2 = v4;
    v17 = *(a1 + 8);
    *(a1 + 8) = v16;
    *(a2 + 8) = v17;
    v18 = *a3;
    if (*a3 >= v4)
    {
      if (v4 < v18)
      {
        return 1;
      }

      v19 = *(a3 + 8);
      if (v19 >= v17)
      {
        return 1;
      }
    }

    else
    {
      v19 = *(a3 + 8);
    }

    *a2 = v18;
    *a3 = v4;
    *(a2 + 8) = v19;
    result = 1;
    *(a3 + 8) = v17;
    return result;
  }

  v9 = *a3;
  if (*a3 < v3)
  {
    v10 = *(a2 + 8);
    v11 = *(a3 + 8);
LABEL_9:
    *a2 = v9;
    *a3 = v3;
    *(a2 + 8) = v11;
    *(a3 + 8) = v10;
    v12 = *a2;
    v13 = *a1;
    if (*a2 < *a1)
    {
      v14 = *(a1 + 8);
      v15 = *(a2 + 8);
LABEL_11:
      *a1 = v12;
      *a2 = v13;
      *(a1 + 8) = v15;
      result = 1;
      *(a2 + 8) = v14;
      return result;
    }

    if (v13 >= v12)
    {
      v15 = *(a2 + 8);
      v14 = *(a1 + 8);
      if (v15 < v14)
      {
        goto LABEL_11;
      }
    }

    return 1;
  }

  if (v3 < v9)
  {
    return 0;
  }

  v11 = *(a3 + 8);
  v10 = *(a2 + 8);
  if (v11 < v10)
  {
    goto LABEL_9;
  }

  return 0;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(a1, a2, a3);
  v11 = *a4;
  v12 = *a3;
  if (*a4 >= *a3)
  {
    if (v12 < v11)
    {
      goto LABEL_16;
    }

    v14 = *(a4 + 8);
    v13 = *(a3 + 8);
    if (v14 >= v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = *(a3 + 8);
    v14 = *(a4 + 8);
  }

  *a3 = v11;
  *a4 = v12;
  *(a3 + 8) = v14;
  *(a4 + 8) = v13;
  v15 = *a3;
  v16 = *a2;
  if (*a3 >= *a2)
  {
    if (v16 < v15)
    {
      goto LABEL_16;
    }

    v18 = *(a3 + 8);
    v17 = *(a2 + 8);
    if (v18 >= v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v17 = *(a2 + 8);
    v18 = *(a3 + 8);
  }

  *a2 = v15;
  *a3 = v16;
  *(a2 + 8) = v18;
  *(a3 + 8) = v17;
  v19 = *a2;
  v20 = *a1;
  if (*a2 < *a1)
  {
    v21 = *(a1 + 8);
    v22 = *(a2 + 8);
LABEL_7:
    *a1 = v19;
    *a2 = v20;
    *(a1 + 8) = v22;
    *(a2 + 8) = v21;
    goto LABEL_16;
  }

  if (v20 >= v19)
  {
    v22 = *(a2 + 8);
    v21 = *(a1 + 8);
    if (v22 < v21)
    {
      goto LABEL_7;
    }
  }

LABEL_16:
  v23 = *a5;
  v24 = *a4;
  if (*a5 >= *a4)
  {
    if (v24 < v23)
    {
      return result;
    }

    v26 = *(a5 + 8);
    v25 = *(a4 + 8);
    if (v26 >= v25)
    {
      return result;
    }
  }

  else
  {
    v25 = *(a4 + 8);
    v26 = *(a5 + 8);
  }

  *a4 = v23;
  *a5 = v24;
  *(a4 + 8) = v26;
  *(a5 + 8) = v25;
  v27 = *a4;
  v28 = *a3;
  if (*a4 >= *a3)
  {
    if (v28 < v27)
    {
      return result;
    }

    v30 = *(a4 + 8);
    v29 = *(a3 + 8);
    if (v30 >= v29)
    {
      return result;
    }
  }

  else
  {
    v29 = *(a3 + 8);
    v30 = *(a4 + 8);
  }

  *a3 = v27;
  *a4 = v28;
  *(a3 + 8) = v30;
  *(a4 + 8) = v29;
  v31 = *a3;
  v32 = *a2;
  if (*a3 >= *a2)
  {
    if (v32 < v31)
    {
      return result;
    }

    v34 = *(a3 + 8);
    v33 = *(a2 + 8);
    if (v34 >= v33)
    {
      return result;
    }
  }

  else
  {
    v33 = *(a2 + 8);
    v34 = *(a3 + 8);
  }

  *a2 = v31;
  *a3 = v32;
  *(a2 + 8) = v34;
  *(a3 + 8) = v33;
  v35 = *a2;
  v36 = *a1;
  if (*a2 < *a1)
  {
    v37 = *(a1 + 8);
    v38 = *(a2 + 8);
LABEL_24:
    *a1 = v35;
    *a2 = v36;
    *(a1 + 8) = v38;
    *(a2 + 8) = v37;
    return result;
  }

  if (v36 >= v35)
  {
    v38 = *(a2 + 8);
    v37 = *(a1 + 8);
    if (v38 < v37)
    {
      goto LABEL_24;
    }
  }

  return result;
}

unint64_t std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<double,int> *,std::__less<void,void> &>(unint64_t a1, unint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a2 - 16);
  if (*a1 < v4 || v4 >= v2 && v3 < *(a2 - 8))
  {
    i = a1;
    do
    {
      v6 = *(i + 16);
      i += 16;
      v7 = v6;
    }

    while (v2 >= v6 && (v7 < v2 || v3 >= *(i + 8)));
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (a2 -= 16; v2 < v4 || v4 >= v2 && v3 < *(a2 + 8); a2 -= 16)
    {
      v8 = *(a2 - 16);
      v4 = v8;
    }
  }

  if (i < a2)
  {
    v9 = *i;
    v10 = *a2;
    do
    {
      *i = v10;
      *a2 = v9;
      v11 = *(i + 16);
      i += 16;
      v9 = v11;
      v12 = *(i - 8);
      *(i - 8) = *(a2 + 8);
      *(a2 + 8) = v12;
      while (v2 >= v9 && (v9 < v2 || v3 >= *(i + 8)))
      {
        v13 = *(i + 16);
        i += 16;
        v9 = v13;
      }

      do
      {
        do
        {
          v14 = *(a2 - 16);
          a2 -= 16;
          v10 = v14;
        }

        while (v2 < v14);
      }

      while (v10 >= v2 && v3 < *(a2 + 8));
    }

    while (i < a2);
  }

  if (i - 16 != a1)
  {
    *a1 = *(i - 16);
    *(a1 + 8) = *(i - 8);
  }

  *(i - 16) = v2;
  *(i - 8) = v3;
  return i;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<double,int> *,std::__less<void,void> &>(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 8);
  while (1)
  {
    v5 = *(a1 + v2 + 16);
    if (v5 >= v3 && (v3 < v5 || *(a1 + v2 + 24) >= v4))
    {
      break;
    }

    v2 += 16;
  }

  v6 = a1 + v2 + 16;
  if (v2)
  {
    do
    {
      v7 = *(a2 - 16);
      a2 -= 16;
      v8 = v7;
    }

    while (v7 >= v3 && (v3 < v8 || *(a2 + 8) >= v4));
  }

  else
  {
LABEL_19:
    if (v6 < a2)
    {
      do
      {
        v9 = *(a2 - 16);
        a2 -= 16;
        v10 = v9;
        if (v9 < v3)
        {
          break;
        }

        if (v3 < v10)
        {
          goto LABEL_19;
        }
      }

      while (*(a2 + 8) >= v4 && v6 < a2);
    }
  }

  if (v6 >= a2)
  {
    v13 = a1 + v2 + 16;
  }

  else
  {
    v12 = *a2;
    v13 = a1 + v2 + 16;
    v14 = a2;
    do
    {
      *v13 = v12;
      *v14 = v5;
      v15 = *(v13 + 8);
      *(v13 + 8) = *(v14 + 8);
      *(v14 + 8) = v15;
      do
      {
        do
        {
          v16 = *(v13 + 16);
          v13 += 16;
          v5 = v16;
        }

        while (v16 < v3);
      }

      while (v3 >= v5 && *(v13 + 8) < v4);
      do
      {
        v17 = *(v14 - 16);
        v14 -= 16;
        v12 = v17;
      }

      while (v17 >= v3 && (v3 < v12 || *(v14 + 8) >= v4));
    }

    while (v13 < v14);
  }

  if (v13 - 16 != a1)
  {
    *a1 = *(v13 - 16);
    *(a1 + 8) = *(v13 - 8);
  }

  *(v13 - 16) = v3;
  *(v13 - 8) = v4;
  return v13 - 16;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *>(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(a1, a1 + 16, a2 - 16);
        return 1;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(a1, a1 + 16, a1 + 32);
        v25 = *(a2 - 16);
        v26 = *(a1 + 32);
        if (v25 >= v26)
        {
          if (v26 < v25)
          {
            return 1;
          }

          v28 = *(a2 - 8);
          v27 = *(a1 + 40);
          if (v28 >= v27)
          {
            return 1;
          }
        }

        else
        {
          v27 = *(a1 + 40);
          v28 = *(a2 - 8);
        }

        *(a1 + 32) = v25;
        *(a2 - 16) = v26;
        *(a1 + 40) = v28;
        *(a2 - 8) = v27;
        v29 = *(a1 + 32);
        v30 = *(a1 + 16);
        if (v29 >= v30)
        {
          if (v30 < v29)
          {
            return 1;
          }

          v32 = *(a1 + 40);
          v31 = *(a1 + 24);
          if (v32 >= v31)
          {
            return 1;
          }
        }

        else
        {
          v31 = *(a1 + 24);
          v32 = *(a1 + 40);
        }

        *(a1 + 16) = v29;
        *(a1 + 32) = v30;
        *(a1 + 24) = v32;
        *(a1 + 40) = v31;
        v33 = *a1;
        if (v29 >= *a1)
        {
          if (v33 < v29)
          {
            return 1;
          }

          v34 = *(a1 + 8);
          if (v32 >= v34)
          {
            return 1;
          }
        }

        else
        {
          v34 = *(a1 + 8);
        }

        *a1 = v29;
        *(a1 + 16) = v33;
        *(a1 + 8) = v32;
        *(a1 + 24) = v34;
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(a1, a1 + 16, a1 + 32, a1 + 48, a2 - 16);
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
      v4 = *(a2 - 16);
      v5 = *a1;
      if (v4 >= *a1)
      {
        if (v5 < v4)
        {
          return 1;
        }

        v7 = *(a2 - 8);
        v6 = *(a1 + 8);
        if (v7 >= v6)
        {
          return 1;
        }
      }

      else
      {
        v6 = *(a1 + 8);
        v7 = *(a2 - 8);
      }

      *a1 = v4;
      *(a2 - 16) = v5;
      *(a1 + 8) = v7;
      *(a2 - 8) = v6;
      return 1;
    }
  }

  v8 = a1 + 32;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(a1, a1 + 16, a1 + 32);
  v11 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (2)
  {
    v15 = *v11;
    v16 = *v8;
    if (*v11 >= *v8)
    {
      if (v16 < v15)
      {
        goto LABEL_17;
      }

      v17 = *(v11 + 8);
      v18 = *(v8 + 8);
      if (v17 >= v18)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v17 = *(v11 + 8);
      v18 = *(v8 + 8);
    }

    *v11 = v16;
    *(v11 + 8) = v18;
    v14 = a1;
    if (v8 == a1)
    {
      goto LABEL_16;
    }

    v19 = v12;
    while (1)
    {
      v21 = a1 + v19;
      v22 = *(a1 + v19 + 16);
      if (v15 < v22)
      {
        v20 = *(v21 + 24);
        goto LABEL_23;
      }

      if (v22 < v15)
      {
        break;
      }

      v20 = *(a1 + v19 + 24);
      if (v17 >= v20)
      {
        v14 = a1 + v19 + 32;
        goto LABEL_16;
      }

LABEL_23:
      v8 -= 16;
      *(v21 + 32) = v22;
      *(a1 + v19 + 40) = v20;
      v19 -= 16;
      if (v19 == -32)
      {
        v14 = a1;
        goto LABEL_16;
      }
    }

    v14 = v8;
LABEL_16:
    *v14 = v15;
    *(v14 + 8) = v17;
    if (++v13 != 8)
    {
LABEL_17:
      v8 = v11;
      v12 += 16;
      v11 += 16;
      if (v11 == a2)
      {
        return 1;
      }

      continue;
    }

    return v11 + 16 == a2;
  }
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = result + 16 * v7;
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = *(v8 + 16);
        if (*v8 < v10 || v10 >= *v8 && *(v8 + 8) < *(v8 + 24))
        {
          v8 += 16;
          v7 = v9;
        }
      }

      v11 = *v8;
      v12 = *a4;
      if (*v8 >= *a4)
      {
        if (v12 >= v11)
        {
          v14 = *(v8 + 8);
          v13 = *(a4 + 8);
          if (v14 < v13)
          {
            return result;
          }
        }

        else
        {
          v13 = *(a4 + 8);
          v14 = *(v8 + 8);
        }

        *a4 = v11;
        *(a4 + 8) = v14;
        if (v5 >= v7)
        {
          while (1)
          {
            v17 = 2 * v7;
            v7 = (2 * v7) | 1;
            v15 = result + 16 * v7;
            v18 = v17 + 2;
            if (v18 < a3)
            {
              v19 = *(v15 + 16);
              if (*v15 < v19 || v19 >= *v15 && *(v15 + 8) < *(v15 + 24))
              {
                v15 += 16;
                v7 = v18;
              }
            }

            v20 = *v15;
            if (*v15 < v12)
            {
              break;
            }

            if (v12 < v20)
            {
              v16 = *(v15 + 8);
            }

            else
            {
              v16 = *(v15 + 8);
              if (v16 < v13)
              {
                break;
              }
            }

            *v8 = v20;
            *(v8 + 8) = v16;
            v8 = v15;
            if (v5 < v7)
            {
              goto LABEL_14;
            }
          }
        }

        v15 = v8;
LABEL_14:
        *v15 = v12;
        *(v15 + 8) = v13;
      }
    }
  }

  return result;
}

uint64_t *std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::pair<double,int> *>(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = 0;
    v5 = *result;
    v6 = *(result + 2);
    v7 = result;
    do
    {
      v8 = v7;
      v9 = &v7[2 * v4];
      v7 = v9 + 2;
      v10 = 2 * v4;
      v4 = (2 * v4) | 1;
      v11 = v10 + 2;
      if (v11 < a4)
      {
        v12 = *(v9 + 4);
        v13 = *(v9 + 2);
        if (v13 < v12 || v12 >= v13 && *(v9 + 6) < *(v9 + 10))
        {
          v7 = v9 + 4;
          v4 = v11;
        }
      }

      *v8 = *v7;
      *(v8 + 2) = *(v7 + 2);
    }

    while (v4 <= ((a4 - 2) >> 1));
    if (v7 == (a2 - 16))
    {
      *v7 = v5;
      *(v7 + 2) = v6;
      return result;
    }

    *v7 = *(a2 - 16);
    *(v7 + 2) = *(a2 - 8);
    *(a2 - 16) = v5;
    *(a2 - 8) = v6;
    v14 = (v7 - result + 16) >> 4;
    v15 = v14 - 2;
    if (v14 < 2)
    {
      return result;
    }

    v16 = v15 >> 1;
    v17 = &result[2 * (v15 >> 1)];
    v18 = *v17;
    v19 = *v7;
    if (*v17 >= *v7)
    {
      if (v19 < v18)
      {
        return result;
      }

      v21 = *(v17 + 2);
      v20 = *(v7 + 2);
      if (v21 >= v20)
      {
        return result;
      }
    }

    else
    {
      v20 = *(v7 + 2);
      v21 = *(v17 + 2);
    }

    *v7 = v18;
    *(v7 + 2) = v21;
    if (v15 >= 2)
    {
      while (1)
      {
        v24 = v16 - 1;
        v16 = (v16 - 1) >> 1;
        v22 = &result[2 * v16];
        v25 = *v22;
        if (*v22 < v19)
        {
          v23 = *(v22 + 2);
        }

        else
        {
          if (v19 < v25)
          {
            break;
          }

          v23 = *(v22 + 2);
          if (v23 >= v20)
          {
            break;
          }
        }

        *v17 = v25;
        *(v17 + 2) = v23;
        v17 = &result[2 * v16];
        if (v24 <= 1)
        {
          goto LABEL_16;
        }
      }
    }

    v22 = v17;
LABEL_16:
    *v22 = v19;
    *(v22 + 2) = v20;
  }

  return result;
}

BOOL GzipString(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v5 = v4;
  v7 = v6;
  v8 = v3;
  v21 = *MEMORY[0x277D85DE8];
  strm.next_in = 0;
  strm.avail_in = 0;
  strm.next_out = 0;
  memset(&strm.zalloc, 0, 24);
  if (deflateInit_(&strm, 9, "1.3.1", 112))
  {
    if (dword_2810BFF68 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&_MergedGlobals_12, dword_2810BFF68))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(__s, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/base/gzipstring.h", 73);
      v14 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(__s, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v14, "Cannot initialize zlib compression.", 0x23uLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(__s);
      v9 = 0;
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_14;
  }

  strm.next_in = v8;
  strm.avail_in = v7;
  do
  {
    strm.next_out = __s;
    strm.avail_out = 0x8000;
    v10 = deflate(&strm, 4);
    v11 = *(v5 + 23);
    if ((v11 & 0x8000000000000000) != 0)
    {
      v11 = *(v5 + 8);
      if (v11 < strm.total_out)
      {
LABEL_5:
        std::string::append(v5, __s, strm.total_out - v11);
      }
    }

    else if (strm.total_out > v11)
    {
      goto LABEL_5;
    }
  }

  while (!v10);
  deflateEnd(&strm);
  v9 = v10 == 1;
  if (v10 != 1 && dword_2810BFF80 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFF78, dword_2810BFF80))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v17, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/base/gzipstring.h", 98);
    v15 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v17, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v15, "Exception during zlib compression: (", 0x24uLL);
    v19 = v10;
    v16 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v15, &v19);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v16, ") ", 2uLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<<char *,0>(v16, &strm.msg);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v17);
  }

LABEL_14:
  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

void operations_research::WriteProtoToFile(const void *a1@<X0>, size_t a2@<X1>, const google::protobuf::FieldDescriptor *a3@<X2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, uint64_t *a7@<X8>)
{
  v48 = *MEMORY[0x277D85DE8];
  memset(&v42, 0, sizeof(v42));
  memset(&v41, 0, sizeof(v41));
  google::protobuf::io::StringOutputStream::StringOutputStream(v40, &v41);
  v39[0] = a1;
  v39[1] = a2;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      BYTE4(__p[0]) = 0;
      LODWORD(__p[0]) = 16777473;
      google::protobuf::json::MessageToJsonString(a3, &v41, __p, &__dst);
      v17 = __dst.__r_.__value_.__r.__words[0];
      if ((__dst.__r_.__value_.__s.__data_[0] & 1) == 0)
      {
        absl::lts_20240722::status_internal::StatusRep::Unref(__dst.__r_.__value_.__l.__data_, v16);
      }

      if (v17 != 1)
      {
        v34 = absl::lts_20240722::log_internal::LogMessage::LogMessage(&__dst, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/util/file_util.cc", 171);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v34, "Printing to stream failed.", 0x1AuLL);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(&__dst);
        operations_research::WriteProtoToFile(std::string_view,google::protobuf::Message const&,operations_research::ProtoWriteFormat,BOOL,BOOL)::$_0::operator()(a7, v39, "google::protobuf::util::MessageToJsonString()", 45);
        goto LABEL_64;
      }
    }

    else
    {
      if (a4 != 3)
      {
        goto LABEL_17;
      }

      *(__p + 1) = 0;
      LOBYTE(__p[0]) = 1;
      google::protobuf::json::MessageToJsonString(a3, &v41, __p, &__dst);
      v15 = __dst.__r_.__value_.__r.__words[0];
      if ((__dst.__r_.__value_.__s.__data_[0] & 1) == 0)
      {
        absl::lts_20240722::status_internal::StatusRep::Unref(__dst.__r_.__value_.__l.__data_, v14);
      }

      if (v15 != 1)
      {
        v33 = absl::lts_20240722::log_internal::LogMessage::LogMessage(&__dst, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/util/file_util.cc", 183);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v33, "Printing to stream failed.", 0x1AuLL);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(&__dst);
        operations_research::WriteProtoToFile(std::string_view,google::protobuf::Message const&,operations_research::ProtoWriteFormat,BOOL,BOOL)::$_0::operator()(a7, v39, "google::protobuf::util::MessageToJsonString()", 45);
        goto LABEL_64;
      }
    }

    MEMORY[0x23EED9020](&v42, ".json");
    goto LABEL_17;
  }

  if (!a4)
  {
    google::protobuf::TextFormat::PrintToString();
  }

  if (a4 != 1)
  {
LABEL_17:
    if (a5)
    {
      memset(&__dst, 0, sizeof(__dst));
      v18 = (v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v41 : v41.__r_.__value_.__r.__words[0];
      v19 = (v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v41.__r_.__value_.__r.__words[2]) : v41.__r_.__value_.__l.__size_;
      GzipString(v18, v19, &__dst);
      v20 = v41.__r_.__value_.__r.__words[2];
      v21 = *&v41.__r_.__value_.__l.__data_;
      v41 = __dst;
      *&__dst.__r_.__value_.__l.__data_ = v21;
      __dst.__r_.__value_.__r.__words[2] = v20;
      std::string::append(&v42, ".gz");
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }
    }

    if (a2 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (a2 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = a2;
    if (a2)
    {
      memmove(&__dst, a1, a2);
      __dst.__r_.__value_.__s.__data_[a2] = 0;
      if (!a6)
      {
        goto LABEL_40;
      }
    }

    else
    {
      __dst.__r_.__value_.__s.__data_[0] = 0;
      if (!a6)
      {
        goto LABEL_40;
      }
    }

    if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v42;
    }

    else
    {
      v22 = v42.__r_.__value_.__r.__words[0];
    }

    if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v42.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v42.__r_.__value_.__l.__size_;
    }

    std::string::append(&__dst, v22, size);
LABEL_40:
    if (dword_27E25CDC0 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::WriteProtoToFile(std::string_view,google::protobuf::Message const&,operations_research::ProtoWriteFormat,BOOL,BOOL)::$_1::operator() const(void)::site, dword_27E25CDC0))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/util/file_util.cc", 197);
      v35 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(__p, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v35, "Writing ", 8uLL);
      v36 = HIBYTE(v41.__r_.__value_.__r.__words[2]);
      if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v36 = v41.__r_.__value_.__l.__size_;
      }

      v45[0] = v36;
      v37 = absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v35, v45);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v37, " bytes to '", 0xBuLL);
      v38 = absl::lts_20240722::log_internal::LogMessage::operator<<(v37, &__dst);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v38, "'", 1uLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(__p);
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v25 = __dst.__r_.__value_.__l.__size_;
    }

    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v41;
    }

    else
    {
      v26 = v41.__r_.__value_.__r.__words[0];
    }

    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = HIBYTE(v41.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v27 = v41.__r_.__value_.__l.__size_;
    }

    file::SetContents(p_dst, v25, v26, v27, 47802, a7);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      v28 = __dst.__r_.__value_.__r.__words[0];
LABEL_63:
      operator delete(v28);
      goto LABEL_64;
    }

    goto LABEL_64;
  }

  if (google::protobuf::MessageLite::SerializeToZeroCopyStream(a3, v40))
  {
    MEMORY[0x23EED9020](&v42, ".bin");
    goto LABEL_17;
  }

  v45[0] = "SerializeToZeroCopyStream()";
  v45[1] = 27;
  __dst.__r_.__value_.__r.__words[0] = v39;
  __dst.__r_.__value_.__l.__size_ = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string_view>;
  __dst.__r_.__value_.__r.__words[2] = v45;
  v47 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string_view>;
  absl::lts_20240722::str_format_internal::FormatPack("WriteProtoToFile('%s') failed: %s", 33, &__dst, 2uLL, __p);
  if ((v44 & 0x80u) == 0)
  {
    v29 = __p;
  }

  else
  {
    v29 = __p[0];
  }

  if ((v44 & 0x80u) == 0)
  {
    v30 = v44;
  }

  else
  {
    v30 = __p[1];
  }

  absl::lts_20240722::InternalError(v29, v30, a7);
  if (v44 < 0)
  {
    v28 = __p[0];
    goto LABEL_63;
  }

LABEL_64:
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_66;
    }
  }

  else if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_66:
    v31 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v42.__r_.__value_.__l.__data_);
  v32 = *MEMORY[0x277D85DE8];
}

void sub_23CBA0F48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (*(v31 - 89) < 0)
  {
    operator delete(*(v31 - 112));
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::WriteProtoToFile(std::string_view,google::protobuf::Message const&,operations_research::ProtoWriteFormat,BOOL,BOOL)::$_0::operator()(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10[0] = a3;
  v10[1] = a4;
  v11[0] = a2;
  v11[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string_view>;
  v11[2] = v10;
  v11[3] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string_view>;
  absl::lts_20240722::str_format_internal::FormatPack("WriteProtoToFile('%s') failed: %s", 33, v11, 2uLL, __p);
  if ((v9 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v6 = v9;
  }

  else
  {
    v6 = __p[1];
  }

  absl::lts_20240722::InternalError(v5, v6, a1);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_23CBA10CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double *operations_research::ComputeScalingErrors(double *result, int a2, double *a3, double a4, uint64_t a5, double *a6, uint64_t a7, double *a8, double *a9)
{
  *a8 = 0.0;
  if (a2 < 1)
  {
    v12 = 0.0;
    v11 = 0.0;
  }

  else
  {
    v9 = a2 & 0x7FFFFFFF;
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    do
    {
      if (*result != 0.0)
      {
        v18 = *result * a4;
        v19 = round(v18);
        if (v18 == 0.0)
        {
          v10 = INFINITY;
        }

        else
        {
          v13 = fabs(v19 / v18 + -1.0);
          if (v10 < v13)
          {
            v10 = v13;
          }
        }

        *a8 = v10;
        v14 = v19 - v18;
        v15 = v14 * *a3;
        v16 = v14 * *a6;
        if (v15 >= v16)
        {
          v17 = v15;
        }

        else
        {
          v17 = v16;
        }

        v11 = v11 + v17;
        if (v16 >= v15)
        {
          v16 = v15;
        }

        v12 = v12 + v16;
      }

      ++a6;
      ++a3;
      ++result;
      --v9;
    }

    while (v9);
  }

  v20 = fabs(v11);
  v21 = fabs(v12);
  if (v20 < v21)
  {
    v20 = v21;
  }

  *a9 = v20;
  return result;
}

double operations_research::GetBestScalingOfDoublesToInt64(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if ((a7 & 0x8000000000000000) != 0)
  {
    return 0.0;
  }

  v8 = 63 - __clz(a7);
  if (!a7)
  {
    v8 = 0;
  }

  v43 = v8;
  if (a2 >= 1)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = a7;
    v17 = a2 & 0x7FFFFFFF;
    v18 = 1;
    v19 = 1;
    v42 = v17;
    while (1)
    {
      v21 = *(a1 + 8 * v12);
      v22 = v21 * *(a3 + 8 * v12);
      v23 = v21 * *(a5 + 8 * v12);
      if (v22 <= v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = v22;
      }

      if (v22 <= v23)
      {
        v23 = v22;
      }

      v25 = v23 <= 0.0 ? v23 : 0.0;
      v26 = v24 >= 0.0 ? v24 : 0.0;
      if (v25 == -INFINITY || v26 == INFINITY)
      {
        return 0.0;
      }

      if (v25 == 0.0 && v26 == 0.0)
      {
        v20 = v13;
        ++v12;
        ++v18;
        if (v12 == v17)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v26 <= -v25)
        {
          v27 = -v25;
        }

        else
        {
          v27 = v26;
        }

        v44 = v19;
        v28 = v43 - ilogb(v27);
        if (v28 >= 1023)
        {
          v29 = 1023;
        }

        else
        {
          v29 = v28;
        }

        v20 = v29 - (round(ldexp(fabs(v27), v29)) > v16);
        if (v44 & 1 | (v20 < v13) || ((v14 -= llround(ldexp(v25, v13)), v15 += llround(ldexp(v26, v13)), v14 <= a7) ? (v30 = v15 > a7) : (v30 = 1), !v30 ? (v31 = 0) : (v31 = 1), v20 = v13 - v31, v30))
        {
          do
          {
            v32 = 0;
            v14 = 0;
            v15 = 0;
            do
            {
              v33 = *(a1 + 8 * v32);
              v34 = v33 * *(a3 + 8 * v32);
              v35 = v33 * *(a5 + 8 * v32);
              if (v34 <= v35)
              {
                v36 = v34;
              }

              else
              {
                v36 = v35;
              }

              if (v34 <= v35)
              {
                v34 = v35;
              }

              if (v36 <= 0.0)
              {
                v37 = v36;
              }

              else
              {
                v37 = 0.0;
              }

              if (v34 >= 0.0)
              {
                v38 = v34;
              }

              else
              {
                v38 = 0.0;
              }

              v14 -= llround(ldexp(v37, v20));
              v15 += llround(ldexp(v38, v20));
              ++v32;
            }

            while (v18 != v32);
            v39 = v14 > a7 || v15 > a7;
            v40 = v39;
            v20 -= v40;
          }

          while (v39);
        }

        v19 = 0;
        v17 = v42;
        ++v12;
        ++v18;
        v13 = v20;
        if (v12 == v42)
        {
          goto LABEL_61;
        }
      }
    }
  }

  v20 = 0;
LABEL_61:

  return ldexp(1.0, v20);
}