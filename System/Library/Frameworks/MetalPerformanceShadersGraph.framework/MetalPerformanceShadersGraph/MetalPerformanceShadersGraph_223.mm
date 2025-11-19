uint64_t llvm::sys::fs::create_directory(uint64_t a1, char a2, mode_t a3)
{
  v11[16] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = xmmword_1E0971D70;
  v5 = llvm::Twine::toNullTerminatedStringRef(a1, &v9);
  if (mkdir(v5, a3) == -1 && (*__error() != 17 || (a2 & 1) == 0))
  {
    v6 = *__error();
    std::generic_category();
    v7 = v9;
    if (v9 == v11)
    {
      return v6;
    }

    goto LABEL_5;
  }

  std::system_category();
  v6 = 0;
  v7 = v9;
  if (v9 != v11)
  {
LABEL_5:
    free(v7);
  }

  return v6;
}

unint64_t llvm::sys::fs::openFileForRead(uint64_t a1, int *a2, int a3, void *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = llvm::sys::fs::openFile(a1, a2, 2, 1, a3, 438);
  v7 = v6;
  if (v6)
  {
    v8 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    if (a4)
    {
      a4[1] = 0;
      if (fcntl(*a2, 50, __s) != -1)
      {
        v10 = strlen(__s);
        v11 = a4[1];
        if (a4[2] < v11 + v10)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(a4, a4 + 3, v11 + v10, 1);
          v11 = a4[1];
        }

        if (v10)
        {
          memcpy((*a4 + v11), __s, v10);
          v11 = a4[1];
        }

        a4[1] = v11 + v10;
      }
    }

    std::system_category();
    v8 = 0;
  }

  return v8 | v7;
}

uint64_t llvm::sys::fs::is_directory(llvm::sys::fs *this, const llvm::Twine *a2, BOOL *a3)
{
  v12[16] = *MEMORY[0x1E69E9840];
  v10 = v12;
  v11 = xmmword_1E0971D70;
  v4 = llvm::Twine::toNullTerminatedStringRef(this, &v10);
  if (stat(v4, &v9))
  {
    v5 = *__error();
    std::generic_category();
    LOBYTE(v6) = 0;
    v7 = v10;
    if (v10 == v12)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = (v9.st_mode >> 12 != 7) & (0x1000u >> ((v9.st_mode >> 12) ^ 8));
  std::system_category();
  v5 = 0;
  v7 = v10;
  if (v10 != v12)
  {
LABEL_3:
    free(v7);
  }

LABEL_4:
  if (!v5)
  {
    *a2 = v6;
    std::system_category();
  }

  return v5;
}

void llvm::sys::fs::directory_entry::replace_filename(uint64_t a1, void **a2, int a3, __int128 *a4)
{
  v31[16] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 23);
  if (v8 >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  if (v8 >= 0)
  {
    v10 = *(a1 + 23);
  }

  else
  {
    v10 = *(a1 + 8);
  }

  v12 = 0;
  if (v10 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v10;
  }

  if (v11 == -1)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  if (v11 == -1)
  {
    v15 = 0;
  }

  else
  {
    v15 = v9;
  }

  __src = v31;
  *__len = xmmword_1E0971D70;
  if (v14 >= 0x81)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(&__src, v31, v14, 1);
    v12 = __len[0];
  }

  if (v14)
  {
    memcpy(__src + v12, v15, v14);
    v12 = __len[0];
  }

  __len[0] = v12 + v14;
  v28 = 257;
  v25 = 257;
  v23 = 257;
  llvm::sys::path::append(&__src, 0, a2, &__dst, &v24, &v22);
  v16 = __len[0];
  if (__len[0] >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v17 = __src;
  if (__len[0] >= 0x17)
  {
    if ((__len[0] | 7) == 0x17)
    {
      v21 = 25;
    }

    else
    {
      v21 = (__len[0] | 7) + 1;
    }

    p_dst = operator new(v21);
    *(&__dst + 1) = v16;
    v27 = v21 | 0x8000000000000000;
    *&__dst = p_dst;
LABEL_31:
    memmove(p_dst, v17, v16);
    *(p_dst + v16) = 0;
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_32;
  }

  HIBYTE(v27) = __len[0];
  p_dst = &__dst;
  if (__len[0])
  {
    goto LABEL_31;
  }

  LOBYTE(__dst) = 0;
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

LABEL_32:
  operator delete(*a1);
LABEL_24:
  *a1 = __dst;
  *(a1 + 16) = v27;
  *(a1 + 24) = a3;
  v19 = *a4;
  v20 = a4[2];
  *(a1 + 48) = a4[1];
  *(a1 + 64) = v20;
  *(a1 + 32) = v19;
  if (__src != v31)
  {
    free(__src);
  }
}

ssize_t llvm::sys::fs::readNativeFileToEOF@<X0>(int a1@<W0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = a2[1];
  if (a3 >= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFFLL;
  }

  else
  {
    v9 = a3;
  }

  v10 = a2[1];
  v11 = v8 + a3;
  v12 = v8 > v8 + a3;
  if (v8 != v8 + a3)
  {
LABEL_5:
    if (!v12 && a2[2] < v11)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v11, 1);
    }

    a2[1] = v11;
  }

  while (1)
  {
    v13 = *a2;
    while (1)
    {
      *__error() = 0;
      result = read(a1, (v13 + v10), v9);
      if (result != -1)
      {
        break;
      }

      if (*__error() != 4)
      {
        v16 = *__error();
        *&v19.__val_ = std::generic_category();
        result = llvm::errorCodeToError(v16, v19, &v18);
        v17 = v18;
        goto LABEL_17;
      }
    }

    if (!result)
    {
      break;
    }

    v10 += result;
    v15 = a2[1];
    v11 = v10 + a3;
    v12 = v15 > v10 + a3;
    if (v15 != v10 + a3)
    {
      goto LABEL_5;
    }
  }

  v17 = 0;
LABEL_17:
  *a4 = v17;
  a2[1] = v10;
  return result;
}

unint64_t llvm::sys::fs::getMainExecutable@<X0>(_BYTE *a1@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  bufsize = 1024;
  result = _NSGetExecutablePath(buf, &bufsize);
  if (result || (result = realpath_DARWIN_EXTSN(buf, __s)) == 0)
  {
    a1[23] = 0;
    *a1 = 0;
    return result;
  }

  result = strlen(__s);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v6 = result;
  if (result >= 0x17)
  {
    if ((result | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (result | 7) + 1;
    }

    v8 = operator new(v7);
    *(a1 + 1) = v6;
    *(a1 + 2) = v7 | 0x8000000000000000;
    *a1 = v8;
    a1 = v8;
  }

  else
  {
    a1[23] = result;
    if (!result)
    {
      goto LABEL_13;
    }
  }

  result = memcpy(a1, __s, v6);
LABEL_13:
  a1[v6] = 0;
  return result;
}

uint64_t llvm::sys::fs::set_current_path(llvm::sys::fs *this, const llvm::Twine *a2)
{
  v8[16] = *MEMORY[0x1E69E9840];
  v6 = v8;
  v7 = xmmword_1E0971D70;
  v2 = llvm::Twine::toNullTerminatedStringRef(this, &v6);
  if (chdir(v2) == -1)
  {
    v3 = *__error();
    std::generic_category();
    v4 = v6;
    if (v6 == v8)
    {
      return v3;
    }

    goto LABEL_3;
  }

  std::system_category();
  v3 = 0;
  v4 = v6;
  if (v6 != v8)
  {
LABEL_3:
    free(v4);
  }

  return v3;
}

uint64_t llvm::sys::fs::create_link(llvm::sys::fs *this, const llvm::Twine *a2, const llvm::Twine *a3)
{
  v14[16] = *MEMORY[0x1E69E9840];
  v12 = v14;
  v13 = xmmword_1E0971D70;
  v9 = v11;
  v10 = xmmword_1E0971D70;
  v4 = llvm::Twine::toNullTerminatedStringRef(a2, &v12);
  v5 = llvm::Twine::toNullTerminatedStringRef(this, &v9);
  if (symlink(v5, v4) != -1)
  {
    std::system_category();
    v6 = 0;
    v7 = v9;
    if (v9 == v11)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = *__error();
  std::generic_category();
  v7 = v9;
  if (v9 != v11)
  {
LABEL_3:
    free(v7);
  }

LABEL_4:
  if (v12 != v14)
  {
    free(v12);
  }

  return v6;
}

uint64_t llvm::sys::fs::remove(llvm::sys::fs *this, const llvm::Twine *a2)
{
  v2 = a2;
  v12[16] = *MEMORY[0x1E69E9840];
  v10 = v12;
  v11 = xmmword_1E0971D70;
  v3 = llvm::Twine::toNullTerminatedStringRef(this, &v10);
  if (lstat(v3, &v9))
  {
    if (*__error() != 2 || (v2 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = v9.st_mode & 0xF000;
    if (v6 != 0x4000 && v6 != 0x8000 && v6 != 40960)
    {
      v5 = 1;
LABEL_15:
      std::generic_category();
      v7 = v10;
      if (v10 == v12)
      {
        return v5;
      }

      goto LABEL_12;
    }

    if (remove(v3, v4) == -1 && (*__error() != 2 || (v2 & 1) == 0))
    {
LABEL_4:
      v5 = *__error();
      goto LABEL_15;
    }
  }

  std::system_category();
  v5 = 0;
  v7 = v10;
  if (v10 != v12)
  {
LABEL_12:
    free(v7);
  }

  return v5;
}

uint64_t llvm::sys::fs::is_local(llvm::sys::fs *this, const llvm::Twine *a2, BOOL *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  llvm::Twine::str(this, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v5 = statfs(p_p, &v10);
  v6 = v5;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_9:
    *a2 = (v10.f_flags & 0x1000) != 0;
    std::system_category();
    return 0;
  }

  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_6:
  v7 = *__error();
  std::generic_category();
  return v7;
}

uint64_t llvm::sys::fs::access(uint64_t a1, int a2)
{
  v11[16] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = xmmword_1E0971D70;
  v3 = llvm::Twine::toNullTerminatedStringRef(a1, &v9);
  if (!a2)
  {
LABEL_9:
    if (access(v3, a2) != -1)
    {
      goto LABEL_10;
    }

LABEL_13:
    v5 = *__error();
    std::generic_category();
    v6 = v9;
    if (v9 == v11)
    {
      return v5;
    }

    goto LABEL_11;
  }

  if (a2 != 2)
  {
    a2 = 2;
    goto LABEL_9;
  }

  v4 = v3;
  if (access(v3, 5) == -1)
  {
    goto LABEL_13;
  }

  if (stat(v4, &v8) || (v8.st_mode & 0xF000) != 0x8000)
  {
    std::generic_category();
    v5 = 13;
    v6 = v9;
    if (v9 == v11)
    {
      return v5;
    }

    goto LABEL_11;
  }

LABEL_10:
  std::system_category();
  v5 = 0;
  v6 = v9;
  if (v9 != v11)
  {
LABEL_11:
    free(v6);
  }

  return v5;
}

void llvm::sys::fs::expandTildeExpr(uint64_t *a1)
{
  v41[16] = *MEMORY[0x1E69E9840];
  v1 = a1[1];
  if (v1)
  {
    v2 = *a1;
    if (**a1 == 126)
    {
      v3 = v2 + 1;
      v4 = v1 - 1;
      if (v1 == 1)
      {
LABEL_7:
        v5 = -1;
      }

      else
      {
        v5 = 0;
        while (v3[v5] != 47)
        {
          if (v4 == ++v5)
          {
            goto LABEL_7;
          }
        }
      }

      if (v4 >= v5)
      {
        v6 = v5;
      }

      else
      {
        v6 = v1 - 1;
      }

      v7 = v6 + 1;
      if (v4 >= v6 + 1)
      {
        v8 = v6 + 1;
      }

      else
      {
        v8 = v1 - 1;
      }

      v39 = v41;
      v40 = xmmword_1E0971D70;
      if (!v6)
      {
        if (llvm::sys::path::home_directory(&v39))
        {
          **a1 = *v39;
          llvm::SmallVectorImpl<char>::insert<char *,void>(a1, *a1 + 1, v39 + 1, &v39[v40]);
        }

        goto LABEL_44;
      }

      v9 = sysconf(71);
      if (v9 >= 1)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0x4000;
      }

      v11 = operator new[](v10);
      bzero(v11, v10);
      if (v6 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v25 = v8;
      if (v6 >= 0x17)
      {
        v13 = v11;
        if ((v6 | 7) == 0x17)
        {
          v14 = 25;
        }

        else
        {
          v14 = (v6 | 7) + 1;
        }

        v12 = operator new(v14);
        v15 = v14 | 0x8000000000000000;
        v11 = v13;
        v7 = v6 + 1;
        __dst[1] = v6;
        v37 = v15;
        __dst[0] = v12;
      }

      else
      {
        HIBYTE(v37) = v6;
        v12 = __dst;
      }

      memmove(v12, v2 + 1, v6);
      *(v12 + v6) = 0;
      v35 = 0;
      if (v37 >= 0)
      {
        v16 = __dst;
      }

      else
      {
        v16 = __dst[0];
      }

      getpwnam_r(v16, &v38, v11, v10, &v35);
      if (!v35 || !v35->pw_dir)
      {
LABEL_41:
        if (SHIBYTE(v37) < 0)
        {
          operator delete(__dst[0]);
        }

        operator delete[](v11);
LABEL_44:
        if (v39 != v41)
        {
          free(v39);
        }

        return;
      }

      v17 = 0;
      v18 = &v3[v25];
      *&v40 = 0;
      v19 = v1 - (v25 + 1);
      if (*(&v40 + 1) < v19)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(&v39, v41, &v2[v1] - v18, 1);
        v17 = v40;
      }

      if (v4 > v7)
      {
        memcpy(&v39[v17], v18, &v2[v1] - v18);
        v17 = v40;
      }

      v20 = (v17 + v19);
      *&v40 = v17 + v19;
      a1[1] = 0;
      pw_dir = v35->pw_dir;
      v22 = strlen(pw_dir);
      v23 = a1;
      if (a1[2] >= v22)
      {
        v24 = 0;
        if (!v22)
        {
LABEL_40:
          v23[1] = v24 + v22;
          v34 = 261;
          v33[0] = v39;
          v33[1] = v20;
          v32 = 257;
          v30 = 257;
          v28 = 257;
          llvm::sys::path::append(v23, 0, v33, &v31, &v29, &v27);
          goto LABEL_41;
        }
      }

      else
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, v22, 1);
        v23 = a1;
        v24 = a1[1];
      }

      memcpy((*v23 + v24), pw_dir, v22);
      v23 = a1;
      v24 = a1[1];
      v20 = v40;
      goto LABEL_40;
    }
  }
}

uint64_t llvm::sys::fs::fillStatus(llvm::sys::fs *this, int *a2, const stat *a3, llvm::sys::fs::file_status *a4)
{
  if (this)
  {
    v5 = *__error();
    std::generic_category();
    result = v5;
    if (v5 == 2)
    {
      a3->st_atimespec.tv_sec = 0;
      *&a3->st_dev = 0u;
      *&a3->st_uid = 0u;
      a3->st_atimespec.tv_nsec = 0xFFFF00000001;
      LODWORD(a3->st_mtimespec.tv_sec) = 0;
      WORD2(a3->st_mtimespec.tv_sec) = 0;
      a3->st_mtimespec.tv_nsec = 0;
      return 2;
    }

    else
    {
      *(&a3->st_rdev + 1) = 0u;
      *&a3->st_dev = 0u;
      *&a3->st_uid = 0u;
      *(&a3->st_atimespec.tv_nsec + 4) = 0xFFFFLL;
      WORD2(a3->st_mtimespec.tv_sec) = 0;
      a3->st_mtimespec.tv_nsec = 0;
    }
  }

  else
  {
    v7 = a2[10];
    v8 = a2[14];
    v9 = *(a2 + 2);
    v10 = v9 & 0xFFF;
    v11 = v9 >> 12;
    if (v11 == 7)
    {
      v12 = 9;
    }

    else
    {
      v12 = dword_1E099EB64[v11 ^ 8];
    }

    v13 = *a2;
    v14 = *(a2 + 3);
    v15 = *(a2 + 1);
    v16 = *(a2 + 6);
    v17 = *(a2 + 12);
    v18 = *(a2 + 2);
    *&a3->st_dev = *(a2 + 4);
    a3->st_ino = v16;
    a3->st_uid = v7;
    a3->st_gid = v8;
    *&a3->st_rdev = v18;
    a3->st_atimespec.tv_sec = v17;
    LODWORD(a3->st_atimespec.tv_nsec) = v12;
    HIDWORD(a3->st_atimespec.tv_nsec) = v10;
    LODWORD(a3->st_mtimespec.tv_sec) = v13;
    WORD2(a3->st_mtimespec.tv_sec) = v14;
    a3->st_mtimespec.tv_nsec = v15;
    std::system_category();
    return 0;
  }

  return result;
}

uint64_t llvm::sys::fs::mapped_file_region::mapped_file_region(uint64_t a1, int a2, int a3, size_t a4, off_t a5, void *a6)
{
  *a1 = a4;
  *(a1 + 8) = 0;
  *(a1 + 16) = a3;
  if (a3 == 1)
  {
    v9 = 65;
  }

  else
  {
    v9 = 66;
  }

  v10 = a3 == 0;
  if (a3)
  {
    v11 = 3;
  }

  else
  {
    v11 = 1;
  }

  if (v10)
  {
    v12 = 24642;
  }

  else
  {
    v12 = v9;
  }

  v13 = mmap(0, a4, v11, v12, a2, a5);
  *(a1 + 8) = v13;
  if (v13 != -1)
  {
    v14 = std::system_category();
    *a6 = 0;
    a6[1] = v14;
    return a1;
  }

  v16 = *__error();
  v17 = std::generic_category();
  *a6 = v16;
  a6[1] = v17;
  if (!v16)
  {
    return a1;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return a1;
}

void *llvm::sys::fs::mapped_file_region::unmapImpl(llvm::sys::fs::mapped_file_region *this)
{
  result = *(this + 1);
  if (result)
  {
    return munmap(result, *this);
  }

  return result;
}

void *llvm::sys::fs::mapped_file_region::dontNeedImpl(llvm::sys::fs::mapped_file_region *this)
{
  result = *(this + 1);
  if (result)
  {
    return posix_madvise(result, *this, 4);
  }

  return result;
}

unint64_t llvm::sys::fs::detail::directory_iterator_construct(uint64_t a1, const void *a2, unint64_t a3, char a4)
{
  v25[16] = *MEMORY[0x1E69E9840];
  v23 = v25;
  v24 = xmmword_1E0971D70;
  if (a3 < 0x81)
  {
    v8 = 0;
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = a2;
  llvm::SmallVectorBase<unsigned long long>::grow_pod(&v23, v25, a3, 1);
  a2 = v7;
  v8 = v24;
  if (a3)
  {
LABEL_5:
    memcpy(&v23[v8], a2, a3);
    v8 = v24;
  }

LABEL_6:
  v9 = v8 + a3;
  *&v24 = v9;
  if ((v9 + 1) <= *(&v24 + 1))
  {
    v23[v9] = 0;
    v10 = opendir(v23);
    if (v10)
    {
      goto LABEL_8;
    }

LABEL_14:
    v12 = *__error();
    std::generic_category();
    v13 = v23;
    if (v23 == v25)
    {
      return v12;
    }

    goto LABEL_11;
  }

  llvm::SmallVectorBase<unsigned long long>::grow_pod(&v23, v25, v9 + 1, 1);
  v23[v24] = 0;
  v10 = opendir(v23);
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_8:
  *a1 = v10;
  v15.__r_.__value_.__r.__words[0] = ".";
  *&v16[8] = 259;
  v22 = 257;
  v20 = 257;
  v18 = 257;
  llvm::sys::path::append(&v23, 0, &v15, v21, &v19, &v17);
  v22 = 261;
  v21[0] = v23;
  v21[1] = v24;
  llvm::Twine::str(v21, &v15);
  *v16 = 9;
  v16[4] = a4;
  memset(&v16[8], 0, 44);
  *&v16[52] = 0xFFFF;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  *(a1 + 8) = v15;
  v11 = *&v16[16];
  *(a1 + 32) = *v16;
  *(a1 + 48) = v11;
  *(a1 + 64) = *&v16[32];
  *(a1 + 80) = *&v16[48];
  v12 = llvm::sys::fs::detail::directory_iterator_increment(a1);
  v13 = v23;
  if (v23 != v25)
  {
LABEL_11:
    free(v13);
  }

  return v12;
}

unint64_t llvm::sys::fs::detail::directory_iterator_increment(uint64_t a1)
{
  *__error() = 0;
  v2 = readdir(*a1);
  if (!v2)
  {
    if (*__error())
    {
      v6 = *__error();
      std::generic_category();
LABEL_21:
      v8 = 0;
      return v8 | v6;
    }

    if (*a1)
    {
      closedir(*a1);
    }

    *a1 = 0;
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 9;
    *(a1 + 36) = 1;
    *(a1 + 37) = 0u;
    *(a1 + 53) = 0u;
    *(a1 + 68) = 0u;
    *(a1 + 84) = 0xFFFF;
LABEL_20:
    std::system_category();
    v6 = 0;
    goto LABEL_21;
  }

  v3 = v2;
  d_name = v2->d_name;
  v5 = strlen(v2->d_name);
  if (v5 == 2)
  {
    if (*d_name != 46 || v3->d_name[1] != 46)
    {
LABEL_11:
      v15 = 261;
      v14[0] = d_name;
      v14[1] = v5;
      v9 = v3->d_type & 0xF;
      if (v9 == 7)
      {
        v10 = 9;
      }

      else
      {
        v10 = dword_1E099EB64[v9 ^ 8];
      }

      v13 = 0u;
      memset(v12, 0, sizeof(v12));
      HIDWORD(v13) = 0xFFFF;
      llvm::sys::fs::directory_entry::replace_filename(a1 + 8, v14, v10, v12);
      goto LABEL_20;
    }
  }

  else if (v5 != 1 || *d_name != 46)
  {
    goto LABEL_11;
  }

  v7 = llvm::sys::fs::detail::directory_iterator_increment(a1);
  v6 = v7;
  v8 = v7 & 0xFFFFFFFF00000000;
  return v8 | v6;
}

uint64_t llvm::sys::fs::detail::directory_iterator_destruct(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    closedir(v2);
  }

  *a1 = 0;
  memset(v4, 0, 35);
  HIBYTE(v4[1]) = 0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  *(a1 + 37) = v4[0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 9;
  *(a1 + 36) = 1;
  *(a1 + 53) = v4[1];
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0xFFFF;
  std::system_category();
  return 0;
}

void llvm::sys::fs::directory_entry::status(llvm::sys::fs::directory_entry *this@<X0>, uint64_t a2@<X8>)
{
  v31[16] = *MEMORY[0x1E69E9840];
  v20 = 260;
  v19 = this;
  v3 = *(this + 28);
  v29 = v31;
  v30 = xmmword_1E0971D70;
  v4 = llvm::Twine::toNullTerminatedStringRef(&v19, &v29);
  if (v3)
  {
    v5 = MEMORY[0x1E69E9A90](v4, v21);
  }

  else
  {
    v5 = MEMORY[0x1E69E9A58](v4, v21);
  }

  if (v5)
  {
    v6 = *__error();
    v7 = v6 == 2;
    v8 = std::generic_category();
    v18 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v17 = 0;
    v13 = 0xFFFF;
    v14 = v29;
    if (v29 == v31)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v10 = v25;
  v18 = v27;
  v13 = v22 & 0xFFF;
  v16 = v22 >> 12;
  if (v16 == 7)
  {
    v7 = 9;
  }

  else
  {
    v7 = dword_1E099EB64[v16 ^ 8];
  }

  v12 = v24;
  v11 = v26;
  v17 = v23;
  v9 = v28;
  v8 = std::system_category();
  v6 = 0;
  v14 = v29;
  if (v29 != v31)
  {
LABEL_6:
    free(v14);
  }

LABEL_7:
  v15 = *(a2 + 48);
  if (v6)
  {
    *(a2 + 48) = v15 | 1;
    v11 = v8;
  }

  else
  {
    *(a2 + 48) = v15 & 0xFE;
    *(a2 + 16) = v10;
    *(a2 + 20) = v18;
    *(a2 + 24) = v17;
    *(a2 + 32) = v9;
    v6 = v12;
    *(a2 + 40) = v7;
    *(a2 + 44) = v13;
  }

  *a2 = v6;
  *(a2 + 8) = v11;
}

uint64_t llvm::sys::fs::openFile(uint64_t a1, int *a2, int a3, int a4, int a5, uint64_t a6)
{
  v21[16] = *MEMORY[0x1E69E9840];
  v8 = 2 * (a4 == 3);
  if (a4 == 2)
  {
    v8 = 1;
  }

  if (a4 == 1)
  {
    v8 = 0;
  }

  if ((a5 & 4) != 0)
  {
    a3 = 3;
  }

  v10 = v8 | 0x600;
  v11 = v8 | 0x200;
  if (a3 == 1)
  {
    v8 |= 0xA00u;
  }

  if (a3 == 3)
  {
    v8 = v11;
  }

  if (a3)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  v13 = ((a5 << 20) & 0x1000000 | (2 * (a5 & 4))) ^ 0x1000000;
  v19 = v21;
  v20 = xmmword_1E0971D70;
  v14 = llvm::Twine::toNullTerminatedStringRef(a1, &v19);
  while (1)
  {
    *__error() = 0;
    v15 = open(v14, v12 | v13, a6);
    if (v15 != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      *a2 = -1;
      goto LABEL_22;
    }
  }

  *a2 = v15;
  if ((v15 & 0x80000000) == 0)
  {
    std::system_category();
    v16 = 0;
    v17 = v19;
    if (v19 == v21)
    {
      return v16;
    }

    goto LABEL_23;
  }

LABEL_22:
  v16 = *__error();
  std::generic_category();
  v17 = v19;
  if (v19 == v21)
  {
    return v16;
  }

LABEL_23:
  free(v17);
  return v16;
}

llvm *llvm::sys::fs::openNativeFileForRead@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = 0;
  result = llvm::sys::fs::openFileForRead(a1, &v8, a2, a3);
  if (result)
  {
    result = llvm::errorCodeToError(result, v6, &v7);
    *(a4 + 8) |= 1u;
    *a4 = v7;
  }

  else
  {
    *(a4 + 8) &= ~1u;
    *a4 = v8;
  }

  return result;
}

ssize_t llvm::sys::fs::readNativeFileSlice@<X0>(int a1@<W0>, void *a2@<X1>, unint64_t a3@<X2>, off_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a3 >= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFFLL;
  }

  else
  {
    v9 = a3;
  }

  while (1)
  {
    *__error() = 0;
    result = pread(a1, a2, v9, a4);
    if (result != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      v11 = *__error();
      *&v13.__val_ = std::generic_category();
      result = llvm::errorCodeToError(v11, v13, &v12);
      *(a5 + 8) |= 1u;
      *a5 = v12;
      return result;
    }
  }

  *(a5 + 8) &= ~1u;
  *a5 = result;
  return result;
}

uint64_t llvm::sys::fs::closeFile(llvm::sys::fs *this, int *a2)
{
  v2 = *this;
  *this = -1;
  return llvm::sys::Process::SafelyCloseFileDescriptor(v2);
}

unint64_t llvm::sys::fs::real_path(uint64_t a1, void *a2, int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  a2[1] = 0;
  if (*(a1 + 32) <= 1u)
  {
    std::system_category();
    v3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
    v15 = v17;
    v16 = xmmword_1E0971D70;
    v7 = llvm::Twine::toNullTerminatedStringRef(a1, &v15);
    if (realpath_DARWIN_EXTSN(v7, &v12))
    {
      v8 = strlen(&v12);
      v9 = a2[1];
      if (a2[2] < v9 + v8)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v9 + v8, 1);
        v9 = a2[1];
      }

      if (v8)
      {
        memcpy((*a2 + v9), &v12, v8);
        v9 = a2[1];
      }

      a2[1] = v9 + v8;
      std::system_category();
      v3 = 0;
      v10 = v15;
      if (v15 == v17)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v3 = *__error();
      std::generic_category();
      v10 = v15;
      if (v15 == v17)
      {
        goto LABEL_13;
      }
    }

    free(v10);
LABEL_13:
    v6 = 0;
    return v6 | v3;
  }

  v12 = v14;
  v13 = xmmword_1E0971D70;
  llvm::Twine::toVector(a1, &v12);
  llvm::sys::fs::expandTildeExpr(&v12);
  v17[4] = 261;
  v15 = v12;
  *&v16 = v13;
  v5 = llvm::sys::fs::real_path(&v15, a2, 0);
  v3 = v5;
  v6 = v5 & 0xFFFFFFFF00000000;
  if (v12 != v14)
  {
    free(v12);
  }

  return v6 | v3;
}

void *llvm::SmallVectorImpl<char>::insert<char *,void>(uint64_t *a1, uint64_t a2, char *__src, char *a4)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *a1;
  v9 = a2 - *a1;
  v10 = a4 - __src;
  v11 = v7 + a4 - __src;
  v12 = a1[2];
  if (*a1 + v7 == a2)
  {
    if (v12 < v11)
    {
      v22 = a4;
      llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, v11, 1);
      a4 = v22;
      v8 = *a1;
      v7 = a1[1];
    }

    if (__src != a4)
    {
      memcpy((v8 + v7), __src, v10);
      v8 = *a1;
      v7 = a1[1];
    }

    a1[1] = v7 + v10;
    return (v8 + v9);
  }

  v44 = a4;
  if (v12 < v11)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, v11, 1);
    v8 = *a1;
    v7 = a1[1];
  }

  __srca = (v8 + v9);
  v14 = (v8 + v7);
  v15 = v7 - v9;
  if (v7 - v9 < v10)
  {
    a1[1] = v7 + v10;
    v16 = v8 + v9;
    if (v7 != v9)
    {
      memcpy((v8 + v10 + v9), __srca, v7 - v9);
    }

    if (!v15)
    {
      v19 = __src;
      v21 = v44;
      if (__src == v44)
      {
        return v16;
      }

LABEL_25:
      memcpy((v8 + v7), v19, v21 - v19);
      return v16;
    }

    if (v15 > 0x1F && (v8 + a2 - &__src[v6]) >= 0x20)
    {
      v17 = &__srca[v15 & 0xFFFFFFFFFFFFFFE0];
      v18 = v15 & 0x1F;
      v19 = &__src[v15 & 0xFFFFFFFFFFFFFFE0];
      v29 = (__src + 16);
      v30 = (v9 + v8 + 16);
      v31 = v15 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v32 = *v29;
        *(v30 - 1) = *(v29 - 1);
        *v30 = v32;
        v29 += 2;
        v30 += 2;
        v31 -= 32;
      }

      while (v31);
      if (v15 == (v15 & 0xFFFFFFFFFFFFFFE0))
      {
LABEL_12:
        v21 = v44;
        if (v19 == v44)
        {
          return v16;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v17 = (v8 + v9);
      v18 = v7 - v9;
      v19 = __src;
    }

    do
    {
      v20 = *v19++;
      *v17++ = v20;
      --v18;
    }

    while (v18);
    goto LABEL_12;
  }

  v23 = v7;
  if (a1[2] < v10 + v7)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, v10 + v7, 1);
    v23 = a1[1];
  }

  v24 = &v14[-v10];
  if (v44 != __src)
  {
    v25 = *a1;
    v26 = (*a1 + v23);
    if (v10 < 8)
    {
      v27 = &v14[-v10];
      goto LABEL_42;
    }

    v27 = &v14[-v10];
    if ((&v44[v23 + v25] - &__src[v7 + v8]) >= 0x20)
    {
      if (v10 < 0x20)
      {
        v28 = 0;
        goto LABEL_37;
      }

      v28 = v10 & 0xFFFFFFFFFFFFFFE0;
      v33 = (&__src[v7] - v44 + v8 + 16);
      v34 = (v23 + v25 + 16);
      v35 = v10 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v36 = *v33;
        *(v34 - 1) = *(v33 - 1);
        *v34 = v36;
        v33 += 2;
        v34 += 2;
        v35 -= 32;
      }

      while (v35);
      if (v10 == v28)
      {
        goto LABEL_43;
      }

      if ((v10 & 0x18) != 0)
      {
LABEL_37:
        v26 += v10 & 0xFFFFFFFFFFFFFFF8;
        v27 = &v24[v10 & 0xFFFFFFFFFFFFFFF8];
        v37 = (v8 + &__src[v7 + v28] - v44);
        v38 = (v25 + v23 + v28);
        v39 = v28 - (v10 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v40 = *v37++;
          *v38++ = v40;
          v39 += 8;
        }

        while (v39);
        if (v10 == (v10 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      }

      v27 = &v24[v28];
      v26 += v28;
    }

    do
    {
LABEL_42:
      v41 = *v27++;
      *v26++ = v41;
    }

    while (v27 != v14);
LABEL_43:
    v23 = a1[1];
  }

  a1[1] = v23 + v10;
  v16 = v8 + v9;
  if (v24 != __srca)
  {
    memmove(&__srca[v10], __srca, &v14[-v10] - __srca);
  }

  if (v44 == __src)
  {
    return v16;
  }

  return memmove(__srca, __src, v10);
}

double llvm::sys::Process::GetEnv@<D0>(const void *a1@<X0>, size_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    *__dst = 0;
    v20 = 0;
    v21 = 0;
    v7 = getenv(__dst);
    if (v7)
    {
      goto LABEL_20;
    }

    goto LABEL_7;
  }

  if (a2 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_31;
  }

  if (a2 >= 0x17)
  {
    if ((a2 | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (a2 | 7) + 1;
    }

    v6 = operator new(v10);
    v20 = a2;
    v21 = v10 | 0x8000000000000000;
    *__dst = v6;
    goto LABEL_15;
  }

  HIBYTE(v21) = a2;
  v6 = __dst;
  if (a2)
  {
LABEL_15:
    memmove(v6, a1, a2);
  }

  *(v6 + a2) = 0;
  if (v21 >= 0)
  {
    v11 = __dst;
  }

  else
  {
    v11 = *__dst;
  }

  v7 = getenv(v11);
  if (v7)
  {
LABEL_20:
    v12 = v7;
    v13 = strlen(v7);
    if (v13 <= 0x7FFFFFFFFFFFFFF7)
    {
      v14 = v13;
      if (v13 >= 0x17)
      {
        if ((v13 | 7) == 0x17)
        {
          v16 = 25;
        }

        else
        {
          v16 = (v13 | 7) + 1;
        }

        v15 = operator new(v16);
        *(&v17 + 1) = v14;
        v18 = v16 | 0x8000000000000000;
        *&v17 = v15;
      }

      else
      {
        HIBYTE(v18) = v13;
        v15 = &v17;
        if (!v13)
        {
LABEL_29:
          *(v15 + v14) = 0;
          result = *&v17;
          *a3 = v17;
          *(a3 + 16) = v18;
          *(a3 + 24) = 1;
          if ((SHIBYTE(v21) & 0x80000000) == 0)
          {
            return result;
          }

          goto LABEL_8;
        }
      }

      memmove(v15, v12, v14);
      goto LABEL_29;
    }

LABEL_31:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

LABEL_7:
  *a3 = 0;
  *(a3 + 24) = 0;
  if ((SHIBYTE(v21) & 0x80000000) == 0)
  {
    return result;
  }

LABEL_8:
  v9 = *__dst;

  operator delete(v9);
  return result;
}

void llvm::sys::Process::getPageSize(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_1EE17D278, memory_order_acquire))
  {
    v3 = _MergedGlobals_61;
    if (_MergedGlobals_61 != -1)
    {
LABEL_3:
      *(a1 + 8) &= ~1u;
      *a1 = v3;
      return;
    }
  }

  else
  {
    llvm::sys::Process::getPageSize();
    v3 = _MergedGlobals_61;
    if (_MergedGlobals_61 != -1)
    {
      goto LABEL_3;
    }
  }

  v4 = *__error();
  *&v6.__val_ = std::generic_category();
  llvm::errorCodeToError(v4, v6, &v5);
  *(a1 + 8) |= 1u;
  *a1 = v5;
}

uint64_t llvm::sys::Process::SafelyCloseFileDescriptor(llvm::sys::Process *this)
{
  v1 = this;
  v5 = -1;
  v6 = -1;
  v2 = pthread_sigmask(3, &v6, &v5);
  if (!v2)
  {
    if (close(v1) < 0)
    {
      v2 = *__error();
      v3 = pthread_sigmask(3, &v5, 0);
      if (v2)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v3 = pthread_sigmask(3, &v5, 0);
    }

    v2 = v3;
  }

LABEL_6:
  std::generic_category();
  return v2;
}

uint64_t llvm::sys::Process::FileDescriptorHasColors(llvm::sys::Process *this)
{
  result = isatty(this);
  if (result)
  {
    v2 = getenv("TERM");
    v4 = v2;
    if (!v2)
    {
      return (v4 != 0) & v3;
    }

    v5 = strlen(v2);
    switch(v5)
    {
      case 6uLL:
        if (*v4 == 2003269987 && *(v4 + 2) == 28265)
        {
          goto LABEL_41;
        }

        break;
      case 5uLL:
        if (*v4 == 1970170220 && v4[4] == 120)
        {
          goto LABEL_41;
        }

        goto LABEL_27;
      case 4uLL:
        if (*v4 == 1769172577 || *v4 == 1953921138)
        {
LABEL_41:
          v3 = 1;
          return (v4 != 0) & v3;
        }

LABEL_40:
        v3 = 0;
        return (v4 != 0) & v3;
      default:
        if (v5 < 6)
        {
          goto LABEL_40;
        }

        break;
    }

    if (*v4 == 1701995379 && *(v4 + 2) == 28261)
    {
      goto LABEL_41;
    }

LABEL_27:
    if (*v4 == 1919251576 && v4[4] == 109)
    {
      goto LABEL_41;
    }

    v10 = *v4 == 808547446 && v4[4] == 48;
    if (v10 || *v4 == 1953921138)
    {
      goto LABEL_41;
    }

    if (*&v4[v5 - 5] == 1869377379 && v4[v5 - 1] == 114)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  return result;
}

uint64_t llvm::sys::ExecuteAndWait(void *a1, size_t a2, uint64_t a3, uint64_t a4, __int128 *a5, std::string *a6, uint64_t a7, unsigned int a8, unsigned int a9, uint64_t a10, _BYTE *a11, uint64_t a12)
{
  v17[0] = 0;
  v17[2] = 0;
  v15 = *a5;
  v16 = *(a5 + 2);
  if (Execute(v17, a1, a2, a3, a4, &v15, a6, a7, a9, a10, 0))
  {
    if (a11)
    {
      *a11 = 0;
    }

    llvm::sys::Wait(v17, a8 | ((a8 != 0) << 32), a10, a12, 0);
    return v13;
  }

  else
  {
    if (a11)
    {
      *a11 = 1;
    }

    return 0xFFFFFFFFLL;
  }
}

BOOL Execute(pid_t *a1, void *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, std::string *a7, uint64_t a8, unsigned int a9, uint64_t a10, char a11)
{
  v102 = *MEMORY[0x1E69E9840];
  __src = a2;
  __len = a3;
  v97[0] = 261;
  v95.__r_.__value_.__r.__words[0] = a2;
  v95.__r_.__value_.__l.__size_ = a3;
  if (llvm::sys::fs::access(&v95, 0))
  {
    if (!a10)
    {
      return 0;
    }

    *(&v93[0].__r_.__value_.__s + 23) = 12;
    strcpy(v93, "Executable ");
    if (!a2)
    {
      size = 0;
      v28 = 0;
      v29 = 0;
      memset(&__dst, 0, sizeof(__dst));
      goto LABEL_29;
    }

    if (a3 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (a3 >= 0x17)
      {
        if ((a3 | 7) == 0x17)
        {
          v30 = 25;
        }

        else
        {
          v30 = (a3 | 7) + 1;
        }

        p_dst = operator new(v30);
        __dst.__r_.__value_.__l.__size_ = a3;
        __dst.__r_.__value_.__r.__words[2] = v30 | 0x8000000000000000;
        __dst.__r_.__value_.__r.__words[0] = p_dst;
      }

      else
      {
        *(&__dst.__r_.__value_.__s + 23) = a3;
        p_dst = &__dst;
        if (!a3)
        {
          goto LABEL_28;
        }
      }

      memmove(p_dst, a2, a3);
LABEL_28:
      p_dst->__r_.__value_.__s.__data_[a3] = 0;
      v29 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      size = __dst.__r_.__value_.__l.__size_;
      v28 = __dst.__r_.__value_.__r.__words[0];
LABEL_29:
      if ((v29 & 0x80u) == 0)
      {
        v31 = &__dst;
      }

      else
      {
        v31 = v28;
      }

      if ((v29 & 0x80u) == 0)
      {
        v32 = v29;
      }

      else
      {
        v32 = size;
      }

      v33 = std::string::append(v93, v31, v32);
      v34 = v33->__r_.__value_.__r.__words[2];
      *&v95.__r_.__value_.__l.__data_ = *&v33->__r_.__value_.__l.__data_;
      v95.__r_.__value_.__r.__words[2] = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      v89 = 16;
      strcpy(__s, " doesn't exist!");
      v35 = std::string::append(&v95, __s, 0x10uLL);
      v36 = v35->__r_.__value_.__r.__words[0];
      *v101 = v35->__r_.__value_.__l.__size_;
      *&v101[7] = *(&v35->__r_.__value_.__r.__words[1] + 7);
      v37 = HIBYTE(v35->__r_.__value_.__r.__words[2]);
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      if (*(a10 + 23) < 0)
      {
        operator delete(*a10);
      }

      v38 = *v101;
      *a10 = v36;
      *(a10 + 8) = v38;
      *(a10 + 15) = *&v101[7];
      *(a10 + 23) = v37;
      if (v89 < 0)
      {
        operator delete(*__s);
        if ((SHIBYTE(v95.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_39:
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_40;
          }

          goto LABEL_44;
        }
      }

      else if ((SHIBYTE(v95.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

      operator delete(v95.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_40:
        if ((SHIBYTE(v93[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return 0;
        }

LABEL_45:
        operator delete(v93[0].__r_.__value_.__l.__data_);
        return 0;
      }

LABEL_44:
      operator delete(__dst.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v93[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return 0;
      }

      goto LABEL_45;
    }

LABEL_192:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v84 = a1;
  *&v95.__r_.__value_.__l.__data_ = 0uLL;
  v95.__r_.__value_.__r.__words[2] = v97;
  v96 = 0x400000000;
  v98 = v100;
  v99 = 0;
  v100[0] = 0;
  v100[1] = 1;
  *__s = &v95;
  toNullTerminatedCStringArray(v93, a4, a5, __s);
  v19 = 0;
  v20 = v93[0].__r_.__value_.__r.__words[0];
  if (*(a6 + 16) == 1)
  {
    toNullTerminatedCStringArray(v93, *a6, *(a6 + 8), __s);
    v19 = v93[0].__r_.__value_.__r.__words[0];
  }

  if (a9 || (a11 & 1) != 0)
  {
    v25 = fork();
    if (v25)
    {
      if (v25 == -1)
      {
        *(&v93[0].__r_.__value_.__s + 23) = 13;
        strcpy(v93, "Couldn't fork");
        MakeErrMsg(a10, &v93[0].__r_.__value_.__l.__data_, 0xFFFFFFFFLL);
        v26 = 0;
        if (!v19)
        {
          goto LABEL_150;
        }
      }

      else
      {
        *a1 = v25;
        a1[1] = v25;
        v26 = 1;
        if (!v19)
        {
          goto LABEL_150;
        }
      }

      goto LABEL_149;
    }

    if (a8)
    {
      v93[0] = *a7;
      if (RedirectIO(v93, 0, a10) & 1) != 0 || (v93[0] = a7[1], (RedirectIO(v93, 1, a10)))
      {
        v26 = 0;
        if (!v19)
        {
          goto LABEL_150;
        }

        goto LABEL_149;
      }

      if (a7[1].__r_.__value_.__s.__data_[16] == 1 && a7[2].__r_.__value_.__s.__data_[16] == 1 && (v72 = a7[1].__r_.__value_.__l.__size_, v72 == a7[2].__r_.__value_.__l.__size_) && (!v72 || !memcmp(a7[1].__r_.__value_.__l.__data_, a7[2].__r_.__value_.__l.__data_, v72)))
      {
        if (dup2(1, 2) == -1)
        {
          std::string::basic_string[abi:nn200100]<0>(v93, "Can't redirect stderr to stdout");
          MakeErrMsg(a10, &v93[0].__r_.__value_.__l.__data_, 0xFFFFFFFFLL);
          if (SHIBYTE(v93[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v93[0].__r_.__value_.__l.__data_);
          }

LABEL_140:
          v26 = 0;
          if (!v19)
          {
            goto LABEL_150;
          }

          goto LABEL_149;
        }
      }

      else
      {
        v93[0] = a7[2];
        if (RedirectIO(v93, 2, a10))
        {
          goto LABEL_140;
        }
      }
    }

    if (!a11 || setsid() != -1)
    {
      if (a9)
      {
        SetMemoryLimits(a9);
      }

      std::string::basic_string<llvm::StringRef,0>(v93, &__src);
      if ((v93[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v81 = v93;
      }

      else
      {
        v81 = v93[0].__r_.__value_.__r.__words[0];
      }

      if (!v19)
      {
        execv(v81, v20);
        if (*__error() == 2)
        {
          v82 = 127;
        }

        else
        {
          v82 = 126;
        }

        _exit(v82);
      }

      execve(v81, v20, v19);
      if (*__error() == 2)
      {
        v83 = 127;
      }

      else
      {
        v83 = 126;
      }

      _exit(v83);
    }

    v80 = operator new(0x30uLL);
    v93[0].__r_.__value_.__r.__words[0] = v80;
    *&v93[0].__r_.__value_.__r.__words[1] = xmmword_1E0999AD0;
    strcpy(v80, "Could not detach process, ::setsid failed");
    MakeErrMsg(a10, &v93[0].__r_.__value_.__l.__data_, 0xFFFFFFFFLL);
    operator delete(v80);
    v26 = 0;
    if (!v19)
    {
      goto LABEL_150;
    }

    goto LABEL_149;
  }

  *v101 = 0;
  memset(&v94, 0, sizeof(v94));
  memset(v93, 0, sizeof(v93));
  if (a8)
  {
    v21 = a7;
    if ((a7->__r_.__value_.__s.__data_[16] & 1) == 0)
    {
      v49 = 0;
      v50 = 23;
      p_size = 8;
      if (a7[1].__r_.__value_.__s.__data_[16] != 1)
      {
        goto LABEL_96;
      }

      goto LABEL_82;
    }

    v22 = a7->__r_.__value_.__l.__size_;
    if (v22 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_192;
    }

    v23 = a7->__r_.__value_.__r.__words[0];
    if (v22 >= 0x17)
    {
      if ((v22 | 7) == 0x17)
      {
        v56 = 25;
      }

      else
      {
        v56 = (v22 | 7) + 1;
      }

      v24 = operator new(v56);
      __dst.__r_.__value_.__l.__size_ = v22;
      __dst.__r_.__value_.__r.__words[2] = v56 | 0x8000000000000000;
      __dst.__r_.__value_.__r.__words[0] = v24;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v21->__r_.__value_.__l.__size_;
      v24 = &__dst;
      if (!v22)
      {
LABEL_93:
        p_size = &v93[0].__r_.__value_.__l.__size_;
        v50 = &v93[0].__r_.__value_.__r.__words[2] + 7;
        v24->__r_.__value_.__s.__data_[v22] = 0;
        if (SHIBYTE(v93[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v93[0].__r_.__value_.__l.__data_);
        }

        v93[0] = __dst;
        v49 = v93;
        if (v21[1].__r_.__value_.__s.__data_[16] != 1)
        {
LABEL_96:
          v57 = 0;
          if (v21[2].__r_.__value_.__s.__data_[16] == 1)
          {
            goto LABEL_97;
          }

          goto LABEL_109;
        }

LABEL_82:
        v52 = v21[1].__r_.__value_.__l.__size_;
        if (v52 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_192;
        }

        data = v21[1].__r_.__value_.__l.__data_;
        if (v52 >= 0x17)
        {
          v61 = v49;
          if ((v52 | 7) == 0x17)
          {
            v62 = 25;
          }

          else
          {
            v62 = (v52 | 7) + 1;
          }

          v54 = operator new(v62);
          v63 = v62 | 0x8000000000000000;
          v49 = v61;
          __dst.__r_.__value_.__l.__size_ = v52;
          __dst.__r_.__value_.__r.__words[2] = v63;
          __dst.__r_.__value_.__r.__words[0] = v54;
        }

        else
        {
          *(&__dst.__r_.__value_.__s + 23) = v21[1].__r_.__value_.__l.__size_;
          v54 = &__dst;
          if (!v52)
          {
LABEL_106:
            v54->__r_.__value_.__s.__data_[v52] = 0;
            v57 = &v93[1];
            if (SHIBYTE(v93[1].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v93[1].__r_.__value_.__l.__data_);
            }

            v93[1] = __dst;
            if (v21[2].__r_.__value_.__s.__data_[16] == 1)
            {
LABEL_97:
              v58 = v21[2].__r_.__value_.__l.__size_;
              if (v58 > 0x7FFFFFFFFFFFFFF7)
              {
                goto LABEL_192;
              }

              v59 = v21[2].__r_.__value_.__l.__data_;
              if (v58 >= 0x17)
              {
                v86 = v50;
                v65 = p_size;
                v66 = v49;
                if ((v58 | 7) == 0x17)
                {
                  v67 = 25;
                }

                else
                {
                  v67 = (v58 | 7) + 1;
                }

                v60 = operator new(v67);
                v68 = v67 | 0x8000000000000000;
                v49 = v66;
                p_size = v65;
                v50 = v86;
                __dst.__r_.__value_.__l.__size_ = v58;
                __dst.__r_.__value_.__r.__words[2] = v68;
                __dst.__r_.__value_.__r.__words[0] = v60;
              }

              else
              {
                *(&__dst.__r_.__value_.__s + 23) = v21[2].__r_.__value_.__l.__size_;
                v60 = &__dst;
                if (!v58)
                {
LABEL_116:
                  v60->__r_.__value_.__s.__data_[v58] = 0;
                  v64 = &v94;
                  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v94.__r_.__value_.__l.__data_);
                  }

                  v94 = __dst;
                  posix_spawn_file_actions_init(v101);
                  if (!v49)
                  {
                    goto LABEL_127;
                  }

                  goto LABEL_119;
                }
              }

              memmove(v60, v59, v58);
              goto LABEL_116;
            }

LABEL_109:
            v64 = 0;
            posix_spawn_file_actions_init(v101);
            if (!v49)
            {
              goto LABEL_127;
            }

LABEL_119:
            if (*v50 < 0)
            {
              if (*p_size)
              {
                v69 = v49->__r_.__value_.__r.__words[0];
              }

              else
              {
                v69 = "/dev/null";
              }
            }

            else if (*v50)
            {
              v69 = v49;
            }

            else
            {
              v69 = "/dev/null";
            }

            v70 = posix_spawn_file_actions_addopen(v101, 0, v69, 0, 0x1B6u);
            if (v70)
            {
LABEL_144:
              v73 = v70;
              v74 = operator new(0x28uLL);
              __dst.__r_.__value_.__r.__words[0] = v74;
              *&__dst.__r_.__value_.__r.__words[1] = xmmword_1E0982750;
              strcpy(v74, "Cannot posix_spawn_file_actions_addopen");
              MakeErrMsg(a10, &__dst.__r_.__value_.__l.__data_, v73);
              operator delete(v74);
              v26 = 0;
              if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_145;
              }

              goto LABEL_146;
            }

LABEL_127:
            if (v57)
            {
              if (SHIBYTE(v57->__r_.__value_.__r.__words[2]) < 0)
              {
                v71 = v57->__r_.__value_.__l.__size_ ? v57->__r_.__value_.__r.__words[0] : "/dev/null";
              }

              else
              {
                v71 = *(&v57->__r_.__value_.__s + 23) ? v57 : "/dev/null";
              }

              v70 = posix_spawn_file_actions_addopen(v101, 1, v71, 513, 0x1B6u);
              if (v70)
              {
                goto LABEL_144;
              }
            }

            if (v21[1].__r_.__value_.__s.__data_[16] == 1 && v21[2].__r_.__value_.__s.__data_[16] == 1 && (v76 = v21[1].__r_.__value_.__l.__size_, v76 == v21[2].__r_.__value_.__l.__size_) && (!v76 || !memcmp(v21[1].__r_.__value_.__l.__data_, v21[2].__r_.__value_.__l.__data_, v76)))
            {
              v39 = v101;
              v78 = posix_spawn_file_actions_adddup2(v101, 1, 2);
              if (v78)
              {
                v79 = v78;
                std::string::basic_string[abi:nn200100]<0>(&__dst, "Can't redirect stderr to stdout");
                MakeErrMsg(a10, &__dst.__r_.__value_.__l.__data_, v79);
                if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__dst.__r_.__value_.__l.__data_);
                }

                v26 = 0;
                if ((SHIBYTE(v94.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_146;
                }

LABEL_145:
                operator delete(v94.__r_.__value_.__l.__data_);
                goto LABEL_146;
              }
            }

            else if (v64)
            {
              if (SHIBYTE(v64->__r_.__value_.__r.__words[2]) < 0)
              {
                if (v64->__r_.__value_.__l.__size_)
                {
                  v77 = v64->__r_.__value_.__r.__words[0];
                }

                else
                {
                  v77 = "/dev/null";
                }
              }

              else if (*(&v64->__r_.__value_.__s + 23))
              {
                v77 = v64;
              }

              else
              {
                v77 = "/dev/null";
              }

              v39 = v101;
              v70 = posix_spawn_file_actions_addopen(v101, 2, v77, 513, 0x1B6u);
              if (v70)
              {
                goto LABEL_144;
              }
            }

            else
            {
              v39 = v101;
            }

            goto LABEL_47;
          }
        }

        memmove(v54, data, v52);
        goto LABEL_106;
      }
    }

    memmove(v24, v23, v22);
    goto LABEL_93;
  }

  v39 = 0;
LABEL_47:
  v40 = 0;
  if (v19)
  {
    v41 = v19;
  }

  else
  {
    v41 = *MEMORY[0x1E69E97E8];
  }

  do
  {
    v87 = 0;
    v42 = __src;
    if (!__src)
    {
      memset(&__dst, 0, sizeof(__dst));
      v45 = &__dst;
      goto LABEL_64;
    }

    v43 = __len;
    if (__len > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_192;
    }

    if (__len >= 0x17)
    {
      if ((__len | 7) == 0x17)
      {
        v46 = 25;
      }

      else
      {
        v46 = (__len | 7) + 1;
      }

      v44 = operator new(v46);
      __dst.__r_.__value_.__l.__size_ = v43;
      __dst.__r_.__value_.__r.__words[2] = v46 | 0x8000000000000000;
      __dst.__r_.__value_.__r.__words[0] = v44;
LABEL_60:
      memmove(v44, v42, v43);
      goto LABEL_61;
    }

    *(&__dst.__r_.__value_.__s + 23) = __len;
    v44 = &__dst;
    if (__len)
    {
      goto LABEL_60;
    }

LABEL_61:
    v44->__r_.__value_.__s.__data_[v43] = 0;
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v45 = &__dst;
    }

    else
    {
      v45 = __dst.__r_.__value_.__r.__words[0];
    }

LABEL_64:
    v47 = posix_spawn(&v87, v45, v39, 0, v20, v41);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (v47 != 4)
    {
      break;
    }
  }

  while (v40++ < 7);
  if (v39)
  {
    posix_spawn_file_actions_destroy(v39);
  }

  v26 = v47 == 0;
  if (!v47)
  {
    v55 = v87;
    *v84 = v87;
    v84[1] = v55;
    if ((SHIBYTE(v94.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_145;
  }

  *(&__dst.__r_.__value_.__s + 23) = 18;
  strcpy(&__dst, "posix_spawn failed");
  MakeErrMsg(a10, &__dst.__r_.__value_.__l.__data_, v47);
  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_145;
  }

LABEL_146:
  if ((SHIBYTE(v93[1].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v93[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_148;
    }

LABEL_162:
    operator delete(v93[0].__r_.__value_.__l.__data_);
    if (!v19)
    {
      goto LABEL_150;
    }

LABEL_149:
    operator delete(v19);
    goto LABEL_150;
  }

  operator delete(v93[1].__r_.__value_.__l.__data_);
  if (SHIBYTE(v93[0].__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_162;
  }

LABEL_148:
  if (v19)
  {
    goto LABEL_149;
  }

LABEL_150:
  if (v20)
  {
    operator delete(v20);
  }

  if (v96)
  {
    llvm::deallocate_buffer(*v95.__r_.__value_.__r.__words[2], 0x1000);
  }

  if (v99)
  {
    llvm::deallocate_buffer(*v98, v98[1]);
  }

  if (v98 != v100)
  {
    free(v98);
  }

  if (v95.__r_.__value_.__r.__words[2] != v97)
  {
    free(v95.__r_.__value_.__r.__words[2]);
  }

  return v26;
}

uint64_t llvm::sys::Wait(pid_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = *a1;
  if ((a2 & 0x100000000) != 0)
  {
    v11 = a2 == 0;
    v27.__sigaction_u.__sa_handler = TimeOutHandler;
    *&v27.sa_mask = 0;
    sigaction(14, &v27, &v26);
    alarm(a2);
    v25 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 0;
    v25 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if (*(a4 + 24) == 1)
  {
    *(a4 + 24) = 0;
  }

LABEL_7:
  if ((a2 & 0x100000000) != 0)
  {
    LODWORD(result) = wait4(v10, &v25, v11, &v24);
  }

  else
  {
    while (1)
    {
      LODWORD(result) = wait4(v10, &v25, v11, &v24);
      if (result != -1)
      {
        break;
      }

      if (*__error() != 4)
      {
        LODWORD(result) = -1;
        if (*a1 != -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }
  }

  if (result != *a1)
  {
    if (!result)
    {
      return result;
    }

LABEL_15:
    v13 = result;
    if ((a2 & 0x100000000) != 0 && *__error() == 4 && (a5 & 1) == 0)
    {
      kill(*a1, 9);
      alarm(0);
      sigaction(14, &v26, 0);
      if (wait(&v25) == v10)
      {
        v23[23] = 15;
        strcpy(v23, "Child timed out");
        MakeErrMsg(a3, v23, 0);
      }

      else
      {
        v22 = operator new(0x28uLL);
        *v23 = v22;
        *&v23[8] = xmmword_1E0982850;
        strcpy(v22, "Child timed out but wouldn't die");
        MakeErrMsg(a3, v23, 0xFFFFFFFFLL);
        operator delete(v22);
      }

      goto LABEL_46;
    }

    if (*__error() != 4)
    {
      v20 = operator new(0x20uLL);
      *v23 = v20;
      *&v23[8] = xmmword_1E09828D0;
      strcpy(v20, "Error waiting for child process");
      MakeErrMsg(a3, v23, 0xFFFFFFFFLL);
      operator delete(v20);
LABEL_46:
      LODWORD(result) = v13;
      return result;
    }

    LODWORD(result) = v13;
  }

LABEL_18:
  if ((a2 & 0x100000000) != 0)
  {
    v14 = result;
    alarm(0);
    sigaction(14, &v26, 0);
    LODWORD(result) = v14;
  }

  if (a4)
  {
    v15 = v24.ru_utime.tv_usec + 1000000 * v24.ru_utime.tv_sec;
    ru_maxrss = v24.ru_maxrss;
    v17 = *(a4 + 24);
    *a4 = v15 + 1000000 * v24.ru_stime.tv_sec + v24.ru_stime.tv_usec;
    *(a4 + 8) = v15;
    *(a4 + 16) = ru_maxrss;
    if ((v17 & 1) == 0)
    {
      *(a4 + 24) = 1;
    }
  }

  if ((v25 & 0x7F) != 0x7F)
  {
    if ((v25 & 0x7F) != 0)
    {
      if (!a3)
      {
        return result;
      }

      v18 = result;
      v19 = strsignal(v25 & 0x7F);
      MEMORY[0x1E12E55D0](a3, v19);
      if ((v25 & 0x80) != 0)
      {
        std::string::append(a3, " (core dumped)");
      }

      goto LABEL_35;
    }

    if (BYTE1(v25) == 126)
    {
      if (a3)
      {
        v21 = result;
        MEMORY[0x1E12E55D0](a3, "Program could not be executed");
        LODWORD(result) = v21;
      }
    }

    else if (BYTE1(v25) == 127 && a3)
    {
      v18 = result;
      llvm::sys::StrError(2, v23);
      if (*(a3 + 23) < 0)
      {
        operator delete(*a3);
      }

      *a3 = *v23;
      *(a3 + 16) = *&v23[16];
LABEL_35:
      LODWORD(result) = v18;
    }
  }

  return result;
}

double llvm::sys::findProgramByName@<D0>(void *__s@<X0>, size_t __n@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = __n;
  v46[32] = *MEMORY[0x1E69E9840];
  if (__n)
  {
    v9 = memchr(__s, 47, __n);
    if (v9)
    {
      if (v9 - __s != -1)
      {
        if (v7 > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_45:
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        if (v7 >= 0x17)
        {
          if ((v7 | 7) == 0x17)
          {
            v31 = 25;
          }

          else
          {
            v31 = (v7 | 7) + 1;
          }

          v10 = operator new(v31);
          *(&v45 + 1) = v7;
          v46[0] = v31 | 0x8000000000000000;
          *&v45 = v10;
        }

        else
        {
          HIBYTE(v46[0]) = v7;
          v10 = &v45;
        }

        memmove(v10, __s, v7);
        *(v10 + v7) = 0;
        *(a5 + 24) &= ~1u;
        result = *&v45;
        *a5 = v45;
        *(a5 + 16) = v46[0];
        return result;
      }
    }
  }

  *&v45 = v46;
  *(&v45 + 1) = 0x1000000000;
  if (a4)
  {
    v11 = a3 + 16 * a4;
    goto LABEL_11;
  }

  v27 = getenv("PATH");
  if (v27)
  {
    v28 = v27;
    v29 = strlen(v27);
    llvm::SplitString(v28, v29, &v45, ":", 1);
    if (DWORD2(v45))
    {
      a3 = v45;
      v11 = v45 + 16 * DWORD2(v45);
      do
      {
LABEL_11:
        v12 = *(a3 + 8);
        if (!v12)
        {
          goto LABEL_10;
        }

        v13 = *a3;
        __src = v44;
        __len = xmmword_1E0971D70;
        if (v12 < 0x81)
        {
          v14 = 0;
          v15 = v44;
        }

        else
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(&__src, v44, v12, 1);
          v15 = __src;
          v14 = __len;
        }

        memcpy(&v15[v14], v13, v12);
        *&__len = __len + v12;
        v41 = 261;
        *&__dst = __s;
        *(&__dst + 1) = v7;
        v38 = 257;
        v36 = 257;
        v34 = 257;
        llvm::sys::path::append(&__src, &__dst, &v37, &v35, &v33);
        if ((__len + 1) > *(&__len + 1))
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(&__src, v44, __len + 1, 1);
          *(__src + __len) = 0;
          v17 = __src;
          v41 = 257;
          if (!*__src)
          {
LABEL_20:
            LOBYTE(v41) = 1;
            can_execute = llvm::sys::fs::can_execute(&__dst, v16);
            v20 = can_execute;
            v21 = __src;
            if (!can_execute)
            {
              goto LABEL_31;
            }

LABEL_21:
            v23 = __len;
            if (__len > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_45;
            }

            v24 = v7;
            if (__len >= 0x17)
            {
              if ((__len | 7) == 0x17)
              {
                v26 = 25;
              }

              else
              {
                v26 = (__len | 7) + 1;
              }

              p_dst = operator new(v26);
              *(&__dst + 1) = v23;
              v40 = v26 | 0x8000000000000000;
              *&__dst = p_dst;
            }

            else
            {
              HIBYTE(v40) = __len;
              p_dst = &__dst;
              if (!__len)
              {
                goto LABEL_30;
              }
            }

            memmove(p_dst, v21, v23);
LABEL_30:
            *(p_dst + v23) = 0;
            *(a5 + 24) &= ~1u;
            result = *&__dst;
            *a5 = __dst;
            *(a5 + 16) = v40;
            v21 = __src;
            v7 = v24;
            goto LABEL_31;
          }
        }

        else
        {
          *(__src + __len) = 0;
          v17 = __src;
          v41 = 257;
          if (!*__src)
          {
            goto LABEL_20;
          }
        }

        *&__dst = v17;
        LOBYTE(v41) = 3;
        v18 = llvm::sys::fs::can_execute(&__dst, v16);
        v20 = v18;
        v21 = __src;
        if (v18)
        {
          goto LABEL_21;
        }

LABEL_31:
        if (v21 != v44)
        {
          free(v21);
        }

        if (v20)
        {
          goto LABEL_37;
        }

LABEL_10:
        a3 += 16;
      }

      while (a3 != v11);
    }
  }

  *(a5 + 24) |= 1u;
  v30 = std::generic_category();
  *a5 = 2;
  *(a5 + 8) = v30;
LABEL_37:
  if (v45 != v46)
  {
    free(v45);
  }

  return result;
}

void *std::string::basic_string<llvm::StringRef,0>(void *__dst, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v4 = *a2;
  if (v2 >= 0x17)
  {
    if ((v2 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (v2 | 7) + 1;
    }

    v5 = operator new(v6);
    __dst[1] = v2;
    __dst[2] = v6 | 0x8000000000000000;
    *__dst = v5;
  }

  else
  {
    *(__dst + 23) = v2;
    v5 = __dst;
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  memmove(v5, v4, v2);
LABEL_10:
  *(v5 + v2) = 0;
  return __dst;
}

void MakeErrMsg(uint64_t a1, const void **a2, llvm::sys *this)
{
  v21[2] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  v3 = this;
  if (this == -1)
  {
    v3 = *__error();
  }

  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  v8 = v7 + 2;
  if (v7 + 2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (v8 >= 0x17)
  {
    if ((v8 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v8 | 7) + 1;
    }

    v10 = operator new(v9);
    v20.__r_.__value_.__l.__size_ = v7 + 2;
    v20.__r_.__value_.__r.__words[2] = v9 | 0x8000000000000000;
    v20.__r_.__value_.__r.__words[0] = v10;
    goto LABEL_14;
  }

  memset(&v20, 0, sizeof(v20));
  v10 = &v20;
  *(&v20.__r_.__value_.__s + 23) = v7 + 2;
  if (v7)
  {
LABEL_14:
    if (v6 >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    memmove(v10, v11, v7);
  }

  strcpy(v10 + v7, ": ");
  llvm::sys::StrError(v3, __p);
  if ((v19 & 0x80u) == 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v13 = v19;
  }

  else
  {
    v13 = __p[1];
  }

  v14 = std::string::append(&v20, v12, v13);
  v15 = v14->__r_.__value_.__r.__words[0];
  v21[0] = v14->__r_.__value_.__l.__size_;
  *(v21 + 7) = *(&v14->__r_.__value_.__r.__words[1] + 7);
  v16 = HIBYTE(v14->__r_.__value_.__r.__words[2]);
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v17 = v21[0];
  *a1 = v15;
  *(a1 + 8) = v17;
  *(a1 + 15) = *(v21 + 7);
  *(a1 + 23) = v16;
  if ((v19 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_30:
    operator delete(v20.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_30;
  }
}

void toNullTerminatedCStringArray(void *a1, uint64_t a2, uint64_t a3, void ***a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = a2 + 16 * a3;
    do
    {
      while (1)
      {
        v11 = llvm::StringSaver::save(a4, *v6, *(v6 + 8));
        if (v9 >= v8)
        {
          break;
        }

        *v9 = v11;
        v9 += 8;
        a1[1] = v9;
        v6 += 16;
        if (v6 == v10)
        {
          goto LABEL_18;
        }
      }

      v12 = v9 - v7;
      v13 = (v9 - v7) >> 3;
      v14 = v13 + 1;
      if ((v13 + 1) >> 61)
      {
        goto LABEL_34;
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
          goto LABEL_35;
        }

        v16 = v11;
        v17 = operator new(8 * v15);
        v11 = v16;
      }

      else
      {
        v17 = 0;
      }

      v18 = &v17[8 * v13];
      v8 = &v17[8 * v15];
      *v18 = v11;
      v9 = v18 + 8;
      memcpy(v17, v7, v12);
      *a1 = v17;
      a1[1] = v9;
      a1[2] = v8;
      if (v7)
      {
        operator delete(v7);
      }

      v7 = v17;
      a1[1] = v9;
      v6 += 16;
    }

    while (v6 != v10);
LABEL_18:
    v19 = a1[2];
    if (v9 < v19)
    {
      *v9 = 0;
      v20 = v9 + 8;
      goto LABEL_33;
    }
  }

  else
  {
    v9 = 0;
    v19 = 0;
    v7 = 0;
  }

  v21 = v9 - v7;
  v22 = (v9 - v7) >> 3;
  v23 = v22 + 1;
  if ((v22 + 1) >> 61)
  {
LABEL_34:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v24 = v19 - v7;
  if (v24 >> 2 > v23)
  {
    v23 = v24 >> 2;
  }

  if (v24 >= 0x7FFFFFFFFFFFFFF8)
  {
    v25 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v25 = v23;
  }

  if (v25)
  {
    if (v25 >> 61)
    {
LABEL_35:
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v26 = operator new(8 * v25);
  }

  else
  {
    v26 = 0;
  }

  v27 = &v26[8 * v22];
  *v27 = 0;
  v20 = v27 + 8;
  memcpy(v26, v7, v21);
  *a1 = v26;
  a1[1] = v20;
  a1[2] = &v26[8 * v25];
  if (v7)
  {
    operator delete(v7);
  }

LABEL_33:
  a1[1] = v20;
}

uint64_t RedirectIO(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 16) != 1)
  {
    return 0;
  }

  memset(&v21, 0, sizeof(v21));
  v5 = *(a1 + 8);
  if (v5)
  {
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v6 = *a1;
    if (v5 >= 0x17)
    {
      if ((v5 | 7) == 0x17)
      {
        v9 = 25;
      }

      else
      {
        v9 = (v5 | 7) + 1;
      }

      p_dst = operator new(v9);
      __dst.__r_.__value_.__l.__size_ = v5;
      __dst.__r_.__value_.__r.__words[2] = v9 | 0x8000000000000000;
      __dst.__r_.__value_.__r.__words[0] = p_dst;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = *(a1 + 8);
      p_dst = &__dst;
    }

    memmove(p_dst, v6, v5);
    p_dst->__r_.__value_.__s.__data_[v5] = 0;
    v21 = __dst;
  }

  else
  {
    MEMORY[0x1E12E55D0](&v21, "/dev/null");
  }

  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v21;
  }

  else
  {
    v10 = v21.__r_.__value_.__r.__words[0];
  }

  if (a2)
  {
    v11 = open(v10, 513, 438);
  }

  else
  {
    v11 = open(v10, 0, 438);
  }

  if (v11 != -1)
  {
    v12 = v11;
    if (dup2(v11, a2) == -1)
    {
      *(&__dst.__r_.__value_.__s + 23) = 11;
      strcpy(&__dst, "Cannot dup2");
      MakeErrMsg(a3, &__dst.__r_.__value_.__l.__data_, 0xFFFFFFFFLL);
      close(v12);
      result = 1;
      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      close(v12);
      result = 0;
      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_37;
      }
    }

    return result;
  }

  std::operator+<char>();
  v13 = std::string::append(&v18, "' for ");
  v14 = v13->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = *&v13->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (a2)
  {
    v15 = "output";
  }

  else
  {
    v15 = "input";
  }

  v16 = std::string::append(&v19, v15);
  __dst = *v16;
  v16->__r_.__value_.__r.__words[0] = 0;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  MakeErrMsg(a3, &__dst.__r_.__value_.__l.__data_, 0xFFFFFFFFLL);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_29:
      if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_36;
    }
  }

  else if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_29;
  }

  operator delete(v19.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_30:
    result = 1;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_37;
    }

    return result;
  }

LABEL_36:
  operator delete(v18.__r_.__value_.__l.__data_);
  result = 1;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_37:
    v17 = result;
    operator delete(v21.__r_.__value_.__l.__data_);
    return v17;
  }

  return result;
}

uint64_t SetMemoryLimits(unsigned int a1)
{
  v1 = a1 << 20;
  getrlimit(2, &v3);
  v3.rlim_cur = v1;
  setrlimit(2, &v3);
  getrlimit(5, &v3);
  v3.rlim_cur = v1;
  return setrlimit(5, &v3);
}

llvm::sys::RWMutexImpl *llvm::sys::RWMutexImpl::RWMutexImpl(llvm::sys::RWMutexImpl *this)
{
  *this = 0;
  v2 = malloc(0xC8uLL);
  if (!v2)
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  v3 = v2;
  bzero(v2, 0xC8uLL);
  pthread_rwlock_init(v3, 0);
  *this = v3;
  return this;
}

void llvm::sys::RWMutexImpl::~RWMutexImpl(pthread_rwlock_t **this)
{
  v1 = *this;
  pthread_rwlock_destroy(*this);
  free(v1);
}

void llvm::initSignalsOptions(llvm *this)
{
  if (atomic_load_explicit(qword_1EE17D2B8, memory_order_acquire))
  {
    if (atomic_load_explicit(qword_1EE17D2D0, memory_order_acquire))
    {
      return;
    }

LABEL_5:
    return;
  }

  if (!atomic_load_explicit(qword_1EE17D2D0, memory_order_acquire))
  {
    goto LABEL_5;
  }
}

uint64_t llvm::sys::RunSignalHandlers(llvm::sys *this)
{
  v1 = 2;
  v2 = 2;
  atomic_compare_exchange_strong(dword_1EE17D340, &v2, 3u);
  if (v2 == 2)
  {
    result = qword_1EE17D330(*algn_1EE17D338);
    qword_1EE17D330 = 0;
    *algn_1EE17D338 = 0;
    atomic_store(0, dword_1EE17D340);
  }

  atomic_compare_exchange_strong(dword_1EE17D358, &v1, 3u);
  if (v1 == 2)
  {
    result = qword_1EE17D348(unk_1EE17D350);
    qword_1EE17D348 = 0;
    unk_1EE17D350 = 0;
    atomic_store(0, dword_1EE17D358);
  }

  v4 = 2;
  v5 = 2;
  atomic_compare_exchange_strong(dword_1EE17D370, &v5, 3u);
  if (v5 == 2)
  {
    result = qword_1EE17D360(*algn_1EE17D368);
    qword_1EE17D360 = 0;
    *algn_1EE17D368 = 0;
    atomic_store(0, dword_1EE17D370);
  }

  atomic_compare_exchange_strong(dword_1EE17D388, &v4, 3u);
  if (v4 == 2)
  {
    result = qword_1EE17D378(unk_1EE17D380);
    qword_1EE17D378 = 0;
    unk_1EE17D380 = 0;
    atomic_store(0, dword_1EE17D388);
  }

  v6 = 2;
  v7 = 2;
  atomic_compare_exchange_strong(dword_1EE17D3A0, &v7, 3u);
  if (v7 == 2)
  {
    result = qword_1EE17D390(*algn_1EE17D398);
    qword_1EE17D390 = 0;
    *algn_1EE17D398 = 0;
    atomic_store(0, dword_1EE17D3A0);
  }

  atomic_compare_exchange_strong(dword_1EE17D3B8, &v6, 3u);
  if (v6 == 2)
  {
    result = qword_1EE17D3A8(unk_1EE17D3B0);
    qword_1EE17D3A8 = 0;
    unk_1EE17D3B0 = 0;
    atomic_store(0, dword_1EE17D3B8);
  }

  v8 = 2;
  v9 = 2;
  atomic_compare_exchange_strong(dword_1EE17D3D0, &v9, 3u);
  if (v9 != 2)
  {
    atomic_compare_exchange_strong(dword_1EE17D3E8, &v8, 3u);
    if (v8 != 2)
    {
      return result;
    }

LABEL_17:
    result = qword_1EE17D3D8(unk_1EE17D3E0);
    qword_1EE17D3D8 = 0;
    unk_1EE17D3E0 = 0;
    atomic_store(0, dword_1EE17D3E8);
    return result;
  }

  result = qword_1EE17D3C0(*algn_1EE17D3C8);
  qword_1EE17D3C0 = 0;
  *algn_1EE17D3C8 = 0;
  atomic_store(0, dword_1EE17D3D0);
  atomic_compare_exchange_strong(dword_1EE17D3E8, &v8, 3u);
  if (v8 == 2)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t printSymbolizedStackTrace(unint64_t a1, unint64_t a2, intptr_t *a3, int a4, llvm::raw_ostream *a5)
{
  v130 = *MEMORY[0x1E69E9840];
  __src.n128_u64[0] = a1;
  __src.n128_u64[1] = a2;
  v94 = a3;
  v93 = a4;
  if ((DisableSymbolicationFlag & 1) != 0 || getenv("LLVM_DISABLE_SYMBOLIZATION") || llvm::StringRef::find(&__src, "llvm-symbolizer", 0xFuLL, 0) != -1)
  {
    return 0;
  }

  v7 = std::system_category();
  v129 |= 1u;
  v127.n128_u64[0] = 0;
  v127.n128_u64[1] = v7;
  v8 = getenv("LLVM_SYMBOLIZER_PATH");
  if (v8)
  {
    v9 = v8;
    v10 = strlen(v8);
    llvm::sys::findProgramByName(v9, v10, 0, 0, &__p);
    v11 = v129;
    if ((v129 & 1) == 0 && SHIBYTE(v128) < 0)
    {
      operator delete(v127.n128_u64[0]);
      v11 = v129;
    }

    if ((v98 & 1) == 0)
    {
LABEL_21:
      v129 = v11 & 0xFE;
      v127 = __p;
      v128 = v97;
      goto LABEL_22;
    }

    v129 = v11 | 1;
    v127 = __p;
LABEL_17:
    llvm::sys::findProgramByName("llvm-symbolizer", 0xFuLL, 0, 0, &__p);
    v11 = v129;
    if ((v129 & 1) == 0 && SHIBYTE(v128) < 0)
    {
      operator delete(v127.n128_u64[0]);
      v11 = v129;
    }

    if (v98)
    {
      return 0;
    }

    goto LABEL_21;
  }

  if (!__src.n128_u64[1])
  {
    goto LABEL_17;
  }

  *v113 = llvm::sys::path::parent_path(__src.n128_u64[0], __src.n128_u64[1], 0);
  *&v113[8] = v12;
  if (v12)
  {
    llvm::sys::findProgramByName("llvm-symbolizer", 0xFuLL, v113, 1, &__p);
    llvm::ErrorOr<std::string>::operator=(&v127, &__p);
    if ((v98 & 1) == 0 && SHIBYTE(v97) < 0)
    {
      operator delete(__p.n128_u64[0]);
    }
  }

  if (v129)
  {
    goto LABEL_17;
  }

LABEL_22:
  LOWORD(v99) = 261;
  __p = __src;
  if (!llvm::sys::fs::access(&__p, 0))
  {
    v13 = __src.n128_u64[1];
    if (__src.n128_u64[1] >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v14 = __src.n128_u64[0];
    if (__src.n128_u64[1] >= 0x17)
    {
      if ((__src.n128_u64[1] | 7) == 0x17)
      {
        v16 = 25;
      }

      else
      {
        v16 = (__src.n128_u64[1] | 7) + 1;
      }

      v15 = operator new(v16);
      __dst[1] = v13;
      v92 = v16 | 0x8000000000000000;
      __dst[0] = v15;
    }

    else
    {
      HIBYTE(v92) = __src.n128_u8[8];
      v15 = __dst;
      if (!__src.n128_u64[1])
      {
        goto LABEL_33;
      }
    }

    memmove(v15, v14, v13);
LABEL_33:
    *(v13 + v15) = 0;
    goto LABEL_34;
  }

  llvm::sys::fs::getMainExecutable(__dst);
LABEL_34:
  v120[4] = 0;
  v120[5] = 0;
  v121 = v123;
  v122 = 0x400000000;
  v124 = v126;
  v125 = 0;
  v126[0] = 0;
  v126[1] = 1;
  v17 = v93;
  if (v93)
  {
    if (v93 < 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v18 = operator new(8 * v93);
    bzero(v18, 8 * v17);
    v19 = operator new(8 * v17);
    bzero(v19, 8 * v17);
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  v20 = v94;
  v21 = _dyld_image_count();
  if (v21)
  {
    v22 = v21;
    v23 = 0;
    if (v17)
    {
      do
      {
        image_name = _dyld_get_image_name(v23);
        image_vmaddr_slide = _dyld_get_image_vmaddr_slide(v23);
        image_header = _dyld_get_image_header(v23);
        if (image_header)
        {
          ncmds = image_header->ncmds;
          if (ncmds)
          {
            v30 = 0;
            p_cputype = &image_header[1].cputype;
            do
            {
              v32 = v18;
              v33 = v17;
              v34 = v20;
              v35 = v19;
              if ((*p_cputype & 0x7FFFFFFF) == 0x19)
              {
                do
                {
                  if (!*v32)
                  {
                    v36 = *v34;
                    v37 = *(p_cputype + 3) + image_vmaddr_slide;
                    if (v37 <= *v34 && *(p_cputype + 4) + v37 > v36)
                    {
                      *v32 = image_name;
                      *v35 = v36 - image_vmaddr_slide;
                    }
                  }

                  ++v35;
                  ++v34;
                  ++v32;
                  --v33;
                }

                while (v33);
              }

              p_cputype = (p_cputype + p_cputype[1]);
              ++v30;
            }

            while (v30 != ncmds);
          }
        }

        ++v23;
      }

      while (v23 != v22);
    }

    else
    {
      do
      {
        _dyld_get_image_name(v23);
        _dyld_get_image_vmaddr_slide(v23);
        _dyld_get_image_header(v23++);
      }

      while (v22 != v23);
    }
  }

  v90 = 0;
  *v119 = v120;
  *&v119[8] = xmmword_1E096E640;
  v116 = v118;
  v117 = xmmword_1E096E640;
  __p.n128_u64[0] = "symbolizer-input";
  LOWORD(v99) = 259;
  llvm::sys::fs::createTemporaryFile(&__p, "", 0, &v90, v119, 0);
  __p.n128_u64[0] = "symbolizer-output";
  LOWORD(v99) = 259;
  llvm::sys::fs::createTemporaryFile(&__p, "", 0, &v116, 0);
  v24 = *&v119[8];
  if ((*&v119[8] + 1) > *&v119[16])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(v119, v120, *&v119[8] + 1, 1);
    v24 = *&v119[8];
  }

  *(*v119 + v24) = 0;
  LOWORD(v99) = 257;
  if (**v119)
  {
    __p.n128_u64[0] = *v119;
    v25 = 3;
  }

  else
  {
    v25 = 1;
  }

  LOBYTE(v99) = v25;
  *v113 = v114;
  *&v113[8] = xmmword_1E0971D70;
  v115 = 1;
  llvm::Twine::toVector(&__p, v113);
  v38 = v117;
  if ((v117 + 1) > *(&v117 + 1))
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(&v116, v118, v117 + 1, 1);
    v38 = v117;
  }

  *(v116 + v38) = 0;
  LOWORD(v99) = 257;
  if (*v116)
  {
    __p.n128_u64[0] = v116;
    v39 = 3;
  }

  else
  {
    v39 = 1;
  }

  LOBYTE(v99) = v39;
  *v110 = v111;
  *&v110[8] = xmmword_1E0971D70;
  v112 = 1;
  llvm::Twine::toVector(&__p, v110);
  llvm::raw_fd_ostream::raw_fd_ostream(&__p, v90, 1, 0, 0);
  if (v93 >= 1)
  {
    for (i = 0; i < v93; ++i)
    {
      v44 = *(v18 + i);
      if (!v44)
      {
        continue;
      }

      v45 = strlen(*(v18 + i));
      v46 = v45;
      v47 = v99;
      if (v45 <= v98 - v99)
      {
        if (v45)
        {
          memcpy(v99, v44, v45);
          v47 = &v99[v46];
          v99 += v46;
        }

        p_p = &__p;
        if (v98 != v47)
        {
LABEL_75:
          *v47 = 32;
          ++p_p[2].n128_u64[0];
          v42 = llvm::raw_ostream::operator<<(p_p, *(v19 + i));
          v43 = v42[4];
          if (v42[3] == v43)
          {
LABEL_76:
            llvm::raw_ostream::write(v42, "\n", 1uLL);
            continue;
          }

          goto LABEL_66;
        }
      }

      else
      {
        p_p = llvm::raw_ostream::write(&__p, v44, v45);
        v47 = p_p[2].n128_u64[0];
        if (p_p[1].n128_u64[1] != v47)
        {
          goto LABEL_75;
        }
      }

      v41 = llvm::raw_ostream::write(p_p, " ", 1uLL);
      v42 = llvm::raw_ostream::operator<<(v41, *(v19 + i));
      v43 = v42[4];
      if (v42[3] == v43)
      {
        goto LABEL_76;
      }

LABEL_66:
      *v43 = 10;
      ++v42[4];
    }
  }

  llvm::raw_fd_ostream::~raw_fd_ostream(&__p);
  *&v103.__r_.__value_.__l.__data_ = *v119;
  v103.__r_.__value_.__s.__data_[16] = 1;
  v104 = v116;
  v105 = v117;
  v106 = 1;
  v107 = "";
  v108 = 0;
  v109 = 1;
  v102[0] = xmmword_1E86D4400;
  v102[1] = *&off_1E86D4410;
  v102[2] = xmmword_1E86D4420;
  v102[3] = *&off_1E86D4430;
  if (v128 >= 0)
  {
    v49 = &v127;
  }

  else
  {
    v49 = v127.n128_u64[0];
  }

  if (v128 >= 0)
  {
    v50 = SHIBYTE(v128);
  }

  else
  {
    v50 = v127.n128_u64[1];
  }

  __p.n128_u8[0] = 0;
  LOBYTE(v97) = 0;
  v51 = llvm::sys::ExecuteAndWait(v49, v50, v102, 4, &__p, &v103, 3, 0, 0, 0, 0, 0);
  v52 = 0;
  if (v51)
  {
    goto LABEL_139;
  }

  v53 = llvm::SmallString<32u>::c_str(&v116);
  LOWORD(v99) = 257;
  if (*v53)
  {
    __p.n128_u64[0] = v53;
    v54 = 3;
  }

  else
  {
    v54 = 1;
  }

  LOBYTE(v99) = v54;
  llvm::MemoryBuffer::getFile(&__p, 0, 1, 0, 0, &v100);
  v52 = 0;
  if (v101)
  {
    goto LABEL_139;
  }

  v55 = *(v100 + 16) - *(v100 + 8);
  *&v89 = *(v100 + 8);
  *(&v89 + 1) = v55;
  __p.n128_u64[0] = &v97;
  __p.n128_u64[1] = 0x2000000000;
  llvm::StringRef::split(&v89, &__p, "\n", 1uLL, -1, 1);
  v56 = __p.n128_u64[0];
  v88 = 0;
  if (v93 < 1)
  {
    goto LABEL_132;
  }

  for (j = 0; j < v93; LODWORD(v88) = j)
  {
    v87[0] = a5;
    v87[1] = &v88 + 4;
    v87[2] = &v93;
    v87[3] = &v94;
    v87[4] = &v88;
    if (*(v18 + j))
    {
      v58 = __p.n128_u64[0];
      if (v56 == (__p.n128_u64[0] + 16 * __p.n128_u32[2]))
      {
LABEL_133:
        v56 = v58;
        v52 = 0;
        goto LABEL_134;
      }

      v56 += 2;
      while (1)
      {
        v60 = *(v56 - 1);
        if (!v60)
        {
          goto LABEL_130;
        }

        v61 = *(v56 - 2);
        printSymbolizedStackTrace(llvm::StringRef,void **,int,llvm::raw_ostream &)::$_0::operator()(v87);
        if (v60 == 1 || *v61 != 16191)
        {
          v62 = *(a5 + 4);
          if (v60 <= *(a5 + 3) - v62)
          {
            memcpy(v62, v61, v60);
            v64 = (*(a5 + 4) + v60);
            *(a5 + 4) = v64;
            v63 = a5;
            if (v64 >= *(a5 + 3))
            {
LABEL_100:
              llvm::raw_ostream::write(v63, 32);
              goto LABEL_103;
            }
          }

          else
          {
            v63 = llvm::raw_ostream::write(a5, v61, v60);
            v64 = *(v63 + 4);
            if (v64 >= *(v63 + 3))
            {
              goto LABEL_100;
            }
          }

          *(v63 + 4) = v64 + 1;
          *v64 = 32;
        }

LABEL_103:
        v58 = __p.n128_u64[0];
        if (v56 == (__p.n128_u64[0] + 16 * __p.n128_u32[2]))
        {
          goto LABEL_133;
        }

        v65 = *v56;
        v66 = v56[1];
        if (v66 >= 2 && *v65 == 16191)
        {
          v70 = *(a5 + 4);
          if (*(a5 + 3) == v70)
          {
            v71 = llvm::raw_ostream::write(a5, "(", 1uLL);
          }

          else
          {
            *v70 = 40;
            ++*(a5 + 4);
            v71 = a5;
          }

          v72 = *(v18 + v88);
          if (v72)
          {
            v73 = v71;
            v74 = strlen(*(v18 + v88));
            v71 = v73;
            if (v74 <= *(v73 + 3) - *(v73 + 4))
            {
              if (v74)
              {
                memcpy(*(v73 + 4), v72, v74);
                v71 = v73;
                *(v73 + 4) += v74;
              }
            }

            else
            {
              v71 = llvm::raw_ostream::write(v73, v72, v74);
            }
          }

          v75 = *(v71 + 4);
          if (v75 >= *(v71 + 3))
          {
            v71 = llvm::raw_ostream::write(v71, 43);
          }

          else
          {
            *(v71 + 4) = v75 + 1;
            *v75 = 43;
          }

          v83[0] = *(v19 + v88);
          v83[1] = 0;
          v84 = 0;
          v85 = 1;
          v86 = 1;
          v68 = llvm::raw_ostream::operator<<(v71, v83);
          v76 = v68[4];
          if (v68[3] != v76)
          {
            *v76 = 41;
            ++v68[4];
            goto LABEL_124;
          }

          v65 = ")";
          v66 = 1;
        }

        else
        {
          v67 = *(a5 + 4);
          if (v66 <= *(a5 + 3) - v67)
          {
            if (v66)
            {
              v69 = v56[1];
              memcpy(v67, v65, v66);
              *(a5 + 4) += v69;
            }

            goto LABEL_124;
          }

          v68 = a5;
        }

        llvm::raw_ostream::write(v68, v65, v66);
LABEL_124:
        v77 = *(a5 + 4);
        if (*(a5 + 3) == v77)
        {
          llvm::raw_ostream::write(a5, "\n", 1uLL);
        }

        else
        {
          *v77 = 10;
          ++*(a5 + 4);
        }

        v58 = __p.n128_u64[0];
        v59 = v56 + 2;
        v56 += 4;
        if (v59 == (__p.n128_u64[0] + 16 * __p.n128_u32[2]))
        {
          goto LABEL_133;
        }
      }
    }

    printSymbolizedStackTrace(llvm::StringRef,void **,int,llvm::raw_ostream &)::$_0::operator()(v87);
    v78 = *(a5 + 4);
    if (v78 >= *(a5 + 3))
    {
      llvm::raw_ostream::write(a5, 10);
    }

    else
    {
      *(a5 + 4) = v78 + 1;
      *v78 = 10;
    }

LABEL_130:
    j = v88 + 1;
  }

  v56 = __p.n128_u64[0];
LABEL_132:
  v52 = 1;
LABEL_134:
  if (v56 != &v97)
  {
    v79 = v52;
    free(v56);
    v52 = v79;
  }

  if ((v101 & 1) == 0)
  {
    v80 = v100;
    v100 = 0;
    if (v80)
    {
      v81 = v52;
      (*(*v80 + 8))(v80);
      v52 = v81;
    }
  }

LABEL_139:
  v82 = v52;
  if (v112 == 1)
  {
    LOWORD(v99) = 261;
    __p = *v110;
    llvm::sys::fs::remove(&__p, 1);
  }

  if (*v110 != v111)
  {
    free(*v110);
  }

  if (v115 == 1)
  {
    LOWORD(v99) = 261;
    __p = *v113;
    llvm::sys::fs::remove(&__p, 1);
  }

  if (*v113 != v114)
  {
    free(*v113);
  }

  if (v116 != v118)
  {
    free(v116);
  }

  if (*v119 != v120)
  {
    free(*v119);
  }

  if (v19)
  {
    operator delete(v19);
  }

  if (v18)
  {
    operator delete(v18);
  }

  if (v122)
  {
    llvm::deallocate_buffer(*v121, 0x1000);
  }

  if (v125)
  {
    llvm::deallocate_buffer(*v124, v124[1]);
  }

  if (v124 != v126)
  {
    free(v124);
  }

  if (v121 != v123)
  {
    free(v121);
  }

  if (SHIBYTE(v92) < 0)
  {
    operator delete(__dst[0]);
  }

  if ((v129 & 1) == 0 && SHIBYTE(v128) < 0)
  {
    operator delete(v127.n128_u64[0]);
  }

  return v82;
}

__n128 llvm::ErrorOr<std::string>::operator=(__n128 *a1, __n128 *a2)
{
  if (a1 == a2)
  {
    return result;
  }

  v2 = a1[1].n128_u8[8];
  if ((v2 & 1) == 0 && a1[1].n128_i8[7] < 0)
  {
    v7 = a1;
    v8 = a2;
    operator delete(a1->n128_u64[0]);
    a2 = v8;
    a1 = v7;
    v2 = v7[1].n128_u8[8];
    if (v8[1].n128_u8[8])
    {
      goto LABEL_5;
    }

LABEL_10:
    a1[1].n128_u8[8] = v2 & 0xFE;
    result = *a2;
    a1[1].n128_u64[0] = a2[1].n128_u64[0];
    *a1 = result;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    a2->n128_u64[0] = 0;
    return result;
  }

  if ((a2[1].n128_u8[8] & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  a1[1].n128_u8[8] = v2 | 1;
  if (a2[1].n128_u8[8])
  {
    v4 = a2->n128_u64[0];
    v3 = a2->n128_u64[1];
  }

  else
  {
    v5 = a1;
    v3 = std::system_category();
    a1 = v5;
    v4 = 0;
  }

  a1->n128_u64[0] = v4;
  a1->n128_u64[1] = v3;
  return result;
}

uint64_t llvm::SmallString<32u>::c_str(void *a1)
{
  v1 = a1[1];
  if ((v1 + 1) > a1[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, v1 + 1, 1);
    *(*a1 + a1[1]) = 0;
    return *a1;
  }

  else
  {
    *(*a1 + v1) = 0;
    return *a1;
  }
}

void printSymbolizedStackTrace(llvm::StringRef,void **,int,llvm::raw_ostream &)::$_0::operator()(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = (*v2)++;
  v16[0] = "#{0}";
  v16[1] = 4;
  v16[2] = &v20;
  v16[3] = 1;
  v17 = 1;
  v18 = &unk_1F5B3FD18;
  v19 = v4;
  v20 = &v18;
  __p = 0;
  v22 = 0;
  v23 = 0;
  LODWORD(v25) = 0;
  v29 = 0;
  v30 = 1;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  p_p = &__p;
  v24 = &unk_1F5B3FB30;
  v31 = &__p;
  llvm::raw_ostream::SetBufferAndMode(&v24, 0, 0, 0);
  llvm::raw_ostream::operator<<(&v24, v16);
  if (v28 != v26)
  {
    llvm::raw_ostream::flush_nonempty(&v24);
  }

  llvm::raw_ostream::~raw_ostream(&v24);
  if (v23 < 0)
  {
    p_p = __p;
  }

  if (v23 >= 0)
  {
    v6 = SHIBYTE(v23);
  }

  else
  {
    v6 = v22;
  }

  v7 = log10(**(a1 + 16));
  v24 = p_p;
  v25 = v6;
  LODWORD(v26) = (v7 + 2.0);
  HIDWORD(v26) = 2;
  v8 = llvm::raw_ostream::operator<<(v3, &v24);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    v8 = llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  v12[0] = *(**(a1 + 24) + 8 * **(a1 + 32));
  v12[1] = 0;
  v13 = 18;
  v14 = 1;
  v15 = 1;
  v10 = llvm::raw_ostream::operator<<(v8, v12);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
    if (SHIBYTE(v23) < 0)
    {
LABEL_16:
      operator delete(__p);
    }
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
    if (SHIBYTE(v23) < 0)
    {
      goto LABEL_16;
    }
  }
}

uint64_t printMarkupStackTrace(const void *a1, size_t a2)
{
  v4 = getenv("LLVM_ENABLE_SYMBOLIZER_MARKUP");
  if (!v4 || !*v4)
  {
    return 0;
  }

  v9 = 261;
  v8[0] = a1;
  v8[1] = a2;
  if (!llvm::sys::fs::access(v8, 0))
  {
    if (a2 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    if (a2 >= 0x17)
    {
      if ((a2 | 7) == 0x17)
      {
        v7 = 25;
      }

      else
      {
        v7 = (a2 | 7) + 1;
      }

      v6 = operator new(v7);
      __dst[1] = a2;
      v11 = v7 | 0x8000000000000000;
      __dst[0] = v6;
    }

    else
    {
      HIBYTE(v11) = a2;
      v6 = __dst;
      if (!a2)
      {
LABEL_15:
        *(v6 + a2) = 0;
        if ((SHIBYTE(v11) & 0x80000000) == 0)
        {
          return 0;
        }

        goto LABEL_16;
      }
    }

    memmove(v6, a1, a2);
    goto LABEL_15;
  }

  llvm::sys::fs::getMainExecutable(__dst);
  if ((SHIBYTE(v11) & 0x80000000) == 0)
  {
    return 0;
  }

LABEL_16:
  operator delete(__dst[0]);
  return 0;
}

uint64_t llvm::sys::CleanupOnSignal(uint64_t this)
{
  v1 = this;
  if ((this - 29) > 1)
  {
    v5 = atomic_exchange(&qword_1EE17D2B0, 0);
    if (v5)
    {
      v6 = v5;
      do
      {
        v7 = atomic_exchange(v6, 0);
        if (v7)
        {
          this = stat(v7, &v8);
          if (!this && (v8.st_mode & 0xF000) == 0x8000)
          {
            this = unlink(v7);
            atomic_exchange(v6, v7);
          }
        }

        v6 = atomic_load((v6 + 8));
      }

      while (v6);
    }

    atomic_exchange(&qword_1EE17D2B0, v5);
    if (v1 > 0x1F || ((1 << v1) & 0x8000A006) == 0)
    {
      return llvm::sys::RunSignalHandlers(this);
    }
  }

  else
  {
    this = __error();
    v2 = this;
    v3 = *this;
    v4 = atomic_load(&qword_1EE17D2A0);
    if (v4)
    {
      this = v4();
    }

    *v2 = v3;
  }

  return this;
}

int *InfoSignalHandler()
{
  result = __error();
  v1 = result;
  v2 = *result;
  v3 = atomic_load(&qword_1EE17D2A0);
  if (v3)
  {
    result = v3();
  }

  *v1 = v2;
  return result;
}

void llvm::sys::RunInterruptHandlers(llvm::sys *this)
{
  v1 = atomic_exchange(&qword_1EE17D2B0, 0);
  if (v1)
  {
    v2 = v1;
    do
    {
      v3 = atomic_exchange(v2, 0);
      if (v3 && !stat(v3, &v4) && (v4.st_mode & 0xF000) == 0x8000)
      {
        unlink(v3);
        atomic_exchange(v2, v3);
      }

      v2 = atomic_load((v2 + 8));
    }

    while (v2);
  }

  atomic_exchange(&qword_1EE17D2B0, v1);
}

void RegisterHandlers(void)
{
  if (!atomic_load_explicit(qword_1EE17D300, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_1EE17D300, llvm::object_creator<llvm::sys::SmartMutex<true>>::call, llvm::object_deleter<llvm::sys::SmartMutex<true>>::call);
  }

  v0 = qword_1EE17D300[0];
  std::recursive_mutex::lock(qword_1EE17D300[0]);
  if (!atomic_load(_MergedGlobals_62))
  {
    v2 = atomic_load(_MergedGlobals_62);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v3 = (&unk_1EE17D3F0 + 24 * v2);
    sigaction(1, &v39, v3);
    LODWORD(v3[1].__sigaction_u.__sa_handler) = 1;
    atomic_fetch_add(_MergedGlobals_62, 1u);
    v4 = atomic_load(_MergedGlobals_62);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v5 = (&unk_1EE17D3F0 + 24 * v4);
    sigaction(2, &v39, v5);
    LODWORD(v5[1].__sigaction_u.__sa_handler) = 2;
    atomic_fetch_add(_MergedGlobals_62, 1u);
    v6 = atomic_load(_MergedGlobals_62);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v7 = (&unk_1EE17D3F0 + 24 * v6);
    sigaction(15, &v39, v7);
    LODWORD(v7[1].__sigaction_u.__sa_handler) = 15;
    atomic_fetch_add(_MergedGlobals_62, 1u);
    v8 = atomic_load(_MergedGlobals_62);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v9 = (&unk_1EE17D3F0 + 24 * v8);
    sigaction(31, &v39, v9);
    LODWORD(v9[1].__sigaction_u.__sa_handler) = 31;
    atomic_fetch_add(_MergedGlobals_62, 1u);
    v10 = atomic_load(_MergedGlobals_62);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v11 = (&unk_1EE17D3F0 + 24 * v10);
    sigaction(4, &v39, v11);
    LODWORD(v11[1].__sigaction_u.__sa_handler) = 4;
    atomic_fetch_add(_MergedGlobals_62, 1u);
    v12 = atomic_load(_MergedGlobals_62);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v13 = (&unk_1EE17D3F0 + 24 * v12);
    sigaction(5, &v39, v13);
    LODWORD(v13[1].__sigaction_u.__sa_handler) = 5;
    atomic_fetch_add(_MergedGlobals_62, 1u);
    v14 = atomic_load(_MergedGlobals_62);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v15 = (&unk_1EE17D3F0 + 24 * v14);
    sigaction(6, &v39, v15);
    LODWORD(v15[1].__sigaction_u.__sa_handler) = 6;
    atomic_fetch_add(_MergedGlobals_62, 1u);
    v16 = atomic_load(_MergedGlobals_62);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v17 = (&unk_1EE17D3F0 + 24 * v16);
    sigaction(8, &v39, v17);
    LODWORD(v17[1].__sigaction_u.__sa_handler) = 8;
    atomic_fetch_add(_MergedGlobals_62, 1u);
    v18 = atomic_load(_MergedGlobals_62);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v19 = (&unk_1EE17D3F0 + 24 * v18);
    sigaction(10, &v39, v19);
    LODWORD(v19[1].__sigaction_u.__sa_handler) = 10;
    atomic_fetch_add(_MergedGlobals_62, 1u);
    v20 = atomic_load(_MergedGlobals_62);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v21 = (&unk_1EE17D3F0 + 24 * v20);
    sigaction(11, &v39, v21);
    LODWORD(v21[1].__sigaction_u.__sa_handler) = 11;
    atomic_fetch_add(_MergedGlobals_62, 1u);
    v22 = atomic_load(_MergedGlobals_62);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v23 = (&unk_1EE17D3F0 + 24 * v22);
    sigaction(3, &v39, v23);
    LODWORD(v23[1].__sigaction_u.__sa_handler) = 3;
    atomic_fetch_add(_MergedGlobals_62, 1u);
    v24 = atomic_load(_MergedGlobals_62);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v25 = (&unk_1EE17D3F0 + 24 * v24);
    sigaction(12, &v39, v25);
    LODWORD(v25[1].__sigaction_u.__sa_handler) = 12;
    atomic_fetch_add(_MergedGlobals_62, 1u);
    v26 = atomic_load(_MergedGlobals_62);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v27 = (&unk_1EE17D3F0 + 24 * v26);
    sigaction(24, &v39, v27);
    LODWORD(v27[1].__sigaction_u.__sa_handler) = 24;
    atomic_fetch_add(_MergedGlobals_62, 1u);
    v28 = atomic_load(_MergedGlobals_62);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v29 = (&unk_1EE17D3F0 + 24 * v28);
    sigaction(25, &v39, v29);
    LODWORD(v29[1].__sigaction_u.__sa_handler) = 25;
    atomic_fetch_add(_MergedGlobals_62, 1u);
    v30 = atomic_load(_MergedGlobals_62);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v31 = (&unk_1EE17D3F0 + 24 * v30);
    sigaction(7, &v39, v31);
    LODWORD(v31[1].__sigaction_u.__sa_handler) = 7;
    atomic_fetch_add(_MergedGlobals_62, 1u);
    if (atomic_load(&qword_1EE17D2A8))
    {
      v33 = atomic_load(_MergedGlobals_62);
      v39.__sigaction_u.__sa_handler = SignalHandler;
      *&v39.sa_mask = 0x1500000000;
      v34 = &_MergedGlobals_62[6 * v33];
      sigaction(13, &v39, v34 + 23);
      v34[96] = 13;
      atomic_fetch_add(_MergedGlobals_62, 1u);
    }

    v35 = atomic_load(_MergedGlobals_62);
    v39.__sigaction_u.__sa_handler = InfoSignalHandler;
    *&v39.sa_mask = 0x100000000;
    v36 = (&unk_1EE17D3F0 + 24 * v35);
    sigaction(30, &v39, v36);
    LODWORD(v36[1].__sigaction_u.__sa_handler) = 30;
    atomic_fetch_add(_MergedGlobals_62, 1u);
    v37 = atomic_load(_MergedGlobals_62);
    v39.__sigaction_u.__sa_handler = InfoSignalHandler;
    *&v39.sa_mask = 0x100000000;
    v38 = (&unk_1EE17D3F0 + 24 * v37);
    sigaction(29, &v39, v38);
    LODWORD(v38[1].__sigaction_u.__sa_handler) = 29;
    atomic_fetch_add(_MergedGlobals_62, 1u);
  }

  std::recursive_mutex::unlock(v0);
}

uint64_t llvm::sys::RemoveFileOnSignal(void *__src, size_t __len)
{
  if (atomic_load_explicit(&qword_1EE17D2E8, memory_order_acquire))
  {
    if (__src)
    {
      goto LABEL_3;
    }

LABEL_8:
    __dst = 0;
    v13 = 0;
    p_dst = &__dst;
    v14 = 0;
    goto LABEL_17;
  }

  if (!__src)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    if ((__len | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (__len | 7) + 1;
    }

    v4 = operator new(v6);
    v13 = __len;
    v14 = v6 | 0x8000000000000000;
    __dst = v4;
    goto LABEL_13;
  }

  HIBYTE(v14) = __len;
  v4 = &__dst;
  if (__len)
  {
LABEL_13:
    memmove(v4, __src, __len);
  }

  *(v4 + __len) = 0;
  if (v14 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

LABEL_17:
  v7 = operator new(0x10uLL);
  v8 = strdup(p_dst);
  v9 = 0;
  *v7 = v8;
  v7[1] = 0;
  atomic_compare_exchange_strong(&qword_1EE17D2B0, &v9, v7);
  while (v9)
  {
    v10 = (v9 + 8);
    v9 = 0;
    atomic_compare_exchange_strong(v10, &v9, v7);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__dst);
  }

  RegisterHandlers();
  return 0;
}

void llvm::sys::DontRemoveFileOnSignal(const void *a1, size_t a2)
{
  if (a1)
  {
    if (a2 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    if (a2 >= 0x17)
    {
      if ((a2 | 7) == 0x17)
      {
        v5 = 25;
      }

      else
      {
        v5 = (a2 | 7) + 1;
      }

      p_dst = operator new(v5);
      v13 = a2;
      v14 = v5 | 0x8000000000000000;
      __dst = p_dst;
    }

    else
    {
      HIBYTE(v14) = a2;
      p_dst = &__dst;
      if (!a2)
      {
LABEL_13:
        *(p_dst + a2) = 0;
        if (atomic_load_explicit(qword_1EE17D318, memory_order_acquire))
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    memmove(p_dst, a1, a2);
    goto LABEL_13;
  }

  __dst = 0;
  v13 = 0;
  v14 = 0;
  if (atomic_load_explicit(qword_1EE17D318, memory_order_acquire))
  {
    goto LABEL_15;
  }

LABEL_14:
  llvm::ManagedStaticBase::RegisterManagedStatic(qword_1EE17D318, llvm::object_creator<llvm::sys::SmartMutex<true>>::call, llvm::object_deleter<llvm::sys::SmartMutex<true>>::call);
LABEL_15:
  v6 = qword_1EE17D318[0];
  std::recursive_mutex::lock(qword_1EE17D318[0]);
  for (i = atomic_load(&qword_1EE17D2B0); i; i = atomic_load(i + 1))
  {
    v8 = atomic_load(i);
    if (v8)
    {
      v9 = strlen(v8);
      if ((SHIBYTE(v14) & 0x8000000000000000) != 0)
      {
        if (v9 != v13)
        {
          continue;
        }

        if (v9 == -1)
        {
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        if (memcmp(__dst, v8, v9))
        {
          continue;
        }

LABEL_27:
        v10 = atomic_exchange(i, 0);
        if (v10)
        {
          free(v10);
        }

        continue;
      }

      if (v9 == SHIBYTE(v14) && !memcmp(&__dst, v8, v9))
      {
        goto LABEL_27;
      }
    }
  }

  std::recursive_mutex::unlock(v6);
  if (SHIBYTE(v14) < 0)
  {
    v11 = __dst;

    operator delete(v11);
  }
}

void llvm::sys::AddSignalHandler(llvm::sys *this, void (*a2)(void *), void *a3)
{
  v4 = 0;
  v5 = &qword_1EE17D330;
  v6 = dword_1EE17D340;
  atomic_compare_exchange_strong(dword_1EE17D340, &v4, 1u);
  if (v4)
  {
    v7 = 0;
    v5 = &qword_1EE17D348;
    v6 = dword_1EE17D358;
    atomic_compare_exchange_strong(dword_1EE17D358, &v7, 1u);
    if (v7)
    {
      v8 = 0;
      v5 = &qword_1EE17D360;
      v6 = dword_1EE17D370;
      atomic_compare_exchange_strong(dword_1EE17D370, &v8, 1u);
      if (v8)
      {
        v9 = 0;
        v5 = &qword_1EE17D378;
        v6 = dword_1EE17D388;
        atomic_compare_exchange_strong(dword_1EE17D388, &v9, 1u);
        if (v9)
        {
          v10 = 0;
          v5 = &qword_1EE17D390;
          v6 = dword_1EE17D3A0;
          atomic_compare_exchange_strong(dword_1EE17D3A0, &v10, 1u);
          if (v10)
          {
            v11 = 0;
            v5 = &qword_1EE17D3A8;
            v6 = dword_1EE17D3B8;
            atomic_compare_exchange_strong(dword_1EE17D3B8, &v11, 1u);
            if (v11)
            {
              v12 = 0;
              v5 = &qword_1EE17D3C0;
              v6 = dword_1EE17D3D0;
              atomic_compare_exchange_strong(dword_1EE17D3D0, &v12, 1u);
              if (v12)
              {
                v13 = 0;
                v5 = &qword_1EE17D3D8;
                v6 = dword_1EE17D3E8;
                atomic_compare_exchange_strong(dword_1EE17D3E8, &v13, 1u);
                if (v13)
                {
                  llvm::report_fatal_error("too many signal callbacks already registered", 1);
                }
              }
            }
          }
        }
      }
    }
  }

  *v5 = this;
  v5[1] = a2;
  atomic_store(2u, v6);

  RegisterHandlers();
}

uint64_t llvm::sys::PrintStackTrace(llvm::sys *this, llvm::raw_ostream *a2)
{
  v2 = a2;
  result = backtrace(&qword_1EE17D5A0, 256);
  if (result)
  {
    v5 = result;
    if (!v2)
    {
      v2 = result;
    }

    printMarkupStackTrace(qword_1EE17D288, qword_1EE17D290);
    result = printSymbolizedStackTrace(qword_1EE17D288, qword_1EE17D290, &qword_1EE17D5A0, v2, this);
    if ((result & 1) == 0)
    {
      v6 = *(this + 4);
      if (*(this + 3) - v6 > 0x90uLL)
      {
        *(this + 4) += 145;
        if (v5 < 1)
        {
          return result;
        }
      }

      else
      {
        if (v5 < 1)
        {
          return result;
        }
      }

      v7 = 0;
      v8 = v5;
      v9 = &qword_1EE17D5A0;
      v10 = v5;
      do
      {
        while (1)
        {
          dladdr(*v9, &v32);
          dli_fname = v32.dli_fname;
          v13 = strrchr(v32.dli_fname, 47);
          if (v13)
          {
            break;
          }

          v14 = strlen(dli_fname);
          if (v14 > v7)
          {
            v7 = v14;
          }

          ++v9;
          if (!--v10)
          {
            goto LABEL_19;
          }
        }

        v11 = strlen(v13) - 1;
        if (v11 > v7)
        {
          v7 = v11;
        }

        ++v9;
        --v10;
      }

      while (v10);
      do
      {
        while (1)
        {
LABEL_19:
          v15 = (&_MergedGlobals_62 + 8 * v10);
          dladdr(v15[100], &v32);
          v28 = &unk_1F5B0BA38;
          v29 = "%-2d";
          LODWORD(v30) = v10;
          llvm::raw_ostream::operator<<(this, &v28);
          v16 = v32.dli_fname;
          v17 = strrchr(v32.dli_fname, 47);
          v28 = &unk_1F5B3FD60;
          v29 = " %-*s";
          LODWORD(v30) = v7;
          if (v17)
          {
            v31 = v17 + 1;
          }

          else
          {
            v31 = v16;
          }

          llvm::raw_ostream::operator<<(this, &v28);
          v18 = v15[100];
          v28 = &unk_1F5B3FD98;
          v29 = " %#0*lx";
          LODWORD(v30) = 18;
          v31 = v18;
          result = llvm::raw_ostream::operator<<(this, &v28);
          if (v32.dli_sname)
          {
            v19 = *(this + 4);
            if (v19 >= *(this + 3))
            {
              llvm::raw_ostream::write(this, 32);
            }

            else
            {
              *(this + 4) = v19 + 1;
              *v19 = 32;
            }

            strlen(v32.dli_sname);
            v20 = llvm::itaniumDemangle(v32.dli_sname);
            if (v20)
            {
              v21 = v20;
              v22 = strlen(v20);
              v23 = *(this + 4);
              if (v22 <= *(this + 3) - v23)
              {
                if (v22)
                {
                  memcpy(v23, v21, v22);
                  *(this + 4) += v22;
                }
              }

              else
              {
                llvm::raw_ostream::write(this, v21, v22);
              }

              free(v21);
            }

            else if (v32.dli_sname)
            {
              v24 = strlen(v32.dli_sname);
              v25 = *(this + 4);
              if (v24 <= *(this + 3) - v25)
              {
                if (v24)
                {
                  memcpy(v25, v32.dli_sname, v24);
                  *(this + 4) += v24;
                }
              }

              else
              {
                llvm::raw_ostream::write(this, v32.dli_sname, v24);
              }
            }

            v26 = v15[100] - v32.dli_saddr;
            v28 = &unk_1F5B3FDD0;
            v29 = " + %tu";
            v30 = v26;
            result = llvm::raw_ostream::operator<<(this, &v28);
          }

          v27 = *(this + 4);
          if (v27 >= *(this + 3))
          {
            break;
          }

          *(this + 4) = v27 + 1;
          *v27 = 10;
          if (v8 == ++v10)
          {
            return result;
          }
        }

        result = llvm::raw_ostream::write(this, 10);
        ++v10;
      }

      while (v8 != v10);
    }
  }

  return result;
}

uint64_t SignalHandler(unsigned int a1)
{
  v2 = atomic_load(_MergedGlobals_62);
  if (v2)
  {
    v3 = &unk_1EE17D3F0;
    do
    {
      sigaction(v3[1].__sigaction_u.__sa_handler, v3, 0);
      atomic_fetch_add(_MergedGlobals_62, 0xFFFFFFFF);
      v3 = (v3 + 24);
      --v2;
    }

    while (v2);
  }

  v10 = -1;
  v4 = sigprocmask(2, &v10, 0);
  v5 = atomic_exchange(&qword_1EE17D2B0, 0);
  if (v5)
  {
    v6 = v5;
    do
    {
      v7 = atomic_exchange(v6, 0);
      if (v7)
      {
        v4 = stat(v7, &v11);
        if (!v4 && (v11.st_mode & 0xF000) == 0x8000)
        {
          v4 = unlink(v7);
          atomic_exchange(v6, v7);
        }
      }

      v6 = atomic_load((v6 + 8));
    }

    while (v6);
  }

  atomic_exchange(&qword_1EE17D2B0, v5);
  if (a1 <= 0x1F)
  {
    if (((1 << a1) & 0x80008006) != 0)
    {
      v8 = atomic_exchange(&qword_1EE17D298, 0);
      if (v8)
      {
        return v8(v4);
      }

      return raise(a1);
    }

    if (a1 == 13)
    {
      v8 = atomic_exchange(&qword_1EE17D2A8, 0);
      if (v8)
      {
        return v8(v4);
      }

      return raise(a1);
    }
  }

  return llvm::sys::RunSignalHandlers(v4);
}

uint64_t anonymous namespace::CreateDisableSymbolication::call(_anonymous_namespace_::CreateDisableSymbolication *this)
{
  v1 = operator new(0xC0uLL);
  *&v5 = "Disable symbolizing crash backtraces.";
  *(&v5 + 1) = 37;
  v4 = &DisableSymbolicationFlag;
  v3 = 1;
  return llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::opt<char [6],llvm::cl::desc,llvm::cl::LocationClass<BOOL>,llvm::cl::OptionHidden>(v1, "disable-symbolication", &v5, &v4, &v3);
}

uint64_t llvm::object_deleter<llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>>::call(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t anonymous namespace::CreateCrashDiagnosticsDir::call(_anonymous_namespace_::CreateCrashDiagnosticsDir *this)
{
  v1 = operator new(0xD8uLL);
  *&v6 = "directory";
  *(&v6 + 1) = 9;
  *&v5 = "Directory for crash diagnostic files.";
  *(&v5 + 1) = 37;
  if (!atomic_load_explicit(CrashDiagnosticsDirectory, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(CrashDiagnosticsDirectory, llvm::object_creator<std::string>::call, llvm::object_deleter<std::string>::call);
  }

  v4 = CrashDiagnosticsDirectory[0];
  v3 = 1;
  return llvm::cl::opt<std::string,true,llvm::cl::parser<std::string>>::opt<char [22],llvm::cl::value_desc,llvm::cl::desc,llvm::cl::LocationClass<std::string>,llvm::cl::OptionHidden>(v1, "crash-diagnostics-dir", &v6, &v5, &v4, &v3);
}

uint64_t llvm::cl::opt<std::string,true,llvm::cl::parser<std::string>>::opt<char [22],llvm::cl::value_desc,llvm::cl::desc,llvm::cl::LocationClass<std::string>,llvm::cl::OptionHidden>(uint64_t a1, char *a2, _OWORD *a3, _OWORD *a4, const std::string **a5, _WORD *a6)
{
  *a1 = &unk_1F5B3E1D8;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v12 = a1 + 80;
  *(a1 + 64) = a1 + 80;
  v13 = a1 + 64;
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
  v15 = *(a1 + 72);
  if (v15 >= *(a1 + 76))
  {
    v17 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v13, v12, v15 + 1, 8);
    GeneralCategory = v17;
    LODWORD(v15) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v15) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = 0;
  *(a1 + 168) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_1F5B3E2B0;
  *a1 = &unk_1F5B3F4F8;
  *(a1 + 176) = &unk_1F5B3E560;
  *(a1 + 184) = &unk_1F5B3F5A8;
  *(a1 + 208) = a1 + 184;
  llvm::cl::apply<llvm::cl::opt<std::string,true,llvm::cl::parser<std::string>>,char [22],llvm::cl::value_desc,llvm::cl::desc,llvm::cl::LocationClass<std::string>,llvm::cl::OptionHidden>(a1, a2, a3, a4, a5, a6);
  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t llvm::cl::apply<llvm::cl::opt<std::string,true,llvm::cl::parser<std::string>>,char [22],llvm::cl::value_desc,llvm::cl::desc,llvm::cl::LocationClass<std::string>,llvm::cl::OptionHidden>(uint64_t a1, char *__s, _OWORD *a3, _OWORD *a4, const std::string **a5, _WORD *a6)
{
  v12 = strlen(__s);
  v13 = llvm::cl::Option::setArgStr(a1, __s, v12);
  *(a1 + 48) = *a3;
  *(a1 + 32) = *a4;
  if (*(a1 + 128))
  {
    v17 = "cl::location(x) specified more than once!";
    v18 = 259;
    v14 = llvm::errs(v13);
    result = llvm::cl::Option::error(a1, &v17, 0, 0, v14);
  }

  else
  {
    v16 = *a5;
    *(a1 + 128) = *a5;
    *(a1 + 168) = 1;
    result = std::string::operator=((a1 + 144), v16);
  }

  *(a1 + 10) = (32 * (*a6 & 3)) | *(a1 + 10) & 0xFF9F;
  return result;
}

void llvm::object_deleter<anonymous namespace::FilesToRemoveCleanup>::call(void *a1)
{
  if (a1)
  {
    v1 = atomic_exchange(&qword_1EE17D2B0, 0);
    if (v1)
    {
      v2 = a1;
      operator delete(v3);
      a1 = v2;
    }

    operator delete(a1);
  }
}

void anonymous namespace::FileToRemoveList::~FileToRemoveList(atomic_ullong *this)
{
  v2 = atomic_exchange(this + 1, 0);
  if (v2)
  {
    operator delete(v3);
  }

  v4 = atomic_exchange(this, 0);
  if (v4)
  {
    free(v4);
  }
}

uint64_t llvm::ThreadPoolStrategy::compute_thread_count(llvm::ThreadPoolStrategy *this)
{
  if (*(this + 4) == 1)
  {
    v2 = std::thread::hardware_concurrency();
    if (v2 <= 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 <= 1)
    {
      result = 1;
    }

    else
    {
      result = v3;
    }

    v5 = *this;
    if (!*this)
    {
      return result;
    }

LABEL_16:
    if (v5 >= result)
    {
      v6 = result;
    }

    else
    {
      v6 = v5;
    }

    if (*(this + 5))
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  if ((atomic_load_explicit(&qword_1EE17DDA8, memory_order_acquire) & 1) == 0)
  {
    llvm::ThreadPoolStrategy::compute_thread_count();
  }

  if (_MergedGlobals_63 <= 1)
  {
    result = 1;
  }

  else
  {
    result = _MergedGlobals_63;
  }

  v5 = *this;
  if (*this)
  {
    goto LABEL_16;
  }

  return result;
}

pthread_t llvm::llvm_execute_on_thread_impl(void *(__cdecl *a1)(void *), void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = pthread_attr_init(&v13);
  if (v6)
  {
    ReportErrnumFatal("pthread_attr_init failed", v6);
  }

  if ((a3 & 0x100000000) != 0)
  {
    v7 = pthread_attr_setstacksize(&v13, a3);
    if (v7)
    {
      ReportErrnumFatal("pthread_attr_setstacksize failed", v7);
    }
  }

  v12 = 0;
  v8 = pthread_create(&v12, &v13, a1, a2);
  if (v8)
  {
    ReportErrnumFatal("pthread_create failed", v8);
  }

  v9 = v12;
  v10 = pthread_attr_destroy(&v13);
  if (v10)
  {
    ReportErrnumFatal("pthread_attr_destroy failed", v10);
  }

  return v9;
}

void ReportErrnumFatal(char *__s, llvm::sys *a2)
{
  memset(v5, 0, sizeof(v5));
  std::string::basic_string[abi:nn200100]<0>(&v3, __s);
  MakeErrMsg(v5, &v3.__r_.__value_.__l.__data_, a2);
  std::string::~string(&v3);
  v4 = 260;
  v3.__r_.__value_.__r.__words[0] = v5;
  llvm::report_fatal_error(&v3, 1);
}

llvm::sys *llvm::llvm_thread_join_impl(_opaque_pthread_t *this, _opaque_pthread_t *a2)
{
  result = pthread_join(this, 0);
  if (result)
  {
    ReportErrnumFatal("pthread_join failed", result);
  }

  return result;
}

uint64_t llvm::get_threadid(llvm *this)
{
  {
    return *llvm::get_threadid(void)::Self();
  }

  llvm::get_threadid(void)::$_0::operator()();
  v3 = llvm::get_threadid(void)::Self();
  *v3 = v4;
  return *v5;
}

uint64_t llvm::get_threadid(void)::$_0::operator()()
{
  v0 = MEMORY[0x1E12E61E0]();
  v1 = llvm::get_threadid(void)::Self();
  mach_port_deallocate(v2, *v1);
  return v0;
}

void llvm::set_thread_name(llvm *this, const llvm::Twine *a2)
{
  v7[8] = *MEMORY[0x1E69E9840];
  v5 = v7;
  v6 = xmmword_1E0970870;
  v2 = llvm::Twine::toNullTerminatedStringRef(this, &v5);
  v4 = v3 - 63;
  if (v3 < v3 - 63)
  {
    v4 = v3;
  }

  if (v3 <= 0x3F)
  {
    v4 = 0;
  }

  pthread_setname_np((v4 + v2));
  if (v5 != v7)
  {
    free(v5);
  }
}

uint64_t computeHostNumPhysicalCores(void)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 0;
  v1 = 4;
  sysctlbyname("hw.physicalcpu", &v2, &v1, 0, 0);
  result = v2;
  if (!v2)
  {
    *v3 = 0x1900000006;
    sysctl(v3, 2u, &v2, &v1, 0, 0);
    result = v2;
    if (!v2)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

const char *llvm::itanium_demangle::parse_discriminator(const char *this, const char *a2, const char *a3)
{
  if (this != a2)
  {
    v3 = *this;
    if (v3 == 95)
    {
      if (this + 1 != a2)
      {
        v4 = this[1];
        if ((v4 & 0x8000000000000000) == 0)
        {
          if ((*(MEMORY[0x1E69E9830] + 4 * v4 + 60) & 0x400) != 0)
          {
            this += 2;
          }

          else if (v4 == 95)
          {
            v5 = (this + 2);
            if (this + 2 != a2)
            {
              while (1)
              {
                v6 = *v5;
                if (v6 < 0 || (*(MEMORY[0x1E69E9830] + 4 * v6 + 60) & 0x400) == 0)
                {
                  break;
                }

                if (++v5 == a2)
                {
                  return this;
                }
              }

              if (v6 == 95)
              {
                return v5 + 1;
              }
            }
          }
        }
      }
    }

    else if ((v3 & 0x80) == 0 && (*(MEMORY[0x1E69E9830] + 4 * v3 + 60) & 0x400) != 0)
    {
      v7 = this + 1;
      while (v7 != a2)
      {
        v8 = *v7;
        if ((v8 & 0x8000000000000000) == 0)
        {
          ++v7;
          if ((*(MEMORY[0x1E69E9830] + 4 * v8 + 60) & 0x400) != 0)
          {
            continue;
          }
        }

        return this;
      }

      return a2;
    }
  }

  return this;
}

uint64_t llvm::itaniumDemangle(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v36 = *MEMORY[0x1E69E9840];
  if (!v2)
  {
    return 0;
  }

  v16[0] = v1;
  v16[1] = v1 + v2;
  v17 = v20;
  v18 = v20;
  v19 = v21;
  memset(v20, 0, sizeof(v20));
  v21[0] = v22;
  v21[1] = v22;
  memset(v22, 0, sizeof(v22));
  v21[2] = v23;
  v23[0] = v24;
  v23[1] = v24;
  v23[2] = v25;
  memset(v24, 0, sizeof(v24));
  v25[0] = v26;
  v25[1] = v26;
  v25[2] = v27;
  memset(v26, 0, sizeof(v26));
  v27[0] = v28;
  v27[1] = v28;
  v27[2] = &v29;
  memset(v28, 0, sizeof(v28));
  v29 = 1;
  v30 = 0;
  v31 = -1;
  v33 = 0;
  v32 = 0;
  v34[0] = 0u;
  v35 = v34;
  v5 = v4;
  if (v4)
  {
    v13 = 0;
    v12 = 0u;
    v14 = -1;
    v15 = 1;
    (*(*v4 + 32))(v4, &v12);
    if ((*(v5 + 9) & 0xC0) != 0x40)
    {
      (*(*v5 + 40))(v5, &v12);
    }

    v7 = *(&v12 + 1);
    v6 = v12;
    if (*(&v12 + 1) + 1 > v13)
    {
      if (2 * v13 <= *(&v12 + 1) + 993)
      {
        v8 = *(&v12 + 1) + 993;
      }

      else
      {
        v8 = 2 * v13;
      }

      v13 = v8;
      v6 = realloc(v12, v8);
      *&v12 = v6;
      if (!v6)
      {
        abort();
      }

      v7 = *(&v12 + 1);
    }

    v6[v7] = 0;
    v5 = v12;
  }

  v9 = v35;
  if (v35)
  {
    do
    {
      while (1)
      {
        v10 = *v9;
        v35 = *v9;
        if (v9 == v34)
        {
          break;
        }

        free(v9);
        v9 = v35;
        if (!v35)
        {
          goto LABEL_17;
        }
      }

      v9 = v10;
    }

    while (v10);
  }

LABEL_17:
  v34[0] = 0uLL;
  v35 = v34;
  if (v27[0] != v28)
  {
    free(v27[0]);
  }

  if (v25[0] != v26)
  {
    free(v25[0]);
  }

  if (v23[0] != v24)
  {
    free(v23[0]);
  }

  if (v21[0] != v22)
  {
    free(v21[0]);
  }

  if (v17 != v20)
  {
    free(v17);
  }

  return v5;
}

void llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parse(uint64_t a1, size_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8) - *a1;
  if (v4 < 2)
  {
    goto LABEL_15;
  }

  if (*v3 == 23135)
  {
    *a1 = v3 + 2;
    if (!v7)
    {
      return;
    }

    goto LABEL_20;
  }

  if (v4 == 2)
  {
LABEL_15:
    return;
  }

  if (*v3 == 24415 && v3[2] == 90)
  {
    *a1 = v3 + 3;
    if (!v7)
    {
      return;
    }

LABEL_20:
    v9 = *a1;
    v8 = *(a1 + 8);
    v10 = v8 - *a1;
    if (v8 != *a1 && *v9 == 46)
    {
      v11 = *(a1 + 4904);
      v12 = v11[1];
      if ((v12 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v13 = v7;
        v14 = malloc(0x1000uLL);
        if (!v14)
        {
          std::terminate();
        }

        v12 = 0;
        *v14 = v11;
        v14[1] = 0;
        v11 = v14;
        *(a1 + 4904) = v14;
        v7 = v13;
      }

      v11[1] = v12 + 48;
      v15 = v11 + v12;
      v15[24] = 1;
      *(v15 + 25) = *(v15 + 25) & 0xF000 | 0x540;
      *(v15 + 2) = &unk_1F5B41EE8;
      *(v15 + 4) = v7;
      *(v15 + 5) = v9;
      *(v15 + 6) = v10;
      *a1 = *(a1 + 8);
    }

    return;
  }

  if (v4 < 4)
  {
    goto LABEL_15;
  }

  if (*v3 == 1516199775)
  {
    v16 = 4;
  }

  else
  {
    if (v4 == 4)
    {
      goto LABEL_15;
    }

    if (*v3 != 1600085855 || v3[4] != 90)
    {
      goto LABEL_15;
    }

    v16 = 5;
  }

  *a1 = &v3[v16];
  if (v17)
  {
    v19 = *a1;
    v18 = *(a1 + 8);
    if (&v18[-*a1] >= 0xD && *v19 == 0x695F6B636F6C625FLL && *(v19 + 5) == 0x656B6F766E695F6BLL)
    {
      v21 = v19 + 13;
      *a1 = v19 + 13;
      if (v19 + 13 == v18 || *v21 != 95)
      {
        v22 = 0;
      }

      else
      {
        v21 = v19 + 14;
        *a1 = v19 + 14;
        v22 = 1;
      }

      if (v18 == v21 || (v23 = *v21, v23 < 0) || (v24 = MEMORY[0x1E69E9830], (*(MEMORY[0x1E69E9830] + 4 * v23 + 60) & 0x400) == 0))
      {
        if (v22)
        {
          return;
        }
      }

      else
      {
        v25 = v21;
        while (1)
        {
          v26 = *v25;
          if (v26 < 0 || (*(v24 + 4 * v26 + 60) & 0x400) == 0)
          {
            break;
          }

          *a1 = ++v25;
          if (v25 == v18)
          {
            v27 = v18;
            goto LABEL_57;
          }
        }

        v27 = v25;
LABEL_57:
        v28 = v27 == v21;
        v21 = v25;
        if (v22 & v28)
        {
          return;
        }
      }

      if (v18 != v21)
      {
        if (*v21 != 46)
        {
          return;
        }

        *a1 = v18;
      }
    }
  }
}

void *llvm::itanium_demangle::Node::printAsOperand(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a4 + a3 <= (*(a1 + 9) << 26 >> 26))
  {
    ++*(a2 + 32);
    v8 = *a2;
    v9 = *(a2 + 8);
    v10 = v9 + 1;
    v11 = *(a2 + 16);
    if (v9 + 1 > v11)
    {
      v12 = v9 + 993;
      if (2 * v11 <= v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = 2 * v11;
      }

      *(a2 + 16) = v13;
      v8 = realloc(v8, v13);
      *a2 = v8;
      if (!v8)
      {
        goto LABEL_22;
      }

      v9 = *(a2 + 8);
      v10 = v9 + 1;
    }

    *(a2 + 8) = v10;
    *(v8 + v9) = 40;
    (*(*a1 + 32))(a1, a2);
    if ((*(a1 + 9) & 0xC0) != 0x40)
    {
      (*(*a1 + 40))(a1, a2);
    }

    --*(a2 + 32);
    result = *a2;
    v14 = *(a2 + 8);
    v15 = v14 + 1;
    v16 = *(a2 + 16);
    if (v14 + 1 <= v16)
    {
      goto LABEL_20;
    }

    v17 = v14 + 993;
    if (2 * v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = 2 * v16;
    }

    *(a2 + 16) = v18;
    result = realloc(result, v18);
    *a2 = result;
    if (result)
    {
      v14 = *(a2 + 8);
      v15 = v14 + 1;
LABEL_20:
      *(a2 + 8) = v15;
      *(result + v14) = 41;
      return result;
    }

LABEL_22:
    abort();
  }

  result = (*(*a1 + 32))(a1, a2);
  if ((*(a1 + 9) & 0xC0) != 0x40)
  {
    v7 = *(*a1 + 40);

    return v7(a1, a2);
  }

  return result;
}

uint64_t llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::consumeIf(const void **a1, const void *a2, size_t a3)
{
  v3 = *a1;
  if (a3 > a1[1] - *a1)
  {
    return 0;
  }

  if (memcmp(*a1, a2, a3))
  {
    return 0;
  }

  *a1 = &v3[a3];
  return 1;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseEncoding(const void **a1, char a2)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = v6 - *a1;
  if (v6 == *a1)
  {
LABEL_14:
    v12 = a1[90];
    v13 = a1[91];
    LOWORD(v110) = 0;
    HIDWORD(v110) = 0;
    v111 = 0;
    v112 = (v13 - v12) >> 3;
    v113 = 0;
    if (!v11)
    {
      goto LABEL_157;
    }

    v14 = v112;
    v15 = a1[90];
    v16 = (a1[91] - v15) >> 3;
    if (v16 <= v112)
    {
      v19 = &v15[8 * v112];
    }

    else
    {
      v17 = a1[83];
      if (v17 == a1[84])
      {
        goto LABEL_156;
      }

      v18 = *v17;
      if (!*v17)
      {
        goto LABEL_156;
      }

      v19 = &v15[8 * v112];
      v20 = *v19;
      v21 = *(*v19 + 16);
      v23 = v18;
      v22 = *v18;
      v24 = (v23[1] - v22) >> 3;
      if (v21 >= v24)
      {
        goto LABEL_156;
      }

      v25 = v15 + 8;
      while (1)
      {
        *(v20 + 24) = *(v22 + 8 * v21);
        if (v16 - 1 == v14)
        {
          break;
        }

        v26 = v14 + 1;
        v20 = *&v25[8 * v14];
        v21 = *(v20 + 16);
        ++v14;
        if (v21 >= v24)
        {
          if (v26 >= v16)
          {
            goto LABEL_35;
          }

          goto LABEL_156;
        }
      }
    }

    a1[91] = v19;
LABEL_35:
    v35 = *a1;
    v34 = a1[1];
    if (v34 != *a1)
    {
      v36 = *v35 - 46;
      v62 = v36 > 0x31;
      v37 = (1 << v36) & 0x2000000800001;
      if (v62 || v37 == 0)
      {
        if (a2)
        {
          {
            v40 = (a1[3] - a1[2]) >> 3;
            v41 = (a1 + 5);
            while (1)
            {
              v51 = *a1;
              if (*a1 != a1[1] && *v51 == 69)
              {
                break;
              }

              if (!v50)
              {
                goto LABEL_156;
              }

              v49 = a1[3];
              if (v49 == a1[4])
              {
                v52 = v50;
                v53 = a1[2];
                v54 = v49 - v53;
                if (v53 == v41)
                {
                  v48 = malloc(2 * (v49 - v53));
                  if (!v48)
                  {
LABEL_160:
                    abort();
                  }

                  if (v49 != v41)
                  {
                    v55 = v48;
                    memmove(v48, v53, v54);
                    v48 = v55;
                  }

                  a1[2] = v48;
                }

                else
                {
                  v48 = realloc(a1[2], 2 * (v49 - v53));
                  a1[2] = v48;
                  if (!v48)
                  {
                    goto LABEL_160;
                  }
                }

                v49 = &v48[v54];
                a1[4] = &v48[8 * (v54 >> 2)];
                v50 = v52;
              }

              *v49 = v50;
              a1[3] = v49 + 8;
            }

            *a1 = v51 + 1;
            v109.n128_u64[1] = v79;
            v78 = v80;
          }

          else
          {
            v78 = 0;
          }

          if ((v110 & 1) != 0 || BYTE1(v110) != 1)
          {
            v82 = 0;
          }

          else
          {
            v82 = v81;
            if (!v81)
            {
              goto LABEL_156;
            }
          }

          v109 = 0uLL;
          v84 = *a1;
          v83 = a1[1];
          if (*a1 == v83 || *v84 != 118)
          {
            v87 = a1[2];
            v86 = a1[3];
            if (!v88)
            {
              goto LABEL_156;
            }

            v90 = v88;
            v107 = v82;
            v108 = v78;
            v91 = (a1 + 5);
            while (1)
            {
              v92 = a1[3];
              if (v113 == 1 && v86 - v87 == v92 - a1[2])
              {
                v92 = a1[3];
              }

              if (v92 == a1[4])
              {
                v94 = a1[2];
                v95 = v92 - v94;
                if (v94 == v91)
                {
                  v96 = malloc(2 * (v92 - v94));
                  if (!v96)
                  {
                    goto LABEL_160;
                  }

                  if (v92 != v91)
                  {
                    v97 = v96;
                    memmove(v96, v94, v95);
                    v96 = v97;
                  }

                  a1[2] = v96;
                }

                else
                {
                  v96 = realloc(a1[2], 2 * (v92 - v94));
                  a1[2] = v96;
                  if (!v96)
                  {
                    goto LABEL_160;
                  }
                }

                v92 = &v96[v95];
                a1[4] = &v96[8 * (v95 >> 2)];
              }

              *v92 = v90;
              a1[3] = v92 + 8;
              if (a1[1] == *a1)
              {
                break;
              }

              v98 = **a1 - 46;
              v62 = v98 > 0x31;
              v99 = (1 << v98) & 0x2000800800001;
              if (!v62 && v99 != 0)
              {
                break;
              }

              v90 = v101;
              if (!v101)
              {
                goto LABEL_156;
              }
            }

            v109.n128_u64[1] = v39;
            v85 = *a1;
            v83 = a1[1];
            v82 = v107;
            v78 = v108;
          }

          else
          {
            v85 = v84 + 1;
            *a1 = v85;
          }

          if (v85 == v83 || *v85 != 81)
          {
            v104 = 0;
          }

          else
          {
            *a1 = v85 + 1;
            v102 = *(a1 + 778);
            *(a1 + 778) = 1;
            v104 = v103;
            *(a1 + 778) = v102;
            if (!v103)
            {
              goto LABEL_156;
            }
          }

          v11 = v106;
          goto LABEL_157;
        }

        do
        {
          if (v35 == v34)
          {
            break;
          }

          *a1 = v35 + 1;
        }

        while (*v35++);
      }
    }

    goto LABEL_157;
  }

  v8 = *v5;
  if (v8 == 71)
  {
    if (v7 < 2)
    {
      goto LABEL_156;
    }

    v27 = v5[1];
    if (v27 == 73)
    {
      *a1 = v5 + 2;
      v110 = 0;
      v11 = 0;
      {
        goto LABEL_157;
      }

      v63 = v110;
      if (!v110)
      {
        goto LABEL_157;
      }

      v64 = a1[613];
      v65 = *(v64 + 1);
      if ((v65 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v66 = malloc(0x1000uLL);
        if (!v66)
        {
          goto LABEL_161;
        }

        v65 = 0;
        *v66 = v64;
        *(v66 + 1) = 0;
        v64 = v66;
        a1[613] = v66;
      }

      *(v64 + 1) = v65 + 48;
      v67 = &v64[v65];
      v11 = (v67 + 16);
      v67[24] = 21;
      *(v67 + 25) = *(v67 + 25) & 0xF000 | 0x540;
      *(v67 + 2) = &unk_1F5B3FE08;
      *(v67 + 4) = "initializer for module ";
      *(v67 + 5) = 23;
      *(v67 + 6) = v63;
      goto LABEL_157;
    }

    if (v27 != 82)
    {
      if (v27 != 86)
      {
        goto LABEL_156;
      }

      *a1 = v5 + 2;
      if (!v28)
      {
        goto LABEL_156;
      }

      v29 = a1[613];
      v30 = *(v29 + 1);
      if ((v30 - 4032) > 0xFFFFFFFFFFFFF00FLL)
      {
LABEL_32:
        *(v29 + 1) = v30 + 48;
        v33 = &v29[v30];
        v11 = (v33 + 16);
        v33[24] = 21;
        *(v33 + 25) = *(v33 + 25) & 0xF000 | 0x540;
        *(v33 + 2) = &unk_1F5B3FE08;
        *(v33 + 4) = "guard variable for ";
        *(v33 + 5) = 19;
        *(v33 + 6) = v28;
        goto LABEL_157;
      }

      v31 = v28;
      v32 = malloc(0x1000uLL);
      if (v32)
      {
        v30 = 0;
        *v32 = v29;
        *(v32 + 1) = 0;
        v29 = v32;
        a1[613] = v32;
        v28 = v31;
        goto LABEL_32;
      }

LABEL_161:
      std::terminate();
    }

    *a1 = v5 + 2;
    if (!v56)
    {
      goto LABEL_156;
    }

    v57 = *a1;
    v58 = a1[1];
    if (v58 == *a1 || *v57 < 48 || (v59 = *v57, v59 >= 0x3A) && v59 - 65 > 0x19)
    {
      v60 = 1;
      if (v57 == v58)
      {
        goto LABEL_83;
      }
    }

    else
    {
      do
      {
        if (*v57 < 48)
        {
          break;
        }

        v61 = *v57;
        v62 = v61 >= 0x3A && v61 - 65 > 0x19;
        if (v62)
        {
          break;
        }

        *a1 = ++v57;
      }

      while (v57 != v58);
      v60 = 0;
      if (v57 == v58)
      {
        goto LABEL_83;
      }
    }

    if (*v57 == 95)
    {
      *a1 = v57 + 1;
      goto LABEL_84;
    }

LABEL_83:
    if (!v60)
    {
      goto LABEL_156;
    }

LABEL_84:
    goto LABEL_157;
  }

  if (v8 != 84)
  {
    goto LABEL_14;
  }

  if (v7 >= 2)
  {
    v9 = v5[1];
    if (v9 <= 0x52)
    {
      if (v5[1] > 0x47u)
      {
        if (v9 == 72)
        {
          *a1 = v5 + 2;
          if (v74)
          {
            goto LABEL_157;
          }

          goto LABEL_156;
        }

        if (v9 == 73)
        {
          *a1 = v5 + 2;
          if (v68)
          {
            goto LABEL_157;
          }

          goto LABEL_156;
        }
      }

      else
      {
        if (v9 == 65)
        {
          *a1 = v5 + 2;
          if (v73)
          {
            goto LABEL_157;
          }

          goto LABEL_156;
        }

        if (v9 == 67)
        {
          *a1 = v5 + 2;
          if (v43)
          {
            v44 = v43;
            if (v45)
            {
              v46 = *a1;
              if (*a1 != a1[1] && *v46 == 95)
              {
                *a1 = v46 + 1;
                if (v47)
                {
                  goto LABEL_157;
                }
              }
            }
          }

          goto LABEL_156;
        }
      }
    }

    else if (v5[1] <= 0x55u)
    {
      if (v9 == 83)
      {
        *a1 = v5 + 2;
        if (v76)
        {
          goto LABEL_157;
        }

        goto LABEL_156;
      }

      if (v9 == 84)
      {
        *a1 = v5 + 2;
        if (v69)
        {
          goto LABEL_157;
        }

        goto LABEL_156;
      }
    }

    else
    {
      switch(v9)
      {
        case 'V':
          *a1 = v5 + 2;
          if (v75)
          {
            goto LABEL_157;
          }

          goto LABEL_156;
        case 'W':
          *a1 = v5 + 2;
          if (v77)
          {
            goto LABEL_157;
          }

          goto LABEL_156;
        case 'c':
          *a1 = v5 + 2;
          {
            if (v10)
            {
              goto LABEL_157;
            }
          }

LABEL_156:
          v11 = 0;
          goto LABEL_157;
      }
    }
  }

  v70 = v5 + 1;
  *a1 = v70;
  if (v6 == v70)
  {
    v71 = 0;
    {
      goto LABEL_156;
    }
  }

  else
  {
    v71 = *v70 == 118;
    {
      goto LABEL_156;
    }
  }

  if (!v72)
  {
    goto LABEL_156;
  }

  if (v71)
  {
  }

  else
  {
  }

LABEL_157:
  return v11;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseNumber(char **a1, int a2)
{
  result = *a1;
  v4 = a1[1];
  v5 = result;
  if (a2)
  {
    if (result == v4)
    {
      return 0;
    }

    v5 = result;
    if (*result == 110)
    {
      v5 = result + 1;
      *a1 = result + 1;
    }
  }

  if (v4 == v5)
  {
    return 0;
  }

  v6 = *v5;
  if (v6 < 0)
  {
    return 0;
  }

  v7 = MEMORY[0x1E69E9830];
  if ((*(MEMORY[0x1E69E9830] + 4 * v6 + 60) & 0x400) == 0)
  {
    return 0;
  }

  do
  {
    v8 = *v5;
    if (v8 < 0)
    {
      break;
    }

    if ((*(v7 + 4 * v8 + 60) & 0x400) == 0)
    {
      break;
    }

    *a1 = ++v5;
  }

  while (v5 != v4);
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::SpecialName,char const(&)[34],llvm::itanium_demangle::Node *&>(uint64_t a1, char *__s, uint64_t a3)
{
  v5 = *(a1 + 4904);
  v6 = v5[1];
  if ((v6 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v8 = malloc(0x1000uLL);
    if (!v8)
    {
      std::terminate();
    }

    v6 = 0;
    *v8 = v5;
    v8[1] = 0;
    v5 = v8;
    *(a1 + 4904) = v8;
  }

  v5[1] = v6 + 48;
  v9 = v5 + v6;
  v10 = strlen(__s);
  v9[24] = 21;
  *(v9 + 25) = *(v9 + 25) & 0xF000 | 0x540;
  *(v9 + 2) = &unk_1F5B3FE08;
  *(v9 + 4) = __s;
  *(v9 + 5) = v10;
  *(v9 + 6) = a3;
  return v9 + 16;
}

void llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseType(char **a1, size_t a2)
{
  v2 = a1;
  v142 = 0;
  v3 = *a1;
  v4 = a1[1];
  v5 = v4 - *a1;
  if (v4 == *a1)
  {
LABEL_140:
    goto LABEL_141;
  }

  v6 = *v3;
  v7 = 0;
  switch(*v3)
  {
    case 'A':
      *a1 = v3 + 1;
      if (v4 == v3 + 1)
      {
        if ((*(MEMORY[0x1E69E9830] + 61) & 4) == 0)
        {
          goto LABEL_180;
        }
      }

      else
      {
        v8 = v3[1];
        if (v8 < 0)
        {
          goto LABEL_180;
        }

        if ((*(MEMORY[0x1E69E9830] + 4 * v8 + 60) & 0x400) == 0)
        {
          if (v8 == 95)
          {
            v9 = 0;
            v10 = v3 + 2;
            goto LABEL_187;
          }

LABEL_180:
          if (!v56)
          {
            goto LABEL_141;
          }

          v118 = *v2;
          if (*v2 == *(v2 + 8) || *v118 != 95)
          {
            goto LABEL_189;
          }

          goto LABEL_186;
        }
      }

      v143.n128_u64[1] = v119;
      v118 = *v2;
      if (*v2 == *(v2 + 8) || *v118 != 95)
      {
LABEL_189:
        v56 = 0;
        goto LABEL_141;
      }

LABEL_186:
      v9 = v56;
      v10 = v118 + 1;
LABEL_187:
      *v2 = v10;
      if (v56)
      {
      }

LABEL_141:
      v142 = v56;
      if (!v56)
      {
        return;
      }

LABEL_142:
      v100 = *(v2 + 304);
      if (v100 != *(v2 + 312))
      {
LABEL_151:
        *v100 = v56;
        *(v2 + 304) = v100 + 1;
        return;
      }

LABEL_143:
      v101 = *(v2 + 296);
      v102 = v100 - v101;
      if (v101 == (v2 + 320))
      {
        v105 = v56;
        v106 = malloc(2 * (v100 - v101));
        if (v106)
        {
          v104 = v106;
          if (v100 != v101)
          {
            memmove(v106, v101, v100 - v101);
          }

          *(v2 + 296) = v104;
          v56 = v105;
          goto LABEL_150;
        }
      }

      else
      {
        v103 = realloc(*(v2 + 296), 2 * (v100 - v101));
        *(v2 + 296) = v103;
        if (v103)
        {
          v104 = v103;
          v56 = v142;
LABEL_150:
          v100 = &v104[v102];
          *(v2 + 312) = &v104[8 * (v102 >> 2)];
          goto LABEL_151;
        }
      }

      abort();
    case 'C':
      *a1 = v3 + 1;
      if (!v60)
      {
        return;
      }

      goto LABEL_156;
    case 'D':
      if (v5 < 2)
      {
        return;
      }

      v82 = v3[1];
      switch(v3[1])
      {
        case 'B':
        case 'U':
          v83 = v82 == 66;
          v84 = v3 + 2;
          *a1 = v84;
          if (v4 == v84)
          {
            v85 = 0;
          }

          else
          {
            v85 = *v84;
            if (v85 < 0)
            {
              goto LABEL_248;
            }
          }

          if ((*(MEMORY[0x1E69E9830] + 4 * v85 + 60) & 0x400) != 0)
          {
            v143.n128_u64[1] = v139;
            v138 = v140;
            goto LABEL_251;
          }

LABEL_248:
          v138 = v137;
          if (!v137)
          {
            return;
          }

LABEL_251:
          v141 = *v2;
          if (*v2 != *(v2 + 8) && *v141 == 95)
          {
            *v2 = v141 + 1;
          }

          return;
        case 'F':
          *a1 = v3 + 2;
          v143.n128_u64[1] = v129;
          v132 = v131;
          v133 = (*(*v131 + 56))(v131, v130);
          if (v134 == 2)
          {
            v135 = *v2;
            v136 = *(v2 + 8);
            if (*v133 == 13873)
            {
              if (v135 == v136)
              {
                return;
              }

              if (*v135 == 98)
              {
                *v2 = v135 + 1;
                v127 = "__bf16";
                a1 = v2;

LABEL_212:
                return;
              }
            }
          }

          else
          {
            v135 = *v2;
            v136 = *(v2 + 8);
          }

          if (v135 != v136 && *v135 == 95)
          {
            *v2 = v135 + 1;
          }

          return;
        case 'K':
        case 'k':
          v123 = v82 == 107;
          if (v82 == 107)
          {
            v124 = " auto";
          }

          else
          {
            v124 = " decltype(auto)";
          }

          v125 = 15;
          if (v123)
          {
            v125 = 5;
          }

          v143.n128_u64[0] = v124;
          v143.n128_u64[1] = v125;
          *a1 = v3 + 2;
          if (v126)
          {
          }

          return;
        case 'O':
        case 'o':
        case 'w':
        case 'x':
          goto LABEL_194;
        case 'T':
        case 't':
          goto LABEL_141;
        case 'a':
          *a1 = v3 + 2;
          v127 = "auto";
          goto LABEL_234;
        case 'c':
          *a1 = v3 + 2;
          v127 = "decltype(auto)";
          goto LABEL_243;
        case 'd':
          *a1 = v3 + 2;
          v127 = "decimal64";
          goto LABEL_230;
        case 'e':
          *a1 = v3 + 2;
          v127 = "decimal128";

          goto LABEL_212;
        case 'f':
          *a1 = v3 + 2;
          v127 = "decimal32";
LABEL_230:

          goto LABEL_212;
        case 'h':
          *a1 = v3 + 2;
          v127 = "half";
LABEL_234:

          goto LABEL_212;
        case 'i':
          *a1 = v3 + 2;
          v127 = "char32_t";
          goto LABEL_238;
        case 'n':
          *a1 = v3 + 2;
          v127 = "std::nullptr_t";
LABEL_243:

          goto LABEL_212;
        case 'p':
          *a1 = v3 + 2;
          if (!v128)
          {
            return;
          }

          goto LABEL_156;
        case 's':
          *a1 = v3 + 2;
          v127 = "char16_t";
LABEL_238:

          goto LABEL_212;
        case 'u':
          *a1 = v3 + 2;
          v127 = "char8_t";

          goto LABEL_212;
        case 'v':
          goto LABEL_141;
        default:
          return;
      }

    case 'F':
      goto LABEL_194;
    case 'G':
      *a1 = v3 + 1;
      if (!v61)
      {
        return;
      }

      goto LABEL_156;
    case 'K':
    case 'V':
      goto LABEL_58;
    case 'M':
      *a1 = v3 + 1;
      if (v56)
      {
        v90 = v56;
        if (v56)
        {
        }
      }

      goto LABEL_141;
    case 'O':
      *a1 = v3 + 1;
      if (!v62)
      {
        return;
      }

      v63 = v62;
      v64 = v2;
      v65 = 1;
      goto LABEL_155;
    case 'P':
      *a1 = v3 + 1;
      if (!v89)
      {
        return;
      }

      goto LABEL_156;
    case 'R':
      *a1 = v3 + 1;
      if (!v107)
      {
        return;
      }

      v63 = v107;
      v64 = v2;
      v65 = 0;
LABEL_155:
      goto LABEL_156;
    case 'S':
      if (v5 >= 2 && v3[1] == 116)
      {
        goto LABEL_140;
      }

      v143.n128_u8[0] = 0;
      v142 = v56;
      if (!v56)
      {
        return;
      }

      if (*(v2 + 8) == *v2)
      {
        v117 = v143.n128_u8[0];
LABEL_196:
        if ((v117 & 1) == 0)
        {
          goto LABEL_142;
        }

        return;
      }

      v117 = v143.n128_u8[0];
      if (**v2 != 73)
      {
        goto LABEL_196;
      }

      if (v143.n128_u8[0])
      {
        if ((*(v2 + 776) & 1) == 0)
        {
          return;
        }
      }

      else
      {
        llvm::itanium_demangle::PODSmallVector<llvm::itanium_demangle::Node *,32ul>::push_back((v2 + 296), &v142);
      }

      if (v81)
      {
LABEL_200:
LABEL_156:
        v142 = v56;
        v100 = *(v2 + 304);
        if (v100 != *(v2 + 312))
        {
          goto LABEL_151;
        }

        goto LABEL_143;
      }

      return;
    case 'T':
      if (v5 >= 2)
      {
        v78 = v3[1] - 101;
        v55 = v78 > 0x10;
        v79 = (1 << v78) & 0x14001;
        if (!v55 && v79 != 0)
        {
          goto LABEL_140;
        }
      }

      v142 = v56;
      if (!v56)
      {
        return;
      }

      if (*(v2 + 776) != 1 || *(v2 + 8) == *v2 || **v2 != 73)
      {
        goto LABEL_142;
      }

      llvm::itanium_demangle::PODSmallVector<llvm::itanium_demangle::Node *,32ul>::push_back((v2 + 296), &v142);
      if (!v81)
      {
        return;
      }

      goto LABEL_200;
    case 'U':
      goto LABEL_72;
    case 'a':
      *a1 = v3 + 1;
      v33 = a1[613];
      v34 = *(v33 + 1);
      if ((v34 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_35;
      }

      v35 = malloc(0x1000uLL);
      if (!v35)
      {
        goto LABEL_263;
      }

      v34 = 0;
      *v35 = v33;
      *(v35 + 1) = 0;
      v33 = v35;
      *(v2 + 4904) = v35;
LABEL_35:
      *(v33 + 1) = v34 + 32;
      v14 = &v33[v34];
      v14[24] = 8;
      *(v14 + 25) = *(v14 + 25) & 0xF000 | 0x540;
      *(v14 + 2) = &unk_1F5B3FF08;
      v15 = "signed char";
      v16 = 11;
      goto LABEL_167;
    case 'b':
      *a1 = v3 + 1;
      v111 = a1[613];
      v112 = *(v111 + 1);
      if ((v112 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_165;
      }

      v113 = malloc(0x1000uLL);
      if (!v113)
      {
        goto LABEL_263;
      }

      v112 = 0;
      *v113 = v111;
      *(v113 + 1) = 0;
      v111 = v113;
      *(v2 + 4904) = v113;
LABEL_165:
      *(v111 + 1) = v112 + 32;
      v14 = &v111[v112];
      v14[24] = 8;
      *(v14 + 25) = *(v14 + 25) & 0xF000 | 0x540;
      *(v14 + 2) = &unk_1F5B3FF08;
      v15 = "BOOL";
      goto LABEL_166;
    case 'c':
      *a1 = v3 + 1;
      v36 = a1[613];
      v37 = *(v36 + 1);
      if ((v37 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_39;
      }

      v38 = malloc(0x1000uLL);
      if (!v38)
      {
        goto LABEL_263;
      }

      v37 = 0;
      *v38 = v36;
      *(v38 + 1) = 0;
      v36 = v38;
      *(v2 + 4904) = v38;
LABEL_39:
      *(v36 + 1) = v37 + 32;
      v14 = &v36[v37];
      v14[24] = 8;
      *(v14 + 25) = *(v14 + 25) & 0xF000 | 0x540;
      *(v14 + 2) = &unk_1F5B3FF08;
      v15 = "char";
      goto LABEL_166;
    case 'd':
      *a1 = v3 + 1;
      v114 = a1[613];
      v115 = *(v114 + 1);
      if ((v115 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_171;
      }

      v116 = malloc(0x1000uLL);
      if (!v116)
      {
        goto LABEL_263;
      }

      v115 = 0;
      *v116 = v114;
      *(v116 + 1) = 0;
      v114 = v116;
      *(v2 + 4904) = v116;
LABEL_171:
      *(v114 + 1) = v115 + 32;
      v14 = &v114[v115];
      v14[24] = 8;
      *(v14 + 25) = *(v14 + 25) & 0xF000 | 0x540;
      *(v14 + 2) = &unk_1F5B3FF08;
      v15 = "double";
      v16 = 6;
      goto LABEL_167;
    case 'e':
      *a1 = v3 + 1;
      v42 = a1[613];
      v43 = *(v42 + 1);
      if ((v43 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_47;
      }

      v44 = malloc(0x1000uLL);
      if (!v44)
      {
        goto LABEL_263;
      }

      v43 = 0;
      *v44 = v42;
      *(v44 + 1) = 0;
      v42 = v44;
      *(v2 + 4904) = v44;
LABEL_47:
      *(v42 + 1) = v43 + 32;
      v14 = &v42[v43];
      v14[24] = 8;
      *(v14 + 25) = *(v14 + 25) & 0xF000 | 0x540;
      *(v14 + 2) = &unk_1F5B3FF08;
      v15 = "long double";
      v16 = 11;
      goto LABEL_167;
    case 'f':
      *a1 = v3 + 1;
      v91 = a1[613];
      v92 = *(v91 + 1);
      if ((v92 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_129;
      }

      v93 = malloc(0x1000uLL);
      if (!v93)
      {
        goto LABEL_263;
      }

      v92 = 0;
      *v93 = v91;
      *(v93 + 1) = 0;
      v91 = v93;
      *(v2 + 4904) = v93;
LABEL_129:
      *(v91 + 1) = v92 + 32;
      v14 = &v91[v92];
      v14[24] = 8;
      *(v14 + 25) = *(v14 + 25) & 0xF000 | 0x540;
      *(v14 + 2) = &unk_1F5B3FF08;
      v15 = "float";
      v16 = 5;
      goto LABEL_167;
    case 'g':
      *a1 = v3 + 1;
      v30 = a1[613];
      v31 = *(v30 + 1);
      if ((v31 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_31;
      }

      v32 = malloc(0x1000uLL);
      if (!v32)
      {
        goto LABEL_263;
      }

      v31 = 0;
      *v32 = v30;
      *(v32 + 1) = 0;
      v30 = v32;
      *(v2 + 4904) = v32;
LABEL_31:
      *(v30 + 1) = v31 + 32;
      v14 = &v30[v31];
      v14[24] = 8;
      *(v14 + 25) = *(v14 + 25) & 0xF000 | 0x540;
      *(v14 + 2) = &unk_1F5B3FF08;
      v15 = "__float128";
      v16 = 10;
      goto LABEL_167;
    case 'h':
      *a1 = v3 + 1;
      v45 = a1[613];
      v46 = *(v45 + 1);
      if ((v46 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_51;
      }

      v47 = malloc(0x1000uLL);
      if (!v47)
      {
        goto LABEL_263;
      }

      v46 = 0;
      *v47 = v45;
      *(v47 + 1) = 0;
      v45 = v47;
      *(v2 + 4904) = v47;
LABEL_51:
      *(v45 + 1) = v46 + 32;
      v14 = &v45[v46];
      v14[24] = 8;
      *(v14 + 25) = *(v14 + 25) & 0xF000 | 0x540;
      *(v14 + 2) = &unk_1F5B3FF08;
      v15 = "unsigned char";
      v16 = 13;
      goto LABEL_167;
    case 'i':
      *a1 = v3 + 1;
      v86 = a1[613];
      v87 = *(v86 + 1);
      if ((v87 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_120;
      }

      v88 = malloc(0x1000uLL);
      if (!v88)
      {
        goto LABEL_263;
      }

      v87 = 0;
      *v88 = v86;
      *(v88 + 1) = 0;
      v86 = v88;
      *(v2 + 4904) = v88;
LABEL_120:
      *(v86 + 1) = v87 + 32;
      v14 = &v86[v87];
      v14[24] = 8;
      *(v14 + 25) = *(v14 + 25) & 0xF000 | 0x540;
      *(v14 + 2) = &unk_1F5B3FF08;
      v15 = "int";
      v16 = 3;
      goto LABEL_167;
    case 'j':
      *a1 = v3 + 1;
      v57 = a1[613];
      v58 = *(v57 + 1);
      if ((v58 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_76;
      }

      v59 = malloc(0x1000uLL);
      if (!v59)
      {
        goto LABEL_263;
      }

      v58 = 0;
      *v59 = v57;
      *(v59 + 1) = 0;
      v57 = v59;
      *(v2 + 4904) = v59;
LABEL_76:
      *(v57 + 1) = v58 + 32;
      v14 = &v57[v58];
      v14[24] = 8;
      *(v14 + 25) = *(v14 + 25) & 0xF000 | 0x540;
      *(v14 + 2) = &unk_1F5B3FF08;
      v15 = "unsigned int";
      v16 = 12;
      goto LABEL_167;
    case 'l':
      *a1 = v3 + 1;
      v94 = a1[613];
      v95 = *(v94 + 1);
      if ((v95 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_133;
      }

      v96 = malloc(0x1000uLL);
      if (!v96)
      {
        goto LABEL_263;
      }

      v95 = 0;
      *v96 = v94;
      *(v96 + 1) = 0;
      v94 = v96;
      *(v2 + 4904) = v96;
LABEL_133:
      *(v94 + 1) = v95 + 32;
      v14 = &v94[v95];
      v14[24] = 8;
      *(v14 + 25) = *(v14 + 25) & 0xF000 | 0x540;
      *(v14 + 2) = &unk_1F5B3FF08;
      v15 = "long";
      goto LABEL_166;
    case 'm':
      *a1 = v3 + 1;
      v48 = a1[613];
      v49 = *(v48 + 1);
      if ((v49 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_55;
      }

      v50 = malloc(0x1000uLL);
      if (!v50)
      {
        goto LABEL_263;
      }

      v49 = 0;
      *v50 = v48;
      *(v50 + 1) = 0;
      v48 = v50;
      *(v2 + 4904) = v50;
LABEL_55:
      *(v48 + 1) = v49 + 32;
      v14 = &v48[v49];
      v14[24] = 8;
      *(v14 + 25) = *(v14 + 25) & 0xF000 | 0x540;
      *(v14 + 2) = &unk_1F5B3FF08;
      v15 = "unsigned long";
      v16 = 13;
      goto LABEL_167;
    case 'n':
      *a1 = v3 + 1;
      v26 = a1[613];
      v27 = *(v26 + 1);
      if ((v27 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_27;
      }

      v28 = malloc(0x1000uLL);
      if (!v28)
      {
        goto LABEL_263;
      }

      v27 = 0;
      *v28 = v26;
      *(v28 + 1) = 0;
      v26 = v28;
      *(v2 + 4904) = v28;
LABEL_27:
      *(v26 + 1) = v27 + 32;
      v29 = &v26[v27];
      v29[24] = 8;
      *(v29 + 25) = *(v29 + 25) & 0xF000 | 0x540;
      *(v29 + 2) = &unk_1F5B3FF08;
      *(v29 + 4) = "__int128";
      *(v29 + 5) = 8;
      return;
    case 'o':
      *a1 = v3 + 1;
      v23 = a1[613];
      v24 = *(v23 + 1);
      if ((v24 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_23;
      }

      v25 = malloc(0x1000uLL);
      if (!v25)
      {
        goto LABEL_263;
      }

      v24 = 0;
      *v25 = v23;
      *(v25 + 1) = 0;
      v23 = v25;
      *(v2 + 4904) = v25;
LABEL_23:
      *(v23 + 1) = v24 + 32;
      v14 = &v23[v24];
      v14[24] = 8;
      *(v14 + 25) = *(v14 + 25) & 0xF000 | 0x540;
      *(v14 + 2) = &unk_1F5B3FF08;
      v15 = "unsigned __int128";
      v16 = 17;
      goto LABEL_167;
    case 'r':
      if (v5 < 2)
      {
        v51 = 1;
        v52 = 1;
      }

      else
      {
        v6 = v3[1];
        v7 = 1;
LABEL_58:
        if (v6 == 86)
        {
          v51 = v7 + 1;
        }

        else
        {
          v51 = v7;
        }

        v52 = v51;
        if (v5 > v51)
        {
          if (v3[v51] == 75)
          {
            v52 = v51 + 1;
          }

          else
          {
            v52 = v51;
          }

          v51 = v52;
        }
      }

      if (v5 > v52 && ((v53 = v3[v52], v53 == 70) || ((v54 = v51 + 1, v53 == 68) ? (v55 = v5 > v54) : (v55 = 0), v55 && ((v120 = v3[v54] - 79, v55 = v120 > 0x29, v121 = (1 << v120) & 0x30100000001, !v55) ? (v122 = v121 == 0) : (v122 = 1), !v122))))
      {
LABEL_194:
      }

      else
      {
LABEL_72:
      }

      goto LABEL_141;
    case 's':
      *a1 = v3 + 1;
      v66 = a1[613];
      v67 = *(v66 + 1);
      if ((v67 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_86;
      }

      v68 = malloc(0x1000uLL);
      if (!v68)
      {
        goto LABEL_263;
      }

      v67 = 0;
      *v68 = v66;
      *(v68 + 1) = 0;
      v66 = v68;
      *(v2 + 4904) = v68;
LABEL_86:
      *(v66 + 1) = v67 + 32;
      v14 = &v66[v67];
      v14[24] = 8;
      *(v14 + 25) = *(v14 + 25) & 0xF000 | 0x540;
      *(v14 + 2) = &unk_1F5B3FF08;
      v15 = "short";
      v16 = 5;
      goto LABEL_167;
    case 't':
      *a1 = v3 + 1;
      v97 = a1[613];
      v98 = *(v97 + 1);
      if ((v98 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_137;
      }

      v99 = malloc(0x1000uLL);
      if (!v99)
      {
        goto LABEL_263;
      }

      v98 = 0;
      *v99 = v97;
      *(v99 + 1) = 0;
      v97 = v99;
      *(v2 + 4904) = v99;
LABEL_137:
      *(v97 + 1) = v98 + 32;
      v14 = &v97[v98];
      v14[24] = 8;
      *(v14 + 25) = *(v14 + 25) & 0xF000 | 0x540;
      *(v14 + 2) = &unk_1F5B3FF08;
      v15 = "unsigned short";
      v16 = 14;
      goto LABEL_167;
    case 'u':
      *a1 = v3 + 1;
      if (v4 == v3 + 1 || v3[1] - 58 < 0xFFFFFFF6)
      {
        return;
      }

      v69 = 0;
      v70 = 0;
      do
      {
        v71 = v70;
        v72 = v69;
        v73 = &v3[v69 + 2];
        *a1 = v73;
        v74 = v3[v69 + 1];
        v70 = v74 + 10 * v70 - 48;
        if (v73 == v4)
        {
          break;
        }

        ++v69;
      }

      while (*v73 - 48 <= 9);
      if (v5 - v72 - 2 < v70)
      {
        return;
      }

      v75 = &v3[10 * v71 - 46 + v72 + v74];
      *a1 = v75;
      v143.n128_u64[0] = v73;
      v143.n128_u64[1] = v70;
      if (!v70)
      {
        return;
      }

      if (v75 == v4 || *v75 != 73)
      {
      }

      else
      {
        *a1 = &v3[10 * v71 - 45 + v72 + v74];
        if (!v76)
        {
          return;
        }

        v77 = *v2;
        if (*v2 == *(v2 + 8) || *v77 != 69)
        {
          return;
        }

        *v2 = v77 + 1;
      }

      goto LABEL_156;
    case 'v':
      *a1 = v3 + 1;
      v17 = a1[613];
      v18 = *(v17 + 1);
      if ((v18 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_15;
      }

      v19 = malloc(0x1000uLL);
      if (!v19)
      {
        goto LABEL_263;
      }

      v18 = 0;
      *v19 = v17;
      *(v19 + 1) = 0;
      v17 = v19;
      *(v2 + 4904) = v19;
LABEL_15:
      *(v17 + 1) = v18 + 32;
      v14 = &v17[v18];
      v14[24] = 8;
      *(v14 + 25) = *(v14 + 25) & 0xF000 | 0x540;
      *(v14 + 2) = &unk_1F5B3FF08;
      v15 = "void";
LABEL_166:
      v16 = 4;
      goto LABEL_167;
    case 'w':
      *a1 = v3 + 1;
      v39 = a1[613];
      v40 = *(v39 + 1);
      if ((v40 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_43;
      }

      v41 = malloc(0x1000uLL);
      if (!v41)
      {
        goto LABEL_263;
      }

      v40 = 0;
      *v41 = v39;
      *(v41 + 1) = 0;
      v39 = v41;
      *(v2 + 4904) = v41;
LABEL_43:
      *(v39 + 1) = v40 + 32;
      v14 = &v39[v40];
      v14[24] = 8;
      *(v14 + 25) = *(v14 + 25) & 0xF000 | 0x540;
      *(v14 + 2) = &unk_1F5B3FF08;
      v15 = "wchar_t";
      v16 = 7;
      goto LABEL_167;
    case 'x':
      *a1 = v3 + 1;
      v108 = a1[613];
      v109 = *(v108 + 1);
      if ((v109 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_161;
      }

      v110 = malloc(0x1000uLL);
      if (!v110)
      {
        goto LABEL_263;
      }

      v109 = 0;
      *v110 = v108;
      *(v110 + 1) = 0;
      v108 = v110;
      *(v2 + 4904) = v110;
LABEL_161:
      *(v108 + 1) = v109 + 32;
      v14 = &v108[v109];
      v14[24] = 8;
      *(v14 + 25) = *(v14 + 25) & 0xF000 | 0x540;
      *(v14 + 2) = &unk_1F5B3FF08;
      v15 = "long long";
      v16 = 9;
      goto LABEL_167;
    case 'y':
      *a1 = v3 + 1;
      v11 = a1[613];
      v12 = *(v11 + 1);
      if ((v12 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_11;
      }

      v13 = malloc(0x1000uLL);
      if (!v13)
      {
        goto LABEL_263;
      }

      v12 = 0;
      *v13 = v11;
      *(v13 + 1) = 0;
      v11 = v13;
      *(v2 + 4904) = v13;
LABEL_11:
      *(v11 + 1) = v12 + 32;
      v14 = &v11[v12];
      v14[24] = 8;
      *(v14 + 25) = *(v14 + 25) & 0xF000 | 0x540;
      *(v14 + 2) = &unk_1F5B3FF08;
      v15 = "unsigned long long";
      v16 = 18;
      goto LABEL_167;
    case 'z':
      *a1 = v3 + 1;
      v20 = a1[613];
      v21 = *(v20 + 1);
      if ((v21 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_19;
      }

      v22 = malloc(0x1000uLL);
      if (!v22)
      {
LABEL_263:
        std::terminate();
      }

      v21 = 0;
      *v22 = v20;
      *(v22 + 1) = 0;
      v20 = v22;
      *(v2 + 4904) = v22;
LABEL_19:
      *(v20 + 1) = v21 + 32;
      v14 = &v20[v21];
      v14[24] = 8;
      *(v14 + 25) = *(v14 + 25) & 0xF000 | 0x540;
      *(v14 + 2) = &unk_1F5B3FF08;
      v15 = "...";
      v16 = 3;
LABEL_167:
      *(v14 + 4) = v15;
      *(v14 + 5) = v16;
      return;
    default:
      goto LABEL_140;
  }
}

void *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::SaveTemplateParams::SaveTemplateParams(void *result, void *a2)
{
  v2 = a2;
  *(result + 2) = 0u;
  v3 = result + 4;
  *result = a2;
  result[1] = result + 4;
  *(result + 11) = 0u;
  v4 = (result + 11);
  result[8] = result + 11;
  v5 = (result + 8);
  result[2] = result + 4;
  result[3] = result + 8;
  *(result + 3) = 0u;
  v6 = result + 19;
  result[9] = result + 11;
  result[10] = result + 19;
  *(result + 13) = 0u;
  *(result + 15) = 0u;
  *(result + 17) = 0u;
  v7 = a2[83];
  v8 = v2 + 86;
  if (v7 == (v2 + 86))
  {
    v14 = v2[84];
    if (v14 == v7)
    {
      v9 = (result + 11);
      v16 = v7;
    }

    else
    {
      v15 = result;
      memmove(result + 4, v7, v14 - v7);
      result = v15;
      v16 = v2[84];
      v7 = v2[83];
      v9 = *v5;
    }

    result[2] = v3 + v16 - v7;
    v2[84] = v7;
    v10 = v2[72];
    v11 = v2 + 75;
    if (v10 != v2 + 75)
    {
      goto LABEL_3;
    }

LABEL_10:
    if (v9 == v4)
    {
      v4 = v9;
      v22 = v2[73];
      v19 = v22 - v10;
      if (v22 != v10)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v17 = result;
      free(v9);
      result = v17;
      v17[8] = v4;
      v17[9] = v4;
      v17[10] = v6;
      v10 = v2[72];
      v18 = v2[73];
      v19 = v18 - v10;
      if (v18 != v10)
      {
LABEL_12:
        v20 = result;
        memmove(v4, v10, v19);
        result = v20;
        v4 = *v5;
        v21 = v2[73];
        v10 = v2[72];
LABEL_15:
        result[9] = &v4[v21 - v10];
        v2[73] = v10;
        v2 = *result;
        v7 = *(*result + 664);
        v11 = *(*result + 576);
        goto LABEL_16;
      }
    }

    v21 = v10;
    goto LABEL_15;
  }

  result[1] = v7;
  *(result + 1) = *(v2 + 42);
  v2[83] = v8;
  v2[84] = v8;
  v2[85] = v2 + 90;
  v7 = (v2 + 86);
  v9 = (result + 11);
  v10 = v2[72];
  v11 = v2 + 75;
  if (v10 == v2 + 75)
  {
    goto LABEL_10;
  }

LABEL_3:
  *v5 = v10;
  if (v9 == v4)
  {
    *(result + 9) = *(v2 + 73);
    v2[72] = v11;
    v2[73] = v11;
    v2[74] = v2 + 83;
  }

  else
  {
    v2[72] = v9;
    v12 = result[9];
    result[9] = v2[73];
    v2[73] = v12;
    v13 = result[10];
    result[10] = v2[74];
    v2[74] = v13;
    v11 = v2[72];
    v2[73] = v11;
  }

LABEL_16:
  v2[84] = v7;
  v2[73] = v11;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseName(uint64_t a1, size_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  if (v4 == *a1)
  {
LABEL_9:
    LOBYTE(v60[0]) = 0;
    if (!v10)
    {
      return v10;
    }

    if (*(a1 + 8) == *a1 || **a1 != 73)
    {
      if ((v60[0] & 1) == 0)
      {
        return v10;
      }

      return 0;
    }

    if ((v60[0] & 1) == 0)
    {
      v11 = *(a1 + 304);
      if (v11 == *(a1 + 312))
      {
        v12 = *(a1 + 296);
        v13 = v11 - v12;
        if (v12 == (a1 + 320))
        {
          v14 = malloc(2 * (v11 - v12));
          if (!v14)
          {
            goto LABEL_129;
          }

          if (v11 != (a1 + 320))
          {
            v53 = v14;
            memmove(v14, v12, v13);
            v14 = v53;
          }

          *(a1 + 296) = v14;
        }

        else
        {
          v14 = realloc(*(a1 + 296), 2 * (v11 - v12));
          *(a1 + 296) = v14;
          if (!v14)
          {
LABEL_129:
            abort();
          }
        }

        v11 = &v14[v13];
        *(a1 + 312) = &v14[8 * (v13 >> 2)];
      }

      *v11 = v10;
      *(a1 + 304) = v11 + 8;
    }

    if (!v54)
    {
      return 0;
    }

    if (a2)
    {
      *(a2 + 1) = 1;
    }

    v55 = *(a1 + 4904);
    v56 = v55[1];
    if ((v56 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v57 = v54;
      v58 = malloc(0x1000uLL);
      if (!v58)
      {
LABEL_130:
        std::terminate();
      }

      v56 = 0;
      *v58 = v55;
      v58[1] = 0;
      v55 = v58;
      *(a1 + 4904) = v58;
      v54 = v57;
    }

    v55[1] = v56 + 32;
    v59 = v55 + v56;
    v59[24] = 45;
    *(v59 + 25) = *(v59 + 25) & 0xF000 | 0x540;
    *(v59 + 2) = &unk_1F5B41C18;
    *(v59 + 4) = v10;
    *(v59 + 5) = v54;
    return v59 + 16;
  }

  v6 = *v5;
  if (v6 == 90)
  {
    *a1 = v5 + 1;
    if (!v15)
    {
      return 0;
    }

    v18 = *a1;
    v17 = *(a1 + 8);
    if (*a1 == v17 || *v18 != 69)
    {
      return 0;
    }

    v19 = v15;
    *a1 = v18 + 1;
    if (v18 + 1 != v17 && v18[1] == 115)
    {
      *a1 = v18 + 2;
      *a1 = llvm::itanium_demangle::parse_discriminator(v18 + 2, v17, v16);
    }

    v48 = *a1;
    if (*a1 == *(a1 + 8) || *v48 != 100)
    {
      if (!v51)
      {
LABEL_112:
        v10 = 0;
        goto LABEL_113;
      }

      v50 = v51;
      *a1 = llvm::itanium_demangle::parse_discriminator(*a1, *(a1 + 8), v52);
    }

    else
    {
      *a1 = v48 + 1;
      v49 = *a1;
      if (*a1 == *(a1 + 8))
      {
        goto LABEL_112;
      }

      if (*v49 != 95)
      {
        goto LABEL_112;
      }

      *a1 = v49 + 1;
      if (!v50)
      {
        goto LABEL_112;
      }
    }

LABEL_113:
    return v10;
  }

  if (v6 != 78)
  {
    goto LABEL_9;
  }

  v7 = (v5 + 1);
  *a1 = v5 + 1;
  if (v5 + 1 == v4)
  {
    goto LABEL_27;
  }

  v8 = *v7;
  if (v8 == 72)
  {
    v7 = (v5 + 2);
    *a1 = v5 + 2;
    if (a2)
    {
      v23 = 1;
      v24 = 24;
LABEL_47:
      *(a2 + v24) = v23;
      goto LABEL_48;
    }

    goto LABEL_48;
  }

  if (v8 != 114)
  {
LABEL_27:
    v9 = 0;
    if (v7 == v4)
    {
      goto LABEL_30;
    }

LABEL_28:
    if (*v7 == 86)
    {
      *a1 = ++v7;
      v9 |= 2u;
    }

    goto LABEL_30;
  }

  v7 = (v5 + 2);
  *a1 = v5 + 2;
  v9 = 4;
  if (v7 != v4)
  {
    goto LABEL_28;
  }

LABEL_30:
  if (v7 != v4 && *v7 == 75)
  {
    *a1 = ++v7;
    v9 |= 1u;
  }

  if (a2)
  {
    *(a2 + 4) = v9;
  }

  if (v7 == v4)
  {
    goto LABEL_40;
  }

  v22 = *v7;
  if (v22 == 82)
  {
    *a1 = ++v7;
    if (a2)
    {
      v23 = 1;
      goto LABEL_46;
    }

    goto LABEL_48;
  }

  if (v22 != 79)
  {
LABEL_40:
    if (a2)
    {
      v23 = 0;
      goto LABEL_46;
    }
  }

  else
  {
    *a1 = ++v7;
    if (a2)
    {
      v23 = 2;
LABEL_46:
      v24 = 8;
      goto LABEL_47;
    }
  }

LABEL_48:
  v10 = 0;
  v25 = (a1 + 320);
  while (v7 == v4 || *v7 != 69)
  {
    if (a2)
    {
      *(a2 + 1) = 0;
    }

    v26 = 0;
    v27 = v4 - v7;
    if (!v27)
    {
      goto LABEL_85;
    }

    v28 = *v7;
    if (v28 > 0x52)
    {
      if (v28 != 83)
      {
        if (v28 != 84)
        {
          goto LABEL_85;
        }

        if (v10)
        {
          return 0;
        }

        goto LABEL_86;
      }

      if (v27 >= 2 && v7[1] == 116)
      {
        *a1 = v7 + 2;
        v36 = *(a1 + 4904);
        v37 = v36[1];
        if ((v37 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
        {
          v38 = malloc(0x1000uLL);
          if (!v38)
          {
            goto LABEL_130;
          }

          v37 = 0;
          *v38 = v36;
          v38[1] = 0;
          v36 = v38;
          *(a1 + 4904) = v38;
        }

        v36[1] = v37 + 32;
        v39 = v36 + v37;
        v26 = (v39 + 16);
        v39[24] = 8;
        *(v39 + 25) = *(v39 + 25) & 0xF000 | 0x540;
        *(v39 + 2) = &unk_1F5B3FF08;
        *(v39 + 4) = "std";
        *(v39 + 5) = 3;
      }

      else
      {
        if (!v40)
        {
          return 0;
        }

        v26 = v40;
        if (v40[8] == 27)
        {
          goto LABEL_85;
        }
      }

      if (v10)
      {
        return 0;
      }

      v7 = *a1;
      v4 = *(a1 + 8);
      v10 = v26;
    }

    else
    {
      if (v28 != 68)
      {
        if (v28 == 73)
        {
          if (!v10)
          {
            return v10;
          }

          if (!v29 || v10[8] == 45)
          {
            return 0;
          }

          v30 = v29;
          if (a2)
          {
            *(a2 + 1) = 1;
          }

          v31 = *(a1 + 4904);
          v32 = v31[1];
          if ((v32 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
          {
            v33 = malloc(0x1000uLL);
            if (!v33)
            {
              goto LABEL_130;
            }

            v32 = 0;
            *v33 = v31;
            v33[1] = 0;
            v31 = v33;
            *(a1 + 4904) = v33;
          }

          v31[1] = v32 + 32;
          v34 = v31 + v32;
          v34[24] = 45;
          *(v34 + 25) = *(v34 + 25) & 0xF000 | 0x540;
          *(v34 + 2) = &unk_1F5B41C18;
          *(v34 + 4) = v10;
          *(v34 + 5) = v30;
          v10 = v34 + 16;
          goto LABEL_87;
        }

        goto LABEL_85;
      }

      if (v27 < 2 || (v7[1] | 0x20) != 0x74)
      {
        v26 = 0;
LABEL_85:
        goto LABEL_86;
      }

      if (v10)
      {
        return 0;
      }

LABEL_86:
      v10 = v35;
      if (!v35)
      {
        return v10;
      }

LABEL_87:
      v41 = *(a1 + 304);
      if (v41 == *(a1 + 312))
      {
        v43 = *(a1 + 296);
        v44 = v41 - v43;
        if (v43 == v25)
        {
          v45 = malloc(2 * (v41 - v43));
          if (!v45)
          {
            goto LABEL_129;
          }

          if (v41 != v25)
          {
            v46 = v45;
            memmove(v45, v43, v44);
            v45 = v46;
          }

          *(a1 + 296) = v45;
        }

        else
        {
          v45 = realloc(*(a1 + 296), 2 * (v41 - v43));
          *(a1 + 296) = v45;
          if (!v45)
          {
            goto LABEL_129;
          }
        }

        *(a1 + 312) = &v45[8 * (v44 >> 2)];
        *&v45[v44] = v10;
        *(a1 + 304) = &v45[v44 + 8];
        v7 = *a1;
        v42 = *(a1 + 8);
        v4 = *a1;
        if (*a1 != v42)
        {
LABEL_98:
          v4 = v42;
          if (*v7 == 77)
          {
            *a1 = ++v7;
            v4 = v42;
          }
        }
      }

      else
      {
        *v41 = v10;
        *(a1 + 304) = v41 + 8;
        v7 = *a1;
        v42 = *(a1 + 8);
        v4 = *a1;
        if (*a1 != v42)
        {
          goto LABEL_98;
        }
      }
    }
  }

  *a1 = v7 + 1;
  if (!v10)
  {
    return v10;
  }

  v47 = *(a1 + 304);
  if (*(a1 + 296) != v47)
  {
    *(a1 + 304) = v47 - 8;
    return v10;
  }

  return 0;
}

void llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseTemplateArg(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = &v3[-*a1];
  if (v3 == *a1)
  {
    v5 = 2147483611;
LABEL_12:
    if (v5 != 5)
    {
      if (v5 == 7)
      {
        *a1 = v2 + 1;
        {
          v7 = *a1;
          if (*a1 != *(a1 + 8) && *v7 == 69)
          {
            goto LABEL_17;
          }
        }

        return;
      }

LABEL_54:

      return;
    }

    if (v3 == v2 || *v2 != 84)
    {
      goto LABEL_54;
    }

    v18 = v4 < 2 ? 0 : v2[1];
    v27 = memchr("yptnk", v18, 5uLL);
    if (!v27 || v27 - "yptnk" == -1)
    {
      goto LABEL_54;
    }

    if (!v28)
    {
      return;
    }

    v19 = v28;
    if (!v29)
    {
      return;
    }

    v21 = v29;
    v30 = *(a1 + 4904);
    v31 = v30[1];
    if ((v31 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v32 = malloc(0x1000uLL);
      if (!v32)
      {
        goto LABEL_58;
      }

      v31 = 0;
      *v32 = v30;
      v32[1] = 0;
      v30 = v32;
      *(a1 + 4904) = v32;
    }

    v30[1] = v31 + 32;
    v25 = v30 + v31;
    v25[24] = 34;
    *(v25 + 25) = *(v25 + 25) & 0xF000 | 0x540;
    v26 = &unk_1F5B41D08;
    goto LABEL_44;
  }

  HIDWORD(v6) = *v2 - 74;
  LODWORD(v6) = HIDWORD(v6);
  v5 = v6 >> 1;
  if (v5 > 4)
  {
    goto LABEL_12;
  }

  if (!v5)
  {
    v8 = v2 + 1;
    *a1 = v8;
    v9 = (*(a1 + 24) - *(a1 + 16)) >> 3;
    v10 = (a1 + 40);
    while (v8 == v3 || *v8 != 69)
    {
      if (!v13)
      {
        return;
      }

      v12 = *(a1 + 24);
      if (v12 == *(a1 + 32))
      {
        v14 = v13;
        v15 = *(a1 + 16);
        v16 = v12 - v15;
        if (v15 == v10)
        {
          v11 = malloc(2 * (v12 - v15));
          if (!v11)
          {
LABEL_57:
            abort();
          }

          if (v12 != v10)
          {
            v17 = v11;
            memmove(v11, v15, v16);
            v11 = v17;
          }

          *(a1 + 16) = v11;
        }

        else
        {
          v11 = realloc(*(a1 + 16), 2 * (v12 - v15));
          *(a1 + 16) = v11;
          if (!v11)
          {
            goto LABEL_57;
          }
        }

        v12 = &v11[v16];
        *(a1 + 32) = &v11[8 * (v16 >> 2)];
        v13 = v14;
      }

      *v12 = v13;
      *(a1 + 24) = v12 + 1;
      v8 = *a1;
      v3 = *(a1 + 8);
    }

    *a1 = v8 + 1;
    v21 = v20;
    v22 = *(a1 + 4904);
    v23 = v22[1];
    if ((v23 - 4048) > 0xFFFFFFFFFFFFF00FLL)
    {
      goto LABEL_43;
    }

    v24 = malloc(0x1000uLL);
    if (v24)
    {
      v23 = 0;
      *v24 = v22;
      v24[1] = 0;
      v22 = v24;
      *(a1 + 4904) = v24;
LABEL_43:
      v22[1] = v23 + 32;
      v25 = v22 + v23;
      v25[24] = 41;
      *(v25 + 25) = *(v25 + 25) & 0xF000 | 0x540;
      v26 = &unk_1F5B41C90;
LABEL_44:
      *(v25 + 2) = v26;
      *(v25 + 4) = v19;
      *(v25 + 5) = v21;
      return;
    }

LABEL_58:
    std::terminate();
  }

  if (v5 != 1)
  {
    goto LABEL_54;
  }

  if (v4 >= 2 && v2[1] == 90)
  {
    *a1 = v2 + 2;
    {
      return;
    }

    v7 = *a1;
    if (*a1 == *(a1 + 8) || *v7 != 69)
    {
      return;
    }

LABEL_17:
    *a1 = v7 + 1;
    return;
  }
}

void *llvm::itanium_demangle::PODSmallVector<llvm::itanium_demangle::Node *,32ul>::push_back(void *result, void *__size)
{
  v2 = result[1];
  if (v2 == result[2])
  {
    v3 = __size;
    v4 = result;
    v5 = *result;
    v6 = &v2[-*result];
    if (*result == result + 3)
    {
      v8 = malloc(2 * v6);
      if (!v8)
      {
        goto LABEL_11;
      }

      v7 = v8;
      if (v2 != v5)
      {
        v9 = v8;
        memmove(v8, v5, v6);
        v7 = v9;
      }

      result = v4;
      *v4 = v7;
    }

    else
    {
      v7 = realloc(*result, 2 * v6);
      result = v4;
      *v4 = v7;
      if (!v7)
      {
LABEL_11:
        abort();
      }
    }

    v2 = &v7[v6];
    result[2] = &v7[8 * (v6 >> 2)];
    __size = v3;
  }

  *v2 = *__size;
  result[1] = v2 + 8;
  return result;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::EnableIfAttr,llvm::itanium_demangle::NodeArray>(uint64_t a1, __n128 *a2)
{
  v3 = *(a1 + 4904);
  v4 = v3[1];
  if ((v4 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v6 = malloc(0x1000uLL);
    if (!v6)
    {
      std::terminate();
    }

    v4 = 0;
    *v6 = v3;
    v6[1] = 0;
    v3 = v6;
    *(a1 + 4904) = v6;
  }

  v3[1] = v4 + 32;
  v7 = v3 + v4;
  v7[24] = 10;
  v8 = *(v7 + 25) & 0xF000 | 0x540;
  *(v7 + 2) = &unk_1F5B41D80;
  result = *a2;
  *(v7 + 25) = v8;
  *(v7 + 2) = result;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::popTrailingNodeArray(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = (v4 + 8 * a2);
  v7 = (v5 - v6 + 15) & 0xFFFFFFF0;
  v8 = a1[613];
  v9 = v8[1];
  if (v7 + v9 >= 0xFF0)
  {
    if (v7 >= 0xFF1)
    {
      v10 = malloc(v7 + 16);
      if (v10)
      {
        *v10 = *v8;
        v10[1] = 0;
        *v8 = v10;
        v11 = (v10 + 2);
        if (v5 == v6)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

LABEL_11:
      std::terminate();
    }

    v12 = malloc(0x1000uLL);
    if (!v12)
    {
      goto LABEL_11;
    }

    v9 = 0;
    *v12 = v8;
    v12[1] = 0;
    v8 = v12;
    a1[613] = v12;
  }

  v8[1] = v9 + v7;
  v11 = v8 + v9 + 16;
  if (v5 != v6)
  {
LABEL_9:
    memmove(v11, v6, v5 - v6);
    v4 = a1[2];
  }

LABEL_10:
  a1[3] = v4 + 8 * a2;
  return v11;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::ExplicitObjectParameter,llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 4904);
  v4 = v3[1];
  if ((v4 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v6 = malloc(0x1000uLL);
    if (!v6)
    {
      std::terminate();
    }

    v4 = 0;
    *v6 = v3;
    v6[1] = 0;
    v3 = v6;
    *(a1 + 4904) = v6;
  }

  v3[1] = v4 + 32;
  v7 = v3 + v4;
  result = v7 + 16;
  v7[24] = 87;
  *(v7 + 25) = *(v7 + 25) & 0xF000 | 0x540;
  *(v7 + 2) = &unk_1F5B41DF8;
  *(v7 + 4) = a2;
  return result;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::FunctionEncoding,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::NodeArray &,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Qualifiers &,llvm::itanium_demangle::FunctionRefQual &>(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4, uint64_t a5, uint64_t a6, int a7, char a8)
{
  v15 = *(a1 + 4904);
  v16 = v15[1];
  if ((v16 - 4000) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v18 = malloc(0x1000uLL);
    if (!v18)
    {
      std::terminate();
    }

    v16 = 0;
    *v18 = v15;
    v18[1] = 0;
    v15 = v18;
    *(a1 + 4904) = v18;
  }

  v15[1] = v16 + 80;
  v19 = v15 + v16;
  v19[24] = 19;
  v20 = *(v19 + 25) & 0xF000 | 0x100;
  *(v19 + 2) = &unk_1F5B41E70;
  *(v19 + 4) = a2;
  *(v19 + 5) = a3;
  result = *a4;
  *(v19 + 25) = v20;
  *(v19 + 3) = result;
  *(v19 + 8) = a5;
  *(v19 + 9) = a6;
  *(v19 + 20) = a7;
  v19[84] = a8;
  return result;
}

void *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::SaveTemplateParams::~SaveTemplateParams(void *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1 + 4;
  v5 = *(*a1 + 664);
  v6 = (v3 + 688);
  if (v2 != v4)
  {
    *(v3 + 664) = v2;
    if (v5 == v6)
    {
      *(v3 + 672) = *(a1 + 1);
      a1[1] = v4;
      a1[2] = v4;
      a1[3] = a1 + 8;
      v9 = a1[8];
      v10 = (a1 + 11);
      v11 = *(v3 + 576);
      v12 = v3 + 600;
      if (v9 == (a1 + 11))
      {
        goto LABEL_10;
      }
    }

    else
    {
      a1[1] = v5;
      v7 = *(v3 + 672);
      *(v3 + 672) = a1[2];
      a1[2] = v7;
      v8 = *(v3 + 680);
      *(v3 + 680) = a1[3];
      a1[2] = a1[1];
      a1[3] = v8;
      v9 = a1[8];
      v10 = (a1 + 11);
      v11 = *(v3 + 576);
      v12 = v3 + 600;
      if (v9 == (a1 + 11))
      {
        goto LABEL_10;
      }
    }

LABEL_16:
    *(v3 + 576) = v9;
    if (v11 == v12)
    {
      *(v3 + 584) = *(a1 + 9);
      a1[8] = v10;
      a1[9] = v10;
      a1[10] = a1 + 19;
      goto LABEL_23;
    }

    a1[8] = v11;
    v17 = *(v3 + 584);
    *(v3 + 584) = a1[9];
    a1[9] = v17;
    v18 = *(v3 + 592);
    *(v3 + 592) = a1[10];
    v9 = a1[8];
    a1[9] = v9;
    a1[10] = v18;
    if (v9 != v10)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (v5 != v6)
  {
    free(v5);
    *(v3 + 664) = v6;
    *(v3 + 672) = v6;
    *(v3 + 680) = v3 + 720;
    v2 = a1[1];
    v5 = (v3 + 688);
  }

  v13 = a1[2];
  if (v13 == v2)
  {
    v14 = v2;
  }

  else
  {
    memmove(v5, v2, v13 - v2);
    v5 = *(v3 + 664);
    v2 = a1[1];
    v14 = a1[2];
  }

  *(v3 + 672) = &v5[v14 - v2];
  a1[2] = v2;
  v3 = *a1;
  v9 = a1[8];
  v10 = (a1 + 11);
  v11 = *(*a1 + 576);
  v12 = *a1 + 600;
  if (v9 != (a1 + 11))
  {
    goto LABEL_16;
  }

LABEL_10:
  if (v11 != v12)
  {
    free(v11);
    *(v3 + 576) = v12;
    *(v3 + 584) = v12;
    *(v3 + 592) = v3 + 664;
    v9 = a1[8];
    v11 = v12;
  }

  v15 = a1[9];
  if (v15 == v9)
  {
    v16 = v9;
  }

  else
  {
    memmove(v11, v9, v15 - v9);
    v11 = *(v3 + 576);
    v9 = a1[8];
    v16 = a1[9];
  }

  *(v3 + 584) = &v11[v16 - v9];
  a1[9] = v9;
  if (v9 != v10)
  {
LABEL_22:
    free(v9);
  }

LABEL_23:
  v19 = a1[1];
  if (v19 != v4)
  {
    free(v19);
  }

  return a1;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::SpecialName,char const(&)[31],llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 4904);
  v4 = v3[1];
  if ((v4 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v6 = malloc(0x1000uLL);
    if (!v6)
    {
      std::terminate();
    }

    v4 = 0;
    *v6 = v3;
    v6[1] = 0;
    v3 = v6;
    *(a1 + 4904) = v6;
  }

  v3[1] = v4 + 48;
  v7 = v3 + v4;
  result = v7 + 16;
  v7[24] = 21;
  *(v7 + 25) = *(v7 + 25) & 0xF000 | 0x540;
  *(v7 + 2) = &unk_1F5B3FE08;
  *(v7 + 4) = "template parameter object for ";
  *(v7 + 5) = 30;
  *(v7 + 6) = a2;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::SpecialName,char const(&)[12],llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 4904);
  v4 = v3[1];
  if ((v4 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v6 = malloc(0x1000uLL);
    if (!v6)
    {
      std::terminate();
    }

    v4 = 0;
    *v6 = v3;
    v6[1] = 0;
    v3 = v6;
    *(a1 + 4904) = v6;
  }

  v3[1] = v4 + 48;
  v7 = v3 + v4;
  result = v7 + 16;
  v7[24] = 21;
  *(v7 + 25) = *(v7 + 25) & 0xF000 | 0x540;
  *(v7 + 2) = &unk_1F5B3FE08;
  *(v7 + 4) = "vtable for ";
  *(v7 + 5) = 11;
  *(v7 + 6) = a2;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::SpecialName,char const(&)[9],llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 4904);
  v4 = v3[1];
  if ((v4 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v6 = malloc(0x1000uLL);
    if (!v6)
    {
      std::terminate();
    }

    v4 = 0;
    *v6 = v3;
    v6[1] = 0;
    v3 = v6;
    *(a1 + 4904) = v6;
  }

  v3[1] = v4 + 48;
  v7 = v3 + v4;
  result = v7 + 16;
  v7[24] = 21;
  *(v7 + 25) = *(v7 + 25) & 0xF000 | 0x540;
  *(v7 + 2) = &unk_1F5B3FE08;
  *(v7 + 4) = "VTT for ";
  *(v7 + 5) = 8;
  *(v7 + 6) = a2;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::SpecialName,char const(&)[14],llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 4904);
  v4 = v3[1];
  if ((v4 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v6 = malloc(0x1000uLL);
    if (!v6)
    {
      std::terminate();
    }

    v4 = 0;
    *v6 = v3;
    v6[1] = 0;
    v3 = v6;
    *(a1 + 4904) = v6;
  }

  v3[1] = v4 + 48;
  v7 = v3 + v4;
  result = v7 + 16;
  v7[24] = 21;
  *(v7 + 25) = *(v7 + 25) & 0xF000 | 0x540;
  *(v7 + 2) = &unk_1F5B3FE08;
  *(v7 + 4) = "typeinfo for ";
  *(v7 + 5) = 13;
  *(v7 + 6) = a2;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::SpecialName,char const(&)[19],llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 4904);
  v4 = v3[1];
  if ((v4 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v6 = malloc(0x1000uLL);
    if (!v6)
    {
      std::terminate();
    }

    v4 = 0;
    *v6 = v3;
    v6[1] = 0;
    v3 = v6;
    *(a1 + 4904) = v6;
  }

  v3[1] = v4 + 48;
  v7 = v3 + v4;
  result = v7 + 16;
  v7[24] = 21;
  *(v7 + 25) = *(v7 + 25) & 0xF000 | 0x540;
  *(v7 + 2) = &unk_1F5B3FE08;
  *(v7 + 4) = "typeinfo name for ";
  *(v7 + 5) = 18;
  *(v7 + 6) = a2;
  return result;
}

uint64_t llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseCallOffset(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 != v2)
  {
    v3 = *v1;
    if (v3 == 118)
    {
      v10 = v1 + 1;
      *a1 = v1 + 1;
      if (v1 + 1 == v2)
      {
        return 1;
      }

      v11 = v1 + 1;
      if (*v10 == 110)
      {
        v11 = v1 + 2;
        *a1 = v1 + 2;
      }

      if (v2 == v11)
      {
        return 1;
      }

      v12 = *v11;
      if (v12 < 0)
      {
        return 1;
      }

      v13 = MEMORY[0x1E69E9830];
      if ((*(MEMORY[0x1E69E9830] + 4 * v12 + 60) & 0x400) == 0)
      {
        return 1;
      }

      while (1)
      {
        v14 = *v11;
        if (v14 < 0 || (*(v13 + 4 * v14 + 60) & 0x400) == 0)
        {
          break;
        }

        *a1 = ++v11;
        if (v11 == v2)
        {
          v15 = v2;
          goto LABEL_30;
        }
      }

      v15 = v11;
LABEL_30:
      if (v15 == v10)
      {
        return 1;
      }

      if (v11 == v2)
      {
        return 1;
      }

      if (*v11 != 95)
      {
        return 1;
      }

      v17 = v11 + 1;
      *a1 = v11 + 1;
      if (v11 + 1 == v2)
      {
        return 1;
      }

      v5 = v11 + 1;
      if (*v17 == 110)
      {
        v5 = v11 + 2;
        *a1 = v11 + 2;
      }

      if (v2 == v5)
      {
        return 1;
      }

      v18 = *v5;
      if (v18 < 0 || (*(v13 + 4 * v18 + 60) & 0x400) == 0)
      {
        return 1;
      }

      while (1)
      {
        v19 = *v5;
        if (v19 < 0 || (*(v13 + 4 * v19 + 60) & 0x400) == 0)
        {
          break;
        }

        *a1 = ++v5;
        if (v5 == v2)
        {
          v20 = v2;
          goto LABEL_45;
        }
      }

      v20 = v5;
LABEL_45:
      if (v20 == v17)
      {
        return 1;
      }
    }

    else
    {
      if (v3 != 104)
      {
        return 1;
      }

      v4 = v1 + 1;
      *a1 = v1 + 1;
      if (v1 + 1 == v2)
      {
        return 1;
      }

      v5 = v1 + 1;
      if (*v4 == 110)
      {
        v5 = v1 + 2;
        *a1 = v1 + 2;
      }

      if (v2 == v5)
      {
        return 1;
      }

      v6 = *v5;
      if (v6 < 0)
      {
        return 1;
      }

      v7 = MEMORY[0x1E69E9830];
      if ((*(MEMORY[0x1E69E9830] + 4 * v6 + 60) & 0x400) == 0)
      {
        return 1;
      }

      while (1)
      {
        v8 = *v5;
        if (v8 < 0 || (*(v7 + 4 * v8 + 60) & 0x400) == 0)
        {
          break;
        }

        *a1 = ++v5;
        if (v5 == v2)
        {
          v9 = v2;
          goto LABEL_25;
        }
      }

      v9 = v5;
LABEL_25:
      if (v9 == v4)
      {
        return 1;
      }
    }

    if (v5 != v2 && *v5 == 95)
    {
      *a1 = v5 + 1;
      return 0;
    }
  }

  return 1;
}