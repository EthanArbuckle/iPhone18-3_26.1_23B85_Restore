void AdobeXMPCore::INode_v1::GetSimpleQualifier(AdobeXMPCore::INode_v1 *this@<X0>, uint64_t a2@<X8>)
{
  (*(*this + 128))(&v6);
  v5 = *(&v6 + 1);
  if (v6)
  {
    (*(*v6 + 232))(&v6);
    *a2 = v6;
    if (!v5)
    {
      return;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    if (!v5)
    {
      return;
    }
  }

  std::__shared_weak_count::__release_shared[abi:fe200100](v5);
}

void sub_18610FDD8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void CloneIXMPSubtree(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = 0;
  (*(**a1 + 264))(&v5);
  if (!v5)
  {
    goto LABEL_8;
  }

  if ((*(**a2 + 40))() == 2)
  {
    (*(**a2 + 248))(&v3);
    (*(*(v3 + *(*v3 - 688)) + 520))(v3 + *(*v3 - 688), &v5);
  }

  else
  {
    if ((*(**a2 + 40))() != 4)
    {
      goto LABEL_8;
    }

    (*(**a2 + 240))(&v3);
    (*(*v3 + 656))(v3, a2);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }

LABEL_8:
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v6);
  }
}

void sub_18610FFB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

BOOL ItemValuesMatch(uint64_t *a1, uint64_t *a2)
{
  v2 = (*a1 | *a2) == 0;
  if (*a1)
  {
    v3 = *a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return v2;
  }

  IXMPOptions = XMPUtils::GetIXMPOptions(a1);
  v7 = XMPUtils::GetIXMPOptions(a2);
  if ((IXMPOptions & 0x1F00) != (v7 & 0x1F00))
  {
    return 0;
  }

  if ((IXMPOptions & 0x1F00) == 0x100)
  {
    NodeChildCount = XMPUtils::GetNodeChildCount(a1);
    if (NodeChildCount != XMPUtils::GetNodeChildCount(a2))
    {
      return 0;
    }

    v67 = 0uLL;
    XMPUtils::GetNodeChildIterator(a1, &v67);
    v65[0] = 0;
    v65[1] = 0;
    XMPUtils::GetNodeChildIterator(a2, v65);
    v28 = v67;
    if (v67)
    {
      do
      {
        (*(*v28 + 48))(&v69);
        v29 = v69;
        v69 = 0uLL;
        v30 = a2[1];
        __p = *a2;
        v63 = v30;
        if (v30)
        {
          atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v29 + 88))(&v71, v29);
        v31 = (*(*v71 + 192))(v71);
        (*(*v29 + 72))(&v60, v29);
        v32 = (*(*v60 + 192))(v60);
        XMPUtils::FindChildNode(&__p, v31, v32, 0, 0, &v69);
        if (v61)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v61);
        }

        if (v72)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v72);
        }

        if (v63)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v63);
        }

        v33 = v69;
        if (v69)
        {
          v59 = v29;
          if (*(&v29 + 1))
          {
            atomic_fetch_add_explicit((*(&v29 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v57 = v33;
          v58 = *(&v69 + 1);
          if (*(&v69 + 1))
          {
            atomic_fetch_add_explicit((*(&v69 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v34 = ItemValuesMatch(&v59, &v57);
          if (v58)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v58);
          }

          v35 = v34 ^ 1;
          if (*(&v59 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](*(&v59 + 1));
          }
        }

        else
        {
          v35 = 1;
        }

        if (*(&v69 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v69 + 1));
        }

        if (*(&v29 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v29 + 1));
        }

        if (v35)
        {
          break;
        }

        (*(*v67 + 56))(&v69);
        v36 = *(&v67 + 1);
        v67 = v69;
        if (v36)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v36);
        }

        (*(*v65[0] + 56))(&v69);
        v37 = v65[1];
        *v65 = v69;
        if (v37)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v37);
        }

        v28 = v67;
      }

      while (v67);
      v38 = v35 ^ 1;
    }

    else
    {
      v38 = 1;
    }

    if (v65[1])
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v65[1]);
    }

    if (*(&v67 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v67 + 1));
    }

    return (v38 & 1) != 0;
  }

  if ((IXMPOptions & 0x1F00) != 0)
  {
    if ((IXMPOptions & 0x200) == 0)
    {
      ItemValuesMatch();
    }

    v39 = XMPUtils::GetNodeChildCount(a1);
    v40 = XMPUtils::GetNodeChildCount(a2);
    (*(**a1 + 248))(&v69);
    v41 = v69;
    (*(**a2 + 248))(&v69);
    v52 = *(&v69 + 1);
    if (!v39)
    {
LABEL_116:
      if (v52)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v52);
      }

      if (*(&v41 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v41 + 1));
      }

      return 1;
    }

    v42 = v69;
    v43 = 1;
    v53 = v39;
    while (1)
    {
      (*(*v41 + 656))(&v69, v41, v43);
      v44 = *(&v69 + 1);
      if (v40)
      {
        v45 = v69;
        v46 = 2;
        do
        {
          (*(*v42 + 656))(&v69, v42, v46 - 1);
          v47 = v69;
          v55 = v45;
          v56 = v44;
          if (v44)
          {
            atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v54 = v47;
          if (*(&v47 + 1))
          {
            atomic_fetch_add_explicit((*(&v47 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v48 = ItemValuesMatch(&v55, &v54);
          if (*(&v54 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](*(&v54 + 1));
          }

          if (v56)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v56);
          }

          if (*(&v47 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](*(&v47 + 1));
          }

          if (v46 > v40)
          {
            v49 = 1;
          }

          else
          {
            v49 = v48;
          }

          ++v46;
        }

        while ((v49 & 1) == 0);
        v50 = v48 ^ 1;
        v39 = v53;
        if (v44)
        {
LABEL_103:
          std::__shared_weak_count::__release_shared[abi:fe200100](v44);
        }
      }

      else
      {
        v50 = 1;
        if (*(&v69 + 1))
        {
          goto LABEL_103;
        }
      }

      if (v50)
      {
        if (v52)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v52);
        }

        if (*(&v41 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v41 + 1));
        }

        return 0;
      }

      if (++v43 > v39)
      {
        goto LABEL_116;
      }
    }
  }

  v8 = v7;
  v69 = 0uLL;
  v70 = 0;
  (*(**a1 + 232))(&v67);
  v9 = *(&v67 + 1);
  (*(*v67 + 504))(v65);
  v10 = (*(*v65[0] + 192))(v65[0]);
  std::string::basic_string[abi:fe200100]<0>(&v69, v10);
  if (v65[1])
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v65[1]);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  v67 = 0uLL;
  v68 = 0;
  (*(**a2 + 232))(v65);
  v11 = v65[1];
  (*(*v65[0] + 504))(&__p);
  v12 = (*(*__p + 192))(__p);
  std::string::basic_string[abi:fe200100]<0>(&v67, v12);
  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v63);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v11);
  }

  if (v70 >= 0)
  {
    v13 = HIBYTE(v70);
  }

  else
  {
    v13 = *(&v69 + 1);
  }

  v14 = HIBYTE(v68);
  if (v68 < 0)
  {
    v14 = *(&v67 + 1);
  }

  if (v13 == v14 && (v70 >= 0 ? (v15 = &v69) : (v15 = v69), v68 >= 0 ? (v16 = &v67) : (v16 = v67), !memcmp(v15, v16, v13) && (IXMPOptions & 0x40) == (v8 & 0x40)))
  {
    if ((IXMPOptions & 0x40) == 0)
    {
      goto LABEL_51;
    }

    (*(**a1 + 128))(v65);
    v18 = v65[0];
    v17 = v65[1];
    (*(**a2 + 128))(v65);
    v19 = 0;
    v20 = v65[0];
    v21 = v65[1];
    v2 = (v18 | v65[0]) == 0;
    if (v18 && v65[0])
    {
      v65[0] = 0;
      v65[1] = 0;
      v66 = 0;
      (*(*v18 + 232))(&__p, v18);
      v22 = v63;
      (*(*__p + 504))(&v71);
      v23 = (*(*v71 + 192))(v71);
      std::string::basic_string[abi:fe200100]<0>(v65, v23);
      if (v72)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v72);
      }

      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v22);
      }

      __p = 0;
      v63 = 0;
      v64 = 0;
      (*(*v20 + 232))(&v71, v20);
      v24 = v72;
      (*(*v71 + 504))(&v60);
      v25 = (*(*v60 + 192))(v60);
      std::string::basic_string[abi:fe200100]<0>(&__p, v25);
      if (v61)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v61);
      }

      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v24);
      }

      v19 = std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(v65, &__p);
      if (SHIBYTE(v64) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v66) < 0)
      {
        operator delete(v65[0]);
      }

      v2 = 0;
    }

    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v21);
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v17);
    }

    if (!v19)
    {
      v26 = 0;
    }

    else
    {
LABEL_51:
      v26 = 1;
    }
  }

  else
  {
    v26 = 0;
    v2 = 0;
  }

  if (SHIBYTE(v68) < 0)
  {
    operator delete(v67);
  }

  if (SHIBYTE(v70) < 0)
  {
    operator delete(v69);
  }

  if (v26)
  {
    return 1;
  }

  return v2;
}

void sub_1861109B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a21);
  }

  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v39);
  }

  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v38);
  }

  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v37);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (*(v40 - 121) < 0)
  {
    operator delete(*(v40 - 144));
  }

  _Unwind_Resume(exception_object);
}

BOOL std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<std::shared_ptr<AdobeXMPCore::INode_v1>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

void ItemValuesMatch()
{
  __assert_rtn("ItemValuesMatch", "XMPUtils2.cpp", 268, "leftForm & kXMP_PropValueIsArray");
}

{
  __assert_rtn("ItemValuesMatch", "XMPUtils-FileInfo.cpp", 688, "leftForm & kXMP_PropValueIsArray");
}

uint64_t XMPFiles_IO::New_XMPFiles_IO(Host_IO *a1, const char *a2, uint64_t a3)
{
  FileMode = Host_IO::GetFileMode(a1, a2);
  if (FileMode)
  {
    if (FileMode != 1)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 117;
      exception[1] = "New_XMPFiles_IO, path must be a file or not exist";
      *(exception + 16) = 0;
    }

    v7 = Host_IO::Open(a1, a2);
    if (v7 != -1)
    {
      Host_IO::Seek(v7, 0, 0);
      operator new();
    }
  }

  v10[0] = 111;
  v10[1] = "New_XMPFiles_IO, file does not exist";
  v10[2] = 0;
  if (a3)
  {
    GenericErrorCallback::NotifyClient(a3, 0, v10, a1);
  }

  return 0;
}

uint64_t XMPFiles_IO::XMPFiles_IO(uint64_t a1, Host_IO *a2, char *__s, char a4, uint64_t a5, uint64_t a6)
{
  *a1 = &unk_1EF4DF7F8;
  *(a1 + 8) = a4;
  v11 = strlen(__s);
  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:fe200100]();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    operator new();
  }

  *(a1 + 39) = v11;
  v13 = (a1 + 16);
  if (v11)
  {
    memmove(v13, __s, v11);
  }

  *(v13 + v12) = 0;
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a6;
  *(a1 + 88) = a5;
  if (a2 == -1)
  {
    __assert_rtn("XMPFiles_IO", "XMPFiles_IO.cpp", 105, "this->fileRef != Host_IO::noFileRef");
  }

  *(a1 + 56) = Host_IO::Length(a2);
  return a1;
}

void sub_186111024()
{
  if (*(v0 + 39) < 0)
  {
    operator delete(*v1);
  }

  JUMPOUT(0x186110FE0);
}

void XMPFiles_IO::~XMPFiles_IO(XMPFiles_IO *this, const char *a2)
{
  *this = &unk_1EF4DF7F8;
  if (*(this + 9))
  {
    XMPFiles_IO::DeleteTemp(this, a2);
  }

  v3 = *(this + 10);
  if (v3 != -1)
  {
    Host_IO::Close(v3);
  }

  if (*(this + 64) == 1)
  {
    v4 = (this + 16);
    if (*(this + 39) < 0)
    {
      if (!*(this + 3))
      {
        goto LABEL_12;
      }

      v4 = *v4;
    }

    else if (!*(this + 39))
    {
      goto LABEL_12;
    }

    Host_IO::Delete(v4, a2);
  }

LABEL_12:
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

{
  XMPFiles_IO::~XMPFiles_IO(this, a2);

  JUMPOUT(0x186602850);
}

uint64_t XMPFiles_IO::Read(XMPFiles_IO *this, void *a2, uint64_t a3, int a4)
{
  v5 = *(this + 10);
  if (v5 == -1)
  {
    v16 = "this->fileRef != Host_IO::noFileRef";
    v17 = 147;
    goto LABEL_14;
  }

  v9 = *(this + 6);
  if (v9 != Host_IO::Seek(v5, 0, 1u))
  {
    v16 = "this->currOffset == Host_IO::Offset(this->fileRef)";
    v17 = 148;
    goto LABEL_14;
  }

  v10 = *(this + 7);
  if (v10 != Host_IO::Length(*(this + 10)))
  {
    v16 = "this->currLength == Host_IO::Length(this->fileRef)";
    v17 = 149;
    goto LABEL_14;
  }

  v11 = *(this + 6);
  v12 = *(this + 7);
  v13 = __OFSUB__(v12, v11);
  v14 = v12 - v11;
  if (v14 < 0 != v13)
  {
    v16 = "this->currOffset <= this->currLength";
    v17 = 150;
LABEL_14:
    __assert_rtn("Read", "XMPFiles_IO.cpp", v17, v16);
  }

  if (v14 < a3)
  {
    if (a4)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 7;
      exception[1] = "XMPFiles_IO::Read, not enough data";
      *(exception + 16) = 0;
    }

    a3 = v14;
  }

  if (Host_IO::Read(*(this + 10), a2, a3) != a3)
  {
    v18 = __cxa_allocate_exception(0x18uLL);
    *v18 = 7;
    v18[1] = "XMP_Enforce failed: (amountRead == count) in /Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/source/XMPFiles_IO.cpp at line 158";
    *(v18 + 16) = 0;
  }

  *(this + 6) += a3;
  return a3;
}

void sub_186111308(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = __cxa_begin_catch(exception_object);
    v4 = *(v2 + 88);
    if (v4)
    {
      v5 = (v2 + 16);
      if (*(v2 + 39) < 0)
      {
        v5 = *v5;
      }

      GenericErrorCallback::NotifyClient(v4, 2, v3, v5);
      __cxa_end_catch();
      JUMPOUT(0x186111234);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void XMPFiles_IO::Write(XMPFiles_IO *this, const void *a2, size_t a3)
{
  v4 = *(this + 10);
  if (v4 == -1)
  {
    v15 = "this->fileRef != Host_IO::noFileRef";
    v16 = 174;
    goto LABEL_15;
  }

  v7 = *(this + 6);
  if (v7 != Host_IO::Seek(v4, 0, 1u))
  {
    v15 = "this->currOffset == Host_IO::Offset(this->fileRef)";
    v16 = 175;
    goto LABEL_15;
  }

  v8 = *(this + 7);
  if (v8 != Host_IO::Length(*(this + 10)))
  {
    v15 = "this->currLength == Host_IO::Length(this->fileRef)";
    v16 = 176;
    goto LABEL_15;
  }

  if (*(this + 6) > *(this + 7))
  {
    v15 = "this->currOffset <= this->currLength";
    v16 = 177;
LABEL_15:
    __assert_rtn("Write", "XMPFiles_IO.cpp", v16, v15);
  }

  if (*(this + 8) == 1)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 112;
    exception[1] = "New_XMPFiles_IO, write not permitted on read only file";
    *(exception + 16) = 0;
  }

  Host_IO::Write(*(this + 10), a2, a3);
  v12 = *(this + 10);
  if (v12)
  {
    v9.n128_f32[0] = a3;
    XMP_ProgressTracker::AddWorkDone(v12, v9, v10, v11);
  }

  v13 = *(this + 7);
  v14 = *(this + 6) + a3;
  *(this + 6) = v14;
  if (v14 > v13)
  {
    *(this + 7) = v14;
  }
}

void sub_1861114B0(void *a1)
{
  __cxa_begin_catch(a1);
  *(v1 + 48) = Host_IO::Seek(*(v1 + 40), 0, 1u);
  *(v1 + 56) = Host_IO::Length(*(v1 + 40));
  __cxa_rethrow();
}

void sub_1861114E8(_Unwind_Exception *a1, int a2)
{
  __cxa_end_catch();
  if (a2 != 2)
  {
    _Unwind_Resume(a1);
  }

  v5 = __cxa_begin_catch(a1);
  v6 = *(v2 + 88);
  if (!v6)
  {
    __cxa_rethrow();
  }

  v7 = (v2 + 16);
  if (*(v2 + 39) < 0)
  {
    v7 = *v7;
  }

  GenericErrorCallback::NotifyClient(v6, 2, v5, v7);

  __cxa_end_catch();
}

off_t XMPFiles_IO::Seek(uint64_t a1, off_t a2, unsigned int a3)
{
  v4 = *(a1 + 40);
  if (v4 == -1)
  {
    v14 = "this->fileRef != Host_IO::noFileRef";
    v15 = 210;
    goto LABEL_17;
  }

  v7 = *(a1 + 48);
  if (v7 != Host_IO::Seek(v4, 0, 1u))
  {
    v14 = "this->currOffset == Host_IO::Offset(this->fileRef)";
    v15 = 211;
    goto LABEL_17;
  }

  v9 = (a1 + 56);
  v8 = *(a1 + 56);
  if (v8 != Host_IO::Length(*(a1 + 40)))
  {
    v14 = "this->currLength == Host_IO::Length(this->fileRef)";
    v15 = 212;
LABEL_17:
    __assert_rtn("Seek", "XMPFiles_IO.cpp", v15, v14);
  }

  v10 = (a1 + 48);
  if (a3 != 1)
  {
    v11 = a2;
    if (a3 != 2)
    {
      goto LABEL_8;
    }

    v10 = (a1 + 56);
  }

  v11 = *v10 + a2;
LABEL_8:
  if (v11 < 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 7;
    exception[1] = "XMP_Enforce failed: (newOffset >= 0) in /Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/source/XMPFiles_IO.cpp at line 220";
    *(exception + 16) = 0;
  }

  if (v11 > *v9)
  {
    if (*(a1 + 8) == 1)
    {
      v17 = __cxa_allocate_exception(0x18uLL);
      *v17 = 7;
      v17[1] = "XMPFiles_IO::Seek, read-only seek beyond EOF";
      *(v17 + 16) = 0;
    }

    Host_IO::SetEOF(*(a1 + 40), v11);
    a2 = 0;
    *v9 = v11;
    a3 = 2;
  }

  v12 = Host_IO::Seek(*(a1 + 40), a2, a3);
  *(a1 + 48) = v12;
  if (v12 != v11)
  {
    __assert_rtn("Seek", "XMPFiles_IO.cpp", 232, "this->currOffset == newOffset");
  }

  return v11;
}

void sub_186111730(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = __cxa_begin_catch(exception_object);
    v4 = *(v2 + 88);
    if (v4)
    {
      v5 = (v2 + 16);
      if (*(v2 + 39) < 0)
      {
        v5 = *v5;
      }

      GenericErrorCallback::NotifyClient(v4, 2, v3, v5);
      __cxa_end_catch();
      JUMPOUT(0x186111648);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t XMPFiles_IO::Length(XMPFiles_IO *this)
{
  v2 = *(this + 10);
  if (v2 == -1)
  {
    v6 = "this->fileRef != Host_IO::noFileRef";
    v7 = 246;
    goto LABEL_8;
  }

  v3 = *(this + 6);
  if (v3 != Host_IO::Seek(v2, 0, 1u))
  {
    v6 = "this->currOffset == Host_IO::Offset(this->fileRef)";
    v7 = 247;
    goto LABEL_8;
  }

  v4 = *(this + 7);
  if (v4 != Host_IO::Length(*(this + 10)))
  {
    v6 = "this->currLength == Host_IO::Length(this->fileRef)";
    v7 = 248;
LABEL_8:
    __assert_rtn("Length", "XMPFiles_IO.cpp", v7, v6);
  }

  return *(this + 7);
}

off_t XMPFiles_IO::Truncate(XMPFiles_IO *this, off_t a2)
{
  v3 = *(this + 10);
  if (v3 == -1)
  {
    v10 = "this->fileRef != Host_IO::noFileRef";
    v11 = 261;
    goto LABEL_14;
  }

  v5 = *(this + 6);
  if (v5 != Host_IO::Seek(v3, 0, 1u))
  {
    v10 = "this->currOffset == Host_IO::Offset(this->fileRef)";
    v11 = 262;
    goto LABEL_14;
  }

  v6 = *(this + 7);
  if (v6 != Host_IO::Length(*(this + 10)))
  {
    v10 = "this->currLength == Host_IO::Length(this->fileRef)";
    v11 = 263;
    goto LABEL_14;
  }

  if (*(this + 8) == 1)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 112;
    exception[1] = "New_XMPFiles_IO, truncate not permitted on read only file";
    *(exception + 16) = 0;
  }

  if (*(this + 7) < a2)
  {
    v13 = __cxa_allocate_exception(0x18uLL);
    *v13 = 7;
    v13[1] = "XMP_Enforce failed: (length <= this->currLength) in /Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/source/XMPFiles_IO.cpp at line 268";
    *(v13 + 16) = 0;
  }

  Host_IO::SetEOF(*(this + 10), a2);
  *(this + 7) = a2;
  v7 = *(this + 6);
  if (v7 > a2)
  {
    *(this + 6) = a2;
    v7 = a2;
  }

  Host_IO::Seek(*(this + 10), v7, 0);
  v8 = *(this + 6);
  result = Host_IO::Seek(*(this + 10), 0, 1u);
  if (v8 != result)
  {
    v10 = "this->currOffset == Host_IO::Offset(this->fileRef)";
    v11 = 276;
LABEL_14:
    __assert_rtn("Truncate", "XMPFiles_IO.cpp", v11, v10);
  }

  return result;
}

void sub_186111A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a2 != 1)
  {
    _Unwind_Resume(exception_object);
  }

  v15 = __cxa_begin_catch(exception_object);
  v16 = *(v14 + 88);
  if (!v16)
  {
    __cxa_rethrow();
  }

  v17 = (v14 + 16);
  if (*(v14 + 39) < 0)
  {
    v17 = *v17;
  }

  GenericErrorCallback::NotifyClient(v16, 2, v15, v17);

  __cxa_end_catch();
}

uint64_t XMPFiles_IO::DeriveTemp(XMPFiles_IO *this)
{
  if (*(this + 10) == -1)
  {
    __assert_rtn("DeriveTemp", "XMPFiles_IO.cpp", 288, "this->fileRef != Host_IO::noFileRef");
  }

  v2 = *(this + 9);
  if (!v2)
  {
    if (*(this + 8) == 1)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 9;
      exception[1] = "XMPFiles_IO::DeriveTemp, can't derive from read-only";
      *(exception + 16) = 0;
    }

    __p[0] = 0;
    __p[1] = 0;
    v14 = 0;
    v3 = (this + 16);
    if (*(this + 39) < 0)
    {
      v3 = *v3;
    }

    Host_IO::CreateTemp(v3, &v11);
    *__p = v11;
    v14 = v12;
    if (v12 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = v11;
    }

    v5 = XMPFiles_IO::New_XMPFiles_IO(v4, 0, 0);
    v2 = v5;
    if (!v5)
    {
      if (v14 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      Host_IO::Delete(v8, v6);
      v9 = __cxa_allocate_exception(0x18uLL);
      *v9 = 9;
      v9[1] = "XMPFiles_IO::DeriveTemp, can't open temp file";
      *(v9 + 16) = 0;
    }

    *(v5 + 64) = 1;
    *(this + 9) = v5;
    *(v5 + 80) = *(this + 10);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v2;
}

void sub_186111BFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, uint64_t a11, uint64_t a12, void **__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2 == 1)
  {
    v19 = __cxa_begin_catch(a1);
    v20 = *(v18 + 88);
    if (v20)
    {
      if (a18 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      GenericErrorCallback::NotifyClient(v20, 2, v19, p_p);
      __cxa_end_catch();
      JUMPOUT(0x186111B34);
    }

    __cxa_rethrow();
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

off_t XMPFiles_IO::AbsorbTemp(XMPFiles_IO *this)
{
  if (*(this + 10) == -1)
  {
    __assert_rtn("AbsorbTemp", "XMPFiles_IO.cpp", 323, "this->fileRef != Host_IO::noFileRef");
  }

  v2 = *(this + 9);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 9;
    exception[1] = "XMPFiles_IO::AbsorbTemp, no temp to absorb";
    *(exception + 16) = 0;
  }

  if ((v2[64] & 1) == 0)
  {
    __assert_rtn("AbsorbTemp", "XMPFiles_IO.cpp", 329, "temp->isTemp");
  }

  XMPFiles_IO::Close(this);
  XMPFiles_IO::Close(v2);
  v4 = (this + 16);
  v5 = (this + 16);
  if (*(this + 39) < 0)
  {
    v5 = *v4;
  }

  v6 = (v2 + 16);
  if (v2[39] < 0)
  {
    v6 = v6->__pn_.__r_.__value_.__r.__words[0];
  }

  Host_IO::SwapData(v5, v6, v3);
  (*(*this + 56))(this);
  if (*(this + 39) < 0)
  {
    v4 = *v4;
  }

  v7 = Host_IO::Open(v4, 0);
  *(this + 10) = v7;
  result = Host_IO::Length(v7);
  *(this + 6) = 0;
  *(this + 7) = result;
  return result;
}

void sub_186111E14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a2 != 1)
  {
    _Unwind_Resume(exception_object);
  }

  v15 = __cxa_begin_catch(exception_object);
  v16 = *(v14 + 88);
  if (!v16)
  {
    __cxa_rethrow();
  }

  v17 = (v14 + 16);
  if (*(v14 + 39) < 0)
  {
    v17 = *v17;
  }

  GenericErrorCallback::NotifyClient(v16, 2, v15, v17);

  __cxa_end_catch();
}

uint64_t XMPFiles_IO::Close(XMPFiles_IO *this)
{
  result = *(this + 10);
  if (result != -1)
  {
    result = Host_IO::Close(result);
    *(this + 10) = -1;
  }

  return result;
}

uint64_t XMPFiles_IO::DeleteTemp(uint64_t this, const char *a2)
{
  v2 = *(this + 72);
  if (v2)
  {
    v3 = this;
    v4 = *(v2 + 40);
    if (v4 != -1)
    {
      Host_IO::Close(v4);
      *(v2 + 40) = -1;
    }

    if (*(v2 + 39) < 0)
    {
      if (!*(v2 + 24))
      {
LABEL_10:
        this = (*(*v2 + 72))(v2);
        *(v3 + 72) = 0;
        return this;
      }

      v5 = *(v2 + 16);
    }

    else
    {
      v5 = (v2 + 16);
      if (!*(v2 + 39))
      {
        goto LABEL_10;
      }
    }

    Host_IO::Delete(v5, a2);
    std::string::erase((v2 + 16), 0, 0xFFFFFFFFFFFFFFFFLL);
    goto LABEL_10;
  }

  return this;
}

void AdobeXMPCore_Int::DOMParserImpl::DOMParserImpl(AdobeXMPCore_Int::DOMParserImpl *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 368)) = a2[1];
  *(this + *(*this - 304)) = a2[2];
  *(this + *(*this - 216)) = a2[3];
  *(this + *(*this - 224)) = a2[4];
  *(this + *(*this - 232)) = a2[5];
  *(this + *(*this - 312)) = a2[6];
  *(this + *(*this - 320)) = a2[7];
  *(this + *(*this - 376)) = a2[8];
  v3 = a2[9];
  *(this + *(*this - 384)) = v3;
  AdobeXMPCore_Int::ISharedMutex::CreateSharedMutex(v3);
}

void AdobeXMPCore_Int::DOMParserImpl::Clone(AdobeXMPCore_Int::DOMParserImpl *this)
{
  v2 = (*(*this + 312))(this);
  if (v2)
  {
    memset(v14, 0, 24);
    AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v14, this + 8, 0);
    v3 = *this;
    v4 = (*this - 376);
    v5 = *v2;
    v2[*(v5 - 376) + 48] = *(this + *v4 + 48);
    v2[*(v5 - 376) + 49] = *(this + *v4 + 49);
    if (*(this + *v4 + 32))
    {
      operator new();
    }

    if (*(this + *(v3 - 376) + 40))
    {
      operator new();
    }

    v6 = this + *(v3 - 376);
    v7 = *(v6 + 1);
    v8 = v6 + 16;
    if (v7 != v6 + 16)
    {
      do
      {
        v9 = *(*v2 - 376);
        v14[4] = v7 + 32;
        v10 = std::__tree<std::__value_type<unsigned long long,std::pair<AdobeXMPCommon::IConfigurable::eDataType,AdobeXMPCommon::IConfigurable::CombinedDataValue>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::pair<AdobeXMPCommon::IConfigurable::eDataType,AdobeXMPCommon::IConfigurable::CombinedDataValue>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::pair<AdobeXMPCommon::IConfigurable::eDataType,AdobeXMPCommon::IConfigurable::CombinedDataValue>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v2[v9 + 8], v7 + 4);
        *(v10 + 10) = *(v7 + 10);
        v10[6] = *(v7 + 6);
        v11 = *(v7 + 1);
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = *(v7 + 2);
            v13 = *v12 == v7;
            v7 = v12;
          }

          while (!v13);
        }

        v7 = v12;
      }

      while (v12 != v8);
    }

    AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v14);
  }

  AdobeXMPCore_Int::MakeUncheckedSharedPointer<AdobeXMPCore_Int::DOMParserImpl>(v2, 1, v14);
}

void sub_18611269C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x186602850](v2, 0x1020C4062D53EE8);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::MakeUncheckedSharedPointer<AdobeXMPCore_Int::DOMParserImpl>(char *a1@<X0>, int a2@<W3>, void *a3@<X8>)
{
  if (a1 || !a2)
  {
    (**&a1[*(*a1 - 384)])(&a1[*(*a1 - 384)]);

    std::shared_ptr<AdobeXMPCore_Int::DOMParserImpl>::shared_ptr[abi:fe200100]<AdobeXMPCore_Int::DOMParserImpl,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,0>(a3, a1);
  }

  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_18611286C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::DOMParserImpl::Parse(AdobeXMPCore_Int::DOMParserImpl *this@<X0>, void *a2@<X8>)
{
  v7 = 0;
  v8 = 0;
  (*(*(this + *(*this - 368)) + 264))(&v7);
  if (v7)
  {
    v4 = (*(*v7 + 40))(v7);
    if ((v4 - 1) < 2)
    {
      *a2 = 0;
      a2[1] = 0;
      AdobeXMPCore::IMetadata_v1::CreateMetadata(v4);
    }

    if (v4 == 4)
    {
      v5 = (*(*(v7 + *(*v7 - 64)) + 16))(v7 + *(*v7 - 64), 0x634D657461646174, 1);
      v6 = v5;
      if (v5)
      {
        (**&v5[*(*v5 - 56)])(&v5[*(*v5 - 56)]);
        std::shared_ptr<AdobeXMPCore::IMetadata_v1>::shared_ptr[abi:fe200100]<AdobeXMPCore::IMetadata_v1,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,0>(a2, v6);
      }

      *a2 = 0;
      a2[1] = 0;
      AdobeXMPCore::IMetadata_v1::CreateMetadata(0);
    }

    AdobeXMPCore_Int::IError_I::CreateError();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v8);
  }
}

void sub_186112C64()
{
  if (*(v0 + 8))
  {
    JUMPOUT(0x186112C78);
  }

  JUMPOUT(0x186112C84);
}

void sub_186112C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::DOMParserImpl::ParseWithSpecificAction(void *a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v75 = 0;
  v76 = 0;
  (*(*(a1 + *(*a1 - 368)) + 264))(&v75);
  if (!v75)
  {
    goto LABEL_145;
  }

  if (a4 > 2)
  {
    switch(a4)
    {
      case 3:
        if (!*a5)
        {
          v85 = 0uLL;
          AdobeXMPCore_Int::IError_I::CreateError();
        }

        if (((*(**a5 + 160))(*a5) & 1) == 0)
        {
          v85 = 0uLL;
          AdobeXMPCore_Int::IError_I::CreateError();
        }

        v59 = (*(*(v75 + *(*v75 - 64)) + 16))(v75 + *(*v75 - 64), 0x634D657461646174, 1);
        v60 = (*(**a5 + 280))(*a5);
        v61 = (*(*v60 + 528))(v60);
        v39 = (*(*&v61[*(*v61 - 64)] + 16))(&v61[*(*v61 - 64)], 0x634172724E6F6465, 1);
        if (v59)
        {
          v85 = 0uLL;
          (*(*(v59 + *(*v59 - 688)) + 552))(&v85);
          while (v85)
          {
            v84 = 0uLL;
            (*(*v85 + 48))(&v84);
            (*(*v85 + 56))(&v83);
            v62 = v83;
            v83 = 0uLL;
            v63 = *(&v85 + 1);
            v85 = v62;
            if (v63)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v63);
              if (*(&v83 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](*(&v83 + 1));
              }
            }

            v64 = (*(*v59 + 776))(v59);
            v65 = *(*v64 - 864);
            (*(*v84 + 88))(&v81);
            (*(*v84 + 72))(&v79);
            (*(*(v64 + v65) + 744))(&v83);
            v66 = v83;
            v83 = 0uLL;
            v67 = *(&v84 + 1);
            v84 = v66;
            if (v67)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v67);
              if (*(&v83 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](*(&v83 + 1));
              }
            }

            if (v80)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v80);
            }

            if (v82)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v82);
            }

            v68 = (*(**a5 + 176))();
            (*(*v39 + 664))(v39, &v84, v68);
            if (*(&v84 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](*(&v84 + 1));
            }
          }

          goto LABEL_143;
        }

        v71 = (*(**a5 + 176))();
        break;
      case 4:
        if (!*a5)
        {
          v85 = 0uLL;
          AdobeXMPCore_Int::IError_I::CreateError();
        }

        if (((*(**a5 + 160))(*a5) & 1) == 0)
        {
          v85 = 0uLL;
          AdobeXMPCore_Int::IError_I::CreateError();
        }

        v36 = (*(*(v75 + *(*v75 - 64)) + 16))(v75 + *(*v75 - 64), 0x634D657461646174, 1);
        v37 = (*(**a5 + 280))(*a5);
        v38 = (*(*v37 + 528))(v37);
        v39 = (*(*&v38[*(*v38 - 64)] + 16))(&v38[*(*v38 - 64)], 0x634172724E6F6465, 1);
        if (v36)
        {
          v85 = 0uLL;
          (*(*(v36 + *(*v36 - 688)) + 552))(&v85);
          v40 = (*(**a5 + 176))();
          while (v85)
          {
            v84 = 0uLL;
            (*(*v85 + 48))(&v84);
            (*(*v85 + 56))(&v83);
            v41 = v83;
            v83 = 0uLL;
            v42 = *(&v85 + 1);
            v85 = v41;
            if (v42)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v42);
              if (*(&v83 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](*(&v83 + 1));
              }
            }

            v43 = (*(*v36 + 776))(v36);
            v44 = *(*v43 - 864);
            (*(*v84 + 88))(&v81);
            (*(*v84 + 72))(&v79);
            (*(*(v43 + v44) + 744))(&v83);
            v45 = v83;
            v83 = 0uLL;
            v46 = *(&v84 + 1);
            v84 = v45;
            if (v46)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v46);
              if (*(&v83 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](*(&v83 + 1));
              }
            }

            if (v80)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v80);
            }

            if (v82)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v82);
            }

            (*(*v39 + 664))(v39, &v84, v40 + 1);
            v40 = (*(*v84 + 176))(v84);
            if (*(&v84 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](*(&v84 + 1));
            }
          }

          goto LABEL_143;
        }

        v71 = (*(**a5 + 176))() + 1;
        break;
      case 5:
        if (*a5)
        {
          if ((*(**a5 + 160))(*a5))
          {
            v21 = (*(**a5 + 40))();
            if (v21 != (*(*v75 + 40))(v75))
            {
              v85 = 0uLL;
              AdobeXMPCore_Int::IError_I::CreateError();
            }
          }
        }

        v23 = v75;
        v22 = v76;
        if (v76)
        {
          atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v24 = a5[1];
        *a5 = v23;
        a5[1] = v22;
        if (v24)
        {
LABEL_144:
          std::__shared_weak_count::__release_shared[abi:fe200100](v24);
          goto LABEL_145;
        }

        goto LABEL_145;
      default:
LABEL_130:
        v85 = 0uLL;
        AdobeXMPCore_Int::IError_I::CreateError();
    }

    (*(*v39 + 664))(v39, &v75, v71);
    goto LABEL_145;
  }

  if (!a4)
  {
    if (!*a5)
    {
      v85 = 0uLL;
      AdobeXMPCore_Int::IError_I::CreateError();
    }

    v47 = (*(**a5 + 40))(*a5);
    if (v47 != 2 && v47 != 4)
    {
      v85 = 0uLL;
      AdobeXMPCore_Int::IError_I::CreateError();
    }

    v49 = *a5 + *(**a5 - 64);
    v50 = (*(*v49 + 16))(v49, 0x63436D704E6F6465, 1);
    v51 = (*(*(v75 + *(*v75 - 64)) + 16))(v75 + *(*v75 - 64), 0x634D657461646174, 1);
    v52 = v51;
    if (!v51)
    {
      (*(*v50 + 520))(v50, &v75);
      goto LABEL_145;
    }

    v85 = 0uLL;
    (*(*(v51 + *(*v51 - 688)) + 552))(&v85);
    while (v85)
    {
      v84 = 0uLL;
      (*(*v85 + 48))(&v84);
      (*(*v85 + 56))(&v83);
      v53 = v83;
      v83 = 0uLL;
      v54 = *(&v85 + 1);
      v85 = v53;
      if (v54)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v54);
        if (*(&v83 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v83 + 1));
        }
      }

      v55 = (*(*v52 + 776))(v52);
      v56 = *(*v55 - 864);
      (*(*v84 + 88))(&v81);
      (*(*v84 + 72))(&v79);
      (*(*(v55 + v56) + 744))(&v83);
      v57 = v83;
      v83 = 0uLL;
      v58 = *(&v84 + 1);
      v84 = v57;
      if (v58)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v58);
        if (*(&v83 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v83 + 1));
        }
      }

      if (v80)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v80);
      }

      if (v82)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v82);
      }

      (*(*v50 + 520))(v50, &v84);
      if (*(&v84 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v84 + 1));
      }
    }

    goto LABEL_143;
  }

  if (a4 == 1)
  {
    if (!*a5)
    {
      v85 = 0uLL;
      AdobeXMPCore_Int::IError_I::CreateError();
    }

    v25 = (*(**a5 + 40))(*a5);
    if (v25 == 2)
    {
      goto LABEL_119;
    }

    if (v25 != 4)
    {
      v85 = 0uLL;
      AdobeXMPCore_Int::IError_I::CreateError();
    }

    v26 = *a5 + *(**a5 - 64);
    v27 = (*(*v26 + 16))(v26, 0x635374724E6F6465, 1);
    v28 = (*(*(v75 + *(*v75 - 64)) + 16))(v75 + *(*v75 - 64), 0x634D657461646174, 1);
    v29 = v28;
    if (v28)
    {
      v85 = 0uLL;
      (*(*(v28 + *(*v28 - 688)) + 552))(&v85);
      while (v85)
      {
        v84 = 0uLL;
        (*(*v85 + 48))(&v84);
        (*(*v85 + 56))(&v83);
        v30 = v83;
        v83 = 0uLL;
        v31 = *(&v85 + 1);
        v85 = v30;
        if (v31)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v31);
          if (*(&v83 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](*(&v83 + 1));
          }
        }

        v32 = (*(*v29 + 776))(v29);
        v33 = *(*v32 - 864);
        (*(*v84 + 88))(&v81);
        (*(*v84 + 72))(&v79);
        (*(*(v32 + v33) + 744))(&v83);
        v34 = v83;
        v83 = 0uLL;
        v35 = *(&v84 + 1);
        v84 = v34;
        if (v35)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v35);
          if (*(&v83 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](*(&v83 + 1));
          }
        }

        if (v80)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v80);
        }

        if (v82)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v82);
        }

        (*(*v27 + 664))(&v77, v27, &v84);
        if (v78)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v78);
        }

        if (*(&v84 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v84 + 1));
        }
      }
    }

    else
    {
      (*(*v27 + 664))(&v85, v27, &v75);
    }

LABEL_143:
    v24 = *(&v85 + 1);
    if (!*(&v85 + 1))
    {
      goto LABEL_145;
    }

    goto LABEL_144;
  }

  if (a4 != 2)
  {
    goto LABEL_130;
  }

  if (!*a5)
  {
    v85 = 0uLL;
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  v7 = (*(**a5 + 40))(*a5);
  if (v7 == 2)
  {
LABEL_119:
    v69 = *a5 + *(**a5 - 64);
    v70 = (*(*v69 + 16))(v69, 0x634172724E6F6465, 1);
    AdobeXMPCore_Int::ReplaceChildren(v70, &v75);
    goto LABEL_145;
  }

  if (v7 != 4)
  {
    v85 = 0uLL;
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  v8 = *a5 + *(**a5 - 64);
  v9 = (*(*v8 + 16))(v8, 0x635374724E6F6465, 1);
  v10 = (*(*(v75 + *(*v75 - 64)) + 16))(v75 + *(*v75 - 64), 0x634D657461646174, 1);
  v11 = v10;
  if (v10)
  {
    v85 = 0uLL;
    (*(*(v10 + *(*v10 - 688)) + 552))(&v85);
    while (v85)
    {
      v84 = 0uLL;
      (*(*v85 + 48))(&v84);
      (*(*v85 + 56))(&v83);
      v12 = v83;
      v83 = 0uLL;
      v13 = *(&v85 + 1);
      v85 = v12;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v13);
        if (*(&v83 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v83 + 1));
        }
      }

      v14 = (*(*v11 + 776))(v11);
      v15 = *(*v14 - 864);
      (*(*v84 + 88))(&v81);
      (*(*v84 + 72))(&v79);
      (*(*(v14 + v15) + 744))(&v83);
      v16 = v83;
      v83 = 0uLL;
      v17 = *(&v84 + 1);
      v84 = v16;
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v17);
        if (*(&v83 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v83 + 1));
        }
      }

      if (v80)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v80);
      }

      if (v82)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v82);
      }

      v18 = (*(*v9 + 688))(v9);
      (*(*v84 + 88))(&v81);
      (*(*v84 + 72))(&v79);
      (*(*v18 + 736))(&v83, v18, &v81, &v79);
      v19 = v83;
      if (*(&v83 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v83 + 1));
      }

      if (v80)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v80);
      }

      if (v82)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v82);
      }

      v20 = *v9;
      if (v19)
      {
        (*(v20 + 664))(&v77, v9, &v84);
        if (v78)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v78);
        }
      }

      else
      {
        (*(*(v9 + *(v20 - 688)) + 520))(v9 + *(v20 - 688), &v84);
      }

      if (*(&v84 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v84 + 1));
      }
    }

    goto LABEL_143;
  }

  v72 = (*(*v9 + 688))(v9);
  (*(*v75 + 88))(&v84);
  (*(*v75 + 72))(&v83);
  (*(*v72 + 736))(&v85, v72, &v84, &v83);
  v73 = v85;
  if (*(&v85 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v85 + 1));
  }

  if (*(&v83 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v83 + 1));
  }

  if (*(&v84 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v84 + 1));
  }

  v74 = *v9;
  if (v73)
  {
    (*(v74 + 664))(&v85, v9, &v75);
    goto LABEL_143;
  }

  (*(*(v9 + *(v74 - 688)) + 520))(v9 + *(v74 - 688), &v75);
LABEL_145:
  if (v76)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v76);
  }
}

void sub_186115758(_Unwind_Exception *a1)
{
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100]();
  }

  if (*(v1 - 56))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100]();
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100]();
  }

  _Unwind_Resume(a1);
}

uint64_t AdobeXMPCore_Int::DOMParserImpl::GetMutex@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 16);
  *a2 = *(this + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void *virtual thunk toAdobeXMPCore_Int::DOMParserImpl::GetMutex@<X0>(void *this@<X0>, void *a2@<X8>)
{
  v2 = this + *(*this - 280);
  v4 = *(v2 + 1);
  v3 = *(v2 + 2);
  *a2 = v4;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void AdobeXMPCore_Int::ReplaceChildren(char *a1, void *a2)
{
  (*(*&a1[*(*a1 - 544)] + 224))(&a1[*(*a1 - 544)], 1, 1);
  v4 = *a2 + *(**a2 - 64);
  v5 = (*(*v4 + 16))(v4, 0x634D657461646174, 1);
  v6 = v5;
  if (v5)
  {
    v20 = 0uLL;
    (*(*(v5 + *(*v5 - 688)) + 552))(&v20);
    while (v20)
    {
      v19 = 0uLL;
      (*(*v20 + 48))(&v19);
      (*(*v20 + 56))(&v18);
      v7 = v18;
      v18 = 0uLL;
      v8 = *(&v20 + 1);
      v20 = v7;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v8);
        if (*(&v18 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v18 + 1));
        }
      }

      v9 = (*(*v6 + 776))(v6);
      v10 = *(*v9 - 864);
      (*(*v19 + 88))(&v16);
      (*(*v19 + 72))(&v14);
      (*(*(v9 + v10) + 744))(&v18);
      v11 = v18;
      v18 = 0uLL;
      v12 = *(&v19 + 1);
      v19 = v11;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v12);
        if (*(&v18 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v18 + 1));
        }
      }

      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v15);
      }

      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v17);
      }

      (*(*&a1[*(*a1 - 688)] + 520))(&a1[*(*a1 - 688)], &v19);
      if (*(&v19 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v19 + 1));
      }
    }

    if (*(&v20 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v20 + 1));
    }
  }

  else
  {
    v13 = *(*&a1[*(*a1 - 688)] + 520);

    v13();
  }
}

void sub_186115D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  v18 = *(v16 - 40);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v18);
  }

  _Unwind_Resume(a1);
}

void *std::set<unsigned long long>::set[abi:fe200100]<std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>>(void *a1, void *a2, void *a3)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<unsigned long long>::insert[abi:fe200100]<std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>>(a1, a2, a3);
  return a1;
}

uint64_t std::set<unsigned long long>::insert[abi:fe200100]<std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<unsigned long long>::__emplace_hint_unique_key_args<unsigned long long,unsigned long long const&>(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<unsigned long long>::__emplace_hint_unique_key_args<unsigned long long,unsigned long long const&>(void *a1, void *a2, unint64_t *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *std::__tree<unsigned long long>::__find_equal<unsigned long long>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<unsigned long long>::__find_equal<unsigned long long>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void *std::map<unsigned long long,AdobeXMPCommon::IConfigurable::eDataType>::map[abi:fe200100]<std::__map_iterator<std::__tree_iterator<std::__value_type<unsigned long long,AdobeXMPCommon::IConfigurable::eDataType>,std::__tree_node<std::__value_type<unsigned long long,AdobeXMPCommon::IConfigurable::eDataType>,void *> *,long>>>(void *a1, void *a2, void *a3)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<unsigned long long,AdobeXMPCommon::IConfigurable::eDataType>::insert[abi:fe200100]<std::__map_iterator<std::__tree_iterator<std::__value_type<unsigned long long,AdobeXMPCommon::IConfigurable::eDataType>,std::__tree_node<std::__value_type<unsigned long long,AdobeXMPCommon::IConfigurable::eDataType>,void *> *,long>>>(a1, a2, a3);
  return a1;
}

uint64_t std::map<unsigned long long,AdobeXMPCommon::IConfigurable::eDataType>::insert[abi:fe200100]<std::__map_iterator<std::__tree_iterator<std::__value_type<unsigned long long,AdobeXMPCommon::IConfigurable::eDataType>,std::__tree_node<std::__value_type<unsigned long long,AdobeXMPCommon::IConfigurable::eDataType>,void *> *,long>>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<unsigned long long,AdobeXMPCommon::IConfigurable::eDataType>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,AdobeXMPCommon::IConfigurable::eDataType>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,AdobeXMPCommon::IConfigurable::eDataType>>>::__emplace_hint_unique_key_args<unsigned long long,std::pair<unsigned long long const,AdobeXMPCommon::IConfigurable::eDataType> const&>(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<unsigned long long,AdobeXMPCommon::IConfigurable::eDataType>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,AdobeXMPCommon::IConfigurable::eDataType>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,AdobeXMPCommon::IConfigurable::eDataType>>>::__emplace_hint_unique_key_args<unsigned long long,std::pair<unsigned long long const,AdobeXMPCommon::IConfigurable::eDataType> const&>(void *a1, void *a2, unint64_t *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *std::__tree<unsigned long long>::__find_equal<unsigned long long>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<std::__value_type<unsigned long long,std::pair<AdobeXMPCommon::IConfigurable::eDataType,AdobeXMPCommon::IConfigurable::CombinedDataValue>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::pair<AdobeXMPCommon::IConfigurable::eDataType,AdobeXMPCommon::IConfigurable::CombinedDataValue>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::pair<AdobeXMPCommon::IConfigurable::eDataType,AdobeXMPCommon::IConfigurable::CombinedDataValue>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_186116350(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = (v3 + *(*v3 - 384) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AdobeXMPCore_Int::DOMParserImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::DOMParserImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::DOMParserImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::DOMParserImpl>>::__on_zero_shared(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = (a1[3] + *(*a1[3] - 384) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::DOMParserImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::DOMParserImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void sub_186116544(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = (v3 + *(*v3 - 56) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AdobeXMPCore::IMetadata_v1 *,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,std::allocator<AdobeXMPCore::IMetadata_v1>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore::IMetadata_v1 *,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,std::allocator<AdobeXMPCore::IMetadata_v1>>::__on_zero_shared(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = (a1[3] + *(*a1[3] - 56) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore::IMetadata_v1 *,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,std::allocator<AdobeXMPCore::IMetadata_v1>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void sub_186116730(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = (v3 + *(*v3 - 120) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AdobeXMPCore_Int::ClientDOMParserWrapperImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::ClientDOMParserWrapperImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::ClientDOMParserWrapperImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::ClientDOMParserWrapperImpl>>::__on_zero_shared(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = (a1[3] + *(*a1[3] - 120) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::ClientDOMParserWrapperImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::ClientDOMParserWrapperImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void AdobeXMPCore_Int::DOMParserImpl::Parse(void *a1)
{
  v2 = *(__cxa_get_exception_ptr(a1) + 1);
  if (v2)
  {
    OUTLINED_FUNCTION_0_38();
    std::__shared_weak_count::__release_shared[abi:fe200100](v2);
  }

  else
  {
    __cxa_begin_catch(a1);
  }
}

void AdobeXMPCore_Int::ReplaceChildren(void *a1)
{
  v2 = *(__cxa_get_exception_ptr(a1) + 1);
  if (v2)
  {
    OUTLINED_FUNCTION_0_38();
    std::__shared_weak_count::__release_shared[abi:fe200100](v2);
  }

  else
  {
    __cxa_begin_catch(a1);
  }

  __cxa_end_catch();
}

void *AdobeXMPCore_Int::IPathSegment_I::GetInterfacePointerInternal(void *this, uint64_t a2, int a3, int a4)
{
  if (a2 == 0x6350617468536567)
  {
    if (a3 != -1)
    {
      if (a3 != 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        AdobeXMPCore_Int::IError_I::CreateInterfaceVersionNotAvailableError(0x6350617468536567, a3, exception);
      }

      return (this + *(*this - 160));
    }
  }

  else
  {
    if (a4)
    {
      v5 = __cxa_allocate_exception(0x10uLL);
      AdobeXMPCore_Int::IError_I::CreateInterfaceNotAvailableError(0x6350617468536567, a2, v5);
    }

    return 0;
  }

  return this;
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::IPathSegment_I,void *,void *,unsigned long long,unsigned int>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  *a1 = 0;
  v9 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v9 + a4);
  }

  return a4(v9, a8, a9);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IPathSegment_v1,AdobeXMPCommon::IUTF8String_v1 const*,AdobeXMPCommon::IUTF8String_v1 const>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *), uint64_t a4)
{
  *a1 = 0;
  v8 = 0;
  v9 = 0;
  v4 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v4 + a3);
  }

  a3(&v8, v4);
  if (v8)
  {
    v5 = (*(*&v8[*(*v8 - 56)] + 16))(&v8[*(*v8 - 56)]);
    (*(*v5 + 40))(v5);
    v6 = (*(*&v8[*(*v8 - 64)] + 16))(&v8[*(*v8 - 64)], 0x6E55544638537472, 1);
  }

  else
  {
    v6 = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  return v6;
}

void sub_186116E20(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x186116E04);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCore::IPathSegment_v1,unsigned int,AdobeXMPCore::IPathSegment_v1::ePathSegmentType>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *), uint64_t a5)
{
  *a1 = 0;
  v5 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v5 + a4);
  }

  return a4(v5);
}

void AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::IPathSegment_I,void *,void *,unsigned long long,unsigned int>(void *a1, void *a2)
{
  exception_ptr = __cxa_get_exception_ptr(a1);
  v6 = *exception_ptr;
  v5 = exception_ptr[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  __cxa_begin_catch(a1);
  *a2 = (*(*v6 + 200))(v6);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_0();
  (*(v7 + 16))();
  OUTLINED_FUNCTION_0_0();
  (*(v8 + 40))();
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v5);
  }

  __cxa_end_catch();
}

uint64_t std::vector<IterNode>::push_back[abi:fe200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<IterNode>::__emplace_back_slow_path<IterNode>(a1, a2);
  }

  else
  {
    std::allocator<IterNode>::construct[abi:fe200100]<IterNode,IterNode>(a1, a1[1], a2);
    result = v3 + 96;
  }

  a1[1] = result;
  return result;
}

void IterNode::~IterNode(void **this)
{
  v2 = this + 8;
  std::vector<IterNode>::__destroy_vector::operator()[abi:fe200100](&v2);
  v2 = this + 5;
  std::vector<IterNode>::__destroy_vector::operator()[abi:fe200100](&v2);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void std::vector<IterNode>::__destroy_vector::operator()[abi:fe200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<IterNode>::__base_destruct_at_end[abi:fe200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<IterNode>::__base_destruct_at_end[abi:fe200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 32;
    do
    {
      v7 = v5;
      std::vector<IterNode>::__destroy_vector::operator()[abi:fe200100](&v7);
      v7 = v5 - 24;
      std::vector<IterNode>::__destroy_vector::operator()[abi:fe200100](&v7);
      if (*(v5 - 33) < 0)
      {
        operator delete(*(v5 - 56));
      }

      v6 = v5 - 64;
      v5 -= 96;
    }

    while (v6 != a2);
  }

  *(a1 + 8) = a2;
}

void std::allocator_traits<std::allocator<IterNode>>::destroy[abi:fe200100]<IterNode,0>(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 64);
  std::vector<IterNode>::__destroy_vector::operator()[abi:fe200100](&v3);
  v3 = (a2 + 40);
  std::vector<IterNode>::__destroy_vector::operator()[abi:fe200100](&v3);
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }
}

void IterInfo::~IterInfo(void **this)
{
  v3 = this + 18;
  std::vector<IterNode>::__destroy_vector::operator()[abi:fe200100](&v3);
  v3 = this + 15;
  std::vector<IterNode>::__destroy_vector::operator()[abi:fe200100](&v3);
  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  v2 = this[7];
  if (v2)
  {
    this[8] = v2;
    operator delete(v2);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

void std::vector<std::pair<std::__wrap_iter<IterNode *>,std::__wrap_iter<IterNode *>>>::push_back[abi:fe200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<std::shared_ptr<AdobeXMPCore::INode_v1>>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

__n128 std::allocator<IterNode>::construct[abi:fe200100]<IterNode,IterNode>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  v3 = *(a3 + 8);
  *(a2 + 24) = *(a3 + 24);
  *(a2 + 8) = v3;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  *(a2 + 32) = *(a3 + 32);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = *(a3 + 40);
  *(a2 + 56) = *(a3 + 56);
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  result = *(a3 + 64);
  *(a2 + 64) = result;
  *(a2 + 80) = *(a3 + 80);
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a2 + 88) = *(a3 + 88);
  return result;
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<IterNode>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:fe200100]<std::allocator<IterNode>,IterNode*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      std::allocator<IterNode>::construct[abi:fe200100]<IterNode,IterNode>(a1, a4, v7);
      v7 += 96;
      a4 = v12 + 96;
      v12 += 96;
    }

    while (v7 != a3);
    LOBYTE(v10) = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<IterNode>>::destroy[abi:fe200100]<IterNode,0>(a1, v5);
      v5 += 96;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<IterNode>,IterNode*>>::~__exception_guard_exceptions[abi:fe200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<IterNode>,IterNode*>>::~__exception_guard_exceptions[abi:fe200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<IterNode>,IterNode*>::operator()[abi:fe200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<IterNode>,IterNode*>::operator()[abi:fe200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 96;
      std::allocator_traits<std::allocator<IterNode>>::destroy[abi:fe200100]<IterNode,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

void std::__split_buffer<IterNode>::__destruct_at_end[abi:fe200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 96;
    std::allocator_traits<std::allocator<IterNode>>::destroy[abi:fe200100]<IterNode,0>(v5, v4 - 96);
  }
}

uint64_t ImportPhotoData(uint64_t a1, PhotoDataUtils *a2, unsigned int (***a3)(void, uint64_t, void **), uint64_t a4, uint64_t a5, char a6)
{
  v22 = 0;
  __s1 = 0;
  v24 = 0;
  if ((*(*a1 + 24))(a1, 2, 36864, &v22))
  {
    v12 = WORD1(v22) == 7;
  }

  else
  {
    v12 = 0;
  }

  if (v12 && HIDWORD(v22) == 4)
  {
    v14 = strncmp(__s1, "0230", 4uLL) >> 31;
  }

  else
  {
    LOBYTE(v14) = 1;
  }

  v21[0] = 0;
  v21[1] = 0;
  TXMPMeta<std::string>::TXMPMeta(v21);
  if (TXMPMeta<std::string>::DoesPropertyExist(a5, "http://ns.adobe.com/exif/1.0/", "DateTimeOriginal"))
  {
    TXMPUtils<std::string>::DuplicateSubtree(a5, v21, "http://ns.adobe.com/exif/1.0/", "DateTimeOriginal", 0, 0, 0);
  }

  if (TXMPMeta<std::string>::DoesPropertyExist(a5, "http://ns.adobe.com/exif/1.0/", "GPSLatitude"))
  {
    TXMPUtils<std::string>::DuplicateSubtree(a5, v21, "http://ns.adobe.com/exif/1.0/", "GPSLatitude", 0, 0, 0);
  }

  if (TXMPMeta<std::string>::DoesPropertyExist(a5, "http://ns.adobe.com/exif/1.0/", "GPSLongitude"))
  {
    TXMPUtils<std::string>::DuplicateSubtree(a5, v21, "http://ns.adobe.com/exif/1.0/", "GPSLongitude", 0, 0, 0);
  }

  if (TXMPMeta<std::string>::DoesPropertyExist(a5, "http://ns.adobe.com/exif/1.0/", "GPSTimeStamp"))
  {
    TXMPUtils<std::string>::DuplicateSubtree(a5, v21, "http://ns.adobe.com/exif/1.0/", "GPSTimeStamp", 0, 0, 0);
  }

  if (TXMPMeta<std::string>::DoesPropertyExist(a5, "http://ns.adobe.com/exif/1.0/", "GPSAltitude"))
  {
    TXMPUtils<std::string>::DuplicateSubtree(a5, v21, "http://ns.adobe.com/exif/1.0/", "GPSAltitude", 0, 0, 0);
  }

  if (TXMPMeta<std::string>::DoesPropertyExist(a5, "http://ns.adobe.com/exif/1.0/", "GPSAltitudeRef"))
  {
    TXMPUtils<std::string>::DuplicateSubtree(a5, v21, "http://ns.adobe.com/exif/1.0/", "GPSAltitudeRef", 0, 0, 0);
  }

  if (TXMPMeta<std::string>::DoesPropertyExist(a5, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings"))
  {
    TXMPUtils<std::string>::DuplicateSubtree(a5, v21, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings", 0, 0, 0);
  }

  TXMPUtils<std::string>::RemoveProperties(a5, "http://ns.adobe.com/tiff/1.0/", 0, 1);
  TXMPUtils<std::string>::RemoveProperties(a5, "http://ns.adobe.com/exif/1.0/", 0, 1);
  if ((v14 & 1) == 0)
  {
    TXMPUtils<std::string>::RemoveProperties(a5, "http://cipa.jp/exif/1.0/", 0, 1);
  }

  if (TXMPMeta<std::string>::DoesPropertyExist(v21, "http://ns.adobe.com/exif/1.0/", "DateTimeOriginal"))
  {
    TXMPUtils<std::string>::DuplicateSubtree(v21, a5, "http://ns.adobe.com/exif/1.0/", "DateTimeOriginal", 0, 0, 0);
  }

  if (TXMPMeta<std::string>::DoesPropertyExist(v21, "http://ns.adobe.com/exif/1.0/", "GPSLatitude"))
  {
    TXMPUtils<std::string>::DuplicateSubtree(v21, a5, "http://ns.adobe.com/exif/1.0/", "GPSLatitude", 0, 0, 0);
  }

  if (TXMPMeta<std::string>::DoesPropertyExist(v21, "http://ns.adobe.com/exif/1.0/", "GPSLongitude"))
  {
    TXMPUtils<std::string>::DuplicateSubtree(v21, a5, "http://ns.adobe.com/exif/1.0/", "GPSLongitude", 0, 0, 0);
  }

  if (TXMPMeta<std::string>::DoesPropertyExist(v21, "http://ns.adobe.com/exif/1.0/", "GPSTimeStamp"))
  {
    TXMPUtils<std::string>::DuplicateSubtree(v21, a5, "http://ns.adobe.com/exif/1.0/", "GPSTimeStamp", 0, 0, 0);
  }

  if (TXMPMeta<std::string>::DoesPropertyExist(v21, "http://ns.adobe.com/exif/1.0/", "GPSAltitude"))
  {
    TXMPUtils<std::string>::DuplicateSubtree(v21, a5, "http://ns.adobe.com/exif/1.0/", "GPSAltitude", 0, 0, 0);
  }

  if (TXMPMeta<std::string>::DoesPropertyExist(v21, "http://ns.adobe.com/exif/1.0/", "GPSAltitudeRef"))
  {
    TXMPUtils<std::string>::DuplicateSubtree(v21, a5, "http://ns.adobe.com/exif/1.0/", "GPSAltitudeRef", 0, 0, 0);
  }

  if (TXMPMeta<std::string>::DoesPropertyExist(v21, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings"))
  {
    TXMPUtils<std::string>::DuplicateSubtree(v21, a5, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings", 0, 0, 0);
  }

  PhotoDataUtils::ImportPSIR(a3, a5, a4);
  v15 = a6 & 2;
  if ((a6 & 2) != 0)
  {
    PhotoDataUtils::Import2WayIPTC(a2, a5, a4);
  }

  v16 = a6 & 4;
  if (v16)
  {
    PhotoDataUtils::Import2WayExif (a1, a5);
  }

  if ((v16 >> 2) | (v15 >> 1))
  {
    PhotoDataUtils::Import3WayItems(a1, a2, a5, a4);
  }

  if (!TXMPMeta<std::string>::DoesPropertyExist(a5, "http://ns.adobe.com/photoshop/1.0/", "DateCreated"))
  {
    __p[0] = 0;
    __p[1] = 0;
    v20 = 0;
    if (TXMPMeta<std::string>::GetProperty(a5, "http://ns.adobe.com/exif/1.0/", "DateTimeOriginal", __p, 0))
    {
      if (v20 >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      TXMPMeta<std::string>::SetProperty(a5, "http://ns.adobe.com/photoshop/1.0/", "DateCreated", v17, 0);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p[0]);
    }
  }

  return TXMPMeta<std::string>::~TXMPMeta(v21);
}

void sub_186117F2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  TXMPMeta<std::string>::~TXMPMeta(&a15);
  _Unwind_Resume(a1);
}

uint64_t ExportPhotoData(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 != 1246774599 && a1 != 1347634208 && a1 != 1414088262)
  {
    ExportPhotoData();
  }

  v9 = a3;
  if (a1 == 1414088262 && a3 && (*(*a3 + 24))(a3, 0, 50706, 0))
  {
    (*(*v9 + 40))(v9, 0, 33723);
    (*(*v9 + 40))(v9, 0, 34377);
    v12 = 0;
    a4 = 0;
    v13 = 0;
    a5 = 0;
LABEL_19:
    PhotoDataUtils::ExportExif (a2, v9);
    goto LABEL_20;
  }

  if (a4)
  {
    PhotoDataUtils::ExportIPTC(a2, a4);
    v12 = (*(*a4 + 16))(a4);
    if (v12)
    {
      (*(*a4 + 24))(a4);
    }

    v13 = *(a4 + 32);
    a4 = *(a4 + 40);
    if (a5)
    {
      PhotoDataUtils::SetIPTCDigest(v13, a4, a5);
    }

    if (v9)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v13 = 0;
    v12 = 0;
    if (v9)
    {
      goto LABEL_19;
    }
  }

LABEL_20:
  if (a5)
  {
    PhotoDataUtils::ExportPSIR(a2, a5);
  }

  switch(a1)
  {
    case 1246774599:
      v14 = v12 ^ 1;
      if (!a5)
      {
        v14 = 1;
      }

      if ((v14 & 1) == 0)
      {
        (*(*a5 + 8))(a5, 1028, v13, a4);
      }

      break;
    case 1414088262:
      if (!v9)
      {
        ExportPhotoData();
      }

      if (v12)
      {
        (*(*v9 + 32))(v9, 0, 33723, 7, a4, v13);
      }

      if (a5 && (*(*a5 + 24))(a5))
      {
        v19 = 0;
        v15 = (*(*a5 + 56))(a5, &v19);
        (*(*v9 + 32))(v9, 0, 34377, 7, v15, v19);
      }

      goto LABEL_44;
    case 1347634208:
      if (!a5)
      {
        ExportPhotoData();
      }

      if (v12)
      {
        (*(*a5 + 8))(a5, 1028, v13, a4);
      }

      if (v9)
      {
        if ((*(*v9 + 184))(v9))
        {
          v19 = 0;
          v16 = (*(*v9 + 224))(v9, &v19, 0);
          (*(*a5 + 8))(a5, 1058, v19, v16);
        }

        goto LABEL_44;
      }

LABEL_48:
      LOBYTE(v9) = 1;
      goto LABEL_49;
  }

  if (!v9)
  {
    goto LABEL_48;
  }

LABEL_44:
  v19 = 0;
  __s1 = 0;
  v21 = 0;
  v17 = (*(*v9 + 24))(v9, 2, 36864, &v19);
  LOBYTE(v9) = 1;
  if (v17 && WORD1(v19) == 7 && HIDWORD(v19) == 4)
  {
    LODWORD(v9) = strncmp(__s1, "0230", 4uLL) >> 31;
  }

LABEL_49:
  v19 = 0;
  __s1 = 0;
  TXMPMeta<std::string>::TXMPMeta(&v19);
  if (TXMPMeta<std::string>::DoesPropertyExist(a2, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings"))
  {
    TXMPUtils<std::string>::DuplicateSubtree(a2, &v19, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings", 0, 0, 0);
  }

  TXMPUtils<std::string>::RemoveProperties(a2, "http://ns.adobe.com/tiff/1.0/", 0, 1);
  TXMPUtils<std::string>::RemoveProperties(a2, "http://ns.adobe.com/exif/1.0/", 0, 1);
  if ((v9 & 1) == 0)
  {
    TXMPUtils<std::string>::RemoveProperties(a2, "http://cipa.jp/exif/1.0/", 0, 1);
  }

  if (TXMPMeta<std::string>::DoesPropertyExist(&v19, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings"))
  {
    TXMPUtils<std::string>::DuplicateSubtree(&v19, a2, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings", 0, 0, 0);
  }

  return TXMPMeta<std::string>::~TXMPMeta(&v19);
}

void sub_1861184E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TXMPMeta<std::string>::~TXMPMeta(va);
  _Unwind_Resume(a1);
}

void ExportPhotoData()
{
  __assert_rtn("ExportPhotoData", "ReconcileLegacy.cpp", 172, "psir != 0");
}

{
  __assert_rtn("ExportPhotoData", "ReconcileLegacy.cpp", 160, "exif != 0");
}

{
  __assert_rtn("ExportPhotoData", "ReconcileLegacy.cpp", 113, "(destFormat == kXMP_JPEGFile) || (destFormat == kXMP_TIFFFile) || (destFormat == kXMP_PhotoshopFile)");
}

BOOL AdobeXMPCore_Int::ErrorNotifierWrapperImpl_v1::Notify(uint64_t a1, void *a2)
{
  v5 = 0;
  v2 = (*(**(a1 + 8) + 24))(*(a1 + 8), *a2, &v5);
  if (v5)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 == 0;
  }

  return !v3;
}

uint64_t AdobeXMPCore_Int::CreateErrorNotifierWrapperImpl(uint64_t result)
{
  if (result)
  {
    operator new();
  }

  return result;
}

void AdobeXMPCore_Int::SharedMutexImpl::~SharedMutexImpl(AdobeXMPCore_Int::SharedMutexImpl *this)
{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((this + 8), off_1EF4DFD00);
}

{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((this + 8), off_1EF4DFD00);

  JUMPOUT(0x186602850);
}

void sub_18611879C(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = (v3 + *(*v3 - 120) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AdobeXMPCore_Int::SharedMutexImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::SharedMutexImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::SharedMutexImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::SharedMutexImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void *AdobeXMPCore_Int::INameSpacePrefixMap_I::GetInterfacePointerInternal(void *this, uint64_t a2, int a3, int a4)
{
  if (a2 == 0x634E5350724D6170)
  {
    if (a3 != -1)
    {
      if (a3 != 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        AdobeXMPCore_Int::IError_I::CreateInterfaceVersionNotAvailableError(0x634E5350724D6170, a3, exception);
      }

      return (this + *(*this - 48));
    }
  }

  else
  {
    if (a4)
    {
      v5 = __cxa_allocate_exception(0x10uLL);
      AdobeXMPCore_Int::IError_I::CreateInterfaceNotAvailableError(0x634E5350724D6170, a2, v5);
    }

    return 0;
  }

  return this;
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::INameSpacePrefixMap_I,void *,void *,unsigned long long,unsigned int>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  *a1 = 0;
  v9 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v9 + a4);
  }

  return a4(v9, a8, a9);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore::INameSpacePrefixMap_v1,unsigned int,BOOL,char const*,unsigned long long,char const*,unsigned long long>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a4;
  *a1 = 0;
  v12 = (a2 + (a5 >> 1));
  if (a5)
  {
    v11 = *(*v12 + a4);
  }

  return v11(v12, a8, a9, a10, a11);
}

uint64_t AdobeXMPCore_Int::INameSpacePrefixMap_I::remove(AdobeXMPCore_Int::INameSpacePrefixMap_I *this, int a2, const char *a3, uint64_t a4, const AdobeXMPCommon::IError_v1 **a5)
{
  v5 = this + *(*this - 48);
  v6 = AdobeXMPCore::INameSpacePrefixMap_v1::RemovePrefix;
  if (*(v5 + 3) == a2)
  {
    v6 = AdobeXMPCore::INameSpacePrefixMap_v1::RemoveNameSpace;
  }

  return AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore::INameSpacePrefixMap_v1,unsigned int,BOOL,char const*,unsigned long long>(a5, v5, 0, v6, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/INameSpacePrefixMap_I.cpp", 60, a3, a4);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore::INameSpacePrefixMap_v1,unsigned int,BOOL,char const*,unsigned long long>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *a1 = 0;
  v9 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v9 + a4);
  }

  return a4(v9, a8, a9);
}

uint64_t AdobeXMPCore_Int::INameSpacePrefixMap_I::isPresent(AdobeXMPCore_Int::INameSpacePrefixMap_I *this, int a2, const char *a3, uint64_t a4, const AdobeXMPCommon::IError_v1 **a5)
{
  v5 = this + *(*this - 48);
  v6 = AdobeXMPCore::INameSpacePrefixMap_v1::IsPrefixPresent;
  if (*(v5 + 3) == a2)
  {
    v6 = AdobeXMPCore::INameSpacePrefixMap_v1::IsNameSpacePresent;
  }

  return AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCore::INameSpacePrefixMap_v1,unsigned int,BOOL,char const*,unsigned long long>(a5, v5, 0, v6, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/INameSpacePrefixMap_I.cpp", 68, a3, a4);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCore::INameSpacePrefixMap_v1,unsigned int,BOOL,char const*,unsigned long long>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *a1 = 0;
  v9 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v9 + a4);
  }

  return a4(v9, a8, a9);
}

uint64_t AdobeXMPCore_Int::INameSpacePrefixMap_I::get(AdobeXMPCore_Int::INameSpacePrefixMap_I *this, int a2, const char *a3, uint64_t a4, const AdobeXMPCommon::IError_v1 **a5)
{
  v6 = this + *(*this - 48);
  if (*(v6 + 3) == a2)
  {
    v7 = AdobeXMPCore::INameSpacePrefixMap_v1::GetPrefix;
  }

  else
  {
    v7 = AdobeXMPCore::INameSpacePrefixMap_v1::GetNameSpace;
  }

  return AdobeXMPCore_Int::CallConstUnSafeFunctionReturningSharedPointer<AdobeXMPCore::INameSpacePrefixMap_v1,AdobeXMPCommon::IUTF8String_v1 const*,AdobeXMPCommon::IUTF8String_v1 const,char const*,unsigned long long>(a5, v6, v7, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/INameSpacePrefixMap_I.cpp", 76, a3, a4);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunctionReturningSharedPointer<AdobeXMPCore::INameSpacePrefixMap_v1,AdobeXMPCommon::IUTF8String_v1 const*,AdobeXMPCommon::IUTF8String_v1 const,char const*,unsigned long long>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  *a1 = 0;
  v13 = 0;
  v14 = 0;
  v9 = (a2 + (a4 >> 1));
  if (a4)
  {
    v8 = *(*v9 + a3);
  }

  v8(&v13, v9, a7, a8);
  if (v13)
  {
    v10 = (*(*&v13[*(*v13 - 56)] + 16))(&v13[*(*v13 - 56)]);
    (*(*v10 + 40))(v10);
    v11 = (*(*&v13[*(*v13 - 64)] + 16))(&v13[*(*v13 - 64)], 0x6E55544638537472, 1);
  }

  else
  {
    v11 = 0;
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
  }

  return v11;
}

void sub_186119438(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x18611941CLL);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunctionReturningSharedPointer<AdobeXMPCore::INameSpacePrefixMap_v1,AdobeXMPCore::INameSpacePrefixMap_v1*,AdobeXMPCore::INameSpacePrefixMap_v1>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *), uint64_t a4)
{
  *a1 = 0;
  v8 = 0;
  v9 = 0;
  v4 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v4 + a3);
  }

  a3(&v8, v4);
  if (v8)
  {
    v5 = (*(*&v8[*(*v8 - 56)] + 16))(&v8[*(*v8 - 56)]);
    (*(*v5 + 40))(v5);
    v6 = (*(*&v8[*(*v8 - 64)] + 16))(&v8[*(*v8 - 64)], 0x634E5350724D6170, 1);
  }

  else
  {
    v6 = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  return v6;
}

void sub_1861197A8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x18611978CLL);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

double PerfUtils::GetElapsedSeconds(PerfUtils *this, uint64_t a2)
{
  if (dword_1EA8DBFAC)
  {
    v4 = *&PerfUtils::GetElapsedSeconds(unsigned long long,unsigned long long)::sConversionFactor;
  }

  else
  {
    mach_timebase_info(&PerfUtils::GetElapsedSeconds(unsigned long long,unsigned long long)::sTimebaseInfo);
    LODWORD(v6) = PerfUtils::GetElapsedSeconds(unsigned long long,unsigned long long)::sTimebaseInfo;
    LODWORD(v5) = dword_1EA8DBFAC;
    v4 = v5 / v6 / 1000000000.0;
    PerfUtils::GetElapsedSeconds(unsigned long long,unsigned long long)::sConversionFactor = *&v4;
  }

  return v4 * (a2 - this);
}

double MD5Init(MD5_CTX *a1)
{
  *a1->count = 0;
  result = -3.59869635e230;
  *a1->state = xmmword_186228710;
  return result;
}

void *MD5Update(MD5_CTX *a1, unsigned __int8 *__src, unsigned int a3)
{
  v6 = (a1->count[0] >> 3) & 0x3F;
  *a1->count += __PAIR64__(a3 >> 29, 8 * a3);
  v7 = 64 - v6;
  if (64 - v6 <= a3)
  {
    memcpy(&a1->buffer[v6], __src, (64 - v6));
    MD5Transform(a1->state, a1->buffer);
    v9 = v6 ^ 0x7F;
    if ((v6 ^ 0x7F) >= a3)
    {
      v8 = 0;
    }

    else
    {
      do
      {
        MD5Transform(a1->state, &__src[v9 - 63]);
        v9 += 64;
      }

      while (v9 < a3);
      v8 = 0;
      v7 = v9 - 63;
    }
  }

  else
  {
    v7 = 0;
    v8 = v6;
  }

  return memcpy(&a1->buffer[v8], &__src[v7], a3 - v7);
}

int8x16_t MD5Transform(unsigned int *a1, const char *a2)
{
  v95 = vld4q_s8(a2);
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = vmovl_u8(*v95.val[0].i8);
  v6 = vmovl_u16(*v5.i8);
  v7 = vmovl_high_u8(v95.val[0]);
  v8 = vmovl_high_u8(v95.val[1]);
  v9 = vmovl_u8(*v95.val[1].i8);
  v10 = vorrq_s8(vshll_high_n_u16(v8, 8uLL), vmovl_high_u16(v7));
  v11 = vorrq_s8(vshll_n_u16(*v8.i8, 8uLL), vmovl_u16(*v7.i8));
  v12 = vorrq_s8(vshll_high_n_u16(v9, 8uLL), vmovl_high_u16(v5));
  v13 = vorrq_s8(vshll_n_u16(*v9.i8, 8uLL), v6);
  _Q3 = vmovl_u8(*v95.val[2].i8);
  _Q4 = vmovl_high_u8(v95.val[2]);
  __asm { SHLL2           V5.4S, V4.8H, #0x10 }

  v21 = vshll_n_s16(*_Q4.i8, 0x10uLL);
  __asm { SHLL2           V4.4S, V3.8H, #0x10 }

  v23 = vorrq_s8(v13, vshll_n_s16(*_Q3.i8, 0x10uLL));
  v24 = vorrq_s8(v11, v21);
  v25 = vmovl_high_u8(v95.val[3]);
  v26 = vmovl_u8(*v95.val[3].i8);
  v27 = vorrq_s8(v23, vshlq_n_s32(vmovl_u16(*v26.i8), 0x18uLL));
  HIDWORD(v28) = *a1 + (v3 & ~v2 | v4 & v2) + v27.i32[0] - 680876936;
  LODWORD(v28) = HIDWORD(v28);
  v29 = (v28 >> 25) + v2;
  HIDWORD(v28) = v3 + v27.i32[1] - 389564586 + (v29 & v2 | v4 & ~v29);
  LODWORD(v28) = HIDWORD(v28);
  v30 = (v28 >> 20) + v29;
  HIDWORD(v28) = v4 + v27.i32[2] + 606105819 + (v30 & v29 | v2 & ~v30);
  LODWORD(v28) = HIDWORD(v28);
  v31 = vorrq_s8(vorrq_s8(v12, _Q4), vshlq_n_s32(vmovl_high_u16(v26), 0x18uLL));
  v32 = (v28 >> 15) + v30;
  HIDWORD(v28) = v2 + v27.i32[3] - 1044525330 + (v32 & v30 | v29 & ~v32);
  LODWORD(v28) = HIDWORD(v28);
  v33 = (v28 >> 10) + v32;
  HIDWORD(v28) = v31.i32[0] + v29 - 176418897 + (v33 & v32 | v30 & ~v33);
  LODWORD(v28) = HIDWORD(v28);
  v34 = (v28 >> 25) + v33;
  HIDWORD(v28) = v31.i32[1] + v30 + 1200080426 + (v34 & v33 | v32 & ~v34);
  LODWORD(v28) = HIDWORD(v28);
  v35 = (v28 >> 20) + v34;
  HIDWORD(v28) = v31.i32[2] + v32 - 1473231341 + (v35 & v34 | v33 & ~v35);
  LODWORD(v28) = HIDWORD(v28);
  v36 = vorrq_s8(v24, vshlq_n_s32(vmovl_u16(*v25.i8), 0x18uLL));
  v37 = (v28 >> 15) + v35;
  HIDWORD(v28) = v31.i32[3] + v33 - 45705983 + (v37 & v35 | v34 & ~v37);
  LODWORD(v28) = HIDWORD(v28);
  v38 = (v28 >> 10) + v37;
  HIDWORD(v28) = v36.i32[0] + v34 + 1770035416 + (v38 & v37 | v35 & ~v38);
  LODWORD(v28) = HIDWORD(v28);
  v39 = (v28 >> 25) + v38;
  HIDWORD(v28) = v36.i32[1] + v35 - 1958414417 + (v39 & v38 | v37 & ~v39);
  LODWORD(v28) = HIDWORD(v28);
  v40 = (v28 >> 20) + v39;
  HIDWORD(v28) = v36.i32[2] + v37 - 42063 + (v40 & v39 | v38 & ~v40);
  LODWORD(v28) = HIDWORD(v28);
  result = vorrq_s8(vorrq_s8(v10, _Q5), vshlq_n_s32(vmovl_high_u16(v25), 0x18uLL));
  v42 = (v28 >> 15) + v40;
  HIDWORD(v28) = v36.i32[3] + v38 - 1990404162 + (v42 & v40 | v39 & ~v42);
  LODWORD(v28) = HIDWORD(v28);
  v43 = (v28 >> 10) + v42;
  HIDWORD(v28) = result.i32[0] + v39 + 1804603682 + (v43 & v42 | v40 & ~v43);
  LODWORD(v28) = HIDWORD(v28);
  v44 = (v28 >> 25) + v43;
  HIDWORD(v28) = result.i32[1] + v40 - 40341101 + (v44 & v43 | v42 & ~v44);
  LODWORD(v28) = HIDWORD(v28);
  v45 = (v28 >> 20) + v44;
  HIDWORD(v28) = result.i32[2] + v42 - 1502002290 + (v45 & v44 | v43 & ~v45);
  LODWORD(v28) = HIDWORD(v28);
  v46 = (v28 >> 15) + v45;
  HIDWORD(v28) = result.i32[3] + v43 + 1236535329 + (v46 & v45 | v44 & ~v46);
  LODWORD(v28) = HIDWORD(v28);
  v47 = (v28 >> 10) + v46;
  HIDWORD(v28) = v27.i32[1] + v44 - 165796510 + (v47 & v45 | v46 & ~v45);
  LODWORD(v28) = HIDWORD(v28);
  v48 = (v28 >> 27) + v47;
  HIDWORD(v28) = v31.i32[2] + v45 - 1069501632 + (v48 & v46 | v47 & ~v46);
  LODWORD(v28) = HIDWORD(v28);
  v49 = (v28 >> 23) + v48;
  HIDWORD(v28) = v36.i32[3] + v46 + 643717713 + (v49 & v47 | v48 & ~v47);
  LODWORD(v28) = HIDWORD(v28);
  v50 = (v28 >> 18) + v49;
  HIDWORD(v28) = v27.i32[0] + v47 - 373897302 + (v50 & v48 | v49 & ~v48);
  LODWORD(v28) = HIDWORD(v28);
  v51 = (v28 >> 12) + v50;
  HIDWORD(v28) = v31.i32[1] + v48 - 701558691 + (v51 & v49 | v50 & ~v49);
  LODWORD(v28) = HIDWORD(v28);
  v52 = (v28 >> 27) + v51;
  HIDWORD(v28) = v36.i32[2] + v49 + 38016083 + (v52 & v50 | v51 & ~v50);
  LODWORD(v28) = HIDWORD(v28);
  v53 = (v28 >> 23) + v52;
  HIDWORD(v28) = result.i32[3] + v50 - 660478335 + (v53 & v51 | v52 & ~v51);
  LODWORD(v28) = HIDWORD(v28);
  v54 = (v28 >> 18) + v53;
  HIDWORD(v28) = v31.i32[0] + v51 - 405537848 + (v54 & v52 | v53 & ~v52);
  LODWORD(v28) = HIDWORD(v28);
  v55 = (v28 >> 12) + v54;
  HIDWORD(v28) = v36.i32[1] + v52 + 568446438 + (v55 & v53 | v54 & ~v53);
  LODWORD(v28) = HIDWORD(v28);
  v56 = (v28 >> 27) + v55;
  HIDWORD(v28) = result.i32[2] + v53 - 1019803690 + (v56 & v54 | v55 & ~v54);
  LODWORD(v28) = HIDWORD(v28);
  v57 = (v28 >> 23) + v56;
  HIDWORD(v28) = v27.i32[3] + v54 - 187363961 + (v57 & v55 | v56 & ~v55);
  LODWORD(v28) = HIDWORD(v28);
  v58 = (v28 >> 18) + v57;
  HIDWORD(v28) = v36.i32[0] + v55 + 1163531501 + (v58 & v56 | v57 & ~v56);
  LODWORD(v28) = HIDWORD(v28);
  v59 = (v28 >> 12) + v58;
  HIDWORD(v28) = result.i32[1] + v56 - 1444681467 + (v59 & v57 | v58 & ~v57);
  LODWORD(v28) = HIDWORD(v28);
  v60 = (v28 >> 27) + v59;
  HIDWORD(v28) = v27.i32[2] + v57 - 51403784 + (v60 & v58 | v59 & ~v58);
  LODWORD(v28) = HIDWORD(v28);
  v61 = (v28 >> 23) + v60;
  HIDWORD(v28) = v31.i32[3] + v58 + 1735328473 + (v61 & v59 | v60 & ~v59);
  LODWORD(v28) = HIDWORD(v28);
  v62 = (v28 >> 18) + v61;
  HIDWORD(v28) = result.i32[0] + v59 - 1926607734 + (v62 & v60 | v61 & ~v60);
  LODWORD(v28) = HIDWORD(v28);
  v63 = (v28 >> 12) + v62;
  HIDWORD(v28) = v31.i32[1] + v60 - 378558 + (v63 ^ v62 ^ v61);
  LODWORD(v28) = HIDWORD(v28);
  v64 = (v28 >> 28) + v63;
  HIDWORD(v28) = v36.i32[0] + v61 - 2022574463 + (v63 ^ v62 ^ v64);
  LODWORD(v28) = HIDWORD(v28);
  v65 = (v28 >> 21) + v64;
  HIDWORD(v28) = v36.i32[3] + v62 + 1839030562 + (v64 ^ v63 ^ v65);
  LODWORD(v28) = HIDWORD(v28);
  v66 = (v28 >> 16) + v65;
  HIDWORD(v28) = result.i32[2] + v63 - 35309556 + (v65 ^ v64 ^ v66);
  LODWORD(v28) = HIDWORD(v28);
  v67 = (v28 >> 9) + v66;
  HIDWORD(v28) = v27.i32[1] + v64 - 1530992060 + (v66 ^ v65 ^ v67);
  LODWORD(v28) = HIDWORD(v28);
  v68 = (v28 >> 28) + v67;
  HIDWORD(v28) = v31.i32[0] + v65 + 1272893353 + (v67 ^ v66 ^ v68);
  LODWORD(v28) = HIDWORD(v28);
  v69 = (v28 >> 21) + v68;
  HIDWORD(v28) = v31.i32[3] + v66 - 155497632 + (v68 ^ v67 ^ v69);
  LODWORD(v28) = HIDWORD(v28);
  v70 = (v28 >> 16) + v69;
  HIDWORD(v28) = v36.i32[2] + v67 - 1094730640 + (v69 ^ v68 ^ v70);
  LODWORD(v28) = HIDWORD(v28);
  v71 = (v28 >> 9) + v70;
  HIDWORD(v28) = result.i32[1] + v68 + 681279174 + (v70 ^ v69 ^ v71);
  LODWORD(v28) = HIDWORD(v28);
  v72 = (v28 >> 28) + v71;
  HIDWORD(v28) = v27.i32[0] + v69 - 358537222 + (v71 ^ v70 ^ v72);
  LODWORD(v28) = HIDWORD(v28);
  v73 = (v28 >> 21) + v72;
  HIDWORD(v28) = v27.i32[3] + v70 - 722521979 + (v72 ^ v71 ^ v73);
  LODWORD(v28) = HIDWORD(v28);
  v74 = (v28 >> 16) + v73;
  HIDWORD(v28) = v31.i32[2] + v71 + 76029189 + (v73 ^ v72 ^ v74);
  LODWORD(v28) = HIDWORD(v28);
  v75 = (v28 >> 9) + v74;
  HIDWORD(v28) = v36.i32[1] + v72 - 640364487 + (v74 ^ v73 ^ v75);
  LODWORD(v28) = HIDWORD(v28);
  v76 = (v28 >> 28) + v75;
  HIDWORD(v28) = result.i32[0] + v73 - 421815835 + (v75 ^ v74 ^ v76);
  LODWORD(v28) = HIDWORD(v28);
  v77 = (v28 >> 21) + v76;
  HIDWORD(v28) = result.i32[3] + v74 + 530742520 + (v76 ^ v75 ^ v77);
  LODWORD(v28) = HIDWORD(v28);
  v78 = (v28 >> 16) + v77;
  HIDWORD(v28) = v27.i32[2] + v75 - 995338651 + (v77 ^ v76 ^ v78);
  LODWORD(v28) = HIDWORD(v28);
  v79 = (v28 >> 9) + v78;
  HIDWORD(v28) = v27.i32[0] + v76 - 198630844 + ((v79 | ~v77) ^ v78);
  LODWORD(v28) = HIDWORD(v28);
  v80 = (v28 >> 26) + v79;
  HIDWORD(v28) = v31.i32[3] + v77 + 1126891415 + ((v80 | ~v78) ^ v79);
  LODWORD(v28) = HIDWORD(v28);
  v81 = (v28 >> 22) + v80;
  HIDWORD(v28) = result.i32[2] + v78 - 1416354905 + ((v81 | ~v79) ^ v80);
  LODWORD(v28) = HIDWORD(v28);
  v82 = (v28 >> 17) + v81;
  HIDWORD(v28) = v31.i32[1] + v79 - 57434055 + ((v82 | ~v80) ^ v81);
  LODWORD(v28) = HIDWORD(v28);
  v83 = (v28 >> 11) + v82;
  HIDWORD(v28) = result.i32[0] + v80 + 1700485571 + ((v83 | ~v81) ^ v82);
  LODWORD(v28) = HIDWORD(v28);
  v84 = (v28 >> 26) + v83;
  HIDWORD(v28) = v27.i32[3] + v81 - 1894986606 + ((v84 | ~v82) ^ v83);
  LODWORD(v28) = HIDWORD(v28);
  v85 = (v28 >> 22) + v84;
  HIDWORD(v28) = v36.i32[2] + v82 - 1051523 + ((v85 | ~v83) ^ v84);
  LODWORD(v28) = HIDWORD(v28);
  v86 = (v28 >> 17) + v85;
  HIDWORD(v28) = v27.i32[1] + v83 - 2054922799 + ((v86 | ~v84) ^ v85);
  LODWORD(v28) = HIDWORD(v28);
  v87 = (v28 >> 11) + v86;
  HIDWORD(v28) = v36.i32[0] + v84 + 1873313359 + ((v87 | ~v85) ^ v86);
  LODWORD(v28) = HIDWORD(v28);
  v88 = (v28 >> 26) + v87;
  HIDWORD(v28) = result.i32[3] + v85 - 30611744 + ((v88 | ~v86) ^ v87);
  LODWORD(v28) = HIDWORD(v28);
  v89 = (v28 >> 22) + v88;
  HIDWORD(v28) = v31.i32[2] + v86 - 1560198380 + ((v89 | ~v87) ^ v88);
  LODWORD(v28) = HIDWORD(v28);
  v90 = (v28 >> 17) + v89;
  HIDWORD(v28) = result.i32[1] + v87 + 1309151649 + ((v90 | ~v88) ^ v89);
  LODWORD(v28) = HIDWORD(v28);
  v91 = (v28 >> 11) + v90;
  HIDWORD(v28) = v31.i32[0] + v88 - 145523070 + ((v91 | ~v89) ^ v90);
  LODWORD(v28) = HIDWORD(v28);
  v92 = (v28 >> 26) + v91;
  HIDWORD(v28) = v36.i32[3] + v89 - 1120210379 + ((v92 | ~v90) ^ v91);
  LODWORD(v28) = HIDWORD(v28);
  v93 = (v28 >> 22) + v92;
  HIDWORD(v28) = v27.i32[2] + v90 + 718787259 + ((v93 | ~v91) ^ v92);
  LODWORD(v28) = HIDWORD(v28);
  v94 = (v28 >> 17) + v93;
  HIDWORD(v28) = v36.i32[1] + v91 - 343485551 + ((v94 | ~v92) ^ v93);
  LODWORD(v28) = HIDWORD(v28);
  *a1 += v92;
  a1[1] = v94 + v2 + (v28 >> 11);
  a1[2] = v94 + v4;
  a1[3] = v93 + v3;
  return result;
}

double MD5Final(unsigned __int8 *a1, MD5_CTX *a2)
{
  v4 = 0;
  v11[1] = *MEMORY[0x1E69E9840];
  v11[0] = 0;
  do
  {
    *(v11 + v4 * 4) = a2->count[v4];
    ++v4;
  }

  while (v4 != 2);
  v5 = (a2->count[0] >> 3) & 0x3F;
  if (v5 >= 0x38)
  {
    v6 = 120;
  }

  else
  {
    v6 = 56;
  }

  MD5Update(a2, PADDING, v6 - v5);
  MD5Update(a2, v11, 8u);
  v7 = 0;
  v8 = a1 + 1;
  do
  {
    v9 = &a2->state[v7];
    *(v8 - 1) = *v9;
    v8[1] = *(v9 + 1);
    v8[2] = *(v9 + 3);
    ++v7;
    v8 += 4;
  }

  while (v7 != 4);
  *&a2->buffer[56] = 0;
  result = 0.0;
  *&a2->buffer[24] = 0u;
  *&a2->buffer[40] = 0u;
  *a2->count = 0u;
  *&a2->buffer[8] = 0u;
  *a2->state = 0u;
  return result;
}

void AdobeXMPCore_Int::SimpleNodeImpl::SimpleNodeImpl(AdobeXMPCore_Int::SimpleNodeImpl *this, AdobeXMPCore_Int::IUTF8String_I *a2, const char *a3, const char *a4, unint64_t a5, const char *a6)
{
  *(this + 21) = &unk_1EF4E23D8;
  *this = &unk_1EF4E1C10;
  *(this + 4) = off_1EF4E1E80;
  *(this + unk_1EF4E1BC8) = &unk_1EF4E1EE0;
  *(this + 18) = &unk_1EF4E2EA0;
  *(this + 5) = &unk_1EF4E26A0;
  *this = &unk_1EF4E2B10;
  *(this + 4) = off_1EF4E2D30;
  *(this + 21) = &unk_1EF4E2E18;
  *(this + unk_1EF4E2478 + 40) = &unk_1EF4E2D90;
  *(this + *(*(this + 5) - 560) + 40) = &unk_1EF4E2E18;
  *this = &unk_1EF4E1108;
  *(this + unk_1EF4E10C8) = off_1EF4E1388;
  *(this + *(*this - 72)) = &unk_1EF4E1958;
  *(this + *(*this - 640)) = &unk_1EF4E1638;
  *(this + *(*this - 648)) = &unk_1EF4E18D0;
  *(this + *(*this - 656)) = &unk_1EF4E1958;
  *(this + 18) = off_1EF4E3AC8;
  *(this + 19) = 0;
  *this = off_1EF4E3B28;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 20) = 0;
  *(this + 21) = off_1EF4E3BB0;
  AdobeXMPCore_Int::NodeImpl::NodeImpl((this + 40), off_1EF4E0DE8, a2, a3);
}

void sub_18611AB3C(_Unwind_Exception *a1)
{
  AdobeXMPCore_Int::NodeImpl::~NodeImpl(v3, off_1EF4E0DE8);
  AdobeXMPCore_Int::ThreadSafeImpl::~ThreadSafeImpl(v1, off_1EF4E0E50);
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl(v2, off_1EF4E0E38);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::NodeImpl::~NodeImpl(AdobeXMPCore_Int::NodeImpl *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 664)) = a2[1];
  *(this + *(*this - 544)) = a2[2];
  *(this + *(*this - 56)) = a2[3];
  *(this + *(*this - 64)) = a2[4];
  *(this + *(*this - 72)) = a2[5];
  *(this + *(*this - 552)) = a2[6];
  *(this + *(*this - 560)) = a2[7];
  *(this + *(*this - 672)) = a2[8];
  *(this + *(*this - 680)) = a2[9];
  v4 = *(this + 10);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }

  v5 = *(this + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v5);
  }

  v6 = *(this + 4);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v6);
  }

  v7 = *(this + 2);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v7);
  }
}

void AdobeXMPCore_Int::SimpleNodeImpl::GetValue(AdobeXMPCore_Int::SimpleNodeImpl *this@<X0>, void *a2@<X8>)
{
  memset(v5, 0, sizeof(v5));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v5, this + *(*this - 704) + 8, 0);
  v4 = *(this + 2);
  *a2 = *(this + 1);
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v5);
}

void AdobeXMPCore_Int::SimpleNodeImpl::SetValue(AdobeXMPCore_Int::SimpleNodeImpl *this, const char *a2)
{
  memset(v5, 0, sizeof(v5));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v5, this + *(*this - 704) + 8, 1);
  (*(**(this + 1) + 56))(&v3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }

  (*(*(this + *(*this - 688)) + 560))(this + *(*this - 688));
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v5);
}

void sub_18611B04C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

uint64_t AdobeXMPCore_Int::SimpleNodeImpl::IsURIType(AdobeXMPCore_Int::SimpleNodeImpl *this)
{
  memset(v4, 0, sizeof(v4));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v4, this + *(*this - 704) + 8, 0);
  v2 = *(this + 24);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v4);
  return v2;
}

uint64_t AdobeXMPCore_Int::SimpleNodeImpl::SetURIType(AdobeXMPCore_Int::SimpleNodeImpl *this, char a2)
{
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v5, this + *(*this - 704) + 8, 1);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v5);
  *(this + 24) = a2;
  return (*(*(this + *(*this - 688)) + 560))(this + *(*this - 688));
}

uint64_t AdobeXMPCore_Int::SimpleNodeImpl::HasContent(AdobeXMPCore_Int::SimpleNodeImpl *this)
{
  v1 = this;
  memset(v3, 0, sizeof(v3));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v3, this + *(*this - 704) + 8, 0);
  LODWORD(v1) = (*(**(v1 + 1) + 184))(*(v1 + 1));
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v3);
  return v1 ^ 1;
}

void sub_18611B220(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::SimpleNodeImpl::ClearContents(AdobeXMPCore_Int::SimpleNodeImpl *this)
{
  memset(v2, 0, sizeof(v2));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v2, this + *(*this - 704) + 8, 1);
  (*(**(this + 1) + 200))(*(this + 1));
  (*(*(this + *(*this - 688)) + 560))(this + *(*this - 688));
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v2);
}

void sub_18611B314(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

uint64_t AdobeXMPCore_Int::SimpleNodeImpl::CloneContents@<X0>(AdobeXMPCore_Int::SimpleNodeImpl *this@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (!a2 || (result = (*(**(this + 1) + 184))(*(this + 1)), !result) || !a3 && a4)
  {
    v10 = *this;
    v11 = *(this + *(*this - 688) + 16);
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      v10 = *this;
    }

    v12 = *(this + *(v10 - 688) + 32);
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = *(this + 2);
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    AdobeXMPCore_Int::ISimpleNode_I::CreateSimpleNode();
  }

  *a5 = 0;
  a5[1] = 0;
  return result;
}

void sub_18611B4EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::ThreadSafeImpl::~ThreadSafeImpl(AdobeXMPCore_Int::ThreadSafeImpl *this)
{
}

{

  JUMPOUT(0x186602850);
}

void AdobeXMPCore_Int::SimpleNodeImpl::~SimpleNodeImpl(AdobeXMPCore_Int::SimpleNodeImpl *this)
{
  AdobeXMPCore_Int::NodeImpl::~NodeImpl((v2 + 40), off_1EF4E0DE8);
  AdobeXMPCore_Int::ThreadSafeImpl::~ThreadSafeImpl((this + 168), off_1EF4E0E50);
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((this + 144), off_1EF4E0E38);
}

{
  AdobeXMPCore_Int::SimpleNodeImpl::~SimpleNodeImpl(this);

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::SimpleNodeImpl::~SimpleNodeImpl(AdobeXMPCore_Int::SimpleNodeImpl *this)
{
  AdobeXMPCore_Int::SimpleNodeImpl::~SimpleNodeImpl((this + *(*this - 24)));
}

{
  AdobeXMPCore_Int::SimpleNodeImpl::~SimpleNodeImpl((this + *(*this - 24)));

  JUMPOUT(0x186602850);
}

{
  AdobeXMPCore_Int::SimpleNodeImpl::~SimpleNodeImpl((this + *(*this - 56)));
}

{
  AdobeXMPCore_Int::SimpleNodeImpl::~SimpleNodeImpl((this + *(*this - 56)));

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::SimpleNodeImpl::~SimpleNodeImpl(void *a1)
{
  AdobeXMPCore_Int::SimpleNodeImpl::~SimpleNodeImpl((a1 + *(*a1 - 48)));
}

{
  AdobeXMPCore_Int::SimpleNodeImpl::~SimpleNodeImpl((a1 + *(*a1 - 48)));

  JUMPOUT(0x186602850);
}

void AdobeXMPCore_Int::SimpleNodeImpl::~SimpleNodeImpl(AdobeXMPCore_Int::SimpleNodeImpl *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 680)) = a2[1];
  *(this + *(*this - 632)) = a2[2];
  *(this + *(*this - 544)) = a2[3];
  *(this + *(*this - 56)) = a2[4];
  *(this + *(*this - 64)) = a2[5];
  *(this + *(*this - 72)) = a2[6];
  *(this + *(*this - 640)) = a2[7];
  *(this + *(*this - 648)) = a2[8];
  *(this + *(*this - 656)) = a2[9];
  *(this + *(*this - 688)) = a2[10];
  *(this + *(*this - 696)) = a2[11];
  *(this + *(*this - 704)) = a2[12];
  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }
}

void sub_18611C0E0(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = (v3 + *(*v3 - 688) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AdobeXMPCore_Int::SimpleNodeImpl *,std::__mem_fn<void (AdobeXMPCore_Int::NodeImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::SimpleNodeImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::SimpleNodeImpl *,std::__mem_fn<void (AdobeXMPCore_Int::NodeImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::SimpleNodeImpl>>::__on_zero_shared(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = (a1[3] + *(*a1[3] - 688) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::SimpleNodeImpl *,std::__mem_fn<void (AdobeXMPCore_Int::NodeImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::SimpleNodeImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void *AdobeXMPCore_Int::UTF8StringImpl::append@<X0>(AdobeXMPCore_Int::UTF8StringImpl *this@<X0>, const char *a2@<X1>, std::string::size_type a3@<X2>, void *a4@<X8>)
{
  if (a2 && a3)
  {
    v6 = (this + 24);
    if (a3 == -1)
    {
      std::string::append(v6, a2);
    }

    else
    {
      std::string::append(v6, a2, a3);
    }
  }

  return AdobeXMPCore_Int::UTF8StringImpl::returnSelfSharedPointer(this, a4);
}

void *AdobeXMPCore_Int::UTF8StringImpl::append@<X0>(std::string *this@<X0>, void *a2@<X1>, unint64_t a3@<X2>, std::string::size_type a4@<X3>, void *a5@<X8>)
{
  v13 = a3;
  if (a4 && *a2)
  {
    v9 = AdobeXMPCore_Int::ValidateSrcPosParameter(a2, &v13);
    v10 = (*(**a2 + 192))();
    if (v9 - v13 >= a4)
    {
      v11 = a4;
    }

    else
    {
      v11 = v9 - v13;
    }

    std::string::append(this + 1, (v10 + v13), v11);
  }

  return AdobeXMPCore_Int::UTF8StringImpl::returnSelfSharedPointer(this, a5);
}

unint64_t AdobeXMPCore_Int::ValidateSrcPosParameter(void *a1, unint64_t *a2)
{
  result = (*(**a1 + 208))(*a1);
  v6 = result;
  if (*a2 > result)
  {
    v4 = 0;
    v5 = 0;
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  return result;
}

void sub_18611C5B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void *AdobeXMPCore_Int::UTF8StringImpl::assign@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v13 = a3;
  if (a4 && *a2)
  {
    v9 = AdobeXMPCore_Int::ValidateSrcPosParameter(a2, &v13);
    v10 = (*(**a2 + 192))();
    if (v9 - v13 >= a4)
    {
      v11 = a4;
    }

    else
    {
      v11 = v9 - v13;
    }

    MEMORY[0x186602530](a1 + 24, v10 + v13, v11);
  }

  else if (*(a1 + 47) < 0)
  {
    **(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 24) = 0;
    *(a1 + 47) = 0;
  }

  return AdobeXMPCore_Int::UTF8StringImpl::returnSelfSharedPointer(a1, a5);
}

void *AdobeXMPCore_Int::UTF8StringImpl::insert@<X0>(AdobeXMPCore_Int::UTF8StringImpl *this@<X0>, const char *a2@<X2>, std::string::size_type a3@<X1>, std::string::size_type a4@<X3>, void *a5@<X8>)
{
  __pos = a3;
  if (a2 && a4)
  {
    AdobeXMPCore_Int::UTF8StringImpl::ValidatePosParameter(this, &__pos);
    v9 = (this + 24);
    if (a4 == -1)
    {
      std::string::insert(v9, __pos, a2);
    }

    else
    {
      std::string::insert(v9, __pos, a2, a4);
    }
  }

  return AdobeXMPCore_Int::UTF8StringImpl::returnSelfSharedPointer(this, a5);
}

unint64_t AdobeXMPCore_Int::UTF8StringImpl::ValidatePosParameter(AdobeXMPCore_Int::UTF8StringImpl *this, unint64_t *a2)
{
  result = (*(*this + 208))(this);
  v6 = result;
  if (*a2 > result)
  {
    v4 = 0;
    v5 = 0;
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  return result;
}

void sub_18611C97C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void *AdobeXMPCore_Int::UTF8StringImpl::insert@<X0>(std::string *this@<X0>, unint64_t a2@<X1>, void *a3@<X2>, unint64_t a4@<X3>, std::string::size_type a5@<X4>, void *a6@<X8>)
{
  v15 = a4;
  v16 = a2;
  if (a5 && *a3)
  {
    AdobeXMPCore_Int::UTF8StringImpl::ValidatePosParameter(this, &v16);
    v10 = AdobeXMPCore_Int::ValidateSrcPosParameter(a3, &v15);
    v11 = v16;
    v12 = (*(**a3 + 192))();
    if (v10 - v15 >= a5)
    {
      v13 = a5;
    }

    else
    {
      v13 = v10 - v15;
    }

    std::string::insert(this + 1, v11, (v12 + v15), v13);
  }

  return AdobeXMPCore_Int::UTF8StringImpl::returnSelfSharedPointer(this, a6);
}

void *AdobeXMPCore_Int::UTF8StringImpl::erase@<X0>(std::string *this@<X0>, std::string::size_type a2@<X1>, std::string::size_type a3@<X2>, void *a4@<X8>)
{
  __pos = a2;
  if (a3)
  {
    AdobeXMPCore_Int::UTF8StringImpl::ValidatePosParameter(this, &__pos);
    std::string::erase(this + 1, __pos, a3);
  }

  return AdobeXMPCore_Int::UTF8StringImpl::returnSelfSharedPointer(this, a4);
}

void AdobeXMPCore_Int::UTF8StringImpl::resize(std::string *this, std::string::size_type a2)
{
  v4 = a2;
  if (a2 >= 0x7FFFFFFFFFFFFFF7)
  {
    v2 = 0;
    v3 = 0;
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  std::string::resize(this + 1, a2, 0);
}

void *AdobeXMPCore_Int::UTF8StringImpl::replace@<X0>(AdobeXMPCore_Int::UTF8StringImpl *this@<X0>, const char *a2@<X3>, std::string::size_type a3@<X1>, std::string::size_type a4@<X2>, std::string::size_type a5@<X4>, void *a6@<X8>)
{
  __pos = a3;
  if (a4 && a2 && a5)
  {
    AdobeXMPCore_Int::UTF8StringImpl::ValidatePosParameter(this, &__pos);
    v11 = (this + 24);
    if (a5 == -1)
    {
      std::string::replace(v11, __pos, a4, a2);
    }

    else
    {
      std::string::replace(v11, __pos, a4, a2, a5);
    }
  }

  return AdobeXMPCore_Int::UTF8StringImpl::returnSelfSharedPointer(this, a6);
}

void *AdobeXMPCore_Int::UTF8StringImpl::replace@<X0>(std::string *this@<X0>, unint64_t a2@<X1>, std::string::size_type a3@<X2>, void *a4@<X3>, unint64_t a5@<X4>, std::string::size_type a6@<X5>, void *a7@<X8>)
{
  v17 = a5;
  v18 = a2;
  if (a6 && a3 && *a4)
  {
    AdobeXMPCore_Int::UTF8StringImpl::ValidatePosParameter(this, &v18);
    v12 = AdobeXMPCore_Int::ValidateSrcPosParameter(a4, &v17);
    v13 = v18;
    v14 = (*(**a4 + 192))();
    if (v12 - v17 >= a6)
    {
      v15 = a6;
    }

    else
    {
      v15 = v12 - v17;
    }

    std::string::replace(this + 1, v13, a3, (v14 + v17), v15);
  }

  return AdobeXMPCore_Int::UTF8StringImpl::returnSelfSharedPointer(this, a7);
}

std::string::size_type AdobeXMPCore_Int::UTF8StringImpl::copy(std::string *this, char *a2, std::string::size_type a3, std::string::size_type a4)
{
  result = 0;
  __pos = a4;
  if (a2)
  {
    if (a3)
    {
      AdobeXMPCore_Int::UTF8StringImpl::ValidatePosParameter(this, &__pos);
      return std::string::copy(this + 1, a2, a3, __pos);
    }
  }

  return result;
}

std::string::size_type AdobeXMPCore_Int::UTF8StringImpl::find(const std::string *this, const char *a2, std::string::size_type a3, std::string::size_type a4)
{
  if (a2 && a4)
  {
    return std::string::find(this + 1, a2, a3, a4);
  }

  else
  {
    return -1;
  }
}

std::string::size_type AdobeXMPCore_Int::UTF8StringImpl::find(const std::string *a1, void *a2, std::string::size_type a3, std::string::size_type a4)
{
  if (!*a2)
  {
    return -1;
  }

  v8 = (*(**a2 + 208))(*a2);
  if (!a4 || !v8)
  {
    return -1;
  }

  v9 = (*(**a2 + 192))();

  return std::string::find(a1 + 1, v9, a3, a4);
}

std::string::size_type AdobeXMPCore_Int::UTF8StringImpl::rfind(const std::string *this, const char *a2, std::string::size_type a3, std::string::size_type a4)
{
  if (a2 && a4)
  {
    return std::string::rfind(this + 1, a2, a3, a4);
  }

  else
  {
    return -1;
  }
}

std::string::size_type AdobeXMPCore_Int::UTF8StringImpl::rfind(const std::string *a1, void *a2, std::string::size_type a3, std::string::size_type a4)
{
  if (!*a2)
  {
    return -1;
  }

  v8 = (*(**a2 + 208))(*a2);
  if (!a4 || !v8)
  {
    return -1;
  }

  v9 = (*(**a2 + 192))();

  return std::string::rfind(a1 + 1, v9, a3, a4);
}

uint64_t AdobeXMPCore_Int::UTF8StringImpl::compare(std::string::size_type *this, std::string::size_type a2, std::string::size_type a3, const char *a4, size_t a5)
{
  __pos1 = a2;
  if (!a4)
  {
    return 0xFFFFFFFFLL;
  }

  AdobeXMPCore_Int::UTF8StringImpl::ValidatePosParameter(this, &__pos1);
  v9 = (this + 3);
  if (a5 == -1)
  {
    return std::string::compare(v9, __pos1, a3, a4);
  }

  v10 = *(this + 47);
  if ((v10 & 0x8000000000000000) != 0)
  {
    v14 = this[4];
    v11 = v14 >= __pos1;
    v12 = v14 - __pos1;
    if (!v11)
    {
LABEL_26:
      std::string::__throw_out_of_range[abi:fe200100]();
    }

    if (v12 >= a3)
    {
      v12 = a3;
    }

    v9 = v9->__r_.__value_.__r.__words[0];
  }

  else
  {
    v11 = v10 >= __pos1;
    v12 = v10 - __pos1;
    if (!v11)
    {
      goto LABEL_26;
    }

    if (v12 >= a3)
    {
      v12 = a3;
    }
  }

  if (v12 >= a5)
  {
    v15 = a5;
  }

  else
  {
    v15 = v12;
  }

  if (v12 < a5)
  {
    v16 = -1;
  }

  else
  {
    v16 = v12 > a5;
  }

  LODWORD(result) = memcmp(v9 + __pos1, a4, v15);
  if (result)
  {
    return result;
  }

  else
  {
    return v16;
  }
}

uint64_t AdobeXMPCore_Int::UTF8StringImpl::compare(uint64_t a1, unint64_t a2, size_t a3, void *a4, unint64_t a5, size_t a6)
{
  v20 = a5;
  v21 = a2;
  if (!*a4)
  {
    return 0xFFFFFFFFLL;
  }

  AdobeXMPCore_Int::UTF8StringImpl::ValidatePosParameter(a1, &v21);
  AdobeXMPCore_Int::ValidateSrcPosParameter(a4, &v20);
  v10 = (a1 + 24);
  v11 = v21;
  v12 = (*(**a4 + 192))();
  v13 = *(a1 + 47);
  if ((v13 & 0x8000000000000000) != 0)
  {
    if (a6 == -1 || (v17 = *(a1 + 32), v14 = v17 >= v11, v15 = v17 - v11, !v14))
    {
LABEL_26:
      std::string::__throw_out_of_range[abi:fe200100]();
    }

    if (v15 >= a3)
    {
      v15 = a3;
    }

    v10 = *v10;
  }

  else
  {
    if (a6 == -1)
    {
      goto LABEL_26;
    }

    v14 = v13 >= v11;
    v15 = v13 - v11;
    if (!v14)
    {
      goto LABEL_26;
    }

    if (v15 >= a3)
    {
      v15 = a3;
    }
  }

  if (v15 >= a6)
  {
    v18 = a6;
  }

  else
  {
    v18 = v15;
  }

  if (v15 < a6)
  {
    v19 = -1;
  }

  else
  {
    v19 = v15 > a6;
  }

  LODWORD(result) = memcmp(v10 + v11, (v12 + v20), v18);
  if (result)
  {
    return result;
  }

  else
  {
    return v19;
  }
}

void AdobeXMPCore_Int::UTF8StringImpl::substr(AdobeXMPCore_Int::UTF8StringImpl *this, unint64_t a2, const char *a3)
{
  v9[0] = a2;
  AdobeXMPCore_Int::UTF8StringImpl::ValidatePosParameter(this, v9);
  v5 = (*(*this + 192))(this);
  v6 = v9[0];
  v7 = (*(*this + 208))(this);
  if (v7 - v9[0] >= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = (v7 - v9[0]);
  }

  AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String((v5 + v6), v8);
}

void sub_18611D430(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  __cxa_begin_catch(a1);
  a12 = 0;
  a13 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

BOOL AdobeXMPCore_Int::UTF8StringImpl::empty(AdobeXMPCore_Int::UTF8StringImpl *this)
{
  v1 = *(this + 47);
  if (v1 < 0)
  {
    v1 = *(this + 4);
  }

  return v1 == 0;
}

uint64_t AdobeXMPCore_Int::UTF8StringImpl::clear(uint64_t this)
{
  if (*(this + 47) < 0)
  {
    **(this + 24) = 0;
    *(this + 32) = 0;
  }

  else
  {
    *(this + 24) = 0;
    *(this + 47) = 0;
  }

  return this;
}

void virtual thunk toAdobeXMPCore_Int::UTF8StringImpl::~UTF8StringImpl(AdobeXMPCore_Int::UTF8StringImpl *this)
{
  v2 = (v1 + 56);

  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl(v2, off_1EF4E4150);
}

{
  AdobeXMPCore_Int::UTF8StringImpl::~UTF8StringImpl((this + *(*this - 24)));
}

void sub_18611D6DC(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = (v2 + *(*v2 - 448) + (v3 >> 1));
  if (v3)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AdobeXMPCore_Int::UTF8StringImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::UTF8StringImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::UTF8StringImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::UTF8StringImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void OUTLINED_FUNCTION_2_19(uint64_t a1@<X8>)
{
  *v1 = a1;
  *v4 = v1 + 1;
  *v2 = v3 + 8;
  v1[1] = *(v3 + 8);
}

void AdobeXMPCore_Int::UTF8StringImpl::resize()
{
  OUTLINED_FUNCTION_1_22();
  v2 = OUTLINED_FUNCTION_0_39(v1);
  (*(v3 + 120))(v2, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCommon/source/UTF8StringImpl.cpp", 112);
  v4 = OUTLINED_FUNCTION_0_39(*v0);
  (*(v5 + 112))(v4, "failed to allocate required memory", -1);
  v6 = *v0;
  if (*v0)
  {
    v6 = (v6 + *(*v6 - 304));
  }

  OUTLINED_FUNCTION_2_19(v6);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }
}

void AdobeXMPCore_Int::UTF8StringImpl::substr()
{
  OUTLINED_FUNCTION_1_22();
  v2 = OUTLINED_FUNCTION_0_39(v1);
  (*(v3 + 120))(v2, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCommon/source/UTF8StringImpl.cpp", 203);
  v4 = OUTLINED_FUNCTION_0_39(*v0);
  (*(v5 + 112))(v4, "failed to allocate required memory", -1);
  v6 = *v0;
  if (*v0)
  {
    v6 = (v6 + *(*v6 - 304));
  }

  OUTLINED_FUNCTION_2_19(v6);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }
}

void AdobeXMPCore_Int::DOMSerializerImpl::DOMSerializerImpl(AdobeXMPCore_Int::DOMSerializerImpl *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 344)) = a2[1];
  *(this + *(*this - 288)) = a2[2];
  *(this + *(*this - 216)) = a2[3];
  *(this + *(*this - 224)) = a2[4];
  *(this + *(*this - 232)) = a2[5];
  *(this + *(*this - 296)) = a2[6];
  *(this + *(*this - 304)) = a2[7];
  *(this + *(*this - 352)) = a2[8];
  v3 = a2[9];
  *(this + *(*this - 360)) = v3;
  AdobeXMPCore_Int::ISharedMutex::CreateSharedMutex(v3);
}

uint64_t AdobeXMPCore_Int::DOMSerializerImpl::GetMutex@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 16);
  *a2 = *(this + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void *virtual thunk toAdobeXMPCore_Int::DOMSerializerImpl::GetMutex@<X0>(void *this@<X0>, void *a2@<X8>)
{
  v2 = this + *(*this - 280);
  v4 = *(v2 + 1);
  v3 = *(v2 + 2);
  *a2 = v4;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void AdobeXMPCore_Int::DOMSerializerImpl::Clone(AdobeXMPCore_Int::DOMSerializerImpl *this)
{
  v2 = (*(*this + 288))(this);
  if (v2)
  {
    memset(v14, 0, 24);
    AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v14, this + 8, 0);
    v3 = *this;
    v4 = (*this - 352);
    v5 = *v2;
    v2[*(v5 - 352) + 48] = *(this + *v4 + 48);
    v2[*(v5 - 352) + 49] = *(this + *v4 + 49);
    if (*(this + *v4 + 32))
    {
      operator new();
    }

    if (*(this + *(v3 - 352) + 40))
    {
      operator new();
    }

    v6 = this + *(v3 - 352);
    v7 = *(v6 + 1);
    v8 = v6 + 16;
    if (v7 != v6 + 16)
    {
      do
      {
        v9 = *(*v2 - 352);
        v14[4] = v7 + 32;
        v10 = std::__tree<std::__value_type<unsigned long long,std::pair<AdobeXMPCommon::IConfigurable::eDataType,AdobeXMPCommon::IConfigurable::CombinedDataValue>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::pair<AdobeXMPCommon::IConfigurable::eDataType,AdobeXMPCommon::IConfigurable::CombinedDataValue>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::pair<AdobeXMPCommon::IConfigurable::eDataType,AdobeXMPCommon::IConfigurable::CombinedDataValue>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v2[v9 + 8], v7 + 4);
        *(v10 + 10) = *(v7 + 10);
        v10[6] = *(v7 + 6);
        v11 = *(v7 + 1);
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = *(v7 + 2);
            v13 = *v12 == v7;
            v7 = v12;
          }

          while (!v13);
        }

        v7 = v12;
      }

      while (v12 != v8);
    }

    AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v14);
  }

  AdobeXMPCore_Int::MakeUncheckedSharedPointer<AdobeXMPCore_Int::DOMSerializerImpl>(v2, 1, v14);
}

void sub_18611E054(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x186602850](v2, 0x1020C4062D53EE8);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::MakeUncheckedSharedPointer<AdobeXMPCore_Int::DOMSerializerImpl>(char *a1@<X0>, int a2@<W3>, void *a3@<X8>)
{
  if (a1 || !a2)
  {
    (**&a1[*(*a1 - 360)])(&a1[*(*a1 - 360)]);

    std::shared_ptr<AdobeXMPCore_Int::DOMSerializerImpl>::shared_ptr[abi:fe200100]<AdobeXMPCore_Int::DOMSerializerImpl,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,0>(a3, a1);
  }

  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_18611E224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_18611E430(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = (v3 + *(*v3 - 360) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AdobeXMPCore_Int::DOMSerializerImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::DOMSerializerImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::DOMSerializerImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::DOMSerializerImpl>>::__on_zero_shared(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = (a1[3] + *(*a1[3] - 360) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::DOMSerializerImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::DOMSerializerImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void sub_18611E624(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = (v3 + *(*v3 - 120) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AdobeXMPCore_Int::ClientDOMSerializerWrapperImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::ClientDOMSerializerWrapperImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::ClientDOMSerializerWrapperImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::ClientDOMSerializerWrapperImpl>>::__on_zero_shared(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = (a1[3] + *(*a1[3] - 120) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::ClientDOMSerializerWrapperImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::ClientDOMSerializerWrapperImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

_BYTE *std::string::basic_string[abi:fe200100](_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:fe200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

void *AdobeXMPCore_Int::ICoreObjectFactory_I::GetInterfacePointerInternal(void *this, uint64_t a2, int a3, int a4)
{
  if (a2 == 0x6E4F626A46616374)
  {
    if (a3 != 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      AdobeXMPCore_Int::IError_I::CreateInterfaceVersionNotAvailableError(0x6E4F626A46616374, a3, exception);
    }

    v4 = -64;
    return (this + *(*this + v4));
  }

  if (a2 == 0x634F626A46616374)
  {
    if (a3 != -1)
    {
      if (a3 != 1)
      {
        v10 = __cxa_allocate_exception(0x10uLL);
        AdobeXMPCore_Int::IError_I::CreateInterfaceVersionNotAvailableError(0x634F626A46616374, a3, v10);
      }

      v4 = -216;
      return (this + *(*this + v4));
    }
  }

  else
  {
    if (a4)
    {
      v8 = __cxa_allocate_exception(0x10uLL);
      AdobeXMPCore_Int::IError_I::CreateInterfaceNotAvailableError(0x634F626A46616374, a2, v8);
    }

    return 0;
  }

  return this;
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::ICoreObjectFactory_I,void *,void *,unsigned long long,unsigned int>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  *a1 = 0;
  v9 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v9 + a4);
  }

  return a4(v9, a8, a9);
}

uint64_t AdobeXMPCore_Int::CompositeNodeImpl::GetNodeTypeAtPath(uint64_t a1)
{
  v3 = 0;
  v4 = 0;
  (*(*a1 + 512))(&v3);
  if (v3)
  {
    v1 = (*(*v3 + 40))(v3);
  }

  else
  {
    v1 = 0;
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }

  return v1;
}

void sub_18611EC4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  _Unwind_Resume(exception_object);
}

char *AdobeXMPCore_Int::CompositeNodeImpl::GetNodeAtPath@<X0>(char *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*a2)
  {
    v3 = result;
    (**&result[*(*result - 744)])(&result[*(*result - 744)]);
    std::shared_ptr<AdobeXMPCore_Int::CompositeNodeImpl>::shared_ptr[abi:fe200100]<AdobeXMPCore_Int::CompositeNodeImpl,std::__mem_fn<void (AdobeXMPCore_Int::NodeImpl::*)(void)const>,0>(&v4, v3);
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

void sub_18611F840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a18);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a24);
  }

  v30 = *(v28 - 104);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v30);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a20);
  }

  if (*v27)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*v27);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v26);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a22);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::CompositeNodeImpl::InsertNodeAtPath()
{
  v0 = 0;
  v1 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_18611FB48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::CompositeNodeImpl::ReplaceNodeAtPath()
{
  v0 = 0;
  v1 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_18611FCE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::CompositeNodeImpl::RemoveNodeAtPath(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  (*(*a1 + 512))(a1);
  if (!*a2)
  {
    return;
  }

  v3 = (*(**a2 + 280))(*a2);
  v4 = (*(*v3 + 528))(v3);
  v5 = (*(*v4 + 280))(v4);
  if ((*(**a2 + 168))())
  {
    (*(*(v5 + *(*v5 - 544)) + 240))(&v22);
    v6 = (*(*v22 + 688))(v22);
    (*(**a2 + 88))(&v20);
    (*(**a2 + 72))(&v18);
    (*(*v6 + 744))(&v23, v6, &v20, &v18);
    v7 = v23;
    v23 = 0uLL;
    v8 = a2[1];
    *a2 = v7;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v8);
      if (*(&v23 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v23 + 1));
      }
    }

    v9 = v19;
    if (!v19)
    {
      goto LABEL_19;
    }

LABEL_18:
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
    goto LABEL_19;
  }

  if ((*(**a2 + 160))())
  {
    v23 = 0uLL;
    (*(*(v5 + *(*v5 - 544)) + 248))(&v23);
    v10 = v23;
    v11 = (*(**a2 + 176))();
    (*(*v10 + 680))(&v22, v10, v11);
    v12 = v22;
    v22 = 0uLL;
    v13 = a2[1];
    *a2 = v12;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v13);
      if (*(&v22 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v22 + 1));
      }
    }

    v14 = *(&v23 + 1);
    if (*(&v23 + 1))
    {
      goto LABEL_22;
    }

    return;
  }

  (*(*(v5 + *(*v5 - 544)) + 240))(&v23);
  v15 = (*(*v23 + 688))(v23);
  if (*(&v23 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v23 + 1));
  }

  (*(**a2 + 88))(&v22);
  (*(**a2 + 72))(&v20);
  (*(*v15 + 744))(&v23, v15, &v22, &v20);
  v16 = v23;
  v23 = 0uLL;
  v17 = a2[1];
  *a2 = v16;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v17);
    v9 = *(&v23 + 1);
    if (*(&v23 + 1))
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v21);
  }

  v14 = *(&v22 + 1);
  if (*(&v22 + 1))
  {
LABEL_22:
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
  }
}

void sub_1861201C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  v16 = *(v14 + 8);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AdobeXMPCore_Int::CompositeNodeImpl::CheckSuitabilityToBeUsedAsChildNode(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    v3 = 0;
    v4 = 0;
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  if ((*(**a2 + 48))(*a2))
  {
    v3 = 0;
    v4 = 0;
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  return 1;
}

void sub_18612056C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::INode_I::GetSimpleQualifier(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = 0;
  v4 = 0;
  (*(*a1 + 512))(&v3);
  if (v3)
  {
    (*(*v3 + 232))(v3);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }
}

void sub_186120634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AdobeXMPCommon::IUTF8String_v1::compare(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 208))(a1);
  v5 = (*(**a2 + 208))();
  v6 = *(*a1 + 168);

  return v6(a1, 0, v4, a2, 0, v5);
}

void sub_18612078C(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = (v3 + *(*v3 - 744) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AdobeXMPCore_Int::CompositeNodeImpl *,std::__mem_fn<void (AdobeXMPCore_Int::NodeImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::CompositeNodeImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::CompositeNodeImpl *,std::__mem_fn<void (AdobeXMPCore_Int::NodeImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::CompositeNodeImpl>>::__on_zero_shared(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = (a1[3] + *(*a1[3] - 744) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::CompositeNodeImpl *,std::__mem_fn<void (AdobeXMPCore_Int::NodeImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::CompositeNodeImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t Host_IO::Writable(Host_IO *this, const char *a2)
{
  v2 = a2;
  memset(&v12, 0, sizeof(v12));
  if (stat(this, &v12))
  {
    if (!v2)
    {
      return 1;
    }

    memset(&v12, 0, 24);
    std::string::basic_string[abi:fe200100]<0>(&v12, this);
    v5 = std::string::rfind(&v12, 47, 0xFFFFFFFFFFFFFFFFLL);
    if (v5 == -1)
    {
      MEMORY[0x186602520](&v12, ".");
    }

    else
    {
      if (v5)
      {
        std::string::basic_string(&v11, &v12, 0, v5, &v13);
      }

      else
      {
        std::string::basic_string(&v11, &v12, 0, 1uLL, &v13);
      }

      if (SHIBYTE(v12.st_gid) < 0)
      {
        operator delete(*&v12.st_dev);
      }

      *&v12.st_dev = *&v11.__r_.__value_.__l.__data_;
      *&v12.st_uid = *(&v11.__r_.__value_.__l + 2);
    }

    if ((v12.st_gid & 0x80000000) == 0)
    {
      v9 = &v12;
    }

    else
    {
      v9 = *&v12.st_dev;
    }

    v8 = Host_IO::Writable(v9, 1, v6);
  }

  else
  {
    if (Host_IO::GetFileMode(this, v4) - 1 > 1)
    {
      return 0;
    }

    std::string::basic_string[abi:fe200100]<0>(&v12, this);
    if ((v12.st_gid & 0x80000000) == 0)
    {
      v7 = &v12;
    }

    else
    {
      v7 = *&v12.st_dev;
    }

    v8 = access(v7, 2) == 0;
  }

  if (SHIBYTE(v12.st_gid) < 0)
  {
    operator delete(*&v12.st_dev);
  }

  return v8;
}

void sub_186120A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Host_IO::GetFileMode(Host_IO *this, const char *a2)
{
  memset(&v6, 0, sizeof(v6));
  if (stat(this, &v6))
  {
    return 0;
  }

  else
  {
    v3 = v6.st_mode & 0xF000;
    if (v3 == 0x4000)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }

    if (v3 == 0x8000)
    {
      return 1;
    }

    else
    {
      return v4;
    }
  }
}

BOOL Host_IO::Create(Host_IO *this, const char *a2)
{
  memset(&v9, 0, sizeof(v9));
  v4 = stat(this, &v9);
  if (!v4)
  {
    if (Host_IO::GetFileMode(this, v3) == 1)
    {
      return v4 != 0;
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 9;
    v8 = "Host_IO::Create, path exists but is not a file";
LABEL_8:
    exception[1] = v8;
    *(exception + 16) = 0;
  }

  v5 = open(this, 2562, 420);
  if (v5 == -1)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 9;
    v8 = "Host_IO::Create, cannot create file";
    goto LABEL_8;
  }

  close(v5);
  return v4 != 0;
}

uint64_t Host_IO::GetModifyDate(const char *a1, uint64_t a2)
{
  memset(&v7, 0, sizeof(v7));
  if (stat(a1, &v7))
  {
    return 0;
  }

  v5 = v7.st_mode & 0xF000;
  if (v5 != 0x8000 && v5 != 0x4000)
  {
    return 0;
  }

  v3 = 1;
  if (a2)
  {
    memset(&v8, 0, sizeof(v8));
    gmtime_r(&v7.st_mtimespec.tv_sec, &v8);
    *a2 = vrev64_s32(vadd_s32(*&v8.tm_mon, 0x76C00000001));
    *(a2 + 24) = 1;
    v6 = vrev64q_s32(*&v8.tm_sec);
    *(a2 + 8) = vextq_s8(v6, v6, 8uLL);
    *(a2 + 36) = 0;
    *(a2 + 25) = 257;
    *(a2 + 27) = 0;
    *(a2 + 35) = 0;
  }

  return v3;
}

BOOL Host_IO::CreateTemp@<W0>(Host_IO *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  ConjureDerivedPath(this, a2);
  if (*(a2 + 23) < 0)
  {
    if (!*(a2 + 8))
    {
      goto LABEL_12;
    }

    v4 = *a2;
  }

  else
  {
    v4 = a2;
    if (!*(a2 + 23))
    {
LABEL_12:
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 9;
      exception[1] = "Host_IO::CreateTemp, cannot create temp file path";
      *(exception + 16) = 0;
    }
  }

  memset(&v9, 0, sizeof(v9));
  if (!stat(v4, &v9))
  {
    __assert_rtn("CreateTemp", "Host_IO-POSIX.cpp", 194, "! Host_IO::Exists(tempPath.c_str())");
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  return Host_IO::Create(v6, v5);
}

void sub_186120DA0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double ConjureDerivedPath@<D0>(char *__s@<X0>, std::string *a2@<X8>)
{
  memset(&v11, 0, sizeof(v11));
  std::string::basic_string[abi:fe200100]<0>(&v11, __s);
  std::string::append(&v11, "._nn_");
  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v11;
  }

  else
  {
    v4 = v11.__r_.__value_.__r.__words[0];
  }

  v5 = v4 + strlen(__s);
  v6 = 48;
  while (2)
  {
    *(v5 + 2) = v6;
    v7 = 48;
    do
    {
      *(v5 + 3) = v7;
      if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &v11;
      }

      else
      {
        v8 = v11.__r_.__value_.__r.__words[0];
      }

      memset(&v12, 0, sizeof(v12));
      if (stat(v8, &v12))
      {
        result = *&v11.__r_.__value_.__l.__data_;
        *a2 = v11;
        return result;
      }

      v9 = v7++ > 0x38;
    }

    while (!v9);
    v9 = v6++ > 0x38;
    if (!v9)
    {
      continue;
    }

    break;
  }

  std::string::basic_string[abi:fe200100]<0>(a2, "");
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  return result;
}

void sub_186120ED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Host_IO::Open(Host_IO *this, const char *a2)
{
  v2 = a2;
  if (a2)
  {
    v3 = open(this, 0, 432);
  }

  else
  {
    v3 = open(this, 2, 432);
  }

  v4 = v3;
  if (v3 == -1)
  {
    v5 = *__error();
    if (v5 == 2)
    {
      return v4;
    }

    if (v5 == 13)
    {
LABEL_12:
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 112;
      v8 = "Host_IO::Open, file permission error";
      goto LABEL_15;
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 11;
    v8 = "Host_IO::Open, other failure";
LABEL_15:
    exception[1] = v8;
    *(exception + 16) = 0;
  }

  if (v2)
  {
    return v4;
  }

  memset(&v9, 0, sizeof(v9));
  if (fstat(v3, &v9) == -1)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 11;
    v8 = "Host_IO::Open, fstat failed.";
    goto LABEL_15;
  }

  if ((v9.st_mode & 0x80) == 0)
  {
    goto LABEL_12;
  }

  return v4;
}

uint64_t Host_IO::Close(uint64_t this)
{
  if (this != -1)
  {
    this = close(this);
    if (this)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 11;
      exception[1] = "Host_IO::Close, close failure";
      *(exception + 16) = 0;
    }
  }

  return this;
}

void Host_IO::SwapData(std::__fs::filesystem::path *this, const std::__fs::filesystem::path *a2, const char *a3)
{
  memset(&v12, 0, sizeof(v12));
  ConjureDerivedPath(this, &v12);
  if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&v12.__r_.__value_.__s + 23))
    {
      v5 = &v12;
      goto LABEL_6;
    }

LABEL_17:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 9;
    exception[1] = "Cannot create temp file path";
    *(exception + 16) = 0;
  }

  if (!v12.__r_.__value_.__l.__size_)
  {
    goto LABEL_17;
  }

  v5 = v12.__r_.__value_.__r.__words[0];
LABEL_6:
  memset(&v13, 0, sizeof(v13));
  if (!stat(v5, &v13))
  {
    __assert_rtn("SwapData", "Host_IO-POSIX.cpp", 257, "! Host_IO::Exists(thirdPath.c_str())");
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v12;
  }

  else
  {
    v7 = v12.__r_.__value_.__r.__words[0];
  }

  Host_IO::Rename(this, v7, v6);
  Host_IO::Rename(a2, this, v8);
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v12;
  }

  else
  {
    v10 = v12.__r_.__value_.__r.__words[0];
  }

  Host_IO::Rename(v10, a2, v9);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_18612118C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const std::__fs::filesystem::path *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_begin_catch(a1);
  Host_IO::Rename(v15, v16, v17);
  if (a15 >= 0)
  {
    v19 = &a10;
  }

  else
  {
    v19 = a10;
  }

  Host_IO::Rename(v19, v15, v18);
  __cxa_rethrow();
}

void sub_1861211C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_end_catch();
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1861211CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const std::__fs::filesystem::path *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_begin_catch(a1);
  if (a15 >= 0)
  {
    v17 = &a10;
  }

  else
  {
    v17 = a10;
  }

  Host_IO::Rename(v17, v15, v16);
  __cxa_rethrow();
}

void sub_1861211F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_end_catch();
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void Host_IO::Rename(const std::__fs::filesystem::path *this, const std::__fs::filesystem::path *a2, const char *a3)
{
  memset(&v9, 0, sizeof(v9));
  if (!stat(a2, &v9))
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 9;
    v8 = "Host_IO::Rename, new path exists";
    goto LABEL_6;
  }

  rename(this, a2, v5);
  if (v6)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 11;
    v8 = "Host_IO::Rename, rename failure";
LABEL_6:
    exception[1] = v8;
    *(exception + 16) = 0;
  }
}

uint64_t Host_IO::Delete(Host_IO *this, const char *a2)
{
  result = Host_IO::GetFileMode(this, a2);
  if (result > 1)
  {
    if (result == 2)
    {
      result = rmdir(this);
      if (!result)
      {
        return result;
      }

      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 11;
      v5 = "Host_IO::Delete, rmdir failure";
    }

    else
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 11;
      v5 = "Host_IO::Delete, can't delete 'other' file";
    }

LABEL_10:
    exception[1] = v5;
    *(exception + 16) = 0;
  }

  if (result)
  {
    result = unlink(this);
    if (result)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 11;
      v5 = "Host_IO::Delete, unlink failure";
      goto LABEL_10;
    }
  }

  return result;
}

off_t Host_IO::Seek(int a1, off_t a2, unsigned int a3)
{
  if (a3 >= 3)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 9;
    v5 = "Host_IO::Seek, Invalid seek mode";
    goto LABEL_6;
  }

  result = lseek(a1, a2, a3);
  if (result == -1)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 11;
    v5 = "Host_IO::Seek, lseek failure";
LABEL_6:
    exception[1] = v5;
    *(exception + 16) = 0;
  }

  return result;
}

ssize_t Host_IO::Read(Host_IO *this, void *a2, unsigned int a3)
{
  if ((a3 & 0x80000000) != 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 7;
    v5 = "Host_IO::Read, request too large";
    goto LABEL_6;
  }

  result = read(this, a2, a3);
  if (result == -1)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 114;
    v5 = "Host_IO::Read, read failure";
LABEL_6:
    exception[1] = v5;
    *(exception + 16) = 0;
  }

  return result;
}

ssize_t Host_IO::Write(Host_IO *this, const void *a2, size_t __nbyte)
{
  if ((__nbyte & 0x80000000) != 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 7;
    v6 = "Host_IO::Write, request too large";
    goto LABEL_8;
  }

  v3 = __nbyte;
  result = write(this, a2, __nbyte);
  if (result != v3)
  {
    v7 = *__error();
    exception = __cxa_allocate_exception(0x18uLL);
    if (v7 == 28)
    {
      *exception = 113;
      v6 = "Host_IO::Write, disk full";
    }

    else
    {
      *exception = 115;
      v6 = "Host_IO::Write, write failure";
    }

LABEL_8:
    exception[1] = v6;
    *(exception + 16) = 0;
  }

  return result;
}

off_t Host_IO::Length(Host_IO *this)
{
  v1 = this;
  v2 = lseek(this, 0, 1);
  v3 = lseek(v1, 0, 2);
  if (v2 == -1 || v3 == -1)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 11;
    exception[1] = "Host_IO::Length, lseek failure";
    *(exception + 16) = 0;
  }

  v5 = v3;
  lseek(v1, v2, 0);
  return v5;
}

uint64_t Host_IO::SetEOF(Host_IO *this, off_t a2)
{
  result = ftruncate(this, a2);
  if (result)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 11;
    exception[1] = "Host_IO::SetEOF, ftruncate failure";
    *(exception + 16) = 0;
  }

  return result;
}

void *AdobeXMPCore_Int::ICompositeNode_I::GetInterfacePointerInternal(void *this, uint64_t a2, int a3, int a4)
{
  if (a2 == 0x63436D704E6F6465)
  {
    if (a3 != -1)
    {
      if (a3 != 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        AdobeXMPCore_Int::IError_I::CreateInterfaceVersionNotAvailableError(0x63436D704E6F6465, a3, exception);
      }

      return (this + *(*this - 688));
    }
  }

  else
  {
    this = AdobeXMPCore_Int::INode_I::GetInterfacePointerInternal((this + *(*this - 696)), a2, a3, 0);
    if (this)
    {
      v6 = 1;
    }

    else
    {
      v6 = a4 == 0;
    }

    if (!v6)
    {
      v7 = __cxa_allocate_exception(0x10uLL);
      AdobeXMPCore_Int::IError_I::CreateInterfaceNotAvailableError(0x63436D704E6F6465, a2, v7);
    }
  }

  return this;
}

void *virtual thunk toAdobeXMPCore_Int::ICompositeNode_I::GetInterfacePointer(AdobeXMPCore_Int::ICompositeNode_I *this, uint64_t a2, int a3)
{
  return AdobeXMPCore_Int::ICompositeNode_I::GetInterfacePointerInternal((this + *(*this - 32)), a2, a3, 1);
}

{
  return AdobeXMPCore_Int::ICompositeNode_I::GetInterfacePointerInternal((this + *(*this - 600)), a2, a3, 1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::ICompositeNode_I,void *,void *,unsigned long long,unsigned int>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  *a1 = 0;
  v9 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v9 + a4);
  }

  return a4(v9, a8, a9);
}

uint64_t virtual thunk toAdobeXMPCore_Int::ICompositeNode_I::getInterfacePointer(AdobeXMPCore_Int::ICompositeNode_I *this, uint64_t a2, unsigned int a3, const AdobeXMPCommon::IError_v1 **a4)
{
  return AdobeXMPCore_Int::ICompositeNode_I::getInterfacePointer((this + *(*this - 40)), a2, a3, a4);
}

{
  return AdobeXMPCore_Int::ICompositeNode_I::getInterfacePointer((this + *(*this - 656)), a2, a3, a4);
}

uint64_t AdobeXMPCore_Int::ICompositeNode_I::getNodeTypeAtPath(AdobeXMPCore_Int::ICompositeNode_I *this, const AdobeXMPCore::IPath_v1 *a2, const AdobeXMPCommon::IError_v1 **a3)
{
  v5 = *(*this - 688);
  AdobeXMPCore::IPath_v1::MakeShared(a2, a2, &v9);
  v8 = v9;
  v6 = AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCore::ICompositeNode_v1,unsigned int,AdobeXMPCore::INode_v1::eNodeType,std::shared_ptr<AdobeXMPCore::IPath_v1 const> const&>(a3, this + v5, 0, AdobeXMPCore::ICompositeNode_v1::GetNodeTypeAtPath, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/ICompositeNode_I.cpp", 57, &v8);
  if (*(&v8 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v8 + 1));
  }

  return v6;
}

void sub_186121A48(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCore::ICompositeNode_v1,unsigned int,AdobeXMPCore::INode_v1::eNodeType,std::shared_ptr<AdobeXMPCore::IPath_v1 const> const&>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0;
  v8 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v8 + a4);
  }

  return a4(v8, a8);
}

uint64_t AdobeXMPCore_Int::ICompositeNode_I::getNodeAtPath(AdobeXMPCore_Int::ICompositeNode_I *this, const AdobeXMPCore::IPath_v1 *a2, const AdobeXMPCommon::IError_v1 **a3)
{
  v5 = *(*this - 688);
  AdobeXMPCore::IPath_v1::MakeShared(a2, a2, &v9);
  v8 = v9;
  v6 = AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::ICompositeNode_v1,AdobeXMPCore::INode_v1 *,AdobeXMPCore::INode_v1,std::shared_ptr<AdobeXMPCore::IPath_v1 const> const&>(a3, this + v5, AdobeXMPCore::ICompositeNode_v1::GetNodeAtPath, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/ICompositeNode_I.cpp", 64, &v8);
  if (*(&v8 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v8 + 1));
  }

  return v6;
}

void sub_186121C9C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::ICompositeNode_v1,AdobeXMPCore::INode_v1 *,AdobeXMPCore::INode_v1,std::shared_ptr<AdobeXMPCore::IPath_v1 const> const&>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  v11 = 0;
  v12 = 0;
  v7 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v7 + a3);
  }

  a3(&v11, v7, a7);
  if (v11)
  {
    v8 = (*(*&v11[*(*v11 - 56)] + 16))(&v11[*(*v11 - 56)]);
    (*(*v8 + 40))(v8);
    v9 = (*(*&v11[*(*v11 - 64)] + 16))(&v11[*(*v11 - 64)], 0x634E6F6465202020, 1);
  }

  else
  {
    v9 = 0;
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  }

  return v9;
}

void sub_186121E50(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x186121E34);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

void AdobeXMPCore_Int::ICompositeNode_I::appendNode(AdobeXMPCore_Int::ICompositeNode_I *this, AdobeXMPCore::INode_v1 *a2, const AdobeXMPCommon::IError_v1 **a3)
{
  v5 = *(*this - 688);
  AdobeXMPCore::INode_v1::MakeShared(a2, a2, &v6);
  AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCore::ICompositeNode_v1,std::shared_ptr<AdobeXMPCore::INode_v1> const&>(a3, this + v5, AdobeXMPCore::ICompositeNode_v1::AppendNode, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/ICompositeNode_I.cpp", 69, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v7);
  }
}

void sub_186122098(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCore::ICompositeNode_v1,std::shared_ptr<AdobeXMPCore::INode_v1> const&>(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  v7 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v7 + a3);
  }

  return a3(v7, a7);
}

void AdobeXMPCore_Int::ICompositeNode_I::insertNodeAtPath(AdobeXMPCore_Int::ICompositeNode_I *this, AdobeXMPCore::INode_v1 *a2, const AdobeXMPCore::IPath_v1 *a3, const AdobeXMPCommon::IError_v1 **a4)
{
  v7 = *(*this - 688);
  AdobeXMPCore::INode_v1::MakeShared(a2, a2, &v10);
  AdobeXMPCore::IPath_v1::MakeShared(a3, v8, &v12);
  v9 = v12;
  AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCore::ICompositeNode_v1,std::shared_ptr<AdobeXMPCore::INode_v1> const&,std::shared_ptr<AdobeXMPCore::IPath_v1 const> const&>(a4, this + v7, AdobeXMPCore::ICompositeNode_v1::InsertNodeAtPath, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/ICompositeNode_I.cpp", 74, &v10, &v9);
  if (*(&v9 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v9 + 1));
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v11);
  }
}

void sub_1861222F8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCore::ICompositeNode_v1,std::shared_ptr<AdobeXMPCore::INode_v1> const&,std::shared_ptr<AdobeXMPCore::IPath_v1 const> const&>(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  *a1 = 0;
  v9 = (a2 + (a4 >> 1));
  if (a4)
  {
    v8 = *(*v9 + a3);
  }

  return v8(v9, a7, a8);
}

uint64_t AdobeXMPCore_Int::ICompositeNode_I::replaceNodeAtPath(AdobeXMPCore_Int::ICompositeNode_I *this, AdobeXMPCore::INode_v1 *a2, const AdobeXMPCore::IPath_v1 *a3, const AdobeXMPCommon::IError_v1 **a4)
{
  v7 = *(*this - 688);
  AdobeXMPCore::INode_v1::MakeShared(a2, a2, &v12);
  AdobeXMPCore::IPath_v1::MakeShared(a3, v8, &v14);
  v11 = v14;
  v9 = AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::ICompositeNode_v1,AdobeXMPCore::INode_v1 *,AdobeXMPCore::INode_v1,std::shared_ptr<AdobeXMPCore::INode_v1> const&,std::shared_ptr<AdobeXMPCore::IPath_v1 const> const&>(a4, this + v7, AdobeXMPCore::ICompositeNode_v1::ReplaceNodeAtPath, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/ICompositeNode_I.cpp", 79, &v12, &v11);
  if (*(&v11 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v11 + 1));
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v13);
  }

  return v9;
}

void sub_18612257C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::ICompositeNode_v1,AdobeXMPCore::INode_v1 *,AdobeXMPCore::INode_v1,std::shared_ptr<AdobeXMPCore::INode_v1> const&,std::shared_ptr<AdobeXMPCore::IPath_v1 const> const&>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  *a1 = 0;
  v13 = 0;
  v14 = 0;
  v9 = (a2 + (a4 >> 1));
  if (a4)
  {
    v8 = *(*v9 + a3);
  }

  v8(&v13, v9, a7, a8);
  if (v13)
  {
    v10 = (*(*&v13[*(*v13 - 56)] + 16))(&v13[*(*v13 - 56)]);
    (*(*v10 + 40))(v10);
    v11 = (*(*&v13[*(*v13 - 64)] + 16))(&v13[*(*v13 - 64)], 0x634E6F6465202020, 1);
  }

  else
  {
    v11 = 0;
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
  }

  return v11;
}

void sub_186122720(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x186122704);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::ICompositeNode_I::removeNodeAtPath(AdobeXMPCore_Int::ICompositeNode_I *this, const AdobeXMPCore::IPath_v1 *a2, const AdobeXMPCommon::IError_v1 **a3)
{
  v5 = *(*this - 688);
  AdobeXMPCore::IPath_v1::MakeShared(a2, a2, &v9);
  v8 = v9;
  v6 = AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::ICompositeNode_v1,AdobeXMPCore::INode_v1 *,AdobeXMPCore::INode_v1,std::shared_ptr<AdobeXMPCore::IPath_v1 const> const&>(a3, this + v5, AdobeXMPCore::ICompositeNode_v1::RemoveNodeAtPath, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/ICompositeNode_I.cpp", 84, &v8);
  if (*(&v8 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v8 + 1));
  }

  return v6;
}

void sub_1861229A4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::ICompositeNode_v1,AdobeXMPCore::INodeIterator_v1 *,AdobeXMPCore::INodeIterator_v1>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *), uint64_t a4)
{
  *a1 = 0;
  v8 = 0;
  v9 = 0;
  v4 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v4 + a3);
  }

  a3(&v8, v4);
  if (v8)
  {
    v5 = (*(*&v8[*(*v8 - 56)] + 16))(&v8[*(*v8 - 56)]);
    (*(*v5 + 40))(v5);
    v6 = (*(*&v8[*(*v8 - 64)] + 16))(&v8[*(*v8 - 64)], 0x634E6F6465497420, 1);
  }

  else
  {
    v6 = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  return v6;
}

void sub_186122BD8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x186122BBCLL);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t UTF8_to_UTF16Nat(uint64_t result, unint64_t a2, unsigned __int16 *a3, unint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v10 = a2;
  v11 = a4;
  if (a2)
  {
    v10 = a2;
    v11 = a4;
    if (a4)
    {
      v13 = result;
      v11 = a4;
      v10 = a2;
      do
      {
        v14 = 0;
        if (v10 >= v11)
        {
          v15 = v11;
        }

        else
        {
          v15 = v10;
        }

        while (1)
        {
          v16 = *v13;
          if (v16 < 0)
          {
            break;
          }

          *a3++ = v16;
          ++v13;
          if (v15 == ++v14)
          {
            v14 = v15;
            break;
          }
        }

        v11 -= v14;
        v10 -= v14;
        if (v10 && v11)
        {
          do
          {
            v21 = 0;
            v19 = 0;
            v20 = 0;
            if ((*v13 & 0x80000000) == 0)
            {
              break;
            }

            result = CodePoint_from_UTF8_Multi(v13, v10, &v21, &v20);
            v17 = v20;
            if (!v20)
            {
              goto LABEL_22;
            }

            result = v21;
            if (HIWORD(v21))
            {
              result = CodePoint_to_UTF16Nat_Surrogate(v21, a3, v11, &v19);
              v18 = v19;
              if (!v19)
              {
                goto LABEL_22;
              }

              v17 = v20;
            }

            else
            {
              *a3 = v21;
              v18 = 1;
            }

            v13 += v17;
            v11 -= v18;
            a3 += v18;
            v10 -= v17;
            if (!v10)
            {
              break;
            }
          }

          while (v11);
        }
      }

      while (v10 && v11);
    }
  }

LABEL_22:
  *a5 = a2 - v10;
  *a6 = a4 - v11;
  return result;
}

_BYTE *UTF8_to_UTF32Nat(_BYTE *result, unint64_t a2, unsigned int *a3, unint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v10 = a2;
  v11 = a4;
  if (a2)
  {
    v10 = a2;
    v11 = a4;
    if (a4)
    {
      v13 = result;
      v11 = a4;
      v10 = a2;
      do
      {
        v14 = 0;
        if (v10 >= v11)
        {
          v15 = v11;
        }

        else
        {
          v15 = v10;
        }

        while (1)
        {
          v16 = *v13;
          if ((v16 & 0x80000000) != 0)
          {
            break;
          }

          *a3++ = v16;
          ++v13;
          if (v15 == ++v14)
          {
            v14 = v15;
            break;
          }
        }

        v17 = v11 - v14;
        v10 -= v14;
        if (v10 && v17)
        {
          while (1)
          {
            v19 = 0;
            if ((*v13 & 0x80000000) == 0)
            {
              break;
            }

            result = CodePoint_from_UTF8_Multi(v13, v10, a3, &v19);
            if (!v19)
            {
              v11 = v17;
              goto LABEL_25;
            }

            v10 -= v19;
            v13 += v19;
            v11 = v17 - 1;
            ++a3;
            if (v10)
            {
              v18 = v17 == 1;
            }

            else
            {
              v18 = 1;
            }

            --v17;
            if (v18)
            {
              goto LABEL_21;
            }
          }
        }

        v11 = v17;
LABEL_21:
        ;
      }

      while (v10 && v11);
    }
  }

LABEL_25:
  *a5 = a2 - v10;
  *a6 = a4 - v11;
  return result;
}

uint64_t UTF16Nat_to_UTF8(uint64_t result, unint64_t a2, unsigned __int8 *a3, unint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v10 = a4;
  v11 = a2;
  if (a2)
  {
    v10 = a4;
    v11 = a2;
    if (a4)
    {
      v13 = result;
      v11 = a2;
      v10 = a4;
      do
      {
        v14 = 0;
        if (v11 >= v10)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        while (1)
        {
          v16 = *v13;
          if (v16 > 0x7F)
          {
            break;
          }

          *a3++ = v16;
          ++v13;
          if (v15 == ++v14)
          {
            v14 = v15;
            break;
          }
        }

        v10 -= v14;
        v11 -= v14;
        if (v11 && v10)
        {
          do
          {
            v20 = 0;
            result = *v13;
            if (result < 0x80 || (result & 0xF800) == 55296)
            {
              break;
            }

            result = CodePoint_to_UTF8_Multi(result, a3, v10, &v20);
            if (!v20)
            {
              goto LABEL_28;
            }

            v10 -= v20;
            ++v13;
            a3 += v20;
            if (!--v11)
            {
              break;
            }
          }

          while (v10);
        }

        for (; v11 && v10; v11 -= v20)
        {
          v19 = 0;
          v20 = 0;
          v18 = 0;
          if (*v13 - 57344 <= 0xFFFFF7FF)
          {
            break;
          }

          result = CodePoint_from_UTF16Nat_Surrogate(v13, v11, &v19, &v20);
          if (!v20)
          {
            goto LABEL_28;
          }

          result = CodePoint_to_UTF8_Multi(v19, a3, v10, &v18);
          if (!v18)
          {
            goto LABEL_28;
          }

          v13 += v20;
          v10 -= v18;
          a3 += v18;
        }
      }

      while (v11 && v10);
    }
  }

LABEL_28:
  *a5 = a2 - v11;
  *a6 = a4 - v10;
  return result;
}

uint64_t UTF32Nat_to_UTF8(uint64_t result, unint64_t a2, unsigned __int8 *a3, unint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v10 = a2;
  v11 = a4;
  if (a2)
  {
    v10 = a2;
    v11 = a4;
    if (a4)
    {
      v13 = result;
      v11 = a4;
      v10 = a2;
      do
      {
        v14 = 0;
        if (v10 >= v11)
        {
          v15 = v11;
        }

        else
        {
          v15 = v10;
        }

        while (*v13 <= 0x7Fu)
        {
          *a3++ = *v13++;
          if (v15 == ++v14)
          {
            v14 = v15;
            break;
          }
        }

        v11 -= v14;
        v10 -= v14;
        if (v10 && v11)
        {
          do
          {
            v16 = 0;
            result = *v13;
            if (result <= 0x7F)
            {
              break;
            }

            result = CodePoint_to_UTF8_Multi(result, a3, v11, &v16);
            if (!v16)
            {
              goto LABEL_18;
            }

            v11 -= v16;
            ++v13;
            a3 += v16;
            if (!--v10)
            {
              break;
            }
          }

          while (v11);
        }
      }

      while (v10 && v11);
    }
  }

LABEL_18:
  *a5 = a2 - v10;
  *a6 = a4 - v11;
  return result;
}

uint64_t CodePoint_to_UTF16Nat(uint64_t result, unsigned __int16 *a2, unint64_t a3, unint64_t *a4)
{
  if (!a3)
  {
    v5 = 0;
LABEL_10:
    *a4 = v5;
    return result;
  }

  if (result >> 11 <= 0x1A)
  {
LABEL_9:
    *a2 = result;
    v5 = 1;
    goto LABEL_10;
  }

  if (!WORD1(result))
  {
    if (result >> 13 <= 6)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 4;
      exception[1] = "Bad UTF-32 - surrogate code point";
      *(exception + 16) = 0;
    }

    goto LABEL_9;
  }

  return CodePoint_to_UTF16Nat_Surrogate(result, a2, a3, a4);
}

uint64_t CodePoint_to_UTF16Swp(uint64_t result, unsigned __int16 *a2, unint64_t a3, unint64_t *a4)
{
  if (!a3)
  {
    v5 = 0;
LABEL_10:
    *a4 = v5;
    return result;
  }

  if (result >> 11 <= 0x1A)
  {
LABEL_9:
    *a2 = bswap32(result) >> 16;
    v5 = 1;
    goto LABEL_10;
  }

  if (!WORD1(result))
  {
    if (result >> 13 <= 6)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 4;
      exception[1] = "Bad UTF-32 - surrogate code point";
      *(exception + 16) = 0;
    }

    goto LABEL_9;
  }

  return CodePoint_to_UTF16Swp_Surrogate(result, a2, a3, a4);
}

unsigned __int16 *CodePoint_from_UTF16Nat(unsigned __int16 *result, unint64_t a2, unsigned int *a3, unint64_t *a4)
{
  if (a2)
  {
    v4 = *result;
    if ((v4 & 0xF800) == 0xD800)
    {
      return CodePoint_from_UTF16Nat_Surrogate(result, a2, a3, a4);
    }

    *a3 = v4;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  *a4 = v5;
  return result;
}

unsigned __int16 *CodePoint_from_UTF16Swp(unsigned __int16 *result, unint64_t a2, unsigned int *a3, unint64_t *a4)
{
  if (a2)
  {
    v4 = bswap32(*result);
    if (v4 >> 27 == 27)
    {
      return CodePoint_from_UTF16Swp_Surrogate(result, a2, a3, a4);
    }

    *a3 = HIWORD(v4);
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  *a4 = v5;
  return result;
}

uint64_t UTF8_to_UTF16Swp(uint64_t result, unint64_t a2, unsigned __int16 *a3, unint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v10 = a2;
  v11 = a4;
  if (a2)
  {
    v10 = a2;
    v11 = a4;
    if (a4)
    {
      v13 = result;
      v11 = a4;
      v10 = a2;
      do
      {
        v14 = 0;
        if (v10 >= v11)
        {
          v15 = v11;
        }

        else
        {
          v15 = v10;
        }

        while (1)
        {
          v16 = *v13;
          if (v16 < 0)
          {
            break;
          }

          *a3++ = v16 << 8;
          ++v13;
          if (v15 == ++v14)
          {
            v14 = v15;
            break;
          }
        }

        v11 -= v14;
        v10 -= v14;
        if (v10 && v11)
        {
          do
          {
            v21 = 0;
            v19 = 0;
            v20 = 0;
            if ((*v13 & 0x80000000) == 0)
            {
              break;
            }

            result = CodePoint_from_UTF8_Multi(v13, v10, &v21, &v20);
            v17 = v20;
            if (!v20)
            {
              goto LABEL_22;
            }

            result = v21;
            if (HIWORD(v21))
            {
              result = CodePoint_to_UTF16Swp_Surrogate(v21, a3, v11, &v19);
              v18 = v19;
              if (!v19)
              {
                goto LABEL_22;
              }

              v17 = v20;
            }

            else
            {
              *a3 = bswap32(v21) >> 16;
              v18 = 1;
            }

            v13 += v17;
            v11 -= v18;
            a3 += v18;
            v10 -= v17;
            if (!v10)
            {
              break;
            }
          }

          while (v11);
        }
      }

      while (v10 && v11);
    }
  }

LABEL_22:
  *a5 = a2 - v10;
  *a6 = a4 - v11;
  return result;
}

_BYTE *UTF8_to_UTF32Swp(_BYTE *result, unint64_t a2, unsigned int *a3, unint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v10 = a2;
  v11 = a4;
  if (a2)
  {
    v10 = a2;
    v11 = a4;
    if (a4)
    {
      v13 = result;
      v11 = a4;
      v10 = a2;
      do
      {
        v14 = 0;
        if (v10 >= v11)
        {
          v15 = v11;
        }

        else
        {
          v15 = v10;
        }

        while (1)
        {
          v16 = *v13;
          if (v16 < 0)
          {
            break;
          }

          *a3++ = v16 << 24;
          ++v13;
          if (v15 == ++v14)
          {
            v14 = v15;
            break;
          }
        }

        v17 = v11 - v14;
        v10 -= v14;
        if (v10 && v17)
        {
          while (1)
          {
            v21 = 0;
            v20 = 0;
            if ((*v13 & 0x80000000) == 0)
            {
              break;
            }

            result = CodePoint_from_UTF8_Multi(v13, v10, &v20, &v21);
            v18 = v21;
            if (!v21)
            {
              v11 = v17;
              goto LABEL_25;
            }

            *a3++ = bswap32(v20);
            v10 -= v18;
            v13 += v18;
            v11 = v17 - 1;
            if (v10)
            {
              v19 = v17 == 1;
            }

            else
            {
              v19 = 1;
            }

            --v17;
            if (v19)
            {
              goto LABEL_21;
            }
          }
        }

        v11 = v17;
LABEL_21:
        ;
      }

      while (v10 && v11);
    }
  }

LABEL_25:
  *a5 = a2 - v10;
  *a6 = a4 - v11;
  return result;
}

uint64_t UTF16Swp_to_UTF8(uint64_t result, unint64_t a2, unsigned __int8 *a3, unint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v10 = a4;
  v11 = a2;
  if (a2)
  {
    v10 = a4;
    v11 = a2;
    if (a4)
    {
      v13 = result;
      v11 = a2;
      v10 = a4;
      do
      {
        v14 = 0;
        if (v11 >= v10)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        while (1)
        {
          v16 = bswap32(*v13) >> 16;
          if (v16 > 0x7F)
          {
            break;
          }

          *a3++ = v16;
          ++v13;
          if (v15 == ++v14)
          {
            v14 = v15;
            break;
          }
        }

        v10 -= v14;
        v11 -= v14;
        if (v11 && v10)
        {
          do
          {
            v20 = 0;
            result = bswap32(*v13) >> 16;
            if (result < 0x80 || (result & 0xF800) == 55296)
            {
              break;
            }

            result = CodePoint_to_UTF8_Multi(result, a3, v10, &v20);
            if (!v20)
            {
              goto LABEL_28;
            }

            v10 -= v20;
            ++v13;
            a3 += v20;
            if (!--v11)
            {
              break;
            }
          }

          while (v10);
        }

        for (; v11 && v10; v11 -= v20)
        {
          v19 = 0;
          v20 = 0;
          v18 = 0;
          if ((((*v13 << 8) + 0x2000) >> 11) <= 0x1Eu)
          {
            break;
          }

          result = CodePoint_from_UTF16Swp_Surrogate(v13, v11, &v19, &v20);
          if (!v20)
          {
            goto LABEL_28;
          }

          result = CodePoint_to_UTF8_Multi(v19, a3, v10, &v18);
          if (!v18)
          {
            goto LABEL_28;
          }

          v13 += v20;
          v10 -= v18;
          a3 += v18;
        }
      }

      while (v11 && v10);
    }
  }

LABEL_28:
  *a5 = a2 - v11;
  *a6 = a4 - v10;
  return result;
}

uint64_t UTF32Swp_to_UTF8(uint64_t result, unint64_t a2, unsigned __int8 *a3, unint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v10 = a2;
  v11 = a4;
  if (a2)
  {
    v10 = a2;
    v11 = a4;
    if (a4)
    {
      v13 = result;
      v11 = a4;
      v10 = a2;
      do
      {
        v14 = 0;
        if (v10 >= v11)
        {
          v15 = v11;
        }

        else
        {
          v15 = v10;
        }

        while (1)
        {
          v16 = bswap32(*v13);
          if (v16 > 0x7F)
          {
            break;
          }

          *a3++ = v16;
          ++v13;
          if (v15 == ++v14)
          {
            v14 = v15;
            break;
          }
        }

        v11 -= v14;
        v10 -= v14;
        if (v10 && v11)
        {
          do
          {
            v17 = 0;
            result = bswap32(*v13);
            if (result <= 0x7F)
            {
              break;
            }

            result = CodePoint_to_UTF8_Multi(result, a3, v11, &v17);
            if (!v17)
            {
              goto LABEL_18;
            }

            v11 -= v17;
            ++v13;
            a3 += v17;
            if (!--v10)
            {
              break;
            }
          }

          while (v11);
        }
      }

      while (v10 && v11);
    }
  }

LABEL_18:
  *a5 = a2 - v10;
  *a6 = a4 - v11;
  return result;
}

unsigned __int16 *UTF16Nat_to_UTF32Nat(unsigned __int16 *result, unint64_t a2, unsigned int *a3, unint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v10 = a2;
  v11 = a4;
  if (a2)
  {
    v10 = a2;
    v11 = a4;
    if (a4)
    {
      v13 = result;
      v11 = a4;
      v10 = a2;
      do
      {
        v14 = 0;
        if (v10 >= v11)
        {
          v15 = v11;
        }

        else
        {
          v15 = v10;
        }

        while (1)
        {
          v16 = *v13;
          if ((v16 & 0xF800) == 0xD800)
          {
            break;
          }

          *a3++ = v16;
          ++v13;
          if (v15 == ++v14)
          {
            v14 = v15;
            break;
          }
        }

        v17 = v11 - v14;
        v10 -= v14;
        if (v10 && v17)
        {
          while (1)
          {
            v19 = 0;
            if (*v13 - 57344 <= 0xFFFFF7FF)
            {
              break;
            }

            result = CodePoint_from_UTF16Nat_Surrogate(v13, v10, a3, &v19);
            if (!v19)
            {
              v11 = v17;
              goto LABEL_25;
            }

            v10 -= v19;
            v13 += v19;
            v11 = v17 - 1;
            ++a3;
            if (v10)
            {
              v18 = v17 == 1;
            }

            else
            {
              v18 = 1;
            }

            --v17;
            if (v18)
            {
              goto LABEL_21;
            }
          }
        }

        v11 = v17;
LABEL_21:
        ;
      }

      while (v10 && v11);
    }
  }

LABEL_25:
  *a5 = a2 - v10;
  *a6 = a4 - v11;
  return result;
}

unsigned __int16 *UTF16Nat_to_UTF32Swp(unsigned __int16 *result, unint64_t a2, unsigned int *a3, unint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v10 = a2;
  v11 = a4;
  if (a2)
  {
    v10 = a2;
    v11 = a4;
    if (a4)
    {
      v13 = result;
      v11 = a4;
      v10 = a2;
      do
      {
        v14 = 0;
        if (v10 >= v11)
        {
          v15 = v11;
        }

        else
        {
          v15 = v10;
        }

        while (1)
        {
          v16 = *v13;
          if ((v16 & 0xF800) == 0xD800)
          {
            break;
          }

          *a3++ = bswap32(v16);
          ++v13;
          if (v15 == ++v14)
          {
            v14 = v15;
            break;
          }
        }

        v17 = v11 - v14;
        v10 -= v14;
        if (v10 && v17)
        {
          while (1)
          {
            v21 = 0;
            v20 = 0;
            if (*v13 - 57344 <= 0xFFFFF7FF)
            {
              break;
            }

            result = CodePoint_from_UTF16Nat_Surrogate(v13, v10, &v20, &v21);
            v18 = v21;
            if (!v21)
            {
              v11 = v17;
              goto LABEL_25;
            }

            *a3++ = bswap32(v20);
            v10 -= v18;
            v13 += v18;
            v11 = v17 - 1;
            if (v10)
            {
              v19 = v17 == 1;
            }

            else
            {
              v19 = 1;
            }

            --v17;
            if (v19)
            {
              goto LABEL_21;
            }
          }
        }

        v11 = v17;
LABEL_21:
        ;
      }

      while (v10 && v11);
    }
  }

LABEL_25:
  *a5 = a2 - v10;
  *a6 = a4 - v11;
  return result;
}

unsigned __int16 *UTF16Swp_to_UTF32Nat(unsigned __int16 *result, unint64_t a2, unsigned int *a3, unint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v10 = a2;
  v11 = a4;
  if (a2)
  {
    v10 = a2;
    v11 = a4;
    if (a4)
    {
      v13 = result;
      v11 = a4;
      v10 = a2;
      do
      {
        v14 = 0;
        if (v10 >= v11)
        {
          v15 = v11;
        }

        else
        {
          v15 = v10;
        }

        while (1)
        {
          v16 = bswap32(*v13);
          if (v16 >> 27 == 27)
          {
            break;
          }

          *a3++ = HIWORD(v16);
          ++v13;
          if (v15 == ++v14)
          {
            v14 = v15;
            break;
          }
        }

        v17 = v11 - v14;
        v10 -= v14;
        if (v10 && v17)
        {
          while (1)
          {
            v19 = 0;
            if ((((*v13 << 8) + 0x2000) >> 11) <= 0x1Eu)
            {
              break;
            }

            result = CodePoint_from_UTF16Swp_Surrogate(v13, v10, a3, &v19);
            if (!v19)
            {
              v11 = v17;
              goto LABEL_25;
            }

            v10 -= v19;
            v13 += v19;
            v11 = v17 - 1;
            ++a3;
            if (v10)
            {
              v18 = v17 == 1;
            }

            else
            {
              v18 = 1;
            }

            --v17;
            if (v18)
            {
              goto LABEL_21;
            }
          }
        }

        v11 = v17;
LABEL_21:
        ;
      }

      while (v10 && v11);
    }
  }

LABEL_25:
  *a5 = a2 - v10;
  *a6 = a4 - v11;
  return result;
}

unsigned __int16 *UTF16Swp_to_UTF32Swp(unsigned __int16 *result, unint64_t a2, unsigned int *a3, unint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v10 = a2;
  v11 = a4;
  if (a2)
  {
    v10 = a2;
    v11 = a4;
    if (a4)
    {
      v13 = result;
      v11 = a4;
      v10 = a2;
      do
      {
        v14 = 0;
        if (v10 >= v11)
        {
          v15 = v11;
        }

        else
        {
          v15 = v10;
        }

        while (1)
        {
          v16 = *v13;
          if ((v16 & 0xF8) == 0xD8)
          {
            break;
          }

          *a3++ = v16 << 16;
          ++v13;
          if (v15 == ++v14)
          {
            v14 = v15;
            break;
          }
        }

        v11 -= v14;
        v10 -= v14;
        if (v10 && v11)
        {
          do
          {
            v19 = 0;
            v18 = 0;
            if ((((*v13 << 8) + 0x2000) >> 11) <= 0x1Eu)
            {
              break;
            }

            result = CodePoint_from_UTF16Swp_Surrogate(v13, v10, &v18, &v19);
            v17 = v19;
            if (!v19)
            {
              goto LABEL_18;
            }

            *a3++ = bswap32(v18);
            v13 += v17;
            --v11;
            v10 -= v17;
            if (!v10)
            {
              break;
            }
          }

          while (v11);
        }
      }

      while (v10 && v11);
    }
  }

LABEL_18:
  *a5 = a2 - v10;
  *a6 = a4 - v11;
  return result;
}

uint64_t UTF32Nat_to_UTF16Nat(uint64_t result, unint64_t a2, unsigned __int16 *a3, unint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v9 = a2;
  v10 = a4;
  if (a2)
  {
    v9 = a2;
    v10 = a4;
    if (a4)
    {
      v12 = result;
      v10 = a4;
      v9 = a2;
      do
      {
        v13 = 0;
        if (v9 >= v10)
        {
          v14 = v10;
        }

        else
        {
          v14 = v9;
        }

        while (!HIWORD(*v12))
        {
          *a3++ = *v12++;
          if (v14 == ++v13)
          {
            v13 = v14;
            break;
          }
        }

        v15 = v9 - v13;
        if (v9 == v13 || v10 == v13)
        {
          v9 -= v13;
          v10 -= v13;
          if (!v15)
          {
            break;
          }
        }

        else
        {
          v16 = -v9;
          while (1)
          {
            v20 = 0;
            result = *v12;
            if (!WORD1(result))
            {
              break;
            }

            result = CodePoint_to_UTF16Nat_Surrogate(result, a3, v10 - v13, &v20);
            if (!v20)
            {
              v10 -= v13;
              v9 = -(v13 + v16);
              goto LABEL_25;
            }

            ++v12;
            a3 += 2;
            v10 -= 2;
            v17 = v16 + 1;
            if (~v13 != v16)
            {
              ++v16;
              if (v10 != v13)
              {
                continue;
              }
            }

            v10 -= v13;
            v18 = v13 + v17;
            goto LABEL_21;
          }

          v10 -= v13;
          v18 = v13 + v16;
LABEL_21:
          v9 = -v18;
          if (!v9)
          {
            break;
          }
        }
      }

      while (v10);
    }
  }

LABEL_25:
  *a5 = a2 - v9;
  *a6 = a4 - v10;
  return result;
}

uint64_t UTF32Nat_to_UTF16Swp(uint64_t result, unint64_t a2, unsigned __int16 *a3, unint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v9 = a2;
  v10 = a4;
  if (a2)
  {
    v9 = a2;
    v10 = a4;
    if (a4)
    {
      v12 = result;
      v10 = a4;
      v9 = a2;
      do
      {
        v13 = 0;
        if (v9 >= v10)
        {
          v14 = v10;
        }

        else
        {
          v14 = v9;
        }

        while (!HIWORD(*v12))
        {
          *a3++ = bswap32(*v12++) >> 16;
          if (v14 == ++v13)
          {
            v13 = v14;
            break;
          }
        }

        v15 = v9 - v13;
        if (v9 == v13 || v10 == v13)
        {
          v9 -= v13;
          v10 -= v13;
          if (!v15)
          {
            break;
          }
        }

        else
        {
          v16 = -v9;
          while (1)
          {
            v20 = 0;
            result = *v12;
            if (!WORD1(result))
            {
              break;
            }

            result = CodePoint_to_UTF16Swp_Surrogate(result, a3, v10 - v13, &v20);
            if (!v20)
            {
              v10 -= v13;
              v9 = -(v13 + v16);
              goto LABEL_25;
            }

            ++v12;
            a3 += 2;
            v10 -= 2;
            v17 = v16 + 1;
            if (~v13 != v16)
            {
              ++v16;
              if (v10 != v13)
              {
                continue;
              }
            }

            v10 -= v13;
            v18 = v13 + v17;
            goto LABEL_21;
          }

          v10 -= v13;
          v18 = v13 + v16;
LABEL_21:
          v9 = -v18;
          if (!v9)
          {
            break;
          }
        }
      }

      while (v10);
    }
  }

LABEL_25:
  *a5 = a2 - v9;
  *a6 = a4 - v10;
  return result;
}

uint64_t UTF32Swp_to_UTF16Nat(uint64_t result, unint64_t a2, unsigned __int16 *a3, unint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v9 = a2;
  v10 = a4;
  if (a2)
  {
    v9 = a2;
    v10 = a4;
    if (a4)
    {
      v12 = result;
      v10 = a4;
      v9 = a2;
      do
      {
        v13 = 0;
        if (v9 >= v10)
        {
          v14 = v10;
        }

        else
        {
          v14 = v9;
        }

        while (1)
        {
          v15 = bswap32(*v12);
          if (HIWORD(v15))
          {
            break;
          }

          *a3++ = v15;
          ++v12;
          if (v14 == ++v13)
          {
            v13 = v14;
            break;
          }
        }

        v16 = v9 - v13;
        if (v9 == v13 || v10 == v13)
        {
          v9 -= v13;
          v10 -= v13;
          if (!v16)
          {
            break;
          }
        }

        else
        {
          v17 = -v9;
          while (1)
          {
            v21 = 0;
            result = bswap32(*v12);
            if (!WORD1(result))
            {
              break;
            }

            result = CodePoint_to_UTF16Nat_Surrogate(result, a3, v10 - v13, &v21);
            if (!v21)
            {
              v10 -= v13;
              v9 = -(v13 + v17);
              goto LABEL_25;
            }

            ++v12;
            a3 += 2;
            v10 -= 2;
            v18 = v17 + 1;
            if (~v13 != v17)
            {
              ++v17;
              if (v10 != v13)
              {
                continue;
              }
            }

            v10 -= v13;
            v19 = v13 + v18;
            goto LABEL_21;
          }

          v10 -= v13;
          v19 = v13 + v17;
LABEL_21:
          v9 = -v19;
          if (!v9)
          {
            break;
          }
        }
      }

      while (v10);
    }
  }

LABEL_25:
  *a5 = a2 - v9;
  *a6 = a4 - v10;
  return result;
}

uint64_t UTF32Swp_to_UTF16Swp(uint64_t result, unint64_t a2, unsigned __int16 *a3, unint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v8 = a4;
  v9 = a2;
  if (a2)
  {
    v8 = a4;
    v9 = a2;
    if (a4)
    {
      v11 = result;
      v12 = swap32to16Offset;
      v9 = a2;
      v8 = a4;
      do
      {
        v13 = 0;
        if (v9 >= v8)
        {
          v14 = v8;
        }

        else
        {
          v14 = v9;
        }

        while (!(bswap32(*v11) >> 16))
        {
          *a3++ = *(v11++ + v12);
          if (v14 == ++v13)
          {
            v13 = v14;
            break;
          }
        }

        v15 = v9 - v13;
        if (v9 == v13 || v8 == v13)
        {
          v8 -= v13;
          v9 -= v13;
          if (!v15)
          {
            break;
          }
        }

        else
        {
          v16 = -v9;
          while (1)
          {
            v21 = 0;
            result = bswap32(*v11);
            if (!WORD1(result))
            {
              break;
            }

            result = CodePoint_to_UTF16Swp_Surrogate(result, a3, v8 - v13, &v21);
            if (!v21)
            {
              v9 = -(v13 + v16);
              v8 -= v13;
              goto LABEL_25;
            }

            ++v11;
            a3 += 2;
            v8 -= 2;
            v17 = v16 + 1;
            if (~v13 != v16)
            {
              ++v16;
              if (v8 != v13)
              {
                continue;
              }
            }

            v18 = v13 + v17;
            goto LABEL_21;
          }

          v18 = v13 + v16;
LABEL_21:
          v9 = -v18;
          v8 -= v13;
          if (!v9)
          {
            break;
          }
        }
      }

      while (v8);
    }
  }

LABEL_25:
  *a5 = a2 - v9;
  *a6 = a4 - v8;
  return result;
}

void ToUTF16(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v15 = *MEMORY[0x1E69E9840];
  v8 = &UTF8_to_UTF16LE;
  if (v9)
  {
    v8 = &UTF8_to_UTF16BE;
  }

  v10 = *v8;
  std::string::erase(v2, 0, 0xFFFFFFFFFFFFFFFFLL);
  std::string::reserve(v3, 2 * v5);
  if (v5)
  {
    bzero(__s, 0x4000uLL);
    v12 = 0;
    v13 = 0;
    do
    {
      v10(v7, v5, __s, 0x2000, &v13, &v12);
      if (!v12)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 205;
        exception[1] = "Incomplete Unicode at end of string";
        *(exception + 16) = 0;
      }

      std::string::append(v3, __s, 2 * v12);
      v7 += v13;
      v5 -= v13;
    }

    while (v5);
  }
}

void ToUTF32(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v15 = *MEMORY[0x1E69E9840];
  v8 = &UTF8_to_UTF32LE;
  if (v9)
  {
    v8 = &UTF8_to_UTF32BE;
  }

  v10 = *v8;
  std::string::erase(v2, 0, 0xFFFFFFFFFFFFFFFFLL);
  std::string::reserve(v3, 4 * v5);
  if (v5)
  {
    bzero(__s, 0x4000uLL);
    v12 = 0;
    v13 = 0;
    do
    {
      v10(v7, v5, __s, 4096, &v13, &v12);
      if (!v12)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 205;
        exception[1] = "Incomplete Unicode at end of string";
        *(exception + 16) = 0;
      }

      std::string::append(v3, __s, 4 * v12);
      v7 += v13;
      v5 -= v13;
    }

    while (v5);
  }
}

void FromUTF16(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v15 = *MEMORY[0x1E69E9840];
  v8 = &UTF16LE_to_UTF8;
  if (v9)
  {
    v8 = &UTF16BE_to_UTF8;
  }

  v10 = *v8;
  std::string::erase(v2, 0, 0xFFFFFFFFFFFFFFFFLL);
  std::string::reserve(v3, 2 * v5);
  if (v5)
  {
    bzero(__s, 0x4000uLL);
    __n = 0;
    v13 = 0;
    do
    {
      v10(v7, v5, __s, 0x4000, &v13, &__n);
      if (!__n)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 205;
        exception[1] = "Incomplete Unicode at end of string";
        *(exception + 16) = 0;
      }

      std::string::append(v3, __s, __n);
      v7 += 2 * v13;
      v5 -= v13;
    }

    while (v5);
  }
}

uint64_t CodePoint_to_UTF8_Multi(uint64_t result, unsigned __int8 *a2, unint64_t a3, unint64_t *a4)
{
  if (result >= 0x110000)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    v10 = "Bad UTF-32 - out of range";
    goto LABEL_16;
  }

  if ((result & 0x1FF800) == 0xD800)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    v10 = "Bad UTF-32 - surrogate code point";
LABEL_16:
    exception[1] = v10;
    *(exception + 16) = 0;
  }

  v4 = 0;
  if (result)
  {
    v5 = result;
    do
    {
      ++v4;
      v6 = v5 >= 0x3F;
      v7 = v5 == 63;
      v5 >>= 6;
    }

    while (!v7 && v6);
  }

  if (result >> (6 * v4 - 6) > (0x80u >> v4) - 1)
  {
    ++v4;
  }

  if (v4 <= a3)
  {
    v8 = v4 - 1;
    if (v4 != 1)
    {
      do
      {
        a2[v8] = result & 0x3F | 0x80;
        result = result >> 6;
        --v8;
      }

      while (v8);
    }

    *a2 = result | (-1 << (8 - v4));
  }

  else
  {
    v4 = 0;
  }

  *a4 = v4;
  return result;
}

char *CodePoint_from_UTF8(char *result, unint64_t a2, unsigned int *a3, unint64_t *a4)
{
  if (!a2)
  {
    v5 = 0;
    goto LABEL_5;
  }

  v4 = *result;
  if ((v4 & 0x80000000) == 0)
  {
    *a3 = v4;
    v5 = 1;
LABEL_5:
    *a4 = v5;
    return result;
  }

  return CodePoint_from_UTF8_Multi(result, a2, a3, a4);
}

_BYTE *CodePoint_from_UTF8_Multi(_BYTE *result, unint64_t a2, unsigned int *a3, unint64_t *a4)
{
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

  v4 = 0;
  LOBYTE(v5) = *result;
  do
  {
    ++v4;
    v5 = 2 * (v5 & 0x7F);
  }

  while (v5 > 0x7F);
  if (v4 - 5 < 0xFFFFFFFFFFFFFFFDLL)
  {
LABEL_17:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    v11 = "Invalid UTF-8 sequence length";
    goto LABEL_16;
  }

  if (v4 <= a2)
  {
    v6 = *result & ~(-1 << (7 - v4));
    v7 = 1;
    do
    {
      v8 = result[v7];
      if ((v8 & 0xC0) != 0x80)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 4;
        v11 = "Invalid UTF-8 data byte";
        goto LABEL_16;
      }

      v9 = v6 << 6;
      v6 = (v6 << 6) | v8 & 0x3F;
      ++v7;
    }

    while (v4 != v7);
    if (v9 >> 11 < 0x1B)
    {
      goto LABEL_13;
    }

    if (v9 >> 13 <= 6)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 4;
      v11 = "Bad UTF-8 - surrogate code point";
    }

    else
    {
      if (v9 < 0x110000)
      {
LABEL_13:
        *a3 = v6;
        goto LABEL_14;
      }

      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 4;
      v11 = "Bad UTF-8 - out of range";
    }

LABEL_16:
    exception[1] = v11;
    *(exception + 16) = 0;
  }

  v4 = 0;
LABEL_14:
  *a4 = v4;
  return result;
}

uint64_t CodePoint_to_UTF16Nat_Surrogate(uint64_t result, unsigned __int16 *a2, unint64_t a3, unint64_t *a4)
{
  if (result >= 0x110000)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    exception[1] = "Bad UTF-32 - out of range";
    *(exception + 16) = 0;
  }

  if (a3 >= 2)
  {
    *a2 = ((result + 16711680) >> 10) | 0xD800;
    a2[1] = result & 0x3FF | 0xDC00;
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  *a4 = v4;
  return result;
}

unsigned __int16 *CodePoint_from_UTF16Nat_Surrogate(unsigned __int16 *result, unint64_t a2, unsigned int *a3, unint64_t *a4)
{
  v4 = *result;
  if (v4 >> 10 >= 0x37)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    v8 = "Bad UTF-16 - leading low surrogate";
    goto LABEL_9;
  }

  if (a2 >= 2)
  {
    v6 = result[1];
    if ((v6 - 57344) > 0xFFFFFBFF)
    {
      *a3 = (v6 & 0x3FF | ((v4 & 0x3FF) << 10)) + 0x10000;
      v5 = 2;
      goto LABEL_6;
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    v8 = "Bad UTF-16 - missing low surrogate";
LABEL_9:
    exception[1] = v8;
    *(exception + 16) = 0;
  }

  v5 = 0;
LABEL_6:
  *a4 = v5;
  return result;
}

uint64_t CodePoint_to_UTF16Swp_Surrogate(uint64_t result, unsigned __int16 *a2, unint64_t a3, unint64_t *a4)
{
  if (result >= 0x110000)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    exception[1] = "Bad UTF-32 - out of range";
    *(exception + 16) = 0;
  }

  if (a3 >= 2)
  {
    *a2 = bswap32(((result + 16711680) >> 10) | 0xD800) >> 16;
    a2[1] = __rev16(result & 0x3FF | 0xDC00);
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  *a4 = v4;
  return result;
}

unsigned __int16 *CodePoint_from_UTF16Swp_Surrogate(unsigned __int16 *result, unint64_t a2, unsigned int *a3, unint64_t *a4)
{
  v4 = bswap32(*result);
  if (v4 >> 26 >= 0x37)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    v8 = "Bad UTF-16 - leading low surrogate";
    goto LABEL_9;
  }

  if (a2 >= 2)
  {
    v6 = bswap32(result[1]) >> 16;
    if (((v6 + 0x2000) >> 10) > 0x3Eu)
    {
      *a3 = (v6 & 0x3FF | ((HIWORD(v4) & 0x3FF) << 10)) + 0x10000;
      v5 = 2;
      goto LABEL_6;
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    v8 = "Bad UTF-16 - missing low surrogate";
LABEL_9:
    exception[1] = v8;
    *(exception + 16) = 0;
  }

  v5 = 0;
LABEL_6:
  *a4 = v5;
  return result;
}

uint64_t WXMPMeta_RegisterNamespace_1(XMPMeta *a1, char *a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, void), unsigned int *a5)
{
  *a5 = 0;
  if (!a1 || !*a1)
  {
    v9 = "Empty namespace URI";
    goto LABEL_10;
  }

  if (!a2 || !*a2)
  {
    v9 = "Empty suggested prefix";
LABEL_10:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 101;
    exception[1] = v9;
    *(exception + 16) = 0;
  }

  memset(v11, 0, sizeof(v11));
  result = XMPMeta::RegisterNamespace(a1, a2, &v11[4], v11, a5);
  a5[8] = result;
  if (a3)
  {
    return a4(a3, *&v11[4], *v11);
  }

  return result;
}

void sub_186124DB4(void *a1, int a2)
{
  if (a2 == 3)
  {
    v4 = __cxa_begin_catch(a1);
    *(v2 + 32) = *v4;
    v5 = *(v4 + 1);
    if (!v5)
    {
      v5 = "";
    }

    *v2 = v5;
    *(v2 + 8) = "XMP";
  }

  else
  {
    v6 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v2 + 32) = 13;
      v7 = (*(*v6 + 16))(v6);
      v8 = "";
      if (v7)
      {
        v8 = v7;
      }
    }

    else
    {
      *(v2 + 32) = 14;
      v8 = "Caught unknown exception";
    }

    *v2 = v8;
  }

  __cxa_end_catch();
  JUMPOUT(0x186124D60);
}

void WXMPMeta_GetProperty_1(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, void), uint64_t a7)
{
  v22 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 0);
  *a7 = 0;
  if (!a2 || !*a2)
  {
    v17 = "Empty schema namespace URI";
    v18 = 101;
    goto LABEL_15;
  }

  if (!a3 || !*a3)
  {
    v17 = "Empty property name";
    v18 = 102;
LABEL_15:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v18;
    exception[1] = v17;
    *(exception + 16) = 0;
  }

  v20 = 0;
  v21 = 0;
  if (a5)
  {
    v14 = a5;
  }

  else
  {
    v14 = &v20;
  }

  v15 = (*(*a1 + 16))(a1, a2, a3, &v21, &v20 + 4, v14);
  v16 = v15 ^ 1;
  *(a7 + 32) = v15;
  if (!a4)
  {
    v16 = 1;
  }

  if ((v16 & 1) == 0)
  {
    a6(a4, v21, HIDWORD(v20));
  }

  XMP_AutoLock::~XMP_AutoLock(&v22);
}

void sub_186124F98(void *a1, int a2)
{
  if (a2 == 3)
  {
    v4 = __cxa_begin_catch(a1);
    *(v2 + 32) = *v4;
    v5 = *(v4 + 1);
    if (!v5)
    {
      v5 = "";
    }

    *v2 = v5;
    *(v2 + 8) = "XMP";
    __cxa_end_catch();
  }

  else
  {
    v6 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v2 + 32) = 13;
      v7 = (*(*v6 + 16))(v6);
      v8 = "";
      if (v7)
      {
        v8 = v7;
      }

      *v2 = v8;
      __cxa_end_catch();
    }

    else
    {
      *(v2 + 32) = 14;
      *v2 = "Caught unknown exception";
      __cxa_end_catch();
    }
  }

  JUMPOUT(0x186124F30);
}

void sub_18612504C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  XMP_AutoLock::~XMP_AutoLock(va);
  _Unwind_Resume(a1);
}

void WXMPMeta_GetArrayItem_1(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void), uint64_t a8)
{
  v24 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 0);
  *a8 = 0;
  if (!a2 || !*a2)
  {
    v19 = "Empty schema namespace URI";
    v20 = 101;
    goto LABEL_15;
  }

  if (!a3 || !*a3)
  {
    v19 = "Empty array name";
    v20 = 102;
LABEL_15:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v20;
    exception[1] = v19;
    *(exception + 16) = 0;
  }

  v22 = 0;
  v23 = 0;
  if (a6)
  {
    v16 = a6;
  }

  else
  {
    v16 = &v22;
  }

  v17 = (*(*a1 + 24))(a1, a2, a3, a4, &v23, &v22 + 4, v16);
  v18 = v17 ^ 1;
  *(a8 + 32) = v17;
  if (!a5)
  {
    v18 = 1;
  }

  if ((v18 & 1) == 0)
  {
    a7(a5, v23, HIDWORD(v22));
  }

  XMP_AutoLock::~XMP_AutoLock(&v24);
}

void sub_1861251AC(void *a1, int a2)
{
  if (a2 == 3)
  {
    v4 = __cxa_begin_catch(a1);
    *(v2 + 32) = *v4;
    v5 = *(v4 + 1);
    if (!v5)
    {
      v5 = "";
    }

    *v2 = v5;
    *(v2 + 8) = "XMP";
    __cxa_end_catch();
  }

  else
  {
    v6 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v2 + 32) = 13;
      v7 = (*(*v6 + 16))(v6);
      v8 = "";
      if (v7)
      {
        v8 = v7;
      }

      *v2 = v8;
      __cxa_end_catch();
    }

    else
    {
      *(v2 + 32) = 14;
      *v2 = "Caught unknown exception";
      __cxa_end_catch();
    }
  }

  JUMPOUT(0x186125144);
}

void sub_186125260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  XMP_AutoLock::~XMP_AutoLock(va);
  _Unwind_Resume(a1);
}

void WXMPMeta_SetProperty_1(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v15 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 1);
  *a6 = 0;
  if (!a2 || !*a2)
  {
    v12 = "Empty schema namespace URI";
    v13 = 101;
    goto LABEL_8;
  }

  if (!a3 || !*a3)
  {
    v12 = "Empty property name";
    v13 = 102;
LABEL_8:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v13;
    exception[1] = v12;
    *(exception + 16) = 0;
  }

  (*(*a1 + 48))(a1, a2, a3, a4, a5);
  XMP_AutoLock::~XMP_AutoLock(&v15);
}

void WXMPMeta_AppendArrayItem_1(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v17 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 1);
  *a7 = 0;
  if (!a2 || !*a2)
  {
    v14 = "Empty schema namespace URI";
    v15 = 101;
    goto LABEL_8;
  }

  if (!a3 || !*a3)
  {
    v14 = "Empty array name";
    v15 = 102;
LABEL_8:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v15;
    exception[1] = v14;
    *(exception + 16) = 0;
  }

  (*(*a1 + 64))(a1, a2, a3, a4, a5, a6);
  XMP_AutoLock::~XMP_AutoLock(&v17);
}

void WXMPMeta_SetStructField_1(uint64_t a1, char *a2, char *a3, char *a4, char *a5, const char *a6, uint64_t a7, void *a8)
{
  v19 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 1);
  *a8 = 0;
  if (!a2 || !*a2)
  {
    v16 = "Empty schema namespace URI";
LABEL_13:
    v17 = 101;
    goto LABEL_16;
  }

  if (!a3 || !*a3)
  {
    v16 = "Empty struct name";
LABEL_15:
    v17 = 102;
LABEL_16:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v17;
    exception[1] = v16;
    *(exception + 16) = 0;
  }

  if (!a4 || !*a4)
  {
    v16 = "Empty field namespace URI";
    goto LABEL_13;
  }

  if (!a5 || !*a5)
  {
    v16 = "Empty field name";
    goto LABEL_15;
  }

  XMPMeta::SetStructField(a1, a2, a3, a4, a5, a6, a7);
  XMP_AutoLock::~XMP_AutoLock(&v19);
}

void WXMPMeta_SetQualifier_1(uint64_t a1, _BYTE *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v19 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 1);
  *a8 = 0;
  if (!a2 || !*a2)
  {
    v16 = "Empty schema namespace URI";
LABEL_13:
    v17 = 101;
    goto LABEL_16;
  }

  if (!a3 || !*a3)
  {
    v16 = "Empty property name";
LABEL_15:
    v17 = 102;
LABEL_16:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v17;
    exception[1] = v16;
    *(exception + 16) = 0;
  }

  if (!a4 || !*a4)
  {
    v16 = "Empty qualifier namespace URI";
    goto LABEL_13;
  }

  if (!a5 || !*a5)
  {
    v16 = "Empty qualifier name";
    goto LABEL_15;
  }

  (*(*a1 + 72))(a1, a2, a3, a4, a5, a6, a7);
  XMP_AutoLock::~XMP_AutoLock(&v19);
}

void WXMPMeta_DeleteProperty_1(uint64_t a1, _BYTE *a2, _BYTE *a3, void *a4)
{
  v11 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 1);
  *a4 = 0;
  if (!a2 || !*a2)
  {
    v8 = "Empty schema namespace URI";
    v9 = 101;
    goto LABEL_8;
  }

  if (!a3 || !*a3)
  {
    v8 = "Empty property name";
    v9 = 102;
LABEL_8:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v9;
    exception[1] = v8;
    *(exception + 16) = 0;
  }

  (*(*a1 + 80))(a1, a2, a3);
  XMP_AutoLock::~XMP_AutoLock(&v11);
}

void WXMPMeta_DoesPropertyExist_1(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v11 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 0);
  *a4 = 0;
  if (!a2 || !*a2)
  {
    v8 = "Empty schema namespace URI";
    v9 = 101;
    goto LABEL_8;
  }

  if (!a3 || !*a3)
  {
    v8 = "Empty property name";
    v9 = 102;
LABEL_8:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v9;
    exception[1] = v8;
    *(exception + 16) = 0;
  }

  *(a4 + 32) = (*(*a1 + 112))(a1, a2, a3);
  XMP_AutoLock::~XMP_AutoLock(&v11);
}

void sub_186125CB4(void *a1, int a2)
{
  if (a2 == 3)
  {
    v4 = __cxa_begin_catch(a1);
    *(v2 + 32) = *v4;
    v5 = *(v4 + 1);
    if (!v5)
    {
      v5 = "";
    }

    *v2 = v5;
    *(v2 + 8) = "XMP";
    __cxa_end_catch();
  }

  else
  {
    v6 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v2 + 32) = 13;
      v7 = (*(*v6 + 16))(v6);
      v8 = "";
      if (v7)
      {
        v8 = v7;
      }

      *v2 = v8;
      __cxa_end_catch();
    }

    else
    {
      *(v2 + 32) = 14;
      *v2 = "Caught unknown exception";
      __cxa_end_catch();
    }
  }

  JUMPOUT(0x186125C54);
}

void sub_186125D68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  XMP_AutoLock::~XMP_AutoLock(va);
  _Unwind_Resume(a1);
}

void WXMPMeta_GetLocalizedText_1(uint64_t a1, _BYTE *a2, _BYTE *a3, const char *a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t *a8, void (*a9)(uint64_t, uint64_t, void), uint64_t a10)
{
  v28 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 0);
  *a10 = 0;
  if (!a2 || !*a2)
  {
    v21 = "Empty schema namespace URI";
    v22 = 101;
    goto LABEL_21;
  }

  if (!a3 || !*a3)
  {
    v21 = "Empty array name";
    v22 = 102;
    goto LABEL_21;
  }

  if (a4)
  {
    v18 = a4;
  }

  else
  {
    v18 = "";
  }

  if (!a5 || !*a5)
  {
    v21 = "Empty specific language";
    v22 = 4;
LABEL_21:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v22;
    exception[1] = v21;
    *(exception + 16) = 0;
  }

  v27 = 0;
  v26 = 0;
  v24 = 0;
  v25 = 0;
  v19 = &v24;
  if (a8)
  {
    v19 = a8;
  }

  v20 = (*(*a1 + 120))(a1, a2, a3, v18, a5, &v27, &v26, &v25, &v24 + 4, v19);
  *(a10 + 32) = v20;
  if (v20)
  {
    if (a6)
    {
      a9(a6, v27, v26);
    }

    if (a7)
    {
      a9(a7, v25, HIDWORD(v24));
    }
  }

  XMP_AutoLock::~XMP_AutoLock(&v28);
}