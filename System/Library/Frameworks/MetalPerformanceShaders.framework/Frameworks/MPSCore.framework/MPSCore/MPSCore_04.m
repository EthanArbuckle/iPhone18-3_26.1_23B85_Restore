void sub_22E32B57C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
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

void sub_22E32B6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    JUMPOUT(0x22E32B6E8);
  }

  JUMPOUT(0x22E32B5D0);
}

void sub_22E32BC18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E32BC60(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E32BFC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
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

void sub_22E32C144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    JUMPOUT(0x22E32C134);
  }

  JUMPOUT(0x22E32C01CLL);
}

void sub_22E32C668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E32C6B0(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E32CA18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
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

void sub_22E32CB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    JUMPOUT(0x22E32CB84);
  }

  JUMPOUT(0x22E32CA6CLL);
}

void sub_22E32D0B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E32D0FC(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E32D464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
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

void sub_22E32D5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    JUMPOUT(0x22E32D5D0);
  }

  JUMPOUT(0x22E32D4B8);
}

void sub_22E32DB00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E32DB48(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E32DEB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
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

void sub_22E32E02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    JUMPOUT(0x22E32E01CLL);
  }

  JUMPOUT(0x22E32DF04);
}

void sub_22E32E550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E32E598(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E32E900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
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

void sub_22E32EA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    JUMPOUT(0x22E32EA6CLL);
  }

  JUMPOUT(0x22E32E954);
}

void sub_22E32EFA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E32EFEC(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E32F354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
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

void sub_22E32F4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    JUMPOUT(0x22E32F4C0);
  }

  JUMPOUT(0x22E32F3A8);
}

void sub_22E32FA00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E32FA48(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E32FDB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
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

void sub_22E32FF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    JUMPOUT(0x22E32FF1CLL);
  }

  JUMPOUT(0x22E32FE04);
}

void sub_22E330458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E3304A0(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E330808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
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

void sub_22E330984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    JUMPOUT(0x22E330974);
  }

  JUMPOUT(0x22E33085CLL);
}

void sub_22E330EB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E330EFC(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E331264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
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

void sub_22E3313E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    JUMPOUT(0x22E3313D0);
  }

  JUMPOUT(0x22E3312B8);
}

void sub_22E331908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E331950(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E331CB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
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

void sub_22E331E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    JUMPOUT(0x22E331E24);
  }

  JUMPOUT(0x22E331D0CLL);
}

void sub_22E332360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E3323A8(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E332710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
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

void sub_22E33288C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    JUMPOUT(0x22E33287CLL);
  }

  JUMPOUT(0x22E332764);
}

void sub_22E332DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E332E04(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E33316C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
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

void sub_22E3332E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    JUMPOUT(0x22E3332D8);
  }

  JUMPOUT(0x22E3331C0);
}

void sub_22E33381C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_22E2F95C4(v14);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E333864(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

void sub_22E333BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
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

void sub_22E333D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    JUMPOUT(0x22E333D38);
  }

  JUMPOUT(0x22E333C20);
}

void sub_22E333E9C(_Unwind_Exception *a1)
{
  MEMORY[0x2318E5730](v2, 0x1020C4039750FA9);
  MPSDAGKernelOp::~MPSDAGKernelOp(v1);
  _Unwind_Resume(a1);
}

void sub_22E333EC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E333EF8(uint64_t a1)
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

void sub_22E333F6C(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E333FE0(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v45);
  v8 = std::string::append(&v45, " : FUNCTION(");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v46.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v46.__r_.__value_.__l.__data_ = v9;
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

  v16 = std::string::append(&v46, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v47.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v47.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v47, a3);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v48.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v48.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v48, "), ");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v49.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v49.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  (*(**(**a2 + 32) + 64))(v43);
  if ((v44 & 0x80u) == 0)
  {
    v22 = v43;
  }

  else
  {
    v22 = v43[0];
  }

  if ((v44 & 0x80u) == 0)
  {
    v23 = v44;
  }

  else
  {
    v23 = v43[1];
  }

  v24 = std::string::append(&v49, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v50.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v50.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v50, ", ");
  v27 = *&v26->__r_.__value_.__l.__data_;
  v51.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v51.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  (*(**(*(*a2 + 8) + 32) + 64))(v41);
  if ((v42 & 0x80u) == 0)
  {
    v28 = v41;
  }

  else
  {
    v28 = v41[0];
  }

  if ((v42 & 0x80u) == 0)
  {
    v29 = v42;
  }

  else
  {
    v29 = v41[1];
  }

  v30 = std::string::append(&v51, v28, v29);
  v31 = *&v30->__r_.__value_.__l.__data_;
  v52.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v52.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(&v52, ", ");
  v33 = *&v32->__r_.__value_.__l.__data_;
  v53.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&v53.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  (*(**(*(*a2 + 16) + 32) + 64))(__p);
  if ((v40 & 0x80u) == 0)
  {
    v34 = __p;
  }

  else
  {
    v34 = __p[0];
  }

  if ((v40 & 0x80u) == 0)
  {
    v35 = v40;
  }

  else
  {
    v35 = __p[1];
  }

  v36 = std::string::append(&v53, v34, v35);
  v37 = *&v36->__r_.__value_.__l.__data_;
  v54.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
  *&v54.__r_.__value_.__l.__data_ = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  v38 = std::string::append(&v54, ";\n");
  *a4 = *v38;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
    if ((v40 & 0x80000000) == 0)
    {
LABEL_27:
      if ((SHIBYTE(v53.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_41;
    }
  }

  else if ((v40 & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v53.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_28:
    if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_42;
  }

LABEL_41:
  operator delete(v53.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_29:
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_43;
  }

LABEL_42:
  operator delete(v52.__r_.__value_.__l.__data_);
  if ((v42 & 0x80000000) == 0)
  {
LABEL_30:
    if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_44;
  }

LABEL_43:
  operator delete(v41[0]);
  if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_31:
    if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_45;
  }

LABEL_44:
  operator delete(v51.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_32:
    if ((v44 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_46;
  }

LABEL_45:
  operator delete(v50.__r_.__value_.__l.__data_);
  if ((v44 & 0x80000000) == 0)
  {
LABEL_33:
    if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_47;
  }

LABEL_46:
  operator delete(v43[0]);
  if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_34:
    if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_48;
  }

LABEL_47:
  operator delete(v49.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_35:
    if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_49;
  }

LABEL_48:
  operator delete(v48.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_36:
    if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_50;
  }

LABEL_49:
  operator delete(v47.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_37:
    if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_51:
    operator delete(v45.__r_.__value_.__l.__data_);
    return;
  }

LABEL_50:
  operator delete(v46.__r_.__value_.__l.__data_);
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_51;
  }
}

void sub_22E33443C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (*(v59 - 57) < 0)
  {
    operator delete(*(v59 - 80));
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v59 - 89) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v59 - 89) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v59 - 121) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(*(v59 - 112));
  if ((*(v59 - 121) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(*(v59 - 144));
  if ((a20 & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v59 - 153) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a15);
  if ((*(v59 - 153) & 0x80000000) == 0)
  {
LABEL_7:
    if ((*(v59 - 185) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(*(v59 - 176));
  if ((*(v59 - 185) & 0x80000000) == 0)
  {
LABEL_8:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(*(v59 - 208));
  if ((a26 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a59 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(a21);
  if ((a59 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a52 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(a54);
  if ((a52 & 0x80000000) == 0)
  {
LABEL_11:
    if ((a45 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(a47);
  if ((a45 & 0x80000000) == 0)
  {
LABEL_12:
    if ((a38 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(a40);
  if ((a38 & 0x80000000) == 0)
  {
LABEL_13:
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(a33);
  if ((a32 & 0x80000000) == 0)
  {
LABEL_14:
    _Unwind_Resume(exception_object);
  }

LABEL_27:
  operator delete(a27);
  _Unwind_Resume(exception_object);
}

void sub_22E334600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    JUMPOUT(0x22E3345C0);
  }

  JUMPOUT(0x22E334490);
}

void sub_22E334610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    JUMPOUT(0x22E3345D0);
  }

  JUMPOUT(0x22E334498);
}

void sub_22E334620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    JUMPOUT(0x22E3345E0);
  }

  JUMPOUT(0x22E3344A0);
}

void sub_22E334630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    JUMPOUT(0x22E3345F0);
  }

  JUMPOUT(0x22E3344A8);
}

void sub_22E334A0C(_Unwind_Exception *a1)
{
  sub_22E2F95C4(v1);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E334B44(_Unwind_Exception *a1)
{
  sub_22E2F95C4(v1);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E334B78(uint64_t a1)
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

void sub_22E334BEC(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E334C60(uint64_t a1)
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

void sub_22E334CD4(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E334D48(uint64_t a1)
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

void sub_22E334DBC(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E334E30(uint64_t a1)
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

void sub_22E334EA4(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E334F18(uint64_t a1)
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

void sub_22E334F8C(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E335000(uint64_t a1)
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

void sub_22E335074(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E3350E8(uint64_t a1)
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

void sub_22E33515C(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E3351D0(uint64_t a1)
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

void sub_22E335244(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E3352B8(uint64_t a1)
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

void sub_22E33532C(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E335494(_Unwind_Exception *a1)
{
  sub_22E2F95C4(v1);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E335604(_Unwind_Exception *a1)
{
  sub_22E2F95C4(v1);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void *sub_22E335638@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  v3 = a1 == 0;
  if (a1)
  {
    v4 = "NODE(Node_value)";
  }

  else
  {
    v4 = "NODE(Node_0)";
  }

  if (v3)
  {
    v5 = 12;
  }

  else
  {
    v5 = 16;
  }

  a2[23] = v5;
  result = memcpy(a2, v4, v5);
  a2[v5] = 0;
  return result;
}

void sub_22E3357B4(_Unwind_Exception *a1)
{
  sub_22E2F95C4(v1);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void *sub_22E3357E8@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  v3 = a1 == 0;
  if (a1)
  {
    v4 = "NODE(Node_value)";
  }

  else
  {
    v4 = "NODE(Node_0)";
  }

  if (v3)
  {
    v5 = 12;
  }

  else
  {
    v5 = 16;
  }

  a2[23] = v5;
  result = memcpy(a2, v4, v5);
  a2[v5] = 0;
  return result;
}

void sub_22E335974(_Unwind_Exception *a1)
{
  sub_22E2F95C4(v1);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void *sub_22E3359A8@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  v3 = a1 == 0;
  if (a1)
  {
    v4 = "NODE(Node_value)";
  }

  else
  {
    v4 = "NODE(Node_0)";
  }

  if (v3)
  {
    v5 = 12;
  }

  else
  {
    v5 = 16;
  }

  a2[23] = v5;
  result = memcpy(a2, v4, v5);
  a2[v5] = 0;
  return result;
}

void sub_22E335C00(_Unwind_Exception *a1)
{
  sub_22E2F95C4(v1);
  MEMORY[0x2318E5730]();
  _Unwind_Resume(a1);
}

void sub_22E335C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  MEMORY[0x2318E5730](v13, 0x1020C4039750FA9);
  MPSDAGKernelOp::~MPSDAGKernelOp(v11);
  MEMORY[0x2318E5730](v11, v12);
  _Unwind_Resume(a1);
}

void *sub_22E335C9C@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  v3 = a1 == 0;
  if (a1)
  {
    v4 = "NODE(Node_value)";
  }

  else
  {
    v4 = "NODE(Node_0)";
  }

  if (v3)
  {
    v5 = 12;
  }

  else
  {
    v5 = 16;
  }

  a2[23] = v5;
  result = memcpy(a2, v4, v5);
  a2[v5] = 0;
  return result;
}

void sub_22E335EF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  sub_22E2F95C4(v11);
  MEMORY[0x2318E5730](v11, 0x10B3C405769E0D3);
  _Unwind_Resume(a1);
}

void *sub_22E335F74@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  v3 = a1 == 0;
  if (a1)
  {
    v4 = "NODE(Node_value)";
  }

  else
  {
    v4 = "NODE(Node_0)";
  }

  if (v3)
  {
    v5 = 12;
  }

  else
  {
    v5 = 16;
  }

  a2[23] = v5;
  result = memcpy(a2, v4, v5);
  a2[v5] = 0;
  return result;
}

void sub_22E3361D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  sub_22E2F95C4(v11);
  MEMORY[0x2318E5730](v11, 0x10B3C405769E0D3);
  _Unwind_Resume(a1);
}

void *sub_22E33624C@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  v3 = a1 == 0;
  if (a1)
  {
    v4 = "NODE(Node_value)";
  }

  else
  {
    v4 = "NODE(Node_0)";
  }

  if (v3)
  {
    v5 = 12;
  }

  else
  {
    v5 = 16;
  }

  a2[23] = v5;
  result = memcpy(a2, v4, v5);
  a2[v5] = 0;
  return result;
}

void sub_22E3364AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  sub_22E2F95C4(v11);
  MEMORY[0x2318E5730](v11, 0x10B3C405769E0D3);
  _Unwind_Resume(a1);
}

void *sub_22E336528@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  v3 = a1 == 0;
  if (a1)
  {
    v4 = "NODE(Node_value)";
  }

  else
  {
    v4 = "NODE(Node_0)";
  }

  if (v3)
  {
    v5 = 12;
  }

  else
  {
    v5 = 16;
  }

  a2[23] = v5;
  result = memcpy(a2, v4, v5);
  a2[v5] = 0;
  return result;
}

void sub_22E33678C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  sub_22E2F95C4(v11);
  MEMORY[0x2318E5730](v11, 0x10B3C405769E0D3);
  _Unwind_Resume(a1);
}

void *sub_22E336808@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  v3 = a1 == 0;
  if (a1)
  {
    v4 = "NODE(Node_value)";
  }

  else
  {
    v4 = "NODE(Node_0)";
  }

  if (v3)
  {
    v5 = 12;
  }

  else
  {
    v5 = 16;
  }

  a2[23] = v5;
  result = memcpy(a2, v4, v5);
  a2[v5] = 0;
  return result;
}

void sub_22E336A70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  sub_22E2F95C4(v11);
  MEMORY[0x2318E5730](v11, 0x10B3C405769E0D3);
  _Unwind_Resume(a1);
}

void *sub_22E336AEC@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  v3 = a1 == 0;
  if (a1)
  {
    v4 = "NODE(Node_value)";
  }

  else
  {
    v4 = "NODE(Node_0)";
  }

  if (v3)
  {
    v5 = 12;
  }

  else
  {
    v5 = 16;
  }

  a2[23] = v5;
  result = memcpy(a2, v4, v5);
  a2[v5] = 0;
  return result;
}

void sub_22E336D58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  sub_22E2F95C4(v11);
  MEMORY[0x2318E5730](v11, 0x10B3C405769E0D3);
  _Unwind_Resume(a1);
}

void *sub_22E336DD4@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  v3 = a1 == 0;
  if (a1)
  {
    v4 = "NODE(Node_value)";
  }

  else
  {
    v4 = "NODE(Node_0)";
  }

  if (v3)
  {
    v5 = 12;
  }

  else
  {
    v5 = 16;
  }

  a2[23] = v5;
  result = memcpy(a2, v4, v5);
  a2[v5] = 0;
  return result;
}

void sub_22E337044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  sub_22E2F95C4(v11);
  MEMORY[0x2318E5730](v11, 0x10B3C405769E0D3);
  _Unwind_Resume(a1);
}

void *sub_22E3370C0@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  v3 = a1 == 0;
  if (a1)
  {
    v4 = "NODE(Node_value)";
  }

  else
  {
    v4 = "NODE(Node_0)";
  }

  if (v3)
  {
    v5 = 12;
  }

  else
  {
    v5 = 16;
  }

  a2[23] = v5;
  result = memcpy(a2, v4, v5);
  a2[v5] = 0;
  return result;
}

void sub_22E337334(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  sub_22E2F95C4(v11);
  MEMORY[0x2318E5730](v11, 0x10B3C405769E0D3);
  _Unwind_Resume(a1);
}

void *sub_22E3373B0@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  v3 = a1 == 0;
  if (a1)
  {
    v4 = "NODE(Node_value)";
  }

  else
  {
    v4 = "NODE(Node_0)";
  }

  if (v3)
  {
    v5 = 12;
  }

  else
  {
    v5 = 16;
  }

  a2[23] = v5;
  result = memcpy(a2, v4, v5);
  a2[v5] = 0;
  return result;
}

void sub_22E337460(void **this)
{
  *this = &unk_2842183B0;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
    *this = &unk_284219978;
    if ((*(this + 71) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = this;

      goto LABEL_5;
    }
  }

  else
  {
    *this = &unk_284219978;
    if ((*(this + 71) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(this[6]);
  v2 = this;

LABEL_5:
  BaseOperation::~BaseOperation(v2);
}

void sub_22E337530(void **this)
{
  *this = &unk_2842183B0;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
    *this = &unk_284219978;
    if ((*(this + 71) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *this = &unk_284219978;
    if ((*(this + 71) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(this[6]);
LABEL_3:
  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E337600(void **this)
{
  *this = &unk_284218E50;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
    *this = &unk_284219978;
    if ((*(this + 71) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = this;

      goto LABEL_5;
    }
  }

  else
  {
    *this = &unk_284219978;
    if ((*(this + 71) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(this[6]);
  v2 = this;

LABEL_5:
  BaseOperation::~BaseOperation(v2);
}

void sub_22E3376D0(void **this)
{
  *this = &unk_284218E50;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
    *this = &unk_284219978;
    if ((*(this + 71) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *this = &unk_284219978;
    if ((*(this + 71) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(this[6]);
LABEL_3:
  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E3377A0(uint64_t a1)
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

void sub_22E337814(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E337888(uint64_t a1)
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

void sub_22E3378FC(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E337970(uint64_t a1)
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

void sub_22E3379E4(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E337A58(void **this)
{
  *this = &unk_284217608;
  if (*(this + 183) < 0)
  {
    operator delete(this[20]);
    *this = &unk_284219978;
    if ((*(this + 71) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = this;

      goto LABEL_5;
    }
  }

  else
  {
    *this = &unk_284219978;
    if ((*(this + 71) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(this[6]);
  v2 = this;

LABEL_5:
  BaseOperation::~BaseOperation(v2);
}

void sub_22E337B28(void **this)
{
  *this = &unk_284217608;
  if (*(this + 183) < 0)
  {
    operator delete(this[20]);
    *this = &unk_284219978;
    if ((*(this + 71) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *this = &unk_284219978;
    if ((*(this + 71) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(this[6]);
LABEL_3:
  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E337BF0(uint64_t a1)
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

void sub_22E337C64(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E337CD8(uint64_t a1)
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

void sub_22E337D4C(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E337DC0(uint64_t a1)
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

void sub_22E337E34(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E337EA8(uint64_t a1)
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

void sub_22E337F1C(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E337F90(uint64_t a1)
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

void sub_22E338004(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E338078(uint64_t a1)
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

void sub_22E3380EC(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E338160(uint64_t a1)
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

void sub_22E3381D4(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E338248(uint64_t a1)
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

void sub_22E3382BC(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E338330(uint64_t a1)
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

void sub_22E3383A4(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E338418(uint64_t a1)
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

void sub_22E33848C(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E338500(uint64_t a1)
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

void sub_22E338574(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E3385E8(uint64_t a1)
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

void sub_22E33865C(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E3386D0(uint64_t a1)
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

void sub_22E338744(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E3387B8(uint64_t a1)
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

void sub_22E33882C(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E3388A0(uint64_t a1)
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

void sub_22E338914(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E338988(uint64_t a1)
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

void sub_22E3389FC(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E338A70(uint64_t a1)
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

void sub_22E338AE4(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E338B58(uint64_t a1)
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

void sub_22E338BCC(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E338C40(uint64_t a1)
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

void sub_22E338CB4(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E338D28(uint64_t a1)
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

void sub_22E338D9C(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E338E10(uint64_t a1)
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

void sub_22E338E84(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E338EF8(uint64_t a1)
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

void sub_22E338F6C(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E338FE0(uint64_t a1)
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

void sub_22E339054(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E3390C8(uint64_t a1)
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

void sub_22E33913C(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E3391B0(uint64_t a1)
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

void sub_22E339224(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E339298(uint64_t a1)
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

void sub_22E33930C(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E339380(uint64_t a1)
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

void sub_22E3393F4(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E339468(uint64_t a1)
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

void sub_22E3394DC(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E339550(uint64_t a1)
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

void sub_22E3395C4(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E339638(uint64_t a1)
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

void sub_22E3396AC(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E339720(uint64_t a1)
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

void sub_22E339794(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E339808(uint64_t a1)
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

void sub_22E33987C(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E3398F0(uint64_t a1)
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

void sub_22E339964(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E3399D8(uint64_t a1)
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

void sub_22E339A4C(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E339AC0(uint64_t a1)
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

void sub_22E339B34(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E339BA8(uint64_t a1)
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

void sub_22E339C1C(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E339C90(uint64_t a1)
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

void sub_22E339D04(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E339D78(uint64_t a1)
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

void sub_22E339DEC(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E339E60(uint64_t a1)
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

void sub_22E339ED4(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E339F48(uint64_t a1)
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

void sub_22E339FBC(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33A030(uint64_t a1)
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

void sub_22E33A0A4(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33A118(uint64_t a1)
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

void sub_22E33A18C(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33A200(uint64_t a1)
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

void sub_22E33A274(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33A2E8(BaseOperation *this)
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

void sub_22E33A3B0(BaseOperation *this)
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
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33A46C(BaseOperation *this)
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

void sub_22E33A534(BaseOperation *this)
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
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33A5F0(BaseOperation *this)
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

void sub_22E33A6B8(BaseOperation *this)
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
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33A774(BaseOperation *this)
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

void sub_22E33A83C(BaseOperation *this)
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
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33A8F8(BaseOperation *this)
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

void sub_22E33A9C0(BaseOperation *this)
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
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33AA7C(BaseOperation *this)
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

void sub_22E33AB44(BaseOperation *this)
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
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33AC00(BaseOperation *this)
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

void sub_22E33ACC8(BaseOperation *this)
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
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33AD84(BaseOperation *this)
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

void sub_22E33AE4C(BaseOperation *this)
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
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33AF08(BaseOperation *this)
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

void sub_22E33AFD0(BaseOperation *this)
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
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33B08C(uint64_t a1)
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

void sub_22E33B100(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33B174(BaseOperation *this)
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

void sub_22E33B23C(BaseOperation *this)
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
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33B2F8(BaseOperation *this)
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

void sub_22E33B3C0(BaseOperation *this)
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
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33B47C(uint64_t a1)
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

void sub_22E33B4F0(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33B564(uint64_t a1)
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

void sub_22E33B5D8(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33B64C(uint64_t a1)
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

void sub_22E33B6C0(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33B734(uint64_t a1)
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

void sub_22E33B7A8(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33B81C(uint64_t a1)
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

void sub_22E33B890(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33B904(uint64_t a1)
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

void sub_22E33B978(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33B9EC(uint64_t a1)
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

void sub_22E33BA60(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33BAD4(uint64_t a1)
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

void sub_22E33BB48(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33BBBC(uint64_t a1)
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

void sub_22E33BC30(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33BCA4(uint64_t a1)
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

void sub_22E33BD18(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33BD8C(uint64_t a1)
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

void sub_22E33BE00(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33BE74(uint64_t a1)
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

void sub_22E33BEE8(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33BF5C(uint64_t a1)
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

void sub_22E33BFD0(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33C044(uint64_t a1)
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

void sub_22E33C0B8(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33C12C(uint64_t a1)
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

void sub_22E33C1A0(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33C214(uint64_t a1)
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

void sub_22E33C288(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33C2FC(uint64_t a1)
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

void sub_22E33C370(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33C3E4(uint64_t a1)
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

void sub_22E33C458(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33C4CC(uint64_t a1)
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

void sub_22E33C540(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33C5B4(uint64_t a1)
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

void sub_22E33C628(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33C69C(uint64_t a1)
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

void sub_22E33C710(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33C784(uint64_t a1)
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

void sub_22E33C7F8(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33C86C(uint64_t a1)
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

void sub_22E33C8E0(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33C954(uint64_t a1)
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

void sub_22E33C9C8(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33CA3C(uint64_t a1)
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

void sub_22E33CAB0(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33CB24(uint64_t a1)
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

void sub_22E33CB98(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33CC0C(uint64_t a1)
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

void sub_22E33CC80(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33CCF4(uint64_t a1)
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

void sub_22E33CD68(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33CDDC(uint64_t a1)
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

void sub_22E33CE50(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33CEC4(uint64_t a1)
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

void sub_22E33CF38(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33CFAC(uint64_t a1)
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

void sub_22E33D020(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33D094(uint64_t a1)
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

void sub_22E33D108(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33D17C(uint64_t a1)
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

void sub_22E33D1F0(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33D264(uint64_t a1)
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

void sub_22E33D2D8(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33D34C(uint64_t a1)
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

void sub_22E33D3C0(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33D434(uint64_t a1)
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

void sub_22E33D4A8(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33D51C(uint64_t a1)
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

void sub_22E33D590(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33D604(uint64_t a1)
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

void sub_22E33D678(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33D6EC(uint64_t a1)
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

void sub_22E33D760(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33D7D4(uint64_t a1)
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

void sub_22E33D848(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33D8BC(uint64_t a1)
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

void sub_22E33D930(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33D9A4(uint64_t a1)
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

void sub_22E33DA18(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33DA8C(uint64_t a1)
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

void sub_22E33DB00(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33DB74(uint64_t a1)
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

void sub_22E33DBE8(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33DC5C(uint64_t a1)
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

void sub_22E33DCD0(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E33DD58()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, &unk_28421B500, MEMORY[0x277D82620]);
}

void sub_22E33DD8C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_22E33DDE8(exception, a1);
  __cxa_throw(exception, &unk_28421B530, MEMORY[0x277D825F0]);
}

std::logic_error *sub_22E33DDE8(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_22E33DE1C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_22E33DE78(exception, a1);
  __cxa_throw(exception, &unk_28421B518, MEMORY[0x277D825F8]);
}

std::logic_error *sub_22E33DE78(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void sub_22E33DEC4(void *a1, std::string *a2, uint64_t a3, _DWORD *a4)
{
  v8 = a1[3];
  if (!v8 || (v9 = *v8, *(a1[3] + 8) == v9))
  {
    v10 = 0;
  }

  else
  {
    v10 = *v9;
  }

  v11 = sub_22E33E668(a3, a4, v10, 1);
  if (v11 == -1)
  {
    return;
  }

  std::to_string(&v58, v11);
  v12 = std::string::insert(&v58, 0, "%");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v59.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v59.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v59, ":");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v60.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v60.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v60;
  }

  else
  {
    v16 = v60.__r_.__value_.__r.__words[0];
  }

  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v60.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v60.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v16, size);
  if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v59.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_88:
    operator delete(v59.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_89;
  }

  operator delete(v60.__r_.__value_.__l.__data_);
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_88;
  }

LABEL_14:
  if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_89:
  operator delete(v58.__r_.__value_.__l.__data_);
LABEL_15:
  memset(&v60, 0, sizeof(v60));
  sub_22E33E7D8(v10, &v60);
  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v60;
  }

  else
  {
    v18 = v60.__r_.__value_.__r.__words[0];
  }

  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v19 = v60.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v18, v19);
  std::string::append(a2, " = ");
  if ((*(*a1 + 16))(a1))
  {
    v20 = "COREOP:";
  }

  else
  {
    v20 = "";
  }

  std::string::append(a2, v20);
  v21 = MPSGetDataTypeName(*(v10 + 8));
  v22 = strlen(v21);
  if (v22 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_22E33DEAC();
  }

  v23 = v22;
  if (v22 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v22;
  if (v22)
  {
    memmove(&__dst, v21, v22);
  }

  __dst.__r_.__value_.__s.__data_[v23] = 0;
  v24 = std::string::insert(&__dst, 0, "[");
  v25 = *&v24->__r_.__value_.__l.__data_;
  v58.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v58.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v58, "]");
  v27 = *&v26->__r_.__value_.__l.__data_;
  v59.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v59.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_32;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_32:
  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = &v59;
  }

  else
  {
    v28 = v59.__r_.__value_.__r.__words[0];
  }

  (*(*a1 + 48))(&v58, a1, v28);
  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &v58;
  }

  else
  {
    v29 = v58.__r_.__value_.__r.__words[0];
  }

  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = v58.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v29, v30);
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  std::string::append(a2, "(");
  v31 = a1[1];
  v33 = *v31;
  v32 = v31[1];
  v34 = (*(*a1 + 24))(a1);
  v35 = v32 - v33;
  v36 = (v32 - v33) >> 3;
  v55 = v35;
  if (v34)
  {
    v37 = (*(*a1 + 32))(a1);
    std::to_string(&v58, v37);
    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = &v58;
    }

    else
    {
      v38 = v58.__r_.__value_.__r.__words[0];
    }

    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v39 = v58.__r_.__value_.__l.__size_;
    }

    std::string::append(a2, v38, v39);
    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    goto LABEL_81;
  }

  if (v36)
  {
    v40 = 0;
    v41 = (v35 >> 3);
    while (1)
    {
      v42 = a1[1];
      if (v42 && (v43 = *v42, v40 < (*(a1[1] + 8) - v43) >> 3))
      {
        v44 = *(v43 + 8 * v40);
      }

      else
      {
        v44 = 0;
      }

      v45 = sub_22E33E668(a3, a4, v44, 0);
      std::to_string(&v56, v45);
      v46 = std::string::insert(&v56, 0, "%");
      v47 = *&v46->__r_.__value_.__l.__data_;
      __dst.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
      *&__dst.__r_.__value_.__l.__data_ = v47;
      v46->__r_.__value_.__l.__size_ = 0;
      v46->__r_.__value_.__r.__words[2] = 0;
      v46->__r_.__value_.__r.__words[0] = 0;
      v48 = std::string::append(&__dst, ":");
      v49 = *&v48->__r_.__value_.__l.__data_;
      v58.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
      *&v58.__r_.__value_.__l.__data_ = v49;
      v48->__r_.__value_.__l.__size_ = 0;
      v48->__r_.__value_.__r.__words[2] = 0;
      v48->__r_.__value_.__r.__words[0] = 0;
      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v50 = &v58;
      }

      else
      {
        v50 = v58.__r_.__value_.__r.__words[0];
      }

      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v51 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v51 = v58.__r_.__value_.__l.__size_;
      }

      std::string::append(a2, v50, v51);
      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_68:
          if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_79;
          }

          goto LABEL_69;
        }
      }

      else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_68;
      }

      operator delete(__dst.__r_.__value_.__l.__data_);
      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_79:
        operator delete(v56.__r_.__value_.__l.__data_);
      }

LABEL_69:
      memset(&v58, 0, sizeof(v58));
      sub_22E33E7D8(v44, &v58);
      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v52 = &v58;
      }

      else
      {
        v52 = v58.__r_.__value_.__r.__words[0];
      }

      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v53 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v53 = v58.__r_.__value_.__l.__size_;
      }

      std::string::append(a2, v52, v53);
      if (v36 - 1 != v40)
      {
        std::string::append(a2, ", ");
      }

      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
        if (v41 == ++v40)
        {
          break;
        }
      }

      else if (v41 == ++v40)
      {
        break;
      }
    }
  }

LABEL_81:
  std::string::append(a2, ")");
  std::string::append(a2, "  ");
  if (v36)
  {
    v54 = 0;
    do
    {
      sub_22E33DEC4(*(*(*a1[1] + 8 * v54++) + 32), a2, a3, a4);
    }

    while ((v55 >> 3) != v54);
  }

  if ((SHIBYTE(v59.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_93:
    operator delete(v60.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v59.__r_.__value_.__l.__data_);
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_93;
  }
}