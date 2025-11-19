void operations_research::GenericMaxFlow<util::ReverseArcStaticGraph<int,int>>::InitializeActiveNodeContainer(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 8);
  v6 = 0;
  if (v1 >= 1)
  {
    for (i = 0; i < v1; v6 = i)
    {
      if (*(a1 + 248) != i && *(a1 + 252) != i && *(*(a1 + 16) + 8 * i) >= 1 && (*(a1 + 313) != 1 || *(*(a1 + 56) + 4 * i) < v1))
      {
        if (*(a1 + 314) == 1)
        {
          v4 = *(*(a1 + 56) + 4 * i);
          v7 = i | (v4 << 32);
          if (v4)
          {
            v5 = a1 + 224;
          }

          else
          {
            v5 = a1 + 200;
          }

          std::vector<long long>::push_back[abi:ne200100](v5, &v7);
        }

        else
        {
          std::vector<int>::push_back[abi:ne200100](a1 + 176, &v6);
        }
      }

      i = v6 + 1;
    }
  }
}

uint64_t operations_research::GenericMaxFlow<util::ReverseArcStaticGraph<int,int>>::SaturateOutgoingArcsFromSource(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (*(v1 + 8 * *(a1 + 252)) == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v2 = *(a1 + 248);
  if (*(v1 + 8 * v2) == 0x8000000000000001)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v4 = *(v3 + 8);
  v5 = *(v3 + 32);
  v6 = *(v5 + 4 * v2);
  v7 = (v5 + 4 * (v2 + 1));
  if (v2 + 1 >= v4)
  {
    v7 = (v3 + 16);
  }

  v8 = *v7;
  if (*v7 <= v6)
  {
    return 0;
  }

  v9 = 0;
  v10 = *(a1 + 96);
  v11 = v8 - v6;
  while (1)
  {
    v12 = *(v10 + 8 * v6);
    if (!v12)
    {
      goto LABEL_7;
    }

    v13 = *(v3 + 80);
    v14 = *(v13 + 4 * v6);
    if (*(*(a1 + 56) + 4 * v14) >= v4)
    {
      goto LABEL_7;
    }

    v15 = *(v1 + 8 * v2) + 0x7FFFFFFFFFFFFFFFLL;
    if (v12 > v15)
    {
      break;
    }

    *(v10 + 8 * v6) = 0;
    v16 = *(*(v3 + 96) + 4 * v6);
    *(v10 + 8 * v16) += v12;
    *(v1 + 8 * *(v13 + 4 * v16)) -= v12;
    *(v1 + 8 * v14) += v12;
    v9 = 1;
LABEL_7:
    ++v6;
    if (!--v11)
    {
      return v9 & 1;
    }
  }

  if (*(v1 + 8 * v2) != 0x8000000000000001)
  {
    *(v10 + 8 * v6) = v12 - v15;
    v18 = *(*(v3 + 96) + 4 * v6);
    *(v10 + 8 * v18) += v15;
    *(v1 + 8 * *(v13 + 4 * v18)) -= v15;
    *(v1 + 8 * v14) += v15;
  }

  return 1;
}

void operations_research::GenericMaxFlow<util::ReverseArcStaticGraph<int,int>>::Discharge(uint64_t a1, int a2)
{
  v4 = *(a1 + 8);
  v5 = a2 + 1;
  v6 = *(*(a1 + 136) + 4 * a2);
  v7 = 4 * v5;
  v8 = *(v4 + 8);
  v51 = v8;
  v49 = 4 * v5;
  v50 = a2 + 1;
  while (1)
  {
    if (v5 >= v8)
    {
      v9 = 0;
      v10 = *(v4 + 32);
      v11 = *(v4 + 16);
      if (v6 < v11)
      {
LABEL_8:
        v16 = *(v10 + 4 * a2);
        v17 = *(a1 + 96);
        do
        {
          if (*(v17 + 8 * v6) >= 1)
          {
            v25 = *(v4 + 80);
            v26 = *(a1 + 56);
            v27 = *(v25 + 4 * v6);
            v28 = *(v26 + 4 * v27);
            if (*(v26 + 4 * *(v25 + 4 * *(*(v4 + 96) + 4 * v6))) == v28 + 1)
            {
              if (!*(*(a1 + 16) + 8 * v27))
              {
                if (*(a1 + 314) == 1)
                {
                  v52 = v27 | (v28 << 32);
                  if (v28)
                  {
                    v18 = a1 + 224;
                  }

                  else
                  {
                    v18 = a1 + 200;
                  }

                  std::vector<long long>::push_back[abi:ne200100](v18, &v52);
                }

                else
                {
                  v30 = *(a1 + 184);
                  v29 = *(a1 + 192);
                  if (v30 >= v29)
                  {
                    v32 = *(a1 + 176);
                    v33 = v30 - v32;
                    v34 = (v30 - v32) >> 2;
                    v35 = v34 + 1;
                    if ((v34 + 1) >> 62)
                    {
                      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                    }

                    v36 = v29 - v32;
                    if (v36 >> 1 > v35)
                    {
                      v35 = v36 >> 1;
                    }

                    if (v36 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v35 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    if (v35)
                    {
                      if (!(v35 >> 62))
                      {
                        operator new();
                      }

                      std::__throw_bad_array_new_length[abi:ne200100]();
                    }

                    v37 = (v30 - v32) >> 2;
                    v38 = (4 * v34);
                    v39 = (4 * v34 - 4 * v37);
                    *v38 = v27;
                    v31 = v38 + 1;
                    memcpy(v39, v32, v33);
                    *(a1 + 176) = v39;
                    *(a1 + 184) = v31;
                    *(a1 + 192) = 0;
                    if (v32)
                    {
                      operator delete(v32);
                    }

                    v7 = v49;
                    LODWORD(v5) = v50;
                  }

                  else
                  {
                    *v30 = v27;
                    v31 = v30 + 4;
                  }

                  *(a1 + 184) = v31;
                }
              }

              v17 = *(a1 + 96);
              v19 = *(v17 + 8 * v6);
              v20 = *(a1 + 16);
              v21 = *(v20 + 8 * a2);
              if (v19 < v21)
              {
                v21 = *(v17 + 8 * v6);
              }

              *(v17 + 8 * v6) = v19 - v21;
              v4 = *(a1 + 8);
              v22 = *(*(v4 + 96) + 4 * v6);
              *(v17 + 8 * v22) += v21;
              v23 = *(v4 + 80);
              *(v20 + 8 * *(v23 + 4 * v22)) -= v21;
              v24 = *(v23 + 4 * v6);
              *(v20 + 8 * v24) += v21;
              if (!*(v20 + 8 * a2))
              {
                *(*(a1 + 136) + 4 * a2) = v6;
                return;
              }
            }
          }

          if (v6 + 1 == v9)
          {
            v6 = v16;
          }

          else
          {
            ++v6;
          }
        }

        while (v6 < v11);
        v12 = *(v4 + 56);
        if (v5 < *(v4 + 8))
        {
          goto LABEL_6;
        }

        goto LABEL_39;
      }
    }

    else
    {
      v9 = *(*(v4 + 56) + v7);
      v10 = *(v4 + 32);
      v11 = *(v10 + v7);
      if (v6 < v11)
      {
        goto LABEL_8;
      }
    }

    v12 = *(v4 + 56);
    if (v5 < v8)
    {
LABEL_6:
      v13 = *(v12 + v7);
      v14 = *(v4 + 32);
      v15 = (v14 + v7);
      goto LABEL_40;
    }

LABEL_39:
    v13 = 0;
    v14 = *(v4 + 32);
    v15 = (v4 + 16);
LABEL_40:
    v40 = *(v12 + 4 * a2);
    v41 = *(v14 + 4 * a2);
    v42 = *v15;
    v43 = v40 == v13 ? *(v14 + 4 * a2) : v40;
    if (v43 >= v42)
    {
      v47 = 0x80000000;
      v6 = 0x7FFFFFFF;
    }

    else
    {
      v44 = 0x7FFFFFFF;
      v6 = 0x7FFFFFFF;
      do
      {
        if (*(*(a1 + 96) + 8 * v43) >= 1)
        {
          v45 = *(a1 + 56);
          v46 = *(v45 + 4 * *(*(v4 + 80) + 4 * v43));
          if (v46 < v44)
          {
            v47 = v46 + 1;
            v6 = v43;
            v44 = *(v45 + 4 * *(*(v4 + 80) + 4 * v43));
            if (v46 + 1 == *(v45 + 4 * a2))
            {
              v6 = v43;
              goto LABEL_55;
            }
          }
        }

        if (v43 + 1 == v13)
        {
          v43 = v41;
        }

        else
        {
          ++v43;
        }
      }

      while (v43 < v42);
      v47 = v44 + 1;
    }

LABEL_55:
    v48 = *(a1 + 56);
    *(v48 + 4 * a2) = v47;
    *(*(a1 + 136) + 4 * a2) = v6;
    if (*(a1 + 313) == 1 && *(v48 + 4 * a2) >= v51)
    {
      break;
    }

    v8 = *(v4 + 8);
  }
}

void operations_research::GenericMaxFlow<util::ReverseArcStaticGraph<int,int>>::PushFlowExcessBackToSource(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 8);
  if (v1)
  {
    if ((v1 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *((*(a1 + 252) >> 3) & 0x1FFFFFFFFFFFFFF8) |= 1 << *(a1 + 252);
  operator new();
}

void sub_23CBE5058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (__p)
  {
    operator delete(__p);
    v20 = a12;
    if (!a12)
    {
LABEL_3:
      v21 = a15;
      if (!a15)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v20 = a12;
    if (!a12)
    {
      goto LABEL_3;
    }
  }

  operator delete(v20);
  v21 = a15;
  if (!a15)
  {
LABEL_4:
    v22 = a18;
    if (!a18)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(v21);
  v22 = a18;
  if (!a18)
  {
LABEL_5:
    if (!v18)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(v22);
  if (!v18)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_11:
  operator delete(v18);
  _Unwind_Resume(exception_object);
}

void operations_research::GenericMaxFlow<util::ReverseArcStaticGraph<int,int>>::GlobalUpdate(uint64_t a1)
{
  *(a1 + 296) = *(a1 + 288);
  v2 = *(*(a1 + 8) + 8);
  LOBYTE(v95) = 0;
  v91 = v2;
  std::vector<BOOL>::assign(a1 + 264, v2, &v95);
  v3 = *(a1 + 248);
  v4 = *(a1 + 264);
  *(v4 + ((*(a1 + 252) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *(a1 + 252);
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
  v88 = *(a1 + 313);
  std::vector<int>::push_back[abi:ne200100](a1 + 288, (a1 + 252));
  v5 = *(a1 + 288);
  v6 = *(a1 + 296);
  if (v6 == v5)
  {
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *&v5[4 * v7];
      v10 = *(a1 + 8);
      v11 = *(v10 + 56);
      if (v9 + 1 >= *(v10 + 8))
      {
        v13 = 0;
        v14 = *(v10 + 32);
        v15 = (v10 + 16);
      }

      else
      {
        v12 = 4 * (v9 + 1);
        v13 = *(v11 + v12);
        v14 = *(v10 + 32);
        v15 = (v14 + v12);
      }

      v16 = *(v11 + 4 * v9);
      v17 = *(v14 + 4 * v9);
      v18 = *v15;
      if (v16 == v13)
      {
        v16 = *(v14 + 4 * v9);
      }

      if (v16 < v18)
      {
        v89 = v8;
        v19 = *(*(a1 + 56) + 4 * v9) + 1;
        v92 = v19;
        do
        {
          v20 = *(a1 + 8);
          v21 = *(v20 + 80);
          v22 = v16;
          v23 = *(v21 + 4 * v16);
          v24 = *(a1 + 264);
          v25 = v23 >> 6;
          v26 = *(v24 + 8 * v25);
          if (((1 << v23) & v26) == 0)
          {
            v27 = *(v20 + 96);
            v28 = *(v27 + 4 * v22);
            v29 = *(a1 + 96);
            v30 = *(v29 + 8 * v28);
            if (v30 >= 1)
            {
              v31 = *(a1 + 16);
              v32 = *(v31 + 8 * v23);
              if (v32 < 1)
              {
                goto LABEL_24;
              }

              if (v30 < v32)
              {
                v32 = *(v29 + 8 * v28);
              }

              *(v29 + 8 * v28) = v30 - v32;
              v33 = *(v27 + 4 * v28);
              *(v29 + 8 * v33) += v32;
              *(v31 + 8 * *(v21 + 4 * v33)) -= v32;
              *(v31 + 8 * *(v21 + 4 * v28)) += v32;
              if (*(v29 + 8 * v28))
              {
LABEL_24:
                *(*(a1 + 56) + 4 * v23) = v19;
                *(v24 + 8 * v25) = (1 << v23) | v26;
                v34 = *(a1 + 304);
                if (v6 < v34)
                {
                  *v6 = v23;
                  v6 += 4;
                }

                else
                {
                  v35 = *(a1 + 288);
                  v36 = v6 - v35;
                  v37 = (v6 - v35) >> 2;
                  v38 = v37 + 1;
                  if ((v37 + 1) >> 62)
                  {
LABEL_91:
                    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                  }

                  v39 = v34 - v35;
                  if (v39 >> 1 > v38)
                  {
                    v38 = v39 >> 1;
                  }

                  if (v39 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v40 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v40 = v38;
                  }

                  if (v40)
                  {
                    if (!(v40 >> 62))
                    {
                      operator new();
                    }

                    goto LABEL_92;
                  }

                  v41 = (v6 - v35) >> 2;
                  v42 = (4 * v37);
                  v43 = (4 * v37 - 4 * v41);
                  *v42 = v23;
                  v6 = (v42 + 1);
                  memcpy(v43, v35, v36);
                  *(a1 + 288) = v43;
                  *(a1 + 296) = v6;
                  *(a1 + 304) = 0;
                  if (v35)
                  {
                    operator delete(v35);
                  }

                  v19 = v92;
                }

                *(a1 + 296) = v6;
              }
            }
          }

          if (v22 + 1 == v13)
          {
            v16 = v17;
          }

          else
          {
            v16 = v22 + 1;
          }
        }

        while (v16 < v18);
        v5 = *(a1 + 288);
        v8 = v89;
      }

      v7 = ++v8;
    }

    while (v8 != (v6 - v5) >> 2);
  }

  if ((v88 & 1) == 0)
  {
    std::vector<int>::push_back[abi:ne200100](a1 + 288, (a1 + 248));
    v44 = v8;
    v5 = *(a1 + 288);
    v6 = *(a1 + 296);
    if (v8 != (v6 - v5) >> 2)
    {
      v52 = v8;
      do
      {
        v53 = *&v5[4 * v44];
        v54 = *(a1 + 8);
        v55 = *(v54 + 56);
        if (v53 + 1 >= *(v54 + 8))
        {
          v57 = 0;
          v58 = *(v54 + 32);
          v59 = (v54 + 16);
        }

        else
        {
          v56 = 4 * (v53 + 1);
          v57 = *(v55 + v56);
          v58 = *(v54 + 32);
          v59 = (v58 + v56);
        }

        v60 = *(v55 + 4 * v53);
        v61 = *(v58 + 4 * v53);
        v62 = *v59;
        if (v60 == v57)
        {
          v60 = *(v58 + 4 * v53);
        }

        if (v60 < v62)
        {
          v90 = v52;
          v63 = *(*(a1 + 56) + 4 * v53) + 1;
          v93 = v63;
          do
          {
            v64 = *(a1 + 8);
            v65 = *(v64 + 80);
            v66 = v60;
            v67 = *(v65 + 4 * v60);
            v68 = *(a1 + 264);
            v69 = v67 >> 6;
            v70 = *(v68 + 8 * v69);
            if (((1 << v67) & v70) == 0)
            {
              v71 = *(v64 + 96);
              v72 = *(v71 + 4 * v66);
              v73 = *(a1 + 96);
              v74 = *(v73 + 8 * v72);
              if (v74 >= 1)
              {
                v75 = *(a1 + 16);
                v76 = *(v75 + 8 * v67);
                if (v76 < 1)
                {
                  goto LABEL_78;
                }

                if (v74 < v76)
                {
                  v76 = *(v73 + 8 * v72);
                }

                *(v73 + 8 * v72) = v74 - v76;
                v77 = *(v71 + 4 * v72);
                *(v73 + 8 * v77) += v76;
                *(v75 + 8 * *(v65 + 4 * v77)) -= v76;
                *(v75 + 8 * *(v65 + 4 * v72)) += v76;
                if (*(v73 + 8 * v72))
                {
LABEL_78:
                  *(*(a1 + 56) + 4 * v67) = v63;
                  *(v68 + 8 * v69) = (1 << v67) | v70;
                  v78 = *(a1 + 304);
                  if (v6 < v78)
                  {
                    *v6 = v67;
                    v6 += 4;
                  }

                  else
                  {
                    v79 = *(a1 + 288);
                    v80 = v6 - v79;
                    v81 = (v6 - v79) >> 2;
                    v82 = v81 + 1;
                    if ((v81 + 1) >> 62)
                    {
                      goto LABEL_91;
                    }

                    v83 = v78 - v79;
                    if (v83 >> 1 > v82)
                    {
                      v82 = v83 >> 1;
                    }

                    if (v83 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v84 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v84 = v82;
                    }

                    if (v84)
                    {
                      if (!(v84 >> 62))
                      {
                        operator new();
                      }

LABEL_92:
                      std::__throw_bad_array_new_length[abi:ne200100]();
                    }

                    v85 = (v6 - v79) >> 2;
                    v86 = (4 * v81);
                    v87 = (4 * v81 - 4 * v85);
                    *v86 = v67;
                    v6 = (v86 + 1);
                    memcpy(v87, v79, v80);
                    *(a1 + 288) = v87;
                    *(a1 + 296) = v6;
                    *(a1 + 304) = 0;
                    if (v79)
                    {
                      operator delete(v79);
                    }

                    v63 = v93;
                  }

                  *(a1 + 296) = v6;
                }
              }
            }

            if (v66 + 1 == v57)
            {
              v60 = v61;
            }

            else
            {
              v60 = v66 + 1;
            }
          }

          while (v60 < v62);
          v5 = *(a1 + 288);
          v52 = v90;
        }

        v44 = ++v52;
      }

      while (v52 != (v6 - v5) >> 2);
    }
  }

  if (v91 >= 1)
  {
    v45 = 0;
    v46 = *(a1 + 264);
    do
    {
      if (((*(v46 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
      {
        *(*(a1 + 56) + 4 * v45) = 2 * v91 - 1;
      }

      ++v45;
    }

    while (v91 != v45);
  }

  if ((v6 - v5) >= 5)
  {
    v47 = 2;
    v48 = 1;
    do
    {
      v49 = *&v5[4 * v48];
      v94 = v49;
      if (*(*(a1 + 16) + 8 * v49) >= 1)
      {
        if (*(a1 + 314) == 1)
        {
          v50 = *(*(a1 + 56) + 4 * v49);
          v95 = v49 | (v50 << 32);
          if (v50)
          {
            v51 = a1 + 224;
          }

          else
          {
            v51 = a1 + 200;
          }

          std::vector<long long>::push_back[abi:ne200100](v51, &v95);
        }

        else
        {
          std::vector<int>::push_back[abi:ne200100](a1 + 176, &v94);
        }
      }

      v48 = v47;
      v5 = *(a1 + 288);
      ++v47;
    }

    while (v48 < (*(a1 + 296) - v5) >> 2);
  }
}

double operations_research::SimpleMaxFlow::SimpleMaxFlow(operations_research::SimpleMaxFlow *this)
{
  *this = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 15) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  return result;
}

unint64_t operations_research::SimpleMaxFlow::AddArcWithCapacity(operations_research::SimpleMaxFlow *this, int a2, int a3, uint64_t a4)
{
  v12 = a3;
  v13 = a2;
  v11 = a4;
  v5 = *(this + 2);
  v7 = *(this + 1);
  v6 = this + 8;
  v8 = (v5 - v7) >> 2;
  if (*this <= a2 + 1)
  {
    v9 = a2 + 1;
  }

  else
  {
    v9 = *this;
  }

  if (v9 <= a3 + 1)
  {
    v9 = a3 + 1;
  }

  *this = v9;
  std::vector<int>::push_back[abi:ne200100](v6, &v13);
  std::vector<int>::push_back[abi:ne200100](this + 32, &v12);
  std::vector<long long>::push_back[abi:ne200100](this + 56, &v11);
  return v8;
}

uint64_t operations_research::SimpleMaxFlow::Solve(operations_research::SimpleMaxFlow *this, int a2, int a3)
{
  v6 = *(this + 8) - *(this + 7);
  v10 = 0;
  std::vector<long long>::assign(this + 13, (v6 >> 3), &v10);
  v7 = *(this + 18);
  *(this + 18) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 17);
  *(this + 17) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  *(this + 16) = 0;
  result = 2;
  if (a2 != a3 && ((a3 | a2) & 0x80000000) == 0)
  {
    result = 0;
    if (*this > a2 && *this > a3)
    {
      operator new();
    }
  }

  return result;
}

void util::ReverseArcStaticGraph<int,int>::Build(uint64_t a1, void **a2)
{
  if (*(a1 + 25))
  {
    return;
  }

  v3 = *(a1 + 8);
  v4 = (a1 + 16);
  *(a1 + 20) = *(a1 + 16);
  v5 = a1 + 20;
  *(a1 + 24) = 257;
  *(a1 + 12) = v3;
  util::BaseGraph<int,int,true>::BuildStartAndForwardHead(a1, (a1 + 80), (a1 + 32), a2);
  v6 = *(a1 + 8);
  __u = 0;
  std::vector<int>::assign((a1 + 56), v6, &__u);
  *&v7 = *v4;
  if (*v4 >= 1)
  {
    v8 = 0;
    v9 = *(a1 + 80);
    v10 = *(a1 + 56);
    do
    {
      ++*(v10 + 4 * *(v9 + 4 * v8++));
      v7 = *v4;
    }

    while (v8 < v7);
  }

  if (*(a1 + 8) >= 1)
  {
    v11 = 0;
    v12 = 0;
    v13 = *(a1 + 56);
    do
    {
      v14 = *(v13 + 4 * v11);
      *(v13 + 4 * v11) = v12;
      v12 += v14;
      ++v11;
    }

    while (v11 < *(a1 + 8));
    *&v7 = *v4;
  }

  util::SVector<int>::reserve((a1 + 96), v7);
  LODWORD(v15) = *(a1 + 16);
  if (v15 >= 1)
  {
    v16 = 0;
    do
    {
      v18 = *(*(a1 + 80) + 4 * v16);
      v19 = *(a1 + 56);
      v20 = *(v19 + 4 * v18);
      *(v19 + 4 * v18) = v20 + 1;
      v21 = *(a1 + 16);
      v22 = *(a1 + 104);
      if (v22 == *(a1 + 108))
      {
        v23 = v22 * 1.3;
        if (v23 > 2147483650.0)
        {
          v23 = 2147483650.0;
        }

        if (v22 + 1 > v23)
        {
          v24 = v22 + 1;
        }

        else
        {
          v24 = v23;
        }

        util::SVector<int>::reserve((a1 + 96), v24);
        v22 = *(a1 + 104);
      }

      v17 = *(a1 + 96);
      *(v17 + 4 * v22) = v20 - v21;
      *(v17 - 4 * (*(a1 + 104))++ - 4) = 0;
      ++v16;
      v15 = *(a1 + 16);
    }

    while (v16 < v15);
  }

  v25 = *(a1 + 8);
  v26 = (v25 - 1);
  if (v26 >= 1)
  {
    v27 = *(a1 + 56);
    if (v26 <= 0x23)
    {
      goto LABEL_28;
    }

    v28 = 4 * v26;
    v29 = v27 + 4 * v26;
    v30 = 4 * (v26 - 1);
    v31 = 4 * (v25 - 2);
    v32 = v27 + v31 - v30 > v27 + v31 || v29 - v30 > v29;
    v33 = !v32;
    if (v33 && ((v50 = v29 + 4, v27 < v27 + v31) ? (v51 = v27 + 4 + v31 - v28 >= v50) : (v51 = 1), v51 ? (v52 = 0) : (v52 = 1), v27 + 4 < v5 ? (v53 = v4 >= v50) : (v53 = 1), v53 && (v52 & 1) == 0))
    {
      v34 = v25 - (v26 & 0x7FFFFFF8);
      v54 = vld1q_dup_f32(v4);
      v35 = (v25 - 1) & 7;
      v55 = (v28 + v27 - 12);
      v56 = v25 + 4294967294;
      v57 = v26 & 0x7FFFFFF8;
      do
      {
        v58 = v27 + 4 * v56;
        v59 = vsubq_s32(*(v58 - 12), v54);
        v55[-1] = vsubq_s32(*(v58 - 28), v54);
        *v55 = v59;
        v55 -= 2;
        v56 -= 8;
        v57 -= 8;
      }

      while (v57);
      if ((v26 & 0x7FFFFFF8) == v26)
      {
        goto LABEL_31;
      }
    }

    else
    {
LABEL_28:
      v34 = *(a1 + 8);
      v35 = (v25 - 1);
    }

    v36 = v34 + 4294967294;
    v37 = v35 + 1;
    v38 = (v27 + 4 * v35);
    do
    {
      *v38-- = *(v27 + 4 * v36--) - *v4;
      --v37;
    }

    while (v37 > 1);
LABEL_31:
    LODWORD(v25) = *(a1 + 8);
    LODWORD(v15) = *(a1 + 16);
  }

  if (v25)
  {
    **(a1 + 56) = -v15;
    *&v15 = *v4;
  }

  if (v15 >= 1)
  {
    v39 = 0;
    v40 = *(a1 + 96);
    do
    {
      *(v40 + 4 * *(v40 + 4 * v39)) = v39;
      ++v39;
    }

    while (v39 < *v4);
  }

  v41 = *(a1 + 8);
  if (v41 >= 1)
  {
    v42 = 0;
    v43 = *(a1 + 32);
    do
    {
      v44 = *(v43 + 4 * v42);
      v45 = v42 + 1;
      if (v42 + 1 >= *(a1 + 8))
      {
        v46 = v4;
      }

      else
      {
        v46 = (v43 + 4 * (v42 + 1));
      }

      v47 = *v46;
      if (v44 != v47)
      {
        v48 = *(a1 + 96);
        v49 = *(a1 + 80);
        do
        {
          *(v49 + 4 * *(v48 + 4 * v44++)) = v42;
        }

        while (v47 != v44);
      }

      ++v42;
    }

    while (v45 != v41);
  }
}

void operations_research::SimpleMaxFlow::GetSourceSideMinCut(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    operations_research::GenericMaxFlow<util::ReverseArcStaticGraph<int,int>>::ComputeReachableNodes<false>(v2, *(v2 + 248), a2);
  }
}

void *google::protobuf::Arena::DefaultConstruct<operations_research::FlowNodeProto>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    v3 = a1;
  }

  else
  {
    v2 = operator new(0x28uLL);
    v3 = 0;
  }

  return operations_research::FlowNodeProto::FlowNodeProto(v2, v3);
}

double google::protobuf::Arena::DefaultConstruct<operations_research::FlowArcProto>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    v3 = a1;
  }

  else
  {
    v2 = operator new(0x38uLL);
    v3 = 0;
  }

  return operations_research::FlowArcProto::FlowArcProto(v2, v3);
}

_DWORD *util::ReverseArcStaticGraph<int,int>::ReverseArcStaticGraph(_DWORD *result, int a2, int a3)
{
  *(result + 1) = 0;
  v4 = result + 2;
  *(result + 2) = 0;
  *(result + 12) = 0;
  *(result + 2) = 0u;
  *result = &unk_284F41D78;
  *(result + 3) = 0u;
  *(result + 4) = 0u;
  *(result + 5) = 0u;
  *(result + 6) = 0u;
  v5 = a2 - 1;
  if (a2 < 1)
  {
    v6 = 0;
    if (a3 >= 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    result[3] = a2;
    v6 = a2;
    if (a3 >= 1)
    {
LABEL_3:
      result[5] = a3;
      v7 = result;
      util::SVector<int>::reserve(result + 10, a3);
      result = v7;
      v8 = v7[2];
      v6 = v7[3];
      v10 = v7[4];
      v9 = v7[5];
      goto LABEL_6;
    }
  }

  v10 = 0;
  v9 = 0;
  v8 = 0;
LABEL_6:
  *(result + 24) = 1;
  if (v6 <= v8)
  {
    v6 = v8;
  }

  result[3] = v6;
  if (v9 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  result[5] = v11;
  if (v8 <= v5)
  {
    *v4 = a2;
  }

  return result;
}

void sub_23CBE61E4(_Unwind_Exception *a1)
{
  util::SVector<int>::~SVector((v2 + 12));
  util::SVector<int>::~SVector((v2 + 10));
  v4 = v2[7];
  if (v4)
  {
    v2[8] = v4;
    operator delete(v4);
    v5 = *v1;
    if (!*v1)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v5 = *v1;
    if (!*v1)
    {
      goto LABEL_3;
    }
  }

  v2[5] = v5;
  operator delete(v5);
  _Unwind_Resume(a1);
}

uint64_t util::SVector<int>::~SVector(uint64_t a1)
{
  if (*a1)
  {
    util::SVector<int>::reserve(a1, 0);
    v2 = *(a1 + 8);
    if (v2 >= 0x80000001)
    {
      v3 = 0;
      v4 = *a1;
      do
      {
        *(v4 + 4 * v3++) = 0;
        v2 = *(a1 + 8);
      }

      while (v3 < -v2);
    }

    if ((v2 & 0x80000000) != 0)
    {
      bzero((*a1 + 4 * v2), 4 * ~v2 + 4);
    }

    *(a1 + 8) = 0;
    v5 = *(a1 + 12);
    if (v5 >= 1)
    {
      free((*a1 - 4 * v5));
    }

    *(a1 + 12) = 0;
    *a1 = 0;
  }

  return a1;
}

void util::ReverseArcStaticGraph<int,int>::~ReverseArcStaticGraph(uint64_t a1)
{
  util::ReverseArcStaticGraph<int,int>::~ReverseArcStaticGraph(a1);

  JUMPOUT(0x23EED9460);
}

uint64_t util::BaseGraph<int,int,true>::ReserveNodes(uint64_t result, int a2)
{
  if (*(result + 8) < a2)
  {
    *(result + 12) = a2;
  }

  return result;
}

void util::ReverseArcStaticGraph<int,int>::ReserveArcs(uint64_t a1, int a2)
{
  if (*(a1 + 16) < a2)
  {
    *(a1 + 20) = a2;
    util::SVector<int>::reserve((a1 + 80), a2);
  }
}

void util::SVector<int>::reserve(uint64_t *a1, int a2)
{
  if (*(a1 + 3) < a2)
  {
    v4 = malloc_type_malloc(8 * a2, 0x100004052888210uLL);
    ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(v4);
    if (!v4)
    {
      util::SVector<int>::reserve(&v13);
    }

    v5 = v4 + 4 * a2;
    LODWORD(v6) = *(a1 + 2);
    LODWORD(v7) = -v6;
    v8 = *a1;
    if (((v6 & 0x40000000) != 0) ^ __OFSUB__(v6, v7) | (v6 == v7))
    {
      if (!v8)
      {
LABEL_15:
        *a1 = v5;
        *(a1 + 2) = v6;
        *(a1 + 3) = a2;
        return;
      }
    }

    else
    {
      v7 = v7;
      do
      {
        *&v5[4 * v7] = *(v8 + 4 * v7);
        ++v7;
        v6 = *(a1 + 2);
      }

      while (v7 < v6);
    }

    util::SVector<int>::reserve(a1, 0);
    v9 = *(a1 + 2);
    if (v9 >= 0x80000001)
    {
      v10 = 0;
      v11 = *a1;
      do
      {
        *(v11 + 4 * v10++) = 0;
        v9 = *(a1 + 2);
      }

      while (v10 < -v9);
    }

    if ((v9 & 0x80000000) != 0)
    {
      bzero((*a1 + 4 * v9), 4 * ~v9 + 4);
    }

    *(a1 + 2) = 0;
    v12 = *(a1 + 3);
    if (v12 >= 1)
    {
      free((*a1 - 4 * v12));
    }

    goto LABEL_15;
  }
}

uint64_t util::ReverseArcStaticGraph<int,int>::~ReverseArcStaticGraph(uint64_t a1)
{
  *a1 = &unk_284F41D78;
  v2 = (a1 + 96);
  if (*(a1 + 96))
  {
    util::SVector<int>::reserve((a1 + 96), 0);
    v3 = *(a1 + 104);
    if (v3 >= 0x80000001)
    {
      v4 = 0;
      v5 = *v2;
      do
      {
        *(v5 + 4 * v4++) = 0;
        v3 = *(a1 + 104);
      }

      while (v4 < -v3);
    }

    if ((v3 & 0x80000000) != 0)
    {
      bzero((*v2 + 4 * v3), 4 * ~v3 + 4);
    }

    *(a1 + 104) = 0;
    v6 = *(a1 + 108);
    if (v6 >= 1)
    {
      free((*v2 - 4 * v6));
    }

    *(a1 + 108) = 0;
    *(a1 + 96) = 0;
  }

  v7 = (a1 + 80);
  if (*(a1 + 80))
  {
    util::SVector<int>::reserve((a1 + 80), 0);
    v8 = *(a1 + 88);
    if (v8 >= 0x80000001)
    {
      v9 = 0;
      v10 = *v7;
      do
      {
        *(v10 + 4 * v9++) = 0;
        v8 = *(a1 + 88);
      }

      while (v9 < -v8);
    }

    if ((v8 & 0x80000000) != 0)
    {
      bzero((*v7 + 4 * v8), 4 * ~v8 + 4);
    }

    *(a1 + 88) = 0;
    v11 = *(a1 + 92);
    if (v11 >= 1)
    {
      free((*v7 - 4 * v11));
    }

    *(a1 + 92) = 0;
    *(a1 + 80) = 0;
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    *(a1 + 64) = v12;
    operator delete(v12);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    *(a1 + 40) = v13;
    operator delete(v13);
  }

  return a1;
}

void util::BaseGraph<int,int,true>::BuildStartAndForwardHead(uint64_t a1, uint64_t *a2, std::vector<int> *this, void **a4)
{
  v8 = *(a1 + 8);
  __u = 0;
  std::vector<int>::assign(this, v8, &__u);
  if (*(a1 + 16) < 1)
  {
    LOBYTE(v15) = 0;
    if (*(a1 + 8) < 1)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = *a2;
  begin = this->__begin_;
  do
  {
    v14 = *(v12 + 4 * v9);
    v15 = v11 | (v14 < v10);
    if ((v11 & 1) == 0)
    {
      v10 = *(v12 + 4 * v9);
    }

    ++begin[v14];
    ++v9;
    v11 = v15;
  }

  while (v9 < *(a1 + 16));
  if (*(a1 + 8) >= 1)
  {
LABEL_9:
    v16 = 0;
    v17 = 0;
    v18 = this->__begin_;
    do
    {
      v19 = v18[v16];
      v18[v16] = v17;
      v17 += v19;
      ++v16;
    }

    while (v16 < *(a1 + 8));
  }

LABEL_11:
  v20 = *(a1 + 16);
  if (v15)
  {
    if (v20)
    {
      if ((v20 & 0x80000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v24 = 0;
    v25 = this->__begin_;
    v26 = *(a1 + 8);
    v27 = (v26 - 1);
    if (v27 < 1)
    {
      goto LABEL_38;
    }

    if (v27 > 0x23 && ((v28 = (v26 - 2), v29 = 4 * (v27 - 1), &v25[v28 + v29 / 0xFFFFFFFFFFFFFFFCLL] <= &v25[v28]) ? (v30 = &v25[v27 + v29 / 0xFFFFFFFFFFFFFFFCLL] > &v25[v27]) : (v30 = 1), !v30 ? (v31 = 1) : (v31 = 0), v31 && ((v28 - v27) & 0x3FFFFFFFFFFFFFF8) != 0))
    {
      v32 = v26 - (v27 & 0x7FFFFFF8);
      v33 = (v26 - 1) & 7;
      v34 = &v25[v27 - 3];
      v35 = v26 + 4294967294;
      v36 = v27 & 0x7FFFFFF8;
      do
      {
        v37 = &v25[v35];
        v38 = *(v37 - 3);
        *(v34 - 1) = *(v37 - 7);
        *v34 = v38;
        v34 -= 8;
        v35 -= 8;
        v36 -= 8;
      }

      while (v36);
      if ((v27 & 0x7FFFFFF8) == v27)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v32 = *(a1 + 8);
      v33 = (v26 - 1);
    }

    v39 = v32 + 4294967294;
    v40 = v33 + 1;
    v41 = &v25[v33];
    do
    {
      *v41-- = v25[v39--];
      --v40;
    }

    while (v40 > 1);
LABEL_38:
    *v25 = 0;
    if (*(a1 + 16) >= 1)
    {
      v42 = 0;
      v43 = *a2;
      v44 = (*a2 - 4);
      do
      {
        v45 = *v44--;
        *(v43 + 4 * *(4 * v42++)) = v45;
      }

      while (v42 < *(a1 + 16));
    }

    if (a4)
    {
      v46 = *a4;
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v24 = v46;
    }

    if (v24)
    {
      operator delete(v24);
    }

    return;
  }

  if (v20 >= 1)
  {
    v21 = 0;
    v22 = *a2;
    v23 = -4;
    do
    {
      *(v22 + 4 * v21++) = *(v22 + v23);
      v23 -= 4;
    }

    while (v21 < *(a1 + 16));
  }

  if (a4)
  {
    a4[1] = *a4;
  }
}

void util::graph::FindCycleInGraph<std::vector<absl::lts_20240722::InlinedVector<int,4ul,std::allocator<int>>>>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a1[1];
  if ((0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3)) >> 31)
  {
    v10 = (0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3));
    v11 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<unsigned long>;
    absl::lts_20240722::str_format_internal::FormatPack("Too many nodes: adj.size()=%d", 29, &v10, 1uLL, v13);
    if ((v14 & 0x80u) == 0)
    {
      v4 = v13;
    }

    else
    {
      v4 = v13[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v5 = v14;
    }

    else
    {
      v5 = v13[1];
    }

    absl::lts_20240722::InvalidArgumentError(v4, v5, &__p);
    v6 = __p;
    *a2 = __p;
    __p = 55;
    if (v6 == 1)
    {
      absl::lts_20240722::internal_statusor::Helper::HandleInvalidStatusCtorArg(a2);
      if ((__p & 1) == 0)
      {
        absl::lts_20240722::status_internal::StatusRep::Unref(__p, v8);
      }
    }

    if (v14 < 0)
    {
      operator delete(v13[0]);
    }
  }

  else
  {
    if (v3 != *a1)
    {
      operator new();
    }

    v10 = 0;
    v11 = 0;
    v12 = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    *a2 = 1;
    if (v10)
    {
      operator delete(v10);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_23CBE6FF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, absl::lts_20240722::Status *a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void util::internal::DenseIntTopologicalSorterTpl<true>::AddNode(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 24) == 1)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v5, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/graph/topologicalsorter.cc", 50);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v5, "Cannot add nodes after starting traversal", 0x29uLL);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v5);
  }

  if ((a2 & 0x80000000) != 0)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(a2, 0, "node_index >= 0");
  }

  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = (a2 + 1);
  if (v2 <= a2 && v3 > v2)
  {

    std::vector<absl::lts_20240722::InlinedVector<int,4ul,std::allocator<int>>>::__append(a1, v3 - v2);
  }
}

uint64_t util::internal::DenseIntTopologicalSorterTpl<true>::AddEdge(uint64_t a1, signed int a2, signed int a3)
{
  v18 = a3;
  if (*(a1 + 24) == 1)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v17, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/graph/topologicalsorter.cc", 99);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v17, "Cannot add edges after starting traversal", 0x29uLL);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v17);
  }

  v4 = a2;
  if (a3 > a2)
  {
    a2 = a3;
  }

  util::internal::DenseIntTopologicalSorterTpl<true>::AddNode(a1, a2);
  result = *a1 + 24 * v4;
  v8 = (result + 8);
  v7 = *result;
  v9 = *result >> 1;
  if (v9 > 0x10)
  {
    if (v7)
    {
      if (v9 == *(result + 16))
      {
        absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::ProbingRectangle::Edge,4ul,std::allocator<operations_research::sat::ProbingRectangle::Edge>>::EmplaceBackSlow<operations_research::sat::ProbingRectangle::Edge const&>(result);
      }

      v8 = *(result + 8);
    }

    *(v8 + v9) = a3;
    *result = v7 + 2;
    v14 = vadd_s32(*(a1 + 88), 0x100000001);
    *(a1 + 88) = v14;
    if (v14.i32[1] > v14.i32[0] / 2)
    {
      *(a1 + 92) = 0;
      result = util::internal::DenseIntTopologicalSorterTpl<true>::RemoveDuplicates(a1, 32);
      *(a1 + 88) -= result;
    }
  }

  else
  {
    if (v7)
    {
      v15 = 0;
      v8 = *v8;
      while (4 * v9 != v15)
      {
        v16 = *(v8 + v15);
        v15 += 4;
        if (v16 == a3)
        {
          return result;
        }
      }

      v11 = *(result + 16);
    }

    else
    {
      v10 = 4 * v9;
      v11 = 4;
      v12 = (result + 8);
      while (v10)
      {
        v13 = *v12++;
        v10 -= 4;
        if (v13 == a3)
        {
          return result;
        }
      }
    }

    if (v9 == v11)
    {
      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::ProbingRectangle::Edge,4ul,std::allocator<operations_research::sat::ProbingRectangle::Edge>>::EmplaceBackSlow<operations_research::sat::ProbingRectangle::Edge const&>(result);
    }

    *(v8 + v9) = a3;
    *result = v7 + 2;
    ++*(a1 + 88);
  }

  return result;
}

uint64_t util::internal::DenseIntTopologicalSorterTpl<true>::RemoveDuplicates(unint64_t **a1, int a2)
{
  if (a2 <= 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = a2;
  }

  if (0xAAAAAAAB00000000 * (a1[1] - *a1))
  {
    if (((-1431655765 * (a1[1] - *a1)) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v6 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
    return 0;
  }

  v4 = 0;
  do
  {
    v7 = *v6;
    v8 = *v6 >> 1;
    if (v8 >= v3)
    {
      v9 = (v6 + 1);
      v10 = (v6 + 1);
      if (v7)
      {
        v10 = *v9;
      }

      v11 = v4 + v8;
      v12 = *v6 & 1;
      do
      {
        v13 = *v10;
        v14 = v13 >> 6;
        v15 = 1 << v13;
        v16 = *(8 * v14);
        if ((v15 & v16) != 0)
        {
          break;
        }

        *(8 * v14) = v15 | v16;
        v17 = (v6 + 1);
        if (v7)
        {
          v17 = *v9;
        }

        ++v10;
      }

      while (v10 != &v17[v8]);
      v18 = (v6 + 1);
      if (v7)
      {
        v18 = *v9;
      }

      if (v10 != &v18[v8])
      {
        v19 = 4 - v10;
        v20 = v10;
LABEL_22:
        v21 = v10 + v19;
        v22 = v10 + 1;
        while (1)
        {
          if (v7)
          {
            v23 = *v9;
            if (v22 == &(*v9)[v8])
            {
              if (v22 != v20)
              {
                goto LABEL_32;
              }

              goto LABEL_34;
            }
          }

          else if (v22 == (v9 + 4 * v8))
          {
            v23 = (v6 + 1);
            if (v22 != v20)
            {
LABEL_32:
              memmove(v20, &v23[v20 - v23 + (v21 >> 2)], 4 * (v8 - (v20 - v23 + (v21 >> 2))));
              v7 = *v6 - (v21 >> 1);
              *v6 = v7;
              v12 = v7 & 1;
              break;
            }

LABEL_35:
            v29 = 1;
            v30 = (v6 + 1);
            v31 = v7 >> 1;
            v32 = (v6 + 1);
            goto LABEL_37;
          }

          v25 = *v22++;
          v24 = v25;
          v26 = v25 >> 6;
          v27 = 1 << v25;
          v28 = *(8 * (v25 >> 6));
          v21 += 4;
          if (((1 << v25) & v28) == 0)
          {
            *(8 * v26) = v27 | v28;
            *v20++ = v24;
            v19 -= 4;
            v10 = v22 - 1;
            goto LABEL_22;
          }
        }
      }

      if (!v12)
      {
        goto LABEL_35;
      }

LABEL_34:
      v29 = 0;
      v30 = *v9;
      v31 = v7 >> 1;
LABEL_36:
      v32 = *v9;
LABEL_37:
      while (v30 != &v32[v31])
      {
        v33 = *v30++;
        *((v33 >> 3) & 0x1FFFFFFFFFFFFFF8) &= ~(1 << v33);
        v32 = (v6 + 1);
        if ((v29 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      v4 = (v11 - v31);
      v5 = a1[1];
    }

    v6 += 3;
  }

  while (v6 != v5);
  return v4;
}

uint64_t util::internal::DenseIntTopologicalSorterTpl<true>::GetNext(uint64_t a1, int *a2, _BYTE *a3, uint64_t a4)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    util::internal::DenseIntTopologicalSorterTpl<true>::StartTraversal(a1);
  }

  *a3 = 0;
  v8 = *(a1 + 28);
  if (!v8)
  {
    return 0;
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 32);
  if (v11 == v10)
  {
    if (dword_27E25CFA0 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&util::internal::DenseIntTopologicalSorterTpl<true>::GetNext(int *,BOOL *,std::vector<int> *)::{lambda(void)#1}::operator() const(void)::site, dword_27E25CFA0))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(&v52, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/graph/topologicalsorter.cc", 140);
      v50 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v52, 2);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v50, "Not all nodes have been visited (", 0x21uLL);
      v54 = *(a1 + 28);
      v51 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v50, &v54);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v51, " nodes left), but there aren't any zero-indegree nodes", 0x36uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v51, " available.  This graph is cyclic! Use ExtractCycle() for", 0x39uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v51, " more information.", 0x12uLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v52);
    }

    *a3 = 1;
    if (a4)
    {
      util::internal::DenseIntTopologicalSorterTpl<true>::ExtractCycle(a1, a4);
    }

    return 0;
  }

  *(a1 + 28) = v8 - 1;
  v12 = *v11;
  *a2 = *v11;
  v13 = v10 - v11;
  if (v13 >= 2)
  {
    v14 = 0;
    v15 = v11;
    do
    {
      v16 = &v15[v14 + 1];
      v17 = (2 * v14) | 1;
      v18 = 2 * v14 + 2;
      if (v18 < v13)
      {
        v19 = v16[1];
        v20 = *v16 <= v19;
        v16 += *v16 > v19;
        if (!v20)
        {
          v17 = v18;
        }
      }

      *v15 = *v16;
      v15 = v16;
      v14 = v17;
    }

    while (v17 <= ((v13 - 2) >> 1));
    v22 = v10 - 1;
    if (v16 == v10 - 1)
    {
      *v16 = v12;
    }

    else
    {
      *v16 = *v22;
      *v22 = v12;
      v23 = (v16 - v11 + 4) >> 2;
      v20 = v23 < 2;
      v24 = v23 - 2;
      if (!v20)
      {
        v25 = v24 >> 1;
        v26 = &v11[v25];
        v27 = *v26;
        v28 = *v16;
        if (*v26 > *v16)
        {
          do
          {
            *v16 = v27;
            v16 = v26;
            if (!v25)
            {
              break;
            }

            v25 = (v25 - 1) >> 1;
            v26 = &v11[v25];
            v27 = *v26;
          }

          while (*v26 > v28);
          *v16 = v28;
        }
      }
    }
  }

  *(a1 + 40) = v10 - 1;
  v29 = *a1 + 24 * *a2;
  if (&v52 != v29)
  {
    v30 = *v29;
    if (*v29)
    {
      v31 = *(v29 + 16);
      __p[0] = *(v29 + 8);
      __p[1] = v31;
      v52 = v30;
      *v29 = 0;
      if (v30 >= 2)
      {
LABEL_31:
        for (i = 0; i < v52 >> 1; ++i)
        {
          if (v30)
          {
            v33 = *(__p[0] + i);
            v34 = *(a1 + 64);
            v35 = *(v34 + 4 * v33) - 1;
            *(v34 + 4 * v33) = v35;
            if (!v35)
            {
              v38 = __p[0];
LABEL_38:
              std::vector<int>::push_back[abi:ne200100](a1 + 32, v38 + i);
              v40 = *(a1 + 32);
              v41 = *(a1 + 40);
              v42 = (v41 - v40) >> 2;
              v20 = v42 < 2;
              v43 = v42 - 2;
              if (!v20)
              {
                v44 = v43 >> 1;
                v45 = (v40 + 4 * v44);
                v48 = *(v41 - 4);
                v46 = (v41 - 4);
                v47 = v48;
                v49 = *v45;
                if (*v45 > v48)
                {
                  do
                  {
                    *v46 = v49;
                    v46 = v45;
                    if (!v44)
                    {
                      break;
                    }

                    v44 = (v44 - 1) >> 1;
                    v45 = (v40 + 4 * v44);
                    v49 = *v45;
                  }

                  while (*v45 > v47);
                  *v46 = v47;
                }
              }
            }
          }

          else
          {
            v36 = *(__p + i);
            v37 = *(a1 + 64);
            v38 = __p;
            v39 = *(v37 + 4 * v36) - 1;
            *(v37 + 4 * v36) = v39;
            if (!v39)
            {
              goto LABEL_38;
            }
          }

          LOBYTE(v30) = v52;
        }
      }
    }

    else
    {
      *__p = *(v29 + 8);
      v52 = v30;
      *v29 = 0;
      if (v30 >= 2)
      {
        goto LABEL_31;
      }
    }

    if (v30)
    {
      operator delete(__p[0]);
    }
  }

  return 1;
}

void sub_23CBE7A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, void *__p)
{
  if ((a9 & 1) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void util::internal::DenseIntTopologicalSorterTpl<true>::StartTraversal(uint64_t *a1)
{
  if ((a1[3] & 1) == 0)
  {
    v2 = -1431655765 * ((a1[1] - *a1) >> 3);
    __u = 0;
    std::vector<int>::assign((a1 + 8), v2, &__u);
    if (v2 > 0)
    {
      v3 = 0;
      v4 = *a1;
      do
      {
        v5 = (v4 + 24 * v3);
        v7 = *v5;
        v6 = (v5 + 1);
        v8 = v7 >> 1;
        v9 = (v7 & 0x7FFFFFFFFFFFFFFELL) == 0;
        if (v7)
        {
          if (!v9)
          {
            v13 = *v6;
            v14 = a1[8];
            do
            {
              v15 = *v13++;
              ++*(v14 + 4 * v15);
            }

            while (v13 != (*v6 + 4 * v8));
          }
        }

        else if (!v9)
        {
          v10 = a1[8];
          v11 = 4 * v8;
          do
          {
            v12 = *v6++;
            ++*(v10 + 4 * v12);
            v11 -= 4;
          }

          while (v11);
        }

        ++v3;
      }

      while (v3 != (v2 & 0x7FFFFFFF));
      v16 = 0;
      v28 = 0;
      do
      {
        if (!*(a1[8] + 4 * v16))
        {
          std::vector<int>::push_back[abi:ne200100]((a1 + 4), &v28);
          v17 = a1[4];
          v18 = a1[5];
          v19 = (v18 - v17) >> 2;
          v20 = v19 < 2;
          v21 = v19 - 2;
          if (!v20)
          {
            v22 = v21 >> 1;
            v23 = (v17 + 4 * v22);
            v26 = *(v18 - 4);
            v24 = (v18 - 4);
            v25 = v26;
            v27 = *v23;
            if (*v23 > v26)
            {
              do
              {
                *v24 = v27;
                v24 = v23;
                if (!v22)
                {
                  break;
                }

                v22 = (v22 - 1) >> 1;
                v23 = (v17 + 4 * v22);
                v27 = *v23;
              }

              while (*v23 > v25);
              *v24 = v25;
            }
          }
        }

        v16 = v28 + 1;
        v28 = v16;
      }

      while (v16 < v2);
    }

    *(a1 + 7) = v2;
    *(a1 + 24) = 1;
  }
}

uint64_t util::internal::DenseIntTopologicalSorterTpl<true>::ExtractCycle(void *a1, uint64_t a2)
{
  util::graph::FindCycleInGraph<std::vector<absl::lts_20240722::InlinedVector<int,4ul,std::allocator<int>>>>(a1, &v6);
  if (v6 != 1)
  {
    v9 = v6;
    v6 = 55;
    absl::lts_20240722::internal_statusor::ThrowBadStatusOrAccess(&v9);
  }

  v4 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v4;
    operator delete(v4);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    result = v6;
  }

  else
  {
    result = 1;
  }

  *a2 = v7;
  *(a2 + 16) = v8;
  v8 = 0;
  v7 = 0uLL;
  if ((result & 1) == 0)
  {
    return absl::lts_20240722::status_internal::StatusRep::Unref(result, v3);
  }

  return result;
}

void sub_23CBE7CB8(_Unwind_Exception *a1, absl::lts_20240722::cord_internal::CordRepBtree *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::Status::~Status((v3 - 24), a2);
  absl::lts_20240722::StatusOr<std::vector<int>>::~StatusOr(va, v5);
  _Unwind_Resume(a1);
}

void std::vector<absl::lts_20240722::InlinedVector<int,4ul,std::allocator<int>>>::__append(void ***a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * (v4 - v3) >= a2)
  {
    if (!(24 * a2))
    {
LABEL_27:
      a1[1] = v3;
      return;
    }

    v16 = &v3[3 * a2];
    v17 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v17)
    {
      v18 = v17 + 1;
      v19 = (v17 + 1) & 0x3FFFFFFFFFFFFFFELL;
      v20 = &v3[3 * v19];
      v21 = v19;
      do
      {
        *v3 = 0;
        v3[3] = 0;
        v3 += 6;
        v21 -= 2;
      }

      while (v21);
      if (v18 == v19)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v20 = a1[1];
    }

    do
    {
      *v20 = 0;
      v20 += 3;
    }

    while (v20 != v16);
LABEL_26:
    v3 = v16;
    goto LABEL_27;
  }

  v5 = 0xAAAAAAAAAAAAAAABLL * (v3 - *a1);
  v6 = v5 + a2;
  if (v5 + a2 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v7 = 0xAAAAAAAAAAAAAAABLL * (v4 - *a1);
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

  v22 = 24 * v5;
  if (24 * a2)
  {
    v9 = v22 + 24 * a2;
    v10 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v10)
    {
      v11 = v10 + 1;
      v12 = (v10 + 1) & 0x3FFFFFFFFFFFFFFELL;
      v13 = (v22 + 24 * v12);
      v14 = v22;
      v15 = v12;
      do
      {
        *v14 = 0;
        v14[3] = 0;
        v14 += 6;
        v15 -= 2;
      }

      while (v15);
      if (v11 == v12)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v13 = v22;
    }

    do
    {
      *v13 = 0;
      v13 += 3;
    }

    while (v13 != v9);
  }

  else
  {
    v9 = 24 * v5;
  }

LABEL_30:
  v23 = *a1;
  v24 = a1[1];
  v25 = v22 + *a1 - v24;
  if (v24 != *a1)
  {
    v26 = *a1;
    v27 = v25;
    do
    {
      *v27 = 0;
      *v27 = *v26;
      *(v27 + 8) = *(v26 + 1);
      *v26 = 0;
      v26 += 3;
      v27 += 24;
    }

    while (v26 != v24);
    do
    {
      if (*v23)
      {
        operator delete(v23[1]);
      }

      v23 += 3;
    }

    while (v23 != v24);
    v23 = *a1;
  }

  *a1 = v25;
  a1[1] = v9;
  a1[2] = 0;
  if (v23)
  {

    operator delete(v23);
  }
}

void operations_research::sat::ImpliedBounds::~ImpliedBounds(operations_research::sat::ImpliedBounds *this)
{
  if (dword_2810BD6F8 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::ImpliedBounds::~ImpliedBounds()::$_0::operator() const(void)::site, dword_2810BD6F8) && *(this + 4))
  {
    operator new();
  }

  if (*(this + 29) >= 2uLL)
  {
    operator delete((*(this + 31) - (*(this + 30) & 1) - 8));
  }

  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>>>::destructor_impl(this + 25);
  v2 = *(this + 22);
  if (v2)
  {
    *(this + 23) = v2;
    operator delete(v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    *(this + 20) = v3;
    operator delete(v3);
  }

  v4 = *(this + 15);
  if (v4)
  {
    v5 = *(this + 16);
    v6 = *(this + 15);
    if (v5 != v4)
    {
      v7 = *(this + 16);
      do
      {
        v9 = *(v7 - 24);
        v7 -= 24;
        v8 = v9;
        if (v9)
        {
          *(v5 - 16) = v8;
          operator delete(v8);
        }

        v5 = v7;
      }

      while (v7 != v4);
      v6 = *(this + 15);
    }

    *(this + 16) = v4;
    operator delete(v6);
  }

  v10 = *(this + 12);
  if (v10)
  {
    *(this + 13) = v10;
    operator delete(v10);
  }

  if (*(this + 8) >= 2uLL)
  {
    operator delete((*(this + 10) - (*(this + 9) & 1) - 8));
  }

  v11 = *(this + 5);
  if (v11)
  {
    *(this + 6) = v11;
    operator delete(v11);
  }
}

uint64_t operations_research::sat::ImpliedBounds::Add(void *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (*(*a1 + 745) != 1)
  {
    return 1;
  }

  v5 = a3;
  v6 = *(a1[2] + 152);
  v7 = *(v6 + 24 * a3);
  if (a4 <= v7)
  {
    return 1;
  }

  v8 = a3;
  if (v7 + 1 >= -*(v6 + 24 * (a3 ^ 1)))
  {
    return 1;
  }

  v9 = a3;
  v10 = a2;
  v11 = (a3 << 32) | a2;
  *&v86 = v11;
  *(&v86 + 1) = a4;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::find_or_prepare_insert<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>((a1 + 8), &v86, v90);
  if (v92 == 1)
  {
    v15 = a2;
    *v91 = v86;
    v16 = a4;
    v17 = a1;
    v18 = v9;
    if (v92)
    {
      goto LABEL_10;
    }

    v19 = v91;
    if (*(v91 + 8) >= a4)
    {
      return 1;
    }
  }

  else
  {
    v16 = a4;
    v17 = a1;
    v15 = a2;
    v18 = v9;
    v19 = v91;
    if (*(v91 + 8) >= a4)
    {
      return 1;
    }
  }

  *(v19 + 8) = v16;
LABEL_10:
  if (!(v16 + *(*(v17[2] + 152) + 24 * (v5 ^ 1))))
  {
LABEL_30:
    operations_research::sat::ImpliedBounds::AddLiteralImpliesVarEqValue(a1, v10, v5, a4);
    v18 = v9;
    v15 = a2;
    v17 = a1;
    v16 = a4;
    goto LABEL_31;
  }

  v20 = v18 ^ 1;
  v21 = v17[8];
  if (v21 > 1)
  {
    v23 = 0;
    v24 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v10) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v10))) + v20;
    v25 = 0x9DDFEA08EB382D69 * v24;
    v26 = (v24 * 0x9DDFEA08EB382D69) >> 64;
    _X15 = v17[10];
    __asm { PRFM            #4, [X15] }

    v32 = v26 ^ v25;
    v33 = vdup_n_s8(v32 & 0x7F);
    v34 = ((v32 >> 7) ^ (_X15 >> 12)) & v21;
    v35 = *(_X15 + v34);
    v36 = vceq_s8(v35, v33);
    if (!v36)
    {
      goto LABEL_21;
    }

    do
    {
LABEL_16:
      v37 = (v34 + (__clz(__rbit64(v36)) >> 3)) & v21;
      v14 = v17[11] + 16 * v37;
      if (*v14 == v15 && *(v14 + 4) == v20)
      {
        v22 = (_X15 + v37);
        goto LABEL_28;
      }

      v36 &= ((v36 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v36);
LABEL_21:
    while (1)
    {
      v14 = vceq_s8(v35, 0x8080808080808080);
      if (v14)
      {
        goto LABEL_13;
      }

      v23 += 8;
      v34 = (v23 + v34) & v21;
      v35 = *(_X15 + v34);
      v36 = vceq_s8(v35, v33);
      if (v36)
      {
        goto LABEL_16;
      }
    }
  }

  if (v17[9] < 2uLL)
  {
LABEL_13:
    v22 = 0;
    goto LABEL_28;
  }

  v22 = 0;
  v14 = (v17 + 10);
  if (*(v17 + 20) == v15 && *(v17 + 21) == v20)
  {
    v22 = &absl::lts_20240722::container_internal::kSooControl;
  }

LABEL_28:
  if (v22 && !(*(v14 + 8) + v16))
  {
    goto LABEL_30;
  }

LABEL_31:
  v39 = v15 ^ 1u;
  v40 = v17[8];
  if (v40 > 1)
  {
    v42 = 0;
    v43 = v5 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v39) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v39)));
    v44 = 0x9DDFEA08EB382D69 * v43;
    v45 = (v43 * 0x9DDFEA08EB382D69) >> 64;
    _X14 = v17[10];
    __asm { PRFM            #4, [X14] }

    v48 = v45 ^ v44;
    v49 = vdup_n_s8(v48 & 0x7F);
    v50 = ((v48 >> 7) ^ (_X14 >> 12)) & v40;
    v51 = *(_X14 + v50);
    v52 = vceq_s8(v51, v49);
    if (!v52)
    {
      goto LABEL_40;
    }

    do
    {
LABEL_35:
      v53 = (v50 + (__clz(__rbit64(v52)) >> 3)) & v40;
      v4 = v17[11] + 16 * v53;
      if (*v4 == v39 && *(v4 + 4) == v18)
      {
        v41 = _X14 + v53;
        goto LABEL_55;
      }

      v52 &= ((v52 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v52);
LABEL_40:
    while (!*&vceq_s8(v51, 0x8080808080808080))
    {
      v42 += 8;
      v50 = (v42 + v50) & v40;
      v51 = *(_X14 + v50);
      v52 = vceq_s8(v51, v49);
      if (v52)
      {
        goto LABEL_35;
      }
    }

    goto LABEL_33;
  }

  if (v17[9] < 2uLL)
  {
LABEL_33:
    v41 = 0;
    goto LABEL_55;
  }

  v56 = *(v17 + 20);
  v57 = *(v17 + 21);
  v55 = (v17 + 10);
  v58 = v57 == v18;
  if (v57 == v18)
  {
    v59 = &absl::lts_20240722::container_internal::kSooControl;
  }

  else
  {
    v59 = 0;
  }

  if (!v58)
  {
    v55 = v17;
  }

  if (v56 == v39)
  {
    v41 = v59;
  }

  else
  {
    v41 = 0;
  }

  if (v56 == v39)
  {
    v4 = v55;
  }

  else
  {
    v4 = v17;
  }

LABEL_55:
  if (!v41)
  {
LABEL_72:
    if (!*(*v17 + 572) || !*(*v17 + 780))
    {
      return 1;
    }

    v66 = *(v17[3] + 224);
    v67 = (*(v17[3] + 232) - v66) >> 2;
    if (v15 >= v67 || (v68 = 4 * v15, *(v66 + v68) == -1))
    {
      if (v39 >= v67)
      {
        return 1;
      }

      v74 = 4 * v39;
      if (*(v66 + v74) == -1)
      {
        return 1;
      }

      v75 = v39;
      if (v18 >= (-1431655765 * ((v17[16] - v17[15]) >> 3)))
      {
        v76 = v18 + 1;
        absl::StrongVector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<operations_research::sat::ImpliedBoundEntry>,std::allocator<std::vector<operations_research::sat::ImpliedBoundEntry>>>::resize(v17 + 15, v18 + 1);
        operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::Resize((a1 + 18), v76);
        v17 = a1;
      }

      ++v17[34];
      v77 = v17;
      operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>::Set((v17 + 18), v5);
      v71 = v77[15] + 24 * v8;
      v78 = *(v77[3] + 224);
      if (v75 >= ((*(v77[3] + 232) - v78) >> 2))
      {
        v79 = -1;
      }

      else
      {
        v79 = *(v78 + v74);
      }

      LODWORD(v86) = v79;
      *(&v86 + 1) = a4;
      v87 = 0;
    }

    else
    {
      if (v18 >= (-1431655765 * ((v17[16] - v17[15]) >> 3)))
      {
        v69 = v18 + 1;
        absl::StrongVector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<operations_research::sat::ImpliedBoundEntry>,std::allocator<std::vector<operations_research::sat::ImpliedBoundEntry>>>::resize(v17 + 15, v18 + 1);
        operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::Resize((a1 + 18), v69);
        v17 = a1;
      }

      ++v17[34];
      v70 = v17;
      operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>::Set((v17 + 18), v5);
      v71 = v70[15] + 24 * v8;
      v72 = *(v70[3] + 224);
      if (a2 >= ((*(v70[3] + 232) - v72) >> 2))
      {
        v73 = -1;
      }

      else
      {
        v73 = *(v72 + v68);
      }

      LODWORD(v86) = v73;
      *(&v86 + 1) = a4;
      v87 = 1;
    }

    std::vector<operations_research::sat::ImpliedBoundEntry>::push_back[abi:ne200100](v71, &v86);
    return 1;
  }

  v60 = *(v4 + 8);
  if (v60 <= v7)
  {
    if (v40 > 1)
    {
      v64 = v41 - v17[10];
      v65 = v15 ^ 1;
      absl::lts_20240722::container_internal::EraseMetaOnly(a1 + 8, v64);
      LODWORD(v39) = v65;
      v18 = v9;
      v15 = a2;
      v17 = a1;
    }

    else
    {
      v17[9] = 0;
    }

    goto LABEL_72;
  }

  v84 = v15 ^ 1;
  if (v60 >= v16)
  {
    v61 = v16;
  }

  else
  {
    v61 = *(v4 + 8);
  }

  ++v17[33];
  result = operations_research::sat::IntegerTrail::RootLevelEnqueue(v17[2], v5, v61);
  if (result)
  {
    if (dword_2810BD710 > 1)
    {
      IsEnabled2 = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&operations_research::sat::ImpliedBounds::Add(operations_research::sat::Literal,operations_research::sat::IntegerLiteral)::$_0::operator() const(void)::site, dword_2810BD710);
      v63 = a4;
      v17 = a1;
      LODWORD(v39) = v84;
      v15 = a2;
      v18 = v9;
      if (!IsEnabled2)
      {
LABEL_64:
        if (*(v4 + 8) == v61)
        {
          if (v17[8] > 1uLL)
          {
            absl::lts_20240722::container_internal::EraseMetaOnly(a1 + 8, v41 - v17[10]);
            LODWORD(v39) = v84;
            v15 = a2;
            v18 = v9;
            v17 = a1;
            v63 = a4;
          }

          else
          {
            v17[9] = 0;
          }
        }

        if (v63 <= v60)
        {
          *&v86 = v11;
          absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::erase<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>((v17 + 8), &v86);
          return 1;
        }

        goto LABEL_72;
      }

      absl::lts_20240722::log_internal::LogMessage::LogMessage(&v86, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/implied_bounds.cc", 126);
      v81 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v86, 2);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v81, "Deduction old: ", 0xFuLL);
      v82 = *(*(a1[2] + 152) + 24 * v5);
      *&v89 = v5;
      *(&v89 + 1) = v82;
      v83 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::sat::IntegerLiteral,0>(v81, &v89);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v83, " new: ", 6uLL);
      *&v88 = v5;
      *(&v88 + 1) = v61;
      absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::sat::IntegerLiteral,0>(v83, &v88);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v86);
      v63 = a4;
      v17 = a1;
      v15 = a2;
      v18 = v9;
      v8 = v5;
    }

    else
    {
      v63 = a4;
      v17 = a1;
      v15 = a2;
      v18 = v9;
    }

    LODWORD(v39) = v84;
    goto LABEL_64;
  }

  return result;
}

void sub_23CBE8980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CBE8994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CBE89A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

int64_t operations_research::sat::ImpliedBounds::AddLiteralImpliesVarEqValue(uint64_t *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = a4;
  v23 = a3;
  if (a3)
  {
    v23 = a3 & 0xFFFFFFFE;
    v4 = -a4;
  }

  v5 = 0;
  _X11 = a1[27];
  __asm { PRFM            #4, [X11] }

  v12 = a1[25];
  v13 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2));
  v14 = vdup_n_s8(v13 & 0x7F);
  v15 = ((v13 >> 7) ^ (_X11 >> 12)) & v12;
  v16 = *(_X11 + v15);
  v17 = vceq_s8(v16, v14);
  if (v17)
  {
LABEL_4:
    while (1)
    {
      v18 = a1[28] + 40 * ((v15 + (__clz(__rbit64(v17)) >> 3)) & v12);
      if (*v18 == a2)
      {
        break;
      }

      v17 &= ((v17 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v17)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    while (1)
    {
      v19 = vceq_s8(v16, 0x8080808080808080);
      if (v19)
      {
        break;
      }

      v5 += 8;
      v15 = (v5 + v15) & v12;
      v16 = *(_X11 + v15);
      v17 = vceq_s8(v16, v14);
      if (v17)
      {
        goto LABEL_4;
      }
    }

    v18 = a1[28] + 40 * absl::lts_20240722::container_internal::PrepareInsertNonSoo(a1 + 25, (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2)), (v15 + (__clz(__rbit64(v19)) >> 3)) & v12, v5, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,absl::lts_20240722::flat_hash_map<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> const,absl::lts_20240722::flat_hash_map<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>>>>::GetPolicyFunctions(void)::value);
    *v18 = a2;
    *(v18 + 8) = xmmword_23CE306D0;
  }

  result = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::find_or_prepare_insert<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>(v18 + 8, &v23, v24);
  if (v26 == 1)
  {
    v22 = v25;
    *v25 = v23;
    *(v22 + 8) = 0;
  }

  *(v25 + 8) = v4;
  return result;
}

uint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::erase<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>(uint64_t a1, unsigned int *a2)
{
  v2 = *a1;
  if (*a1 > 1uLL)
  {
    v4 = 0;
    _X9 = *(a1 + 16);
    __asm { PRFM            #4, [X9] }

    v10 = *a2;
    v11 = a2[1];
    v12 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v10) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v10))) + v11;
    v13 = ((v12 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v12);
    v14 = vdup_n_s8(v13 & 0x7F);
    v15 = ((v13 >> 7) ^ (_X9 >> 12)) & v2;
    v16 = *(_X9 + v15);
    v17 = vceq_s8(v16, v14);
    if (!v17)
    {
      goto LABEL_10;
    }

    do
    {
LABEL_5:
      v18 = (v15 + (__clz(__rbit64(v17)) >> 3)) & v2;
      v19 = (*(a1 + 24) + 16 * v18);
      v20 = *v19;
      v21 = v19[1];
      if (v20 == v10 && v21 == v11)
      {
        *(a1 + 16);
        absl::lts_20240722::container_internal::EraseMetaOnly(a1, v18);
        return 1;
      }

      v17 &= ((v17 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v17);
LABEL_10:
    while (!*&vceq_s8(v16, 0x8080808080808080))
    {
      v4 += 8;
      v15 = (v4 + v15) & v2;
      v16 = *(_X9 + v15);
      v17 = vceq_s8(v16, v14);
      if (v17)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

  else if (*(a1 + 8) >= 2uLL)
  {
    if (*(a1 + 16) == *a2 && *(a1 + 20) == a2[1])
    {
      *(a1 + 8) = 0;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

void absl::StrongVector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<operations_research::sat::ImpliedBoundEntry>,std::allocator<std::vector<operations_research::sat::ImpliedBoundEntry>>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>::Set(uint64_t a1, int a2)
{
  v5 = a2;
  v2 = a2 >> 6;
  v3 = *(a1 + 8);
  v4 = *(v3 + 8 * v2);
  if ((v4 & (1 << a2)) == 0)
  {
    *(v3 + 8 * v2) = v4 | (1 << a2);
    std::vector<int>::push_back[abi:ne200100](a1 + 32, &v5);
  }
}

void std::vector<operations_research::sat::ImpliedBoundEntry>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 24;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v4 - *a1;
  v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3) + 1;
  if (v9 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v7) >> 3);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0x555555555555555)
  {
    v11 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v12 = 8 * (v8 >> 3);
  *v12 = *a2;
  *(v12 + 16) = *(a2 + 2);
  v6 = v12 + 24;
  v13 = v12 - v8;
  memcpy((v12 - v8), v7, v8);
  *a1 = v13;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

__int128 **operations_research::sat::ImpliedBounds::GetImpliedBounds(void *a1, signed int a2)
{
  v3 = a1[15];
  if (a2 >= (-1431655765 * ((a1[16] - v3) >> 3)))
  {
    return (a1 + 12);
  }

  result = (v3 + 24 * a2);
  v5 = *result;
  v6 = result[1];
  if (*result != v6)
  {
    v7 = 0;
    v8 = *(*(a1[2] + 152) + 24 * a2);
    do
    {
      if (*(v5 + 1) > v8)
      {
        v9 = *result + 24 * v7++;
        v10 = *v5;
        *(v9 + 16) = *(v5 + 16);
        *v9 = v10;
      }

      v5 = (v5 + 24);
    }

    while (v5 != v6);
    v11 = 0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 3);
    if (v7 <= v11)
    {
      if (v7 < v11)
      {
        result[1] = (*result + 24 * v7);
      }
    }

    else
    {
      v12 = result;
      std::vector<operations_research::sat::ImpliedBoundEntry>::__append(result, v7 - v11);
      return v12;
    }
  }

  return result;
}

uint64_t operations_research::sat::ImpliedBounds::ProcessIntegerTrail(void *a1, unsigned int a2)
{
  if (*(*a1 + 745) != 1)
  {
    return 1;
  }

  v3 = *(a1[1] + 296);
  if (v3 != 1)
  {
    operations_research::sat::ImpliedBounds::ProcessIntegerTrail(v3);
  }

  a1[6] = a1[5];
  operations_research::sat::IntegerTrail::AppendNewBounds(a1[2], (a1 + 5));
  v6 = a1[5];
  v5 = a1[6];
  if (v6 == v5)
  {
    return 1;
  }

  do
  {
    v7 = *v6;
    v8 = v6[1];
    v6 += 2;
    result = operations_research::sat::ImpliedBounds::Add(a1, a2, v7, v8);
  }

  while (v6 != v5 && (result & 1) != 0);
  return result;
}

char *operations_research::sat::ElementEncodings::Add(unsigned __int8 *a1, int a2, char **a3, int a4)
{
  v13 = a4;
  v14 = a2;
  v5 = *a1;
  v6 = *(*a1 + 10);
  if (!*(*a1 + 10))
  {
    goto LABEL_7;
  }

LABEL_2:
  v7 = 0;
  do
  {
    v8 = (v6 + v7) >> 1;
    if (SLODWORD(v5[4 * v8 + 2]) < a2)
    {
      v7 = v8 + 1;
    }

    else
    {
      v6 = (v6 + v7) >> 1;
    }
  }

  while (v7 != v6);
LABEL_7:
  while (!*(v5 + 11))
  {
    v5 = v5[v6 + 30];
    v6 = *(v5 + 10);
    if (*(v5 + 10))
    {
      goto LABEL_2;
    }
  }

  while (v6 == *(v5 + 10))
  {
    LODWORD(v6) = *(v5 + 8);
    v5 = *v5;
    if (*(v5 + 11))
    {
      goto LABEL_14;
    }
  }

  if (SLODWORD(v5[4 * v6 + 2]) > a2)
  {
LABEL_14:
    *(*(a1 + 1) + 10);
LABEL_15:
    v9 = a1;
    std::vector<int>::push_back[abi:ne200100]((a1 + 48), &v14);
    a1 = v9;
    goto LABEL_16;
  }

  v11 = *(a1 + 1);
  if (v5 == v11 && v6 == *(v11 + 10))
  {
    goto LABEL_15;
  }

LABEL_16:
  v17 = &v14;
  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,absl::lts_20240722::btree_map<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,absl::lts_20240722::btree_map<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>>>>,256,false>>::insert_unique<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::piecewise_construct_t const&,std::tuple<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const&>,std::tuple<>>(a1, &v14, &std::piecewise_construct, &v17, &v15);
  result = absl::lts_20240722::container_internal::btree_map_container<absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>>::operator[]<int>((v15 + 32 * v16 + 24), &v13);
  if (result != a3)
  {
    return std::vector<operations_research::sat::ValueLiteralPair>::__assign_with_size[abi:ne200100]<operations_research::sat::ValueLiteralPair*,operations_research::sat::ValueLiteralPair*>(result, *a3, a3[1], (a3[1] - *a3) >> 4);
  }

  return result;
}

uint64_t *operations_research::sat::ElementEncodings::Get(uint64_t *a1, int a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  if (!*(*a1 + 10))
  {
    goto LABEL_7;
  }

LABEL_2:
  v4 = 0;
  do
  {
    v5 = (v3 + v4) >> 1;
    if (SLODWORD(v2[4 * v5 + 2]) < a2)
    {
      v4 = v5 + 1;
    }

    else
    {
      v3 = (v3 + v4) >> 1;
    }
  }

  while (v4 != v3);
LABEL_7:
  while (!*(v2 + 11))
  {
    v2 = v2[v3 + 30];
    v3 = *(v2 + 10);
    if (*(v2 + 10))
    {
      goto LABEL_2;
    }
  }

  while (v3 == *(v2 + 10))
  {
    LODWORD(v3) = *(v2 + 8);
    v2 = *v2;
    if (*(v2 + 11))
    {
      goto LABEL_14;
    }
  }

  if (SLODWORD(v2[4 * v3 + 2]) > a2)
  {
LABEL_14:
    v6 = a1[1];
    v7 = *(v6 + 10);
    v2 = v6;
    LODWORD(v3) = v7;
    goto LABEL_16;
  }

  v6 = a1[1];
  v7 = *(v6 + 10);
LABEL_16:
  v8 = v3 == v7 && v2 == v6;
  v9 = &v2[4 * v3];
  if (v8)
  {
    v9 = a1;
  }

  return v9 + 3;
}

void operations_research::sat::TryToReconcileEncodings(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = *a1;
  a7[1] = 0;
  a7[2] = 0;
  *a7 = 0;
  if (operations_research::sat::IntegerEncoder::VariableIsFullyEncoded(a6, v14))
  {
    v15 = operations_research::sat::IntegerEncoder::FullDomainEncoding(a6, v14);
    v16 = *v15;
    if (v15[1] - *v15 == 32 && (a4 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v18 = *(a1 + 8);
      v19 = *(a1 + 16);
      v20 = v19 + *(v16 + 16) * v18;
      v21 = *(v16 + 24);
      v22 = v19 + v18 * *v16;
      v23 = *(v16 + 8);
      v24 = (a3 + 8);
      v25 = 16 * a4;
      v26 = v25;
      while (1)
      {
        v27 = v23;
        v28 = v22;
        v30 = *v24;
        v24 += 4;
        v29 = v30;
        if (v30 == v21)
        {
          v23 = v21;
          v22 = v20;
          v21 = v27;
          v20 = v28;
        }

        if (v29 == v23)
        {
          break;
        }

        v26 -= 16;
        if (!v26)
        {
          return;
        }
      }

      v31 = (a3 + 8);
      if (a5)
      {
        do
        {
          if (*v31 == v29)
          {
            v32 = v22;
          }

          else
          {
            v32 = v20;
          }

          v33 = *(a2 + 16) + *(a2 + 8) * *(v31 - 1);
          LODWORD(v36) = *v31;
          *(&v36 + 1) = v33;
          v37 = v32;
          std::vector<operations_research::sat::OrthogonalPackingResult::Item>::push_back[abi:ne200100](a7, &v36);
          v31 += 4;
          v25 -= 16;
        }

        while (v25);
      }

      else
      {
        do
        {
          if (*v31 == v29)
          {
            v34 = v22;
          }

          else
          {
            v34 = v20;
          }

          v35 = *(a2 + 16) + *(a2 + 8) * *(v31 - 1);
          LODWORD(v36) = *v31;
          *(&v36 + 1) = v34;
          v37 = v35;
          std::vector<operations_research::sat::OrthogonalPackingResult::Item>::push_back[abi:ne200100](a7, &v36);
          v31 += 4;
          v25 -= 16;
        }

        while (v25);
      }
    }
  }
}

void sub_23CBE9454(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::TryToReconcileSize2Encodings(operations_research::sat *this@<X0>, const operations_research::sat::AffineExpression *a2@<X1>, const operations_research::sat::AffineExpression *a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (operations_research::sat::IntegerEncoder::VariableIsFullyEncoded(a3, *this) && operations_research::sat::IntegerEncoder::VariableIsFullyEncoded(a3, *a2))
  {
    v8 = operations_research::sat::IntegerEncoder::FullDomainEncoding(a3, *this);
    v9 = v8[1];
    if (v9 != *v8)
    {
      if (((v9 - *v8) & 0x8000000000000000) == 0)
      {
        v10 = v9 - *v8;
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v11 = operations_research::sat::IntegerEncoder::FullDomainEncoding(a3, *a2);
    v12 = v11[1];
    if (v12 != *v11)
    {
      if (((v12 - *v11) & 0x8000000000000000) == 0)
      {
        v13 = v12 - *v11;
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    if (dword_2810C0610 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&_MergedGlobals_17, dword_2810C0610))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(&v15, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/implied_bounds.cc", 315);
      v14 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v15, 2);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v14, "encodings are not fully propagated", 0x22uLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v15);
    }
  }
}

void sub_23CBE97E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  operator delete(v12);
  if (v11)
  {
    operator delete(v11);
    v13 = *v10;
    if (*v10)
    {
LABEL_6:
      *(v10 + 8) = v13;
      operator delete(v13);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v13 = *v10;
    if (*v10)
    {
      goto LABEL_6;
    }
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::ProductDecomposer::TryToDecompose(unsigned __int8 ****this@<X0>, const operations_research::sat::AffineExpression *a2@<X1>, const operations_research::sat::AffineExpression *a3@<X2>, void **a4@<X8>)
{
  v4 = *a2;
  if (*a2 == -1 || (v6 = (*this)[5], !&(*(v6 + ((8 * v4) ^ 8)))[v6[v4]]) || (v7 = a3, v8 = *a3, *a3 == -1) || !&(*(v6 + ((8 * v8) ^ 8)))[v6[v8]])
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return;
  }

  v9 = this[1];
  v10 = *v9;
  v11 = *(*v9 + 10);
  if (!*(*v9 + 10))
  {
    goto LABEL_12;
  }

LABEL_7:
  v12 = 0;
  do
  {
    v13 = (v11 + v12) >> 1;
    if (SLODWORD(v10[4 * v13 + 2]) < v4)
    {
      v12 = v13 + 1;
    }

    else
    {
      v11 = (v11 + v12) >> 1;
    }
  }

  while (v12 != v11);
LABEL_12:
  while (!*(v10 + 11))
  {
    v10 = v10[v11 + 30];
    v11 = *(v10 + 10);
    if (*(v10 + 10))
    {
      goto LABEL_7;
    }
  }

  while (v11 == *(v10 + 10))
  {
    LODWORD(v11) = *(v10 + 8);
    v10 = *v10;
    if (*(v10 + 11))
    {
      goto LABEL_19;
    }
  }

  if (SLODWORD(v10[4 * v11 + 2]) > v4)
  {
LABEL_19:
    v14 = v9[1];
    v15 = *(v14 + 10);
    v10 = v14;
    LODWORD(v11) = v15;
    goto LABEL_21;
  }

  v14 = v9[1];
  v15 = *(v14 + 10);
LABEL_21:
  v17 = v10 == v14 && v11 == v15;
  v18 = &v10[4 * v11 + 3];
  v19 = *v9;
  v20 = *(*v9 + 10);
  if (!*(*v9 + 10))
  {
    goto LABEL_33;
  }

LABEL_28:
  v21 = 0;
  do
  {
    v22 = (v20 + v21) >> 1;
    if (SLODWORD(v19[4 * v22 + 2]) < v8)
    {
      v21 = v22 + 1;
    }

    else
    {
      v20 = (v20 + v21) >> 1;
    }
  }

  while (v21 != v20);
LABEL_33:
  while (!*(v19 + 11))
  {
    v19 = v19[v20 + 30];
    v20 = *(v19 + 10);
    if (*(v19 + 10))
    {
      goto LABEL_28;
    }
  }

  v23 = v9 + 3;
  if (v17)
  {
    v24 = v23;
  }

  else
  {
    v24 = v18;
  }

  while (v20 == *(v19 + 10))
  {
    LODWORD(v20) = *(v19 + 8);
    v19 = *v19;
    if (*(v19 + 11))
    {
      goto LABEL_43;
    }
  }

  if (SLODWORD(v19[4 * v20 + 2]) <= v8)
  {
    goto LABEL_44;
  }

LABEL_43:
  v19 = v14;
  LODWORD(v20) = v15;
LABEL_44:
  if (v20 == v15 && v19 == v14)
  {
    v26 = v23;
  }

  else
  {
    v26 = &v19[4 * v20 + 3];
  }

  v27 = *(v24 + 8);
  v74 = v24;
  v28 = **v24;
  v29 = v27[10];
  if (v28 == v27 && v29 == 0)
  {
    v45 = a2;
    v46 = a4;
  }

  else
  {
    v31 = 0;
    v76 = v27[10];
    do
    {
      v32 = *&v28[32 * v31 + 16];
      v33 = *v26;
      v34 = *(*v26 + 10);
      if (*(*v26 + 10))
      {
LABEL_56:
        v35 = 0;
        v36 = (v33 + 2);
        do
        {
          v37 = *v36;
          v36 += 8;
          if (v37 >= v32)
          {
            goto LABEL_61;
          }

          ++v35;
        }

        while (v34 != v35);
        LODWORD(v35) = v34;
        goto LABEL_61;
      }

      while (1)
      {
        LODWORD(v35) = 0;
LABEL_61:
        if (*(v33 + 11))
        {
          break;
        }

        v33 = v33[v35 + 30];
        v34 = *(v33 + 10);
        if (*(v33 + 10))
        {
          goto LABEL_56;
        }
      }

      while (v35 == *(v33 + 10))
      {
        LODWORD(v35) = *(v33 + 8);
        v33 = *v33;
        if (*(v33 + 11))
        {
          v38 = v26[1];
LABEL_68:
          *(v38 + 10);
          goto LABEL_74;
        }
      }

      v38 = v26[1];
      if (v32 < SLODWORD(v33[4 * v35 + 2]))
      {
        goto LABEL_68;
      }

      if (v33 != v38 || v35 != *(v38 + 10))
      {
        operator new();
      }

LABEL_74:
      if (v28[11])
      {
        if (++v31 == v28[10])
        {
          v40 = v28;
          while (1)
          {
            v41 = *v40;
            if (*(*v40 + 11))
            {
              break;
            }

            v42 = v40[8];
            v40 = *v40;
            if (v42 != v41[10])
            {
              v28 = v41;
              v31 = v42;
              break;
            }
          }
        }
      }

      else
      {
        v43 = &v28[8 * (v31 + 1) + 240];
        do
        {
          v28 = *v43;
          v44 = *(*v43 + 11);
          v43 = *v43 + 240;
        }

        while (!v44);
        v31 = 0;
      }
    }

    while (v28 != v27 || v31 != v29);
    v45 = a2;
    v46 = a4;
    v7 = a3;
  }

  v47 = operations_research::sat::IntegerTrail::InitialVariableDomain(*this, *v45);
  if (operations_research::Domain::Size(v47) != 2 || ((v48 = v26[1], v49 = **v26, v50 = v48[10], v49 == v48) ? (v51 = v50 == 0) : (v51 = 0), v51))
  {
LABEL_107:
    v59 = operations_research::sat::IntegerTrail::InitialVariableDomain(*this, *v7);
    if (operations_research::Domain::Size(v59) != 2 || ((v60 = *(v74 + 8), v61 = **v74, v62 = v60[10], v61 == v60) ? (v63 = v62 == 0) : (v63 = 0), v63))
    {
LABEL_127:
      v71 = operations_research::sat::IntegerTrail::InitialVariableDomain(*this, *v45);
      if (operations_research::Domain::Size(v71) == 2)
      {
        v72 = operations_research::sat::IntegerTrail::InitialVariableDomain(*this, *v7);
        if (operations_research::Domain::Size(v72) == 2)
        {
          operations_research::sat::TryToReconcileSize2Encodings(v45, v7, this[2], v46);
          v73 = *v46;
          if (*v46 != v46[1])
          {
            return;
          }

          if (v73)
          {
            v46[1] = v73;
            operator delete(v73);
          }
        }
      }

      *v46 = 0;
      v46[1] = 0;
      v46[2] = 0;
    }

    else
    {
      v64 = 0;
      while (1)
      {
        operations_research::sat::TryToReconcileEncodings(v7, v45, *&v61[32 * v64 + 24], (*&v61[32 * v64 + 32] - *&v61[32 * v64 + 24]) >> 4, 1, this[2], v46);
        v65 = *v46;
        if (*v46 != v46[1])
        {
          break;
        }

        if (v65)
        {
          v46[1] = v65;
          operator delete(v65);
        }

        if (v61[11])
        {
          if (++v64 == v61[10])
          {
            v66 = v61;
            while (1)
            {
              v67 = *v66;
              if (*(*v66 + 11))
              {
                break;
              }

              v68 = v66[8];
              v66 = *v66;
              if (v68 != v67[10])
              {
                v64 = v68;
                v61 = v67;
                break;
              }
            }
          }
        }

        else
        {
          v69 = &v61[8 * (v64 + 1) + 240];
          do
          {
            v61 = *v69;
            v70 = *(*v69 + 11);
            v69 = *v69 + 240;
          }

          while (!v70);
          v64 = 0;
        }

        if (v61 == v60 && v64 == v62)
        {
          goto LABEL_127;
        }
      }
    }
  }

  else
  {
    v52 = 0;
    while (1)
    {
      operations_research::sat::TryToReconcileEncodings(v45, v7, *&v49[32 * v52 + 24], (*&v49[32 * v52 + 32] - *&v49[32 * v52 + 24]) >> 4, 0, this[2], v46);
      v53 = *v46;
      if (*v46 != v46[1])
      {
        break;
      }

      if (v53)
      {
        v46[1] = v53;
        operator delete(v53);
      }

      if (v49[11])
      {
        if (++v52 == v49[10])
        {
          v54 = v49;
          while (1)
          {
            v55 = *v54;
            if (*(*v54 + 11))
            {
              break;
            }

            v56 = v54[8];
            v54 = *v54;
            if (v56 != v55[10])
            {
              v49 = v55;
              v52 = v56;
              break;
            }
          }
        }
      }

      else
      {
        v57 = &v49[8 * (v52 + 1) + 240];
        do
        {
          v49 = *v57;
          v58 = *(*v57 + 11);
          v57 = *v57 + 240;
        }

        while (!v58);
        v52 = 0;
      }

      if (v49 == v48 && v52 == v50)
      {
        goto LABEL_107;
      }
    }
  }
}

void sub_23CBEA278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (v16)
  {
    operator delete(v16);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::ProductDecomposer::TryToLinearize(unsigned __int8 ****this, const operations_research::sat::AffineExpression *a2, const operations_research::sat::AffineExpression *a3, operations_research::sat::LinearConstraintBuilder *a4)
{
  *(a4 + 3) = 0;
  *(a4 + 5) = *(a4 + 4);
  v5 = *this;
  v6 = *a2;
  if (*a2 == -1 || (v7 = v5[5], !&(*(v7 + ((8 * v6) ^ 8)))[v7[v6]]))
  {
    v8 = *a3;
    if (*a3 == -1 || (v9 = v5[5], !&(*(v9 + ((8 * v8) ^ 8)))[v9[v8]]))
    {
      v10 = *(a2 + 2);
      if (v6 != -1)
      {
        v10 += v5[5][v6] * *(a2 + 1);
      }

      v11 = *(a3 + 2);
      if (v8 != -1)
      {
        v11 += v5[5][v8] * *(a3 + 1);
      }

      v12 = v11 * v10;
LABEL_10:
      operations_research::sat::LinearConstraintBuilder::AddConstant(a4, v12);
      return 1;
    }

    *__p = *a3;
    v32 = *(a3 + 2);
    v16 = *(a2 + 2);
    if (v6 != -1)
    {
      v16 += v9[v6] * *(a2 + 1);
    }

LABEL_17:
    operations_research::sat::LinearConstraintBuilder::AddTerm(a4, __p, v16);
    return 1;
  }

  v13 = *a3;
  if (*a3 == -1)
  {
    *__p = *a2;
    v32 = *(a2 + 2);
    v16 = *(a3 + 2);
    goto LABEL_17;
  }

  v14 = v13;
  v15 = v7[v14];
  if (!&(*(v7 + ((v14 * 8) ^ 8)))[v15])
  {
    *__p = *a2;
    v32 = *(a2 + 2);
    v16 = *(a3 + 2) + v15 * *(a3 + 1);
    goto LABEL_17;
  }

  v18 = v6 & 0xFFFFFFFE;
  if ((v6 & 0xFFFFFFFE) == (v13 & 0xFFFFFFFE))
  {
    v19 = v18;
    if (!v7[v19] && v7[v19 + 1] == -1)
    {
      v27 = *(a2 + 1);
      if (*a2)
      {
        v27 = -v27;
      }

      v28 = *(a3 + 1);
      if (*a3)
      {
        v28 = -v28;
      }

      operations_research::sat::LinearConstraintBuilder::AddTerm(a4, v18, (*(a2 + 2) + v27) * v28 + *(a3 + 2) * v27);
      v12 = *(a3 + 2) * *(a2 + 2);
      goto LABEL_10;
    }
  }

  operations_research::sat::ProductDecomposer::TryToDecompose(this, a2, a3, __p);
  v20 = __p[0];
  v21 = __p[1];
  if (__p[0] == __p[1])
  {
    result = 0;
    if (!__p[0])
    {
      return result;
    }

LABEL_37:
    __p[1] = v20;
    v26 = result;
    operator delete(v20);
    return v26;
  }

  v22 = 0x7FFFFFFFFFFFFFFELL;
  v23 = __p[0];
  do
  {
    v24 = v23[2];
    if (v24 * v23[1] < v22)
    {
      v22 = v24 * v23[1];
    }

    v23 += 3;
  }

  while (v23 != __p[1]);
  while (1)
  {
    v25 = v20[2] * v20[1];
    if (v25 != v22)
    {
      result = operations_research::sat::LinearConstraintBuilder::AddLiteralTerm(a4, *v20, v25 - v22);
      if (!result)
      {
        break;
      }
    }

    v20 += 3;
    if (v20 == v21)
    {
      operations_research::sat::LinearConstraintBuilder::AddConstant(a4, v22);
      result = 1;
      break;
    }
  }

  v20 = __p[0];
  if (__p[0])
  {
    goto LABEL_37;
  }

  return result;
}

void sub_23CBEA5A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

operations_research::sat::ProductDetector *operations_research::sat::ProductDetector::ProductDetector(operations_research::sat::ProductDetector *this, operations_research::sat::Model *a2)
{
  if (*(operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2) + 331) != 1)
  {
    *this = 0;
    if (*(operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2) + 724) != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = *(operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2) + 572) > 1;
    goto LABEL_6;
  }

  *this = *(operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2) + 572) > 1;
  if (*(operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2) + 724) == 1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 0;
LABEL_6:
  *(this + 1) = v4;
  *(this + 1) = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
  *(this + 2) = operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a2);
  *(this + 3) = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
  *(this + 4) = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a2);
  *(this + 5) = operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedStatistics>(a2);
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 10) = 0;
  *(this + 11) = &unk_23CE31C20;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = &unk_23CE31C20;
  *(this + 136) = xmmword_23CE306D0;
  *(this + 168) = xmmword_23CE306D0;
  *(this + 200) = xmmword_23CE306D0;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 31) = &unk_23CE31C20;
  *(this + 33) = 1;
  *(this + 34) = 0;
  *(this + 37) = 0;
  *(this + 38) = 0;
  *(this + 39) = &unk_23CE31C20;
  *(this + 41) = 1;
  *(this + 42) = 0;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 55) = 0;
  return this;
}

void operations_research::sat::ProductDetector::~ProductDetector(operations_research::sat::ProductDetector *this)
{
  if (dword_2810BD638 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::ProductDetector::~ProductDetector()::$_0::operator() const(void)::site, dword_2810BD638) && *(this + 5))
  {
    operator new();
  }

  v2 = *(this + 45);
  if (v2)
  {
    *(this + 46) = v2;
    operator delete(v2);
  }

  if (*(this + 41) >= 2uLL)
  {
    operator delete((*(this + 43) - (*(this + 42) & 1) - 8));
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<long long>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<long long>>>>::~raw_hash_set(this + 37);
    if (*(this + 33) < 2uLL)
    {
LABEL_6:
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<long long>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<long long>>>>::~raw_hash_set(this + 29);
      if (*(this + 25) < 2uLL)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }
  }

  else
  {
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<long long>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<long long>>>>::~raw_hash_set(this + 37);
    if (*(this + 33) < 2uLL)
    {
      goto LABEL_6;
    }
  }

  operator delete((*(this + 35) - (*(this + 34) & 1) - 8));
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<long long>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<long long>>>>::~raw_hash_set(this + 29);
  if (*(this + 25) < 2uLL)
  {
LABEL_7:
    if (*(this + 21) < 2uLL)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete((*(this + 27) - (*(this + 26) & 1) - 8));
  if (*(this + 21) < 2uLL)
  {
LABEL_8:
    if (*(this + 17) < 2uLL)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete((*(this + 23) - (*(this + 22) & 1) - 8));
  if (*(this + 17) < 2uLL)
  {
LABEL_9:
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<long long>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<long long>>>>::~raw_hash_set(this + 13);
    if (!*(this + 9))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_18:
  operator delete((*(this + 19) - (*(this + 18) & 1) - 8));
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<long long>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<long long>>>>::~raw_hash_set(this + 13);
  if (*(this + 9))
  {
LABEL_10:
    operator delete((*(this + 11) - (*(this + 10) & 1) - 8));
  }

LABEL_11:
  v3 = *(this + 6);
  if (v3)
  {
    operator delete(v3);
  }
}

void operations_research::sat::ProductDetector::ProcessTernaryClause(uint64_t a1, int *a2, uint64_t a3)
{
  if (a3 == 3)
  {
    v35 = v3;
    v36 = v4;
    ++*(a1 + 416);
    if (*(a1 + 1) == 1)
    {
      v8 = *(a1 + 360);
      v7 = *(a1 + 368);
      v9 = *(*(a1 + 32) + 224);
      if ((*a2 & 0xFFFFFFFE) >= ((*(*(a1 + 32) + 232) - v9) >> 2))
      {
        goto LABEL_10;
      }

      v10 = *(v9 + 4 * (*a2 & 0xFFFFFFFE));
      if (v10)
      {
        goto LABEL_10;
      }

      v33 = v10 | *a2 & 1;
      std::vector<int>::push_back[abi:ne200100](a1 + 360, &v33);
      v11 = a2[1];
      v12 = *(*(a1 + 32) + 224);
      if (v11 & 0xFFFFFFFE) >= ((*(*(a1 + 32) + 232) - v12) >> 2) || (v13 = *(v12 + 4 * (v11 & 0xFFFFFFFE)), (v13) || (v33 = v13 | a2[1] & 1, std::vector<int>::push_back[abi:ne200100](a1 + 360, &v33), v14 = a2[2], v15 = *(*(a1 + 32) + 224), (v14 & 0xFFFFFFFE) >= ((*(*(a1 + 32) + 232) - v15) >> 2)) || (v16 = *(v15 + 4 * (v14 & 0xFFFFFFFE)), (v16))
      {
LABEL_10:
        v17 = ((v7 - v8) >> 2);
        v18 = *(a1 + 360);
        v19 = (*(a1 + 368) - v18) >> 2;
        if (v17 <= v19)
        {
          if (v17 < v19)
          {
            *(a1 + 368) = v18 + 4 * v17;
          }
        }

        else
        {
          std::vector<int>::__append((a1 + 360), v17 - v19);
        }
      }

      else
      {
        v33 = v16 | a2[2] & 1;
        std::vector<int>::push_back[abi:ne200100](a1 + 360, &v33);
      }
    }

    if (*a1 == 1)
    {
      LODWORD(v20) = *a2;
      v21 = a2[1];
      if (*a2 <= v21)
      {
        v22 = v21;
      }

      else
      {
        v22 = v20;
      }

      if (v20 >= v21)
      {
        v20 = v21;
      }

      else
      {
        v20 = v20;
      }

      v32 = v20 | (v22 << 32);
      absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>,std::vector<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>,absl::lts_20240722::hash_internal::Hash<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::equal_to<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::allocator<std::pair<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul> const,std::vector<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>>>::try_emplace_impl<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>((a1 + 104), &v32, &v33);
      v33 = a2[2];
      std::vector<int>::push_back[abi:ne200100](v34 + 8, &v33);
      LODWORD(v23) = *a2;
      v24 = a2[2];
      if (*a2 <= v24)
      {
        v25 = v24;
      }

      else
      {
        v25 = v23;
      }

      if (v23 >= v24)
      {
        v23 = v24;
      }

      else
      {
        v23 = v23;
      }

      v32 = v23 | (v25 << 32);
      absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>,std::vector<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>,absl::lts_20240722::hash_internal::Hash<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::equal_to<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::allocator<std::pair<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul> const,std::vector<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>>>::try_emplace_impl<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>((a1 + 104), &v32, &v33);
      v33 = a2[1];
      std::vector<int>::push_back[abi:ne200100](v34 + 8, &v33);
      LODWORD(v26) = a2[1];
      v27 = a2[2];
      if (v26 <= v27)
      {
        v28 = v27;
      }

      else
      {
        v28 = v26;
      }

      if (v26 >= v27)
      {
        v26 = v27;
      }

      else
      {
        v26 = v26;
      }

      v32 = v26 | (v28 << 32);
      absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>,std::vector<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>,absl::lts_20240722::hash_internal::Hash<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::equal_to<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::allocator<std::pair<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul> const,std::vector<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>>>::try_emplace_impl<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>((a1 + 104), &v32, &v33);
      v33 = *a2;
      std::vector<int>::push_back[abi:ne200100](v34 + 8, &v33);
      v29 = *a2;
      if (v29 >= *(a1 + 56))
      {
        std::vector<BOOL>::resize(a1 + 48, v29 + 1, 0);
      }

      *(*(a1 + 48) + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      v30 = a2[1];
      if (v30 >= *(a1 + 56))
      {
        std::vector<BOOL>::resize(a1 + 48, v30 + 1, 0);
      }

      *(*(a1 + 48) + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      v31 = a2[2];
      if (v31 >= *(a1 + 56))
      {
        std::vector<BOOL>::resize(a1 + 48, v31 + 1, 0);
      }

      *(*(a1 + 48) + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    }
  }
}

void operations_research::sat::ProductDetector::ProcessTernaryExactlyOne(uint64_t a1, int *a2, uint64_t a3)
{
  if (a3 == 3)
  {
    v55 = v3;
    v56 = v4;
    ++*(a1 + 424);
    if (*(a1 + 1) == 1)
    {
      v8 = *(a1 + 360);
      v7 = *(a1 + 368);
      v9 = *(*(a1 + 32) + 224);
      if ((*a2 & 0xFFFFFFFE) >= ((*(*(a1 + 32) + 232) - v9) >> 2))
      {
        goto LABEL_10;
      }

      v10 = *(v9 + 4 * (*a2 & 0xFFFFFFFE));
      if (v10)
      {
        goto LABEL_10;
      }

      v52 = v10 | *a2 & 1;
      std::vector<int>::push_back[abi:ne200100](a1 + 360, &v52);
      v11 = a2[1];
      v12 = *(*(a1 + 32) + 224);
      if (v11 & 0xFFFFFFFE) >= ((*(*(a1 + 32) + 232) - v12) >> 2) || (v13 = *(v12 + 4 * (v11 & 0xFFFFFFFE)), (v13) || (v52 = v13 | a2[1] & 1, std::vector<int>::push_back[abi:ne200100](a1 + 360, &v52), v14 = a2[2], v15 = *(*(a1 + 32) + 224), (v14 & 0xFFFFFFFE) >= ((*(*(a1 + 32) + 232) - v15) >> 2)) || (v16 = *(v15 + 4 * (v14 & 0xFFFFFFFE)), (v16))
      {
LABEL_10:
        v17 = ((v7 - v8) >> 2);
        v18 = *(a1 + 360);
        v19 = (*(a1 + 368) - v18) >> 2;
        if (v17 <= v19)
        {
          if (v17 < v19)
          {
            *(a1 + 368) = v18 + 4 * v17;
          }
        }

        else
        {
          std::vector<int>::__append((a1 + 360), v17 - v19);
        }
      }

      else
      {
        v52 = v16 | a2[2] & 1;
        std::vector<int>::push_back[abi:ne200100](a1 + 360, &v52);
      }
    }

    if (*a1 == 1)
    {
      v20 = *a2;
      v21 = a2[1];
      LODWORD(v22) = v21 ^ 1;
      v23 = a2[2];
      v24 = v23 ^ 1;
      ++*(a1 + 384);
      if ((v21 ^ 1) <= (v23 ^ 1))
      {
        v25 = v24;
      }

      else
      {
        v25 = v22;
      }

      if (v22 >= v24)
      {
        v22 = v24;
      }

      else
      {
        v22 = v22;
      }

      v51 = v22 | (v25 << 32);
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,absl::lts_20240722::hash_internal::Hash<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::equal_to<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::allocator<std::pair<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul> const,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>>::find_or_prepare_insert<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>(a1 + 136, &v51, &v52);
      if (v54 == 1)
      {
        v26 = v53;
        *v53 = v51;
        *(v26 + 8) = 0;
      }

      *(v53 + 8) = v20;
      LODWORD(v27) = v21 & 0xFFFFFFFE;
      v28 = v23 & 0xFFFFFFFE;
      if ((v21 & 0xFFFFFFFE) <= (v23 & 0xFFFFFFFE))
      {
        v29 = v28;
      }

      else
      {
        v29 = v27;
      }

      if (v27 >= v28)
      {
        v27 = v28;
      }

      else
      {
        v27 = v27;
      }

      v51 = v27 & 0x1FFFFFFFFLL | ((v29 >> 1) << 33);
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,absl::lts_20240722::hash_internal::Hash<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::equal_to<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::allocator<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>>::find_or_prepare_insert<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>(a1 + 168, &v51, &v52);
      if (v54 == 1)
      {
        *v53 = v51;
      }

      v31 = *a2;
      v30 = a2[1];
      LODWORD(v32) = *a2 ^ 1;
      v33 = a2[2];
      v34 = v33 ^ 1;
      ++*(a1 + 384);
      if (v32 <= (v33 ^ 1))
      {
        v35 = v34;
      }

      else
      {
        v35 = v32;
      }

      if (v32 >= v34)
      {
        v32 = v34;
      }

      else
      {
        v32 = v32;
      }

      v51 = v32 | (v35 << 32);
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,absl::lts_20240722::hash_internal::Hash<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::equal_to<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::allocator<std::pair<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul> const,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>>::find_or_prepare_insert<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>(a1 + 136, &v51, &v52);
      if (v54 == 1)
      {
        v36 = v53;
        *v53 = v51;
        *(v36 + 8) = 0;
      }

      *(v53 + 8) = v30;
      LODWORD(v37) = v31 & 0xFFFFFFFE;
      v38 = v33 & 0xFFFFFFFE;
      if ((v31 & 0xFFFFFFFE) <= (v33 & 0xFFFFFFFE))
      {
        v39 = v38;
      }

      else
      {
        v39 = v37;
      }

      if (v37 >= v38)
      {
        v37 = v38;
      }

      else
      {
        v37 = v37;
      }

      v51 = v37 & 0x1FFFFFFFFLL | ((v39 >> 1) << 33);
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,absl::lts_20240722::hash_internal::Hash<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::equal_to<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::allocator<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>>::find_or_prepare_insert<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>(a1 + 168, &v51, &v52);
      if (v54 == 1)
      {
        *v53 = v51;
      }

      v40 = *a2;
      v43 = a2 + 1;
      v41 = a2[1];
      v42 = v43[1];
      LODWORD(v44) = v40 ^ 1;
      v45 = v41 ^ 1;
      ++*(a1 + 384);
      if ((v40 ^ 1) <= (v41 ^ 1))
      {
        v46 = v45;
      }

      else
      {
        v46 = v44;
      }

      if (v44 >= v45)
      {
        v44 = v45;
      }

      else
      {
        v44 = v44;
      }

      v51 = v44 | (v46 << 32);
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,absl::lts_20240722::hash_internal::Hash<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::equal_to<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::allocator<std::pair<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul> const,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>>::find_or_prepare_insert<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>(a1 + 136, &v51, &v52);
      if (v54 == 1)
      {
        v47 = v53;
        *v53 = v51;
        *(v47 + 8) = 0;
      }

      *(v53 + 8) = v42;
      LODWORD(v48) = v40 & 0xFFFFFFFE;
      v49 = v41 & 0xFFFFFFFE;
      if ((v40 & 0xFFFFFFFE) <= (v41 & 0xFFFFFFFE))
      {
        v50 = v49;
      }

      else
      {
        v50 = v48;
      }

      if (v48 >= v49)
      {
        v48 = v49;
      }

      else
      {
        v48 = v48;
      }

      v51 = v48 & 0x1FFFFFFFFLL | ((v50 >> 1) << 33);
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,absl::lts_20240722::hash_internal::Hash<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::equal_to<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::allocator<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>>::find_or_prepare_insert<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>(a1 + 168, &v51, &v52);
      if (v54 == 1)
      {
        *v53 = v51;
      }
    }
  }
}

unint64_t operations_research::sat::ProductDetector::ProcessBinaryClause(unint64_t result, _DWORD *a2, uint64_t a3)
{
  if (*result == 1 && a3 == 2)
  {
    v62 = v3;
    v63 = v4;
    v6 = result;
    ++*(result + 408);
    LODWORD(v7) = *a2 ^ 1;
    v8 = a2[1] ^ 1;
    v9 = v7 <= v8 ? v8 : v7;
    v7 = v7 >= v8 ? v8 : v7;
    v57 = v7 | (v9 << 32);
    result = absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>,std::vector<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>,absl::lts_20240722::hash_internal::Hash<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::equal_to<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::allocator<std::pair<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul> const,std::vector<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>>>::try_emplace_impl<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>((result + 104), &v57, v59);
    v10 = v60[1];
    for (i = v60[2]; v10 != i; ++v10)
    {
      v14 = *v10;
      v54 = v57;
      v55 = v14;
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(&v54, &v56, v59, 2, 1);
      v15 = v54;
      v16 = HIDWORD(v54);
      if (HIDWORD(v54) == v14)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v54 == v14)
      {
        v18 = 0;
      }

      else
      {
        v18 = v17;
      }

      result = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,3ul>,std::bitset<3ul>>,absl::lts_20240722::hash_internal::Hash<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,3ul>>,std::equal_to<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,3ul>>,std::allocator<std::pair<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,3ul> const,std::bitset<3ul>>>>::find_or_prepare_insert_non_soo<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,3ul>>((v6 + 72), &v54, v59);
      if (v61 == 1)
      {
        v19 = v60;
        v20 = v54;
        *(v60 + 2) = v55;
        *v19 = v20;
        v19[2] = 0;
      }

      v12 = v60;
      v13 = v60[2];
      if ((v13 & (1 << v18)) == 0)
      {
        v21 = v13 | (1 << v18);
        v60[2] = v21;
        if (v21)
        {
          if ((v21 & 2) == 0 || v18 == 2)
          {
            goto LABEL_44;
          }

          v22 = HIDWORD(v54);
          v23 = v55;
          v24 = v54;
          LODWORD(v25) = v54 ^ 1;
          v26 = HIDWORD(v54) ^ 1;
          ++*(v6 + 384);
          if (v25 <= v26)
          {
            v27 = v26;
          }

          else
          {
            v27 = v25;
          }

          if (v25 >= v26)
          {
            v25 = v26;
          }

          else
          {
            v25 = v25;
          }

          v58 = v25 | (v27 << 32);
          absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,absl::lts_20240722::hash_internal::Hash<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::equal_to<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::allocator<std::pair<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul> const,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>>::find_or_prepare_insert<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>(v6 + 136, &v58, v59);
          if (v61 == 1)
          {
            v28 = v60;
            *v60 = v58;
            *(v28 + 2) = 0;
          }

          *(v60 + 2) = v23;
          LODWORD(v29) = v24 & 0xFFFFFFFE;
          v30 = v22 & 0xFFFFFFFE;
          if ((v24 & 0xFFFFFFFE) <= (v22 & 0xFFFFFFFE))
          {
            v31 = v30;
          }

          else
          {
            v31 = v29;
          }

          if (v29 >= v30)
          {
            v29 = v30;
          }

          else
          {
            v29 = v29;
          }

          v58 = v29 & 0x1FFFFFFFFLL | ((v31 >> 1) << 33);
          result = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,absl::lts_20240722::hash_internal::Hash<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::equal_to<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::allocator<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>>::find_or_prepare_insert<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>(v6 + 168, &v58, v59);
          if (v61 == 1)
          {
            *v60 = v58;
          }

          v21 = v12[2];
          if (v21)
          {
LABEL_44:
            v33 = v15 != v14 && v16 == v14;
            if ((v21 & 4) != 0 && !v33)
            {
              v35 = v54;
              v34 = HIDWORD(v54);
              LODWORD(v36) = v54 ^ 1;
              v37 = v55;
              v38 = v55 ^ 1;
              ++*(v6 + 384);
              if (v36 <= v38)
              {
                v39 = v38;
              }

              else
              {
                v39 = v36;
              }

              if (v36 >= v38)
              {
                v36 = v38;
              }

              else
              {
                v36 = v36;
              }

              v58 = v36 | (v39 << 32);
              absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,absl::lts_20240722::hash_internal::Hash<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::equal_to<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::allocator<std::pair<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul> const,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>>::find_or_prepare_insert<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>(v6 + 136, &v58, v59);
              if (v61 == 1)
              {
                v40 = v60;
                *v60 = v58;
                *(v40 + 2) = 0;
              }

              *(v60 + 2) = v34;
              LODWORD(v41) = v35 & 0xFFFFFFFE;
              v42 = v37 & 0xFFFFFFFE;
              if ((v35 & 0xFFFFFFFE) <= (v37 & 0xFFFFFFFE))
              {
                v43 = v42;
              }

              else
              {
                v43 = v41;
              }

              if (v41 >= v42)
              {
                v41 = v42;
              }

              else
              {
                v41 = v41;
              }

              v58 = v41 & 0x1FFFFFFFFLL | ((v43 >> 1) << 33);
              result = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,absl::lts_20240722::hash_internal::Hash<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::equal_to<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::allocator<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>>::find_or_prepare_insert<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>(v6 + 168, &v58, v59);
              if (v61 == 1)
              {
                *v60 = v58;
              }

              v21 = v12[2];
            }
          }
        }

        if ((v21 & 2) != 0 && (v21 & 4) != 0 && v15 != v14)
        {
          v44 = v54;
          v45 = HIDWORD(v54);
          LODWORD(v46) = HIDWORD(v54) ^ 1;
          v47 = v55;
          v48 = v55 ^ 1;
          ++*(v6 + 384);
          if (v46 <= v48)
          {
            v49 = v48;
          }

          else
          {
            v49 = v46;
          }

          if (v46 >= v48)
          {
            v46 = v48;
          }

          else
          {
            v46 = v46;
          }

          v58 = v46 | (v49 << 32);
          absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,absl::lts_20240722::hash_internal::Hash<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::equal_to<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::allocator<std::pair<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul> const,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>>::find_or_prepare_insert<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>(v6 + 136, &v58, v59);
          if (v61 == 1)
          {
            v50 = v60;
            *v60 = v58;
            *(v50 + 2) = 0;
          }

          *(v60 + 2) = v44;
          LODWORD(v51) = v45 & 0xFFFFFFFE;
          v52 = v47 & 0xFFFFFFFE;
          if ((v45 & 0xFFFFFFFE) <= (v47 & 0xFFFFFFFE))
          {
            v53 = v52;
          }

          else
          {
            v53 = v51;
          }

          if (v51 >= v52)
          {
            v51 = v52;
          }

          else
          {
            v51 = v51;
          }

          v58 = v51 & 0x1FFFFFFFFLL | ((v53 >> 1) << 33);
          result = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,absl::lts_20240722::hash_internal::Hash<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::equal_to<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::allocator<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>>::find_or_prepare_insert<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>(v6 + 168, &v58, v59);
          if (v61 == 1)
          {
            *v60 = v58;
          }
        }
      }
    }
  }

  return result;
}

uint64_t operations_research::sat::ProductDetector::ProcessImplicationGraph(uint64_t this, operations_research::sat::BinaryImplicationGraph *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*this == 1)
  {
    v2 = this;
    if (*(this + 56) >= 1)
    {
      v4 = 0;
      do
      {
        if (((*(*(v2 + 48) + 8 * (v4 >> 6)) >> v4) & 1) != 0 && ((*(*(*(v2 + 16) + 24) + 8 * (v4 >> 6)) >> (v4 & 0x3E)) & 3) == 0)
        {
          this = operations_research::sat::BinaryImplicationGraph::DirectImplications(a2, v4);
          v5 = *this;
          v6 = *(this + 8);
          if (*this != v6)
          {
            do
            {
              v7 = *v5++;
              v9[0] = v4 ^ 1;
              v9[1] = v7;
              this = operations_research::sat::ProductDetector::ProcessBinaryClause(v2, v9, 2);
            }

            while (v5 != v6);
          }
        }

        ++v4;
      }

      while (v4 < *(v2 + 56));
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return this;
}

unint64_t operations_research::sat::ProductDetector::ProcessTrailAtLevelOne(unint64_t this)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*this == 1)
  {
    v1 = this;
    v2 = *(this + 16);
    if ((*(v2 + 8) & 0xFFFFFFF) == 1)
    {
      ++*(this + 400);
      v3 = **(*(this + 8) + 304);
      if (SHIDWORD(v3) < *(this + 56) && ((*(*(this + 48) + (((v3 >> 32) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> SBYTE4(v3)) & 1) != 0)
      {
        v4 = *(v2 + 12);
        if (v3 + 1 < v4)
        {
          v5 = HIDWORD(v3) ^ 1;
          v6 = 4 * (v3 + 1);
          v7 = ~v3 + v4;
          do
          {
            v8 = *(*(*(v1 + 16) + 48) + v6);
            v10[0] = v5;
            v10[1] = v8;
            this = operations_research::sat::ProductDetector::ProcessBinaryClause(v1, v10, 2);
            v6 += 4;
            --v7;
          }

          while (v7);
        }
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return this;
}

void operations_research::sat::ProductDetector::ProcessConditionalEquality(uint64_t a1, unsigned int a2, unsigned int a3, int a4)
{
  v4 = a3;
  v49 = a4;
  ++*(a1 + 440);
  if (a4 == a3)
  {
    return;
  }

  v7 = a2 ^ 1;
  if (a3)
  {
    v4 = a3 & 0xFFFFFFFE;
    v49 = a4 ^ 1;
  }

  v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v7) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v7));
  v50 = __PAIR64__(v4, a2);
  absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>>::try_emplace_impl<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>((a1 + 232), &v50, v51);
  v9 = v52[1];
  v10 = v52[2];
  if (v9 == v10)
  {
LABEL_7:
    std::vector<int>::push_back[abi:ne200100]((v52 + 1), &v49);
    v11 = *(a1 + 200);
    if (v11 > 1)
    {
      v22 = 0;
      _X10 = *(a1 + 216);
      __asm { PRFM            #4, [X10] }

      v28 = (((v8 + v4) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v8 + v4));
      v29 = vdup_n_s8(v28 & 0x7F);
      v30 = ((v28 >> 7) ^ (_X10 >> 12)) & v11;
      v31 = *(_X10 + v30);
      v32 = vceq_s8(v31, v29);
      if (!v32)
      {
        goto LABEL_31;
      }

LABEL_26:
      while (1)
      {
        v33 = (*(a1 + 224) + 8 * ((v30 + (__clz(__rbit64(v32)) >> 3)) & v11));
        v35 = *v33;
        v34 = v33[1];
        if (v35 == v7 && v34 == v4)
        {
          break;
        }

        v32 &= ((v32 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v32)
        {
LABEL_31:
          while (!*&vceq_s8(v31, 0x8080808080808080))
          {
            v22 += 8;
            v30 = (v22 + v30) & v11;
            v31 = *(_X10 + v30);
            v32 = vceq_s8(v31, v29);
            if (v32)
            {
              goto LABEL_26;
            }
          }

          goto LABEL_14;
        }
      }
    }

    else if (*(a1 + 208) < 2uLL || *(a1 + 216) != v7 || *(a1 + 220) != v4)
    {
      goto LABEL_14;
    }

    v12 = v49;
    v13 = v49 & 0xFFFFFFFE;
    ++*(a1 + 392);
    v50 = __PAIR64__(v13, a2);
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::find_or_prepare_insert<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>(a1 + 264, &v50, v51);
    if (v53 == 1)
    {
      v14 = v52;
      *v52 = v50;
      *(v14 + 2) = 0;
    }

    *(v52 + 2) = v12 & 1 ^ v4;
  }

  else
  {
    while (*v9 != v49)
    {
      if (++v9 == v10)
      {
        goto LABEL_7;
      }
    }
  }

LABEL_14:
  v15 = v49 & 0xFFFFFFFE;
  v49 = v4 ^ v49 & 1;
  v50 = __PAIR64__(v15, a2);
  absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>>::try_emplace_impl<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>((a1 + 232), &v50, v51);
  v16 = v52[1];
  v17 = v52[2];
  if (v16 == v17)
  {
LABEL_17:
    std::vector<int>::push_back[abi:ne200100]((v52 + 1), &v49);
    v18 = *(a1 + 200);
    if (v18 >= 2)
    {
      v37 = 0;
      _X10 = *(a1 + 216);
      __asm { PRFM            #4, [X10] }

      v40 = (((v8 + v15) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v8 + v15));
      v41 = vdup_n_s8(v40 & 0x7F);
      v42 = ((v40 >> 7) ^ (_X10 >> 12)) & v18;
      v43 = *(_X10 + v42);
      v44 = vceq_s8(v43, v41);
      if (!v44)
      {
        goto LABEL_40;
      }

LABEL_35:
      while (1)
      {
        v45 = (*(a1 + 224) + 8 * ((v42 + (__clz(__rbit64(v44)) >> 3)) & v18));
        v47 = *v45;
        v46 = v45[1];
        if (v47 == v7 && v46 == v15)
        {
          break;
        }

        v44 &= ((v44 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v44)
        {
LABEL_40:
          while (!*&vceq_s8(v43, 0x8080808080808080))
          {
            v37 += 8;
            v42 = (v37 + v42) & v18;
            v43 = *(_X10 + v42);
            v44 = vceq_s8(v43, v41);
            if (v44)
            {
              goto LABEL_35;
            }
          }

          return;
        }
      }
    }

    else if (*(a1 + 208) < 2uLL || *(a1 + 216) != v7 || *(a1 + 220) != v15)
    {
      return;
    }

    v19 = v49;
    v20 = v49 & 0xFFFFFFFE;
    ++*(a1 + 392);
    v50 = __PAIR64__(v20, a2);
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::find_or_prepare_insert<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>(a1 + 264, &v50, v51);
    if (v53 == 1)
    {
      v21 = v52;
      *v52 = v50;
      *(v21 + 2) = 0;
    }

    *(v52 + 2) = v19 & 1 | v15;
  }

  else
  {
    while (*v16 != v49)
    {
      if (++v16 == v17)
      {
        goto LABEL_17;
      }
    }
  }
}

unint64_t operations_research::sat::ProductDetector::ProcessConditionalZero(void *a1, int a2, int a3)
{
  ++a1[54];
  v6 = a3 & 0xFFFFFFFE;
  LODWORD(v32) = a2;
  HIDWORD(v32) = a3 & 0xFFFFFFFE;
  result = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::find_or_prepare_insert<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>((a1 + 25), &v32, v28);
  if (v30 == 1)
  {
    *v29 = v32;
    if (v30)
    {
      v8 = 0;
      v9 = a2 ^ 1u;
      _X9 = a1[31];
      __asm { PRFM            #4, [X9] }

      v15 = (a3 & 0xFFFFFFFE) + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v9) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v9)));
      v16 = ((v15 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v15);
      v17 = a1[29];
      v18 = vdup_n_s8(v16 & 0x7F);
      v19 = ((v16 >> 7) ^ (_X9 >> 12)) & v17;
      v20 = *(_X9 + v19);
      v21 = vceq_s8(v20, v18);
      if (!v21)
      {
        goto LABEL_9;
      }

      do
      {
LABEL_4:
        v22 = a1[32] + 32 * ((v19 + (__clz(__rbit64(v21)) >> 3)) & v17);
        if (*v22 == v9 && *(v22 + 4) == v6)
        {
          v24 = *(v22 + 8);
          v25 = *(v22 + 16);
          while (v24 != v25)
          {
            v26 = *v24;
            ++a1[49];
            LODWORD(v31) = v9;
            HIDWORD(v31) = v26 & 0xFFFFFFFE;
            result = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::find_or_prepare_insert<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>((a1 + 33), &v31, &v32);
            if (v34 == 1)
            {
              v27 = v33;
              *v33 = v31;
              *(v27 + 8) = 0;
            }

            *(v33 + 8) = v26 & 1 | v6;
            ++v24;
          }

          return result;
        }

        v21 &= ((v21 & 0x8080808080808080) - 1) & 0x8080808080808080;
      }

      while (v21);
LABEL_9:
      while (!*&vceq_s8(v20, 0x8080808080808080))
      {
        v8 += 8;
        v19 = (v8 + v19) & v17;
        v20 = *(_X9 + v19);
        v21 = vceq_s8(v20, v18);
        if (v21)
        {
          goto LABEL_4;
        }
      }
    }
  }

  return result;
}

void operations_research::sat::ProductDetector::UpdateRLTMaps(uint64_t *a1, uint64_t *a2, unsigned int a3, unsigned int a4, int a5, double a6, double a7, double a8)
{
  v56 = a4;
  v57 = a3;
  if (a8 > a6 && a8 > a7)
  {
    return;
  }

  v16 = a4;
  if (a3 >= a4)
  {
    v17 = a4;
  }

  else
  {
    v17 = a3;
  }

  if (a3 >= a4)
  {
    v16 = a3;
  }

  v51 = v17 | (v16 << 32);
  v52 = a5;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::find_or_prepare_insert<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>((a1 + 41), &v51, v53);
  if (v55 != 1 || (v18 = v54, *v54 = v51, *(v18 + 8) = v52, (v55 & 1) == 0))
  {
    v19 = *(v54 + 8);
    v20 = *a2;
    if (v19)
    {
      if (1.0 - *(v20 + ((8 * v19) & 0xFFFFFFFFFFFFFFF0)) <= a8)
      {
        goto LABEL_18;
      }
    }

    else if (*(v20 + 8 * v19) <= a8)
    {
      goto LABEL_18;
    }

    *(v54 + 8) = a5;
  }

LABEL_18:
  if (a6 * a7 > a8 + 0.0001)
  {
    v21 = 0;
    _X8 = a1[39];
    __asm { PRFM            #4, [X8] }

    v28 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a3) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a3));
    v29 = a1[37];
    v30 = vdup_n_s8(v28 & 0x7F);
    v31 = ((v28 >> 7) ^ (_X8 >> 12)) & v29;
    v32 = *(_X8 + v31);
    v33 = vceq_s8(v32, v30);
    if (!v33)
    {
      goto LABEL_23;
    }

LABEL_20:
    v34 = a1[40];
    do
    {
      v35 = (v31 + (__clz(__rbit64(v33)) >> 3)) & v29;
      if (*(v34 + 32 * v35) == a3)
      {
        v37 = v34 + 32 * v35;
        goto LABEL_28;
      }

      v33 &= ((v33 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v33);
LABEL_23:
    while (1)
    {
      v36 = vceq_s8(v32, 0x8080808080808080);
      if (v36)
      {
        break;
      }

      v21 += 8;
      v31 = (v21 + v31) & v29;
      v32 = *(_X8 + v31);
      v33 = vceq_s8(v32, v30);
      if (v33)
      {
        goto LABEL_20;
      }
    }

    v37 = a1[40] + 32 * absl::lts_20240722::container_internal::PrepareInsertNonSoo(a1 + 37, v28, (v31 + (__clz(__rbit64(v36)) >> 3)) & v29, v21, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>>::GetPolicyFunctions(void)::value);
    *v37 = a3;
    *(v37 + 16) = 0;
    *(v37 + 24) = 0;
    *(v37 + 8) = 0;
LABEL_28:
    std::vector<int>::push_back[abi:ne200100](v37 + 8, &v56);
    v38 = 0;
    _X8 = a1[39];
    __asm { PRFM            #4, [X8] }

    v41 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v56) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v56));
    v42 = a1[37];
    v43 = vdup_n_s8(v41 & 0x7F);
    v44 = ((v41 >> 7) ^ (_X8 >> 12)) & v42;
    v45 = *(_X8 + v44);
    v46 = vceq_s8(v45, v43);
    if (!v46)
    {
      goto LABEL_32;
    }

LABEL_29:
    v47 = a1[40];
    do
    {
      v48 = (v44 + (__clz(__rbit64(v46)) >> 3)) & v42;
      if (*(v47 + 32 * v48) == v56)
      {
        v50 = v47 + 32 * v48;
        goto LABEL_37;
      }

      v46 &= ((v46 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v46);
LABEL_32:
    while (1)
    {
      v49 = vceq_s8(v45, 0x8080808080808080);
      if (v49)
      {
        break;
      }

      v38 += 8;
      v44 = (v38 + v44) & v42;
      v45 = *(_X8 + v44);
      v46 = vceq_s8(v45, v43);
      if (v46)
      {
        goto LABEL_29;
      }
    }

    v50 = a1[40] + 32 * absl::lts_20240722::container_internal::PrepareInsertNonSoo(a1 + 37, v41, (v44 + (__clz(__rbit64(v49)) >> 3)) & v42, v38, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>>::GetPolicyFunctions(void)::value);
    *v50 = v56;
    *(v50 + 16) = 0;
    *(v50 + 24) = 0;
    *(v50 + 8) = 0;
LABEL_37:
    std::vector<int>::push_back[abi:ne200100](v50 + 8, &v57);
  }
}

unint64_t *operations_research::sat::ProductDetector::InitializeBooleanRLTCuts(void *a1, void *a2, uint64_t *a3)
{
  v6 = a1[41];
  if (v6 > 1)
  {
    absl::lts_20240722::container_internal::ClearBackingArray(a1 + 41, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::GetPolicyFunctions(void)::value, v6 < 0x80, 1u);
  }

  else
  {
    a1[42] = 0;
  }

  result = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>>::clear(a1 + 37);
  v8 = (a1[46] - a1[45]) >> 2;
  if (v8 >= 1)
  {
    v9 = 0;
    result = &absl::lts_20240722::hash_internal::MixingHashState::kSeed;
    do
    {
      v32 = a1[45];
      v33 = (v32 + 4 * v9);
      v34 = *v33;
      v35 = v33[1];
      v36 = *(v32 + 4 * (v9 + 2));
      v37 = *v33 & 0xFFFFFFFE;
      v38 = *a2;
      if (*a2 > 1uLL)
      {
        v13 = 0;
        _X9 = a2[2];
        __asm { PRFM            #4, [X9] }

        v50 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v37) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v37));
        v51 = _X9 >> 12;
        v14 = (_X9 >> 12) ^ (v50 >> 7);
        v52 = vdup_n_s8(v50 & 0x7F);
        v53 = a2[3];
        while (1)
        {
          v10 = v14 & v38;
          v11 = *(_X9 + v10);
          v12 = vceq_s8(v11, v52);
          if (v12)
          {
            break;
          }

LABEL_9:
          if (vceq_s8(v11, 0x8080808080808080))
          {
            goto LABEL_44;
          }

          v13 += 8;
          v14 = v13 + v10;
        }

        while (*(v53 + 8 * ((v10 + (__clz(__rbit64(v12)) >> 3)) & v38)) != v37)
        {
          v12 &= ((v12 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v12)
          {
            goto LABEL_9;
          }
        }

        v15 = 0;
        __asm { PRFM            #4, [X9] }

        v20 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + (v35 & 0xFFFFFFFE)) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + (v35 & 0xFFFFFFFE)));
        v21 = vdup_n_s8(v20 & 0x7F);
        v22 = (v51 ^ (v20 >> 7)) & v38;
        v23 = *(_X9 + v22);
        v24 = vceq_s8(v23, v21);
        if (!v24)
        {
          goto LABEL_14;
        }

LABEL_12:
        while (*(v53 + 8 * ((v22 + (__clz(__rbit64(v24)) >> 3)) & v38)) != (v35 & 0xFFFFFFFE))
        {
          v24 &= ((v24 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v24)
          {
LABEL_14:
            while (!*&vceq_s8(v23, 0x8080808080808080))
            {
              v15 += 8;
              v22 = (v15 + v22) & v38;
              v23 = *(_X9 + v22);
              v24 = vceq_s8(v23, v21);
              if (v24)
              {
                goto LABEL_12;
              }
            }

            goto LABEL_44;
          }
        }

        v25 = 0;
        __asm { PRFM            #4, [X9] }

        v27 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + (v36 & 0xFFFFFFFE)) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + (v36 & 0xFFFFFFFE)));
        v28 = vdup_n_s8(v27 & 0x7F);
        v29 = (v51 ^ (v27 >> 7)) & v38;
        v30 = *(_X9 + v29);
        v31 = vceq_s8(v30, v28);
        if (!v31)
        {
          goto LABEL_20;
        }

LABEL_18:
        while (*(v53 + 8 * ((v29 + (__clz(__rbit64(v31)) >> 3)) & v38)) != (v36 & 0xFFFFFFFE))
        {
          v31 &= ((v31 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v31)
          {
LABEL_20:
            while (!*&vceq_s8(v30, 0x8080808080808080))
            {
              v25 += 8;
              v29 = (v25 + v29) & v38;
              v30 = *(_X9 + v29);
              v31 = vceq_s8(v30, v28);
              if (v31)
              {
                goto LABEL_18;
              }
            }

            goto LABEL_44;
          }
        }
      }

      else if (a2[1] < 2uLL || *(a2 + 4) != v37 || v37 != (v35 & 0xFFFFFFFE) || v37 != (v36 & 0xFFFFFFFE))
      {
        goto LABEL_44;
      }

      v42 = *a3;
      if (v34)
      {
        v43 = 1.0 - *(v42 + ((8 * v34) & 0xFFFFFFFFFFFFFFF0));
        v44 = 8 * v35;
        if (v35)
        {
LABEL_37:
          v45 = 1.0 - *(v42 + (v44 & 0xFFFFFFFFFFFFFFF0));
          v46 = 8 * v36;
          if ((v36 & 1) == 0)
          {
            goto LABEL_42;
          }

          goto LABEL_38;
        }
      }

      else
      {
        v43 = *(v42 + 8 * v34);
        v44 = 8 * v35;
        if (v35)
        {
          goto LABEL_37;
        }
      }

      v45 = *(v42 + v44);
      v46 = 8 * v36;
      if ((v36 & 1) == 0)
      {
LABEL_42:
        v47 = *(v42 + v46);
        goto LABEL_43;
      }

LABEL_38:
      v47 = 1.0 - *(v42 + (v46 & 0xFFFFFFFFFFFFFFF0));
LABEL_43:
      operations_research::sat::ProductDetector::UpdateRLTMaps(a1, a3, v34 ^ 1, v35 ^ 1, v36, 1.0 - v43, 1.0 - v45, v47);
      v54 = v36 ^ 1;
      v55 = 1.0 - v47;
      operations_research::sat::ProductDetector::UpdateRLTMaps(a1, a3, v34 ^ 1, v54, v35, 1.0 - v43, v55, v45);
      operations_research::sat::ProductDetector::UpdateRLTMaps(a1, a3, v35 ^ 1, v54, v34, 1.0 - v45, v55, v43);
      result = &absl::lts_20240722::hash_internal::MixingHashState::kSeed;
LABEL_44:
      v9 += 3;
    }

    while (v9 < v8);
  }

  return result;
}

unint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>>::clear(unint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = result;
    v4 = result[2];
    v3 = result[3];
    if (v1 > 6)
    {
      v10 = result[1];
      if (v10 >= 2)
      {
        v11 = v10 >> 1;
        do
        {
          v12 = *v4 & 0x8080808080808080;
          if (v12 != 0x8080808080808080)
          {
            v13 = v12 ^ 0x8080808080808080;
            do
            {
              v14 = v3 + ((4 * __clz(__rbit64(v13))) & 0x1E0);
              v15 = *(v14 + 8);
              if (v15)
              {
                *(v14 + 16) = v15;
                operator delete(v15);
              }

              --v11;
              v13 &= v13 - 1;
            }

            while (v13);
          }

          ++v4;
          v3 += 256;
        }

        while (v11);
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

    return absl::lts_20240722::container_internal::ClearBackingArray(v2, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>>::GetPolicyFunctions(void)::value, v1 < 0x80, 0);
  }

  return result;
}

unint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::find_or_prepare_insert<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>@<X0>(unint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if (*result > 1uLL)
  {
    v6 = 0;
    _X10 = *(result + 16);
    __asm { PRFM            #4, [X10] }

    v12 = *a2;
    v13 = a2[1];
    v14 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v12) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v12))) + v13;
    v15 = ((v14 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v14);
    v16 = vdup_n_s8(v15 & 0x7F);
    v17 = ((v15 >> 7) ^ (_X10 >> 12)) & v3;
    v18 = *(_X10 + v17);
    v19 = vceq_s8(v18, v16);
    if (!v19)
    {
      goto LABEL_10;
    }

    do
    {
LABEL_5:
      v20 = (v17 + (__clz(__rbit64(v19)) >> 3)) & v3;
      v21 = (*(result + 24) + 16 * v20);
      if (*v21 == v12 && v21[1] == v13)
      {
        *a3 = _X10 + v20;
        *(a3 + 8) = v21;
        *(a3 + 16) = 0;
        return result;
      }

      v19 &= ((v19 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v19);
LABEL_10:
    while (1)
    {
      v23 = vceq_s8(v18, 0x8080808080808080);
      if (v23)
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

    v25 = result;
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v15, (v17 + (__clz(__rbit64(v23)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::GetPolicyFunctions(void)::value);
    v27 = *(v25 + 24) + 16 * result;
    *a3 = *(v25 + 16) + result;
    *(a3 + 8) = v27;
    *(a3 + 16) = 1;
  }

  else
  {
    if (*(result + 8) > 1uLL)
    {
      v4 = result + 16;
      if (*(result + 16) != *a2 || *(result + 20) != a2[1])
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::resize_impl(result, 3);
      }

      v5 = 0;
    }

    else
    {
      *(result + 8) = 2;
      v4 = result + 16;
      v5 = 1;
    }

    *a3 = &absl::lts_20240722::container_internal::kSooControl;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::resize_impl(uint64_t a1, uint64_t a2)
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

__n128 absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::transfer_slot_fn(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

void std::vector<operations_research::sat::ImpliedBoundEntry>::__append(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3) >= a2)
  {
    if (24 * a2)
    {
      v14 = v3 + 24 * a2;
      if (((a2 - 1) & 0x1FFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_36;
      }

      v15 = ((a2 - 1) & 0x1FFFFFFFFFFFFFFFLL) + 1;
      v16 = v3 + 24 * (v15 & 0x3FFFFFFFFFFFFFFELL);
      v17 = v3 + 24;
      v18 = v15 & 0x3FFFFFFFFFFFFFFELL;
      do
      {
        *(v17 - 24) = -1;
        *v17 = -1;
        *(v17 - 16) = 0;
        *(v17 + 8) = 0;
        *(v17 - 8) = 1;
        *(v17 + 16) = 1;
        v17 += 48;
        v18 -= 2;
      }

      while (v18);
      v3 = v16;
      if (v15 != (v15 & 0x3FFFFFFFFFFFFFFELL))
      {
LABEL_36:
        do
        {
          *v3 = -1;
          *(v3 + 8) = 0;
          *(v3 + 16) = 1;
          v3 += 24;
        }

        while (v3 != v14);
      }

      v3 = v14;
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

    v19 = 24 * v5;
    if (24 * a2)
    {
      v9 = v19 + 24 * a2;
      v10 = 24 * v5;
      if (((a2 - 1) & 0x1FFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_37;
      }

      v11 = ((a2 - 1) & 0x1FFFFFFFFFFFFFFFLL) + 1;
      v10 = v19 + 24 * (v11 & 0x3FFFFFFFFFFFFFFELL);
      v12 = 24 * v5 + 24;
      v13 = v11 & 0x3FFFFFFFFFFFFFFELL;
      do
      {
        *(v12 - 24) = -1;
        *v12 = -1;
        *(v12 - 16) = 0;
        *(v12 + 8) = 0;
        *(v12 - 8) = 1;
        *(v12 + 16) = 1;
        v12 += 48;
        v13 -= 2;
      }

      while (v13);
      if (v11 != (v11 & 0x3FFFFFFFFFFFFFFELL))
      {
LABEL_37:
        do
        {
          *v10 = -1;
          *(v10 + 8) = 0;
          *(v10 + 16) = 1;
          v10 += 24;
        }

        while (v10 != v9);
      }
    }

    else
    {
      v9 = 24 * v5;
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

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,absl::lts_20240722::flat_hash_map<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> const,absl::lts_20240722::flat_hash_map<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8) & 1;
  v5 = 0;
  v2 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,40ul,false,false,8ul>(&v2, a1);
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,absl::lts_20240722::flat_hash_map<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> const,absl::lts_20240722::flat_hash_map<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>>>>::transfer_slot_fn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::raw_hash_set((a2 + 8), (a3 + 8));
  if (*(a3 + 8) >= 2uLL)
  {
    v4 = (*(a3 + 24) - (*(a3 + 16) & 1) - 8);

    operator delete(v4);
  }
}

int64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::find_or_prepare_insert<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>@<X0>(int64_t result@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
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
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v14, (v16 + (__clz(__rbit64(v21)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::GetPolicyFunctions(void)::value);
    v24 = *(v22 + 24) + 16 * result;
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
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::resize_impl(result, 3);
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

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::resize_impl(uint64_t a1, uint64_t a2)
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
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,16ul,true,true,8ul>(&v7, a1);
}

unsigned __int8 *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,absl::lts_20240722::btree_map<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,absl::lts_20240722::btree_map<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>>>>,256,false>>::insert_unique<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::piecewise_construct_t const&,std::tuple<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const&>,std::tuple<>>@<X0>(unsigned __int8 *result@<X0>, int *a2@<X1>, uint64_t a3@<X2>, _DWORD **a4@<X3>, uint64_t a5@<X8>)
{
  if (!*(result + 2))
  {
    operator new();
  }

  v7 = *a2;
  v8 = *result;
  v9 = *(*result + 10);
  if (*(*result + 10))
  {
LABEL_4:
    v10 = 0;
    do
    {
      v11 = (v9 + v10) >> 1;
      if (*&v8[32 * v11 + 16] < v7)
      {
        v10 = v11 + 1;
      }

      else
      {
        v9 = (v9 + v10) >> 1;
      }
    }

    while (v10 != v9);
  }

  while (!v8[11])
  {
    v8 = *&v8[8 * v9 + 240];
    v9 = v8[10];
    if (v8[10])
    {
      goto LABEL_4;
    }
  }

  v12 = v9;
  v13 = v9;
  v14 = v8;
  while (v13 == v14[10])
  {
    v13 = v14[8];
    v14 = *v14;
    if (v14[11])
    {
      goto LABEL_17;
    }
  }

  if (v7 < *&v14[32 * v13 + 16])
  {
LABEL_17:
    result = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,absl::lts_20240722::btree_map<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,absl::lts_20240722::btree_map<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>>>>,256,false>>::internal_emplace<std::piecewise_construct_t const&,std::tuple<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const&>,std::tuple<>>(result, v8, v12, a3, a4);
    v14 = result;
    v15 = 1;
    v13 = v16;
    goto LABEL_19;
  }

  v15 = 0;
LABEL_19:
  *a5 = v14;
  *(a5 + 8) = v13;
  *(a5 + 16) = v15;
  return result;
}

unsigned __int8 *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,absl::lts_20240722::btree_map<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,absl::lts_20240722::btree_map<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>>>>,256,false>>::internal_emplace<std::piecewise_construct_t const&,std::tuple<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const&>,std::tuple<>>(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, _DWORD **a5)
{
  i = a2;
  v24 = a3;
  v7 = a2[11];
  if (!a2[11])
  {
    a2 = *&a2[8 * a3 + 240];
    for (i = a2; !a2[11]; i = a2)
    {
      a2 = *&a2[8 * a2[10] + 240];
    }

    LODWORD(v24) = a2[10];
    v7 = a2[11];
  }

  if (!v7)
  {
    v7 = 7;
  }

  if (a2[10] == v7)
  {
    if (v7 <= 6)
    {
      operator new();
    }

    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,absl::lts_20240722::btree_map<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,absl::lts_20240722::btree_map<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>>>>,256,false>>::rebalance_or_split(a1, &i);
  }

  v8 = i;
  v9 = v24;
  v10 = v24;
  v11 = i[10];
  if (v11 > v24)
  {
    v9 = v24;
    if (((v11 - v24) & 0x7FFFFFFFFFFFFFFLL) != 0)
    {
      v12 = 32 * v11;
      v13 = 32 * v24;
      v14 = i;
      do
      {
        v15 = &v14[v12];
        *(v15 + 4) = *&v14[v12 - 16];
        *(v15 + 24) = *&v14[v12 - 8];
        *(v15 + 5) = *&v14[v12 + 8];
        *(v15 - 1) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
        *v15 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
        *(v15 + 1) = 0;
        v14 -= 32;
        v13 += 32;
      }

      while (v12 != v13);
      LODWORD(v11) = v8[10];
    }
  }

  v16 = &v8[32 * v9];
  *(v16 + 4) = **a5;
  *(v16 + 3) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
  *(v16 + 4) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
  *(v16 + 5) = 0;
  v17 = v11 + 1;
  v8[10] = v11 + 1;
  if (!v8[11])
  {
    v18 = v10 + 1;
    if (v18 < v17)
    {
      v19 = v8 + 240;
      do
      {
        v20 = *&v19[8 * (v17 - 1)];
        *&v19[8 * v17] = v20;
        *(v20 + 8) = v17;
      }

      while (v18 < --v17);
    }
  }

  ++*(a1 + 16);
  return i;
}

void absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,absl::lts_20240722::btree_map<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,absl::lts_20240722::btree_map<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>>>>,256,false>>::rebalance_or_split(unsigned __int8 **a1, unsigned __int8 **a2)
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
        absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,absl::lts_20240722::btree_map<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,absl::lts_20240722::btree_map<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>>>>,256,false>>::rebalance_right_to_left(*(v4 + 8 * (v5 - 1) + 240), v9, v3);
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
      absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,absl::lts_20240722::btree_map<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,absl::lts_20240722::btree_map<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>>>>,256,false>>::rebalance_or_split(a1, &v24);
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

  absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,absl::lts_20240722::btree_map<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,absl::lts_20240722::btree_map<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>>>>,256,false>>::rebalance_left_to_right(v3, v16, *(v4 + 8 * (v5 + 1) + 240));
  v19 = *(a2 + 2);
  v20 = (*a2)[10];
  if (v19 > v20)
  {
    v23 = v19 + ~v20;
    goto LABEL_30;
  }
}

void absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,absl::lts_20240722::btree_map<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,absl::lts_20240722::btree_map<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>>>>,256,false>>::rebalance_right_to_left(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = a1 + 32 * *(a1 + 10);
  v7 = *a1 + 32 * *(a1 + 8);
  v8 = v7 + 16;
  *(v6 + 16) = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v7 + 24) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
  *(v6 + 24) = v9;
  v10 = *(v7 + 32);
  v7 += 32;
  *(v6 + 32) = v10;
  v11 = *(v7 + 8);
  *(v7 + 8) = 0;
  *(v6 + 40) = v11;
  *v7 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
  if (*(v7 + 8))
  {
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::clear_and_delete(*(v8 + 8));
  }

  *(v8 + 8) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
  *(v8 + 16) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
  *(v8 + 24) = 0;
  v12 = (a2 - 1);
  if ((v12 & 0x7FFFFFFFFFFFFFFLL) != 0)
  {
    v13 = 0;
    v14 = a1 + 32 * *(a1 + 10);
    do
    {
      v15 = a3 + v13;
      v16 = v14 + v13;
      *(v16 + 48) = *(a3 + v13 + 16);
      v17 = *(a3 + v13 + 24);
      *(v15 + 24) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
      *(v16 + 56) = v17;
      v18 = (a3 + v13 + 32);
      *(v16 + 64) = *v18;
      v19 = *(a3 + v13 + 40);
      *(v15 + 40) = 0;
      *(v16 + 72) = v19;
      *v18 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
      if (*(a3 + v13 + 40))
      {
        absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::clear_and_delete(*(v15 + 24));
      }

      *v18 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
      *(v15 + 24) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
      *(v15 + 40) = 0;
      v13 += 32;
    }

    while (32 * a2 - 32 != v13);
  }

  v20 = a3 + 32 * v12 + 16;
  v21 = *a1 + 32 * *(a1 + 8);
  *(v21 + 16) = *v20;
  v22 = *(a3 + 32 * v12 + 24);
  *(v20 + 8) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
  *(v21 + 24) = v22;
  v23 = (a3 + 32 * v12 + 32);
  *(v21 + 32) = *v23;
  v24 = *(a3 + 32 * v12 + 40);
  v23[1] = 0;
  *(v21 + 40) = v24;
  *v23 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
  if (*(a3 + 32 * v12 + 40))
  {
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::clear_and_delete(*(a3 + 32 * v12 + 24));
  }

  *(a3 + 32 * v12 + 24) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
  *(a3 + 32 * v12 + 32) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
  *(a3 + 32 * v12 + 40) = 0;
  v25 = *(a3 + 10);
  v26 = a2;
  if (((v25 - a2) & 0x7FFFFFFFFFFFFFFLL) != 0)
  {
    v27 = 0;
    v28 = a3 + 32 * a2;
    v29 = 32 * v25 - 32 * a2;
    do
    {
      v30 = v28 + v27;
      v31 = a3 + v27;
      *(v31 + 16) = *(v28 + v27 + 16);
      v32 = *(v28 + v27 + 24);
      *(v30 + 24) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
      v34 = (v28 + v27 + 32);
      v33 = *v34;
      *(v31 + 24) = v32;
      *(v31 + 32) = v33;
      v35 = *(v28 + v27 + 40);
      *(v30 + 40) = 0;
      *(v31 + 40) = v35;
      *v34 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
      if (*(v28 + v27 + 40))
      {
        absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::clear_and_delete(*(v30 + 24));
      }

      *v34 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
      *(v30 + 24) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
      *(v30 + 40) = 0;
      v27 += 32;
    }

    while (v29 != v27);
  }

  if (!*(a1 + 11))
  {
    if (a2)
    {
      v36 = (a3 + 240);
      v37 = 1;
      do
      {
        v38 = *(a1 + 10) + v37;
        v39 = *v36++;
        *(a1 + 240 + 8 * v38) = v39;
        *(v39 + 8) = v38;
        *v39 = a1;
        ++v37;
        --v26;
      }

      while (v26);
    }

    if (*(a3 + 10) >= a2)
    {
      v40 = 0;
      v41 = a3 + 240;
      do
      {
        v42 = *(v41 + 8 * (v40 + a2));
        *(v41 + 8 * v40) = v42;
        *(v42 + 8) = v40;
        *v42 = a3;
        ++v40;
      }

      while ((*(a3 + 10) - a2) >= v40);
    }
  }

  *(a1 + 10) += a2;
  *(a3 + 10) -= a2;
}

void absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,absl::lts_20240722::btree_map<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,absl::lts_20240722::btree_map<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>>>>,256,false>>::rebalance_left_to_right(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a3 + 10))
  {
    v6 = 0;
    v7 = 32 * *(a3 + 10);
    v8 = a3 + 32 * a2;
    v9 = a3;
    do
    {
      v10 = (v8 + v7);
      v11 = (v9 + v7);
      *(v10 - 4) = *(v9 + v7 - 16);
      v12 = *(v9 + v7 - 8);
      *(v11 - 1) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
      *(v10 - 1) = v12;
      *v10 = *(v9 + v7);
      v13 = *(v9 + v7 + 8);
      v11[1] = 0;
      v10[1] = v13;
      *v11 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
      if (*(v9 + v7 + 8))
      {
        absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::clear_and_delete(*(v11 - 1));
      }

      *(v9 + v7) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
      *(v11 - 1) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
      v11[1] = 0;
      v9 -= 32;
      v8 -= 32;
      v6 += 32;
    }

    while (v7 != v6);
  }

  v14 = a2 - 1;
  v15 = a3 + 16 + 32 * v14;
  v16 = *a1 + 32 * *(a1 + 8);
  v17 = v16 + 16;
  *v15 = *(v16 + 16);
  v18 = *(v16 + 24);
  *(v16 + 24) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
  *(v15 + 8) = v18;
  v19 = *(v16 + 32);
  v16 += 32;
  *(v15 + 16) = v19;
  v20 = *(v16 + 8);
  *(v16 + 8) = 0;
  *(v15 + 24) = v20;
  *v16 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
  if (*(v16 + 8))
  {
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::clear_and_delete(*(v17 + 8));
  }

  *(v17 + 8) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
  *(v17 + 16) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
  *(v17 + 24) = 0;
  v21 = *(a1 + 10);
  if ((v14 & 0x7FFFFFFFFFFFFFFLL) != 0)
  {
    v22 = 0;
    v23 = 32 * a2;
    v24 = v23 - 32;
    v25 = a1 - v23 + 32 * v21;
    do
    {
      v26 = a3 + 16 + v22;
      v27 = v25 + v22;
      *v26 = *(v25 + v22 + 48);
      v28 = *(v25 + v22 + 56);
      *(v27 + 56) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
      *(v26 + 8) = v28;
      v29 = (v25 + v22 + 64);
      *(v26 + 16) = *v29;
      v30 = *(v25 + v22 + 72);
      *(v27 + 72) = 0;
      *(v26 + 24) = v30;
      *v29 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
      if (*(v25 + v22 + 72))
      {
        absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::clear_and_delete(*(v27 + 56));
      }

      *v29 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
      *(v27 + 56) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
      *(v27 + 72) = 0;
      v22 += 32;
    }

    while (v24 != v22);
    LODWORD(v21) = *(a1 + 10);
  }

  v31 = *a1 + 32 * *(a1 + 8);
  v32 = a1 + 16 + 32 * (v21 - a2);
  *(v31 + 16) = *v32;
  v33 = *(v32 + 8);
  *(v32 + 8) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
  *(v31 + 24) = v33;
  *(v31 + 32) = *(v32 + 16);
  v34 = *(v32 + 24);
  *(v32 + 24) = 0;
  *(v31 + 40) = v34;
  *(v32 + 16) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
  if (*(v32 + 24))
  {
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::clear_and_delete(*(v32 + 8));
  }

  *(v32 + 8) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
  *(v32 + 16) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
  *(v32 + 24) = 0;
  if (!*(a1 + 11))
  {
    if (((*(a3 + 10) + 1) & 0x100) == 0)
    {
      v35 = a3 + 240;
      v36 = (*(a3 + 10) + 1);
      do
      {
        v37 = *(v35 + 8 * (v36 - 1));
        *(v35 + 8 * (v36 - 1 + a2)) = v37;
        *(v37 + 8) = v36 - 1 + a2;
        *v37 = a3;
        --v36;
      }

      while (v36);
    }

    if (a2)
    {
      v38 = 0;
      if ((a2 + 1) <= 2u)
      {
        v39 = 2;
      }

      else
      {
        v39 = (a2 + 1);
      }

      v40 = v39 - 1;
      do
      {
        v41 = *(a1 + 240 + 8 * (v38 + 1 - a2 + *(a1 + 10)));
        *(a3 + 8 * v38 + 240) = v41;
        *(v41 + 8) = v38;
        *v41 = a3;
        ++v38;
      }

      while (v40 != v38);
    }
  }

  *(a1 + 10) -= a2;
  *(a3 + 10) += a2;
}

void absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,absl::lts_20240722::btree_map<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,absl::lts_20240722::btree_map<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>>>>,256,false>>::split(unsigned __int8 *a1, int a2, uint64_t a3)
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
  if (*(a3 + 10))
  {
    v7 = 0;
    v8 = 32 * *(a3 + 10);
    v9 = &a1[32 * v6];
    do
    {
      v10 = a3 + 16 + v7;
      v11 = &v9[v7];
      *v10 = *&v9[v7 + 16];
      v12 = *&v9[v7 + 24];
      *(v11 + 3) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
      *(v10 + 8) = v12;
      v13 = &v9[v7 + 32];
      *(v10 + 16) = *v13;
      v14 = *&v9[v7 + 40];
      *(v11 + 5) = 0;
      *(v10 + 24) = v14;
      *v13 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
      if (*&v9[v7 + 40])
      {
        absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::clear_and_delete(*(v11 + 3));
      }

      *v13 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
      *(v11 + 3) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
      *(v11 + 5) = 0;
      v7 += 32;
    }

    while (v8 != v7);
    v6 = a1[10];
  }

  v15 = v6 - 1;
  a1[10] = v6 - 1;
  v16 = *a1;
  v17 = a1[8];
  v18 = &a1[32 * v15 + 16];
  v19 = *(*a1 + 10);
  if (v19 > v17 && ((v19 - v17) & 0x7FFFFFFFFFFFFFFLL) != 0)
  {
    v20 = 32 * *(*a1 + 10);
    v21 = 32 * v17;
    v22 = *a1;
    do
    {
      v23 = v22 + v20;
      *(v23 + 16) = *(v22 + v20 - 16);
      *(v23 + 24) = *(v22 + v20 - 8);
      *(v23 + 40) = *(v22 + v20 + 8);
      *(v23 - 8) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
      *v23 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
      *(v23 + 8) = 0;
      v22 -= 32;
      v21 += 32;
    }

    while (v20 != v21);
  }

  v24 = v16 + 32 * v17;
  *(v24 + 16) = *v18;
  v25 = *(v18 + 8);
  *(v18 + 8) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
  *(v24 + 24) = v25;
  *(v24 + 32) = *(v18 + 16);
  v26 = *(v18 + 24);
  *(v18 + 24) = 0;
  *(v24 + 40) = v26;
  *(v18 + 16) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
  v27 = (*(v16 + 10))++ + 1;
  if (!*(v16 + 11))
  {
    v28 = v17 + 1;
    if (v28 < v27)
    {
      v29 = v16 + 240;
      do
      {
        v30 = *(v29 + 8 * (v27 - 1));
        *(v29 + 8 * v27) = v30;
        *(v30 + 8) = v27;
      }

      while (v28 < --v27);
    }
  }

  v32 = &a1[32 * a1[10] + 16];
  if (*(v32 + 24))
  {
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::clear_and_delete(*(v32 + 8));
  }

  *(v32 + 8) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
  *(v32 + 16) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::ValueLiteralPair>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
  *(v32 + 24) = 0;
  *(*a1 + 8 * (a1[8] + 1) + 240) = a3;
  v33 = a1[11];
  if (!a1[11])
  {
    v34 = a1[10];
    do
    {
      v35 = *&a1[8 * ++v34 + 240];
      *(a3 + 240 + 8 * v33) = v35;
      *(v35 + 8) = v33;
      *v35 = a3;
      ++v33;
    }

    while (*(a3 + 10) >= v33);
  }
}

char *std::vector<operations_research::sat::ValueLiteralPair>::__assign_with_size[abi:ne200100]<operations_research::sat::ValueLiteralPair*,operations_research::sat::ValueLiteralPair*>(char **a1, char *a2, _BYTE *a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 4)
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

    if (!(a4 >> 60))
    {
      v9 = v6 >> 3;
      if (v6 >> 3 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF0;
      v11 = 0xFFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 60))
      {
        operator new();
      }
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 4)
  {
    v16 = a3 - a2;
    if (a3 != a2)
    {
      v17 = result;
      memmove(result, a2, v16 - 4);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13 - 4);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15 - 4);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

uint64_t *absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>,std::vector<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>,absl::lts_20240722::hash_internal::Hash<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::equal_to<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::allocator<std::pair<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul> const,std::vector<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>>>::try_emplace_impl<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>@<X0>(uint64_t *result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  _X10 = result[2];
  __asm { PRFM            #4, [X10] }

  v10 = *a2;
  v11 = a2[1];
  v12 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v10) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v10))) + v11;
  v13 = ((v12 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v12);
  v14 = *result;
  v15 = vdup_n_s8(v13 & 0x7F);
  v16 = ((v13 >> 7) ^ (_X10 >> 12)) & *result;
  v17 = *(_X10 + v16);
  v18 = vceq_s8(v17, v15);
  if (v18)
  {
    while (1)
    {
LABEL_2:
      v19 = (v16 + (__clz(__rbit64(v18)) >> 3)) & v14;
      v20 = (result[3] + 32 * v19);
      v21 = *v20 == v10;
      if (*v20 == v10)
      {
        v21 = v20[1] == v11;
      }

      if (v21)
      {
        break;
      }

      v18 &= ((v18 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v18)
      {
        goto LABEL_6;
      }
    }

    *a3 = _X10 + v19;
    *(a3 + 8) = v20;
    *(a3 + 16) = 0;
  }

  else
  {
LABEL_6:
    while (1)
    {
      v22 = vceq_s8(v17, 0x8080808080808080);
      if (v22)
      {
        break;
      }

      v3 += 8;
      v16 = (v3 + v16) & v14;
      v17 = *(_X10 + v16);
      v18 = vceq_s8(v17, v15);
      if (v18)
      {
        goto LABEL_2;
      }
    }

    v23 = result;
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v13, (v16 + (__clz(__rbit64(v22)) >> 3)) & v14, v3, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>,std::vector<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>,absl::lts_20240722::hash_internal::Hash<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::equal_to<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::allocator<std::pair<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul> const,std::vector<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>>>::GetPolicyFunctions(void)::value);
    v26 = (v23[3] + 32 * result);
    *a3 = result + v23[2];
    *(a3 + 8) = v26;
    *(a3 + 16) = 1;
    v27 = *a2;
    v26[2] = 0;
    v26[3] = 0;
    *v26 = v27;
    v26[1] = 0;
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>,std::vector<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>,absl::lts_20240722::hash_internal::Hash<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::equal_to<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::allocator<std::pair<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul> const,std::vector<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8) & 1;
  v5 = 0;
  v2 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,32ul,false,false,8ul>(&v2, a1);
}

__n128 absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>,std::vector<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>,absl::lts_20240722::hash_internal::Hash<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::equal_to<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::allocator<std::pair<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul> const,std::vector<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>>>::transfer_slot_fn(uint64_t a1, void *a2, uint64_t a3)
{
  *a2 = *a3;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  result = *(a3 + 8);
  *(a2 + 1) = result;
  a2[3] = *(a3 + 24);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  return result;
}

uint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,3ul>,std::bitset<3ul>>,absl::lts_20240722::hash_internal::Hash<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,3ul>>,std::equal_to<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,3ul>>,std::allocator<std::pair<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,3ul> const,std::bitset<3ul>>>>::find_or_prepare_insert_non_soo<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,3ul>>@<X0>(uint64_t *result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  _X9 = result[2];
  __asm { PRFM            #4, [X9] }

  v10 = *a2;
  v11 = a2[1];
  v12 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v10) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v10))) + v11;
  v13 = a2[2];
  v14 = (((v12 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v12)) + v13;
  v15 = ((v14 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v14);
  v16 = *result;
  v17 = vdup_n_s8(v15 & 0x7F);
  v18 = ((v15 >> 7) ^ (_X9 >> 12)) & *result;
  v19 = *(_X9 + v18);
  v20 = vceq_s8(v19, v17);
  if (v20)
  {
    while (1)
    {
LABEL_2:
      v21 = (v18 + (__clz(__rbit64(v20)) >> 3)) & v16;
      v22 = (result[3] + 24 * v21);
      v23 = *v22 == v10;
      if (*v22 == v10)
      {
        v23 = v22[1] == v11;
        if (v22[1] == v11)
        {
          v23 = v22[2] == v13;
        }
      }

      if (v23)
      {
        break;
      }

      v20 &= ((v20 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v20)
      {
        goto LABEL_7;
      }
    }

    *a3 = _X9 + v21;
    *(a3 + 8) = v22;
    *(a3 + 16) = 0;
  }

  else
  {
LABEL_7:
    while (1)
    {
      v24 = vceq_s8(v19, 0x8080808080808080);
      if (v24)
      {
        break;
      }

      v3 += 8;
      v18 = (v3 + v18) & v16;
      v19 = *(_X9 + v18);
      v20 = vceq_s8(v19, v17);
      if (v20)
      {
        goto LABEL_2;
      }
    }

    v25 = result;
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v15, (v18 + (__clz(__rbit64(v24)) >> 3)) & v16, v3, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,3ul>,std::bitset<3ul>>,absl::lts_20240722::hash_internal::Hash<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,3ul>>,std::equal_to<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,3ul>>,std::allocator<std::pair<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,3ul> const,std::bitset<3ul>>>>::GetPolicyFunctions(void)::value);
    v27 = v25[3] + 24 * result;
    *a3 = result + v25[2];
    *(a3 + 8) = v27;
    *(a3 + 16) = 1;
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,3ul>,std::bitset<3ul>>,absl::lts_20240722::hash_internal::Hash<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,3ul>>,std::equal_to<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,3ul>>,std::allocator<std::pair<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,3ul> const,std::bitset<3ul>>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8) & 1;
  v5 = 0;
  v2 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,24ul,true,false,8ul>(&v2, a1);
}

uint64_t absl::lts_20240722::container_internal::TypeErasedApplyToSlotFn<absl::lts_20240722::hash_internal::Hash<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,3ul>>,std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,3ul>>(uint64_t a1, unsigned int *a2)
{
  v2 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2))) + a2[1];
  v3 = (((v2 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v2)) + a2[2];
  return ((v3 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v3);
}

unint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,absl::lts_20240722::hash_internal::Hash<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::equal_to<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::allocator<std::pair<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul> const,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>>::find_or_prepare_insert<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>@<X0>(unint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if (*result > 1uLL)
  {
    v6 = 0;
    _X10 = *(result + 16);
    __asm { PRFM            #4, [X10] }

    v13 = *a2;
    v14 = a2[1];
    v15 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v13) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v13))) + v14;
    v16 = ((v15 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v15);
    v17 = vdup_n_s8(v16 & 0x7F);
    v18 = ((v16 >> 7) ^ (_X10 >> 12)) & v3;
    v19 = *(_X10 + v18);
    v20 = vceq_s8(v19, v17);
    if (!v20)
    {
      goto LABEL_9;
    }

    do
    {
LABEL_5:
      v21 = (v18 + (__clz(__rbit64(v20)) >> 3)) & v3;
      v22 = (*(result + 24) + 12 * v21);
      v23 = *v22 == v13;
      if (*v22 == v13)
      {
        v23 = v22[1] == v14;
      }

      if (v23)
      {
        *a3 = _X10 + v21;
        *(a3 + 8) = v22;
        *(a3 + 16) = 0;
        return result;
      }

      v20 &= ((v20 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v20);
LABEL_9:
    while (1)
    {
      v24 = vceq_s8(v19, 0x8080808080808080);
      if (v24)
      {
        break;
      }

      v6 += 8;
      v18 = (v6 + v18) & v3;
      v19 = *(_X10 + v18);
      v20 = vceq_s8(v19, v17);
      if (v20)
      {
        goto LABEL_5;
      }
    }

    v26 = result;
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v16, (v18 + (__clz(__rbit64(v24)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,absl::lts_20240722::hash_internal::Hash<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::equal_to<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::allocator<std::pair<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul> const,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>>::GetPolicyFunctions(void)::value);
    v28 = *(v26 + 24) + 12 * result;
    *a3 = *(v26 + 16) + result;
    *(a3 + 8) = v28;
    *(a3 + 16) = 1;
  }

  else
  {
    if (*(result + 8) > 1uLL)
    {
      v4 = result + 16;
      v25 = *(result + 16) == *a2;
      if (*(result + 16) == *a2)
      {
        v25 = *(result + 20) == a2[1];
      }

      if (!v25)
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,absl::lts_20240722::hash_internal::Hash<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::equal_to<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::allocator<std::pair<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul> const,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>>::resize_impl(result, 3);
      }

      v5 = 0;
    }

    else
    {
      *(result + 8) = 2;
      v4 = result + 16;
      v5 = 1;
    }

    *a3 = &absl::lts_20240722::container_internal::kSooControl;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,absl::lts_20240722::hash_internal::Hash<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::equal_to<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::allocator<std::pair<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul> const,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>>::resize_impl(uint64_t a1, uint64_t a2)
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
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,12ul,true,true,4ul>(&v7, a1);
}

unint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,absl::lts_20240722::hash_internal::Hash<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::equal_to<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::allocator<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>>::find_or_prepare_insert<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>@<X0>(unint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if (*result > 1uLL)
  {
    v6 = 0;
    _X10 = *(result + 16);
    __asm { PRFM            #4, [X10] }

    v13 = *a2;
    v14 = a2[1];
    v15 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v13) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v13))) + v14;
    v16 = ((v15 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v15);
    v17 = vdup_n_s8(v16 & 0x7F);
    v18 = ((v16 >> 7) ^ (_X10 >> 12)) & v3;
    v19 = *(_X10 + v18);
    v20 = vceq_s8(v19, v17);
    if (!v20)
    {
      goto LABEL_9;
    }

    do
    {
LABEL_5:
      v21 = (v18 + (__clz(__rbit64(v20)) >> 3)) & v3;
      v22 = (*(result + 24) + 8 * v21);
      v23 = *v22 == v13;
      if (*v22 == v13)
      {
        v23 = v22[1] == v14;
      }

      if (v23)
      {
        *a3 = _X10 + v21;
        *(a3 + 8) = v22;
        *(a3 + 16) = 0;
        return result;
      }

      v20 &= ((v20 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v20);
LABEL_9:
    while (1)
    {
      v24 = vceq_s8(v19, 0x8080808080808080);
      if (v24)
      {
        break;
      }

      v6 += 8;
      v18 = (v6 + v18) & v3;
      v19 = *(_X10 + v18);
      v20 = vceq_s8(v19, v17);
      if (v20)
      {
        goto LABEL_5;
      }
    }

    v26 = result;
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v16, (v18 + (__clz(__rbit64(v24)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,absl::lts_20240722::hash_internal::Hash<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::equal_to<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::allocator<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>>::GetPolicyFunctions(void)::value);
    v28 = *(v26 + 24) + 8 * result;
    *a3 = *(v26 + 16) + result;
    *(a3 + 8) = v28;
    *(a3 + 16) = 1;
  }

  else
  {
    if (*(result + 8) > 1uLL)
    {
      v4 = result + 16;
      v25 = *(result + 16) == *a2;
      if (*(result + 16) == *a2)
      {
        v25 = *(result + 20) == a2[1];
      }

      if (!v25)
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,absl::lts_20240722::hash_internal::Hash<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::equal_to<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::allocator<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>>::resize_impl(result, 3);
      }

      v5 = 0;
    }

    else
    {
      *(result + 8) = 2;
      v4 = result + 16;
      v5 = 1;
    }

    *a3 = &absl::lts_20240722::container_internal::kSooControl;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,absl::lts_20240722::hash_internal::Hash<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::equal_to<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>,std::allocator<std::array<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,2ul>>>::resize_impl(uint64_t a1, uint64_t a2)
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
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,8ul,true,true,4ul>(&v7, a1);
}

unint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::find_or_prepare_insert<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>@<X0>(unint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if (*result > 1uLL)
  {
    v6 = 0;
    _X10 = *(result + 16);
    __asm { PRFM            #4, [X10] }

    v12 = *a2;
    v13 = a2[1];
    v14 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v12) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v12))) + v13;
    v15 = ((v14 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v14);
    v16 = vdup_n_s8(v15 & 0x7F);
    v17 = ((v15 >> 7) ^ (_X10 >> 12)) & v3;
    v18 = *(_X10 + v17);
    v19 = vceq_s8(v18, v16);
    if (!v19)
    {
      goto LABEL_10;
    }

    do
    {
LABEL_5:
      v20 = (v17 + (__clz(__rbit64(v19)) >> 3)) & v3;
      v21 = (*(result + 24) + 12 * v20);
      if (*v21 == v12 && v21[1] == v13)
      {
        *a3 = _X10 + v20;
        *(a3 + 8) = v21;
        *(a3 + 16) = 0;
        return result;
      }

      v19 &= ((v19 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v19);
LABEL_10:
    while (1)
    {
      v23 = vceq_s8(v18, 0x8080808080808080);
      if (v23)
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

    v25 = result;
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v15, (v17 + (__clz(__rbit64(v23)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::GetPolicyFunctions(void)::value);
    v27 = *(v25 + 24) + 12 * result;
    *a3 = *(v25 + 16) + result;
    *(a3 + 8) = v27;
    *(a3 + 16) = 1;
  }

  else
  {
    if (*(result + 8) > 1uLL)
    {
      v4 = result + 16;
      if (*(result + 16) != *a2 || *(result + 20) != a2[1])
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::resize_impl(result, 3);
      }

      v5 = 0;
    }

    else
    {
      *(result + 8) = 2;
      v4 = result + 16;
      v5 = 1;
    }

    *a3 = &absl::lts_20240722::container_internal::kSooControl;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::resize_impl(uint64_t a1, uint64_t a2)
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
  if (v5)
  {
    *&v7 = *(a1 + 16);
    DWORD2(v7) = *(a1 + 24);
  }

  else
  {
    v7 = *(a1 + 16);
  }

  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,12ul,false,true,4ul>(&v7, a1);
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::transfer_slot_fn(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  *(a2 + 8) = *(a3 + 2);
  *a2 = v3;
}

uint64_t *absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>>::try_emplace_impl<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>@<X0>(uint64_t *result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  _X10 = result[2];
  __asm { PRFM            #4, [X10] }

  v9 = *a2;
  v10 = a2[1];
  v11 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v9) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v9))) + v10;
  v12 = ((v11 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v11);
  v13 = *result;
  v14 = vdup_n_s8(v12 & 0x7F);
  v15 = ((v12 >> 7) ^ (_X10 >> 12)) & *result;
  v16 = *(_X10 + v15);
  v17 = vceq_s8(v16, v14);
  if (v17)
  {
LABEL_2:
    while (1)
    {
      v18 = (v15 + (__clz(__rbit64(v17)) >> 3)) & v13;
      v19 = (result[3] + 32 * v18);
      if (*v19 == v9 && v19[1] == v10)
      {
        break;
      }

      v17 &= ((v17 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v17)
      {
        goto LABEL_7;
      }
    }

    *a3 = _X10 + v18;
    *(a3 + 8) = v19;
    *(a3 + 16) = 0;
  }

  else
  {
LABEL_7:
    while (1)
    {
      v21 = vceq_s8(v16, 0x8080808080808080);
      if (v21)
      {
        break;
      }

      v3 += 8;
      v15 = (v3 + v15) & v13;
      v16 = *(_X10 + v15);
      v17 = vceq_s8(v16, v14);
      if (v17)
      {
        goto LABEL_2;
      }
    }

    v22 = result;
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v12, (v15 + (__clz(__rbit64(v21)) >> 3)) & v13, v3, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>>::GetPolicyFunctions(void)::value);
    v25 = (v22[3] + 32 * result);
    *a3 = result + v22[2];
    *(a3 + 8) = v25;
    *(a3 + 16) = 1;
    v26 = *a2;
    v25[2] = 0;
    v25[3] = 0;
    *v25 = v26;
    v25[1] = 0;
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8) & 1;
  v5 = 0;
  v2 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,32ul,false,false,8ul>(&v2, a1);
}

__n128 absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>>::transfer_slot_fn(uint64_t a1, void *a2, uint64_t a3)
{
  *a2 = *a3;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  result = *(a3 + 8);
  *(a2 + 1) = result;
  a2[3] = *(a3 + 24);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  return result;
}

unint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::find_or_prepare_insert<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>@<X0>(unint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if (*result > 1uLL)
  {
    v6 = 0;
    _X10 = *(result + 16);
    __asm { PRFM            #4, [X10] }

    v12 = *a2;
    v13 = a2[1];
    v14 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v12) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v12))) + v13;
    v15 = ((v14 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v14);
    v16 = vdup_n_s8(v15 & 0x7F);
    v17 = ((v15 >> 7) ^ (_X10 >> 12)) & v3;
    v18 = *(_X10 + v17);
    v19 = vceq_s8(v18, v16);
    if (!v19)
    {
      goto LABEL_10;
    }

    do
    {
LABEL_5:
      v20 = (v17 + (__clz(__rbit64(v19)) >> 3)) & v3;
      v21 = (*(result + 24) + 8 * v20);
      if (*v21 == v12 && v21[1] == v13)
      {
        *a3 = _X10 + v20;
        *(a3 + 8) = v21;
        *(a3 + 16) = 0;
        return result;
      }

      v19 &= ((v19 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v19);
LABEL_10:
    while (1)
    {
      v23 = vceq_s8(v18, 0x8080808080808080);
      if (v23)
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

    v25 = result;
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v15, (v17 + (__clz(__rbit64(v23)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::GetPolicyFunctions(void)::value);
    v27 = *(v25 + 24) + 8 * result;
    *a3 = *(v25 + 16) + result;
    *(a3 + 8) = v27;
    *(a3 + 16) = 1;
  }

  else
  {
    if (*(result + 8) > 1uLL)
    {
      v4 = result + 16;
      if (*(result + 16) != *a2 || *(result + 20) != a2[1])
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::resize_impl(result, 3);
      }

      v5 = 0;
    }

    else
    {
      *(result + 8) = 2;
      v4 = result + 16;
      v5 = 1;
    }

    *a3 = &absl::lts_20240722::container_internal::kSooControl;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *a1 < 2uLL && v3 > 1;
  if (v5)
  {
    v6 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(a1 + 16)) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(a1 + 16)))) + *(a1 + 20);
  }

  v9[2] = *a1;
  v10 = v3 & 1;
  v11 = v2 < 2;
  v12 = v5;
  v7 = *(a1 + 16);
  if (v5)
  {
    v9[0] = *(a1 + 16);
  }

  else
  {
    v8 = *(a1 + 24);
    v9[0] = *(a1 + 16);
    v9[1] = v8;
  }

  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,8ul,false,true,4ul>(v9, a1);
}

unint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::find_or_prepare_insert<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>@<X0>(unint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if (*result > 1uLL)
  {
    v6 = 0;
    _X10 = *(result + 16);
    __asm { PRFM            #4, [X10] }

    v12 = *a2;
    v13 = a2[1];
    v14 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v12) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v12))) + v13;
    v15 = ((v14 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v14);
    v16 = vdup_n_s8(v15 & 0x7F);
    v17 = ((v15 >> 7) ^ (_X10 >> 12)) & v3;
    v18 = *(_X10 + v17);
    v19 = vceq_s8(v18, v16);
    if (!v19)
    {
      goto LABEL_10;
    }

    do
    {
LABEL_5:
      v20 = (v17 + (__clz(__rbit64(v19)) >> 3)) & v3;
      v21 = (*(result + 24) + 12 * v20);
      if (*v21 == v12 && v21[1] == v13)
      {
        *a3 = _X10 + v20;
        *(a3 + 8) = v21;
        *(a3 + 16) = 0;
        return result;
      }

      v19 &= ((v19 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v19);
LABEL_10:
    while (1)
    {
      v23 = vceq_s8(v18, 0x8080808080808080);
      if (v23)
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

    v25 = result;
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v15, (v17 + (__clz(__rbit64(v23)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::GetPolicyFunctions(void)::value);
    v27 = *(v25 + 24) + 12 * result;
    *a3 = *(v25 + 16) + result;
    *(a3 + 8) = v27;
    *(a3 + 16) = 1;
  }

  else
  {
    if (*(result + 8) > 1uLL)
    {
      v4 = result + 16;
      if (*(result + 16) != *a2 || *(result + 20) != a2[1])
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::resize_impl(result, 3);
      }

      v5 = 0;
    }

    else
    {
      *(result + 8) = 2;
      v4 = result + 16;
      v5 = 1;
    }

    *a3 = &absl::lts_20240722::container_internal::kSooControl;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::resize_impl(uint64_t a1, uint64_t a2)
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
  if (v5)
  {
    *&v7 = *(a1 + 16);
    DWORD2(v7) = *(a1 + 24);
  }

  else
  {
    v7 = *(a1 + 16);
  }

  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,12ul,false,true,4ul>(&v7, a1);
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::transfer_slot_fn(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  *(a2 + 8) = *(a3 + 2);
  *a2 = v3;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8) & 1;
  v5 = 0;
  v2 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,32ul,false,false,8ul>(&v2, a1);
}

__n128 absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>>::transfer_slot_fn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  result = *(a3 + 8);
  *(a2 + 8) = result;
  *(a2 + 24) = *(a3 + 24);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  return result;
}

uint64_t *operations_research::sat::NegationOf@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  v4 = result[1];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (v4 != v3)
  {
    if (((v4 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void operations_research::sat::IntegerEncoder::FullyEncodeVariable(uint64_t a1, int a2)
{
  if (!operations_research::sat::IntegerEncoder::VariableIsFullyEncoded(a1, a2))
  {
    v4 = *(*a1 + 296);
    if (v4)
    {
      operations_research::sat::IntegerEncoder::FullyEncodeVariable(v4);
    }

    if (operations_research::Domain::IsEmpty((**(a1 + 24) + 24 * (a2 >> 1))))
    {
      operations_research::sat::IntegerEncoder::FullyEncodeVariable(v21);
    }

    v5 = a2 >> 1;
    v6 = operations_research::Domain::Size((**(a1 + 24) + 24 * v5));
    if (v6 >= 100000)
    {
      absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v6, 100000, "domains_[index].Size() < 100000");
    }

    *(a1 + 344) = *(a1 + 336);
    v7 = (**(a1 + 24) + 24 * v5);
    v8 = *v7;
    if (*v7 > 1)
    {
      v15 = (v7 + 1);
      v14 = v7[1];
      if (v8)
      {
        v15 = v7[1];
      }

      v9 = *v15;
      v16 = (v7 + 1);
      if (v8)
      {
        v13 = v14;
      }

      else
      {
        v13 = v16;
      }

      if ((v8 & 0x1FFFFFFFFFFFFFFELL) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v9 = 0;
      v12 = v7[1];
      v10 = (v7 + 1);
      v11 = v12;
      if (v8)
      {
        v13 = v11;
      }

      else
      {
        v13 = v10;
      }

      if ((v8 & 0x1FFFFFFFFFFFFFFELL) == 0)
      {
LABEL_25:
        *(*(a1 + 304) + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << (a2 >> 1);
        return;
      }
    }

    v17 = &v13[2 * (v8 >> 1)];
    do
    {
      v21[0] = v9;
      std::vector<long long>::push_back[abi:ne200100](a1 + 336, v21);
      if (v9 == v13[1])
      {
        v13 += 2;
        if (v13 != v17)
        {
          v9 = *v13;
        }
      }

      else
      {
        ++v9;
      }
    }

    while (v13 != v17);
    v18 = *(a1 + 336);
    v19 = *(a1 + 344);
    while (v18 != v19)
    {
      v20 = *v18++;
      operations_research::sat::IntegerEncoder::GetOrCreateLiteralAssociatedToEquality(a1, a2 & 0xFFFFFFFE, v20);
    }

    goto LABEL_25;
  }
}

BOOL operations_research::sat::IntegerEncoder::VariableIsFullyEncoded(uint64_t a1, int a2)
{
  if (a2 / 2 >= *(a1 + 312))
  {
    return 0;
  }

  v2 = a2 / 2;
  v3 = (a2 / 2) >> 6;
  v4 = 1;
  v5 = 1 << (a2 / 2);
  if ((*(*(a1 + 304) + 8 * v3) & v5) == 0)
  {
    if (operations_research::Domain::Size((**(a1 + 24) + 24 * v2)) > *(*(a1 + 280) + 40 * v2) >> 1)
    {
      return 0;
    }

    operations_research::sat::IntegerEncoder::PartialDomainEncoding(a1, a2 & 0xFFFFFFFE);
    v9 = (*(a1 + 280) + 40 * v2);
    v10 = (**(a1 + 24) + 24 * v2);
    v11 = *v10;
    if (*v10 > 1)
    {
      v21 = (v10 + 1);
      v14 = v10[1];
      if (v11)
      {
        v21 = v10[1];
      }

      v12 = *v21;
      v22 = (v10 + 1);
      if ((v11 & 1) == 0)
      {
        v14 = v22;
      }

      v16 = *v9;
      if ((v11 & 0x1FFFFFFFFFFFFFFELL) != 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v12 = 0;
      v15 = v10[1];
      v13 = (v10 + 1);
      v14 = v15;
      if (!v11)
      {
        v14 = v13;
      }

      v16 = *v9;
      if ((v11 & 0x1FFFFFFFFFFFFFFELL) != 0)
      {
LABEL_10:
        v17 = &v14[2 * (v11 >> 1)];
        v18 = v16 >> 1;
        v19 = v9 + 1;
        v20 = 0;
        if (v16)
        {
          do
          {
            if (v18 > v20 && *(*v19 + 16 * v20) == v12)
            {
              ++v20;
            }

            if (v12 == v14[1])
            {
              v14 += 2;
              if (v14 != v17)
              {
                v12 = *v14;
              }
            }

            else
            {
              ++v12;
            }
          }

          while (v14 != v17);
        }

        else
        {
          do
          {
            if (v18 > v20 && v19[2 * v20] == v12)
            {
              ++v20;
            }

            if (v12 == v14[1])
            {
              v14 += 2;
              if (v14 != v17)
              {
                v12 = *v14;
              }
            }

            else
            {
              ++v12;
            }
          }

          while (v14 != v17);
        }

        goto LABEL_34;
      }
    }

    v20 = 0;
LABEL_34:
    v23 = *(a1 + 304);
    v24 = *(v23 + 8 * v3);
    if (v20 == v16 >> 1)
    {
      v24 |= v5;
      *(v23 + 8 * v3) = v24;
    }

    return (v24 & v5) != 0;
  }

  return v4;
}

uint64_t operations_research::sat::IntegerEncoder::GetOrCreateLiteralAssociatedToEquality(uint64_t a1, int a2, uint64_t a3)
{
  v4 = 0;
  v6 = (a2 / 2);
  if (a2)
  {
    v7 = -a3;
  }

  else
  {
    v7 = a3;
  }

  _X10 = *(a1 + 264);
  __asm { PRFM            #4, [X10] }

  v13 = v7 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v6) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v6)));
  v14 = ((v13 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v13);
  v15 = *(a1 + 248);
  v16 = vdup_n_s8(v14 & 0x7F);
  v17 = ((v14 >> 7) ^ (_X10 >> 12)) & v15;
  v18 = *(_X10 + v17);
  v19 = vceq_s8(v18, v16);
  if (v19)
  {
LABEL_5:
    do
    {
      v20 = *(a1 + 272) + 24 * ((v17 + (__clz(__rbit64(v19)) >> 3)) & v15);
      if (*v20 == v6 && *(v20 + 8) == v7)
      {
        return *(v20 + 16);
      }

      v19 &= ((v19 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v19);
  }

  while (!*&vceq_s8(v18, 0x8080808080808080))
  {
    v4 += 8;
    v17 = (v4 + v17) & v15;
    v18 = *(_X10 + v17);
    v19 = vceq_s8(v18, v16);
    if (v19)
    {
      goto LABEL_5;
    }
  }

  v25 = (**(a1 + 24) + 24 * v6);
  if (operations_research::Domain::Contains(v25, v7))
  {
    if (operations_research::Domain::IsFixed(v25))
    {
      v26 = *(a1 + 328);
      if (v26 == -1)
      {
        v27 = *(*a1 + 16);
        operations_research::sat::SatSolver::SetNumVariables(*a1, v27 + 1);
        *(a1 + 328) = 2 * v27;
        operations_research::sat::SatSolver::AddUnitClause(*a1, 2 * v27);
        v26 = *(a1 + 328);
      }

      operations_research::sat::IntegerEncoder::AssociateToIntegerEqualValue(a1, v26, a2, a3);
      v22 = *(a1 + 328);
      if (v22 == -1)
      {
        v28 = *(*a1 + 16);
        operations_research::sat::SatSolver::SetNumVariables(*a1, v28 + 1);
        *(a1 + 328) = 2 * v28;
        operations_research::sat::SatSolver::AddUnitClause(*a1, 2 * v28);
        return *(a1 + 328);
      }

      return v22;
    }

    ++*(a1 + 40);
    v31 = *(*a1 + 16);
    operations_research::sat::SatSolver::SetNumVariables(*a1, v31 + 1);
    v22 = (2 * v31);
    operations_research::sat::IntegerEncoder::AssociateToIntegerEqualValue(a1, v22, a2, a3);
    if (((*(*(*(*a1 + 216) + 24) + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v22 & 0x3E)) & 3) == 0 || dword_27E25CFE8 < 1 || !absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::IntegerEncoder::GetOrCreateLiteralAssociatedToEquality(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_0::operator() const(void)::site, dword_27E25CFE8))
    {
      return v22;
    }

    absl::lts_20240722::log_internal::LogMessage::LogMessage(v33, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/integer.cc", 359);
    v32 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v33, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v32, "Created a fixed literal for no reason!", 0x26uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v33);
    return v22;
  }

  else
  {
    v29 = *(a1 + 328);
    if (v29 == -1)
    {
      v30 = *(*a1 + 16);
      operations_research::sat::SatSolver::SetNumVariables(*a1, v30 + 1);
      *(a1 + 328) = 2 * v30;
      operations_research::sat::SatSolver::AddUnitClause(*a1, 2 * v30);
      v29 = *(a1 + 328);
    }

    return v29 ^ 1u;
  }
}

uint64_t operations_research::sat::IntegerEncoder::PartialDomainEncoding(uint64_t a1, int a2)
{
  v2 = a2;
  v4 = a2 / 2;
  v5 = *(a1 + 280);
  if (a2 / 2 >= (-858993459 * ((*(a1 + 288) - v5) >> 3)))
  {
    *(a1 + 392) = *(a1 + 384);
    return a1 + 384;
  }

  v6 = (v5 + 40 * v4);
  v9 = *v6;
  v7 = (v6 + 1);
  v8 = v9;
  if (v9)
  {
    v7 = *v7;
  }

  std::vector<operations_research::sat::ValueLiteralPair>::__assign_with_size[abi:ne200100]<operations_research::sat::ValueLiteralPair*,operations_research::sat::ValueLiteralPair*>((a1 + 384), v7, &v7[(8 * v8) & 0xFFFFFFFFFFFFFFF0], (8 * v8) >> 4);
  v10 = *(a1 + 384);
  v11 = *(a1 + 392);
  if (v11 == v10)
  {
    v13 = 0;
    if ((v11 - v10) >> 4)
    {
LABEL_15:
      v11 = &v10[v13];
      *(a1 + 392) = v11;
    }
  }

  else
  {
    v12 = 0;
    LODWORD(v13) = 0;
    v14 = 1;
    do
    {
      v15 = &v10[v12];
      v36 = *v15;
      v16 = *(*(*(*a1 + 216) + 24) + ((SDWORD2(v36) >> 3) & 0x1FFFFFFFFFFFFFF8));
      if (((v16 >> (BYTE8(v36) & 0x3F ^ 1u)) & 1) == 0)
      {
        if ((v16 >> (BYTE8(v36) & 0x3F)))
        {
          *(a1 + 392) = v10;
          std::vector<operations_research::sat::ProbingRectangle::IntervalPoint>::push_back[abi:ne200100](a1 + 384, &v36);
          v10 = *(a1 + 384);
          v11 = *(a1 + 392);
          v13 = 1;
          v20 = (v11 - v10) >> 4;
          v21 = 1 - v20;
          if (!v20)
          {
            goto LABEL_17;
          }

          goto LABEL_12;
        }

        v17 = &v10[v13];
        LODWORD(v13) = v13 + 1;
        v18 = *v15;
        *(v17 + 2) = *(v15 + 2);
        *v17 = v18;
        v10 = *(a1 + 384);
        v11 = *(a1 + 392);
      }

      v12 = v14++;
    }

    while (v12 < (v11 - v10) >> 4);
    v13 = v13;
    v20 = (v11 - v10) >> 4;
    v21 = v13 - v20;
    if (v13 > v20)
    {
LABEL_17:
      std::vector<operations_research::sat::ValueLiteralPair>::__append(a1 + 384, v21);
      v10 = *(a1 + 384);
      v11 = *(a1 + 392);
      goto LABEL_18;
    }

LABEL_12:
    if (v20 > v13)
    {
      goto LABEL_15;
    }
  }

LABEL_18:
  v22 = 126 - 2 * __clz((v11 - v10) >> 4);
  if (v11 == v10)
  {
    v23 = 0;
  }

  else
  {
    v23 = v22;
  }

  std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::ValueLiteralPair::CompareByValue &,operations_research::sat::ValueLiteralPair*,false>(v10, v11, &v36, v23, 1);
  if ((*(*(a1 + 8) + 8) & 0xFFFFFFF) != 0)
  {
    if ((v2 & 1) == 0)
    {
      return a1 + 384;
    }
  }

  else
  {
    absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::ValueLiteralPair,2ul,std::allocator<operations_research::sat::ValueLiteralPair>>::Assign<absl::lts_20240722::inlined_vector_internal::IteratorValueAdapter<std::allocator<operations_research::sat::ValueLiteralPair>,std::__wrap_iter<operations_research::sat::ValueLiteralPair*>>>((*(a1 + 280) + 40 * v4), *(a1 + 384), (*(a1 + 392) - *(a1 + 384)) >> 4);
    if ((v2 & 1) == 0)
    {
      return a1 + 384;
    }
  }

  v25 = *(a1 + 384);
  v24 = *(a1 + 392);
  if (v25 != v24)
  {
    v26 = v24 - 2;
    if ((v24 - 2) > v25)
    {
      v27 = v25 + 16;
      do
      {
        v36 = *(v27 - 16);
        v28 = *(v26 + 2);
        *(v27 - 16) = *v26;
        *(v27 - 8) = v28;
        *v26 = v36;
        *(v26 + 2) = DWORD2(v36);
        v26 -= 2;
        v30 = v27 >= v26;
        v27 += 16;
      }

      while (!v30);
      v25 = *(a1 + 384);
      v24 = *(a1 + 392);
    }
  }

  if (v25 == v24)
  {
    return a1 + 384;
  }

  v29 = v24 - v25 - 16;
  v30 = v29 >= 0x10 && v25 + (v29 & 0xFFFFFFFFFFFFFFF0) >= v25;
  if (v30)
  {
    v32 = (v29 >> 4) + 1;
    v31 = (v25 + 16 * (v32 & 0x1FFFFFFFFFFFFFFELL));
    v33 = (v25 + 16);
    v34 = v32 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      v35 = -*v33;
      *(v33 - 2) = -*(v33 - 2);
      *v33 = v35;
      v33 += 4;
      v34 -= 2;
    }

    while (v34);
    if (v32 == (v32 & 0x1FFFFFFFFFFFFFFELL))
    {
      return a1 + 384;
    }
  }

  else
  {
    v31 = v25;
  }

  do
  {
    *v31 = -*v31;
    v31 += 2;
  }

  while (v31 != v24);
  return a1 + 384;
}

uint64_t operations_research::sat::IntegerEncoder::FullDomainEncoding(uint64_t a1, int a2)
{
  if (!operations_research::sat::IntegerEncoder::VariableIsFullyEncoded(a1, a2))
  {
    operations_research::sat::IntegerEncoder::FullDomainEncoding(&v5);
  }

  return operations_research::sat::IntegerEncoder::PartialDomainEncoding(a1, a2);
}

uint64_t operations_research::sat::IntegerEncoder::AddImplications(uint64_t result, uint64_t a2, unsigned __int8 *a3, int a4, int a5)
{
  v32 = *MEMORY[0x277D85DE8];
  if (*(result + 32) != 1)
  {
    goto LABEL_41;
  }

  v5 = a3[11];
  if (**a2 == a3 && a4 == 0)
  {
    v7 = 0xFFFFFFFFLL;
    if (a3[11])
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (a3[11])
    {
      if (a4 - 1 < 0)
      {
        v17 = a3;
        while (1)
        {
          v18 = *v17;
          if (*(*v17 + 11))
          {
            break;
          }

          v19 = v17[8];
          v17 = *v17;
          if (v19)
          {
            v7 = *(v18 + 16 * (v19 - 1) + 24);
            goto LABEL_10;
          }
        }
      }

      v7 = *&a3[16 * (a4 - 1) + 24];
LABEL_10:
      v8 = a4 + 1;
      if (a4 + 1 == a3[10])
      {
        v9 = a3;
        while (1)
        {
          v10 = *v9;
          if (*(*v9 + 11))
          {
            break;
          }

          v11 = v9[8];
          v9 = *v9;
          if (v11 != v10[10])
          {
            LOBYTE(v8) = v11;
            v12 = *(a2 + 8);
            if (v10 == v12 && v11 == v12[10])
            {
              goto LABEL_39;
            }

            goto LABEL_37;
          }
        }
      }

      v10 = a3;
      v14 = *(a2 + 8);
      if (a3 == v14 && v8 == v14[10])
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

      ;
    }

    v7 = *(i + 16 * (*(i + 10) - 1) + 24);
  }

  v20 = &a3[8 * (a4 + 1) + 256];
  do
  {
    v10 = *v20;
    v21 = *(*v20 + 11);
    v20 = *v20 + 256;
  }

  while (!v21);
  LOBYTE(v8) = 0;
  v22 = *(a2 + 8);
  if (v10 != v22 || v22[10] != 0)
  {
LABEL_37:
    v24 = *&v10[16 * v8 + 24];
    if (v24 != -1)
    {
      v25 = *result;
      v30 = v24 ^ 1;
      v31 = a5;
      v26 = result;
      v27 = a5;
      operations_research::sat::SatSolver::AddClauseDuringSearch(v25, &v30, 2uLL);
      result = v26;
      a5 = v27;
    }
  }

LABEL_39:
  if (v7 != 0xFFFFFFFFLL)
  {
    v28 = *result;
    v30 = a5 ^ 1;
    v31 = v7;
    result = operations_research::sat::SatSolver::AddClauseDuringSearch(v28, &v30, 2uLL);
  }

LABEL_41:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

void operations_research::sat::IntegerEncoder::AddAllImplicationsBetweenAssociatedLiterals(operations_research::sat::IntegerEncoder *this)
{
  v2 = *(*this + 296);
  if (v2)
  {
    operations_research::sat::IntegerEncoder::AddAllImplicationsBetweenAssociatedLiterals(v2);
  }

  *(this + 32) = 1;
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 7) - *(this + 6)) >> 3);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = v3 & 0x7FFFFFFF;
    do
    {
      operations_research::sat::IntegerEncoder::PartialGreaterThanEncoding(this, 2 * v4, &v10);
      v6 = v10;
      v7 = v11;
      if (v10 != v11)
      {
        v8 = 0xFFFFFFFFLL;
        do
        {
          v9 = v6[2];
          if (v8 != 0xFFFFFFFFLL)
          {
            operations_research::sat::SatSolver::AddBinaryClause(*this, v9 ^ 1, v8);
          }

          v6 += 4;
          v8 = v9;
        }

        while (v6 != v7);
        v6 = v10;
      }

      if (v6)
      {
        v11 = v6;
        operator delete(v6);
      }

      ++v4;
    }

    while (v4 != v5);
  }
}

void sub_23CBF1FC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    v11 = a1;
    operator delete(__p);
    a1 = v11;
  }

  _Unwind_Resume(a1);
}

__n128 operations_research::sat::IntegerEncoder::PartialGreaterThanEncoding@<Q0>(uint64_t a1@<X0>, int a2@<W1>, unint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = a2 / 2;
  v5 = *(a1 + 48);
  if (a2 / 2 >= (-1431655765 * ((*(a1 + 56) - v5) >> 3)))
  {
    return result;
  }

  if ((a2 & 1) == 0)
  {
    v6 = v5 + 24 * v4;
    v7 = *(v6 + 8);
    v8 = **v6;
    v9 = v7[10];
    if (v8 != v7 || v9 != 0)
    {
      v11 = 0;
      do
      {
        v12 = &v8[16 * v11];
        v13 = *(v12 + 2);
        LODWORD(v12) = *(v12 + 6);
        v51.n128_u64[0] = v13;
        v51.n128_u32[2] = v12;
        std::vector<operations_research::sat::ProbingRectangle::IntervalPoint>::push_back[abi:ne200100](a3, &v51);
        if (v8[11])
        {
          if (++v11 == v8[10])
          {
            v15 = v8;
            while (1)
            {
              v16 = *v15;
              if (*(*v15 + 11))
              {
                break;
              }

              v17 = v15[8];
              v15 = *v15;
              if (v17 != v16[10])
              {
                v8 = v16;
                v11 = v17;
                break;
              }
            }
          }
        }

        else
        {
          v18 = &v8[8 * (v11 + 1) + 256];
          do
          {
            v8 = *v18;
            v19 = *(*v18 + 11);
            v18 = *v18 + 256;
          }

          while (!v19);
          v11 = 0;
        }
      }

      while (v8 != v7 || v11 != v9);
    }

    return result;
  }

  v21 = (**(a1 + 24) + 24 * v4);
  if (operations_research::Domain::IsEmpty(v21))
  {
    return result;
  }

  v22 = *(a1 + 48) + 24 * v4;
  v23 = *(v22 + 8);
  v24 = **v22;
  v25 = v23[10];
  if (v24 == v23 && v25 == 0)
  {
    goto LABEL_52;
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = (v21 + 8);
  v50 = *v21 >> 1;
  v31 = v50 - 1;
  while (1)
  {
    v32 = &v24[16 * v29];
    v33 = *(v32 + 2);
    v34 = *(v32 + 6);
    if (*v21)
    {
      break;
    }

    v35 = v30[2 * v27 + 1];
    if (v33 > v35)
    {
      while (v31 != v27)
      {
        v28 = v35;
        v35 = v30[2 * ++v27 + 1];
        if (v33 <= v35)
        {
          v36 = v21 + 8;
          goto LABEL_37;
        }
      }

      goto LABEL_52;
    }

    v36 = v21 + 8;
LABEL_36:
    if (v27 == v50)
    {
      goto LABEL_52;
    }

LABEL_37:
    if (v33 <= *&v36[16 * v27])
    {
      if (v27)
      {
        v51.n128_u64[0] = -v28;
        v51.n128_u32[2] = v34 ^ 1;
        std::vector<operations_research::sat::ProbingRectangle::IntervalPoint>::push_back[abi:ne200100](a3, &v51);
      }
    }

    else
    {
      v51.n128_u64[0] = 1 - v33;
      v51.n128_u32[2] = v34 ^ 1;
      std::vector<operations_research::sat::ProbingRectangle::IntervalPoint>::push_back[abi:ne200100](a3, &v51);
    }

    if (v24[11])
    {
      if (++v29 == v24[10])
      {
        v38 = v24;
        while (1)
        {
          v39 = *v38;
          if (*(*v38 + 11))
          {
            break;
          }

          v40 = v38[8];
          v38 = *v38;
          if (v40 != v39[10])
          {
            v24 = v39;
            v29 = v40;
            break;
          }
        }
      }
    }

    else
    {
      v41 = &v24[8 * (v29 + 1) + 256];
      do
      {
        v24 = *v41;
        v42 = *(*v41 + 11);
        v41 = *v41 + 256;
      }

      while (!v42);
      v29 = 0;
    }

    if (v24 == v23 && v29 == v25)
    {
      goto LABEL_52;
    }
  }

  v36 = *v30;
  v37 = *&(*v30)[16 * v27 + 8];
  if (v33 <= v37)
  {
    goto LABEL_36;
  }

  while (v31 != v27)
  {
    v28 = v37;
    v37 = *&v36[16 * ++v27 + 8];
    if (v33 <= v37)
    {
      goto LABEL_36;
    }
  }

LABEL_52:
  v43 = *a3;
  v44 = a3[1];
  v45 = v44 - 16;
  if (*a3 != v44 && v45 > v43)
  {
    v47 = v43 + 16;
    do
    {
      result = *(v47 - 16);
      v51 = result;
      v48 = *(v45 + 8);
      *(v47 - 16) = *v45;
      *(v47 - 8) = v48;
      *v45 = v51.n128_u64[0];
      *(v45 + 8) = v51.n128_u32[2];
      v45 -= 16;
      v49 = v47 >= v45;
      v47 += 16;
    }

    while (!v49);
  }

  return result;
}

void sub_23CBF234C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::IntegerEncoder::Canonicalize@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, int64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  if (a2)
  {
    v4 = a2 & 0xFFFFFFFE;
  }

  else
  {
    v4 = a2;
  }

  if (a2)
  {
    v5 = (1 - a3);
  }

  else
  {
    v5 = a3;
  }

  v6 = v5 - 1;
  v7 = (**(result + 24) + 24 * (v4 / 2));
  v10 = *v7;
  v8 = v7 + 1;
  v9 = v10;
  if (v10)
  {
    v8 = *v8;
  }

  if ((v9 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    v11 = 16 * (v9 >> 1) - 16;
    v12 = 0x8000000000000000;
    while (v6 <= v12)
    {
      if (v5 > v12)
      {
        goto LABEL_21;
      }

LABEL_11:
      v12 = v8[1];
      v8 += 2;
      v13 = v5 <= v12 || v11 == 0;
      v11 -= 16;
      if (v13)
      {
        goto LABEL_24;
      }
    }

    if (v6 < *v8)
    {
      v6 = v12;
    }

    if (v5 <= v12)
    {
      goto LABEL_11;
    }

LABEL_21:
    if (v5 <= *v8)
    {
      v5 = *v8;
    }

    goto LABEL_11;
  }

LABEL_24:
  if (v6 >= 0x8000000000000002)
  {
    v14 = -v6;
  }

  else
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v15 = v4 ^ 1;
  if (a2)
  {
    v16 = v14;
  }

  else
  {
    v15 = v4;
    v16 = v5;
  }

  if ((a2 & 1) == 0)
  {
    v4 |= 1uLL;
  }

  *a4 = v15;
  a4[1] = v16;
  if ((a2 & 1) == 0)
  {
    v5 = v14;
  }

  a4[2] = v4;
  a4[3] = v5;
  return result;
}

uint64_t operations_research::sat::IntegerEncoder::GetOrCreateAssociatedLiteral(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a3;
  v6 = a2 / 2;
  if (a2)
  {
    v10 = -a3;
    if (operations_research::Domain::Max((**(a1 + 24) + 24 * v6)) > -a3)
    {
      if (operations_research::Domain::Min((**(a1 + 24) + 24 * v6)) > v10)
      {
        goto LABEL_4;
      }

LABEL_9:
      v11 = a2 & 0xFFFFFFFE;
      if (a2)
      {
        v12 = a2 & 0xFFFFFFFE;
      }

      else
      {
        v12 = a2;
      }

      if (a2)
      {
        v3 = 1 - v3;
      }

      v13 = v3 - 1;
      v14 = **(a1 + 24);
      v15 = (v14 + 24 * (v12 / 2));
      v18 = *v15;
      v16 = v15 + 1;
      v17 = v18;
      if (v18)
      {
        v16 = *v16;
      }

      if ((v17 & 0x1FFFFFFFFFFFFFFELL) != 0)
      {
        v19 = 16 * (v17 >> 1) - 16;
        v20 = 0x8000000000000000;
        while (v13 <= v20)
        {
          if (v3 > v20)
          {
            goto LABEL_28;
          }

LABEL_18:
          v20 = v16[1];
          v16 += 2;
          v21 = v3 <= v20 || v19 == 0;
          v19 -= 16;
          if (v21)
          {
            goto LABEL_33;
          }
        }

        if (v13 < *v16)
        {
          v13 = v20;
        }

        if (v3 <= v20)
        {
          goto LABEL_18;
        }

LABEL_28:
        if (v3 <= *v16)
        {
          v3 = *v16;
        }

        goto LABEL_18;
      }

LABEL_33:
      if (v13 >= 0x8000000000000002)
      {
        v23 = -v13;
      }

      else
      {
        v23 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if ((a2 & 1) == 0)
      {
        v51[0] = 0;
        v24 = (v14 + 24 * (v12 >> 1));
        v27 = *v24;
        v25 = v24 + 1;
        v26 = v27;
        if (v27)
        {
          v25 = *v25;
        }

        v28 = v3;
        if ((v26 & 0x1FFFFFFFFFFFFFFELL) != 0)
        {
          v29 = v3 - 1;
          v30 = 16 * (v26 >> 1) - 16;
          v31 = 0x8000000000000000;
          v28 = v3;
          while (v29 <= v31)
          {
            if (v28 > v31)
            {
              goto LABEL_51;
            }

LABEL_41:
            v31 = v25[1];
            v25 += 2;
            v32 = v28 <= v31 || v30 == 0;
            v30 -= 16;
            if (v32)
            {
              goto LABEL_73;
            }
          }

          if (v29 < *v25)
          {
            v29 = v31;
          }

          if (v28 <= v31)
          {
            goto LABEL_41;
          }

LABEL_51:
          if (v28 <= *v25)
          {
            v28 = *v25;
          }

          goto LABEL_41;
        }

LABEL_73:
        v43 = operations_research::sat::IntegerEncoder::SearchForLiteralAtOrBefore(a1, v12, v28, v51);
        if (v43 != -1)
        {
          v9 = v43;
          if (v51[0] >= v3)
          {
            return v9;
          }
        }

        goto LABEL_85;
      }

      v51[0] = 0;
      v33 = (1 - v3);
      v34 = v12 & 1;
      if ((v12 & 1) == 0)
      {
        v11 = v12;
        v33 = v3;
      }

      v35 = v33 - 1;
      v36 = (v14 + 24 * (v11 / 2));
      v39 = *v36;
      v37 = v36 + 1;
      v38 = v39;
      if (v39)
      {
        v37 = *v37;
      }

      v12 ^= 1u;
      if ((v38 & 0x1FFFFFFFFFFFFFFELL) == 0)
      {
LABEL_76:
        v44 = 0x7FFFFFFFFFFFFFFFLL;
        if (v35 >= 0x8000000000000002)
        {
          v44 = -v35;
        }

        if (v34)
        {
          v45 = v44;
        }

        else
        {
          v45 = v33;
        }

        v46 = operations_research::sat::IntegerEncoder::SearchForLiteralAtOrBefore(a1, v34 ^ v11, v45, v51);
        if (v46 == -1)
        {
          v3 = v23;
        }

        else
        {
          v47 = v51[0] < v3;
          v3 = v23;
          if (!v47)
          {
            return v46 ^ 1u;
          }
        }

LABEL_85:
        ++*(a1 + 40);
        v48 = *(*a1 + 16);
        operations_research::sat::SatSolver::SetNumVariables(*a1, v48 + 1);
        v9 = (2 * v48);
        operations_research::sat::IntegerEncoder::AssociateToIntegerLiteral(a1, v9, v12, v3);
        if (((*(*(*(*a1 + 216) + 24) + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v9 & 0x3E)) & 3) != 0 && dword_27E25CFD0 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::IntegerEncoder::GetOrCreateAssociatedLiteral(operations_research::sat::IntegerLiteral)::$_0::operator() const(void)::site, dword_27E25CFD0))
        {
          absl::lts_20240722::log_internal::LogMessage::LogMessage(v51, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/integer.cc", 304);
          v50 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v51, 1);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v50, "Created a fixed literal for no reason!", 0x26uLL);
          absl::lts_20240722::log_internal::LogMessage::~LogMessage(v51);
        }

        return v9;
      }

      v40 = 16 * (v38 >> 1) - 16;
      v41 = 0x8000000000000000;
      while (v35 <= v41)
      {
        if (v33 > v41)
        {
          goto LABEL_70;
        }

LABEL_60:
        v41 = v37[1];
        v37 += 2;
        v42 = v33 <= v41 || v40 == 0;
        v40 -= 16;
        if (v42)
        {
          goto LABEL_76;
        }
      }

      if (v35 < *v37)
      {
        v35 = v41;
      }

      if (v33 <= v41)
      {
        goto LABEL_60;
      }

LABEL_70:
      if (v33 <= *v37)
      {
        v33 = *v37;
      }

      goto LABEL_60;
    }
  }

  else if (a3 > operations_research::Domain::Min((**(a1 + 24) + 24 * v6)))
  {
    if (v3 > operations_research::Domain::Max((**(a1 + 24) + 24 * v6)))
    {
LABEL_4:
      v7 = *(a1 + 328);
      if (v7 == -1)
      {
        v8 = *(*a1 + 16);
        operations_research::sat::SatSolver::SetNumVariables(*a1, v8 + 1);
        *(a1 + 328) = 2 * v8;
        operations_research::sat::SatSolver::AddUnitClause(*a1, 2 * v8);
        v7 = *(a1 + 328);
      }

      return v7 ^ 1u;
    }

    goto LABEL_9;
  }

  v9 = *(a1 + 328);
  if (v9 == -1)
  {
    v22 = *(*a1 + 16);
    operations_research::sat::SatSolver::SetNumVariables(*a1, v22 + 1);
    *(a1 + 328) = 2 * v22;
    operations_research::sat::SatSolver::AddUnitClause(*a1, 2 * v22);
    return *(a1 + 328);
  }

  return v9;
}

uint64_t operations_research::sat::IntegerEncoder::GetAssociatedLiteral(uint64_t a1, signed int a2, void *a3)
{
  v18 = 0;
  v4 = (1 - a3);
  v5 = a2 & 0xFFFFFFFE;
  if ((a2 & 1) == 0)
  {
    v5 = a2;
    v4 = a3;
  }

  v6 = v4 - 1;
  v7 = (**(a1 + 24) + 24 * (v5 / 2));
  v10 = *v7;
  v8 = v7 + 1;
  v9 = v10;
  if (v10)
  {
    v8 = *v8;
  }

  if ((v9 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    v11 = 16 * (v9 >> 1) - 16;
    v12 = 0x8000000000000000;
    while (v6 <= v12)
    {
      if (v4 > v12)
      {
        goto LABEL_17;
      }

LABEL_7:
      v12 = v8[1];
      v8 += 2;
      v13 = v4 <= v12 || v11 == 0;
      v11 -= 16;
      if (v13)
      {
        goto LABEL_20;
      }
    }

    if (v6 < *v8)
    {
      v6 = v12;
    }

    if (v4 <= v12)
    {
      goto LABEL_7;
    }

LABEL_17:
    if (v4 <= *v8)
    {
      v4 = *v8;
    }

    goto LABEL_7;
  }

LABEL_20:
  if (v6 >= 0x8000000000000002)
  {
    v14 = -v6;
  }

  else
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (a2)
  {
    v15 = v14;
  }

  else
  {
    v15 = v4;
  }

  LODWORD(result) = operations_research::sat::IntegerEncoder::SearchForLiteralAtOrBefore(a1, a2 & 1 ^ v5, v15, &v18);
  if (v18 < a3 || result == -1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return result;
  }
}