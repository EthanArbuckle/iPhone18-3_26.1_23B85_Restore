uint64_t llvm::SourceMgr::SrcBuffer::getPointerForLineNumber(llvm::SourceMgr::SrcBuffer *this, unsigned int a2)
{
  v4 = *this;
  v5 = *(*this + 16) - *(*this + 8);
  if (v5 <= 0xFF)
  {
    Offset = GetOrCreateOffsetCache<unsigned char>(this + 1, v4);
    v13 = a2 - 1;
    if (!a2)
    {
      v13 = 0;
    }

    result = *(*this + 8);
    if (a2 >= 2)
    {
      v15 = Offset;
      v14 = *Offset;
      if (v15[1] - v14 >= v13)
      {
        result += *(v14 + v13 - 1) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    if (a2)
    {
      v6 = a2 - 1;
    }

    else
    {
      v6 = 0;
    }

    v7 = (this + 8);
    if (v5 >> 16)
    {
      if (HIDWORD(v5))
      {
        v8 = GetOrCreateOffsetCache<unsigned long long>(v7, v4);
        result = *(*this + 8);
        if (a2 >= 2)
        {
          v11 = v8;
          v10 = *v8;
          if (v6 <= (v11[1] - v10) >> 3)
          {
            result += *(v10 + 8 * (v6 - 1)) + 1;
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
        v19 = GetOrCreateOffsetCache<unsigned int>(v7, v4);
        result = *(*this + 8);
        if (a2 >= 2)
        {
          v21 = v19;
          v20 = *v19;
          if (v6 <= (v21[1] - v20) >> 2)
          {
            result += *(v20 + 4 * (v6 - 1)) + 1;
          }

          else
          {
            return 0;
          }
        }
      }
    }

    else
    {
      v16 = GetOrCreateOffsetCache<unsigned short>(v7, v4);
      result = *(*this + 8);
      if (a2 >= 2)
      {
        v18 = v16;
        v17 = *v16;
        if (v6 <= (v18[1] - v17) >> 1)
        {
          result += *(v17 + 2 * (v6 - 1)) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

void *llvm::SourceMgr::SrcBuffer::SrcBuffer(void *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[2];
  result[1] = a2[1];
  result[2] = v3;
  *a2 = 0;
  a2[1] = 0;
  *result = v2;
  return result;
}

void llvm::SourceMgr::SrcBuffer::~SrcBuffer(llvm::SourceMgr::SrcBuffer *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      v2[1] = v3;
      operator delete(v3);
    }

    operator delete(v2);
    *(this + 1) = 0;
  }

  v4 = *this;
  *this = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

uint64_t llvm::SourceMgr::FindLocForLineAndColumn(llvm::SourceMgr *this, int a2, unsigned int a3, unsigned int a4)
{
  v5 = (*this + 24 * (a2 - 1));
  result = llvm::SourceMgr::SrcBuffer::getPointerForLineNumber(v5, a3);
  if (result && a4 >= 2)
  {
    v7 = a4 - 1;
    v8 = result + v7;
    if ((result + v7) <= *(*v5 + 16))
    {
      v9[0] = result;
      v9[1] = v7;
      if (llvm::StringRef::find_first_of(v9, "\n\r", 2, 0) == -1)
      {
        return v8;
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

  return result;
}

llvm::raw_ostream *llvm::SourceMgr::PrintIncludeStack(llvm::raw_ostream *result, const char *a2, llvm::raw_ostream *a3)
{
  if (a2)
  {
    v3 = a3;
    v5 = result;
    v6 = -1431655765 * ((*(result + 1) - *result) >> 3);
    if (v6)
    {
      v7 = 1;
      v8 = *result;
      while (*(*v8 + 8) > a2 || *(*v8 + 16) < a2)
      {
        ++v7;
        v8 += 24;
        if (!--v6)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      v7 = 0;
    }

    llvm::SourceMgr::PrintIncludeStack(result, *(*result + 24 * (v7 - 1) + 16), a3);
    v9 = *(v3 + 4);
    if (*(v3 + 3) - v9 > 0xDuLL)
    {
      qmemcpy(v9, "Included from ", 14);
      *(v3 + 4) += 14;
    }

    else
    {
      v3 = llvm::raw_ostream::write(v3, "Included from ", 0xEuLL);
    }

    v10 = *(*v5 + 24 * (v7 - 1));
    v12 = (*(*v10 + 16))(v10);
    v13 = v11;
    v14 = *(v3 + 4);
    if (v11 <= *(v3 + 3) - v14)
    {
      if (v11)
      {
        memcpy(v14, v12, v11);
        v14 = (*(v3 + 4) + v13);
        *(v3 + 4) = v14;
      }
    }

    else
    {
      v3 = llvm::raw_ostream::write(v3, v12, v11);
      v14 = *(v3 + 4);
    }

    if (*(v3 + 3) == v14)
    {
      v3 = llvm::raw_ostream::write(v3, ":", 1uLL);
      v15 = *v5;
      if (!v7)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *v14 = 58;
      ++*(v3 + 4);
      v15 = *v5;
      if (!v7)
      {
LABEL_20:
        v16 = -1431655765 * ((*(v5 + 1) - v15) >> 3);
        if (v16)
        {
          v7 = 1;
          v17 = v15;
          while (*(*v17 + 8) > a2 || *(*v17 + 16) < a2)
          {
            ++v7;
            v17 += 24;
            if (!--v16)
            {
              goto LABEL_26;
            }
          }
        }

        else
        {
LABEL_26:
          v7 = 0;
        }
      }
    }

    v18 = (v15 + 24 * (v7 - 1));
    LineNumber = llvm::SourceMgr::SrcBuffer::getLineNumber(v18, a2);
    v21[0] = *(*v18 + 8);
    v21[1] = &a2[-v21[0]];
    llvm::StringRef::find_last_of(v21, "\n\r", 2, 0xFFFFFFFFFFFFFFFFLL);
    result = llvm::raw_ostream::operator<<(v3, LineNumber);
    v20 = *(result + 4);
    if (*(result + 3) - v20 > 1uLL)
    {
      *v20 = 2618;
      *(result + 4) += 2;
    }

    else
    {
      return llvm::raw_ostream::write(result, ":\n", 2uLL);
    }
  }

  return result;
}

void llvm::SourceMgr::GetMessage(uint64_t *a1@<X0>, const char *a2@<X1>, int a3@<W2>, llvm::Twine *a4@<X3>, unint64_t *a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v58[4] = *MEMORY[0x1E69E9840];
  v56 = v58;
  v57 = 0x400000000;
  if (a2)
  {
    v13 = -1431655765 * ((a1[1] - *a1) >> 3);
    v50 = a4;
    if (v13)
    {
      v14 = 1;
      v15 = *a1;
      while (*(*v15 + 8) > a2 || *(*v15 + 16) < a2)
      {
        ++v14;
        v15 += 24;
        if (!--v13)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      v14 = 0;
    }

    v16 = *(*a1 + 24 * (v14 - 1));
    v17 = (*(*v16 + 16))(v16);
    v19 = v18;
    v20 = v16[1];
    v21 = a2;
    while (v21 != v20)
    {
      v23 = *--v21;
      v22 = v23;
      if (v23 == 13 || v22 == 10)
      {
        v20 = (v21 + 1);
        break;
      }
    }

    v25 = v16[2];
    v26 = a2;
    if (v25 != a2)
    {
      while (1)
      {
        v27 = *v26;
        if (v27 == 10 || v27 == 13)
        {
          break;
        }

        if (++v26 == v25)
        {
          v26 = v25;
          break;
        }
      }
    }

    if (a6)
    {
      v29 = &a5[2 * a6];
      do
      {
        v31 = *a5;
        v30 = a5[1];
        if (*a5)
        {
          v32 = v31 > v26;
        }

        else
        {
          v32 = 1;
        }

        if (!v32 && v30 >= v20)
        {
          if (v31 >= v20)
          {
            v34 = *a5;
          }

          else
          {
            v34 = v20;
          }

          if (v30 <= v26)
          {
            v35 = a5[1];
          }

          else
          {
            v35 = v26;
          }

          v36 = v57;
          if (v57 >= HIDWORD(v57))
          {
            v48 = v17;
            v49 = v19;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v57 + 1, 8);
            v17 = v48;
            v19 = v49;
            v36 = v57;
          }

          *(v56 + v36) = (v34 - v20) | ((v35 - v20) << 32);
          LODWORD(v57) = v57 + 1;
        }

        a5 += 2;
      }

      while (a5 != v29);
    }

    v37 = v26 - v20;
    v38 = *a1;
    if (!v14)
    {
      v39 = -1431655765 * ((a1[1] - v38) >> 3);
      if (v39)
      {
        v14 = 1;
        v40 = *a1;
        while (*(*v40 + 8) > a2 || *(*v40 + 16) < a2)
        {
          ++v14;
          v40 += 24;
          if (!--v39)
          {
            goto LABEL_52;
          }
        }
      }

      else
      {
LABEL_52:
        v14 = 0;
      }
    }

    v45 = (v38 + 24 * (v14 - 1));
    v43 = v19;
    v44 = v17;
    LineNumber = llvm::SourceMgr::SrcBuffer::getLineNumber(v45, a2);
    __p.__r_.__value_.__r.__words[0] = *(*v45 + 8);
    __p.__r_.__value_.__l.__size_ = &a2[-__p.__r_.__value_.__r.__words[0]];
    v42 = ~llvm::StringRef::find_last_of(&__p, "\n\r", 2, 0xFFFFFFFFFFFFFFFFLL) + a2 - LODWORD(__p.__r_.__value_.__l.__data_);
    a4 = v50;
  }

  else
  {
    v37 = 0;
    v20 = 0;
    LineNumber = 0;
    v42 = -1;
    v43 = 9;
    v44 = "<unknown>";
  }

  llvm::Twine::str(a4, &__p);
  size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  llvm::SMDiagnostic::SMDiagnostic(a9, a1, a2, v44, v43, LineNumber, v42, a3, p_p, size, v20, v37, v56, v57, a7, a8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v56 != v58)
  {
    free(v56);
  }
}

void llvm::SMDiagnostic::print(llvm::SMDiagnostic *this, const char *a2, llvm::raw_ostream *a3, int a4, int a5, int a6)
{
  v8 = a4;
  v9 = a3;
  if (a4)
  {
    v12 = 0;
  }

  else
  {
    v12 = 2;
  }

  __b.__r_.__value_.__r.__words[0] = a3;
  LODWORD(__b.__r_.__value_.__r.__words[1]) = v12;
  llvm::WithColor::changeColor(&__b);
  if (a2 && *a2)
  {
    v13 = v12;
    v14 = __b.__r_.__value_.__r.__words[0];
    v15 = strlen(a2);
    v16 = *(__b.__r_.__value_.__r.__words[0] + 32);
    if (v15 <= *(__b.__r_.__value_.__r.__words[0] + 24) - v16)
    {
      if (v15)
      {
        memcpy(v16, a2, v15);
        *(v14 + 32) += v15;
      }
    }

    else
    {
      llvm::raw_ostream::write(__b.__r_.__value_.__l.__data_, a2, v15);
    }

    v17 = __b.__r_.__value_.__r.__words[0];
    v18 = *(__b.__r_.__value_.__r.__words[0] + 32);
    if (*(__b.__r_.__value_.__r.__words[0] + 24) - v18 > 1uLL)
    {
      *v18 = 8250;
      *(v17 + 32) += 2;
    }

    else
    {
      llvm::raw_ostream::write(__b.__r_.__value_.__l.__data_, ": ", 2uLL);
    }

    v12 = v13;
  }

  if (!a6)
  {
    goto LABEL_43;
  }

  v19 = (this + 16);
  v20 = *(this + 39);
  if (v20 < 0)
  {
    v21 = *(this + 3);
    if (!v21)
    {
      goto LABEL_43;
    }

    if (v21 != 1 || **v19 != 45)
    {
LABEL_26:
      if (v20 >= 0)
      {
        v24 = this + 16;
      }

      else
      {
        v24 = *(this + 2);
      }

      if (v20 >= 0)
      {
        v25 = *(this + 39);
      }

      else
      {
        v25 = *(this + 3);
      }

      llvm::raw_ostream::write(__b.__r_.__value_.__l.__data_, v24, v25);
      if (*(this + 10) == -1)
      {
        goto LABEL_41;
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (!*(this + 39))
    {
      goto LABEL_43;
    }

    if (*(this + 39) != 1 || *v19 != 45)
    {
      goto LABEL_26;
    }
  }

  v22 = __b.__r_.__value_.__r.__words[0];
  v23 = *(__b.__r_.__value_.__r.__words[0] + 32);
  if (*(__b.__r_.__value_.__r.__words[0] + 24) - v23 > 6uLL)
  {
    *(v23 + 3) = 1047423332;
    *v23 = 1685353276;
    *(v22 + 32) += 7;
    if (*(this + 10) == -1)
    {
      goto LABEL_41;
    }
  }

  else
  {
    llvm::raw_ostream::write(__b.__r_.__value_.__l.__data_, "<stdin>", 7uLL);
    if (*(this + 10) == -1)
    {
      goto LABEL_41;
    }
  }

LABEL_33:
  v26 = *(__b.__r_.__value_.__r.__words[0] + 32);
  if (v26 < *(__b.__r_.__value_.__r.__words[0] + 24))
  {
    *(__b.__r_.__value_.__r.__words[0] + 32) = v26 + 1;
    *v26 = 58;
    llvm::raw_ostream::operator<<(__b.__r_.__value_.__l.__data_, *(this + 10));
    if (*(this + 11) == -1)
    {
      goto LABEL_41;
    }

LABEL_37:
    v27 = *(__b.__r_.__value_.__r.__words[0] + 32);
    if (v27 >= *(__b.__r_.__value_.__r.__words[0] + 24))
    {
      llvm::raw_ostream::write(__b.__r_.__value_.__l.__data_, 58);
    }

    else
    {
      *(__b.__r_.__value_.__r.__words[0] + 32) = v27 + 1;
      *v27 = 58;
    }

    llvm::raw_ostream::operator<<(__b.__r_.__value_.__l.__data_, *(this + 11) + 1);
    goto LABEL_41;
  }

  llvm::raw_ostream::write(__b.__r_.__value_.__l.__data_, 58);
  llvm::raw_ostream::operator<<(__b.__r_.__value_.__l.__data_, *(this + 10));
  if (*(this + 11) != -1)
  {
    goto LABEL_37;
  }

LABEL_41:
  v28 = __b.__r_.__value_.__r.__words[0];
  v29 = *(__b.__r_.__value_.__r.__words[0] + 32);
  if (*(__b.__r_.__value_.__r.__words[0] + 24) - v29 > 1uLL)
  {
    *v29 = 8250;
    *(v28 + 32) += 2;
    llvm::WithColor::~WithColor(&__b);
    if (!a5)
    {
      goto LABEL_55;
    }

    goto LABEL_44;
  }

  llvm::raw_ostream::write(__b.__r_.__value_.__l.__data_, ": ", 2uLL);
LABEL_43:
  llvm::WithColor::~WithColor(&__b);
  if (!a5)
  {
    goto LABEL_55;
  }

LABEL_44:
  v30 = *(this + 12);
  if (v30 > 1)
  {
    if (v30 == 2)
    {
      llvm::WithColor::remark(v9, "", 0, v8 ^ 1);
    }

    else if (v30 == 3)
    {
      llvm::WithColor::note(v9, "", 0, v8 ^ 1);
    }
  }

  else if (v30)
  {
    if (v30 == 1)
    {
      llvm::WithColor::warning(v9, "", 0, v8 ^ 1);
    }
  }

  else
  {
    llvm::WithColor::error(v9, "", 0, v8 ^ 1);
  }

LABEL_55:
  __b.__r_.__value_.__r.__words[0] = v9;
  LODWORD(__b.__r_.__value_.__r.__words[1]) = v12;
  llvm::WithColor::changeColor(&__b);
  v31 = *(this + 79);
  if (v31 >= 0)
  {
    v32 = this + 56;
  }

  else
  {
    v32 = *(this + 7);
  }

  if (v31 >= 0)
  {
    v33 = *(this + 79);
  }

  else
  {
    v33 = *(this + 8);
  }

  llvm::raw_ostream::write(__b.__r_.__value_.__l.__data_, v32, v33);
  v34 = *(__b.__r_.__value_.__r.__words[0] + 32);
  if (v34 >= *(__b.__r_.__value_.__r.__words[0] + 24))
  {
    llvm::raw_ostream::write(__b.__r_.__value_.__l.__data_, 10);
    llvm::WithColor::~WithColor(&__b);
    if (*(this + 10) == -1)
    {
      return;
    }
  }

  else
  {
    *(__b.__r_.__value_.__r.__words[0] + 32) = v34 + 1;
    *v34 = 10;
    llvm::WithColor::~WithColor(&__b);
    if (*(this + 10) == -1)
    {
      return;
    }
  }

  if (*(this + 11) == -1)
  {
    return;
  }

  v35 = (this + 80);
  v36 = *(this + 103);
  if (v36 >= 0)
  {
    v37 = this + 80;
  }

  else
  {
    v37 = *(this + 10);
  }

  if (v36 >= 0)
  {
    v38 = *(this + 103);
  }

  else
  {
    v38 = *(this + 11);
  }

  if (v38)
  {
    for (i = 0; i != v38; ++i)
    {
      if (v37[i] < 0)
      {
        printSourceLine(v9, v37, v38);
        return;
      }
    }

    v40 = v38 + 1;
    if (v38 + 1 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    if (v40 >= 0x17)
    {
      v42 = v38;
      if ((v40 | 7) == 0x17)
      {
        v43 = 25;
      }

      else
      {
        v43 = (v40 | 7) + 1;
      }

      p_b = operator new(v43);
      v44 = v43 | 0x8000000000000000;
      v38 = v42;
      __b.__r_.__value_.__l.__size_ = v40;
      __b.__r_.__value_.__r.__words[2] = v44;
      __b.__r_.__value_.__r.__words[0] = p_b;
    }

    else
    {
      *(&__b.__r_.__value_.__s + 23) = v38 + 1;
      p_b = &__b;
      if (v38 == -1)
      {
        goto LABEL_87;
      }
    }
  }

  else
  {
    v40 = 1;
    *(&__b.__r_.__value_.__s + 23) = 1;
    p_b = &__b;
  }

  memset(p_b, 32, v40);
LABEL_87:
  p_b->__r_.__value_.__s.__data_[v40] = 0;
  v45 = *(this + 13);
  for (j = *(this + 14); v45 != j; v45 += 2)
  {
    size = HIBYTE(__b.__r_.__value_.__r.__words[2]);
    v48 = *v45;
    if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __b.__r_.__value_.__l.__size_;
    }

    if (size >= v45[1])
    {
      size = v45[1];
    }

    if ((size - v48) >= 1)
    {
      if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v49 = &__b;
      }

      else
      {
        v49 = __b.__r_.__value_.__r.__words[0];
      }

      memset(v49 + v48, 126, size - v48);
    }
  }

  memset(&v167, 0, sizeof(v167));
  v50 = *(this + 34);
  v51 = *(this + 103);
  if (v51 < 0)
  {
    v51 = *(this + 11);
  }

  v52 = *(this + 11);
  if (v50)
  {
    v162 = v38;
    v163 = v12;
    v164 = this + 80;
    v165 = this;
    v166 = v9;
    v53 = 0;
    v54 = *(this + 1) - v52;
    v55 = v54 + v51;
    v56 = *(this + 16) + 24;
    v57 = 40 * v50;
    do
    {
      v58 = *(v56 - 8);
      v59 = *(v56 + 15);
      if (v59 >= 0)
      {
        v58 = (v56 - 8);
      }

      if (v59 < 0)
      {
        v59 = *v56;
      }

      v169 = v58;
      v170 = v59;
      if (llvm::StringRef::find_first_of(&v169, "\n\r\t", 3, 0) == -1)
      {
        v60 = *(v56 - 24);
        v61 = *(v56 - 16);
        if (v55 >= v60 && v61 >= v54)
        {
          if (v60 >= v54)
          {
            v63 = (v60 - v54);
          }

          else
          {
            v63 = 0;
          }

          if (v53 > v63)
          {
            v64 = (v53 + 1);
          }

          else
          {
            v64 = v63;
          }

          v65 = *(v56 + 15);
          v66 = v65;
          v67 = *v56;
          if ((v65 & 0x80u) == 0)
          {
            v68 = *(v56 + 15);
          }

          else
          {
            v68 = *v56;
          }

          v53 = (v64 + v68);
          v69 = HIBYTE(v167.__r_.__value_.__r.__words[2]);
          if ((v167.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v69 = v167.__r_.__value_.__l.__size_;
          }

          if (v69 < v53)
          {
            std::string::resize(&v167, v53, 32);
            v65 = *(v56 + 15);
            v67 = *v56;
            v66 = *(v56 + 15);
          }

          if (v66 >= 0)
          {
            v70 = v65;
          }

          else
          {
            v70 = v67;
          }

          if (v70)
          {
            v71 = &v167;
            if ((v167.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v71 = v167.__r_.__value_.__r.__words[0];
            }

            if (v66 >= 0)
            {
              v72 = (v56 - 8);
            }

            else
            {
              v72 = *(v56 - 8);
            }

            memmove(v71 + v64, v72, v70);
          }

          if (v55 <= v61)
          {
            v73 = v55;
          }

          else
          {
            v73 = v61;
          }

          v74 = (v73 - v54) - v63;
          if (v74 >= 1)
          {
            v75 = &__b;
            if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v75 = __b.__r_.__value_.__r.__words[0];
            }

            memset(v75 + v63, 126, v74);
          }
        }
      }

      v56 += 40;
      v57 -= 40;
    }

    while (v57);
    this = v165;
    v9 = v166;
    LODWORD(v52) = *(v165 + 11);
    v35 = v164;
    v12 = v163;
    v38 = v162;
  }

  if (v38 >= v52)
  {
    v78 = &__b;
    if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v78 = __b.__r_.__value_.__r.__words[0];
    }

    v77 = v78 + v52;
  }

  else
  {
    v76 = &__b;
    if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v76 = __b.__r_.__value_.__r.__words[0];
    }

    v77 = v76 + v38;
  }

  *v77 = 94;
  v79 = HIBYTE(__b.__r_.__value_.__r.__words[2]);
  v80 = &__b;
  if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v79 = __b.__r_.__value_.__l.__size_;
    v80 = __b.__r_.__value_.__r.__words[0];
  }

  v81 = &v80[-1].__r_.__value_.__r.__words[2] + 7;
  while (v79)
  {
    v82 = v81[v79--];
    if (v82 != 32)
    {
      v83 = v79 + 1;
      goto LABEL_159;
    }
  }

  v83 = 0;
LABEL_159:
  std::string::erase(&__b, v83, 0xFFFFFFFFFFFFFFFFLL);
  v84 = *(this + 103);
  if (v84 >= 0)
  {
    v85 = v35;
  }

  else
  {
    v85 = *(this + 10);
  }

  if (v84 >= 0)
  {
    v86 = *(this + 103);
  }

  else
  {
    v86 = *(this + 11);
  }

  printSourceLine(v9, v85, v86);
  v169 = v9;
  LODWORD(v170) = v12;
  llvm::WithColor::changeColor(&v169);
  v87 = HIBYTE(__b.__r_.__value_.__r.__words[2]);
  if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v87 = __b.__r_.__value_.__r.__words[1];
  }

  v88 = v87;
  if (v87)
  {
    v89 = 0;
    v90 = 0;
    do
    {
      v91 = *(this + 103);
      if ((v91 & 0x8000000000000000) != 0)
      {
        if (*(this + 11) <= v89)
        {
          goto LABEL_185;
        }
      }

      else if (v91 <= v89)
      {
        goto LABEL_185;
      }

      if ((v91 & 0x80000000) != 0)
      {
        if (*(*v35 + v89) != 9)
        {
LABEL_185:
          if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v96 = &__b;
          }

          else
          {
            v96 = __b.__r_.__value_.__r.__words[0];
          }

          v97 = v96->__r_.__value_.__s.__data_[v89];
          v98 = *(v169 + 4);
          if (v98 >= *(v169 + 3))
          {
            llvm::raw_ostream::write(v169, v97);
          }

          else
          {
            *(v169 + 4) = v98 + 1;
            *v98 = v97;
          }

          ++v90;
          goto LABEL_171;
        }
      }

      else if (*(v35 + v89) != 9)
      {
        goto LABEL_185;
      }

      if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v92 = &__b;
      }

      else
      {
        v92 = __b.__r_.__value_.__r.__words[0];
      }

      v93 = v92->__r_.__value_.__s.__data_[v89];
      v94 = *(v169 + 4);
      if (v94 >= *(v169 + 3))
      {
        llvm::raw_ostream::write(v169, v93);
        v95 = v90 + 1;
        if (((v90 + 1) & 7) == 0)
        {
          goto LABEL_237;
        }
      }

      else
      {
        *(v169 + 4) = v94 + 1;
        *v94 = v93;
        v95 = v90 + 1;
        if (((v90 + 1) & 7) == 0)
        {
          goto LABEL_237;
        }
      }

      if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v99 = &__b;
      }

      else
      {
        v99 = __b.__r_.__value_.__r.__words[0];
      }

      v100 = v99->__r_.__value_.__s.__data_[v89];
      v101 = *(v169 + 4);
      if (v101 >= *(v169 + 3))
      {
        llvm::raw_ostream::write(v169, v100);
        v95 = v90 + 2;
        if (((v90 + 2) & 7) == 0)
        {
          goto LABEL_237;
        }
      }

      else
      {
        *(v169 + 4) = v101 + 1;
        *v101 = v100;
        v95 = v90 + 2;
        if (((v90 + 2) & 7) == 0)
        {
          goto LABEL_237;
        }
      }

      if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v102 = &__b;
      }

      else
      {
        v102 = __b.__r_.__value_.__r.__words[0];
      }

      v103 = v102->__r_.__value_.__s.__data_[v89];
      v104 = *(v169 + 4);
      if (v104 >= *(v169 + 3))
      {
        llvm::raw_ostream::write(v169, v103);
        v95 = v90 + 3;
        if (((v90 + 3) & 7) == 0)
        {
          goto LABEL_237;
        }
      }

      else
      {
        *(v169 + 4) = v104 + 1;
        *v104 = v103;
        v95 = v90 + 3;
        if (((v90 + 3) & 7) == 0)
        {
          goto LABEL_237;
        }
      }

      if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v105 = &__b;
      }

      else
      {
        v105 = __b.__r_.__value_.__r.__words[0];
      }

      v106 = v105->__r_.__value_.__s.__data_[v89];
      v107 = *(v169 + 4);
      if (v107 >= *(v169 + 3))
      {
        llvm::raw_ostream::write(v169, v106);
        v95 = v90 + 4;
        if (((v90 + 4) & 7) == 0)
        {
          goto LABEL_237;
        }
      }

      else
      {
        *(v169 + 4) = v107 + 1;
        *v107 = v106;
        v95 = v90 + 4;
        if (((v90 + 4) & 7) == 0)
        {
          goto LABEL_237;
        }
      }

      if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v108 = &__b;
      }

      else
      {
        v108 = __b.__r_.__value_.__r.__words[0];
      }

      v109 = v108->__r_.__value_.__s.__data_[v89];
      v110 = *(v169 + 4);
      if (v110 >= *(v169 + 3))
      {
        llvm::raw_ostream::write(v169, v109);
        v95 = v90 + 5;
        if (((v90 + 5) & 7) == 0)
        {
          goto LABEL_237;
        }
      }

      else
      {
        *(v169 + 4) = v110 + 1;
        *v110 = v109;
        v95 = v90 + 5;
        if (((v90 + 5) & 7) == 0)
        {
          goto LABEL_237;
        }
      }

      if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v111 = &__b;
      }

      else
      {
        v111 = __b.__r_.__value_.__r.__words[0];
      }

      v112 = v111->__r_.__value_.__s.__data_[v89];
      v113 = *(v169 + 4);
      if (v113 >= *(v169 + 3))
      {
        llvm::raw_ostream::write(v169, v112);
        v95 = v90 + 6;
        if (((v90 + 6) & 7) != 0)
        {
LABEL_226:
          if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v114 = &__b;
          }

          else
          {
            v114 = __b.__r_.__value_.__r.__words[0];
          }

          v115 = v114->__r_.__value_.__s.__data_[v89];
          v116 = *(v169 + 4);
          if (v116 >= *(v169 + 3))
          {
            llvm::raw_ostream::write(v169, v115);
            v95 = v90 + 7;
            if (((v90 + 7) & 7) != 0)
            {
LABEL_231:
              if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v117 = &__b;
              }

              else
              {
                v117 = __b.__r_.__value_.__r.__words[0];
              }

              v118 = v117->__r_.__value_.__s.__data_[v89];
              v119 = *(v169 + 4);
              if (v119 >= *(v169 + 3))
              {
                llvm::raw_ostream::write(v169, v118);
              }

              else
              {
                *(v169 + 4) = v119 + 1;
                *v119 = v118;
              }

              v90 += 8;
              goto LABEL_171;
            }
          }

          else
          {
            *(v169 + 4) = v116 + 1;
            *v116 = v115;
            v95 = v90 + 7;
            if (((v90 + 7) & 7) != 0)
            {
              goto LABEL_231;
            }
          }
        }
      }

      else
      {
        *(v169 + 4) = v113 + 1;
        *v113 = v112;
        v95 = v90 + 6;
        if (((v90 + 6) & 7) != 0)
        {
          goto LABEL_226;
        }
      }

LABEL_237:
      v90 = v95;
LABEL_171:
      ++v89;
    }

    while (v88 != v89);
  }

  v120 = *(v169 + 4);
  if (v120 >= *(v169 + 3))
  {
    llvm::raw_ostream::write(v169, 10);
    llvm::WithColor::~WithColor(&v169);
    v121 = SHIBYTE(v167.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v167.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
LABEL_242:
      if (!v121)
      {
        goto LABEL_367;
      }

      goto LABEL_246;
    }
  }

  else
  {
    *(v169 + 4) = v120 + 1;
    *v120 = 10;
    llvm::WithColor::~WithColor(&v169);
    v121 = SHIBYTE(v167.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v167.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
      goto LABEL_242;
    }
  }

  v121 = v167.__r_.__value_.__l.__size_;
  if (!v167.__r_.__value_.__l.__size_)
  {
    goto LABEL_366;
  }

LABEL_246:
  v122 = 0;
  v123 = 0;
  do
  {
    v125 = *(this + 103);
    if ((v125 & 0x8000000000000000) != 0)
    {
      if (v123 >= *(this + 11))
      {
LABEL_256:
        LOBYTE(v126) = *(&v167.__r_.__value_.__s + 23);
        v127 = v167.__r_.__value_.__r.__words[0];
        goto LABEL_257;
      }
    }

    else if (v123 >= v125)
    {
      goto LABEL_256;
    }

    if ((v125 & 0x80000000) != 0)
    {
      v126 = SHIBYTE(v167.__r_.__value_.__r.__words[2]);
      v127 = v167.__r_.__value_.__r.__words[0];
      if (*(*v35 + v123) == 9)
      {
LABEL_262:
        if (v126 >= 0)
        {
          v127 = &v167;
        }

        v130 = v127->__r_.__value_.__s.__data_[v123];
        v131 = *(v9 + 4);
        if (v131 >= *(v9 + 3))
        {
          llvm::raw_ostream::write(v9, v130);
        }

        else
        {
          *(v9 + 4) = v131 + 1;
          *v131 = v130;
        }

        if ((v167.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v132 = &v167;
        }

        else
        {
          v132 = v167.__r_.__value_.__r.__words[0];
        }

        if (v132->__r_.__value_.__s.__data_[v123] != 32)
        {
          ++v123;
        }

        v124 = v122 + 1;
        if (((v122 + 1) & 7) != 0 && v123 != v121)
        {
          if ((v167.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v133 = &v167;
          }

          else
          {
            v133 = v167.__r_.__value_.__r.__words[0];
          }

          v134 = v133->__r_.__value_.__s.__data_[v123];
          v135 = *(v9 + 4);
          if (v135 >= *(v9 + 3))
          {
            llvm::raw_ostream::write(v9, v134);
          }

          else
          {
            *(v9 + 4) = v135 + 1;
            *v135 = v134;
          }

          if ((v167.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v136 = &v167;
          }

          else
          {
            v136 = v167.__r_.__value_.__r.__words[0];
          }

          if (v136->__r_.__value_.__s.__data_[v123] != 32)
          {
            ++v123;
          }

          v124 = v122 + 2;
          if (((v122 + 2) & 7) != 0 && v123 != v121)
          {
            if ((v167.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v137 = &v167;
            }

            else
            {
              v137 = v167.__r_.__value_.__r.__words[0];
            }

            v138 = v137->__r_.__value_.__s.__data_[v123];
            v139 = *(v9 + 4);
            if (v139 >= *(v9 + 3))
            {
              llvm::raw_ostream::write(v9, v138);
            }

            else
            {
              *(v9 + 4) = v139 + 1;
              *v139 = v138;
            }

            if ((v167.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v140 = &v167;
            }

            else
            {
              v140 = v167.__r_.__value_.__r.__words[0];
            }

            if (v140->__r_.__value_.__s.__data_[v123] != 32)
            {
              ++v123;
            }

            v124 = v122 + 3;
            if (((v122 + 3) & 7) != 0 && v123 != v121)
            {
              if ((v167.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v141 = &v167;
              }

              else
              {
                v141 = v167.__r_.__value_.__r.__words[0];
              }

              v142 = v141->__r_.__value_.__s.__data_[v123];
              v143 = *(v9 + 4);
              if (v143 >= *(v9 + 3))
              {
                llvm::raw_ostream::write(v9, v142);
              }

              else
              {
                *(v9 + 4) = v143 + 1;
                *v143 = v142;
              }

              if ((v167.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v144 = &v167;
              }

              else
              {
                v144 = v167.__r_.__value_.__r.__words[0];
              }

              if (v144->__r_.__value_.__s.__data_[v123] != 32)
              {
                ++v123;
              }

              v124 = v122 + 4;
              if (((v122 + 4) & 7) != 0 && v123 != v121)
              {
                if ((v167.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v145 = &v167;
                }

                else
                {
                  v145 = v167.__r_.__value_.__r.__words[0];
                }

                v146 = v145->__r_.__value_.__s.__data_[v123];
                v147 = *(v9 + 4);
                if (v147 >= *(v9 + 3))
                {
                  llvm::raw_ostream::write(v9, v146);
                }

                else
                {
                  *(v9 + 4) = v147 + 1;
                  *v147 = v146;
                }

                if ((v167.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v148 = &v167;
                }

                else
                {
                  v148 = v167.__r_.__value_.__r.__words[0];
                }

                if (v148->__r_.__value_.__s.__data_[v123] != 32)
                {
                  ++v123;
                }

                v124 = v122 + 5;
                if (((v122 + 5) & 7) != 0 && v123 != v121)
                {
                  if ((v167.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v149 = &v167;
                  }

                  else
                  {
                    v149 = v167.__r_.__value_.__r.__words[0];
                  }

                  v150 = v149->__r_.__value_.__s.__data_[v123];
                  v151 = *(v9 + 4);
                  if (v151 >= *(v9 + 3))
                  {
                    llvm::raw_ostream::write(v9, v150);
                  }

                  else
                  {
                    *(v9 + 4) = v151 + 1;
                    *v151 = v150;
                  }

                  if ((v167.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v152 = &v167;
                  }

                  else
                  {
                    v152 = v167.__r_.__value_.__r.__words[0];
                  }

                  if (v152->__r_.__value_.__s.__data_[v123] != 32)
                  {
                    ++v123;
                  }

                  v124 = v122 + 6;
                  if (((v122 + 6) & 7) != 0 && v123 != v121)
                  {
                    if ((v167.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v153 = &v167;
                    }

                    else
                    {
                      v153 = v167.__r_.__value_.__r.__words[0];
                    }

                    v154 = v153->__r_.__value_.__s.__data_[v123];
                    v155 = *(v9 + 4);
                    if (v155 >= *(v9 + 3))
                    {
                      llvm::raw_ostream::write(v9, v154);
                    }

                    else
                    {
                      *(v9 + 4) = v155 + 1;
                      *v155 = v154;
                    }

                    if ((v167.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v156 = &v167;
                    }

                    else
                    {
                      v156 = v167.__r_.__value_.__r.__words[0];
                    }

                    if (v156->__r_.__value_.__s.__data_[v123] != 32)
                    {
                      ++v123;
                    }

                    v124 = v122 + 7;
                    if (((v122 + 7) & 7) != 0 && v123 != v121)
                    {
                      if ((v167.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v157 = &v167;
                      }

                      else
                      {
                        v157 = v167.__r_.__value_.__r.__words[0];
                      }

                      v158 = v157->__r_.__value_.__s.__data_[v123];
                      v159 = *(v9 + 4);
                      if (v159 >= *(v9 + 3))
                      {
                        llvm::raw_ostream::write(v9, v158);
                      }

                      else
                      {
                        *(v9 + 4) = v159 + 1;
                        *v159 = v158;
                      }

                      if ((v167.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v160 = &v167;
                      }

                      else
                      {
                        v160 = v167.__r_.__value_.__r.__words[0];
                      }

                      if (v160->__r_.__value_.__s.__data_[v123] != 32)
                      {
                        ++v123;
                      }

                      v124 = v122 + 8;
                    }
                  }
                }
              }
            }
          }
        }

        goto LABEL_249;
      }
    }

    else
    {
      v126 = SHIBYTE(v167.__r_.__value_.__r.__words[2]);
      v127 = v167.__r_.__value_.__r.__words[0];
      if (*(v35 + v123) == 9)
      {
        goto LABEL_262;
      }
    }

LABEL_257:
    if ((v126 & 0x80u) == 0)
    {
      v127 = &v167;
    }

    v128 = v127->__r_.__value_.__s.__data_[v123];
    v129 = *(v9 + 4);
    if (v129 >= *(v9 + 3))
    {
      llvm::raw_ostream::write(v9, v128);
    }

    else
    {
      *(v9 + 4) = v129 + 1;
      *v129 = v128;
    }

    v124 = v122 + 1;
LABEL_249:
    ++v123;
    v122 = v124;
  }

  while (v123 < v121);
  v161 = *(v9 + 4);
  if (v161 >= *(v9 + 3))
  {
    llvm::raw_ostream::write(v9, 10);
    if ((SHIBYTE(v167.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_367;
    }
  }

  else
  {
    *(v9 + 4) = v161 + 1;
    *v161 = 10;
LABEL_366:
    if ((SHIBYTE(v167.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_367:
      if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_368;
      }

      return;
    }
  }

  operator delete(v167.__r_.__value_.__l.__data_);
  if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_368:
    operator delete(__b.__r_.__value_.__l.__data_);
  }
}

void llvm::SourceMgr::PrintMessage(uint64_t *a1, llvm::raw_ostream *a2, const char *a3, int a4, llvm::Twine *a5, unint64_t *a6, uint64_t a7, uint64_t a8, __int128 *a9, uint64_t a10, BOOL a11)
{
  v33[20] = *MEMORY[0x1E69E9840];
  llvm::SourceMgr::GetMessage(a1, a3, a4, a5, a6, a7, a9, a10, v21);
  v13 = a1[6];
  if (v13)
  {
    v13(v21, a1[7]);
    v14 = v31;
    v15 = v32;
    if (!v32)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (v22)
  {
    v16 = -1431655765 * ((a1[1] - *a1) >> 3);
    if (v16)
    {
      v17 = 0;
      v18 = *a1;
      while (*(*v18 + 8) > v22 || *(*v18 + 16) < v22)
      {
        ++v17;
        v18 += 24;
        if (v16 == v17)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v17 = 0xFFFFFFFFLL;
    }

    llvm::SourceMgr::PrintIncludeStack(a1, *(*a1 + 24 * v17 + 16), a2);
  }

  llvm::SMDiagnostic::print(v21, 0, a2, a11, 1, 1);
  v14 = v31;
  v15 = v32;
  if (v32)
  {
LABEL_14:
    v19 = &v14[5 * v15 - 3];
    v20 = -40 * v15;
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
    v14 = v31;
  }

LABEL_19:
  if (v14 != v33)
  {
    free(v14);
  }

  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }

  if (v28 < 0)
  {
    operator delete(v27);
    if ((v26 & 0x80000000) == 0)
    {
LABEL_25:
      if ((v24 & 0x80000000) == 0)
      {
        return;
      }

LABEL_29:
      operator delete(v23);
      return;
    }
  }

  else if ((v26 & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

  operator delete(v25);
  if (v24 < 0)
  {
    goto LABEL_29;
  }
}

uint64_t llvm::SMDiagnostic::SMDiagnostic(uint64_t a1, uint64_t a2, uint64_t a3, void *__src, size_t __len, int a6, int a7, int a8, void *__srca, size_t __lena, void *a11, size_t __sz, const void *a13, uint64_t a14, __int128 *a15, uint64_t a16)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_35:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    if ((__len | 7) == 0x17)
    {
      v23 = 25;
    }

    else
    {
      v23 = (__len | 7) + 1;
    }

    v22 = operator new(v23);
    *(a1 + 24) = __len;
    *(a1 + 32) = v23 | 0x8000000000000000;
    *(a1 + 16) = v22;
    goto LABEL_9;
  }

  v22 = (a1 + 16);
  *(a1 + 39) = __len;
  if (__len)
  {
LABEL_9:
    memmove(v22, __src, __len);
  }

  *(v22 + __len) = 0;
  *(a1 + 40) = a6;
  *(a1 + 44) = a7;
  *(a1 + 48) = a8;
  if (__lena > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_35;
  }

  if (__lena >= 0x17)
  {
    if ((__lena | 7) == 0x17)
    {
      v25 = 25;
    }

    else
    {
      v25 = (__lena | 7) + 1;
    }

    v24 = operator new(v25);
    *(a1 + 64) = __lena;
    *(a1 + 72) = v25 | 0x8000000000000000;
    *(a1 + 56) = v24;
    goto LABEL_18;
  }

  v24 = (a1 + 56);
  *(a1 + 79) = __lena;
  if (__lena)
  {
LABEL_18:
    memmove(v24, __srca, __lena);
  }

  *(v24 + __lena) = 0;
  if (__sz > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_35;
  }

  if (__sz >= 0x17)
  {
    if ((__sz | 7) == 0x17)
    {
      v27 = 25;
    }

    else
    {
      v27 = (__sz | 7) + 1;
    }

    v26 = operator new(v27);
    *(a1 + 88) = __sz;
    *(a1 + 96) = v27 | 0x8000000000000000;
    *(a1 + 80) = v26;
  }

  else
  {
    v26 = (a1 + 80);
    *(a1 + 103) = __sz;
    if (!__sz)
    {
      *v26 = 0;
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      *(a1 + 120) = 0;
      if (!a14)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    }
  }

  memmove(v26, a11, __sz);
  v26[__sz] = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  if (!a14)
  {
    goto LABEL_31;
  }

LABEL_29:
  if (a14 < 0)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v28 = operator new(8 * a14);
  *(a1 + 104) = v28;
  v29 = &v28[8 * a14];
  *(a1 + 120) = v29;
  memcpy(v28, a13, 8 * a14);
  *(a1 + 112) = v29;
LABEL_31:
  *(a1 + 128) = a1 + 144;
  *(a1 + 136) = 0x400000000;
  llvm::SmallVectorImpl<llvm::SMFixIt>::append<llvm::SMFixIt const*,void>(a1 + 128, a15, (a15 + 40 * a16));
  v30 = *(a1 + 136);
  v31 = 126 - 2 * __clz(v30);
  if (v30)
  {
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,false>(*(a1 + 128), (*(a1 + 128) + 40 * v30), &v34, v32, 1);
  return a1;
}

llvm::raw_ostream *printSourceLine(llvm::raw_ostream *result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  if (!a3)
  {
    goto LABEL_57;
  }

  v6 = 0;
  v7 = 0;
  while (1)
  {
    v8 = v6;
    if (a3 <= v6)
    {
      break;
    }

    v9 = memchr((a2 + v6), 9, a3 - v6);
    v10 = &v9[-a2];
    if (!v9 || v10 + 1 == 0)
    {
      break;
    }

    if (v10 <= v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = &v9[-a2];
    }

    if (v12 >= a3)
    {
      v12 = a3;
    }

    v13 = &v12[-v8];
    result = *(v4 + 4);
    if (&v12[-v8] <= *(v4 + 3) - result)
    {
      if (v12 != v8)
      {
        v14 = &v12[-v8];
        result = memcpy(result, (a2 + v8), v13);
        *(v4 + 4) += v14;
      }
    }

    else
    {
      result = llvm::raw_ostream::write(v4, (a2 + v8), v13);
    }

    v15 = *(v4 + 4);
    if (v15 >= *(v4 + 3))
    {
      result = llvm::raw_ostream::write(v4, 32);
      v16 = v7 - v8 + v10;
      v7 = v16 + 1;
      if (((v16 + 1) & 7) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      *(v4 + 4) = v15 + 1;
      *v15 = 32;
      v16 = v7 - v8 + v10;
      v7 = v16 + 1;
      if (((v16 + 1) & 7) == 0)
      {
        goto LABEL_5;
      }
    }

    v17 = *(v4 + 4);
    if (v17 >= *(v4 + 3))
    {
      result = llvm::raw_ostream::write(v4, 32);
      v7 = v16 + 2;
      if (((v16 + 2) & 7) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      *(v4 + 4) = v17 + 1;
      *v17 = 32;
      v7 = v16 + 2;
      if (((v16 + 2) & 7) == 0)
      {
        goto LABEL_5;
      }
    }

    v18 = *(v4 + 4);
    if (v18 >= *(v4 + 3))
    {
      result = llvm::raw_ostream::write(v4, 32);
      v7 = v16 + 3;
      if (((v16 + 3) & 7) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      *(v4 + 4) = v18 + 1;
      *v18 = 32;
      v7 = v16 + 3;
      if (((v16 + 3) & 7) == 0)
      {
        goto LABEL_5;
      }
    }

    v19 = *(v4 + 4);
    if (v19 >= *(v4 + 3))
    {
      result = llvm::raw_ostream::write(v4, 32);
      v7 = v16 + 4;
      if (((v16 + 4) & 7) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      *(v4 + 4) = v19 + 1;
      *v19 = 32;
      v7 = v16 + 4;
      if (((v16 + 4) & 7) == 0)
      {
        goto LABEL_5;
      }
    }

    v20 = *(v4 + 4);
    if (v20 >= *(v4 + 3))
    {
      result = llvm::raw_ostream::write(v4, 32);
      v7 = v16 + 5;
      if (((v16 + 5) & 7) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      *(v4 + 4) = v20 + 1;
      *v20 = 32;
      v7 = v16 + 5;
      if (((v16 + 5) & 7) == 0)
      {
        goto LABEL_5;
      }
    }

    v21 = *(v4 + 4);
    if (v21 >= *(v4 + 3))
    {
      result = llvm::raw_ostream::write(v4, 32);
      v7 = v16 + 6;
      if (((v16 + 6) & 7) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      *(v4 + 4) = v21 + 1;
      *v21 = 32;
      v7 = v16 + 6;
      if (((v16 + 6) & 7) == 0)
      {
        goto LABEL_5;
      }
    }

    v22 = *(v4 + 4);
    if (v22 >= *(v4 + 3))
    {
      result = llvm::raw_ostream::write(v4, 32);
      v7 = v16 + 7;
      if (((v16 + 7) & 7) != 0)
      {
LABEL_48:
        v23 = *(v4 + 4);
        if (v23 >= *(v4 + 3))
        {
          result = llvm::raw_ostream::write(v4, 32);
        }

        else
        {
          *(v4 + 4) = v23 + 1;
          *v23 = 32;
        }

        v7 = v16 + 8;
      }
    }

    else
    {
      *(v4 + 4) = v22 + 1;
      *v22 = 32;
      v7 = v16 + 7;
      if (((v16 + 7) & 7) != 0)
      {
        goto LABEL_48;
      }
    }

LABEL_5:
    v6 = v10 + 1;
    if (v10 + 1 == a3)
    {
      goto LABEL_57;
    }
  }

  if (a3 >= v8)
  {
    v24 = v8;
  }

  else
  {
    v24 = a3;
  }

  v25 = a3 - v24;
  result = *(v4 + 4);
  if (a3 - v24 <= *(v4 + 3) - result)
  {
    if (a3 > v8)
    {
      v26 = (a2 + v24);
      v27 = a3 - v24;
      result = memcpy(result, v26, v25);
      *(v4 + 4) += v27;
    }
  }

  else
  {
    result = llvm::raw_ostream::write(v4, (a2 + v24), v25);
  }

LABEL_57:
  v28 = *(v4 + 4);
  if (v28 >= *(v4 + 3))
  {

    return llvm::raw_ostream::write(v4, 10);
  }

  else
  {
    *(v4 + 4) = v28 + 1;
    *v28 = 10;
  }

  return result;
}

void *GetOrCreateOffsetCache<unsigned char>(void **a1, uint64_t a2)
{
  v2 = *a1;
  if (!*a1)
  {
    v2 = operator new(0x18uLL);
    v2[1] = 0;
    v2[2] = 0;
    *v2 = 0;
    v5 = *(a2 + 8);
    v6 = *(a2 + 16) - v5;
    if (v6)
    {
      v7 = 0;
      v8 = 0;
      if (v6 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = *(a2 + 16) - v5;
      }

      do
      {
        if (*(v5 + v8) == 10)
        {
          v10 = v2[2];
          if (v7 < v10)
          {
            *v7++ = v8;
          }

          else
          {
            v11 = *v2;
            v12 = &v7[-*v2];
            v13 = v12 + 1;
            if ((v12 + 1) < 0)
            {
              std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
            }

            v14 = v10 - v11;
            if (2 * v14 > v13)
            {
              v13 = 2 * v14;
            }

            if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
            {
              v15 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v15 = v13;
            }

            if (v15)
            {
              v16 = operator new(v15);
            }

            else
            {
              v16 = 0;
            }

            v16[v12] = v8;
            v7 = &v16[v12 + 1];
            memcpy(v16, v11, v12);
            *v2 = v16;
            v2[2] = &v16[v15];
            if (v11)
            {
              operator delete(v11);
            }
          }

          v2[1] = v7;
        }

        ++v8;
      }

      while (v9 != v8);
    }

    *a1 = v2;
  }

  return v2;
}

void *GetOrCreateOffsetCache<unsigned short>(void **a1, uint64_t a2)
{
  v2 = *a1;
  if (!*a1)
  {
    v2 = operator new(0x18uLL);
    v2[1] = 0;
    v2[2] = 0;
    *v2 = 0;
    v5 = *(a2 + 8);
    v6 = *(a2 + 16) - v5;
    if (v6)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      if (v6 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v6;
      }

      do
      {
        if (*(v5 + v10) == 10)
        {
          if (v9 < v8)
          {
            *v9 = v10;
            v9 += 2;
          }

          else
          {
            v12 = v9 - v7;
            v13 = (v9 - v7) >> 1;
            if (v13 <= -2)
            {
              std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
            }

            if (v8 - v7 <= (v13 + 1))
            {
              v14 = v13 + 1;
            }

            else
            {
              v14 = v8 - v7;
            }

            if ((v8 - v7) >= 0x7FFFFFFFFFFFFFFELL)
            {
              v15 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v15 = v14;
            }

            if (v15)
            {
              if (v15 < 0)
              {
                std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
              }

              v16 = operator new(2 * v15);
            }

            else
            {
              v16 = 0;
            }

            v17 = &v16[2 * v13];
            v8 = &v16[2 * v15];
            *v17 = v10;
            v9 = v17 + 2;
            memcpy(v16, v7, v12);
            *v2 = v16;
            v2[1] = v9;
            v2[2] = v8;
            if (v7)
            {
              operator delete(v7);
            }

            v7 = v16;
          }

          v2[1] = v9;
        }

        ++v10;
      }

      while (v11 != v10);
    }

    *a1 = v2;
  }

  return v2;
}

void *GetOrCreateOffsetCache<unsigned int>(void **a1, uint64_t a2)
{
  v2 = *a1;
  if (!*a1)
  {
    v2 = operator new(0x18uLL);
    v2[1] = 0;
    v2[2] = 0;
    *v2 = 0;
    v5 = *(a2 + 8);
    v6 = *(a2 + 16) - v5;
    if (v6)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      if (v6 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v6;
      }

      do
      {
        if (*(v5 + v10) == 10)
        {
          if (v9 < v8)
          {
            *v9 = v10;
            v9 += 4;
          }

          else
          {
            v12 = v9 - v7;
            v13 = (v9 - v7) >> 2;
            v14 = v13 + 1;
            if ((v13 + 1) >> 62)
            {
              std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
            }

            if ((v8 - v7) >> 1 > v14)
            {
              v14 = (v8 - v7) >> 1;
            }

            if ((v8 - v7) >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v15 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v15 = v14;
            }

            if (v15)
            {
              if (v15 >> 62)
              {
                std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
              }

              v16 = operator new(4 * v15);
            }

            else
            {
              v16 = 0;
            }

            v17 = &v16[4 * v13];
            v8 = &v16[4 * v15];
            *v17 = v10;
            v9 = v17 + 4;
            memcpy(v16, v7, v12);
            *v2 = v16;
            v2[1] = v9;
            v2[2] = v8;
            if (v7)
            {
              operator delete(v7);
            }

            v7 = v16;
          }

          v2[1] = v9;
        }

        ++v10;
      }

      while (v11 != v10);
    }

    *a1 = v2;
  }

  return v2;
}

void *GetOrCreateOffsetCache<unsigned long long>(void **a1, uint64_t a2)
{
  v2 = *a1;
  if (!*a1)
  {
    v2 = operator new(0x18uLL);
    v2[1] = 0;
    v2[2] = 0;
    *v2 = 0;
    v5 = *(a2 + 8);
    v6 = *(a2 + 16) - v5;
    if (v6)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      if (v6 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v6;
      }

      do
      {
        if (*(v5 + v10) == 10)
        {
          if (v9 < v8)
          {
            *v9 = v10;
            v9 += 8;
          }

          else
          {
            v12 = v9 - v7;
            v13 = (v9 - v7) >> 3;
            v14 = v13 + 1;
            if ((v13 + 1) >> 61)
            {
              std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
            }

            if ((v8 - v7) >> 2 > v14)
            {
              v14 = (v8 - v7) >> 2;
            }

            if ((v8 - v7) >= 0x7FFFFFFFFFFFFFF8)
            {
              v15 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v15 = v14;
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

            v17 = &v16[8 * v13];
            v8 = &v16[8 * v15];
            *v17 = v10;
            v9 = v17 + 8;
            memcpy(v16, v7, v12);
            *v2 = v16;
            v2[1] = v9;
            v2[2] = v8;
            if (v7)
            {
              operator delete(v7);
            }

            v7 = v16;
          }

          v2[1] = v9;
        }

        ++v10;
      }

      while (v11 != v10);
    }

    *a1 = v2;
  }

  return v2;
}

void llvm::SmallVectorImpl<llvm::SMFixIt>::append<llvm::SMFixIt const*,void>(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((a3 - a2) >> 3);
  v7 = *(a1 + 8);
  if (v6 + v7 <= *(a1 + 12))
  {
    v10 = *a1;
    if (a2 == a3)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v25 = 0;
    v8 = (a1 + 16);
    llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), v6 + v7, 40, &v25);
    v10 = v9;
    v11 = *a1;
    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = &v11[40 * v12];
      v14 = v10;
      do
      {
        *v14 = *v11;
        v15 = *(v11 + 1);
        *(v14 + 4) = *(v11 + 4);
        v14[1] = v15;
        *(v11 + 3) = 0;
        *(v11 + 4) = 0;
        *(v11 + 2) = 0;
        v14 = (v14 + 40);
        v11 += 40;
      }

      while (v11 != v13);
      v11 = *a1;
      v16 = *(a1 + 8);
      if (v16)
      {
        v17 = &v11[40 * v16 - 24];
        v18 = -40 * v16;
        do
        {
          if (*(v17 + 23) < 0)
          {
            operator delete(*v17);
          }

          v17 -= 40;
          v18 += 40;
        }

        while (v18);
        v11 = *a1;
      }
    }

    v19 = v25;
    if (v11 != v8)
    {
      free(v11);
    }

    *a1 = v10;
    *(a1 + 12) = v19;
    LODWORD(v7) = *(a1 + 8);
    if (a2 == a3)
    {
      goto LABEL_21;
    }
  }

  v20 = &v10[40 * v7 + 16];
  v21 = a2 + 1;
  do
  {
    while (1)
    {
      *&v20[-1].__r_.__value_.__r.__words[1] = *(v21 - 1);
      if ((*(v21 + 23) & 0x80000000) == 0)
      {
        break;
      }

      std::string::__init_copy_ctor_external(v20, *v21, *(v21 + 1));
      v22 = v21 - 1;
      v20 = (v20 + 40);
      v21 = (v21 + 40);
      if ((v22 + 40) == a3)
      {
        goto LABEL_20;
      }
    }

    v23 = *v21;
    v20->__r_.__value_.__r.__words[2] = *(v21 + 2);
    *&v20->__r_.__value_.__l.__data_ = v23;
    v20 = (v20 + 40);
    v24 = v21 - 1;
    v21 = (v21 + 40);
  }

  while ((v24 + 40) != a3);
LABEL_20:
  LODWORD(v7) = *(a1 + 8);
LABEL_21:
  *(a1 + 8) = v7 + v6;
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,false>(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v9) >> 3);
    if (v13 <= 2)
    {
      break;
    }

    switch(v13)
    {
      case 3uLL:

        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(v9, (v9 + 40), (a2 - 40));
        return;
      case 4uLL:

        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(v9, (v9 + 40), (v9 + 80), (a2 - 40));
        return;
      case 5uLL:

        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(v9, v9 + 40, v9 + 80, v9 + 120, a2 - 40);
        return;
    }

LABEL_10:
    if (v12 <= 959)
    {
      if (a5)
      {

        std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *>(v9, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *>(v9, a2);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,llvm::SMFixIt *>(v9, a2, a2, a3);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = v9 + 40 * (v13 >> 1);
    if (v12 < 0x1401)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(v15, v9, (a2 - 40));
      if (a5)
      {
        goto LABEL_19;
      }
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(v9, v15, (a2 - 40));
      v16 = v9 + 40;
      v17 = 40 * v14;
      v18 = (40 * v14 + a1 - 40);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>((a1 + 40), v18, a2 - 5);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>((a1 + 80), (v16 + v17), (a2 - 120));
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(v18, v15, (v16 + v17));
      v56 = *a1;
      *(&v58 + 7) = *(a1 + 31);
      v19 = *(a1 + 16);
      *&v58 = *(a1 + 24);
      v20 = *(a1 + 39);
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 16) = 0;
      v21 = *(v15 + 32);
      v22 = *(v15 + 16);
      *a1 = *v15;
      *(a1 + 16) = v22;
      *(a1 + 32) = v21;
      *v15 = v56;
      *(v15 + 16) = v19;
      *(v15 + 31) = *(&v58 + 7);
      *(v15 + 24) = v58;
      *(v15 + 39) = v20;
      if (a5)
      {
        goto LABEL_19;
      }
    }

    v23 = *(a1 - 40);
    v24 = v23 >= *a1;
    if (v23 == *a1 && (v25 = *(a1 - 32), v26 = *(a1 + 8), v24 = v25 >= v26, v25 == v26))
    {
      v30 = *(a1 + 39);
      v31 = *(a1 - 1);
      if (v31 >= 0)
      {
        v32 = (a1 - 24);
      }

      else
      {
        v32 = *(a1 - 24);
      }

      if (v31 >= 0)
      {
        v33 = *(a1 - 1);
      }

      else
      {
        v33 = *(a1 - 16);
      }

      if (v30 >= 0)
      {
        v34 = *(a1 + 39);
      }

      else
      {
        v34 = *(a1 + 24);
      }

      if (v30 >= 0)
      {
        v35 = (a1 + 16);
      }

      else
      {
        v35 = *(a1 + 16);
      }

      if (v34 >= v33)
      {
        v36 = v33;
      }

      else
      {
        v36 = v34;
      }

      v37 = memcmp(v32, v35, v36);
      v38 = v33 < v34;
      if (v37)
      {
        v38 = v37 < 0;
      }

      if (!v38)
      {
LABEL_41:
        v9 = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,llvm::SMFixIt *,std::__less<void,void> &>(a1, a2);
LABEL_43:
        a5 = 0;
        a4 = -v11;
        goto LABEL_2;
      }
    }

    else if (v24)
    {
      goto LABEL_41;
    }

LABEL_19:
    v27 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,llvm::SMFixIt *,std::__less<void,void> &>(a1, a2);
    if ((v28 & 1) == 0)
    {
      goto LABEL_42;
    }

    v29 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *>(a1, v27);
    v9 = v27 + 40;
    if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *>(v27 + 40, a2))
    {
      a4 = -v11;
      a2 = v27;
      if (v29)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v29)
    {
LABEL_42:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,false>(a1, v27, a3, -v11, a5 & 1);
      v9 = v27 + 40;
      goto LABEL_43;
    }
  }

  if (v13 < 2)
  {
    return;
  }

  if (v13 != 2)
  {
    goto LABEL_10;
  }

  v40 = (a2 - 40);
  v39 = *(a2 - 5);
  v41 = v39 >= *v9;
  if (v39 != *v9 || (v42 = *(a2 - 4), v43 = *(v9 + 8), v41 = v42 >= v43, v42 != v43))
  {
    if (v41)
    {
      return;
    }

    goto LABEL_55;
  }

  v47 = *(v9 + 39);
  v48 = *(a2 - 1);
  if (v48 >= 0)
  {
    v49 = *(a2 - 1);
  }

  else
  {
    v49 = *(a2 - 2);
  }

  if (v48 >= 0)
  {
    v50 = a2 - 24;
  }

  else
  {
    v50 = *(a2 - 3);
  }

  if (v47 >= 0)
  {
    v51 = *(v9 + 39);
  }

  else
  {
    v51 = *(v9 + 24);
  }

  if (v47 >= 0)
  {
    v52 = (v9 + 16);
  }

  else
  {
    v52 = *(v9 + 16);
  }

  if (v51 >= v49)
  {
    v53 = v49;
  }

  else
  {
    v53 = v51;
  }

  v54 = memcmp(v50, v52, v53);
  v55 = v49 < v51;
  if (v54)
  {
    v55 = v54 < 0;
  }

  if (v55)
  {
LABEL_55:
    v57 = *v9;
    v44 = *(v9 + 16);
    *&v59 = *(v9 + 24);
    *(&v59 + 7) = *(v9 + 31);
    v45 = *(v9 + 39);
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    *(v9 + 16) = 0;
    *v9 = *v40;
    v46 = *(a2 - 24);
    *(v9 + 32) = *(a2 - 1);
    *(v9 + 16) = v46;
    *v40 = v57;
    *(a2 - 3) = v44;
    *(a2 - 2) = v59;
    *(a2 - 9) = *(&v59 + 7);
    *(a2 - 1) = v45;
  }
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(__int128 *a1, uint64_t *a2, __int128 *a3)
{
  v3 = *a2;
  if (*a2 == *a1)
  {
    v8 = a2[1];
    v9 = *(a1 + 1);
    if (v8 == v9)
    {
      v36 = a1 + 1;
      v37 = *(a1 + 39);
      v38 = a2 + 2;
      v39 = *(a2 + 39);
      if (v39 >= 0)
      {
        v40 = *(a2 + 39);
      }

      else
      {
        v40 = a2[3];
      }

      if (v39 < 0)
      {
        v38 = a2[2];
      }

      if (v37 >= 0)
      {
        v41 = *(a1 + 39);
      }

      else
      {
        v41 = *(a1 + 3);
      }

      if (v37 < 0)
      {
        v36 = *(a1 + 2);
      }

      if (v41 >= v40)
      {
        v42 = v40;
      }

      else
      {
        v42 = v41;
      }

      v43 = a1;
      v44 = a2;
      v45 = a3;
      v46 = memcmp(v38, v36, v42);
      a3 = v45;
      a2 = v44;
      v47 = v46;
      a1 = v43;
      v48 = v47 == 0;
      v49 = v47 < 0;
      if (v48)
      {
        v49 = v40 < v41;
      }

      if (!v49)
      {
        goto LABEL_8;
      }
    }

    else if (v8 >= v9)
    {
      goto LABEL_8;
    }

LABEL_3:
    if (*a3 == v3)
    {
      v24 = *(a3 + 1);
      v25 = a2[1];
      if (v24 == v25)
      {
        v63 = a2 + 2;
        v64 = *(a2 + 39);
        v65 = a3 + 1;
        v66 = *(a3 + 39);
        if (v66 >= 0)
        {
          v67 = *(a3 + 39);
        }

        else
        {
          v67 = *(a3 + 3);
        }

        if (v66 < 0)
        {
          v65 = *(a3 + 2);
        }

        if (v64 >= 0)
        {
          v68 = *(a2 + 39);
        }

        else
        {
          v68 = a2[3];
        }

        if (v64 < 0)
        {
          v63 = a2[2];
        }

        if (v68 >= v67)
        {
          v69 = v67;
        }

        else
        {
          v69 = v68;
        }

        v70 = a1;
        v71 = a2;
        v72 = a3;
        v73 = memcmp(v65, v63, v69);
        a3 = v72;
        a2 = v71;
        v74 = v73;
        a1 = v70;
        v48 = v74 == 0;
        v75 = v74 < 0;
        if (v48)
        {
          v75 = v67 < v68;
        }

        if (v75)
        {
          goto LABEL_5;
        }
      }

      else if (v24 < v25)
      {
        goto LABEL_5;
      }
    }

    else if (*a3 < v3)
    {
LABEL_5:
      v98 = *a1;
      v4 = *(a1 + 2);
      *&v103 = *(a1 + 3);
      *(&v103 + 7) = *(a1 + 31);
      v5 = *(a1 + 39);
      *(a1 + 3) = 0;
      *(a1 + 4) = 0;
      *(a1 + 2) = 0;
      *a1 = *a3;
      v6 = *(a3 + 4);
      a1[1] = a3[1];
      *(a1 + 4) = v6;
      *a3 = v98;
      *(a3 + 2) = v4;
      *(a3 + 3) = v103;
      *(a3 + 31) = *(&v103 + 7);
      result = 1;
      *(a3 + 39) = v5;
      return result;
    }

    v101 = *a1;
    v26 = *(a1 + 2);
    *&v106 = *(a1 + 3);
    *(&v106 + 7) = *(a1 + 31);
    v27 = *(a1 + 39);
    v28 = v27;
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
    *(a1 + 4) = 0;
    *a1 = *a2;
    v29 = a2 + 2;
    v30 = a2[4];
    a1[1] = *(a2 + 1);
    *(a1 + 4) = v30;
    *a2 = v101;
    a2[2] = v26;
    a2[3] = v106;
    v31 = (a2 + 3);
    *(a2 + 31) = *(&v106 + 7);
    *(a2 + 39) = v27;
    v32 = *a3 >= *a2;
    if (*a3 == *a2 && (v33 = *(a3 + 1), v34 = a2[1], v32 = v33 >= v34, v33 == v34))
    {
      v88 = *(a3 + 39);
      if (v88 >= 0)
      {
        v89 = *(a3 + 39);
      }

      else
      {
        v89 = *(a3 + 3);
      }

      if (v88 >= 0)
      {
        v90 = a3 + 1;
      }

      else
      {
        v90 = *(a3 + 2);
      }

      if ((v27 & 0x80u) == 0)
      {
        v91 = v27;
      }

      else
      {
        v91 = *v31;
      }

      if ((v27 & 0x80u) == 0)
      {
        v92 = a2 + 2;
      }

      else
      {
        v92 = v26;
      }

      if (v91 >= v89)
      {
        v93 = v89;
      }

      else
      {
        v93 = v91;
      }

      v94 = a2;
      v95 = a3;
      v96 = memcmp(v90, v92, v93);
      a3 = v95;
      a2 = v94;
      v97 = v89 < v91;
      if (v96)
      {
        v97 = v96 < 0;
      }

      if (v97)
      {
        goto LABEL_20;
      }
    }

    else if (!v32)
    {
LABEL_20:
      v102 = *a2;
      *&v107 = *v31;
      *(&v107 + 7) = *(v31 + 7);
      v29[1] = 0;
      v29[2] = 0;
      *v29 = 0;
      *a2 = *a3;
      v35 = *(a3 + 4);
      *v29 = a3[1];
      v29[2] = v35;
      *a3 = v102;
      *(a3 + 2) = v26;
      *(a3 + 3) = v107;
      *(a3 + 31) = *(&v107 + 7);
      result = 1;
      *(a3 + 39) = v28;
      return result;
    }

    return 1;
  }

  if (*a2 < *a1)
  {
    goto LABEL_3;
  }

LABEL_8:
  v10 = *a3 >= v3;
  if (*a3 != v3 || (v11 = *(a3 + 1), v12 = a2[1], v10 = v11 >= v12, v11 != v12))
  {
    if (!v10)
    {
      goto LABEL_11;
    }

    return 0;
  }

  v50 = a2 + 2;
  v51 = *(a2 + 39);
  v52 = a3 + 1;
  v53 = *(a3 + 39);
  if (v53 >= 0)
  {
    v54 = *(a3 + 39);
  }

  else
  {
    v54 = *(a3 + 3);
  }

  if (v53 < 0)
  {
    v52 = *(a3 + 2);
  }

  if (v51 >= 0)
  {
    v55 = *(a2 + 39);
  }

  else
  {
    v55 = a2[3];
  }

  if (v51 < 0)
  {
    v50 = a2[2];
  }

  if (v55 >= v54)
  {
    v56 = v54;
  }

  else
  {
    v56 = v55;
  }

  v57 = a1;
  v58 = a2;
  v59 = a3;
  v60 = memcmp(v52, v50, v56);
  a3 = v59;
  a2 = v58;
  v61 = v60;
  a1 = v57;
  v48 = v61 == 0;
  v62 = v61 < 0;
  if (v48)
  {
    v62 = v54 < v55;
  }

  if (!v62)
  {
    return 0;
  }

LABEL_11:
  v99 = *a2;
  v14 = a2 + 2;
  v13 = a2[2];
  v15 = a2 + 3;
  *&v104 = a2[3];
  *(&v104 + 7) = *(a2 + 31);
  v16 = *(a2 + 39);
  a2[2] = 0;
  a2[4] = 0;
  a2[3] = 0;
  *a2 = *a3;
  v17 = *(a3 + 4);
  *(a2 + 1) = a3[1];
  a2[4] = v17;
  *a3 = v99;
  *(a3 + 2) = v13;
  *(a3 + 3) = v104;
  *(a3 + 31) = *(&v104 + 7);
  *(a3 + 39) = v16;
  v18 = *a2 >= *a1;
  if (*a2 == *a1 && (v19 = a2[1], v20 = *(a1 + 1), v18 = v19 >= v20, v19 == v20))
  {
    v76 = a1 + 1;
    v77 = *(a1 + 39);
    v78 = *(a2 + 39);
    if (v78 >= 0)
    {
      v79 = *(a2 + 39);
    }

    else
    {
      v79 = a2[3];
    }

    if (v78 >= 0)
    {
      v80 = a2 + 2;
    }

    else
    {
      v80 = a2[2];
    }

    if (v77 >= 0)
    {
      v81 = *(a1 + 39);
    }

    else
    {
      v81 = *(a1 + 3);
    }

    if (v77 < 0)
    {
      v76 = *(a1 + 2);
    }

    if (v81 >= v79)
    {
      v82 = v79;
    }

    else
    {
      v82 = v81;
    }

    v83 = a1;
    v84 = a2;
    v85 = memcmp(v80, v76, v82);
    a2 = v84;
    v86 = v85;
    a1 = v83;
    v48 = v86 == 0;
    v87 = v86 < 0;
    if (v48)
    {
      v87 = v79 < v81;
    }

    if (v87)
    {
      goto LABEL_14;
    }
  }

  else if (!v18)
  {
LABEL_14:
    v100 = *a1;
    v21 = *(a1 + 2);
    *&v105 = *(a1 + 3);
    *(&v105 + 7) = *(a1 + 31);
    v22 = *(a1 + 39);
    *(a1 + 3) = 0;
    *(a1 + 4) = 0;
    *(a1 + 2) = 0;
    *a1 = *a2;
    v23 = v14[2];
    a1[1] = *v14;
    *(a1 + 4) = v23;
    *a2 = v100;
    a2[2] = v21;
    *v15 = v105;
    *(v15 + 7) = *(&v105 + 7);
    result = 1;
    *(a2 + 39) = v22;
    return result;
  }

  return 1;
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(a1, a2, a3);
  v9 = *a4 >= *a3;
  if (*a4 == *a3 && (v10 = *(a4 + 1), v11 = *(a3 + 1), v9 = v10 >= v11, v10 == v11))
  {
    v27 = *(a3 + 39);
    v28 = *(a4 + 39);
    if (v28 >= 0)
    {
      v29 = *(a4 + 39);
    }

    else
    {
      v29 = *(a4 + 3);
    }

    if (v28 >= 0)
    {
      v30 = a4 + 1;
    }

    else
    {
      v30 = *(a4 + 2);
    }

    if (v27 >= 0)
    {
      v31 = *(a3 + 39);
    }

    else
    {
      v31 = *(a3 + 3);
    }

    if (v27 >= 0)
    {
      v32 = a3 + 1;
    }

    else
    {
      v32 = *(a3 + 2);
    }

    if (v31 >= v29)
    {
      v33 = v29;
    }

    else
    {
      v33 = v31;
    }

    result = memcmp(v30, v32, v33);
    v34 = v29 < v31;
    if (result)
    {
      v34 = result < 0;
    }

    if (!v34)
    {
      return result;
    }
  }

  else if (v9)
  {
    return result;
  }

  v51 = *a3;
  v12 = *(a3 + 2);
  *&v54 = *(a3 + 3);
  *(&v54 + 7) = *(a3 + 31);
  v13 = *(a3 + 39);
  *(a3 + 2) = 0;
  *(a3 + 4) = 0;
  *(a3 + 3) = 0;
  *a3 = *a4;
  v14 = *(a4 + 4);
  a3[1] = a4[1];
  *(a3 + 4) = v14;
  *a4 = v51;
  *(a4 + 2) = v12;
  *(a4 + 3) = v54;
  *(a4 + 31) = *(&v54 + 7);
  *(a4 + 39) = v13;
  v15 = *a3 >= *a2;
  if (*a3 == *a2 && (v16 = *(a3 + 1), v17 = *(a2 + 1), v15 = v16 >= v17, v16 == v17))
  {
    v35 = *(a2 + 39);
    v36 = *(a3 + 39);
    if (v36 >= 0)
    {
      v37 = *(a3 + 39);
    }

    else
    {
      v37 = *(a3 + 3);
    }

    if (v36 >= 0)
    {
      v38 = a3 + 1;
    }

    else
    {
      v38 = *(a3 + 2);
    }

    if (v35 >= 0)
    {
      v39 = *(a2 + 39);
    }

    else
    {
      v39 = *(a2 + 3);
    }

    if (v35 >= 0)
    {
      v40 = a2 + 1;
    }

    else
    {
      v40 = *(a2 + 2);
    }

    if (v39 >= v37)
    {
      v41 = v37;
    }

    else
    {
      v41 = v39;
    }

    result = memcmp(v38, v40, v41);
    v42 = v37 < v39;
    if (result)
    {
      v42 = result < 0;
    }

    if (!v42)
    {
      return result;
    }
  }

  else if (v15)
  {
    return result;
  }

  v52 = *a2;
  v18 = *(a2 + 2);
  *&v55 = *(a2 + 3);
  *(&v55 + 7) = *(a2 + 31);
  v19 = *(a2 + 39);
  *(a2 + 2) = 0;
  *(a2 + 4) = 0;
  *(a2 + 3) = 0;
  *a2 = *a3;
  v20 = *(a3 + 4);
  a2[1] = a3[1];
  *(a2 + 4) = v20;
  *a3 = v52;
  *(a3 + 2) = v18;
  *(a3 + 3) = v55;
  *(a3 + 31) = *(&v55 + 7);
  *(a3 + 39) = v19;
  v21 = *a2 >= *a1;
  if (*a2 != *a1 || (v22 = *(a2 + 1), v23 = *(a1 + 8), v21 = v22 >= v23, v22 != v23))
  {
    if (v21)
    {
      return result;
    }

    goto LABEL_10;
  }

  v43 = *(a1 + 39);
  v44 = *(a2 + 39);
  if (v44 >= 0)
  {
    v45 = *(a2 + 39);
  }

  else
  {
    v45 = *(a2 + 3);
  }

  if (v44 >= 0)
  {
    v46 = a2 + 1;
  }

  else
  {
    v46 = *(a2 + 2);
  }

  if (v43 >= 0)
  {
    v47 = *(a1 + 39);
  }

  else
  {
    v47 = *(a1 + 24);
  }

  if (v43 >= 0)
  {
    v48 = (a1 + 16);
  }

  else
  {
    v48 = *(a1 + 16);
  }

  if (v47 >= v45)
  {
    v49 = v45;
  }

  else
  {
    v49 = v47;
  }

  result = memcmp(v46, v48, v49);
  v50 = v45 < v47;
  if (result)
  {
    v50 = result < 0;
  }

  if (v50)
  {
LABEL_10:
    v53 = *a1;
    v24 = *(a1 + 16);
    *&v56 = *(a1 + 24);
    *(&v56 + 7) = *(a1 + 31);
    v25 = *(a1 + 39);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    v26 = *(a2 + 4);
    *(a1 + 16) = a2[1];
    *(a1 + 32) = v26;
    *a2 = v53;
    *(a2 + 2) = v24;
    *(a2 + 3) = v56;
    *(a2 + 31) = *(&v56 + 7);
    *(a2 + 39) = v25;
  }

  return result;
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(a1, a2, a3, a4);
  v11 = *a5 >= *a4;
  if (*a5 == *a4 && (v12 = *(a5 + 8), v13 = *(a4 + 8), v11 = v12 >= v13, v12 == v13))
  {
    v35 = *(a4 + 39);
    v36 = *(a5 + 39);
    if (v36 >= 0)
    {
      v37 = *(a5 + 39);
    }

    else
    {
      v37 = *(a5 + 24);
    }

    if (v36 >= 0)
    {
      v38 = (a5 + 16);
    }

    else
    {
      v38 = *(a5 + 16);
    }

    if (v35 >= 0)
    {
      v39 = *(a4 + 39);
    }

    else
    {
      v39 = *(a4 + 24);
    }

    if (v35 >= 0)
    {
      v40 = (a4 + 16);
    }

    else
    {
      v40 = *(a4 + 16);
    }

    if (v39 >= v37)
    {
      v41 = v37;
    }

    else
    {
      v41 = v39;
    }

    result = memcmp(v38, v40, v41);
    v42 = v37 < v39;
    if (result)
    {
      v42 = result < 0;
    }

    if (!v42)
    {
      return result;
    }
  }

  else if (v11)
  {
    return result;
  }

  v67 = *a4;
  v14 = *(a4 + 16);
  *&v71 = *(a4 + 24);
  *(&v71 + 7) = *(a4 + 31);
  v15 = *(a4 + 39);
  *(a4 + 16) = 0;
  *(a4 + 32) = 0;
  *(a4 + 24) = 0;
  *a4 = *a5;
  v16 = *(a5 + 32);
  *(a4 + 16) = *(a5 + 16);
  *(a4 + 32) = v16;
  *a5 = v67;
  *(a5 + 16) = v14;
  *(a5 + 24) = v71;
  *(a5 + 31) = *(&v71 + 7);
  *(a5 + 39) = v15;
  v17 = *a4 >= *a3;
  if (*a4 == *a3 && (v18 = *(a4 + 8), v19 = *(a3 + 8), v17 = v18 >= v19, v18 == v19))
  {
    v43 = *(a3 + 39);
    v44 = *(a4 + 39);
    if (v44 >= 0)
    {
      v45 = *(a4 + 39);
    }

    else
    {
      v45 = *(a4 + 24);
    }

    if (v44 >= 0)
    {
      v46 = (a4 + 16);
    }

    else
    {
      v46 = *(a4 + 16);
    }

    if (v43 >= 0)
    {
      v47 = *(a3 + 39);
    }

    else
    {
      v47 = *(a3 + 24);
    }

    if (v43 >= 0)
    {
      v48 = (a3 + 16);
    }

    else
    {
      v48 = *(a3 + 16);
    }

    if (v47 >= v45)
    {
      v49 = v45;
    }

    else
    {
      v49 = v47;
    }

    result = memcmp(v46, v48, v49);
    v50 = v45 < v47;
    if (result)
    {
      v50 = result < 0;
    }

    if (!v50)
    {
      return result;
    }
  }

  else if (v17)
  {
    return result;
  }

  v68 = *a3;
  v20 = *(a3 + 16);
  *&v72 = *(a3 + 24);
  *(&v72 + 7) = *(a3 + 31);
  v21 = *(a3 + 39);
  *(a3 + 16) = 0;
  *(a3 + 32) = 0;
  *(a3 + 24) = 0;
  *a3 = *a4;
  v22 = *(a4 + 32);
  *(a3 + 16) = *(a4 + 16);
  *(a3 + 32) = v22;
  *a4 = v68;
  *(a4 + 16) = v20;
  *(a4 + 24) = v72;
  *(a4 + 31) = *(&v72 + 7);
  *(a4 + 39) = v21;
  v23 = *a3 >= *a2;
  if (*a3 == *a2 && (v24 = *(a3 + 8), v25 = *(a2 + 8), v23 = v24 >= v25, v24 == v25))
  {
    v51 = *(a2 + 39);
    v52 = *(a3 + 39);
    if (v52 >= 0)
    {
      v53 = *(a3 + 39);
    }

    else
    {
      v53 = *(a3 + 24);
    }

    if (v52 >= 0)
    {
      v54 = (a3 + 16);
    }

    else
    {
      v54 = *(a3 + 16);
    }

    if (v51 >= 0)
    {
      v55 = *(a2 + 39);
    }

    else
    {
      v55 = *(a2 + 24);
    }

    if (v51 >= 0)
    {
      v56 = (a2 + 16);
    }

    else
    {
      v56 = *(a2 + 16);
    }

    if (v55 >= v53)
    {
      v57 = v53;
    }

    else
    {
      v57 = v55;
    }

    result = memcmp(v54, v56, v57);
    v58 = v53 < v55;
    if (result)
    {
      v58 = result < 0;
    }

    if (!v58)
    {
      return result;
    }
  }

  else if (v23)
  {
    return result;
  }

  v69 = *a2;
  v26 = *(a2 + 16);
  *&v73 = *(a2 + 24);
  *(&v73 + 7) = *(a2 + 31);
  v27 = *(a2 + 39);
  *(a2 + 16) = 0;
  *(a2 + 32) = 0;
  *(a2 + 24) = 0;
  *a2 = *a3;
  v28 = *(a3 + 32);
  *(a2 + 16) = *(a3 + 16);
  *(a2 + 32) = v28;
  *a3 = v69;
  *(a3 + 16) = v26;
  *(a3 + 24) = v73;
  *(a3 + 31) = *(&v73 + 7);
  *(a3 + 39) = v27;
  v29 = *a2 >= *a1;
  if (*a2 != *a1 || (v30 = *(a2 + 8), v31 = *(a1 + 8), v29 = v30 >= v31, v30 != v31))
  {
    if (v29)
    {
      return result;
    }

    goto LABEL_13;
  }

  v59 = *(a1 + 39);
  v60 = *(a2 + 39);
  if (v60 >= 0)
  {
    v61 = *(a2 + 39);
  }

  else
  {
    v61 = *(a2 + 24);
  }

  if (v60 >= 0)
  {
    v62 = (a2 + 16);
  }

  else
  {
    v62 = *(a2 + 16);
  }

  if (v59 >= 0)
  {
    v63 = *(a1 + 39);
  }

  else
  {
    v63 = *(a1 + 24);
  }

  if (v59 >= 0)
  {
    v64 = (a1 + 16);
  }

  else
  {
    v64 = *(a1 + 16);
  }

  if (v63 >= v61)
  {
    v65 = v61;
  }

  else
  {
    v65 = v63;
  }

  result = memcmp(v62, v64, v65);
  v66 = v61 < v63;
  if (result)
  {
    v66 = result < 0;
  }

  if (v66)
  {
LABEL_13:
    v70 = *a1;
    v32 = *(a1 + 16);
    *&v74 = *(a1 + 24);
    *(&v74 + 7) = *(a1 + 31);
    v33 = *(a1 + 39);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    v34 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v34;
    *a2 = v70;
    *(a2 + 16) = v32;
    *(a2 + 24) = v74;
    *(a2 + 31) = *(&v74 + 7);
    *(a2 + 39) = v33;
  }

  return result;
}

void std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v62 = v2;
    v63 = v3;
    v4 = a2;
    v6 = a1 + 40;
    if (a1 + 40 != a2)
    {
      v7 = 0;
      v8 = v60;
      v9 = a1;
      do
      {
        v10 = v9;
        v9 = v6;
        v12 = *(v10 + 40);
        v13 = v12 >= *v10;
        if (v12 == *v10 && (v14 = *(v10 + 48), v15 = *(v10 + 8), v13 = v14 >= v15, v14 == v15))
        {
          v41 = *(v10 + 39);
          v42 = *(v10 + 79);
          if (v42 >= 0)
          {
            v43 = (v10 + 56);
          }

          else
          {
            v43 = *(v10 + 56);
          }

          if (v42 >= 0)
          {
            v44 = *(v10 + 79);
          }

          else
          {
            v44 = *(v10 + 64);
          }

          if (v41 >= 0)
          {
            v45 = *(v10 + 39);
          }

          else
          {
            v45 = *(v10 + 24);
          }

          if (v41 >= 0)
          {
            v46 = (v10 + 16);
          }

          else
          {
            v46 = *(v10 + 16);
          }

          if (v45 >= v44)
          {
            v47 = v44;
          }

          else
          {
            v47 = v45;
          }

          v48 = memcmp(v43, v46, v47);
          v13 = v44 >= v45;
          v4 = a2;
          v49 = !v13;
          if (v48)
          {
            v49 = v48 < 0;
          }

          if (!v49)
          {
            goto LABEL_6;
          }
        }

        else if (v13)
        {
          goto LABEL_6;
        }

        v59 = *v9;
        v8[2] = *(v10 + 72);
        *v8 = *(v10 + 56);
        *(v10 + 56) = 0;
        *(v10 + 64) = 0;
        *(v10 + 72) = 0;
        v16 = *(&v59 + 1);
        if ((v61 & 0x80u) == 0)
        {
          v17 = v61;
        }

        else
        {
          v17 = v60[1];
        }

        if ((v61 & 0x80u) == 0)
        {
          v18 = v8;
        }

        else
        {
          v18 = v60[0];
        }

        v57 = v18;
        v58 = v17;
        v19 = *(v9 + 39);
        *v9 = *v10;
        if (v19 < 0)
        {
          operator delete(*(v9 + 16));
        }

        v20 = v10 + 16;
        *(v9 + 16) = *(v10 + 16);
        *(v9 + 32) = *(v10 + 32);
        *(v10 + 39) = 0;
        *(v10 + 16) = 0;
        if (v10 == a1)
        {
          v10 = a1;
        }

        else
        {
          v21 = *(v10 - 40);
          v22 = v59 >= v21;
          if (v59 == v21 && (v23 = *(v10 - 32), v22 = *(&v59 + 1) >= v23, *(&v59 + 1) == v23))
          {
            v50 = *(v10 - 1);
            if (v50 >= 0)
            {
              v51 = *(v10 - 1);
            }

            else
            {
              v51 = *(v10 - 16);
            }

            if (v50 >= 0)
            {
              v52 = (v10 - 24);
            }

            else
            {
              v52 = *(v10 - 24);
            }

            if (v51 >= v58)
            {
              v53 = v58;
            }

            else
            {
              v53 = v51;
            }

            v54 = memcmp(v57, v52, v53);
            v13 = v58 >= v51;
            v4 = a2;
            v55 = !v13;
            if (v54)
            {
              v55 = v54 < 0;
            }

            if (v55)
            {
LABEL_22:
              for (i = v7; ; i -= 40)
              {
                v25 = a1 + i;
                v26 = *(a1 + i - 24);
                *v25 = *(a1 + i - 40);
                *(v25 + 16) = v26;
                *(v25 + 32) = *(a1 + i - 8);
                *(v25 - 1) = 0;
                *(v25 - 24) = 0;
                if (i == 40)
                {
                  break;
                }

                v27 = *(v25 - 80);
                v28 = v59 >= v27;
                if (v59 == v27 && (v29 = a1 + i, v30 = *(a1 + i - 72), v28 = v16 >= v30, v16 == v30))
                {
                  v33 = *(v29 - 64);
                  v31 = v29 - 64;
                  v32 = v33;
                  v34 = *(v31 + 23);
                  v35 = v8;
                  if (v34 >= 0)
                  {
                    v36 = *(v31 + 23);
                  }

                  else
                  {
                    v36 = *(v31 + 8);
                  }

                  if (v34 >= 0)
                  {
                    v37 = v31;
                  }

                  else
                  {
                    v37 = v32;
                  }

                  if (v36 >= v58)
                  {
                    v38 = v58;
                  }

                  else
                  {
                    v38 = v36;
                  }

                  v39 = memcmp(v57, v37, v38);
                  v13 = v58 >= v36;
                  v8 = v35;
                  v16 = *(&v59 + 1);
                  v40 = !v13;
                  if (v39)
                  {
                    v40 = v39 < 0;
                  }

                  if (!v40)
                  {
LABEL_43:
                    v10 = a1 + i - 40;
                    goto LABEL_67;
                  }
                }

                else if (v28)
                {
                  goto LABEL_43;
                }
              }

              v10 = a1;
LABEL_67:
              v20 = v25 - 24;
              v4 = a2;
            }
          }

          else if (!v22)
          {
            goto LABEL_22;
          }
        }

        *v10 = v59;
        v11 = *v8;
        *(v20 + 16) = v8[2];
        *v20 = v11;
LABEL_6:
        v6 = v9 + 40;
        v7 += 40;
      }

      while (v9 + 40 != v4);
    }
  }
}

void std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *>(__int128 *a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v51 = v2;
    v52 = v3;
    v4 = a2;
    v5 = a1;
    v6 = (a1 + 40);
    if ((a1 + 40) != a2)
    {
      v7 = a1 + 1;
      do
      {
        v9 = v5;
        v5 = v6;
        v11 = *(v9 + 5);
        v12 = v11 >= *v9;
        if (v11 == *v9 && (v13 = *(v9 + 6), v14 = *(v9 + 1), v12 = v13 >= v14, v13 == v14))
        {
          v32 = *(v9 + 39);
          v33 = *(v9 + 79);
          if (v33 >= 0)
          {
            v34 = v9 + 56;
          }

          else
          {
            v34 = *(v9 + 7);
          }

          if (v33 >= 0)
          {
            v35 = *(v9 + 79);
          }

          else
          {
            v35 = *(v9 + 8);
          }

          if (v32 >= 0)
          {
            v36 = *(v9 + 39);
          }

          else
          {
            v36 = *(v9 + 3);
          }

          if (v32 >= 0)
          {
            v37 = v9 + 1;
          }

          else
          {
            v37 = *(v9 + 2);
          }

          if (v36 >= v35)
          {
            v38 = v35;
          }

          else
          {
            v38 = v36;
          }

          v39 = memcmp(v34, v37, v38);
          v40 = v35 < v36;
          if (v39)
          {
            v40 = v39 < 0;
          }

          if (!v40)
          {
            goto LABEL_6;
          }
        }

        else if (v12)
        {
          goto LABEL_6;
        }

        v48 = *v5;
        v50 = *(v9 + 9);
        v49 = *(v9 + 56);
        *(v9 + 7) = 0;
        *(v9 + 8) = 0;
        *(v9 + 9) = 0;
        if (v50 >= 0)
        {
          v15 = HIBYTE(v50);
        }

        else
        {
          v15 = *(&v49 + 1);
        }

        if (v50 >= 0)
        {
          v16 = &v49;
        }

        else
        {
          v16 = v49;
        }

        v17 = *(v5 + 39);
        *v5 = *v9;
        if (v17 < 0)
        {
          operator delete(*(v5 + 2));
        }

        v8 = v9 + 1;
        v5[1] = v9[1];
        *(v5 + 4) = *(v9 + 4);
        *(v9 + 39) = 0;
        *(v9 + 16) = 0;
        v18 = *(v9 - 5);
        v19 = v48 >= v18;
        if (v48 == v18 && (v20 = *(v9 - 4), v19 = *(&v48 + 1) >= v20, *(&v48 + 1) == v20))
        {
          v41 = *(v9 - 1);
          if (v41 >= 0)
          {
            v42 = *(v9 - 1);
          }

          else
          {
            v42 = *(v9 - 2);
          }

          if (v41 >= 0)
          {
            v43 = v9 - 24;
          }

          else
          {
            v43 = *(v9 - 3);
          }

          if (v42 >= v15)
          {
            v44 = v15;
          }

          else
          {
            v44 = v42;
          }

          v45 = memcmp(v16, v43, v44);
          v46 = v15 < v42;
          if (v45)
          {
            v46 = v45 < 0;
          }

          if (v46)
          {
LABEL_21:
            for (i = v7; ; i = (i - 40))
            {
              v22 = *(i - 40);
              *(i - 1) = *(i - 56);
              *i = v22;
              *(i + 2) = *(i - 3);
              *(i - 17) = 0;
              *(i - 40) = 0;
              v23 = *(i - 12);
              v24 = v48 >= v23;
              if (v48 == v23 && (v25 = *(i - 11), v24 = *(&v48 + 1) >= v25, *(&v48 + 1) == v25))
              {
                v26 = *(i - 57);
                if (v26 >= 0)
                {
                  v27 = *(i - 57);
                }

                else
                {
                  v27 = *(i - 9);
                }

                if (v26 >= 0)
                {
                  v28 = i - 5;
                }

                else
                {
                  v28 = *(i - 10);
                }

                if (v27 >= v15)
                {
                  v29 = v15;
                }

                else
                {
                  v29 = v27;
                }

                v30 = memcmp(v16, v28, v29);
                v31 = v15 < v27;
                if (v30)
                {
                  v31 = v30 < 0;
                }

                if (!v31)
                {
LABEL_4:
                  v8 = (i - 40);
                  v9 = (i - 56);
                  break;
                }
              }

              else if (v24)
              {
                goto LABEL_4;
              }
            }
          }
        }

        else if (!v19)
        {
          goto LABEL_21;
        }

        *v9 = v48;
        v10 = v49;
        *(v8 + 2) = v50;
        *v8 = v10;
        v4 = a2;
LABEL_6:
        v6 = (v5 + 40);
        v7 = (v7 + 40);
      }

      while ((v5 + 40) != v4);
    }
  }
}

unint64_t std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,llvm::SMFixIt *,std::__less<void,void> &>(__int128 *a1, unint64_t a2)
{
  v2 = a2;
  v81[2] = *MEMORY[0x1E69E9840];
  v77 = *a1;
  v78 = a1[1];
  v79 = *(a1 + 4);
  *(a1 + 3) = 0;
  *(a1 + 4) = 0;
  *(a1 + 2) = 0;
  v4 = *(a2 - 40);
  if (v77 == v4)
  {
    v5 = *(&v77 + 1);
    v6 = *(a2 - 32);
    if (*(&v77 + 1) == v6)
    {
      v18 = *(a2 - 1);
      if (v79 >= 0)
      {
        v19 = HIBYTE(v79);
      }

      else
      {
        v19 = *(&v78 + 1);
      }

      if (v79 >= 0)
      {
        v20 = &v78;
      }

      else
      {
        v20 = v78;
      }

      if (v18 >= 0)
      {
        v21 = *(a2 - 1);
      }

      else
      {
        v21 = *(a2 - 16);
      }

      if (v18 >= 0)
      {
        v22 = (a2 - 24);
      }

      else
      {
        v22 = *(a2 - 24);
      }

      if (v21 >= v19)
      {
        v23 = v19;
      }

      else
      {
        v23 = v21;
      }

      v24 = memcmp(v20, v22, v23);
      v25 = v19 < v21;
      if (v24)
      {
        v25 = v24 < 0;
      }

      if (v25)
      {
        goto LABEL_6;
      }
    }

    else if (*(&v77 + 1) < v6)
    {
      goto LABEL_6;
    }
  }

  else if (v77 < v4)
  {
    v5 = *(&v77 + 1);
LABEL_6:
    if (v79 >= 0)
    {
      v7 = HIBYTE(v79);
    }

    else
    {
      v7 = *(&v78 + 1);
    }

    if (v79 >= 0)
    {
      v8 = &v78;
    }

    else
    {
      v8 = v78;
    }

    for (i = a1 + 40; ; i += 40)
    {
      v10 = v77 >= *i;
      if (v77 == *i && (v11 = *(i + 8), v10 = v5 >= v11, v5 == v11))
      {
        v12 = *(i + 39);
        if (v12 >= 0)
        {
          v13 = *(i + 39);
        }

        else
        {
          v13 = *(i + 24);
        }

        if (v12 >= 0)
        {
          v14 = (i + 16);
        }

        else
        {
          v14 = *(i + 16);
        }

        if (v13 >= v7)
        {
          v15 = v7;
        }

        else
        {
          v15 = v13;
        }

        v16 = memcmp(v8, v14, v15);
        v17 = v7 < v13;
        if (v16)
        {
          v17 = v16 < 0;
        }

        if (v17)
        {
          goto LABEL_73;
        }
      }

      else if (!v10)
      {
        goto LABEL_73;
      }
    }
  }

  i = a1 + 40;
  if (a1 + 40 < v2)
  {
    if (v79 >= 0)
    {
      v26 = HIBYTE(v79);
    }

    else
    {
      v26 = *(&v78 + 1);
    }

    if (v79 >= 0)
    {
      v27 = &v78;
    }

    else
    {
      v27 = v78;
    }

    do
    {
      v28 = v77 >= *i;
      if (v77 == *i && (v29 = *(i + 8), v28 = *(&v77 + 1) >= v29, *(&v77 + 1) == v29))
      {
        v30 = *(i + 39);
        if (v30 >= 0)
        {
          v31 = *(i + 39);
        }

        else
        {
          v31 = *(i + 24);
        }

        if (v30 >= 0)
        {
          v32 = (i + 16);
        }

        else
        {
          v32 = *(i + 16);
        }

        if (v31 >= v26)
        {
          v33 = v26;
        }

        else
        {
          v33 = v31;
        }

        v34 = memcmp(v27, v32, v33);
        v35 = v26 < v31;
        if (v34)
        {
          v35 = v34 < 0;
        }

        if (v35)
        {
          break;
        }
      }

      else if (!v28)
      {
        break;
      }

      i += 40;
    }

    while (i < v2);
  }

LABEL_73:
  if (i < v2)
  {
    if (v79 >= 0)
    {
      v36 = HIBYTE(v79);
    }

    else
    {
      v36 = *(&v78 + 1);
    }

    if (v79 >= 0)
    {
      v37 = &v78;
    }

    else
    {
      v37 = v78;
    }

    for (v2 -= 40; ; v2 -= 40)
    {
      v39 = v77 >= v4;
      if (v77 == v4 && (v40 = *(v2 + 8), v39 = *(&v77 + 1) >= v40, *(&v77 + 1) == v40))
      {
        v41 = *(v2 + 39);
        if (v41 >= 0)
        {
          v42 = *(v2 + 39);
        }

        else
        {
          v42 = *(v2 + 24);
        }

        if (v41 >= 0)
        {
          v43 = (v2 + 16);
        }

        else
        {
          v43 = *(v2 + 16);
        }

        if (v42 >= v36)
        {
          v44 = v36;
        }

        else
        {
          v44 = v42;
        }

        v45 = memcmp(v37, v43, v44);
        v46 = v36 < v42;
        if (v45)
        {
          v46 = v45 < 0;
        }

        if (!v46)
        {
          break;
        }
      }

      else if (v39)
      {
        break;
      }

      v38 = *(v2 - 40);
      v4 = v38;
    }
  }

LABEL_140:
  while (i < v2)
  {
    v80 = *i;
    v47 = *(i + 16);
    v81[0] = *(i + 24);
    *(v81 + 7) = *(i + 31);
    v48 = *(i + 39);
    *(i + 24) = 0;
    *(i + 32) = 0;
    *(i + 16) = 0;
    *i = *v2;
    v49 = *(v2 + 16);
    *(i + 32) = *(v2 + 32);
    *(i + 16) = v49;
    *v2 = v80;
    *(v2 + 31) = *(v81 + 7);
    v50 = v81[0];
    *(v2 + 16) = v47;
    *(v2 + 24) = v50;
    *(v2 + 39) = v48;
    if (v79 >= 0)
    {
      v51 = HIBYTE(v79);
    }

    else
    {
      v51 = *(&v78 + 1);
    }

    if (v79 >= 0)
    {
      v52 = &v78;
    }

    else
    {
      v52 = v78;
    }

    do
    {
      while (1)
      {
        while (1)
        {
          v53 = *(i + 40);
          i += 40;
          v54 = v77 >= v53;
          if (v77 == v53)
          {
            break;
          }

          if (!v54)
          {
            goto LABEL_124;
          }
        }

        v55 = *(i + 8);
        if (*(&v77 + 1) == v55)
        {
          break;
        }

        if (*(&v77 + 1) < v55)
        {
          goto LABEL_124;
        }
      }

      v56 = *(i + 39);
      if (v56 >= 0)
      {
        v57 = *(i + 39);
      }

      else
      {
        v57 = *(i + 24);
      }

      if (v56 >= 0)
      {
        v58 = (i + 16);
      }

      else
      {
        v58 = *(i + 16);
      }

      if (v57 >= v51)
      {
        v59 = v51;
      }

      else
      {
        v59 = v57;
      }

      v60 = memcmp(v52, v58, v59);
      v61 = v51 < v57;
      if (v60)
      {
        v61 = v60 < 0;
      }
    }

    while (!v61);
    do
    {
      while (1)
      {
LABEL_124:
        while (1)
        {
          v62 = *(v2 - 40);
          v2 -= 40;
          v63 = v77 >= v62;
          if (v77 == v62)
          {
            break;
          }

          if (v63)
          {
            goto LABEL_140;
          }
        }

        v64 = *(v2 + 8);
        if (*(&v77 + 1) == v64)
        {
          break;
        }

        if (*(&v77 + 1) >= v64)
        {
          goto LABEL_140;
        }
      }

      v65 = *(v2 + 39);
      if (v65 >= 0)
      {
        v66 = *(v2 + 39);
      }

      else
      {
        v66 = *(v2 + 24);
      }

      if (v65 >= 0)
      {
        v67 = (v2 + 16);
      }

      else
      {
        v67 = *(v2 + 16);
      }

      if (v66 >= v51)
      {
        v68 = v51;
      }

      else
      {
        v68 = v66;
      }

      v69 = memcmp(v52, v67, v68);
      v70 = v51 < v66;
      if (v69)
      {
        v70 = v69 < 0;
      }
    }

    while (v70);
  }

  v71 = (i - 40);
  if ((i - 40) == a1)
  {
    v74 = *(i - 1);
    *v71 = v77;
    v72 = i - 24;
    if (v74 < 0)
    {
      operator delete(*v72);
    }
  }

  else
  {
    *a1 = *v71;
    if (*(a1 + 39) < 0)
    {
      operator delete(*(a1 + 2));
    }

    v72 = i - 24;
    v73 = *(i - 24);
    *(a1 + 4) = *(i - 8);
    a1[1] = v73;
    *(i - 1) = 0;
    *(i - 24) = 0;
    *v71 = v77;
  }

  v75 = v78;
  *(v72 + 16) = v79;
  *v72 = v75;
  return i;
}

unint64_t std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,llvm::SMFixIt *,std::__less<void,void> &>(__int128 *a1, unint64_t a2)
{
  v4 = 0;
  v75[2] = *MEMORY[0x1E69E9840];
  v73 = *(a1 + 4);
  v5 = v73;
  v71 = *a1;
  v72 = a1[1];
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  *(a1 + 4) = 0;
  v6 = HIBYTE(v5);
  if ((v6 & 0x80u) == 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = *(&v72 + 1);
  }

  if ((v6 & 0x80u) == 0)
  {
    v8 = &v72;
  }

  else
  {
    v8 = v72;
  }

  while (1)
  {
    v9 = *(a1 + v4 + 40);
    v10 = v9 >= v71;
    if (v9 == v71)
    {
      v11 = *(a1 + v4 + 48);
      v10 = v11 >= *(&v71 + 1);
      if (v11 == *(&v71 + 1))
      {
        break;
      }
    }

    if (v10)
    {
      goto LABEL_23;
    }

LABEL_8:
    v4 += 40;
  }

  v12 = *(a1 + v4 + 79);
  if (v12 >= 0)
  {
    v13 = *(a1 + v4 + 79);
  }

  else
  {
    v13 = *(a1 + v4 + 64);
  }

  if (v12 >= 0)
  {
    v14 = a1 + v4 + 56;
  }

  else
  {
    v14 = *(a1 + v4 + 56);
  }

  if (v7 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v7;
  }

  v16 = memcmp(v14, v8, v15);
  v17 = v13 < v7;
  if (v16)
  {
    v17 = v16 < 0;
  }

  if (v17)
  {
    goto LABEL_8;
  }

LABEL_23:
  v18 = a1 + v4 + 40;
  if (v4)
  {
    do
    {
      while (1)
      {
        while (1)
        {
          v19 = *(a2 - 40);
          a2 -= 40;
          v20 = v19 >= v71;
          if (v19 == v71)
          {
            break;
          }

          if (!v20)
          {
            goto LABEL_67;
          }
        }

        v21 = *(a2 + 8);
        if (v21 == *(&v71 + 1))
        {
          break;
        }

        if (v21 < *(&v71 + 1))
        {
          goto LABEL_67;
        }
      }

      v22 = *(a2 + 39);
      if (v22 >= 0)
      {
        v23 = *(a2 + 39);
      }

      else
      {
        v23 = *(a2 + 24);
      }

      if (v22 >= 0)
      {
        v24 = (a2 + 16);
      }

      else
      {
        v24 = *(a2 + 16);
      }

      if (v7 >= v23)
      {
        v25 = v23;
      }

      else
      {
        v25 = v7;
      }

      v26 = memcmp(v24, v8, v25);
      v27 = v23 < v7;
      if (v26)
      {
        v27 = v26 < 0;
      }
    }

    while (!v27);
  }

  else if (v18 < a2)
  {
    do
    {
      while (1)
      {
        v29 = *(a2 - 40);
        a2 -= 40;
        v30 = v29 >= v71;
        if (v29 == v71)
        {
          v31 = *(a2 + 8);
          v30 = v31 >= *(&v71 + 1);
          if (v31 == *(&v71 + 1))
          {
            break;
          }
        }

        if (!v30 || v18 >= a2)
        {
          goto LABEL_67;
        }
      }

      v32 = *(a2 + 39);
      if (v32 >= 0)
      {
        v33 = *(a2 + 39);
      }

      else
      {
        v33 = *(a2 + 24);
      }

      if (v32 >= 0)
      {
        v34 = (a2 + 16);
      }

      else
      {
        v34 = *(a2 + 16);
      }

      if (v7 >= v33)
      {
        v35 = v33;
      }

      else
      {
        v35 = v7;
      }

      v36 = memcmp(v34, v8, v35);
      v37 = v33 >= v7;
      if (v36)
      {
        v37 = v36 >= 0;
      }
    }

    while (v37 && v18 < a2);
  }

LABEL_67:
  v39 = v18;
  if (v18 < a2)
  {
    v40 = a2;
    do
    {
      v74 = *v39;
      v41 = *(v39 + 16);
      v75[0] = *(v39 + 24);
      *(v75 + 7) = *(v39 + 31);
      v42 = *(v39 + 39);
      *(v39 + 24) = 0;
      *(v39 + 32) = 0;
      *(v39 + 16) = 0;
      *v39 = *v40;
      v43 = *(v40 + 16);
      *(v39 + 32) = *(v40 + 32);
      *(v39 + 16) = v43;
      *v40 = v74;
      *(v40 + 31) = *(v75 + 7);
      v44 = v75[0];
      *(v40 + 16) = v41;
      *(v40 + 24) = v44;
      *(v40 + 39) = v42;
      if (v73 >= 0)
      {
        v45 = HIBYTE(v73);
      }

      else
      {
        v45 = *(&v72 + 1);
      }

      if (v73 >= 0)
      {
        v46 = &v72;
      }

      else
      {
        v46 = v72;
      }

      do
      {
        while (1)
        {
          while (1)
          {
            v47 = *(v39 + 40);
            v39 += 40;
            v48 = v47 >= v71;
            if (v47 == v71)
            {
              break;
            }

            if (v48)
            {
              goto LABEL_96;
            }
          }

          v49 = *(v39 + 8);
          if (v49 == *(&v71 + 1))
          {
            break;
          }

          if (v49 >= *(&v71 + 1))
          {
            goto LABEL_96;
          }
        }

        v50 = *(v39 + 39);
        if (v50 >= 0)
        {
          v51 = *(v39 + 39);
        }

        else
        {
          v51 = *(v39 + 24);
        }

        if (v50 >= 0)
        {
          v52 = (v39 + 16);
        }

        else
        {
          v52 = *(v39 + 16);
        }

        if (v45 >= v51)
        {
          v53 = v51;
        }

        else
        {
          v53 = v45;
        }

        v54 = memcmp(v52, v46, v53);
        v55 = v51 < v45;
        if (v54)
        {
          v55 = v54 < 0;
        }
      }

      while (v55);
      do
      {
        while (1)
        {
LABEL_96:
          while (1)
          {
            v56 = *(v40 - 40);
            v40 -= 40;
            v57 = v56 >= v71;
            if (v56 == v71)
            {
              break;
            }

            if (!v57)
            {
              goto LABEL_69;
            }
          }

          v58 = *(v40 + 8);
          if (v58 == *(&v71 + 1))
          {
            break;
          }

          if (v58 < *(&v71 + 1))
          {
            goto LABEL_69;
          }
        }

        v59 = *(v40 + 39);
        if (v59 >= 0)
        {
          v60 = *(v40 + 39);
        }

        else
        {
          v60 = *(v40 + 24);
        }

        if (v59 >= 0)
        {
          v61 = (v40 + 16);
        }

        else
        {
          v61 = *(v40 + 16);
        }

        if (v45 >= v60)
        {
          v62 = v60;
        }

        else
        {
          v62 = v45;
        }

        v63 = memcmp(v61, v46, v62);
        v64 = v60 < v45;
        if (v63)
        {
          v64 = v63 < 0;
        }
      }

      while (!v64);
LABEL_69:
      ;
    }

    while (v39 < v40);
  }

  v65 = (v39 - 40);
  if ((v39 - 40) == a1)
  {
    v68 = *(v39 - 1);
    *v65 = v71;
    v66 = v39 - 24;
    if (v68 < 0)
    {
      operator delete(*v66);
    }
  }

  else
  {
    *a1 = *v65;
    if (*(a1 + 39) < 0)
    {
      operator delete(*(a1 + 2));
    }

    v66 = v39 - 24;
    v67 = *(v39 - 24);
    *(a1 + 4) = *(v39 - 8);
    a1[1] = v67;
    *(v39 - 1) = 0;
    *(v39 - 24) = 0;
    *v65 = v71;
  }

  v69 = v72;
  *(v66 + 16) = v73;
  *v66 = v69;
  return v39 - 40;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *>(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v64[2] = *MEMORY[0x1E69E9840];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(a1, (a1 + 40), (a2 - 40));
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(a1, (a1 + 40), (a1 + 80), (a2 - 40));
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(a1, a1 + 40, a1 + 80, a1 + 120, a2 - 40);
        return 1;
    }

    goto LABEL_14;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 != 2)
  {
LABEL_14:
    v15 = a1 + 80;
    std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(a1, (a1 + 40), (a1 + 80));
    v16 = a1 + 120;
    if (a1 + 120 == v2)
    {
      return 1;
    }

    v17 = 0;
    v18 = 0;
    v57 = v2;
LABEL_19:
    v21 = *v16 >= *v15;
    if (*v16 == *v15 && (v22 = *(v16 + 8), v23 = *(v15 + 8), v21 = v22 >= v23, v22 == v23))
    {
      v39 = *(v15 + 39);
      v40 = *(v16 + 39);
      if (v40 >= 0)
      {
        v41 = *(v16 + 39);
      }

      else
      {
        v41 = *(v16 + 24);
      }

      if (v40 >= 0)
      {
        v42 = (v16 + 16);
      }

      else
      {
        v42 = *(v16 + 16);
      }

      if (v39 >= 0)
      {
        v43 = *(v15 + 39);
      }

      else
      {
        v43 = *(v15 + 24);
      }

      if (v39 >= 0)
      {
        v44 = (v15 + 16);
      }

      else
      {
        v44 = *(v15 + 16);
      }

      if (v43 >= v41)
      {
        v45 = v41;
      }

      else
      {
        v45 = v43;
      }

      v46 = memcmp(v42, v44, v45);
      v47 = v41 < v43;
      if (v46)
      {
        v47 = v46 < 0;
      }

      if (!v47)
      {
        goto LABEL_18;
      }
    }

    else if (v21)
    {
      goto LABEL_18;
    }

    v58 = v18;
    v24 = *(v16 + 16);
    v61 = *v16;
    v25 = *v16;
    v63 = *(v16 + 32);
    v62 = v24;
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    *v16 = *v15;
    v19 = v15 + 16;
    *(v16 + 32) = *(v15 + 32);
    *(v16 + 16) = *(v15 + 16);
    *(v15 + 39) = 0;
    *(v15 + 16) = 0;
    v59 = v17;
    while (1)
    {
      v27 = *(a1 + v17 + 40);
      v28 = v25 >= v27;
      if (v25 == v27 && (v29 = *(a1 + v17 + 48), v28 = *(&v61 + 1) >= v29, *(&v61 + 1) == v29))
      {
        v30 = a1 + v17;
        v31 = *(a1 + v17 + 79);
        if (v63 >= 0)
        {
          v32 = HIBYTE(v63);
        }

        else
        {
          v32 = *(&v62 + 1);
        }

        if (v63 >= 0)
        {
          v33 = &v62;
        }

        else
        {
          v33 = v62;
        }

        if (v31 >= 0)
        {
          v34 = *(a1 + v17 + 79);
        }

        else
        {
          v34 = *(a1 + v17 + 64);
        }

        if (v31 >= 0)
        {
          v35 = (a1 + v17 + 56);
        }

        else
        {
          v35 = *(a1 + v17 + 56);
        }

        if (v34 >= v32)
        {
          v36 = v32;
        }

        else
        {
          v36 = v34;
        }

        v37 = memcmp(v33, v35, v36);
        v38 = v32 < v34;
        if (v37)
        {
          v38 = v37 < 0;
        }

        if (!v38)
        {
          v19 = v30 + 96;
          v15 = v30 + 80;
LABEL_17:
          *v15 = v61;
          v17 = v59;
          v20 = v62;
          *(v19 + 16) = v63;
          *v19 = v20;
          v18 = v58 + 1;
          v2 = v57;
          if (v58 == 7)
          {
            return v16 + 40 == v57;
          }

LABEL_18:
          v15 = v16;
          v17 += 40;
          v16 += 40;
          if (v16 != v2)
          {
            goto LABEL_19;
          }

          return 1;
        }
      }

      else if (v28)
      {
        goto LABEL_17;
      }

      v19 = v15 - 24;
      v15 -= 40;
      *(a1 + v17 + 80) = *(a1 + v17 + 40);
      v26 = a1 + v17;
      *(v26 + 96) = *(a1 + v17 + 56);
      *(v26 + 112) = *(a1 + v17 + 72);
      *(v26 + 79) = 0;
      *(v26 + 56) = 0;
      v17 -= 40;
      if (v17 == -80)
      {
        v19 = a1 + 16;
        v15 = a1;
        goto LABEL_17;
      }
    }
  }

  v7 = (a2 - 40);
  v6 = *(a2 - 40);
  v8 = v6 >= *a1;
  if (v6 == *a1 && (v9 = *(a2 - 32), v10 = *(a1 + 8), v8 = v9 >= v10, v9 == v10))
  {
    v48 = *(a1 + 39);
    v49 = *(a2 - 1);
    if (v49 >= 0)
    {
      v50 = *(a2 - 1);
    }

    else
    {
      v50 = *(a2 - 16);
    }

    if (v49 >= 0)
    {
      v51 = (a2 - 24);
    }

    else
    {
      v51 = *(a2 - 24);
    }

    if (v48 >= 0)
    {
      v52 = *(a1 + 39);
    }

    else
    {
      v52 = *(a1 + 24);
    }

    if (v48 >= 0)
    {
      v53 = (a1 + 16);
    }

    else
    {
      v53 = *(a1 + 16);
    }

    if (v52 >= v50)
    {
      v54 = v50;
    }

    else
    {
      v54 = v52;
    }

    v55 = memcmp(v51, v53, v54);
    v56 = v50 < v52;
    if (v55)
    {
      v56 = v55 < 0;
    }

    if (!v56)
    {
      return 1;
    }
  }

  else if (v8)
  {
    return 1;
  }

  v60 = *a1;
  v11 = *(a1 + 16);
  v64[0] = *(a1 + 24);
  *(v64 + 7) = *(a1 + 31);
  v12 = *(a1 + 39);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = *v7;
  v13 = *(v2 - 8);
  *(a1 + 16) = *(v2 - 24);
  *(a1 + 32) = v13;
  *v7 = v60;
  v14 = v64[0];
  *(v2 - 24) = v11;
  *(v2 - 16) = v14;
  *(v2 - 9) = *(v64 + 7);
  result = 1;
  *(v2 - 1) = v12;
  return result;
}

__int128 *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,llvm::SMFixIt *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 41)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 40 * v10);
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *>(a1, a4, v9, v12);
        v12 = (v12 - 40);
        --v11;
      }

      while (v11);
    }

    i = a2;
    if (a2 != a3)
    {
      for (i = a2; i != a3; i = (i + 40))
      {
        v17 = *i >= *a1;
        if (*i == *a1 && (v18 = *(i + 1), v19 = *(a1 + 8), v17 = v18 >= v19, v18 == v19))
        {
          v20 = *(a1 + 39);
          v21 = *(i + 39);
          if (v21 >= 0)
          {
            v22 = *(i + 39);
          }

          else
          {
            v22 = *(i + 3);
          }

          if (v21 >= 0)
          {
            v23 = i + 1;
          }

          else
          {
            v23 = *(i + 2);
          }

          if (v20 >= 0)
          {
            v24 = *(a1 + 39);
          }

          else
          {
            v24 = *(a1 + 24);
          }

          if (v20 >= 0)
          {
            v25 = (a1 + 16);
          }

          else
          {
            v25 = *(a1 + 16);
          }

          if (v24 >= v22)
          {
            v26 = v22;
          }

          else
          {
            v26 = v24;
          }

          v27 = memcmp(v23, v25, v26);
          v28 = v22 < v24;
          if (v27)
          {
            v28 = v27 < 0;
          }

          if (!v28)
          {
            continue;
          }
        }

        else if (v17)
        {
          continue;
        }

        v38 = *i;
        v14 = *(i + 2);
        *&v40 = *(i + 3);
        *(&v40 + 7) = *(i + 31);
        v15 = *(i + 39);
        *(i + 3) = 0;
        *(i + 4) = 0;
        *(i + 2) = 0;
        *i = *a1;
        v16 = *(a1 + 32);
        i[1] = *(a1 + 16);
        *(i + 4) = v16;
        *a1 = v38;
        *(a1 + 16) = v14;
        *(a1 + 24) = v40;
        *(a1 + 31) = *(&v40 + 7);
        *(a1 + 39) = v15;
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *>(a1, a4, v9, a1);
      }
    }

    if (v8 >= 41)
    {
      v29 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 3);
      v30 = a2 - 40;
      do
      {
        while (1)
        {
          v39 = *a1;
          v33 = *(a1 + 16);
          *v41 = *(a1 + 24);
          *&v41[7] = *(a1 + 31);
          v34 = *(a1 + 39);
          *(a1 + 24) = 0;
          *(a1 + 32) = 0;
          *(a1 + 16) = 0;
          v35 = std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *>(a1, a4, v29);
          v36 = v35;
          if (v30 == v35)
          {
            break;
          }

          *v35 = *v30;
          if (*(v35 + 39) < 0)
          {
            operator delete(v35[2]);
          }

          v31 = *(v30 + 16);
          v36[4] = *(v30 + 32);
          *(v36 + 1) = v31;
          *v30 = v39;
          *(v30 + 16) = v33;
          *(v30 + 24) = *v41;
          *(v30 + 31) = *&v41[7];
          *(v30 + 39) = v34;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *>(a1, (v36 + 5), a4, 0xCCCCCCCCCCCCCCCDLL * ((v36 - a1 + 40) >> 3));
          v30 -= 40;
          v32 = v29-- <= 2;
          if (v32)
          {
            return i;
          }
        }

        *v35 = v39;
        if (*(v35 + 39) < 0)
        {
          operator delete(v35[2]);
        }

        v36[2] = v33;
        v36[3] = *v41;
        *(v36 + 31) = *&v41[7];
        *(v36 + 39) = v34;
        v30 -= 40;
        v32 = v29-- <= 2;
      }

      while (!v32);
    }

    return i;
  }

  return a3;
}

__n128 std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *>(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 < 2)
  {
    return result;
  }

  v86 = v4;
  v87 = v5;
  v7 = v6 >> 1;
  if ((v6 >> 1) < (0xCCCCCCCCCCCCCCCDLL * ((a4 - a1) >> 3)))
  {
    return result;
  }

  v8 = (0x999999999999999ALL * ((a4 - a1) >> 3)) | 1;
  v9 = (a1 + 40 * v8);
  v10 = 0x999999999999999ALL * ((a4 - a1) >> 3) + 2;
  if (v10 >= a3)
  {
    goto LABEL_8;
  }

  v11 = v9[2].n128_u64[1];
  v12 = v9->n128_u64[0] >= v11;
  if (v9->n128_u64[0] == v11 && (v13 = v9->n128_u64[1], v14 = v9[3].n128_u64[0], v12 = v13 >= v14, v13 == v14))
  {
    v67 = v9[1].n128_u64[0];
    v68 = v9[4].n128_i8[15];
    if (v9[2].n128_i8[7] < 0)
    {
      v69 = v9[1].n128_u64[1];
    }

    else
    {
      v67 = v9 + 1;
      v69 = v9[2].n128_u8[7];
    }

    if (v68 >= 0)
    {
      v70 = v9[4].n128_u8[15];
    }

    else
    {
      v70 = v9[4].n128_u64[0];
    }

    if (v68 >= 0)
    {
      v71 = &v9[3].n128_i8[8];
    }

    else
    {
      v71 = v9[3].n128_u64[1];
    }

    if (v70 >= v69)
    {
      v72 = v69;
    }

    else
    {
      v72 = v70;
    }

    v73 = a1;
    v74 = a3;
    v75 = a4;
    v76 = memcmp(v67, v71, v72);
    a4 = v75;
    a3 = v74;
    v77 = v76;
    a1 = v73;
    v41 = v77 == 0;
    v78 = v77 < 0;
    if (v41)
    {
      v78 = v69 < v70;
    }

    if (!v78)
    {
      goto LABEL_8;
    }
  }

  else if (v12)
  {
    goto LABEL_8;
  }

  v9 = (v9 + 40);
  v8 = v10;
LABEL_8:
  v15 = v9->n128_u64[0] >= a4->n128_u64[0];
  if (v9->n128_u64[0] == a4->n128_u64[0] && (v16 = v9->n128_u64[1], v17 = a4->n128_u64[1], v15 = v16 >= v17, v16 == v17))
  {
    v53 = a4[2].n128_i8[7];
    v54 = v9 + 1;
    v55 = v9[2].n128_i8[7];
    if (v55 >= 0)
    {
      v56 = v9[2].n128_u8[7];
    }

    else
    {
      v56 = v9[1].n128_u64[1];
    }

    if (v55 < 0)
    {
      v54 = v9[1].n128_u64[0];
    }

    if (v53 >= 0)
    {
      v57 = a4[2].n128_u8[7];
    }

    else
    {
      v57 = a4[1].n128_u64[1];
    }

    if (v53 >= 0)
    {
      v58 = a4 + 1;
    }

    else
    {
      v58 = a4[1].n128_u64[0];
    }

    if (v57 >= v56)
    {
      v59 = v56;
    }

    else
    {
      v59 = v57;
    }

    v60 = a1;
    v61 = a3;
    v62 = a4;
    v63 = memcmp(v54, v58, v59);
    a4 = v62;
    a3 = v61;
    v65 = v63;
    a1 = v60;
    v41 = v65 == 0;
    v66 = v65 < 0;
    if (v41)
    {
      v66 = v56 < v57;
    }

    if (v66)
    {
      return result;
    }
  }

  else if (!v15)
  {
    return result;
  }

  v83 = *a4;
  v84 = a4[1];
  v85 = a4[2].n128_i64[0];
  a4[1].n128_u64[0] = 0;
  a4[1].n128_u64[1] = 0;
  a4[2].n128_u64[0] = 0;
  v18 = v83.n128_u64[1];
  *a4 = *v9;
  v19 = v9 + 1;
  v20 = v9[2].n128_u64[0];
  a4[1] = v9[1];
  a4[2].n128_u64[0] = v20;
  v9[2].n128_u8[7] = 0;
  v9[1].n128_u8[0] = 0;
  if (v7 < v8)
  {
    goto LABEL_81;
  }

  if (v85 >= 0)
  {
    v21 = HIBYTE(v85);
  }

  else
  {
    v21 = v84.n128_u64[1];
  }

  v22 = &v84;
  if (v85 < 0)
  {
    v22 = v84.n128_u64[0];
  }

  v81 = v22;
  v82 = v21;
  v79 = a3;
  v80 = a1;
  while (1)
  {
    v25 = v9;
    v26 = 2 * v8;
    v8 = (2 * v8) | 1;
    v9 = (a1 + 40 * v8);
    v27 = v26 + 2;
    if (v26 + 2 >= a3)
    {
      goto LABEL_20;
    }

    v28 = v9[2].n128_u64[1];
    v29 = v9->n128_u64[0] >= v28;
    if (v9->n128_u64[0] != v28 || (v30 = v9->n128_u64[1], v31 = v9[3].n128_u64[0], v29 = v30 >= v31, v30 != v31))
    {
      if (v29)
      {
        goto LABEL_20;
      }

LABEL_19:
      v9 = (v9 + 40);
      v8 = v27;
      goto LABEL_20;
    }

    v43 = v9[4].n128_i8[15];
    v44 = v9[2].n128_i8[7];
    if (v44 >= 0)
    {
      v45 = v9 + 1;
    }

    else
    {
      v45 = v9[1].n128_u64[0];
    }

    if (v44 >= 0)
    {
      v46 = v9[2].n128_u8[7];
    }

    else
    {
      v46 = v9[1].n128_u64[1];
    }

    if (v43 >= 0)
    {
      v47 = v9[4].n128_u8[15];
    }

    else
    {
      v47 = v9[4].n128_u64[0];
    }

    if (v43 >= 0)
    {
      v48 = &v9[3].n128_i8[8];
    }

    else
    {
      v48 = v9[3].n128_u64[1];
    }

    if (v47 >= v46)
    {
      v49 = v46;
    }

    else
    {
      v49 = v47;
    }

    v50 = memcmp(v45, v48, v49);
    v18 = v83.n128_u64[1];
    v51 = v50;
    a3 = v79;
    a1 = v80;
    v41 = v51 == 0;
    v52 = v51 < 0;
    if (v41)
    {
      v52 = v46 < v47;
    }

    if (v52)
    {
      goto LABEL_19;
    }

LABEL_20:
    v23 = v9->n128_u64[0] >= v83.n128_u64[0];
    if (v9->n128_u64[0] == v83.n128_u64[0])
    {
      v32 = v9->n128_u64[1];
      v23 = v32 >= v18;
      if (v32 == v18)
      {
        break;
      }
    }

    if (!v23)
    {
      goto LABEL_80;
    }

LABEL_23:
    *v25 = *v9;
    v19 = v9 + 1;
    v24 = v9[1];
    v25[2].n128_u64[0] = v9[2].n128_u64[0];
    v25[1] = v24;
    v9[2].n128_u8[7] = 0;
    v9[1].n128_u8[0] = 0;
    if (v7 < v8)
    {
      goto LABEL_81;
    }
  }

  v33 = v9 + 1;
  v34 = v9[2].n128_i8[7];
  if (v34 >= 0)
  {
    v35 = v9[2].n128_u8[7];
  }

  else
  {
    v35 = v9[1].n128_u64[1];
  }

  if (v34 < 0)
  {
    v33 = v9[1].n128_u64[0];
  }

  if (v82 >= v35)
  {
    v36 = v35;
  }

  else
  {
    v36 = v82;
  }

  v37 = a1;
  v38 = a3;
  v39 = memcmp(v33, v81, v36);
  v18 = v83.n128_u64[1];
  a3 = v38;
  v40 = v39;
  a1 = v37;
  v41 = v40 == 0;
  v42 = v40 < 0;
  if (v41)
  {
    v42 = v35 < v82;
  }

  if (!v42)
  {
    goto LABEL_23;
  }

LABEL_80:
  v9 = v25;
LABEL_81:
  *v9 = v83;
  result = v84;
  v19[1].n128_u64[0] = v85;
  *v19 = result;
  return result;
}

void *std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *>(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v9 = &a1[5 * v5];
    v7 = v9 + 5;
    v10 = 2 * v5;
    v5 = (2 * v5) | 1;
    v11 = v10 + 2;
    if (v10 + 2 < a3)
    {
      v13 = v9 + 10;
      v12 = v9[10];
      v14 = v9[5];
      v15 = v14 >= v12;
      if (v14 == v12 && (v16 = v9[6], v17 = v9[11], v15 = v16 >= v17, v16 == v17))
      {
        v20 = v9[7];
        v18 = v9 + 7;
        v19 = v20;
        v21 = *(v18 + 63);
        v22 = *(v18 + 23);
        if (v22 >= 0)
        {
          v23 = *(v18 + 23);
        }

        else
        {
          v23 = v18[1];
        }

        if (v22 >= 0)
        {
          v24 = v18;
        }

        else
        {
          v24 = v19;
        }

        if (v21 >= 0)
        {
          v25 = *(v18 + 63);
        }

        else
        {
          v25 = v18[6];
        }

        if (v21 >= 0)
        {
          v26 = v18 + 5;
        }

        else
        {
          v26 = v18[5];
        }

        if (v25 >= v23)
        {
          v27 = v23;
        }

        else
        {
          v27 = v25;
        }

        v28 = memcmp(v24, v26, v27);
        v29 = v23 < v25;
        if (v28)
        {
          v29 = v28 < 0;
        }

        if (v29)
        {
LABEL_2:
          v7 = v13;
          v5 = v11;
        }
      }

      else if (!v15)
      {
        goto LABEL_2;
      }
    }

    *a1 = *v7;
    if (*(a1 + 39) < 0)
    {
      operator delete(a1[2]);
    }

    v8 = *(v7 + 1);
    a1[4] = v7[4];
    *(a1 + 1) = v8;
    *(v7 + 39) = 0;
    *(v7 + 16) = 0;
    a1 = v7;
  }

  while (v5 <= v6);
  return v7;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 < 2)
  {
    return result;
  }

  v5 = v4 >> 1;
  v6 = result + 40 * (v4 >> 1);
  v8 = (a2 - 40);
  v7 = *(a2 - 40);
  v9 = *v6 >= v7;
  if (*v6 == v7 && (v10 = *(v6 + 8), v11 = *(a2 - 32), v9 = v10 >= v11, v10 == v11))
  {
    v35 = (a2 - 24);
    v36 = *(a2 - 1);
    v37 = (v6 + 16);
    v38 = *(v6 + 39);
    if (v38 >= 0)
    {
      v39 = *(v6 + 39);
    }

    else
    {
      v39 = *(v6 + 24);
    }

    if (v38 < 0)
    {
      v37 = *(v6 + 16);
    }

    if (v36 >= 0)
    {
      v40 = *(a2 - 1);
    }

    else
    {
      v40 = *(a2 - 16);
    }

    if (v36 < 0)
    {
      v35 = *(a2 - 24);
    }

    if (v40 >= v39)
    {
      v41 = v39;
    }

    else
    {
      v41 = v40;
    }

    v42 = result;
    v43 = a2;
    v44 = memcmp(v37, v35, v41);
    a2 = v43;
    v45 = v44;
    result = v42;
    v32 = v45 == 0;
    v46 = v45 < 0;
    if (v32)
    {
      v46 = v39 < v40;
    }

    if (!v46)
    {
      return result;
    }
  }

  else if (v9)
  {
    return result;
  }

  v12 = *v8;
  v51 = *(a2 - 8);
  v13 = v51;
  v49 = v12;
  v50 = *(a2 - 24);
  *(a2 - 24) = 0;
  *(a2 - 16) = 0;
  *(a2 - 8) = 0;
  v14 = v12;
  v15 = HIBYTE(v13);
  if ((v15 & 0x80u) == 0)
  {
    v16 = v15;
  }

  else
  {
    v16 = *(&v50 + 1);
  }

  if ((v15 & 0x80u) == 0)
  {
    v17 = &v50;
  }

  else
  {
    v17 = v50;
  }

  v47 = v17;
  v48 = v16;
  *v8 = *v6;
  v18 = v6 + 16;
  v19 = *(v6 + 32);
  *(a2 - 24) = *(v6 + 16);
  *(a2 - 8) = v19;
  *(v6 + 39) = 0;
  *(v6 + 16) = 0;
  if (v4 >= 2)
  {
    do
    {
      v22 = v6;
      v23 = v5 - 1;
      v5 = (v5 - 1) >> 1;
      v6 = result + 40 * v5;
      v24 = *v6 >= v14;
      if (*v6 == v14 && (v25 = *(v6 + 8), v24 = v25 >= *(&v14 + 1), v25 == *(&v14 + 1)))
      {
        v26 = (v6 + 16);
        v27 = *(v6 + 39);
        if (v27 >= 0)
        {
          v28 = *(v6 + 39);
        }

        else
        {
          v28 = *(v6 + 24);
        }

        if (v27 < 0)
        {
          v26 = *(v6 + 16);
        }

        if (v48 >= v28)
        {
          v29 = v28;
        }

        else
        {
          v29 = v48;
        }

        v30 = result;
        v31 = memcmp(v26, v47, v29);
        result = v30;
        v32 = v31 == 0;
        v33 = v31 < 0;
        if (v32)
        {
          v33 = v28 < v48;
        }

        if (!v33)
        {
LABEL_28:
          v6 = v22;
          break;
        }
      }

      else if (v24)
      {
        goto LABEL_28;
      }

      v18 = v6 + 16;
      v20 = *(v6 + 32);
      v21 = *(v6 + 16);
      *v22 = *v6;
      *(v22 + 16) = v21;
      *(v22 + 32) = v20;
      *(v6 + 39) = 0;
      *(v6 + 16) = 0;
    }

    while (v23 > 1);
  }

  *v6 = v49;
  v34 = v50;
  *(v18 + 16) = v51;
  *v18 = v34;
  return result;
}

void llvm::initStatisticOptions(llvm *this)
{
  if (atomic_load_explicit(&qword_1EE17CE88, memory_order_acquire))
  {
    if (atomic_load_explicit(qword_1EE17CE90, memory_order_acquire))
    {
      return;
    }

LABEL_5:
    llvm::initStatisticOptions();
    return;
  }

  llvm::initStatisticOptions();
  if ((atomic_load_explicit(qword_1EE17CE90, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_5;
  }
}

uint64_t llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::opt<char [6],llvm::cl::desc,llvm::cl::LocationClass<BOOL>,llvm::cl::OptionHidden>(uint64_t a1, const char *a2, _OWORD *a3, _BYTE **a4, _WORD *a5)
{
  *a1 = &unk_1F5B3E1D8;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v10 = a1 + 80;
  *(a1 + 64) = a1 + 80;
  v11 = a1 + 64;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v13 = *(a1 + 72);
  if (v13 >= *(a1 + 76))
  {
    v19 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v11, v10, v13 + 1, 8);
    GeneralCategory = v19;
    LODWORD(v13) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v13) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 145) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_1F5AFB2B0;
  *a1 = &unk_1F5B3EEF8;
  *(a1 + 152) = &unk_1F5B3E320;
  *(a1 + 160) = &unk_1F5B3EFA8;
  *(a1 + 184) = a1 + 160;
  v14 = strlen(a2);
  v15 = llvm::cl::Option::setArgStr(a1, a2, v14);
  *(a1 + 32) = *a3;
  if (*(a1 + 128))
  {
    v20 = "cl::location(x) specified more than once!";
    v21 = 259;
    v16 = llvm::errs(v15);
    llvm::cl::Option::error(a1, &v20, 0, 0, v16);
  }

  else
  {
    v17 = *a4;
    *(a1 + 128) = *a4;
    *(a1 + 145) = 1;
    *(a1 + 144) = *v17;
  }

  *(a1 + 10) = (32 * (*a5 & 3)) | *(a1 + 10) & 0xFF9F;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

unint64_t llvm::getToken@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v17 = a1;
  v18 = a2;
  first_not_of = llvm::StringRef::find_first_not_of(&v17, a3, a4, 0);
  result = llvm::StringRef::find_first_of(&v17, a3, a4, first_not_of);
  v10 = v18;
  if (v18 >= first_not_of)
  {
    v11 = first_not_of;
  }

  else
  {
    v11 = v18;
  }

  if (v11 <= result)
  {
    v12 = result;
  }

  else
  {
    v12 = first_not_of;
  }

  if (v12 >= v18)
  {
    v12 = v18;
  }

  v13 = v17 + v11;
  v14 = v12 - v11;
  if (v18 >= result)
  {
    v15 = result;
  }

  else
  {
    v15 = v18;
  }

  v16 = v17 + v15;
  *a5 = v13;
  a5[1] = v14;
  a5[2] = v16;
  a5[3] = v10 - v15;
  return result;
}

unint64_t llvm::SplitString(uint64_t a1, unint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  v23 = a1;
  v24 = a2;
  first_not_of = llvm::StringRef::find_first_not_of(&v23, a4, a5, 0);
  result = llvm::StringRef::find_first_of(&v23, a4, a5, first_not_of);
  if (v24 >= first_not_of)
  {
    v10 = first_not_of;
  }

  else
  {
    v10 = v24;
  }

  if (v10 <= result)
  {
    v11 = result;
  }

  else
  {
    v11 = first_not_of;
  }

  if (v11 >= v24)
  {
    v11 = v24;
  }

  v12 = v11 - v10;
  if (v11 != v10)
  {
    v13 = v23 + v10;
    if (v24 >= result)
    {
      v14 = result;
    }

    else
    {
      v14 = v24;
    }

    v15 = v23 + v14;
    v16 = v24 - v14;
    do
    {
      v17 = *(a3 + 8);
      if (v17 >= *(a3 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v17 + 1, 16);
        v17 = *(a3 + 8);
      }

      v18 = (*a3 + 16 * v17);
      *v18 = v13;
      v18[1] = v12;
      ++*(a3 + 8);
      v23 = v15;
      v24 = v16;
      v19 = llvm::StringRef::find_first_not_of(&v23, a4, a5, 0);
      result = llvm::StringRef::find_first_of(&v23, a4, a5, v19);
      if (v24 >= v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = v24;
      }

      if (v20 <= result)
      {
        v21 = result;
      }

      else
      {
        v21 = v19;
      }

      if (v21 >= v24)
      {
        v21 = v24;
      }

      v13 = v23 + v20;
      if (v24 >= result)
      {
        v22 = result;
      }

      else
      {
        v22 = v24;
      }

      v15 = v23 + v22;
      v16 = v24 - v22;
      v12 = v21 - v20;
    }

    while (v21 != v20);
  }

  return result;
}

llvm::raw_ostream *llvm::printEscapedString(llvm::raw_ostream *result, uint64_t a2, llvm::raw_ostream *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v7 = *v5;
      if (v7 == 92)
      {
        v8 = *(a3 + 4);
        if (v8 >= *(a3 + 3))
        {
          result = llvm::raw_ostream::write(a3, 92);
          v9 = *(result + 4);
          if (v9 < *(result + 3))
          {
LABEL_19:
            *(result + 4) = v9 + 1;
            *v9 = 92;
            goto LABEL_5;
          }
        }

        else
        {
          *(a3 + 4) = v8 + 1;
          *v8 = 92;
          result = a3;
          v9 = *(a3 + 4);
          if (v9 < *(a3 + 3))
          {
            goto LABEL_19;
          }
        }

        v6 = 92;
        goto LABEL_4;
      }

      v11 = *(a3 + 3);
      v10 = *(a3 + 4);
      if (v7 == 34 || (v7 - 32) > 0x5Eu)
      {
        if (v10 >= v11)
        {
          result = llvm::raw_ostream::write(a3, 92);
          v12 = llvm::hexdigit(unsigned int,BOOL)::LUT[v7 >> 4];
          v13 = *(result + 4);
          if (v13 < *(result + 3))
          {
LABEL_21:
            *(result + 4) = v13 + 1;
            *v13 = v12;
            v6 = llvm::hexdigit(unsigned int,BOOL)::LUT[v7 & 0xF];
            v14 = *(result + 4);
            if (v14 < *(result + 3))
            {
LABEL_22:
              *(result + 4) = v14 + 1;
              *v14 = v6;
              goto LABEL_5;
            }

            goto LABEL_4;
          }
        }

        else
        {
          *(a3 + 4) = v10 + 1;
          *v10 = 92;
          result = a3;
          v12 = llvm::hexdigit(unsigned int,BOOL)::LUT[v7 >> 4];
          v13 = *(a3 + 4);
          if (v13 < *(a3 + 3))
          {
            goto LABEL_21;
          }
        }

        result = llvm::raw_ostream::write(result, v12);
        v6 = llvm::hexdigit(unsigned int,BOOL)::LUT[v7 & 0xF];
        v14 = *(result + 4);
        if (v14 < *(result + 3))
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v10 < v11)
        {
          *(a3 + 4) = v10 + 1;
          *v10 = v7;
          goto LABEL_5;
        }

        result = a3;
        v6 = *v5;
      }

LABEL_4:
      result = llvm::raw_ostream::write(result, v6);
LABEL_5:
      ++v5;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t llvm::StringMapImpl::StringMapImpl(uint64_t this, int a2, int a3)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 20) = a3;
  if (a2)
  {
    v3 = (4 * a2 / 3u + 1) | ((4 * a2 / 3u + 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    v5 = v4 | (v4 >> 8) | ((v4 | (v4 >> 8)) >> 16);
    v6 = this;
    *(this + 16) = 0;
    v7 = calloc(v5 + 2, 0xCuLL);
    if (!v7)
    {
      llvm::report_bad_alloc_error("Allocation failed", 1);
    }

    v7[(v5 + 1)] = 2;
    *v6 = v7;
    *(v6 + 8) = v5 + 1;
    return v6;
  }

  else
  {
    *this = 0;
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  return this;
}

void *llvm::StringMapImpl::init(llvm::StringMapImpl *this, unsigned int a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = 16;
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  result = calloc(v3 + 1, 0xCuLL);
  if (!result && (v3 != -1 || (result = malloc(1uLL)) == 0))
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  result[v3] = 2;
  *this = result;
  *(this + 2) = v3;
  return result;
}

void *createTable(int a1)
{
  v2 = a1 + 1;
  result = calloc((a1 + 1), 0xCuLL);
  if (!result && (v2 || (result = malloc(1uLL)) == 0))
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  result[a1] = 2;
  return result;
}

uint64_t llvm::StringMapImpl::LookupBucketFor(uint64_t a1, const void *a2, size_t a3, unsigned int a4)
{
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = *a1;
    v10 = v8 - 1;
    result = (v8 - 1) & a4;
    v12 = *a1 + 8 * v8 + 8;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(a1 + 12) = 0;
    *(a1 + 16) = 0;
    v18 = calloc(0x11uLL, 0xCuLL);
    if (!v18)
    {
      llvm::report_bad_alloc_error("Allocation failed", 1);
    }

    v9 = v18;
    v18[16] = 2;
    *a1 = v18;
    *(a1 + 8) = 16;
    v10 = 15;
    result = a4 & 0xF;
    v12 = (v9 + 17);
    if (a3)
    {
LABEL_3:
      v13 = 1;
      v14 = 0xFFFFFFFFLL;
      v15 = v9[result];
      i = result;
      if (v15)
      {
        while (1)
        {
          if (v15 == -8)
          {
            if (v14 == -1)
            {
              v14 = result;
            }

            else
            {
              v14 = v14;
            }
          }

          else if (*(v12 + 4 * i) == a4 && a3 == *v15)
          {
            v28 = result;
            v26 = v12;
            v27 = v9;
            v24 = v14;
            v25 = v10;
            v23 = v13;
            v21 = memcmp(a2, v15 + *(a1 + 20), a3);
            v13 = v23;
            v10 = v25;
            v14 = v24;
            v12 = v26;
            v9 = v27;
            v22 = v21;
            result = v28;
            if (!v22)
            {
              return result;
            }
          }

          LODWORD(result) = v10 & (result + v13++);
          v15 = v9[result];
          i = result;
          if (!v15)
          {
            goto LABEL_4;
          }
        }
      }

      goto LABEL_4;
    }
  }

  v19 = 1;
  LODWORD(v14) = -1;
  v20 = v9[result];
  for (i = result; v20; i = result)
  {
    if (v20 == -8)
    {
      if (v14 == -1)
      {
        LODWORD(v14) = result;
      }
    }

    else if (*(v12 + 4 * i) == a4 && !*v20)
    {
      return result;
    }

    result = v10 & (result + v19++);
    v20 = v9[result];
  }

LABEL_4:
  v17 = v14;
  if (v14 == -1)
  {
    v17 = i;
    result = result;
  }

  else
  {
    result = v14;
  }

  *(v12 + 4 * v17) = a4;
  return result;
}

uint64_t llvm::StringMapImpl::FindKey(uint64_t *a1, const void *a2, size_t a3, unsigned int a4)
{
  v4 = *(a1 + 2);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = a1;
  v6 = v4 - 1;
  result = (v4 - 1) & a4;
  v8 = *v5;
  v9 = *v5 + 8 * v4 + 8;
  if (a3)
  {
    v10 = 1;
    v11 = *(v8 + 8 * result);
    if (!v11)
    {
      return 0xFFFFFFFFLL;
    }

    while (1)
    {
      if (v11 != -8 && *(v9 + 4 * result) == a4 && a3 == *v11)
      {
        v23 = a3;
        v24 = a2;
        v21 = a4;
        v22 = result;
        v18 = v5;
        v20 = v6;
        v17 = v8;
        v19 = v9;
        v16 = v10;
        v14 = memcmp(a2, v11 + *(v5 + 5), a3);
        v10 = v16;
        v5 = v18;
        v9 = v19;
        v8 = v17;
        v6 = v20;
        a4 = v21;
        a3 = v23;
        a2 = v24;
        v15 = v14;
        result = v22;
        if (!v15)
        {
          break;
        }
      }

      LODWORD(result) = (result + v10++) & v6;
      v11 = *(v8 + 8 * result);
      if (!v11)
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  else
  {
    v12 = 1;
    v13 = *(v8 + 8 * result);
    if (!v13)
    {
      return 0xFFFFFFFFLL;
    }

    while (v13 == -8 || *(v9 + 4 * result) != a4 || *v13)
    {
      result = (result + v12++) & v6;
      v13 = *(v8 + 8 * result);
      if (!v13)
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

int32x2_t llvm::StringMapImpl::RemoveKey(uint64_t *a1, unsigned int *a2, const unsigned __int8 *a3)
{
  v6 = llvm::xxh3_64bits(a2, a3, a3);
  v8 = *(a1 + 2);
  if (v8)
  {
    v9 = v8 - 1;
    v10 = (v8 - 1) & v6;
    v11 = *a1;
    v12 = *a1 + 8 * v8 + 8;
    if (a3)
    {
      v13 = 1;
      v14 = *(v11 + 8 * v10);
      if (!v14)
      {
        return result;
      }

      while (1)
      {
        if (v14 != -8 && *(v12 + 4 * v10) == v6 && a3 == *v14)
        {
          v22 = v6;
          v23 = v11;
          v24 = v10;
          v20 = v13;
          v21 = v9;
          v19 = v12;
          v15 = memcmp(a2, v14 + *(a1 + 5), a3);
          v13 = v20;
          v9 = v21;
          v12 = v19;
          v10 = v24;
          v16 = v15;
          v6 = v22;
          v11 = v23;
          if (!v16)
          {
            break;
          }
        }

        v10 = (v10 + v13++) & v9;
        v14 = *(v11 + 8 * v10);
        if (!v14)
        {
          return result;
        }
      }
    }

    else
    {
      v17 = 1;
      v18 = *(v11 + 8 * v10);
      if (!v18)
      {
        return result;
      }

      while (v18 == -8 || *(v12 + 4 * v10) != v6 || *v18)
      {
        v10 = (v10 + v17++) & v9;
        v18 = *(v11 + 8 * v10);
        if (!v18)
        {
          return result;
        }
      }

      v24 = v10;
      v23 = *a1;
    }

    if (v24 != -1)
    {
      *(v23 + 8 * v24) = -8;
      result = vadd_s32(*(a1 + 12), 0x1FFFFFFFFLL);
      *(a1 + 12) = result;
    }
  }

  return result;
}

uint64_t llvm::StringMapImpl::RehashTable(llvm::StringMapImpl *this, uint64_t a2)
{
  v2 = a2;
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (3 * v4 < 4 * v3)
  {
    v6 = this;
    v4 *= 2;
  }

  else
  {
    if (v4 - (v3 + *(this + 4)) > v4 >> 3)
    {
      return a2;
    }

    v6 = this;
  }

  Table = createTable(v4);
  v8 = *v6;
  v9 = *(v6 + 2);
  if (v9)
  {
    v10 = 0;
    v11 = v4 - 1;
    v12 = v2;
    do
    {
      v13 = v8[v10];
      if (v13 != -8 && v13 != 0)
      {
        v15 = *(&v8[v9 + 1] + v10);
        v16 = v15 & v11;
        if (Table[v16])
        {
          v17 = 1;
          do
          {
            v18 = v16 + v17++;
            v16 = v18 & v11;
          }

          while (Table[v16]);
        }

        Table[v16] = v13;
        *(&Table[v4 + 1] + v16) = v15;
        if (v10 == v12)
        {
          v2 = v16;
        }

        else
        {
          v2 = v2;
        }
      }

      ++v10;
    }

    while (v10 != v9);
  }

  free(v8);
  *v6 = Table;
  *(v6 + 2) = v4;
  *(v6 + 4) = 0;
  return v2;
}

void *llvm::StringSaver::save(void ***a1, const void *a2, size_t a3)
{
  v4 = *a1;
  v5 = a3 + 1;
  v4[10] = v4[10] + v5;
  v6 = *v4;
  v7 = *v4 + v5;
  if (*v4)
  {
    v8 = v7 > v4[1];
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v10 = a2;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v4, v5, v5, 0);
    a2 = v10;
    v6 = Slow;
    if (!a3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *v4 = v7;
  if (a3)
  {
LABEL_6:
    memcpy(v6, a2, a3);
  }

LABEL_7:
  *(v6 + a3) = 0;
  return v6;
}

uint64_t llvm::StringRef::compare_insensitive(unsigned __int8 **a1, unsigned __int8 *a2, unint64_t a3)
{
  v3 = a1[1];
  if (a3 >= v3)
  {
    v4 = a1[1];
  }

  else
  {
    v4 = a3;
  }

  if (v4)
  {
    v5 = *a1;
    while (1)
    {
      v7 = *v5++;
      v6 = v7;
      v8 = v7 + 32;
      v9 = v7 - 65 >= 0x1A;
      v11 = *a2++;
      v10 = v11;
      if (!v9)
      {
        v6 = v8;
      }

      if (v10 - 65 < 0x1A)
      {
        v10 += 32;
      }

      if (v6 != v10)
      {
        break;
      }

      if (!--v4)
      {
        goto LABEL_12;
      }
    }

    if (v6 < v10)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  else
  {
LABEL_12:
    v12 = v3 == a3;
    if (v3 < a3)
    {
      v13 = -1;
    }

    else
    {
      v13 = 1;
    }

    if (v12)
    {
      return 0;
    }

    else
    {
      return v13;
    }
  }
}

BOOL llvm::StringRef::starts_with_insensitive(unsigned __int8 **a1, unsigned __int8 *a2, unint64_t a3)
{
  if (a1[1] < a3)
  {
    return 0;
  }

  if (!a3)
  {
    return 1;
  }

  v4 = *a1;
  v5 = a3 - 1;
  do
  {
    v7 = *v4++;
    v6 = v7;
    v8 = v7 + 32;
    if ((v7 - 65) >= 0x1A)
    {
      v9 = v6;
    }

    else
    {
      v9 = v8;
    }

    v11 = *a2++;
    v10 = v11;
    v12 = v11 + 32;
    if ((v11 - 65) >= 0x1A)
    {
      v13 = v10;
    }

    else
    {
      v13 = v12;
    }

    v15 = v5-- != 0;
    result = v9 == v13;
  }

  while (v9 == v13 && v15);
  return result;
}

uint64_t llvm::StringRef::find(uint64_t *a1, unsigned __int8 *a2, size_t a3, unint64_t a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  v5 = v4 >= a4;
  v6 = v4 - a4;
  if (!v5)
  {
    return -1;
  }

  if (!a3)
  {
    return a4;
  }

  if (v6 < a3)
  {
    return -1;
  }

  v8 = *a1;
  v9 = (*a1 + a4);
  v10 = a3 - 1;
  if (a3 == 1)
  {
    v11 = memchr(v9, *a2, v6);
    if (v11)
    {
      return v11 - v8;
    }

    else
    {
      return -1;
    }
  }

  v12 = &v9[v6 - a3];
  v13 = a3 - 2;
  if (a3 == 2)
  {
    result = -1;
    while (*(v8 + a4) != *a2)
    {
      ++a4;
      if (v8 + a4 - 1 >= v12)
      {
        return result;
      }
    }

    return a4;
  }

  if (a3 > 0xFF || v6 <= 0xF)
  {
    while (1)
    {
      v26 = a4;
      v27 = a2;
      v28 = a3;
      if (!memcmp((v8 + a4), a2, a3))
      {
        break;
      }

      a4 = v26 + 1;
      result = -1;
      a2 = v27;
      a3 = v28;
      if (v8 + v26 >= v12)
      {
        return result;
      }
    }

    return v26;
  }

  else
  {
    v14 = v12 + 1;
    v30 = vdupq_n_s8(a3);
    v31 = v30;
    v29[12] = v30;
    v29[13] = v30;
    v29[10] = v30;
    v29[11] = v30;
    v29[8] = v30;
    v29[9] = v30;
    v29[6] = v30;
    v29[7] = v30;
    v29[4] = v30;
    v29[5] = v30;
    v29[2] = v30;
    v29[3] = v30;
    v15 = v10 & 0xFFFFFFFFFFFFFFFELL;
    v16 = a2 + 1;
    v17 = v10 & 0xFFFFFFFFFFFFFFFELL;
    v29[0] = v30;
    v29[1] = v30;
    do
    {
      *(v29 + *(v16 - 1)) = v13 + 1;
      v18 = *v16;
      v16 += 2;
      *(v29 + v18) = v13;
      v13 -= 2;
      v17 -= 2;
    }

    while (v17);
    if (v10 != v15)
    {
      v19 = v15 + 1;
      do
      {
        *(v29 + a2[v15]) = v10 - v15;
        v15 = v19++;
      }

      while (v10 != v15);
    }

    v20 = a2[v10];
    while (1)
    {
      v21 = v9[v10];
      if (v21 == v20)
      {
        v22 = v9;
        v23 = a2;
        v24 = memcmp(v9, a2, v10);
        a2 = v23;
        v25 = v24;
        v9 = v22;
        if (!v25)
        {
          break;
        }
      }

      v9 += *(v29 + v21);
      if (v9 >= v14)
      {
        return -1;
      }
    }

    return &v22[-v8];
  }
}

uint64_t llvm::StringRef::find_first_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v7 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  v5 = a1[1];
  if (v5 <= a4)
  {
    return -1;
  }

  while (((*(&v7 + ((*(*a1 + a4) >> 3) & 0x18)) >> *(*a1 + a4)) & 1) == 0)
  {
    if (v5 == ++a4)
    {
      return -1;
    }
  }

  return a4;
}

unint64_t llvm::StringRef::find_first_not_of(llvm::StringRef *this, unsigned __int8 a2, unint64_t a3)
{
  v3 = *(this + 1);
  if (v3 <= a3)
  {
    return -1;
  }

  while (*(*this + a3) == a2)
  {
    if (v3 == ++a3)
    {
      return -1;
    }
  }

  return a3;
}

uint64_t llvm::StringRef::find_first_not_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v7 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  v5 = a1[1];
  if (v5 <= a4)
  {
    return -1;
  }

  while (((*(&v7 + ((*(*a1 + a4) >> 3) & 0x18)) >> *(*a1 + a4)) & 1) != 0)
  {
    if (v5 == ++a4)
    {
      return -1;
    }
  }

  return a4;
}

uint64_t llvm::StringRef::find_last_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v10 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  if (a1[1] >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a1[1];
  }

  while (v5)
  {
    v6 = v5 - 1;
    v7 = *(*a1 + v5 - 1);
    v8 = *(&v10 + ((v7 >> 3) & 0x18)) >> v7;
    v5 = v6;
    if (v8)
    {
      return v6;
    }
  }

  return -1;
}

uint64_t llvm::StringRef::find_last_not_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v10 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  if (a1[1] >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a1[1];
  }

  while (v5)
  {
    v6 = v5 - 1;
    v7 = *(*a1 + v5 - 1);
    v8 = *(&v10 + ((v7 >> 3) & 0x18)) >> v7;
    v5 = v6;
    if ((v8 & 1) == 0)
    {
      return v6;
    }
  }

  return -1;
}

void llvm::StringRef::split(__int128 *a1, uint64_t a2, unsigned __int8 *a3, size_t a4, int a5, char a6)
{
  v29 = *a1;
  if (a5)
  {
    v8 = a5;
    v11 = *(&v29 + 1);
    if (a6)
    {
      do
      {
        v12 = llvm::StringRef::find(&v29, a3, a4, 0);
        if (v12 == -1)
        {
          break;
        }

        if (v12 >= v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = v12;
        }

        v14 = v29;
        v15 = *(a2 + 8);
        if (v15 >= *(a2 + 12))
        {
          v18 = v12;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v15 + 1, 16);
          v12 = v18;
          v15 = *(a2 + 8);
        }

        v16 = (*a2 + 16 * v15);
        *v16 = v14;
        v16[1] = v13;
        ++*(a2 + 8);
        v17 = v12 + a4;
        if (v11 < v12 + a4)
        {
          v17 = v11;
        }

        v11 -= v17;
        *&v29 = v14 + v17;
        *(&v29 + 1) = v11;
        --v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        v21 = llvm::StringRef::find(&v29, a3, a4, 0);
        if (v21)
        {
          if (v21 == -1)
          {
            break;
          }

          if (v21 >= v11)
          {
            v22 = v11;
          }

          else
          {
            v22 = v21;
          }

          v19 = v29;
          v23 = *(a2 + 8);
          if (v23 >= *(a2 + 12))
          {
            v25 = v21;
            llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v23 + 1, 16);
            v21 = v25;
            v23 = *(a2 + 8);
          }

          v24 = (*a2 + 16 * v23);
          *v24 = v19;
          v24[1] = v22;
          ++*(a2 + 8);
        }

        else
        {
          v19 = v29;
        }

        v20 = v21 + a4;
        if (v11 < v21 + a4)
        {
          v20 = v11;
        }

        v11 -= v20;
        *&v29 = v19 + v20;
        *(&v29 + 1) = v11;
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    v11 = *(&v29 + 1);
  }

  if ((a6 & 1) != 0 || v11)
  {
    v26 = v29;
    v27 = *(a2 + 8);
    if (v27 >= *(a2 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v27 + 1, 16);
      LODWORD(v27) = *(a2 + 8);
    }

    v28 = (*a2 + 16 * v27);
    *v28 = v26;
    v28[1] = v11;
    ++*(a2 + 8);
  }
}

uint64_t llvm::consumeUnsignedInteger(llvm *this, llvm::StringRef *a2, unint64_t *a3, unint64_t *a4)
{
  v4 = *(this + 1);
  if (a2)
  {
    if (!v4)
    {
      return 1;
    }

    goto LABEL_3;
  }

  if (v4 < 2)
  {
    LODWORD(a2) = 10;
    if (!v4)
    {
      return 1;
    }

    goto LABEL_3;
  }

  v12 = *this;
  v13 = **this;
  if ((v13 - 65) >= 0x1A)
  {
    v14 = **this;
  }

  else
  {
    v14 = v13 + 32;
  }

  if (v14 != 48)
  {
LABEL_31:
    if (*v12 == 28464)
    {
      LODWORD(a2) = 8;
      v4 -= 2;
      *this = v12 + 2;
      *(this + 1) = v4;
      if (!v4)
      {
        return 1;
      }
    }

    else if (v13 == 48 && (v17 = v12[1], v16 = v12 + 1, (v17 - 48) <= 9))
    {
      LODWORD(a2) = 8;
      --v4;
      *this = v16;
      *(this + 1) = v4;
      if (!v4)
      {
        return 1;
      }
    }

    else
    {
      LODWORD(a2) = 10;
    }

    goto LABEL_3;
  }

  v15 = v12[1];
  if ((v15 - 65) < 0x1A)
  {
    v15 += 32;
  }

  if (v15 != 98)
  {
    if (v15 == 120)
    {
      LODWORD(a2) = 16;
      v4 -= 2;
      *this = v12 + 2;
      *(this + 1) = v4;
      if (!v4)
      {
        return 1;
      }

      goto LABEL_3;
    }

    goto LABEL_31;
  }

  LODWORD(a2) = 2;
  v4 -= 2;
  *this = v12 + 2;
  *(this + 1) = v4;
  if (!v4)
  {
    return 1;
  }

LABEL_3:
  v5 = 0;
  v6 = *this;
  *a3 = 0;
  v7 = v4;
  do
  {
    if (*v6 < 48)
    {
      break;
    }

    v8 = *v6;
    if (v8 >= 0x3A)
    {
      if (v8 < 0x61)
      {
        if (v8 - 65 > 0x19)
        {
          break;
        }

        v9 = v8 - 55;
        if (v9 >= a2)
        {
          break;
        }
      }

      else
      {
        if (v8 >= 0x7B)
        {
          break;
        }

        v9 = v8 - 87;
        if (v9 >= a2)
        {
          break;
        }
      }
    }

    else
    {
      v9 = v8 - 48;
      if (v9 >= a2)
      {
        break;
      }
    }

    v10 = v5 * a2 + v9;
    *a3 = v10;
    if (v10 / a2 < v5)
    {
      return 1;
    }

    ++v6;
    v5 = v10;
    --v7;
  }

  while (v7);
  if (v4 != v7)
  {
    *this = v6;
    *(this + 1) = v7;
    return 0;
  }

  return 1;
}

uint64_t llvm::getAsUnsignedInteger(uint64_t a1, uint64_t a2, llvm::StringRef *a3, unint64_t *a4)
{
  v5 = a1;
  v6 = a2;
  LODWORD(result) = llvm::consumeUnsignedInteger(&v5, a3, a4, a4);
  if (v6)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

BOOL llvm::getAsSignedInteger(_BYTE *a1, uint64_t a2, llvm::StringRef *a3, unint64_t *a4)
{
  *&v7 = a1;
  *(&v7 + 1) = a2;
  v9 = 0;
  if (a2 && *a1 == 45)
  {
    *&v8 = a1 + 1;
    *(&v8 + 1) = a2 - 1;
    if ((llvm::consumeUnsignedInteger(&v8, a3, &v9, a4) & 1) == 0 && v9 < 0x8000000000000001)
    {
      v7 = v8;
      v5 = -v9;
LABEL_8:
      *a4 = v5;
      return *(&v7 + 1) != 0;
    }
  }

  else if ((llvm::consumeUnsignedInteger(&v7, a3, &v9, a4) & 1) == 0)
  {
    v5 = v9;
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  return 1;
}

BOOL llvm::StringRef::consumeInteger(llvm::StringRef *this, unsigned int a2, void **a3)
{
  v6 = *this;
  v5 = *(this + 1);
  if (!a2)
  {
    if (v5 < 2)
    {
      v7 = 10;
      if (!v5)
      {
        return 1;
      }

      goto LABEL_24;
    }

    v8 = *v6;
    if ((v8 - 65) >= 0x1A)
    {
      v9 = *v6;
    }

    else
    {
      v9 = v8 + 32;
    }

    if (v9 == 48)
    {
      v10 = v6[1];
      if ((v10 - 65) < 0x1A)
      {
        v10 += 32;
      }

      if (v10 == 98)
      {
        v6 += 2;
        v7 = 2;
        v5 -= 2;
        if (v5)
        {
          goto LABEL_24;
        }

        return 1;
      }

      if (v10 == 120)
      {
        v6 += 2;
        v7 = 16;
        v5 -= 2;
        if (!v5)
        {
          return 1;
        }

        goto LABEL_24;
      }
    }

    if (*v6 != 28464)
    {
      if (v8 == 48 && v6[1] - 48 <= 9)
      {
        v7 = 8;
        ++v6;
        if (!--v5)
        {
          return 1;
        }
      }

      else
      {
        v7 = 10;
      }

      goto LABEL_24;
    }

    v6 += 2;
    v7 = 8;
    v5 -= 2;
    if (v5)
    {
      goto LABEL_24;
    }

    return 1;
  }

  v7 = a2;
  if (!v5)
  {
    return 1;
  }

LABEL_24:
  v11 = 0;
  while (v6[v11] == 48)
  {
    if (v5 == ++v11)
    {
      v11 = -1;
      break;
    }
  }

  if (v11 >= v5)
  {
    v11 = v5;
  }

  v12 = &v6[v11];
  v13 = v5 - v11;
  if (v5 == v11)
  {
    if (*(a3 + 2) >= 0x41u && *a3)
    {
      operator delete[](*a3);
    }

    result = 0;
    *a3 = 0;
    *(a3 + 2) = 64;
    *this = v12;
    *(this + 1) = 0;
  }

  else
  {
    v14 = v11 - v5;
    v15 = v5 - v11;
    v16 = -1;
    do
    {
      v17 = 1 << ++v16;
      v14 += v15;
    }

    while (1 << v16 < v7);
    v18 = *(a3 + 2);
    if (v14 >= v18)
    {
      if (v14 > v18)
      {
        llvm::APInt::zext(a3, v14, &v40);
        if (*(a3 + 2) >= 0x41u && *a3)
        {
          operator delete[](*a3);
        }

        *a3 = v40;
        v18 = v41;
        *(a3 + 2) = v41;
      }
    }

    else
    {
      v14 = *(a3 + 2);
    }

    v41 = 1;
    v40 = 0;
    v39 = 1;
    __p = 0;
    if (v17 != v7)
    {
      v37 = v14;
      if (v14 > 0x40)
      {
        llvm::APInt::initSlowCase(&v36, v7, 0);
        v40 = v36;
        v41 = v37;
        v37 = v14;
        llvm::APInt::initSlowCase(&v36, 0, 0);
      }

      else
      {
        v20 = 0xFFFFFFFFFFFFFFFFLL >> -v14;
        if (!v14)
        {
          LODWORD(v20) = 0;
        }

        v40 = (v20 & v7);
        v41 = v37;
        v37 = v14;
        v36 = 0;
      }

      __p = v36;
      v39 = v37;
      v18 = *(a3 + 2);
    }

    if (v18 <= 0x40)
    {
      *a3 = 0;
      if (v17 != v7)
      {
        goto LABEL_55;
      }

      while (1)
      {
LABEL_73:
        if (*v12 < 48)
        {
          goto LABEL_93;
        }

        v26 = *v12;
        if (v26 >= 0x3A)
        {
          if (v26 <= 0x60)
          {
            if (v26 - 65 >= 0x1A)
            {
              goto LABEL_93;
            }

            v27 = -55;
          }

          else
          {
            if (v26 > 0x7A)
            {
              goto LABEL_93;
            }

            v27 = -87;
          }
        }

        else
        {
          v27 = -48;
        }

        v28 = v27 + v26;
        if (v28 >= v7)
        {
          goto LABEL_93;
        }

        v29 = *(a3 + 2);
        if (v29 <= 0x40)
        {
          break;
        }

        llvm::APInt::shlSlowCase(a3, v16);
        v29 = *(a3 + 2);
        if (v29 >= 0x41)
        {
          **a3 |= v28;
          ++v12;
          if (!--v13)
          {
            goto LABEL_93;
          }
        }

        else
        {
LABEL_89:
          if (v29)
          {
            v32 = 0xFFFFFFFFFFFFFFFFLL >> -v29;
          }

          else
          {
            v32 = 0;
          }

          *a3 = ((*a3 | v28) & v32);
          ++v12;
          if (!--v13)
          {
            goto LABEL_93;
          }
        }
      }

      v30 = *a3 << v16;
      if (v29 == v16)
      {
        v30 = 0;
      }

      v31 = 0xFFFFFFFFFFFFFFFFLL >> -v29;
      if (!v29)
      {
        v31 = 0;
      }

      *a3 = (v30 & v31);
      goto LABEL_89;
    }

    **a3 = 0;
    bzero(*a3 + 8, (((v18 + 63) >> 3) - 8) & 0xFFFFFFF8);
    if (v17 == v7)
    {
      goto LABEL_73;
    }

LABEL_55:
    while (*v12 >= 48)
    {
      v21 = *v12;
      if (v21 >= 0x3A)
      {
        if (v21 < 0x61)
        {
          if (v21 - 65 > 0x19)
          {
            break;
          }

          v22 = -55;
        }

        else
        {
          if (v21 >= 0x7B)
          {
            break;
          }

          v22 = -87;
        }
      }

      else
      {
        v22 = -48;
      }

      v23 = v22 + v21;
      if (v23 >= v7)
      {
        break;
      }

      llvm::APInt::operator*=(a3, &v40);
      v24 = v39;
      if (v39 > 0x40)
      {
        *__p = v23;
        bzero(__p + 8, (((v24 + 63) >> 3) - 8) & 0xFFFFFFF8);
        llvm::APInt::operator+=(a3, &__p);
        ++v12;
        if (!--v13)
        {
          break;
        }
      }

      else
      {
        if (v39)
        {
          v25 = 0xFFFFFFFFFFFFFFFFLL >> -v39;
        }

        else
        {
          v25 = 0;
        }

        __p = (v25 & v23);
        llvm::APInt::operator+=(a3, &__p);
        ++v12;
        if (!--v13)
        {
          break;
        }
      }
    }

LABEL_93:
    v33 = *(this + 1);
    result = v33 == v13;
    if (v33 != v13)
    {
      *this = v12;
      *(this + 1) = v13;
    }

    if (v39 >= 0x41 && __p)
    {
      v34 = v33 == v13;
      operator delete[](__p);
      result = v34;
    }

    if (v41 >= 0x41)
    {
      if (v40)
      {
        v35 = result;
        operator delete[](v40);
        return v35;
      }
    }
  }

  return result;
}

uint64_t llvm::StringRef::getAsInteger(llvm::StringRef *this, unsigned int a2, void **a3)
{
  v4 = *this;
  LODWORD(result) = llvm::StringRef::consumeInteger(&v4, a2, a3);
  if (*(&v4 + 1))
  {
    return 1;
  }

  else
  {
    return result;
  }
}

uint64_t llvm::StringRef::getAsDouble(llvm::StringRef *this, double *a2, int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::IEEEFloat::IEEEFloat(&v17, 0.0);
  v7 = llvm::APFloatBase::IEEEdouble(v6);
  llvm::APFloat::Storage::Storage(v16, &v17, v7);
  llvm::detail::IEEEFloat::~IEEEFloat(&v17);
  llvm::APFloat::convertFromString(&v15, *this, *(this + 1), 1, &v17);
  if ((v18 & 1) == 0)
  {
    if (v17)
    {
      v10 = 1;
      if ((v17 & 0x10) == 0 || !a3)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v10 = 0;
    *a2 = llvm::APFloat::convertToDouble(&v15);
    goto LABEL_10;
  }

  v9 = v17;
  v17 = 0;
  if (!v9)
  {
    goto LABEL_9;
  }

  v13 = v9;
  llvm::handleErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v13, &v14);
  v8 = v13;
  if (v13)
  {
    v8 = (*(*v13 + 8))(v13);
  }

  v10 = 1;
LABEL_10:
  if (v18)
  {
    v8 = v17;
    v17 = 0;
    if (v8)
    {
      v8 = (*(*v8 + 8))(v8);
    }
  }

  v11 = v16[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v8) == v11)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v16);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v16);
  }

  return v10;
}

uint64_t llvm::ComputeMappedEditDistance<char,unsigned int llvm::ComputeEditDistance<char>(llvm::ArrayRef<char>,llvm::ArrayRef<char>,BOOL,unsigned int)::{lambda(char const&)#1}>(uint64_t a1, unint64_t a2, unsigned __int8 *a3, unint64_t a4, int a5, unsigned int a6)
{
  v71[32] = *MEMORY[0x1E69E9840];
  if (a6)
  {
    v6 = a4 - a2;
    if (a2 > a4)
    {
      v6 = a2 - a4;
    }

    if (v6 > a6)
    {
      return a6 + 1;
    }
  }

  v69 = v71;
  v70 = 0x4000000000;
  v8 = a4 + 1;
  if (a4 == -1)
  {
    if (!a2)
    {
      return HIDWORD(v70);
    }

    v7 = a6 + 1;
    v9 = v71;
    goto LABEL_19;
  }

  v10 = a6;
  v11 = a2;
  v12 = a4;
  if (v8 < 0x41)
  {
    v16 = 0;
    v9 = v71;
    v17 = a4 + 1;
    goto LABEL_13;
  }

  v13 = a1;
  v14 = a3;
  v15 = a5;
  llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v71, a4 + 1, 4);
  a5 = v15;
  a1 = v13;
  a3 = v14;
  v16 = v70;
  v9 = v69;
  v17 = v8 - v70;
  if (v8 != v70)
  {
LABEL_13:
    v18 = a1;
    v19 = a3;
    v20 = a5;
    bzero(v9 + 4 * v16, 4 * v17);
    a5 = v20;
    a1 = v18;
    a3 = v19;
  }

  LODWORD(v70) = v8;
  a4 = v12;
  a2 = v11;
  a6 = v10;
  if (v8 >= 2)
  {
    v21 = 1;
    do
    {
      *(v9 + v21) = v21;
      ++v21;
    }

    while (v70 > v21);
  }

  if (!v11)
  {
    goto LABEL_95;
  }

  v7 = v10 + 1;
  if (v12)
  {
LABEL_19:
    v22 = 2;
    if (v8 > 2)
    {
      v22 = v8;
    }

    if (a5)
    {
      if (a6)
      {
        v23 = 1;
        while (1)
        {
          v24 = a3;
          *v9 = v23;
          v25 = v23;
          v26 = 1;
          v27 = v23 - 1;
          v28 = v23;
          do
          {
            v29 = *v24++;
            if (*(a1 + v23 - 1) != v29)
            {
              ++v27;
            }

            v30 = *(v9 + v26);
            if (v30 < v25)
            {
              v25 = *(v9 + v26);
            }

            if (v25 + 1 < v27)
            {
              ++v25;
            }

            else
            {
              v25 = v27;
            }

            *(v9 + v26) = v25;
            if (v25 < v28)
            {
              v28 = v25;
            }

            ++v26;
            v27 = v30;
          }

          while (v22 != v26);
          if (v28 > a6)
          {
            goto LABEL_96;
          }

          if (++v23 > a2)
          {
            goto LABEL_95;
          }
        }
      }

      v48 = 2;
      if (a2 + 1 > 2)
      {
        v48 = a2 + 1;
      }

      v49 = 1;
      do
      {
        *v9 = v49;
        v50 = a3;
        v51 = v49;
        v52 = 1;
        v53 = v49 - 1;
        do
        {
          v54 = *v50++;
          if (*(a1 + v49 - 1) != v54)
          {
            ++v53;
          }

          v55 = *(v9 + v52);
          if (v55 < v51)
          {
            v51 = *(v9 + v52);
          }

          if (v51 + 1 < v53)
          {
            ++v51;
          }

          else
          {
            v51 = v53;
          }

          *(v9 + v52++) = v51;
          v53 = v55;
        }

        while (v22 != v52);
        ++v49;
      }

      while (v49 != v48);
    }

    else
    {
      if (a6)
      {
        v31 = v22 - 1;
        v32 = 1;
        while (1)
        {
          v33 = a3;
          *v9 = v32;
          v34 = v9 + 1;
          v35 = v31;
          v36 = v32;
          v37 = v32 - 1;
          v38 = v32;
          do
          {
            v39 = *v34;
            v40 = *v33++;
            if (*(a1 + v32 - 1) != v40)
            {
              v41 = v34 - 1;
              if (v39 < v36)
              {
                v41 = v34;
              }

              v37 = *v41 + 1;
            }

            *v34++ = v37;
            if (v37 < v38)
            {
              v38 = v37;
            }

            v36 = v37;
            v37 = v39;
            --v35;
          }

          while (v35);
          if (v38 > a6)
          {
            break;
          }

          if (++v32 > a2)
          {
            goto LABEL_95;
          }
        }

LABEL_96:
        if (v9 == v71)
        {
          return v7;
        }

LABEL_97:
        free(v9);
        return v7;
      }

      v56 = 2;
      if (a2 + 1 > 2)
      {
        v56 = a2 + 1;
      }

      v57 = v22 - 1;
      v58 = 1;
      do
      {
        v59 = a3;
        *v9 = v58;
        v60 = v9 + 1;
        v61 = v57;
        v62 = v58;
        v63 = v58 - 1;
        do
        {
          v64 = *v60;
          v65 = *v59++;
          if (*(a1 + v58 - 1) != v65)
          {
            v66 = v60 - 1;
            if (v64 < v62)
            {
              v66 = v60;
            }

            v63 = *v66 + 1;
          }

          *v60++ = v63;
          v62 = v63;
          v63 = v64;
          --v61;
        }

        while (v61);
        ++v58;
      }

      while (v58 != v56);
    }

LABEL_95:
    v7 = *(v9 + a4);
    goto LABEL_96;
  }

  if (!v10)
  {
    v67 = 2;
    if (a2 + 1 > 2)
    {
      v67 = a2 + 1;
    }

    v47 = v67 - 1;
LABEL_94:
    *v9 = v47;
    goto LABEL_95;
  }

  v42 = (a2 != 0) - 1;
  if (__PAIR128__(v42, a2 - 1) >= v10)
  {
    v43 = 0;
  }

  else
  {
    v43 = (a2 != 0) - 1;
  }

  if (__PAIR128__(v42, a2 - 1) >= v10)
  {
    v44 = v10;
  }

  else
  {
    v44 = a2 - 1;
  }

  v45 = 1;
  if (v44 >= 2 && v44 ^ 0xFFFFFFFF | v43)
  {
    v46 = v44 & 0xFFFFFFFE;
    v45 = v44 | 1;
    do
    {
      v46 -= 2;
    }

    while (v46);
  }

  v47 = v45 - 1;
  while (v45 <= v10)
  {
    ++v45;
    ++v47;
    if (v45 > a2)
    {
      goto LABEL_94;
    }
  }

  *v9 = v45;
  if (v9 != v71)
  {
    goto LABEL_97;
  }

  return v7;
}