void sub_2401B4838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (*(v33 - 105) < 0)
  {
    operator delete(*(v33 - 128));
  }

  if (a31 == 1 && a30 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2401B4A4C(uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = MEMORY[0x277D82890] + 104;
  *(a1 + 128) = MEMORY[0x277D82890] + 104;
  v3 = a1 + 16;
  v4 = MEMORY[0x277D82890] + 64;
  *(a1 + 16) = MEMORY[0x277D82890] + 64;
  v5 = a1 + 24;
  v6 = MEMORY[0x277D82818];
  v7 = *(MEMORY[0x277D82818] + 24);
  v8 = *(MEMORY[0x277D82818] + 16);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  *(a1 + 8) = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, (a1 + 24));
  v10 = MEMORY[0x277D82890] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  v11 = v6[5];
  v12 = v6[4];
  *(a1 + 16) = v12;
  *(v3 + *(v12 - 24)) = v11;
  v13 = v6[1];
  *a1 = v13;
  *(a1 + *(v13 - 24)) = v6[6];
  *a1 = v10;
  *(a1 + 128) = v2;
  v14 = MEMORY[0x277D82868] + 16;
  *(a1 + 16) = v4;
  *(a1 + 24) = v14;
  MEMORY[0x245CBB8F0](a1 + 32);
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 24;
  sub_2401B4D94(v5);
  return a1;
}

void sub_2401B4D30(_Unwind_Exception *a1)
{
  if (*(v2 + 111) < 0)
  {
    operator delete(*v4);
  }

  *(v2 + 24) = v3;
  std::locale::~locale((v2 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x245CBB940](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2401B4D94(uint64_t result)
{
  *(result + 88) = 0;
  v1 = result + 64;
  v2 = *(result + 87);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = result + 64;
    v4 = *(result + 87);
    v5 = *(result + 96);
    if ((v5 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = *(result + 64);
  v4 = *(result + 72);
  v5 = *(result + 96);
  if ((v5 & 8) != 0)
  {
LABEL_3:
    *(result + 88) = v3 + v4;
    *(result + 16) = v3;
    *(result + 24) = v3;
    *(result + 32) = v3 + v4;
  }

LABEL_4:
  if ((v5 & 0x10) == 0)
  {
    return result;
  }

  *(result + 88) = v3 + v4;
  if ((v2 & 0x80000000) != 0)
  {
    v2 = *(result + 72);
    v6 = (*(result + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v2 >= v6)
    {
      v1 = *(result + 64);
      *(result + 72) = v6;
LABEL_14:
      *(v1 + v6) = 0;
      v8 = *(result + 87);
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v6 = 22;
    if (v2 > 0x15)
    {
      *(result + 87) = 22;
      goto LABEL_14;
    }
  }

  v7 = result;
  std::string::append((result + 64), v6 - v2, 0);
  result = v7;
  v8 = *(v7 + 87);
  if ((v8 & 0x8000000000000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_15:
  v8 = *(result + 72);
LABEL_16:
  *(result + 40) = v3;
  *(result + 48) = v3;
  *(result + 56) = v3 + v8;
  if ((*(result + 96) & 3) != 0)
  {
    if (v4 >> 31)
    {
      v9 = ((v4 - 0x80000000) * 0x200000005uLL) >> 64;
      v10 = 0x7FFFFFFF * ((v9 + ((v4 - 0x80000000 - v9) >> 1)) >> 30);
      v3 += v10 + 0x7FFFFFFF;
      v4 = v4 - v10 - 0x7FFFFFFF;
      *(result + 48) = v3;
    }

    if (v4)
    {
      *(result + 48) = v3 + v4;
    }
  }

  return result;
}

uint64_t sub_2401B4EDC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void sub_2401B5030(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_2401B5044(uint64_t a1, void ***a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = a2[1];
    v5 = *a2;
    if (v4 == v2)
    {
      a2[1] = v2;
    }

    else
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = *a2;
      a2[1] = v2;
    }

    operator delete(v5);
  }
}

uint64_t sub_2401B50F0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    (*(&off_285225538 + v2))(&v4, a1);
  }

  *(a1 + 24) = -1;
  return a1;
}

void sub_2401B514C(const void **a1)
{
  if (*(a1 + 23) >= 0)
  {
    v1 = *(a1 + 23);
  }

  else
  {
    v1 = a1[1];
  }

  if (v1 + 10 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2401B5738();
  }

  if (v1 + 10 >= 0x17)
  {
    operator new();
  }

  memset(&v3, 0, sizeof(v3));
  *(&v3.__pn_.__r_.__value_.__s + 23) = v1 + 10;
  if (v1)
  {
    if (*(a1 + 23) >= 0)
    {
      v2 = a1;
    }

    else
    {
      v2 = *a1;
    }

    memmove(&v3, v2, v1);
  }

  strcpy(&v3 + v1, "/.disabled");
  v4 = v3;
  std::__fs::filesystem::__status(&v4, 0);
  if (SHIBYTE(v4.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_2401B5288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2401B52A4(std::string *a1, std::string::size_type a2, std::string::size_type a3, void *a4, char a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 23);
  if ((v8 & 0x80u) == 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a2 + 8);
  }

  v23.__pn_.__r_.__value_.__r.__words[0] = v9;
  v23.__pn_.__r_.__value_.__l.__size_ = v8;
  v10 = *(a3 + 23);
  if ((v10 & 0x80u) == 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a3 + 8);
  }

  v23.__pn_.__r_.__value_.__r.__words[2] = v11;
  v24 = v10;
  sub_2401B57E0(&v23, &v25, "/", 1uLL, &__p);
  memset(&v23, 0, sizeof(v23));
  size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  sub_2401B5B30(&v23.__pn_, p_p, (p_p + size));
  std::__fs::filesystem::__status(&v23, 0);
  v14 = v22;
  if (SHIBYTE(v23.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__pn_.__r_.__value_.__l.__data_);
    v15 = v14;
    if (!v14)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v15 = v22;
    if (!v22)
    {
      goto LABEL_21;
    }
  }

  if (v15 != 255)
  {
    *a1 = __p;
    a1[1].__r_.__value_.__s.__data_[0] = 1;
    goto LABEL_32;
  }

LABEL_21:
  if (a5)
  {
    v16 = sub_2401B5DCC(a4, "Resource at '", 13);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &__p;
    }

    else
    {
      v17 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v18 = __p.__r_.__value_.__l.__size_;
    }

    v19 = sub_2401B5DCC(v16, v17, v18);
    sub_2401B5DCC(v19, "' does not exist.", 17);
  }

  a1->__r_.__value_.__s.__data_[0] = 0;
  a1[1].__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_32:
  v20 = *MEMORY[0x277D85DE8];
}

void sub_2401B544C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2401B5490(uint64_t a1@<X0>, std::string::size_type a2@<X1>, void *a3@<X2>, char a4@<W3>, std::string *a5@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v10];
  v12 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:v11];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 resourcePath];
    if (!v14 && sub_2401B6170("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_AppleCV3DModels/library/Essentials/Resource/src/Resource.mm", 170, "resources_path", 0xEuLL, &unk_2401B7432, 0, sub_2401B6A68))
    {
      abort();
    }

    v15 = [v14 UTF8String];
    v16 = strlen(v15);
    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_2401B5738();
    }

    v17 = v16;
    if (v16 >= 0x17)
    {
      operator new();
    }

    v24 = v16;
    if (v16)
    {
      memmove(&__dst, v15, v16);
    }

    *(&__dst + v17) = 0;
    sub_2401B514C(&__dst);
    sub_2401B52A4(a5, &__dst, a2, a3, a4);
    if (v24 < 0)
    {
      operator delete(__dst);
    }
  }

  else
  {
    if (a4)
    {
      v18 = sub_2401B5DCC(a3, "Could not find bundle '", 23);
      v19 = *(a1 + 23);
      if (v19 >= 0)
      {
        v20 = a1;
      }

      else
      {
        v20 = *a1;
      }

      if (v19 >= 0)
      {
        v21 = *(a1 + 23);
      }

      else
      {
        v21 = *(a1 + 8);
      }

      v22 = sub_2401B5DCC(v18, v20, v21);
      sub_2401B5DCC(v22, "'.\n", 3);
    }

    a5->__r_.__value_.__s.__data_[0] = 0;
    a5[1].__r_.__value_.__s.__data_[0] = 0;
  }
}

void sub_2401B5750(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_2401B57AC(exception, a1);
  __cxa_throw(exception, off_278C9DA10, MEMORY[0x277D825F0]);
}

std::logic_error *sub_2401B57AC(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_2401B57E0(uint64_t a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string::size_type a4@<X3>, std::string *a5@<X8>)
{
  v10 = (a2 - a1) >> 4;
  if (v10 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = (a2 - a1) >> 4;
  }

  v12 = (v11 - 1) * a4;
  v13 = a2 - a1;
  if (a2 == a1)
  {
    v14 = 0;
  }

  else
  {
    if ((v13 - 16) >= 0x40)
    {
      v16 = ((v13 - 16) >> 4) + 1;
      v17 = v16 & 3;
      if ((v16 & 3) == 0)
      {
        v17 = 4;
      }

      v18 = v16 - v17;
      v15 = a1 + 16 * v18;
      v19 = (a1 + 40);
      v20 = 0uLL;
      v21 = 0uLL;
      do
      {
        v22 = v19 - 4;
        v23 = vld2q_f64(v22);
        v24 = vld2q_f64(v19);
        v20 = vaddq_s64(v23, v20);
        v21 = vaddq_s64(v24, v21);
        v19 += 8;
        v18 -= 4;
      }

      while (v18);
      v14 = vaddvq_s64(vaddq_s64(v21, v20));
    }

    else
    {
      v14 = 0;
      v15 = a1;
    }

    do
    {
      v14 += *(v15 + 8);
      v15 += 16;
    }

    while (v15 != a2);
  }

  v25 = v14 + v12;
  a5->__r_.__value_.__r.__words[0] = 0;
  a5->__r_.__value_.__l.__size_ = 0;
  a5->__r_.__value_.__r.__words[2] = 0;
  if (v25 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2401B5738();
  }

  if (v25 >= 0x17)
  {
    v26 = v25 | 7;
    if (v26 == 23)
    {
      v27 = 24;
    }

    else
    {
      v27 = v26;
    }

    sub_2401B597C(a5, v27);
  }

  if (v10 >= 1)
  {
    std::string::append(a5, *a1, *(a1 + 8));
    if (v13 != 16)
    {
      for (i = a1 + 16; i != a2; i += 16)
      {
        std::string::append(a5, a3, a4);
        v29 = *i;
        v30 = *(i + 8);
        std::string::append(a5, v29, v30);
      }
    }
  }
}

void sub_2401B5958(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2401B597C(_BYTE *__dst, unint64_t a2)
{
  v3 = __dst[23];
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = 22;
    LOBYTE(v5) = __dst[23];
    v6 = a2 < 0x17;
    if (a2 < 0x17)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (v4 < a2)
    {
      operator new();
    }

    operator new();
  }

  v3 = *(__dst + 1);
  v8 = *(__dst + 2);
  v4 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v5 = HIBYTE(v8);
  v6 = a2 < 0x17;
  if (a2 >= 0x17)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = *__dst;
  if ((v5 & 0x80) == 0)
  {
    v9 = v5 + 1;
LABEL_9:
    memmove(__dst, v7, v9);
    goto LABEL_10;
  }

  v10 = *(__dst + 1);
  v6 = 1;
  v9 = v10 + 1;
  if (v10 != -1)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (v6)
  {
    operator delete(v7);
  }

  __dst[23] = v3 & 0x7F;
}

void sub_2401B5B08(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

std::string *sub_2401B5B30(std::string *this, std::string *a2, std::string *a3)
{
  v4 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v5 = a3 - a2;
  if (v4 < 0)
  {
    if (a3 == a2)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v10 = this->__r_.__value_.__r.__words[2];
    v7 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v9 = this->__r_.__value_.__r.__words[0];
    v6 = v10 >> 63;
    if (this->__r_.__value_.__r.__words[0] > a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (a3 == a2)
    {
      return this;
    }

    LODWORD(v6) = 0;
    v7 = 22;
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    v9 = this;
    if (this > a2)
    {
      goto LABEL_12;
    }
  }

  if ((&v9->__r_.__value_.__l.__data_ + size + 1) > a2)
  {
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_35;
    }

    if (v5 > 0x16)
    {
      operator new();
    }

    v19 = a3 - a2;
    if (a3 != a2)
    {
      memcpy(__dst, a2, v5);
    }

    *(__dst + v5) = 0;
    if ((v19 & 0x80u) == 0)
    {
      v15 = __dst;
    }

    else
    {
      v15 = __dst[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v16 = v19;
    }

    else
    {
      v16 = __dst[1];
    }

    std::string::append(this, v15, v16);
    if (v19 < 0)
    {
      operator delete(__dst[0]);
    }

    return this;
  }

LABEL_12:
  if (v7 - size < v5)
  {
    if (0x7FFFFFFFFFFFFFF7 - v7 >= v5 + size - v7)
    {
      if ((v4 & 0x80000000) != 0)
      {
        v11 = this->__r_.__value_.__r.__words[0];
      }

      operator new();
    }

LABEL_35:
    sub_2401B5738();
  }

  v12 = this;
  if (v6)
  {
    v12 = this->__r_.__value_.__r.__words[0];
  }

  v13 = v12 + size;
  if (a3 != a2)
  {
    memmove(v12 + size, a2, v5);
  }

  v13[v5] = 0;
  v14 = v5 + size;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = v14;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = v14 & 0x7F;
  }

  return this;
}

void sub_2401B5DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2401B5DCC(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x245CBB8B0](v14, a1);
  if (v14[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      v10 = (a1 + *(*a1 - 24));
      std::ios_base::getloc(v10);
      v11 = std::locale::use_facet(&v15, MEMORY[0x277D82680]);
      v9 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v15);
      v6 = v10;
      v10[1].__fmtflags_ = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!sub_2401B5F78(v7, a2, v12, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x245CBB8C0](v14);
  return a1;
}

void sub_2401B5F10(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x245CBB8C0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2401B5EF0);
}

uint64_t sub_2401B5F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_2401B5738();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v19 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v19 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v19 < 0)
      {
        v15 = v14;
        operator delete(__b);
        if (v15 != v12)
        {
          return 0;
        }
      }

      else if (v14 != v12)
      {
        return 0;
      }
    }

    v16 = a4 - a3;
    if (v16 < 1 || (*(*v6 + 96))(v6, a3, v16) == v16)
    {
      *(a5 + 24) = 0;
      return v6;
    }

    return 0;
  }

  return v6;
}

void sub_2401B6154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2401B6170(const char *a1, int a2, const void *a3, size_t a4, const void *a5, size_t a6, void (*a7)(std::string *))
{
  if (a4)
  {
    v11 = "Assert";
  }

  else
  {
    v11 = "Abort";
  }

  if (a4)
  {
    v12 = 6;
  }

  else
  {
    v12 = 5;
  }

  *(&__dst.__r_.__value_.__s + 23) = v12;
  memcpy(&__dst, v11, v12);
  *(&__dst | v12) = 0;
  v13 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __dst.__r_.__value_.__l.__size_;
    v15 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v15 - __dst.__r_.__value_.__l.__size_ < 2)
    {
      if (0x7FFFFFFFFFFFFFF7 - (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) >= __dst.__r_.__value_.__l.__size_ + 2 - v15)
      {
        goto LABEL_12;
      }

      goto LABEL_104;
    }

    p_dst = __dst.__r_.__value_.__r.__words[0];
    *(__dst.__r_.__value_.__r.__words[0] + __dst.__r_.__value_.__l.__size_) = 8250;
    v21 = size + 2;
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) - 21) < 2)
    {
LABEL_12:
      operator new();
    }

    p_dst = &__dst;
    *(&__dst.__r_.__value_.__l.__data_ + SHIBYTE(__dst.__r_.__value_.__r.__words[2])) = 8250;
    v21 = v13 + 2;
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_24:
      *(&__dst.__r_.__value_.__s + 23) = v21 & 0x7F;
      p_dst->__r_.__value_.__s.__data_[v21] = 0;
      v22 = strlen(a1);
      if (v22 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_25;
      }

      goto LABEL_13;
    }
  }

  __dst.__r_.__value_.__l.__size_ = v21;
  p_dst->__r_.__value_.__s.__data_[v21] = 0;
  v22 = strlen(a1);
  if (v22 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_25:
    sub_2401B5738();
  }

LABEL_13:
  v16 = v22;
  if (v22 >= 0x17)
  {
    operator new();
  }

  *(&__p.__r_.__value_.__s + 23) = v22;
  if (v22)
  {
    memcpy(&__p, a1, v22);
    __p.__r_.__value_.__s.__data_[v16] = 0;
    v17 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
LABEL_16:
      p_p = &__p;
      if (v17 == 22)
      {
        goto LABEL_22;
      }

      goto LABEL_30;
    }
  }

  else
  {
    __p.__r_.__value_.__s.__data_[0] = 0;
    v17 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
      goto LABEL_16;
    }
  }

  v17 = __p.__r_.__value_.__l.__size_;
  v19 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v19 == __p.__r_.__value_.__l.__size_)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_2401B5738();
    }

LABEL_22:
    operator new();
  }

  p_p = __p.__r_.__value_.__r.__words[0];
LABEL_30:
  p_p->__r_.__value_.__s.__data_[v17] = 58;
  v23 = v17 + 1;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    __p.__r_.__value_.__l.__size_ = v23;
  }

  else
  {
    *(&__p.__r_.__value_.__s + 23) = v23 & 0x7F;
  }

  p_p->__r_.__value_.__s.__data_[v23] = 0;
  v51 = __p;
  memset(&__p, 0, sizeof(__p));
  std::to_string(&v49, a2);
  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &v49;
  }

  else
  {
    v24 = v49.__r_.__value_.__r.__words[0];
  }

  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v25 = v49.__r_.__value_.__l.__size_;
  }

  v26 = std::string::append(&v51, v24, v25);
  v27 = *&v26->__r_.__value_.__l.__data_;
  v53 = v26->__r_.__value_.__r.__words[2];
  v52 = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (v53 >= 0)
  {
    v28 = &v52;
  }

  else
  {
    v28 = v52;
  }

  if (v53 >= 0)
  {
    v29 = HIBYTE(v53);
  }

  else
  {
    v29 = *(&v52 + 1);
  }

  std::string::append(&__dst, v28, v29);
  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
    if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_47:
      if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_53;
    }
  }

  else if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_47;
  }

  operator delete(v49.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_48:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

LABEL_54:
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!a4)
    {
      goto LABEL_67;
    }

LABEL_55:
    if (a4 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_2401B5738();
    }

    if (a4 >= 0x17)
    {
      operator new();
    }

    *(&v51.__r_.__value_.__s + 23) = a4;
    memmove(&v51, a3, a4);
    v51.__r_.__value_.__s.__data_[a4] = 0;
    v30 = std::string::insert(&v51, 0, " : ", 3uLL);
    v31 = *&v30->__r_.__value_.__l.__data_;
    v53 = v30->__r_.__value_.__r.__words[2];
    v52 = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    if (v53 >= 0)
    {
      v32 = &v52;
    }

    else
    {
      v32 = v52;
    }

    if (v53 >= 0)
    {
      v33 = HIBYTE(v53);
    }

    else
    {
      v33 = *(&v52 + 1);
    }

    std::string::append(&__dst, v32, v33);
    if (SHIBYTE(v53) < 0)
    {
      operator delete(v52);
      if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_67;
      }
    }

    else if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

    operator delete(v51.__r_.__value_.__l.__data_);
    v34 = a6;
    if (!a6)
    {
      goto LABEL_86;
    }

    goto LABEL_68;
  }

LABEL_53:
  operator delete(v51.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_54;
  }

LABEL_49:
  if (a4)
  {
    goto LABEL_55;
  }

LABEL_67:
  v34 = a6;
  if (!a6)
  {
    goto LABEL_86;
  }

LABEL_68:
  if (v34 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_2401B5738();
  }

  if (v34 >= 0x17)
  {
    operator new();
  }

  *(&v51.__r_.__value_.__s + 23) = v34;
  memmove(&v51, a5, v34);
  v51.__r_.__value_.__s.__data_[v34] = 0;
  v35 = std::string::insert(&v51, 0, " : ", 3uLL);
  v36 = *&v35->__r_.__value_.__l.__data_;
  v53 = v35->__r_.__value_.__r.__words[2];
  v52 = v36;
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  if (v53 >= 0)
  {
    v37 = &v52;
  }

  else
  {
    v37 = v52;
  }

  if (v53 >= 0)
  {
    v38 = HIBYTE(v53);
  }

  else
  {
    v38 = *(&v52 + 1);
  }

  std::string::append(&__dst, v37, v38);
  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
    if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_86;
    }
  }

  else if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_86;
  }

  operator delete(v51.__r_.__value_.__l.__data_);
LABEL_86:
  v39 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v39 = __dst.__r_.__value_.__l.__size_;
    v41 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v41 != __dst.__r_.__value_.__l.__size_)
    {
      v40 = __dst.__r_.__value_.__r.__words[0];
      goto LABEL_93;
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) != 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_91;
    }

LABEL_104:
    sub_2401B5738();
  }

  v40 = &__dst;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) == 22)
  {
LABEL_91:
    operator new();
  }

LABEL_93:
  v40->__r_.__value_.__s.__data_[v39] = 10;
  v42 = v39 + 1;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    __dst.__r_.__value_.__l.__size_ = v42;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = v42 & 0x7F;
  }

  v40->__r_.__value_.__s.__data_[v42] = 0;
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v43 = &__dst;
  }

  else
  {
    v43 = __dst.__r_.__value_.__r.__words[0];
  }

  a7(v43);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_2401B6970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 89) < 0)
  {
    operator delete(*(v35 - 112));
  }

  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2401B6A68(const char *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = strlen(a1);
  sub_2401B6B9C(&qword_27E3C87B0, a1, v2);
  if (byte_27E3C87C7 >= 0)
  {
    v3 = &qword_27E3C87B0;
  }

  else
  {
    v3 = qword_27E3C87B0;
  }

  qword_27E3C8660 = v3;
  if ((atomic_load_explicit(&qword_27E3C87A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3C87A8))
  {
    qword_27E3C87A0 = os_log_create("cv3d", &unk_2401B7432);
    __cxa_guard_release(&qword_27E3C87A8);
  }

  v4 = qword_27E3C87A0;
  if (os_log_type_enabled(qword_27E3C87A0, OS_LOG_TYPE_FAULT))
  {
    v7 = 136315138;
    v8 = a1;
    _os_log_impl(&dword_2401B2000, v4, OS_LOG_TYPE_FAULT, "%s", &v7, 0xCu);
  }

  result = fputs(a1, *MEMORY[0x277D85DF8]);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void **sub_2401B6B9C(void **__dst, const void *a2, size_t __len)
{
  LODWORD(v5) = *(__dst + 23);
  if ((v5 & 0x80000000) != 0)
  {
    v7 = __dst[2];
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (__len > v8)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v7 & 0x7FFFFFFFFFFFFFFFLL) >= __len - v8)
      {
        v9 = *__dst;
        if (v8 >= 0x3FFFFFFFFFFFFFF3)
        {
          operator new();
        }

LABEL_8:
        operator new();
      }

LABEL_17:
      sub_2401B5738();
    }

    v5 = HIBYTE(v7);
    v6 = *__dst;
  }

  else
  {
    v6 = __dst;
    if (__len > 0x16)
    {
      if (__len - 0x7FFFFFFFFFFFFFF7 >= 0x800000000000001FLL)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  if (__len)
  {
    memmove(v6, a2, __len);
    LOBYTE(v5) = *(__dst + 23);
  }

  if ((v5 & 0x80) != 0)
  {
    __dst[1] = __len;
  }

  else
  {
    *(__dst + 23) = __len & 0x7F;
  }

  *(v6 + __len) = 0;
  return __dst;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}