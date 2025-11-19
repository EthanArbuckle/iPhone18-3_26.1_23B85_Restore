void sub_22E31C9F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  operator delete(v27);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_22E31CA70(uint64_t a1)
{
  v2 = objc_opt_new();
  objc_msgSend_setConstantValue_type_atIndex_(v2, v3, a1 + 112, 32, 8);
  objc_msgSend_setConstantValue_type_atIndex_(v2, v4, a1 + 128, 32, 9);
  return v2;
}

void sub_22E31CCDC(_Unwind_Exception *a1)
{
  sub_22E3156BC(v1);
  MEMORY[0x2318E5730](v1, v2);
  _Unwind_Resume(a1);
}

void sub_22E31CD04(_Unwind_Exception *a1)
{
  sub_22E3156BC(v1);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E31CD38(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
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

void sub_22E31CFC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

void sub_22E31D0D4(uint64_t a1@<X0>, unint64_t a2@<X2>, std::string *a3@<X8>)
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

void sub_22E31D330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

void sub_22E31D444(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
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

void sub_22E31DADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  operator delete(v27);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_22E31DB5C(uint64_t a1)
{
  v2 = objc_opt_new();
  objc_msgSend_setConstantValue_type_atIndex_(v2, v3, a1 + 112, 32, 8);
  objc_msgSend_setConstantValue_type_atIndex_(v2, v4, a1 + 128, 32, 9);
  return v2;
}

void sub_22E31DCB8(_Unwind_Exception *a1)
{
  sub_22E2F95C4(v1);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E31DCEC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
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

void sub_22E31DF74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

void sub_22E31E088(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  memset(&v39, 0, sizeof(v39));
  std::string::reserve(&v39, 0x50uLL);
  v6 = *(a1 + 96);
  if (v6 < 0)
  {
    std::to_string(&v37, -v6);
    v7 = std::string::insert(&v37, 0, "m");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v38.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v38.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
  }

  else
  {
    std::to_string(&v38, *(a1 + 96));
  }

  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v38;
  }

  else
  {
    v9 = v38.__r_.__value_.__r.__words[0];
  }

  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v38.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v38.__r_.__value_.__l.__size_;
  }

  std::string::append(&v39, v9, size);
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
    v11 = *(a1 + 100);
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

LABEL_15:
  v11 = *(a1 + 100);
  if ((v11 & 0x80000000) == 0)
  {
LABEL_16:
    std::to_string(&v35, v11);
    goto LABEL_19;
  }

LABEL_18:
  std::to_string(&v34, -v11);
  v12 = std::string::insert(&v34, 0, "m");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v35.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v35.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
LABEL_19:
  v14 = std::string::insert(&v35, 0, "_");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v36.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v36.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v36, "_");
  v17 = *&v16->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v38;
  }

  else
  {
    v18 = v38.__r_.__value_.__r.__words[0];
  }

  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v19 = v38.__r_.__value_.__l.__size_;
  }

  std::string::append(&v39, v18, v19);
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_27:
      if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_28;
      }

LABEL_32:
      operator delete(v35.__r_.__value_.__l.__data_);
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_33;
    }
  }

  else if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

  operator delete(v36.__r_.__value_.__l.__data_);
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_32;
  }

LABEL_28:
  if ((v11 & 0x80000000) == 0)
  {
    goto LABEL_35;
  }

LABEL_33:
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

LABEL_35:
  v20 = *(a1 + 71);
  if (v20 >= 0)
  {
    v21 = *(a1 + 71);
  }

  else
  {
    v21 = *(a1 + 56);
  }

  if (v21 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_22E33DEAC();
  }

  if (v21 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v36, 0, sizeof(v36));
  *(&v36.__r_.__value_.__s + 23) = v21 + 1;
  if (v21)
  {
    if ((v20 & 0x80u) == 0)
    {
      v22 = (a1 + 48);
    }

    else
    {
      v22 = *(a1 + 48);
    }

    memmove(&v36, v22, v21);
  }

  *(&v36.__r_.__value_.__l.__data_ + v21) = 95;
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = &v39;
  }

  else
  {
    v23 = v39.__r_.__value_.__r.__words[0];
  }

  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v24 = v39.__r_.__value_.__l.__size_;
  }

  v25 = std::string::append(&v36, v23, v24);
  v38 = *v25;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (a2)
    {
      goto LABEL_54;
    }

LABEL_61:
    if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      *a3 = v38;
      goto LABEL_74;
    }

    v33 = v38.__r_.__value_.__r.__words[0];
    sub_22E3404E0(a3, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
    goto LABEL_73;
  }

  operator delete(v36.__r_.__value_.__l.__data_);
  if (!a2)
  {
    goto LABEL_61;
  }

LABEL_54:
  v26 = SHIBYTE(v38.__r_.__value_.__r.__words[2]);
  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v27 = v38.__r_.__value_.__l.__size_;
  }

  v28 = strlen(a2);
  v29 = v27 + v28;
  if (v27 + v28 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_22E33DEAC();
  }

  v30 = v28;
  if (v29 > 0x16)
  {
    operator new();
  }

  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 23) = v29;
  if (v27)
  {
    if (v26 >= 0)
    {
      v31 = &v38;
    }

    else
    {
      v31 = v38.__r_.__value_.__r.__words[0];
    }

    memmove(a3, v31, v27);
  }

  v32 = (a3 + v27);
  if (v30)
  {
    memmove(v32, a2, v30);
  }

  *(v32 + v30) = 0;
  if (v26 < 0)
  {
    v33 = v38.__r_.__value_.__r.__words[0];
LABEL_73:
    operator delete(v33);
  }

LABEL_74:
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }
}

void sub_22E31E4CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  operator delete(v40);
  if (*(v41 - 65) < 0)
  {
    operator delete(*(v41 - 88));
  }

  _Unwind_Resume(a1);
}

id sub_22E31E5E4(uint64_t a1)
{
  v2 = objc_opt_new();
  *&v3 = *(a1 + 96);
  v6 = v3;
  objc_msgSend_setConstantValue_type_atIndex_(v2, v4, &v6, 32, 8);
  return v2;
}

void sub_22E31E800(_Unwind_Exception *a1)
{
  sub_22E3156BC(v1);
  MEMORY[0x2318E5730](v1, 0x10B3C4001A0C12DLL);
  _Unwind_Resume(a1);
}

void sub_22E31E850(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
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

void sub_22E31EAD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

void sub_22E31EBEC(uint64_t a1@<X0>, unint64_t a2@<X2>, std::string *a3@<X8>)
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

void sub_22E31EE48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

void sub_22E31EF5C(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  memset(&v38, 0, sizeof(v38));
  std::string::reserve(&v38, 0x50uLL);
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
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

LABEL_42:
    operator delete(v36.__r_.__value_.__l.__data_);
    if ((*(a1 + 129) & 1) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_42;
  }

LABEL_33:
  if (*(a1 + 129))
  {
LABEL_43:
    std::string::append(&v38, "s_");
  }

LABEL_44:
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
      goto LABEL_63;
    }

LABEL_70:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      *a3 = __p;
      goto LABEL_83;
    }

    v35 = __p.__r_.__value_.__r.__words[0];
    sub_22E3404E0(a3, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    goto LABEL_82;
  }

  operator delete(v36.__r_.__value_.__l.__data_);
  if (!a2)
  {
    goto LABEL_70;
  }

LABEL_63:
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
LABEL_82:
    operator delete(v35);
  }

LABEL_83:
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }
}

void sub_22E31F404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  operator delete(v27);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_22E31F478(uint64_t a1)
{
  v2 = objc_opt_new();
  objc_msgSend_setConstantValue_type_atIndex_(v2, v3, a1 + 112, 32, 8);
  v6 = *(a1 + 129);
  objc_msgSend_setConstantValue_type_atIndex_(v2, v4, &v6, 29, 6);
  return v2;
}

void sub_22E31F6BC(_Unwind_Exception *a1)
{
  sub_22E3156BC(v1);
  MEMORY[0x2318E5730](v1, 0x10B3C402E534ED1);
  _Unwind_Resume(a1);
}

void sub_22E31F70C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
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

void sub_22E31F994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

void sub_22E31FAA8(uint64_t a1@<X0>, unint64_t a2@<X2>, std::string *a3@<X8>)
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

void sub_22E31FD04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

void sub_22E31FE18(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  memset(&v50, 0, sizeof(v50));
  std::string::reserve(&v50, 0x50uLL);
  std::to_string(&v48, *(a1 + 112));
  v6 = std::string::append(&v48, "_");
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

  std::string::append(&v50, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v48.__r_.__value_.__l.__data_);
LABEL_9:
  std::to_string(&v48, *(a1 + 116));
  v10 = std::string::append(&v48, "_");
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

  std::string::append(&v50, v12, v13);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }
  }

  else if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

  operator delete(v48.__r_.__value_.__l.__data_);
LABEL_17:
  std::to_string(&v48, *(a1 + 120));
  v14 = std::string::append(&v48, "_");
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

  std::string::append(&v50, v16, v17);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }
  }

  else if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

  operator delete(v48.__r_.__value_.__l.__data_);
LABEL_25:
  std::to_string(&v48, *(a1 + 124));
  v18 = std::string::append(&v48, "_");
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

  std::string::append(&v50, v20, v21);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }
  }

  else if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

  operator delete(v48.__r_.__value_.__l.__data_);
LABEL_33:
  std::to_string(&v48, *(a1 + 128));
  v22 = std::string::append(&v48, "_");
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

  std::string::append(&v50, v24, v25);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_41;
    }
  }

  else if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_41;
  }

  operator delete(v48.__r_.__value_.__l.__data_);
LABEL_41:
  std::to_string(&v48, *(a1 + 132));
  v26 = std::string::append(&v48, "_");
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

  std::string::append(&v50, v28, v29);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }
  }

  else if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

  operator delete(v48.__r_.__value_.__l.__data_);
LABEL_49:
  std::to_string(&v48, *(a1 + 136));
  v30 = std::string::append(&v48, "_");
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

  std::string::append(&v50, v32, v33);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

LABEL_72:
    operator delete(v48.__r_.__value_.__l.__data_);
    if ((*(a1 + 145) & 1) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_72;
  }

LABEL_57:
  if (*(a1 + 145))
  {
LABEL_73:
    std::string::append(&v50, "s_");
  }

LABEL_74:
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

  memset(&v48, 0, sizeof(v48));
  *(&v48.__r_.__value_.__s + 23) = v35 + 1;
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

    memmove(&v48, v36, v35);
  }

  *(&v48.__r_.__value_.__l.__data_ + v35) = 95;
  if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v37 = &v50;
  }

  else
  {
    v37 = v50.__r_.__value_.__r.__words[0];
  }

  if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v38 = v50.__r_.__value_.__l.__size_;
  }

  v39 = std::string::append(&v48, v37, v38);
  __p = *v39;
  v39->__r_.__value_.__l.__size_ = 0;
  v39->__r_.__value_.__r.__words[2] = 0;
  v39->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (a2)
    {
      goto LABEL_93;
    }

LABEL_100:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      *a3 = __p;
      goto LABEL_113;
    }

    v47 = __p.__r_.__value_.__r.__words[0];
    sub_22E3404E0(a3, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    goto LABEL_112;
  }

  operator delete(v48.__r_.__value_.__l.__data_);
  if (!a2)
  {
    goto LABEL_100;
  }

LABEL_93:
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
LABEL_112:
    operator delete(v47);
  }

LABEL_113:
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }
}

void sub_22E32044C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  operator delete(v27);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_22E3204CC(uint64_t a1)
{
  v2 = objc_opt_new();
  objc_msgSend_setConstantValue_type_atIndex_(v2, v3, a1 + 112, 32, 8);
  v4 = *(a1 + 128);
  HIDWORD(v4) = *(a1 + 145);
  v7 = v4;
  objc_msgSend_setConstantValue_type_atIndex_(v2, v5, &v7, 32, 9);
  return v2;
}

void MPSKernelDAG::dequantizeOp(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = 536870920;
  v5 = *(a2 + 8);
  if (v5 <= 285212703)
  {
    if (v5 <= 15)
    {
      v7 = 536870920;
      if (v5 == -2147483640)
      {
        goto LABEL_32;
      }

      v7 = *(a2 + 8);
      if (v5 == 8)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v5 == 16)
      {
        v7 = 16;
        if (a4 <= 285212703)
        {
          goto LABEL_9;
        }

        goto LABEL_33;
      }

      if (v5 == 32)
      {
        v7 = 32;
        if (a4 <= 285212703)
        {
          goto LABEL_9;
        }

        goto LABEL_33;
      }

      v7 = *(a2 + 8);
      if (v5 == 64)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (v5 <= 536870927)
    {
      if (v5 == 285212704 || v5 == 285212736)
      {
        v7 = 285212736;
        if (a4 > 285212703)
        {
          goto LABEL_33;
        }

        goto LABEL_9;
      }

      v7 = *(a2 + 8);
      if (v5 != 536870920)
      {
        goto LABEL_51;
      }

LABEL_32:
      if (a4 > 285212703)
      {
        goto LABEL_33;
      }

LABEL_9:
      if (a4 <= 15)
      {
        if (a4 != -2147483640)
        {
          v4 = a4;
          if (a4 != 8)
          {
LABEL_41:
            v4 = 268435488;
            if (v7 == 268435488)
            {
              goto LABEL_45;
            }

LABEL_48:
            if (MTLReportFailureTypeEnabled())
            {
              MTLReportFailure();
            }

LABEL_45:
            if ((v4 & 0xDFFFFFFF) != 8)
            {
              if (MTLReportFailureTypeEnabled())
              {
                MTLReportFailure();
              }
            }

            operator new();
          }
        }

LABEL_44:
        if (v7 == 268435488)
        {
          goto LABEL_45;
        }

        goto LABEL_48;
      }

      if (a4 != 16 && a4 != 32)
      {
        v4 = a4;
        if (a4 != 64)
        {
          goto LABEL_41;
        }

        goto LABEL_44;
      }

LABEL_43:
      v4 = a4;
      goto LABEL_44;
    }

    v9 = v5 == 536870928 || v5 == 536870976 || v5 == 536870944;
    v7 = *(a2 + 8);
    if (v9)
    {
      goto LABEL_32;
    }
  }

LABEL_51:
  v7 = 268435488;
  if (a4 <= 285212703)
  {
    goto LABEL_9;
  }

LABEL_33:
  if (a4 <= 536870927)
  {
    if (a4 == 285212704 || a4 == 285212736)
    {
      v4 = 285212736;
      if (v7 == 268435488)
      {
        goto LABEL_45;
      }

      goto LABEL_48;
    }

    v4 = a4;
    if (a4 != 536870920)
    {
      goto LABEL_41;
    }

    goto LABEL_44;
  }

  if (a4 != 536870928 && a4 != 536870976)
  {
    v4 = a4;
    if (a4 != 536870944)
    {
      goto LABEL_41;
    }

    goto LABEL_44;
  }

  goto LABEL_43;
}

void sub_22E320AE0(_Unwind_Exception *a1)
{
  sub_22E2F95C4(v1);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

id sub_22E320B18()
{
  v0 = objc_opt_new();

  return v0;
}

void sub_22E320B48(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
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

void sub_22E320DD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

void sub_22E321020(_Unwind_Exception *a1)
{
  MEMORY[0x2318E5730](v2, 0x1020C4039750FA9);
  MPSDAGKernelOp::~MPSDAGKernelOp(v1);
  _Unwind_Resume(a1);
}

void sub_22E32104C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E32107C(uint64_t a1)
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

void sub_22E3210F0(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E321688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E3216D0(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v37);
  v8 = std::string::append(&v37, " : FUNCTION(");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v9;
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

  v16 = std::string::append(&v38, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v39.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v39.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v39, a3);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v40, "), ");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v41.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v41.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  (*(**(**a2 + 32) + 64))(v35);
  if ((v36 & 0x80u) == 0)
  {
    v22 = v35;
  }

  else
  {
    v22 = v35[0];
  }

  if ((v36 & 0x80u) == 0)
  {
    v23 = v36;
  }

  else
  {
    v23 = v35[1];
  }

  v24 = std::string::append(&v41, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v42, ", ");
  v27 = *&v26->__r_.__value_.__l.__data_;
  v43.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v43.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  (*(**(*(*a2 + 8) + 32) + 64))(__p);
  if ((v34 & 0x80u) == 0)
  {
    v28 = __p;
  }

  else
  {
    v28 = __p[0];
  }

  if ((v34 & 0x80u) == 0)
  {
    v29 = v34;
  }

  else
  {
    v29 = __p[1];
  }

  v30 = std::string::append(&v43, v28, v29);
  v31 = *&v30->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(&v44, ";\n");
  *a4 = *v32;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
    if ((v34 & 0x80000000) == 0)
    {
LABEL_21:
      if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_32;
    }
  }

  else if ((v34 & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_22:
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_33;
  }

LABEL_32:
  operator delete(v43.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_23:
    if ((v36 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(v42.__r_.__value_.__l.__data_);
  if ((v36 & 0x80000000) == 0)
  {
LABEL_24:
    if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(v35[0]);
  if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_25:
    if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(v41.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_26:
    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(v40.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_27:
    if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(v39.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_28:
    if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_39:
    operator delete(v37.__r_.__value_.__l.__data_);
    return;
  }

LABEL_38:
  operator delete(v38.__r_.__value_.__l.__data_);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_39;
  }
}

void sub_22E321A38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (*(v54 - 73) < 0)
  {
    operator delete(*(v54 - 96));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v54 - 105) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v54 - 105) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v54 - 137) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*(v54 - 128));
  if ((*(v54 - 137) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(v54 - 160));
  if ((a21 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a54 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a16);
  if ((a54 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a47 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(a49);
  if ((a47 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a42);
  if ((a40 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a35);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(exception_object);
  }

LABEL_21:
  operator delete(a22);
  _Unwind_Resume(exception_object);
}

void sub_22E321BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    JUMPOUT(0x22E321BA4);
  }

  JUMPOUT(0x22E321A8CLL);
}

void sub_22E3220E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E322128(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v37);
  v8 = std::string::append(&v37, " : FUNCTION(");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v9;
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

  v16 = std::string::append(&v38, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v39.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v39.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v39, a3);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v40, "), ");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v41.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v41.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  (*(**(**a2 + 32) + 64))(v35);
  if ((v36 & 0x80u) == 0)
  {
    v22 = v35;
  }

  else
  {
    v22 = v35[0];
  }

  if ((v36 & 0x80u) == 0)
  {
    v23 = v36;
  }

  else
  {
    v23 = v35[1];
  }

  v24 = std::string::append(&v41, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v42, ", ");
  v27 = *&v26->__r_.__value_.__l.__data_;
  v43.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v43.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  (*(**(*(*a2 + 8) + 32) + 64))(__p);
  if ((v34 & 0x80u) == 0)
  {
    v28 = __p;
  }

  else
  {
    v28 = __p[0];
  }

  if ((v34 & 0x80u) == 0)
  {
    v29 = v34;
  }

  else
  {
    v29 = __p[1];
  }

  v30 = std::string::append(&v43, v28, v29);
  v31 = *&v30->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(&v44, ";\n");
  *a4 = *v32;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
    if ((v34 & 0x80000000) == 0)
    {
LABEL_21:
      if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_32;
    }
  }

  else if ((v34 & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_22:
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_33;
  }

LABEL_32:
  operator delete(v43.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_23:
    if ((v36 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(v42.__r_.__value_.__l.__data_);
  if ((v36 & 0x80000000) == 0)
  {
LABEL_24:
    if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(v35[0]);
  if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_25:
    if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(v41.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_26:
    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(v40.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_27:
    if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(v39.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_28:
    if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_39:
    operator delete(v37.__r_.__value_.__l.__data_);
    return;
  }

LABEL_38:
  operator delete(v38.__r_.__value_.__l.__data_);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_39;
  }
}

void sub_22E322490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (*(v54 - 73) < 0)
  {
    operator delete(*(v54 - 96));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v54 - 105) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v54 - 105) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v54 - 137) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*(v54 - 128));
  if ((*(v54 - 137) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(v54 - 160));
  if ((a21 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a54 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a16);
  if ((a54 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a47 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(a49);
  if ((a47 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a42);
  if ((a40 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a35);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(exception_object);
  }

LABEL_21:
  operator delete(a22);
  _Unwind_Resume(exception_object);
}

void sub_22E32260C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    JUMPOUT(0x22E3225FCLL);
  }

  JUMPOUT(0x22E3224E4);
}

void sub_22E322B40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E322B88(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v37);
  v8 = std::string::append(&v37, " : FUNCTION(");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v9;
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

  v16 = std::string::append(&v38, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v39.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v39.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v39, a3);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v40, "), ");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v41.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v41.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  (*(**(**a2 + 32) + 64))(v35);
  if ((v36 & 0x80u) == 0)
  {
    v22 = v35;
  }

  else
  {
    v22 = v35[0];
  }

  if ((v36 & 0x80u) == 0)
  {
    v23 = v36;
  }

  else
  {
    v23 = v35[1];
  }

  v24 = std::string::append(&v41, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v42, ", ");
  v27 = *&v26->__r_.__value_.__l.__data_;
  v43.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v43.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  (*(**(*(*a2 + 8) + 32) + 64))(__p);
  if ((v34 & 0x80u) == 0)
  {
    v28 = __p;
  }

  else
  {
    v28 = __p[0];
  }

  if ((v34 & 0x80u) == 0)
  {
    v29 = v34;
  }

  else
  {
    v29 = __p[1];
  }

  v30 = std::string::append(&v43, v28, v29);
  v31 = *&v30->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(&v44, ";\n");
  *a4 = *v32;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
    if ((v34 & 0x80000000) == 0)
    {
LABEL_21:
      if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_32;
    }
  }

  else if ((v34 & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_22:
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_33;
  }

LABEL_32:
  operator delete(v43.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_23:
    if ((v36 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(v42.__r_.__value_.__l.__data_);
  if ((v36 & 0x80000000) == 0)
  {
LABEL_24:
    if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(v35[0]);
  if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_25:
    if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(v41.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_26:
    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(v40.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_27:
    if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(v39.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_28:
    if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_39:
    operator delete(v37.__r_.__value_.__l.__data_);
    return;
  }

LABEL_38:
  operator delete(v38.__r_.__value_.__l.__data_);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_39;
  }
}

void sub_22E322EF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (*(v54 - 73) < 0)
  {
    operator delete(*(v54 - 96));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v54 - 105) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v54 - 105) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v54 - 137) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*(v54 - 128));
  if ((*(v54 - 137) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(v54 - 160));
  if ((a21 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a54 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a16);
  if ((a54 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a47 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(a49);
  if ((a47 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a42);
  if ((a40 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a35);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(exception_object);
  }

LABEL_21:
  operator delete(a22);
  _Unwind_Resume(exception_object);
}

void sub_22E32306C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    JUMPOUT(0x22E32305CLL);
  }

  JUMPOUT(0x22E322F44);
}

void sub_22E32359C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E3235E4(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v37);
  v8 = std::string::append(&v37, " : FUNCTION(");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v9;
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

  v16 = std::string::append(&v38, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v39.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v39.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v39, a3);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v40, "), ");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v41.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v41.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  (*(**(**a2 + 32) + 64))(v35);
  if ((v36 & 0x80u) == 0)
  {
    v22 = v35;
  }

  else
  {
    v22 = v35[0];
  }

  if ((v36 & 0x80u) == 0)
  {
    v23 = v36;
  }

  else
  {
    v23 = v35[1];
  }

  v24 = std::string::append(&v41, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v42, ", ");
  v27 = *&v26->__r_.__value_.__l.__data_;
  v43.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v43.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  (*(**(*(*a2 + 8) + 32) + 64))(__p);
  if ((v34 & 0x80u) == 0)
  {
    v28 = __p;
  }

  else
  {
    v28 = __p[0];
  }

  if ((v34 & 0x80u) == 0)
  {
    v29 = v34;
  }

  else
  {
    v29 = __p[1];
  }

  v30 = std::string::append(&v43, v28, v29);
  v31 = *&v30->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(&v44, ";\n");
  *a4 = *v32;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
    if ((v34 & 0x80000000) == 0)
    {
LABEL_21:
      if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_32;
    }
  }

  else if ((v34 & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_22:
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_33;
  }

LABEL_32:
  operator delete(v43.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_23:
    if ((v36 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(v42.__r_.__value_.__l.__data_);
  if ((v36 & 0x80000000) == 0)
  {
LABEL_24:
    if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(v35[0]);
  if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_25:
    if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(v41.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_26:
    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(v40.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_27:
    if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(v39.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_28:
    if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_39:
    operator delete(v37.__r_.__value_.__l.__data_);
    return;
  }

LABEL_38:
  operator delete(v38.__r_.__value_.__l.__data_);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_39;
  }
}

void sub_22E32394C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (*(v54 - 73) < 0)
  {
    operator delete(*(v54 - 96));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v54 - 105) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v54 - 105) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v54 - 137) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*(v54 - 128));
  if ((*(v54 - 137) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(v54 - 160));
  if ((a21 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a54 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a16);
  if ((a54 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a47 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(a49);
  if ((a47 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a42);
  if ((a40 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a35);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(exception_object);
  }

LABEL_21:
  operator delete(a22);
  _Unwind_Resume(exception_object);
}

void sub_22E323AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    JUMPOUT(0x22E323AB8);
  }

  JUMPOUT(0x22E3239A0);
}

void sub_22E323FF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E32403C(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v37);
  v8 = std::string::append(&v37, " : FUNCTION(");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v9;
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

  v16 = std::string::append(&v38, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v39.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v39.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v39, a3);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v40, "), ");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v41.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v41.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  (*(**(**a2 + 32) + 64))(v35);
  if ((v36 & 0x80u) == 0)
  {
    v22 = v35;
  }

  else
  {
    v22 = v35[0];
  }

  if ((v36 & 0x80u) == 0)
  {
    v23 = v36;
  }

  else
  {
    v23 = v35[1];
  }

  v24 = std::string::append(&v41, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v42, ", ");
  v27 = *&v26->__r_.__value_.__l.__data_;
  v43.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v43.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  (*(**(*(*a2 + 8) + 32) + 64))(__p);
  if ((v34 & 0x80u) == 0)
  {
    v28 = __p;
  }

  else
  {
    v28 = __p[0];
  }

  if ((v34 & 0x80u) == 0)
  {
    v29 = v34;
  }

  else
  {
    v29 = __p[1];
  }

  v30 = std::string::append(&v43, v28, v29);
  v31 = *&v30->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(&v44, ";\n");
  *a4 = *v32;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
    if ((v34 & 0x80000000) == 0)
    {
LABEL_21:
      if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_32;
    }
  }

  else if ((v34 & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_22:
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_33;
  }

LABEL_32:
  operator delete(v43.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_23:
    if ((v36 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(v42.__r_.__value_.__l.__data_);
  if ((v36 & 0x80000000) == 0)
  {
LABEL_24:
    if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(v35[0]);
  if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_25:
    if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(v41.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_26:
    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(v40.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_27:
    if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(v39.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_28:
    if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_39:
    operator delete(v37.__r_.__value_.__l.__data_);
    return;
  }

LABEL_38:
  operator delete(v38.__r_.__value_.__l.__data_);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_39;
  }
}

void sub_22E3243A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (*(v54 - 73) < 0)
  {
    operator delete(*(v54 - 96));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v54 - 105) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v54 - 105) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v54 - 137) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*(v54 - 128));
  if ((*(v54 - 137) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(v54 - 160));
  if ((a21 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a54 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a16);
  if ((a54 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a47 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(a49);
  if ((a47 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a42);
  if ((a40 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a35);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(exception_object);
  }

LABEL_21:
  operator delete(a22);
  _Unwind_Resume(exception_object);
}

void sub_22E324520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    JUMPOUT(0x22E324510);
  }

  JUMPOUT(0x22E3243F8);
}

void sub_22E324A4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E324A94(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v37);
  v8 = std::string::append(&v37, " : FUNCTION(");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v9;
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

  v16 = std::string::append(&v38, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v39.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v39.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v39, a3);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v40, "), ");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v41.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v41.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  (*(**(**a2 + 32) + 64))(v35);
  if ((v36 & 0x80u) == 0)
  {
    v22 = v35;
  }

  else
  {
    v22 = v35[0];
  }

  if ((v36 & 0x80u) == 0)
  {
    v23 = v36;
  }

  else
  {
    v23 = v35[1];
  }

  v24 = std::string::append(&v41, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v42, ", ");
  v27 = *&v26->__r_.__value_.__l.__data_;
  v43.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v43.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  (*(**(*(*a2 + 8) + 32) + 64))(__p);
  if ((v34 & 0x80u) == 0)
  {
    v28 = __p;
  }

  else
  {
    v28 = __p[0];
  }

  if ((v34 & 0x80u) == 0)
  {
    v29 = v34;
  }

  else
  {
    v29 = __p[1];
  }

  v30 = std::string::append(&v43, v28, v29);
  v31 = *&v30->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(&v44, ";\n");
  *a4 = *v32;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
    if ((v34 & 0x80000000) == 0)
    {
LABEL_21:
      if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_32;
    }
  }

  else if ((v34 & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_22:
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_33;
  }

LABEL_32:
  operator delete(v43.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_23:
    if ((v36 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(v42.__r_.__value_.__l.__data_);
  if ((v36 & 0x80000000) == 0)
  {
LABEL_24:
    if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(v35[0]);
  if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_25:
    if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(v41.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_26:
    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(v40.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_27:
    if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(v39.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_28:
    if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_39:
    operator delete(v37.__r_.__value_.__l.__data_);
    return;
  }

LABEL_38:
  operator delete(v38.__r_.__value_.__l.__data_);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_39;
  }
}

void sub_22E324DFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (*(v54 - 73) < 0)
  {
    operator delete(*(v54 - 96));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v54 - 105) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v54 - 105) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v54 - 137) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*(v54 - 128));
  if ((*(v54 - 137) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(v54 - 160));
  if ((a21 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a54 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a16);
  if ((a54 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a47 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(a49);
  if ((a47 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a42);
  if ((a40 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a35);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(exception_object);
  }

LABEL_21:
  operator delete(a22);
  _Unwind_Resume(exception_object);
}

void sub_22E324F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    JUMPOUT(0x22E324F68);
  }

  JUMPOUT(0x22E324E50);
}

void sub_22E3254A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E3254E8(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v37);
  v8 = std::string::append(&v37, " : FUNCTION(");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v9;
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

  v16 = std::string::append(&v38, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v39.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v39.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v39, a3);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v40, "), ");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v41.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v41.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  (*(**(**a2 + 32) + 64))(v35);
  if ((v36 & 0x80u) == 0)
  {
    v22 = v35;
  }

  else
  {
    v22 = v35[0];
  }

  if ((v36 & 0x80u) == 0)
  {
    v23 = v36;
  }

  else
  {
    v23 = v35[1];
  }

  v24 = std::string::append(&v41, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v42, ", ");
  v27 = *&v26->__r_.__value_.__l.__data_;
  v43.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v43.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  (*(**(*(*a2 + 8) + 32) + 64))(__p);
  if ((v34 & 0x80u) == 0)
  {
    v28 = __p;
  }

  else
  {
    v28 = __p[0];
  }

  if ((v34 & 0x80u) == 0)
  {
    v29 = v34;
  }

  else
  {
    v29 = __p[1];
  }

  v30 = std::string::append(&v43, v28, v29);
  v31 = *&v30->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(&v44, ";\n");
  *a4 = *v32;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
    if ((v34 & 0x80000000) == 0)
    {
LABEL_21:
      if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_32;
    }
  }

  else if ((v34 & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_22:
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_33;
  }

LABEL_32:
  operator delete(v43.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_23:
    if ((v36 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(v42.__r_.__value_.__l.__data_);
  if ((v36 & 0x80000000) == 0)
  {
LABEL_24:
    if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(v35[0]);
  if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_25:
    if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(v41.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_26:
    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(v40.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_27:
    if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(v39.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_28:
    if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_39:
    operator delete(v37.__r_.__value_.__l.__data_);
    return;
  }

LABEL_38:
  operator delete(v38.__r_.__value_.__l.__data_);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_39;
  }
}

void sub_22E325850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (*(v54 - 73) < 0)
  {
    operator delete(*(v54 - 96));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v54 - 105) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v54 - 105) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v54 - 137) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*(v54 - 128));
  if ((*(v54 - 137) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(v54 - 160));
  if ((a21 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a54 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a16);
  if ((a54 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a47 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(a49);
  if ((a47 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a42);
  if ((a40 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a35);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(exception_object);
  }

LABEL_21:
  operator delete(a22);
  _Unwind_Resume(exception_object);
}

void sub_22E3259CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    JUMPOUT(0x22E3259BCLL);
  }

  JUMPOUT(0x22E3258A4);
}

void sub_22E325EFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E325F44(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v37);
  v8 = std::string::append(&v37, " : FUNCTION(");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v9;
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

  v16 = std::string::append(&v38, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v39.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v39.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v39, a3);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v40, "), ");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v41.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v41.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  (*(**(**a2 + 32) + 64))(v35);
  if ((v36 & 0x80u) == 0)
  {
    v22 = v35;
  }

  else
  {
    v22 = v35[0];
  }

  if ((v36 & 0x80u) == 0)
  {
    v23 = v36;
  }

  else
  {
    v23 = v35[1];
  }

  v24 = std::string::append(&v41, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v42, ", ");
  v27 = *&v26->__r_.__value_.__l.__data_;
  v43.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v43.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  (*(**(*(*a2 + 8) + 32) + 64))(__p);
  if ((v34 & 0x80u) == 0)
  {
    v28 = __p;
  }

  else
  {
    v28 = __p[0];
  }

  if ((v34 & 0x80u) == 0)
  {
    v29 = v34;
  }

  else
  {
    v29 = __p[1];
  }

  v30 = std::string::append(&v43, v28, v29);
  v31 = *&v30->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(&v44, ";\n");
  *a4 = *v32;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
    if ((v34 & 0x80000000) == 0)
    {
LABEL_21:
      if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_32;
    }
  }

  else if ((v34 & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_22:
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_33;
  }

LABEL_32:
  operator delete(v43.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_23:
    if ((v36 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(v42.__r_.__value_.__l.__data_);
  if ((v36 & 0x80000000) == 0)
  {
LABEL_24:
    if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(v35[0]);
  if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_25:
    if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(v41.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_26:
    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(v40.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_27:
    if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(v39.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_28:
    if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_39:
    operator delete(v37.__r_.__value_.__l.__data_);
    return;
  }

LABEL_38:
  operator delete(v38.__r_.__value_.__l.__data_);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_39;
  }
}

void sub_22E3262AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (*(v54 - 73) < 0)
  {
    operator delete(*(v54 - 96));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v54 - 105) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v54 - 105) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v54 - 137) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*(v54 - 128));
  if ((*(v54 - 137) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(v54 - 160));
  if ((a21 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a54 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a16);
  if ((a54 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a47 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(a49);
  if ((a47 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a42);
  if ((a40 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a35);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(exception_object);
  }

LABEL_21:
  operator delete(a22);
  _Unwind_Resume(exception_object);
}

void sub_22E326428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    JUMPOUT(0x22E326418);
  }

  JUMPOUT(0x22E326300);
}

void sub_22E326958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E3269A0(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v37);
  v8 = std::string::append(&v37, " : FUNCTION(");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v9;
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

  v16 = std::string::append(&v38, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v39.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v39.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v39, a3);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v40, "), ");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v41.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v41.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  (*(**(**a2 + 32) + 64))(v35);
  if ((v36 & 0x80u) == 0)
  {
    v22 = v35;
  }

  else
  {
    v22 = v35[0];
  }

  if ((v36 & 0x80u) == 0)
  {
    v23 = v36;
  }

  else
  {
    v23 = v35[1];
  }

  v24 = std::string::append(&v41, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v42, ", ");
  v27 = *&v26->__r_.__value_.__l.__data_;
  v43.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v43.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  (*(**(*(*a2 + 8) + 32) + 64))(__p);
  if ((v34 & 0x80u) == 0)
  {
    v28 = __p;
  }

  else
  {
    v28 = __p[0];
  }

  if ((v34 & 0x80u) == 0)
  {
    v29 = v34;
  }

  else
  {
    v29 = __p[1];
  }

  v30 = std::string::append(&v43, v28, v29);
  v31 = *&v30->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(&v44, ";\n");
  *a4 = *v32;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
    if ((v34 & 0x80000000) == 0)
    {
LABEL_21:
      if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_32;
    }
  }

  else if ((v34 & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_22:
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_33;
  }

LABEL_32:
  operator delete(v43.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_23:
    if ((v36 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(v42.__r_.__value_.__l.__data_);
  if ((v36 & 0x80000000) == 0)
  {
LABEL_24:
    if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(v35[0]);
  if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_25:
    if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(v41.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_26:
    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(v40.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_27:
    if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(v39.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_28:
    if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_39:
    operator delete(v37.__r_.__value_.__l.__data_);
    return;
  }

LABEL_38:
  operator delete(v38.__r_.__value_.__l.__data_);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_39;
  }
}

void sub_22E326D08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (*(v54 - 73) < 0)
  {
    operator delete(*(v54 - 96));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v54 - 105) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v54 - 105) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v54 - 137) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*(v54 - 128));
  if ((*(v54 - 137) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(v54 - 160));
  if ((a21 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a54 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a16);
  if ((a54 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a47 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(a49);
  if ((a47 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a42);
  if ((a40 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a35);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(exception_object);
  }

LABEL_21:
  operator delete(a22);
  _Unwind_Resume(exception_object);
}

void sub_22E326E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    JUMPOUT(0x22E326E74);
  }

  JUMPOUT(0x22E326D5CLL);
}

void sub_22E3273B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E3273FC(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v37);
  v8 = std::string::append(&v37, " : FUNCTION(");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v9;
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

  v16 = std::string::append(&v38, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v39.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v39.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v39, a3);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v40, "), ");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v41.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v41.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  (*(**(**a2 + 32) + 64))(v35);
  if ((v36 & 0x80u) == 0)
  {
    v22 = v35;
  }

  else
  {
    v22 = v35[0];
  }

  if ((v36 & 0x80u) == 0)
  {
    v23 = v36;
  }

  else
  {
    v23 = v35[1];
  }

  v24 = std::string::append(&v41, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v42, ", ");
  v27 = *&v26->__r_.__value_.__l.__data_;
  v43.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v43.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  (*(**(*(*a2 + 8) + 32) + 64))(__p);
  if ((v34 & 0x80u) == 0)
  {
    v28 = __p;
  }

  else
  {
    v28 = __p[0];
  }

  if ((v34 & 0x80u) == 0)
  {
    v29 = v34;
  }

  else
  {
    v29 = __p[1];
  }

  v30 = std::string::append(&v43, v28, v29);
  v31 = *&v30->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(&v44, ";\n");
  *a4 = *v32;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
    if ((v34 & 0x80000000) == 0)
    {
LABEL_21:
      if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_32;
    }
  }

  else if ((v34 & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_22:
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_33;
  }

LABEL_32:
  operator delete(v43.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_23:
    if ((v36 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(v42.__r_.__value_.__l.__data_);
  if ((v36 & 0x80000000) == 0)
  {
LABEL_24:
    if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(v35[0]);
  if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_25:
    if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(v41.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_26:
    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(v40.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_27:
    if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(v39.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_28:
    if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_39:
    operator delete(v37.__r_.__value_.__l.__data_);
    return;
  }

LABEL_38:
  operator delete(v38.__r_.__value_.__l.__data_);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_39;
  }
}

void sub_22E327764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (*(v54 - 73) < 0)
  {
    operator delete(*(v54 - 96));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v54 - 105) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v54 - 105) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v54 - 137) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*(v54 - 128));
  if ((*(v54 - 137) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(v54 - 160));
  if ((a21 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a54 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a16);
  if ((a54 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a47 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(a49);
  if ((a47 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a42);
  if ((a40 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a35);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(exception_object);
  }

LABEL_21:
  operator delete(a22);
  _Unwind_Resume(exception_object);
}

void sub_22E3278E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    JUMPOUT(0x22E3278D0);
  }

  JUMPOUT(0x22E3277B8);
}

void sub_22E327E10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E327E58(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v37);
  v8 = std::string::append(&v37, " : FUNCTION(");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v9;
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

  v16 = std::string::append(&v38, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v39.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v39.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v39, a3);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v40, "), ");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v41.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v41.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  (*(**(**a2 + 32) + 64))(v35);
  if ((v36 & 0x80u) == 0)
  {
    v22 = v35;
  }

  else
  {
    v22 = v35[0];
  }

  if ((v36 & 0x80u) == 0)
  {
    v23 = v36;
  }

  else
  {
    v23 = v35[1];
  }

  v24 = std::string::append(&v41, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v42, ", ");
  v27 = *&v26->__r_.__value_.__l.__data_;
  v43.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v43.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  (*(**(*(*a2 + 8) + 32) + 64))(__p);
  if ((v34 & 0x80u) == 0)
  {
    v28 = __p;
  }

  else
  {
    v28 = __p[0];
  }

  if ((v34 & 0x80u) == 0)
  {
    v29 = v34;
  }

  else
  {
    v29 = __p[1];
  }

  v30 = std::string::append(&v43, v28, v29);
  v31 = *&v30->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(&v44, ";\n");
  *a4 = *v32;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
    if ((v34 & 0x80000000) == 0)
    {
LABEL_21:
      if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_32;
    }
  }

  else if ((v34 & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_22:
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_33;
  }

LABEL_32:
  operator delete(v43.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_23:
    if ((v36 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(v42.__r_.__value_.__l.__data_);
  if ((v36 & 0x80000000) == 0)
  {
LABEL_24:
    if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(v35[0]);
  if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_25:
    if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(v41.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_26:
    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(v40.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_27:
    if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(v39.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_28:
    if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_39:
    operator delete(v37.__r_.__value_.__l.__data_);
    return;
  }

LABEL_38:
  operator delete(v38.__r_.__value_.__l.__data_);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_39;
  }
}

void sub_22E3281C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (*(v54 - 73) < 0)
  {
    operator delete(*(v54 - 96));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v54 - 105) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v54 - 105) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v54 - 137) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*(v54 - 128));
  if ((*(v54 - 137) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(v54 - 160));
  if ((a21 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a54 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a16);
  if ((a54 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a47 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(a49);
  if ((a47 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a42);
  if ((a40 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a35);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(exception_object);
  }

LABEL_21:
  operator delete(a22);
  _Unwind_Resume(exception_object);
}

void sub_22E32833C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    JUMPOUT(0x22E32832CLL);
  }

  JUMPOUT(0x22E328214);
}

void sub_22E328868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E3288B0(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v37);
  v8 = std::string::append(&v37, " : FUNCTION(");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v9;
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

  v16 = std::string::append(&v38, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v39.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v39.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v39, a3);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v40, "), ");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v41.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v41.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  (*(**(**a2 + 32) + 64))(v35);
  if ((v36 & 0x80u) == 0)
  {
    v22 = v35;
  }

  else
  {
    v22 = v35[0];
  }

  if ((v36 & 0x80u) == 0)
  {
    v23 = v36;
  }

  else
  {
    v23 = v35[1];
  }

  v24 = std::string::append(&v41, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v42, ", ");
  v27 = *&v26->__r_.__value_.__l.__data_;
  v43.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v43.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  (*(**(*(*a2 + 8) + 32) + 64))(__p);
  if ((v34 & 0x80u) == 0)
  {
    v28 = __p;
  }

  else
  {
    v28 = __p[0];
  }

  if ((v34 & 0x80u) == 0)
  {
    v29 = v34;
  }

  else
  {
    v29 = __p[1];
  }

  v30 = std::string::append(&v43, v28, v29);
  v31 = *&v30->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(&v44, ";\n");
  *a4 = *v32;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
    if ((v34 & 0x80000000) == 0)
    {
LABEL_21:
      if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_32;
    }
  }

  else if ((v34 & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_22:
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_33;
  }

LABEL_32:
  operator delete(v43.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_23:
    if ((v36 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(v42.__r_.__value_.__l.__data_);
  if ((v36 & 0x80000000) == 0)
  {
LABEL_24:
    if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(v35[0]);
  if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_25:
    if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(v41.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_26:
    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(v40.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_27:
    if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(v39.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_28:
    if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_39:
    operator delete(v37.__r_.__value_.__l.__data_);
    return;
  }

LABEL_38:
  operator delete(v38.__r_.__value_.__l.__data_);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_39;
  }
}

void sub_22E328C18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (*(v54 - 73) < 0)
  {
    operator delete(*(v54 - 96));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v54 - 105) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v54 - 105) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v54 - 137) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*(v54 - 128));
  if ((*(v54 - 137) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(v54 - 160));
  if ((a21 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a54 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a16);
  if ((a54 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a47 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(a49);
  if ((a47 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a42);
  if ((a40 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a35);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(exception_object);
  }

LABEL_21:
  operator delete(a22);
  _Unwind_Resume(exception_object);
}

void sub_22E328D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    JUMPOUT(0x22E328D84);
  }

  JUMPOUT(0x22E328C6CLL);
}

void sub_22E3292C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E32930C(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v37);
  v8 = std::string::append(&v37, " : FUNCTION(");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v9;
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

  v16 = std::string::append(&v38, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v39.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v39.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v39, a3);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v40, "), ");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v41.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v41.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  (*(**(**a2 + 32) + 64))(v35);
  if ((v36 & 0x80u) == 0)
  {
    v22 = v35;
  }

  else
  {
    v22 = v35[0];
  }

  if ((v36 & 0x80u) == 0)
  {
    v23 = v36;
  }

  else
  {
    v23 = v35[1];
  }

  v24 = std::string::append(&v41, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v42, ", ");
  v27 = *&v26->__r_.__value_.__l.__data_;
  v43.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v43.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  (*(**(*(*a2 + 8) + 32) + 64))(__p);
  if ((v34 & 0x80u) == 0)
  {
    v28 = __p;
  }

  else
  {
    v28 = __p[0];
  }

  if ((v34 & 0x80u) == 0)
  {
    v29 = v34;
  }

  else
  {
    v29 = __p[1];
  }

  v30 = std::string::append(&v43, v28, v29);
  v31 = *&v30->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(&v44, ";\n");
  *a4 = *v32;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
    if ((v34 & 0x80000000) == 0)
    {
LABEL_21:
      if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_32;
    }
  }

  else if ((v34 & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_22:
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_33;
  }

LABEL_32:
  operator delete(v43.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_23:
    if ((v36 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(v42.__r_.__value_.__l.__data_);
  if ((v36 & 0x80000000) == 0)
  {
LABEL_24:
    if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(v35[0]);
  if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_25:
    if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(v41.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_26:
    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(v40.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_27:
    if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(v39.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_28:
    if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_39:
    operator delete(v37.__r_.__value_.__l.__data_);
    return;
  }

LABEL_38:
  operator delete(v38.__r_.__value_.__l.__data_);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_39;
  }
}

void sub_22E329674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (*(v54 - 73) < 0)
  {
    operator delete(*(v54 - 96));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v54 - 105) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v54 - 105) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v54 - 137) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*(v54 - 128));
  if ((*(v54 - 137) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(v54 - 160));
  if ((a21 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a54 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a16);
  if ((a54 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a47 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(a49);
  if ((a47 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a42);
  if ((a40 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a35);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(exception_object);
  }

LABEL_21:
  operator delete(a22);
  _Unwind_Resume(exception_object);
}

void sub_22E3297F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    JUMPOUT(0x22E3297E0);
  }

  JUMPOUT(0x22E3296C8);
}

void sub_22E329D24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E329D6C(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v37);
  v8 = std::string::append(&v37, " : FUNCTION(");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v9;
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

  v16 = std::string::append(&v38, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v39.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v39.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v39, a3);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v40, "), ");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v41.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v41.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  (*(**(**a2 + 32) + 64))(v35);
  if ((v36 & 0x80u) == 0)
  {
    v22 = v35;
  }

  else
  {
    v22 = v35[0];
  }

  if ((v36 & 0x80u) == 0)
  {
    v23 = v36;
  }

  else
  {
    v23 = v35[1];
  }

  v24 = std::string::append(&v41, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v42, ", ");
  v27 = *&v26->__r_.__value_.__l.__data_;
  v43.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v43.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  (*(**(*(*a2 + 8) + 32) + 64))(__p);
  if ((v34 & 0x80u) == 0)
  {
    v28 = __p;
  }

  else
  {
    v28 = __p[0];
  }

  if ((v34 & 0x80u) == 0)
  {
    v29 = v34;
  }

  else
  {
    v29 = __p[1];
  }

  v30 = std::string::append(&v43, v28, v29);
  v31 = *&v30->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(&v44, ";\n");
  *a4 = *v32;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
    if ((v34 & 0x80000000) == 0)
    {
LABEL_21:
      if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_32;
    }
  }

  else if ((v34 & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_22:
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_33;
  }

LABEL_32:
  operator delete(v43.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_23:
    if ((v36 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(v42.__r_.__value_.__l.__data_);
  if ((v36 & 0x80000000) == 0)
  {
LABEL_24:
    if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(v35[0]);
  if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_25:
    if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(v41.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_26:
    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(v40.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_27:
    if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(v39.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_28:
    if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_39:
    operator delete(v37.__r_.__value_.__l.__data_);
    return;
  }

LABEL_38:
  operator delete(v38.__r_.__value_.__l.__data_);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_39;
  }
}

void sub_22E32A0D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (*(v54 - 73) < 0)
  {
    operator delete(*(v54 - 96));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v54 - 105) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v54 - 105) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v54 - 137) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*(v54 - 128));
  if ((*(v54 - 137) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(v54 - 160));
  if ((a21 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a54 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a16);
  if ((a54 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a47 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(a49);
  if ((a47 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a42);
  if ((a40 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a35);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(exception_object);
  }

LABEL_21:
  operator delete(a22);
  _Unwind_Resume(exception_object);
}

void sub_22E32A250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    JUMPOUT(0x22E32A240);
  }

  JUMPOUT(0x22E32A128);
}

void sub_22E32A780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E32A7C8(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v37);
  v8 = std::string::append(&v37, " : FUNCTION(");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v9;
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

  v16 = std::string::append(&v38, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v39.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v39.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v39, a3);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v40, "), ");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v41.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v41.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  (*(**(**a2 + 32) + 64))(v35);
  if ((v36 & 0x80u) == 0)
  {
    v22 = v35;
  }

  else
  {
    v22 = v35[0];
  }

  if ((v36 & 0x80u) == 0)
  {
    v23 = v36;
  }

  else
  {
    v23 = v35[1];
  }

  v24 = std::string::append(&v41, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v42, ", ");
  v27 = *&v26->__r_.__value_.__l.__data_;
  v43.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v43.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  (*(**(*(*a2 + 8) + 32) + 64))(__p);
  if ((v34 & 0x80u) == 0)
  {
    v28 = __p;
  }

  else
  {
    v28 = __p[0];
  }

  if ((v34 & 0x80u) == 0)
  {
    v29 = v34;
  }

  else
  {
    v29 = __p[1];
  }

  v30 = std::string::append(&v43, v28, v29);
  v31 = *&v30->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(&v44, ";\n");
  *a4 = *v32;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
    if ((v34 & 0x80000000) == 0)
    {
LABEL_21:
      if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_32;
    }
  }

  else if ((v34 & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_22:
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_33;
  }

LABEL_32:
  operator delete(v43.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_23:
    if ((v36 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(v42.__r_.__value_.__l.__data_);
  if ((v36 & 0x80000000) == 0)
  {
LABEL_24:
    if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(v35[0]);
  if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_25:
    if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(v41.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_26:
    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(v40.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_27:
    if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(v39.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_28:
    if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_39:
    operator delete(v37.__r_.__value_.__l.__data_);
    return;
  }

LABEL_38:
  operator delete(v38.__r_.__value_.__l.__data_);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_39;
  }
}

void sub_22E32AB30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (*(v54 - 73) < 0)
  {
    operator delete(*(v54 - 96));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v54 - 105) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v54 - 105) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v54 - 137) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*(v54 - 128));
  if ((*(v54 - 137) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(v54 - 160));
  if ((a21 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a54 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a16);
  if ((a54 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a47 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(a49);
  if ((a47 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a42);
  if ((a40 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a35);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(exception_object);
  }

LABEL_21:
  operator delete(a22);
  _Unwind_Resume(exception_object);
}

void sub_22E32ACAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    JUMPOUT(0x22E32AC9CLL);
  }

  JUMPOUT(0x22E32AB84);
}

void sub_22E32B1CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E32B214(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v37);
  v8 = std::string::append(&v37, " : FUNCTION(");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v9;
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

  v16 = std::string::append(&v38, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v39.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v39.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v39, a3);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v40, "), ");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v41.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v41.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  (*(**(**a2 + 32) + 64))(v35);
  if ((v36 & 0x80u) == 0)
  {
    v22 = v35;
  }

  else
  {
    v22 = v35[0];
  }

  if ((v36 & 0x80u) == 0)
  {
    v23 = v36;
  }

  else
  {
    v23 = v35[1];
  }

  v24 = std::string::append(&v41, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v42, ", ");
  v27 = *&v26->__r_.__value_.__l.__data_;
  v43.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v43.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  (*(**(*(*a2 + 8) + 32) + 64))(__p);
  if ((v34 & 0x80u) == 0)
  {
    v28 = __p;
  }

  else
  {
    v28 = __p[0];
  }

  if ((v34 & 0x80u) == 0)
  {
    v29 = v34;
  }

  else
  {
    v29 = __p[1];
  }

  v30 = std::string::append(&v43, v28, v29);
  v31 = *&v30->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(&v44, ";\n");
  *a4 = *v32;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
    if ((v34 & 0x80000000) == 0)
    {
LABEL_21:
      if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_32;
    }
  }

  else if ((v34 & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_22:
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_33;
  }

LABEL_32:
  operator delete(v43.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_23:
    if ((v36 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(v42.__r_.__value_.__l.__data_);
  if ((v36 & 0x80000000) == 0)
  {
LABEL_24:
    if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(v35[0]);
  if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_25:
    if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(v41.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_26:
    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(v40.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_27:
    if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(v39.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_28:
    if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_39:
    operator delete(v37.__r_.__value_.__l.__data_);
    return;
  }

LABEL_38:
  operator delete(v38.__r_.__value_.__l.__data_);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_39;
  }
}