void mlir::CoreMLToMPSBase<anonymous namespace::CoreMLToMPS>::clonePass(uint64_t a1)
{
  v2 = operator new(0x280uLL);
  v3 = *(a1 + 8);
  v2[1] = *(a1 + 16);
  *(v2 + 4) = *(a1 + 32);
  *(v2 + 1) = v3;
  *(v2 + 40) = 0;
  *(v2 + 120) = 0;
  v2[8] = 0u;
  v2[9] = 0u;
  v2[10] = 0u;
  *(v2 + 22) = 0;
  *(v2 + 23) = v2 + 200;
  *(v2 + 24) = 0x400000000;
  *(v2 + 29) = v2 + 248;
  *(v2 + 30) = 0x400000000;
  *(v2 + 74) = 0;
  *(v2 + 280) = 0u;
  *(v2 + 75) = 16;
  v2[19] = 0u;
  v2[20] = 0u;
  *(v2 + 42) = 0;
  *v2 = &unk_1F5B360D0;
  *(&v4 + 1) = 171;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(v2 + 344, v2 + 152, "mutable-weights-path", 20, &v4);
  *(v2 + 43) = &unk_1F5AFC930;
  *(v2 + 72) = &unk_1F5AFC9B0;
  *v2 = &unk_1F5B36060;
  v2[37] = 0u;
  *(v2 + 152) = 0;
  llvm::deallocate_buffer(0, 0);
}

void sub_1E048108C()
{
  v2 = *(v1 + 608);
  *(v0 + 608) = v2;
  if (v2)
  {
    buffer = llvm::allocate_buffer(16 * v2, 8uLL);
    *(v0 + 592) = buffer;
    *(v0 + 600) = *(v1 + 600);
    memcpy(buffer, *(v1 + 592), 16 * *(v0 + 608));
  }

  else
  {
    *(v0 + 592) = 0;
    *(v0 + 600) = 0;
  }

  *(v0 + 632) = 0;
  *(v0 + 616) = 0u;
  llvm::deallocate_buffer(0, 0);
}

void sub_1E04810EC()
{
  v4 = *(v2 + 632);
  *(v1 + 632) = v4;
  if (v4)
  {
    buffer = llvm::allocate_buffer(16 * v4, 8uLL);
    *(v1 + 616) = buffer;
    *(v1 + 624) = *(v2 + 624);
    memcpy(buffer, *(v2 + 616), 16 * *(v1 + 632));
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
  }

  *v0 = v1;
}

void anonymous namespace::ConstantOpLowering::~ConstantOpLowering(void **this)
{
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  v2 = this[10];
  if (v2 != this + 12)
  {
    free(v2);
  }

  v3 = this[4];
  if (v3 != this + 6)
  {
    free(v3);
  }
}

{
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  v2 = this[10];
  if (v2 != this + 12)
  {
    free(v2);
  }

  v3 = this[4];
  if (v3 != this + 6)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ConstantOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::arith::detail::CmpFOpGenericAdaptorBase::CmpFOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ConstantOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::arith::detail::CmpFOpGenericAdaptorBase::CmpFOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t anonymous namespace::ConstantOpLowering::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase *a3, mlir::StringAttr **a4)
{
  v114.st_qspare[1] = *MEMORY[0x1E69E9840];
  v107 = a2;
  Value = mlir::ODIE::Compiler::CoreML::ConstantOp::getValue(&v107);
  if (*(*Value + 136) == &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id)
  {
    v8 = Value;
  }

  else
  {
    v8 = 0;
  }

  v106 = v8;
  if (!v8)
  {
    v9 = v107;
    v10 = mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::getValue(a3);
    v11 = v10;
    if (v10)
    {
      v10 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v10 + 8);
    }

    *v108 = v11;
    *&v108[8] = v10;
    v12 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ElementsAttr>((a4 + 1), *(v9 + 24), v108);
    goto LABEL_32;
  }

  if ((*(a1 + 127) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 112))
    {
LABEL_28:
      mlir::DenseResourceElementsAttr::getRawHandle(&v106, v108);
      v26 = **v108;
      v27 = *(*v108 + 8);
      v28 = *(v107 - 8);
      mlir::DenseResourceElementsAttr::getRawHandle(&v106, v108);
      v29 = *(*v108 + 16);
      mlir::DenseResourceElementsAttr::getRawHandle(&v106, &v114);
      if (*(*&v114.st_dev + 80))
      {
        v30 = *&v114.st_dev + 16;
      }

      else
      {
        v30 = 0;
      }

      v114.st_size = mlir::mps::getBufferTensorAttrWithKey((v28 & 0xFFFFFFFFFFFFFFF8), v29, *(v30 + 8), v26, v27);
      v9 = v107;
      v12 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a4 + 1), *(v107 + 24), &v114.st_size);
LABEL_32:
      (*(*a4 + 1))(a4, v9, v12);
      return 1;
    }
  }

  else if (!*(a1 + 127))
  {
    goto LABEL_28;
  }

  v13 = (a1 + 104);
  ParentOp = v107;
  do
  {
    v15 = *(ParentOp + 16);
    if (v15)
    {
      ParentOp = mlir::Block::getParentOp(v15);
      if (ParentOp)
      {
        continue;
      }
    }

    goto LABEL_28;
  }

  while (*(*(ParentOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id);
  v105 = ParentOp;
  v16 = v107;
  v17 = *(v107 + 36);
  v18 = v107 - 16;
  if (v17)
  {
    v19 = v107 - 16;
  }

  else
  {
    v19 = 0;
  }

  v114.st_size = v19;
  v114.st_blocks = v17;
  mlir::ResultRange::use_begin(&v114.st_size, &v114.st_dev);
  v20 = *(v16 + 36);
  if (v20)
  {
    v21 = v18;
  }

  else
  {
    v21 = 0;
  }

  v114.st_size = v21;
  v114.st_blocks = v20;
  mlir::ResultRange::use_end(&v114.st_size, v110);
  tv_sec = v114.st_atimespec.tv_sec;
  v22 = v114.st_atimespec.tv_sec;
  *&v108[16] = *&v114.st_uid;
  *v108 = *&v114.st_dev;
  v23 = v111;
  if (v114.st_atimespec.tv_sec == v111)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v24 = *(*(*(v22 + 16) + 48) + 16);
    if (v24 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,void>::id || v24 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::Conv2dOp,void>::id)
    {
      break;
    }

    mlir::ResultRange::UseIterator::operator++(&v114.st_dev);
    v22 = v114.st_atimespec.tv_sec;
    if (v114.st_atimespec.tv_sec == v23)
    {
      goto LABEL_28;
    }
  }

  SymName = mlir::func::FuncOp::getSymName(&v105);
  if (!SymName)
  {
    __dst = 0;
    v103 = 0;
    v104 = 0;
    goto LABEL_46;
  }

  v34 = v33;
  if (v33 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_161;
  }

  v35 = SymName;
  if (v33 >= 0x17)
  {
    if ((v33 | 7) == 0x17)
    {
      v37 = 25;
    }

    else
    {
      v37 = (v33 | 7) + 1;
    }

    p_dst = operator new(v37);
    v103 = v34;
    v104 = v37 | 0x8000000000000000;
    __dst = p_dst;
  }

  else
  {
    HIBYTE(v104) = v33;
    p_dst = &__dst;
    if (!v33)
    {
      goto LABEL_45;
    }
  }

  memmove(p_dst, v35, v34);
LABEL_45:
  *(p_dst + v34) = 0;
LABEL_46:
  __p = 0;
  v101 = 0uLL;
  mlir::DenseResourceElementsAttr::getRawHandle(&v106, v98);
  v38 = *(v98[0] + 2);
  mlir::DenseResourceElementsAttr::getRawHandle(&v106, &v97);
  if (*(v97.n128_u64[0] + 80))
  {
    v39 = v97.n128_u64[0] + 16;
  }

  else
  {
    v39 = 0;
  }

  v96 = *(v39 + 8);
  LODWORD(v112) = 0;
  v40 = std::system_category();
  v113 = v40;
  v41 = *(a1 + 127);
  if (v41 >= 0)
  {
    v42 = *(a1 + 127);
  }

  else
  {
    v42 = *(a1 + 112);
  }

  v43 = v42 + 1;
  if (v42 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_161;
  }

  v44 = v40;
  v95 = v38;
  if (v43 < 0x17)
  {
    memset(&v114, 0, 24);
    v46 = &v114;
    HIBYTE(v114.st_gid) = v42 + 1;
    if (!v42)
    {
      goto LABEL_63;
    }
  }

  else
  {
    if ((v43 | 7) == 0x17)
    {
      v45 = 25;
    }

    else
    {
      v45 = (v43 | 7) + 1;
    }

    v46 = operator new(v45);
    v114.st_ino = v42 + 1;
    *&v114.st_uid = v45 | 0x8000000000000000;
    *&v114.st_dev = v46;
  }

  if (v41 >= 0)
  {
    v47 = (a1 + 104);
  }

  else
  {
    v47 = *v13;
  }

  memmove(v46, v47, v42);
LABEL_63:
  *&v46[v42] = 47;
  if (v104 >= 0)
  {
    v48 = &__dst;
  }

  else
  {
    v48 = __dst;
  }

  if (v104 >= 0)
  {
    v49 = HIBYTE(v104);
  }

  else
  {
    v49 = v103;
  }

  v50 = std::string::append(&v114, v48, v49);
  v51 = v50->__r_.__value_.__r.__words[2];
  *v108 = *&v50->__r_.__value_.__l.__data_;
  *&v108[16] = v51;
  v50->__r_.__value_.__l.__size_ = 0;
  v50->__r_.__value_.__r.__words[2] = 0;
  v50->__r_.__value_.__r.__words[0] = 0;
  HIBYTE(v114.st_flags) = 4;
  strcpy(&v114.st_size, ".bin");
  v52 = std::string::append(v108, &v114.st_size, 4uLL);
  v53 = v52[1].tv_sec;
  v114.st_ctimespec = *v52;
  v114.st_birthtimespec.tv_sec = v53;
  v52->tv_nsec = 0;
  v52[1].tv_sec = 0;
  v52->tv_sec = 0;
  if ((SHIBYTE(v114.st_flags) & 0x80000000) == 0)
  {
    if ((v108[23] & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

LABEL_91:
    operator delete(*v108);
    if ((SHIBYTE(v114.st_gid) & 0x80000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_92;
  }

  operator delete(v114.st_size);
  if ((v108[23] & 0x80000000) != 0)
  {
    goto LABEL_91;
  }

LABEL_71:
  if ((SHIBYTE(v114.st_gid) & 0x80000000) == 0)
  {
    goto LABEL_72;
  }

LABEL_92:
  operator delete(*&v114.st_dev);
LABEL_72:
  if (v114.st_birthtimespec.tv_sec >= 0)
  {
    p_st_ctimespec = &v114.st_ctimespec;
  }

  else
  {
    p_st_ctimespec = v114.st_ctimespec.tv_sec;
  }

  if (v114.st_birthtimespec.tv_sec >= 0)
  {
    tv_sec_high = SHIBYTE(v114.st_birthtimespec.tv_sec);
  }

  else
  {
    tv_sec_high = v114.st_ctimespec.tv_nsec;
  }

  llvm::raw_fd_ostream::raw_fd_ostream(v108, p_st_ctimespec, tv_sec_high, &v112, 3, 2, 4);
  if (v112)
  {
    *&v114.st_dev = operator new(0x28uLL);
    *&v114.st_ino = xmmword_1E0982850;
    strcpy(*&v114.st_dev, "Failed to open resource file at ");
    if (v114.st_birthtimespec.tv_sec >= 0)
    {
      v56 = &v114.st_ctimespec;
    }

    else
    {
      v56 = v114.st_ctimespec.tv_sec;
    }

    if (v114.st_birthtimespec.tv_sec >= 0)
    {
      tv_nsec = HIBYTE(v114.st_birthtimespec.tv_sec);
    }

    else
    {
      tv_nsec = v114.st_ctimespec.tv_nsec;
    }

    v58 = std::string::append(&v114, v56, tv_nsec);
    v59 = v58->__r_.__value_.__r.__words[0];
    v114.st_size = v58->__r_.__value_.__l.__size_;
    *(&v114.st_size + 7) = *(&v58->__r_.__value_.__r.__words[1] + 7);
    v60 = HIBYTE(v58->__r_.__value_.__r.__words[2]);
    v58->__r_.__value_.__l.__size_ = 0;
    v58->__r_.__value_.__r.__words[2] = 0;
    v58->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v101) < 0)
    {
      operator delete(__p);
    }

    __p = v59;
    *&v101 = v114.st_size;
    *(&v101 + 7) = *(&v114.st_size + 7);
    HIBYTE(v101) = v60;
    if (SHIBYTE(v114.st_gid) < 0)
    {
      operator delete(*&v114.st_dev);
    }

    v61 = -256;
    v62 = 1;
    v63 = 255;
  }

  else
  {
    LOWORD(v114.st_qspare[0]) = 260;
    v114.st_size = &v114.st_ctimespec;
    memset(&v114, 0, 44);
    *(&v114.st_atimespec.tv_nsec + 4) = 0xFFFFLL;
    WORD2(v114.st_mtimespec.tv_sec) = 0;
    v114.st_mtimespec.tv_nsec = 0;
    v64 = llvm::sys::fs::status(&v114.st_size, &v114, 1);
    if (v64)
    {
      v66 = v65;
    }

    else
    {
      v66 = v44;
    }

    if (v64)
    {
      v67 = v64;
    }

    else
    {
      v67 = 0;
    }

    v112 = v67;
    v113 = v66;
    if (v67)
    {
      *&v114.st_dev = operator new(0x28uLL);
      *&v114.st_ino = xmmword_1E0982850;
      strcpy(*&v114.st_dev, "Failed to get the file size for ");
      if (v114.st_birthtimespec.tv_sec >= 0)
      {
        v68 = &v114.st_ctimespec;
      }

      else
      {
        v68 = v114.st_ctimespec.tv_sec;
      }

      if (v114.st_birthtimespec.tv_sec >= 0)
      {
        v69 = HIBYTE(v114.st_birthtimespec.tv_sec);
      }

      else
      {
        v69 = v114.st_ctimespec.tv_nsec;
      }

      v70 = std::string::append(&v114, v68, v69);
      v71 = v70->__r_.__value_.__r.__words[0];
      v114.st_size = v70->__r_.__value_.__l.__size_;
      *(&v114.st_size + 7) = *(&v70->__r_.__value_.__r.__words[1] + 7);
      v72 = HIBYTE(v70->__r_.__value_.__r.__words[2]);
      v70->__r_.__value_.__l.__size_ = 0;
      v70->__r_.__value_.__r.__words[2] = 0;
      v70->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v101) < 0)
      {
        operator delete(__p);
      }

      __p = v71;
      *&v101 = v114.st_size;
      *(&v101 + 7) = *(&v114.st_size + 7);
      HIBYTE(v101) = v72;
      if (SHIBYTE(v114.st_gid) < 0)
      {
        operator delete(*&v114.st_dev);
      }

      v63 = 0;
      v62 = 0;
      v61 = 0;
    }

    else
    {
      if (v64)
      {
        v63 = 0;
      }

      else
      {
        v63 = v114.st_atimespec.tv_sec;
      }

      llvm::raw_ostream::write(v108, v95, v96);
      v61 = v63 & 0xFFFFFFFFFFFFFF00;
      v63 = v63;
      v62 = 1;
    }
  }

  llvm::raw_fd_ostream::~raw_fd_ostream(v108);
  if (SHIBYTE(v114.st_birthtimespec.tv_sec) < 0)
  {
    operator delete(v114.st_ctimespec.tv_sec);
  }

  if ((v62 & 1) == 0)
  {
    v81 = *(v107 + 24);
    p_p = __p;
    if (v101 >= 0)
    {
      p_p = &__p;
    }

    v83 = 1;
    BYTE1(tv_sec) = 1;
    if (*p_p)
    {
      *v108 = p_p;
      v83 = 3;
    }

    LOBYTE(tv_sec) = v83;
    *&v114.st_dev = v108;
    v84 = a4[2];
    if (v84 && mlir::RewriterBase::Listener::classof(v84))
    {
      (*(*v84 + 88))(v84, v81, llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::Location>(mlir::Location &&,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v114);
    }

    result = 0;
    goto LABEL_154;
  }

  v97.n128_u64[0] = v61 | v63;
  v73 = v107;
  v74 = *(v107 + 36);
  v75 = v107 - 16;
  if (!v74)
  {
    v75 = 0;
  }

  *&v114.st_dev = v75;
  v114.st_ino = v74;
  mlir::OperandRange::getTypes(&v114.st_dev, v108);
  v112 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(*v108, *&v108[8]) + 8) & 0xFFFFFFFFFFFFFFF8;
  v76 = *(a1 + 127);
  if (v76 >= 0)
  {
    v77 = *(a1 + 127);
  }

  else
  {
    v77 = *(a1 + 112);
  }

  v78 = v77 + 1;
  if (v77 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_161:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (v78 < 0x17)
  {
    memset(&v114.st_size, 0, 24);
    p_st_size = &v114.st_size;
    HIBYTE(v114.st_flags) = v77 + 1;
    if (!v77)
    {
      goto LABEL_142;
    }
  }

  else
  {
    if ((v78 | 7) == 0x17)
    {
      v79 = 25;
    }

    else
    {
      v79 = (v78 | 7) + 1;
    }

    p_st_size = operator new(v79);
    v114.st_blocks = v77 + 1;
    *&v114.st_blksize = v79 | 0x8000000000000000;
    v114.st_size = p_st_size;
  }

  if (v76 >= 0)
  {
    v85 = v13;
  }

  else
  {
    v85 = *v13;
  }

  memmove(p_st_size, v85, v77);
LABEL_142:
  *&p_st_size[v77] = 47;
  if (v104 >= 0)
  {
    v86 = &__dst;
  }

  else
  {
    v86 = __dst;
  }

  if (v104 >= 0)
  {
    v87 = HIBYTE(v104);
  }

  else
  {
    v87 = v103;
  }

  v88 = std::string::append(&v114.st_size, v86, v87);
  v89 = v88->__r_.__value_.__r.__words[2];
  *&v114.st_dev = *&v88->__r_.__value_.__l.__data_;
  *&v114.st_uid = v89;
  v88->__r_.__value_.__l.__size_ = 0;
  v88->__r_.__value_.__r.__words[2] = 0;
  v88->__r_.__value_.__r.__words[0] = 0;
  HIBYTE(v114.st_birthtimespec.tv_sec) = 4;
  strcpy(&v114.st_ctimespec, ".bin");
  v90 = std::string::append(&v114, &v114.st_ctimespec, 4uLL);
  v91 = v90->__r_.__value_.__r.__words[2];
  *v98 = *&v90->__r_.__value_.__l.__data_;
  v99 = v91;
  v90->__r_.__value_.__l.__size_ = 0;
  v90->__r_.__value_.__r.__words[2] = 0;
  v90->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(v114.st_birthtimespec.tv_sec) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v114.st_gid) & 0x80000000) == 0)
    {
      goto LABEL_150;
    }

LABEL_159:
    operator delete(*&v114.st_dev);
    if ((SHIBYTE(v114.st_flags) & 0x80000000) == 0)
    {
      goto LABEL_151;
    }

LABEL_160:
    operator delete(v114.st_size);
    goto LABEL_151;
  }

  operator delete(v114.st_ctimespec.tv_sec);
  if (SHIBYTE(v114.st_gid) < 0)
  {
    goto LABEL_159;
  }

LABEL_150:
  if (SHIBYTE(v114.st_flags) < 0)
  {
    goto LABEL_160;
  }

LABEL_151:
  v92 = mlir::OpBuilder::create<mlir::mps::ReadDataFromFileOp,mlir::Type,std::string,unsigned long &,std::string&>(a4 + 1, *(v73 + 24), &v112, v98, &v97, &__dst);
  (*(*a4 + 1))(a4, v73, v92);
  if (SHIBYTE(v99) < 0)
  {
    operator delete(v98[0]);
  }

  result = 1;
LABEL_154:
  if (SHIBYTE(v101) < 0)
  {
    v93 = result;
    operator delete(__p);
    result = v93;
  }

  if (SHIBYTE(v104) < 0)
  {
    v94 = result;
    operator delete(__dst);
    return v94;
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ReadDataFromFileOp,mlir::Type,std::string,unsigned long &,std::string&>(mlir::StringAttr **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v27[38] = *MEMORY[0x1E69E9840];
  v24 = a2;
  Context = mlir::Attribute::getContext(&v24);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReadDataFromFileOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReadDataFromFileOp,mlir::MemRefType &,mlir::StringAttr &,mlir::IntegerAttr &,mlir::StringAttr &>(v27, v26, v25);
  }

  mlir::OperationState::OperationState(v27, a2, v13);
  v15 = *(a4 + 23);
  if (v15 >= 0)
  {
    v16 = a4;
  }

  else
  {
    v16 = *a4;
  }

  if (v15 >= 0)
  {
    v17 = *(a4 + 23);
  }

  else
  {
    v17 = *(a4 + 8);
  }

  v18 = *(a6 + 23);
  if (v18 >= 0)
  {
    v19 = a6;
  }

  else
  {
    v19 = *a6;
  }

  if (v18 >= 0)
  {
    v20 = *(a6 + 23);
  }

  else
  {
    v20 = *(a6 + 8);
  }

  mlir::mps::ReadDataFromFileOp::build(a1, v27, *a3, v16, v17, *a5, v19, v20);
  v21 = mlir::OpBuilder::create(a1, v27);
  if (*(*(v21 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReadDataFromFileOp,void>::id)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  mlir::OperationState::~OperationState(v27);
  return v22;
}

void anonymous namespace::GraphOpPattern::~GraphOpPattern(_anonymous_namespace_::GraphOpPattern *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::GraphOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::mps::detail::StencilOpGenericAdaptorBase::StencilOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::GraphOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::mps::detail::StencilOpGenericAdaptorBase::StencilOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t anonymous namespace::GraphOpPattern::matchAndRewrite(uint64_t a1, unsigned int *a2, uint64_t a3, void *a4)
{
  v82[5] = *MEMORY[0x1E69E9840];
  v70 = a2;
  v77 = v79;
  v78 = 0x500000000;
  v4 = a2[11];
  v5 = (v4 >> 23) & 1;
  v6 = (v4 >> 21) & 0x7F8;
  v7 = 32 * a2[10];
  v8 = (((&a2[4 * v5 + 17] + v6 + 3) & 0xFFFFFFFFFFFFFFF8) + v7);
  if (*v8 != v8)
  {
    v9 = v8[1];
    v10 = v9 ? v9 - 8 : 0;
    v11 = *(v10 + 48);
    v12 = *(v10 + 56);
    if (v12 != v11)
    {
      v14 = 0;
      while (1)
      {
        v15 = (*(*v11 + 8) & 0xFFFFFFFFFFFFFFF8);
        v16 = *(*v15 + 136);
        if (v15)
        {
          v17 = v16 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id;
        }

        else
        {
          v17 = 0;
        }

        if (v17)
        {
          goto LABEL_9;
        }

        if (v16 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id)
        {
          v15 = 0;
        }

        v72[0] = v15;
        if (!v15)
        {
          break;
        }

        v18 = v78;
        if (v78 >= HIDWORD(v78))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v79, v78 + 1, 8);
          v18 = v78;
        }

        *(v77 + v18) = v14;
        LODWORD(v78) = v78 + 1;
        Value = mlir::AffineMapAttr::getValue(v72);
        v20 = Value;
        if (*(*Value + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
        {
          v21 = Value;
        }

        else
        {
          v21 = 0;
        }

        CallableRegion = v21;
        if (v21)
        {
          Values = mlir::SparseElementsAttr::getValues(&CallableRegion);
          if (Values)
          {
            v23 = Values;
            if (*(*Values + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id)
            {
              goto LABEL_31;
            }
          }
        }

        *(*v11 + 8) = *(*v11 + 8) & 7 | v20;
LABEL_8:
        ++v14;
LABEL_9:
        v11 += 8;
        if (v11 == v12)
        {
          a2 = v70;
          v32 = *(v70 + 11);
          v5 = (v32 >> 23) & 1;
          v6 = (v32 >> 21) & 0x7F8;
          v7 = 32 * *(v70 + 10);
          goto LABEL_34;
        }
      }

      v24 = (*(*v11 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (*(*v24 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v24 = 0;
      }

      CallableRegion = v24;
      if (!v24)
      {
        goto LABEL_8;
      }

      v25 = mlir::SparseElementsAttr::getValues(&CallableRegion);
      if (!v25)
      {
        goto LABEL_8;
      }

      v23 = v25;
      if (*(*v25 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id)
      {
        goto LABEL_8;
      }

LABEL_31:
      v26 = AttrDictionary;
      v27 = v75;
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(CallableRegion);
      v29 = mlir::RankedTensorType::get(v26, v27, ElementTypeOrSelf, 0);
      v30 = *(a1 + 104);
      v71[0] = *v11;
      v31 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::RankedTensorType,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::RankedTensorType>>,mlir::Value,mlir::RankedTensorType,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::RankedTensorType>>::operator[](v30, v71);
      *v31 = CallableRegion;
      *(*v11 + 8) = *(*v11 + 8) & 7 | v29;
      if (AttrDictionary != v76)
      {
        free(AttrDictionary);
      }

      goto LABEL_8;
    }
  }

LABEL_34:
  ArgumentTypes = mlir::Region::getArgumentTypes((((&a2[4 * v5 + 17] + v6 + 3) & 0xFFFFFFFFFFFFFFF8) + v7));
  v67 = v34;
  AttrDictionary = v76;
  v75 = 0x600000000;
  v72[0] = mlir::ODIE::Compiler::CoreML::GraphOp::getFunctionType(&v70);
  Results = mlir::FunctionType::getResults(v72);
  v72[0] = v73;
  v72[1] = 0x600000000;
  if (v36)
  {
    v37 = 0;
    v38 = 8 * v36;
    do
    {
      v39 = *Results;
      if (*(**Results + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
      {
        if (v37 >= HIDWORD(v72[1]))
        {
          v40 = Results;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v72, v73, v37 + 1, 8);
          Results = v40;
          v37 = v72[1];
        }

        *(v72[0] + v37) = v39;
        v37 = ++LODWORD(v72[1]);
      }

      Results += 8;
      v38 -= 8;
    }

    while (v38);
    if (v37)
    {
      v41 = v72[0];
      v42 = 8 * v37;
      do
      {
        v43 = *v41;
        if (*(**v41 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
        {
          v44 = *v41;
        }

        else
        {
          v44 = 0;
        }

        v71[0] = v44;
        if (v44)
        {
          v45 = mlir::SparseElementsAttr::getValues(v71);
          if (v45)
          {
            if (*(*v45 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id)
            {
              v46 = CallableRegion;
              v47 = v81;
              v48 = mlir::getElementTypeOrSelf(v71[0]);
              v43 = mlir::RankedTensorType::get(v46, v47, v48, 0);
              if (CallableRegion != v82)
              {
                free(CallableRegion);
              }
            }
          }
        }

        *v41++ = v43;
        v42 -= 8;
      }

      while (v42);
    }
  }

  v49 = (a4 + 1);
  v50 = a4[1];
  mlir::ValueRange::ValueRange(&CallableRegion, ArgumentTypes, (v67 - ArgumentTypes) >> 3);
  mlir::TypeRange::TypeRange(v71, CallableRegion, v81);
  mlir::ValueRange::ValueRange(&CallableRegion, v72[0], LODWORD(v72[1]));
  v51 = mlir::FunctionType::get(v50, v71[0], v71[1], CallableRegion, v81);
  mlir::ODIE::Compiler::CoreML::GraphOp::setFunctionType(&v70, v51);
  if (v72[0] != v73)
  {
    free(v72[0]);
  }

  if (AttrDictionary != v76)
  {
    free(AttrDictionary);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(v70);
  v52 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = v76;
  v75 = 0x200000000;
  if (v53)
  {
    v54 = v52;
    v55 = 16 * v53;
    do
    {
      *v72 = *v54;
      CallableRegion = mlir::CallGraphNode::getCallableRegion(v72);
      AttrData = mlir::OpaqueAttr::getAttrData(&CallableRegion);
      if (v59 != 11 || (*AttrData == 0x65645F6D61726170 ? (v60 = *(AttrData + 3) == 0x736C6365645F6D61) : (v60 = 0), !v60))
      {
        v56 = *v54;
        v57 = v75;
        if (v75 >= HIDWORD(v75))
        {
          v68 = *v54;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&AttrDictionary, v76, v75 + 1, 16);
          v56 = v68;
          v57 = v75;
        }

        *(AttrDictionary + v57) = v56;
        LODWORD(v75) = v75 + 1;
      }

      ++v54;
      v55 -= 16;
    }

    while (v55);
  }

  v61 = *(v70 + 3);
  mlir::ValueRange::ValueRange(v72, 0, 0);
  mlir::ValueRange::ValueRange(&CallableRegion, 0, 0);
  v62 = mlir::OpBuilder::create<mlir::func::FuncOp,mlir::TypeRange,mlir::ValueRange,llvm::SmallVector<mlir::NamedAttribute,2u> &>(v49, v61, v72, &CallableRegion, &AttrDictionary);
  mlir::Region::takeBody((((&v62[4 * ((v62[11] >> 23) & 1) + 17] + ((v62[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v62[10]), (((v70 + 16 * ((*(v70 + 11) >> 23) & 1) + ((*(v70 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v70 + 10)));
  if (v78)
  {
    DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(v49, v77, v78);
    Context = mlir::Attribute::getContext((v62 + 6));
    v73[8] = 261;
    v72[0] = "mps.stateInputIndices";
    v72[1] = 21;
    v65 = mlir::StringAttr::get(Context, v72);
    mlir::Operation::setAttr(v62, v65, DenseI64ArrayAttr);
  }

  mlir::ConversionPatternRewriter::eraseOp(a4, v70);
  if (AttrDictionary != v76)
  {
    free(AttrDictionary);
  }

  if (v77 != v79)
  {
    free(v77);
  }

  return 1;
}

void anonymous namespace::getInterleavedShape(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a2;
  v19 = a1;
  Value = mlir::ArrayAttr::getValue(&v19);
  mlir::ArrayAttr::getValue(&v19);
  v6 = v5;
  *a3 = a3 + 16;
  *(a3 + 8) = 0x500000000;
  RawData = mlir::DenseArrayAttr::getRawData(&v18);
  if (v6 >= 1)
  {
    v8 = 0;
    v9 = 1;
    v10 = 0xFFFFFFFFLL;
    while (1)
    {
      v11 = *(RawData + 8 * v8);
      v9 *= v11;
      if (v11 >= 2)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v12 = v6 - 1;
        goto LABEL_7;
      }
    }

    v10 = v8;
    v12 = v6 - 1;
LABEL_7:
    v13 = v10;
    v14 = Value;
    do
    {
      if (v13)
      {
        v15 = *(a3 + 8);
        v17 = *(a3 + 12);
        if (v6 == 1)
        {
          v16 = *(Value + 8 * v12) * v9;
          if (v15 >= v17)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v16 = *v14;
          if (v15 >= v17)
          {
LABEL_15:
            llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v15 + 1, 8);
            v15 = *(a3 + 8);
          }
        }
      }

      else
      {
        v15 = *(a3 + 8);
        v16 = *(Value + 8 * v10) / v9;
        if (v15 >= *(a3 + 12))
        {
          goto LABEL_15;
        }
      }

      *(*a3 + 8 * v15) = v16;
      ++*(a3 + 8);
      ++v14;
      --v13;
      --v6;
    }

    while (v6);
  }
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::RankedTensorType,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::RankedTensorType>>,mlir::Value,mlir::RankedTensorType,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::RankedTensorType>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    LODWORD(v3) = -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)));
    v5 = v2 - 1;
    v6 = v3 & (v2 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      return v7 + 1;
    }

    v9 = 0;
    v10 = 1;
    while (v8 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v8 == -8192;
      }

      if (v11)
      {
        v9 = v7;
      }

      v12 = v6 + v10++;
      v6 = v12 & v5;
      v7 = (*a1 + 16 * (v12 & v5));
      v8 = *v7;
      if (*a2 == *v7)
      {
        return v7 + 1;
      }
    }

    if (v9)
    {
      v7 = v9;
    }
  }

  else
  {
    v7 = 0;
  }

  v17 = v7;
  v13 = *(a1 + 8);
  if (4 * v13 + 4 >= 3 * v2)
  {
    v15 = a2;
    v2 *= 2;
LABEL_24:
    v16 = a1;
    llvm::DenseMap<mlir::Value,mlir::RankedTensorType,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::RankedTensorType>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong},llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong}>>,mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong},llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong}>>::LookupBucketFor<mlir::func::FuncOp>(v16, v15, &v17);
    a1 = v16;
    a2 = v15;
    v13 = *(v16 + 8);
    v7 = v17;
    goto LABEL_15;
  }

  if (v2 + ~v13 - *(a1 + 12) <= v2 >> 3)
  {
    v15 = a2;
    goto LABEL_24;
  }

LABEL_15:
  *(a1 + 8) = v13 + 1;
  if (*v7 != -4096)
  {
    --*(a1 + 12);
  }

  *v7 = *a2;
  v7[1] = 0;
  return v7 + 1;
}

uint64_t mlir::OpBuilder::create<mlir::func::FuncOp,mlir::TypeRange,mlir::ValueRange,llvm::SmallVector<mlir::NamedAttribute,2u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::func::FuncOp,llvm::StringRef const&,mlir::FunctionType &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::func::FuncOp::build(a1, v19, *a3, a3[1], *a4, *(a4 + 8), *a5, *(a5 + 8));
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

void *llvm::DenseMap<mlir::Value,mlir::RankedTensorType,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::RankedTensorType>>::grow(uint64_t a1, int a2)
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
  *a1 = result;
  if (v4)
  {
    v10 = (16 * v3);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::RankedTensorType,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::RankedTensorType>>,mlir::Value,mlir::RankedTensorType,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::RankedTensorType>>::moveFromOldBuckets(a1, v4, &v10[v4]);

    llvm::deallocate_buffer(v4, v10);
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (v11 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = v12 + 1;
      v14 = (v12 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v15 = &result[2 * v14];
      v16 = result + 2;
      v17 = v14;
      do
      {
        *(v16 - 2) = -4096;
        *v16 = -4096;
        v16 += 4;
        v17 -= 2;
      }

      while (v17);
      if (v13 == v14)
      {
        return result;
      }
    }

    else
    {
      v15 = result;
    }

    v18 = &result[2 * v11];
    do
    {
      *v15 = -4096;
      v15 += 2;
    }

    while (v15 != v18);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::RankedTensorType,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::RankedTensorType>>,mlir::Value,mlir::RankedTensorType,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::RankedTensorType>>::moveFromOldBuckets(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  *(result + 8) = 0;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *result;
    v5 = (v3 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v5)
    {
      v6 = v5 + 1;
      v7 = (v5 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v8 = &v4[2 * v7];
      v9 = v4 + 2;
      v10 = v7;
      do
      {
        *(v9 - 2) = -4096;
        *v9 = -4096;
        v9 += 4;
        v10 -= 2;
      }

      while (v10);
      if (v6 == v7)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v8 = *result;
    }

    v11 = &v4[2 * v3];
    do
    {
      *v8 = -4096;
      v8 += 2;
    }

    while (v8 != v11);
  }

LABEL_10:
  while (a2 != a3)
  {
    v13 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v14 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
      v15 = 0x9DDFEA08EB382D69 * (HIDWORD(v13) ^ (v14 >> 47) ^ v14);
      LODWORD(v14) = -348639895 * ((v15 >> 47) ^ v15);
      v16 = *(result + 16) - 1;
      v17 = v16 & v14;
      v12 = (*result + 16 * v17);
      v18 = *v12;
      if (v13 != *v12)
      {
        v19 = 0;
        v20 = 1;
        while (v18 != -4096)
        {
          if (v19)
          {
            v21 = 0;
          }

          else
          {
            v21 = v18 == -8192;
          }

          if (v21)
          {
            v19 = v12;
          }

          v22 = v17 + v20++;
          v17 = v22 & v16;
          v12 = (*result + 16 * (v22 & v16));
          v18 = *v12;
          if (v13 == *v12)
          {
            goto LABEL_14;
          }
        }

        if (v19)
        {
          v12 = v19;
        }
      }

LABEL_14:
      *v12 = v13;
      v12[1] = a2[1];
      ++*(result + 8);
    }

    a2 += 2;
  }

  return result;
}

void anonymous namespace::BatchMatmulOpPattern::~BatchMatmulOpPattern(_anonymous_namespace_::BatchMatmulOpPattern *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::BatchMatmulOpPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, mlir::BoolAttr **a4)
{
  v6 = *(a2 + 72);
  v7 = *(v6 + 24);
  v10 = *(v6 + 56);
  v11 = v7;
  v8 = mlir::OpBuilder::create<mlir::mps::MatMulOp,mlir::Value &,mlir::Value &>(a4 + 1, *(a2 + 24), &v11, &v10);
  (*(*a4 + 1))(a4, a2, v8);
  return 1;
}

void anonymous namespace::ModuleOpPattern::~ModuleOpPattern(_anonymous_namespace_::ModuleOpPattern *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ModuleOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::arith::detail::CmpFOpGenericAdaptorBase::CmpFOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ModuleOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::arith::detail::CmpFOpGenericAdaptorBase::CmpFOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t anonymous namespace::ModuleOpPattern::matchAndRewrite(int a1, mlir::SymbolTable *this, uint64_t a3, mlir::StringAttr **a4)
{
  v6 = *(this + 3);
  *&v10 = mlir::SymbolTable::getSymbolName(this, this);
  *&v10 = mlir::OpaqueAttr::getAttrData(&v10);
  *(&v10 + 1) = v7;
  v8 = mlir::OpBuilder::create<mlir::ModuleOp,llvm::StringRef>(a4 + 1, v6, &v10);
  mlir::Region::takeBody((((v8 + 16 * ((*(v8 + 44) >> 23) & 1) + ((*(v8 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v8 + 40)), (((this + 16 * ((*(this + 11) >> 23) & 1) + ((*(this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10)));
  mlir::ConversionPatternRewriter::eraseOp(a4, this);
  return 1;
}

void anonymous namespace::OutputOpPattern::~OutputOpPattern(_anonymous_namespace_::OutputOpPattern *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::OutputOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::OutputOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::OutputOpPattern::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::scf::detail::YieldOpGenericAdaptorBase *this, uint64_t a4)
{
  v37[6] = *MEMORY[0x1E69E9840];
  ODSOperandIndexAndLength = mlir::scf::detail::YieldOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 12));
  v7 = *(this + 5);
  v35 = v7;
  v36 = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v7 = mlir::ValueRange::offset_base(&v35, ODSOperandIndexAndLength);
    v8 = v36;
  }

  else
  {
    v8 = 0;
  }

  v35 = v37;
  v9 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
  v36 = 0x600000000;
  v32 = v7;
  v33 = 0;
  v10 = v9 - v8;
  if (v9 != v8)
  {
    v11 = 0;
    do
    {
      if (*(*(*(mlir::ValueRange::dereference_iterator(&v32, v11) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
      {
        v12 = mlir::ValueRange::dereference_iterator(&v32, v33);
        v13 = v36;
        if (v36 >= HIDWORD(v36))
        {
          v14 = v12;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 8);
          v12 = v14;
          v13 = v36;
        }

        *(v35 + v13) = v12;
        LODWORD(v36) = v36 + 1;
      }

      v11 = v33 + 1;
      v33 = v11;
    }

    while (v11 != v10);
    if (v36)
    {
      v15 = v35;
      v16 = 8 * v36;
      do
      {
        v17 = *v15;
        v18 = (*(*v15 + 8) & 0xFFFFFFFFFFFFFFF8);
        if (*(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
        {
          v18 = 0;
        }

        v31 = v18;
        if (v18)
        {
          Values = mlir::SparseElementsAttr::getValues(&v31);
          if (Values)
          {
            if (*(*Values + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id)
            {
              v20 = v32;
              v21 = v33;
              ElementTypeOrSelf = mlir::getElementTypeOrSelf(v31);
              v23 = mlir::RankedTensorType::get(v20, v21, ElementTypeOrSelf, 0);
              v24 = *(a1 + 104);
              v30 = v17;
              v25 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::RankedTensorType,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::RankedTensorType>>,mlir::Value,mlir::RankedTensorType,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::RankedTensorType>>::operator[](v24, &v30);
              *v25 = v31;
              *(v17 + 8) = *(v17 + 8) & 7 | v23;
              if (v32 != &v34)
              {
                free(v32);
              }
            }
          }
        }

        v15 += 8;
        v16 -= 8;
      }

      while (v16);
    }
  }

  v26 = mlir::OpBuilder::create<mlir::func::ReturnOp,llvm::SmallVector<mlir::Value,2u> &>((a4 + 8), *(a2 + 24), &v35);
  (*(*a4 + 8))(a4, a2, v26);
  if (v35 != v37)
  {
    free(v35);
  }

  return 1;
}

void *anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::AddOp,mlir::mps::AddOp>::~TrivialPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::AddOp,mlir::mps::AddOp>::~TrivialPattern(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::AddOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::AddOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::AddOp,mlir::mps::AddOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, mlir::Float32Type **a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 40);
  v6 = mlir::OpBuilder::create<mlir::mps::AddOp,mlir::ValueRange>(a4 + 1, *(a2 + 24), &v8);
  (*(*a4 + 1))(a4, a2, v6);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::AddOp,mlir::ValueRange>(mlir::Float32Type **a1, uint64_t a2, uint64_t a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::AddOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::AddOp,mlir::Value,mlir::Value&>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::AddOp::build(a1, v15, *a3, *(a3 + 8), 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::AddOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void *anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::SubOp,mlir::mps::SubtractOp>::~TrivialPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::SubOp,mlir::mps::SubtractOp>::~TrivialPattern(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::SubOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::SubOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::SubOp,mlir::mps::SubtractOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, mlir::Float32Type **a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 40);
  v6 = mlir::OpBuilder::create<mlir::mps::SubtractOp,mlir::ValueRange>(a4 + 1, *(a2 + 24), &v8);
  (*(*a4 + 1))(a4, a2, v6);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::SubtractOp,mlir::ValueRange>(mlir::Float32Type **a1, uint64_t a2, uint64_t a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SubtractOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::createOrFold<mlir::mps::SubtractOp,mlir::mps::ConstantOp,mlir::mps::ConstantOp>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::AddOp::build(a1, v15, *a3, *(a3 + 8), 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SubtractOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void *anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::MulOp,mlir::mps::MultiplyOp>::~TrivialPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::MulOp,mlir::mps::MultiplyOp>::~TrivialPattern(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::MulOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::MulOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::MulOp,mlir::mps::MultiplyOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, mlir::Float32Type **a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 40);
  v6 = mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::ValueRange>(a4 + 1, *(a2 + 24), &v8);
  (*(*a4 + 1))(a4, a2, v6);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::ValueRange>(mlir::Float32Type **a1, uint64_t a2, uint64_t a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MultiplyOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::Value,mlir::Value&>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::AddOp::build(a1, v15, *a3, *(a3 + 8), 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::MultiplyOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void *anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::FloorDivideOp,mlir::mps::FloorDivideOp>::~TrivialPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::FloorDivideOp,mlir::mps::FloorDivideOp>::~TrivialPattern(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::FloorDivideOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::FloorDivideOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::FloorDivideOp,mlir::mps::FloorDivideOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, mlir::Float32Type **a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 40);
  v6 = mlir::OpBuilder::create<mlir::mps::FloorDivideOp,mlir::ValueRange>(a4 + 1, *(a2 + 24), &v8);
  (*(*a4 + 1))(a4, a2, v6);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::FloorDivideOp,mlir::ValueRange>(mlir::Float32Type **a1, uint64_t a2, uint64_t a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::FloorDivideOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::FloorDivideOp,mlir::ValueRange>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::AddOp::build(a1, v15, *a3, *(a3 + 8), 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::FloorDivideOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void *anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::DivideOp,mlir::mps::DivideOp>::~TrivialPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::DivideOp,mlir::mps::DivideOp>::~TrivialPattern(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::DivideOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::DivideOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::DivideOp,mlir::mps::DivideOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, mlir::Float32Type **a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 40);
  v6 = mlir::OpBuilder::create<mlir::mps::DivideOp,mlir::ValueRange>(a4 + 1, *(a2 + 24), &v8);
  (*(*a4 + 1))(a4, a2, v6);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::DivideOp,mlir::ValueRange>(mlir::Float32Type **a1, uint64_t a2, uint64_t a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DivideOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::createOrFold<mlir::mps::DivideOp,mlir::Value,mlir::mps::ConstantOp>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::AddOp::build(a1, v15, *a3, *(a3 + 8), 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DivideOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void *anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::PowOp,mlir::mps::PowerOp>::~TrivialPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::PowOp,mlir::mps::PowerOp>::~TrivialPattern(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::PowOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::PowOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::PowOp,mlir::mps::PowerOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, mlir::Float32Type **a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 40);
  v6 = mlir::OpBuilder::create<mlir::mps::PowerOp,mlir::ValueRange>(a4 + 1, *(a2 + 24), &v8);
  (*(*a4 + 1))(a4, a2, v6);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::PowerOp,mlir::ValueRange>(mlir::Float32Type **a1, uint64_t a2, uint64_t a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PowerOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::PowerOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::AddOp::build(a1, v15, *a3, *(a3 + 8), 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PowerOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void *anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::MinimumOp,mlir::mps::MinimumOp>::~TrivialPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::MinimumOp,mlir::mps::MinimumOp>::~TrivialPattern(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::MinimumOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::MinimumOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::MinimumOp,mlir::mps::MinimumOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, mlir::Float32Type **a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 40);
  v6 = mlir::OpBuilder::create<mlir::mps::MinimumOp,mlir::ValueRange>(a4 + 1, *(a2 + 24), &v8);
  (*(*a4 + 1))(a4, a2, v6);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::MinimumOp,mlir::ValueRange>(mlir::Float32Type **a1, uint64_t a2, uint64_t a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MinimumOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::MinimumOp,mlir::Value &,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::AddOp::build(a1, v15, *a3, *(a3 + 8), 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::MinimumOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void *anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::MaximumOp,mlir::mps::MaximumOp>::~TrivialPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::MaximumOp,mlir::mps::MaximumOp>::~TrivialPattern(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::MaximumOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::MaximumOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::MaximumOp,mlir::mps::MaximumOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, mlir::Float32Type **a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 40);
  v6 = mlir::OpBuilder::create<mlir::mps::MaximumOp,mlir::ValueRange>(a4 + 1, *(a2 + 24), &v8);
  (*(*a4 + 1))(a4, a2, v6);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::MaximumOp,mlir::ValueRange>(mlir::Float32Type **a1, uint64_t a2, uint64_t a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MaximumOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::MaximumOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::AddOp::build(a1, v15, *a3, *(a3 + 8), 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::MaximumOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void *anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::ModuloOp,mlir::mps::ModuloOp>::~TrivialPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::ModuloOp,mlir::mps::ModuloOp>::~TrivialPattern(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ModuloOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ModuloOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::ModuloOp,mlir::mps::ModuloOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, mlir::Float32Type **a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 40);
  v6 = mlir::OpBuilder::create<mlir::mps::ModuloOp,mlir::ValueRange>(a4 + 1, *(a2 + 24), &v8);
  (*(*a4 + 1))(a4, a2, v6);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ModuloOp,mlir::ValueRange>(mlir::Float32Type **a1, uint64_t a2, uint64_t a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ModuloOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ModuloOp,mlir::Value &,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::AddOp::build(a1, v15, *a3, *(a3 + 8), 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ModuloOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void *anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::CosOp,mlir::mps::CosOp>::~TrivialPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::CosOp,mlir::mps::CosOp>::~TrivialPattern(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::CosOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::CosOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::CosOp,mlir::mps::CosOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 40);
  v6 = mlir::OpBuilder::create<mlir::mps::CosOp,mlir::ValueRange>((a4 + 8), *(a2 + 24), &v8);
  (*(*a4 + 8))(a4, a2, v6);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::CosOp,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CosOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::CosOp,mlir::ValueRange>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::arith::AndIOp::build(a1, v15, *a3, *(a3 + 8), 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::CosOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void *anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::LogOp,mlir::mps::LogarithmOp>::~TrivialPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::LogOp,mlir::mps::LogarithmOp>::~TrivialPattern(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::LogOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::LogOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::LogOp,mlir::mps::LogarithmOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 40);
  v6 = mlir::OpBuilder::create<mlir::mps::LogarithmOp,mlir::ValueRange>((a4 + 8), *(a2 + 24), &v8);
  (*(*a4 + 8))(a4, a2, v6);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::LogarithmOp,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::LogarithmOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::LogarithmOp,mlir::mps::AddOp &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::arith::AndIOp::build(a1, v15, *a3, *(a3 + 8), 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::LogarithmOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void *anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::SiluOp,mlir::mps::SwishOp>::~TrivialPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::SiluOp,mlir::mps::SwishOp>::~TrivialPattern(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::SiluOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::SiluOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::SiluOp,mlir::mps::SwishOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 40);
  v6 = mlir::OpBuilder::create<mlir::mps::SwishOp,mlir::ValueRange>((a4 + 8), *(a2 + 24), &v8);
  (*(*a4 + 8))(a4, a2, v6);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::SwishOp,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SwishOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::SwishOp,mlir::Value>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::arith::AndIOp::build(a1, v15, *a3, *(a3 + 8), 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SwishOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void *anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::SinOp,mlir::mps::SinOp>::~TrivialPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::SinOp,mlir::mps::SinOp>::~TrivialPattern(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::SinOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::SinOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::SinOp,mlir::mps::SinOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 40);
  v6 = mlir::OpBuilder::create<mlir::mps::SinOp,mlir::ValueRange>((a4 + 8), *(a2 + 24), &v8);
  (*(*a4 + 8))(a4, a2, v6);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::SinOp,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SinOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::SinOp,mlir::ValueRange>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::arith::AndIOp::build(a1, v15, *a3, *(a3 + 8), 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SinOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void *anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::RsqrtOp,mlir::mps::ReciprocalSquareRootOp>::~TrivialPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::RsqrtOp,mlir::mps::ReciprocalSquareRootOp>::~TrivialPattern(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::RsqrtOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::RsqrtOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::RsqrtOp,mlir::mps::ReciprocalSquareRootOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 40);
  v6 = mlir::OpBuilder::create<mlir::mps::ReciprocalSquareRootOp,mlir::ValueRange>((a4 + 8), *(a2 + 24), &v8);
  (*(*a4 + 8))(a4, a2, v6);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ReciprocalSquareRootOp,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReciprocalSquareRootOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReciprocalSquareRootOp,mlir::Value>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::arith::AndIOp::build(a1, v15, *a3, *(a3 + 8), 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReciprocalSquareRootOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void *anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::SqrtOp,mlir::mps::SquareRootOp>::~TrivialPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::SqrtOp,mlir::mps::SquareRootOp>::~TrivialPattern(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::SqrtOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::SqrtOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::SqrtOp,mlir::mps::SquareRootOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 40);
  v6 = mlir::OpBuilder::create<mlir::mps::SquareRootOp,mlir::ValueRange>((a4 + 8), *(a2 + 24), &v8);
  (*(*a4 + 8))(a4, a2, v6);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::SquareRootOp,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SquareRootOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::SquareRootOp,mlir::Value>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::arith::AndIOp::build(a1, v15, *a3, *(a3 + 8), 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SquareRootOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void *anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::TanhOp,mlir::mps::TanhOp>::~TrivialPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::TanhOp,mlir::mps::TanhOp>::~TrivialPattern(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::TanhOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::TanhOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::TanhOp,mlir::mps::TanhOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 40);
  v6 = mlir::OpBuilder::create<mlir::mps::TanhOp,mlir::ValueRange>((a4 + 8), *(a2 + 24), &v8);
  (*(*a4 + 8))(a4, a2, v6);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::TanhOp,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::TanhOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::TanhOp,mlir::ValueRange>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::arith::AndIOp::build(a1, v15, *a3, *(a3 + 8), 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::TanhOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void *anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::EqualOp,mlir::mps::EqualToOp>::~TrivialPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::EqualOp,mlir::mps::EqualToOp>::~TrivialPattern(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::EqualOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::EqualOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::EqualOp,mlir::mps::EqualToOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 40);
  v6 = mlir::OpBuilder::create<mlir::mps::EqualToOp,mlir::ValueRange>((a4 + 8), *(a2 + 24), &v8);
  (*(*a4 + 8))(a4, a2, v6);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::EqualToOp,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::EqualToOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::EqualToOp,mlir::Value &,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::EqualToOp::build(a1, v15, *a3, *(a3 + 8), 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::EqualToOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void *anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::GreaterOp,mlir::mps::GreaterThanOp>::~TrivialPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::GreaterOp,mlir::mps::GreaterThanOp>::~TrivialPattern(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::GreaterOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::GreaterOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::GreaterOp,mlir::mps::GreaterThanOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 40);
  v6 = mlir::OpBuilder::create<mlir::mps::GreaterThanOp,mlir::ValueRange>((a4 + 8), *(a2 + 24), &v8);
  (*(*a4 + 8))(a4, a2, v6);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::GreaterThanOp,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GreaterThanOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::GreaterThanOp,mlir::Value &,mlir::mps::ConstantOp &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::EqualToOp::build(a1, v15, *a3, *(a3 + 8), 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::GreaterThanOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void *anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::NotEqualOp,mlir::mps::NotEqualToOp>::~TrivialPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::NotEqualOp,mlir::mps::NotEqualToOp>::~TrivialPattern(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::NotEqualOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::NotEqualOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::NotEqualOp,mlir::mps::NotEqualToOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 40);
  v6 = mlir::OpBuilder::create<mlir::mps::NotEqualToOp,mlir::ValueRange>((a4 + 8), *(a2 + 24), &v8);
  (*(*a4 + 8))(a4, a2, v6);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::NotEqualToOp,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::NotEqualToOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::NotEqualToOp,mlir::Value &,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::EqualToOp::build(a1, v15, *a3, *(a3 + 8), 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::NotEqualToOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void *anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::AndOp,mlir::mps::AndOp>::~TrivialPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::AndOp,mlir::mps::AndOp>::~TrivialPattern(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::AndOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::AndOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::AndOp,mlir::mps::AndOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, mlir::Float32Type **a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 40);
  v6 = mlir::OpBuilder::create<mlir::mps::AndOp,mlir::ValueRange>(a4 + 1, *(a2 + 24), &v8);
  (*(*a4 + 1))(a4, a2, v6);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::AndOp,mlir::ValueRange>(mlir::Float32Type **a1, uint64_t a2, uint64_t a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::AndOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::AndOp,mlir::ValueRange>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::AddOp::build(a1, v15, *a3, *(a3 + 8), 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::AndOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void *anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::OrOp,mlir::mps::OrOp>::~TrivialPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::OrOp,mlir::mps::OrOp>::~TrivialPattern(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::OrOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::OrOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::OrOp,mlir::mps::OrOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, mlir::Float32Type **a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 40);
  v6 = mlir::OpBuilder::create<mlir::mps::OrOp,mlir::ValueRange>(a4 + 1, *(a2 + 24), &v8);
  (*(*a4 + 1))(a4, a2, v6);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::OrOp,mlir::ValueRange>(mlir::Float32Type **a1, uint64_t a2, uint64_t a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::OrOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::OrOp,mlir::ValueRange>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::AddOp::build(a1, v15, *a3, *(a3 + 8), 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::OrOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void *anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::NotOp,mlir::mps::NotOp>::~TrivialPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::NotOp,mlir::mps::NotOp>::~TrivialPattern(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::NotOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::NotOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::NotOp,mlir::mps::NotOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 40);
  v6 = mlir::OpBuilder::create<mlir::mps::NotOp,mlir::ValueRange>((a4 + 8), *(a2 + 24), &v8);
  (*(*a4 + 8))(a4, a2, v6);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::NotOp,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::NotOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::NotOp,mlir::ValueRange>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::arith::AndIOp::build(a1, v15, *a3, *(a3 + 8), 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::NotOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void *anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::WhereOp,mlir::mps::SelectOp>::~TrivialPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::WhereOp,mlir::mps::SelectOp>::~TrivialPattern(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::WhereOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::WhereOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::WhereOp,mlir::mps::SelectOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 40);
  v6 = mlir::OpBuilder::create<mlir::mps::SelectOp,mlir::ValueRange>((a4 + 8), *(a2 + 24), &v8);
  (*(*a4 + 8))(a4, a2, v6);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::SelectOp,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SelectOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::SelectOp,mlir::mps::GreaterThanOp &,mlir::Value &,mlir::mps::LogarithmOp &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::SelectOp::build(a1, v15, *a3, *(a3 + 8), 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SelectOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void *anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::SigmoidOp,mlir::mps::SigmoidOp>::~TrivialPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::SigmoidOp,mlir::mps::SigmoidOp>::~TrivialPattern(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::SigmoidOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::SigmoidOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::SigmoidOp,mlir::mps::SigmoidOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 40);
  v6 = mlir::OpBuilder::create<mlir::mps::SigmoidOp,mlir::ValueRange>((a4 + 8), *(a2 + 24), &v8);
  (*(*a4 + 8))(a4, a2, v6);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::SigmoidOp,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SigmoidOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::SigmoidOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::arith::AndIOp::build(a1, v15, *a3, *(a3 + 8), 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SigmoidOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void *anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::ReLUOp,mlir::mps::ReluOp>::~TrivialPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::ReLUOp,mlir::mps::ReluOp>::~TrivialPattern(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ReLUOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ReLUOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::ReLUOp,mlir::mps::ReluOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 40);
  v6 = mlir::OpBuilder::create<mlir::mps::ReluOp,mlir::ValueRange>((a4 + 8), *(a2 + 24), &v8);
  (*(*a4 + 8))(a4, a2, v6);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ReluOp,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReluOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReluOp,mlir::mps::MatMulOp &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::arith::AndIOp::build(a1, v15, *a3, *(a3 + 8), 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReluOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void *anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::SoftmaxOp,mlir::mps::SoftmaxOp>::~TrivialPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::SoftmaxOp,mlir::mps::SoftmaxOp>::~TrivialPattern(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::SoftmaxOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::SoftmaxOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::SoftmaxOp,mlir::mps::SoftmaxOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 40);
  v6 = mlir::OpBuilder::create<mlir::mps::SoftmaxOp,mlir::ValueRange>((a4 + 8), *(a2 + 24), &v8);
  (*(*a4 + 8))(a4, a2, v6);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::SoftmaxOp,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SoftmaxOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::SoftmaxOp,mlir::Value,mlir::Value>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::ReverseOp::build(a1, v15, *a3, *(a3 + 8), 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SoftmaxOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void anonymous namespace::GeluOpPattern::~GeluOpPattern(_anonymous_namespace_::GeluOpPattern *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::GELUOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::GELUOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t anonymous namespace::GeluOpPattern::matchAndRewrite(int a1, uint64_t a2, mlir::ODIE::Compiler::CoreML::detail::GELUOpGenericAdaptorBase *this, uint64_t a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 24);
  Approximate = mlir::ODIE::Compiler::CoreML::detail::GELUOpGenericAdaptorBase::getApproximate(this);
  switch(Approximate)
  {
    case 2:
      if (*(a2 + 36))
      {
        v14 = a2 - 16;
      }

      else
      {
        v14 = 0;
      }

      v39 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      ElementType = mlir::TensorType::getElementType(&v39);
      v39 = *(this + 6);
      v40 = 0;
      v37 = mlir::ValueRange::dereference_iterator(&v39, 0);
      v16 = mlir::RankedTensorType::get(0, 0, ElementType, 0);
      v39 = mlir::FloatAttr::get(ElementType, 1.70200002);
      if (v16)
      {
        v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
      }

      else
      {
        v17 = 0;
      }

      v38 = mlir::DenseElementsAttr::get(v16, v17, &v39, 1uLL);
      v39 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a4 + 8), v7, &v38);
      v38 = mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::mps::InstanceNormOp &,mlir::Value>((a4 + 8), v7, &v39, &v37);
      v36 = mlir::OpBuilder::create<mlir::mps::SigmoidOp,mlir::mps::MultiplyOp &>((a4 + 8), v7, &v38);
      v9 = mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::Value &,mlir::mps::ReciprocalSquareRootOp &>((a4 + 8), *(a2 + 24), &v37, &v36);
      goto LABEL_31;
    case 1:
      if (*(a2 + 36))
      {
        v10 = a2 - 16;
      }

      else
      {
        v10 = 0;
      }

      v39 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      v11 = mlir::TensorType::getElementType(&v39);
      v39 = *(this + 6);
      v40 = 0;
      v37 = mlir::ValueRange::dereference_iterator(&v39, 0);
      v12 = mlir::RankedTensorType::get(0, 0, v11, 0);
      v39 = mlir::FloatAttr::get(v11, 0.5);
      if (v12)
      {
        v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
      }

      else
      {
        v13 = 0;
      }

      v38 = mlir::DenseElementsAttr::get(v12, v13, &v39, 1uLL);
      v36 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a4 + 8), v7, &v38);
      v35 = mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::Value &,mlir::mps::ReciprocalSquareRootOp &>((a4 + 8), v7, &v37, &v36);
      v18 = mlir::RankedTensorType::get(0, 0, v11, 0);
      v39 = mlir::FloatAttr::get(v11, 0.797884583);
      if (v18)
      {
        v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      }

      else
      {
        v19 = 0;
      }

      v38 = mlir::DenseElementsAttr::get(v18, v19, &v39, 1uLL);
      v34 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a4 + 8), v7, &v38);
      v20 = mlir::RankedTensorType::get(0, 0, v11, 0);
      v39 = mlir::FloatAttr::get(v11, 3.0);
      if (v20)
      {
        v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
      }

      else
      {
        v21 = 0;
      }

      v38 = mlir::DenseElementsAttr::get(v20, v21, &v39, 1uLL);
      v33 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a4 + 8), v7, &v38);
      v32 = mlir::OpBuilder::create<mlir::mps::PowerOp,mlir::Value &,mlir::mps::ConstantOp &>((a4 + 8), v7, &v37, &v33);
      v22 = mlir::RankedTensorType::get(0, 0, v11, 0);
      v39 = mlir::FloatAttr::get(v11, 0.0447149985);
      if (v22)
      {
        v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
      }

      else
      {
        v23 = 0;
      }

      v38 = mlir::DenseElementsAttr::get(v22, v23, &v39, 1uLL);
      v31 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a4 + 8), v7, &v38);
      v30 = mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::mps::ConstantOp,mlir::mps::CastOp &>((a4 + 8), v7, &v31, &v32);
      v29 = mlir::OpBuilder::create<mlir::mps::AddOp,mlir::Value &,mlir::mps::TransposeOp &>((a4 + 8), v7, &v37, &v30);
      v28 = mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::mps::ConstantOp,mlir::mps::CastOp &>((a4 + 8), v7, &v34, &v29);
      v27 = mlir::OpBuilder::create<mlir::mps::TanhOp,mlir::mps::MultiplyOp &>((a4 + 8), v7, &v28);
      v24 = mlir::RankedTensorType::get(0, 0, v11, 0);
      v39 = mlir::FloatAttr::get(v11, 1.0);
      if (v24)
      {
        v25 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v24 + 8);
      }

      else
      {
        v25 = 0;
      }

      v38 = mlir::DenseElementsAttr::get(v24, v25, &v39, 1uLL);
      v39 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a4 + 8), v7, &v38);
      v38 = mlir::OpBuilder::create<mlir::mps::AddOp,mlir::mps::SubtractOp &,mlir::mps::ConstantOp>((a4 + 8), v7, &v39, &v27);
      v9 = mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::mps::ConstantOp,mlir::mps::CastOp &>((a4 + 8), *(a2 + 24), &v35, &v38);
      goto LABEL_31;
    case 0:
      v39 = *(this + 6);
      v40 = 0;
      v39 = mlir::ValueRange::dereference_iterator(&v39, 0);
      v9 = mlir::OpBuilder::create<mlir::mps::GeluOp,mlir::Value>((a4 + 8), *(a2 + 24), &v39);
LABEL_31:
      (*(*a4 + 8))(a4, a2, v9);
      break;
  }

  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::PowerOp,mlir::Value &,mlir::mps::ConstantOp &>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PowerOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::PowerOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::ATan2Op::build(a1, v17, *a3, *a4 - 16);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PowerOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::TanhOp,mlir::mps::MultiplyOp &>(mlir::OpBuilder *a1, uint64_t a2, void *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::TanhOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::TanhOp,mlir::ValueRange>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::ACosOp::build(a1, v15, *a3 - 16);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::TanhOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

uint64_t mlir::OpBuilder::create<mlir::mps::SigmoidOp,mlir::mps::MultiplyOp &>(mlir::OpBuilder *a1, uint64_t a2, void *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SigmoidOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::SigmoidOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::ACosOp::build(a1, v15, *a3 - 16);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SigmoidOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

uint64_t mlir::OpBuilder::create<mlir::mps::GeluOp,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GeluOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::GeluOp,mlir::Value>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::ACosOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::GeluOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void *anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::ExpandDimsOp,mlir::mps::ExpandDimsOp>::~TrivialPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::ExpandDimsOp,mlir::mps::ExpandDimsOp>::~TrivialPattern(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ExpandDimsOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ExpandDimsOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::ExpandDimsOp,mlir::mps::ExpandDimsOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 40);
  v6 = mlir::OpBuilder::create<mlir::mps::ExpandDimsOp,mlir::ValueRange>((a4 + 8), *(a2 + 24), &v8);
  (*(*a4 + 8))(a4, a2, v6);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ExpandDimsOp,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ExpandDimsOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ExpandDimsOp,mlir::mps::CastOp &,mlir::mps::CropOp &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::ExpandDimsOp::build(a1, v15, *a3, *(a3 + 8), 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ExpandDimsOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void *anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp,mlir::mps::SqueezeOp>::~TrivialPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp,mlir::mps::SqueezeOp>::~TrivialPattern(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp,mlir::mps::SqueezeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 40);
  v6 = mlir::OpBuilder::create<mlir::mps::SqueezeOp,mlir::ValueRange>((a4 + 8), *(a2 + 24), &v8);
  (*(*a4 + 8))(a4, a2, v6);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::SqueezeOp,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SqueezeOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::SqueezeOp,mlir::Value,mlir::Value&>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::SqueezeOp::build(a1, v15, *a3, *(a3 + 8), 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SqueezeOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void *anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::mps::ReshapeOp>::~TrivialPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::mps::ReshapeOp>::~TrivialPattern(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ReshapeOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ReshapeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::mps::ReshapeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  *v8 = *(a3 + 40);
  v6 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::ValueRange>((a4 + 8), *(a2 + 24), v8);
  (*(*a4 + 8))(a4, a2, v6);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, unint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value,mlir::Value,mlir::UnitAttr>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::ReshapeOp::build(a1, v15, *a3, a3[1], 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void anonymous namespace::CastOpPattern::~CastOpPattern(_anonymous_namespace_::CastOpPattern *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::CastOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::CastOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::CastOpPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, mlir::UnknownLoc **a4)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v11[0] = *(a3 + 40);
  v11[1] = 0;
  v11[0] = mlir::ValueRange::dereference_iterator(v11, 0);
  if (*(a2 + 36))
  {
    v6 = a2 - 16;
  }

  else
  {
    v6 = 0;
  }

  v9 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  ElementType = mlir::TensorType::getElementType(&v9);
  v7 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>(a4 + 1, *(a2 + 24), v11, &ElementType);
  (*(*a4 + 1))(a4, a2, v7);
  return 1;
}

void *anonymous namespace::ReducePattern<mlir::ODIE::Compiler::CoreML::ReduceMeanOp,mlir::mps::ReductionMeanOp>::~ReducePattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::ReducePattern<mlir::ODIE::Compiler::CoreML::ReduceMeanOp,mlir::mps::ReductionMeanOp>::~ReducePattern(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ReduceMeanOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ReduceMeanOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::ReducePattern<mlir::ODIE::Compiler::CoreML::ReduceMeanOp,mlir::mps::ReductionMeanOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, mlir::UnitAttr **a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v42 = *(a3 + 40);
  v7 = *(mlir::ValueRange::dereference_iterator(&v42, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(*v7 + 136);
  if (v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v7 = 0;
  }

  v37 = v7;
  v35 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
  v36 = v35;
  *&v42 = *(*(a2 + 72) + 88);
  DefiningOp = mlir::Value::getDefiningOp(&v42);
  if (DefiningOp)
  {
    v11 = *(*(DefiningOp + 48) + 16);
    v12 = v11 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id;
    v13 = v11 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id ? DefiningOp : 0;
    v39[0] = v13;
    if (v12)
    {
      Value = mlir::ODIE::Compiler::CoreML::ConstantOp::getValue(v39);
      if (mlir::DenseIntElementsAttr::classof(Value))
      {
        v29 = Value;
      }

      else
      {
        v29 = 0;
      }

      v34[0] = v29;
      mlir::DenseElementsAttr::tryGetValues<BOOL,void>(v34, &v42);
      v40 = v42;
      v41 = v43;
      LOBYTE(v34[0]) = mlir::DenseElementsAttr::BoolElementIterator::operator*(&v40);
      v42 = *(a3 + 40);
      *&v40 = mlir::ValueRange::dereference_iterator(&v42, 0);
      *&v42 = *(a3 + 40);
      *(&v42 + 1) = 1;
      v42 = mlir::ValueRange::offset_base(&v42, 1);
      *&v42 = mlir::ValueRange::dereference_iterator(&v42, 0);
      v17 = *(a2 + 24);
      v18 = a4 + 1;
      v19 = v34;
      goto LABEL_22;
    }
  }

  if (mlir::TensorType::hasRank(&v37) && mlir::TensorType::hasRank(&v35))
  {
    mlir::ArrayAttr::getValue(&v37);
    v15 = v14;
    mlir::ArrayAttr::getValue(&v35);
    LOBYTE(v39[0]) = v15 == v16;
    v42 = *(a3 + 40);
    *&v40 = mlir::ValueRange::dereference_iterator(&v42, 0);
    *&v42 = *(a3 + 40);
    *(&v42 + 1) = 1;
    v42 = mlir::ValueRange::offset_base(&v42, 1);
    *&v42 = mlir::ValueRange::dereference_iterator(&v42, 0);
    v17 = *(a2 + 24);
    v18 = a4 + 1;
    v19 = v39;
LABEL_22:
    v27 = mlir::OpBuilder::create<mlir::mps::ReductionMeanOp,mlir::Value &,mlir::Value &,BOOL>(v18, v17, &v40, &v42, v19);
    goto LABEL_23;
  }

  v34[0] = a4;
  v34[1] = &v36;
  v34[2] = a3;
  v33 = *(a2 + 24);
  *&v42 = *(a3 + 40);
  *(&v42 + 1) = 2;
  v42 = mlir::ValueRange::offset_base(&v42, 2);
  *&v42 = mlir::ValueRange::dereference_iterator(&v42, 0);
  v20 = mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::Value>((a4 + 1), v33, &v42);
  v32[0] = v34;
  v32[1] = &v33;
  v31[0] = v34;
  v31[1] = &v33;
  v21 = *(a2 + 24);
  v38 = v21;
  Context = mlir::Attribute::getContext(&v38);
  v23 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id, Context);
  if ((v24 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::scf::IfOp,llvm::SmallVector<mlir::Type,6u> &,mlir::detail::TypedValue<mlir::IntegerType>,BOOL>(&v42, &v40, v39);
  }

  mlir::OperationState::OperationState(&v42, v21, v23);
  v25 = mlir::OpBuilder::create((a4 + 1), &v42);
  v26 = *(*(v25 + 48) + 16);
  mlir::OperationState::~OperationState(&v42);
  if (v26 == &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

LABEL_23:
  (*(*a4 + 1))(a4, a2, v27);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::ExtractOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::detail::TypedValue<mlir::TensorType>,mlir::OperandRange>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::tensor::ExtractOp::build(a1, v15, a3, 1uLL, 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void *mlir::DenseElementsAttr::tryGetValues<BOOL,void>@<X0>(mlir::DenseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  ElementType = mlir::DenseElementsAttr::getElementType(a1);
  result = mlir::Type::isInteger(&ElementType, 1);
  if (result)
  {
    Value = mlir::ArrayAttr::getValue(a1);
    v7 = v6;
    mlir::DenseElementsAttr::BoolElementIterator::BoolElementIterator(&v13, *a1, 0);
    v8 = *a1;
    NumElements = mlir::DenseElementsAttr::getNumElements(a1);
    result = mlir::DenseElementsAttr::BoolElementIterator::BoolElementIterator(v16 + 1, v8, NumElements);
    *&v16[0] = v14;
    v10 = v13;
    v11 = v16[1];
    *(a2 + 16) = v16[0];
    *(a2 + 32) = v11;
    *a2 = v10;
    *(a2 + 48) = Value;
    *(a2 + 56) = v7;
    v12 = 1;
  }

  else
  {
    v12 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v12;
  return result;
}

uint64_t llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location)>::callback_fn<anonymous namespace::ReducePattern<mlir::ODIE::Compiler::CoreML::ReduceMeanOp,mlir::mps::ReductionMeanOp>::matchAndRewrite(mlir::ODIE::Compiler::CoreML::ReduceMeanOp,mlir::ODIE::Compiler::CoreML::ReduceMeanOpAdaptor,mlir::ConversionPatternRewriter &)::{lambda(mlir::OpBuilder &,mlir::Location)#1}>(uint64_t **a1, mlir::OpBuilder *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *a1[1];
  v10 = 1;
  v6 = *v3;
  v5 = v3[1];
  v12 = *(v3[2] + 40);
  v13 = 0;
  v7 = mlir::ValueRange::dereference_iterator(&v12, 0);
  v8 = *(v3[2] + 40);
  v11 = v7;
  v12 = v8;
  v13 = 1;
  v12 = mlir::ValueRange::offset_base(&v12, 1);
  v13 = 0;
  v12 = mlir::ValueRange::dereference_iterator(&v12, 0);
  v11 = mlir::OpBuilder::create<mlir::mps::ReductionMeanOp,mlir::TensorType &,mlir::Value,mlir::Value,BOOL &>((v6 + 8), v4, v5, &v11, &v12, &v10) - 16;
  mlir::ValueRange::ValueRange(&v12, &v11, 1uLL);
  return mlir::OpBuilder::create<mlir::scf::YieldOp,mlir::ValueRange>(a2, v4, &v12);
}

uint64_t mlir::OpBuilder::create<mlir::mps::ReductionMeanOp,mlir::TensorType &,mlir::Value,mlir::Value,BOOL &>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, unsigned __int8 *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionMeanOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReductionMeanOp,mlir::Value &,mlir::Value &,BOOL>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::mps::ReductionMeanOp::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReductionMeanOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

uint64_t mlir::OpBuilder::create<mlir::scf::YieldOp,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::scf::YieldOp,llvm::SmallVector<mlir::Value,6u> &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::func::ReturnOp::build(a1, v15, *a3, *(a3 + 8));
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

uint64_t llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location)>::callback_fn<anonymous namespace::ReducePattern<mlir::ODIE::Compiler::CoreML::ReduceMeanOp,mlir::mps::ReductionMeanOp>::matchAndRewrite(mlir::ODIE::Compiler::CoreML::ReduceMeanOp,mlir::ODIE::Compiler::CoreML::ReduceMeanOpAdaptor,mlir::ConversionPatternRewriter &)::{lambda(mlir::OpBuilder &,mlir::Location)#2}>(uint64_t **a1, mlir::OpBuilder *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *a1[1];
  v10 = 0;
  v6 = *v3;
  v5 = v3[1];
  v12 = *(v3[2] + 40);
  v13 = 0;
  v7 = mlir::ValueRange::dereference_iterator(&v12, 0);
  v8 = *(v3[2] + 40);
  v11 = v7;
  v12 = v8;
  v13 = 1;
  v12 = mlir::ValueRange::offset_base(&v12, 1);
  v13 = 0;
  v12 = mlir::ValueRange::dereference_iterator(&v12, 0);
  v11 = mlir::OpBuilder::create<mlir::mps::ReductionMeanOp,mlir::TensorType &,mlir::Value,mlir::Value,BOOL &>((v6 + 8), v4, v5, &v11, &v12, &v10) - 16;
  mlir::ValueRange::ValueRange(&v12, &v11, 1uLL);
  return mlir::OpBuilder::create<mlir::scf::YieldOp,mlir::ValueRange>(a2, v4, &v12);
}

void *anonymous namespace::ReducePattern<mlir::ODIE::Compiler::CoreML::ReduceSumOp,mlir::mps::ReductionSumOp>::~ReducePattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::ReducePattern<mlir::ODIE::Compiler::CoreML::ReduceSumOp,mlir::mps::ReductionSumOp>::~ReducePattern(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ReduceSumOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ReduceSumOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::ReducePattern<mlir::ODIE::Compiler::CoreML::ReduceSumOp,mlir::mps::ReductionSumOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, mlir::UnitAttr **a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v42 = *(a3 + 40);
  v7 = *(mlir::ValueRange::dereference_iterator(&v42, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(*v7 + 136);
  if (v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v7 = 0;
  }

  v37 = v7;
  v35 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
  v36 = v35;
  *&v42 = *(*(a2 + 72) + 88);
  DefiningOp = mlir::Value::getDefiningOp(&v42);
  if (DefiningOp)
  {
    v11 = *(*(DefiningOp + 48) + 16);
    v12 = v11 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id;
    v13 = v11 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id ? DefiningOp : 0;
    v39[0] = v13;
    if (v12)
    {
      Value = mlir::ODIE::Compiler::CoreML::ConstantOp::getValue(v39);
      if (mlir::DenseIntElementsAttr::classof(Value))
      {
        v29 = Value;
      }

      else
      {
        v29 = 0;
      }

      v34[0] = v29;
      mlir::DenseElementsAttr::tryGetValues<BOOL,void>(v34, &v42);
      v40 = v42;
      v41 = v43;
      LOBYTE(v34[0]) = mlir::DenseElementsAttr::BoolElementIterator::operator*(&v40);
      v42 = *(a3 + 40);
      *&v40 = mlir::ValueRange::dereference_iterator(&v42, 0);
      *&v42 = *(a3 + 40);
      *(&v42 + 1) = 1;
      v42 = mlir::ValueRange::offset_base(&v42, 1);
      *&v42 = mlir::ValueRange::dereference_iterator(&v42, 0);
      v17 = *(a2 + 24);
      v18 = a4 + 1;
      v19 = v34;
      goto LABEL_22;
    }
  }

  if (mlir::TensorType::hasRank(&v37) && mlir::TensorType::hasRank(&v35))
  {
    mlir::ArrayAttr::getValue(&v37);
    v15 = v14;
    mlir::ArrayAttr::getValue(&v35);
    LOBYTE(v39[0]) = v15 == v16;
    v42 = *(a3 + 40);
    *&v40 = mlir::ValueRange::dereference_iterator(&v42, 0);
    *&v42 = *(a3 + 40);
    *(&v42 + 1) = 1;
    v42 = mlir::ValueRange::offset_base(&v42, 1);
    *&v42 = mlir::ValueRange::dereference_iterator(&v42, 0);
    v17 = *(a2 + 24);
    v18 = a4 + 1;
    v19 = v39;
LABEL_22:
    v27 = mlir::OpBuilder::create<mlir::mps::ReductionSumOp,mlir::Value &,mlir::Value &,BOOL &>(v18, v17, &v40, &v42, v19);
    goto LABEL_23;
  }

  v34[0] = a4;
  v34[1] = &v36;
  v34[2] = a3;
  v33 = *(a2 + 24);
  *&v42 = *(a3 + 40);
  *(&v42 + 1) = 2;
  v42 = mlir::ValueRange::offset_base(&v42, 2);
  *&v42 = mlir::ValueRange::dereference_iterator(&v42, 0);
  v20 = mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::Value>((a4 + 1), v33, &v42);
  v32[0] = v34;
  v32[1] = &v33;
  v31[0] = v34;
  v31[1] = &v33;
  v21 = *(a2 + 24);
  v38 = v21;
  Context = mlir::Attribute::getContext(&v38);
  v23 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id, Context);
  if ((v24 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::scf::IfOp,llvm::SmallVector<mlir::Type,6u> &,mlir::detail::TypedValue<mlir::IntegerType>,BOOL>(&v42, &v40, v39);
  }

  mlir::OperationState::OperationState(&v42, v21, v23);
  v25 = mlir::OpBuilder::create((a4 + 1), &v42);
  v26 = *(*(v25 + 48) + 16);
  mlir::OperationState::~OperationState(&v42);
  if (v26 == &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

LABEL_23:
  (*(*a4 + 1))(a4, a2, v27);
  return 1;
}

uint64_t llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location)>::callback_fn<anonymous namespace::ReducePattern<mlir::ODIE::Compiler::CoreML::ReduceSumOp,mlir::mps::ReductionSumOp>::matchAndRewrite(mlir::ODIE::Compiler::CoreML::ReduceSumOp,mlir::ODIE::Compiler::CoreML::ReduceSumOpAdaptor,mlir::ConversionPatternRewriter &)::{lambda(mlir::OpBuilder &,mlir::Location)#1}>(uint64_t **a1, mlir::OpBuilder *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *a1[1];
  v10 = 1;
  v6 = *v3;
  v5 = v3[1];
  v12 = *(v3[2] + 40);
  v13 = 0;
  v7 = mlir::ValueRange::dereference_iterator(&v12, 0);
  v8 = *(v3[2] + 40);
  v11 = v7;
  v12 = v8;
  v13 = 1;
  v12 = mlir::ValueRange::offset_base(&v12, 1);
  v13 = 0;
  v12 = mlir::ValueRange::dereference_iterator(&v12, 0);
  v11 = mlir::OpBuilder::create<mlir::mps::ReductionSumOp,mlir::TensorType &,mlir::Value,mlir::Value,BOOL &>((v6 + 8), v4, v5, &v11, &v12, &v10) - 16;
  mlir::ValueRange::ValueRange(&v12, &v11, 1uLL);
  return mlir::OpBuilder::create<mlir::scf::YieldOp,mlir::ValueRange>(a2, v4, &v12);
}

uint64_t mlir::OpBuilder::create<mlir::mps::ReductionSumOp,mlir::TensorType &,mlir::Value,mlir::Value,BOOL &>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, unsigned __int8 *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionSumOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReductionSumOp,mlir::Value &,mlir::mps::ConcatOp &,BOOL>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::mps::ReductionSumOp::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReductionSumOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

uint64_t llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location)>::callback_fn<anonymous namespace::ReducePattern<mlir::ODIE::Compiler::CoreML::ReduceSumOp,mlir::mps::ReductionSumOp>::matchAndRewrite(mlir::ODIE::Compiler::CoreML::ReduceSumOp,mlir::ODIE::Compiler::CoreML::ReduceSumOpAdaptor,mlir::ConversionPatternRewriter &)::{lambda(mlir::OpBuilder &,mlir::Location)#2}>(uint64_t **a1, mlir::OpBuilder *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *a1[1];
  v10 = 0;
  v6 = *v3;
  v5 = v3[1];
  v12 = *(v3[2] + 40);
  v13 = 0;
  v7 = mlir::ValueRange::dereference_iterator(&v12, 0);
  v8 = *(v3[2] + 40);
  v11 = v7;
  v12 = v8;
  v13 = 1;
  v12 = mlir::ValueRange::offset_base(&v12, 1);
  v13 = 0;
  v12 = mlir::ValueRange::dereference_iterator(&v12, 0);
  v11 = mlir::OpBuilder::create<mlir::mps::ReductionSumOp,mlir::TensorType &,mlir::Value,mlir::Value,BOOL &>((v6 + 8), v4, v5, &v11, &v12, &v10) - 16;
  mlir::ValueRange::ValueRange(&v12, &v11, 1uLL);
  return mlir::OpBuilder::create<mlir::scf::YieldOp,mlir::ValueRange>(a2, v4, &v12);
}

void *anonymous namespace::ReducePattern<mlir::ODIE::Compiler::CoreML::AnyOp,mlir::mps::ReductionOrOp>::~ReducePattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::ReducePattern<mlir::ODIE::Compiler::CoreML::AnyOp,mlir::mps::ReductionOrOp>::~ReducePattern(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::AnyOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::AnyOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::ReducePattern<mlir::ODIE::Compiler::CoreML::AnyOp,mlir::mps::ReductionOrOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, mlir::UnitAttr **a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v43 = *(a3 + 40);
  v7 = *(mlir::ValueRange::dereference_iterator(&v43, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(*v7 + 136);
  if (v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v7 = 0;
  }

  v38 = v7;
  if (*(a2 + 36))
  {
    v10 = a2 - 16;
  }

  else
  {
    v10 = 0;
  }

  v36 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v37 = v36;
  *&v43 = *(*(a2 + 72) + 88);
  DefiningOp = mlir::Value::getDefiningOp(&v43);
  if (DefiningOp)
  {
    v12 = *(*(DefiningOp + 48) + 16);
    v13 = v12 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id;
    v14 = v12 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id ? DefiningOp : 0;
    v40[0] = v14;
    if (v13)
    {
      Value = mlir::ODIE::Compiler::CoreML::ConstantOp::getValue(v40);
      if (mlir::DenseIntElementsAttr::classof(Value))
      {
        v30 = Value;
      }

      else
      {
        v30 = 0;
      }

      v35[0] = v30;
      mlir::DenseElementsAttr::tryGetValues<BOOL,void>(v35, &v43);
      v41 = v43;
      v42 = v44;
      LOBYTE(v35[0]) = mlir::DenseElementsAttr::BoolElementIterator::operator*(&v41);
      v43 = *(a3 + 40);
      *&v41 = mlir::ValueRange::dereference_iterator(&v43, 0);
      *&v43 = *(a3 + 40);
      *(&v43 + 1) = 1;
      v43 = mlir::ValueRange::offset_base(&v43, 1);
      *&v43 = mlir::ValueRange::dereference_iterator(&v43, 0);
      v18 = *(a2 + 24);
      v19 = a4 + 1;
      v20 = v35;
      goto LABEL_25;
    }
  }

  if (mlir::TensorType::hasRank(&v38) && mlir::TensorType::hasRank(&v36))
  {
    mlir::ArrayAttr::getValue(&v38);
    v16 = v15;
    mlir::ArrayAttr::getValue(&v36);
    LOBYTE(v40[0]) = v16 == v17;
    v43 = *(a3 + 40);
    *&v41 = mlir::ValueRange::dereference_iterator(&v43, 0);
    *&v43 = *(a3 + 40);
    *(&v43 + 1) = 1;
    v43 = mlir::ValueRange::offset_base(&v43, 1);
    *&v43 = mlir::ValueRange::dereference_iterator(&v43, 0);
    v18 = *(a2 + 24);
    v19 = a4 + 1;
    v20 = v40;
LABEL_25:
    v28 = mlir::OpBuilder::create<mlir::mps::ReductionOrOp,mlir::Value,mlir::Value,BOOL &>(v19, v18, &v41, &v43, v20);
    goto LABEL_26;
  }

  v35[0] = a4;
  v35[1] = &v37;
  v35[2] = a3;
  v34 = *(a2 + 24);
  *&v43 = *(a3 + 40);
  *(&v43 + 1) = 2;
  v43 = mlir::ValueRange::offset_base(&v43, 2);
  *&v43 = mlir::ValueRange::dereference_iterator(&v43, 0);
  v21 = mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::Value>((a4 + 1), v34, &v43);
  v33[0] = v35;
  v33[1] = &v34;
  v32[0] = v35;
  v32[1] = &v34;
  v22 = *(a2 + 24);
  v39 = v22;
  Context = mlir::Attribute::getContext(&v39);
  v24 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id, Context);
  if ((v25 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::scf::IfOp,llvm::SmallVector<mlir::Type,6u> &,mlir::detail::TypedValue<mlir::IntegerType>,BOOL>(&v43, &v41, v40);
  }

  mlir::OperationState::OperationState(&v43, v22, v24);
  v26 = mlir::OpBuilder::create((a4 + 1), &v43);
  v27 = *(*(v26 + 48) + 16);
  mlir::OperationState::~OperationState(&v43);
  if (v27 == &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

LABEL_26:
  (*(*a4 + 1))(a4, a2, v28);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ReductionOrOp,mlir::Value,mlir::Value,BOOL &>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned __int8 *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionOrOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReductionOrOp,mlir::Value,mlir::Value,BOOL &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::mps::ReductionOrOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReductionOrOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

uint64_t llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location)>::callback_fn<anonymous namespace::ReducePattern<mlir::ODIE::Compiler::CoreML::AnyOp,mlir::mps::ReductionOrOp>::matchAndRewrite(mlir::ODIE::Compiler::CoreML::AnyOp,mlir::ODIE::Compiler::CoreML::AnyOpAdaptor,mlir::ConversionPatternRewriter &)::{lambda(mlir::OpBuilder &,mlir::Location)#1}>(uint64_t **a1, mlir::OpBuilder *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *a1[1];
  v10 = 1;
  v6 = *v3;
  v5 = v3[1];
  v12 = *(v3[2] + 40);
  v13 = 0;
  v7 = mlir::ValueRange::dereference_iterator(&v12, 0);
  v8 = *(v3[2] + 40);
  v11 = v7;
  v12 = v8;
  v13 = 1;
  v12 = mlir::ValueRange::offset_base(&v12, 1);
  v13 = 0;
  v12 = mlir::ValueRange::dereference_iterator(&v12, 0);
  v11 = mlir::OpBuilder::create<mlir::mps::ReductionOrOp,mlir::TensorType &,mlir::Value,mlir::Value,BOOL &>((v6 + 8), v4, v5, &v11, &v12, &v10) - 16;
  mlir::ValueRange::ValueRange(&v12, &v11, 1uLL);
  return mlir::OpBuilder::create<mlir::scf::YieldOp,mlir::ValueRange>(a2, v4, &v12);
}

uint64_t mlir::OpBuilder::create<mlir::mps::ReductionOrOp,mlir::TensorType &,mlir::Value,mlir::Value,BOOL &>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, unsigned __int8 *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionOrOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReductionOrOp,mlir::Value,mlir::Value,BOOL &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::mps::ReductionOrOp::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReductionOrOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

uint64_t llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location)>::callback_fn<anonymous namespace::ReducePattern<mlir::ODIE::Compiler::CoreML::AnyOp,mlir::mps::ReductionOrOp>::matchAndRewrite(mlir::ODIE::Compiler::CoreML::AnyOp,mlir::ODIE::Compiler::CoreML::AnyOpAdaptor,mlir::ConversionPatternRewriter &)::{lambda(mlir::OpBuilder &,mlir::Location)#2}>(uint64_t **a1, mlir::OpBuilder *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *a1[1];
  v10 = 0;
  v6 = *v3;
  v5 = v3[1];
  v12 = *(v3[2] + 40);
  v13 = 0;
  v7 = mlir::ValueRange::dereference_iterator(&v12, 0);
  v8 = *(v3[2] + 40);
  v11 = v7;
  v12 = v8;
  v13 = 1;
  v12 = mlir::ValueRange::offset_base(&v12, 1);
  v13 = 0;
  v12 = mlir::ValueRange::dereference_iterator(&v12, 0);
  v11 = mlir::OpBuilder::create<mlir::mps::ReductionOrOp,mlir::TensorType &,mlir::Value,mlir::Value,BOOL &>((v6 + 8), v4, v5, &v11, &v12, &v10) - 16;
  mlir::ValueRange::ValueRange(&v12, &v11, 1uLL);
  return mlir::OpBuilder::create<mlir::scf::YieldOp,mlir::ValueRange>(a2, v4, &v12);
}

void *anonymous namespace::ReducePattern<mlir::ODIE::Compiler::CoreML::AllOp,mlir::mps::ReductionAndOp>::~ReducePattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::ReducePattern<mlir::ODIE::Compiler::CoreML::AllOp,mlir::mps::ReductionAndOp>::~ReducePattern(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::AllOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::AllOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::ReducePattern<mlir::ODIE::Compiler::CoreML::AllOp,mlir::mps::ReductionAndOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, mlir::UnitAttr **a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v43 = *(a3 + 40);
  v7 = *(mlir::ValueRange::dereference_iterator(&v43, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(*v7 + 136);
  if (v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v7 = 0;
  }

  v38 = v7;
  if (*(a2 + 36))
  {
    v10 = a2 - 16;
  }

  else
  {
    v10 = 0;
  }

  v36 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v37 = v36;
  *&v43 = *(*(a2 + 72) + 88);
  DefiningOp = mlir::Value::getDefiningOp(&v43);
  if (DefiningOp)
  {
    v12 = *(*(DefiningOp + 48) + 16);
    v13 = v12 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id;
    v14 = v12 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id ? DefiningOp : 0;
    v40[0] = v14;
    if (v13)
    {
      Value = mlir::ODIE::Compiler::CoreML::ConstantOp::getValue(v40);
      if (mlir::DenseIntElementsAttr::classof(Value))
      {
        v30 = Value;
      }

      else
      {
        v30 = 0;
      }

      v35[0] = v30;
      mlir::DenseElementsAttr::tryGetValues<BOOL,void>(v35, &v43);
      v41 = v43;
      v42 = v44;
      LOBYTE(v35[0]) = mlir::DenseElementsAttr::BoolElementIterator::operator*(&v41);
      v43 = *(a3 + 40);
      *&v41 = mlir::ValueRange::dereference_iterator(&v43, 0);
      *&v43 = *(a3 + 40);
      *(&v43 + 1) = 1;
      v43 = mlir::ValueRange::offset_base(&v43, 1);
      *&v43 = mlir::ValueRange::dereference_iterator(&v43, 0);
      v18 = *(a2 + 24);
      v19 = a4 + 1;
      v20 = v35;
      goto LABEL_25;
    }
  }

  if (mlir::TensorType::hasRank(&v38) && mlir::TensorType::hasRank(&v36))
  {
    mlir::ArrayAttr::getValue(&v38);
    v16 = v15;
    mlir::ArrayAttr::getValue(&v36);
    LOBYTE(v40[0]) = v16 == v17;
    v43 = *(a3 + 40);
    *&v41 = mlir::ValueRange::dereference_iterator(&v43, 0);
    *&v43 = *(a3 + 40);
    *(&v43 + 1) = 1;
    v43 = mlir::ValueRange::offset_base(&v43, 1);
    *&v43 = mlir::ValueRange::dereference_iterator(&v43, 0);
    v18 = *(a2 + 24);
    v19 = a4 + 1;
    v20 = v40;
LABEL_25:
    v28 = mlir::OpBuilder::create<mlir::mps::ReductionAndOp,mlir::Value,mlir::Value,BOOL &>(v19, v18, &v41, &v43, v20);
    goto LABEL_26;
  }

  v35[0] = a4;
  v35[1] = &v37;
  v35[2] = a3;
  v34 = *(a2 + 24);
  *&v43 = *(a3 + 40);
  *(&v43 + 1) = 2;
  v43 = mlir::ValueRange::offset_base(&v43, 2);
  *&v43 = mlir::ValueRange::dereference_iterator(&v43, 0);
  v21 = mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::Value>((a4 + 1), v34, &v43);
  v33[0] = v35;
  v33[1] = &v34;
  v32[0] = v35;
  v32[1] = &v34;
  v22 = *(a2 + 24);
  v39 = v22;
  Context = mlir::Attribute::getContext(&v39);
  v24 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id, Context);
  if ((v25 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::scf::IfOp,llvm::SmallVector<mlir::Type,6u> &,mlir::detail::TypedValue<mlir::IntegerType>,BOOL>(&v43, &v41, v40);
  }

  mlir::OperationState::OperationState(&v43, v22, v24);
  v26 = mlir::OpBuilder::create((a4 + 1), &v43);
  v27 = *(*(v26 + 48) + 16);
  mlir::OperationState::~OperationState(&v43);
  if (v27 == &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

LABEL_26:
  (*(*a4 + 1))(a4, a2, v28);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ReductionAndOp,mlir::Value,mlir::Value,BOOL &>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned __int8 *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionAndOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReductionAndOp,mlir::Value,mlir::Value,BOOL &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::mps::ReductionAndOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReductionAndOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

uint64_t llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location)>::callback_fn<anonymous namespace::ReducePattern<mlir::ODIE::Compiler::CoreML::AllOp,mlir::mps::ReductionAndOp>::matchAndRewrite(mlir::ODIE::Compiler::CoreML::AllOp,mlir::ODIE::Compiler::CoreML::AllOpAdaptor,mlir::ConversionPatternRewriter &)::{lambda(mlir::OpBuilder &,mlir::Location)#1}>(uint64_t **a1, mlir::OpBuilder *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *a1[1];
  v10 = 1;
  v6 = *v3;
  v5 = v3[1];
  v12 = *(v3[2] + 40);
  v13 = 0;
  v7 = mlir::ValueRange::dereference_iterator(&v12, 0);
  v8 = *(v3[2] + 40);
  v11 = v7;
  v12 = v8;
  v13 = 1;
  v12 = mlir::ValueRange::offset_base(&v12, 1);
  v13 = 0;
  v12 = mlir::ValueRange::dereference_iterator(&v12, 0);
  v11 = mlir::OpBuilder::create<mlir::mps::ReductionAndOp,mlir::TensorType &,mlir::Value,mlir::Value,BOOL &>((v6 + 8), v4, v5, &v11, &v12, &v10) - 16;
  mlir::ValueRange::ValueRange(&v12, &v11, 1uLL);
  return mlir::OpBuilder::create<mlir::scf::YieldOp,mlir::ValueRange>(a2, v4, &v12);
}

uint64_t mlir::OpBuilder::create<mlir::mps::ReductionAndOp,mlir::TensorType &,mlir::Value,mlir::Value,BOOL &>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, unsigned __int8 *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionAndOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReductionAndOp,mlir::Value,mlir::Value,BOOL &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::mps::ReductionAndOp::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReductionAndOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

uint64_t llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location)>::callback_fn<anonymous namespace::ReducePattern<mlir::ODIE::Compiler::CoreML::AllOp,mlir::mps::ReductionAndOp>::matchAndRewrite(mlir::ODIE::Compiler::CoreML::AllOp,mlir::ODIE::Compiler::CoreML::AllOpAdaptor,mlir::ConversionPatternRewriter &)::{lambda(mlir::OpBuilder &,mlir::Location)#2}>(uint64_t **a1, mlir::OpBuilder *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *a1[1];
  v10 = 0;
  v6 = *v3;
  v5 = v3[1];
  v12 = *(v3[2] + 40);
  v13 = 0;
  v7 = mlir::ValueRange::dereference_iterator(&v12, 0);
  v8 = *(v3[2] + 40);
  v11 = v7;
  v12 = v8;
  v13 = 1;
  v12 = mlir::ValueRange::offset_base(&v12, 1);
  v13 = 0;
  v12 = mlir::ValueRange::dereference_iterator(&v12, 0);
  v11 = mlir::OpBuilder::create<mlir::mps::ReductionAndOp,mlir::TensorType &,mlir::Value,mlir::Value,BOOL &>((v6 + 8), v4, v5, &v11, &v12, &v10) - 16;
  mlir::ValueRange::ValueRange(&v12, &v11, 1uLL);
  return mlir::OpBuilder::create<mlir::scf::YieldOp,mlir::ValueRange>(a2, v4, &v12);
}

void anonymous namespace::SliceOpPattern::~SliceOpPattern(_anonymous_namespace_::SliceOpPattern *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::SliceOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::SliceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::SliceOpPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v37.__r_.__value_.__r.__words[0] = *(a3 + 40);
  v37.__r_.__value_.__l.__size_ = 1;
  *&v37.__r_.__value_.__l.__data_ = mlir::ValueRange::offset_base(&v37, 1);
  v7 = mlir::ValueRange::dereference_iterator(&v37, 0);
  if ((BitMaskFromIndices & 0x100000000) == 0)
  {
    *(&v37.__r_.__value_.__s + 23) = 13;
    strcpy(&v37, "start indices");
    if (v35 >= 0)
    {
      v9 = &v33;
    }

    else
    {
      v9 = v33;
    }

    if (v35 >= 0)
    {
      v10 = HIBYTE(v35);
    }

    else
    {
      v10 = v34;
    }

    v11 = std::string::insert(&v37, 0, v9, v10);
    v12 = v11->__r_.__value_.__r.__words[2];
    *__p = *&v11->__r_.__value_.__l.__data_;
    v32 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    v13 = *(a2 + 24);
    v14 = __p[0];
    if (v32 >= 0)
    {
      v14 = __p;
    }

    v15 = 1;
    v39 = 1;
    if (*v14)
    {
      v37.__r_.__value_.__r.__words[0] = v14;
      v15 = 3;
    }

    v38 = v15;
    v36 = &v37;
    v16 = *(a4 + 16);
    if (v16 && mlir::RewriterBase::Listener::classof(v16))
    {
      (*(*v16 + 88))(v16, v13, llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::Location>(mlir::Location &&,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v36);
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p[0]);
    }

    v17 = 0;
    if ((SHIBYTE(v35) & 0x80000000) == 0)
    {
      return v17;
    }

LABEL_20:
    operator delete(v33);
    return v17;
  }

  v30 = BitMaskFromIndices;
  v37.__r_.__value_.__r.__words[0] = *(a3 + 40);
  v37.__r_.__value_.__l.__size_ = 2;
  *&v37.__r_.__value_.__l.__data_ = mlir::ValueRange::offset_base(&v37, 2);
  v19 = mlir::ValueRange::dereference_iterator(&v37, 0);
  if ((v20 & 0x100000000) != 0)
  {
    v28 = 0;
    v29 = v20;
    *&v37.__r_.__value_.__l.__data_ = *(a3 + 40);
    __p[0] = mlir::ValueRange::dereference_iterator(&v37, 0);
    v17 = 1;
    v37.__r_.__value_.__r.__words[0] = *(a3 + 40);
    v37.__r_.__value_.__l.__size_ = 1;
    *&v37.__r_.__value_.__l.__data_ = mlir::ValueRange::offset_base(&v37, 1);
    v21 = mlir::ValueRange::dereference_iterator(&v37, 0);
    v22 = *(a3 + 40);
    v36 = v21;
    v37.__r_.__value_.__r.__words[0] = v22;
    v37.__r_.__value_.__l.__size_ = 2;
    *&v37.__r_.__value_.__l.__data_ = mlir::ValueRange::offset_base(&v37, 2);
    v27 = mlir::ValueRange::dereference_iterator(&v37, 0);
    v37.__r_.__value_.__r.__words[0] = *(a3 + 40);
    v37.__r_.__value_.__l.__size_ = 3;
    *&v37.__r_.__value_.__l.__data_ = mlir::ValueRange::offset_base(&v37, 3);
    v37.__r_.__value_.__r.__words[0] = mlir::ValueRange::dereference_iterator(&v37, 0);
    v26 = 0;
    v23 = mlir::OpBuilder::create<mlir::mps::StridedSliceOp,mlir::Value,mlir::Value,mlir::Value,mlir::Value,unsigned int,unsigned int &,unsigned int,BOOL>((a4 + 8), *(a2 + 24), __p, &v36, &v27, &v37, &v30, &v29, &v28, &v26);
    (*(*a4 + 8))(a4, a2, v23);
    if ((SHIBYTE(v35) & 0x80000000) == 0)
    {
      return v17;
    }

    goto LABEL_20;
  }

  v24 = std::__throw_bad_optional_access[abi:nn200100]();
}

uint64_t anonymous namespace::SliceOpPattern::getBitMaskFromIndices(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  DefiningOp = mlir::Value::getDefiningOp(&v24);
  if (!DefiningOp)
  {
    LODWORD(v4) = 0;
LABEL_19:
    v14 = 0;
LABEL_23:
    v15 = 0x100000000;
    return v15 | v14 | v4;
  }

  if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
  {
    v4 = DefiningOp;
  }

  else
  {
    v4 = 0;
  }

  v23 = v4;
  if (!v4)
  {
    goto LABEL_19;
  }

  v22[0] = mlir::mps::ConstantOp::getAsAttribute(&v23);
  v22[1] = v5;
  v21[0] = mlir::CallOpInterface::getArgOperands(v22);
  v21[1] = v6;
  if (v21[0])
  {
    v7 = *mlir::CallableOpInterface::getArgAttrsAttr(v21);
    if (v7)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        mlir::ElementsAttr::getValues<int>(v22, v17);
        v11 = mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<int>>::operator[](v17, v8);
        if ((v19 & 1) == 0)
        {
          v12 = v20;
          v20 = 0;
          if (v12)
          {
            (*(*v12 + 8))(v12);
          }
        }

        if ((v17[0] & 1) == 0)
        {
          v13 = v18;
          v18 = 0;
          if (v13)
          {
            (*(*v13 + 8))(v13);
          }
        }

        v10 = 1 << v8;
        if (v11 != 0x7FFFFFFF)
        {
          v10 = 0;
        }

        v9 |= v10;
        ++v8;
      }

      while (v7 != v8);
    }

    else
    {
      v9 = 0;
    }

    v14 = v9 & 0xFFFFFF00;
    LODWORD(v4) = v9;
    goto LABEL_23;
  }

  MEMORY[0x1E12E55D0](a2, "failed: not a ShapedType for ");
  v15 = 0;
  LODWORD(v4) = 0;
  v14 = 0;
  return v15 | v14 | v4;
}

uint64_t mlir::ElementsAttr::getValues<int>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  ArgOperands = mlir::CallOpInterface::getArgOperands(a1);
  v6 = v5;
  mlir::ElementsAttr::value_begin<int>(a1, v12);
  NumElements = mlir::ElementsAttr::getNumElements(*a1, a1[1]);
  v9 = 257;
  v10 = 0;
  v11 = NumElements;
  result = mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<mlir::Attribute>>::ElementsAttrRange(a2, ArgOperands, v6, v12, &v9);
  if ((v9 & 1) == 0)
  {
    result = v10;
    v10 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  if ((v12[0] & 1) == 0)
  {
    result = v13;
    v13 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<int>>::operator[](char *a1, uint64_t a2)
{
  v12 = *a1;
  v3 = a1[1];
  v13 = v3;
  if (*a1 == 1)
  {
    v4 = *(a1 + 2) + a2;
    v14 = *(a1 + 1);
    v15 = v4;
LABEL_4:
    if (v3)
    {
      v6 = 0;
    }

    else
    {
      v6 = v4;
    }

    return *(v14 + 4 * v6);
  }

  (*(**(a1 + 1) + 16))(&v14, *(a1 + 1));
  v3 = v13;
  v4 = *(a1 + 2) + a2;
  v15 = v4;
  if (v12)
  {
    goto LABEL_4;
  }

  v8 = v14;
  v14 = 0;
  if (v13)
  {
    v9 = 0;
  }

  else
  {
    v9 = v4;
  }

  v10 = (*(*v8 + 24))(v8, v9);
  (*(*v8 + 8))(v8);
  if ((v12 & 1) == 0)
  {
    v11 = v14;
    v14 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  return v10;
}

uint64_t mlir::ElementsAttr::value_begin<int>@<X0>(mlir::BranchOpInterface *a1@<X0>, uint64_t a2@<X8>)
{
  result = mlir::ElementsAttr::try_value_begin<int>(a1, &v6);
  if (v9 != 1)
  {
    mlir::ElementsAttr::value_begin<int>(&v6, a1);
  }

  *a2 = v6;
  v5 = v8;
  *(a2 + 8) = v7;
  *(a2 + 16) = v5;
  return result;
}

uint64_t mlir::ElementsAttr::try_value_begin<int>@<X0>(mlir::BranchOpInterface *a1@<X0>, uint64_t a2@<X8>)
{
  {
    v5 = a1;
    mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>();
    a1 = v5;
  }

  result = mlir::BranchOpInterface::getSuccessorOperands(a1, mlir::detail::TypeIDResolver<int,void>::resolveTypeID(void)::id);
  if (v9 == 1)
  {
    v4 = v8;
    if (v6 != 1)
    {
      v8 = 0;
    }

    *a2 = v6;
    *(a2 + 1) = v7;
    *(a2 + 8) = v4;
    *(a2 + 16) = 0;
    *(a2 + 24) = 1;
    if ((v6 & 1) == 0)
    {
      result = v8;
      if (v8)
      {
        return (*(*v8 + 8))(v8);
      }
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  return result;
}

void anonymous namespace::SliceUpdateOpPattern::~SliceUpdateOpPattern(_anonymous_namespace_::SliceUpdateOpPattern *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::SliceUpdateOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::SliceUpdateOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::SliceUpdateOpPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v16 = *(a3 + 40);
  v17 = 0;
  v15 = mlir::ValueRange::dereference_iterator(&v16, 0);
  v16 = *(a3 + 40);
  v17 = 4;
  v16 = mlir::ValueRange::offset_base(&v16, 4);
  v17 = 0;
  v14 = mlir::ValueRange::dereference_iterator(&v16, 0);
  v16 = *(a3 + 40);
  v17 = 1;
  v16 = mlir::ValueRange::offset_base(&v16, 1);
  v17 = 0;
  v13 = mlir::ValueRange::dereference_iterator(&v16, 0);
  v16 = *(a3 + 40);
  v17 = 2;
  v16 = mlir::ValueRange::offset_base(&v16, 2);
  v17 = 0;
  v12 = mlir::ValueRange::dereference_iterator(&v16, 0);
  v16 = *(a3 + 40);
  v17 = 3;
  v16 = mlir::ValueRange::offset_base(&v16, 3);
  v17 = 0;
  v16 = mlir::ValueRange::dereference_iterator(&v16, 0);
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v7 = mlir::OpBuilder::create<mlir::mps::StridedSliceUpdateOp,mlir::Value,mlir::Value,mlir::Value,mlir::Value,mlir::Value,int,int,int,BOOL>(a4 + 1, *(a2 + 24), &v15, &v14, &v13, &v12, &v16, &v11 + 1, &v11, &v10, &v9);
  ((*a4)[1])(a4, a2, v7);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::StridedSliceUpdateOp,mlir::Value,mlir::Value,mlir::Value,mlir::Value,mlir::Value,int,int,int,BOOL>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, unsigned int *a8, unsigned int *a9, unsigned int *a10, char *a11)
{
  v28[38] = *MEMORY[0x1E69E9840];
  v25 = a2;
  Context = mlir::Attribute::getContext(&v25);
  v20 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::StridedSliceUpdateOp,void>::id, Context);
  if ((v21 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::StridedSliceUpdateOp,mlir::Value,mlir::Value,mlir::Value,mlir::Value,mlir::Value,int,int,int,BOOL>(v28, v27, v26);
  }

  mlir::OperationState::OperationState(v28, a2, v20);
  mlir::mps::StridedSliceUpdateOp::build(a1, v28, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10, *a11);
  v22 = mlir::OpBuilder::create(a1, v28);
  if (*(*(v22 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::StridedSliceUpdateOp,void>::id)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  mlir::OperationState::~OperationState(v28);
  return v23;
}

void anonymous namespace::SelectOpPattern::~SelectOpPattern(_anonymous_namespace_::SelectOpPattern *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::SelectOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::SelectOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::SelectOpPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 24);
  LODWORD(v17) = 1;
  v8 = mlir::OpBuilder::create<mlir::mps::ConstantOp,int>(a4 + 1, v7, &v17);
  v9 = *(a3 + 40);
  v16 = v8;
  v17 = v9;
  v18 = 1;
  v17 = mlir::ValueRange::offset_base(&v17, 1);
  v18 = 0;
  v15 = mlir::ValueRange::dereference_iterator(&v17, 0);
  v10 = *(a2 + 24);
  v17 = *(a3 + 40);
  v18 = 0;
  v14 = mlir::ValueRange::dereference_iterator(&v17, 0);
  v17 = *(a3 + 40);
  v18 = 2;
  v17 = mlir::ValueRange::offset_base(&v17, 2);
  v18 = 0;
  v13 = mlir::ValueRange::dereference_iterator(&v17, 0);
  v17 = mlir::OpBuilder::create<mlir::mps::SliceOp,mlir::Value,mlir::Value&,mlir::Value,mlir::mps::ConstantOp &>(a4 + 1, v10, &v14, &v15, &v13, &v16);
  v11 = mlir::OpBuilder::create<mlir::mps::SqueezeOp,mlir::mps::SliceOp &,mlir::Value &>((a4 + 1), *(a2 + 24), &v17, &v15);
  ((*a4)[1])(a4, a2, v11);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::SliceOp,mlir::Value,mlir::Value&,mlir::Value,mlir::mps::ConstantOp &>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, void *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SliceOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::SliceOp,mlir::mps::GetCoordOp &,int,int,int>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::mps::SliceOp::build(a1, v21, *a3, *a4, *a5, *a6 - 16);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SliceOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

uint64_t mlir::OpBuilder::create<mlir::mps::SqueezeOp,mlir::mps::SliceOp &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SqueezeOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::SqueezeOp,mlir::Value,mlir::Value&>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::SqueezeOp::build(a1, v17, *a3 - 16, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SqueezeOp,void>::id)
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

void anonymous namespace::Conv2dOpPattern::~Conv2dOpPattern(_anonymous_namespace_::Conv2dOpPattern *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::Conv2dOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::Conv2dOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::Conv2dOpPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v41 = a2;
  v43 = *(a3 + 40);
  v7 = mlir::ValueRange::dereference_iterator(&v43, 0);
  *&v43 = mlir::ODIE::Compiler::CoreML::getCoreMLTensorEncoding(*(v7 + 8) & 0xFFFFFFFFFFFFFFF8);
  Value = mlir::ArrayAttr::getValue(&v43);
  v43 = xmmword_1E0970050;
  if (v9 == 4 && (*Value == v43 ? (v10 = Value[1] == *(&v43 + 1)) : (v10 = 0), v10))
  {
    v40 = 0;
    v38 = 0;
    v39 = 0;
    v12 = *(a3 + 40);
    v42 = 0;
    *&v43 = v12;
    *(&v43 + 1) = 5;
    v43 = mlir::ValueRange::offset_base(&v43, 5);
    v13 = mlir::ValueRange::dereference_iterator(&v43, 0);
    {
      *&v43 = *(a3 + 40);
      *(&v43 + 1) = 2;
      v43 = mlir::ValueRange::offset_base(&v43, 2);
      v14 = mlir::ValueRange::dereference_iterator(&v43, 0);
      {
        *&v43 = *(a3 + 40);
        *(&v43 + 1) = 4;
        v43 = mlir::ValueRange::offset_base(&v43, 4);
        v15 = mlir::ValueRange::dereference_iterator(&v43, 0);
        {
          *&v43 = *(a3 + 40);
          *(&v43 + 1) = 3;
          v43 = mlir::ValueRange::offset_base(&v43, 3);
          v16 = mlir::ValueRange::dereference_iterator(&v43, 0);
          {
            mlir::DenseElementsAttr::isValidIntOrFloat(&v42, 4, 1, 1u);
            RawStringData = mlir::DenseElementsAttr::getRawStringData(&v42);
            mlir::DenseElementsAttr::isSplat(&v42);
            mlir::ArrayAttr::getValue(&v42);
            mlir::DenseElementsAttr::getNumElements(&v42);
            v37 = *RawStringData;
            if (mlir::DenseElementsAttr::getNumElements(&v40) == 2)
            {
              mlir::DenseElementsAttr::getValues<int>(&v40, &v43);
              if (BYTE8(v43))
              {
                v18 = 0;
              }

              else
              {
                v18 = v44 + 1;
              }

              v36 = *(v43 + 4 * v18);
              mlir::DenseElementsAttr::getValues<int>(&v40, &v43);
              if (BYTE8(v43))
              {
                v19 = 0;
              }

              else
              {
                v19 = v44;
              }

              v35 = *(v43 + 4 * v19);
              if (mlir::DenseElementsAttr::getNumElements(&v39) == 2)
              {
                mlir::DenseElementsAttr::getValues<int>(&v39, &v43);
                if (BYTE8(v43))
                {
                  v20 = 0;
                }

                else
                {
                  v20 = v44 + 1;
                }

                v34 = *(v43 + 4 * v20);
                mlir::DenseElementsAttr::getValues<int>(&v39, &v43);
                if (BYTE8(v43))
                {
                  v21 = 0;
                }

                else
                {
                  v21 = v44;
                }

                v22 = *(v43 + 4 * v21);
                v32 = 0;
                v33 = v22;
                v30 = 0;
                v31 = 0;
                v29 = 0;
                {
                  v28 = 0;
                  v27 = 2;
                  v23 = v41;
                  v43 = *(a3 + 40);
                  *&v43 = mlir::ValueRange::dereference_iterator(&v43, 0);
                  Weight = mlir::ODIE::Compiler::CoreML::Conv2dOpGenericAdaptor<mlir::ValueRange>::getWeight(a3);
                  mlir::RewriterBase::replaceOpWithNewOp<mlir::mps::Conv2DOp,mlir::Value,mlir::Value,unsigned long long &,unsigned long long &,unsigned long long &,unsigned long long &,unsigned long long &,unsigned long long &,unsigned long long &,unsigned long long &,unsigned long long &,mlir::mps::PaddingStyle &,mlir::mps::TensorDataLayout &,mlir::mps::TensorDataLayout &>(a4, v23, &v43, &Weight, &v37, &v36, &v35, &v34, &v33, &v32, &v31, &v30, &v29, &v28 + 1, &v28, &v27);
                  return 1;
                }

                return 0;
              }

              v25 = "failed: dilation rank not supported";
            }

            else
            {
              v25 = "failed: stride rank not supported";
            }

            return mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreML::Conv2dOp &>(a4, &v41, v25);
          }
        }
      }
    }
  }

  else
  {
    v45 = 259;
    v42 = &v43;
    *&v43 = "failed: input encoding is not supported";
    v11 = *(a4 + 16);
    if (v11)
    {
      if (mlir::RewriterBase::Listener::classof(v11))
      {
        (*(*v11 + 88))(v11, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreML::Conv2dOp &>(mlir::ODIE::Compiler::CoreML::Conv2dOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v42);
      }
    }
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreML::Conv2dOp &>(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  v3 = 1;
  v9 = 1;
  if (*a3)
  {
    v7 = a3;
    v3 = 3;
  }

  v8 = v3;
  v4 = *a2;
  v10 = &v7;
  v5 = *(a1 + 16);
  if (v5 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
    (*(*v5 + 88))(v5, *(v4 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreML::Conv2dOp &>(mlir::ODIE::Compiler::CoreML::Conv2dOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v10);
  }

  return 0;
}

uint64_t anonymous namespace::getDenseElementsAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v24 = a3;
  DefiningOp = mlir::Value::getDefiningOp(&v24);
  if (DefiningOp && ((v12 = *(*(DefiningOp + 48) + 16), v13 = v12 == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id, v12 != &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id) ? (v14 = 0) : (v14 = DefiningOp), v23 = v14, v13))
  {
    AsAttribute = mlir::mps::ConstantOp::getAsAttribute(&v23);
    if (mlir::DenseElementsAttr::classof(AsAttribute))
    {
      v18 = AsAttribute;
    }

    else
    {
      v18 = 0;
    }

    *a6 = v18;
    return 1;
  }

  else
  {
    v19[0] = "failed: ";
    v19[1] = 8;
    v19[2] = a4;
    v19[3] = a5;
    v20 = 1285;
    v21[0] = v19;
    v21[2] = " is not a constant";
    v22 = 770;
    v25 = v21;
    v15 = *(a1 + 16);
    if (v15)
    {
      if (mlir::RewriterBase::Listener::classof(v15))
      {
        (*(*v15 + 88))(v15, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::Operation *&>(mlir::Operation *&,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v25);
      }
    }

    return 0;
  }
}

uint64_t mlir::DenseElementsAttr::getValues<int>@<X0>(mlir::DenseElementsAttr *a1@<X0>, uint64_t *a2@<X8>)
{
  result = mlir::DenseElementsAttr::isValidIntOrFloat(a1, 4, 1, 1u);
  if (result)
  {
    RawStringData = mlir::DenseElementsAttr::getRawStringData(a1);
    LODWORD(v4) = mlir::DenseElementsAttr::isSplat(a1);
    Value = mlir::ArrayAttr::getValue(a1);
    v2 = v9;
    v4 = v4;
    result = mlir::DenseElementsAttr::getNumElements(a1);
  }

  else
  {
    RawStringData = 0;
  }

  *a2 = RawStringData;
  a2[1] = v4;
  a2[2] = 0;
  a2[3] = RawStringData;
  a2[4] = v4;
  a2[5] = result;
  a2[6] = Value;
  a2[7] = v2;
  return result;
}

uint64_t anonymous namespace::getPadding(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7)
{
  v20 = a3;
  mlir::DenseElementsAttr::isValidIntOrFloat(&v20, 4, 1, 1u);
  RawStringData = mlir::DenseElementsAttr::getRawStringData(&v20);
  isSplat = mlir::DenseElementsAttr::isSplat(&v20);
  mlir::ArrayAttr::getValue(&v20);
  result = mlir::DenseElementsAttr::getNumElements(&v20);
  if (result == 2)
  {
    v17 = *RawStringData;
    *a4 = v17;
    *a6 = v17;
    v18 = RawStringData[isSplat ^ 1];
    *a5 = v18;
    *a7 = v18;
    return 1;
  }

  else if (result == 1)
  {
    v16 = *RawStringData;
    *a7 = v16;
    *a6 = v16;
    *a5 = v16;
    *a4 = v16;
  }

  else
  {
    v21 = "failed: padding with size greater than 2 is not supported";
    v22 = 259;
    v23 = &v21;
    v19 = *(a1 + 16);
    if (v19)
    {
      if (mlir::RewriterBase::Listener::classof(*(a1 + 16)))
      {
        (*(*v19 + 88))(v19, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::Operation *&>(mlir::Operation *&,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v23);
      }
    }

    return 0;
  }

  return result;
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::mps::Conv2DOp,mlir::Value,mlir::Value,unsigned long long &,unsigned long long &,unsigned long long &,unsigned long long &,unsigned long long &,unsigned long long &,unsigned long long &,unsigned long long &,unsigned long long &,mlir::mps::PaddingStyle &,mlir::mps::TensorDataLayout &,mlir::mps::TensorDataLayout &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, unint64_t *a7, uint64_t *a8, uint64_t *a9, unint64_t *a10, unint64_t *a11, unint64_t *a12, unint64_t *a13, unsigned int *a14, unsigned int *a15, unsigned int *a16)
{
  v18 = mlir::OpBuilder::create<mlir::mps::Conv2DOp,mlir::Value,mlir::Value,unsigned long long &,unsigned long long &,unsigned long long &,unsigned long long &,unsigned long long &,unsigned long long &,unsigned long long &,unsigned long long &,unsigned long long &,mlir::mps::PaddingStyle &,mlir::mps::TensorDataLayout &,mlir::mps::TensorDataLayout &>(a1 + 1, *(a2 + 24), a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
  ((*a1)[1])(a1, a2, v18);
  return v18;
}

uint64_t mlir::ODIE::Compiler::CoreML::Conv2dOpGenericAdaptor<mlir::ValueRange>::getWeight(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = 1;
  v2 = mlir::ValueRange::offset_base(&v2, 1);
  v3 = 0;
  return mlir::ValueRange::dereference_iterator(&v2, 0);
}

uint64_t mlir::OpBuilder::create<mlir::mps::Conv2DOp,mlir::Value,mlir::Value,unsigned long long &,unsigned long long &,unsigned long long &,unsigned long long &,unsigned long long &,unsigned long long &,unsigned long long &,unsigned long long &,unsigned long long &,mlir::mps::PaddingStyle &,mlir::mps::TensorDataLayout &,mlir::mps::TensorDataLayout &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, unint64_t *a7, uint64_t *a8, uint64_t *a9, unint64_t *a10, unint64_t *a11, unint64_t *a12, unint64_t *a13, unsigned int *a14, unsigned int *a15, unsigned int *a16)
{
  v33[38] = *MEMORY[0x1E69E9840];
  v30 = a2;
  Context = mlir::Attribute::getContext(&v30);
  v25 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id, Context);
  if ((v26 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::Conv2DOp,mlir::Value,mlir::Value,unsigned long long,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr&,mlir::mps::PaddingStyle,mlir::mps::TensorDataLayout,mlir::mps::TensorDataLayout>(v33, v32, v31);
  }

  mlir::OperationState::OperationState(v33, a2, v25);
  mlir::mps::Conv2DOp::build(a1, v33, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10, *a11, *a12, *a13, *a14, *a15, *a16);
  v27 = mlir::OpBuilder::create(a1, v33);
  if (*(*(v27 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  mlir::OperationState::~OperationState(v33);
  return v28;
}

void anonymous namespace::BroadcastInDimsOpPattern::~BroadcastInDimsOpPattern(_anonymous_namespace_::BroadcastInDimsOpPattern *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::BroadcastInDimsOpPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 24);
  v19 = *(*(a2 + 72) + 24);
  v18 = mlir::OpBuilder::create<mlir::mps::ShapeOp,mlir::Value>((a4 + 8), v7, &v19);
  v8 = *(a2 + 24);
  LODWORD(v19) = 0;
  v17 = mlir::OpBuilder::create<mlir::mps::ConstantOp,int>((a4 + 8), v8, &v19);
  v9 = *(a2 + 24);
  v19 = *(a3 + 40);
  v20 = 1;
  v19 = mlir::ValueRange::offset_base(&v19, 1);
  v20 = 0;
  v16 = mlir::ValueRange::dereference_iterator(&v19, 0);
  v19 = *(a3 + 40);
  v20 = 2;
  v19 = mlir::ValueRange::offset_base(&v19, 2);
  v20 = 0;
  v15 = mlir::ValueRange::dereference_iterator(&v19, 0);
  v14 = 6;
  v19 = mlir::OpBuilder::create<mlir::mps::ScatterOp,mlir::mps::ShapeOp &,mlir::Value,mlir::Value,mlir::mps::ConstantOp &,mlir::mps::ScatterMode>((a4 + 8), v9, &v18, &v16, &v15, &v17, &v14);
  if (*(a2 + 36))
  {
    v10 = a2 - 16;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(*(a2 + 72) + 24);
  v16 = v11;
  v12 = mlir::OpBuilder::create<mlir::mps::BroadcastToOp,mlir::ShapedType &,mlir::Value &,mlir::mps::ConstantOp &>((a4 + 8), *(a2 + 24), &v16, &v15, &v19);
  (*(*a4 + 8))(a4, a2, v12);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ScatterOp,mlir::mps::ShapeOp &,mlir::Value,mlir::Value,mlir::mps::ConstantOp &,mlir::mps::ScatterMode>(mlir::MLIRContext **a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, void *a6, unsigned int *a7)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ScatterOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ScatterOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::mps::ScatterMode>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::mps::ScatterOp::build(a1, v23, *a3 - 16, *a4, *a5, *a6 - 16, *a7);
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ScatterOp,void>::id)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  mlir::OperationState::~OperationState(v23);
  return v18;
}

void anonymous namespace::BroadcastToOpPattern::~BroadcastToOpPattern(_anonymous_namespace_::BroadcastToOpPattern *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::BroadcastToOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::BroadcastToOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::BroadcastToOpPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 36);
  v8 = a2 - 16;
  if (!v7)
  {
    v8 = 0;
  }

  v13 = v8;
  v14 = v7;
  mlir::OperandRange::getTypes(&v13, v12);
  v11 = *(*(a2 + 72) + 24);
  v13 = *(a3 + 40);
  v14 = 1;
  v13 = mlir::ValueRange::offset_base(&v13, 1);
  v14 = 0;
  v13 = mlir::ValueRange::dereference_iterator(&v13, 0);
  v9 = mlir::OpBuilder::create<mlir::mps::BroadcastToOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::detail::TypedValue<mlir::TensorType>,mlir::Value>((a4 + 8), *(a2 + 24), v12, &v11, &v13);
  (*(*a4 + 8))(a4, a2, v9);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::BroadcastToOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::detail::TypedValue<mlir::TensorType>,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v22[5] = *MEMORY[0x1E69E9840];
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BroadcastToOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::BroadcastToOp,mlir::Value &,mlir::mps::ShapeOp>(v20, v22, v21);
  }

  mlir::OperationState::OperationState(v20, a2, v11);
  NextResultAtOffset = *a3;
  v14 = a3[1];
  v15 = a3[3];
  if (v14)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v14);
  }

  mlir::ValueRange::ValueRange(v22, NextResultAtOffset, v15 - v14);
  mlir::TypeRange::TypeRange(v21, v22[0], v22[1]);
  mlir::mps::BroadcastToOp::build(a1, v20, v21[0], v21[1], *a4, *a5);
  v16 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v16 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::BroadcastToOp,void>::id)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  return v17;
}

void anonymous namespace::FillOpPattern::~FillOpPattern(_anonymous_namespace_::FillOpPattern *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::FillOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::FillOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::FillOpPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v11 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
  v12 = v7;
  v13 = 1;
  v12 = mlir::ValueRange::offset_base(&v12, 1);
  v13 = 0;
  v10 = mlir::ValueRange::dereference_iterator(&v12, 0);
  v12 = *(a3 + 40);
  v13 = 0;
  v12 = mlir::ValueRange::dereference_iterator(&v12, 0);
  v8 = mlir::OpBuilder::create<mlir::mps::BroadcastToOp,mlir::Type,mlir::Value,mlir::Value>((a4 + 8), *(a2 + 24), &v11, &v10, &v12);
  (*(*a4 + 8))(a4, a2, v8);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::BroadcastToOp,mlir::Type,mlir::Value,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BroadcastToOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::BroadcastToOp,mlir::Value &,mlir::mps::ShapeOp>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::mps::BroadcastToOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::BroadcastToOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

void anonymous namespace::GatherNdOpPattern::~GatherNdOpPattern(_anonymous_namespace_::GatherNdOpPattern *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::GatherNdOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::GatherNdOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::GatherNdOpPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = *(a3 + 40);
  v14 = 0;
  v7 = mlir::ValueRange::dereference_iterator(&v13, 0);
  v8 = *(a3 + 40);
  v12 = v7;
  v13 = v8;
  v14 = 1;
  v13 = mlir::ValueRange::offset_base(&v13, 1);
  v14 = 0;
  v13 = mlir::ValueRange::dereference_iterator(&v13, 0);
  v11 = 0;
  v9 = mlir::OpBuilder::create<mlir::mps::GatherNDOp,mlir::Value,mlir::Value,int>(a4 + 1, *(a2 + 24), &v12, &v13, &v11);
  ((*a4)[1])(a4, a2, v9);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::GatherNDOp,mlir::Value,mlir::Value,int>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned int *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GatherNDOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::GatherNDOp,mlir::Value &,mlir::Value &,unsigned int,BOOL>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::mps::GatherNDOp::build(a1, v19, *a3, *a4, *a5, 0);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::GatherNDOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

void anonymous namespace::ScatterNdOpPattern::~ScatterNdOpPattern(_anonymous_namespace_::ScatterNdOpPattern *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ScatterNdOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ScatterNdOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::ScatterNdOpPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = *(a3 + 40);
  v16 = 0;
  v7 = mlir::ValueRange::dereference_iterator(&v15, 0);
  v8 = *(a3 + 40);
  v14 = v7;
  v15 = v8;
  v16 = 2;
  v15 = mlir::ValueRange::offset_base(&v15, 2);
  v16 = 0;
  v13 = mlir::ValueRange::dereference_iterator(&v15, 0);
  v15 = *(a3 + 40);
  v16 = 1;
  v15 = mlir::ValueRange::offset_base(&v15, 1);
  v16 = 0;
  v15 = mlir::ValueRange::dereference_iterator(&v15, 0);
  v11 = 6;
  v12 = 0;
  v9 = mlir::OpBuilder::create<mlir::mps::ScatterNDOp,mlir::Value,mlir::Value,mlir::Value,int,mlir::mps::ScatterMode>(a4 + 1, *(a2 + 24), &v14, &v13, &v15, &v12, &v11);
  ((*a4)[1])(a4, a2, v9);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ScatterNDOp,mlir::Value,mlir::Value,mlir::Value,int,mlir::mps::ScatterMode>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, unsigned int *a6, unsigned int *a7)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ScatterNDOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ScatterNDOp,mlir::Value,mlir::Value,mlir::Value,int,mlir::mps::ScatterMode>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::mps::ScatterNDOp::build(a1, v23, *a3, *a4, *a5, *a6, *a7);
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ScatterNDOp,void>::id)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  mlir::OperationState::~OperationState(v23);
  return v18;
}

void *anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::TransposeOp,mlir::mps::PermuteOp>::~TrivialPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::TransposeOp,mlir::mps::PermuteOp>::~TrivialPattern(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::TransposeOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::TransposeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::TransposeOp,mlir::mps::PermuteOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, mlir::Float32Type **a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 40);
  v6 = mlir::OpBuilder::create<mlir::mps::PermuteOp,mlir::ValueRange>(a4 + 1, *(a2 + 24), &v8);
  (*(*a4 + 1))(a4, a2, v6);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::PermuteOp,mlir::ValueRange>(mlir::Float32Type **a1, uint64_t a2, uint64_t a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PermuteOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::PermuteOp,mlir::Value,mlir::mps::ConstantOp>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::PermuteOp::build(a1, v15, *a3, *(a3 + 8), 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PermuteOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void anonymous namespace::SplitOpPattern::~SplitOpPattern(_anonymous_namespace_::SplitOpPattern *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::SplitOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::SplitOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t anonymous namespace::SplitOpPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = *MEMORY[0x1E69E9840];
  v53 = *(a3 + 40);
  v54 = 1;
  v53 = mlir::ValueRange::offset_base(&v53, 1);
  v54 = 0;
  UI32IntegerAttr = mlir::ValueRange::dereference_iterator(&v53, 0);
  DefiningOp = mlir::Value::getDefiningOp(&UI32IntegerAttr);
  if (!DefiningOp)
  {
    v49 = 0;
LABEL_9:
    v13 = "failed: split_size_or_sections is not a constant";
    goto LABEL_10;
  }

  if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
  {
    v8 = DefiningOp;
  }

  else
  {
    v8 = 0;
  }

  v49 = v8;
  if (!v8)
  {
    goto LABEL_9;
  }

  v48[0] = mlir::mps::ConstantOp::getAsAttribute(&v49);
  v48[1] = v9;
  if (mlir::ElementsAttr::getNumElements(v48[0], v9) >= 2)
  {
    v53 = *(a3 + 40);
    v54 = 0;
    UI32IntegerAttr = mlir::ValueRange::dereference_iterator(&v53, 0);
    v53 = *(a3 + 40);
    v54 = 2;
    v53 = mlir::ValueRange::offset_base(&v53, 2);
    v54 = 0;
    AsAttribute = mlir::ValueRange::dereference_iterator(&v53, 0);
    v10 = *(a3 + 40);
    v11 = 1;
    v53 = v10;
    v54 = 1;
    v53 = mlir::ValueRange::offset_base(&v53, 1);
    v54 = 0;
    v53 = mlir::ValueRange::dereference_iterator(&v53, 0);
    v47 = 0;
    v12 = mlir::OpBuilder::create<mlir::mps::SplitOp,mlir::Value,mlir::Value,mlir::Value,mlir::IntegerAttr>((a4 + 8), *(a2 + 24), &UI32IntegerAttr, &AsAttribute, &v53, &v47);
    (*(*a4 + 8))(a4, a2, v12);
    return v11;
  }

  v53 = *(a3 + 40);
  v54 = 2;
  v53 = mlir::ValueRange::offset_base(&v53, 2);
  v54 = 0;
  UI32IntegerAttr = mlir::ValueRange::dereference_iterator(&v53, 0);
  v16 = mlir::Value::getDefiningOp(&UI32IntegerAttr);
  if (v16)
  {
    if (*(*(v16 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v47 = v17;
    if (v17)
    {
      AsAttribute = mlir::mps::ConstantOp::getAsAttribute(&v47);
      v46 = v18;
      mlir::ElementsAttr::getValues<int>(&AsAttribute, &v53);
      LOWORD(UI32IntegerAttr) = v53;
      v19 = BYTE1(v53);
      if (v53 == 1)
      {
        v21 = v54;
        v20 = v55;
      }

      else
      {
        (*(*v54 + 16))(&v51);
        v19 = BYTE1(UI32IntegerAttr);
        v20 = v55;
        v52 = v55;
        if ((UI32IntegerAttr & 1) == 0)
        {
          v37 = v51;
          v51 = 0;
          if ((UI32IntegerAttr & 0x100) != 0)
          {
            v38 = 0;
          }

          else
          {
            v38 = v55;
          }

          v23 = (*(*v37 + 24))(v37, v38);
          (*(*v37 + 8))(v37);
          if ((UI32IntegerAttr & 1) == 0)
          {
            v39 = v51;
            v51 = 0;
            if (v39)
            {
              (*(*v39 + 8))(v39);
            }
          }

LABEL_30:
          if ((v56 & 1) == 0)
          {
            v24 = v57;
            v57 = 0;
            if (v24)
            {
              (*(*v24 + 8))(v24);
            }
          }

          if ((v53 & 1) == 0)
          {
            v25 = v54;
            v54 = 0;
            if (v25)
            {
              (*(*v25 + 8))(v25);
            }
          }

          v53 = *(a3 + 40);
          v54 = 0;
          v26 = (*(mlir::ValueRange::dereference_iterator(&v53, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
          if (v26)
          {
            v27 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v26 + 8);
          }

          else
          {
            v27 = 0;
          }

          AsAttribute = v26;
          v46 = v27;
          mlir::ElementsAttr::getValues<int>(v48, &v53);
          LOWORD(UI32IntegerAttr) = v53;
          v28 = BYTE1(v53);
          if (v53 == 1)
          {
            v30 = v54;
            v29 = v55;
          }

          else
          {
            (*(*v54 + 16))(&v51);
            v28 = BYTE1(UI32IntegerAttr);
            v29 = v55;
            v52 = v55;
            if ((UI32IntegerAttr & 1) == 0)
            {
              v40 = v51;
              v51 = 0;
              if ((UI32IntegerAttr & 0x100) != 0)
              {
                v41 = 0;
              }

              else
              {
                v41 = v55;
              }

              v32 = (*(*v40 + 24))(v40, v41);
              (*(*v40 + 8))(v40);
              if ((UI32IntegerAttr & 1) == 0)
              {
                v42 = v51;
                v51 = 0;
                if (v42)
                {
                  (*(*v42 + 8))(v42);
                }
              }

              goto LABEL_47;
            }

            v30 = v51;
          }

          if (v28)
          {
            v31 = 0;
          }

          else
          {
            v31 = v29;
          }

          v32 = *(v30 + 4 * v31);
LABEL_47:
          if ((v56 & 1) == 0)
          {
            v33 = v57;
            v57 = 0;
            if (v33)
            {
              (*(*v33 + 8))(v33);
            }
          }

          if ((v53 & 1) == 0)
          {
            v34 = v54;
            v54 = 0;
            if (v34)
            {
              (*(*v34 + 8))(v34);
            }
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&AsAttribute);
          UI32IntegerAttr = mlir::Builder::getUI32IntegerAttr((a4 + 8), vcvtps_u32_f32(*(ArgAttrsAttr + 8 * v23) / v32));
          v53 = *(a3 + 40);
          v54 = 0;
          v44 = mlir::ValueRange::dereference_iterator(&v53, 0);
          v53 = *(a3 + 40);
          v54 = 2;
          v53 = mlir::ValueRange::offset_base(&v53, 2);
          v54 = 0;
          v53 = mlir::ValueRange::dereference_iterator(&v53, 0);
          v43 = 0;
          v36 = mlir::OpBuilder::create<mlir::mps::SplitOp,mlir::Value,mlir::Value,mlir::Value,mlir::IntegerAttr>((a4 + 8), *(a2 + 24), &v44, &v53, &v43, &UI32IntegerAttr);
          (*(*a4 + 8))(a4, a2, v36);
          return 1;
        }

        v21 = v51;
      }

      if (v19)
      {
        v22 = 0;
      }

      else
      {
        v22 = v20;
      }

      v23 = *(v21 + 4 * v22);
      goto LABEL_30;
    }
  }

  else
  {
    v47 = 0;
  }

  v13 = "failed: dim is not a constant";
LABEL_10:
  v53 = v13;
  LOWORD(v57) = 259;
  UI32IntegerAttr = &v53;
  v14 = *(a4 + 16);
  if (v14 && mlir::RewriterBase::Listener::classof(v14))
  {
    (*(*v14 + 88))(v14, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreML::SplitOp &>(mlir::ODIE::Compiler::CoreML::SplitOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &UI32IntegerAttr);
  }

  return 0;
}