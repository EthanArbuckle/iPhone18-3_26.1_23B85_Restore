void operations_research::sat::LinearIncrementalEvaluator::AddTerm(operations_research::sat::LinearIncrementalEvaluator *this, int a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v10 = *(this + 8);
    v9 = *(this + 9);
    v11 = (this + 64);
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3);
    if (v12 <= a3)
    {
      v14 = a3 + 1;
      if (v14 <= v12)
      {
        if (v14 < v12)
        {
          v15 = v10 + 24 * v14;
          if (v9 != v15)
          {
            v16 = *(this + 9);
            do
            {
              v18 = *(v16 - 24);
              v16 -= 24;
              v17 = v18;
              if (v18)
              {
                *(v9 - 16) = v17;
                operator delete(v17);
              }

              v9 = v16;
            }

            while (v16 != v15);
          }

          *(this + 9) = v15;
        }
      }

      else
      {
        std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append(this + 64, v14 - v12);
      }
    }

    v19 = (*v11 + 24 * a3);
    v20 = v19[1];
    if (*v19 == v20 || *(v20 - 16) != a2)
    {
      LODWORD(v22) = a2;
      *(&v22 + 1) = a4;
      std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](v19, &v22);
    }

    else
    {
      v21 = *(v20 - 8) + a4;
      *(v20 - 8) = v21;
      if (!v21)
      {
        v19[1] = v20 - 16;
      }
    }

    *(*(this + 4) + 8 * a2) += a5;
  }
}

void operations_research::sat::LinearIncrementalEvaluator::ComputeInitialActivities(int *a1, uint64_t a2)
{
  std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a1 + 50, *(a1 + 4), *(a1 + 5), (*(a1 + 5) - *(a1 + 4)) >> 3);
  std::vector<BOOL>::resize((a1 + 142), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 15) - *(a1 + 14)) >> 2), 0);
  v4 = *a1;
  __u = 0;
  std::vector<int>::assign((a1 + 112), v4, &__u);
  v5 = *(a1 + 14);
  v6 = *(a1 + 15);
  v7 = v6 - v5;
  if (v6 != v5)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 2);
    while (1)
    {
      v11 = (v5 + 20 * v8);
      v12 = *(a2 + 8 * v8);
      v13 = *v11;
      v14 = v11[1];
      if (v14 >= 1)
      {
        if (v12)
        {
          v13 += v14;
        }

        else
        {
          v15 = 0;
          v16 = *(a1 + 17);
          v17 = *(a1 + 56);
          do
          {
            v18 = *(v16 + 4 * v13);
            ++*(v17 + 4 * v18);
            ++v15;
            ++v13;
          }

          while (v15 < v11[1]);
        }
      }

      v19 = v11[2];
      if (v19 < 1)
      {
        goto LABEL_13;
      }

      if (v12 == 1)
      {
        break;
      }

      v13 += v19;
      if (v12)
      {
LABEL_16:
        v24 = v11[4];
        if (v24 >= 1)
        {
          v25 = v11[3];
          v26 = *(a1 + 17);
          v27 = *(a1 + 20);
          v28 = *(a1 + 50);
          do
          {
            v29 = *(v26 + 4 * v13);
            *(v28 + 8 * v29) += *(v27 + 8 * v25) * v12;
            ++v13;
            ++v25;
            --v24;
          }

          while (v24);
        }
      }

LABEL_3:
      v8 = ++v9;
      if (v10 <= v9)
      {
        goto LABEL_20;
      }
    }

    v20 = 0;
    v21 = *(a1 + 17);
    v22 = *(a1 + 56);
    do
    {
      v23 = *(v21 + 4 * v13);
      ++*(v22 + 4 * v23);
      ++v20;
      ++v13;
    }

    while (v20 < v11[2]);
LABEL_13:
    if (v12)
    {
      goto LABEL_16;
    }

    goto LABEL_3;
  }

LABEL_20:
  if (*a1 >= 1)
  {
    v30 = 0;
    v31 = 0;
    do
    {
      while (1)
      {
        v32 = operations_research::Domain::Distance((*(a1 + 1) + v30), *(*(a1 + 50) + 8 * v31));
        *(*(a1 + 53) + 8 * v31) = v32;
        v33 = *(a1 + 47);
        v34 = v31 >> 6;
        v35 = 1 << v31;
        if (*(*(a1 + 56) + 4 * v31) <= 0 && v32 >= 1)
        {
          break;
        }

        *(v33 + 8 * v34) &= ~v35;
        ++v31;
        v30 += 24;
        if (v31 >= *a1)
        {
          return;
        }
      }

      *(v33 + 8 * v34) |= v35;
      ++v31;
      v30 += 24;
    }

    while (v31 < *a1);
  }
}

void operations_research::sat::LinearIncrementalEvaluator::ClearAffectedVariables(operations_research::sat::LinearIncrementalEvaluator *this)
{
  v2 = (this + 568);
  std::vector<BOOL>::resize(this + 568, 0xCCCCCCCCCCCCCCCDLL * ((*(this + 15) - *(this + 14)) >> 2), 0);
  v3 = *(this + 74);
  v4 = *(this + 75);
  if (v3 != v4)
  {
    v5 = *v2;
    v6 = *(this + 74);
    do
    {
      v7 = *v6++;
      *(v5 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v7);
    }

    while (v6 != v4);
  }

  *(this + 75) = v3;
}

void operations_research::sat::LinearIncrementalEvaluator::UpdateScoreOnWeightUpdate(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v6 = a1[23];
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[24] - v6) >> 2) > a2)
  {
    v9 = (v6 + 20 * a2);
    v10 = *(a1[53] + 8 * a2);
    v11 = *v9;
    if (v10)
    {
      v12 = v9[2] + v9[1];
      a1[77] += v12;
      if (v12 >= 1)
      {
        v13 = -v10;
        do
        {
          while (1)
          {
            v32 = *(a1[26] + 4 * v11);
            v14 = a1[71];
            v15 = v32 >> 6;
            v16 = 1 << v32;
            v17 = *(v14 + 8 * v15);
            if (((1 << v32) & v17) == 0)
            {
              break;
            }

            *(a5 + 8 * v32) = *(a5 + 8 * v32) + v13;
            ++v11;
            if (!--v12)
            {
              goto LABEL_8;
            }
          }

          *(a5 + 8 * v32) = v13;
          *(v14 + 8 * v15) = v17 | v16;
          std::vector<int>::push_back[abi:ne200100]((a1 + 74), &v32);
          ++v11;
          --v12;
        }

        while (v12);
LABEL_8:
        v11 = *v9;
        v10 = *(a1[53] + 8 * v5);
      }
    }

    v18 = v9[1];
    v19 = v9[2];
    v21 = v9[3];
    v20 = v9[4];
    a1[77] += 2 * v20;
    if (v20 >= 1)
    {
      v22 = 0;
      v23 = v11 + v19 + v18;
      do
      {
        while (1)
        {
          v31 = *(a1[26] + 4 * (v23 + v22));
          v24 = operations_research::Domain::Distance((a1[1] + 24 * v5), *(a1[50] + 8 * v5) + *(a3 + 8 * v31) * *(a1[29] + 8 * (v21 + v22)));
          v25 = a1[71];
          v26 = v31 >> 6;
          v27 = 1 << v31;
          v28 = *(v25 + 8 * v26);
          v29 = (v24 - v10);
          if (((1 << v31) & v28) == 0)
          {
            break;
          }

          *(a5 + 8 * v31) = *(a5 + 8 * v31) + v29;
          if (++v22 >= v9[4])
          {
            return;
          }
        }

        *(a5 + 8 * v31) = v29;
        *(v25 + 8 * v26) = v27 | v28;
        std::vector<int>::push_back[abi:ne200100]((a1 + 74), &v31);
        ++v22;
      }

      while (v22 < v9[4]);
    }
  }
}

void operations_research::sat::LinearIncrementalEvaluator::UpdateScoreOnNewlyEnforced(void *a1, int a2, uint64_t a3, double a4, uint64_t a5, uint64_t a6)
{
  v9 = (a1[23] + 20 * a2);
  v10 = *(a1[53] + 8 * a2);
  v11 = a2;
  v12 = v10 * a4;
  v13 = *v9;
  if (v12 > 0.0)
  {
    v14 = v9[2] + v9[1];
    a1[77] += v14;
    if (v14 >= 1)
    {
      do
      {
        v34 = *(a1[26] + 4 * v13);
        v15 = v34;
        *(a6 + 8 * v34) = *(a6 + 8 * v34) - v12;
        v16 = a1[71];
        v17 = v15 >> 6;
        v18 = 1 << v15;
        v19 = *(v16 + 8 * v17);
        if ((v19 & v18) == 0)
        {
          *(v16 + 8 * v17) = v19 | v18;
          std::vector<int>::push_back[abi:ne200100]((a1 + 74), &v34);
        }

        ++v13;
        --v14;
      }

      while (v14);
      v13 = *v9;
      v10 = *(a1[53] + 8 * v11);
    }
  }

  v20 = v9[1];
  v21 = v9[2];
  v23 = v9[3];
  v22 = v9[4];
  a1[77] += 2 * v22;
  if (v22 >= 1)
  {
    v24 = 0;
    v25 = v13 + v21 + v20;
    do
    {
      v33 = *(a1[26] + 4 * (v25 + v24));
      v26 = operations_research::Domain::Distance((a1[1] + 24 * v11), *(a1[50] + 8 * v11) + *(a3 + 8 * v33) * *(a1[29] + 8 * (v23 + v24)));
      v27 = v33;
      *(a6 + 8 * v33) = *(a6 + 8 * v33) + a4 * (v26 - v10);
      v28 = a1[71];
      v29 = v27 >> 6;
      v30 = 1 << v27;
      v31 = *(v28 + 8 * v29);
      if ((v31 & v30) == 0)
      {
        *(v28 + 8 * v29) = v31 | v30;
        std::vector<int>::push_back[abi:ne200100]((a1 + 74), &v33);
      }

      ++v24;
    }

    while (v24 < v9[4]);
  }
}

void operations_research::sat::LinearIncrementalEvaluator::UpdateScoreOnNewlyUnenforced(void *a1, int a2, uint64_t a3, double a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a1[53] + 8 * a2);
  v10 = (a1[23] + 20 * a2);
  v11 = v9 * a4;
  v12 = *v10;
  v13 = v10[1];
  v14 = v10[2];
  if (v11 <= 0.0)
  {
    v16 = a1[77];
  }

  else
  {
    v15 = v14 + v13;
    v16 = a1[77] + v14 + v13;
    if (v14 + v13 >= 1)
    {
      v17 = a1[26];
      v18 = *v10;
      do
      {
        v19 = *(v17 + 4 * v18);
        *(a6 + 8 * v19) = v11 + *(a6 + 8 * v19);
        ++v18;
        --v15;
      }

      while (v15);
    }
  }

  v21 = v10[3];
  v20 = v10[4];
  a1[77] = v16 + 2 * v20;
  if (v20 >= 1)
  {
    v22 = 0;
    v23 = a2;
    v24 = -a4;
    v25 = v12 + v14 + v13;
    do
    {
      v32 = *(a1[26] + 4 * (v25 + v22));
      v26 = operations_research::Domain::Distance((a1[1] + 24 * v23), *(a1[50] + 8 * v23) + *(a3 + 8 * v32) * *(a1[29] + 8 * (v21 + v22)));
      v27 = v32;
      *(a6 + 8 * v32) = *(a6 + 8 * v32) + v24 * (v26 - v9);
      v28 = a1[71];
      v29 = v27 >> 6;
      v30 = 1 << v27;
      v31 = *(v28 + 8 * v29);
      if ((v31 & v30) == 0)
      {
        *(v28 + 8 * v29) = v31 | v30;
        std::vector<int>::push_back[abi:ne200100]((a1 + 74), &v32);
      }

      ++v22;
    }

    while (v22 < v10[4]);
  }
}

void operations_research::sat::LinearIncrementalEvaluator::UpdateScoreOfEnforcementIncrease(void *a1, int a2, uint64_t a3, double a4, uint64_t a5, uint64_t a6)
{
  if (a4 == 0.0)
  {
    return;
  }

  v39 = v9;
  v40 = v8;
  v41 = v6;
  v42 = v7;
  v14 = (a1[23] + 20 * a2);
  v15 = *v14;
  v16 = v14[1];
  v17 = a1[77] + v16;
  a1[77] = v17;
  if (v16 < 1)
  {
    goto LABEL_14;
  }

  if (a4 < 0.0)
  {
    v18 = 0;
    do
    {
      v38 = *(a1[26] + 4 * (v15 + v18));
      v19 = v38;
      if (*(a3 + 8 * v38) == 1)
      {
        *(a6 + 8 * v38) = *(a6 + 8 * v38) + a4;
        v20 = a1[71];
        v21 = v19 >> 6;
        v22 = 1 << v19;
        v23 = *(v20 + 8 * v21);
        if ((v23 & v22) == 0)
        {
          *(v20 + 8 * v21) = v23 | v22;
          std::vector<int>::push_back[abi:ne200100]((a1 + 74), &v38);
          LODWORD(v16) = v14[1];
        }
      }

      ++v18;
    }

    while (v18 < v16);
    v17 = a1[77];
    v15 += v18;
LABEL_14:
    v27 = v14[2];
    a1[77] = v17 + v27;
    if (v27 < 1)
    {
      return;
    }

    goto LABEL_17;
  }

  v24 = 0;
  v25 = a1[26];
  do
  {
    v26 = *(v25 + 4 * (v15 + v24));
    if (*(a3 + 8 * v26) == 1)
    {
      *(a6 + 8 * v26) = *(a6 + 8 * v26) + a4;
    }

    ++v24;
  }

  while (v24 < v16);
  v15 += v24;
  v27 = v14[2];
  a1[77] = v17 + v27;
  if (v27 >= 1)
  {
LABEL_17:
    if (a4 >= 0.0)
    {
      v34 = 0;
      v35 = a1[26];
      do
      {
        v36 = *(v35 + 4 * (v15 + v34));
        if (*(a3 + 8 * v36) == -1)
        {
          *(a6 + 8 * v36) = *(a6 + 8 * v36) + a4;
        }

        ++v34;
      }

      while (v34 < v27);
    }

    else
    {
      v28 = 0;
      do
      {
        v37 = *(a1[26] + 4 * (v15 + v28));
        v29 = v37;
        if (*(a3 + 8 * v37) == -1)
        {
          *(a6 + 8 * v37) = *(a6 + 8 * v37) + a4;
          v30 = a1[71];
          v31 = v29 >> 6;
          v32 = 1 << v29;
          v33 = *(v30 + 8 * v31);
          if ((v33 & v32) == 0)
          {
            *(v30 + 8 * v31) = v33 | v32;
            std::vector<int>::push_back[abi:ne200100]((a1 + 74), &v37);
            LODWORD(v27) = v14[2];
          }
        }

        ++v28;
      }

      while (v28 < v27);
    }
  }
}

void operations_research::sat::LinearIncrementalEvaluator::UpdateScoreOnActivityChange(void *a1, int a2, uint64_t a3, uint64_t a4, double a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    v11 = a1[23];
    v12 = *(a1[50] + 8 * a2);
    v13 = *(a1[32] + 8 * a2);
    v14 = v12 + a3;
    if (v12 + a3 >= v12)
    {
      v15 = *(a1[50] + 8 * a2);
    }

    else
    {
      v15 = v12 + a3;
    }

    if (v12 + a3 <= v12)
    {
      v16 = *(a1[50] + 8 * a2);
    }

    else
    {
      v16 = v12 + a3;
    }

    v17 = v15 - v13;
    v18 = v13 + v16;
    operations_research::Domain::Domain(v51, v15 - v13, v13 + v16);
    IsIncludedIn = operations_research::Domain::IsIncludedIn(v51, (a1[1] + 24 * a2));
    if (v51[0])
    {
      operator delete(v51[1]);
    }

    if ((IsIncludedIn & 1) == 0)
    {
      v20 = v18;
      v49 = (v11 + 20 * a2);
      v21 = -(a5 * (operations_research::Domain::Distance((a1[1] + 24 * a2), v14) - *(a1[53] + 8 * a2)));
      if (v21 != 0.0)
      {
        v22 = *v49;
        v23 = v49[2] + v49[1];
        a1[77] += v23;
        if (v23 >= 1)
        {
          if (v21 >= 0.0)
          {
            v29 = a1[26];
            do
            {
              v30 = *(v29 + 4 * v22);
              *(a7 + 8 * v30) = v21 + *(a7 + 8 * v30);
              ++v22;
              --v23;
            }

            while (v23);
          }

          else
          {
            do
            {
              LODWORD(v51[0]) = *(a1[26] + 4 * v22);
              v24 = SLODWORD(v51[0]);
              *(a7 + 8 * SLODWORD(v51[0])) = v21 + *(a7 + 8 * SLODWORD(v51[0]));
              v25 = a1[71];
              v26 = v24 >> 6;
              v27 = 1 << v24;
              v28 = *(v25 + 8 * v26);
              if ((v28 & v27) == 0)
              {
                *(v25 + 8 * v26) = v28 | v27;
                std::vector<int>::push_back[abi:ne200100]((a1 + 74), v51);
              }

              ++v22;
              --v23;
            }

            while (v23);
          }
        }
      }

      if (v17 < operations_research::Domain::Max((a1[1] + 24 * a2)) && v20 > operations_research::Domain::Min((a1[1] + 24 * a2)))
      {
        v31 = *v49;
        v32 = v49[2];
        v47 = v49[1];
        v48 = v49[3];
        a1[77] += 2 * v49[4];
        v33 = (a1[1] + 24 * a2);
        v34 = *(a1[53] + 8 * a2);
        v35 = operations_research::Domain::Distance(v33, v14);
        if (v49[4] >= 1)
        {
          v36 = 0;
          v37 = v31 + v32 + v47;
          v38 = v34 - v35;
          do
          {
            LODWORD(v51[0]) = *(a1[26] + 4 * (v37 + v36));
            v39 = *(a4 + 8 * SLODWORD(v51[0])) * *(a1[29] + 8 * (v48 + v36));
            v40 = operations_research::Domain::Distance(v33, v39 + v12);
            v41 = operations_research::Domain::Distance(v33, v39 + v14);
            v42 = SLODWORD(v51[0]);
            *(a7 + 8 * SLODWORD(v51[0])) = *(a7 + 8 * SLODWORD(v51[0])) + a5 * (v38 - v40 + v41);
            v43 = a1[71];
            v44 = v42 >> 6;
            v45 = 1 << v42;
            v46 = *(v43 + 8 * v44);
            if ((v46 & v45) == 0)
            {
              *(v43 + 8 * v44) = v46 | v45;
              std::vector<int>::push_back[abi:ne200100]((a1 + 74), v51);
            }

            ++v36;
          }

          while (v36 < v49[4]);
        }
      }
    }
  }
}

void sub_23C9F922C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *__p)
{
  if (a12)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::LinearIncrementalEvaluator::UpdateVariableAndScores(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a1[14];
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[15] - v11) >> 2) > a2)
  {
    v13 = (v11 + 20 * a2);
    v14 = *v13;
    if (v13[1] >= 1)
    {
      if (a3 == 1)
      {
        v15 = 0;
        while (1)
        {
          v16 = *(a1[17] + 4 * v14);
          v17 = a1[56];
          v18 = *(v17 + 4 * v16);
          if (v18 <= 0)
          {
            v19 = *(a1[53] + 8 * v16);
            *(v17 + 4 * v16) = v18 - 1;
          }

          else
          {
            v19 = 0;
            *(v17 + 4 * v16) = v18 - 1;
            if (v18 == 1)
            {
              operations_research::sat::LinearIncrementalEvaluator::UpdateScoreOnNewlyEnforced(a1, v16, a6, *(a4 + 8 * v16), a7, a9);
              v20 = v16 >> 6;
              if (*(a1[56] + 4 * v16) >= 1)
              {
                goto LABEL_12;
              }

              goto LABEL_17;
            }
          }

          if (v18 == 2)
          {
            operations_research::sat::LinearIncrementalEvaluator::UpdateScoreOfEnforcementIncrease(a1, v16, a6, *(a4 + 8 * v16) * *(a1[53] + 8 * v16), a7, a9);
          }

          v20 = v16 >> 6;
          if (*(a1[56] + 4 * v16) >= 1)
          {
LABEL_12:
            v21 = 0;
            v22 = (a1[47] + 8 * v20);
            v23 = 1 << v16;
LABEL_13:
            *v22 &= ~v23;
            if (!a11)
            {
              goto LABEL_6;
            }

            goto LABEL_5;
          }

LABEL_17:
          v21 = *(a1[53] + 8 * v16);
          v22 = (a1[47] + 8 * v20);
          v23 = 1 << v16;
          if (v21 <= 0)
          {
            goto LABEL_13;
          }

          *v22 |= v23;
          if (!a11)
          {
            goto LABEL_6;
          }

LABEL_5:
          *&v65 = v16;
          *(&v65 + 1) = v21 - v19;
          std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](a11, &v65);
LABEL_6:
          ++v15;
          ++v14;
          if (v15 >= v13[1])
          {
            goto LABEL_36;
          }
        }
      }

      for (i = 0; i < v13[1]; ++i)
      {
        v25 = *(a1[17] + 4 * v14);
        v26 = a1[56];
        v27 = *(v26 + 4 * v25);
        if (v27 <= 0)
        {
          v28 = *(a1[53] + 8 * v25);
          v29 = v25;
          *(v26 + 4 * v25) = v27 + 1;
        }

        else
        {
          v28 = 0;
          v29 = v25;
          *(v26 + 4 * v25) = v27 + 1;
          if (v27 == 1)
          {
            operations_research::sat::LinearIncrementalEvaluator::UpdateScoreOfEnforcementIncrease(a1, v25, a6, -(*(a4 + 8 * v25) * *(a1[53] + 8 * v25)), a7, a9);
            v30 = v25 >> 6;
            if (*(a1[56] + 4 * v25) >= 1)
            {
              goto LABEL_28;
            }

            goto LABEL_33;
          }
        }

        if (!v27)
        {
          operations_research::sat::LinearIncrementalEvaluator::UpdateScoreOnNewlyUnenforced(a1, v25, a6, *(a4 + 8 * v25), a7, a9);
        }

        v30 = v25 >> 6;
        if (*(a1[56] + 4 * v25) >= 1)
        {
LABEL_28:
          v31 = 0;
          v32 = (a1[47] + 8 * v30);
          v33 = 1 << v25;
LABEL_29:
          *v32 &= ~v33;
          if (!a11)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

LABEL_33:
        v31 = *(a1[53] + 8 * v25);
        v32 = (a1[47] + 8 * v30);
        v33 = 1 << v25;
        if (v31 < 1)
        {
          goto LABEL_29;
        }

        *v32 |= v33;
        if (!a11)
        {
          goto LABEL_22;
        }

LABEL_21:
        *&v65 = v29;
        *(&v65 + 1) = v31 - v28;
        std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](a11, &v65);
LABEL_22:
        ++v14;
      }
    }

LABEL_36:
    if (v13[2] >= 1)
    {
      for (j = 0; j < v13[2]; ++j)
      {
        v35 = *(a1[17] + 4 * v14);
        v36 = a1[56];
        v37 = *(v36 + 4 * v35);
        if (v37 <= 0)
        {
          v38 = *(a1[53] + 8 * v35);
          v39 = v35;
          if (a3 != -1)
          {
LABEL_42:
            *(v36 + 4 * v35) = v37 + 1;
            if (v37 != 1)
            {
              if (!v37)
              {
                operations_research::sat::LinearIncrementalEvaluator::UpdateScoreOnNewlyUnenforced(a1, v39, a6, *(a4 + 8 * v35), a7, a9);
                v40 = v35 >> 6;
                if (*(a1[56] + 4 * v35) >= 1)
                {
                  goto LABEL_51;
                }

                goto LABEL_57;
              }

              goto LABEL_50;
            }

            v44 = -(*(a4 + 8 * v35) * *(a1[53] + 8 * v35));
            v45 = a1;
            v46 = v35;
            goto LABEL_56;
          }
        }

        else
        {
          v38 = 0;
          v39 = v35;
          if (a3 != -1)
          {
            goto LABEL_42;
          }
        }

        *(v36 + 4 * v35) = v37 - 1;
        if (v37 != 2)
        {
          if (v37 == 1)
          {
            operations_research::sat::LinearIncrementalEvaluator::UpdateScoreOnNewlyEnforced(a1, v35, a6, *(a4 + 8 * v35), a7, a9);
          }

LABEL_50:
          v40 = v35 >> 6;
          if (*(a1[56] + 4 * v35) >= 1)
          {
            goto LABEL_51;
          }

          goto LABEL_57;
        }

        v44 = *(a4 + 8 * v35) * *(a1[53] + 8 * v35);
        v45 = a1;
        v46 = v39;
LABEL_56:
        operations_research::sat::LinearIncrementalEvaluator::UpdateScoreOfEnforcementIncrease(v45, v46, a6, v44, a7, a9);
        v40 = v35 >> 6;
        if (*(a1[56] + 4 * v35) >= 1)
        {
LABEL_51:
          v41 = 0;
          v42 = (a1[47] + 8 * v40);
          v43 = 1 << v35;
LABEL_52:
          *v42 &= ~v43;
          if (!a11)
          {
            goto LABEL_39;
          }

          goto LABEL_38;
        }

LABEL_57:
        v41 = *(a1[53] + 8 * v35);
        v42 = (a1[47] + 8 * v40);
        v43 = 1 << v35;
        if (v41 < 1)
        {
          goto LABEL_52;
        }

        *v42 |= v43;
        if (!a11)
        {
          goto LABEL_39;
        }

LABEL_38:
        *&v65 = v39;
        *(&v65 + 1) = v41 - v38;
        std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](a11, &v65);
LABEL_39:
        ++v14;
      }
    }

    if (v13[4] >= 1)
    {
      v47 = 0;
      for (k = v13[3]; ; ++k)
      {
        v49 = *(a1[17] + 4 * v14);
        v50 = *(a1[56] + 4 * v49);
        if (v50 < 1)
        {
          v53 = *(a1[53] + 8 * v49);
          v51 = *(a1[20] + 8 * k);
          if (!v50)
          {
            operations_research::sat::LinearIncrementalEvaluator::UpdateScoreOnActivityChange(a1, v49, v51 * a3, a6, *(a4 + 8 * v49), a7, a9);
          }
        }

        else
        {
          v51 = *(a1[20] + 8 * k);
          if (v50 == 1)
          {
            v52 = *(a1[53] + 8 * v49) - operations_research::Domain::Distance((a1[1] + 24 * v49), *(a1[50] + 8 * v49) + v51 * a3);
            if (v52)
            {
              operations_research::sat::LinearIncrementalEvaluator::UpdateScoreOfEnforcementIncrease(a1, v49, a6, -(*(a4 + 8 * v49) * v52), a7, a9);
            }
          }

          v53 = 0;
        }

        v54 = a1[50];
        v55 = *(v54 + 8 * v49) + v51 * a3;
        *(v54 + 8 * v49) = v55;
        v56 = operations_research::Domain::Distance((a1[1] + 24 * v49), v55);
        *(a1[53] + 8 * v49) = v56;
        v57 = *(a1[56] + 4 * v49) <= 0 ? v56 : 0;
        v58 = a1[47];
        v59 = v49 >> 6;
        v60 = 1 << v49;
        if (v57 >= 1)
        {
          break;
        }

        *(v58 + 8 * v59) &= ~v60;
        if (a11)
        {
          goto LABEL_63;
        }

LABEL_64:
        ++v47;
        ++v14;
        if (v47 >= v13[4])
        {
          return;
        }
      }

      *(v58 + 8 * v59) |= v60;
      if (!a11)
      {
        goto LABEL_64;
      }

LABEL_63:
      *&v65 = v49;
      *(&v65 + 1) = v57 - v53;
      std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](a11, &v65);
      goto LABEL_64;
    }
  }
}

uint64_t operations_research::sat::LinearIncrementalEvaluator::ReduceBounds(operations_research::sat::LinearIncrementalEvaluator *this, int a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (operations_research::Domain::Min((*(this + 1) + 24 * a2)) < a3 || operations_research::Domain::Max((*(this + 1) + 24 * v7)) > a4)
  {
    v8 = (*(this + 1) + 24 * v7);
    operations_research::Domain::Domain(v11, a3, a4);
    operations_research::Domain::IntersectionWith(v8, v11, &v12);
    v9 = *(this + 1) + 24 * v7;
    if (v9 == &v12)
    {
      operations_research::sat::LinearIncrementalEvaluator::ReduceBounds(&v12);
      if ((v11[0] & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (*v9)
      {
        operator delete(*(v9 + 8));
      }

      *v9 = v12;
      *(v9 + 8) = v13;
      v12 = 0;
      if ((v11[0] & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    operator delete(v11[1]);
LABEL_8:
    *(*(this + 53) + 8 * v7) = operations_research::Domain::Distance((*(this + 1) + 24 * v7), *(*(this + 50) + 8 * v7));
    return 1;
  }

  return 0;
}

void sub_23C9F9A00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, void *__p)
{
  if (a9)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double operations_research::sat::LinearIncrementalEvaluator::WeightedViolationDelta(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = a1[14];
  v6 = 0.0;
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[15] - v5) >> 2) > a4)
  {
    v10 = (v5 + 20 * a4);
    v11 = *v10;
    v12 = v10[1];
    v13 = a1[77] + v12;
    if (v12 >= 1)
    {
      v14 = a1[17];
      v15 = a1[56];
      v16 = v10[1];
      v17 = *v10;
      if (a5 == 1)
      {
        do
        {
          v19 = *(v14 + 4 * v17);
          v20 = *(v15 + 4 * v19);
          if (v20 == 1)
          {
            v6 = v6 + *(a2 + 8 * v19) * *(a1[53] + 8 * v19);
          }

          else if (!v20)
          {
            v6 = v6 - *(a2 + 8 * v19) * *(a1[53] + 8 * v19);
          }

          ++v17;
          --v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v18 = *(v14 + 4 * v17);
          if (!*(v15 + 4 * v18))
          {
            v6 = v6 - *(a2 + 8 * v18) * *(a1[53] + 8 * v18);
          }

          ++v17;
          --v16;
        }

        while (v16);
      }

      v11 += v12;
    }

    v21 = v10[2];
    v22 = v13 + v21;
    if (v21 >= 1)
    {
      v23 = a1[17];
      v24 = a1[56];
      v25 = v10[2];
      v26 = v11;
      if (a5 == -1)
      {
        do
        {
          v28 = *(v23 + 4 * v26);
          v29 = *(v24 + 4 * v28);
          if (v29 == 1)
          {
            v6 = v6 + *(a2 + 8 * v28) * *(a1[53] + 8 * v28);
          }

          else if (!v29)
          {
            v6 = v6 - *(a2 + 8 * v28) * *(a1[53] + 8 * v28);
          }

          ++v26;
          --v25;
        }

        while (v25);
      }

      else
      {
        do
        {
          v27 = *(v23 + 4 * v26);
          if (!*(v24 + 4 * v27))
          {
            v6 = v6 - *(a2 + 8 * v27) * *(a1[53] + 8 * v27);
          }

          ++v26;
          --v25;
        }

        while (v25);
      }

      v11 += v21;
    }

    v31 = v10[3];
    v30 = v10[4];
    a1[77] = v22 + 2 * v30;
    if (v30 >= 1)
    {
      for (i = 0; i < v30; ++i)
      {
        v33 = *(a1[17] + 4 * v11);
        if (*(a1[56] + 4 * v33) <= 0)
        {
          v34 = *(a1[53] + 8 * v33);
          v6 = v6 + *(a2 + 8 * v33) * (operations_research::Domain::Distance((a1[1] + 24 * v33), *(a1[50] + 8 * v33) + *(a1[20] + 8 * (v31 + i)) * a5) - v34);
          v30 = v10[4];
        }

        ++v11;
      }
    }
  }

  return v6;
}

uint64_t operations_research::sat::LinearIncrementalEvaluator::SlopeBreakpoints@<X0>(operations_research::sat::LinearIncrementalEvaluator *this@<X0>, const operations_research::Domain *a2@<X3>, int a3@<W1>, uint64_t a4@<X2>, void *a5@<X8>)
{
  operations_research::Domain::FlattenedIntervals(a2, a5);
  v43 = a2;
  result = operations_research::Domain::Size(a2);
  if (result >= 3)
  {
    v9 = *(this + 14);
    if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 15) - v9) >> 2) > a3)
    {
      v10 = (v9 + 20 * a3);
      if (v10[4] >= 1)
      {
        v11 = 0;
        v42 = v10[3];
        v12 = v10[1] + *v10 + v10[2];
        do
        {
          v13 = *(*(this + 17) + 4 * v12);
          if (*(*(this + 56) + 4 * v13) <= 0)
          {
            v14 = *(*(this + 20) + 8 * (v42 + v11));
            v15 = *(*(this + 50) + 8 * v13);
            v16 = operations_research::Domain::Min((*(this + 1) + 24 * v13));
            v17 = v15 - v14 * a4;
            if (__OFSUB__(v16, v17))
            {
              v18 = (v16 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v18 = v16 - v17;
            }

            v19 = operations_research::Domain::Max((*(this + 1) + 24 * v13));
            if (__OFSUB__(v19, v17))
            {
              v20 = (v19 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v20 = v19 - v17;
            }

            if (v18 != 0x8000000000000000)
            {
              v21 = v18 / v14;
              v22 = v18 % v14;
              if ((v18 ^ v14) < 0 || v22 == 0)
              {
                v24 = v18 / v14;
              }

              else
              {
                v24 = v21 + 1;
              }

              v47 = v24;
              if (v24 != *(a5[1] - 8) && operations_research::Domain::Contains(v43, v24))
              {
                std::vector<long long>::push_back[abi:ne200100](a5, &v47);
              }

              v26 = (v18 ^ v14) < 0 && v22 != 0;
              v46 = v21 - v26;
              if (v21 - v26 != *(a5[1] - 8) && operations_research::Domain::Contains(v43, v21 - v26))
              {
                std::vector<long long>::push_back[abi:ne200100](a5, &v46);
              }
            }

            if (v18 != v20 && v20 != 0x8000000000000000)
            {
              v28 = v20 / v14;
              v29 = v20 % v14;
              if ((v20 ^ v14) < 0 || v29 == 0)
              {
                v31 = v20 / v14;
              }

              else
              {
                v31 = v28 + 1;
              }

              v47 = v31;
              if (v31 != *(a5[1] - 8) && operations_research::Domain::Contains(v43, v31))
              {
                std::vector<long long>::push_back[abi:ne200100](a5, &v47);
              }

              v33 = (v20 ^ v14) < 0 && v29 != 0;
              v46 = v28 - v33;
              if (v28 - v33 != *(a5[1] - 8) && operations_research::Domain::Contains(v43, v28 - v33))
              {
                std::vector<long long>::push_back[abi:ne200100](a5, &v46);
              }
            }
          }

          ++v11;
          ++v12;
        }

        while (v11 < v10[4]);
      }

      v34 = *a5;
      v35 = a5[1];
      result = std::__sort<std::__less<long long,long long> &,long long *>();
      v36 = a5[1];
      if (*a5 != v36)
      {
        v37 = (*a5 + 8);
        while (v37 != v36)
        {
          v38 = *(v37 - 1);
          v39 = *v37++;
          if (v38 == v39)
          {
            v40 = v37 - 2;
            while (v37 != v36)
            {
              v41 = v38;
              v38 = *v37;
              if (v41 != *v37)
              {
                v40[1] = v38;
                ++v40;
              }

              ++v37;
            }

            if (v40 + 1 != v36)
            {
              a5[1] = v40 + 1;
            }

            return result;
          }
        }
      }
    }
  }

  return result;
}

void sub_23C9F9FA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *a12;
  if (*a12)
  {
    *(a12 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *operations_research::sat::LinearIncrementalEvaluator::PrecomputeCompactView(uint64_t *result, uint64_t a2)
{
  *(result + 56) = 0;
  v3 = *result;
  if (v3)
  {
    v4 = result;
    __u[0] = 0;
    std::vector<int>::assign((result + 35), v3, __u);
    v5 = *v4;
    __u[0] = 0;
    std::vector<int>::assign((v4 + 38), v5, __u);
    v6 = *v4;
    __u[0] = 0;
    std::vector<int>::assign((v4 + 41), v6, __u);
    v7 = *v4;
    __u[0] = 0;
    std::vector<int>::assign((v4 + 44), v7, __u);
    v8 = v4[12];
    v9 = v4[11];
    if (v9 == v8)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0;
      do
      {
        v12 = *v9;
        v11 = v9[1];
        v13 = v11 - *v9;
        if (v11 != *v9)
        {
          v14 = v4[35];
          do
          {
            v15 = *v12;
            v16 = *(v12 + 4);
            ++*(v14 + 4 * v15);
            if (v16)
            {
              v17 = v4 + 38;
            }

            else
            {
              v17 = v4 + 41;
            }

            ++*(*v17 + 4 * v15);
            v12 += 2;
          }

          while (v12 != v11);
        }

        v10 += v13 >> 3;
        v9 += 3;
      }

      while (v9 != v8);
    }

    v18 = *v4;
    *__u = 0;
    std::vector<long long>::assign(v4 + 32, v18, __u);
    v19 = v4[9];
    v20 = v4[8];
    v21 = v19 - v20;
    if (v19 == v20)
    {
      v23 = 0;
    }

    else
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0xAAAAAAAAAAAAAAABLL * (v21 >> 3);
      do
      {
        v26 = (v20 + 24 * v22);
        v28 = *v26;
        v27 = v26[1];
        v29 = v27 - *v26;
        if (v29)
        {
          v30 = *(a2 + 8 * v22);
          v31 = v4[35];
          v32 = v4[44];
          v33 = v4[32];
          do
          {
            v34 = *v28;
            v35 = *(v28 + 1);
            ++*(v31 + 4 * v34);
            ++*(v32 + 4 * v34);
            if (v35 < 0)
            {
              v35 = -v35;
            }

            v36 = v35 * v30;
            if (*(v33 + 8 * v34) > v36)
            {
              v36 = *(v33 + 8 * v34);
            }

            *(v33 + 8 * v34) = v36;
            v28 += 4;
          }

          while (v28 != v27);
        }

        v10 += v29 >> 4;
        v23 += v29 >> 4;
        v22 = ++v24;
      }

      while (v25 > v24);
    }

    v37 = v4[17];
    if (v10 > ((v4[19] - v37) >> 2))
    {
      if ((v10 & 0x80000000) == 0)
      {
        v38 = v4[18] - v37;
        operator new();
      }

LABEL_159:
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v39 = v4[20];
    if (v23 > ((v4[22] - v39) >> 3))
    {
      if ((v23 & 0x80000000) == 0)
      {
        v40 = v4[21] - v39;
        operator new();
      }

LABEL_161:
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v41 = v4[14];
    v42 = 0xAAAAAAAAAAAAAAABLL * ((v4[9] - v4[8]) >> 3);
    if (0xAAAAAAAAAAAAAAABLL * ((v4[12] - v4[11]) >> 3) > v42)
    {
      v42 = 0xAAAAAAAAAAAAAAABLL * ((v4[12] - v4[11]) >> 3);
    }

    v43 = v4[15];
    v44 = 0xCCCCCCCCCCCCCCCDLL * ((v43 - v41) >> 2);
    if (v42 <= v44)
    {
      if (v42 < v44)
      {
        v43 = v41 + 20 * v42;
        v4[15] = v43;
      }
    }

    else
    {
      std::vector<operations_research::sat::LinearIncrementalEvaluator::SpanData>::__append((v4 + 14), v42 - v44);
      v41 = v4[14];
      v43 = v4[15];
    }

    v175 = v23;
    v174 = v10;
    if (v43 != v41)
    {
      v45 = 0;
      v46 = 0;
      do
      {
        v176 = v46;
        v47 = v4[18];
        v48 = (v41 + 20 * v45);
        *v48 = &v47[-v4[17]] >> 2;
        v48[3] = (v4[21] - v4[20]) >> 3;
        v49 = v4[11];
        if (0xAAAAAAAAAAAAAAABLL * ((v4[12] - v49) >> 3) > v45)
        {
          v50 = v49 + 24 * v45;
          v52 = *v50;
          v51 = *(v50 + 8);
          if (*v50 != v51)
          {
            while (1)
            {
              v53 = *v52;
              if ((*v52 & 0x100000000) != 0)
              {
                ++*(v4[14] + 20 * v45 + 4);
                v54 = v4[19];
                if (v47 < v54)
                {
                  *v47 = v53;
                  v47 += 4;
                }

                else
                {
                  v55 = v4[17];
                  v56 = v47 - v55;
                  v57 = (v47 - v55) >> 2;
                  v58 = v57 + 1;
                  if ((v57 + 1) >> 62)
                  {
                    goto LABEL_159;
                  }

                  v59 = v54 - v55;
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

LABEL_160:
                    std::__throw_bad_array_new_length[abi:ne200100]();
                  }

                  v61 = (v47 - v55) >> 2;
                  v62 = (4 * v57);
                  v63 = (4 * v57 - 4 * v61);
                  *v62 = v53;
                  v47 = (v62 + 1);
                  memcpy(v63, v55, v56);
                  v4[17] = v63;
                  v4[18] = v47;
                  v4[19] = 0;
                  if (v55)
                  {
                    operator delete(v55);
                  }
                }

                v4[18] = v47;
              }

              if (++v52 == v51)
              {
                v64 = v4[11] + 24 * v45;
                v52 = *v64;
                v51 = *(v64 + 8);
                break;
              }
            }
          }

          while (v52 != v51)
          {
            v65 = *v52;
            if ((*v52 & 0x100000000) == 0)
            {
              ++*(v4[14] + 20 * v45 + 8);
              v66 = v4[19];
              if (v47 < v66)
              {
                *v47 = v65;
                v47 += 4;
              }

              else
              {
                v67 = v4[17];
                v68 = v47 - v67;
                v69 = (v47 - v67) >> 2;
                v70 = v69 + 1;
                if ((v69 + 1) >> 62)
                {
                  goto LABEL_159;
                }

                v71 = v66 - v67;
                if (v71 >> 1 > v70)
                {
                  v70 = v71 >> 1;
                }

                if (v71 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v72 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v72 = v70;
                }

                if (v72)
                {
                  if (!(v72 >> 62))
                  {
                    operator new();
                  }

                  goto LABEL_160;
                }

                v73 = (v47 - v67) >> 2;
                v74 = (4 * v69);
                v75 = (4 * v69 - 4 * v73);
                *v74 = v65;
                v47 = (v74 + 1);
                memcpy(v75, v67, v68);
                v4[17] = v75;
                v4[18] = v47;
                v4[19] = 0;
                if (v67)
                {
                  operator delete(v67);
                }
              }

              v4[18] = v47;
            }

            ++v52;
          }
        }

        v76 = v4[8];
        if (0xAAAAAAAAAAAAAAABLL * ((v4[9] - v76) >> 3) > v45)
        {
          v77 = (v76 + 24 * v45);
          v78 = *v77;
          v79 = v77[1];
          if (*v77 != v79)
          {
            do
            {
              v81 = *v78;
              v82 = *(v78 + 1);
              ++*(v4[14] + 20 * v45 + 16);
              v84 = v4[18];
              v83 = v4[19];
              if (v84 >= v83)
              {
                v86 = v4[17];
                v87 = v84 - v86;
                v88 = (v84 - v86) >> 2;
                v89 = v88 + 1;
                if ((v88 + 1) >> 62)
                {
                  goto LABEL_159;
                }

                v90 = v83 - v86;
                if (v90 >> 1 > v89)
                {
                  v89 = v90 >> 1;
                }

                if (v90 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v91 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v91 = v89;
                }

                if (v91)
                {
                  if (!(v91 >> 62))
                  {
                    operator new();
                  }

                  goto LABEL_160;
                }

                v92 = (v84 - v86) >> 2;
                v93 = (4 * v88);
                v94 = (4 * v88 - 4 * v92);
                *v93 = v81;
                v85 = v93 + 1;
                memcpy(v94, v86, v87);
                v4[17] = v94;
                v4[18] = v85;
                v4[19] = 0;
                if (v86)
                {
                  operator delete(v86);
                }
              }

              else
              {
                *v84 = v81;
                v85 = v84 + 4;
              }

              v4[18] = v85;
              v96 = v4[21];
              v95 = v4[22];
              if (v96 < v95)
              {
                *v96 = v82;
                v80 = v96 + 8;
              }

              else
              {
                v97 = v4[20];
                v98 = v96 - v97;
                v99 = (v96 - v97) >> 3;
                v100 = v99 + 1;
                if ((v99 + 1) >> 61)
                {
                  goto LABEL_161;
                }

                v101 = v95 - v97;
                if (v101 >> 2 > v100)
                {
                  v100 = v101 >> 2;
                }

                if (v101 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v102 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v102 = v100;
                }

                if (v102)
                {
                  if (!(v102 >> 61))
                  {
                    operator new();
                  }

                  goto LABEL_160;
                }

                v103 = (v96 - v97) >> 3;
                v104 = (8 * v99);
                v105 = (8 * v99 - 8 * v103);
                *v104 = v82;
                v80 = v104 + 1;
                memcpy(v105, v97, v98);
                v4[20] = v105;
                v4[21] = v80;
                v4[22] = 0;
                if (v97)
                {
                  operator delete(v97);
                }
              }

              v4[21] = v80;
              v78 += 4;
            }

            while (v78 != v79);
          }
        }

        v46 = v176 + 1;
        v45 = v176 + 1;
        v41 = v4[14];
      }

      while (0xCCCCCCCCCCCCCCCDLL * ((v4[15] - v41) >> 2) > v45);
    }

    v107 = v4[8];
    v106 = v4[9];
    v4[8] = 0;
    v4[9] = 0;
    v4[10] = 0;
    if (v107)
    {
      if (v106 != v107)
      {
        v108 = v106;
        do
        {
          v110 = *(v108 - 3);
          v108 -= 24;
          v109 = v110;
          if (v110)
          {
            *(v106 - 2) = v109;
            operator delete(v109);
          }

          v106 = v108;
        }

        while (v108 != v107);
      }

      operator delete(v107);
    }

    v112 = v4[11];
    v111 = v4[12];
    v4[11] = 0;
    v4[12] = 0;
    v4[13] = 0;
    if (v112)
    {
      if (v111 != v112)
      {
        v113 = v111;
        do
        {
          v115 = *(v113 - 3);
          v113 -= 24;
          v114 = v115;
          if (v115)
          {
            *(v111 - 2) = v114;
            operator delete(v114);
          }

          v111 = v113;
        }

        while (v113 != v112);
      }

      operator delete(v112);
    }

    v116 = v4[23];
    v117 = *v4;
    v118 = 0xCCCCCCCCCCCCCCCDLL * ((v4[24] - v116) >> 2);
    if (*v4 <= v118)
    {
      if (v117 < v118)
      {
        v4[24] = v116 + 20 * *v4;
      }
    }

    else
    {
      std::vector<operations_research::sat::LinearIncrementalEvaluator::SpanData>::__append((v4 + 23), *v4 - v118);
      v117 = *v4;
    }

    if (v117 >= 1)
    {
      v119 = 0;
      v120 = 0;
      v121 = 0;
      v122 = v4[38];
      v123 = v4[41];
      v124 = v4[44];
      v125 = v4[35];
      v126 = (v4[23] + 8);
      do
      {
        *(v126 - 1) = *(v122 + 4 * v119);
        *v126 = *(v123 + 4 * v119);
        v126[2] = *(v124 + 4 * v119);
        *(v126 - 2) = v120;
        v127 = *(v125 + 4 * v119);
        *(v125 + 4 * v119) = v120;
        v120 += v127;
        v126[1] = v121;
        v128 = *(v124 + 4 * v119);
        *(v124 + 4 * v119) = v121;
        v121 += v128;
        ++v119;
        v126 += 5;
      }

      while (v119 < *v4);
    }

    v129 = v4[26];
    v130 = (v4[27] - v129) >> 2;
    if (v174 <= v130)
    {
      v131 = v175;
      if (v174 < v130)
      {
        v4[27] = v129 + 4 * v174;
      }
    }

    else
    {
      std::vector<int>::__append((v4 + 26), v174 - v130);
      v131 = v175;
    }

    v132 = v4[29];
    v133 = (v4[30] - v132) >> 3;
    if (v131 <= v133)
    {
      if (v131 < v133)
      {
        v4[30] = v132 + 8 * v131;
      }
    }

    else
    {
      std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__append((v4 + 29), v131 - v133);
    }

    v134 = v4[14];
    v135 = v4[15];
    v136 = 0xCCCCCCCCCCCCCCCDLL * ((v135 - v134) >> 2);
    if (v135 != v134)
    {
      v137 = 0;
      v138 = 0;
      do
      {
        v139 = (v134 + 20 * v137);
        if (v139[1] >= 1)
        {
          v140 = 0;
          v141 = *v139;
          v142 = v4[17];
          v143 = v4[35];
          v144 = v4[26];
          do
          {
            v145 = *(v142 + 4 * (v141 + v140));
            v146 = *(v143 + 4 * v145);
            *(v143 + 4 * v145) = v146 + 1;
            *(v144 + 4 * v146) = v138;
            ++v140;
          }

          while (v140 < v139[1]);
        }

        v137 = ++v138;
      }

      while (v136 > v138);
      if (v135 != v134)
      {
        v147 = 0;
        v148 = 0;
        do
        {
          v149 = (v134 + 20 * v147);
          if (v149[2] >= 1)
          {
            v150 = 0;
            v151 = v149[1] + *v149;
            v152 = v4[17];
            v153 = v4[35];
            v154 = v4[26];
            do
            {
              v155 = *(v152 + 4 * (v151 + v150));
              v156 = *(v153 + 4 * v155);
              *(v153 + 4 * v155) = v156 + 1;
              *(v154 + 4 * v156) = v148;
              ++v150;
            }

            while (v150 < v149[2]);
          }

          v147 = ++v148;
        }

        while (v136 > v148);
        if (v135 != v134)
        {
          v157 = 0;
          v158 = 0;
          do
          {
            v159 = (v134 + 20 * v157);
            if (v159[4] >= 1)
            {
              v160 = 0;
              v161 = v159[3];
              v162 = v4[17];
              v163 = v4[35];
              v164 = v4[26];
              v165 = v4[20];
              v166 = v4[44];
              v167 = v4[29];
              v168 = *v159 + v159[2] + v159[1];
              do
              {
                v169 = *(v162 + 4 * (v168 + v160));
                v170 = *(v163 + 4 * v169);
                *(v163 + 4 * v169) = v170 + 1;
                *(v164 + 4 * v170) = v158;
                v171 = *(v165 + 8 * (v161 + v160));
                v172 = *(v166 + 4 * v169);
                *(v166 + 4 * v169) = v172 + 1;
                *(v167 + 8 * v172) = v171;
                ++v160;
              }

              while (v160 < v159[4]);
            }

            v157 = ++v158;
          }

          while (v136 > v158);
        }
      }
    }

    *__u = 0;
    std::vector<long long>::assign(v4 + 65, v136, __u);
    v173 = 0xCCCCCCCCCCCCCCCDLL * ((v4[15] - v4[14]) >> 2);
    *__u = 0;
    return std::vector<double>::assign(v4 + 68, v173, __u);
  }

  return result;
}

unint64_t *std::vector<long long>::assign(int64x2_t **a1, unint64_t a2, unint64_t *a3)
{
  v5 = a1[2];
  v6 = *a1;
  result = v6;
  if (a2 > (v5 - v6) >> 3)
  {
    if (v6)
    {
      a1[1] = v6;
      operator delete(v6);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a2 >> 61))
    {
      v8 = v5 >> 2;
      if (v5 >> 2 <= a2)
      {
        v8 = a2;
      }

      v9 = v5 >= 0x7FFFFFFFFFFFFFF8;
      v10 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v9)
      {
        v10 = v8;
      }

      if (!(v10 >> 61))
      {
        operator new();
      }
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  v12 = v11 - v6;
  v13 = (v11 - v6) >> 3;
  if (v13 >= a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = (v11 - v6) >> 3;
  }

  if (v14)
  {
    v15 = *a3;
    v16 = v14;
    if (v14 < 4)
    {
      goto LABEL_33;
    }

    result = v6 + (v14 & 0xFFFFFFFFFFFFFFFCLL);
    v16 = v14 & 3;
    v17 = vdupq_n_s64(v15);
    v18 = v6 + 1;
    v19 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v18[-1] = v17;
      *v18 = v17;
      v18 += 2;
      v19 -= 4;
    }

    while (v19);
    if (v14 != (v14 & 0xFFFFFFFFFFFFFFFCLL))
    {
LABEL_33:
      do
      {
        *result++ = v15;
        --v16;
      }

      while (v16);
    }
  }

  v9 = a2 >= v13;
  v20 = a2 - v13;
  if (v20 != 0 && v9)
  {
    if ((v20 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      v21 = &v11[v20];
      v22 = *a3;
      v23 = 8 * a2 - v12 - 8;
      if (v23 < 0x18)
      {
        goto LABEL_34;
      }

      v24 = (v23 >> 3) + 1;
      v25 = &v11[v24 & 0x3FFFFFFFFFFFFFFCLL];
      v26 = vdupq_n_s64(v22);
      v27 = (v11 + 2);
      v28 = v24 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v27[-1] = v26;
        *v27 = v26;
        v27 += 2;
        v28 -= 4;
      }

      while (v28);
      v11 = v25;
      if (v24 != (v24 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_34:
        do
        {
          *v11++ = v22;
        }

        while (v11 != v21);
      }

      a1[1] = v21;
    }

    else
    {
      a1[1] = v11;
    }
  }

  else
  {
    a1[1] = (v6 + 8 * a2);
  }

  return result;
}

uint64_t *std::vector<double>::assign(int64x2_t **a1, unint64_t a2, uint64_t *a3)
{
  v5 = a1[2];
  v6 = *a1;
  result = v6;
  if (a2 > (v5 - v6) >> 3)
  {
    if (v6)
    {
      a1[1] = v6;
      operator delete(v6);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a2 >> 61))
    {
      v8 = v5 >> 2;
      if (v5 >> 2 <= a2)
      {
        v8 = a2;
      }

      v9 = v5 >= 0x7FFFFFFFFFFFFFF8;
      v10 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v9)
      {
        v10 = v8;
      }

      if (!(v10 >> 61))
      {
        operator new();
      }
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  v12 = v11 - v6;
  v13 = (v11 - v6) >> 3;
  if (v13 >= a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = (v11 - v6) >> 3;
  }

  if (v14)
  {
    v15 = *a3;
    v16 = v14;
    if (v14 < 4)
    {
      goto LABEL_33;
    }

    result = &v6->i64[v14 & 0xFFFFFFFFFFFFFFFCLL];
    v16 = v14 & 3;
    v17 = vdupq_lane_s64(v15, 0);
    v18 = v6 + 1;
    v19 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v18[-1] = v17;
      *v18 = v17;
      v18 += 2;
      v19 -= 4;
    }

    while (v19);
    if (v14 != (v14 & 0xFFFFFFFFFFFFFFFCLL))
    {
LABEL_33:
      do
      {
        *result++ = v15;
        --v16;
      }

      while (v16);
    }
  }

  v9 = a2 >= v13;
  v20 = a2 - v13;
  if (v20 != 0 && v9)
  {
    if ((v20 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      v21 = &v11[v20];
      v22 = *a3;
      v23 = 8 * a2 - v12 - 8;
      if (v23 < 0x18)
      {
        goto LABEL_34;
      }

      v24 = (v23 >> 3) + 1;
      v25 = &v11[v24 & 0x3FFFFFFFFFFFFFFCLL];
      v26 = vdupq_lane_s64(v22, 0);
      v27 = (v11 + 2);
      v28 = v24 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v27[-1] = v26;
        *v27 = v26;
        v27 += 2;
        v28 -= 4;
      }

      while (v28);
      v11 = v25;
      if (v24 != (v24 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_34:
        do
        {
          *v11++ = v22;
        }

        while (v11 != v21);
      }

      a1[1] = v21;
    }

    else
    {
      a1[1] = v11;
    }
  }

  else
  {
    a1[1] = (v6 + 8 * a2);
  }

  return result;
}

uint64_t operations_research::sat::CompiledBoolXorConstraint::ComputeViolation(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (*(v2 + 60) == 5)
  {
    v3 = *(v2 + 48);
    v4 = *(v3 + 4);
    if (v4)
    {
      goto LABEL_3;
    }

    return 1;
  }

  v3 = &operations_research::sat::_BoolArgumentProto_default_instance_;
  v4 = dword_2810BF048;
  if (!dword_2810BF048)
  {
    return 1;
  }

LABEL_3:
  v5 = 0;
  v6 = v3[3];
  v7 = 4 * v4;
  do
  {
    while (1)
    {
      v8 = *v6;
      if ((v8 & 0x80000000) == 0)
      {
        break;
      }

      v5 += *(a2 + 8 * ~v8) == 0;
      v6 = (v6 + 4);
      v7 -= 4;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v5 += *(a2 + 8 * v8) != 0;
    v6 = (v6 + 4);
    v7 -= 4;
  }

  while (v7);
LABEL_7:
  if (v5 >= 0)
  {
    v9 = v5 & 1;
  }

  else
  {
    v9 = -(v5 & 1);
  }

  return 1 - v9;
}

uint64_t operations_research::sat::CompiledBoolXorConstraint::ViolationDelta(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

uint64_t operations_research::sat::CompiledLinMaxConstraint::ComputeViolation(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 60);
  if (v3 == 27)
  {
    v4 = *(v2 + 48);
  }

  else
  {
    v4 = &operations_research::sat::_LinearArgumentProto_default_instance_;
  }

  v5 = v4[6];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  v7 = v6[8];
  v8 = *(v6 + 4);
  if (v8 >= 1)
  {
    v9 = v6[3];
    v10 = v6[6];
    if (v8 == 1)
    {
      v11 = 0;
LABEL_13:
      v16 = v8 - v11;
      v17 = &v10[v11];
      v18 = v9 + v11;
      do
      {
        v19 = *v18++;
        v20 = *(a2 + 8 * v19);
        v21 = *v17++;
        v7 = (v7 + v21 * v20);
        --v16;
      }

      while (v16);
      goto LABEL_15;
    }

    v12 = 0;
    v11 = v8 & 0x7FFFFFFE;
    v13 = v9 + 1;
    v14 = v10 + 1;
    v15 = v11;
    do
    {
      v7 = (v7 + *(v14 - 1) * *(a2 + 8 * *(v13 - 1)));
      v12 += *v14 * *(a2 + 8 * *v13);
      v13 += 2;
      v14 += 2;
      v15 -= 2;
    }

    while (v15);
    v7 = (v7 + v12);
    if (v11 != v8)
    {
      goto LABEL_13;
    }
  }

LABEL_15:
  if (v3 == 27)
  {
    v22 = *(v2 + 48);
    v24 = *(v22 + 24);
    v23 = v22 + 24;
    v25 = (v24 + 7);
    if (v24)
    {
      v26 = v25;
    }

    else
    {
      v26 = v23;
    }

    v27 = *(v23 + 8);
    if (v27)
    {
LABEL_20:
      v28 = &v26[v27];
      v29 = 0x8000000000000000;
      while (1)
      {
        v30 = *v26;
        v31 = *(*v26 + 64);
        v32 = *(*v26 + 16);
        if (v32 >= 1)
        {
          v33 = *(v30 + 24);
          v34 = *(v30 + 48);
          if (v32 == 1)
          {
            v35 = 0;
          }

          else
          {
            v36 = 0;
            v35 = v32 & 0x7FFFFFFE;
            v37 = (v33 + 4);
            v38 = (v34 + 8);
            v39 = v35;
            do
            {
              v31 += *(v38 - 1) * *(a2 + 8 * *(v37 - 1));
              v36 += *v38 * *(a2 + 8 * *v37);
              v37 += 2;
              v38 += 2;
              v39 -= 2;
            }

            while (v39);
            v31 += v36;
            if (v35 == v32)
            {
              goto LABEL_21;
            }
          }

          v40 = v32 - v35;
          v41 = (v34 + 8 * v35);
          v42 = (v33 + 4 * v35);
          do
          {
            v43 = *v42++;
            v44 = *(a2 + 8 * v43);
            v45 = *v41++;
            v31 += v45 * v44;
            --v40;
          }

          while (v40);
        }

LABEL_21:
        if (v29 <= v31)
        {
          v29 = v31;
        }

        if (++v26 == v28)
        {
          return (v7 - v29) & ~((v7 - v29) >> 63);
        }
      }
    }
  }

  else
  {
    if (qword_2810BEFF0)
    {
      v26 = (qword_2810BEFF0 + 7);
    }

    else
    {
      v26 = &qword_2810BEFF0;
    }

    v27 = dword_2810BEFF8;
    if (dword_2810BEFF8)
    {
      goto LABEL_20;
    }
  }

  v29 = 0x8000000000000000;
  return (v7 - v29) & ~((v7 - v29) >> 63);
}

uint64_t operations_research::sat::CompiledIntProdConstraint::ComputeViolation(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 60);
  if (v3 == 11)
  {
    v4 = *(v2 + 48);
  }

  else
  {
    v4 = &operations_research::sat::_LinearArgumentProto_default_instance_;
  }

  v5 = v4[6];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  v7 = v6[8];
  v8 = *(v6 + 4);
  if (v8 >= 1)
  {
    v9 = v6[3];
    v10 = v6[6];
    if (v8 == 1)
    {
      v11 = 0;
LABEL_13:
      v16 = v8 - v11;
      v17 = &v10[v11];
      v18 = v9 + v11;
      do
      {
        v19 = *v18++;
        v20 = *(a2 + 8 * v19);
        v21 = *v17++;
        v7 = (v7 + v21 * v20);
        --v16;
      }

      while (v16);
      goto LABEL_15;
    }

    v12 = 0;
    v11 = v8 & 0x7FFFFFFE;
    v13 = v9 + 1;
    v14 = v10 + 1;
    v15 = v11;
    do
    {
      v7 = (v7 + *(v14 - 1) * *(a2 + 8 * *(v13 - 1)));
      v12 += *v14 * *(a2 + 8 * *v13);
      v13 += 2;
      v14 += 2;
      v15 -= 2;
    }

    while (v15);
    v7 = (v7 + v12);
    if (v11 != v8)
    {
      goto LABEL_13;
    }
  }

LABEL_15:
  if (v3 == 11)
  {
    v22 = *(v2 + 48);
    v24 = *(v22 + 24);
    v23 = v22 + 24;
    v25 = (v24 + 7);
    if (v24)
    {
      v26 = v25;
    }

    else
    {
      v26 = v23;
    }

    v27 = *(v23 + 8);
    if (v27)
    {
LABEL_20:
      v28 = &v26[v27];
      v29 = 1;
      while (1)
      {
        v30 = *v26;
        v31 = *(*v26 + 64);
        v32 = *(*v26 + 16);
        if (v32 >= 1)
        {
          v33 = *(v30 + 24);
          v34 = *(v30 + 48);
          if (v32 == 1)
          {
            v35 = 0;
          }

          else
          {
            v36 = 0;
            v35 = v32 & 0x7FFFFFFE;
            v37 = (v33 + 4);
            v38 = (v34 + 8);
            v39 = v35;
            do
            {
              v31 += *(v38 - 1) * *(a2 + 8 * *(v37 - 1));
              v36 += *v38 * *(a2 + 8 * *v37);
              v37 += 2;
              v38 += 2;
              v39 -= 2;
            }

            while (v39);
            v31 += v36;
            if (v35 == v32)
            {
              goto LABEL_21;
            }
          }

          v40 = v32 - v35;
          v41 = (v34 + 8 * v35);
          v42 = (v33 + 4 * v35);
          do
          {
            v43 = *v42++;
            v44 = *(a2 + 8 * v43);
            v45 = *v41++;
            v31 += v45 * v44;
            --v40;
          }

          while (v40);
        }

LABEL_21:
        v29 *= v31;
        if (++v26 == v28)
        {
          goto LABEL_36;
        }
      }
    }
  }

  else
  {
    if (qword_2810BEFF0)
    {
      v26 = (qword_2810BEFF0 + 7);
    }

    else
    {
      v26 = &qword_2810BEFF0;
    }

    v27 = dword_2810BEFF8;
    if (dword_2810BEFF8)
    {
      goto LABEL_20;
    }
  }

  v29 = 1;
LABEL_36:
  v46 = v7 - v29;
  if (v46 >= 0)
  {
    return v46;
  }

  else
  {
    return -v46;
  }
}

uint64_t operations_research::sat::CompiledIntDivConstraint::ComputeViolation(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 60);
  if (v3 == 7)
  {
    v4 = *(v2 + 48);
  }

  else
  {
    v4 = &operations_research::sat::_LinearArgumentProto_default_instance_;
  }

  v5 = v4[6];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  v7 = v6[8];
  v8 = *(v6 + 4);
  if (v8 < 1)
  {
    goto LABEL_15;
  }

  v9 = v6[3];
  v10 = v6[6];
  if (v8 == 1)
  {
    v11 = 0;
  }

  else
  {
    v12 = 0;
    v11 = v8 & 0x7FFFFFFE;
    v13 = v9 + 1;
    v14 = v10 + 1;
    v15 = v11;
    do
    {
      v7 = (v7 + *(v14 - 1) * *(a2 + 8 * *(v13 - 1)));
      v12 += *v14 * *(a2 + 8 * *v13);
      v13 += 2;
      v14 += 2;
      v15 -= 2;
    }

    while (v15);
    v7 = (v7 + v12);
    if (v11 == v8)
    {
      goto LABEL_15;
    }
  }

  v16 = v8 - v11;
  v17 = &v10[v11];
  v18 = v9 + v11;
  do
  {
    v19 = *v18++;
    v20 = *(a2 + 8 * v19);
    v21 = *v17++;
    v7 = (v7 + v21 * v20);
    --v16;
  }

  while (v16);
LABEL_15:
  if (v3 == 7)
  {
    v22 = *(v2 + 48);
  }

  else
  {
    v22 = &operations_research::sat::_LinearArgumentProto_default_instance_;
  }

  v24 = v22[3];
  v23 = v22 + 3;
  v25 = (v24 + 7);
  if (v24)
  {
    v23 = v25;
  }

  v26 = *v23;
  v27 = (*v23)[8];
  v28 = *(v26 + 4);
  if (v28 >= 1)
  {
    v29 = v26[3];
    v30 = v26[6];
    if (v28 == 1)
    {
      v31 = 0;
    }

    else
    {
      v32 = 0;
      v31 = v28 & 0x7FFFFFFE;
      v33 = (v29 + 4);
      v34 = (v30 + 8);
      v35 = v31;
      do
      {
        v27 = (v27 + *(v34 - 1) * *(a2 + 8 * *(v33 - 1)));
        v32 += *v34 * *(a2 + 8 * *v33);
        v33 += 2;
        v34 += 2;
        v35 -= 2;
      }

      while (v35);
      v27 = (v27 + v32);
      if (v31 == v28)
      {
        goto LABEL_28;
      }
    }

    v36 = v28 - v31;
    v37 = (v30 + 8 * v31);
    v38 = (v29 + 4 * v31);
    do
    {
      v39 = *v38++;
      v40 = *(a2 + 8 * v39);
      v41 = *v37++;
      v27 = (v27 + v41 * v40);
      --v36;
    }

    while (v36);
  }

LABEL_28:
  if (v3 == 7)
  {
    v42 = *(v2 + 48);
  }

  else
  {
    v42 = &operations_research::sat::_LinearArgumentProto_default_instance_;
  }

  v44 = v42[3];
  v43 = v42 + 3;
  v45 = (v44 + 15);
  if (v44)
  {
    v43 = v45;
  }

  v46 = *v43;
  v47 = (*v43)[8];
  v48 = *(v46 + 4);
  if (v48 >= 1)
  {
    v49 = v46[3];
    v50 = v46[6];
    if (v48 == 1)
    {
      v51 = 0;
    }

    else
    {
      v52 = 0;
      v51 = v48 & 0x7FFFFFFE;
      v53 = (v49 + 4);
      v54 = (v50 + 8);
      v55 = v51;
      do
      {
        v47 += *(v54 - 1) * *(a2 + 8 * *(v53 - 1));
        v52 += *v54 * *(a2 + 8 * *v53);
        v53 += 2;
        v54 += 2;
        v55 -= 2;
      }

      while (v55);
      v47 += v52;
      if (v51 == v48)
      {
        goto LABEL_41;
      }
    }

    v56 = v48 - v51;
    v57 = (v50 + 8 * v51);
    v58 = (v49 + 4 * v51);
    do
    {
      v59 = *v58++;
      v60 = *(a2 + 8 * v59);
      v61 = *v57++;
      v47 += v61 * v60;
      --v56;
    }

    while (v56);
  }

LABEL_41:
  v62 = v7 - v27 / v47;
  if (v62 >= 0)
  {
    return v62;
  }

  else
  {
    return -v62;
  }
}

uint64_t operations_research::sat::CompiledIntModConstraint::ComputeViolation(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 60);
  if (v3 == 8)
  {
    v4 = *(v2 + 48);
  }

  else
  {
    v4 = &operations_research::sat::_LinearArgumentProto_default_instance_;
  }

  v5 = v4[6];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  v7 = v6[8];
  v8 = *(v6 + 4);
  if (v8 < 1)
  {
    goto LABEL_15;
  }

  v9 = v6[3];
  v10 = v6[6];
  if (v8 == 1)
  {
    v11 = 0;
  }

  else
  {
    v12 = 0;
    v11 = v8 & 0x7FFFFFFE;
    v13 = v9 + 1;
    v14 = v10 + 1;
    v15 = v11;
    do
    {
      v7 += *(v14 - 1) * *(a2 + 8 * *(v13 - 1));
      v12 += *v14 * *(a2 + 8 * *v13);
      v13 += 2;
      v14 += 2;
      v15 -= 2;
    }

    while (v15);
    v7 += v12;
    if (v11 == v8)
    {
      goto LABEL_15;
    }
  }

  v16 = v8 - v11;
  v17 = &v10[v11];
  v18 = v9 + v11;
  do
  {
    v19 = *v18++;
    v20 = *(a2 + 8 * v19);
    v21 = *v17++;
    v7 += v21 * v20;
    --v16;
  }

  while (v16);
LABEL_15:
  if (v3 == 8)
  {
    v22 = *(v2 + 48);
  }

  else
  {
    v22 = &operations_research::sat::_LinearArgumentProto_default_instance_;
  }

  v24 = v22[3];
  v23 = v22 + 3;
  v25 = (v24 + 7);
  if (v24)
  {
    v23 = v25;
  }

  v26 = *v23;
  v27 = (*v23)[8];
  v28 = *(v26 + 4);
  if (v28 >= 1)
  {
    v29 = v26[3];
    v30 = v26[6];
    if (v28 == 1)
    {
      v31 = 0;
    }

    else
    {
      v32 = 0;
      v31 = v28 & 0x7FFFFFFE;
      v33 = (v29 + 4);
      v34 = (v30 + 8);
      v35 = v31;
      do
      {
        v27 += *(v34 - 1) * *(a2 + 8 * *(v33 - 1));
        v32 += *v34 * *(a2 + 8 * *v33);
        v33 += 2;
        v34 += 2;
        v35 -= 2;
      }

      while (v35);
      v27 += v32;
      if (v31 == v28)
      {
        goto LABEL_28;
      }
    }

    v36 = v28 - v31;
    v37 = (v30 + 8 * v31);
    v38 = (v29 + 4 * v31);
    do
    {
      v39 = *v38++;
      v40 = *(a2 + 8 * v39);
      v41 = *v37++;
      v27 += v41 * v40;
      --v36;
    }

    while (v36);
  }

LABEL_28:
  if (v3 == 8)
  {
    v42 = *(v2 + 48);
  }

  else
  {
    v42 = &operations_research::sat::_LinearArgumentProto_default_instance_;
  }

  v44 = v42[3];
  v43 = v42 + 3;
  v45 = (v44 + 15);
  if (v44)
  {
    v43 = v45;
  }

  v46 = *v43;
  v47 = (*v43)[8];
  v48 = *(v46 + 4);
  if (v48 >= 1)
  {
    v49 = v46[3];
    v50 = v46[6];
    if (v48 == 1)
    {
      v51 = 0;
    }

    else
    {
      v52 = 0;
      v51 = v48 & 0x7FFFFFFE;
      v53 = (v49 + 4);
      v54 = (v50 + 8);
      v55 = v51;
      do
      {
        v47 = (v47 + *(v54 - 1) * *(a2 + 8 * *(v53 - 1)));
        v52 += *v54 * *(a2 + 8 * *v53);
        v53 += 2;
        v54 += 2;
        v55 -= 2;
      }

      while (v55);
      v47 = (v47 + v52);
      if (v51 == v48)
      {
        goto LABEL_41;
      }
    }

    v56 = v48 - v51;
    v57 = (v50 + 8 * v51);
    v58 = (v49 + 4 * v51);
    do
    {
      v59 = *v58++;
      v60 = *(a2 + 8 * v59);
      v61 = *v57++;
      v47 = (v47 + v61 * v60);
      --v56;
    }

    while (v56);
  }

LABEL_41:
  if ((v27 < 0 || v7 < 0) && (v27 > 0 || v7 > 0))
  {
    if (v7 < 0)
    {
      v7 = -v7;
    }

    if (v27 >= 0)
    {
      v71 = v27;
    }

    else
    {
      v71 = -v27;
    }

    return v71 + v7;
  }

  else
  {
    v62 = v27 % v47;
    v63 = v7 - v27 % v47;
    if (v63 < 0)
    {
      v63 = -v63;
    }

    if (v7 >= 0)
    {
      v64 = v7;
    }

    else
    {
      v64 = -v7;
    }

    v65 = v47 - v62;
    if (v47 - v62 < 0)
    {
      v65 = v62 - v47;
    }

    v66 = v65 + v64;
    if (v62 < 0)
    {
      v62 = -v62;
    }

    v67 = v47 - v7;
    if (v67 < 0)
    {
      v67 = -v67;
    }

    v68 = v62 + v67;
    if (v66 >= v63)
    {
      v69 = v63;
    }

    else
    {
      v69 = v66;
    }

    if (v68 >= v69)
    {
      return v69;
    }

    else
    {
      return v68;
    }
  }
}

uint64_t operations_research::sat::CompiledAllDiffConstraint::ComputeViolation(void *a1, uint64_t a2)
{
  v4 = (a1 + 3);
  a1[4] = a1[3];
  v5 = a1[1];
  if (*(v5 + 60) == 13)
  {
    v6 = *(v5 + 48);
    v8 = *(v6 + 16);
    v7 = v6 + 16;
    v9 = (v8 + 7);
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    v11 = *(v7 + 8);
    if (v11)
    {
LABEL_6:
      v12 = &v10[v11];
      while (1)
      {
        v13 = *v10;
        v14 = *(*v10 + 64);
        v15 = *(*v10 + 16);
        if (v15 >= 1)
        {
          v16 = *(v13 + 24);
          v17 = *(v13 + 48);
          if (v15 == 1)
          {
            v18 = 0;
          }

          else
          {
            v19 = 0;
            v18 = v15 & 0x7FFFFFFE;
            v20 = (v16 + 4);
            v21 = (v17 + 8);
            v22 = v18;
            do
            {
              v14 += *(v21 - 1) * *(a2 + 8 * *(v20 - 1));
              v19 += *v21 * *(a2 + 8 * *v20);
              v20 += 2;
              v21 += 2;
              v22 -= 2;
            }

            while (v22);
            v14 += v19;
            if (v18 == v15)
            {
              goto LABEL_7;
            }
          }

          v23 = v15 - v18;
          v24 = (v17 + 8 * v18);
          v25 = (v16 + 4 * v18);
          do
          {
            v26 = *v25++;
            v27 = *(a2 + 8 * v26);
            v28 = *v24++;
            v14 += v28 * v27;
            --v23;
          }

          while (v23);
        }

LABEL_7:
        v41 = v14;
        std::vector<long long>::push_back[abi:ne200100](v4, &v41);
        if (++v10 == v12)
        {
          v29 = a1[3];
          v30 = a1[4];
          break;
        }
      }
    }
  }

  else
  {
    if (qword_2810BEA10)
    {
      v10 = (qword_2810BEA10 + 7);
    }

    else
    {
      v10 = &qword_2810BEA10;
    }

    v11 = dword_2810BEA18;
    if (dword_2810BEA18)
    {
      goto LABEL_6;
    }
  }

  std::__sort<std::__less<long long,long long> &,long long *>();
  v31 = a1[3];
  v32 = (a1[4] - v31) >> 3;
  if (v32 < 2)
  {
    v33 = 0;
    v37 = 1;
  }

  else
  {
    v33 = 0;
    v34 = *v31;
    v35 = 2;
    v36 = 1;
    v37 = 1;
    do
    {
      v38 = v31[v36];
      v39 = v33 + (v37 - 1) * v37 / 2;
      if (v38 == v34)
      {
        ++v37;
      }

      else
      {
        v37 = 1;
      }

      if (v38 != v34)
      {
        v33 = v39;
        v34 = v38;
      }

      v36 = v35++;
    }

    while (v32 > v36);
  }

  return v33 + (v37 - 1) * v37 / 2;
}

uint64_t operations_research::sat::CompiledNoOverlapConstraint::ComputeViolation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = *(v5 + 60);
  if (v6 == 20)
  {
    v7 = *(v5 + 48);
    v8 = *(v7 + 4);
    if (v8 != 2)
    {
    }
  }

  else
  {
    v7 = &operations_research::sat::_NoOverlapConstraintProto_default_instance_;
    v8 = dword_2810BEB80;
    if (dword_2810BEB80 != 2)
    {
    }
  }

  v10 = *(a1 + 24);
  v11 = *v7[3];
  v14 = *(v10 + 48);
  v12 = (v10 + 48);
  v13 = v14;
  v15 = v14 + 7;
  v16 = (v14 + 7 + 8 * v11);
  if ((v14 & 1) == 0)
  {
    v16 = v12;
  }

  v17 = *v16;
  if (v6 == 20)
  {
    v18 = *(v5 + 48);
  }

  else
  {
    v18 = &operations_research::sat::_NoOverlapConstraintProto_default_instance_;
  }

  v19 = (v15 + 8 * *(v18[3] + 1));
  if ((v13 & 1) == 0)
  {
    v19 = v12;
  }

  v20 = *v19;
}

uint64_t operations_research::sat::anonymous namespace::ComputeOverlap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(a1 + 24);
    for (i = 4 * v3; i; i -= 4)
    {
      v6 = *v4;
      if ((v6 & 0x80000000) != 0)
      {
        if (*(a3 + 8 * ~v6))
        {
          return 0;
        }
      }

      else if (!*(a3 + 8 * v6))
      {
        return 0;
      }

      ++v4;
    }
  }

  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = *(a2 + 24);
    for (j = 4 * v7; j; j -= 4)
    {
      v10 = *v8;
      if ((v10 & 0x80000000) != 0)
      {
        if (*(a3 + 8 * ~v10))
        {
          return 0;
        }
      }

      else if (!*(a3 + 8 * v10))
      {
        return 0;
      }

      ++v8;
    }
  }

  if (*(a1 + 60) == 19)
  {
    v11 = *(a1 + 48);
  }

  else
  {
    v11 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
  }

  if (v11[3])
  {
    v12 = v11[3];
  }

  else
  {
    v12 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  v13 = v12[8];
  v14 = *(v12 + 4);
  if (v14 >= 1)
  {
    v15 = v12[3];
    v16 = v12[6];
    if (v14 == 1)
    {
      v17 = 0;
    }

    else
    {
      v18 = 0;
      v17 = v14 & 0x7FFFFFFE;
      v19 = v15 + 1;
      v20 = v16 + 1;
      v21 = v17;
      do
      {
        v13 = (v13 + *(v20 - 1) * *(a3 + 8 * *(v19 - 1)));
        v18 += *v20 * *(a3 + 8 * *v19);
        v19 += 2;
        v20 += 2;
        v21 -= 2;
      }

      while (v21);
      v13 = (v13 + v18);
      if (v17 == v14)
      {
        goto LABEL_29;
      }
    }

    v22 = v14 - v17;
    v23 = &v16[v17];
    v24 = v15 + v17;
    do
    {
      v25 = *v24++;
      v26 = *(a3 + 8 * v25);
      v27 = *v23++;
      v13 = (v13 + v27 * v26);
      --v22;
    }

    while (v22);
  }

LABEL_29:
  if (v11[5])
  {
    v28 = v11[5];
  }

  else
  {
    v28 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  v29 = v28[8];
  v30 = *(v28 + 4);
  if (v30 >= 1)
  {
    v31 = v28[3];
    v32 = v28[6];
    if (v30 == 1)
    {
      v33 = 0;
    }

    else
    {
      v34 = 0;
      v33 = v30 & 0x7FFFFFFE;
      v35 = v31 + 1;
      v36 = v32 + 1;
      v37 = v33;
      do
      {
        v29 = (v29 + *(v36 - 1) * *(a3 + 8 * *(v35 - 1)));
        v34 += *v36 * *(a3 + 8 * *v35);
        v35 += 2;
        v36 += 2;
        v37 -= 2;
      }

      while (v37);
      v29 = (v29 + v34);
      if (v33 == v30)
      {
        goto LABEL_40;
      }
    }

    v38 = v30 - v33;
    v39 = &v32[v33];
    v40 = v31 + v33;
    do
    {
      v41 = *v40++;
      v42 = *(a3 + 8 * v41);
      v43 = *v39++;
      v29 = (v29 + v43 * v42);
      --v38;
    }

    while (v38);
  }

LABEL_40:
  v44 = (v13 + v29);
  v45 = v11[4];
  if (v45)
  {
    v46 = v45;
  }

  else
  {
    v46 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  v47 = v46[8];
  v48 = *(v46 + 4);
  if (v48 >= 1)
  {
    v49 = v46[3];
    v50 = v46[6];
    if (v48 == 1)
    {
      v51 = 0;
LABEL_49:
      v56 = v48 - v51;
      v57 = &v50[v51];
      v58 = v49 + v51;
      do
      {
        v59 = *v58++;
        v60 = *(a3 + 8 * v59);
        v61 = *v57++;
        v47 = (v47 + v61 * v60);
        --v56;
      }

      while (v56);
      goto LABEL_51;
    }

    v52 = 0;
    v51 = v48 & 0x7FFFFFFE;
    v53 = v49 + 1;
    v54 = v50 + 1;
    v55 = v51;
    do
    {
      v47 = (v47 + *(v54 - 1) * *(a3 + 8 * *(v53 - 1)));
      v52 += *v54 * *(a3 + 8 * *v53);
      v53 += 2;
      v54 += 2;
      v55 -= 2;
    }

    while (v55);
    v47 = (v47 + v52);
    if (v51 != v48)
    {
      goto LABEL_49;
    }
  }

LABEL_51:
  if (v47 >= v44)
  {
    v47 = v44;
  }

  if (*(a2 + 60) == 19)
  {
    v62 = *(a2 + 48);
  }

  else
  {
    v62 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
  }

  if (v62[3])
  {
    v63 = v62[3];
  }

  else
  {
    v63 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  v64 = v63[8];
  v65 = *(v63 + 4);
  if (v65 >= 1)
  {
    v66 = v63[3];
    v67 = v63[6];
    if (v65 == 1)
    {
      v68 = 0;
    }

    else
    {
      v69 = 0;
      v68 = v65 & 0x7FFFFFFE;
      v70 = v66 + 1;
      v71 = v67 + 1;
      v72 = v68;
      do
      {
        v64 = (v64 + *(v71 - 1) * *(a3 + 8 * *(v70 - 1)));
        v69 += *v71 * *(a3 + 8 * *v70);
        v70 += 2;
        v71 += 2;
        v72 -= 2;
      }

      while (v72);
      v64 = (v64 + v69);
      if (v68 == v65)
      {
        goto LABEL_67;
      }
    }

    v73 = v65 - v68;
    v74 = &v67[v68];
    v75 = v66 + v68;
    do
    {
      v76 = *v75++;
      v77 = *(a3 + 8 * v76);
      v78 = *v74++;
      v64 = (v64 + v78 * v77);
      --v73;
    }

    while (v73);
  }

LABEL_67:
  if (v62[5])
  {
    v79 = v62[5];
  }

  else
  {
    v79 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  v80 = v79[8];
  v81 = *(v79 + 4);
  if (v81 >= 1)
  {
    v82 = v79[3];
    v83 = v79[6];
    if (v81 == 1)
    {
      v84 = 0;
    }

    else
    {
      v85 = 0;
      v84 = v81 & 0x7FFFFFFE;
      v86 = v82 + 1;
      v87 = v83 + 1;
      v88 = v84;
      do
      {
        v80 = (v80 + *(v87 - 1) * *(a3 + 8 * *(v86 - 1)));
        v85 += *v87 * *(a3 + 8 * *v86);
        v86 += 2;
        v87 += 2;
        v88 -= 2;
      }

      while (v88);
      v80 = (v80 + v85);
      if (v84 == v81)
      {
        goto LABEL_78;
      }
    }

    v89 = v81 - v84;
    v90 = &v83[v84];
    v91 = v82 + v84;
    do
    {
      v92 = *v91++;
      v93 = *(a3 + 8 * v92);
      v94 = *v90++;
      v80 = (v80 + v94 * v93);
      --v89;
    }

    while (v89);
  }

LABEL_78:
  v95 = (v64 + v80);
  v96 = v62[4];
  if (v96)
  {
    v97 = v96;
  }

  else
  {
    v97 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  v98 = v97[8];
  v99 = *(v97 + 4);
  if (v99 >= 1)
  {
    v100 = v97[3];
    v101 = v97[6];
    if (v99 == 1)
    {
      v102 = 0;
    }

    else
    {
      v103 = 0;
      v102 = v99 & 0x7FFFFFFE;
      v104 = v100 + 1;
      v105 = v101 + 1;
      v106 = v102;
      do
      {
        v98 = (v98 + *(v105 - 1) * *(a3 + 8 * *(v104 - 1)));
        v103 += *v105 * *(a3 + 8 * *v104);
        v104 += 2;
        v105 += 2;
        v106 -= 2;
      }

      while (v106);
      v98 = (v98 + v103);
      if (v102 == v99)
      {
        goto LABEL_89;
      }
    }

    v107 = v99 - v102;
    v108 = &v101[v102];
    v109 = v100 + v102;
    do
    {
      v110 = *v109++;
      v111 = *(a3 + 8 * v110);
      v112 = *v108++;
      v98 = (v98 + v112 * v111);
      --v107;
    }

    while (v107);
  }

LABEL_89:
  if (v98 >= v95)
  {
    v113 = v95;
  }

  else
  {
    v113 = v98;
  }

  v114 = v113 - v13;
  if (v113 <= v13 || v47 <= v64)
  {
    return 0;
  }

  v117 = v113 - v64;
  v118 = v47 - v13;
  v119 = v47 - v64;
  if (v119 < v114)
  {
    v114 = v119;
  }

  if (v118 >= v117)
  {
    v118 = v117;
  }

  if (v114 < v118)
  {
    v118 = v114;
  }

  if (v118 <= 1)
  {
    return 1;
  }

  else
  {
    return v118;
  }
}

unint64_t operations_research::sat::anonymous namespace::ComputeOverloadArea(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *a9;
  *(a9 + 8) = *a9;
  if (!a2)
  {
    return 0;
  }

  v11 = 0;
  v12 = 0;
  v13 = (a5 + 48);
  v123 = a2;
  v124 = a4;
  v121 = (a5 + 48);
  v122 = a1;
  do
  {
    v14 = (*v13 + 8 * *(a1 + 4 * v11) + 7);
    if ((*v13 & 1) == 0)
    {
      v14 = v13;
    }

    v15 = *v14;
    if (*(v15 + 16))
    {
      v16 = **(v15 + 24);
      if ((v16 & 0x80000000) != 0)
      {
        if (*(a6 + 8 * ~v16))
        {
          goto LABEL_5;
        }
      }

      else if (!*(a6 + 8 * v16))
      {
        goto LABEL_5;
      }
    }

    if (!a4)
    {
      v18 = 1;
      goto LABEL_24;
    }

    v17 = *(a3 + 8 * v11);
    v18 = *(v17 + 64);
    v19 = *(v17 + 16);
    if (v19 >= 1)
    {
      v20 = *(v17 + 24);
      v21 = *(v17 + 48);
      if (v19 == 1)
      {
        v22 = 0;
LABEL_21:
        v27 = v19 - v22;
        v28 = (v21 + 8 * v22);
        v29 = (v20 + 4 * v22);
        do
        {
          v30 = *v29++;
          v31 = *(a6 + 8 * v30);
          v32 = *v28++;
          v18 += v32 * v31;
          --v27;
        }

        while (v27);
        goto LABEL_23;
      }

      v23 = 0;
      v22 = v19 & 0x7FFFFFFE;
      v24 = (v20 + 4);
      v25 = (v21 + 8);
      v26 = v22;
      do
      {
        v18 += *(v25 - 1) * *(a6 + 8 * *(v24 - 1));
        v23 += *v25 * *(a6 + 8 * *v24);
        v24 += 2;
        v25 += 2;
        v26 -= 2;
      }

      while (v26);
      v18 += v23;
      if (v22 != v19)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    if (!v18)
    {
      goto LABEL_5;
    }

LABEL_24:
    v33 = *(v15 + 60);
    v34 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
    if (v33 == 19)
    {
      v34 = *(v15 + 48);
    }

    v35 = v34[3];
    if (v35)
    {
      v36 = v35;
    }

    else
    {
      v36 = &operations_research::sat::_LinearExpressionProto_default_instance_;
    }

    v37 = v36[8];
    v38 = *(v36 + 4);
    if (v38 >= 1)
    {
      v39 = v36[3];
      v40 = v36[6];
      if (v38 == 1)
      {
        v41 = 0;
LABEL_35:
        v46 = v38 - v41;
        v47 = &v40[v41];
        v48 = v39 + v41;
        do
        {
          v49 = *v48++;
          v50 = *(a6 + 8 * v49);
          v51 = *v47++;
          v37 = (v37 + v51 * v50);
          --v46;
        }

        while (v46);
        goto LABEL_37;
      }

      v42 = 0;
      v41 = v38 & 0x7FFFFFFE;
      v43 = v39 + 1;
      v44 = v40 + 1;
      v45 = v41;
      do
      {
        v37 = (v37 + *(v44 - 1) * *(a6 + 8 * *(v43 - 1)));
        v42 += *v44 * *(a6 + 8 * *v43);
        v43 += 2;
        v44 += 2;
        v45 -= 2;
      }

      while (v45);
      v37 = (v37 + v42);
      if (v41 != v38)
      {
        goto LABEL_35;
      }
    }

LABEL_37:
    v52 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
    if (v33 == 19)
    {
      v52 = *(v15 + 48);
    }

    v53 = v52[5];
    if (v53)
    {
      v54 = v53;
    }

    else
    {
      v54 = &operations_research::sat::_LinearExpressionProto_default_instance_;
    }

    v55 = v54[8];
    v56 = *(v54 + 4);
    if (v56 >= 1)
    {
      v57 = v54[3];
      v58 = v54[6];
      if (v56 == 1)
      {
        v59 = 0;
LABEL_48:
        v64 = v56 - v59;
        v65 = &v58[v59];
        v66 = v57 + v59;
        do
        {
          v67 = *v66++;
          v68 = *(a6 + 8 * v67);
          v69 = *v65++;
          v55 = (v55 + v69 * v68);
          --v64;
        }

        while (v64);
        goto LABEL_50;
      }

      v60 = 0;
      v59 = v56 & 0x7FFFFFFE;
      v61 = v57 + 1;
      v62 = v58 + 1;
      v63 = v59;
      do
      {
        v55 = (v55 + *(v62 - 1) * *(a6 + 8 * *(v61 - 1)));
        v60 += *v62 * *(a6 + 8 * *v61);
        v61 += 2;
        v62 += 2;
        v63 -= 2;
      }

      while (v63);
      v55 = (v55 + v60);
      if (v59 != v56)
      {
        goto LABEL_48;
      }
    }

LABEL_50:
    v70 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
    if (v33 == 19)
    {
      v70 = *(v15 + 48);
    }

    if (v70[4])
    {
      v71 = v70[4];
    }

    else
    {
      v71 = &operations_research::sat::_LinearExpressionProto_default_instance_;
    }

    v72 = v71[8];
    v73 = *(v71 + 4);
    if (v73 >= 1)
    {
      v74 = v71[3];
      v75 = v71[6];
      if (v73 == 1)
      {
        v76 = 0;
      }

      else
      {
        v77 = 0;
        v76 = v73 & 0x7FFFFFFE;
        v78 = v74 + 1;
        v79 = v75 + 1;
        v80 = v76;
        do
        {
          v72 = (v72 + *(v79 - 1) * *(a6 + 8 * *(v78 - 1)));
          v77 += *v79 * *(a6 + 8 * *v78);
          v78 += 2;
          v79 += 2;
          v80 -= 2;
        }

        while (v80);
        v72 = (v72 + v77);
        if (v76 == v73)
        {
          goto LABEL_63;
        }
      }

      v81 = v73 - v76;
      v82 = &v75[v76];
      v83 = v74 + v76;
      do
      {
        v84 = *v83++;
        v85 = *(a6 + 8 * v84);
        v86 = *v82++;
        v72 = (v72 + v86 * v85);
        --v81;
      }

      while (v81);
    }

LABEL_63:
    if ((v37 + v55) <= v72)
    {
      v87 = v72;
    }

    else
    {
      v87 = (v37 + v55);
    }

    if (v37 < v87)
    {
      v88 = *(a9 + 16);
      if (v9 >= v88)
      {
        v91 = *a9;
        v92 = v9 - *a9;
        v93 = v92 >> 4;
        v94 = (v92 >> 4) + 1;
        if (v94 >> 60)
        {
          goto LABEL_112;
        }

        if ((v88 - v91) >> 3 > v94)
        {
          v94 = (v88 - v91) >> 3;
        }

        if (v88 - v91 >= 0x7FFFFFFFFFFFFFF0)
        {
          v95 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v95 = v94;
        }

        if (v95)
        {
          if (!(v95 >> 60))
          {
            operator new();
          }

LABEL_113:
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v96 = (16 * v93);
        v88 = 0;
        *v96 = v37;
        v96[1] = v18;
        v89 = (16 * v93 + 16);
        memcpy(0, v91, v92);
        *a9 = 0;
        *(a9 + 8) = v89;
        *(a9 + 16) = 0;
        if (v91)
        {
          operator delete(v91);
          v88 = *(a9 + 16);
        }

        a2 = v123;
        a4 = v124;
        v13 = v121;
        a1 = v122;
        *(a9 + 8) = v89;
        v90 = -v18;
        if (v89 < v88)
        {
          goto LABEL_3;
        }

LABEL_82:
        v97 = *a9;
        v98 = v89 - *a9;
        v99 = v98 >> 4;
        v100 = (v98 >> 4) + 1;
        if (v100 >> 60)
        {
LABEL_112:
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if ((v88 - v97) >> 3 > v100)
        {
          v100 = (v88 - v97) >> 3;
        }

        if (v88 - v97 >= 0x7FFFFFFFFFFFFFF0)
        {
          v101 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v101 = v100;
        }

        if (v101)
        {
          if (!(v101 >> 60))
          {
            operator new();
          }

          goto LABEL_113;
        }

        v102 = (16 * v99);
        *v102 = v87;
        v102[1] = v90;
        v9 = (16 * v99 + 16);
        v103 = &v102[-2 * (v98 >> 4)];
        memcpy(v103, v97, v98);
        *a9 = v103;
        *(a9 + 8) = v9;
        *(a9 + 16) = 0;
        if (v97)
        {
          operator delete(v97);
        }

        a2 = v123;
        a4 = v124;
        v13 = v121;
        a1 = v122;
      }

      else
      {
        *v9 = v37;
        v9[1] = v18;
        v89 = (v9 + 2);
        *(a9 + 8) = v9 + 2;
        v90 = -v18;
        if ((v9 + 2) >= v88)
        {
          goto LABEL_82;
        }

LABEL_3:
        *v89 = v87;
        v89[1] = v90;
        v9 = (v89 + 2);
      }

      *(a9 + 8) = v9;
    }

LABEL_5:
    v11 = ++v12;
  }

  while (a2 > v12);
  if (*a9 == v9)
  {
    return 0;
  }

  v104 = *a9;
  v105 = *(a9 + 8);
  v106 = v105 - *a9;
  if (v105 == *a9)
  {
    return 0;
  }

  v107 = 0;
  v108 = 0;
  v109 = 0;
  result = 0;
  v111 = v106 >> 4;
  v112 = *v104;
  do
  {
    v113 = v104[2 * v107];
    v114 = v109 - a8;
    if (v109 > a8)
    {
      v115 = v113 - v112;
      if ((v114 * v115) >> 64 == (v114 * v115) >> 63)
      {
        v116 = v114 * v115;
      }

      else
      {
        v116 = ((v115 ^ v114) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      }

      v117 = __OFADD__(result, v116);
      v118 = result + v116;
      if (v117)
      {
        result = (result >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        result = v118;
      }
    }

    v107 = v108;
    if (v111 > v108)
    {
      while (1)
      {
        v119 = &v104[2 * v107];
        if (*v119 != v113)
        {
          break;
        }

        v109 += v119[1];
        v107 = ++v108;
        if (v111 <= v108)
        {
          goto LABEL_98;
        }
      }

      v107 = v108;
    }

LABEL_98:
    v112 = v113;
  }

  while (v111 > v107);
  return result;
}

unint64_t operations_research::sat::CompiledCumulativeConstraint::ComputeViolation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  if (*(v5 + 60) == 22)
  {
    v6 = *(v5 + 48);
  }

  else
  {
    v6 = &operations_research::sat::_CumulativeConstraintProto_default_instance_;
  }

  v7 = v6 + 6;
  v8 = v6[4];
  v9 = *(v6 + 6);
  v10 = v6[6];
  v11 = *(v6 + 14);
  v12 = v6[9];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  v14 = v13[8];
  v15 = *(v13 + 4);
  if (v15 < 1)
  {
    goto LABEL_15;
  }

  v16 = v13[3];
  v17 = v13[6];
  if (v15 == 1)
  {
    v18 = 0;
  }

  else
  {
    v19 = 0;
    v18 = v15 & 0x7FFFFFFE;
    v20 = v16 + 1;
    v21 = v17 + 1;
    v22 = v18;
    do
    {
      v14 += *(v21 - 1) * *(a2 + 8 * *(v20 - 1));
      v19 += *v21 * *(a2 + 8 * *v20);
      v20 += 2;
      v21 += 2;
      v22 -= 2;
    }

    while (v22);
    v14 += v19;
    if (v18 == v15)
    {
      goto LABEL_15;
    }
  }

  v23 = v15 - v18;
  v24 = &v17[v18];
  v25 = v16 + v18;
  do
  {
    v26 = *v25++;
    v27 = *(a2 + 8 * v26);
    v28 = *v24++;
    v14 += v28 * v27;
    --v23;
  }

  while (v23);
LABEL_15:
  if (v10)
  {
    v29 = v10 + 7;
  }

  else
  {
    v29 = v7;
  }
}

uint64_t operations_research::sat::CompiledNoOverlap2dConstraint::ComputeViolation(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 60);
  v5 = &operations_research::sat::_NoOverlap2DConstraintProto_default_instance_;
  if (v4 == 21)
  {
    v5 = *(v3 + 48);
  }

  v6 = *(v5 + 4);
  if (v6 < 2)
  {
    return 0;
  }

  v7 = *(*(a1 + 24) + 48);
  v8 = v7 + 7;
  if (v4 == 21)
  {
    v9 = (v6 - 1);
    if ((v7 & 1) == 0)
    {
      if (v10 > 0)
      {
        v11 = 0;
        v12 = v6 - 2;
        do
        {
          v11 += v10 * v10 + v10 * v10 * v12--;
          --v9;
        }

        while (v9);
        return v11;
      }

      do
      {
        --v9;
      }

      while (v9);
      return 0;
    }

    v18 = 0;
    v11 = 0;
    v35 = *(v3 + 48);
    v19 = *(v35 + 24);
    v20 = 1;
    do
    {
      v21 = *(v8 + 8 * *(v19 + 4 * v18));
      v34 = v20;
      do
      {
        while (1)
        {
          if (v22 >= 1)
          {
            break;
          }

          if (v6 == ++v20)
          {
            goto LABEL_19;
          }
        }
      }

      while (v6 != v20);
LABEL_19:
      v20 = v34 + 1;
      ++v18;
    }

    while (v18 != v6 - 1);
  }

  else
  {
    if ((v7 & 1) == 0)
    {
      if (v13 < 1)
      {
        return 0;
      }

      v14 = v13 * v13;
      v15 = v6 - 2;
      if (v6 == 2)
      {
        v11 = 0;
        v16 = 1;
      }

      else
      {
        v28 = 0;
        v29 = 0;
        v30 = (v6 - 1) & 0xFFFFFFFE;
        v15 -= v30;
        v16 = (v6 - 1) | 1;
        v31 = v6 - 3;
        v32 = v30;
        do
        {
          v28 += v14 + v14 * (v31 + 1);
          v29 += v14 + v14 * v31;
          v31 -= 2;
          v32 -= 2;
        }

        while (v32);
        v11 = v29 + v28;
        if (v6 - 1 == v30)
        {
          return v11;
        }
      }

      v33 = v6 - v16;
      do
      {
        v11 += v14 + v14 * v15--;
        --v33;
      }

      while (v33);
      return v11;
    }

    v23 = 0;
    v11 = 0;
    v24 = qword_2810BEA48;
    v25 = 1;
    do
    {
      v26 = *(v8 + 8 * *(v24 + 4 * v23));
      v36 = v25;
      do
      {
        while (1)
        {
          if (v27 >= 1)
          {
            break;
          }

          if (v6 == ++v25)
          {
            goto LABEL_26;
          }
        }
      }

      while (v6 != v25);
LABEL_26:
      v25 = v36 + 1;
      ++v23;
    }

    while (v23 != v6 - 1);
  }

  return v11;
}

operations_research::sat::CompiledCircuitConstraint *operations_research::sat::CompiledCircuitConstraint::CompiledCircuitConstraint(operations_research::sat::CompiledCircuitConstraint *this, const operations_research::sat::ConstraintProto *a2)
{
  *(this + 72) = 0u;
  *this = &unk_284F3C5F0;
  *(this + 1) = a2;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 84) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 33) = 0;
  v3 = *(a2 + 15);
  if (v3 == 23)
  {
    v10 = *(a2 + 6);
    v6 = *(v10 + 24);
    v7 = *(v10 + 16);
    *(this + 5) = v6;
    *(this + 6) = v7;
    v8 = *(a2 + 6);
    v4 = &operations_research::sat::_RoutesConstraintProto_default_instance_;
    if (*(a2 + 15) != 23)
    {
      v8 = &operations_research::sat::_RoutesConstraintProto_default_instance_;
    }

    v9 = 23;
  }

  else
  {
    v4 = &operations_research::sat::_CircuitConstraintProto_default_instance_;
    v5 = &operations_research::sat::_CircuitConstraintProto_default_instance_;
    if (v3 == 15)
    {
      v5 = *(a2 + 6);
    }

    v6 = v5[3];
    v7 = *(v5 + 4);
    *(this + 5) = v6;
    *(this + 6) = v7;
    v8 = *(a2 + 6);
    if (*(a2 + 15) != 15)
    {
      v8 = &operations_research::sat::_CircuitConstraintProto_default_instance_;
    }

    v9 = 15;
  }

  v11 = v8[6];
  v12 = *(v8 + 10);
  *(this + 7) = v11;
  *(this + 8) = v12;
  if (*(a2 + 15) == v9)
  {
    v4 = *(a2 + 6);
  }

  v13 = v4[9];
  v14 = *(v4 + 16);
  *(this + 3) = v13;
  *(this + 4) = v14;
  if (v7 != 1 && (v7 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v15 = 4 * v7;
    v17 = (v6 + 4);
    v16 = *v6;
    v18 = v15 - 4;
    v19 = (v6 + 4);
    do
    {
      v21 = *v19;
      v19 = (v19 + 4);
      v20 = v21;
      v22 = v16 < v21;
      if (v16 <= v21)
      {
        v16 = v20;
      }

      if (v22)
      {
        v6 = v17;
      }

      v17 = v19;
      v18 -= 4;
    }

    while (v18);
  }

  v23 = *v6;
  v24 = __CFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    std::vector<std::vector<int>>::__append(this + 72, v25);
  }

  return this;
}

void sub_23C9FCD28(_Unwind_Exception *a1)
{
  StronglyConnectedComponentsFinder<int,std::vector<std::vector<int>>,std::vector<std::vector<int>>>::~StronglyConnectedComponentsFinder(v1 + 176);
  v4 = *(v1 + 152);
  if (v4)
  {
    operator delete(v4);
  }

  operations_research::sat::CompiledCircuitConstraint::SccOutput::~SccOutput((v1 + 96));
  std::vector<std::vector<int>>::~vector[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void operations_research::sat::CompiledCircuitConstraint::SccOutput::~SccOutput(operations_research::sat::CompiledCircuitConstraint::SccOutput *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    operator delete(v3);
  }
}

uint64_t operations_research::sat::CompiledCircuitConstraint::ComputeViolation(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 72);
  v5 = (*(a1 + 80) - *(a1 + 72)) >> 3;
  *(a1 + 96) = 0;
  v6 = (a1 + 96);
  v7 = -1431655765 * v5;
  v8 = (a1 + 128);
  *(a1 + 136) = *(a1 + 128);
  if (-1431655765 * v5)
  {
    std::vector<int>::__append((a1 + 128), v7);
  }

  *(a1 + 112) = 0;
  std::vector<BOOL>::resize(a1 + 104, v7, 0);
  v10 = *(a1 + 72);
  v9 = *(a1 + 80);
  if (v10 != v9)
  {
    v11 = *(a1 + 72);
    if (v9 - 3 == v10)
    {
      goto LABEL_41;
    }

    v12 = ((0xAAAAAAAAAAAAAABLL * ((v9 - 3) - v10)) >> 3) + 1;
    v11 = &v10[3 * (v12 & 0x3FFFFFFFFFFFFFFELL)];
    v13 = v10 + 3;
    v14 = v12 & 0x3FFFFFFFFFFFFFFELL;
    do
    {
      v15 = *v13;
      *(v13 - 2) = *(v13 - 3);
      v13[1] = v15;
      v13 += 6;
      v14 -= 2;
    }

    while (v14);
    if (v12 != (v12 & 0x3FFFFFFFFFFFFFFELL))
    {
LABEL_41:
      do
      {
        v11[1] = *v11;
        v11 += 3;
      }

      while (v11 != v9);
    }
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      v19 = *(*(a1 + 24) + 4 * v17);
      if ((v19 & 0x80000000) != 0)
      {
        if (*(a2 + 8 * ~v19))
        {
          goto LABEL_12;
        }
      }

      else if (!*(a2 + 8 * v19))
      {
        goto LABEL_12;
      }

      std::vector<int>::push_back[abi:ne200100](*(a1 + 72) + 24 * *(*(a1 + 40) + 4 * v17), (*(a1 + 56) + 4 * v17));
      v16 = *(a1 + 48);
LABEL_12:
      v17 = v18++;
    }

    while (v16 > v17);
  }

  StronglyConnectedComponentsFinder<int,std::vector<std::vector<int>>,operations_research::sat::CompiledCircuitConstraint::SccOutput>::FindStronglyConnectedComponents((a1 + 176), v7, v4, v6);
  if (!*(a1 + 96))
  {
    return 0;
  }

  *(a1 + 160) = 0;
  std::vector<BOOL>::resize(a1 + 152, v7, 0);
  v20 = *(a1 + 72);
  v21 = *(a1 + 80);
  v22 = v21 - v20;
  if (v21 == v20)
  {
    v24 = 0;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0xAAAAAAAAAAAAAAABLL * (v22 >> 3);
    v27 = *(a1 + 104);
    do
    {
      if (((*(v27 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        v28 = (v20 + 24 * v23);
        v29 = *v28;
        v30 = v28[1];
        if (v29 != v30)
        {
          v31 = *v8;
          v32 = *(*v8 + 4 * v23);
          do
          {
            v33 = *(v31 + 4 * *v29);
            if (v32 != v33)
            {
              v34 = *(a1 + 152);
              v35 = v33 >> 6;
              v36 = 1 << v33;
              v37 = *(v34 + 8 * v35);
              if ((v37 & v36) == 0 && (*(v27 + 8 * v35) & v36) == 0)
              {
                *(v34 + 8 * v35) = v37 | v36;
                ++v24;
              }
            }

            ++v29;
          }

          while (v29 != v30);
        }
      }

      v23 = ++v25;
    }

    while (v26 > v25);
  }

  if (*(*(a1 + 8) + 60) == 23)
  {
    v40 = **(a1 + 104) & 1;
  }

  else
  {
    v40 = 0;
  }

  v39 = 2 * *(a1 + 96);
  result = v39 - v24 + v40 - 2;
  if (dword_27E25CB38 >= 2)
  {
    v41 = v39 - v24 + v40 - 2;
    if (absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&operations_research::sat::CompiledCircuitConstraint::ComputeViolation(absl::lts_20240722::Span<long long const>)::$_0::operator() const(void)::site, dword_27E25CB38))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v46, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/constraint_violation.cc", 1333);
      v42 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v46, 2);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v42, "#SCCs=", 6uLL);
      LODWORD(v47) = *v6;
      v43 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v42, &v47);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v43, " #nodes=", 8uLL);
      LODWORD(v47) = v7;
      v44 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v43, &v47);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v44, " #half_connected_components=", 0x1CuLL);
      LODWORD(v47) = v24;
      v45 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v44, &v47);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v45, " violation=", 0xBuLL);
      v47 = v41;
      absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v45, &v47);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v46);
    }

    return v41;
  }

  return result;
}

void sub_23C9FD15C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void StronglyConnectedComponentsFinder<int,std::vector<std::vector<int>>,operations_research::sat::CompiledCircuitConstraint::SccOutput>::FindStronglyConnectedComponents(std::vector<int> *a1, int a2, void *a3, uint64_t a4)
{
  v4 = a2;
  a1->__end_ = a1->__begin_;
  a1[1].__end_ = a1[1].__begin_;
  __u = 0;
  std::vector<int>::assign(a1 + 2, a2, &__u);
  v63 = a1 + 3;
  a1[3].__end_ = a1[3].__begin_;
  begin = a1[2].__begin_;
  v65 = 0;
  if (v4 >= 1)
  {
    v7 = 0;
    LODWORD(v8) = 0;
    v64 = begin;
    v60 = v4;
    while (begin[v7])
    {
LABEL_4:
      v65 = ++v7;
      if (v7 >= v4)
      {
        return;
      }
    }

    std::vector<int>::push_back[abi:ne200100](v63, &v65);
    end = a1[3].__end_;
    while (1)
    {
      v12 = *(end - 1);
      v10 = end - 1;
      v11 = v12;
      v13 = begin[v12];
      if (!v13)
      {
        v20 = a1->__end_;
        value = a1->__end_cap_.__value_;
        if (v20 >= value)
        {
          v22 = a1->__begin_;
          v23 = v20 - a1->__begin_;
          v24 = (v23 >> 2) + 1;
          if (v24 >> 62)
          {
            goto LABEL_80;
          }

          v25 = value - v22;
          if (v25 >> 1 > v24)
          {
            v24 = v25 >> 1;
          }

          if (v25 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v26 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v26 = v24;
          }

          if (v26)
          {
            if (!(v26 >> 62))
            {
              operator new();
            }

LABEL_81:
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v34 = (4 * (v23 >> 2));
          *v34 = v11;
          v21 = v34 + 1;
          memcpy(0, v22, v23);
          a1->__begin_ = 0;
          a1->__end_ = v21;
          a1->__end_cap_.__value_ = 0;
          if (v22)
          {
            operator delete(v22);
          }

          begin = v64;
        }

        else
        {
          *v20 = v11;
          v21 = (v20 + 4);
        }

        a1->__end_ = v21;
        v8 = (v21 - a1->__begin_) >> 2;
        begin[v11] = v8;
        v36 = a1[1].__end_;
        v35 = a1[1].__end_cap_.__value_;
        if (v36 >= v35)
        {
          v38 = a1[1].__begin_;
          v39 = v36 - v38;
          v40 = (v36 - v38) >> 2;
          v41 = v40 + 1;
          if ((v40 + 1) >> 62)
          {
LABEL_80:
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          v42 = v35 - v38;
          if (v42 >> 1 > v41)
          {
            v41 = v42 >> 1;
          }

          if (v42 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v43 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v43 = v41;
          }

          if (v43)
          {
            if (!(v43 >> 62))
            {
              operator new();
            }

            goto LABEL_81;
          }

          *(4 * v40) = v8;
          v37 = 4 * v40 + 4;
          memcpy(0, v38, v39);
          a1[1].__begin_ = 0;
          a1[1].__end_ = v37;
          a1[1].__end_cap_.__value_ = 0;
          if (v38)
          {
            operator delete(v38);
          }

          begin = v64;
        }

        else
        {
          *v36 = v8;
          v37 = (v36 + 4);
        }

        a1[1].__end_ = v37;
        v44 = *a3 + 24 * v11;
        v45 = *v44;
        v46 = *(v44 + 8);
        if (*v44 != v46)
        {
          v47 = 0x7FFFFFFF;
          do
          {
            v48 = *v45;
            v49 = begin[v48];
            if (v49)
            {
              if (v49 < v47)
              {
                v47 = begin[v48];
              }
            }

            else
            {
              v51 = a1[3].__end_;
              v50 = a1[3].__end_cap_.__value_;
              if (v51 >= v50)
              {
                v52 = v63->__begin_;
                v53 = v51 - v63->__begin_;
                v54 = v53 >> 2;
                v55 = (v53 >> 2) + 1;
                if (v55 >> 62)
                {
                  goto LABEL_80;
                }

                v56 = v50 - v52;
                if (v56 >> 1 > v55)
                {
                  v55 = v56 >> 1;
                }

                if (v56 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v57 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v57 = v55;
                }

                if (v57)
                {
                  if (!(v57 >> 62))
                  {
                    operator new();
                  }

                  goto LABEL_81;
                }

                *(4 * v54) = v48;
                v58 = 4 * v54 + 4;
                memcpy(0, v52, v53);
                a1[3].__begin_ = 0;
                a1[3].__end_ = v58;
                a1[3].__end_cap_.__value_ = 0;
                if (v52)
                {
                  operator delete(v52);
                }

                begin = v64;
                a1[3].__end_ = v58;
              }

              else
              {
                *v51 = v48;
                a1[3].__end_ = v51 + 1;
              }
            }

            ++v45;
          }

          while (v45 != v46);
          if (v47 < v8)
          {
            v59 = a1[1].__end_;
            do
            {
              LODWORD(v8) = *(v59 - 2);
              --v59;
            }

            while (v8 > v47);
            a1[1].__end_ = v59;
          }
        }

        goto LABEL_8;
      }

      a1[3].__end_ = v10;
      if (v8 == v13)
      {
        break;
      }

LABEL_8:
      end = a1[3].__end_;
      if (a1[3].__begin_ == end)
      {
        v7 = v65;
        v4 = v60;
        goto LABEL_4;
      }
    }

    v14 = v8 - 1;
    v15 = a1->__begin_;
    v16 = a1->__end_;
    v17 = &a1->__begin_[v8 - 1];
    v18 = *v17;
    if (((v16 - v17) & 0x3FFFFFFFCLL) == 4)
    {
      *(*(a4 + 8) + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (v17 == v16)
      {
        goto LABEL_28;
      }
    }

    else
    {
      ++*a4;
      if (v17 == v16)
      {
        goto LABEL_28;
      }
    }

    v27 = *(a4 + 32);
    v28 = v17;
    do
    {
      v29 = *v28++;
      *(v27 + 4 * v29) = v18;
    }

    while (v28 != v16);
LABEL_28:
    v30 = v16 - v15;
    if (v14 >= v30)
    {
      if (v14 <= v30)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v31 = v14;
      do
      {
        begin[v15[v31]] = 0x7FFFFFFF;
        v31 = v8;
        LODWORD(v8) = v8 + 1;
      }

      while (v30 > v31);
      if (v14 <= v30)
      {
        if (v14 < v30)
        {
          a1->__end_ = v17;
        }

        goto LABEL_36;
      }
    }

    std::vector<int>::__append(a1, v14 - v30);
LABEL_36:
    v33 = a1[1].__begin_;
    v32 = a1[1].__end_;
    a1[1].__end_ = v32 - 1;
    if (v33 == v32 - 1)
    {
      LODWORD(v8) = 0;
    }

    else
    {
      LODWORD(v8) = *(v32 - 2);
    }

    goto LABEL_8;
  }
}

void operations_research::sat::AddCircuitFlowConstraints(operations_research::sat *this, operations_research::sat::LinearIncrementalEvaluator *a2, const operations_research::sat::ConstraintProto *a3)
{
  v5 = *(a2 + 15);
  v6 = v5 == 15 || v5 == 23;
  v7 = *(a2 + 6);
  v8 = &operations_research::sat::_CircuitConstraintProto_default_instance_;
  if (v6)
  {
    v9 = *(a2 + 6);
  }

  else
  {
    v9 = &operations_research::sat::_CircuitConstraintProto_default_instance_;
  }

  v203 = 0;
  v204 = 0;
  v10 = *(v9 + 10);
  if (v10)
  {
    google::protobuf::RepeatedField<int>::Grow(&v203, 0, *(v9 + 10));
    LODWORD(v203) = v10;
    if (v10 >= 1)
    {
      v11 = v204;
      v12 = v9[6];
      if (v10 < 8)
      {
        goto LABEL_14;
      }

      if ((v204 - v12) < 0x20)
      {
        goto LABEL_14;
      }

      v13 = v10;
      v14 = v10 & 0x7FFFFFF8;
      LODWORD(v10) = v10 - (v10 & 0x7FFFFFF8);
      v15 = (v204 + 4 * v14);
      v16 = (v12 + 4 * v14);
      v17 = (v12 + 2);
      v18 = (v204 + 16);
      v19 = v14;
      do
      {
        v20 = *v17;
        *(v18 - 1) = *(v17 - 1);
        *v18 = v20;
        v17 += 2;
        v18 += 2;
        v19 -= 8;
      }

      while (v19);
      v11 = v15;
      v12 = v16;
      if (v14 != v13)
      {
LABEL_14:
        v21 = v10 + 1;
        do
        {
          v22 = *v12;
          v12 = (v12 + 4);
          *v11++ = v22;
          --v21;
        }

        while (v21 > 1);
      }
    }
  }

  if (v5 == 23)
  {
    v23 = 23;
  }

  else
  {
    v23 = 15;
  }

  if (v5 == 23)
  {
    v8 = &operations_research::sat::_RoutesConstraintProto_default_instance_;
  }

  if (*(a2 + 15) == v23)
  {
    v24 = *(a2 + 6);
  }

  else
  {
    v24 = v8;
  }

  v201 = 0;
  v202 = 0;
  v25 = *(v24 + 4);
  if (v25)
  {
    google::protobuf::RepeatedField<int>::Grow(&v201, 0, *(v24 + 4));
    LODWORD(v201) = v25;
    if (v25 >= 1)
    {
      v26 = v202;
      v27 = v24[3];
      if (v25 < 8)
      {
        goto LABEL_31;
      }

      if ((v202 - v27) < 0x20)
      {
        goto LABEL_31;
      }

      v28 = v25;
      v29 = v25 & 0x7FFFFFF8;
      LODWORD(v25) = v25 - (v25 & 0x7FFFFFF8);
      v30 = (v202 + 4 * v29);
      v31 = (v27 + 4 * v29);
      v32 = (v27 + 2);
      v33 = (v202 + 16);
      v34 = v29;
      do
      {
        v35 = *v32;
        *(v33 - 1) = *(v32 - 1);
        *v33 = v35;
        v32 += 2;
        v33 += 2;
        v34 -= 8;
      }

      while (v34);
      v26 = v30;
      v27 = v31;
      if (v29 != v28)
      {
LABEL_31:
        v36 = v25 + 1;
        do
        {
          v37 = *v27;
          v27 = (v27 + 4);
          *v26++ = v37;
          --v36;
        }

        while (v36 > 1);
      }
    }
  }

  if (*(a2 + 15) == v23)
  {
    v38 = *(a2 + 6);
  }

  else
  {
    v38 = v8;
  }

  v199 = 0;
  v200 = 0;
  v39 = *(v38 + 16);
  if (v39)
  {
    google::protobuf::RepeatedField<int>::Grow(&v199, 0, *(v38 + 16));
    LODWORD(v199) = v39;
    if (v39 >= 1)
    {
      v40 = v200;
      v41 = v38[9];
      if (v39 < 8)
      {
        goto LABEL_43;
      }

      if ((v200 - v41) < 0x20)
      {
        goto LABEL_43;
      }

      v42 = v39;
      v43 = v39 & 0x7FFFFFF8;
      LODWORD(v39) = v39 - (v39 & 0x7FFFFFF8);
      v44 = (v200 + 4 * v43);
      v45 = (v41 + 4 * v43);
      v46 = (v41 + 2);
      v47 = (v200 + 16);
      v48 = v43;
      do
      {
        v49 = *v46;
        *(v47 - 1) = *(v46 - 1);
        *v47 = v49;
        v46 += 2;
        v47 += 2;
        v48 -= 8;
      }

      while (v48);
      v40 = v44;
      v41 = v45;
      if (v43 != v42)
      {
LABEL_43:
        v50 = v39 + 1;
        do
        {
          v51 = *v41;
          v41 = (v41 + 4);
          *v40++ = v51;
          --v50;
        }

        while (v50 > 1);
      }
    }
  }

  v196 = 0;
  v197 = 0;
  v198 = 0;
  v193 = 0;
  v194 = 0;
  v195 = 0;
  if (v203 >= 1)
  {
    v52 = 0;
    do
    {
      v53 = *(v204 + 4 * v52);
      v54 = v197;
      v55 = 0xAAAAAAAAAAAAAAABLL * ((v197 - v196) >> 3);
      if (v55 <= v53)
      {
        v56 = v53 + 1;
        if (v56 <= v55)
        {
          if (v56 < v55)
          {
            v57 = v196 + 24 * v56;
            if (v197 != v57)
            {
              v58 = v197;
              do
              {
                v60 = *(v58 - 3);
                v58 -= 24;
                v59 = v60;
                if (v60)
                {
                  *(v54 - 2) = v59;
                  operator delete(v59);
                }

                v54 = v58;
              }

              while (v58 != v57);
            }

            v197 = v57;
          }
        }

        else
        {
          std::vector<std::vector<int>>::__append(&v196, v56 - v55);
        }
      }

      std::vector<int>::push_back[abi:ne200100](v196 + 24 * *(v204 + 4 * v52), (v200 + 4 * v52));
      v61 = *(v202 + 4 * v52);
      v62 = v194;
      v63 = 0xAAAAAAAAAAAAAAABLL * ((v194 - v193) >> 3);
      if (v63 <= v61)
      {
        v64 = v61 + 1;
        if (v64 <= v63)
        {
          if (v64 < v63)
          {
            v65 = v193 + 24 * v64;
            if (v194 != v65)
            {
              v66 = v194;
              do
              {
                v68 = *(v66 - 3);
                v66 -= 24;
                v67 = v68;
                if (v68)
                {
                  *(v62 - 2) = v67;
                  operator delete(v67);
                }

                v62 = v66;
              }

              while (v66 != v65);
            }

            v194 = v65;
          }
        }

        else
        {
          std::vector<std::vector<int>>::__append(&v193, v64 - v63);
        }
      }

      std::vector<int>::push_back[abi:ne200100](v193 + 24 * *(v202 + 4 * v52), (v200 + 4 * v52));
      ++v52;
    }

    while (v52 < v203);
  }

  if (v5 == 23)
  {
    operations_research::Domain::Domain(v192, 0, 0);
    v69 = operations_research::sat::LinearIncrementalEvaluator::NewConstraint(this, v192);
    if (v192[0])
    {
      operator delete(v192[1]);
    }

    v70 = *v196;
    v71 = *(v196 + 1);
    if (*v196 != v71)
    {
      do
      {
        v72 = *v70;
        if ((v72 & 0x80000000) != 0)
        {
          v73 = -1;
        }

        else
        {
          v73 = 1;
        }

        operations_research::sat::LinearIncrementalEvaluator::AddTerm(this, v69, v72 ^ (v72 >> 31), v73, v72 >> 31);
        ++v70;
      }

      while (v70 != v71);
    }

    v74 = *v193;
    v75 = *(v193 + 1);
    if (*v193 != v75)
    {
      do
      {
        if (*v74 < 0)
        {
          v76 = 1;
        }

        else
        {
          v76 = -1;
        }

        operations_research::sat::LinearIncrementalEvaluator::AddTerm(this, v69, *v74 ^ (*v74 >> 31), v76, *v74 >> 31);
        ++v74;
      }

      while (v74 != v75);
    }
  }

  v189 = v5 == 23;
  v188 = v5 == 23;
  if (0xAAAAAAAAAAAAAAABLL * ((v197 - v196) >> 3) > v188)
  {
    v77 = v5 == 23;
    v78 = v5 == 23;
    while (1)
    {
      operations_research::Domain::Domain(v191, 1, 1);
      v80 = operations_research::sat::LinearIncrementalEvaluator::NewConstraint(this, v191);
      if (v191[0])
      {
        operator delete(v191[1]);
      }

      v79 = v196;
      v81 = v196 + 24 * v77;
      v83 = *v81;
      v82 = *(v81 + 1);
      if (*v81 != v82)
      {
        break;
      }

LABEL_84:
      v77 = ++v78;
      if (0xAAAAAAAAAAAAAAABLL * ((v197 - v79) >> 3) <= v78)
      {
        goto LABEL_152;
      }
    }

    while (1)
    {
      v85 = *v83;
      if ((v85 & 0x80000000) == 0)
      {
        v86 = *(this + 8);
        v87 = *(this + 9);
        v88 = 0xAAAAAAAAAAAAAAABLL * ((v87 - v86) >> 3);
        v89 = v85 + 1;
        if (v88 <= v85 && v89 > v88)
        {
          v106 = v89 - v88;
          v107 = *(this + 10);
          if (0xAAAAAAAAAAAAAAABLL * ((v107 - v87) >> 3) < v106)
          {
            if ((v89 & 0x80000000) != 0)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v108 = 0xAAAAAAAAAAAAAAABLL * ((v107 - v86) >> 3);
            if (2 * v108 > v89)
            {
              v89 = 2 * v108;
            }

            if (v108 >= 0x555555555555555)
            {
              v109 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v109 = v89;
            }

            if (v109 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            goto LABEL_251;
          }

          bzero(*(this + 9), 24 * v106);
          *(this + 9) = v87 + 24 * v106;
        }

        v91 = *(this + 8) + 24 * v85;
        v93 = *v91;
        v92 = *(v91 + 8);
        if (*v91 == v92 || *(v92 - 16) != v80)
        {
          v95 = *(v91 + 16);
          if (v92 < v95)
          {
            *v92 = v80;
            *(v92 + 8) = 1;
            v84 = v92 + 16;
          }

          else
          {
            v96 = v92 - v93;
            v97 = (v92 - v93) >> 4;
            v98 = v97 + 1;
            if ((v97 + 1) >> 60)
            {
              goto LABEL_249;
            }

            v99 = v95 - v93;
            if (v99 >> 3 > v98)
            {
              v98 = v99 >> 3;
            }

            if (v99 >= 0x7FFFFFFFFFFFFFF0)
            {
              v100 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v100 = v98;
            }

            if (v100)
            {
              if (!(v100 >> 60))
              {
                operator new();
              }

              goto LABEL_251;
            }

            v114 = 16 * v97;
            *v114 = v80;
            *(v114 + 8) = 1;
            v84 = 16 * v97 + 16;
            memcpy(0, v93, v96);
            *v91 = 0;
            *(v91 + 8) = v84;
            *(v91 + 16) = 0;
            if (v93)
            {
              operator delete(v93);
            }
          }

          *(v91 + 8) = v84;
        }

        else
        {
          v94 = *(v92 - 8);
          *(v92 - 8) = v94 + 1;
          if (v94 == -1)
          {
            *(v91 + 8) = v92 - 16;
          }
        }

        goto LABEL_91;
      }

      v101 = ~v85;
      v103 = *(this + 8);
      v102 = *(this + 9);
      v104 = 0xAAAAAAAAAAAAAAABLL * ((v102 - v103) >> 3);
      if (v104 <= v101)
      {
        v105 = -v85;
        if (v105 <= v104)
        {
          if (v105 < v104)
          {
            v110 = v103 + 24 * v105;
            if (v102 != v110)
            {
              v111 = *(this + 9);
              do
              {
                v113 = *(v111 - 24);
                v111 -= 24;
                v112 = v113;
                if (v113)
                {
                  *(v102 - 16) = v112;
                  operator delete(v112);
                }

                v102 = v111;
              }

              while (v111 != v110);
            }

            *(this + 9) = v110;
          }
        }

        else
        {
          std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append(this + 64, v105 - v104);
        }
      }

      v115 = *(this + 8) + 24 * v101;
      v117 = *v115;
      v116 = *(v115 + 8);
      if (*v115 == v116)
      {
        break;
      }

      v118 = v116 - 16;
      if (*(v116 - 16) != v80)
      {
        break;
      }

      v119 = *(v116 - 8) - 1;
      *(v116 - 8) = v119;
      if (!v119)
      {
        goto LABEL_150;
      }

LABEL_151:
      ++*(*(this + 4) + 8 * v80);
LABEL_91:
      if (++v83 == v82)
      {
        v79 = v196;
        goto LABEL_84;
      }
    }

    v120 = *(v115 + 16);
    if (v116 >= v120)
    {
      v121 = v116 - v117;
      v122 = (v116 - v117) >> 4;
      v123 = v122 + 1;
      if ((v122 + 1) >> 60)
      {
LABEL_249:
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v124 = v120 - v117;
      if (v124 >> 3 > v123)
      {
        v123 = v124 >> 3;
      }

      if (v124 >= 0x7FFFFFFFFFFFFFF0)
      {
        v125 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v125 = v123;
      }

      if (v125)
      {
        if (!(v125 >> 60))
        {
          operator new();
        }

LABEL_251:
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v126 = 16 * v122;
      *v126 = v80;
      *(v126 + 8) = -1;
      v118 = 16 * v122 + 16;
      memcpy(0, v117, v121);
      *v115 = 0;
      *(v115 + 8) = v118;
      *(v115 + 16) = 0;
      if (v117)
      {
        operator delete(v117);
      }
    }

    else
    {
      *v116 = v80;
      *(v116 + 8) = -1;
      v118 = v116 + 16;
    }

LABEL_150:
    *(v115 + 8) = v118;
    goto LABEL_151;
  }

LABEL_152:
  v128 = v193;
  v127 = v194;
  v129 = 0xAAAAAAAAAAAAAAABLL * ((v194 - v193) >> 3);
  v130 = v188;
  while (v129 > v130)
  {
    operations_research::Domain::Domain(v190, 1, 1);
    v131 = operations_research::sat::LinearIncrementalEvaluator::NewConstraint(this, v190);
    if (v190[0])
    {
      operator delete(v190[1]);
    }

    v128 = v193;
    v132 = v193 + 24 * v130;
    v134 = *v132;
    v133 = *(v132 + 1);
    if (*v132 != v133)
    {
      while (1)
      {
        v136 = *v134;
        if ((v136 & 0x80000000) == 0)
        {
          v137 = *(this + 8);
          v138 = *(this + 9);
          v139 = 0xAAAAAAAAAAAAAAABLL * ((v138 - v137) >> 3);
          v140 = v136 + 1;
          if (v139 <= v136 && v140 > v139)
          {
            v157 = v140 - v139;
            v158 = *(this + 10);
            if (0xAAAAAAAAAAAAAAABLL * ((v158 - v138) >> 3) < v157)
            {
              if ((v140 & 0x80000000) != 0)
              {
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              v159 = 0xAAAAAAAAAAAAAAABLL * ((v158 - v137) >> 3);
              if (2 * v159 > v140)
              {
                v140 = 2 * v159;
              }

              if (v159 >= 0x555555555555555)
              {
                v160 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v160 = v140;
              }

              if (v160 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              goto LABEL_252;
            }

            bzero(*(this + 9), 24 * v157);
            *(this + 9) = v138 + 24 * v157;
          }

          v142 = *(this + 8) + 24 * v136;
          v144 = *v142;
          v143 = *(v142 + 8);
          if (*v142 == v143 || *(v143 - 16) != v131)
          {
            v146 = *(v142 + 16);
            if (v143 < v146)
            {
              *v143 = v131;
              *(v143 + 8) = 1;
              v135 = v143 + 16;
            }

            else
            {
              v147 = v143 - v144;
              v148 = (v143 - v144) >> 4;
              v149 = v148 + 1;
              if ((v148 + 1) >> 60)
              {
                goto LABEL_250;
              }

              v150 = v146 - v144;
              if (v150 >> 3 > v149)
              {
                v149 = v150 >> 3;
              }

              if (v150 >= 0x7FFFFFFFFFFFFFF0)
              {
                v151 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v151 = v149;
              }

              if (v151)
              {
                if (!(v151 >> 60))
                {
                  operator new();
                }

                goto LABEL_252;
              }

              v165 = 16 * v148;
              *v165 = v131;
              *(v165 + 8) = 1;
              v135 = 16 * v148 + 16;
              memcpy(0, v144, v147);
              *v142 = 0;
              *(v142 + 8) = v135;
              *(v142 + 16) = 0;
              if (v144)
              {
                operator delete(v144);
              }
            }

            *(v142 + 8) = v135;
          }

          else
          {
            v145 = *(v143 - 8);
            *(v143 - 8) = v145 + 1;
            if (v145 == -1)
            {
              *(v142 + 8) = v143 - 16;
            }
          }

          goto LABEL_162;
        }

        v152 = ~v136;
        v154 = *(this + 8);
        v153 = *(this + 9);
        v155 = 0xAAAAAAAAAAAAAAABLL * ((v153 - v154) >> 3);
        if (v155 <= v152)
        {
          v156 = -v136;
          if (v156 <= v155)
          {
            if (v156 < v155)
            {
              v161 = v154 + 24 * v156;
              if (v153 != v161)
              {
                v162 = *(this + 9);
                do
                {
                  v164 = *(v162 - 24);
                  v162 -= 24;
                  v163 = v164;
                  if (v164)
                  {
                    *(v153 - 16) = v163;
                    operator delete(v163);
                  }

                  v153 = v162;
                }

                while (v162 != v161);
              }

              *(this + 9) = v161;
            }
          }

          else
          {
            std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append(this + 64, v156 - v155);
          }
        }

        v166 = *(this + 8) + 24 * v152;
        v168 = *v166;
        v167 = *(v166 + 8);
        if (*v166 == v167)
        {
          break;
        }

        v169 = v167 - 16;
        if (*(v167 - 16) != v131)
        {
          break;
        }

        v170 = *(v167 - 8) - 1;
        *(v167 - 8) = v170;
        if (!v170)
        {
          goto LABEL_221;
        }

LABEL_222:
        ++*(*(this + 4) + 8 * v131);
LABEL_162:
        if (++v134 == v133)
        {
          v128 = v193;
          goto LABEL_154;
        }
      }

      v171 = *(v166 + 16);
      if (v167 >= v171)
      {
        v172 = v167 - v168;
        v173 = (v167 - v168) >> 4;
        v174 = v173 + 1;
        if ((v173 + 1) >> 60)
        {
LABEL_250:
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v175 = v171 - v168;
        if (v175 >> 3 > v174)
        {
          v174 = v175 >> 3;
        }

        if (v175 >= 0x7FFFFFFFFFFFFFF0)
        {
          v176 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v176 = v174;
        }

        if (v176)
        {
          if (!(v176 >> 60))
          {
            operator new();
          }

LABEL_252:
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v177 = 16 * v173;
        *v177 = v131;
        *(v177 + 8) = -1;
        v169 = 16 * v173 + 16;
        memcpy(0, v168, v172);
        *v166 = 0;
        *(v166 + 8) = v169;
        *(v166 + 16) = 0;
        if (v168)
        {
          operator delete(v168);
        }
      }

      else
      {
        *v167 = v131;
        *(v167 + 8) = -1;
        v169 = v167 + 16;
      }

LABEL_221:
      *(v166 + 8) = v169;
      goto LABEL_222;
    }

LABEL_154:
    v130 = ++v189;
    v127 = v194;
    v129 = 0xAAAAAAAAAAAAAAABLL * ((v194 - v128) >> 3);
  }

  if (v128)
  {
    v178 = v128;
    if (v127 != v128)
    {
      v179 = v127;
      do
      {
        v181 = *(v179 - 3);
        v179 -= 24;
        v180 = v181;
        if (v181)
        {
          *(v127 - 2) = v180;
          operator delete(v180);
        }

        v127 = v179;
      }

      while (v179 != v128);
      v178 = v193;
    }

    v194 = v128;
    operator delete(v178);
  }

  v182 = v196;
  if (v196)
  {
    v183 = v197;
    v184 = v196;
    if (v197 != v196)
    {
      v185 = v197;
      do
      {
        v187 = *(v185 - 3);
        v185 -= 24;
        v186 = v187;
        if (v187)
        {
          *(v183 - 2) = v186;
          operator delete(v186);
        }

        v183 = v185;
      }

      while (v185 != v182);
      v184 = v196;
    }

    v197 = v182;
    operator delete(v184);
  }

  if (SHIDWORD(v199) >= 1 && !*(v200 - 8))
  {
    operator delete((v200 - 8));
  }

  if (SHIDWORD(v201) >= 1 && !*(v202 - 8))
  {
    operator delete((v202 - 8));
  }

  if (SHIDWORD(v203) >= 1 && !*(v204 - 8))
  {
    operator delete((v204 - 8));
  }
}

void sub_23C9FE548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, void *a14, uint64_t a15, char a16, void *a17, uint64_t a18, char a19, void *__p, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25)
{
  if (a19)
  {
    operator delete(__p);
  }

  std::vector<std::vector<int>>::~vector[abi:ne200100](&a22);
  std::vector<std::vector<int>>::~vector[abi:ne200100](&a25);
  if (*(v25 - 132) >= 1)
  {
    v27 = *(v25 - 128);
    v29 = *(v27 - 8);
    v28 = (v27 - 8);
    if (!v29)
    {
      operator delete(v28);
    }
  }

  if (*(v25 - 116) >= 1)
  {
    v30 = *(v25 - 112);
    v32 = *(v30 - 8);
    v31 = (v30 - 8);
    if (!v32)
    {
      operator delete(v31);
    }
  }

  if (*(v25 - 100) >= 1)
  {
    v33 = *(v25 - 96);
    v35 = *(v33 - 8);
    v34 = (v33 - 8);
    if (!v35)
    {
      operator delete(v34);
    }
  }

  _Unwind_Resume(a1);
}

operations_research::sat::LsEvaluator *operations_research::sat::LsEvaluator::LsEvaluator(operations_research::sat::LsEvaluator *this, const operations_research::sat::CpModelProto *a2, const operations_research::sat::SatParameters *a3)
{
  *this = a2;
  *(this + 1) = a3;
  operations_research::sat::CpModelProto::CpModelProto(this + 16, 0);
  *(this + 44) = 0;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 1;
  bzero(this + 240, 0x308uLL);
  v4 = *(*this + 32);
  if (v4)
  {
    std::vector<std::vector<int>>::__append(this + 824, v4);
    v5 = *(*this + 32);
  }

  else
  {
    v5 = 0;
  }

  std::vector<BOOL>::resize(this + 872, v5, 1);
  v6 = *(*this + 32);
  __u[0] = 0;
  std::vector<int>::assign((this + 968), v6, __u);
  v8 = *(*this + 56);
  v14 = 0;
  v15 = 0;
  *__u = 0;
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  memset(v12, 0, sizeof(v12));
  operations_research::sat::LsEvaluator::CompileConstraintsAndObjective(this, __u, v12, v7);
  operations_research::sat::LsEvaluator::BuildVarConstraintGraph(this);
  v9 = (*(this + 44) + ((*(this + 101) - *(this + 100)) >> 3));
  v11 = -1;
  std::vector<int>::assign((this + 920), v9, &v11);
  if (*__u)
  {
    operator delete(*__u);
  }

  return this;
}

void sub_23C9FE7BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p)
{
  std::vector<operations_research::sat::ConstraintProto>::~vector[abi:ne200100](&a11);
  if (__p)
  {
    operator delete(__p);
    v20 = *(v14 + 992);
    if (!v20)
    {
LABEL_3:
      v21 = *v18;
      if (!*v18)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v20 = *(v14 + 992);
    if (!v20)
    {
      goto LABEL_3;
    }
  }

  *(v14 + 1000) = v20;
  operator delete(v20);
  v21 = *v18;
  if (!*v18)
  {
LABEL_4:
    v22 = *(v14 + 944);
    if (!v22)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(v14 + 976) = v21;
  operator delete(v21);
  v22 = *(v14 + 944);
  if (!v22)
  {
LABEL_5:
    v23 = *v17;
    if (!*v17)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v14 + 952) = v22;
  operator delete(v22);
  v23 = *v17;
  if (!*v17)
  {
LABEL_6:
    v24 = *(v14 + 896);
    if (!v24)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v14 + 928) = v23;
  operator delete(v23);
  v24 = *(v14 + 896);
  if (!v24)
  {
LABEL_7:
    v25 = *v16;
    if (!*v16)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_15:
  *(v14 + 904) = v24;
  operator delete(v24);
  v25 = *v16;
  if (!*v16)
  {
LABEL_9:
    std::vector<std::vector<int>>::~vector[abi:ne200100]((v14 + 848));
    std::vector<std::vector<int>>::~vector[abi:ne200100]((v14 + 824));
    std::vector<std::unique_ptr<operations_research::sat::CompiledConstraint>>::~vector[abi:ne200100]((v14 + 800));
    operations_research::sat::LinearIncrementalEvaluator::~LinearIncrementalEvaluator(v15);
    operations_research::sat::CpModelProto::~CpModelProto((v14 + 16));
    _Unwind_Resume(a1);
  }

LABEL_8:
  operator delete(v25);
  goto LABEL_9;
}

void operations_research::sat::LsEvaluator::CompileConstraintsAndObjective(uint64_t *a1, void *a2, const operations_research::sat::ConstraintProto **a3, __n128 a4)
{
  v7 = a1[101];
  v8 = a1[100];
  while (v7 != v8)
  {
    v10 = *--v7;
    v9 = v10;
    *v7 = 0;
    if (v10)
    {
      (*(*v9 + 8))(v9);
    }
  }

  a1[101] = v8;
  v11 = *a1;
  if (*(*a1 + 16))
  {
    v12 = *(v11 + 128);
    v13 = *(v12 + 64);
    if (v13)
    {
      operations_research::Domain::FromFlatSpanOfIntervals(*(v12 + 72), v13, v25, a4);
    }

    else
    {
      operations_research::Domain::AllValues(v25);
    }

    v14 = operations_research::sat::LinearIncrementalEvaluator::NewConstraint(a1 + 44, v25);
    if (v25[0])
    {
      operator delete(v25[1]);
    }

    v11 = *a1;
    v15 = *(*a1 + 128);
    if (!v15)
    {
      v15 = &operations_research::sat::_CpObjectiveProto_default_instance_;
    }

    if (*(v15 + 4) >= 1)
    {
      v16 = 0;
      do
      {
        operations_research::sat::LinearIncrementalEvaluator::AddTerm((a1 + 22), v14, *(v15[3] + v16), v15[6][v16], 0);
        ++v16;
        v11 = *a1;
        v15 = *(*a1 + 128);
        if (!v15)
        {
          v15 = &operations_research::sat::_CpObjectiveProto_default_instance_;
        }
      }

      while (v16 < *(v15 + 4));
    }
  }

  if (*(v11 + 56) >= 1)
  {
    v17 = 0;
    v18 = 8;
    do
    {
      if (((*(*a2 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v20 = *(v11 + 48);
        v19 = (v11 + 48);
        v21 = v20 + v18 - 1;
        if (v20)
        {
          v19 = v21;
        }

        operations_research::sat::LsEvaluator::CompileOneConstraint(a1, *v19, a4);
        v11 = *a1;
      }

      ++v17;
      v18 += 8;
    }

    while (v17 < *(v11 + 56));
  }

  v23 = *a3;
  v22 = a3[1];
  if (v23 != v22)
  {
    do
    {
      operations_research::sat::LsEvaluator::CompileOneConstraint(a1, v23, a4);
      v23 = (v23 + 64);
    }

    while (v23 != v22);
    v11 = *a1;
  }

  v24 = *(v11 + 32);
  if (v24)
  {
    if ((v24 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  operations_research::sat::LinearIncrementalEvaluator::PrecomputeCompactView(a1 + 22, 0);
}

void sub_23C9FEBFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (a10)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::LsEvaluator::BuildVarConstraintGraph(operations_research::sat::LsEvaluator *this)
{
  v1 = *(this + 103);
  v2 = *(this + 104);
  if (v1 != v2)
  {
    v3 = *(this + 103);
    if (v2 - 3 == v1)
    {
      goto LABEL_144;
    }

    v4 = ((0xAAAAAAAAAAAAAABLL * ((v2 - 3) - v1)) >> 3) + 1;
    v3 = &v1[3 * (v4 & 0x3FFFFFFFFFFFFFFELL)];
    v5 = v1 + 3;
    v6 = v4 & 0x3FFFFFFFFFFFFFFELL;
    do
    {
      v7 = *v5;
      *(v5 - 2) = *(v5 - 3);
      v5[1] = v7;
      v5 += 6;
      v6 -= 2;
    }

    while (v6);
    if (v4 != (v4 & 0x3FFFFFFFFFFFFFFELL))
    {
LABEL_144:
      do
      {
        v3[1] = *v3;
        v3 += 3;
      }

      while (v3 != v2);
    }
  }

  v8 = (this + 848);
  v9 = (*(this + 101) - *(this + 100)) >> 3;
  v10 = *(this + 107);
  v11 = *(this + 106);
  v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v11) >> 3);
  if (v9 <= v12)
  {
    if (v9 < v12)
    {
      v13 = v11 + 24 * v9;
      if (v10 != v13)
      {
        v14 = *(this + 107);
        do
        {
          v16 = *(v14 - 24);
          v14 -= 24;
          v15 = v16;
          if (v16)
          {
            *(v10 - 16) = v15;
            operator delete(v15);
          }

          v10 = v14;
        }

        while (v14 != v13);
      }

      *(this + 107) = v13;
    }
  }

  else
  {
    std::vector<std::vector<int>>::__append(this + 848, v9 - v12);
  }

  v17 = *(this + 100);
  if (*(this + 101) == v17)
  {
    goto LABEL_93;
  }

  v18 = 0;
  v103 = 0;
  while (2)
  {
    operations_research::sat::UsedVariables(*(*(v17 + 8 * v18) + 8), &v107);
    v19 = v107;
    v20 = v108;
    if (v107 == v108)
    {
      if (!v107)
      {
        goto LABEL_22;
      }

LABEL_21:
      v108 = v19;
      operator delete(v19);
      goto LABEL_22;
    }

    do
    {
      while (1)
      {
        v47 = *v19;
        v48 = *(this + 103) + 24 * *v19;
        v50 = *(v48 + 8);
        v49 = *(v48 + 16);
        if (v50 >= v49)
        {
          break;
        }

        *v50 = v103;
        *(v48 + 8) = v50 + 1;
        v51 = *v8 + 24 * v18;
        v53 = *(v51 + 8);
        v52 = *(v51 + 16);
        if (v53 >= v52)
        {
          goto LABEL_77;
        }

LABEL_61:
        *v53 = v47;
        *(v51 + 8) = v53 + 1;
        if (++v19 == v20)
        {
          goto LABEL_89;
        }
      }

      v54 = *v48;
      v55 = v50 - *v48;
      v56 = v55 >> 2;
      v57 = (v55 >> 2) + 1;
      if (v57 >> 62)
      {
        goto LABEL_140;
      }

      v58 = v49 - v54;
      if (v58 >> 1 > v57)
      {
        v57 = v58 >> 1;
      }

      if (v58 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v59 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v59 = v57;
      }

      if (v59)
      {
        if (!(v59 >> 62))
        {
          operator new();
        }

LABEL_141:
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(4 * v56) = v103;
      v60 = 4 * v56 + 4;
      memcpy(0, v54, v55);
      *v48 = 0;
      *(v48 + 8) = v60;
      *(v48 + 16) = 0;
      if (v54)
      {
        operator delete(v54);
      }

      *(v48 + 8) = v60;
      v51 = *v8 + 24 * v18;
      v53 = *(v51 + 8);
      v52 = *(v51 + 16);
      if (v53 < v52)
      {
        goto LABEL_61;
      }

LABEL_77:
      v61 = *v51;
      v62 = v53 - *v51;
      v63 = v62 >> 2;
      v64 = (v62 >> 2) + 1;
      if (v64 >> 62)
      {
LABEL_140:
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v65 = v52 - v61;
      if (v65 >> 1 > v64)
      {
        v64 = v65 >> 1;
      }

      if (v65 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v66 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v66 = v64;
      }

      if (v66)
      {
        if (!(v66 >> 62))
        {
          operator new();
        }

        goto LABEL_141;
      }

      *(4 * v63) = v47;
      v67 = 4 * v63 + 4;
      memcpy(0, v61, v62);
      *v51 = 0;
      *(v51 + 8) = v67;
      *(v51 + 16) = 0;
      if (v61)
      {
        operator delete(v61);
      }

      *(v51 + 8) = v67;
      ++v19;
    }

    while (v19 != v20);
LABEL_89:
    v19 = v107;
    if (v107)
    {
      goto LABEL_21;
    }

LABEL_22:
    operations_research::sat::UsedIntervals(*(*(*(this + 100) + 8 * v18) + 8), &v107);
    v21 = v107;
    v101 = v108;
    if (v107 == v108)
    {
      if (v107)
      {
        goto LABEL_92;
      }

      goto LABEL_18;
    }

    while (2)
    {
      v22 = (*this + 48);
      if (*v22)
      {
        v22 = (*v22 + 8 * *v21 + 7);
      }

      operations_research::sat::UsedVariables(*v22, &v105);
      v102 = v21;
      v23 = v8;
      v25 = v105;
      v24 = v106;
      if (v105 == v106)
      {
        if (v105)
        {
          goto LABEL_60;
        }

        goto LABEL_25;
      }

      do
      {
LABEL_32:
        v26 = *v25;
        v27 = *(this + 103) + 24 * *v25;
        v29 = *(v27 + 8);
        v28 = *(v27 + 16);
        if (v29 >= v28)
        {
          v33 = *v27;
          v34 = v29 - *v27;
          v35 = v34 >> 2;
          v36 = (v34 >> 2) + 1;
          if (v36 >> 62)
          {
            goto LABEL_138;
          }

          v37 = v28 - v33;
          if (v37 >> 1 > v36)
          {
            v36 = v37 >> 1;
          }

          if (v37 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v38 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v38 = v36;
          }

          if (v38)
          {
            if (!(v38 >> 62))
            {
              operator new();
            }

LABEL_139:
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *(4 * v35) = v103;
          v39 = 4 * v35 + 4;
          memcpy(0, v33, v34);
          *v27 = 0;
          *(v27 + 8) = v39;
          *(v27 + 16) = 0;
          if (v33)
          {
            operator delete(v33);
          }

          *(v27 + 8) = v39;
          v30 = *v23 + 24 * v18;
          v32 = *(v30 + 8);
          v31 = *(v30 + 16);
          if (v32 < v31)
          {
LABEL_31:
            *v32 = v26;
            *(v30 + 8) = v32 + 1;
            if (++v25 == v24)
            {
              break;
            }

            goto LABEL_32;
          }
        }

        else
        {
          *v29 = v103;
          *(v27 + 8) = v29 + 1;
          v30 = *v23 + 24 * v18;
          v32 = *(v30 + 8);
          v31 = *(v30 + 16);
          if (v32 < v31)
          {
            goto LABEL_31;
          }
        }

        v40 = *v30;
        v41 = v32 - *v30;
        v42 = v41 >> 2;
        v43 = (v41 >> 2) + 1;
        if (v43 >> 62)
        {
LABEL_138:
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v44 = v31 - v40;
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

          goto LABEL_139;
        }

        *(4 * v42) = v26;
        v46 = 4 * v42 + 4;
        memcpy(0, v40, v41);
        *v30 = 0;
        *(v30 + 8) = v46;
        *(v30 + 16) = 0;
        if (v40)
        {
          operator delete(v40);
        }

        *(v30 + 8) = v46;
        ++v25;
      }

      while (v25 != v24);
      v25 = v105;
      if (v105)
      {
LABEL_60:
        v106 = v25;
        operator delete(v25);
      }

LABEL_25:
      v21 = v102 + 1;
      v8 = v23;
      if (v102 + 1 != v101)
      {
        continue;
      }

      break;
    }

    v21 = v107;
    if (v107)
    {
LABEL_92:
      v108 = v21;
      operator delete(v21);
    }

LABEL_18:
    v18 = ++v103;
    v17 = *(this + 100);
    if (v103 < ((*(this + 101) - v17) >> 3))
    {
      continue;
    }

    break;
  }

LABEL_93:
  v68 = *(this + 103);
  v69 = *(this + 104);
  while (v68 != v69)
  {
    v70 = *v68;
    v71 = v68[1];
    std::__sort<std::__less<int,int> &,int *>();
    v72 = v68[1];
    if (*v68 != v72)
    {
      v73 = (*v68 + 4);
      while (v73 != v72)
      {
        v74 = *(v73 - 1);
        v75 = *v73++;
        if (v74 == v75)
        {
          v76 = v73 - 2;
          while (v73 != v72)
          {
            v77 = v74;
            v74 = *v73;
            if (v77 != *v73)
            {
              v76[1] = v74;
              ++v76;
            }

            ++v73;
          }

          if (v76 + 1 != v72)
          {
            v68[1] = v76 + 1;
          }

          break;
        }
      }
    }

    v68 += 3;
  }

  v78 = *(this + 106);
  v79 = *(this + 107);
  while (v78 != v79)
  {
    v80 = *v78;
    v81 = v78[1];
    std::__sort<std::__less<int,int> &,int *>();
    v82 = v78[1];
    if (*v78 != v82)
    {
      v83 = (*v78 + 4);
      while (v83 != v82)
      {
        v84 = *(v83 - 1);
        v85 = *v83++;
        if (v84 == v85)
        {
          v86 = v83 - 2;
          while (v83 != v82)
          {
            v87 = v84;
            v84 = *v83;
            if (v87 != *v83)
            {
              v86[1] = v84;
              ++v86;
            }

            ++v83;
          }

          if (v86 + 1 != v82)
          {
            v78[1] = v86 + 1;
          }

          break;
        }
      }
    }

    v78 += 3;
  }

  v88 = (this + 872);
  std::vector<BOOL>::resize(this + 872, *(*this + 32), 0);
  v89 = *(*this + 32);
  if (v89 >= 1)
  {
    v90 = 0;
    v91 = (*this + 24);
    v92 = *(this + 103);
    do
    {
      while (*(v92 + 24 * v90) != *(v92 + 24 * v90 + 8))
      {
LABEL_123:
        *(*v88 + ((v90 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v90);
        if (++v90 == v89)
        {
          return;
        }
      }

      if (*v91)
      {
        v93 = (*v91 + 8 * v90 + 7);
      }

      else
      {
        v93 = v91;
      }

      v94 = *v93;
      if (*(v94 + 16) != 2 || (v95 = *(v94 + 24), *v95) || v95[1] != 1)
      {
        v96 = *(this + 36);
        if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 37) - v96) >> 2) > v90)
        {
          v97 = (v96 + 20 * v90);
          v98 = v97[2] + v97[1] + v97[4];
          if (v98)
          {
            v99 = (*(this + 39) + 4 * *v97);
            v100 = 4 * v98;
            while ((*(*(this + 23) + 24 * *v99) >> 1) < 3)
            {
              ++v99;
              v100 -= 4;
              if (!v100)
              {
                goto LABEL_136;
              }
            }

            goto LABEL_123;
          }
        }
      }

LABEL_136:
      *(*v88 + ((v90 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v90;
      ++v90;
    }

    while (v90 != v89);
  }
}

void sub_23C9FF540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void **std::vector<operations_research::sat::ConstraintProto>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        operations_research::sat::ConstraintProto::~ConstraintProto((v3 - 64));
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *std::vector<std::unique_ptr<operations_research::sat::CompiledConstraint>>::~vector[abi:ne200100](void *a1)
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
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t operations_research::sat::LsEvaluator::LsEvaluator(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, const operations_research::sat::ConstraintProto **a5)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  operations_research::sat::CpModelProto::CpModelProto(a1 + 16, 0);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 1;
  bzero((a1 + 240), 0x308uLL);
  v8 = *(*a1 + 32);
  if (v8)
  {
    std::vector<std::vector<int>>::__append(a1 + 824, v8);
    v9 = *(*a1 + 32);
  }

  else
  {
    v9 = 0;
  }

  std::vector<BOOL>::resize(a1 + 872, v9, 1);
  v10 = *(*a1 + 32);
  __u = 0;
  std::vector<int>::assign((a1 + 968), v10, &__u);
  operations_research::sat::LsEvaluator::CompileConstraintsAndObjective(a1, a4, a5, v11);
  operations_research::sat::LsEvaluator::BuildVarConstraintGraph(a1);
  v12 = (*(a1 + 176) + ((*(a1 + 808) - *(a1 + 800)) >> 3));
  v14 = -1;
  std::vector<int>::assign((a1 + 920), v12, &v14);
  return a1;
}

void sub_23C9FF7DC(_Unwind_Exception *a1)
{
  v7 = *(v1 + 992);
  if (v7)
  {
    *(v1 + 1000) = v7;
    operator delete(v7);
    v8 = *v5;
    if (!*v5)
    {
LABEL_3:
      v9 = *(v1 + 944);
      if (!v9)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v8 = *v5;
    if (!*v5)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 976) = v8;
  operator delete(v8);
  v9 = *(v1 + 944);
  if (!v9)
  {
LABEL_4:
    v10 = *v4;
    if (!*v4)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(v1 + 952) = v9;
  operator delete(v9);
  v10 = *v4;
  if (!*v4)
  {
LABEL_5:
    v11 = *(v1 + 896);
    if (!v11)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(v1 + 928) = v10;
  operator delete(v10);
  v11 = *(v1 + 896);
  if (!v11)
  {
LABEL_6:
    v12 = *v3;
    if (!*v3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(v1 + 904) = v11;
  operator delete(v11);
  v12 = *v3;
  if (!*v3)
  {
LABEL_8:
    std::vector<std::vector<int>>::~vector[abi:ne200100]((v1 + 848));
    std::vector<std::vector<int>>::~vector[abi:ne200100]((v1 + 824));
    std::vector<std::unique_ptr<operations_research::sat::CompiledConstraint>>::~vector[abi:ne200100]((v1 + 800));
    operations_research::sat::LinearIncrementalEvaluator::~LinearIncrementalEvaluator(v2);
    operations_research::sat::CpModelProto::~CpModelProto((v1 + 16));
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(v12);
  goto LABEL_8;
}

void operations_research::sat::LsEvaluator::CompileOneConstraint(operations_research::sat::LsEvaluator *this, const operations_research::sat::ConstraintProto *a2, __n128 a3)
{
  switch(*(a2 + 15))
  {
    case 3:
      operations_research::Domain::Domain(v404, 1, 1);
      v15 = operations_research::sat::LinearIncrementalEvaluator::NewConstraint(this + 44, v404);
      if (v404[0])
      {
        operator delete(v404[1]);
      }

      v16 = *(a2 + 4);
      if (v16)
      {
        v17 = *(a2 + 3);
        v18 = &v17[v16];
        do
        {
          v20 = ~*v17;
          if (v20 <= *v17)
          {
            v21 = *v17;
          }

          else
          {
            v21 = ~*v17;
          }

          v23 = *(this + 33);
          v22 = *(this + 34);
          v24 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v23) >> 3);
          v25 = v21;
          if (v24 <= v21)
          {
            v26 = v21 + 1;
            if (v26 > v24)
            {
              std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append(this + 264, v26 - v24);
            }

            else if (v26 < v24)
            {
              v27 = v23 + 24 * v26;
              if (v22 != v27)
              {
                v28 = *(this + 34);
                do
                {
                  v30 = *(v28 - 24);
                  v28 -= 24;
                  v29 = v30;
                  if (v30)
                  {
                    *(v22 - 16) = v29;
                    operator delete(v29);
                  }

                  v22 = v28;
                }

                while (v28 != v27);
              }

              *(this + 34) = v27;
            }
          }

          v19 = *(this + 33) + 24 * v25;
          LODWORD(v398) = v15;
          BYTE4(v398) = v20 < 0;
          std::vector<operations_research::sat::LinearIncrementalEvaluator::LiteralEntry>::push_back[abi:ne200100](v19, &v398);
          ++v17;
        }

        while (v17 != v18);
      }

      v97 = *(a2 + 6);
      if (*(a2 + 15) != 3)
      {
        v97 = &operations_research::sat::_BoolArgumentProto_default_instance_;
      }

      v98 = *(v97 + 4);
      if (v98)
      {
        v99 = v97[3];
        v100 = &v99[v98];
        do
        {
          v102 = *v99;
          if (*v99 > ~*v99)
          {
            v103 = *v99;
          }

          else
          {
            v103 = ~v102;
          }

          v105 = *(this + 33);
          v104 = *(this + 34);
          v106 = 0xAAAAAAAAAAAAAAABLL * ((v104 - v105) >> 3);
          v107 = v103;
          if (v106 <= v103)
          {
            v108 = v103 + 1;
            if (v108 > v106)
            {
              std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append(this + 264, v108 - v106);
            }

            else if (v108 < v106)
            {
              v109 = v105 + 24 * v108;
              if (v104 != v109)
              {
                v110 = *(this + 34);
                do
                {
                  v112 = *(v110 - 24);
                  v110 -= 24;
                  v111 = v112;
                  if (v112)
                  {
                    *(v104 - 16) = v111;
                    operator delete(v111);
                  }

                  v104 = v110;
                }

                while (v110 != v109);
              }

              *(this + 34) = v109;
            }
          }

          v101 = *(this + 33) + 24 * v107;
          LODWORD(v398) = v15;
          BYTE4(v398) = v102 < 0;
          std::vector<operations_research::sat::LinearIncrementalEvaluator::LiteralEntry>::push_back[abi:ne200100](v101, &v398);
          ++v99;
        }

        while (v99 != v100);
      }

      return;
    case 4:
      operations_research::Domain::Domain(v403, *(*(a2 + 6) + 16));
      v31 = operations_research::sat::LinearIncrementalEvaluator::NewConstraint(this + 44, v403);
      if (v403[0])
      {
        operator delete(v403[1]);
      }

      v32 = *(a2 + 4);
      if (v32)
      {
        v33 = *(a2 + 3);
        v34 = &v33[v32];
        do
        {
          v36 = ~*v33;
          if (v36 <= *v33)
          {
            v37 = *v33;
          }

          else
          {
            v37 = ~*v33;
          }

          v39 = *(this + 33);
          v38 = *(this + 34);
          v40 = 0xAAAAAAAAAAAAAAABLL * ((v38 - v39) >> 3);
          v41 = v37;
          if (v40 <= v37)
          {
            v42 = v37 + 1;
            if (v42 > v40)
            {
              std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append(this + 264, v42 - v40);
            }

            else if (v42 < v40)
            {
              v43 = v39 + 24 * v42;
              if (v38 != v43)
              {
                v44 = *(this + 34);
                do
                {
                  v46 = *(v44 - 24);
                  v44 -= 24;
                  v45 = v46;
                  if (v46)
                  {
                    *(v38 - 16) = v45;
                    operator delete(v45);
                  }

                  v38 = v44;
                }

                while (v44 != v43);
              }

              *(this + 34) = v43;
            }
          }

          v35 = *(this + 33) + 24 * v41;
          LODWORD(v398) = v31;
          BYTE4(v398) = v36 < 0;
          std::vector<operations_research::sat::LinearIncrementalEvaluator::LiteralEntry>::push_back[abi:ne200100](v35, &v398);
          ++v33;
        }

        while (v33 != v34);
      }

      v113 = *(a2 + 6);
      if (*(a2 + 15) != 4)
      {
        v113 = &operations_research::sat::_BoolArgumentProto_default_instance_;
      }

      v114 = *(v113 + 4);
      if (!v114)
      {
        return;
      }

      v115 = v113[3];
      v116 = 4 * v114;
      do
      {
        while (1)
        {
          v117 = *v115;
          if ((*v115 & 0x80000000) == 0)
          {
            break;
          }

          operations_research::sat::LinearIncrementalEvaluator::AddTerm((this + 176), v31, ~v117, -1, 1);
          ++v115;
          v116 -= 4;
          if (!v116)
          {
            return;
          }
        }

        operations_research::sat::LinearIncrementalEvaluator::AddTerm((this + 176), v31, v117, 1, 0);
        ++v115;
        v116 -= 4;
      }

      while (v116);
      return;
    case 5:
      operator new();
    case 7:
      operator new();
    case 8:
      operator new();
    case 0xB:
      operator new();
    case 0xC:
      operations_research::Domain::FromFlatSpanOfIntervals(*(*(a2 + 6) + 72), *(*(a2 + 6) + 64), &v398, a3);
      v396 = 0;
      if (v398 >= 2)
      {
        if (v398)
        {
          absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::InitFrom(&v396, &v398);
        }

        else
        {
          v396 = v398;
          *v397 = *v399;
        }
      }

      v375 = operations_research::sat::LinearIncrementalEvaluator::NewConstraint(this + 44, &v396);
      if (v396)
      {
        operator delete(v397[0]);
      }

      v376 = *(a2 + 4);
      if (v376)
      {
        v377 = *(a2 + 3);
        v378 = &v377[v376];
        do
        {
          v379 = ~*v377;
          if (v379 <= *v377)
          {
            v380 = *v377;
          }

          else
          {
            v380 = ~*v377;
          }

          v382 = *(this + 33);
          v381 = *(this + 34);
          v383 = 0xAAAAAAAAAAAAAAABLL * ((v381 - v382) >> 3);
          v384 = v380;
          if (v383 <= v380)
          {
            v385 = v380 + 1;
            if (v385 <= v383)
            {
              if (v385 < v383)
              {
                v386 = v382 + 24 * v385;
                if (v381 != v386)
                {
                  v387 = *(this + 34);
                  do
                  {
                    v389 = *(v387 - 24);
                    v387 -= 24;
                    v388 = v389;
                    if (v389)
                    {
                      *(v381 - 16) = v388;
                      operator delete(v388);
                    }

                    v381 = v387;
                  }

                  while (v387 != v386);
                }

                *(this + 34) = v386;
              }
            }

            else
            {
              std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append(this + 264, v385 - v383);
            }
          }

          v390 = *(this + 33) + 24 * v384;
          LODWORD(v405[0]) = v375;
          BYTE4(v405[0]) = v379 < 0;
          std::vector<operations_research::sat::LinearIncrementalEvaluator::LiteralEntry>::push_back[abi:ne200100](v390, v405);
          ++v377;
        }

        while (v377 != v378);
      }

      v391 = 0;
      if (*(a2 + 15) != 12)
      {
        goto LABEL_420;
      }

      while (1)
      {
        v392 = *(a2 + 6);
        if (v391 >= *(v392 + 4))
        {
          break;
        }

        while (1)
        {
          operations_research::sat::LinearIncrementalEvaluator::AddTerm((this + 176), v375, *(v392[3] + v391), v392[6][v391], 0);
          ++v391;
          if (*(a2 + 15) == 12)
          {
            break;
          }

LABEL_420:
          v392 = &operations_research::sat::_LinearConstraintProto_default_instance_;
          if (v391 >= off_2810BEE58)
          {
            goto LABEL_425;
          }
        }
      }

LABEL_425:
      if (v398)
      {
        operator delete(v399[0]);
      }

      return;
    case 0xD:
      operator new();
    case 0xF:
    case 0x17:
      operator new();
    case 0x14:
      v12 = *(*(a2 + 6) + 16);
      if (v12 < 2)
      {
        return;
      }

      if (v12 > *(*(this + 1) + 928))
      {
        operator new();
      }

      v118 = 0;
      v119 = 1;
LABEL_236:
      v209 = *(a2 + 6);
      if (v119 >= *(v209 + 16))
      {
        return;
      }

      v120 = *(*(v209 + 24) + 4 * v118);
      v121 = *this;
      v122 = *(*this + 48);
      v123 = v122 + 8 * v120 + 7;
      if ((v122 & 1) == 0)
      {
        v123 = *this + 48;
      }

      v124 = *v123;
      v125 = *(*v123 + 60);
      v126 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
      if (v125 == 19)
      {
        v126 = *(v124 + 48);
      }

      if (v126[3])
      {
        v127 = v126[3];
      }

      else
      {
        v127 = &operations_research::sat::_LinearExpressionProto_default_instance_;
      }

      v128 = v127[8];
      v129 = *(v127 + 4);
      if (v129 < 1)
      {
        goto LABEL_164;
      }

      v130 = *(v121 + 24);
      v131 = v127[6];
      if (v130)
      {
        v132 = v127[3];
        v133 = v130 + 7;
        do
        {
          while (1)
          {
            v136 = *v132;
            v132 = (v132 + 4);
            v137 = *(v133 + 8 * v136);
            v139 = *v131++;
            v138 = v139;
            if (v139 >= 1)
            {
              break;
            }

            v128 = (v128 + *(*(v137 + 24) + 8 * (*(v137 + 16) - 1)) * v138);
            if (!--v129)
            {
              goto LABEL_164;
            }
          }

          v128 = (v128 + **(v137 + 24) * v138);
          --v129;
        }

        while (v129);
      }

      else
      {
        do
        {
          while (1)
          {
            v135 = *v131++;
            v134 = v135;
            if (v135 > 0)
            {
              break;
            }

            v128 = (v128 + *(*(v130 + 24) + 8 * (*(v130 + 16) - 1)) * v134);
            if (!--v129)
            {
              goto LABEL_164;
            }
          }

          v128 = (v128 + **(v130 + 24) * v134);
          --v129;
        }

        while (v129);
      }

LABEL_164:
      v140 = v126[4];
      if (v140)
      {
        v141 = v140;
      }

      else
      {
        v141 = &operations_research::sat::_LinearExpressionProto_default_instance_;
      }

      v142 = v141[8];
      v143 = *(v141 + 4);
      if (v143 >= 1)
      {
        v144 = *(v121 + 24);
        v145 = v141[6];
        if (v144)
        {
          v146 = v141[3];
          v147 = v144 + 7;
          do
          {
            while (1)
            {
              v150 = *v146;
              v146 = (v146 + 4);
              v151 = *(v147 + 8 * v150);
              v153 = *v145++;
              v152 = v153;
              if (v153 >= 1)
              {
                break;
              }

              v142 = (v142 + **(v151 + 24) * v152);
              if (!--v143)
              {
                goto LABEL_177;
              }
            }

            v142 = (v142 + *(*(v151 + 24) + 8 * (*(v151 + 16) - 1)) * v152);
            --v143;
          }

          while (v143);
        }

        else
        {
          do
          {
            while (1)
            {
              v149 = *v145++;
              v148 = v149;
              if (v149 > 0)
              {
                break;
              }

              v142 = (v142 + **(v144 + 24) * v148);
              if (!--v143)
              {
                goto LABEL_177;
              }
            }

            v142 = (v142 + *(*(v144 + 24) + 8 * (*(v144 + 16) - 1)) * v148);
            --v143;
          }

          while (v143);
        }
      }

LABEL_177:
      for (i = v119; ; ++i)
      {
        v155 = *(a2 + 6);
        if (i >= *(v155 + 16))
        {
          v118 = v119++;
          goto LABEL_236;
        }

        v156 = *this;
        v157 = *(*this + 48);
        v158 = (v157 + 8 * *(*(v155 + 24) + 4 * i) + 7);
        if ((v157 & 1) == 0)
        {
          v158 = (*this + 48);
        }

        v159 = *v158;
        v160 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
        if (*(v159 + 60) == 19)
        {
          v160 = *(v159 + 48);
        }

        if (v160[3])
        {
          v161 = v160[3];
        }

        else
        {
          v161 = &operations_research::sat::_LinearExpressionProto_default_instance_;
        }

        v162 = v161[8];
        v163 = *(v161 + 4);
        if (v163 >= 1)
        {
          v164 = *(v156 + 24);
          v165 = v161[6];
          if (v164)
          {
            v166 = v161[3];
            v167 = v164 + 7;
            do
            {
              while (1)
              {
                v170 = *v166;
                v166 = (v166 + 4);
                v171 = *(v167 + 8 * v170);
                v173 = *v165++;
                v172 = v173;
                if (v173 >= 1)
                {
                  break;
                }

                v162 = (v162 + *(*(v171 + 24) + 8 * (*(v171 + 16) - 1)) * v172);
                if (!--v163)
                {
                  goto LABEL_197;
                }
              }

              v162 = (v162 + **(v171 + 24) * v172);
              --v163;
            }

            while (v163);
          }

          else
          {
            do
            {
              while (1)
              {
                v169 = *v165++;
                v168 = v169;
                if (v169 > 0)
                {
                  break;
                }

                v162 = (v162 + *(*(v164 + 24) + 8 * (*(v164 + 16) - 1)) * v168);
                if (!--v163)
                {
                  goto LABEL_197;
                }
              }

              v162 = (v162 + **(v164 + 24) * v168);
              --v163;
            }

            while (v163);
          }
        }

LABEL_197:
        v174 = v160[4];
        if (v174)
        {
          v175 = v174;
        }

        else
        {
          v175 = &operations_research::sat::_LinearExpressionProto_default_instance_;
        }

        v176 = v175[8];
        v177 = *(v175 + 4);
        if (v177 >= 1)
        {
          v178 = *(v156 + 24);
          v179 = v175[6];
          if (v178)
          {
            v180 = v175[3];
            v181 = v178 + 7;
            do
            {
              while (1)
              {
                v184 = *v180;
                v180 = (v180 + 4);
                v185 = *(v181 + 8 * v184);
                v187 = *v179++;
                v186 = v187;
                if (v187 >= 1)
                {
                  break;
                }

                v176 = (v176 + **(v185 + 24) * v186);
                if (!--v177)
                {
                  goto LABEL_210;
                }
              }

              v176 = (v176 + *(*(v185 + 24) + 8 * (*(v185 + 16) - 1)) * v186);
              --v177;
            }

            while (v177);
          }

          else
          {
            do
            {
              while (1)
              {
                v183 = *v179++;
                v182 = v183;
                if (v183 > 0)
                {
                  break;
                }

                v176 = (v176 + **(v178 + 24) * v182);
                if (!--v177)
                {
                  goto LABEL_210;
                }
              }

              v176 = (v176 + *(*(v178 + 24) + 8 * (*(v178 + 16) - 1)) * v182);
              --v177;
            }

            while (v177);
          }
        }

LABEL_210:
        if (v128 < v176 && v162 < v142)
        {
          v189 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((this + 64), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
          v190 = v189;
          if (*(v189 + 60) == 20)
          {
            v191 = *(v189 + 48);
          }

          else
          {
            operations_research::sat::ConstraintProto::clear_constraint(v189);
            *(v190 + 60) = 20;
            v192 = *(v190 + 8);
            if (v192)
            {
              v192 = *(v192 & 0xFFFFFFFFFFFFFFFELL);
            }

            v191 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::NoOverlapConstraintProto>(v192);
            *(v190 + 48) = v191;
          }

          if (*(a2 + 15) == 20)
          {
            v193 = *(a2 + 6);
          }

          else
          {
            v193 = &operations_research::sat::_NoOverlapConstraintProto_default_instance_;
          }

          v194 = *(v193[3] + v118);
          v195 = (v191 + 2);
          v196 = v191[2];
          v197 = v196;
          if (v196 == HIDWORD(v196))
          {
            v207 = v191;
            google::protobuf::RepeatedField<int>::Grow(v191 + 2, HIDWORD(v196), (HIDWORD(v196) + 1));
            v191 = v207;
            v197 = *v195;
          }

          v198 = v191[3];
          *(v191 + 4) = v197 + 1;
          *(v198 + 4 * v197) = v194;
          if (*(v190 + 60) == 20)
          {
            v199 = *(v190 + 48);
          }

          else
          {
            operations_research::sat::ConstraintProto::clear_constraint(v190);
            *(v190 + 60) = 20;
            v200 = *(v190 + 8);
            if (v200)
            {
              v200 = *(v200 & 0xFFFFFFFFFFFFFFFELL);
            }

            v199 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::NoOverlapConstraintProto>(v200);
            *(v190 + 48) = v199;
          }

          if (*(a2 + 15) == 20)
          {
            v201 = *(a2 + 6);
          }

          else
          {
            v201 = &operations_research::sat::_NoOverlapConstraintProto_default_instance_;
          }

          v202 = *(v201[3] + i);
          v203 = (v199 + 2);
          v204 = v199[2];
          v205 = v204;
          if (v204 == HIDWORD(v204))
          {
            v208 = v199;
            google::protobuf::RepeatedField<int>::Grow(v199 + 2, HIDWORD(v204), (HIDWORD(v204) + 1));
            v199 = v208;
            v205 = *v203;
          }

          v206 = v199[3];
          *(v199 + 4) = v205 + 1;
          *(v206 + 4 * v205) = v202;
          operator new();
        }
      }

    case 0x15:
      v13 = *(a2 + 6);
      v14 = *(v13 + 16);
      if (v14 < 2)
      {
        return;
      }

      if (v14 > *(*(this + 1) + 928))
      {
        operator new();
      }

      v210 = 0;
      v211 = 1;
      v394 = *(a2 + 6);
      do
      {
        v213 = *this;
        v214 = *this + 48;
        v215 = *v214;
        v216 = *v214 + 7 + 8 * *(*(v13 + 24) + 4 * v210);
        if ((*v214 & 1) == 0)
        {
          v216 = *this + 48;
        }

        v217 = *v216;
        v218 = *(*v216 + 60);
        v219 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
        if (v218 == 19)
        {
          v219 = *(v217 + 48);
        }

        if (v219[3])
        {
          v220 = v219[3];
        }

        else
        {
          v220 = &operations_research::sat::_LinearExpressionProto_default_instance_;
        }

        v221 = v220[8];
        v222 = *(v220 + 4);
        if (v222 >= 1)
        {
          v223 = *(v213 + 24);
          v224 = v220[6];
          if (v223)
          {
            v225 = v220[3];
            v226 = v223 + 7;
            do
            {
              while (1)
              {
                v229 = *v225;
                v225 = (v225 + 4);
                v230 = *(v226 + 8 * v229);
                v232 = *v224++;
                v231 = v232;
                if (v232 >= 1)
                {
                  break;
                }

                v221 = (v221 + *(*(v230 + 24) + 8 * (*(v230 + 16) - 1)) * v231);
                if (!--v222)
                {
                  goto LABEL_258;
                }
              }

              v221 = (v221 + **(v230 + 24) * v231);
              --v222;
            }

            while (v222);
          }

          else
          {
            do
            {
              while (1)
              {
                v228 = *v224++;
                v227 = v228;
                if (v228 > 0)
                {
                  break;
                }

                v221 = (v221 + *(*(v223 + 24) + 8 * (*(v223 + 16) - 1)) * v227);
                if (!--v222)
                {
                  goto LABEL_258;
                }
              }

              v221 = (v221 + **(v223 + 24) * v227);
              --v222;
            }

            while (v222);
          }
        }

LABEL_258:
        v233 = v219[4];
        if (v233)
        {
          v234 = v233;
        }

        else
        {
          v234 = &operations_research::sat::_LinearExpressionProto_default_instance_;
        }

        v235 = v234[8];
        v236 = *(v234 + 4);
        if (v236 >= 1)
        {
          v237 = *(v213 + 24);
          v238 = v234[6];
          if (v237)
          {
            v239 = v234[3];
            v240 = v237 + 7;
            do
            {
              while (1)
              {
                v243 = *v239;
                v239 = (v239 + 4);
                v244 = *(v240 + 8 * v243);
                v246 = *v238++;
                v245 = v246;
                if (v246 >= 1)
                {
                  break;
                }

                v235 = (v235 + **(v244 + 24) * v245);
                if (!--v236)
                {
                  goto LABEL_271;
                }
              }

              v235 = (v235 + *(*(v244 + 24) + 8 * (*(v244 + 16) - 1)) * v245);
              --v236;
            }

            while (v236);
          }

          else
          {
            do
            {
              while (1)
              {
                v242 = *v238++;
                v241 = v242;
                if (v242 > 0)
                {
                  break;
                }

                v235 = (v235 + **(v237 + 24) * v241);
                if (!--v236)
                {
                  goto LABEL_271;
                }
              }

              v235 = (v235 + *(*(v237 + 24) + 8 * (*(v237 + 16) - 1)) * v241);
              --v236;
            }

            while (v236);
          }
        }

LABEL_271:
        if (v215)
        {
          v214 = v215 + 7 + 8 * *(*(v13 + 48) + 4 * v210);
        }

        v247 = *v214;
        v248 = *(*v214 + 60);
        v249 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
        if (v248 == 19)
        {
          v249 = *(v247 + 48);
        }

        if (v249[3])
        {
          v250 = v249[3];
        }

        else
        {
          v250 = &operations_research::sat::_LinearExpressionProto_default_instance_;
        }

        v251 = v250[8];
        v252 = *(v250 + 4);
        if (v252 >= 1)
        {
          v253 = *(v213 + 24);
          v254 = v250[6];
          if (v253)
          {
            v255 = v250[3];
            v256 = v253 + 7;
            do
            {
              while (1)
              {
                v259 = *v255;
                v255 = (v255 + 4);
                v260 = *(v256 + 8 * v259);
                v262 = *v254++;
                v261 = v262;
                if (v262 >= 1)
                {
                  break;
                }

                v251 = (v251 + *(*(v260 + 24) + 8 * (*(v260 + 16) - 1)) * v261);
                if (!--v252)
                {
                  goto LABEL_288;
                }
              }

              v251 = (v251 + **(v260 + 24) * v261);
              --v252;
            }

            while (v252);
          }

          else
          {
            do
            {
              while (1)
              {
                v258 = *v254++;
                v257 = v258;
                if (v258 > 0)
                {
                  break;
                }

                v251 = (v251 + *(*(v253 + 24) + 8 * (*(v253 + 16) - 1)) * v257);
                if (!--v252)
                {
                  goto LABEL_288;
                }
              }

              v251 = (v251 + **(v253 + 24) * v257);
              --v252;
            }

            while (v252);
          }
        }

LABEL_288:
        v263 = v249[4];
        if (v263)
        {
          v264 = v263;
        }

        else
        {
          v264 = &operations_research::sat::_LinearExpressionProto_default_instance_;
        }

        v265 = v264[8];
        v266 = *(v264 + 4);
        if (v266 >= 1)
        {
          v267 = *(v213 + 24);
          v268 = v264[6];
          if (v267)
          {
            v269 = v264[3];
            v270 = v267 + 7;
            do
            {
              while (1)
              {
                v273 = *v269;
                v269 = (v269 + 4);
                v274 = *(v270 + 8 * v273);
                v276 = *v268++;
                v275 = v276;
                if (v276 >= 1)
                {
                  break;
                }

                v265 = (v265 + **(v274 + 24) * v275);
                if (!--v266)
                {
                  goto LABEL_301;
                }
              }

              v265 = (v265 + *(*(v274 + 24) + 8 * (*(v274 + 16) - 1)) * v275);
              --v266;
            }

            while (v266);
          }

          else
          {
            do
            {
              while (1)
              {
                v272 = *v268++;
                v271 = v272;
                if (v272 > 0)
                {
                  break;
                }

                v265 = (v265 + **(v267 + 24) * v271);
                if (!--v266)
                {
                  goto LABEL_301;
                }
              }

              v265 = (v265 + *(*(v267 + 24) + 8 * (*(v267 + 16) - 1)) * v271);
              --v266;
            }

            while (v266);
          }
        }

LABEL_301:
        v212 = v14;
        if (v211 < v14)
        {
          v393 = v211;
          v395 = v210;
          do
          {
            v277 = *this;
            v278 = (*this + 48);
            v279 = *v278;
            v280 = (*v278 + 7 + 8 * *(*(v13 + 24) + 4 * v211));
            if ((*v278 & 1) == 0)
            {
              v280 = (*this + 48);
            }

            v281 = *v280;
            v282 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
            if (*(v281 + 60) == 19)
            {
              v282 = *(v281 + 48);
            }

            if (v282[3])
            {
              v283 = v282[3];
            }

            else
            {
              v283 = &operations_research::sat::_LinearExpressionProto_default_instance_;
            }

            v284 = v283[8];
            v285 = *(v283 + 4);
            if (v285 >= 1)
            {
              v286 = *(v277 + 24);
              v287 = v283[6];
              if (v286)
              {
                v288 = v283[3];
                v289 = v286 + 7;
                do
                {
                  while (1)
                  {
                    v292 = *v288;
                    v288 = (v288 + 4);
                    v293 = *(v289 + 8 * v292);
                    v295 = *v287++;
                    v294 = v295;
                    if (v295 >= 1)
                    {
                      break;
                    }

                    v284 = (v284 + *(*(v293 + 24) + 8 * (*(v293 + 16) - 1)) * v294);
                    if (!--v285)
                    {
                      goto LABEL_321;
                    }
                  }

                  v284 = (v284 + **(v293 + 24) * v294);
                  --v285;
                }

                while (v285);
              }

              else
              {
                do
                {
                  while (1)
                  {
                    v291 = *v287++;
                    v290 = v291;
                    if (v291 > 0)
                    {
                      break;
                    }

                    v284 = (v284 + *(*(v286 + 24) + 8 * (*(v286 + 16) - 1)) * v290);
                    if (!--v285)
                    {
                      goto LABEL_321;
                    }
                  }

                  v284 = (v284 + **(v286 + 24) * v290);
                  --v285;
                }

                while (v285);
              }
            }

LABEL_321:
            v296 = v282[4];
            if (v296)
            {
              v297 = v296;
            }

            else
            {
              v297 = &operations_research::sat::_LinearExpressionProto_default_instance_;
            }

            v298 = v297[8];
            v299 = *(v297 + 4);
            if (v299 >= 1)
            {
              v300 = *(v277 + 24);
              v301 = v297[6];
              if (v300)
              {
                v302 = v297[3];
                v303 = v300 + 7;
                do
                {
                  while (1)
                  {
                    v306 = *v302;
                    v302 = (v302 + 4);
                    v307 = *(v303 + 8 * v306);
                    v309 = *v301++;
                    v308 = v309;
                    if (v309 >= 1)
                    {
                      break;
                    }

                    v298 = (v298 + **(v307 + 24) * v308);
                    if (!--v299)
                    {
                      goto LABEL_334;
                    }
                  }

                  v298 = (v298 + *(*(v307 + 24) + 8 * (*(v307 + 16) - 1)) * v308);
                  --v299;
                }

                while (v299);
              }

              else
              {
                do
                {
                  while (1)
                  {
                    v305 = *v301++;
                    v304 = v305;
                    if (v305 > 0)
                    {
                      break;
                    }

                    v298 = (v298 + **(v300 + 24) * v304);
                    if (!--v299)
                    {
                      goto LABEL_334;
                    }
                  }

                  v298 = (v298 + *(*(v300 + 24) + 8 * (*(v300 + 16) - 1)) * v304);
                  --v299;
                }

                while (v299);
              }
            }

LABEL_334:
            if (v279)
            {
              v278 = (v279 + 7 + 8 * *(*(v13 + 48) + 4 * v211));
            }

            v310 = *v278;
            v311 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
            if (*(v310 + 60) == 19)
            {
              v311 = *(v310 + 48);
            }

            if (v311[3])
            {
              v312 = v311[3];
            }

            else
            {
              v312 = &operations_research::sat::_LinearExpressionProto_default_instance_;
            }

            v313 = v312[8];
            v314 = *(v312 + 4);
            if (v314 >= 1)
            {
              v315 = *(v277 + 24);
              v316 = v312[6];
              if (v315)
              {
                v317 = v312[3];
                v318 = v315 + 7;
                do
                {
                  while (1)
                  {
                    v321 = *v317;
                    v317 = (v317 + 4);
                    v322 = *(v318 + 8 * v321);
                    v324 = *v316++;
                    v323 = v324;
                    if (v324 >= 1)
                    {
                      break;
                    }

                    v313 = (v313 + *(*(v322 + 24) + 8 * (*(v322 + 16) - 1)) * v323);
                    if (!--v314)
                    {
                      goto LABEL_351;
                    }
                  }

                  v313 = (v313 + **(v322 + 24) * v323);
                  --v314;
                }

                while (v314);
              }

              else
              {
                do
                {
                  while (1)
                  {
                    v320 = *v316++;
                    v319 = v320;
                    if (v320 > 0)
                    {
                      break;
                    }

                    v313 = (v313 + *(*(v315 + 24) + 8 * (*(v315 + 16) - 1)) * v319);
                    if (!--v314)
                    {
                      goto LABEL_351;
                    }
                  }

                  v313 = (v313 + **(v315 + 24) * v319);
                  --v314;
                }

                while (v314);
              }
            }

LABEL_351:
            v325 = v311[4];
            if (v325)
            {
              v326 = v325;
            }

            else
            {
              v326 = &operations_research::sat::_LinearExpressionProto_default_instance_;
            }

            v327 = v326[8];
            v328 = *(v326 + 4);
            if (v328 >= 1)
            {
              v329 = *(v277 + 24);
              v330 = v326[6];
              if (v329)
              {
                v331 = v326[3];
                v332 = v329 + 7;
                do
                {
                  while (1)
                  {
                    v335 = *v331;
                    v331 = (v331 + 4);
                    v336 = *(v332 + 8 * v335);
                    v338 = *v330++;
                    v337 = v338;
                    if (v338 >= 1)
                    {
                      break;
                    }

                    v327 = (v327 + **(v336 + 24) * v337);
                    if (!--v328)
                    {
                      goto LABEL_364;
                    }
                  }

                  v327 = (v327 + *(*(v336 + 24) + 8 * (*(v336 + 16) - 1)) * v337);
                  --v328;
                }

                while (v328);
              }

              else
              {
                do
                {
                  while (1)
                  {
                    v334 = *v330++;
                    v333 = v334;
                    if (v334 > 0)
                    {
                      break;
                    }

                    v327 = (v327 + **(v329 + 24) * v333);
                    if (!--v328)
                    {
                      goto LABEL_364;
                    }
                  }

                  v327 = (v327 + *(*(v329 + 24) + 8 * (*(v329 + 16) - 1)) * v333);
                  --v328;
                }

                while (v328);
              }
            }

LABEL_364:
            if (v221 < v298 && v284 < v235 && v251 < v327 && v313 < v265)
            {
              v340 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((this + 64), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
              v341 = v340;
              if (*(v340 + 60) == 21)
              {
                v342 = *(v340 + 48);
              }

              else
              {
                operations_research::sat::ConstraintProto::clear_constraint(v340);
                *(v341 + 60) = 21;
                v343 = *(v341 + 8);
                if (v343)
                {
                  v343 = *(v343 & 0xFFFFFFFFFFFFFFFELL);
                }

                v342 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::NoOverlap2DConstraintProto>(v343);
                *(v341 + 48) = v342;
              }

              v344 = *(*(v13 + 24) + 4 * v210);
              v345 = (v342 + 16);
              v346 = *(v342 + 16);
              v347 = v346;
              if (v346 == HIDWORD(v346))
              {
                v371 = v342;
                google::protobuf::RepeatedField<int>::Grow(v342 + 16, HIDWORD(v346), (HIDWORD(v346) + 1));
                v342 = v371;
                v13 = v394;
                v347 = *v345;
              }

              v348 = *(v342 + 24);
              *(v342 + 16) = v347 + 1;
              *(v348 + 4 * v347) = v344;
              if (*(v341 + 60) == 21)
              {
                v349 = *(v341 + 48);
              }

              else
              {
                operations_research::sat::ConstraintProto::clear_constraint(v341);
                *(v341 + 60) = 21;
                v350 = *(v341 + 8);
                if (v350)
                {
                  v350 = *(v350 & 0xFFFFFFFFFFFFFFFELL);
                }

                v349 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::NoOverlap2DConstraintProto>(v350);
                *(v341 + 48) = v349;
              }

              v351 = *(*(v13 + 24) + 4 * v211);
              v352 = (v349 + 16);
              v353 = *(v349 + 16);
              v354 = v353;
              if (v353 == HIDWORD(v353))
              {
                v372 = v349;
                google::protobuf::RepeatedField<int>::Grow(v349 + 16, HIDWORD(v353), (HIDWORD(v353) + 1));
                v349 = v372;
                v13 = v394;
                v354 = *v352;
              }

              v355 = *(v349 + 24);
              *(v349 + 16) = v354 + 1;
              *(v355 + 4 * v354) = v351;
              if (*(v341 + 60) == 21)
              {
                v356 = *(v341 + 48);
                v357 = v395;
              }

              else
              {
                operations_research::sat::ConstraintProto::clear_constraint(v341);
                *(v341 + 60) = 21;
                v358 = *(v341 + 8);
                v357 = v395;
                if (v358)
                {
                  v358 = *(v358 & 0xFFFFFFFFFFFFFFFELL);
                }

                v356 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::NoOverlap2DConstraintProto>(v358);
                *(v341 + 48) = v356;
              }

              v359 = *(*(v13 + 48) + 4 * v357);
              v360 = (v356 + 40);
              v361 = *(v356 + 40);
              v362 = v361;
              if (v361 == HIDWORD(v361))
              {
                v373 = v356;
                google::protobuf::RepeatedField<int>::Grow(v356 + 40, HIDWORD(v361), (HIDWORD(v361) + 1));
                v356 = v373;
                v13 = v394;
                v362 = *v360;
              }

              v363 = *(v356 + 48);
              *(v356 + 40) = v362 + 1;
              *(v363 + 4 * v362) = v359;
              if (*(v341 + 60) == 21)
              {
                v364 = *(v341 + 48);
              }

              else
              {
                operations_research::sat::ConstraintProto::clear_constraint(v341);
                *(v341 + 60) = 21;
                v365 = *(v341 + 8);
                if (v365)
                {
                  v365 = *(v365 & 0xFFFFFFFFFFFFFFFELL);
                }

                v364 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::NoOverlap2DConstraintProto>(v365);
                *(v341 + 48) = v364;
              }

              v366 = *(*(v13 + 48) + 4 * v211);
              v367 = (v364 + 40);
              v368 = *(v364 + 40);
              v369 = v368;
              if (v368 == HIDWORD(v368))
              {
                v374 = v364;
                google::protobuf::RepeatedField<int>::Grow(v364 + 40, HIDWORD(v368), (HIDWORD(v368) + 1));
                v364 = v374;
                v369 = *v367;
              }

              v370 = *(v364 + 48);
              *(v364 + 40) = v369 + 1;
              *(v370 + 4 * v369) = v366;
              operator new();
            }

            ++v211;
          }

          while (v211 < v14);
          v212 = v14;
          v211 = v393;
        }

        ++v211;
        ++v210;
      }

      while (v211 < v212);
      return;
    case 0x16:
      operator new();
    case 0x1A:
      operations_research::Domain::Domain(v402, 0, 1);
      v6 = operations_research::sat::LinearIncrementalEvaluator::NewConstraint(this + 44, v402);
      if (v402[0])
      {
        operator delete(v402[1]);
      }

      v7 = *(a2 + 6);
      if (*(a2 + 15) != 26)
      {
        v7 = &operations_research::sat::_BoolArgumentProto_default_instance_;
      }

      v8 = *(v7 + 4);
      if (!v8)
      {
        return;
      }

      v9 = v7[3];
      v10 = 4 * v8;
      do
      {
        while (1)
        {
          v11 = *v9;
          if ((*v9 & 0x80000000) == 0)
          {
            break;
          }

          operations_research::sat::LinearIncrementalEvaluator::AddTerm((this + 176), v6, ~v11, -1, 1);
          ++v9;
          v10 -= 4;
          if (!v10)
          {
            return;
          }
        }

        operations_research::sat::LinearIncrementalEvaluator::AddTerm((this + 176), v6, v11, 1, 0);
        ++v9;
        v10 -= 4;
      }

      while (v10);
      return;
    case 0x1B:
      v47 = *(a2 + 6);
      v48 = *(v47 + 24);
      v49 = (v48 + 7);
      if (v48)
      {
        v50 = v49;
      }

      else
      {
        v50 = (v47 + 24);
      }

      v51 = *(v47 + 32);
      if (!v51)
      {
        goto LABEL_145;
      }

      v52 = &v50[v51];
      v53 = *(v47 + 48);
      if (v53)
      {
        v54 = v53;
      }

      else
      {
        v54 = &operations_research::sat::_LinearExpressionProto_default_instance_;
      }

      while (1)
      {
        v55 = *this;
        v56 = v54[8];
        v57 = *(v54 + 4);
        if (v57 >= 1)
        {
          v58 = *(v55 + 24);
          v59 = v54[6];
          if (v58)
          {
            v60 = v54[3];
            v61 = v58 + 7;
            do
            {
              while (1)
              {
                v64 = *v60;
                v60 = (v60 + 4);
                v65 = *(v61 + 8 * v64);
                v67 = *v59++;
                v66 = v67;
                if (v67 >= 1)
                {
                  break;
                }

                v56 = (v56 + **(v65 + 24) * v66);
                if (!--v57)
                {
                  goto LABEL_83;
                }
              }

              v56 = (v56 + *(*(v65 + 24) + 8 * (*(v65 + 16) - 1)) * v66);
              --v57;
            }

            while (v57);
          }

          else
          {
            do
            {
              while (1)
              {
                v63 = *v59++;
                v62 = v63;
                if (v63 > 0)
                {
                  break;
                }

                v56 = (v56 + **(v58 + 24) * v62);
                if (!--v57)
                {
                  goto LABEL_83;
                }
              }

              v56 = (v56 + *(*(v58 + 24) + 8 * (*(v58 + 16) - 1)) * v62);
              --v57;
            }

            while (v57);
          }
        }

LABEL_83:
        v68 = *v50;
        v69 = *(*v50 + 64);
        v70 = *(*v50 + 16);
        if (v70 >= 1)
        {
          v71 = *(v55 + 24);
          v72 = *(v68 + 48);
          if (v71)
          {
            v73 = *(v68 + 24);
            v74 = v71 + 7;
            do
            {
              while (1)
              {
                v77 = *v73++;
                v78 = *(v74 + 8 * v77);
                v80 = *v72++;
                v79 = v80;
                if (v80 >= 1)
                {
                  break;
                }

                v69 += *(*(v78 + 24) + 8 * (*(v78 + 16) - 1)) * v79;
                if (!--v70)
                {
                  goto LABEL_93;
                }
              }

              v69 += **(v78 + 24) * v79;
              --v70;
            }

            while (v70);
          }

          else
          {
            do
            {
              while (1)
              {
                v76 = *v72++;
                v75 = v76;
                if (v76 > 0)
                {
                  break;
                }

                v69 += *(*(v71 + 24) + 8 * (*(v71 + 16) - 1)) * v75;
                if (!--v70)
                {
                  goto LABEL_93;
                }
              }

              v69 += **(v71 + 24) * v75;
              --v70;
            }

            while (v70);
          }
        }

LABEL_93:
        operations_research::Domain::Domain(v400, 0, v56 - v69);
        v81 = operations_research::sat::LinearIncrementalEvaluator::NewConstraint(this + 44, v400);
        if (v400[0])
        {
          operator delete(v400[1]);
        }

        v82 = *(this + 26);
        v83 = v54[8] + *(v82 + 8 * v81);
        *(v82 + 8 * v81) = v83;
        v84 = *(v54 + 4);
        if (v84 >= 1)
        {
          for (j = 0; j < v84; ++j)
          {
            v86 = v54[6][j];
            if (v86)
            {
              operations_research::sat::LinearIncrementalEvaluator::AddTerm((this + 176), v81, *(v54[3] + j), v86, 0);
              v84 = *(v54 + 4);
            }
          }

          v82 = *(this + 26);
          v83 = *(v82 + 8 * v81);
        }

        *(v82 + 8 * v81) = &v83[-*(v68 + 64)];
        v87 = *(v68 + 16);
        if (v87 >= 1)
        {
          for (k = 0; k < v87; ++k)
          {
            v89 = *(*(v68 + 48) + 8 * k);
            if (v89)
            {
              operations_research::sat::LinearIncrementalEvaluator::AddTerm((this + 176), v81, *(*(v68 + 24) + 4 * k), -v89, 0);
              v87 = *(v68 + 16);
            }
          }
        }

        if (++v50 == v52)
        {
LABEL_145:
          operator new();
        }
      }

    case 0x1D:
      operations_research::Domain::Domain(v401, 1, 1);
      v90 = operations_research::sat::LinearIncrementalEvaluator::NewConstraint(this + 44, v401);
      if (v401[0])
      {
        operator delete(v401[1]);
      }

      v91 = *(a2 + 6);
      if (*(a2 + 15) != 29)
      {
        v91 = &operations_research::sat::_BoolArgumentProto_default_instance_;
      }

      v92 = *(v91 + 4);
      if (!v92)
      {
        return;
      }

      v93 = v91[3];
      v94 = 4 * v92;
      break;
    default:
      if (dword_27E25CB50 > 0 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::LsEvaluator::CompileOneConstraint(operations_research::sat::ConstraintProto const&)::$_0::operator() const(void)::site, dword_27E25CB50))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(&v398, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/constraint_violation.cc", 1645);
        v96 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v398, 1);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v96, "Not implemented: ", 0x11uLL);
        LODWORD(v405[0]) = *(a2 + 15);
        absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::sat::ConstraintProto::ConstraintCase,0>(v96, v405);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v398);
      }

      return;
  }

  do
  {
    while (1)
    {
      v95 = *v93;
      if ((*v93 & 0x80000000) == 0)
      {
        break;
      }

      operations_research::sat::LinearIncrementalEvaluator::AddTerm((this + 176), v90, ~v95, -1, 1);
      ++v93;
      v94 -= 4;
      if (!v94)
      {
        return;
      }
    }

    operations_research::sat::LinearIncrementalEvaluator::AddTerm((this + 176), v90, v95, 1, 0);
    ++v93;
    v94 -= 4;
  }

  while (v94);
}