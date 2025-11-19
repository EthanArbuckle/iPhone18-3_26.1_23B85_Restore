void *XML_Node::RemoveAttrs(void *this)
{
  v1 = this;
  v2 = this[13];
  v3 = this[14] - v2;
  if (v3)
  {
    v4 = 0;
    if ((v3 >> 3) <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = v3 >> 3;
    }

    while (1)
    {
      v6 = v1[13];
      if (v4 >= (v1[14] - v6) >> 3)
      {
        break;
      }

      this = *(v6 + 8 * v4);
      if (this)
      {
        this = (*(*this + 8))(this);
      }

      if (v5 == ++v4)
      {
        v2 = v1[13];
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v1[14] = v2;
  }

  return this;
}

void *XML_Node::RemoveContent(void *this)
{
  v1 = this;
  v2 = this[16];
  v3 = this[17] - v2;
  if (v3)
  {
    v4 = 0;
    if ((v3 >> 3) <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = v3 >> 3;
    }

    while (1)
    {
      v6 = v1[16];
      if (v4 >= (v1[17] - v6) >> 3)
      {
        break;
      }

      this = *(v6 + 8 * v4);
      if (this)
      {
        this = (*(*this + 8))(this);
      }

      if (v5 == ++v4)
      {
        v2 = v1[16];
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v1[17] = v2;
  }

  return this;
}

void WXMPIterator_PropCTor_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *a5 = 0;
  v5 = a1 + 16;
  XMP_ReadWriteLock::Acquire((a1 + 16), 0);
  operator new();
}

void sub_185ECB904(void *a1, int a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x186602850](v4, 0x10F3C40652ADE5BLL);
  XMP_AutoLock::~XMP_AutoLock(va);
  if (a2 == 3)
  {
    v8 = __cxa_begin_catch(a1);
    *(v3 + 32) = *v8;
    v9 = *(v8 + 1);
    if (!v9)
    {
      v9 = v5;
    }

    *(v3 + 8) = "XMP";
  }

  else
  {
    v10 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v3 + 32) = 13;
      v11 = (*(*v10 + 16))(v10);
      if (v11)
      {
        v9 = v11;
      }

      else
      {
        v9 = v5;
      }
    }

    else
    {
      *(v3 + 32) = 14;
      v9 = "Caught unknown exception";
    }
  }

  *v3 = v9;
  __cxa_end_catch();
  JUMPOUT(0x185ECB8C4);
}

void TXMPIterator<std::string>::TXMPIterator(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1EF4D9080;
  a1[1] = 0;
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  WXMPIterator_PropCTor_1(*(a2 + 8), "", "", a3, v3);
}

void XMPIterator::XMPIterator(XMPIterator *this, const XMPMeta *a2, char *a3, char *a4, int a5)
{
  *this = &unk_1EF4DFAA0;
  *(this + 2) = 0;
  XMP_ReadWriteLock::XMP_ReadWriteLock((this + 16));
  *(this + 56) = a5;
  *(this + 29) = a2;
  *(this + 15) = 0u;
  *(this + 392) = 0;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 76) = 0;
  if (a5)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 103;
    exception[1] = "Unsupported iteration kind";
    *(exception + 16) = 0;
  }

  if (*a4)
  {
    memset(&v48, 0, sizeof(v48));
    ExpandXPath(a3, a4, &v48);
    Node = FindNode(a2 + 224, &v48, 0, 0, 0);
    if (!Node)
    {
LABEL_48:
      v44 = &v48;
      std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v44);
      goto LABEL_49;
    }

    memset(&v47, 0, sizeof(v47));
    size = v48.__r_.__value_.__l.__size_;
    v11 = v48.__r_.__value_.__r.__words[0];
    v13 = v48.__r_.__value_.__l.__size_ - v48.__r_.__value_.__r.__words[0];
    if (v48.__r_.__value_.__l.__size_ - v48.__r_.__value_.__r.__words[0] > 0x20)
    {
      if (*(v48.__r_.__value_.__r.__words[0] + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v47, *(v48.__r_.__value_.__r.__words[0] + 32), *(v48.__r_.__value_.__r.__words[0] + 40));
        size = v48.__r_.__value_.__l.__size_;
        v11 = v48.__r_.__value_.__r.__words[0];
        v13 = v48.__r_.__value_.__l.__size_ - v48.__r_.__value_.__r.__words[0];
      }

      else
      {
        v47 = *(v48.__r_.__value_.__r.__words[0] + 32);
      }

      if (v13 >= 0x41)
      {
        v14 = 0;
        v15 = 2;
        do
        {
          if ((*(v11 + v14 + 88) & 0xFu) <= 2)
          {
            std::string::push_back(&v47, 47);
            size = v48.__r_.__value_.__l.__size_;
            v11 = v48.__r_.__value_.__r.__words[0];
          }

          if (v15 >= (size - v11) >> 5)
          {
            goto LABEL_82;
          }

          v16 = v11 + v14;
          v19 = *(v16 + 64);
          v17 = v16 + 64;
          v18 = v19;
          v20 = *(v17 + 23);
          if (v20 >= 0)
          {
            v21 = v17;
          }

          else
          {
            v21 = v18;
          }

          if (v20 >= 0)
          {
            v22 = *(v17 + 23);
          }

          else
          {
            v22 = *(v17 + 8);
          }

          std::string::append(&v47, v21, v22);
          ++v15;
          size = v48.__r_.__value_.__l.__size_;
          v11 = v48.__r_.__value_.__r.__words[0];
          v14 += 32;
        }

        while (v15 < (v48.__r_.__value_.__l.__size_ - v48.__r_.__value_.__r.__words[0]) >> 5);
      }

      v23 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
      if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v47;
      }

      else
      {
        v24 = v47.__r_.__value_.__r.__words[0];
      }

      if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v23 = v47.__r_.__value_.__l.__size_;
      }

      for (; v23; --v23)
      {
        v25 = v24->__r_.__value_.__s.__data_[v23];
        if (v25 == 47)
        {
          break;
        }

        if (v25 == 91)
        {
          break;
        }
      }

      if (v24->__r_.__value_.__s.__data_[v23] == 47)
      {
        v26 = v23 + 1;
      }

      else
      {
        v26 = v23;
      }

      v27 = *(Node + 8);
      std::string::basic_string[abi:fe200100]<0>(&v43, v24);
      LODWORD(v44) = v27;
      if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v43;
      }

      *&v46[0] = v26;
      memset(v46 + 8, 0, 49);
      std::vector<IterNode>::push_back[abi:fe200100](this + 43, &v44);
      v49[0] = &v46[2];
      std::vector<IterNode>::__destroy_vector::operator()[abi:fe200100](v49);
      v49[0] = v46 + 1;
      std::vector<IterNode>::__destroy_vector::operator()[abi:fe200100](v49);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v43.__r_.__value_.__l.__data_);
      }

      if (v48.__r_.__value_.__l.__size_ != v48.__r_.__value_.__r.__words[0])
      {
        MEMORY[0x186602520](this + 240);
        if ((*(this + 225) & 1) == 0)
        {
          goto LABEL_46;
        }

        v28 = *(this + 44);
        if (*(this + 43) != v28)
        {
          AddNodeOffspring(this + 224, v28 - 96, Node);
LABEL_46:
          if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v47.__r_.__value_.__l.__data_);
          }

          goto LABEL_48;
        }
      }
    }

LABEL_82:
    __break(1u);
    return;
  }

  if (*a3)
  {
    std::string::basic_string[abi:fe200100]<0>(&v48, a3);
    LODWORD(v44) = 0x80000000;
    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v48.__r_.__value_.__l.__data_, v48.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v48;
    }

    memset(v46, 0, 57);
    std::vector<IterNode>::push_back[abi:fe200100](this + 43, &v44);
    v47.__r_.__value_.__r.__words[0] = &v46[2];
    std::vector<IterNode>::__destroy_vector::operator()[abi:fe200100](&v47);
    v47.__r_.__value_.__r.__words[0] = v46 + 8;
    std::vector<IterNode>::__destroy_vector::operator()[abi:fe200100](&v47);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    v39 = *(this + 44);
    if (*(this + 43) != v39)
    {
      SchemaNode = FindSchemaNode(a2 + 224, a3, 0, 0);
      if (SchemaNode)
      {
        AddSchemaProps(v39 - 96, SchemaNode);
      }

      if (*(v39 - 56) != *(v39 - 48))
      {
        MEMORY[0x186602520](this + 240, a3);
        goto LABEL_49;
      }

      v41 = *(this + 44);
      if (*(this + 43) != v41)
      {
        std::vector<IterNode>::__base_destruct_at_end[abi:fe200100](this + 344, v41 - 96);
        goto LABEL_49;
      }
    }

    goto LABEL_82;
  }

  v31 = *(a2 + 38) - *(a2 + 37);
  if (v31)
  {
    v32 = 0;
    v33 = v31 >> 3;
    do
    {
      v34 = *(a2 + 37);
      if (v32 >= (*(a2 + 38) - v34) >> 3)
      {
        goto LABEL_82;
      }

      v35 = *(v34 + 8 * v32);
      LODWORD(v44) = 0x80000000;
      if (*(v35 + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v35 + 16), *(v35 + 24));
      }

      else
      {
        v36 = *(v35 + 16);
        __p.__r_.__value_.__r.__words[2] = *(v35 + 32);
        *&__p.__r_.__value_.__l.__data_ = v36;
      }

      memset(v46, 0, 57);
      std::vector<IterNode>::push_back[abi:fe200100](this + 43, &v44);
      v48.__r_.__value_.__r.__words[0] = &v46[2];
      std::vector<IterNode>::__destroy_vector::operator()[abi:fe200100](&v48);
      v48.__r_.__value_.__r.__words[0] = v46 + 8;
      std::vector<IterNode>::__destroy_vector::operator()[abi:fe200100](&v48);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v37 = *(this + 44);
      if (*(this + 43) == v37)
      {
        goto LABEL_82;
      }

      if ((*(this + 225) & 1) == 0)
      {
        AddSchemaProps(v37 - 96, v35);
        if (*(v37 - 56) == *(v37 - 48))
        {
          v38 = *(this + 44);
          if (*(this + 43) == v38)
          {
            goto LABEL_82;
          }

          std::vector<IterNode>::__base_destruct_at_end[abi:fe200100](this + 344, v38 - 96);
        }
      }
    }

    while (v33 != ++v32);
  }

LABEL_49:
  v29 = *(this + 43);
  v30 = *(this + 44);
  *(this + 33) = v29;
  *(this + 34) = v30;
  if ((*(this + 225) & 1) != 0 && v29 != v30)
  {
    if (*a3)
    {
      *(v29 + 88) = 1;
    }
  }
}

void sub_185ECC018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v35 - 97) < 0)
  {
    operator delete(*(v35 - 120));
  }

  IterInfo::~IterInfo(v34);
  XMP_ReadWriteLock::~XMP_ReadWriteLock((v33 + 16));
  _Unwind_Resume(a1);
}

uint64_t std::vector<IterNode>::__emplace_back_slow_path<IterNode>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:fe200100]<std::allocator<IterNode>>(a1, v6);
  }

  v13 = 0;
  v14 = 96 * v2;
  std::allocator<IterNode>::construct[abi:fe200100]<IterNode,IterNode>(a1, 96 * v2, a2);
  v15 = 96 * v2 + 96;
  v7 = a1[1];
  v8 = 96 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:fe200100]<std::allocator<IterNode>,IterNode*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<IterNode>::~__split_buffer(&v13);
  return v12;
}

void sub_185ECC204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<IterNode>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<IterNode>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<IterNode>::__destruct_at_end[abi:fe200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void AddSchemaProps(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 80) - *(a2 + 72);
  if (v2)
  {
    v5 = 0;
    v6 = v2 >> 3;
    while (1)
    {
      v7 = *(a2 + 72);
      if (v5 >= (*(a2 + 80) - v7) >> 3)
      {
        break;
      }

      v8 = *(v7 + 8 * v5);
      v10 = *(v8 + 8);
      if (*(v8 + 39) < 0)
      {
        std::string::__init_copy_ctor_external(__p, *(v8 + 16), *(v8 + 24));
      }

      else
      {
        v9 = *(v8 + 16);
        *&__p[16] = *(v8 + 32);
        *__p = v9;
      }

      memset(v12, 0, 25);
      memset(&__p[24], 0, 32);
      std::vector<IterNode>::push_back[abi:fe200100]((a1 + 40), &v10);
      v13 = v12;
      std::vector<IterNode>::__destroy_vector::operator()[abi:fe200100](&v13);
      v13 = &__p[32];
      std::vector<IterNode>::__destroy_vector::operator()[abi:fe200100](&v13);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if (v6 == ++v5)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_185ECC34C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IterNode::~IterNode(va);
  _Unwind_Resume(a1);
}

void WXMPIterator_Next_1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, void), uint64_t a7)
{
  v23 = (a1 + 2);
  XMP_ReadWriteLock::Acquire((a1 + 2), 1);
  *a7 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v17 = 0;
  v18 = 0;
  if (!a5)
  {
    a5 = &v17;
  }

  v14 = a1[29];
  if (!v14)
  {
    __assert_rtn("WXMPIterator_Next_1", "WXMPIterator.cpp", 140, "thiz->info.xmpObj != __null");
  }

  v16 = (v14 + 16);
  XMP_ReadWriteLock::Acquire((v14 + 16), 0);
  v15 = (*(*a1 + 16))(a1, &v22, &v21, &v20, &v19, &v18, &v17 + 4, a5, v16, v17);
  *(a7 + 32) = v15;
  if (v15)
  {
    if (a2)
    {
      a6(a2, v22, v21);
    }

    if (a3)
    {
      a6(a3, v20, v19);
    }

    if (a4)
    {
      a6(a4, v18, HIDWORD(v17));
    }
  }

  XMP_AutoLock::~XMP_AutoLock(&v16);
  XMP_AutoLock::~XMP_AutoLock(&v23);
}

void sub_185ECC4C0(void *a1, int a2)
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

  JUMPOUT(0x185ECC478);
}

void sub_185ECC590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  XMP_AutoLock::~XMP_AutoLock(va);
  _Unwind_Resume(a1);
}

BOOL TXMPIterator<std::string>::Next(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  WXMPIterator_Next_1(*(a1 + 8), a2, a3, a4, a5, TXMPIterator<std::string>::SetClientString, v8);
  if (*&v8[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v7 = *&v8[0];
    *exception = v9;
    exception[1] = v7;
    *(exception + 16) = 0;
  }

  return v9 != 0;
}

uint64_t XMPIterator::Next(XMPIterator *this, const char **a2, unsigned int *a3, const char **a4, unsigned int *a5, const char **a6, unsigned int *a7, unsigned int *a8)
{
  if (*(this + 33) == *(this + 34))
  {
    return 0;
  }

  result = GetNextXMPNode(this + 224);
  if (result)
  {
    v17 = result;
    if ((*(this + 225) & 2) != 0)
    {
      while (1)
      {
        v26 = *(this + 33);
        if ((*v26 & 0x80000000) == 0 && *(v17 + 72) == *(v17 + 80))
        {
          break;
        }

        *(v26 + 88) = 2;
        result = GetNextXMPNode(this + 224);
        v17 = result;
        if (!result)
        {
          return result;
        }
      }
    }

    v18 = this + 240;
    if (*(this + 263) < 0)
    {
      v18 = *v18;
    }

    *a2 = v18;
    v19 = *(this + 263);
    if (v19 < 0)
    {
      v19 = *(this + 31);
    }

    *a3 = v19;
    *a8 = **(this + 33);
    *a4 = "";
    *a5 = 0;
    *a6 = "";
    *a7 = 0;
    if ((*a8 & 0x80000000) == 0)
    {
      v20 = *(this + 33);
      v21 = (v20 + 8);
      if (*(v20 + 31) < 0)
      {
        v21 = *v21;
      }

      *a4 = v21;
      v22 = *(this + 33);
      v23 = *(v22 + 31);
      if (v23 < 0)
      {
        v23 = *(v22 + 16);
      }

      *a5 = v23;
      if ((*(this + 225) & 4) != 0)
      {
        *a4 = &v21[*(v22 + 32)];
        *a5 = v23 - *(*(this + 33) + 32);
        XMP_Node::GetLocalURI(v17, a2, a3);
      }

      if ((*(a8 + 1) & 0x1F) == 0)
      {
        v24 = (v17 + 40);
        if (*(v17 + 63) < 0)
        {
          v24 = *v24;
        }

        *a6 = v24;
        v25 = *(v17 + 63);
        if (v25 < 0)
        {
          v25 = *(v17 + 48);
        }

        *a7 = v25;
      }
    }

    return 1;
  }

  return result;
}

uint64_t GetNextXMPNode(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 88))
  {
    AdvanceIterPos(a1);
    v2 = *(a1 + 40);
  }

  memset(v14, 0, sizeof(v14));
  if (v2 == *(a1 + 48))
  {
    goto LABEL_25;
  }

  while (1)
  {
    v3 = *v2;
    if (*v2 < 0)
    {
      std::string::operator=((a1 + 16), (v2 + 2));
      v7 = *(a1 + 40);
      v8 = (v7 + 8);
      if (*(v7 + 31) < 0)
      {
        v8 = *v8;
      }

      SchemaNode = FindSchemaNode(*(a1 + 8) + 224, v8, 0, 0);
      Node = SchemaNode ? SchemaNode : sDummySchema;
    }

    else
    {
      if (*(a1 + 39) >= 0)
      {
        v4 = (a1 + 16);
      }

      else
      {
        v4 = *(a1 + 16);
      }

      v5 = v2 + 2;
      if (*(v2 + 31) < 0)
      {
        v5 = *v5;
      }

      ExpandXPath(v4, v5, v14);
      Node = FindNode(*(a1 + 8) + 224, v14, 0, 0, 0);
    }

    v10 = *(a1 + 40);
    if (Node)
    {
      break;
    }

    v12 = *(v10 + 40);
    v11 = v10 + 40;
    *(v11 + 48) = 3;
    std::vector<IterNode>::__base_destruct_at_end[abi:fe200100](v11, v12);
    std::vector<IterNode>::__base_destruct_at_end[abi:fe200100](*(a1 + 40) + 64, *(*(a1 + 40) + 64));
    AdvanceIterPos(a1);
    v2 = *(a1 + 40);
    if (v2 == *(a1 + 48))
    {
      goto LABEL_25;
    }
  }

  if (v10 == *(a1 + 48))
  {
LABEL_25:
    Node = 0;
  }

  else
  {
    if (*(v10 + 88))
    {
      __assert_rtn("GetNextXMPNode", "XMPIterator.cpp", 312, "info.currPos->visitStage == kIter_BeforeVisit");
    }

    if ((v3 & 0x80000000) == 0 && (*(a1 + 1) & 1) == 0)
    {
      AddNodeOffspring(a1, *(a1 + 40), Node);
      v10 = *(a1 + 40);
    }

    *(v10 + 88) = 1;
  }

  v15 = v14;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v15);
  return Node;
}

void sub_185ECC998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a12);
  _Unwind_Resume(a1);
}

void AdvanceIterPos(uint64_t a1)
{
  v2 = *(a1 + 40);
  while (1)
  {
    while (1)
    {
      v3 = *(a1 + 48);
      if (v2 != v3)
      {
        break;
      }

      v5 = *(a1 + 64);
      if (*(a1 + 56) == v5)
      {
        return;
      }

      v7 = *(v5 - 16);
      v6 = v5 - 16;
      v2 = v7;
      *(a1 + 40) = v7;
      *(a1 + 48) = *(v6 + 8);
      *(a1 + 64) = v6;
    }

    v4 = *(v2 + 88);
    if (v4 == 1)
    {
      *(v2 + 88) = 2;
      if (*(v2 + 64) != *(v2 + 72))
      {
        v11 = *(a1 + 48);
        *&v13 = v2;
        *(&v13 + 1) = v11;
        std::vector<std::pair<std::__wrap_iter<IterNode *>,std::__wrap_iter<IterNode *>>>::push_back[abi:fe200100](a1 + 56, &v13);
        v12 = *(a1 + 40);
        v3 = *(v12 + 72);
        *(a1 + 48) = v3;
        v2 = *(v12 + 64);
        goto LABEL_17;
      }

      goto LABEL_10;
    }

    if (v4 != 2)
    {
      break;
    }

LABEL_10:
    std::vector<IterNode>::__base_destruct_at_end[abi:fe200100](v2 + 64, *(v2 + 64));
    v8 = *(a1 + 40);
    *(v8 + 88) = 3;
    if (*(v8 + 40) != *(v8 + 48))
    {
      v9 = *(a1 + 48);
      *&v13 = v8;
      *(&v13 + 1) = v9;
      std::vector<std::pair<std::__wrap_iter<IterNode *>,std::__wrap_iter<IterNode *>>>::push_back[abi:fe200100](a1 + 56, &v13);
      v10 = *(a1 + 40);
      v3 = *(v10 + 48);
      *(a1 + 48) = v3;
      v2 = *(v10 + 40);
LABEL_17:
      *(a1 + 40) = v2;
      goto LABEL_18;
    }

LABEL_11:
    v2 = *(a1 + 40);
    if (*(v2 + 88) == 3)
    {
      std::vector<IterNode>::__base_destruct_at_end[abi:fe200100](v2 + 40, *(v2 + 40));
      v2 = *(a1 + 40) + 96;
      *(a1 + 40) = v2;
    }
  }

  if (*(v2 + 88))
  {
    goto LABEL_11;
  }

  if ((*v2 & 0x80000000) != 0)
  {
    std::string::operator=((a1 + 16), (v2 + 8));
    v2 = *(a1 + 40);
    v3 = *(a1 + 48);
  }

LABEL_18:
  if (v2 != v3)
  {
    if (*(v2 + 88))
    {
      AdvanceIterPos();
    }
  }
}

uint64_t FindNode(uint64_t result, uint64_t *a2, int a3, int a4, char **a5)
{
  v5 = a5;
  v9 = result;
  v31 = 0;
  if (a4 && (a3 & 1) == 0)
  {
    FindNode();
  }

  v10 = *a2;
  v11 = a2[1];
  if (*a2 == v11)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    exception[1] = "Empty XPath";
    *(exception + 16) = 0;
  }

  v12 = v11 - v10;
  v13 = (v11 - v10) >> 5;
  if (v13 <= 1)
  {
    goto LABEL_79;
  }

  if ((v10[56] & 0x10) != 0)
  {
    result = std::__tree<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>>>::find<std::string>(sRegisteredAliasMap, (v10 + 32));
    if (sRegisteredAliasMap + 8 == result)
    {
      FindNode();
    }

    v18 = result;
    v19 = *(result + 56);
    v20 = (result + 56);
    if (*(result + 64) == v19)
    {
      goto LABEL_79;
    }

    if (v19[23] < 0)
    {
      v19 = *v19;
    }

    SchemaNode = FindSchemaNode(v9, v19, a3, &v31);
    if (!SchemaNode)
    {
      if (!a3)
      {
        return 0;
      }

LABEL_73:
      FindNode();
    }

    v22 = *(SchemaNode + 8);
    v16 = (v22 >> 15) & 1;
    if ((v22 & 0x8000) != 0)
    {
      *(SchemaNode + 8) = v22 & 0xFFFF7FFF;
      v15 = v31;
    }

    else
    {
      v15 = 0;
    }

    result = FollowXPathStep(SchemaNode, v20, 1uLL, a3, &v31, 0);
    if (!result)
    {
LABEL_67:
      if ((a3 & 1) == 0)
      {
        if (v16)
        {
          DeleteSubtree(v15);
        }

        return 0;
      }

      goto LABEL_73;
    }

    v23 = *(result + 8);
    if ((v23 & 0x8000) != 0)
    {
      *(result + 8) = v23 & 0xFFFF7FFF;
      if (v12 != 64 && (v23 & 0x1F00) == 0)
      {
        if ((a2[1] - *a2) <= 0x40)
        {
          goto LABEL_79;
        }

        if ((*(*a2 + 88) & 0xF) == 1)
        {
          *(result + 8) = v23 & 0xFFFF7EFF | 0x100;
        }
      }

      if ((v22 & 0x8000) == 0)
      {
        v15 = v31;
      }

      LOBYTE(v16) = 1;
    }

    v24 = *(v18 + 56);
    v25 = *(v18 + 64) - v24;
    if (v25 <= 0x20)
    {
      goto LABEL_79;
    }

    v26 = *(v24 + 56);
    v5 = a5;
    if ((v26 & 0x1E00) != 0 && (v26 & 0x200) == 0)
    {
      FindNode();
    }

    if ((v26 & 0x1E00) != 0)
    {
      if (v25 == 96)
      {
        result = FollowXPathStep(result, v20, 2uLL, a3, &v31, 1);
        if (!result)
        {
          goto LABEL_67;
        }

        v27 = *(result + 8);
        if ((v27 & 0x8000) == 0)
        {
          goto LABEL_48;
        }

        *(result + 8) = v27 & 0xFFFF7FFF;
        if (v12 == 64 || (v27 & 0x1F00) != 0)
        {
          goto LABEL_44;
        }

        if ((a2[1] - *a2) > 0x40)
        {
          if ((*(*a2 + 88) & 0xF) == 1)
          {
            *(result + 8) = v27 & 0xFFFF7EFF | 0x100;
          }

LABEL_44:
          if ((v16 & 1) == 0)
          {
            v15 = v31;
          }

          LOBYTE(v16) = 1;
          goto LABEL_48;
        }

LABEL_79:
        __break(1u);
        return result;
      }
    }

    else if (v25 == 64)
    {
LABEL_48:
      v17 = 2;
      goto LABEL_49;
    }

    FindNode();
  }

  if (v10[23] < 0)
  {
    v10 = *v10;
  }

  result = FindSchemaNode(result, v10, a3, &v31);
  if (!result)
  {
    return result;
  }

  v14 = *(result + 8);
  if ((v14 & 0x8000) != 0)
  {
    *(result + 8) = v14 & 0xFFFF7FFF;
    v15 = v31;
    v17 = 1;
    LOBYTE(v16) = 1;
  }

  else
  {
    v15 = 0;
    LOBYTE(v16) = 0;
    v17 = 1;
  }

LABEL_49:
  if (v17 < v13)
  {
    do
    {
      result = FollowXPathStep(result, a2, v17, a3, &v31, 0);
      if (!result)
      {
        goto LABEL_67;
      }

      v28 = *(result + 8);
      if ((v28 & 0x8000) != 0)
      {
        *(result + 8) = v28 & 0xFFFF7FFF;
        if (++v17 < v13 && (v28 & 0x1F00) == 0)
        {
          if (v17 >= (a2[1] - *a2) >> 5)
          {
            goto LABEL_79;
          }

          if ((*(*a2 + 32 * v17 + 24) & 0xF) == 1)
          {
            *(result + 8) = v28 & 0xFFFF7EFF | 0x100;
          }
        }

        if ((v16 & 1) == 0)
        {
          v15 = v31;
        }

        LOBYTE(v16) = 1;
      }

      else
      {
        ++v17;
      }
    }

    while (v17 != v13);
  }

  if (result != *v31)
  {
    FindNode();
  }

  if (v16)
  {
    *(result + 8) |= a4;
  }

  if (v5)
  {
    *v5 = v31;
  }

  return result;
}

uint64_t FollowXPathStep(uint64_t a1, uint64_t *a2, unint64_t a3, int a4, void *a5, int a6)
{
  v74 = 0;
  v6 = *a2;
  if (a3 >= (a2[1] - *a2) >> 5)
  {
    goto LABEL_136;
  }

  v7 = a3;
  v8 = (v6 + 32 * a3);
  v9 = v8[3] & 0xF;
  if ((v9 - 7) <= 0xFFFFFFF9)
  {
    FollowXPathStep();
  }

  v10 = a5;
  v11 = a4;
  v12 = a1;
  if (v9 == 2)
  {
    v15 = (v6 + 32 * a3);
    if (*(v8 + 23) < 0)
    {
      v15 = *v8;
    }

    if (*v15 != 63)
    {
      FollowXPathStep();
    }

    result = FindQualifierNode(a1, v15 + 1, a4, a5);
    goto LABEL_12;
  }

  if (v9 == 1)
  {
    v13 = (v6 + 32 * a3);
    if (*(v8 + 23) < 0)
    {
      v13 = *v8;
    }

    result = FindChildNode(a1, v13, a4, a5);
LABEL_12:
    v74 = result;
    goto LABEL_13;
  }

  if ((*(a1 + 9) & 2) == 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    v61 = "Indexing applied to non-array";
    goto LABEL_146;
  }

  v17 = a6;
  if ((v8[3] & 0xFu) > 4)
  {
    if (v9 != 5)
    {
      v71 = 0;
      v72 = 0;
      v73 = 0;
      memset(&__p, 0, sizeof(__p));
      SplitNameAndValue(v8, &v71, &__p);
      if (v73 >= 0)
      {
        v24 = &v71;
      }

      else
      {
        v24 = v71;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v26 = LookupFieldSelector(v12, v24, p_p);
      goto LABEL_38;
    }

    v71 = 0;
    v72 = 0;
    v73 = 0;
    memset(&__p, 0, sizeof(__p));
    SplitNameAndValue(v8, &v71, &__p);
    if ((SHIBYTE(v73) & 0x8000000000000000) != 0)
    {
      if (v72 == 8)
      {
        v22 = v71;
        goto LABEL_64;
      }
    }

    else if (SHIBYTE(v73) == 8)
    {
      v22 = &v71;
LABEL_64:
      if (*v22 != 0x676E616C3A6C6D78)
      {
        goto LABEL_65;
      }

      NormalizeLangValue(&__p);
      v26 = LookupLangItem(v12, &__p.__r_.__value_.__l.__data_);
LABEL_38:
      LODWORD(v23) = v26;
      goto LABEL_101;
    }

LABEL_65:
    v68 = *(v12 + 72);
    v36 = *(v12 + 80) - v68;
    if (!v36)
    {
      LODWORD(v23) = -1;
      goto LABEL_101;
    }

    v66 = v17;
    v62 = v7;
    v63 = v8;
    v69 = v12;
    v64 = v11;
    v65 = v10;
    v23 = 0;
    v67 = v36 >> 3;
    if (v73 >= 0)
    {
      v37 = SHIBYTE(v73);
    }

    else
    {
      v37 = v72;
    }

    if (v73 >= 0)
    {
      v38 = &v71;
    }

    else
    {
      v38 = v71;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = &__p;
    }

    else
    {
      v40 = __p.__r_.__value_.__r.__words[0];
    }

    while (1)
    {
      v41 = *(v68 + 8 * v23);
      if (v41[8] != v69)
      {
        break;
      }

      v42 = v41[12];
      v43 = v41[13] - v42;
      if (v43)
      {
        v44 = v43 >> 3;
        while (1)
        {
          v45 = *v42;
          if (*(*v42 + 64) != v41)
          {
            break;
          }

          v46 = *(v45 + 39);
          v47 = v46;
          if ((v46 & 0x80u) != 0)
          {
            v46 = *(v45 + 24);
          }

          if (v46 == v37)
          {
            v48 = v47 >= 0 ? (v45 + 16) : *(v45 + 16);
            if (!memcmp(v48, v38, v37))
            {
              v49 = *(v45 + 63);
              v50 = v49;
              if ((v49 & 0x80u) != 0)
              {
                v49 = *(v45 + 48);
              }

              if (v49 == size)
              {
                v53 = *(v45 + 40);
                v52 = v45 + 40;
                v51 = v53;
                v54 = (v50 >= 0 ? v52 : v51);
                if (!memcmp(v54, v40, size))
                {
                  goto LABEL_99;
                }
              }
            }
          }

          ++v42;
          if (!--v44)
          {
            goto LABEL_97;
          }
        }

        v58 = 308;
        v59 = "currQual->parent == currItem";
LABEL_135:
        __assert_rtn("LookupQualSelector", "XMPCore_Impl.cpp", v58, v59);
      }

LABEL_97:
      if (++v23 == v67)
      {
        LODWORD(v23) = -1;
LABEL_99:
        v10 = v65;
        v11 = v64;
        v7 = v62;
        v8 = v63;
        v12 = v69;
        v17 = v66;
LABEL_101:
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v73) < 0)
        {
          operator delete(v71);
          if ((v23 & 0x80000000) == 0)
          {
            goto LABEL_105;
          }
        }

        else if ((v23 & 0x80000000) == 0)
        {
          goto LABEL_105;
        }

LABEL_111:
        if (v23 == -1 && v9 == 5 && v17 && v11)
        {
          if ((*(v12 + 9) & 0x10) != 0)
          {
            if (v7 != 2 || (*(v8 + 23) & 0x80000000) == 0 || v8[1] != 23 || (**v8 == 0x616C3A6C6D783F5BLL ? (v56 = *(*v8 + 1) == 0x65642D78223D676ELL) : (v56 = 0), v56 ? (v57 = *(*v8 + 15) == 0x5D22746C75616665) : (v57 = 0), !v57))
            {
              FollowXPathStep();
            }

            operator new();
          }

          FollowXPathStep();
        }

LABEL_128:
        if (v11)
        {
          FollowXPathStep();
        }

        return 0;
      }
    }

    v58 = 303;
    v59 = "currItem->parent == arrayNode";
    goto LABEL_135;
  }

  if (v9 != 3)
  {
    LODWORD(v23) = ((*(a1 + 80) - *(a1 + 72)) >> 3) - 1;
    if ((v23 & 0x80000000) == 0)
    {
LABEL_105:
      v32 = *(v12 + 72);
      v33 = *(v12 + 80);
      goto LABEL_106;
    }

    goto LABEL_111;
  }

  v18 = *(v8 + 23);
  if ((v18 & 0x8000000000000000) != 0)
  {
    v21 = v8[1];
    v19 = (v21 - 1);
    if (v21 - 1 <= 1)
    {
      goto LABEL_142;
    }

    v20 = **v8;
  }

  else
  {
    v19 = (v18 - 1);
    if (v18 - 1 < 2)
    {
      goto LABEL_142;
    }

    v20 = *v8;
    v21 = *(v8 + 23);
  }

  if (v20 != 91)
  {
    goto LABEL_142;
  }

  if (v21 < v19)
  {
    goto LABEL_136;
  }

  v27 = *v8;
  if ((v18 & 0x80000000) == 0)
  {
    v27 = v8;
  }

  if (v19[v27] != 93)
  {
LABEL_142:
    FollowXPathStep();
  }

  v28 = v19 - 1;
  if (!v28)
  {
    goto LABEL_148;
  }

  v29 = 0;
  if ((v18 & 0x80000000) != 0)
  {
    v18 = v8[1];
  }

  v30 = (v27 + 1);
  do
  {
    if (!v18)
    {
      goto LABEL_136;
    }

    v31 = *v30;
    if ((v31 - 58) <= 0xFFFFFFF5)
    {
      goto LABEL_137;
    }

    v29 = v31 + 10 * v29 - 48;
    if (v29 < 0)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 102;
      v61 = "Array index overflow";
      goto LABEL_146;
    }

    --v18;
    ++v30;
    --v28;
  }

  while (v28);
  if (!v29)
  {
LABEL_148:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    v61 = "Array index must be larger than zero";
LABEL_146:
    exception[1] = v61;
    *(exception + 16) = 0;
  }

  v32 = *(a1 + 72);
  v33 = *(a1 + 80);
  LODWORD(v23) = v29 - 1;
  v34 = (v33 - v32) >> 3;
  if (v29 - 1 == v34 && a4 != 0)
  {
    operator new();
  }

  v17 = a6;
  if (v29 > v34)
  {
    v7 = a3;
    LODWORD(v23) = -1;
    goto LABEL_111;
  }

LABEL_106:
  v55 = (v33 - v32) >> 3;
  if (v23 > v55)
  {
    goto LABEL_128;
  }

  if (v55 <= v23)
  {
LABEL_136:
    __break(1u);
LABEL_137:
    FollowXPathStep();
  }

  result = *(v32 + 8 * v23);
  v74 = result;
  if (!v10 || !result)
  {
LABEL_13:
    if (result)
    {
      goto LABEL_14;
    }

    goto LABEL_128;
  }

  *v10 = 8 * v23 + *(v12 + 72);
LABEL_14:
  v16 = *(result + 8);
  if ((v16 & 0x8000) != 0)
  {
    *(result + 8) = v8[3] & 0x1E00 | v16;
  }

  if (v10)
  {
    if (result != **v10)
    {
      FollowXPathStep();
    }
  }

  return result;
}

void AddNodeOffspring(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  memset(&v28, 0, sizeof(v28));
  v6 = *(a2 + 31);
  if (v6 < 0)
  {
    std::string::__init_copy_ctor_external(&v28, *(a2 + 8), *(a2 + 16));
    v6 = *(a2 + 31);
    if (v6 < 0)
    {
      v7 = *(a2 + 16);
      goto LABEL_5;
    }
  }

  else
  {
    v28 = *(a2 + 8);
  }

  v7 = v6;
LABEL_5:
  if (*(a3 + 96) != *(a3 + 104) && (*(a1 + 1) & 0x10) == 0)
  {
    std::string::append(&v28, "/?");
    v8 = *(a3 + 104) - *(a3 + 96);
    if (v8)
    {
      v9 = 0;
      v10 = v8 >> 3;
      do
      {
        v11 = *(a3 + 96);
        if (v9 >= (*(a3 + 104) - v11) >> 3)
        {
          goto LABEL_50;
        }

        v12 = *(v11 + 8 * v9);
        v13 = *(v12 + 39);
        if (v13 >= 0)
        {
          v14 = (v12 + 16);
        }

        else
        {
          v14 = *(v12 + 16);
        }

        if (v13 >= 0)
        {
          v15 = *(v12 + 39);
        }

        else
        {
          v15 = *(v12 + 24);
        }

        std::string::append(&v28, v14, v15);
        LODWORD(__p[0]) = *(v12 + 8);
        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__p[1], v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
        }

        else
        {
          *&__p[1] = v28;
        }

        v31 = v7 + 2;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0;
        std::vector<IterNode>::push_back[abi:fe200100]((a2 + 64), __p);
        v29 = &v33 + 1;
        std::vector<IterNode>::__destroy_vector::operator()[abi:fe200100](&v29);
        v29 = &v32;
        std::vector<IterNode>::__destroy_vector::operator()[abi:fe200100](&v29);
        if (SHIBYTE(__p[3]) < 0)
        {
          operator delete(__p[1]);
        }

        std::string::erase(&v28, v7 + 2, 0xFFFFFFFFFFFFFFFFLL);
      }

      while (v10 != ++v9);
    }

    std::string::erase(&v28, v7, 0xFFFFFFFFFFFFFFFFLL);
  }

  v17 = *(a3 + 72);
  v16 = *(a3 + 80);
  if (v17 != v16)
  {
    v18 = *(a3 + 8);
    if ((v18 & 0x1F00) == 0)
    {
      exception = __cxa_allocate_exception(4uLL);
      *exception = -1;
      __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
    }

    if ((v18 & 0x100) != 0)
    {
      std::string::push_back(&v28, 47);
      ++v7;
      v17 = *(a3 + 72);
      v16 = *(a3 + 80);
    }

    v19 = v16 - v17;
    if (v19)
    {
      v20 = 0;
      v21 = v19 >> 3;
      while (1)
      {
        v22 = *(a3 + 72);
        if (v20 >= (*(a3 + 80) - v22) >> 3)
        {
          break;
        }

        v23 = *(v22 + 8 * v20);
        if ((*(a3 + 9) & 2) != 0)
        {
          memset(__p, 0, sizeof(__p));
          snprintf(__p, 0x20uLL, "[%lu]", v20 + 1);
          std::string::append(&v28, __p);
        }

        else
        {
          v24 = *(v23 + 39);
          if (v24 >= 0)
          {
            v25 = (v23 + 16);
          }

          else
          {
            v25 = *(v23 + 16);
          }

          if (v24 >= 0)
          {
            v26 = *(v23 + 39);
          }

          else
          {
            v26 = *(v23 + 24);
          }

          std::string::append(&v28, v25, v26);
        }

        LODWORD(__p[0]) = *(v23 + 8);
        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__p[1], v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
        }

        else
        {
          *&__p[1] = v28;
        }

        v31 = v7;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0;
        std::vector<IterNode>::push_back[abi:fe200100]((a2 + 40), __p);
        v29 = &v33 + 1;
        std::vector<IterNode>::__destroy_vector::operator()[abi:fe200100](&v29);
        v29 = &v32;
        std::vector<IterNode>::__destroy_vector::operator()[abi:fe200100](&v29);
        if (SHIBYTE(__p[3]) < 0)
        {
          operator delete(__p[1]);
        }

        std::string::erase(&v28, v7, 0xFFFFFFFFFFFFFFFFLL);
        if (v21 == ++v20)
        {
          goto LABEL_45;
        }
      }

LABEL_50:
      __break(1u);
      return;
    }
  }

LABEL_45:
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }
}

_BYTE *XMP_NamespaceTable::GetURI(XMP_NamespaceTable *this, char *a2, const char **a3, unsigned int *a4)
{
  v17 = (this + 8);
  XMP_ReadWriteLock::Acquire((this + 8), 0);
  if (!a2 || !*a2)
  {
    __assert_rtn("GetURI", "XMP_LibUtils.cpp", 527, "(_prefix != 0) && (*_prefix != 0)");
  }

  memset(&__p, 0, sizeof(__p));
  result = std::string::basic_string[abi:fe200100]<0>(&__p, a2);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (p_p->__r_.__value_.__s.__data_[size - 1] != 58)
    {
      std::string::push_back(&__p, 58);
    }

    v11 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(this + 240, &__p.__r_.__value_.__l.__data_);
    v12 = v11;
    v13 = this + 248;
    if (v13 != v11)
    {
      if (a3)
      {
        v14 = (v11 + 56);
        if (*(v11 + 79) < 0)
        {
          v14 = *v14;
        }

        *a3 = v14;
      }

      if (a4)
      {
        v15 = *(v11 + 79);
        if (v15 < 0)
        {
          v15 = *(v11 + 64);
        }

        *a4 = v15;
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    XMP_AutoLock::~XMP_AutoLock(&v17);
    return (v13 != v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_185ECDB78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, XMP_ReadWriteLock *a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  XMP_AutoLock::~XMP_AutoLock(&a15);
  _Unwind_Resume(a1);
}

void XMP_Node::GetLocalURI(XMP_Node *this, const char **a2, unsigned int *a3)
{
  if (a2)
  {
    *a2 = "";
  }

  if (a3)
  {
    *a3 = 0;
  }

  v5 = *(this + 39);
  if (v5 < 0)
  {
    if (!*(this + 3))
    {
      return;
    }
  }

  else if (!*(this + 39))
  {
    return;
  }

  v6 = (this + 16);
  if ((*(this + 2) & 0x80000000) != 0)
  {
    if (a2)
    {
      if ((v5 & 0x80000000) != 0)
      {
        v6 = v6->__r_.__value_.__r.__words[0];
      }

      *a2 = v6;
    }

    if (a3)
    {
      v9 = *(this + 39);
      if (v9 < 0)
      {
        v9 = *(this + 3);
      }

      *a3 = v9;
    }
  }

  else
  {
    v7 = std::string::find((this + 16), 58, 0);
    if (v7 != -1)
    {
      memset(&v11, 0, sizeof(v11));
      std::string::basic_string(&v11, v6, 0, v7, &v10);
      if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &v11;
      }

      else
      {
        v8 = v11.__r_.__value_.__r.__words[0];
      }

      XMP_NamespaceTable::GetURI(sRegisteredNamespaces, v8, a2, a3);
      if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v11.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_185ECDCBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WXMPMeta_GetNamespacePrefix_1(XMPMeta *a1, uint64_t a2, uint64_t (*a3)(uint64_t, void, void), unsigned int *a4)
{
  *a4 = 0;
  if (!a1 || !*a1)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 101;
    exception[1] = "Empty namespace URI";
    *(exception + 16) = 0;
  }

  memset(v10, 0, sizeof(v10));
  result = XMPMeta::GetNamespacePrefix(a1, &v10[4], v10, a4);
  v8 = result ^ 1;
  a4[8] = result;
  if (!a2)
  {
    v8 = 1;
  }

  if ((v8 & 1) == 0)
  {
    return a3(a2, *&v10[4], *v10);
  }

  return result;
}

void sub_185ECDD8C(void *a1, int a2)
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
  JUMPOUT(0x185ECDD44);
}

BOOL TXMPMeta<std::string>::GetNamespacePrefix(XMPMeta *a1, uint64_t a2)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  WXMPMeta_GetNamespacePrefix_1(a1, a2, TXMPMeta<std::string>::SetClientString, v5);
  if (*&v5[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v4 = *&v5[0];
    *exception = v6;
    exception[1] = v4;
    *(exception + 16) = 0;
  }

  return v6 != 0;
}

CFStringRef createNamespaceURIForPropertyPath(const __CFString *a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v8 = 0;
  if (!a1)
  {
    return 0;
  }

  PropertyPrefixFromPath = createPropertyPrefixFromPath(a1);
  if (!PropertyPrefixFromPath)
  {
    return 0;
  }

  IIOString::IIOString(v6, PropertyPrefixFromPath);
  UTF8String = IIOString::createUTF8String(v6);
  IIOString::~IIOString(v6);
  if (UTF8String)
  {
    if (TXMPMeta<std::string>::GetNamespaceURI(UTF8String, __p))
    {
      if (v8 >= 0)
      {
        v3 = __p;
      }

      else
      {
        v3 = __p[0];
      }

      v4 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v3, 0x8000100u);
    }

    else
    {
      v4 = 0;
    }

    free(UTF8String);
  }

  else
  {
    v4 = 0;
  }

  CFRelease(PropertyPrefixFromPath);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

const __CFString *createPropertyPrefixFromPath(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    Length = CFStringGetLength(result);
    v9 = OUTLINED_FUNCTION_0_16(Length, @"/", v3, v4, v5, v6, v7, v8, 0);
    if (v9)
    {
      v10 = ~v14.location;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10 + Length;
    if (v9)
    {
      v12 = v14.location + 1;
    }

    else
    {
      v12 = 0;
    }

    v15.location = v12;
    v15.length = 1;
    v13 = CFStringFindWithOptions(v1, @"?", v15, 0, &v14);
    if (v13)
    {
      ++v12;
    }

    v16.length = v11 - (v13 != 0);
    v16.location = v12;
    if (CFStringFindWithOptions(v1, @":", v16, 4uLL, &v14))
    {
      v17.length = v14.location - v12;
      v17.location = v12;
      return CFStringCreateWithSubstring(*MEMORY[0x1E695E480], v1, v17);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *IIOString::createUTF8String(IIOString *this)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return 0;
  }

  Length = CFStringGetLength(v2);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length + 1, 0x8000100u);
  v5 = malloc_type_malloc(MaximumSizeForEncoding, 0x100004077774924uLL);
  if (v5 && !CFStringGetCString(*(this + 2), v5, MaximumSizeForEncoding, 0x8000100u))
  {
    free(v5);
    return 0;
  }

  return v5;
}

uint64_t WXMPMeta_GetNamespaceURI_1(XMPMeta *a1, uint64_t a2, uint64_t (*a3)(uint64_t, void, void), unsigned int *a4)
{
  *a4 = 0;
  if (!a1 || !*a1)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 101;
    exception[1] = "Empty namespace prefix";
    *(exception + 16) = 0;
  }

  memset(v10, 0, sizeof(v10));
  result = XMPMeta::GetNamespaceURI(a1, &v10[4], v10, a4);
  v8 = result ^ 1;
  a4[8] = result;
  if (!a2)
  {
    v8 = 1;
  }

  if ((v8 & 1) == 0)
  {
    return a3(a2, *&v10[4], *v10);
  }

  return result;
}

void sub_185ECE1F4(void *a1, int a2)
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
  JUMPOUT(0x185ECE1ACLL);
}

BOOL TXMPMeta<std::string>::GetNamespaceURI(XMPMeta *a1, uint64_t a2)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  WXMPMeta_GetNamespaceURI_1(a1, a2, TXMPMeta<std::string>::SetClientString, v5);
  if (*&v5[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v4 = *&v5[0];
    *exception = v6;
    exception[1] = v4;
    *(exception + 16) = 0;
  }

  return v6 != 0;
}

const __CFString *createPropertyNameFromPath(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    Length = CFStringGetLength(result);
    if (OUTLINED_FUNCTION_0_16(Length, @":", v3, v4, v5, v6, v7, v8, 0))
    {
      v10.location = v9 + 1;
      v10.length = Length - (v9 + 1);
      return CFStringCreateWithSubstring(*MEMORY[0x1E695E480], v1, v10);
    }

    else
    {
      return CFStringCreateCopy(*MEMORY[0x1E695E480], v1);
    }
  }

  return result;
}

BOOL CGImageMetadataRegisterNamespaceForPrefix(CGMutableImageMetadataRef metadata, CFStringRef xmlns, CFStringRef prefix, CFErrorRef *err)
{
  IIOInitDebugFlags();
  if ((~gIIODebugFlags & 0x3000) == 0)
  {
    IIOString::IIOString(v22, prefix);
    v8 = IIOString::utf8String(v22);
    ImageIODebugOptions(3, "A", "CGImageMetadataRegisterNamespaceForPrefix", 0, v8, -1, 0);
    IIOString::~IIOString(v22);
  }

  if (!metadata)
  {
    goto LABEL_4;
  }

  v10 = CFGetTypeID(metadata);
  if (qword_1ED569DD0 != -1)
  {
    CGImageMetadataCopyTagWithPath_cold_1();
  }

  if (v10 == _MergedGlobals_1)
  {
    if (xmlns && (v11 = CFGetTypeID(xmlns), v11 == CFStringGetTypeID()))
    {
      if (prefix)
      {
        v12 = CFGetTypeID(prefix);
        if (v12 == CFStringGetTypeID())
        {
          pthread_mutex_lock((metadata + 136));
          v13 = *(metadata + 4);
          if (!v13)
          {
            goto LABEL_24;
          }

          Value = CFDictionaryGetValue(v13, xmlns);
          if (Value)
          {
            v15 = Value;
            v16 = CFGetTypeID(Value);
            if (v16 == CFStringGetTypeID())
            {
              v9 = 1;
              if (CFStringCompare(v15, prefix, 1uLL))
              {
                Mutable = CGImageMetadataRegisterNamespaceForPrefix::alreadyRegistered;
                if (!CGImageMetadataRegisterNamespaceForPrefix::alreadyRegistered)
                {
                  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
                  CGImageMetadataRegisterNamespaceForPrefix::alreadyRegistered = Mutable;
                }

                if (!CFSetContainsValue(Mutable, v15))
                {
                  CFSetAddValue(CGImageMetadataRegisterNamespaceForPrefix::alreadyRegistered, v15);
                  v18 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Error: Cannot register the prefix '%@', '%@' is already associated with the prefix '%@'.", prefix, xmlns, v15);
                  if (v18)
                  {
                    v19 = v18;
                    CGImageMetadataCreateAndLogError("CGImageMetadataRegisterNamespaceForPrefix", 4, v18, err);
                    CFRelease(v19);
                  }
                }

                v9 = 0;
              }

              goto LABEL_29;
            }

LABEL_28:
            v9 = 1;
LABEL_29:
            pthread_mutex_unlock((metadata + 136));
            return v9;
          }

          v20 = *(metadata + 4);
          if (!v20)
          {
LABEL_24:
            v20 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            *(metadata + 4) = v20;
          }

          if (!*(metadata + 5))
          {
            *(metadata + 5) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            v20 = *(metadata + 4);
          }

          CFDictionarySetValue(v20, xmlns, prefix);
          CFDictionarySetValue(*(metadata + 5), prefix, xmlns);
          goto LABEL_28;
        }
      }

      CGImageMetadataRegisterNamespaceForPrefix_cold_2(err);
    }

    else
    {
      CGImageMetadataRegisterNamespaceForPrefix_cold_3(err);
    }
  }

  else
  {
LABEL_4:
    CGImageMetadataRegisterNamespaceForPrefix_cold_4(err);
  }

  return 0;
}

void sub_185ECE66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

uint64_t ProcessingInstructionHandler(void *a1, const char *__s1, const char *a3)
{
  if (!__s1)
  {
    ProcessingInstructionHandler();
  }

  result = strcmp(__s1, "xpacket");
  if (!result)
  {
    if (a1[20] != a1[21])
    {
      operator new();
    }

    __break(1u);
  }

  return result;
}

void WXMPIterator_DecrementRefCount_1(_DWORD *a1)
{
  {
    WXMPIterator_DecrementRefCount_1_cold_1();
  }

  v4 = (a1 + 4);
  XMP_ReadWriteLock::Acquire((a1 + 4), 1);
  v2 = a1[2];
  if (v2 <= 0)
  {
    __assert_rtn("WXMPIterator_DecrementRefCount_1", "WXMPIterator.cpp", 105, "thiz->clientRefs > 0");
  }

  v3 = v2 - 1;
  a1[2] = v3;
  if (!v3)
  {
    XMP_ReadWriteLock::Release((a1 + 4));
    v4 = 0;
    (*(*a1 + 8))(a1);
  }

  XMP_AutoLock::~XMP_AutoLock(&v4);
}

void sub_185ECE82C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x185ECE7E8);
}

void sub_185ECE838(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  XMP_AutoLock::~XMP_AutoLock(va);
  _Unwind_Resume(a1);
}

uint64_t TXMPIterator<std::string>::~TXMPIterator(uint64_t a1)
{
  *a1 = &unk_1EF4D9080;
  WXMPIterator_DecrementRefCount_1(*(a1 + 8));
  *(a1 + 8) = 0;
  return a1;
}

void WXMPIterator_DecrementRefCount_1_cold_1()
{
  {
  }
}

void XMPIterator::~XMPIterator(XMPIterator *this)
{
  *this = &unk_1EF4DFAA0;
  if (*(this + 2) >= 1)
  {
    __assert_rtn("~XMPIterator", "XMPIterator.cpp", 506, "this->clientRefs <= 0");
  }

  v3 = (this + 368);
  std::vector<IterNode>::__destroy_vector::operator()[abi:fe200100](&v3);
  v3 = (this + 344);
  std::vector<IterNode>::__destroy_vector::operator()[abi:fe200100](&v3);
  if (*(this + 335) < 0)
  {
    operator delete(*(this + 39));
  }

  v2 = *(this + 35);
  if (v2)
  {
    *(this + 36) = v2;
    operator delete(v2);
  }

  if (*(this + 263) < 0)
  {
    operator delete(*(this + 30));
  }

  XMP_ReadWriteLock::~XMP_ReadWriteLock((this + 16));
}

{
  XMPIterator::~XMPIterator(this);

  JUMPOUT(0x186602850);
}

void WXMPMeta_DecrementRefCount_1(_DWORD *a1)
{
  {
    WXMPMeta_DecrementRefCount_1_cold_1();
  }

  v4 = (a1 + 4);
  XMP_ReadWriteLock::Acquire((a1 + 4), 1);
  v2 = a1[2];
  if (v2 <= 0)
  {
    __assert_rtn("WXMPMeta_DecrementRefCount_1", "WXMPMeta.cpp", 130, "thiz->clientRefs > 0");
  }

  v3 = v2 - 1;
  a1[2] = v3;
  if (!v3)
  {
    XMP_ReadWriteLock::Release((a1 + 4));
    v4 = 0;
    (*(*a1 + 8))(a1);
  }

  XMP_AutoLock::~XMP_AutoLock(&v4);
}

void sub_185ECEAB8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x185ECEA74);
}

void sub_185ECEAC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  XMP_AutoLock::~XMP_AutoLock(va);
  _Unwind_Resume(a1);
}

uint64_t TXMPMeta<std::string>::~TXMPMeta(uint64_t a1)
{
  *a1 = &unk_1EF4D9060;
  WXMPMeta_DecrementRefCount_1(*(a1 + 8));
  *(a1 + 8) = 0;
  return a1;
}

void WXMPMeta_DecrementRefCount_1_cold_1()
{
  {
  }
}

void XMP_Node::~XMP_Node(XMP_Node *this)
{
  *this = &unk_1EF4DE950;
  XMP_Node::RemoveChildren(this);
  XMP_Node::RemoveQualifiers(this);
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

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

{
  XMP_Node::~XMP_Node(this);

  JUMPOUT(0x186602850);
}

void XMPMeta::~XMPMeta(XMPMeta *this)
{
  *this = &unk_1EF4FCF18;
  if (*(this + 2) >= 1)
  {
    __assert_rtn("~XMPMeta", "XMPMeta.cpp", 695, "this->clientRefs <= 0");
  }

  v2 = *(this + 43);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 43) = 0;
  XMP_Node::~XMP_Node((this + 224));
  XMP_ReadWriteLock::~XMP_ReadWriteLock((this + 16));
}

{
  XMPMeta::~XMPMeta(this);

  JUMPOUT(0x186602850);
}

void metadataSetSource(uint64_t a1, int a2)
{
  if (a1)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      Count = CFDictionaryGetCount(v3);
      v6 = malloc_type_calloc(8uLL, Count, 0x80040B8603338uLL);
      v7 = malloc_type_calloc(8uLL, Count, 0x2004093837F09uLL);
      CFDictionaryGetKeysAndValues(*(a1 + 24), v6, v7);
      if (Count >= 1)
      {
        v8 = v7;
        do
        {
          v9 = *v8++;
          *(CGImageSourceGetSource(v9) + 68) = a2;
          --Count;
        }

        while (Count);
      }

      if (v6)
      {
        free(v6);
      }

      if (v7)
      {

        free(v7);
      }
    }
  }
}

void WXMPFiles_Terminate_1(XMPFiles *a1)
{
  if (voidResult(void)::onceToken != -1)
  {
    WXMPFiles_Terminate_1_cold_1();
  }

  *gVoidResult = 0;
  XMPFiles::Terminate(a1);
}

void sub_185ECEE48(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void XMPFiles::Terminate(XMPFiles *this)
{
  if (!--sXMPFilesInitCount)
  {
    v1 = Common::HandlerRegistry::terminate(this);
    v2 = TXMPMeta<std::string>::Terminate(v1);
    v3 = ID3_Support::TerminateGlobals(v2);
    ISOMedia::TerminateGlobals(v3);
    _cg_jpeg_mem_term(v4, v5, v6);
    if (_MergedGlobals_6 != -1)
    {
      XMPFiles::Initialize();
    }

    v7 = qword_1ED56A1C0;
    *(qword_1ED56A1C0 + 24) = 0;
    *(v7 + 32) = 0u;
    *(v7 + 8) = 1;
    *(v7 + 16) = 0;
    if (sProgressDefault(void)::onceToken != -1)
    {
      XMPFiles::Terminate();
    }

    v8 = gProgressDefault;
    *(gProgressDefault + 8) = 0;
    *(v8 + 16) = 0;
    *v8 = 0;
    *(v8 + 24) = 1065353216;
    *(v8 + 28) = 0;
  }
}

void ReadPhotoshopImageResource(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v73 = *MEMORY[0x1E69E9840];
  if (a3 >= 0xD)
  {
    v5 = 0;
    v6 = 0;
    v54 = a3 - 7;
    cf = 0;
    theDict = 0;
    v53 = a3 - 4;
    allocator = *MEMORY[0x1E695E480];
    v7 = @"%02X";
    while (1)
    {
      if (*(a2 + v5) != 1296646712)
      {
        goto LABEL_64;
      }

      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      *__dst = 0u;
      v58 = 0u;
      v8 = (a2 + v5 + 6);
      v9 = *v8;
      if (v54 - v5 < v9)
      {
        break;
      }

      v10 = v7;
      v11 = *(a2 + v5 + 4);
      strncpy(__dst, v8 + 1, *v8);
      __dst[v9] = 0;
      v12 = (v9 + 2) & 0x1FE;
      v13 = v12 + v5 + 6;
      if (v13 + 3 > a3)
      {
        if (v6)
        {
          CFRelease(v6);
        }

        v41 = 261;
        v6 = cf;
        if (!cf)
        {
          goto LABEL_72;
        }

        goto LABEL_71;
      }

      if (v13 > v53 || ((v14 = *(a2 + v13), v13 += 4, a3 >= v13) ? (v15 = v14 == 0) : (v15 = 1), v15))
      {
        v7 = v10;
      }

      else
      {
        v51 = v6;
        v16 = bswap32(v14);
        if (a3 - v13 < v16)
        {
          LogError("ReadPhotoshopImageResource", 284, "*** ERROR: Corrupt 8BIM data. Reported 8BIM length (%zu bytes) exceeds actual length (%zu bytes).\n", v16, a3 - v13);
          v6 = v51;
          goto LABEL_78;
        }

        v17 = __rev16(v11);
        if (v17 == 1028)
        {
          v7 = v10;
          if (cf)
          {
            CFRelease(cf);
          }

          cf = CreateMetadataFromIPTCDatabuffer((a2 + v13), v16);
        }

        else
        {
          v7 = v10;
          if (v17 - 2000 > 0x3E6 || v16 % 0x1A)
          {
            if (v17 == 2999)
            {
              if (v51)
              {
                CFRelease(v51);
              }

              if (v16 <= *(a2 + v13))
              {
                ReadPhotoshopImageResource_cold_1();
                v6 = 0;
LABEL_78:
                v37 = theDict;
LABEL_79:
                if (v6)
                {
                  goto LABEL_80;
                }

                goto LABEL_81;
              }

              v51 = CFStringCreateWithPascalString(allocator, (a2 + v13), 0);
            }

            else if (v17 == 1061 && v14 == 0x10000000)
            {
              Mutable = CFStringCreateMutable(allocator, 32);
              for (i = 0; i != 16; ++i)
              {
                CFStringAppendFormat(Mutable, 0, v10, *(a2 + v13 + i));
              }

              v36 = *(a1 + 64);
              if (v36)
              {
                CFRelease(v36);
              }

              *(a1 + 64) = Mutable;
            }
          }

          else
          {
            v45 = 0;
            path = CGPathCreateMutable();
            v18 = 0;
            v19 = 0;
            v44 = 0;
            v20 = 0;
            v48 = 0;
            v21 = a2 + v5 + v12;
            while (2)
            {
              v22 = v18 + 13;
              while (1)
              {
                v23 = __rev16(*(v21 + v22 - 3));
                v56 = 2;
                if (v23 > 5)
                {
                  break;
                }

                if (((1 << v23) & 0x36) == 0)
                {
                  if (v23)
                  {
                    if (v20)
                    {
                      add_points_to_path(path, v20, 3 * v45, v44 & 1);
                      free(v20);
                    }

                    v45 = __rev16(*(v21 + v22 - 1));
                    v48 = v45 + 2 * v45;
                    v20 = malloc_type_calloc(v48, 0x10uLL, 0x1000040451B5BE8uLL);
                    v44 = 0;
                    v19 = 0;
                  }

                  else
                  {
                    if (v20)
                    {
                      add_points_to_path(path, v20, 3 * v45, v44 & 1);
                      free(v20);
                    }

                    v25 = __rev16(*(v21 + v22 - 1));
                    if (!v25)
                    {
                      goto LABEL_41;
                    }

                    v45 = v25;
                    v48 = 3 * v25;
                    v20 = malloc_type_calloc(3 * v25, 0x10uLL, 0x1000040451B5BE8uLL);
                    v19 = 0;
                    v44 = 1;
                  }

                  break;
                }

                if (v20)
                {
                  v47 = v19;
                  if (v19 <= (v48 - 3))
                  {
                    v43 = (v21 + v22 - 3);
                    v26 = &v20[v19];
                    v26->x = read_point(v43, &v56);
                    v26->y = v27;
                    v42 = &v20[v47];
                    v26[1].x = read_point(v43, &v56);
                    v26[1].y = v28;
                    v7 = v10;
                    v29 = read_point(v43, &v56);
                    v19 = v47 + 3;
                    v42[2].x = v29;
                    v42[2].y = v30;
                  }

                  else
                  {
                    LogError("createPathWithData", 159, "*** ERROR: corrupt 8BIM data");
                    v19 = v47;
                  }

                  break;
                }

                v24 = v22 + 13;
                v22 += 26;
                if (v24 >= v16)
                {
                  goto LABEL_41;
                }
              }

              v18 = v22 + 13;
              if (v22 + 13 < v16)
              {
                continue;
              }

              break;
            }

            if (v20)
            {
              add_points_to_path(path, v20, 3 * v45, v44 & 1);
              free(v20);
            }

LABEL_41:
            v31 = theDict;
            if (!theDict)
            {
              v31 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            }

            if (path)
            {
              if (v31)
              {
                v32 = CFStringCreateWithCString(allocator, __dst, 0);
                if (v32)
                {
                  v33 = v32;
                  CFDictionarySetValue(v31, v32, path);
                  CFRelease(v33);
                }
              }
            }

            theDict = v31;
            CGPathRelease(path);
          }
        }

        v13 += (v16 + 1) & 0xFFFFFFFE;
        v6 = v51;
      }

      v5 = v13;
      if (v13 + 12 >= a3)
      {
        goto LABEL_64;
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    v41 = 247;
    if (!v6)
    {
      goto LABEL_72;
    }

LABEL_71:
    CFRelease(v6);
LABEL_72:
    LogError("ReadPhotoshopImageResource", v41, "*** ERROR: parsing 8BIM header, exceeds buffer length.\n");
    return;
  }

  cf = 0;
  v6 = 0;
  theDict = 0;
LABEL_64:
  CGImageMetadataMerge(a1, cf, 0);
  v37 = theDict;
  if (!theDict || !v6)
  {
    goto LABEL_79;
  }

  Value = CFDictionaryGetValue(theDict, v6);
  v39 = CGImageMetadataTagCreate(@"http://ns.apple.com/ImageIO/1.0/", @"iio", @"PSIRClippingPath", kCGImageMetadataTypeString, Value);
  if (v39)
  {
    v40 = v39;
    CGImageMetadataAddTag(a1, v39);
    CFRelease(v40);
  }

LABEL_80:
  CFRelease(v6);
LABEL_81:
  if (v37)
  {
    CFRelease(v37);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void Common::HandlerRegistry::~HandlerRegistry(Common::HandlerRegistry *this)
{
  v2 = *this;
  if (*this)
  {
    std::__tree<unsigned long long>::destroy(*this, *(v2 + 8));
    MEMORY[0x186602850](v2, 0x1020C4062D53EE8);
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__tree<unsigned long long>::destroy(*(this + 1), *(v3 + 8));
    MEMORY[0x186602850](v3, 0x1020C4062D53EE8);
  }

  v4 = *(this + 2);
  if (v4)
  {
    std::__tree<unsigned long long>::destroy(*(this + 2), *(v4 + 8));
    MEMORY[0x186602850](v4, 0x1020C4062D53EE8);
  }

  v5 = *(this + 3);
  if (v5)
  {
    std::__tree<unsigned long long>::destroy(*(this + 3), *(v5 + 8));
    MEMORY[0x186602850](v5, 0x1020C4062D53EE8);
  }
}

uint64_t Common::HandlerRegistry::terminate(Common::HandlerRegistry *this)
{
  result = Common::HandlerRegistry::sInstance;
  if (Common::HandlerRegistry::sInstance)
  {
    Common::HandlerRegistry::~HandlerRegistry(Common::HandlerRegistry::sInstance);
    result = MEMORY[0x186602850]();
  }

  Common::HandlerRegistry::sInstance = 0;
  return result;
}

uint64_t AppleJPEGReadPlugin::copyImageBlockSetImp(uint64_t a1, const void *a2, const void *a3, __CFDictionary *a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v132[4] = *MEMORY[0x1E69E9840];
  v131 = 0;
  v129 = 0;
  v130 = 0;
  v128 = 0;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v119 = 0u;
  v117 = 0;
  v118 = 0;
  v116 = 0;
  v115 = 0;
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  memset(v110, 0, sizeof(v110));
  IIODictionary::IIODictionary(v110, a4);
  AppleJPEGReadPlugin::appleJPEGDecodeSetup(a1);
  v107 = *(a1 + 332);
  if (!a3)
  {
    LODWORD(v18) = *(a1 + 244);
    LODWORD(v19) = *(a1 + 248);
    v21 = v18;
    v23 = v19;
    if (*(a1 + 528))
    {
      goto LABEL_3;
    }

LABEL_30:
    _cg_jpeg_mem_term("copyImageBlockSetImp", 2912, "*** applejpeg_decode_session is nil");
LABEL_31:
    v32 = 0;
    goto LABEL_212;
  }

  CGImageProviderGetSize();
  v21 = v20;
  v23 = v22;
  if (!*(a1 + 528))
  {
    goto LABEL_30;
  }

LABEL_3:
  if ((*(a1 + 703) & 1) == 0)
  {
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("    calling appleJPEGDecodeOpen: NOT seeking to jpegOffset: %d\n", *(a1 + 480));
    }

    HIDWORD(v116) = AppleJPEGReadPlugin::appleJPEGDecodeOpen(a1);
    if (HIDWORD(v116))
    {
      goto LABEL_31;
    }

    HIDWORD(v116) = applejpeg_decode_get_image_info();
    if (HIDWORD(v116))
    {
      goto LABEL_31;
    }
  }

  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("    %s:%d: Entering\n", "copyImageBlockSetImp", 2926);
  }

  IIOReadPlugin::debugCopyBlockSet(a1, a3, a5, a6, a7, a8, a9, a10);
  if (IIODictionary::containsKey(v110, @"kCGImageBlockPreHeating"))
  {
    *(a1 + 521) = IIODictionary::getBoolForKey(v110, @"kCGImageBlockPreHeating");
  }

  v24 = *MEMORY[0x1E695F2A0];
  if (!IIODictionary::containsKey(v110, *MEMORY[0x1E695F2A0]))
  {
    goto LABEL_24;
  }

  Uint64ForKey = IIODictionary::getUint64ForKey(v110, v24);
  if (Uint64ForKey - 1 >= 0xFF)
  {
    v27 = Uint64ForKey;
  }

  else
  {
    v27 = 256;
  }

  v28 = (a1 + 300);
  if (v27 > *(a1 + 308) || v27 > *(a1 + 312))
  {
    LODWORD(v132[0]) = 0;
    v29 = *(a1 + 316);
    v113 = *v28;
    v114 = v29;
LABEL_19:
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("    decoding single tile: {%g,%g,%g,%g} {%g,%g}\n", a5, a6, a7, a8, a9, a10);
    }

    v30 = AppleJPEGReadPlugin::copyImageBlockSetSingleTile(a1, a2, a3, a5, a6, a7, a8, a9, a10, v26, v132);
    goto LABEL_22;
  }

  LODWORD(v132[0]) = 0;
  v51 = *(a1 + 316);
  v113 = *v28;
  v114 = v51;
  if (!v27)
  {
    goto LABEL_19;
  }

  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("    decoding multi tiles [%d]: {%g,%g,%g,%g} {%g,%g}\n", v27, a5, a6, a7, a8, a9, a10);
  }

  v30 = AppleJPEGReadPlugin::copyImageBlockSetTiles(a1, a2, a3, v27, v132, a5, a6, a7, a8, a9, a10);
LABEL_22:
  ImageBlockSetWithHardwareDecode = v30;
  v32 = 0;
  v33 = v114;
  *v28 = v113;
  *(a1 + 316) = v33;
  if (!v30)
  {
    v34 = 0;
    if (LODWORD(v132[0]) == 1)
    {
      goto LABEL_204;
    }

LABEL_24:
    v35 = *(a1 + 324);
    if (*(a1 + 376) == 1)
    {
      if ((gIIODebugFlags & 0x30000) != 0)
      {
        ImageIOLog("RB  multi-res: original subsampleFactor: %d\n", v107);
      }

      v36 = *(a1 + 316);
      v111 = *(a1 + 300);
      v112 = v36;
      if (v107 < 2)
      {
        v37 = v21;
        v38 = v23;
      }

      else
      {
        v37 = *(a1 + 624);
        v38 = *(a1 + 628);
      }

      v39 = v37 >> 3;
      v40 = (v37 >> 3);
      v41 = (v38 >> 3);
      if (a9 > v40 || a10 > v41)
      {
        v43 = v37 >> 2;
        v40 = (v37 >> 2);
        v41 = (v38 >> 2);
        if (a9 > v40 || a10 > v41)
        {
          v45 = v37 >> 1;
          v40 = v45;
          v46 = v38 >> 1;
          v41 = v46;
          v48 = a9 > v45 || a10 > v41 || v107 == 2;
          if (!v48)
          {
            *(a1 + 332) = 2;
            *(a1 + 308) = v45;
            *(a1 + 312) = v46;
            v49 = v45 * ((*(a1 + 256) + 7) >> 3 << (2 * (v35 != 1)));
            v48 = (v49 & 0xFFFFFFFF00000000) == 0;
            v50 = (v49 + 15) & 0xFFFFFFF0;
            if (!v48)
            {
              v50 = 0;
            }

            *(a1 + 316) = v50;
            if ((gIIODebugFlags & 0x30000) != 0)
            {
              ImageIOLog("RB  multi-res: new subsampleFactor 2:  rb=%d\n", v50);
            }

            goto LABEL_122;
          }
        }

        else if (v107 != 4)
        {
          *(a1 + 332) = 4;
          *(a1 + 308) = v43;
          *(a1 + 312) = v38 >> 2;
          v69 = v43 * ((*(a1 + 256) + 7) >> 3 << (2 * (v35 != 1)));
          v48 = (v69 & 0xFFFFFFFF00000000) == 0;
          v70 = (v69 + 15) & 0xFFFFFFF0;
          if (!v48)
          {
            v70 = 0;
          }

          *(a1 + 316) = v70;
          if ((gIIODebugFlags & 0x30000) != 0)
          {
            ImageIOLog("RB  multi-res: new subsampleFactor 4:  rb=%d\n", v70);
          }

          goto LABEL_122;
        }
      }

      else if (v107 != 8)
      {
        *(a1 + 332) = 8;
        *(a1 + 308) = v39;
        *(a1 + 312) = v38 >> 3;
        v52 = v39 * ((*(a1 + 256) + 7) >> 3 << (2 * (v35 != 1)));
        v48 = (v52 & 0xFFFFFFFF00000000) == 0;
        v53 = (v52 + 15) & 0xFFFFFFF0;
        if (!v48)
        {
          v53 = 0;
        }

        *(a1 + 316) = v53;
        if ((gIIODebugFlags & 0x30000) != 0)
        {
          ImageIOLog("RB  multi-res: new subsampleFactor 8:  rb=%d\n", v53);
        }

LABEL_122:
        v55 = *(a1 + 316);
        v32 = 1;
        v23 = v41;
        v59 = v40;
LABEL_71:
        if ((*(a1 + 369) & 1) == 0)
        {
          *(a1 + 520) = 0;
          if ((gIIODebugFlags & 0x1000000000) != 0)
          {
            ImageIOLog("H   Skipping HW decode - image is not final\n");
          }
        }

        if (*(a1 + 632) == 1)
        {
          *(a1 + 520) = 0;
          if ((gIIODebugFlags & 0x1000000000) != 0)
          {
            ImageIOLog("H   Skipping HW decode - APPLEJPEG_JPEG_PROGRESSIVE\n");
          }
        }

        if (a10 < v23)
        {
          v60 = 1;
        }

        else
        {
          v60 = v32;
        }

        if (v60)
        {
          a8 = v23;
        }

        v61 = *(a1 + 440);
        CGImageProviderGetPixelSize();
        if (ImageIOShouldAllowFullsizeDecode())
        {
          if (v61 == 1)
          {
            v106 = (a1 + 404);
            *(a1 + 400) = 0;
            goto LABEL_93;
          }

          if ((*(a1 + 369) & 1) == 0)
          {
            v68 = *(a1 + 632);
            v106 = (a1 + 404);
            *(a1 + 400) = 0;
            if (v68 == 1)
            {
              goto LABEL_93;
            }

            goto LABEL_91;
          }

LABEL_90:
          v106 = (a1 + 404);
          *(a1 + 400) = 0;
LABEL_91:
          if ((*(a1 + 520) & 1) == 0)
          {
            v133.origin.x = a5;
            v133.origin.y = a6;
            v133.size.width = v59;
            v133.size.height = a8;
            IIOReadPlugin::optInForBandedDecoding(a1, v133);
          }

LABEL_93:
          v63 = *(a1 + 112);
          *(a1 + 300) = 0;
          *(a1 + 304) = *(a1 + 312) * v63;
          HIDWORD(v116) = IIOReadPlugin::allocateBlockArray(a1, *(a1 + 104));
          if (!HIDWORD(v116))
          {
            if (!IIOReadPlugin::getCachedBlocks(a1))
            {
              v34 = 0;
              goto LABEL_192;
            }

            v64 = *(a1 + 24);
            if (v64)
            {
              v34 = IIOImageReadSession::mapData(v64);
            }

            else
            {
              v34 = 0;
            }

            if (*(a1 + 697) == 1 && *(a1 + 698) != 1)
            {
              *(a1 + 520) = 0;
            }

            if ((gIIODebugFlags & 0x1000000000) != 0)
            {
              if (*(a1 + 520))
              {
                v65 = "YES";
              }

              else
              {
                v65 = "NO";
              }

              ImageIOLog("H   %s: image size: {%d, %d}  block size: {%d, %d}   rb: %d    subsample: %d    useHW: %s\n", "copyImageBlockSetImp", *(a1 + 244), *(a1 + 248), *(a1 + 308), *(a1 + 312), *(a1 + 316), *(a1 + 332), v65);
            }

            if (*(a1 + 520) != 1)
            {
LABEL_130:
              v71 = *(a1 + 112);
              if (v71 < *(a1 + 116))
              {
                v104 = v34;
                v109 = v32;
                v72 = 0;
                v73 = 8 * v71 - 8 * v63;
                v74 = MEMORY[0x1E695F050];
                do
                {
                  v75 = *v106;
                  if (*v106)
                  {
                    *(a1 + 312) = v75;
                  }

                  else
                  {
                    v75 = *(a1 + 312);
                  }

                  *(a1 + 304) = v75 * v71;
                  applejpeg_decode_clear_options();
                  v76 = applejpeg_decode_set_option_outformat();
                  HIDWORD(v116) = v76;
                  if (v76)
                  {
                    _cg_jpeg_mem_term("copyImageBlockSetImp", 3175, "    applejpeg_decode_set_option_outformat: err = %d\n", v76);
                  }

                  v77 = applejpeg_decode_set_option_outsize();
                  HIDWORD(v116) = v77;
                  if (v77)
                  {
                    _cg_jpeg_mem_term("copyImageBlockSetImp", 3188, "    applejpeg_decode_set_option_outsize err = %d\n", v77);
                  }

                  v132[0] = *(a1 + 316);
                  v132[1] = v132[0];
                  v132[2] = v132[0];
                  v132[3] = v132[0];
                  v78 = applejpeg_decode_set_option_stride();
                  HIDWORD(v116) = v78;
                  if (v78)
                  {
                    v79 = _cg_jpeg_mem_term("copyImageBlockSetImp", 3196, "    applejpeg_decode_set_option_stride err = %d\n", v78);
                  }

                  v79.n128_u32[0] = *(a1 + 300);
                  x = v79.n128_u64[0];
                  v79.n128_u32[0] = *(a1 + 304);
                  y = v79.n128_u64[0];
                  v79.n128_u32[0] = *(a1 + 308);
                  width = v79.n128_u64[0];
                  v83 = *(a1 + 312);
                  if (y + v83 <= v23)
                  {
                    height = v83;
                  }

                  else
                  {
                    height = v23 - y;
                  }

                  if (*(a1 + 104) <= 1u && v83 == *(a1 + 280))
                  {
                    if (*(a1 + 332) <= 1u)
                    {
                      v85 = applejpeg_decode_set_option_outsize();
                      HIDWORD(v116) = v85;
                      if (v85)
                      {
                        _cg_jpeg_mem_term("copyImageBlockSetImp", 3232, "    applejpeg_decode_set_option_outsize err = %d\n", v85);
                      }
                    }
                  }

                  else
                  {
                    v86 = applejpeg_decode_set_option_crop();
                    HIDWORD(v116) = v86;
                    if (v86)
                    {
                      _cg_jpeg_mem_term("copyImageBlockSetImp", 3223, "    applejpeg_decode_set_option_crop err = %d\n", v86);
                    }
                  }

                  if (*(a1 + 369) == 1)
                  {
                    AppleJPEGReadPlugin::create_or_restoreIndexTable(a1);
                  }

                  if (*(a1 + 701) != -1)
                  {
                    applejpeg_decode_set_option_force_app14();
                  }

                  applejpeg_decode_set_option_error_fill();
                  v87 = applejpeg_decode_set_option_mosquito_spray();
                  HIDWORD(v116) = v87;
                  if (v87)
                  {
                    _cg_jpeg_mem_term("copyImageBlockSetImp", 3277, "    applejpeg_decode_set_option_mosquito_spray err = %d\n", v87);
                  }

                  v88 = applejpeg_decode_set_option_multithread();
                  HIDWORD(v116) = v88;
                  if (v88)
                  {
                    _cg_jpeg_mem_term("copyImageBlockSetImp", 3284, "    applejpeg_decode_set_option_multithread err = %d\n", v88);
                  }

                  output_dimensions = applejpeg_decode_get_output_dimensions();
                  v90 = output_dimensions;
                  HIDWORD(v116) = output_dimensions;
                  if (output_dimensions)
                  {
                    v100 = AppleJPEGReadPlugin::appleJPEGErrorString(output_dimensions, output_dimensions);
                    _cg_jpeg_mem_term("copyImageBlockSetImp", 3292, "*** ERROR: applejpeg_decode_get_output_dimensions - error %d (%s)\n", v90, v100);
                    if ((gIIODebugFlags & 0x30000) != 0)
                    {
                      ImageIOLog("    %s:%d: Options error %d\n", "copyImageBlockSetImp", 3293, HIDWORD(v116));
                    }

LABEL_203:
                    ImageBlockSetWithHardwareDecode = 0;
                    v32 = v109;
                    v34 = v104;
                    goto LABEL_204;
                  }

                  applejpeg_decode_get_output_buffer_size();
                  v91 = *(a1 + 316);
                  if (v117 != v91)
                  {
                    _cg_jpeg_mem_term("copyImageBlockSetImp", 3302, "*** ERROR: get_output_buffer_size rb=%d  blockGeo.rb=%d\n", v117, v91);
                    v91 = *(a1 + 316);
                  }

                  v92 = v118;
                  v93 = v91 * v115;
                  if (v118 < v93)
                  {
                    v118 = v93;
                    v92 = v93;
                  }

                  if ((gIIODebugFlags & 0x30000) != 0)
                  {
                    ImageIOLog("    %s:%d: applejpeg_decode_get_output_buffer_size:%ld rowB:%ld size:%ldx%ld\n", "copyImageBlockSetImp", 3307, v92, v117, v116, v115);
                    v92 = v118;
                  }

                  v94 = _ImageIO_Malloc(v92, *(a1 + 416), &v131, kImageMalloc_APPLEJPEG_Data[0], 0, 0);
                  if (!v94)
                  {
                    goto LABEL_203;
                  }

                  if ((gIIODebugFlags & 0x30000) != 0)
                  {
                    ImageIOLog("    %s:%d: Got outbuf\n", "copyImageBlockSetImp", 3319);
                  }

                  v129 = v94;
                  v130 = v118;
                  v95 = applejpeg_decode_image_all();
                  HIDWORD(v116) = v95;
                  if (v95)
                  {
                    if ((gIIODebugFlags & 0x30000) != 0)
                    {
                      ImageIOLog("    %s:%d: Decode error %d\n", "copyImageBlockSetImp", 3326, v95);
                      v95 = HIDWORD(v116);
                    }

                    if (v95 == -2)
                    {
                      *(a1 + 371) = 0;
                      v72 = 5;
                    }

                    else
                    {
                      if (v95 != 9 && v95 != -1)
                      {
                        goto LABEL_203;
                      }

                      ++v72;
                      *(a1 + 371) = 0;
                      v96 = *(a1 + 16);
                      if (v96)
                      {
                        IIOImagePlus::setStatus(v96, -6);
                      }
                    }
                  }

                  if ((*(a1 + 369) & 1) == 0 && v72)
                  {
                    *(a1 + 371) = 0;
                    v97 = *(a1 + 16);
                    if (v97)
                    {
                      IIOImagePlus::setStatus(v97, -6);
                    }

                    v72 = 5;
                  }

                  if ((gIIODebugFlags & 0x30000) != 0)
                  {
                    ImageIOLog("    %s:%d: Decoded image\n", "copyImageBlockSetImp", 3355);
                  }

                  if (appleJPEGTintCheck != -1)
                  {
                    AppleJPEGReadPlugin::copyImageBlockSetImp();
                  }

                  v134.origin.x = x;
                  v134.origin.y = y;
                  v134.size.width = width;
                  v134.size.height = height;
                  *(*(a1 + 96) + v73) = IIOReadPlugin::createImageBlock(a1, v94, v131, v134, *(a1 + 316), *(a1 + 371));
                  if (!CGRectEqualToRect(*(a1 + 120), *v74))
                  {
                    v137.origin.x = x;
                    v137.origin.y = y;
                    v137.size.width = width;
                    v137.size.height = height;
                    v135 = CGRectUnion(*(a1 + 120), v137);
                    x = v135.origin.x;
                    y = v135.origin.y;
                    width = v135.size.width;
                    height = v135.size.height;
                  }

                  *(a1 + 120) = x;
                  *(a1 + 128) = y;
                  *(a1 + 136) = width;
                  *(a1 + 144) = height;
                  if (++v71 >= *(a1 + 116))
                  {
                    break;
                  }

                  v73 += 8;
                }

                while (v72 < 5);
                v98 = v72 == 0;
                v32 = v109;
                v34 = v104;
LABEL_193:
                if (*(a1 + 369) == 1)
                {
                  AppleJPEGReadPlugin::save_index_table(a1);
                }

                if (v98)
                {
                  v99 = *(a1 + 16);
                  if (v99)
                  {
                    IIOImagePlus::setStatus(v99, kCGImageStatusComplete);
                  }
                }

                ImageBlockSetWithHardwareDecode = 0;
                if (a3 && *(a1 + 104))
                {
                  v138.origin.x = 0.0;
                  v138.origin.y = 0.0;
                  v138.size.width = v59;
                  v138.size.height = v23;
                  v136 = CGRectIntersection(*(a1 + 120), v138);
                  *(a1 + 120) = v136;
                  ImageBlockSetWithHardwareDecode = IIOReadPlugin::imageBlockSetCreate(a1, a3, *(a1 + 104), v59, v23, v136.origin.x, v136.origin.y, v136.size.width, v136.size.height, *(a1 + 96), a2);
                  goto LABEL_205;
                }

LABEL_204:
                if (!a3)
                {
                  goto LABEL_206;
                }

                goto LABEL_205;
              }

LABEL_192:
              v98 = 1;
              goto LABEL_193;
            }

            ImageBlockSetWithHardwareDecode = AppleJPEGReadPlugin::createImageBlockSetWithHardwareDecode(a1, a2, a3, a4, &v116 + 1);
            if (ImageBlockSetWithHardwareDecode)
            {
              goto LABEL_204;
            }

            v66 = *(a1 + 104);
            v67 = *(a1 + 96);
            if (v66)
            {
              if (!a3 && v67 && !HIDWORD(v116))
              {
                ImageBlockSetWithHardwareDecode = 0;
                if ((v32 & 1) == 0)
                {
                  goto LABEL_114;
                }

LABEL_207:
                v101 = v112;
                *(a1 + 300) = v111;
                *(a1 + 316) = v101;
                *(a1 + 332) = v107;
                if (!v34)
                {
                  goto LABEL_210;
                }

                goto LABEL_208;
              }

              if (v67)
              {
                goto LABEL_127;
              }
            }

            else
            {
              if (v67)
              {
LABEL_127:
                if ((gIIODebugFlags & 0x1000000000) != 0)
                {
                  ImageIOLog("H   Hardware blockset is NULL, falling back to software decode.  (RB: %d\n", v55);
                }

                *(a1 + 704) = 1;
                *(a1 + 520) = 0;
                goto LABEL_130;
              }

              v66 = 1;
              *(a1 + 104) = 1;
            }

            HIDWORD(v116) = IIOReadPlugin::allocateBlockArray(a1, v66);
            goto LABEL_127;
          }

          goto LABEL_212;
        }

        *(a1 + 520) = 0;
        if ((gIIODebugFlags & 0x1000000000) != 0)
        {
          PixelSize = CGImageProviderGetPixelSize();
          ImageIOLog("H   Disabling hardware decode, image is too large (%g MB).\n", v59 * v23 * PixelSize * 0.000000953674316);
        }

        if (v61 != 1)
        {
          goto LABEL_90;
        }

        _cg_jpeg_mem_term("copyImageBlockSetImp", 3070, "Rejecting singleton request - image is too large\n");
LABEL_212:
        v34 = 0;
        ImageBlockSetWithHardwareDecode = 0;
        if (a3)
        {
          goto LABEL_205;
        }

        goto LABEL_206;
      }
    }

    v54 = v35 != 1;
    v55 = *(a1 + 316);
    v56 = *(a1 + 308);
    v57 = v56 * ((*(a1 + 256) + 7) >> 3 << (2 * v54));
    v48 = (v57 & 0xFFFFFFFF00000000) == 0;
    v58 = (v57 + 15) & 0xFFFFFFF0;
    if (!v48)
    {
      v58 = 0;
    }

    if (v55 != v58)
    {
      LogFault("copyImageBlockSetImp", 3040, "🔺 IIO-ERROR: img: {%d x %d}  blockGeoRB: %d   tempRB: %d   unadjRB: %d   subSample: %d\n", v56, *(a1 + 312), v55, v58, *(a1 + 316), *(a1 + 332));
    }

    v32 = 0;
    v59 = v21;
    goto LABEL_71;
  }

  v34 = 0;
  if (a3)
  {
LABEL_205:
    IIOReadPlugin::freeBlockArray(a1);
  }

LABEL_206:
  if (v32)
  {
    goto LABEL_207;
  }

LABEL_114:
  *(a1 + 332) = v107;
  if (!v34)
  {
    goto LABEL_210;
  }

LABEL_208:
  v102 = *(a1 + 24);
  if (v102)
  {
    IIOImageReadSession::unmapData(v102);
  }

LABEL_210:
  IIODictionary::~IIODictionary(v110);
  return ImageBlockSetWithHardwareDecode;
}

void sub_185ED0688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

double WXMPMeta_Terminate_1(XMPMeta *a1)
{
  {
    WXMPMeta_Terminate_1_cold_1();
  }

  return XMPMeta::Terminate(a1);
}

void sub_185ED070C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t AppleJPEGReadPlugin::createImageBlockSetWithHardwareDecode(unsigned __int8 *a1, const void *a2, uint64_t a3, const __CFDictionary *a4, int *a5)
{
  v21 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  IIODictionary::IIODictionary(&v18);
  memset(v17, 0, sizeof(v17));
  IIODictionary::IIODictionary(v17, a4);
  Uint32ForKey = IIODictionary::getUint32ForKey(v17, @"kCGImageSurfaceFormatRequest");
  v11 = a1[437];
  if (Uint32ForKey == 875704422)
  {
    _cg_jpeg_mem_term("createImageBlockSetWithHardwareDecode", 4141, "    requested '420f' format will be ignored (creating a monochrome/RGBx blockset)\n");
  }

  if (v11)
  {
    IIONumber::IIONumber(v15, 1380401729);
  }

  else
  {
    IIONumber::IIONumber(v15, 1111970369);
  }

  IIODictionary::setObjectForKey(&v18, value, @"kCGImageSurfaceFormatRequest");
  IIONumber::~IIONumber(v15);
  v12 = (*(*a1 + 224))(a1, a3, v19, &v21, 0);
  if (v12)
  {
    _cg_jpeg_mem_term("createImageBlockSetWithHardwareDecode", 4154, "*** ERROR: copyIOSurfaceImp returned: %d\n", v12);
  }

  if (!v21)
  {
    ImageBlockFromIOSurface = 0;
    if (!a5)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  ImageBlockFromIOSurface = AppleJPEGReadPlugin::createImageBlockFromIOSurface(a1, v21, a2, a3);
  IIO_IOSurfaceRelease(v21);
  if (a5)
  {
LABEL_10:
    *a5 = v12;
  }

LABEL_11:
  IIODictionary::~IIODictionary(v17);
  IIODictionary::~IIODictionary(&v18);
  return ImageBlockFromIOSurface;
}

void sub_185ED08D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  IIONumber::~IIONumber(va);
  IIODictionary::~IIODictionary(va1);
  IIODictionary::~IIODictionary(va2);
  _Unwind_Resume(a1);
}

void WXMPMeta_Terminate_1_cold_1()
{
  {
  }
}

void ISOMedia::TerminateGlobals(ISOMedia *this)
{
  if (ISOMedia::boxList(void)::onceToken != -1)
  {
    ISOMedia::TerminateGlobals();
  }

  v1 = ISOMedia::gBoxList;
  v2 = (ISOMedia::gBoxList + 8);
  std::__tree<unsigned long long>::destroy(ISOMedia::gBoxList, *(ISOMedia::gBoxList + 8));
  *v1 = v2;
  v1[2] = 0;
  *v2 = 0;
}

uint64_t ID3_Support::TerminateGlobals(ID3_Support *this)
{
  v1 = ID3_Support::kMapID3GenreCodeToName;
  if (ID3_Support::kMapID3GenreCodeToName)
  {
    std::__tree<unsigned long long>::destroy(ID3_Support::kMapID3GenreCodeToName, *(ID3_Support::kMapID3GenreCodeToName + 8));
    result = MEMORY[0x186602850](v1, 0x1020C4062D53EE8);
  }

  v3 = ID3_Support::kMapID3GenreNameToCode;
  if (ID3_Support::kMapID3GenreNameToCode)
  {
    std::__tree<unsigned long long>::destroy(ID3_Support::kMapID3GenreNameToCode, *(ID3_Support::kMapID3GenreNameToCode + 8));
    result = MEMORY[0x186602850](v3, 0x1020C4062D53EE8);
  }

  ID3_Support::kMapID3GenreNameToCode = 0;
  ID3_Support::kMapID3GenreCodeToName = 0;
  return result;
}

uint64_t XMPIterator::Terminate(XMPIterator *this)
{
  result = sDummySchema;
  if (sDummySchema)
  {
    result = (*(*sDummySchema + 8))(sDummySchema);
  }

  sDummySchema = 0;
  return result;
}

uint64_t XMPUtils::Terminate(XMPUtils *this)
{
  v1 = XMPUtils::WhiteSpaceStrPtr;
  if (XMPUtils::WhiteSpaceStrPtr)
  {
    if (*(XMPUtils::WhiteSpaceStrPtr + 23) < 0)
    {
      operator delete(*XMPUtils::WhiteSpaceStrPtr);
    }

    result = MEMORY[0x186602850](v1, 0x1012C40EC159624);
  }

  XMPUtils::WhiteSpaceStrPtr = 0;
  return result;
}

void AdobeXMPCore_Int::INameSpacePrefixMap_I::DestroyDefaultNameSapcePrefixMap(AdobeXMPCore_Int::INameSpacePrefixMap_I *this)
{
  AdobeXMPCore_Int::ManageDefaultNameSpacePrefixMap(1, &v2);
  v1 = v3;
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:fe200100](v1);
  }
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::NameSpacePrefixMapImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::NameSpacePrefixMapImpl>>::__on_zero_shared(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = (a1[3] + *(*a1[3] - 184) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3);
}

void AdobeXMPCore_Int::NameSpacePrefixMapImpl::~NameSpacePrefixMapImpl(AdobeXMPCore_Int::NameSpacePrefixMapImpl *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 176)) = a2[1];
  *(this + *(*this - 48)) = a2[2];
  *(this + *(*this - 56)) = a2[3];
  *(this + *(*this - 64)) = a2[4];
  *(this + *(*this - 72)) = a2[5];
  *(this + *(*this - 80)) = a2[6];
  *(this + *(*this - 88)) = a2[7];
  *(this + *(*this - 184)) = a2[8];
  *(this + *(*this - 192)) = a2[9];
  std::__tree<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,std::__map_value_compare<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,AdobeXMPCore_Int::IUTF8StringComparator,true>,std::allocator<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>>>::destroy(this + 32, *(this + 5));
  std::__tree<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,std::__map_value_compare<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,AdobeXMPCore_Int::IUTF8StringComparator,true>,std::allocator<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>>>::destroy(this + 8, *(this + 2));
}

uint64_t AppleJPEGReadPlugin::createImageBlockFromIOSurface(uint64_t a1, __IOSurface *a2, const void *a3, uint64_t a4)
{
  v47[0] = 0;
  v8 = *(a1 + 308);
  v9 = *(a1 + 312);
  v10 = *(a1 + 316);
  v46 = 197121;
  v45 = 66051;
  v11 = *(a1 + 437);
  *(a1 + 104) = 1;
  IIOReadPlugin::allocateBlockArray(a1, 1uLL);
  v12 = 0;
  if (IOSurfaceLock(a2, 1u, 0))
  {
    return v12;
  }

  v41 = a3;
  PlaneCount = IOSurfaceGetPlaneCount(a2);
  __dst = _ImageIO_Malloc(v10 * v9, *(a1 + 416), v47, kImageMalloc_APPLEJPEG_Data[0], 0, 0);
  if (__dst)
  {
    v37 = v11;
    v39 = a4;
    BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(a2, 0);
    HeightOfPlane = IOSurfaceGetHeightOfPlane(a2, 0);
    WidthOfPlane = IOSurfaceGetWidthOfPlane(a2, 0);
    BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(a2, 0);
    v18 = BytesPerRowOfPlane;
    if (PlaneCount < 2)
    {
      if (HeightOfPlane == v9 && WidthOfPlane == v8)
      {
        v19 = __dst;
        if (BytesPerRowOfPlane == v10)
        {
          memcpy(__dst, BaseAddressOfPlane, v10 * v9);
        }

        else
        {
          if (BytesPerRowOfPlane >= v10)
          {
            v26 = v10;
          }

          else
          {
            v26 = BytesPerRowOfPlane;
          }

          if (v9)
          {
            v27 = __dst;
            do
            {
              memcpy(v27, BaseAddressOfPlane, v26);
              BaseAddressOfPlane += v18;
              v27 += v10;
              LODWORD(v9) = v9 - 1;
            }

            while (v9);
          }
        }
      }

      else
      {
        srcYp.data = BaseAddressOfPlane;
        srcYp.height = HeightOfPlane;
        srcYp.width = WidthOfPlane;
        srcYp.rowBytes = BytesPerRowOfPlane;
        v19 = __dst;
        srcCbCr.data = __dst;
        srcCbCr.height = v9;
        srcCbCr.width = v8;
        srcCbCr.rowBytes = v10;
        v25 = *(a1 + 340);
        if (v25 == 1196573017)
        {
          vImageScale_Planar8(&srcYp, &srcCbCr, 0, 0);
        }

        else if (v25 == 1380401696)
        {
          vImageScale_ARGB8888(&srcYp, &srcCbCr, 0, 0);
        }
      }
    }

    else
    {
      srcYp.data = BaseAddressOfPlane;
      srcYp.height = HeightOfPlane;
      srcYp.width = WidthOfPlane;
      srcYp.rowBytes = BytesPerRowOfPlane;
      srcCbCr.data = IOSurfaceGetBaseAddressOfPlane(a2, 1uLL);
      srcCbCr.height = IOSurfaceGetHeightOfPlane(a2, 1uLL);
      srcCbCr.width = IOSurfaceGetWidthOfPlane(a2, 1uLL);
      srcCbCr.rowBytes = IOSurfaceGetBytesPerRowOfPlane(a2, 1uLL);
      dest.width = v8;
      dest.rowBytes = v10;
      v19 = __dst;
      dest.data = __dst;
      dest.height = v9;
      if (AppleJPEGReadPlugin::createImageBlockFromIOSurface(__IOSurface *,InfoRec *,CGImageProvider *)::YpCbCrToARGBCreate != -1)
      {
        AppleJPEGReadPlugin::createImageBlockFromIOSurface();
      }

      if (v37)
      {
        v20 = &v46;
      }

      else
      {
        v20 = &v45;
      }

      v21 = vImageConvert_420Yp8_CbCr8ToARGB8888(&srcYp, &srcCbCr, &dest, &AppleJPEGReadPlugin::createImageBlockFromIOSurface(__IOSurface *,InfoRec *,CGImageProvider *)::conversion, v20, 0xFFu, 0);
      if (v21)
      {
        v22 = v21;
        v23 = IIO_vImageErrorString(v21);
        _cg_jpeg_mem_term("createImageBlockFromIOSurface", 4091, "*** ERROR: vImageConvert_420Yp8_CbCr8ToARGB8888 returned %ld (%s)\n", v22, v23);
        a4 = v39;
        v24 = a3;
LABEL_31:
        v12 = 0;
        if (a4)
        {
          v35 = *(a1 + 104);
          if (v35)
          {
            v12 = IIOReadPlugin::imageBlockSetCreate(a1, a4, v35, *(a1 + 136), *(a1 + 144), *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 96), v24);
          }
        }

        IOSurfaceUnlock(a2, 1u, 0);
        if (v19)
        {
          _ImageIO_Free(v19, v47[0]);
        }

        goto LABEL_36;
      }
    }

    LODWORD(v17) = *(a1 + 308);
    v28 = v17;
    LODWORD(v17) = *(a1 + 312);
    v29 = v17;
    v30 = 0;
    v48.origin.x = 0.0;
    v48.origin.y = 0.0;
    v48.size.width = v28;
    v48.size.height = v29;
    **(a1 + 96) = IIOReadPlugin::createImageBlock(a1, v19, v47[0], v48, *(a1 + 316), *(a1 + 371));
    if (CGRectEqualToRect(*(a1 + 120), *MEMORY[0x1E695F050]))
    {
      v31 = 0;
    }

    else
    {
      v49.origin.x = 0.0;
      v49.origin.y = 0.0;
      v49.size.width = v28;
      v49.size.height = v29;
      *(&v31 - 1) = CGRectUnion(*(a1 + 120), v49);
      v30 = v32;
      v28 = v33;
      v29 = v34;
    }

    a4 = v39;
    v24 = v41;
    v19 = 0;
    *(a1 + 120) = v30;
    *(a1 + 128) = v31;
    *(a1 + 136) = v28;
    *(a1 + 144) = v29;
    goto LABEL_31;
  }

  IOSurfaceUnlock(a2, 1u, 0);
  v12 = 0;
LABEL_36:
  if (a4)
  {
    IIOReadPlugin::freeBlockArray(a1);
  }

  return v12;
}

void virtual thunk toAdobeXMPCore_Int::NameSpacePrefixMapImpl::~NameSpacePrefixMapImpl(AdobeXMPCore_Int::NameSpacePrefixMapImpl *this)
{
  AdobeXMPCore_Int::NameSpacePrefixMapImpl::~NameSpacePrefixMapImpl((this + *(*this - 48)));

  JUMPOUT(0x186602850);
}

{
  AdobeXMPCore_Int::NameSpacePrefixMapImpl::~NameSpacePrefixMapImpl((this + *(*this - 48)));
}

{
  AdobeXMPCore_Int::NameSpacePrefixMapImpl::~NameSpacePrefixMapImpl((this + *(*this - 56)));
}

{
  AdobeXMPCore_Int::NameSpacePrefixMapImpl::~NameSpacePrefixMapImpl((this + *(*this - 56)));

  JUMPOUT(0x186602850);
}

uint64_t IIOReadPlugin::freeBlockArray(IIOReadPlugin *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    free(v2);
  }

  *(this + 12) = 0;
  *(this + 26) = 0;
  return 0;
}

void IIO_IOSurfaceRelease(__IOSurface *a1)
{
  if (a1)
  {
    if (CFGetRetainCount(a1) == 1)
    {
      v2 = IOSurfaceCopyValue(a1, @"com.apple.ImageIO.ImageIO_Malloced");
      if (v2)
      {
        v3 = v2;
        BaseAddress = IOSurfaceGetBaseAddress(a1);
        AllocSize = IOSurfaceGetAllocSize(a1);
        if (BaseAddress)
        {
          _ImageIO_Free(BaseAddress, AllocSize);
        }

        CFRelease(v3);
      }
    }

    CFRelease(a1);
  }
}

void AdobeXMPCore_Int::ManageDOMImplementationRegistry()
{
  if (__cxa_guard_acquire(_MergedGlobals_9))
  {
    __cxa_atexit(std::shared_ptr<AdobeXMPCore::IDOMImplementationRegistry_v1>::~shared_ptr[abi:fe200100], &qword_1ED56A230, &dword_185E59000);

    __cxa_guard_release(_MergedGlobals_9);
  }
}

void _cg_png_error(void (**a1)(void), const char *a2)
{
  if (a1)
  {
    if (*a1)
    {
      (*a1)();
    }
  }

  png_default_error(a2);
}

void png_default_error(const char *a1)
{
  v1 = MEMORY[0x1E69E9848];
  v2 = "undefined";
  if (a1)
  {
    v2 = a1;
  }

  fprintf(*MEMORY[0x1E69E9848], "libpng error: %s", v2);
  fputc(10, *v1);
  abort();
}

uint64_t RDF_Parser::EmptyPropertyElement(RDF_Parser *this, XMP_Node *a2, const XML_Node *a3, int a4)
{
  if (*(a3 + 16) != *(a3 + 17))
  {
    v35 = 0;
    v5 = 202;
    v6 = "Nested content not allowed with rdf:resource or property attributes";
    goto LABEL_3;
  }

  v10 = *(a3 + 13);
  v11 = *(a3 + 14);
  if (v10 == v11)
  {
    v16 = 0;
    v15 = 0;
    v13 = 0;
    v12 = 0;
LABEL_41:
    result = RDF_Parser::AddChildNode(this, a2, a3, "", a4);
    if (!result)
    {
      return result;
    }

    v23 = result;
    if ((v15 | v13))
    {
      result = std::string::operator=((result + 40), (v16 + 64));
      if ((v15 & 1) == 0)
      {
        v24 = 2;
LABEL_47:
        v25 = (v15 | v13) ^ 1;
        *(v23 + 2) |= v24;
        goto LABEL_49;
      }
    }

    else if (v12)
    {
      v24 = 256;
      goto LABEL_47;
    }

    v25 = 0;
LABEL_49:
    v27 = *(a3 + 13);
    v26 = *(a3 + 14);
    if (v27 == v26)
    {
      return result;
    }

    while (1)
    {
      if (*v27 != v16)
      {
        result = GetRDFTermKind(*v27 + 40);
        if (result > 4)
        {
          if (result != 6)
          {
            if (result == 5)
            {
              v28 = *v27;
LABEL_69:
              result = RDF_Parser::AddQualifierNode(this, v23, v28);
              goto LABEL_70;
            }

LABEL_58:
            v34 = "Unrecognized attribute of empty property element";
            v35 = 0;
            v33 = 202;
            result = GenericErrorCallback::NotifyClient(*this, 0, &v33, 0);
          }
        }

        else
        {
          if (!result)
          {
            v28 = *v27;
            if (v25)
            {
              v29 = (v28 + 40);
              v30 = *(v28 + 63);
              if (v30 < 0)
              {
                if (*(v28 + 48) != 8)
                {
                  goto LABEL_66;
                }

                v29 = *v29;
              }

              else if (v30 != 8)
              {
                goto LABEL_66;
              }

              if (*v29 != 0x676E616C3A6C6D78)
              {
LABEL_66:
                v31 = (v28 + 64);
                if (*(v28 + 87) < 0)
                {
                  v31 = *v31;
                }

                result = RDF_Parser::AddChildNode(this, v23, v28, v31, 0);
                goto LABEL_70;
              }
            }

            goto LABEL_69;
          }

          if (result != 2)
          {
            goto LABEL_58;
          }
        }
      }

LABEL_70:
      if (++v27 == v26)
      {
        return result;
      }
    }
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  while (1)
  {
    RDFTermKind = GetRDFTermKind(*v10 + 40);
    if (RDFTermKind > 4)
    {
      break;
    }

    if (RDFTermKind)
    {
      if (RDFTermKind != 2)
      {
        goto LABEL_74;
      }

      goto LABEL_38;
    }

    v18 = *v10;
    v19 = *v10 + 40;
    if (*(*v10 + 63) < 0)
    {
      if (*(v18 + 48) == 9 && **v19 == 0x756C61763A666472 && *(*v19 + 8) == 101)
      {
LABEL_36:
        if (v13)
        {
          goto LABEL_73;
        }

        v13 = 0;
        v15 = 1;
        v16 = *v10;
        goto LABEL_38;
      }

      if (*(v18 + 48) != 8)
      {
        goto LABEL_35;
      }

      v19 = *v19;
    }

    else
    {
      v20 = *(*v10 + 63);
      if (v20 != 8)
      {
        if (v20 == 9 && *v19 == 0x756C61763A666472 && *(*v10 + 48) == 101)
        {
          goto LABEL_36;
        }

LABEL_35:
        v12 = 1;
        goto LABEL_38;
      }
    }

    v12 |= *v19 != 0x676E616C3A6C6D78;
LABEL_38:
    if (++v10 == v11)
    {
      goto LABEL_41;
    }
  }

  if (RDFTermKind == 6)
  {
    if (v13)
    {
LABEL_72:
      v35 = 0;
      v5 = 202;
      v6 = "Empty property element can't have both rdf:resource and rdf:nodeID";
      goto LABEL_3;
    }

    v13 = 0;
    v14 = 1;
    goto LABEL_38;
  }

  if (RDFTermKind == 5)
  {
    if (v14)
    {
      goto LABEL_72;
    }

    if (v15)
    {
LABEL_73:
      v35 = 0;
      v5 = 203;
      v6 = "Empty property element can't have both rdf:value and rdf:resource";
      goto LABEL_3;
    }

    v15 = 0;
    v14 = 0;
    v16 = *v10;
    v13 = 1;
    goto LABEL_38;
  }

LABEL_74:
  v35 = 0;
  v5 = 202;
  v6 = "Unrecognized attribute of empty property element";
LABEL_3:
  v34 = v6;
  v33 = v5;
  return GenericErrorCallback::NotifyClient(*this, 0, &v33, 0);
}

void AdobeXMPCore_Int::ManageCoreObjectFactory()
{
  if (__cxa_guard_acquire(&qword_1ED56A248))
  {
    _MergedGlobals_10 = &unk_1EF4FF2C8;
    __cxa_atexit(AdobeXMPCore_Int::CoreObjectFactoryImpl::~CoreObjectFactoryImpl, &_MergedGlobals_10, &dword_185E59000);

    __cxa_guard_release(&qword_1ED56A248);
  }
}

void AdobeXMPCore_Int::ManageCoreConfigurationManager()
{
  if (__cxa_guard_acquire(_MergedGlobals_8))
  {
    __cxa_atexit(std::shared_ptr<AdobeXMPCore::ICoreConfigurationManager_v1>::~shared_ptr[abi:fe200100], &qword_1ED56A210, &dword_185E59000);

    __cxa_guard_release(_MergedGlobals_8);
  }
}

CFArrayRef CGImageMetadataCopyTags(CGImageMetadataRef metadata)
{
  IIOInitDebugFlags();
  if ((~gIIODebugFlags & 0x3000) == 0)
  {
    ImageIODebugOptions(3, "A", "CGImageMetadataCopyTags", 0, 0, -1, 0);
  }

  if (!metadata)
  {
    goto LABEL_10;
  }

  v2 = CFGetTypeID(metadata);
  if (qword_1ED569DD0 != -1)
  {
    CGImageMetadataGetTypeID_cold_1();
  }

  if (v2 != _MergedGlobals_1)
  {
LABEL_10:
    LogMetadata("CGImageMetadataCopyTags", 550, "metadata is NULL or not a CGImageMetadataRef");
    return 0;
  }

  Count = CFDictionaryGetCount(*(metadata + 3));
  v4 = malloc_type_calloc(8uLL, Count, 0x80040B8603338uLL);
  v5 = malloc_type_calloc(8uLL, Count, 0xC0040B8AA526DuLL);
  v6 = v5;
  if (v4 && v5)
  {
    CFDictionaryGetKeysAndValues(*(metadata + 3), v4, v5);
    v7 = CFArrayCreate(*MEMORY[0x1E695E480], v6, Count, MEMORY[0x1E695E9C0]);
  }

  else
  {
    v7 = 0;
    v8 = 0;
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  free(v4);
  v8 = v7;
LABEL_13:
  if (v6)
  {
    free(v6);
  }

  return v8;
}

CGMutableImageMetadataRef CGImageMetadataCreateMutableCopy(CGImageMetadataRef metadata)
{
  IIOInitDebugFlags();
  if ((~gIIODebugFlags & 0x3000) == 0)
  {
    ImageIODebugOptions(3, "A", "CGImageMetadataCreateMutableCopy", 0, 0, -1, 0);
  }

  if (!metadata)
  {
    return 0;
  }

  v2 = CFGetTypeID(metadata);
  if (v2 != CGImageMetadataGetTypeID())
  {
    return 0;
  }

  v3 = *MEMORY[0x1E695E480];
  CGImageMetadataGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  v5 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 1;
    v6 = *(metadata + 3);
    v7 = CGImageMetadataTagsDictCreate();
    if (!v6)
    {
LABEL_20:
      *(v5 + 24) = v7;
      v20 = *(metadata + 5);
      if (v20)
      {
        *(v5 + 40) = CFDictionaryCreateMutableCopy(v3, 0, v20);
      }

      v21 = *(metadata + 4);
      if (v21)
      {
        *(v5 + 32) = CFDictionaryCreateMutableCopy(v3, 0, v21);
      }

      v22 = *(metadata + 6);
      if (v22)
      {
        *(v5 + 48) = CFDictionaryCreateMutableCopy(v3, 0, v22);
      }

      v23 = *(metadata + 7);
      if (v23)
      {
        *(v5 + 56) = CFStringCreateCopy(v3, v23);
      }

      v24 = *(metadata + 8);
      if (v24)
      {
        *(v5 + 64) = CFStringCreateCopy(v3, v24);
      }

      initRecursivePthread_mutex((v5 + 72));
      pthread_mutex_init((v5 + 136), 0);
      initRecursivePthread_mutex((v5 + 208));
      return v5;
    }

    Count = CFDictionaryGetCount(v6);
    v9 = malloc_type_calloc(8uLL, Count, 0x2004093837F09uLL);
    v10 = malloc_type_calloc(8uLL, Count, 0x2004093837F09uLL);
    v11 = v10;
    if (v9 && v10)
    {
      CFDictionaryGetKeysAndValues(v6, v9, v10);
      if (Count < 1)
      {
LABEL_17:
        free(v9);
LABEL_18:
        if (v11)
        {
          free(v11);
        }

        goto LABEL_20;
      }

      v15 = v11;
      v16 = v9;
      do
      {
        if (*v15)
        {
          v17 = *(*v15 + 3);
          if (v17)
          {
            DeepCopy = IIOMetadata_Tag::createDeepCopy(v17, v12, v13, v14);
            if (DeepCopy)
            {
              v19 = DeepCopy;
              CFDictionarySetValue(v7, *v16, DeepCopy);
              CFRelease(v19);
            }
          }
        }

        ++v16;
        ++v15;
        --Count;
      }

      while (Count);
    }

    if (!v9)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  return v5;
}

uint64_t png_read_filter_row_sub_neon(uint64_t result, unsigned __int32 *a2, unint64_t a3, unint64_t a4, unint64_t a5, double a6, double a7, double a8, double a9, int8x16_t a10)
{
  if (a3 < a2 || (v10 = *(result + 8), v10 > a3 - a2) || a5 < a4 || v10 > a5 - a4)
  {
LABEL_38:
    __break(0x5519u);
    return result;
  }

  v11 = (a2 + 1);
  v12 = v10 - 4;
  if (v10 - 4 < 0x10)
  {
    v13 = v10 - 4;
  }

  else
  {
    a10.i32[0] = *a2;
    v13 = v10 - 4;
    do
    {
      v14 = vaddq_s8(*v11, a10);
      v15 = vaddq_s8(vaddq_s8(vaddq_s8(vqtbl1q_s8(v14, xmmword_1862270B0), vqtbl1q_s8(v14, xmmword_1862270A0)), vqtbl1q_s8(v14, xmmword_1862270C0)), vdupq_lane_s32(*v14.i8, 0));
      *v11++ = v15;
      a10 = vextq_s8(v15, 0, 0xCuLL);
      v13 -= 16;
    }

    while (v13 > 0xF);
  }

  if (v13 >= 4)
  {
    v16 = (a2 + (v12 & 0xFFFFFFFFFFFFFFF0));
    while (v11 < a3)
    {
      if (v11 < a2)
      {
        break;
      }

      v19 = v11->i8[0];
      v17 = (v11->u32 + 1);
      v18 = v19;
      if (v17 >= a3)
      {
        break;
      }

      if (v17 < a2)
      {
        break;
      }

      v22 = *v17;
      v20 = (v17 + 1);
      v21 = v22;
      if (v20 >= a3)
      {
        break;
      }

      if (v20 < a2)
      {
        break;
      }

      v25 = *v20;
      v23 = (v20 + 1);
      v24 = v25;
      if (v23 >= a3)
      {
        break;
      }

      if (v23 < a2)
      {
        break;
      }

      if (v16 >= a3)
      {
        break;
      }

      if (v16 < a2)
      {
        break;
      }

      v28 = *v16;
      v26 = (v16 + 1);
      v27 = v28;
      if (v26 >= a3)
      {
        break;
      }

      if (v26 < a2)
      {
        break;
      }

      v31 = *v26;
      v29 = (v26 + 1);
      v30 = v31;
      if (v29 >= a3)
      {
        break;
      }

      if (v29 < a2)
      {
        break;
      }

      v32 = (v29 + 1);
      if (v32 >= a3)
      {
        break;
      }

      if (v32 < a2)
      {
        break;
      }

      v33 = (v23 - 3);
      if (v23 - 3 >= a3)
      {
        break;
      }

      if (v33 < a2)
      {
        break;
      }

      v34 = *v23;
      result = *(v32 - 1);
      v35 = *v32;
      *v33 = v27 + v18;
      v36 = (v33 + 1);
      if (v36 >= a3)
      {
        break;
      }

      if (v36 < a2)
      {
        break;
      }

      *v36 = v30 + v21;
      v37 = (v36 + 1);
      if (v37 >= a3)
      {
        break;
      }

      if (v37 < a2)
      {
        break;
      }

      *v37 = result + v24;
      v38 = (v37 + 1);
      if (v38 >= a3 || v38 < a2)
      {
        break;
      }

      *v38 = v35 + v34;
      v13 -= 4;
      v16 = (v32 + 1);
      v11 = (v38 + 1);
      if (v13 <= 3)
      {
        return result;
      }
    }

    goto LABEL_38;
  }

  return result;
}

CGImageMetadataTagRef IIOMetadata_Tag::createDeepCopy(IIOMetadata_Tag *this, uint64_t a2, uint64_t a3, const __CFString *a4)
{
  v5 = IIOMetadata_Tag::copyTagValue(this, *(this + 2), *(this + 3), a4, *(this + 6), 1);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = CGImageMetadataTagCreate(*(this + 2), *(this + 3), *(this + 4), *(this + 10), v5);
  CFRelease(v6);
  if (v7)
  {
    v10 = *(this + 7);
    if (v10)
    {
      v11 = *(v7 + 3);
      *(v11 + 56) = IIOMetadata_Tag::copyTagValue(v8, *(this + 2), *(this + 3), v9, v10, 1);
    }
  }

  return v7;
}

CFStringRef CGImageMetadataTagCopyNamespace(CGImageMetadataTagRef tag)
{
  IIOInitDebugFlags();
  if ((~gIIODebugFlags & 0x3000) == 0)
  {
    ImageIODebugOptions(3, "A", "CGImageMetadataTagCopyNamespace", 0, 0, -1, 0);
  }

  if (!tag)
  {
    return 0;
  }

  v2 = *(tag + 3);
  if (!v2)
  {
    return 0;
  }

  v3 = *MEMORY[0x1E695E480];
  v4 = *(v2 + 16);

  return CFStringCreateCopy(v3, v4);
}

CFStringRef CGImageMetadataTagCopyName(CGImageMetadataTagRef tag)
{
  IIOInitDebugFlags();
  if ((~gIIODebugFlags & 0x3000) == 0)
  {
    ImageIODebugOptions(3, "A", "CGImageMetadataTagCopyName", 0, 0, -1, 0);
  }

  if (!tag)
  {
    return 0;
  }

  v2 = *(tag + 3);
  if (!v2)
  {
    return 0;
  }

  v3 = *MEMORY[0x1E695E480];
  v4 = *(v2 + 32);

  return CFStringCreateCopy(v3, v4);
}

CFTypeRef CGImageMetadataTagCopyValue(CGImageMetadataTagRef tag)
{
  IIOInitDebugFlags();
  if ((~gIIODebugFlags & 0x3000) == 0)
  {
    ImageIODebugOptions(3, "A", "CGImageMetadataTagCopyValue", 0, 0, -1, 0);
  }

  if (!tag)
  {
    return 0;
  }

  v2 = *(tag + 3);
  if (!v2)
  {
    return 0;
  }

  return IIOMetadata_Tag::copyValue(v2);
}

CFDictionaryRef IIOMetadata_Tag::copyValue(IIOMetadata_Tag *this)
{
  v2 = *(this + 6);
  v3 = CFGetTypeID(v2);
  v4 = *(this + 10);
  if (v4 == 1)
  {
    if (v3 == CFStringGetTypeID())
    {
      v5 = *MEMORY[0x1E695E480];

      return CFStringCreateCopy(v5, v2);
    }

    v4 = *(this + 10);
  }

  if ((v4 - 2) <= 3)
  {
    if (v3 == CFArrayGetTypeID())
    {
      v7 = *MEMORY[0x1E695E480];

      return CFArrayCreateCopy(v7, v2);
    }

    v4 = *(this + 10);
  }

  if (v4 == 6)
  {
    v8 = *MEMORY[0x1E695E480];

    return CFDictionaryCreateCopy(v8, v2);
  }

  else
  {
    LogMetadata("copyValue", 235, "'tag' has an unrecognized value type\n");
    return 0;
  }
}

CFStringRef CGImageMetadataTagCopyPrefix(CGImageMetadataTagRef tag)
{
  IIOInitDebugFlags();
  if ((~gIIODebugFlags & 0x3000) == 0)
  {
    ImageIODebugOptions(3, "A", "CGImageMetadataTagCopyPrefix", 0, 0, -1, 0);
  }

  if (!tag)
  {
    return 0;
  }

  v2 = *(tag + 3);
  if (!v2)
  {
    return 0;
  }

  v3 = *MEMORY[0x1E695E480];
  v4 = *(v2 + 24);

  return CFStringCreateCopy(v3, v4);
}

BOOL CGImageMetadataRemoveTagWithPath(CGMutableImageMetadataRef metadata, CGImageMetadataTagRef parent, CFStringRef path)
{
  IIOInitDebugFlags();
  if ((~gIIODebugFlags & 0x3000) == 0)
  {
    v6 = IIOString::IIOString(&v61, path);
    v7 = IIOString::utf8String(v6);
    ImageIODebugOptions(3, "A", "CGImageMetadataRemoveTagWithPath", 0, v7, -1, 0);
    IIOString::~IIOString(&v61);
  }

  v61 = 0;
  v62 = &v61;
  v63 = 0x2000000000;
  v64 = 0;
  if (metadata)
  {
    v8 = CFGetTypeID(metadata);
    if (qword_1ED569DD0 == -1)
    {
      if (!path)
      {
        goto LABEL_77;
      }
    }

    else
    {
      CGImageMetadataCopyTagWithPath_cold_1();
      if (!path)
      {
        goto LABEL_77;
      }
    }

    if (v8 == _MergedGlobals_1)
    {
      v9 = CFGetTypeID(path);
      if (v9 == CFStringGetTypeID())
      {
        Source = CGImageSourceGetSource(parent);
        pthread_mutex_lock((metadata + 208));
        if (*(metadata + 200) == 1)
        {
          LogMetadata("CGImageMetadataRemoveTagWithPath", 1471, "Cannot mutate metadata while enumerating");
          pthread_mutex_unlock((metadata + 208));
          goto LABEL_77;
        }

        pthread_mutex_unlock((metadata + 208));
        v11 = *MEMORY[0x1E695E480];
        if (parent)
        {
          v12 = CFStringCreateWithFormat(v11, 0, @"%@:%@", *(Source + 3), *(Source + 4));
          if (!v12)
          {
            goto LABEL_77;
          }

          PathWithChildPath = IIOMetadata_Tag::createPathWithChildPath(Source, path);
          v14 = parse_metadata_pathString(v12);
          if (v14)
          {
            v15 = *(v14 + 5);
            if (v15)
            {
              v16 = 0;
              do
              {
                if ((*v15 & 0xFFFFFFFE) != 2)
                {
                  break;
                }

                ++v16;
                v15 = *(v15 + 40);
              }

              while (v15);
            }

            else
            {
              v16 = 0;
            }

            freeNodes(v14);
          }

          else
          {
            v16 = 0;
          }

          CFRelease(v12);
        }

        else
        {
          PathWithChildPath = CFStringCreateCopy(*MEMORY[0x1E695E480], path);
          v16 = 0;
        }

        v17 = parse_metadata_pathString(PathWithChildPath);
        v18 = v17;
        if (!v17 || !*(v17 + 1) || !*(v17 + 2))
        {
          goto LABEL_73;
        }

        v19 = 0;
        v20 = v17;
        do
        {
          v21 = v19;
          v19 = v20;
          v20 = *(v20 + 5);
        }

        while (v20);
        pthread_mutex_lock((metadata + 72));
        if (!parent && v19 == v18)
        {
          TagWithPath = CGImageMetadataGetTagWithPath(metadata, 0, PathWithChildPath);
          if (!TagWithPath)
          {
            goto LABEL_69;
          }

          CGImageMetadataRemoveTag(metadata, TagWithPath);
          goto LABEL_31;
        }

        if (parent && v21 == v18)
        {
          goto LABEL_34;
        }

        v56 = path;
        v30 = v11;
        v31 = PathWithChildPath;
        v32 = v18;
        if (parent)
        {
          v33 = v16 + 1;
          v32 = v18;
          do
          {
            v32 = *(v32 + 40);
            --v33;
          }

          while (v33);
        }

        v34 = *v32;
        *(v21 + 5) = 0;
        NodePath = createNodePath(v32);
        *v32 = v34;
        *(v21 + 5) = v19;
        PathWithChildPath = v31;
        v11 = v30;
        path = v56;
        if (!NodePath)
        {
          goto LABEL_69;
        }

        v36 = CFStringCreateWithCString(v11, NodePath, 0x8000100u);
        if (!v36)
        {
          free(NodePath);
          goto LABEL_69;
        }

        parent = CGImageMetadataGetTagWithPath(metadata, parent, v36);
        CFRelease(v36);
        free(NodePath);
        if (parent)
        {
LABEL_34:
          v23 = CGImageSourceGetSource(parent);
          v24 = v23;
          v25 = *v19;
          if (*v19 > 3)
          {
            if (v25 != 4)
            {
              if (v25 == 5)
              {
                v37 = CFStringCreateWithCString(v11, *(v19 + 1), 0x8000100u);
                v38 = CFStringCreateWithCString(v11, *(v19 + 2), 0x8000100u);
                v39 = *(v24 + 7);
                if (v39)
                {
                  v57[0] = MEMORY[0x1E69E9820];
                  v57[1] = 0x40000000;
                  v57[2] = __CGImageMetadataRemoveTagWithPath_block_invoke_4;
                  v57[3] = &unk_1E6F09908;
                  v57[6] = v38;
                  v57[7] = v39;
                  v57[4] = &v61;
                  v57[5] = v37;
                  IIOArrayEnumerateUsingBlock(v39, v57);
                }

                if (v37)
                {
                  CFRelease(v37);
                }

                if (v38)
                {
                  CFRelease(v38);
                }
              }

              goto LABEL_69;
            }

            if (*(v23 + 40) == 6)
            {
              v46 = *(v23 + 48);
              if (v46)
              {
                v47 = CFGetTypeID(*(v23 + 48));
                if (v47 == CFDictionaryGetTypeID())
                {
                  v48 = CFGetAllocator(v46);
                  MutableCopy = CFDictionaryCreateMutableCopy(v48, 0, v46);
                  if (MutableCopy)
                  {
                    v50 = CFStringCreateWithCString(v11, *(v19 + 2), 0x8000100u);
                    if (v50)
                    {
                      CFDictionaryRemoveValue(MutableCopy, v50);
                      IIOMetadata_Tag::setValue(v24, MutableCopy);
                      CFRelease(v46);
                      CFRelease(v50);
                      goto LABEL_31;
                    }

                    CFRelease(MutableCopy);
                  }
                }
              }
            }
          }

          else
          {
            if (v25 != 2)
            {
              if (v25 == 3 && *(v23 + 40) == 5)
              {
                v26 = *(v23 + 48);
                if (v26)
                {
                  v27 = CFGetTypeID(*(v23 + 48));
                  if (v27 == CFArrayGetTypeID())
                  {
                    v28 = CFStringCreateWithCString(v11, *(v19 + 4), 0x8000100u);
                    v29 = v28;
                    if (v28)
                    {
                      v59[0] = 0;
                      v59[1] = v59;
                      v59[2] = 0x2000000000;
                      v60 = 0;
                      v58[0] = MEMORY[0x1E69E9820];
                      v58[1] = 0x40000000;
                      v58[2] = __CGImageMetadataRemoveTagWithPath_block_invoke_2;
                      v58[3] = &unk_1E6F098E0;
                      v58[6] = v28;
                      v58[7] = v26;
                      v58[8] = v24;
                      v58[4] = &v61;
                      v58[5] = v59;
                      IIOArrayEnumerateUsingBlock(v26, v58);
                      CFRelease(v29);
                      _Block_object_dispose(v59, 8);
                    }
                  }
                }
              }

              goto LABEL_69;
            }

            if ((*(v23 + 40) - 2) <= 2)
            {
              v40 = *(v23 + 48);
              if (v40)
              {
                v41 = CFGetTypeID(*(v23 + 48));
                if (v41 == CFArrayGetTypeID())
                {
                  v42 = CFGetAllocator(v40);
                  Count = CFArrayGetCount(v40);
                  v44 = CFArrayCreateMutableCopy(v42, Count, v40);
                  v45 = v44;
                  if (v44)
                  {
                    CFArrayRemoveValueAtIndex(v44, *(v19 + 6));
                    IIOArrayEnumerateUsingBlock(v45, &__block_literal_global_29);
                    IIOMetadata_Tag::setValue(v24, v45);
                    CFRelease(v40);
LABEL_31:
                    *(v62 + 24) = 1;
                  }
                }
              }
            }
          }
        }

LABEL_69:
        if ((v62[3] & 1) == 0)
        {
          Length = CFStringGetLength(path);
          MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
          v53 = malloc_type_calloc(1uLL, MaximumSizeForEncoding + 1, 0x100004077774924uLL);
          if (v53)
          {
            CFStringGetCString(path, v53, MaximumSizeForEncoding + 1, 0x8000100u);
            LogMetadata("CGImageMetadataRemoveTagWithPath", 1719, "Could not find a tag at path '%s' to remove.\n", v53);
            free(v53);
          }
        }

        pthread_mutex_unlock((metadata + 72));
LABEL_73:
        if (PathWithChildPath)
        {
          CFRelease(PathWithChildPath);
        }

        if (v18)
        {
          freeNodes(v18);
        }
      }
    }
  }

LABEL_77:
  v54 = *(v62 + 24);
  _Block_object_dispose(&v61, 8);
  return v54;
}

CFIndex OUTLINED_FUNCTION_12_1(UInt8 *buffer, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFIndex bufferLength)
{

  return CFReadStreamRead(v10, buffer, bufferLength);
}

void CGImageMetadataRemoveTag(uint64_t a1, uint64_t a2)
{
  Source = CGImageSourceGetSource(a2);
  if (a1)
  {
    if (a2)
    {
      key[2] = 0;
      v5 = *(Source + 32);
      key[0] = *(Source + 16);
      key[1] = v5;
      CFDictionaryRemoveValue(*(a1 + 24), key);
    }
  }
}

void CGImageMetadataEnumerateTagsUsingBlock(CGImageMetadataRef metadata, CFStringRef rootPath, CFDictionaryRef options, CGImageMetadataTagBlock block)
{
  IIOInitDebugFlags();
  if ((~gIIODebugFlags & 0x3000) == 0)
  {
    ImageIODebugOptions(3, "A", "CGImageMetadataEnumerateTagsUsingBlock", 0, 0, -1, 0);
  }

  if (!metadata)
  {
    goto LABEL_9;
  }

  v8 = CFGetTypeID(metadata);
  if (qword_1ED569DD0 != -1)
  {
    CGImageMetadataGetTypeID_cold_1();
  }

  if (v8 == _MergedGlobals_1)
  {
    if (block)
    {
      pthread_mutex_lock((metadata + 72));
      pthread_mutex_lock((metadata + 208));
      *(metadata + 200) = 1;
      pthread_mutex_unlock((metadata + 208));
      memset(v11, 0, sizeof(v11));
      IIODictionary::IIODictionary(v11, options);
      CGImageMetadataEnumerateTagsUsingBlockInternal(metadata, rootPath, v11, block);
      pthread_mutex_lock((metadata + 208));
      *(metadata + 200) = 0;
      pthread_mutex_unlock((metadata + 208));
      pthread_mutex_unlock((metadata + 72));
      IIODictionary::~IIODictionary(v11);
      return;
    }

    v9 = "block is NULL.";
    v10 = 2087;
  }

  else
  {
LABEL_9:
    v9 = "'metadata' is not a CGImageMetadataRef.";
    v10 = 2091;
  }

  LogMetadata("CGImageMetadataEnumerateTagsUsingBlock", v10, v9);
}

void sub_185ED2DFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void CGImageMetadataEnumerateTagsUsingBlockInternal(uint64_t a1, const __CFString *a2, IIODictionary *a3, uint64_t a4)
{
  BoolForKey = IIODictionary::getBoolForKey(a3, @"kCGImageMetadataEnumerateRecursively");
  if (a2 && CFStringGetLength(a2) >= 1)
  {
    TagWithPath = CGImageMetadataGetTagWithPath(a1, 0, a2);
    if (!TagWithPath)
    {
      return;
    }

    v9 = TagWithPath;
    Type = CGImageMetadataTagGetType(TagWithPath);
    if (Type == kCGImageMetadataTypeDefault)
    {
      return;
    }

    v11 = Type;
    Value = CGImageMetadataTagGetValue(v9);
    if ((v11 & 0xFFFFFFFE) == 2)
    {
      v13 = CGImageMetadataTagGetValue(v9);
      if (!v13)
      {
        return;
      }

      v14 = v13;
      v15 = CFGetTypeID(v13);
      if (v15 != CFArrayGetTypeID())
      {
        return;
      }

      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 0x40000000;
      v50[2] = ___ZL46CGImageMetadataEnumerateTagsUsingBlockInternalPK15CGImageMetadataPK10__CFStringP13IIODictionaryU13block_pointerFbS4_P18CGImageMetadataTagE_block_invoke;
      v50[3] = &unk_1E6F099A8;
      v50[4] = a4;
      v50[5] = a2;
      v51 = BoolForKey;
      v50[6] = a1;
      v50[7] = a3;
      v16 = v50;
      v17 = v14;
      goto LABEL_37;
    }

    if (v11 == kCGImageMetadataTypeAlternateText)
    {
      v32 = CGImageMetadataTagGetValue(v9);
      if (!v32)
      {
        return;
      }

      v33 = v32;
      v34 = CFGetTypeID(v32);
      if (v34 != CFArrayGetTypeID())
      {
        return;
      }

      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 0x40000000;
      v49[2] = ___ZL46CGImageMetadataEnumerateTagsUsingBlockInternalPK15CGImageMetadataPK10__CFStringP13IIODictionaryU13block_pointerFbS4_P18CGImageMetadataTagE_block_invoke_2;
      v49[3] = &unk_1E6F099D0;
      v49[5] = a1;
      v49[6] = a2;
      v49[4] = a4;
      v16 = v49;
      v17 = v33;
LABEL_37:
      IIOArrayEnumerateUsingBlock(v17, v16);
      return;
    }

    if (v11 != kCGImageMetadataTypeStructure)
    {
      return;
    }

    v35 = Value;
    if (!Value)
    {
      return;
    }

    v36 = CFGetTypeID(Value);
    if (v36 != CFDictionaryGetTypeID())
    {
      return;
    }

    Count = CFDictionaryGetCount(v35);
    v38 = malloc_type_calloc(8uLL, Count, 0xC0040B8AA526DuLL);
    v39 = malloc_type_calloc(8uLL, Count, 0xC0040B8AA526DuLL);
    CFDictionaryGetKeysAndValues(v35, v38, v39);
    v47 = v39;
    if (v38 && v39)
    {
      if (Count >= 1)
      {
        v40 = 0;
        v41 = *MEMORY[0x1E695E480];
        do
        {
          v42 = CFStringCreateWithFormat(v41, 0, @"%@.%@", a2, v38[v40]);
          if (v42)
          {
            v43 = v42;
            v44 = CGImageMetadataGetTagWithPath(a1, 0, v42);
            if (!(*(a4 + 16))(a4, v43, v44))
            {
              free(v38);
              free(v47);
              v45 = v43;
LABEL_53:

              CFRelease(v45);
              return;
            }

            if (BoolForKey)
            {
              CGImageMetadataEnumerateTagsUsingBlockInternal(a1, v43, a3, a4);
            }

            CFRelease(v43);
          }

          ++v40;
        }

        while (Count != v40);
      }
    }

    else if (!v38)
    {
      goto LABEL_58;
    }

    free(v38);
LABEL_58:
    v31 = v47;
    if (!v47)
    {
      return;
    }

    goto LABEL_30;
  }

  if (a1)
  {
    v18 = CFGetTypeID(a1);
    if (qword_1ED569DD0 != -1)
    {
      CGImageMetadataGetTypeID_cold_1();
    }

    if (v18 == _MergedGlobals_1)
    {
      v46 = a3;
      v19 = CFDictionaryGetCount(*(a1 + 24));
      v20 = malloc_type_calloc(8uLL, v19, 0x2004093837F09uLL);
      v21 = malloc_type_calloc(8uLL, v19, 0xC0040B8AA526DuLL);
      CFDictionaryGetKeysAndValues(*(a1 + 24), v20, v21);
      if (v21 && v19 >= 1 && v20)
      {
        v22 = 0;
        v23 = *MEMORY[0x1E695E480];
        do
        {
          v24 = v21[v22];
          if (v24 && (v25 = CFGetTypeID(v21[v22]), v25 == CGImageMetadataTagGetTypeID()))
          {
            Source = CGImageSourceGetSource(v24);
            v27 = CFStringCreateWithFormat(v23, 0, @"%@:%@", *(Source + 24), *(Source + 32));
            if (v27)
            {
              v28 = v27;
              if (!(*(a4 + 16))(a4, v27, v24))
              {
                free(v20);
                free(v21);
                v45 = v28;
                goto LABEL_53;
              }

              if (BoolForKey)
              {
                CGImageMetadataEnumerateTagsUsingBlockInternal(a1, v28, v46, a4);
              }

              CFRelease(v28);
            }
          }

          else
          {
            CStringPtr = CFStringGetCStringPtr(*v20[v22], 0);
            v30 = CFStringGetCStringPtr(*(v20[v22] + 1), 0);
            LogMetadata("CGImageMetadataEnumerateTagsUsingBlockInternal", 2039, "Value for Key = %s%s is not a valid CGImageMetadataTagRef\n", CStringPtr, v30);
          }

          ++v22;
        }

        while (v19 != v22);
      }

      if (v20)
      {
        free(v20);
      }

      if (v21)
      {
        v31 = v21;
LABEL_30:

        free(v31);
      }
    }
  }
}

void WXMPMeta_IncrementRefCount_1(uint64_t a1)
{
  {
    WXMPMeta_IncrementRefCount_1_cold_1();
  }

  v3 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 1);
  v2 = *(a1 + 8);
  *(a1 + 8) = v2 + 1;
  if (v2 < 0)
  {
    __assert_rtn("WXMPMeta_IncrementRefCount_1", "WXMPMeta.cpp", 116, "thiz->clientRefs > 0");
  }

  XMP_AutoLock::~XMP_AutoLock(&v3);
}

void sub_185ED33F0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x185ED33ACLL);
}

void sub_185ED33FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  XMP_AutoLock::~XMP_AutoLock(va);
  _Unwind_Resume(a1);
}

void TXMPIterator<std::string>::TXMPIterator(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_1EF4D9080;
  a1[1] = 0;
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  WXMPIterator_PropCTor_1(*(a2 + 8), a3, a4, a5, v5);
}

void sub_185ED3B0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  TXMPIterator<std::string>::~TXMPIterator(&a21);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (*(v35 - 113) < 0)
  {
    operator delete(*(v35 - 136));
  }

  if (*(v35 - 89) < 0)
  {
    operator delete(*(v35 - 112));
  }

  _Unwind_Resume(a1);
}

void VerifyQualName(char *a1, char *a2)
{
  if (a1 >= a2)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    v6 = "Empty qualified name";
LABEL_6:
    exception[1] = v6;
    *(exception + 16) = 0;
  }

  v4 = 0;
  while (a1[v4] != 58)
  {
    if (&a1[++v4] == a2)
    {
      goto LABEL_5;
    }
  }

  if (!v4)
  {
LABEL_5:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    v6 = "Ill-formed qualified name";
    goto LABEL_6;
  }

  VerifySimpleXMLName(a1, &a1[v4]);
  v7 = v4 + 1;
  VerifySimpleXMLName(&a1[v7], a2);
  __p[0] = 0;
  __p[1] = 0;
  v11 = 0;
  std::string::basic_string[abi:fe200100](__p, a1, v7);
  if (v11 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((XMP_NamespaceTable::GetURI(sRegisteredNamespaces, v8, 0, 0) & 1) == 0)
  {
    v9 = __cxa_allocate_exception(0x18uLL);
    *v9 = 102;
    v9[1] = "Unknown namespace prefix for qualified name";
    *(v9 + 16) = 0;
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_185ED3D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef createNamespacePrefixForNamespace(const __CFString *a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v11 = 0;
  if (!a1)
  {
    return 0;
  }

  IIOString::IIOString(&range, a1);
  UTF8String = IIOString::createUTF8String(&range);
  IIOString::~IIOString(&range);
  if (!UTF8String)
  {
    return 0;
  }

  if (TXMPMeta<std::string>::GetNamespacePrefix(UTF8String, __p) && ((v2 = *MEMORY[0x1E695E480], v11 >= 0) ? (v3 = __p) : (v3 = __p[0]), v4 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v3, 0x8000100u), (v5 = v4) != 0))
  {
    range.location = 0;
    range.length = 0;
    v12.length = CFStringGetLength(v4);
    v12.location = 0;
    if (CFStringFindWithOptions(v5, @":", v12, 0, &range))
    {
      v13.length = range.location;
      v13.location = 0;
      Copy = CFStringCreateWithSubstring(v2, v5, v13);
    }

    else
    {
      Copy = CFStringCreateCopy(v2, v5);
    }

    v7 = Copy;
    CFRelease(v5);
  }

  else
  {
    v7 = 0;
  }

  free(UTF8String);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  return v7;
}

void sub_185ED3E5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void WXMPIterator_Skip_1(void *a1, uint64_t a2, void *a3)
{
  v8 = (a1 + 2);
  XMP_ReadWriteLock::Acquire((a1 + 2), 1);
  *a3 = 0;
  v6 = a1[29];
  if (!v6)
  {
    __assert_rtn("WXMPIterator_Skip_1", "WXMPIterator.cpp", 164, "thiz->info.xmpObj != __null");
  }

  v7 = (v6 + 16);
  XMP_ReadWriteLock::Acquire((v6 + 16), 0);
  (*(*a1 + 24))(a1, a2);
  XMP_AutoLock::~XMP_AutoLock(&v7);
  XMP_AutoLock::~XMP_AutoLock(&v8);
}

void sub_185ED3F54(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, XMP_ReadWriteLock *a9)
{
  XMP_AutoLock::~XMP_AutoLock(&a9);
  if (a2 == 3)
  {
    v12 = __cxa_begin_catch(a1);
    *(v9 + 32) = *v12;
    v13 = *(v12 + 1);
    if (!v13)
    {
      v13 = "";
    }

    *v9 = v13;
    *(v9 + 8) = "XMP";
    __cxa_end_catch();
  }

  else
  {
    v14 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v9 + 32) = 13;
      v15 = (*(*v14 + 16))(v14);
      v16 = "";
      if (v15)
      {
        v16 = v15;
      }

      *v9 = v16;
      __cxa_end_catch();
    }

    else
    {
      *(v9 + 32) = 14;
      *v9 = "Caught unknown exception";
      __cxa_end_catch();
    }
  }

  JUMPOUT(0x185ED3F14);
}

void sub_185ED4028(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  XMP_AutoLock::~XMP_AutoLock(va);
  _Unwind_Resume(a1);
}

void TXMPIterator<std::string>::Skip(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  WXMPIterator_Skip_1(*(a1 + 8), a2, v4);
  if (*&v4[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v3 = *&v4[0];
    *exception = v5;
    exception[1] = v3;
    *(exception + 16) = 0;
  }
}

void XMPIterator::Skip(XMPIterator *this, unsigned int a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 103;
    v4 = "Must specify what to skip";
    goto LABEL_10;
  }

  if (a2 >= 4)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 103;
    v4 = "Undefined options";
LABEL_10:
    exception[1] = v4;
    *(exception + 16) = 0;
  }

  if (a2)
  {
    *(*(this + 33) + 88) = 3;
  }

  else
  {
    *(this + 33) = *(this + 34);
    v2 = this + 224;

    AdvanceIterPos(v2);
  }
}

void FindNode()
{
  __assert_rtn("FindNode", "XMPCore_Impl.cpp", 1117, "(currNode == 0) || (currNode == *currPos)");
}

{
  __assert_rtn("FindNode", "XMPCore_Impl.cpp", 1028, "(leafOptions == 0) || createNodes");
}

{
  __assert_rtn("FindNode", "XMPCore_Impl.cpp", 1078, "(arrayForm == 0) ? (aliasPos->second.size() == 2) : (aliasPos->second.size() == 3)");
}

{
  __assert_rtn("FindNode", "XMPCore_Impl.cpp", 1077, "(arrayForm == 0) || (arrayForm & kXMP_PropValueIsArray)");
}

{
  __assert_rtn("FindNode", "XMPCore_Impl.cpp", 1057, "aliasPos != sRegisteredAliasMap->end()");
}

{
  __assert_rtn("FindNode", "XMPCore_Impl.cpp", 1118, "(currNode != 0) || (! createNodes)");
}

void WXMPMeta_IncrementRefCount_1_cold_1()
{
  {
  }
}

uint64_t png_do_packswap(uint64_t result, unsigned __int8 *a2, unint64_t a3)
{
  v3 = *(result + 17);
  if (v3 <= 7)
  {
    v4 = *(result + 8);
    switch(v3)
    {
      case 1u:
        v5 = &onebppswaptable;
        break;
      case 4u:
        v5 = &fourbppswaptable;
        break;
      case 2u:
        v5 = &twobppswaptable;
        break;
      default:
        return result;
    }

    if (&a2[v4] > a2)
    {
      v6 = a2;
      while (v6 < a3 && v6 >= a2)
      {
        v7 = &v5[*v6];
        if (v7 >= v5 + 256 || v7 < v5)
        {
          break;
        }

        *v6++ = *v7;
        if (!--v4)
        {
          return result;
        }
      }

      __break(0x5519u);
    }
  }

  return result;
}

void png_calloc(void (**a1)(void), size_t a2)
{
  v3 = png_malloc(a1, a2);
  v4 = v3;
  if (v3)
  {
    if ((a2 & 0x8000000000000000) != 0 || (bzero(v3, a2), v4 > (v4 + a2)) || !a2)
    {
      __break(0x5519u);
    }
  }
}

void PNGReadPlugin::copyImageBlockSetInterlaced(uint64_t a1)
{
  v33 = 0;
  CGImageProviderSetProperty();
  v3 = *(a1 + 112);
  IIOReadPlugin::allocateBlockArray(a1, *(a1 + 104));
  if (IIOReadPlugin::getCachedBlocks(a1))
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      v27 = IIOImageReadSession::mapData(v5);
    }

    else
    {
      v27 = 0;
    }

    v6 = *(a1 + 112);
    if (v6 < *(a1 + 116))
    {
      v7 = MEMORY[0x1E695F050];
      do
      {
        if (*(*(a1 + 96) - 8 * v3 + 8 * v6))
        {
          _cg_jpeg_mem_term("copyImageBlockSetInterlaced", 3298, "*** _blockArray[%d] was cached - and already allocated\n", v6 - v3);
        }

        v8 = *(a1 + 312);
        v9 = (v6 * v8);
        LODWORD(v1) = *(a1 + 308);
        LODWORD(v4) = *(a1 + 248);
        v10 = v4;
        v11 = v8 + v9 <= v10 ? v8 : v10 - v9;
        v12 = *(a1 + 316) * v8;
        v13 = _ImageIO_Malloc(v12, *(a1 + 416), &v33, kImageMalloc_PNG_Data[0], 0, 0);
        if (!v13)
        {
          break;
        }

        v14 = v13;
        v1 = *&v1;
        bzero(v13, v12);
        v15 = *(a1 + 316);
        v30[0] = v6;
        v30[1] = 0;
        *&v30[2] = v9;
        *&v30[3] = v1;
        *&v30[4] = v11;
        v30[5] = v14;
        v30[6] = v15;
        v30[7] = v12;
        v31 = 0u;
        v32 = 0;
        v29 = 0;
        v28 = 0u;
        std::vector<IIODecodeFrameParams>::vector[abi:fe200100](&v28, 1uLL);
        v16 = IIO_Reader::testHeaderSize(*(a1 + 24));
        PNGReadPlugin::DecodeUncomposedFrames(v16, 0, a1 + 200, (a1 + 464), &v28);
        if (*(&v28 + 1) == v28)
        {
          __break(1u);
          return;
        }

        v17 = *(v28 + 64);
        if (!v17)
        {
          v24 = *(a1 + 104);
          if (v24)
          {
            *(a1 + 104) = v24 - 1;
          }

          _ImageIO_Free(v14, v33);
          v25 = *(a1 + 16);
          if (v25)
          {
            IIOImagePlus::setStatus(v25, -6);
          }

          v34[0] = &v28;
          std::vector<IIODecodeFrameParams>::__destroy_vector::operator()[abi:fe200100](v34);
          IIODecodeFrameParams::~IIODecodeFrameParams(v30);
          break;
        }

        PNGReadPlugin::postProcess(a1, v14);
        v18 = *(a1 + 371) == 1 && v17 >= *(a1 + 248);
        v35.origin.x = 0.0;
        v35.origin.y = v9;
        v35.size.width = v1;
        v35.size.height = v11;
        *(*(a1 + 96) - 8 * v3 + 8 * v6) = IIOReadPlugin::createImageBlock(a1, v14, v33, v35, *(a1 + 316), v18);
        v19 = CGRectEqualToRect(*(a1 + 120), *v7);
        v20 = 0;
        if (!v19)
        {
          v36.origin.x = 0.0;
          v36.origin.y = v9;
          v36.size.width = v1;
          v36.size.height = v11;
          *&v20 = CGRectUnion(*(a1 + 120), v36);
          v9 = v21;
          v1 = v22;
          v11 = v23;
        }

        *(a1 + 120) = v20;
        *(a1 + 128) = v9;
        *(a1 + 136) = v1;
        *(a1 + 144) = v11;
        v34[0] = &v28;
        std::vector<IIODecodeFrameParams>::__destroy_vector::operator()[abi:fe200100](v34);
        IIODecodeFrameParams::~IIODecodeFrameParams(v30);
        ++v6;
      }

      while (v6 < *(a1 + 116));
    }

    if (v27)
    {
      v26 = *(a1 + 24);
      if (v26)
      {
        IIOImageReadSession::unmapData(v26);
      }
    }
  }

  if (*(a1 + 194) == 1)
  {
    ImageIOLog("<<< copyImageBlockSetInterlaced - PNG  [%p]\n", 0);
    ImageIOLog("===================================================================================================\n");
  }
}

void sub_185ED4610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  *(v4 - 128) = va;
  std::vector<IIODecodeFrameParams>::__destroy_vector::operator()[abi:fe200100]((v4 - 128));
  IIODecodeFrameParams::~IIODecodeFrameParams(va1);
  _Unwind_Resume(a1);
}

void PNGReadPlugin::DecodeFrameInterlaced(IIOImageReadSession *a1, uint64_t a2, _BYTE *a3, void *a4)
{
  v8 = *(a2 + 48);
  v51 = 0;
  v52 = 0;
  v9 = a4[6];
  v10 = _cg_png_create_read_struct("1.6.43", 0, handle_error, handle_warning);
  v52 = v10;
  if (v10)
  {
    v11 = v10;
    info_struct = _cg_png_create_info_struct(v10);
    v51 = info_struct;
    if (!info_struct)
    {
      goto LABEL_82;
    }

    v13 = info_struct;
    _cg_png_set_option(v11, 2u, 3);
    _cg_png_set_benign_errors(v11, 1);
    v14 = *(a2 + 8);
    if (v14)
    {
      IIOImageReadSession::seek(a1, v14, 0);
    }

    else
    {
      IIOImageReadSession::rewind(a1);
    }

    _cg_png_set_read_fn(v11, a1, read_fn);
    if ((*(a2 + 169) & 1) == 0)
    {
      _cg_png_set_palette_to_rgb(v11);
      if ((gIIODebugFlags & 0x20000) != 0)
      {
        v15 = *(a2 + 20);
        v16 = v15 >> 24;
        if ((v15 >> 24) <= 0x7F)
        {
          v17 = *(MEMORY[0x1E69E9830] + 4 * v16 + 60) & 0x40000;
        }

        else
        {
          v17 = __maskrune(v16, 0x40000uLL);
          v15 = *(a2 + 20);
          v16 = v15 >> 24;
        }

        if (v17)
        {
          v18 = v16;
        }

        else
        {
          v18 = 46;
        }

        v50 = v18;
        v19 = v15 << 8 >> 24;
        if (v19 <= 0x7F)
        {
          v20 = *(MEMORY[0x1E69E9830] + 4 * v19 + 60) & 0x40000;
        }

        else
        {
          v20 = __maskrune(v19, 0x40000uLL);
          v15 = *(a2 + 20);
          v19 = v15 << 8 >> 24;
        }

        if (v20)
        {
          v21 = v19;
        }

        else
        {
          v21 = 46;
        }

        v22 = v15 >> 8;
        if (v22 <= 0x7F)
        {
          v23 = *(MEMORY[0x1E69E9830] + 4 * v22 + 60) & 0x40000;
        }

        else
        {
          v23 = __maskrune(v22, 0x40000uLL);
          v15 = *(a2 + 20);
          v22 = v15 >> 8;
        }

        if (v23)
        {
          v24 = v22;
        }

        else
        {
          v24 = 46;
        }

        v25 = v15;
        if (v15 <= 0x7F)
        {
          v26 = *(MEMORY[0x1E69E9830] + 4 * v15 + 60) & 0x40000;
        }

        else
        {
          v26 = __maskrune(v15, 0x40000uLL);
          v25 = *(a2 + 20);
        }

        if (v26)
        {
          v27 = v25;
        }

        else
        {
          v27 = 46;
        }

        ImageIOLog("♦️  '%c%c%c%c' %d: png_set_palette_to_rgb\n", v50, v21, v24, v27, 4641);
      }
    }

    _cg_png_set_expand_gray_1_2_4_to_8(v11);
    if ((gIIODebugFlags & 0x20000) != 0)
    {
      v28 = *(a2 + 20);
      v29 = v28 >> 24;
      if ((v28 >> 24) <= 0x7F)
      {
        v30 = *(MEMORY[0x1E69E9830] + 4 * v29 + 60) & 0x40000;
      }

      else
      {
        v30 = __maskrune(v29, 0x40000uLL);
        v28 = *(a2 + 20);
        v29 = v28 >> 24;
      }

      if (v30)
      {
        v31 = v29;
      }

      else
      {
        v31 = 46;
      }

      v32 = v28 << 8 >> 24;
      if (v32 <= 0x7F)
      {
        v33 = *(MEMORY[0x1E69E9830] + 4 * v32 + 60) & 0x40000;
      }

      else
      {
        v33 = __maskrune(v32, 0x40000uLL);
        v28 = *(a2 + 20);
        v32 = v28 << 8 >> 24;
      }

      if (v33)
      {
        v34 = v32;
      }

      else
      {
        v34 = 46;
      }

      v35 = v28 >> 8;
      if (v35 <= 0x7F)
      {
        v36 = *(MEMORY[0x1E69E9830] + 4 * v35 + 60) & 0x40000;
      }

      else
      {
        v36 = __maskrune(v35, 0x40000uLL);
        v28 = *(a2 + 20);
        v35 = v28 >> 8;
      }

      if (v36)
      {
        v37 = v35;
      }

      else
      {
        v37 = 46;
      }

      v38 = v28;
      if (v28 <= 0x7F)
      {
        v39 = *(MEMORY[0x1E69E9830] + 4 * v28 + 60) & 0x40000;
      }

      else
      {
        v39 = __maskrune(v28, 0x40000uLL);
        v38 = *(a2 + 20);
      }

      if (v39)
      {
        v40 = v38;
      }

      else
      {
        v40 = 46;
      }

      ImageIOLog("♦️  '%c%c%c%c' %d: png_set_expand_gray_1_2_4_to_8\n", v31, v34, v37, v40, 4644);
    }

    _cg_png_set_keep_unknown_chunks_sized(v11, 3u, "CgBI", 4);
    _cg_png_set_read_user_chunk_fn(v11, a3, PNGReadPlugin::Read_user_chunk_callback);
    _cg_png_read_info(v11, v13);
    v41 = _cg_png_set_interlace_handling(v11);
    if (*(a2 + 63) == 1)
    {
      _cg_png_set_swap(v11);
    }

    PNGReadPlugin::Update_png_struct(a2, a3, v11, v13);
    if (v41 >= 1)
    {
      v42 = 0;
      v43 = -1;
      do
      {
        if (v8)
        {
          v44 = 0;
          v45 = a4[5];
          do
          {
            if (*(a2 + 169))
            {
              v46 = v45;
            }

            else
            {
              v46 = 0;
            }

            if (*(a2 + 169))
            {
              v47 = v9;
            }

            else
            {
              v47 = 0;
            }

            if (*(a2 + 169))
            {
              v48 = 0;
            }

            else
            {
              v48 = v45;
            }

            if (*(a2 + 169))
            {
              v49 = 0;
            }

            else
            {
              v49 = v9;
            }

            _cg_png_read_row_sized(v11, v46, v47, v48, v49);
            v45 += v9;
            if (v43 <= v44)
            {
              v43 = v44 + 1;
            }

            ++v44;
          }

          while (v8 != v44);
        }

        ++v42;
      }

      while (v42 != v41);
    }

    else
    {
LABEL_82:
      v43 = -1;
    }

    _cg_png_destroy_read_struct(&v52, &v51, 0);
  }

  else
  {
    v43 = -1;
  }

  a4[8] = v43 & ~(v43 >> 63);
}

void sub_185ED4AE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  __cxa_begin_catch(a1);
  imagePNG_error_break(v16);
  _cg_png_get_height(a16);
  _cg_png_get_current_row_number(a16);
  __cxa_end_catch();
  if (!a16)
  {
    JUMPOUT(0x185ED4AB8);
  }

  JUMPOUT(0x185ED4AA8);
}

uint64_t _cg_png_set_expand_gray_1_2_4_to_8(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 80);
    if ((v1 & 0x40) != 0)
    {
      return png_app_error(result, "invalid after png_start_read_image or png_read_update_info");
    }

    else
    {
      *(result + 80) = v1 | 0x4000;
      *(result + 88) |= 0x1000u;
    }
  }

  return result;
}

unsigned int *png_do_expand(unsigned int *result, unint64_t a2, unint64_t a3, unsigned __int16 *a4)
{
  v4 = *result;
  if (!*(result + 16))
  {
    if (a4)
    {
      v22 = a4[4];
    }

    else
    {
      v22 = 0;
    }

    v23 = *(result + 17);
    if (v23 > 7)
    {
      goto LABEL_142;
    }

    switch(v23)
    {
      case 1u:
        if (v22)
        {
          v22 = 255;
        }

        else
        {
          v22 = 0;
        }

        if (v4)
        {
          v65 = -v4 & 7;
          v66 = (a2 + ((v4 - 1) >> 3));
          v67 = (v4 + a2 - 1);
          v68 = *result;
          while (v66 < a3 && v66 >= a2 && v67 < a3 && v67 >= a2)
          {
            if ((*v66 >> v65))
            {
              v69 = -1;
            }

            else
            {
              v69 = 0;
            }

            *v67-- = v69;
            v70 = v65 == 7;
            if (v65 == 7)
            {
              v65 = 0;
            }

            else
            {
              ++v65;
            }

            v66 -= v70;
            if (!--v68)
            {
              goto LABEL_139;
            }
          }

          goto LABEL_191;
        }

        break;
      case 2u:
        v22 = 85 * (v22 & 3);
        if (v4)
        {
          v60 = ~(2 * v4 + 6) & 6;
          v61 = (a2 + ((v4 - 1) >> 2));
          v62 = (v4 + a2 - 1);
          v63 = *result;
          while (v61 < a3 && v61 >= a2 && v62 < a3 && v62 >= a2)
          {
            *v62-- = 85 * ((*v61 >> v60) & 3);
            v29 = v60 == 6;
            v64 = v60 == 6;
            v60 += 2;
            if (v29)
            {
              v60 = 0;
            }

            v61 -= v64;
            if (!--v63)
            {
              goto LABEL_139;
            }
          }

          goto LABEL_191;
        }

        break;
      case 4u:
        v22 = v22 & 0xF | (16 * (v22 & 0xF));
        if (v4)
        {
          v24 = 4 * (*result & 1);
          v25 = (a2 + ((v4 - 1) >> 1));
          v26 = (v4 + a2 - 1);
          v27 = *result;
          while (v25 < a3 && v25 >= a2 && v26 < a3 && v26 >= a2)
          {
            v28 = *v25 >> v24;
            v29 = v24 == 0;
            v30 = v24 == 0;
            *v26-- = v28 & 0xF | (16 * v28);
            v31 = !v29;
            v25 -= v31;
            v24 = 4 * v30;
            if (!--v27)
            {
              goto LABEL_139;
            }
          }

          goto LABEL_191;
        }

        break;
      default:
LABEL_139:
        v71 = v4;
LABEL_141:
        v23 = 8;
        *(result + 17) = 8;
        *(result + 19) = 8;
        *(result + 1) = v71;
LABEL_142:
        if (!a4)
        {
          return result;
        }

        if (v23 == 16)
        {
          if (v4)
          {
            v79 = *(result + 1);
            v80 = 2 * v79;
            v81 = v4;
            do
            {
              v82 = (a2 + v79 - 2);
              if (v82 >= a3 || v82 < a2)
              {
                goto LABEL_191;
              }

              v84 = (a2 + v79 - 1);
              v85 = (a2 + v80 - 1);
              if (*v82 != v22 >> 8)
              {
                goto LABEL_177;
              }

              if (v84 >= a3 || v84 < a2)
              {
                goto LABEL_191;
              }

              if (*v84 == v22)
              {
                if (v85 >= a3)
                {
                  goto LABEL_191;
                }

                if (v85 < a2)
                {
                  goto LABEL_191;
                }

                v86 = (a2 + v80 - 2);
                *v85 = 0;
                if (v86 >= a3 || v86 < a2)
                {
                  goto LABEL_191;
                }

                *v86 = 0;
              }

              else
              {
LABEL_177:
                if (v85 >= a3)
                {
                  goto LABEL_191;
                }

                if (v85 < a2)
                {
                  goto LABEL_191;
                }

                v87 = (a2 + v80 - 2);
                *v85 = -1;
                if (v87 >= a3 || v87 < a2)
                {
                  goto LABEL_191;
                }

                *v87 = -1;
              }

              if (v84 >= a3)
              {
                goto LABEL_191;
              }

              if (v84 < a2)
              {
                goto LABEL_191;
              }

              v88 = (a2 + v80 - 3);
              if (v88 >= a3)
              {
                goto LABEL_191;
              }

              if (v88 < a2)
              {
                goto LABEL_191;
              }

              v89 = (a2 + v80 - 4);
              *v88 = *v84;
              if (v89 >= a3 || v89 < a2)
              {
                goto LABEL_191;
              }

              *v89 = *v82;
              v79 -= 2;
              v80 -= 4;
            }

            while (--v81);
          }
        }

        else if (v23 == 8 && v4)
        {
          v72 = 2 * v4;
          v73 = v4 - 1;
          v74 = v4;
          do
          {
            v75 = (a2 + v73);
            if (a2 + v73 >= a3)
            {
              goto LABEL_191;
            }

            if (v75 < a2)
            {
              goto LABEL_191;
            }

            v76 = (a2 + v72 - 1);
            if (v76 >= a3 || v76 < a2)
            {
              goto LABEL_191;
            }

            v77 = *v75 == v22 ? 0 : -1;
            v78 = (a2 + v72 - 2);
            *v76 = v77;
            if (v78 >= a3 || v78 < a2)
            {
              goto LABEL_191;
            }

            *v78 = *v75;
            --v73;
            v72 -= 2;
          }

          while (--v74);
        }

        *(result + 16) = 4;
        *(result + 18) = 2;
        v58 = 2 * *(result + 17);
        v59 = v58;
        goto LABEL_187;
    }

    v71 = 0;
    goto LABEL_141;
  }

  if (!a4 || *(result + 16) != 2)
  {
    return result;
  }

  v5 = *(result + 17);
  if (v5 == 16)
  {
    if (v4)
    {
      v32 = a4[1];
      v33 = a4[2];
      v34 = a4[3];
      v35 = 8 * v4;
      v36 = *(result + 1);
      v37 = *result;
      do
      {
        v38 = (a2 + v36 - 6);
        if (v38 >= a3 || v38 < a2)
        {
          goto LABEL_191;
        }

        v40 = (a2 + v36 - 1);
        v41 = (a2 + v35 - 1);
        if (v32 >> 8 != *v38)
        {
          goto LABEL_87;
        }

        v42 = (a2 + v36 - 5);
        if (v42 >= a3 || v42 < a2)
        {
          goto LABEL_191;
        }

        if (*v42 != v32)
        {
          goto LABEL_87;
        }

        v43 = (a2 + v36 - 4);
        if (v43 >= a3 || v43 < a2)
        {
          goto LABEL_191;
        }

        if (v33 >> 8 != *v43)
        {
          goto LABEL_87;
        }

        v44 = (a2 + v36 - 3);
        if (v44 >= a3 || v44 < a2)
        {
          goto LABEL_191;
        }

        if (*v44 != v33)
        {
          goto LABEL_87;
        }

        v45 = (a2 + v36 - 2);
        if (v45 >= a3 || v45 < a2)
        {
          goto LABEL_191;
        }

        if (v34 >> 8 != *v45)
        {
          goto LABEL_87;
        }

        if (v40 >= a3 || v40 < a2)
        {
          goto LABEL_191;
        }

        if (*v40 == v34)
        {
          if (v41 >= a3)
          {
            goto LABEL_191;
          }

          if (v41 < a2)
          {
            goto LABEL_191;
          }

          v46 = (a2 + v35 - 2);
          *v41 = 0;
          if (v46 >= a3 || v46 < a2)
          {
            goto LABEL_191;
          }

          *v46 = 0;
        }

        else
        {
LABEL_87:
          if (v41 >= a3)
          {
            goto LABEL_191;
          }

          if (v41 < a2)
          {
            goto LABEL_191;
          }

          v47 = (a2 + v35 - 2);
          *v41 = -1;
          if (v47 >= a3 || v47 < a2)
          {
            goto LABEL_191;
          }

          *v47 = -1;
        }

        if (v40 >= a3)
        {
          goto LABEL_191;
        }

        if (v40 < a2)
        {
          goto LABEL_191;
        }

        v48 = (a2 + v35 - 3);
        if (v48 >= a3)
        {
          goto LABEL_191;
        }

        if (v48 < a2)
        {
          goto LABEL_191;
        }

        v49 = (a2 + v36 - 2);
        *v48 = *v40;
        if (v49 >= a3)
        {
          goto LABEL_191;
        }

        if (v49 < a2)
        {
          goto LABEL_191;
        }

        v50 = (a2 + v35 - 4);
        if (v50 >= a3)
        {
          goto LABEL_191;
        }

        if (v50 < a2)
        {
          goto LABEL_191;
        }

        v51 = (a2 + v36 - 3);
        *v50 = *v49;
        if (v51 >= a3)
        {
          goto LABEL_191;
        }

        if (v51 < a2)
        {
          goto LABEL_191;
        }

        v52 = (a2 + v35 - 5);
        if (v52 >= a3)
        {
          goto LABEL_191;
        }

        if (v52 < a2)
        {
          goto LABEL_191;
        }

        v53 = (a2 + v36 - 4);
        *v52 = *v51;
        if (v53 >= a3)
        {
          goto LABEL_191;
        }

        if (v53 < a2)
        {
          goto LABEL_191;
        }

        v54 = (a2 + v35 - 6);
        if (v54 >= a3)
        {
          goto LABEL_191;
        }

        if (v54 < a2)
        {
          goto LABEL_191;
        }

        v55 = (a2 + v36 - 5);
        *v54 = *v53;
        if (v55 >= a3)
        {
          goto LABEL_191;
        }

        if (v55 < a2)
        {
          goto LABEL_191;
        }

        v56 = (a2 + v35 - 7);
        if (v56 >= a3)
        {
          goto LABEL_191;
        }

        if (v56 < a2)
        {
          goto LABEL_191;
        }

        v57 = (a2 + v35 - 8);
        *v56 = *v55;
        if (v57 >= a3 || v57 < a2)
        {
          goto LABEL_191;
        }

        *v57 = *v38;
        v36 -= 6;
        v35 -= 8;
      }

      while (--v37);
    }
  }

  else if (v5 == 8 && v4)
  {
    v6 = 4 * v4;
    v7 = *(result + 1);
    v8 = *(a4 + 6);
    v9 = *(a4 + 4);
    v10 = *result;
    v11 = *(a4 + 2);
    while (1)
    {
      v12 = (a2 + v7 - 3);
      v13 = v12 < a3 && v12 >= a2;
      if (!v13)
      {
        break;
      }

      v14 = (a2 + v7 - 1);
      v15 = (a2 + v6 - 1);
      if (*v12 != v11)
      {
        goto LABEL_24;
      }

      v16 = (a2 + v7 - 2);
      if (v16 >= a3 || v16 < a2)
      {
        break;
      }

      if (*v16 != v9)
      {
        goto LABEL_24;
      }

      if (v14 >= a3 || v14 < a2)
      {
        break;
      }

      if (*v14 == v8)
      {
        if (v15 >= a3 || v15 < a2)
        {
          break;
        }

        v17 = 0;
      }

      else
      {
LABEL_24:
        if (v15 >= a3 || v15 < a2)
        {
          break;
        }

        v17 = -1;
      }

      *v15 = v17;
      if (v14 >= a3)
      {
        break;
      }

      if (v14 < a2)
      {
        break;
      }

      v18 = (a2 + v6 - 2);
      if (v18 >= a3)
      {
        break;
      }

      if (v18 < a2)
      {
        break;
      }

      v19 = (a2 + v7 - 2);
      *v18 = *v14;
      if (v19 >= a3)
      {
        break;
      }

      if (v19 < a2)
      {
        break;
      }

      v20 = (a2 + v6 - 3);
      if (v20 >= a3)
      {
        break;
      }

      if (v20 < a2)
      {
        break;
      }

      v21 = (a2 + v6 - 4);
      *v20 = *v19;
      if (v21 >= a3 || v21 < a2)
      {
        break;
      }

      *v21 = *v12;
      v7 -= 3;
      v6 -= 4;
      if (!--v10)
      {
        goto LABEL_112;
      }
    }

LABEL_191:
    __break(0x5519u);
    return result;
  }

LABEL_112:
  *(result + 16) = 6;
  *(result + 18) = 4;
  v58 = 4 * *(result + 17);
  v59 = v58;
LABEL_187:
  *(result + 19) = v58;
  v13 = v59 >= 8;
  v90 = (v58 * v4 + 7) >> 3;
  v91 = v4 * (v58 >> 3);
  if (!v13)
  {
    v91 = v90;
  }

  *(result + 1) = v91;
  return result;
}

unint64_t png_do_read_interlace(unint64_t result, unint64_t a2, unint64_t a3, int a4, int a5)
{
  __src[1] = *MEMORY[0x1E69E9840];
  if (!result || !a2)
  {
    return result;
  }

  v61 = result;
  v6 = &dword_186226E08[a4];
  v7 = v6 + 1;
  if (v6 < dword_186226E08 || v7 > "13IIOSubsampler" || v6 > v7)
  {
    goto LABEL_118;
  }

  v11 = *result;
  v62 = *v6;
  v12 = *v6 * *result;
  v13 = *(result + 19);
  v60 = v12;
  if (v13 == 4)
  {
    v40 = 4 * (*result & 1);
    v41 = 4 * (v12 & 1);
    v42 = ~(4 * v12) & 4;
    if ((a5 & 0x10000) != 0)
    {
      v43 = -4;
    }

    else
    {
      v43 = 4;
    }

    if ((a5 & 0x10000) != 0)
    {
      v44 = 0;
    }

    else
    {
      v44 = 4;
    }

    if ((a5 & 0x10000) != 0)
    {
      v45 = 4;
    }

    else
    {
      v45 = 0;
    }

    if ((a5 & 0x10000) != 0)
    {
      v41 = v42;
      v40 ^= 4u;
    }

    if (v11)
    {
      v46 = 0;
      v47 = (a2 + ((v11 - 1) >> 1));
      v48 = (a2 + ((v60 - 1) >> 1));
      while (v47 < a3 && v47 >= a2)
      {
        v49 = v62;
        if (v62 >= 1)
        {
          v50 = (*v47 >> v40) & 0xF;
          do
          {
            if (v48 >= a3 || v48 < a2)
            {
              goto LABEL_118;
            }

            *v48 = (0xF0Fu >> (4 - v41)) & *v48 | (v50 << v41);
            v26 = v41 == v44;
            v51 = v41 == v44;
            v41 += v43;
            if (v26)
            {
              v41 = v45;
            }

            v48 -= v51;
            --v49;
          }

          while (v49);
          v11 = *v61;
        }

        v26 = v40 == v44;
        result = v40 == v44;
        v40 += v43;
        if (v26)
        {
          v40 = v45;
        }

        v47 -= result;
        if (++v46 >= v11)
        {
          goto LABEL_112;
        }
      }

      goto LABEL_118;
    }
  }

  else
  {
    if (v13 != 2)
    {
      if (v13 == 1)
      {
        v14 = v12 - 1;
        v15 = (v11 - 1) & 7;
        v16 = -v12 & 7;
        v17 = (v12 - 1) & 7;
        if ((a5 & 0x10000) != 0)
        {
          v18 = -1;
        }

        else
        {
          v18 = 1;
        }

        if ((a5 & 0x10000) != 0)
        {
          v19 = 0;
        }

        else
        {
          v19 = 7;
        }

        if ((a5 & 0x10000) != 0)
        {
          v20 = 7;
        }

        else
        {
          v20 = 0;
        }

        if ((a5 & 0x10000) != 0)
        {
          v16 = v17;
        }

        else
        {
          v15 ^= 7u;
        }

        if (v11)
        {
          v21 = 0;
          v22 = (a2 + ((v11 - 1) >> 3));
          v23 = (a2 + (v14 >> 3));
          while (v22 < a3 && v22 >= a2)
          {
            v24 = v62;
            if (v62 >= 1)
            {
              v25 = (*v22 >> v15) & 1;
              do
              {
                if (v23 >= a3 || v23 < a2)
                {
                  goto LABEL_118;
                }

                *v23 = (0x7F7Fu >> (7 - v16)) & *v23 | (v25 << v16);
                v26 = v16 == v19;
                v27 = v16 == v19;
                v16 += v18;
                if (v26)
                {
                  v16 = v20;
                }

                v23 -= v27;
                --v24;
              }

              while (v24);
              v11 = *v61;
            }

            v26 = v15 == v19;
            result = v15 == v19;
            v15 += v18;
            if (v26)
            {
              v15 = v20;
            }

            v22 -= result;
            if (++v21 >= v11)
            {
              goto LABEL_112;
            }
          }

          goto LABEL_118;
        }

        goto LABEL_112;
      }

      if (!v11)
      {
        v58 = result;
        goto LABEL_113;
      }

      v52 = 0;
      v53 = v13 >> 3;
      v54 = a2 + (v13 >> 3) * (v11 - 1);
      v55 = (a2 + (v13 >> 3) * (v12 - 1));
      while (1)
      {
        __src[0] = 0;
        if (v13 > 0x47)
        {
          break;
        }

        if (v54 > a3)
        {
          break;
        }

        if (v54 < a2)
        {
          break;
        }

        if (a3 - v54 < v53)
        {
          break;
        }

        result = __memcpy_chk();
        if (result > result + v53)
        {
          break;
        }

        v56 = v62;
        if (v62 >= 1)
        {
          v57 = a3 - v55;
          do
          {
            if (v55 > a3)
            {
              goto LABEL_118;
            }

            if (v55 < a2)
            {
              goto LABEL_118;
            }

            if (v57 < v53)
            {
              goto LABEL_118;
            }

            result = memcpy(v55, __src, v13 >> 3);
            if (v55 > &v55[v53])
            {
              goto LABEL_118;
            }

            v55 -= v13 >> 3;
            v57 += v53;
            --v56;
          }

          while (v56);
          v11 = *v61;
        }

        v54 -= v13 >> 3;
        if (++v52 >= v11)
        {
          goto LABEL_112;
        }
      }

LABEL_118:
      __break(0x5519u);
    }

    v28 = (2 * v11 + 6) & 6;
    v29 = 2 * v12 + 6;
    v30 = ~v29 & 6;
    if ((a5 & 0x10000) != 0)
    {
      v31 = -2;
    }

    else
    {
      v31 = 2;
    }

    if ((a5 & 0x10000) != 0)
    {
      v32 = 0;
    }

    else
    {
      v32 = 6;
    }

    if ((a5 & 0x10000) != 0)
    {
      v33 = 6;
    }

    else
    {
      v33 = 0;
    }

    if ((a5 & 0x10000) != 0)
    {
      v30 = v29 & 6;
    }

    else
    {
      v28 ^= 6u;
    }

    if (v11)
    {
      v34 = 0;
      v35 = (a2 + ((v11 - 1) >> 2));
      v36 = (a2 + ((v60 - 1) >> 2));
      while (v35 < a3 && v35 >= a2)
      {
        v37 = v62;
        if (v62 >= 1)
        {
          v38 = (*v35 >> v28) & 3;
          do
          {
            if (v36 >= a3 || v36 < a2)
            {
              goto LABEL_118;
            }

            *v36 = (0x3F3Fu >> (6 - v30)) & *v36 | (v38 << v30);
            v26 = v30 == v32;
            v39 = v30 == v32;
            v30 += v31;
            if (v26)
            {
              v30 = v33;
            }

            v36 -= v39;
            --v37;
          }

          while (v37);
          v11 = *v61;
        }

        v26 = v28 == v32;
        result = v28 == v32;
        v28 += v31;
        if (v26)
        {
          v28 = v33;
        }

        v35 -= result;
        if (++v34 >= v11)
        {
          goto LABEL_112;
        }
      }

      goto LABEL_118;
    }
  }

LABEL_112:
  v12 = v60;
  v58 = v61;
  LODWORD(v13) = *(v61 + 19);
LABEL_113:
  *v58 = v12;
  v59 = (v12 * v13 + 7) >> 3;
  if (v13 >= 8)
  {
    v59 = v12 * (v13 >> 3);
  }

  *(v58 + 8) = v59;
  return result;
}

uint64_t png_read_filter_row_up_4bpp_neon(uint64_t result, int8x16_t *a2, unint64_t a3, int8x16_t *a4, unint64_t a5)
{
  if (a3 < a2 || (v5 = *(result + 8), v5 > a3 - a2) || a5 < a4 || v5 > a5 - a4)
  {
LABEL_43:
    __break(0x5519u);
    return result;
  }

  if (v5 < 0x80)
  {
    v7 = a4;
    v8 = a2;
  }

  else
  {
    v6 = a2;
    v7 = a4;
    do
    {
      v8 = v6 + 8;
      v9 = *v7;
      v10 = v7[1];
      v11 = v7[2];
      v12 = v7[3];
      v13 = v7[4];
      v14 = v7[5];
      v15 = v7[6];
      v16 = v7[7];
      v7 += 8;
      v17 = vaddq_s8(v10, v6[1]);
      v18 = vaddq_s8(v11, v6[2]);
      v19 = vaddq_s8(v12, v6[3]);
      v20 = vaddq_s8(v13, v6[4]);
      v21 = vaddq_s8(v14, v6[5]);
      v22 = vaddq_s8(v15, v6[6]);
      v23 = vaddq_s8(v16, v6[7]);
      *v6 = vaddq_s8(v9, *v6);
      v6[1] = v17;
      v6[2] = v18;
      v6[3] = v19;
      v6[4] = v20;
      v6[5] = v21;
      v5 -= 128;
      v6[6] = v22;
      v6[7] = v23;
      v6 += 8;
    }

    while (v5 > 0x7F);
  }

  if (v5 < 0x40)
  {
    v24 = v8;
  }

  else
  {
    do
    {
      v24 = v8 + 4;
      v25 = *v7;
      v26 = v7[1];
      v27 = v7[2];
      v28 = v7[3];
      v7 += 4;
      v29 = vaddq_s8(v26, v8[1]);
      v30 = vaddq_s8(v27, v8[2]);
      v31 = vaddq_s8(v28, v8[3]);
      *v8 = vaddq_s8(v25, *v8);
      v8[1] = v29;
      v8[2] = v30;
      v8[3] = v31;
      v5 -= 64;
      v8 += 4;
    }

    while (v5 > 0x3F);
    v8 = v24;
  }

  if (v5 >= 0x10)
  {
    do
    {
      v32 = *v24++;
      v33 = v32;
      v34 = *v7++;
      *v8++ = vaddq_s8(v34, v33);
      v5 -= 16;
    }

    while (v5 > 0xF);
  }

  if (v5 >= 4)
  {
    while (v24 < a3)
    {
      if (v24 < a2)
      {
        break;
      }

      v37 = v24->i8[0];
      v35 = &v24->i8[1];
      v36 = v37;
      if (v35 >= a3)
      {
        break;
      }

      if (v35 < a2)
      {
        break;
      }

      v40 = v35->i8[0];
      v38 = &v35->i8[1];
      v39 = v40;
      if (v38 >= a3)
      {
        break;
      }

      if (v38 < a2)
      {
        break;
      }

      v43 = v38->i8[0];
      v41 = &v38->i8[1];
      v42 = v43;
      if (v41 >= a3)
      {
        break;
      }

      if (v41 < a2)
      {
        break;
      }

      if (v7 >= a5)
      {
        break;
      }

      if (v7 < a4)
      {
        break;
      }

      v46 = v7->i8[0];
      v44 = &v7->i8[1];
      v45 = v46;
      if (v44 >= a5)
      {
        break;
      }

      if (v44 < a4)
      {
        break;
      }

      v49 = v44->i8[0];
      v47 = &v44->i8[1];
      v48 = v49;
      if (v47 >= a5)
      {
        break;
      }

      if (v47 < a4)
      {
        break;
      }

      v50 = &v47->u8[1];
      if (v50 >= a5)
      {
        break;
      }

      if (v50 < a4)
      {
        break;
      }

      if (v8 >= a3)
      {
        break;
      }

      if (v8 < a2)
      {
        break;
      }

      v51 = v41->i8[0];
      v52 = *(v50 - 1);
      result = *v50;
      v8->i8[0] = v45 + v36;
      v53 = &v8->i8[1];
      if (v53 >= a3)
      {
        break;
      }

      if (v53 < a2)
      {
        break;
      }

      *v53 = v48 + v39;
      v54 = (v53 + 1);
      if (v54 >= a3)
      {
        break;
      }

      if (v54 < a2)
      {
        break;
      }

      v54->i8[0] = v52 + v42;
      v55 = &v54->i8[1];
      if (v55 >= a3 || v55 < a2)
      {
        break;
      }

      v55->i8[0] = result + v51;
      v8 = &v55->i8[1];
      v5 -= 4;
      v24 = &v41->i8[1];
      v7 = (v50 + 1);
      if (v5 <= 3)
      {
        return result;
      }
    }

    goto LABEL_43;
  }

  return result;
}

unint64_t png_read_filter_row_paeth_neon(unint64_t result, unsigned __int8 *a2, unint64_t a3, unsigned __int8 *a4, unint64_t a5, double a6, double a7, int32x2_t a8, int32x2_t a9)
{
  if (a3 < a2 || (v9 = *(result + 8), v9 > a3 - a2) || a5 < a4 || (v9 <= a5 - a4 ? (v10 = a3 > a2) : (v10 = 0), v10 ? (v11 = a5 > a4) : (v11 = 0), !v11 || ((*a2 += *a4, (a2 + 1) < a3) ? (v12 = a2 + 1 >= a2) : (v12 = 0), (v13 = a4 + 1, v12) ? (v14 = v13 >= a5) : (v14 = 1), !v14 ? (v15 = v13 >= a4) : (v15 = 0), !v15 || (a2[1] += *v13, (a2 + 2) >= a3) || a2 + 2 < a2 || (v16 = a4 + 2, (a4 + 2) >= a5) || v16 < a4 || (a2[2] += *v16, (a2 + 3) >= a3) || a2 + 3 < a2 || (a4 + 3) >= a5 || a4 + 3 < a4)))
  {
LABEL_147:
    __break(0x5519u);
    return result;
  }

  a2[3] += a4[3];
  v17 = (a2 + 4);
  v18 = (a4 + 4);
  v19 = v9 - 4;
  if (v9 - 4 < 0x10)
  {
    v20 = v9 - 4;
  }

  else
  {
    a8.i32[0] = *a4;
    a9.i32[0] = *a2;
    v20 = v9 - 4;
    do
    {
      v21 = *v18++;
      v22 = vdupq_lane_s32(*v21.i8, 0);
      v23 = vdupq_lane_s32(a9, 0);
      v24 = vdupq_lane_s32(a8, 0);
      v25 = vabdq_u16(vaddl_u8(*v22.i8, *v23.i8), vshll_n_u8(*v24.i8, 1uLL));
      v26 = vcgeq_u16(v25, vabdl_u8(*v22.i8, *v24.i8));
      *v27.i8 = vcge_u8(vabd_u8(*v23.i8, *v24.i8), vabd_u8(*v22.i8, *v24.i8));
      v27.i64[1] = v27.i64[0];
      v28 = vcgtq_u16(vabdl_u8(*v23.i8, *v24.i8), v25);
      v29 = vbslq_s8(vandq_s8(vuzp1q_s8(v26, v26), v27), v23, vbslq_s8(vuzp1q_s8(v28, v28), v24, v22));
      v30 = vdupq_lane_s32(*v21.i8, 1);
      v31 = vaddq_s8(v29, vdupq_lane_s32(*v17, 0));
      v32 = vabdq_u16(vaddl_u8(*v31.i8, *v30.i8), vshll_n_u8(*v22.i8, 1uLL));
      v33 = vcgeq_u16(v32, vabdl_u8(*v30.i8, *v22.i8));
      *v23.i8 = vcge_u8(vabd_u8(*v31.i8, *v22.i8), vabd_u8(*v30.i8, *v22.i8));
      v23.i64[1] = v23.i64[0];
      v34 = vcgtq_u16(vabdl_u8(*v31.i8, *v22.i8), v32);
      v35 = vaddq_s8(vbslq_s8(vandq_s8(vuzp1q_s8(v33, v33), v23), v31, vbslq_s8(vuzp1q_s8(v34, v34), v22, v30)), vdupq_lane_s32(*v17, 1));
      v36 = vdupq_laneq_s32(v21, 2);
      v37 = vabdq_u16(vaddl_u8(*v35.i8, *v36.i8), vshll_n_u8(*v30.i8, 1uLL));
      v38 = vcgeq_u16(v37, vabdl_u8(*v36.i8, *v30.i8));
      *v34.i8 = vcge_u8(vabd_u8(*v35.i8, *v30.i8), vabd_u8(*v36.i8, *v30.i8));
      v34.i64[1] = v34.i64[0];
      v39 = vcgtq_u16(vabdl_u8(*v35.i8, *v30.i8), v37);
      v40 = vuzp1q_s8(v39, v39);
      v41 = vaddq_s8(vbslq_s8(vandq_s8(vuzp1q_s8(v38, v38), v34), v35, vbslq_s8(v40, v30, v36)), vdupq_laneq_s32(*v17->i8, 2));
      v42 = vdupq_laneq_s32(v21, 3);
      v43 = vabdq_u16(vaddl_u8(*v41.i8, *v42.i8), vshll_n_u8(*v36.i8, 1uLL));
      v44 = vcgeq_u16(v43, vabdl_u8(*v41.i8, *v36.i8));
      *v44.i8 = vmovn_s16(v44);
      *v40.i8 = vand_s8(vmovn_s16(vcgeq_u16(v43, vabdl_u8(*v42.i8, *v36.i8))), vcge_u8(vabd_u8(*v41.i8, *v36.i8), vabd_u8(*v42.i8, *v36.i8)));
      v31.i32[1] = v35.i32[1];
      v41.i32[1] = vadd_s8(vbslq_s8(vcltzq_s8(vshlq_n_s8(v40, 7uLL)), v41, vbslq_s8(vcltzq_s8(vshlq_n_s8(*&v44, 7uLL)), v42, v36)), vextq_s8(*v17, *v17, 8uLL)).i32[1];
      v31.i64[1] = v41.i64[0];
      *v17->i8 = v31;
      v17 += 2;
      a9 = vextq_s8(v31, 0, 0xCuLL).u64[0];
      a8 = vextq_s8(v21, 0, 0xCuLL).u64[0];
      v20 -= 16;
    }

    while (v20 > 0xF);
  }

  if (v20 >= 4)
  {
    v45 = v19 & 0xFFFFFFFFFFFFFFF0;
    v46 = &a2[v19 & 0xFFFFFFFFFFFFFFF0];
    v47 = &a4[v45];
    while (v17 < a3)
    {
      if (v17 < a2)
      {
        break;
      }

      v50 = v17->i8[0];
      v48 = v17 + 1;
      v49 = v50;
      if (v48 >= a3)
      {
        break;
      }

      if (v48 < a2)
      {
        break;
      }

      v53 = *v48;
      v51 = v48 + 1;
      v52 = v53;
      if (v51 >= a3)
      {
        break;
      }

      if (v51 < a2)
      {
        break;
      }

      v56 = *v51;
      v55 = v51 + 1;
      v54 = v56;
      if (v55 >= a3)
      {
        break;
      }

      if (v55 < a2)
      {
        break;
      }

      if (v46 >= a3)
      {
        break;
      }

      if (v46 < a2)
      {
        break;
      }

      v59 = *v46;
      v57 = v46 + 1;
      v58 = v59;
      if (v57 >= a3)
      {
        break;
      }

      if (v57 < a2)
      {
        break;
      }

      v62 = *v57;
      v60 = v57 + 1;
      v61 = v62;
      if (v60 >= a3)
      {
        break;
      }

      if (v60 < a2)
      {
        break;
      }

      v64 = *v60;
      v63 = v60 + 1;
      result = v64;
      if (v63 >= a3)
      {
        break;
      }

      if (v63 < a2)
      {
        break;
      }

      if (v18 >= a5)
      {
        break;
      }

      if (v18 < a4)
      {
        break;
      }

      v66 = v18->u8[0];
      v65 = &v18->u8[1];
      v123 = v66;
      if (v65 >= a5)
      {
        break;
      }

      if (v65 < a4)
      {
        break;
      }

      v69 = *v65;
      v68 = v65 + 1;
      v67 = v69;
      if (v68 >= a5)
      {
        break;
      }

      if (v68 < a4)
      {
        break;
      }

      v72 = *v68;
      v70 = v68 + 1;
      v71 = v72;
      if (v70 >= a5)
      {
        break;
      }

      if (v70 < a4)
      {
        break;
      }

      if (v47 >= a5)
      {
        break;
      }

      if (v47 < a4)
      {
        break;
      }

      v75 = *v47;
      v74 = v47 + 1;
      v73 = v75;
      if (v74 >= a5)
      {
        break;
      }

      if (v74 < a4)
      {
        break;
      }

      v78 = *v74;
      v76 = v74 + 1;
      v77 = v78;
      if (v76 >= a5)
      {
        break;
      }

      if (v76 < a4)
      {
        break;
      }

      v79 = v76 + 1;
      if (v79 >= a5 || v79 < a4)
      {
        break;
      }

      v121 = v52;
      v122 = v49;
      v120 = v58;
      v80 = *v63;
      v81 = *v70;
      v82 = *(v79 - 1);
      v83 = *v79;
      v84 = v71 - v82;
      v85 = v81 - v83;
      v86 = v61 - v77;
      v87 = result - v82;
      v88 = v80 - v83;
      v118 = result;
      v89 = a2;
      v90 = a5;
      if (v67 - v77 >= 0)
      {
        v91 = v67 - v77;
      }

      else
      {
        v91 = v77 - v67;
      }

      v119 = v20;
      if (v84 >= 0)
      {
        v92 = v71 - v82;
      }

      else
      {
        v92 = v82 - v71;
      }

      if (v85 >= 0)
      {
        v93 = v81 - v83;
      }

      else
      {
        v93 = v83 - v81;
      }

      if (v86 >= 0)
      {
        v94 = v61 - v77;
      }

      else
      {
        v94 = v77 - v61;
      }

      v95 = v61;
      if (v87 >= 0)
      {
        v96 = v87;
      }

      else
      {
        v96 = -v87;
      }

      v97 = a3;
      if (v88 >= 0)
      {
        v98 = v80 - v83;
      }

      else
      {
        v98 = v83 - v80;
      }

      v99 = v67 - v77 + v86;
      if (v99 < 0)
      {
        v99 = -v99;
      }

      v100 = v84 + v87;
      if (v100 < 0)
      {
        v100 = -v100;
      }

      v101 = v85 + v88;
      if (v101 < 0)
      {
        v101 = -v101;
      }

      if (v94 > v99)
      {
        LOBYTE(v67) = v77;
      }

      v102 = v91 > v99 || v91 > v94;
      a5 = v90;
      a2 = v89;
      v103 = v102 ? v67 : v95;
      v104 = v96 <= v100 ? v71 : *(v79 - 1);
      v105 = v92 > v100 || v92 > v96;
      v106 = v105 ? v104 : v118;
      v107 = v98 <= v101 ? *v70 : *v79;
      v108 = v93 > v101 || v93 > v98;
      a3 = v97;
      v109 = v54;
      v110 = v108 ? v107 : *v63;
      result = (v55 - 3);
      if ((v55 - 3) >= a3 || result < a2)
      {
        break;
      }

      v111 = *v55;
      if (v123 - v73 >= 0)
      {
        v112 = v123 - v73;
      }

      else
      {
        v112 = v73 - v123;
      }

      if (v120 - v73 >= 0)
      {
        v113 = v120 - v73;
      }

      else
      {
        v113 = v73 - v120;
      }

      v114 = v123 - v73 + v120 - v73;
      if (v114 < 0)
      {
        v114 = -v114;
      }

      v115 = v113 <= v114 ? v123 : v73;
      v116 = v112 > v114 || v112 > v113;
      v117 = v116 ? v115 : v120;
      *result = v117 + v122;
      if (++result >= a3)
      {
        break;
      }

      if (result < a2)
      {
        break;
      }

      *result = v103 + v121;
      if (++result >= a3)
      {
        break;
      }

      if (result < a2)
      {
        break;
      }

      *result = v106 + v109;
      if (++result >= a3 || result < a2)
      {
        break;
      }

      *result++ = v110 + v111;
      v20 = v119 - 4;
      v46 = v63 + 1;
      v18 = (v70 + 1);
      v47 = v79 + 1;
      v17 = result;
      if (v119 - 4 <= 3)
      {
        return result;
      }
    }

    goto LABEL_147;
  }

  return result;
}

uint64_t png_read_filter_row_avg3_apple(uint64_t result, unint64_t a2, unint64_t a3, unsigned __int8 *a4, unint64_t a5)
{
  v5 = *(result + 19);
  v6 = v5 + 7;
  v7 = (v5 + 7) >> 3;
  v8 = *(result + 8);
  if (*(result + 19))
  {
    v9 = (v5 + 7) >> 3;
    v10 = a2;
    v11 = a4;
    while (v10 < a3 && v11 < a5)
    {
      v12 = *v11++;
      *v10++ += v12 >> 1;
      if (!--v9)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_41;
  }

  v11 = a4;
  v10 = a2;
LABEL_8:
  if (v10 >= a3)
  {
    goto LABEL_41;
  }

  v13 = *v10;
  if ((v10 + 1) >= a3)
  {
    goto LABEL_41;
  }

  if ((v10 + 1) < a2)
  {
    goto LABEL_41;
  }

  if ((v10 + 2) >= a3)
  {
    goto LABEL_41;
  }

  if ((v10 + 2) < a2)
  {
    goto LABEL_41;
  }

  if ((v10 - 3) >= a3)
  {
    goto LABEL_41;
  }

  if ((v10 - 3) < a2)
  {
    goto LABEL_41;
  }

  if ((v10 - 2) >= a3)
  {
    goto LABEL_41;
  }

  if ((v10 - 2) < a2)
  {
    goto LABEL_41;
  }

  v14 = v10 - 1;
  if ((v10 - 1) >= a3)
  {
    goto LABEL_41;
  }

  if (v14 < a2)
  {
    goto LABEL_41;
  }

  if (v11 >= a5)
  {
    goto LABEL_41;
  }

  v15 = v11 + 1;
  v16 = *v11;
  if ((v11 + 1) >= a5)
  {
    goto LABEL_41;
  }

  if (v15 < a4)
  {
    goto LABEL_41;
  }

  v17 = v11 + 2;
  if ((v11 + 2) >= a5 || v17 < a4)
  {
    goto LABEL_41;
  }

  if (v8 != v7)
  {
    v18 = 0;
    v19 = v8 - (v6 >> 3);
    v20 = v10[1];
    v21 = v10[2];
    v22 = *(v10 - 3);
    v23 = *(v10 - 2);
    result = *v14;
    v24 = *v17;
    v25 = *v15;
    while (1)
    {
      v26 = &v10[v18];
      if (&v10[v18] < a2)
      {
        break;
      }

      v27 = &v11[v18 + 3];
      result = v21 + ((result + v24) >> 1);
      v28 = v23 + v25;
      v22 = v13 + ((v22 + v16) >> 1);
      *v26 = v22;
      v29 = v20 + (v28 >> 1);
      v26[1] = v20 + (v28 >> 1);
      v26[2] = result;
      if (v27 >= a5)
      {
        break;
      }

      if (v27 < a4)
      {
        break;
      }

      v30 = &v11[v18 + 4];
      if (v30 >= a5)
      {
        break;
      }

      if (v30 < a4)
      {
        break;
      }

      v31 = &v11[v18 + 5];
      if (v31 >= a5)
      {
        break;
      }

      if (v31 < a4)
      {
        break;
      }

      v32 = v26 + 3;
      if ((v26 + 3) >= a3)
      {
        break;
      }

      if (v32 < a2)
      {
        break;
      }

      v34 = *v32;
      v33 = v26 + 4;
      v13 = v34;
      if ((v26 + 4) >= a3)
      {
        break;
      }

      if (v33 < a2)
      {
        break;
      }

      v35 = v26 + 5;
      if ((v33 + 1) >= a3 || v35 < a2)
      {
        break;
      }

      v22 = v22;
      v23 = v29;
      result = result;
      v16 = *v27;
      v25 = *v30;
      v24 = *v31;
      v20 = *(v35 - 1);
      v18 += 3;
      v21 = *v35;
      if (v18 >= v19)
      {
        return result;
      }
    }

LABEL_41:
    __break(0x5519u);
  }

  return result;
}

uint64_t CGImageSourceCreateWithFile(const void *a1, const void *a2)
{
  v8[128] = *MEMORY[0x1E69E9840];
  IIOInitDebugFlags();
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (v4 == CFStringGetTypeID())
    {
      if (a2)
      {
        v5 = CFGetTypeID(a2);
        if (v5 != CFDictionaryGetTypeID())
        {
          LogError("CGImageSourceCreateWithFile", 4730, "*** ERROR: CGImageSourceCreateWithFile: options parameter is not a CFDictionaryRef - ignoring\n");
          a2 = 0;
        }
      }

      memset(v8, 0, 24);
      IIODictionary::IIODictionary(v8, a2);
      operator new();
    }

    CGImageSourceCreateWithFile_cold_1();
  }

  else
  {
    CGImageSourceCreateWithFile_cold_2();
  }

  v6 = gIIODebugFlags;
  if ((gIIODebugFlags & 0x3000) != 0)
  {
    bzero(v8, 0x400uLL);
    _CFStringGetFileSystemRepresentation();
    v6 = gIIODebugFlags;
    if (gIIODebugFlags >> 14)
    {
      ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageSourceCreateWithFile", 0, v8, -1, a2);
      v6 = gIIODebugFlags;
    }
  }

  if ((v6 & 0x800000000000) != 0)
  {
    ImageIOLog("∆∆∆ ISSUE: %s:%d:  %s\n", "CGImageSourceCreateWithFile", 4760, "could not create CGImageSourceRef");
  }

  return 0;
}

void sub_185ED64DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x186602850](v4, 0x10E1C4080364B91);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void IIOImageSource::IIOImageSource(IIOImageSource *this, const __CFString *a2, IIODictionary *a3)
{
  *this = &unk_1EF4D46B0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 27) = 0;
  IIOImageSource::setup(this, 5);
  if (a3)
  {
    *(this + 104) = IIOImageSource::extractOptions(this, a3);
  }

  v6 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], a2, kCFURLPOSIXPathStyle, 0);
  if (v6)
  {
    *(this + 2) = CGImageReadCreateWithURL(*(this + 1), v6, 1, *(this + 48), *(this + 49));
    CFRelease(v6);
  }
}

void sub_185ED65F0(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 208) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 152) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t png_read_filter_row_paeth_1byte_pixel(uint64_t result, unsigned __int8 *a2, unint64_t a3, unsigned __int8 *a4, unint64_t a5)
{
  if (a4 >= a5 || (v5 = a4 + 1, a4 >= a4 + 1) || a2 >= a3 || (v6 = a2 + 1, a2 >= a2 + 1))
  {
LABEL_23:
    __break(0x5519u);
    return result;
  }

  v7 = &a2[*(result + 8)];
  v8 = *a4;
  v9 = *a2 + v8;
  *a2 = v9;
  if (v6 < v7)
  {
    while (v5 < a5)
    {
      v10 = v5 + 1;
      if (v5 + 1 < v5 || v6 >= a3 || v6 + 1 < v6)
      {
        break;
      }

      v11 = *v5;
      v12 = v11 - v8;
      v13 = v9 - v8;
      v14 = v11 - v8 + v13;
      if (v14 < 0)
      {
        v14 = -v14;
      }

      if (v13 < 0)
      {
        v13 = v8 - v9;
      }

      if (v12 < 0)
      {
        v12 = v8 - v11;
      }

      if (v13 < v12)
      {
        v12 = v13;
        v9 = v11;
      }

      if (v14 >= v12)
      {
        v15 = v9;
      }

      else
      {
        v15 = v8;
      }

      v9 = v15 + *v6;
      *v6++ = v9;
      v5 = v10;
      v8 = v11;
      if (v6 == v7)
      {
        return result;
      }
    }

    goto LABEL_23;
  }

  return result;
}

uint64_t png_handle_bKGD(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 76);
  if ((v4 & 1) == 0)
  {
    png_chunk_error(a1, "missing IHDR");
  }

  if ((v4 & 4) == 0)
  {
    v6 = *(a1 + 431);
    if ((v4 & 2) != 0 || v6 != 3)
    {
      if (a2 && (*(a2 + 8) & 0x20) != 0)
      {
        png_crc_finish(a1, a3);
        v7 = "duplicate";
        goto LABEL_6;
      }

      if ((v6 & 2) != 0)
      {
        v9 = 6;
      }

      else
      {
        v9 = 2;
      }

      if (v6 == 3)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9;
      }

      if (v10 != a3)
      {
        png_crc_finish(a1, a3);
        v7 = "invalid";
        goto LABEL_6;
      }

      v26 = 0;
      v25 = 0;
      v23 = 0;
      v24 = 0;
      png_crc_read(a1, &v25, a3);
      result = png_crc_finish(a1, 0);
      if (result)
      {
        return result;
      }

      v11 = &v23 + 2;
      v12 = &v24;
      v13 = *(a1 + 431);
      if (v13 == 3)
      {
        LOBYTE(v23) = v25;
        if (a2 && *(a2 + 40))
        {
          if (*(a2 + 40) > v25)
          {
            v14 = *(a1 + 400);
            v15 = (v14 + 3 * v25);
            if (v15 < v14 || (v15 + 3) > *(a1 + 408) || v15 > v15 + 3)
            {
              __break(0x5519u);
              return result;
            }

            v16 = 0;
            WORD1(v23) = *v15;
            WORD2(v23) = v15[1];
            v17 = v15[2];
            goto LABEL_44;
          }

          v20 = "invalid index";
          return png_chunk_benign_error(a1, v20);
        }

        v17 = 0;
        v16 = 0;
        HIDWORD(v23) = 0;
      }

      else
      {
        v18 = *(a1 + 432);
        if ((v13 & 2) != 0)
        {
          if (v18 >= 9)
          {
            v22 = BYTE2(v25);
            v21 = v26;
          }

          else
          {
            if (v25 || BYTE2(v25) || v26)
            {
              v20 = "invalid color";
              return png_chunk_benign_error(a1, v20);
            }

            v21 = 0;
            v22 = 0;
          }

          v16 = 0;
          LOBYTE(v23) = 0;
          WORD1(v23) = _byteswap_ushort(v25);
          WORD2(v23) = HIBYTE(v25) | (v22 << 8);
          v17 = HIBYTE(v26) | (v21 << 8);
LABEL_44:
          v11 = &v23 + 6;
          goto LABEL_45;
        }

        if (v18 >= 9)
        {
          v19 = BYTE1(v25);
        }

        else if (v25 || (v19 = BYTE1(v25), BYTE1(v25) >> v18))
        {
          v20 = "invalid gray level";
          return png_chunk_benign_error(a1, v20);
        }

        v12 = &v23 + 1;
        v11 = &v23 + 4;
        LOBYTE(v23) = 0;
        v17 = v19 | (v25 << 8);
        v24 = v17;
        HIWORD(v23) = v17;
        v16 = v17;
      }

LABEL_45:
      *v11 = v17;
      *v12 = v16;
      return png_set_bKGD(a1, a2, &v23);
    }
  }

  png_crc_finish(a1, a3);
  v7 = "out of place";
LABEL_6:

  return png_chunk_benign_error(a1, v7);
}

uint64_t png_set_bKGD(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result && a2)
  {
    if (a3)
    {
      *(a2 + 226) = *a3;
      *(a2 + 234) = *(a3 + 8);
      *(a2 + 8) |= 0x20u;
    }
  }

  return result;
}

uint64_t png_handle_tIME(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 76);
  if ((v4 & 1) == 0)
  {
    png_chunk_error(a1, "missing IHDR");
  }

  if (a2 && (*(a2 + 9) & 2) != 0)
  {
    png_crc_finish(a1, a3);
    v7 = "duplicate";
  }

  else
  {
    if ((v4 & 4) != 0)
    {
      *(a1 + 76) = v4 | 8;
    }

    if (a3 == 7)
    {
      *(v9 + 3) = 0;
      v9[0] = 0;
      v8 = 0;
      png_crc_read(a1, v9, 7u);
      result = png_crc_finish(a1, 0);
      if (!result)
      {
        BYTE6(v8) = BYTE2(v9[1]);
        *(&v8 + 2) = *(v9 + 2);
        LOWORD(v8) = bswap32(LOWORD(v9[0])) >> 16;
        return png_set_tIME(a1, a2, &v8);
      }

      return result;
    }

    png_crc_finish(a1, a3);
    v7 = "invalid";
  }

  return png_chunk_benign_error(a1, v7);
}

uint64_t png_set_tIME(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result && a2 && a3 && (*(result + 77) & 2) == 0)
  {
    if (*(a3 + 2) - 13 >= 0xFFFFFFF4 && *(a3 + 3) - 32 >= 0xFFFFFFE1 && *(a3 + 4) <= 0x17u && *(a3 + 5) <= 0x3Bu && *(a3 + 6) < 0x3Du)
    {
      *(a2 + 184) = *a3;
      *(a2 + 8) |= 0x200u;
    }

    else
    {
      return png_warning(result, "Ignoring invalid time value");
    }
  }

  return result;
}

uint64_t png_read_filter_row_avg(uint64_t result, unsigned __int8 *a2, unint64_t a3, unsigned __int8 *a4, unint64_t a5)
{
  v5 = *(result + 19);
  v6 = v5 + 7;
  v7 = (v5 + 7) >> 3;
  v8 = *(result + 8);
  if (*(result + 19))
  {
    v9 = (v5 + 7) >> 3;
    v10 = a2;
    v11 = a4;
    while (v10 < a3 && v11 < a5)
    {
      v12 = *v11++;
      *v10++ += v12 >> 1;
      if (!--v9)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_18;
  }

  v11 = a4;
  v10 = a2;
LABEL_8:
  if (v8 != v7)
  {
    v13 = v8 - (v6 >> 3);
    v14 = -v7;
    while (v10 < a3)
    {
      if (v10 < a2)
      {
        break;
      }

      if (v11 >= a5)
      {
        break;
      }

      if (v11 < a4)
      {
        break;
      }

      v15 = &v10[v14];
      if (&v10[v14] >= a3 || v15 < a2)
      {
        break;
      }

      v16 = *v11++;
      *v10++ += (*v15 + v16) >> 1;
      if (!--v13)
      {
        return result;
      }
    }

LABEL_18:
    __break(0x5519u);
  }

  return result;
}

uint64_t ASTCTextureImp::createTwiddler(uint64_t this)
{
  if (!*(this + 240))
  {
    operator new();
  }

  return this;
}

void ASTCTextureImp::createTwiddledDataFromLinear(ASTCTextureImp *this, IIOImageReadSession *a2, uint64_t a3)
{
  if (*(this + 58))
  {
    *(this + 10) = 0;
    return;
  }

  ASTCTextureImp::createTwiddler(this);
  v6 = *(this + 30);
  if (v6)
  {
    if (ASTCTwiddler::finalized(v6))
    {
      if (a3)
      {
LABEL_8:
        *(this + 10) = ASTCTwiddler::twiddledData(*(this + 30));
        v7 = ASTCTwiddler::twiddledDataSize(*(this + 30));
        *(this + 18) = v7;
        *(this + 19) = 0;
        *(this + 20) = v7;
        *(this + 58) = 0;
        return;
      }

LABEL_7:
      ASTCTwiddler::finalizeTwiddling(*(this + 30));
      goto LABEL_8;
    }

    if (!*(this + 15))
    {
      v11 = IIOImageReadSession::retainBytePointer(a2, this + 16, 1);
      *(this + 15) = v11;
      if (!v11)
      {
        goto LABEL_19;
      }

      if (IIOImageSource::cf(a2))
      {
        v12 = IIOImageSource::cf(a2);
        *(this + 17) = v12;
        CFRetain(v12);
      }

      if (!*(this + 15))
      {
LABEL_19:
        _cg_jpeg_mem_term("createTwiddledDataFromLinear", 832, "*** Can't access image data\n");
        goto LABEL_26;
      }
    }

    if (!*(this + 14))
    {
      LogError("createTwiddledDataFromLinear", 801, "*** ERROR: _imp._textureBaseOffset is zero - that's wrong (should be the offset to the ASTC data).\n");
      goto LABEL_26;
    }

    Size = IIOImageReadSession::getSize(a2);
    v9 = *(this + 7);
    if (v9 == 8)
    {
      if (*(this + 8) == 8)
      {
        v10 = (*(this + 26) * *(this + 25)) >> 2;
        goto LABEL_24;
      }
    }

    else if (v9 == 4 && *(this + 8) == 4)
    {
      v10 = *(this + 26) * *(this + 25);
LABEL_24:
      v13 = *(this + 14);
      if (v13 + v10 <= Size)
      {
        ASTCTwiddler::copyFromLinearData(*(this + 30), *(this + 15), v13, Size, (16 * *(this + 5)), *(this + 4));
        if (a3)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      LogError("createTwiddledDataFromLinear", 823, "*** Can't access image data [%ld/%ld] (%dx%d)\n");
LABEL_26:
      *(this + 10) = 0;
      *(this + 58) = -50;
      return;
    }

    v10 = 0;
    goto LABEL_24;
  }
}

uint64_t ASTCTwiddler::finalized(ASTCTwiddler *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 64);
  }

  return v1 & 1;
}

const char *ASTCTwiddler::ASTCTwiddlerImpl::copyFromLinearDataImp(ASTCTwiddler::ASTCTwiddlerImpl *this, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (*(this + 1) >> a6 <= 1uLL)
  {
    v11 = 1;
  }

  else
  {
    v11 = *(this + 1) >> a6;
  }

  if (*(this + 2) >> a6 <= 1uLL)
  {
    v12 = 1;
  }

  else
  {
    v12 = *(this + 2) >> a6;
  }

  *gCrashMessage = 0;
  snprintf(gCrashMessage, 0x200uLL, "ASTC-copyFromLinear: %p    offset: %ld    fileSize: %ld    levelRB: %d    dst: %p   (%dx%d)\n[", a2, a3, a4, a5, *(this + 5), v11, v12);
  qword_1ED5688A0 = gCrashMessage;
  [*(this + 7) initializeTextureMemory:*(this + 5)];
  v13 = *(this + 7);
  v14 = *(this + 5);
  memset(v16, 0, 24);
  v16[3] = v11;
  v16[4] = v12;
  v16[5] = 1;
  [v13 copyFromLinearBytes:a2 linearOffset:a3 linearBytesPerRow:a5 linearBytesPerImage:0 toTextureMemory:v14 textureSlice:0 textureLevel:a6 textureRegion:v16];
  qword_1ED5688A0 = 0;
  return ASTCTwiddler::ASTCTwiddlerImpl::finalizeTwiddlingImp(this);
}

ASTCTwiddler::ASTCTwiddlerImpl *ASTCTwiddler::copyFromLinearData(ASTCTwiddler *this, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  result = *(this + 1);
  if (result)
  {
    return ASTCTwiddler::ASTCTwiddlerImpl::copyFromLinearDataImp(result, a2, a3, a4, a5, a6);
  }

  return result;
}

const char *ASTCTwiddler::ASTCTwiddlerImpl::finalizeTwiddlingImp(const char *this)
{
  if ((this[64] & 1) == 0)
  {
    v1 = this;
    if (*(this + 5))
    {
      [*(this + 7) finalizeTextureMemory:?];
      this = ImageIO_make_read_only(*(v1 + 40), *(v1 + 48));
    }

    *(v1 + 64) = 1;
  }

  return this;
}