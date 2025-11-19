void sub_23CBBEC34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CBBEC48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::glop::SingletonPreprocessor::Run(operations_research::glop::SingletonPreprocessor *this, operations_research::glop::LinearProgram *a2)
{
  if (!a2)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v86, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 2824, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v86, "lp", 2uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v86, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v86);
    return 0;
  }

  TransposeSparseMatrix = operations_research::glop::LinearProgram::GetTransposeSparseMatrix(a2);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 4);
  v5 = *(a2 + 6);
  v6 = 0xAAAAAAAB00000000 * ((*(a2 + 1) - *a2) >> 4);
  if (v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      v7 = (0x555555558 * ((*(a2 + 1) - *a2) >> 4)) & 0x7FFFFFFFFLL;
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (v4 >= 1)
  {
    v8 = 0;
    v81 = 0;
    v9 = 8;
    do
    {
      v10 = *(*a2 + v9);
      *(8 * v8) = v10;
      if (v10 == 1)
      {
        v11 = v81;
        v12 = v81 >> 2;
        if (((v81 >> 2) + 1) >> 62)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if (v81 >> 2 != -1)
        {
          if (!(((v81 >> 2) + 1) >> 62))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(4 * v12) = v8;
        v81 = 4 * v12 + 4;
        memcpy(0, 0, v11);
      }

      ++v8;
      v9 += 48;
    }

    while ((v4 & 0x7FFFFFFF) != v8);
  }

  else
  {
    v81 = 0;
  }

  if (v5)
  {
    if ((v5 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v13 = 0;
  v78 = 0;
  v14 = 0;
  if (*(this + 8) != 6)
  {
    return 0;
  }

  while (2)
  {
    if (v14 == v81 && v13 == v78)
    {
      operations_research::glop::LinearProgram::DeleteColumns(a2, this + 48);
      operations_research::glop::LinearProgram::DeleteRows(a2, this + 15);
      return 1;
    }

    if (v14 == v81)
    {
      v18 = 6;
      goto LABEL_80;
    }

    v18 = 6;
    __src = v14;
    v19 = v81;
    do
    {
      v20 = v14;
      v21 = *(v19 - 4);
      v81 = v19 - 4;
      v22 = (8 * v21);
      if (*v22 < 1)
      {
        v19 -= 4;
        continue;
      }

      v82 = v13;
      v23 = (*a2 + 48 * v21);
      v24 = v23[1];
      if (v24 < 1)
      {
LABEL_34:
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v86, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 2946, 2);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v86, "No unmarked entry in a column that is supposed to have one.", 0x3BuLL);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v86);
        v30 = 0;
        *(this + 8) = 9;
        v31 = 0.0;
        v20 = __src;
      }

      else
      {
        v25 = v21 << 32;
        v27 = v23[3];
        v26 = v23[4];
        while (1)
        {
          v29 = *v27++;
          v28 = v29;
          if (v29 >= *(this + 32) || ((*(*(this + 15) + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            break;
          }

          ++v26;
          if (!--v24)
          {
            goto LABEL_34;
          }
        }

        v31 = *v26;
        v30 = v25 | v28;
      }

      v84 = v30;
      v85 = v31;
      if (*(this + 24) == 1)
      {
        IsVariableInteger = operations_research::glop::LinearProgram::IsVariableInteger(a2, SHIDWORD(v30));
        v20 = __src;
        if (IsVariableInteger)
        {
          IsRemovable = operations_research::glop::SingletonPreprocessor::IntegerSingletonColumnIsRemovable(this, &v84, a2);
          v20 = __src;
          if (!IsRemovable)
          {
LABEL_43:
            v14 = v20;
            v18 = *(this + 8);
            v19 = v81;
            if (v18 != 6)
            {
              break;
            }

            continue;
          }
        }
      }

      v34 = *(a2 + 17);
      if (*(v22 + v34) == 0.0)
      {
        v35 = *(a2 + 408);
        v36 = (v30 >> 29) & 0xFFFFFFFFFFFFFFF8;
        v37 = *(v34 + v36);
        v38 = *(*(a2 + 20) + v36);
        v39 = *(*(a2 + 23) + v36);
        v40 = *(*(a2 + 8) + 8 * v30);
        v41 = *(*(a2 + 11) + 8 * v30);
        v42 = *(this + 19);
        v43 = *(this + 20);
        if (v42 >= v43)
        {
          v45 = *(this + 18);
          v46 = v42 - v45;
          v47 = 0x8E38E38E38E38E39 * ((v42 - v45) >> 3);
          v48 = v47 + 1;
          if (v47 + 1 > 0x38E38E38E38E38ELL)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          v49 = 0x8E38E38E38E38E39 * ((v43 - v45) >> 3);
          if (2 * v49 > v48)
          {
            v48 = 2 * v49;
          }

          if (v49 >= 0x1C71C71C71C71C7)
          {
            v50 = 0x38E38E38E38E38ELL;
          }

          else
          {
            v50 = v48;
          }

          if (v50)
          {
            if (v50 <= 0x38E38E38E38E38ELL)
            {
              operator new();
            }

LABEL_111:
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v51 = 72 * v47;
          *v51 = 0;
          *(v51 + 4) = v35;
          *(v51 + 8) = v30;
          *(v51 + 16) = v31;
          *(v51 + 24) = v37;
          *(v51 + 32) = v38;
          *(v51 + 40) = v39;
          *(v51 + 48) = v40;
          *(v51 + 56) = v41;
          *(v51 + 64) = 4;
          v44 = 72 * v47 + 72;
          v52 = (72 * v47 - v46);
          memcpy(v52, v45, v46);
          *(this + 18) = v52;
          *(this + 19) = v44;
          *(this + 20) = 0;
          if (v45)
          {
            operator delete(v45);
          }
        }

        else
        {
          *v42 = 0;
          *(v42 + 4) = v35;
          *(v42 + 8) = v30;
          *(v42 + 16) = v31;
          *(v42 + 24) = v37;
          *(v42 + 32) = v38;
          *(v42 + 40) = v39;
          *(v42 + 48) = v40;
          *(v42 + 56) = v41;
          v44 = v42 + 72;
          *(v42 + 64) = 4;
        }

        *(this + 19) = v44;
        operations_research::glop::ColumnsSaver::SaveColumnIfNotAlreadyDone(this + 46, v30, *TransposeSparseMatrix + 48 * v30);
        v53 = -(v31 * *(*(a2 + 20) + v36));
        if (v31 >= 0.0)
        {
          v54 = -(v31 * *(*(a2 + 23) + v36));
        }

        else
        {
          v54 = -(v31 * *(*(a2 + 20) + v36));
        }

        if (v31 < 0.0)
        {
          v53 = -(v31 * *(*(a2 + 23) + v36));
        }

        operations_research::glop::LinearProgram::SetConstraintBounds(a2, v30, *(*(a2 + 8) + 8 * v30) + v54, v53 + *(*(a2 + 11) + 8 * v30));
        operations_research::glop::ColumnDeletionHelper::MarkColumnForDeletionWithState(this + 12, HIDWORD(v30), 4, 0.0);
      }

      else
      {
        if (fabs(v31) < *(*(this + 2) + 200))
        {
          goto LABEL_43;
        }

        if (!operations_research::glop::SingletonPreprocessor::MakeConstraintAnEqualityIfPossible(this, TransposeSparseMatrix, v30, *&v31, a2))
        {
LABEL_65:
          v14 = __src;
          v19 = v81;
          v13 = v82;
          v18 = *(this + 8);
          if (v18 != 6)
          {
            break;
          }

          continue;
        }

        operations_research::glop::SingletonPreprocessor::DeleteSingletonColumnInEquality(this, TransposeSparseMatrix, v30, *&v31, a2);
      }

      v55 = *(8 * v30) - 1;
      *(8 * v30) = v55;
      if (v55 != 1)
      {
        goto LABEL_65;
      }

      v56 = v78 - v82;
      v57 = (v78 - v82) >> 2;
      v58 = v57 + 1;
      if ((v57 + 1) >> 62)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (-v82 >> 1 > v58)
      {
        v58 = -v82 >> 1;
      }

      if (-v82 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v59 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v59 = v58;
      }

      if (v59)
      {
        if (!(v59 >> 62))
        {
          operator new();
        }

        goto LABEL_111;
      }

      *(4 * v57) = v30;
      v78 = 4 * v57 + 4;
      memcpy(0, v82, v56);
      v13 = 0;
      v14 = __src;
      v18 = *(this + 8);
      v19 = v81;
      if (v18 != 6)
      {
        break;
      }
    }

    while (v14 != v19);
    if (v18 != 6)
    {
      v17 = v78;
      goto LABEL_21;
    }

LABEL_80:
    v17 = v78;
    v83 = v13;
    while (v13 != v17)
    {
      v61 = *(v17 - 4);
      v17 -= 4;
      v60 = v61;
      if (*(8 * v61) < 1)
      {
        continue;
      }

      v62 = v14;
      v63 = (*TransposeSparseMatrix + 48 * v60);
      v64 = v63[1];
      if (v64 < 1)
      {
LABEL_89:
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v86, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 2962, 2);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v86, "No unmarked entry in a row that is supposed to have one.", 0x38uLL);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v86);
        v69 = 0;
        v70 = 0;
        *(this + 8) = 9;
        v84 = 0;
        v85 = 0.0;
        LODWORD(v71) = 0;
        if (*(this + 24) != 1)
        {
          goto LABEL_94;
        }
      }

      else
      {
        v65 = v63[3];
        v66 = v63[4];
        while (1)
        {
          v68 = *v65++;
          v67 = v68;
          if (v68 >= *(this + 14) || ((*(*(this + 6) + ((v67 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
          {
            break;
          }

          ++v66;
          if (!--v64)
          {
            goto LABEL_89;
          }
        }

        v69 = *v66;
        v70 = v60 | (v67 << 32);
        v84 = v70;
        v85 = *&v69;
        v71 = HIDWORD(v70);
        if (*(this + 24) != 1)
        {
          goto LABEL_94;
        }
      }

      if (operations_research::glop::LinearProgram::IsVariableInteger(a2, v71) && !operations_research::glop::SingletonPreprocessor::IntegerSingletonColumnIsRemovable(this, &v84, a2))
      {
LABEL_95:
        v13 = v83;
        v14 = v62;
        v18 = *(this + 8);
        if (v18 != 6)
        {
          break;
        }

        continue;
      }

LABEL_94:
      operations_research::glop::SingletonPreprocessor::DeleteSingletonRow(this, v70, v69, a2);
      v72 = ((v70 >> 29) & 0xFFFFFFFFFFFFFFF8);
      v73 = *v72 - 1;
      *v72 = v73;
      if (v73 != 1)
      {
        goto LABEL_95;
      }

      v74 = v81 - v62;
      v75 = (v81 - v62) >> 2;
      v76 = v75 + 1;
      if ((v75 + 1) >> 62)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (-v62 >> 1 > v76)
      {
        v76 = -v62 >> 1;
      }

      if (-v62 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v77 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v77 = v76;
      }

      if (v77)
      {
        if (!(v77 >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v14 = 0;
      *(4 * v75) = v71;
      v81 = 4 * v75 + 4;
      memcpy(0, v62, v74);
      v13 = v83;
      v18 = *(this + 8);
      if (v18 != 6)
      {
        break;
      }
    }

LABEL_21:
    v78 = v17;
    if (v18 == 6)
    {
      continue;
    }

    return 0;
  }
}

void sub_23CBBF868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (v20)
  {
    operator delete(v20);
    v24 = __p;
    if (!__p)
    {
LABEL_3:
      if (!v22)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v24 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v24);
  if (!v22)
  {
LABEL_4:
    if (!v21)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(v22);
  if (!v21)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(v21);
  _Unwind_Resume(exception_object);
}

void operations_research::glop::SingletonPreprocessor::RecoverSolution(operations_research::glop::SingletonPreprocessor *this, operations_research::glop::ProblemSolution *a2)
{
  if (a2)
  {
    operations_research::glop::ColumnDeletionHelper::RestoreDeletedColumns((this + 48), a2);
    operations_research::glop::RowDeletionHelper::RestoreDeletedRows((this + 120), a2);
    v4 = 954437177 * ((*(this + 19) - *(this + 18)) >> 3) - 1;
    if ((v4 & 0x80000000) == 0)
    {
      v5 = (this + 304);
      v6 = (this + 432);
      while (1)
      {
        v8 = *(this + 18) + 72 * v4;
        v9 = *(v8 + 12);
        v10 = *(this + 36);
        if (v10 > 1)
        {
          break;
        }

        if (*(this + 37) >= 2uLL)
        {
          _ZF = *v5 == v9;
          if (*v5 == v9)
          {
            v9 = this + 304;
          }

          v40 = &absl::lts_20240722::container_internal::kSooControl;
          if (!_ZF)
          {
            v40 = 0;
          }

          v11 = (this + 240);
          if (!v40)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

LABEL_7:
        v11 = (this + 240);
LABEL_17:
        v26 = *(v8 + 8);
        v27 = *(this + 52);
        if (v27 > 1)
        {
          v29 = 0;
          _X10 = *v6;
          __asm { PRFM            #4, [X10] }

          v32 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v26) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v26));
          v33 = vdup_n_s8(v32 & 0x7F);
          v34 = ((v32 >> 7) ^ (*v6 >> 12)) & v27;
          v35 = *(*v6 + v34);
          v36 = vceq_s8(v35, v33);
          if (!v36)
          {
            goto LABEL_24;
          }

LABEL_21:
          v37 = *(this + 55);
          while (1)
          {
            v38 = (v34 + (__clz(__rbit64(v36)) >> 3)) & v27;
            if (*(v37 + 8 * v38) == v26)
            {
              break;
            }

            v36 &= ((v36 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v36)
            {
LABEL_24:
              while (!*&vceq_s8(v35, 0x8080808080808080))
              {
                v29 += 8;
                v34 = (v29 + v34) & v27;
                v35 = *(_X10 + v34);
                v36 = vceq_s8(v35, v33);
                if (v36)
                {
                  goto LABEL_21;
                }
              }

              goto LABEL_19;
            }
          }

          v26 = v37 + 8 * v38;
          v28 = (this + 368);
          if (_X10 + v38)
          {
            goto LABEL_40;
          }
        }

        else if (*(this + 53) >= 2uLL)
        {
          v41 = *v6 == v26;
          if (*v6 == v26)
          {
            v26 = this + 432;
          }

          v42 = &absl::lts_20240722::container_internal::kSooControl;
          if (!v41)
          {
            v42 = 0;
          }

          v28 = (this + 368);
          if (v42)
          {
LABEL_40:
            v43 = *(this + 60) + *(v26 + 4);
            v28 = (*(*(this + 57) + 8 * (v43 / 0x55)) + 48 * (v43 % 0x55));
          }
        }

        else
        {
LABEL_19:
          v28 = (this + 368);
        }

        operations_research::glop::SingletonUndo::Undo(v8, *(this + 2), v11, v28, a2);
        if (v4-- <= 0)
        {
          return;
        }
      }

      v12 = 0;
      _X10 = *v5;
      __asm { PRFM            #4, [X10] }

      v18 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v9) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v9));
      v19 = vdup_n_s8(v18 & 0x7F);
      v20 = ((v18 >> 7) ^ (*v5 >> 12)) & v10;
      v21 = *(*v5 + v20);
      v22 = vceq_s8(v21, v19);
      if (!v22)
      {
        goto LABEL_12;
      }

LABEL_9:
      v23 = *(this + 39);
      while (1)
      {
        v24 = (v20 + (__clz(__rbit64(v22)) >> 3)) & v10;
        if (*(v23 + 8 * v24) == v9)
        {
          break;
        }

        v22 &= ((v22 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v22)
        {
LABEL_12:
          while (!*&vceq_s8(v21, 0x8080808080808080))
          {
            v12 += 8;
            v20 = (v12 + v20) & v10;
            v21 = *(_X10 + v20);
            v22 = vceq_s8(v21, v19);
            if (v22)
            {
              goto LABEL_9;
            }
          }

          goto LABEL_7;
        }
      }

      v9 = v23 + 8 * v24;
      v11 = (this + 240);
      if (!(_X10 + v24))
      {
        goto LABEL_17;
      }

LABEL_16:
      v25 = *(this + 44) + *(v9 + 4);
      v11 = (*(*(this + 41) + 8 * (v25 / 0x55)) + 48 * (v25 % 0x55));
      goto LABEL_17;
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v44, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 2914, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v44, "solution", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v44, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v44);
  }
}

BOOL operations_research::glop::SingletonColumnSignPreprocessor::Run(operations_research::glop::SingletonColumnSignPreprocessor *this, operations_research::glop::LinearProgram *a2)
{
  if (a2)
  {
    v3 = -1431655765 * ((*(a2 + 1) - *a2) >> 4);
    if (v3)
    {
      v5 = this + 48;
      *(this + 7) = *(this + 6);
      v18[0] = 0;
      if (v3 < 1)
      {
        v6 = 0;
      }

      else
      {
        v6 = 0;
        v7 = 0;
        do
        {
          MutableSparseColumn = operations_research::glop::LinearProgram::GetMutableSparseColumn(a2, v7);
          v9 = v18[0];
          if (*(MutableSparseColumn + 8) == 1)
          {
            ++v6;
            v10 = *(MutableSparseColumn + 32);
            if (*v10 < 0.0)
            {
              v11 = 8 * v18[0];
              v12 = *(*(a2 + 17) + v11);
              *v10 = -*v10;
              operations_research::glop::LinearProgram::SetVariableBounds(a2, v9, -*(*(a2 + 23) + v11), -*(*(a2 + 20) + v11));
              operations_research::glop::LinearProgram::SetObjectiveCoefficient(a2, v18[0], -v12);
              std::vector<int>::push_back[abi:ne200100](v5, v18);
              v9 = v18[0];
            }
          }

          v7 = v9 + 1;
          v18[0] = v9 + 1;
        }

        while (v9 + 1 < v3);
      }

      if (dword_2810C0220 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0218, dword_2810C0220))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v18, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 2994);
        v14 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v18, 1);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v14, "Changed the sign of ", 0x14uLL);
        v19 = (*(this + 7) - *(this + 6)) >> 2;
        v15 = absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v14, &v19);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v15, " columns.", 9uLL);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v18);
      }

      if (dword_2810C0238 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0230, dword_2810C0238))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v18, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 2995);
        v16 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v18, 1);
        LODWORD(v19) = v6;
        v17 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v16, &v19);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v17, " singleton columns left.", 0x18uLL);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v18);
      }

      return *(this + 6) != *(this + 7);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v18, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 2973, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v18, "lp", 2uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v18, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v18);
    return 0;
  }
}

void sub_23CBBFF70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CBBFF84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CBBFF98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void operations_research::glop::SingletonColumnSignPreprocessor::RecoverSolution(operations_research::glop::SingletonColumnSignPreprocessor *this, operations_research::glop::ProblemSolution *a2)
{
  if (a2)
  {
    v2 = *(this + 6);
    v3 = *(this + 7) - v2;
    if (v3)
    {
      v4 = 0;
      v5 = v3 >> 2;
      v6 = *(a2 + 1);
      v7 = *(a2 + 7);
      v8 = 1;
      do
      {
        v10 = *(v2 + 4 * v4);
        *(v6 + 8 * v10) = -*(v6 + 8 * v10);
        v11 = *(v7 + v10);
        if (v11 == 3)
        {
          v9 = 2;
        }

        else
        {
          if (v11 != 2)
          {
            goto LABEL_6;
          }

          v9 = 3;
        }

        *(v7 + v10) = v9;
LABEL_6:
        v4 = v8++;
      }

      while (v5 > v4);
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v12, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 3002, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v12, "solution", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v12, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v12);
  }
}

BOOL operations_research::glop::DoubletonEqualityRowPreprocessor::Run(operations_research::glop::DoubletonEqualityRowPreprocessor *this, operations_research::glop::LinearProgram *a2)
{
  if (a2)
  {
    v4 = (a2 + 64);
    v5 = (this + 168);
    if (v5 != (a2 + 64))
    {
      std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v5, *(a2 + 8), *(a2 + 9), (*(a2 + 9) - *(a2 + 8)) >> 3);
    }

    if (this + 192 != a2 + 88)
    {
      std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(this + 24, *(a2 + 11), *(a2 + 12), (*(a2 + 12) - *(a2 + 11)) >> 3);
    }

    if (this + 344 != a2 + 136)
    {
      std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(this + 43, *(a2 + 17), *(a2 + 18), (*(a2 + 18) - *(a2 + 17)) >> 3);
    }

    TransposeSparseMatrix = operations_research::glop::LinearProgram::GetTransposeSparseMatrix(a2);
    v6 = *(a2 + 6);
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = 24;
      do
      {
        if (*(*TransposeSparseMatrix + v8 - 16) == 2 && *(*v4 + 8 * v7) == *(*(a2 + 11) + 8 * v7))
        {
          v9 = *(*TransposeSparseMatrix + v8);
          v10 = *(operations_research::glop::LinearProgram::GetSparseColumn(a2, *v9) + 8);
          v11 = *(operations_research::glop::LinearProgram::GetSparseColumn(a2, v9[1]) + 8) + v10;
          operator new();
        }

        ++v7;
        v8 += 48;
      }

      while (v6 != v7);
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<operations_research::StrongInt64<operations_research::glop::EntryIndex_integer_tag_>,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>> *,false>(0, 0, &v15, 0, 1);
    if (*(this + 8) == 6)
    {
      operations_research::glop::LinearProgram::DeleteColumns(a2, this + 48);
      operations_research::glop::LinearProgram::DeleteRows(a2, this + 15);
      return *(this + 7) != 0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v15, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 3021, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v15, "lp", 2uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v15, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v15);
    return 0;
  }
}

void sub_23CBC0858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void std::vector<operations_research::glop::DoubletonEqualityRowPreprocessor::RestoreInfo>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[3];
    *(v3 + 32) = a2[2];
    *(v3 + 48) = v7;
    *v3 = v5;
    *(v3 + 16) = v6;
    v8 = a2[4];
    v9 = a2[5];
    v10 = a2[6];
    *(v3 + 112) = *(a2 + 14);
    *(v3 + 80) = v9;
    *(v3 + 96) = v10;
    *(v3 + 64) = v8;
    v11 = v3 + 120;
LABEL_3:
    *(a1 + 8) = v11;
    return;
  }

  v12 = *a1;
  v13 = v3 - *a1;
  v14 = 0xEEEEEEEEEEEEEEEFLL * (v13 >> 3) + 1;
  if (v14 > 0x222222222222222)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v15 = 0xEEEEEEEEEEEEEEEFLL * ((v4 - v12) >> 3);
  if (2 * v15 > v14)
  {
    v14 = 2 * v15;
  }

  if (v15 >= 0x111111111111111)
  {
    v16 = 0x222222222222222;
  }

  else
  {
    v16 = v14;
  }

  if (v16)
  {
    if (v16 <= 0x222222222222222)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v17 = a2[5];
  v18 = 8 * (v13 >> 3);
  *(v18 + 64) = a2[4];
  *(v18 + 80) = v17;
  *(v18 + 96) = a2[6];
  *(v18 + 112) = *(a2 + 14);
  v19 = a2[1];
  *v18 = *a2;
  *(v18 + 16) = v19;
  v20 = a2[3];
  v11 = v18 + 120;
  v21 = v18 - v13;
  *(v18 + 32) = a2[2];
  *(v18 + 48) = v20;
  memcpy((v18 - v13), v12, v13);
  *a1 = v21;
  *(a1 + 8) = v11;
  *(a1 + 16) = 0;
  if (!v12)
  {
    goto LABEL_3;
  }

  operator delete(v12);
  *(a1 + 8) = v11;
}

void operations_research::glop::DoubletonEqualityRowPreprocessor::RecoverSolution(operations_research::glop::DoubletonEqualityRowPreprocessor *this, operations_research::glop::ProblemSolution *a2)
{
  if (a2)
  {
    operations_research::glop::ColumnDeletionHelper::RestoreDeletedColumns((this + 48), a2);
    operations_research::glop::RowDeletionHelper::RestoreDeletedRows((this + 120), a2);
    v5 = *(a2 + 7);
    v4 = *(a2 + 8);
    if ((v4 - v5) << 32)
    {
      if (((v4 - v5) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v102 = v4 - v5;
    v7 = *(this + 18);
    v6 = *(this + 19);
    if (v6 != v7)
    {
      v8 = *(a2 + 7);
      while (1)
      {
        v9 = *(v8 + *(v6 - 25));
        if (v9 <= 1)
        {
          break;
        }

        if (v9 - 2 < 2)
        {
          if (v9 == 2)
          {
            v10 = 11;
          }

          else
          {
            v10 = 13;
          }

          v11 = &v6[v10];
          v12 = *(v6 + (*(v11 - 30) == 0) - 26);
          v13 = *(v6 + *(v11 - 30) - 26);
          *(v8 + v13) = *(v11 - 116);
          *(*(a2 + 1) + 8 * v13) = *(v11 - 14);
          *(v8 + v12) = 0;
          *((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) |= 1 << v12;
          goto LABEL_19;
        }

        if (v9 == 4)
        {
          goto LABEL_18;
        }

LABEL_19:
        v15 = *(v6 - 26);
        if (!*(v8 + v15))
        {
          *(*(a2 + 1) + 8 * v15) = (*(v6 - 14) - *(*(a2 + 1) + 8 * *(v6 - 25)) * *(v6 - 11)) / *(v6 - 12);
        }

        v6 -= 15;
        *(*(a2 + 10) + *v6) = 1;
        if (v6 == v7)
        {
          goto LABEL_21;
        }
      }

      if (*(v8 + *(v6 - 25)))
      {
        if (v9 == 1)
        {
          absl::lts_20240722::log_internal::LogMessage::LogMessage(&__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 3250, 2);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&__p, "FIXED variable produced by DoubletonPreprocessor!", 0x31uLL);
          absl::lts_20240722::log_internal::LogMessage::~LogMessage(&__p);
          v8 = *(a2 + 7);
        }

        goto LABEL_19;
      }

LABEL_18:
      v14 = *(v6 - 26);
      *(v8 + v14) = 0;
      *((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) |= 1 << v14;
      goto LABEL_19;
    }

LABEL_21:
    __p = 0;
    v105 = 0;
    v106 = 0;
    p_p = &__p;
    v108 = 0;
    v16 = *(this + 18);
    if (*(this + 19) != v16)
    {
      v17 = 0;
      v18 = 0;
      do
      {
        v19 = v16 + 120 * v17;
        v20 = *(__p + 3 * *(v19 + 20) + 1);
        if (!v20)
        {
LABEL_30:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v21 = v20;
            v22 = *(v20 + 28);
            if (v18 >= v22)
            {
              break;
            }

            v20 = *v21;
            if (!*v21)
            {
              goto LABEL_30;
            }
          }

          if (v22 >= v18)
          {
            break;
          }

          v20 = v21[1];
          if (!v20)
          {
            goto LABEL_30;
          }
        }

        v23 = *(__p + 3 * *(v19 + 16) + 1);
        if (!v23)
        {
LABEL_37:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v24 = v23;
            v25 = *(v23 + 28);
            if (v18 >= v25)
            {
              break;
            }

            v23 = *v24;
            if (!*v24)
            {
              goto LABEL_37;
            }
          }

          if (v25 >= v18)
          {
            break;
          }

          v23 = v24[1];
          if (!v23)
          {
            goto LABEL_37;
          }
        }

        v17 = ++v18;
        v16 = *(this + 18);
      }

      while (0xEEEEEEEEEEEEEEEFLL * ((*(this + 19) - v16) >> 3) > v18);
    }

    if (v102 >= 1)
    {
      v26 = 0;
      v27 = 0;
      v28 = 16;
      do
      {
        if (((*((v26 >> 3) & 0x1FFFFFFFFFFFFFF8) >> v26) & 1) != 0 && *(__p + v28) == 1)
        {
          v29 = v27;
          v30 = v27 >> 2;
          if (((v27 >> 2) + 1) >> 62)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          if (v27 >> 2 != -1)
          {
            if (!(((v27 >> 2) + 1) >> 62))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *(4 * v30) = v26;
          v27 = 4 * v30 + 4;
          memcpy(0, 0, v29);
        }

        ++v26;
        v28 += 24;
      }

      while ((v102 & 0x7FFFFFFF) != v26);
      if (v27)
      {
        v103 = (this + 280);
        v31 = v27;
        do
        {
          v32 = *(v31 - 4);
          v31 -= 4;
          v33 = v32;
          if ((*((v32 >> 3) & 0x1FFFFFFFFFFFFFF8) >> v32))
          {
            v34 = __p;
            v35 = *(__p + 3 * v33 + 2);
            if (v35)
            {
              if (v35 != 1)
              {
                absl::lts_20240722::log_internal::MakeCheckOpString<unsigned long long,long long>(v35, 1, "col_to_index[col].size() == 1");
              }

              v36 = *(*(__p + 3 * v33) + 28);
              v37 = (*(this + 18) + 120 * v36);
              v38 = v37 + 4;
              v39 = *(a2 + 4);
              v40 = *(v39 + 8 * *v37);
              if (v40 != 0.0)
              {
                absl::lts_20240722::log_internal::MakeCheckOpString<double,double>("solution->dual_values[r.row] == 0.0", v40, 0.0);
              }

              v41 = v37[5];
              v42 = v41 == v33;
              v43 = v38[v42];
              v44 = *(this + 33);
              if (v44 > 1)
              {
                v45 = 0;
                _X15 = *v103;
                __asm { PRFM            #4, [X15] }

                v52 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v43) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v43));
                v53 = vdup_n_s8(v52 & 0x7F);
                v54 = ((v52 >> 7) ^ (*v103 >> 12)) & v44;
                v55 = *(*v103 + v54);
                v56 = vceq_s8(v55, v53);
                if (!v56)
                {
                  goto LABEL_63;
                }

LABEL_60:
                v57 = *(this + 36);
                while (1)
                {
                  v58 = (v54 + (__clz(__rbit64(v56)) >> 3)) & v44;
                  if (*(v57 + 8 * v58) == v43)
                  {
                    break;
                  }

                  v56 &= ((v56 & 0x8080808080808080) - 1) & 0x8080808080808080;
                  if (!v56)
                  {
LABEL_63:
                    while (!*&vceq_s8(v55, 0x8080808080808080))
                    {
                      v45 += 8;
                      v54 = (v45 + v54) & v44;
                      v55 = *(_X15 + v54);
                      v56 = vceq_s8(v55, v53);
                      if (v56)
                      {
                        goto LABEL_60;
                      }
                    }

LABEL_140:
                    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&p_p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 230);
                    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&p_p);
                  }
                }

                v59 = (v57 + 8 * v58);
                if (!(_X15 + v58))
                {
                  goto LABEL_140;
                }
              }

              else
              {
                if (*(this + 34) < 2uLL)
                {
                  goto LABEL_140;
                }

                if (*v103 == v43)
                {
                  v59 = this + 280;
                }

                else
                {
                  v59 = __p;
                }

                v60 = &absl::lts_20240722::container_internal::kSooControl;
                if (*v103 != v43)
                {
                  v60 = 0;
                }

                if (!v60)
                {
                  goto LABEL_140;
                }
              }

              v61 = *(this + 41) + *(v59 + 1);
              v62 = (*(*(this + 38) + 8 * (v61 / 0x55)) + 48 * (v61 % 0x55));
              v63 = v62[1];
              if (v63 < 1)
              {
                v72 = 0.0;
              }

              else
              {
                v64 = v62[3];
                v65 = v62[4];
                v66 = 0.0;
                v67 = 0.0;
                do
                {
                  v68 = *v64++;
                  v69 = 8 * v68;
                  v70 = *v65++;
                  v71 = v67 + *(v39 + v69) * v70;
                  v72 = v66 + v71;
                  v67 = v71 + v66 - (v66 + v71);
                  v66 = v72;
                  --v63;
                }

                while (v63);
              }

              *(v39 + 8 * *v37) = (*(*(this + 43) + 8 * v43) - v72) / *&v37[2 * v42 + 6];
              v73 = &v34[3 * v37[4]];
              v74 = v73[1];
              if (v74)
              {
                v75 = v73 + 1;
                v76 = v73[1];
                do
                {
                  if (*(v76 + 28) >= v36)
                  {
                    v75 = v76;
                  }

                  v76 = *(v76 + 8 * (*(v76 + 28) < v36));
                }

                while (v76);
                if (v75 != v73 + 1 && v36 >= *(v75 + 7))
                {
                  v77 = v75[1];
                  v78 = v75;
                  if (v77)
                  {
                    do
                    {
                      v79 = v77;
                      v77 = *v77;
                    }

                    while (v77);
                  }

                  else
                  {
                    do
                    {
                      v79 = v78[2];
                      _ZF = *v79 == v78;
                      v78 = v79;
                    }

                    while (!_ZF);
                  }

                  if (*v73 == v75)
                  {
                    *v73 = v79;
                  }

                  --v73[2];
                  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v74, v75);
                  operator delete(v75);
                  v41 = v37[5];
                  v34 = __p;
                }
              }

              v80 = &v34[3 * v41];
              v81 = v80[1];
              if (v81)
              {
                v82 = v80 + 1;
                v83 = v80[1];
                do
                {
                  if (*(v83 + 28) >= v36)
                  {
                    v82 = v83;
                  }

                  v83 = *(v83 + 8 * (*(v83 + 28) < v36));
                }

                while (v83);
                if (v82 != v80 + 1 && v36 >= *(v82 + 7))
                {
                  v84 = v82[1];
                  v85 = v82;
                  if (v84)
                  {
                    do
                    {
                      v86 = v84;
                      v84 = *v84;
                    }

                    while (v84);
                  }

                  else
                  {
                    do
                    {
                      v86 = v85[2];
                      _ZF = *v86 == v85;
                      v85 = v86;
                    }

                    while (!_ZF);
                  }

                  if (*v80 == v82)
                  {
                    *v80 = v86;
                  }

                  --v80[2];
                  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v81, v82);
                  operator delete(v82);
                  v34 = __p;
                }
              }

              if (v34[3 * *v38 + 2] == 1)
              {
                v89 = v31 >> 2;
                if (((v31 >> 2) + 1) >> 62)
                {
                  std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                }

                if (v31 >> 2 != -1)
                {
                  if (!(((v31 >> 2) + 1) >> 62))
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                *(4 * v89) = *v38;
                v87 = 4 * v89 + 4;
                memcpy(0, 0, v31);
                v88 = v37[5];
                if (*(__p + 3 * v88 + 2) == 1)
                {
LABEL_117:
                  v90 = v87 >> 2;
                  if (((v87 >> 2) + 1) >> 62)
                  {
                    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                  }

                  if (v87 >> 2 != -1)
                  {
                    if (!(((v87 >> 2) + 1) >> 62))
                    {
                      operator new();
                    }

                    std::__throw_bad_array_new_length[abi:ne200100]();
                  }

                  *(4 * v90) = v88;
                  v31 = 4 * v90 + 4;
                  memcpy(0, 0, v87);
                  continue;
                }
              }

              else
              {
                v87 = v31;
                v88 = v37[5];
                if (*(__p + 3 * v88 + 2) == 1)
                {
                  goto LABEL_117;
                }
              }

              v31 = v87;
            }
          }
        }

        while (v31);
      }
    }

    v91 = *(a2 + 10);
    v92 = *(a2 + 11) - v91;
    if (v92 >= 1)
    {
      v93 = 0;
      v94 = *(this + 21);
      v95 = *(this + 24);
      v96 = v92 & 0x7FFFFFFF;
      do
      {
        if (*(v91 + v93) == 1 && *(v94 + 8 * v93) != *(v95 + 8 * v93))
        {
          if (*(*(a2 + 4) + 8 * v93) <= 0.0)
          {
            v97 = 3;
          }

          else
          {
            v97 = 2;
          }

          *(v91 + v93) = v97;
        }

        ++v93;
      }

      while (v96 != v93);
    }

    v98 = __p;
    if (__p)
    {
      v99 = v105;
      v100 = __p;
      if (v105 != __p)
      {
        do
        {
          v101 = v99 - 24;
          std::__tree<int>::destroy((v99 - 24), *(v99 - 2));
          v99 = v101;
        }

        while (v101 != v98);
        v100 = __p;
      }

      v105 = v98;
      operator delete(v100);
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(&__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 3240, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&__p, "solution", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&__p, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&__p);
  }
}

void sub_23CBC1710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, char a17)
{
  if (v17)
  {
    operator delete(v17);
  }

  operations_research::glop::StrictITIVector<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,std::set<int>>::~StrictITIVector(&a14);
  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

void **operations_research::glop::StrictITIVector<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,std::set<int>>::~StrictITIVector(void **a1)
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
        v5 = v3 - 24;
        std::__tree<int>::destroy((v3 - 24), *(v3 - 2));
        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t operations_research::glop::DualizerPreprocessor::Run(operations_research::glop::DualizerPreprocessor *this, operations_research::glop::LinearProgram *a2)
{
  if (a2)
  {
    v3 = *(this + 2);
    if (*(v3 + 144) == 1)
    {
      return 0;
    }

    v6 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 4);
    *(this + 25) = v6;
    v7 = *(a2 + 6);
    *(this + 24) = v7;
    *(this + 104) = *(a2 + 408);
    if (*(v3 + 144) == 2 && *(v3 + 128) * v6 > v7)
    {
      return 0;
    }

    else
    {
      v74[0] = 0;
      std::vector<double>::assign(this + 6, v6, v74);
      v74[0] = 0;
      std::vector<double>::assign(this + 9, v6, v74);
      if (v6 >= 1)
      {
        v8 = 0;
        v9 = v6 & 0x7FFFFFFF;
        do
        {
          v10 = 8 * v8;
          v11 = *(*(a2 + 20) + v10);
          v12 = *(*(a2 + 23) + v10);
          *(*(this + 6) + v10) = v11;
          *(*(this + 9) + v10) = v12;
          if (fabs(v11) >= fabs(v12))
          {
            v13 = v12;
          }

          else
          {
            v13 = v11;
          }

          if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
          {
            v14 = 0.0;
          }

          else
          {
            v14 = v13;
          }

          if (v14 != 0.0)
          {
            operations_research::glop::LinearProgram::SetVariableBounds(a2, v8, v11 - v14, v12 - v14);
            SparseColumn = operations_research::glop::LinearProgram::GetSparseColumn(a2, v8);
            v16 = SparseColumn[1];
            if (v16 >= 1)
            {
              v17 = SparseColumn[3];
              v18 = SparseColumn[4];
              v19 = *(a2 + 8);
              v20 = *(a2 + 11);
              do
              {
                v21 = *v18++;
                v22 = v14 * v21;
                LODWORD(v21) = *v17++;
                v23 = 8 * SLODWORD(v21);
                *(v19 + v23) = *(v19 + v23) - v22;
                *(v20 + v23) = *(v20 + v23) - v22;
                --v16;
              }

              while (v16);
            }

            operations_research::glop::LinearProgram::SetObjectiveOffset(a2, *(a2 + 49) + *(*(a2 + 17) + 8 * v8) * v14);
          }

          ++v8;
        }

        while (v8 != v9);
      }

      *(this + 18) = *(this + 17);
      if (*(this + 24) >= 1)
      {
        v24 = 0;
        while (1)
        {
          while (1)
          {
            while (1)
            {
              v25 = *(*(a2 + 8) + 8 * v24);
              v26 = *(*(a2 + 11) + 8 * v24);
              if (v25 != v26)
              {
                break;
              }

              v28 = *(this + 18);
              v27 = *(this + 19);
              if (v28 >= v27)
              {
                v31 = *(this + 17);
                v32 = (v28 - v31);
                v33 = v28 - v31 + 1;
                if (v33 < 0)
                {
                  goto LABEL_110;
                }

                v34 = v27 - v31;
                if (2 * v34 > v33)
                {
                  v33 = 2 * v34;
                }

                if (v34 >= 0x3FFFFFFFFFFFFFFFLL)
                {
                  v35 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v35 = v33;
                }

                if (v35)
                {
                  operator new();
                }

                v41 = v28 - v31;
                *v32 = 1;
                v42 = v32 + 1;
                memcpy(0, v31, v41);
                *(this + 17) = 0;
                *(this + 18) = v32 + 1;
                *(this + 19) = 0;
                if (!v31)
                {
                  goto LABEL_53;
                }

LABEL_52:
                operator delete(v31);
LABEL_53:
                *(this + 18) = v42;
                if (++v24 >= *(this + 24))
                {
                  goto LABEL_68;
                }
              }

              else
              {
                *v28 = 1;
                *(this + 18) = v28 + 1;
                if (++v24 >= *(this + 24))
                {
                  goto LABEL_68;
                }
              }
            }

            if (v26 == INFINITY)
            {
              break;
            }

            v30 = *(this + 18);
            v29 = *(this + 19);
            if (v30 >= v29)
            {
              v31 = *(this + 17);
              v38 = v30 - v31 + 1;
              if (v38 < 0)
              {
                goto LABEL_110;
              }

              v39 = v29 - v31;
              if (2 * v39 > v38)
              {
                v38 = 2 * v39;
              }

              if (v39 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v40 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v40 = v38;
              }

              if (v40)
              {
                operator new();
              }

              v46 = v30 - v31;
              v47 = (v30 - v31);
              v48 = 3;
              goto LABEL_65;
            }

            *v30 = 3;
            *(this + 18) = v30 + 1;
            if (++v24 >= *(this + 24))
            {
              goto LABEL_68;
            }
          }

          if (v25 == -INFINITY)
          {
            absl::lts_20240722::log_internal::LogMessage::LogMessage(v74, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 3477, 2);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v74, "There should be no free constraint in this lp.", 0x2EuLL);
            absl::lts_20240722::log_internal::LogMessage::~LogMessage(v74);
            if (++v24 >= *(this + 24))
            {
              break;
            }
          }

          else
          {
            v37 = *(this + 18);
            v36 = *(this + 19);
            if (v37 >= v36)
            {
              v31 = *(this + 17);
              v43 = v37 - v31 + 1;
              if (v43 < 0)
              {
LABEL_110:
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              v44 = v36 - v31;
              if (2 * v44 > v43)
              {
                v43 = 2 * v44;
              }

              if (v44 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v45 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v45 = v43;
              }

              if (v45)
              {
                operator new();
              }

              v46 = v37 - v31;
              v47 = (v37 - v31);
              v48 = 2;
LABEL_65:
              *v47 = v48;
              v42 = v47 + 1;
              memcpy(0, v31, v46);
              *(this + 17) = 0;
              *(this + 18) = v42;
              *(this + 19) = 0;
              if (!v31)
              {
                goto LABEL_53;
              }

              goto LABEL_52;
            }

            *v37 = 2;
            *(this + 18) = v37 + 1;
            if (++v24 >= *(this + 24))
            {
              break;
            }
          }
        }
      }

LABEL_68:
      *(this + 21) = *(this + 20);
      LODWORD(v74[0]) = 0;
      v49 = *(this + 25);
      if (v49 > 0)
      {
        for (i = 0; i < v49; LODWORD(v74[0]) = i)
        {
          v52 = *(*(a2 + 20) + 8 * i);
          if (v52 != -INFINITY)
          {
            if (*(*(a2 + 23) + 8 * i) == v52)
            {
              v53 = 1;
            }

            else
            {
              v53 = 2;
            }

            v55 = *(this + 18);
            v54 = *(this + 19);
            if (v55 < v54)
            {
              *v55 = v53;
              v51 = v55 + 1;
            }

            else
            {
              v56 = *(this + 17);
              v57 = (v55 - v56);
              v58 = v55 - v56 + 1;
              if (v58 < 0)
              {
                goto LABEL_110;
              }

              v59 = v54 - v56;
              if (2 * v59 > v58)
              {
                v58 = 2 * v59;
              }

              if (v59 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v60 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v60 = v58;
              }

              if (v60)
              {
                operator new();
              }

              v61 = v55 - v56;
              *v57 = v53;
              v51 = v57 + 1;
              memcpy(0, v56, v61);
              *(this + 17) = 0;
              *(this + 18) = v57 + 1;
              *(this + 19) = 0;
              if (v56)
              {
                operator delete(v56);
              }
            }

            *(this + 18) = v51;
            std::vector<int>::push_back[abi:ne200100](this + 160, v74);
            i = v74[0];
            v49 = *(this + 25);
          }

          ++i;
        }

        LODWORD(v74[0]) = 0;
        if (v49 >= 1)
        {
          for (j = 0; j < v49; LODWORD(v74[0]) = ++j)
          {
            v64 = *(*(a2 + 23) + 8 * j);
            if (v64 != INFINITY)
            {
              if (v64 == *(*(a2 + 20) + 8 * j))
              {
                v65 = 1;
              }

              else
              {
                v65 = 3;
              }

              v67 = *(this + 18);
              v66 = *(this + 19);
              if (v67 < v66)
              {
                *v67 = v65;
                v63 = v67 + 1;
              }

              else
              {
                v68 = *(this + 17);
                v69 = (v67 - v68);
                v70 = v67 - v68 + 1;
                if (v70 < 0)
                {
                  goto LABEL_110;
                }

                v71 = v66 - v68;
                if (2 * v71 > v70)
                {
                  v70 = 2 * v71;
                }

                if (v71 >= 0x3FFFFFFFFFFFFFFFLL)
                {
                  v72 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v72 = v70;
                }

                if (v72)
                {
                  operator new();
                }

                v73 = v67 - v68;
                *v69 = v65;
                v63 = v69 + 1;
                memcpy(0, v68, v73);
                *(this + 17) = 0;
                *(this + 18) = v69 + 1;
                *(this + 19) = 0;
                if (v68)
                {
                  operator delete(v68);
                }
              }

              *(this + 18) = v63;
              std::vector<int>::push_back[abi:ne200100](this + 160, v74);
              j = v74[0];
              v49 = *(this + 25);
            }
          }
        }
      }

      operations_research::glop::LinearProgram::LinearProgram(v74);
      operations_research::glop::LinearProgram::PopulateFromDual(v74, a2, (this + 112));
      operations_research::glop::LinearProgram::Swap(v74, a2);
      operations_research::glop::LinearProgram::~LinearProgram(v74);
      return 1;
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v74, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 3406, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v74, "lp", 2uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v74, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v74);
    return 0;
  }
}

void sub_23CBC1F98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  operations_research::glop::LinearProgram::~LinearProgram(va);
  _Unwind_Resume(a1);
}

void sub_23CBC1FAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CBC1FC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void operations_research::glop::DualizerPreprocessor::RecoverSolution(operations_research::glop::DualizerPreprocessor *this, operations_research::glop::ProblemSolution *a2)
{
  if (a2)
  {
    v4 = *(this + 25);
    if (v4)
    {
      if ((v4 & 0x80000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v5 = *(this + 24);
    v6 = *(this + 17);
    v7 = *(this + 18) - v6;
    if (v5 < v7)
    {
      v8 = 0;
      v9 = *(a2 + 7);
      v10 = *(this + 24);
      do
      {
        if (!*(v9 + v10))
        {
          v11 = *(v6 + v10);
          v12 = *(*(this + 20) + (v8 >> 30));
          *v12 = v11;
          v13 = (8 * v12);
          if ((v11 & 0xFFFFFFFD) == 1)
          {
            v14 = 72;
          }

          else
          {
            v14 = 48;
          }

          *v13 = *(v13 + *(this + v14));
        }

        ++v10;
        v8 += 0x100000000;
      }

      while (v10 < v7);
    }

    if (v5)
    {
      if ((v5 & 0x80000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v15 = *a2;
    v16 = 0x708020405020102uLL >> (8 * ((*a2 - 1) & 0x1Fu));
    if (((0xDBu >> (*a2 - 1)) & 1) == 0)
    {
      LOBYTE(v16) = *a2;
    }

    if ((v15 - 1) <= 7u)
    {
      LOBYTE(v15) = v16;
    }

    *a2 = v15;
    v17 = *(a2 + 1);
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    v18 = *(a2 + 4);
    *(a2 + 3) = 0;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 6) = 0;
    v19 = *(a2 + 7);
    *(a2 + 7) = 0;
    *(a2 + 8) = 0;
    v20 = *(a2 + 10);
    *(a2 + 9) = 0;
    *(a2 + 10) = 0;
    *(a2 + 11) = 0;
    *(a2 + 12) = 0;
    if (v20)
    {
      operator delete(v20);
    }

    if (v18)
    {
      operator delete(v18);
    }

    if (v19)
    {
      operator delete(v19);
    }

    if (v17)
    {

      operator delete(v17);
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v21, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 3522, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v21, "solution", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v21, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v21);
  }
}

void sub_23CBC2880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  operator delete(v13);
  if (v12)
  {
    operator delete(v12);
  }

  if (!v11)
  {
    _Unwind_Resume(a1);
  }

  operator delete(v11);
  _Unwind_Resume(a1);
}

BOOL operations_research::glop::ShiftVariableBoundsPreprocessor::Run(int64x2_t **this, operations_research::glop::LinearProgram *a2)
{
  if (!a2)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v74, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 3655, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v74, "lp", 2uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v74, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v74);
    return 0;
  }

  v4 = -1431655765 * ((*(a2 + 1) - *a2) >> 4);
  v74[0] = 0;
  std::vector<double>::assign(this + 9, v4, v74);
  v74[0] = 0;
  std::vector<double>::assign(this + 12, v4, v74);
  if (v4 >= 1)
  {
    v5 = *(a2 + 20);
    v6 = this[9];
    v7 = *(a2 + 23);
    v8 = v4 & 0x7FFFFFFF;
    v9 = 1;
    v10 = this[12];
    do
    {
      v11 = *v5++;
      *v6 = v11;
      v12 = *v7++;
      v13 = v12;
      *v10++ = v12;
      v14 = *v6++;
      v15 = v14 <= 0.0;
      if (v13 < 0.0)
      {
        v15 = 0;
      }

      v9 &= v15;
      --v8;
    }

    while (v8);
    v16 = dword_2810C0250;
    if (dword_2810C0250 < 1)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

  v9 = 1;
  v16 = dword_2810C0250;
  if (dword_2810C0250 >= 1)
  {
LABEL_42:
    if (absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0248, v16))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v74, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 3669);
      v44 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v74, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v44, "Maximum variable bounds magnitude (before shift): ", 0x32uLL);
      v45 = -1431655765 * ((*(a2 + 1) - *a2) >> 4);
      v46 = 0.0;
      if (v45 >= 1)
      {
        v47 = *(a2 + 20);
        v48 = *(a2 + 23);
        v49 = v45 & 0x7FFFFFFF;
        do
        {
          v50 = *v47++;
          v51 = fabs(v50);
          v52 = v50;
          v53 = *v48++;
          v54 = fabs(v53);
          v55 = v53;
          if ((*&v52 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
          {
            v56 = 0.0;
          }

          else
          {
            v56 = v51;
          }

          if ((*&v55 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
          {
            v57 = 0.0;
          }

          else
          {
            v57 = v54;
          }

          if (v56 < v57)
          {
            v56 = v57;
          }

          if (v46 < v56)
          {
            v46 = v56;
          }

          --v49;
        }

        while (v49);
      }

      v75 = v46;
      absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v44, &v75);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v74);
    }
  }

LABEL_10:
  if (v9)
  {
    return 0;
  }

  v18 = *(a2 + 6);
  if (v18)
  {
    if ((v18 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v74[0] = 0;
  std::vector<double>::assign(this + 6, v4, v74);
  if (v4 < 1)
  {
    v20 = 0;
    v22 = 0.0;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = v4 & 0x7FFFFFFF;
    v22 = 0.0;
    v23 = 0.0;
    do
    {
      v25 = this[9];
      v26 = v19;
      v27 = *&v25->i64[v26];
      v28 = this[12];
      v29 = *&v28->i64[v26];
      if (v27 > 0.0 || v29 < 0.0)
      {
        if (fabs(v27) >= fabs(v29))
        {
          v27 = *&v28->i64[v19];
        }

        if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v30 = 0.0;
        }

        else
        {
          v30 = v27;
        }

        if (*(this + 24) == 1)
        {
          IsVariableInteger = operations_research::glop::LinearProgram::IsVariableInteger(a2, v19);
          v32 = trunc(v30);
          if (IsVariableInteger)
          {
            v30 = v32;
          }

          v25 = this[9];
          v28 = this[12];
        }

        *&this[6]->i64[v19] = v30;
        operations_research::glop::LinearProgram::SetVariableBounds(a2, v19, *&v25->i64[v19] - v30, *&v28->i64[v19] - v30);
        SparseColumn = operations_research::glop::LinearProgram::GetSparseColumn(a2, v19);
        v34 = SparseColumn[1];
        if (v34 >= 1)
        {
          v35 = SparseColumn[3];
          v36 = SparseColumn[4];
          do
          {
            v37 = *v35++;
            v38 = (16 * v37);
            v39 = *v36++;
            v40 = v30 * v39 + v38[1];
            v41 = v40 + *v38;
            v42 = v40 + *v38 - v41;
            *v38 = v41;
            v38[1] = v42;
            --v34;
          }

          while (v34);
        }

        v24 = v23 + v30 * *(*(a2 + 17) + 8 * v19);
        v23 = v24 + v22 - (v22 + v24);
        ++v20;
        v22 = v22 + v24;
      }

      ++v19;
    }

    while (v19 != v21);
  }

  if (dword_2810C0268 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0260, dword_2810C0268))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v74, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 3708);
    v58 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v74, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v58, "Maximum variable bounds magnitude (after ", 0x29uLL);
    LODWORD(v75) = v20;
    v59 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v58, &v75);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v59, " shifts): ", 0xAuLL);
    v60 = -1431655765 * ((*(a2 + 1) - *a2) >> 4);
    v61 = 0.0;
    if (v60 >= 1)
    {
      v62 = *(a2 + 20);
      v63 = *(a2 + 23);
      v64 = v60 & 0x7FFFFFFF;
      do
      {
        v65 = *v62++;
        v66 = fabs(v65);
        v67 = v65;
        v68 = *v63++;
        v69 = fabs(v68);
        v70 = v68;
        if ((*&v67 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v71 = 0.0;
        }

        else
        {
          v71 = v66;
        }

        if ((*&v70 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v72 = 0.0;
        }

        else
        {
          v72 = v69;
        }

        if (v71 < v72)
        {
          v71 = v72;
        }

        if (v61 < v71)
        {
          v61 = v71;
        }

        --v64;
      }

      while (v64);
    }

    v75 = v61;
    absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v59, &v75);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v74);
  }

  LODWORD(v75) = 0;
  v17 = (*&v22 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    if (dword_2810C0298 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0290, dword_2810C0298))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v74, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 3727);
      v73 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v74, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v73, "Shifting variable bounds causes a floating point overflow for the objective.", 0x4CuLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v74);
    }

    *(this + 8) = 10;
  }

  else
  {
    operations_research::glop::LinearProgram::SetObjectiveOffset(a2, v22 + *(a2 + 49));
  }

  return v17;
}

void operations_research::glop::ShiftVariableBoundsPreprocessor::RecoverSolution(operations_research::glop::ShiftVariableBoundsPreprocessor *this, operations_research::glop::ProblemSolution *a2)
{
  if (!a2)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v24, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 3739, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v24, "solution", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v24, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v24);
    return;
  }

  v2 = *(a2 + 7);
  v3 = *(a2 + 8) - v2;
  if (v3 < 1)
  {
    return;
  }

  if ((*(this + 24) & 1) == 0)
  {
    v14 = 0;
    v15 = v3 & 0x7FFFFFFF;
    while (1)
    {
      v18 = *(v2 + v14);
      if ((v18 - 1) < 2)
      {
        break;
      }

      if (*(v2 + v14))
      {
        if (v18 != 3)
        {
          goto LABEL_17;
        }

        v19 = *(this + 12);
        goto LABEL_23;
      }

      v16 = *(a2 + 1);
      v17 = *(*(this + 6) + 8 * v14) + *(v16 + 8 * v14);
LABEL_16:
      *(v16 + 8 * v14) = v17;
LABEL_17:
      if (v15 == ++v14)
      {
        return;
      }
    }

    v19 = *(this + 9);
LABEL_23:
    v17 = *(v19 + 8 * v14);
    v16 = *(a2 + 1);
    goto LABEL_16;
  }

  v4 = *(this + 6);
  v5 = *(a2 + 1);
  v6 = v3 & 0x7FFFFFFF;
  if (v6 < 4 || (v5 < v4 + 8 * v6 ? (v7 = v4 >= v5 + 8 * v6) : (v7 = 1), !v7))
  {
    v9 = 0;
LABEL_25:
    v20 = (v5 + 8 * v9);
    v21 = (v4 + 8 * v9);
    v22 = v6 - v9;
    do
    {
      v23 = *v21++;
      *v20 = v23 + *v20;
      ++v20;
      --v22;
    }

    while (v22);
    return;
  }

  v8 = v3 & 3;
  v9 = v6 - v8;
  v10 = (v5 + 16);
  v11 = (v4 + 16);
  v12 = v6 - v8;
  do
  {
    v13 = vaddq_f64(*v11, *v10);
    v10[-1] = vaddq_f64(v11[-1], v10[-1]);
    *v10 = v13;
    v10 += 2;
    v11 += 2;
    v12 -= 4;
  }

  while (v12);
  if (v8)
  {
    goto LABEL_25;
  }
}

uint64_t operations_research::glop::ScalingPreprocessor::Run(operations_research::glop::ScalingPreprocessor *this, operations_research::glop::LinearProgram *a2)
{
  if (a2)
  {
    if (*(*(this + 2) + 184) != 1)
    {
      return 0;
    }

    v4 = -1431655765 * ((*(a2 + 1) - *a2) >> 4);
    v27[0] = 0;
    std::vector<double>::assign(this + 6, v4, v27);
    v27[0] = 0;
    std::vector<double>::assign(this + 9, v4, v27);
    if (v4 < 1)
    {
      goto LABEL_17;
    }

    v5 = *(a2 + 20);
    v6 = *(this + 6);
    v7 = *(a2 + 23);
    v8 = *(this + 9);
    v9 = v4 & 0x7FFFFFFF;
    if (v9 > 0xD)
    {
      v10 = 0;
      if ((v8 - v6) >= 0x20 && (v6 - v5) >= 0x20 && (v7 - v6) >= 0x20 && (v8 - v5) >= 0x20 && (v8 - v7) >= 0x20)
      {
        v10 = v9 - (v4 & 3);
        v12 = (v8 + 16);
        v13 = (v7 + 16);
        v14 = (v6 + 16);
        v15 = (v5 + 16);
        v16 = v10;
        do
        {
          v17 = *v15;
          *(v14 - 1) = *(v15 - 1);
          *v14 = v17;
          v18 = *v13;
          *(v12 - 1) = *(v13 - 1);
          *v12 = v18;
          v12 += 2;
          v13 += 2;
          v14 += 2;
          v15 += 2;
          v16 -= 4;
        }

        while (v16);
        if ((v4 & 3) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v10 = 0;
    }

    v19 = (v8 + 8 * v10);
    v20 = (v7 + 8 * v10);
    v21 = (v6 + 8 * v10);
    v22 = (v5 + 8 * v10);
    v23 = v9 - v10;
    do
    {
      v24 = *v22++;
      *v21++ = v24;
      v25 = *v20++;
      *v19++ = v25;
      --v23;
    }

    while (v23);
LABEL_17:
    operations_research::glop::Scale(a2, (this + 112), *(*(this + 2) + 252));
    operations_research::glop::LinearProgram::ScaleObjective(a2, *(*(this + 2) + 292));
    *(this + 12) = v26;
    *(this + 13) = operations_research::glop::LinearProgram::ScaleBounds(a2);
    return 1;
  }

  absl::lts_20240722::log_internal::LogMessage::LogMessage(v27, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 3770, 2);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v27, "lp", 2uLL);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v27, " == NULL", 8uLL);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(v27);
  return 0;
}

void operations_research::glop::ScalingPreprocessor::RecoverSolution(operations_research::glop::ScalingPreprocessor *this, operations_research::glop::ProblemSolution *a2)
{
  if (!a2)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v40, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 3793, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v40, "solution", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v40, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v40);
    return;
  }

  v4 = (this + 112);
  operations_research::glop::SparseMatrixScaler::ScaleRowVector(this + 112, 0, a2 + 1);
  v5 = *(a2 + 1);
  v6 = *(a2 + 2) - v5;
  if ((v6 >> 3) >= 1)
  {
    v7 = (this + 104);
    v8 = (v6 >> 3) & 0x7FFFFFFF;
    if (v8 <= 3 || v5 < v4 && v7 < &v5->f64[v8])
    {
      v9 = 0;
LABEL_7:
      v10 = &v5->f64[v9];
      v11 = v9 - v8;
      do
      {
        *v10 = *v7 * *v10;
        ++v10;
        v12 = __CFADD__(v11++, 1);
      }

      while (!v12);
      goto LABEL_10;
    }

    v30 = (v6 >> 3) & 3;
    v9 = v8 - v30;
    v31 = vld1q_dup_f64(v7);
    v32 = v5 + 1;
    v33 = v8 - v30;
    do
    {
      v34 = vmulq_f64(v31, *v32);
      v32[-1] = vmulq_f64(v31, v32[-1]);
      *v32 = v34;
      v32 += 2;
      v33 -= 4;
    }

    while (v33);
    if (v30)
    {
      goto LABEL_7;
    }
  }

LABEL_10:
  operations_research::glop::SparseMatrixScaler::ScaleColumnVector(v4, 0, a2 + 4);
  v13 = *(a2 + 4);
  v14 = *(a2 + 5) - v13;
  if ((v14 >> 3) < 1)
  {
    goto LABEL_18;
  }

  v15 = (this + 96);
  v16 = (v14 >> 3) & 0x7FFFFFFF;
  if (v16 <= 3 || v13 < (this + 104) && v15 < &v13->f64[v16])
  {
    v17 = 0;
LABEL_15:
    v18 = &v13->f64[v17];
    v19 = v17 - v16;
    do
    {
      *v18 = *v15 * *v18;
      ++v18;
      v12 = __CFADD__(v19++, 1);
    }

    while (!v12);
    goto LABEL_18;
  }

  v35 = (v14 >> 3) & 3;
  v17 = v16 - v35;
  v36 = vld1q_dup_f64(v15);
  v37 = v13 + 1;
  v38 = v16 - v35;
  do
  {
    v39 = vmulq_f64(v36, *v37);
    v37[-1] = vmulq_f64(v36, v37[-1]);
    *v37 = v39;
    v37 += 2;
    v38 -= 4;
  }

  while (v38);
  if (v35)
  {
    goto LABEL_15;
  }

LABEL_18:
  v20 = *(a2 + 1);
  v21 = *(a2 + 2) - v20;
  if ((v21 >> 3) >= 1)
  {
    v22 = 0;
    v23 = 0;
    v24 = *(a2 + 7);
    for (i = (v21 >> 3) & 0x7FFFFFFF; i; --i)
    {
      v29 = *v24++;
      v28 = v29;
      if (v29 != 3)
      {
        if (v28 == 2)
        {
          v27 = 8 * v23;
          v26 = (*(this + 6) + 8 * v23);
          goto LABEL_21;
        }

        if (v28 != 1)
        {
          goto LABEL_22;
        }
      }

      v26 = (*(this + 9) + v22);
      v27 = v22;
LABEL_21:
      *(v20 + v27) = *v26;
LABEL_22:
      ++v23;
      v22 += 8;
    }
  }
}

void operations_research::glop::EmptyColumnPreprocessor::~EmptyColumnPreprocessor(operations_research::glop::EmptyColumnPreprocessor *this)
{
  operations_research::glop::EmptyColumnPreprocessor::~EmptyColumnPreprocessor(this);

  JUMPOUT(0x23EED9460);
}

{
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    *(this + 10) = v3;
    operator delete(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    operator delete(v4);
  }

  *this = &unk_284F414E8;
  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5)
  {
    v6 = *(v5 + 40);
    if (v6)
    {
      *(v5 + 48) = v6;
      operator delete(v6);
    }

    MEMORY[0x23EED9460](v5, 0x1030C4094DBD242);
  }
}

void operations_research::glop::ProportionalColumnPreprocessor::~ProportionalColumnPreprocessor(operations_research::glop::ProportionalColumnPreprocessor *this)
{
  operations_research::glop::ProportionalColumnPreprocessor::~ProportionalColumnPreprocessor(this);

  JUMPOUT(0x23EED9460);
}

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
    *(this + 28) = v3;
    operator delete(v3);
  }

  v4 = *(this + 24);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 21);
  if (v5)
  {
    *(this + 22) = v5;
    operator delete(v5);
  }

  v6 = *(this + 18);
  if (v6)
  {
    *(this + 19) = v6;
    operator delete(v6);
  }

  v7 = *(this + 15);
  if (v7)
  {
    *(this + 16) = v7;
    operator delete(v7);
  }

  v8 = *(this + 12);
  if (v8)
  {
    *(this + 13) = v8;
    operator delete(v8);
  }

  v9 = *(this + 9);
  if (v9)
  {
    *(this + 10) = v9;
    operator delete(v9);
  }

  v10 = *(this + 6);
  if (v10)
  {
    *(this + 7) = v10;
    operator delete(v10);
  }

  *this = &unk_284F414E8;
  v11 = *(this + 4);
  *(this + 4) = 0;
  if (v11)
  {
    v12 = *(v11 + 40);
    if (v12)
    {
      *(v11 + 48) = v12;
      operator delete(v12);
    }

    MEMORY[0x23EED9460](v11, 0x1030C4094DBD242);
  }
}

void operations_research::glop::ProportionalColumnPreprocessor::UseInMipContext(operations_research::glop::ProportionalColumnPreprocessor *this)
{
  absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v1, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.h", 306);
  absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v1, "Not implemented.");
  absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v1);
}

void operations_research::glop::ProportionalRowPreprocessor::~ProportionalRowPreprocessor(operations_research::glop::ProportionalRowPreprocessor *this)
{
  operations_research::glop::ProportionalRowPreprocessor::~ProportionalRowPreprocessor(this);

  JUMPOUT(0x23EED9460);
}

{
  v2 = *(this + 16);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    *(this + 10) = v4;
    operator delete(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    *(this + 7) = v5;
    operator delete(v5);
  }

  *this = &unk_284F414E8;
  v6 = *(this + 4);
  *(this + 4) = 0;
  if (v6)
  {
    v7 = *(v6 + 40);
    if (v7)
    {
      *(v6 + 48) = v7;
      operator delete(v7);
    }

    MEMORY[0x23EED9460](v6, 0x1030C4094DBD242);
  }
}

void operations_research::glop::SingletonPreprocessor::~SingletonPreprocessor(operations_research::glop::SingletonPreprocessor *this)
{
  operations_research::glop::SingletonPreprocessor::~SingletonPreprocessor(this);

  JUMPOUT(0x23EED9460);
}

{
  std::deque<operations_research::glop::SparseColumn>::~deque[abi:ne200100](this + 448);
  if (*(this + 52) >= 2uLL)
  {
    operator delete((*(this + 54) - (*(this + 53) & 1) - 8));
  }

  v2 = *(this + 46);
  *(this + 46) = 0;
  if (v2)
  {
    MEMORY[0x23EED9440](v2, 0x1000C8077774924);
  }

  std::deque<operations_research::glop::SparseColumn>::~deque[abi:ne200100](this + 320);
  if (*(this + 36) >= 2uLL)
  {
    operator delete((*(this + 38) - (*(this + 37) & 1) - 8));
  }

  v3 = *(this + 30);
  *(this + 30) = 0;
  if (v3)
  {
    MEMORY[0x23EED9440](v3, 0x1000C8077774924);
  }

  v4 = *(this + 27);
  if (v4)
  {
    *(this + 28) = v4;
    operator delete(v4);
  }

  v5 = *(this + 24);
  if (v5)
  {
    *(this + 25) = v5;
    operator delete(v5);
  }

  v6 = *(this + 21);
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(this + 18);
  if (v7)
  {
    *(this + 19) = v7;
    operator delete(v7);
  }

  v8 = *(this + 15);
  if (v8)
  {
    operator delete(v8);
  }

  v9 = *(this + 12);
  if (v9)
  {
    *(this + 13) = v9;
    operator delete(v9);
  }

  v10 = *(this + 9);
  if (v10)
  {
    *(this + 10) = v10;
    operator delete(v10);
  }

  v11 = *(this + 6);
  if (v11)
  {
    operator delete(v11);
  }

  *this = &unk_284F414E8;
  v12 = *(this + 4);
  *(this + 4) = 0;
  if (v12)
  {
    v13 = *(v12 + 40);
    if (v13)
    {
      *(v12 + 48) = v13;
      operator delete(v13);
    }

    MEMORY[0x23EED9460](v12, 0x1030C4094DBD242);
  }
}

void operations_research::glop::ForcingAndImpliedFreeConstraintPreprocessor::~ForcingAndImpliedFreeConstraintPreprocessor(operations_research::glop::ForcingAndImpliedFreeConstraintPreprocessor *this)
{
  operations_research::glop::ForcingAndImpliedFreeConstraintPreprocessor::~ForcingAndImpliedFreeConstraintPreprocessor(this);

  JUMPOUT(0x23EED9460);
}

{
  std::deque<operations_research::glop::SparseColumn>::~deque[abi:ne200100](this + 280);
  if (*(this + 31) >= 2uLL)
  {
    operator delete((*(this + 33) - (*(this + 32) & 1) - 8));
  }

  v2 = *(this + 25);
  *(this + 25) = 0;
  if (v2)
  {
    MEMORY[0x23EED9440](v2, 0x1000C8077774924);
  }

  v3 = *(this + 22);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 19);
  if (v4)
  {
    *(this + 20) = v4;
    operator delete(v4);
  }

  v5 = *(this + 16);
  if (v5)
  {
    *(this + 17) = v5;
    operator delete(v5);
  }

  v6 = *(this + 13);
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(this + 10);
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(this + 7);
  if (v8)
  {
    *(this + 8) = v8;
    operator delete(v8);
  }

  *this = &unk_284F414E8;
  v9 = *(this + 4);
  *(this + 4) = 0;
  if (v9)
  {
    v10 = *(v9 + 40);
    if (v10)
    {
      *(v9 + 48) = v10;
      operator delete(v10);
    }

    MEMORY[0x23EED9460](v9, 0x1030C4094DBD242);
  }
}

void operations_research::glop::ImpliedFreePreprocessor::~ImpliedFreePreprocessor(operations_research::glop::ImpliedFreePreprocessor *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  *this = &unk_284F414E8;
  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
    v5 = *(v4 + 40);
    if (v5)
    {
      *(v4 + 48) = v5;
      operator delete(v5);
    }

    MEMORY[0x23EED9460](v4, 0x1030C4094DBD242);
  }
}

{
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  *this = &unk_284F414E8;
  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
    v5 = *(v4 + 40);
    if (v5)
    {
      *(v4 + 48) = v5;
      operator delete(v5);
    }

    MEMORY[0x23EED9460](v4, 0x1030C4094DBD242);
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::glop::DoubletonFreeColumnPreprocessor::~DoubletonFreeColumnPreprocessor(operations_research::glop::DoubletonFreeColumnPreprocessor *this)
{
  operations_research::glop::DoubletonFreeColumnPreprocessor::~DoubletonFreeColumnPreprocessor(this);

  JUMPOUT(0x23EED9460);
}

{
  v2 = *(this + 9);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    v4 = *(this + 7);
    v5 = *(this + 6);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 48);
        *(v4 - 48) = 0;
        if (v6)
        {
          MEMORY[0x23EED9440](v6, 0x1000C8077774924);
        }

        v4 -= 88;
      }

      while (v4 != v3);
      v5 = *(this + 6);
    }

    *(this + 7) = v3;
    operator delete(v5);
  }

  *this = &unk_284F414E8;
  v7 = *(this + 4);
  *(this + 4) = 0;
  if (v7)
  {
    v8 = *(v7 + 40);
    if (v8)
    {
      *(v7 + 48) = v8;
      operator delete(v8);
    }

    MEMORY[0x23EED9460](v7, 0x1030C4094DBD242);
  }
}

void operations_research::glop::UnconstrainedVariablePreprocessor::~UnconstrainedVariablePreprocessor(operations_research::glop::UnconstrainedVariablePreprocessor *this)
{
  operations_research::glop::UnconstrainedVariablePreprocessor::~UnconstrainedVariablePreprocessor(this);

  JUMPOUT(0x23EED9460);
}

{
  v2 = *(this + 52);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 49);
  if (v3)
  {
    *(this + 50) = v3;
    operator delete(v3);
  }

  v4 = *(this + 46);
  if (v4)
  {
    *(this + 47) = v4;
    operator delete(v4);
  }

  std::deque<operations_research::glop::SparseColumn>::~deque[abi:ne200100](this + 320);
  if (*(this + 36) >= 2uLL)
  {
    operator delete((*(this + 38) - (*(this + 37) & 1) - 8));
  }

  v5 = *(this + 30);
  *(this + 30) = 0;
  if (v5)
  {
    MEMORY[0x23EED9440](v5, 0x1000C8077774924);
  }

  v6 = *(this + 27);
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(this + 24);
  if (v7)
  {
    *(this + 25) = v7;
    operator delete(v7);
  }

  v8 = *(this + 21);
  if (v8)
  {
    *(this + 22) = v8;
    operator delete(v8);
  }

  v9 = *(this + 18);
  if (v9)
  {
    operator delete(v9);
  }

  v10 = *(this + 15);
  if (v10)
  {
    operator delete(v10);
  }

  v11 = *(this + 12);
  if (v11)
  {
    operator delete(v11);
  }

  v12 = *(this + 9);
  if (v12)
  {
    *(this + 10) = v12;
    operator delete(v12);
  }

  v13 = *(this + 6);
  if (v13)
  {
    *(this + 7) = v13;
    operator delete(v13);
  }

  *this = &unk_284F414E8;
  v14 = *(this + 4);
  *(this + 4) = 0;
  if (v14)
  {
    v15 = *(v14 + 40);
    if (v15)
    {
      *(v14 + 48) = v15;
      operator delete(v15);
    }

    MEMORY[0x23EED9460](v14, 0x1030C4094DBD242);
  }
}

void operations_research::glop::FreeConstraintPreprocessor::~FreeConstraintPreprocessor(operations_research::glop::FreeConstraintPreprocessor *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    operator delete(v2);
  }

  *this = &unk_284F414E8;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    v4 = *(v3 + 40);
    if (v4)
    {
      *(v3 + 48) = v4;
      operator delete(v4);
    }

    MEMORY[0x23EED9460](v3, 0x1030C4094DBD242);
  }
}

{
  v2 = *(this + 6);
  if (v2)
  {
    operator delete(v2);
  }

  *this = &unk_284F414E8;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    v4 = *(v3 + 40);
    if (v4)
    {
      *(v3 + 48) = v4;
      operator delete(v4);
    }

    MEMORY[0x23EED9460](v3, 0x1030C4094DBD242);
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::glop::SingletonColumnSignPreprocessor::~SingletonColumnSignPreprocessor(operations_research::glop::SingletonColumnSignPreprocessor *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  *this = &unk_284F414E8;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    v4 = *(v3 + 40);
    if (v4)
    {
      *(v3 + 48) = v4;
      operator delete(v4);
    }

    MEMORY[0x23EED9460](v3, 0x1030C4094DBD242);
  }
}

{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  *this = &unk_284F414E8;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    v4 = *(v3 + 40);
    if (v4)
    {
      *(v3 + 48) = v4;
      operator delete(v4);
    }

    MEMORY[0x23EED9460](v3, 0x1030C4094DBD242);
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::glop::DoubletonEqualityRowPreprocessor::~DoubletonEqualityRowPreprocessor(operations_research::glop::DoubletonEqualityRowPreprocessor *this)
{
  operations_research::glop::DoubletonEqualityRowPreprocessor::~DoubletonEqualityRowPreprocessor(this);

  JUMPOUT(0x23EED9460);
}

{
  v2 = *(this + 43);
  if (v2)
  {
    *(this + 44) = v2;
    operator delete(v2);
  }

  std::deque<operations_research::glop::SparseColumn>::~deque[abi:ne200100](this + 296);
  if (*(this + 33) >= 2uLL)
  {
    operator delete((*(this + 35) - (*(this + 34) & 1) - 8));
  }

  v3 = *(this + 27);
  *(this + 27) = 0;
  if (v3)
  {
    MEMORY[0x23EED9440](v3, 0x1000C8077774924);
  }

  v4 = *(this + 24);
  if (v4)
  {
    *(this + 25) = v4;
    operator delete(v4);
  }

  v5 = *(this + 21);
  if (v5)
  {
    *(this + 22) = v5;
    operator delete(v5);
  }

  v6 = *(this + 18);
  if (v6)
  {
    *(this + 19) = v6;
    operator delete(v6);
  }

  v7 = *(this + 15);
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(this + 12);
  if (v8)
  {
    *(this + 13) = v8;
    operator delete(v8);
  }

  v9 = *(this + 9);
  if (v9)
  {
    *(this + 10) = v9;
    operator delete(v9);
  }

  v10 = *(this + 6);
  if (v10)
  {
    operator delete(v10);
  }

  *this = &unk_284F414E8;
  v11 = *(this + 4);
  *(this + 4) = 0;
  if (v11)
  {
    v12 = *(v11 + 40);
    if (v12)
    {
      *(v11 + 48) = v12;
      operator delete(v12);
    }

    MEMORY[0x23EED9460](v11, 0x1030C4094DBD242);
  }
}

void operations_research::glop::DualizerPreprocessor::~DualizerPreprocessor(operations_research::glop::DualizerPreprocessor *this)
{
  operations_research::glop::DualizerPreprocessor::~DualizerPreprocessor(this);

  JUMPOUT(0x23EED9460);
}

{
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    operator delete(v2);
  }

  v3 = *(this + 17);
  if (v3)
  {
    *(this + 18) = v3;
    operator delete(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 9);
  if (v5)
  {
    *(this + 10) = v5;
    operator delete(v5);
  }

  v6 = *(this + 6);
  if (v6)
  {
    *(this + 7) = v6;
    operator delete(v6);
  }

  *this = &unk_284F414E8;
  v7 = *(this + 4);
  *(this + 4) = 0;
  if (v7)
  {
    v8 = *(v7 + 40);
    if (v8)
    {
      *(v7 + 48) = v8;
      operator delete(v8);
    }

    MEMORY[0x23EED9460](v7, 0x1030C4094DBD242);
  }
}

void operations_research::glop::DualizerPreprocessor::UseInMipContext(operations_research::glop::DualizerPreprocessor *this)
{
  absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v1, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.h", 917);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v1, "In the presence of integer variables, ", 0x26uLL);
  absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v1, "there is no notion of a dual problem.");
  absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v1);
}

void operations_research::glop::ShiftVariableBoundsPreprocessor::~ShiftVariableBoundsPreprocessor(operations_research::glop::ShiftVariableBoundsPreprocessor *this)
{
  operations_research::glop::ShiftVariableBoundsPreprocessor::~ShiftVariableBoundsPreprocessor(this);

  JUMPOUT(0x23EED9460);
}

{
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    *(this + 10) = v3;
    operator delete(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    *(this + 7) = v4;
    operator delete(v4);
  }

  *this = &unk_284F414E8;
  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5)
  {
    v6 = *(v5 + 40);
    if (v6)
    {
      *(v5 + 48) = v6;
      operator delete(v6);
    }

    MEMORY[0x23EED9460](v5, 0x1030C4094DBD242);
  }
}

void operations_research::glop::ScalingPreprocessor::~ScalingPreprocessor(operations_research::glop::ScalingPreprocessor *this)
{
  operations_research::glop::ScalingPreprocessor::~ScalingPreprocessor(this);

  JUMPOUT(0x23EED9460);
}

{
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  v3 = *(this + 15);
  if (v3)
  {
    *(this + 16) = v3;
    operator delete(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    *(this + 10) = v4;
    operator delete(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    *(this + 7) = v5;
    operator delete(v5);
  }

  *this = &unk_284F414E8;
  v6 = *(this + 4);
  *(this + 4) = 0;
  if (v6)
  {
    v7 = *(v6 + 40);
    if (v7)
    {
      *(v6 + 48) = v7;
      operator delete(v7);
    }

    MEMORY[0x23EED9460](v6, 0x1030C4094DBD242);
  }
}

void operations_research::glop::ScalingPreprocessor::UseInMipContext(operations_research::glop::ScalingPreprocessor *this)
{
  absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v1, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.h", 1004);
  absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v1, "Not implemented.");
  absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v1);
}

uint64_t std::deque<operations_research::glop::SparseColumn>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    *(a1 + 40) = 0;
    v11 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = &v2[v4 / 0x55];
    v6 = *v5;
    v7 = *v5 + 48 * (v4 % 0x55);
    v8 = v2[(*(a1 + 40) + v4) / 0x55] + 48 * ((*(a1 + 40) + v4) % 0x55);
    if (v7 != v8)
    {
      do
      {
        v9 = *v7;
        *v7 = 0;
        if (v9)
        {
          MEMORY[0x23EED9440](v9, 0x1000C8077774924);
          v6 = *v5;
        }

        v7 += 48;
        if (v7 - v6 == 4080)
        {
          v10 = v5[1];
          ++v5;
          v6 = v10;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v2 = *(a1 + 8);
      v3 = *(a1 + 16);
    }

    *(a1 + 40) = 0;
    v11 = v3 - v2;
    if (v11 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(a1 + 16);
        v2 = (*(a1 + 8) + 8);
        *(a1 + 8) = v2;
        v11 = v3 - v2;
      }

      while (v11 > 2);
    }
  }

  if (v11 == 1)
  {
    v12 = 42;
    goto LABEL_17;
  }

  if (v11 == 2)
  {
    v12 = 85;
LABEL_17:
    *(a1 + 32) = v12;
  }

  if (v2 != v3)
  {
    do
    {
      v13 = *v2++;
      operator delete(v13);
    }

    while (v2 != v3);
    v15 = *(a1 + 8);
    v14 = *(a1 + 16);
    if (v14 != v15)
    {
      do
      {
        v14 -= 8;
      }

      while (v14 != v15);
      *(a1 + 16) = v14;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

int64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,int>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> const,int>>>::find_or_prepare_insert<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>@<X0>(int64_t result@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
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
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v14, (v16 + (__clz(__rbit64(v21)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,int>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> const,int>>>::GetPolicyFunctions(void)::value);
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
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,int>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> const,int>>>::resize_impl(result, 3);
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

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,int>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> const,int>>>::resize_impl(uint64_t a1, uint64_t a2)
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

void *std::deque<operations_research::glop::SparseColumn>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x55;
  v3 = v1 - 85;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::vector<operations_research::sat::Literal> *,std::allocator<std::vector<operations_research::sat::Literal> *>>::emplace_back<std::vector<operations_research::sat::Literal> *&>(a1, &v11);
}

void sub_23CBC520C(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t operations_research::glop::SparseVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::SparseColumnEntry>>::SparseVector(uint64_t a1, uint64_t a2)
{
  *(a1 + 25) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (*(a2 + 16) >= 1)
  {
    operator new[]();
  }

  v4 = *(a2 + 8);
  if (v4 >= 1)
  {
    memmove(*(a1 + 24), *(a2 + 24), 4 * v4);
    memmove(*(a1 + 32), *(a2 + 32), 8 * *(a2 + 8));
    v4 = *(a2 + 8);
  }

  *(a1 + 8) = v4;
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

void sub_23CBC5374(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    MEMORY[0x23EED9440](v3, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::glop::anonymous namespace::ColumnWithRepresentativeAndScaledCost *,false>(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v145 = &a2[-1].n128_f64[1];
  j = a1;
  while (1)
  {
    a1 = j;
    v11 = a2 - j;
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:

          return result;
        case 4:
          v61 = a2[-1].n128_i32[1];
          v62 = j[2].n128_i32[1];
          if (v61 == v62)
          {
            result.n128_u64[0] = a2[-1].n128_u64[1];
            v63 = j[2].n128_f64[1];
            if (result.n128_f64[0] == v63)
            {
              if (v9->n128_u32[0] >= j[2].n128_u32[0])
              {
                return result;
              }
            }

            else if (result.n128_f64[0] >= v63)
            {
              return result;
            }
          }

          else if (v61 >= v62)
          {
            return result;
          }

          v151 = j[2];
          j[2] = *v9;
          result = v151;
          *v9 = v151;
          v137 = j[2].n128_i32[1];
          v138 = j[1].n128_i32[1];
          v139 = v137 < v138;
          if (v137 != v138)
          {
            goto LABEL_277;
          }

          result.n128_u64[0] = j[2].n128_u64[1];
          v140 = j[1].n128_f64[1];
          if (result.n128_f64[0] == v140)
          {
            v139 = j[2].n128_u32[0] < j[1].n128_u32[0];
LABEL_277:
            if (!v139)
            {
              return result;
            }
          }

          else if (result.n128_f64[0] >= v140)
          {
            return result;
          }

          v152 = j[1];
          j[1] = j[2];
          result = v152;
          j[2] = v152;
          v141 = j[1].n128_i32[1];
          v142 = j->n128_i32[1];
          v143 = v141 < v142;
          if (v141 == v142)
          {
            result.n128_u64[0] = j[1].n128_u64[1];
            v144 = j->n128_f64[1];
            if (result.n128_f64[0] == v144)
            {
              v143 = j[1].n128_u32[0] < j->n128_u32[0];
              goto LABEL_282;
            }

            if (result.n128_f64[0] >= v144)
            {
              return result;
            }
          }

          else
          {
LABEL_282:
            if (!v143)
            {
              return result;
            }
          }

          v153 = *j;
          *j = j[1];
          result = v153;
          j[1] = v153;
          return result;
        case 5:

          return result;
      }

      goto LABEL_9;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      break;
    }

LABEL_9:
    if (v11 <= 23)
    {
      v64 = j + 1;
      v66 = j == a2 || v64 == a2;
      if (a4)
      {
        if (v66)
        {
          return result;
        }

        v67 = 0;
        v68 = j;
LABEL_156:
        v70 = v68;
        v68 = v64;
        v71 = v70[1].n128_i32[1];
        v72 = v70->n128_i32[1];
        if (v71 == v72)
        {
          result.n128_u64[0] = v70[1].n128_u64[1];
          v73 = v70->n128_f64[1];
          if (result.n128_f64[0] == v73)
          {
            if (v68->n128_u32[0] >= v70->n128_u32[0])
            {
              goto LABEL_155;
            }
          }

          else if (result.n128_f64[0] >= v73)
          {
            goto LABEL_155;
          }
        }

        else
        {
          if (v71 >= v72)
          {
            goto LABEL_155;
          }

          result.n128_u64[0] = v70[1].n128_u64[1];
        }

        v74 = v70[1].n128_i32[0];
        *v68 = *v70;
        v69 = j;
        if (v70 == j)
        {
          goto LABEL_154;
        }

        v75 = v67;
        while (1)
        {
          v76 = (j->n128_f64 + v75);
          v77 = (&j[-1] + v75);
          v78 = *(&j->n128_i32[-3] + v75);
          if (v71 == v78)
          {
            v79 = *(v76 - 1);
            if (result.n128_f64[0] == v79)
            {
              if (v74 >= *v77)
              {
LABEL_173:
                v69 = v70;
LABEL_154:
                v69->n128_u32[0] = v74;
                v69->n128_u32[1] = v71;
                v69->n128_u64[1] = result.n128_u64[0];
LABEL_155:
                v64 = v68 + 1;
                v67 += 16;
                if (&v68[1] == a2)
                {
                  return result;
                }

                goto LABEL_156;
              }
            }

            else if (result.n128_f64[0] >= v79)
            {
              v69 = (j + v75);
              goto LABEL_154;
            }
          }

          else if (v71 >= v78)
          {
            goto LABEL_173;
          }

          --v70;
          *v76 = *v77;
          v75 -= 16;
          if (!v75)
          {
            v69 = j;
            goto LABEL_154;
          }
        }
      }

      if (v66)
      {
        return result;
      }

      while (1)
      {
        v129 = a1;
        a1 = v64;
        v130 = v129[1].n128_i32[1];
        v131 = v129->n128_i32[1];
        if (v130 == v131)
        {
          result.n128_u64[0] = v129[1].n128_u64[1];
          v132 = v129->n128_f64[1];
          if (result.n128_f64[0] == v132)
          {
            if (a1->n128_u32[0] < v129->n128_u32[0])
            {
              goto LABEL_263;
            }
          }

          else if (result.n128_f64[0] < v132)
          {
            goto LABEL_263;
          }
        }

        else if (v130 < v131)
        {
          result.n128_u64[0] = v129[1].n128_u64[1];
LABEL_263:
          v133 = a1->n128_u32[0];
          do
          {
            while (1)
            {
              while (1)
              {
                v134 = v129;
                v129[1] = *v129;
                --v129;
                v135 = v134[-1].n128_i32[1];
                if (v130 == v135)
                {
                  break;
                }

                if (v130 >= v135)
                {
                  goto LABEL_254;
                }
              }

              v136 = v134[-1].n128_f64[1];
              if (result.n128_f64[0] != v136)
              {
                break;
              }

              if (v133 >= v129->n128_u32[0])
              {
                goto LABEL_254;
              }
            }
          }

          while (result.n128_f64[0] < v136);
LABEL_254:
          v134->n128_u32[0] = v133;
          v134->n128_u32[1] = v130;
          v134->n128_u64[1] = result.n128_u64[0];
        }

        v64 = a1 + 1;
        if (&a1[1] == a2)
        {
          return result;
        }
      }
    }

    if (!a3)
    {
      if (j == a2)
      {
        return result;
      }

      v80 = (v11 - 2) >> 1;
      v81 = v80;
LABEL_179:
      v83 = v81;
      v84 = 16 * v81;
      if (v80 < (16 * v81) >> 4)
      {
        goto LABEL_178;
      }

      v85 = (v84 >> 3) | 1;
      v82 = &j[v85];
      if ((v84 >> 3) + 2 >= v11)
      {
        goto LABEL_187;
      }

      v86 = v82->n128_i32[1];
      v87 = v82[1].n128_i32[1];
      v88 = v86 < v87;
      if (v86 == v87)
      {
        v89 = v82->n128_f64[1];
        v90 = v82[1].n128_f64[1];
        if (v89 != v90)
        {
          if (v89 >= v90)
          {
            goto LABEL_187;
          }

LABEL_186:
          ++v82;
          v85 = (v84 >> 3) + 2;
LABEL_187:
          v91 = &j[v84 / 0x10];
          v92 = v82->n128_i32[1];
          v93 = j[v84 / 0x10].n128_i32[1];
          if (v92 == v93)
          {
            v94 = v82->n128_f64[1];
            v95 = v91->n128_f64[1];
            if (v94 == v95)
            {
              if (v82->n128_u32[0] < v91->n128_u32[0])
              {
                goto LABEL_178;
              }
            }

            else if (v94 < v95)
            {
              goto LABEL_178;
            }
          }

          else
          {
            if (v92 < v93)
            {
              goto LABEL_178;
            }

            v95 = v91->n128_f64[1];
          }

          v96 = v91->n128_u32[0];
          while (1)
          {
            *v91 = *v82;
            if (v80 < v85)
            {
              goto LABEL_177;
            }

            v91 = v82;
            v97 = 2 * v85;
            v85 = (2 * v85) | 1;
            v82 = &j[v85];
            v98 = v97 + 2;
            if (v98 >= v11)
            {
              goto LABEL_204;
            }

            v99 = v82->n128_i32[1];
            v100 = v82[1].n128_i32[1];
            v101 = v99 < v100;
            if (v99 != v100)
            {
              goto LABEL_201;
            }

            v102 = v82->n128_f64[1];
            v103 = v82[1].n128_f64[1];
            if (v102 == v103)
            {
              break;
            }

            if (v102 >= v103)
            {
              goto LABEL_204;
            }

LABEL_203:
            ++v82;
            v85 = v98;
LABEL_204:
            v104 = v82->n128_i32[1];
            if (v104 == v93)
            {
              v105 = v82->n128_f64[1];
              if (v105 == v95)
              {
                if (v82->n128_u32[0] < v96)
                {
                  goto LABEL_176;
                }
              }

              else if (v105 < v95)
              {
LABEL_176:
                v82 = v91;
LABEL_177:
                v82->n128_u32[0] = v96;
                v82->n128_u32[1] = v93;
                v82->n128_f64[1] = v95;
LABEL_178:
                v81 = v83 - 1;
                if (v83)
                {
                  goto LABEL_179;
                }

                while (2)
                {
                  v106 = 0;
                  v149 = *j;
                  v107 = j;
LABEL_219:
                  v108 = v107;
                  v109 = &v107[v106];
                  v107 = v109 + 1;
                  v110 = 2 * v106;
                  v106 = (2 * v106) | 1;
                  v111 = v110 + 2;
                  if (v111 >= v11)
                  {
                    goto LABEL_218;
                  }

                  v112 = v109[1].n128_i32[1];
                  v113 = v109[2].n128_i32[1];
                  v114 = v112 < v113;
                  if (v112 != v113)
                  {
                    goto LABEL_223;
                  }

                  v115 = v109[1].n128_f64[1];
                  v116 = v109[2].n128_f64[1];
                  if (v115 == v116)
                  {
                    v114 = v107->n128_u32[0] < v109[2].n128_u32[0];
LABEL_223:
                    if (!v114)
                    {
LABEL_218:
                      *v108 = *v107;
                      if (v106 > ((v11 - 2) >> 1))
                      {
                        if (v107 == --a2)
                        {
                          result = v149;
                          *v107 = v149;
                          goto LABEL_215;
                        }

                        *v107 = *a2;
                        result = v149;
                        *a2 = v149;
                        v117 = (v107 - j + 16) >> 4;
                        v118 = v117 - 2;
                        if (v117 >= 2)
                        {
                          v119 = v118 >> 1;
                          v120 = &j[v118 >> 1];
                          v121 = v120->n128_i32[1];
                          v122 = v107->n128_i32[1];
                          if (v121 == v122)
                          {
                            v123 = v120->n128_f64[1];
                            result.n128_u64[0] = v107->n128_u64[1];
                            if (v123 == result.n128_f64[0])
                            {
                              if (v120->n128_u32[0] < v107->n128_u32[0])
                              {
                                goto LABEL_237;
                              }

                              goto LABEL_215;
                            }

                            if (v123 >= result.n128_f64[0])
                            {
                              goto LABEL_215;
                            }

LABEL_237:
                            v124 = v107->n128_u32[0];
                            *v107 = *v120;
                            if (v118 >= 2)
                            {
                              do
                              {
LABEL_241:
                                v125 = v120;
                                v126 = v119 - 1;
                                v119 = (v119 - 1) >> 1;
                                v120 = &j[v119];
                                v127 = v120->n128_i32[1];
                                if (v127 == v122)
                                {
                                  v128 = v120->n128_f64[1];
                                  if (v128 == result.n128_f64[0])
                                  {
                                    if (v120->n128_u32[0] >= v124)
                                    {
                                      goto LABEL_246;
                                    }
                                  }

                                  else if (v128 >= result.n128_f64[0])
                                  {
LABEL_246:
                                    v120 = v125;
                                    break;
                                  }
                                }

                                else if (v127 >= v122)
                                {
                                  goto LABEL_246;
                                }

                                *v125 = *v120;
                              }

                              while (v126 > 1);
                            }
                          }

                          else
                          {
                            if (v121 >= v122)
                            {
                              goto LABEL_215;
                            }

                            result.n128_u64[0] = v107->n128_u64[1];
                            v124 = v107->n128_u32[0];
                            *v107 = *v120;
                            if (v118 >= 2)
                            {
                              goto LABEL_241;
                            }
                          }

                          v120->n128_u32[0] = v124;
                          v120->n128_u32[1] = v122;
                          v120->n128_u64[1] = result.n128_u64[0];
                        }

LABEL_215:
                        v24 = v11-- <= 2;
                        if (v24)
                        {
                          return result;
                        }

                        continue;
                      }

                      goto LABEL_219;
                    }
                  }

                  else if (v115 >= v116)
                  {
                    goto LABEL_218;
                  }

                  break;
                }

                v107 = v109 + 2;
                v106 = v111;
                goto LABEL_218;
              }
            }

            else if (v104 < v93)
            {
              goto LABEL_176;
            }
          }

          v101 = v82->n128_u32[0] < v82[1].n128_u32[0];
LABEL_201:
          if (!v101)
          {
            goto LABEL_204;
          }

          goto LABEL_203;
        }

        v88 = v82->n128_u32[0] < v82[1].n128_u32[0];
      }

      if (!v88)
      {
        goto LABEL_187;
      }

      goto LABEL_186;
    }

    v12 = v11 >> 1;
    v13 = &j[v11 >> 1];
    if (v11 < 0x81)
    {
      --a3;
      if (a4)
      {
LABEL_18:
        v19 = a1->n128_i32[1];
        goto LABEL_23;
      }
    }

    else
    {
      v15 = v12;
      v16 = &a1[v12 - 1];
      v146 = *a1;
      *a1 = *v13;
      result.n128_u64[1] = v146.n128_u64[1];
      *v13 = v146;
      --a3;
      if (a4)
      {
        goto LABEL_18;
      }
    }

    v19 = a1[-1].n128_i32[1];
    v20 = a1->n128_i32[1];
    if (v19 == v20)
    {
      v21 = a1[-1].n128_f64[1];
      result.n128_u64[0] = a1->n128_u64[1];
      if (v21 == result.n128_f64[0])
      {
        if (a1[-1].n128_u32[0] >= a1->n128_u32[0])
        {
          goto LABEL_77;
        }

        goto LABEL_23;
      }

      if (v21 >= result.n128_f64[0])
      {
        goto LABEL_77;
      }

LABEL_23:
      v22 = 0;
      v23 = a1->n128_u32[0];
      result.n128_u64[0] = a1->n128_u64[1];
      while (1)
      {
        v25 = &a1[v22];
        v26 = a1[v22 + 1].n128_i32[1];
        v24 = v26 < v19;
        if (v26 == v19)
        {
          break;
        }

LABEL_25:
        if (!v24)
        {
          goto LABEL_31;
        }

LABEL_27:
        ++v22;
      }

      v27 = v25[1].n128_f64[1];
      if (v27 == result.n128_f64[0])
      {
        v24 = v25[1].n128_u32[0] < v23;
        goto LABEL_25;
      }

      if (v27 < result.n128_f64[0])
      {
        goto LABEL_27;
      }

LABEL_31:
      n128_u64 = a1[v22 + 1].n128_u64;
      i = a2 - 1;
      if (v22 * 16)
      {
        while (1)
        {
          v30 = i->n128_i32[1];
          if (v30 == v19)
          {
            v31 = i->n128_f64[1];
            if (v31 == result.n128_f64[0])
            {
              if (i->n128_u32[0] < v23)
              {
                goto LABEL_41;
              }
            }

            else if (v31 < result.n128_f64[0])
            {
              goto LABEL_41;
            }
          }

          else if (v30 < v19)
          {
            goto LABEL_41;
          }

          --i;
        }
      }

      i = a2;
      if (n128_u64 < a2)
      {
        for (i = a2 - 1; ; --i)
        {
          v40 = i->n128_i32[1];
          if (v40 == v19)
          {
            v41 = i->n128_f64[1];
            if (v41 == result.n128_f64[0])
            {
              if (n128_u64 >= i || i->n128_u32[0] < v23)
              {
                break;
              }
            }

            else if (n128_u64 >= i || v41 < result.n128_f64[0])
            {
              break;
            }
          }

          else if (v40 < v19 || n128_u64 >= i)
          {
            break;
          }
        }
      }

LABEL_41:
      j = n128_u64;
      if (n128_u64 < i)
      {
        v32 = i;
        do
        {
          v147 = *j;
          *j = *v32;
          *v32 = v147;
          do
          {
            while (1)
            {
              ++j;
              v34 = j->n128_i32[1];
              v33 = v34 < v19;
              if (v34 != v19)
              {
                goto LABEL_46;
              }

              v35 = j->n128_f64[1];
              if (v35 != result.n128_f64[0])
              {
                break;
              }

              v33 = j->n128_u32[0] < v23;
LABEL_46:
              if (!v33)
              {
                goto LABEL_54;
              }
            }
          }

          while (v35 < result.n128_f64[0]);
          do
          {
            while (1)
            {
LABEL_54:
              --v32;
              v37 = v32->n128_i32[1];
              v36 = v37 < v19;
              if (v37 != v19)
              {
                goto LABEL_53;
              }

              v38 = v32->n128_f64[1];
              if (v38 != result.n128_f64[0])
              {
                break;
              }

              v36 = v32->n128_u32[0] < v23;
LABEL_53:
              if (v36)
              {
                goto LABEL_43;
              }
            }
          }

          while (v38 >= result.n128_f64[0]);
LABEL_43:
          ;
        }

        while (j < v32);
      }

      if (&j[-1] != a1)
      {
        *a1 = j[-1];
      }

      j[-1].n128_u32[0] = v23;
      j[-1].n128_u32[1] = v19;
      j[-1].n128_u64[1] = result.n128_u64[0];
      if (n128_u64 < i)
      {
LABEL_76:
        a4 = 0;
      }

      else
      {
        {
          a2 = j - 1;
          if (v42)
          {
            return result;
          }

          goto LABEL_1;
        }

        if ((v42 & 1) == 0)
        {
          goto LABEL_76;
        }
      }
    }

    else
    {
      if (v19 < v20)
      {
        v19 = a1->n128_i32[1];
        goto LABEL_23;
      }

      result.n128_u64[0] = a1->n128_u64[1];
LABEL_77:
      v44 = a1->n128_u32[0];
      v45 = a2[-1].n128_i32[1];
      if (v20 == v45)
      {
        if (result.n128_f64[0] == *v145)
        {
          if (v44 < v9->n128_u32[0])
          {
            goto LABEL_91;
          }
        }

        else if (result.n128_f64[0] < *v145)
        {
LABEL_91:
          for (j = a1 + 1; ; ++j)
          {
            v48 = j->n128_i32[1];
            if (v20 == v48)
            {
              v49 = j->n128_f64[1];
              if (result.n128_f64[0] == v49)
              {
                if (v44 < j->n128_u32[0])
                {
                  goto LABEL_99;
                }
              }

              else if (result.n128_f64[0] < v49)
              {
                goto LABEL_99;
              }
            }

            else if (v20 < v48)
            {
              goto LABEL_99;
            }
          }
        }
      }

      else if (v20 < v45)
      {
        goto LABEL_91;
      }

      for (j = a1 + 1; j < a2; ++j)
      {
        v46 = j->n128_i32[1];
        if (v20 == v46)
        {
          v47 = j->n128_f64[1];
          if (result.n128_f64[0] == v47)
          {
            if (v44 < j->n128_u32[0])
            {
              break;
            }
          }

          else if (result.n128_f64[0] < v47)
          {
            break;
          }
        }

        else if (v20 < v46)
        {
          break;
        }
      }

LABEL_99:
      v50 = a2;
      if (j >= a2)
      {
        goto LABEL_122;
      }

      for (k = &a2[-1].n128_f64[1]; ; k -= 2)
      {
        if (v20 != v45)
        {
          if (v20 >= v45)
          {
            goto LABEL_108;
          }

          goto LABEL_102;
        }

        if (result.n128_f64[0] != *k)
        {
          break;
        }

        if (v44 >= *(k - 2))
        {
          goto LABEL_108;
        }

LABEL_102:
        v45 = *(k - 5);
      }

      if (result.n128_f64[0] < *k)
      {
        goto LABEL_102;
      }

LABEL_108:
      v50 = (k - 1);
LABEL_122:
      if (j < v50)
      {
        v148 = *j;
        *j = *v50;
        *v50 = v148;
        while (1)
        {
          ++j;
          v53 = j->n128_i32[1];
          v52 = v20 < v53;
          if (v20 != v53)
          {
            goto LABEL_111;
          }

          v54 = j->n128_f64[1];
          if (result.n128_f64[0] == v54)
          {
            v52 = v44 < j->n128_u32[0];
LABEL_111:
            if (v52)
            {
              goto LABEL_119;
            }
          }

          else if (result.n128_f64[0] < v54)
          {
            while (1)
            {
LABEL_119:
              --v50;
              v56 = v50->n128_i32[1];
              v55 = v20 < v56;
              if (v20 != v56)
              {
                goto LABEL_117;
              }

              v57 = v50->n128_f64[1];
              if (result.n128_f64[0] == v57)
              {
                v55 = v44 < v50->n128_u32[0];
LABEL_117:
                if (!v55)
                {
                  goto LABEL_122;
                }
              }

              else if (result.n128_f64[0] >= v57)
              {
                goto LABEL_122;
              }
            }
          }
        }
      }

      if (&j[-1] != a1)
      {
        *a1 = j[-1];
      }

      a4 = 0;
      j[-1].n128_u32[0] = v44;
      j[-1].n128_u32[1] = v20;
      j[-1].n128_u64[1] = result.n128_u64[0];
    }
  }

  v58 = a2[-1].n128_i32[1];
  v59 = j->n128_i32[1];
  if (v58 == v59)
  {
    result.n128_u64[0] = a2[-1].n128_u64[1];
    v60 = j->n128_f64[1];
    if (result.n128_f64[0] == v60)
    {
      if (v9->n128_u32[0] >= j->n128_u32[0])
      {
        return result;
      }
    }

    else if (result.n128_f64[0] >= v60)
    {
      return result;
    }

LABEL_272:
    v150 = *j;
    *j = *v9;
    result = v150;
    *v9 = v150;
    return result;
  }

  if (v58 < v59)
  {
    goto LABEL_272;
  }

  return result;
}

__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::glop::anonymous namespace::ColumnWithRepresentativeAndScaledCost *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 result)
{
  v4 = a2->n128_i32[1];
  v5 = a1->n128_i32[1];
  v6 = v4 < v5;
  if (v4 == v5)
  {
    result.n128_u64[0] = a2->n128_u64[1];
    v7 = a1->n128_f64[1];
    if (result.n128_f64[0] != v7)
    {
      if (result.n128_f64[0] >= v7)
      {
        goto LABEL_13;
      }

LABEL_6:
      v8 = a3->n128_i32[1];
      v9 = v8 < v4;
      if (v8 == v4)
      {
        v10 = a3->n128_f64[1];
        v11 = a2->n128_f64[1];
        if (v10 != v11)
        {
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }

        v9 = a3->n128_u32[0] < a2->n128_u32[0];
      }

      if (!v9)
      {
LABEL_20:
        result = *a1;
        *a1 = *a2;
        *a2 = result;
        v14 = a3->n128_i32[1];
        v15 = a2->n128_i32[1];
        v16 = v14 < v15;
        if (v14 == v15)
        {
          result.n128_u64[0] = a3->n128_u64[1];
          v17 = a2->n128_f64[1];
          if (result.n128_f64[0] != v17)
          {
            if (result.n128_f64[0] >= v17)
            {
              return result;
            }

            goto LABEL_25;
          }

          v16 = a3->n128_u32[0] < a2->n128_u32[0];
        }

        if (!v16)
        {
          return result;
        }

LABEL_25:
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        return result;
      }

LABEL_11:
      result = *a1;
      *a1 = *a3;
      *a3 = result;
      return result;
    }

    v6 = a2->n128_u32[0] < a1->n128_u32[0];
  }

  if (v6)
  {
    goto LABEL_6;
  }

LABEL_13:
  v12 = a3->n128_i32[1];
  if (v12 == v4)
  {
    result.n128_u64[0] = a3->n128_u64[1];
    v13 = a2->n128_f64[1];
    if (result.n128_f64[0] == v13)
    {
      if (a3->n128_u32[0] >= a2->n128_u32[0])
      {
        return result;
      }
    }

    else if (result.n128_f64[0] >= v13)
    {
      return result;
    }
  }

  else if (v12 >= v4)
  {
    return result;
  }

  result = *a2;
  *a2 = *a3;
  *a3 = result;
  v18 = a2->n128_i32[1];
  v19 = a1->n128_i32[1];
  v20 = v18 < v19;
  if (v18 == v19)
  {
    result.n128_u64[0] = a2->n128_u64[1];
    v21 = a1->n128_f64[1];
    if (result.n128_f64[0] != v21)
    {
      if (result.n128_f64[0] >= v21)
      {
        return result;
      }

LABEL_32:
      result = *a1;
      *a1 = *a2;
      *a2 = result;
      return result;
    }

    v20 = a2->n128_u32[0] < a1->n128_u32[0];
  }

  if (v20)
  {
    goto LABEL_32;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::glop::anonymous namespace::ColumnWithRepresentativeAndScaledCost *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 a6)
{
  v12 = a4->n128_i32[1];
  v13 = a3->n128_i32[1];
  v14 = v12 < v13;
  if (v12 == v13)
  {
    result.n128_u64[0] = a4->n128_u64[1];
    v15 = a3->n128_f64[1];
    if (result.n128_f64[0] != v15)
    {
      if (result.n128_f64[0] >= v15)
      {
        goto LABEL_22;
      }

      goto LABEL_6;
    }

    v14 = a4->n128_u32[0] < a3->n128_u32[0];
  }

  if (!v14)
  {
    goto LABEL_22;
  }

LABEL_6:
  result = *a3;
  *a3 = *a4;
  *a4 = result;
  v16 = a3->n128_i32[1];
  v17 = a2->n128_i32[1];
  v18 = v16 < v17;
  if (v16 == v17)
  {
    result.n128_u64[0] = a3->n128_u64[1];
    v19 = a2->n128_f64[1];
    if (result.n128_f64[0] != v19)
    {
      if (result.n128_f64[0] >= v19)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    v18 = a3->n128_u32[0] < a2->n128_u32[0];
  }

  if (!v18)
  {
    goto LABEL_22;
  }

LABEL_11:
  result = *a2;
  *a2 = *a3;
  *a3 = result;
  v20 = a2->n128_i32[1];
  v21 = a1->n128_i32[1];
  v22 = v20 < v21;
  if (v20 == v21)
  {
    result.n128_u64[0] = a2->n128_u64[1];
    v23 = a1->n128_f64[1];
    if (result.n128_f64[0] != v23)
    {
      if (result.n128_f64[0] >= v23)
      {
        goto LABEL_22;
      }

LABEL_16:
      result = *a1;
      *a1 = *a2;
      *a2 = result;
      goto LABEL_22;
    }

    v22 = a2->n128_u32[0] < a1->n128_u32[0];
  }

  if (v22)
  {
    goto LABEL_16;
  }

LABEL_22:
  v24 = a5->n128_i32[1];
  v25 = a4->n128_i32[1];
  if (v24 == v25)
  {
    result.n128_u64[0] = a5->n128_u64[1];
    v26 = a4->n128_f64[1];
    if (result.n128_f64[0] == v26)
    {
      if (a5->n128_u32[0] >= a4->n128_u32[0])
      {
        return result;
      }
    }

    else if (result.n128_f64[0] >= v26)
    {
      return result;
    }
  }

  else if (v24 >= v25)
  {
    return result;
  }

  result = *a4;
  *a4 = *a5;
  *a5 = result;
  v27 = a4->n128_i32[1];
  v28 = a3->n128_i32[1];
  v29 = v27 < v28;
  if (v27 == v28)
  {
    result.n128_u64[0] = a4->n128_u64[1];
    v30 = a3->n128_f64[1];
    if (result.n128_f64[0] != v30)
    {
      if (result.n128_f64[0] >= v30)
      {
        return result;
      }

      goto LABEL_34;
    }

    v29 = a4->n128_u32[0] < a3->n128_u32[0];
  }

  if (!v29)
  {
    return result;
  }

LABEL_34:
  result = *a3;
  *a3 = *a4;
  *a4 = result;
  v31 = a3->n128_i32[1];
  v32 = a2->n128_i32[1];
  v33 = v31 < v32;
  if (v31 == v32)
  {
    result.n128_u64[0] = a3->n128_u64[1];
    v34 = a2->n128_f64[1];
    if (result.n128_f64[0] != v34)
    {
      if (result.n128_f64[0] >= v34)
      {
        return result;
      }

      goto LABEL_39;
    }

    v33 = a3->n128_u32[0] < a2->n128_u32[0];
  }

  if (!v33)
  {
    return result;
  }

LABEL_39:
  result = *a2;
  *a2 = *a3;
  *a3 = result;
  v35 = a2->n128_i32[1];
  v36 = a1->n128_i32[1];
  v37 = v35 < v36;
  if (v35 == v36)
  {
    result.n128_u64[0] = a2->n128_u64[1];
    v38 = a1->n128_f64[1];
    if (result.n128_f64[0] != v38)
    {
      if (result.n128_f64[0] >= v38)
      {
        return result;
      }

LABEL_44:
      result = *a1;
      *a1 = *a2;
      *a2 = result;
      return result;
    }

    v37 = a2->n128_u32[0] < a1->n128_u32[0];
  }

  if (v37)
  {
    goto LABEL_44;
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::glop::anonymous namespace::ColumnWithRepresentativeAndScaledCost *>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 <= 2)
  {
    if (v3 < 2)
    {
      return 1;
    }

    if (v3 == 2)
    {
      v4 = a2 - 1;
      v5 = a2[-1].n128_i32[1];
      v6 = a1->n128_i32[1];
      if (v5 == v6)
      {
        v7 = a2[-1].n128_f64[1];
        v8 = a1->n128_f64[1];
        if (v7 == v8)
        {
          if (v4->n128_u32[0] < a1->n128_u32[0])
          {
            goto LABEL_48;
          }
        }

        else if (v7 < v8)
        {
LABEL_48:
          v35 = *a1;
          *a1 = *v4;
          *v4 = v35;
        }
      }

      else if (v5 < v6)
      {
        goto LABEL_48;
      }

      return 1;
    }

    goto LABEL_13;
  }

  switch(v3)
  {
    case 3:
      return 1;
    case 4:
      v26 = a2 - 1;
      v29 = a2[-1].n128_i32[1];
      v30 = a1[2].n128_i32[1];
      if (v29 == v30)
      {
        v31 = a2[-1].n128_f64[1];
        v32 = a1[2].n128_f64[1];
        if (v31 == v32)
        {
          if (v26->n128_u32[0] >= a1[2].n128_u32[0])
          {
            return 1;
          }
        }

        else if (v31 >= v32)
        {
          return 1;
        }
      }

      else if (v29 >= v30)
      {
        return 1;
      }

      v36 = a1[2];
      a1[2] = *v26;
      *v26 = v36;
      v37 = a1[2].n128_i32[1];
      v38 = a1[1].n128_i32[1];
      v39 = v37 < v38;
      if (v37 == v38)
      {
        v40 = a1[2].n128_f64[1];
        v41 = a1[1].n128_f64[1];
        if (v40 != v41)
        {
          if (v40 >= v41)
          {
            return 1;
          }

LABEL_55:
          v42 = a1[1];
          a1[1] = a1[2];
          a1[2] = v42;
          v43 = a1[1].n128_i32[1];
          v44 = a1->n128_i32[1];
          v45 = v43 < v44;
          if (v43 == v44)
          {
            v46 = a1[1].n128_f64[1];
            v47 = a1->n128_f64[1];
            if (v46 != v47)
            {
              if (v46 >= v47)
              {
                return 1;
              }

              goto LABEL_60;
            }

            v45 = a1[1].n128_u32[0] < a1->n128_u32[0];
          }

          if (!v45)
          {
            return 1;
          }

LABEL_60:
          v48 = *a1;
          *a1 = a1[1];
          a1[1] = v48;
          return 1;
        }

        v39 = a1[2].n128_u32[0] < a1[1].n128_u32[0];
      }

      if (!v39)
      {
        return 1;
      }

      goto LABEL_55;
    case 5:
      return 1;
  }

LABEL_13:
  v9 = a1 + 2;
  v13 = a1 + 3;
  if (&a1[3] == a2)
  {
LABEL_40:
    v33 = 1;
    return (v33 | v12) & 1;
  }

  v12 = a2;
  v14 = 0;
  v15 = 0;
  while (2)
  {
    v17 = v13->n128_i32[1];
    v18 = v9->n128_i32[1];
    if (v17 == v18)
    {
      v19 = v13->n128_f64[1];
      v20 = v9->n128_f64[1];
      if (v19 == v20)
      {
        if (v13->n128_u32[0] >= v9->n128_u32[0])
        {
          goto LABEL_17;
        }
      }

      else if (v19 >= v20)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v17 >= v18)
      {
        goto LABEL_17;
      }

      v19 = v13->n128_f64[1];
    }

    v21 = v13->n128_u32[0];
    *v13 = *v9;
    v16 = a1;
    if (v9 == a1)
    {
      goto LABEL_16;
    }

    v22 = v14;
    while (1)
    {
      v23 = (a1->n128_f64 + v22);
      v24 = *(&a1[1].n128_i32[1] + v22);
      if (v17 != v24)
      {
        if (v17 >= v24)
        {
          v16 = &a1[2] + v22;
          goto LABEL_16;
        }

        goto LABEL_29;
      }

      v25 = v23[3];
      if (v19 != v25)
      {
        break;
      }

      if (v21 >= *(v23 + 4))
      {
        goto LABEL_35;
      }

LABEL_29:
      --v9;
      *(v23 + 2) = *(v23 + 1);
      v22 -= 16;
      if (v22 == -32)
      {
        v16 = a1;
        goto LABEL_16;
      }
    }

    if (v19 < v25)
    {
      goto LABEL_29;
    }

LABEL_35:
    v16 = v9;
LABEL_16:
    *v16 = v21;
    *(v16 + 4) = v17;
    *(v16 + 8) = v19;
    if (++v15 != 8)
    {
LABEL_17:
      v9 = v13;
      v14 += 16;
      if (++v13 == a2)
      {
        goto LABEL_40;
      }

      continue;
    }

    break;
  }

  v33 = 0;
  v12 = &v13[1] == a2;
  return (v33 | v12) & 1;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<operations_research::StrongInt64<operations_research::glop::EntryIndex_integer_tag_>,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>> *,false>(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
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

        return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>(v9, (v9 + 16), a2 - 2);
      case 4uLL:
        result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>(v9, (v9 + 16), (v9 + 32));
        v26 = *(a2 - 2);
        v27 = *(v9 + 32);
        if (v26 >= v27)
        {
          if (v27 < v26)
          {
            return result;
          }

          v29 = *(a2 - 2);
          v28 = *(v9 + 40);
          if (v29 >= v28)
          {
            return result;
          }
        }

        else
        {
          v28 = *(v9 + 40);
          v29 = *(a2 - 2);
        }

        *(v9 + 32) = v26;
        *(a2 - 2) = v27;
        *(v9 + 40) = v29;
        *(a2 - 2) = v28;
        v30 = *(v9 + 32);
        v31 = *(v9 + 16);
        if (v30 >= v31)
        {
          if (v31 < v30)
          {
            return result;
          }

          v33 = *(v9 + 40);
          v32 = *(v9 + 24);
          if (v33 >= v32)
          {
            return result;
          }
        }

        else
        {
          v32 = *(v9 + 24);
          v33 = *(v9 + 40);
        }

        *(v9 + 16) = v30;
        *(v9 + 32) = v31;
        *(v9 + 24) = v33;
        *(v9 + 40) = v32;
        v34 = *v9;
        if (v30 >= *v9)
        {
          if (v34 < v30)
          {
            return result;
          }

          v35 = *(v9 + 8);
          if (v33 >= v35)
          {
            return result;
          }
        }

        else
        {
          v35 = *(v9 + 8);
        }

        *v9 = v30;
        *(v9 + 16) = v34;
        *(v9 + 8) = v33;
        *(v9 + 24) = v35;
        return result;
      case 5uLL:

        return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>(v9, v9 + 16, v9 + 32, v9 + 48, a2 - 2);
    }

LABEL_11:
    if (v12 <= 23)
    {
      v36 = (v9 + 16);
      v38 = v9 == a2 || v36 == a2;
      if (a5)
      {
        if (v38)
        {
          return result;
        }

        v39 = 0;
        v40 = v9;
LABEL_56:
        v42 = v40;
        v40 = v36;
        v43 = *(v42 + 16);
        v44 = *v42;
        if (v43 >= *v42)
        {
          if (v44 < v43)
          {
            goto LABEL_55;
          }

          v45 = *(v42 + 24);
          v46 = *(v42 + 8);
          if (v45 >= v46)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v45 = *(v42 + 24);
          v46 = *(v42 + 8);
        }

        *(v42 + 16) = v44;
        *(v40 + 8) = v46;
        v41 = v9;
        if (v42 == v9)
        {
          goto LABEL_54;
        }

        v47 = v39;
        while (1)
        {
          v50 = *(v9 + v47 - 16);
          if (v43 < v50)
          {
            v48 = *(v9 + v47 - 8);
          }

          else
          {
            if (v50 < v43)
            {
              v41 = v9 + v47;
LABEL_54:
              *v41 = v43;
              *(v41 + 8) = v45;
LABEL_55:
              v36 = (v40 + 16);
              v39 += 16;
              if ((v40 + 16) == a2)
              {
                return result;
              }

              goto LABEL_56;
            }

            v48 = *(v9 + v47 - 8);
            if (v45 >= v48)
            {
              v41 = v42;
              goto LABEL_54;
            }
          }

          v42 -= 16;
          v49 = v9 + v47;
          *v49 = v50;
          *(v49 + 8) = v48;
          v47 -= 16;
          if (!v47)
          {
            v41 = v9;
            goto LABEL_54;
          }
        }
      }

      if (v38)
      {
        return result;
      }

      for (i = v9 + 8; ; i += 16)
      {
        v56 = v8;
        v8 = v36;
        v57 = *(v56 + 16);
        v58 = *v56;
        if (v57 < *v56)
        {
          break;
        }

        if (v58 >= v57)
        {
          v59 = *(v56 + 24);
          if (v59 < *(v56 + 8))
          {
            goto LABEL_87;
          }
        }

LABEL_84:
        v36 = (v8 + 16);
        if ((v8 + 16) == a2)
        {
          return result;
        }
      }

      v59 = *(v56 + 24);
LABEL_87:
      for (j = i; ; j -= 16)
      {
        *(j + 8) = v58;
        *(j + 16) = *j;
        v58 = *(j - 24);
        if (v57 >= v58 && (v58 < v57 || v59 >= *(j - 16)))
        {
          break;
        }
      }

      *(j - 8) = v57;
      *j = v59;
      goto LABEL_84;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {
        v51 = (v12 - 2) >> 1;
        v52 = v51 + 1;
        v53 = (v9 + 16 * v51);
        do
        {
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<operations_research::StrongInt64<operations_research::glop::EntryIndex_integer_tag_>,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>> *>(v9, a3, (a2 - v9) >> 4, v53);
          v53 -= 2;
          --v52;
        }

        while (v52);
        do
        {
          result = std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::pair<long long,int> *>(v9, a2, a3, v12);
          a2 -= 2;
        }

        while (v12-- > 2);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = v9 + 16 * (v12 >> 1);
    if (v12 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>((v8 + 16 * (v12 >> 1)), v8, a2 - 2);
      if (a5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>(v8, (v8 + 16 * (v12 >> 1)), a2 - 2);
      v15 = 16 * v13;
      v16 = (16 * v13 + v8 - 16);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>((v8 + 16), v16, a2 - 4);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>((v8 + 32), (v8 + 16 + v15), a2 - 6);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>(v16, v14, (v8 + 16 + v15));
      v17 = *v8;
      *v8 = *v14;
      *v14 = v17;
      LODWORD(v17) = *(v8 + 8);
      *(v8 + 8) = *(v14 + 8);
      *(v14 + 8) = v17;
      if (a5)
      {
        goto LABEL_20;
      }
    }

    v18 = *(v8 - 16);
    if (v18 >= *v8 && (*v8 < v18 || *(v8 - 8) >= *(v8 + 8)))
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<long long,int> *,std::__less<void,void> &>(v8, a2);
      v9 = result;
LABEL_25:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }

LABEL_20:
    v19 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<long long,int> *,std::__less<void,void> &>(v8, a2);
    if ((v20 & 1) == 0)
    {
      goto LABEL_23;
    }

    v21 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *>(v8, v19);
    v9 = v19 + 16;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *>(v19 + 16, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v19;
      if (v21)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v21)
    {
LABEL_23:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<operations_research::StrongInt64<operations_research::glop::EntryIndex_integer_tag_>,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>> *,false>(v8, v19, a3, -v11, a5 & 1);
      v9 = v19 + 16;
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

  v22 = *(a2 - 2);
  v23 = *v9;
  if (v22 < *v9)
  {
    v24 = *(v9 + 8);
    v25 = *(a2 - 2);
LABEL_30:
    *v9 = v22;
    *(a2 - 2) = v23;
    *(v9 + 8) = v25;
    *(a2 - 2) = v24;
    return result;
  }

  if (v23 >= v22)
  {
    v25 = *(a2 - 2);
    v24 = *(v9 + 8);
    if (v25 < v24)
    {
      goto LABEL_30;
    }
  }

  return result;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<operations_research::StrongInt64<operations_research::glop::EntryIndex_integer_tag_>,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[2];
        if (*v8 < v10 || v10 >= *v8 && *(v8 + 2) < *(v8 + 6))
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v11 = *v8;
      v12 = *a4;
      if (*v8 >= *a4)
      {
        if (v12 >= v11)
        {
          v14 = *(v8 + 2);
          v13 = *(a4 + 2);
          if (v14 < v13)
          {
            return result;
          }
        }

        else
        {
          v13 = *(a4 + 2);
          v14 = *(v8 + 2);
        }

        *a4 = v11;
        *(a4 + 2) = v14;
        if (v5 >= v7)
        {
          while (1)
          {
            v16 = 2 * v7;
            v7 = (2 * v7) | 1;
            v15 = (result + 16 * v7);
            v17 = v16 + 2;
            if (v17 < a3)
            {
              v18 = v15[2];
              if (*v15 < v18 || v18 >= *v15 && *(v15 + 2) < *(v15 + 6))
              {
                v15 += 2;
                v7 = v17;
              }
            }

            v19 = *v15;
            if (*v15 < v12)
            {
              break;
            }

            v20 = *(v15 + 2);
            if (v12 >= v19 && v20 < v13)
            {
              break;
            }

            *v8 = v19;
            *(v8 + 2) = v20;
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
        *(v15 + 2) = v13;
      }
    }
  }

  return result;
}

uint64_t operations_research::glop::SparseVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::SparseColumnEntry>>::AddMultipleToSparseVectorInternal(void *a1, int a2, int a3, uint64_t *a4, double a5, double a6)
{
  v8 = a1[1];
  v9 = a4[1];
  v10 = -2;
  if (!a2)
  {
    v10 = 0;
  }

  if (v8 + v10 + v9 >= 1)
  {
    operator new[]();
  }

  result = 0;
  if (v8 >= 1 && v9 >= 1)
  {
    v27 = a1[3];
    v28 = a4[3];
    v13 = 0;
    v12 = 0;
    v11 = 0;
    if (a2)
    {
      while (1)
      {
        v29 = *(v27 + 4 * v11);
        v30 = *(v28 + 4 * v12);
        if (v29 == v30)
        {
          if (v29 != a3)
          {
            v31 = *(a1[4] + 8 * v11) * a5 + *(a4[4] + 8 * v12);
            if (fabs(v31) > a6)
            {
              *(4 * v13) = v29;
              *(8 * v13++) = v31;
            }
          }

          ++v11;
          ++v12;
          if (v11 >= v8)
          {
            goto LABEL_6;
          }
        }

        else if (v29 >= v30)
        {
          *(4 * v13) = v30;
          *(8 * v13++) = *(a4[4] + 8 * v12++);
          if (v11 >= v8)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v32 = *(a1[4] + 8 * v11) * a5;
          if (fabs(v32) > a6)
          {
            *(4 * v13) = v29;
            *(8 * v13++) = v32;
          }

          if (++v11 >= v8)
          {
            goto LABEL_6;
          }
        }

        if (v12 >= v9)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
      v33 = *(v27 + 4 * v11);
      v34 = *(v28 + 4 * v12);
      if (v33 == v34)
      {
        break;
      }

      if (v33 >= v34)
      {
        *(4 * v13) = v34;
        *(8 * v13++) = *(a4[4] + 8 * v12++);
        if (v11 >= v8)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v36 = *(a1[4] + 8 * v11) * a5;
        if (fabs(v36) > a6)
        {
          *(4 * v13) = v33;
          *(8 * v13++) = v36;
        }

        if (++v11 >= v8)
        {
          goto LABEL_6;
        }
      }

LABEL_52:
      if (v12 >= v9)
      {
        goto LABEL_6;
      }
    }

    if (v33 == a3)
    {
      *(4 * v13) = a3;
      v35 = *(a4[4] + 8 * v12);
    }

    else
    {
      v35 = *(a1[4] + 8 * v11) * a5 + *(a4[4] + 8 * v12);
      if (fabs(v35) <= a6)
      {
        goto LABEL_49;
      }

      *(4 * v13) = v33;
    }

    *(8 * v13++) = v35;
LABEL_49:
    ++v11;
    ++v12;
    if (v11 >= v8)
    {
      goto LABEL_6;
    }

    goto LABEL_52;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
LABEL_6:
  if (v11 < v8)
  {
    v14 = a1[4];
    do
    {
      v15 = *(v14 + 8 * v11) * a5;
      if (fabs(v15) > a6)
      {
        *(4 * v13) = *(a1[3] + 4 * v11);
        *(8 * v13++) = v15;
      }

      ++v11;
    }

    while (v8 != v11);
  }

  v16 = v9 - v12;
  if (v9 > v12)
  {
    v18 = a4[3];
    v17 = a4[4];
    if (v16 <= 0xB)
    {
      goto LABEL_13;
    }

    v37 = 4 * v13;
    v38 = 4 * v12;
    if ((4 * v13 - 4 * v12 - v18) < 0x20)
    {
      goto LABEL_13;
    }

    v39 = 8 * v13;
    v40 = 8 * v12;
    if ((8 * v13 - 8 * v12 - v17) < 0x40)
    {
      goto LABEL_13;
    }

    v13 += v16 & 0xFFFFFFFFFFFFFFF8;
    v12 += v16 & 0xFFFFFFFFFFFFFFF8;
    v41 = (v39 + 32);
    v42 = (v38 + v18 + 16);
    v43 = (v37 + 16);
    v44 = (v40 + v17 + 32);
    v45 = v16 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v47 = *(v44 - 2);
      v46 = *(v44 - 1);
      v49 = *v44;
      v48 = v44[1];
      v44 += 4;
      *(v41 - 2) = v47;
      *(v41 - 1) = v46;
      v50 = *(v42 - 1);
      v51 = *v42;
      *v41 = v49;
      v41[1] = v48;
      v41 += 4;
      v42 += 2;
      *(v43 - 1) = v50;
      *v43 = v51;
      v43 += 2;
      v45 -= 8;
    }

    while (v45);
    if (v16 != (v16 & 0xFFFFFFFFFFFFFFF8))
    {
LABEL_13:
      v19 = (v18 + 4 * v12);
      v20 = v9 - v12;
      v21 = (v17 + 8 * v12);
      do
      {
        v22 = *v19++;
        *(4 * v13) = v22;
        v23 = *v21++;
        *(8 * v13++) = v23;
        --v20;
      }

      while (v20);
    }
  }

  v24 = *a4;
  *a4 = 0;
  a4[1] = v13;
  *(a4 + 40) = 0;
  a4[2] = 0;
  a4[3] = 0;
  a4[4] = 0;
  if (v24)
  {

    JUMPOUT(0x23EED9440);
  }

  return result;
}

uint64_t std::vector<operations_research::glop::DoubletonFreeColumnPreprocessor::RestoreInfo>::__emplace_back_slow_path<operations_research::glop::DoubletonFreeColumnPreprocessor::RestoreInfo const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v5 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x2E8BA2E8BA2E8BALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v20 = 8 * ((a1[1] - *a1) >> 3);
  v6 = *(a2 + 16);
  *v20 = *a2;
  *(v20 + 16) = v6;
  *(v20 + 32) = *(a2 + 32);
  operations_research::glop::SparseVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::SparseColumnEntry>>::SparseVector(88 * v2 + 40, a2 + 40);
  v7 = 88 * v2 + 88;
  v8 = *a1;
  v9 = a1[1];
  v10 = v20 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v20 + *a1 - v9;
    do
    {
      v13 = *v11;
      v14 = *(v11 + 1);
      *(v12 + 32) = v11[4];
      *v12 = v13;
      *(v12 + 16) = v14;
      v15 = v11[5];
      v11[5] = 0;
      *(v12 + 40) = v15;
      v16 = *(v11 + 3);
      v17 = *(v11 + 4);
      *(v12 + 80) = *(v11 + 80);
      *(v12 + 48) = v16;
      *(v12 + 64) = v17;
      v11 += 11;
      v12 += 88;
    }

    while (v11 != v9);
    do
    {
      v18 = v8[5];
      v8[5] = 0;
      if (v18)
      {
        MEMORY[0x23EED9440](v18, 0x1000C8077774924);
      }

      v8 += 11;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_23CBC7388(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<operations_research::glop::DoubletonFreeColumnPreprocessor::RestoreInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<operations_research::glop::DoubletonFreeColumnPreprocessor::RestoreInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      while (1)
      {
        v4 = v2 - 88;
        *(a1 + 16) = v2 - 88;
        v5 = *(v2 - 48);
        *(v2 - 48) = 0;
        if (!v5)
        {
          break;
        }

        MEMORY[0x23EED9440](v5, 0x1000C8077774924);
        v2 = *(a1 + 16);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v2 -= 88;
    }

    while (v4 != v3);
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::deque<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::vector<operations_research::sat::Literal> *,std::allocator<std::vector<operations_research::sat::Literal> *>>::emplace_back<std::vector<operations_research::sat::Literal> *&>(a1, &v11);
}

void sub_23CBC779C(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

__n128 std::__introsort<std::_ClassicAlgPolicy,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::$_0 &,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::DeletionEntry *,false>(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v163 = a2[-1].n128_i32[0];
        v164 = a2[-1].n128_i32[1];
        v165 = a2 - 1;
        v166 = v12->n128_i32[1];
        v167 = v163 < v12->n128_u32[0];
        v168 = v164 == v166;
        v169 = v164 < v166;
        if (!v168)
        {
          v167 = v169;
        }

        if (v167)
        {
          v295 = *v12;
          *v12 = *v165;
          result = v295;
          *v165 = v295;
        }

        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::$_0 &,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::DeletionEntry *,0>(v12, v12 + 1, v12 + 2, a2 - 1, result).n128_u64[0];
      return result;
    }

    if (v13 == 5)
    {
      result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::$_0 &,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::DeletionEntry *,0>(v12, v12 + 1, v12 + 2, v12 + 3, result).n128_u64[0];
      v145 = a2[-1].n128_i32[0];
      v146 = a2[-1].n128_i32[1];
      v147 = a2 - 1;
      v148 = v12[3].n128_i32[1];
      v149 = v145 < v12[3].n128_u32[0];
      v168 = v146 == v148;
      v150 = v146 < v148;
      if (!v168)
      {
        v149 = v150;
      }

      if (v149)
      {
        v291 = v12[3];
        v12[3] = *v147;
        result = v291;
        *v147 = v291;
        v151 = v12[3].n128_i32[1];
        v152 = v12[2].n128_i32[1];
        v153 = v12[3].n128_u32[0] < v12[2].n128_u32[0];
        v168 = v151 == v152;
        v154 = v151 < v152;
        if (!v168)
        {
          v153 = v154;
        }

        if (v153)
        {
          v292 = v12[2];
          v12[2] = v12[3];
          result = v292;
          v12[3] = v292;
          v155 = v12[2].n128_i32[1];
          v156 = v12[1].n128_i32[1];
          v157 = v12[2].n128_u32[0] < v12[1].n128_u32[0];
          v168 = v155 == v156;
          v158 = v155 < v156;
          if (!v168)
          {
            v157 = v158;
          }

          if (v157)
          {
            v293 = v12[1];
            v12[1] = v12[2];
            result = v293;
            v12[2] = v293;
            v159 = v12[1].n128_i32[1];
            v160 = v12->n128_i32[1];
            v161 = v12[1].n128_u32[0] < v12->n128_u32[0];
            v168 = v159 == v160;
            v162 = v159 < v160;
            if (!v168)
            {
              v161 = v162;
            }

            if (v161)
            {
              v294 = *v12;
              *v12 = v12[1];
              result = v294;
              v12[1] = v294;
            }
          }
        }
      }

      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v179 = v12 + 1;
      v181 = v12 == a2 || v179 == a2;
      if (a4)
      {
        if (!v181)
        {
          v182 = 0;
          v183 = v12;
          do
          {
            v185 = v179;
            v186 = v183[1].n128_i32[0];
            v187 = v183[1].n128_i32[1];
            v188 = v183->n128_i32[1];
            v189 = v186 < v183->n128_u32[0];
            v168 = v187 == v188;
            v190 = v187 < v188;
            if (!v168)
            {
              v189 = v190;
            }

            if (v189)
            {
              result.n128_u64[0] = v183[1].n128_u64[1];
              v191 = v182;
              do
              {
                v192 = v12 + v191;
                *(v12 + v191 + 16) = *(v12 + v191);
                if (!v191)
                {
                  v184 = v12;
                  goto LABEL_203;
                }

                v194 = *(v192 - 4);
                v193 = *(v192 - 3);
                v195 = v186 < v194;
                v168 = v187 == v193;
                v196 = v187 < v193;
                if (v168)
                {
                  v196 = v195;
                }

                v191 -= 16;
              }

              while (v196);
              v184 = &v12[1] + v191;
LABEL_203:
              *v184 = v186;
              *(v184 + 4) = v187;
              *(v184 + 8) = result.n128_u64[0];
            }

            v179 = v185 + 1;
            v182 += 16;
            v183 = v185;
          }

          while (&v185[1] != a2);
        }
      }

      else if (!v181)
      {
        do
        {
          v253 = v179;
          v254 = a1[1].n128_i32[0];
          v255 = a1[1].n128_i32[1];
          v256 = a1->n128_i32[1];
          v257 = v254 < a1->n128_u32[0];
          v168 = v255 == v256;
          v258 = v255 < v256;
          if (!v168)
          {
            v257 = v258;
          }

          if (v257)
          {
            result.n128_u64[0] = a1[1].n128_u64[1];
            v259 = v253;
            do
            {
              *v259 = v259[-1];
              v260 = v259[-2].n128_i32[0];
              v261 = v259[-2].n128_i32[1];
              --v259;
              v262 = v254 < v260;
              v168 = v255 == v261;
              v263 = v255 < v261;
              if (!v168)
              {
                v262 = v263;
              }
            }

            while (v262);
            v259->n128_u32[0] = v254;
            v259->n128_u32[1] = v255;
            v259->n128_u64[1] = result.n128_u64[0];
          }

          v179 = v253 + 1;
          a1 = v253;
        }

        while (&v253[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v197 = (v13 - 2) >> 1;
        v198 = v197;
        do
        {
          v199 = v198;
          v200 = 16 * v198;
          if (v197 >= (16 * v198) >> 4)
          {
            v201 = (v200 >> 3) | 1;
            v202 = &v12[v201];
            if ((v200 >> 3) + 2 >= v13)
            {
              v207 = v202->n128_u32[0];
            }

            else
            {
              v203 = v202->n128_i32[1];
              v204 = v202[1].n128_i32[1];
              v168 = v203 == v204;
              v205 = v203 < v204;
              if (v168)
              {
                v205 = v202->n128_u32[0] < v202[1].n128_u32[0];
              }

              v206 = !v205;
              if (v205)
              {
                v207 = v202[1].n128_i32[0];
              }

              else
              {
                v207 = v202->n128_u32[0];
              }

              if (!v206)
              {
                ++v202;
                v201 = (v200 >> 3) + 2;
              }
            }

            v208 = &v12[v200 / 0x10];
            v209 = v202->n128_i32[1];
            v210 = v208->n128_u32[0];
            v211 = v208->n128_i32[1];
            v212 = v207 < v208->n128_u32[0];
            v168 = v209 == v211;
            v213 = v209 < v211;
            if (!v168)
            {
              v212 = v213;
            }

            if (!v212)
            {
              v214 = v208->n128_u64[1];
              do
              {
                v222 = v208;
                v208 = v202;
                *v222 = *v202;
                if (v197 < v201)
                {
                  break;
                }

                v223 = (2 * v201) | 1;
                v202 = &v12[v223];
                v201 = 2 * v201 + 2;
                if (v201 < v13)
                {
                  v216 = v202->n128_u32[0];
                  v215 = v202->n128_i32[1];
                  v217 = v202[1].n128_i32[1];
                  v168 = v215 == v217;
                  v218 = v215 < v217;
                  if (v168)
                  {
                    v218 = v202->n128_u32[0] < v202[1].n128_u32[0];
                  }

                  if (v218)
                  {
                    v216 = v202[1].n128_i32[0];
                    ++v202;
                  }

                  else
                  {
                    v201 = v223;
                  }
                }

                else
                {
                  v216 = v202->n128_u32[0];
                  v201 = v223;
                }

                v219 = v202->n128_i32[1];
                v220 = v216 < v210;
                v168 = v219 == v211;
                v221 = v219 < v211;
                if (v168)
                {
                  v221 = v220;
                }
              }

              while (!v221);
              v208->n128_u32[0] = v210;
              v208->n128_u32[1] = v211;
              v208->n128_u64[1] = v214;
            }
          }

          v198 = v199 - 1;
        }

        while (v199);
        do
        {
          v225 = 0;
          v297 = *v12;
          v226 = (v13 - 2) >> 1;
          v227 = v12;
          do
          {
            while (1)
            {
              v234 = &v227[v225];
              v233 = v234 + 1;
              v235 = (2 * v225) | 1;
              v225 = 2 * v225 + 2;
              if (v225 < v13)
              {
                break;
              }

              v225 = v235;
              *v227 = *v233;
              v227 = v234 + 1;
              if (v235 > v226)
              {
                goto LABEL_255;
              }
            }

            v229 = v234[2].n128_i32[0];
            v228 = v234 + 2;
            v230 = v228[-1].n128_i32[1];
            v231 = v228->n128_i32[1];
            v232 = v228[-1].n128_u32[0] < v229;
            if (v230 != v231)
            {
              v232 = v230 < v231;
            }

            if (v232)
            {
              v233 = v228;
            }

            else
            {
              v225 = v235;
            }

            *v227 = *v233;
            v227 = v233;
          }

          while (v225 <= v226);
LABEL_255:
          if (v233 == --a2)
          {
            result = v297;
            *v233 = v297;
          }

          else
          {
            *v233 = *a2;
            result = v297;
            *a2 = v297;
            v236 = (v233 - v12 + 16) >> 4;
            v224 = v236 < 2;
            v237 = v236 - 2;
            if (!v224)
            {
              v238 = v237 >> 1;
              v239 = &v12[v238];
              v240 = v239->n128_i32[1];
              v241 = v233->n128_u32[0];
              v242 = v233->n128_i32[1];
              v243 = v239->n128_u32[0] < v233->n128_u32[0];
              v168 = v240 == v242;
              v244 = v240 < v242;
              if (!v168)
              {
                v243 = v244;
              }

              if (v243)
              {
                result.n128_u64[0] = v233->n128_u64[1];
                do
                {
                  v245 = v233;
                  v233 = v239;
                  *v245 = *v239;
                  if (!v238)
                  {
                    break;
                  }

                  v238 = (v238 - 1) >> 1;
                  v239 = &v12[v238];
                  v246 = v239->n128_i32[1];
                  v247 = v239->n128_u32[0] < v241;
                  v168 = v246 == v242;
                  v248 = v246 < v242;
                  if (!v168)
                  {
                    v247 = v248;
                  }
                }

                while (v247);
                v233->n128_u32[0] = v241;
                v233->n128_u32[1] = v242;
                v233->n128_u64[1] = result.n128_u64[0];
              }
            }
          }

          v224 = v13-- <= 2;
        }

        while (!v224);
      }

      return result;
    }

    v14 = &v12[v13 >> 1];
    v16 = a2[-1].n128_i32[0];
    v15 = a2[-1].n128_i32[1];
    if (v13 < 0x81)
    {
      v23 = v12->n128_i32[1];
      v24 = v14->n128_i32[1];
      v25 = v12->n128_u32[0] < v14->n128_u32[0];
      v168 = v23 == v24;
      v26 = v23 < v24;
      if (!v168)
      {
        v25 = v26;
      }

      v27 = v16 < v12->n128_u32[0];
      v168 = v15 == v23;
      v28 = v15 < v23;
      if (!v168)
      {
        v27 = v28;
      }

      if (v25)
      {
        if (v27)
        {
          v269 = *v14;
          *v14 = *v9;
          goto LABEL_58;
        }

        v278 = *v14;
        *v14 = *v12;
        result.n128_u64[1] = v278.n128_u64[1];
        *v12 = v278;
        v54 = a2[-1].n128_i32[1];
        v55 = v12->n128_i32[1];
        v56 = a2[-1].n128_u32[0] < v12->n128_u32[0];
        v168 = v54 == v55;
        v57 = v54 < v55;
        if (!v168)
        {
          v56 = v57;
        }

        if (v56)
        {
          v269 = *v12;
          *v12 = *v9;
LABEL_58:
          result.n128_u64[1] = v269.n128_u64[1];
          *v9 = v269;
        }
      }

      else if (v27)
      {
        v272 = *v12;
        *v12 = *v9;
        result.n128_u64[1] = v272.n128_u64[1];
        *v9 = v272;
        v33 = v12->n128_i32[1];
        v34 = v14->n128_i32[1];
        v35 = v12->n128_u32[0] < v14->n128_u32[0];
        v168 = v33 == v34;
        v36 = v33 < v34;
        if (!v168)
        {
          v35 = v36;
        }

        if (v35)
        {
          v273 = *v14;
          *v14 = *v12;
          result.n128_u64[1] = v273.n128_u64[1];
          *v12 = v273;
          --a3;
          v37 = v12->n128_u32[0];
          if (a4)
          {
            goto LABEL_60;
          }

          goto LABEL_101;
        }
      }

      --a3;
      v37 = v12->n128_u32[0];
      if (a4)
      {
        goto LABEL_60;
      }

      goto LABEL_101;
    }

    v17 = v14->n128_i32[1];
    v18 = v12->n128_i32[1];
    v19 = v14->n128_u32[0] < v12->n128_u32[0];
    v168 = v17 == v18;
    v20 = v17 < v18;
    if (!v168)
    {
      v19 = v20;
    }

    v21 = v16 < v14->n128_u32[0];
    v168 = v15 == v17;
    v22 = v15 < v17;
    if (!v168)
    {
      v21 = v22;
    }

    if (v19)
    {
      if (v21)
      {
        v268 = *v12;
        *v12 = *v9;
LABEL_41:
        *v9 = v268;
        goto LABEL_42;
      }

      v274 = *v12;
      *v12 = *v14;
      *v14 = v274;
      v38 = a2[-1].n128_i32[1];
      v39 = v14->n128_i32[1];
      v40 = a2[-1].n128_u32[0] < v14->n128_u32[0];
      v168 = v38 == v39;
      v41 = v38 < v39;
      if (!v168)
      {
        v40 = v41;
      }

      if (v40)
      {
        v268 = *v14;
        *v14 = *v9;
        goto LABEL_41;
      }
    }

    else if (v21)
    {
      v270 = *v14;
      *v14 = *v9;
      *v9 = v270;
      v29 = v14->n128_i32[1];
      v30 = v12->n128_i32[1];
      v31 = v14->n128_u32[0] < v12->n128_u32[0];
      v168 = v29 == v30;
      v32 = v29 < v30;
      if (!v168)
      {
        v31 = v32;
      }

      if (v31)
      {
        v271 = *v12;
        *v12 = *v14;
        *v14 = v271;
      }
    }

LABEL_42:
    v42 = v12 + 1;
    v44 = v14[-1].n128_i32[0];
    v45 = v14[-1].n128_i32[1];
    v43 = v14 - 1;
    v46 = v12[1].n128_i32[1];
    v168 = v45 == v46;
    v47 = v45 < v46;
    if (v168)
    {
      v47 = v44 < v12[1].n128_u32[0];
    }

    v48 = a2[-2].n128_i32[1];
    v49 = a2[-2].n128_u32[0] < v44;
    if (v48 != v45)
    {
      v49 = v48 < v45;
    }

    if (v47)
    {
      if (v49)
      {
        v275 = *v42;
        *v42 = *v10;
LABEL_65:
        *v10 = v275;
        goto LABEL_66;
      }

      v279 = *v42;
      *v42 = *v43;
      *v43 = v279;
      v59 = a2[-2].n128_i32[1];
      v60 = v14[-1].n128_i32[1];
      v61 = a2[-2].n128_u32[0] < v43->n128_u32[0];
      v168 = v59 == v60;
      v62 = v59 < v60;
      if (!v168)
      {
        v61 = v62;
      }

      if (v61)
      {
        v275 = *v43;
        *v43 = *v10;
        goto LABEL_65;
      }
    }

    else if (v49)
    {
      v276 = *v43;
      *v43 = *v10;
      *v10 = v276;
      v50 = v14[-1].n128_i32[1];
      v51 = v12[1].n128_i32[1];
      v52 = v43->n128_u32[0] < v12[1].n128_u32[0];
      v168 = v50 == v51;
      v53 = v50 < v51;
      if (!v168)
      {
        v52 = v53;
      }

      if (v52)
      {
        v277 = *v42;
        *v42 = *v43;
        *v43 = v277;
      }
    }

LABEL_66:
    v63 = v12 + 2;
    v65 = v14[1].n128_i32[0];
    v66 = v14[1].n128_i32[1];
    v64 = v14 + 1;
    v67 = v12[2].n128_i32[1];
    v168 = v66 == v67;
    v68 = v66 < v67;
    if (v168)
    {
      v68 = v65 < v12[2].n128_u32[0];
    }

    v69 = a2[-3].n128_i32[1];
    v70 = a2[-3].n128_u32[0] < v65;
    if (v69 != v66)
    {
      v70 = v69 < v66;
    }

    if (v68)
    {
      if (v70)
      {
        v280 = *v63;
        *v63 = *v11;
LABEL_82:
        *v11 = v280;
        goto LABEL_83;
      }

      v283 = *v63;
      *v63 = *v64;
      *v64 = v283;
      v75 = a2[-3].n128_i32[1];
      v76 = v14[1].n128_i32[1];
      v77 = a2[-3].n128_u32[0] < v64->n128_u32[0];
      v168 = v75 == v76;
      v78 = v75 < v76;
      if (!v168)
      {
        v77 = v78;
      }

      if (v77)
      {
        v280 = *v64;
        *v64 = *v11;
        goto LABEL_82;
      }
    }

    else if (v70)
    {
      v281 = *v64;
      *v64 = *v11;
      *v11 = v281;
      v71 = v14[1].n128_i32[1];
      v72 = v12[2].n128_i32[1];
      v73 = v64->n128_u32[0] < v12[2].n128_u32[0];
      v168 = v71 == v72;
      v74 = v71 < v72;
      if (!v168)
      {
        v73 = v74;
      }

      if (v73)
      {
        v282 = *v63;
        *v63 = *v64;
        *v64 = v282;
      }
    }

LABEL_83:
    v79 = v14->n128_i32[1];
    v80 = v14[-1].n128_i32[1];
    v81 = v14->n128_u32[0] < v43->n128_u32[0];
    v168 = v79 == v80;
    v82 = v79 < v80;
    if (!v168)
    {
      v81 = v82;
    }

    v83 = v14[1].n128_i32[1];
    v84 = v64->n128_u32[0] < v14->n128_u32[0];
    v168 = v83 == v79;
    v85 = v83 < v79;
    if (!v168)
    {
      v84 = v85;
    }

    if (v81)
    {
      if (v84)
      {
        v284 = *v43;
        *v43 = *v64;
LABEL_99:
        *v64 = v284;
        goto LABEL_100;
      }

      v287 = *v43;
      *v43 = *v14;
      *v14 = v287;
      v90 = v14[1].n128_i32[1];
      v91 = v14->n128_i32[1];
      v92 = v64->n128_u32[0] < v14->n128_u32[0];
      v168 = v90 == v91;
      v93 = v90 < v91;
      if (!v168)
      {
        v92 = v93;
      }

      if (v92)
      {
        v284 = *v14;
        *v14 = *v64;
        goto LABEL_99;
      }
    }

    else if (v84)
    {
      v285 = *v14;
      *v14 = *v64;
      *v64 = v285;
      v86 = v14->n128_i32[1];
      v87 = v14[-1].n128_i32[1];
      v88 = v14->n128_u32[0] < v43->n128_u32[0];
      v168 = v86 == v87;
      v89 = v86 < v87;
      if (!v168)
      {
        v88 = v89;
      }

      if (v88)
      {
        v286 = *v43;
        *v43 = *v14;
        *v14 = v286;
      }
    }

LABEL_100:
    v288 = *v12;
    *v12 = *v14;
    result.n128_u64[1] = v288.n128_u64[1];
    *v14 = v288;
    --a3;
    v37 = v12->n128_u32[0];
    if (a4)
    {
LABEL_60:
      v58 = v12->n128_i32[1];
      goto LABEL_104;
    }

LABEL_101:
    v94 = v12[-1].n128_i32[1];
    v58 = v12->n128_i32[1];
    v95 = v12[-1].n128_u32[0] < v37;
    v168 = v94 == v58;
    v96 = v94 < v58;
    if (!v168)
    {
      v95 = v96;
    }

    if (v95)
    {
LABEL_104:
      v97 = 0;
      result.n128_u64[0] = v12->n128_u64[1];
      do
      {
        v98 = v12[v97 + 1].n128_i32[1];
        v168 = v98 == v58;
        v99 = v98 < v58;
        if (v168)
        {
          v99 = v12[v97 + 1].n128_u32[0] < v37;
        }

        ++v97;
      }

      while (v99);
      v100 = &v12[v97];
      v101 = a2;
      if (v97 == 1)
      {
        v101 = a2;
        do
        {
          if (v100 >= v101)
          {
            break;
          }

          v106 = v101[-1].n128_i32[0];
          v107 = v101[-1].n128_i32[1];
          --v101;
          v108 = v106 < v37;
          v168 = v107 == v58;
          v109 = v107 < v58;
          if (!v168)
          {
            v108 = v109;
          }
        }

        while (!v108);
      }

      else
      {
        do
        {
          v102 = v101[-1].n128_i32[0];
          v103 = v101[-1].n128_i32[1];
          --v101;
          v104 = v102 < v37;
          v168 = v103 == v58;
          v105 = v103 < v58;
          if (!v168)
          {
            v104 = v105;
          }
        }

        while (!v104);
      }

      v12 = v100;
      if (v100 < v101)
      {
        v110 = v101;
        do
        {
          v289 = *v12;
          *v12 = *v110;
          *v110 = v289;
          do
          {
            v111 = v12[1].n128_i32[0];
            v112 = v12[1].n128_i32[1];
            ++v12;
            v113 = v111 < v37;
            v168 = v112 == v58;
            v114 = v112 < v58;
            if (!v168)
            {
              v113 = v114;
            }
          }

          while (v113);
          do
          {
            v115 = v110[-1].n128_i32[0];
            v116 = v110[-1].n128_i32[1];
            --v110;
            v117 = v115 < v37;
            v168 = v116 == v58;
            v118 = v116 < v58;
            if (!v168)
            {
              v117 = v118;
            }
          }

          while (!v117);
        }

        while (v12 < v110);
      }

      if (&v12[-1] != a1)
      {
        *a1 = v12[-1];
      }

      v12[-1].n128_u32[0] = v37;
      v12[-1].n128_u32[1] = v58;
      v12[-1].n128_u64[1] = result.n128_u64[0];
      if (v100 < v101)
      {
        goto LABEL_133;
      }

      v119 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::$_0 &,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::DeletionEntry *>(a1, v12 - 1, result);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::$_0 &,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::DeletionEntry *>(v12, a2, v120))
      {
        a2 = v12 - 1;
        if ((v119 & 1) == 0)
        {
          goto LABEL_1;
        }

        return result;
      }

      if ((v119 & 1) == 0)
      {
LABEL_133:
        std::__introsort<std::_ClassicAlgPolicy,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::$_0 &,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::DeletionEntry *,false>(a1, &v12[-1], a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v121 = a2[-1].n128_i32[1];
      v122 = v37 < a2[-1].n128_u32[0];
      v168 = v58 == v121;
      v123 = v58 < v121;
      if (!v168)
      {
        v122 = v123;
      }

      if (v122)
      {
        do
        {
          v124 = v12[1].n128_i32[0];
          v125 = v12[1].n128_i32[1];
          ++v12;
          v126 = v37 < v124;
          v168 = v58 == v125;
          v127 = v58 < v125;
          if (!v168)
          {
            v126 = v127;
          }
        }

        while (!v126);
      }

      else
      {
        v128 = v12 + 1;
        do
        {
          v12 = v128;
          if (v128 >= a2)
          {
            break;
          }

          v129 = v128->n128_i32[1];
          v130 = v37 < v128->n128_u32[0];
          v168 = v58 == v129;
          v131 = v58 < v129;
          if (v168)
          {
            v131 = v130;
          }

          v128 = v12 + 1;
        }

        while (!v131);
      }

      v132 = a2;
      if (v12 < a2)
      {
        v132 = a2;
        do
        {
          v133 = v132[-1].n128_i32[0];
          v134 = v132[-1].n128_i32[1];
          --v132;
          v135 = v37 < v133;
          v168 = v58 == v134;
          v136 = v58 < v134;
          if (!v168)
          {
            v135 = v136;
          }
        }

        while (v135);
      }

      result.n128_u64[0] = a1->n128_u64[1];
      while (v12 < v132)
      {
        v290 = *v12;
        *v12 = *v132;
        *v132 = v290;
        do
        {
          v137 = v12[1].n128_i32[0];
          v138 = v12[1].n128_i32[1];
          ++v12;
          v139 = v37 < v137;
          v168 = v58 == v138;
          v140 = v58 < v138;
          if (!v168)
          {
            v139 = v140;
          }
        }

        while (!v139);
        do
        {
          v141 = v132[-1].n128_i32[0];
          v142 = v132[-1].n128_i32[1];
          --v132;
          v143 = v37 < v141;
          v168 = v58 == v142;
          v144 = v58 < v142;
          if (!v168)
          {
            v143 = v144;
          }
        }

        while (v143);
      }

      if (&v12[-1] != a1)
      {
        *a1 = v12[-1];
      }

      a4 = 0;
      v12[-1].n128_u32[0] = v37;
      v12[-1].n128_u32[1] = v58;
      v12[-1].n128_u64[1] = result.n128_u64[0];
    }
  }

  v170 = v12 + 1;
  v171 = v12[1].n128_i32[0];
  v172 = v12[1].n128_i32[1];
  v173 = v12->n128_i32[1];
  v174 = v171 < v12->n128_u32[0];
  v168 = v172 == v173;
  v175 = v172 < v173;
  if (!v168)
  {
    v174 = v175;
  }

  v177 = a2[-1].n128_i32[1];
  v176 = a2 - 1;
  v178 = a2[-1].n128_u32[0] < v171;
  if (v177 != v172)
  {
    v178 = v177 < v172;
  }

  if (v174)
  {
    if (v178)
    {
      v296 = *v12;
      *v12 = *v176;
    }

    else
    {
      v300 = *v12;
      *v12 = *v170;
      result = v300;
      *v170 = v300;
      v264 = a2[-1].n128_i32[1];
      v265 = v12[1].n128_i32[1];
      v266 = a2[-1].n128_u32[0] < v12[1].n128_u32[0];
      v168 = v264 == v265;
      v267 = v264 < v265;
      if (!v168)
      {
        v266 = v267;
      }

      if (!v266)
      {
        return result;
      }

      v296 = *v170;
      *v170 = *v176;
    }

    result = v296;
    *v176 = v296;
    return result;
  }

  if (v178)
  {
    v298 = *v170;
    *v170 = *v176;
    result = v298;
    *v176 = v298;
    v249 = v12[1].n128_i32[1];
    v250 = v12->n128_i32[1];
    v251 = v12[1].n128_u32[0] < v12->n128_u32[0];
    v168 = v249 == v250;
    v252 = v249 < v250;
    if (!v168)
    {
      v251 = v252;
    }

    if (v251)
    {
      v299 = *v12;
      *v12 = *v170;
      result = v299;
      *v170 = v299;
    }
  }

  return result;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::$_0 &,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::DeletionEntry *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 result)
{
  v5 = a2->n128_i32[1];
  v6 = a1->n128_i32[1];
  v7 = a2->n128_u32[0] < a1->n128_u32[0];
  v8 = v5 == v6;
  v9 = v5 < v6;
  if (!v8)
  {
    v7 = v9;
  }

  v10 = a3->n128_i32[1];
  v11 = a3->n128_u32[0] < a2->n128_u32[0];
  v8 = v10 == v5;
  v12 = v10 < v5;
  if (!v8)
  {
    v11 = v12;
  }

  if (v7)
  {
    if (v11)
    {
      result = *a1;
      *a1 = *a3;
LABEL_17:
      *a3 = result;
      goto LABEL_18;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    v17 = a3->n128_i32[1];
    v18 = a2->n128_i32[1];
    v19 = a3->n128_u32[0] < a2->n128_u32[0];
    v8 = v17 == v18;
    v20 = v17 < v18;
    if (!v8)
    {
      v19 = v20;
    }

    if (v19)
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_17;
    }
  }

  else if (v11)
  {
    result = *a2;
    *a2 = *a3;
    *a3 = result;
    v13 = a2->n128_i32[1];
    v14 = a1->n128_i32[1];
    v15 = a2->n128_u32[0] < a1->n128_u32[0];
    v8 = v13 == v14;
    v16 = v13 < v14;
    if (!v8)
    {
      v15 = v16;
    }

    if (v15)
    {
      result = *a1;
      *a1 = *a2;
      *a2 = result;
    }
  }

LABEL_18:
  v21 = a4->n128_i32[1];
  v22 = a3->n128_i32[1];
  v23 = a4->n128_u32[0] < a3->n128_u32[0];
  v8 = v21 == v22;
  v24 = v21 < v22;
  if (!v8)
  {
    v23 = v24;
  }

  if (v23)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    v25 = a3->n128_i32[1];
    v26 = a2->n128_i32[1];
    v27 = a3->n128_u32[0] < a2->n128_u32[0];
    v8 = v25 == v26;
    v28 = v25 < v26;
    if (!v8)
    {
      v27 = v28;
    }

    if (v27)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      v29 = a2->n128_i32[1];
      v30 = a1->n128_i32[1];
      v31 = a2->n128_u32[0] < a1->n128_u32[0];
      v8 = v29 == v30;
      v32 = v29 < v30;
      if (!v8)
      {
        v31 = v32;
      }

      if (v31)
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::$_0 &,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::DeletionEntry *>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v36 = a1 + 1;
        v37 = a1[1].n128_i32[0];
        v38 = a1[1].n128_i32[1];
        v39 = a1->n128_i32[1];
        v40 = v37 < a1->n128_u32[0];
        v9 = v38 == v39;
        v41 = v38 < v39;
        if (!v9)
        {
          v40 = v41;
        }

        v43 = a2[-1].n128_i32[1];
        v42 = a2 - 1;
        v44 = a2[-1].n128_u32[0] < v37;
        if (v43 != v38)
        {
          v44 = v43 < v38;
        }

        if (!v40)
        {
          if (v44)
          {
            v58 = *v36;
            *v36 = *v42;
            *v42 = v58;
            v59 = a1[1].n128_i32[1];
            v60 = a1->n128_i32[1];
            v61 = a1[1].n128_u32[0] < a1->n128_u32[0];
            v9 = v59 == v60;
            v62 = v59 < v60;
            if (!v9)
            {
              v61 = v62;
            }

            if (v61)
            {
              v63 = *a1;
              *a1 = *v36;
              *v36 = v63;
            }
          }

          return 1;
        }

        if (v44)
        {
          v45 = *a1;
          *a1 = *v42;
        }

        else
        {
          v69 = *a1;
          *a1 = *v36;
          *v36 = v69;
          v70 = a2[-1].n128_i32[1];
          v71 = a1[1].n128_i32[1];
          v72 = a2[-1].n128_u32[0] < a1[1].n128_u32[0];
          v9 = v70 == v71;
          v73 = v70 < v71;
          if (!v9)
          {
            v72 = v73;
          }

          if (!v72)
          {
            return 1;
          }

          v45 = *v36;
          *v36 = *v42;
        }

        *v42 = v45;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::$_0 &,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::DeletionEntry *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        break;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::$_0 &,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::DeletionEntry *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        v16 = a2[-1].n128_i32[1];
        v15 = a2 - 1;
        v17 = a1[3].n128_i32[1];
        v18 = a2[-1].n128_u32[0] < a1[3].n128_u32[0];
        v9 = v16 == v17;
        v19 = v16 < v17;
        if (!v9)
        {
          v18 = v19;
        }

        if (v18)
        {
          v20 = a1[3];
          a1[3] = *v15;
          *v15 = v20;
          v21 = a1[3].n128_i32[1];
          v22 = a1[2].n128_i32[1];
          v23 = a1[3].n128_u32[0] < a1[2].n128_u32[0];
          v9 = v21 == v22;
          v24 = v21 < v22;
          if (!v9)
          {
            v23 = v24;
          }

          if (v23)
          {
            v25 = a1[2];
            a1[2] = a1[3];
            a1[3] = v25;
            v26 = a1[2].n128_i32[1];
            v27 = a1[1].n128_i32[1];
            v28 = a1[2].n128_u32[0] < a1[1].n128_u32[0];
            v9 = v26 == v27;
            v29 = v26 < v27;
            if (!v9)
            {
              v28 = v29;
            }

            if (v28)
            {
              v30 = a1[1];
              a1[1] = a1[2];
              a1[2] = v30;
              v31 = a1[1].n128_i32[1];
              v32 = a1->n128_i32[1];
              v33 = a1[1].n128_u32[0] < a1->n128_u32[0];
              v9 = v31 == v32;
              v34 = v31 < v32;
              if (!v9)
              {
                v33 = v34;
              }

              if (v33)
              {
                v35 = *a1;
                *a1 = a1[1];
                a1[1] = v35;
                return 1;
              }
            }
          }
        }

        return 1;
      default:
        goto LABEL_31;
    }

    return 1;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_i32[0];
    v6 = a2[-1].n128_i32[1];
    v4 = a2 - 1;
    v7 = a1->n128_i32[1];
    v8 = v5 < a1->n128_u32[0];
    v9 = v6 == v7;
    v10 = v6 < v7;
    if (!v9)
    {
      v8 = v10;
    }

    if (v8)
    {
      v11 = *a1;
      *a1 = *v4;
      *v4 = v11;
      return 1;
    }

    return 1;
  }

LABEL_31:
  v46 = a1 + 2;
  v47 = a1[2].n128_i32[0];
  v48 = a1 + 1;
  v49 = a1[1].n128_i32[0];
  v50 = a1[1].n128_i32[1];
  v52 = a1->n128_u32[0];
  v51 = a1->n128_i32[1];
  v53 = __SPAIR64__(v50, v49) < a1->n128_u64[0];
  v54 = a1[2].n128_i32[1];
  v55 = v47 < v49;
  v9 = v54 == v50;
  v56 = v54 < v50;
  if (!v9)
  {
    v55 = v56;
  }

  if (!v53)
  {
    if (v55)
    {
      v64 = *v48;
      *v48 = *v46;
      *v46 = v64;
      v65 = a1[1].n128_i32[1];
      v66 = a1[1].n128_u32[0] < v52;
      v9 = v65 == v51;
      v67 = v65 < v51;
      if (!v9)
      {
        v66 = v67;
      }

      if (v66)
      {
        v68 = *a1;
        *a1 = *v48;
        *v48 = v68;
      }
    }

    goto LABEL_58;
  }

  if (v55)
  {
    v57 = *a1;
    *a1 = *v46;
  }

  else
  {
    v74 = *a1;
    *a1 = *v48;
    *v48 = v74;
    v75 = a1[1].n128_i32[1];
    v76 = v47 < a1[1].n128_u32[0];
    if (v54 != v75)
    {
      v76 = v54 < v75;
    }

    if (!v76)
    {
      goto LABEL_58;
    }

    v57 = *v48;
    *v48 = *v46;
  }

  *v46 = v57;
LABEL_58:
  v77 = a1 + 3;
  if (&a1[3] == a2)
  {
LABEL_72:
    v94 = 1;
  }

  else
  {
    v78 = 0;
    v79 = 0;
    while (1)
    {
      v80 = v77->n128_u32[0];
      v81 = v77->n128_i32[1];
      v83 = v46->n128_u32[0];
      v82 = v46->n128_i32[1];
      v84 = v77->n128_u32[0] < v83;
      v9 = v81 == v82;
      v85 = v81 < v82;
      if (v9)
      {
        v85 = v84;
      }

      if (v85)
      {
        break;
      }

LABEL_61:
      v46 = v77;
      v78 += 16;
      if (++v77 == a2)
      {
        goto LABEL_72;
      }
    }

    v86 = v77->n128_u64[1];
    v87 = v78;
    do
    {
      v88 = a1 + v87;
      *(a1 + v87 + 48) = *(a1 + v87 + 32);
      if (v87 == -32)
      {
        a1->n128_u32[0] = v80;
        a1->n128_u32[1] = v81;
        a1->n128_u64[1] = v86;
        if (++v79 != 8)
        {
          goto LABEL_61;
        }

        goto LABEL_71;
      }

      v90 = *(v88 + 4);
      v89 = *(v88 + 5);
      v91 = v80 < v90;
      v9 = v81 == v89;
      v92 = v81 < v89;
      if (v9)
      {
        v92 = v91;
      }

      v87 -= 16;
    }

    while (v92);
    v93 = a1 + v87;
    *(v93 + 12) = v80;
    *(v93 + 13) = v81;
    *(v93 + 7) = v86;
    if (++v79 != 8)
    {
      goto LABEL_61;
    }

LABEL_71:
    v94 = 0;
    LODWORD(v77) = &v77[1] == a2;
  }

  return (v94 | v77) & 1;
}

void std::vector<operations_research::glop::SumWithOneMissing<false>>::__append(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3) >= a2)
  {
    if (24 * a2)
    {
      v11 = v3 + 24 * a2;
      do
      {
        *v3 = 0;
        *(v3 + 8) = 0;
        *(v3 + 16) = 0;
        v3 += 24;
      }

      while (v3 != v11);
      v3 = v11;
    }

    *(a1 + 8) = v3;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = 24 * v5;
    if (24 * a2)
    {
      v9 = v12 + 24 * a2;
      v10 = 24 * v5;
      do
      {
        *v10 = 0;
        *(v10 + 8) = 0;
        *(v10 + 16) = 0;
        v10 += 24;
      }

      while (v10 != v9);
    }

    else
    {
      v9 = 24 * v5;
    }

    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

void ***std::__exception_guard_exceptions<std::vector<std::set<int>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        do
        {
          v6 = v4 - 24;
          std::__tree<int>::destroy((v4 - 24), *(v4 - 2));
          v4 = v6;
        }

        while (v6 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

operations_research::glop::PrimalEdgeNorms *operations_research::glop::PrimalEdgeNorms::PrimalEdgeNorms(operations_research::glop::PrimalEdgeNorms *this, const operations_research::glop::CompactSparseMatrix *a2, const operations_research::glop::VariablesInfo *a3, const operations_research::glop::BasisFactorization *a4)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  operations_research::glop::GlopParameters::GlopParameters(this + 24, 0);
  *(this + 88) = 0;
  operations_research::glop::PrimalEdgeNorms::Stats::Stats((this + 360));
  *(this + 761) = 257;
  *(this + 48) = 0u;
  *(this + 49) = 0u;
  *(this + 50) = 0u;
  *(this + 51) = 0u;
  *(this + 104) = 0;
  *(this + 53) = 0u;
  *(this + 54) = 0u;
  *(this + 55) = 0u;
  *(this + 56) = 0u;
  *(this + 57) = 0u;
  *(this + 58) = 0u;
  *(this + 59) = 0u;
  return this;
}

uint64_t operations_research::glop::PrimalEdgeNorms::Clear(uint64_t this)
{
  *(this + 800) = *(this + 792);
  *(this + 761) = 257;
  v1 = *(this + 936);
  v2 = *(this + 944);
  if (v1 != v2)
  {
    v3 = *(this + 936);
    if (v2 - 1 == v1)
    {
      goto LABEL_9;
    }

    v4 = (((v2 - 1) - v1) >> 3) + 1;
    v3 = &v1[v4 & 0x3FFFFFFFFFFFFFFELL];
    v5 = v1 + 1;
    v6 = v4 & 0x3FFFFFFFFFFFFFFELL;
    do
    {
      v7 = *v5;
      **(v5 - 1) = 1;
      *v7 = 1;
      v5 += 2;
      v6 -= 2;
    }

    while (v6);
    if (v4 != (v4 & 0x3FFFFFFFFFFFFFFELL))
    {
LABEL_9:
      do
      {
        v8 = *v3++;
        *v8 = 1;
      }

      while (v3 != v2);
    }
  }

  return this;
}

uint64_t operations_research::glop::PrimalEdgeNorms::NeedsBasisRefactorization(operations_research::glop::PrimalEdgeNorms *this)
{
  if (*(this + 88) == 1)
  {
    return *(this + 761) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t operations_research::glop::PrimalEdgeNorms::GetSquaredNorms(operations_research::glop::PrimalEdgeNorms *this)
{
  v1 = *(this + 88);
  if (v1 == 2)
  {
    if (*(this + 762) == 1)
    {
      if (*(this + 251) == 1)
      {
        v7 = *(this + 99);
        v8 = *(this + 100);
        if (v7 == v8)
        {
          v9 = this;
          operations_research::glop::PrimalEdgeNorms::ComputeMatrixColumnNorms(this);
          this = v9;
          v7 = *(v9 + 99);
          v8 = *(v9 + 100);
        }

        v10 = this;
        std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(this + 102, v7, v8, (v8 - v7) >> 3);
      }

      else
      {
        v12 = *(*this + 4);
        v14 = 0x3FF0000000000000;
        v10 = this;
        std::vector<double>::assign(this + 102, v12, &v14);
      }

      this = v10;
      *(v10 + 210) = 0;
      *(v10 + 762) = 0;
    }

    v2 = *(this + 102);
    v13 = *(this + 103);
  }

  else if (v1 == 1)
  {
    if (*(this + 761) == 1)
    {
      v5 = this;
      operations_research::glop::PrimalEdgeNorms::ComputeEdgeSquaredNorms(this);
      this = v5;
    }

    v2 = *(this + 96);
    v6 = *(this + 97);
  }

  else
  {
    if (v1)
    {
      return *(this + 88);
    }

    v2 = *(this + 99);
    if (v2 == *(this + 100))
    {
      v3 = this;
      operations_research::glop::PrimalEdgeNorms::ComputeMatrixColumnNorms(this);
      v2 = *(v3 + 99);
      v4 = *(v3 + 100);
    }
  }

  return v2;
}

void operations_research::glop::PrimalEdgeNorms::ComputeEdgeSquaredNorms(operations_research::glop::PrimalEdgeNorms *this)
{
  v2 = *(*this + 4);
  v20[0] = 0;
  v3 = *(this + 96);
  v4 = (*(this + 97) - v3) >> 3;
  if (v2 <= v4)
  {
    if (v2 < v4)
    {
      *(this + 97) = v3 + 8 * v2;
    }
  }

  else
  {
    std::vector<double>::__append(this + 768, v2 - v4, v20);
  }

  IsRelevantBitRow = operations_research::glop::VariablesInfo::GetIsRelevantBitRow(*(this + 1));
  v6 = *(IsRelevantBitRow + 8);
  v7 = (*(IsRelevantBitRow + 16) - v6) >> 3;
  if (*(IsRelevantBitRow + 16) == v6)
  {
    v10 = 0;
    v11 = 0;
    if (!v7)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v8 = *v6;
    if (*v6)
    {
      v9 = 0;
    }

    else
    {
      if (v7 == 1)
      {
        goto LABEL_21;
      }

      v19 = 1;
      v9 = 64;
      while (1)
      {
        v8 = v6[v19];
        if (v8)
        {
          break;
        }

        ++v19;
        v9 += 64;
        if (v7 == v19)
        {
          goto LABEL_21;
        }
      }
    }

    v10 = v9 | __clz(__rbit64(v8));
    v11 = (v8 - 1) & v8;
    if (!v7)
    {
      goto LABEL_21;
    }
  }

  v12 = v7 - 1;
  while (1)
  {
    v13 = *(this + 2);
    v14 = *(*this + 56);
    v15 = *(v14 + 8 * v10);
    v16 = *(*this + 32) + 4 * v15;
    v17 = *(*this + 8) + 8 * v15;
    v20[0] = *(v14 + (((v10 << 32) + 0x100000000) >> 29)) - v15;
    v20[1] = v16;
    v20[2] = v17;
    *(*(this + 96) + 8 * v10) = operations_research::glop::BasisFactorization::RightSolveSquaredNorm(v13, v20) + 1.0;
    v18 = v10 >> 6;
    if (!v11)
    {
      break;
    }

LABEL_12:
    v10 = __clz(__rbit64(v11)) | (v18 << 6);
    v11 &= v11 - 1;
  }

  while (v12 != v18)
  {
    v11 = v6[++v18];
    if (v11)
    {
      goto LABEL_12;
    }
  }

LABEL_21:
  *(this + 761) = 0;
}

void operations_research::glop::PrimalEdgeNorms::ComputeMatrixColumnNorms(operations_research::glop::PrimalEdgeNorms *this)
{
  v2 = *this;
  v3 = *(*this + 4);
  v11[0] = 0;
  v4 = *(this + 99);
  v5 = (*(this + 100) - v4) >> 3;
  if (v3 <= v5)
  {
    if (v3 < v5)
    {
      *(this + 100) = v4 + 8 * v3;
    }
  }

  else
  {
    std::vector<double>::__append(this + 792, v3 - v5, v11);
    v2 = *this;
  }

  if (*(v2 + 4) >= 1)
  {
    v6 = 0;
    v7 = *(v2 + 56);
    do
    {
      v8 = (v7 + 8 * v6);
      v9 = *(v2 + 32) + 4 * *v8;
      v10 = *(v2 + 8) + 8 * *v8;
      v11[0] = v8[1] - *v8;
      v11[1] = v9;
      v11[2] = v10;
      *(*(this + 99) + 8 * v6) = operations_research::glop::SquaredNorm(v11);
      v2 = *this;
      v7 = *(*this + 56);
      *(this + 116) += *(v7 + 8 * v6 + 8) - *(v7 + 8 * v6);
      ++v6;
    }

    while (v6 < *(v2 + 4));
  }
}

BOOL operations_research::glop::PrimalEdgeNorms::TestEnteringEdgeNormPrecision(uint64_t a1, const operations_research::glop::ScatteredColumn *a2, operations_research::glop *this)
{
  if (*(a1 + 761))
  {
    return 1;
  }

  v4 = 8 * a2;
  v5 = *(*(a1 + 768) + v4);
  v6 = operations_research::glop::SquaredNorm(this, a2) + 1.0;
  *(*(a1 + 768) + v4) = v6;
  v7 = sqrt(v6);
  v8 = sqrt(v5);
  operations_research::RatioDistribution::Add(a1 + 600, (v7 - v8) / v7);
  if (fabs((v7 - v8) / v7) > *(a1 + 88))
  {
    if (dword_2810C02B0 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&_MergedGlobals_15, dword_2810C02B0))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v22, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/primal_edge_norms.cc", 104);
      v18 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v22, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v18, "Recomputing edge norms: ", 0x18uLL);
      v23 = v7;
      v19 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v18, &v23);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v19, " vs ", 4uLL);
      v23 = v8;
      absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v19, &v23);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v22);
    }

    *(a1 + 761) = 1;
    v9 = *(a1 + 936);
    v10 = *(a1 + 944);
    if (v9 != v10)
    {
      v11 = *(a1 + 936);
      if (v10 - 1 == v9)
      {
        goto LABEL_21;
      }

      v12 = (((v10 - 1) - v9) >> 3) + 1;
      v11 = &v9[v12 & 0x3FFFFFFFFFFFFFFELL];
      v13 = v9 + 1;
      v14 = v12 & 0x3FFFFFFFFFFFFFFELL;
      do
      {
        v15 = *v13;
        **(v13 - 1) = 1;
        *v15 = 1;
        v13 += 2;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x3FFFFFFFFFFFFFFELL))
      {
LABEL_21:
        do
        {
          v16 = *v11++;
          *v16 = 1;
        }

        while (v11 != v10);
      }
    }
  }

  if (v5 >= v6 * 0.25)
  {
    return 1;
  }

  if (dword_2810C02C8 < 1)
  {
    return 0;
  }

  result = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C02C0, dword_2810C02C8);
  if (result)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v22, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/primal_edge_norms.cc", 111);
    v20 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v22, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v20, "Imprecise norm, reprice. old=", 0x1DuLL);
    v23 = v5;
    v21 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v20, &v23);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v21, " new=", 5uLL);
    v23 = v6;
    absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v21, &v23);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v22);
    return 0;
  }

  return result;
}

void sub_23CBC9660(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CBC9674(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::glop::PrimalEdgeNorms::UpdateBeforeBasisPivot(uint64_t result, int a2, int a3, signed int a4, char **a5, operations_research::glop::UpdateRow *a6)
{
  v10 = result;
  if ((*(result + 761) & 1) == 0)
  {
    operations_research::glop::UpdateRow::ComputeUpdateRow(a6, a4);
    operations_research::glop::PrimalEdgeNorms::ComputeDirectionLeftInverse(v10, v12, a5);
    result = operations_research::glop::PrimalEdgeNorms::UpdateEdgeSquaredNorms(v10, a2, a3, a4, a5, a6);
  }

  if ((*(v10 + 762) & 1) == 0)
  {
    v13 = *(v10 + 840) + 1;
    *(v10 + 840) = v13;
    if (v13 <= *(v10 + 212))
    {
      operations_research::glop::UpdateRow::ComputeUpdateRow(a6, a4);
      v14 = fmax(sqrt(operations_research::glop::PreciseSquaredNorm(a5)) / fabs(*&(*a5)[8 * a4]), 1.0);
      result = operations_research::glop::UpdateRow::GetNonZeroPositions(a6);
      if ((v15 & 0x3FFFFFFFFFFFFFFFLL) != 0)
      {
        v16 = *(a6 + 26);
        v17 = *(v10 + 816);
        v18 = 4 * v15;
        do
        {
          v19 = *result;
          result += 4;
          v20 = 8 * v19;
          v21 = fabs(*(v16 + v20));
          v22 = v14 * v21 * (v14 * v21);
          if (*(v17 + v20) >= v22)
          {
            v22 = *(v17 + v20);
          }

          *(v17 + v20) = v22;
          v18 -= 4;
        }

        while (v18);
      }

      else
      {
        v17 = *(v10 + 816);
      }

      *(v17 + 8 * a3) = v14 * v14;
    }

    else
    {
      *(v10 + 762) = 1;
    }
  }

  return result;
}

void operations_research::glop::PrimalEdgeNorms::ComputeDirectionLeftInverse(uint64_t a1, uint64_t a2, char **a3)
{
  v5 = a3[1];
  v6 = v5 - *a3;
  v7 = (v6 >> 3) * 0.05;
  v8 = (a1 + 848);
  v9 = (a1 + 880);
  v10 = *(a1 + 880);
  v11 = *(a1 + 888);
  if (v10 != v11)
  {
    v12 = (v11 - v10) >> 2;
    if (v7 + v7 > (v12 + ((a3[5] - a3[4]) >> 2)))
    {
      if (v7 <= v12)
      {
        v32 = 0;
        v18 = v6 << 29;
        v19 = (v6 >> 3);
        v20 = *(a1 + 848);
        v21 = (*(a1 + 856) - v20) >> 3;
        if (v19 <= v21)
        {
          if (v19 < v21)
          {
            *(a1 + 856) = &v20[8 * v19];
          }
        }

        else
        {
          std::vector<double>::__append(v8, v19 - v21, &v32);
          v20 = *v8;
        }

        bzero(v20, (v18 >> 29) & 0xFFFFFFFFFFFFFFF8);
        goto LABEL_20;
      }

      v13 = *v8;
      if (v11 - 4 == v10)
      {
        v14 = *(a1 + 880);
      }

      else
      {
        v22 = ((v11 - 4 - v10) >> 2) + 1;
        v14 = &v10[4 * (v22 & 0x7FFFFFFFFFFFFFFELL)];
        v23 = v22 & 0x7FFFFFFFFFFFFFFELL;
        do
        {
          v24 = *v10;
          v10 += 8;
          v25 = vshrq_n_s64(vshll_n_s32(v24, 0x20uLL), 0x1DuLL);
          *&v13[v25.i64[0]] = 0;
          *&v13[v25.i64[1]] = 0;
          v23 -= 2;
        }

        while (v23);
        if (v22 == (v22 & 0x7FFFFFFFFFFFFFFELL))
        {
LABEL_15:
          v32 = 0;
          v27 = (v6 >> 3);
          v28 = (*(a1 + 856) - v13) >> 3;
          if (v27 <= v28)
          {
            if (v27 < v28)
            {
              *(a1 + 856) = &v13[8 * v27];
            }
          }

          else
          {
            std::vector<double>::__append(a1 + 848, v27 - v28, &v32);
          }

LABEL_20:
          *(a1 + 888) = *(a1 + 880);
          v15 = a3[4];
          v16 = a3[5];
          v17 = (v16 - v15) >> 2;
          if (v17 >= 1)
          {
            v29 = 0;
            v30 = *a3;
            v31 = *v8;
            do
            {
              *&v31[8 * *&v15[4 * v29]] = *&v30[8 * *&v15[4 * v29]];
              ++v29;
            }

            while (v17 != v29);
          }

          goto LABEL_23;
        }
      }

      do
      {
        v26 = *v14;
        v14 += 4;
        *&v13[8 * v26] = 0;
      }

      while (v14 != v11);
      goto LABEL_15;
    }
  }

  if (v8 != a3)
  {
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>((a1 + 848), *a3, v5, v6 >> 3);
    v10 = *v9;
  }

  *(a1 + 888) = v10;
  v15 = a3[4];
  v16 = a3[5];
  v17 = (v16 - v15) >> 2;
LABEL_23:
  if (v9 != a3 + 4 && v7 > v17)
  {
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(v9, v15, v16, v17);
  }

  operations_research::glop::BasisFactorization::LeftSolve(*(a1 + 16), v8);
}

uint64_t operations_research::glop::PrimalEdgeNorms::UpdateEdgeSquaredNorms(void *a1, int a2, int a3, int a4, void *a5, operations_research::glop::UpdateRow *this)
{
  v9 = *(*a5 + 8 * a4);
  v10 = a1[96];
  v11 = fmax(*(v10 + 8 * a2) / (v9 * v9), 1.0);
  v12 = *(*a1 + 8);
  v13 = *(*a1 + 32);
  v14 = *(*a1 + 56);
  v15 = a1[106];
  NonZeroPositions = operations_research::glop::UpdateRow::GetNonZeroPositions(this);
  if ((v17 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v18 = 0;
    v19 = &NonZeroPositions[v17];
    v20 = *(this + 26);
    v21 = a1[116];
    do
    {
      v22 = *NonZeroPositions;
      v23 = 8 * v22;
      v24 = *(v14 + v23);
      v25 = *(v14 + (((v22 << 32) + 0x100000000) >> 29));
      v26 = 0.0;
      v27 = v24;
      if (v25 - 3 > v24)
      {
        v28 = 0.0;
        v29 = 0.0;
        v30 = 0.0;
        do
        {
          v26 = v26 + *(v12 + 8 * v27) * *(v15 + 8 * *(v13 + 4 * v27));
          v28 = v28 + *(v12 + 8 * (v27 + 1)) * *(v15 + 8 * *(v13 + 4 * (v27 + 1)));
          v29 = v29 + *(v12 + 8 * (v27 + 2)) * *(v15 + 8 * *(v13 + 4 * (v27 + 2)));
          v30 = v30 + *(v12 + 8 * (v27 + 3)) * *(v15 + 8 * *(v13 + 4 * (v27 + 3)));
          v27 += 4;
        }

        while (v27 < v25 - 3);
        v26 = v26 + v28 + v29 + v30;
      }

      if (v27 < v25)
      {
        v31 = v27;
        v26 = v26 + *(v12 + 8 * v27) * *(v15 + 8 * *(v13 + 4 * v27));
        v32 = v27 + 1;
        if (v32 < v25)
        {
          v26 = v26 + *(v12 + 8 * v32) * *(v15 + 8 * *(v13 + 4 * v32));
          if (v31 + 2 < v25)
          {
            v26 = v26 + *(v12 + 8 * (v31 + 2)) * *(v15 + 8 * *(v13 + 4 * (v31 + 2)));
          }
        }
      }

      v33 = *(v20 + v23);
      v34 = *(v10 + v23) + v33 * (-2.0 / v9 * v26 + v33 * v11);
      *(v10 + v23) = v34;
      v35 = v33 / -v9 * (v33 / -v9) + 1.0;
      if (v34 < v35)
      {
        *(v10 + v23) = v35;
        ++v18;
      }

      v21 += v25 - v24;
      ++NonZeroPositions;
    }

    while (NonZeroPositions != v19);
    a1[116] = v21;
    v36 = v18;
  }

  else
  {
    v36 = 0;
  }

  *(v10 + 8 * a3) = v11;

  return operations_research::IntegerDistribution::Add((a1 + 85), v36);
}

operations_research::glop::PrimalEdgeNorms::Stats *operations_research::glop::PrimalEdgeNorms::Stats::Stats(operations_research::glop::PrimalEdgeNorms::Stats *this)
{
  *(this + 23) = 15;
  strcpy(this, "PrimalEdgeNorms");
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 9) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 7) = this + 64;
  operations_research::DistributionStat::DistributionStat(this + 80, "direction_left_inverse_density", 0x1EuLL, this);
  *(this + 10) = &unk_284F44D30;
  operations_research::DistributionStat::DistributionStat(this + 160, "direction_left_inverse_accuracy", 0x1FuLL, this);
  *(this + 20) = &unk_284F44D90;
  operations_research::DistributionStat::DistributionStat(this + 240, "edges_norm_accuracy", 0x13uLL, this);
  *(this + 30) = &unk_284F44D90;
  operations_research::DistributionStat::DistributionStat(this + 320, "lower_bounded_norms", 0x13uLL, this);
  *(this + 40) = &unk_284F44DF0;
  return this;
}

void sub_23CBC9DA8(_Unwind_Exception *a1)
{
  *(v1 + 240) = &unk_284F3A5F8;
  if (*(v1 + 271) < 0)
  {
    operator delete(*(v1 + 248));
    *(v1 + 160) = &unk_284F3A5F8;
    if ((*(v1 + 191) & 0x80000000) == 0)
    {
LABEL_3:
      *(v1 + 80) = &unk_284F3A5F8;
      if ((*(v1 + 111) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    *(v1 + 160) = &unk_284F3A5F8;
    if ((*(v1 + 191) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*(v1 + 168));
  *(v1 + 80) = &unk_284F3A5F8;
  if ((*(v1 + 111) & 0x80000000) == 0)
  {
LABEL_4:
    operations_research::StatsGroup::~StatsGroup(v1);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(*(v1 + 88));
  operations_research::StatsGroup::~StatsGroup(v1);
  _Unwind_Resume(a1);
}

uint64_t operations_research::glop::ReducedCosts::ReducedCosts(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  v8 = *a7;
  *(a1 + 56) = *(a7 + 2);
  *(a1 + 40) = v8;
  operations_research::glop::GlopParameters::GlopParameters(a1 + 64, 0);
  operations_research::glop::ReducedCosts::Stats::Stats((a1 + 392));
  *(a1 + 712) = 16843008;
  *(a1 + 716) = 0;
  *(a1 + 718) = 0;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0u;
  return a1;
}