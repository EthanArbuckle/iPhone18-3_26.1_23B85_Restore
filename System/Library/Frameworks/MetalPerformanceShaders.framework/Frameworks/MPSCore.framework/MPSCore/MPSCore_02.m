void sub_22E30E320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v40 - 89) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v40 - 89) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(v40 - 112));
  if ((a40 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a35);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a28);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_15:
  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void sub_22E30E944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E30E98C(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v29);
  v8 = std::string::append(&v29, " : FUNCTION(");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v12 = *(a1 + 6);
  v11 = a1 + 48;
  v10 = v12;
  v13 = v11[23];
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = *(v11 + 23);
  }

  else
  {
    v15 = *(v11 + 1);
  }

  v16 = std::string::append(&v30, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v31, a3);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v32, "), ");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  (*(**(**a2 + 32) + 64))(__p);
  if ((v28 & 0x80u) == 0)
  {
    v22 = __p;
  }

  else
  {
    v22 = __p[0];
  }

  if ((v28 & 0x80u) == 0)
  {
    v23 = v28;
  }

  else
  {
    v23 = __p[1];
  }

  v24 = std::string::append(&v33, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v34, ";\n");
  *a4 = *v26;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v33.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v32.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(v31.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_27:
    operator delete(v29.__r_.__value_.__l.__data_);
    return;
  }

LABEL_26:
  operator delete(v30.__r_.__value_.__l.__data_);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }
}

void sub_22E30EC10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v40 - 89) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v40 - 89) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(v40 - 112));
  if ((a40 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a35);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a28);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_15:
  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void sub_22E30F23C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E30F284(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v29);
  v8 = std::string::append(&v29, " : FUNCTION(");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v12 = *(a1 + 6);
  v11 = a1 + 48;
  v10 = v12;
  v13 = v11[23];
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = *(v11 + 23);
  }

  else
  {
    v15 = *(v11 + 1);
  }

  v16 = std::string::append(&v30, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v31, a3);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v32, "), ");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  (*(**(**a2 + 32) + 64))(__p);
  if ((v28 & 0x80u) == 0)
  {
    v22 = __p;
  }

  else
  {
    v22 = __p[0];
  }

  if ((v28 & 0x80u) == 0)
  {
    v23 = v28;
  }

  else
  {
    v23 = __p[1];
  }

  v24 = std::string::append(&v33, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v34, ";\n");
  *a4 = *v26;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v33.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v32.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(v31.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_27:
    operator delete(v29.__r_.__value_.__l.__data_);
    return;
  }

LABEL_26:
  operator delete(v30.__r_.__value_.__l.__data_);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }
}

void sub_22E30F508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v40 - 89) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v40 - 89) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(v40 - 112));
  if ((a40 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a35);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a28);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_15:
  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void sub_22E30FB30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E30FB78(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v29);
  v8 = std::string::append(&v29, " : FUNCTION(");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v12 = *(a1 + 6);
  v11 = a1 + 48;
  v10 = v12;
  v13 = v11[23];
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = *(v11 + 23);
  }

  else
  {
    v15 = *(v11 + 1);
  }

  v16 = std::string::append(&v30, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v31, a3);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v32, "), ");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  (*(**(**a2 + 32) + 64))(__p);
  if ((v28 & 0x80u) == 0)
  {
    v22 = __p;
  }

  else
  {
    v22 = __p[0];
  }

  if ((v28 & 0x80u) == 0)
  {
    v23 = v28;
  }

  else
  {
    v23 = __p[1];
  }

  v24 = std::string::append(&v33, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v34, ";\n");
  *a4 = *v26;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v33.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v32.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(v31.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_27:
    operator delete(v29.__r_.__value_.__l.__data_);
    return;
  }

LABEL_26:
  operator delete(v30.__r_.__value_.__l.__data_);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }
}

void sub_22E30FDFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v40 - 89) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v40 - 89) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(v40 - 112));
  if ((a40 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a35);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a28);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_15:
  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void sub_22E310420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E310468(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v29);
  v8 = std::string::append(&v29, " : FUNCTION(");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v12 = *(a1 + 6);
  v11 = a1 + 48;
  v10 = v12;
  v13 = v11[23];
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = *(v11 + 23);
  }

  else
  {
    v15 = *(v11 + 1);
  }

  v16 = std::string::append(&v30, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v31, a3);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v32, "), ");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  (*(**(**a2 + 32) + 64))(__p);
  if ((v28 & 0x80u) == 0)
  {
    v22 = __p;
  }

  else
  {
    v22 = __p[0];
  }

  if ((v28 & 0x80u) == 0)
  {
    v23 = v28;
  }

  else
  {
    v23 = __p[1];
  }

  v24 = std::string::append(&v33, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v34, ";\n");
  *a4 = *v26;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v33.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v32.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(v31.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_27:
    operator delete(v29.__r_.__value_.__l.__data_);
    return;
  }

LABEL_26:
  operator delete(v30.__r_.__value_.__l.__data_);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }
}

void sub_22E3106EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v40 - 89) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v40 - 89) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(v40 - 112));
  if ((a40 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a35);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a28);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_15:
  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void sub_22E310D08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E310D50(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v29);
  v8 = std::string::append(&v29, " : FUNCTION(");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v12 = *(a1 + 6);
  v11 = a1 + 48;
  v10 = v12;
  v13 = v11[23];
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = *(v11 + 23);
  }

  else
  {
    v15 = *(v11 + 1);
  }

  v16 = std::string::append(&v30, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v31, a3);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v32, "), ");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  (*(**(**a2 + 32) + 64))(__p);
  if ((v28 & 0x80u) == 0)
  {
    v22 = __p;
  }

  else
  {
    v22 = __p[0];
  }

  if ((v28 & 0x80u) == 0)
  {
    v23 = v28;
  }

  else
  {
    v23 = __p[1];
  }

  v24 = std::string::append(&v33, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v34, ";\n");
  *a4 = *v26;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v33.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v32.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(v31.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_27:
    operator delete(v29.__r_.__value_.__l.__data_);
    return;
  }

LABEL_26:
  operator delete(v30.__r_.__value_.__l.__data_);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }
}

void sub_22E310FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v40 - 89) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v40 - 89) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(v40 - 112));
  if ((a40 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a35);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a28);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_15:
  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void sub_22E3115FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E311644(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v29);
  v8 = std::string::append(&v29, " : FUNCTION(");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v12 = *(a1 + 6);
  v11 = a1 + 48;
  v10 = v12;
  v13 = v11[23];
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = *(v11 + 23);
  }

  else
  {
    v15 = *(v11 + 1);
  }

  v16 = std::string::append(&v30, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v31, a3);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v32, "), ");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  (*(**(**a2 + 32) + 64))(__p);
  if ((v28 & 0x80u) == 0)
  {
    v22 = __p;
  }

  else
  {
    v22 = __p[0];
  }

  if ((v28 & 0x80u) == 0)
  {
    v23 = v28;
  }

  else
  {
    v23 = __p[1];
  }

  v24 = std::string::append(&v33, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v34, ";\n");
  *a4 = *v26;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v33.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v32.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(v31.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_27:
    operator delete(v29.__r_.__value_.__l.__data_);
    return;
  }

LABEL_26:
  operator delete(v30.__r_.__value_.__l.__data_);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }
}

void sub_22E3118C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v40 - 89) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v40 - 89) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(v40 - 112));
  if ((a40 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a35);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a28);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_15:
  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void sub_22E311EF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E311F3C(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v29);
  v8 = std::string::append(&v29, " : FUNCTION(");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v12 = *(a1 + 6);
  v11 = a1 + 48;
  v10 = v12;
  v13 = v11[23];
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = *(v11 + 23);
  }

  else
  {
    v15 = *(v11 + 1);
  }

  v16 = std::string::append(&v30, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v31, a3);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v32, "), ");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  (*(**(**a2 + 32) + 64))(__p);
  if ((v28 & 0x80u) == 0)
  {
    v22 = __p;
  }

  else
  {
    v22 = __p[0];
  }

  if ((v28 & 0x80u) == 0)
  {
    v23 = v28;
  }

  else
  {
    v23 = __p[1];
  }

  v24 = std::string::append(&v33, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v34, ";\n");
  *a4 = *v26;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v33.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v32.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(v31.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_27:
    operator delete(v29.__r_.__value_.__l.__data_);
    return;
  }

LABEL_26:
  operator delete(v30.__r_.__value_.__l.__data_);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }
}

void sub_22E3121C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v40 - 89) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v40 - 89) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(v40 - 112));
  if ((a40 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a35);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a28);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_15:
  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void sub_22E3127EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E312834(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v29);
  v8 = std::string::append(&v29, " : FUNCTION(");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v12 = *(a1 + 6);
  v11 = a1 + 48;
  v10 = v12;
  v13 = v11[23];
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = *(v11 + 23);
  }

  else
  {
    v15 = *(v11 + 1);
  }

  v16 = std::string::append(&v30, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v31, a3);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v32, "), ");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  (*(**(**a2 + 32) + 64))(__p);
  if ((v28 & 0x80u) == 0)
  {
    v22 = __p;
  }

  else
  {
    v22 = __p[0];
  }

  if ((v28 & 0x80u) == 0)
  {
    v23 = v28;
  }

  else
  {
    v23 = __p[1];
  }

  v24 = std::string::append(&v33, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v34, ";\n");
  *a4 = *v26;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v33.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v32.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(v31.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_27:
    operator delete(v29.__r_.__value_.__l.__data_);
    return;
  }

LABEL_26:
  operator delete(v30.__r_.__value_.__l.__data_);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }
}

void sub_22E312AB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v40 - 89) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v40 - 89) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(v40 - 112));
  if ((a40 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a35);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a28);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_15:
  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void sub_22E3130E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E31312C(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v29);
  v8 = std::string::append(&v29, " : FUNCTION(");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v12 = *(a1 + 6);
  v11 = a1 + 48;
  v10 = v12;
  v13 = v11[23];
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = *(v11 + 23);
  }

  else
  {
    v15 = *(v11 + 1);
  }

  v16 = std::string::append(&v30, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v31, a3);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v32, "), ");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  (*(**(**a2 + 32) + 64))(__p);
  if ((v28 & 0x80u) == 0)
  {
    v22 = __p;
  }

  else
  {
    v22 = __p[0];
  }

  if ((v28 & 0x80u) == 0)
  {
    v23 = v28;
  }

  else
  {
    v23 = __p[1];
  }

  v24 = std::string::append(&v33, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v34, ";\n");
  *a4 = *v26;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v33.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v32.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(v31.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_27:
    operator delete(v29.__r_.__value_.__l.__data_);
    return;
  }

LABEL_26:
  operator delete(v30.__r_.__value_.__l.__data_);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }
}

void sub_22E3133B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v40 - 89) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v40 - 89) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(v40 - 112));
  if ((a40 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a35);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a28);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_15:
  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void sub_22E3139DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E313A24(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v29);
  v8 = std::string::append(&v29, " : FUNCTION(");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v12 = *(a1 + 6);
  v11 = a1 + 48;
  v10 = v12;
  v13 = v11[23];
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = *(v11 + 23);
  }

  else
  {
    v15 = *(v11 + 1);
  }

  v16 = std::string::append(&v30, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v31, a3);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v32, "), ");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  (*(**(**a2 + 32) + 64))(__p);
  if ((v28 & 0x80u) == 0)
  {
    v22 = __p;
  }

  else
  {
    v22 = __p[0];
  }

  if ((v28 & 0x80u) == 0)
  {
    v23 = v28;
  }

  else
  {
    v23 = __p[1];
  }

  v24 = std::string::append(&v33, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v34, ";\n");
  *a4 = *v26;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v33.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v32.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(v31.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_27:
    operator delete(v29.__r_.__value_.__l.__data_);
    return;
  }

LABEL_26:
  operator delete(v30.__r_.__value_.__l.__data_);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }
}

void sub_22E313CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v40 - 89) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v40 - 89) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(v40 - 112));
  if ((a40 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a35);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a28);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_15:
  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void sub_22E3142D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E314320(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v29);
  v8 = std::string::append(&v29, " : FUNCTION(");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v12 = *(a1 + 6);
  v11 = a1 + 48;
  v10 = v12;
  v13 = v11[23];
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = *(v11 + 23);
  }

  else
  {
    v15 = *(v11 + 1);
  }

  v16 = std::string::append(&v30, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v31, a3);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v32, "), ");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  (*(**(**a2 + 32) + 64))(__p);
  if ((v28 & 0x80u) == 0)
  {
    v22 = __p;
  }

  else
  {
    v22 = __p[0];
  }

  if ((v28 & 0x80u) == 0)
  {
    v23 = v28;
  }

  else
  {
    v23 = __p[1];
  }

  v24 = std::string::append(&v33, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v34, ";\n");
  *a4 = *v26;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v33.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v32.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(v31.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_27:
    operator delete(v29.__r_.__value_.__l.__data_);
    return;
  }

LABEL_26:
  operator delete(v30.__r_.__value_.__l.__data_);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }
}

void sub_22E3145A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v40 - 89) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v40 - 89) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(v40 - 112));
  if ((a40 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a35);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a28);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_15:
  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void sub_22E314BD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E314C1C(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v29);
  v8 = std::string::append(&v29, " : FUNCTION(");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v12 = *(a1 + 6);
  v11 = a1 + 48;
  v10 = v12;
  v13 = v11[23];
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = *(v11 + 23);
  }

  else
  {
    v15 = *(v11 + 1);
  }

  v16 = std::string::append(&v30, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v31, a3);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v32, "), ");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  (*(**(**a2 + 32) + 64))(__p);
  if ((v28 & 0x80u) == 0)
  {
    v22 = __p;
  }

  else
  {
    v22 = __p[0];
  }

  if ((v28 & 0x80u) == 0)
  {
    v23 = v28;
  }

  else
  {
    v23 = __p[1];
  }

  v24 = std::string::append(&v33, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v34, ";\n");
  *a4 = *v26;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v33.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v32.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(v31.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_27:
    operator delete(v29.__r_.__value_.__l.__data_);
    return;
  }

LABEL_26:
  operator delete(v30.__r_.__value_.__l.__data_);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }
}

void sub_22E314EA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v40 - 89) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v40 - 89) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(v40 - 112));
  if ((a40 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a35);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a28);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_15:
  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void sub_22E315138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E315188(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v29);
  v8 = std::string::append(&v29, " : FUNCTION(");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v12 = *(a1 + 6);
  v11 = a1 + 48;
  v10 = v12;
  v13 = v11[23];
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = *(v11 + 23);
  }

  else
  {
    v15 = *(v11 + 1);
  }

  v16 = std::string::append(&v30, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v31, a3);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v32, "), ");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  (*(**(**a2 + 32) + 64))(__p);
  if ((v28 & 0x80u) == 0)
  {
    v22 = __p;
  }

  else
  {
    v22 = __p[0];
  }

  if ((v28 & 0x80u) == 0)
  {
    v23 = v28;
  }

  else
  {
    v23 = __p[1];
  }

  v24 = std::string::append(&v33, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v34, ";\n");
  *a4 = *v26;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v33.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v32.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(v31.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_27:
    operator delete(v29.__r_.__value_.__l.__data_);
    return;
  }

LABEL_26:
  operator delete(v30.__r_.__value_.__l.__data_);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }
}

void sub_22E31540C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v40 - 89) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v40 - 89) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(v40 - 112));
  if ((a40 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a35);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a28);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_15:
  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void sub_22E315660(_Unwind_Exception *a1)
{
  MEMORY[0x2318E5730](v2, 0x1020C4039750FA9);
  MPSDAGKernelOp::~MPSDAGKernelOp(v1);
  _Unwind_Resume(a1);
}

void sub_22E31568C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E3156BC(BaseOperation *this)
{
  *this = &unk_2842191F8;
  v2 = *(this + 12);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
    v3 = this;
  }

  else
  {
    v3 = this;
  }

  BaseOperation::~BaseOperation(v3);
}

void sub_22E3159CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_22E3156BC(v14);
    _Unwind_Resume(a1);
  }

  sub_22E3156BC(v14);
  _Unwind_Resume(a1);
}

void sub_22E315A04(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v29);
  v8 = std::string::append(&v29, " : FUNCTION(");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v12 = *(a1 + 6);
  v11 = a1 + 48;
  v10 = v12;
  v13 = v11[23];
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = *(v11 + 23);
  }

  else
  {
    v15 = *(v11 + 1);
  }

  v16 = std::string::append(&v30, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v31, a3);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v32, "), ");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  (*(**(**a2 + 32) + 64))(__p);
  if ((v28 & 0x80u) == 0)
  {
    v22 = __p;
  }

  else
  {
    v22 = __p[0];
  }

  if ((v28 & 0x80u) == 0)
  {
    v23 = v28;
  }

  else
  {
    v23 = __p[1];
  }

  v24 = std::string::append(&v33, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v34, ";\n");
  *a4 = *v26;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v33.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v32.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(v31.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_27:
    operator delete(v29.__r_.__value_.__l.__data_);
    return;
  }

LABEL_26:
  operator delete(v30.__r_.__value_.__l.__data_);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }
}

void sub_22E315C88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v40 - 89) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v40 - 89) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(v40 - 112));
  if ((a40 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a35);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a28);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_15:
  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void sub_22E315D9C(const std::string::value_type *a1@<X0>, unint64_t a2@<X2>, std::string *a3@<X8>)
{
  (*(*a1 + 64))(&v24);
  v6 = std::string::append(&v24, " : FUNCTION(");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v10 = *(a1 + 6);
  v9 = a1 + 48;
  v8 = v10;
  v11 = v9[23];
  if (v11 >= 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (v11 >= 0)
  {
    v13 = *(v9 + 23);
  }

  else
  {
    v13 = *(v9 + 1);
  }

  v14 = std::string::append(&v25, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v26, "), NODE(Node_");
  v17 = *&v16->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, a2);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v20 = std::string::append(&v27, p_p, size);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = std::string::append(&v28, ");\n");
  *a3 = *v22;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(v27.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v26.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_25:
    operator delete(v24.__r_.__value_.__l.__data_);
    return;
  }

LABEL_24:
  operator delete(v25.__r_.__value_.__l.__data_);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_25;
  }
}

void sub_22E315FA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v33 - 73) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v33 - 73) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(*(v33 - 96));
  if ((a33 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a28);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_13:
  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void sub_22E3161EC(_Unwind_Exception *a1)
{
  sub_22E3156BC(v2);
  MEMORY[0x2318E5730](v2, v1);
  _Unwind_Resume(a1);
}

void sub_22E316218(_Unwind_Exception *a1)
{
  sub_22E3156BC(v1);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E31624C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v25);
  v8 = std::string::append(&v25, " : FUNCTION(");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  (*(*a1 + 48))(v23, a1, a3);
  if ((v24 & 0x80u) == 0)
  {
    v10 = v23;
  }

  else
  {
    v10 = v23[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v11 = v24;
  }

  else
  {
    v11 = v23[1];
  }

  v12 = std::string::append(&v26, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v27, "), ");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  (*(**(**a2 + 32) + 64))(__p);
  if ((v22 & 0x80u) == 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v17 = v22;
  }

  else
  {
    v17 = __p[1];
  }

  v18 = std::string::append(&v28, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v29, ";\n");
  *a4 = *v20;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
    if ((v22 & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }
  }

  else if ((v22 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v28.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v27.__r_.__value_.__l.__data_);
  if ((v24 & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(v23[0]);
  if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_27:
    operator delete(v25.__r_.__value_.__l.__data_);
    return;
  }

LABEL_26:
  operator delete(v26.__r_.__value_.__l.__data_);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }
}

void sub_22E3164D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 73) < 0)
  {
    operator delete(*(v40 - 96));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v40 - 105) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v40 - 105) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(v40 - 128));
  if ((a40 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a35);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a16);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_15:
  operator delete(a22);
  _Unwind_Resume(exception_object);
}

void sub_22E3165E8(uint64_t a1@<X0>, unint64_t a2@<X2>, std::string *a3@<X8>)
{
  (*(*a1 + 64))(&v22);
  v6 = std::string::append(&v22, " : FUNCTION(");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  (*(*a1 + 48))(__p, a1, 0);
  if ((v21 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v9 = v21;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = std::string::append(&v23, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v24, "), NODE(Node_");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v19, a2);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v19;
  }

  else
  {
    v14 = v19.__r_.__value_.__r.__words[0];
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v19.__r_.__value_.__l.__size_;
  }

  v16 = std::string::append(&v25, v14, size);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v26, ");\n");
  *a3 = *v18;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }
  }

  else if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v19.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v25.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v24.__r_.__value_.__l.__data_);
  if ((v21 & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(__p[0]);
  if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_27:
    operator delete(v22.__r_.__value_.__l.__data_);
    return;
  }

LABEL_26:
  operator delete(v23.__r_.__value_.__l.__data_);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }
}

void sub_22E316844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v40 - 89) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v40 - 89) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(v40 - 112));
  if ((a40 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a35);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a16);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_15:
  operator delete(a22);
  _Unwind_Resume(exception_object);
}

void sub_22E316958(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  memset(&v38, 0, sizeof(v38));
  std::string::reserve(&v38, 0x28uLL);
  std::to_string(&v36, *(a1 + 112));
  v6 = std::string::append(&v36, "_");
  v7 = *&v6->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(&v38, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v36.__r_.__value_.__l.__data_);
LABEL_9:
  std::to_string(&v36, *(a1 + 116));
  v10 = std::string::append(&v36, "_");
  v11 = *&v10->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &__p;
  }

  else
  {
    v12 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(&v38, v12, v13);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }
  }

  else if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

  operator delete(v36.__r_.__value_.__l.__data_);
LABEL_17:
  std::to_string(&v36, *(a1 + 120));
  v14 = std::string::append(&v36, "_");
  v15 = *&v14->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &__p;
  }

  else
  {
    v16 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(&v38, v16, v17);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }
  }

  else if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

  operator delete(v36.__r_.__value_.__l.__data_);
LABEL_25:
  std::to_string(&v36, *(a1 + 124));
  v18 = std::string::append(&v36, "_");
  v19 = *&v18->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &__p;
  }

  else
  {
    v20 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(&v38, v20, v21);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }
  }

  else if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

  operator delete(v36.__r_.__value_.__l.__data_);
LABEL_33:
  v22 = *(a1 + 71);
  if (v22 >= 0)
  {
    v23 = *(a1 + 71);
  }

  else
  {
    v23 = *(a1 + 56);
  }

  if (v23 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_22E33DEAC();
  }

  if (v23 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v36, 0, sizeof(v36));
  *(&v36.__r_.__value_.__s + 23) = v23 + 1;
  if (v23)
  {
    if ((v22 & 0x80u) == 0)
    {
      v24 = (a1 + 48);
    }

    else
    {
      v24 = *(a1 + 48);
    }

    memmove(&v36, v24, v23);
  }

  *(&v36.__r_.__value_.__l.__data_ + v23) = 95;
  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &v38;
  }

  else
  {
    v25 = v38.__r_.__value_.__r.__words[0];
  }

  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v26 = v38.__r_.__value_.__l.__size_;
  }

  v27 = std::string::append(&v36, v25, v26);
  __p = *v27;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (a2)
    {
      goto LABEL_52;
    }

LABEL_67:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      *a3 = __p;
      goto LABEL_80;
    }

    v35 = __p.__r_.__value_.__r.__words[0];
    sub_22E3404E0(a3, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    goto LABEL_79;
  }

  operator delete(v36.__r_.__value_.__l.__data_);
  if (!a2)
  {
    goto LABEL_67;
  }

LABEL_52:
  v28 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v29 = __p.__r_.__value_.__l.__size_;
  }

  v30 = strlen(a2);
  v31 = v29 + v30;
  if (v29 + v30 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_22E33DEAC();
  }

  v32 = v30;
  if (v31 > 0x16)
  {
    operator new();
  }

  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 23) = v31;
  if (v29)
  {
    if (v28 >= 0)
    {
      v33 = &__p;
    }

    else
    {
      v33 = __p.__r_.__value_.__r.__words[0];
    }

    memmove(a3, v33, v29);
  }

  v34 = (a3 + v29);
  if (v32)
  {
    memmove(v34, a2, v32);
  }

  *(v34 + v32) = 0;
  if (v28 < 0)
  {
    v35 = __p.__r_.__value_.__r.__words[0];
LABEL_79:
    operator delete(v35);
  }

LABEL_80:
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }
}

void sub_22E316DE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  operator delete(v27);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_22E316E54(uint64_t a1)
{
  v2 = objc_opt_new();
  objc_msgSend_setConstantValue_type_atIndex_(v2, v3, a1 + 112, 32, 8);
  return v2;
}

void sub_22E317004(_Unwind_Exception *a1)
{
  sub_22E3156BC(v2);
  MEMORY[0x2318E5730](v2, v1);
  _Unwind_Resume(a1);
}

void sub_22E317030(_Unwind_Exception *a1)
{
  sub_22E3156BC(v1);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E317064(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v25);
  v8 = std::string::append(&v25, " : FUNCTION(");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  (*(*a1 + 48))(v23, a1, a3);
  if ((v24 & 0x80u) == 0)
  {
    v10 = v23;
  }

  else
  {
    v10 = v23[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v11 = v24;
  }

  else
  {
    v11 = v23[1];
  }

  v12 = std::string::append(&v26, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v27, "), ");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  (*(**(**a2 + 32) + 64))(__p);
  if ((v22 & 0x80u) == 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v17 = v22;
  }

  else
  {
    v17 = __p[1];
  }

  v18 = std::string::append(&v28, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v29, ";\n");
  *a4 = *v20;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
    if ((v22 & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }
  }

  else if ((v22 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v28.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v27.__r_.__value_.__l.__data_);
  if ((v24 & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(v23[0]);
  if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_27:
    operator delete(v25.__r_.__value_.__l.__data_);
    return;
  }

LABEL_26:
  operator delete(v26.__r_.__value_.__l.__data_);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }
}

void sub_22E3172EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 73) < 0)
  {
    operator delete(*(v40 - 96));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v40 - 105) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v40 - 105) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(v40 - 128));
  if ((a40 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a35);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a16);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_15:
  operator delete(a22);
  _Unwind_Resume(exception_object);
}

void sub_22E317400(uint64_t a1@<X0>, unint64_t a2@<X2>, std::string *a3@<X8>)
{
  (*(*a1 + 64))(&v22);
  v6 = std::string::append(&v22, " : FUNCTION(");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  (*(*a1 + 48))(__p, a1, 0);
  if ((v21 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v9 = v21;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = std::string::append(&v23, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v24, "), NODE(Node_");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v19, a2);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v19;
  }

  else
  {
    v14 = v19.__r_.__value_.__r.__words[0];
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v19.__r_.__value_.__l.__size_;
  }

  v16 = std::string::append(&v25, v14, size);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v26, ");\n");
  *a3 = *v18;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }
  }

  else if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v19.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v25.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v24.__r_.__value_.__l.__data_);
  if ((v21 & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(__p[0]);
  if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_27:
    operator delete(v22.__r_.__value_.__l.__data_);
    return;
  }

LABEL_26:
  operator delete(v23.__r_.__value_.__l.__data_);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }
}

void sub_22E31765C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v40 - 89) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v40 - 89) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(v40 - 112));
  if ((a40 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a35);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a16);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_15:
  operator delete(a22);
  _Unwind_Resume(exception_object);
}

void sub_22E317770(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  std::to_string(&v31, *(a1 + 104));
  v6 = std::string::append(&v31, "_");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = *(a1 + 108);
  if (v8 < 0)
  {
    std::to_string(&v29, -v8);
    v9 = std::string::insert(&v29, 0, "minus_");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
  }

  else
  {
    std::to_string(&v30, *(a1 + 108));
  }

  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v30;
  }

  else
  {
    v11 = v30.__r_.__value_.__r.__words[0];
  }

  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v30.__r_.__value_.__l.__size_;
  }

  v13 = std::string::append(&v32, v11, size);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v34 = v13->__r_.__value_.__r.__words[2];
  v33 = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_15:
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_55:
    operator delete(v32.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_56;
  }

  operator delete(v29.__r_.__value_.__l.__data_);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_55;
  }

LABEL_16:
  if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

LABEL_56:
  operator delete(v31.__r_.__value_.__l.__data_);
LABEL_17:
  v15 = *(a1 + 71);
  if (v15 >= 0)
  {
    v16 = *(a1 + 71);
  }

  else
  {
    v16 = *(a1 + 56);
  }

  if (v16 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_22E33DEAC();
  }

  if (v16 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v31, 0, sizeof(v31));
  *(&v31.__r_.__value_.__s + 23) = v16 + 1;
  if (v16)
  {
    if ((v15 & 0x80u) == 0)
    {
      v17 = (a1 + 48);
    }

    else
    {
      v17 = *(a1 + 48);
    }

    memmove(&v31, v17, v16);
  }

  *(&v31.__r_.__value_.__l.__data_ + v16) = 95;
  if (v34 >= 0)
  {
    v18 = &v33;
  }

  else
  {
    v18 = v33;
  }

  if (v34 >= 0)
  {
    v19 = HIBYTE(v34);
  }

  else
  {
    v19 = *(&v33 + 1);
  }

  v20 = std::string::append(&v31, v18, v19);
  v32 = *v20;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (a2)
    {
      goto LABEL_36;
    }

LABEL_43:
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      *a3 = v32;
      goto LABEL_59;
    }

    v28 = v32.__r_.__value_.__r.__words[0];
    sub_22E3404E0(a3, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
    goto LABEL_58;
  }

  operator delete(v31.__r_.__value_.__l.__data_);
  if (!a2)
  {
    goto LABEL_43;
  }

LABEL_36:
  v21 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v22 = v32.__r_.__value_.__l.__size_;
  }

  v23 = strlen(a2);
  v24 = v22 + v23;
  if (v22 + v23 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_22E33DEAC();
  }

  v25 = v23;
  if (v24 > 0x16)
  {
    operator new();
  }

  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 23) = v24;
  if (v22)
  {
    if (v21 >= 0)
    {
      v26 = &v32;
    }

    else
    {
      v26 = v32.__r_.__value_.__r.__words[0];
    }

    memmove(a3, v26, v22);
  }

  v27 = (a3 + v22);
  if (v25)
  {
    memmove(v27, a2, v25);
  }

  *(v27 + v25) = 0;
  if (v21 < 0)
  {
    v28 = v32.__r_.__value_.__r.__words[0];
LABEL_58:
    operator delete(v28);
  }

LABEL_59:
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
  }
}

void sub_22E317AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  operator delete(v33);
  if (*(v34 - 73) < 0)
  {
    operator delete(*(v34 - 96));
  }

  _Unwind_Resume(a1);
}

id sub_22E317BA4(uint64_t a1)
{
  v2 = objc_opt_new();
  objc_msgSend_setConstantValue_type_atIndex_(v2, v3, a1 + 104, 29, 5);
  objc_msgSend_setConstantValue_type_atIndex_(v2, v4, a1 + 108, 29, 6);
  return v2;
}

void sub_22E317D64(_Unwind_Exception *a1)
{
  sub_22E3156BC(v2);
  MEMORY[0x2318E5730](v2, v1);
  _Unwind_Resume(a1);
}

void sub_22E317D90(_Unwind_Exception *a1)
{
  sub_22E3156BC(v1);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E317DC4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v25);
  v8 = std::string::append(&v25, " : FUNCTION(");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  (*(*a1 + 48))(v23, a1, a3);
  if ((v24 & 0x80u) == 0)
  {
    v10 = v23;
  }

  else
  {
    v10 = v23[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v11 = v24;
  }

  else
  {
    v11 = v23[1];
  }

  v12 = std::string::append(&v26, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v27, "), ");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  (*(**(**a2 + 32) + 64))(__p);
  if ((v22 & 0x80u) == 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v17 = v22;
  }

  else
  {
    v17 = __p[1];
  }

  v18 = std::string::append(&v28, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v29, ";\n");
  *a4 = *v20;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
    if ((v22 & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }
  }

  else if ((v22 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v28.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v27.__r_.__value_.__l.__data_);
  if ((v24 & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(v23[0]);
  if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_27:
    operator delete(v25.__r_.__value_.__l.__data_);
    return;
  }

LABEL_26:
  operator delete(v26.__r_.__value_.__l.__data_);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }
}

void sub_22E31804C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 73) < 0)
  {
    operator delete(*(v40 - 96));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v40 - 105) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v40 - 105) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(v40 - 128));
  if ((a40 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a35);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a16);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_15:
  operator delete(a22);
  _Unwind_Resume(exception_object);
}

void sub_22E318160(uint64_t a1@<X0>, unint64_t a2@<X2>, std::string *a3@<X8>)
{
  (*(*a1 + 64))(&v22);
  v6 = std::string::append(&v22, " : FUNCTION(");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  (*(*a1 + 48))(__p, a1, 0);
  if ((v21 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v9 = v21;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = std::string::append(&v23, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v24, "), NODE(Node_");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v19, a2);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v19;
  }

  else
  {
    v14 = v19.__r_.__value_.__r.__words[0];
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v19.__r_.__value_.__l.__size_;
  }

  v16 = std::string::append(&v25, v14, size);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v26, ");\n");
  *a3 = *v18;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }
  }

  else if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v19.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v25.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v24.__r_.__value_.__l.__data_);
  if ((v21 & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(__p[0]);
  if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_27:
    operator delete(v22.__r_.__value_.__l.__data_);
    return;
  }

LABEL_26:
  operator delete(v23.__r_.__value_.__l.__data_);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }
}

void sub_22E3183BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v40 - 89) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v40 - 89) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(v40 - 112));
  if ((a40 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a35);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a16);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_15:
  operator delete(a22);
  _Unwind_Resume(exception_object);
}

void sub_22E3184D0(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  memset(&v51, 0, sizeof(v51));
  std::string::reserve(&v51, 0x50uLL);
  v6 = *(a1 + 112);
  if (v6 < 0)
  {
    std::to_string(&v48, -v6);
    v7 = std::string::insert(&v48, 0, "m");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v49.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v49.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
  }

  else
  {
    std::to_string(&v49, *(a1 + 112));
  }

  v9 = std::string::append(&v49, "_");
  v10 = *&v9->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(&v51, p_p, size);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    operator delete(v49.__r_.__value_.__l.__data_);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

LABEL_16:
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
    v13 = *(a1 + 116);
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_20;
  }

LABEL_17:
  v13 = *(a1 + 116);
  if ((v13 & 0x80000000) == 0)
  {
LABEL_18:
    std::to_string(&v49, v13);
    goto LABEL_21;
  }

LABEL_20:
  std::to_string(&v48, -v13);
  v14 = std::string::insert(&v48, 0, "m");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v49.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v49.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
LABEL_21:
  v16 = std::string::append(&v49, "_");
  v17 = *&v16->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &__p;
  }

  else
  {
    v18 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v19 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(&v51, v18, v19);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

LABEL_32:
    operator delete(v49.__r_.__value_.__l.__data_);
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_32;
  }

LABEL_29:
  if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_34;
  }

LABEL_33:
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
    v20 = *(a1 + 120);
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_37;
  }

LABEL_34:
  v20 = *(a1 + 120);
  if ((v20 & 0x80000000) == 0)
  {
LABEL_35:
    std::to_string(&v49, v20);
    goto LABEL_38;
  }

LABEL_37:
  std::to_string(&v48, -v20);
  v21 = std::string::insert(&v48, 0, "m");
  v22 = *&v21->__r_.__value_.__l.__data_;
  v49.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v49.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
LABEL_38:
  v23 = std::string::append(&v49, "_");
  v24 = *&v23->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &__p;
  }

  else
  {
    v25 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v26 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(&v51, v25, v26);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

LABEL_49:
    operator delete(v49.__r_.__value_.__l.__data_);
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_49;
  }

LABEL_46:
  if ((v20 & 0x80000000) == 0)
  {
    goto LABEL_51;
  }

LABEL_50:
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
    v27 = *(a1 + 124);
    if ((v27 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_54;
  }

LABEL_51:
  v27 = *(a1 + 124);
  if ((v27 & 0x80000000) == 0)
  {
LABEL_52:
    std::to_string(&v49, v27);
    goto LABEL_55;
  }

LABEL_54:
  std::to_string(&v48, -v27);
  v28 = std::string::insert(&v48, 0, "m");
  v29 = *&v28->__r_.__value_.__l.__data_;
  v49.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v49.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
LABEL_55:
  v30 = std::string::append(&v49, "_");
  v31 = *&v30->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = &__p;
  }

  else
  {
    v32 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v33 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(&v51, v32, v33);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

LABEL_66:
    operator delete(v49.__r_.__value_.__l.__data_);
    if ((v27 & 0x80000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_67;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_66;
  }

LABEL_63:
  if ((v27 & 0x80000000) == 0)
  {
    goto LABEL_69;
  }

LABEL_67:
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

LABEL_69:
  v34 = *(a1 + 71);
  if (v34 >= 0)
  {
    v35 = *(a1 + 71);
  }

  else
  {
    v35 = *(a1 + 56);
  }

  if (v35 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_22E33DEAC();
  }

  if (v35 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v49, 0, sizeof(v49));
  *(&v49.__r_.__value_.__s + 23) = v35 + 1;
  if (v35)
  {
    if ((v34 & 0x80u) == 0)
    {
      v36 = (a1 + 48);
    }

    else
    {
      v36 = *(a1 + 48);
    }

    memmove(&v49, v36, v35);
  }

  *(&v49.__r_.__value_.__l.__data_ + v35) = 95;
  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v37 = &v51;
  }

  else
  {
    v37 = v51.__r_.__value_.__r.__words[0];
  }

  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v38 = v51.__r_.__value_.__l.__size_;
  }

  v39 = std::string::append(&v49, v37, v38);
  __p = *v39;
  v39->__r_.__value_.__l.__size_ = 0;
  v39->__r_.__value_.__r.__words[2] = 0;
  v39->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (a2)
    {
      goto LABEL_88;
    }

LABEL_95:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      *a3 = __p;
      goto LABEL_108;
    }

    v47 = __p.__r_.__value_.__r.__words[0];
    sub_22E3404E0(a3, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    goto LABEL_107;
  }

  operator delete(v49.__r_.__value_.__l.__data_);
  if (!a2)
  {
    goto LABEL_95;
  }

LABEL_88:
  v40 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v41 = __p.__r_.__value_.__l.__size_;
  }

  v42 = strlen(a2);
  v43 = v41 + v42;
  if (v41 + v42 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_22E33DEAC();
  }

  v44 = v42;
  if (v43 > 0x16)
  {
    operator new();
  }

  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 23) = v43;
  if (v41)
  {
    if (v40 >= 0)
    {
      v45 = &__p;
    }

    else
    {
      v45 = __p.__r_.__value_.__r.__words[0];
    }

    memmove(a3, v45, v41);
  }

  v46 = (a3 + v41);
  if (v44)
  {
    memmove(v46, a2, v44);
  }

  *(v46 + v44) = 0;
  if (v40 < 0)
  {
    v47 = __p.__r_.__value_.__r.__words[0];
LABEL_107:
    operator delete(v47);
  }

LABEL_108:
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }
}

void sub_22E318AF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  operator delete(v34);
  if (a34 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_22E318BA8(uint64_t a1)
{
  v2 = objc_opt_new();
  objc_msgSend_setConstantValue_type_atIndex_(v2, v3, a1 + 112, 32, 8);
  return v2;
}

void sub_22E318DF8(_Unwind_Exception *a1)
{
  sub_22E3156BC(v2);
  MEMORY[0x2318E5730](v2, v1);
  _Unwind_Resume(a1);
}

void sub_22E318E24(_Unwind_Exception *a1)
{
  sub_22E3156BC(v1);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E318E58(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v25);
  v8 = std::string::append(&v25, " : FUNCTION(");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  (*(*a1 + 48))(v23, a1, a3);
  if ((v24 & 0x80u) == 0)
  {
    v10 = v23;
  }

  else
  {
    v10 = v23[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v11 = v24;
  }

  else
  {
    v11 = v23[1];
  }

  v12 = std::string::append(&v26, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v27, "), ");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  (*(**(**a2 + 32) + 64))(__p);
  if ((v22 & 0x80u) == 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v17 = v22;
  }

  else
  {
    v17 = __p[1];
  }

  v18 = std::string::append(&v28, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v29, ";\n");
  *a4 = *v20;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
    if ((v22 & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }
  }

  else if ((v22 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v28.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v27.__r_.__value_.__l.__data_);
  if ((v24 & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(v23[0]);
  if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_27:
    operator delete(v25.__r_.__value_.__l.__data_);
    return;
  }

LABEL_26:
  operator delete(v26.__r_.__value_.__l.__data_);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }
}

void sub_22E3190E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 73) < 0)
  {
    operator delete(*(v40 - 96));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v40 - 105) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v40 - 105) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(v40 - 128));
  if ((a40 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a35);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a16);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_15:
  operator delete(a22);
  _Unwind_Resume(exception_object);
}

void sub_22E3191F4(uint64_t a1@<X0>, unint64_t a2@<X2>, std::string *a3@<X8>)
{
  (*(*a1 + 64))(&v22);
  v6 = std::string::append(&v22, " : FUNCTION(");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  (*(*a1 + 48))(__p, a1, 0);
  if ((v21 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v9 = v21;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = std::string::append(&v23, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v24, "), NODE(Node_");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v19, a2);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v19;
  }

  else
  {
    v14 = v19.__r_.__value_.__r.__words[0];
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v19.__r_.__value_.__l.__size_;
  }

  v16 = std::string::append(&v25, v14, size);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v26, ");\n");
  *a3 = *v18;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }
  }

  else if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v19.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v25.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v24.__r_.__value_.__l.__data_);
  if ((v21 & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(__p[0]);
  if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_27:
    operator delete(v22.__r_.__value_.__l.__data_);
    return;
  }

LABEL_26:
  operator delete(v23.__r_.__value_.__l.__data_);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }
}

void sub_22E319450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v40 - 89) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v40 - 89) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(v40 - 112));
  if ((a40 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a35);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a16);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_15:
  operator delete(a22);
  _Unwind_Resume(exception_object);
}

void sub_22E319564(uint64_t a1@<X0>, const char *a2@<X1>, char *a3@<X8>)
{
  memset(&v41, 0, sizeof(v41));
  std::string::reserve(&v41, 0x50uLL);
  for (i = 0; i != 4; ++i)
  {
    v7 = a1 + 4 * (i & 3);
    v8 = *(v7 + 112);
    v9 = *(v7 + 128);
    if (v8 < 0)
    {
      std::to_string(&v39, -v8);
      v10 = std::string::insert(&v39, 0, "m");
      v11 = *&v10->__r_.__value_.__l.__data_;
      v40.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
      *&v40.__r_.__value_.__l.__data_ = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
    }

    else
    {
      std::to_string(&v40, v8);
    }

    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v40;
    }

    else
    {
      v12 = v40.__r_.__value_.__r.__words[0];
    }

    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v40.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v40.__r_.__value_.__l.__size_;
    }

    std::string::append(&v41, v12, size);
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
      if ((v8 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }
    }

    else if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_17:
      if ((v9 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    }

    operator delete(v39.__r_.__value_.__l.__data_);
    if ((v9 & 0x80000000) == 0)
    {
LABEL_18:
      std::to_string(&v37, v9);
      goto LABEL_21;
    }

LABEL_20:
    std::to_string(&v36, -v9);
    v14 = std::string::insert(&v36, 0, "m");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v37.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v37.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
LABEL_21:
    v16 = std::string::insert(&v37, 0, "_");
    v17 = *&v16->__r_.__value_.__l.__data_;
    v38.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v38.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = std::string::append(&v38, "_");
    v19 = *&v18->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v40;
    }

    else
    {
      v20 = v40.__r_.__value_.__r.__words[0];
    }

    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v21 = v40.__r_.__value_.__l.__size_;
    }

    std::string::append(&v41, v20, v21);
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_29:
        if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_34;
        }

        goto LABEL_30;
      }
    }

    else if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    operator delete(v38.__r_.__value_.__l.__data_);
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_34:
      operator delete(v37.__r_.__value_.__l.__data_);
      if ((v9 & 0x80000000) == 0)
      {
        continue;
      }

      goto LABEL_35;
    }

LABEL_30:
    if ((v9 & 0x80000000) == 0)
    {
      continue;
    }

LABEL_35:
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }
  }

  v22 = *(a1 + 71);
  if (v22 >= 0)
  {
    v23 = *(a1 + 71);
  }

  else
  {
    v23 = *(a1 + 56);
  }

  if (v23 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_22E33DEAC();
  }

  if (v23 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v38, 0, sizeof(v38));
  *(&v38.__r_.__value_.__s + 23) = v23 + 1;
  if (v23)
  {
    if ((v22 & 0x80u) == 0)
    {
      v24 = (a1 + 48);
    }

    else
    {
      v24 = *(a1 + 48);
    }

    memmove(&v38, v24, v23);
  }

  *(&v38.__r_.__value_.__l.__data_ + v23) = 95;
  if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &v41;
  }

  else
  {
    v25 = v41.__r_.__value_.__r.__words[0];
  }

  if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = HIBYTE(v41.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v26 = v41.__r_.__value_.__l.__size_;
  }

  v27 = std::string::append(&v38, v25, v26);
  v40 = *v27;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
    if (!a2)
    {
      goto LABEL_63;
    }

LABEL_56:
    v28 = SHIBYTE(v40.__r_.__value_.__r.__words[2]);
    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v29 = v40.__r_.__value_.__l.__size_;
    }

    v30 = strlen(a2);
    v31 = v29 + v30;
    if (v29 + v30 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_22E33DEAC();
    }

    v32 = v30;
    if (v31 > 0x16)
    {
      operator new();
    }

    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
    *a3 = 0;
    a3[23] = v31;
    if (v29)
    {
      if (v28 >= 0)
      {
        v33 = &v40;
      }

      else
      {
        v33 = v40.__r_.__value_.__r.__words[0];
      }

      memmove(a3, v33, v29);
    }

    v34 = &a3[v29];
    if (v32)
    {
      memmove(v34, a2, v32);
    }

    v34[v32] = 0;
    if (v28 < 0)
    {
      v35 = v40.__r_.__value_.__r.__words[0];
      goto LABEL_75;
    }
  }

  else
  {
    if (a2)
    {
      goto LABEL_56;
    }

LABEL_63:
    if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      *a3 = v40;
      goto LABEL_76;
    }

    v35 = v40.__r_.__value_.__r.__words[0];
    sub_22E3404E0(a3, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
LABEL_75:
    operator delete(v35);
  }

LABEL_76:
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }
}

void sub_22E3199C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  operator delete(v40);
  if (*(v41 - 81) < 0)
  {
    operator delete(*(v41 - 104));
  }

  _Unwind_Resume(a1);
}

id sub_22E319AEC(uint64_t a1)
{
  v2 = objc_opt_new();
  objc_msgSend_setConstantValue_type_atIndex_(v2, v3, a1 + 112, 32, 8);
  objc_msgSend_setConstantValue_type_atIndex_(v2, v4, a1 + 128, 32, 9);
  return v2;
}

void MPSKernelDAG::padOp()
{
  MPSKernelDAG::padOp();
}

{
  operator new();
}

void sub_22E319DD8(_Unwind_Exception *a1)
{
  sub_22E3156BC(v1);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E319E0C(_Unwind_Exception *a1)
{
  sub_22E3156BC(v1);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E319E40(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v25);
  v8 = std::string::append(&v25, " : FUNCTION(");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  (*(*a1 + 48))(v23, a1, a3);
  if ((v24 & 0x80u) == 0)
  {
    v10 = v23;
  }

  else
  {
    v10 = v23[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v11 = v24;
  }

  else
  {
    v11 = v23[1];
  }

  v12 = std::string::append(&v26, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v27, "), ");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  (*(**(**a2 + 32) + 64))(__p);
  if ((v22 & 0x80u) == 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v17 = v22;
  }

  else
  {
    v17 = __p[1];
  }

  v18 = std::string::append(&v28, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v29, ";\n");
  *a4 = *v20;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
    if ((v22 & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }
  }

  else if ((v22 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v28.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v27.__r_.__value_.__l.__data_);
  if ((v24 & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(v23[0]);
  if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_27:
    operator delete(v25.__r_.__value_.__l.__data_);
    return;
  }

LABEL_26:
  operator delete(v26.__r_.__value_.__l.__data_);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }
}

void sub_22E31A0C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 73) < 0)
  {
    operator delete(*(v40 - 96));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v40 - 105) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v40 - 105) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(v40 - 128));
  if ((a40 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a35);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a16);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_15:
  operator delete(a22);
  _Unwind_Resume(exception_object);
}

void sub_22E31A1DC(uint64_t a1@<X0>, unint64_t a2@<X2>, std::string *a3@<X8>)
{
  (*(*a1 + 64))(&v22);
  v6 = std::string::append(&v22, " : FUNCTION(");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  (*(*a1 + 48))(__p, a1, 0);
  if ((v21 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v9 = v21;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = std::string::append(&v23, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v24, "), NODE(Node_");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v19, a2);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v19;
  }

  else
  {
    v14 = v19.__r_.__value_.__r.__words[0];
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v19.__r_.__value_.__l.__size_;
  }

  v16 = std::string::append(&v25, v14, size);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v26, ");\n");
  *a3 = *v18;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }
  }

  else if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v19.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v25.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v24.__r_.__value_.__l.__data_);
  if ((v21 & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(__p[0]);
  if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_27:
    operator delete(v22.__r_.__value_.__l.__data_);
    return;
  }

LABEL_26:
  operator delete(v23.__r_.__value_.__l.__data_);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }
}

void sub_22E31A438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v40 - 89) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v40 - 89) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(v40 - 112));
  if ((a40 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a35);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a16);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_15:
  operator delete(a22);
  _Unwind_Resume(exception_object);
}

void sub_22E31A54C(uint64_t a1@<X0>, const char *a2@<X1>, char *a3@<X8>)
{
  memset(&v45, 0, sizeof(v45));
  std::string::reserve(&v45, 0x50uLL);
  for (i = 0; i != 4; ++i)
  {
    v7 = a1 + 4 * (i & 3);
    v8 = *(v7 + 112);
    v9 = *(v7 + 128);
    if (v8 < 0)
    {
      std::to_string(&v43, -v8);
      v10 = std::string::insert(&v43, 0, "m");
      v11 = *&v10->__r_.__value_.__l.__data_;
      v44.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
      *&v44.__r_.__value_.__l.__data_ = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
    }

    else
    {
      std::to_string(&v44, v8);
    }

    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v44;
    }

    else
    {
      v12 = v44.__r_.__value_.__r.__words[0];
    }

    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v44.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v44.__r_.__value_.__l.__size_;
    }

    std::string::append(&v45, v12, size);
    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
      if ((v8 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }
    }

    else if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_18:
      if ((v9 & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_21;
    }

    operator delete(v43.__r_.__value_.__l.__data_);
    if ((v9 & 0x80000000) == 0)
    {
LABEL_19:
      std::to_string(&__p, v9);
      goto LABEL_22;
    }

LABEL_21:
    std::to_string(&v40, -v9);
    v14 = std::string::insert(&v40, 0, "m");
    v15 = *&v14->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
LABEL_22:
    v16 = std::string::insert(&__p, 0, "_");
    v17 = *&v16->__r_.__value_.__l.__data_;
    v42.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v42.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = std::string::append(&v42, "_");
    v19 = *&v18->__r_.__value_.__l.__data_;
    v44.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v44.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v44;
    }

    else
    {
      v20 = v44.__r_.__value_.__r.__words[0];
    }

    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = HIBYTE(v44.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v21 = v44.__r_.__value_.__l.__size_;
    }

    std::string::append(&v45, v20, v21);
    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_30:
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_2;
      }
    }

    else if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    operator delete(v42.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_34:
      if ((v9 & 0x80000000) == 0)
      {
        continue;
      }

      goto LABEL_35;
    }

LABEL_2:
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v9 & 0x80000000) == 0)
    {
      continue;
    }

LABEL_35:
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }
  }

  std::to_string(&v42, *(a1 + 144));
  v22 = std::string::append(&v42, "_");
  v23 = *&v22->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &v44;
  }

  else
  {
    v24 = v44.__r_.__value_.__r.__words[0];
  }

  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = HIBYTE(v44.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v25 = v44.__r_.__value_.__l.__size_;
  }

  std::string::append(&v45, v24, v25);
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_71;
    }
  }

  else
  {
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

LABEL_71:
    operator delete(v42.__r_.__value_.__l.__data_);
  }

LABEL_45:
  v26 = *(a1 + 71);
  if (v26 >= 0)
  {
    v27 = *(a1 + 71);
  }

  else
  {
    v27 = *(a1 + 56);
  }

  if (v27 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_22E33DEAC();
  }

  if (v27 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v42, 0, sizeof(v42));
  *(&v42.__r_.__value_.__s + 23) = v27 + 1;
  if (v27)
  {
    if ((v26 & 0x80u) == 0)
    {
      v28 = (a1 + 48);
    }

    else
    {
      v28 = *(a1 + 48);
    }

    memmove(&v42, v28, v27);
  }

  *(&v42.__r_.__value_.__l.__data_ + v27) = 95;
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &v45;
  }

  else
  {
    v29 = v45.__r_.__value_.__r.__words[0];
  }

  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = v45.__r_.__value_.__l.__size_;
  }

  v31 = std::string::append(&v42, v29, v30);
  v44 = *v31;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
    if (!a2)
    {
      goto LABEL_73;
    }

LABEL_64:
    v32 = SHIBYTE(v44.__r_.__value_.__r.__words[2]);
    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = HIBYTE(v44.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v33 = v44.__r_.__value_.__l.__size_;
    }

    v34 = strlen(a2);
    v35 = v33 + v34;
    if (v33 + v34 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_22E33DEAC();
    }

    v36 = v34;
    if (v35 > 0x16)
    {
      operator new();
    }

    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
    *a3 = 0;
    a3[23] = v35;
    if (v33)
    {
      if (v32 >= 0)
      {
        v37 = &v44;
      }

      else
      {
        v37 = v44.__r_.__value_.__r.__words[0];
      }

      memmove(a3, v37, v33);
    }

    v38 = &a3[v33];
    if (v36)
    {
      memmove(v38, a2, v36);
    }

    v38[v36] = 0;
    if (v32 < 0)
    {
      v39 = v44.__r_.__value_.__r.__words[0];
      goto LABEL_85;
    }
  }

  else
  {
    if (a2)
    {
      goto LABEL_64;
    }

LABEL_73:
    if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      *a3 = v44;
      goto LABEL_86;
    }

    v39 = v44.__r_.__value_.__r.__words[0];
    sub_22E3404E0(a3, v44.__r_.__value_.__l.__data_, v44.__r_.__value_.__l.__size_);
LABEL_85:
    operator delete(v39);
  }

LABEL_86:
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }
}

void sub_22E31AA34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  operator delete(v40);
  if (*(v41 - 81) < 0)
  {
    operator delete(*(v41 - 104));
  }

  _Unwind_Resume(a1);
}

id sub_22E31AB7C(uint64_t a1)
{
  v2 = objc_opt_new();
  objc_msgSend_setConstantValue_type_atIndex_(v2, v3, a1 + 112, 32, 8);
  objc_msgSend_setConstantValue_type_atIndex_(v2, v4, a1 + 128, 32, 9);
  v7 = *(a1 + 144);
  objc_msgSend_setConstantValue_type_atIndex_(v2, v5, &v7, 29, 6);
  return v2;
}

void sub_22E31AD5C(_Unwind_Exception *a1)
{
  sub_22E3156BC(v2);
  MEMORY[0x2318E5730](v2, v1);
  _Unwind_Resume(a1);
}

void sub_22E31AD88(_Unwind_Exception *a1)
{
  sub_22E3156BC(v1);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E31ADBC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v25);
  v8 = std::string::append(&v25, " : FUNCTION(");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  (*(*a1 + 48))(v23, a1, a3);
  if ((v24 & 0x80u) == 0)
  {
    v10 = v23;
  }

  else
  {
    v10 = v23[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v11 = v24;
  }

  else
  {
    v11 = v23[1];
  }

  v12 = std::string::append(&v26, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v27, "), ");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  (*(**(**a2 + 32) + 64))(__p);
  if ((v22 & 0x80u) == 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v17 = v22;
  }

  else
  {
    v17 = __p[1];
  }

  v18 = std::string::append(&v28, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v29, ";\n");
  *a4 = *v20;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
    if ((v22 & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }
  }

  else if ((v22 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v28.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v27.__r_.__value_.__l.__data_);
  if ((v24 & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(v23[0]);
  if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_27:
    operator delete(v25.__r_.__value_.__l.__data_);
    return;
  }

LABEL_26:
  operator delete(v26.__r_.__value_.__l.__data_);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }
}

void sub_22E31B044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 73) < 0)
  {
    operator delete(*(v40 - 96));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v40 - 105) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v40 - 105) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(v40 - 128));
  if ((a40 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a35);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a16);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_15:
  operator delete(a22);
  _Unwind_Resume(exception_object);
}

void sub_22E31B158(uint64_t a1@<X0>, unint64_t a2@<X2>, std::string *a3@<X8>)
{
  (*(*a1 + 64))(&v22);
  v6 = std::string::append(&v22, " : FUNCTION(");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  (*(*a1 + 48))(__p, a1, 0);
  if ((v21 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v9 = v21;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = std::string::append(&v23, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v24, "), NODE(Node_");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v19, a2);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v19;
  }

  else
  {
    v14 = v19.__r_.__value_.__r.__words[0];
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v19.__r_.__value_.__l.__size_;
  }

  v16 = std::string::append(&v25, v14, size);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v26, ");\n");
  *a3 = *v18;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }
  }

  else if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v19.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v25.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v24.__r_.__value_.__l.__data_);
  if ((v21 & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(__p[0]);
  if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_27:
    operator delete(v22.__r_.__value_.__l.__data_);
    return;
  }

LABEL_26:
  operator delete(v23.__r_.__value_.__l.__data_);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }
}

void sub_22E31B3B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v40 - 89) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v40 - 89) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(v40 - 112));
  if ((a40 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a35);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a16);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_15:
  operator delete(a22);
  _Unwind_Resume(exception_object);
}

void sub_22E31B4C8(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  memset(&v34, 0, sizeof(v34));
  std::string::reserve(&v34, 0x50uLL);
  std::to_string(&v33, *(a1 + 112));
  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v33;
  }

  else
  {
    v6 = v33.__r_.__value_.__r.__words[0];
  }

  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v33.__r_.__value_.__l.__size_;
  }

  std::string::append(&v34, v6, size);
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  std::to_string(&v33, *(a1 + 116));
  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v33;
  }

  else
  {
    v8 = v33.__r_.__value_.__r.__words[0];
  }

  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = v33.__r_.__value_.__l.__size_;
  }

  std::string::append(&v34, v8, v9);
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  std::to_string(&v33, *(a1 + 120));
  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v33;
  }

  else
  {
    v10 = v33.__r_.__value_.__r.__words[0];
  }

  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = v33.__r_.__value_.__l.__size_;
  }

  std::string::append(&v34, v10, v11);
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  std::to_string(&v33, *(a1 + 124));
  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v33;
  }

  else
  {
    v12 = v33.__r_.__value_.__r.__words[0];
  }

  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = v33.__r_.__value_.__l.__size_;
  }

  std::string::append(&v34, v12, v13);
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  std::to_string(&v32, *(a1 + 128));
  v14 = std::string::append(&v32, "_");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v33;
  }

  else
  {
    v16 = v33.__r_.__value_.__r.__words[0];
  }

  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v33.__r_.__value_.__l.__size_;
  }

  std::string::append(&v34, v16, v17);
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_41;
    }
  }

  else if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_41;
  }

  operator delete(v32.__r_.__value_.__l.__data_);
LABEL_41:
  v18 = *(a1 + 71);
  if (v18 >= 0)
  {
    v19 = *(a1 + 71);
  }

  else
  {
    v19 = *(a1 + 56);
  }

  if (v19 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_22E33DEAC();
  }

  if (v19 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v32, 0, sizeof(v32));
  *(&v32.__r_.__value_.__s + 23) = v19 + 1;
  if (v19)
  {
    if ((v18 & 0x80u) == 0)
    {
      v20 = (a1 + 48);
    }

    else
    {
      v20 = *(a1 + 48);
    }

    memmove(&v32, v20, v19);
  }

  *(&v32.__r_.__value_.__l.__data_ + v19) = 95;
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v34;
  }

  else
  {
    v21 = v34.__r_.__value_.__r.__words[0];
  }

  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v22 = v34.__r_.__value_.__l.__size_;
  }

  v23 = std::string::append(&v32, v21, v22);
  v33 = *v23;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (a2)
    {
      goto LABEL_60;
    }

LABEL_69:
    if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      *a3 = v33;
      goto LABEL_82;
    }

    v31 = v33.__r_.__value_.__r.__words[0];
    sub_22E3404E0(a3, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
    goto LABEL_81;
  }

  operator delete(v32.__r_.__value_.__l.__data_);
  if (!a2)
  {
    goto LABEL_69;
  }

LABEL_60:
  v24 = SHIBYTE(v33.__r_.__value_.__r.__words[2]);
  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v25 = v33.__r_.__value_.__l.__size_;
  }

  v26 = strlen(a2);
  v27 = v25 + v26;
  if (v25 + v26 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_22E33DEAC();
  }

  v28 = v26;
  if (v27 > 0x16)
  {
    operator new();
  }

  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 23) = v27;
  if (v25)
  {
    if (v24 >= 0)
    {
      v29 = &v33;
    }

    else
    {
      v29 = v33.__r_.__value_.__r.__words[0];
    }

    memmove(a3, v29, v25);
  }

  v30 = (a3 + v25);
  if (v28)
  {
    memmove(v30, a2, v28);
  }

  *(v30 + v28) = 0;
  if (v24 < 0)
  {
    v31 = v33.__r_.__value_.__r.__words[0];
LABEL_81:
    operator delete(v31);
  }

LABEL_82:
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }
}

void sub_22E31B8C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  operator delete(v27);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_22E31B950(uint64_t a1)
{
  v2 = objc_opt_new();
  objc_msgSend_setConstantValue_type_atIndex_(v2, v3, a1 + 112, 32, 8);
  v6 = *(a1 + 128);
  objc_msgSend_setConstantValue_type_atIndex_(v2, v4, &v6, 29, 6);
  return v2;
}

void sub_22E31BBFC(_Unwind_Exception *a1)
{
  sub_22E3156BC(v1);
  MEMORY[0x2318E5730](v1, 0x10B3C4048C84E6DLL);
  _Unwind_Resume(a1);
}

void sub_22E31BC4C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v25);
  v8 = std::string::append(&v25, " : FUNCTION(");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  (*(*a1 + 48))(v23, a1, a3);
  if ((v24 & 0x80u) == 0)
  {
    v10 = v23;
  }

  else
  {
    v10 = v23[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v11 = v24;
  }

  else
  {
    v11 = v23[1];
  }

  v12 = std::string::append(&v26, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v27, "), ");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  (*(**(**a2 + 32) + 64))(__p);
  if ((v22 & 0x80u) == 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v17 = v22;
  }

  else
  {
    v17 = __p[1];
  }

  v18 = std::string::append(&v28, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v29, ";\n");
  *a4 = *v20;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
    if ((v22 & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }
  }

  else if ((v22 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v28.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v27.__r_.__value_.__l.__data_);
  if ((v24 & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(v23[0]);
  if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_27:
    operator delete(v25.__r_.__value_.__l.__data_);
    return;
  }

LABEL_26:
  operator delete(v26.__r_.__value_.__l.__data_);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }
}

void sub_22E31BED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 73) < 0)
  {
    operator delete(*(v40 - 96));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v40 - 105) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v40 - 105) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(v40 - 128));
  if ((a40 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a35);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a16);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_15:
  operator delete(a22);
  _Unwind_Resume(exception_object);
}

void sub_22E31BFE8(uint64_t a1@<X0>, unint64_t a2@<X2>, std::string *a3@<X8>)
{
  (*(*a1 + 64))(&v22);
  v6 = std::string::append(&v22, " : FUNCTION(");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  (*(*a1 + 48))(__p, a1, 0);
  if ((v21 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v9 = v21;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = std::string::append(&v23, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v24, "), NODE(Node_");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v19, a2);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v19;
  }

  else
  {
    v14 = v19.__r_.__value_.__r.__words[0];
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v19.__r_.__value_.__l.__size_;
  }

  v16 = std::string::append(&v25, v14, size);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v26, ");\n");
  *a3 = *v18;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }
  }

  else if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v19.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v25.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v24.__r_.__value_.__l.__data_);
  if ((v21 & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(__p[0]);
  if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_27:
    operator delete(v22.__r_.__value_.__l.__data_);
    return;
  }

LABEL_26:
  operator delete(v23.__r_.__value_.__l.__data_);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }
}

void sub_22E31C244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v40 - 89) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v40 - 89) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(v40 - 112));
  if ((a40 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a35);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a16);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_15:
  operator delete(a22);
  _Unwind_Resume(exception_object);
}

void sub_22E31C358(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  memset(&v54, 0, sizeof(v54));
  std::string::reserve(&v54, 0x50uLL);
  std::to_string(&v52, *(a1 + 112));
  v6 = std::string::append(&v52, "_");
  v7 = *&v6->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(&v54, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v52.__r_.__value_.__l.__data_);
LABEL_9:
  std::to_string(&v52, *(a1 + 116));
  v10 = std::string::append(&v52, "_");
  v11 = *&v10->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &__p;
  }

  else
  {
    v12 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(&v54, v12, v13);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }
  }

  else if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

  operator delete(v52.__r_.__value_.__l.__data_);
LABEL_17:
  std::to_string(&v52, *(a1 + 120));
  v14 = std::string::append(&v52, "_");
  v15 = *&v14->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &__p;
  }

  else
  {
    v16 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(&v54, v16, v17);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }
  }

  else if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

  operator delete(v52.__r_.__value_.__l.__data_);
LABEL_25:
  std::to_string(&v52, *(a1 + 124));
  v18 = std::string::append(&v52, "_");
  v19 = *&v18->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &__p;
  }

  else
  {
    v20 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(&v54, v20, v21);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }
  }

  else if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

  operator delete(v52.__r_.__value_.__l.__data_);
LABEL_33:
  std::to_string(&v52, *(a1 + 128));
  v22 = std::string::append(&v52, "_");
  v23 = *&v22->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &__p;
  }

  else
  {
    v24 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v25 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(&v54, v24, v25);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_41;
    }
  }

  else if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_41;
  }

  operator delete(v52.__r_.__value_.__l.__data_);
LABEL_41:
  std::to_string(&v52, *(a1 + 132));
  v26 = std::string::append(&v52, "_");
  v27 = *&v26->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = &__p;
  }

  else
  {
    v28 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v29 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(&v54, v28, v29);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }
  }

  else if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

  operator delete(v52.__r_.__value_.__l.__data_);
LABEL_49:
  std::to_string(&v52, *(a1 + 136));
  v30 = std::string::append(&v52, "_");
  v31 = *&v30->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = &__p;
  }

  else
  {
    v32 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v33 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(&v54, v32, v33);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_57;
    }
  }

  else if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_57;
  }

  operator delete(v52.__r_.__value_.__l.__data_);
LABEL_57:
  std::to_string(&v52, *(a1 + 140));
  v34 = std::string::append(&v52, "_");
  v35 = *&v34->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v36 = &__p;
  }

  else
  {
    v36 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v37 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v37 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(&v54, v36, v37);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_65;
    }
  }

  else if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_65;
  }

  operator delete(v52.__r_.__value_.__l.__data_);
LABEL_65:
  v38 = *(a1 + 71);
  if (v38 >= 0)
  {
    v39 = *(a1 + 71);
  }

  else
  {
    v39 = *(a1 + 56);
  }

  if (v39 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_22E33DEAC();
  }

  if (v39 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v52, 0, sizeof(v52));
  *(&v52.__r_.__value_.__s + 23) = v39 + 1;
  if (v39)
  {
    if ((v38 & 0x80u) == 0)
    {
      v40 = (a1 + 48);
    }

    else
    {
      v40 = *(a1 + 48);
    }

    memmove(&v52, v40, v39);
  }

  *(&v52.__r_.__value_.__l.__data_ + v39) = 95;
  if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = &v54;
  }

  else
  {
    v41 = v54.__r_.__value_.__r.__words[0];
  }

  if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v42 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v42 = v54.__r_.__value_.__l.__size_;
  }

  v43 = std::string::append(&v52, v41, v42);
  __p = *v43;
  v43->__r_.__value_.__l.__size_ = 0;
  v43->__r_.__value_.__r.__words[2] = 0;
  v43->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (a2)
    {
      goto LABEL_84;
    }

LABEL_107:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      *a3 = __p;
      goto LABEL_120;
    }

    v51 = __p.__r_.__value_.__r.__words[0];
    sub_22E3404E0(a3, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    goto LABEL_119;
  }

  operator delete(v52.__r_.__value_.__l.__data_);
  if (!a2)
  {
    goto LABEL_107;
  }

LABEL_84:
  v44 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v45 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v45 = __p.__r_.__value_.__l.__size_;
  }

  v46 = strlen(a2);
  v47 = v45 + v46;
  if (v45 + v46 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_22E33DEAC();
  }

  v48 = v46;
  if (v47 > 0x16)
  {
    operator new();
  }

  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 23) = v47;
  if (v45)
  {
    if (v44 >= 0)
    {
      v49 = &__p;
    }

    else
    {
      v49 = __p.__r_.__value_.__r.__words[0];
    }

    memmove(a3, v49, v45);
  }

  v50 = (a3 + v45);
  if (v48)
  {
    memmove(v50, a2, v48);
  }

  *(v50 + v48) = 0;
  if (v44 < 0)
  {
    v51 = __p.__r_.__value_.__r.__words[0];
LABEL_119:
    operator delete(v51);
  }

LABEL_120:
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }
}