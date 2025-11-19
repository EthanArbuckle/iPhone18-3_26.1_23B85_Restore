void sub_22E2FA48C(_Unwind_Exception *a1)
{
  if (*(v1 + 127) < 0)
  {
    operator delete(*v2);
  }

  sub_22E2F95C4(v1);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E2FA61C(_Unwind_Exception *a1)
{
  if (*(v1 + 127) < 0)
  {
    operator delete(*v2);
  }

  sub_22E2F95C4(v1);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E2FA660(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X6>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v24);
  v8 = std::string::append(&v24, " : FUNCTION(");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  (*(*a1 + 48))(__p, a1, a2);
  if ((v23 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v23 & 0x80u) == 0)
  {
    v11 = v23;
  }

  else
  {
    v11 = __p[1];
  }

  v12 = std::string::append(&v25, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v26, "), INPUT(0), INPUT(1), NODE(Node_");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v21, a3);
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v21;
  }

  else
  {
    v16 = v21.__r_.__value_.__r.__words[0];
  }

  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v21.__r_.__value_.__l.__size_;
  }

  v18 = std::string::append(&v27, v16, size);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v28, ");\n");
  *a4 = *v20;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }
  }

  else if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v21.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v27.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v26.__r_.__value_.__l.__data_);
  if ((v23 & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(__p[0]);
  if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_27:
    operator delete(v24.__r_.__value_.__l.__data_);
    return;
  }

LABEL_26:
  operator delete(v25.__r_.__value_.__l.__data_);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }
}

void sub_22E2FA8BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

id sub_22E2FA9D0(uint64_t a1)
{
  v2 = objc_opt_new();
  v8 = *(a1 + 76);
  objc_msgSend_setConstantValue_type_atIndex_(v2, v3, &v8, 33, 3);
  v5 = **(a1 + 24);
  if (*(*(a1 + 24) + 8) == v5)
  {
    sub_22E34059C();
  }

  v7 = *(*v5 + 8);
  objc_msgSend_setConstantValue_type_atIndex_(v2, v4, &v7, 33, 4);
  return v2;
}

uint64_t sub_22E2FAA5C@<X0>(char *__s@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  if (*(a2 + 71) >= 0)
  {
    v6 = *(a2 + 71);
  }

  else
  {
    v6 = *(a2 + 56);
  }

  result = strlen(__s);
  v8 = v6 + result;
  if (v6 + result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_22E33DEAC();
  }

  v9 = result;
  if (v8 > 0x16)
  {
    operator new();
  }

  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  *(a3 + 23) = v8;
  if (v6)
  {
    if (*(a2 + 71) >= 0)
    {
      v10 = (a2 + 48);
    }

    else
    {
      v10 = *(a2 + 48);
    }

    result = memmove(a3, v10, v6);
  }

  v11 = a3 + v6;
  if (v9)
  {
    result = memmove(v11, __s, v9);
  }

  v11[v9] = 0;
  return result;
}

void sub_22E2FAB64(uint64_t a1@<X0>, const std::string::value_type *a2@<X1>, std::string *a3@<X8>)
{
  v4 = *(a1 + 71);
  if (v4 >= 0)
  {
    v5 = *(a1 + 71);
  }

  else
  {
    v5 = *(a1 + 56);
  }

  if (v5 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_22E33DEAC();
  }

  if (v5 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v23, 0, sizeof(v23));
  *(&v23.__r_.__value_.__s + 23) = v5 + 1;
  if (v5)
  {
    if ((v4 & 0x80u) == 0)
    {
      v8 = (a1 + 48);
    }

    else
    {
      v8 = *(a1 + 48);
    }

    memmove(&v23, v8, v5);
  }

  *(&v23.__r_.__value_.__l.__data_ + v5) = 95;
  v9 = *(a1 + 127);
  if (v9 >= 0)
  {
    v10 = (a1 + 104);
  }

  else
  {
    v10 = *(a1 + 104);
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 127);
  }

  else
  {
    v11 = *(a1 + 112);
  }

  v12 = std::string::append(&v23, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v24, "_");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = **(a1 + 24);
  if (*(*(a1 + 24) + 8) == v16)
  {
    sub_22E34059C();
  }

  std::to_string(&__p, *(*v16 + 8));
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

  v19 = std::string::append(&v25, p_p, size);
  v20 = *&v19->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  v21 = std::string::append(&v26, a2);
  *a3 = *v21;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_27:
      if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_33;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_28:
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(v25.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_29:
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_35:
    operator delete(v23.__r_.__value_.__l.__data_);
    return;
  }

LABEL_34:
  operator delete(v24.__r_.__value_.__l.__data_);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_35;
  }
}

void sub_22E2FADBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a33 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a28);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_11:
  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void MPSKernelDAG::constantOp()
{
  operator new();
}

{
  operator new();
}

void sub_22E2FAF74(_Unwind_Exception *a1)
{
  sub_22E2F95C4(v1);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E2FB09C(_Unwind_Exception *a1)
{
  sub_22E2F95C4(v1);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E2FB0D0(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X6>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v24);
  v8 = std::string::append(&v24, " : FUNCTION(");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  (*(*a1 + 48))(__p, a1, a2);
  if ((v23 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v23 & 0x80u) == 0)
  {
    v11 = v23;
  }

  else
  {
    v11 = __p[1];
  }

  v12 = std::string::append(&v25, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v26, "), NODE(Node_");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v21, a3);
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v21;
  }

  else
  {
    v16 = v21.__r_.__value_.__r.__words[0];
  }

  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v21.__r_.__value_.__l.__size_;
  }

  v18 = std::string::append(&v27, v16, size);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v28, ");\n");
  *a4 = *v20;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }
  }

  else if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v21.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v27.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v26.__r_.__value_.__l.__data_);
  if ((v23 & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(__p[0]);
  if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_27:
    operator delete(v24.__r_.__value_.__l.__data_);
    return;
  }

LABEL_26:
  operator delete(v25.__r_.__value_.__l.__data_);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }
}

void sub_22E2FB32C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

id sub_22E2FB440(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 96);
  v7 = v3;
  objc_msgSend_setConstantValue_type_atIndex_(v2, v4, &v7, 3, 0);
  objc_msgSend_setConstantValue_type_atIndex_(v2, v5, a1 + 104, 81, 1);
  return v2;
}

uint64_t sub_22E2FB4B0@<X0>(char *__s@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  if (*(a2 + 71) >= 0)
  {
    v6 = *(a2 + 71);
  }

  else
  {
    v6 = *(a2 + 56);
  }

  result = strlen(__s);
  v8 = v6 + result;
  if (v6 + result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_22E33DEAC();
  }

  v9 = result;
  if (v8 > 0x16)
  {
    operator new();
  }

  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  *(a3 + 23) = v8;
  if (v6)
  {
    if (*(a2 + 71) >= 0)
    {
      v10 = (a2 + 48);
    }

    else
    {
      v10 = *(a2 + 48);
    }

    result = memmove(a3, v10, v6);
  }

  v11 = a3 + v6;
  if (v9)
  {
    result = memmove(v11, __s, v9);
  }

  v11[v9] = 0;
  return result;
}

void sub_22E2FB5B8(uint64_t a1@<X0>, const std::string::value_type *a2@<X1>, std::string *a3@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  snprintf(&__str, 0x11uLL, "%016llx", *(a1 + 96));
  __str.__r_.__value_.__s.__data_[16] = 0;
  v6 = strlen(&__str);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_22E33DEAC();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v18 = v6;
  if (v6)
  {
    memcpy(__dst, &__str, v6);
  }

  *(__dst + v7) = 0;
  v8 = *(a1 + 71);
  if (v8 >= 0)
  {
    v9 = *(a1 + 71);
  }

  else
  {
    v9 = *(a1 + 56);
  }

  if (v9 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_22E33DEAC();
  }

  if (v9 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v16, 0, sizeof(v16));
  *(&v16.__r_.__value_.__s + 23) = v9 + 1;
  if (v9)
  {
    if ((v8 & 0x80u) == 0)
    {
      v10 = (a1 + 48);
    }

    else
    {
      v10 = *(a1 + 48);
    }

    memmove(&v16, v10, v9);
  }

  *(&v16.__r_.__value_.__l.__data_ + v9) = 95;
  if ((v18 & 0x80u) == 0)
  {
    v11 = __dst;
  }

  else
  {
    v11 = __dst[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v12 = v18;
  }

  else
  {
    v12 = __dst[1];
  }

  v13 = std::string::append(&v16, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  __str.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&__str.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&__str, a2);
  *a3 = *v15;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_26:
      if ((v18 & 0x80000000) == 0)
      {
        return;
      }

LABEL_30:
      operator delete(__dst[0]);
      return;
    }
  }

  else if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_26;
  }

  operator delete(v16.__r_.__value_.__l.__data_);
  if (v18 < 0)
  {
    goto LABEL_30;
  }
}

void sub_22E2FB834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
    if ((a16 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a22 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a16 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a11);
  if ((a22 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(a17);
  _Unwind_Resume(exception_object);
}

void sub_22E2FBA24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E2FBA74(unint64_t *a1@<X0>, const std::string::value_type *a2@<X2>, unint64_t a3@<X6>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v25);
  v8 = std::string::append(&v25, " : FUNCTION(getCoord_");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v24, a1[12]);
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v24;
  }

  else
  {
    v10 = v24.__r_.__value_.__r.__words[0];
  }

  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v24.__r_.__value_.__l.__size_;
  }

  v12 = std::string::append(&v26, v10, size);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v27, a2);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v28, "), NODE(Node_");
  v17 = *&v16->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v23, a3);
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v23;
  }

  else
  {
    v18 = v23.__r_.__value_.__r.__words[0];
  }

  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = HIBYTE(v23.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v19 = v23.__r_.__value_.__l.__size_;
  }

  v20 = std::string::append(&v29, v18, v19);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = std::string::append(&v30, ");\n");
  *a4 = *v22;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_24;
    }
  }

  else if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v23.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v29.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(v28.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(v27.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(v24.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_20:
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_29:
    operator delete(v25.__r_.__value_.__l.__data_);
    return;
  }

LABEL_28:
  operator delete(v26.__r_.__value_.__l.__data_);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_29;
  }
}

void sub_22E2FBCE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (*(v47 - 57) < 0)
  {
    operator delete(*(v47 - 80));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v47 - 89) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v47 - 89) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a47 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(*(v47 - 112));
  if ((a47 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a42);
  if ((a40 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a35);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(a16);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_9:
    _Unwind_Resume(exception_object);
  }

LABEL_17:
  operator delete(a22);
  _Unwind_Resume(exception_object);
}

void sub_22E2FC2A8(_Unwind_Exception *a1)
{
  sub_22E2F95C4(v1);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E2FC3F0(_Unwind_Exception *a1)
{
  MEMORY[0x2318E5730](v2, 0x1020C4039750FA9);
  MPSDAGKernelOp::~MPSDAGKernelOp(v1);
  _Unwind_Resume(a1);
}

void sub_22E2FC41C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E2FC44C(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E2FC6D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

void sub_22E2FCFF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  sub_22E340340(&a25);
  MEMORY[0x2318E56B0](a12);
  if (a24 < 0)
  {
    operator delete(__p);
    if ((*(v41 + 183) & 0x80000000) == 0)
    {
LABEL_4:
      sub_22E2F95C4(v41);
      MEMORY[0x2318E5730](v41, 0x10B3C405D1101EALL);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v41 + 183) & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  operator delete(*a9);
  goto LABEL_4;
}

void sub_22E2FD108(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
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

void sub_22E2FD390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

char *sub_22E2FD4A4@<X0>(char *__s@<X1>, char *result@<X0>, void *a3@<X8>)
{
  v3 = result;
  v5 = result + 160;
  if (__s)
  {
    if (result[183] >= 0)
    {
      v7 = result[183];
    }

    else
    {
      v7 = *(result + 21);
    }

    result = strlen(__s);
    v8 = &result[v7];
    if (&result[v7] >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_22E33DEAC();
    }

    v9 = result;
    if (v8 > 0x16)
    {
      operator new();
    }

    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    *(a3 + 23) = v8;
    if (v7)
    {
      if (*(v3 + 183) >= 0)
      {
        v10 = v5;
      }

      else
      {
        v10 = v3[20];
      }

      result = memmove(a3, v10, v7);
    }

    v11 = a3 + v7;
    if (v9)
    {
      result = memmove(v11, __s, v9);
    }

    v11[v9] = 0;
  }

  else if (result[183] < 0)
  {
    v12 = *(result + 20);
    v13 = *(result + 21);

    return sub_22E3404E0(a3, v12, v13);
  }

  else
  {
    *a3 = *v5;
    a3[2] = *(result + 22);
  }

  return result;
}

id sub_22E2FD610(uint64_t a1)
{
  v2 = objc_opt_new();
  objc_msgSend_setConstantValue_type_atIndex_(v2, v3, a1 + 96, 6, 10);
  objc_msgSend_setConstantValue_type_atIndex_(v2, v4, a1 + 112, 6, 11);
  objc_msgSend_setConstantValue_type_atIndex_(v2, v5, a1 + 128, 6, 12);
  objc_msgSend_setConstantValue_type_atIndex_(v2, v6, a1 + 144, 6, 13);
  return v2;
}

void sub_22E2FD694(uint64_t a1)
{
  *a1 = &unk_284219978;
  if (*(a1 + 71) < 0)
  {
    v2 = a1;
    operator delete(*(a1 + 48));
    a1 = v2;
  }

  BaseOperation::~BaseOperation(a1);
}

void sub_22E2FD708(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E2FDC90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E2FDCD8(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E2FDF5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

void sub_22E2FE588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E2FE5D0(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E2FE854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

void sub_22E2FEE80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E2FEEC8(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E2FF14C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

void sub_22E2FF774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E2FF7BC(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E2FFA40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

void sub_22E30006C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E3000B4(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E300338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

void sub_22E300964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E3009AC(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E300C30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

void sub_22E301258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E3012A0(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E301524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

void sub_22E301B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E301B98(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E301E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

void sub_22E302444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E30248C(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E302710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

void sub_22E302D3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E302D84(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E303008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

void sub_22E303630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E303678(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E3038FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

void sub_22E303F24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E303F6C(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E3041F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

void sub_22E304818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E304860(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E304AE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

void sub_22E30510C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E305154(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E3053D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

void sub_22E305A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E305A48(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E305CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

void sub_22E3062F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E306340(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E3065C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

void sub_22E306BF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E306C38(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E306EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

void sub_22E3074E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E30752C(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E3077B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

void sub_22E307DD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E307E1C(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E3080A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

void sub_22E3086C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E30870C(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E308990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

void sub_22E308FB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E308FFC(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E309280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

void sub_22E3098A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E3098F0(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E309B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

void sub_22E30A19C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E30A1E4(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E30A468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

void sub_22E30AA90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E30AAD8(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E30AD5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

void sub_22E30B384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E30B3CC(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E30B650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

void sub_22E30BC78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E30BCC0(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E30BF44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

void sub_22E30C56C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E30C5B4(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E30C838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

void sub_22E30CE64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E30CEAC(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E30D130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

void sub_22E30D75C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E30D7A4(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E30DA28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

void sub_22E30E054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E30E09C(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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