void sub_1E08B6840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61)
{
  if (a61 != a9)
  {
    free(a61);
  }

  std::mutex::unlock((a15 + a11));
  _Unwind_Resume(a1);
}

void sub_1E08B6CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  _Block_object_dispose(&a16, 8);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__711(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__712(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_1E08B7074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a24, 8);
  if (__p)
  {
    a31 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E08B750C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:

      _Unwind_Resume(a1);
    }
  }

  else if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a19);

  _Unwind_Resume(a1);
}

void getIRStringForMLIRObject<mlir::Type>(void *a1, uint64_t a2)
{
  v10 = a2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v3 = 0;
  v7 = 0;
  v8 = 1;
  v5 = 0;
  v6 = 0;
  v4 = 0;
  v2 = &unk_1F5B3FB30;
  v9 = a1;
  llvm::raw_ostream::SetBufferAndMode(&v2, 0, 0, 0);
  mlir::Type::print(&v10, &v2);
  llvm::raw_ostream::~raw_ostream(&v2);
}

void sub_1E08B7730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  llvm::raw_ostream::~raw_ostream(&a9);
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  _Unwind_Resume(a1);
}

void sub_1E08B7C9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (v29)
  {
    operator delete(v29);
  }

  v31 = *a11;
  if (*a11)
  {
    *(a11 + 8) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}

void sub_1E08B80E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unordered_map<std::string,MPSMLIROps>::~unordered_map[abi:ne200100](v4);
  std::unordered_map<std::string,MPSMLIROps>::~unordered_map[abi:ne200100](va);
  std::mutex::unlock((v3 + v5));
  _Unwind_Resume(a1);
}

void sub_1E08B8298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E08B8384(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void getFlatShapes(uint64_t a1, void *a2)
{
  v67[16] = *MEMORY[0x1E69E9840];
  v65 = v67;
  v66 = 0x1000000000;
  v39 = a2;
  v2 = 8 * [v39 count];
  if (v2 > 0x10)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v2, 8);
  }

  if ([v39 count] && (objc_msgSend(v39, "objectAtIndexedSubscript:", 0), v3 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v3, (isKindOfClass & 1) != 0))
  {
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v5 = v39;
    v6 = [v5 countByEnumeratingWithState:&v58 objects:v64 count:16];
    if (v6)
    {
      v7 = *v59;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v59 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v58 + 1) + 8 * i);
          v10 = [v9 dataType];
          v11 = v66;
          if (v66 >= HIDWORD(v66))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 8);
            v11 = v66;
          }

          v65[v11] = v10;
          LODWORD(v66) = v66 + 1;
          v12 = [v9 getRank];
          if (v9)
          {
            [v9 getShapeVector];
            v40 = v57;
            v41 = v56;
            v42 = v55;
            *obj = v54;
            v13 = v66;
            if (v66 >= HIDWORD(v66))
            {
              goto LABEL_22;
            }
          }

          else
          {
            v42 = 0u;
            *obj = 0u;
            v40 = 0u;
            v41 = 0u;
            v13 = v66;
            if (v66 >= HIDWORD(v66))
            {
LABEL_22:
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v13 + 1, 8);
              v65[v66] = v12;
              v14 = v66 + 1;
              LODWORD(v66) = v66 + 1;
              if (!v12)
              {
                continue;
              }

              goto LABEL_16;
            }
          }

          v65[v13] = v12;
          v14 = v66 + 1;
          LODWORD(v66) = v66 + 1;
          if (!v12)
          {
            continue;
          }

LABEL_16:
          for (j = 0; j != v12; ++j)
          {
            v45[0] = *obj;
            v45[1] = v42;
            v45[2] = v41;
            v45[3] = v40;
            v16 = *(v45 + (j & 0xF));
            if (v14 >= HIDWORD(v66))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v14 + 1, 8);
              v14 = v66;
            }

            v65[v14] = v16;
            v14 = v66 + 1;
            LODWORD(v66) = v66 + 1;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v58 objects:v64 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    obja = v39;
    v17 = [obja countByEnumeratingWithState:&v50 objects:v63 count:16];
    if (v17)
    {
      v18 = *v51;
      do
      {
        for (k = 0; k != v17; ++k)
        {
          if (*v51 != v18)
          {
            objc_enumerationMutation(obja);
          }

          v20 = *(*(&v50 + 1) + 8 * k);
          v21 = [v20 shape];
          v22 = [v20 dataType];
          v23 = v66;
          if (v66 >= HIDWORD(v66))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 8);
            v23 = v66;
          }

          v65[v23] = v22;
          LODWORD(v66) = v66 + 1;
          v24 = [v21 count];
          v25 = v66;
          if (v66 >= HIDWORD(v66))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 8);
            v25 = v66;
          }

          v65[v25] = v24;
          LODWORD(v66) = v66 + 1;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v26 = v21;
          v27 = [v26 countByEnumeratingWithState:&v46 objects:v62 count:16];
          if (v27)
          {
            v28 = *v47;
            do
            {
              for (m = 0; m != v27; ++m)
              {
                if (*v47 != v28)
                {
                  objc_enumerationMutation(v26);
                }

                v30 = [*(*(&v46 + 1) + 8 * m) integerValue];
                v31 = v66;
                if (v66 >= HIDWORD(v66))
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 8);
                  v31 = v66;
                }

                v65[v31] = v30;
                LODWORD(v66) = v66 + 1;
              }

              v27 = [v26 countByEnumeratingWithState:&v46 objects:v62 count:16];
            }

            while (v27);
          }
        }

        v17 = [obja countByEnumeratingWithState:&v50 objects:v63 count:16];
      }

      while (v17);
    }
  }

  v32 = (v38 + 16);
  *v38 = v38 + 16;
  *(v38 + 8) = 0x600000000;
  v33 = v66;
  v34 = v65;
  if (v66 && &v65 != v38)
  {
    if (v65 != v67)
    {
      *v38 = v65;
      v35 = HIDWORD(v66);
      *(v38 + 8) = v33;
      *(v38 + 12) = v35;
      v65 = v67;
      HIDWORD(v66) = 0;
      v34 = v67;
LABEL_56:
      LODWORD(v66) = 0;
      goto LABEL_57;
    }

    if (v66 < 7)
    {
      v36 = v66;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v38, v32, v66, 8);
      v36 = v66;
      v34 = v65;
      if (!v66)
      {
LABEL_55:
        *(v38 + 8) = v33;
        goto LABEL_56;
      }

      v32 = *v38;
    }

    memcpy(v32, v34, 8 * v36);
    v34 = v65;
    goto LABEL_55;
  }

LABEL_57:
  if (v34 != v67)
  {
    free(v34);
  }
}

void sub_1E08B8B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void *a10)
{
  if (*a9 != v11)
  {
    free(*a9);
  }

  v14 = *(v12 - 240);
  if (v14 != v10)
  {
    free(v14);
  }

  _Unwind_Resume(a1);
}

void sub_1E08B95A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, MPSGraphModuleKey *a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void createToPerEntryFuncOpSymbolMap(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v27 = a2;
  v9 = a3;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (a5)
  {
    v10 = 0;
    v11 = (a4 + 24);
    do
    {
      v12 = (*(**(v11 - 2) + 24))(*(v11 - 2), 0);
      v13 = *(v11 - 1);
      v14 = *(v11 + 15);
      v15 = *v11;
      Context = mlir::Attribute::getContext((v12 + 6));
      if ((v14 & 0x80u) == 0)
      {
        v17 = v14;
      }

      else
      {
        v17 = v15;
      }

      v30 = 261;
      if ((v14 & 0x80u) == 0)
      {
        v18 = v11 - 1;
      }

      else
      {
        v18 = v13;
      }

      v29[0] = v18;
      v29[1] = v17;
      v19 = mlir::StringAttr::get(Context, v29);
      v20 = mlir::SymbolTable::lookupSymbolIn(v12, v19);
      if (v20)
      {
        if (*(*(v20 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
        {
          v21 = v20;
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

      v28 = v21;
      v22 = [v27 perEntryPointMap];
      v23 = [v9 objectAtIndexedSubscript:v10];
      v24 = [v22 objectForKeyedSubscript:v23];
      v25 = llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong},llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong}>>,mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong},llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong}>>::operator[](a1, &v28);
      v26 = *v25;
      *v25 = v24;

      ++v10;
      v11 += 5;
    }

    while (a5 != v10);
  }
}

void sub_1E08BB9DC(uint64_t a1)
{
  *(v1 + 56) = a1;
  if (*(v1 + 696) == 1 && *(v1 + 695) < 0)
  {
    operator delete(*(v1 + 672));
  }

  std::optional<MPSGraphModuleKey>::~optional(v1 + 760);
  llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>::~DenseSet(v1 + 256);
}

void sub_1E08BBF08(uint64_t a1)
{
  *(v1 + 56) = a1;

  JUMPOUT(0x1E08BBF1CLL);
}

void sub_1E08BBF54(uint64_t a1)
{
  *(v1 + 56) = a1;
  if (*v2 != v3)
  {
    free(*v2);
  }

  *(v1 + 400) = v2;
  MPSGraphModuleKey::~MPSGraphModuleKey((v1 + 760));
  JUMPOUT(0x1E08BBF98);
}

void sub_1E08BBF8C(uint64_t a1)
{
  *(v1 + 56) = a1;

  JUMPOUT(0x1E08BBFC0);
}

void sub_1E08BBF94(uint64_t a1)
{
  *(v1 + 56) = a1;

  std::vector<MPSGraphModuleKey>::~vector[abi:ne200100]((v1 + 392));
  _Unwind_Resume(*(v1 + 56));
}

void sub_1E08BBFA8(uint64_t a1)
{
  *(v1 + 56) = a1;

  JUMPOUT(0x1E08BBFC0);
}

void sub_1E08BBFB0(uint64_t a1)
{
  *(v1 + 56) = a1;

  JUMPOUT(0x1E08BBFB8);
}

void sub_1E08BBFCC(uint64_t a1)
{
  *(v1 + 56) = a1;

  JUMPOUT(0x1E08BBFD4);
}

void sub_1E08BC49C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, char a23)
{
  if (*v24 != v23)
  {
    free(*v24);
  }

  llvm::SmallVector<MPSGraphExecutableCacheValue,1u>::~SmallVector(&a23);
  std::mutex::unlock((a12 + a11));
  _Unwind_Resume(a1);
}

void sub_1E08BDA78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void **a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, mlir::Operation *a31, uint64_t a32, uint64_t a33, uint64_t *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, char a52)
{
  if (a40 == 1 && a34 != &a36)
  {
    free(a34);
  }

  llvm::SmallVector<mlir::mpsx::EntryPoint,4u>::~SmallVector(&a44);
  std::vector<std::string>::~vector[abi:ne200100](&a25);
  std::vector<std::vector<mlir::Type>>::~vector[abi:ne200100](&a28);
  mlir::OwningOpRef<mlir::ModuleOp>::~OwningOpRef(&a31);
  std::unique_ptr<-[MPSGraphExecutable specializedModuleWithDevice:shapedEntryPoints:compilationDescriptor:error:]::CompilationResult>::~unique_ptr[abi:ne200100](a14);
  _Unwind_Resume(a1);
}

void sub_1E08BE21C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::mutex *a22, void *a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  std::mutex::~mutex(&a30);
  std::condition_variable::~condition_variable((v33 - 104));

  _Unwind_Resume(a1);
}

void sub_1E08BED3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1E08BEFF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1E08BF63C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  llvm::SmallVector<MPSGraphExecutableCacheValue,1u>::~SmallVector(va);

  _Unwind_Resume(a1);
}

void sub_1E08C49DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  llvm::raw_ostream::~raw_ostream(&a25);
  if (a37 < 0)
  {
    operator delete(__p);
  }

  llvm::raw_ostream::~raw_ostream((v39 - 168));
  if (*(v39 - 89) < 0)
  {
    operator delete(*(v39 - 112));
  }

  _Unwind_Resume(a1);
}

void sub_1E08C5048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  llvm::raw_ostream::~raw_ostream(&a16);
  if (a28 < 0)
  {
    operator delete(a23);
    if (a40 < 0)
    {
LABEL_3:
      operator delete(__p);
      _Unwind_Resume(a1);
    }
  }

  else if (a40 < 0)
  {
    goto LABEL_3;
  }

  _Unwind_Resume(a1);
}

void sub_1E08C59DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EmitViewerSPI::~EmitViewerSPI(va);
  std::mutex::unlock((v2 + v3));
  _Unwind_Resume(a1);
}

void sub_1E08C5C1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EmitViewerSPI::~EmitViewerSPI(va);
  std::mutex::unlock((v6 + v7));
  llvm::SmallVector<MPSGraphExecutableCacheValue,1u>::~SmallVector(v8 - 144);

  _Unwind_Resume(a1);
}

void sub_1E08C5D84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v6 = v4;

  EmitViewerSPI::~EmitViewerSPI(va);
  std::mutex::unlock((v3 + v5));

  _Unwind_Resume(a1);
}

void sub_1E08C5F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  EmitObjC::~EmitObjC(va);
  std::mutex::unlock((v5 + v6));

  _Unwind_Resume(a1);
}

void sub_1E08C60E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  EmitObjC::~EmitObjC(va);
  std::mutex::unlock((v9 + v11));

  _Unwind_Resume(a1);
}

void sub_1E08C6314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MPSGraphExecutable;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1E08C654C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::mutex::unlock((v9 + v10));
  llvm::raw_ostream::~raw_ostream(va);
  if (*(v11 - 33) < 0)
  {
    operator delete(*(v11 - 56));
  }

  _Unwind_Resume(a1);
}

void sub_1E08C7120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, void *a41, void *a42)
{
  std::mutex::unlock((a10 + a9));
  std::mutex::unlock((a12 + a11));

  _Unwind_Resume(a1);
}

id MPSGraphModuleKeyToJSONString(const MPSGraphModuleKey *a1)
{
  v2 = 0;
  v26[6] = *MEMORY[0x1E69E9840];
  v24 = v26;
  v25 = 0x600000000;
  if (&v24 != a1)
  {
    var1 = a1->var0.var1;
    if (var1)
    {
      if (var1 < 7)
      {
        v4 = a1->var0.var1;
        v5 = v26;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v26, a1->var0.var1, 8);
        v4 = a1->var0.var1;
        if (!v4)
        {
LABEL_8:
          LODWORD(v25) = var1;
          v2 = var1;
          goto LABEL_9;
        }

        v5 = v24;
      }

      memcpy(v5, a1->var0.var0, 8 * v4);
      goto LABEL_8;
    }
  }

LABEL_9:
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:v2];
  if (v25)
  {
    v7 = v24;
    v8 = 8 * v25;
    do
    {
      v9 = [MEMORY[0x1E696AD98] numberWithLongLong:*v7];
      [v6 addObject:v9];

      ++v7;
      v8 -= 8;
    }

    while (v8);
  }

  v10 = [&unk_1F5B77DC8 mutableCopy];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v25];
  v23[0] = v11;
  v23[1] = v6;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v13 = [v12 mutableCopy];

  if (a1->var1)
  {
    [v10 addObject:@"compilationDescriptor"];
    v14 = [a1->var1 toDictionary];
    [v13 addObject:v14];
  }

  if (a1->var2)
  {
    [v10 addObject:@"callablesDescriptor"];
    [v13 addObject:a1->var2];
  }

  if (a1->var4)
  {
    [v10 addObject:@"deviceDescriptor"];
    v15 = [a1->var4 serializedProperties];
    [v13 addObject:v15];
  }

  if (a1->var3)
  {
    [v10 addObject:@"entryFunctionName"];
    [v13 addObject:a1->var3];
  }

  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v10];
  v22 = 0;
  v17 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v16 options:1 error:&v22];
  v18 = v22;
  v19 = v18;
  if (v17)
  {
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v17 encoding:4];
  }

  else
  {
    NSLog(&cfstr_GotAnError.isa, v18);
    v20 = 0;
  }

  if (v24 != v26)
  {
    free(v24);
  }

  return v20;
}

void sub_1E08C76AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a14 != v14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E08CB000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(&a51);

  _Unwind_Resume(a1);
}

uint64_t MPSGraphReflection::CreateTensor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  *(a1 + 70) = 1;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 32);
  flatbuffers::FlatBufferBuilder::AddElement<int>(a1, 12, a6);
  flatbuffers::FlatBufferBuilder::AddElement<int>(a1, 10, a5);
  if (a4)
  {
    if (*(a1 + 72) <= 3uLL)
    {
      *(a1 + 72) = 4;
    }

    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v17 = (v16 - (v14 + v15)) & 3;
    if (v16 - *(a1 + 56) >= v17)
    {
      v18 = v16 - v17;
      *(a1 + 48) = v18;
      if (!v17)
      {
LABEL_10:
        flatbuffers::FlatBufferBuilder::AddElement<int>(a1, 8, v15 - v18 + v14 - a4 + 4);
        goto LABEL_11;
      }
    }

    else
    {
      flatbuffers::vector_downward::reallocate(a1, (v16 - (v14 + v15)) & 3);
      *(a1 + 48) -= v17;
    }

    v19 = 0;
    do
    {
      *(*(a1 + 48) + v19++) = 0;
    }

    while (v17 != v19);
    v15 = *(a1 + 40);
    v18 = *(a1 + 48);
    v14 = *(a1 + 32);
    goto LABEL_10;
  }

LABEL_11:
  if (!a3)
  {
    goto LABEL_21;
  }

  if (*(a1 + 72) <= 3uLL)
  {
    *(a1 + 72) = 4;
  }

  v20 = *(a1 + 32);
  v21 = *(a1 + 40);
  v22 = *(a1 + 48);
  v23 = (v22 - (v20 + v21)) & 3;
  if (v22 - *(a1 + 56) < v23)
  {
    flatbuffers::vector_downward::reallocate(a1, (v22 - (v20 + v21)) & 3);
    *(a1 + 48) -= v23;
    goto LABEL_17;
  }

  v24 = v22 - v23;
  *(a1 + 48) = v24;
  if (v23)
  {
LABEL_17:
    v25 = 0;
    do
    {
      *(*(a1 + 48) + v25++) = 0;
    }

    while (v23 != v25);
    v21 = *(a1 + 40);
    v24 = *(a1 + 48);
    v20 = *(a1 + 32);
  }

  flatbuffers::FlatBufferBuilder::AddElement<int>(a1, 6, v21 - v24 + v20 - a3 + 4);
LABEL_21:
  if (!a2)
  {
    goto LABEL_31;
  }

  if (*(a1 + 72) <= 3uLL)
  {
    *(a1 + 72) = 4;
  }

  v26 = *(a1 + 32);
  v27 = *(a1 + 40);
  v28 = *(a1 + 48);
  v29 = (v28 - (v26 + v27)) & 3;
  if (v28 - *(a1 + 56) < v29)
  {
    flatbuffers::vector_downward::reallocate(a1, (v28 - (v26 + v27)) & 3);
    *(a1 + 48) -= v29;
    goto LABEL_27;
  }

  v30 = v28 - v29;
  *(a1 + 48) = v30;
  if (v29)
  {
LABEL_27:
    v31 = 0;
    do
    {
      *(*(a1 + 48) + v31++) = 0;
    }

    while (v29 != v31);
    v27 = *(a1 + 40);
    v30 = *(a1 + 48);
    v26 = *(a1 + 32);
  }

  flatbuffers::FlatBufferBuilder::AddElement<int>(a1, 4, v27 - v30 + v26 - a2 + 4);
LABEL_31:

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v13 - v12 + v11);
}

uint64_t flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::Offset<MPSGraphReflection::Tensor>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  flatbuffers::FlatBufferBuilder::StartVector(a1);
  v6 = a3 - a2;
  if (a3 != a2)
  {
    v7 = v6 >> 2;
    do
    {
      --v7;
      v8 = *(a2 + 4 * v7);
      if (*(a1 + 72) <= 3uLL)
      {
        *(a1 + 72) = 4;
      }

      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      v12 = (v11 - (v9 + v10)) & 3;
      if (v11 - *(a1 + 56) >= v12)
      {
        v13 = v11 - v12;
        *(a1 + 48) = v13;
        if (!v12)
        {
          v15 = v9 + v10 - v13;
          goto LABEL_14;
        }
      }

      else
      {
        flatbuffers::vector_downward::reallocate(a1, (v11 - (v9 + v10)) & 3);
        *(a1 + 48) -= v12;
      }

      v14 = 0;
      do
      {
        *(*(a1 + 48) + v14++) = 0;
      }

      while (v12 != v14);
      v10 = *(a1 + 40);
      v13 = *(a1 + 48);
      v9 = *(a1 + 32);
      v15 = v10 - v13 + v9;
      if (*(a1 + 72) <= 3uLL)
      {
        *(a1 + 72) = 4;
      }

LABEL_14:
      v16 = (v13 - (v9 + v10)) & 3;
      v17 = *(a1 + 56);
      if (v13 - v17 < v16)
      {
        flatbuffers::vector_downward::reallocate(a1, v16);
        *(a1 + 48) -= v16;
LABEL_17:
        v19 = 0;
        do
        {
          *(*(a1 + 48) + v19++) = 0;
        }

        while (v16 != v19);
        v18 = *(a1 + 48);
        v17 = *(a1 + 56);
        goto LABEL_20;
      }

      v18 = v13 - v16;
      *(a1 + 48) = v13 - v16;
      if (v16)
      {
        goto LABEL_17;
      }

LABEL_20:
      if ((v18 - v17) <= 3)
      {
        flatbuffers::vector_downward::reallocate(a1, 4uLL);
        v18 = *(a1 + 48);
      }

      *(v18 - 4) = v15 - v8 + 4;
      *(a1 + 48) = v18 - 4;
    }

    while (v7);
  }

  *(a1 + 70) = 0;
  if (*(a1 + 72) <= 3uLL)
  {
    *(a1 + 72) = 4;
  }

  v20 = *(a1 + 48);
  v21 = *(a1 + 56);
  v22 = (v20 - (*(a1 + 32) + *(a1 + 40))) & 3;
  if (v20 - v21 >= v22)
  {
    v23 = v20 - v22;
    *(a1 + 48) = v23;
    if (!v22)
    {
      goto LABEL_30;
    }
  }

  else
  {
    flatbuffers::vector_downward::reallocate(a1, (v20 - (*(a1 + 32) + *(a1 + 40))) & 3);
    *(a1 + 48) -= v22;
  }

  v24 = 0;
  do
  {
    *(*(a1 + 48) + v24++) = 0;
  }

  while (v22 != v24);
  v23 = *(a1 + 48);
  v21 = *(a1 + 56);
LABEL_30:
  if ((v23 - v21) <= 3)
  {
    flatbuffers::vector_downward::reallocate(a1, 4uLL);
    v23 = *(a1 + 48);
  }

  *(v23 - 4) = v6 >> 2;
  v25 = v23 - 4;
  *(a1 + 48) = v25;
  return (*(a1 + 32) - v25 + *(a1 + 40));
}

void flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(flatbuffers::FlatBufferBuilder *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    std::__tree<void *>::destroy(*(v2 + 8));
    MEMORY[0x1E12E5B90](v2, 0x1060C40C2B13FB5);
  }

  v3 = *(this + 5);
  if (!v3)
  {
LABEL_6:
    *(this + 5) = 0;
    if (*(this + 8) != 1)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (*this)
  {
    (*(**this + 24))(*this);
    goto LABEL_6;
  }

  MEMORY[0x1E12E5B60](v3, 0x1000C8077774924);
  *(this + 5) = 0;
  if (*(this + 8) != 1)
  {
    goto LABEL_10;
  }

LABEL_7:
  if (*this)
  {
    (*(**this + 8))(*this);
  }

LABEL_10:
  *this = 0;
  *(this + 8) = 0;
}

void sub_1E08CC470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  std::mutex::unlock((v11 + v13));
  llvm::raw_ostream::~raw_ostream(va);
  if (*(v14 - 97) < 0)
  {
    operator delete(*(v14 - 120));
  }

  _Unwind_Resume(a1);
}

void sub_1E08CCB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *__p, uint64_t a7, int a8, __int16 a9, char a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *__pa, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, MPSGraphModuleKey *a22)
{
  std::mutex::unlock((a14 + v22));
  std::mutex::unlock((a14 + a13));

  _Unwind_Resume(a1);
}

uint64_t llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>::~DenseMapPair(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*a1 != a1 + 16)
  {
    free(*a1);
  }

  return a1;
}

void sub_1E08CCDBC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1E08CCF40(_Unwind_Exception *a1)
{
  std::mutex::unlock((v2 + v3));

  _Unwind_Resume(a1);
}

void sub_1E08CCF58(_Unwind_Exception *a1)
{
  std::mutex::unlock((v2 + v3));

  _Unwind_Resume(a1);
}

void sub_1E08CCF80(_Unwind_Exception *a1)
{
  std::mutex::unlock((v2 + v4));

  _Unwind_Resume(a1);
}

void sub_1E08CD37C(_Unwind_Exception *a1)
{
  std::mutex::unlock((v2 + v3));

  _Unwind_Resume(a1);
}

void sub_1E08CD394(_Unwind_Exception *a1)
{
  std::mutex::unlock((v2 + v3));

  _Unwind_Resume(a1);
}

void sub_1E08CD3BC(_Unwind_Exception *a1)
{
  std::mutex::unlock((v2 + v4));

  _Unwind_Resume(a1);
}

void sub_1E08CDB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *__p, uint64_t a7, int a8, __int16 a9, char a10, char a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *__pa, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, MPSGraphModuleKey *a22)
{
  std::mutex::unlock((a13 + a12));

  _Unwind_Resume(a1);
}

void sub_1E08CDF98(_Unwind_Exception *a1)
{
  std::mutex::unlock((v2 + v3));

  _Unwind_Resume(a1);
}

void sub_1E08CDFB0(_Unwind_Exception *a1)
{
  std::mutex::unlock((v2 + v3));

  _Unwind_Resume(a1);
}

void sub_1E08CDFD8(_Unwind_Exception *a1)
{
  std::mutex::unlock((v2 + v4));

  _Unwind_Resume(a1);
}

void sub_1E08CE2A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E08CF494(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, id);
  v12 = va_arg(va1, void);
  std::pair<MPSGraphExecutableSpecializedModule const*,std::unique_ptr<RuntimeCacheEntry>>::~pair(va1);
  std::unique_ptr<RuntimeCacheEntry>::~unique_ptr[abi:ne200100](va);
  std::mutex::unlock((v4 + v5));

  _Unwind_Resume(a1);
}

void sub_1E08CF778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E08CF9D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E08CFBE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  llvm::SmallVector<MPSGraphExecutableCacheValue,1u>::~SmallVector(va);

  _Unwind_Resume(a1);
}

void sub_1E08CFFDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  ScopedMPSSignpost::~ScopedMPSSignpost(&a32);

  _Unwind_Resume(a1);
}

void sub_1E08D0194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

char *___Z21getCaptureEnvironmentv_block_invoke()
{
  qword_1ECE75428 = getenv("MPS_GRAPH_CAPTURE_OUTPUT_FOLDER");
  result = getenv("MPS_GRAPH_CAPTURE_GRAPH_NAME");
  qword_1ECE75430 = result;
  return result;
}

char *___Z31getTestSerializationEnvironmentv_block_invoke()
{
  result = getenv("MPSGRAPH_EMIT_OBJC_TEST_PATH");
  if (result)
  {
    _MergedGlobals_86 = 1;
    qword_1ECE75440 = result;
  }

  return result;
}

void sub_1E08D1A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22)
{
  ScopedMPSSignpost::~ScopedMPSSignpost(&STACK[0x2C0]);

  _Unwind_Resume(a1);
}

void sub_1E08D279C(_Unwind_Exception *a1)
{
  std::mutex::unlock((v1 + v3));
  std::mutex::unlock((v1 + v2));
  _Unwind_Resume(a1);
}

void sub_1E08D29B0(_Unwind_Exception *a1)
{
  v10 = v7;

  _Unwind_Resume(a1);
}

void llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>,MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>::clear(uint64_t a1)
{
  v13[6] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  if (v2 || *(a1 + 12))
  {
    v3 = *(a1 + 16);
    if (v3 <= 4 * v2 || v3 < 0x41)
    {
      v10.var0.var0 = v10.var0.var3;
      *&v10.var0.var1 = 0x600000001;
      *v10.var0.var3 = -2;
      MPSGraphModuleKey::MPSGraphModuleKey(&v11, &v10, 0, 0, 0, 0);
      if (v10.var0.var0 != v10.var0.var3)
      {
        free(v10.var0.var0);
      }

      v12[0] = v13;
      v12[1] = 0x600000001;
      v13[0] = -3;
      MPSGraphModuleKey::MPSGraphModuleKey(&v10, v12, 0, 0, 0, 0);
      if (v12[0] != v13)
      {
        free(v12[0]);
      }

      v7 = *(a1 + 16);
      if (v7)
      {
        v8 = *a1;
        v9 = 136 * v7;
        do
        {
          if ((MPSGraphModuleKeyInfo::isEqual(v8, &v11, v6) & 1) == 0)
          {
            if ((MPSGraphModuleKeyInfo::isEqual(v8, &v10, v6) & 1) == 0 && *(v8 + 135) < 0)
            {
              operator delete(*(v8 + 112));
            }

            MPSGraphModuleKey::operator=(v8, &v11);
          }

          v8 += 136;
          v9 -= 136;
        }

        while (v9);
      }

      if (v10.var0.var0 != v10.var0.var3)
      {
        free(v10.var0.var0);
      }

      *(a1 + 8) = 0;

      if (v11.var0.var0 != v11.var0.var3)
      {
        free(v11.var0.var0);
      }
    }

    else
    {
      llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>,MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>::destroyAll(a1);
      v4 = 1 << (33 - __clz(v2 - 1));
      if (v4 <= 64)
      {
        v4 = 64;
      }

      if (v2)
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }

      if (v5 != *(a1 + 16))
      {
        llvm::deallocate_buffer(*a1, (136 * v3));
      }

      llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>,MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>::initEmpty(a1);
    }
  }
}

void sub_1E08D418C(_Unwind_Exception *a1, MPSGraphModuleKey *a2, MPSGraphModuleKey *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v25 = *(v23 - 104);
  if (v25 != v22)
  {
    free(v25);
    MPSGraphModuleKey::~MPSGraphModuleKey(&a22);
    _Unwind_Resume(a1);
  }

  MPSGraphModuleKey::~MPSGraphModuleKey(&a22);
  _Unwind_Resume(a1);
}

_DWORD *llvm::DenseMapBase<llvm::DenseMap<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>>,llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>>::clear(_DWORD *result)
{
  v1 = result;
  v2 = result[2];
  if (v2 || result[3])
  {
    v3 = result[4];
    if (v3 > 4 * v2 && v3 >= 0x41)
    {
      llvm::DenseMapBase<llvm::DenseMap<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>>,llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>>::destroyAll(result);
      v4 = 1 << (33 - __clz(v2 - 1));
      if (v4 <= 64)
      {
        v4 = 64;
      }

      if (v2)
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }

      if (v5 != *(v1 + 16))
      {
        llvm::deallocate_buffer(*v1, (32 * v3));
      }

      llvm::DenseMapBase<llvm::DenseMap<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>>,llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>>::initEmpty(v1);
    }

    MPSGraphModuleKeysSetInfo::getEmptyKey(&v30);
    MPSGraphModuleKeysSetInfo::getTombstoneKey(&v27);
    v6 = *(v1 + 16);
    if (!v6)
    {
LABEL_45:
      llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::destroyAll(&v27);
      llvm::deallocate_buffer(v27, (96 * v29));
    }

    v7 = *v1;
    v8 = *v1 + 32 * v6;
    while (1)
    {
      v9 = *(v7 + 2);
      if (v9 != v31)
      {
        goto LABEL_30;
      }

      v10 = *v7;
      v11 = *(v7 + 4);
      v12 = (*v7 + 96 * v11);
      if (v9)
      {
        v35 = *v7;
        v36 = v12;
        llvm::DenseMapIterator<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>,true>::AdvancePastEmptyBuckets(&v35);
        v12 = v35;
        v13 = *v7;
        v14 = *(v7 + 4);
        v34 = v36;
        v15 = (v13 + 96 * v14);
        if (v15 != v35)
        {
          break;
        }

        goto LABEL_17;
      }

      v34 = *v7 + 96 * v11;
      v15 = (v10 + 96 * v11);
      if (v15 != v12)
      {
        break;
      }

LABEL_17:
      v7 = (v7 + 32);
      if (v7 == v8)
      {
        goto LABEL_45;
      }
    }

    while (1)
    {
      v16 = llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::doFind<MPSGraphModuleKey>(v30, v32, v12);
      if (!v16 || v16 == (v30 + 96 * v32))
      {
        break;
      }

      v33 = (v12 + 96);
      llvm::DenseMapIterator<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>,true>::AdvancePastEmptyBuckets(&v33);
      v12 = v33;
      if (v33 == v15)
      {
        goto LABEL_17;
      }
    }

    v9 = *(v7 + 2);
LABEL_30:
    if (v9 == v28)
    {
      v18 = *v7;
      v19 = *(v7 + 4);
      v20 = (*v7 + 96 * v19);
      if (v9)
      {
        v35 = *v7;
        v36 = v20;
        llvm::DenseMapIterator<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>,true>::AdvancePastEmptyBuckets(&v35);
        v20 = v35;
        v21 = *v7;
        v22 = *(v7 + 4);
        v34 = v36;
        v23 = (v21 + 96 * v22);
        if (v23 != v35)
        {
          goto LABEL_35;
        }

        goto LABEL_43;
      }

      v34 = *v7 + 96 * v19;
      v23 = (v18 + 96 * v19);
      if (v23 == v20)
      {
LABEL_43:
        if (&v30 != v7)
        {
          llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::destroyAll(v7);
          llvm::deallocate_buffer(*v7, (96 * *(v7 + 4)));
        }

        goto LABEL_17;
      }

LABEL_35:
      while (1)
      {
        v24 = llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::doFind<MPSGraphModuleKey>(v27, v29, v20);
        if (!v24 || v24 == (v27 + 96 * v29))
        {
          break;
        }

        v33 = (v20 + 96);
        llvm::DenseMapIterator<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>,true>::AdvancePastEmptyBuckets(&v33);
        v20 = v33;
        if (v33 == v23)
        {
          goto LABEL_43;
        }
      }
    }

    v26 = *(v7 + 3);
    *(v7 + 3) = 0;
    if (v26)
    {
      llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>,MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>::destroyAll((v26 + 8));
      llvm::deallocate_buffer(*(v26 + 8), (120 * *(v26 + 24)));
    }

    goto LABEL_43;
  }

  return result;
}

uint64_t MPSGraphModuleKeyInfo::isEqual(MPSGraphModuleKeyInfo *this, const MPSGraphModuleKey *a2, const MPSGraphModuleKey *a3)
{
  v3 = *(this + 2);
  if (v3 != a2->var0.var1)
  {
    return 0;
  }

  if (memcmp(*this, a2->var0.var0, 8 * v3))
  {
    return 0;
  }

  v6 = *(this + 8);
  if ((v6 == 0) == (a2->var1 != 0))
  {
    return 0;
  }

  if (v6)
  {
    result = [v6 isEqualForModuleTo:?];
    if (!result)
    {
      return result;
    }
  }

  v8 = *(this + 9);
  if ((v8 == 0) == (a2->var2 != 0))
  {
    return 0;
  }

  if (v8)
  {
    result = [v8 isEqual:?];
    if (!result)
    {
      return result;
    }
  }

  v9 = *(this + 10);
  if ((v9 == 0) == (a2->var3 != 0))
  {
    return 0;
  }

  if (!v9 || (result = [v9 isEqual:?], result))
  {
    v10 = *(this + 11);
    var4 = a2->var4;
    result = (v10 == 0) == (var4 == 0);
    if (v10)
    {
      if (var4)
      {
        v12 = [*(this + 11) type];
        if (v12 == [a2->var4 type])
        {
          v13 = [*(this + 11) architecture];
          v14 = [a2->var4 architecture];
          v15 = [v13 isEqual:v14];

          if (v15)
          {
            return 1;
          }
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t MPSGraphModuleKey::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, 8 * v4);
      }

      goto LABEL_11;
    }

    if (*(a1 + 12) >= v4)
    {
      if (v5)
      {
        memmove(*a1, *a2, 8 * v5);
        v6 = *(a2 + 8) - v5;
        if (!v6)
        {
LABEL_11:
          *(a1 + 8) = v4;
          goto LABEL_12;
        }
      }

      else
      {
        v5 = 0;
        v6 = *(a2 + 8);
        if (!*(a2 + 8))
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v4, 8);
      v5 = 0;
      v6 = *(a2 + 8);
      if (!*(a2 + 8))
      {
        goto LABEL_11;
      }
    }

    memcpy((*a1 + 8 * v5), (*a2 + 8 * v5), 8 * v6);
    goto LABEL_11;
  }

LABEL_12:
  objc_storeStrong((a1 + 64), *(a2 + 64));
  objc_storeStrong((a1 + 72), *(a2 + 72));
  objc_storeStrong((a1 + 80), *(a2 + 80));
  objc_storeStrong((a1 + 88), *(a2 + 88));
  return a1;
}

void llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>,MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>::destroyAll(uint64_t *a1)
{
  v10[6] = *MEMORY[0x1E69E9840];
  if (*(a1 + 4))
  {
    v7.var0.var0 = v7.var0.var3;
    *&v7.var0.var1 = 0x600000001;
    *v7.var0.var3 = -2;
    MPSGraphModuleKey::MPSGraphModuleKey(&v8, &v7, 0, 0, 0, 0);
    if (v7.var0.var0 != v7.var0.var3)
    {
      free(v7.var0.var0);
    }

    v9[0] = v10;
    v9[1] = 0x600000001;
    v10[0] = -3;
    MPSGraphModuleKey::MPSGraphModuleKey(&v7, v9, 0, 0, 0, 0);
    if (v9[0] != v10)
    {
      free(v9[0]);
    }

    v3 = *(a1 + 4);
    if (v3)
    {
      v4 = *a1;
      v5 = 136 * v3;
      do
      {
        if ((MPSGraphModuleKeyInfo::isEqual(v4, &v8, v2) & 1) == 0 && (MPSGraphModuleKeyInfo::isEqual(v4, &v7, v6) & 1) == 0 && *(v4 + 135) < 0)
        {
          operator delete(*(v4 + 112));
        }

        if (v4 + 16 != *v4)
        {
          free(*v4);
        }

        v4 += 136;
        v5 -= 136;
      }

      while (v5);
    }

    if (v7.var0.var0 != v7.var0.var3)
    {
      free(v7.var0.var0);
    }

    if (v8.var0.var0 != v8.var0.var3)
    {
      free(v8.var0.var0);
    }
  }
}

void sub_1E08D4AA8(_Unwind_Exception *a1, MPSGraphModuleKey *a2, MPSGraphModuleKey *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v25 = *(v23 - 104);
  if (v25 != v22)
  {
    free(v25);
    MPSGraphModuleKey::~MPSGraphModuleKey(&a22);
    _Unwind_Resume(a1);
  }

  MPSGraphModuleKey::~MPSGraphModuleKey(&a22);
  _Unwind_Resume(a1);
}

void llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>,MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>::initEmpty(uint64_t a1)
{
  v18[6] = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0;
  v17[0] = v18;
  v17[1] = 0x600000001;
  v18[0] = -2;
  MPSGraphModuleKey::MPSGraphModuleKey(&__src, v17, 0, 0, 0, 0);
  if (v17[0] != v18)
  {
    free(v17[0]);
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = 136 * v2;
    while (1)
    {
      v7 = (v3 + 16);
      *v3 = v3 + 16;
      *(v3 + 8) = 0x600000000;
      v8 = v11;
      if (v3 == &__src || v11 == 0)
      {
        goto LABEL_8;
      }

      if (v11 < 7uLL)
      {
        v5 = v11;
      }

      else
      {
        *(v3 + 8) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v3, v3 + 16, v8, 8);
        v5 = v11;
        if (!v11)
        {
          goto LABEL_7;
        }

        v7 = *v3;
      }

      memcpy(v7, __src, 8 * v5);
LABEL_7:
      *(v3 + 8) = v8;
LABEL_8:
      *(v3 + 64) = v13;
      *(v3 + 72) = v14;
      *(v3 + 80) = v15;
      v6 = v16;
      *(v3 + 88) = v6;
      v3 += 136;
      v4 -= 136;
      if (!v4)
      {
        goto LABEL_17;
      }
    }
  }

  v6 = v16;
LABEL_17:

  if (__src != &v12)
  {
    free(__src);
  }
}

void sub_1E08D4CBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22 != v22)
  {
    free(a22);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E08D4CE4(_Unwind_Exception *a1, MPSGraphModuleKey *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (v10 + 2 != *v10)
  {
    free(*v10);
  }

  MPSGraphModuleKey::~MPSGraphModuleKey(&a10);
  _Unwind_Resume(a1);
}

uint64_t MPSGraphModuleKeysSetInfo::isEqual(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != *(a2 + 8))
  {
    return 0;
  }

  v4 = *a1;
  v5 = *(a1 + 16);
  v6 = (*a1 + 96 * v5);
  if (v2)
  {
    v13 = *a1;
    v14 = v6;
    llvm::DenseMapIterator<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>,true>::AdvancePastEmptyBuckets(&v13);
    v6 = v13;
    v8 = (*a1 + 96 * *(a1 + 16));
    if (v8 != v13)
    {
      goto LABEL_4;
    }

    return 1;
  }

  v14 = *a1 + 96 * v5;
  v8 = (v4 + 96 * v5);
  if (v8 == v6)
  {
    return 1;
  }

  do
  {
LABEL_4:
    v9 = llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::doFind<MPSGraphModuleKey>(*a2, *(a2 + 16), v6);
    if (v9)
    {
      v10 = v9 == (*a2 + 96 * *(a2 + 16));
    }

    else
    {
      v10 = 1;
    }

    v11 = !v10;
    if (v10)
    {
      break;
    }

    v13 = (v6 + 96);
    llvm::DenseMapIterator<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>,true>::AdvancePastEmptyBuckets(&v13);
    v6 = v13;
  }

  while (v13 != v8);
  return v11;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>>,llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>>::destroyAll(uint64_t result)
{
  if (*(result + 16))
  {
    v1 = result;
    MPSGraphModuleKeysSetInfo::getEmptyKey(&v24);
    MPSGraphModuleKeysSetInfo::getTombstoneKey(&v21);
    if (!*(v1 + 16))
    {
      llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::destroyAll(&v21);
      llvm::deallocate_buffer(v21, (96 * v23));
    }

    v2 = *v1;
    v3 = *(v2 + 8);
    if (v3 == v25)
    {
      v4 = *v2;
      v5 = *(v2 + 16);
      v6 = (*v2 + 96 * v5);
      if (v3)
      {
        v29 = *v2;
        v30 = v6;
        llvm::DenseMapIterator<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>,true>::AdvancePastEmptyBuckets(&v29);
        v6 = v29;
        v7 = *v2;
        v8 = *(v2 + 16);
        v28 = v30;
        v9 = (v7 + 96 * v8);
        if (v9 != v29)
        {
          goto LABEL_8;
        }

LABEL_28:
        llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::destroyAll(v2);
        llvm::deallocate_buffer(*v2, (96 * *(v2 + 16)));
      }

      v28 = *v2 + 96 * v5;
      v9 = (v4 + 96 * v5);
      if (v9 == v6)
      {
        goto LABEL_28;
      }

LABEL_8:
      while (1)
      {
        v10 = llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::doFind<MPSGraphModuleKey>(v24, v26, v6);
        if (!v10 || v10 == (v24 + 96 * v26))
        {
          break;
        }

        v27 = (v6 + 96);
        llvm::DenseMapIterator<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>,true>::AdvancePastEmptyBuckets(&v27);
        v6 = v27;
        if (v27 == v9)
        {
          goto LABEL_28;
        }
      }

      v3 = *(v2 + 8);
    }

    if (v3 == v22)
    {
      v12 = *v2;
      v13 = *(v2 + 16);
      v14 = (*v2 + 96 * v13);
      if (v3)
      {
        v29 = *v2;
        v30 = v14;
        llvm::DenseMapIterator<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>,true>::AdvancePastEmptyBuckets(&v29);
        v14 = v29;
        v15 = *v2;
        v16 = *(v2 + 16);
        v28 = v30;
        v17 = (v15 + 96 * v16);
        if (v17 != v29)
        {
          goto LABEL_20;
        }

        goto LABEL_28;
      }

      v28 = *v2 + 96 * v13;
      v17 = (v12 + 96 * v13);
      if (v17 == v14)
      {
        goto LABEL_28;
      }

LABEL_20:
      while (1)
      {
        v18 = llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::doFind<MPSGraphModuleKey>(v21, v23, v14);
        if (!v18 || v18 == (v21 + 96 * v23))
        {
          break;
        }

        v27 = (v14 + 96);
        llvm::DenseMapIterator<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>,true>::AdvancePastEmptyBuckets(&v27);
        v14 = v27;
        if (v27 == v17)
        {
          goto LABEL_28;
        }
      }
    }

    v20 = *(v2 + 24);
    *(v2 + 24) = 0;
    if (v20)
    {
      llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>,MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>::destroyAll((v20 + 8));
      llvm::deallocate_buffer(*(v20 + 8), (120 * *(v20 + 24)));
    }

    goto LABEL_28;
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>>,llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>>::initEmpty(uint64_t a1)
{
  *(a1 + 8) = 0;
  MPSGraphModuleKeysSetInfo::getEmptyKey(v3);
  if (*(a1 + 16))
  {
    v2 = *a1;
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::destroyAll(v2);
    llvm::deallocate_buffer(*v2, (96 * *(v2 + 16)));
  }

  llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::destroyAll(v3);
  llvm::deallocate_buffer(v3[0], (96 * v4));
}

void MPSGraphModuleKeysSetInfo::getEmptyKey(MPSGraphModuleKeysSetInfo *this)
{
  v5[10] = *MEMORY[0x1E69E9840];
  v2[0] = v3;
  v2[1] = 0x600000001;
  v3[0] = -4;
  MPSGraphModuleKey::MPSGraphModuleKey(v4, v2, 0, 0, 0, 0);
  llvm::detail::DenseSetImpl<MPSGraphModuleKey,llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKeyInfo>::DenseSetImpl(this, v4, 1);

  if (v4[0] != v5)
  {
    free(v4[0]);
  }

  if (v2[0] != v3)
  {
    free(v2[0]);
  }
}

void sub_1E08D52AC(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, MPSGraphModuleKey *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  MPSGraphModuleKey::~MPSGraphModuleKey(&a18);
  if (a10 != v18)
  {
    free(a10);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void MPSGraphModuleKeysSetInfo::getTombstoneKey(MPSGraphModuleKeysSetInfo *this)
{
  v5[10] = *MEMORY[0x1E69E9840];
  v2[0] = v3;
  v2[1] = 0x600000001;
  v3[0] = -5;
  MPSGraphModuleKey::MPSGraphModuleKey(v4, v2, 0, 0, 0, 0);
  llvm::detail::DenseSetImpl<MPSGraphModuleKey,llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKeyInfo>::DenseSetImpl(this, v4, 1);

  if (v4[0] != v5)
  {
    free(v4[0]);
  }

  if (v2[0] != v3)
  {
    free(v2[0]);
  }
}

void sub_1E08D53C8(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, MPSGraphModuleKey *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  MPSGraphModuleKey::~MPSGraphModuleKey(&a18);
  if (a10 != v18)
  {
    free(a10);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

const MPSGraphModuleKey *llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::doFind<MPSGraphModuleKey>(uint64_t a1, int a2, MPSGraphModuleKeyInfo *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  v20 = v22;
  v21 = 0x600000001;
  v22[0] = -2;
  MPSGraphModuleKey::MPSGraphModuleKey(&v19, &v20, 0, 0, 0, 0);
  if (v20 != v22)
  {
    free(v20);
  }

  v6 = llvm::hashing::detail::hash_combine_range_impl<char const>(*a3, *a3 + 8 * *(a3 + 2));
  v7 = [*(a3 + 8) hash];
  v8 = [*(a3 + 9) hash];
  v9 = [*(a3 + 10) hash];
  v10 = [*(a3 + 11) hash];
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v20 = v6;
  v21 = v7;
  v22[0] = v8;
  v22[1] = v9;
  v28 = 0xFF51AFD7ED558CCDLL;
  v22[2] = v10;
  v11 = a2 - 1;
  v13 = (a2 - 1) & llvm::hashing::detail::hash_short(&v20, 0x28uLL, 0xFF51AFD7ED558CCDLL);
  for (i = 1; ; ++i)
  {
    v15 = (a1 + 96 * v13);
    if (MPSGraphModuleKeyInfo::isEqual(a3, v15, v12))
    {
      break;
    }

    if (MPSGraphModuleKeyInfo::isEqual((a1 + 96 * v13), &v19, v16))
    {
      v15 = 0;
      break;
    }

    v17 = v13 + i;
    v13 = v17 & v11;
  }

  if (v19.var0.var0 != v19.var0.var3)
  {
    free(v19.var0.var0);
  }

  return v15;
}

void sub_1E08D55D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, MPSGraphModuleKey *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22 != v22)
  {
    free(a22);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void llvm::DenseMapIterator<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>,true>::AdvancePastEmptyBuckets(MPSGraphModuleKeyInfo **a1)
{
  v8[6] = *MEMORY[0x1E69E9840];
  v5.var0.var0 = v5.var0.var3;
  *&v5.var0.var1 = 0x600000001;
  *v5.var0.var3 = -2;
  MPSGraphModuleKey::MPSGraphModuleKey(&v6, &v5, 0, 0, 0, 0);
  if (v5.var0.var0 != v5.var0.var3)
  {
    free(v5.var0.var0);
  }

  v7[0] = v8;
  v7[1] = 0x600000001;
  v8[0] = -3;
  MPSGraphModuleKey::MPSGraphModuleKey(&v5, v7, 0, 0, 0, 0);
  if (v7[0] != v8)
  {
    free(v7[0]);
  }

  v3 = *a1;
  if (*a1 != a1[1])
  {
    do
    {
      if ((MPSGraphModuleKeyInfo::isEqual(v3, &v6, v2) & 1) == 0 && !MPSGraphModuleKeyInfo::isEqual(*a1, &v5, v2))
      {
        break;
      }

      v4 = a1[1];
      v3 = (*a1 + 96);
      *a1 = v3;
    }

    while (v3 != v4);
  }

  if (v5.var0.var0 != v5.var0.var3)
  {
    free(v5.var0.var0);
  }

  if (v6.var0.var0 != v6.var0.var3)
  {
    free(v6.var0.var0);
  }
}

void sub_1E08D57C4(_Unwind_Exception *a1, MPSGraphModuleKey *a2, MPSGraphModuleKey *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v25 = *(v23 - 104);
  if (v25 != v22)
  {
    free(v25);
    MPSGraphModuleKey::~MPSGraphModuleKey(&a22);
    _Unwind_Resume(a1);
  }

  MPSGraphModuleKey::~MPSGraphModuleKey(&a22);
  _Unwind_Resume(a1);
}

void llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::destroyAll(uint64_t a1)
{
  v10[6] = *MEMORY[0x1E69E9840];
  if (*(a1 + 16))
  {
    v7.var0.var0 = v7.var0.var3;
    *&v7.var0.var1 = 0x600000001;
    *v7.var0.var3 = -2;
    MPSGraphModuleKey::MPSGraphModuleKey(&v8, &v7, 0, 0, 0, 0);
    if (v7.var0.var0 != v7.var0.var3)
    {
      free(v7.var0.var0);
    }

    v9[0] = v10;
    v9[1] = 0x600000001;
    v10[0] = -3;
    MPSGraphModuleKey::MPSGraphModuleKey(&v7, v9, 0, 0, 0, 0);
    if (v9[0] != v10)
    {
      free(v9[0]);
    }

    v3 = *(a1 + 16);
    if (v3)
    {
      v4 = *a1;
      v5 = 96 * v3;
      do
      {
        if ((MPSGraphModuleKeyInfo::isEqual(v4, &v8, v2) & 1) == 0)
        {
          MPSGraphModuleKeyInfo::isEqual(v4, &v7, v6);
        }

        if (v4 + 2 != *v4)
        {
          free(*v4);
        }

        v4 += 12;
        v5 -= 96;
      }

      while (v5);
    }

    if (v7.var0.var0 != v7.var0.var3)
    {
      free(v7.var0.var0);
    }

    if (v8.var0.var0 != v8.var0.var3)
    {
      free(v8.var0.var0);
    }
  }
}

void sub_1E08D5A08(_Unwind_Exception *a1, MPSGraphModuleKey *a2, MPSGraphModuleKey *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v25 = *(v23 - 104);
  if (v25 != v22)
  {
    free(v25);
    MPSGraphModuleKey::~MPSGraphModuleKey(&a22);
    _Unwind_Resume(a1);
  }

  MPSGraphModuleKey::~MPSGraphModuleKey(&a22);
  _Unwind_Resume(a1);
}

void llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::copyFrom<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>>(uint64_t a1, uint64_t a2)
{
  v10[6] = *MEMORY[0x1E69E9840];
  *(a1 + 8) = *(a2 + 8);
  v2 = *a1;
  v3 = *a2;
  v4 = *(a1 + 16);
  v7.var0.var0 = v7.var0.var3;
  *&v7.var0.var1 = 0x600000001;
  *v7.var0.var3 = -2;
  MPSGraphModuleKey::MPSGraphModuleKey(&v8, &v7, 0, 0, 0, 0);
  if (v7.var0.var0 != v7.var0.var3)
  {
    free(v7.var0.var0);
  }

  v9[0] = v10;
  v9[1] = 0x600000001;
  v10[0] = -3;
  MPSGraphModuleKey::MPSGraphModuleKey(&v7, v9, 0, 0, 0, 0);
  if (v9[0] != v10)
  {
    free(v9[0]);
  }

  if (v4)
  {
    do
    {
      MPSGraphModuleKey::MPSGraphModuleKey(v2, v3);
      if ((MPSGraphModuleKeyInfo::isEqual(v2, &v8, v5) & 1) == 0)
      {
        MPSGraphModuleKeyInfo::isEqual(v2, &v7, v6);
      }

      ++v3;
      ++v2;
      --v4;
    }

    while (v4);
  }

  if (v7.var0.var0 != v7.var0.var3)
  {
    free(v7.var0.var0);
  }

  if (v8.var0.var0 != v8.var0.var3)
  {
    free(v8.var0.var0);
  }
}

void sub_1E08D5C24(_Unwind_Exception *a1, MPSGraphModuleKey *a2, MPSGraphModuleKey *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v25 = *(v23 - 120);
  if (v25 != v22)
  {
    free(v25);
    MPSGraphModuleKey::~MPSGraphModuleKey(&a22);
    _Unwind_Resume(a1);
  }

  MPSGraphModuleKey::~MPSGraphModuleKey(&a22);
  _Unwind_Resume(a1);
}

void llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::initEmpty(uint64_t a1)
{
  v18[6] = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0;
  v17[0] = v18;
  v17[1] = 0x600000001;
  v18[0] = -2;
  MPSGraphModuleKey::MPSGraphModuleKey(&__src, v17, 0, 0, 0, 0);
  if (v17[0] != v18)
  {
    free(v17[0]);
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = 96 * v2;
    while (1)
    {
      v7 = (v3 + 16);
      *v3 = v3 + 16;
      *(v3 + 8) = 0x600000000;
      v8 = v11;
      if (v3 == &__src || v11 == 0)
      {
        goto LABEL_8;
      }

      if (v11 < 7uLL)
      {
        v5 = v11;
      }

      else
      {
        *(v3 + 8) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v3, v3 + 16, v8, 8);
        v5 = v11;
        if (!v11)
        {
          goto LABEL_7;
        }

        v7 = *v3;
      }

      memcpy(v7, __src, 8 * v5);
LABEL_7:
      *(v3 + 8) = v8;
LABEL_8:
      *(v3 + 64) = v13;
      *(v3 + 72) = v14;
      *(v3 + 80) = v15;
      v6 = v16;
      *(v3 + 88) = v6;
      v3 += 96;
      v4 -= 96;
      if (!v4)
      {
        goto LABEL_17;
      }
    }
  }

  v6 = v16;
LABEL_17:

  if (__src != &v12)
  {
    free(__src);
  }
}

void sub_1E08D5E38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22 != v22)
  {
    free(a22);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E08D5E60(_Unwind_Exception *a1, MPSGraphModuleKey *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (v10 + 2 != *v10)
  {
    free(*v10);
  }

  MPSGraphModuleKey::~MPSGraphModuleKey(&a10);
  _Unwind_Resume(a1);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>>,llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>>::LookupBucketFor<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>>(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  if (a2)
  {
    MPSGraphModuleKeysSetInfo::getEmptyKey(v29);
    MPSGraphModuleKeysSetInfo::getTombstoneKey(v27);
    v8 = 0;
    v9 = *(a3 + 8);
    v10 = 0x9DDFEA08EB382D69 * ((0xEEFF504759C16B48 * v9 - 0x4089B058A25136EBLL) ^ ((0xEEFF504759C16B48 * v9 - 0x4089B058A25136EBLL) >> 47));
    v11 = a2 - 1;
    v12 = 1;
    v13 = (-348639895 * ((v10 >> 47) ^ v10)) & (a2 - 1);
    v14 = a1 + 32 * v13;
    if (v9 != *(v14 + 8))
    {
      goto LABEL_14;
    }

LABEL_3:
    v15 = *a3;
    v16 = *(a3 + 16);
    v17 = (*a3 + 96 * v16);
    v26 = v12;
    if (v9)
    {
      v32 = *a3;
      v33 = v17;
      llvm::DenseMapIterator<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>,true>::AdvancePastEmptyBuckets(&v32);
      v18 = v8;
      v17 = v32;
      v19 = *a3;
      v20 = *(a3 + 16);
      v31 = v33;
      v21 = (v19 + 96 * v20);
      if (v21 != v32)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v18 = v8;
      v31 = *a3 + 96 * v16;
      v21 = (v15 + 96 * v16);
      if (v21 != v17)
      {
LABEL_7:
        while (1)
        {
          v22 = llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::doFind<MPSGraphModuleKey>(*v14, *(v14 + 16), v17);
          if (!v22 || v22 == (*v14 + 96 * *(v14 + 16)))
          {
            break;
          }

          v30 = (v17 + 96);
          llvm::DenseMapIterator<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>,true>::AdvancePastEmptyBuckets(&v30);
          v17 = v30;
          if (v30 == v21)
          {
            goto LABEL_19;
          }
        }

        v8 = v18;
        v12 = v26;
LABEL_14:
        while (!MPSGraphModuleKeysSetInfo::isEqual(v14, v29))
        {
          if ((MPSGraphModuleKeysSetInfo::isEqual(v14, v27) & (v8 == 0)) != 0)
          {
            v8 = v14;
          }

          v24 = v13 + v12++;
          LODWORD(v9) = *(a3 + 8);
          v13 = v24 & v11;
          v14 = a1 + 32 * v13;
          if (v9 == *(v14 + 8))
          {
            goto LABEL_3;
          }
        }

        if (v8)
        {
          v14 = v8;
        }
      }
    }

LABEL_19:
    *a4 = v14;
    llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::destroyAll(v27);
    llvm::deallocate_buffer(v27[0], (96 * v28));
  }

  *a4 = 0;
  return 0;
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>>,llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>>::grow(uint64_t a1, int a2)
{
  v3 = *a1;
  v4 = (a2 - 1) | ((a2 - 1) >> 1);
  v5 = v4 | (v4 >> 2) | ((v4 | (v4 >> 2)) >> 4);
  v6 = ((v5 | (v5 >> 8)) >> 16) | v5 | (v5 >> 8);
  if ((v6 + 1) > 0x40)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 64;
  }

  *(a1 + 16) = v7;
  *a1 = llvm::allocate_buffer(32 * v7, 8uLL);
  if (v3)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>>,llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>>::initEmpty(a1);
  }

  llvm::DenseMapBase<llvm::DenseMap<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>>,llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>>::initEmpty(a1);
}

void std::pair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>,MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>::destroyAll((v2 + 8));
    llvm::deallocate_buffer(*(v2 + 8), (120 * *(v2 + 24)));
  }

  llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::destroyAll(a1);
  llvm::deallocate_buffer(*a1, (96 * *(a1 + 16)));
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,llvm::detail::DenseSetEmpty,MPSGraphModuleKeysSetInfo,llvm::detail::DenseSetPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>>>,llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,llvm::detail::DenseSetEmpty,MPSGraphModuleKeysSetInfo,llvm::detail::DenseSetPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>>>::doFind<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>>(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    MPSGraphModuleKeysSetInfo::getEmptyKey(v22);
    v6 = *(a3 + 8);
    v7 = 0x9DDFEA08EB382D69 * ((0xEEFF504759C16B48 * v6 - 0x4089B058A25136EBLL) ^ ((0xEEFF504759C16B48 * v6 - 0x4089B058A25136EBLL) >> 47));
    v8 = a2 - 1;
    v9 = 1;
    v10 = (-348639895 * ((v7 >> 47) ^ v7)) & (a2 - 1);
    v11 = a1 + 24 * v10;
    if (v6 != *(v11 + 8))
    {
      goto LABEL_13;
    }

LABEL_3:
    v12 = *a3;
    v13 = *(a3 + 16);
    v14 = (*a3 + 96 * v13);
    if (v6)
    {
      v26 = *a3;
      v27 = v14;
      llvm::DenseMapIterator<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>,true>::AdvancePastEmptyBuckets(&v26);
      v14 = v26;
      v15 = *a3;
      v16 = *(a3 + 16);
      v25 = v27;
      v17 = (v15 + 96 * v16);
      if (v17 != v26)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v25 = *a3 + 96 * v13;
      v17 = (v12 + 96 * v13);
      if (v17 != v14)
      {
LABEL_7:
        while (1)
        {
          v18 = llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::doFind<MPSGraphModuleKey>(*v11, *(v11 + 16), v14);
          if (!v18 || v18 == (*v11 + 96 * *(v11 + 16)))
          {
            break;
          }

          v24 = (v14 + 96);
          llvm::DenseMapIterator<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>,true>::AdvancePastEmptyBuckets(&v24);
          v14 = v24;
          if (v24 == v17)
          {
            goto LABEL_17;
          }
        }

LABEL_13:
        while ((MPSGraphModuleKeysSetInfo::isEqual(v11, v22) & 1) == 0)
        {
          v20 = v10 + v9++;
          LODWORD(v6) = *(a3 + 8);
          v10 = v20 & v8;
          v11 = a1 + 24 * (v20 & v8);
          if (v6 == *(v11 + 8))
          {
            goto LABEL_3;
          }
        }
      }
    }

LABEL_17:
    llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::destroyAll(v22);
    llvm::deallocate_buffer(v22[0], (96 * v23));
  }

  return 0;
}

void *___ZL20softLinkClassMLModelv_block_invoke()
{
  if (qword_1ECE75470 != -1)
  {
    dispatch_once(&qword_1ECE75470, &__block_literal_global_1225);
  }

  result = dlsym(qword_1ECE75478, "OBJC_CLASS_$_MLModel");
  qword_1ECE75468 = result;
  return result;
}

void *___ZL13CoreMLLibraryv_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/CoreML.framework/CoreML", 1);
  qword_1ECE75478 = result;
  return result;
}

void *___ZL23softLinkClassMLCompilerv_block_invoke()
{
  if (qword_1ECE75470 != -1)
  {
    dispatch_once(&qword_1ECE75470, &__block_literal_global_1225);
  }

  result = dlsym(qword_1ECE75478, "OBJC_CLASS_$_MLCompiler");
  qword_1ECE75488 = result;
  return result;
}

void llvm::DenseMapIterator<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>,true>::AdvancePastEmptyBuckets(uint64_t *a1)
{
  MPSGraphModuleKeysSetInfo::getEmptyKey(&v24);
  MPSGraphModuleKeysSetInfo::getTombstoneKey(&v21);
  v2 = *a1;
  if (*a1 == a1[1])
  {
    goto LABEL_27;
  }

  while (1)
  {
    v4 = *(v2 + 8);
    if (v4 != v25)
    {
      goto LABEL_16;
    }

    v5 = *v2;
    v6 = *(v2 + 16);
    v7 = (*v2 + 96 * v6);
    if (v4)
    {
      v29 = *v2;
      v30 = v7;
      llvm::DenseMapIterator<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>,true>::AdvancePastEmptyBuckets(&v29);
      v7 = v29;
      v8 = *v2;
      v9 = *(v2 + 16);
      v28 = v30;
      v10 = (v8 + 96 * v9);
      if (v10 != v29)
      {
        break;
      }

      goto LABEL_3;
    }

    v28 = *v2 + 96 * v6;
    v10 = (v5 + 96 * v6);
    if (v10 != v7)
    {
      break;
    }

LABEL_3:
    v3 = a1[1];
    v2 = *a1 + 32;
    *a1 = v2;
    if (v2 == v3)
    {
      goto LABEL_27;
    }
  }

  while (1)
  {
    v11 = llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::doFind<MPSGraphModuleKey>(v24, v26, v7);
    if (!v11 || v11 == (v24 + 96 * v26))
    {
      break;
    }

    v27 = (v7 + 96);
    llvm::DenseMapIterator<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>,true>::AdvancePastEmptyBuckets(&v27);
    v7 = v27;
    if (v27 == v10)
    {
      goto LABEL_3;
    }
  }

  v2 = *a1;
  v4 = *(*a1 + 8);
LABEL_16:
  if (v4 != v22)
  {
    goto LABEL_27;
  }

  v13 = *v2;
  v14 = *(v2 + 16);
  v15 = (*v2 + 96 * v14);
  if (v4)
  {
    v29 = *v2;
    v30 = v15;
    llvm::DenseMapIterator<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>,true>::AdvancePastEmptyBuckets(&v29);
    v15 = v29;
    v16 = *v2;
    v17 = *(v2 + 16);
    v28 = v30;
    v18 = (v16 + 96 * v17);
    if (v18 != v29)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v28 = *v2 + 96 * v14;
    v18 = (v13 + 96 * v14);
    if (v18 != v15)
    {
LABEL_21:
      while (1)
      {
        v19 = llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::doFind<MPSGraphModuleKey>(v21, v23, v15);
        if (!v19 || v19 == (v21 + 96 * v23))
        {
          break;
        }

        v27 = (v15 + 96);
        llvm::DenseMapIterator<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>,true>::AdvancePastEmptyBuckets(&v27);
        v15 = v27;
        if (v27 == v18)
        {
          goto LABEL_3;
        }
      }

LABEL_27:
      llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::destroyAll(&v21);
      llvm::deallocate_buffer(v21, (96 * v23));
    }
  }

  goto LABEL_3;
}

uint64_t llvm::detail::DenseSetImpl<MPSGraphModuleKey,llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKeyInfo>::DenseSetImpl<std::__wrap_iter<MPSGraphModuleKey*>>(uint64_t a1, MPSGraphModuleKeyInfo **a2, MPSGraphModuleKeyInfo **a3)
{
  v6 = *a3 - *a2;
  v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 5) - 1;
  if (v6 >= 1 && v7 >> 31 == 0)
  {
    v9 = 4 * (1 << -__clz(v7));
    v10 = (v9 / 3 + 1) | ((v9 / 3 + 1) >> 1);
    v11 = v10 | (v10 >> 2) | ((v10 | (v10 >> 2)) >> 4);
    LODWORD(v11) = (((v11 | (v11 >> 8)) >> 16) | v11 | (v11 >> 8)) + 1;
    *(a1 + 16) = v11;
    *a1 = llvm::allocate_buffer(96 * v11, 8uLL);
    llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::initEmpty(a1);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  v12 = *a2;
  v13 = *a3;
  while (v12 != v13)
  {
    v16 = 0;
    if ((llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::LookupBucketFor<MPSGraphModuleKey>(*a1, *(a1 + 16), v12, &v16) & 1) == 0)
    {
      inserted = llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::InsertIntoBucketImpl<MPSGraphModuleKey>(a1, v12, v16);
      MPSGraphModuleKey::operator=(inserted, v12);
    }

    v12 = (v12 + 96);
  }

  return a1;
}

uint64_t MPSGraphSpecializationCache::moduleValid(MPSGraphSpecializationCache *this, MPSGraphExecutableSpecializedModule *a2)
{
  if ((*(**a2 + 16))() != 2)
  {
    v24[0] = 0;
    v24[1] = 0;
    v25 = 0;
    v4 = *(a2 + 1);
    v5 = *(a2 + 6);
    if (*(a2 + 4))
    {
      v27[0] = *(a2 + 1);
      v27[1] = (v4 + 120 * v5);
      llvm::DenseMapIterator<MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>,true>::AdvancePastEmptyBuckets(v27);
      v6 = *v27;
      v4 = *(a2 + 1);
      v5 = *(a2 + 6);
    }

    else
    {
      v6 = vdupq_n_s64(v4 + 120 * v5);
    }

    v32 = v6;
    v7 = v4 + 120 * v5;
    while (1)
    {
      v8 = v32.i64[0];
      if (v32.i64[0] == v7)
      {
        break;
      }

      llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>,MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>::erase(&this->_currentCache, v32.i64[0]);
      v27[0] = 0;
      if ((llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::LookupBucketFor<MPSGraphModuleKey>(v24[0], v25, v8, v27) & 1) == 0)
      {
        inserted = llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::InsertIntoBucketImpl<MPSGraphModuleKey>(v24, v8, v27[0]);
        MPSGraphModuleKey::operator=(inserted, v8);
      }

      v32.i64[0] = v8 + 120;
      llvm::DenseMapIterator<MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>,true>::AdvancePastEmptyBuckets(&v32);
    }

    Buckets = this->_failedToLoadModules.TheMap.Buckets;
    v26 = 0;
    if (llvm::DenseMapBase<llvm::DenseMap<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,llvm::detail::DenseSetEmpty,MPSGraphModuleKeysSetInfo,llvm::detail::DenseSetPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>>>,llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,llvm::detail::DenseSetEmpty,MPSGraphModuleKeysSetInfo,llvm::detail::DenseSetPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>>>::LookupBucketFor<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>>(Buckets, this->_failedToLoadModules.TheMap.NumBuckets, v24, &v26))
    {
      llvm::DenseMapBase<llvm::DenseMap<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>>,llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>>::erase(this, v24);
      llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::destroyAll(v24);
      llvm::deallocate_buffer(v24[0], (96 * v25));
    }

    v11 = v26;
    v29 = v26;
    NumEntries = this->_failedToLoadModules.TheMap.NumEntries;
    NumBuckets = this->_failedToLoadModules.TheMap.NumBuckets;
    if (4 * NumEntries + 4 >= 3 * NumBuckets)
    {
      NumBuckets *= 2;
    }

    else if (NumBuckets + ~NumEntries - this->_failedToLoadModules.TheMap.NumTombstones > NumBuckets >> 3)
    {
      this->_failedToLoadModules.TheMap.NumEntries = NumEntries + 1;
      MPSGraphModuleKeysSetInfo::getEmptyKey(v27);
      v14 = *(v11 + 8);
      if (v14 == LODWORD(v27[1]))
      {
        v15 = *v11;
        v16 = *(v11 + 16);
        v17 = (*v11 + 96 * v16);
        if (v14)
        {
          v32.i64[0] = *v11;
          v32.i64[1] = v17;
          llvm::DenseMapIterator<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>,true>::AdvancePastEmptyBuckets(&v32);
          v17 = v32.i64[0];
          v18 = *v11;
          v19 = *(v11 + 16);
          v31 = v32.i64[1];
          v20 = (v18 + 96 * v19);
          if (v20 != v32.i64[0])
          {
            goto LABEL_18;
          }

LABEL_25:
          llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::destroyAll(v27);
          llvm::deallocate_buffer(v27[0], (96 * v28));
        }

        v31 = *v11 + 96 * v16;
        v20 = (v15 + 96 * v16);
        if (v20 == v17)
        {
          goto LABEL_25;
        }

LABEL_18:
        while (1)
        {
          v21 = llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::doFind<MPSGraphModuleKey>(v27[0], v28, v17);
          if (!v21 || v21 == (v27[0] + 96 * v28))
          {
            break;
          }

          v30 = (v17 + 96);
          llvm::DenseMapIterator<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>,true>::AdvancePastEmptyBuckets(&v30);
          v17 = v30;
          if (v30 == v20)
          {
            goto LABEL_25;
          }
        }
      }

      --this->_failedToLoadModules.TheMap.NumTombstones;
      goto LABEL_25;
    }

    llvm::DenseMapBase<llvm::DenseMap<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,llvm::detail::DenseSetEmpty,MPSGraphModuleKeysSetInfo,llvm::detail::DenseSetPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>>>,llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,llvm::detail::DenseSetEmpty,MPSGraphModuleKeysSetInfo,llvm::detail::DenseSetPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>>>::grow(&this->_failedToLoadModules, NumBuckets);
  }

  return 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>>,llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>>::doFind<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>>(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    MPSGraphModuleKeysSetInfo::getEmptyKey(v22);
    v6 = *(a3 + 8);
    v7 = 0x9DDFEA08EB382D69 * ((0xEEFF504759C16B48 * v6 - 0x4089B058A25136EBLL) ^ ((0xEEFF504759C16B48 * v6 - 0x4089B058A25136EBLL) >> 47));
    v8 = a2 - 1;
    v9 = 1;
    v10 = (-348639895 * ((v7 >> 47) ^ v7)) & (a2 - 1);
    v11 = a1 + 32 * v10;
    if (v6 != *(v11 + 8))
    {
      goto LABEL_13;
    }

LABEL_3:
    v12 = *a3;
    v13 = *(a3 + 16);
    v14 = (*a3 + 96 * v13);
    if (v6)
    {
      v26 = *a3;
      v27 = v14;
      llvm::DenseMapIterator<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>,true>::AdvancePastEmptyBuckets(&v26);
      v14 = v26;
      v15 = *a3;
      v16 = *(a3 + 16);
      v25 = v27;
      v17 = (v15 + 96 * v16);
      if (v17 != v26)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v25 = *a3 + 96 * v13;
      v17 = (v12 + 96 * v13);
      if (v17 != v14)
      {
LABEL_7:
        while (1)
        {
          v18 = llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::doFind<MPSGraphModuleKey>(*v11, *(v11 + 16), v14);
          if (!v18 || v18 == (*v11 + 96 * *(v11 + 16)))
          {
            break;
          }

          v24 = (v14 + 96);
          llvm::DenseMapIterator<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>,true>::AdvancePastEmptyBuckets(&v24);
          v14 = v24;
          if (v24 == v17)
          {
            goto LABEL_17;
          }
        }

LABEL_13:
        while ((MPSGraphModuleKeysSetInfo::isEqual(v11, v22) & 1) == 0)
        {
          v20 = v10 + v9++;
          LODWORD(v6) = *(a3 + 8);
          v10 = v20 & v8;
          v11 = a1 + 32 * v10;
          if (v6 == *(v11 + 8))
          {
            goto LABEL_3;
          }
        }
      }
    }

LABEL_17:
    llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::destroyAll(v22);
    llvm::deallocate_buffer(v22[0], (96 * v23));
  }

  return 0;
}

int32x2_t llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>,MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>::erase(uint64_t a1, MPSGraphModuleKeyInfo *a2)
{
  v9[6] = *MEMORY[0x1E69E9840];
  v3 = llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>,MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>::doFind<MPSGraphModuleKey>(*a1, *(a1 + 16), a2);
  if (v3)
  {
    v5 = v3;
    if (v3[1].var0.var3[23] < 0)
    {
      operator delete(*v3[1].var0.var3);
    }

    v8[0] = v9;
    v8[1] = 0x600000001;
    v9[0] = -3;
    MPSGraphModuleKey::MPSGraphModuleKey(v6, v8, 0, 0, 0, 0);
    if (v8[0] != v9)
    {
      free(v8[0]);
    }

    MPSGraphModuleKey::operator=(v5, v6);

    if (v6[0] != v7)
    {
      free(v6[0]);
    }

    result = vadd_s32(*(a1 + 8), 0x1FFFFFFFFLL);
    *(a1 + 8) = result;
  }

  return result;
}

void sub_1E08D736C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22 != v22)
  {
    free(a22);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>>,llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>>::erase(uint64_t a1, uint64_t a2)
{
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>>,llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>>::doFind<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>>(*a1, *(a1 + 16), a2);
  if (result)
  {
    v3 = result;
    v4 = *(result + 24);
    *(result + 24) = 0;
    if (v4)
    {
      llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>,MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>::destroyAll((v4 + 8));
      llvm::deallocate_buffer(*(v4 + 8), (120 * *(v4 + 24)));
    }

    MPSGraphModuleKeysSetInfo::getTombstoneKey(v5);
    if (v5 != v3)
    {
      llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::destroyAll(v3);
      llvm::deallocate_buffer(*v3, (96 * *(v3 + 16)));
    }

    llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::destroyAll(v5);
    llvm::deallocate_buffer(v5[0], (96 * v6));
  }

  return result;
}

const MPSGraphModuleKey *llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>,MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>::doFind<MPSGraphModuleKey>(uint64_t a1, int a2, MPSGraphModuleKeyInfo *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  v20 = v22;
  v21 = 0x600000001;
  v22[0] = -2;
  MPSGraphModuleKey::MPSGraphModuleKey(&v19, &v20, 0, 0, 0, 0);
  if (v20 != v22)
  {
    free(v20);
  }

  v6 = llvm::hashing::detail::hash_combine_range_impl<char const>(*a3, *a3 + 8 * *(a3 + 2));
  v7 = [*(a3 + 8) hash];
  v8 = [*(a3 + 9) hash];
  v9 = [*(a3 + 10) hash];
  v10 = [*(a3 + 11) hash];
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v20 = v6;
  v21 = v7;
  v22[0] = v8;
  v22[1] = v9;
  v28 = 0xFF51AFD7ED558CCDLL;
  v22[2] = v10;
  v11 = a2 - 1;
  v13 = (a2 - 1) & llvm::hashing::detail::hash_short(&v20, 0x28uLL, 0xFF51AFD7ED558CCDLL);
  for (i = 1; ; ++i)
  {
    v15 = (a1 + 136 * v13);
    if (MPSGraphModuleKeyInfo::isEqual(a3, v15, v12))
    {
      break;
    }

    if (MPSGraphModuleKeyInfo::isEqual((a1 + 136 * v13), &v19, v16))
    {
      v15 = 0;
      break;
    }

    v17 = v13 + i;
    v13 = v17 & v11;
  }

  if (v19.var0.var0 != v19.var0.var3)
  {
    free(v19.var0.var0);
  }

  return v15;
}

void sub_1E08D76E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, MPSGraphModuleKey *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22 != v22)
  {
    free(a22);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,llvm::detail::DenseSetEmpty,MPSGraphModuleKeysSetInfo,llvm::detail::DenseSetPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>>>,llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,llvm::detail::DenseSetEmpty,MPSGraphModuleKeysSetInfo,llvm::detail::DenseSetPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>>>::LookupBucketFor<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>>(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  if (a2)
  {
    MPSGraphModuleKeysSetInfo::getEmptyKey(v29);
    MPSGraphModuleKeysSetInfo::getTombstoneKey(v27);
    v8 = 0;
    v9 = *(a3 + 8);
    v10 = 0x9DDFEA08EB382D69 * ((0xEEFF504759C16B48 * v9 - 0x4089B058A25136EBLL) ^ ((0xEEFF504759C16B48 * v9 - 0x4089B058A25136EBLL) >> 47));
    v11 = a2 - 1;
    v12 = 1;
    v13 = (-348639895 * ((v10 >> 47) ^ v10)) & (a2 - 1);
    v14 = a1 + 24 * v13;
    if (v9 != *(v14 + 8))
    {
      goto LABEL_14;
    }

LABEL_3:
    v15 = *a3;
    v16 = *(a3 + 16);
    v17 = (*a3 + 96 * v16);
    v26 = v12;
    if (v9)
    {
      v32 = *a3;
      v33 = v17;
      llvm::DenseMapIterator<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>,true>::AdvancePastEmptyBuckets(&v32);
      v18 = v8;
      v17 = v32;
      v19 = *a3;
      v20 = *(a3 + 16);
      v31 = v33;
      v21 = (v19 + 96 * v20);
      if (v21 != v32)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v18 = v8;
      v31 = *a3 + 96 * v16;
      v21 = (v15 + 96 * v16);
      if (v21 != v17)
      {
LABEL_7:
        while (1)
        {
          v22 = llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::doFind<MPSGraphModuleKey>(*v14, *(v14 + 16), v17);
          if (!v22 || v22 == (*v14 + 96 * *(v14 + 16)))
          {
            break;
          }

          v30 = (v17 + 96);
          llvm::DenseMapIterator<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>,true>::AdvancePastEmptyBuckets(&v30);
          v17 = v30;
          if (v30 == v21)
          {
            goto LABEL_19;
          }
        }

        v8 = v18;
        v12 = v26;
LABEL_14:
        while (!MPSGraphModuleKeysSetInfo::isEqual(v14, v29))
        {
          if ((MPSGraphModuleKeysSetInfo::isEqual(v14, v27) & (v8 == 0)) != 0)
          {
            v8 = v14;
          }

          v24 = v13 + v12++;
          LODWORD(v9) = *(a3 + 8);
          v13 = v24 & v11;
          v14 = a1 + 24 * (v24 & v11);
          if (v9 == *(v14 + 8))
          {
            goto LABEL_3;
          }
        }

        if (v8)
        {
          v14 = v8;
        }
      }
    }

LABEL_19:
    *a4 = v14;
    llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::destroyAll(v27);
    llvm::deallocate_buffer(v27[0], (96 * v28));
  }

  *a4 = 0;
  return 0;
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,llvm::detail::DenseSetEmpty,MPSGraphModuleKeysSetInfo,llvm::detail::DenseSetPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>>>,llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,llvm::detail::DenseSetEmpty,MPSGraphModuleKeysSetInfo,llvm::detail::DenseSetPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>>>::grow(uint64_t a1, int a2)
{
  v3 = *a1;
  v4 = (a2 - 1) | ((a2 - 1) >> 1);
  v5 = v4 | (v4 >> 2) | ((v4 | (v4 >> 2)) >> 4);
  v6 = ((v5 | (v5 >> 8)) >> 16) | v5 | (v5 >> 8);
  if ((v6 + 1) > 0x40)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 64;
  }

  *(a1 + 16) = v7;
  *a1 = llvm::allocate_buffer(24 * v7, 8uLL);
  if (v3)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,llvm::detail::DenseSetEmpty,MPSGraphModuleKeysSetInfo,llvm::detail::DenseSetPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>>>,llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,llvm::detail::DenseSetEmpty,MPSGraphModuleKeysSetInfo,llvm::detail::DenseSetPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>>>::initEmpty(a1);
  }

  llvm::DenseMapBase<llvm::DenseMap<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,llvm::detail::DenseSetEmpty,MPSGraphModuleKeysSetInfo,llvm::detail::DenseSetPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>>>,llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,llvm::detail::DenseSetEmpty,MPSGraphModuleKeysSetInfo,llvm::detail::DenseSetPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>>>::initEmpty(a1);
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,llvm::detail::DenseSetEmpty,MPSGraphModuleKeysSetInfo,llvm::detail::DenseSetPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>>>,llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,llvm::detail::DenseSetEmpty,MPSGraphModuleKeysSetInfo,llvm::detail::DenseSetPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>>>::initEmpty(uint64_t a1)
{
  *(a1 + 8) = 0;
  MPSGraphModuleKeysSetInfo::getEmptyKey(v3);
  if (*(a1 + 16))
  {
    v2 = *a1;
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::destroyAll(v2);
    llvm::deallocate_buffer(*v2, (96 * *(v2 + 16)));
  }

  llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::destroyAll(v3);
  llvm::deallocate_buffer(v3[0], (96 * v4));
}

void jsonStringToMPSGraphModuleKey(NSString *a1, void *a2)
{
  v32[6] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v30 = v32;
  v31 = 0x600000000;
  v3 = MEMORY[0x1E696ACB0];
  v26 = v2;
  v4 = [v2 dataUsingEncoding:4];
  v29 = 0;
  v5 = [v3 JSONObjectWithData:v4 options:4 error:&v29];
  v28 = v29;

  if (!v5 && MTLReportFailureTypeEnabled())
  {
    v25 = [v28 debugDescription];
    MTLReportFailure();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [v6 objectForKeyedSubscript:@"inputShapes"];
    v8 = [v6 objectForKeyedSubscript:@"compilationDescriptor"];
    v9 = [v6 objectForKeyedSubscript:@"callablesDescriptor"];
    v10 = [v6 objectForKeyedSubscript:@"deviceDescriptor"];
    v11 = v10 == 0;

    if (v11)
    {
      v14 = 0;
    }

    else
    {
      v12 = [MPSGraphDeviceDescriptor alloc];
      v13 = [v6 objectForKeyedSubscript:@"deviceDescriptor"];
      v14 = [(MPSGraphDeviceDescriptor *)v12 initWithSerializedProperties:v13];
    }

    v17 = [MPSGraphCompilationDescriptor descriptorWithDictionary:v8, v25];
    v18 = [v7 count];
    v19 = v31;
    if (v18 != v31)
    {
      if (v18 >= v31)
      {
        if (v18 > HIDWORD(v31))
        {
          v20 = v18;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v18, 8);
          v18 = v20;
          v19 = v31;
        }

        if (v18 != v19)
        {
          v21 = v18;
          bzero(v30 + 8 * v19, 8 * (v18 - v19));
          LODWORD(v18) = v21;
        }
      }

      LODWORD(v31) = v18;
      LODWORD(v19) = v18;
    }

    if (v19)
    {
      v22 = 0;
      do
      {
        v23 = [v7 objectAtIndexedSubscript:v22];
        v24 = [v23 integerValue];
        *(v30 + v22) = v24;

        ++v22;
      }

      while (v22 < v31);
    }

    v15 = [v6 objectForKeyedSubscript:@"entryFunctionName"];

    v16 = v17;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = 0;
  }

  MPSGraphModuleKey::MPSGraphModuleKey(a1, &v30, v16, v9, v15, v14);

  if (v30 != v32)
  {
    free(v30);
  }
}

void sub_1E08D81DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, _Unwind_Exception *exception_object, void *a12, uint64_t a13, void *a14)
{
  if (a14 != v14)
  {
    free(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t std::pair<llvm::StringRef,std::unique_ptr<LazyCopyFile>>::~pair(uint64_t result)
{
  v1 = *(result + 16);
  *(result + 16) = 0;
  if (v1)
  {
    v2 = result;

    std::mutex::~mutex((v1 + 8));
    MEMORY[0x1E12E5B90](v1, 0x1080C40B752CBF6);
    return v2;
  }

  return result;
}

uint64_t FromStorageModuleRef::FromStorageModuleRef(uint64_t a1, void *a2, uint64_t *a3, void *a4, uint64_t *a5, uint64_t a6)
{
  v11 = a2;
  v12 = a4;
  v14 = *a3;
  v13 = a3[1];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_1F5B53D78;
  objc_initWeak((a1 + 8), v11);
  *(a1 + 16) = 0;
  *(a1 + 24) = v14;
  *(a1 + 32) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = a1 + 104;
  *(a1 + 96) = 0x100000000;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  *a1 = &unk_1F5B53D10;
  v16 = *a5;
  v15 = a5[1];
  *(a1 + 112) = v12;
  *(a1 + 120) = v16;
  *(a1 + 128) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 136) = a6;

  return a1;
}

void FromStorageModuleRef::~FromStorageModuleRef(FromStorageModuleRef *this)
{
  *this = &unk_1F5B53D10;
  v1 = *(this + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  v3 = this;

  BaseModuleRef::~BaseModuleRef(v3);
}

{
  *this = &unk_1F5B53D10;
  v1 = *(this + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  v3 = this;

  BaseModuleRef::~BaseModuleRef(v3);

  JUMPOUT(0x1E12E5B90);
}

uint64_t FromStorageModuleRef::load(FromStorageModuleRef *this, mlir::MLIRContext *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v2 = *(this + 4);
  if (!v2)
  {
    v4 = *(this + 15);
    v5 = *(this + 3);
    v46 = 0;
    if (v4[2] != 1)
    {
      goto LABEL_19;
    }

    if (*v4)
    {
      Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(v5, a2);
      v7 = [MEMORY[0x1E695DF90] dictionary];
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v8 = v4[1];
      v9 = [v8 countByEnumeratingWithState:&v50 objects:v48 count:16];
      if (v9)
      {
        v10 = *v51;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v51 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = *(*(&v50 + 1) + 8 * i);
            v13 = v12;
            v14 = [v12 UTF8String];
            v15 = v14;
            if (v14)
            {
              v16 = strlen(v14);
            }

            else
            {
              v16 = 0;
            }

            if ((*(mlir::mps::MPSResourceBlobManagerInterface::lookup(Manager, v15, v16) + 80) & 1) == 0)
            {
              v17 = [v4[1] objectForKeyedSubscript:v12];
              [v7 setObject:v17 forKeyedSubscript:v12];
            }
          }

          v9 = [v8 countByEnumeratingWithState:&v50 objects:v48 count:16];
        }

        while (v9);
      }

      v47 = Manager;
      [MPSGraphPackage readResources:v7 fromURL:*v4 error:&v46 usingAllocator:llvm::function_ref<char * ()(llvm::StringRef, unsigned long long, unsigned long long)>::callback_fn<ModuleResourcesLoader::load(mlir::MLIRContext *, NSError * {__autoreleasing}*)::{lambda(llvm::StringRef, unsigned long long, unsigned long long)#1}>, &v47];
    }

    else
    {
      v18 = [0 absoluteString];
      v19 = MPSGraphReportFailure(&cfstr_CouldNotReadRe.isa, v18);

      v20 = MEMORY[0x1E696ABC0];
      *&v50 = *MEMORY[0x1E696A578];
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d:: %@ ", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Headers/Project/MPSGraphExecutable_Project.h", 42, v19];
      v48[0] = v21;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v50 count:1];
      v46 = [v20 errorWithDomain:@"MPSGraph" code:-1 userInfo:v22];

      if (*v4 || !MTLReportFailureTypeEnabled())
      {
LABEL_19:
        v23 = v46;
        if (v23)
        {
          v24 = v23;
          v25 = [v23 description];
          v26 = MPSGraphReportFailure(&cfstr_Resourceloader.isa, v25);

LABEL_21:
          v2 = 1;
          *(this + 4) = 1;
LABEL_48:

          return v2;
        }

        v27 = *(this + 16);
        *(this + 15) = 0;
        *(this + 16) = 0;
        if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v27->__on_zero_shared)(v27);
          std::__shared_weak_count::__release_weak(v27);
        }

        v28 = *(this + 14);
        v45 = 0;
        getMLIRModuleOp(v28, &v45, &v47);
        v29 = v45;
        v24 = v29;
        v30 = v47;
        if (v47)
        {
          v47 = 0;
          v48[0] = v30;
          v31 = *(this + 5);
          if (v31)
          {
            mlir::Operation::erase(v31);
          }

          *(this + 5) = v30;
          *&v50 = this;
          v48[0] = &v50;
          mlir::detail::walk<mlir::ForwardIterator>(v30, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN13BaseModuleRef19getANERegionCallOpsEvEUlNS1_9placement10RegionCallEE_SD_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_, v48, 1);
          if (*(this + 17))
          {
            WeakRetained = objc_loadWeakRetained(this + 1);
            v33 = *(this + 17);
            if (v33)
            {
              v34 = *(v33 + 8);
              v35 = **(this + 17);
              if (*(this + 64) == 1)
              {
                v36 = *(this + 6);
                *(this + 6) = v34;
              }

              else
              {
                *(this + 6) = v34;
                *(this + 64) = 1;
              }

              *(this + 7) = v35;
            }

            LOBYTE(v48[0]) = 0;
            v49 = 0;
            if (*(this + 64) == 1)
            {
              v40 = *(this + 6);
              v41 = *(this + 7);
              v48[0] = v40;
              v48[1] = v41;
              v49 = 1;
            }

            GPU::ANEHelper::getFromPreCompiled(WeakRetained, this + 88, &v50);
            v42 = v50;
            *&v50 = 0;
            v43 = *(this + 9);
            *(this + 9) = v42;
            if (v43)
            {
              GPU::ANEHelper::~ANEHelper(v43);
            }

            if (v49 == 1)
            {
            }

            if (*(this + 9))
            {
LABEL_46:
              v2 = 2;
              v39 = v47;
              *(this + 4) = 2;
              if (!v39)
              {
                goto LABEL_48;
              }

LABEL_47:
              mlir::Operation::erase(v39);
              goto LABEL_48;
            }
          }

          else if (BaseModuleRef::compileAndLoadANE(this) != 1)
          {
            goto LABEL_46;
          }
        }

        else
        {
          if (!v29)
          {
            goto LABEL_21;
          }

          v37 = [v29 description];
          v38 = MPSGraphReportFailure(&cfstr_Getmlirmoduleo.isa, v37);
        }

        v2 = 1;
        v39 = v47;
        *(this + 4) = 1;
        if (!v39)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      }

      v7 = [*v4 absoluteString];
      MTLReportFailure();
    }

    goto LABEL_19;
  }

  return v2;
}

uint64_t FromStorageModuleRef::get(uint64_t a1, mlir::MLIRContext *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  FromStorageModuleRef::load(a1, a2);
  if (*(a1 + 16) != 2)
  {
    if (!a2 || (MPSGraphReportFailure(&cfstr_CouldNotLoadMo.isa), v5 = objc_claimAutoreleasedReturnValue(), v6 = MEMORY[0x1E696ABC0], [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d:: %@ ", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Headers/Project/MPSGraphExecutable_Project.h", 403, v5, *MEMORY[0x1E696A578]], v7 = objc_claimAutoreleasedReturnValue(), v10[0] = v7, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v10, &v9, 1), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "errorWithDomain:code:userInfo:", @"MPSGraph", -1, v8), *a2 = objc_claimAutoreleasedReturnValue(), v8, v7, v5, *(a1 + 16) != 2))
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

  return *(a1 + 40);
}

uint64_t FromStorageModuleRef::getANEHelper(FromStorageModuleRef *this, mlir::MLIRContext *a2)
{
  FromStorageModuleRef::load(this, a2);
  if (*(this + 4) == 2 || !MTLReportFailureTypeEnabled())
  {
    return *(this + 9);
  }

  MTLReportFailure();
  return *(this + 9);
}

void FromStorageModuleRef::getANEPreCompiledBinary(FromStorageModuleRef *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 17);
  if (v4)
  {
    v5 = *(v4 + 8);
    v6 = **(this + 17);
    if (*(this + 64) == 1)
    {
      v7 = *(this + 6);
      *(this + 6) = v5;
    }

    else
    {
      *(this + 6) = v5;
      *(this + 64) = 1;
    }

    *(this + 7) = v6;
  }

  *a2 = 0;
  *(a2 + 16) = 0;
  if (*(this + 64) == 1)
  {
    v8 = *(this + 6);
    v9 = *(this + 7);
    *a2 = v8;
    *(a2 + 8) = v9;
    *(a2 + 16) = 1;
  }
}

void BaseModuleRef::~BaseModuleRef(BaseModuleRef *this)
{
  *this = &unk_1F5B53D78;
  v2 = *(this + 11);
  if (v2 != (this + 104))
  {
    free(v2);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    GPU::ANEHelper::~ANEHelper(v3);
  }

  if (*(this + 64) == 1)
  {
  }

  v4 = *(this + 5);
  if (v4)
  {
    mlir::Operation::erase(v4);
  }

  v5 = *(this + 4);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    objc_destroyWeak(this + 1);
  }

  else
  {
    objc_destroyWeak(this + 1);
  }
}

uint64_t BaseModuleRef::compileAndLoadANE(BaseModuleRef *this)
{
  result = *(this + 4);
  if (result != 1 && *(this + 24))
  {
    v3 = (this + 8);
    if (*(this + 80) != 1)
    {
      WeakRetained = objc_loadWeakRetained(v3);
      GPU::ANEHelper::get(WeakRetained, this + 11, &v15);
      v6 = v15;
      v15 = 0;
      v7 = *(this + 9);
      *(this + 9) = v6;
      if (v7)
      {
        GPU::ANEHelper::~ANEHelper(v7);
      }

      if (!*(this + 9))
      {
        goto LABEL_25;
      }

      return *(this + 4);
    }

    v4 = objc_loadWeakRetained(v3);
    GPU::anePreCompileBinary(v4, this + 11, 0, &v15);
    if (*(this + 64) == v17)
    {
      if (!*(this + 64))
      {
        if (v17 != 1)
        {
          goto LABEL_7;
        }

LABEL_19:

        if ((*(this + 64) & 1) == 0)
        {
LABEL_25:
          result = 1;
          *(this + 4) = 1;
          return result;
        }

        goto LABEL_20;
      }

      v8 = v15;
      v15 = 0;
      v9 = *(this + 6);
      *(this + 6) = v8;

      *(this + 7) = v16;
      if (v17 == 1)
      {
        goto LABEL_19;
      }
    }

    else if (*(this + 64))
    {

      *(this + 64) = 0;
      if (v17 == 1)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v10 = v15;
      v11 = v16;
      v15 = 0;
      *(this + 6) = v10;
      *(this + 7) = v11;
      *(this + 64) = 1;
      if (v17 == 1)
      {
        goto LABEL_19;
      }
    }

LABEL_7:

    if ((*(this + 64) & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_20:
    v12 = objc_loadWeakRetained(this + 1);
    GPU::ANEHelper::getFromPreCompiled(v12, this + 88, &v15);
    v13 = v15;
    v15 = 0;
    v14 = *(this + 9);
    *(this + 9) = v13;
    if (v14)
    {
      GPU::ANEHelper::~ANEHelper(v14);
    }

    return *(this + 4);
  }

  return result;
}

uint64_t llvm::function_ref<char * ()(llvm::StringRef,unsigned long long,unsigned long long)>::callback_fn<ModuleResourcesLoader::load(mlir::MLIRContext *,NSError * {__autoreleasing}*)::{lambda(llvm::StringRef,unsigned long long,unsigned long long)#1}>(uint64_t *a1, unsigned int *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = *MEMORY[0x1E69E9840];
  mlir::mps::MPSResourceBlobManagerInterface::lookup(*a1, a2, a3);
  mlir::mps::MPSResourceBlobManagerInterface::allocateBufferTensorBlob(*a1, a4, a5, &v25);
  v10 = *a1;
  v19 = v25;
  v20 = v26;
  v23 = v29;
  if (v29 >= 8)
  {
    if ((~v29 & 6) != 0)
    {
      v21 = v27;
      v22 = v28;
    }

    else
    {
      (*((v29 & 0xFFFFFFFFFFFFFFF8) + 8))(&v21, &v27);
      (*((v23 & 0xFFFFFFFFFFFFFFF8) + 16))(&v27);
    }

    v29 = 0;
  }

  v24 = v30;
  mlir::mps::MPSResourceBlobManagerInterface::defineEntryValue(v10, a2, a3, &v19);
  if (v23 >= 8)
  {
    v11 = (v23 & 2) != 0 ? &v21 : v21;
    (*(v23 & 0xFFFFFFFFFFFFFFF8))(v11, v19, *(&v19 + 1), v20);
    v12 = v23;
    if (v23 >= 8)
    {
      if ((v23 & 4) != 0)
      {
        if ((v23 & 2) != 0)
        {
          v13 = &v21;
        }

        else
        {
          v13 = v21;
        }

        (*((v23 & 0xFFFFFFFFFFFFFFF8) + 16))(v13);
      }

      if ((v12 & 2) == 0)
      {
        llvm::deallocate_buffer(v21, *(&v21 + 1));
      }
    }
  }

  v14 = v25;
  if (v29 >= 8)
  {
    v15 = (v29 & 2) != 0 ? &v27 : v27;
    (*(v29 & 0xFFFFFFFFFFFFFFF8))(v15, v25, *(&v25 + 1), v26);
    v16 = v29;
    if (v29 >= 8)
    {
      if ((v29 & 4) != 0)
      {
        if ((v29 & 2) != 0)
        {
          v17 = &v27;
        }

        else
        {
          v17 = v27;
        }

        (*((v29 & 0xFFFFFFFFFFFFFFF8) + 16))(v17);
      }

      if ((v16 & 2) == 0)
      {
        llvm::deallocate_buffer(v27, *(&v27 + 1));
      }
    }
  }

  return v14;
}

void sub_1E08D94B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN13BaseModuleRef19getANERegionCallOpsEvEUlNS1_9placement10RegionCallEE_SD_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t **a1, mlir::Operation *a2)
{
  if (a2)
  {
    if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id)
    {
      v9[3] = v2;
      v9[4] = v3;
      v4 = *a1;
      v9[0] = a2;
      v5 = *v4;
      if (mlir::placement::RegionCall::getRegionType(v9) == 1)
      {
        v6 = v9[0];
        v7 = *(v5 + 96);
        if (v7 >= *(v5 + 100))
        {
          v8 = v9[0];
          llvm::SmallVectorBase<unsigned int>::grow_pod(v5 + 88, v5 + 104, v7 + 1, 8);
          v6 = v8;
          LODWORD(v7) = *(v5 + 96);
        }

        *(*(v5 + 88) + 8 * v7) = v6;
        ++*(v5 + 96);
      }
    }
  }
}

void llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>,MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>::initEmpty(uint64_t a1)
{
  v18[6] = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0;
  v17[0] = v18;
  v17[1] = 0x600000001;
  v18[0] = -2;
  MPSGraphModuleKey::MPSGraphModuleKey(&__src, v17, 0, 0, 0, 0);
  if (v17[0] != v18)
  {
    free(v17[0]);
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = 120 * v2;
    while (1)
    {
      v7 = (v3 + 16);
      *v3 = v3 + 16;
      *(v3 + 8) = 0x600000000;
      v8 = v11;
      if (v3 == &__src || v11 == 0)
      {
        goto LABEL_8;
      }

      if (v11 < 7uLL)
      {
        v5 = v11;
      }

      else
      {
        *(v3 + 8) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v3, v3 + 16, v8, 8);
        v5 = v11;
        if (!v11)
        {
          goto LABEL_7;
        }

        v7 = *v3;
      }

      memcpy(v7, __src, 8 * v5);
LABEL_7:
      *(v3 + 8) = v8;
LABEL_8:
      *(v3 + 64) = v13;
      *(v3 + 72) = v14;
      *(v3 + 80) = v15;
      v6 = v16;
      *(v3 + 88) = v6;
      v3 += 120;
      v4 -= 120;
      if (!v4)
      {
        goto LABEL_17;
      }
    }
  }

  v6 = v16;
LABEL_17:

  if (__src != &v12)
  {
    free(__src);
  }
}

void sub_1E08D9750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22 != v22)
  {
    free(a22);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E08D9778(_Unwind_Exception *a1, MPSGraphModuleKey *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (v10 + 2 != *v10)
  {
    free(*v10);
  }

  MPSGraphModuleKey::~MPSGraphModuleKey(&a10);
  _Unwind_Resume(a1);
}

void llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>,MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>::destroyAll(uint64_t *a1)
{
  v10[6] = *MEMORY[0x1E69E9840];
  if (*(a1 + 4))
  {
    v7.var0.var0 = v7.var0.var3;
    *&v7.var0.var1 = 0x600000001;
    *v7.var0.var3 = -2;
    MPSGraphModuleKey::MPSGraphModuleKey(&v8, &v7, 0, 0, 0, 0);
    if (v7.var0.var0 != v7.var0.var3)
    {
      free(v7.var0.var0);
    }

    v9[0] = v10;
    v9[1] = 0x600000001;
    v10[0] = -3;
    MPSGraphModuleKey::MPSGraphModuleKey(&v7, v9, 0, 0, 0, 0);
    if (v9[0] != v10)
    {
      free(v9[0]);
    }

    v3 = *(a1 + 4);
    if (v3)
    {
      v4 = *a1;
      v5 = 120 * v3;
      do
      {
        if ((MPSGraphModuleKeyInfo::isEqual(v4, &v8, v2) & 1) == 0 && (MPSGraphModuleKeyInfo::isEqual(v4, &v7, v6) & 1) == 0 && *(v4 + 119) < 0)
        {
          operator delete(*(v4 + 96));
        }

        if (v4 + 16 != *v4)
        {
          free(*v4);
        }

        v4 += 120;
        v5 -= 120;
      }

      while (v5);
    }

    if (v7.var0.var0 != v7.var0.var3)
    {
      free(v7.var0.var0);
    }

    if (v8.var0.var0 != v8.var0.var3)
    {
      free(v8.var0.var0);
    }
  }
}

void sub_1E08D998C(_Unwind_Exception *a1, MPSGraphModuleKey *a2, MPSGraphModuleKey *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v25 = *(v23 - 104);
  if (v25 != v22)
  {
    free(v25);
    MPSGraphModuleKey::~MPSGraphModuleKey(&a22);
    _Unwind_Resume(a1);
  }

  MPSGraphModuleKey::~MPSGraphModuleKey(&a22);
  _Unwind_Resume(a1);
}

void llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>,MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>::copyFrom<llvm::DenseMap<MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>>(uint64_t *a1, uint64_t *a2)
{
  v15[6] = *MEMORY[0x1E69E9840];
  a1[1] = a2[1];
  v2 = *a1;
  v3 = *a2;
  v4 = *(a1 + 4);
  v12.var0.var0 = v12.var0.var3;
  *&v12.var0.var1 = 0x600000001;
  *v12.var0.var3 = -2;
  MPSGraphModuleKey::MPSGraphModuleKey(&v13, &v12, 0, 0, 0, 0);
  if (v12.var0.var0 != v12.var0.var3)
  {
    free(v12.var0.var0);
  }

  v14[0] = v15;
  v14[1] = 0x600000001;
  v15[0] = -3;
  MPSGraphModuleKey::MPSGraphModuleKey(&v12, v14, 0, 0, 0, 0);
  if (v14[0] != v15)
  {
    free(v14[0]);
  }

  if (v4)
  {
    v5 = 0;
    v6 = 120 * v4;
    do
    {
      MPSGraphModuleKey::MPSGraphModuleKey((v2 + v5), (v3 + v5));
      if ((MPSGraphModuleKeyInfo::isEqual((v2 + v5), &v13, v8) & 1) == 0 && (MPSGraphModuleKeyInfo::isEqual((v2 + v5), &v12, v9) & 1) == 0)
      {
        v10 = (v2 + v5);
        v11 = v3 + v5;
        if (*(v3 + v5 + 119) < 0)
        {
          std::string::__init_copy_ctor_external(v10 + 4, *(v11 + 96), *(v11 + 104));
        }

        else
        {
          v7 = *(v11 + 96);
          v10[4].__r_.__value_.__r.__words[2] = *(v11 + 112);
          *&v10[4].__r_.__value_.__l.__data_ = v7;
        }
      }

      v5 += 120;
    }

    while (v6 != v5);
  }

  if (v12.var0.var0 != v12.var0.var3)
  {
    free(v12.var0.var0);
  }

  if (v13.var0.var0 != v13.var0.var3)
  {
    free(v13.var0.var0);
  }
}

void sub_1E08D9BE4(_Unwind_Exception *a1, MPSGraphModuleKey *a2, MPSGraphModuleKey *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v25 = *(v23 - 120);
  if (v25 != v22)
  {
    free(v25);
    MPSGraphModuleKey::~MPSGraphModuleKey(&a22);
    _Unwind_Resume(a1);
  }

  MPSGraphModuleKey::~MPSGraphModuleKey(&a22);
  _Unwind_Resume(a1);
}

void llvm::DenseMapIterator<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>,false>::AdvancePastEmptyBuckets(MPSGraphModuleKeyInfo **a1)
{
  v8[6] = *MEMORY[0x1E69E9840];
  v5.var0.var0 = v5.var0.var3;
  *&v5.var0.var1 = 0x600000001;
  *v5.var0.var3 = -2;
  MPSGraphModuleKey::MPSGraphModuleKey(&v6, &v5, 0, 0, 0, 0);
  if (v5.var0.var0 != v5.var0.var3)
  {
    free(v5.var0.var0);
  }

  v7[0] = v8;
  v7[1] = 0x600000001;
  v8[0] = -3;
  MPSGraphModuleKey::MPSGraphModuleKey(&v5, v7, 0, 0, 0, 0);
  if (v7[0] != v8)
  {
    free(v7[0]);
  }

  v3 = *a1;
  if (*a1 != a1[1])
  {
    do
    {
      if ((MPSGraphModuleKeyInfo::isEqual(v3, &v6, v2) & 1) == 0 && !MPSGraphModuleKeyInfo::isEqual(*a1, &v5, v2))
      {
        break;
      }

      v4 = a1[1];
      v3 = (*a1 + 96);
      *a1 = v3;
    }

    while (v3 != v4);
  }

  if (v5.var0.var0 != v5.var0.var3)
  {
    free(v5.var0.var0);
  }

  if (v6.var0.var0 != v6.var0.var3)
  {
    free(v6.var0.var0);
  }
}

void sub_1E08D9DE8(_Unwind_Exception *a1, MPSGraphModuleKey *a2, MPSGraphModuleKey *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v25 = *(v23 - 104);
  if (v25 != v22)
  {
    free(v25);
    MPSGraphModuleKey::~MPSGraphModuleKey(&a22);
    _Unwind_Resume(a1);
  }

  MPSGraphModuleKey::~MPSGraphModuleKey(&a22);
  _Unwind_Resume(a1);
}

void *MPSGraphModuleKey::MPSGraphModuleKey(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a1 + 2;
  *a1 = a1 + 2;
  a1[1] = 0x600000000;
  if (a1 != a2)
  {
    v16 = *(a2 + 8);
    if (v16)
    {
      if (v16 < 7)
      {
        v17 = *(a2 + 8);
      }

      else
      {
        *(a1 + 2) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 2), v16, 8);
        v17 = *(a2 + 8);
        if (!v17)
        {
LABEL_8:
          *(a1 + 2) = v16;
          goto LABEL_9;
        }

        v15 = *a1;
      }

      memcpy(v15, *a2, 8 * v17);
      goto LABEL_8;
    }
  }

LABEL_9:
  a1[8] = v11;
  a1[9] = v12;
  a1[10] = v13;
  a1[11] = v14;
  return a1;
}

void sub_1E08D9F30(_Unwind_Exception *a1)
{
  if (*v3 != v6)
  {
    free(*v3);
  }

  _Unwind_Resume(a1);
}

void llvm::SmallVectorTemplateBase<MPSGraphExecutableCacheValue,false>::grow(uint64_t a1, unint64_t a2)
{
  v15 = 0;
  v3 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 40, &v15);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = &v6[40 * v7];
    v9 = v5;
    do
    {
      *v9 = *v6;
      v10 = *(v6 + 1);
      *(v9 + 32) = *(v6 + 4);
      *(v9 + 16) = v10;
      *(v6 + 3) = 0;
      *(v6 + 4) = 0;
      *(v6 + 2) = 0;
      v9 += 40;
      v6 += 40;
    }

    while (v6 != v8);
    v6 = *a1;
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = &v6[40 * v11 - 24];
      v13 = -40 * v11;
      do
      {
        if (*(v12 + 23) < 0)
        {
          operator delete(*v12);
        }

        v12 -= 40;
        v13 += 40;
      }

      while (v13);
      v6 = *a1;
    }
  }

  v14 = v15;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 12) = v14;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>,MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>::LookupBucketFor<MPSGraphModuleKey>(uint64_t a1, uint64_t a2, MPSGraphModuleKeyInfo *a3, const MPSGraphModuleKey **a4)
{
  isEqual = a2;
  v34 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v25 = v27;
    v26 = 0x600000001;
    v27[0] = -2;
    MPSGraphModuleKey::MPSGraphModuleKey(&v24, &v25, 0, 0, 0, 0);
    if (v25 != v27)
    {
      free(v25);
    }

    v25 = v27;
    v26 = 0x600000001;
    v27[0] = -3;
    MPSGraphModuleKey::MPSGraphModuleKey(&v23, &v25, 0, 0, 0, 0);
    if (v25 != v27)
    {
      free(v25);
    }

    v8 = llvm::hashing::detail::hash_combine_range_impl<char const>(*a3, *a3 + 8 * *(a3 + 2));
    v9 = [*(a3 + 8) hash];
    v10 = [*(a3 + 9) hash];
    v11 = [*(a3 + 10) hash];
    v12 = [*(a3 + 11) hash];
    v32 = 0u;
    v31 = 0u;
    v30 = 0u;
    v29 = 0u;
    v28 = 0u;
    v25 = v8;
    v26 = v9;
    v27[0] = v10;
    v27[1] = v11;
    v33 = 0xFF51AFD7ED558CCDLL;
    v27[2] = v12;
    v13 = 0;
    v14 = isEqual - 1;
    v16 = (isEqual - 1) & llvm::hashing::detail::hash_short(&v25, 0x28uLL, 0xFF51AFD7ED558CCDLL);
    for (i = 1; ; ++i)
    {
      v18 = (a1 + 136 * v16);
      isEqual = MPSGraphModuleKeyInfo::isEqual(a3, v18, v15);
      if (isEqual)
      {
        break;
      }

      if (MPSGraphModuleKeyInfo::isEqual((a1 + 136 * v16), &v24, v19))
      {
        if (v13)
        {
          v18 = v13;
        }

        break;
      }

      if ((MPSGraphModuleKeyInfo::isEqual((a1 + 136 * v16), &v23, v20) & (v13 == 0)) != 0)
      {
        v13 = (a1 + 136 * v16);
      }

      v21 = v16 + i;
      v16 = v21 & v14;
    }

    *a4 = v18;

    if (v23.var0.var0 != v23.var0.var3)
    {
      free(v23.var0.var0);
    }

    if (v24.var0.var0 != v24.var0.var3)
    {
      free(v24.var0.var0);
    }
  }

  else
  {
    *a4 = 0;
  }

  return isEqual;
}

void sub_1E08DA2E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, MPSGraphModuleKey *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33)
{
  if (a33 != v33)
  {
    free(a33);
    MPSGraphModuleKey::~MPSGraphModuleKey(&a21);
    _Unwind_Resume(a1);
  }

  MPSGraphModuleKey::~MPSGraphModuleKey(&a21);
  _Unwind_Resume(a1);
}

MPSGraphModuleKeyInfo *llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>,MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>::InsertIntoBucketImpl<MPSGraphModuleKey>(uint64_t a1, MPSGraphModuleKeyInfo *a2, MPSGraphModuleKeyInfo *a3)
{
  v13[6] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>,MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>,MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>::LookupBucketFor<MPSGraphModuleKey>(*a1, *(a1 + 16), a2, &v10);
  v5 = *(a1 + 8);
LABEL_3:
  *(a1 + 8) = v5 + 1;
  v12[0] = v13;
  v12[1] = 0x600000001;
  v13[0] = -2;
  MPSGraphModuleKey::MPSGraphModuleKey(&v11, v12, 0, 0, 0, 0);
  if (v12[0] != v13)
  {
    free(v12[0]);
  }

  v8 = v10;
  if ((MPSGraphModuleKeyInfo::isEqual(v10, &v11, v7) & 1) == 0)
  {
    --*(a1 + 12);
  }

  if (v11.var0.var0 != v11.var0.var3)
  {
    free(v11.var0.var0);
  }

  return v8;
}

void sub_1E08DA4C8(_Unwind_Exception *exception_object)
{
  v4 = *(v2 - 88);
  if (v4 != v1)
  {
    free(v4);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>,MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>::grow(uint64_t a1, int a2)
{
  v27[6] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  *a1 = llvm::allocate_buffer(136 * v8, 8uLL);
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>,MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>::initEmpty(a1);
    v24.var0.var0 = v24.var0.var3;
    *&v24.var0.var1 = 0x600000001;
    *v24.var0.var3 = -2;
    MPSGraphModuleKey::MPSGraphModuleKey(&v25, &v24, 0, 0, 0, 0);
    if (v24.var0.var0 != v24.var0.var3)
    {
      free(v24.var0.var0);
    }

    v26[0] = v27;
    v26[1] = 0x600000001;
    v27[0] = -3;
    MPSGraphModuleKey::MPSGraphModuleKey(&v24, v26, 0, 0, 0, 0);
    if (v26[0] != v27)
    {
      free(v26[0]);
    }

    v10 = 17 * v3;
    if (v3)
    {
      v11 = 136 * v3;
      v12 = v4;
      do
      {
        if ((MPSGraphModuleKeyInfo::isEqual(v12, &v25, v9) & 1) == 0 && (MPSGraphModuleKeyInfo::isEqual(v12, &v24, v13) & 1) == 0)
        {
          v26[0] = 0;
          llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>,MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>::LookupBucketFor<MPSGraphModuleKey>(*a1, *(a1 + 16), v12, v26);
          v14 = v26[0];
          llvm::SmallVectorImpl<unsigned long long>::operator=(v26[0], v12);
          v15 = *(v12 + 8);
          *(v12 + 8) = 0;
          var1 = v14->var1;
          v14->var1 = v15;

          v17 = *(v12 + 9);
          *(v12 + 9) = 0;
          var2 = v14->var2;
          v14->var2 = v17;

          v19 = *(v12 + 10);
          *(v12 + 10) = 0;
          var3 = v14->var3;
          v14->var3 = v19;

          v21 = *(v12 + 11);
          *(v12 + 11) = 0;
          var4 = v14->var4;
          v14->var4 = v21;

          *&v14[1].var0.var0 = *(v12 + 6);
          v23 = *(v12 + 7);
          *&v14[1].var0.var3[16] = *(v12 + 16);
          *v14[1].var0.var3 = v23;
          *(v12 + 15) = 0;
          *(v12 + 16) = 0;
          *(v12 + 14) = 0;
          ++*(a1 + 8);
          if (*(v12 + 135) < 0)
          {
            operator delete(*(v12 + 14));
          }
        }

        if ((v12 + 16) != *v12)
        {
          free(*v12);
        }

        v12 = (v12 + 136);
        v11 -= 136;
      }

      while (v11);
    }

    if (v24.var0.var0 != v24.var0.var3)
    {
      free(v24.var0.var0);
    }

    if (v25.var0.var0 != v25.var0.var3)
    {
      free(v25.var0.var0);
    }

    llvm::deallocate_buffer(v4, (8 * v10));
  }

  llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>,MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>::initEmpty(a1);
}

void sub_1E08DA844(_Unwind_Exception *a1, MPSGraphModuleKey *a2, MPSGraphModuleKey *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v25 = *(v23 - 136);
  if (v25 != v22)
  {
    free(v25);
    MPSGraphModuleKey::~MPSGraphModuleKey(&a22);
    _Unwind_Resume(a1);
  }

  MPSGraphModuleKey::~MPSGraphModuleKey(&a22);
  _Unwind_Resume(a1);
}

uint64_t InMemoryModuleRef::load(InMemoryModuleRef *this)
{
  result = *(this + 4);
  if (!result)
  {
    if (BaseModuleRef::compileAndLoadANE(this) == 1)
    {
      return *(this + 4);
    }

    else
    {
      result = 2;
      *(this + 4) = 2;
    }
  }

  return result;
}

void llvm::SmallVectorTemplateBase<mlir::mpsx::EntryPoint,false>::grow(uint64_t a1, unint64_t a2)
{
  v18 = 0;
  v3 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 72, &v18);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = 0;
    v9 = &v6[72 * v7];
    do
    {
      v10 = v5 + v8;
      v11 = &v6[v8];
      v12 = *&v6[v8];
      *(v10 + 16) = *&v6[v8 + 16];
      *v10 = v12;
      *(v11 + 1) = 0;
      *(v11 + 2) = 0;
      *v11 = 0;
      *(v10 + 24) = v5 + v8 + 40;
      *(v5 + v8 + 32) = 0x400000000;
      if (*&v6[v8 + 32])
      {
        llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v5 + v8 + 24, v11 + 3);
      }

      v8 += 72;
    }

    while (v11 + 72 != v9);
    v13 = *(a1 + 8);
    v6 = *a1;
    if (v13)
    {
      v14 = &v6[72 * v13 - 32];
      v15 = -72 * v13;
      do
      {
        v16 = *(v14 - 16);
        if (v14 != v16)
        {
          free(v16);
        }

        if (*(v14 - 17) < 0)
        {
          operator delete(*(v14 - 40));
        }

        v14 -= 72;
        v15 += 72;
      }

      while (v15);
      v6 = *a1;
    }
  }

  v17 = v18;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 12) = v17;
}

void sub_1E08DAA54(void *a1)
{
  v4 = v1 + v2;
  v5 = *(v1 + v2 + 24);
  if ((v1 + v2 + 40) == v5)
  {
    if ((*(v4 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    free(v5);
    if ((*(v4 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      __cxa_begin_catch(a1);
      if (!v2)
      {
        goto LABEL_7;
      }

LABEL_8:
      v6 = (v1 + 40);
      do
      {
        v7 = *(v6 - 2);
        if (v6 != v7)
        {
          free(v7);
        }

        if (*(v6 - 17) < 0)
        {
          operator delete(*(v6 - 5));
        }

        v6 += 9;
        v2 -= 72;
      }

      while (v2);
LABEL_7:
      __cxa_rethrow();
    }
  }

  operator delete(*(v1 + v2));
  __cxa_begin_catch(a1);
  if (!v2)
  {
    goto LABEL_7;
  }

  goto LABEL_8;
}

void mlir::mpsx::EntryPoint::~EntryPoint(mlir::mpsx::EntryPoint *this)
{
  v2 = *(this + 3);
  if (v2 != this + 40)
  {
    free(v2);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t llvm::SmallVector<mlir::mpsx::EntryPoint,4u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 72 * v3 - 32;
    v5 = -72 * v3;
    do
    {
      v6 = *(v4 - 16);
      if (v4 != v6)
      {
        free(v6);
      }

      if (*(v4 - 17) < 0)
      {
        operator delete(*(v4 - 40));
      }

      v4 -= 72;
      v5 += 72;
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

BOOL _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZZ96__MPSGraphExecutable_specializedModuleWithDevice_shapedEntryPoints_compilationDescriptor_error__ENK4__22clEbPU15__autoreleasingP7NSErrorEUlNS1_9placement10RegionCallEE_SI_S2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESR_E4typeES4_OT1_EUlS4_E_EES2_lS4_(uint64_t a1, mlir::Operation *a2)
{
  result = 1;
  if (a2)
  {
    if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id)
    {
      v5[1] = v2;
      v5[2] = v3;
      v5[0] = a2;
      return mlir::placement::RegionCall::getRegionType(v5) != 1;
    }
  }

  return result;
}

uint64_t InMemoryModuleRef::InMemoryModuleRef(uint64_t a1, void *a2, uint64_t *a3, mlir::Block ***a4, char a5)
{
  v53[5] = *MEMORY[0x1E69E9840];
  v9 = a2;
  v11 = *a3;
  v10 = a3[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_1F5B53D78;
  objc_initWeak((a1 + 8), v9);
  *(a1 + 16) = 0;
  *(a1 + 24) = v11;
  *(a1 + 32) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a5;
  *(a1 + 88) = a1 + 104;
  *(a1 + 96) = 0x100000000;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  *a1 = &unk_1F5B53DB8;
  v12 = *(a1 + 24);
  if (v12 != mlir::Attribute::getContext((*a4 + 3)))
  {
    v13 = *a4;
    v15 = *(a1 + 24);
    v14 = *(a1 + 32);
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    llvm::SourceMgr::SourceMgr(&v38);
    memset(__p, 0, sizeof(__p));
    v30 = 0;
    v34 = 0;
    v35 = 1;
    v32 = 0;
    v33 = 0;
    v31 = 0;
    v29 = &unk_1F5B3FB30;
    v36 = __p;
    llvm::raw_ostream::SetBufferAndMode(&v29, 0, 0, 0);
    mlir::OpPrintingFlags::OpPrintingFlags(v28);
    mlir::OpPrintingFlags::elideLargeElementsAttrs(v28, 0x7FFFFFFFFFFFFFFFLL);
    mlir::OpPrintingFlags::enableDebugInfo(v28, 1, 0);
    mlir::Operation::print(v13, &v29, v28);
    v16 = *(v36 + 23);
    if (v16 >= 0)
    {
      v17 = v36;
    }

    else
    {
      v17 = *v36;
    }

    if (v16 >= 0)
    {
      v18 = *(v36 + 23);
    }

    else
    {
      v18 = v36[1];
    }

    llvm::MemoryBuffer::getMemBuffer(v17, v18, "", 0, &v27);
    v19 = v27;
    v27 = 0;
    v43 = 0;
    v44 = 0;
    v42 = v19;
    v20 = v39;
    if (v39 >= v40)
    {
      v21 = std::vector<llvm::SourceMgr::SrcBuffer>::__emplace_back_slow_path<llvm::SourceMgr::SrcBuffer>(&v38, &v42);
    }

    else
    {
      llvm::SourceMgr::SrcBuffer::SrcBuffer(v39, &v42);
      v21 = (v20 + 24);
    }

    v39 = v21;
    llvm::SourceMgr::SrcBuffer::~SrcBuffer(&v42);
    v41 = 0;
    v42 = v15;
    LOBYTE(v43) = 1;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = v50;
    v49 = 0x600000000;
    v50[6] = &v51;
    v50[7] = 0x600000000;
    memset(v52, 0, sizeof(v52));
    v53[0] = v53;
    v53[1] = v53;
    memset(&v53[2], 0, 24);
    if (mlir::parseSourceFile(&v38, v52, &v42, &v41, v24))
    {
      mlir::detail::constructContainerOpForParserIfNecessary<mlir::ModuleOp>(v52, v42, v41, &v26);
    }

    else
    {
      v26 = 0;
    }

    mlir::Block::~Block(v52);
    if (!v26)
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }

    mlir::ParserConfig::~ParserConfig(&v42);
  }

  v22 = *a4;
  *a4 = 0;
  v42 = v22;
  v23 = *(a1 + 40);
  if (v23)
  {
    mlir::Operation::erase(v23);
  }

  *(a1 + 40) = v22;
  *&v52[0] = a1;
  v42 = v52;
  mlir::detail::walk<mlir::ForwardIterator>(v22, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN13BaseModuleRef19getANERegionCallOpsEvEUlNS1_9placement10RegionCallEE_SD_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v42, 1);

  return a1;
}

void InMemoryModuleRef::~InMemoryModuleRef(InMemoryModuleRef *this)
{
  BaseModuleRef::~BaseModuleRef(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t InMemoryModuleRef::get(BaseModuleRef *this, void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = *(this + 4);
  if (v4)
  {
    if (v4 == 2)
    {
      return *(this + 5);
    }

    goto LABEL_6;
  }

  if (BaseModuleRef::compileAndLoadANE(this) != 1)
  {
    *(this + 4) = 2;
    return *(this + 5);
  }

  if (*(this + 4) != 2)
  {
LABEL_6:
    if (!a2 || (MPSGraphReportFailure(&cfstr_CorruptedModul.isa), v6 = objc_claimAutoreleasedReturnValue(), v7 = MEMORY[0x1E696ABC0], [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d:: %@ ", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Headers/Project/MPSGraphExecutable_Project.h", 289, v6, *MEMORY[0x1E696A578]], v8 = objc_claimAutoreleasedReturnValue(), v11[0] = v8, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v11, &v10, 1), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "errorWithDomain:code:userInfo:", @"MPSGraph", -1, v9), *a2 = objc_claimAutoreleasedReturnValue(), v9, v8, v6, *(this + 4) != 2))
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

  return *(this + 5);
}

uint64_t InMemoryModuleRef::getANEHelper(InMemoryModuleRef *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    if (v2 == 2)
    {
      return *(this + 9);
    }
  }

  else
  {
    if (BaseModuleRef::compileAndLoadANE(this) != 1)
    {
      *(this + 4) = 2;
      return *(this + 9);
    }

    if (*(this + 4) == 2)
    {
      return *(this + 9);
    }
  }

  if (!MTLReportFailureTypeEnabled())
  {
    return *(this + 9);
  }

  MTLReportFailure();
  return *(this + 9);
}

InMemoryModuleRef *InMemoryModuleRef::getANEPreCompiledBinary@<X0>(InMemoryModuleRef *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this;
  v4 = *(this + 4);
  if (v4)
  {
    if (v4 == 2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    this = BaseModuleRef::compileAndLoadANE(this);
    if (this != 1)
    {
      *(v2 + 4) = 2;
      goto LABEL_3;
    }

    if (*(v2 + 4) == 2)
    {
      goto LABEL_3;
    }
  }

  this = MTLReportFailureTypeEnabled();
  if (this)
  {
    this = MTLReportFailure();
  }

LABEL_3:
  *a2 = 0;
  *(a2 + 16) = 0;
  if (*(v2 + 64) == 1)
  {
    this = *(v2 + 6);
    v5 = *(v2 + 7);
    *a2 = this;
    *(a2 + 8) = v5;
    *(a2 + 16) = 1;
  }

  return this;
}

void MPSGraphModuleKey::MPSGraphModuleKey(MPSGraphModuleKey *this, const MPSGraphModuleKey *a2)
{
  var3 = this->var0.var3;
  this->var0.var0 = this->var0.var3;
  *&this->var0.var1 = 0x600000000;
  if (this != a2)
  {
    var1 = a2->var0.var1;
    if (var1)
    {
      if (var1 < 7)
      {
        v6 = a2->var0.var1;
      }

      else
      {
        this->var0.var1 = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(this, this->var0.var3, var1, 8);
        v6 = a2->var0.var1;
        if (!v6)
        {
LABEL_8:
          this->var0.var1 = var1;
          goto LABEL_9;
        }

        var3 = this->var0.var0;
      }

      memcpy(var3, a2->var0.var0, 8 * v6);
      goto LABEL_8;
    }
  }

LABEL_9:
  this->var1 = a2->var1;
  this->var2 = a2->var2;
  this->var3 = a2->var3;
  this->var4 = a2->var4;
}

void sub_1E08DB5C8(_Unwind_Exception *exception_object)
{
  if (*v1 != v2)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::detail::DenseSetImpl<MPSGraphModuleKey,llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKeyInfo>::DenseSetImpl(uint64_t a1, MPSGraphModuleKeyInfo *a2, uint64_t a3)
{
  if ((a3 - 2147483649) >= 0xFFFFFFFF80000000)
  {
    v7 = 4 * (1 << -__clz(a3 - 1));
    v8 = (v7 / 3 + 1) | ((v7 / 3 + 1) >> 1);
    v9 = v8 | (v8 >> 2) | ((v8 | (v8 >> 2)) >> 4);
    LODWORD(v9) = (((v9 | (v9 >> 8)) >> 16) | v9 | (v9 >> 8)) + 1;
    *(a1 + 16) = v9;
    *a1 = llvm::allocate_buffer(96 * v9, 8uLL);
    llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::initEmpty(a1);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    if (!a3)
    {
      return a1;
    }
  }

  v10 = 96 * a3;
  do
  {
    v12 = 0;
    if ((llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::LookupBucketFor<MPSGraphModuleKey>(*a1, *(a1 + 16), a2, &v12) & 1) == 0)
    {
      inserted = llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::InsertIntoBucketImpl<MPSGraphModuleKey>(a1, a2, v12);
      MPSGraphModuleKey::operator=(inserted, a2);
    }

    a2 = (a2 + 96);
    v10 -= 96;
  }

  while (v10);
  return a1;
}

uint64_t std::optional<MPSGraphModuleKey>::~optional(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {

    if (*a1 != a1 + 16)
    {
      free(*a1);
    }
  }

  return a1;
}

_DWORD ***_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZZ46__MPSGraphExecutable_checkCallablesForModule__ENK4__26clENS1_4func6FuncOpEEUlNS1_3mps6CallOpEE_SF_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESP_E4typeES3_OT1_EUlS3_E_EEvlS3_(_DWORD ***result, uint64_t a2)
{
  if (a2)
  {
    if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::CallOp,void>::id)
    {
      ++***result;
    }
  }

  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Diagnostic &>::CallImpl<ScopedDiagnosticHandler::ScopedDiagnosticHandler(mlir::MLIRContext *,BOOL)::{lambda(mlir::Diagnostic &)#1}>(llvm *a1, mlir::Diagnostic *a2)
{
  if (*a1 != 1)
  {
    return 1;
  }

  v11[3] = v2;
  v11[4] = v3;
  if (*(a2 + 2) != 1)
  {
    return 0;
  }

  v5 = llvm::errs(a1);
  v6 = v5;
  v7 = *(v5 + 4);
  if ((*(v5 + 3) - v7) > 8)
  {
    *(v7 + 8) = 32;
    *v7 = *"warning: ";
    *(v5 + 4) += 9;
  }

  else
  {
    llvm::raw_ostream::write(v5, "warning: ", 9uLL);
  }

  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
  {
LABEL_11:
    mlir::Diagnostic::print(a2, v6);
    v10 = *(v6 + 4);
    if (v10 < *(v6 + 3))
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v11[0] = *a2;
  mlir::Attribute::print(v11, v6, 0);
  v9 = *(v6 + 4);
  if (*(v6 + 3) - v9 <= 1uLL)
  {
    llvm::raw_ostream::write(v6, ": ", 2uLL);
    goto LABEL_11;
  }

  *v9 = 8250;
  *(v6 + 4) += 2;
  mlir::Diagnostic::print(a2, v6);
  v10 = *(v6 + 4);
  if (v10 < *(v6 + 3))
  {
LABEL_12:
    *(v6 + 4) = v10 + 1;
    *v10 = 10;
    if (*(v6 + 4) == *(v6 + 2))
    {
      return 1;
    }

    goto LABEL_16;
  }

LABEL_15:
  llvm::raw_ostream::write(v6, 10);
  if (*(v6 + 4) != *(v6 + 2))
  {
LABEL_16:
    llvm::raw_ostream::flush_nonempty(v6);
  }

  return 1;
}

llvm **llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>::~unique_function(llvm *a1)
{
  v1 = a1;
  v2 = *(a1 + 3);
  if (v2 >= 8)
  {
    if ((v2 & 4) != 0)
    {
      if ((v2 & 2) == 0)
      {
        a1 = *a1;
      }

      (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16))(a1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(*v1, v1[1]);
    }
  }

  return v1;
}

void mlir::mpsx::ANERegionFormationDescriptor::~ANERegionFormationDescriptor(mlir::mpsx::ANERegionFormationDescriptor *this)
{
  v2 = *(this + 23);
  if (v2)
  {
    v3 = *(this + 24);
    v4 = *(this + 23);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 23);
    }

    *(this + 24) = v2;
    operator delete(v4);
  }

  v6 = *(this + 21);
  if (v6 == (this + 144))
  {
    (*(*v6 + 32))(v6);
    if ((*(this + 71) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v6)
    {
      (*(*v6 + 40))(v6);
    }

    if ((*(this + 71) & 0x80000000) == 0)
    {
LABEL_13:
      if ((*(this + 39) & 0x80000000) == 0)
      {
        return;
      }

LABEL_17:
      operator delete(*(this + 2));
      return;
    }
  }

  operator delete(*(this + 6));
  if (*(this + 39) < 0)
  {
    goto LABEL_17;
  }
}

void ScopedDiagnosticHandler::~ScopedDiagnosticHandler(ScopedDiagnosticHandler *this)
{
  mlir::MLIRContext::printOpOnDiagnostic(*this, *(this + 8));
  DiagEngine = mlir::MLIRContext::getDiagEngine(*this);
  mlir::DiagnosticEngine::eraseHandler(DiagEngine, *(this + 2));
}

void EmitViewerSPI::EmitViewerSPI(EmitBase *a1, void *a2, void *a3, Operation *a4)
{
  v7 = a2;
  v8 = a3;
  v9.state = a4;
  EmitBase::EmitBase(a1, v7, v8, v9);
}

void sub_1E08DBC34(_Unwind_Exception *a1)
{
  std::unordered_set<mlir::Operation *>::~unordered_set[abi:ne200100](v4);
  std::unordered_map<std::string,MPSMLIROps>::~unordered_map[abi:ne200100]((v2 + 23));

  EmitBase::~EmitBase(v2);
  _Unwind_Resume(a1);
}

void EmitBase::EmitBase(EmitBase *this, MPSGraph *a2, MPSGraphExecutable *a3, ModuleOp a4)
{
  v4 = MEMORY[0x1EEE9AC00](this);
  v6 = v5;
  v8 = v7;
  v9 = v4;
  v55 = *MEMORY[0x1E69E9840];
  v11 = v10;
  *v9 = &unk_1F5B522B8;
  *(v9 + 8) = 0u;
  *(v9 + 24) = 0u;
  *(v9 + 40) = 1065353216;
  objc_initWeak((v9 + 48), v8);
  *(v9 + 56) = v6;
  objc_initWeak((v9 + 64), v11);
  *(v9 + 72) = 0u;
  *(v9 + 88) = 0u;
  *(v9 + 104) = 1065353216;
  v13 = 12;
  strcpy(&v12, "mps.absolute");
  v14 = 1;
  v15[23] = 19;
  strcpy(v15, "mps.absolute_square");
  v16 = 2;
  v17[23] = 8;
  strcpy(v17, "mps.acos");
  v18 = 3;
  v19[23] = 9;
  strcpy(v19, "mps.acosh");
  v21[23] = 7;
  v20 = 4;
  strcpy(v21, "mps.add");
  v22 = 5;
  v23[23] = 12;
  strcpy(v23, "memref.alloc");
  v25[23] = 7;
  v24 = 6;
  strcpy(v25, "mps.and");
  v26 = 7;
  v27[23] = 8;
  strcpy(v27, "mps.asin");
  v28 = 8;
  strcpy(v30, "\t\t");
  strcpy(v29, "mps.asinh");
  *&v30[3] = 0;
  v31[23] = 8;
  strcpy(v31, "mps.atan");
  v32 = 10;
  v33[23] = 9;
  strcpy(v33, "mps.atan2");
  v34 = 11;
  v35[23] = 9;
  strcpy(v35, "mps.atanh");
  v36 = 12;
  v37[23] = 19;
  strcpy(v37, "mps.assign_variable");
  v38 = 13;
  v39[23] = 13;
  strcpy(v39, "mps.band_part");
  v40 = 14;
  v41[23] = 18;
  strcpy(v41, "mps.batch_to_space");
  v42 = 15;
  v43[23] = 12;
  strcpy(v43, "mps.bias_add");
  v44 = 16;
  v45[23] = 15;
  strcpy(v45, "mps.bitwise_and");
  v46 = 17;
  v47[23] = 22;
  strcpy(v47, "mps.bitwise_left_shift");
  v48 = 18;
  v49[23] = 15;
  strcpy(v49, "mps.bitwise_not");
  v50 = 19;
  v51[23] = 14;
  strcpy(v51, "mps.bitwise_or");
  v52 = 20;
  v53[23] = 20;
  strcpy(v53, "mps.bitwise_popcount");
  v54 = 21;
  operator new();
}

void sub_1E08DECDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11)
{
  v15 = (v13 + 3383);
  v16 = -7488;
  v17 = (v13 + 3383);
  while (1)
  {
    v18 = *v17;
    v17 -= 32;
    if (v18 < 0)
    {
      operator delete(*(v15 - 23));
    }

    v15 = v17;
    v16 += 32;
    if (!v16)
    {
      std::unordered_map<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>::~unordered_map[abi:ne200100](v12);
      objc_destroyWeak((v11 + 64));
      objc_destroyWeak((v11 + 48));
      std::unordered_map<std::string,MPSMLIROps>::~unordered_map[abi:ne200100](a11);

      _Unwind_Resume(a1);
    }
  }
}

void EmitObjC::EmitObjC(EmitBase *a1, void *a2, void *a3, Operation *a4)
{
  v7 = a2;
  v8 = a3;
  v9.state = a4;
  EmitBase::EmitBase(a1, v7, v8, v9);
}

void sub_1E08DEF48(_Unwind_Exception *a1)
{
  std::unordered_map<void *,std::string>::~unordered_map[abi:ne200100](v4 + 256);
  v7 = *(v4 + 232);
  if (v7)
  {
    *(v4 + 240) = v7;
    operator delete(v7);
  }

  std::unordered_map<mlir::Operation *,std::unique_ptr<EmitterObjC::BaseOpHandler>>::~unordered_map[abi:ne200100](v5);
  EmitBase::~EmitBase(v4);

  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<void *,std::string>::~unordered_map[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

uint64_t std::unordered_map<mlir::Operation *,std::unique_ptr<EmitterObjC::BaseOpHandler>>::~unordered_map[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      v2[3] = 0;
      if (v4)
      {
        MEMORY[0x1E12E5B90](v4, 0xA1C409BE6959DLL);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void flatbuffers::DefaultAllocator::deallocate(flatbuffers::DefaultAllocator *this, unsigned __int8 *a2)
{
  if (a2)
  {
    JUMPOUT(0x1E12E5B60);
  }
}

char *flatbuffers::Allocator::reallocate_downward(flatbuffers::Allocator *this, unsigned __int8 *a2, uint64_t a3, uint64_t a4, size_t a5, size_t a6)
{
  v12 = (*(*this + 16))(this, a4);
  memcpy(&v12[a4 - a5], &a2[a3 - a5], a5);
  memcpy(v12, a2, a6);
  (*(*this + 24))(this, a2, a3);
  return v12;
}

uint64_t flatbuffers::FlatBufferBuilder::AddElement<int>(uint64_t this, uint64_t a2, int a3)
{
  v5 = this;
  if (!a3 && *(this + 80) != 1)
  {
    return this;
  }

  if (*(this + 72) <= 3uLL)
  {
    *(this + 72) = 4;
  }

  v7 = *(this + 48);
  v6 = *(this + 56);
  v8 = (v7 - (*(this + 32) + *(this + 40))) & 3;
  if (v7 - v6 < v8)
  {
    this = flatbuffers::vector_downward::reallocate(this, (v7 - (*(this + 32) + *(this + 40))) & 3);
    *(v5 + 48) -= v8;
    goto LABEL_8;
  }

  v9 = v7 - v8;
  *(this + 48) = v9;
  if (v8)
  {
LABEL_8:
    v10 = 0;
    do
    {
      *(*(v5 + 48) + v10++) = 0;
    }

    while (v8 != v10);
    v9 = *(v5 + 48);
    v6 = *(v5 + 56);
  }

  if ((v9 - v6) <= 3)
  {
    this = flatbuffers::vector_downward::reallocate(v5, 4uLL);
    v9 = *(v5 + 48);
    v6 = *(v5 + 56);
  }

  *(v9 - 4) = a3;
  v11 = v9 - 4;
  *(v5 + 48) = v11;
  v12 = *(v5 + 32) - v11 + *(v5 + 40);
  if ((v11 - v6) <= 7)
  {
    this = flatbuffers::vector_downward::reallocate(v5, 8uLL);
    v6 = *(v5 + 56);
  }

  *v6 = v12 | (a2 << 32);
  *(v5 + 56) += 8;
  ++*(v5 + 64);
  v13 = *(v5 + 68);
  if (v13 <= a2)
  {
    LOWORD(v13) = a2;
  }

  *(v5 + 68) = v13;
  return this;
}

uint64_t flatbuffers::vector_downward::reallocate(flatbuffers::vector_downward *this, unint64_t a2)
{
  v3 = *(this + 4);
  v4 = *(this + 5);
  v5 = v3 - *(this + 6) + v4;
  v6 = *(this + 7) - v4;
  if (v3)
  {
    v7 = v3 >> 1;
  }

  else
  {
    v7 = *(this + 2);
  }

  if (v7 <= a2)
  {
    v7 = a2;
  }

  v8 = (v3 + *(this + 3) + v7 - 1) & -*(this + 3);
  *(this + 4) = v8;
  v9 = *this;
  if (v4)
  {
    if (!v9)
    {
      v12 = &unk_1F5B53E10;
      operator new[]();
    }

    result = (*(*v9 + 32))(v9, v4, v3);
  }

  else
  {
    if (!v9)
    {
      v12 = &unk_1F5B53E10;
      operator new[]();
    }

    result = (*(*v9 + 16))(v9, v8);
  }

  v11 = result + *(this + 4) - v5;
  *(this + 5) = result;
  *(this + 6) = v11;
  *(this + 7) = result + v6;
  return result;
}

uint64_t flatbuffers::FlatBufferBuilder::EndTable(flatbuffers::FlatBufferBuilder *this, __int16 a2)
{
  if (*(this + 9) <= 3uLL)
  {
    *(this + 9) = 4;
  }

  v4 = *(this + 6);
  v5 = *(this + 7);
  v6 = (v4 - (*(this + 8) + *(this + 10))) & 3;
  if (v4 - v5 >= v6)
  {
    v7 = v4 - v6;
    *(this + 6) = v7;
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    flatbuffers::vector_downward::reallocate(this, (v4 - (*(this + 8) + *(this + 10))) & 3);
    *(this + 6) -= v6;
  }

  v8 = 0;
  do
  {
    *(*(this + 6) + v8++) = 0;
  }

  while (v6 != v8);
  v7 = *(this + 6);
  v5 = *(this + 7);
LABEL_9:
  if ((v7 - v5) <= 3)
  {
    flatbuffers::vector_downward::reallocate(this, 4uLL);
    v7 = *(this + 6);
    v5 = *(this + 7);
  }

  *(v7 - 4) = 0;
  v9 = v7 - 4;
  *(this + 6) = v9;
  v10 = *(this + 4) - v9 + *(this + 5);
  if ((*(this + 34) + 2) <= 4u)
  {
    v11 = 4;
  }

  else
  {
    v11 = (*(this + 34) + 2);
  }

  *(this + 34) = v11;
  if (v9 - v5 < v11)
  {
    flatbuffers::vector_downward::reallocate(this, v11);
    v9 = *(this + 6);
  }

  *(this + 6) = v9 - v11;
  bzero((v9 - v11), v11);
  v12 = v10 - a2;
  v14 = *(this + 6);
  v13 = *(this + 7);
  v14[1] = v12;
  *v14 = *(this + 34);
  v15 = *(this + 16);
  v16 = (v13 - 8 * v15);
  if (v15)
  {
    v17 = (v13 - 8 * v15);
    do
    {
      *(v14 + v17[2]) = v10 - *v17;
      v17 += 4;
    }

    while (v17 < v13);
  }

  *(this + 7) = v16;
  *(this + 16) = 0;
  *(this + 34) = 0;
  v19 = *(this + 4);
  v18 = *(this + 5);
  LODWORD(v20) = v19 - v14 + v18;
  if (*(this + 81) == 1 && v18 < v16)
  {
    v22 = *v14;
    v23 = v18 + v19;
    v24 = *(this + 5);
    do
    {
      v20 = *v24;
      if (v22 == *(v23 - v20) && !memcmp((v23 - v20), v14, v22))
      {
        v14 = (v14 + (v19 - v14 + v18 - v10));
        *(this + 6) = v14;
        goto LABEL_29;
      }

      ++v24;
    }

    while (v24 < v16);
    LODWORD(v20) = v19 - v14 + v18;
  }

LABEL_29:
  if (v20 == v19 + v18 - v14)
  {
    if ((v14 - v16) <= 3)
    {
      flatbuffers::vector_downward::reallocate(this, 4uLL);
      v16 = *(this + 7);
      v19 = *(this + 4);
      v18 = *(this + 5);
    }

    *v16 = v20;
    *(this + 7) = v16 + 4;
  }

  *(v18 + v19 - v10) = v20 - v10;
  *(this + 70) = 0;
  return v10;
}

uint64_t flatbuffers::FlatBufferBuilder::CreateString(flatbuffers::FlatBufferBuilder *this, const char *__src, unint64_t a3)
{
  if (*(this + 9) <= 3uLL)
  {
    *(this + 9) = 4;
  }

  v6 = *(this + 6);
  v7 = *(this + 7);
  v8 = (~a3 + v6 - (*(this + 8) + *(this + 10))) & 3;
  if (v6 - v7 >= v8)
  {
    v9 = v6 - v8;
    *(this + 6) = v9;
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    flatbuffers::vector_downward::reallocate(this, (~a3 + v6 - (*(this + 8) + *(this + 10))) & 3);
    *(this + 6) -= v8;
  }

  v10 = 0;
  do
  {
    *(*(this + 6) + v10++) = 0;
  }

  while (v8 != v10);
  v9 = *(this + 6);
  v7 = *(this + 7);
LABEL_9:
  if (v9 == v7)
  {
    flatbuffers::vector_downward::reallocate(this, 1uLL);
    v9 = *(this + 6);
  }

  *(this + 6) = v9 - 1;
  *(v9 - 1) = 0;
  if (a3)
  {
    v11 = *(this + 6);
    if (v11 - *(this + 7) < a3)
    {
      flatbuffers::vector_downward::reallocate(this, a3);
      v11 = *(this + 6);
    }

    *(this + 6) = v11 - a3;
    memcpy((v11 - a3), __src, a3);
  }

  if (*(this + 9) <= 3uLL)
  {
    *(this + 9) = 4;
  }

  v12 = *(this + 6);
  v13 = *(this + 7);
  v14 = (v12 - (*(this + 8) + *(this + 10))) & 3;
  if (v12 - v13 >= v14)
  {
    v15 = v12 - v14;
    *(this + 6) = v15;
    if (!v14)
    {
      goto LABEL_23;
    }
  }

  else
  {
    flatbuffers::vector_downward::reallocate(this, (v12 - (*(this + 8) + *(this + 10))) & 3);
    *(this + 6) -= v14;
  }

  v16 = 0;
  do
  {
    *(*(this + 6) + v16++) = 0;
  }

  while (v14 != v16);
  v15 = *(this + 6);
  v13 = *(this + 7);
LABEL_23:
  if ((v15 - v13) <= 3)
  {
    flatbuffers::vector_downward::reallocate(this, 4uLL);
    v15 = *(this + 6);
  }

  *(v15 - 4) = a3;
  v17 = v15 - 4;
  *(this + 6) = v17;
  return (*(this + 8) - v17 + *(this + 10));
}

uint64_t std::pair<MPSGraphExecutableSpecializedModule const*,std::unique_ptr<RuntimeCacheEntry>>::~pair(uint64_t result)
{
  v1 = *(result + 8);
  *(result + 8) = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 120);
    *(v1 + 120) = 0;
    if (v3)
    {
      (*(*v3 + 64))(v3);
    }

    std::condition_variable::~condition_variable((v1 + 64));
    std::mutex::~mutex(v1);
    MEMORY[0x1E12E5B90]();
    return v2;
  }

  return result;
}

void MPSGraphSpecializationCache::~MPSGraphSpecializationCache(MPSGraphSpecializationCache *this)
{
  if (!this->_failedToLoadModules.TheMap.NumBuckets)
  {
    llvm::deallocate_buffer(this->_failedToLoadModules.TheMap.Buckets, 0);
  }

  MPSGraphModuleKeysSetInfo::getEmptyKey(&v23);
  MPSGraphModuleKeysSetInfo::getTombstoneKey(&v20);
  if (!this->_failedToLoadModules.TheMap.NumBuckets)
  {
    llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::destroyAll(&v20);
    llvm::deallocate_buffer(v20, (96 * v22));
  }

  Buckets = this->_failedToLoadModules.TheMap.Buckets;
  v3 = Buckets[2];
  if (v3 == v24)
  {
    v4 = *Buckets;
    v5 = Buckets[4];
    v6 = (*Buckets + 96 * v5);
    if (v3)
    {
      v28 = *Buckets;
      v29 = v6;
      llvm::DenseMapIterator<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>,true>::AdvancePastEmptyBuckets(&v28);
      v6 = v28;
      v7 = *Buckets;
      v8 = Buckets[4];
      v27 = v29;
      v9 = (v7 + 96 * v8);
      if (v9 != v28)
      {
        goto LABEL_8;
      }

      goto LABEL_25;
    }

    v27 = *Buckets + 96 * v5;
    v9 = (v4 + 96 * v5);
    if (v9 == v6)
    {
      goto LABEL_25;
    }

LABEL_8:
    while (1)
    {
      v10 = llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::doFind<MPSGraphModuleKey>(v23, v25, v6);
      if (!v10 || v10 == (v23 + 96 * v25))
      {
        break;
      }

      v26 = (v6 + 96);
      llvm::DenseMapIterator<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>,true>::AdvancePastEmptyBuckets(&v26);
      v6 = v26;
      if (v26 == v9)
      {
        goto LABEL_25;
      }
    }

    v3 = Buckets[2];
  }

  if (v3 != v21)
  {
    goto LABEL_25;
  }

  v12 = *Buckets;
  v13 = Buckets[4];
  v14 = (*Buckets + 96 * v13);
  if (v3)
  {
    v28 = *Buckets;
    v29 = v14;
    llvm::DenseMapIterator<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>,true>::AdvancePastEmptyBuckets(&v28);
    v14 = v28;
    v15 = *Buckets;
    v16 = Buckets[4];
    v27 = v29;
    v17 = (v15 + 96 * v16);
    if (v17 == v28)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v27 = *Buckets + 96 * v13;
    v17 = (v12 + 96 * v13);
    if (v17 == v14)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v18 = llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::doFind<MPSGraphModuleKey>(v20, v22, v14);
    if (v18)
    {
      v19 = v18 == (v20 + 96 * v22);
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      break;
    }

    v26 = (v14 + 96);
    llvm::DenseMapIterator<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>,true>::AdvancePastEmptyBuckets(&v26);
    v14 = v26;
  }

  while (v26 != v17);
LABEL_25:
  llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::destroyAll(Buckets);
  llvm::deallocate_buffer(*Buckets, (96 * Buckets[4]));
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

    std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
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

void sub_1E08DFF20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_1E08DFF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

uint64_t std::function<void ()(mlir::OpPassManager &)>::~function(uint64_t a1)
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

uint64_t std::function<__CFDictionary const* ()(__CFDictionary const*)>::~function(uint64_t a1)
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

uint64_t flatbuffers::FlatBufferBuilder::StartVector(uint64_t this)
{
  v1 = this;
  *(this + 70) = 1;
  if (*(this + 72) <= 3uLL)
  {
    *(this + 72) = 4;
  }

  v2 = *(this + 48);
  v3 = (v2 - (*(this + 32) + *(this + 40))) & 3;
  if (v2 - *(this + 56) >= v3)
  {
    *(this + 48) = v2 - v3;
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    this = flatbuffers::vector_downward::reallocate(this, (v2 - (*(this + 32) + *(this + 40))) & 3);
    *(v1 + 48) -= v3;
  }

  v4 = 0;
  do
  {
    *(*(v1 + 48) + v4++) = 0;
  }

  while (v3 != v4);
  if (*(v1 + 72) <= 3uLL)
  {
    *(v1 + 72) = 4;
  }

LABEL_10:
  v5 = *(v1 + 48);
  v6 = (v5 - (*(v1 + 32) + *(v1 + 40))) & 3;
  if (v5 - *(v1 + 56) >= v6)
  {
    *(v1 + 48) = v5 - v6;
    if (!v6)
    {
      return this;
    }
  }

  else
  {
    this = flatbuffers::vector_downward::reallocate(v1, (v5 - (*(v1 + 32) + *(v1 + 40))) & 3);
    *(v1 + 48) -= v6;
  }

  v7 = 0;
  do
  {
    *(*(v1 + 48) + v7++) = 0;
  }

  while (v6 != v7);
  return this;
}

void llvm::DenseMapIterator<MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>,true>::AdvancePastEmptyBuckets(MPSGraphModuleKeyInfo **a1)
{
  v8[6] = *MEMORY[0x1E69E9840];
  v5.var0.var0 = v5.var0.var3;
  *&v5.var0.var1 = 0x600000001;
  *v5.var0.var3 = -2;
  MPSGraphModuleKey::MPSGraphModuleKey(&v6, &v5, 0, 0, 0, 0);
  if (v5.var0.var0 != v5.var0.var3)
  {
    free(v5.var0.var0);
  }

  v7[0] = v8;
  v7[1] = 0x600000001;
  v8[0] = -3;
  MPSGraphModuleKey::MPSGraphModuleKey(&v5, v7, 0, 0, 0, 0);
  if (v7[0] != v8)
  {
    free(v7[0]);
  }

  v3 = *a1;
  if (*a1 != a1[1])
  {
    do
    {
      if ((MPSGraphModuleKeyInfo::isEqual(v3, &v6, v2) & 1) == 0 && !MPSGraphModuleKeyInfo::isEqual(*a1, &v5, v2))
      {
        break;
      }

      v4 = a1[1];
      v3 = (*a1 + 120);
      *a1 = v3;
    }

    while (v3 != v4);
  }

  if (v5.var0.var0 != v5.var0.var3)
  {
    free(v5.var0.var0);
  }

  if (v6.var0.var0 != v6.var0.var3)
  {
    free(v6.var0.var0);
  }
}

void sub_1E08E037C(_Unwind_Exception *a1, MPSGraphModuleKey *a2, MPSGraphModuleKey *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v25 = *(v23 - 104);
  if (v25 != v22)
  {
    free(v25);
    MPSGraphModuleKey::~MPSGraphModuleKey(&a22);
    _Unwind_Resume(a1);
  }

  MPSGraphModuleKey::~MPSGraphModuleKey(&a22);
  _Unwind_Resume(a1);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::LookupBucketFor<MPSGraphModuleKey>(uint64_t a1, uint64_t a2, MPSGraphModuleKeyInfo *a3, const MPSGraphModuleKey **a4)
{
  isEqual = a2;
  v34 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v25 = v27;
    v26 = 0x600000001;
    v27[0] = -2;
    MPSGraphModuleKey::MPSGraphModuleKey(&v24, &v25, 0, 0, 0, 0);
    if (v25 != v27)
    {
      free(v25);
    }

    v25 = v27;
    v26 = 0x600000001;
    v27[0] = -3;
    MPSGraphModuleKey::MPSGraphModuleKey(&v23, &v25, 0, 0, 0, 0);
    if (v25 != v27)
    {
      free(v25);
    }

    v8 = llvm::hashing::detail::hash_combine_range_impl<char const>(*a3, *a3 + 8 * *(a3 + 2));
    v9 = [*(a3 + 8) hash];
    v10 = [*(a3 + 9) hash];
    v11 = [*(a3 + 10) hash];
    v12 = [*(a3 + 11) hash];
    v32 = 0u;
    v31 = 0u;
    v30 = 0u;
    v29 = 0u;
    v28 = 0u;
    v25 = v8;
    v26 = v9;
    v27[0] = v10;
    v27[1] = v11;
    v33 = 0xFF51AFD7ED558CCDLL;
    v27[2] = v12;
    v13 = 0;
    v14 = isEqual - 1;
    v16 = (isEqual - 1) & llvm::hashing::detail::hash_short(&v25, 0x28uLL, 0xFF51AFD7ED558CCDLL);
    for (i = 1; ; ++i)
    {
      v18 = (a1 + 96 * v16);
      isEqual = MPSGraphModuleKeyInfo::isEqual(a3, v18, v15);
      if (isEqual)
      {
        break;
      }

      if (MPSGraphModuleKeyInfo::isEqual((a1 + 96 * v16), &v24, v19))
      {
        if (v13)
        {
          v18 = v13;
        }

        break;
      }

      if ((MPSGraphModuleKeyInfo::isEqual((a1 + 96 * v16), &v23, v20) & (v13 == 0)) != 0)
      {
        v13 = (a1 + 96 * v16);
      }

      v21 = v16 + i;
      v16 = v21 & v14;
    }

    *a4 = v18;

    if (v23.var0.var0 != v23.var0.var3)
    {
      free(v23.var0.var0);
    }

    if (v24.var0.var0 != v24.var0.var3)
    {
      free(v24.var0.var0);
    }
  }

  else
  {
    *a4 = 0;
  }

  return isEqual;
}

void sub_1E08E066C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, MPSGraphModuleKey *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33)
{
  if (a33 != v33)
  {
    free(a33);
    MPSGraphModuleKey::~MPSGraphModuleKey(&a21);
    _Unwind_Resume(a1);
  }

  MPSGraphModuleKey::~MPSGraphModuleKey(&a21);
  _Unwind_Resume(a1);
}

MPSGraphModuleKeyInfo *llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::InsertIntoBucketImpl<MPSGraphModuleKey>(uint64_t a1, MPSGraphModuleKeyInfo *a2, MPSGraphModuleKeyInfo *a3)
{
  v13[6] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::LookupBucketFor<MPSGraphModuleKey>(*a1, *(a1 + 16), a2, &v10);
  v5 = *(a1 + 8);
LABEL_3:
  *(a1 + 8) = v5 + 1;
  v12[0] = v13;
  v12[1] = 0x600000001;
  v13[0] = -2;
  MPSGraphModuleKey::MPSGraphModuleKey(&v11, v12, 0, 0, 0, 0);
  if (v12[0] != v13)
  {
    free(v12[0]);
  }

  v8 = v10;
  if ((MPSGraphModuleKeyInfo::isEqual(v10, &v11, v7) & 1) == 0)
  {
    --*(a1 + 12);
  }

  if (v11.var0.var0 != v11.var0.var3)
  {
    free(v11.var0.var0);
  }

  return v8;
}

void sub_1E08E0850(_Unwind_Exception *exception_object)
{
  v4 = *(v2 - 88);
  if (v4 != v1)
  {
    free(v4);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::grow(uint64_t a1, int a2)
{
  v26[6] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  *a1 = llvm::allocate_buffer(96 * v8, 8uLL);
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::initEmpty(a1);
    v23.var0.var0 = v23.var0.var3;
    *&v23.var0.var1 = 0x600000001;
    *v23.var0.var3 = -2;
    MPSGraphModuleKey::MPSGraphModuleKey(&v24, &v23, 0, 0, 0, 0);
    if (v23.var0.var0 != v23.var0.var3)
    {
      free(v23.var0.var0);
    }

    v25[0] = v26;
    v25[1] = 0x600000001;
    v26[0] = -3;
    MPSGraphModuleKey::MPSGraphModuleKey(&v23, v25, 0, 0, 0, 0);
    if (v25[0] != v26)
    {
      free(v25[0]);
    }

    v10 = 3 * v3;
    if (v3)
    {
      v11 = 96 * v3;
      v12 = v4;
      do
      {
        if ((MPSGraphModuleKeyInfo::isEqual(v12, &v24, v9) & 1) == 0 && (MPSGraphModuleKeyInfo::isEqual(v12, &v23, v13) & 1) == 0)
        {
          v25[0] = 0;
          llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::LookupBucketFor<MPSGraphModuleKey>(*a1, *(a1 + 16), v12, v25);
          v14 = v25[0];
          llvm::SmallVectorImpl<unsigned long long>::operator=(v25[0], v12);
          v15 = v12[8];
          v12[8] = 0;
          var1 = v14->var1;
          v14->var1 = v15;

          v17 = v12[9];
          v12[9] = 0;
          var2 = v14->var2;
          v14->var2 = v17;

          v19 = v12[10];
          v12[10] = 0;
          var3 = v14->var3;
          v14->var3 = v19;

          v21 = v12[11];
          v12[11] = 0;
          var4 = v14->var4;
          v14->var4 = v21;

          ++*(a1 + 8);
        }

        if (v12 + 2 != *v12)
        {
          free(*v12);
        }

        v12 += 12;
        v11 -= 96;
      }

      while (v11);
    }

    if (v23.var0.var0 != v23.var0.var3)
    {
      free(v23.var0.var0);
    }

    if (v24.var0.var0 != v24.var0.var3)
    {
      free(v24.var0.var0);
    }

    llvm::deallocate_buffer(v4, (32 * v10));
  }

  llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::initEmpty(a1);
}

void sub_1E08E0B9C(_Unwind_Exception *a1, MPSGraphModuleKey *a2, MPSGraphModuleKey *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v25 = *(v23 - 136);
  if (v25 != v22)
  {
    free(v25);
    MPSGraphModuleKey::~MPSGraphModuleKey(&a22);
    _Unwind_Resume(a1);
  }

  MPSGraphModuleKey::~MPSGraphModuleKey(&a22);
  _Unwind_Resume(a1);
}

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZ37__MPSGraphExecutable_commonPostInit__E4__11NS1_3mps6CallOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t *a1, uint64_t a2)
{
  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::CallOp,void>::id)
  {
    v2 = *a1;
    v21 = a2;
    v3 = MEMORY[0x1E696AEC0];
    SymbolName = mlir::mps::CallOp::getSymbolName(&v21);
    if (SymbolName)
    {
      v6 = v5;
      if (v5 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v5 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v24) = v5;
      if (v5)
      {
        memmove(&__dst, SymbolName, v5);
      }

      *(&__dst + v6) = 0;
      if (v24 >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }
    }

    else
    {
      __dst = 0;
      v23 = 0;
      p_dst = &__dst;
      v24 = 0;
    }

    v8 = [v3 stringWithUTF8String:p_dst];
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__dst);
    }

    v9 = [*(**v2 + 368) callables];
    v10 = [v9 objectForKeyedSubscript:v8];

    if (v10)
    {
      mlir::mps::MaterializeSparseTensorOp::getStorageType(&v21);
      if (mlir::mps::MaterializeSparseTensorOp::getStorageType(&v21))
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }

      [**(v2 + 8) addObject:v8];
      goto LABEL_29;
    }

    v11 = **(v2 + 16);
    v12 = v8;
    v13 = [v12 UTF8String];
    v14 = v13;
    if (v13)
    {
      v15 = strlen(v13);
    }

    else
    {
      v15 = 0;
    }

    Context = mlir::Attribute::getContext((v11 + 6));
    v25 = 261;
    __dst = v14;
    v23 = v15;
    v17 = mlir::StringAttr::get(Context, &__dst);
    v18 = mlir::SymbolTable::lookupSymbolIn(v11, v17);
    if (v18)
    {
      v19 = *(*(v18 + 6) + 16);

      if (v19 == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
      {
LABEL_28:
        [**(v2 + 24) addObject:{v12, v20}];
LABEL_29:

        return;
      }
    }

    else
    {
    }

    if (MTLReportFailureTypeEnabled())
    {
      v20 = v12;
      MTLReportFailure();
    }

    goto LABEL_28;
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>,MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>::LookupBucketFor<MPSGraphModuleKey>(uint64_t a1, uint64_t a2, MPSGraphModuleKeyInfo *a3, const MPSGraphModuleKey **a4)
{
  isEqual = a2;
  v34 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v25 = v27;
    v26 = 0x600000001;
    v27[0] = -2;
    MPSGraphModuleKey::MPSGraphModuleKey(&v24, &v25, 0, 0, 0, 0);
    if (v25 != v27)
    {
      free(v25);
    }

    v25 = v27;
    v26 = 0x600000001;
    v27[0] = -3;
    MPSGraphModuleKey::MPSGraphModuleKey(&v23, &v25, 0, 0, 0, 0);
    if (v25 != v27)
    {
      free(v25);
    }

    v8 = llvm::hashing::detail::hash_combine_range_impl<char const>(*a3, *a3 + 8 * *(a3 + 2));
    v9 = [*(a3 + 8) hash];
    v10 = [*(a3 + 9) hash];
    v11 = [*(a3 + 10) hash];
    v12 = [*(a3 + 11) hash];
    v32 = 0u;
    v31 = 0u;
    v30 = 0u;
    v29 = 0u;
    v28 = 0u;
    v25 = v8;
    v26 = v9;
    v27[0] = v10;
    v27[1] = v11;
    v33 = 0xFF51AFD7ED558CCDLL;
    v27[2] = v12;
    v13 = 0;
    v14 = isEqual - 1;
    v16 = (isEqual - 1) & llvm::hashing::detail::hash_short(&v25, 0x28uLL, 0xFF51AFD7ED558CCDLL);
    for (i = 1; ; ++i)
    {
      v18 = (a1 + 120 * v16);
      isEqual = MPSGraphModuleKeyInfo::isEqual(a3, v18, v15);
      if (isEqual)
      {
        break;
      }

      if (MPSGraphModuleKeyInfo::isEqual((a1 + 120 * v16), &v24, v19))
      {
        if (v13)
        {
          v18 = v13;
        }

        break;
      }

      if ((MPSGraphModuleKeyInfo::isEqual((a1 + 120 * v16), &v23, v20) & (v13 == 0)) != 0)
      {
        v13 = (a1 + 120 * v16);
      }

      v21 = v16 + i;
      v16 = v21 & v14;
    }

    *a4 = v18;

    if (v23.var0.var0 != v23.var0.var3)
    {
      free(v23.var0.var0);
    }

    if (v24.var0.var0 != v24.var0.var3)
    {
      free(v24.var0.var0);
    }
  }

  else
  {
    *a4 = 0;
  }

  return isEqual;
}

void sub_1E08E1164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, MPSGraphModuleKey *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33)
{
  if (a33 != v33)
  {
    free(a33);
    MPSGraphModuleKey::~MPSGraphModuleKey(&a21);
    _Unwind_Resume(a1);
  }

  MPSGraphModuleKey::~MPSGraphModuleKey(&a21);
  _Unwind_Resume(a1);
}

MPSGraphModuleKeyInfo *llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>,MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>::InsertIntoBucketImpl<MPSGraphModuleKey>(uint64_t a1, MPSGraphModuleKeyInfo *a2, MPSGraphModuleKeyInfo *a3)
{
  v13[6] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>,MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>,MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>::LookupBucketFor<MPSGraphModuleKey>(*a1, *(a1 + 16), a2, &v10);
  v5 = *(a1 + 8);
LABEL_3:
  *(a1 + 8) = v5 + 1;
  v12[0] = v13;
  v12[1] = 0x600000001;
  v13[0] = -2;
  MPSGraphModuleKey::MPSGraphModuleKey(&v11, v12, 0, 0, 0, 0);
  if (v12[0] != v13)
  {
    free(v12[0]);
  }

  v8 = v10;
  if ((MPSGraphModuleKeyInfo::isEqual(v10, &v11, v7) & 1) == 0)
  {
    --*(a1 + 12);
  }

  if (v11.var0.var0 != v11.var0.var3)
  {
    free(v11.var0.var0);
  }

  return v8;
}

void sub_1E08E1348(_Unwind_Exception *exception_object)
{
  v4 = *(v2 - 88);
  if (v4 != v1)
  {
    free(v4);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>,MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>::grow(uint64_t a1, int a2)
{
  v26[6] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  *a1 = llvm::allocate_buffer(120 * v8, 8uLL);
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>,MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>::initEmpty(a1);
    v23.var0.var0 = v23.var0.var3;
    *&v23.var0.var1 = 0x600000001;
    *v23.var0.var3 = -2;
    MPSGraphModuleKey::MPSGraphModuleKey(&v24, &v23, 0, 0, 0, 0);
    if (v23.var0.var0 != v23.var0.var3)
    {
      free(v23.var0.var0);
    }

    v25[0] = v26;
    v25[1] = 0x600000001;
    v26[0] = -3;
    MPSGraphModuleKey::MPSGraphModuleKey(&v23, v25, 0, 0, 0, 0);
    if (v25[0] != v26)
    {
      free(v25[0]);
    }

    if (v3)
    {
      v10 = 120 * v3;
      v11 = v4;
      do
      {
        if ((MPSGraphModuleKeyInfo::isEqual(v11, &v24, v9) & 1) == 0 && (MPSGraphModuleKeyInfo::isEqual(v11, &v23, v12) & 1) == 0)
        {
          v25[0] = 0;
          llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>,MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>::LookupBucketFor<MPSGraphModuleKey>(*a1, *(a1 + 16), v11, v25);
          v13 = v25[0];
          llvm::SmallVectorImpl<unsigned long long>::operator=(v25[0], v11);
          v14 = *(v11 + 8);
          *(v11 + 8) = 0;
          var1 = v13->var1;
          v13->var1 = v14;

          v16 = *(v11 + 9);
          *(v11 + 9) = 0;
          var2 = v13->var2;
          v13->var2 = v16;

          v18 = *(v11 + 10);
          *(v11 + 10) = 0;
          var3 = v13->var3;
          v13->var3 = v18;

          v20 = *(v11 + 11);
          *(v11 + 11) = 0;
          var4 = v13->var4;
          v13->var4 = v20;

          v22 = *(v11 + 6);
          *v13[1].var0.var3 = *(v11 + 14);
          *&v13[1].var0.var0 = v22;
          *(v11 + 13) = 0;
          *(v11 + 14) = 0;
          *(v11 + 12) = 0;
          ++*(a1 + 8);
          if (*(v11 + 119) < 0)
          {
            operator delete(*(v11 + 12));
          }
        }

        if ((v11 + 16) != *v11)
        {
          free(*v11);
        }

        v11 = (v11 + 120);
        v10 -= 120;
      }

      while (v10);
    }

    if (v23.var0.var0 != v23.var0.var3)
    {
      free(v23.var0.var0);
    }

    if (v24.var0.var0 != v24.var0.var3)
    {
      free(v24.var0.var0);
    }

    llvm::deallocate_buffer(v4, (120 * v3));
  }

  llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>,MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>::initEmpty(a1);
}

void sub_1E08E16BC(_Unwind_Exception *a1, MPSGraphModuleKey *a2, MPSGraphModuleKey *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v25 = *(v23 - 136);
  if (v25 != v22)
  {
    free(v25);
    MPSGraphModuleKey::~MPSGraphModuleKey(&a22);
    _Unwind_Resume(a1);
  }

  MPSGraphModuleKey::~MPSGraphModuleKey(&a22);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<MIL::MILContext  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12E5B90);
}

uint64_t std::__shared_ptr_pointer<MIL::MILContext  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::MILContext  *>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E09AC0F8)
  {
    if (((v2 & 0x80000001E09AC0F8 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E09AC0F8))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E09AC0F8 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::__split_buffer<MPSGraphModuleKey>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;

    v4 = *(i - 96);
    if (v4 != (i - 80))
    {
      free(v4);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MPSGraphModuleKey>,MPSGraphModuleKey*>(int a1, MPSGraphModuleKey *a2, MPSGraphModuleKey *a3, MPSGraphModuleKey *this)
{
  v7 = this;
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      MPSGraphModuleKey::MPSGraphModuleKey(this, v6++);
      this = ++v7;
    }

    while (v6 != a3);
    do
    {

      if (v5->var0.var3 != v5->var0.var0)
      {
        free(v5->var0.var0);
      }

      ++v5;
    }

    while (v5 != a3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MPSGraphModuleKey>,MPSGraphModuleKey*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {

      v6 = *(v3 - 96);
      v3 -= 96;
      v5 = v6;
      if ((v3 + 16) != v6)
      {
        free(v5);
      }
    }
  }

  return a1;
}

void *std::unique_ptr<LazyCopyFile>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;

    std::mutex::~mutex((v1 + 8));
    MEMORY[0x1E12E5B90](v1, 0x1080C40B752CBF6);
    return v2;
  }

  return result;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>>,llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t result)
{
  if ((*(result + 24) & 1) == 0)
  {
    v1 = **(result + 16);
    if (v1 != **(result + 8))
    {
      v2 = v1 - 24;
      llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::destroyAll(v2);
      llvm::deallocate_buffer(*v2, (96 * *(v2 + 16)));
    }
  }

  return result;
}

uint64_t std::__split_buffer<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 != *(a1 + 8))
  {
    *(a1 + 16) = v2 - 24;
    llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::destroyAll(v2 - 24);
    llvm::deallocate_buffer(*(v2 - 24), (96 * *(v2 - 8)));
  }

  v3 = *a1;
  if (*a1)
  {
    operator delete(v3);
  }

  return a1;
}

uint64_t ***_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZ99__MPSGraphExecutable_executablesWithMLIRSourceForMultipleModules_executableDescriptor_regionNames__E4__13NS1_4mpsx5GPUOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t ***result, mlir::Operation *a2)
{
  v93 = *MEMORY[0x1E69E9840];
  if (a2 && *(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::GPUOp,void>::id)
  {
    v2 = *result;
    v89 = a2;
    v4 = mlir::OpBuilder::create<mlir::ModuleOp>(**v2, *(*v2[1] + 24));
    v82 = 0;
    v81[0] = 0;
    v81[1] = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88 = 0;
    v5 = *v2[2];
    v6 = MEMORY[0x1E696AEC0];
    SymbolName = mlir::SymbolTable::getSymbolName(a2, v7);
    v8 = [v6 stringWithUTF8String:mlir::OpaqueAttr::getAttrData(&SymbolName)];
    [v5 addObject:v8];

    SymbolName = mlir::mpsx::CPUOp::getFunctionType(&v89);
    Inputs = mlir::FunctionType::getInputs(&SymbolName);
    v11 = v10;
    SymbolName = mlir::mpsx::CPUOp::getFunctionType(&v89);
    Results = mlir::FunctionType::getResults(&SymbolName);
    v14 = v12;
    v78 = v4;
    for (i = v2; v11; --v11)
    {
      v16 = *Inputs++;
      v15 = v16;
      v17 = *v16;
      if (*(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
      {
        v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v17 + 8);
        SymbolName = v15;
        v92 = v18;
        isSplat = mlir::ElementsAttr::isSplat(&SymbolName);
        if (mlir::CallOpInterface::getArgOperands(&SymbolName))
        {
          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&SymbolName);
          mlir::RankedTensorType::get(ArgAttrsAttr, v21, isSplat, 0);
        }

        else
        {
          mlir::UnrankedTensorType::get(isSplat);
        }

        operator new();
      }
    }

    if (v12)
    {
      do
      {
        v23 = *Results++;
        v22 = v23;
        v24 = *v23;
        if (*(*v23 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
        {
          v25 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v24 + 8);
          SymbolName = v22;
          v92 = v25;
          v26 = mlir::ElementsAttr::isSplat(&SymbolName);
          if (mlir::CallOpInterface::getArgOperands(&SymbolName))
          {
            v27 = mlir::CallableOpInterface::getArgAttrsAttr(&SymbolName);
            mlir::RankedTensorType::get(v27, v28, v26, 0);
          }

          else
          {
            mlir::UnrankedTensorType::get(v26);
          }

          operator new();
        }

        --v14;
      }

      while (v14);
    }

    v29 = *v2[3];
    mlir::ValueRange::ValueRange(&SymbolName, 0, 0);
    mlir::ValueRange::ValueRange(v90, 0, 0);
    v30 = mlir::FunctionType::get(v29, SymbolName, v92, v90[0], v90[1]);
    v80 = mlir::func::FuncOp::create(*(*v2[1] + 24), "main", 4, v30, 0, 0);
    v31 = mlir::detail::FunctionOpInterfaceTrait<mlir::func::FuncOp>::addEntryBlock(&v80);
    v32 = v80;
    if (v80)
    {
      InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(v80);
    }

    else
    {
      InterfaceFor = 0;
    }

    mlir::function_interface_impl::setFunctionType(v32, InterfaceFor, v30);
    SymbolName = mlir::func::FuncOp::getFunctionType(&v80);
    mlir::FunctionType::getInputs(&SymbolName);
    if (v34)
    {
      v35 = 0;
      v36 = 8 * v34;
      do
      {
        v37 = *(((v89 + 16 * ((*(v89 + 11) >> 23) & 1) + ((*(v89 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v89 + 10) + 8);
        v67 = v37 == 0;
        v38 = v37 - 8;
        if (v67)
        {
          v38 = 0;
        }

        v39 = *(*(v38 + 48) + v35);
        v40 = *(((v80 + 16 * ((*(v80 + 44) >> 23) & 1) + ((*(v80 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v80 + 40) + 8);
        if (v40)
        {
          v41 = v40 - 8;
        }

        else
        {
          v41 = 0;
        }

        v42 = *(*(v41 + 48) + v35);
        SymbolName = v39;
        *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v81, &SymbolName) = v42;
        v35 += 8;
      }

      while (v36 != v35);
    }

    v43 = **i;
    v44 = *(v31 + 5);
    *(v43 + 16) = v31;
    *(v43 + 24) = v44;
    v45 = v80;
    v46 = *(((v78 + 16 * ((*(v78 + 44) >> 23) & 1) + ((*(v78 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v78 + 40) + 8);
    if (v46)
    {
      v47 = v46 - 8;
    }

    else
    {
      v47 = 0;
    }

    v48 = (v47 + 32);
    llvm::ilist_traits<mlir::Operation>::addNodeToList(v47 + 32, v80);
    v50 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v45, v49);
    v51 = *v48;
    *v50 = *v48;
    v50[1] = v48;
    *(v51 + 8) = v50;
    *v48 = v50;
    MPSGraphDelegateCompiler.precompilationDescriptor.modify(v45, v52);
    v53 = v89;
    v54 = 32 * *(v89 + 10);
    v55 = *(((v89 + 16 * ((*(v89 + 11) >> 23) & 1) + ((*(v89 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + v54 + 8);
    v67 = v55 == 0;
    v56 = v55 - 8;
    if (v67)
    {
      v57 = 0;
    }

    else
    {
      v57 = v56;
    }

    v58 = *(((v80 + 16 * ((*(v80 + 44) >> 23) & 1) + ((*(v80 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v80 + 40) + 8);
    if (v58)
    {
      v59 = v58 - 8;
    }

    else
    {
      v59 = 0;
    }

    v90[0] = v57;
    v60 = v85;
    if (v85)
    {
      v61 = v85 - 1;
      v62 = (v85 - 1) & ((v57 >> 4) ^ (v57 >> 9));
      v63 = (v83 + 16 * v62);
      v64 = *v63;
      if (*v63 == v57)
      {
        goto LABEL_56;
      }

      v65 = 0;
      v66 = 1;
      while (v64 != -4096)
      {
        if (v65)
        {
          v67 = 0;
        }

        else
        {
          v67 = v64 == -8192;
        }

        if (v67)
        {
          v65 = v63;
        }

        v68 = v62 + v66++;
        v62 = v68 & v61;
        v63 = (v83 + 16 * (v68 & v61));
        v64 = *v63;
        if (*v63 == v57)
        {
          goto LABEL_56;
        }
      }

      if (v65)
      {
        v63 = v65;
      }
    }

    else
    {
      v63 = 0;
    }

    SymbolName = v63;
    if (4 * v84 + 4 >= 3 * v85)
    {
      LODWORD(v60) = 2 * v85;
    }

    else if (v85 + ~v84 - HIDWORD(v84) > v85 >> 3)
    {
      LODWORD(v84) = v84 + 1;
      if (*v63 == -4096)
      {
LABEL_55:
        *v63 = v90[0];
        v63[1] = 0;
        v53 = v89;
        v54 = 32 * *(v89 + 10);
LABEL_56:
        v63[1] = v59;
        v69 = ((v53 + 16 * ((*(v53 + 11) >> 23) & 1) + ((*(v53 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + v54;
        SymbolName = v81;
        v92 = *i;
        for (j = *(v69 + 8); j != v69; j = *(j + 8))
        {
          v71 = j - 8;
          if (!j)
          {
            v71 = 0;
          }

          v72 = *(v71 + 40);
          v73 = v71 + 32;
          if (v72 != v71 + 32)
          {
            do
            {
              v74 = *(v72 + 8);
              v75 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v72, v60);
              mlir::detail::walk<mlir::ForwardIterator>(v75, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<+[MPSGraphExecutable executablesWithMLIRSourceForMultipleModules:executableDescriptor:regionNames:]::$_13::operator() const(mlir::mpsx::GPUOp)::{lambda(mlir::Operation *)#1}>, &SymbolName, 1);
              v72 = v74;
            }

            while (v74 != v73);
          }
        }

        v76 = [MPSGraphExecutable alloc];
        v77 = [(MPSGraphExecutable *)v76 initializeWithMLIRModule:v78 executableDescriptor:*i[4]];

        [*i[5] addObject:v77];
        llvm::deallocate_buffer(v86, (16 * v88));
      }

LABEL_54:
      --HIDWORD(v84);
      goto LABEL_55;
    }

    llvm::DenseMap<mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>::grow(&v83, v60);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>,mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>::LookupBucketFor<mlir::Operation *>(&v83, v90, &SymbolName);
    v63 = SymbolName;
    LODWORD(v84) = v84 + 1;
    if (*SymbolName == -4096)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  return result;
}

void sub_1E08E23C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, char a13)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E08E24A0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, llvm *a13)
{
  if (v13)
  {
    operator delete(v13);
  }

  if (v14)
  {
    operator delete(v14);
  }

  mlir::IRMapping::~IRMapping(&a13);
}

void sub_1E08E2984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZ101__MPSGraphExecutable_newExecutableWithDevice_inputsArray_intermediateOperations_executionDescriptor__E4__15NS1_4func8ReturnOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESL_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t **a1, mlir::Operation *a2)
{
  if (a2 && *(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id)
  {
    v15[5] = v2;
    v15[6] = v3;
    v4 = *a1;
    v15[0] = a2;
    ODSOperandIndexAndLength = mlir::func::ReturnOp::getODSOperandIndexAndLength(v15, 0);
    v6 = v15[0];
    if ((*(v15[0] + 46) & 0x80) != 0)
    {
      v7 = *(v15[0] + 9);
      v8 = ODSOperandIndexAndLength;
      v9 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
      v10 = v9 - v8;
      if (v9 != v8)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v7 = 0;
      v8 = ODSOperandIndexAndLength;
      v13 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
      v10 = v13 - v8;
      if (v13 != v8)
      {
LABEL_5:
        v11 = (v7 + 32 * v8 + 24);
        do
        {
          v12 = *v11;
          v11 += 4;
          v14 = v12;
          std::vector<mlir::Value>::push_back[abi:ne200100](*v4, &v14);
          --v10;
        }

        while (v10);
        v6 = v15[0];
      }
    }

    mlir::Operation::erase(v6);
  }
}

void sub_1E08E2BD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  llvm::raw_ostream::~raw_ostream(&a11);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZ67__MPSGraphExecutable_cloneForFeeds_targetTensors_targetOperations__E4__17NS1_3mps16AssignVariableOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESL_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t **a1, uint64_t a2)
{
  if (a2)
  {
    if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::AssignVariableOp,void>::id)
    {
      v5[1] = v2;
      v5[2] = v3;
      v4 = **a1;
      v5[0] = a2;
      std::vector<mlir::Type>::push_back[abi:ne200100](v4, v5);
    }
  }
}

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZ67__MPSGraphExecutable_cloneForFeeds_targetTensors_targetOperations__E4__18NS1_3mps16AssignVariableOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESL_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t **a1, uint64_t a2)
{
  if (a2)
  {
    if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::AssignVariableOp,void>::id)
    {
      v5[1] = v2;
      v5[2] = v3;
      v4 = **a1;
      v5[0] = a2;
      std::vector<mlir::Type>::push_back[abi:ne200100](v4, v5);
    }
  }
}

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZ57__MPSGraphExecutable_initializeFuncNamesInOriginalModule_E4__19NS1_4func6FuncOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESL_E4typeES3_OT1_EUlS3_E_EEvlS3_(void ***a1, uint64_t a2)
{
  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    v2 = **a1;
    v8 = a2;
    SymName = mlir::func::FuncOp::getSymName(&v8);
    if (SymName)
    {
      v5 = v4;
      if (v4 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v4 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v7) = v4;
      if (v4)
      {
        memmove(__p, SymName, v4);
      }

      *(__p + v5) = 0;
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
      v7 = 0;
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(v2, __p);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1E08E2FEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_multi(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 16);
  v5 = *(a2 + 39);
  v6 = *(a2 + 24);
  if ((v5 & 0x80u) == 0)
  {
    v7 = (a2 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  if ((v5 & 0x80u) == 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v9 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v59, v7, v8);
  *(a2 + 8) = v9;
  v10 = *(a1 + 8);
  v11 = (*(a1 + 24) + 1);
  v12 = *(a1 + 32);
  v57 = a1;
  v58 = v9;
  if (v10 && (v12 * v10) >= v11)
  {
    goto LABEL_9;
  }

  v16 = 1;
  if (v10 >= 3)
  {
    v16 = (v10 & (v10 - 1)) != 0;
  }

  v17 = v16 | (2 * v10);
  v18 = vcvtps_u32_f32(v11 / v12);
  if (v17 <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v17;
  }

  if (v19 == 1)
  {
    v19 = 2;
  }

  else if ((v19 & (v19 - 1)) != 0)
  {
    prime = std::__next_prime(v19);
    v9 = v58;
    v19 = prime;
    v10 = *(a1 + 8);
  }

  if (v19 > v10)
  {
LABEL_21:
    if (!(v19 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (v19 >= v10)
  {
    goto LABEL_9;
  }

  v21 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
  if (v10 < 3 || (v22 = vcnt_s8(v10), v22.i16[0] = vaddlv_u8(v22), v22.u32[0] > 1uLL))
  {
    v25 = std::__next_prime(v21);
    v9 = v58;
    if (v19 <= v25)
    {
      v19 = v25;
    }

    if (v19 >= v10)
    {
LABEL_31:
      v10 = *(a1 + 8);
      v24 = vcnt_s8(v10);
      v24.i16[0] = vaddlv_u8(v24);
      v14 = v24.u32[0];
      if (v24.u32[0] <= 1uLL)
      {
        goto LABEL_10;
      }

      goto LABEL_40;
    }
  }

  else
  {
    v23 = 1 << -__clz(v21 - 1);
    if (v21 >= 2)
    {
      v21 = v23;
    }

    if (v19 <= v21)
    {
      v19 = v21;
    }

    if (v19 >= v10)
    {
      goto LABEL_31;
    }
  }

  if (v19)
  {
    goto LABEL_21;
  }

  v26 = *a1;
  *a1 = 0;
  if (v26)
  {
    operator delete(v26);
    v9 = v58;
  }

  v10 = 0;
  *(a1 + 8) = 0;
LABEL_9:
  v13 = vcnt_s8(v10);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] <= 1uLL)
  {
LABEL_10:
    v15 = (v10 - 1) & v9;
    goto LABEL_42;
  }

LABEL_40:
  v15 = v9;
  if (v10 <= v9)
  {
    v15 = v9 % v10;
  }

LABEL_42:
  v56 = *a1;
  v27 = *(*a1 + 8 * v15);
  if (v27)
  {
    v28 = *(a2 + 39);
    v29 = a2;
    if (v28 >= 0)
    {
      v30 = *(a2 + 39);
    }

    else
    {
      v30 = *(a2 + 24);
    }

    if (v28 < 0)
    {
      v4 = *(a2 + 16);
    }

    if (v14 >= 2)
    {
      v46 = 0;
      do
      {
        v34 = v27;
        v27 = *v27;
        if (!v27)
        {
          break;
        }

        v50 = v27[1];
        v51 = v50;
        if (v50 >= v10)
        {
          v51 = v50 % v10;
        }

        if (v51 != v15)
        {
          break;
        }

        if (v50 != v9)
        {
          goto LABEL_75;
        }

        v52 = *(v27 + 39);
        v53 = v52;
        if ((v52 & 0x80u) != 0)
        {
          v52 = v27[3];
        }

        if (v52 == v30)
        {
          v54 = v53 >= 0 ? v27 + 2 : v27[2];
          v55 = memcmp(v54, v4, v30);
          v9 = v58;
          v47 = v55 == 0;
        }

        else
        {
LABEL_75:
          v47 = 0;
        }

        v48 = v47 != (v46 & 1);
        v49 = v46 & v48;
        v46 |= v48;
      }

      while (v49 != 1);
    }

    else
    {
      v31 = 0;
      while (1)
      {
        v34 = v27;
        v27 = *v27;
        if (!v27)
        {
          break;
        }

        v35 = v27[1];
        if ((v35 & (v10 - 1)) != v15)
        {
          break;
        }

        if (v35 != v9)
        {
          goto LABEL_50;
        }

        v36 = *(v27 + 39);
        v37 = v36;
        if ((v36 & 0x80u) != 0)
        {
          v36 = v27[3];
        }

        if (v36 == v30)
        {
          if (v37 >= 0)
          {
            v38 = v27 + 2;
          }

          else
          {
            v38 = v27[2];
          }

          v39 = memcmp(v38, v4, v30);
          v9 = v58;
          v40 = (v39 == 0) != (v31 & 1);
          v41 = v31 & v40;
          v31 |= v40;
          if (v41)
          {
            break;
          }
        }

        else
        {
LABEL_50:
          v32 = (v31 & 1) != 0;
          v33 = v31 & v32;
          v31 |= v32;
          if (v33)
          {
            break;
          }
        }
      }
    }
  }

  else
  {
    v29 = a2;
    v34 = 0;
  }

  v42 = v29;
  v43 = *(v29 + 8);
  if (v14 > 1)
  {
    v44 = v57;
    if (v43 >= v10)
    {
      v43 %= v10;
    }
  }

  else
  {
    v43 &= v10 - 1;
    v44 = v57;
  }

  if (!v34)
  {
    *v42 = *(v44 + 16);
    *(v44 + 16) = v42;
    v56[v43] = v44 + 16;
    if (!*v42)
    {
      goto LABEL_96;
    }

    v45 = *(*v42 + 8);
    if (v14 > 1)
    {
      if (v45 >= v10)
      {
        v45 %= v10;
      }
    }

    else
    {
      v45 &= v10 - 1;
    }

LABEL_95:
    v56[v45] = v42;
    goto LABEL_96;
  }

  *v42 = *v34;
  *v34 = v42;
  if (*v42)
  {
    v45 = *(*v42 + 8);
    if (v14 > 1)
    {
      if (v45 >= v10)
      {
        v45 %= v10;
      }
    }

    else
    {
      v45 &= v10 - 1;
    }

    if (v45 != v43)
    {
      goto LABEL_95;
    }
  }

LABEL_96:
  ++*(v44 + 24);
}

const MPSGraphModuleKey *llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>,MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>::doFind<MPSGraphModuleKey>(uint64_t a1, int a2, MPSGraphModuleKeyInfo *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  v20 = v22;
  v21 = 0x600000001;
  v22[0] = -2;
  MPSGraphModuleKey::MPSGraphModuleKey(&v19, &v20, 0, 0, 0, 0);
  if (v20 != v22)
  {
    free(v20);
  }

  v6 = llvm::hashing::detail::hash_combine_range_impl<char const>(*a3, *a3 + 8 * *(a3 + 2));
  v7 = [*(a3 + 8) hash];
  v8 = [*(a3 + 9) hash];
  v9 = [*(a3 + 10) hash];
  v10 = [*(a3 + 11) hash];
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v20 = v6;
  v21 = v7;
  v22[0] = v8;
  v22[1] = v9;
  v28 = 0xFF51AFD7ED558CCDLL;
  v22[2] = v10;
  v11 = a2 - 1;
  v13 = (a2 - 1) & llvm::hashing::detail::hash_short(&v20, 0x28uLL, 0xFF51AFD7ED558CCDLL);
  for (i = 1; ; ++i)
  {
    v15 = (a1 + 120 * v13);
    if (MPSGraphModuleKeyInfo::isEqual(a3, v15, v12))
    {
      break;
    }

    if (MPSGraphModuleKeyInfo::isEqual((a1 + 120 * v13), &v19, v16))
    {
      v15 = 0;
      break;
    }

    v17 = v13 + i;
    v13 = v17 & v11;
  }

  if (v19.var0.var0 != v19.var0.var3)
  {
    free(v19.var0.var0);
  }

  return v15;
}

void sub_1E08E38E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, MPSGraphModuleKey *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22 != v22)
  {
    free(a22);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double std::vector<MPSGraphModuleKey>::__emplace_back_slow_path<MPSGraphModuleKey>(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5) + 1;
  if (v2 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
  {
    v5 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v6 = 32 * ((*(a1 + 8) - *a1) >> 5);
  *(&v15 + 1) = 0;
  *v6 = v6 + 16;
  *(v6 + 8) = 0x600000000;
  v7 = v6;
  v8 = v6;
  if (*(a2 + 8))
  {
    llvm::SmallVectorImpl<unsigned long long>::operator=(v6, a2);
    v7 = v6;
    v8 = v6;
  }

  v9 = *(a2 + 64);
  v10 = *(a2 + 80);
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(v6 + 64) = v9;
  *(v6 + 80) = v10;
  *&v15 = v8 + 96;
  v11 = *(a1 + 8);
  v12 = (v7 + *a1 - v11);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MPSGraphModuleKey>,MPSGraphModuleKey*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  result = *&v15;
  *(a1 + 8) = v15;
  if (v13)
  {
    operator delete(v13);
    return *&v15;
  }

  return result;
}

void sub_1E08E3A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*v4 != v5)
  {
    free(*v4);
    std::__split_buffer<MPSGraphModuleKey>::~__split_buffer(va);
    _Unwind_Resume(a1);
  }

  std::__split_buffer<MPSGraphModuleKey>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t llvm::SmallVectorImpl<MPSGraphExecutableCacheValue>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = a2 + 2;
    v5 = *a2;
    if (*a2 != a2 + 2)
    {
      v6 = *a1;
      v7 = *(a1 + 8);
      if (v7)
      {
        v8 = &v6[5 * v7 - 3];
        v9 = -40 * v7;
        do
        {
          if (*(v8 + 23) < 0)
          {
            operator delete(*v8);
          }

          v8 -= 40;
          v9 += 40;
        }

        while (v9);
        v6 = *a1;
      }

      if (v6 != (a1 + 16))
      {
        free(v6);
      }

      *a1 = *a2;
      v10 = a2 + 1;
      *(a1 + 8) = a2[1];
      *a2 = v4;
      *(a2 + 3) = 0;
LABEL_12:
      *v10 = 0;
      return a1;
    }

    v10 = a2 + 1;
    v12 = *(a2 + 2);
    v13 = *(a1 + 8);
    if (v13 >= v12)
    {
      v16 = *a1;
      if (v12)
      {
        v17 = v5 + 40 * v12;
        do
        {
          *v16 = *v5;
          if (*(v16 + 39) < 0)
          {
            operator delete(v16[2]);
          }

          v18 = *(v5 + 16);
          v16[4] = *(v5 + 32);
          *(v16 + 1) = v18;
          *(v5 + 39) = 0;
          *(v5 + 16) = 0;
          v5 += 40;
          v16 += 5;
        }

        while (v5 != v17);
        v19 = *a1;
        LODWORD(v13) = *(a1 + 8);
      }

      else
      {
        v19 = *a1;
      }

      for (i = &v19[5 * v13]; i != v16; i -= 5)
      {
        if (*(i - 1) < 0)
        {
          operator delete(*(i - 3));
        }
      }

      *(a1 + 8) = v12;
      v33 = *(a2 + 2);
      if (v33)
      {
        v34 = *a2 + 40 * v33 - 24;
        v35 = -40 * v33;
        do
        {
          if (*(v34 + 23) < 0)
          {
            operator delete(*v34);
          }

          v34 -= 40;
          v35 += 40;
        }

        while (v35);
      }

      goto LABEL_12;
    }

    if (*(a1 + 12) >= v12)
    {
      v20 = *a1;
      if (v13)
      {
        v21 = v5 + 40 * v13;
        do
        {
          *v20 = *v5;
          if (*(v20 + 39) < 0)
          {
            operator delete(v20[2]);
          }

          v22 = *(v5 + 16);
          v20[4] = *(v5 + 32);
          *(v20 + 1) = v22;
          *(v5 + 39) = 0;
          *(v5 + 16) = 0;
          v5 += 40;
          v20 += 5;
        }

        while (v5 != v21);
        v20 = *a1;
        v36 = *a2;
        v37 = *(a2 + 2);
        if (v13 == v37)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v13 = 0;
        v36 = *a2;
        LODWORD(v37) = *(a2 + 2);
        if (!v37)
        {
          goto LABEL_62;
        }
      }
    }

    else
    {
      if (v13)
      {
        v14 = *a1 + 40 * v13 - 24;
        v15 = -40 * v13;
        do
        {
          if (*(v14 + 23) < 0)
          {
            operator delete(*v14);
          }

          v14 -= 40;
          v15 += 40;
        }

        while (v15);
      }

      *(a1 + 8) = 0;
      v46 = 0;
      llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), v12, 40, &v46);
      v20 = v23;
      v24 = *a1;
      v25 = *(a1 + 8);
      if (v25)
      {
        v26 = &v24[5 * v25];
        v27 = v20;
        do
        {
          *v27 = *v24;
          v28 = *(v24 + 1);
          v27[4] = v24[4];
          *(v27 + 1) = v28;
          v24[3] = 0;
          v24[4] = 0;
          v24[2] = 0;
          v27 += 5;
          v24 += 5;
        }

        while (v24 != v26);
        v24 = *a1;
        v29 = *(a1 + 8);
        if (v29)
        {
          v30 = &v24[5 * v29 - 3];
          v31 = -40 * v29;
          do
          {
            if (*(v30 + 23) < 0)
            {
              operator delete(*v30);
            }

            v30 -= 40;
            v31 += 40;
          }

          while (v31);
          v24 = *a1;
        }
      }

      v38 = v46;
      if (v24 != (a1 + 16))
      {
        free(v24);
      }

      v13 = 0;
      *a1 = v20;
      *(a1 + 12) = v38;
      v36 = *a2;
      LODWORD(v37) = *(a2 + 2);
      if (!v37)
      {
        goto LABEL_62;
      }
    }

    v39 = v36 + 40 * v37;
    v40 = &v20[5 * v13];
    v41 = v36 + 40 * v13;
    do
    {
      *v40 = *v41;
      v42 = *(v41 + 16);
      v40[4] = *(v41 + 32);
      *(v40 + 1) = v42;
      *(v41 + 24) = 0;
      *(v41 + 32) = 0;
      *(v41 + 16) = 0;
      v40 += 5;
      v41 += 40;
    }

    while (v41 != v39);
    v36 = *a2;
LABEL_62:
    *(a1 + 8) = v12;
    v43 = *v10;
    if (v43)
    {
      v44 = v36 + 40 * v43 - 24;
      v45 = -40 * v43;
      do
      {
        if (*(v44 + 23) < 0)
        {
          operator delete(*v44);
        }

        v44 -= 40;
        v45 += 40;
      }

      while (v45);
    }

    goto LABEL_12;
  }

  return a1;
}

void llvm::SmallVectorImpl<MPSGraphExecutableCacheValue>::append(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 5 * a3;
  v7 = 0xCCCCCCCCCCCCCCCDLL * ((40 * a3) >> 3);
  v8 = *(a1 + 8);
  v9 = v7 + v8;
  if (v7 + v8 <= *(a1 + 12))
  {
    v12 = *a1;
    if (!a3)
    {
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  v26 = 0;
  v10 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), v9, 40, &v26);
  v12 = v11;
  v13 = *a1;
  v14 = *(a1 + 8);
  if (v14)
  {
    v15 = &v13[40 * v14];
    v16 = v12;
    do
    {
      *v16 = *v13;
      v17 = *(v13 + 1);
      *(v16 + 4) = *(v13 + 4);
      v16[1] = v17;
      *(v13 + 3) = 0;
      *(v13 + 4) = 0;
      *(v13 + 2) = 0;
      v16 = (v16 + 40);
      v13 += 40;
    }

    while (v13 != v15);
    v13 = *a1;
    v18 = *(a1 + 8);
    if (v18)
    {
      v19 = &v13[40 * v18 - 24];
      v20 = -40 * v18;
      do
      {
        if (*(v19 + 23) < 0)
        {
          operator delete(*v19);
        }

        v19 -= 40;
        v20 += 40;
      }

      while (v20);
      v13 = *a1;
    }
  }

  v21 = v26;
  if (v13 != v10)
  {
    free(v13);
  }

  *a1 = v12;
  *(a1 + 12) = v21;
  LODWORD(v8) = *(a1 + 8);
  if (a3)
  {
LABEL_16:
    v22 = 0;
    v23 = a2 + 8 * v6;
    v24 = &v12[40 * v8];
    do
    {
      *v24 = *a2;
      if (*(a2 + 39) < 0)
      {
        std::string::__init_copy_ctor_external((v24 + 16), *(a2 + 16), *(a2 + 24));
      }

      else
      {
        v25 = *(a2 + 16);
        *(v24 + 4) = *(a2 + 32);
        *(v24 + 1) = v25;
      }

      a2 += 40;
      v24 += 40;
      v22 -= 40;
    }

    while (a2 != v23);
    LODWORD(v8) = *(a1 + 8);
  }

LABEL_22:
  *(a1 + 8) = v8 + v7;
}

void sub_1E08E4094(void *a1)
{
  __cxa_begin_catch(a1);
  if (v2)
  {
    v4 = -v2;
    v5 = (v1 + 40 * v3 + 39);
    do
    {
      if (*v5 < 0)
      {
        operator delete(*(v5 - 23));
      }

      v5 += 40;
      v4 -= 40;
    }

    while (v4);
  }

  __cxa_rethrow();
}

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZ46__MPSGraphExecutable_checkCallablesForModule__E4__25NS1_3mps6CallOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t **a1, uint64_t a2)
{
  if (!a2 || *(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::CallOp,void>::id)
  {
    return;
  }

  v2 = **a1;
  v24 = a2;
  SymbolName = mlir::mps::CallOp::getSymbolName(&v24);
  if (!SymbolName)
  {
    __p[0] = 0;
    __p[1] = 0;
    v23 = 0;
    v6 = *(v2 + 8);
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_36:
    operator new();
  }

  v5 = v4;
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v23) = v4;
  if (v4)
  {
    memmove(__p, SymbolName, v4);
  }

  *(__p + v5) = 0;
  v6 = *(v2 + 8);
  if (!v6)
  {
    goto LABEL_36;
  }

LABEL_13:
  v7 = HIBYTE(v23);
  if (v23 >= 0)
  {
    v8 = HIBYTE(v23);
  }

  else
  {
    v8 = __p[1];
  }

  if (v23 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  while (1)
  {
    while (1)
    {
      v10 = v6;
      v13 = v6[4];
      v11 = v6 + 4;
      v12 = v13;
      v14 = *(v11 + 23);
      if (v14 >= 0)
      {
        v15 = *(v11 + 23);
      }

      else
      {
        v15 = v11[1];
      }

      if (v14 >= 0)
      {
        v16 = v11;
      }

      else
      {
        v16 = v12;
      }

      if (v15 >= v8)
      {
        v17 = v8;
      }

      else
      {
        v17 = v15;
      }

      v18 = memcmp(v9, v16, v17);
      v19 = v8 < v15;
      if (v18)
      {
        v19 = v18 < 0;
      }

      if (!v19)
      {
        break;
      }

      v6 = *v10;
      if (!*v10)
      {
        goto LABEL_36;
      }
    }

    v20 = memcmp(v16, v9, v17);
    v21 = v15 < v8;
    if (v20)
    {
      v21 = v20 < 0;
    }

    if (!v21)
    {
      break;
    }

    v6 = v10[1];
    if (!v6)
    {
      goto LABEL_36;
    }
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E08E432C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::unique_ptr<ScopedTemporaryDirectory>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*v1 == 1)
    {
      [*(v1 + 8) removeItemAtPath:*(v1 + 16) error:0];
    }

    MEMORY[0x1E12E5B90](v1, 0x1080C40D8888184);
    return v2;
  }

  return result;
}

void std::__shared_ptr_emplace<llvm::StringMap<mlir::func::FuncOp,llvm::MallocAllocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5B54150;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12E5B90);
}

void std::__shared_ptr_emplace<llvm::StringMap<mlir::func::FuncOp,llvm::MallocAllocator>>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 36))
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      v3 = 0;
      do
      {
        v4 = *(*(a1 + 24) + v3);
        if (v4 != -8 && v4 != 0)
        {
          llvm::deallocate_buffer(v4, (*v4 + 17));
        }

        v3 += 8;
      }

      while (8 * v2 != v3);
    }
  }

  v6 = *(a1 + 24);

  free(v6);
}

uint64_t llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>::~StringMap(uint64_t a1)
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
          v6 = *v4;
          mlir::OpPassManager::~OpPassManager((v4 + 1));
          llvm::deallocate_buffer(v4, (v6 + 17));
        }

        v3 += 8;
      }

      while (8 * v2 != v3);
    }
  }

  free(*a1);
  return a1;
}

void std::__shared_ptr_emplace<mlir::mps::MPSFusableCoreOps>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5B54220;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12E5B90);
}

uint64_t *_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZ42__MPSGraphExecutable_aneRegionOpsHashSet__E4__30NS1_4func6FuncOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t *result, uint64_t a2)
{
  if (a2)
  {
    if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
    {
      v14[7] = v2;
      v14[8] = v3;
      v4 = *result;
      v5 = ((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
      v6 = *(*result + 16);
      v13[0] = **result;
      v13[1] = v6;
      v13[2] = *(v4 + 32);
      for (i = *(v5 + 8); i != v5; i = *(i + 8))
      {
        v8 = i - 8;
        if (!i)
        {
          v8 = 0;
        }

        result = *(v8 + 40);
        v9 = (v8 + 32);
        while (result != v9)
        {
          v10 = result[1];
          v11 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(result, a2);
          v14[0] = v13;
          v12 = mlir::detail::walk<mlir::ForwardIterator>(v11, _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZZ42__MPSGraphExecutable_aneRegionOpsHashSet__ENK4__30clENS1_4func6FuncOpEEUlNS1_9placement10RegionCallEE_SG_S2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESQ_E4typeES4_OT1_EUlS4_E_EES2_lS4_, v14, 1);
          result = v10;
          if (!v12)
          {
            return result;
          }
        }
      }
    }
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZZ42__MPSGraphExecutable_aneRegionOpsHashSet__ENK4__30clENS1_4func6FuncOpEEUlNS1_9placement10RegionCallEE_SG_S2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESQ_E4typeES4_OT1_EUlS4_E_EES2_lS4_(uint64_t *a1, mlir::Operation *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (*(*(a2 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id)
  {
    return 1;
  }

  v2 = *a1;
  v64 = a2;
  if (mlir::placement::RegionCall::getRegionType(&v64) != 1)
  {
    return 1;
  }

  Callee = mlir::placement::RegionCall::getCallee(&v64);
  v5 = v4;
  v6 = **v2;
  Context = mlir::Attribute::getContext((v6 + 6));
  LOWORD(c.hash[6]) = 261;
  *c.count = Callee;
  *c.hash = v5;
  v8 = mlir::StringAttr::get(Context, &c);
  v9 = mlir::SymbolTable::lookupSymbolIn(v6, v8);
  if (!v9)
  {
    return 1;
  }

  v10 = v9;
  if (!mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(v9))
  {
    return 1;
  }

  mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(v10);
  v11 = *(v2 + 8);
  if (*(v11 + 23) < 0)
  {
    **v11 = 0;
    *(v11 + 8) = 0;
  }

  else
  {
    *v11 = 0;
    *(v11 + 23) = 0;
  }

  v12 = *(v2 + 8);
  v57 = 0;
  v61 = 0;
  v62 = 1;
  v59 = 0;
  v60 = 0;
  v58 = 0;
  v56 = &unk_1F5B3FB30;
  v63 = v12;
  llvm::raw_ostream::SetBufferAndMode(&v56, 0, 0, 0);
  mlir::Operation::print(v10, &v56, *(v2 + 16));
  v13 = v60;
  if ((v59 - v60) > 5)
  {
    *(v60 + 4) = 8250;
    *v13 = 1397639434;
    v60 += 6;
  }

  else
  {
    llvm::raw_ostream::write(&v56, "\nINS: ", 6uLL);
  }

  v51 = v10;
  v52 = v2;
  if ((*(v64 + 46) & 0x80) != 0)
  {
    v14 = *(v64 + 17);
    if (v14)
    {
      v15 = (*(v64 + 9) + 24);
      do
      {
        *v54.count = *v15;
        DefiningOp = mlir::Value::getDefiningOp(&v54);
        if (*(*(DefiningOp + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id)
        {
          DefiningOp = 0;
        }

        v53[0] = DefiningOp;
        v17 = *(*(*(DefiningOp + 9) + 24) + 8);
        *c.count = mlir::Operation::getAttrDictionary(DefiningOp);
        Value = mlir::ArrayAttr::getValue(&c);
        *c.count = mlir::Operation::getAttrDictionary(v53[0]);
        v19 = mlir::ArrayAttr::getValue(&c);
        v21 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v19 + 16 * v20), **(*(v53[0] + 6) + 96));
        if (v21 && *(*v21 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          Interleave = mlir::placement::MemrefToTensor::getInterleave(v53);
        }

        else
        {
          Interleave = 1;
        }

        *c.count = v17 & 0xFFFFFFFFFFFFFFF8;
        mlir::Type::print(&c, &v56);
        v23 = v60;
        if ((v59 - v60) > 2)
        {
          *(v60 + 2) = 61;
          *v23 = 18746;
          v60 += 3;
          v24 = &v56;
        }

        else
        {
          v24 = llvm::raw_ostream::write(&v56, ":I=", 3uLL);
        }

        v25 = llvm::raw_ostream::operator<<(v24, Interleave);
        v26 = *(v25 + 4);
        if (*(v25 + 3) - v26 > 1uLL)
        {
          *v26 = 8251;
          *(v25 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v25, "; ", 2uLL);
        }

        v15 += 4;
        --v14;
      }

      while (v14);
    }
  }

  v27 = v60;
  if ((v59 - v60) > 6)
  {
    *(v60 + 3) = 540693332;
    *v27 = 1414876938;
    v60 += 7;
    v28 = *(v64 + 9);
    if (v28)
    {
      v29 = v64 - 16;
    }

    else
    {
      v29 = 0;
    }

    if (!v28)
    {
      goto LABEL_55;
    }

LABEL_38:
    for (i = 0; i != v28; ++i)
    {
      v31 = *(*mlir::detail::OpResultImpl::getNextResultAtOffset(v29, i) + 16);
      if (*(*(v31 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id)
      {
        v31 = 0;
      }

      *v54.count = v31;
      v32 = *(v31 + 36);
      v33 = v31 - 16;
      if (v32)
      {
        v34 = v33;
      }

      else
      {
        v34 = 0;
      }

      v35 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v34, 0) + 8);
      *c.count = mlir::Operation::getAttrDictionary(*v54.count);
      v36 = mlir::ArrayAttr::getValue(&c);
      *c.count = mlir::Operation::getAttrDictionary(*v54.count);
      v37 = mlir::ArrayAttr::getValue(&c);
      v39 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v36, (v37 + 16 * v38), **(*(*v54.count + 48) + 96));
      if (v39 && *(*v39 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v40 = mlir::placement::MemrefToTensor::getInterleave(&v54);
      }

      else
      {
        v40 = 1;
      }

      *c.count = v35 & 0xFFFFFFFFFFFFFFF8;
      mlir::Type::print(&c, &v56);
      v41 = v60;
      if ((v59 - v60) > 2)
      {
        *(v60 + 2) = 61;
        *v41 = 18746;
        v60 += 3;
        v42 = &v56;
      }

      else
      {
        v42 = llvm::raw_ostream::write(&v56, ":I=", 3uLL);
      }

      v43 = llvm::raw_ostream::operator<<(v42, v40);
      v44 = *(v43 + 4);
      if (*(v43 + 3) - v44 > 1uLL)
      {
        *v44 = 8251;
        *(v43 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v43, "; ", 2uLL);
      }
    }

    goto LABEL_55;
  }

  llvm::raw_ostream::write(&v56, "\nOUTS: ", 7uLL);
  v28 = *(v64 + 9);
  if (v28)
  {
    v29 = v64 - 16;
  }

  else
  {
    v29 = 0;
  }

  if (v28)
  {
    goto LABEL_38;
  }

LABEL_55:
  CC_SHA256_Init(&c);
  CC_SHA256_Init(&v54);
  v45 = *(v52 + 8);
  v46 = *(v45 + 23);
  if (v46 < 0)
  {
    v45 = *v45;
    v46 = *(*(v52 + 8) + 8);
  }

  CC_SHA256_Update(&c, v45, v46);
  v47 = *(v52 + 8);
  v48 = *(v47 + 23);
  if (v48 < 0)
  {
    v47 = *v47;
    v48 = *(*(v52 + 8) + 8);
  }

  CC_SHA256_Update(*(v52 + 24), v47, v48);
  v49 = *(v52 + 32);
  v53[0] = &v54;
  v53[1] = v49;
  v65 = v53;
  mlir::detail::walk<mlir::ForwardIterator>(v51, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZZZ42__MPSGraphExecutable_aneRegionOpsHashSet__ENK4__30clENS1_4func6FuncOpEENKUlNS1_9placement10RegionCallEE_clESF_EUlNS1_3mps10ConstantOpEE_SI_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESR_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v65, 1);
  [MPSGraphExecutable aneRegionOpsHashSet:]::$_29::operator()(*(v52 + 40), &c, &v54, v64, "mps.regionSHA", 13);
  llvm::raw_ostream::~raw_ostream(&v56);
  return 1;
}