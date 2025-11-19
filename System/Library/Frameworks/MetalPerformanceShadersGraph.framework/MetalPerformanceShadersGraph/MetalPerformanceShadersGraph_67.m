BOOL mlir::detail::PreservedAnalyses::isAll(const void ***this)
{
  {
    v2 = mlir::detail::TypeIDResolver<mlir::detail::PreservedAnalyses::AllAnalysesType,void>::resolveTypeID(void)::id;
    v3 = *this;
    v4 = this[1];
    if (v4 != *this)
    {
      goto LABEL_3;
    }
  }

  else
  {
    mlir::detail::PreservedAnalyses::isAll();
    v2 = mlir::detail::TypeIDResolver<mlir::detail::PreservedAnalyses::AllAnalysesType,void>::resolveTypeID(void)::id;
    v3 = *this;
    v4 = this[1];
    if (v4 != *this)
    {
LABEL_3:
      v3 = llvm::SmallPtrSetImplBase::doFind(this, v2);
      v4 = *this;
      v5 = this[1];
      if (!v3)
      {
        v6 = 16;
        if (v5 == v4)
        {
          v6 = 20;
        }

        v3 = &v5[*(this + v6)];
      }

      goto LABEL_14;
    }
  }

  v7 = *(this + 5);
  if (v7)
  {
    v8 = 8 * v7;
    while (*v3 != v2)
    {
      ++v3;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v3 = &v4[v7];
  }

  v5 = v4;
LABEL_14:
  v9 = v5 == v4;
  v10 = 16;
  if (v9)
  {
    v10 = 20;
  }

  return v3 != &v5[*(this + v10)];
}

uint64_t mlir::detail::OpToOpPassAdaptor::runPipeline(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, std::recursive_mutex **a6, uint64_t a7)
{
  v8 = a6;
  v44 = a3;
  if (!a6)
  {
    goto LABEL_19;
  }

  Context = mlir::Attribute::getContext((a2 + 24));
  v15 = *a1;
  v16 = *(*a1 + 23);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v42 = a1;
    if (!*(*a1 + 23))
    {
      goto LABEL_16;
    }

LABEL_6:
    if ((v15[4] & 1) == 0)
    {
      if (v16 >= 0)
      {
        v17 = *a1;
      }

      else
      {
        v17 = *v15;
      }

      if (v16 >= 0)
      {
        v18 = *(*a1 + 23);
      }

      else
      {
        v18 = v15[1];
      }

      mlir::OperationName::OperationName(&v45, v17, v18, Context);
      v19 = v45;
      if ((v15[4] & 1) == 0)
      {
        *(v15 + 32) = 1;
      }

      v15[3] = v19;
    }

    goto LABEL_16;
  }

  v42 = a1;
  if (v15[1])
  {
    goto LABEL_6;
  }

LABEL_16:
  v20 = v15[3];
  v21 = *(v15 + 32);
  v22 = *a6;
  std::recursive_mutex::lock(*a6);
  v24 = *(*a6)[1].__m_.__opaque;
  v23 = *&(*a6)[1].__m_.__opaque[8];
  while (v24 != v23)
  {
    v25 = *v24++;
    (*(*v25 + 16))(v25, v20, v21, a7);
  }

  std::recursive_mutex::unlock(v22);
  a1 = v42;
  v8 = a6;
LABEL_19:
  v26 = *(*a1 + 40);
  v27 = *(*a1 + 48);
  if (v26 == v27)
  {
LABEL_22:
    if (!v8)
    {
LABEL_41:
      v31 = 1;
      goto LABEL_42;
    }

    v28 = mlir::Attribute::getContext((a2 + 24));
    v29 = *a1;
    v30 = *(*a1 + 23);
    if (v30 < 0)
    {
      if (!v29[1])
      {
LABEL_38:
        v35 = v29[3];
        v36 = *(v29 + 32);
        v37 = *v8;
        std::recursive_mutex::lock(*v8);
        v39 = *(*v8)[1].__m_.__opaque;
        for (i = *&(*v8)[1].__m_.__opaque[8]; i != v39; i -= 8)
        {
          v40 = *(i - 8);
          (*(*v40 + 24))(v40, v35, v36, a7);
        }

        std::recursive_mutex::unlock(v37);
        goto LABEL_41;
      }
    }

    else if (!*(*a1 + 23))
    {
      goto LABEL_38;
    }

    if ((v29[4] & 1) == 0)
    {
      if (v30 >= 0)
      {
        v32 = *a1;
      }

      else
      {
        v32 = *v29;
      }

      if (v30 >= 0)
      {
        v33 = *(*a1 + 23);
      }

      else
      {
        v33 = v29[1];
      }

      mlir::OperationName::OperationName(&v45, v32, v33, v28);
      v34 = v45;
      if ((v29[4] & 1) == 0)
      {
        *(v29 + 32) = 1;
      }

      v29[3] = v34;
    }

    goto LABEL_38;
  }

  while ((mlir::detail::OpToOpPassAdaptor::run(*v26, a2, a3, a4, a5) & 1) != 0)
  {
    if (++v26 == v27)
    {
      goto LABEL_22;
    }
  }

  v31 = 0;
LABEL_42:
  mlir::AnalysisManager::clear(&v44);
  return v31;
}

uint64_t mlir::detail::OpToOpPassAdaptor::OpToOpPassAdaptor(uint64_t a1, uint64_t *a2)
{
  v2 = a1;
  {
    v4 = a2;
    mlir::Pass::printAsTextualPipeline();
    a2 = v4;
    v2 = a1;
  }

  *(v2 + 8) = mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id;
  *(v2 + 16) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0;
  *(v2 + 184) = v2 + 200;
  *(v2 + 192) = 0x400000000;
  *(v2 + 232) = v2 + 248;
  *(v2 + 240) = 0x400000000;
  *(v2 + 280) = 0;
  *(v2 + 288) = 0;
  *(v2 + 296) = 0x1000000000;
  *(v2 + 304) = 0u;
  *(v2 + 320) = 0u;
  *v2 = &unk_1F5B01A00;
  *(v2 + 336) = 0;
  *(v2 + 344) = v2 + 360;
  *(v2 + 352) = 0x100000000;
  *(v2 + 368) = v2 + 384;
  *(v2 + 376) = 0x800000000;
  llvm::SmallVectorImpl<mlir::OpPassManager>::emplace_back<mlir::OpPassManager>(v2 + 344, a2);
  return v2;
}

uint64_t llvm::SmallVectorImpl<mlir::OpPassManager>::emplace_back<mlir::OpPassManager>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {

    return llvm::SmallVectorTemplateBase<mlir::OpPassManager,false>::growAndEmplaceBack<mlir::OpPassManager>(a1, a2);
  }

  else
  {
    v4 = *a1;
    *(*a1 + 8 * v3) = 0;
    v5 = *a2;
    *a2 = 0;
    v6 = *(v4 + 8 * v3);
    *(v4 + 8 * v3) = v5;
    if (v6)
    {
      v7 = *(v6 + 40);
      if (v7)
      {
        v8 = *(v6 + 48);
        v9 = *(v6 + 40);
        if (v8 != v7)
        {
          do
          {
            v11 = *--v8;
            v10 = v11;
            *v8 = 0;
            if (v11)
            {
              (*(*v10 + 8))(v10);
            }
          }

          while (v8 != v7);
          v9 = *(v6 + 40);
        }

        *(v6 + 48) = v7;
        operator delete(v9);
      }

      if (*(v6 + 23) < 0)
      {
        operator delete(*v6);
      }

      operator delete(v6);
      v3 = *(a1 + 8);
      v4 = *a1;
    }

    v12 = v3 + 1;
    *(a1 + 8) = v12;
    return v4 + 8 * v12 - 8;
  }
}

uint64_t mlir::detail::OpToOpPassAdaptor::getDependentDialects(uint64_t this, mlir::DialectRegistry *a2)
{
  v2 = *(this + 352);
  if (v2)
  {
    v4 = *(this + 344);
    v5 = v4 + 8 * v2;
    v6 = *(*v4 + 40);
    i = *(*v4 + 48);
    if (v6 != i)
    {
      goto LABEL_5;
    }

    while (1)
    {
      v4 += 8;
      if (v4 == v5)
      {
        break;
      }

      v6 = *(*v4 + 40);
      for (i = *(*v4 + 48); v6 != i; this = (*(*v8 + 24))(v8, a2))
      {
LABEL_5:
        v8 = *v6++;
      }
    }
  }

  return this;
}

void llvm::SmallVectorImpl<mlir::OpPassManager>::clear(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *a1;
    v4 = (*a1 + 8 * v2);
    do
    {
      v6 = *--v4;
      v5 = v6;
      *v4 = 0;
      if (v6)
      {
        v7 = *(v5 + 40);
        if (v7)
        {
          v8 = *(v5 + 48);
          v9 = *(v5 + 40);
          if (v8 != v7)
          {
            do
            {
              v11 = *--v8;
              v10 = v11;
              *v8 = 0;
              if (v11)
              {
                (*(*v10 + 8))(v10);
              }
            }

            while (v8 != v7);
            v9 = *(v5 + 40);
          }

          *(v5 + 48) = v7;
          operator delete(v9);
        }

        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        operator delete(v5);
      }
    }

    while (v4 != v3);
  }

  *(a1 + 8) = 0;
}

void mlir::detail::OpToOpPassAdaptor::getAdaptorName(mlir::detail::OpToOpPassAdaptor *this@<X0>, uint64_t a2@<X8>)
{
  v4 = operator new(0x19uLL);
  *a2 = v4;
  *(a2 + 8) = xmmword_1E096E570;
  strcpy(v4, "Pipeline Collection : [");
  v31 = 0;
  v35 = 0;
  v36 = 1;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v30 = &unk_1F5B3FB30;
  v37 = a2;
  llvm::raw_ostream::SetBufferAndMode(&v30, 0, 0, 0);
  v5 = *(this + 88);
  if (!v5)
  {
    goto LABEL_48;
  }

  v6 = *(this + 43);
  v7 = v34;
  if (v34 >= v33)
  {
    v8 = llvm::raw_ostream::write(&v30, 39);
    v9 = *v6;
    v10 = *(*v6 + 23);
    if ((v10 & 0x8000000000000000) == 0)
    {
LABEL_4:
      if (v10)
      {
        goto LABEL_5;
      }

LABEL_16:
      v14 = v8 + 4;
      v13 = v8[4];
      v11 = "any";
      v12 = 3;
      if ((v8[3] - v13) > 2)
      {
        goto LABEL_21;
      }

LABEL_17:
      v8 = llvm::raw_ostream::write(v8, v11, v12);
      goto LABEL_18;
    }
  }

  else
  {
    v34 = (v34 + 1);
    *v7 = 39;
    v8 = &v30;
    v9 = *v6;
    v10 = *(*v6 + 23);
    if ((v10 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }
  }

  if (!*(v9 + 8))
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v10 & 0x80000000) == 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = *v9;
  }

  if ((v10 & 0x80000000) == 0)
  {
    v12 = v10;
  }

  else
  {
    v12 = *(v9 + 8);
  }

  v14 = v8 + 4;
  v13 = v8[4];
  if (v12 > v8[3] - v13)
  {
    goto LABEL_17;
  }

  if (!v12)
  {
LABEL_18:
    v15 = v8[4];
    if (v15 < v8[3])
    {
      goto LABEL_19;
    }

LABEL_22:
    llvm::raw_ostream::write(v8, 39);
    if (v5 == 1)
    {
      goto LABEL_48;
    }

    goto LABEL_23;
  }

LABEL_21:
  v16 = v8;
  memcpy(v13, v11, v12);
  *v14 += v12;
  v8 = v16;
  v15 = v16[4];
  if (v15 >= v16[3])
  {
    goto LABEL_22;
  }

LABEL_19:
  v8[4] = v15 + 1;
  *v15 = 39;
  if (v5 != 1)
  {
LABEL_23:
    v17 = v6 + 1;
    v18 = 8 * v5 - 8;
    while (1)
    {
      if (v33 - v34 > 1)
      {
        *v34 = 8236;
        v19 = v34 + 1;
        v34 = v19;
        if (v19 < v33)
        {
LABEL_27:
          v34 = v19 + 1;
          *v19 = 39;
          v20 = &v30;
          v21 = *v17;
          v22 = *(*v17 + 23);
          if ((v22 & 0x8000000000000000) != 0)
          {
            goto LABEL_28;
          }

          goto LABEL_33;
        }
      }

      else
      {
        llvm::raw_ostream::write(&v30, ", ", 2uLL);
        v19 = v34;
        if (v34 < v33)
        {
          goto LABEL_27;
        }
      }

      v20 = llvm::raw_ostream::write(&v30, 39);
      v21 = *v17;
      v22 = *(*v17 + 23);
      if ((v22 & 0x8000000000000000) != 0)
      {
LABEL_28:
        if (!*(v21 + 8))
        {
          goto LABEL_29;
        }

        goto LABEL_34;
      }

LABEL_33:
      if (!v22)
      {
LABEL_29:
        v24 = v20 + 4;
        v23 = v20[4];
        if ((v20[3] - v23) > 2)
        {
          v27 = v20;
          v26 = 3;
          v25 = "any";
          goto LABEL_45;
        }

        v25 = "any";
        v26 = 3;
LABEL_41:
        v20 = llvm::raw_ostream::write(v20, v25, v26);
        goto LABEL_46;
      }

LABEL_34:
      if ((v22 & 0x80000000) == 0)
      {
        v25 = v21;
      }

      else
      {
        v25 = *v21;
      }

      if ((v22 & 0x80000000) == 0)
      {
        v26 = v22;
      }

      else
      {
        v26 = *(v21 + 8);
      }

      v24 = v20 + 4;
      v23 = v20[4];
      if (v26 > v20[3] - v23)
      {
        goto LABEL_41;
      }

      if (v26)
      {
        v27 = v20;
LABEL_45:
        memcpy(v23, v25, v26);
        *v24 += v26;
        v20 = v27;
      }

LABEL_46:
      v28 = v20[4];
      if (v28 < v20[3])
      {
        v20[4] = v28 + 1;
        *v28 = 39;
        ++v17;
        v18 -= 8;
        if (!v18)
        {
          break;
        }
      }

      else
      {
        llvm::raw_ostream::write(v20, 39);
        ++v17;
        v18 -= 8;
        if (!v18)
        {
          break;
        }
      }
    }
  }

LABEL_48:
  v29 = v34;
  if (v34 >= v33)
  {
    llvm::raw_ostream::write(&v30, 93);
  }

  else
  {
    v34 = (v34 + 1);
    *v29 = 93;
  }

  llvm::raw_ostream::~raw_ostream(&v30);
}

void mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(mlir::detail::OpToOpPassAdaptor *this, char a2)
{
  v124 = *MEMORY[0x1E69E9840];
  v113 = a2;
  v3 = *(this + 5);
  v4 = *(this + 6);
  v112 = v4;
  Context = mlir::Attribute::getContext(((v3 & 0xFFFFFFFFFFFFFFF8) + 24));
  v96 = this;
  v97 = Context;
  if (*(this + 94))
  {
    v6 = *(this + 46);
    v7 = *(v6 + 2);
    if (v7 == *(this + 88))
    {
      if (!v7)
      {
LABEL_9:
        v109 = 0;
        v110 = 0;
        v111 = 0;
        v12 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
        v13 = *(v12 + 44);
        if ((v13 & 0x7FFFFF) == 0)
        {
          v15 = 0;
          v14 = 0;
          threadid = llvm::get_threadid(Context);
          v103 = v96;
          v66 = *(v4 + 72);
          v65 = v66 & 0xFFFFFFFFFFFFFFF8;
          if ((v66 & 4) != 0)
          {
            goto LABEL_111;
          }

LABEL_108:
          if (v65)
          {
            do
            {
              v67 = *(v65 + 72);
              v65 = v67 & 0xFFFFFFFFFFFFFFF8;
            }

            while ((v67 & 4) == 0 && v65);
          }

LABEL_111:
          v100 = 0;
          v101 = v65;
          v68 = *(v96 + 94);
          __p = 0;
          v99 = 0;
          if (v68)
          {
            v69 = operator new(v68);
            __p = v69;
            v100 = &v69[v68];
            bzero(v69, v68);
            v99 = &v69[v68];
            v70 = v68 + 1;
            do
            {
              atomic_store(0, v69++);
              --v70;
            }

            while (v70 > 1);
          }

          *&v104 = &__p;
          *(&v104 + 1) = v96;
          v105 = &v113;
          v106 = &v101;
          p_threadid = &threadid;
          v120 = v14;
          v71 = v15;
          v72 = -1431655765 * ((v15 - v14) >> 3);
          v119 = v72;
          if (v72)
          {
            if (!mlir::MLIRContext::isMultithreadingEnabled(v97) || v72 == 1)
            {
              if (v14 == v71)
              {
                goto LABEL_142;
              }

              p_p = &__p;
              v78 = &v113;
              v79 = &v101;
              v80 = &threadid;
              v81 = v14;
              while (1)
              {
                v82 = *(&v104 + 1);
                v83 = *p_p;
                v84 = p_p[1];
                if (v83 == v84)
                {
                  v86 = v83;
                }

                else
                {
                  do
                  {
                    v85 = 0;
                    atomic_compare_exchange_strong(v83, &v85, 1u);
                    if (!v85)
                    {
                      goto LABEL_133;
                    }

                    ++v83;
                  }

                  while (v83 != v84);
                  LODWORD(v83) = v84;
LABEL_133:
                  v86 = v83;
                  v78 = v105;
                  v79 = v106;
                  v83 = *v104;
                  v80 = p_threadid;
                }

                v87 = (v86 - v83);
                v88 = (*(*(v82 + 368) + 24 * v87) + 8 * *v81);
                v89 = mlir::detail::OpToOpPassAdaptor::runPipeline(v88, *(v81 + 1), *(v81 + 2), *v78, *(*v88 + 64), *v79, v80);
                p_p = v104;
                atomic_store(0, (*v104 + v87));
                if ((v89 & 1) == 0)
                {
                  goto LABEL_141;
                }

                v81 = v120 + 6;
                v120 = v81;
                if (v81 == v71)
                {
                  goto LABEL_142;
                }
              }
            }

            mlir::ParallelDiagnosticHandler::ParallelDiagnosticHandler(v118, v97);
            v117 = 0;
            v116 = 0;
            MemorySpace = mlir::MemRefType::getMemorySpace(v97);
            v73 = MemorySpace;
            v74 = (*(*MemorySpace + 40))();
            if (v74 < v72)
            {
              v72 = v74;
            }

            if (v74)
            {
              do
              {
                v75 = MemorySpace;
                v76 = operator new(0x38uLL);
                *v76 = &unk_1F5B01C18;
                *(v76 + 1) = &v116;
                *(v76 + 2) = &v117;
                *(v76 + 3) = &v119;
                *(v76 + 4) = v118;
                *(v76 + 5) = &v104;
                *(v76 + 6) = &v120;
                v123 = v76;
                llvm::ThreadPoolInterface::asyncImpl<void>(v75, &v121, &MemorySpace, &v114);
                if (v123 == &v121)
                {
                  (*(*v123 + 32))(v123);
                }

                else if (v123)
                {
                  (*(*v123 + 40))();
                }

                std::shared_future<void>::~shared_future(&v114);
                --v72;
              }

              while (v72);
              v90 = MemorySpace;
            }

            else
            {
              v90 = v73;
            }

            (*(*v90 + 32))(v90, &MemorySpace);
            v91 = atomic_load(&v116);
            (*(*MemorySpace + 32))(MemorySpace, &MemorySpace);
            mlir::ParallelDiagnosticHandler::~ParallelDiagnosticHandler(v118);
            if (v91)
            {
LABEL_141:
              *(v96 + 5) |= 4uLL;
            }
          }

LABEL_142:
          if (__p)
          {
            v99 = __p;
            operator delete(__p);
          }

          llvm::deallocate_buffer(v109, (16 * v111));
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = (((v12 + 16 * ((v13 >> 23) & 1) + ((v13 >> 21) & 0x7F8) + 64) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v12 + 40));
        v92 = v17 + 24 * (v13 & 0x7FFFFF);
        while (1)
        {
          mlir::Region::OpIterator::OpIterator(&v121, v17, 0);
          v93 = v17;
          mlir::Region::OpIterator::OpIterator(&v106, v17, 1);
          v19 = v122;
          v105 = v122;
          v104 = v121;
          v20 = v108;
          v94 = v108;
          if (v122 != v108)
          {
            break;
          }

LABEL_11:
          v17 = (v93 + 24);
          if (v93 + 24 == v92)
          {
            v63 = v112;
            threadid = llvm::get_threadid(v19);
            v103 = v96;
            v64 = *(v63 + 72);
            v65 = v64 & 0xFFFFFFFFFFFFFFF8;
            if ((v64 & 4) != 0)
            {
              goto LABEL_111;
            }

            goto LABEL_108;
          }
        }

        while (1)
        {
          v21 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v19, v18);
          v22 = *(v21 + 6);
          v23 = v111;
          if (!v111)
          {
            break;
          }

          v24 = ((v22 >> 4) ^ (v22 >> 9)) & (v111 - 1);
          v25 = v109 + 16 * v24;
          v26 = *v25;
          if (v22 == *v25)
          {
            goto LABEL_69;
          }

          v27 = 0;
          v28 = 1;
          while (v26 != -4096)
          {
            if (v27)
            {
              v29 = 0;
            }

            else
            {
              v29 = v26 == -8192;
            }

            if (v29)
            {
              v27 = v25;
            }

            v30 = v24 + v28++;
            v24 = v30 & (v111 - 1);
            v25 = v109 + 16 * v24;
            v26 = *v25;
            if (v22 == *v25)
            {
              goto LABEL_69;
            }
          }

          if (v27)
          {
            v25 = v27;
          }

          v56 = v110;
          if (4 * v110 + 4 >= 3 * v111)
          {
            break;
          }

          if (v111 + ~v110 - HIDWORD(v110) <= v111 >> 3)
          {
            goto LABEL_89;
          }

LABEL_29:
          v31 = v16;
          v32 = v14;
          LODWORD(v110) = v56 + 1;
          if (*v25 != -4096)
          {
            --HIDWORD(v110);
          }

          *v25 = v22;
          v25[8] = 0;
          v25[12] = 0;
          v33 = *(v96 + 43);
          v34 = *(v96 + 88);
          v35 = &v33[v34];
          if (v34)
          {
            v95 = v15;
            v36 = *(v21 + 6);
            while (1)
            {
              v37 = *v33;
              v38 = *(*v33 + 23);
              if (v38 < 0)
              {
                if (v37[1])
                {
LABEL_39:
                  if ((v37[4] & 1) == 0)
                  {
                    if (v38 >= 0)
                    {
                      v39 = *v33;
                    }

                    else
                    {
                      v39 = *v37;
                    }

                    if (v38 >= 0)
                    {
                      v40 = *(*v33 + 23);
                    }

                    else
                    {
                      v40 = v37[1];
                    }

                    mlir::OperationName::OperationName(&__p, v39, v40, v97);
                    if ((v37[4] & 1) == 0)
                    {
                      *(v37 + 32) = 1;
                    }

                    v37[3] = __p;
                  }
                }
              }

              else if (*(*v33 + 23))
              {
                goto LABEL_39;
              }

              if (v37[4])
              {
                if (v37[3] == v36)
                {
                  goto LABEL_60;
                }
              }

              else
              {
                v41 = *(v36 + 16);
                if (v41 == &mlir::detail::TypeIDResolver<void,void>::id)
                {
                  v42 = 0;
                }

                else
                {
                  v42 = v36;
                }

                if (v41 != &mlir::detail::TypeIDResolver<void,void>::id)
                {
                  {
                    mlir::detail::OpPassManagerImpl::canScheduleOn();
                  }

                  if ((*(*v42 + 32))(v42, mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id))
                  {
                    v44 = v37[5];
                    v43 = v37[6];
                    if (v44 == v43)
                    {
LABEL_60:
                      v15 = v95;
                      break;
                    }

                    while (((*(**v44 + 72))(*v44, v42) & 1) != 0)
                    {
                      if (++v44 == v43)
                      {
                        goto LABEL_60;
                      }
                    }
                  }
                }
              }

              if (++v33 == v35)
              {
                v14 = v32;
                v16 = v31;
                v15 = v95;
                goto LABEL_68;
              }
            }
          }

          if (v33 == v35)
          {
            v14 = v32;
          }

          else
          {
            v14 = v32;
            if (v33)
            {
              v45 = *(v96 + 43);
              if ((v25[12] & 1) == 0)
              {
                v25[12] = 1;
              }

              *(v25 + 2) = (v33 - v45) >> 3;
            }
          }

          v16 = v31;
LABEL_68:
          v20 = v94;
LABEL_69:
          if (v25[12] == 1)
          {
            v46 = mlir::AnalysisManager::nest(&v112, v21);
            v47 = *(v25 + 2);
            if (v15 < v16)
            {
              *v15 = v47;
              *(v15 + 1) = v21;
              *(v15 + 2) = v46;
              v15 += 24;
            }

            else
            {
              v48 = v15 - v14;
              v49 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v14) >> 3);
              v50 = v49 + 1;
              if (v49 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
              }

              if (0x5555555555555556 * ((v16 - v14) >> 3) > v50)
              {
                v50 = 0x5555555555555556 * ((v16 - v14) >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v16 - v14) >> 3) >= 0x555555555555555)
              {
                v51 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v51 = v50;
              }

              if (v51)
              {
                if (v51 > 0xAAAAAAAAAAAAAAALL)
                {
                  std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
                }

                v52 = v46;
                v53 = operator new(24 * v51);
                v46 = v52;
              }

              else
              {
                v53 = 0;
              }

              v54 = &v53[24 * v49];
              v16 = &v53[24 * v51];
              *v54 = v47;
              *(v54 + 1) = v21;
              *(v54 + 2) = v46;
              v15 = v54 + 24;
              v55 = &v54[24 * (v48 / -24)];
              memcpy(v55, v14, v48);
              if (v14)
              {
                operator delete(v14);
              }

              v14 = v55;
            }
          }

          mlir::Region::OpIterator::operator++(&v121);
          v19 = v122;
          if (v122 == v20)
          {
            goto LABEL_11;
          }
        }

        v23 = 2 * v111;
LABEL_89:
        llvm::DenseMap<mlir::Region *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,std::pair<unsigned int,unsigned int>>>::grow(&v109, v23);
        if (v111)
        {
          v57 = (v111 - 1) & ((v22 >> 4) ^ (v22 >> 9));
          v25 = v109 + 16 * v57;
          v58 = *v25;
          if (v22 != *v25)
          {
            v59 = 0;
            v60 = 1;
            while (v58 != -4096)
            {
              if (v59)
              {
                v61 = 0;
              }

              else
              {
                v61 = v58 == -8192;
              }

              if (v61)
              {
                v59 = v25;
              }

              v62 = v57 + v60++;
              v57 = v62 & (v111 - 1);
              v25 = v109 + 16 * v57;
              v58 = *v25;
              if (v22 == *v25)
              {
                goto LABEL_101;
              }
            }

            if (v59)
            {
              v25 = v59;
            }
          }
        }

        else
        {
          v25 = 0;
        }

LABEL_101:
        v56 = v110;
        goto LABEL_29;
      }

      v8 = *v6;
      v9 = *(this + 43);
      while (*(*v8 + 48) - *(*v8 + 40) == *(*v9 + 48) - *(*v9 + 40))
      {
        v9 += 8;
        v8 += 8;
        if (!--v7)
        {
          goto LABEL_9;
        }
      }
    }
  }

  v10 = mlir::MemRefType::getMemorySpace(Context);
  v11 = (*(*v10 + 40))(v10);
  llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpPassManager,1u>>::assign(this + 368, v11, this + 344);
  goto LABEL_9;
}

uint64_t mlir::detail::OpToOpPassAdaptor::runOnOperationImpl(mlir::detail::OpToOpPassAdaptor *this, unsigned int a2)
{
  v39 = *(this + 6);
  result = llvm::get_threadid(this);
  v38[0] = result;
  v38[1] = this;
  v36 = this;
  v5 = *(v39 + 72);
  v6 = v5 & 0xFFFFFFFFFFFFFFF8;
  if ((v5 & 4) == 0 && v6)
  {
    do
    {
      v7 = *(v6 + 72);
      v6 = v7 & 0xFFFFFFFFFFFFFFF8;
    }

    while ((v7 & 4) == 0 && v6);
  }

  v8 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 44);
  v10 = v9 & 0x7FFFFF;
  if ((v9 & 0x7FFFFF) != 0)
  {
    v11 = ((v8 + 16 * ((v9 >> 23) & 1) + ((v9 >> 21) & 0x7F8) + 64) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v8 + 40);
    v32 = v11 + 24 * v10;
    while (1)
    {
      v12 = *(v11 + 8);
      v33 = v11;
      if (v12 != v11)
      {
        break;
      }

LABEL_8:
      v11 += 24;
      if (v11 == v32)
      {
        return result;
      }
    }

    while (1)
    {
      v13 = v12 - 8;
      v34 = v12;
      if (!v12)
      {
        v13 = 0;
      }

      v14 = *(v13 + 40);
      v37 = v13 + 32;
      if (v14 != v13 + 32)
      {
        break;
      }

LABEL_10:
      v11 = v33;
      v12 = *(v34 + 8);
      if (v12 == v33)
      {
        goto LABEL_8;
      }
    }

    while (1)
    {
      v15 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v14, v4);
      v16 = *(v36 + 43);
      v17 = *(v36 + 88);
      v18 = v15[6];
      result = mlir::Attribute::getContext((v15 + 3));
      v19 = &v16[v17];
      if (v17)
      {
        break;
      }

LABEL_45:
      if (v16 != v19 && v16 != 0)
      {
        v30 = *(*v16 + 64);
        v31 = mlir::AnalysisManager::nest(&v39, v15);
        result = mlir::detail::OpToOpPassAdaptor::runPipeline(v16, v15, v31, a2, v30, v6, v38);
        if ((result & 1) == 0)
        {
          *(v36 + 5) |= 4uLL;
          return result;
        }
      }

LABEL_15:
      v14 = *(v14 + 8);
      if (v14 == v37)
      {
        goto LABEL_10;
      }
    }

    v20 = result;
    while (1)
    {
      v21 = *v16;
      v22 = *(*v16 + 23);
      if (v22 < 0)
      {
        if (!*(v21 + 8))
        {
          goto LABEL_34;
        }
      }

      else if (!*(*v16 + 23))
      {
        goto LABEL_34;
      }

      if ((*(v21 + 32) & 1) == 0)
      {
        if (v22 >= 0)
        {
          v23 = *v16;
        }

        else
        {
          v23 = *v21;
        }

        if (v22 >= 0)
        {
          v24 = *(*v16 + 23);
        }

        else
        {
          v24 = *(v21 + 8);
        }

        result = mlir::OperationName::OperationName(&v40, v23, v24, v20);
        if ((*(v21 + 32) & 1) == 0)
        {
          *(v21 + 32) = 1;
        }

        *(v21 + 24) = v40;
      }

LABEL_34:
      if (*(v21 + 32))
      {
        if (*(v21 + 24) == v18)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v25 = *(v18 + 16);
        if (v25 == &mlir::detail::TypeIDResolver<void,void>::id)
        {
          v26 = 0;
        }

        else
        {
          v26 = v18;
        }

        if (v25 != &mlir::detail::TypeIDResolver<void,void>::id)
        {
          {
            mlir::detail::OpPassManagerImpl::canScheduleOn();
          }

          result = (*(*v26 + 32))(v26, mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id);
          if (result)
          {
            v27 = *(v21 + 40);
            v28 = *(v21 + 48);
            if (v27 == v28)
            {
              goto LABEL_45;
            }

            while (1)
            {
              result = (*(**v27 + 72))(*v27, v26);
              if ((result & 1) == 0)
              {
                break;
              }

              if (++v27 == v28)
              {
                goto LABEL_45;
              }
            }
          }
        }
      }

      if (++v16 == v19)
      {
        goto LABEL_15;
      }
    }
  }

  return result;
}

uint64_t mlir::AnalysisManager::nest(mlir::AnalysisManager *this, mlir::Operation *a2)
{
  v3 = a2;
  v26 = *MEMORY[0x1E69E9840];
  v4 = *(*this + 24);
  ParentOp = *(a2 + 2);
  if (ParentOp)
  {
    ParentOp = mlir::Block::getParentOp(*(a2 + 2));
    v3 = a2;
  }

  if (v4 == ParentOp)
  {
    v20[0] = v3;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>,mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::try_emplace<>(*this, v20, &v23);
    if (v25[0] == 1)
    {
      v15 = operator new(0x50uLL);
      v16 = v20[0];
      v17 = *this;
      *v15 = 0;
      v15[1] = 0;
      *(v15 + 4) = 0;
      v15[4] = 0;
      v15[5] = 0;
      v15[3] = v16;
      v15[9] = v17 & 0xFFFFFFFFFFFFFFFBLL;
      *(v15 + 12) = 0;
      v15[7] = v15 + 9;
      v15[8] = 0;
      v22 = 0;
      std::unique_ptr<mlir::detail::NestedAnalysisMap>::reset[abi:nn200100](v23 + 1, v15);
      std::unique_ptr<mlir::detail::NestedAnalysisMap>::reset[abi:nn200100](&v22, 0);
    }

    return *(v23 + 1);
  }

  else
  {
    v23 = v25;
    v24 = 0x400000000;
    do
    {
      v7 = v24;
      if (v24 >= HIDWORD(v24))
      {
        v8 = v3;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v24 + 1, 8);
        v3 = v8;
        v7 = v24;
      }

      *(v23 + v7) = v3;
      LODWORD(v24) = v24 + 1;
      v3 = *(v3 + 2);
      if (v3)
      {
        v3 = mlir::Block::getParentOp(v3);
      }
    }

    while (v3 != v4);
    v9 = *this;
    v10 = v23;
    if (v24)
    {
      v11 = 8 * v24;
      v12 = v23 - 8;
      do
      {
        v22 = *&v12[v11];
        llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>,mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::try_emplace<>(v9, &v22, v20);
        if (v21 == 1)
        {
          v13 = operator new(0x50uLL);
          v14 = v22;
          *v13 = 0;
          v13[1] = 0;
          *(v13 + 4) = 0;
          v13[4] = 0;
          v13[5] = 0;
          v13[3] = v14;
          v13[9] = v9 & 0xFFFFFFFFFFFFFFFBLL;
          *(v13 + 12) = 0;
          v13[7] = v13 + 9;
          v13[8] = 0;
          v19 = 0;
          std::unique_ptr<mlir::detail::NestedAnalysisMap>::reset[abi:nn200100]((v20[0] + 8), v13);
          std::unique_ptr<mlir::detail::NestedAnalysisMap>::reset[abi:nn200100](&v19, 0);
        }

        v9 = *(v20[0] + 8);
        v11 -= 8;
      }

      while (v11);
      v10 = v23;
    }

    if (v10 != v25)
    {
      free(v10);
    }
  }

  return v9;
}

void llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpPassManager,1u>>::assign(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 12) >= a2)
  {
    v6 = *(a1 + 8);
    if (v6 >= a2)
    {
      v7 = a2;
    }

    else
    {
      v7 = *(a1 + 8);
    }

    if (v7)
    {
      v8 = *a1;
      do
      {
        llvm::SmallVectorImpl<mlir::OpPassManager>::operator=(v8, a3);
        v8 += 24;
        --v7;
      }

      while (v7);
      v6 = *(a1 + 8);
    }

    v9 = v6 - a2;
    if (v6 >= a2)
    {
      if (v6 > a2)
      {
        v12 = 24 * v6;
        v13 = 24 * a2 - v12;
        v14 = (v12 + *a1 - 24);
        do
        {
          v14 = llvm::SmallVector<mlir::OpPassManager,1u>::~SmallVector(v14) - 3;
          v13 += 24;
        }

        while (v13);
      }
    }

    else
    {
      v10 = (*a1 + 24 * v6);
      do
      {
        *v10 = v10 + 2;
        v10[1] = 0x100000000;
        if (*(a3 + 8))
        {
          llvm::SmallVectorImpl<mlir::OpPassManager>::operator=(v10, a3);
        }

        v10 += 3;
      }

      while (!__CFADD__(v9++, 1));
    }

    *(a1 + 8) = a2;
  }

  else
  {

    llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpPassManager,1u>,false>::growAndAssign(a1, a2, a3);
  }
}

int64x2_t mlir::PassManager::PassManager(void *a1, uint64_t a2, _BYTE *a3, size_t a4, int a5)
{
  v6 = mlir::OpPassManager::OpPassManager(a1, a3, a4, a5);
  v6[1] = a2;
  *(v6 + 16) = 0;
  *(v6 + 20) = 0;
  v6[3] = 0;
  v6[4] = 0;
  result = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
  *(v6 + 5) = result;
  *(v6 + 56) = v6[7] & 0xFC | 2;
  return result;
}

uint64_t mlir::PassManager::PassManager(uint64_t a1, uint64_t a2, int a3)
{
  v6 = operator new(0x48uLL);
  v14 = *(a2 + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v14);
  if (AttrData)
  {
    v9 = v8;
    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v10 = AttrData;
    if (v8 >= 0x17)
    {
      if ((v8 | 7) == 0x17)
      {
        v12 = 25;
      }

      else
      {
        v12 = (v8 | 7) + 1;
      }

      v11 = operator new(v12);
      v6[1] = v9;
      v6[2] = v12 | 0x8000000000000000;
      *v6 = v11;
    }

    else
    {
      *(v6 + 23) = v8;
      v11 = v6;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    memmove(v11, v10, v9);
LABEL_12:
    *(v11 + v9) = 0;
    goto LABEL_13;
  }

  *v6 = 0;
  v6[1] = 0;
  v6[2] = 0;
LABEL_13:
  v6[3] = a2;
  *(v6 + 32) = 1;
  v6[6] = 0;
  v6[7] = 0;
  v6[5] = 0;
  *(v6 + 16) = 0;
  *(v6 + 17) = a3;
  *a1 = v6;
  v14 = *(a2 + 8);
  *(a1 + 8) = mlir::Attribute::getContext(&v14);
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
  *(a1 + 56) = *(a1 + 56) & 0xFC | 2;
  return a1;
}

void mlir::PassManager::~PassManager(mlir::PassManager *this)
{
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    mlir::detail::PassCrashReproducerGenerator::~PassCrashReproducerGenerator(v2);
    operator delete(v3);
  }

  std::unique_ptr<mlir::PassInstrumentor>::~unique_ptr[abi:nn200100](this + 3);
  v4 = *this;
  *this = 0;
  if (v4)
  {
    v5 = *(v4 + 40);
    if (v5)
    {
      v6 = *(v4 + 48);
      v7 = *(v4 + 40);
      if (v6 != v5)
      {
        do
        {
          v9 = *--v6;
          v8 = v9;
          *v6 = 0;
          if (v9)
          {
            (*(*v8 + 8))(v8);
          }
        }

        while (v6 != v5);
        v7 = *(v4 + 40);
      }

      *(v4 + 48) = v5;
      operator delete(v7);
    }

    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    operator delete(v4);
  }
}

uint64_t mlir::PassManager::enableVerifier(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(this + 56) = *(this + 56) & 0xFD | v2;
  return this;
}

BOOL mlir::PassManager::run(mlir::PassManager *this, Location a2)
{
  v94 = *MEMORY[0x1E69E9840];
  v5 = *this;
  v4 = *(this + 1);
  v6 = *(*this + 23);
  if (v6 < 0)
  {
    if (!v5[1])
    {
      goto LABEL_15;
    }
  }

  else if (!*(*this + 23))
  {
    goto LABEL_15;
  }

  if ((v5[4] & 1) == 0)
  {
    if (v6 >= 0)
    {
      v7 = *this;
    }

    else
    {
      v7 = *v5;
    }

    if (v6 >= 0)
    {
      v8 = *(*this + 23);
    }

    else
    {
      v8 = v5[1];
    }

    mlir::OperationName::OperationName(&v78, v7, v8, v4);
    v9 = v78;
    if ((v5[4] & 1) == 0)
    {
      *(v5 + 32) = 1;
    }

    v5[3] = v9;
  }

LABEL_15:
  if ((v5[4] & 1) == 0 || *(a2.var0.var0 + 6) == v5[3])
  {
    mlir::DialectRegistry::DialectRegistry(&v69);
    v17 = *(*this + 40);
    v18 = *(*this + 48);
    while (v17 != v18)
    {
      v19 = *v17++;
      (*(*v19 + 24))(v19, &v69);
    }

    mlir::MLIRContext::appendDialectRegistry(v4, &v69);
    v20 = v69;
    if (v69 != &v70)
    {
      do
      {
        v30 = *(v20 + 55);
        if (v30 >= 0)
        {
          v31 = (v20 + 4);
        }

        else
        {
          v31 = v20[4];
        }

        if (v30 >= 0)
        {
          v32 = *(v20 + 55);
        }

        else
        {
          v32 = v20[5];
        }

        mlir::MLIRContext::getOrLoadDialect(v4, v31, v32);
        v33 = v20[1];
        if (v33)
        {
          do
          {
            v34 = v33;
            v33 = *v33;
          }

          while (v33);
        }

        else
        {
          do
          {
            v34 = v20[2];
            v35 = *v34 == v20;
            v20 = v34;
          }

          while (!v35);
        }

        v20 = v34;
      }

      while (v34 != &v70);
    }

    if (mlir::detail::OpPassManagerImpl::finalizePassList(*this, v4))
    {
      MPSGraphDelegateCompiler.precompilationDescriptor.modify(v4, v21);
      RegistryHash = mlir::MLIRContext::getRegistryHash(v4);
      v23 = mlir::OpPassManager::hash(this);
      if (RegistryHash == *(this + 5) && v23 == *(this + 6))
      {
LABEL_34:
        v78 = 0;
        v79 = 0;
        v80 = 0;
        v82 = 0;
        v83 = 0;
        var0 = a2.var0.var0;
        v84 = 0;
        v24 = *(this + 4);
        v25 = *(this + 3) | 4;
        v86 = 0;
        v87[0] = v25;
        v85 = v87;
        if (v24)
        {
          mlir::PassManager::runWithCrashRecovery(this, a2.var0.var0, &v78);
          MPSGraphDelegateCompiler.precompilationDescriptor.modify(v4, v26);
          if (*(this + 20) != 1)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v55 = *(this + 56);
          v56 = *this;
          v57 = *(*this + 64);
          v77 = &v78;
          v58 = *(v56 + 40);
          v59 = *(v56 + 48);
          if (v58 != v59)
          {
            v60 = (v55 >> 1) & 1;
            do
            {
              if (!mlir::detail::OpToOpPassAdaptor::run(*v58, a2.var0.var0, &v78, v60, v57))
              {
                break;
              }

              ++v58;
            }

            while (v58 != v59);
          }

          mlir::AnalysisManager::clear(&v77);
          MPSGraphDelegateCompiler.precompilationDescriptor.modify(v4, v65);
          if (*(this + 20) != 1)
          {
LABEL_37:
            v27 = v85;
            if (v86)
            {
              v28 = v85 - 8;
              v29 = 16 * v86;
              do
              {
                v36 = *&v28[v29];
                *&v28[v29] = 0;
                if (v36)
                {
                  (*(*v36 + 8))(v36);
                }

                v29 -= 16;
              }

              while (v29);
              v27 = v85;
            }

            if (v27 != v87)
            {
              free(v27);
            }

            llvm::deallocate_buffer(v82, (16 * v84));
          }
        }

        mlir::PassManager::dumpStatistics(this);
        goto LABEL_37;
      }

      if (mlir::OpPassManager::initialize(this, v4, *(*this + 64) + 1))
      {
        *(this + 5) = RegistryHash;
        goto LABEL_34;
      }
    }

    v37 = v75;
    if (v76)
    {
      v61 = v75 - 8;
      v62 = 16 * v76;
      do
      {
        v63 = *&v61[v62];
        *&v61[v62] = 0;
        if (v63)
        {
          (*(*v63 + 8))(v63);
        }

        v62 -= 16;
      }

      while (v62);
      v37 = v75;
    }

    if (v37 != &v77)
    {
      free(v37);
    }

    llvm::deallocate_buffer(v72, (16 * v74));
  }

  mlir::emitError(*(a2.var0.var0 + 3), a2, &v78);
  if (v78)
  {
    LODWORD(v69) = 3;
    v70 = "can't run '";
    v71 = 11;
    v10 = &v69;
    v11 = var0;
    if (v82 >= HIDWORD(v82))
    {
      if (var0 <= &v69 && var0 + 24 * v82 > &v69)
      {
        v66 = &v69 - var0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&var0, &v83, v82 + 1, 24);
        v11 = var0;
        v10 = (var0 + v66);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&var0, &v83, v82 + 1, 24);
        v10 = &v69;
        v11 = var0;
      }
    }

    v12 = &v11[24 * v82];
    v13 = *v10;
    *(v12 + 2) = v10[2];
    *v12 = v13;
    LODWORD(v82) = v82 + 1;
  }

  v14 = *this;
  v15 = *(*this + 23);
  if ((v15 & 0x8000000000000000) == 0)
  {
    if (*(*this + 23))
    {
      goto LABEL_22;
    }

LABEL_62:
    v14 = "any";
    v15 = 3;
    if (!v78)
    {
      goto LABEL_69;
    }

    goto LABEL_63;
  }

  if (!*(v14 + 1))
  {
    goto LABEL_62;
  }

LABEL_22:
  v16 = *(v14 + 1);
  if (v15 < 0)
  {
    v14 = *v14;
    v15 = v16;
  }

  if (v78)
  {
LABEL_63:
    v73 = 261;
    v69 = v14;
    v70 = v15;
    mlir::Diagnostic::operator<<(&v79, &v69);
    if (v78)
    {
      LODWORD(v69) = 3;
      v70 = "' pass manager on '";
      v71 = 19;
      v38 = &v69;
      v39 = var0;
      if (v82 >= HIDWORD(v82))
      {
        if (var0 <= &v69 && var0 + 24 * v82 > &v69)
        {
          v67 = &v69 - var0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&var0, &v83, v82 + 1, 24);
          v39 = var0;
          v38 = (var0 + v67);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&var0, &v83, v82 + 1, 24);
          v38 = &v69;
          v39 = var0;
        }
      }

      v40 = &v39[24 * v82];
      v41 = *v38;
      *(v40 + 2) = v38[2];
      *v40 = v41;
      LODWORD(v82) = v82 + 1;
      if (v78)
      {
        mlir::Diagnostic::operator<<(&v79, *(a2.var0.var0 + 6));
        if (v78)
        {
          LODWORD(v69) = 3;
          v70 = "' op";
          v71 = 4;
          v42 = &v69;
          v43 = var0;
          if (v82 >= HIDWORD(v82))
          {
            if (var0 <= &v69 && var0 + 24 * v82 > &v69)
            {
              v68 = &v69 - var0;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&var0, &v83, v82 + 1, 24);
              v43 = var0;
              v42 = (var0 + v68);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&var0, &v83, v82 + 1, 24);
              v42 = &v69;
              v43 = var0;
            }
          }

          v44 = &v43[24 * v82];
          v45 = *v42;
          *(v44 + 2) = v42[2];
          *v44 = v45;
          LODWORD(v82) = v82 + 1;
        }
      }
    }
  }

LABEL_69:
  v46 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v78);
  if (v78)
  {
    mlir::InFlightDiagnostic::report(&v78);
  }

  if (v93 == 1)
  {
    if (v92 != &v93)
    {
      free(v92);
    }

    v47 = __p;
    if (__p)
    {
      v48 = v91;
      v49 = __p;
      if (v91 != __p)
      {
        do
        {
          v48 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v48 - 1);
        }

        while (v48 != v47);
        v49 = __p;
      }

      v91 = v47;
      operator delete(v49);
    }

    v50 = v88;
    if (v88)
    {
      v51 = v89;
      v52 = v88;
      if (v89 != v88)
      {
        do
        {
          v54 = *--v51;
          v53 = v54;
          *v51 = 0;
          if (v54)
          {
            operator delete[](v53);
          }
        }

        while (v51 != v50);
        v52 = v88;
      }

      v89 = v50;
      operator delete(v52);
    }

    if (var0 != &v83)
    {
      free(var0);
    }
  }

  return v46;
}

uint64_t mlir::PassManager::runPasses(unsigned __int8 *a1, mlir *a2, mlir::detail::NestedAnalysisMap *a3)
{
  v3 = a1[56];
  v4 = *a1;
  v5 = *(*a1 + 64);
  v13 = a3;
  v6 = *(v4 + 40);
  v7 = *(v4 + 48);
  if (v6 == v7)
  {
LABEL_5:
    v11 = 1;
  }

  else
  {
    v10 = (v3 >> 1) & 1;
    while (mlir::detail::OpToOpPassAdaptor::run(*v6, a2, a3, v10, v5))
    {
      if (++v6 == v7)
      {
        goto LABEL_5;
      }
    }

    v11 = 0;
  }

  mlir::AnalysisManager::clear(&v13);
  return v11;
}

uint64_t mlir::PassManager::addInstrumentation(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    v4 = a2;
    v5 = operator new(8uLL);
    v6 = operator new(0x60uLL);
    *v6 = 0u;
    v6[1] = 0u;
    v6[2] = 0u;
    v6[3] = 0u;
    v6[4] = 0u;
    v6[5] = 0u;
    MEMORY[0x1E12E57B0]();
    v3 = v5;
    *(v6 + 16) = 0;
    *(v6 + 10) = 0;
    *(v6 + 11) = 0;
    *(v6 + 9) = 0;
    *v5 = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v3;
    if (v7)
    {
      v8 = *v7;
      *v7 = 0;
      if (v8)
      {
        v9 = *(v8 + 72);
        if (v9)
        {
          v10 = *(v8 + 80);
          v11 = *(v8 + 72);
          if (v10 != v9)
          {
            do
            {
              v13 = *--v10;
              v12 = v13;
              *v10 = 0;
              if (v13)
              {
                (*(*v12 + 8))(v12);
              }
            }

            while (v10 != v9);
            v11 = *(v8 + 72);
          }

          *(v8 + 80) = v9;
          operator delete(v11);
        }

        std::recursive_mutex::~recursive_mutex(v8);
        operator delete(v14);
      }

      operator delete(v7);
      v3 = *(a1 + 24);
    }

    a2 = v4;
  }

  v15 = *a2;
  *a2 = 0;
  v18 = v15;
  mlir::PassInstrumentor::addInstrumentation(v3, &v18);
  result = v18;
  if (v18)
  {
    v17 = *(*v18 + 8);

    return v17();
  }

  return result;
}

void mlir::PassInstrumentor::addInstrumentation(std::recursive_mutex **a1, uint64_t *a2)
{
  v4 = *a1;
  std::recursive_mutex::lock(*a1);
  v5 = *a1;
  v7 = *&(*a1)[1].__m_.__opaque[8];
  v6 = *&(*a1)[1].__m_.__opaque[16];
  if (v7 >= v6)
  {
    v10 = *v5[1].__m_.__opaque;
    v11 = v7 - v10;
    v12 = (v7 - v10) >> 3;
    v13 = v12 + 1;
    if ((v12 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v14 = v6 - v10;
    if (v14 >> 2 > v13)
    {
      v13 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      if (v15 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v16 = operator new(8 * v15);
    }

    else
    {
      v16 = 0;
    }

    v17 = &v16[8 * v12];
    v18 = *a2;
    *a2 = 0;
    *v17 = v18;
    v9 = v17 + 8;
    memcpy(v16, v10, v11);
    *v5[1].__m_.__opaque = v16;
    *&v5[1].__m_.__opaque[8] = v9;
    *&v5[1].__m_.__opaque[16] = &v16[8 * v15];
    if (v10)
    {
      operator delete(v10);
    }
  }

  else
  {
    v8 = *a2;
    *a2 = 0;
    *v7 = v8;
    v9 = v7 + 8;
  }

  *&v5[1].__m_.__opaque[8] = v9;

  std::recursive_mutex::unlock(v4);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>,mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::try_emplace<>@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 16);
  if (!v4)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v5 = *result;
  v6 = v4 - 1;
  v7 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
  v8 = (*result + 16 * v7);
  v9 = *v8;
  if (*a2 != *v8)
  {
    v12 = 0;
    v13 = 1;
    while (v9 != -4096)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v9 == -8192;
      }

      if (v14)
      {
        v12 = v8;
      }

      v15 = v7 + v13++;
      v7 = v15 & v6;
      v8 = (v5 + 16 * (v15 & v6));
      v9 = *v8;
      if (*a2 == *v8)
      {
        goto LABEL_3;
      }
    }

    if (v12)
    {
      v8 = v12;
    }

LABEL_5:
    v18 = v8;
    v11 = *(result + 8);
    if (4 * v11 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v11 - *(result + 12) > v4 >> 3)
    {
      *(result + 8) = v11 + 1;
      if (*v8 == -4096)
      {
LABEL_9:
        *v8 = *a2;
        v8[1] = 0;
        v5 = *result;
        v4 = *(result + 16);
        v10 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v16 = result;
    v17 = a3;
    llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>,mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>::LookupBucketFor<mlir::Operation *>(v16, a2, &v18);
    result = v16;
    a3 = v17;
    v8 = v18;
    ++*(v16 + 8);
    if (*v8 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v10 = 0;
LABEL_10:
  *a3 = v8;
  *(a3 + 8) = v5 + 16 * v4;
  *(a3 + 16) = v10;
  return result;
}

void mlir::detail::NestedAnalysisMap::invalidate(mlir::detail::NestedAnalysisMap *this, const mlir::detail::PreservedAnalyses *a2)
{
  v21[6] = *MEMORY[0x1E69E9840];
  if (!mlir::detail::PreservedAnalyses::isAll(a2))
  {
    llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v18, v21, a2);
    _ZN4llvm9MapVectorIN4mlir6TypeIDENSt3__110unique_ptrINS1_6detail15AnalysisConceptENS3_14default_deleteIS6_EEEENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorINS3_4pairIS2_S9_EELj0EEEE9remove_ifIZNS5_11AnalysisMap10invalidateERKNS5_17PreservedAnalysesEEUlRT_E_EEvSR_(this + 32, &v18);
    if (v19 != v18)
    {
      free(v19);
    }

    if (*(a2 + 5) == *(a2 + 6))
    {
      v4 = *(this + 2);
      if (v4 || *(this + 3))
      {
        v5 = *(this + 4);
        if (v5 > 4 * v4 && v5 >= 0x41)
        {
          llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::shrink_and_clear(this);
          return;
        }

        if (v5)
        {
          v15 = (*this + 8);
          for (i = 16 * v5; i; i -= 16)
          {
            v17 = *(v15 - 1);
            if (v17 != -8192)
            {
              if (v17 == -4096)
              {
                goto LABEL_36;
              }

              std::unique_ptr<mlir::detail::NestedAnalysisMap>::reset[abi:nn200100](v15, 0);
            }

            *(v15 - 1) = -4096;
LABEL_36:
            v15 += 2;
          }
        }

        *(this + 1) = 0;
      }
    }

    else
    {
      v18 = v20;
      HIDWORD(v19) = 8;
      v20[0] = this;
      v6 = 1;
      do
      {
        v7 = *(v18 + --v6);
        LODWORD(v19) = v6;
        if (*(v7 + 2))
        {
          v8 = *v7;
          v9 = *(v7 + 4);
          if (v9)
          {
            v10 = 16 * v9;
            v11 = v8;
            while ((*v11 | 0x1000) == 0xFFFFFFFFFFFFF000)
            {
              v11 += 16;
              v10 -= 16;
              if (!v10)
              {
                goto LABEL_12;
              }
            }
          }

          else
          {
            v11 = v8;
          }

          v12 = v8 + 16 * v9;
          if (v11 != v12)
          {
            do
            {
              mlir::detail::NestedAnalysisMap::invalidate(*(v11 + 8), a2);
              v13 = *(v11 + 8);
              if (*(v13 + 8))
              {
                v14 = v19;
                if (v19 >= HIDWORD(v19))
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v18, v20, v19 + 1, 8);
                  v14 = v19;
                }

                *(v18 + v14) = v13;
                LODWORD(v19) = v19 + 1;
              }

              do
              {
                v11 += 16;
              }

              while (v11 != v12 && (*v11 | 0x1000) == 0xFFFFFFFFFFFFF000);
            }

            while (v11 != v12);
            v6 = v19;
          }
        }

LABEL_12:
        ;
      }

      while (v6);
      if (v18 != v20)
      {
        free(v18);
      }
    }
  }
}

void mlir::PassInstrumentor::runBeforeAnalysis(std::recursive_mutex **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  std::recursive_mutex::lock(*a1);
  v11 = *a1;
  v12 = *(*a1)[1].__m_.__opaque;
  v13 = *&v11[1].__m_.__opaque[8];
  while (v12 != v13)
  {
    v14 = *v12++;
    (*(*v14 + 56))(v14, a2, a3, a4, a5);
  }

  std::recursive_mutex::unlock(v10);
}

void mlir::PassInstrumentor::runAfterAnalysis(std::recursive_mutex **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  std::recursive_mutex::lock(*a1);
  v12 = *(*a1)[1].__m_.__opaque;
  for (i = *&(*a1)[1].__m_.__opaque[8]; i != v12; i -= 8)
  {
    v13 = *(i - 8);
    (*(*v13 + 64))(v13, a2, a3, a4, a5);
  }

  std::recursive_mutex::unlock(v10);
}

void mlir::detail::OpToOpPassAdaptor::~OpToOpPassAdaptor(mlir::detail::OpToOpPassAdaptor *this)
{
  *this = &unk_1F5B01A00;
  v2 = *(this + 46);
  v3 = *(this + 94);
  if (v3)
  {
    v4 = -24 * v3;
    v5 = &v2[24 * v3 - 24];
    do
    {
      v5 = llvm::SmallVector<mlir::OpPassManager,1u>::~SmallVector(v5) - 3;
      v4 += 24;
    }

    while (v4);
    v2 = *(this + 46);
  }

  if (v2 != this + 384)
  {
    free(v2);
  }

  llvm::SmallVector<mlir::OpPassManager,1u>::~SmallVector(this + 43);

  mlir::Pass::~Pass(this);
}

{
  *this = &unk_1F5B01A00;
  v2 = *(this + 46);
  v3 = *(this + 94);
  if (v3)
  {
    v4 = -24 * v3;
    v5 = &v2[24 * v3 - 24];
    do
    {
      v5 = llvm::SmallVector<mlir::OpPassManager,1u>::~SmallVector(v5) - 3;
      v4 += 24;
    }

    while (v4);
    v2 = *(this + 46);
  }

  if (v2 != this + 384)
  {
    free(v2);
  }

  llvm::SmallVector<mlir::OpPassManager,1u>::~SmallVector(this + 43);
  mlir::Pass::~Pass(this);

  operator delete(v6);
}

const char *mlir::PassWrapper<mlir::detail::OpToOpPassAdaptor,mlir::OperationPass<void>>::getName()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::detail::OpToOpPassAdaptor]";
  v6 = 81;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::PassWrapper<mlir::detail::OpToOpPassAdaptor,mlir::OperationPass<void>>::clonePass@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = operator new(0x240uLL);
  v5 = result;
  v6 = *(a1 + 8);
  *(result + 16) = *(a1 + 16);
  *(result + 32) = *(a1 + 32);
  *(result + 40) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0u;
  *(result + 144) = 0u;
  *(result + 160) = 0u;
  *(result + 176) = 0;
  *(result + 184) = result + 200;
  *(result + 192) = 0x400000000;
  *(result + 232) = result + 248;
  *(result + 240) = 0x400000000;
  *(result + 280) = 0;
  *(result + 288) = 0;
  *(result + 296) = 0;
  *(result + 300) = 16;
  *(result + 304) = 0u;
  *(result + 320) = 0u;
  *result = &unk_1F5B01A00;
  *(result + 8) = v6;
  *(result + 336) = 0;
  *(result + 344) = result + 360;
  *(result + 352) = 0x100000000;
  if (*(a1 + 352))
  {
    result = llvm::SmallVectorImpl<mlir::OpPassManager>::operator=(result + 344, a1 + 344);
  }

  *(v5 + 368) = v5 + 384;
  *(v5 + 376) = 0x800000000;
  if (*(a1 + 376))
  {
    result = llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpPassManager,1u>>::operator=(v5 + 368, a1 + 368);
  }

  *a2 = v5;
  return result;
}

void *llvm::support::detail::provider_format_adapter<llvm::StringLiteral const&>::format(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 8);
  if (a4)
  {
    v12 = 0;
    AsUnsignedInteger = llvm::getAsUnsignedInteger(a3, a4, 0xA, &v12);
    v7 = v12;
    if (AsUnsignedInteger)
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = -1;
  }

  v8 = *v5;
  if (*(v5 + 8) >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = *(v5 + 8);
  }

  result = a2[4];
  if (v9 > a2[3] - result)
  {
    return llvm::raw_ostream::write(a2, v8, v9);
  }

  if (v9)
  {
    v11 = v9;
    result = memcpy(result, v8, v9);
    a2[4] += v11;
  }

  return result;
}

const char *llvm::getTypeName<mlir::detail::PreservedAnalyses::AllAnalysesType>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::detail::PreservedAnalyses::AllAnalysesType]";
  v6 = 98;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::detail::OpToOpPassAdaptor::tryMergeInto(mlir::MLIRContext *,mlir::detail::OpToOpPassAdaptor&)::$_2::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 23);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = *(v2 + 8);
  }

  else
  {
    v4 = *(*a1 + 23);
  }

  if (!v4)
  {
    return 1;
  }

  if ((v3 & 0x80000000) == 0)
  {
    v5 = *a1;
  }

  else
  {
    v5 = *v2;
  }

  if ((v3 & 0x80000000) == 0)
  {
    v6 = v3;
  }

  else
  {
    v6 = *(v2 + 8);
  }

  v7 = *a2;
  v8 = *(*a2 + 23);
  if ((v8 & 0x8000000000000000) == 0)
  {
    if (*(*a2 + 23))
    {
      goto LABEL_13;
    }

    return 0xFFFFFFFFLL;
  }

  if (!v7[1])
  {
    return 0xFFFFFFFFLL;
  }

LABEL_13:
  if (v8 >= 0)
  {
    v9 = *(*a2 + 23);
  }

  else
  {
    v9 = v7[1];
  }

  if (v9 >= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v9;
  }

  if (v10)
  {
    v11 = v8 >= 0 ? *a2 : *v7;
    v12 = memcmp(v5, v11, v10);
    if (v12)
    {
      return (v12 >> 31) | 1u;
    }
  }

  if (v6 == v9)
  {
    return 0;
  }

  if (v6 < v9)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t _ZN4llvm9MapVectorIN4mlir6TypeIDENSt3__110unique_ptrINS1_6detail15AnalysisConceptENS3_14default_deleteIS6_EEEENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorINS3_4pairIS2_S9_EELj0EEEE9remove_ifIZNS5_11AnalysisMap10invalidateERKNS5_17PreservedAnalysesEEUlRT_E_EEvSR_(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 24);
  v4 = *(result + 32);
  if (v4)
  {
    v6 = *&v3 + 16 * v4;
    v7 = *(result + 24);
    do
    {
      result = (*(**(*&v3 + 8) + 16))(*(*&v3 + 8), a2);
      if (result)
      {
        v9 = v2[2].i32[0];
        if (v9)
        {
          v10 = *v2;
          v11 = v9 - 1;
          v12 = ((**&v3 >> 4) ^ (**&v3 >> 9)) & (v9 - 1);
          v13 = *(*v2 + 16 * (((**&v3 >> 4) ^ (**&v3 >> 9)) & v11));
          if (**&v3 == v13)
          {
LABEL_9:
            *(*&v10 + 16 * v12) = -8192;
            v2[1] = vadd_s32(v2[1], 0x1FFFFFFFFLL);
          }

          else
          {
            v17 = 1;
            while (v13 != -4096)
            {
              v18 = v12 + v17++;
              v12 = v18 & v11;
              v13 = *(*&v10 + 16 * v12);
              if (**&v3 == v13)
              {
                goto LABEL_9;
              }
            }
          }
        }
      }

      else
      {
        if (*&v3 != v7)
        {
          v14 = **&v3;
          v15 = *(*&v3 + 8);
          *(*&v3 + 8) = 0;
          v16 = v7[1];
          *v7 = v14;
          v7[1] = v15;
          if (v16)
          {
            (*(*v16 + 8))(v16);
          }

          v8 = (v7 - *&v2[3]) >> 4;
          result = llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>,mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>::operator[](v2, v7);
          *result = v8;
        }

        v7 += 2;
      }

      *&v3 += 16;
    }

    while (*&v3 != v6);
    v3 = v2[3];
    v19 = (*&v3 + 16 * v2[4].u32[0]);
    if (v19 != v7)
    {
      do
      {
        result = *(v19 - 1);
        *(v19 - 1) = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }

        v19 -= 2;
      }

      while (v19 != v7);
      v3 = v2[3];
    }
  }

  else
  {
    v7 = *(result + 24);
  }

  v2[4].i32[0] = (v7 - *&v3) >> 4;
  return result;
}

char **llvm::SmallVector<mlir::OpPassManager,1u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = &v2[8 * v3];
    do
    {
      v6 = *(v4 - 1);
      v4 -= 8;
      v5 = v6;
      *v4 = 0;
      if (v6)
      {
        v7 = *(v5 + 40);
        if (v7)
        {
          v8 = *(v5 + 48);
          v9 = *(v5 + 40);
          if (v8 != v7)
          {
            do
            {
              v11 = *--v8;
              v10 = v11;
              *v8 = 0;
              if (v11)
              {
                (*(*v10 + 8))(v10);
              }
            }

            while (v8 != v7);
            v9 = *(v5 + 40);
          }

          *(v5 + 48) = v7;
          operator delete(v9);
        }

        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        operator delete(v5);
      }
    }

    while (v4 != v2);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

uint64_t *llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::shrink_and_clear(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  v3 = *(result + 2);
  v4 = (16 * v2);
  if (v2)
  {
    v5 = (*result + 8);
    v6 = 16 * v2;
    do
    {
      if ((*(v5 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        result = std::unique_ptr<mlir::detail::NestedAnalysisMap>::reset[abi:nn200100](v5, 0);
      }

      v5 += 2;
      v6 -= 16;
    }

    while (v6);
  }

  if (!v3)
  {
    if (!*(v1 + 4))
    {
      v1[1] = 0;
      return result;
    }

LABEL_17:
    llvm::deallocate_buffer(*v1, v4);
  }

  v7 = 1 << (33 - __clz(v3 - 1));
  if (v7 <= 64)
  {
    v8 = 64;
  }

  else
  {
    v8 = v7;
  }

  if (v8 != *(v1 + 4))
  {
    goto LABEL_17;
  }

  v1[1] = 0;
  v9 = *v1;
  v10 = (v8 - 1) & 0xFFFFFFFFFFFFFFFLL;
  if (!v10)
  {
    v13 = *v1;
LABEL_20:
    v16 = (v9 + 16 * v8);
    do
    {
      *v13 = -4096;
      v13 = (v13 + 16);
    }

    while (v13 != v16);
    return result;
  }

  v11 = v10 + 1;
  v12 = (v10 + 1) & 0x1FFFFFFFFFFFFFFELL;
  v13 = (v9 + 16 * v12);
  v14 = (v9 + 16);
  v15 = v12;
  do
  {
    *(v14 - 2) = -4096;
    *v14 = -4096;
    v14 += 4;
    v15 -= 2;
  }

  while (v15);
  if (v11 != v12)
  {
    goto LABEL_20;
  }

  return result;
}

std::string *mlir::detail::OpPassManagerImpl::OpPassManagerImpl(std::string *this, const mlir::detail::OpPassManagerImpl *a2)
{
  if (*(a2 + 23) < 0)
  {
    v4 = a2;
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    a2 = v4;
  }

  else
  {
    v3 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v3;
  }

  v5 = *(a2 + 24);
  this[1].__r_.__value_.__r.__words[2] = 0;
  v6 = &this[1].__r_.__value_.__r.__words[2];
  *&this[1].__r_.__value_.__l.__data_ = v5;
  this[2].__r_.__value_.__r.__words[0] = 0;
  this[2].__r_.__value_.__l.__size_ = 0;
  this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
  v7 = *(a2 + 5);
  v8 = *(a2 + 6);
  while (v7 != v8)
  {
    v9 = *v7 + 152;
    (*(**v7 + 80))(&v23);
    mlir::detail::PassOptions::copyOptionValuesFrom(v23 + 152, v9);
    v10 = v23;
    *(v23 + 336) = *v7;
    data = this[2].__r_.__value_.__l.__data_;
    size = this[2].__r_.__value_.__l.__size_;
    if (data >= size)
    {
      v14 = *v6;
      v15 = data - *v6;
      v16 = (v15 >> 3) + 1;
      if (v16 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v17 = size - v14;
      if (v17 >> 2 > v16)
      {
        v16 = v17 >> 2;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        if (v18 >> 61)
        {
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        v19 = operator new(8 * v18);
      }

      else
      {
        v19 = 0;
      }

      v20 = &v19[8 * (v15 >> 3)];
      v23 = 0;
      *v20 = v10;
      v13 = (v20 + 8);
      memcpy(v19, v14, v15);
      this[1].__r_.__value_.__r.__words[2] = v19;
      this[2].__r_.__value_.__r.__words[0] = v13;
      this[2].__r_.__value_.__l.__size_ = &v19[8 * v18];
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      v23 = 0;
      *data = v10;
      v13 = (data + 8);
    }

    this[2].__r_.__value_.__r.__words[0] = v13;
    v21 = v23;
    v23 = 0;
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    v7 += 8;
  }

  return this;
}

uint64_t llvm::function_ref<llvm::LogicalResult ()(mlir::OpPassManager &,mlir::Operation *)>::callback_fn<mlir::detail::OpToOpPassAdaptor::run(mlir::Pass *,mlir::Operation *,mlir::AnalysisManager,BOOL,unsigned int)::$_0>(uint64_t a1, mlir::OpPassManager *a2, Operation *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = **a1;
  if (v6 != a3 && (mlir::Operation::isProperAncestor(v6, a3) & 1) == 0)
  {
    v32 = 257;
    mlir::Operation::emitOpError(a3, &v31, v36);
    if (v36[0])
    {
      v33 = 3;
      v34 = "Trying to schedule a dynamic pipeline on an operation that isn't nested under the current operation the pass is processing";
      v35 = 122;
      v13 = &v33;
      v14 = v37;
      if (v38 >= v39)
      {
        if (v37 <= &v33 && v37 + 24 * v38 > &v33)
        {
          v30 = &v33 - v37;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
          v14 = v37;
          v13 = (v37 + v30);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
          v13 = &v33;
          v14 = v37;
        }
      }

      v15 = &v14[24 * v38];
      v16 = *v13;
      *(v15 + 2) = *(v13 + 2);
      *v15 = v16;
      ++v38;
    }

    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v36);
    if (v36[0])
    {
      mlir::InFlightDiagnostic::report(v36);
    }

    if (v46 == 1)
    {
      if (v45 != &v46)
      {
        free(v45);
      }

      v17 = __p;
      if (__p)
      {
        v18 = v44;
        v19 = __p;
        if (v44 != __p)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v44 = v17;
        operator delete(v19);
      }

      v20 = v41;
      if (v41)
      {
        v21 = v42;
        v22 = v41;
        if (v42 != v41)
        {
          do
          {
            v24 = *--v21;
            v23 = v24;
            *v21 = 0;
            if (v24)
            {
              operator delete[](v23);
            }
          }

          while (v21 != v20);
          v22 = v41;
        }

        v42 = v20;
        operator delete(v22);
      }

      if (v37 != v40)
      {
        free(v37);
      }
    }

    return v12;
  }

  v7 = *a2;
  Context = mlir::Attribute::getContext((a3 + 24));
  if (!mlir::detail::OpPassManagerImpl::finalizePassList(v7, Context))
  {
    return 0;
  }

  v9 = mlir::Attribute::getContext((a3 + 24));
  if ((mlir::OpPassManager::initialize(a2, v9, **(a1 + 8)) & 1) == 0)
  {
    return 0;
  }

  v10 = *(a1 + 16);
  if (**a1 == a3)
  {
    v11 = *v10;
  }

  else
  {
    v11 = mlir::AnalysisManager::nest(v10, a3);
  }

  v25 = **(a1 + 24);
  v26 = **(a1 + 8);
  v27 = **(a1 + 32);
  v28 = *(a1 + 40);

  return mlir::detail::OpToOpPassAdaptor::runPipeline(a2, a3, v11, v25, v26, v27, v28);
}

uint64_t mlir::MLIRContext::executeActionInternal<mlir::PassExecutionAction,mlir::Pass &>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[1] = &mlir::PassExecutionAction::resolveTypeID(void)::id;
  v7[2] = a4;
  v7[3] = a5;
  v7[4] = a6;
  v7[0] = &unk_1F5B019C8;
  return mlir::MLIRContext::executeActionInternal(a1, a2, a3, v7);
}

uint64_t llvm::function_ref<void ()(void)>::callback_fn<mlir::detail::OpToOpPassAdaptor::run(mlir::Pass *,mlir::Operation *,mlir::AnalysisManager,BOOL,unsigned int)::$_1>(unsigned __int8 **a1)
{
  v2 = **a1;
  v3 = *(v2 + 1);
  {
    if (v3 != mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
    {
LABEL_3:
      result = (*(***a1 + 56))(**a1);
      goto LABEL_8;
    }
  }

  else
  {
    mlir::Pass::printAsTextualPipeline();
    if (v3 != mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
    {
      goto LABEL_3;
    }
  }

  v5 = *a1[1];
  Context = mlir::Attribute::getContext(((*(v2 + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
  if (mlir::MLIRContext::isMultithreadingEnabled(Context))
  {
    mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(v2, v5);
  }

  result = mlir::detail::OpToOpPassAdaptor::runOnOperationImpl(v2, v5);
LABEL_8:
  *a1[2] = (*(**a1 + 40) & 4) != 0;
  return result;
}

uint64_t *mlir::AnalysisManager::clear(uint64_t *this)
{
  v1 = this;
  v2 = *this;
  if (*(*this + 40))
  {
    v3 = *(v2 + 48);
    if (v3 > 4 * *(*this + 40) && v3 >= 0x41)
    {
      this = llvm::DenseMap<void *,mlir::Type,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::Type>>::shrink_and_clear(v2 + 32);
      goto LABEL_5;
    }

    if (v3)
    {
      v5 = *(v2 + 32);
      v6 = (v3 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v6)
      {
        v7 = v6 + 1;
        v8 = (v6 + 1) & 0x1FFFFFFFFFFFFFFELL;
        v9 = (v5 + 16 * v8);
        v10 = (v5 + 16);
        v11 = v8;
        do
        {
          *(v10 - 2) = -4096;
          *v10 = -4096;
          v10 += 4;
          v11 -= 2;
        }

        while (v11);
        if (v7 == v8)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v9 = *(v2 + 32);
      }

      v12 = (v5 + 16 * v3);
      do
      {
        *v9 = -4096;
        v9 += 2;
      }

      while (v9 != v12);
    }

LABEL_16:
    *(v2 + 40) = 0;
    v4 = *(v2 + 64);
    if (!v4)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

LABEL_5:
  v4 = *(v2 + 64);
  if (!v4)
  {
    goto LABEL_21;
  }

LABEL_17:
  v13 = *(v2 + 56) - 8;
  v14 = 16 * v4;
  do
  {
    this = *(v13 + v14);
    *(v13 + v14) = 0;
    if (this)
    {
      this = (*(*this + 8))(this);
    }

    v14 -= 16;
  }

  while (v14);
LABEL_21:
  *(v2 + 64) = 0;
  v15 = *v1;
  v16 = *(v15 + 2);
  if (!v16 && !*(v15 + 3))
  {
    return this;
  }

  v17 = *(v15 + 4);
  if (v17 <= 4 * v16 || v17 < 0x41)
  {
    if (!v17)
    {
LABEL_35:
      v15[1] = 0;
      return this;
    }

    v18 = (*v15 + 8);
    v19 = 16 * v17;
    while (1)
    {
      v20 = *(v18 - 1);
      if (v20 != -8192)
      {
        if (v20 == -4096)
        {
          goto LABEL_31;
        }

        this = std::unique_ptr<mlir::detail::NestedAnalysisMap>::reset[abi:nn200100](v18, 0);
      }

      *(v18 - 1) = -4096;
LABEL_31:
      v18 += 2;
      v19 -= 16;
      if (!v19)
      {
        goto LABEL_35;
      }
    }
  }

  return llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::shrink_and_clear(v15);
}

uint64_t llvm::SmallVectorTemplateBase<mlir::OpPassManager,false>::growAndEmplaceBack<mlir::OpPassManager>(uint64_t a1, uint64_t *a2)
{
  v18 = 0;
  v4 = a1 + 16;
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 8, &v18);
  v6 = v5;
  v7 = *(a1 + 8);
  v5[v7] = 0;
  v8 = *a2;
  *a2 = 0;
  v9 = v5[v7];
  v5[v7] = v8;
  if (v9)
  {
    v10 = *(v9 + 40);
    if (v10)
    {
      v11 = *(v9 + 48);
      v12 = *(v9 + 40);
      if (v11 != v10)
      {
        do
        {
          v14 = *--v11;
          v13 = v14;
          *v11 = 0;
          if (v14)
          {
            (*(*v13 + 8))(v13);
          }
        }

        while (v11 != v10);
        v12 = *(v9 + 40);
      }

      *(v9 + 48) = v10;
      operator delete(v12);
    }

    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    operator delete(v9);
  }

  llvm::SmallVectorTemplateBase<mlir::OpPassManager,false>::moveElementsForGrow(a1, v6);
  v15 = v18;
  if (*a1 != v4)
  {
    free(*a1);
  }

  *a1 = v6;
  v16 = *(a1 + 8) + 1;
  *(a1 + 8) = v16;
  *(a1 + 12) = v15;
  return &v6[v16 - 1];
}

void llvm::SmallVectorTemplateBase<mlir::OpPassManager,false>::moveElementsForGrow(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v5 = *a1;
    v6 = *a1 + 8 * v2;
    do
    {
      *a2 = 0;
      v7 = *v5;
      *v5 = 0;
      v8 = *a2;
      *a2 = v7;
      if (v8)
      {
        v9 = *(v8 + 40);
        if (v9)
        {
          v10 = *(v8 + 48);
          v11 = *(v8 + 40);
          if (v10 != v9)
          {
            do
            {
              v13 = *--v10;
              v12 = v13;
              *v10 = 0;
              if (v13)
              {
                (*(*v12 + 8))(v12);
              }
            }

            while (v10 != v9);
            v11 = *(v8 + 40);
          }

          *(v8 + 48) = v9;
          operator delete(v11);
        }

        if (*(v8 + 23) < 0)
        {
          operator delete(*v8);
        }

        operator delete(v8);
      }

      ++a2;
      ++v5;
    }

    while (v5 != v6);
    v14 = *(a1 + 8);
    if (v14)
    {
      v15 = *a1;
      v16 = (*a1 + 8 * v14);
      do
      {
        v18 = *--v16;
        v17 = v18;
        *v16 = 0;
        if (v18)
        {
          v19 = *(v17 + 40);
          if (v19)
          {
            v20 = *(v17 + 48);
            v21 = *(v17 + 40);
            if (v20 != v19)
            {
              do
              {
                v23 = *--v20;
                v22 = v23;
                *v20 = 0;
                if (v23)
                {
                  (*(*v22 + 8))(v22);
                }
              }

              while (v20 != v19);
              v21 = *(v17 + 40);
            }

            *(v17 + 48) = v19;
            operator delete(v21);
          }

          if (*(v17 + 23) < 0)
          {
            operator delete(*v17);
          }

          operator delete(v17);
        }
      }

      while (v16 != v15);
    }
  }
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpPassManager,1u>,false>::growAndAssign(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v16 = 0;
  v6 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 24, &v16);
  v8 = v7;
  if (a2)
  {
    v9 = v7;
    v10 = a2;
    do
    {
      *v9 = v9 + 2;
      v9[1] = 0x100000000;
      if (*(a3 + 8))
      {
        llvm::SmallVectorImpl<mlir::OpPassManager>::operator=(v9, a3);
      }

      v9 += 3;
      --v10;
    }

    while (v10);
  }

  v11 = *a1;
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = -24 * v12;
    v14 = &v11[24 * v12 - 24];
    do
    {
      v14 = llvm::SmallVector<mlir::OpPassManager,1u>::~SmallVector(v14) - 3;
      v13 += 24;
    }

    while (v13);
    v11 = *a1;
  }

  v15 = v16;
  if (v11 != v6)
  {
    free(v11);
  }

  *a1 = v8;
  *(a1 + 8) = a2;
  *(a1 + 12) = v15;
}

uint64_t llvm::SmallVectorImpl<mlir::OpPassManager>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    v4 = *(a1 + 8);
    if (v4 >= v3)
    {
      if (v3)
      {
        v10 = *a2;
        v11 = *a1;
        v12 = 8 * v3;
        do
        {
          mlir::OpPassManager::operator=(v11++, v10++);
          v12 -= 8;
        }

        while (v12);
        v13 = *a1;
        v4 = *(a1 + 8);
      }

      else
      {
        v13 = *a1;
        v11 = *a1;
      }

      v17 = &v13[v4];
      while (v17 != v11)
      {
        v19 = *--v17;
        v18 = v19;
        *v17 = 0;
        if (v19)
        {
          v20 = *(v18 + 40);
          if (v20)
          {
            v21 = *(v18 + 48);
            v22 = *(v18 + 40);
            if (v21 != v20)
            {
              do
              {
                v24 = *--v21;
                v23 = v24;
                *v21 = 0;
                if (v24)
                {
                  (*(*v23 + 8))(v23);
                }
              }

              while (v21 != v20);
              v22 = *(v18 + 40);
            }

            *(v18 + 48) = v20;
            operator delete(v22);
          }

          if (*(v18 + 23) < 0)
          {
            operator delete(*v18);
          }

          operator delete(v18);
        }
      }

      goto LABEL_35;
    }

    if (*(a1 + 12) >= v3)
    {
      v7 = *a1;
      if (v4)
      {
        v14 = a2;
        v15 = *a2;
        v16 = 8 * v4;
        do
        {
          mlir::OpPassManager::operator=(v7++, v15++);
          v16 -= 8;
        }

        while (v16);
        v7 = *a1;
        a2 = v14;
        v9 = *(v14 + 8);
        if (v4 == v9)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v4 = 0;
        v9 = *(a2 + 8);
        if (!*(a2 + 8))
        {
LABEL_35:
          *(a1 + 8) = v3;
          return a1;
        }
      }
    }

    else
    {
      v5 = a2;
      llvm::SmallVectorImpl<mlir::OpPassManager>::clear(a1);
      v30 = 0;
      llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), v3, 8, &v30);
      v7 = v6;
      llvm::SmallVectorTemplateBase<mlir::OpPassManager,false>::moveElementsForGrow(a1, v6);
      v8 = v30;
      if (*a1 != a1 + 16)
      {
        free(*a1);
      }

      v4 = 0;
      *a1 = v7;
      *(a1 + 12) = v8;
      a2 = v5;
      v9 = *(v5 + 8);
      if (!*(v5 + 8))
      {
        goto LABEL_35;
      }
    }

    v25 = &v7[v4];
    v26 = (*a2 + 8 * v4);
    v27 = 8 * v9 - 8 * v4;
    v28 = v25;
    do
    {
      *v28++ = 0;
      mlir::OpPassManager::operator=(v25, v26++);
      v25 = v28;
      v27 -= 8;
    }

    while (v27);
    goto LABEL_35;
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a2 != a2 + 16)
    {
      llvm::SmallVectorImpl<mlir::OpPassManager>::assignRemote(a1, a2);
      return a1;
    }

    v5 = *(a2 + 8);
    v6 = *(a1 + 8);
    if (v6 >= v5)
    {
      v11 = *a1;
      if (v5)
      {
        v12 = &v4[8 * v5];
        do
        {
          v13 = *v4;
          *v4 = 0;
          v14 = *v11;
          *v11 = v13;
          if (v14)
          {
            v15 = *(v14 + 40);
            if (v15)
            {
              v16 = *(v14 + 48);
              v17 = *(v14 + 40);
              if (v16 != v15)
              {
                do
                {
                  v19 = *--v16;
                  v18 = v19;
                  *v16 = 0;
                  if (v19)
                  {
                    (*(*v18 + 8))(v18);
                  }
                }

                while (v16 != v15);
                v17 = *(v14 + 40);
              }

              *(v14 + 48) = v15;
              operator delete(v17);
            }

            if (*(v14 + 23) < 0)
            {
              operator delete(*v14);
            }

            operator delete(v14);
          }

          v4 += 8;
          v11 += 8;
        }

        while (v4 != v12);
        v20 = *a1;
        v6 = *(a1 + 8);
      }

      else
      {
        v20 = *a1;
      }

      v29 = &v20[8 * v6];
      while (v29 != v11)
      {
        v31 = *(v29 - 1);
        v29 -= 8;
        v30 = v31;
        *v29 = 0;
        if (v31)
        {
          v32 = *(v30 + 40);
          if (v32)
          {
            v33 = *(v30 + 48);
            v34 = *(v30 + 40);
            if (v33 != v32)
            {
              do
              {
                v36 = *--v33;
                v35 = v36;
                *v33 = 0;
                if (v36)
                {
                  (*(*v35 + 8))(v35);
                }
              }

              while (v33 != v32);
              v34 = *(v30 + 40);
            }

            *(v30 + 48) = v32;
            operator delete(v34);
          }

          if (*(v30 + 23) < 0)
          {
            operator delete(*v30);
          }

          operator delete(v30);
        }
      }

      goto LABEL_59;
    }

    if (*(a1 + 12) >= v5)
    {
      v8 = *a1;
      if (v6)
      {
        v21 = &v4[8 * v6];
        do
        {
          v22 = *v4;
          *v4 = 0;
          v23 = *v8;
          *v8 = v22;
          if (v23)
          {
            v24 = *(v23 + 40);
            if (v24)
            {
              v25 = *(v23 + 48);
              v26 = *(v23 + 40);
              if (v25 != v24)
              {
                do
                {
                  v28 = *--v25;
                  v27 = v28;
                  *v25 = 0;
                  if (v28)
                  {
                    (*(*v27 + 8))(v27);
                  }
                }

                while (v25 != v24);
                v26 = *(v23 + 40);
              }

              *(v23 + 48) = v24;
              operator delete(v26);
            }

            if (*(v23 + 23) < 0)
            {
              operator delete(*v23);
            }

            operator delete(v23);
          }

          v4 += 8;
          v8 += 8;
        }

        while (v4 != v21);
        v8 = *a1;
        v10 = *(a2 + 8);
        if (v6 == v10)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v6 = 0;
        v10 = *(a2 + 8);
        if (!*(a2 + 8))
        {
LABEL_59:
          *(a1 + 8) = v5;
          llvm::SmallVectorImpl<mlir::OpPassManager>::clear(a2);
          return a1;
        }
      }
    }

    else
    {
      llvm::SmallVectorImpl<mlir::OpPassManager>::clear(a1);
      v48 = 0;
      llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), v5, 8, &v48);
      v8 = v7;
      llvm::SmallVectorTemplateBase<mlir::OpPassManager,false>::moveElementsForGrow(a1, v7);
      v9 = v48;
      if (*a1 != a1 + 16)
      {
        free(*a1);
      }

      v6 = 0;
      *a1 = v8;
      *(a1 + 12) = v9;
      v10 = *(a2 + 8);
      if (!*(a2 + 8))
      {
        goto LABEL_59;
      }
    }

    v38 = *a2 + 8 * v10;
    v39 = &v8[8 * v6];
    v40 = (*a2 + 8 * v6);
    do
    {
      *v39 = 0;
      v41 = *v40;
      *v40 = 0;
      v42 = *v39;
      *v39 = v41;
      if (v42)
      {
        v43 = *(v42 + 40);
        if (v43)
        {
          v44 = *(v42 + 48);
          v45 = *(v42 + 40);
          if (v44 != v43)
          {
            do
            {
              v47 = *--v44;
              v46 = v47;
              *v44 = 0;
              if (v47)
              {
                (*(*v46 + 8))(v46);
              }
            }

            while (v44 != v43);
            v45 = *(v42 + 40);
          }

          *(v42 + 48) = v43;
          operator delete(v45);
        }

        if (*(v42 + 23) < 0)
        {
          operator delete(*v42);
        }

        operator delete(v42);
      }

      v39 += 8;
      ++v40;
    }

    while (v40 != v38);
    goto LABEL_59;
  }

  return a1;
}

__n128 std::__function::__func<llvm::LogicalResult mlir::failableParallelForEach<std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::$_0 &>(mlir::MLIRContext *,std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::$_0 &)::{lambda(void)#1},std::allocator<std::allocator>,void ()(void)>::__clone(uint64_t a1)
{
  v2 = operator new(0x38uLL);
  *v2 = &unk_1F5B01C18;
  *(v2 + 8) = *(a1 + 8);
  *(v2 + 24) = *(a1 + 24);
  result = *(a1 + 40);
  *(v2 + 40) = result;
  return result;
}

__n128 std::__function::__func<llvm::LogicalResult mlir::failableParallelForEach<std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::$_0 &>(mlir::MLIRContext *,std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::$_0 &)::{lambda(void)#1},std::allocator<std::allocator>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5B01C18;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<llvm::LogicalResult mlir::failableParallelForEach<std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::$_0 &>(mlir::MLIRContext *,std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::$_0 &)::{lambda(void)#1},std::allocator<std::allocator>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = atomic_load(*(a1 + 8));
  if ((v1 & 1) == 0)
  {
    do
    {
      add = atomic_fetch_add(*(a1 + 16), 1u);
      if (add >= **(a1 + 24))
      {
        break;
      }

      mlir::ParallelDiagnosticHandler::setOrderIDForThread(*(a1 + 32), add);
      v5 = *(a1 + 40);
      v6 = **(a1 + 48);
      v7 = v5[1];
      v8 = **v5;
      v9 = (*v5)[1];
      if (v8 == v9)
      {
        v11 = **v5;
      }

      else
      {
        while (1)
        {
          v10 = 0;
          atomic_compare_exchange_strong(v8, &v10, 1u);
          if (!v10)
          {
            break;
          }

          if (++v8 == v9)
          {
            LODWORD(v8) = v9;
            break;
          }
        }

        LODWORD(v11) = v8;
        v8 = **v5;
      }

      v12 = 8 * (add + 2 * add);
      v13 = (v11 - v8);
      v14 = (*&v7[46][24 * v13] + 8 * *(v6 + v12));
      v15 = mlir::detail::OpToOpPassAdaptor::runPipeline(v14, *(v12 + v6 + 8), *(v12 + v6 + 16), *v5[2], *(*v14 + 64), *v5[3], v5[4]);
      atomic_store(0, &(**v5)[v13]);
      if ((v15 & 1) == 0)
      {
        atomic_store(1u, *(a1 + 8));
      }

      mlir::ParallelDiagnosticHandler::eraseOrderIDForThread(*(a1 + 32));
      v3 = atomic_load(*(a1 + 8));
    }

    while ((v3 & 1) == 0);
  }
}

uint64_t std::__function::__func<llvm::LogicalResult mlir::failableParallelForEach<std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::$_0 &>(mlir::MLIRContext *,std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::$_0 &)::{lambda(void)#1},std::allocator<std::allocator>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir23failableParallelForEachINSt3__111__wrap_iterIPZNS_6detail17OpToOpPassAdaptor23runOnOperationAsyncImplEbE8OpPMInfoEERZNS4_23runOnOperationAsyncImplEbE3$_0EEN4llvm13LogicalResultEPNS_11MLIRContextET_SE_OT0_EUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir23failableParallelForEachINSt3__111__wrap_iterIPZNS_6detail17OpToOpPassAdaptor23runOnOperationAsyncImplEbE8OpPMInfoEERZNS4_23runOnOperationAsyncImplEbE3$_0EEN4llvm13LogicalResultEPNS_11MLIRContextET_SE_OT0_EUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir23failableParallelForEachINSt3__111__wrap_iterIPZNS_6detail17OpToOpPassAdaptor23runOnOperationAsyncImplEbE8OpPMInfoEERZNS4_23runOnOperationAsyncImplEbE3$_0EEN4llvm13LogicalResultEPNS_11MLIRContextET_SE_OT0_EUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir23failableParallelForEachINSt3__111__wrap_iterIPZNS_6detail17OpToOpPassAdaptor23runOnOperationAsyncImplEbE8OpPMInfoEERZNS4_23runOnOperationAsyncImplEbE3$_0EEN4llvm13LogicalResultEPNS_11MLIRContextET_SE_OT0_EUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t **std::unique_ptr<mlir::PassInstrumentor>::~unique_ptr[abi:nn200100](uint64_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
      v4 = *(v3 + 72);
      if (v4)
      {
        v5 = *(v3 + 80);
        v6 = *(v3 + 72);
        if (v5 != v4)
        {
          do
          {
            v8 = *--v5;
            v7 = v8;
            *v5 = 0;
            if (v8)
            {
              (*(*v7 + 8))(v7);
            }
          }

          while (v5 != v4);
          v6 = *(v3 + 72);
        }

        *(v3 + 80) = v4;
        operator delete(v6);
      }

      std::recursive_mutex::~recursive_mutex(v3);
      operator delete(v9);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void *llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::grow(uint64_t a1, int a2)
{
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
  result = llvm::allocate_buffer(16 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[2 * v11];
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = v4;
      do
      {
        v24 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = *(a1 + 16) - 1;
          v26 = v25 & ((v24 >> 4) ^ (v24 >> 9));
          v22 = (*a1 + 16 * v26);
          v27 = *v22;
          if (v24 != *v22)
          {
            v28 = 0;
            v29 = 1;
            while (v27 != -4096)
            {
              if (v28)
              {
                v30 = 0;
              }

              else
              {
                v30 = v27 == -8192;
              }

              if (v30)
              {
                v28 = v22;
              }

              v31 = v26 + v29++;
              v26 = v31 & v25;
              v22 = (*a1 + 16 * (v31 & v25));
              v27 = *v22;
              if (v24 == *v22)
              {
                goto LABEL_24;
              }
            }

            if (v28)
            {
              v22 = v28;
            }
          }

LABEL_24:
          v23 = *(v16 + 1);
          *(v16 + 1) = 0;
          *v22 = v24;
          v22[1] = v23;
          ++*(a1 + 8);
          std::unique_ptr<mlir::detail::NestedAnalysisMap>::reset[abi:nn200100](v16 + 1, 0);
        }

        v16 = (v16 + 16);
      }

      while (v16 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v17 = *(a1 + 16);
  if (v17)
  {
    if (((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v18 = ((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v18 & 0x1FFFFFFFFFFFFFFELL)];
    v19 = result + 2;
    v20 = v18 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v19 - 2) = -4096;
      *v19 = -4096;
      v19 += 4;
      v20 -= 2;
    }

    while (v20);
    if (v18 != (v18 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_19:
      v21 = &result[2 * v17];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v21);
    }
  }

  return result;
}

uint64_t *std::unique_ptr<mlir::detail::NestedAnalysisMap>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    if (v4)
    {
      v5 = v3 - 8;
      v6 = 16 * v4;
      do
      {
        v7 = *&v5[v6];
        *&v5[v6] = 0;
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }

        v6 -= 16;
      }

      while (v6);
      v3 = *(v2 + 56);
    }

    if (v3 != (v2 + 72))
    {
      free(v3);
    }

    llvm::deallocate_buffer(*(v2 + 32), (16 * *(v2 + 48)));
  }

  return result;
}

void sub_1DFD3EA0C()
{

  operator delete(v0);
}

uint64_t llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpPassManager,1u>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    v4 = *(a1 + 8);
    if (v4 < v3)
    {
      if (*(a1 + 12) < v3)
      {
        v5 = a2;
        if (v4)
        {
          v6 = -24 * v4;
          v7 = (*a1 + 24 * v4 - 24);
          do
          {
            v7 = llvm::SmallVector<mlir::OpPassManager,1u>::~SmallVector(v7) - 3;
            v6 += 24;
          }

          while (v6);
        }

        *(a1 + 8) = 0;
        llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpPassManager,1u>,false>::grow(a1, v3);
        v4 = 0;
        a2 = v5;
        v8 = *(v5 + 8);
        if (!*(v5 + 8))
        {
          goto LABEL_21;
        }

        goto LABEL_24;
      }

      if (v4)
      {
        v13 = a2;
        v14 = *a2;
        v15 = *a1;
        v16 = 24 * v4;
        do
        {
          llvm::SmallVectorImpl<mlir::OpPassManager>::operator=(v15, v14);
          v14 += 24;
          v15 += 24;
          v16 -= 24;
        }

        while (v16);
        a2 = v13;
        v8 = *(v13 + 8);
        if (v4 != v8)
        {
LABEL_24:
          v18 = *a2;
          v19 = *a1;
          v20 = 24 * v4;
          v21 = 24 * v8;
          do
          {
            v22 = (v19 + v20);
            *v22 = v19 + v20 + 16;
            v22[1] = 0x100000000;
            if (*(v18 + v20 + 8))
            {
              llvm::SmallVectorImpl<mlir::OpPassManager>::operator=(v22, v18 + v20);
            }

            v19 += 24;
            v21 -= 24;
            v18 += 24;
          }

          while (v20 != v21);
        }
      }

      else
      {
        v4 = 0;
        v8 = *(a2 + 8);
        if (*(a2 + 8))
        {
          goto LABEL_24;
        }
      }

LABEL_21:
      *(a1 + 8) = v3;
      return a1;
    }

    if (v3)
    {
      v9 = *a2;
      v10 = *a1;
      v11 = 24 * v3;
      do
      {
        llvm::SmallVectorImpl<mlir::OpPassManager>::operator=(v10, v9);
        v9 += 24;
        v10 += 24;
        v11 -= 24;
      }

      while (v11);
      v12 = (*a1 + 24 * *(a1 + 8));
      if (v12 == v10)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v10 = *a1;
      v12 = (*a1 + 24 * v4);
      if (v12 == *a1)
      {
        goto LABEL_21;
      }
    }

    do
    {
      v12 = llvm::SmallVector<mlir::OpPassManager,1u>::~SmallVector(v12 - 3);
    }

    while (v12 != v10);
    goto LABEL_21;
  }

  return a1;
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpPassManager,1u>,false>::grow(uint64_t a1, unint64_t a2)
{
  v14 = 0;
  v3 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 24, &v14);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = 24 * v7;
    v9 = v4;
    do
    {
      *v9 = v9 + 2;
      v9[1] = 0x100000000;
      if (v6[2])
      {
        llvm::SmallVectorImpl<mlir::OpPassManager>::operator=(v9, v6);
      }

      v9 += 3;
      v6 += 6;
      v8 -= 24;
    }

    while (v8);
    v6 = *a1;
    v10 = *(a1 + 8);
    if (v10)
    {
      v11 = -24 * v10;
      v12 = &v6[6 * v10 - 6];
      do
      {
        v12 = llvm::SmallVector<mlir::OpPassManager,1u>::~SmallVector(v12) - 3;
        v11 += 24;
      }

      while (v11);
      v6 = *a1;
    }
  }

  v13 = v14;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 12) = v13;
}

double llvm::SmallVectorImpl<mlir::OpPassManager>::assignRemote(char **a1, char **a2)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  if (v5)
  {
    v6 = &v4[8 * v5];
    do
    {
      v8 = *(v6 - 1);
      v6 -= 8;
      v7 = v8;
      *v6 = 0;
      if (v8)
      {
        v9 = *(v7 + 40);
        if (v9)
        {
          v10 = *(v7 + 48);
          v11 = *(v7 + 40);
          if (v10 != v9)
          {
            do
            {
              v13 = *--v10;
              v12 = v13;
              *v10 = 0;
              if (v13)
              {
                (*(*v12 + 8))(v12);
              }
            }

            while (v10 != v9);
            v11 = *(v7 + 40);
          }

          *(v7 + 48) = v9;
          operator delete(v11);
        }

        if (*(v7 + 23) < 0)
        {
          operator delete(*v7);
        }

        operator delete(v7);
      }
    }

    while (v6 != v4);
    v4 = *a1;
  }

  if (v4 != (a1 + 2))
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 1);
  *(a1 + 1) = result;
  *a2 = (a2 + 2);
  a2[1] = 0;
  return result;
}

void mlir::detail::RecoveryReproducerContext::enable(mlir::detail::RecoveryReproducerContext *this)
{
  if (!atomic_load_explicit(&mlir::detail::RecoveryReproducerContext::reproducerMutex, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(&mlir::detail::RecoveryReproducerContext::reproducerMutex, llvm::object_creator<llvm::sys::SmartMutex<true>>::call, llvm::object_deleter<llvm::sys::SmartMutex<true>>::call);
  }

  v2 = mlir::detail::RecoveryReproducerContext::reproducerMutex;
  std::recursive_mutex::lock(mlir::detail::RecoveryReproducerContext::reproducerMutex);
  if (atomic_load_explicit(mlir::detail::RecoveryReproducerContext::reproducerSet, memory_order_acquire))
  {
    if (*(mlir::detail::RecoveryReproducerContext::reproducerSet[0] + 32))
    {
      goto LABEL_5;
    }
  }

  else
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(mlir::detail::RecoveryReproducerContext::reproducerSet, llvm::object_creator<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call, llvm::object_deleter<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call);
    if (*(mlir::detail::RecoveryReproducerContext::reproducerSet[0] + 32))
    {
LABEL_5:
      {
        goto LABEL_6;
      }

LABEL_11:
      mlir::detail::RecoveryReproducerContext::enable();
      if (atomic_load_explicit(mlir::detail::RecoveryReproducerContext::reproducerSet, memory_order_acquire))
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  llvm::CrashRecoveryContext::Enable(v3);
  {
    goto LABEL_11;
  }

LABEL_6:
  if (!atomic_load_explicit(mlir::detail::RecoveryReproducerContext::reproducerSet, memory_order_acquire))
  {
LABEL_7:
    llvm::ManagedStaticBase::RegisterManagedStatic(mlir::detail::RecoveryReproducerContext::reproducerSet, llvm::object_creator<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call, llvm::object_deleter<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call);
  }

LABEL_8:
  v4 = this;
  llvm::SetVector<mlir::detail::RecoveryReproducerContext *,llvm::SmallVector<mlir::detail::RecoveryReproducerContext *,1u>,llvm::DenseSet<mlir::detail::RecoveryReproducerContext *,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>>,1u>::insert(mlir::detail::RecoveryReproducerContext::reproducerSet[0], &v4);
  std::recursive_mutex::unlock(v2);
}

void mlir::detail::RecoveryReproducerContext::disable(mlir::detail::RecoveryReproducerContext *this)
{
  if (!atomic_load_explicit(&mlir::detail::RecoveryReproducerContext::reproducerMutex, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(&mlir::detail::RecoveryReproducerContext::reproducerMutex, llvm::object_creator<llvm::sys::SmartMutex<true>>::call, llvm::object_deleter<llvm::sys::SmartMutex<true>>::call);
  }

  v2 = mlir::detail::RecoveryReproducerContext::reproducerMutex;
  std::recursive_mutex::lock(mlir::detail::RecoveryReproducerContext::reproducerMutex);
  if (atomic_load_explicit(mlir::detail::RecoveryReproducerContext::reproducerSet, memory_order_acquire))
  {
    v4 = this;
    v3 = llvm::SetVector<mlir::detail::RecoveryReproducerContext *,llvm::SmallVector<mlir::detail::RecoveryReproducerContext *,1u>,llvm::DenseSet<mlir::detail::RecoveryReproducerContext *,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>>,1u>::remove(mlir::detail::RecoveryReproducerContext::reproducerSet[0], &v4);
    if (atomic_load_explicit(mlir::detail::RecoveryReproducerContext::reproducerSet, memory_order_acquire))
    {
      goto LABEL_5;
    }

LABEL_8:
    llvm::ManagedStaticBase::RegisterManagedStatic(mlir::detail::RecoveryReproducerContext::reproducerSet, llvm::object_creator<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call, llvm::object_deleter<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call);
    if (*(mlir::detail::RecoveryReproducerContext::reproducerSet[0] + 32))
    {
      goto LABEL_6;
    }

LABEL_9:
    llvm::CrashRecoveryContext::Disable(v3);
    goto LABEL_6;
  }

  llvm::ManagedStaticBase::RegisterManagedStatic(mlir::detail::RecoveryReproducerContext::reproducerSet, llvm::object_creator<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call, llvm::object_deleter<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call);
  v4 = this;
  v3 = llvm::SetVector<mlir::detail::RecoveryReproducerContext *,llvm::SmallVector<mlir::detail::RecoveryReproducerContext *,1u>,llvm::DenseSet<mlir::detail::RecoveryReproducerContext *,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>>,1u>::remove(mlir::detail::RecoveryReproducerContext::reproducerSet[0], &v4);
  if (!atomic_load_explicit(mlir::detail::RecoveryReproducerContext::reproducerSet, memory_order_acquire))
  {
    goto LABEL_8;
  }

LABEL_5:
  if (!*(mlir::detail::RecoveryReproducerContext::reproducerSet[0] + 32))
  {
    goto LABEL_9;
  }

LABEL_6:
  std::recursive_mutex::unlock(v2);
}

void appendReproducer(uint64_t a1, mlir::Operation *a2, uint64_t a3, mlir::detail::AsmStateImpl *a4, char a5, char a6)
{
  v47 = a5;
  v46 = a6;
  v39 = 0;
  v43 = 0;
  v44 = 1;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v38 = &unk_1F5B3FB30;
  v45 = a1;
  llvm::raw_ostream::SetBufferAndMode(&v38, 0, 0, 0);
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v9 = *(a3 + 24);
  if (v9)
  {
    (*(*v9 + 48))(&v34);
    v10 = v34;
    v11 = v41 - v42;
    if (v34)
    {
      if (v11 > 0x18)
      {
        v42 += 25;
        v12 = &v38;
      }

      else
      {
        v10 = v34;
      }

      v15 = (*(*v10 + 16))(v10);
      v16 = v14;
      v17 = v12[4];
      if (v14 <= v12[3] - v17)
      {
        if (v14)
        {
          memcpy(v17, v15, v14);
          v17 = v12[4] + v16;
          v12[4] = v17;
        }
      }

      else
      {
        v12 = llvm::raw_ostream::write(v12, v15, v14);
        v17 = v12[4];
      }

      if (v12[3] == v17)
      {
      }

      else
      {
        *v17 = 96;
        v12[4] = v12[4] + 1;
      }

      v27[0] = *(*(a2 + 6) + 8);
      AttrData = mlir::OpaqueAttr::getAttrData(v27);
      v30 = 773;
      v29[0] = AttrData;
      v29[1] = v19;
      v29[2] = "(";
      v31[0] = v29;
      v31[2] = a4;
      v32 = 1026;
      v27[0] = v31;
      v27[2] = ")";
      v28 = 770;
      llvm::Twine::str(v27, &__p);
      mlir::OpPrintingFlags::OpPrintingFlags(v27);
      mlir::AsmState::AsmState(v31, a2, v27, 0, 0);
      v20 = operator new(0x38uLL);
      v20[31] = 15;
      strcpy(v20 + 8, "mlir_reproducer");
      *v20 = &unk_1F5B01C98;
      *(v20 + 4) = &__p;
      *(v20 + 5) = &v47;
      *(v20 + 6) = &v46;
      v27[0] = v20;
      mlir::AsmState::attachResourcePrinter(v31, v27);
      v21 = v27[0];
      v27[0] = 0;
      if (v21)
      {
        (*(*v21 + 8))(v21);
      }

      v22 = (*(*v34 + 24))(v34);
      mlir::Operation::print(a2, v22, v31);
      mlir::AsmState::~AsmState(v31);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      if (v11 > 0x1F)
      {
        qmemcpy(v42, "failed to create output stream: ", 32);
        v42 += 32;
        v13 = &v38;
      }

      else
      {
        v13 = llvm::raw_ostream::write(&v38, "failed to create output stream: ", 0x20uLL);
      }

      if (v37 >= 0)
      {
        v23 = &v35;
      }

      else
      {
        v23 = v35;
      }

      if (v37 >= 0)
      {
        v24 = HIBYTE(v37);
      }

      else
      {
        v24 = v36;
      }

      llvm::raw_ostream::write(v13, v23, v24);
    }

    v25 = v34;
    v34 = 0;
    if (v25)
    {
      (*(*v25 + 8))(v25);
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(v35);
    }

    llvm::raw_ostream::~raw_ostream(&v38);
  }

  else
  {
    v26 = std::__throw_bad_function_call[abi:nn200100]();
    llvm::SetVector<mlir::detail::RecoveryReproducerContext *,llvm::SmallVector<mlir::detail::RecoveryReproducerContext *,1u>,llvm::DenseSet<mlir::detail::RecoveryReproducerContext *,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>>,1u>::remove(v26);
  }
}

uint64_t llvm::SetVector<mlir::detail::RecoveryReproducerContext *,llvm::SmallVector<mlir::detail::RecoveryReproducerContext *,1u>,llvm::DenseSet<mlir::detail::RecoveryReproducerContext *,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>>,1u>::remove(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *(a1 + 4);
    if (v3)
    {
      v4 = *a1;
      v5 = v3 - 1;
      v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
      v7 = *(*a1 + 8 * v6);
      if (*a2 == v7)
      {
LABEL_4:
        *(v4 + 8 * v6) = -8192;
        v10 = *(a1 + 8);
        v8 = a1 + 4;
        v9 = v10;
        v11 = *(v8 - 5) + 1;
        *(v8 - 6) = v2 - 1;
        *(v8 - 5) = v11;
        i = *(v8 - 1);
        v13 = &i[v10];
        if (v10)
        {
          v14 = 8 * v9;
          while (*i != *a2)
          {
            ++i;
            v14 -= 8;
            if (!v14)
            {
              i = v13;
              break;
            }
          }
        }

        v15 = i + 1;
        v16 = v13 - (i + 1);
        if (v13 == i + 1)
        {
          *v8 = v9 - 1;
          return 1;
        }

        goto LABEL_19;
      }

      v23 = 1;
      while (v7 != -4096)
      {
        v24 = v6 + v23++;
        v6 = v24 & v5;
        v7 = *(v4 + 8 * v6);
        if (*a2 == v7)
        {
          goto LABEL_4;
        }
      }
    }
  }

  else
  {
    v19 = *(a1 + 8);
    v8 = a1 + 4;
    v18 = v19;
    if (v19)
    {
      v20 = 8 * v18;
      for (i = *(v8 - 1); *i != *a2; ++i)
      {
        v20 -= 8;
        if (!v20)
        {
          return 0;
        }
      }
    }

    else
    {
      i = *(v8 - 1);
    }

    v21 = *(v8 - 1) + 8 * v18;
    if (i != v21)
    {
      v15 = i + 1;
      v16 = v21 - (i + 1);
      if (v21 == i + 1)
      {
LABEL_20:
        *v8 = v18 - 1;
        return 1;
      }

LABEL_19:
      v22 = v8;
      memmove(i, v15, v16);
      v8 = v22;
      LODWORD(v18) = *v22;
      goto LABEL_20;
    }
  }

  return 0;
}

uint64_t llvm::SetVector<mlir::detail::RecoveryReproducerContext *,llvm::SmallVector<mlir::detail::RecoveryReproducerContext *,1u>,llvm::DenseSet<mlir::detail::RecoveryReproducerContext *,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>>,1u>::insert(uint64_t a1, uint64_t *a2)
{
  if (!*(a1 + 8))
  {
    v7 = (a1 + 24);
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    v10 = v8;
    if (v9)
    {
      v11 = *a2;
      v12 = 8 * v9;
      v10 = *(a1 + 24);
      while (*v10 != v11)
      {
        ++v10;
        v12 -= 8;
        if (!v12)
        {
          goto LABEL_14;
        }
      }
    }

    if (v10 != &v8[v9])
    {
      return 0;
    }

    v11 = *a2;
LABEL_14:
    if (v9 >= *(a1 + 36))
    {
      v16 = (a1 + 24);
      v17 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, a1 + 40, v9 + 1, 8);
      v7 = v16;
      *(*(a1 + 24) + 8 * *(a1 + 32)) = v17;
      v13 = *(a1 + 32) + 1;
      *(a1 + 32) = v13;
      if (v13 >= 2)
      {
LABEL_16:
        v14 = *v7;
        v15 = 8 * v13;
        do
        {
          llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, v14++, v18);
          v15 -= 8;
        }

        while (v15);
      }
    }

    else
    {
      v8[v9] = v11;
      v13 = *(a1 + 32) + 1;
      *(a1 + 32) = v13;
      if (v13 >= 2)
      {
        goto LABEL_16;
      }
    }

    return 1;
  }

  llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, a2, v18);
  if (v18[16] != 1)
  {
    return 0;
  }

  v4 = *a2;
  v5 = *(a1 + 32);
  if (v5 >= *(a1 + 36))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, a1 + 40, v5 + 1, 8);
    LODWORD(v5) = *(a1 + 32);
  }

  *(*(a1 + 24) + 8 * v5) = v4;
  ++*(a1 + 32);
  return 1;
}

void mlir::detail::RecoveryReproducerContext::crashHandler(mlir::detail::RecoveryReproducerContext *this, void *x1_0)
{
  v42 = *MEMORY[0x1E69E9840];
  if (!atomic_load_explicit(mlir::detail::RecoveryReproducerContext::reproducerSet, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(mlir::detail::RecoveryReproducerContext::reproducerSet, llvm::object_creator<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call, llvm::object_deleter<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call);
  }

  v2 = *(mlir::detail::RecoveryReproducerContext::reproducerSet[0] + 32);
  if (v2)
  {
    v3 = *(mlir::detail::RecoveryReproducerContext::reproducerSet[0] + 24);
    v4 = &v3[v2];
    do
    {
      while (1)
      {
        v5 = *v3;
        v24[0] = 0;
        v24[1] = 0;
        v25 = 0;
        appendReproducer(v24, *(v5 + 24), *(v5 + 32), v5, *(v5 + 40), *(v5 + 41));
        mlir::emitError(*(*(v5 + 24) + 24), v43, &v30);
        if (v30)
        {
          LODWORD(v26) = 3;
          v27 = "A signal was caught while processing the MLIR module:";
          v28 = 53;
          v6 = v32;
          if (v33 >= v34)
          {
            if (v32 <= &v26 && v32 + 24 * v33 > &v26)
            {
              v22 = &v26 - v32;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
              v6 = v32;
              v7 = (v32 + v22);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
              v7 = &v26;
              v6 = v32;
            }
          }

          else
          {
            v7 = &v26;
          }

          v8 = &v6[24 * v33];
          v9 = *v7;
          *(v8 + 2) = v7[2];
          *v8 = v9;
          ++v33;
          if (v30)
          {
            v29 = 260;
            v26 = v24;
            mlir::Diagnostic::operator<<(&v31, &v26);
            if (v30)
            {
              LODWORD(v26) = 3;
              v27 = "; marking pass as failed";
              v28 = 24;
              v10 = v32;
              if (v33 >= v34)
              {
                if (v32 <= &v26 && v32 + 24 * v33 > &v26)
                {
                  v23 = &v26 - v32;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
                  v10 = v32;
                  v11 = (v32 + v23);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
                  v11 = &v26;
                  v10 = v32;
                }
              }

              else
              {
                v11 = &v26;
              }

              v12 = &v10[24 * v33];
              v13 = *v11;
              *(v12 + 2) = v11[2];
              *v12 = v13;
              ++v33;
              if (v30)
              {
                mlir::InFlightDiagnostic::report(&v30);
              }
            }
          }
        }

        if (v41 == 1)
        {
          if (v40 != &v41)
          {
            free(v40);
          }

          v14 = __p;
          if (__p)
          {
            v15 = v39;
            v16 = __p;
            if (v39 != __p)
            {
              do
              {
                v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
              }

              while (v15 != v14);
              v16 = __p;
            }

            v39 = v14;
            operator delete(v16);
          }

          v17 = v36;
          if (v36)
          {
            v18 = v37;
            v19 = v36;
            if (v37 != v36)
            {
              do
              {
                v21 = *--v18;
                v20 = v21;
                *v18 = 0;
                if (v21)
                {
                  operator delete[](v20);
                }
              }

              while (v18 != v17);
              v19 = v36;
            }

            v37 = v17;
            operator delete(v19);
          }

          if (v32 != v35)
          {
            free(v32);
          }
        }

        if (SHIBYTE(v25) < 0)
        {
          break;
        }

        if (++v3 == v4)
        {
          return;
        }
      }

      operator delete(v24[0]);
      ++v3;
    }

    while (v3 != v4);
  }
}

void mlir::detail::PassCrashReproducerGenerator::~PassCrashReproducerGenerator(mlir::detail::PassCrashReproducerGenerator::Impl **this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    mlir::detail::PassCrashReproducerGenerator::Impl::~Impl(v2);
  }
}

void mlir::detail::PassCrashReproducerGenerator::prepareReproducerFor(uint64_t a1, mlir::Pass **a2, mlir::Pass **a3)
{
  memset(&__p, 0, sizeof(__p));
  v12 = 0;
  v16 = 0;
  v17 = 1;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v11 = &unk_1F5B3FB30;
  p_p = &__p;
  llvm::raw_ostream::SetBufferAndMode(&v11, 0, 0, 0);
  if (a2 != a3)
  {
    v6 = *a2;
    v5 = a2 + 1;
    mlir::Pass::printAsTextualPipeline(v6, &v11);
    while (v5 != a3)
    {
      while ((v14 - v15) <= 1)
      {
        llvm::raw_ostream::write(&v11, ", ", 2uLL);
        v7 = *v5++;
        mlir::Pass::printAsTextualPipeline(v7, &v11);
        if (v5 == a3)
        {
          goto LABEL_7;
        }
      }

      *v15++ = 8236;
      v8 = *v5++;
      mlir::Pass::printAsTextualPipeline(v8, &v11);
    }
  }

LABEL_7:
  v9 = operator new(0x30uLL);
  v10 = v9;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v20 = __p;
  }

  *v10 = v20;
  memset(&v20, 0, sizeof(v20));
  mlir::Operation::CloneOptions::all(v9);
  mlir::Operation::clone();
}

void mlir::detail::PassCrashReproducerGenerator::finalize(uint64_t *a1, Location a2, char a3)
{
  v127 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *(*a1 + 48);
  if (!v4)
  {
    return;
  }

  if (a3)
  {
    v5 = 8 * v4;
    v6 = *(v3 + 40) - 8;
    do
    {
      v7 = *(v6 + v5);
      *(v6 + v5) = 0;
      if (v7)
      {
        mlir::Operation::erase(*(v7 + 24));
        mlir::detail::RecoveryReproducerContext::disable(v7);
        if (*(v7 + 23) < 0)
        {
          operator delete(*v7);
        }

        operator delete(v7);
      }

      v5 -= 8;
    }

    while (v5);
    *(v3 + 48) = 0;
    return;
  }

  mlir::emitError(*(a2.var0.var0 + 3), a2, &v104);
  if (v104)
  {
    LODWORD(v117) = 3;
    v118[0] = "Failures have been detected while processing an MLIR pass pipeline";
    v118[1] = 66;
    v9 = &v117;
    v10 = v107;
    if (v108 >= v109)
    {
      if (v107 <= &v117 && v107 + 24 * v108 > &v117)
      {
        v96 = &v117 - v107;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v108 + 1, 24);
        v10 = v107;
        v9 = v107 + v96;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v108 + 1, 24);
        v9 = &v117;
        v10 = v107;
      }
    }

    v11 = &v10[24 * v108];
    v12 = *v9;
    *(v11 + 2) = *(v9 + 2);
    *v11 = v12;
    ++v108;
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(&v117, &v104);
  if (v104)
  {
    mlir::InFlightDiagnostic::report(&v104);
  }

  if (v116 == 1)
  {
    if (v115 != &v116)
    {
      free(v115);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v114;
      v15 = __p;
      if (v114 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v114 = v13;
      operator delete(v15);
    }

    v16 = v111;
    if (v111)
    {
      v17 = v112;
      v18 = v111;
      if (v112 != v111)
      {
        do
        {
          v20 = *--v17;
          v19 = v20;
          *v17 = 0;
          if (v20)
          {
            operator delete[](v19);
          }
        }

        while (v17 != v16);
        v18 = v111;
      }

      v112 = v16;
      operator delete(v18);
    }

    if (v107 != v110)
    {
      free(v107);
    }
  }

  v21 = *a1;
  if (*(*a1 + 32))
  {
    v22 = *(*(v21 + 40) + 8 * *(v21 + 48) - 8);
    v101 = 0;
    v102 = 0;
    v103 = 0;
    appendReproducer(&v101, *(v22 + 24), *(v22 + 32), v22, *(v22 + 40), *(v22 + 41));
    v23 = mlir::Diagnostic::attachNote(v118, 0, 0);
    v24 = v23;
    v26 = v23 + 16;
    v25 = *(v23 + 16);
    LODWORD(v104) = 3;
    v105 = "Pipeline failed while executing ";
    v106 = 32;
    v27 = *(v23 + 24);
    v28 = &v104;
    if (v27 >= *(v23 + 28))
    {
      if (v25 <= &v104 && v25 + 24 * v27 > &v104)
      {
        v97 = &v104 - v25;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v23 + 16, v23 + 32, v27 + 1, 24);
        v25 = *(v24 + 16);
        v28 = &v97[v25];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v23 + 16, v23 + 32, v27 + 1, 24);
        v25 = *(v24 + 16);
        v28 = &v104;
      }
    }

    v29 = v25 + 24 * *(v24 + 24);
    v30 = *v28;
    *(v29 + 16) = v28[2];
    *v29 = v30;
    ++*(v24 + 24);
    v31 = *(*a1 + 128) + 16 * *(*a1 + 136);
    formatPassOpReproducerMessage(v24, *(v31 - 16), *(v31 - 8));
    LODWORD(v104) = 3;
    v105 = ": ";
    v106 = 2;
    v32 = *(v24 + 24);
    v33 = *(v24 + 16);
    v34 = &v104;
    if (v32 >= *(v24 + 28))
    {
      if (v33 <= &v104 && v33 + 24 * v32 > &v104)
      {
        v98 = &v104 - v33;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v26, v24 + 32, v32 + 1, 24);
        v33 = *(v24 + 16);
        v34 = &v98[v33];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v26, v24 + 32, v32 + 1, 24);
        v33 = *(v24 + 16);
        v34 = &v104;
      }
    }

    v35 = v33 + 24 * *(v24 + 24);
    v36 = *v34;
    *(v35 + 16) = v34[2];
    *v35 = v36;
    ++*(v24 + 24);
    LOWORD(v108) = 260;
    v104 = &v101;
    mlir::Diagnostic::operator<<(v24, &v104);
    v37 = *a1;
    v38 = *(*a1 + 48);
    v39 = *a1;
    if (v38)
    {
      v40 = 8 * v38;
      v41 = *(v37 + 40) - 8;
      do
      {
        v42 = *(v41 + v40);
        *(v41 + v40) = 0;
        if (v42)
        {
          mlir::Operation::erase(*(v42 + 24));
          mlir::detail::RecoveryReproducerContext::disable(v42);
          if (*(v42 + 23) < 0)
          {
            operator delete(*v42);
          }

          operator delete(v42);
        }

        v40 -= 8;
      }

      while (v40);
      v39 = *a1;
    }

    *(v37 + 48) = 0;
    v67 = *(v39 + 112);
    if (v67 || *(v39 + 116))
    {
      v68 = *(v39 + 120);
      if (v68 <= 4 * v67 || v68 < 0x41)
      {
        if (v68)
        {
          v80 = *(v39 + 104);
          v81 = (v68 - 1) & 0xFFFFFFFFFFFFFFFLL;
          v82 = v80;
          if (v81 <= 2)
          {
            goto LABEL_83;
          }

          v83 = v81 + 1;
          v82 = &v80[v83 & 0x1FFFFFFFFFFFFFFCLL];
          v84 = v80 + 2;
          v85 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
          v86 = v83 & 0x1FFFFFFFFFFFFFFCLL;
          do
          {
            v84[-2] = v85;
            v84[-1] = v85;
            *v84 = v85;
            v84[1] = v85;
            v84 += 4;
            v86 -= 4;
          }

          while (v86);
          if (v83 != (v83 & 0x1FFFFFFFFFFFFFFCLL))
          {
LABEL_83:
            v87 = &v80[v68];
            do
            {
              v82->i64[0] = -4096;
              v82->i64[1] = -4096;
              ++v82;
            }

            while (v82 != v87);
          }
        }

        *(v39 + 112) = 0;
      }

      else
      {
        llvm::DenseMap<std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>::shrink_and_clear(v39 + 104);
      }
    }

    *(v39 + 136) = 0;
    if ((SHIBYTE(v103) & 0x80000000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

  v101 = 0;
  v102 = 0;
  v103 = 0;
  appendReproducer(&v101, *(**(v21 + 40) + 24), *(**(v21 + 40) + 32), **(v21 + 40), *(**(v21 + 40) + 40), *(**(v21 + 40) + 41));
  v43 = mlir::Diagnostic::attachNote(v118, 0, 0);
  v44 = v43;
  v46 = v43 + 16;
  v45 = *(v43 + 16);
  LODWORD(v104) = 3;
  v105 = "Pipeline failed while executing [";
  v106 = 33;
  v47 = *(v43 + 24);
  v48 = &v104;
  if (v47 >= *(v43 + 28))
  {
    if (v45 <= &v104 && v45 + 24 * v47 > &v104)
    {
      v99 = &v104 - v45;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v43 + 16, v43 + 32, v47 + 1, 24);
      v45 = *(v44 + 16);
      v48 = &v99[v45];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v43 + 16, v43 + 32, v47 + 1, 24);
      v45 = *(v44 + 16);
      v48 = &v104;
    }
  }

  v49 = v45 + 24 * *(v44 + 24);
  v50 = *v48;
  *(v49 + 16) = v48[2];
  *v49 = v50;
  ++*(v44 + 24);
  v51 = *(*a1 + 136);
  if (v51)
  {
    v52 = *(*a1 + 128);
    formatPassOpReproducerMessage(v44, *v52, v52[1]);
    if (v51 != 1)
    {
      v53 = &v52[2 * v51];
      v54 = v52 + 2;
      do
      {
        LOWORD(v108) = 261;
        v104 = ", ";
        v105 = 2;
        mlir::Diagnostic::operator<<(v44, &v104);
        v55 = *v54;
        v56 = v54[1];
        v54 += 2;
        formatPassOpReproducerMessage(v44, v55, v56);
      }

      while (v54 != v53);
    }
  }

  LODWORD(v104) = 3;
  v105 = "]: ";
  v106 = 3;
  v57 = *(v44 + 24);
  v58 = *(v44 + 16);
  v59 = &v104;
  if (v57 >= *(v44 + 28))
  {
    if (v58 <= &v104 && v58 + 24 * v57 > &v104)
    {
      v100 = &v104 - v58;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v46, v44 + 32, v57 + 1, 24);
      v58 = *(v44 + 16);
      v59 = &v100[v58];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v46, v44 + 32, v57 + 1, 24);
      v58 = *(v44 + 16);
      v59 = &v104;
    }
  }

  v60 = v58 + 24 * *(v44 + 24);
  v61 = *v59;
  *(v60 + 16) = v59[2];
  *v60 = v61;
  ++*(v44 + 24);
  LOWORD(v108) = 260;
  v104 = &v101;
  mlir::Diagnostic::operator<<(v44, &v104);
  v62 = *a1;
  v63 = *(*a1 + 112);
  if (!v63)
  {
    v64 = *a1;
    if (!*(v62 + 116))
    {
LABEL_54:
      *(v62 + 136) = 0;
      v66 = *(v64 + 48);
      if (!v66)
      {
        goto LABEL_76;
      }

      goto LABEL_70;
    }
  }

  v65 = *(v62 + 120);
  if (v65 > 4 * v63 && v65 >= 0x41)
  {
    llvm::DenseMap<std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>::shrink_and_clear(v62 + 104);
    v64 = *a1;
    goto LABEL_54;
  }

  if (v65)
  {
    v69 = *(v62 + 104);
    v70 = (v65 - 1) & 0xFFFFFFFFFFFFFFFLL;
    v71 = v69;
    if (v70 <= 2)
    {
      goto LABEL_67;
    }

    v72 = v70 + 1;
    v71 = &v69[v72 & 0x1FFFFFFFFFFFFFFCLL];
    v73 = v69 + 2;
    v74 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    v75 = v72 & 0x1FFFFFFFFFFFFFFCLL;
    do
    {
      v73[-2] = v74;
      v73[-1] = v74;
      *v73 = v74;
      v73[1] = v74;
      v73 += 4;
      v75 -= 4;
    }

    while (v75);
    if (v72 != (v72 & 0x1FFFFFFFFFFFFFFCLL))
    {
LABEL_67:
      v76 = &v69[v65];
      do
      {
        v71->i64[0] = -4096;
        v71->i64[1] = -4096;
        ++v71;
      }

      while (v71 != v76);
    }
  }

  *(v62 + 112) = 0;
  v64 = v62;
  *(v62 + 136) = 0;
  v66 = *(v62 + 48);
  if (v66)
  {
LABEL_70:
    v77 = 8 * v66;
    v78 = *(v64 + 40) - 8;
    do
    {
      v79 = *(v78 + v77);
      *(v78 + v77) = 0;
      if (v79)
      {
        mlir::Operation::erase(*(v79 + 24));
        mlir::detail::RecoveryReproducerContext::disable(v79);
        if (*(v79 + 23) < 0)
        {
          operator delete(*v79);
        }

        operator delete(v79);
      }

      v77 -= 8;
    }

    while (v77);
  }

LABEL_76:
  *(v64 + 48) = 0;
  if (SHIBYTE(v103) < 0)
  {
LABEL_87:
    operator delete(v101);
  }

LABEL_88:
  if (v117)
  {
    mlir::InFlightDiagnostic::report(&v117);
  }

  if (v126 == 1)
  {
    if (v125 != &v126)
    {
      free(v125);
    }

    v88 = v123;
    if (v123)
    {
      v89 = v124;
      v90 = v123;
      if (v124 != v123)
      {
        do
        {
          v89 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v89 - 1);
        }

        while (v89 != v88);
        v90 = v123;
      }

      v124 = v88;
      operator delete(v90);
    }

    v91 = v121;
    if (v121)
    {
      v92 = v122;
      v93 = v121;
      if (v122 != v121)
      {
        do
        {
          v95 = *--v92;
          v94 = v95;
          *v92 = 0;
          if (v95)
          {
            operator delete[](v94);
          }
        }

        while (v92 != v91);
        v93 = v121;
      }

      v122 = v91;
      operator delete(v93);
    }

    if (v119 != &v120)
    {
      free(v119);
    }
  }
}

uint64_t formatPassOpReproducerMessage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1 + 16;
  v6 = *(a1 + 16);
  LODWORD(CallableForCallee) = 3;
  v55 = 1;
  v8 = *(a1 + 24);
  v9 = &CallableForCallee;
  if (v8 >= *(a1 + 28))
  {
    if (v6 <= &CallableForCallee && v6 + 24 * v8 > &CallableForCallee)
    {
      v45 = &CallableForCallee - v6;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v8 + 1, 24);
      v6 = *(a1 + 16);
      v9 = &v45[v6];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v8 + 1, 24);
      v6 = *(a1 + 16);
      v9 = &CallableForCallee;
    }
  }

  v10 = v6 + 24 * *(a1 + 24);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 2);
  *v10 = v11;
  ++*(a1 + 24);
  v12 = (*(*a2 + 16))(a2);
  v56 = 261;
  CallableForCallee = v12;
  v54 = v13;
  v14 = mlir::Diagnostic::operator<<(a1, &CallableForCallee);
  v16 = v14 + 16;
  v15 = *(v14 + 16);
  LODWORD(v57) = 3;
  v59 = 5;
  v17 = *(v14 + 24);
  v18 = &v57;
  if (v17 >= *(v14 + 28))
  {
    if (v15 <= &v57 && v15 + 24 * v17 > &v57)
    {
      v46 = &v57 - v15;
      v47 = v14;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v14 + 16, v14 + 32, v17 + 1, 24);
      v14 = v47;
      v15 = *(v47 + 16);
      v18 = &v46[v15];
    }

    else
    {
      v42 = v14;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v14 + 16, v14 + 32, v17 + 1, 24);
      v14 = v42;
      v15 = *(v42 + 16);
      v18 = &v57;
    }
  }

  v19 = v15 + 24 * *(v14 + 24);
  v20 = *v18;
  *(v19 + 16) = *(v18 + 2);
  *v19 = v20;
  v21 = *(v14 + 28);
  v22 = (*(v14 + 24) + 1);
  *(v14 + 24) = v22;
  LODWORD(v57) = 3;
  v58 = "'";
  v59 = 1;
  v23 = *(v14 + 16);
  v24 = &v57;
  if (v22 >= v21)
  {
    if (v23 <= &v57 && v23 + 24 * v22 > &v57)
    {
      v48 = &v57 - v23;
      v49 = v14;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v16, v14 + 32, v22 + 1, 24);
      v14 = v49;
      v23 = *(v49 + 16);
      v24 = &v48[v23];
    }

    else
    {
      v43 = v14;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v16, v14 + 32, v22 + 1, 24);
      v14 = v43;
      v23 = *(v43 + 16);
      v24 = &v57;
    }
  }

  v25 = v23 + 24 * *(v14 + 24);
  v26 = *v24;
  *(v25 + 16) = *(v24 + 2);
  *v25 = v26;
  ++*(v14 + 24);
  v27 = mlir::Diagnostic::operator<<(v14, *(a3 + 48));
  v28 = *(v27 + 16);
  LODWORD(v57) = 3;
  v58 = "' operation";
  v59 = 11;
  v29 = *(v27 + 24);
  v30 = &v57;
  if (v29 >= *(v27 + 28))
  {
    if (v28 <= &v57 && v28 + 24 * v29 > &v57)
    {
      v50 = &v57 - v28;
      v51 = v27;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v27 + 16, v27 + 32, v29 + 1, 24);
      v27 = v51;
      v28 = *(v51 + 16);
      v30 = &v50[v28];
    }

    else
    {
      v44 = v27;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v27 + 16, v27 + 32, v29 + 1, 24);
      v27 = v44;
      v28 = *(v44 + 16);
      v30 = &v57;
    }
  }

  v31 = v28 + 24 * *(v27 + 24);
  v32 = *v30;
  *(v31 + 16) = *(v30 + 2);
  *v31 = v32;
  ++*(v27 + 24);
  result = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(a3);
  if (!result)
  {
    goto LABEL_9;
  }

  if (*(a3 + 47) && (v60.var0 = "sym_name", v60.var1 = 8, result = mlir::Operation::getInherentAttr(a3, v60), (v34 & 1) != 0))
  {
    if (!result)
    {
LABEL_9:
      v57 = 0;
      v58 = result;
      return result;
    }
  }

  else
  {
    v61.var0 = "sym_name";
    v61.var1 = 8;
    if (!mlir::DictionaryAttr::contains((a3 + 56), v61))
    {
      result = 0;
      v57 = 0;
      v58 = 0;
      return result;
    }
  }

  result = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(a3);
  v57 = a3;
  v58 = result;
  if (a3)
  {
    LODWORD(CallableForCallee) = 3;
    v54 = ": @";
    v55 = 3;
    v35 = *(a1 + 24);
    v36 = *(a1 + 16);
    v37 = &CallableForCallee;
    if (v35 >= *(a1 + 28))
    {
      if (v36 <= &CallableForCallee && v36 + 24 * v35 > &CallableForCallee)
      {
        v52 = &CallableForCallee - v36;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v7, a1 + 32, v35 + 1, 24);
        v36 = *(a1 + 16);
        v37 = &v52[v36];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v7, a1 + 32, v35 + 1, 24);
        v36 = *(a1 + 16);
        v37 = &CallableForCallee;
      }
    }

    v38 = v36 + 24 * *(a1 + 24);
    v39 = *v37;
    *(v38 + 16) = *(v37 + 2);
    *v38 = v39;
    ++*(a1 + 24);
    CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v57);
    AttrData = mlir::OpaqueAttr::getAttrData(&CallableForCallee);
    v56 = 261;
    CallableForCallee = AttrData;
    v54 = v41;
    return mlir::Diagnostic::operator<<(a1, &CallableForCallee);
  }

  return result;
}

uint64_t mlir::PassManager::runWithCrashRecovery(uint64_t a1, AttributeStorage *a2, uint64_t a3)
{
  v15 = a3;
  v14 = a2;
  v4 = *(a1 + 32);
  v5 = mlir::OpPassManager::begin(a1);
  MemorySpace = mlir::MemRefType::getMemorySpace(a1);
  v7 = (*(a1 + 56) >> 1) & 1;
  llvm::CrashRecoveryContext::Enable(MemorySpace);
  v9 = *v4;
  *(v9 + 144) = v7;
  if ((*(v9 + 32) & 1) == 0)
  {
    mlir::detail::PassCrashReproducerGenerator::prepareReproducerFor(v4, v5, MemorySpace);
  }

  v16 = 0;
  llvm::CrashRecoveryContext::CrashRecoveryContext(v13, v8);
  v12[0] = &v16;
  v12[1] = a1;
  v12[2] = &v14;
  v12[3] = &v15;
  llvm::CrashRecoveryContext::RunSafelyOnThread(v13, llvm::function_ref<void ()(void)>::callback_fn<mlir::PassManager::runWithCrashRecovery(mlir::Operation *,mlir::AnalysisManager)::$_0>, v12, 0);
  v10.var0.var0 = v14;
  mlir::detail::PassCrashReproducerGenerator::finalize(*(a1 + 32), v10, v16);
  llvm::CrashRecoveryContext::~CrashRecoveryContext(v13);
  return v16;
}

void mlir::AsmResourcePrinter::fromCallable<appendReproducer(std::string &,mlir::Operation *,std::function<std::unique_ptr<mlir::ReproducerStream> ()(std::string &)> const&,std::string const&,BOOL,BOOL)::$_0>(llvm::StringRef,appendReproducer(std::string &,mlir::Operation *,std::function<std::unique_ptr<mlir::ReproducerStream> ()(std::string &)> const&,std::string const&,BOOL,BOOL)::$_0 &&)::Printer::~Printer(void **a1)
{
  mlir::AsmResourcePrinter::~AsmResourcePrinter(a1);

  operator delete(v1);
}

uint64_t mlir::AsmResourcePrinter::fromCallable<appendReproducer(std::string &,mlir::Operation *,std::function<std::unique_ptr<mlir::ReproducerStream> ()(std::string &)> const&,std::string const&,BOOL,BOOL)::$_0>(llvm::StringRef,appendReproducer(std::string &,mlir::Operation *,std::function<std::unique_ptr<mlir::ReproducerStream> ()(std::string &)> const&,std::string const&,BOOL,BOOL)::$_0 &&)::Printer::buildResources(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = v5[1];
  }

  (*(*a3 + 24))(a3, "pipeline", 8, v7, v8);
  (*(*a3 + 16))(a3, "disable_threading", 17, **(a1 + 40));
  v9 = **(a1 + 48);
  v10 = *(*a3 + 16);

  return v10(a3, "verify_each", 11, v9);
}

uint64_t llvm::object_creator<llvm::sys::SmartMutex<true>>::call()
{
  v0 = operator new(0x48uLL);
  *v0 = 0u;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  *(v0 + 8) = 0;
  result = MEMORY[0x1E12E57B0]();
  *(result + 64) = 0;
  return result;
}

void llvm::object_deleter<llvm::sys::SmartMutex<true>>::call(std::recursive_mutex *a1)
{
  if (a1)
  {
    std::recursive_mutex::~recursive_mutex(a1);

    operator delete(v1);
  }
}

double llvm::object_creator<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call()
{
  v0 = operator new(0x30uLL);
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  *v0 = 0u;
  *(v0 + 3) = v0 + 40;
  *(v0 + 9) = 1;
  return result;
}

uint64_t llvm::object_deleter<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 24);
    if (v2 != (v1 + 40))
    {
      free(v2);
    }

    llvm::deallocate_buffer(*v1, (8 * *(v1 + 16)));
  }

  return result;
}

void mlir::detail::PassCrashReproducerGenerator::Impl::~Impl(mlir::detail::PassCrashReproducerGenerator::Impl *this)
{
  v2 = *(this + 16);
  if (v2 != this + 144)
  {
    free(v2);
  }

  llvm::deallocate_buffer(*(this + 13), (16 * *(this + 30)));
}

void llvm::DenseMap<std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>::shrink_and_clear(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = 1 << (33 - __clz(v2 - 1));
  if (v3 <= 64)
  {
    v3 = 64;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 != v1)
  {
    llvm::deallocate_buffer(*a1, (16 * v1));
  }

  *(a1 + 8) = 0;
  if (v1)
  {
    v5 = *a1;

    memset_pattern16(v5, &unk_1E096FAC0, 16 * v1);
  }
}

void llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::detail::RecoveryReproducerContext>,false>::grow(uint64_t a1, unint64_t a2)
{
  v25 = 0;
  v3 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 8, &v25);
  v5 = v4;
  v6 = *a1;
  v7 = *a1;
  v8 = *(a1 + 8);
  if (!v8)
  {
    goto LABEL_21;
  }

  v9 = (v8 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  v10 = v8;
  if (v9 < 0xB)
  {
    v11 = v5;
LABEL_12:
    v20 = &v6[v8];
    do
    {
      v21 = *v7;
      *v7++ = 0;
      *v11++ = v21;
    }

    while (v7 != v20);
    goto LABEL_14;
  }

  v12 = v6 >= v5 + v10 * 8 || v5 >= &v6[v10];
  v11 = v5;
  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = v9 + 1;
  v14 = v13 & 0x3FFFFFFFFFFFFFFCLL;
  v11 = (v5 + v14 * 8);
  v7 = &v6[v14];
  v15 = (v6 + 2);
  v16 = (v5 + 16);
  v17 = v13 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v18 = *(v15 - 1);
    v19 = *v15;
    *(v15 - 1) = 0uLL;
    *v15 = 0uLL;
    *(v16 - 1) = v18;
    *v16 = v19;
    v15 += 2;
    v16 += 2;
    v17 -= 4;
  }

  while (v17);
  if (v13 != (v13 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_12;
  }

LABEL_14:
  v22 = v6 - 1;
  do
  {
    v23 = v22[v10];
    v22[v10] = 0;
    if (v23)
    {
      mlir::Operation::erase(*(v23 + 24));
      mlir::detail::RecoveryReproducerContext::disable(v23);
      if (*(v23 + 23) < 0)
      {
        operator delete(*v23);
      }

      operator delete(v23);
    }

    --v10;
  }

  while (v10 * 8);
  v7 = *a1;
LABEL_21:
  v24 = v25;
  if (v7 != v3)
  {
    free(v7);
  }

  *a1 = v5;
  *(a1 + 12) = v24;
}

uint64_t llvm::function_ref<void ()(void)>::callback_fn<mlir::PassManager::runWithCrashRecovery(mlir::Operation *,mlir::AnalysisManager)::$_0>(uint64_t a1)
{
  result = mlir::PassManager::runPasses(*(a1 + 8), **(a1 + 16), **(a1 + 24));
  **a1 = result;
  return result;
}

uint64_t mlir::detail::pass_options::parseCommaSeparatedList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t, unsigned __int8 *, uint64_t), uint64_t a7)
{
  v9 = a5;
  v28 = *MEMORY[0x1E69E9840];
  v24 = a4;
  v25 = a5;
  v26[0] = v26;
  v27 = llvm::detail::UniqueFunctionBase<unsigned long,llvm::StringRef,unsigned long,char>::CallbacksHolder<mlir::detail::pass_options::parseCommaSeparatedList(llvm::cl::Option &,llvm::StringRef,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::StringRef)>)::$_0,mlir::detail::pass_options::parseCommaSeparatedList(llvm::cl::Option &,llvm::StringRef,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::StringRef)>)::$_0,void>::Callbacks + 2;
  v10 = (llvm::detail::UniqueFunctionBase<unsigned long,llvm::StringRef,unsigned long,char>::CallbacksHolder<mlir::detail::pass_options::parseCommaSeparatedList(llvm::cl::Option &,llvm::StringRef,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::StringRef)>)::$_0,mlir::detail::pass_options::parseCommaSeparatedList(llvm::cl::Option &,llvm::StringRef,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::StringRef)>)::$_0,void>::Callbacks[0])(v26, a4, a5, 0, 0x2Cu);
  if (v10 == -1)
  {
LABEL_11:
    ArgAndUpdateOptions = extractArgAndUpdateOptions(&v24, v9);
    result = a6(a7, ArgAndUpdateOptions, v19);
    v21 = v27;
    if (v27 < 8)
    {
      return result;
    }

    goto LABEL_14;
  }

  v11 = v10;
  while (1)
  {
    v12 = extractArgAndUpdateOptions(&v24, v11);
    if ((a6(a7, v12, v13) & 1) == 0)
    {
      break;
    }

    v15 = v25 != 0;
    if (v25)
    {
      v16 = v24 + 1;
    }

    else
    {
      v16 = v24;
    }

    v9 = v25 - v15;
    v24 = v16;
    v25 -= v15;
    if ((v27 & 2) != 0)
    {
      v17 = v26;
    }

    else
    {
      v17 = v26[0];
    }

    v11 = (*(v27 & 0xFFFFFFFFFFFFFFF8))(v17, v16, v9, 0, 0x2Cu);
    if (v11 == -1)
    {
      goto LABEL_11;
    }
  }

  result = 0;
  v21 = v27;
  if (v27 >= 8)
  {
LABEL_14:
    if ((v21 & 4) != 0)
    {
      v22 = v26[0];
      if ((v21 & 2) != 0)
      {
        v22 = v26;
      }

      v23 = result;
      (*((v21 & 0xFFFFFFFFFFFFFFF8) + 16))(v22, v14);
      result = v23;
    }

    if ((v21 & 2) == 0)
    {
      llvm::deallocate_buffer(v26[0], v26[1]);
    }
  }

  return result;
}

unsigned __int8 *extractArgAndUpdateOptions(llvm::StringRef *a1, unint64_t a2)
{
  v4 = *(a1 + 1);
  if (v4 >= a2)
  {
    v4 = a2;
  }

  v23 = *a1;
  v24 = v4;
  first_not_of = llvm::StringRef::find_first_not_of(&v23, " \t\n\v\f\r", 6, 0);
  if (first_not_of >= v24)
  {
    v6 = v24;
  }

  else
  {
    v6 = first_not_of;
  }

  v7 = v24 - v6;
  v25 = &v23[v6];
  v26 = v24 - v6;
  last_not_of = llvm::StringRef::find_last_not_of(&v25, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
  v9 = v25;
  if (last_not_of + 1 < v26)
  {
    v10 = last_not_of + 1;
  }

  else
  {
    v10 = v26;
  }

  v11 = v26 - v7 + v10;
  if (v26 >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v26;
  }

  v13 = *(a1 + 1);
  if (v13 >= a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = *(a1 + 1);
  }

  v25 = (*a1 + v14);
  v26 = v13 - v14;
  v15 = llvm::StringRef::find_first_not_of(&v25, " \t\n\v\f\r", 6, 0);
  v16 = v26;
  if (v15 >= v26)
  {
    v17 = v26;
  }

  else
  {
    v17 = v15;
  }

  *a1 = &v25[v17];
  *(a1 + 1) = v16 - v17;
  if (v12 >= 3)
  {
    v18 = *v9;
    v19 = &v9[v12];
    if (v18 == 34)
    {
      if (*(v19 - 1) != 34)
      {
        return v9;
      }
    }

    else if (v18 == 123)
    {
      if (*(v19 - 1) != 125)
      {
        return v9;
      }
    }

    else if (v18 != 39 || *(v19 - 1) != 39)
    {
      return v9;
    }

    v23 = v9 + 1;
    v24 = v12 - 2;
    v20 = llvm::StringRef::find_first_not_of(&v23, " \t\n\v\f\r", 6, 0);
    if (v20 >= v24)
    {
      v21 = v24;
    }

    else
    {
      v21 = v20;
    }

    v25 = &v23[v21];
    v26 = v24 - v21;
    llvm::StringRef::find_last_not_of(&v25, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
    return v25;
  }

  return v9;
}

uint64_t mlir::detail::PassOptions::copyOptionValuesFrom(uint64_t result, uint64_t a2)
{
  v2 = *(result + 160);
  v3 = *(result + 168);
  if (v2 != v3)
  {
    v4 = *(a2 + 160);
    v5 = *(a2 + 168);
    if (v4 != v5)
    {
      v6 = v4 + 8;
      v7 = v2 + 8;
      do
      {
        result = (*(**(v7 - 8) + 40))(*(v7 - 8), *(v6 - 8));
        if (v7 == v3)
        {
          break;
        }

        v7 += 8;
        v8 = v6 == v5;
        v6 += 8;
      }

      while (!v8);
    }
  }

  return result;
}

uint64_t mlir::detail::PassOptions::parseFromString(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (!a3)
  {
    return 1;
  }

  v5 = a3;
  while (2)
  {
    v8 = 0;
    v47 = a2;
    v48 = v5;
    do
    {
      v9 = *(a2 + v8);
      if (v9 == 61)
      {
        ArgAndUpdateOptions = extractArgAndUpdateOptions(&v47, v8);
        v13 = v16;
        v17 = v48;
        v18 = v48 != 0;
        if (v48)
        {
          v19 = v47 + 1;
        }

        else
        {
          v19 = v47;
        }

        v20 = v48 - v18;
        v47 = v19;
        v48 -= v18;
        if (v17 < 2)
        {
          v21 = 0;
          goto LABEL_58;
        }

        v21 = 0;
        while (1)
        {
          v24 = *(v19 + v21);
          switch(v24)
          {
            case '""':
              v36 = v21 + 1;
              if (v20 > v21 + 1)
              {
                v37 = 34;
LABEL_17:
                v22 = memchr((v19 + v36), v37, v20 - v36);
                v23 = &v22[-v19] == -1 || v22 == 0;
                if (!v23)
                {
                  v21 = &v22[-v19];
                }
              }

              break;
            case '\'':
              v36 = v21 + 1;
              if (v20 > v21 + 1)
              {
                v37 = 39;
                goto LABEL_17;
              }

              break;
            case ' ':
              goto LABEL_58;
            default:
              v25 = (v21 + 1);
              if (v24 == 123 && v25 != v20)
              {
                v27 = 1;
                do
                {
                  v28 = v25[v19];
                  if (v28 > 0x7A)
                  {
                    if (v28 == 123)
                    {
                      ++v27;
                    }

                    else if (v28 == 125 && !--v27)
                    {
                      goto LABEL_22;
                    }
                  }

                  else
                  {
                    if (v28 != 34)
                    {
                      v23 = v28 == 39;
                      v29 = v21 + 2;
                      if (!v23 || v20 <= v29)
                      {
                        goto LABEL_32;
                      }

                      v31 = v20 - v29;
                      v32 = (v19 + v29);
                      v33 = 39;
                      goto LABEL_47;
                    }

                    v31 = v20 - (v21 + 2);
                    if (v20 > v21 + 2)
                    {
                      v32 = (v19 + v21 + 2);
                      v33 = 34;
LABEL_47:
                      v34 = memchr(v32, v33, v31);
                      if (&v34[-v19] != -1 && v34 != 0)
                      {
                        v25 = &v34[-v19];
                      }
                    }
                  }

LABEL_32:
                  v21 = v25++;
                }

                while (v25 != v20);
              }

              break;
          }

LABEL_22:
          if (++v21 == v20)
          {
            v21 = v20;
LABEL_58:
            v15 = extractArgAndUpdateOptions(&v47, v21);
            v14 = v38;
            a2 = v47;
            v5 = v48;
            if (!v13)
            {
              goto LABEL_3;
            }

LABEL_59:
            v39 = llvm::StringMapImpl::hash(ArgAndUpdateOptions, v13, v10);
            Key = llvm::StringMapImpl::FindKey((a1 + 128), ArgAndUpdateOptions, v13, v39);
            if (Key != -1 && Key != *(a1 + 136))
            {
              if ((llvm::cl::ProvidePositionalOption(*(*(*(a1 + 128) + 8 * Key) + 8), v15, v14, 0) & 1) == 0)
              {
                goto LABEL_3;
              }

              return 0;
            }

            v42 = a4[4];
            if (a4[3] - v42 > 0x25uLL)
            {
              qmemcpy(v42, "<Pass-Options-Parser>: no such option ", 38);
              v46 = a4[3];
              v43 = (a4[4] + 38);
              a4[4] = v43;
              if (v13 <= v46 - v43)
              {
LABEL_66:
                memcpy(v43, ArgAndUpdateOptions, v13);
                v44 = a4[3];
                v45 = (a4[4] + v13);
                a4[4] = v45;
                if (v44 != v45)
                {
LABEL_67:
                  result = 0;
                  *v45 = 10;
                  ++a4[4];
                  return result;
                }

LABEL_71:
                llvm::raw_ostream::write(a4, "\n", 1uLL);
                return 0;
              }
            }

            else
            {
              a4 = llvm::raw_ostream::write(a4, "<Pass-Options-Parser>: no such option ", 0x26uLL);
              v43 = a4[4];
              if (v13 <= a4[3] - v43)
              {
                goto LABEL_66;
              }
            }

            a4 = llvm::raw_ostream::write(a4, ArgAndUpdateOptions, v13);
            v45 = a4[4];
            if (a4[3] != v45)
            {
              goto LABEL_67;
            }

            goto LABEL_71;
          }
        }
      }

      if (v9 == 32)
      {
        goto LABEL_9;
      }

      ++v8;
    }

    while (v5 != v8);
    v8 = v5;
LABEL_9:
    ArgAndUpdateOptions = extractArgAndUpdateOptions(&v47, v8);
    v13 = v12;
    v14 = 0;
    v15 = 0;
    a2 = v47;
    v5 = v48;
    if (v12)
    {
      goto LABEL_59;
    }

LABEL_3:
    if (v5)
    {
      continue;
    }

    return 1;
  }
}

void mlir::detail::PassOptions::print(mlir::detail::PassOptions *this, llvm::raw_ostream *a2)
{
  v30[4] = *MEMORY[0x1E69E9840];
  if (!*(this + 35))
  {
    return;
  }

  v4 = *(this + 20);
  v3 = *(this + 21);
  __base = v30;
  v29 = 0x400000000;
  v5 = v3 - v4;
  v6 = (v3 - v4) >> 3;
  if (v6 < 5)
  {
    v7 = 0;
    if (v4 == v3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__base, v30, v6, 8);
    v7 = v29;
    if (v4 == v3)
    {
      goto LABEL_12;
    }
  }

  v8 = __base + 8 * v7;
  if (v5 - 8 < 0x38)
  {
    goto LABEL_32;
  }

  v9 = __base + 8 * v7;
  if ((v9 - v4) < 0x20)
  {
    goto LABEL_32;
  }

  v10 = ((v5 - 8) >> 3) + 1;
  v11 = 8 * (v10 & 0x3FFFFFFFFFFFFFFCLL);
  v8 = (v8 + v11);
  v12 = &v4[v11];
  v13 = (v4 + 16);
  v14 = v9 + 16;
  v15 = v10 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v16 = *v13;
    *(v14 - 1) = *(v13 - 1);
    *v14 = v16;
    v13 += 2;
    v14 += 2;
    v15 -= 4;
  }

  while (v15);
  v4 = v12;
  if (v10 != (v10 & 0x3FFFFFFFFFFFFFFCLL))
  {
LABEL_32:
    do
    {
      v17 = *v4;
      v4 += 8;
      *v8++ = v17;
    }

    while (v4 != v3);
  }

LABEL_12:
  v18 = v7 + (v5 >> 3);
  LODWORD(v29) = v18;
  if (v18 >= 2)
  {
    qsort(__base, v18, 8uLL, mlir::detail::PassOptions::print(llvm::raw_ostream &)const::$_0::__invoke);
  }

  v19 = *(a2 + 4);
  if (v19 < *(a2 + 3))
  {
    *(a2 + 4) = v19 + 1;
    *v19 = 123;
    v20 = v29;
    if (!v29)
    {
      goto LABEL_19;
    }

LABEL_18:
    v21 = __base;
    (*(**__base + 24))(*__base, a2);
    if (v20 != 1)
    {
      v24 = (v21 + 8);
      v25 = 8 * v20 - 8;
      do
      {
        v27 = *(a2 + 4);
        if (*(a2 + 3) == v27)
        {
          llvm::raw_ostream::write(a2, " ", 1uLL);
        }

        else
        {
          *v27 = 32;
          ++*(a2 + 4);
        }

        v26 = *v24++;
        (*(*v26 + 24))(v26, a2);
        v25 -= 8;
      }

      while (v25);
    }

    goto LABEL_19;
  }

  llvm::raw_ostream::write(a2, 123);
  v20 = v29;
  if (v29)
  {
    goto LABEL_18;
  }

LABEL_19:
  v22 = *(a2 + 4);
  if (v22 >= *(a2 + 3))
  {
    llvm::raw_ostream::write(a2, 125);
    v23 = __base;
    if (__base == v30)
    {
      return;
    }
  }

  else
  {
    *(a2 + 4) = v22 + 1;
    *v22 = 125;
    v23 = __base;
    if (__base == v30)
    {
      return;
    }
  }

  free(v23);
}

uint64_t llvm::cl::OptionValue<mlir::OpPassManager>::~OptionValue(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  *(v1 + 8) = 0;
  if (v2)
  {
    v3 = v1;
    mlir::OpPassManager::~OpPassManager(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

void mlir::parsePassPipeline(const char *a1@<X0>, size_t a2@<X1>, llvm::SourceMgr::SrcBuffer *a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a1;
  v26 = a2;
  first_not_of = llvm::StringRef::find_first_not_of(&v25, " \t\n\v\f\r", 6, 0);
  if (first_not_of >= v26)
  {
    v7 = v26;
  }

  else
  {
    v7 = first_not_of;
  }

  v8 = v26 - v7;
  v27 = &v25[v7];
  v28 = v26 - v7;
  last_not_of = llvm::StringRef::find_last_not_of(&v27, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
  v10 = v27;
  if (last_not_of + 1 < v28)
  {
    v11 = last_not_of + 1;
  }

  else
  {
    v11 = v28;
  }

  v12 = v28 - v8 + v11;
  if (v28 >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v28;
  }

  v25 = v27;
  v26 = v13;
  if (v13 && ((v14 = memchr(v27, 40, v13)) == 0 ? (v15 = -1) : (v15 = v14 - v10), (v16 = v15 + 1, v15 + 1 >= 2) && v10[v13 - 1] == 41))
  {
    v26 = v13 - 1;
    v27 = v10;
    if (v13 - 1 <= v15)
    {
      v17 = v13 - 1;
    }

    else
    {
      v17 = v14 - v10;
    }

    v28 = v17;
    v18 = llvm::StringRef::find_last_not_of(&v27, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
    if (v18 + 1 < v28)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = v28;
    }

    v20 = v28 - v17 + v19;
    if (v28 >= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v28;
    }

    mlir::OpPassManager::OpPassManager(&v27, v27, v21, 1);
    if (v26 >= v16)
    {
      v22 = v16;
    }

    else
    {
      v22 = v26;
    }

    if (mlir::parsePassPipeline(&v25[v22], v26 - v22, &v27, a3))
    {
      mlir::OpPassManager::OpPassManager(a4, &v27);
      v23 = 1;
    }

    else
    {
      v23 = 0;
      *a4 = 0;
    }

    *(a4 + 8) = v23;
    mlir::OpPassManager::~OpPassManager(&v27);
  }

  else
  {
    v24 = *(a3 + 4);
    if (*(a3 + 3) - v24 > 0x5EuLL)
    {
      qmemcpy(v24, "expected pass pipeline to be wrapped with the anchor operation type, e.g. 'builtin.module(...)'", 95);
      *(a3 + 4) += 95;
    }

    else
    {
      llvm::raw_ostream::write(a3, "expected pass pipeline to be wrapped with the anchor operation type, e.g. 'builtin.module(...)'", 0x5FuLL);
    }

    *a4 = 0;
    *(a4 + 8) = 0;
  }
}

uint64_t llvm::cl::parser<mlir::OpPassManager>::parse(llvm *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, size_t a6, mlir::OpPassManager **a7)
{
  v10 = llvm::errs(a1);
  mlir::parsePassPipeline(a5, a6, v10, &v16);
  v11 = v17;
  if (v17 == 1)
  {
    v12 = operator new(8uLL);
    mlir::OpPassManager::OpPassManager(v12, &v16);
    v13 = *a7;
    *a7 = v12;
    if (v13)
    {
      mlir::OpPassManager::~OpPassManager(v13);
      operator delete(v14);
    }
  }

  if (v17 == 1)
  {
    mlir::OpPassManager::~OpPassManager(&v16);
  }

  return v11 ^ 1u;
}

mlir::OpPassManager **llvm::cl::parser<mlir::OpPassManager>::ParsedPassManager::~ParsedPassManager(mlir::OpPassManager **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    mlir::OpPassManager::~OpPassManager(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

uint64_t mlir::parsePassPipeline(const char *a1, uint64_t a2, mlir::OpPassManager *a3, llvm::SourceMgr::SrcBuffer *a4)
{
  v95[4] = *MEMORY[0x1E69E9840];
  __p = 0;
  v78 = 0;
  v79 = 0;
  if (!a2)
  {
LABEL_91:
    v83 = a4;
    Nesting = mlir::OpPassManager::getNesting(a3);
    mlir::OpPassManager::setNesting(a3, 1);
    mlir::OpPassManager::setNesting(a3, Nesting);
    v70 = v69 & 1;
    v71 = __p;
    if (__p)
    {
      goto LABEL_95;
    }

    return v70;
  }

  llvm::SourceMgr::SourceMgr(&v83);
  llvm::MemoryBuffer::getMemBuffer(a1, a2, "MLIR Textual PassPipeline Parser", 0x20, &v82);
  v94 = 0;
  v95[0] = 0;
  v8 = v82;
  v82 = 0;
  v93 = v8;
  v75 = a3;
  if (v84 >= v85)
  {
    v9 = std::vector<llvm::SourceMgr::SrcBuffer>::__emplace_back_slow_path<llvm::SourceMgr::SrcBuffer>(&v83, &v93);
  }

  else
  {
    v9 = (llvm::SourceMgr::SrcBuffer::SrcBuffer(v84, &v93) + 3);
  }

  v84 = v9;
  llvm::SourceMgr::SrcBuffer::~SrcBuffer(&v93);
  v10 = v82;
  v82 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v80 = &v83;
  v81 = a4;
  v88 = a1;
  v89 = a2;
  v11 = v95;
  v93 = v95;
  v95[0] = &__p;
  v94 = 0x400000001;
  v12 = 1;
  for (i = v95; ; i = v93)
  {
LABEL_8:
    v14 = *&i[8 * v12 - 8];
    first_of = llvm::StringRef::find_first_of(&v88, ",(){", 4, 0);
    v16 = first_of;
    v17 = v89;
    if (v89 >= first_of)
    {
      v17 = first_of;
    }

    v86 = v88;
    v87 = v17;
    first_not_of = llvm::StringRef::find_first_not_of(&v86, " \t\n\v\f\r", 6, 0);
    if (first_not_of >= v87)
    {
      v19 = v87;
    }

    else
    {
      v19 = first_not_of;
    }

    v20 = v87 - v19;
    v90 = &v86[v19];
    v91 = v87 - v19;
    last_not_of = llvm::StringRef::find_last_not_of(&v90, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
    v23 = v90;
    if (last_not_of + 1 < v91)
    {
      v24 = last_not_of + 1;
    }

    else
    {
      v24 = v91;
    }

    v25 = v91 - v20 + v24;
    if (v91 >= v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = v91;
    }

    v28 = *(v14 + 8);
    v27 = *(v14 + 16);
    if (v28 >= v27)
    {
      v30 = *v14;
      v31 = (v28 - *v14) >> 6;
      v32 = v31 + 1;
      if ((v31 + 1) >> 58)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v76 = v11;
      v33 = v27 - v30;
      if (v33 >> 5 > v32)
      {
        v32 = v33 >> 5;
      }

      if (v33 >= 0x7FFFFFFFFFFFFFC0)
      {
        v34 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v34 = v32;
      }

      if (v34)
      {
        if (v34 >> 58)
        {
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        v35 = a4;
        v36 = operator new(v34 << 6);
      }

      else
      {
        v35 = a4;
        v36 = 0;
      }

      v37 = &v36[64 * v31];
      *v37 = v23;
      *(v37 + 1) = v26;
      *(v37 + 1) = 0u;
      *(v37 + 2) = 0u;
      *(v37 + 3) = 0u;
      if (v30 != v28)
      {
        v38 = v30;
        v39 = v36;
        do
        {
          v40 = *v38;
          v41 = *(v38 + 1);
          *(v39 + 4) = *(v38 + 4);
          *v39 = v40;
          *(v39 + 1) = v41;
          *(v39 + 40) = *(v38 + 40);
          *(v39 + 7) = *(v38 + 7);
          *(v38 + 5) = 0;
          *(v38 + 6) = 0;
          *(v38 + 7) = 0;
          v38 = (v38 + 64);
          v39 += 64;
        }

        while (v38 != v28);
        do
        {
          v30 = (v30 + 64);
        }

        while (v30 != v28);
        v30 = *v14;
      }

      v29 = v37 + 64;
      *v14 = v36;
      *(v14 + 8) = v37 + 64;
      *(v14 + 16) = &v36[64 * v34];
      if (v30)
      {
        operator delete(v30);
      }

      a4 = v35;
      v11 = v76;
    }

    else
    {
      *v28 = v90;
      *(v28 + 8) = v26;
      *(v28 + 16) = 0u;
      *(v28 + 32) = 0u;
      v29 = (v28 + 64);
      *(v28 + 48) = 0u;
    }

    *(v14 + 8) = v29;
    if (v16 == -1)
    {
      goto LABEL_81;
    }

    v42 = v89;
    v43 = v89 >= v16 ? v16 : v89;
    v44 = &v88[v43];
    v45 = v89 - v43;
    v88 = v44;
    v89 -= v43;
    v46 = *v44;
    if (v46 != 40)
    {
      break;
    }

    v60 = v42 > v16;
    v61 = v42 > v16;
    if (v60)
    {
      v62 = v44 + 1;
    }

    else
    {
      v62 = v44;
    }

    v88 = v62;
    v89 = v45 - v61;
    v63 = *(v14 + 8);
    v64 = v94;
    if (v94 >= HIDWORD(v94))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v11, v94 + 1, 8);
      v64 = v94;
    }

    *&v93[8 * v64] = v63 - 24;
    v12 = v94 + 1;
    LODWORD(v94) = v94 + 1;
  }

  if (v46 != 123)
  {
    goto LABEL_64;
  }

  v47 = v42 > v16;
  if (v42 <= v16)
  {
    v48 = v44;
  }

  else
  {
    v48 = v44 + 1;
  }

  v49 = v45 - v47;
  v88 = v48;
  v89 = v49;
  if (!v49)
  {
LABEL_80:
    v65 = "missing closing '}' while processing pass options";
    v44 = v48 - 1;
    goto LABEL_85;
  }

  v50 = 0;
  v51 = 1;
  while (1)
  {
    v52 = v48[v50];
    if (v52 != 125)
    {
      if (v52 == 123)
      {
        ++v51;
      }

      goto LABEL_52;
    }

    if (!--v51)
    {
      break;
    }

LABEL_52:
    if (v49 == ++v50)
    {
      goto LABEL_80;
    }
  }

  if (v49 >= v50)
  {
    v49 = v50;
  }

  v53 = *(v14 + 8);
  *(v53 - 48) = v48;
  *(v53 - 40) = v49;
  if (v89 >= v50 + 1)
  {
    v54 = v50 + 1;
  }

  else
  {
    v54 = v89;
  }

  v88 += v54;
  v89 -= v54;
  v55 = llvm::StringRef::find_first_not_of(&v88, " \t\n\v\f\r", 6, 0);
  if (v55 >= v89)
  {
    v56 = v89;
  }

  else
  {
    v56 = v55;
  }

  v44 = &v88[v56];
  v45 = v89 - v56;
  v88 += v56;
  v89 -= v56;
LABEL_64:
  if (v45)
  {
    while (1)
    {
      v57 = *v44;
      if (v57 != 41)
      {
        break;
      }

      v88 = v44 + 1;
      v89 = v45 - 1;
      if (v94 == 1)
      {
        v65 = "encountered extra closing ')' creating unbalanced parentheses while parsing pipeline";
        goto LABEL_85;
      }

      LODWORD(v94) = v94 - 1;
      v58 = llvm::StringRef::find_first_not_of(&v88, " \t\n\v\f\r", 6, 0);
      if (v58 >= v89)
      {
        v59 = v89;
      }

      else
      {
        v59 = v58;
      }

      v44 = &v88[v59];
      v45 = v89 - v59;
      v88 += v59;
      v89 = v45;
      if (!v45)
      {
        goto LABEL_81;
      }
    }

    if (v57 == 44)
    {
      v88 = v44 + 1;
      v89 = v45 - 1;
      v12 = v94;
      i = v93;
      goto LABEL_8;
    }

    v65 = "expected ',' after parsing pipeline";
LABEL_85:
    v90 = v65;
    v92 = 259;
    llvm::SourceMgr::PrintMessage(v80, v81, v44, 0, &v90, 0, 0, v22, 0, 0, 1);
LABEL_86:
    v66 = 0;
    goto LABEL_87;
  }

LABEL_81:
  v66 = 1;
  if (v94 >= 2)
  {
    v90 = "encountered unbalanced parentheses while parsing pipeline";
    v92 = 259;
    llvm::SourceMgr::PrintMessage(v80, v81, v88, 0, &v90, 0, 0, v22, 0, 0, 1);
    goto LABEL_86;
  }

LABEL_87:
  if (v93 != v11)
  {
    free(v93);
  }

  if (v66)
  {
    llvm::SourceMgr::~SourceMgr(&v83);
    a3 = v75;
    if (v67)
    {
      goto LABEL_91;
    }
  }

  else
  {
    llvm::SourceMgr::~SourceMgr(&v83);
  }

  v70 = 0;
  v71 = __p;
  if (__p)
  {
LABEL_95:
    v72 = v78;
    v73 = v71;
    if (v78 != v71)
    {
      do
      {
      }

      while (v72 != v71);
      v73 = __p;
    }

    v78 = v71;
    operator delete(v73);
  }

  return v70;
}

uint64_t mlir::detail::PassOptions::print(llvm::raw_ostream &)const::$_0::__invoke(void *a1, uint64_t a2)
{
  v3 = (*(**a1 + 32))(*a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = (*(**a2 + 32))();
  v7 = *(v6 + 24);
  if (v7 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = *(v6 + 24);
  }

  if (v8)
  {
    v9 = memcmp(v4, *(v6 + 16), v8);
    if (v9)
    {
      return (v9 >> 31) | 1u;
    }
  }

  if (v5 < v7)
  {
    v11 = -1;
  }

  else
  {
    v11 = 1;
  }

  if (v5 == v7)
  {
    return 0;
  }

  else
  {
    return v11;
  }
}

uint64_t anonymous namespace::TextualPipeline::resolvePipelineElements(uint64_t a1, uint64_t a2, const unsigned __int8 *a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  v6 = a2 << 6;
  v7 = (a1 + 32);
  do
  {
    while (v7[1] != v7[2])
    {
      {
        return 0;
      }

LABEL_4:
      v7 += 8;
      v6 -= 64;
      if (!v6)
      {
        return 1;
      }
    }

    v8 = *(v7 - 4);
    v9 = *(v7 - 3);
    if (!atomic_load_explicit(qword_1EE17C918, memory_order_acquire))
    {
      llvm::ManagedStaticBase::RegisterManagedStatic(qword_1EE17C918, llvm::object_creator<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call);
    }

    v10 = qword_1EE17C918[0];
    v11 = llvm::StringMapImpl::hash(v8, v9, a3);
    Key = llvm::StringMapImpl::FindKey(v10, v8, v9, v11);
    v13 = *v10;
    if (Key != -1)
    {
      v14 = Key;
      if (atomic_load_explicit(qword_1EE17C918, memory_order_acquire))
      {
        goto LABEL_11;
      }

LABEL_10:
      llvm::ManagedStaticBase::RegisterManagedStatic(qword_1EE17C918, llvm::object_creator<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call);
      goto LABEL_11;
    }

    v14 = *(v10 + 8);
    if (!atomic_load_explicit(qword_1EE17C918, memory_order_acquire))
    {
      goto LABEL_10;
    }

LABEL_11:
    v15 = (v13 + 8 * v14);
    if (v15 != (*qword_1EE17C918[0] + 8 * *(qword_1EE17C918[0] + 8)))
    {
      goto LABEL_18;
    }

    *v7 = 0;
    v16 = *(v7 - 4);
    v17 = *(v7 - 3);
    if (!atomic_load_explicit(_MergedGlobals_45, memory_order_acquire))
    {
      llvm::ManagedStaticBase::RegisterManagedStatic(_MergedGlobals_45, llvm::object_creator<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call);
    }

    v18 = _MergedGlobals_45[0];
    v19 = llvm::StringMapImpl::hash(v16, v17, a3);
    v20 = llvm::StringMapImpl::FindKey(v18, v16, v17, v19);
    v21 = *v18;
    if (v20 != -1)
    {
      v22 = v20;
      if (atomic_load_explicit(_MergedGlobals_45, memory_order_acquire))
      {
        goto LABEL_17;
      }

LABEL_16:
      llvm::ManagedStaticBase::RegisterManagedStatic(_MergedGlobals_45, llvm::object_creator<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call);
      goto LABEL_17;
    }

    v22 = *(v18 + 8);
    if (!atomic_load_explicit(_MergedGlobals_45, memory_order_acquire))
    {
      goto LABEL_16;
    }

LABEL_17:
    v15 = (v21 + 8 * v22);
    if (v15 == (*_MergedGlobals_45[0] + 8 * *(_MergedGlobals_45[0] + 8)))
    {
      *v7 = 0;
      v23 = *(v7 - 4);
      v24 = *(v7 - 3);
      v27 = 1283;
      v26[0] = "'";
      v26[2] = v23;
      v26[3] = v24;
      v28 = v26;
      v29 = "' does not refer to a registered pass or pass pipeline";
      v30 = 770;
      if (((a3)(a4) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_4;
    }

LABEL_18:
    *v7 = *v15 + 8;
    v7 += 8;
    v6 -= 64;
  }

  while (v6);
  return 1;
}

void anonymous namespace::TextualPipeline::PipelineElement::~PipelineElement(_anonymous_namespace_::TextualPipeline::PipelineElement *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }
}

uint64_t llvm::function_ref<llvm::LogicalResult ()(char const*,llvm::Twine)>::callback_fn<anonymous namespace::TextualPipeline::initialize(llvm::StringRef,llvm::raw_ostream &)::$_0>(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v8;
  v11 = *(a3 + 32);
  llvm::SourceMgr::PrintMessage(*a1, *(a1 + 8), a2, 0, v10, 0, 0, a8, 0, 0, 1);
  return 0;
}

uint64_t anonymous namespace::TextualPipeline::addToPipeline(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t, __int128 *), uint64_t a5)
{
  if (!a2)
  {
    return 1;
  }

  v8 = (a1 + 24);
  v9 = a2 << 6;
  while (1)
  {
    v13 = v8[1];
    if (v13)
    {
      break;
    }

    v10 = v8[2];
    v11 = (v8[3] - v10) >> 6;
    v12 = mlir::OpPassManager::nest(a3, *(v8 - 3), *(v8 - 2));
    {
      v24 = 1283;
      v22 = *(v8 - 3);
      v23 = *(v8 - 2);
      v25[0] = v21;
      v27 = 770;
      v20 = *(v8 - 1);
      v19 = *v8;
      v28[0] = v25;
      v29 = v20;
      v30 = v19;
      v31 = 1282;
      goto LABEL_11;
    }

LABEL_4:
    v8 += 8;
    v9 -= 64;
    if (!v9)
    {
      return 1;
    }
  }

  v32 = *(v8 - 1);
  v28[0] = a4;
  v28[1] = a5;
  v14 = *(v13 + 72);
  if (v14)
  {
    if (((*(*v14 + 48))(v14, a3, &v32, v28) & 1) == 0)
    {
      v24 = 1283;
      v22 = *(v8 - 3);
      v23 = *(v8 - 2);
      v25[0] = v21;
      v27 = 770;
      v16 = *(v8 - 1);
      v15 = *v8;
      v28[0] = v25;
      v29 = v16;
      v30 = v15;
      v31 = 1282;
LABEL_11:
      *&v32 = v28;
      v33 = v17;
      v34 = 770;
      return a4(a5, &v32);
    }

    goto LABEL_4;
  }

  std::__throw_bad_function_call[abi:nn200100]();
  return llvm::object_creator<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call();
}

void *llvm::object_creator<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call()
{
  result = operator new(0x18uLL);
  *result = 0;
  result[1] = 0;
  result[2] = 0x7800000000;
  return result;
}

void llvm::object_deleter<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call(uint64_t a1)
{
  if (a1)
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
            llvm::StringMapEntry<mlir::PassInfo>::Destroy<llvm::MallocAllocator>(v4);
          }

          v3 += 8;
        }

        while (8 * v2 != v3);
      }
    }

    free(*a1);

    operator delete(a1);
  }
}

void llvm::StringMapEntry<mlir::PassInfo>::Destroy<llvm::MallocAllocator>(llvm *this)
{
  v2 = *this;
  v3 = this + 88;
  v4 = *(this + 14);
  if (v4 == v3)
  {
    (*(*v4 + 32))(v4);
    v5 = *(this + 10);
    if (v5 != (this + 56))
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v4)
    {
      (*(*v4 + 40))(v4);
    }

    v5 = *(this + 10);
    if (v5 != (this + 56))
    {
LABEL_5:
      if (v5)
      {
        (*(*v5 + 40))(v5);
      }

      if ((*(this + 55) & 0x80000000) == 0)
      {
LABEL_8:
        if ((*(this + 31) & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

LABEL_15:
        operator delete(*(this + 1));
LABEL_9:

        llvm::deallocate_buffer(this, (v2 + 121));
      }

LABEL_14:
      operator delete(*(this + 4));
      if ((*(this + 31) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  (*(*v5 + 32))(v5);
  if ((*(this + 55) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_14;
}

void *llvm::object_creator<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call()
{
  result = operator new(0x18uLL);
  *result = 0;
  result[1] = 0;
  result[2] = 0x7800000000;
  return result;
}

void llvm::object_deleter<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call(uint64_t a1)
{
  if (a1)
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
            llvm::StringMapEntry<mlir::PassInfo>::Destroy<llvm::MallocAllocator>(v4);
          }

          v3 += 8;
        }

        while (8 * v2 != v3);
      }
    }

    free(*a1);

    operator delete(a1);
  }
}

uint64_t llvm::detail::UniqueFunctionBase<unsigned long,llvm::StringRef,unsigned long,char>::CallImpl<mlir::detail::pass_options::parseCommaSeparatedList(llvm::cl::Option &,llvm::StringRef,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::StringRef)>)::$_0>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unsigned __int8 a5)
{
  if (a3 <= a4)
  {
    return -1;
  }

  v8 = a5;
  while (1)
  {
    v9 = *(a2 + a4);
    if (v9 == v8)
    {
      return a4;
    }

    if (*(a2 + a4) <= 0x27u)
    {
      if (v9 == 34)
      {
        v11 = a3 - (a4 + 1);
        if (a3 > a4 + 1)
        {
          v12 = (a2 + a4 + 1);
          v13 = 34;
LABEL_19:
          v14 = memchr(v12, v13, v11);
          if (v14)
          {
            a4 = v14 - a2;
          }

          else
          {
            a4 = -1;
          }

          goto LABEL_4;
        }

        goto LABEL_22;
      }

      if (v9 == 39)
      {
        v11 = a3 - (a4 + 1);
        if (a3 > a4 + 1)
        {
          v12 = (a2 + a4 + 1);
          v13 = 39;
          goto LABEL_19;
        }

LABEL_22:
        a4 = -1;
      }
    }

    else
    {
      switch(v9)
      {
        case '(':
          v10 = *(*(*a1 + 24) & 0xFFFFFFFFFFFFFFF8);
          break;
        case '[':
          v10 = *(*(*a1 + 24) & 0xFFFFFFFFFFFFFFF8);
          break;
        case '{':
          v10 = *(*(*a1 + 24) & 0xFFFFFFFFFFFFFFF8);
          break;
        default:
          goto LABEL_4;
      }

      a4 = v10();
    }

LABEL_4:
    if (++a4 >= a3)
    {
      return -1;
    }
  }
}

uint64_t llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>::callback_fn<mlir::parsePassPipeline(llvm::StringRef,mlir::OpPassManager &,llvm::raw_ostream &)::$_0>(llvm::raw_ostream **a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v2;
  v7 = *(a2 + 32);
  v3 = *a1;
  llvm::Twine::print(v6, *a1);
  v4 = *(v3 + 4);
  if (*(v3 + 3) == v4)
  {
    llvm::raw_ostream::write(v3, "\n", 1uLL);
  }

  else
  {
    *v4 = 10;
    ++*(v3 + 4);
  }

  return 0;
}

uint64_t llvm::cl::alias::done(llvm::cl::alias *this)
{
  v1 = this;
  if (*(this + 3))
  {
    if (*(this + 16))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10[0] = "cl::alias must have argument name specified!";
    v11 = 259;
    v6 = llvm::errs(this);
    this = llvm::cl::Option::error(v1, v10, 0, 0, v6);
    if (*(v1 + 16))
    {
LABEL_3:
      if (*(v1 + 27) == *(v1 + 28))
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  v10[0] = "cl::alias must have an cl::aliasopt(option) specified!";
  v11 = 259;
  v7 = llvm::errs(this);
  this = llvm::cl::Option::error(v1, v10, 0, 0, v7);
  if (*(v1 + 27) == *(v1 + 28))
  {
LABEL_4:
    v2 = *(v1 + 16);
    if (v2 == v1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  v10[0] = "cl::alias must not have cl::sub(), aliased option's cl::sub() will be used!";
  v11 = 259;
  v8 = llvm::errs(this);
  llvm::cl::Option::error(v1, v10, 0, 0, v8);
  v2 = *(v1 + 16);
  if (v2 != v1)
  {
LABEL_5:
    llvm::SmallPtrSetImplBase::CopyFrom((v1 + 88), (v2 + 88));
    v2 = *(v1 + 16);
  }

LABEL_6:
  if (v2 != v1)
  {
    v3 = *(v2 + 72);
    v4 = *(v1 + 18);
    if (v4 >= v3)
    {
      if (v3)
      {
        memmove(*(v1 + 8), *(v2 + 64), 8 * v3);
      }

      goto LABEL_20;
    }

    if (*(v1 + 19) >= v3)
    {
      if (v4)
      {
        memmove(*(v1 + 8), *(v2 + 64), 8 * v4);
        v5 = *(v2 + 72) - v4;
        if (!v5)
        {
LABEL_20:
          *(v1 + 18) = v3;
          return llvm::cl::Option::addArgument(v1);
        }
      }

      else
      {
        v4 = 0;
        v5 = *(v2 + 72);
        if (!*(v2 + 72))
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      *(v1 + 18) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v1 + 64, v1 + 80, v3, 8);
      v4 = 0;
      v5 = *(v2 + 72);
      if (!*(v2 + 72))
      {
        goto LABEL_20;
      }
    }

    memcpy((*(v1 + 8) + 8 * v4), (*(v2 + 64) + 8 * v4), 8 * v5);
    goto LABEL_20;
  }

  return llvm::cl::Option::addArgument(v1);
}

mlir::Pass::Statistic *mlir::Pass::Statistic::Statistic(mlir::Pass::Statistic *this, mlir::Pass *a2, const char *a3, const char *a4)
{
  v7 = *(a2 + 17);
  v6 = *(a2 + 18);
  if (v7 >= v6)
  {
    v9 = *(a2 + 16);
    v10 = v7 - v9;
    v11 = (v7 - v9) >> 3;
    v12 = v11 + 1;
    if ((v11 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v13 = v6 - v9;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (v14 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v15 = operator new(8 * v14);
    }

    else
    {
      v15 = 0;
    }

    v16 = &v15[8 * v11];
    *v16 = this;
    v8 = v16 + 8;
    memcpy(v15, v9, v10);
    *(a2 + 16) = v15;
    *(a2 + 17) = v8;
    *(a2 + 18) = &v15[8 * v14];
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    *v7 = this;
    v8 = v7 + 8;
  }

  *(a2 + 17) = v8;
  return this;
}

void mlir::OpPassManager::mergeStatisticsInto(mlir::OpPassManager *this, mlir::OpPassManager *a2)
{
  v4 = mlir::OpPassManager::begin(this);
  MemorySpace = mlir::MemRefType::getMemorySpace(this);
  v6 = mlir::OpPassManager::begin(a2);
  v7 = mlir::MemRefType::getMemorySpace(a2);
  if (v4 != MemorySpace)
  {
    v8 = v7;
    if (v6 != v7)
    {
      while (1)
      {
        v9 = *v4;
        v10 = *v6;
        v11 = *(*v4 + 8);
        {
          if (v11 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
          {
            goto LABEL_5;
          }
        }

        else
        {
          if (v11 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
          {
LABEL_5:
            v12 = *(v9 + 352);
            v13 = *(v10 + 352);
            if (v12)
            {
              v14 = v13 == 0;
            }

            else
            {
              v14 = 1;
            }

            if (!v14)
            {
              v15 = *(v9 + 344);
              v16 = *(v10 + 344);
              v17 = 8 * v13 - 8;
              v18 = 8 * v12 - 8;
              do
              {
                mlir::OpPassManager::mergeStatisticsInto(v15, v16);
                if (!v18)
                {
                  break;
                }

                v15 = (v15 + 8);
                v16 = (v16 + 8);
                v19 = v17;
                v17 -= 8;
                v18 -= 8;
              }

              while (v19);
            }
          }
        }

        v4 += 8;
        if (v4 != MemorySpace && ++v6 != v8)
        {
          continue;
        }

        return;
      }
    }
  }
}

llvm::raw_ostream *mlir::PassManager::dumpStatistics(mlir::PassManager *this)
{
  v29 = *MEMORY[0x1E69E9840];
  prepareStatistics(this);
  v2 = *(this + 4);
  llvm::CreateInfoOutputFile(&v25);
  v3 = v25;
  v4 = *(v25 + 4);
  if ((*(v25 + 3) - v4) > 2)
  {
    *(v4 + 2) = 61;
    *v4 = 15677;
    v3[4] += 3;
  }

  else
  {
    v3 = llvm::raw_ostream::write(v25, "===", 3uLL);
  }

  v5 = operator new(0x50uLL);
  *&v6 = 0x2D2D2D2D2D2D2D2DLL;
  *(&v6 + 1) = 0x2D2D2D2D2D2D2D2DLL;
  *v5 = v6;
  v5[1] = v6;
  v5[2] = v6;
  v5[3] = v6;
  *(v5 + 57) = v6;
  *(v5 + 73) = 0;
  v7 = llvm::raw_ostream::write(v3, v5, 0x49uLL);
  v8 = v7[4];
  if (v7[3] - v8 > 3uLL)
  {
    *v8 = 171785533;
    v7[4] += 4;
  }

  else
  {
    llvm::raw_ostream::write(v7, "===\n", 4uLL);
  }

  operator delete(v5);
  v9 = llvm::raw_ostream::indent(v25, 0x19u);
  v10 = *(v9 + 4);
  if (*(v9 + 3) - v10 <= 0x1DuLL)
  {
    v9 = llvm::raw_ostream::write(v9, "... Pass statistics report ...", 0x1EuLL);
    v11 = *(v9 + 4);
    if (v11 >= *(v9 + 3))
    {
      goto LABEL_9;
    }

LABEL_12:
    *(v9 + 4) = v11 + 1;
    *v11 = 10;
    v12 = v25;
    v13 = *(v25 + 4);
    if ((*(v25 + 3) - v13) > 2)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  qmemcpy(v10, "... Pass statistics report ...", 30);
  v14 = *(v9 + 3);
  v11 = (*(v9 + 4) + 30);
  *(v9 + 4) = v11;
  if (v11 < v14)
  {
    goto LABEL_12;
  }

LABEL_9:
  llvm::raw_ostream::write(v9, 10);
  v12 = v25;
  v13 = *(v25 + 4);
  if ((*(v25 + 3) - v13) > 2)
  {
LABEL_10:
    *(v13 + 2) = 61;
    *v13 = 15677;
    v12[4] += 3;
    goto LABEL_14;
  }

LABEL_13:
  v12 = llvm::raw_ostream::write(v12, "===", 3uLL);
LABEL_14:
  v15 = operator new(0x50uLL);
  *&v16 = 0x2D2D2D2D2D2D2D2DLL;
  *(&v16 + 1) = 0x2D2D2D2D2D2D2D2DLL;
  *v15 = v16;
  v15[1] = v16;
  v15[2] = v16;
  v15[3] = v16;
  *(v15 + 57) = v16;
  *(v15 + 73) = 0;
  v17 = llvm::raw_ostream::write(v12, v15, 0x49uLL);
  v18 = v17[4];
  if (v17[3] - v18 > 3uLL)
  {
    *v18 = 171785533;
    v17[4] += 4;
    operator delete(v15);
    if (v2)
    {
      goto LABEL_25;
    }
  }

  else
  {
    llvm::raw_ostream::write(v17, "===\n", 4uLL);
    operator delete(v15);
    if (v2)
    {
      goto LABEL_25;
    }
  }

  v27[0] = &unk_1F5B01D48;
  v27[1] = v27;
  v28 = v27;
  v19 = mlir::OpPassManager::begin(this);
  MemorySpace = mlir::MemRefType::getMemorySpace(this);
  if (v19 != MemorySpace)
  {
    v21 = MemorySpace;
    do
    {
      v26 = *v19;
      if (!v28)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v28 + 48))(v28, &v26);
      ++v19;
    }

    while (v19 != v21);
  }

  if (v28 != v27)
  {
    if (v28)
    {
      (*(*v28 + 40))();
    }

LABEL_25:
    v22 = v25;
    v23 = *(v25 + 4);
    if (*(v25 + 3) != v23)
    {
      goto LABEL_26;
    }

    goto LABEL_30;
  }

  (*(*v28 + 32))(v28);
  v22 = v25;
  v23 = *(v25 + 4);
  if (*(v25 + 3) != v23)
  {
LABEL_26:
    *v23 = 10;
    ++*(v22 + 4);
    result = v25;
    if (*(v25 + 4) != *(v25 + 2))
    {
      goto LABEL_27;
    }

LABEL_31:
    v25 = 0;
    return (*(*result + 8))(result);
  }

LABEL_30:
  llvm::raw_ostream::write(v22, "\n", 1uLL);
  result = v25;
  if (*(v25 + 4) == *(v25 + 2))
  {
    goto LABEL_31;
  }

LABEL_27:
  llvm::raw_ostream::flush_nonempty(result);
  result = v25;
  v25 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void prepareStatistics(mlir::OpPassManager *a1)
{
  v2 = mlir::OpPassManager::begin(a1);
  MemorySpace = mlir::MemRefType::getMemorySpace(a1);
  if (v2 != MemorySpace)
  {
    v4 = MemorySpace;
    do
    {
      v5 = *v2;
      v6 = *(*v2 + 8);
      {
        if (v6 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
        {
          goto LABEL_7;
        }
      }

      else
      {
        if (v6 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
        {
LABEL_7:
          v7 = *(v5 + 344);
          v8 = *(v5 + 352);
          v9 = *(v5 + 376);
          if (v9)
          {
            v10 = *(v5 + 368);
            v11 = v10 + 24 * v9;
            do
            {
              v12 = *(v10 + 8);
              if (v12)
              {
                v13 = 0;
                v14 = 8 * v12;
                do
                {
                  prepareStatistics((*v10 + v13));
                  mlir::OpPassManager::mergeStatisticsInto((*v10 + v13), (v7 + v13));
                  v13 += 8;
                }

                while (v14 != v13);
              }

              v10 += 24;
            }

            while (v10 != v11);
          }

          if (v8)
          {
            v15 = 8 * v8;
            do
            {
              prepareStatistics(v7);
              v7 = (v7 + 8);
              v15 -= 8;
            }

            while (v15);
          }
        }
      }

      v2 += 8;
    }

    while (v2 != v4);
  }
}

void *std::__function::__func<printResultsAsList(llvm::raw_ostream &,mlir::OpPassManager &)::$_0,std::allocator<printResultsAsList(llvm::raw_ostream &,mlir::OpPassManager &)::$_0>,void ()(mlir::Pass *)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5B01D48;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<printResultsAsList(llvm::raw_ostream &,mlir::OpPassManager &)::$_0,std::allocator<printResultsAsList(llvm::raw_ostream &,mlir::OpPassManager &)::$_0>,void ()(mlir::Pass *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5B01D48;
  a2[1] = v2;
  return result;
}

void std::__function::__func<printResultsAsList(llvm::raw_ostream &,mlir::OpPassManager &)::$_0,std::allocator<printResultsAsList(llvm::raw_ostream &,mlir::OpPassManager &)::$_0>,void ()(mlir::Pass *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(*a2 + 8);
  {
    if (v4 != mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
    {
      return;
    }
  }

  else
  {
    if (v4 != mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
    {
      return;
    }
  }

  v5 = *(v3 + 352);
  if (v5)
  {
    v6 = *(v3 + 344);
    v7 = (v6 + 8 * v5);
    while (1)
    {
      v8 = mlir::OpPassManager::begin(v6);
      MemorySpace = mlir::MemRefType::getMemorySpace(v6);
      if (v8 != MemorySpace)
      {
        break;
      }

LABEL_7:
      v6 = (v6 + 8);
      if (v6 == v7)
      {
        return;
      }
    }

    v10 = MemorySpace;
    while (1)
    {
      v11 = *(a1 + 8);
      v14 = *v8;
      v12 = *(v11 + 24);
      if (!v12)
      {
        break;
      }

      (*(*v12 + 48))(v12, &v14);
      if (++v8 == v10)
      {
        goto LABEL_7;
      }
    }

    v13 = std::__throw_bad_function_call[abi:nn200100]();
    std::__function::__func<printResultsAsList(llvm::raw_ostream &,mlir::OpPassManager &)::$_0,std::allocator<printResultsAsList(llvm::raw_ostream &,mlir::OpPassManager &)::$_0>,void ()(mlir::Pass *)>::target(v13);
  }
}

uint64_t std::__function::__func<printResultsAsList(llvm::raw_ostream &,mlir::OpPassManager &)::$_0,std::allocator<printResultsAsList(llvm::raw_ostream &,mlir::OpPassManager &)::$_0>,void ()(mlir::Pass *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZL18printResultsAsListRN4llvm11raw_ostreamERN4mlir13OpPassManagerEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZL18printResultsAsListRN4llvm11raw_ostreamERN4mlir13OpPassManagerEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZL18printResultsAsListRN4llvm11raw_ostreamERN4mlir13OpPassManagerEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZL18printResultsAsListRN4llvm11raw_ostreamERN4mlir13OpPassManagerEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

char *mlir::PassManager::enableTiming(mlir::PassManager *this)
{
  v2 = operator new(0x20uLL);
  v3 = mlir::DefaultTimingManager::DefaultTimingManager(v2);
  mlir::DefaultTimingManager::setEnabled(v3, 1);
  if (mlir::TimingManager::getRootTimer(v2))
  {
    v4 = operator new(0x58uLL);
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = &unk_1F5B01DD8;
    *(v4 + 6) = 0;
    *(v4 + 4) = v2;
    mlir::TimingManager::getRootScope(v2, v4 + 5);
    *(v4 + 7) = 0;
    *(v4 + 8) = 0;
    *(v4 + 18) = 0;
    *(v4 + 10) = v4 + 40;
    v7 = v4;
    mlir::PassManager::addInstrumentation(this, &v7);
    result = v7;
    v7 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  else
  {
    v6 = *(*v2 + 8);

    return v6(v2);
  }

  return result;
}

void anonymous namespace::PassTiming::~PassTiming(_anonymous_namespace_::PassTiming *this)
{
  *this = &unk_1F5B01DD8;
  v2 = *(this + 18);
  v3 = *(this + 7);
  if (v2)
  {
    v4 = v3 + 88 * v2;
    while (1)
    {
      if (*v3 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v5 = *(v3 + 8);
        v6 = *(v3 + 16);
        if (v6)
        {
          v7 = 16 * v6;
          v8 = &v5[v7 - 16];
          v9 = -v7;
          do
          {
            if (*v8)
            {
              (*(**v8 + 32))(*v8, *(v8 + 1));
            }

            *v8 = 0;
            *(v8 + 1) = 0;
            v8 -= 16;
            v9 += 16;
          }

          while (v9);
          v5 = *(v3 + 8);
        }

        if (v5 != (v3 + 24))
        {
          free(v5);
        }
      }

      v3 += 88;
      if (v3 == v4)
      {
        llvm::deallocate_buffer(*(this + 7), (88 * *(this + 18)));
      }
    }
  }

  llvm::deallocate_buffer(*(this + 7), 0);
}

{
}

void sub_1DFD444E0()
{
  if (!*(v0 + 40))
  {
    JUMPOUT(0x1DFD4445CLL);
  }

  JUMPOUT(0x1DFD44434);
}

void sub_1DFD44500(void *__p)
{

  operator delete(__p);
}

uint64_t anonymous namespace::PassTiming::runBeforePipeline(uint64_t a1, uint64_t a2, unsigned __int8 a3, void *a4)
{
  threadid = llvm::get_threadid(a1);
  v8 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::operator[](a1 + 56, &threadid);
  v9 = *(a1 + 8);
  v10 = *(a1 + 24);
  if (!v10)
  {
LABEL_14:
    v14 = (v9 + 24 * v10);
    goto LABEL_15;
  }

  v11 = a4[1];
  v12 = 0xBF58476D1CE4E5B9 * ((v11 >> 4) ^ (v11 >> 9) | ((((0xBF58476D1CE4E5B9 * *a4) >> 31) ^ (484763065 * *a4)) << 32));
  v13 = (v10 - 1) & ((v12 >> 31) ^ v12);
  v14 = (v9 + 24 * v13);
  v16 = *v14;
  v15 = v14[1];
  if (*a4 != *v14 || v11 != v15)
  {
    v18 = 1;
    while (v16 != -1 || v15 != -4096)
    {
      v19 = v13 + v18++;
      v13 = v19 & (v10 - 1);
      v14 = (v9 + 24 * v13);
      v16 = *v14;
      v15 = v14[1];
      if (*a4 == *v14 && v11 == v15)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_14;
  }

LABEL_15:
  if (v14 != (v9 + 24 * v10))
  {
    v21 = (*llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::operator[](a1 + 56, a4) + 16 * *(v14 + 4));
    v33 = a2;
    v34 = a3;
    v22 = *v21;
    if (*v21)
    {
      goto LABEL_17;
    }

LABEL_23:
    v30 = 0;
    v31 = 0;
    v25 = *(v8 + 2);
    v26 = *v8;
    v27 = &v30;
    if (v25 < *(v8 + 3))
    {
      goto LABEL_24;
    }

    goto LABEL_27;
  }

  v21 = *(a1 + 80);
  v33 = a2;
  v34 = a3;
  v22 = *v21;
  if (!*v21)
  {
    goto LABEL_23;
  }

LABEL_17:
  if (a3)
  {
    v23 = a2;
  }

  else
  {
    v23 = 0;
  }

  v30 = v22;
  v31 = v24;
  (*(*v22 + 24))(v22, v24);
  v25 = *(v8 + 2);
  v26 = *v8;
  v27 = &v30;
  if (v25 >= *(v8 + 3))
  {
LABEL_27:
    if (v26 <= &v30 && v26 + 16 * v25 > &v30)
    {
      v29 = &v30 - v26;
      llvm::SmallVectorTemplateBase<mlir::TimingScope,false>::grow(v8, v25 + 1);
      v26 = *v8;
      v27 = &v29[*v8];
    }

    else
    {
      llvm::SmallVectorTemplateBase<mlir::TimingScope,false>::grow(v8, v25 + 1);
      v26 = *v8;
      v27 = &v30;
    }
  }

LABEL_24:
  *(v26 + 16 * *(v8 + 2)) = *v27;
  *v27 = 0;
  v27[1] = 0;
  ++*(v8 + 2);
  result = v30;
  if (v30)
  {
    return (*(*v30 + 32))(v30, v31);
  }

  return result;
}

uint64_t anonymous namespace::PassTiming::runAfterPipeline(llvm *a1)
{
  threadid = llvm::get_threadid(a1);
  v2 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::operator[](a1 + 56, &threadid);
  v3 = *(v2 + 2) - 1;
  *(v2 + 2) = v3;
  v4 = (*v2 + 16 * v3);
  result = *v4;
  if (*v4)
  {
    result = (*(*result + 32))(result, v4[1]);
  }

  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t anonymous namespace::PassTiming::runBeforePass(uint64_t **this, mlir::Pass *a2, mlir::Operation *a3)
{
  threadid = llvm::get_threadid(this);
  v5 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::operator[]((this + 7), &threadid);
  v6 = v5;
  v7 = *(v5 + 2);
  if (v7)
  {
    v8 = (*v5 + 16 * v7 - 16);
    v9 = *(a2 + 1);
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = this[10];
    v9 = *(a2 + 1);
    {
LABEL_3:
      if (v9 != mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
      {
        goto LABEL_4;
      }

LABEL_12:
      v17 = *(v6 + 8);
      v25 = threadid;
      v26 = a2;
      *llvm::DenseMapBase<llvm::DenseMap<mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>,mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>::operator[]((this + 1), &v25) = v17;
      v18 = *(a2 + 42);
      v28 = a2;
      v19 = *v8;
      if (*v8)
      {
        if (v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = a2;
        }

        v25 = v19;
        v26 = v21;
        (*(*v19 + 24))(v19, v21);
        if (*(a2 + 88) < 2u)
        {
          (*(*v19 + 48))(v19, v21);
        }

        v14 = *(v6 + 8);
        v15 = *v6;
        v16 = &v25;
        if (v14 >= *(v6 + 12))
        {
          goto LABEL_24;
        }

        goto LABEL_21;
      }

LABEL_20:
      v25 = 0;
      v26 = 0;
      v14 = *(v6 + 8);
      v15 = *v6;
      v16 = &v25;
      if (v14 < *(v6 + 12))
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }
  }

  v24 = v9;
  if (v24 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
  {
    goto LABEL_12;
  }

LABEL_4:
  v10 = *(a2 + 42);
  v28 = a2;
  v11 = *v8;
  if (!*v8)
  {
    goto LABEL_20;
  }

  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = a2;
  }

  v25 = v11;
  v26 = v13;
  (*(*v11 + 24))(v11, v13);
  v14 = *(v6 + 8);
  v15 = *v6;
  v16 = &v25;
  if (v14 >= *(v6 + 12))
  {
LABEL_24:
    if (v15 <= &v25 && v15 + 16 * v14 > &v25)
    {
      v23 = &v25 - v15;
      llvm::SmallVectorTemplateBase<mlir::TimingScope,false>::grow(v6, v14 + 1);
      v15 = *v6;
      v16 = &v23[*v6];
    }

    else
    {
      llvm::SmallVectorTemplateBase<mlir::TimingScope,false>::grow(v6, v14 + 1);
      v15 = *v6;
      v16 = &v25;
    }
  }

LABEL_21:
  *(v15 + 16 * *(v6 + 8)) = *v16;
  *v16 = 0;
  v16[1] = 0;
  ++*(v6 + 8);
  result = v25;
  if (v25)
  {
    return (*(*v25 + 32))(v25, v26);
  }

  return result;
}

uint64_t anonymous namespace::PassTiming::runAfterPass(int32x2_t *this, mlir::Pass *a2, mlir::Operation *a3)
{
  threadid = llvm::get_threadid(this);
  v5 = *(a2 + 1);
  {
    if (v5 != mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v22 = v5;
    if (v22 != mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
    {
      goto LABEL_10;
    }
  }

  v6 = this[3].i32[0];
  if (v6)
  {
    v7 = this[1];
    v8 = 0xBF58476D1CE4E5B9 * ((a2 >> 4) ^ (a2 >> 9) | ((((0xBF58476D1CE4E5B9 * threadid) >> 31) ^ (484763065 * threadid)) << 32));
    v9 = v6 - 1;
    v10 = v9 & ((v8 >> 31) ^ v8);
    v11 = (*&v7 + 24 * v10);
    v13 = *v11;
    v12 = v11[1];
    if (threadid == *v11 && v12 == a2)
    {
LABEL_9:
      *v11 = xmmword_1E097C4E0;
      this[2] = vadd_s32(this[2], 0x1FFFFFFFFLL);
    }

    else
    {
      v19 = 1;
      while (v13 != -1 || v12 != -4096)
      {
        v20 = v10 + v19++;
        v10 = v20 & v9;
        v11 = (*&v7 + 24 * v10);
        v13 = *v11;
        v12 = v11[1];
        if (threadid == *v11 && v12 == a2)
        {
          goto LABEL_9;
        }
      }
    }
  }

LABEL_10:
  v15 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::operator[](&this[7], &threadid);
  v16 = *(v15 + 2) - 1;
  *(v15 + 2) = v16;
  v17 = (*v15 + 16 * v16);
  result = *v17;
  if (*v17)
  {
    result = (*(*result + 32))(result, v17[1]);
  }

  *v17 = 0;
  v17[1] = 0;
  return result;
}