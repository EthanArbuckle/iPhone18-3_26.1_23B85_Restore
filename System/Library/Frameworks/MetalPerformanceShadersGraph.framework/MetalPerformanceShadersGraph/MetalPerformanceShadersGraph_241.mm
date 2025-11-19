void sub_1E0755C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char *__p, char *a37)
{
  if (__p)
  {
    v38 = a37;
    v39 = __p;
    if (a37 != __p)
    {
      do
      {
        v40 = *(v38 - 1);
        v38 -= 8;
      }

      while (v38 != __p);
      v39 = __p;
    }

    operator delete(v39);
  }

  _Unwind_Resume(a1);
}

uint64_t getOpData(MPSGraphOperation *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = *(v1 + 15);
    if (!v2)
    {
      operator new();
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = *(v1 + 20);
      if (!v2)
      {
        operator new();
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v2 = 0;
        goto LABEL_11;
      }

      v2 = *(v1 + 15);
      if (!v2)
      {
        operator new();
      }
    }
  }

LABEL_11:
  return v2;
}

void sub_1E07561A0(_Unwind_Exception *a1)
{
  v10 = v6;

  MEMORY[0x1E12E5B90](v2, 0x10B1C40DB46119ELL);
  _Unwind_Resume(a1);
}

void **std::vector<MPSGraphTensor * {__strong}>::~vector[abi:ne200100](void **a1)
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
        v5 = *(v3 - 1);
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

void AutodiffSaveTemps::injectTempsIntoOp(AutodiffSaveTemps *this, MPSGraphOperation *a2)
{
  v104 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v85 = this;
  WeakRetained = objc_loadWeakRetained(&v3->_parentBlock);
  v81 = v3;
  BlockInfos = AutodiffSaveTemps::getBlockInfos(this, WeakRetained);
  v102[0] = 0;
  v102[1] = 0;
  v101[2] = v102;
  v101[0] = 0;
  v101[1] = 0;
  v100 = v101;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  obj = v3->_region->_blocks;
  v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v96 objects:v103 count:16];
  if (v4)
  {
    v83 = *v97;
    do
    {
      v5 = 0;
      v84 = v4;
      do
      {
        if (*v97 != v83)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v96 + 1) + 8 * v5);
        v7 = AutodiffSaveTemps::getBlockInfos(v85, v6);
        v86 = v5;
        if (*(v7 + 15))
        {
          v8 = *(v7 + 13);
          v89 = v7 + 112;
          if (v8 == v7 + 112)
          {
LABEL_50:
            for (i = v102[0]; i; i = *v48)
            {
              while (1)
              {
                v48 = i;
                v49 = i[4];
                if (v6 < v49)
                {
                  break;
                }

                if (v49 >= v6)
                {
                  for (j = v101[0]; j; j = *v51)
                  {
                    while (1)
                    {
                      v51 = j;
                      v52 = j[4];
                      if (v6 < v52)
                      {
                        break;
                      }

                      if (v52 >= v6)
                      {
                        goto LABEL_4;
                      }

                      j = v51[1];
                      if (!j)
                      {
                        goto LABEL_63;
                      }
                    }
                  }

LABEL_63:
                  operator new();
                }

                i = v48[1];
                if (!i)
                {
                  goto LABEL_56;
                }
              }
            }

LABEL_56:
            operator new();
          }

          v9 = 0;
          v10 = 0;
          v88 = v6;
          while (2)
          {
            v11 = *(v8 + 4);
            v90 = *(v8 + 5);
            v12 = v11;
            v13 = v12;
            if (((v10 >> 3) + 1) >> 61)
            {
              std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
            }

            if (v10 >> 3 != -1)
            {
              if (!(((v10 >> 3) + 1) >> 61))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v14 = (8 * (v10 >> 3));
            *v14 = v12;
            v15 = v14 + 1;
            if (v10)
            {
              v16 = v10 - 8;
              v17 = 0;
              v18 = 0;
              v19 = 0;
              if ((v10 - 8) < 0x28)
              {
                goto LABEL_115;
              }

              if ((v16 & 0xFFFFFFFFFFFFFFF8) != 0xFFFFFFFFFFFFFFF8)
              {
                v18 = 0;
                v19 = 0;
                goto LABEL_22;
              }

              v20 = (v16 >> 3) + 1;
              v19 = (8 * (v20 & 0x3FFFFFFFFFFFFFFCLL));
              v18 = v19;
              v21 = 16;
              v22 = 16;
              v23 = v20 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v24 = *(v22 - 16);
                v25 = *v22;
                *(v22 - 16) = 0uLL;
                *v22 = 0uLL;
                *(v21 - 16) = v24;
                *v21 = v25;
                v21 += 32;
                v22 += 32;
                v23 -= 4;
              }

              while (v23);
              if (v20 != (v20 & 0x3FFFFFFFFFFFFFFCLL))
              {
LABEL_115:
                do
                {
LABEL_22:
                  v26 = *v18;
                  *v18++ = 0;
                  *v19++ = v26;
                }

                while (v18 != v10);
              }

              do
              {
              }

              while (v17 != v10);
            }

            v10 = v15;
            v27 = *(BlockInfos + 14);
            if (!v27)
            {
LABEL_107:
              std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
            }

            while (1)
            {
              while (1)
              {
                v28 = v27[4];
                if (v13 >= v28)
                {
                  break;
                }

                v27 = *v27;
                if (!v27)
                {
                  goto LABEL_107;
                }
              }

              if (v28 >= v13)
              {
                break;
              }

              v27 = v27[1];
              if (!v27)
              {
                goto LABEL_107;
              }
            }

            v29 = v27[5];
            v30 = v29;
            if (((v9 >> 3) + 1) >> 61)
            {
              std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
            }

            if (v9 >> 3 != -1)
            {
              if (!(((v9 >> 3) + 1) >> 61))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v31 = (8 * (v9 >> 3));
            *v31 = v29;
            v32 = v31 + 1;
            if (v9)
            {
              v33 = v9 - 8;
              v34 = 0;
              v35 = 0;
              v36 = 0;
              if ((v9 - 8) < 0x28)
              {
                goto LABEL_116;
              }

              if ((v33 & 0xFFFFFFFFFFFFFFF8) != 0xFFFFFFFFFFFFFFF8)
              {
                v35 = 0;
                v36 = 0;
                goto LABEL_42;
              }

              v37 = (v33 >> 3) + 1;
              v36 = (8 * (v37 & 0x3FFFFFFFFFFFFFFCLL));
              v35 = v36;
              v38 = 16;
              v39 = 16;
              v40 = v37 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v41 = *(v39 - 16);
                v42 = *v39;
                *(v39 - 16) = 0uLL;
                *v39 = 0uLL;
                *(v38 - 16) = v41;
                *v38 = v42;
                v38 += 32;
                v39 += 32;
                v40 -= 4;
              }

              while (v40);
              if (v37 != (v37 & 0x3FFFFFFFFFFFFFFCLL))
              {
LABEL_116:
                do
                {
LABEL_42:
                  v43 = *v35;
                  *v35++ = 0;
                  *v36++ = v43;
                }

                while (v35 != v9);
              }

              do
              {
              }

              while (v34 != v9);
            }

            v9 = v32;

            v44 = *(v8 + 1);
            if (v44)
            {
              do
              {
                v45 = v44;
                v44 = *v44;
              }

              while (v44);
            }

            else
            {
              do
              {
                v45 = *(v8 + 2);
                v46 = *v45 == v8;
                v8 = v45;
              }

              while (!v46);
            }

            v8 = v45;
            v6 = v88;
            if (v45 == v89)
            {
              goto LABEL_50;
            }

            continue;
          }
        }

LABEL_4:
        v5 = v86 + 1;
      }

      while (v86 + 1 != v84);
      v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v96 objects:v103 count:16, WeakRetained, v81];
    }

    while (v4);
  }

  OpData = getOpData(v81);
  (*(*OpData + 48))(&v94);
  v54 = v100;
  if (v100 != v101)
  {
    do
    {
      std::pair<MPSGraphBlock * const {__strong},std::vector<MPSGraphTensor * {__strong}>>::pair[abi:ne200100](&v91, (v54 + 4));
      v55 = v91;
      v56 = AutodiffSaveTemps::getBlockInfos(v85, v55);
      v57 = v95;
      if (!v95)
      {
LABEL_112:
        std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
      }

      while (1)
      {
        while (1)
        {
          v58 = v57[4];
          if (v55 >= v58)
          {
            break;
          }

          v57 = *v57;
          if (!v57)
          {
            goto LABEL_112;
          }
        }

        if (v58 >= v55)
        {
          break;
        }

        v57 = v57[1];
        if (!v57)
        {
          goto LABEL_112;
        }
      }

      v59 = v92;
      if (v93 != v92)
      {
        v60 = 0;
        v61 = (v56 + 112);
        do
        {
          v62 = *v61;
          if (!*v61)
          {
            goto LABEL_86;
          }

          v63 = v59[v60];
          v64 = v61;
          do
          {
            v65 = v62[4];
            v66 = v65 >= v63;
            v67 = v65 < v63;
            if (v66)
            {
              v64 = v62;
            }

            v62 = v62[v67];
          }

          while (v62);
          if (v64 == v61 || v63 < v64[4])
          {
LABEL_86:
            v64 = v61;
          }

          objc_storeStrong(v64 + 5, *(v57[5] + 8 * v60++));
          v59 = v92;
        }

        while (v60 < (v93 - v92) >> 3);
      }

      v68 = AutodiffSaveTemps::getBlockInfos(v85, v55);
      v69 = *(v68 + 10);
      v70 = v68 + 88;
      if (v69 != v68 + 88)
      {
        do
        {
          v77 = *(v69 + 4);
          AutodiffSaveTemps::injectTempsIntoOp(v85, v77);

          v78 = *(v69 + 1);
          if (v78)
          {
            do
            {
              v79 = v78;
              v78 = *v78;
            }

            while (v78);
          }

          else
          {
            do
            {
              v79 = *(v69 + 2);
              v46 = *v79 == v69;
              v69 = v79;
            }

            while (!v46);
          }

          v69 = v79;
        }

        while (v79 != v70);
      }

      v71 = v92;
      if (v92)
      {
        v72 = v93;
        v73 = v92;
        if (v93 != v92)
        {
          do
          {
            v74 = *(v72 - 1);
            v72 -= 8;
          }

          while (v72 != v71);
          v73 = v92;
        }

        v93 = v71;
        operator delete(v73);
      }

      v75 = v54[1];
      if (v75)
      {
        do
        {
          v76 = v75;
          v75 = *v75;
        }

        while (v75);
      }

      else
      {
        do
        {
          v76 = v54[2];
          v46 = *v76 == v54;
          v54 = v76;
        }

        while (!v46);
      }

      v54 = v76;
    }

    while (v76 != v101);
  }

  std::__tree<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,std::__map_value_compare<MPSGraphBlock * {__strong},std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,std::less<MPSGraphBlock * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>>>::destroy(v95);
  std::__tree<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,std::__map_value_compare<MPSGraphBlock * {__strong},std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,std::less<MPSGraphBlock * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>>>::destroy(v101[0]);
  std::__tree<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,std::__map_value_compare<MPSGraphBlock * {__strong},std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,std::less<MPSGraphBlock * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>>>::destroy(v102[0]);
}

void sub_1E0756FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42)
{
  std::__tree<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,std::__map_value_compare<MPSGraphBlock * {__strong},std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,std::less<MPSGraphBlock * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>>>::destroy(a42);
  std::__tree<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,std::__map_value_compare<MPSGraphBlock * {__strong},std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,std::less<MPSGraphBlock * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>>>::destroy(*(v42 - 240));

  _Unwind_Resume(a1);
}

void *std::pair<MPSGraphBlock * const {__strong},std::vector<MPSGraphTensor * {__strong}>>::pair[abi:ne200100](void *a1, uint64_t a2)
{
  *a1 = *a2;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v5 != v4)
  {
    if (((v5 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
  }

  return a1;
}

void sub_1E0757190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::__exception_guard_exceptions<std::vector<MPSGraphTensor * {__strong}>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);

  _Unwind_Resume(a1);
}

uint64_t std::pair<MPSGraphBlock * const {__strong},std::vector<MPSGraphTensor * {__strong}>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        v3 -= 8;
      }

      while (v3 != v2);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_1E0757368(_Unwind_Exception *a1)
{
  v8 = v7;

  _Unwind_Resume(a1);
}

void sub_1E07580E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  mlir::Block::~Block((v52 - 256));

  mlir::Block::~Block((v52 - 176));
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::vector<mlir::Type>::push_back[abi:ne200100](uint64_t a1, void *a2)
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
    std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
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

uint64_t mlir::OpBuilder::create<mlir::scf::IfOp,std::vector<mlir::Type> &,mlir::Value &,BOOL,BOOL>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned __int8 *a5, unsigned __int8 *a6)
{
  v24[5] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    v22 = 1283;
    v21[2] = "scf.if";
    v21[3] = 6;
    v20 = 259;
    llvm::operator+(v21, &v19, v24);
    llvm::report_fatal_error(v24, 1);
  }

  mlir::OperationState::OperationState(v23, a2, v13);
  mlir::ValueRange::ValueRange(v24, *a3, (a3[1] - *a3) >> 3);
  mlir::scf::IfOp::build(a1, v23, v24[0], v24[1], *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v23);
  return v16;
}

void sub_1E0758574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E0758588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

uint64_t recurseForUsesOnEscaped(Autodiff *a1, MPSGraphBlock *a2, MPSGraphTensor *a3)
{
  v46[16] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v41 = v6;
  *&v42 = v5;
  v46[0] = &v42;
  v7 = std::__hash_table<std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a1 + 4, &v42);
  v46[0] = v6;
  v8 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>(v7 + 3, v46);
  if (v8)
  {
    ++v8[4];
    LOBYTE(v9) = *(v8 + 48);
  }

  else
  {
    v10 = v5;
    v11 = v6;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v12 = [(MPSGraphBlock *)v10 parentOp];
    v13 = *(v12[5] + 8);

    v14 = [v13 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v14)
    {
      v15 = *v43;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v43 != v15)
          {
            objc_enumerationMutation(v13);
          }

          BlockEscapeds = getBlockEscapeds(*(*(&v42 + 1) + 8 * i));
          v19 = 8 * v18;
          if (v18)
          {
            v20 = 8 * v18;
            v21 = BlockEscapeds;
            while (*v21 != v11)
            {
              ++v21;
              v20 -= 8;
              if (!v20)
              {
                v21 = (BlockEscapeds + v19);
                break;
              }
            }
          }

          else
          {
            v21 = BlockEscapeds;
          }

          if ((v21 - BlockEscapeds) != v19)
          {

            *&v42 = v11;
            v46[0] = &v42;
            v26 = std::__hash_table<std::__hash_value_type<void *,Autodiff::TensorFrame>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,Autodiff::TensorFrame>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,Autodiff::TensorFrame>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,Autodiff::TensorFrame>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(v7 + 3, v11);
            *(v26 + 48) = 1;
            v26[4] = 1;
            v27 = [(MPSGraphBlock *)v10 parentOp];
            v28 = *(getOpData(v27) + 32);
            if (!v28)
            {
LABEL_25:
              operator new();
            }

            while (1)
            {
              while (1)
              {
                v29 = v28;
                v30 = v28[4];
                if (v30 <= v10)
                {
                  break;
                }

                v28 = *v29;
                if (!*v29)
                {
                  goto LABEL_25;
                }
              }

              if (v30 >= v10)
              {
                break;
              }

              v28 = v29[1];
              if (!v28)
              {
                goto LABEL_25;
              }
            }

            v38 = v29[6];
            if (v38 < v29[7])
            {
              *v38 = v41;
              v31 = (v38 + 1);
            }

            else
            {
              v31 = std::vector<MPSGraphTensor * {__strong}>::__emplace_back_slow_path<MPSGraphTensor * const {__strong}&>(v29 + 5, &v41);
            }

            v29[6] = v31;

            LOBYTE(v9) = 1;
            goto LABEL_44;
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v42 objects:v46 count:{16, v41}];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v22 = [(MPSGraphBlock *)v10 parentOp];
    WeakRetained = objc_loadWeakRetained(v22 + 6);

    v24 = objc_loadWeakRetained(&v11->_parentBlock);
    if (WeakRetained == v24)
    {
      v25 = Autodiff::recurseForUses(a1, v24, v11);
    }

    else
    {
      v25 = recurseForUsesOnEscaped(a1, WeakRetained, v11);
    }

    v9 = v25;
    *&v42 = v11;
    v46[0] = &v42;
    v32 = std::__hash_table<std::__hash_value_type<void *,Autodiff::TensorFrame>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,Autodiff::TensorFrame>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,Autodiff::TensorFrame>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,Autodiff::TensorFrame>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(v7 + 3, v11);
    *(v32 + 48) = v9;
    v32[4] = 1;
    if (v9)
    {
      v33 = [(MPSGraphBlock *)v10 parentOp];
      v34 = *(getOpData(v33) + 32);
      if (!v34)
      {
LABEL_35:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v35 = v34;
          v36 = v34[4];
          if (v36 <= v10)
          {
            break;
          }

          v34 = *v35;
          if (!*v35)
          {
            goto LABEL_35;
          }
        }

        if (v36 >= v10)
        {
          break;
        }

        v34 = v35[1];
        if (!v34)
        {
          goto LABEL_35;
        }
      }

      v39 = v35[6];
      if (v39 < v35[7])
      {
        *v39 = v41;
        v37 = (v39 + 1);
      }

      else
      {
        v37 = std::vector<MPSGraphTensor * {__strong}>::__emplace_back_slow_path<MPSGraphTensor * const {__strong}&>(v35 + 5, &v41);
      }

      v35[6] = v37;
    }
  }

LABEL_44:

  return v9 & 1;
}

void AutodiffOpData::createPartialDerivatives(AutodiffOpData *this, Autodiff *a2)
{
  v95 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(this + 1) + 48));
  v71 = this;
  v4 = [*(this + 1) outputTensors];
  v90 = WeakRetained;
  v92 = &v90;
  v69 = a2;
  v5 = std::__hash_table<std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 4, &v90);
  v6 = 0;
  for (i = [v4 count]; v6 < i; i = objc_msgSend(v68, "count", v68))
  {
    v8 = [v4 objectAtIndexedSubscript:v6];
    v92 = v8;
    v9 = std::__hash_table<std::__hash_value_type<void *,Autodiff::TensorFrame>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,Autodiff::TensorFrame>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,Autodiff::TensorFrame>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,Autodiff::TensorFrame>>>::find<void *>(v5 + 3, &v92);

    if (v9 && *(v9 + 48) == 1 && v9[5] != v9[4])
    {
      goto LABEL_92;
    }

    ++v6;
    v4 = v68;
  }

  v10 = 0;
  v93[0] = 0;
  v93[1] = 0;
  v92 = v93;
  while (1)
  {
    v11 = [*(v71 + 1) outputTensors];
    v12 = v10 < [v11 count];

    if (!v12)
    {
      break;
    }

    v13 = [*(v71 + 1) outputTensors];
    v14 = [v13 objectAtIndexedSubscript:v10];

    if (Autodiff::isGradNeededFor(a2, WeakRetained, v14))
    {
      v15 = Autodiff::getGradientOf(a2, WeakRetained, v14);
      v16 = v93[0];
      if (!v93[0])
      {
LABEL_17:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v14 >= v18)
          {
            break;
          }

          v16 = *v17;
          if (!*v17)
          {
            goto LABEL_17;
          }
        }

        if (v18 >= v14)
        {
          break;
        }

        v16 = v17[1];
        if (!v16)
        {
          goto LABEL_17;
        }
      }

      v19 = v17[5];
      v17[5] = v15;
    }

    ++v10;
  }

  v91[0] = 0;
  v91[1] = 0;
  v90 = v91;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = *(*(*(v71 + 1) + 40) + 8);
  v20 = [obj countByEnumeratingWithState:&v86 objects:v94 count:16];
  if (v20)
  {
    v73 = *v87;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v87 != v73)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v86 + 1) + 8 * j);
        v23 = [v22 parentOp];
        OpData = getOpData(v23);

        v27 = *(OpData + 32);
        v26 = (OpData + 32);
        v25 = v27;
        if (!v27)
        {
          goto LABEL_23;
        }

        v28 = v26;
        do
        {
          v29 = v25[4];
          v30 = v29 >= v22;
          v31 = v29 < v22;
          if (v30)
          {
            v28 = v25;
          }

          v25 = v25[v31];
        }

        while (v25);
        if (v28 == v26 || v28[4] > v22)
        {
LABEL_23:
        }

        else
        {
          v33 = v28[5];
          v32 = v28[6];

          for (; v33 != v32; ++v33)
          {
            v34 = *v33;
            v35 = v91[0];
            if (!v91[0])
            {
LABEL_42:
              operator new();
            }

            while (1)
            {
              while (1)
              {
                v36 = v35;
                v37 = v35[4];
                if (v34 >= v37)
                {
                  break;
                }

                v35 = *v36;
                if (!*v36)
                {
                  goto LABEL_42;
                }
              }

              if (v37 >= v34)
              {
                break;
              }

              v35 = v36[1];
              if (!v35)
              {
                goto LABEL_42;
              }
            }
          }
        }
      }

      v20 = [obj countByEnumeratingWithState:&v86 objects:v94 count:16];
    }

    while (v20);
  }

  v84 = 0;
  v85 = 0;
  v83 = 0;
  if (v90 != v91)
  {
    v38 = 0;
    v39 = v90;
    do
    {
      v40 = v38;
      v41 = *(v39 + 8);
      if (v41)
      {
        do
        {
          v42 = v41;
          v41 = *v41;
        }

        while (v41);
      }

      else
      {
        do
        {
          v42 = *(v39 + 16);
          v43 = *v42 == v39;
          v39 = v42;
        }

        while (!v43);
      }

      ++v38;
      v39 = v42;
    }

    while (v42 != v91);
    v80 = &v83;
    LOBYTE(v81) = 0;
    if (v40 < 0x1FFFFFFFFFFFFFFFLL)
    {
      operator new();
    }

    std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
  }

  v80 = 0;
  v81 = 0;
  v82 = 0;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v75 = 0;
  v76 = 0;
  __p = 0;
  (*(*v71 + 16))(v71, v69, &v83, &v92, &v80, &v77, &__p);
  v44 = v80;
  v45 = v81;
  if (v81 != v80)
  {
    v46 = 0;
    do
    {
      Autodiff::accumulatePartialGradientOf(v69, WeakRetained, v44[v46], *(v77 + v46), 0);
      ++v46;
      v44 = v80;
      v45 = v81;
    }

    while (v46 < (v81 - v80) >> 3);
  }

  v47 = v83;
  v48 = v84;
  if (v84 != v83)
  {
    v49 = 0;
    do
    {
      Autodiff::accumulatePartialGradientOf(v69, WeakRetained, v47[v49], *(__p + v49), 0);
      ++v49;
      v47 = v83;
      v48 = v84;
    }

    while (v49 < (v84 - v83) >> 3);
    v44 = v80;
    v45 = v81;
  }

  if (v45 != v44)
  {
    v50 = 0;
    do
    {
      Autodiff::recursePartialGrad(v69, WeakRetained, v44[v50++], 1, 0);
      v44 = v80;
    }

    while (v50 < (v81 - v80) >> 3);
    v47 = v83;
    v48 = v84;
  }

  if (v48 != v47)
  {
    v51 = 0;
    do
    {
      Autodiff::recursePartialGrad(v69, WeakRetained, v47[v51++], 1, 0);
      v47 = v83;
    }

    while (v51 < (v84 - v83) >> 3);
  }

  v52 = __p;
  if (__p)
  {
    v53 = v75;
    v54 = __p;
    if (v75 != __p)
    {
      do
      {
        v55 = *(v53 - 1);
        v53 -= 8;
      }

      while (v53 != v52);
      v54 = __p;
    }

    v75 = v52;
    operator delete(v54);
  }

  v56 = v77;
  if (v77)
  {
    v57 = v78;
    v58 = v77;
    if (v78 != v77)
    {
      do
      {
        v59 = *(v57 - 1);
        v57 -= 8;
      }

      while (v57 != v56);
      v58 = v77;
    }

    v78 = v56;
    operator delete(v58);
  }

  v60 = v80;
  if (v80)
  {
    v61 = v81;
    v62 = v80;
    if (v81 != v80)
    {
      do
      {
        v63 = *--v61;
      }

      while (v61 != v60);
      v62 = v80;
    }

    v81 = v60;
    operator delete(v62);
  }

  v64 = v83;
  if (v83)
  {
    v65 = v84;
    v66 = v83;
    if (v84 != v83)
    {
      do
      {
        v67 = *--v65;
      }

      while (v65 != v64);
      v66 = v83;
    }

    v84 = v64;
    operator delete(v66);
  }

  std::__tree<MPSGraphTensor * {__strong}>::destroy(&v90, v91[0]);
  std::__tree<std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>,std::__map_value_compare<MPSGraphTensor * {__strong},std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>,std::less<MPSGraphTensor * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>>>::destroy(&v92, v93[0]);
LABEL_92:
}

void sub_1E075953C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, void *a36, uint64_t a37, char a38, void *a39)
{
  std::vector<MPSGraphTensor * {__strong}>::~vector[abi:ne200100](&a15);
  std::vector<MPSGraphTensor * {__strong}>::~vector[abi:ne200100](&a18);
  std::vector<MPSGraphTensor * {__strong}>::~vector[abi:ne200100](&a21);
  std::vector<MPSGraphTensor * {__strong}>::~vector[abi:ne200100](&a24);
  std::__tree<MPSGraphTensor * {__strong}>::destroy(&a35, a36);
  std::__tree<std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>,std::__map_value_compare<MPSGraphTensor * {__strong},std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>,std::less<MPSGraphTensor * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>>>::destroy(&a38, a39);

  _Unwind_Resume(a1);
}

void sub_1E0759890(_Unwind_Exception *a1)
{
  v8 = v7;

  _Unwind_Resume(a1);
}

void sub_1E075A660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, void *a18, void *a19, void *a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, void *a30, void *a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (v50)
  {
    operator delete(v50);
  }

  if (__p)
  {
    operator delete(__p);
  }

  mlir::Block::~Block((v52 - 256));
  if (a33)
  {
    operator delete(a33);
  }

  mlir::Block::~Block((v52 - 176));
  if (a36)
  {
    operator delete(a36);
  }

  _Unwind_Resume(a1);
}

uint64_t mlir::OpBuilder::create<mlir::scf::WhileOp,std::vector<mlir::Type> &,std::vector<mlir::Value> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v20[5] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    v19 = 1283;
    v18[2] = "scf.while";
    v18[3] = 9;
    v16 = 259;
    llvm::operator+(v18, &v15, v20);
    llvm::report_fatal_error(v20, 1);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::ValueRange::ValueRange(v20, *a3, (a3[1] - *a3) >> 3);
  mlir::ValueRange::ValueRange(v18, *a4, (a4[1] - *a4) >> 3);
  mlir::scf::WhileOp::build(a1, v17, v20[0], v20[1], v18[0], v18[1], 0, 0);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

void sub_1E075AA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E075AA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E075ADE8(_Unwind_Exception *a1)
{
  v8 = v7;

  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<MPSGraphBlock * {__strong},AutodiffSaveTemps::BlockInfos>,std::__map_value_compare<MPSGraphBlock * {__strong},std::__value_type<MPSGraphBlock * {__strong},AutodiffSaveTemps::BlockInfos>,std::less<MPSGraphBlock * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphBlock * {__strong},AutodiffSaveTemps::BlockInfos>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<MPSGraphBlock * {__strong},AutodiffSaveTemps::BlockInfos>,std::__map_value_compare<MPSGraphBlock * {__strong},std::__value_type<MPSGraphBlock * {__strong},AutodiffSaveTemps::BlockInfos>,std::less<MPSGraphBlock * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphBlock * {__strong},AutodiffSaveTemps::BlockInfos>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<MPSGraphBlock * {__strong},AutodiffSaveTemps::BlockInfos>,std::__map_value_compare<MPSGraphBlock * {__strong},std::__value_type<MPSGraphBlock * {__strong},AutodiffSaveTemps::BlockInfos>,std::less<MPSGraphBlock * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphBlock * {__strong},AutodiffSaveTemps::BlockInfos>>>::destroy(a1, a2[1]);
    std::__tree<MPSGraphTensor * {__strong}>::destroy((a2 + 21), a2[22]);
    std::__tree<std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>,std::__map_value_compare<MPSGraphTensor * {__strong},std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>,std::less<MPSGraphTensor * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>>>::destroy((a2 + 18), a2[19]);
    std::__tree<MPSGraphTensor * {__strong}>::destroy((a2 + 15), a2[16]);
    std::__tree<std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>,std::__map_value_compare<MPSGraphTensor * {__strong},std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>,std::less<MPSGraphTensor * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>>>::destroy((a2 + 12), a2[13]);
    std::__tree<MPSGraphTensor * {__strong}>::destroy((a2 + 9), a2[10]);
    std::__tree<MPSGraphTensor * {__strong}>::destroy((a2 + 6), a2[7]);

    operator delete(a2);
  }
}

void AutodiffSaveTemps::BlockInfos::~BlockInfos(AutodiffSaveTemps::BlockInfos *this)
{
  std::__tree<MPSGraphTensor * {__strong}>::destroy(this + 128, *(this + 17));
  std::__tree<std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>,std::__map_value_compare<MPSGraphTensor * {__strong},std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>,std::less<MPSGraphTensor * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>>>::destroy(this + 104, *(this + 14));
  std::__tree<MPSGraphTensor * {__strong}>::destroy(this + 80, *(this + 11));
  std::__tree<std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>,std::__map_value_compare<MPSGraphTensor * {__strong},std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>,std::less<MPSGraphTensor * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>>>::destroy(this + 56, *(this + 8));
  std::__tree<MPSGraphTensor * {__strong}>::destroy(this + 32, *(this + 5));
  std::__tree<MPSGraphTensor * {__strong}>::destroy(this + 8, *(this + 2));
}

void std::__tree<std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>,std::__map_value_compare<MPSGraphTensor * {__strong},std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>,std::less<MPSGraphTensor * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>,std::__map_value_compare<MPSGraphTensor * {__strong},std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>,std::less<MPSGraphTensor * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>,std::__map_value_compare<MPSGraphTensor * {__strong},std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>,std::less<MPSGraphTensor * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void std::__tree<MPSGraphTensor * {__strong}>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<MPSGraphTensor * {__strong}>::destroy(a1, *a2);
    std::__tree<MPSGraphTensor * {__strong}>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void AutodiffIfData::~AutodiffIfData(AutodiffIfData *this)
{
  *this = &unk_1F5B4B108;
  std::__tree<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,std::__map_value_compare<MPSGraphBlock * {__strong},std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,std::less<MPSGraphBlock * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>>>::destroy(*(this + 4));
}

{
  *this = &unk_1F5B4B108;
  std::__tree<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,std::__map_value_compare<MPSGraphBlock * {__strong},std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,std::less<MPSGraphBlock * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>>>::destroy(*(this + 4));

  JUMPOUT(0x1E12E5B90);
}

void AutodiffIfData::buildGrad(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t *a7)
{
  v82 = *MEMORY[0x1E69E9840];
  v50 = *(a1 + 8);
  v8 = *a4;
  if (*a4 != a4 + 1)
  {
    v9 = v8[4];
    v8[5];
    v10 = v9;
    [*(a1 + 8) outputTensors];
    [objc_claimAutoreleasedReturnValue() indexOfObject:v10];
    operator new();
  }

  std::__sort<std::__less<unsigned long,unsigned long> &,unsigned long *>();
  v55 = [*(a1 + 8) inputTensors];
  v11 = [v55 objectAtIndexedSubscript:0];
  WeakRetained = objc_loadWeakRetained(v11 + 2);
  v13 = [WeakRetained inputTensors];
  v14 = [v13 objectAtIndexedSubscript:0];
  v15 = objc_loadWeakRetained(v14 + 2);
  v16 = [v15 inputTensors];
  v51 = [v16 objectAtIndexedSubscript:0];

  v17 = *(a1 + 16);
  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3321888768;
  v72[2] = ___ZN14AutodiffIfData9buildGradEP8AutodiffRKNSt3__16vectorIU8__strongP14MPSGraphTensorNS2_9allocatorIS6_EEEERKNS2_3mapIS6_S6_NS2_4lessIS6_EENS7_INS2_4pairIU8__strongKS5_S6_EEEEEERS9_SM_SM__block_invoke;
  v72[3] = &unk_1F5B4B148;
  v74 = a1;
  v75 = a2;
  v73 = v50;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v79 = a3;
  v80 = a4;
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3321888768;
  v63[2] = ___ZN14AutodiffIfData9buildGradEP8AutodiffRKNSt3__16vectorIU8__strongP14MPSGraphTensorNS2_9allocatorIS6_EEEERKNS2_3mapIS6_S6_NS2_4lessIS6_EENS7_INS2_4pairIU8__strongKS5_S6_EEEEEERS9_SM_SM__block_invoke_198;
  v63[3] = &unk_1F5B4B148;
  v65 = a1;
  v66 = a2;
  v48 = v73;
  v64 = v48;
  __p = 0;
  v68 = 0;
  v69 = 0;
  v70 = a3;
  v71 = a4;
  [v17 ifWithPredicateTensor:v51 thenBlock:v72 elseBlock:v63 name:0];
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  obja = v60 = 0u;
  v18 = [obja countByEnumeratingWithState:&v59 objects:v81 count:16];
  if (v18)
  {
    v19 = *v60;
    v54 = *v60;
    do
    {
      v20 = 0;
      v56 = v18;
      do
      {
        if (*v60 != v19)
        {
          objc_enumerationMutation(obja);
        }

        v22 = *(*(&v59 + 1) + 8 * v20);
        v24 = a7[1];
        v23 = a7[2];
        if (v24 < v23)
        {
          *v24 = v22;
          v21 = (v24 + 1);
        }

        else
        {
          v25 = v24 - *a7;
          v26 = v25 >> 3;
          v27 = (v25 >> 3) + 1;
          if (v27 >> 61)
          {
            std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
          }

          v28 = v23 - *a7;
          v29 = v28 >> 2;
          if (v28 >> 2 <= v27)
          {
            v29 = (v25 >> 3) + 1;
          }

          if (v28 >= 0x7FFFFFFFFFFFFFF8)
          {
            v30 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v30 = v29;
          }

          if (v30)
          {
            if (!(v30 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v31 = v22;
          v32 = *a7;
          v33 = a7[1];
          v34 = 8 * v26 - (v33 - *a7);
          *(8 * v26) = v31;
          v21 = 8 * v26 + 8;
          v35 = v33 - v32;
          if (v33 != v32)
          {
            v36 = v35 - 8;
            v37 = v32;
            v38 = v34;
            if ((v35 - 8) < 0x38)
            {
              goto LABEL_42;
            }

            if (v32 < v25 + (v36 & 0xFFFFFFFFFFFFFFF8) - v35 + 8)
            {
              v37 = v32;
              v38 = v34;
              if (v34 < v32 + (v36 & 0xFFFFFFFFFFFFFFF8) + 8)
              {
                goto LABEL_42;
              }
            }

            v39 = v35 >> 3;
            v40 = (v36 >> 3) + 1;
            v41 = v40 & 0x3FFFFFFFFFFFFFFCLL;
            v37 = &v32[v41];
            v38 = (v34 + v41 * 8);
            v42 = (-8 * v39 + 8 * v26 + 16);
            v43 = (v32 + 2);
            v44 = v40 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v45 = *(v43 - 1);
              v46 = *v43;
              *(v43 - 1) = 0uLL;
              *v43 = 0uLL;
              *(v42 - 1) = v45;
              *v42 = v46;
              v42 += 2;
              v43 += 2;
              v44 -= 4;
            }

            while (v44);
            if (v40 != (v40 & 0x3FFFFFFFFFFFFFFCLL))
            {
LABEL_42:
              do
              {
                v47 = *v37;
                *v37++ = 0;
                *v38++ = v47;
              }

              while (v37 != v33);
            }

            do
            {
            }

            while (v32 != v33);
            v32 = *a7;
          }

          *a7 = v34;
          a7[1] = v21;
          a7[2] = 0;
          v19 = v54;
          v18 = v56;
          if (v32)
          {
            operator delete(v32);
          }
        }

        a7[1] = v21;
        ++v20;
      }

      while (v20 != v18);
      v18 = [obja countByEnumeratingWithState:&v59 objects:v81 count:16];
    }

    while (v18);
  }

  if (__p)
  {
    v68 = __p;
    operator delete(__p);
  }

  if (v76)
  {
    v77 = v76;
    operator delete(v76);
  }
}

void sub_1E075C858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a47)
  {
    operator delete(a47);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

uint64_t AutodiffIfData::recurseForUsesFromOpOutput(id *this, Autodiff *a2, MPSGraphTensor *a3)
{
  v5 = a3;
  v6 = this[1];
  v7 = [this[1] outputTensors];
  v8 = [v7 indexOfObject:v5];

  v9 = [*(*(this[1] + 5) + 8) objectAtIndexedSubscript:0];
  v10 = [*(*(this[1] + 5) + 8) objectAtIndexedSubscript:1];
  v11 = [v6[14] objectAtIndexedSubscript:v8];
  v12 = Autodiff::recurseForUses(a2, v9, v11);

  v13 = [v6[13] objectAtIndexedSubscript:v8];
  LOBYTE(a2) = Autodiff::recurseForUses(a2, v10, v13);

  return (v12 | a2) & 1;
}

void AutodiffIfData::extractValues(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v86 = *MEMORY[0x1E69E9840];
  v61 = *(a1 + 8);
  v71[0] = mlir::Attribute::getContext((v61[8] + 24));
  v71[1] = 0;
  v72 = 0;
  v73 = 0;
  v70 = &unk_1F5B4B188;
  v67 = v61;
  v65 = v67;
  WeakRetained = objc_loadWeakRetained(v67 + 1);
  v66 = &unk_1F5B4B208;
  v69 = a2;
  v5 = v67[8];
  obj = *(WeakRetained + 22);
  v64 = obj;
  v62 = *(*(WeakRetained + 7) + 16);
  v6 = v67;
  v7 = v5[9];
  if (v7)
  {
    v8 = (v5 - 4);
  }

  else
  {
    v8 = 0;
  }

  v84 = v8;
  v85 = v7;
  mlir::OperandRange::getTypes(&v84, v82);
  v9 = v82[1];
  v10 = v5[9];
  if (v10)
  {
    v11 = (v5 - 4);
  }

  else
  {
    v11 = 0;
  }

  v84 = v11;
  v85 = v10;
  mlir::OperandRange::getTypes(&v84, v82);
  v75 = 0;
  v76 = 0;
  __p = 0;
  if (v83 != v9)
  {
    if (!((v83 - v9) >> 61))
    {
      operator new();
    }

    std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
  }

  v13 = *(v5 + 2);
  v14 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(v5, v12) + 8);
  v72 = v13;
  v73 = v14;
  v15 = *(WeakRetained + 7);
  v16 = *(v5 + 2);
  v18 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v5, v17);
  *(v15 + 16) = v16;
  *(v15 + 24) = v18;
  v19 = objc_loadWeakRetained(v67 + 6);
  v20 = *(WeakRetained + 22);
  *(WeakRetained + 22) = v19;

  (*v66)(&v66, &__p);
  v21 = *(v5 + 3);
  v22 = *(*(v5 + 9) + 24);
  v77 = v21;
  Context = mlir::Attribute::getContext(&v77);
  v24 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id, Context);
  if ((v25 & 1) == 0)
  {
    v81 = 1283;
    v80[2] = "scf.if";
    v80[3] = 6;
    v79 = 259;
    llvm::operator+(v80, &v78, &v84);
    llvm::report_fatal_error(&v84, 1);
  }

  mlir::OperationState::OperationState(v82, v21, v24);
  mlir::ValueRange::ValueRange(&v84, __p, (v75 - __p) >> 3);
  mlir::scf::IfOp::build(v71, v82, v84, v85, v22, 1);
  v26 = mlir::OpBuilder::create(v71, v82);
  v27 = *(*(v26 + 48) + 16);
  mlir::OperationState::~OperationState(v82);
  if (v27 == &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  mlir::Region::takeBody((((v28 + 64 + 16 * ((*(v28 + 44) >> 23) & 1) + ((*(v28 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v28 + 40)), (((&v5[4 * ((v5[11] >> 23) & 1) + 17] + ((v5[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v5[10]));
  mlir::Region::takeBody((((v28 + 64 + 16 * ((*(v28 + 44) >> 23) & 1) + ((*(v28 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v28 + 40) + 24), (((&v5[4 * ((v5[11] >> 23) & 1) + 17] + ((v5[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v5[10] + 24));
  AddInputsRewrite::replaceOp(&v67, v5, v28, v6[2]);
  v29 = *(((v28 + 64 + 16 * ((*(v28 + 44) >> 23) & 1) + ((*(v28 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v28 + 40) + 8);
  if (v29)
  {
    v30 = (v29 - 8);
  }

  else
  {
    v30 = 0;
  }

  v31 = [*(v67[5] + 1) objectAtIndexedSubscript:0];
  Terminator = mlir::Block::getTerminator(v30, v32);
  v34 = *(WeakRetained + 7);
  v35 = *(Terminator + 16);
  v37 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(Terminator, v36);
  *(v34 + 16) = v35;
  *(v34 + 24) = v37;
  objc_storeStrong(WeakRetained + 22, v31);
  v38 = [v6[14] mutableCopy];
  v66[1](&v66, v38);
  objc_storeStrong(v6 + 14, v38);
  AddInputsRewrite::extendBlockTermOp(&v70, v30, v38, 0);
  v39 = *(((v28 + 64 + 16 * ((*(v28 + 44) >> 23) & 1) + ((*(v28 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v28 + 40) + 32);
  if (v39)
  {
    v40 = (v39 - 8);
  }

  else
  {
    v40 = 0;
  }

  v41 = [*(v67[5] + 1) objectAtIndexedSubscript:1];
  v43 = mlir::Block::getTerminator(v40, v42);
  v44 = *(WeakRetained + 7);
  v45 = *(v43 + 16);
  v47 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v43, v46);
  *(v44 + 16) = v45;
  *(v44 + 24) = v47;
  objc_storeStrong(WeakRetained + 22, v41);
  v48 = [v6[13] mutableCopy];
  v66[2](&v66, v48);
  objc_storeStrong(v6 + 13, v48);
  AddInputsRewrite::extendBlockTermOp(&v70, v40, v48, 0);
  v49 = WeakRetained;
  v50 = *(WeakRetained + 7);
  if (v62)
  {
    *(v50 + 16) = v62;
  }

  else
  {
    *(v50 + 16) = 0;
    *(v50 + 24) = 0;
    v49 = WeakRetained;
  }

  objc_storeStrong(v49 + 22, obj);

  if (__p)
  {
    v75 = __p;
    operator delete(__p);
  }

  MPSGraphDelegateCompiler.precompilationDescriptor.modify(&v70, v51);
  v53 = *v69;
  v52 = v69[1];
  v54 = (v52 - *v69) >> 3;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  std::vector<MPSGraphTensor * {__strong}>::reserve(a3, v54);
  if (v52 != v53)
  {
    if (v54 <= 1)
    {
      v55 = 1;
    }

    else
    {
      v55 = v54;
    }

    v56 = -v54;
    do
    {
      v57 = [v67[3] objectAtIndexedSubscript:{v56 + objc_msgSend(v67[3], "count")}];
      v82[0] = v57;
      v58 = a3[1];
      if (v58 >= a3[2])
      {
        v60 = std::vector<MPSGraphTensor * {__strong}>::__emplace_back_slow_path<MPSGraphTensor * {__strong}>(a3, v82);
        v59 = v82[0];
      }

      else
      {
        v59 = 0;
        v82[0] = 0;
        *v58 = v57;
        v60 = (v58 + 1);
      }

      a3[1] = v60;

      ++v56;
      --v55;
    }

    while (v55);
  }
}

void sub_1E075D33C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  std::vector<MPSGraphTensor * {__strong}>::~vector[abi:ne200100](v40);

  _Unwind_Resume(a1);
}

void AutodiffIfData::injectValues(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = a1;
  WeakRetained = objc_loadWeakRetained((*(a1 + 8) + 8));
  v60 = *(WeakRetained[7] + 16);

  v7 = objc_loadWeakRetained((*(v4 + 8) + 8));
  v61 = v7[22];

  a3[1] = 0;
  a3[2] = 0;
  *a3 = a3 + 1;
  v8 = *a2;
  v62 = a2 + 1;
  v63 = a3 + 1;
  if (*a2 != a2 + 1)
  {
    v66 = v4;
    do
    {
      std::pair<MPSGraphBlock * const {__strong},std::vector<MPSGraphTensor * {__strong}>>::pair[abi:ne200100](&v73, (v8 + 4));
      v64 = v8;
      v9 = v73;
      v10 = v73;
      __p = 0;
      v71 = 0;
      v72 = 0;
      v11 = objc_loadWeakRetained((*(v4 + 8) + 8));
      v12 = v11[7];
      v65 = v10;
      v13 = *(v10 + 3);
      v14 = *(v13 + 40);
      *(v12 + 16) = v13;
      *(v12 + 24) = v14;

      v15 = objc_loadWeakRetained((*(v4 + 8) + 8));
      objc_storeStrong(v15 + 22, v9);

      v17 = v74;
      v16 = v75;
      if (v74 == v75)
      {
        v19 = 0;
      }

      else
      {
        v18 = 0;
        v67 = v75;
        do
        {
          v20 = *v17;
          v21 = objc_loadWeakRetained((*(v4 + 8) + 8));
          v69 = v20;
          v22 = [v21 popBackFromList:v20 outputList:&v69 name:0];
          v23 = v69;

          if (v18 < v72)
          {
            *v18 = v22;
            v19 = v18 + 8;
          }

          else
          {
            v68 = v23;
            v24 = __p;
            v25 = v18 - __p;
            v26 = (v18 - __p) >> 3;
            v27 = v26 + 1;
            if ((v26 + 1) >> 61)
            {
              std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
            }

            v28 = v72 - __p;
            if ((v72 - __p) >> 2 > v27)
            {
              v27 = v28 >> 2;
            }

            if (v28 >= 0x7FFFFFFFFFFFFFF8)
            {
              v29 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v29 = v27;
            }

            if (v29)
            {
              if (!(v29 >> 61))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v30 = (8 * v26);
            *v30 = v22;
            v19 = (v30 + 1);
            if (v24 != v18)
            {
              v31 = v25 - 8;
              v32 = v24;
              v33 = 0;
              if ((v25 - 8) < 0x28)
              {
                goto LABEL_62;
              }

              if (v24 < (v31 & 0xFFFFFFFFFFFFFFF8) + 8)
              {
                v32 = v24;
                v33 = 0;
                if (&v24[v31 & 0xFFFFFFFFFFFFFFF8] != -8)
                {
                  goto LABEL_62;
                }
              }

              v34 = (v31 >> 3) + 1;
              v33 = (8 * (v34 & 0x3FFFFFFFFFFFFFFCLL));
              v32 = v33 + v24;
              v35 = 16;
              v36 = (v24 + 16);
              v37 = v34 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v38 = *(v36 - 1);
                v39 = *v36;
                *(v36 - 1) = 0uLL;
                *v36 = 0uLL;
                *(v35 - 16) = v38;
                *v35 = v39;
                v35 += 32;
                v36 += 2;
                v37 -= 4;
              }

              while (v37);
              if (v34 != (v34 & 0x3FFFFFFFFFFFFFFCLL))
              {
LABEL_62:
                do
                {
                  v40 = *v32;
                  *v32 = 0;
                  v32 += 8;
                  *v33++ = v40;
                }

                while (v32 != v18);
              }

              v41 = v24;
              do
              {
                v42 = *v41++;
              }

              while (v41 != v18);
            }

            __p = 0;
            v72 = 0;
            if (v24)
            {
              operator delete(v24);
            }

            v4 = v66;
            v16 = v67;
            v23 = v68;
          }

          v71 = v19;

          ++v17;
          v18 = v19;
        }

        while (v17 != v16);
      }

      v43 = v64;
      v44 = *v63;
      if (!*v63)
      {
LABEL_38:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v45 = v44;
          v46 = v44[4];
          if (v65 >= v46)
          {
            break;
          }

          v44 = *v45;
          if (!*v45)
          {
            goto LABEL_38;
          }
        }

        if (v46 >= v65)
        {
          break;
        }

        v44 = v45[1];
        if (!v44)
        {
          goto LABEL_38;
        }
      }

      v47 = __p;
      if (__p)
      {
        if (v19 != __p)
        {
          do
          {
            v48 = *(v19 - 1);
            v19 -= 8;
          }

          while (v19 != v47);
        }

        operator delete(v47);
      }

      v49 = v74;
      if (v74)
      {
        v50 = v75;
        v51 = v74;
        if (v75 != v74)
        {
          do
          {
            v52 = *--v50;
          }

          while (v50 != v49);
          v51 = v74;
        }

        v75 = v49;
        operator delete(v51);
      }

      v53 = v64[1];
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
          v54 = v43[2];
          v55 = *v54 == v43;
          v43 = v54;
        }

        while (!v55);
      }

      v8 = v54;
    }

    while (v54 != v62);
  }

  v56 = objc_loadWeakRetained((*(v4 + 8) + 8));
  v57 = v56[7];
  if (v60)
  {
    *(v57 + 16) = v60;
  }

  else
  {
    *(v57 + 16) = 0;
    *(v57 + 24) = 0;
  }

  v58 = objc_loadWeakRetained((*(v4 + 8) + 8));
  v59 = v58[22];
  v58[22] = v61;
}

void sub_1E075D9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void **a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void *);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  std::vector<MPSGraphTensor * {__strong}>::~vector[abi:ne200100](va);

  std::pair<MPSGraphBlock * const {__strong},std::vector<MPSGraphTensor * {__strong}>>::~pair(va1);
  std::__tree<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,std::__map_value_compare<MPSGraphBlock * {__strong},std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,std::less<MPSGraphBlock * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>>>::destroy(*a7);

  _Unwind_Resume(a1);
}

void AutodiffOpData::~AutodiffOpData(AutodiffOpData *this)
{
  *this = &unk_1F5B4B108;
  std::__tree<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,std::__map_value_compare<MPSGraphBlock * {__strong},std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,std::less<MPSGraphBlock * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>>>::destroy(*(this + 4));
}

id ___ZN14AutodiffIfData9buildGradEP8AutodiffRKNSt3__16vectorIU8__strongP14MPSGraphTensorNS2_9allocatorIS6_EEEERKNS2_3mapIS6_S6_NS2_4lessIS6_EENS7_INS2_4pairIU8__strongKS5_S6_EEEEEERS9_SM_SM__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(*(*(v2 + 8) + 40) + 8) objectAtIndexedSubscript:0];
  v4 = *(a1 + 48);
  v5 = *(*(a1 + 32) + 112);
  v6 = *(a1 + 80);
  v25 = 0;
  v26 = 0;
  __p = 0;
  v7 = *v6;
  v8 = v6[1];
  p_p = &__p;
  v28 = 0;
  if (v8 != v7)
  {
    if (((v8 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
  }

  v9 = *(a1 + 88);
  v23[0] = 0;
  v23[1] = 0;
  v22 = v23;
  v12 = *v9;
  v10 = v9 + 1;
  v11 = v12;
  if (v12 != v10)
  {
    do
    {
      std::__tree<std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>,std::__map_value_compare<MPSGraphTensor * {__strong},std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>,std::less<MPSGraphTensor * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>>>::__emplace_hint_unique_key_args<MPSGraphTensor * {__strong},std::pair<MPSGraphTensor * const {__strong},MPSGraphTensor * {__strong}> const&>(&v22, v23, v11[4]);
      v19 = v11[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v11[2];
          v21 = *v20 == v11;
          v11 = v20;
        }

        while (!v21);
      }

      v11 = v20;
    }

    while (v20 != v10);
  }

  v13 = AutodiffIfData::gradsForBlock(v2, v4, v3, v5, (a1 + 56), &__p, &v22);
  std::__tree<std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>,std::__map_value_compare<MPSGraphTensor * {__strong},std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>,std::less<MPSGraphTensor * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>>>::destroy(&v22, v23[0]);
  v14 = __p;
  if (__p)
  {
    v15 = v25;
    v16 = __p;
    if (v25 != __p)
    {
      do
      {
        v17 = *(v15 - 1);
        v15 -= 8;
      }

      while (v15 != v14);
      v16 = __p;
    }

    v25 = v14;
    operator delete(v16);
  }

  return v13;
}

void sub_1E075DC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12)
{
  std::__tree<std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>,std::__map_value_compare<MPSGraphTensor * {__strong},std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>,std::less<MPSGraphTensor * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>>>::destroy(&a9, a10);
  std::vector<MPSGraphTensor * {__strong}>::~vector[abi:ne200100](&a12);

  _Unwind_Resume(a1);
}

id AutodiffIfData::gradsForBlock(uint64_t a1, Autodiff *a2, void *a3, void *a4, uint64_t **a5, uint64_t *a6, uint64_t a7)
{
  v12 = a3;
  v42 = a4;
  BlockEscapeds = getBlockEscapeds(v12);
  v14 = v13;
  v40 = v12;
  v44 = [MEMORY[0x1E695E0F0] mutableCopy];
  v38 = v14;
  v39 = a2;
  v43 = [MEMORY[0x1E695E0F0] mutableCopy];
  v16 = *a5;
  v15 = a5[1];
  if (*a5 != v15)
  {
    v17 = (a7 + 8);
    do
    {
      v18 = *v16;
      v19 = [v42 objectAtIndexedSubscript:*v16];
      [v44 addObject:v19];

      v20 = [*(a1 + 8) outputTensors];
      v21 = [v20 objectAtIndexedSubscript:v18];
      v22 = v21;
      v23 = *v17;
      if (!*v17)
      {
LABEL_9:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v24 = v23;
          v25 = v23[4];
          if (v21 >= v25)
          {
            break;
          }

          v23 = *v24;
          if (!*v24)
          {
            goto LABEL_9;
          }
        }

        if (v25 >= v21)
        {
          break;
        }

        v23 = v24[1];
        if (!v23)
        {
          goto LABEL_9;
        }
      }

      [v43 addObject:v24[5]];

      ++v16;
    }

    while (v16 != v15);
  }

  Autodiff::computeGradsForBlock(v39, v12, v44, v43);
  v26 = [MEMORY[0x1E695E0F0] mutableCopy];
  v27 = *a6;
  if (a6[1] != *a6)
  {
    if (v38)
    {
      v28 = 0;
      do
      {
        v29 = *(v27 + 8 * v28);
        v30 = v29;
        v31 = 8 * v38;
        v32 = BlockEscapeds;
        while (*v32 != v29)
        {
          ++v32;
          v31 -= 8;
          if (!v31)
          {
            v32 = (BlockEscapeds + 8 * v38);
            break;
          }
        }

        if ((v32 - BlockEscapeds) == (8 * v38) || (Autodiff::getGradientOf(v39, v40, v29), (v33 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v33 = Autodiff::getFilledLike(v39, v30, 0.0, &cfstr_Ifescaped0.isa);
        }

        [v26 addObject:v33];

        ++v28;
        v27 = *a6;
      }

      while (v28 < (a6[1] - *a6) >> 3);
    }

    else
    {
      v34 = 0;
      do
      {
        v35 = *(v27 + 8 * v34);
        v36 = Autodiff::getFilledLike(v39, v35, 0.0, &cfstr_Ifescaped0.isa);
        [v26 addObject:v36];

        ++v34;
        v27 = *a6;
      }

      while (v34 < (a6[1] - *a6) >> 3);
    }
  }

  return v26;
}

void *__copy_helper_block_ea8_56c39_ZTSNSt3__16vectorImNS_9allocatorImEEEE(void *result, uint64_t a2)
{
  result[7] = 0;
  result[8] = 0;
  result[9] = 0;
  v3 = *(a2 + 56);
  v2 = *(a2 + 64);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1E075E130(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_56c39_ZTSNSt3__16vectorImNS_9allocatorImEEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }
}

id ___ZN14AutodiffIfData9buildGradEP8AutodiffRKNSt3__16vectorIU8__strongP14MPSGraphTensorNS2_9allocatorIS6_EEEERKNS2_3mapIS6_S6_NS2_4lessIS6_EENS7_INS2_4pairIU8__strongKS5_S6_EEEEEERS9_SM_SM__block_invoke_198(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(*(*(v2 + 8) + 40) + 8) objectAtIndexedSubscript:1];
  v4 = *(a1 + 48);
  v5 = *(*(a1 + 32) + 104);
  v6 = *(a1 + 80);
  v25 = 0;
  v26 = 0;
  __p = 0;
  v7 = *v6;
  v8 = v6[1];
  p_p = &__p;
  v28 = 0;
  if (v8 != v7)
  {
    if (((v8 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
  }

  v9 = *(a1 + 88);
  v23[0] = 0;
  v23[1] = 0;
  v22 = v23;
  v12 = *v9;
  v10 = v9 + 1;
  v11 = v12;
  if (v12 != v10)
  {
    do
    {
      std::__tree<std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>,std::__map_value_compare<MPSGraphTensor * {__strong},std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>,std::less<MPSGraphTensor * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>>>::__emplace_hint_unique_key_args<MPSGraphTensor * {__strong},std::pair<MPSGraphTensor * const {__strong},MPSGraphTensor * {__strong}> const&>(&v22, v23, v11[4]);
      v19 = v11[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v11[2];
          v21 = *v20 == v11;
          v11 = v20;
        }

        while (!v21);
      }

      v11 = v20;
    }

    while (v20 != v10);
  }

  v13 = AutodiffIfData::gradsForBlock(v2, v4, v3, v5, (a1 + 56), &__p, &v22);
  std::__tree<std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>,std::__map_value_compare<MPSGraphTensor * {__strong},std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>,std::less<MPSGraphTensor * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>>>::destroy(&v22, v23[0]);
  v14 = __p;
  if (__p)
  {
    v15 = v25;
    v16 = __p;
    if (v25 != __p)
    {
      do
      {
        v17 = *(v15 - 1);
        v15 -= 8;
      }

      while (v15 != v14);
      v16 = __p;
    }

    v25 = v14;
    operator delete(v16);
  }

  return v13;
}

void sub_1E075E358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12)
{
  std::__tree<std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>,std::__map_value_compare<MPSGraphTensor * {__strong},std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>,std::less<MPSGraphTensor * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>>>::destroy(&a9, a10);
  std::vector<MPSGraphTensor * {__strong}>::~vector[abi:ne200100](&a12);

  _Unwind_Resume(a1);
}

uint64_t getBlockEscapeds(MPSGraphBlock *a1)
{
  v1 = a1;
  v2 = [(MPSGraphBlock *)v1 parentOp];
  OpData = getOpData(v2);

  v6 = *(OpData + 32);
  v5 = OpData + 32;
  v4 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v5;
  do
  {
    v8 = *(v4 + 32);
    v9 = v8 >= v1;
    v10 = v8 < v1;
    if (v9)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * v10);
  }

  while (v4);
  if (v7 != v5 && *(v7 + 32) <= v1)
  {
    v11 = *(v7 + 40);
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  return v11;
}

void ***std::__exception_guard_exceptions<std::vector<MPSGraphTensor * {__strong}>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***result)
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
          v6 = *(v4 - 1);
          v4 -= 8;
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void *std::__tree<std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>,std::__map_value_compare<MPSGraphTensor * {__strong},std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>,std::less<MPSGraphTensor * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>>>::__emplace_hint_unique_key_args<MPSGraphTensor * {__strong},std::pair<MPSGraphTensor * const {__strong},MPSGraphTensor * {__strong}> const&>(void *result, void *a2, unint64_t a3)
{
  v3 = result + 1;
  if (result + 1 == a2 || (v4 = a2[4], v4 > a3))
  {
    v5 = *a2;
    if (*result == a2)
    {
      v7 = a2;
      goto LABEL_16;
    }

    if (v5)
    {
      v6 = *a2;
      do
      {
        v7 = v6;
        v6 = v6[1];
      }

      while (v6);
    }

    else
    {
      v11 = a2;
      do
      {
        v7 = v11[2];
        v12 = *v7 == v11;
        v11 = v7;
      }

      while (v12);
    }

    if (v7[4] < a3)
    {
LABEL_16:
      if (v5)
      {
        v13 = v7 + 1;
      }

      else
      {
        v13 = a2;
      }

      if (*v13)
      {
        return result;
      }

LABEL_34:
      operator new();
    }

    v14 = *v3;
    if (!*v3)
    {
      goto LABEL_34;
    }

    while (1)
    {
      while (1)
      {
        v15 = v14;
        v16 = v14[4];
        if (v16 <= a3)
        {
          break;
        }

        v14 = *v14;
        if (!*v15)
        {
          goto LABEL_34;
        }
      }

      if (v16 >= a3)
      {
        break;
      }

      v14 = v14[1];
      if (!v14)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    if (v4 >= a3)
    {
      return result;
    }

    v8 = a2[1];
    if (v8)
    {
      do
      {
        v9 = v8;
        v8 = *v8;
        v10 = v9;
      }

      while (v8);
    }

    else
    {
      v10 = a2;
      do
      {
        v17 = v10;
        v10 = v10[2];
      }

      while (*v10 != v17);
    }

    if (v10 == v3)
    {
      goto LABEL_34;
    }

    if (v10[4] > a3)
    {
      goto LABEL_34;
    }

    v18 = *v3;
    if (!*v3)
    {
      goto LABEL_34;
    }

    while (1)
    {
      while (1)
      {
        v19 = v18;
        v20 = v18[4];
        if (v20 <= a3)
        {
          break;
        }

        v18 = *v18;
        if (!*v19)
        {
          goto LABEL_34;
        }
      }

      if (v20 >= a3)
      {
        break;
      }

      v18 = v18[1];
      if (!v18)
      {
        goto LABEL_34;
      }
    }
  }

  return result;
}

void MyPatternRewriter::~MyPatternRewriter(MyPatternRewriter *this, uint64_t a2)
{
  MPSGraphDelegateCompiler.precompilationDescriptor.modify(this, a2);

  JUMPOUT(0x1E12E5B90);
}

void AddIfExtractValuesRewrite::addOpOutputs(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *v2;
  v4 = v2[1];
  if (*v2 != v4)
  {
    do
    {
      v7 = *v3;
      v8 = *(v7[1] + 8);
      Context = mlir::Attribute::getContext((*(*(a1 + 16) + 64) + 24));
      v11 = v8 & 0xFFFFFFFFFFFFFFF8;
      v10 = mlir::detail::TypeUniquer::get<mlir::mpsx::ListType,std::array<mlir::Type,1ul> &>(Context, &v11);
      std::vector<mlir::Type>::push_back[abi:ne200100](a2, &v10);

      ++v3;
    }

    while (v3 != v4);
  }
}

uint64_t mlir::detail::TypeUniquer::get<mlir::mpsx::ListType,std::array<mlir::Type,1ul> &>(mlir::MLIRContext *this, uint64_t *a2)
{
  {
    v8 = llvm::getTypeName<mlir::mpsx::ListType>();
    mlir::detail::TypeIDResolver<mlir::mpsx::ListType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v8, v9);
  }

  v4 = mlir::detail::TypeIDResolver<mlir::mpsx::ListType,void>::resolveTypeID(void)::id;
  v11 = this;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(this);
  v10[0] = v4;
  v10[1] = &v11;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir4mpsx6detail29TypeWithStaticSubtypesStorageILj1EEEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_8ListTypeEJRNSt3__15arrayINS1_4TypeELm1EEEEEENSE_9enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS6_;
  v15[1] = v10;
  v14 = *a2;
  v6 = 0x9DDFEA08EB382D69 * ((8 * ((v14 >> 4) ^ (v14 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v12[0] = &v14;
  v12[1] = v15;
  v13 = &v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, v4, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v6 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mpsx::detail::TypeWithStaticSubtypesStorage<1u> * mlir::StorageUniquer::get<mlir::mpsx::detail::TypeWithStaticSubtypesStorage<1u>,std::array<mlir::Type,1ul> &>(llvm::function_ref<void ()(mlir::mpsx::detail::TypeWithStaticSubtypesStorage<1u> *)>,mlir::TypeID,std::array<mlir::Type,1ul> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mpsx::detail::TypeWithStaticSubtypesStorage<1u> * mlir::StorageUniquer::get<mlir::mpsx::detail::TypeWithStaticSubtypesStorage<1u>,std::array<mlir::Type,1ul> &>(llvm::function_ref<void ()(mlir::mpsx::detail::TypeWithStaticSubtypesStorage<1u> *)>,mlir::TypeID,std::array<mlir::Type,1ul> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

void AddIfExtractValuesRewrite::addBlockOutputs(uint64_t a1, void *a2, int a3)
{
  v17 = a2;
  v5 = *(*(a1 + 8) + 64);
  v6 = *(((v5 + 16 * ((*(v5 + 44) >> 23) & 1) + ((*(v5 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v5 + 40) + 24 * (a3 ^ 1u) + 8);
  if (v6)
  {
    v7 = v6 - 8;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 24);
  v9 = *v8;
  v10 = v8[1];
  if (*v8 != v10)
  {
    do
    {
      v11 = *v9;
      ParentBlock = mlir::Value::getParentBlock((v11 + 1));
      v13 = *(a1 + 16);
      v14 = getMPSGraphType((*(v11[1] + 8) & 0xFFFFFFFFFFFFFFF8));
      v15 = [v13 makeListWithElementType:v14 maxSize:1 name:0];

      if (ParentBlock == v7)
      {
        v16 = [*(a1 + 16) pushBackToList:v15 element:v11 name:0];

        v15 = v16;
      }

      [v17 addObject:v15];

      ++v9;
    }

    while (v9 != v10);
  }
}

void AddInputsRewrite::replaceOp(uint64_t *a1, unsigned int *a2, uint64_t a3, void *a4)
{
  v33 = a4;
  v34 = a1;
  v7 = [*(*a1 + 24) mutableCopy];
  obj = a4;
  if (*(a3 + 36))
  {
    v8 = 0;
    v9 = a3 + 24;
    v10 = a3 - 16;
    do
    {
      if (v8 >= 6)
      {
        v11 = v9;
      }

      else
      {
        v11 = v10;
      }

      if ([v7 count] <= v8)
      {
        v13 = [MPSGraphTensor alloc];
        v15 = *v34;
        v14 = v34[1];
        WeakRetained = objc_loadWeakRetained((*v34 + 48));
        v16 = [(MPSGraphTensor *)v13 initTensorWithOperation:v15 value:v11 graph:v14 parentBlock:WeakRetained name:0];
        [v7 addObject:v16];
      }

      else
      {
        WeakRetained = [v7 objectAtIndexedSubscript:v8];
        WeakRetained[1] = v11;
      }

      ++v8;
      v9 -= 24;
      v10 -= 16;
    }

    while (v8 < *(a3 + 36));
  }

  v17 = *v34;
  *(v17 + 64) = a3;
  objc_storeStrong((v17 + 16), obj);
  objc_storeStrong((*v34 + 24), v7);
  v18 = a2[9];
  if (v18)
  {
    for (i = 0; i != v18; ++i)
    {
      v20 = 4 * ~i;
      v21 = &a2[v20];
      v22 = (a3 + v20 * 4);
      v23 = 6 * (5 - i);
      v24 = (a3 - 96 + v23 * 4);
      if (i >= 6)
      {
        v25 = &a2[v23 - 24];
      }

      else
      {
        v25 = v21;
      }

      if (i >= 6)
      {
        v26 = v24;
      }

      else
      {
        v26 = v22;
      }

      while (1)
      {
        v27 = *v25;
        if (!*v25)
        {
          break;
        }

        v28 = v27[1];
        if (v28)
        {
          v29 = *v27;
          *v28 = *v27;
          if (v29)
          {
            *(v29 + 8) = v28;
          }
        }

        v27[3] = v26;
        v30 = *v26;
        *v27 = *v26;
        v27[1] = v26;
        if (v30)
        {
          *(v30 + 8) = v27;
        }

        *v26 = v27;
      }
    }
  }

  mlir::Operation::erase(a2);
}

void AddInputsRewrite::extendBlockTermOp(uint64_t a1, mlir::Block *a2, void *a3, unsigned int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  Terminator = mlir::Block::getTerminator(a2, v7);
  v9 = [v6 count];
  if ((*(Terminator + 46) & 0x80) != 0)
  {
    v10 = *(Terminator + 68);
    v13 = Terminator;
    v11 = a4;
    if (v9 - v10 + a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = 0;
    v13 = Terminator;
    v11 = a4;
    if (v9 + a4)
    {
LABEL_3:
      [v6 objectAtIndexedSubscript:{v10 - v9 - v11 + objc_msgSend(v6, "count")}];
      objc_claimAutoreleasedReturnValue();
      operator new();
    }
  }

  (*(*a1 + 40))(a1, v13);
  if ((*(v13 + 46) & 0x80) != 0)
  {
    v12 = *(v13 + 68);
  }

  else
  {
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(&v15, 0, 0);
  mlir::Operation::insertOperands(v13, v12, v15, v16);
  (*(*a1 + 48))(a1, v13);
}

void *std::vector<MPSGraphTensor * {__strong}>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::vector<MPSGraphTensor * {__strong}>::__emplace_back_slow_path<MPSGraphTensor * {__strong}>(unint64_t *a1, uint64_t *a2)
{
  v2 = a1[1] - *a1;
  v3 = v2 >> 3;
  v4 = (v2 >> 3) + 1;
  if (v4 >> 61)
  {
    std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 2 > v4)
  {
    v4 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v8 = *a2;
  *a2 = 0;
  v9 = *a1;
  v10 = a1[1];
  v11 = 8 * v3 - (v10 - *a1);
  *(8 * v3) = v8;
  v12 = v10 - v9;
  if (v10 != v9)
  {
    v13 = v12 - 8;
    v14 = v9;
    v15 = v11;
    if ((v12 - 8) < 0x98)
    {
      goto LABEL_27;
    }

    if (v9 < v2 + (v13 & 0xFFFFFFFFFFFFFFF8) - v12 + 8)
    {
      v14 = v9;
      v15 = v11;
      if (v11 < v9 + (v13 & 0xFFFFFFFFFFFFFFF8) + 8)
      {
        goto LABEL_27;
      }
    }

    v16 = v12 >> 3;
    v17 = (v13 >> 3) + 1;
    v18 = v17 & 0x3FFFFFFFFFFFFFFCLL;
    v14 = &v9[v18];
    v15 = (v11 + v18 * 8);
    v19 = (-8 * v16 + 8 * v3 + 16);
    v20 = (v9 + 2);
    v21 = v17 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v22 = *(v20 - 1);
      v23 = *v20;
      *(v20 - 1) = 0uLL;
      *v20 = 0uLL;
      *(v19 - 1) = v22;
      *v19 = v23;
      v19 += 2;
      v20 += 2;
      v21 -= 4;
    }

    while (v21);
    if (v17 != (v17 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_27:
      do
      {
        v24 = *v14;
        *v14++ = 0;
        *v15++ = v24;
      }

      while (v14 != v10);
    }

    do
    {
      v25 = *v9++;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = 8 * v3 + 8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return 8 * v3 + 8;
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      v3 = *(v1 + 40);
      if (v3)
      {
        v4 = *(v1 + 48);
        v5 = *(v1 + 40);
        if (v4 != v3)
        {
          do
          {
            v6 = *(v4 - 8);
            v4 -= 8;
          }

          while (v4 != v3);
          v5 = *(v1 + 40);
        }

        *(v1 + 48) = v3;
        operator delete(v5);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t AutodiffLoopData::AutodiffLoopData(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v25 = a10;
  v26 = v17;
  *a1 = &unk_1F5B4B108;
  *(a1 + 8) = v26;
  v37 = v26;
  WeakRetained = objc_loadWeakRetained(v26 + 1);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 16) = WeakRetained;
  *(a1 + 24) = a1 + 32;
  *a1 = &unk_1F5B4B2F8;
  v28 = v18;
  *(a1 + 48) = v28;
  v36 = v19;
  *(a1 + 56) = v36;
  v35 = v20;
  *(a1 + 64) = v35;
  v29 = v21;
  *(a1 + 72) = v29;
  v30 = v22;
  *(a1 + 80) = v30;
  v31 = v23;
  *(a1 + 88) = v31;
  v32 = v24;
  *(a1 + 96) = v32;
  v33 = v25;
  *(a1 + 120) = 0u;
  *(a1 + 104) = v33;
  *(a1 + 112) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  __u = 0;
  std::vector<int>::assign((a1 + 120), [v28 count], &__u);

  return a1;
}

void sub_1E075F690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11)
{
  v20 = *(v14 + 168);
  if (v20)
  {
    *(v14 + 176) = v20;
    operator delete(v20);
    v21 = *(v14 + 144);
    if (!v21)
    {
LABEL_3:
      v22 = *v11;
      if (!*v11)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v21 = *(v14 + 144);
    if (!v21)
    {
      goto LABEL_3;
    }
  }

  *(v14 + 152) = v21;
  operator delete(v21);
  v22 = *v11;
  if (!*v11)
  {
LABEL_5:

    AutodiffOpData::~AutodiffOpData(v14);
    _Unwind_Resume(a1);
  }

LABEL_4:
  *(v14 + 128) = v22;
  operator delete(v22);
  goto LABEL_5;
}

void AutodiffWhileData::~AutodiffWhileData(AutodiffWhileData *this)
{
  AutodiffLoopData::~AutodiffLoopData(this);

  JUMPOUT(0x1E12E5B90);
}

void AutodiffLoopData::buildGrad(uint64_t a1, Autodiff *a2, id **a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t *a7)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 8) + 48));
  objc_opt_class();
  v54 = a7;
  if (objc_opt_isKindOfClass())
  {
    v11 = *(a1 + 8);
    if (!v11[19])
    {
      v12 = *(a1 + 8);
      Context = mlir::Attribute::getContext((v12[8] + 24));
      v82 = 0;
      v83 = 0;
      v84 = 0;
      p_Context = &unk_1F5B4B188;
      v13 = v12;
      v78 = v13;
      v79 = objc_loadWeakRetained(v13 + 1);
      v77 = &unk_1F5B4B370;
      AddWhileInputsRewrite::rewrite(&v77, v13[8], &p_Context);
      MPSGraphDelegateCompiler.precompilationDescriptor.modify(&p_Context, v14);

      v15 = [v78[3] objectAtIndexedSubscript:{objc_msgSend(v78[3], "count") - 1}];
      v16 = v11[19];
      v11[19] = v15;
    }

    v17 = [*(a1 + 16) constantWithScalar:536870944 dataType:0.0];
    v18 = v11[19];
    v56 = [*(a1 + 16) constantWithScalar:536870944 dataType:1.0];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v56 = 0;
      v18 = 0;
      v17 = 0;
      goto LABEL_9;
    }

    v19 = [*(a1 + 8) inputTensors];
    v20 = [v19 objectAtIndexedSubscript:0];
    v17 = AutodiffLoopData::buildGrad(Autodiff *,std::vector<MPSGraphTensor * {__strong}> const&,std::map<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}> const&,std::vector<MPSGraphTensor * {__strong}>&,std::map<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}> const&,std::map<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}> const&)::{lambda(MPSGraphTensor *)#1}::operator()(v20);

    v21 = [*(a1 + 8) inputTensors];
    v22 = [v21 objectAtIndexedSubscript:1];
    v18 = AutodiffLoopData::buildGrad(Autodiff *,std::vector<MPSGraphTensor * {__strong}> const&,std::map<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}> const&,std::vector<MPSGraphTensor * {__strong}>&,std::map<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}> const&,std::map<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}> const&)::{lambda(MPSGraphTensor *)#1}::operator()(v22);

    v11 = [*(a1 + 8) inputTensors];
    v23 = [v11 objectAtIndexedSubscript:2];
    v56 = AutodiffLoopData::buildGrad(Autodiff *,std::vector<MPSGraphTensor * {__strong}> const&,std::map<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}> const&,std::vector<MPSGraphTensor * {__strong}>&,std::map<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}> const&,std::map<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}> const&)::{lambda(MPSGraphTensor *)#1}::operator()(v23);
  }

LABEL_9:
  v59 = [MEMORY[0x1E695E0F0] mutableCopy];
  v58 = [MEMORY[0x1E695E0F0] mutableCopy];
  v55 = v17;
  v61 = [MEMORY[0x1E695E0F0] mutableCopy];
  v24 = 0;
  v25 = (a4 + 8);
  while (v24 < [*(a1 + 56) count])
  {
    v26 = [*(a1 + 56) objectAtIndexedSubscript:v24];
    v27 = v26;
    v28 = *v25;
    if (!*v25)
    {
      goto LABEL_20;
    }

    v29 = v25;
    do
    {
      v30 = v28[4];
      v31 = v30 >= v26;
      v32 = v30 < v26;
      if (v31)
      {
        v29 = v28;
      }

      v28 = v28[v32];
    }

    while (v28);
    if (v29 != v25 && v26 >= v29[4])
    {
      v33 = v29[5];
      if (*(*(a1 + 120) + 4 * v24))
      {
LABEL_21:
        if (!v33)
        {
          v33 = Autodiff::getFilledLike(a2, v27, 0.0, &cfstr_Loopgradinit0.isa);
        }

        v34 = [*(a1 + 104) objectAtIndexedSubscript:v24];
        [v59 addObject:v34];

        v35 = [*(a1 + 96) objectAtIndexedSubscript:v24];
        [v58 addObject:v35];

        [v61 addObject:v33];
        operator new();
      }
    }

    else
    {
LABEL_20:
      v33 = 0;
      if (*(*(a1 + 120) + 4 * v24))
      {
        goto LABEL_21;
      }
    }

    ++v24;
  }

  v36 = *a3;
  v37 = a3[1];
  if (*a3 != v37)
  {
    do
    {
      v38 = *v36;
      v39 = Autodiff::getFilledLike(a2, v38, 0.0, &cfstr_Loopgradinit0.isa);
      [v61 addObject:v39];

      ++v36;
    }

    while (v36 != v37);
  }

  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3321888768;
  v70[2] = ___ZN16AutodiffLoopData9buildGradEP8AutodiffRKNSt3__16vectorIU8__strongP14MPSGraphTensorNS2_9allocatorIS6_EEEERKNS2_3mapIS6_S6_NS2_4lessIS6_EENS7_INS2_4pairIU8__strongKS5_S6_EEEEEERS9_SM_SM__block_invoke;
  v70[3] = &__block_descriptor_81_ea8_40c39_ZTSNSt3__16vectorImNS_9allocatorImEEEE_e52___MPSGraphTensor_24__0__NSArray_8__NSMutableArray_16l;
  v76 = 0;
  v70[4] = a1;
  __p = 0;
  v72 = 0;
  v73 = 0;
  v74 = a2;
  v75 = a3;
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = ___ZN16AutodiffLoopData9buildGradEP8AutodiffRKNSt3__16vectorIU8__strongP14MPSGraphTensorNS2_9allocatorIS6_EEEERKNS2_3mapIS6_S6_NS2_4lessIS6_EENS7_INS2_4pairIU8__strongKS5_S6_EEEEEERS9_SM_SM__block_invoke_229;
  v63[3] = &unk_1E86D4A38;
  v66 = a1;
  v67 = a2;
  v69 = 0;
  v68 = a3;
  v53 = v58;
  v64 = v53;
  v52 = v59;
  v65 = v52;
  v40 = v55;
  v41 = v18;
  v42 = v56;
  v43 = v61;
  v57 = v70;
  v44 = v63;
  v45 = *(a1 + 16);
  p_Context = MEMORY[0x1E69E9820];
  Context = 3221225472;
  v82 = ___ZN16AutodiffLoopData10createLoopEbP14MPSGraphTensorS1_S1_P7NSArrayIS1_EU13block_pointerFS1_S4_P14NSMutableArrayIS1_EEU13block_pointerFS4_S4_E_block_invoke_3;
  v83 = &unk_1E86D4AB0;
  v84 = v44;
  v46 = [v45 forLoopWithLowerBound:v40 upperBound:v41 step:v42 initialBodyArguments:v43 body:&p_Context name:0];

  Context = 0;
  v82 = 0;
  p_Context = &Context;
  if (a3[1] != *a3)
  {
    v47 = 0;
    do
    {
      v49 = [v46 objectAtIndexedSubscript:v47];
      v50 = v49;
      v77 = v49;
      v51 = v54[1];
      if (v51 < v54[2])
      {
        *v51 = v49;
        v48 = (v51 + 1);
      }

      else
      {
        v48 = std::vector<MPSGraphTensor * {__strong}>::__emplace_back_slow_path<MPSGraphTensor * const {__strong}&>(v54, &v77);
      }

      v54[1] = v48;

      ++v47;
    }

    while (v47 < a3[1] - *a3);
  }

  std::__tree<std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>,std::__map_value_compare<MPSGraphTensor * {__strong},std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>,std::less<MPSGraphTensor * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}>>>::destroy(&p_Context, Context);

  if (__p)
  {
    v72 = __p;
    operator delete(__p);
  }
}

void sub_1E07602A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44)
{
  MPSGraphDelegateCompiler.precompilationDescriptor.modify(v46 - 160, v48);

  _Unwind_Resume(a1);
}

void sub_1E07604A8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1E07605A0);
}

uint64_t AutodiffLoopData::recurseForUsesFromOpOutput(id *this, Autodiff *a2, MPSGraphTensor *a3)
{
  v5 = a3;
  v6 = [this[7] indexOfObject:v5];
  v18 = v6;
  v7 = this[15];
  if (!v7[v6])
  {
    *(this + 28) = 1;
    v7[v6] = 1;
    std::vector<unsigned long>::push_back[abi:ne200100]((this + 18), &v18);
    std::vector<unsigned long>::push_back[abi:ne200100]((this + 21), &v18);
    for (i = this[19]; this[18] != i; i = this[19])
    {
      v9 = *(i - 1);
      this[19] = i - 1;
      v10 = this[11];
      v11 = [this[13] objectAtIndexedSubscript:v9];
      Autodiff::recurseForUses(a2, v10, v11);
    }

    v12 = this[21];
    v13 = this[22];
    if (v12 != v13)
    {
      do
      {
        v14 = *v12;
        WeakRetained = objc_loadWeakRetained(this[1] + 6);
        v16 = [this[6] objectAtIndexedSubscript:v14];
        Autodiff::recurseForUses(a2, WeakRetained, v16);

        ++v12;
      }

      while (v12 != v13);
      v12 = this[21];
    }

    this[22] = v12;
    *(this + 28) = 0;
  }

  return 1;
}

uint64_t AutodiffLoopData::recurseForUsesFromBlockInput(id *this, Autodiff *a2, MPSGraphTensor *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&v5->_parentBlock);
  v7 = WeakRetained;
  v15 = 0;
  if (WeakRetained == this[8])
  {
    v9 = [this[9] indexOfObject:v5];
  }

  else
  {
    if (WeakRetained != this[11])
    {
      v8 = 0;
      goto LABEL_9;
    }

    v9 = [this[12] indexOfObject:v5];
  }

  v8 = v9;
  v15 = v9;
  if (v7 == this[11])
  {
    v10 = this[8];
    if (v10)
    {
      v11 = [this[10] objectAtIndexedSubscript:v9];
      v12 = Autodiff::recurseForUses(a2, v10, v11);

      goto LABEL_11;
    }
  }

LABEL_9:
  v13 = this[15];
  v12 = 1;
  if (!v13[v8])
  {
    v13[v8] = 1;
    std::vector<unsigned long>::push_back[abi:ne200100]((this + 18), &v15);
    std::vector<unsigned long>::push_back[abi:ne200100]((this + 21), &v15);
  }

LABEL_11:

  return v12;
}

void AutodiffWhileData::extractValues(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v5 = *(a1 + 8);
  v21[1] = mlir::Attribute::getContext((v5[8] + 24));
  memset(&v21[2], 0, 24);
  v21[0] = &unk_1F5B4B188;
  v6 = v5;
  v18 = v6;
  WeakRetained = objc_loadWeakRetained(v6 + 1);
  v20 = a2;
  v17 = &unk_1F5B4B3D8;
  AddWhileInputsRewrite::rewrite(&v17, v6[8], v21);
  MPSGraphDelegateCompiler.precompilationDescriptor.modify(v21, v7);

  v9 = *v20;
  v8 = v20[1];
  v10 = (v8 - *v20) >> 3;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  std::vector<MPSGraphTensor * {__strong}>::reserve(a3, v10);
  if (v8 != v9)
  {
    if (v10 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = -v10;
    do
    {
      while (1)
      {
        v13 = [v18[3] objectAtIndexedSubscript:{v12 + objc_msgSend(v18[3], "count")}];
        v21[0] = v13;
        v14 = a3[1];
        if (v14 >= a3[2])
        {
          break;
        }

        v21[0] = 0;
        *v14 = v13;
        a3[1] = (v14 + 1);

        ++v12;
        if (!--v11)
        {
          goto LABEL_9;
        }
      }

      v15 = std::vector<MPSGraphTensor * {__strong}>::__emplace_back_slow_path<MPSGraphTensor * {__strong}>(a3, v21);
      v16 = v21[0];
      a3[1] = v15;

      ++v12;
      --v11;
    }

    while (v11);
  }

LABEL_9:
}

void sub_1E0760A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
{
  std::vector<MPSGraphTensor * {__strong}>::~vector[abi:ne200100](v12);

  _Unwind_Resume(a1);
}

void AutodiffWhileData::injectValues(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  v18[1] = mlir::Attribute::getContext((v5[8] + 24));
  memset(&v18[2], 0, 24);
  v18[0] = &unk_1F5B4B188;
  v6 = v5;
  v13 = v6;
  WeakRetained = objc_loadWeakRetained(v6 + 1);
  v12 = &unk_1F5B4B418;
  v15 = a2;
  v17[0] = 0;
  v17[1] = 0;
  v16 = v17;
  AddWhileInputsRewrite::rewrite(&v12, v6[8], v18);
  MPSGraphDelegateCompiler.precompilationDescriptor.modify(v18, v7);

  a3[1] = 0;
  a3[2] = 0;
  *a3 = a3 + 1;
  v8 = v16;
  if (v16 != v17)
  {
    do
    {
      std::__tree<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,std::__map_value_compare<MPSGraphBlock * {__strong},std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,std::less<MPSGraphBlock * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>>>::__emplace_hint_unique_key_args<MPSGraphBlock * {__strong},std::pair<MPSGraphBlock * const {__strong},std::vector<MPSGraphTensor * {__strong}>> const&>(a3, a3 + 1, v8[4]);
      v9 = v8[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      v8 = v10;
    }

    while (v10 != v17);
  }

  v12 = &unk_1F5B4B418;
  std::__tree<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,std::__map_value_compare<MPSGraphBlock * {__strong},std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,std::less<MPSGraphBlock * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>>>::destroy(v17[0]);
}

void sub_1E0760C8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  AddWhileInjectValuesRewrite::~AddWhileInjectValuesRewrite(va);
  MPSGraphDelegateCompiler.precompilationDescriptor.modify(va1, v4);

  _Unwind_Resume(a1);
}

void sub_1E0760CBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,std::__map_value_compare<MPSGraphBlock * {__strong},std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,std::less<MPSGraphBlock * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>>>::destroy(*v2);
  AddWhileInjectValuesRewrite::~AddWhileInjectValuesRewrite(va);
  _Unwind_Resume(a1);
}

void AutodiffLoopData::~AutodiffLoopData(AutodiffLoopData *this)
{
  *this = &unk_1F5B4B2F8;
  v2 = *(this + 21);
  if (v2)
  {
    *(this + 22) = v2;
    operator delete(v2);
  }

  v3 = *(this + 18);
  if (v3)
  {
    *(this + 19) = v3;
    operator delete(v3);
  }

  v4 = *(this + 15);
  if (v4)
  {
    *(this + 16) = v4;
    operator delete(v4);
  }

  *this = &unk_1F5B4B108;
  std::__tree<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,std::__map_value_compare<MPSGraphBlock * {__strong},std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,std::less<MPSGraphBlock * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>>>::destroy(*(this + 4));
}

id AutodiffLoopData::buildGrad(Autodiff *,std::vector<MPSGraphTensor * {__strong}> const&,std::map<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}> const&,std::vector<MPSGraphTensor * {__strong}>&,std::map<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}> const&,std::map<MPSGraphTensor * {__strong},MPSGraphTensor * {__strong}> const&)::{lambda(MPSGraphTensor *)#1}::operator()(void *a1)
{
  v1 = [a1 operation];
  v2 = [v1 inputTensors];
  v3 = [v2 objectAtIndexedSubscript:0];
  v4 = [v3 operation];
  v5 = [v4 inputTensors];
  v6 = [v5 objectAtIndexedSubscript:0];

  return v6;
}

void std::vector<unsigned long>::push_back[abi:ne200100](uint64_t a1, void *a2)
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
    std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
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

uint64_t ___ZN16AutodiffLoopData9buildGradEP8AutodiffRKNSt3__16vectorIU8__strongP14MPSGraphTensorNS2_9allocatorIS6_EEEERKNS2_3mapIS6_S6_NS2_4lessIS6_EENS7_INS2_4pairIU8__strongKS5_S6_EEEEEERS9_SM_SM__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (*(a1 + 80))
  {
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x1E695E0F0] mutableCopy];
    v10 = [MEMORY[0x1E695E0F0] mutableCopy];
    v11 = *(a1 + 40);
    for (i = *(a1 + 48); v11 != i; ++v11)
    {
      v13 = *v11;
      v14 = [*(v8 + 72) objectAtIndexedSubscript:*v11];
      [v9 addObject:v14];

      v15 = [*(v8 + 80) objectAtIndexedSubscript:v13];
      [v10 addObject:v15];
    }

    v16 = *(v8 + 64);
    v18 = *(a1 + 64);
    v17 = *(a1 + 72);
    v27 = 0;
    v28 = 0;
    __p = 0;
    v19 = *v17;
    v20 = v17[1];
    p_p = &__p;
    v30 = 0;
    if (v20 != v19)
    {
      if (((v20 - v19) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
    }

    AutodiffLoopData::gradsForBlock(v18, 1, v16, &__p, v9, v10, v5, v7);
    v21 = __p;
    if (__p)
    {
      v22 = v27;
      v23 = __p;
      if (v27 != __p)
      {
        do
        {
          v24 = *(v22 - 1);
          v22 -= 8;
        }

        while (v22 != v21);
        v23 = __p;
      }

      v27 = v21;
      operator delete(v23);
    }
  }

  else
  {
    [v6 addObjectsFromArray:v5];
  }

  return 0;
}

void sub_1E07611A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<MPSGraphTensor * {__strong}>::~vector[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_1E07611F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__exception_guard_exceptions<std::vector<MPSGraphTensor * {__strong}>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void AutodiffLoopData::gradsForBlock(uint64_t a1, char a2, void *a3, uint64_t *a4, void *a5, void *a6, void *a7, void *a8)
{
  v64 = *MEMORY[0x1E69E9840];
  v57 = a3;
  v52 = a5;
  v51 = a6;
  v53 = a7;
  v56 = a8;
  v14 = *a4;
  v54 = a4;
  if (a4[1] != *a4)
  {
    if (a2)
    {
      v15 = 0;
      do
      {
        v16 = *(v14 + 8 * v15);
        if (Autodiff::isGradNeededFor(a1, v57, v16))
        {
          v17 = [v53 objectAtIndexedSubscript:{v15 + objc_msgSend(v52, "count")}];
          Autodiff::accumulatePartialGradientOf(a1, v57, v16, v17, 0);
        }

        ++v15;
        v14 = *v54;
      }

      while (v15 < (v54[1] - *v54) >> 3);
    }

    else
    {
      v18 = 0;
      do
      {
        v19 = *(v14 + 8 * v18);
        v20 = [v53 objectAtIndexedSubscript:{v18 + objc_msgSend(v52, "count")}];
        Autodiff::accumulatePartialGradientOf(a1, v57, v19, v20, 0);

        ++v18;
        v14 = *v54;
      }

      while (v18 < (v54[1] - *v54) >> 3);
    }
  }

  v49 = [v53 subarrayWithRange:{0, objc_msgSend(v52, "count")}];
  Autodiff::computeGradsForBlock(a1, v57, v51, v49);
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v52;
  v21 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
  if (v21)
  {
    v22 = *v59;
    do
    {
      v23 = 0;
      do
      {
        if (*v59 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v58 + 1) + 8 * v23);
        v25 = v57;
        v26 = v24;
        v62[0] = v25;
        v62[2] = v62;
        v27 = std::__hash_table<std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>((a1 + 32), v62);
        v28 = v27[4];
        if (!*&v28)
        {
          goto LABEL_34;
        }

        v29 = 0x9DDFEA08EB382D69 * ((8 * (v26 & 0x1FFFFFFF) + 8) ^ (v26 >> 32));
        v30 = 0x9DDFEA08EB382D69 * ((v26 >> 32) ^ (v29 >> 47) ^ v29);
        v31 = 0x9DDFEA08EB382D69 * (v30 ^ (v30 >> 47));
        v32 = vcnt_s8(v28);
        v32.i16[0] = vaddlv_u8(v32);
        if (v32.u32[0] > 1uLL)
        {
          v33 = v31;
          if (v31 >= *&v28)
          {
            v33 = v31 % *&v28;
          }
        }

        else
        {
          v33 = (*&v28 - 1) & v31;
        }

        v34 = *(v27[3] + 8 * v33);
        if (!v34 || (v35 = *v34) == 0)
        {
LABEL_34:

          goto LABEL_35;
        }

        if (v32.u32[0] < 2uLL)
        {
          v36 = *&v28 - 1;
          while (1)
          {
            v38 = v35[1];
            if (v31 == v38)
            {
              if (v35[2] == v26)
              {
                goto LABEL_38;
              }
            }

            else if ((v38 & v36) != v33)
            {
              goto LABEL_34;
            }

            v35 = *v35;
            if (!v35)
            {
              goto LABEL_34;
            }
          }
        }

        while (1)
        {
          v37 = v35[1];
          if (v31 == v37)
          {
            break;
          }

          if (v37 >= *&v28)
          {
            v37 %= *&v28;
          }

          if (v37 != v33)
          {
            goto LABEL_34;
          }

LABEL_24:
          v35 = *v35;
          if (!v35)
          {
            goto LABEL_34;
          }
        }

        if (v35[2] != v26)
        {
          goto LABEL_24;
        }

LABEL_38:
        v40 = *(v35 + 48);

        if ((v40 & 1) == 0 || (Autodiff::getGradientOf(a1, v25, v26), (v39 = objc_claimAutoreleasedReturnValue()) == 0))
        {
LABEL_35:
          v39 = Autodiff::getFilledLike(a1, v26, 0.0, &cfstr_0grad.isa);
        }

        [v56 addObject:v39];

        ++v23;
      }

      while (v23 != v21);
      v41 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
      v21 = v41;
    }

    while (v41);
  }

  v42 = *v54;
  if (v54[1] != *v54)
  {
    if (a2)
    {
      v43 = 0;
      do
      {
        v44 = *(v42 + 8 * v43);
        if (Autodiff::isGradNeededFor(a1, v57, v44))
        {
          Autodiff::getGradientOf(a1, v57, v44);
        }

        else
        {
          [v53 objectAtIndexedSubscript:{v43 + objc_msgSend(obj, "count")}];
        }
        v45 = ;
        [v56 addObject:v45];

        ++v43;
        v42 = *v54;
      }

      while (v43 < (v54[1] - *v54) >> 3);
    }

    else
    {
      v46 = 0;
      do
      {
        v47 = *(v42 + 8 * v46);
        v48 = Autodiff::getGradientOf(a1, v57, v47);
        [v56 addObject:v48];

        ++v46;
        v42 = *v54;
      }

      while (v46 < (v54[1] - *v54) >> 3);
    }
  }
}

void *__copy_helper_block_ea8_40c39_ZTSNSt3__16vectorImNS_9allocatorImEEEE(void *result, uint64_t a2)
{
  result[5] = 0;
  result[6] = 0;
  result[7] = 0;
  v3 = *(a2 + 40);
  v2 = *(a2 + 48);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1E0761954(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_40c39_ZTSNSt3__16vectorImNS_9allocatorImEEEE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

id ___ZN16AutodiffLoopData9buildGradEP8AutodiffRKNSt3__16vectorIU8__strongP14MPSGraphTensorNS2_9allocatorIS6_EEEERKNS2_3mapIS6_S6_NS2_4lessIS6_EENS7_INS2_4pairIU8__strongKS5_S6_EEEEEERS9_SM_SM__block_invoke_229(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v5 = [MEMORY[0x1E695E0F0] mutableCopy];
  v6 = *(a1 + 72);
  v7 = *(v4 + 88);
  v9 = *(a1 + 56);
  v8 = *(a1 + 64);
  v18 = 0;
  v19 = 0;
  __p = 0;
  v10 = *v8;
  v11 = v8[1];
  p_p = &__p;
  v21 = 0;
  if (v11 != v10)
  {
    if (((v11 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
  }

  AutodiffLoopData::gradsForBlock(v9, v6, v7, &__p, *(a1 + 32), *(a1 + 40), v3, v5);
  v12 = __p;
  if (__p)
  {
    v13 = v18;
    v14 = __p;
    if (v18 != __p)
    {
      do
      {
        v15 = *(v13 - 1);
        v13 -= 8;
      }

      while (v13 != v12);
      v14 = __p;
    }

    v18 = v12;
    operator delete(v14);
  }

  return v5;
}

void sub_1E0761AD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<MPSGraphTensor * {__strong}>::~vector[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_1E0761AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__exception_guard_exceptions<std::vector<MPSGraphTensor * {__strong}>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void AddWhileInputsRewrite::rewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v66 = *(*(a1 + 16) + 176);
  v6 = v66;
  v72 = a1;
  v73 = (a1 + 8);
  v65 = *(*(*(a1 + 16) + 56) + 16);
  v74 = *(a1 + 8);
  v7 = *(a2 + 36);
  if (v7)
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  v83 = v8;
  v84 = v7;
  v67 = v6;
  mlir::OperandRange::getTypes(&v83, &v79);
  v9 = v80;
  v10 = *(a2 + 36);
  if (v10)
  {
    v11 = a2 - 16;
  }

  else
  {
    v11 = 0;
  }

  v83 = v11;
  v84 = v10;
  mlir::OperandRange::getTypes(&v83, &v79);
  v77 = 0;
  v78 = 0;
  __p = 0;
  if (v82 != v9)
  {
    if (!((v82 - v9) >> 61))
    {
      operator new();
    }

    std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
  }

  v12 = [*v73 inputTensors];
  v13 = v72;
  v14 = [v12 mutableCopy];

  v15 = *(v72[2] + 56);
  v16 = *(a2 + 16);
  v75 = v14;
  v18 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a2, v17);
  *(v15 + 16) = v16;
  *(v15 + 24) = v18;
  WeakRetained = objc_loadWeakRetained((v72[1] + 48));
  v20 = v72[2];
  v21 = *(v20 + 176);
  *(v20 + 176) = WeakRetained;

  v22 = __p;
  v23 = v77;
  (**v72)(v72, &__p, v14);
  v79 = 0;
  v80 = 0;
  v81 = 0;
  obj = v22;
  v70 = __p;
  v64 = (v77 - __p) >> 3;
  v71 = a3;
  if (v77 != __p)
  {
    v63 = v23;
    v25 = 0;
    v26 = 0;
    if (((v77 - __p) >> 3) <= 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = (v77 - __p) >> 3;
    }

    do
    {
      v28 = [v14 objectAtIndexedSubscript:v26];
      v29 = v28;
      v30 = v25;
      v31 = v25 >> 3;
      if (((v25 >> 3) + 1) >> 61)
      {
        v80 = v25;
        v81 = 0;
        v79 = 0;
        std::vector<long>::__throw_length_error[abi:ne200100]();
      }

      if (v25 >> 3 != -1)
      {
        if (!(((v25 >> 3) + 1) >> 61))
        {
          operator new();
        }

        v80 = v25;
        v81 = 0;
        v79 = 0;
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(8 * v31) = *(v28 + 8);
      v25 = 8 * v31 + 8;
      memcpy(0, 0, v30);
      v14 = v75;

      ++v26;
    }

    while (v27 != v26);
    v80 = v25;
    v81 = 0;
    v79 = 0;
    a3 = v71;
    v13 = v72;
    v23 = v63;
  }

  v32 = *(a2 + 16);
  v33 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(a2, v24) + 8);
  a3[3] = v32;
  a3[4] = v33;
  v34 = mlir::OpBuilder::create<mlir::scf::WhileOp,std::vector<mlir::Type> &,std::vector<mlir::Value> &>((a3 + 1), *(a2 + 24), &__p, &v79);
  v35 = v34 + 64;
  v36 = (((v34 + 64 + 16 * ((*(v34 + 44) >> 23) & 1) + ((*(v34 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v34 + 40));
  mlir::RewriterBase::inlineRegionBefore(a3, (((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40)), v36, v36);
  mlir::RewriterBase::inlineRegionBefore(a3, (((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 24), ((v35 + 16 * ((*(v34 + 44) >> 23) & 1) + ((*(v34 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v34 + 40) + 24, (((v35 + 16 * ((*(v34 + 44) >> 23) & 1) + ((*(v34 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v34 + 40) + 24));
  AddInputsRewrite::replaceOp(v73, a2, v34, v14);
  v37 = *(((v34 + 64 + 16 * ((*(v34 + 44) >> 23) & 1) + ((*(v34 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v34 + 40) + 8);
  if (v37)
  {
    v38 = (v37 - 8);
  }

  else
  {
    v38 = 0;
  }

  [*(*(*v73 + 5) + 8) objectAtIndexedSubscript:0];
  v39 = v23 - obj;
  obja = v40 = v64 - ((v23 - obj) >> 3);
  v41 = AddInputsRewrite::extendBlockInputs(v73, v38, obja, v74[16], &v70[v39], v40);
  v42 = v74[16];
  v74[16] = v41;

  Terminator = mlir::Block::getTerminator(v38, v43);
  v45 = *(v13[2] + 56);
  v46 = *(Terminator + 16);
  v48 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(Terminator, v47);
  *(v45 + 16) = v46;
  *(v45 + 24) = v48;
  objc_storeStrong((v13[2] + 176), obja);
  v49 = [v74[14] mutableCopy];
  (*(*v13 + 8))(v13, v74[16], v49);
  objc_storeStrong(v74 + 14, v49);
  AddInputsRewrite::extendBlockTermOp(v71, v38, v49, 1u);
  v50 = *(((v35 + 16 * ((*(v34 + 44) >> 23) & 1) + ((*(v34 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v34 + 40) + 32);
  if (v50)
  {
    v51 = (v50 - 8);
  }

  else
  {
    v51 = 0;
  }

  v52 = [*(*(*v73 + 5) + 8) objectAtIndexedSubscript:1];
  v53 = AddInputsRewrite::extendBlockInputs(v73, v51, v52, v74[17], &v70[v39], v40);
  v54 = v74[17];
  v74[17] = v53;

  v56 = mlir::Block::getTerminator(v51, v55);
  v57 = *(v72[2] + 56);
  v58 = *(v56 + 16);
  v60 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v56, v59);
  *(v57 + 16) = v58;
  *(v57 + 24) = v60;
  objc_storeStrong((v72[2] + 176), v52);
  v61 = [v74[15] mutableCopy];
  (*(*v72 + 16))(v72, v74[17], v61);
  objc_storeStrong(v74 + 15, v61);
  AddInputsRewrite::extendBlockTermOp(v71, v51, v61, 0);
  v62 = *(v72[2] + 56);
  if (v65)
  {
    *(v62 + 16) = v65;
  }

  else
  {
    *(v62 + 16) = 0;
    *(v62 + 24) = 0;
  }

  objc_storeStrong((v72[2] + 176), v66);

  if (__p)
  {
    v77 = __p;
    operator delete(__p);
  }
}

void sub_1E076230C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, void *__p, void *a25, uint64_t a26)
{
  if (__p)
  {
    *(v28 - 128) = __p;
    operator delete(__p);
  }

  if (a25)
  {
    operator delete(a25);
  }

  _Unwind_Resume(a1);
}

void AddWhileItersCountRewrite::addOpInputs(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 16) constantWithScalar:536870944 dataType:0.0];
  v7 = *(v6[1] + 8) & 0xFFFFFFFFFFFFFFF8;
  std::vector<mlir::Type>::push_back[abi:ne200100](a2, &v7);
  [v5 addObject:v6];
}

void AddWhileItersCountRewrite::addBeforeBlockOutputs(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v4 = a3;
  v5 = [v6 objectAtIndexedSubscript:{objc_msgSend(v6, "count") - 1}];
  [v4 addObject:v5];
}

void AddWhileItersCountRewrite::addAfterBlockOutputs(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v9 objectAtIndexedSubscript:{objc_msgSend(v9, "count") - 1}];
  v7 = [*(a1 + 16) constantWithScalar:536870944 dataType:1.0];
  v8 = [*(a1 + 16) additionWithPrimaryTensor:v6 secondaryTensor:v7 name:0];
  [v5 addObject:v8];
}

void sub_1E0762678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

id AddInputsRewrite::extendBlockInputs(void *a1, void *a2, void *a3, void *a4, uint64_t *a5, uint64_t a6)
{
  v11 = a3;
  v12 = a4;
  v13 = [v12 mutableCopy];
  Parent = mlir::Block::getParent(v11[3]);
  Context = mlir::Region::getContext(Parent);
  v22 = "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphControlFlowOps.mm";
  v23 = 259;
  v16 = mlir::StringAttr::get(Context, &v22);
  v17 = mlir::FileLineColLoc::get(v16, 0x116u, 0);
  if (a6)
  {
    v18 = v17;
    v19 = 8 * a6;
    do
    {
      v20 = [[MPSGraphTensor alloc] initTensorWithOperation:*a1 value:mlir::Block::addArgument(a2 graph:*a5 parentBlock:v18) name:a1[1], v11, 0];
      [v13 addObject:v20];

      ++a5;
      v19 -= 8;
    }

    while (v19);
  }

  return v13;
}

id ___ZN16AutodiffLoopData10createLoopEbP14MPSGraphTensorS1_S1_P7NSArrayIS1_EU13block_pointerFS1_S4_P14NSMutableArrayIS1_EEU13block_pointerFS4_S4_E_block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[6];
  v8 = [v5 mutableCopy];
  [v8 removeLastObject];
  v9 = [v5 objectAtIndexedSubscript:{objc_msgSend(v5, "count") - 1}];
  v10 = (*(a1[5] + 16))();
  v11 = [*(v7 + 16) lessThanWithPrimaryTensor:v9 secondaryTensor:a1[4] name:0];

  [v6 addObject:v9];

  return v11;
}

id ___ZN16AutodiffLoopData10createLoopEbP14MPSGraphTensorS1_S1_P7NSArrayIS1_EU13block_pointerFS1_S4_P14NSMutableArrayIS1_EEU13block_pointerFS4_S4_E_block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[6];
  v5 = [v3 mutableCopy];
  [v5 removeLastObject];
  v6 = [v3 objectAtIndexedSubscript:{objc_msgSend(v3, "count") - 1}];
  v7 = (*(a1[5] + 16))();
  v8 = [v7 mutableCopy];
  v9 = [*(v4 + 16) additionWithPrimaryTensor:v6 secondaryTensor:a1[4] name:0];
  [v8 addObject:v9];

  return v8;
}

void sub_1E0762AC0(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

id ___ZN16AutodiffLoopData10createLoopEbP14MPSGraphTensorS1_S1_P7NSArrayIS1_EU13block_pointerFS1_S4_P14NSMutableArrayIS1_EEU13block_pointerFS4_S4_E_block_invoke_3(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();

  return v1;
}

void AddWhileExtractValuesRewrite::addOpInputs(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 24);
  v7 = *v6;
  v8 = v6[1];
  if (*v6 != v8)
  {
    do
    {
      v9 = *v7;
      v10 = *(v9[1] + 8);
      Context = mlir::Attribute::getContext((*(*(a1 + 16) + 64) + 24));
      v16 = v10 & 0xFFFFFFFFFFFFFFF8;
      v15 = mlir::detail::TypeUniquer::get<mlir::mpsx::ListType,std::array<mlir::Type,1ul> &>(Context, &v16);
      std::vector<mlir::Type>::push_back[abi:ne200100](a2, &v15);
      v12 = *(a1 + 16);
      v13 = getMPSGraphType((*(v9[1] + 8) & 0xFFFFFFFFFFFFFFF8));
      v14 = [v12 makeListWithElementType:v13 name:0];
      [v5 addObject:v14];

      ++v7;
    }

    while (v7 != v8);
  }
}

void AddWhileExtractValuesRewrite::addBlockOutputs(uint64_t a1, void *a2, void *a3, int a4)
{
  v15 = a2;
  v7 = a3;
  v8 = *(*(a1 + 8) + 64);
  v9 = *(((v8 + 16 * ((*(v8 + 44) >> 23) & 1) + ((*(v8 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v8 + 40) + 24 * (a4 ^ 1u) + 8);
  if (v9)
  {
    v10 = v9 - 8;
  }

  else
  {
    v10 = 0;
  }

  if (*(*(a1 + 24) + 8) != **(a1 + 24))
  {
    v11 = 0;
    do
    {
      v12 = [v15 objectAtIndexedSubscript:{v11 + objc_msgSend(v15, "count") - ((*(*(a1 + 24) + 8) - **(a1 + 24)) >> 3)}];
      v13 = *(**(a1 + 24) + 8 * v11);
      if (mlir::Value::getParentBlock((v13 + 8)) == v10)
      {
        v14 = [*(a1 + 16) pushBackToList:v12 element:v13 name:0];

        v12 = v14;
      }

      [v7 addObject:v12];

      ++v11;
    }

    while (v11 < (*(*(a1 + 24) + 8) - **(a1 + 24)) >> 3);
  }
}

void AddWhileInjectValuesRewrite::~AddWhileInjectValuesRewrite(AddWhileInjectValuesRewrite *this)
{
  *this = &unk_1F5B4B418;
  std::__tree<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,std::__map_value_compare<MPSGraphBlock * {__strong},std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,std::less<MPSGraphBlock * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>>>::destroy(*(this + 6));
}

void AddWhileInjectValuesRewrite::addOpInputs(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  *(a1 + 24) = 0;
  v7 = *(a1 + 32);
  v8 = *v7;
  v29 = v7 + 1;
  if (*v7 != v7 + 1)
  {
    v31 = v5;
    do
    {
      v30 = v8;
      std::pair<MPSGraphBlock * const {__strong},std::vector<MPSGraphTensor * {__strong}>>::pair[abi:ne200100](&v33, (v8 + 4));
      v10 = __p;
      v9 = v35;
      v32 = v35;
      if (__p != v35)
      {
        do
        {
          v11 = *v10;
          v12 = *(v11[1] + 8) & 0xFFFFFFFFFFFFFFF8;
          v14 = *(a2 + 8);
          v13 = *(a2 + 16);
          if (v14 >= v13)
          {
            v16 = *a2;
            v17 = v14 - *a2;
            v18 = v17 >> 3;
            v19 = (v17 >> 3) + 1;
            if (v19 >> 61)
            {
              std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
            }

            v20 = v13 - v16;
            if (v20 >> 2 > v19)
            {
              v19 = v20 >> 2;
            }

            if (v20 >= 0x7FFFFFFFFFFFFFF8)
            {
              v21 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v21 = v19;
            }

            if (v21)
            {
              if (!(v21 >> 61))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            *(8 * v18) = v12;
            v15 = 8 * v18 + 8;
            memcpy(0, v16, v17);
            *a2 = 0;
            *(a2 + 8) = v15;
            *(a2 + 16) = 0;
            if (v16)
            {
              operator delete(v16);
            }

            v6 = v31;
            v9 = v32;
          }

          else
          {
            *v14 = v12;
            v15 = (v14 + 1);
          }

          *(a2 + 8) = v15;
          [v6 addObject:{v11, v29}];
          ++*(a1 + 24);

          ++v10;
        }

        while (v10 != v9);
        v10 = __p;
      }

      if (v10)
      {
        v22 = v35;
        v23 = v10;
        if (v35 != v10)
        {
          do
          {
            v24 = *--v22;
          }

          while (v22 != v10);
          v23 = __p;
        }

        v35 = v10;
        operator delete(v23);
      }

      v25 = v30;
      v26 = v30[1];
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = v25[2];
          v28 = *v27 == v25;
          v25 = v27;
        }

        while (!v28);
      }

      v8 = v27;
    }

    while (v27 != v29);
  }
}

void sub_1E0763148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, ...)
{
  va_start(va, a5);

  std::pair<MPSGraphBlock * const {__strong},std::vector<MPSGraphTensor * {__strong}>>::~pair(va);
  _Unwind_Resume(a1);
}

void sub_1E076316C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  std::pair<MPSGraphBlock * const {__strong},std::vector<MPSGraphTensor * {__strong}>>::~pair(va);
  _Unwind_Resume(a1);
}

void AddWhileInjectValuesRewrite::addBlockOutputs(void *a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a1[1];
  v10 = *(((*(v9 + 64) + 16 * ((*(*(v9 + 64) + 44) >> 23) & 1) + ((*(*(v9 + 64) + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*(v9 + 64) + 40) + 24 * (a4 ^ 1u) + 8);
  v73 = [*(*(v9 + 40) + 8) objectAtIndexedSubscript:?];
  v11 = v10 - 8;
  v12 = *(a1[2] + 56);
  if (!v10)
  {
    v11 = 0;
  }

  v13 = *(v11 + 40);
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  v14 = a1[4];
  v15 = v14[1];
  v16 = a1;
  if (!v15)
  {
    v22 = 0;
    v17 = v73;
    v23 = *v14;
    v68 = v14 + 1;
    if (*v14 != v14 + 1)
    {
      goto LABEL_22;
    }

    goto LABEL_67;
  }

  v17 = v73;
  while (1)
  {
    v18 = v15[4];
    if (v73 < v18)
    {
      goto LABEL_6;
    }

    if (v18 >= v73)
    {
      break;
    }

    ++v15;
LABEL_6:
    v15 = *v15;
    if (!v15)
    {
      v22 = 0;
      v23 = *v14;
      v68 = v14 + 1;
      if (*v14 != v14 + 1)
      {
        goto LABEL_22;
      }

      goto LABEL_67;
    }
  }

  v19 = a1[6];
  if (!v19)
  {
LABEL_20:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v20 = v19;
      v21 = v19[4];
      if (v73 >= v21)
      {
        break;
      }

      v19 = *v20;
      if (!*v20)
      {
        goto LABEL_20;
      }
    }

    if (v21 >= v73)
    {
      break;
    }

    v19 = v20[1];
    if (!v19)
    {
      goto LABEL_20;
    }
  }

  v22 = v20 + 5;
  v17 = v73;
  v23 = *v14;
  v68 = v14 + 1;
  if (*v14 != v14 + 1)
  {
LABEL_22:
    v24 = 0;
    v71 = v7;
    v72 = v8;
    v74 = a1;
    v70 = v22;
    do
    {
      v69 = v23;
      std::pair<MPSGraphBlock * const {__strong},std::vector<MPSGraphTensor * {__strong}>>::pair[abi:ne200100](&v78, (v23 + 4));
      v25 = __p;
      v76 = v80;
      if (__p == v80)
      {
        goto LABEL_56;
      }

      do
      {
        v26 = *v25;
        v27 = [v7 objectAtIndexedSubscript:{objc_msgSend(v7, "count") + v24 - v16[3]}];
        v28 = v27;
        if (v17 != v78)
        {
          v29 = v27;
          goto LABEL_52;
        }

        v30 = v16[2];
        v77 = v28;
        v75 = [v30 popBackFromList:v28 outputList:&v77 name:0];
        v29 = v77;

        v32 = v22[1];
        v31 = v22[2];
        if (v32 >= v31)
        {
          v35 = v32 - *v22;
          v36 = v35 >> 3;
          v37 = (v35 >> 3) + 1;
          if (v37 >> 61)
          {
            std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
          }

          v38 = v31 - *v22;
          v39 = v38 >> 2;
          if (v38 >> 2 <= v37)
          {
            v39 = (v35 >> 3) + 1;
          }

          if (v38 >= 0x7FFFFFFFFFFFFFF8)
          {
            v40 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v40 = v39;
          }

          if (v40)
          {
            if (!(v40 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *(8 * v36) = v75;
          v34 = 8 * v36 + 8;
          v41 = v22;
          v42 = v22[1];
          v43 = *v41;
          v44 = 8 * v36 - (v42 - *v41);
          v45 = v42 - *v41;
          if (v42 == *v41)
          {
            v8 = v72;
            v17 = v73;
            v22 = v70;
            v33 = v75;
            *v70 = v44;
            v70[1] = v34;
            v70[2] = 0;
            if (v43)
            {
              goto LABEL_49;
            }
          }

          else
          {
            v46 = v45 - 8;
            v47 = *v41;
            v48 = v44;
            if ((v45 - 8) < 0x38)
            {
              goto LABEL_72;
            }

            if (v43 < v35 + (v46 & 0xFFFFFFFFFFFFFFF8) - v45 + 8)
            {
              v47 = v43;
              v48 = v44;
              if (v44 < v43 + (v46 & 0xFFFFFFFFFFFFFFF8) + 8)
              {
                goto LABEL_72;
              }
            }

            v49 = v45 >> 3;
            v50 = (v46 >> 3) + 1;
            v51 = v50 & 0x3FFFFFFFFFFFFFFCLL;
            v47 = &v43[v51];
            v48 = (v44 + v51 * 8);
            v52 = (-8 * v49 + 8 * v36 + 16);
            v53 = (v43 + 2);
            v54 = v50 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v55 = *(v53 - 1);
              v56 = *v53;
              *(v53 - 1) = 0uLL;
              *v53 = 0uLL;
              *(v52 - 1) = v55;
              *v52 = v56;
              v52 += 2;
              v53 += 2;
              v54 -= 4;
            }

            while (v54);
            if (v50 != (v50 & 0x3FFFFFFFFFFFFFFCLL))
            {
LABEL_72:
              do
              {
                v57 = *v47;
                *v47++ = 0;
                *v48++ = v57;
              }

              while (v47 != v42);
            }

            v58 = v44;
            v8 = v72;
            do
            {
              v59 = *v43++;
            }

            while (v43 != v42);
            v22 = v70;
            v43 = *v70;
            v33 = v75;
            v60 = v58;
            v17 = v73;
            *v70 = v60;
            v70[1] = v34;
            v70[2] = 0;
            if (v43)
            {
LABEL_49:
              operator delete(v43);
            }
          }

          v7 = v71;
          goto LABEL_51;
        }

        v33 = v75;
        *v32 = v75;
        v34 = (v32 + 1);
LABEL_51:
        v22[1] = v34;

        v16 = v74;
LABEL_52:
        [v8 addObject:{v29, v68}];
        ++v24;

        ++v25;
      }

      while (v25 != v76);
      v25 = __p;
LABEL_56:
      if (v25)
      {
        v61 = v80;
        v62 = v25;
        if (v80 != v25)
        {
          do
          {
            v63 = *--v61;
          }

          while (v61 != v25);
          v62 = __p;
        }

        v80 = v25;
        operator delete(v62);
        v17 = v73;
      }

      v64 = v69;
      v65 = v69[1];
      if (v65)
      {
        do
        {
          v66 = v65;
          v65 = *v65;
        }

        while (v65);
      }

      else
      {
        do
        {
          v66 = v64[2];
          v67 = *v66 == v64;
          v64 = v66;
        }

        while (!v67);
      }

      v23 = v66;
    }

    while (v66 != v68);
  }

LABEL_67:
}

void sub_1E076377C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  std::pair<MPSGraphBlock * const {__strong},std::vector<MPSGraphTensor * {__strong}>>::~pair(va);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,std::__map_value_compare<MPSGraphBlock * {__strong},std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,std::less<MPSGraphBlock * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>>>::__emplace_hint_unique_key_args<MPSGraphBlock * {__strong},std::pair<MPSGraphBlock * const {__strong},std::vector<MPSGraphTensor * {__strong}>> const&>(void *result, void *a2, unint64_t a3)
{
  v3 = result + 1;
  if (result + 1 == a2 || (v4 = a2[4], v4 > a3))
  {
    v5 = *a2;
    if (*result == a2)
    {
      v7 = a2;
      goto LABEL_16;
    }

    if (v5)
    {
      v6 = *a2;
      do
      {
        v7 = v6;
        v6 = v6[1];
      }

      while (v6);
    }

    else
    {
      v11 = a2;
      do
      {
        v7 = v11[2];
        v12 = *v7 == v11;
        v11 = v7;
      }

      while (v12);
    }

    if (v7[4] < a3)
    {
LABEL_16:
      if (v5)
      {
        v13 = v7 + 1;
      }

      else
      {
        v13 = a2;
      }

      if (*v13)
      {
        return result;
      }

LABEL_34:
      operator new();
    }

    v14 = *v3;
    if (!*v3)
    {
      goto LABEL_34;
    }

    while (1)
    {
      while (1)
      {
        v15 = v14;
        v16 = v14[4];
        if (v16 <= a3)
        {
          break;
        }

        v14 = *v14;
        if (!*v15)
        {
          goto LABEL_34;
        }
      }

      if (v16 >= a3)
      {
        break;
      }

      v14 = v14[1];
      if (!v14)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    if (v4 >= a3)
    {
      return result;
    }

    v8 = a2[1];
    if (v8)
    {
      do
      {
        v9 = v8;
        v8 = *v8;
        v10 = v9;
      }

      while (v8);
    }

    else
    {
      v10 = a2;
      do
      {
        v17 = v10;
        v10 = v10[2];
      }

      while (*v10 != v17);
    }

    if (v10 == v3)
    {
      goto LABEL_34;
    }

    if (v10[4] > a3)
    {
      goto LABEL_34;
    }

    v18 = *v3;
    if (!*v3)
    {
      goto LABEL_34;
    }

    while (1)
    {
      while (1)
      {
        v19 = v18;
        v20 = v18[4];
        if (v20 <= a3)
        {
          break;
        }

        v18 = *v18;
        if (!*v19)
        {
          goto LABEL_34;
        }
      }

      if (v20 >= a3)
      {
        break;
      }

      v18 = v18[1];
      if (!v18)
      {
        goto LABEL_34;
      }
    }
  }

  return result;
}

void sub_1E07639EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,std::__map_value_compare<MPSGraphBlock * {__strong},std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,std::less<MPSGraphBlock * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,std::__map_value_compare<MPSGraphBlock * {__strong},std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,std::less<MPSGraphBlock * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>>>::destroy(*a1);
    std::__tree<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,std::__map_value_compare<MPSGraphBlock * {__strong},std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,std::less<MPSGraphBlock * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      v3 = a1[6];
      v4 = a1[5];
      if (v3 != v2)
      {
        do
        {
          v5 = *(v3 - 8);
          v3 -= 8;
        }

        while (v3 != v2);
        v4 = a1[5];
      }

      a1[6] = v2;
      operator delete(v4);
    }

    operator delete(a1);
  }
}

void AutodiffForData::~AutodiffForData(AutodiffForData *this)
{
  AutodiffLoopData::~AutodiffLoopData(this);

  JUMPOUT(0x1E12E5B90);
}

void AutodiffForData::extractValues(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v5 = *(a1 + 8);
  v21[1] = mlir::Attribute::getContext((v5[8] + 24));
  memset(&v21[2], 0, 24);
  v21[0] = &unk_1F5B4B188;
  v6 = v5;
  v18 = v6;
  WeakRetained = objc_loadWeakRetained(v6 + 1);
  v20 = a2;
  v17 = &unk_1F5B4B4B8;
  AddForInputsRewrite::rewrite(&v17, v6[8], v21);
  MPSGraphDelegateCompiler.precompilationDescriptor.modify(v21, v7);

  v9 = *v20;
  v8 = v20[1];
  v10 = (v8 - *v20) >> 3;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  std::vector<MPSGraphTensor * {__strong}>::reserve(a3, v10);
  if (v8 != v9)
  {
    if (v10 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = -v10;
    do
    {
      while (1)
      {
        v13 = [v18[3] objectAtIndexedSubscript:{v12 + objc_msgSend(v18[3], "count")}];
        v21[0] = v13;
        v14 = a3[1];
        if (v14 >= a3[2])
        {
          break;
        }

        v21[0] = 0;
        *v14 = v13;
        a3[1] = (v14 + 1);

        ++v12;
        if (!--v11)
        {
          goto LABEL_9;
        }
      }

      v15 = std::vector<MPSGraphTensor * {__strong}>::__emplace_back_slow_path<MPSGraphTensor * {__strong}>(a3, v21);
      v16 = v21[0];
      a3[1] = v15;

      ++v12;
      --v11;
    }

    while (v11);
  }

LABEL_9:
}

void sub_1E0763C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
{
  std::vector<MPSGraphTensor * {__strong}>::~vector[abi:ne200100](v12);

  _Unwind_Resume(a1);
}

void AutodiffForData::injectValues(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 8);
  Context = mlir::Attribute::getContext((v5[8] + 24));
  v26 = 0uLL;
  v27 = 0;
  v24 = &unk_1F5B4B188;
  v6 = v5;
  v19 = v6;
  WeakRetained = objc_loadWeakRetained(v6 + 1);
  v7 = *a2 + 40;
  v18 = &unk_1F5B4B518;
  v21 = v7;
  __p = 0;
  v23 = 0uLL;
  AddForInputsRewrite::rewrite(&v18, v6[8], &v24);
  MPSGraphDelegateCompiler.precompilationDescriptor.modify(&v24, v8);

  v9 = [*(v19[5] + 8) objectAtIndexedSubscript:0];
  v10 = __p;
  v24 = v9;
  Context = __p;
  v17 = v23;
  v26 = v23;
  v23 = 0uLL;
  __p = 0;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = a3 + 1;
  std::__tree<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,std::__map_value_compare<MPSGraphBlock * {__strong},std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,std::less<MPSGraphBlock * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>>>::__emplace_hint_unique_key_args<MPSGraphBlock * {__strong},std::pair<MPSGraphBlock * const {__strong},std::vector<MPSGraphTensor * {__strong}>> const&>(a3, a3 + 1, v9);
  if (v10)
  {
    for (i = v17; i != v10; i -= 8)
    {
      v12 = *(i - 1);
    }

    operator delete(v10);
  }

  v18 = &unk_1F5B4B518;
  v13 = __p;
  if (__p)
  {
    v14 = v23;
    v15 = __p;
    if (v23 != __p)
    {
      do
      {
        v16 = *(v14 - 1);
        v14 -= 8;
      }

      while (v14 != v13);
      v15 = __p;
    }

    *&v23 = v13;
    operator delete(v15);
  }
}

void sub_1E0763F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  std::__tree<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,std::__map_value_compare<MPSGraphBlock * {__strong},std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>,std::less<MPSGraphBlock * {__strong}>,true>,std::allocator<std::__value_type<MPSGraphBlock * {__strong},std::vector<MPSGraphTensor * {__strong}>>>>::destroy(*v5);
  std::pair<MPSGraphBlock * const {__strong},std::vector<MPSGraphTensor * {__strong}>>::~pair(va1);

  AddForInjectValuesRewrite::~AddForInjectValuesRewrite(va);
  _Unwind_Resume(a1);
}

void sub_1E0763F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  AddForInjectValuesRewrite::~AddForInjectValuesRewrite(va);
  MPSGraphDelegateCompiler.precompilationDescriptor.modify(va1, v6);

  _Unwind_Resume(a1);
}

void AddForInputsRewrite::rewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v67[5] = *MEMORY[0x1E69E9840];
  v60 = a2;
  v5 = *(*(a1 + 16) + 176);
  v55 = v5;
  v53 = *(*(*(a1 + 16) + 56) + 16);
  v58 = *(a1 + 8);
  v6 = *(*(a1 + 16) + 56);
  v7 = *(a2 + 16);
  v9 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a2, v8);
  *(v6 + 16) = v7;
  *(v6 + 24) = v9;
  WeakRetained = objc_loadWeakRetained((*(a1 + 8) + 48));
  v11 = *(a1 + 16);
  v12 = *(v11 + 176);
  *(v11 + 176) = WeakRetained;

  v13 = [*(a1 + 8) inputTensors];
  v14 = [v13 mutableCopy];

  v15 = [v14 count];
  (**a1)(a1, v14);
  v17 = [v14 count];
  v56 = a1;
  v59 = v14;
  v54 = (a1 + 8);
  if (v17 != v15)
  {
    [v14 objectAtIndexedSubscript:v15];
    objc_claimAutoreleasedReturnValue();
    operator new();
  }

  if (v17 >= 4)
  {
    [v14 objectAtIndexedSubscript:3];
    objc_claimAutoreleasedReturnValue();
    operator new();
  }

  v18 = *(v60 + 2);
  v19 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(v60, v16) + 8);
  a3[3] = v18;
  a3[4] = v19;
  v20 = *(v60 + 3);
  ODSOperandIndexAndLength = mlir::scf::ForOp::getODSOperandIndexAndLength(&v60, 0, v21, v22);
  v24 = *(*(v60 + 9) + 32 * ODSOperandIndexAndLength + 24);
  v27 = mlir::scf::ForOp::getODSOperandIndexAndLength(&v60, 1u, v25, v26);
  v28 = *(*(v60 + 9) + 32 * v27 + 24);
  v31 = mlir::scf::ForOp::getODSOperandIndexAndLength(&v60, 2u, v29, v30);
  v32 = *(*(v60 + 9) + 32 * v31 + 24);
  v61 = v20;
  Context = mlir::Attribute::getContext(&v61);
  v34 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::ForOp,void>::id, Context);
  if ((v35 & 1) == 0)
  {
    v65 = 1283;
    v64[2] = "scf.for";
    v64[3] = 7;
    v63 = 259;
    llvm::operator+(v64, &v62, v67);
    llvm::report_fatal_error(v67, 1);
  }

  mlir::OperationState::OperationState(v66, v20, v34);
  mlir::ValueRange::ValueRange(v67, 0, 0);
  mlir::scf::ForOp::build((a3 + 1), v66, v24, v28, v32, v67[0], v67[1], v36, 0, v52);
  v37 = mlir::OpBuilder::create((a3 + 1), v66);
  v38 = *(*(v37 + 48) + 16);
  mlir::OperationState::~OperationState(v66);
  if (v38 != &mlir::detail::TypeIDResolver<mlir::scf::ForOp,void>::id)
  {
    v37 = 0;
  }

  mlir::Region::takeBody((((v37 + 64 + 16 * ((*(v37 + 44) >> 23) & 1) + ((*(v37 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v37 + 40)), (((&v60[4 * ((v60[11] >> 23) & 1) + 17] + ((v60[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v60[10]));
  AddInputsRewrite::replaceOp(v54, v60, v37, v59);
  v39 = *(((v37 + 64 + 16 * ((*(v37 + 44) >> 23) & 1) + ((*(v37 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v37 + 40) + 8);
  if (v39)
  {
    v40 = (v39 - 8);
  }

  else
  {
    v40 = 0;
  }

  v41 = [*(*(*v54 + 40) + 8) objectAtIndexedSubscript:0];
  v42 = AddInputsRewrite::extendBlockInputs(v54, v40, v41, v58[14], 0, 0);
  v43 = v58[14];
  v58[14] = v42;

  Terminator = mlir::Block::getTerminator(v40, v44);
  v46 = *(*(a1 + 16) + 56);
  v47 = *(Terminator + 16);
  v49 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(Terminator, v48);
  *(v46 + 16) = v47;
  *(v46 + 24) = v49;
  objc_storeStrong((v56[2] + 176), v41);
  v50 = [v58[12] mutableCopy];
  (*(*v56 + 8))(v56, v58[14], v50);
  objc_storeStrong(v58 + 12, v50);
  AddInputsRewrite::extendBlockTermOp(a3, v40, v50, 0);
  v51 = *(v56[2] + 56);
  if (v53)
  {
    *(v51 + 16) = v53;
  }

  else
  {
    *(v51 + 16) = 0;
    *(v51 + 24) = 0;
  }

  objc_storeStrong((v56[2] + 176), v5);
}

void sub_1E076470C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (v34)
  {
    operator delete(v34);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void AddForExtractValuesRewrite::addOpInputs(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = *(a1 + 24);
  v4 = *v3;
  v5 = v3[1];
  if (*v3 != v5)
  {
    do
    {
      v6 = *v4;
      v7 = *(a1 + 16);
      v8 = getMPSGraphType((*(v6[1] + 8) & 0xFFFFFFFFFFFFFFF8));
      v9 = [v7 makeListWithElementType:v8 name:0];
      [v10 addObject:v9];

      ++v4;
    }

    while (v4 != v5);
  }
}

void AddForExtractValuesRewrite::addBodyBlockOutputs(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (*(*(a1 + 24) + 8) != **(a1 + 24))
  {
    v6 = 0;
    do
    {
      v7 = [v10 objectAtIndexedSubscript:{v6 + objc_msgSend(v10, "count") - ((*(*(a1 + 24) + 8) - **(a1 + 24)) >> 3)}];
      v8 = *(**(a1 + 24) + 8 * v6);
      v9 = [*(a1 + 16) pushBackToList:v7 element:v8 name:0];

      [v5 addObject:v9];
      ++v6;
    }

    while (v6 < (*(*(a1 + 24) + 8) - **(a1 + 24)) >> 3);
  }
}

void AddForInjectValuesRewrite::~AddForInjectValuesRewrite(AddForInjectValuesRewrite *this)
{
  *this = &unk_1F5B4B518;
  v2 = *(this + 4);
  if (v2)
  {
    v3 = *(this + 5);
    v4 = *(this + 4);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        v3 -= 8;
      }

      while (v3 != v2);
      v4 = *(this + 4);
    }

    *(this + 5) = v2;
    operator delete(v4);
  }
}

void AddForInjectValuesRewrite::addOpInputs(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 24);
  v4 = *v3;
  v5 = v3[1];
  if (*v3 != v5)
  {
    do
    {
      v6 = *v4;
      [v7 addObject:v6];

      ++v4;
    }

    while (v4 != v5);
  }
}

void AddForInjectValuesRewrite::addBodyBlockOutputs(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1[1] + 64);
  v8 = *(((v7 + 16 * ((*(v7 + 44) >> 23) & 1) + ((*(v7 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v7 + 40) + 8);
  if (v8)
  {
    v9 = v8 - 8;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1[2] + 56);
  v11 = *(v9 + 40);
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  if (*(a1[3] + 8) != *a1[3])
  {
    v12 = 0;
    do
    {
      v13 = [v5 objectAtIndexedSubscript:{v12 + objc_msgSend(v5, "count") - ((*(a1[3] + 8) - *a1[3]) >> 3)}];
      v14 = a1[2];
      v19 = v13;
      v15 = [v14 popBackFromList:v13 outputList:&v19 name:0];
      v16 = v19;

      v20 = v15;
      v17 = a1[5];
      if (v17 >= a1[6])
      {
        v18 = std::vector<MPSGraphTensor * {__strong}>::__emplace_back_slow_path<MPSGraphTensor * const {__strong}&>(a1 + 4, &v20);
      }

      else
      {
        *v17 = v15;
        v18 = (v17 + 1);
      }

      a1[5] = v18;
      [v6 addObject:v16];

      ++v12;
    }

    while (v12 < (*(a1[3] + 8) - *a1[3]) >> 3);
  }
}

void *std::__hash_table<std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::unordered_map<void *,Autodiff::TensorFrame>>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = HIDWORD(*a2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (v10[2] == v2)
        {
          return v10;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_23;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_23;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  if (v10[2] != v2)
  {
    goto LABEL_12;
  }

  return v10;
}

void sub_1E07650C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<void *,Autodiff::TensorFrame>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,Autodiff::TensorFrame>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,Autodiff::TensorFrame>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,Autodiff::TensorFrame>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v6.u32[0] < 2uLL)
  {
    while (1)
    {
      v10 = v9[1];
      if (v10 == v4)
      {
        if (v9[2] == a2)
        {
          return v9;
        }
      }

      else if ((v10 & (*&v5 - 1)) != v7)
      {
        goto LABEL_22;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v11 = v9[1];
    if (v11 == v4)
    {
      break;
    }

    if (v11 >= *&v5)
    {
      v11 %= *&v5;
    }

    if (v11 != v7)
    {
      goto LABEL_22;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_1E0765414(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<void *,Autodiff::TensorFrame>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,Autodiff::TensorFrame>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,Autodiff::TensorFrame>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,Autodiff::TensorFrame>>>::find<void *>(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = HIDWORD(*a2);
  v5 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = vcnt_s8(v2);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v6;
    if (v6 >= *&v2)
    {
      v8 = v6 % *&v2;
    }
  }

  else
  {
    v8 = v6 & (*&v2 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  result = *v9;
  if (*v9)
  {
    if (v7.u32[0] < 2uLL)
    {
      v11 = *&v2 - 1;
      while (1)
      {
        v12 = result[1];
        if (v6 == v12)
        {
          if (result[2] == v3)
          {
            return result;
          }
        }

        else if ((v12 & v11) != v8)
        {
          return 0;
        }

        result = *result;
        if (!result)
        {
          return result;
        }
      }
    }

    do
    {
      v13 = result[1];
      if (v6 == v13)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v13 >= *&v2)
        {
          v13 %= *&v2;
        }

        if (v13 != v8)
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

uint64_t std::vector<MPSGraphTensor * {__strong}>::__emplace_back_slow_path<MPSGraphTensor * const {__strong}&>(unint64_t *a1, id *a2)
{
  v2 = a1[1] - *a1;
  v3 = v2 >> 3;
  v4 = (v2 >> 3) + 1;
  if (v4 >> 61)
  {
    std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 2 > v4)
  {
    v4 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v8 = *a2;
  v9 = *a1;
  v10 = a1[1];
  v11 = 8 * v3 - (v10 - *a1);
  *(8 * v3) = v8;
  v12 = v10 - v9;
  if (v10 != v9)
  {
    v13 = v12 - 8;
    v14 = v9;
    v15 = v11;
    if ((v12 - 8) < 0x98)
    {
      goto LABEL_27;
    }

    if (v9 < v2 + (v13 & 0xFFFFFFFFFFFFFFF8) - v12 + 8)
    {
      v14 = v9;
      v15 = v11;
      if (v11 < v9 + (v13 & 0xFFFFFFFFFFFFFFF8) + 8)
      {
        goto LABEL_27;
      }
    }

    v16 = v12 >> 3;
    v17 = (v13 >> 3) + 1;
    v18 = v17 & 0x3FFFFFFFFFFFFFFCLL;
    v14 = &v9[v18];
    v15 = (v11 + v18 * 8);
    v19 = (-8 * v16 + 8 * v3 + 16);
    v20 = (v9 + 2);
    v21 = v17 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v22 = *(v20 - 1);
      v23 = *v20;
      *(v20 - 1) = 0uLL;
      *v20 = 0uLL;
      *(v19 - 1) = v22;
      *v19 = v23;
      v19 += 2;
      v20 += 2;
      v21 -= 4;
    }

    while (v21);
    if (v17 != (v17 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_27:
      do
      {
        v24 = *v14;
        *v14++ = 0;
        *v15++ = v24;
      }

      while (v14 != v10);
    }

    do
    {
      v25 = *v9++;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = 8 * v3 + 8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return 8 * v3 + 8;
}

void std::__tree<void *>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<void *>::destroy(*a1);
    std::__tree<void *>::destroy(a1[1]);

    operator delete(a1);
  }
}

void sub_1E07669A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
{
  v18 = v14;

  _Unwind_Resume(a1);
}

void sub_1E0766EAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51, char a52)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E07676D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51, char a52)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void nsArrayToAttr(void *a1, uint64_t **a2)
{
  v3 = a1;
  mlir::Builder::getIntegerType(a2, 64, 0);
  [v3 count];
  operator new();
}

{
  v3 = a1;
  mlir::Builder::getIntegerType(a2, 64, 0);
  [v3 count];
  operator new();
}

void sub_1E07682D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  operator delete(v12);

  _Unwind_Resume(a1);
}

void sub_1E0768628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
{
  v18 = v14;

  _Unwind_Resume(a1);
}

void sub_1E0768B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, char a44)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E076936C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, char a44)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E076B8D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *a11)
{
  if (a11 != v16)
  {
    free(a11);
  }

  _Unwind_Resume(a1);
}

void sub_1E076C034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *a11)
{
  if (a11 != v15)
  {
    free(a11);
  }

  _Unwind_Resume(a1);
}

void MPSShapeToVector<unsigned long long>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v4 = [v3 count];
  if (v4)
  {
    if (!(v4 >> 61))
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  for (i = 0; [v3 count] > i; ++i)
  {
    v6 = [v3 objectAtIndexedSubscript:i];
    v7 = [v6 integerValue];
    std::vector<long long>::push_back[abi:ne200100](a2, &v7);
  }
}

void sub_1E076C184(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void ___Z21getTargetToPackageMapv_block_invoke()
{
  v0 = _MergedGlobals_7;
  _MergedGlobals_7 = &unk_1F5B77DE0;
}

void ___Z26getPackageToMlirVersionMapv_block_invoke()
{
  v0 = qword_1ECE75320;
  qword_1ECE75320 = &unk_1F5B780B0;
}

void sub_1E076C36C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id loadPlistAtURL(uint64_t a1, void *a2)
{
  v54[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:a1 options:2 error:a2];
  if (v3)
  {
    v38 = 0;
    v4 = [MEMORY[0x1E696AE40] propertyListWithData:v3 options:0 format:&v38 error:a2];
    v5 = v4;
    if (v4)
    {
      v37 = v4;
      v6 = [v37 objectForKey:@"Package Version"];
      v35 = v5;
      v7 = v6 == 0;

      if (v7)
      {
        if (a2)
        {
          v27 = MEMORY[0x1E696ABC0];
          v52 = *MEMORY[0x1E696A578];
          v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error: Expected key %@ in manifest plist not found", @"Package Version"];
          v53 = v26;
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
          v29 = v27;
          v30 = v28;
          *a2 = [v29 errorWithDomain:@"com.apple.mps" code:-20 userInfo:?];
          v25 = v30;
LABEL_69:
        }

        else
        {
        }

        v21 = 0;
      }

      else
      {
        v8 = [v37 objectForKeyedSubscript:@"Package Version"];
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        obj = v8;
        v9 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (v9)
        {
          v10 = 0x1E695D000uLL;
          v33 = *v44;
          do
          {
            v32 = v9;
            for (i = 0; i != v32; ++i)
            {
              if (*v44 != v33)
              {
                objc_enumerationMutation(obj);
              }

              v11 = *(*(&v43 + 1) + 8 * i);
              v12 = [obj objectForKeyedSubscript:v11];
              v41 = 0u;
              v42 = 0u;
              v39 = 0u;
              v40 = 0u;
              v13 = v11;
              v54[0] = @"Original";
              v14 = [objc_alloc(*(v10 + 3952)) initWithObjects:v54 count:1];
              MPSGraphOperatingSystemVersion::MPSGraphOperatingSystemVersion(&v47, v13);
              if (v47.var0 >= 4 && (v47.var0 != 4 || (v47.var1 || v47.var2 >= 21) && (v47.var1 > 4 || v47.var1 == 4 && (v47.var2 >= 1 || !v47.var2))))
              {
                [v14 addObject:@"Resource Storage Mode"];
                [v14 addObject:@"Original Resources Used"];
                [v14 addObject:@"Optimized Resources Used"];
                [v14 addObject:@"Optimized No Device Resources Used"];
                [v14 addObject:@"Callables"];
                [v14 addObject:@"Resource Offsets"];
              }

              MPSGraphOperatingSystemVersion::MPSGraphOperatingSystemVersion(&v47, v13);
              if (v47.var0 >= 5 && (v47.var0 != 5 || v47.var1 > 4 || v47.var1 == 4 && (v47.var2 >= 1 || !v47.var2)))
              {
                [v14 addObject:@"Optimized Modules"];
                [v14 addObject:@"Optimized No Device Modules"];
              }

              MPSGraphOperatingSystemVersion::MPSGraphOperatingSystemVersion(&v47, v13);
              if (v47.var0 >= 5 && (v47.var0 != 5 || v47.var1 > 4 || v47.var1 == 4 && v47.var2 > 0))
              {
                [v14 addObject:@"Data File Names"];
              }

              MPSGraphOperatingSystemVersion::MPSGraphOperatingSystemVersion(&v47, v13);
              if (v47.var0 >= 5 && (v47.var0 > 6uLL || v47.var0 == 6 && (v47.var1 > 0 || !v47.var1 && v47.var2 >= 0)))
              {
                [v14 addObject:@"Binary File Resources"];
              }

              MPSGraphOperatingSystemVersion::MPSGraphOperatingSystemVersion(&v47, v13);
              if (v47.var0 >= 5 && (v47.var0 > 6uLL || v47.var0 == 6 && (v47.var1 > 0 || !v47.var1 && v47.var2 >= 8)))
              {
                [v14 addObject:@"Symbols With Mutable Weight"];
              }

              v15 = [v14 countByEnumeratingWithState:&v39 objects:v50 count:16];
              if (v15)
              {
                v16 = *v40;
                while (2)
                {
                  for (j = 0; j != v15; ++j)
                  {
                    if (*v40 != v16)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v18 = *(*(&v39 + 1) + 8 * j);
                    v19 = [v12 objectForKey:v18];
                    v20 = v19 == 0;

                    if (v20)
                    {
                      if (a2)
                      {
                        v22 = MEMORY[0x1E696ABC0];
                        v48 = *MEMORY[0x1E696A578];
                        v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error: Expected key %@ for Package Version %@ not found in manifest plist", v18, v13];
                        v49 = v23;
                        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
                        *a2 = [v22 errorWithDomain:@"com.apple.mps" code:-20 userInfo:v24];
                      }

                      v25 = obj;
                      v26 = obj;
                      goto LABEL_69;
                    }
                  }

                  v15 = [v14 countByEnumeratingWithState:&v39 objects:v50 count:16];
                  if (v15)
                  {
                    continue;
                  }

                  break;
                }
              }

              v10 = 0x1E695D000;
            }

            v9 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
          }

          while (v9);
        }

        v21 = v37;
      }

      v5 = v35;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

void getMLIRModuleOp(void *a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 path];
    v8 = [v7 cStringUsingEncoding:4];
    v9 = strlen(v8);
    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v10 = v9;
    if (v9 >= 0x17)
    {
      operator new();
    }

    v32 = v9;
    if (v9)
    {
      memmove(__dst, v8, v9);
    }

    *(__dst + v10) = 0;

    __p = 0;
    v29 = 0;
    v30 = 0;
    if (v32 >= 0)
    {
      v15 = __dst;
    }

    else
    {
      v15 = __dst[0];
    }

    if (v32 >= 0)
    {
      v16 = v32;
    }

    else
    {
      v16 = __dst[1];
    }

    mlir::openInputFile(v15, v16, &__p, &v27);
    LOBYTE(v17) = HIBYTE(v30);
    if (SHIBYTE(v30) < 0)
    {
      if (v29)
      {
LABEL_21:
        if (a2)
        {
          if (v30 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          v19 = [MEMORY[0x1E696AEC0] stringWithCString:p_p encoding:4];
          v20 = MPSGraphReportFailure(&stru_1F5B5DFD0.isa, v19);

          v21 = MEMORY[0x1E696ABC0];
          v33 = *MEMORY[0x1E696A578];
          v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d:: %@ ", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/MPSGraphComputePackage.mm", 369, v20];
          v34 = v22;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
          *a2 = [v21 errorWithDomain:@"MPSGraph" code:-1 userInfo:v23];

          LOBYTE(v17) = HIBYTE(v30);
        }

        v17 = v17;
        if ((v17 & 0x80u) != 0)
        {
          v17 = v29;
        }

        if (v17 && MTLReportFailureTypeEnabled())
        {
          if (v30 >= 0)
          {
            v25 = &__p;
          }

          else
          {
            v25 = __p;
          }

          v26 = [MEMORY[0x1E696AEC0] stringWithCString:v25 encoding:4];
          MTLReportFailure();
        }

        *a3 = 0;
        v24 = v27;
        v27 = 0;
        if (v24)
        {
          (*(*v24 + 8))(v24);
        }

        if (SHIBYTE(v30) < 0)
        {
          operator delete(__p);
          if ((v32 & 0x80000000) == 0)
          {
            goto LABEL_33;
          }
        }

        else if ((v32 & 0x80000000) == 0)
        {
          goto LABEL_33;
        }

        operator delete(__dst[0]);
        goto LABEL_33;
      }
    }

    else if (HIBYTE(v30))
    {
      goto LABEL_21;
    }

    operator new();
  }

  if (a2)
  {
    v11 = MPSGraphReportFailure(&cfstr_ExpectedAValid.isa);
    v12 = MEMORY[0x1E696ABC0];
    v35 = *MEMORY[0x1E696A578];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d:: %@ ", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/MPSGraphComputePackage.mm", 360, v11];
    v36[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    *a2 = [v12 errorWithDomain:@"MPSGraph" code:-1 userInfo:v14];
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  *a3 = 0;
LABEL_33:
}

void sub_1E076DB64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a15)
  {
    (*(*a15 + 8))(a15);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a27 & 0x80000000) == 0)
      {
LABEL_8:

        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a22);
      goto LABEL_8;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((a27 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_1E076ED8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, void *a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a62 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void InProcessPackageWritingGuard::lockPath(uint64_t a1, const void *a2, size_t a3)
{
  __lk.__m_ = &qword_1ECE75360;
  __lk.__owns_ = 1;
  std::mutex::lock(&qword_1ECE75360);
  if (a2)
  {
    if (a3 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (a3 >= 0x17)
    {
      operator new();
    }

    if (a3)
    {
      while (1)
      {
        HIBYTE(v13) = a3;
        memmove(__dst, a2, a3);
        *(__dst + a3) = 0;
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(&xmmword_1ECE75338, __dst);
        if (SHIBYTE(v13) < 0)
        {
          v6 = v5;
          operator delete(__dst[0]);
          v5 = v6;
        }

        if (v5)
        {
          break;
        }

        std::condition_variable::wait(&unk_1ECE753A0, &__lk);
      }
    }

    else
    {
      while (1)
      {
        HIBYTE(v13) = 0;
        LOBYTE(__dst[0]) = 0;
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(&xmmword_1ECE75338, __dst);
        if (SHIBYTE(v13) < 0)
        {
          v10 = v9;
          operator delete(__dst[0]);
          v9 = v10;
        }

        if (v9)
        {
          break;
        }

        std::condition_variable::wait(&unk_1ECE753A0, &__lk);
      }
    }
  }

  else
  {
    while (1)
    {
      __dst[0] = 0;
      __dst[1] = 0;
      v13 = 0;
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(&xmmword_1ECE75338, __dst);
      if (SHIBYTE(v13) < 0)
      {
        v8 = v7;
        operator delete(__dst[0]);
        v7 = v8;
      }

      if (v7)
      {
        break;
      }

      std::condition_variable::wait(&unk_1ECE753A0, &__lk);
    }
  }

  operator new();
}

void sub_1E076F244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, char a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a11 == 1)
  {
    std::mutex::unlock(a10);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

id MPSGraphOperatingSystemVersion::asString(MPSGraphOperatingSystemVersion *this)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AEC0]);
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  std::to_string(&v18, this->var0);
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v18;
  }

  else
  {
    v4 = v18.__r_.__value_.__r.__words[0];
  }

  v5 = [v3 initWithCString:v4 encoding:4];
  v6 = [v2 stringByAppendingString:v5];

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  v7 = [v6 stringByAppendingString:@"."];

  v8 = objc_alloc(MEMORY[0x1E696AEC0]);
  std::to_string(&v18, this->var1);
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v18;
  }

  else
  {
    v9 = v18.__r_.__value_.__r.__words[0];
  }

  v10 = [v8 initWithCString:v9 encoding:4];
  v11 = [v7 stringByAppendingString:v10];

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  v12 = [v11 stringByAppendingString:@"."];

  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  std::to_string(&v18, this->var2);
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v18;
  }

  else
  {
    v14 = v18.__r_.__value_.__r.__words[0];
  }

  v15 = [v13 initWithCString:v14 encoding:4];
  v16 = [v12 stringByAppendingString:v15];

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  return v16;
}

void sub_1E076F488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1E07700EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, void *a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, _BYTE *a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  std::unique_ptr<llvm::ToolOutputFile>::~unique_ptr[abi:ne200100](&a37);
  if (a43 < 0)
  {
    operator delete(__p);
  }

  if (*(v47 - 161) < 0)
  {
    operator delete(*(v47 - 184));
  }

  _Unwind_Resume(a1);
}

_BYTE **std::unique_ptr<llvm::ToolOutputFile>::~unique_ptr[abi:ne200100](_BYTE **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (v1[128] == 1)
    {
      llvm::raw_fd_ostream::~raw_fd_ostream((v1 + 32));
    }

    llvm::CleanupInstaller::~CleanupInstaller(v1);
    MEMORY[0x1E12E5B90]();
    return v2;
  }

  return result;
}

void sub_1E07705C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, _BYTE *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  std::unique_ptr<llvm::ToolOutputFile>::~unique_ptr[abi:ne200100](&a13);
  if (a19 < 0)
  {
    operator delete(__p);
    if ((a25 & 0x80000000) == 0)
    {
LABEL_3:

      _Unwind_Resume(a1);
    }
  }

  else if ((a25 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a20);

  _Unwind_Resume(a1);
}

void sub_1E07707E8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1E07713F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  llvm::StringMap<support::ResourceStorage::ResourceReadInfo,llvm::MallocAllocator>::~StringMap(&a22);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  llvm::SmallVector<support::ResourceStorage::ResourceWriteInfo,10u>::~SmallVector(&a40);

  _Unwind_Resume(a1);
}

uint64_t llvm::StringMap<support::ResourceStorage::ResourceReadInfo,llvm::MallocAllocator>::~StringMap(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      do
      {
        v4 = *(*a1 + v3);
        if (v4 != -8 && v4 != 0)
        {
          llvm::deallocate_buffer(v4, (*v4 + 17));
        }

        v3 += 8;
      }

      while (8 * v2 != v3);
    }
  }

  free(*a1);
  return a1;
}

void sub_1E0771B00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  llvm::StringMap<support::ResourceStorage::ResourceReadInfo,llvm::MallocAllocator>::~StringMap(&a30);
  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  _Unwind_Resume(a1);
}

void sub_1E0771CB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_1E0771E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1E0772984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MPSGraphOperatingSystemVersion::MPSGraphOperatingSystemVersion(MPSGraphOperatingSystemVersion *this, NSString *a2)
{
  v3 = [(NSString *)a2 componentsSeparatedByString:@"."];
  if ([v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    this->var0 = [v4 integerValue];
  }

  else
  {
    this->var0 = 0;
  }

  if ([v3 count] < 2)
  {
    this->var1 = 0;
  }

  else
  {
    v5 = [v3 objectAtIndexedSubscript:1];
    this->var1 = [v5 integerValue];
  }

  if ([v3 count] < 3)
  {
    this->var2 = 0;
  }

  else
  {
    v6 = [v3 objectAtIndexedSubscript:2];
    this->var2 = [v6 integerValue];
  }
}

void InProcessPackageWritingGuard::~InProcessPackageWritingGuard(InProcessPackageWritingGuard *this)
{
  std::condition_variable::~condition_variable((this + 104));
  std::mutex::~mutex((this + 40));
  v2 = *(this + 2);
  if (v2)
  {
    do
    {
      v4 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v3 = *this;
  *this = 0;
  if (v3)
  {
    operator delete(v3);
  }
}

uint64_t **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_1E077329C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

mlir::Operation **mlir::OwningOpRef<mlir::ModuleOp>::~OwningOpRef(mlir::Operation **a1)
{
  v2 = *a1;
  if (v2)
  {
    mlir::Operation::erase(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    mlir::Operation::erase(v2);
  }

  return a1;
}

void std::default_delete<InProcessPackageWritingGuard::LockGuard>::operator()[abi:ne200100](uint64_t a1)
{
  if ((atomic_load_explicit(&qword_1ECE75330, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECE75330))
  {
    unk_1ECE75348 = 0u;
    xmmword_1ECE75338 = 0u;
    dword_1ECE75358 = 1065353216;
    qword_1ECE75360 = 850045863;
    unk_1ECE75368 = 0u;
    unk_1ECE75378 = 0u;
    unk_1ECE75388 = 0u;
    qword_1ECE75398 = 0;
    unk_1ECE753A0 = 1018212795;
    unk_1ECE753A8 = 0u;
    unk_1ECE753B8 = 0u;
    qword_1ECE753C8 = 0;
    __cxa_atexit(InProcessPackageWritingGuard::~InProcessPackageWritingGuard, &xmmword_1ECE75338, &dword_1DF9BF000);
    __cxa_guard_release(&qword_1ECE75330);
  }

  v3 = *a1;
  v2 = *(a1 + 8);
  std::mutex::lock(&qword_1ECE75360);
  if (v3)
  {
    if (v2 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v2 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v17) = v2;
    if (v2)
    {
      memmove(__dst, v3, v2);
    }

    *(__dst + v2) = 0;
    v4 = std::__hash_table<std::__hash_value_type<std::string,MPSMLIROps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIROps>>>::find<std::string>(&xmmword_1ECE75338, __dst);
    if (!v4)
    {
LABEL_41:
      if (SHIBYTE(v17) < 0)
      {
        operator delete(__dst[0]);
      }

      std::mutex::unlock(&qword_1ECE75360);
      std::condition_variable::notify_all(&unk_1ECE753A0);

      JUMPOUT(0x1E12E5B90);
    }
  }

  else
  {
    __dst[0] = 0;
    __dst[1] = 0;
    v17 = 0;
    v4 = std::__hash_table<std::__hash_value_type<std::string,MPSMLIROps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIROps>>>::find<std::string>(&xmmword_1ECE75338, __dst);
    if (!v4)
    {
      goto LABEL_41;
    }
  }

  v5 = *(&xmmword_1ECE75338 + 1);
  v6 = v4[1];
  v7 = vcnt_s8(*(&xmmword_1ECE75338 + 8));
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    if (v6 >= *(&xmmword_1ECE75338 + 1))
    {
      v6 = (v6 % *(&xmmword_1ECE75338 + 1));
    }
  }

  else
  {
    v6 = ((*(&xmmword_1ECE75338 + 1) - 1) & v6);
  }

  v8 = xmmword_1ECE75338;
  v9 = *(xmmword_1ECE75338 + 8 * v6);
  do
  {
    v10 = v9;
    v9 = *v9;
  }

  while (v9 != v4);
  if (v10 == &unk_1ECE75348)
  {
    goto LABEL_29;
  }

  v11 = v10[1];
  if (v7.u32[0] > 1uLL)
  {
    if (v11 >= *(&xmmword_1ECE75338 + 1))
    {
      v11 = (v11 % *(&xmmword_1ECE75338 + 1));
    }
  }

  else
  {
    v11 = (v11 & (*(&xmmword_1ECE75338 + 1) - 1));
  }

  if (v11 != v6)
  {
LABEL_29:
    if (!*v4)
    {
      goto LABEL_30;
    }

    v12 = (*v4)[1];
    if (v7.u32[0] > 1uLL)
    {
      if (v12 >= *(&xmmword_1ECE75338 + 1))
      {
        v12 %= *(&xmmword_1ECE75338 + 1);
      }
    }

    else
    {
      v12 &= *(&xmmword_1ECE75338 + 1) - 1;
    }

    if (v12 != v6)
    {
LABEL_30:
      *(xmmword_1ECE75338 + 8 * v6) = 0;
    }
  }

  v13 = *v4;
  if (*v4)
  {
    v14 = v13[1];
    if (v7.u32[0] > 1uLL)
    {
      if (v14 >= v5)
      {
        v14 = (v14 % v5);
      }
    }

    else
    {
      v14 = (v14 & (v5 - 1));
    }

    if (v14 != v6)
    {
      *(v8 + 8 * v14) = v10;
      v13 = *v4;
    }
  }

  *v10 = v13;
  *v4 = 0;
  --qword_1ECE75350;
  if (*(v4 + 39) < 0)
  {
    v15 = v4;
    operator delete(v4[2]);
    v4 = v15;
  }

  operator delete(v4);
  goto LABEL_41;
}

uint64_t llvm::SmallVector<support::ResourceStorage::ResourceWriteInfo,10u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 48 * v3 - 48;
    v5 = -48 * v3;
    do
    {
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v4 -= 48;
      v5 += 48;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

void llvm::SmallVectorTemplateBase<support::ResourceStorage::ResourceWriteInfo,false>::grow(uint64_t a1, unint64_t a2)
{
  v16 = 0;
  v3 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 48, &v16);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = &v6[48 * v7];
    v9 = v5;
    do
    {
      v10 = *v6;
      *(v9 + 16) = *(v6 + 2);
      *v9 = v10;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v11 = *(v6 + 24);
      *(v9 + 40) = *(v6 + 5);
      *(v9 + 24) = v11;
      v9 += 48;
      v6 += 48;
    }

    while (v6 != v8);
    v6 = *a1;
    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = &v6[48 * v12 - 48];
      v14 = -48 * v12;
      do
      {
        if (*(v13 + 23) < 0)
        {
          operator delete(*v13);
        }

        v13 -= 48;
        v14 += 48;
      }

      while (v14);
      v6 = *a1;
    }
  }

  v15 = v16;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 12) = v15;
}

id *GPU::PoolMaxOpHandler::PoolMaxOpHandler(id *this, id *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v100 = *MEMORY[0x1E69E9840];
  v7 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v7 = &unk_1F5B4B630;
  *(v7 + 15) = 0;
  if (*(v7 + 40) != 1)
  {
    return this;
  }

  [a2[6] metalDevice];
  v77 = v95 = a3;
  WindowSizes = mlir::mps::PoolMaxGradientOp::getWindowSizes(&v95);
  Strides = mlir::mps::PoolMaxGradientOp::getStrides(&v95);
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v95);
  *&v96 = v95;
  mlir::mps::PoolMaxGradientOp::getIndicesResultType(&v96);
  if (v8)
  {
    IndicesResultType = mlir::mps::PoolMaxGradientOp::getIndicesResultType(&v96);
    if ((v10 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    MPSDataType = getMPSDataType(IndicesResultType);
  }

  else
  {
    MPSDataType = 536870944;
  }

  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v96);
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  Offsets = mlir::mps::StencilOp::getOffsets(&v95);
  v91 = v13;
  v14 = *(*(v95 + 9) + 24);
  v75 = MPSDataType;
  v76 = PaddingStyle;
  if (v14)
  {
    *&v88 = GPURegionRuntime::getStaticType(a2, v14);
    mlir::ArrayAttr::getValue(&v88);
    if (v15)
    {
      if ((v15 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }
  }

  v88 = xmmword_1E09A7718;
  v89 = unk_1E09A7728;
  v86 = xmmword_1E09A7718;
  v87 = unk_1E09A7728;
  v84 = xmmword_1E09A7718;
  v85 = unk_1E09A7728;
  if (Strides)
  {
    if (mlir::DenseElementsAttr::getNumElements(&Strides) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v82, Strides, 0);
      v16 = Strides;
      NumElements = mlir::DenseElementsAttr::getNumElements(&Strides);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v80, v16, NumElements);
      if (v83 != v81)
      {
        v57 = 3;
        do
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v82, &v78);
          v58 = v79;
          if (v79 < 0x41)
          {
            *(&v88 + v57--) = v78;
          }

          else
          {
            v59 = v58 - llvm::APInt::countLeadingZerosSlowCase(&v78);
            v60 = v78;
            if (v59 <= 0x40)
            {
              *(&v88 + v57--) = *v78;
            }

            else
            {
              *(&v88 + v57--) = -1;
              if (!v60)
              {
                goto LABEL_78;
              }
            }

            MEMORY[0x1E12E5B60]();
          }

LABEL_78:
          *&v83 = v83 + 1;
        }

        while (v83 != v81);
      }
    }
  }

  if (WindowSizes)
  {
    if (mlir::DenseElementsAttr::getNumElements(&WindowSizes) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v82, WindowSizes, 0);
      v18 = WindowSizes;
      v19 = mlir::DenseElementsAttr::getNumElements(&WindowSizes);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v80, v18, v19);
      if (v83 != v81)
      {
        v61 = 3;
        do
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v82, &v78);
          v62 = v79;
          if (v79 < 0x41)
          {
            *(&v84 + v61--) = v78;
          }

          else
          {
            v63 = v62 - llvm::APInt::countLeadingZerosSlowCase(&v78);
            v64 = v78;
            if (v63 <= 0x40)
            {
              *(&v84 + v61--) = *v78;
            }

            else
            {
              *(&v84 + v61--) = -1;
              if (!v64)
              {
                goto LABEL_87;
              }
            }

            MEMORY[0x1E12E5B60]();
          }

LABEL_87:
          *&v83 = v83 + 1;
        }

        while (v83 != v81);
      }
    }
  }

  if (InputAttributeNames)
  {
    if (mlir::DenseElementsAttr::getNumElements(&InputAttributeNames) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v82, InputAttributeNames, 0);
      v20 = InputAttributeNames;
      v21 = mlir::DenseElementsAttr::getNumElements(&InputAttributeNames);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v80, v20, v21);
      if (v83 != v81)
      {
        v65 = 3;
        do
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v82, &v78);
          v66 = v79;
          if (v79 < 0x41)
          {
            *(&v86 + v65--) = v78;
          }

          else
          {
            v67 = v66 - llvm::APInt::countLeadingZerosSlowCase(&v78);
            v68 = v78;
            if (v67 <= 0x40)
            {
              *(&v86 + v65--) = *v78;
            }

            else
            {
              *(&v86 + v65--) = -1;
              if (!v68)
              {
                goto LABEL_96;
              }
            }

            MEMORY[0x1E12E5B60]();
          }

LABEL_96:
          *&v83 = v83 + 1;
        }

        while (v83 != v81);
      }
    }
  }

  if (v91 == 1 && mlir::DenseElementsAttr::getNumElements(&Offsets) == 8)
  {
    if ((v91 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v82, Offsets, 0);
    v22 = Offsets;
    v23 = mlir::DenseElementsAttr::getNumElements(&Offsets);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v80, v22, v23);
    if (v83 != v81)
    {
      v69 = 7;
      do
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v82, &v78);
        v70 = v79;
        if (v79 < 0x41)
        {
          *(&v96 + v69--) = v78;
        }

        else
        {
          v71 = v70 - llvm::APInt::countLeadingZerosSlowCase(&v78);
          v72 = v78;
          if (v71 <= 0x40)
          {
            *(&v96 + v69--) = *v78;
          }

          else
          {
            *(&v96 + v69--) = -1;
            if (!v72)
            {
              goto LABEL_105;
            }
          }

          MEMORY[0x1E12E5B60]();
        }

LABEL_105:
        *&v83 = v83 + 1;
      }

      while (v83 != v81);
    }
  }

  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v95);
  mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v95);
  v74 = a2;
  mlir::mps::GRUOp::getResetAfter(&v95);
  v25 = 0;
  v26 = (v84 - 1) * v86 + 1;
  if (WeightsLayout <= 2)
  {
    if (WeightsLayout)
    {
      if (WeightsLayout != 2)
      {
        goto LABEL_35;
      }

      goto LABEL_29;
    }

LABEL_34:
    v25 = *(&v96 + 1);
    goto LABEL_35;
  }

  if (WeightsLayout == 3)
  {
    goto LABEL_34;
  }

  if (WeightsLayout != 4)
  {
    goto LABEL_35;
  }

LABEL_29:
  v27 = v88;
  if (1 % v88)
  {
    v27 = 1 % v88;
  }

  v28 = (v26 - v27) & ~((v26 - v27) >> 63);
  v29 = v28 >> 1;
  v30 = v28 - (v28 >> 1);
  if (WeightsLayout == 4)
  {
    v25 = v30;
  }

  else
  {
    v25 = v29;
  }

LABEL_35:
  v31 = 0;
  v32 = (*(&v84 + 1) - 1) * *(&v86 + 1) + 1;
  v73 = a3;
  if (WeightsLayout <= 2)
  {
    if (WeightsLayout)
    {
      if (WeightsLayout != 2)
      {
        goto LABEL_47;
      }

      goto LABEL_41;
    }

LABEL_46:
    v31 = *(&v97 + 1);
    goto LABEL_47;
  }

  if (WeightsLayout == 3)
  {
    goto LABEL_46;
  }

  if (WeightsLayout != 4)
  {
    goto LABEL_47;
  }

LABEL_41:
  v33 = *(&v88 + 1);
  if (1uLL % *(&v88 + 1))
  {
    v33 = 1uLL % *(&v88 + 1);
  }

  v34 = (v32 - v33) & ~((v32 - v33) >> 63);
  v35 = v34 >> 1;
  v36 = v34 - (v34 >> 1);
  if (WeightsLayout == 4)
  {
    v31 = v36;
  }

  else
  {
    v31 = v35;
  }

LABEL_47:
  v37 = 0;
  v38 = (v85 - 1) * v87 + 1;
  if (WeightsLayout <= 2)
  {
    if (WeightsLayout)
    {
      if (WeightsLayout != 2)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    }

LABEL_58:
    v37 = *(&v98 + 1);
    goto LABEL_59;
  }

  if (WeightsLayout == 3)
  {
    goto LABEL_58;
  }

  if (WeightsLayout != 4)
  {
    goto LABEL_59;
  }

LABEL_53:
  v39 = v89;
  if (1 % v89)
  {
    v39 = 1 % v89;
  }

  v40 = (v38 - v39) & ~((v38 - v39) >> 63);
  v41 = v40 >> 1;
  v42 = v40 - (v40 >> 1);
  if (WeightsLayout == 4)
  {
    v37 = v42;
  }

  else
  {
    v37 = v41;
  }

LABEL_59:
  v43 = 0;
  v44 = (*(&v85 + 1) - 1) * *(&v87 + 1) + 1;
  if (WeightsLayout <= 2)
  {
    if (WeightsLayout)
    {
      if (WeightsLayout != 2)
      {
        goto LABEL_71;
      }

LABEL_65:
      v45 = *(&v89 + 1);
      if (1uLL % *(&v89 + 1))
      {
        v45 = 1uLL % *(&v89 + 1);
      }

      v46 = (v44 - v45) & ~((v44 - v45) >> 63);
      v47 = v46 >> 1;
      v48 = v46 - (v46 >> 1);
      if (WeightsLayout == 4)
      {
        v43 = v48;
      }

      else
      {
        v43 = v47;
      }

      goto LABEL_71;
    }

    goto LABEL_70;
  }

  if (WeightsLayout == 3)
  {
LABEL_70:
    v43 = *(&v99 + 1);
    goto LABEL_71;
  }

  if (WeightsLayout == 4)
  {
    goto LABEL_65;
  }

LABEL_71:
  v49 = objc_alloc(MEMORY[0x1E69747E0]);
  v82 = v84;
  v83 = v85;
  v50 = [v49 initWithDevice:v77 kernelSizes:&v82 poolingMode:1];
  *&v82 = v26 / 2 - v25;
  *(&v82 + 1) = v32 / 2 - v31;
  *&v83 = v38 / 2 - v37;
  *(&v83 + 1) = v44 / 2 - v43;
  [v50 setPoolingOffsets:&v82];
  v82 = v88;
  v83 = v89;
  [v50 setPoolingStrides:&v82];
  v82 = v86;
  v83 = v87;
  [v50 setPoolingDilationRates:&v82];
  if (v76 < 8)
  {
    v51 = v76 + 1;
  }

  else
  {
    v51 = 0;
  }

  [v50 setPoolingReturnIndicesMode:{v51, 1}];
  [v50 setPoolingReturnIndicesDataType:v75];
  [v50 setOptions:1];

  v52 = this[1];
  this[1] = v50;

  v53 = [*(v74 + 6) metalDevice];
  v54 = objc_claimAutoreleasedReturnValue();
  v55 = this[15];
  this[15] = v54;

  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  [this[15] setOptions:{objc_msgSend(this[15], "options") | 1}];
  return this;
}

void sub_1E0774180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, void *a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  GPU::BaseOpHandler::~BaseOpHandler(v16);
  _Unwind_Resume(a1);
}

id GPU::anonymous namespace::createPoolingMaxGeneric<mlir::mps::PoolMaxOp,MPSNDArrayPoolingMultiDestinationKernel>(uint64_t a1, uint64_t a2, void *a3)
{
  v90 = *MEMORY[0x1E69E9840];
  v85 = a2;
  v67 = a3;
  WindowSizes = mlir::mps::PoolMaxGradientOp::getWindowSizes(&v85);
  Strides = mlir::mps::PoolMaxGradientOp::getStrides(&v85);
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v85);
  *&v86 = v85;
  mlir::mps::PoolMaxGradientOp::getIndicesResultType(&v86);
  if (v4)
  {
    IndicesResultType = mlir::mps::PoolMaxGradientOp::getIndicesResultType(&v86);
    if ((v6 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    MPSDataType = getMPSDataType(IndicesResultType);
  }

  else
  {
    MPSDataType = 536870944;
  }

  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v86);
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  Offsets = mlir::mps::StencilOp::getOffsets(&v85);
  v81 = v9;
  v10 = *(*(v85 + 72) + 24);
  v66 = PaddingStyle;
  if (v10)
  {
    *&v78 = GPURegionRuntime::getStaticType(a1, v10);
    mlir::ArrayAttr::getValue(&v78);
    if (v11)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }
  }

  v78 = xmmword_1E09A7718;
  v79 = unk_1E09A7728;
  v76 = xmmword_1E09A7718;
  v77 = unk_1E09A7728;
  v74 = xmmword_1E09A7718;
  v75 = unk_1E09A7728;
  if (Strides)
  {
    if (mlir::DenseElementsAttr::getNumElements(&Strides) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v72, Strides, 0);
      v12 = Strides;
      NumElements = mlir::DenseElementsAttr::getNumElements(&Strides);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v70, v12, NumElements);
      if (v73 != v71)
      {
        v50 = 3;
        do
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v72, &v68);
          v51 = v69;
          if (v69 < 0x41)
          {
            *(&v78 + v50--) = v68;
          }

          else
          {
            v52 = v51 - llvm::APInt::countLeadingZerosSlowCase(&v68);
            v53 = v68;
            if (v52 <= 0x40)
            {
              *(&v78 + v50--) = *v68;
            }

            else
            {
              *(&v78 + v50--) = -1;
              if (!v53)
              {
                goto LABEL_78;
              }
            }

            MEMORY[0x1E12E5B60]();
          }

LABEL_78:
          *&v73 = v73 + 1;
        }

        while (v73 != v71);
      }
    }
  }

  if (WindowSizes)
  {
    if (mlir::DenseElementsAttr::getNumElements(&WindowSizes) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v72, WindowSizes, 0);
      v14 = WindowSizes;
      v15 = mlir::DenseElementsAttr::getNumElements(&WindowSizes);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v70, v14, v15);
      if (v73 != v71)
      {
        v54 = 3;
        do
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v72, &v68);
          v55 = v69;
          if (v69 < 0x41)
          {
            *(&v74 + v54--) = v68;
          }

          else
          {
            v56 = v55 - llvm::APInt::countLeadingZerosSlowCase(&v68);
            v57 = v68;
            if (v56 <= 0x40)
            {
              *(&v74 + v54--) = *v68;
            }

            else
            {
              *(&v74 + v54--) = -1;
              if (!v57)
              {
                goto LABEL_87;
              }
            }

            MEMORY[0x1E12E5B60]();
          }

LABEL_87:
          *&v73 = v73 + 1;
        }

        while (v73 != v71);
      }
    }
  }

  if (InputAttributeNames)
  {
    if (mlir::DenseElementsAttr::getNumElements(&InputAttributeNames) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v72, InputAttributeNames, 0);
      v16 = InputAttributeNames;
      v17 = mlir::DenseElementsAttr::getNumElements(&InputAttributeNames);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v70, v16, v17);
      if (v73 != v71)
      {
        v58 = 3;
        do
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v72, &v68);
          v59 = v69;
          if (v69 < 0x41)
          {
            *(&v76 + v58--) = v68;
          }

          else
          {
            v60 = v59 - llvm::APInt::countLeadingZerosSlowCase(&v68);
            v61 = v68;
            if (v60 <= 0x40)
            {
              *(&v76 + v58--) = *v68;
            }

            else
            {
              *(&v76 + v58--) = -1;
              if (!v61)
              {
                goto LABEL_96;
              }
            }

            MEMORY[0x1E12E5B60]();
          }

LABEL_96:
          *&v73 = v73 + 1;
        }

        while (v73 != v71);
      }
    }
  }

  if (v81 == 1 && mlir::DenseElementsAttr::getNumElements(&Offsets) == 8)
  {
    if ((v81 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v72, Offsets, 0);
    v18 = Offsets;
    v19 = mlir::DenseElementsAttr::getNumElements(&Offsets);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v70, v18, v19);
    if (v73 != v71)
    {
      v62 = 7;
      do
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v72, &v68);
        v63 = v69;
        if (v69 < 0x41)
        {
          *(&v86 + v62--) = v68;
        }

        else
        {
          v64 = v63 - llvm::APInt::countLeadingZerosSlowCase(&v68);
          v65 = v68;
          if (v64 <= 0x40)
          {
            *(&v86 + v62--) = *v68;
          }

          else
          {
            *(&v86 + v62--) = -1;
            if (!v65)
            {
              goto LABEL_105;
            }
          }

          MEMORY[0x1E12E5B60]();
        }

LABEL_105:
        *&v73 = v73 + 1;
      }

      while (v73 != v71);
    }
  }

  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v85);
  mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v85);
  v21 = MPSDataType;
  mlir::mps::GRUOp::getResetAfter(&v85);
  v22 = 0;
  v23 = (v74 - 1) * v76 + 1;
  if (WeightsLayout <= 2)
  {
    if (WeightsLayout)
    {
      if (WeightsLayout != 2)
      {
        goto LABEL_34;
      }

      goto LABEL_28;
    }

LABEL_33:
    v22 = *(&v86 + 1);
    goto LABEL_34;
  }

  if (WeightsLayout == 3)
  {
    goto LABEL_33;
  }

  if (WeightsLayout != 4)
  {
    goto LABEL_34;
  }

LABEL_28:
  v24 = v78;
  if (1 % v78)
  {
    v24 = 1 % v78;
  }

  v25 = (v23 - v24) & ~((v23 - v24) >> 63);
  v26 = v25 >> 1;
  v27 = v25 - (v25 >> 1);
  if (WeightsLayout == 4)
  {
    v22 = v27;
  }

  else
  {
    v22 = v26;
  }

LABEL_34:
  v28 = 0;
  v29 = (*(&v74 + 1) - 1) * *(&v76 + 1) + 1;
  if (WeightsLayout <= 2)
  {
    if (WeightsLayout)
    {
      if (WeightsLayout != 2)
      {
        goto LABEL_46;
      }

      goto LABEL_40;
    }

LABEL_45:
    v28 = *(&v87 + 1);
    goto LABEL_46;
  }

  if (WeightsLayout == 3)
  {
    goto LABEL_45;
  }

  if (WeightsLayout != 4)
  {
    goto LABEL_46;
  }

LABEL_40:
  v30 = *(&v78 + 1);
  if (1uLL % *(&v78 + 1))
  {
    v30 = 1uLL % *(&v78 + 1);
  }

  v31 = (v29 - v30) & ~((v29 - v30) >> 63);
  v32 = v31 >> 1;
  v33 = v31 - (v31 >> 1);
  if (WeightsLayout == 4)
  {
    v28 = v33;
  }

  else
  {
    v28 = v32;
  }

LABEL_46:
  v34 = 0;
  v35 = (v75 - 1) * v77 + 1;
  if (WeightsLayout <= 2)
  {
    if (WeightsLayout)
    {
      if (WeightsLayout != 2)
      {
        goto LABEL_58;
      }

      goto LABEL_52;
    }

LABEL_57:
    v34 = *(&v88 + 1);
    goto LABEL_58;
  }

  if (WeightsLayout == 3)
  {
    goto LABEL_57;
  }

  if (WeightsLayout != 4)
  {
    goto LABEL_58;
  }

LABEL_52:
  v36 = v79;
  if (1 % v79)
  {
    v36 = 1 % v79;
  }

  v37 = (v35 - v36) & ~((v35 - v36) >> 63);
  v38 = v37 >> 1;
  v39 = v37 - (v37 >> 1);
  if (WeightsLayout == 4)
  {
    v34 = v39;
  }

  else
  {
    v34 = v38;
  }

LABEL_58:
  v40 = 0;
  v41 = (*(&v75 + 1) - 1) * *(&v77 + 1) + 1;
  if (WeightsLayout <= 2)
  {
    if (WeightsLayout)
    {
      if (WeightsLayout != 2)
      {
        goto LABEL_70;
      }

      goto LABEL_64;
    }

LABEL_69:
    v40 = *(&v89 + 1);
    goto LABEL_70;
  }

  if (WeightsLayout == 3)
  {
    goto LABEL_69;
  }

  if (WeightsLayout != 4)
  {
    goto LABEL_70;
  }

LABEL_64:
  v42 = *(&v79 + 1);
  if (1uLL % *(&v79 + 1))
  {
    v42 = 1uLL % *(&v79 + 1);
  }

  v43 = (v41 - v42) & ~((v41 - v42) >> 63);
  v44 = v43 >> 1;
  v45 = v43 - (v43 >> 1);
  if (WeightsLayout == 4)
  {
    v40 = v45;
  }

  else
  {
    v40 = v44;
  }

LABEL_70:
  v46 = objc_alloc(MEMORY[0x1E69747E8]);
  v72 = v74;
  v73 = v75;
  v47 = [v46 initWithDevice:v67 kernelSizes:&v72 poolingMode:1];
  *&v72 = v23 / 2 - v22;
  *(&v72 + 1) = v29 / 2 - v28;
  *&v73 = v35 / 2 - v34;
  *(&v73 + 1) = v41 / 2 - v40;
  [v47 setPoolingOffsets:&v72];
  v72 = v78;
  v73 = v79;
  [v47 setPoolingStrides:&v72];
  v72 = v76;
  v73 = v77;
  [v47 setPoolingDilationRates:&v72];
  if (v66 < 8)
  {
    v48 = v66 + 1;
  }

  else
  {
    v48 = 0;
  }

  [v47 setPoolingReturnIndicesMode:{v48, 1}];
  [v47 setPoolingReturnIndicesDataType:v21];
  [v47 setOptions:1];

  return v47;
}

void sub_1E0774B88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, void *a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void GPU::PoolMaxOpHandler::encodeOp(GPU::PoolMaxOpHandler *this, GPU::EncodeDescriptor *a2)
{
  v25[1] = *MEMORY[0x1E69E9840];
  GPU::BaseOpHandler::_inferJITOutputTypes(this, a2);
  v4 = *(this + 3);
  v24 = *(this + 15);
  if (!v24)
  {
    v5 = *(this + 2);
    v6 = [*(v5 + 48) metalDevice];
    v24 = objc_claimAutoreleasedReturnValue();
  }

  v7 = (*(**(this + 2) + 48))(*(this + 2), *(*(v4 + 72) + 24), 0);
  v8 = [v7 mpsndarray];

  if (!v8 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v9 = *(this + 3);
  v10 = *(v9 + 36);
  v11 = v9 - 16;
  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:v10];
  if (v10)
  {
    v23 = v8;
    v14 = 0;
    for (i = 0; i != v10; ++i)
    {
      v16 = *mlir::detail::OpResultImpl::getNextResultAtOffset(v12, i);
      if (!v16)
      {
        goto LABEL_15;
      }

      v17 = 0;
      do
      {
        v16 = *v16;
        --v17;
      }

      while (v16);
      if (v17)
      {
        v18 = (*(**(this + 2) + 80))(*(this + 2));
        v19 = [v18 mpsndarray];
        [v13 addObject:v19];
        v14 = (1 << i) | v14;
      }

      else
      {
LABEL_15:
        v18 = [MEMORY[0x1E695DFB0] null];
        [v13 addObject:v18];
      }
    }

    v8 = v23;
    if ((v14 & 2) != 0)
    {
      [v24 poolingReturnIndicesMode];
      if (![v24 poolingReturnIndicesMode])
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }
    }
  }

  else
  {
    v14 = 0;
  }

  v20 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v21 = *(a2 + 1);
  v25[0] = v8;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  [v24 encodeToMPSCommandEncoder:v20 commandBuffer:v21 sourceArrays:v22 destinationArrays:v13 activeDestinationMask:v14];
}

void GPU::PoolingGradientOpHandler<mlir::mps::PoolMaxGradientOp,(MPSNDArrayPoolingMode_s)1>::_createNDArrayMultiaryKernel(uint64_t a1)
{
  v100 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  [*(v3 + 48) metalDevice];
  v4 = v93 = v2;
  WindowSizes = mlir::mps::PoolMaxGradientOp::getWindowSizes(&v93);
  Strides = mlir::mps::PoolMaxGradientOp::getStrides(&v93);
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v93);
  *&v94 = v93;
  mlir::mps::PoolMaxGradientOp::getIndicesResultType(&v94);
  if (v5)
  {
    IndicesResultType = mlir::mps::PoolMaxGradientOp::getIndicesResultType(&v94);
    if ((v7 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    MPSDataType = getMPSDataType(IndicesResultType);
  }

  else
  {
    MPSDataType = 536870944;
  }

  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v94);
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  Offsets = mlir::mps::StencilOp::getOffsets(&v93);
  v89 = v10;
  ODSOperandIndexAndLength = mlir::mps::PoolMaxGradientOp::getODSOperandIndexAndLength(&v93, 1u);
  if ((*(v93 + 46) & 0x80) != 0)
  {
    v12 = *(v93 + 72);
    v13 = ODSOperandIndexAndLength;
    if (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength == ODSOperandIndexAndLength)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v12 = 0;
    v13 = ODSOperandIndexAndLength;
    if (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength == ODSOperandIndexAndLength)
    {
      goto LABEL_13;
    }
  }

  v14 = *(v12 + 32 * v13 + 24);
  if (v14)
  {
    *&v98 = GPURegionRuntime::getStaticType(v3, v14);
    mlir::ArrayAttr::getValue(&v98);
    if (v15)
    {
      if ((v15 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    goto LABEL_21;
  }

LABEL_13:
  *&v86 = v93;
  *&v98 = v99;
  *(&v98 + 1) = 0x400000000;
  v16 = mlir::mps::PoolMaxGradientOp::getODSOperandIndexAndLength(&v86, 3u);
  if ((*(v86 + 46) & 0x80) == 0)
  {
    v17 = 0;
    v18 = v16;
    if (HIDWORD(v16) + v16 == v16)
    {
      goto LABEL_15;
    }

LABEL_17:
    v19 = *(v17 + 32 * v18 + 24);
    goto LABEL_18;
  }

  v17 = *(v86 + 72);
  v18 = v16;
  if (HIDWORD(v16) + v16 != v16)
  {
    goto LABEL_17;
  }

LABEL_15:
  v19 = 0;
LABEL_18:
  mlir::matchConstantWithIntVector<long long>(v19, &v98);
  if (DWORD2(v98))
  {
    operator new();
  }

  if (v98 != v99)
  {
    free(v98);
  }

LABEL_21:
  v98 = xmmword_1E09A7718;
  v99[0] = unk_1E09A7728;
  v86 = xmmword_1E09A7718;
  v87 = unk_1E09A7728;
  v84 = xmmword_1E09A7718;
  v85 = unk_1E09A7728;
  v75 = a1;
  v76 = MPSDataType;
  v77 = PaddingStyle;
  if (Strides)
  {
    if (mlir::DenseElementsAttr::getNumElements(&Strides) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v82, Strides, 0);
      v20 = Strides;
      NumElements = mlir::DenseElementsAttr::getNumElements(&Strides);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v80, v20, NumElements);
      if (v83 != v81)
      {
        v59 = 3;
        do
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v82, &v78);
          v60 = v79;
          if (v79 < 0x41)
          {
            *(&v99[-1] + v59--) = v78;
          }

          else
          {
            v61 = v60 - llvm::APInt::countLeadingZerosSlowCase(&v78);
            v62 = v78;
            if (v61 <= 0x40)
            {
              *(&v99[-1] + v59--) = *v78;
            }

            else
            {
              *(&v99[-1] + v59--) = -1;
              if (!v62)
              {
                goto LABEL_91;
              }
            }

            MEMORY[0x1E12E5B60]();
          }

LABEL_91:
          *&v83 = v83 + 1;
        }

        while (v83 != v81);
      }
    }
  }

  if (WindowSizes)
  {
    if (mlir::DenseElementsAttr::getNumElements(&WindowSizes) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v82, WindowSizes, 0);
      v22 = WindowSizes;
      v23 = mlir::DenseElementsAttr::getNumElements(&WindowSizes);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v80, v22, v23);
      if (v83 != v81)
      {
        v63 = 3;
        do
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v82, &v78);
          v64 = v79;
          if (v79 < 0x41)
          {
            *(&v84 + v63--) = v78;
          }

          else
          {
            v65 = v64 - llvm::APInt::countLeadingZerosSlowCase(&v78);
            v66 = v78;
            if (v65 <= 0x40)
            {
              *(&v84 + v63--) = *v78;
            }

            else
            {
              *(&v84 + v63--) = -1;
              if (!v66)
              {
                goto LABEL_100;
              }
            }

            MEMORY[0x1E12E5B60]();
          }

LABEL_100:
          *&v83 = v83 + 1;
        }

        while (v83 != v81);
      }
    }
  }

  if (InputAttributeNames)
  {
    if (mlir::DenseElementsAttr::getNumElements(&InputAttributeNames) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v82, InputAttributeNames, 0);
      v24 = InputAttributeNames;
      v25 = mlir::DenseElementsAttr::getNumElements(&InputAttributeNames);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v80, v24, v25);
      if (v83 != v81)
      {
        v67 = 3;
        do
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v82, &v78);
          v68 = v79;
          if (v79 < 0x41)
          {
            *(&v86 + v67--) = v78;
          }

          else
          {
            v69 = v68 - llvm::APInt::countLeadingZerosSlowCase(&v78);
            v70 = v78;
            if (v69 <= 0x40)
            {
              *(&v86 + v67--) = *v78;
            }

            else
            {
              *(&v86 + v67--) = -1;
              if (!v70)
              {
                goto LABEL_109;
              }
            }

            MEMORY[0x1E12E5B60]();
          }

LABEL_109:
          *&v83 = v83 + 1;
        }

        while (v83 != v81);
      }
    }
  }

  if (v89 == 1 && mlir::DenseElementsAttr::getNumElements(&Offsets) == 8)
  {
    if ((v89 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v82, Offsets, 0);
    v26 = Offsets;
    v27 = mlir::DenseElementsAttr::getNumElements(&Offsets);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v80, v26, v27);
    if (v83 != v81)
    {
      v71 = 7;
      do
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v82, &v78);
        v72 = v79;
        if (v79 < 0x41)
        {
          *(&v94 + v71--) = v78;
        }

        else
        {
          v73 = v72 - llvm::APInt::countLeadingZerosSlowCase(&v78);
          v74 = v78;
          if (v73 <= 0x40)
          {
            *(&v94 + v71--) = *v78;
          }

          else
          {
            *(&v94 + v71--) = -1;
            if (!v74)
            {
              goto LABEL_118;
            }
          }

          MEMORY[0x1E12E5B60]();
        }

LABEL_118:
        *&v83 = v83 + 1;
      }

      while (v83 != v81);
    }
  }

  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v93);
  mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v93);
  mlir::mps::GRUOp::getResetAfter(&v93);
  v29 = 0;
  v30 = (v84 - 1) * v86 + 1;
  if (WeightsLayout <= 2)
  {
    if (WeightsLayout)
    {
      v31 = v4;
      if (WeightsLayout != 2)
      {
        goto LABEL_49;
      }

      goto LABEL_43;
    }

LABEL_48:
    v31 = v4;
    v29 = *(&v94 + 1);
    goto LABEL_49;
  }

  if (WeightsLayout == 3)
  {
    goto LABEL_48;
  }

  v31 = v4;
  if (WeightsLayout != 4)
  {
    goto LABEL_49;
  }

LABEL_43:
  v32 = v98;
  if (1 % v98)
  {
    v32 = 1 % v98;
  }

  v33 = (v30 - v32) & ~((v30 - v32) >> 63);
  v34 = v33 >> 1;
  v35 = v33 - (v33 >> 1);
  if (WeightsLayout == 4)
  {
    v29 = v35;
  }

  else
  {
    v29 = v34;
  }

LABEL_49:
  v36 = 0;
  v37 = (*(&v84 + 1) - 1) * *(&v86 + 1) + 1;
  if (WeightsLayout <= 2)
  {
    if (WeightsLayout)
    {
      if (WeightsLayout != 2)
      {
        goto LABEL_61;
      }

      goto LABEL_55;
    }

LABEL_60:
    v36 = *(&v95 + 1);
    goto LABEL_61;
  }

  if (WeightsLayout == 3)
  {
    goto LABEL_60;
  }

  if (WeightsLayout != 4)
  {
    goto LABEL_61;
  }

LABEL_55:
  v38 = *(&v98 + 1);
  if (1uLL % *(&v98 + 1))
  {
    v38 = 1uLL % *(&v98 + 1);
  }

  v39 = (v37 - v38) & ~((v37 - v38) >> 63);
  v40 = v39 >> 1;
  v41 = v39 - (v39 >> 1);
  if (WeightsLayout == 4)
  {
    v36 = v41;
  }

  else
  {
    v36 = v40;
  }

LABEL_61:
  v42 = 0;
  v43 = (v85 - 1) * v87 + 1;
  if (WeightsLayout <= 2)
  {
    if (WeightsLayout)
    {
      if (WeightsLayout != 2)
      {
        goto LABEL_73;
      }

      goto LABEL_67;
    }

LABEL_72:
    v42 = *(&v96 + 1);
    goto LABEL_73;
  }

  if (WeightsLayout == 3)
  {
    goto LABEL_72;
  }

  if (WeightsLayout != 4)
  {
    goto LABEL_73;
  }

LABEL_67:
  v44 = *&v99[0];
  if (1uLL % *&v99[0])
  {
    v44 = 1uLL % *&v99[0];
  }

  v45 = (v43 - v44) & ~((v43 - v44) >> 63);
  v46 = v45 >> 1;
  v47 = v45 - (v45 >> 1);
  if (WeightsLayout == 4)
  {
    v42 = v47;
  }

  else
  {
    v42 = v46;
  }

LABEL_73:
  v48 = 0;
  v49 = (*(&v85 + 1) - 1) * *(&v87 + 1) + 1;
  if (WeightsLayout <= 2)
  {
    if (WeightsLayout)
    {
      if (WeightsLayout != 2)
      {
        goto LABEL_85;
      }

      goto LABEL_79;
    }

LABEL_84:
    v48 = *(&v97 + 1);
    goto LABEL_85;
  }

  if (WeightsLayout == 3)
  {
    goto LABEL_84;
  }

  if (WeightsLayout != 4)
  {
    goto LABEL_85;
  }

LABEL_79:
  v50 = *(&v99[0] + 1);
  if (1uLL % *(&v99[0] + 1))
  {
    v50 = 1uLL % *(&v99[0] + 1);
  }

  v51 = (v49 - v50) & ~((v49 - v50) >> 63);
  v52 = v51 >> 1;
  v53 = v51 - (v51 >> 1);
  if (WeightsLayout == 4)
  {
    v48 = v53;
  }

  else
  {
    v48 = v52;
  }

LABEL_85:
  v54 = objc_alloc(MEMORY[0x1E69747E0]);
  v82 = v84;
  v83 = v85;
  v55 = [v54 initWithDevice:v31 kernelSizes:&v82 poolingMode:1];
  *&v82 = v30 / 2 - v29;
  *(&v82 + 1) = v37 / 2 - v36;
  *&v83 = v43 / 2 - v42;
  *(&v83 + 1) = v49 / 2 - v48;
  [v55 setPoolingOffsets:&v82];
  v82 = v98;
  v83 = v99[0];
  [v55 setPoolingStrides:&v82];
  v82 = v86;
  v83 = v87;
  [v55 setPoolingDilationRates:&v82];
  if (v77 < 8)
  {
    v56 = v77 + 1;
  }

  else
  {
    v56 = 0;
  }

  [v55 setPoolingReturnIndicesMode:v56];
  [v55 setPoolingReturnIndicesDataType:v76];
  [v55 setOptions:1];
  v57 = v55;

  v58 = *(v75 + 8);
  *(v75 + 8) = v57;
}